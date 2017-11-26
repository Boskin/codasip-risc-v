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


// This pass is run before register allocation and performs a local optimisation
// which replaces certain sequences of instructions into MOIs.

// Note: this is still in a prototype phase

#define DEBUG_TYPE "moi-optim"

#include "Codasip.h"
#include "CodasipTargetMachine.h"

#include "codasip/Target/CodasipBaseMoiOptim.h"

using namespace llvm;

namespace {
// MOI peephole optimizer
struct MoiOptim: public BaseMoiOptim
{
  MoiOptim(CodasipTargetMachine &tm);
  static char ID;
};
}

char MoiOptim::ID;

MoiOptim::MoiOptim(CodasipTargetMachine &tm)
: BaseMoiOptim(tm,tm.getInstrInfo(),ID)
{
  // init data
  Mois.reserve(0);
  
  // for convenience and optimisation
  
}

// create the pass
FunctionPass* llvm::createCodasipMoiOptimPass(CodasipTargetMachine &tm)
{
  return new MoiOptim(tm);
}
