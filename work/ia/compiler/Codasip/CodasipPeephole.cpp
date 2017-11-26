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


#include "Codasip.h"
#include "CodasipTargetMachine.h"
#include "codasip/Target/CodasipPrePostRAPeephole.h"
#include "codasip/Target/CodasipBasePeephole.h"

using namespace llvm;

namespace {

typedef std::map<unsigned, std::vector<unsigned> > CodeMap;

void addEqualMaps(CodeMap &EqualInstructions, CodeMap &TailCallClones)
{
EqualInstructions[Codasip::i_call_alias__rel_addr20__] = {Codasip::i_call_alias__rel_addr20__, Codasip::i_call_alias__rel_addr20__ES, Codasip::i_call_alias__rel_addr20__BA, };
EqualInstructions[Codasip::e_movi32__] = {Codasip::e_movi32__, Codasip::e_movi32__GA, Codasip::e_movi32__ES, Codasip::e_movi32__BA, Codasip::e_movi32__JT, Codasip::e_movi32__CP, };
EqualInstructions[Codasip::i_j_alias__rel_addr20__TAILCALL_CLONE_] = {Codasip::i_j_alias__rel_addr20__TAILCALL_CLONE_, Codasip::i_j_alias__rel_addr20__TAILCALL_CLONE_ES, Codasip::i_j_alias__rel_addr20__TAILCALL_CLONE_BA, };
EqualInstructions[Codasip::i_jal__opc_jal__x_0__rel_addr20__TAILCALL_CLONE_] = {Codasip::i_jal__opc_jal__x_0__rel_addr20__TAILCALL_CLONE_, Codasip::i_jal__opc_jal__x_0__rel_addr20__TAILCALL_CLONE_ES, Codasip::i_jal__opc_jal__x_0__rel_addr20__TAILCALL_CLONE_BA, };
EqualInstructions[Codasip::i_beqz_alias__x_0__rel_addr12__TAILCALL_CLONE_] = {Codasip::i_beqz_alias__x_0__rel_addr12__TAILCALL_CLONE_, Codasip::i_beqz_alias__x_0__rel_addr12__TAILCALL_CLONE_ES, Codasip::i_beqz_alias__x_0__rel_addr12__TAILCALL_CLONE_BA, };
EqualInstructions[Codasip::i_bgez_alias__x_0__rel_addr12__TAILCALL_CLONE_] = {Codasip::i_bgez_alias__x_0__rel_addr12__TAILCALL_CLONE_, Codasip::i_bgez_alias__x_0__rel_addr12__TAILCALL_CLONE_ES, Codasip::i_bgez_alias__x_0__rel_addr12__TAILCALL_CLONE_BA, };
EqualInstructions[Codasip::i_ble_alias__x_0__x_0__rel_addr12__TAILCALL_CLONE_] = {Codasip::i_ble_alias__x_0__x_0__rel_addr12__TAILCALL_CLONE_, Codasip::i_ble_alias__x_0__x_0__rel_addr12__TAILCALL_CLONE_ES, Codasip::i_ble_alias__x_0__x_0__rel_addr12__TAILCALL_CLONE_BA, };
EqualInstructions[Codasip::i_blez_alias__x_0__rel_addr12__TAILCALL_CLONE_] = {Codasip::i_blez_alias__x_0__rel_addr12__TAILCALL_CLONE_, Codasip::i_blez_alias__x_0__rel_addr12__TAILCALL_CLONE_ES, Codasip::i_blez_alias__x_0__rel_addr12__TAILCALL_CLONE_BA, };
EqualInstructions[Codasip::i_branch__opc_beq__x_0__x_0__rel_addr12__TAILCALL_CLONE_] = {Codasip::i_branch__opc_beq__x_0__x_0__rel_addr12__TAILCALL_CLONE_, Codasip::i_branch__opc_beq__x_0__x_0__rel_addr12__TAILCALL_CLONE_ES, Codasip::i_branch__opc_beq__x_0__x_0__rel_addr12__TAILCALL_CLONE_BA, };
EqualInstructions[Codasip::i_branch__opc_bge__x_0__x_0__rel_addr12__TAILCALL_CLONE_] = {Codasip::i_branch__opc_bge__x_0__x_0__rel_addr12__TAILCALL_CLONE_, Codasip::i_branch__opc_bge__x_0__x_0__rel_addr12__TAILCALL_CLONE_ES, Codasip::i_branch__opc_bge__x_0__x_0__rel_addr12__TAILCALL_CLONE_BA, };
EqualInstructions[Codasip::i_branch__opc_bgeu__x_0__x_0__rel_addr12__TAILCALL_CLONE_] = {Codasip::i_branch__opc_bgeu__x_0__x_0__rel_addr12__TAILCALL_CLONE_, Codasip::i_branch__opc_bgeu__x_0__x_0__rel_addr12__TAILCALL_CLONE_ES, Codasip::i_branch__opc_bgeu__x_0__x_0__rel_addr12__TAILCALL_CLONE_BA, };
EqualInstructions[Codasip::i_branch__opc_bgeu__xpr__x_0__rel_addr12__TAILCALL_CLONE_] = {Codasip::i_branch__opc_bgeu__xpr__x_0__rel_addr12__TAILCALL_CLONE_, Codasip::i_branch__opc_bgeu__xpr__x_0__rel_addr12__TAILCALL_CLONE_ES, Codasip::i_branch__opc_bgeu__xpr__x_0__rel_addr12__TAILCALL_CLONE_BA, };
EqualInstructions[Codasip::i_jalr__opc_jalr__x_0__rel_jalr_addr12__x_0__TAILCALL_CLONE_] = {Codasip::i_jalr__opc_jalr__x_0__rel_jalr_addr12__x_0__TAILCALL_CLONE_, Codasip::i_jalr__opc_jalr__x_0__rel_jalr_addr12__x_0__TAILCALL_CLONE_ES, Codasip::i_jalr__opc_jalr__x_0__rel_jalr_addr12__x_0__TAILCALL_CLONE_BA, };
TailCallClones[Codasip::i_branch__opc_beq__x_0__x_0__rel_addr12__] = {Codasip::i_branch__opc_beq__x_0__x_0__rel_addr12__TAILCALL_CLONE_, };
TailCallClones[Codasip::i_branch__opc_bge__x_0__x_0__rel_addr12__] = {Codasip::i_branch__opc_bge__x_0__x_0__rel_addr12__TAILCALL_CLONE_, };
TailCallClones[Codasip::i_branch__opc_bgeu__x_0__x_0__rel_addr12__] = {Codasip::i_branch__opc_bgeu__x_0__x_0__rel_addr12__TAILCALL_CLONE_, };
TailCallClones[Codasip::i_branch__opc_bgeu__xpr__x_0__rel_addr12__] = {Codasip::i_branch__opc_bgeu__xpr__x_0__rel_addr12__TAILCALL_CLONE_, };
TailCallClones[Codasip::i_jal__opc_jal__x_0__rel_addr20__] = {Codasip::i_jal__opc_jal__x_0__rel_addr20__TAILCALL_CLONE_, };
TailCallClones[Codasip::i_jalr__opc_jalr__x_0__rel_jalr_addr12__x_0__] = {Codasip::i_jalr__opc_jalr__x_0__rel_jalr_addr12__x_0__TAILCALL_CLONE_, };
TailCallClones[Codasip::i_beqz_alias__x_0__rel_addr12__] = {Codasip::i_beqz_alias__x_0__rel_addr12__TAILCALL_CLONE_, };
TailCallClones[Codasip::i_blez_alias__x_0__rel_addr12__] = {Codasip::i_blez_alias__x_0__rel_addr12__TAILCALL_CLONE_, };
TailCallClones[Codasip::i_bgez_alias__x_0__rel_addr12__] = {Codasip::i_bgez_alias__x_0__rel_addr12__TAILCALL_CLONE_, };
TailCallClones[Codasip::i_ble_alias__x_0__x_0__rel_addr12__] = {Codasip::i_ble_alias__x_0__x_0__rel_addr12__TAILCALL_CLONE_, };
TailCallClones[Codasip::i_j_alias__rel_addr20__] = {Codasip::i_j_alias__rel_addr20__TAILCALL_CLONE_, };
TailCallClones[Codasip::i_jr_alias__xpr__] = {Codasip::i_jr_alias__xpr__TAILCALL_CLONE_, };
TailCallClones[Codasip::i_ret_alias__] = {Codasip::i_ret_alias__TAILCALL_CLONE_, };

}


struct CodasipPreRAPeephole : public PreRAPeephole
{
  CodasipPreRAPeephole(CodasipTargetMachine &tm);
  static char ID;  
};

struct CodasipPostRAPeephole : public PostRAPeephole
{
  CodasipPostRAPeephole(CodasipTargetMachine &tm);
  static char ID;  
};

} // end of anonymous namespace

char CodasipPreRAPeephole::ID;

CodasipPreRAPeephole::CodasipPreRAPeephole(CodasipTargetMachine &tm)
: PreRAPeephole(tm, tm.getInstrInfo(), tm.getRegisterInfo(), ID)
{
  addEqualMaps(EqualInstructions, CallRetClones);
  // fill vector
  
}

// create the pass
FunctionPass* llvm::createCodasipPreRAPeepholePass(CodasipTargetMachine &tm)
{
  return new CodasipPreRAPeephole(tm);
}

char CodasipPostRAPeephole::ID;

CodasipPostRAPeephole::CodasipPostRAPeephole(CodasipTargetMachine &tm)
: PostRAPeephole(tm, tm.getInstrInfo(), tm.getRegisterInfo(), ID)
{
  addEqualMaps(EqualInstructions, CallRetClones);
  // fill vector
  
}

// create the pass
FunctionPass* llvm::createCodasipPostRAPeepholePass(CodasipTargetMachine &tm)
{
  return new CodasipPostRAPeephole(tm);
}

