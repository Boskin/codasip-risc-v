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


#ifndef CODASIPMACHINEFUNCTIONINFO_H
#define CODASIPMACHINEFUNCTIONINFO_H

#include "llvm/ADT/SmallVector.h"
#include "llvm/CodeGen/MachineFunction.h"
#include "llvm/CodeGen/MachineFrameInfo.h"
#include "codasip/CodasipFrameInfo.h"

#include <map>
#include <set>
#include <vector>

#define STACK_COUNT  1

namespace llvm {

class CodasipFunctionInfo: public MachineFunctionInfo
{
public:
  CodasipFunctionInfo(MachineFunction &MF);
  virtual ~CodasipFunctionInfo();
  /** Metainfo for varargs.
   * Created during analysis of formal arguments.
   * Intented for usage in prologue emition - va_start needs this in constants. */
  struct ArgsInfo {
    /// The last fixed arg on the stack.
    int StackOff;
    int StackFI;
  } ArgsInfo;
  /** A stack shift (in bytes) made on stack in prologue "out of system".
   * (For registers such as BP.) */
  const int StackShift;
  /** SRetReturnReg - Some subtargets require that sret lowering includes
   * returning the value of the returned struct in a register. This field
   * holds the virtual register into which the sret argument is passed. */
  unsigned StrctRetReg;
  /** Metainfo for return value.
   * Registers used for return (if it isn't struct ret). */
  std::vector<unsigned> RetRegs;
  /// Has ISD::FRAMEADDR or ISD::RETURNADDR
  bool HasGetAdr;

  /// Get an address space for the given index
  unsigned GetAdrSpace(int FI) const;
  /** Wrapper for writing in FI mapping.
   * \return True, if conflict. */
  bool SetAdrSpace(int FI, unsigned space, bool over=false);
  /// Is this value inserted?
  bool HasExplAdrSpace(int FI) const;
  /// Is this value inserted?
  bool HasAdrSpace(int FI) const;
  /// Mark implicit space
  void MarkImplSpace(int FI);
  /// Mark outgoing call param
  void MarkOutFI(int FI);
  /// Is outgoing call param?
  bool IsOutFI(int FI) const;
  /** Get frame info for the given space.
   * Index 0 is the original frame info. */
  MachineFrameInfo* GetFrameInfo(unsigned ind) const;
  /** Performs final processing of stack objects.
   * (Meant for usage in processFunctionBeforeFrameFinalized) */
  void ProcessFunctionBeforeFrameFinalized();
  // unused
  void setBlockID(MachineBasicBlock const *b, int id);
  int getBlockID(MachineBasicBlock const *b) const;

private:
  // Aux method
  void Filter(MachineFrameInfo *MFI, const unsigned space);

  /// A map of FIs and spaces
  typedef std::map<int,unsigned> FIMap;
  FIMap FISpaces;
  /// A set of implicit FIs
  typedef std::set<int> FISet;
  FISet FI_Impls;
  /// A set of FIs belonging to outgoing call params.
  FISet FI_Outs;
  /// Alignment of stacks (needed for aux purposes)
  typedef std::vector<unsigned> FrameAlignsT;
  FrameAlignsT FrameAligns;
  /** A vector of frame infos for all stacks.
   * The first one is only a pointer at the proper (llvm) frame info. */
  typedef std::vector<MachineFrameInfo*> FrameInfosT;
  FrameInfosT FrameInfos;
  // unused
  typedef std::map<MachineBasicBlock const*, int> IDMap;
  IDMap blockIDs;
};

inline MachineFrameInfo* CodasipFunctionInfo::GetFrameInfo(unsigned ind) const
{
  assert(ind < FrameInfos.size());
  return FrameInfos[ind];
}

// auxs
inline const MachineFrameInfo* GetFrameInfo(const MachineFunction &MF, unsigned ind)
{
  return MF.getInfo<CodasipFunctionInfo>()->GetFrameInfo(ind);
}
inline bool HasCall(const MachineFunction &MF)
{
  return MF.getFrameInfo().hasCalls();
}

inline bool CodasipFunctionInfo::HasExplAdrSpace(int FI) const
{
  return HasAdrSpace(FI) && !FI_Impls.count(FI);
}
inline void CodasipFunctionInfo::MarkImplSpace(int FI)
{
  FI_Impls.insert(FI);
}

inline void CodasipFunctionInfo::MarkOutFI(int FI)
{
  FI_Outs.insert(FI);
}
inline bool CodasipFunctionInfo::IsOutFI(int FI) const
{
  return FI_Outs.count(FI);
}

// macro for applying a bool query on all frame infos
// result is stored in a variable of the same name as the method
#define MULTISTACK_CALL_BOOL(MF,MR) \
{\
  for (unsigned i=0; i<STACK_COUNT; ++i)\
  {\
    if (GetFrameInfo(MF,i)->MR()) {\
      MR = true;\
    }\
  }\
}

}//namespace llvm

#endif
