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


#define DEBUG_TYPE "jump-length-checker"

#include "Codasip.h"
#include "CodasipTargetMachine.h"
#include "llvm/CodeGen/MachineFunctionPass.h"
#include "llvm/CodeGen/MachineInstrBuilder.h"
#include "llvm/CodeGen/MachineInstrBundle.h"
#include "llvm/CodeGen/MachineRegisterInfo.h"
#include "llvm/CodeGen/Passes.h"
#include "llvm/Target/TargetInstrInfo.h"
#include "llvm/CodeGen/RegisterScavenging.h"

using namespace llvm;

namespace {

/// Expands any dummy instructions which are still left
struct Expander: public MachineFunctionPass
{
  const CodasipInstrInfo* CII;
  static char ID;
  StringRef getPassName() const {return "Codasip dummy instructions expander";}
  Expander(CodasipTargetMachine &tm): MachineFunctionPass(ID), CII(tm.getInstrInfo()) {}
  bool runOnMachineFunction(MachineFunction &F);
};

/// Replaces FP operand clones with originals
struct FpOperReplaceer: public MachineFunctionPass
{
  const CodasipInstrInfo* CII;
  static char ID;
  StringRef getPassName() const {return "Codasip FP clones replacer";}
  FpOperReplaceer(CodasipTargetMachine &tm): MachineFunctionPass(ID), CII(tm.getInstrInfo()) {}
  bool runOnMachineFunction(MachineFunction &F);
};

} // end of anonymous namespace

// -------------------------------------------

char Expander::ID = 0;

bool Expander::runOnMachineFunction(MachineFunction &F)
{
  bool changed = false;
  // We need to track liveness in order to use register scavenging
  //F.getProperties().set(MachineFunctionProperties::Property::TracksLiveness); -not needed anymore
  // third (and last) round of dummy instruction replacement
  // - the form is a little bit different here so some arm twisting needs to be done
  // note: use usesCustomInsertionHook?
  for (MachineFunction::iterator FI=F.begin(); FI!=F.end(); ++FI)
  {
    MachineBasicBlock* BB = &*FI;
    // repeat for as long as there is change
    // note: what about some infinete looping detection?
    bool wasChange;
    do {
      wasChange = false;
      for (MachineBasicBlock::iterator MBI=FI->begin(); MBI!=FI->end(); ++MBI)
      {
        MachineInstr& MI = *MBI;
        // leave unexpanded if vliw?
        if (MI.isBundled()) continue;
        // perform the actual expansion
        bool check = CII->ExpandDummiesImpl(&MI,BB,true,nullptr);
        if (check) {
          changed = true;
          wasChange = true;
          break;
        }
      }
    } while (wasChange);
  }
  return changed;
}

// -------------------------------------------

char FpOperReplaceer::ID = 0;

// gets original fixed reg instruction if FP_OPERAND_CLONE
// (no need for index, it's the one in FIOperandNum)
// note: instructions can have multiple FIs
int GetFPOperOrig(int instrId)
{
  switch (instrId)
  {
    
    default:
      return -1;
  }
}

bool FpOperReplaceer::runOnMachineFunction(MachineFunction &F)
{
  bool changed = false;
  for (MachineFunction::iterator FI=F.begin(); FI!=F.end(); ++FI)
  {
    for (MachineBasicBlock::iterator I=FI->begin(); I!=FI->end(); ++I)
    {
      MachineInstr& MI = *I;
      const MCInstrDesc& desc = MI.getDesc();
      const unsigned opcode = MI.getOpcode();
      int origID = GetFPOperOrig(opcode);
      if (origID > 0)
      {
        changed = true;
        const MCInstrDesc& od = CII->get(origID);
        // number of ops
        const unsigned opN = MI.getNumOperands();
        assert(opN==desc.getNumOperands());
        // change the desc (I think we can do this, see SmallerInstructions::changeToSmaller)
        MI.setDesc(od);
        // remove the fake oper
        for (unsigned i=0; i<opN; ++i)
        {
          // is reg?
          if (!MI.getOperand(i).isReg()) continue;
          // was FI?
          // (I can't just read the reg - BP might be used generally)
          assert(desc.OpInfo[i].OperandType==MCOI::OPERAND_REGISTER);
          int rci = desc.OpInfo[i].RegClass;
          // (copied from CodasipGenDAGToDAGISel::CheckFI)
          bool isDummy = false;
          switch (rci)
          {
            default: break;
            
              isDummy = true;
          }
          // remove
          if (isDummy) {
            // (takes care of shifting and reg use lists)
            MI.RemoveOperand(i);
            break;
          }
        }
        // update imp uses
        MI.addImplicitDefUseOperands(F);
      }
    }
  }
  return changed;
}

// -------------------------------------------

FunctionPass *llvm::createCodasipCallCompletionPass(CodasipTargetMachine& tm) {
  return new Expander(tm);
}

FunctionPass *llvm::createCodasipFpOperReplaceerPass(CodasipTargetMachine& tm) {
  return new FpOperReplaceer(tm);
}
