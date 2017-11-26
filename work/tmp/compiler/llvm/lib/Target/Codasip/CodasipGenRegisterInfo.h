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


#ifndef CODASIPGENREGISTERINFO_H
#define CODASIPGENREGISTERINFO_H

#include "Codasip.h"
#include "llvm/Target/TargetRegisterInfo.h"

#define GET_REGINFO_ENUM
#define GET_REGINFO_HEADER
#include "CodasipGenRegisterInfo.inc"

#include <list>

namespace llvm {

class CodasipGen2RegisterInfo: public CodasipGenRegisterInfo
{
public:
  const TargetInstrInfo &TII;
  CodasipGen2RegisterInfo(const TargetInstrInfo &tii);
  const uint16_t* getCalleeSavedRegs(const MachineFunction* MF) const override;
  BitVector getReservedRegs(const MachineFunction &MF) const override;
  void eliminateFrameIndex(MachineBasicBlock::iterator II, int SPAdj, unsigned FIOperandNum, RegScavenger *RS=NULL) const override;
  unsigned getFrameRegister(const MachineFunction &MF) const override;
  unsigned getFrameRegister(const MachineFunction &MF, int space) const;
  const TargetRegisterClass* getPointerRegClass(const llvm::MachineFunction &MF, unsigned Kind) const override;
  const TargetRegisterClass* getLargestLegalSuperClass(const TargetRegisterClass* RC, const MachineFunction&) const override;
  void getRegAllocationHints(unsigned VirtReg, ArrayRef<MCPhysReg> Order, SmallVectorImpl<MCPhysReg>& Hints, const MachineFunction& MF, const VirtRegMap* VRM, const LiveRegMatrix* Matrix) const override;
  bool requiresRegisterScavenging(const MachineFunction &MF) const override {
    return true;
  }
  // dual stack registers
  unsigned GetSP(unsigned space) const;
  unsigned GetBP(unsigned space) const;
  unsigned GetRA() const;
  // Frame index eliminitation info
  struct FiInfo {
    // indexes (base and offset)
    int bi,oi;
    // physical width if imm off, 0 otherwise
    unsigned w;
  };
  typedef std::list<FiInfo> IndList;
  FiInfo GetFiOpIndexes(MachineInstr &MI, unsigned FIOperandNum) const;
protected:
  virtual bool HandleAR(MachineInstr &MI, unsigned ind, unsigned AR) const;
  bool CheckAR(const MCInstrDesc &desc, unsigned ind, unsigned AR) const;
};

}

#endif
