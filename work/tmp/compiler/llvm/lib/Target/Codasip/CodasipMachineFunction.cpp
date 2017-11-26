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


#include "CodasipMachineFunction.h"

#include "llvm/ADT/IndexedMap.h"
#include "llvm/ADT/STLExtras.h"
#include "llvm/ADT/SetVector.h"
#include "llvm/ADT/SmallSet.h"
#include "llvm/ADT/Statistic.h"
#include "llvm/CodeGen/MachineDominators.h"
#include "llvm/CodeGen/MachineFrameInfo.h"
#include "llvm/CodeGen/MachineInstr.h"
#include "llvm/CodeGen/MachineLoopInfo.h"
#include "llvm/CodeGen/MachineModuleInfo.h"
#include "llvm/CodeGen/MachineRegisterInfo.h"
#include "llvm/CodeGen/Passes.h"
#include "llvm/CodeGen/RegisterScavenging.h"
#include "llvm/CodeGen/StackProtector.h"
#include "llvm/CodeGen/WinEHFuncInfo.h"
#include "llvm/IR/DiagnosticInfo.h"
#include "llvm/IR/InlineAsm.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/Compiler.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Target/TargetFrameLowering.h"
#include "llvm/Target/TargetInstrInfo.h"
#include "llvm/Target/TargetMachine.h"
#include "llvm/Target/TargetRegisterInfo.h"
#include "llvm/Target/TargetSubtargetInfo.h"
#include "codasip/CodasipFrameInfo.h"

namespace llvm
{

// aux data
static const unsigned AlignmentsData[ 1 ] = { 8 };

CodasipFunctionInfo::CodasipFunctionInfo(MachineFunction &MF)
: StackShift(8), StrctRetReg(0), FrameInfos(STACK_COUNT,nullptr)
{
  // frame infos were inited to NULL, just set the normal one
  assert(STACK_COUNT);
  FrameInfos[0] = &MF.getFrameInfo();
  // fill align data
  FrameAligns.reserve(STACK_COUNT);
  for (unsigned i=0; i<STACK_COUNT; ++i)
  {
    FrameAligns.push_back(AlignmentsData[i]);
  }
  // other meta-info
  HasGetAdr = false;
}

CodasipFunctionInfo::~CodasipFunctionInfo()
{
  while (FrameInfos.size()>1) {
    delete FrameInfos.back();
    FrameInfos.pop_back();
  }
}

unsigned CodasipFunctionInfo::GetAdrSpace(int FI) const
{
  FIMap::const_iterator it = FISpaces.find(FI);
  if (it == FISpaces.end()) {
    return 0;
  }
  return it->second;
}

bool CodasipFunctionInfo::SetAdrSpace(int FI, unsigned space, bool over)
{
  FIMap::iterator it = FISpaces.find(FI);
  if (it == FISpaces.end())
  {
    FISpaces.insert(std::make_pair(FI,space));
    return false;
  }
  else
  {
    bool conflict = (it->second != space);
    if (over) {
      it->second = space;
    }
    return conflict;
  }
}

bool CodasipFunctionInfo::HasAdrSpace(int FI) const
{
  FIMap::const_iterator it = FISpaces.find(FI);
  return it != FISpaces.end();
}

void CodasipFunctionInfo::Filter(MachineFrameInfo *MFI, const unsigned space)
{
  // go through all objects
  for (int i = MFI->getObjectIndexBegin(); i < MFI->getObjectIndexEnd(); ++i)
  {
    // is in that space?
    if (GetAdrSpace(i) != space)
    {
      // remove
      MFI->RemoveStackObject(i);
    }
  }
}

// Was supposed to reflect calculateFrameObjectOffsets (in PrologEpilogInserter.cpp)
// but it didn't work so it needed to be dumbed down
static void CalculateFrameObjectOffsets(CodasipMachineFrameInfo *MFI)
{
  uint64_t size = 0;
  for (int i = MFI->getObjectIndexBegin(); i < MFI->getObjectIndexEnd(); ++i)
  {
    if (MFI->isDeadObjectIndex(i)) {
      continue;
    }
    unsigned os = MFI->getObjectSize(i);
    // checks
    assert(!MFI->isVariableSizedObjectIndex(i) && "doesn't work for variable sized objects");
    assert(os); //checked by above
//    assert(os >= MFI->GetStackAlignment() && "this is being prevented by backendgen which means that the source files of the backend have been fiddled with");
    // incremenet and store
    size += os;
    MFI->setObjectOffset(i,-size);
  }
  MFI->setStackSize(size);
}

void CodasipFunctionInfo::ProcessFunctionBeforeFrameFinalized()
{
  MachineFrameInfo *MFI = FrameInfos[0];
  assert(FrameAligns.size() == FrameInfos.size());
  for (unsigned i=1; i<FrameInfos.size(); ++i)
  {
    // construct
    CodasipMachineFrameInfo *cmfi = new CodasipMachineFrameInfo(MFI,FrameAligns[i]);
    // filter
    Filter(cmfi,i);
    // compute
    CalculateFrameObjectOffsets(cmfi);
    // store
    FrameInfos[i] = cmfi;
  }
  // and filter stack1
  CodasipMachineFrameInfo *cmfi = static_cast<CodasipMachineFrameInfo*>(MFI);
  Filter(cmfi,0);
}

// unused
void CodasipFunctionInfo::setBlockID(MachineBasicBlock const *b, int id)
{
  blockIDs[b] = id;
}
int CodasipFunctionInfo::getBlockID(MachineBasicBlock const *b) const
{
  IDMap::const_iterator i = blockIDs.find(b);
  if (i == blockIDs.end()) { return -1; }
  return i->second;
}

}//namespace llvm
