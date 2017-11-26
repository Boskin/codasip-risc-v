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


#include "CodasipSubtarget.h"
#include "CodasipTargetMachine.h"
#include "Codasip.h"
#include "llvm/Support/CommandLine.h"

using namespace llvm;

#define DEBUG_TYPE "codasip-subtarget"

#define GET_SUBTARGETINFO_CTOR
#define GET_SUBTARGETINFO_TARGET_DESC
#include "CodasipGenSubtargetInfo.inc"

// always on (unless vliw) - NO!
#define POST_RA_ALWAYS_ON 0

CodasipSubtarget::CodasipSubtarget(const Triple &TT, const std::string &FS, CodasipTargetMachine &TM)
: CodasipGenSubtargetInfo(TT, "codasip", FS),
  InstrInfo(TM), FrameInfo(TM), TLInfo(TM), TSInfo(TM),
  InstrItins(getInstrItineraryForCPU("codasip"))
{
  // Parse features string.
  //ParseSubtargetFeatures("codasip",FS);
}

bool CodasipSubtarget::enablePostRAScheduler() const
{
  
  if (POST_RA_ALWAYS_ON) return true;
  return TargetSubtargetInfo::enablePostRAScheduler();
  
}
