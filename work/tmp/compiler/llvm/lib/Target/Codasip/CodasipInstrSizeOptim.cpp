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

                
#define DEBUG_TYPE "smaller-inst-optim"
#define IMPLICIT -1
#define UNUSED -2
#define APPROXIMATION 0

#include "Codasip.h"
#include "CodasipTargetMachine.h"
#include "CodasipInstrInfo.h"
#include "llvm/CodeGen/MachineFunctionPass.h"
#include "llvm/CodeGen/MachineInstrBuilder.h"
#include "llvm/Target/TargetInstrInfo.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/CodeGen/MachineRegisterInfo.h"
#include "CodasipHazardRec.h"
#include "llvm/CodeGen/MachineInstrBuilder.h"
#include "llvm/MC/MCInstrDesc.h"
#include "llvm/MC/MCSymbol.h"
#include "llvm/CodeGen/LiveIntervalAnalysis.h"
#include "llvm/CodeGen/LiveRangeEdit.h"
#include "llvm/CodeGen/LiveStackAnalysis.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/CodeGen/MachineModuleInfo.h"
#include <string.h>
#include <fstream>
#include <sstream>

using namespace llvm;

typedef std::map<const MCPhysReg, bool> physRegDefUse;
typedef std::map<int, int> intMap;

// command line argument
cl::opt<std::string> SymValFile("link-info-optim", cl::value_desc("filename"),
           cl::desc("Specify symbol-value filename"));

namespace {
// adder pass
struct SmallerInstructions: public MachineFunctionPass
{
  const CodasipTargetMachine *TM;
  const CodasipInstrInfo *CII;
  const TargetRegisterInfo *TRI;
  MachineRegisterInfo *MRI;
  const int m_type;
  bool m_hasImplicitOp;
  std::ifstream m_file;
  intMap m_newNormal, m_oldNormal;
  static char ID;
  // mandatory functions
  SmallerInstructions() : MachineFunctionPass(ID), m_type(0) {}
  SmallerInstructions(CodasipTargetMachine &tm, CodasipSmallerInsPassType type):
    MachineFunctionPass(ID), TM(&tm), CII(tm.getInstrInfo()),
    TRI(tm.getRegisterInfo()), m_type(type), m_hasImplicitOp(false) {}
  ~SmallerInstructions()
  {
    if (m_file.is_open()) m_file.close();
  }
  StringRef getPassName() const {return "CodasipSmallerInstructions";}
  bool runOnMachineFunction(MachineFunction &F);
  bool runOptim(MachineBasicBlock *MBB);
  // generated functions
  void GetSmallerInstr(unsigned opcode, std::vector<unsigned> &newOpc);
  void GetImmProperties(unsigned opcode, unsigned opNum, int &width, 
                        bool &sign, int &trunc);
  // functions for checking operands
  int getImmPos(unsigned posInNew, intMap newNormal, bool hasImplicit);
  bool ImmCheck(unsigned opcode, MachineInstr *MII, intMap newNormal,
                bool hasImplicit);
  bool OpEqCheck(unsigned opcode, MachineInstr *MII, intMap &newNormal,
                 intMap &oldNormal, bool &hasImplicit);
  bool PredicateCheck(unsigned opcode, MachineInstr *MII);
  bool RegClassOpCheck(unsigned opcode, MachineInstr *MII, unsigned oldInsIndex,
                       unsigned newInsIndex);
  bool TiedOpCheck(unsigned opcode, MachineInstr *MII);
  bool JumpCheck(MachineInstr *MII, unsigned opcode);
  int GetSymbolSize(MachineInstr *MII, MachineOperand &dest, bool &correct);
  // functions for checking different kinds of operand equivalence
  bool NormalOpEqCheck(unsigned opcode, MachineInstr *MII, unsigned numOper);
  bool VariadicOpEqCheck(unsigned opcode, MachineInstr *MII);
  bool ImplicitOpEqCheck(unsigned opcode, MachineInstr *MII, intMap &newNormal,
                         intMap &oldNormal);
  // functions for checking operand equivalence of instructions with 
  // implicit operands
  void checkDefs_Defs(MCInstrDesc aIns, MCInstrDesc bIns, physRegDefUse &isDefDef);
  void checkUses_Uses(MCInstrDesc aIns, MCInstrDesc bIns, physRegDefUse &isUseUse);
  void checkDefs_Normal(MachineInstr *MII, physRegDefUse &isNormalDefs,
                        intMap &oldNormal);
  void checkNormal_Defs(MCInstrDesc aIns, MCInstrDesc bIns, 
                        physRegDefUse &isDefNormal, intMap &newNormal);
  void checkUses_Normal(MachineInstr *MII, physRegDefUse &isNormalUses,
                        intMap &oldNormal);
  void checkNormal_Uses(MCInstrDesc aIns,  physRegDefUse &isNormalUses,
                        intMap &newNormal);
  void checkNormal_Normal(unsigned opcode, MachineInstr *MII, intMap &newNormal,
                          intMap &oldNormal);
  // functions for finding the smallest instruction
  unsigned findSmallestCorrectChange(std::vector<unsigned> newOpcs,
                                     MachineInstr *MII);
  bool isSmallerIns(unsigned aOpc, unsigned bOpc);
  unsigned findSmallest(std::vector<unsigned> newOpcs, MachineInstr *MII,
                        intMap &newNormal, intMap &oldNormal, bool &hasImplicit);
  bool isEqIns(unsigned aOpc, unsigned bOpc);
  void changeToSmaller(MachineInstr *MII, unsigned newOpcode);
  void ReverseOperands(MachineInstr *MII);
  int SearchFile(std::string pattern, bool &correct);
  int getOldJumpAddress(MachineInstr *MII, bool searchNext);
};

}

char SmallerInstructions::ID = 0;
char &SmallerInstructionsID = SmallerInstructions::ID;
static RegisterPass<SmallerInstructions> X("small-instrs", "CodasipSmallerInstructions",
    false /* Only looks at CFG */,
    false /* Analysis Pass */);

/** Get vector of smaller instructions with same semantics*/
void SmallerInstructions::GetSmallerInstr
  (unsigned opcode, std::vector<unsigned> &newOpc)
{
  switch (opcode)
  {
    case Codasip::e_movi32__:
case Codasip::e_movi32__GA:
case Codasip::e_movi32__ES:
case Codasip::e_movi32__BA:
case Codasip::e_movi32__JT:
case Codasip::e_movi32__CP:
newOpc.reserve(5);
newOpc.push_back(Codasip::i_alu_i__opc_addi__xpr__x_0__simm12__);
newOpc.push_back(Codasip::i_alu_i__opc_ori__xpr__x_0__simm12__);
newOpc.push_back(Codasip::i_alu_i__opc_xori__xpr__x_0__simm12__);
newOpc.push_back(Codasip::i_li_alias__xpr__simm12__);
newOpc.push_back(Codasip::i_upper_imm__opc_lui__xpr__simm20__);
break;
case Codasip::i_store__opc_sw__xpr__simm12__xpr__1_BIGIMM_EMUL_:
newOpc.reserve(1);
newOpc.push_back(Codasip::i_store__opc_sw__xpr__simm12__xpr__);
break;
case Codasip::i_load__opc_lw__xpr__simm12__xpr__3_BIGIMM_EMUL_:
newOpc.reserve(1);
newOpc.push_back(Codasip::i_load__opc_lw__xpr__simm12__xpr__);
break;
case Codasip::i_store__opc_sw__xpr__simm12__xpr__4_BIGIMM_EMUL_:
newOpc.reserve(1);
newOpc.push_back(Codasip::i_store__opc_sw__xpr__simm12__xpr__);
break;
case Codasip::i_load__opc_lw__xpr__simm12__xpr__5_BIGIMM_EMUL_:
newOpc.reserve(1);
newOpc.push_back(Codasip::i_load__opc_lw__xpr__simm12__xpr__);
break;
case Codasip::i_alu_i__opc_addi__xpr__xpr__simm12__6_BIGIMM_EMUL_:
newOpc.reserve(1);
newOpc.push_back(Codasip::i_alu_i__opc_addi__xpr__xpr__simm12__);
break;
case Codasip::i_alu_i__opc_addi__xpr__xpr__simm12__7_BIGIMM_EMUL_:
newOpc.reserve(1);
newOpc.push_back(Codasip::i_alu_i__opc_addi__xpr__xpr__simm12__);
break;
case Codasip::i_alu_i__opc_addi__xpr__xpr__simm12__8_BIGIMM_EMUL_:
newOpc.reserve(1);
newOpc.push_back(Codasip::i_alu_i__opc_addi__xpr__xpr__simm12__);
break;

    default:
      break;
  }
}

/** Get properties that imm has to fulfill
 * \param opcode  ID of an instruction.
 * \param opnum   Index of an operand. */
void SmallerInstructions::GetImmProperties(unsigned opCode, unsigned opNum,
                                           int &width, bool &sign, int &trunc)
{
  CII->GetImmProperties(opCode,opNum,width,sign,trunc);
}

/** Checks if registers of old instruction can be encoded on fewer bits*/
bool SmallerInstructions::RegClassOpCheck(unsigned opcode, MachineInstr *MII,
                                          unsigned oldInsIndex, unsigned newInsIndex)
{
    const MCInstrDesc MCID = CII->get(opcode);
    unsigned regClass = MCID.OpInfo[newInsIndex].RegClass;
    MachineOperand &mo = MII->getOperand(oldInsIndex);
    if (TargetRegisterInfo::isVirtualRegister(mo.getReg()))
    {
      const TargetRegisterClass *oldTrc = MRI->getRegClass(mo.getReg());
      const TargetRegisterClass *newTrc = TRI->getRegClass(regClass);
      return (newTrc == oldTrc);
    }
    return TRI->getRegClass(regClass)->contains(mo.getReg());
}

/** Checks if registers that must be equal with result register in new instruction
  * are equal in old instruction*/
bool SmallerInstructions::TiedOpCheck(unsigned opcode, MachineInstr *MII)
{
  const MCInstrDesc MCID = CII->get(opcode);
  for (unsigned i = 0; i < MCID.getNumOperands(); ++i)
  {
    if (MCID.getOperandConstraint(i, MCOI::TIED_TO) == MCOI::TIED_TO)
    {
      // isTied does not work
      if (!MII->getOperand(i).isReg() ||
          !MII->getOperand(0).isReg() ||
          MII->getOperand(i).getReg() != MII->getOperand(0).getReg())
      {
        return false;
      }
    }
  }
  return true;
}

bool SmallerInstructions::PredicateCheck(unsigned opcode, MachineInstr *MII)
{
    if (CII->isPredicated(*MII))
    {
      return CII->isPredicated(opcode) &&
             CII->isPredicatedTrue(*MII) == CII->isPredicatedTrue(opcode);
    }
    else if (CII->isPredicated(opcode))
    {
      return false;
    }
    else
    {
      return true;
    }
}

// help function for ImmCheck
// it returns position of immediate operand in old instruction, that is equivalent 
// to immediate in new instr
// if ins have same number of operands it expects ins have immediates on same place
// otherwise newNormal map contains position
int SmallerInstructions::getImmPos(unsigned posInNew, intMap newNormal,
                                   bool hasImplicit)
{
  if (hasImplicit)
  {
      return newNormal[posInNew];
  }
  return posInNew;
}

/** Checks if values of immediates can be represented on smaller sized immediates
 *  in new instruction code. Immediate operands in current instruction need to be
 *  on same position as imm operands in new instruction so it is run after 
 *  OperandEquality check */
bool SmallerInstructions::ImmCheck(unsigned opcode, MachineInstr *MII, 
                                   intMap newNormal, bool hasImplicit)
{
  const MCInstrDesc newMCID = CII->get(opcode);
  const MCInstrDesc oldMCID = CII->get(MII->getOpcode());
  int width, trunc;
  bool sign;
  for (unsigned i = 0; i < newMCID.getNumOperands(); ++i)
  {
    // find out on which position imm operand is
    if (newMCID.OpInfo[i].OperandType == MCOI::OPERAND_IMMEDIATE)
    {
      GetImmProperties(opcode, i, width, sign, trunc);
      // check immediate only if it needs to be extended, otherwise it is of
      // full datatype width
      if (width == -1)
      {
        return true;
      }
      // position of immediate in old instruction
      unsigned pos = getImmPos(i, newNormal, hasImplicit);
      if (pos >= MII->getNumOperands() ||
          oldMCID.OpInfo[pos].OperandType != MCOI::OPERAND_IMMEDIATE)
      {
        return false;
      }
      if (MII->getOperand(pos).isImm())
      {
        return CheckImmImpl(MII->getOperand(pos).getImm(), width, sign, trunc);
      }
      if ((MII->getOperand(pos).isGlobal() || MII->getOperand(pos).isSymbol() ||
            MII->getOperand(pos).isJTI()) && m_file.is_open())
      {
        bool isCorrect = true;
        int64_t size = GetSymbolSize(MII, MII->getOperand(pos), isCorrect);
        if (!isCorrect) return false;
        if (!MII->getOperand(pos).isJTI())
        {
          size += MII->getOperand(pos).getOffset();
        }
        return CheckImmImpl(size, width, sign, trunc);
      }
      // operand is imm in descriptor, but not supported real operand
      return false;
    }
  }
  // instruction does not have to have immediate operand
  return true;
}

int SmallerInstructions::SearchFile(std::string pattern, bool &correct)
{
  int distance = 0;
  if (!m_file.is_open())
  {
    return distance;
  }
  // search file from the start
  m_file.clear();
  m_file.seekg(0, std::ios::beg);
  std::string line;
  while (std::getline (m_file, line))
  {
    std::size_t delimiter = line.find(",");
    if (line.find(pattern) == 0)
    {
      correct = true;
      std::string valueStr;
      valueStr = line.substr(delimiter+1, line.length());
      std::stringstream ss;
      ss << std::hex << valueStr;
      ss >> distance;
      return distance;
    }
  }
  return distance;
}

int SmallerInstructions::GetSymbolSize(MachineInstr *MII, MachineOperand &dest, bool &correct)
{
  correct = false;
  unsigned distance = 0;
  const MachineFunction *MF = MII->getParent()->getParent();
  std::string testFileName = MF->getMMI().getModule()->getName();
  std::string symbolName;
  if (dest.isGlobal() && dest.getGlobal()->hasName())
  {
    symbolName = dest.getGlobal()->getName();
  }
  else if (dest.isMBB())
  {
    symbolName = dest.getMBB()->getSymbol()->getName();
  }
  else if (dest.isJTI())
  {
      symbolName = MF->getJTISymbol(dest.getIndex(),MF->getContext())->getName().str();
  }
  else if (dest.isSymbol())
  {
    symbolName = dest.getSymbolName();
  }
  else if (dest.isBlockAddress() && dest.getBlockAddress()->hasName())
  {
    dest.getBlockAddress()->getName().str();
  }
  // if it is first MBB of function, MBB name won't be found
  if (dest.isMBB() && dest.getMBB() == &(*(MF->begin())))
  {
    symbolName = MF->getName();
  }
  std::string symbolFileName = symbolName;
  symbolName.append(",");
  symbolFileName.append("_");
  symbolFileName.append(testFileName);
  // change suffix to .s
  symbolFileName = symbolFileName.substr(0, symbolFileName.rfind(".") + 1) + "s";
  // drop last added part (mangling) - it is added when --save-temps is not used,
  // so .s files are stored in /tmp
  symbolFileName = symbolFileName.substr(0, symbolFileName.rfind("-"));
  distance = SearchFile(symbolFileName, correct);
  if (distance == 0 && !correct)
  {
    distance = SearchFile(symbolName, correct);
  }
  return distance;
}

MachineOperand &GetMBBOperand(MachineInstr *mi)
{
  int i = mi->getNumOperands()-1;
  assert(i >= 0);
  if(!mi->getOperand(i).isMBB())
  {
    for(int moIit = i; moIit >= 0; moIit--)
    {
      if(mi->getOperand(moIit).isMBB())
      {
        i = moIit;
        break;
      }
    }
  }
  return mi->getOperand(i);
}

// get approximate address of jump instruction
// if searchNext is true, it searches next MBB, else it searches previous MBB
int SmallerInstructions::getOldJumpAddress(MachineInstr *MII, bool searchNext)
{
  MachineBasicBlock *MBB = MII->getParent();
  MachineFunction &MF = *(MBB->getParent());
  MachineFunction::iterator MBBI = MBB->getIterator();
  MachineBasicBlock::instr_iterator MI(MII);
  int oldJLabelAddr = 0;
  int distToBegBB = 0;
  int help = 0;
  bool isCorrect = false;
  int oldJAddr = 0;
  MachineBasicBlock *currentMBB = MBB;
  if (searchNext)
  {
    currentMBB = currentMBB->getNextNode();
  }
  while (currentMBB != nullptr)
  {
    distToBegBB += help;
    MachineOperand mbbOp = MachineOperand::CreateMBB(currentMBB);
    oldJLabelAddr = GetSymbolSize(MII, mbbOp, isCorrect);
    if (oldJLabelAddr != 0 || isCorrect)
    {
      distToBegBB = ComputeDistance(MF, MBBI, MI, currentMBB);
      break;
    }
    if (searchNext)
    {
      currentMBB = currentMBB->getNextNode();
    }
    else
    {
      currentMBB = currentMBB->getPrevNode();
    }
  }
  // not found
  if (oldJLabelAddr == 0 && !isCorrect)
  {
    return 0;
  }
  assert(oldJLabelAddr != 0);
  if (searchNext)
  {
    oldJAddr = oldJLabelAddr - distToBegBB;
  }
  else
  {
    oldJAddr = oldJLabelAddr + distToBegBB;
  }
  return oldJAddr;
}

/** check if instruction can jump sufficiently far enough*/
bool SmallerInstructions::JumpCheck(MachineInstr *MII, unsigned opcode)
{
  // when jumps aren't checked in pass, return true
  if (m_type == OnlyEmul ||
      (m_type == LtoJump &&  !MII->isBranch() && !MII->isCall() && !MII->isReturn()) ||
      (m_type == NormalInst))
  {
    return true;
  }
  int distanceBACK = 0;
  bool isNewAbsolute = false;
  int newJumpWidth = CII->GetJumpWidth(opcode, isNewAbsolute);
  MachineOperand &dest = (MII->isCall()) ? MII->getOperand(0) : GetMBBOperand(MII);
  if (!dest.isMBB() && !dest.isGlobal() && !dest.isSymbol() && !dest.isBlockAddress())
  {
    return false;
  }
  MachineBasicBlock *MBB = MII->getParent();
  MachineFunction &MF = *(MBB->getParent());
  MachineFunction::iterator MBBI = MBB->getIterator();
  MachineBasicBlock::instr_iterator MI(MII);
  int distance = 0;
  bool isCorrect = true;
  // if new jump is absolute, destination of jump must fit into reserved bits
  // it needs lto info
  if (isNewAbsolute)
  {
    distance = GetSymbolSize(MII, dest, isCorrect);
    if (!dest.isMBB())
    {
      distance += dest.getOffset();
    }
  }
  // call or jump inside one function, doesn't need lt info,
  // only allowed in last pass in instr size optim
  else if (dest.isMBB() && m_type == OnlyJump)
  {
    distance = ComputeDistance(MF, MBBI, MI, dest.getMBB());
  }
  else 
  {
    int oldJAddr = 0;
    int oldJAddrBACK = 0;
    // get destination address of jump
    int oldJDestAddr = GetSymbolSize(MII, dest, isCorrect);
    if (oldJDestAddr == 0)
    {
      return false;
    }
    // search for next recognised symbol, that is before the instruction
    oldJAddr = getOldJumpAddress(MII, false);
    // and after the instruction
    oldJAddrBACK = getOldJumpAddress(MII, true);
    if (oldJAddr == 0 && oldJAddrBACK == 0)
    {
      return false;
    }
    if (oldJAddr != 0 && oldJAddrBACK == 0)
    {
      distanceBACK = 0;
      distance = oldJDestAddr - oldJAddr;
    }
    else if (oldJAddr != 0 && oldJAddrBACK != 0)
    {
      distance = oldJDestAddr - oldJAddr;
      distanceBACK = oldJDestAddr - oldJAddrBACK;
    }
    // address of jump instruction may change a bit during later passes
    if (distance < 0)
    {
      distance -= APPROXIMATION;
    }
    else
    {
      distance += APPROXIMATION;
    }
  }
  if (distance == 0 || newJumpWidth == 0 || !isCorrect)
  {
    return false;
  }
  bool jumpFits = false;
  if (distance != 0 && distanceBACK == 0)
  {
    jumpFits = CheckImmImpl(distance, newJumpWidth, true, 0);
  }
  else
  {
    jumpFits = CheckImmImpl(distance, newJumpWidth, true, 0) && CheckImmImpl(distanceBACK, newJumpWidth, true, 0);
  }
  // jump length fits
  if (!jumpFits)
  {
    return false;
  }
  return true;
}

// help function that returns true, if one of instructions has variable number of 
// arguments
bool isOneVariadic(const MCInstrDesc a, const MCInstrDesc b)
{
  return (a.isVariadic() || b.isVariadic());
}

// help function that returns true, if at least one of instructions has implicit
// operands
bool hasOneImplicitOp(const MCInstrDesc a, const MCInstrDesc b)
{
  return (a.getNumImplicitDefs() != 0 ||
      a.getNumImplicitUses() != 0 ||
      b.getNumImplicitDefs() != 0 ||
      b.getNumImplicitUses() != 0 );
}

/** Checks if instruction operands of old instruction are of same type as operands 
 * in new instruction
 * It alseo checks register classes and tied registers.
 * opcode - opcode of new instruction
 * MII - old instruction*/
bool SmallerInstructions::OpEqCheck(unsigned opcode, MachineInstr *MII, 
                                    intMap &newNormal, intMap &oldNormal,
                                    bool &hasImplicit)
{
  const MCInstrDesc newMCID = CII->get(opcode);
  const MCInstrDesc oldMCID = CII->get(MII->getOpcode());
  bool result = true;

  if (isOneVariadic(newMCID, oldMCID))
  {
    result &= VariadicOpEqCheck(opcode, MII);
  }
  if (hasOneImplicitOp(newMCID, oldMCID))
  {
    result &= ImplicitOpEqCheck(opcode, MII, newNormal, oldNormal);
    hasImplicit = true;
  }
  if (!isOneVariadic(newMCID, oldMCID) && !hasOneImplicitOp(newMCID, oldMCID))
  {
    result &= NormalOpEqCheck(opcode, MII, newMCID.getNumOperands());
  }
  result &= TiedOpCheck(opcode, MII);
  return result;
}

// check of operands for normal instructions 
// (no implicit or variable number of operands)
bool SmallerInstructions::NormalOpEqCheck(unsigned opcode, MachineInstr *MII,
                                          unsigned numOper)
{
  const MCInstrDesc newMCID = CII->get(opcode);
  const MCInstrDesc oldMCID = CII->get(MII->getOpcode());
  // empty for normal check
  intMap newNormal;
  bool result = true;
  assert(newMCID.getNumOperands() == oldMCID.getNumOperands() &&
         " it is not case for normal check ");
  for (unsigned i = 0; i < numOper; ++i)
  {
    if (newMCID.OpInfo[i].OperandType != oldMCID.OpInfo[i].OperandType)
    {
      return false;
    }
    if (newMCID.OpInfo[i].OperandType == MCOI::OPERAND_IMMEDIATE && 
        oldMCID.OpInfo[i].OperandType != MCOI::OPERAND_IMMEDIATE)
    {
      return false;
    }
    if (newMCID.OpInfo[i].OperandType == MCOI::OPERAND_REGISTER &&
        !MII->getOperand(i).isReg())
    {
      return false;
    }
    if (newMCID.OpInfo[i].OperandType == MCOI::OPERAND_IMMEDIATE)
    {
        result &= ImmCheck(opcode, MII, newNormal, false);
    }
    if (newMCID.OpInfo[i].OperandType == MCOI::OPERAND_REGISTER)
    {
      result &= RegClassOpCheck(opcode, &(*MII), i, i);
    }
  }
  return result;
}

// check of operands for instructions with variable number of arguments
bool SmallerInstructions::VariadicOpEqCheck(unsigned opcode, MachineInstr *MII)
{
  const MCInstrDesc newMCID = CII->get(opcode);
  const MCInstrDesc oldMCID = CII->get(MII->getOpcode());

  if (newMCID.isVariadic())
  {
    return NormalOpEqCheck(opcode, MII, newMCID.getNumOperands());
  }
  // only case left is if old is variadic and new is not
  else
  {
    // check if old realy has more arguments
    if (MII->getNumExplicitOperands() != oldMCID.getNumOperands())
    {
      return false;
    }
    // old instr can have more args, but it doesn't
    else
    {
      return NormalOpEqCheck(opcode, MII, newMCID.getNumOperands());
    }
  }
}

// help function for ImplicitOpEqCheck
bool checkMap(physRegDefUse map)
{
  physRegDefUse::iterator mapIt;
  for (mapIt = map.begin(); mapIt != map.end(); ++mapIt)
  {
    if (mapIt->second == false)
    {
      return false;
    }
  }
  return true;
}

// help function for ImplicitOpEqCheck
bool checkMapNormal(intMap map)
{
  intMap::iterator mapIt;
  for (mapIt = map.begin(); mapIt != map.end(); ++mapIt)
  {
    if (mapIt->second == UNUSED)
    {
      return false;
    }
  }
  return true;
}

// case of operand check, when at least one of instructions has implicit 
// operands that means numbers of operands and their positions do not mach
bool SmallerInstructions::ImplicitOpEqCheck
(unsigned opcode, MachineInstr *MII, intMap &newNormal, intMap &oldNormal)
{
  // map that tells if implicit operands of new instruction are present 
  // somewhere in old instruction
  physRegDefUse newDef, newUse;
  // same for old instruction
  physRegDefUse oldDef, oldUse;
  const MCInstrDesc newMCID = CII->get(opcode);
  const MCInstrDesc oldMCID = CII->get(MII->getOpcode());
  // map inicialization
  for (unsigned i = 0; i < newMCID.getNumOperands(); ++i)
  {
    newNormal[i] = UNUSED;
  }
  for (unsigned i = 0; i < oldMCID.getNumOperands(); ++i)
  {
    oldNormal[i] = UNUSED;
  }
  // first check if impl def registers of new ins are not present as imp def
  // registers in old ins
  checkDefs_Defs(oldMCID, newMCID, oldDef);
  // the same for old
  checkDefs_Defs(newMCID, oldMCID, newDef);
  // the same but with imp uses
  checkUses_Uses(oldMCID, newMCID, oldUse);
  checkUses_Uses(newMCID, oldMCID, newUse);
  // check if imp def register of new instruction can not be matched with result
  // register in old ins
  checkDefs_Normal(MII, newDef, oldNormal);
  // this was disabled because of test-5010 of codasip_urisc_ng
  // checkNormal_Defs(newMCID, oldMCID, oldDef, newNormal);
  // imp def that produces new ins was not present in old ins, it would produce
  // unused result - not sure if that is correct
  // end now
  if (/*!checkMap(oldDef) ||*/ !checkMap(newDef))
  {
    return false;
  }
  // imp use regs of new ins are present as explicit operands in old ins
  checkUses_Normal(MII, newUse, oldNormal);
  // same but for old ins
  checkNormal_Uses(newMCID, oldUse, newNormal);
  // new ins would not have correct values in imp use regs,
  // because old ins did not need them
  // new ins would not have enough operands because old ins got
  // more operands in imp use regs
  // that is my assumption
  if (!checkMap(oldUse) || !checkMap(newUse))
  {
    return false;
  }
  // check if other explicit operands that were not covered with 
  // some implicit are covered
  checkNormal_Normal(opcode, MII, newNormal, oldNormal);
  if (!checkMapNormal(newNormal) || !checkMapNormal(oldNormal))
  {
    return false;
  }
  return true;
}

// check if impl def registers of one ins are not present as imp def registers 
// in another ins
// isDefDef map contains all implicit def registers of aIns and information 
// if they were already matched
// isDefDef is updated here
void SmallerInstructions::checkDefs_Defs(MCInstrDesc aIns, MCInstrDesc bIns,
                                         physRegDefUse &isDefDef)
{
  const MCPhysReg *bImplicitDefs;
  const MCPhysReg *aImplicitDefs;

  if (aIns.getNumImplicitDefs() > 0)
  {
    for (aImplicitDefs = aIns.getImplicitDefs(); *aImplicitDefs; ++aImplicitDefs)
    {
      isDefDef[*aImplicitDefs] = false;
      if (bIns.getNumImplicitDefs() > 0)
      {
        for (bImplicitDefs = bIns.getImplicitDefs(); *bImplicitDefs; ++bImplicitDefs)
        {
          assert(*aImplicitDefs != 0 && *bImplicitDefs != 0);
          // check if old inst has operands that are implicitli used in new inst
          if (*bImplicitDefs == *aImplicitDefs)
          {
            isDefDef[*aImplicitDefs] = true;
            break;
          }
        }
      }
    }
  }
}

// check if impl use registers of one ins are not present as imp use registers in 
// another ins
// isUseUse map contains all implicit use registers of aIns and information 
// if they were already matched
// it is updated here
void SmallerInstructions::checkUses_Uses(MCInstrDesc aIns, MCInstrDesc bIns, 
                                         physRegDefUse &isUseUse)
{
  const MCPhysReg *bImplicitUses;
  const MCPhysReg *aImplicitUses;

  if (aIns.getNumImplicitUses() > 0)
  {
    for (aImplicitUses = aIns.getImplicitUses(); *aImplicitUses; ++aImplicitUses)
    {
      isUseUse[*aImplicitUses] = false;
      if (bIns.getNumImplicitUses() > 0)
      {
        for (bImplicitUses = bIns.getImplicitUses(); *bImplicitUses; ++bImplicitUses)
        {
          assert(*aImplicitUses != 0 && *bImplicitUses != 0);
          // check if old inst has operands that are implicitli used in new inst
          if (*bImplicitUses == *aImplicitUses)
          {
            isUseUse[*aImplicitUses] = true;
            break;
          }
        }
      }
    }
  }
}

// check if imp def regs of new ins that were not previously matched can be matched
// to result of old ins
void SmallerInstructions::checkDefs_Normal(MachineInstr *MII,
                                           physRegDefUse &isDefNormal,
                                           intMap &oldNormal)
{
  if (MII->getOperand(0).isReg() &&
      isDefNormal.count(MII->getOperand(0).getReg()) != 0 &&
      oldNormal[0] == UNUSED)
  {
    // result operand of old ins is matched to imp operand of new
    oldNormal[0] = IMPLICIT;
    // imp def reg of new is matched to some op in old ins
    isDefNormal[MII->getOperand(0).getReg()] = true;
  }
}

// check if imp def regs of old ins that were not previously matched can be matched
// to result of new ins
void SmallerInstructions::checkNormal_Defs(MCInstrDesc aIns, MCInstrDesc bIns,
                                           physRegDefUse &isNormalDef,
                                           intMap &newNormal)
{
  if (aIns.OpInfo[0].OperandType != MCOI::OPERAND_REGISTER)
  {
      return;
  }
  unsigned regClass = aIns.OpInfo[0].RegClass;
  const MCPhysReg *bImplicitDefs;
  for (bImplicitDefs = bIns.getImplicitDefs(); *bImplicitDefs; ++bImplicitDefs)
  {
    assert (*bImplicitDefs != 0);
    if (TRI->getRegClass(regClass)->contains(*bImplicitDefs) &&
        isNormalDef.count(*bImplicitDefs) != 0 &&
        isNormalDef[*bImplicitDefs] == false &&
        newNormal[0] == UNUSED)
    {
      newNormal[0] = IMPLICIT;
      isNormalDef[*bImplicitDefs] = true;
    }
  }
}

void SmallerInstructions::checkUses_Normal(MachineInstr *MII,
                                           physRegDefUse &isUsesNormal,
                                           intMap &oldNormal)
{
  for (unsigned i = 0; i < MII->getNumExplicitOperands(); ++i)
  {
    if (MII->getOperand(i).isReg() &&
        isUsesNormal.count(MII->getOperand(i).getReg()) != 0 &&
        isUsesNormal[MII->getOperand(i).getReg()] == false
        && oldNormal[i] == UNUSED)
    {
      oldNormal[i] = IMPLICIT;
      isUsesNormal[MII->getOperand(i).getReg()] = i;
    }
  }
}

void SmallerInstructions::checkNormal_Uses(MCInstrDesc aIns,
                                           physRegDefUse &isNormalUses,
                                           intMap &newNormal)
{
  physRegDefUse::iterator mapIt;
  for (mapIt = isNormalUses.begin(); mapIt != isNormalUses.end(); ++mapIt)
  {
    if (mapIt->second == UNUSED)
    {
      for (unsigned i = 0; i < aIns.getNumOperands(); ++i)
      {
        unsigned regClass = aIns.OpInfo[mapIt->first].RegClass;
        if (aIns.OpInfo[i].OperandType == MCOI::OPERAND_REGISTER &&
            TRI->getRegClass(regClass)->contains(mapIt->first) &&
            newNormal[i] == UNUSED)
        {
          newNormal[i] = IMPLICIT;
          mapIt->second = true;
        }
      }
    }
  }
}

void SmallerInstructions::checkNormal_Normal(unsigned opcode, 
                                             MachineInstr *MII, 
                                             intMap &newNormal, intMap &oldNormal)
{
  const MCInstrDesc newMCID = CII->get(opcode);
  const MCInstrDesc oldMCID = CII->get(MII->getOpcode());

  intMap::iterator newNormalIt, oldNormalIt;
  for (newNormalIt = newNormal.begin(); newNormalIt != newNormal.end(); ++newNormalIt)
  {
    if (newNormalIt->second == UNUSED)
    {
      for (oldNormalIt = oldNormal.begin(); oldNormalIt != oldNormal.end(); ++oldNormalIt)
      {
        if (oldNormalIt->second == UNUSED &&
            newMCID.OpInfo[newNormalIt->first].OperandType == oldMCID.OpInfo[oldNormalIt->first].OperandType)
        {
          if (newMCID.OpInfo[newNormalIt->first].OperandType == MCOI::OPERAND_REGISTER &&
              MII->getOperand(oldNormalIt->first).isReg())
          {
            unsigned regClass = newMCID.OpInfo[newNormalIt->first].RegClass;
            if (TRI->getRegClass(regClass)->contains(MII->getOperand(oldNormalIt->first).getReg()))
            {
              newNormalIt->second = oldNormalIt->first;
              oldNormalIt->second = newNormalIt->first;
              break;
            }
          }
          else
          {
            newNormalIt->second = oldNormalIt->first;
            oldNormalIt->second = newNormalIt->first;
            break;
          }
        }
      }
    }
  }
}

/** swaps operands of 3-address instruction*/
void SmallerInstructions::ReverseOperands(MachineInstr *MII)
{
  if (MII->getNumOperands() != 3)
  {
    return;
  }
  MachineOperand op1 = MII->getOperand(1);
  MachineOperand op2 = MII->getOperand(2);
  MII->RemoveOperand(MII->getNumOperands()-1);
  MII->RemoveOperand(MII->getNumOperands()-1);
  MII->addOperand(op2);
  MII->addOperand(op1);
}

bool SmallerInstructions::isSmallerIns(unsigned aOpc, unsigned bOpc)
{
  MCInstrDesc aMCID = CII->get(aOpc);
  MCInstrDesc bMCID = CII->get(bOpc);
  return (aMCID.getSize() < bMCID.getSize());
}

bool SmallerInstructions::isEqIns(unsigned aOpc, unsigned bOpc)
{
  MCInstrDesc aMCID = CII->get(aOpc);
  MCInstrDesc bMCID = CII->get(bOpc);
  return (aMCID.getSize() == bMCID.getSize());
}

unsigned SmallerInstructions::findSmallestCorrectChange(std::vector<unsigned> newOpcs,
                                                        MachineInstr *MII)
{
  unsigned smallest1 = MII->getOpcode(), smallest2 = MII->getOpcode();
  intMap newNormal1, oldNormal1, newNormal2, oldNormal2;
  bool hasImplicit1 = false, hasImplicit2 = false;
  smallest1 = findSmallest(newOpcs, MII, newNormal1, oldNormal1, hasImplicit1);
  if (MII->isCommutable())
  {
    ReverseOperands(MII);
    smallest2 = findSmallest(newOpcs, MII, newNormal2, oldNormal2, hasImplicit2);
    if (isSmallerIns(smallest1, smallest2) || isEqIns(smallest1, smallest2))
    {
      // back to normal
      ReverseOperands(MII);
    }
    else
    {
      m_hasImplicitOp = hasImplicit2;
      m_newNormal.clear();
      m_oldNormal.clear();
      m_newNormal.insert(newNormal2.begin(), newNormal2.end());
      m_oldNormal.insert(oldNormal2.begin(), oldNormal2.end());
      newNormal2.clear();
      oldNormal2.clear();
      return smallest2;
    }
  }
  // original order of operands
  m_hasImplicitOp = hasImplicit1;
  m_newNormal.clear();
  m_oldNormal.clear();
  m_newNormal.insert(newNormal1.begin(), newNormal1.end());
  m_oldNormal.insert(oldNormal1.begin(), oldNormal1.end());
  newNormal1.clear();
  oldNormal1.clear();
  return smallest1;
}

unsigned SmallerInstructions::findSmallest(std::vector<unsigned> newOpcs, 
                                           MachineInstr *MII, intMap &newNormal, 
                                           intMap &oldNormal, bool &hasImplicit)
{
  unsigned smallest = MII->getOpcode();
  for (unsigned i = 0; i < newOpcs.size(); ++i)
  {
    bool impl = false;
    unsigned examinedOpc = newOpcs[i];
    if (isSmallerIns(examinedOpc, smallest))
    {
      /*bool pred = PredicateCheck(examinedOpc, MII);
      bool op = OpEqCheck(examinedOpc, MII, newNormal, oldNormal, impl);
      bool imm = ImmCheck(examinedOpc, MII, newNormal, hasImplicit);
      bool jmp = JumpCheck(MII, examinedOpc);
      if (MII->getOpcode() == Codasip::i_load_aux__opc_ld__)
      outs() << " pred: " << (pred?"true ":"false ") << "op: " << (op?"true ":"false ")
             << "imm: " << (imm?"true ":"false ") << "jmp: " << (jmp?"true ":"false ") << "\n";
      if (op && imm && jmp && pred)
      */
      if (PredicateCheck(examinedOpc, MII) &&
          OpEqCheck(examinedOpc, MII, newNormal, oldNormal, impl) &&
          ImmCheck(examinedOpc, MII, newNormal, hasImplicit) &&
          JumpCheck(MII, examinedOpc))
      {
        hasImplicit = impl;
        smallest = examinedOpc;
      }
    }
  }
  return smallest;
}

void SmallerInstructions::changeToSmaller(MachineInstr *MII, unsigned newOpcode)
{
  MCInstrDesc newMCID = CII->get(newOpcode);
  if (m_hasImplicitOp)
  {
    if (MII->isCall() && MII->isReturn() && newMCID.isCall() && newMCID.isReturn())
    {
      MII->setDesc(CII->get(newOpcode));
      return;
    }
    // removing of old implicit ops must be done differently
    for (unsigned i = MII->getNumOperands()-1; i >= MII->getNumExplicitOperands(); --i)
    {
      MII->RemoveOperand(i);
    }
    for (int i = MII->getNumExplicitOperands()-1; i >= 0; --i)
    {
      if (m_oldNormal[i] == IMPLICIT)
      {
        MII->RemoveOperand(i);
      }
    }
  }
  MII->setDesc(CII->get(newOpcode));
  MII->addImplicitDefUseOperands(*(MII->getParent()->getParent()));
}

// what to do on machine basic block level
bool SmallerInstructions::runOptim(MachineBasicBlock *MBB)
{
  bool AnyChange = false;
  MachineBasicBlock::instr_iterator MI;
  for(MI = MBB->instr_begin(); MI != MBB->instr_end(); ++MI)
  {
    MachineInstr *MII = &(*MI);
    std::vector<unsigned> newOpcs;
    GetSmallerInstr(MII->getOpcode(), newOpcs);
    unsigned newOpcode = MII->getOpcode();
    switch(m_type)
    {
    case OnlyEmul:
      // only emulations, no jump emulations
      if (!MII->isPseudo() || MII->isBranch() || MII->isCall() || MII->isReturn())
      {
        continue;
      }
      break;
    case LtoJump:
      // normal instructions + jumps if lto info is present
      if ((MII->isBranch() || MII->isCall() || MII->isReturn()) && SymValFile.empty())
      {
        continue;
      }
      break;
    case NormalInst: 
      // only normal instructions - no jumps
      if ((MII->isBranch() || MII->isCall() || MII->isReturn()))
      {
        continue;
      }
      break;
    case OnlyJump:
      // only jumps, with and without lto
      if (!MII->isBranch() && !MII->isCall() && !MII->isReturn())
      {
        continue;
      }
      break;
    default:
      assert(false && "Unsupported second argument of createCodasipSmallerInstructionsPass");
    }
    newOpcode = findSmallestCorrectChange(newOpcs, MII);
    if (newOpcode != MII->getOpcode())
    {
      DEBUG({ dbgs() << "Changed:\n    ";
        MII->print(dbgs(), false);
        dbgs() << "    for:\n    ";
      });
      changeToSmaller(MII, newOpcode);
      DEBUG( MII->print(dbgs(), false); );
      AnyChange |= true;
    }
  }
  return AnyChange;
}

// what to do on machine function level
bool SmallerInstructions::runOnMachineFunction(MachineFunction &F)
{
    MRI = &F.getRegInfo();
  bool Changed = false;
  // comandline argument -small-abs-jmp was set
  if (!SymValFile.empty())
  {
    m_file.open(SymValFile, std::ios::in);
    if (!m_file.is_open())
    {
      // ERROR MESSAGE
      errs() << " Could not open file " << SymValFile 
             << " Smaller instruction optimization with link information will be skiped \n";
      return false;
    }
  }
  for (MachineFunction::iterator FI=F.begin(); FI != F.end(); ++FI)
  {
    //go over basicblocks and see if we can catch some fast optim
    Changed = runOptim(&*FI);
  }
  if (m_file.is_open())
  {
    m_file.close();
  }
  return Changed;
}

// create the pass
FunctionPass* llvm::createCodasipSmallerInstructionsPass(CodasipTargetMachine &tm, CodasipSmallerInsPassType type)
{
  return new SmallerInstructions(tm, type);
}
