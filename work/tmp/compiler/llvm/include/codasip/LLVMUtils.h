/**
 * Codasip Ltd
 *
 * CONFIDENTIAL
 *
 * Copyright 2017 Codasip Ltd
 *
 * All Rights Reserved.
 *
 * NOTICE: All information contained in this file, is and shall remain the property of Codasip Ltd
 * and its suppliers, if any.
 *
 * The intellectual and technical concepts contained herein are confidential and proprietary to
 * Codasip Ltd and are protected by trade secret and copyright law.  In addition, elements of the
 * technical concepts may be patent pending.
 *
 * This file is part of the Codasip Studio product. No part of the Studio product, including this
 * file, may be use, copied, modified, or distributed except in accordance with the terms contained
 * in Codasip license agreement under which you obtained this file.
 *
 *  \file
 *  \author Pavel Šnobl
 *  \date   27. 4. 2017
 *  \brief  Declaration/Implementation of the class.
 */

#ifndef LLVMUTILS_H_
#define LLVMUTILS_H_

#include "llvm/IR/Value.h"

using namespace llvm;

// check whether the value is either immediate read or load from memory
// also check that the current target is extractor
inline bool isImmediateOrLoadInExtractor(Value *V)
{
  Instruction *I = dyn_cast<Instruction>(V);
  if (!I) return false;

  if (I->getModule()->getTargetTriple() == "extractor") {
	if (CallInst *call = dyn_cast<CallInst>(I)) {
	  if (Function *called_function = call->getCalledFunction())
		if (called_function->getName().startswith("codasip_immread")
		|| called_function->getName().startswith("llvm.memread"))
		  return true;
	} else if (LoadInst *load = dyn_cast<LoadInst>(I)) {
	  for (auto use : load->getOperand(0)->users())
		if (StoreInst *ST = dyn_cast<StoreInst>(use))
		  if (CallInst *call = dyn_cast<CallInst>(ST->getOperand(0)))
			if (Function *called_function = call->getCalledFunction())
			  if (called_function->getName().startswith("codasip_immread")
			  || called_function->getName().startswith("llvm.memread"))
				return true;
	}
  }
  return false;
}

#endif /*LLVMUTILS_H_*/
