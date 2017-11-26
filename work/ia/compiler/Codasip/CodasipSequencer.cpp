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




// Note: for now, we expect all the uses to be used in first cycles and all the
// defs in last

#define DEBUG_TYPE "sequencer"

#include "Codasip.h"
#include "CodasipTargetMachine.h"
#include "llvm/CodeGen/MachineFunctionPass.h"
#include "llvm/CodeGen/MachineInstrBuilder.h"
#include "llvm/Target/TargetInstrInfo.h"
#include "llvm/Support/Debug.h"

using namespace llvm;

namespace {

// adder pass
struct Sequencer : public MachineFunctionPass {
  CodasipTargetMachine &TM;
  const CodasipInstrInfo *TII;
  const TargetRegisterInfo *TRI;
  const InstrItineraryData *IID;
  static char ID;

  Sequencer(CodasipTargetMachine &tm)
  : MachineFunctionPass(ID), TM(tm), TII(tm.getInstrInfo()),
    TRI(tm.getRegisterInfo()), IID(tm.getInstrItineraryData()) {}

  StringRef getPassName() const { return "Codasip Sequencer"; }

  bool MakeSequences(MachineBasicBlock &MBB);

  bool runOnMachineFunction(MachineFunction &F) {
    bool Changed = false;
    // iterate from the end
    for (MachineFunction::iterator FI = F.begin(); FI != F.end(); ++FI) {
      Changed |= MakeSequences(*FI);
    }
    if (Changed) finalizeBundles(F);
    return Changed;
    MachineFunctionPass::runOnMachineFunction(F);
  }
};
}

char Sequencer::ID;

bool Sequencer::MakeSequences(MachineBasicBlock &MBB) {

  bool changed = false;
  SlotData instrPos;
  SlotData instrPosNext;
  // all MIs: possibly change to instr_iterator - gets more complex if weneed
  for (MachineBasicBlock::iterator I = MBB.begin(); I != MBB.end(); ++I)
  {
    instrPos.clear();
    // instrPosNext.clear();
    unsigned opcode = I->getOpcode();
    if (I->isCFIInstruction() || I->isImplicitDef() || I->isInlineAsm())
      continue;
    TII->getAllPosInBundle(opcode, instrPos);
    unsigned numPossib = instrPos.size();
    assert(numPossib <= 2 &&
           "Sequencer does not support more than two options in scheduling.");
    // likely to be pseudo and if not, unsequential, in any way, cont.
    if (numPossib == 0) {
      continue;
    }
    if (numPossib == 1) {
      assert(instrPos[0].size() <= 2 && "MI can't take more than two slots.");
    }
    else if (numPossib == 2) {
      assert(instrPos[0].size() == 1 && instrPos[1].size() == 1 && "Unknown sequential instruction.");
    }
    bool instrIsShort = (instrPos[0].size() == 2) ? false : true;
    if (!instrIsShort) // nothing to do with normal instructions, moving on:
      continue;
    // finding seq. instr. guarantees change in final code:
    changed = true;
    // if we have a CFI after a short instr, it needs to go before... or does it.
    MachineBasicBlock::iterator nextNotPseudo = std::next(I);
    //while ((nextNotPseudo->isCFIInstruction() || nextNotPseudo->isImplicitDef()) && nextNotPseudo != MBB.end()) {
    while (nextNotPseudo->isPseudo() && nextNotPseudo != MBB.end())
    {
      nextNotPseudo++;
    }
    if (nextNotPseudo->isPseudo())
    {
      assert((nextNotPseudo->isInlineAsm() || nextNotPseudo->isCFIInstruction() || nextNotPseudo->isImplicitDef()) && "Unsupported pseudo instruction.");
    }
    // if this is the last short MI in block or there are pseudos only, or there is inline asm,
    // we need to insert NOP.
    if (std::next(I) == MBB.end() || nextNotPseudo == MBB.end() || nextNotPseudo->isInlineAsm())
    {
      // bundle with NOP:
      if (instrPos[0][0] == 0) { // can go on first position in the bundle
        TII->insertNoop(MBB, std::next(I));
        I->bundleWithSucc();
      }
      else {
        TII->insertNoop(MBB, I);
        I->bundleWithPred();
      }
      continue;
    }
    // need to know the next instr to be able to schedule this one:
    instrPosNext.clear();
    TII->getAllPosInBundle(nextNotPseudo->getOpcode(), instrPosNext);
    assert(instrPosNext.size() <= 2 && "More than two options of scheduling in Sequencer.");
    assert(instrPosNext.size() > 0 && "Instruction has no slot data, unable to schedule.");
    bool nextInstrIsShort = (instrPosNext[0].size() == 2) ? false : true;
    if (nextInstrIsShort) {      // bundle together if possible:
      // handle CFI:
      if (std::next(I)->isCFIInstruction() || std::next(I)->isImplicitDef()) {
        MBB.splice(nextNotPseudo, &MBB, I);
      }
      if (instrPos[0][0] == 0) { // canBeInsertedAtSlot0:
        if (instrPosNext[0][0] == 1 || instrPosNext[1][0] == 1) { //[this, next]:
          I->bundleWithSucc();
        }
        else { // next one is unable to be scheduled at 2nd spot, put nop:
          TII->insertNoop(MBB, std::next(I));
          I->bundleWithSucc();
        }
      }
      else { // this MI can't be included on 1st slot of sequence, put in nop:
        TII->insertNoop(MBB, I);
        I->bundleWithPred();
      }
    }
    else { // next is not sequential, bundle this one with NOP.
      if (instrPos[0][0] == 0) { // canBeInsertedAtSlot0: [this, nop]
        TII->insertNoop(MBB, std::next(I));
        I->bundleWithSucc();
      }
      else { // [nop, this]
        TII->insertNoop(MBB, I);
        I->bundleWithPred();
      }
    }
  }
  return changed;
}

// create the adder
FunctionPass *llvm::createCodasipSequencerPass(CodasipTargetMachine &tm) {
  return new Sequencer(tm);
}
