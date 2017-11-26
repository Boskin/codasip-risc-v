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


#include "CodasipCustomHooks.h"

// to be implemented by user

void CodasipCustomHooks::SDBuilder_Clear(void *builder)
{

}

const Value *CodasipCustomHooks::SDBuilder_TargetIntrinsic_Process(void *builder, SelectionDAG &DAG, SmallVectorImpl<SDValue> &Ops,
                                                       const CallInst &I, SDLoc sdloc, unsigned Intrinsic, bool &is_processed)
{
	return nullptr;
}

void CodasipCustomHooks::SDBuilder_TargetIntrinsic_Pair(void *builder, SelectionDAG &DAG, SDValue &Result, SDValue &Pair)
{

}

void CodasipCustomHooks::SDBuilder_TargetIntrinsic_Result(void *builder, SDValue Result)
{

}

void CodasipCustomHooks::EmitMachineNode_Notify(unsigned Opc, SDNode *Node, const MachineInstr *MI)
{

}

void CodasipCustomHooks::MachineInstrCopy_Notify(const MachineInstr *, const MachineInstr *)
{

}

bool CodasipCustomHooks::MachineInstr_Isspecial(unsigned opc)
{
	return false;
}
