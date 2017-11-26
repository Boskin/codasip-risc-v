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


#include "CodasipTargetMachine.h"

#include "MCTargetDesc/CodasipMCAsmInfo.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/TargetRegistry.h"
#include "llvm/IR/IntrinsicInst.h"
#include "llvm/Support/raw_ostream.h"

#include "Codasip.h"
#include "CodasipCustPassConfig.h"

const char *__codasip_data_layout__ = "e-p:32:32:32-S64-a:0:32-v8:8:8-i8:8:8-f8:8:8-v16:16:16-i16:16:16-f16:16:16-v32:32:32-i32:32:32-f32:32:32-v64:32:32-i64:32:32-f64:32:32-v128:32:32-i128:32:32-f128:32:32-n32";
const char *__codasip_architecture_name__ = "__RISC_V5.ia__";
const char *__codasip_clobber_regs__ = "xpr@@x1@@x2@@x3@@x4@@x5@@x6@@x7@@x8@@x9@@x10@@x11@@x12@@x13@@x14@@x15@@x16@@x17@@x18@@x19@@x20@@x21@@x22@@x23@@x24@@x25@@x26@@x27@@x28@@x29@@x30@@x31@@rf_xpr_1@@rf_xpr_2@@rf_xpr_3@@rf_xpr_4@@rf_xpr_5@@rf_xpr_6@@rf_xpr_7@@rf_xpr_8@@rf_xpr_9@@rf_xpr_10@@rf_xpr_11@@rf_xpr_12@@rf_xpr_13@@rf_xpr_14@@rf_xpr_15@@rf_xpr_16@@rf_xpr_17@@rf_xpr_18@@rf_xpr_19@@rf_xpr_20@@rf_xpr_21@@rf_xpr_22@@rf_xpr_23@@rf_xpr_24@@rf_xpr_25@@rf_xpr_26@@rf_xpr_27@@rf_xpr_28@@rf_xpr_29@@rf_xpr_30@@rf_xpr_31@@rf_xpr_0@@rf_xpr_1@@rf_xpr_2@@rf_xpr_3@@rf_xpr_4@@rf_xpr_5@@rf_xpr_6@@rf_xpr_7@@rf_xpr_8@@rf_xpr_9@@rf_xpr_10@@rf_xpr_11@@rf_xpr_12@@rf_xpr_13@@rf_xpr_14@@rf_xpr_15@@rf_xpr_16@@rf_xpr_17@@rf_xpr_18@@rf_xpr_19@@rf_xpr_20@@rf_xpr_21@@rf_xpr_22@@rf_xpr_23@@rf_xpr_24@@rf_xpr_25@@rf_xpr_26@@rf_xpr_27@@rf_xpr_28@@rf_xpr_29@@rf_xpr_30@@rf_xpr_31@@";
const char *__codasip_type_spaces__ = "";
const char *__codasip_defines__ = "";
extern bool __codasip_pass_disable__;

using namespace llvm;

// called from llc::main
extern "C" void LLVMInitializeCodasipTarget() {
  RegisterTargetMachine<CodasipTargetMachine> X(TheCodasipTarget);
  __codasip_pass_disable__ = false;
}

// note: data defined here will be (in an encapsulated way) used by constructors of other objects
CodasipTargetMachine::CodasipTargetMachine
(const Target &T, const Triple &TT, StringRef CPU, StringRef FS, const TargetOptions &Options, Optional<Reloc::Model> RM, CodeModel::Model CM, CodeGenOpt::Level OL_)
: LLVMTargetMachine(T,__codasip_data_layout__,TT,CPU,FS,Options, (RM.hasValue()? RM.getValue(): Reloc::Static), CM,OL_),
  Subtarget(TT,FS,*this), OL(OL_)
{
  initAsmInfo();
  assert(getOptLevel()==OL);
}

void CodasipTargetMachine::getNameWithPrefix
(SmallVectorImpl<char> &Name, const GlobalValue *GV, Mangler &Mang, bool MayAlwaysUsePrivate) const
{
  // normal name
  TargetMachine::getNameWithPrefix(Name,GV,Mang,MayAlwaysUsePrivate);
  // get prefix
  const std::string prefix("$");
  // add prefix
  Name.insert(Name.begin(), prefix.begin(), prefix.end());
}

TargetPassConfig* CodasipTargetMachine::createPassConfig(PassManagerBase &PM)
{
  return new CodasipPassConfig(this,PM);
}

// Auxiliary functions

unsigned llvm::GetSpace4Vt(EVT vt)
{
  unsigned addressSpace = 0;
  switch (vt.getSimpleVT().SimpleTy)
  {
    
    default: ;
  }
  return addressSpace;
}

unsigned llvm::GetSpace4Rc(const llvm::TargetRegisterClass *RC)
{
  unsigned addressSpace = 0;
  
  return addressSpace;
}
