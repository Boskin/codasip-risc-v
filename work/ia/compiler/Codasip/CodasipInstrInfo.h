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


#ifndef CODASIPINSTRUCTIONINFO_H
#define CODASIPINSTRUCTIONINFO_H

#include "CodasipGenInstrInfo.h"

namespace llvm {

/// This class can be used for user's manual implementations.
class CodasipInstrInfo: public CodasipGenInstrInfo2
{
  public:
    explicit CodasipInstrInfo(CodasipTargetMachine &TM);

    void copyPhysReg(MachineBasicBlock &MBB, MachineBasicBlock::iterator MI, const DebugLoc& DL, unsigned DestReg, unsigned SrcReg, bool KillSrc) const override;
    void storeRegToStackSlot(MachineBasicBlock &MBB, MachineBasicBlock::iterator MBBI, unsigned SrcReg, bool isKill,
                             int FrameIndex, const TargetRegisterClass *RC, const TargetRegisterInfo *TRI) const override;
    void loadRegFromStackSlot(MachineBasicBlock &MBB, MachineBasicBlock::iterator MBBI, unsigned DestReg,
                              int FrameIndex, const TargetRegisterClass *RC, const TargetRegisterInfo *TRI) const override;

    /// Use this to add/override pseudo insertions
    bool ExpandDummiesImpl(MachineInstr *MIp, MachineBasicBlock* &BB, const bool postRA, RegScavenger* RS) const override;

    bool analyzeBranch(MachineBasicBlock &MBB, MachineBasicBlock *&TBB, MachineBasicBlock *&FBB,
                       SmallVectorImpl<MachineOperand> &Cond, bool AllowModify) const override;
    bool reverseBranchCondition(SmallVectorImpl<MachineOperand> &Cond) const override;
    
    unsigned getEquivalentCondOpcode(ArrayRef<MachineOperand> Cond, int RegPos) const override;
    unsigned getBP(unsigned space) const override;
};

}

#endif
