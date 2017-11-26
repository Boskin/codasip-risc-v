/**
 * Codasip Ltd
 *
 * Copyright 2016 Codasip Ltd
 *
 * All Rights Reserved.
 * This file is part of the Codasip Studio product. No part of the Studio product, including this
 * file, may be use, copied, modified, or distributed except in accordance with the terms contained
 * in Codasip license agreement under which you obtained this file.
 *
 * \file    CodasipBaseJumplengthChecker.h
 * \date    26. 1. 2016
 * \author  Stanislav Melo
 * \version 5.5.0.
 * \brief   Base class for JumpLengthChecker
 */

#ifndef INCLUDE_CODASIP_TARGET_CODASIPBASEJUMPLENGTHCHECKER_H_
#define INCLUDE_CODASIP_TARGET_CODASIPBASEJUMPLENGTHCHECKER_H_

#include "llvm/CodeGen/MachineFunctionPass.h"
#include "llvm/CodeGen/MachineInstrBuilder.h"
#include "llvm/CodeGen/MachineInstrBundle.h"
#include "llvm/Target/TargetInstrInfo.h"
#include "llvm/ADT/Statistic.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Target/TargetMachine.h"
#include "codasip/Target/CodasipBaseTargetInstrInfo.h"

#include <cstdio>
#include <iostream>

// tolerance in jump length boundary checking
// - used to detract from the maximal jump length, hence the "IN"
// - this is neccesary because addition/subtraction of a constant is unaccounted for
#define INTOLER 0x4

//#define VERBOSE_J_LEN_CHECKER

namespace llvm {

struct BaseJumpLengthChecker: public MachineFunctionPass
{
  const TargetMachine *TM;
  const CodasipBaseInstrInfo *TII;
 // const InstrItineraryData *IID;
  unsigned counter;
  bool isVliw = false;

  static char ID;
  BaseJumpLengthChecker(TargetMachine &tm, const CodasipBaseInstrInfo *ti, char &ID)
  : MachineFunctionPass(ID), TM(&tm), TII(ti){}

  // only for initialization, do not use. TM needs to be initialized by a proper ctor.
  BaseJumpLengthChecker()
  : MachineFunctionPass(ID) {}

  StringRef getPassName() const override {return "Codasip Jump Length Checker";}
  bool runOnMachineFunction(MachineFunction &F) override;

  /// Performs the actual check. Returns whether there were any changes.
  bool runCheck(MachineFunction &F);
  void GetNextBB(MachineBasicBlock *BB, MachineBasicBlock *BBs[2], MachineInstr *MI);
  MachineOperand *GetJumpDestination(MachineInstr *I);

  void GetShorterJumpOpc(unsigned opcode, std::vector<unsigned> &newOpc);
  void HandleShortJumpGen(MachineFunction::iterator FI, MachineBasicBlock::instr_iterator &I);
  void HandleShortJumpGenInvert(MachineFunction::iterator FI, MachineBasicBlock::instr_iterator &I);
  bool GetBiggerJump(MachineFunction::iterator FI, MachineBasicBlock::instr_iterator &I, int distance);
  bool GetSmallerJump(MachineBasicBlock::instr_iterator &I, unsigned distance);
  void InsertNops(MachineInstr *I, MachineBasicBlock *MBB);
  void NewJump(MachineBasicBlock::instr_iterator &I, int opIndex, unsigned newOpcode);
  void GetImmProperties(unsigned opCode, unsigned opNum, int &width, bool &sign, int &trunc);
  void createJumpInstrAndBundleIt(MachineBasicBlock *homeBB, MachineBasicBlock *destBB, const MCInstrDesc &dsc, DebugLoc &DL);
  bool ChangeTailcall(MachineInstr *mi);

  virtual bool HasConsOperand(unsigned opcode, int64_t &consVal) { return false; }
  virtual unsigned GetLongJumpOpcode() { return 0; }
  virtual unsigned GetLongCallOpcode() { return 0; }
  virtual unsigned GetLongTailCallOpcode() { return 0; }
  virtual unsigned GetInvertJumpOpcode(unsigned opcode) { return 0; }
  virtual unsigned HandleShortJumpGenCust(unsigned oldJumpOpcode) { return 0; }
  virtual unsigned HandleLongJumpGenCust(unsigned oldJumpOpcode) { return 0; }
  virtual bool CheckImmFits(int64_t imm, int width, bool sign, int trunc) { return false; }
  virtual unsigned GetInstrEncodingSize(MachineBasicBlock::instr_iterator &I) { return 0; }
  virtual unsigned JumpWidth(unsigned opcode) { return 0; }
  virtual bool JumpIsAbsolute(unsigned opcode) { return false; }
  virtual int ComputeJumpDistance
  (MachineFunction &F, MachineFunction::iterator FI, MachineBasicBlock::instr_iterator I, MachineOperand *dest)
  { return 0; }
};

} // End namespace llvm

#endif /* INCLUDE_CODASIP_TARGET_CODASIPBASEJUMPLENGTHCHECKER_H_ */
