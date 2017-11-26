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


#include "llvm/MC/MachineLocation.h"
#include "llvm/MC/MCInstrInfo.h"
#include "llvm/MC/MCRegisterInfo.h"
#include "llvm/MC/MCStreamer.h"
#include "llvm/MC/MCSubtargetInfo.h"
#include "llvm/Support/TargetRegistry.h"

#include "CodasipMCTargetDesc.h"
#include "CodasipMCAsmInfo.h"
#include "InstPrinter/CodasipInstPrinter.h"

#define GET_INSTRINFO_MC_DESC
#include "CodasipGenInstrInfo.inc"

#define GET_SUBTARGETINFO_MC_DESC
#include "CodasipGenSubtargetInfo.inc"

#define GET_REGINFO_MC_DESC
#include "CodasipGenRegisterInfo.inc"

using namespace llvm;

static MCInstrInfo* createCodasipMCInstrInfo()
{
  MCInstrInfo *X = new MCInstrInfo();
  InitCodasipMCInstrInfo(X);
  return X;
}

static MCRegisterInfo* createCodasipMCRegisterInfo(const Triple &)
{
  MCRegisterInfo *X = new MCRegisterInfo();
  const int RA = Codasip:: rf_xpr_1;
  InitCodasipMCRegisterInfo(X,RA);
  return X;
}

static MCSubtargetInfo* createCodasipMCSubtargetInfo(const Triple &TT, StringRef CPU, StringRef FS)
{
  //MCSubtargetInfo *X = new MCSubtargetInfo();
  //InitCodasipMCSubtargetInfo(X, TT, CPU, FS);
  //return X;
  return createCodasipMCSubtargetInfoImpl(TT, CPU, FS);
}

static MCAsmInfo* createCodasipMCAsmInfo(const MCRegisterInfo &MRI, const Triple &TT)
{
  MCAsmInfo *MAI = new CodasipMCAsmInfo(TT);
  // get SP (space 0)
  const int SP = Codasip:: rf_xpr_2 ;
  // note: our registers have only one dwarf number each
  MCCFIInstruction Inst = MCCFIInstruction::createDefCfa(nullptr, MRI.getDwarfRegNum(SP,0), 0);
  MAI->addInitialFrameState(Inst);
  return MAI;
}

static MCInstPrinter* createCodasipMCInstPrinter
(const Triple &, unsigned SyntaxVariant, const MCAsmInfo &MAI,
 const MCInstrInfo &MII, const MCRegisterInfo &MRI)
{
  return new CodasipInstPrinter(MAI,MII,MRI);
}

/*static void createCodasipMCAdjustCodeGenOpts
(const Triple &TT, Reloc::Model RM, CodeModel::Model &CM)
{
}*/

extern "C" void LLVMInitializeCodasipTargetMC()
{
  // Register the MC asm info.
  RegisterMCAsmInfoFn X(TheCodasipTarget, createCodasipMCAsmInfo);
  // Register the MC codegen info.
  //TargetRegistry::registerMCAdjustCodeGenOpts(TheCodasipTarget, createCodasipMCAdjustCodeGenOpts);
  // Register the MC instruction info.
  TargetRegistry::RegisterMCInstrInfo(TheCodasipTarget, createCodasipMCInstrInfo);
  // Register the MC register info.
  TargetRegistry::RegisterMCRegInfo(TheCodasipTarget, createCodasipMCRegisterInfo);
  // Instruction printer
  TargetRegistry::RegisterMCInstPrinter(TheCodasipTarget, createCodasipMCInstPrinter);
  // Register the MC subtarget info.
  TargetRegistry::RegisterMCSubtargetInfo(TheCodasipTarget, createCodasipMCSubtargetInfo);
}

