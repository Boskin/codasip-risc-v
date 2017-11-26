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



#include "Codasip.h"
#include "CodasipTargetMachine.h"
#include "codasip/Target/CodasipBaseJumplengthChecker.h"
#include "llvm/CodeGen/MachineModuleInfo.h"
#include <string.h>
#include <fstream>
#include <sstream>

#define DEBUG_TYPE "jump-length-checker"

using namespace llvm;

extern cl::opt<std::string> SymValFile;

namespace {

struct JumpLengthChecker: public BaseJumpLengthChecker
{
    std::ifstream m_file;
public:
	static char ID;
	// default ctor used only for the registration in the pass manager.
	JumpLengthChecker() {}
	JumpLengthChecker(CodasipTargetMachine &tm);
	
    bool HasConsOperand(unsigned opcode, int64_t &consVal) override;
    unsigned GetLongJumpOpcode() override;
    unsigned GetLongCallOpcode() override;
    unsigned GetLongTailCallOpcode() override;
    unsigned GetInvertJumpOpcode(unsigned opcode) override;
    
    unsigned HandleShortJumpGenCust(unsigned oldJumpOpcode) override;
    unsigned HandleLongJumpGenCust(unsigned oldJumpOpcode) override;
    bool CheckImmFits(int64_t imm, int width, bool sign, int trunc) override;
    unsigned JumpWidth(unsigned opcode) override;
    bool JumpIsAbsolute(unsigned opcode) override;
    unsigned GetInstrEncodingSize(MachineBasicBlock::instr_iterator &I) override;
    int ComputeJumpDistance
	(MachineFunction &F, MachineFunction::iterator FI, MachineBasicBlock::instr_iterator I, MachineOperand *dest) override;
    unsigned GetSymbolSize(MachineInstr *MII, MachineOperand dest, bool &correct);
    unsigned SearchFile(std::string pattern, bool &correct);
    int getOldJumpAddress(MachineInstr *MII, bool searchNext);
};

} // end anonymous namespace

#include "CodasipCustJmpLenCheck.inc"


char JumpLengthChecker::ID = 0;
char &JumpLengthCheckerID = JumpLengthChecker::ID;

// INITIALIZE_PASS(JumpLengthChecker, "jmplen-check-2",
//                  "Codasip Jump-length Checker", false, false)

static RegisterPass<JumpLengthChecker> X("jmplen-check",
                                             "Codasip Jump Length Checker",
                                             false /* Only looks at CFG */,
                                             false /* Analysis Pass */);

JumpLengthChecker::JumpLengthChecker(CodasipTargetMachine &tm)
: BaseJumpLengthChecker(tm, tm.getInstrInfo(), ID)
{
	isVliw = 0 ;
}

unsigned JumpLengthChecker::GetLongJumpOpcode()
{
	return Codasip::i_jalr__opc_jalr__x_0__rel_jalr_addr12__x_0__;
}

bool JumpLengthChecker::CheckImmFits(int64_t imm, int width, bool sign, int trunc)
{
    return CheckImmImpl(imm, width, sign, trunc);
}

unsigned JumpLengthChecker::GetLongCallOpcode()
{
  
    return Codasip::i_call_alias__rel_addr20__;
  
}

unsigned JumpLengthChecker::GetLongTailCallOpcode()
{
	return Codasip::i_j_alias__rel_addr20__TAILCALL_CLONE_;
}

bool JumpLengthChecker::JumpIsAbsolute(unsigned opcode)
{
	const CodasipInstrInfo &CII = static_cast<const CodasipInstrInfo&>(*TII);
	bool isAbsolute;
	CII.GetJumpWidth(opcode, isAbsolute);
	return isAbsolute;
}

unsigned JumpLengthChecker::JumpWidth(unsigned opcode)
{
    const CodasipInstrInfo &CII = static_cast<const CodasipInstrInfo&>(*TII);
    bool isAbsolute;
    return CII.GetJumpWidth(opcode, isAbsolute);
}

unsigned JumpLengthChecker::GetSymbolSize(MachineInstr *MII, MachineOperand dest, bool &correct)
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

unsigned JumpLengthChecker::SearchFile(std::string pattern, bool &correct)
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

int JumpLengthChecker::getOldJumpAddress(MachineInstr *MII, bool searchNext)
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

// returns 0 if symbol is not found
int JumpLengthChecker::ComputeJumpDistance(MachineFunction &F, MachineFunction::iterator FI, MachineBasicBlock::instr_iterator I, MachineOperand *dest)
{
    MachineInstr *MI = &(*I);
    if (!MI->isCall())
    {
        return ComputeDistance(F,FI,I,dest->getMBB());
    }
    // it is call
    // comandline argument -link-time-info was set
    if (SymValFile.empty())
    {
        return 0;
    }
    m_file.open(SymValFile, std::ios::in);
    if (!m_file.is_open())
    {
        // ERROR MESSAGE
        errs() << " Could not open file " << SymValFile
               << " jump lenght check with link information will be skiped \n";
        return 0;
    }
    bool isCorrect = false;
    int distance = 0;
    int oldJAddr = 0;
    // get destination address of jump
    int oldJDestAddr = GetSymbolSize(MI, *dest, isCorrect);
    // search for next recognised symbol, that is before the instruction
    oldJAddr = getOldJumpAddress(MI, false);
    // and after the instruction
    distance = oldJDestAddr - oldJAddr;
    if (m_file.is_open())
    {
      m_file.close();
    }
    if (oldJDestAddr == 0 || oldJAddr == 0)
    {
      return 0;
    }
    return distance;
}

unsigned JumpLengthChecker::GetInstrEncodingSize(MachineBasicBlock::instr_iterator &I)
{
	return GetEncodingSize(I);
}


unsigned JumpLengthChecker::GetInvertJumpOpcode(unsigned opcode)
{
	unsigned Opc;
	switch (opcode)
	{
	    case Codasip::i_beqz_alias__xpr__rel_addr12__:
      Opc = Codasip::i_bgtu_alias__xpr__x_0__rel_addr12__;
      break;
    case Codasip::i_bgez_alias__xpr__rel_addr12__:
      Opc = Codasip::i_bgt_alias__x_0__xpr__rel_addr12__;
      break;
    case Codasip::i_bgt_alias__x_0__xpr__rel_addr12__:
      Opc = Codasip::i_bgez_alias__xpr__rel_addr12__;
      break;
    case Codasip::i_bgt_alias__xpr__x_0__rel_addr12__:
      Opc = Codasip::i_ble_alias__xpr__x_0__rel_addr12__;
      break;
    case Codasip::i_bgt_alias__xpr__xpr__rel_addr12__:
      Opc = Codasip::i_ble_alias__xpr__xpr__rel_addr12__;
      break;
    case Codasip::i_bgt_alias__xpr__xpr__rel_addr12__swappedCmpClone0__:
      Opc = Codasip::i_ble_alias__xpr__xpr__rel_addr12__swappedCmpClone0__;
      break;
    case Codasip::i_bgtu_alias__xpr__x_0__rel_addr12__:
      Opc = Codasip::i_beqz_alias__xpr__rel_addr12__;
      break;
    case Codasip::i_bgtu_alias__xpr__xpr__rel_addr12__:
      Opc = Codasip::i_branch__opc_bgeu__xpr__xpr__rel_addr12__swappedCmpClone0__;
      break;
    case Codasip::i_bgtu_alias__xpr__xpr__rel_addr12__swappedCmpClone0__:
      Opc = Codasip::i_branch__opc_bgeu__xpr__xpr__rel_addr12__;
      break;
    case Codasip::i_bgtz_alias__xpr__rel_addr12__:
      Opc = Codasip::i_ble_alias__xpr__x_0__rel_addr12__;
      break;
    case Codasip::i_ble_alias__x_0__xpr__rel_addr12__:
      Opc = Codasip::i_bgt_alias__x_0__xpr__rel_addr12__;
      break;
    case Codasip::i_ble_alias__xpr__x_0__rel_addr12__:
      Opc = Codasip::i_bgt_alias__xpr__x_0__rel_addr12__;
      break;
    case Codasip::i_ble_alias__xpr__xpr__rel_addr12__:
      Opc = Codasip::i_bgt_alias__xpr__xpr__rel_addr12__;
      break;
    case Codasip::i_ble_alias__xpr__xpr__rel_addr12__swappedCmpClone0__:
      Opc = Codasip::i_bgt_alias__xpr__xpr__rel_addr12__swappedCmpClone0__;
      break;
    case Codasip::i_bleu_alias__x_0__xpr__rel_addr12__:
      Opc = Codasip::i_beqz_alias__xpr__rel_addr12__;
      break;
    case Codasip::i_bleu_alias__xpr__xpr__rel_addr12__:
      Opc = Codasip::i_branch__opc_bgeu__xpr__xpr__rel_addr12__;
      break;
    case Codasip::i_bleu_alias__xpr__xpr__rel_addr12__swappedCmpClone0__:
      Opc = Codasip::i_branch__opc_bgeu__xpr__xpr__rel_addr12__swappedCmpClone0__;
      break;
    case Codasip::i_blez_alias__xpr__rel_addr12__:
      Opc = Codasip::i_bgt_alias__xpr__x_0__rel_addr12__;
      break;
    case Codasip::i_bltz_alias__xpr__rel_addr12__:
      Opc = Codasip::i_bgez_alias__xpr__rel_addr12__;
      break;
    case Codasip::i_bnez_alias__xpr__rel_addr12__:
      Opc = Codasip::i_beqz_alias__xpr__rel_addr12__;
      break;
    case Codasip::i_branch__opc_beq__x_0__xpr__rel_addr12__:
      Opc = Codasip::i_bgtu_alias__xpr__x_0__rel_addr12__;
      break;
    case Codasip::i_branch__opc_beq__xpr__x_0__rel_addr12__:
      Opc = Codasip::i_bgtu_alias__xpr__x_0__rel_addr12__;
      break;
    case Codasip::i_branch__opc_beq__xpr__xpr__rel_addr12__:
      Opc = Codasip::i_branch__opc_bne__xpr__xpr__rel_addr12__;
      break;
    case Codasip::i_branch__opc_bge__x_0__xpr__rel_addr12__:
      Opc = Codasip::i_bgt_alias__xpr__x_0__rel_addr12__;
      break;
    case Codasip::i_branch__opc_bge__xpr__x_0__rel_addr12__:
      Opc = Codasip::i_bgt_alias__x_0__xpr__rel_addr12__;
      break;
    case Codasip::i_branch__opc_bge__xpr__xpr__rel_addr12__:
      Opc = Codasip::i_bgt_alias__xpr__xpr__rel_addr12__swappedCmpClone0__;
      break;
    case Codasip::i_branch__opc_bge__xpr__xpr__rel_addr12__swappedCmpClone0__:
      Opc = Codasip::i_bgt_alias__xpr__xpr__rel_addr12__;
      break;
    case Codasip::i_branch__opc_bgeu__x_0__xpr__rel_addr12__:
      Opc = Codasip::i_bgtu_alias__xpr__x_0__rel_addr12__;
      break;
    case Codasip::i_branch__opc_bgeu__xpr__xpr__rel_addr12__:
      Opc = Codasip::i_bgtu_alias__xpr__xpr__rel_addr12__swappedCmpClone0__;
      break;
    case Codasip::i_branch__opc_bgeu__xpr__xpr__rel_addr12__swappedCmpClone0__:
      Opc = Codasip::i_bgtu_alias__xpr__xpr__rel_addr12__;
      break;
    case Codasip::i_branch__opc_blt__x_0__xpr__rel_addr12__:
      Opc = Codasip::i_ble_alias__xpr__x_0__rel_addr12__;
      break;
    case Codasip::i_branch__opc_blt__xpr__x_0__rel_addr12__:
      Opc = Codasip::i_bgez_alias__xpr__rel_addr12__;
      break;
    case Codasip::i_branch__opc_blt__xpr__xpr__rel_addr12__:
      Opc = Codasip::i_ble_alias__xpr__xpr__rel_addr12__swappedCmpClone0__;
      break;
    case Codasip::i_branch__opc_blt__xpr__xpr__rel_addr12__swappedCmpClone0__:
      Opc = Codasip::i_ble_alias__xpr__xpr__rel_addr12__;
      break;
    case Codasip::i_branch__opc_bltu__x_0__xpr__rel_addr12__:
      Opc = Codasip::i_beqz_alias__xpr__rel_addr12__;
      break;
    case Codasip::i_branch__opc_bltu__xpr__xpr__rel_addr12__:
      Opc = Codasip::i_branch__opc_bgeu__xpr__xpr__rel_addr12__;
      break;
    case Codasip::i_branch__opc_bltu__xpr__xpr__rel_addr12__swappedCmpClone0__:
      Opc = Codasip::i_branch__opc_bgeu__xpr__xpr__rel_addr12__swappedCmpClone0__;
      break;
    case Codasip::i_branch__opc_bne__x_0__xpr__rel_addr12__:
      Opc = Codasip::i_beqz_alias__xpr__rel_addr12__;
      break;
    case Codasip::i_branch__opc_bne__xpr__x_0__rel_addr12__:
      Opc = Codasip::i_beqz_alias__xpr__rel_addr12__;
      break;
    case Codasip::i_branch__opc_bne__xpr__xpr__rel_addr12__:
      Opc = Codasip::i_branch__opc_beq__xpr__xpr__rel_addr12__;
      break;
    
	    default:
	      Opc = opcode;
	      break;
	}
	return Opc;
}

FunctionPass *llvm::createCodasipJumpLengthCheckerPass(CodasipTargetMachine &tm) {
	//return new Checker(tm);
    return new JumpLengthChecker(tm);
}

