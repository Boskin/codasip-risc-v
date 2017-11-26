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


#ifndef CODASIP_GEN_FRAMEINFO_H
#define CODASIP_GEN_FRAMEINFO_H

#include "Codasip.h"
#include "llvm/Target/TargetFrameLowering.h"
#include "llvm/Target/TargetInstrInfo.h"

namespace llvm {

class CodasipGenFrameLowering: public TargetFrameLowering
{
public:
  explicit CodasipGenFrameLowering(const CodasipTargetMachine &tm);
  void emitPrologue(MachineFunction &MF, MachineBasicBlock &MBB) const override;
  void emitEpilogue(MachineFunction &MF, MachineBasicBlock &MBB) const override;
  void determineCalleeSaves(MachineFunction &MF, BitVector &SavedRegs, RegScavenger *RS) const override;
  bool hasFP(const MachineFunction &MF) const override;
  bool hasReservedCallFrame(const MachineFunction &MF) const override;
  MachineBasicBlock::iterator eliminateCallFramePseudoInstr
  (MachineFunction &MF, MachineBasicBlock &MBB, MachineBasicBlock::iterator MI) const override;
  int getFrameIndexReference(const MachineFunction &MF, int FI, unsigned &FrameReg) const override;
  void processFunctionBeforeFrameFinalized(MachineFunction &MF, RegScavenger *RS) const override;
protected:
  /** Aux method for general shifting of SP(s).
   * \param II Current position.
   * \param dir Prologue or epilogue? */
  void StackAlloc(MachineFunction &MF, MachineBasicBlock &MB, MachineBasicBlock::iterator II, bool dir) const;
  /// Aux method for getFrameIndexReference
  int getFrameIndexOffset(const MachineFunction &MF, int FI) const;
  const TargetInstrInfo &TII;
};

/* Notes:
 * isFPCloseToIncomingSP - default returns true (fine for us) -not anymore
 */

} // End llvm namespace

#endif
