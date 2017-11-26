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
#include "CodasipGenInstrInfo.h"
#include "CodasipTargetMachine.h"
#include "CodasipSubtarget.h"
#include "CodasipMachineFunction.h"

#include "llvm/ADT/STLExtras.h"
#include "llvm/ADT/SmallVector.h"
#include "llvm/CodeGen/MachineInstrBuilder.h"
#include "llvm/CodeGen/ScheduleDAG.h"
#include "llvm/CodeGen/ScoreboardHazardRecognizer.h"
#include "llvm/CodeGen/DFAPacketizer.h"
#include "llvm/CodeGen/MachineFrameInfo.h"
#include "llvm/CodeGen/MachineMemOperand.h"
#include "llvm/CodeGen/PseudoSourceValue.h"
#include "llvm/CodeGen/MachineRegisterInfo.h"
#include "llvm/CodeGen/MachineBasicBlock.h"
#include "llvm/CodeGen/ValueTypes.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/CodeGen/RegisterScavenging.h"

#define TargetInstrInfo CodasipBaseInstrInfo
#define GET_INSTRINFO_CTOR_DTOR
#define GET_INSTRMAP_INFO
#include "CodasipGenInstrInfo.inc"
#undef TargetInstrInfo
#include "CodasipGenRegisterInfo.inc"

#include <cstdio>
#include <iostream>
#include <vector>

namespace llvm {

CodasipGenInstrInfo2::CodasipGenInstrInfo2(CodasipTargetMachine &TM)
: CodasipGenInstrInfo(Codasip::CALLSTART,Codasip::CALLEND), RI(*this)
{
  UncondBrOpc = Codasip::i_jalr__opc_jalr__x_0__rel_jalr_addr12__x_0__;
}

// R2R moves
void CodasipGenInstrInfo2::
copyPhysReg(MachineBasicBlock &MB, MachineBasicBlock::iterator II, const DebugLoc& DL,
            unsigned DestReg, unsigned SrcReg, bool KillSrc) const
{
  // should be physical
  assert(RI.isPhysicalRegister(DestReg));
  assert(RI.isPhysicalRegister(SrcReg));
  // check all supported combinations
  // this will cover logical classes with included register sets as well
  if ((Codasip::xprRegClass.contains(SrcReg)) && (Codasip::xprRegClass.contains(DestReg)))
  {
    BuildMI(MB,II,DL, get(Codasip::i_alu__opc_add__xpr__x_0__xpr__), DestReg).addReg(SrcReg,getKillRegState(KillSrc));
  }
  else 
  {
    errs() << "Copy from register " << SrcReg << " to register " << DestReg << " is unsupported. ";
    errs() << "Add handling manually to CodasipInstrInfo.cpp or avoid usage. ";
    errs() << "Implementing CodasipTargetLowering::getRegClassFor and getRepRegClassFor should be also taken into consideration.\n";
    assert(false && "It's impossible to perform this copy.");
  }
}

// R2S stores
// Note: Reg may be virtual
void CodasipGenInstrInfo2::
storeRegToStackSlot(MachineBasicBlock &MB, MachineBasicBlock::iterator II, unsigned Reg, bool isKill, int FrameIndex,
                    const TargetRegisterClass *RC, const TargetRegisterInfo *TRI) const
{
  DebugLoc dl;
  const TargetInstrInfo &TII = *this;
  MachineFunction &MF = *MB.getParent();
  MachineFrameInfo &MFI = MF.getFrameInfo();
  CodasipFunctionInfo *finfo = MF.getInfo<CodasipFunctionInfo>();
  unsigned Align = MFI.getObjectAlignment(FrameIndex);
  MachineMemOperand *MMO = MF.getMachineMemOperand(
                      MachinePointerInfo::getFixedStack(MF,FrameIndex),
                      MachineMemOperand::MOStore, MFI.getObjectSize(FrameIndex), Align);
  if (II != MB.end()) dl = II->getDebugLoc();
  // determine and store address space
  const unsigned space = GetSpace4Rc(RC);
  finfo->SetAdrSpace(FrameIndex,space);
  // get FP
  unsigned FP = RI.getFrameRegister(MF,space);
  // check all supported registers
  // this will cover logical classes with included register sets as well
  if ((Codasip::xprRegClass.contains(Reg) || RC->getID()==Codasip::xprRegClass.getID() || RC->getID()==Codasip::xprRegClass.getID()) && Codasip::xprRegClass.contains(FP))
  {
    BuildMI(MB,II,dl, TII.get(Codasip::i_store__opc_sw__xpr__simm12__xpr__)).addOperand(MachineOperand::CreateReg(Reg,false,false,isKill)).addOperand(MachineOperand::CreateFI(FrameIndex)).addOperand(MachineOperand::CreateImm(0)).addMemOperand(MMO);
  }
  else 
  {
    errs() << "Spill of a register class " << RI.getRegClassName(RC) << " is unsupported. ";
    errs() << "Add handling manually to CodasipInstrInfo.cpp or avoid usage.\n"; 
    assert(false && "It's impossible to store this register.");
  }
}

// S2R loads
// Note: Reg may be virtual
void CodasipGenInstrInfo2::
loadRegFromStackSlot(MachineBasicBlock &MB, MachineBasicBlock::iterator II, unsigned Reg, int FrameIndex,
                     const TargetRegisterClass *RC, const TargetRegisterInfo *TRI) const
{
  DebugLoc dl;
  const TargetInstrInfo &TII = *this;
  MachineFunction &MF = *MB.getParent();
  MachineFrameInfo &MFI = MF.getFrameInfo();
  CodasipFunctionInfo *finfo = MF.getInfo<CodasipFunctionInfo>();
  unsigned Align = MFI.getObjectAlignment(FrameIndex);
  MachineMemOperand *MMO = MF.getMachineMemOperand(
                      MachinePointerInfo::getFixedStack(MF,FrameIndex),
                      MachineMemOperand::MOLoad, MFI.getObjectSize(FrameIndex), Align);
  if (II != MB.end()) dl = II->getDebugLoc();
  // determine and store address space
  // - kind of duplicit but this can be called before a store
  const unsigned space = GetSpace4Rc(RC);
  finfo->SetAdrSpace(FrameIndex,space);
  // get FP
  unsigned FP = RI.getFrameRegister(MF,space);
  // check all supported registers
  // this will cover logical classes with included register sets as well
  if ((Codasip::xprRegClass.contains(Reg) || RC->getID()==Codasip::xprRegClass.getID() || RC->getID()==Codasip::xprRegClass.getID()) && Codasip::xprRegClass.contains(FP))
  {
    BuildMI(MB,II,dl, TII.get(Codasip::i_load__opc_lw__xpr__simm12__xpr__)).addOperand(MachineOperand::CreateReg(Reg,true)).addOperand(MachineOperand::CreateFI(FrameIndex)).addOperand(MachineOperand::CreateImm(0)).addMemOperand(MMO);
  }
  else 
  {
    errs() << "Restore of a register class " << RI.getRegClassName(RC) << " is unsupported. ";
    errs() << "Add handling manually to CodasipInstrInfo.cpp or avoid usage.\n"; 
    assert(false && "It's impossible to load to this register.");
  }
}

// class for dummy nodes for printing
class SDNode4Print: public SDNode
{
public:
  SDNode4Print(unsigned Opc): SDNode(Opc,0,DebugLoc(),SDVTList()) {}
};

// Note: this is always post-RA
void CodasipGenInstrInfo2::EmitEssentialInstr
(MachineBasicBlock &MB, MachineBasicBlock::iterator II, DebugLoc dl, ISD::NodeType Opc, SmallVectorImpl<MachineOperand> &Ops) const
{
  const CodasipGenInstrInfo2 &TII = *this;
  // prepare operation name
  SDNode4Print dummy(Opc);
  std::string name = dummy.getOperationName();
  // try to emit
  switch (Opc)
  {
    case ISD::STORE:
      if (Ops.size()==3 && Ops[0].isReg() && Codasip::xprRegClass.contains(Ops[0].getReg()) && Ops[1].isReg() && Codasip::xprRegClass.contains(Ops[1].getReg()) && Ops[2].isImm() && CheckImmImpl(Ops[2].getImm(),12,1,0)) {
        BuildMI(MB,II,dl, TII.get(Codasip::i_store__opc_sw__xpr__simm12__xpr__)).addOperand(Ops[0]).addOperand(Ops[1]).addOperand(Ops[2]);
        return;
      }
      if (Ops.size()==3 && Ops[0].isReg() && Codasip::xprRegClass.contains(Ops[0].getReg()) && Ops[1].isReg() && Codasip::xprRegClass.contains(Ops[1].getReg()) && Ops[2].isImm() && CheckImmImpl(Ops[2].getImm(),12,1,0)) {
        BuildMI(MB,II,dl, TII.get(Codasip::i_store__opc_sw__xpr__simm12__xpr__)).addOperand(Ops[0]).addOperand(Ops[1]).addOperand(Ops[2]);
        return;
      }
      if (Ops.size()==3 && Ops[0].isReg() && Codasip::xprRegClass.contains(Ops[0].getReg()) && Ops[1].isReg() && Codasip::xprRegClass.contains(Ops[1].getReg()) && Ops[2].isImm()) {
        BuildMI(MB,II,dl, TII.get(Codasip::i_store__opc_sw__xpr__simm12__xpr__1_BIGIMM_EMUL_)).addOperand(Ops[0]).addOperand(Ops[1]).addOperand(Ops[2]);
        return;
      }
      if (Ops.size()==3 && Ops[0].isReg() && Codasip::xprRegClass.contains(Ops[0].getReg()) && Ops[1].isReg() && Codasip::xprRegClass.contains(Ops[1].getReg()) && Ops[2].isImm()) {
        BuildMI(MB,II,dl, TII.get(Codasip::i_store__opc_sw__xpr__simm12__xpr__4_BIGIMM_EMUL_)).addOperand(Ops[0]).addOperand(Ops[1]).addOperand(Ops[2]);
        return;
      }
      break;
    case ISD::LOAD:
      if (Ops.size()==3 && Ops[0].isReg() && Codasip::xprRegClass.contains(Ops[0].getReg()) && Ops[1].isReg() && Codasip::xprRegClass.contains(Ops[1].getReg()) && Ops[2].isImm() && CheckImmImpl(Ops[2].getImm(),12,1,0)) {
        BuildMI(MB,II,dl, TII.get(Codasip::i_load__opc_lw__xpr__simm12__xpr__)).addOperand(Ops[0]).addOperand(Ops[1]).addOperand(Ops[2]);
        return;
      }
      if (Ops.size()==3 && Ops[0].isReg() && Codasip::xprRegClass.contains(Ops[0].getReg()) && Ops[1].isReg() && Codasip::xprRegClass.contains(Ops[1].getReg()) && Ops[2].isImm() && CheckImmImpl(Ops[2].getImm(),12,1,0)) {
        BuildMI(MB,II,dl, TII.get(Codasip::i_load__opc_lw__xpr__simm12__xpr__)).addOperand(Ops[0]).addOperand(Ops[1]).addOperand(Ops[2]);
        return;
      }
      if (Ops.size()==3 && Ops[0].isReg() && Codasip::xprRegClass.contains(Ops[0].getReg()) && Ops[1].isReg() && Codasip::xprRegClass.contains(Ops[1].getReg()) && Ops[2].isImm()) {
        BuildMI(MB,II,dl, TII.get(Codasip::i_load__opc_lw__xpr__simm12__xpr__3_BIGIMM_EMUL_)).addOperand(Ops[0]).addOperand(Ops[1]).addOperand(Ops[2]);
        return;
      }
      if (Ops.size()==3 && Ops[0].isReg() && Codasip::xprRegClass.contains(Ops[0].getReg()) && Ops[1].isReg() && Codasip::xprRegClass.contains(Ops[1].getReg()) && Ops[2].isImm()) {
        BuildMI(MB,II,dl, TII.get(Codasip::i_load__opc_lw__xpr__simm12__xpr__5_BIGIMM_EMUL_)).addOperand(Ops[0]).addOperand(Ops[1]).addOperand(Ops[2]);
        return;
      }
      break;
    case ISD::ADD:
      if (Ops.size()==3 && Ops[0].isReg() && Codasip::xprRegClass.contains(Ops[0].getReg()) && Ops[1].isReg() && Codasip::xprRegClass.contains(Ops[1].getReg()) && Ops[2].isImm() && CheckImmImpl(Ops[2].getImm(),12,1,0)) {
        BuildMI(MB,II,dl, TII.get(Codasip::i_alu_i__opc_addi__xpr__xpr__simm12__)).addOperand(Ops[0]).addOperand(Ops[1]).addOperand(Ops[2]);
        return;
      }
      if (Ops.size()==3 && Ops[0].isReg() && Codasip::xprRegClass.contains(Ops[0].getReg()) && Ops[1].isReg() && Codasip::xprRegClass.contains(Ops[1].getReg()) && Ops[2].isImm() && CheckImmImpl(Ops[2].getImm(),12,1,0)) {
        BuildMI(MB,II,dl, TII.get(Codasip::i_alu_i__opc_addi__xpr__xpr__simm12__)).addOperand(Ops[0]).addOperand(Ops[1]).addOperand(Ops[2]);
        return;
      }
      if (Ops.size()==3 && Ops[0].isReg() && Codasip::xprRegClass.contains(Ops[0].getReg()) && Ops[1].isReg() && Codasip::xprRegClass.contains(Ops[1].getReg()) && Ops[2].isImm() && CheckImmImpl(Ops[2].getImm(),12,1,0)) {
        BuildMI(MB,II,dl, TII.get(Codasip::i_alu_i__opc_addi__xpr__xpr__simm12__)).addOperand(Ops[0]).addOperand(Ops[1]).addOperand(Ops[2]);
        return;
      }
      if (Ops.size()==3 && Ops[0].isReg() && Codasip::xprRegClass.contains(Ops[0].getReg()) && Ops[1].isReg() && Codasip::xprRegClass.contains(Ops[1].getReg()) && Ops[2].isReg() && Codasip::xprRegClass.contains(Ops[2].getReg())) {
        BuildMI(MB,II,dl, TII.get(Codasip::i_alu__opc_add__xpr__xpr__xpr__)).addOperand(Ops[0]).addOperand(Ops[1]).addOperand(Ops[2]);
        return;
      }
      if (Ops.size()==3 && Ops[0].isReg() && Codasip::xprRegClass.contains(Ops[0].getReg()) && Ops[2].isReg() && Codasip::xprRegClass.contains(Ops[2].getReg()) && Ops[1].isReg() && Codasip::xprRegClass.contains(Ops[1].getReg())) {
        BuildMI(MB,II,dl, TII.get(Codasip::i_alu__opc_add__xpr__xpr__xpr__)).addOperand(Ops[0]).addOperand(Ops[2]).addOperand(Ops[1]);
        return;
      }
      if (Ops.size()==3 && Ops[0].isReg() && Codasip::xprRegClass.contains(Ops[0].getReg()) && Ops[1].isReg() && Codasip::xprRegClass.contains(Ops[1].getReg()) && Ops[2].isReg() && Codasip::xprRegClass.contains(Ops[2].getReg())) {
        BuildMI(MB,II,dl, TII.get(Codasip::i_alu__opc_add__xpr__xpr__xpr__)).addOperand(Ops[0]).addOperand(Ops[1]).addOperand(Ops[2]);
        return;
      }
      if (Ops.size()==3 && Ops[0].isReg() && Codasip::xprRegClass.contains(Ops[0].getReg()) && Ops[2].isReg() && Codasip::xprRegClass.contains(Ops[2].getReg()) && Ops[1].isReg() && Codasip::xprRegClass.contains(Ops[1].getReg())) {
        BuildMI(MB,II,dl, TII.get(Codasip::i_alu__opc_add__xpr__xpr__xpr__)).addOperand(Ops[0]).addOperand(Ops[2]).addOperand(Ops[1]);
        return;
      }
      if (Ops.size()==3 && Ops[0].isReg() && Codasip::xprRegClass.contains(Ops[0].getReg()) && Ops[1].isReg() && Codasip::xprRegClass.contains(Ops[1].getReg()) && Ops[2].isReg() && Codasip::xprRegClass.contains(Ops[2].getReg())) {
        BuildMI(MB,II,dl, TII.get(Codasip::i_alu__opc_add__xpr__xpr__xpr__)).addOperand(Ops[0]).addOperand(Ops[1]).addOperand(Ops[2]);
        return;
      }
      if (Ops.size()==3 && Ops[0].isReg() && Codasip::xprRegClass.contains(Ops[0].getReg()) && Ops[2].isReg() && Codasip::xprRegClass.contains(Ops[2].getReg()) && Ops[1].isReg() && Codasip::xprRegClass.contains(Ops[1].getReg())) {
        BuildMI(MB,II,dl, TII.get(Codasip::i_alu__opc_add__xpr__xpr__xpr__)).addOperand(Ops[0]).addOperand(Ops[2]).addOperand(Ops[1]);
        return;
      }
      if (Ops.size()==3 && Ops[0].isReg() && Codasip::xprRegClass.contains(Ops[0].getReg()) && Ops[1].isReg() && Codasip::xprRegClass.contains(Ops[1].getReg()) && Ops[2].isReg() && Codasip::xprRegClass.contains(Ops[2].getReg())) {
        BuildMI(MB,II,dl, TII.get(Codasip::i_alu__opc_add__xpr__xpr__xpr__)).addOperand(Ops[0]).addOperand(Ops[1]).addOperand(Ops[2]);
        return;
      }
      if (Ops.size()==3 && Ops[0].isReg() && Codasip::xprRegClass.contains(Ops[0].getReg()) && Ops[2].isReg() && Codasip::xprRegClass.contains(Ops[2].getReg()) && Ops[1].isReg() && Codasip::xprRegClass.contains(Ops[1].getReg())) {
        BuildMI(MB,II,dl, TII.get(Codasip::i_alu__opc_add__xpr__xpr__xpr__)).addOperand(Ops[0]).addOperand(Ops[2]).addOperand(Ops[1]);
        return;
      }
      if (Ops.size()==3 && Ops[0].isReg() && Codasip::xprRegClass.contains(Ops[0].getReg()) && Ops[1].isReg() && Codasip::xprRegClass.contains(Ops[1].getReg()) && Ops[2].isImm()) {
        BuildMI(MB,II,dl, TII.get(Codasip::i_alu_i__opc_addi__xpr__xpr__simm12__6_BIGIMM_EMUL_)).addOperand(Ops[0]).addOperand(Ops[1]).addOperand(Ops[2]);
        return;
      }
      if (Ops.size()==3 && Ops[0].isReg() && Codasip::xprRegClass.contains(Ops[0].getReg()) && Ops[1].isReg() && Codasip::xprRegClass.contains(Ops[1].getReg()) && Ops[2].isImm()) {
        BuildMI(MB,II,dl, TII.get(Codasip::i_alu_i__opc_addi__xpr__xpr__simm12__7_BIGIMM_EMUL_)).addOperand(Ops[0]).addOperand(Ops[1]).addOperand(Ops[2]);
        return;
      }
      if (Ops.size()==3 && Ops[0].isReg() && Codasip::xprRegClass.contains(Ops[0].getReg()) && Ops[1].isReg() && Codasip::xprRegClass.contains(Ops[1].getReg()) && Ops[2].isImm()) {
        BuildMI(MB,II,dl, TII.get(Codasip::i_alu_i__opc_addi__xpr__xpr__simm12__8_BIGIMM_EMUL_)).addOperand(Ops[0]).addOperand(Ops[1]).addOperand(Ops[2]);
        return;
      }
      break;
    case ISD::SUB:
      if (Ops.size()==3 && Ops[0].isReg() && Codasip::xprRegClass.contains(Ops[0].getReg()) && Ops[1].isReg() && Codasip::xprRegClass.contains(Ops[1].getReg()) && Ops[2].isReg() && Codasip::xprRegClass.contains(Ops[2].getReg())) {
        BuildMI(MB,II,dl, TII.get(Codasip::i_alu__opc_sub__xpr__xpr__xpr__)).addOperand(Ops[0]).addOperand(Ops[1]).addOperand(Ops[2]);
        return;
      }
      if (Ops.size()==3 && Ops[0].isReg() && Codasip::xprRegClass.contains(Ops[0].getReg()) && Ops[1].isReg() && Codasip::xprRegClass.contains(Ops[1].getReg()) && Ops[2].isReg() && Codasip::xprRegClass.contains(Ops[2].getReg())) {
        BuildMI(MB,II,dl, TII.get(Codasip::i_alu__opc_sub__xpr__xpr__xpr__)).addOperand(Ops[0]).addOperand(Ops[1]).addOperand(Ops[2]);
        return;
      }
      break;

    default:
      errs() << "Requesting unsupported opcode \"" << name << "\" from runtime emit of basic instructions.\n";
      abort();
  }
  errs() << "An essential instruction implementing operation \"" << name << "\" with these operands: {";
  for (unsigned i=0; i<Ops.size(); ++i)
  {
    if (i) errs() << ", ";
    Ops[i].print(errs(), &(this->RI));
    if (Ops[i].isReg())
    {
      errs() << " in (";
      bool found = false;
      for (TargetRegisterInfo::regclass_iterator RI=this->RI.regclass_begin(), RE=this->RI.regclass_end(); RI != RE; ++RI)
      {
        if ((*RI)->contains(Ops[i].getReg()))
        {
          if (found) errs() << ", ";
          errs() << this->RI.getRegClassName(*RI);
          found = true;
        }
      }
      errs() << ")";
    }
  }
  errs() << "} requested for runtime emit is unsupported. See the backendgen log for more information.\n";
  exit(1);
}

unsigned CodasipGenInstrInfo2::getAnalyzableBrOpc(unsigned Opc) const
{
  // (not from mips)
  MCInstrDesc d = get(Opc);
  if (d.isBranch() && !d.isIndirectBranch()) {
    return Opc;
  }
  else {
    return 0;
  }
}

int CodasipGenInstrInfo2::ReverseBranchConditionOpc(int Opc) const
{
  switch (Opc)
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
      if (isPredicated(Opc))
      {
         if (isPredicatedTrue(Opc)) {
            Opc = Codasip::getFalsePredOpcode(Opc);
            break;
         }
         else {
            Opc = Codasip::getTruePredOpcode(Opc);
            break;
         }
      }
      Opc = 0;
  }
  return Opc;
}

void CodasipGenInstrInfo2::getCodasipInstr(std::vector<int> &Opcs, int Operation, MVT Type) const
{
  assert(Opcs.empty());
  switch (Operation)
  {
        case ISD::ADD:
      switch (Type.SimpleTy)
      {
        case MVT::i32:
          Opcs.reserve(2);
          Opcs.push_back(Codasip::i_alu__opc_add__xpr__xpr__xpr__);
          Opcs.push_back(Codasip::i_alu_i__opc_addi__xpr__xpr__simm12__);
          break;
        default: ;
      }
      break;    case ISD::SUB:
      switch (Type.SimpleTy)
      {
        case MVT::i32:
          Opcs.reserve(1);
          Opcs.push_back(Codasip::i_alu__opc_sub__xpr__xpr__xpr__);
          break;
        default: ;
      }
      break;    case ISD::AND:
      switch (Type.SimpleTy)
      {
        case MVT::i32:
          Opcs.reserve(2);
          Opcs.push_back(Codasip::i_alu__opc_and__xpr__xpr__xpr__);
          Opcs.push_back(Codasip::i_alu_i__opc_andi__xpr__xpr__simm12__);
          break;
        default: ;
      }
      break;    case ISD::OR:
      switch (Type.SimpleTy)
      {
        case MVT::i32:
          Opcs.reserve(2);
          Opcs.push_back(Codasip::i_alu__opc_or__xpr__xpr__xpr__);
          Opcs.push_back(Codasip::i_alu_i__opc_ori__xpr__xpr__simm12__);
          break;
        default: ;
      }
      break;    case ISD::XOR:
      switch (Type.SimpleTy)
      {
        case MVT::i32:
          Opcs.reserve(2);
          Opcs.push_back(Codasip::i_alu__opc_xor__xpr__xpr__xpr__);
          Opcs.push_back(Codasip::i_alu_i__opc_xori__xpr__xpr__simm12__);
          break;
        default: ;
      }
      break;    case ISD::SHL:
      switch (Type.SimpleTy)
      {
        case MVT::i32:
          Opcs.reserve(2);
          Opcs.push_back(Codasip::i_alu__opc_sll__xpr__xpr__xpr__);
          Opcs.push_back(Codasip::i_shift__opc_slli__xpr__xpr__shamt__);
          break;
        default: ;
      }
      break;    case ISD::SRA:
      switch (Type.SimpleTy)
      {
        case MVT::i32:
          Opcs.reserve(2);
          Opcs.push_back(Codasip::i_alu__opc_sra__xpr__xpr__xpr__);
          Opcs.push_back(Codasip::i_shift__opc_srai__xpr__xpr__shamt__);
          break;
        default: ;
      }
      break;    case ISD::SRL:
      switch (Type.SimpleTy)
      {
        case MVT::i32:
          Opcs.reserve(2);
          Opcs.push_back(Codasip::i_alu__opc_srl__xpr__xpr__xpr__);
          Opcs.push_back(Codasip::i_shift__opc_srli__xpr__xpr__shamt__);
          break;
        default: ;
      }
      break;
    default: ;
  }
}

// based on mips but accounts for branches without an opposite
bool CodasipGenInstrInfo2::reverseBranchCondition(SmallVectorImpl<MachineOperand> &Cond) const
{ 
  assert((Cond.size() && Cond.size() <= 3) && "Unexpected condition vector");
  assert(Cond[0].getImm() && "Unexpected condition vector");
  // get opc and reverse
  int Opc = Cond[0].getImm();
  Opc = ReverseBranchConditionOpc(Opc);
  if (Opc==0) return true;
  Cond[0].setImm(Opc);
  assert(Cond[0].getImm() && "Unexpected condition vector");
  return false;
}

unsigned CodasipGenInstrInfo2::getEquivalentCondOpcode(ArrayRef<MachineOperand> Cond, int RegPos) const
{
  int JumpOpc = Cond[RegPos-1].getImm();
  int CondOpc = 0;
  if (!Cond.empty() && Cond[0].isImm() && (Cond[0].getImm() == 0))
  {
      JumpOpc = ReverseBranchConditionOpc(JumpOpc);
      if (!JumpOpc) {
         return 0;
      }
  }
  // determine the corresponding setcc instruction
  switch (JumpOpc)
  {
    case Codasip::i_beqz_alias__xpr__rel_addr12__:
  CondOpc = Codasip::i_seqz_alias__xpr__xpr__;
  break;
case Codasip::i_bgt_alias__x_0__xpr__rel_addr12__:
  CondOpc = Codasip::i_alu_i__opc_slti__xpr__xpr__simm12__;
  break;
case Codasip::i_bgt_alias__xpr__x_0__rel_addr12__:
  CondOpc = Codasip::i_alu__opc_slt__xpr__x_0__xpr__;
  break;
case Codasip::i_bgt_alias__xpr__xpr__rel_addr12__:
  CondOpc = Codasip::i_alu__opc_slt__xpr__xpr__xpr__swappedCmpClone0__;
  break;
case Codasip::i_bgt_alias__xpr__xpr__rel_addr12__swappedCmpClone0__:
  CondOpc = Codasip::i_alu__opc_slt__xpr__xpr__xpr__;
  break;
case Codasip::i_bgtu_alias__xpr__x_0__rel_addr12__:
  CondOpc = Codasip::i_alu__opc_sltu__xpr__x_0__xpr__;
  break;
case Codasip::i_bgtu_alias__xpr__xpr__rel_addr12__:
  CondOpc = Codasip::i_alu__opc_sltu__xpr__xpr__xpr__swappedCmpClone0__;
  break;
case Codasip::i_bgtu_alias__xpr__xpr__rel_addr12__swappedCmpClone0__:
  CondOpc = Codasip::i_alu__opc_sltu__xpr__xpr__xpr__;
  break;
case Codasip::i_bgtz_alias__xpr__rel_addr12__:
  CondOpc = Codasip::i_alu__opc_slt__xpr__x_0__xpr__;
  break;
case Codasip::i_ble_alias__xpr__x_0__rel_addr12__:
  CondOpc = Codasip::i_alu_i__opc_slti__xpr__xpr__simm12__;
  break;
case Codasip::i_bleu_alias__x_0__xpr__rel_addr12__:
  CondOpc = Codasip::i_alu__opc_sltu__xpr__x_0__xpr__;
  break;
case Codasip::i_bleu_alias__xpr__xpr__rel_addr12__:
  CondOpc = Codasip::i_alu__opc_sltu__xpr__xpr__xpr__;
  break;
case Codasip::i_bleu_alias__xpr__xpr__rel_addr12__swappedCmpClone0__:
  CondOpc = Codasip::i_alu__opc_sltu__xpr__xpr__xpr__swappedCmpClone0__;
  break;
case Codasip::i_blez_alias__xpr__rel_addr12__:
  CondOpc = Codasip::i_alu_i__opc_slti__xpr__xpr__simm12__;
  break;
case Codasip::i_bltz_alias__xpr__rel_addr12__:
  CondOpc = Codasip::i_alu_i__opc_slti__xpr__xpr__simm12__;
  break;
case Codasip::i_bnez_alias__xpr__rel_addr12__:
  CondOpc = Codasip::i_alu__opc_sltu__xpr__x_0__xpr__;
  break;
case Codasip::i_branch__opc_beq__x_0__xpr__rel_addr12__:
  CondOpc = Codasip::i_seqz_alias__xpr__xpr__;
  break;
case Codasip::i_branch__opc_beq__xpr__x_0__rel_addr12__:
  CondOpc = Codasip::i_seqz_alias__xpr__xpr__;
  break;
case Codasip::i_branch__opc_bge__x_0__xpr__rel_addr12__:
  CondOpc = Codasip::i_alu_i__opc_slti__xpr__xpr__simm12__;
  break;
case Codasip::i_branch__opc_bgeu__x_0__xpr__rel_addr12__:
  CondOpc = Codasip::i_seqz_alias__xpr__xpr__;
  break;
case Codasip::i_branch__opc_blt__x_0__xpr__rel_addr12__:
  CondOpc = Codasip::i_alu__opc_slt__xpr__x_0__xpr__;
  break;
case Codasip::i_branch__opc_blt__xpr__x_0__rel_addr12__:
  CondOpc = Codasip::i_alu_i__opc_slti__xpr__xpr__simm12__;
  break;
case Codasip::i_branch__opc_blt__xpr__xpr__rel_addr12__:
  CondOpc = Codasip::i_alu__opc_slt__xpr__xpr__xpr__;
  break;
case Codasip::i_branch__opc_blt__xpr__xpr__rel_addr12__swappedCmpClone0__:
  CondOpc = Codasip::i_alu__opc_slt__xpr__xpr__xpr__swappedCmpClone0__;
  break;
case Codasip::i_branch__opc_bltu__x_0__xpr__rel_addr12__:
  CondOpc = Codasip::i_alu__opc_sltu__xpr__x_0__xpr__;
  break;
case Codasip::i_branch__opc_bltu__xpr__xpr__rel_addr12__:
  CondOpc = Codasip::i_alu__opc_sltu__xpr__xpr__xpr__;
  break;
case Codasip::i_branch__opc_bltu__xpr__xpr__rel_addr12__swappedCmpClone0__:
  CondOpc = Codasip::i_alu__opc_sltu__xpr__xpr__xpr__swappedCmpClone0__;
  break;
case Codasip::i_branch__opc_bne__x_0__xpr__rel_addr12__:
  CondOpc = Codasip::i_alu__opc_sltu__xpr__x_0__xpr__;
  break;
case Codasip::i_branch__opc_bne__xpr__x_0__rel_addr12__:
  CondOpc = Codasip::i_alu__opc_sltu__xpr__x_0__xpr__;
  break;

    default:
      CondOpc = 0;
  }
  return CondOpc;
}

bool CodasipGenInstrInfo2::analyzeCompare
(const MachineInstr &MI,  unsigned &SrcReg, unsigned &SrcReg2, int &CmpMask, int &CmpValue) const
{
  CmpMask = ~0;
  SrcReg2 = 0;
  CmpValue = 0;
  switch (MI.getOpcode())
  {
    case Codasip::i_alu__opc_slt__xpr__xpr__xpr__:
SrcReg = MI.getOperand(1).getReg();
 SrcReg2 = MI.getOperand(2).getReg();
return true;
case Codasip::i_alu__opc_slt__xpr__xpr__xpr__swappedCmpClone0__:
SrcReg = MI.getOperand(1).getReg();
 SrcReg2 = MI.getOperand(2).getReg();
return true;
case Codasip::i_alu__opc_sltu__xpr__xpr__xpr__:
SrcReg = MI.getOperand(1).getReg();
 SrcReg2 = MI.getOperand(2).getReg();
return true;
case Codasip::i_alu__opc_sltu__xpr__xpr__xpr__swappedCmpClone0__:
SrcReg = MI.getOperand(1).getReg();
 SrcReg2 = MI.getOperand(2).getReg();
return true;
case Codasip::i_alu_i__opc_slti__xpr__xpr__simm12__:
SrcReg = MI.getOperand(1).getReg();
CmpValue = MI.getOperand(2).getImm();
return true;
case Codasip::i_alu_i__opc_sltiu__xpr__xpr__simm12__:
SrcReg = MI.getOperand(1).getReg();
CmpValue = MI.getOperand(2).getImm();
return true;

    default:
      return TargetInstrInfo::analyzeCompare(MI,SrcReg,SrcReg2,CmpMask,CmpValue);
  }
}

ISD::CondCode CodasipGenInstrInfo2::isCondWithSense(int opc) const
{
  switch(opc)
  {
    case Codasip::i_bgt_alias__xpr__xpr__rel_addr12__:
return ISD::SETGT;
case Codasip::i_bgt_alias__xpr__xpr__rel_addr12__swappedCmpClone0__:
return ISD::SETLT;
case Codasip::i_bgtu_alias__xpr__xpr__rel_addr12__:
return ISD::SETUGT;
case Codasip::i_bgtu_alias__xpr__xpr__rel_addr12__swappedCmpClone0__:
return ISD::SETULT;
case Codasip::i_ble_alias__xpr__xpr__rel_addr12__:
return ISD::SETLE;
case Codasip::i_ble_alias__xpr__xpr__rel_addr12__swappedCmpClone0__:
return ISD::SETGE;
case Codasip::i_bleu_alias__xpr__xpr__rel_addr12__:
return ISD::SETULT;
case Codasip::i_bleu_alias__xpr__xpr__rel_addr12__swappedCmpClone0__:
return ISD::SETUGT;
case Codasip::i_branch__opc_beq__xpr__xpr__rel_addr12__:
return ISD::SETEQ;
case Codasip::i_branch__opc_bge__xpr__xpr__rel_addr12__:
return ISD::SETGE;
case Codasip::i_branch__opc_bge__xpr__xpr__rel_addr12__swappedCmpClone0__:
return ISD::SETLE;
case Codasip::i_branch__opc_bgeu__xpr__xpr__rel_addr12__:
return ISD::SETUGE;
case Codasip::i_branch__opc_bgeu__xpr__xpr__rel_addr12__swappedCmpClone0__:
return ISD::SETULE;
case Codasip::i_branch__opc_blt__xpr__xpr__rel_addr12__:
return ISD::SETLT;
case Codasip::i_branch__opc_blt__xpr__xpr__rel_addr12__swappedCmpClone0__:
return ISD::SETGT;
case Codasip::i_branch__opc_bltu__xpr__xpr__rel_addr12__:
return ISD::SETULT;
case Codasip::i_branch__opc_bltu__xpr__xpr__rel_addr12__swappedCmpClone0__:
return ISD::SETUGT;
case Codasip::i_branch__opc_bne__xpr__xpr__rel_addr12__:
return ISD::SETNE;
case Codasip::i_alu__opc_slt__xpr__xpr__xpr__:
return ISD::SETLT;
case Codasip::i_alu__opc_slt__xpr__xpr__xpr__swappedCmpClone0__:
return ISD::SETGT;
case Codasip::i_alu__opc_sltu__xpr__xpr__xpr__:
return ISD::SETULT;
case Codasip::i_alu__opc_sltu__xpr__xpr__xpr__swappedCmpClone0__:
return ISD::SETUGT;
case Codasip::i_alu_i__opc_slti__xpr__xpr__simm12__:
return ISD::SETLT;
case Codasip::i_alu_i__opc_sltiu__xpr__xpr__simm12__:
return ISD::SETULT;

    default:
      return CodasipBaseInstrInfo::isCondWithSense(opc);
  }
}

// methods for predicates

bool CodasipGenInstrInfo2::isPredicable(MachineInstr& MI) const
{
  bool isPred = MI.getDesc().isPredicable();
  return isPred;   
}

bool CodasipGenInstrInfo2::isProfitableToIfCvt(MachineBasicBlock&, unsigned, unsigned, BranchProbability) const
{
  return true;
}


bool CodasipGenInstrInfo2::isProfitableToIfCvt(MachineBasicBlock&, unsigned, unsigned, MachineBasicBlock&, unsigned, unsigned, BranchProbability) const
{
  return true;
}


bool CodasipGenInstrInfo2::isPredicatedTrue(const MachineInstr& MI) const
{
  const uint64_t F = MI.getDesc().TSFlags;
  assert(isPredicated(MI));
  return (!((F >> 2) & 0x1));
}

bool CodasipGenInstrInfo2::isPredicatedTrue(unsigned Opcode) const
{
  const uint64_t F = get(Opcode).TSFlags;
  // Make sure that the instruction is predicated.
  assert((F>> 1) & 0x1);
  return (!((F >> 2) &0x1));
}


bool CodasipGenInstrInfo2::isPredicated(const MachineInstr& MI) const
{
  const uint64_t F = MI.getDesc().TSFlags;
  return ((F >> 1) & 0x1);
}


bool CodasipGenInstrInfo2::isProfitableToDupForIfCvt(MachineBasicBlock&, unsigned, BranchProbability) const
{
  return true;
}



bool CodasipGenInstrInfo2::isPredicated(unsigned Opcode) const
{
  const uint64_t F = get(Opcode).TSFlags;
  return ((F >> 1) & 0x1);
}



bool CodasipGenInstrInfo2::SubsumesPredicate(ArrayRef<MachineOperand> Pred1, ArrayRef<MachineOperand> Pred2) const
{
  return false;
}


bool CodasipGenInstrInfo2::DefinesPredicate(MachineInstr &MI, std::vector<MachineOperand> &Pred) const
{
  
  return false;
}

int CodasipGenInstrInfo2::getMatchingCondBranchOpcode(int Opc, bool invertPredicate) const
{
  enum Codasip::PredSense inPredSense;
  inPredSense = invertPredicate ? Codasip::PredSense_false :
                                  Codasip::PredSense_true;
  int CondOpcode = Codasip::getPredOpcode(Opc, inPredSense);
  if (CondOpcode >= 0) // Valid Conditional opcode/instruction
    return CondOpcode;
  llvm_unreachable("Unexpected predicable instruction");
}


bool CodasipGenInstrInfo2::isPredReg(const MachineOperand *PredMO) const
{
  bool Result = false; 
  
  return Result;
}


MachineBasicBlock::iterator CodasipGenInstrInfo2::identifyPositionInParentBlock(MachineInstr *PredMOSource) const
{
  MachineBasicBlock *ParentBlock = PredMOSource->getParent();
  if (ParentBlock == NULL) {
    return NULL;
  }
  for (MachineBasicBlock::iterator MBBIt=ParentBlock->begin(), MBBItE=ParentBlock->end(); MBBIt!=MBBItE; MBBIt++)
  {
     if (PredMOSource->isIdenticalTo(*MBBIt)) {
        return MBBIt;
     }
  }
  return ParentBlock->end();
}

bool CodasipGenInstrInfo2::isLiveInMBB(MachineInstr *ParentInstr, unsigned int Reg) const
{
  MachineBasicBlock *MBB = ParentInstr->getParent();
  // check liveins
  if (MBB->isLiveIn(Reg)) {
     return true;
  }
  // check instrs in block
  for (MachineBasicBlock::iterator MBBIt=MBB->begin(), MBBEIt=MBB->end(); MBBIt!=MBBEIt; MBBIt++)
  {
    for (unsigned i=0; i < MBBIt->getNumOperands(); i++)
    {
      //if we are already using this reg as an operand in any instruction in this block, then it's not safe
      if (MBBIt->getOperand(i).isReg() && MBBIt->getOperand(i).getReg()==Reg) {
        return true;
      }
    }
  }
  return false;
}

bool CodasipGenInstrInfo2::isPredicableBlock(MachineBasicBlock &MBB, SmallVectorImpl<MachineOperand> &Cond) const
{
  bool Result = false;
  
  return Result;
}

bool CodasipGenInstrInfo2::getFreePredRegister(MachineInstr *ParentInstr, unsigned *FreePredReg) const
{  
  bool Result = false;
  
  return Result;
}

bool CodasipGenInstrInfo2::isThereSuitableCopy(MachineOperand *PredMO) const
{
  MachineInstr *ParentInstr = PredMO->getParent(); 
  DebugLoc DL;
  MachineBasicBlock::iterator PredBBIt = identifyPositionInParentBlock(ParentInstr);
  MachineBasicBlock *ParentMBB = PredBBIt->getParent();
  if (ParentMBB->begin() == PredBBIt) {
    return false;
  }
  PredBBIt--;
  if (PredBBIt->getNumOperands() == 2 && PredBBIt->getOperand(1).isReg() && PredBBIt->getOperand(1).getReg() == PredMO->getReg() && isPredReg(&PredBBIt->getOperand(0)))
  {
     *PredMO = PredBBIt->getOperand(0);
     return true;
  }
  return false;
}


bool CodasipGenInstrInfo2::copyCondToPredReg(MachineOperand *PredMO) const
{
  MachineInstr *ParentInstr = PredMO->getParent(); 
  DebugLoc DL;
  unsigned FreePredReg = 0;
  MachineBasicBlock::iterator PredBBIt = identifyPositionInParentBlock(ParentInstr);
  // get a free predicate register
  if(PredBBIt == ParentInstr->getParent()->end()  || !getFreePredRegister(ParentInstr, &FreePredReg))
     return false;
  // build r2r copy
  assert(PredMO->isReg());
  unsigned dstReg = PredMO->getReg();
  copyPhysReg(*(ParentInstr->getParent()), PredBBIt, DL, FreePredReg, dstReg, false);
  // make deep copy of the destination operand
  --PredBBIt;
  *PredMO = PredBBIt->getOperand(0);
  return true; 
}

bool CodasipGenInstrInfo2::isThereSuitableCondEmul(ArrayRef<MachineOperand> Cond, int RegPos,  MachineOperand *PredMO, MachineInstr *PredInstr) const
{
  //now we need to get our jump opc and check if there is some suitable operation which emulates jumps condition
  //emulation can _only_ be before first terminator of predecessor block
  DebugLoc DL;
  MachineBasicBlock *ParentMBB = PredInstr->getParent();
  MachineBasicBlock *PredMBB = *(ParentMBB->pred_begin()); //we have only one predecessor - confirmed sooner in isPredicableBlock()
  int EmulOpc = 0;
  EmulOpc = getEquivalentCondOpcode(Cond, RegPos);
  if (EmulOpc == 0 || PredMBB->empty() )
  {
     //no suitable emulation
     return false;
  }
  
  MachineBasicBlock::iterator PredBBIt = PredMBB->getFirstTerminator(); //now we have first terminator
  //look at instruction before the first terminator, thats the only place where emulCondToPredReg can put already existing emulation
  //there is one special case- codasip flag instruction
  bool AltPlace = false;
  while (1)
  {
    if (PredBBIt != PredMBB->end() && PredBBIt->getFlag(MachineInstr::CodasipFlag))
    {
      PredBBIt->clearFlag(MachineInstr::CodasipFlag);
      AltPlace = true;
      PredBBIt++;
      break;
    }
    if (PredBBIt == PredMBB->begin())
    {
      break;
    }
    PredBBIt--;
  }
  if (!AltPlace)
  {
    PredBBIt = PredMBB->getFirstTerminator();
  }
  if (PredBBIt != PredMBB->begin() && !AltPlace)
  {
    PredBBIt--;
  }
  if (PredBBIt != PredMBB->end() && (&*PredBBIt)->getOpcode() == (unsigned)EmulOpc && (&*PredBBIt)->getNumOperands() != 0 && //we have matching emulation opc and
      isPredReg( &((&*PredBBIt)->getOperand(0)) ) )  //we define predicate register
  {
    *PredMO = PredBBIt->getOperand(0);
    return true;
  }
  return false;
}

bool CodasipGenInstrInfo2::emulCondToPredReg(ArrayRef<MachineOperand> Cond, int RegPos,  MachineOperand *PredMO, MachineInstr *PredInstr ) const
{
  // get opc of 
  DebugLoc DL;
  unsigned FreePredReg = 0;
  MachineBasicBlock *ParentMBB = PredInstr->getParent();
  // build emulation of condition guarding jump
  int EmulOpc = 0;
  EmulOpc = getEquivalentCondOpcode(Cond, RegPos);
  if (EmulOpc == 0) {
    // no suitable emulation
    return false;
  }
  // get previous block
  MachineBasicBlock *PredMBB = *(ParentMBB->pred_begin()); //we have only one predecessor- already checked before
  MachineBasicBlock::iterator PredBBIt = PredMBB->getFirstTerminator();//where to put emulation? just place it before terminators, ifconversion _will_ coalesce basicblocks and rework these terminators
  if (!getFreePredRegister(PredInstr, &FreePredReg)) {  //abort if no free predreg
    return false;
  }
  bool AltPlace = false;
  while (1)
  {
    if (PredBBIt != PredMBB->end() && PredBBIt->getFlag(MachineInstr::CodasipFlag))
    {
      PredBBIt->clearFlag(MachineInstr::CodasipFlag);
      AltPlace = true;
      PredBBIt++;
      break;
    }
    if (PredBBIt == PredMBB->begin())
    {
      break;
    }
    PredBBIt--;
  }
  if (!AltPlace)
  {
    PredBBIt = PredMBB->getFirstTerminator();
  }
  const MCInstrDesc &MCID = get(EmulOpc);
  unsigned OperandsToCopy = Cond.size()-RegPos;
  // we can safely say that we will cover every operand in new instr.
  if ((MCID.getNumOperands()-1) == OperandsToCopy)
  {
    MachineInstrBuilder MIB = BuildMI(*(PredMBB), PredBBIt , DL, MCID, FreePredReg);
    //copy condition operands into emulation
    for (unsigned i = RegPos; i<Cond.size(); i++) {
      MIB.addOperand(Cond[i]);
    }
  }
  else if (OperandsToCopy == 1 && MCID.getNumOperands() == 3 && MCID.OpInfo[2].OperandType == MCOI::OperandType::OPERAND_IMMEDIATE)
  {
    MachineInstrBuilder MIB = BuildMI(*(PredMBB), PredBBIt , DL, MCID, FreePredReg);
    for (unsigned i = RegPos; i<Cond.size(); i++) {
      MIB.addOperand(Cond[i]);
    }
    MIB.addImm(0);
  }
  else {
    return false;
  }
  // make deep copy of the destination operand
  --PredBBIt;
  *PredMO = PredBBIt->getOperand(0);
  return true;
}

bool CodasipGenInstrInfo2::PredicateInstruction(MachineInstr &MI, ArrayRef<MachineOperand> Cond) const
{
  const int Opc = MI.getOpcode();
  assert(isPredicable(MI) && "Expected predicable instruction");
  const bool invertJump = (!Cond.empty() && Cond[0].isImm() && (Cond[0].getImm() == 0));
  // This will change MI's opcode to its predicate version.
  // However, its operand list is still the old one, i.e. the
  // non-predicate one.
  int regPos = invertJump ? 2 : 1;
  MachineOperand PredMO = Cond[regPos];
  // single reg conditions (predreg class or something else)
  if (!( ((invertJump && Cond.size()==3) || (!invertJump && Cond.size() == 2)) && isPredReg( &PredMO) )) 
  {
    if (!isThereSuitableCondEmul(Cond,regPos, &PredMO, &MI) && !emulCondToPredReg(Cond,regPos, &PredMO, &MI)) //handle complicated conditions
    {  
      return false;
    }
  }
  MI.setDesc(get(getMatchingCondBranchOpcode(Opc, invertJump)));
  MI.addOperand(MachineOperand::CreateReg(PredMO.getReg(), false));
  MachineRegisterInfo &RegInfo = MI.getParent()->getParent()->getRegInfo();
  RegInfo.clearKillFlags(PredMO.getReg());
  return true;
}

//adding NO-OP instruction to code
void CodasipGenInstrInfo2::insertNoop(MachineBasicBlock &MBB, MachineBasicBlock::iterator MI) const
{
  DebugLoc DL;
  if (MI!=MBB.end()) DL=MI->getDebugLoc();
  BuildMI(MBB, MI, DL, get(Codasip::i_nop_alias__));

}

//adding specific NO-OP instruction to code on specific position
void CodasipGenInstrInfo2::insertNoopOnPos(MachineBasicBlock &MBB, MachineBasicBlock::iterator MI, unsigned pos) const
{
  DebugLoc DL;
  if (MI!=MBB.end()) DL=MI->getDebugLoc();
  switch (pos)
  {
     case 0:
  BuildMI(MBB,MI,DL,get(Codasip::i_nop_alias__)); break;


    default: insertNoop(MBB,MI);break;
  }
}

// turn of optimization on windows, too long function
#ifdef _WIN32
	#pragma optimize("", off)	// disable global optimization, this will increase compilation times 8x-10x
#endif
// return a vector with all positions, where the instruction can be
void CodasipGenInstrInfo2::getAllPosInBundleImpl(int opc, SlotData &vec)
{
  assert(vec.empty());
  switch (opc)
  {
    case Codasip::i_call_reg_alias__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_jr_alias__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_ret_alias__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_call_alias__rel_addr20__:
    case Codasip::i_call_alias__rel_addr20__ES:
    case Codasip::i_call_alias__rel_addr20__BA:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_j_alias__rel_addr20__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_jal__opc_jal__x_0__rel_addr20__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_jal__opc_jal__xpr__rel_addr20__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_beqz_alias__x_0__rel_addr12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_beqz_alias__xpr__rel_addr12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_bgez_alias__x_0__rel_addr12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_bgez_alias__xpr__rel_addr12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_bgt_alias__x_0__xpr__rel_addr12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_bgt_alias__xpr__x_0__rel_addr12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_bgt_alias__xpr__xpr__rel_addr12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_bgt_alias__xpr__xpr__rel_addr12__swappedCmpClone0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_bgtu_alias__xpr__x_0__rel_addr12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_bgtu_alias__xpr__xpr__rel_addr12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_bgtu_alias__xpr__xpr__rel_addr12__swappedCmpClone0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_bgtz_alias__xpr__rel_addr12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_ble_alias__x_0__x_0__rel_addr12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_ble_alias__x_0__xpr__rel_addr12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_ble_alias__xpr__x_0__rel_addr12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_ble_alias__xpr__xpr__rel_addr12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_ble_alias__xpr__xpr__rel_addr12__swappedCmpClone0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_bleu_alias__x_0__xpr__rel_addr12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_bleu_alias__xpr__xpr__rel_addr12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_bleu_alias__xpr__xpr__rel_addr12__swappedCmpClone0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_blez_alias__x_0__rel_addr12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_blez_alias__xpr__rel_addr12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_bltz_alias__xpr__rel_addr12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_bnez_alias__xpr__rel_addr12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_branch__opc_beq__x_0__x_0__rel_addr12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_branch__opc_beq__x_0__xpr__rel_addr12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_branch__opc_beq__xpr__x_0__rel_addr12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_branch__opc_beq__xpr__xpr__rel_addr12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_branch__opc_bge__x_0__x_0__rel_addr12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_branch__opc_bge__x_0__xpr__rel_addr12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_branch__opc_bge__xpr__x_0__rel_addr12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_branch__opc_bge__xpr__xpr__rel_addr12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_branch__opc_bge__xpr__xpr__rel_addr12__swappedCmpClone0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_branch__opc_bgeu__x_0__x_0__rel_addr12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_branch__opc_bgeu__x_0__xpr__rel_addr12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_branch__opc_bgeu__xpr__x_0__rel_addr12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_branch__opc_bgeu__xpr__xpr__rel_addr12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_branch__opc_bgeu__xpr__xpr__rel_addr12__swappedCmpClone0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_branch__opc_blt__x_0__xpr__rel_addr12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_branch__opc_blt__xpr__x_0__rel_addr12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_branch__opc_blt__xpr__xpr__rel_addr12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_branch__opc_blt__xpr__xpr__rel_addr12__swappedCmpClone0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_branch__opc_bltu__x_0__xpr__rel_addr12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_branch__opc_bltu__xpr__xpr__rel_addr12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_branch__opc_bltu__xpr__xpr__rel_addr12__swappedCmpClone0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_branch__opc_bne__x_0__xpr__rel_addr12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_branch__opc_bne__xpr__x_0__rel_addr12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_branch__opc_bne__xpr__xpr__rel_addr12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_jalr__opc_jalr__x_0__rel_jalr_addr12__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_jalr__opc_jalr__xpr__rel_jalr_addr12__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_add__x_0__x_0__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_add__x_0__x_0__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_add__x_0__xpr__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_add__x_0__xpr__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_add__xpr__x_0__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_add__xpr__x_0__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_add__xpr__xpr__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_add__xpr__xpr__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_and__x_0__x_0__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_and__x_0__x_0__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_and__x_0__xpr__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_and__x_0__xpr__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_and__xpr__x_0__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_and__xpr__x_0__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_and__xpr__xpr__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_and__xpr__xpr__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_or__x_0__x_0__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_or__x_0__x_0__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_or__x_0__xpr__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_or__x_0__xpr__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_or__xpr__x_0__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_or__xpr__x_0__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_or__xpr__xpr__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_or__xpr__xpr__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_sll__x_0__x_0__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_sll__x_0__x_0__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_sll__x_0__xpr__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_sll__x_0__xpr__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_sll__xpr__x_0__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_sll__xpr__x_0__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_sll__xpr__xpr__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_sll__xpr__xpr__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_slt__x_0__x_0__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_slt__x_0__x_0__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_slt__x_0__xpr__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_slt__x_0__xpr__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_slt__xpr__x_0__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_slt__xpr__x_0__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_slt__xpr__xpr__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_slt__xpr__xpr__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_slt__xpr__xpr__xpr__swappedCmpClone0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_sltu__x_0__x_0__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_sltu__x_0__x_0__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_sltu__x_0__xpr__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_sltu__x_0__xpr__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_sltu__xpr__x_0__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_sltu__xpr__x_0__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_sltu__xpr__xpr__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_sltu__xpr__xpr__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_sltu__xpr__xpr__xpr__swappedCmpClone0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_sra__x_0__x_0__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_sra__x_0__x_0__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_sra__x_0__xpr__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_sra__x_0__xpr__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_sra__xpr__x_0__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_sra__xpr__x_0__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_sra__xpr__xpr__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_sra__xpr__xpr__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_srl__x_0__x_0__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_srl__x_0__x_0__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_srl__x_0__xpr__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_srl__x_0__xpr__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_srl__xpr__x_0__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_srl__xpr__x_0__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_srl__xpr__xpr__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_srl__xpr__xpr__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_sub__x_0__x_0__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_sub__x_0__x_0__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_sub__x_0__xpr__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_sub__x_0__xpr__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_sub__xpr__x_0__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_sub__xpr__x_0__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_sub__xpr__xpr__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_sub__xpr__xpr__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_xor__x_0__x_0__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_xor__x_0__x_0__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_xor__x_0__xpr__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_xor__x_0__xpr__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_xor__xpr__x_0__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_xor__xpr__x_0__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_xor__xpr__xpr__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu__opc_xor__xpr__xpr__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu_i__opc_addi__x_0__x_0__simm12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu_i__opc_addi__x_0__xpr__simm12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu_i__opc_addi__xpr__x_0__simm12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu_i__opc_addi__xpr__xpr__simm12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu_i__opc_addi__xpr__xpr__simm12__SPEC_CLONE_:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu_i__opc_andi__x_0__x_0__simm12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu_i__opc_andi__x_0__xpr__simm12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu_i__opc_andi__xpr__x_0__simm12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu_i__opc_andi__xpr__xpr__simm12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu_i__opc_ori__x_0__x_0__simm12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu_i__opc_ori__x_0__xpr__simm12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu_i__opc_ori__xpr__x_0__simm12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu_i__opc_ori__xpr__xpr__simm12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu_i__opc_slti__x_0__x_0__simm12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu_i__opc_slti__x_0__xpr__simm12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu_i__opc_slti__xpr__x_0__simm12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu_i__opc_slti__xpr__x_0__simm12__immSpecClone__imm_1__0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu_i__opc_slti__xpr__x_0__simm12__immSpecClone__imm_1__1__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu_i__opc_slti__xpr__xpr__simm12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu_i__opc_sltiu__x_0__x_0__simm12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu_i__opc_sltiu__x_0__xpr__simm12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu_i__opc_sltiu__xpr__x_0__simm12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu_i__opc_sltiu__xpr__x_0__simm12__immSpecClone__imm_1__0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu_i__opc_sltiu__xpr__x_0__simm12__immSpecClone__imm_1__1__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu_i__opc_sltiu__xpr__xpr__simm12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu_i__opc_xori__x_0__x_0__simm12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu_i__opc_xori__x_0__xpr__simm12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu_i__opc_xori__xpr__x_0__simm12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu_i__opc_xori__xpr__xpr__simm12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_bgt_alias__x_0__x_0__rel_addr12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_bgtu_alias__x_0__x_0__rel_addr12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_bgtu_alias__x_0__xpr__rel_addr12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_bgtz_alias__x_0__rel_addr12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_bleu_alias__x_0__x_0__rel_addr12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_bleu_alias__xpr__x_0__rel_addr12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_bltz_alias__x_0__rel_addr12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_bnez_alias__x_0__rel_addr12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_branch__opc_blt__x_0__x_0__rel_addr12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_branch__opc_bltu__x_0__x_0__rel_addr12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_branch__opc_bltu__xpr__x_0__rel_addr12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_branch__opc_bne__x_0__x_0__rel_addr12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_li_alias__x_0__simm12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_li_alias__xpr__simm12__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_load__opc_lb__x_0__simm12__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_load__opc_lb__x_0__simm12__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_load__opc_lb__xpr__simm12__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_load__opc_lb__xpr__simm12__x_0__AEXT_CLONE_:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_load__opc_lb__xpr__simm12__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_load__opc_lb__xpr__simm12__xpr__AEXT_CLONE_:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_load__opc_lb__xpr__simm12__xpr__SPEC_CLONE_:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_load__opc_lb__xpr__simm12__xpr__SPEC_CLONE_AEXT_CLONE_:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_load__opc_lbu__x_0__simm12__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_load__opc_lbu__x_0__simm12__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_load__opc_lbu__xpr__simm12__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_load__opc_lbu__xpr__simm12__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_load__opc_lbu__xpr__simm12__xpr__SPEC_CLONE_:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_load__opc_lh__x_0__simm12__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_load__opc_lh__x_0__simm12__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_load__opc_lh__xpr__simm12__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_load__opc_lh__xpr__simm12__x_0__AEXT_CLONE_:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_load__opc_lh__xpr__simm12__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_load__opc_lh__xpr__simm12__xpr__AEXT_CLONE_:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_load__opc_lh__xpr__simm12__xpr__SPEC_CLONE_:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_load__opc_lh__xpr__simm12__xpr__SPEC_CLONE_AEXT_CLONE_:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_load__opc_lhu__x_0__simm12__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_load__opc_lhu__x_0__simm12__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_load__opc_lhu__xpr__simm12__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_load__opc_lhu__xpr__simm12__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_load__opc_lhu__xpr__simm12__xpr__SPEC_CLONE_:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_load__opc_lw__x_0__simm12__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_load__opc_lw__x_0__simm12__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_load__opc_lw__xpr__simm12__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_load__opc_lw__xpr__simm12__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_load__opc_lw__xpr__simm12__xpr__SPEC_CLONE_:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_mv_alias__x_0__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_mv_alias__x_0__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_mv_alias__xpr__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_mv_alias__xpr__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_neg_alias__x_0__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_neg_alias__x_0__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_neg_alias__xpr__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_neg_alias__xpr__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_nop_alias__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_not_alias__x_0__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_not_alias__x_0__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_not_alias__xpr__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_not_alias__xpr__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_seqz_alias__x_0__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_seqz_alias__x_0__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_seqz_alias__xpr__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_seqz_alias__xpr__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_sgtz_alias__x_0__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_sgtz_alias__x_0__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_sgtz_alias__xpr__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_sgtz_alias__xpr__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_shift__opc_slli__x_0__x_0__shamt__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_shift__opc_slli__x_0__xpr__shamt__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_shift__opc_slli__xpr__x_0__shamt__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_shift__opc_slli__xpr__xpr__shamt__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_shift__opc_srai__x_0__x_0__shamt__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_shift__opc_srai__x_0__xpr__shamt__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_shift__opc_srai__xpr__x_0__shamt__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_shift__opc_srai__xpr__xpr__shamt__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_shift__opc_srli__x_0__x_0__shamt__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_shift__opc_srli__x_0__xpr__shamt__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_shift__opc_srli__xpr__x_0__shamt__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_shift__opc_srli__xpr__xpr__shamt__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_sltz_alias__x_0__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_sltz_alias__x_0__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_sltz_alias__xpr__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_sltz_alias__xpr__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_snez_alias__x_0__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_snez_alias__x_0__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_snez_alias__xpr__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_snez_alias__xpr__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_store__opc_sb__x_0__simm12__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_store__opc_sb__x_0__simm12__x_0__legalConstClonei32__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_store__opc_sb__x_0__simm12__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_store__opc_sb__x_0__simm12__xpr__SPEC_CLONE_:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_store__opc_sb__x_0__simm12__xpr__legalConstClonei32__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_store__opc_sb__x_0__simm12__xpr__legalConstClonei32__SPEC_CLONE_:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_store__opc_sb__xpr__simm12__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_store__opc_sb__xpr__simm12__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_store__opc_sb__xpr__simm12__xpr__SPEC_CLONE_:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_store__opc_sh__x_0__simm12__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_store__opc_sh__x_0__simm12__x_0__legalConstClonei32__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_store__opc_sh__x_0__simm12__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_store__opc_sh__x_0__simm12__xpr__SPEC_CLONE_:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_store__opc_sh__x_0__simm12__xpr__legalConstClonei32__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_store__opc_sh__x_0__simm12__xpr__legalConstClonei32__SPEC_CLONE_:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_store__opc_sh__xpr__simm12__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_store__opc_sh__xpr__simm12__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_store__opc_sh__xpr__simm12__xpr__SPEC_CLONE_:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_store__opc_sw__x_0__simm12__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_store__opc_sw__x_0__simm12__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_store__opc_sw__x_0__simm12__xpr__SPEC_CLONE_:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_store__opc_sw__xpr__simm12__x_0__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_store__opc_sw__xpr__simm12__xpr__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_store__opc_sw__xpr__simm12__xpr__SPEC_CLONE_:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_upper_imm__opc_auipc__x_0__simm20__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_upper_imm__opc_auipc__xpr__simm20__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_upper_imm__opc_auipc__xpr__simm20__SPEC_CLONE_:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_upper_imm__opc_lui__x_0__simm20__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_upper_imm__opc_lui__xpr__simm20__:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::e_movi32__:
    case Codasip::e_movi32__GA:
    case Codasip::e_movi32__ES:
    case Codasip::e_movi32__BA:
    case Codasip::e_movi32__JT:
    case Codasip::e_movi32__CP:
      vec.resize(0);
      break;
    case Codasip::i_jr_alias__xpr__TAILCALL_CLONE_:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_ret_alias__TAILCALL_CLONE_:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_j_alias__rel_addr20__TAILCALL_CLONE_:
    case Codasip::i_j_alias__rel_addr20__TAILCALL_CLONE_ES:
    case Codasip::i_j_alias__rel_addr20__TAILCALL_CLONE_BA:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_jal__opc_jal__x_0__rel_addr20__TAILCALL_CLONE_:
    case Codasip::i_jal__opc_jal__x_0__rel_addr20__TAILCALL_CLONE_ES:
    case Codasip::i_jal__opc_jal__x_0__rel_addr20__TAILCALL_CLONE_BA:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_beqz_alias__x_0__rel_addr12__TAILCALL_CLONE_:
    case Codasip::i_beqz_alias__x_0__rel_addr12__TAILCALL_CLONE_ES:
    case Codasip::i_beqz_alias__x_0__rel_addr12__TAILCALL_CLONE_BA:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_bgez_alias__x_0__rel_addr12__TAILCALL_CLONE_:
    case Codasip::i_bgez_alias__x_0__rel_addr12__TAILCALL_CLONE_ES:
    case Codasip::i_bgez_alias__x_0__rel_addr12__TAILCALL_CLONE_BA:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_ble_alias__x_0__x_0__rel_addr12__TAILCALL_CLONE_:
    case Codasip::i_ble_alias__x_0__x_0__rel_addr12__TAILCALL_CLONE_ES:
    case Codasip::i_ble_alias__x_0__x_0__rel_addr12__TAILCALL_CLONE_BA:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_blez_alias__x_0__rel_addr12__TAILCALL_CLONE_:
    case Codasip::i_blez_alias__x_0__rel_addr12__TAILCALL_CLONE_ES:
    case Codasip::i_blez_alias__x_0__rel_addr12__TAILCALL_CLONE_BA:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_branch__opc_beq__x_0__x_0__rel_addr12__TAILCALL_CLONE_:
    case Codasip::i_branch__opc_beq__x_0__x_0__rel_addr12__TAILCALL_CLONE_ES:
    case Codasip::i_branch__opc_beq__x_0__x_0__rel_addr12__TAILCALL_CLONE_BA:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_branch__opc_bge__x_0__x_0__rel_addr12__TAILCALL_CLONE_:
    case Codasip::i_branch__opc_bge__x_0__x_0__rel_addr12__TAILCALL_CLONE_ES:
    case Codasip::i_branch__opc_bge__x_0__x_0__rel_addr12__TAILCALL_CLONE_BA:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_branch__opc_bgeu__x_0__x_0__rel_addr12__TAILCALL_CLONE_:
    case Codasip::i_branch__opc_bgeu__x_0__x_0__rel_addr12__TAILCALL_CLONE_ES:
    case Codasip::i_branch__opc_bgeu__x_0__x_0__rel_addr12__TAILCALL_CLONE_BA:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_branch__opc_bgeu__xpr__x_0__rel_addr12__TAILCALL_CLONE_:
    case Codasip::i_branch__opc_bgeu__xpr__x_0__rel_addr12__TAILCALL_CLONE_ES:
    case Codasip::i_branch__opc_bgeu__xpr__x_0__rel_addr12__TAILCALL_CLONE_BA:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_jalr__opc_jalr__x_0__rel_jalr_addr12__x_0__TAILCALL_CLONE_:
    case Codasip::i_jalr__opc_jalr__x_0__rel_jalr_addr12__x_0__TAILCALL_CLONE_ES:
    case Codasip::i_jalr__opc_jalr__x_0__rel_jalr_addr12__x_0__TAILCALL_CLONE_BA:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_store__opc_sw__xpr__simm12__xpr__0_SUM2REGS_EMUL_:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_store__opc_sw__xpr__simm12__xpr__1_BIGIMM_EMUL_:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_load__opc_lw__xpr__simm12__xpr__2_SUM2REGS_EMUL_:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_load__opc_lw__xpr__simm12__xpr__3_BIGIMM_EMUL_:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_store__opc_sw__xpr__simm12__xpr__4_BIGIMM_EMUL_:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_load__opc_lw__xpr__simm12__xpr__5_BIGIMM_EMUL_:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu_i__opc_addi__xpr__xpr__simm12__6_BIGIMM_EMUL_:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu_i__opc_addi__xpr__xpr__simm12__7_BIGIMM_EMUL_:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu_i__opc_addi__xpr__xpr__simm12__8_BIGIMM_EMUL_:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_upper_imm__opc_lui__xpr__simm20__SYNTAX_CLONE_e_movi32__1_:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    case Codasip::i_alu_i__opc_ori__xpr__x_0__simm12__SYNTAX_CLONE_e_movi32__2_:
      vec.resize(1);
      vec[0].reserve(1);
      vec[0].push_back(0);
      break;
    
    default:
      /* no action */;
  }
}
// turn on optimizations back
#ifdef _WIN32
	#pragma optimize("", on)
#endif

void CodasipGenInstrInfo2::getAllPosInBundle(int opc, SlotData &vec) const
{
    getAllPosInBundleImpl(opc,vec);
}

bool CodasipGenInstrInfo2::isSchedulingBoundary
(const MachineInstr &MI, const MachineBasicBlock *MBB, const MachineFunction &MF) const
{
  // Debug info is never a scheduling boundary. It's necessary to be explicit
  // due to the special treatment of IT instructions below, otherwise a
  // dbg_value followed by an IT will result in the IT instruction being
  // considered a scheduling hazard, which is wrong. It should be the actual
  // instruction preceding the dbg_value instruction(s), just like it is
  // when debug info is not present.
  if (MI.isDebugValue())
    return false;

  // Terminators and labels can't be scheduled around.
  if (MI.getDesc().isTerminator() || MI.isLabel() || MI.isInlineAsm())
    return true;

  return false;
}


// Auxiliary function for custom inserters - creates a successor for the given BB if needed.
// There needs to be two of them - multiple register definition error otherwise.
namespace {
void GetNextBB(MachineBasicBlock *BB, MachineBasicBlock *BBs[2], MachineInstr *MI)
{
  assert(MI->getParent()==BB);
  MachineFunction *F = BB->getParent();
  // create new basic block (always? what if there is exactly one succ. already?)
  const BasicBlock *LLVM_BB = BB->getBasicBlock();
  MachineFunction::iterator It = BB->getIterator();
  ++It;
  BBs[0] = F->CreateMachineBasicBlock(LLVM_BB);
  BBs[1] = F->CreateMachineBasicBlock(LLVM_BB);
  F->insert(It,BBs[0]);
  F->insert(It,BBs[1]);
  // transfer the rest of the instructions
  BBs[1]->splice(BBs[1]->begin(), BB, std::next(MachineBasicBlock::iterator(MI)), BB->end());
  BBs[1]->transferSuccessorsAndUpdatePHIs(BB);
  // set successory
  BB->addSuccessor(BBs[0]);
  BB->addSuccessor(BBs[1]);
  BBs[0]->addSuccessor(BBs[1]);
}
}

// This is a merge of all possible expansions for all (three) places when such a thing can take place
bool CodasipGenInstrInfo2::ExpandDummiesImpl(MachineInstr* MIp, MachineBasicBlock* &BB, const bool postRA, RegScavenger* RS) const
{
  assert(BB && MIp);
  bool has2AdrConfl = false; // different regs on tied opers
  bool postRaOnly = false;   // usable in post-RA only because of using an output operand (in L-side) as input (in R-side)
  bool failed = false;       // no predicate suceeded?
  MachineInstr &MI = *MIp;
  MachineBasicBlock::instr_iterator MBI(MIp);
  MachineBasicBlock &MB = *BB;
  MachineFunction &MF = *MB.getParent();
  MachineRegisterInfo &MRI = MF.getRegInfo();
  DebugLoc dl = MI.getDebugLoc();
  // mark start and stop
  bool wasStart = false;
  MachineBasicBlock::instr_iterator start(MBI);
  MachineBasicBlock::instr_iterator stop(start);
  if (start == MB.instr_begin()) {
    wasStart = true;
  }
  else {
    --start;
  }
  ++stop;
  // avoid warnings
  MRI.isSSA();
  switch (MI.getOpcode())
  {
    case Codasip::KILL:
      MI.removeFromParent();
      break;
    case Codasip::COPY:
      if (MI.getOperand(0).isReg() && MI.getOperand(1).isReg()) {
        copyPhysReg(MB,MBI,dl, MI.getOperand(0).getReg(), MI.getOperand(1).getReg(),false);
        MI.removeFromParent();
      }
      break;
    case Codasip::rule_SELECT_7:
    {
      MachineBasicBlock *BBs[2];
      GetNextBB(BB,BBs,MIp);
      BuildMI(MB,MBI,dl, get(Codasip::i_branch__opc_beq__xpr__xpr__rel_addr12__)).addReg(MI.getOperand(1).getReg()).addReg(MI.getOperand(2).getReg()).addMBB(BBs[1]);
      BuildMI(*BBs[1],BBs[1]->begin(), dl, get(Codasip::PHI), MI.getOperand(0).getReg()).addReg(MI.getOperand(3).getReg()).addMBB(BB).addReg(MI.getOperand(4).getReg()).addMBB(BBs[0]);
      MI.eraseFromParent();
      BB = BBs[1];
      break;
    }
    case Codasip::rule_SELECT_8:
    {
      MachineBasicBlock *BBs[2];
      GetNextBB(BB,BBs,MIp);
      BuildMI(MB,MBI,dl, get(Codasip::i_branch__opc_bne__xpr__xpr__rel_addr12__)).addReg(MI.getOperand(1).getReg()).addReg(MI.getOperand(2).getReg()).addMBB(BBs[1]);
      BuildMI(*BBs[1],BBs[1]->begin(), dl, get(Codasip::PHI), MI.getOperand(0).getReg()).addReg(MI.getOperand(3).getReg()).addMBB(BB).addReg(MI.getOperand(4).getReg()).addMBB(BBs[0]);
      MI.eraseFromParent();
      BB = BBs[1];
      break;
    }
    case Codasip::rule_SELECT_9:
    {
      MachineBasicBlock *BBs[2];
      GetNextBB(BB,BBs,MIp);
      BuildMI(MB,MBI,dl, get(Codasip::i_ble_alias__xpr__xpr__rel_addr12__swappedCmpClone0__)).addReg(MI.getOperand(1).getReg()).addReg(MI.getOperand(2).getReg()).addMBB(BBs[1]);
      BuildMI(*BBs[1],BBs[1]->begin(), dl, get(Codasip::PHI), MI.getOperand(0).getReg()).addReg(MI.getOperand(3).getReg()).addMBB(BB).addReg(MI.getOperand(4).getReg()).addMBB(BBs[0]);
      MI.eraseFromParent();
      BB = BBs[1];
      break;
    }
    case Codasip::rule_SELECT_10:
    {
      MachineBasicBlock *BBs[2];
      GetNextBB(BB,BBs,MIp);
      BuildMI(MB,MBI,dl, get(Codasip::i_bgt_alias__xpr__xpr__rel_addr12__)).addReg(MI.getOperand(1).getReg()).addReg(MI.getOperand(2).getReg()).addMBB(BBs[1]);
      BuildMI(*BBs[1],BBs[1]->begin(), dl, get(Codasip::PHI), MI.getOperand(0).getReg()).addReg(MI.getOperand(3).getReg()).addMBB(BB).addReg(MI.getOperand(4).getReg()).addMBB(BBs[0]);
      MI.eraseFromParent();
      BB = BBs[1];
      break;
    }
    case Codasip::rule_SELECT_11:
    {
      MachineBasicBlock *BBs[2];
      GetNextBB(BB,BBs,MIp);
      BuildMI(MB,MBI,dl, get(Codasip::i_ble_alias__xpr__xpr__rel_addr12__)).addReg(MI.getOperand(1).getReg()).addReg(MI.getOperand(2).getReg()).addMBB(BBs[1]);
      BuildMI(*BBs[1],BBs[1]->begin(), dl, get(Codasip::PHI), MI.getOperand(0).getReg()).addReg(MI.getOperand(3).getReg()).addMBB(BB).addReg(MI.getOperand(4).getReg()).addMBB(BBs[0]);
      MI.eraseFromParent();
      BB = BBs[1];
      break;
    }
    case Codasip::rule_SELECT_12:
    {
      MachineBasicBlock *BBs[2];
      GetNextBB(BB,BBs,MIp);
      BuildMI(MB,MBI,dl, get(Codasip::i_bgt_alias__xpr__xpr__rel_addr12__swappedCmpClone0__)).addReg(MI.getOperand(1).getReg()).addReg(MI.getOperand(2).getReg()).addMBB(BBs[1]);
      BuildMI(*BBs[1],BBs[1]->begin(), dl, get(Codasip::PHI), MI.getOperand(0).getReg()).addReg(MI.getOperand(3).getReg()).addMBB(BB).addReg(MI.getOperand(4).getReg()).addMBB(BBs[0]);
      MI.eraseFromParent();
      BB = BBs[1];
      break;
    }
    case Codasip::rule_SELECT_13:
    {
      MachineBasicBlock *BBs[2];
      GetNextBB(BB,BBs,MIp);
      BuildMI(MB,MBI,dl, get(Codasip::i_branch__opc_bgeu__xpr__xpr__rel_addr12__)).addReg(MI.getOperand(1).getReg()).addReg(MI.getOperand(2).getReg()).addMBB(BBs[1]);
      BuildMI(*BBs[1],BBs[1]->begin(), dl, get(Codasip::PHI), MI.getOperand(0).getReg()).addReg(MI.getOperand(3).getReg()).addMBB(BB).addReg(MI.getOperand(4).getReg()).addMBB(BBs[0]);
      MI.eraseFromParent();
      BB = BBs[1];
      break;
    }
    case Codasip::rule_SELECT_14:
    {
      MachineBasicBlock *BBs[2];
      GetNextBB(BB,BBs,MIp);
      BuildMI(MB,MBI,dl, get(Codasip::i_bgtu_alias__xpr__xpr__rel_addr12__)).addReg(MI.getOperand(1).getReg()).addReg(MI.getOperand(2).getReg()).addMBB(BBs[1]);
      BuildMI(*BBs[1],BBs[1]->begin(), dl, get(Codasip::PHI), MI.getOperand(0).getReg()).addReg(MI.getOperand(3).getReg()).addMBB(BB).addReg(MI.getOperand(4).getReg()).addMBB(BBs[0]);
      MI.eraseFromParent();
      BB = BBs[1];
      break;
    }
    case Codasip::rule_SELECT_15:
    {
      MachineBasicBlock *BBs[2];
      GetNextBB(BB,BBs,MIp);
      BuildMI(MB,MBI,dl, get(Codasip::i_branch__opc_bgeu__xpr__xpr__rel_addr12__swappedCmpClone0__)).addReg(MI.getOperand(1).getReg()).addReg(MI.getOperand(2).getReg()).addMBB(BBs[1]);
      BuildMI(*BBs[1],BBs[1]->begin(), dl, get(Codasip::PHI), MI.getOperand(0).getReg()).addReg(MI.getOperand(3).getReg()).addMBB(BB).addReg(MI.getOperand(4).getReg()).addMBB(BBs[0]);
      MI.eraseFromParent();
      BB = BBs[1];
      break;
    }
    case Codasip::rule_SELECT_16:
    {
      MachineBasicBlock *BBs[2];
      GetNextBB(BB,BBs,MIp);
      BuildMI(MB,MBI,dl, get(Codasip::i_bgtu_alias__xpr__xpr__rel_addr12__swappedCmpClone0__)).addReg(MI.getOperand(1).getReg()).addReg(MI.getOperand(2).getReg()).addMBB(BBs[1]);
      BuildMI(*BBs[1],BBs[1]->begin(), dl, get(Codasip::PHI), MI.getOperand(0).getReg()).addReg(MI.getOperand(3).getReg()).addMBB(BB).addReg(MI.getOperand(4).getReg()).addMBB(BBs[0]);
      MI.eraseFromParent();
      BB = BBs[1];
      break;
    }
    case Codasip::rule_SELECT_17:
    {
      MachineBasicBlock *BBs[2];
      GetNextBB(BB,BBs,MIp);
      BuildMI(MB,MBI,dl, get(Codasip::i_bgtu_alias__xpr__x_0__rel_addr12__)).addReg(MI.getOperand(1).getReg()).addMBB(BBs[1]);
      BuildMI(*BBs[1],BBs[1]->begin(), dl, get(Codasip::PHI), MI.getOperand(0).getReg()).addReg(MI.getOperand(2).getReg()).addMBB(BB).addReg(MI.getOperand(3).getReg()).addMBB(BBs[0]);
      MI.eraseFromParent();
      BB = BBs[1];
      break;
    }
    
    case Codasip::e_movi32__:
    case Codasip::e_movi32__GA:
    case Codasip::e_movi32__ES:
    case Codasip::e_movi32__BA:
    case Codasip::e_movi32__JT:
    case Codasip::e_movi32__CP:
    {
      if (true) {
unsigned auxreg_0 = 0;
if (postRA) {
assert(RS);
auxreg_0 = RS->FindUnusedReg(&Codasip::xprRegClass);
assert(auxreg_0 && "failed to find an unused register");
}
else {
auxreg_0 = MRI.createVirtualRegister(&Codasip::xprRegClass);
}
MachineOperand op_1_0 = MachineOperand::CreateReg(auxreg_0,1);
MachineOperand op_1_1 = MI.getOperand(1);
BuildMI(MB,MBI,dl, get(Codasip::i_upper_imm__opc_lui__xpr__simm20__SYNTAX_CLONE_e_movi32__1_)).addOperand(op_1_0).addOperand(op_1_1);
MachineOperand op_2_0 = MachineOperand::CreateReg(Codasip::rf_xpr_28,1);
MachineOperand op_2_1 = MI.getOperand(1);
BuildMI(MB,MBI,dl, get(Codasip::i_alu_i__opc_ori__xpr__x_0__simm12__SYNTAX_CLONE_e_movi32__2_)).addOperand(op_2_0).addOperand(op_2_1);
MachineOperand op_3_0 = MachineOperand::CreateReg(Codasip::rf_xpr_28,1);
MachineOperand op_3_1 = MachineOperand::CreateReg(Codasip::rf_xpr_28,0);
MachineOperand op_3_2 = MachineOperand::CreateImm(20);
BuildMI(MB,MBI,dl, get(Codasip::i_shift__opc_slli__xpr__xpr__shamt__)).addOperand(op_3_0).addOperand(op_3_1).addOperand(op_3_2);
MachineOperand op_4_0 = MachineOperand::CreateReg(Codasip::rf_xpr_28,1);
MachineOperand op_4_1 = MachineOperand::CreateReg(Codasip::rf_xpr_28,0);
MachineOperand op_4_2 = MachineOperand::CreateImm(20);
BuildMI(MB,MBI,dl, get(Codasip::i_shift__opc_srli__xpr__xpr__shamt__)).addOperand(op_4_0).addOperand(op_4_1).addOperand(op_4_2);
MachineOperand op_5_0 = MI.getOperand(0);
MachineOperand op_5_2 = MachineOperand::CreateReg(auxreg_0,0,false,true);
MachineOperand op_5_1 = MachineOperand::CreateReg(Codasip::rf_xpr_28,0);
BuildMI(MB,MBI,dl, get(Codasip::i_alu__opc_or__xpr__xpr__xpr__)).addOperand(op_5_0).addOperand(op_5_1).addOperand(op_5_2);
      }
      else failed=true;
      MI.eraseFromParent();
      break;
    }
    case Codasip::i_store__opc_sw__xpr__simm12__xpr__0_SUM2REGS_EMUL_:
    {
      if (RS) {
unsigned auxreg_aux = 0;
if (postRA) {
assert(RS);
auxreg_aux = RS->FindUnusedReg(&Codasip::xprRegClass);
assert(auxreg_aux && "failed to find an unused register");
}
else {
auxreg_aux = MRI.createVirtualRegister(&Codasip::xprRegClass);
}
MachineOperand op_1_0 = MachineOperand::CreateReg(auxreg_aux,1);
MachineOperand op_1_1 = MI.getOperand(1);
MachineOperand op_1_2 = MI.getOperand(2);
BuildMI(MB,MBI,dl, get(Codasip::i_alu__opc_add__xpr__xpr__xpr__)).addOperand(op_1_0).addOperand(op_1_1).addOperand(op_1_2);
MachineOperand op_2_0 = MI.getOperand(0);
MachineOperand op_2_1 = MachineOperand::CreateReg(auxreg_aux,0,false,true);
BuildMI(MB,MBI,dl, get(Codasip::i_store__opc_sw__xpr__simm12__xpr__SPEC_CLONE_)).addOperand(op_2_0).addOperand(op_2_1);
      }
      else failed=true;
      MI.eraseFromParent();
      break;
    }
    case Codasip::i_store__opc_sw__xpr__simm12__xpr__1_BIGIMM_EMUL_:
    {
      if (RS) {
unsigned auxreg_aux = 0;
if (postRA) {
assert(RS);
auxreg_aux = RS->FindUnusedReg(&Codasip::xprRegClass);
assert(auxreg_aux && "failed to find an unused register");
}
else {
auxreg_aux = MRI.createVirtualRegister(&Codasip::xprRegClass);
}
MachineOperand op_1_0 = MachineOperand::CreateReg(auxreg_aux,1);
MachineOperand op_1_1 = MI.getOperand(2);
BuildMI(MB,MBI,dl, get(Codasip::e_movi32__)).addOperand(op_1_0).addOperand(op_1_1);
MachineOperand op_2_0 = MI.getOperand(0);
MachineOperand op_2_1 = MI.getOperand(1);
MachineOperand op_2_2 = MachineOperand::CreateReg(auxreg_aux,0,false,true);
BuildMI(MB,MBI,dl, get(Codasip::i_store__opc_sw__xpr__simm12__xpr__0_SUM2REGS_EMUL_)).addOperand(op_2_0).addOperand(op_2_1).addOperand(op_2_2);
      }
      else failed=true;
      MI.eraseFromParent();
      break;
    }
    case Codasip::i_load__opc_lw__xpr__simm12__xpr__2_SUM2REGS_EMUL_:
    {
      if (RS) {
unsigned auxreg_aux = 0;
if (postRA) {
assert(RS);
auxreg_aux = RS->FindUnusedReg(&Codasip::xprRegClass);
assert(auxreg_aux && "failed to find an unused register");
}
else {
auxreg_aux = MRI.createVirtualRegister(&Codasip::xprRegClass);
}
MachineOperand op_1_0 = MachineOperand::CreateReg(auxreg_aux,1);
MachineOperand op_1_1 = MI.getOperand(1);
MachineOperand op_1_2 = MI.getOperand(2);
BuildMI(MB,MBI,dl, get(Codasip::i_alu__opc_add__xpr__xpr__xpr__)).addOperand(op_1_0).addOperand(op_1_1).addOperand(op_1_2);
MachineOperand op_2_0 = MI.getOperand(0);
MachineOperand op_2_1 = MachineOperand::CreateReg(auxreg_aux,0,false,true);
BuildMI(MB,MBI,dl, get(Codasip::i_load__opc_lw__xpr__simm12__xpr__SPEC_CLONE_)).addOperand(op_2_0).addOperand(op_2_1);
      }
      else failed=true;
      MI.eraseFromParent();
      break;
    }
    case Codasip::i_load__opc_lw__xpr__simm12__xpr__3_BIGIMM_EMUL_:
    {
      if (RS) {
unsigned auxreg_aux = 0;
if (postRA) {
assert(RS);
auxreg_aux = RS->FindUnusedReg(&Codasip::xprRegClass);
assert(auxreg_aux && "failed to find an unused register");
}
else {
auxreg_aux = MRI.createVirtualRegister(&Codasip::xprRegClass);
}
MachineOperand op_1_0 = MachineOperand::CreateReg(auxreg_aux,1);
MachineOperand op_1_1 = MI.getOperand(2);
BuildMI(MB,MBI,dl, get(Codasip::e_movi32__)).addOperand(op_1_0).addOperand(op_1_1);
MachineOperand op_2_0 = MI.getOperand(0);
MachineOperand op_2_1 = MI.getOperand(1);
MachineOperand op_2_2 = MachineOperand::CreateReg(auxreg_aux,0,false,true);
BuildMI(MB,MBI,dl, get(Codasip::i_load__opc_lw__xpr__simm12__xpr__2_SUM2REGS_EMUL_)).addOperand(op_2_0).addOperand(op_2_1).addOperand(op_2_2);
      }
      else failed=true;
      MI.eraseFromParent();
      break;
    }
    case Codasip::i_store__opc_sw__xpr__simm12__xpr__4_BIGIMM_EMUL_:
    {
      if (RS) {
unsigned auxreg_aux = 0;
if (postRA) {
assert(RS);
auxreg_aux = RS->FindUnusedReg(&Codasip::xprRegClass);
assert(auxreg_aux && "failed to find an unused register");
}
else {
auxreg_aux = MRI.createVirtualRegister(&Codasip::xprRegClass);
}
MachineOperand op_1_0 = MachineOperand::CreateReg(auxreg_aux,1);
MachineOperand op_1_1 = MI.getOperand(2);
BuildMI(MB,MBI,dl, get(Codasip::e_movi32__)).addOperand(op_1_0).addOperand(op_1_1);
MachineOperand op_2_0 = MI.getOperand(0);
MachineOperand op_2_1 = MI.getOperand(1);
MachineOperand op_2_2 = MachineOperand::CreateReg(auxreg_aux,0,false,true);
BuildMI(MB,MBI,dl, get(Codasip::i_store__opc_sw__xpr__simm12__xpr__0_SUM2REGS_EMUL_)).addOperand(op_2_0).addOperand(op_2_1).addOperand(op_2_2);
      }
      else failed=true;
      MI.eraseFromParent();
      break;
    }
    case Codasip::i_load__opc_lw__xpr__simm12__xpr__5_BIGIMM_EMUL_:
    {
      if (RS) {
unsigned auxreg_aux = 0;
if (postRA) {
assert(RS);
auxreg_aux = RS->FindUnusedReg(&Codasip::xprRegClass);
assert(auxreg_aux && "failed to find an unused register");
}
else {
auxreg_aux = MRI.createVirtualRegister(&Codasip::xprRegClass);
}
MachineOperand op_1_0 = MachineOperand::CreateReg(auxreg_aux,1);
MachineOperand op_1_1 = MI.getOperand(2);
BuildMI(MB,MBI,dl, get(Codasip::e_movi32__)).addOperand(op_1_0).addOperand(op_1_1);
MachineOperand op_2_0 = MI.getOperand(0);
MachineOperand op_2_1 = MI.getOperand(1);
MachineOperand op_2_2 = MachineOperand::CreateReg(auxreg_aux,0,false,true);
BuildMI(MB,MBI,dl, get(Codasip::i_load__opc_lw__xpr__simm12__xpr__2_SUM2REGS_EMUL_)).addOperand(op_2_0).addOperand(op_2_1).addOperand(op_2_2);
      }
      else failed=true;
      MI.eraseFromParent();
      break;
    }
    case Codasip::i_alu_i__opc_addi__xpr__xpr__simm12__6_BIGIMM_EMUL_:
    {
      if (RS) {
unsigned auxreg_aux = 0;
if (postRA) {
assert(RS);
auxreg_aux = RS->FindUnusedReg(&Codasip::xprRegClass);
assert(auxreg_aux && "failed to find an unused register");
}
else {
auxreg_aux = MRI.createVirtualRegister(&Codasip::xprRegClass);
}
MachineOperand op_1_0 = MachineOperand::CreateReg(auxreg_aux,1);
MachineOperand op_1_1 = MI.getOperand(2);
BuildMI(MB,MBI,dl, get(Codasip::e_movi32__)).addOperand(op_1_0).addOperand(op_1_1);
MachineOperand op_2_0 = MI.getOperand(0);
MachineOperand op_2_1 = MI.getOperand(1);
MachineOperand op_2_2 = MachineOperand::CreateReg(auxreg_aux,0,false,true);
BuildMI(MB,MBI,dl, get(Codasip::i_alu__opc_add__xpr__xpr__xpr__)).addOperand(op_2_0).addOperand(op_2_1).addOperand(op_2_2);
      }
      else failed=true;
      MI.eraseFromParent();
      break;
    }
    case Codasip::i_alu_i__opc_addi__xpr__xpr__simm12__7_BIGIMM_EMUL_:
    {
      if (RS) {
unsigned auxreg_aux = 0;
if (postRA) {
assert(RS);
auxreg_aux = RS->FindUnusedReg(&Codasip::xprRegClass);
assert(auxreg_aux && "failed to find an unused register");
}
else {
auxreg_aux = MRI.createVirtualRegister(&Codasip::xprRegClass);
}
MachineOperand op_1_0 = MachineOperand::CreateReg(auxreg_aux,1);
MachineOperand op_1_1 = MI.getOperand(2);
BuildMI(MB,MBI,dl, get(Codasip::e_movi32__)).addOperand(op_1_0).addOperand(op_1_1);
MachineOperand op_2_0 = MI.getOperand(0);
MachineOperand op_2_1 = MI.getOperand(1);
MachineOperand op_2_2 = MachineOperand::CreateReg(auxreg_aux,0,false,true);
BuildMI(MB,MBI,dl, get(Codasip::i_alu__opc_add__xpr__xpr__xpr__)).addOperand(op_2_0).addOperand(op_2_1).addOperand(op_2_2);
      }
      else failed=true;
      MI.eraseFromParent();
      break;
    }
    case Codasip::i_alu_i__opc_addi__xpr__xpr__simm12__8_BIGIMM_EMUL_:
    {
      if (RS) {
unsigned auxreg_aux = 0;
if (postRA) {
assert(RS);
auxreg_aux = RS->FindUnusedReg(&Codasip::xprRegClass);
assert(auxreg_aux && "failed to find an unused register");
}
else {
auxreg_aux = MRI.createVirtualRegister(&Codasip::xprRegClass);
}
MachineOperand op_1_0 = MachineOperand::CreateReg(auxreg_aux,1);
MachineOperand op_1_1 = MI.getOperand(2);
BuildMI(MB,MBI,dl, get(Codasip::e_movi32__)).addOperand(op_1_0).addOperand(op_1_1);
MachineOperand op_2_0 = MI.getOperand(0);
MachineOperand op_2_1 = MI.getOperand(1);
MachineOperand op_2_2 = MachineOperand::CreateReg(auxreg_aux,0,false,true);
BuildMI(MB,MBI,dl, get(Codasip::i_alu__opc_add__xpr__xpr__xpr__)).addOperand(op_2_0).addOperand(op_2_1).addOperand(op_2_2);
      }
      else failed=true;
      MI.eraseFromParent();
      break;
    }
    
    default:
      return false; // like in TargetInstrInfo::expandPostRAPseudo(MBI)
  }
  // at least one side succeeded?
  if (failed)
  {
      errs() << "An emulation occured where all predicates failed.";
      abort();
  }
  // checks for post-RA
  if (postRA)
  {
    // two-address conflicts
    if (has2AdrConfl) {
      errs() << "Usage of coflicting registers in tied operands not allowed in post-RA passes";
      abort();
    }
    // check kills and edit them, if needed
    MachineBasicBlock::instr_iterator it;
    if (wasStart) {
      start = MB.instr_begin();
      it = MB.instr_begin();
    }
    else {
      it = start;
      ++it;
    }
    std::set<unsigned> kills;
    while (it != stop)
    {
      for (const MachineOperand& mo: it->operands())
      {
        if (mo.isReg() && mo.isKill()) {
          assert(!mo.isDef());
          kills.insert(mo.getReg());
        }
      }
      ++it;
    }
    --it;
    do {
      for (MachineOperand& mo: it->operands())
      {
        if (mo.isReg() && !mo.isDef())
        {
          if (kills.count(mo.getReg())) {
            mo.setIsKill(true);
            kills.erase(mo.getReg());
          }
          else {
            mo.setIsKill(false);
          }
        }
      }
    }
    while (it-- != start);
  }
  // checks for pre-RA
  else
  {
    if (postRaOnly) {
      errs() << "Non-SSA emulations aren't allowed to be used in pre-RA";
      abort();
    }
  }
  return true;
}

// Note: TargetInstrInfo::expandPostRAPseudo just returns false
bool CodasipGenInstrInfo2::expandPostRAPseudo(MachineInstr& MI) const
{
  // skip?
  switch (MI.getOpcode()) {
  case TargetOpcode::SUBREG_TO_REG:
  case TargetOpcode::COPY:
  case TargetOpcode::DBG_VALUE:
    return false;
  }
  // prepare RS
  assert(&MI);
  MachineBasicBlock* BB = MI.getParent();
  assert(BB);
  RegScavenger RS;
  RS.enterBasicBlock(*BB);
  assert(BB->getParent()->getProperties().hasProperty(MachineFunctionProperties::Property::TracksLiveness));
  RS.forward(MI);
  // RA is forbidden (in any case)
  
  if (HasCall(*BB->getParent())) {
    RS.setRegUsed(Codasip::rf_xpr_1);
  }
  
  // mark positions
  bool wasBegin = false;
  MachineBasicBlock::instr_iterator start(&MI);
  MachineBasicBlock::instr_iterator stop = start;
  assert(stop != BB->instr_end());
  ++stop;
  if (start == BB->instr_begin()) {
    wasBegin = true;
  }
  else {
    --start;
  }
  // replace
  bool check = ExpandDummiesImpl(&MI,BB,true,&RS);
  if (!check) {
    return TargetInstrInfo::expandPostRAPseudo(MI);
  }
  // recurse
  MachineBasicBlock::instr_iterator it;
  if (wasBegin) {
    it = BB->instr_begin();
  }
  else {
    it = start;
    ++it;
  }
  while (it != stop)
  {
    assert(it != BB->instr_end());
    MachineInstr& MI2 = *it;
    ++it;
    if (!MI2.isPseudo()) continue;
    expandPostRAPseudo(MI2);
  }
  return true;
}

unsigned CodasipGenInstrInfo2::GetJumpWidth(int op, bool &isAbsolute) const
{
  switch (op)
  {
    case Codasip::i_call_reg_alias__xpr__:
      isAbsolute = 1;
      return 32;
    case Codasip::i_jr_alias__xpr__:
      isAbsolute = 1;
      return 32;
    case Codasip::i_ret_alias__:
      isAbsolute = 1;
      return 32;
    case Codasip::i_call_alias__rel_addr20__:
    case Codasip::i_call_alias__rel_addr20__ES:
    case Codasip::i_call_alias__rel_addr20__BA:
      isAbsolute = 0;
      return 21;
    case Codasip::i_j_alias__rel_addr20__:
      isAbsolute = 0;
      return 21;
    case Codasip::i_jal__opc_jal__x_0__rel_addr20__:
      isAbsolute = 0;
      return 21;
    case Codasip::i_jal__opc_jal__xpr__rel_addr20__:
      isAbsolute = 0;
      return 21;
    case Codasip::i_beqz_alias__x_0__rel_addr12__:
      isAbsolute = 0;
      return 13;
    case Codasip::i_beqz_alias__xpr__rel_addr12__:
      isAbsolute = 0;
      return 13;
    case Codasip::i_bgez_alias__x_0__rel_addr12__:
      isAbsolute = 0;
      return 13;
    case Codasip::i_bgez_alias__xpr__rel_addr12__:
      isAbsolute = 0;
      return 13;
    case Codasip::i_bgt_alias__x_0__xpr__rel_addr12__:
      isAbsolute = 0;
      return 13;
    case Codasip::i_bgt_alias__xpr__x_0__rel_addr12__:
      isAbsolute = 0;
      return 13;
    case Codasip::i_bgt_alias__xpr__xpr__rel_addr12__:
      isAbsolute = 0;
      return 13;
    case Codasip::i_bgt_alias__xpr__xpr__rel_addr12__swappedCmpClone0__:
      isAbsolute = 0;
      return 13;
    case Codasip::i_bgtu_alias__xpr__x_0__rel_addr12__:
      isAbsolute = 0;
      return 13;
    case Codasip::i_bgtu_alias__xpr__xpr__rel_addr12__:
      isAbsolute = 0;
      return 13;
    case Codasip::i_bgtu_alias__xpr__xpr__rel_addr12__swappedCmpClone0__:
      isAbsolute = 0;
      return 13;
    case Codasip::i_bgtz_alias__xpr__rel_addr12__:
      isAbsolute = 0;
      return 13;
    case Codasip::i_ble_alias__x_0__x_0__rel_addr12__:
      isAbsolute = 0;
      return 13;
    case Codasip::i_ble_alias__x_0__xpr__rel_addr12__:
      isAbsolute = 0;
      return 13;
    case Codasip::i_ble_alias__xpr__x_0__rel_addr12__:
      isAbsolute = 0;
      return 13;
    case Codasip::i_ble_alias__xpr__xpr__rel_addr12__:
      isAbsolute = 0;
      return 13;
    case Codasip::i_ble_alias__xpr__xpr__rel_addr12__swappedCmpClone0__:
      isAbsolute = 0;
      return 13;
    case Codasip::i_bleu_alias__x_0__xpr__rel_addr12__:
      isAbsolute = 0;
      return 13;
    case Codasip::i_bleu_alias__xpr__xpr__rel_addr12__:
      isAbsolute = 0;
      return 13;
    case Codasip::i_bleu_alias__xpr__xpr__rel_addr12__swappedCmpClone0__:
      isAbsolute = 0;
      return 13;
    case Codasip::i_blez_alias__x_0__rel_addr12__:
      isAbsolute = 0;
      return 13;
    case Codasip::i_blez_alias__xpr__rel_addr12__:
      isAbsolute = 0;
      return 13;
    case Codasip::i_bltz_alias__xpr__rel_addr12__:
      isAbsolute = 0;
      return 13;
    case Codasip::i_bnez_alias__xpr__rel_addr12__:
      isAbsolute = 0;
      return 13;
    case Codasip::i_branch__opc_beq__x_0__x_0__rel_addr12__:
      isAbsolute = 0;
      return 13;
    case Codasip::i_branch__opc_beq__x_0__xpr__rel_addr12__:
      isAbsolute = 0;
      return 13;
    case Codasip::i_branch__opc_beq__xpr__x_0__rel_addr12__:
      isAbsolute = 0;
      return 13;
    case Codasip::i_branch__opc_beq__xpr__xpr__rel_addr12__:
      isAbsolute = 0;
      return 13;
    case Codasip::i_branch__opc_bge__x_0__x_0__rel_addr12__:
      isAbsolute = 0;
      return 13;
    case Codasip::i_branch__opc_bge__x_0__xpr__rel_addr12__:
      isAbsolute = 0;
      return 13;
    case Codasip::i_branch__opc_bge__xpr__x_0__rel_addr12__:
      isAbsolute = 0;
      return 13;
    case Codasip::i_branch__opc_bge__xpr__xpr__rel_addr12__:
      isAbsolute = 0;
      return 13;
    case Codasip::i_branch__opc_bge__xpr__xpr__rel_addr12__swappedCmpClone0__:
      isAbsolute = 0;
      return 13;
    case Codasip::i_branch__opc_bgeu__x_0__x_0__rel_addr12__:
      isAbsolute = 0;
      return 13;
    case Codasip::i_branch__opc_bgeu__x_0__xpr__rel_addr12__:
      isAbsolute = 0;
      return 13;
    case Codasip::i_branch__opc_bgeu__xpr__x_0__rel_addr12__:
      isAbsolute = 0;
      return 13;
    case Codasip::i_branch__opc_bgeu__xpr__xpr__rel_addr12__:
      isAbsolute = 0;
      return 13;
    case Codasip::i_branch__opc_bgeu__xpr__xpr__rel_addr12__swappedCmpClone0__:
      isAbsolute = 0;
      return 13;
    case Codasip::i_branch__opc_blt__x_0__xpr__rel_addr12__:
      isAbsolute = 0;
      return 13;
    case Codasip::i_branch__opc_blt__xpr__x_0__rel_addr12__:
      isAbsolute = 0;
      return 13;
    case Codasip::i_branch__opc_blt__xpr__xpr__rel_addr12__:
      isAbsolute = 0;
      return 13;
    case Codasip::i_branch__opc_blt__xpr__xpr__rel_addr12__swappedCmpClone0__:
      isAbsolute = 0;
      return 13;
    case Codasip::i_branch__opc_bltu__x_0__xpr__rel_addr12__:
      isAbsolute = 0;
      return 13;
    case Codasip::i_branch__opc_bltu__xpr__xpr__rel_addr12__:
      isAbsolute = 0;
      return 13;
    case Codasip::i_branch__opc_bltu__xpr__xpr__rel_addr12__swappedCmpClone0__:
      isAbsolute = 0;
      return 13;
    case Codasip::i_branch__opc_bne__x_0__xpr__rel_addr12__:
      isAbsolute = 0;
      return 13;
    case Codasip::i_branch__opc_bne__xpr__x_0__rel_addr12__:
      isAbsolute = 0;
      return 13;
    case Codasip::i_branch__opc_bne__xpr__xpr__rel_addr12__:
      isAbsolute = 0;
      return 13;
    case Codasip::i_jalr__opc_jalr__x_0__rel_jalr_addr12__x_0__:
      isAbsolute = 1;
      return 12;
    case Codasip::i_jalr__opc_jalr__xpr__rel_jalr_addr12__x_0__:
      isAbsolute = 1;
      return 12;
    case Codasip::i_jr_alias__xpr__TAILCALL_CLONE_:
      isAbsolute = 1;
      return 32;
    case Codasip::i_ret_alias__TAILCALL_CLONE_:
      isAbsolute = 1;
      return 32;
    case Codasip::i_j_alias__rel_addr20__TAILCALL_CLONE_:
    case Codasip::i_j_alias__rel_addr20__TAILCALL_CLONE_ES:
    case Codasip::i_j_alias__rel_addr20__TAILCALL_CLONE_BA:
      isAbsolute = 0;
      return 21;
    case Codasip::i_jal__opc_jal__x_0__rel_addr20__TAILCALL_CLONE_:
    case Codasip::i_jal__opc_jal__x_0__rel_addr20__TAILCALL_CLONE_ES:
    case Codasip::i_jal__opc_jal__x_0__rel_addr20__TAILCALL_CLONE_BA:
      isAbsolute = 0;
      return 21;
    case Codasip::i_beqz_alias__x_0__rel_addr12__TAILCALL_CLONE_:
    case Codasip::i_beqz_alias__x_0__rel_addr12__TAILCALL_CLONE_ES:
    case Codasip::i_beqz_alias__x_0__rel_addr12__TAILCALL_CLONE_BA:
      isAbsolute = 0;
      return 13;
    case Codasip::i_bgez_alias__x_0__rel_addr12__TAILCALL_CLONE_:
    case Codasip::i_bgez_alias__x_0__rel_addr12__TAILCALL_CLONE_ES:
    case Codasip::i_bgez_alias__x_0__rel_addr12__TAILCALL_CLONE_BA:
      isAbsolute = 0;
      return 13;
    case Codasip::i_ble_alias__x_0__x_0__rel_addr12__TAILCALL_CLONE_:
    case Codasip::i_ble_alias__x_0__x_0__rel_addr12__TAILCALL_CLONE_ES:
    case Codasip::i_ble_alias__x_0__x_0__rel_addr12__TAILCALL_CLONE_BA:
      isAbsolute = 0;
      return 13;
    case Codasip::i_blez_alias__x_0__rel_addr12__TAILCALL_CLONE_:
    case Codasip::i_blez_alias__x_0__rel_addr12__TAILCALL_CLONE_ES:
    case Codasip::i_blez_alias__x_0__rel_addr12__TAILCALL_CLONE_BA:
      isAbsolute = 0;
      return 13;
    case Codasip::i_branch__opc_beq__x_0__x_0__rel_addr12__TAILCALL_CLONE_:
    case Codasip::i_branch__opc_beq__x_0__x_0__rel_addr12__TAILCALL_CLONE_ES:
    case Codasip::i_branch__opc_beq__x_0__x_0__rel_addr12__TAILCALL_CLONE_BA:
      isAbsolute = 0;
      return 13;
    case Codasip::i_branch__opc_bge__x_0__x_0__rel_addr12__TAILCALL_CLONE_:
    case Codasip::i_branch__opc_bge__x_0__x_0__rel_addr12__TAILCALL_CLONE_ES:
    case Codasip::i_branch__opc_bge__x_0__x_0__rel_addr12__TAILCALL_CLONE_BA:
      isAbsolute = 0;
      return 13;
    case Codasip::i_branch__opc_bgeu__x_0__x_0__rel_addr12__TAILCALL_CLONE_:
    case Codasip::i_branch__opc_bgeu__x_0__x_0__rel_addr12__TAILCALL_CLONE_ES:
    case Codasip::i_branch__opc_bgeu__x_0__x_0__rel_addr12__TAILCALL_CLONE_BA:
      isAbsolute = 0;
      return 13;
    case Codasip::i_branch__opc_bgeu__xpr__x_0__rel_addr12__TAILCALL_CLONE_:
    case Codasip::i_branch__opc_bgeu__xpr__x_0__rel_addr12__TAILCALL_CLONE_ES:
    case Codasip::i_branch__opc_bgeu__xpr__x_0__rel_addr12__TAILCALL_CLONE_BA:
      isAbsolute = 0;
      return 13;
    case Codasip::i_jalr__opc_jalr__x_0__rel_jalr_addr12__x_0__TAILCALL_CLONE_:
    case Codasip::i_jalr__opc_jalr__x_0__rel_jalr_addr12__x_0__TAILCALL_CLONE_ES:
    case Codasip::i_jalr__opc_jalr__x_0__rel_jalr_addr12__x_0__TAILCALL_CLONE_BA:
      isAbsolute = 1;
      return 12;
    
    default:
      // not a direct jump
      return 0;
  }
}

static inline unsigned computeDistanceDown(MachineFunction &F, MachineFunction::iterator FI, MachineBasicBlock::instr_iterator I, MachineBasicBlock *dest)
{
  // is it to the beginning of the current BB?
  if (&(*FI)==dest) return 0;
  // continue down
  unsigned dist = 0;
  while (FI != F.end())
  {
    // are we at the beginning of the target block?
    if (&(*FI)==dest) {
      assert(I==FI->instr_begin());
      return dist;
    }
    // iterate through the block
    for (; I != FI->instr_end(); ++I)
    {
      dist += GetEncodingSize(I);
    }
    // shift the iterators
    ++FI;
    if (FI != F.end()) {
      I = FI->instr_begin();
    }
  }
  // not found
  return 0;
}

static inline unsigned computeDistanceUp(MachineFunction &F, MachineFunction::iterator FI, MachineBasicBlock::instr_iterator II, MachineBasicBlock *dest)
{
  unsigned dist = 0;
  // compute the distance to the beginning of the current block
  for (MachineBasicBlock::instr_iterator I=FI->instr_begin(); I!=II; ++I)
  {
    assert(I != FI->instr_end());
    dist += GetEncodingSize(I);
  }
  // is this it?
  if (&(*FI)==dest) return dist;
  // compute the remaining blocks
  while (FI != F.begin())
  {
    // next block
    --FI;
    // sum this block
    for (MachineBasicBlock::instr_iterator I=FI->instr_begin(); I!=FI->instr_end(); ++I)
    {
      dist += GetEncodingSize(I);
    }
    // is this it?
    if (&(*FI)==dest) return dist;
  }
  return 0;
}

unsigned ComputeDistance(MachineFunction &F, MachineFunction::iterator FI, MachineBasicBlock::instr_iterator I, MachineBasicBlock *dest)
{
  unsigned ld = computeDistanceDown(F,FI,I,dest);
  unsigned lu = computeDistanceUp(F,FI,I,dest);
  assert(!ld || !lu);
  return ld|lu;
}

// Print warning - only once.
inline static void ZeroSizeWarning(const MachineBasicBlock::instr_iterator &I)
{
  // Was there a zero-sized instruction warning already?
  static bool visited = false;
  if (visited) return;
  // is this truly one of our instructions?
  if (!(I->getOpcode()>Codasip::CALLSTART && I->getOpcode()<Codasip::INSTRUCTION_LIST_END)) return;
  // mark
  visited = true;
  // Print warning.
  errs() << "Instructions without defined coding size encountered. Check of lengths of jumps won't be accurate.\n";
}

unsigned GetEncodingSize(const MachineBasicBlock::instr_iterator &I)
{
  const MCInstrDesc &dsc = I->getDesc();
  // is this inline asm?
  if (I->getOpcode()==Codasip::INLINEASM)
  {
    const MachineOperand &op = I->getOperand(0);
    assert(op.getType()==MachineOperand::MO_ExternalSymbol);
    const char *text = op.getSymbolName();
    // count lines
    unsigned cnt = 1;
    for (unsigned i=0; text[i]; ++i)
    {
      if (text[i]=='\n') ++cnt;
    }
    return cnt*4;
  }
  if (I->isCopy()) return 4;
  // continue normally
  if (!dsc.getSize()) ZeroSizeWarning(I); 
  return dsc.getSize();
}

void CodasipGenInstrInfo2::GetImmProperties(unsigned opCode, unsigned opNum, int& width, bool& sign, int& trunc) const
{
  switch (opCode)
  {
    case Codasip::i_alu_i__opc_addi__xpr__x_0__simm12__:
    switch (opNum) {
    case 1: width = 12; sign = 1; trunc = 0; break;
    }
    break;
    case Codasip::i_alu_i__opc_addi__xpr__xpr__simm12__:
    switch (opNum) {
    case 2: width = 12; sign = 1; trunc = 0; break;
    }
    break;
    case Codasip::i_alu_i__opc_andi__xpr__xpr__simm12__:
    switch (opNum) {
    case 2: width = 12; sign = 1; trunc = 0; break;
    }
    break;
    case Codasip::i_alu_i__opc_ori__xpr__x_0__simm12__:
    switch (opNum) {
    case 1: width = 12; sign = 1; trunc = 0; break;
    }
    break;
    case Codasip::i_alu_i__opc_ori__xpr__xpr__simm12__:
    switch (opNum) {
    case 2: width = 12; sign = 1; trunc = 0; break;
    }
    break;
    case Codasip::i_alu_i__opc_slti__xpr__x_0__simm12__:
    switch (opNum) {
    case 1: width = 12; sign = 1; trunc = 0; break;
    }
    break;
    case Codasip::i_alu_i__opc_slti__xpr__xpr__simm12__:
    switch (opNum) {
    case 2: width = 12; sign = 1; trunc = 0; break;
    }
    break;
    case Codasip::i_alu_i__opc_sltiu__xpr__x_0__simm12__:
    switch (opNum) {
    case 1: width = 12; sign = 1; trunc = 0; break;
    }
    break;
    case Codasip::i_alu_i__opc_sltiu__xpr__xpr__simm12__:
    switch (opNum) {
    case 2: width = 12; sign = 1; trunc = 0; break;
    }
    break;
    case Codasip::i_alu_i__opc_xori__xpr__x_0__simm12__:
    switch (opNum) {
    case 1: width = 12; sign = 1; trunc = 0; break;
    }
    break;
    case Codasip::i_alu_i__opc_xori__xpr__xpr__simm12__:
    switch (opNum) {
    case 2: width = 12; sign = 1; trunc = 0; break;
    }
    break;
    case Codasip::i_li_alias__xpr__simm12__:
    switch (opNum) {
    case 1: width = 12; sign = 1; trunc = 0; break;
    }
    break;
    case Codasip::i_load__opc_lb__x_0__simm12__x_0__:
    switch (opNum) {
    case 0: width = 12; sign = 1; trunc = 0; break;
    }
    break;
    case Codasip::i_load__opc_lb__x_0__simm12__xpr__:
    switch (opNum) {
    case 1: width = 12; sign = 1; trunc = 0; break;
    }
    break;
    case Codasip::i_load__opc_lb__xpr__simm12__x_0__:
    switch (opNum) {
    case 1: width = 12; sign = 1; trunc = 0; break;
    }
    break;
    case Codasip::i_load__opc_lb__xpr__simm12__x_0__AEXT_CLONE_:
    switch (opNum) {
    case 1: width = 12; sign = 1; trunc = 0; break;
    }
    break;
    case Codasip::i_load__opc_lb__xpr__simm12__xpr__:
    switch (opNum) {
    case 2: width = 12; sign = 1; trunc = 0; break;
    }
    break;
    case Codasip::i_load__opc_lb__xpr__simm12__xpr__AEXT_CLONE_:
    switch (opNum) {
    case 2: width = 12; sign = 1; trunc = 0; break;
    }
    break;
    case Codasip::i_load__opc_lbu__x_0__simm12__x_0__:
    switch (opNum) {
    case 0: width = 12; sign = 1; trunc = 0; break;
    }
    break;
    case Codasip::i_load__opc_lbu__x_0__simm12__xpr__:
    switch (opNum) {
    case 1: width = 12; sign = 1; trunc = 0; break;
    }
    break;
    case Codasip::i_load__opc_lbu__xpr__simm12__x_0__:
    switch (opNum) {
    case 1: width = 12; sign = 1; trunc = 0; break;
    }
    break;
    case Codasip::i_load__opc_lbu__xpr__simm12__xpr__:
    switch (opNum) {
    case 2: width = 12; sign = 1; trunc = 0; break;
    }
    break;
    case Codasip::i_load__opc_lh__x_0__simm12__x_0__:
    switch (opNum) {
    case 0: width = 12; sign = 1; trunc = 0; break;
    }
    break;
    case Codasip::i_load__opc_lh__x_0__simm12__xpr__:
    switch (opNum) {
    case 1: width = 12; sign = 1; trunc = 0; break;
    }
    break;
    case Codasip::i_load__opc_lh__xpr__simm12__x_0__:
    switch (opNum) {
    case 1: width = 12; sign = 1; trunc = 0; break;
    }
    break;
    case Codasip::i_load__opc_lh__xpr__simm12__x_0__AEXT_CLONE_:
    switch (opNum) {
    case 1: width = 12; sign = 1; trunc = 0; break;
    }
    break;
    case Codasip::i_load__opc_lh__xpr__simm12__xpr__:
    switch (opNum) {
    case 2: width = 12; sign = 1; trunc = 0; break;
    }
    break;
    case Codasip::i_load__opc_lh__xpr__simm12__xpr__AEXT_CLONE_:
    switch (opNum) {
    case 2: width = 12; sign = 1; trunc = 0; break;
    }
    break;
    case Codasip::i_load__opc_lhu__x_0__simm12__x_0__:
    switch (opNum) {
    case 0: width = 12; sign = 1; trunc = 0; break;
    }
    break;
    case Codasip::i_load__opc_lhu__x_0__simm12__xpr__:
    switch (opNum) {
    case 1: width = 12; sign = 1; trunc = 0; break;
    }
    break;
    case Codasip::i_load__opc_lhu__xpr__simm12__x_0__:
    switch (opNum) {
    case 1: width = 12; sign = 1; trunc = 0; break;
    }
    break;
    case Codasip::i_load__opc_lhu__xpr__simm12__xpr__:
    switch (opNum) {
    case 2: width = 12; sign = 1; trunc = 0; break;
    }
    break;
    case Codasip::i_load__opc_lw__x_0__simm12__x_0__:
    switch (opNum) {
    case 0: width = 12; sign = 1; trunc = 0; break;
    }
    break;
    case Codasip::i_load__opc_lw__x_0__simm12__xpr__:
    switch (opNum) {
    case 1: width = 12; sign = 1; trunc = 0; break;
    }
    break;
    case Codasip::i_load__opc_lw__xpr__simm12__x_0__:
    switch (opNum) {
    case 1: width = 12; sign = 1; trunc = 0; break;
    }
    break;
    case Codasip::i_load__opc_lw__xpr__simm12__xpr__:
    switch (opNum) {
    case 2: width = 12; sign = 1; trunc = 0; break;
    }
    break;
    case Codasip::i_shift__opc_slli__xpr__xpr__shamt__:
    switch (opNum) {
    case 2: width = 5; sign = 0; trunc = 0; break;
    }
    break;
    case Codasip::i_shift__opc_srai__xpr__xpr__shamt__:
    switch (opNum) {
    case 2: width = 5; sign = 0; trunc = 0; break;
    }
    break;
    case Codasip::i_shift__opc_srli__xpr__xpr__shamt__:
    switch (opNum) {
    case 2: width = 5; sign = 0; trunc = 0; break;
    }
    break;
    case Codasip::i_store__opc_sb__x_0__simm12__x_0__:
    switch (opNum) {
    case 0: width = 12; sign = 1; trunc = 0; break;
    }
    break;
    case Codasip::i_store__opc_sb__x_0__simm12__x_0__legalConstClonei32__:
    switch (opNum) {
    case 0: width = 12; sign = 1; trunc = 0; break;
    }
    break;
    case Codasip::i_store__opc_sb__x_0__simm12__xpr__:
    switch (opNum) {
    case 1: width = 12; sign = 1; trunc = 0; break;
    }
    break;
    case Codasip::i_store__opc_sb__x_0__simm12__xpr__legalConstClonei32__:
    switch (opNum) {
    case 1: width = 12; sign = 1; trunc = 0; break;
    }
    break;
    case Codasip::i_store__opc_sb__xpr__simm12__x_0__:
    switch (opNum) {
    case 1: width = 12; sign = 1; trunc = 0; break;
    }
    break;
    case Codasip::i_store__opc_sb__xpr__simm12__xpr__:
    switch (opNum) {
    case 2: width = 12; sign = 1; trunc = 0; break;
    }
    break;
    case Codasip::i_store__opc_sh__x_0__simm12__x_0__:
    switch (opNum) {
    case 0: width = 12; sign = 1; trunc = 0; break;
    }
    break;
    case Codasip::i_store__opc_sh__x_0__simm12__x_0__legalConstClonei32__:
    switch (opNum) {
    case 0: width = 12; sign = 1; trunc = 0; break;
    }
    break;
    case Codasip::i_store__opc_sh__x_0__simm12__xpr__:
    switch (opNum) {
    case 1: width = 12; sign = 1; trunc = 0; break;
    }
    break;
    case Codasip::i_store__opc_sh__x_0__simm12__xpr__legalConstClonei32__:
    switch (opNum) {
    case 1: width = 12; sign = 1; trunc = 0; break;
    }
    break;
    case Codasip::i_store__opc_sh__xpr__simm12__x_0__:
    switch (opNum) {
    case 1: width = 12; sign = 1; trunc = 0; break;
    }
    break;
    case Codasip::i_store__opc_sh__xpr__simm12__xpr__:
    switch (opNum) {
    case 2: width = 12; sign = 1; trunc = 0; break;
    }
    break;
    case Codasip::i_store__opc_sw__x_0__simm12__x_0__:
    switch (opNum) {
    case 0: width = 12; sign = 1; trunc = 0; break;
    }
    break;
    case Codasip::i_store__opc_sw__x_0__simm12__xpr__:
    switch (opNum) {
    case 1: width = 12; sign = 1; trunc = 0; break;
    }
    break;
    case Codasip::i_store__opc_sw__xpr__simm12__x_0__:
    switch (opNum) {
    case 1: width = 12; sign = 1; trunc = 0; break;
    }
    break;
    case Codasip::i_store__opc_sw__xpr__simm12__xpr__:
    switch (opNum) {
    case 2: width = 12; sign = 1; trunc = 0; break;
    }
    break;
    case Codasip::i_upper_imm__opc_auipc__xpr__simm20__:
    switch (opNum) {
    case 1: width = 32; sign = 0; trunc = 12; break;
    }
    break;
    case Codasip::i_upper_imm__opc_lui__xpr__simm20__:
    switch (opNum) {
    case 1: width = 32; sign = 0; trunc = 12; break;
    }
    break;
    
    default: width = -1; sign = false; trunc = -1;
      break;
  }
}

//============================================================================

// our own tweaked recognizer for PostRA
class CodasipHazardRecognizer: public ScoreboardHazardRecognizer
{
public:
  CodasipHazardRecognizer
  (const InstrItineraryData *ItinData, const ScheduleDAG *DAG, const char *ParentDebugType)
  : ScoreboardHazardRecognizer(ItinData,DAG,ParentDebugType) {}
  // detect hazard type
  HazardType getHazardType(SUnit *m, int Stalls) override
  {
    HazardType ht = ScoreboardHazardRecognizer::getHazardType(m,Stalls);
    
    if (ht==Hazard) ht=NoopHazard;
    
    return ht;
  }
};

// needs to be enabled (-post-RA-scheduler or in the subtarget)
ScheduleHazardRecognizer* CodasipGenInstrInfo2::
CreateTargetPostRAHazardRecognizer(const InstrItineraryData *II, const ScheduleDAG *DAG) const
{
  return new CodasipHazardRecognizer(II, DAG, "post-RA-sched");
}

}//namespace llvm
