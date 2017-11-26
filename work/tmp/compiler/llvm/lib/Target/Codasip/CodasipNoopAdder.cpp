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




// Note: for now, we expect all the uses to be used in first cycles and all the defs in last

#define DEBUG_TYPE "noop-adder"

#include "Codasip.h"
#include "CodasipTargetMachine.h"
#include "llvm/CodeGen/MachineFunctionPass.h"
#include "llvm/CodeGen/MachineInstrBuilder.h"
#include "llvm/Target/TargetInstrInfo.h"
#include "llvm/Support/Debug.h"

#include "CodasipHazardRec.h"

#include <iostream>

using namespace llvm;

// for profiler directives to work correctly in CA/RTL simulation
// due to jump instruction latencies, profiler directives should not be at the start of a MBB
// otherwise they may get into instruction pipeline and accidentally trigger start/end of profiling
static cl::opt<unsigned> MaxJumpLatency("min-prof-dir-depth",
     cl::desc("Set the minimum number of instructions before a profile directive within a basic block"),
     cl::init(5));

namespace {

// adder pass
struct NoopAdder: public MachineFunctionPass
{
  CodasipTargetMachine &TM;
  const TargetInstrInfo *TII;
  const TargetRegisterInfo *TRI;
  const InstrItineraryData *IID;
  MachineHazardRecognizer HR;

  static char ID;
  NoopAdder(CodasipTargetMachine &tm):
  MachineFunctionPass(ID), TM(tm), TII(tm.getInstrInfo()), TRI(tm.getRegisterInfo()),
  IID(tm.getInstrItineraryData()), HR(IID,TII)
  {
    // check nop
    const MCInstrDesc &dsc = TII->get(Codasip:: i_nop_alias__ );
    if (dsc.hasDelaySlot()) {
      std::cerr << "It was detected that the nop instruction has scheduling dependecies. This is not allowed. Edit your custom files.\n";
      exit(1);
    }
  }

  StringRef getPassName() const override {return "Codasip Noop Adder";}

  bool FillDelaySLots(MachineBasicBlock &MBB);
  bool HandleHazards(MachineBasicBlock &MBB);
  bool FixProfilerDirectives(MachineBasicBlock &MBB);
  void InsertNop(MachineBasicBlock &MBB, MachineBasicBlock::iterator I);

  bool runOnMachineFunction(MachineFunction &F) override
  {
    bool Changed = false;
    // iterate from the end
    for (MachineFunction::reverse_iterator FI=F.rbegin(); FI != F.rend(); ++FI)
    {
      // resolve jumps first
      Changed |= FillDelaySLots(*FI);
      // then continue with hazards
      Changed |= HandleHazards(*FI);
      // fix directives for profiling start/stop
      Changed |= FixProfilerDirectives(*FI);
    }
    return Changed;
  }
};

}

char NoopAdder::ID;


bool NoopAdder::FillDelaySLots(MachineBasicBlock &MBB)
{
  bool changed = false;
  for (MachineBasicBlock::iterator I=MBB.begin(); I != MBB.end(); ++I)
  {
    const MCInstrDesc &dsc = I->getDesc();
    if (!dsc.hasDelaySlot()) continue;
    // add nops
    unsigned ici = TII->getInstrLatency(IID,*I);
    // ================ delay slots  ====================
    // fill in the NOPs
    MachineBasicBlock::instr_iterator iit = I->getIterator();
    while (I->isBundledWithSucc()) {
      iit = I->getIterator();
      while (std::next(iit)->isBundledWithSucc()) {
        iit++;
      }
      iit->unbundleFromSucc();
      --ici;
    }
    // ==================================================
    MachineBasicBlock::iterator J=I; ++J;
    for (unsigned i=1; i<ici; ++i) {
      changed = true;
      TII->insertNoop(MBB,J);
    }
  }
  return changed;
}

void NoopAdder::InsertNop(MachineBasicBlock &MBB, MachineBasicBlock::iterator I)
{
  TII->insertNoop(MBB,I);
  HR.EmitNoop(); //will merely advance cycle (top-down)
}

static bool NotInst(MachineBasicBlock::const_iterator I)
{
  return I->getOpcode() <= Codasip::CALLSTART;
}

bool NoopAdder::HandleHazards(MachineBasicBlock &MBB)
{
  bool changed = false;
  // restart scoreboard
  HR.Reset();
  // iterate (from the beginning)
  MachineBasicBlock::iterator I;
  for (I=MBB.begin(); I != MBB.end(); ++I)
  {
    if (NotInst(I)) continue;
    // detect hazard and insert nops
    while (HR.getMachHazardType(&*I))
    {
      changed = true;
      InsertNop(MBB,&*I);
    }
    // register the instruction
    HR.EmitMachInstruction(&*I);
  }
  // look at the next BB
  // there's no need to check whether this is a fall-through
  // note: actually stop and think whether the rest of the function is correct
  if (HR.Empty()) return changed;
  MachineFunction *MF = MBB.getParent();
  MachineFunction::iterator FI(&MBB);
  if (++FI==MF->end()) return changed;
  //assert(FI->size() && "empty BB's should have been removed"); -not with -O0
  for (MachineBasicBlock::iterator J=FI->begin(); J != FI->end(); ++J)
  {
    if (NotInst(J)) continue;
    while (HR.getMachHazardType(&*J))
    {
      changed = true;
      InsertNop(MBB,I);
    }
    // just advance
    HR.AdvanceCycle();
  }
  // hr empty?
  while (!HR.Empty()) {
     changed = true;
     InsertNop(MBB,I); 
  }
  return changed;
}

bool NoopAdder::FixProfilerDirectives(MachineBasicBlock &MBB)
{
  bool changed = false;
  if (MBB.empty()) return changed;
  // check if last instructions in MBB is profiler directive
  MachineInstr &I = MBB.instr_back();
  if (I.isInlineAsm() && I.getNumOperands() > 0 && I.getOperand(0).isSymbol())
  {
    StringRef asmStr = I.getOperand(0).getSymbolName();
    // this applies both to profiler_start and profiler_end
    if (asmStr.startswith(".profiler"))
    {
      // move the directive before first feasible instruction
      // TODO: if it cannot be moved add NOP after?
      MachineBasicBlock::reverse_iterator RI, RE;
      for (RI = MBB.rbegin(), RE = MBB.rend(); RI != RE; ++RI)
      {
        MachineInstr &prevI = *RI;
        if (!NotInst(prevI))
        {
          I.removeFromParent();
          MBB.insert(prevI, &I);
          changed = true;
          break;
        }
      }
    }
  }
  // now check if one of the first MaxJumpLatency instructions isn't profiler directive
  // make sure that profiler directive is at least MaxJumpLatency+1'th instruction
  int i = 0;
  for (auto MII = MBB.instr_begin(); MII != MBB.instr_end() && i < MaxJumpLatency; MII++, i++)
  {
    MachineInstr &I = *MII;
    if (I.isInlineAsm() && I.getNumOperands() > 0 && I.getOperand(0).isSymbol())
    {
      StringRef asmStr = I.getOperand(0).getSymbolName();
      // this applies both to profiler_start and profiler_end
      if (asmStr.startswith(".profiler"))
      {
        // insert nop
        InsertNop(MBB,MII);
        // and restart
        MII = MBB.instr_begin(); i = 0;
        changed = true;
      }
    }
  }
  return changed;
}


// create the adder
FunctionPass* llvm::createCodasipNoopAdderPass(CodasipTargetMachine &tm)
{
  return new NoopAdder(tm);
}

