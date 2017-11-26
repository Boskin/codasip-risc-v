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


#ifndef CODASIPCUSTOMHOOKS_H
#define CODASIPCUSTOMHOOKS_H

#include "codasip/Target/CodasipBaseHooks.h"

namespace llvm {

struct CodasipCustomHooks : CodasipBaseHooks
{
	CodasipCustomHooks() {}
    void SDBuilder_Clear(void *builder) override;
    const Value *SDBuilder_TargetIntrinsic_Process(void *builder, SelectionDAG &DAG, SmallVectorImpl<SDValue> &Ops,
                                                           const CallInst &I, SDLoc sdloc, unsigned Intrinsic, bool &is_processed) override;
    void SDBuilder_TargetIntrinsic_Pair(void *builder, SelectionDAG &DAG, SDValue &Result, SDValue &Pair) override;
    void SDBuilder_TargetIntrinsic_Result(void *builder, SDValue Result) override;
    void EmitMachineNode_Notify(unsigned Opc, SDNode *Node, const MachineInstr *MI) override;
    void MachineInstrCopy_Notify(const MachineInstr *, const MachineInstr *) override;
    bool MachineInstr_Isspecial(unsigned opc) override;
    
	~CodasipCustomHooks() {}
};

}

#endif //CODASIPCUSTOMHOOKS_H
