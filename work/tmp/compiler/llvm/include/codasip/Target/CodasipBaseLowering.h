/**
 * Codasip Ltd
 *
 * CONFIDENTIAL
 *
 * Copyright 2016 Codasip Ltd
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
 *  \author jan
 *  \date   27 Apr 2016
 *  \brief  Declaration/Implementation of the class.
 */

#ifndef CODASIPBASELOWERING_H_
#define CODASIPBASELOWERING_H_

#include "llvm/Target/TargetLowering.h"
#include "llvm/CodeGen/SelectionDAG.h"
#include "llvm/CodeGen/SelectionDAGISel.h"
#include "llvm/CodeGen/MachineInstr.h"
#include "llvm/CodeGen/MachineBasicBlock.h"

#include <utility>

namespace llvm {

struct CodasipBaseTargetLowering: public TargetLowering
{
  CodasipBaseTargetLowering(TargetMachine &TM): TargetLowering(TM) {}
  virtual unsigned GetSpace4Vt(EVT vt) const {return 0;}
  virtual bool EmittArrayAccess(SelectionDAG& DAG, const User &I, Type* indexedType, const Value* Idx, SDValue IdxN, SDValue& N, const SDLoc &dl) const {return false;}
  virtual std::pair<SDValue, SDValue> ExpandCustomUnalignedLoad(LoadSDNode* LD, SelectionDAG& DAG) const;
  virtual SDValue ExpandCustomUnalignedStore(StoreSDNode* ST, SelectionDAG& DAG) const {return SDValue();}
};

inline std::pair<SDValue, SDValue> CodasipBaseTargetLowering::ExpandCustomUnalignedLoad(LoadSDNode* LD, SelectionDAG& DAG) const
{
  return std::make_pair(SDValue(),SDValue());
}

}//namespace llvm

#endif  // CODASIPBASELOWERING_H_
