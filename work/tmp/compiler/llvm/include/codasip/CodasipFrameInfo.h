/**************************************************************************************************
 *                     Copyright (c) 2016  Codasip, Ltd. All Rights Reserved.                     *
 **************************************************************************************************/
/**
 *  \file
 *  \author jan
 *  \date   10 Feb 2016
 *  \brief  Declaration/Implementation of the class.
 */
#ifndef CODASIP_CODASIPFRAMEINFO_H_
#define CODASIP_CODASIPFRAMEINFO_H_

#include "llvm/CodeGen/MachineFrameInfo.h"

namespace llvm
{

/// MachineFrameInfo with expanded functionality - no new data
class CodasipMachineFrameInfo: public MachineFrameInfo
{
public:
  // Auxiliary constructor
  CodasipMachineFrameInfo(const MachineFrameInfo *space1, unsigned alig);
  // Aux access, can't be read any other way
  unsigned GetStackAlignment() const;
};

inline CodasipMachineFrameInfo::CodasipMachineFrameInfo(const MachineFrameInfo *space1, unsigned alig)
: MachineFrameInfo(*space1)
{
  // overwrite
  StackAlignment = alig;
}

inline unsigned CodasipMachineFrameInfo::GetStackAlignment() const
{
  return StackAlignment;
}

}//namespace llvm

#endif  // CODASIPFRAMEINFO_H_
