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


#include "llvm/IR/CallingConv.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Intrinsics.h"
#include "llvm/CodeGen/CallingConvLower.h"
#include "llvm/CodeGen/MachineRegisterInfo.h"
#include "llvm/CodeGen/MachineInstrBuilder.h"
#include "llvm/CodeGen/MachineModuleInfo.h"
#include "llvm/Support/FormattedStream.h"
#include "llvm/IR/DebugInfo.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/CodeGen/PseudoSourceValue.h"
#include "llvm/Support/raw_ostream.h"
#include "codasip/Target/CodasipBaseMoiLowerer.h"

#include "Codasip.h"
#include "CodasipGenISelLowering.h"
#include "CodasipMachineFunction.h"
#include "CodasipTargetMachine.h"
#include "CodasipTargetObjectFile.h"
#include "CodasipGenRegisterInfo.h"
#include "CodasipInstructionSemantics.h"

#include <map>
#include <cstdlib>
#include <cstdio>
#include <iostream>

using namespace llvm;

#include "CodasipGenCallingConv.inc"

// turn of optimization on windows, too long function
#ifdef _WIN32
  #pragma optimize("", off)	// disable global optimization, this will increase compilation times 8x-10x
#endif
// init legalities
CodasipGenTargetLowering::CodasipGenTargetLowering(CodasipTargetMachine &TM): CodasipBaseTargetLowering(TM)
{
  addRegisterClass(MVT::i32, &Codasip::xprRegClass);

  setOperationAction(ISD::ADD,MVT::i32,Legal);
  setOperationAction(ISD::SUB,MVT::i32,Legal);
  setOperationAction(ISD::MUL,MVT::i32,Expand);
  setOperationAction(ISD::SDIV,MVT::i32,Expand);
  setOperationAction(ISD::UDIV,MVT::i32,Expand);
  setOperationAction(ISD::SREM,MVT::i32,Expand);
  setOperationAction(ISD::UREM,MVT::i32,Expand);
  setOperationAction(ISD::SMUL_LOHI,MVT::i32,Expand);
  setOperationAction(ISD::UMUL_LOHI,MVT::i32,Expand);
  setOperationAction(ISD::SDIVREM,MVT::i32,Expand);
  setOperationAction(ISD::UDIVREM,MVT::i32,Expand);
  setOperationAction(ISD::ADDC,MVT::i32,Expand);
  setOperationAction(ISD::SUBC,MVT::i32,Expand);
  setOperationAction(ISD::ADDE,MVT::i32,Expand);
  setOperationAction(ISD::SUBE,MVT::i32,Expand);
  setOperationAction(ISD::SADDO,MVT::i32,Expand);
  setOperationAction(ISD::UADDO,MVT::i32,Expand);
  setOperationAction(ISD::SSUBO,MVT::i32,Expand);
  setOperationAction(ISD::USUBO,MVT::i32,Expand);
  setOperationAction(ISD::SMULO,MVT::i32,Expand);
  setOperationAction(ISD::UMULO,MVT::i32,Expand);
  setOperationAction(ISD::FADD,MVT::i32,Expand);
  setOperationAction(ISD::FSUB,MVT::i32,Expand);
  setOperationAction(ISD::FMUL,MVT::i32,Expand);
  setOperationAction(ISD::FDIV,MVT::i32,Expand);
  setOperationAction(ISD::FREM,MVT::i32,Expand);
  setOperationAction(ISD::FMA,MVT::i32,Expand);
  setOperationAction(ISD::INSERT_VECTOR_ELT,MVT::i32,Expand);
  setOperationAction(ISD::EXTRACT_VECTOR_ELT,MVT::i32,Expand);
  setOperationAction(ISD::INSERT_SUBVECTOR,MVT::i32,Expand);
  setOperationAction(ISD::EXTRACT_SUBVECTOR,MVT::i32,Expand);
  setOperationAction(ISD::VECTOR_SHUFFLE,MVT::i32,Expand);
  setOperationAction(ISD::MULHU,MVT::i32,Expand);
  setOperationAction(ISD::MULHS,MVT::i32,Expand);
  setOperationAction(ISD::AND,MVT::i32,Legal);
  setOperationAction(ISD::OR,MVT::i32,Legal);
  setOperationAction(ISD::XOR,MVT::i32,Legal);
  setOperationAction(ISD::SHL,MVT::i32,Legal);
  setOperationAction(ISD::SRA,MVT::i32,Legal);
  setOperationAction(ISD::SRL,MVT::i32,Legal);
  setOperationAction(ISD::ROTL,MVT::i32,Expand);
  setOperationAction(ISD::ROTR,MVT::i32,Expand);
  setOperationAction(ISD::BSWAP,MVT::i32,Expand);
  setOperationAction(ISD::CTTZ,MVT::i32,Expand);
  setOperationAction(ISD::CTLZ,MVT::i32,Expand);
  setOperationAction(ISD::CTPOP,MVT::i32,Expand);
  setOperationAction(ISD::SHL_PARTS,MVT::i32,Expand);
  setOperationAction(ISD::SRA_PARTS,MVT::i32,Expand);
  setOperationAction(ISD::SRL_PARTS,MVT::i32,Expand);
  setOperationAction(ISD::SIGN_EXTEND,MVT::i32,Expand);
  setOperationAction(ISD::ZERO_EXTEND,MVT::i32,Expand);
  setOperationAction(ISD::ANY_EXTEND,MVT::i32,Expand);
  setOperationAction(ISD::TRUNCATE,MVT::i32,Expand);
  setOperationAction(ISD::SINT_TO_FP,MVT::i32,Expand);
  setOperationAction(ISD::UINT_TO_FP,MVT::i32,Expand);
  setOperationAction(ISD::FP_TO_SINT,MVT::i32,Expand);
  setOperationAction(ISD::FP_TO_UINT,MVT::i32,Expand);
  setOperationAction(ISD::FP_ROUND,MVT::i32,Expand);
  setOperationAction(ISD::FLT_ROUNDS_,MVT::i32,Expand);
  setOperationAction(ISD::FP_ROUND_INREG,MVT::i32,Expand);
  setOperationAction(ISD::FP_EXTEND,MVT::i32,Expand);
  setOperationAction(ISD::BITCAST,MVT::i32,Expand);
  setOperationAction(ISD::FP16_TO_FP,MVT::i32,Expand);
  setOperationAction(ISD::FP_TO_FP16,MVT::i32,Expand);
  setOperationAction(ISD::FNEG,MVT::i32,Expand);
  setOperationAction(ISD::FABS,MVT::i32,Expand);
  setOperationAction(ISD::FSQRT,MVT::i32,Expand);
  setOperationAction(ISD::FSIN,MVT::i32,Expand);
  setOperationAction(ISD::FCOS,MVT::i32,Expand);
  setOperationAction(ISD::FPOWI,MVT::i32,Expand);
  setOperationAction(ISD::FPOW,MVT::i32,Expand);
  setOperationAction(ISD::FLOG,MVT::i32,Expand);
  setOperationAction(ISD::FLOG2,MVT::i32,Expand);
  setOperationAction(ISD::FLOG10,MVT::i32,Expand);
  setOperationAction(ISD::FEXP,MVT::i32,Expand);
  setOperationAction(ISD::FEXP2,MVT::i32,Expand);
  setOperationAction(ISD::FCEIL,MVT::i32,Expand);
  setOperationAction(ISD::FTRUNC,MVT::i32,Expand);
  setOperationAction(ISD::FRINT,MVT::i32,Expand);
  setOperationAction(ISD::FNEARBYINT,MVT::i32,Expand);
  setOperationAction(ISD::FFLOOR,MVT::i32,Expand);
  setOperationAction(ISD::DYNAMIC_STACKALLOC,MVT::i32,Expand);
  setOperationAction(ISD::BR,MVT::Other,Legal);
  setOperationAction(ISD::BR,MVT::i32,Expand);
  setOperationAction(ISD::BRIND,MVT::Other,Legal);
  setOperationAction(ISD::BRIND,MVT::i32,Legal);

  setTruncStoreAction(MVT::i32,MVT::i1,Expand);
  setTruncStoreAction(MVT::i32,MVT::i8,Legal);
  setTruncStoreAction(MVT::i32,MVT::i16,Legal);
  setTruncStoreAction(MVT::f32,MVT::f16,Custom);
  setTruncStoreAction(MVT::f64,MVT::f16,Custom);
  setTruncStoreAction(MVT::f64,MVT::f32,Custom);
  setTruncStoreAction(MVT::f80,MVT::f16,Custom);
  setTruncStoreAction(MVT::f80,MVT::f32,Custom);
  setTruncStoreAction(MVT::f80,MVT::f64,Custom);
  setTruncStoreAction(MVT::f128,MVT::f16,Custom);
  setTruncStoreAction(MVT::f128,MVT::f32,Custom);
  setTruncStoreAction(MVT::f128,MVT::f64,Custom);
  setTruncStoreAction(MVT::f128,MVT::f80,Custom);

  setLoadExtAction(ISD::EXTLOAD,MVT::i8,MVT::i1,Promote);
  setLoadExtAction(ISD::EXTLOAD,MVT::i16,MVT::i1,Promote);
  setLoadExtAction(ISD::EXTLOAD,MVT::i32,MVT::i1,Promote);
  setLoadExtAction(ISD::EXTLOAD,MVT::i32,MVT::i8,Legal);
  setLoadExtAction(ISD::EXTLOAD,MVT::i32,MVT::i16,Legal);
  setLoadExtAction(ISD::EXTLOAD,MVT::i64,MVT::i1,Promote);
  setLoadExtAction(ISD::SEXTLOAD,MVT::i8,MVT::i1,Promote);
  setLoadExtAction(ISD::SEXTLOAD,MVT::i16,MVT::i1,Promote);
  setLoadExtAction(ISD::SEXTLOAD,MVT::i32,MVT::i1,Promote);
  setLoadExtAction(ISD::SEXTLOAD,MVT::i32,MVT::i8,Legal);
  setLoadExtAction(ISD::SEXTLOAD,MVT::i32,MVT::i16,Legal);
  setLoadExtAction(ISD::SEXTLOAD,MVT::i64,MVT::i1,Promote);
  setLoadExtAction(ISD::ZEXTLOAD,MVT::i8,MVT::i1,Promote);
  setLoadExtAction(ISD::ZEXTLOAD,MVT::i16,MVT::i1,Promote);
  setLoadExtAction(ISD::ZEXTLOAD,MVT::i32,MVT::i1,Promote);
  setLoadExtAction(ISD::ZEXTLOAD,MVT::i32,MVT::i8,Legal);
  setLoadExtAction(ISD::ZEXTLOAD,MVT::i32,MVT::i16,Legal);
  setLoadExtAction(ISD::ZEXTLOAD,MVT::i64,MVT::i1,Promote);


  // (read by getStackPointerRegisterToSaveRestore)
  // Note: see x86 back-end - they are setting this for SP, not BP.
  setStackPointerRegisterToSaveRestore(Codasip:: rf_xpr_2 );
  // we handle these always the same way
  for (int i=0; i<MVT::LAST_VALUETYPE; ++i)
  {
    // all global symbols need to be wrapped
    setOperationAction(ISD::GlobalAddress, MVT::SimpleValueType(i), Custom);
    setOperationAction(ISD::GlobalTLSAddress, MVT::SimpleValueType(i), Custom);
    setOperationAction(ISD::ExternalSymbol, MVT::SimpleValueType(i), Custom);
    setOperationAction(ISD::JumpTable, MVT::SimpleValueType(i), Custom);
    setOperationAction(ISD::ConstantPool, MVT::SimpleValueType(i), Custom);
    setOperationAction(ISD::BlockAddress, MVT::SimpleValueType(i), Custom);
    // br_jt always expand
    setOperationAction(ISD::BR_JT, MVT::SimpleValueType(i), Expand);
    // we don't use br_cc and sel_cc
    setOperationAction(ISD::BR_CC, MVT::SimpleValueType(i), Expand);
    setOperationAction(ISD::SELECT_CC, MVT::SimpleValueType(i), Expand);
    // frame & return addr.
    setOperationAction(ISD::FRAMEADDR, MVT::SimpleValueType(i), Custom);
    setOperationAction(ISD::RETURNADDR, MVT::SimpleValueType(i), Custom);
    // "op_parts" operations are implicitly expanded
    setOperationAction(ISD::SHL_PARTS, MVT::SimpleValueType(i), Expand);
    setOperationAction(ISD::SRA_PARTS, MVT::SimpleValueType(i), Expand);
    setOperationAction(ISD::SRL_PARTS, MVT::SimpleValueType(i), Expand);
    // dynamic stack allocation (-> stacksave&stackrestore)
    setOperationAction(ISD::DYNAMIC_STACKALLOC, MVT::SimpleValueType(i), Expand);
    setOperationAction(ISD::STACKSAVE, MVT::SimpleValueType(i), Expand);
    setOperationAction(ISD::STACKRESTORE, MVT::SimpleValueType(i), Expand);
    // exceptions - not allowed
    setOperationAction(ISD::FRAME_TO_ARGS_OFFSET, MVT::SimpleValueType(i), Custom);
    setOperationAction(ISD::EH_RETURN, MVT::SimpleValueType(i), Custom);
    setOperationAction(ISD::EH_SJLJ_SETJMP, MVT::SimpleValueType(i), Custom);
    setOperationAction(ISD::EH_SJLJ_LONGJMP, MVT::SimpleValueType(i), Custom);
    setOperationAction(ISD::EH_LABEL, MVT::SimpleValueType(i), Custom);
    // zero undef variant of ctlz & cttz
    setOperationAction(ISD::CTLZ_ZERO_UNDEF, MVT::SimpleValueType(i), Expand);
    setOperationAction(ISD::CTTZ_ZERO_UNDEF, MVT::SimpleValueType(i), Expand);
    // some float ops
    setOperationAction(ISD::FCOPYSIGN, MVT::f32, Expand);
    setOperationAction(ISD::FCOPYSIGN, MVT::f64, Expand);
    setOperationAction(ISD::FGETSIGN, MVT::f32, Expand);
    setOperationAction(ISD::FGETSIGN, MVT::f64, Expand);
    // implicitly set inregs to expand, can be set to legal later
    setOperationAction(ISD::SIGN_EXTEND_INREG, MVT::SimpleValueType(i), Expand);
    // vector ops
    setOperationAction(ISD::SCALAR_TO_VECTOR, MVT::SimpleValueType(i), Expand);
    // - this even can't be legal
    setOperationAction(ISD::BUILD_VECTOR, MVT::SimpleValueType(i), Expand);
  }
  // inreg sexts
  
  // bool content settings
  setBooleanContents(UndefinedBooleanContent, UndefinedBooleanContent);
setBooleanVectorContents(UndefinedBooleanContent);
  // we need to pre-prepare intrins with varargs
  setOperationAction(ISD::INTRINSIC_WO_CHAIN,MVT::Other,Custom);
  setOperationAction(ISD::INTRINSIC_W_CHAIN,MVT::Other,Custom);
  setOperationAction(ISD::INTRINSIC_VOID,MVT::Other,Custom);
  // varargs, stacksave/restore
  setOperationAction(ISD::VASTART,MVT::Other,Custom);
  setOperationAction(ISD::VAEND,MVT::Other,Expand);
  setOperationAction(ISD::VAARG,MVT::Other,Expand);
  setOperationAction(ISD::VACOPY,MVT::Other,Expand);
  setOperationAction(ISD::STACKSAVE, MVT::Other, Expand); //(required)
  setOperationAction(ISD::STACKRESTORE, MVT::Other, Expand);
  // mem ops
  MaxStoresPerMemset = 32;
  MaxStoresPerMemsetOptSize = 4;
  MaxStoresPerMemcpy = 32;
  MaxStoresPerMemcpyOptSize = 4;
  MaxStoresPerMemmove = 32;
  MaxStoresPerMemmoveOptSize = 4;
  // custom finer grained info for indexed ops
  InitIndOffsetInfo();
  // tail calls allowed by default
  DisableTailCalls = false;
  // min argument align - corresponds with the generated call conv
  setMinStackArgumentAlignment( 4 );
  // note: setTargetDAGCombine
}
// turn on optimizations back
#ifdef _WIN32
  #pragma optimize("", on)
#endif

SDValue CodasipGenTargetLowering::
LowerCall(TargetLowering::CallLoweringInfo &CLI, SmallVectorImpl<SDValue> &InVals) const
{
  // load the info
  SelectionDAG &DAG                     = CLI.DAG;
  SDLoc &dl                             = CLI.DL;
  SmallVector<ISD::OutputArg, 32> &Outs = CLI.Outs;
  SmallVector<SDValue, 32> &OutVals     = CLI.OutVals;
  SmallVector<ISD::InputArg, 32> &Ins   = CLI.Ins;
  SDValue Chain                         = CLI.Chain;
  SDValue Callee                        = CLI.Callee;
  bool &isTailCall                      = CLI.IsTailCall;
  CallingConv::ID CallConv              = CLI.CallConv;
  bool isVarArg                         = CLI.IsVarArg;
  // get various metainfo
  LLVMContext &cont = *DAG.getContext();
  MachineFunction &MF = DAG.getMachineFunction();
  SmallVector<CCValAssign,16> ArgLocs;
  CCState CCInfo(CallConv, isVarArg, MF, ArgLocs, cont);
  CCInfo.AnalyzeCallOperands(Outs, CC_Codasip);
  SDValue InFlag;
  MachineFrameInfo *MFI = &MF.getFrameInfo();
  const DataLayout &td = getTargetMachine().getDataLayout();
  CodasipFunctionInfo *finfo = MF.getInfo<CodasipFunctionInfo>();
  // get call frame size in bytes (aligned to stack align)
  const unsigned stackAlign = td.getStackAlignment();
  unsigned stackParamSize = CCInfo.getNextStackOffset();
  stackParamSize += ((stackAlign-(stackParamSize%stackAlign))%stackAlign);
  // analyse tail call eligibility
  do if (isTailCall)
  {
    // explicitly disabled?
    if (DisableTailCalls) {
      isTailCall = false;
      break;
    }
    // optim level
    if (getTargetMachine().getOptLevel()==CodeGenOpt::None) {
      isTailCall = false;
      break;
    }
    // do not allow indirect
    if (Callee.getOpcode()!=ISD::GlobalAddress) {
      isTailCall = false;
      break;
    }
    // do not allow any varargs
    if (isVarArg || finfo->ArgsInfo.StackFI) {
      isTailCall = false;
      break;
    }
    // disable if either the callee or caller has a byval argument.
    const unsigned callerByValRegs = CCInfo.getInRegsParamsCount();
    if (callerByValRegs>0) {
      isTailCall = false;
      break;
    }
    for (unsigned i=0; i<Outs.size(); ++i) {
      ISD::ArgFlagsTy Flags = Outs[i].Flags;
      if (Flags.isByVal()) {
        isTailCall = false;
        break;
      }
    }
    if (!isTailCall) break;
    // no mem args either
    for (unsigned i=0; i < ArgLocs.size(); ++i)
    {
      if (ArgLocs[i].isMemLoc()) {
        isTailCall = false;
        break;
      }
    }
    if (!isTailCall) break;
    // is callee's argument area larger than the caller's?
    assert(finfo->ArgsInfo.StackOff >= 0);
    if (stackParamSize > unsigned(finfo->ArgsInfo.StackOff)) {
      isTailCall = false;
      break;
    }
  } while(false);
  // check MustTailCall
  if (!isTailCall && CLI.CS && CLI.CS->isMustTailCall()) {
    report_fatal_error("failed to perform tail call elimination on a call site marked musttail");
  }
  // deal with byvals before doing anything else
  for (unsigned i=0; i<ArgLocs.size(); ++i)
  {
    // manual handling without TD
    // caller side only - invisible for callee
    SDValue Arg = OutVals[i];
    ISD::ArgFlagsTy Flags = Outs[i].Flags;
    if (Flags.isByVal()) {
      assert(!isTailCall);
      // make place
      unsigned align = Flags.getByValAlign();
      unsigned size = Flags.getByValSize();
      if (size) {
        int FI = MFI->CreateStackObject(size,align,false);
        SDValue PtrOff = DAG.getFrameIndex(FI,getPointerTy(td,0)); //that 0 is addres space
        // determine address space
        EVT vt = Arg.getValueType();
        unsigned addressSpace = GetSpace4Vt(vt);
        finfo->SetAdrSpace(FI,addressSpace);
        // copy
        SDValue Size = DAG.getConstant(size,dl,getPointerTy(td,0),false,false);
        MachinePointerInfo dstInfo = MachinePointerInfo::getFixedStack(MF,FI);
        MachinePointerInfo srcInfo = MachinePointerInfo();
        Chain = DAG.getMemcpy(Chain,dl,PtrOff,Arg,Size,align,false,false,false,dstInfo,srcInfo);
        // replace Arg
        SmallVector<SDValue,32u> &OutVals_ = const_cast<SmallVector<SDValue,32u>&>(OutVals);
        OutVals_[i].setNode(PtrOff.getNode());
      }
    }
  }
  // how many bytes are to be pushed on the stack?
  SDValue stackOff = DAG.getIntPtrConstant(stackParamSize,dl,true);
  if (!isTailCall) {
    Chain = DAG.getCALLSEQ_START(Chain,stackOff,dl);
  }
  // operands of the call (the first two slots empty for now, we'll fill later with chain and callee)
  SmallVector<SDValue,8> Ops;
  Ops.push_back(SDValue()); Ops.push_back(SDValue());
  // deal with stack passes first
  for (int i=ArgLocs.size()-1; i>=0; --i)
  {
    SDValue Arg = OutVals[i];
    CCValAssign& VA = ArgLocs[i];
    assert(!VA.isUpperBitsInLoc());
    // is it a stack pass?
    if (VA.isMemLoc())
    {
      // memory requirements (alignment considered)
      EVT vt = Arg.getValueType();
      assert(vt.getSimpleVT()==VA.getValVT());
      Type *ty = vt.getTypeForEVT(cont);
      unsigned ArgSize = td.getTypeAllocSize(ty);
      if (!vt.isOriginal() && !vt.isByteSized()) {
        if (vt.bitsLT(MVT::i32)) 
          vt = MVT::i32;
        if (vt.bitsGT(MVT::i32))
          vt = MVT::i64;
      }
      assert(vt.isByteSized());
      // determine address space
      unsigned addressSpace = GetSpace4Vt(vt);
      // pass on stack
      if (isTailCall) {
        assert(false && "stack params not supported for tail calls");
      }
      else {
        // get index  -note: negative
        int FI = MFI->CreateFixedObject(ArgSize,VA.getLocMemOffset(),true);
        SDValue PtrOff = DAG.getFrameIndex(FI,getPointerTy(td,0));
        // mark it as out param
        finfo->MarkOutFI(FI);
        finfo->SetAdrSpace(FI,addressSpace);
        // "dummy" IR value (for MachinePointerInfo)
        FixedStackPseudoSourceValue *fspsv = new FixedStackPseudoSourceValue(FI);
        // store
        Chain = DAG.getStore(Chain,dl,Arg,PtrOff,MachinePointerInfo(fspsv));
      }
    }
    // reg pass otherwise
    else {
      assert(VA.isRegLoc());
      assert(!isVarArg && "not allowed");
    }
  }
  // now deal with registers (in natural order)
  for (unsigned i=0; i<ArgLocs.size(); ++i)
  {
    SDValue Arg = OutVals[i];
    CCValAssign &VA = ArgLocs[i];
    // unprocessed yet?
    if (VA.isRegLoc()) {
      // from now on, everything has to flagged
      Chain = DAG.getCopyToReg(Chain,dl, VA.getLocReg(),Arg,InFlag);
      InFlag = Chain.getValue(1);
      // add to ops (to keep alive)
      Ops.push_back(DAG.getRegister(VA.getLocReg(),Arg.getValueType()));
    }
  }
  // insert the call itself
  SDVTList NodeTys = DAG.getVTList(MVT::Other,MVT::Glue);
  Ops[0] = Chain;
  Ops[1] = Callee;
  if (InFlag.getNode()) Ops.push_back(InFlag);
  ArrayRef<SDValue> aref(&Ops[0],Ops.size());
  if (isTailCall) {
    Chain = DAG.getNode(CodasipISD::TailCall,dl,NodeTys,aref);
    // don't do anything else
    return Chain;
  }
  Chain = DAG.getNode(CodasipISD::Call,dl,NodeTys,aref);
  InFlag = Chain.getValue(1); // (see definition of NodeTys)
  // Create the CALLSEQ_END node.             // callee pushes nothing
  Chain = DAG.getCALLSEQ_END(Chain,stackOff, DAG.getIntPtrConstant(0,dl,true), InFlag, dl);
  InFlag = Chain.getValue(1);
  // ============= lower call result
  SmallVector<CCValAssign,16> RVLocs;
  CCState CCInfo2(CallConv, isVarArg, DAG.getMachineFunction(), RVLocs, cont);
  CCInfo2.AnalyzeCallResult(Ins,RetCC_Codasip);
  // If this is the first return lowered for this function,
  // add the regs to the livein set for the function.
  if (DAG.getMachineFunction().getRegInfo().livein_empty())
  {
    for (unsigned i=0; i<RVLocs.size(); ++i) {
      assert(RVLocs[i].isRegLoc());
      DAG.getMachineFunction().getRegInfo().addLiveIn(RVLocs[i].getLocReg());
    }
  }
  // copy the result value from register to the target
  for (unsigned i=0; i<RVLocs.size(); ++i)
  {
    assert(RVLocs[i].isRegLoc());
    Chain = DAG.getCopyFromReg(Chain,dl, RVLocs[i].getLocReg(), RVLocs[i].getValVT(), InFlag).getValue(1);
    InFlag = Chain.getValue(2);
    InVals.push_back(Chain.getValue(0));
  }
  return Chain;
}

static unsigned GetHwCl(unsigned id)
{
  switch (id)
  {
    case Codasip::xprRegClassID:
      return Codasip::rf_xprRegClassID;
    
    default:
      assert(false);
  }
  return 0;
}

SDValue CodasipGenTargetLowering::LowerFormalArguments(
SDValue Chain, CallingConv::ID CallConv, bool isVarArg, const SmallVectorImpl<ISD::InputArg> &Ins,
const SDLoc &dl, SelectionDAG &DAG, SmallVectorImpl<SDValue> &InVals) const
{
  const CodasipTargetMachine &CTM = static_cast<const CodasipTargetMachine&>(getTargetMachine());
  MachineFunction &MF = DAG.getMachineFunction();
  const Function *func = MF.getFunction();
  MachineFrameInfo *MFI = &MF.getFrameInfo();
  MachineRegisterInfo &MRI = MF.getRegInfo();
  const TargetRegisterInfo *TRI = CTM.getRegisterInfo();
  CodasipFunctionInfo *finfo = MF.getInfo<CodasipFunctionInfo>();
  const DataLayout &td = getTargetMachine().getDataLayout();
  LLVMContext &cont = *DAG.getContext();
  // Assign locations to all of the incoming arguments.
  SmallVector<CCValAssign,16> ArgLocs;
  CCState CCInfo(CallConv, isVarArg, DAG.getMachineFunction(), ArgLocs, cont);
  CCInfo.AnalyzeFormalArguments(Ins, CC_Codasip);
  // init StackOff
  finfo->ArgsInfo.StackOff = finfo->StackShift;
  finfo->ArgsInfo.StackFI = 0;
  // take all params
  for (unsigned i=0, e=ArgLocs.size(); i!=e; ++i)
  {
    CCValAssign &VA = ArgLocs[i];
    EVT vt = VA.getValVT();
    // reg params
    if (VA.isRegLoc())
    {
      // for now
      assert(!isVarArg && "not supported yet");
      // should be always full
      assert(VA.getLocInfo()==CCValAssign::Full && "my assumption was faulty");
      // add the reg as a live in (direct use wouldn't always work)
      unsigned FReg = VA.getLocReg();
      assert(TRI->isPhysicalRegister(FReg));
      assert(TRI->isInAllocatableClass(FReg));
      // get a suitable allocatable class
      const TargetRegisterClass* RC = NULL;
      for (unsigned j=0; j<TRI->getNumRegClasses(); ++j)
      {
        const TargetRegisterClass* rc = TRI->getRegClass(j);
        if (!rc->isAllocatable()) continue;
        assert(vt.isSimple());
        if (!rc->hasType(vt.getSimpleVT())) continue;
        if (!rc->contains(FReg)) continue;
        RC = rc; break;
      }
      assert(RC);
      unsigned VReg = MRI.createVirtualRegister(RC);
      MF.getRegInfo().addLiveIn(FReg,VReg);
      InVals.push_back(DAG.getCopyFromReg(Chain,dl,VReg,vt));
    }
    // mem params
    else if (VA.isMemLoc())
    {
      // memory requirements (alignment considered)
      unsigned ArgSize = td.getTypeAllocSize(vt.getTypeForEVT(cont));
      // note: (if the stack grows down) the offset is positive
      int off = VA.getLocMemOffset();
      int FI = MFI->CreateFixedObject(ArgSize,off,true);
      finfo->ArgsInfo.StackOff = off+ArgSize;
      // determine address space
      unsigned addressSpace = GetSpace4Vt(vt);
      finfo->SetAdrSpace(FI,addressSpace);
      // Create load nodes to retrieve arguments from the stack
      SDValue FIN = DAG.getFrameIndex(FI,getPointerTy(td,0));
      InVals.push_back(DAG.getLoad(vt,dl,Chain,FIN,MachinePointerInfo::getFixedStack(MF,FI)));
    }
    else
    {
      assert(false && "unreachable");
    }
  }
  // make dummy object for vastart
  if (isVarArg)
  {
      int FI = MFI->CreateFixedObject( 4 , finfo->ArgsInfo.StackOff, true);
      finfo->ArgsInfo.StackFI = FI;
      // space and mapping?
  }
  // are we returning a structure?
  if (func->hasStructRetAttr())
  {
    if (!finfo->StrctRetReg) {
      finfo->StrctRetReg = MRI.createVirtualRegister(TRI->getPointerRegClass(MF));
      assert(finfo->StrctRetReg);
    }
    SDValue Copy = DAG.getCopyToReg(DAG.getEntryNode(), dl, finfo->StrctRetReg, InVals[0]);
    Chain = DAG.getNode(ISD::TokenFactor, dl, MVT::Other, Copy, Chain);
  }
  return Chain;
}

SDValue CodasipGenTargetLowering::LowerReturn(
SDValue Chain, CallingConv::ID CallConv, bool isVarArg, const SmallVectorImpl<ISD::OutputArg> &Outs,
const SmallVectorImpl<SDValue> &OutVals, const SDLoc &dl, SelectionDAG &DAG) const
{
  // std rutine
  SmallVector<CCValAssign,16> RVLocs;
  CCState CCInfo(CallConv, isVarArg, DAG.getMachineFunction(), RVLocs, *DAG.getContext());
  CCInfo.AnalyzeReturn(Outs, RetCC_Codasip);
  MachineFunction &MF = DAG.getMachineFunction();
  CodasipFunctionInfo *finfo = MF.getInfo<CodasipFunctionInfo>();
  const DataLayout &td = getTargetMachine().getDataLayout();
  SmallVector<SDValue,8> Ops;
  Ops.push_back(SDValue());
  // store values in regs, also store meta
  SDValue Flag;
  finfo->RetRegs.reserve(RVLocs.size());
  for (unsigned i=0; i<RVLocs.size(); ++i)
  {
    assert(!MF.getFunction()->hasStructRetAttr());
    CCValAssign &VA = RVLocs[i];
    assert(VA.isRegLoc() && "Can only return in registers!");
    Chain = DAG.getCopyToReg(Chain,dl, VA.getLocReg(),OutVals[i], Flag);
    Flag = Chain.getValue(1);
    finfo->RetRegs.push_back(VA.getLocReg());
    Ops.push_back(DAG.getRegister(VA.getLocReg(), VA.getLocVT()));
  }
  // are we returning a structure?
  if (MF.getFunction()->hasStructRetAttr())
  {
    assert(RVLocs.empty());
    assert(finfo->StrctRetReg && "should have been set");
    // is this still needed?
    /*SDValue Val = DAG.getCopyFromReg(Chain, dl, finfo->StrctRetReg, MVT::$$[cpu->GetPointerType()->name$$]);
    // copy the virt reg onto first retval reg supporting ptr (or an arg reg?)
    Chain = DAG.getCopyToReg(Chain, dl, Codasip::$$(PrintFirstPtrCC(OUT);$$), Val, Flag);
    Flag = Chain.getValue(1);*/
    Ops.push_back(DAG.getRegister(finfo->StrctRetReg, getPointerTy(td,0)));
  }
  // chain and flag
  Ops[0] = Chain;
  if (Flag.getNode()) {
    Ops.push_back(Flag);
  }
  // the return itself
  ArrayRef<SDValue> aref(&Ops[0],Ops.size());
  return DAG.getNode(CodasipISD::Ret,dl,MVT::Other,aref);
}

bool CodasipGenTargetLowering::CanLowerReturn
(CallingConv::ID CallConv, MachineFunction &MF, bool isVarArg, const SmallVectorImpl<ISD::OutputArg> &Outs, LLVMContext &Context) const
{
  SmallVector<CCValAssign,16> RVLocs;
  CCState CCInfo(CallConv, isVarArg, MF, RVLocs, Context);
  return CCInfo.CheckReturn(Outs, RetCC_Codasip);
}

SDValue CodasipGenTargetLowering::LowerOperation(SDValue Op, SelectionDAG &DAG) const
{
  SDLoc dl(Op);
  MachineFunction &MF = DAG.getMachineFunction();
  CodasipFunctionInfo *FuncInfo = MF.getInfo<CodasipFunctionInfo>();
  const DataLayout &td = getTargetMachine().getDataLayout();
  SDValue res;
  switch (Op.getOpcode())
  {
    case ISD::GlobalAddress:
    {
      // This hack is needed because of LLVM's "behaviour" which creates cycles in DAGs where GAs are selected with patterns.
      // Yeah, some things simply make me stand and ponder in wonder. Especially since imms work just fine. See GenDAGISel.inc.
      // make a copy of the GA (target version)
      GlobalAddressSDNode *ga = cast<GlobalAddressSDNode>(Op);
      SDValue tga = DAG.getTargetGlobalAddress(ga->getGlobal(), dl, MVT::i32, ga->getOffset());
      // lower the original (will be done in the caller method) to wrapper, use the copy (tga) as an operand
      res = DAG.getNode(CodasipISD::GAWrap, dl, MVT::i32, tga);
      break;
    }
    case ISD::ExternalSymbol:
    {
      // same as above
      ExternalSymbolSDNode *es = cast<ExternalSymbolSDNode>(Op);
      SDValue tes = DAG.getTargetExternalSymbol(es->getSymbol(), MVT::i32);
      res = DAG.getNode(CodasipISD::GAWrap, dl, MVT::i32, tes);
      break;
    }
    case ISD::JumpTable:
    {
      JumpTableSDNode *jt = cast<JumpTableSDNode>(Op);
      SDValue tjt = DAG.getTargetJumpTable(jt->getIndex(), MVT::i32);
      res = DAG.getNode(CodasipISD::GAWrap, dl, MVT::i32, tjt);
      break;
    }
    case ISD::ConstantPool:
    {
      ConstantPoolSDNode *cp = cast<ConstantPoolSDNode>(Op);
      assert(cp);
      assert(!cp->isMachineConstantPoolEntry());
      SDValue tcp = DAG.getTargetConstantPool(cp->getConstVal(), Op.getValueType(), cp->getAlignment(), cp->getOffset());
      res = DAG.getNode(CodasipISD::GAWrap, dl, MVT::i32, tcp);
      break;
    }
    case ISD::BlockAddress:
    {
      BlockAddressSDNode *ba = cast<BlockAddressSDNode>(Op);
      assert(ba);
      SDValue tba = DAG.getBlockAddress(ba->getBlockAddress(), Op.getValueType(), 0,true);
      res = DAG.getNode(CodasipISD::GAWrap, dl, MVT::i32, tba);
      break;
    }
    case ISD::GlobalTLSAddress:
    {
      errs() << "Warning: thread local global variables aren't supported.\n";
      GlobalAddressSDNode *ga = cast<GlobalAddressSDNode>(Op);
      const GlobalVariable *gv = static_cast<const GlobalVariable*>(ga->getGlobal());
      const_cast<GlobalVariable*>(gv)->setThreadLocal(false);
      SDValue tga = DAG.getTargetGlobalAddress(gv, dl, MVT::i32, ga->getOffset());
      res = DAG.getNode(CodasipISD::GAWrap, dl, MVT::i32, tga);
      break;
    }
    // frame and return address
    case ISD::FRAMEADDR:
    case ISD::RETURNADDR:
    {
      // mark in meta-info
      FuncInfo->HasGetAdr = true;
      // check the operand - only 0 is accepted
      const SDValue &op = Op.getOperand(0);
      assert(op.getOpcode()==ISD::Constant && "Invalid return/frame address usage.");
      const ConstantSDNode *hlp = static_cast<const ConstantSDNode*>(op.getNode());
      if (hlp->getZExtValue()) {
        errs() << "Builtin return/frame address can be only used with parameter 0.\n";
        exit(1);
      }
      // continue
      if (Op.getOpcode()==ISD::FRAMEADDR) {
        // a simple copy from the corresponging reg
        res = DAG.getCopyFromReg(DAG.getEntryNode(), dl, Codasip::rf_xpr_8, MVT::i32);
      }
      else {
      
        // we have to load the backup
        res = DAG.getCopyFromReg(DAG.getEntryNode(), dl, Codasip::rf_xpr_8, MVT::i32);
        res = DAG.getNode(ISD::ADD,dl,MVT::i32, res,DAG.getIntPtrConstant(4,dl,false));
        res = DAG.getLoad(MVT::i32, dl,DAG.getEntryNode(),res,MachinePointerInfo());
      
      }
      break;
    }
    // varargs
    case ISD::VASTART:
    {
      SDValue FI = DAG.getFrameIndex(FuncInfo->ArgsInfo.StackFI, getPointerTy(td,0));
      // vastart just stores the address of the VarArgsFrameIndex slot into the memory location argument.
      const Value *SV = cast<SrcValueSDNode>(Op.getOperand(2))->getValue();
      res = DAG.getStore(Op.getOperand(0),dl,FI,Op.getOperand(1),MachinePointerInfo(SV));
      break;
    }
    // exceptions
    case ISD::FRAME_TO_ARGS_OFFSET:
    case ISD::EH_RETURN:
    case ISD::EH_SJLJ_SETJMP:
    case ISD::EH_SJLJ_LONGJMP:
    case ISD::EH_LABEL:
      errs() << "Exceptions are not supported at this moment. Please run clang with -fno-exceptions.\n";
      exit(1);
    // Error message for non-legal (trunc/ext)store/load
    case ISD::STORE:
    case ISD::LOAD:
      errs() << "This program requires an unimplemented load/store operation (see the log from backendgen).\n";
      errs() << "Please do implement custom lowering in CodasipTargetLowering::LowerOperation.\n";
      exit(1);
    // intrinsics
    case ISD::INTRINSIC_VOID:
    case ISD::INTRINSIC_W_CHAIN:
    case ISD::INTRINSIC_WO_CHAIN:
      return LowerIntrinsic(Op,DAG);
    default:
      assert(false && "LowerOperation");
  }
  return res;
}

SDValue CodasipGenTargetLowering::HandleExtToCust(SDValue Op, SelectionDAG &DAG) const
{
  SDValue res;
  switch (Op.getOpcode())
  {
    case ISD::ANY_EXTEND:
    case ISD::ZERO_EXTEND:
    case ISD::SIGN_EXTEND:
    case ISD::TRUNCATE:
    {
      SDLoc dl;
      // note: this will destroy the original type (wouldn't work otherwise)
      SDValue input = Op.getOperand(0);
      assert(Op.getValueType().isInteger());
      assert(input.getValueType().isInteger());
      // invalid combination?
      if (isTypeLegal(input.getValueType()))
      {
        break;
      }
      assert(Op.getValueType().isSimple());
      if (Op.getValueType().getSimpleVT().isOriginal())
      {
        break;
      }
      assert(input.getValueType().bitsLT( Op.getValueType() ));
      // inspect the input
      // (we can only resolve certain cases)
      switch (input.getOpcode())
      {
        case ISD::SETCC:
        {
          // a new setcc
          assert(input.getNumOperands()==3);
          SDValue op1 = input.getOperand(0);
          SDValue op2 = input.getOperand(1);
          SDValue op3 = input.getOperand(2);
          EVT t = (op1.getValueType().isInteger()? MVT:: i32 : MVT:: i32 );
          res = DAG.getNode(ISD::SETCC, dl, t, op1, op2, op3);
          // truncate instead of extend
          res = DAG.getAnyExtOrTrunc(res, dl, Op.getValueType());
        }
        case ISD::LOAD:
          break;
        default:
          errs() << "Error: The input program contains unsupported combinations of attypical types with normal ones.\n";
          abort();
      }
      break;
    }
    default:
      return CodasipGenTargetLowering::LowerOperation(Op,DAG);
  }
  return res;
}

void CodasipGenTargetLowering::ReplaceNodeResults
(SDNode *N, SmallVectorImpl<SDValue> &Results, SelectionDAG &DAG) const
{
  switch (N->getOpcode())
  {
    // skip exts
    case ISD::ANY_EXTEND:
    case ISD::ZERO_EXTEND:
    case ISD::SIGN_EXTEND:
      break;
    // exceptions
    case ISD::FRAME_TO_ARGS_OFFSET:
    case ISD::EH_RETURN:
    case ISD::EH_SJLJ_SETJMP:
    case ISD::EH_SJLJ_LONGJMP:
      errs() << "Exceptions are not supported at this moment.\n";
      exit(1);
    /*case ISD::VAARG:
    {
      SDValue res = EliminateVaarg(N,DAG);
      // push the reg
      assert(res.getResNo()==0);
      Results.push_back(res);
      // then the chain
      Results.push_back(SDValue(res.getNode(),1));
      break;
    }*/
    default:
      assert(false && "ReplaceNodeResults");
  }
}

EVT CodasipGenTargetLowering::getSetCCResultType(const DataLayout &DL, LLVMContext &Context, EVT VT) const
{
  if (VT.isVector()) return VT.changeVectorElementTypeToInteger();
  if (VT.isInteger()) {
    return MVT::i32;
  }
  if (VT.isFloatingPoint()) {
    return MVT::i32;
  }
  return MVT::i32;
}

MVT::SimpleValueType CodasipGenTargetLowering::getCmpLibcallReturnType() const
{
  return MVT:: i32;
  return TargetLoweringBase::getCmpLibcallReturnType();
}

// users can reimplement this
bool CodasipGenTargetLowering::isShuffleMaskLegal(const SmallVectorImpl<int> &m, EVT t) const
{
  // this is called from build_vector expansion
  // -> treatment of actual shuffles is determined by normal legality
  // check for implicit support
  
  // nothing matched
  return false;
}

bool CodasipGenTargetLowering::allowsMisalignedMemoryAccesses(EVT VT, unsigned /*AddrSpace*/, unsigned /*Align*/, bool *Fast) const
{
    if (Fast) *Fast = false;
    switch (VT.getSimpleVT().SimpleTy)
    {
      
        return true;
      default: ;
    }
    return false;
}

const char* CodasipGenTargetLowering::getTargetNodeName(unsigned Opcode) const
{
  switch (Opcode)
  {
    case CodasipISD::Call:
      return "CodasipISD::Call";
    case CodasipISD::Ret:
      return "CodasipISD::Ret";
    case CodasipISD::TailCall:
      return "CodasipISD::TailCall";
    case CodasipISD::GAWrap:
      return "CodasipISD::GAWrap";
    
    
    default:
      assert(false);
  }
}

std::pair<unsigned, const TargetRegisterClass*> CodasipGenTargetLowering::
getRegForInlineAsmConstraint(const TargetRegisterInfo *TRI, StringRef Constraint, MVT VT) const
{
  typedef std::pair<unsigned, const TargetRegisterClass*> RcAndReg;
  RcAndReg p;
  // operands
  if (Constraint.size() == 1)
  {
    switch (Constraint[0])
    {
      // a general operand (a concrete register/class is not specified)
      case 'r':
        if (VT==MVT::i1) {
          p.second = &Codasip::xprRegClass;
        }
        else if (VT==MVT::i8) {
          p.second = &Codasip::xprRegClass;
        }
        else if (VT==MVT::i16) {
          p.second = &Codasip::xprRegClass;
        }
        else if (VT==MVT::i32) {
          p.second = &Codasip::xprRegClass;
        }
        else {
          p.second = NULL;
        }
        p.first = 0;
        break;
      default:
        break;
    }
  }
  // a concrete register/class (e.g. in a clobber)
  else if (Constraint[0] == '{')
  {
    assert(*(Constraint.end()-1) == '}' && "Not a brace enclosed constraint?");
    StringRef RegName(Constraint.data()+1, Constraint.size()-2);
    if (RegName=="memory") {
      return p;
    }
    // note: VS doesn't like too many else-ifs
    static std::map<std::string,RcAndReg,StrCaseInsensitive> nameMap;
    if (nameMap.empty())
    {
      nameMap["rf_xpr_0"] = RcAndReg(Codasip::rf_xpr_0, &Codasip::rf_xprRegClass);
      nameMap["rf_xpr_1"] = RcAndReg(Codasip::rf_xpr_1, &Codasip::rf_xprRegClass);
      nameMap["rf_xpr_2"] = RcAndReg(Codasip::rf_xpr_2, &Codasip::rf_xprRegClass);
      nameMap["rf_xpr_3"] = RcAndReg(Codasip::rf_xpr_3, &Codasip::rf_xprRegClass);
      nameMap["rf_xpr_4"] = RcAndReg(Codasip::rf_xpr_4, &Codasip::rf_xprRegClass);
      nameMap["rf_xpr_5"] = RcAndReg(Codasip::rf_xpr_5, &Codasip::rf_xprRegClass);
      nameMap["rf_xpr_6"] = RcAndReg(Codasip::rf_xpr_6, &Codasip::rf_xprRegClass);
      nameMap["rf_xpr_7"] = RcAndReg(Codasip::rf_xpr_7, &Codasip::rf_xprRegClass);
      nameMap["rf_xpr_8"] = RcAndReg(Codasip::rf_xpr_8, &Codasip::rf_xprRegClass);
      nameMap["rf_xpr_9"] = RcAndReg(Codasip::rf_xpr_9, &Codasip::rf_xprRegClass);
      nameMap["rf_xpr_10"] = RcAndReg(Codasip::rf_xpr_10, &Codasip::rf_xprRegClass);
      nameMap["rf_xpr_11"] = RcAndReg(Codasip::rf_xpr_11, &Codasip::rf_xprRegClass);
      nameMap["rf_xpr_12"] = RcAndReg(Codasip::rf_xpr_12, &Codasip::rf_xprRegClass);
      nameMap["rf_xpr_13"] = RcAndReg(Codasip::rf_xpr_13, &Codasip::rf_xprRegClass);
      nameMap["rf_xpr_14"] = RcAndReg(Codasip::rf_xpr_14, &Codasip::rf_xprRegClass);
      nameMap["rf_xpr_15"] = RcAndReg(Codasip::rf_xpr_15, &Codasip::rf_xprRegClass);
      nameMap["rf_xpr_16"] = RcAndReg(Codasip::rf_xpr_16, &Codasip::rf_xprRegClass);
      nameMap["rf_xpr_17"] = RcAndReg(Codasip::rf_xpr_17, &Codasip::rf_xprRegClass);
      nameMap["rf_xpr_18"] = RcAndReg(Codasip::rf_xpr_18, &Codasip::rf_xprRegClass);
      nameMap["rf_xpr_19"] = RcAndReg(Codasip::rf_xpr_19, &Codasip::rf_xprRegClass);
      nameMap["rf_xpr_20"] = RcAndReg(Codasip::rf_xpr_20, &Codasip::rf_xprRegClass);
      nameMap["rf_xpr_21"] = RcAndReg(Codasip::rf_xpr_21, &Codasip::rf_xprRegClass);
      nameMap["rf_xpr_22"] = RcAndReg(Codasip::rf_xpr_22, &Codasip::rf_xprRegClass);
      nameMap["rf_xpr_23"] = RcAndReg(Codasip::rf_xpr_23, &Codasip::rf_xprRegClass);
      nameMap["rf_xpr_24"] = RcAndReg(Codasip::rf_xpr_24, &Codasip::rf_xprRegClass);
      nameMap["rf_xpr_25"] = RcAndReg(Codasip::rf_xpr_25, &Codasip::rf_xprRegClass);
      nameMap["rf_xpr_26"] = RcAndReg(Codasip::rf_xpr_26, &Codasip::rf_xprRegClass);
      nameMap["rf_xpr_27"] = RcAndReg(Codasip::rf_xpr_27, &Codasip::rf_xprRegClass);
      nameMap["rf_xpr_28"] = RcAndReg(Codasip::rf_xpr_28, &Codasip::rf_xprRegClass);
      nameMap["rf_xpr_29"] = RcAndReg(Codasip::rf_xpr_29, &Codasip::rf_xprRegClass);
      nameMap["rf_xpr_30"] = RcAndReg(Codasip::rf_xpr_30, &Codasip::rf_xprRegClass);
      nameMap["rf_xpr_31"] = RcAndReg(Codasip::rf_xpr_31, &Codasip::rf_xprRegClass);
      nameMap["xpr"] = RcAndReg(0, &Codasip::xprRegClass);
      nameMap["x1"] = RcAndReg(Codasip::rf_xpr_1, &Codasip::xprRegClass);
      nameMap["x2"] = RcAndReg(Codasip::rf_xpr_2, &Codasip::xprRegClass);
      nameMap["x3"] = RcAndReg(Codasip::rf_xpr_3, &Codasip::xprRegClass);
      nameMap["x4"] = RcAndReg(Codasip::rf_xpr_4, &Codasip::xprRegClass);
      nameMap["x5"] = RcAndReg(Codasip::rf_xpr_5, &Codasip::xprRegClass);
      nameMap["x6"] = RcAndReg(Codasip::rf_xpr_6, &Codasip::xprRegClass);
      nameMap["x7"] = RcAndReg(Codasip::rf_xpr_7, &Codasip::xprRegClass);
      nameMap["x8"] = RcAndReg(Codasip::rf_xpr_8, &Codasip::xprRegClass);
      nameMap["x9"] = RcAndReg(Codasip::rf_xpr_9, &Codasip::xprRegClass);
      nameMap["x10"] = RcAndReg(Codasip::rf_xpr_10, &Codasip::xprRegClass);
      nameMap["x11"] = RcAndReg(Codasip::rf_xpr_11, &Codasip::xprRegClass);
      nameMap["x12"] = RcAndReg(Codasip::rf_xpr_12, &Codasip::xprRegClass);
      nameMap["x13"] = RcAndReg(Codasip::rf_xpr_13, &Codasip::xprRegClass);
      nameMap["x14"] = RcAndReg(Codasip::rf_xpr_14, &Codasip::xprRegClass);
      nameMap["x15"] = RcAndReg(Codasip::rf_xpr_15, &Codasip::xprRegClass);
      nameMap["x16"] = RcAndReg(Codasip::rf_xpr_16, &Codasip::xprRegClass);
      nameMap["x17"] = RcAndReg(Codasip::rf_xpr_17, &Codasip::xprRegClass);
      nameMap["x18"] = RcAndReg(Codasip::rf_xpr_18, &Codasip::xprRegClass);
      nameMap["x19"] = RcAndReg(Codasip::rf_xpr_19, &Codasip::xprRegClass);
      nameMap["x20"] = RcAndReg(Codasip::rf_xpr_20, &Codasip::xprRegClass);
      nameMap["x21"] = RcAndReg(Codasip::rf_xpr_21, &Codasip::xprRegClass);
      nameMap["x22"] = RcAndReg(Codasip::rf_xpr_22, &Codasip::xprRegClass);
      nameMap["x23"] = RcAndReg(Codasip::rf_xpr_23, &Codasip::xprRegClass);
      nameMap["x24"] = RcAndReg(Codasip::rf_xpr_24, &Codasip::xprRegClass);
      nameMap["x25"] = RcAndReg(Codasip::rf_xpr_25, &Codasip::xprRegClass);
      nameMap["x26"] = RcAndReg(Codasip::rf_xpr_26, &Codasip::xprRegClass);
      nameMap["x27"] = RcAndReg(Codasip::rf_xpr_27, &Codasip::xprRegClass);
      nameMap["x28"] = RcAndReg(Codasip::rf_xpr_28, &Codasip::xprRegClass);
      nameMap["x29"] = RcAndReg(Codasip::rf_xpr_29, &Codasip::xprRegClass);
      nameMap["x30"] = RcAndReg(Codasip::rf_xpr_30, &Codasip::xprRegClass);
      nameMap["x31"] = RcAndReg(Codasip::rf_xpr_31, &Codasip::xprRegClass);
      
    }
    if (nameMap.count(RegName)) {
      p = nameMap[RegName];
    }
  }
  // check
  if (!p.second) {
    errs() << "Invalid/unsupported inline-asm constraint: " << Constraint << ".\n";
    errs() << "Note: It's possible that this constraint was allowed in Clang but failed in finer analysis.\n";
  }
  return p;
}

unsigned CodasipGenTargetLowering::getInlineAsmMemConstraint(StringRef ConstraintCode) const
{
  if (ConstraintCode == "o") {
    return InlineAsm::Constraint_o;
  }
  if (ConstraintCode == "V") {
    return InlineAsm::Constraint_v;
  }
  return TargetLowering::getInlineAsmMemConstraint(ConstraintCode);
}

// Replace fake instructions with a valid machine code.
// Note: disallow Codasip::KILL in here?
MachineBasicBlock* CodasipGenTargetLowering::EmitInstrWithCustomInserter(MachineInstr &MI, MachineBasicBlock *BB) const
{
  const CodasipTargetMachine &CTM = static_cast<const CodasipTargetMachine&>(getTargetMachine());
  const CodasipInstrInfo &TII = *CTM.getInstrInfo();
  bool check = TII.ExpandDummiesImpl(&MI,BB,false,nullptr);
  if (!check) {
    assert(false && "failed to expand pseudo instruction in EmitInstrWithCustomInserter");
    return NULL;
  }
  // result must not be an empty BB
  assert(!BB->empty());
  return BB;
}

/* Our custom types can't be left as legal.
 * -> The previous two actions need to be repeated for customs.
 * They also need to be computed a wee bit differently.
 * Note1: we expect the largest custom (ARITHMETIC) type to be i63.
 * Note2: LargestIntReg was taken from normal types (see three blocks higher).
 * Note3: I'm doing this in two separate steps
 * Note3: Every type needs to be transformed into a smaller type (of half the size ideally, but no smaller than that) */
void CodasipGenTargetLowering::computeRegisterProperties(const TargetRegisterInfo *TRI)
{
  // this needs to be ran first
  TargetLowering::computeRegisterProperties(TRI);
  // just a little check
  assert(MVT::LAST_CUSTOM_ARITHMETIC_INTEGER_VALUETYPE == MVT::i63);
  // note: generate this?
  // This is taken from llvm:
  // Find the largest integer register class.
  unsigned LargestIntReg = MVT::LAST_INTEGER_VALUETYPE;
  for (; RegClassForVT[LargestIntReg] == 0; --LargestIntReg)
    assert(LargestIntReg != MVT::i1 && "No integer registers defined!"); //llvm
  // set properties of pavel's types
  LLVMContext Context;
  // a new implementation of properties - everything is expand
  for (unsigned i=MVT::FIRST_CUSTOM_ARITHMETIC_INTEGER_VALUETYPE; i<=MVT::LAST_CUSTOM_ARITHMETIC_INTEGER_VALUETYPE; ++i)
  {
    MVT t = (MVT::SimpleValueType)i;
    // legal
    if (isTypeLegal(t))
    {
      NumRegistersForVT[i] = 1;
      RegisterTypeForVT[i] = TransformToType[i] = t;
    }
    // non-legal
    else
    {
      // non-simple types are(/were) implicitly Expand - it should work like that again 
      ValueTypeActions.setTypeAction(t,TypeExpandInteger);
      // these values should emulata computation for (formerly) non-simple types
      // - based on getRegisterType
      const EVT tt = getTypeToTransformTo(Context,t);
      assert(tt.isSimple());
      assert(tt.isOriginal());
      RegisterTypeForVT[i] = getRegisterType(Context, tt.getSimpleVT());
      // this is redundant but let's be thorough
      TransformToType[i] = tt.getSimpleVT();
      // - taken from getNumRegisters
      unsigned BitWidth = t.getSizeInBits();
      unsigned RegWidth = getRegisterType(Context, t).getSizeInBits();
      NumRegistersForVT[i] = (BitWidth + RegWidth - 1) / RegWidth;
    }
  }
  // big auxiliary integers
  for (unsigned i=MVT::i256; i<=MVT::LAST_CUSTOM_INTEGER_VALUETYPE; ++i)
  {
    MVT t = (MVT::SimpleValueType)i;
    if (!isTypeLegal(t))
    {
      ValueTypeActions.setTypeAction(t,TypeExpandInteger);
    }
  }
  // we can't call the supermethod again -> copy&paste of the tail of c.r.p.
  for (unsigned i = 0; i != MVT::LAST_VALUETYPE; ++i) {
    const TargetRegisterClass* RRC;
    uint8_t Cost;
    std::tie(RRC,Cost) = findRepresentativeClass(TRI,(MVT::SimpleValueType)i);
    RepRegClassForVT[i] = RRC;
    RepRegClassCostForVT[i] = Cost;
  }
}

const TargetRegisterClass* CodasipGenTargetLowering::getRegClassFor(MVT t) const
{
  if (t==MVT::i32) return &Codasip::xprRegClass;
  if (t==MVT::i32) return &Codasip::rf_xprRegClass;
  
  errs() << "Type " << t.SimpleTy << " is not supported. Implement CodasipTargetLowering::getRegClassFor.";
  exit(1);
  return TargetLowering::getRegClassFor(t);
}

const TargetRegisterClass* CodasipGenTargetLowering::getRepRegClassFor(MVT t) const
{
  if (t==MVT::i32) return &Codasip::xprRegClass;
  if (t==MVT::i32) return &Codasip::rf_xprRegClass;
  
  errs() << "Type " << t.SimpleTy << " is not supported. Implement CodasipTargetLowering::getRepRegClassFor.";
  exit(1);
  return TargetLowering::getRepRegClassFor(t);
}

// Shouldn't this be done in LowerOperationWrapper? I don't think so...
SDValue CodasipGenTargetLowering::LowerIntrinsic(SDValue Op, SelectionDAG &DAG) const
{
  // func info
  MachineFunction &MF = DAG.getMachineFunction();
  CodasipFunctionInfo *finfo = MF.getInfo<CodasipFunctionInfo>();
  // loc
  const SDLoc dl(Op);
  // opcode of the intrinsic, if one (it's the first numerical operand)
  unsigned intr_code = 0;
  // index of subcode, if our builtin (always >0)
  unsigned subcode_index = 0;
  // lower
  switch (Op.getOpcode())
  {
    case ISD::INTRINSIC_WO_CHAIN:
      intr_code = Op.getConstantOperandVal(0);
      subcode_index = 1;
      break;
    case ISD::INTRINSIC_VOID:
    case ISD::INTRINSIC_W_CHAIN:
      intr_code = Op.getConstantOperandVal(1);
      subcode_index = 2;
      break;
    default:
      assert(false);
  }
  // is it our builtin?
  switch (intr_code)
  {
    case Intrinsic::codasip_builtin:
    case Intrinsic::codasip_builtin_anyint:
    case Intrinsic::codasip_builtin_anyfloat:
    case Intrinsic::codasip_builtin_anyptr:
    case Intrinsic::codasip_builtin_anyvector:
    case Intrinsic::codasip_builtin_anyint_anyint:
    case Intrinsic::codasip_builtin_anyint_anyint_anyint:
    case Intrinsic::codasip_builtin_anyint_anyint_anyint_anyint:
    case Intrinsic::codasip_builtin_anyint_anyint_anyint_anyint_anyint:
    case Intrinsic::codasip_builtin_nomem_anyint:
    case Intrinsic::codasip_builtin_nomem_anyfloat:
    case Intrinsic::codasip_builtin_nomem_anyptr:
    case Intrinsic::codasip_builtin_nomem_anyvector:
    case Intrinsic::codasip_builtin_nomem_anyint_anyint:
    case Intrinsic::codasip_builtin_nomem_anyint_anyint_anyint:
    case Intrinsic::codasip_builtin_nomem_anyint_anyint_anyint_anyint:
    case Intrinsic::codasip_builtin_nomem_anyint_anyint_anyint_anyint_anyint:
      break;
    default:
      return SDValue();
  }
  // subcode
  const int subcode = Op.getConstantOperandVal(subcode_index);
  // get node code and oper type info
  CodasipISD::NodeType newOpc = CodasipISD::LAST_NUMBER;
  std::vector<MVT> inputInfo;
  inputInfo.reserve(Op.getNumOperands());
  switch (subcode)
  {
    
    default:
      assert(false && "unknown builtin");
  }
  // result type array
  SDVTList resTypes = Op->getVTList();
  // inputs
  std::vector<SDValue> ops;
  ops.reserve(Op.getNumOperands());
  // - chain
  if (Op.getOpcode()!=ISD::INTRINSIC_WO_CHAIN) ops.push_back(Op.getOperand(0));
  // - input data
  for (unsigned i=subcode_index+1, j=0; i<Op.getNumOperands(); ++i, ++j)
  {
    SDValue input = Op.getOperand(i);
    // add bitcast first?
    assert(j<inputInfo.size());
    if (inputInfo[j].isFloatingPoint()) {
      input = DAG.getNode(ISD::BITCAST,dl,inputInfo[j],input);
    }
    ops.push_back(input);
  }
  ArrayRef<SDValue> opsRef(ops);
  // make result node
  SDValue result = DAG.getNode(newOpc,dl,resTypes,opsRef);
  return result;
  (void)finfo;
}

unsigned CodasipGenTargetLowering::GetSpace4Vt(EVT vt) const
{
  return llvm::GetSpace4Vt(vt);
}

bool CodasipGenTargetLowering::isOffsetFoldingLegal(const GlobalAddressSDNode* GA) const
{
  return true;
}

// taken from SelectionDAGBuilder::visitGetElementPtr
// edits marked superficially, some left unmarked
bool CodasipGenTargetLowering::EmittArrayAccess(SelectionDAG& DAG, const User &I, Type* indexedType, const Value* Idx, SDValue IdxN, SDValue& N, const SDLoc &dl) const
{
  
  return false;
  
  // Normalize Vector GEP - all scalar operands should be converted to the
  // splat vector.
  unsigned VectorWidth = I.getType()->isVectorTy() ?
    cast<VectorType>(I.getType())->getVectorNumElements() : 0;
  const DataLayout *DL = &getTargetMachine().getDataLayout();
  MVT PtrTy = MVT::i32;
  unsigned PtrSize = PtrTy.getSizeInBits();
  APInt ElementSize(PtrSize, DL->getTypeAllocSize(indexedType));
  // If this is a scalar constant or a splat vector of constants,
  // handle it quickly.
  const auto *CI = dyn_cast<ConstantInt>(Idx);
  if (!CI && isa<ConstantDataVector>(Idx) &&
      cast<ConstantDataVector>(Idx)->getSplatValue())
    CI = cast<ConstantInt>(cast<ConstantDataVector>(Idx)->getSplatValue());
  if (CI) {
    return false; //codasip
  }
  // N = N + Idx * ElementSize;
  //SDValue IdxN = getValue(Idx); //already in param
  if (!IdxN.getValueType().isVector() && VectorWidth) {
    MVT VT = MVT::getVectorVT(IdxN.getValueType().getSimpleVT(), VectorWidth);
    IdxN = DAG.getSplatBuildVector(VT, dl, IdxN);
  }
  // If the index is smaller or larger than <i32>, truncate or extend it.
  IdxN = DAG.getSExtOrTrunc(IdxN, dl, MVT::i32);
  // If this is a multiply by a power of two, turn it into a shl
  // immediately.  This is a very common case.
  if (ElementSize != 1) {
    if (ElementSize.isPowerOf2()) {
      unsigned Amt = ElementSize.logBase2();
      IdxN = DAG.getNode(ISD::SHL, dl, MVT::i32, IdxN, DAG.getConstant(Amt, dl, IdxN.getValueType())); //codasip
    } else {
      SDValue Scale = DAG.getConstant(ElementSize, dl, IdxN.getValueType());
      IdxN = DAG.getNode(ISD::MUL, dl, MVT::i32, IdxN, Scale); //codasip
    }
  }
  IdxN = DAG.getSExtOrTrunc(IdxN, dl, N.getValueType()); //codasip
  N = DAG.getNode(ISD::ADD, dl, N.getValueType(), N, IdxN);
  return true;
}

std::pair<SDValue,SDValue> CodasipGenTargetLowering::ExpandCustomUnalignedLoad(LoadSDNode* LD, SelectionDAG& DAG) const
{
  EVT LoadedVT = LD->getMemoryVT();
  if (LoadedVT.isOriginal()) {
    return std::make_pair(SDValue(),SDValue());
  }
  
  errs() << "Unaligned packed custom int load: not implemented for little-endians\n";
  abort();
  
  SDLoc dl(LD);
  unsigned NumBits = LoadedVT.getSizeInBits();
  SDValue Chain = LD->getChain();
  SDValue Ptr = LD->getBasePtr();
  EVT VT = LD->getValueType(0);
  const unsigned BYTE_SIZE = 8;
  EVT NewLoadedVT = EVT::getIntegerVT(*DAG.getContext(), BYTE_SIZE);
  SDValue ShiftAmount = DAG.getConstant(BYTE_SIZE, dl, getShiftAmountTy(VT, DAG.getDataLayout()));
  ISD::LoadExtType HiExtType = LD->getExtensionType();
  if (HiExtType == ISD::NON_EXTLOAD) HiExtType = ISD::ZEXTLOAD;
  SmallVector<SDValue, 8> Ops;
  // the NumBits again
  NumBits = LoadedVT.getSizeInBits();
  SDValue Result;
  for (unsigned i=0; i*BYTE_SIZE < NumBits; ++i)
  {
    ISD::LoadExtType ExtType = (i? HiExtType: ISD::ZEXTLOAD);
    SDValue load = DAG.getExtLoad(ExtType, dl, VT, Chain, Ptr, LD->getPointerInfo().getWithOffset(i), NewLoadedVT, BYTE_SIZE, LD->getMemOperand()->getFlags(), LD->getAAInfo());
    Ops.push_back(load.getValue(1));
    if (i) {
      Result = DAG.getNode(ISD::SHL, dl, VT, Result, ShiftAmount);
      Result = DAG.getNode(ISD::OR, dl, VT, Result, load);
    }
    else {
      Result = load;
    }
    Ptr = DAG.getNode(ISD::ADD, dl, Ptr.getValueType(), Ptr, DAG.getConstant(1, dl, Ptr.getValueType()));
  }
  SDValue TF = DAG.getNode(ISD::TokenFactor, dl, MVT::Other, Ops);
  return std::make_pair(Result, TF);
}

SDValue CodasipGenTargetLowering::ExpandCustomUnalignedStore(StoreSDNode* ST, SelectionDAG& DAG) const
{
  EVT StoredVT = ST->getMemoryVT();
  if (StoredVT.isOriginal()) {
    return SDValue();
  }
  
  errs() << "Unaligned packed custom int store: not implemented for little-endians\n";
  abort();
  
  SDLoc dl(ST);
  SDValue Chain = ST->getChain();
  SDValue Ptr = ST->getBasePtr();
  SDValue Val = ST->getValue();
  EVT VT = Val.getValueType();
  int Alignment = ST->getAlignment();
  unsigned NumBits = StoredVT.getSizeInBits();
  const unsigned BYTE_SIZE = 8;
  EVT NewStoredVT = EVT::getIntegerVT(*DAG.getContext(), BYTE_SIZE);
  SmallVector<SDValue, 8> Ops;
  unsigned NumBytes = NumBits/BYTE_SIZE;
  if (NumBits%BYTE_SIZE) ++NumBytes;
  // the NumBits again
  NumBits = StoredVT.getSizeInBits();
  for (unsigned i=0; i*BYTE_SIZE < NumBits; ++i)
  {
    SDValue ShiftAmount = DAG.getConstant((NumBytes-i-1)*BYTE_SIZE, dl, getShiftAmountTy(VT, DAG.getDataLayout()));
    SDValue Value = DAG.getNode(ISD::SRL, dl, VT, Val, ShiftAmount);
    SDValue store = DAG.getTruncStore(Chain, dl, Value, Ptr, ST->getPointerInfo().getWithOffset(i), NewStoredVT, Alignment, ST->getMemOperand()->getFlags());
    Ops.push_back(store);
    Ptr = DAG.getNode(ISD::ADD, dl, Ptr.getValueType(), Ptr, DAG.getConstant(1, dl, Ptr.getValueType()));
  }
  return DAG.getNode(ISD::TokenFactor, dl, MVT::Other, Ops);
}

void CodasipGenTargetLowering::InitIndOffsetInfo()
{
IndOffsetInfo[0].resize(ISD::LAST_INDEXED_MODE);
IndOffsetInfo[1].resize(ISD::LAST_INDEXED_MODE);
IndOffsetInfo[0].at(ISD::PRE_INC).resize(MVT::LAST_VALUETYPE,false);
IndOffsetInfo[0].at(ISD::PRE_DEC).resize(MVT::LAST_VALUETYPE,false);
IndOffsetInfo[0].at(ISD::POST_INC).resize(MVT::LAST_VALUETYPE,false);
IndOffsetInfo[0].at(ISD::POST_DEC).resize(MVT::LAST_VALUETYPE,false);
IndOffsetInfo[1].at(ISD::PRE_INC).resize(MVT::LAST_VALUETYPE,false);
IndOffsetInfo[1].at(ISD::PRE_DEC).resize(MVT::LAST_VALUETYPE,false);
IndOffsetInfo[1].at(ISD::POST_INC).resize(MVT::LAST_VALUETYPE,false);
IndOffsetInfo[1].at(ISD::POST_DEC).resize(MVT::LAST_VALUETYPE,false);

IndInstructionsMap[0].resize(ISD::LAST_INDEXED_MODE);
IndInstructionsMap[1].resize(ISD::LAST_INDEXED_MODE);

}

// it's just like with MOI groups
// returns true, if supports any input
bool CodasipGenTargetLowering::CheckIndexedOffsetLegal(LSBaseSDNode* N, const ISD::MemIndexedMode AM, const SDValue& Offset, MachineFunction &MF) const
{
  EVT vt = N->getMemoryVT();
  MVT mvt = vt.getSimpleVT();
  // it's either load or store (checked in CheckIndexedLegal already)
  unsigned load = (N->getOpcode()==ISD::LOAD? 1: 0);
  if (IndOffsetInfo[load].at(AM).at(mvt.SimpleTy)) {
    return true;
  }
  // check of operand types from moi lowerer
  const std::vector<unsigned> &patts = IndInstructionsMap[load].at(AM);
  SDValue PattOffset;
  SDValue NVal(N,0);
  std::map<SDNode*,SDNode*> a; std::vector<SDValue> b;
  for (unsigned i = 0; i < patts.size(); ++i) {
    unsigned ri = 0;
    std::vector<SDValue> roots;
    GetCodasipPattern(TM, MF, patts[i], roots);
    BaseDagPattern::GetRoots(roots);
    if (roots.empty())
    {
      return false;
    }
    // which pattern root is what
    ri = ((roots[0]->getOpcode() == ISD::STORE ||
           roots[0]->getOpcode() == ISD::LOAD) ? 0 : 1);
    // if we create this indexed load/store, can we then match it in isel?
    // doesn't it have to be truncstore or extendload? This checks it 
    SDValue memNode = roots[ri];
    if (memNode->getOpcode() == ISD::LOAD)
    {
        LoadSDNode *realNode = cast<LoadSDNode>(N);
        LoadSDNode *pattNode = cast<LoadSDNode>(memNode);
        if (realNode->getExtensionType() != pattNode->getExtensionType())
            continue;
    }
    else if (memNode->getOpcode() == ISD::STORE)
    {
        StoreSDNode *pattNode = cast<StoreSDNode>(memNode);
        StoreSDNode *realNode = cast<StoreSDNode>(N);
        if (pattNode->isTruncatingStore() != realNode->isTruncatingStore() ||
            pattNode->getMemoryVT().getSimpleVT() != realNode->getMemoryVT().getSimpleVT())
            continue;
    }
    else
    {
        assert(false && "neither store nor load node");
    }
    PattOffset = cast<LSBaseSDNode>(roots[ri])->getOffset();
    bool match = BaseDagPattern::CheckTree(PattOffset, Offset, a, b);
    if (match) {
      return true;
    }
  }
  return false;
}

// this checks coarse grained legality
bool CodasipGenTargetLowering::CheckIndexedLegal(LSBaseSDNode* N, ISD::MemIndexedMode AM) const
{
  EVT vt = N->getMemoryVT();
  /**/ if (N->getOpcode()==ISD::LOAD) {
    return isIndexedLoadLegal(AM,vt);
  }
  else if (N->getOpcode()==ISD::STORE) {
    return isIndexedStoreLegal(AM,vt);
  }
  else {
    llvm_unreachable("Neither a load nor a store");
  }
  return false;
}

bool CodasipGenTargetLowering::getPreIndexedAddressParts(SDNode* Node, SDValue& BasePtr, SDValue& Offset, ISD::MemIndexedMode& AM, SelectionDAG& DAG) const
{
  LSBaseSDNode* lsb = dyn_cast<LSBaseSDNode>(Node);
  assert(lsb && lsb->isUnindexed() && "not an unindexed mem op");
  // look at the ptr
  SDValue ptr = lsb->getBasePtr();
  assert(ptr.getOpcode()==ISD::ADD || ptr.getOpcode()==ISD::SUB);
  AM = (ptr.getOpcode()==ISD::ADD? ISD::PRE_INC: ISD::PRE_DEC);
  // check legality
  // (this is neccessary, llvm doesn't differentiate between INC and DEC)
  if (!CheckIndexedLegal(lsb,AM)) {
    return false;
  }
  // mark inputs
  assert(ptr.getNumOperands()==2);
  BasePtr = ptr.getOperand(0);
  Offset  = ptr.getOperand(1);
  bool swaped = false;
  if (isa<ConstantSDNode>(BasePtr) && !isa<ConstantSDNode>(Offset)) {
    std::swap(BasePtr, Offset);
    swaped = true;
  }
  // one last check
  if (!CheckIndexedOffsetLegal(lsb,AM,Offset,DAG.getMachineFunction())) {
    return false;
  }
  // llvm also swaps it
  if (swaped) {
    std::swap(BasePtr, Offset);
  }
  // all ok
  return true;
}

bool CodasipGenTargetLowering::getPostIndexedAddressParts(SDNode* Node, SDNode* Op, SDValue& BasePtr, SDValue& Offset, ISD::MemIndexedMode& AM, SelectionDAG& DAG) const
{
  LSBaseSDNode* lsb = dyn_cast<LSBaseSDNode>(Node);
  assert(lsb && lsb->isUnindexed() && "not an unindexed mem op");
  // the ptr
  SDValue ptr = lsb->getBasePtr();
  // look at the operator
  assert(Op->getNumOperands()==2);
  assert(Op->getOpcode()==ISD::ADD || Op->getOpcode()==ISD::SUB);
  AM = (Op->getOpcode()==ISD::ADD? ISD::POST_INC: ISD::POST_DEC);
  // check legality
  if (!CheckIndexedLegal(lsb,AM)) {
    return false;
  }
  // mark inputs
  BasePtr = ptr;
  if (Op->getOperand(0)==ptr) {
    Offset = Op->getOperand(1);
  }
  else if (Op->getOperand(1)==ptr) {
    Offset = Op->getOperand(0);
  }
  else {
    return false;
  }    
  if (!CheckIndexedOffsetLegal(lsb,AM,Offset,DAG.getMachineFunction())) {
    return false;
  }
  // all ok
  return true;
}
