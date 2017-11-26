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


// you can edit this file

#include "llvm/Target/TargetInstrInfo.h"
#include "llvm/CodeGen/MachineInstrBuilder.h"

#include "Codasip.h"
#include "CodasipTargetMachine.h"
#include "CodasipISelLowering.h"
#include "CodasipInstrInfo.h"

using namespace llvm;

CodasipTargetLowering::CodasipTargetLowering(CodasipTargetMachine &TM): CodasipGenTargetLowering(TM)
{
  // Add your definitions here:
  // - use addRegisterClass(VT,class) to make a type legal
  // - use setOperationAction(ISD,VT,legality) to overwrite operation legality
  // - use AddPromotedToType(operation,origVT,dstVT) to resolve abiguity
    //addRegisterClass(MVT::i32, NULL);//(will disable)

  // llvm won't handle extensions to attypical integers from illegal types
  for (int i=0; i<MVT::LAST_VALUETYPE; ++i)
  {
    setOperationAction(ISD::ANY_EXTEND,  MVT::SimpleValueType(i), Custom);
    setOperationAction(ISD::SIGN_EXTEND, MVT::SimpleValueType(i), Custom);
    setOperationAction(ISD::ZERO_EXTEND, MVT::SimpleValueType(i), Custom);
  }
  // this should be always legal - llvm can expand only vector shifts
  // - erase this loop if you think otherwise or change to Custom
  for (int i=MVT::FIRST_INTEGER_VALUETYPE; i<MVT::LAST_INTEGER_VALUETYPE; ++i)
  {
    setOperationAction(ISD::SHL, MVT::SimpleValueType(i), Legal);
    setOperationAction(ISD::SRL, MVT::SimpleValueType(i), Legal);
    setOperationAction(ISD::SRA, MVT::SimpleValueType(i), Legal);
  }
  // do not remove this!!
  computeRegisterProperties(TM.getRegisterInfo());
  // true for most asips...
  //setJumpIsExpensive(true);
  // uncomment this to disable tail calls
  //DisableTailCalls = true;
  // use if customCallConv was edited
  //setMinStackArgumentAlignment(X);
}

SDValue CodasipTargetLowering::LowerOperation(SDValue Op, SelectionDAG &DAG) const
{
  return HandleExtToCust(Op,DAG); //will call LowerOperation as well
  return CodasipGenTargetLowering::LowerOperation(Op,DAG);
}

EVT CodasipTargetLowering::getSetCCResultType(const DataLayout &DL, LLVMContext &Context, EVT VT) const
{
  return CodasipGenTargetLowering::getSetCCResultType(DL,Context,VT);
}

MVT::SimpleValueType CodasipTargetLowering::getCmpLibcallReturnType() const
{
  return CodasipGenTargetLowering::getCmpLibcallReturnType();
}

bool CodasipTargetLowering::isShuffleMaskLegal(const SmallVectorImpl<int> &m, EVT t) const
{
  return CodasipGenTargetLowering::isShuffleMaskLegal(m,t);
}

MachineBasicBlock* CodasipTargetLowering::EmitInstrWithCustomInserter(MachineInstr &MI, MachineBasicBlock *BB) const
{
  return CodasipGenTargetLowering::EmitInstrWithCustomInserter(MI,BB);
}

bool CodasipTargetLowering::allowsMisalignedMemoryAccesses(EVT t, unsigned as, unsigned align, bool*) const
{
  return CodasipGenTargetLowering::allowsMisalignedMemoryAccesses(t,as,align,nullptr);
}

bool CodasipTargetLowering::isOffsetFoldingLegal(const GlobalAddressSDNode* GA) const
{
#if 1
  return CodasipGenTargetLowering::isOffsetFoldingLegal(GA);
#else
  return TargetLowering::isOffsetFoldingLegal(GA);
#endif
}

// change this to add support for various special cases of auto-shift loads/stores
// the mother method returns false unless there's an instruction which has a register in the offset
bool CodasipTargetLowering::CheckIndexedOffsetLegal(LSBaseSDNode* N, const ISD::MemIndexedMode AM, const SDValue& Offset, MachineFunction &MF) const
{
  return CodasipGenTargetLowering::CheckIndexedOffsetLegal(N,AM,Offset,MF);
}
