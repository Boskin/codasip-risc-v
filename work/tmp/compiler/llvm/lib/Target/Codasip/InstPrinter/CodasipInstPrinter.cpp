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


#include "CodasipInstPrinter.h"
#include "CodasipInstrInfo.h"
#include "CodasipISelLowering.h"

#include "llvm/MC/MCAsmInfo.h"
#include "llvm/MC/MCExpr.h"
#include "llvm/MC/MCInst.h"
#include "llvm/MC/MCInstrInfo.h"
#include "llvm/MC/MCRegisterInfo.h"
#include "llvm/MC/MCSymbol.h"
#include "llvm/Support/raw_ostream.h"

#include <utility>
#include <cstdio>

using namespace llvm;

#define DEBUG_TYPE "asm-printer"

#define GET_INSTRUCTION_NAME
#include "CodasipGenAsmWriter.inc"

CodasipInstPrinter::CodasipInstPrinter
(const MCAsmInfo &MAI, const MCInstrInfo &MII, const MCRegisterInfo &MRI)
: MCInstPrinter(MAI,MII,MRI) {}

void CodasipInstPrinter::printRegName(raw_ostream &OS, unsigned RegNo) const
{
  OS << getRegisterName(RegNo,Codasip::NoRegAltName);
}

// pref/suf data
typedef std::pair<const char*, const char*> SlotSyntax;
// Gets slots syntax based on a first slot and size of a (super)slot
inline static SlotSyntax GetSlotSyntax(const SlotData::value_type &slots)
{
  
  llvm_unreachable("unknown slot syntax");
  return SlotSyntax(0,0);
}

/// mask of slot coverage
class SlotMask: public std::vector<bool>
{
public:
  /// Construct clear mask
  SlotMask(unsigned size): std::vector<bool>(size,false) {}
  /// Detects first unset slot
  unsigned GetFirstFree() const
  {
    for (unsigned i=0; i<size(); ++i)
    {
      if (!at(i)) {
        return i;
      }
    }
    return size();
  }
};

/* (Abbreviated) description of algorithm (for (super)slot printing):
 * For each bundle (assumes correct bundling):
 * 1. Start at slot 0 and at first instruction
 * 2. Take all possible first slots for the current instruction
 *    and choose the one equal to the current slot (for syntax printing)
 * 3. Shift to next (free) slot
 * 4. Go back to 2, unless at the end of bundle */
void CodasipInstPrinter::PrintBundle(const BundleMCInst *bund, raw_ostream &O)
{
  // bundle prefix
  O << "";
  // a mask of covered slots
  SlotMask slots(SLOTS);
  // print all items
  for (unsigned i=0; i<bund->GetSize(); ++i)
  {
    // current slot
    unsigned S = slots.GetFirstFree();
    assert(S<SLOTS && "a too big bundle");
    // the actual instruction
    const MCInst &MI = bund->GetInstr(i);
    // get possible slots
    SlotData vars;
    CodasipInstrInfo::getAllPosInBundleImpl(MI.getOpcode(),vars);
    assert(!vars.empty());
    // select the proper one (error otherwise)
    SlotSyntax syntax(0,0);
    for (unsigned j=0; j<vars.size(); ++j)
    {
      // match?
      if (vars[j][0]==S)
      {
        // get pref/suf
        syntax = GetSlotSyntax(vars[j]);
        // set bits in the mask
        for (unsigned k=0; k<vars[j].size(); ++k)
        {
          const unsigned index = vars[j][k];
          assert(index < SLOTS);
          assert(!slots[index]);
          slots[index] = true;
        }
      }
    }
    // check
    if (!syntax.first)
    {
      assert(!syntax.second);
      llvm_unreachable("no fitting super-slot variant");
    }
    // print
    O << syntax.first;
    printInstruction(&MI,O);
    O << syntax.second;
  }
  // bundle suffix
  O << "";
}

void CodasipInstPrinter::printInst(const MCInst *MI, raw_ostream &O, StringRef Annot, const MCSubtargetInfo &)
{
  if (MI->getOpcode()==TargetOpcode::BUNDLE)
  {
    printAnnotation(O,Annot);
    PrintBundle(static_cast<const BundleMCInst*>(MI),O);
    return;
  }
  printInstruction(MI,O);
  printAnnotation(O,Annot);
}

#define SHIFT_FLAG 0x1
#define MASK_FLAG  0x2

static void printExpr(const MCExpr *Expr, raw_ostream &OS)
{
  int Offset = 0;
  const MCSymbolRefExpr *SRE = NULL;
  if (const MCBinaryExpr *BE = dyn_cast<MCBinaryExpr>(Expr)) {
    SRE = dyn_cast<MCSymbolRefExpr>(BE->getLHS());
    const MCConstantExpr *CE = dyn_cast<MCConstantExpr>(BE->getRHS());
    assert(SRE && CE && "Binary expression must be sym+const.");
    Offset = CE->getValue();
  } else {
    SRE = cast<MCSymbolRefExpr>(Expr);
  }
  //MCSymbolRefExpr::VariantKind Kind = SRE->getKind();
  OS << SRE->getSymbol();
  if (Offset) {
    if (Offset > 0)
      OS << '+';
    OS << Offset;
  }
}

static unsigned GetAltNameIndex(int rc)
{
  switch (rc)
  {
    case Codasip::xprRegClassID: return Codasip::xpr_AltNameIndex;

    default:
      return Codasip::NoRegAltName;
  }
}

void CodasipInstPrinter::printOperand(const MCInst* MI, unsigned opNum, raw_ostream& O)
{
  const unsigned code = MI->getOpcode();
  const MCInstrDesc& desc = MII.get(code);
  assert(opNum < desc.getNumOperands());
  const MCOperand& MO = MI->getOperand(opNum);
  const MCOperandInfo& opInfo = desc.OpInfo[opNum];
  // determine shift
  unsigned shift = 0;
  uint64_t mask = 0;
  switch (code)
  {
    case Codasip::i_alu_i__opc_addi__xpr__x_0__simm12__:
    switch (opNum) {
    case 1: break;
    }
    break;
    case Codasip::i_alu_i__opc_addi__xpr__xpr__simm12__:
    switch (opNum) {
    case 2: break;
    }
    break;
    case Codasip::i_alu_i__opc_andi__xpr__xpr__simm12__:
    switch (opNum) {
    case 2: break;
    }
    break;
    case Codasip::i_alu_i__opc_ori__xpr__x_0__simm12__:
    switch (opNum) {
    case 1: break;
    }
    break;
    case Codasip::i_alu_i__opc_ori__xpr__xpr__simm12__:
    switch (opNum) {
    case 2: break;
    }
    break;
    case Codasip::i_alu_i__opc_slti__xpr__x_0__simm12__:
    switch (opNum) {
    case 1: break;
    }
    break;
    case Codasip::i_alu_i__opc_slti__xpr__xpr__simm12__:
    switch (opNum) {
    case 2: break;
    }
    break;
    case Codasip::i_alu_i__opc_sltiu__xpr__x_0__simm12__:
    switch (opNum) {
    case 1: break;
    }
    break;
    case Codasip::i_alu_i__opc_sltiu__xpr__xpr__simm12__:
    switch (opNum) {
    case 2: break;
    }
    break;
    case Codasip::i_alu_i__opc_xori__xpr__x_0__simm12__:
    switch (opNum) {
    case 1: break;
    }
    break;
    case Codasip::i_alu_i__opc_xori__xpr__xpr__simm12__:
    switch (opNum) {
    case 2: break;
    }
    break;
    case Codasip::i_li_alias__xpr__simm12__:
    switch (opNum) {
    case 1: break;
    }
    break;
    case Codasip::i_load__opc_lb__x_0__simm12__x_0__:
    switch (opNum) {
    case 0: break;
    }
    break;
    case Codasip::i_load__opc_lb__x_0__simm12__xpr__:
    switch (opNum) {
    case 1: break;
    }
    break;
    case Codasip::i_load__opc_lb__xpr__simm12__x_0__:
    switch (opNum) {
    case 1: break;
    }
    break;
    case Codasip::i_load__opc_lb__xpr__simm12__x_0__AEXT_CLONE_:
    switch (opNum) {
    case 1: break;
    }
    break;
    case Codasip::i_load__opc_lb__xpr__simm12__xpr__:
    switch (opNum) {
    case 2: break;
    }
    break;
    case Codasip::i_load__opc_lb__xpr__simm12__xpr__AEXT_CLONE_:
    switch (opNum) {
    case 2: break;
    }
    break;
    case Codasip::i_load__opc_lbu__x_0__simm12__x_0__:
    switch (opNum) {
    case 0: break;
    }
    break;
    case Codasip::i_load__opc_lbu__x_0__simm12__xpr__:
    switch (opNum) {
    case 1: break;
    }
    break;
    case Codasip::i_load__opc_lbu__xpr__simm12__x_0__:
    switch (opNum) {
    case 1: break;
    }
    break;
    case Codasip::i_load__opc_lbu__xpr__simm12__xpr__:
    switch (opNum) {
    case 2: break;
    }
    break;
    case Codasip::i_load__opc_lh__x_0__simm12__x_0__:
    switch (opNum) {
    case 0: break;
    }
    break;
    case Codasip::i_load__opc_lh__x_0__simm12__xpr__:
    switch (opNum) {
    case 1: break;
    }
    break;
    case Codasip::i_load__opc_lh__xpr__simm12__x_0__:
    switch (opNum) {
    case 1: break;
    }
    break;
    case Codasip::i_load__opc_lh__xpr__simm12__x_0__AEXT_CLONE_:
    switch (opNum) {
    case 1: break;
    }
    break;
    case Codasip::i_load__opc_lh__xpr__simm12__xpr__:
    switch (opNum) {
    case 2: break;
    }
    break;
    case Codasip::i_load__opc_lh__xpr__simm12__xpr__AEXT_CLONE_:
    switch (opNum) {
    case 2: break;
    }
    break;
    case Codasip::i_load__opc_lhu__x_0__simm12__x_0__:
    switch (opNum) {
    case 0: break;
    }
    break;
    case Codasip::i_load__opc_lhu__x_0__simm12__xpr__:
    switch (opNum) {
    case 1: break;
    }
    break;
    case Codasip::i_load__opc_lhu__xpr__simm12__x_0__:
    switch (opNum) {
    case 1: break;
    }
    break;
    case Codasip::i_load__opc_lhu__xpr__simm12__xpr__:
    switch (opNum) {
    case 2: break;
    }
    break;
    case Codasip::i_load__opc_lw__x_0__simm12__x_0__:
    switch (opNum) {
    case 0: break;
    }
    break;
    case Codasip::i_load__opc_lw__x_0__simm12__xpr__:
    switch (opNum) {
    case 1: break;
    }
    break;
    case Codasip::i_load__opc_lw__xpr__simm12__x_0__:
    switch (opNum) {
    case 1: break;
    }
    break;
    case Codasip::i_load__opc_lw__xpr__simm12__xpr__:
    switch (opNum) {
    case 2: break;
    }
    break;
    case Codasip::i_shift__opc_slli__xpr__xpr__shamt__:
    switch (opNum) {
    case 2: mask=31LLU; break;
    }
    break;
    case Codasip::i_shift__opc_srai__xpr__xpr__shamt__:
    switch (opNum) {
    case 2: mask=31LLU; break;
    }
    break;
    case Codasip::i_shift__opc_srli__xpr__xpr__shamt__:
    switch (opNum) {
    case 2: mask=31LLU; break;
    }
    break;
    case Codasip::i_store__opc_sb__x_0__simm12__x_0__:
    switch (opNum) {
    case 0: break;
    }
    break;
    case Codasip::i_store__opc_sb__x_0__simm12__x_0__legalConstClonei32__:
    switch (opNum) {
    case 0: break;
    }
    break;
    case Codasip::i_store__opc_sb__x_0__simm12__xpr__:
    switch (opNum) {
    case 1: break;
    }
    break;
    case Codasip::i_store__opc_sb__x_0__simm12__xpr__legalConstClonei32__:
    switch (opNum) {
    case 1: break;
    }
    break;
    case Codasip::i_store__opc_sb__xpr__simm12__x_0__:
    switch (opNum) {
    case 1: break;
    }
    break;
    case Codasip::i_store__opc_sb__xpr__simm12__xpr__:
    switch (opNum) {
    case 2: break;
    }
    break;
    case Codasip::i_store__opc_sh__x_0__simm12__x_0__:
    switch (opNum) {
    case 0: break;
    }
    break;
    case Codasip::i_store__opc_sh__x_0__simm12__x_0__legalConstClonei32__:
    switch (opNum) {
    case 0: break;
    }
    break;
    case Codasip::i_store__opc_sh__x_0__simm12__xpr__:
    switch (opNum) {
    case 1: break;
    }
    break;
    case Codasip::i_store__opc_sh__x_0__simm12__xpr__legalConstClonei32__:
    switch (opNum) {
    case 1: break;
    }
    break;
    case Codasip::i_store__opc_sh__xpr__simm12__x_0__:
    switch (opNum) {
    case 1: break;
    }
    break;
    case Codasip::i_store__opc_sh__xpr__simm12__xpr__:
    switch (opNum) {
    case 2: break;
    }
    break;
    case Codasip::i_store__opc_sw__x_0__simm12__x_0__:
    switch (opNum) {
    case 0: break;
    }
    break;
    case Codasip::i_store__opc_sw__x_0__simm12__xpr__:
    switch (opNum) {
    case 1: break;
    }
    break;
    case Codasip::i_store__opc_sw__xpr__simm12__x_0__:
    switch (opNum) {
    case 1: break;
    }
    break;
    case Codasip::i_store__opc_sw__xpr__simm12__xpr__:
    switch (opNum) {
    case 2: break;
    }
    break;
    case Codasip::i_upper_imm__opc_auipc__xpr__simm20__:
    switch (opNum) {
    case 1: shift=12; mask=1048575LLU; break;
    }
    break;
    case Codasip::i_upper_imm__opc_lui__xpr__simm20__:
    switch (opNum) {
    case 1: shift=12; mask=1048575LLU; break;
    }
    break;
    
    default:;
  }
  // print
  if (MO.isReg())
  {
    const unsigned altIndex = GetAltNameIndex(opInfo.RegClass);
    O << getRegisterName(MO.getReg(),altIndex);
    assert(shift==0 && mask==0);
  }
  else if (MO.isImm())
  {
    int64_t val = MO.getImm();
    O << val;
    // do not print mask if it does not change the value of this constant
    if (mask && (val & mask) == (uint64_t)val)
      mask = 0; 
  }
  else if (MO.isFPImm()) {
    O << MO.getFPImm();
  }
  else {
    assert(MO.isExpr() && "unknown operand kind in printOperand");
    printExpr(MO.getExpr(),O);
  }
  // shift and mask
  if (shift) O << ">>" << shift << " ";
  if (mask) {
    O << "&0x";
    O.write_hex(mask);
  }
}



