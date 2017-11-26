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


#ifndef CODASIPGENISELLOWERING_H
#define CODASIPGENISELLOWERING_H

#include "llvm/Target/TargetLowering.h"
#include "llvm/CodeGen/SelectionDAG.h"
#include "llvm/CodeGen/SelectionDAGISel.h"
#include "llvm/CodeGen/MachineInstr.h"
#include "llvm/CodeGen/MachineBasicBlock.h"
#include "codasip/Target/CodasipBaseLowering.h"
#include "codasip/Target/CodasipBaseTargetInstrInfo.h"

#include "Codasip.h"

namespace llvm {

namespace CodasipISD
{
  /// Internal subcodes for intrinsic calls
  enum IntrinsicsSubcodes
  {
    
    IntrinsicsSubcodes_stopper
  };
  /// Extra node types that are used for creation of abstract operations (generally used for all targets)
  enum NodeType
  {
    FIRST_NUMBER = CodasipBaseISD::CODASIP_OP_END,
    Call, Ret, TailCall,
    /// wrapper of global symbols adressed through pointer type imm
    GAWrap,
    // nodes for lowering of builtins
    
    // nodes for lowering of MOIs
    
    // mark
    LAST_NUMBER
  };
}

class CodasipGenTargetLowering: public CodasipBaseTargetLowering
{
public:
  explicit CodasipGenTargetLowering(CodasipTargetMachine &TM);

  SDValue LowerFormalArguments(SDValue Chain, CallingConv::ID CallConv, bool isVarArg, const SmallVectorImpl<ISD::InputArg> &Ins,
                               const SDLoc &dl, SelectionDAG &DAG, SmallVectorImpl<SDValue> &InVals) const override;

  SDValue LowerCall(TargetLowering::CallLoweringInfo &CLI, SmallVectorImpl<SDValue> &InVals) const override;

  SDValue LowerReturn(SDValue Chain, CallingConv::ID CallConv, bool isVarArg, const SmallVectorImpl<ISD::OutputArg> &Outs,
                      const SmallVectorImpl<SDValue> &OutVals, const SDLoc &dl, SelectionDAG &DAG) const override;

  bool CanLowerReturn
  (CallingConv::ID CallConv, MachineFunction &MF, bool isVarArg, const SmallVectorImpl<ISD::OutputArg> &Outs, LLVMContext &Context) const;

  SDValue LowerOperation(SDValue Op, SelectionDAG &DAG) const override;
  void ReplaceNodeResults(SDNode *N, SmallVectorImpl<SDValue> &Results, SelectionDAG &DAG) const override;
  /// Handles extends from illegal original types to attypical integers
  SDValue HandleExtToCust(SDValue Op, SelectionDAG &DAG) const;

  EVT getSetCCResultType(const DataLayout &DL, LLVMContext &Context, EVT VT) const override;
  MVT::SimpleValueType getCmpLibcallReturnType() const override;
  bool isShuffleMaskLegal(const SmallVectorImpl<int> &m, EVT t) const override;
  bool allowsMisalignedMemoryAccesses(EVT t, unsigned AddrSpace, unsigned Align, bool *Fast) const override;

  const char* getTargetNodeName(unsigned Opcode) const override;

  std::pair<unsigned, const TargetRegisterClass*>
  getRegForInlineAsmConstraint(const TargetRegisterInfo *TRI, StringRef Constraint, MVT VT) const override;
  unsigned getInlineAsmMemConstraint(StringRef ConstraintCode) const override;

  MachineBasicBlock* EmitInstrWithCustomInserter(MachineInstr &MI, MachineBasicBlock *BB) const override;
  // For semi-general registers of illegal types
  const TargetRegisterClass* getRepRegClassFor(MVT t) const;
  const TargetRegisterClass* getRegClassFor(MVT t) const;
  // Type leg. info for Pavel's types
  // (it's not virtual but it doesn't have to be)
  void computeRegisterProperties(const TargetRegisterInfo *TRI);
  /// From CodasipBaseTargetLowering
  unsigned GetSpace4Vt(EVT vt) const override;
  /// Always true for now
  bool isOffsetFoldingLegal(const GlobalAddressSDNode* GA) const override;
  // Auto shifts
  bool getPreIndexedAddressParts(SDNode* Node, SDValue& BasePtr, SDValue& Offset, ISD::MemIndexedMode& AM, SelectionDAG& DAG) const override;
  bool getPostIndexedAddressParts(SDNode* Node, SDNode* Op, SDValue& BasePtr, SDValue& Offset, ISD::MemIndexedMode& AM, SelectionDAG& DAG) const override;
  /** Hook for accessing arrays.
   * \return False, if normal implementation should be used. */
  bool EmittArrayAccess(SelectionDAG& DAG, const User &I, Type* indexedType, const Value* Idx, SDValue IdxN, SDValue& N, const SDLoc &dl) const;
  /// Handle custom unaligned ints in loads
  std::pair<SDValue,SDValue> ExpandCustomUnalignedLoad(LoadSDNode* LD, SelectionDAG& DAG) const;
  /// Handle custom unaligned ints in stores
  SDValue ExpandCustomUnalignedStore(StoreSDNode* ST, SelectionDAG& DAG) const;

protected:
  // Handle builtins
  virtual SDValue LowerIntrinsic(SDValue Op, SelectionDAG &DAG) const;
  // Auxs for getPreIndexedAddressParts/getPostIndexedAddressParts
  bool CheckIndexedLegal(LSBaseSDNode* N, ISD::MemIndexedMode AM) const;
  virtual bool CheckIndexedOffsetLegal(LSBaseSDNode* N, const ISD::MemIndexedMode AM, const SDValue& Offset, MachineFunction &MF) const;
  // inits IndOffsetInfo
  void InitIndOffsetInfo();
  // finer grained info for indexed ops
  std::vector< std::vector<bool> > IndOffsetInfo[2];
  // for optim - which instructions?
  std::vector< std::vector<unsigned> > IndInstructionsMap[2];
  // disable tail calls?
  bool DisableTailCalls;

private:
  struct StrCaseInsensitive {
    bool operator() (const StringRef left, const StringRef right) const {
      return left.compare_lower(right) < 0;
    }
  };
};

}

#endif
