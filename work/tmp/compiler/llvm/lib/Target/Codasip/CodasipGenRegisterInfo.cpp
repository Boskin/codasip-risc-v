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


#define DEBUG_TYPE "codasip-reg-info"

#include "llvm/IR/Function.h"
#include "llvm/ADT/BitVector.h"
#include "llvm/ADT/StringRef.h"
#include "llvm/CodeGen/MachineFunction.h"
#include "llvm/CodeGen/MachineFrameInfo.h"
#include "llvm/CodeGen/MachineRegisterInfo.h"
#include "llvm/CodeGen/MachineInstrBuilder.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Target/TargetFrameLowering.h"
#include "llvm/Target/TargetInstrInfo.h"
#include "llvm/Target/TargetMachine.h"
#include "llvm/Target/TargetOptions.h"
#include "llvm/CodeGen/RegisterScavenging.h"

#include "Codasip.h"
#include "CodasipMachineFunction.h"
#include "CodasipGenRegisterInfo.h"
#include "CodasipInstrInfo.h"
#include "CodasipTargetMachine.h"

#define GET_REGINFO_TARGET_DESC
#include "CodasipGenRegisterInfo.inc"

#include <utility>
#include <cstdio>
#include <iostream>

using namespace llvm;

CodasipGen2RegisterInfo::CodasipGen2RegisterInfo(const TargetInstrInfo &tii)
: CodasipGenRegisterInfo(Codasip::rf_xpr_1), TII(tii) {}

const uint16_t* CodasipGen2RegisterInfo::getCalleeSavedRegs(const MachineFunction *MF) const
{
  assert(MF);
  const CodasipTargetMachine &CTM = static_cast<const CodasipTargetMachine&>(MF->getTarget());
  const TargetFrameLowering *TFL = CTM.getFrameLowering();
  static SmallVector<uint16_t,0> regs;
  regs.clear();
  regs.reserve(3);

  if (!TFL->hasFP(*MF))
  {
    for (unsigned i=0; i<STACK_COUNT; ++i)
    {
      regs.push_back(GetBP(i));
    }
  }
  regs.push_back(0);
  return regs.data();
}

static inline void auxSetSubRegsInMask(const CodasipGen2RegisterInfo* ri, unsigned reg, BitVector& reserved)
{
  for (MCSubRegIterator I(reg,ri,true); I.isValid(); ++I)
  {
    reserved.set(*I);
  }
}

BitVector CodasipGen2RegisterInfo::getReservedRegs(const MachineFunction &MF) const
{
  const CodasipTargetMachine &CTM = static_cast<const CodasipTargetMachine&>(MF.getTarget());
  const TargetFrameLowering *TFL = CTM.getFrameLowering();
  BitVector reserved(getNumRegs());
  // explicitly unused regs
  auxSetSubRegsInMask(this, Codasip::rf_xpr_6, reserved);
  auxSetSubRegsInMask(this, Codasip::rf_xpr_28, reserved);
  // all SPs (and BPs if needed)
  for (unsigned i=0; i<STACK_COUNT; ++i)
  {
    auxSetSubRegsInMask(this,GetSP(i),reserved);
    if (TFL->hasFP(MF)) {
      auxSetSubRegsInMask(this,GetBP(i),reserved);
    }
  }
  // RAR
  
  if (!HasCall(MF)) {
    auxSetSubRegsInMask(this, Codasip::rf_xpr_1 , reserved);
  }
  
  return reserved;
}

unsigned CodasipGen2RegisterInfo::GetRA() const 
{ 
  return Codasip::rf_xpr_1;
  
}

// the first item is FI, the second is imm
CodasipGen2RegisterInfo::FiInfo CodasipGen2RegisterInfo::GetFiOpIndexes(MachineInstr &MI, unsigned FIOperandNum) const
{
  assert(MI.getOperand(FIOperandNum).isFI());
  IndList ret;
  switch (MI.getOpcode())
  {
  case Codasip::i_alu__opc_add__xpr__xpr__xpr__:
  {
   FiInfo hlp;
   hlp.bi = 1;
   hlp.oi = 2;
   hlp.w = 0;
   ret.push_back(hlp);
  }
  break;
  case Codasip::i_alu_i__opc_addi__xpr__xpr__simm12__:
  {
   FiInfo hlp;
   hlp.bi = 1;
   hlp.oi = 2;
   hlp.w = 12;
   ret.push_back(hlp);
  }
  break;
  case Codasip::i_load__opc_lb__xpr__simm12__xpr__:
  {
   FiInfo hlp;
   hlp.bi = 1;
   hlp.oi = 2;
   hlp.w = 12;
   ret.push_back(hlp);
  }
  break;
  case Codasip::i_load__opc_lb__xpr__simm12__xpr__AEXT_CLONE_:
  {
   FiInfo hlp;
   hlp.bi = 1;
   hlp.oi = 2;
   hlp.w = 12;
   ret.push_back(hlp);
  }
  break;
  case Codasip::i_load__opc_lbu__xpr__simm12__xpr__:
  {
   FiInfo hlp;
   hlp.bi = 1;
   hlp.oi = 2;
   hlp.w = 12;
   ret.push_back(hlp);
  }
  break;
  case Codasip::i_load__opc_lh__xpr__simm12__xpr__:
  {
   FiInfo hlp;
   hlp.bi = 1;
   hlp.oi = 2;
   hlp.w = 12;
   ret.push_back(hlp);
  }
  break;
  case Codasip::i_load__opc_lh__xpr__simm12__xpr__AEXT_CLONE_:
  {
   FiInfo hlp;
   hlp.bi = 1;
   hlp.oi = 2;
   hlp.w = 12;
   ret.push_back(hlp);
  }
  break;
  case Codasip::i_load__opc_lhu__xpr__simm12__xpr__:
  {
   FiInfo hlp;
   hlp.bi = 1;
   hlp.oi = 2;
   hlp.w = 12;
   ret.push_back(hlp);
  }
  break;
  case Codasip::i_load__opc_lw__xpr__simm12__xpr__:
  {
   FiInfo hlp;
   hlp.bi = 1;
   hlp.oi = 2;
   hlp.w = 12;
   ret.push_back(hlp);
  }
  break;
  case Codasip::i_store__opc_sb__x_0__simm12__xpr__:
  {
   FiInfo hlp;
   hlp.bi = 0;
   hlp.oi = 1;
   hlp.w = 12;
   ret.push_back(hlp);
  }
  break;
  case Codasip::i_store__opc_sb__x_0__simm12__xpr__legalConstClonei32__:
  {
   FiInfo hlp;
   hlp.bi = 0;
   hlp.oi = 1;
   hlp.w = 12;
   ret.push_back(hlp);
  }
  break;
  case Codasip::i_store__opc_sb__xpr__simm12__xpr__:
  {
   FiInfo hlp;
   hlp.bi = 1;
   hlp.oi = 2;
   hlp.w = 12;
   ret.push_back(hlp);
  }
  break;
  case Codasip::i_store__opc_sh__x_0__simm12__xpr__:
  {
   FiInfo hlp;
   hlp.bi = 0;
   hlp.oi = 1;
   hlp.w = 12;
   ret.push_back(hlp);
  }
  break;
  case Codasip::i_store__opc_sh__x_0__simm12__xpr__legalConstClonei32__:
  {
   FiInfo hlp;
   hlp.bi = 0;
   hlp.oi = 1;
   hlp.w = 12;
   ret.push_back(hlp);
  }
  break;
  case Codasip::i_store__opc_sh__xpr__simm12__xpr__:
  {
   FiInfo hlp;
   hlp.bi = 1;
   hlp.oi = 2;
   hlp.w = 12;
   ret.push_back(hlp);
  }
  break;
  case Codasip::i_store__opc_sw__x_0__simm12__xpr__:
  {
   FiInfo hlp;
   hlp.bi = 0;
   hlp.oi = 1;
   hlp.w = 12;
   ret.push_back(hlp);
  }
  break;
  case Codasip::i_store__opc_sw__xpr__simm12__xpr__:
  {
   FiInfo hlp;
   hlp.bi = 1;
   hlp.oi = 2;
   hlp.w = 12;
   ret.push_back(hlp);
  }
  break;
  case Codasip::i_store__opc_sw__xpr__simm12__xpr__0_SUM2REGS_EMUL_:
  {
   FiInfo hlp;
   hlp.bi = 1;
   hlp.oi = 2;
   hlp.w = 0;
   ret.push_back(hlp);
  }
  break;
  case Codasip::i_store__opc_sw__xpr__simm12__xpr__1_BIGIMM_EMUL_:
  {
   FiInfo hlp;
   hlp.bi = 1;
   hlp.oi = 2;
   hlp.w = 32;
   ret.push_back(hlp);
  }
  break;
  case Codasip::i_load__opc_lw__xpr__simm12__xpr__2_SUM2REGS_EMUL_:
  {
   FiInfo hlp;
   hlp.bi = 1;
   hlp.oi = 2;
   hlp.w = 0;
   ret.push_back(hlp);
  }
  break;
  case Codasip::i_load__opc_lw__xpr__simm12__xpr__3_BIGIMM_EMUL_:
  {
   FiInfo hlp;
   hlp.bi = 1;
   hlp.oi = 2;
   hlp.w = 32;
   ret.push_back(hlp);
  }
  break;
  case Codasip::i_store__opc_sw__xpr__simm12__xpr__4_BIGIMM_EMUL_:
  {
   FiInfo hlp;
   hlp.bi = 1;
   hlp.oi = 2;
   hlp.w = 32;
   ret.push_back(hlp);
  }
  break;
  case Codasip::i_load__opc_lw__xpr__simm12__xpr__5_BIGIMM_EMUL_:
  {
   FiInfo hlp;
   hlp.bi = 1;
   hlp.oi = 2;
   hlp.w = 32;
   ret.push_back(hlp);
  }
  break;
  case Codasip::i_alu_i__opc_addi__xpr__xpr__simm12__6_BIGIMM_EMUL_:
  {
   FiInfo hlp;
   hlp.bi = 1;
   hlp.oi = 2;
   hlp.w = 32;
   ret.push_back(hlp);
  }
  break;
  case Codasip::i_alu_i__opc_addi__xpr__xpr__simm12__7_BIGIMM_EMUL_:
  {
   FiInfo hlp;
   hlp.bi = 1;
   hlp.oi = 2;
   hlp.w = 32;
   ret.push_back(hlp);
  }
  break;
  case Codasip::i_alu_i__opc_addi__xpr__xpr__simm12__8_BIGIMM_EMUL_:
  {
   FiInfo hlp;
   hlp.bi = 1;
   hlp.oi = 2;
   hlp.w = 32;
   ret.push_back(hlp);
  }
  break;
  
  default:
    for (unsigned i=0; i<MI.getNumOperands(); ++i)
    {
      if (MI.getOperand(i).isFI()) {
        FiInfo hlp;
        hlp.bi=hlp.oi = i;
        hlp.w = -1;
        ret.push_back(hlp);
      }
    }
  }
  // return the one which is actually requested
  for (IndList::iterator it=ret.begin(); it!=ret.end(); ++it)
  {
      if (it->bi==(int)FIOperandNum)
      {
          return *it;
      }
  }
  errs() << "eliminateFrameIndex: the FI operand is not where it is supposed to be - this can occur only due to faulty custom MI emitting!";
  abort();
  //return FiInfo();
}

// various registers for various spaces
unsigned CodasipGen2RegisterInfo::GetSP(unsigned space) const
{
  switch (space)
  {
    case 0:
return Codasip::rf_xpr_2;

    default:
      errs() << "Non-existant or unsupported address space.";
      abort();
  }
}
unsigned CodasipGen2RegisterInfo::GetBP(unsigned space) const
{
  switch (space)
  {
    case 0:
return Codasip::rf_xpr_8;

    default:
      errs() << "Non-existant or unsupported address space or BP is unsuported.";
      abort();
  }
}

// Gets an AR alternative for an instruction using SP/BP
// Returns -1 if there's nothing
int GetARAlternative(int instrId)
{
  switch (instrId)
  {
    
    default:
      return -1;
  }
}

// Check usage of AR in the given operand - returns true if all is OK
bool CodasipGen2RegisterInfo::CheckAR(const MCInstrDesc &desc, unsigned ind, unsigned AR) const
{
  assert(desc.OpInfo);
  MCOperandInfo opinfo = desc.OpInfo[ind];
  const int rci = opinfo.RegClass;
  const TargetRegisterClass *RC = getRegClass(rci);
  assert(RC);
  return RC->contains(AR);
}

// checks AR and replaces if needed - error if not possible
bool CodasipGen2RegisterInfo::HandleAR(MachineInstr &MI, unsigned ind, unsigned AR) const
{
  // not inline asm
  if (MI.getOpcode()==Codasip::INLINEASM) {
    return true;
  }
  // can be AR used in the operand?
  const MCInstrDesc &desc = MI.getDesc();
  if (CheckAR(desc,ind,AR)) {
    return true;
  }
  // change the instruction
  int alt = GetARAlternative(MI.getOpcode());
  if (alt < 0) {
    errs() << "There is no alternative for instruction " << TII.getName(MI.getOpcode()) << " which would use an auxiliary register instead of SP/BP. "
           << "This will cause failure.\n";
    return false;
  }
  const MCInstrDesc &altd = TII.get(alt);
  MI.setDesc(altd);
  return true;
}

void CodasipGen2RegisterInfo::
eliminateFrameIndex(MachineBasicBlock::iterator II, int SPAdj, unsigned FIOperandNum, RegScavenger *RS) const
{
  MachineInstr &MI = *II;
  MachineBasicBlock &MB = *MI.getParent();
  MachineFunction &MF = *MB.getParent();
  const Function *fn = MF.getFunction();
  std::string fnn = fn->getName();
  const CodasipTargetMachine &CTM = static_cast<const CodasipTargetMachine&>(MF.getTarget());
  const TargetFrameLowering *TL = CTM.getFrameLowering();
  const CodasipInstrInfo &CII = static_cast<const CodasipInstrInfo&>(TII);
  CodasipFunctionInfo *finfo = MF.getInfo<CodasipFunctionInfo>();
  DebugLoc dl = MI.getDebugLoc();
  unsigned m;
  // is it an instruction at all? note: remove this
  const unsigned opcode = MI.getOpcode();
  if (opcode<Codasip::CALLSTART && opcode!=Codasip::INLINEASM) {
    MB.erase(II);
    return;
  }
  const MCInstrDesc &desc = MI.getDesc();
  // get indexes
  FiInfo inds = GetFiOpIndexes(MI,FIOperandNum);
  // get information
  assert(SPAdj==0);
  int FrameIndex = MI.getOperand(inds.bi).getIndex();
  bool overflow = false;
  // address space and registers
  // not all FIs are there - if they aren't, they are from space 0
  const unsigned space = finfo->GetAdrSpace(FrameIndex);
  const unsigned SP = GetSP(space);
  unsigned AR = 0;
  // - FP can be either BP (if exists) or SP
  unsigned FP = 0;//getFrameRegister(MF,space);
  int Offset = TL->getFrameIndexReference(MF,FrameIndex,FP);
  // is this an outgoing stack parameter?
  const bool callParam = finfo->IsOutFI(FrameIndex);
  // is there a two-address constraint?
  // note: this doesn't work with overflow/indirect
  const int tied = desc.getOperandConstraint(inds.bi,MCOI::TIED_TO);
  if (tied >= 0)
  {
    assert(!callParam && "tied instructions not supported for call parameters!");
    // get the result register
    const MachineOperand &dst = MI.getOperand(tied);
    assert(dst.isReg() && dst.isDef());
    // copy the frame reg first, unless indirect or overflow
    // note: add detection of overflow as well
    if (!MI.getOperand(inds.oi).isReg()) {
      TII.copyPhysReg(MB,II,dl, dst.getReg(), FP, false);
    }
    // then mutate the instruction
    MI.getOperand(inds.bi).ChangeToRegister(dst.getReg(),false,false,true);
  }
  else
  {
    // register
    unsigned reg = FP;
    // this may be an outgoing parameter
    if (callParam) {
      reg = SP;
    }
    // just mutate the instruction
    MI.getOperand(inds.bi).ChangeToRegister(reg,false);
  }
  // indirect addressing of local space
  // note: this can happen for outgoing (call) parameters
  if (MI.getOperand(inds.oi).isReg())
  {
    assert(tied<0 && "not allowed here - should have been prevented in isel");
    const unsigned baseReg = (callParam? SP: FP);
    // optimisation for zero offset
    if (Offset==0) {
      assert(MI.getOperand(inds.bi).getReg()==baseReg);
      return;
    }
    // non-zero offset
    
    if (RS == nullptr) {
      errs() << "Failed to perform indirect addressing of an object in function '"<<fnn<<"'.\n";
      exit(1);
    }
    const TargetRegisterClass *ScavRegClass = this->getRegClass(TII.get(Codasip::e_movi32__).OpInfo[0].RegClass);
    AR = RS->FindUnusedReg(ScavRegClass);
    if (!AR) {
       AR = RS->scavengeRegister(ScavRegClass, II, SPAdj);
    }
    assert(AR && "Register scavenger failed");
    // various ARs must be interchangeable
    const unsigned MIFlags = 0;
    BuildMI(MB,II,dl, TII.get(Codasip::e_movi32__), AR).addImm(Offset).setMIFlags(MIFlags);

    SmallVector<MachineOperand,3> ops;
    ops.push_back(MachineOperand::CreateReg(AR,true));
    ops.push_back(MachineOperand::CreateReg(AR,false));
    ops.push_back(MachineOperand::CreateReg(baseReg,false,false,true));
    CII.EmitEssentialInstr(MB,II,dl,ISD::ADD,ops);
    MI.getOperand(inds.bi).setReg(AR);
    MI.getOperand(inds.bi).setIsKill(true);
    bool check = HandleAR(MI,inds.bi,AR);
    if (!check) {
      errs() << "Failed to perform indirect addressing of an object in function '"<<fnn<<"'.\n";
      exit(1);
    }
    return;
    
    goto error;
  }
  // it should be imm otherwise
  else {
    assert(MI.getOperand(inds.oi).isImm() && "Bad usage of a frame index!");
  }
  // add the value that is already there (usually 0)
  Offset += MI.getOperand(inds.oi).getImm();
  // Special handling of DBG_VALUE instructions.
  if (MI.isDebugValue()) {
    return;
    // something more?
  }
  // check limit (sum of the frame index and the offset)
  m = -1;  m <<= inds.w-1;
  overflow = (Offset&m)!=m && (Offset&m)!=0;
  // overflow?
  if (overflow)
  {
    
    const unsigned baseReg = (callParam? SP: FP);
    // just like above
    if (RS == nullptr) {
      errs() << "Failed to perform indirect addressing of an object in function '"<<fnn<<"'.\n";
      exit(1);
    }
    const TargetRegisterClass *ScavRegClass = this->getRegClass(TII.get(Codasip::e_movi32__).OpInfo[0].RegClass);
    AR = RS->FindUnusedReg(ScavRegClass);
    if (!AR) {
      AR = RS->scavengeRegister(ScavRegClass, II, SPAdj);
    }
    assert(AR && "Register scavenger failed");
    const unsigned MIFlags = 0;
    BuildMI(MB,II,dl, TII.get(Codasip::e_movi32__), AR).addImm(Offset).setMIFlags(MIFlags);

    SmallVector<MachineOperand,3> ops;
    ops.push_back(MachineOperand::CreateReg(AR,true));
    ops.push_back(MachineOperand::CreateReg(AR,false));
    ops.push_back(MachineOperand::CreateReg(baseReg,false,false,true));
    CII.EmitEssentialInstr(MB,II,dl,ISD::ADD,ops);
    MI.getOperand(inds.bi).setReg(AR);
    if (tied < 0) {
      MI.getOperand(inds.bi).setIsKill(true);
    }
    if (tied>=0) {
      const MachineOperand &dst = MI.getOperand(tied);
      TII.copyPhysReg(MB,II,dl, dst.getReg(), AR, true);
    }
    Offset = 0;
    bool check = HandleAR(MI,inds.bi,AR);
    if (!check) {
      errs() << "Failed to address an object in function '"<<fnn<<"'.\n";
      exit(1);
    }
  }
  // set the offset operand
  MI.getOperand(inds.oi).setImm(Offset);
  return;
  // handle error
  error:
  errs() << "Failed to address the local space of '"<<fnn<<"'.\n";
  exit(1);
}

// (base pointer)
unsigned CodasipGen2RegisterInfo::getFrameRegister(const MachineFunction &MF) const
{
  return getFrameRegister(MF,0);
}

unsigned CodasipGen2RegisterInfo::getFrameRegister(const MachineFunction &MF, int space) const
{
  const CodasipTargetMachine &CTM = static_cast<const CodasipTargetMachine&>(MF.getTarget());
  const TargetFrameLowering *TFI = CTM.getFrameLowering();
  if (TFI->hasFP(MF)) {
    return GetBP(space);
  }
  else {
    return GetSP(space);
  }
}

const TargetRegisterClass* CodasipGen2RegisterInfo::getLargestLegalSuperClass(const TargetRegisterClass* RC, const MachineFunction&) const
{
  for(unsigned i=0; i < this->getNumRegClasses(); i++)
  {
    const TargetRegisterClass *CandSuperRC = this->getRegClass(i);
    if (CandSuperRC->isAllocatable() && CandSuperRC->getSize()==RC->getSize() && RC->hasSuperClass(CandSuperRC) && !RC->hasSubClassEq(CandSuperRC))
    {
      return CandSuperRC;
    }
  }
  return RC;
}

// we detect only one pointer class
const TargetRegisterClass* CodasipGen2RegisterInfo::getPointerRegClass(const llvm::MachineFunction &MF, unsigned Kind) const
{
  return &Codasip::xprRegClass;
}

void CodasipGen2RegisterInfo::getRegAllocationHints(unsigned VirtReg, ArrayRef<MCPhysReg> Order, SmallVectorImpl<MCPhysReg>& Hints, const MachineFunction& MF, const VirtRegMap* VRM, const LiveRegMatrix* Matrix) const
{
  // get llvm's hints
  CodasipGenRegisterInfo::getRegAllocationHints(VirtReg,Order,Hints,MF,VRM,Matrix);
}
