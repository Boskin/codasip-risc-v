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


#ifndef CODASIPGENSELECTIONDAGINFO_H_
#define CODASIPGENSELECTIONDAGINFO_H_

#include "llvm/CodeGen/SelectionDAGTargetInfo.h"

namespace llvm {

class CodasipTargetMachine;

class CodasipGenSelectionDAGInfo: public SelectionDAGTargetInfo {
public:
  explicit CodasipGenSelectionDAGInfo(const CodasipTargetMachine &TM);
  /*SDValue EmitTargetCodeForMemcpy
  (SelectionDAG &DAG, DebugLoc dl, SDValue Chain, SDValue Op1, SDValue Op2, SDValue Op3, unsigned Align, bool isVolatile, bool AlwaysInline, MachinePointerInfo DstPtrInfo, MachinePointerInfo SrcPtrInfo) const;
  SDValue EmitTargetCodeForMemmove
  (SelectionDAG &DAG, DebugLoc dl, SDValue Chain, SDValue Op1, SDValue Op2, SDValue Op3, unsigned Align, bool isVolatile, MachinePointerInfo DstPtrInfo, MachinePointerInfo SrcPtrInfo) const;
  SDValue EmitTargetCodeForMemset
  (SelectionDAG &DAG, DebugLoc dl, SDValue Chain, SDValue Op1, SDValue Op2, SDValue Op3, unsigned Align, bool isVolatile, MachinePointerInfo DstPtrInfo) const;
  */
};

}

#endif /* CODASIPSELECTIONDAGINFO_H_ */
