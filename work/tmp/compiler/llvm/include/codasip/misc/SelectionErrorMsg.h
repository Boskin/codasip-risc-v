/*
 /**
 * Codasip Ltd
 *
 * CONFIDENTIAL
 *
 * Copyright 2015 Codasip Ltd
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
 *  \file   SelectionErrorMsg.h
 *  \author Stanislav Melo
 *  \date   15.7. 2015
 *  \brief  implementation of more readable error message output
 */


#ifndef LLVM_CODASIP_INCLUDE_CODASIP_MISC_SELECTIONERRORMSG_H_
#define LLVM_CODASIP_INCLUDE_CODASIP_MISC_SELECTIONERRORMSG_H_

#include "llvm/CodeGen/SelectionDAG.h"
#include "llvm/CodeGen/MachineValueType.h"
#include "llvm/IR/Intrinsics.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/CodeGen/MachineFunction.h"
#include "llvm/Target/TargetMachine.h"
#include "llvm/Target/TargetIntrinsicInfo.h"
#include "llvm/Support/GraphWriter.h"
#include "llvm/Support/FileSystem.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/ADT/ilist.h"
#include "llvm/CodeGen/FunctionLoweringInfo.h"



void SelectionErrorMsg(llvm::SDNode *N, llvm::SelectionDAG* CurDAG,  llvm::MachineBasicBlock *bb);

template<typename GraphType>
void PrintGraphToFileNew(const GraphType &G, const llvm::Twine &Name,
               bool ShortNames, const llvm::Twine &Title);
void PrintGraphToFile(llvm::SelectionDAG *CurDAG, const std::string &Title);


#endif /* LLVM_CODASIP_INCLUDE_CODASIP_MISC_SELECTIONERRORMSG_H_ */
