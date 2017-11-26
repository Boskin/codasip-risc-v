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


#ifndef LLVM_LIB_TARGET_CODASIP_MCINST_CODASIPINSTPRINTER_H
#define LLVM_LIB_TARGET_CODASIP_MCINST_CODASIPINSTPRINTER_H

#include "llvm/MC/MCInst.h"
#include "llvm/Target/TargetOpcodes.h"

#include <vector>
#include <cassert>

/// How many slots in a bundle?
#define SLOTS 1

namespace llvm {

/** Special MCInst for bundles.
 * Gives greater low-level control in streaming. */
class BundleMCInst: public MCInst
{
public:
  inline BundleMCInst();
  /// Adds an instr at the end
  inline void PushInst(const MCInst &inst);
  /// Gets size of a bundle
  inline unsigned GetSize() const;
  /// Gets an actual instruction
  inline const MCInst& GetInstr(unsigned ind) const;
private:
  /** Instructions of the bundle
   * Usually has as many elements as is the slot count but it can be less (superslots). */
  std::vector<MCInst> Insts;
};

inline BundleMCInst::BundleMCInst()
: MCInst()
{
  setOpcode(TargetOpcode::BUNDLE);
  Insts.reserve(SLOTS);
}

inline unsigned BundleMCInst::GetSize() const
{
  return Insts.size();
}

inline void BundleMCInst::PushInst(const MCInst &inst)
{
  assert(GetSize()<SLOTS);
  Insts.push_back(inst);
}

inline const MCInst& BundleMCInst::GetInstr(unsigned ind) const
{
  assert(ind < GetSize());
  return Insts[ind];
}

}

#endif
