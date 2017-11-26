/**
 * Codasip Ltd
 *
 * CONFIDENTIAL
 *
 * Copyright 2017 Codasip Ltd
 *
 * All Rights Reserved.
 * This file is part of the Codasip Studio product. No part of the Studio product, including this
 * file, may be use, copied, modified, or distributed except in accordance with the terms contained
 * in Codasip license agreement under which you obtained this file.
 *
 * \file
 * \date    2017-11-25
 * \author  Codasip (c) C compiler backend generator
 * \version 6.8.2-1.win.7.EVALUATION
 * \brief   Source for compiler backend
 * \project RISC_V5.ia
 * \note          6.8.2-1.win.7.EVALUATION\n      Licensee: C51_657_727\n      Project: RISC_V5.ia\n      Date: 2017-11-25 23:37:30\n      Copyright (C) 2017 Codasip Ltd.
 */


#define DEBUG_TYPE "codasip-asm-printer"

#include "llvm/MC/MCSymbol.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/GlobalVariable.h"
#include "llvm/IR/Module.h"
#include "llvm/ADT/Statistic.h"
#include "llvm/ADT/StringExtras.h"
#include "llvm/CodeGen/AsmPrinter.h"
#include "llvm/CodeGen/MachineFunctionPass.h"
#include "llvm/MC/MCStreamer.h"
#include "llvm/Support/Compiler.h"
#include "llvm/Support/FormattedStream.h"
#include "llvm/IR/Mangler.h"
#include "llvm/MC/MCAsmInfo.h"
#include "llvm/Target/TargetLoweringObjectFile.h"
#include "llvm/Support/TargetRegistry.h"
#include "llvm/ADT/SmallString.h"
#include "llvm/IR/DebugInfo.h"
#include "llvm/IR/Type.h"
#include "llvm/CodeGen/MachineModuleInfo.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/MC/MCInst.h"
#include "llvm/CodeGen/MachineConstantPool.h"

#include "Codasip.h"
#include "CodasipInstrInfo.h"
#include "CodasipTargetMachine.h"
#include "CodasipMachineFunction.h"
#include "InstPrinter/CodasipInstPrinter.h"
#include "InstPrinter/CodasipMCInst.h"

#include <iostream>
#include <cstdio>

using namespace llvm;

class CodasipAsmPrinter: public AsmPrinter
{
public:
  explicit CodasipAsmPrinter(TargetMachine &TM, std::unique_ptr<MCStreamer> MS);
  StringRef getPassName() const override {return "Codasip Assembly Printer";}
  void EmitStartOfAsmFile(Module &M) override;
  void EmitEndOfAsmFile(Module &M) override;
  void EmitFunctionBodyStart() override;
  void EmitFunctionEntryLabel() override;
  // We want to print all labels (for now).
  bool isBlockOnlyReachableByFallthrough(const MachineBasicBlock *MBB) const override;
private:
  void EmitInstruction(const MachineInstr *MI) override;
  bool PrintAsmOperand(const MachineInstr *MI, unsigned OpNo, unsigned AsmVariant, const char *ExtraCode, raw_ostream &O) override;
  bool PrintAsmMemoryOperand(const MachineInstr *MI, unsigned OpNo, unsigned AsmVariant, const char *ExtraCode, raw_ostream &O) override;
  // for address space
  void EmitGlobalVariable(const GlobalVariable *GV) override;
  void EmitConstantPool() override;
  /// Auxiliary
  void PrintInstruction(const MachineInstr *MI);
  // Lowering methods
  MCInst LowerMachineInstr2MCInst(const MachineInstr *MI);
  MCOperand LowerMachineOperand2MCOp(const MachineOperand &MO);
  MCOperand LowerSymbolOperand(const MachineOperand &MO, const MachineOperand::MachineOperandType MOTy, unsigned Offset);
  /// Does the current module have debug info?
  bool hasDebug;
  /// Context of a current machine function
  MCContext *Ctx;
};

extern "C" void LLVMInitializeCodasipAsmPrinter() {
  RegisterAsmPrinter<CodasipAsmPrinter> X(TheCodasipTarget);
}

CodasipAsmPrinter::CodasipAsmPrinter(TargetMachine &TM, std::unique_ptr<MCStreamer> MS)
: AsmPrinter(TM,std::move(MS))
{
  Ctx = NULL;
  hasDebug = false;
}

#define EMIT {OutStreamer->EmitRawText(O.str()); pbuf = "";}

void CodasipAsmPrinter::EmitInstruction(const MachineInstr *MI)
{
  // get bb and func
  const MachineBasicBlock *BB = MI->getParent();
  const MachineFunction *MF = BB->getParent();
  const CodasipFunctionInfo *finfo = MF->getInfo<CodasipFunctionInfo>();
  // set context
  Ctx = &(MF->getContext());
  // auxiliary buffer for printing
  SmallString<128> pbuf;
  raw_svector_ostream O(pbuf);
  // is this a beginning of a BB?
  const MachineInstr *front = NULL;
  for (MachineBasicBlock::const_iterator I=BB->begin(); front==NULL && I!=BB->end(); ++I)
  {
    if (!I->isDebugValue())
    {
      front = &*I;
      break;
    }
  }
  if (front==MI && hasDebug)
  {
    //DebugLoc dl = MI->getDebugLoc();
    // print BB id
    int block_id = finfo->getBlockID(BB);
    if (block_id>0) {
      O << "  .loc 0 0 0 basic_block discriminator " << finfo->getBlockID(BB) << '\n';
    }
    EMIT;
  }
  // is this an ending of a BB?
  
  // actually print the instruction(s)
  PrintInstruction(MI);
}

MCOperand CodasipAsmPrinter::LowerSymbolOperand(const MachineOperand &MO, const MachineOperand::MachineOperandType MOTy, unsigned Offset)
{
  MCSymbolRefExpr::VariantKind Kind = MCSymbolRefExpr::VK_None;
  const MCSymbol *Symbol;

  switch (MOTy) {
  case MachineOperand::MO_MachineBasicBlock:
    Symbol = MO.getMBB()->getSymbol();
    break;

  case MachineOperand::MO_GlobalAddress:
    Symbol = getSymbol(MO.getGlobal());
    Offset += MO.getOffset();
    break;

  case MachineOperand::MO_BlockAddress:
    Symbol = GetBlockAddressSymbol(MO.getBlockAddress());
    Offset += MO.getOffset();
    break;

  case MachineOperand::MO_ExternalSymbol:
    Symbol = GetExternalSymbolSymbol(MO.getSymbolName());
    Offset += MO.getOffset();
    break;

  case MachineOperand::MO_JumpTableIndex:
    Symbol = GetJTISymbol(MO.getIndex());
    break;

  case MachineOperand::MO_ConstantPoolIndex:
    Symbol = GetCPISymbol(MO.getIndex());
    Offset += MO.getOffset();
    break;

  default:
    llvm_unreachable("<unknown operand type>");
  }

  const MCSymbolRefExpr *MCSym = MCSymbolRefExpr::create(Symbol, Kind, *Ctx);

  if (!Offset)
    return MCOperand::createExpr(MCSym);

  // Assume offset is never negative.
  assert(Offset > 0);

  const MCConstantExpr *OffsetExpr =  MCConstantExpr::create(Offset, *Ctx);
  const MCBinaryExpr *Add = MCBinaryExpr::createAdd(MCSym, OffsetExpr, *Ctx);
  return MCOperand::createExpr(Add);
}

MCOperand CodasipAsmPrinter::LowerMachineOperand2MCOp(const MachineOperand &MO)
{
  const int offset = 0;
  MachineOperand::MachineOperandType MOTy = MO.getType();
  switch (MOTy) {
  default: llvm_unreachable("unknown operand type");
  case MachineOperand::MO_Register:
    // Ignore all implicit register operands.
    if (MO.isImplicit()) break;
    return MCOperand::createReg(MO.getReg());
  case MachineOperand::MO_Immediate:
    return MCOperand::createImm(MO.getImm());
  case MachineOperand::MO_FPImmediate:
    return MCOperand::createFPImm(MO.getFPImm()->getValueAPF().bitcastToAPInt().getLimitedValue());
  case MachineOperand::MO_MachineBasicBlock:
  case MachineOperand::MO_GlobalAddress:
  case MachineOperand::MO_ExternalSymbol:
  case MachineOperand::MO_JumpTableIndex:
  case MachineOperand::MO_ConstantPoolIndex:
  case MachineOperand::MO_BlockAddress:
    return LowerSymbolOperand(MO, MOTy, offset);
  case MachineOperand::MO_RegisterMask:
    break;
  }
  return MCOperand();
}

MCInst CodasipAsmPrinter::LowerMachineInstr2MCInst(const MachineInstr *MI)
{
  MCInst OutMI;
  OutMI.setOpcode(MI->getOpcode());
  for (unsigned i=0, e=MI->getNumOperands(); i != e; ++i)
  {
    const MachineOperand &MO = MI->getOperand(i);
    MCOperand MCOp = LowerMachineOperand2MCOp(MO);
    if (MCOp.isValid())
      OutMI.addOperand(MCOp);
  }
  return OutMI;
}

void CodasipAsmPrinter::PrintInstruction(const MachineInstr *MI)
{
  // vliw bundle - obsolete
  
  
  // a lone instruction
  if (!MI->isBundle())
  {
    // call instr printer
    MCInst tmpInst = LowerMachineInstr2MCInst(MI);
    EmitToStreamer(*OutStreamer,tmpInst);
  }
  
}

bool CodasipAsmPrinter::PrintAsmOperand(const MachineInstr *MI, unsigned opNum, unsigned AsmVariant, const char *ExtraCode, raw_ostream &O)
{
  // Does this asm operand have a single letter operand modifier?
  if (ExtraCode && ExtraCode[0]) return true; // Unknown modifier.
  // print it
  const MachineOperand &MO = MI->getOperand(opNum);
  // imm
  if (MO.isImm())
  {
    O << MO.getImm();
  }
  // global
  else if (MO.isGlobal())
  {
    getSymbol(MO.getGlobal())->print(O, MAI);
  }
  // reg
  else
  {
    assert(MO.isReg());
    const unsigned reg = MO.getReg();
    O << CodasipInstPrinter::getRegisterName(reg,Codasip::NoRegAltName);
  }
  return false;
}

bool CodasipAsmPrinter::PrintAsmMemoryOperand(const MachineInstr *MI, unsigned OpNo, unsigned AsmVariant, const char *ExtraCode, raw_ostream &O)
{
  // nothing extra, user's responsibility
  return PrintAsmOperand(MI,OpNo,AsmVariant,ExtraCode,O);
}

// if there are only global varibles and no functions, no section is printed :(
void CodasipAsmPrinter::EmitStartOfAsmFile(Module &M)
{
  //OutStreamer.EmitRawText(StringRef("  .data")); - no longer needed
  // search for debug info
  hasDebug = false;
  // -find a non-empty func
  for (Module::iterator i1=M.begin(); i1!=M.end(); ++i1)
  {
    // find a non-empty bb
    for (Function::iterator i2=i1->begin(); i2!=i1->end(); ++i2)
    {
      // look at the instructions
      for (BasicBlock::iterator i3=i2->begin(); i3!=i2->end(); ++i3)
      {
        const DebugLoc &dl = i3->getDebugLoc();
        if (dl) {
          hasDebug = true;
          return;
        }
      }
    }
  }
}

// print dwarf info
void CodasipAsmPrinter::EmitEndOfAsmFile(Module &M)
{
  // should we print this? -if we do "always on" CFI, we need regmap always- debugger will crash with -g0 without regmap
  if (!hasDebug && !TM.hasCodasipCFI()) return;
  // needs AS
  OutStreamer->EmitRawText(StringRef("  .address_space 0"));
  // print dwarf info
  OutStreamer->EmitRawText(StringRef("  .section .codasip_regmap, \"g\""));
    OutStreamer->EmitRawText(StringRef("  .short 32"));
  OutStreamer->EmitRawText(StringRef("  .short 0"));
  OutStreamer->EmitRawText(StringRef("  .asciz \"rf_xpr\""));
  OutStreamer->EmitRawText(StringRef("  .short 0"));
  OutStreamer->EmitRawText(StringRef("  .short 1"));
  OutStreamer->EmitRawText(StringRef("  .asciz \"rf_xpr\""));
  OutStreamer->EmitRawText(StringRef("  .short 1"));
  OutStreamer->EmitRawText(StringRef("  .short 2"));
  OutStreamer->EmitRawText(StringRef("  .asciz \"rf_xpr\""));
  OutStreamer->EmitRawText(StringRef("  .short 2"));
  OutStreamer->EmitRawText(StringRef("  .short 3"));
  OutStreamer->EmitRawText(StringRef("  .asciz \"rf_xpr\""));
  OutStreamer->EmitRawText(StringRef("  .short 3"));
  OutStreamer->EmitRawText(StringRef("  .short 4"));
  OutStreamer->EmitRawText(StringRef("  .asciz \"rf_xpr\""));
  OutStreamer->EmitRawText(StringRef("  .short 4"));
  OutStreamer->EmitRawText(StringRef("  .short 5"));
  OutStreamer->EmitRawText(StringRef("  .asciz \"rf_xpr\""));
  OutStreamer->EmitRawText(StringRef("  .short 5"));
  OutStreamer->EmitRawText(StringRef("  .short 6"));
  OutStreamer->EmitRawText(StringRef("  .asciz \"rf_xpr\""));
  OutStreamer->EmitRawText(StringRef("  .short 6"));
  OutStreamer->EmitRawText(StringRef("  .short 7"));
  OutStreamer->EmitRawText(StringRef("  .asciz \"rf_xpr\""));
  OutStreamer->EmitRawText(StringRef("  .short 7"));
  OutStreamer->EmitRawText(StringRef("  .short 8"));
  OutStreamer->EmitRawText(StringRef("  .asciz \"rf_xpr\""));
  OutStreamer->EmitRawText(StringRef("  .short 8"));
  OutStreamer->EmitRawText(StringRef("  .short 9"));
  OutStreamer->EmitRawText(StringRef("  .asciz \"rf_xpr\""));
  OutStreamer->EmitRawText(StringRef("  .short 9"));
  OutStreamer->EmitRawText(StringRef("  .short 10"));
  OutStreamer->EmitRawText(StringRef("  .asciz \"rf_xpr\""));
  OutStreamer->EmitRawText(StringRef("  .short 10"));
  OutStreamer->EmitRawText(StringRef("  .short 11"));
  OutStreamer->EmitRawText(StringRef("  .asciz \"rf_xpr\""));
  OutStreamer->EmitRawText(StringRef("  .short 11"));
  OutStreamer->EmitRawText(StringRef("  .short 12"));
  OutStreamer->EmitRawText(StringRef("  .asciz \"rf_xpr\""));
  OutStreamer->EmitRawText(StringRef("  .short 12"));
  OutStreamer->EmitRawText(StringRef("  .short 13"));
  OutStreamer->EmitRawText(StringRef("  .asciz \"rf_xpr\""));
  OutStreamer->EmitRawText(StringRef("  .short 13"));
  OutStreamer->EmitRawText(StringRef("  .short 14"));
  OutStreamer->EmitRawText(StringRef("  .asciz \"rf_xpr\""));
  OutStreamer->EmitRawText(StringRef("  .short 14"));
  OutStreamer->EmitRawText(StringRef("  .short 15"));
  OutStreamer->EmitRawText(StringRef("  .asciz \"rf_xpr\""));
  OutStreamer->EmitRawText(StringRef("  .short 15"));
  OutStreamer->EmitRawText(StringRef("  .short 16"));
  OutStreamer->EmitRawText(StringRef("  .asciz \"rf_xpr\""));
  OutStreamer->EmitRawText(StringRef("  .short 16"));
  OutStreamer->EmitRawText(StringRef("  .short 17"));
  OutStreamer->EmitRawText(StringRef("  .asciz \"rf_xpr\""));
  OutStreamer->EmitRawText(StringRef("  .short 17"));
  OutStreamer->EmitRawText(StringRef("  .short 18"));
  OutStreamer->EmitRawText(StringRef("  .asciz \"rf_xpr\""));
  OutStreamer->EmitRawText(StringRef("  .short 18"));
  OutStreamer->EmitRawText(StringRef("  .short 19"));
  OutStreamer->EmitRawText(StringRef("  .asciz \"rf_xpr\""));
  OutStreamer->EmitRawText(StringRef("  .short 19"));
  OutStreamer->EmitRawText(StringRef("  .short 20"));
  OutStreamer->EmitRawText(StringRef("  .asciz \"rf_xpr\""));
  OutStreamer->EmitRawText(StringRef("  .short 20"));
  OutStreamer->EmitRawText(StringRef("  .short 21"));
  OutStreamer->EmitRawText(StringRef("  .asciz \"rf_xpr\""));
  OutStreamer->EmitRawText(StringRef("  .short 21"));
  OutStreamer->EmitRawText(StringRef("  .short 22"));
  OutStreamer->EmitRawText(StringRef("  .asciz \"rf_xpr\""));
  OutStreamer->EmitRawText(StringRef("  .short 22"));
  OutStreamer->EmitRawText(StringRef("  .short 23"));
  OutStreamer->EmitRawText(StringRef("  .asciz \"rf_xpr\""));
  OutStreamer->EmitRawText(StringRef("  .short 23"));
  OutStreamer->EmitRawText(StringRef("  .short 24"));
  OutStreamer->EmitRawText(StringRef("  .asciz \"rf_xpr\""));
  OutStreamer->EmitRawText(StringRef("  .short 24"));
  OutStreamer->EmitRawText(StringRef("  .short 25"));
  OutStreamer->EmitRawText(StringRef("  .asciz \"rf_xpr\""));
  OutStreamer->EmitRawText(StringRef("  .short 25"));
  OutStreamer->EmitRawText(StringRef("  .short 26"));
  OutStreamer->EmitRawText(StringRef("  .asciz \"rf_xpr\""));
  OutStreamer->EmitRawText(StringRef("  .short 26"));
  OutStreamer->EmitRawText(StringRef("  .short 27"));
  OutStreamer->EmitRawText(StringRef("  .asciz \"rf_xpr\""));
  OutStreamer->EmitRawText(StringRef("  .short 27"));
  OutStreamer->EmitRawText(StringRef("  .short 28"));
  OutStreamer->EmitRawText(StringRef("  .asciz \"rf_xpr\""));
  OutStreamer->EmitRawText(StringRef("  .short 28"));
  OutStreamer->EmitRawText(StringRef("  .short 29"));
  OutStreamer->EmitRawText(StringRef("  .asciz \"rf_xpr\""));
  OutStreamer->EmitRawText(StringRef("  .short 29"));
  OutStreamer->EmitRawText(StringRef("  .short 30"));
  OutStreamer->EmitRawText(StringRef("  .asciz \"rf_xpr\""));
  OutStreamer->EmitRawText(StringRef("  .short 30"));
  OutStreamer->EmitRawText(StringRef("  .short 31"));
  OutStreamer->EmitRawText(StringRef("  .asciz \"rf_xpr\""));
  OutStreamer->EmitRawText(StringRef("  .short 31"));
  OutStreamer->EmitRawText(StringRef("  .short 2"));

  // version text
  //OutStreamer->EmitRawText(StringRef(".comment"));
  OutStreamer->EmitRawText(StringRef("  .ident \"      6.8.2-1.win.7.EVALUATION\\n      Licensee: C51_657_727\\n      Project: RISC_V5.ia\\n      Date: 2017-11-25 23:37:30\\n      Copyright (C) 2017 Codasip Ltd.\""));
  // the following is only for debug
  if (!hasDebug ) return;
  // print type sizes
  OutStreamer->EmitRawText(StringRef("  .section .codasip_ctypes, \"g\""));
  OutStreamer->EmitRawText(StringRef("  .short 12"));
  OutStreamer->EmitRawText(StringRef("  .asciz \"void\""));
  OutStreamer->EmitRawText(StringRef("  .short 8"));
  OutStreamer->EmitRawText(StringRef("  .asciz \"bool\""));
  OutStreamer->EmitRawText(StringRef("  .short 8"));
  OutStreamer->EmitRawText(StringRef("  .asciz \"int\""));
  
  OutStreamer->EmitRawText(StringRef("  .short 32"));
  
  OutStreamer->EmitRawText(StringRef("  .asciz \"pointer\""));
  OutStreamer->EmitRawText(StringRef("  .short 32"));
  OutStreamer->EmitRawText(StringRef("  .asciz \"char\""));
  OutStreamer->EmitRawText(StringRef("  .short 8"));
  OutStreamer->EmitRawText(StringRef("  .asciz \"short\""));
  OutStreamer->EmitRawText(StringRef("  .short 16"));
  OutStreamer->EmitRawText(StringRef("  .asciz \"long\""));
  OutStreamer->EmitRawText(StringRef("  .short 32"));
  OutStreamer->EmitRawText(StringRef("  .asciz \"long long\""));
  OutStreamer->EmitRawText(StringRef("  .short 64"));
  OutStreamer->EmitRawText(StringRef("  .asciz \"half\""));
  OutStreamer->EmitRawText(StringRef("  .short 16"));
  OutStreamer->EmitRawText(StringRef("  .asciz \"float\""));
  OutStreamer->EmitRawText(StringRef("  .short 32"));
  OutStreamer->EmitRawText(StringRef("  .asciz \"double\""));
  OutStreamer->EmitRawText(StringRef("  .short 64"));
  OutStreamer->EmitRawText(StringRef("  .asciz \"long double\""));
  OutStreamer->EmitRawText(StringRef("  .short 64"));
}

void CodasipAsmPrinter::EmitFunctionEntryLabel()
{
  // print alignment, if set
  
  AsmPrinter::EmitFunctionEntryLabel();
}

// print vararg metainfo
void CodasipAsmPrinter::EmitFunctionBodyStart()
{
  SmallString<128> pbuf;
  raw_svector_ostream O(pbuf);
  const Function *func = MF->getFunction();
  bool hascall = HasCall(*MF);
  (void)hascall;
  const CodasipFunctionInfo *finfo = MF->getInfo<CodasipFunctionInfo>();
  // where is the return value?
  // - in struct
  if (func->hasStructRetAttr())
  {
    O << "  .codasip_retstruct_reg ";
    O << (unsigned)(Codasip:: rf_xpr_10) - 1;
  }
  // - in regs
  else
  {
    O << "  .codasip_retval_regs";
    for (unsigned i=0; i<finfo->RetRegs.size(); ++i)
    {
      if (i) O << ",";
      O << " " << finfo->RetRegs[i]-1;
    }
  }
  O << '\n';
  EMIT;
  // note: cfi emit was moved to framelowering -> remove the commented lines
  // cfi - return address
  // - return address register
  O << "  .cfi_return_column " << 1 << '\n';
  
  EMIT;
}

// The default behaviour was causing problems on -O0 so it needs to be overwritten
bool CodasipAsmPrinter::isBlockOnlyReachableByFallthrough(const MachineBasicBlock *MBB) const
{
  return false;
}

void CodasipAsmPrinter::EmitGlobalVariable(const GlobalVariable *GV)
{
  SmallString<128> pbuf;
  raw_svector_ostream O(pbuf);
  //SectionKind GVKind = TargetLoweringObjectFile::getKindForGlobal(GV,TM);
  // note1: this directive is printed in front of every kind of GV
  //        (=> if it causes SwitchSection then the directives will be in this order: AS, Switch, GV itself)
  //      - there were some exceptions in AsmPrinter::EmitGlobalVariable
  //        but I don't think they were intended
  // note2: zero-fill is not checked here (Codasip does not support address spaces with those)
  // note3: address space needs to be printed always
  O << "\t.address_space\t" << GV->getType()->getAddressSpace() << '\t';
  EMIT;
  AsmPrinter::EmitGlobalVariable(GV);
  //EmitAlignment(sqrt(ptr_size_inbytes), NULL);
  //OutStreamer.AddBlankLine();
}


// Taken from AsmPrinter.cpp and edited (changes marked)
// Unfortunately, it needs to be this way (I can't just add something and then call parent method)
namespace {
// Keep track the alignment, constpool entries per Section.
  struct SectionCPs {
    MCSection *S;
    unsigned Alignment;
    //=== CODASIP ===
    unsigned AddressSpace;
    //===============
    SmallVector<unsigned, 4> CPEs;
    //=== CODASIP ===
    // Added parameter
    SectionCPs(MCSection *s, unsigned a, unsigned AS) : S(s), Alignment(a), AddressSpace(AS) {}
  };
}

/// EmitConstantPool - Print to the current output stream assembly
/// representations of the constants in the constant pool MCP. This is
/// used to print out constants which have been "spilled to memory" by
/// the code generator.
///
void CodasipAsmPrinter::EmitConstantPool() {
  //=== CODASIP ===
  SmallString<128> pbuf;
  raw_svector_ostream O(pbuf);
  //===============
  const MachineConstantPool *MCP = MF->getConstantPool();
  const std::vector<MachineConstantPoolEntry> &CP = MCP->getConstants();
  if (CP.empty()) return;

  // Calculate sections for constant pool entries. We collect entries to go into
  // the same section together to reduce amount of section switch statements.
  SmallVector<SectionCPs, 4> CPSections;
  for (unsigned i = 0, e = CP.size(); i != e; ++i) {
    const MachineConstantPoolEntry &CPE = CP[i];
    unsigned Align = CPE.getAlignment();

    SectionKind Kind = CPE.getSectionKind(&getDataLayout());

    const Constant *C = nullptr;
    if (!CPE.isMachineConstantPoolEntry())
      C = CPE.Val.ConstVal;

    MCSection *S = getObjFileLowering().getSectionForConstant(getDataLayout(),
                                                              Kind, C, Align);
    //=== CODASIP ===
    unsigned currAS = GetSpace4Vt(EVT::getEVT(CPE.getType(), true));
    //===============

    // The number of sections are small, just do a linear search from the
    // last section to the first.
    bool Found = false;
    unsigned SecIdx = CPSections.size();
    while (SecIdx != 0) {
      //=== CODASIP ===
      // Added the second part of the condition
      if (CPSections[--SecIdx].S == S && CPSections[SecIdx].AddressSpace == currAS) {
        Found = true;
        break;
      }
    }
    if (!Found) {
      SecIdx = CPSections.size();
      //=== CODASIP ===
      // Added parameter
      CPSections.push_back(SectionCPs(S, Align, currAS));
    }

    if (Align > CPSections[SecIdx].Alignment)
      CPSections[SecIdx].Alignment = Align;
    CPSections[SecIdx].CPEs.push_back(i);
  }

  // Now print stuff into the calculated sections.
  const MCSection *CurSection = nullptr;
  unsigned Offset = 0;
  for (unsigned i = 0, e = CPSections.size(); i != e; ++i) {
    for (unsigned j = 0, ee = CPSections[i].CPEs.size(); j != ee; ++j) {
      unsigned CPI = CPSections[i].CPEs[j];
      MCSymbol *Sym = GetCPISymbol(CPI);
      if (!Sym->isUndefined())
        continue;

      if (CurSection != CPSections[i].S) {
        //=== CODASIP ===
        // like in EmitGlobalVariable
        O << "\t.address_space\t" << CPSections[i].AddressSpace << '\t';
        EMIT;
        //===============
        OutStreamer->SwitchSection(CPSections[i].S);
        EmitAlignment(Log2_32(CPSections[i].Alignment));
        CurSection = CPSections[i].S;
        Offset = 0;
      }

      MachineConstantPoolEntry CPE = CP[CPI];

      // Emit inter-object padding for alignment.
      unsigned AlignMask = CPE.getAlignment() - 1;
      unsigned NewOffset = (Offset + AlignMask) & ~AlignMask;
      OutStreamer->EmitZeros(NewOffset - Offset);

      Type *Ty = CPE.getType();
      Offset = NewOffset + getDataLayout().getTypeAllocSize(Ty);

      OutStreamer->EmitLabel(Sym);
      if (CPE.isMachineConstantPoolEntry())
        EmitMachineConstantPoolValue(CPE.Val.MachineCPVal);
      else
        EmitGlobalConstant(getDataLayout(), CPE.Val.ConstVal);
    }
  }
}

