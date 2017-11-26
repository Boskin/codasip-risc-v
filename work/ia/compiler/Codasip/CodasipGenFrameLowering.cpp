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
#include "CodasipGenFrameLowering.h"
#include "CodasipInstrInfo.h"
#include "CodasipMachineFunction.h"
#include "CodasipTargetMachine.h"

#include "llvm/IR/Function.h"
#include "llvm/CodeGen/MachineFrameInfo.h"
#include "llvm/CodeGen/MachineFunction.h"
#include "llvm/CodeGen/MachineInstrBuilder.h"
#include "llvm/CodeGen/MachineModuleInfo.h"
#include "llvm/ADT/Twine.h"
#include "llvm/CodeGen/RegisterScavenging.h"

using namespace llvm;

CodasipGenFrameLowering::CodasipGenFrameLowering(const CodasipTargetMachine &tm)
: TargetFrameLowering(StackGrowsDown,8,0,8,false), TII(*tm.getInstrInfo()) {}

// Warning: hasCalls is unknown during instruction selection - do not use it here
// note1: hasVarSizedObjects is set before selection so it's safe to use
// note2: FrameAddressTaken is never set in Codasip target so it's not even here
bool CodasipGenFrameLowering::hasFP(const MachineFunction &MF) const
{
  const CodasipFunctionInfo* funcInfo = MF.getInfo<CodasipFunctionInfo>();
  // has special built-ins (frameadr,retadr)?
  if (funcInfo->HasGetAdr) return true;
  // it's early phase (everything needed is in the normal frame info)
  if (STACK_COUNT>1 && GetFrameInfo(MF,1)==nullptr)
  {
    return GetFrameInfo(MF,0)->hasVarSizedObjects();
  }
  // later phase or there is only one stack
  // (probably still in the normal one but it's also distributed out)
  bool hasVarSizedObjects = false;
  MULTISTACK_CALL_BOOL(MF,hasVarSizedObjects);
  return hasVarSizedObjects;
}

bool CodasipGenFrameLowering::hasReservedCallFrame(const MachineFunction &MF) const
{
  // this will merely return !hasFP(MF)
  return TargetFrameLowering::hasReservedCallFrame(MF);
}

// can we skip prologue/epilogue?
static inline bool CanForgoProEpi(const MachineFunction &MF)
{
  // optimlevel?
  const TargetMachine &TM = MF.getTarget();
  if (TM.getOptLevel()==CodeGenOpt::None) return false;
  // calls or local space?
  // note: this will cover contents of hasFP (or should there be a check here?)
  bool hasStackObjects = false; // both loc vars and input params
  MULTISTACK_CALL_BOOL(MF,hasStackObjects);
  bool hasCall = HasCall(MF);
  return !hasCall && !MF.getFunction()->isVarArg() && !hasStackObjects;
}

void CodasipGenFrameLowering::determineCalleeSaves(MachineFunction &MF, BitVector &SavedRegs, RegScavenger *RS) const
{
  // create emergency spill slot
  TargetFrameLowering::determineCalleeSaves(MF, SavedRegs, RS);
  if (MF.getFrameInfo().getNumObjects() > 0)
  {
    const CodasipInstrInfo &CII = static_cast<const CodasipInstrInfo&>(TII);
    const CodasipRegisterInfo &RI = CII.getRegisterInfo();
    const TargetRegisterClass *RC = RI.getRegClass(TII.get(Codasip::e_movi32__).OpInfo[0].RegClass);
    int FI = MF.getFrameInfo().CreateStackObject(RC->getSize(), RC->getAlignment(), false);
    RS->addScavengingFrameIndex(FI);
  }
}

// note: this is absolute value
static inline int64_t GetStackShift(MachineFunction &MF, unsigned space, bool noShift=false)
{
  const CodasipFunctionInfo* finfo = MF.getInfo<CodasipFunctionInfo>();
  const MachineFrameInfo* MFI = GetFrameInfo(MF,space);
  int64_t Offset = MFI->getStackSize();
  assert(Offset>=0);
  // add offset for BP and RAR
  if (space==0 && !noShift) {
    Offset += finfo->StackShift;
  }
  return Offset;
}

// note: all of this expects downward growth of the stack
void CodasipGenFrameLowering::StackAlloc(MachineFunction &MF, MachineBasicBlock &MB, MachineBasicBlock::iterator II, bool dir) const
{
  const CodasipInstrInfo &CII = static_cast<const CodasipInstrInfo&>(TII);
  const CodasipRegisterInfo &RI = CII.getRegisterInfo();
  MachineBasicBlock::iterator BuildI;
  // flags to be used by instructions emitted here
  MachineInstr::MIFlag miflag(dir? MachineInstr::FrameDestroy: MachineInstr::FrameSetup);
  // note: equal space is allocated on each stack no matter where the objects actually are
  for (unsigned space=0; space < STACK_COUNT; ++space)
  {
    DebugLoc dl;
    if (II != MB.end()) {
      dl = II->getDebugLoc();
    }
    const int64_t Offset = GetStackShift(MF,space);
    // allocate space?
    if (Offset==0) continue;
    // emit
    MachineOperand SP_R = MachineOperand::CreateReg(RI.GetSP(space),false);
    MachineOperand SP_W = MachineOperand::CreateReg(RI.GetSP(space),true);
    SmallVector<MachineOperand,3> stackShiftOps;
    stackShiftOps.push_back(SP_W);
    stackShiftOps.push_back(SP_R);
    MachineOperand off = MachineOperand::CreateImm(dir? Offset: -Offset);
    stackShiftOps.push_back(off);
    CII.EmitEssentialInstr(MB,II,dl,ISD::ADD,stackShiftOps);
    BuildI = std::prev(II);
    BuildI->setFlag(miflag);
  }
}

// note: certain basic&invariable cfi was left here
void CodasipGenFrameLowering::emitPrologue(MachineFunction &MF, MachineBasicBlock &MB) const
{
  const CodasipFunctionInfo *finfo = MF.getInfo<CodasipFunctionInfo>();
  const CodasipInstrInfo &CII = static_cast<const CodasipInstrInfo&>(TII);
  const CodasipRegisterInfo &RI = CII.getRegisterInfo();
  MachineBasicBlock::iterator II = MB.begin();
  MachineBasicBlock::iterator BuildI;
  DebugLoc dl;
  bool hasCall = HasCall(MF);
  (void)hasCall;
  unsigned CFIIndex = -1;
  // add initial cfa
  // (cfa is a value of SP upon entering a function and never changes)
  MCCFIInstruction defCfa0 = MCCFIInstruction::createDefCfa(nullptr, RI.getDwarfRegNum(RI.GetSP(0),0), 0);
  CFIIndex = MF.addFrameInst(defCfa0);
  BuildMI(MB,II,dl, TII.get(TargetOpcode::CFI_INSTRUCTION)).addCFIIndex(CFIIndex).setMIFlag(MachineInstr::FrameSetup);
  // insert initial .cfi_def_cfa directive
  MCCFIInstruction valOffset = MCCFIInstruction::createValOffset(nullptr, RI.getDwarfRegNum(RI.GetSP(0),0), 0);
  CFIIndex = MF.addFrameInst(valOffset);
  BuildMI(MB,II,dl, TII.get(TargetOpcode::CFI_INSTRUCTION)).addCFIIndex(CFIIndex).setMIFlag(MachineInstr::FrameSetup);
  // skip completely?
  // note: SP still points at the "top" of the stack!
  if (CanForgoProEpi(MF)) {
    return;
  }
  // allocate space (if anything to allocate)
  StackAlloc(MF,MB,II,false);
  // go through each space and store BPs and such
  // note: all BPs are stored on stack 0
  for (unsigned space=0; space < STACK_COUNT; ++space)
  {
    // prepare operands
    MachineOperand SP_R = MachineOperand::CreateReg(RI.GetSP(space),false);
    MachineOperand BP_R = MachineOperand::CreateReg(RI.GetBP(space),false);
    MachineOperand BP_W = MachineOperand::CreateReg(RI.GetBP(space),true);
    MachineOperand SP0_R = MachineOperand::CreateReg(RI.GetSP(0),false);
    // how was SP of this stack shifted in StackAlloc
    const int64_t Offset = GetStackShift(MF,space);
    // operations for space 0 only
    if (space==0)
    {
      // handle RAR, if exists
      
      if (hasCall)
      {
        // insert store (the Offset was deducted in StackAlloc so now it's being added)
        MachineOperand off = MachineOperand::CreateImm(- 4 + Offset);
        MachineOperand RA = MachineOperand::CreateReg(Codasip::rf_xpr_1, false, false, true);
        MB.addLiveIn(Codasip::rf_xpr_1);
        SmallVector<MachineOperand,3> ops;
        ops.push_back(RA);
        ops.push_back(SP_R);
        ops.push_back(off);
        CII.EmitEssentialInstr(MB,II,dl,ISD::STORE,ops);
        BuildI = std::prev(II);
        BuildI->setFlag(MachineInstr::FrameSetup);
      }
      
    }
    // using BP?
    if (!hasFP(MF)) {
      continue;
    }
    // note: this can be ommitted even if there are calls
    // save BP
    const int BP_off = space * 4 - finfo->StackShift;
    MachineOperand off = MachineOperand::CreateImm(BP_off + Offset);
    SmallVector<MachineOperand,3> ops;
    ops.push_back(BP_R);
    ops.push_back(SP0_R);
    ops.push_back(off);
    CII.EmitEssentialInstr(MB,II,dl,ISD::STORE,ops);
    BuildI = std::prev(II);
    BuildI->setFlag(MachineInstr::FrameSetup);
    // set a new one
    const int64_t Offset2 = GetStackShift(MF,space,true);
    SmallVector<MachineOperand,3> ops2;
    ops2.push_back(BP_W);
    ops2.push_back(SP_R);
    ops2.push_back(MachineOperand::CreateImm(Offset2));
    CII.EmitEssentialInstr(MB,II,dl,ISD::ADD,ops2);
    BuildI = std::prev(II);
    BuildI->setFlag(MachineInstr::FrameSetup);
  }
}

// note: certain basic&invariable cfi was left here
void CodasipGenFrameLowering::emitEpilogue(MachineFunction &MF, MachineBasicBlock &MB) const
{
  const CodasipFunctionInfo *finfo = MF.getInfo<CodasipFunctionInfo>();
  const CodasipInstrInfo &CII = static_cast<const CodasipInstrInfo&>(TII);
  const CodasipRegisterInfo &RI = CII.getRegisterInfo();
  MachineBasicBlock::iterator II = MB.getLastNonDebugInstr();
  assert(II != MB.end() && "Returning block has no terminator");
  DebugLoc dl = II->getDebugLoc();
  unsigned CFIIndex = -1;
  bool hasCall = HasCall(MF);
  (void)hasCall;
  MachineOperand SP0_R = MachineOperand::CreateReg(RI.GetSP(0),false);
  // skip completely?
  if (CanForgoProEpi(MF)) return;
  // restore BPs and such
  for (unsigned space=0; space < STACK_COUNT; ++space)
  {
    // how was SP of this stack shifted in StackAlloc
    const int64_t Offset = GetStackShift(MF,space);
    // prepare ops
    MachineOperand SP_W = MachineOperand::CreateReg(RI.GetSP(space),true);
    MachineOperand BP_R = MachineOperand::CreateReg(RI.GetBP(space),false);
    MachineOperand BP_W = MachineOperand::CreateReg(RI.GetBP(space),true);
    // partially restore SP from BP, if BP
    if (hasFP(MF))
    {
      TII.copyPhysReg(MB,II,dl,RI.GetSP(space),RI.GetBP(space),false);
      std::prev(II)->setFlag(MachineInstr::FrameDestroy);
    }
    // restore BP (and RAR) - see prologue
    
    if (hasCall && space==0)
    {
      int64_t RAR_off = -4;
      if (hasFP(MF)) {
        RAR_off += finfo->StackShift;
      }
      else {
        RAR_off += Offset;
      }
      MachineOperand off = MachineOperand::CreateImm(RAR_off);
      MachineOperand RA = MachineOperand::CreateReg(Codasip::rf_xpr_1, true);
      SmallVector<MachineOperand,3> ops;
      ops.push_back(RA);
      ops.push_back(SP0_R);
      ops.push_back(off);
      CII.EmitEssentialInstr(MB,II,dl,ISD::LOAD,ops);
      std::prev(II)->setFlag(MachineInstr::FrameDestroy);
      CFIIndex = MF.addFrameInst(MCCFIInstruction::createSameValue(nullptr, RI.getDwarfRegNum(RA.getReg(),0))); //transfer original cfa back
      BuildMI(MB,II,dl, TII.get(TargetOpcode::CFI_INSTRUCTION)).addCFIIndex(CFIIndex).setMIFlag(MachineInstr::FrameDestroy);
    }
    
    if (hasFP(MF))
    {
      const int BP_off = space * 4;
      MachineOperand off = MachineOperand::CreateImm(BP_off);
      SmallVector<MachineOperand,3> ops;
      ops.push_back(BP_W);
      ops.push_back(SP0_R);
      ops.push_back(off);
      CII.EmitEssentialInstr(MB,II,dl,ISD::LOAD,ops);
      std::prev(II)->setFlag(MachineInstr::FrameDestroy);
      CFIIndex = MF.addFrameInst(MCCFIInstruction::createSameValue(nullptr, RI.getDwarfRegNum(BP_W.getReg(),0))); //transfer original cfa back
      BuildMI(MB,II,dl, TII.get(TargetOpcode::CFI_INSTRUCTION)).addCFIIndex(CFIIndex).setMIFlag(MachineInstr::FrameDestroy);
    }
  }
  // shift SP0, if BP
  if (hasFP(MF))
  {
    MachineOperand off = MachineOperand::CreateImm(finfo->StackShift);
    SmallVector<MachineOperand,3> ops;
    MachineOperand SP0_W = MachineOperand::CreateReg(RI.GetSP(0),true);
    ops.push_back(SP0_W);
    ops.push_back(SP0_R);
    ops.push_back(off);
    CII.EmitEssentialInstr(MB,II,dl,ISD::ADD,ops);
    std::prev(II)->setFlag(MachineInstr::FrameDestroy);
  }
  // restore old SPs by shifts, if no BP
  else
  {
    StackAlloc(MF,MB,II,true);
  }
  // final cfi
  CFIIndex = MF.addFrameInst(MCCFIInstruction::createDefCfa(nullptr, RI.getDwarfRegNum(RI.GetSP(0),0), 0));
  BuildMI(MB,II,dl, TII.get(TargetOpcode::CFI_INSTRUCTION)).addCFIIndex(CFIIndex).setMIFlag(MachineInstr::FrameDestroy);
}

// note: see eliminateFrameIndex
int CodasipGenFrameLowering::getFrameIndexOffset(const MachineFunction &MF, int FrameIndex) const
{
  const CodasipFunctionInfo *finfo = MF.getInfo<CodasipFunctionInfo>();
  // address space
  unsigned space = finfo->GetAdrSpace(FrameIndex);
  const MachineFrameInfo *MFI = GetFrameInfo(MF,space);
  int StackSize = MFI->getStackSize(); //only valid if no variable sized things!
  // offset
  int Offset = MFI->getObjectOffset(FrameIndex);
  // has calls?
  bool hasCall = HasCall(MF);
  (void)hasCall;
  // is this an outgoing stack parameter?
  const bool callParam = finfo->IsOutFI(FrameIndex);
  // fixed objects (we created them in the lowering for passing and receiving of arguments)
  if (FrameIndex<0)
  {
    // outgoing argument (placed at the end of the caller's space)
    if (callParam) {
      // no action
    }
    // shift incomming arguments, account for leaf opti
    // note: BPs are stored only on stack 0
    else {
      if (!CanForgoProEpi(MF) && space==0) {
        Offset += finfo->StackShift;
      }
      // shift even more, if stores RA on stack
      
      // FP shift?
      if (!hasFP(MF)) {
        Offset += StackSize;
      }
    }
  }
  // normal objects
  else
  {
    // should be negative (if the stack grows down)
    assert(Offset<0);
    // flip?
    if (!hasFP(MF)) {
      Offset = StackSize+Offset;
    }
  }
  return Offset;
}

// like default but added address spaces
// note: this is used only for debug purposes
int CodasipGenFrameLowering::getFrameIndexReference(const MachineFunction &MF, int FI, unsigned &freg) const
{
  const CodasipRegisterInfo *RI = static_cast<const CodasipRegisterInfo*>(MF.getSubtarget().getRegisterInfo());
  const CodasipFunctionInfo *finfo = MF.getInfo<CodasipFunctionInfo>();
  int as = finfo->GetAdrSpace(FI);
  freg = RI->getFrameRegister(MF,as);
  return getFrameIndexOffset(MF,FI);
}

// eliminate call start/end (and other things)
MachineBasicBlock::iterator CodasipGenFrameLowering::eliminateCallFramePseudoInstr
(MachineFunction &MF, MachineBasicBlock &MB, MachineBasicBlock::iterator II) const
{
  assert(II->getOpcode()==Codasip::CALLSTART || II->getOpcode()==Codasip::CALLEND);
  const CodasipInstrInfo &CII = static_cast<const CodasipInstrInfo&>(TII);
  const CodasipRegisterInfo &RI = CII.getRegisterInfo();
  const unsigned space = 0;
  if (!hasReservedCallFrame(MF))
  {
    DebugLoc dl = II->getDebugLoc();
    // is it start or end?
    bool is_start = II->getOpcode()==Codasip::CALLSTART;
    // get stack offset
    assert(II->getOperand(0).isImm());
    int off = II->getOperand(0).getImm();
    assert(off>=0);
    if (off)
    {
      if (is_start) off = -off;
      // adjust SP register
      MachineOperand SP_R = MachineOperand::CreateReg(RI.GetSP(space), false);
      MachineOperand SP_W = MachineOperand::CreateReg(RI.GetSP(space), true);
      MachineOperand shift = MachineOperand::CreateImm(off);
      SmallVector<MachineOperand,3> shiftOps;
      shiftOps.push_back(SP_W);
      shiftOps.push_back(SP_R);
      shiftOps.push_back(shift);
      CII.EmitEssentialInstr(MB,II,dl,ISD::ADD,shiftOps);
    }
  }
  // erase in any case
  return MB.erase(II);
}

void CodasipGenFrameLowering::processFunctionBeforeFrameFinalized(MachineFunction &MF, RegScavenger*) const
{
  CodasipFunctionInfo *finfo = MF.getInfo<CodasipFunctionInfo>();
  finfo->ProcessFunctionBeforeFrameFinalized();
}

