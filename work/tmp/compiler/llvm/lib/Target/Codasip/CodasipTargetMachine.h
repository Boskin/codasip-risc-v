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


#ifndef CODASIPTARGETMACHINE_H
#define CODASIPTARGETMACHINE_H

#include "llvm/Target/TargetMachine.h"
#include "llvm/Target/TargetFrameLowering.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/DataLayout.h"

#include "CodasipSubtarget.h"
#include "CodasipTargetObjectFile.h"
#include "CodasipCustomHooks.h"

namespace llvm {

class CodasipTargetMachine: public LLVMTargetMachine
{
  CodasipSubtarget Subtarget;
  mutable CodasipTargetObjectFile ObjectLowering;
  CodasipCustomHooks CodasipHooks;
public:
  /// Constructor.
  CodasipTargetMachine
  (const Target &T, const Triple &TT, StringRef CPU, StringRef FS, const TargetOptions &Options,
   Optional<Reloc::Model> RM, CodeModel::Model CM, CodeGenOpt::Level OL);
  // Access methods.
  const CodasipSubtarget* getSubtargetImpl(const Function &F) const override {return &Subtarget;}
  const CodasipInstrInfo* getInstrInfo() const {return static_cast<const CodasipInstrInfo*>(Subtarget.getInstrInfo());}
  const TargetFrameLowering* getFrameLowering() const {return Subtarget.getFrameLowering();}
  const CodasipTargetLowering* getTargetLowering() const {return Subtarget.getTargetLowering();}
  const TargetRegisterInfo* getRegisterInfo() const {return Subtarget.getRegisterInfo();}
  const InstrItineraryData* getInstrItineraryData() const {return Subtarget.getInstrItineraryData();}
  bool hasCodasipCFI() const override {return true;}
  const CodasipSelectionDAGInfo* getSelectionDAGInfo() const {return Subtarget.getSelectionDAGInfo();}
  TargetLoweringObjectFile* getObjFileLowering() const override {return &ObjectLowering;}
  // passes
  TargetPassConfig* createPassConfig(PassManagerBase &PM) override;
  // optimalisation level
  const CodeGenOpt::Level OL;
  /// Symbol with our custom prefix
  void getNameWithPrefix
  (SmallVectorImpl<char> &Name, const GlobalValue *GV, Mangler &Mang, bool MayAlwaysUsePrivate) const override;
  CodasipBaseHooks *getHooks() const override {return const_cast<CodasipCustomHooks *>(&CodasipHooks);}
};

// These two need to be global
/// Get an appropriate address space for the given type.
unsigned GetSpace4Vt(EVT vt);
/// The same for register classes.
unsigned GetSpace4Rc(const TargetRegisterClass *RC);

}

#endif
