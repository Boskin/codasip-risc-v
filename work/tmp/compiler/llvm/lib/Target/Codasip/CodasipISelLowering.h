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


// you can edit this file

#ifndef CODASIPISELLOWERING_H
#define CODASIPISELLOWERING_H

#include "CodasipGenISelLowering.h"

namespace llvm {

/// use this class to reimplement the generated lowerer
class CodasipTargetLowering: public CodasipGenTargetLowering
{
public:
  explicit CodasipTargetLowering(CodasipTargetMachine &TM);
  /// Handles instructions with "usesCustomInserter" flag.
  MachineBasicBlock* EmitInstrWithCustomInserter(MachineInstr &MI, MachineBasicBlock *BB) const override;
  /// Custom lowering
  SDValue LowerOperation(SDValue Op, SelectionDAG &DAG) const;
  // various meta-info
  EVT getSetCCResultType(const DataLayout &DL, LLVMContext &Context, EVT VT) const override;
  MVT::SimpleValueType getCmpLibcallReturnType() const override;
  bool isShuffleMaskLegal(const SmallVectorImpl<int> &m, EVT t) const override;
  bool allowsMisalignedMemoryAccesses(EVT t, unsigned AddrSpace, unsigned Align, bool*) const override;
  bool isOffsetFoldingLegal(const GlobalAddressSDNode* GA) const override;
  /** Performs finer grained checking of indexed load/store availability.
   * \param N  The load/store.
   * \param AM Intended indexing mode.
   * \param Offset  Shift operand.
   * \return True, if operation should be lowered. */
  bool CheckIndexedOffsetLegal(LSBaseSDNode* N, const ISD::MemIndexedMode AM, const SDValue& Offset, MachineFunction &MF) const override;
};

}

#endif
