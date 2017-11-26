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


include "CodasipInstrFormats.td"

// All instructions, including invalid and dummy ones

def i_call_reg_alias__xpr__: CodasipMicroClass_<(outs), (ins xpr:$op0, variable_ops)>
{
let AsmString = "call_reg $op0";
let Pattern = [(Call (i32 CheckFI_xpr:$op0))];
let Defs = [rf_xpr_1, rf_xpr_0, rf_xpr_3, rf_xpr_4, rf_xpr_5, rf_xpr_6, rf_xpr_7, rf_xpr_9, rf_xpr_10, rf_xpr_11, rf_xpr_12, rf_xpr_13, rf_xpr_14, rf_xpr_15, rf_xpr_16, rf_xpr_17, rf_xpr_18, rf_xpr_19, rf_xpr_20, rf_xpr_21, rf_xpr_22, rf_xpr_23, rf_xpr_24, rf_xpr_25, rf_xpr_26, rf_xpr_27, rf_xpr_28, rf_xpr_29, rf_xpr_30, rf_xpr_31];
let Uses = [rf_xpr_2];
let Size = 4;
let isCall = 1;
let mayLoad = 0;
let mayStore = 0;
// i_call_reg_alias(xpr)
}

def i_jr_alias__xpr__: CodasipMicroClass_<(outs), (ins xpr:$op0)>
{
let AsmString = "jr $op0";
let Pattern = [(brind (i32 CheckFI_xpr:$op0))];
let Size = 4;
let isBranch = 1;
let isIndirectBranch = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
// i_jr_alias(xpr)
}

def i_ret_alias__: CodasipMicroClass_<(outs), (ins variable_ops)>
{
let AsmString = "ret";
let Pattern = [(Return)];
let Size = 4;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
// i_ret_alias
}

def i_call_alias__rel_addr20__: CodasipMicroClass_<(outs), (ins i32imm:$op0, variable_ops)>
{
let AsmString = "call $op0";
let Pattern = [(Call (i32 (GAWrap (i32 tglobaladdr:$op0))))];
let Defs = [rf_xpr_1, rf_xpr_0, rf_xpr_3, rf_xpr_4, rf_xpr_5, rf_xpr_6, rf_xpr_7, rf_xpr_9, rf_xpr_10, rf_xpr_11, rf_xpr_12, rf_xpr_13, rf_xpr_14, rf_xpr_15, rf_xpr_16, rf_xpr_17, rf_xpr_18, rf_xpr_19, rf_xpr_20, rf_xpr_21, rf_xpr_22, rf_xpr_23, rf_xpr_24, rf_xpr_25, rf_xpr_26, rf_xpr_27, rf_xpr_28, rf_xpr_29, rf_xpr_30, rf_xpr_31];
let Uses = [rf_xpr_2];
let Size = 4;
let isCall = 1;
let mayLoad = 0;
let mayStore = 0;
// i_call_alias(rel_addr20)
}
def i_call_alias__rel_addr20__ES: CodasipMicroClass_<(outs), (ins i32imm:$op0, variable_ops)>
{
let AsmString = "call $op0";
let Pattern = [(Call (i32 (GAWrap (i32 texternalsym:$op0))))];
let Defs = [rf_xpr_1, rf_xpr_0, rf_xpr_3, rf_xpr_4, rf_xpr_5, rf_xpr_6, rf_xpr_7, rf_xpr_9, rf_xpr_10, rf_xpr_11, rf_xpr_12, rf_xpr_13, rf_xpr_14, rf_xpr_15, rf_xpr_16, rf_xpr_17, rf_xpr_18, rf_xpr_19, rf_xpr_20, rf_xpr_21, rf_xpr_22, rf_xpr_23, rf_xpr_24, rf_xpr_25, rf_xpr_26, rf_xpr_27, rf_xpr_28, rf_xpr_29, rf_xpr_30, rf_xpr_31];
let Uses = [rf_xpr_2];
let Size = 4;
let isCall = 1;
let mayLoad = 0;
let mayStore = 0;
// i_call_alias(rel_addr20)
}
def i_call_alias__rel_addr20__BA: CodasipMicroClass_<(outs), (ins i32imm:$op0, variable_ops)>
{
let AsmString = "call $op0";
let Pattern = [(Call (i32 (GAWrap (i32 tblockaddress:$op0))))];
let Defs = [rf_xpr_1, rf_xpr_0, rf_xpr_3, rf_xpr_4, rf_xpr_5, rf_xpr_6, rf_xpr_7, rf_xpr_9, rf_xpr_10, rf_xpr_11, rf_xpr_12, rf_xpr_13, rf_xpr_14, rf_xpr_15, rf_xpr_16, rf_xpr_17, rf_xpr_18, rf_xpr_19, rf_xpr_20, rf_xpr_21, rf_xpr_22, rf_xpr_23, rf_xpr_24, rf_xpr_25, rf_xpr_26, rf_xpr_27, rf_xpr_28, rf_xpr_29, rf_xpr_30, rf_xpr_31];
let Uses = [rf_xpr_2];
let Size = 4;
let isCall = 1;
let mayLoad = 0;
let mayStore = 0;
// i_call_alias(rel_addr20)
}

def i_j_alias__rel_addr20__: CodasipMicroClass_<(outs), (ins brtarg:$op0)>
{
let AsmString = "j $op0";
let Pattern = [(br bb:$op0)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
// i_j_alias(rel_addr20)
}

def i_jal__opc_jal__x_0__rel_addr20__: CodasipMicroClass_<(outs), (ins brtarg:$op0)>
{
let AsmString = "jal x0, $op0";
let Pattern = [(br bb:$op0)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
// i_jal(opc_jal,x_0,rel_addr20)
}

// note: (BGN545): The instruction contains invalid operation ('CurPC') even after the high-level analysis. The semantic pattern will be commented out.
def i_jal__opc_jal__xpr__rel_addr20__: CodasipMicroClass_<(outs xpr:$op0), (ins brtarg:$op1)>
{
let AsmString = "jal $op0, $op1";
//let Pattern = [(set xpr:$op0, (i32 (CurPC))), (br bb:$op1)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
// i_jal(opc_jal,xpr,rel_addr20)
}

def i_beqz_alias__x_0__rel_addr12__: CodasipMicroClass_<(outs), (ins brtarg:$op0)>
{
let AsmString = "beqz x0, $op0";
let Pattern = [(br bb:$op0)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
// i_beqz_alias(x_0,rel_addr12)
}

def i_beqz_alias__xpr__rel_addr12__: CodasipMicroClass_<(outs), (ins xpr:$op0, brtarg:$op1)>
{
let AsmString = "beqz $op0, $op1";
let Pattern = [(brcond (i32 (seteq  (i32 CheckFI_xpr:$op0), (i32 0))), bb:$op1)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
// i_beqz_alias(xpr,rel_addr12)
}

def i_bgez_alias__x_0__rel_addr12__: CodasipMicroClass_<(outs), (ins brtarg:$op0)>
{
let AsmString = "bgez x0, $op0";
let Pattern = [(br bb:$op0)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
// i_bgez_alias(x_0,rel_addr12)
}

def i_bgez_alias__xpr__rel_addr12__: CodasipMicroClass_<(outs), (ins xpr:$op0, brtarg:$op1)>
{
let AsmString = "bgez $op0, $op1";
let Pattern = [(brcond (i32 (setgt  (i32 CheckFI_xpr:$op0), (i32 -1))), bb:$op1)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
// i_bgez_alias(xpr,rel_addr12)
}

def i_bgt_alias__x_0__xpr__rel_addr12__: CodasipMicroClass_<(outs), (ins xpr:$op0, brtarg:$op1)>
{
let AsmString = "bgt x0, $op0, $op1";
let Pattern = [(brcond (i32 (setlt  (i32 CheckFI_xpr:$op0), (i32 0))), bb:$op1)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
// i_bgt_alias(x_0,xpr,rel_addr12)
}

def i_bgt_alias__xpr__x_0__rel_addr12__: CodasipMicroClass_<(outs), (ins xpr:$op0, brtarg:$op1)>
{
let AsmString = "bgt $op0, x0, $op1";
let Pattern = [(brcond (i32 (setgt  (i32 CheckFI_xpr:$op0), (i32 0))), bb:$op1)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
// i_bgt_alias(xpr,x_0,rel_addr12)
}

def i_bgt_alias__xpr__xpr__rel_addr12__: CodasipMicroClass_<(outs), (ins xpr:$op0, xpr:$op1, brtarg:$op2)>
{
let AsmString = "bgt $op0, $op1, $op2";
let Pattern = [(brcond (i32 (setgt  (i32 CheckFI_xpr:$op0), (i32 CheckFI_xpr:$op1))), bb:$op2)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
// i_bgt_alias(xpr,xpr,rel_addr12)
}

def i_bgt_alias__xpr__xpr__rel_addr12__swappedCmpClone0__: CodasipMicroClass_<(outs), (ins xpr:$op0, xpr:$op1, brtarg:$op2)>
{
let AsmString = "bgt $op1, $op0, $op2";
let Pattern = [(brcond (i32 (setlt  (i32 CheckFI_xpr:$op0), (i32 CheckFI_xpr:$op1))), bb:$op2)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
// i_bgt_alias(xpr,xpr,rel_addr12)
}

def i_bgtu_alias__xpr__x_0__rel_addr12__: CodasipMicroClass_<(outs), (ins xpr:$op0, brtarg:$op1)>
{
let AsmString = "bgtu $op0, x0, $op1";
let Pattern = [(brcond (i32 (setne  (i32 CheckFI_xpr:$op0), (i32 0))), bb:$op1)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
// i_bgtu_alias(xpr,x_0,rel_addr12)
}

def i_bgtu_alias__xpr__xpr__rel_addr12__: CodasipMicroClass_<(outs), (ins xpr:$op0, xpr:$op1, brtarg:$op2)>
{
let AsmString = "bgtu $op0, $op1, $op2";
let Pattern = [(brcond (i32 (setugt  (i32 CheckFI_xpr:$op0), (i32 CheckFI_xpr:$op1))), bb:$op2)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
// i_bgtu_alias(xpr,xpr,rel_addr12)
}

def i_bgtu_alias__xpr__xpr__rel_addr12__swappedCmpClone0__: CodasipMicroClass_<(outs), (ins xpr:$op0, xpr:$op1, brtarg:$op2)>
{
let AsmString = "bgtu $op1, $op0, $op2";
let Pattern = [(brcond (i32 (setult  (i32 CheckFI_xpr:$op0), (i32 CheckFI_xpr:$op1))), bb:$op2)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
// i_bgtu_alias(xpr,xpr,rel_addr12)
}

def i_bgtz_alias__xpr__rel_addr12__: CodasipMicroClass_<(outs), (ins xpr:$op0, brtarg:$op1)>
{
let AsmString = "bgtz $op0, $op1";
let Pattern = [(brcond (i32 (setgt  (i32 CheckFI_xpr:$op0), (i32 0))), bb:$op1)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
// i_bgtz_alias(xpr,rel_addr12)
}

def i_ble_alias__x_0__x_0__rel_addr12__: CodasipMicroClass_<(outs), (ins brtarg:$op0)>
{
let AsmString = "ble x0, x0, $op0";
let Pattern = [(br bb:$op0)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
// i_ble_alias(x_0,x_0,rel_addr12)
}

def i_ble_alias__x_0__xpr__rel_addr12__: CodasipMicroClass_<(outs), (ins xpr:$op0, brtarg:$op1)>
{
let AsmString = "ble x0, $op0, $op1";
let Pattern = [(brcond (i32 (setgt  (i32 CheckFI_xpr:$op0), (i32 -1))), bb:$op1)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
// i_ble_alias(x_0,xpr,rel_addr12)
}

def i_ble_alias__xpr__x_0__rel_addr12__: CodasipMicroClass_<(outs), (ins xpr:$op0, brtarg:$op1)>
{
let AsmString = "ble $op0, x0, $op1";
let Pattern = [(brcond (i32 (setlt  (i32 CheckFI_xpr:$op0), (i32 1))), bb:$op1)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
// i_ble_alias(xpr,x_0,rel_addr12)
}

def i_ble_alias__xpr__xpr__rel_addr12__: CodasipMicroClass_<(outs), (ins xpr:$op0, xpr:$op1, brtarg:$op2)>
{
let AsmString = "ble $op0, $op1, $op2";
let Pattern = [(brcond (i32 (setle  (i32 CheckFI_xpr:$op0), (i32 CheckFI_xpr:$op1))), bb:$op2)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
// i_ble_alias(xpr,xpr,rel_addr12)
}

def i_ble_alias__xpr__xpr__rel_addr12__swappedCmpClone0__: CodasipMicroClass_<(outs), (ins xpr:$op0, xpr:$op1, brtarg:$op2)>
{
let AsmString = "ble $op1, $op0, $op2";
let Pattern = [(brcond (i32 (setge  (i32 CheckFI_xpr:$op0), (i32 CheckFI_xpr:$op1))), bb:$op2)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
// i_ble_alias(xpr,xpr,rel_addr12)
}

def i_bleu_alias__x_0__xpr__rel_addr12__: CodasipMicroClass_<(outs), (ins xpr:$op0, brtarg:$op1)>
{
let AsmString = "bleu x0, $op0, $op1";
let Pattern = [(brcond (i32 (setne  (i32 CheckFI_xpr:$op0), (i32 0))), bb:$op1)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
// i_bleu_alias(x_0,xpr,rel_addr12)
}

def i_bleu_alias__xpr__xpr__rel_addr12__: CodasipMicroClass_<(outs), (ins xpr:$op0, xpr:$op1, brtarg:$op2)>
{
let AsmString = "bleu $op0, $op1, $op2";
let Pattern = [(brcond (i32 (setult  (i32 CheckFI_xpr:$op0), (i32 CheckFI_xpr:$op1))), bb:$op2)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
// i_bleu_alias(xpr,xpr,rel_addr12)
}

def i_bleu_alias__xpr__xpr__rel_addr12__swappedCmpClone0__: CodasipMicroClass_<(outs), (ins xpr:$op0, xpr:$op1, brtarg:$op2)>
{
let AsmString = "bleu $op1, $op0, $op2";
let Pattern = [(brcond (i32 (setugt  (i32 CheckFI_xpr:$op0), (i32 CheckFI_xpr:$op1))), bb:$op2)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
// i_bleu_alias(xpr,xpr,rel_addr12)
}

def i_blez_alias__x_0__rel_addr12__: CodasipMicroClass_<(outs), (ins brtarg:$op0)>
{
let AsmString = "blez x0, $op0";
let Pattern = [(br bb:$op0)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
// i_blez_alias(x_0,rel_addr12)
}

def i_blez_alias__xpr__rel_addr12__: CodasipMicroClass_<(outs), (ins xpr:$op0, brtarg:$op1)>
{
let AsmString = "blez $op0, $op1";
let Pattern = [(brcond (i32 (setlt  (i32 CheckFI_xpr:$op0), (i32 1))), bb:$op1)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
// i_blez_alias(xpr,rel_addr12)
}

def i_bltz_alias__xpr__rel_addr12__: CodasipMicroClass_<(outs), (ins xpr:$op0, brtarg:$op1)>
{
let AsmString = "bltz $op0, $op1";
let Pattern = [(brcond (i32 (setlt  (i32 CheckFI_xpr:$op0), (i32 0))), bb:$op1)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
// i_bltz_alias(xpr,rel_addr12)
}

def i_bnez_alias__xpr__rel_addr12__: CodasipMicroClass_<(outs), (ins xpr:$op0, brtarg:$op1)>
{
let AsmString = "bnez $op0, $op1";
let Pattern = [(brcond (i32 (setne  (i32 CheckFI_xpr:$op0), (i32 0))), bb:$op1)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
// i_bnez_alias(xpr,rel_addr12)
}

def i_branch__opc_beq__x_0__x_0__rel_addr12__: CodasipMicroClass_<(outs), (ins brtarg:$op0)>
{
let AsmString = "beq x0, x0, $op0";
let Pattern = [(br bb:$op0)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
// i_branch(opc_beq,x_0,x_0,rel_addr12)
}

def i_branch__opc_beq__x_0__xpr__rel_addr12__: CodasipMicroClass_<(outs), (ins xpr:$op0, brtarg:$op1)>
{
let AsmString = "beq x0, $op0, $op1";
let Pattern = [(brcond (i32 (seteq  (i32 CheckFI_xpr:$op0), (i32 0))), bb:$op1)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
// i_branch(opc_beq,x_0,xpr,rel_addr12)
}

def i_branch__opc_beq__xpr__x_0__rel_addr12__: CodasipMicroClass_<(outs), (ins xpr:$op0, brtarg:$op1)>
{
let AsmString = "beq $op0, x0, $op1";
let Pattern = [(brcond (i32 (seteq  (i32 CheckFI_xpr:$op0), (i32 0))), bb:$op1)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
// i_branch(opc_beq,xpr,x_0,rel_addr12)
}

def i_branch__opc_beq__xpr__xpr__rel_addr12__: CodasipMicroClass_<(outs), (ins xpr:$op0, xpr:$op1, brtarg:$op2)>
{
let AsmString = "beq $op0, $op1, $op2";
let Pattern = [(brcond (i32 (seteq  (i32 CheckFI_xpr:$op0), (i32 CheckFI_xpr:$op1))), bb:$op2)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
// i_branch(opc_beq,xpr,xpr,rel_addr12)
}

def i_branch__opc_bge__x_0__x_0__rel_addr12__: CodasipMicroClass_<(outs), (ins brtarg:$op0)>
{
let AsmString = "bge x0, x0, $op0";
let Pattern = [(br bb:$op0)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
// i_branch(opc_bge,x_0,x_0,rel_addr12)
}

def i_branch__opc_bge__x_0__xpr__rel_addr12__: CodasipMicroClass_<(outs), (ins xpr:$op0, brtarg:$op1)>
{
let AsmString = "bge x0, $op0, $op1";
let Pattern = [(brcond (i32 (setlt  (i32 CheckFI_xpr:$op0), (i32 1))), bb:$op1)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
// i_branch(opc_bge,x_0,xpr,rel_addr12)
}

def i_branch__opc_bge__xpr__x_0__rel_addr12__: CodasipMicroClass_<(outs), (ins xpr:$op0, brtarg:$op1)>
{
let AsmString = "bge $op0, x0, $op1";
let Pattern = [(brcond (i32 (setgt  (i32 CheckFI_xpr:$op0), (i32 -1))), bb:$op1)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
// i_branch(opc_bge,xpr,x_0,rel_addr12)
}

def i_branch__opc_bge__xpr__xpr__rel_addr12__: CodasipMicroClass_<(outs), (ins xpr:$op0, xpr:$op1, brtarg:$op2)>
{
let AsmString = "bge $op0, $op1, $op2";
let Pattern = [(brcond (i32 (setge  (i32 CheckFI_xpr:$op0), (i32 CheckFI_xpr:$op1))), bb:$op2)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
// i_branch(opc_bge,xpr,xpr,rel_addr12)
}

def i_branch__opc_bge__xpr__xpr__rel_addr12__swappedCmpClone0__: CodasipMicroClass_<(outs), (ins xpr:$op0, xpr:$op1, brtarg:$op2)>
{
let AsmString = "bge $op1, $op0, $op2";
let Pattern = [(brcond (i32 (setle  (i32 CheckFI_xpr:$op0), (i32 CheckFI_xpr:$op1))), bb:$op2)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
// i_branch(opc_bge,xpr,xpr,rel_addr12)
}

def i_branch__opc_bgeu__x_0__x_0__rel_addr12__: CodasipMicroClass_<(outs), (ins brtarg:$op0)>
{
let AsmString = "bgeu x0, x0, $op0";
let Pattern = [(br bb:$op0)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
// i_branch(opc_bgeu,x_0,x_0,rel_addr12)
}

def i_branch__opc_bgeu__x_0__xpr__rel_addr12__: CodasipMicroClass_<(outs), (ins xpr:$op0, brtarg:$op1)>
{
let AsmString = "bgeu x0, $op0, $op1";
let Pattern = [(brcond (i32 (seteq  (i32 CheckFI_xpr:$op0), (i32 0))), bb:$op1)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
// i_branch(opc_bgeu,x_0,xpr,rel_addr12)
}

def i_branch__opc_bgeu__xpr__x_0__rel_addr12__: CodasipMicroClass_<(outs), (ins brtarg:$op0)>
{
let AsmString = "bgeu x1, x0, $op0";
let Pattern = [(br bb:$op0)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
// i_branch(opc_bgeu,xpr,x_0,rel_addr12)
}

def i_branch__opc_bgeu__xpr__xpr__rel_addr12__: CodasipMicroClass_<(outs), (ins xpr:$op0, xpr:$op1, brtarg:$op2)>
{
let AsmString = "bgeu $op0, $op1, $op2";
let Pattern = [(brcond (i32 (setuge  (i32 CheckFI_xpr:$op0), (i32 CheckFI_xpr:$op1))), bb:$op2)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
// i_branch(opc_bgeu,xpr,xpr,rel_addr12)
}

def i_branch__opc_bgeu__xpr__xpr__rel_addr12__swappedCmpClone0__: CodasipMicroClass_<(outs), (ins xpr:$op0, xpr:$op1, brtarg:$op2)>
{
let AsmString = "bgeu $op1, $op0, $op2";
let Pattern = [(brcond (i32 (setule  (i32 CheckFI_xpr:$op0), (i32 CheckFI_xpr:$op1))), bb:$op2)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
// i_branch(opc_bgeu,xpr,xpr,rel_addr12)
}

def i_branch__opc_blt__x_0__xpr__rel_addr12__: CodasipMicroClass_<(outs), (ins xpr:$op0, brtarg:$op1)>
{
let AsmString = "blt x0, $op0, $op1";
let Pattern = [(brcond (i32 (setgt  (i32 CheckFI_xpr:$op0), (i32 0))), bb:$op1)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
// i_branch(opc_blt,x_0,xpr,rel_addr12)
}

def i_branch__opc_blt__xpr__x_0__rel_addr12__: CodasipMicroClass_<(outs), (ins xpr:$op0, brtarg:$op1)>
{
let AsmString = "blt $op0, x0, $op1";
let Pattern = [(brcond (i32 (setlt  (i32 CheckFI_xpr:$op0), (i32 0))), bb:$op1)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
// i_branch(opc_blt,xpr,x_0,rel_addr12)
}

def i_branch__opc_blt__xpr__xpr__rel_addr12__: CodasipMicroClass_<(outs), (ins xpr:$op0, xpr:$op1, brtarg:$op2)>
{
let AsmString = "blt $op0, $op1, $op2";
let Pattern = [(brcond (i32 (setlt  (i32 CheckFI_xpr:$op0), (i32 CheckFI_xpr:$op1))), bb:$op2)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
// i_branch(opc_blt,xpr,xpr,rel_addr12)
}

def i_branch__opc_blt__xpr__xpr__rel_addr12__swappedCmpClone0__: CodasipMicroClass_<(outs), (ins xpr:$op0, xpr:$op1, brtarg:$op2)>
{
let AsmString = "blt $op1, $op0, $op2";
let Pattern = [(brcond (i32 (setgt  (i32 CheckFI_xpr:$op0), (i32 CheckFI_xpr:$op1))), bb:$op2)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
// i_branch(opc_blt,xpr,xpr,rel_addr12)
}

def i_branch__opc_bltu__x_0__xpr__rel_addr12__: CodasipMicroClass_<(outs), (ins xpr:$op0, brtarg:$op1)>
{
let AsmString = "bltu x0, $op0, $op1";
let Pattern = [(brcond (i32 (setne  (i32 CheckFI_xpr:$op0), (i32 0))), bb:$op1)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
// i_branch(opc_bltu,x_0,xpr,rel_addr12)
}

def i_branch__opc_bltu__xpr__xpr__rel_addr12__: CodasipMicroClass_<(outs), (ins xpr:$op0, xpr:$op1, brtarg:$op2)>
{
let AsmString = "bltu $op0, $op1, $op2";
let Pattern = [(brcond (i32 (setult  (i32 CheckFI_xpr:$op0), (i32 CheckFI_xpr:$op1))), bb:$op2)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
// i_branch(opc_bltu,xpr,xpr,rel_addr12)
}

def i_branch__opc_bltu__xpr__xpr__rel_addr12__swappedCmpClone0__: CodasipMicroClass_<(outs), (ins xpr:$op0, xpr:$op1, brtarg:$op2)>
{
let AsmString = "bltu $op1, $op0, $op2";
let Pattern = [(brcond (i32 (setugt  (i32 CheckFI_xpr:$op0), (i32 CheckFI_xpr:$op1))), bb:$op2)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
// i_branch(opc_bltu,xpr,xpr,rel_addr12)
}

def i_branch__opc_bne__x_0__xpr__rel_addr12__: CodasipMicroClass_<(outs), (ins xpr:$op0, brtarg:$op1)>
{
let AsmString = "bne x0, $op0, $op1";
let Pattern = [(brcond (i32 (setne  (i32 CheckFI_xpr:$op0), (i32 0))), bb:$op1)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
// i_branch(opc_bne,x_0,xpr,rel_addr12)
}

def i_branch__opc_bne__xpr__x_0__rel_addr12__: CodasipMicroClass_<(outs), (ins xpr:$op0, brtarg:$op1)>
{
let AsmString = "bne $op0, x0, $op1";
let Pattern = [(brcond (i32 (setne  (i32 CheckFI_xpr:$op0), (i32 0))), bb:$op1)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
// i_branch(opc_bne,xpr,x_0,rel_addr12)
}

def i_branch__opc_bne__xpr__xpr__rel_addr12__: CodasipMicroClass_<(outs), (ins xpr:$op0, xpr:$op1, brtarg:$op2)>
{
let AsmString = "bne $op0, $op1, $op2";
let Pattern = [(brcond (i32 (setne  (i32 CheckFI_xpr:$op0), (i32 CheckFI_xpr:$op1))), bb:$op2)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let mayLoad = 0;
let mayStore = 0;
// i_branch(opc_bne,xpr,xpr,rel_addr12)
}

def i_jalr__opc_jalr__x_0__rel_jalr_addr12__x_0__: CodasipMicroClass_<(outs), (ins brtarg:$op0)>
{
let AsmString = "jalr x0, $op0 ( x0 )";
let Pattern = [(br bb:$op0)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
// i_jalr(opc_jalr,x_0,rel_jalr_addr12,x_0)
}

// note: (BGN545): The instruction contains invalid operation ('CurPC') even after the high-level analysis. The semantic pattern will be commented out.
def i_jalr__opc_jalr__xpr__rel_jalr_addr12__x_0__: CodasipMicroClass_<(outs xpr:$op0), (ins brtarg:$op1)>
{
let AsmString = "jalr $op0, $op1 ( x0 )";
//let Pattern = [(set xpr:$op0, (i32 (CurPC))), (br bb:$op1)];
let Size = 4;
let isBranch = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
// i_jalr(opc_jalr,xpr,rel_jalr_addr12,x_0)
}

def i_alu__opc_add__x_0__x_0__x_0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "add x0, x0, x0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_add,x_0,x_0,x_0)
}

def i_alu__opc_add__x_0__x_0__xpr__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "add x0, x0, x1";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_add,x_0,x_0,xpr)
}

def i_alu__opc_add__x_0__xpr__x_0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "add x0, x1, x0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_add,x_0,xpr,x_0)
}

def i_alu__opc_add__x_0__xpr__xpr__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "add x0, x1, x1";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_add,x_0,xpr,xpr)
}

def i_alu__opc_add__xpr__x_0__x_0__: CodasipMicroClass_<(outs xpr:$op0), (ins)>
{
let AsmString = "add $op0, x0, x0";
let Pattern = [(set xpr:$op0, (i32 0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_add,xpr,x_0,x_0)
}

def i_alu__opc_add__xpr__x_0__xpr__: CodasipMicroClass_<(outs xpr:$op0), (ins xpr:$op1)>
{
let AsmString = "add $op0, x0, $op1";
//let Pattern = [(set xpr:$op0, (i32 CheckFI_xpr:$op1))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
// i_alu(opc_add,xpr,x_0,xpr)
}

def i_alu__opc_add__xpr__xpr__x_0__: CodasipMicroClass_<(outs xpr:$op0), (ins xpr:$op1)>
{
let AsmString = "add $op0, $op1, x0";
//let Pattern = [(set xpr:$op0, (i32 CheckFI_xpr:$op1))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
// i_alu(opc_add,xpr,xpr,x_0)
}

def i_alu__opc_add__xpr__xpr__xpr__: CodasipMicroClass_<(outs xpr:$op0), (ins xpr:$op1, xpr:$op2)>
{
let AsmString = "add $op0, $op2, $op1";
let Pattern = [(set xpr:$op0, (i32 (add (i32 CheckFI_xpr:$op1), (i32 CheckFI_xpr:$op2))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let isCommutable = 1;
// i_alu(opc_add,xpr,xpr,xpr)
}

def i_alu__opc_and__x_0__x_0__x_0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "and x0, x0, x0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_and,x_0,x_0,x_0)
}

def i_alu__opc_and__x_0__x_0__xpr__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "and x0, x0, x1";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_and,x_0,x_0,xpr)
}

def i_alu__opc_and__x_0__xpr__x_0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "and x0, x1, x0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_and,x_0,xpr,x_0)
}

def i_alu__opc_and__x_0__xpr__xpr__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "and x0, x1, x1";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_and,x_0,xpr,xpr)
}

def i_alu__opc_and__xpr__x_0__x_0__: CodasipMicroClass_<(outs xpr:$op0), (ins)>
{
let AsmString = "and $op0, x0, x0";
let Pattern = [(set xpr:$op0, (i32 0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_and,xpr,x_0,x_0)
}

def i_alu__opc_and__xpr__x_0__xpr__: CodasipMicroClass_<(outs xpr:$op0), (ins)>
{
let AsmString = "and $op0, x0, x1";
let Pattern = [(set xpr:$op0, (i32 0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_and,xpr,x_0,xpr)
}

def i_alu__opc_and__xpr__xpr__x_0__: CodasipMicroClass_<(outs xpr:$op0), (ins)>
{
let AsmString = "and $op0, x1, x0";
let Pattern = [(set xpr:$op0, (i32 0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_and,xpr,xpr,x_0)
}

def i_alu__opc_and__xpr__xpr__xpr__: CodasipMicroClass_<(outs xpr:$op0), (ins xpr:$op1, xpr:$op2)>
{
let AsmString = "and $op0, $op2, $op1";
let Pattern = [(set xpr:$op0, (i32 (and (i32 CheckFI_xpr:$op1), (i32 CheckFI_xpr:$op2))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let isCommutable = 1;
// i_alu(opc_and,xpr,xpr,xpr)
}

def i_alu__opc_or__x_0__x_0__x_0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "or x0, x0, x0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_or,x_0,x_0,x_0)
}

def i_alu__opc_or__x_0__x_0__xpr__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "or x0, x0, x1";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_or,x_0,x_0,xpr)
}

def i_alu__opc_or__x_0__xpr__x_0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "or x0, x1, x0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_or,x_0,xpr,x_0)
}

def i_alu__opc_or__x_0__xpr__xpr__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "or x0, x1, x1";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_or,x_0,xpr,xpr)
}

def i_alu__opc_or__xpr__x_0__x_0__: CodasipMicroClass_<(outs xpr:$op0), (ins)>
{
let AsmString = "or $op0, x0, x0";
let Pattern = [(set xpr:$op0, (i32 0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_or,xpr,x_0,x_0)
}

def i_alu__opc_or__xpr__x_0__xpr__: CodasipMicroClass_<(outs xpr:$op0), (ins xpr:$op1)>
{
let AsmString = "or $op0, x0, $op1";
//let Pattern = [(set xpr:$op0, (i32 CheckFI_xpr:$op1))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
// i_alu(opc_or,xpr,x_0,xpr)
}

def i_alu__opc_or__xpr__xpr__x_0__: CodasipMicroClass_<(outs xpr:$op0), (ins xpr:$op1)>
{
let AsmString = "or $op0, $op1, x0";
//let Pattern = [(set xpr:$op0, (i32 CheckFI_xpr:$op1))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
// i_alu(opc_or,xpr,xpr,x_0)
}

def i_alu__opc_or__xpr__xpr__xpr__: CodasipMicroClass_<(outs xpr:$op0), (ins xpr:$op1, xpr:$op2)>
{
let AsmString = "or $op0, $op2, $op1";
let Pattern = [(set xpr:$op0, (i32 (or (i32 CheckFI_xpr:$op1), (i32 CheckFI_xpr:$op2))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let isCommutable = 1;
// i_alu(opc_or,xpr,xpr,xpr)
}

def i_alu__opc_sll__x_0__x_0__x_0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sll x0, x0, x0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_sll,x_0,x_0,x_0)
}

def i_alu__opc_sll__x_0__x_0__xpr__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sll x0, x0, x1";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_sll,x_0,x_0,xpr)
}

def i_alu__opc_sll__x_0__xpr__x_0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sll x0, x1, x0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_sll,x_0,xpr,x_0)
}

def i_alu__opc_sll__x_0__xpr__xpr__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sll x0, x1, x1";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_sll,x_0,xpr,xpr)
}

def i_alu__opc_sll__xpr__x_0__x_0__: CodasipMicroClass_<(outs xpr:$op0), (ins)>
{
let AsmString = "sll $op0, x0, x0";
let Pattern = [(set xpr:$op0, (i32 0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_sll,xpr,x_0,x_0)
}

def i_alu__opc_sll__xpr__x_0__xpr__: CodasipMicroClass_<(outs xpr:$op0), (ins)>
{
let AsmString = "sll $op0, x0, x1";
let Pattern = [(set xpr:$op0, (i32 0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_sll,xpr,x_0,xpr)
}

def i_alu__opc_sll__xpr__xpr__x_0__: CodasipMicroClass_<(outs xpr:$op0), (ins xpr:$op1)>
{
let AsmString = "sll $op0, $op1, x0";
//let Pattern = [(set xpr:$op0, (i32 CheckFI_xpr:$op1))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
// i_alu(opc_sll,xpr,xpr,x_0)
}

def i_alu__opc_sll__xpr__xpr__xpr__: CodasipMicroClass_<(outs xpr:$op0), (ins xpr:$op1, xpr:$op2)>
{
let AsmString = "sll $op0, $op1, $op2";
let Pattern = [(set xpr:$op0, (i32 (shl (i32 CheckFI_xpr:$op1), (i32 CheckFI_xpr:$op2))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_sll,xpr,xpr,xpr)
}

def i_alu__opc_slt__x_0__x_0__x_0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "slt x0, x0, x0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_slt,x_0,x_0,x_0)
}

def i_alu__opc_slt__x_0__x_0__xpr__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "slt x0, x0, x1";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_slt,x_0,x_0,xpr)
}

def i_alu__opc_slt__x_0__xpr__x_0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "slt x0, x1, x0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_slt,x_0,xpr,x_0)
}

def i_alu__opc_slt__x_0__xpr__xpr__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "slt x0, x1, x1";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_slt,x_0,xpr,xpr)
}

def i_alu__opc_slt__xpr__x_0__x_0__: CodasipMicroClass_<(outs xpr:$op0), (ins)>
{
let AsmString = "slt $op0, x0, x0";
let Pattern = [(set xpr:$op0, (i32 0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_slt,xpr,x_0,x_0)
}

def i_alu__opc_slt__xpr__x_0__xpr__: CodasipMicroClass_<(outs xpr:$op0), (ins xpr:$op1)>
{
let AsmString = "slt $op0, x0, $op1";
let Pattern = [(set xpr:$op0, (i32 (setgt  (i32 CheckFI_xpr:$op1), (i32 0))))];
let isCompare = 1;
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_slt,xpr,x_0,xpr)
}

def i_alu__opc_slt__xpr__xpr__x_0__: CodasipMicroClass_<(outs xpr:$op0), (ins xpr:$op1)>
{
let AsmString = "slt $op0, $op1, x0";
let Pattern = [(set xpr:$op0, (i32 (srl (i32 CheckFI_xpr:$op1), (i32 31))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_slt,xpr,xpr,x_0)
}

def i_alu__opc_slt__xpr__xpr__xpr__: CodasipMicroClass_<(outs xpr:$op0), (ins xpr:$op1, xpr:$op2)>
{
let AsmString = "slt $op0, $op1, $op2";
let Pattern = [(set xpr:$op0, (i32 (setlt  (i32 CheckFI_xpr:$op1), (i32 CheckFI_xpr:$op2))))];
let isCompare = 1;
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_slt,xpr,xpr,xpr)
}

def i_alu__opc_slt__xpr__xpr__xpr__swappedCmpClone0__: CodasipMicroClass_<(outs xpr:$op0), (ins xpr:$op1, xpr:$op2)>
{
let AsmString = "slt $op0, $op2, $op1";
let Pattern = [(set xpr:$op0, (i32 (setgt  (i32 CheckFI_xpr:$op1), (i32 CheckFI_xpr:$op2))))];
let isCompare = 1;
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_slt,xpr,xpr,xpr)
}

def i_alu__opc_sltu__x_0__x_0__x_0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sltu x0, x0, x0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_sltu,x_0,x_0,x_0)
}

def i_alu__opc_sltu__x_0__x_0__xpr__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sltu x0, x0, x1";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_sltu,x_0,x_0,xpr)
}

def i_alu__opc_sltu__x_0__xpr__x_0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sltu x0, x1, x0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_sltu,x_0,xpr,x_0)
}

def i_alu__opc_sltu__x_0__xpr__xpr__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sltu x0, x1, x1";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_sltu,x_0,xpr,xpr)
}

def i_alu__opc_sltu__xpr__x_0__x_0__: CodasipMicroClass_<(outs xpr:$op0), (ins)>
{
let AsmString = "sltu $op0, x0, x0";
let Pattern = [(set xpr:$op0, (i32 0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_sltu,xpr,x_0,x_0)
}

def i_alu__opc_sltu__xpr__x_0__xpr__: CodasipMicroClass_<(outs xpr:$op0), (ins xpr:$op1)>
{
let AsmString = "sltu $op0, x0, $op1";
let Pattern = [(set xpr:$op0, (i32 (setne  (i32 CheckFI_xpr:$op1), (i32 0))))];
let isCompare = 1;
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_sltu,xpr,x_0,xpr)
}

def i_alu__opc_sltu__xpr__xpr__x_0__: CodasipMicroClass_<(outs xpr:$op0), (ins)>
{
let AsmString = "sltu $op0, x1, x0";
let Pattern = [(set xpr:$op0, (i32 0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_sltu,xpr,xpr,x_0)
}

def i_alu__opc_sltu__xpr__xpr__xpr__: CodasipMicroClass_<(outs xpr:$op0), (ins xpr:$op1, xpr:$op2)>
{
let AsmString = "sltu $op0, $op1, $op2";
let Pattern = [(set xpr:$op0, (i32 (setult  (i32 CheckFI_xpr:$op1), (i32 CheckFI_xpr:$op2))))];
let isCompare = 1;
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_sltu,xpr,xpr,xpr)
}

def i_alu__opc_sltu__xpr__xpr__xpr__swappedCmpClone0__: CodasipMicroClass_<(outs xpr:$op0), (ins xpr:$op1, xpr:$op2)>
{
let AsmString = "sltu $op0, $op2, $op1";
let Pattern = [(set xpr:$op0, (i32 (setugt  (i32 CheckFI_xpr:$op1), (i32 CheckFI_xpr:$op2))))];
let isCompare = 1;
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_sltu,xpr,xpr,xpr)
}

def i_alu__opc_sra__x_0__x_0__x_0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sra x0, x0, x0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_sra,x_0,x_0,x_0)
}

def i_alu__opc_sra__x_0__x_0__xpr__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sra x0, x0, x1";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_sra,x_0,x_0,xpr)
}

def i_alu__opc_sra__x_0__xpr__x_0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sra x0, x1, x0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_sra,x_0,xpr,x_0)
}

def i_alu__opc_sra__x_0__xpr__xpr__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sra x0, x1, x1";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_sra,x_0,xpr,xpr)
}

def i_alu__opc_sra__xpr__x_0__x_0__: CodasipMicroClass_<(outs xpr:$op0), (ins)>
{
let AsmString = "sra $op0, x0, x0";
let Pattern = [(set xpr:$op0, (i32 0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_sra,xpr,x_0,x_0)
}

def i_alu__opc_sra__xpr__x_0__xpr__: CodasipMicroClass_<(outs xpr:$op0), (ins)>
{
let AsmString = "sra $op0, x0, x1";
let Pattern = [(set xpr:$op0, (i32 0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_sra,xpr,x_0,xpr)
}

def i_alu__opc_sra__xpr__xpr__x_0__: CodasipMicroClass_<(outs xpr:$op0), (ins xpr:$op1)>
{
let AsmString = "sra $op0, $op1, x0";
//let Pattern = [(set xpr:$op0, (i32 CheckFI_xpr:$op1))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
// i_alu(opc_sra,xpr,xpr,x_0)
}

def i_alu__opc_sra__xpr__xpr__xpr__: CodasipMicroClass_<(outs xpr:$op0), (ins xpr:$op1, xpr:$op2)>
{
let AsmString = "sra $op0, $op1, $op2";
let Pattern = [(set xpr:$op0, (i32 (sra (i32 CheckFI_xpr:$op1), (i32 CheckFI_xpr:$op2))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_sra,xpr,xpr,xpr)
}

def i_alu__opc_srl__x_0__x_0__x_0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "srl x0, x0, x0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_srl,x_0,x_0,x_0)
}

def i_alu__opc_srl__x_0__x_0__xpr__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "srl x0, x0, x1";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_srl,x_0,x_0,xpr)
}

def i_alu__opc_srl__x_0__xpr__x_0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "srl x0, x1, x0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_srl,x_0,xpr,x_0)
}

def i_alu__opc_srl__x_0__xpr__xpr__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "srl x0, x1, x1";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_srl,x_0,xpr,xpr)
}

def i_alu__opc_srl__xpr__x_0__x_0__: CodasipMicroClass_<(outs xpr:$op0), (ins)>
{
let AsmString = "srl $op0, x0, x0";
let Pattern = [(set xpr:$op0, (i32 0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_srl,xpr,x_0,x_0)
}

def i_alu__opc_srl__xpr__x_0__xpr__: CodasipMicroClass_<(outs xpr:$op0), (ins)>
{
let AsmString = "srl $op0, x0, x1";
let Pattern = [(set xpr:$op0, (i32 0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_srl,xpr,x_0,xpr)
}

def i_alu__opc_srl__xpr__xpr__x_0__: CodasipMicroClass_<(outs xpr:$op0), (ins xpr:$op1)>
{
let AsmString = "srl $op0, $op1, x0";
//let Pattern = [(set xpr:$op0, (i32 CheckFI_xpr:$op1))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
// i_alu(opc_srl,xpr,xpr,x_0)
}

def i_alu__opc_srl__xpr__xpr__xpr__: CodasipMicroClass_<(outs xpr:$op0), (ins xpr:$op1, xpr:$op2)>
{
let AsmString = "srl $op0, $op1, $op2";
let Pattern = [(set xpr:$op0, (i32 (srl (i32 CheckFI_xpr:$op1), (i32 CheckFI_xpr:$op2))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_srl,xpr,xpr,xpr)
}

def i_alu__opc_sub__x_0__x_0__x_0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sub x0, x0, x0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_sub,x_0,x_0,x_0)
}

def i_alu__opc_sub__x_0__x_0__xpr__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sub x0, x0, x1";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_sub,x_0,x_0,xpr)
}

def i_alu__opc_sub__x_0__xpr__x_0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sub x0, x1, x0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_sub,x_0,xpr,x_0)
}

def i_alu__opc_sub__x_0__xpr__xpr__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sub x0, x1, x1";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_sub,x_0,xpr,xpr)
}

def i_alu__opc_sub__xpr__x_0__x_0__: CodasipMicroClass_<(outs xpr:$op0), (ins)>
{
let AsmString = "sub $op0, x0, x0";
let Pattern = [(set xpr:$op0, (i32 0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_sub,xpr,x_0,x_0)
}

def i_alu__opc_sub__xpr__x_0__xpr__: CodasipMicroClass_<(outs xpr:$op0), (ins xpr:$op1)>
{
let AsmString = "sub $op0, x0, $op1";
let Pattern = [(set xpr:$op0, (i32 (sub (i32 0), (i32 CheckFI_xpr:$op1))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_sub,xpr,x_0,xpr)
}

def i_alu__opc_sub__xpr__xpr__x_0__: CodasipMicroClass_<(outs xpr:$op0), (ins xpr:$op1)>
{
let AsmString = "sub $op0, $op1, x0";
//let Pattern = [(set xpr:$op0, (i32 CheckFI_xpr:$op1))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
// i_alu(opc_sub,xpr,xpr,x_0)
}

def i_alu__opc_sub__xpr__xpr__xpr__: CodasipMicroClass_<(outs xpr:$op0), (ins xpr:$op1, xpr:$op2)>
{
let AsmString = "sub $op0, $op1, $op2";
let Pattern = [(set xpr:$op0, (i32 (sub (i32 CheckFI_xpr:$op1), (i32 CheckFI_xpr:$op2))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_sub,xpr,xpr,xpr)
}

def i_alu__opc_xor__x_0__x_0__x_0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "xor x0, x0, x0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_xor,x_0,x_0,x_0)
}

def i_alu__opc_xor__x_0__x_0__xpr__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "xor x0, x0, x1";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_xor,x_0,x_0,xpr)
}

def i_alu__opc_xor__x_0__xpr__x_0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "xor x0, x1, x0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_xor,x_0,xpr,x_0)
}

def i_alu__opc_xor__x_0__xpr__xpr__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "xor x0, x1, x1";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_xor,x_0,xpr,xpr)
}

def i_alu__opc_xor__xpr__x_0__x_0__: CodasipMicroClass_<(outs xpr:$op0), (ins)>
{
let AsmString = "xor $op0, x0, x0";
let Pattern = [(set xpr:$op0, (i32 0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu(opc_xor,xpr,x_0,x_0)
}

def i_alu__opc_xor__xpr__x_0__xpr__: CodasipMicroClass_<(outs xpr:$op0), (ins xpr:$op1)>
{
let AsmString = "xor $op0, x0, $op1";
//let Pattern = [(set xpr:$op0, (i32 CheckFI_xpr:$op1))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
// i_alu(opc_xor,xpr,x_0,xpr)
}

def i_alu__opc_xor__xpr__xpr__x_0__: CodasipMicroClass_<(outs xpr:$op0), (ins xpr:$op1)>
{
let AsmString = "xor $op0, $op1, x0";
//let Pattern = [(set xpr:$op0, (i32 CheckFI_xpr:$op1))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
// i_alu(opc_xor,xpr,xpr,x_0)
}

def i_alu__opc_xor__xpr__xpr__xpr__: CodasipMicroClass_<(outs xpr:$op0), (ins xpr:$op1, xpr:$op2)>
{
let AsmString = "xor $op0, $op2, $op1";
let Pattern = [(set xpr:$op0, (i32 (xor (i32 CheckFI_xpr:$op1), (i32 CheckFI_xpr:$op2))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let isCommutable = 1;
// i_alu(opc_xor,xpr,xpr,xpr)
}

def i_alu_i__opc_addi__x_0__x_0__simm12__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "addi x0, x0, 0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu_i(opc_addi,x_0,x_0,simm12)
}

def i_alu_i__opc_addi__x_0__xpr__simm12__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "addi x0, x1, 0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu_i(opc_addi,x_0,xpr,simm12)
}

def i_alu_i__opc_addi__xpr__x_0__simm12__: CodasipMicroClass_<(outs xpr:$op0), (ins i32imm:$op1)>
{
let AsmString = "addi $op0, x0, $op1";
let Pattern = [(set xpr:$op0, (i32 sext12To32imm:$op1))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let isMoveImm = 1;
// i_alu_i(opc_addi,xpr,x_0,simm12)
}

def i_alu_i__opc_addi__xpr__xpr__simm12__: CodasipMicroClass_<(outs xpr:$op0), (ins xpr:$op1, i32imm:$op2)>
{
let AsmString = "addi $op0, $op1, $op2";
let Pattern = [(set xpr:$op0, (i32 (add (i32 CheckFI_xpr:$op1), (i32 sext12To32imm:$op2))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu_i(opc_addi,xpr,xpr,simm12)
}

def i_alu_i__opc_addi__xpr__xpr__simm12__SPEC_CLONE_: CodasipMicroClass_<(outs xpr:$op0), (ins xpr:$op1)>
{
let AsmString = "addi $op0, $op1, 0";
//let Pattern = [(set xpr:$op0, (i32 CheckFI_xpr:$op1))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
// i_alu_i(opc_addi,xpr,xpr,simm12)
}

def i_alu_i__opc_andi__x_0__x_0__simm12__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "andi x0, x0, 0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu_i(opc_andi,x_0,x_0,simm12)
}

def i_alu_i__opc_andi__x_0__xpr__simm12__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "andi x0, x1, 0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu_i(opc_andi,x_0,xpr,simm12)
}

def i_alu_i__opc_andi__xpr__x_0__simm12__: CodasipMicroClass_<(outs xpr:$op0), (ins)>
{
let AsmString = "andi $op0, x0, 0";
let Pattern = [(set xpr:$op0, (i32 0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu_i(opc_andi,xpr,x_0,simm12)
}

def i_alu_i__opc_andi__xpr__xpr__simm12__: CodasipMicroClass_<(outs xpr:$op0), (ins xpr:$op1, i32imm:$op2)>
{
let AsmString = "andi $op0, $op1, $op2";
let Pattern = [(set xpr:$op0, (i32 (and (i32 CheckFI_xpr:$op1), (i32 sext12To32imm:$op2))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu_i(opc_andi,xpr,xpr,simm12)
}

def i_alu_i__opc_ori__x_0__x_0__simm12__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "ori x0, x0, 0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu_i(opc_ori,x_0,x_0,simm12)
}

def i_alu_i__opc_ori__x_0__xpr__simm12__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "ori x0, x1, 0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu_i(opc_ori,x_0,xpr,simm12)
}

def i_alu_i__opc_ori__xpr__x_0__simm12__: CodasipMicroClass_<(outs xpr:$op0), (ins i32imm:$op1)>
{
let AsmString = "ori $op0, x0, $op1";
let Pattern = [(set xpr:$op0, (i32 sext12To32imm:$op1))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let isMoveImm = 1;
// i_alu_i(opc_ori,xpr,x_0,simm12)
}

def i_alu_i__opc_ori__xpr__xpr__simm12__: CodasipMicroClass_<(outs xpr:$op0), (ins xpr:$op1, i32imm:$op2)>
{
let AsmString = "ori $op0, $op1, $op2";
let Pattern = [(set xpr:$op0, (i32 (or (i32 CheckFI_xpr:$op1), (i32 sext12To32imm:$op2))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu_i(opc_ori,xpr,xpr,simm12)
}

def i_alu_i__opc_slti__x_0__x_0__simm12__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "slti x0, x0, 0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu_i(opc_slti,x_0,x_0,simm12)
}

def i_alu_i__opc_slti__x_0__xpr__simm12__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "slti x0, x1, 0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu_i(opc_slti,x_0,xpr,simm12)
}

def i_alu_i__opc_slti__xpr__x_0__simm12__: CodasipMicroClass_<(outs xpr:$op0), (ins i32imm:$op1)>
{
let AsmString = "slti $op0, x0, $op1";
let Pattern = [(set xpr:$op0, (i32 (setgt  (i32 sext12To32imm:$op1), (i32 0))))];
let isCompare = 1;
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu_i(opc_slti,xpr,x_0,simm12)
}

def i_alu_i__opc_slti__xpr__x_0__simm12__immSpecClone__imm_1__0__: CodasipMicroClass_<(outs xpr:$op0), (ins)>
{
let AsmString = "slti $op0, x0, 0";
let Pattern = [(set xpr:$op0, (i32 0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu_i(opc_slti,xpr,x_0,simm12)
}

def i_alu_i__opc_slti__xpr__x_0__simm12__immSpecClone__imm_1__1__: CodasipMicroClass_<(outs xpr:$op0), (ins)>
{
let AsmString = "slti $op0, x0, 1";
let Pattern = [(set xpr:$op0, (i32 1))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu_i(opc_slti,xpr,x_0,simm12)
}

def i_alu_i__opc_slti__xpr__xpr__simm12__: CodasipMicroClass_<(outs xpr:$op0), (ins xpr:$op1, i32imm:$op2)>
{
let AsmString = "slti $op0, $op1, $op2";
let Pattern = [(set xpr:$op0, (i32 (setlt  (i32 CheckFI_xpr:$op1), (i32 sext12To32imm:$op2))))];
let isCompare = 1;
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu_i(opc_slti,xpr,xpr,simm12)
}

def i_alu_i__opc_sltiu__x_0__x_0__simm12__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sltiu x0, x0, 0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu_i(opc_sltiu,x_0,x_0,simm12)
}

def i_alu_i__opc_sltiu__x_0__xpr__simm12__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sltiu x0, x1, 0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu_i(opc_sltiu,x_0,xpr,simm12)
}

def i_alu_i__opc_sltiu__xpr__x_0__simm12__: CodasipMicroClass_<(outs xpr:$op0), (ins i32imm:$op1)>
{
let AsmString = "sltiu $op0, x0, $op1";
let Pattern = [(set xpr:$op0, (i32 (setne  (i32 sext12To32imm:$op1), (i32 0))))];
let isCompare = 1;
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu_i(opc_sltiu,xpr,x_0,simm12)
}

def i_alu_i__opc_sltiu__xpr__x_0__simm12__immSpecClone__imm_1__0__: CodasipMicroClass_<(outs xpr:$op0), (ins)>
{
let AsmString = "sltiu $op0, x0, 0";
let Pattern = [(set xpr:$op0, (i32 0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu_i(opc_sltiu,xpr,x_0,simm12)
}

def i_alu_i__opc_sltiu__xpr__x_0__simm12__immSpecClone__imm_1__1__: CodasipMicroClass_<(outs xpr:$op0), (ins)>
{
let AsmString = "sltiu $op0, x0, 1";
let Pattern = [(set xpr:$op0, (i32 1))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu_i(opc_sltiu,xpr,x_0,simm12)
}

def i_alu_i__opc_sltiu__xpr__xpr__simm12__: CodasipMicroClass_<(outs xpr:$op0), (ins xpr:$op1, i32imm:$op2)>
{
let AsmString = "sltiu $op0, $op1, $op2";
let Pattern = [(set xpr:$op0, (i32 (setult  (i32 CheckFI_xpr:$op1), (i32 sext12To32imm:$op2))))];
let isCompare = 1;
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu_i(opc_sltiu,xpr,xpr,simm12)
}

def i_alu_i__opc_xori__x_0__x_0__simm12__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "xori x0, x0, 0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu_i(opc_xori,x_0,x_0,simm12)
}

def i_alu_i__opc_xori__x_0__xpr__simm12__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "xori x0, x1, 0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu_i(opc_xori,x_0,xpr,simm12)
}

def i_alu_i__opc_xori__xpr__x_0__simm12__: CodasipMicroClass_<(outs xpr:$op0), (ins i32imm:$op1)>
{
let AsmString = "xori $op0, x0, $op1";
let Pattern = [(set xpr:$op0, (i32 sext12To32imm:$op1))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let isMoveImm = 1;
// i_alu_i(opc_xori,xpr,x_0,simm12)
}

def i_alu_i__opc_xori__xpr__xpr__simm12__: CodasipMicroClass_<(outs xpr:$op0), (ins xpr:$op1, i32imm:$op2)>
{
let AsmString = "xori $op0, $op1, $op2";
let Pattern = [(set xpr:$op0, (i32 (xor (i32 CheckFI_xpr:$op1), (i32 sext12To32imm:$op2))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_alu_i(opc_xori,xpr,xpr,simm12)
}

def i_bgt_alias__x_0__x_0__rel_addr12__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "bgt x0, x0, 0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_bgt_alias(x_0,x_0,rel_addr12)
}

def i_bgtu_alias__x_0__x_0__rel_addr12__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "bgtu x0, x0, 0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_bgtu_alias(x_0,x_0,rel_addr12)
}

def i_bgtu_alias__x_0__xpr__rel_addr12__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "bgtu x0, x1, 0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_bgtu_alias(x_0,xpr,rel_addr12)
}

def i_bgtz_alias__x_0__rel_addr12__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "bgtz x0, 0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_bgtz_alias(x_0,rel_addr12)
}

def i_bleu_alias__x_0__x_0__rel_addr12__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "bleu x0, x0, 0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_bleu_alias(x_0,x_0,rel_addr12)
}

def i_bleu_alias__xpr__x_0__rel_addr12__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "bleu x1, x0, 0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_bleu_alias(xpr,x_0,rel_addr12)
}

def i_bltz_alias__x_0__rel_addr12__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "bltz x0, 0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_bltz_alias(x_0,rel_addr12)
}

def i_bnez_alias__x_0__rel_addr12__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "bnez x0, 0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_bnez_alias(x_0,rel_addr12)
}

def i_branch__opc_blt__x_0__x_0__rel_addr12__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "blt x0, x0, 0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_branch(opc_blt,x_0,x_0,rel_addr12)
}

def i_branch__opc_bltu__x_0__x_0__rel_addr12__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "bltu x0, x0, 0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_branch(opc_bltu,x_0,x_0,rel_addr12)
}

def i_branch__opc_bltu__xpr__x_0__rel_addr12__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "bltu x1, x0, 0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_branch(opc_bltu,xpr,x_0,rel_addr12)
}

def i_branch__opc_bne__x_0__x_0__rel_addr12__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "bne x0, x0, 0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_branch(opc_bne,x_0,x_0,rel_addr12)
}

def i_li_alias__x_0__simm12__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "li x0, 0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_li_alias(x_0,simm12)
}

def i_li_alias__xpr__simm12__: CodasipMicroClass_<(outs xpr:$op0), (ins i32imm:$op1)>
{
let AsmString = "li $op0, $op1";
let Pattern = [(set xpr:$op0, (i32 sext12To32imm:$op1))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let isMoveImm = 1;
// i_li_alias(xpr,simm12)
}

def i_load__opc_lb__x_0__simm12__x_0__: CodasipMicroClass_sc_load<(outs), (ins i32imm:$op0)>
{
let AsmString = "lb x0, $op0 ( x0 )";
//let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
// i_load(opc_lb,x_0,simm12,x_0)
}

def i_load__opc_lb__x_0__simm12__xpr__: CodasipMicroClass_sc_load<(outs), (ins xpr:$op0, i32imm:$op1)>
{
let AsmString = "lb x0, $op1 ( $op0 )";
//let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
// i_load(opc_lb,x_0,simm12,xpr)
}

def i_load__opc_lb__xpr__simm12__x_0__: CodasipMicroClass_sc_load<(outs xpr:$op0), (ins i32imm:$op1)>
{
let AsmString = "lb $op0, $op1 ( x0 )";
let Pattern = [(set xpr:$op0, (i32 (sextloadi8_a1_s0 (i32 sext12To32imm:$op1))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
// i_load(opc_lb,xpr,simm12,x_0)
}

def i_load__opc_lb__xpr__simm12__x_0__AEXT_CLONE_: CodasipMicroClass_sc_load<(outs xpr:$op0), (ins i32imm:$op1)>
{
let AsmString = "lb $op0, $op1 ( x0 )";
let Pattern = [(set xpr:$op0, (i32 (extloadi8_a1_s0 (i32 sext12To32imm:$op1))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
// i_load(opc_lb,xpr,simm12,x_0)
}

def i_load__opc_lb__xpr__simm12__xpr__: CodasipMicroClass_sc_load<(outs xpr:$op0), (ins xpr:$op1, i32imm:$op2)>
{
let AsmString = "lb $op0, $op2 ( $op1 )";
let Pattern = [(set xpr:$op0, (i32 (sextloadi8_a1_s0 (i32 (add (i32 CheckFI_xpr:$op1), (i32 sext12To32imm:$op2))))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
// i_load(opc_lb,xpr,simm12,xpr)
}

def i_load__opc_lb__xpr__simm12__xpr__AEXT_CLONE_: CodasipMicroClass_sc_load<(outs xpr:$op0), (ins xpr:$op1, i32imm:$op2)>
{
let AsmString = "lb $op0, $op2 ( $op1 )";
let Pattern = [(set xpr:$op0, (i32 (extloadi8_a1_s0 (i32 (add (i32 CheckFI_xpr:$op1), (i32 sext12To32imm:$op2))))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
// i_load(opc_lb,xpr,simm12,xpr)
}

def i_load__opc_lb__xpr__simm12__xpr__SPEC_CLONE_: CodasipMicroClass_sc_load<(outs xpr:$op0), (ins xpr:$op1)>
{
let AsmString = "lb $op0, 0 ( $op1 )";
let Pattern = [(set xpr:$op0, (i32 (sextloadi8_a1_s0 (i32 CheckFI_xpr:$op1))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
// i_load(opc_lb,xpr,simm12,xpr)
}

def i_load__opc_lb__xpr__simm12__xpr__SPEC_CLONE_AEXT_CLONE_: CodasipMicroClass_sc_load<(outs xpr:$op0), (ins xpr:$op1)>
{
let AsmString = "lb $op0, 0 ( $op1 )";
let Pattern = [(set xpr:$op0, (i32 (extloadi8_a1_s0 (i32 CheckFI_xpr:$op1))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
// i_load(opc_lb,xpr,simm12,xpr)
}

def i_load__opc_lbu__x_0__simm12__x_0__: CodasipMicroClass_sc_load<(outs), (ins i32imm:$op0)>
{
let AsmString = "lbu x0, $op0 ( x0 )";
//let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
// i_load(opc_lbu,x_0,simm12,x_0)
}

def i_load__opc_lbu__x_0__simm12__xpr__: CodasipMicroClass_sc_load<(outs), (ins xpr:$op0, i32imm:$op1)>
{
let AsmString = "lbu x0, $op1 ( $op0 )";
//let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
// i_load(opc_lbu,x_0,simm12,xpr)
}

def i_load__opc_lbu__xpr__simm12__x_0__: CodasipMicroClass_sc_load<(outs xpr:$op0), (ins i32imm:$op1)>
{
let AsmString = "lbu $op0, $op1 ( x0 )";
let Pattern = [(set xpr:$op0, (i32 (zextloadi8_a1_s0 (i32 sext12To32imm:$op1))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
// i_load(opc_lbu,xpr,simm12,x_0)
}

def i_load__opc_lbu__xpr__simm12__xpr__: CodasipMicroClass_sc_load<(outs xpr:$op0), (ins xpr:$op1, i32imm:$op2)>
{
let AsmString = "lbu $op0, $op2 ( $op1 )";
let Pattern = [(set xpr:$op0, (i32 (zextloadi8_a1_s0 (i32 (add (i32 CheckFI_xpr:$op1), (i32 sext12To32imm:$op2))))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
// i_load(opc_lbu,xpr,simm12,xpr)
}

def i_load__opc_lbu__xpr__simm12__xpr__SPEC_CLONE_: CodasipMicroClass_sc_load<(outs xpr:$op0), (ins xpr:$op1)>
{
let AsmString = "lbu $op0, 0 ( $op1 )";
let Pattern = [(set xpr:$op0, (i32 (zextloadi8_a1_s0 (i32 CheckFI_xpr:$op1))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
// i_load(opc_lbu,xpr,simm12,xpr)
}

def i_load__opc_lh__x_0__simm12__x_0__: CodasipMicroClass_sc_load<(outs), (ins i32imm:$op0)>
{
let AsmString = "lh x0, $op0 ( x0 )";
//let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
// i_load(opc_lh,x_0,simm12,x_0)
}

def i_load__opc_lh__x_0__simm12__xpr__: CodasipMicroClass_sc_load<(outs), (ins xpr:$op0, i32imm:$op1)>
{
let AsmString = "lh x0, $op1 ( $op0 )";
//let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
// i_load(opc_lh,x_0,simm12,xpr)
}

def i_load__opc_lh__xpr__simm12__x_0__: CodasipMicroClass_sc_load<(outs xpr:$op0), (ins i32imm:$op1)>
{
let AsmString = "lh $op0, $op1 ( x0 )";
let Pattern = [(set xpr:$op0, (i32 (sextloadi16_a1_s0 (i32 sext12To32imm:$op1))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
// i_load(opc_lh,xpr,simm12,x_0)
}

def i_load__opc_lh__xpr__simm12__x_0__AEXT_CLONE_: CodasipMicroClass_sc_load<(outs xpr:$op0), (ins i32imm:$op1)>
{
let AsmString = "lh $op0, $op1 ( x0 )";
let Pattern = [(set xpr:$op0, (i32 (extloadi16_a1_s0 (i32 sext12To32imm:$op1))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
// i_load(opc_lh,xpr,simm12,x_0)
}

def i_load__opc_lh__xpr__simm12__xpr__: CodasipMicroClass_sc_load<(outs xpr:$op0), (ins xpr:$op1, i32imm:$op2)>
{
let AsmString = "lh $op0, $op2 ( $op1 )";
let Pattern = [(set xpr:$op0, (i32 (sextloadi16_a1_s0 (i32 (add (i32 CheckFI_xpr:$op1), (i32 sext12To32imm:$op2))))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
// i_load(opc_lh,xpr,simm12,xpr)
}

def i_load__opc_lh__xpr__simm12__xpr__AEXT_CLONE_: CodasipMicroClass_sc_load<(outs xpr:$op0), (ins xpr:$op1, i32imm:$op2)>
{
let AsmString = "lh $op0, $op2 ( $op1 )";
let Pattern = [(set xpr:$op0, (i32 (extloadi16_a1_s0 (i32 (add (i32 CheckFI_xpr:$op1), (i32 sext12To32imm:$op2))))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
// i_load(opc_lh,xpr,simm12,xpr)
}

def i_load__opc_lh__xpr__simm12__xpr__SPEC_CLONE_: CodasipMicroClass_sc_load<(outs xpr:$op0), (ins xpr:$op1)>
{
let AsmString = "lh $op0, 0 ( $op1 )";
let Pattern = [(set xpr:$op0, (i32 (sextloadi16_a1_s0 (i32 CheckFI_xpr:$op1))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
// i_load(opc_lh,xpr,simm12,xpr)
}

def i_load__opc_lh__xpr__simm12__xpr__SPEC_CLONE_AEXT_CLONE_: CodasipMicroClass_sc_load<(outs xpr:$op0), (ins xpr:$op1)>
{
let AsmString = "lh $op0, 0 ( $op1 )";
let Pattern = [(set xpr:$op0, (i32 (extloadi16_a1_s0 (i32 CheckFI_xpr:$op1))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
// i_load(opc_lh,xpr,simm12,xpr)
}

def i_load__opc_lhu__x_0__simm12__x_0__: CodasipMicroClass_sc_load<(outs), (ins i32imm:$op0)>
{
let AsmString = "lhu x0, $op0 ( x0 )";
//let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
// i_load(opc_lhu,x_0,simm12,x_0)
}

def i_load__opc_lhu__x_0__simm12__xpr__: CodasipMicroClass_sc_load<(outs), (ins xpr:$op0, i32imm:$op1)>
{
let AsmString = "lhu x0, $op1 ( $op0 )";
//let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
// i_load(opc_lhu,x_0,simm12,xpr)
}

def i_load__opc_lhu__xpr__simm12__x_0__: CodasipMicroClass_sc_load<(outs xpr:$op0), (ins i32imm:$op1)>
{
let AsmString = "lhu $op0, $op1 ( x0 )";
let Pattern = [(set xpr:$op0, (i32 (zextloadi16_a1_s0 (i32 sext12To32imm:$op1))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
// i_load(opc_lhu,xpr,simm12,x_0)
}

def i_load__opc_lhu__xpr__simm12__xpr__: CodasipMicroClass_sc_load<(outs xpr:$op0), (ins xpr:$op1, i32imm:$op2)>
{
let AsmString = "lhu $op0, $op2 ( $op1 )";
let Pattern = [(set xpr:$op0, (i32 (zextloadi16_a1_s0 (i32 (add (i32 CheckFI_xpr:$op1), (i32 sext12To32imm:$op2))))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
// i_load(opc_lhu,xpr,simm12,xpr)
}

def i_load__opc_lhu__xpr__simm12__xpr__SPEC_CLONE_: CodasipMicroClass_sc_load<(outs xpr:$op0), (ins xpr:$op1)>
{
let AsmString = "lhu $op0, 0 ( $op1 )";
let Pattern = [(set xpr:$op0, (i32 (zextloadi16_a1_s0 (i32 CheckFI_xpr:$op1))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
// i_load(opc_lhu,xpr,simm12,xpr)
}

def i_load__opc_lw__x_0__simm12__x_0__: CodasipMicroClass_sc_load<(outs), (ins i32imm:$op0)>
{
let AsmString = "lw x0, $op0 ( x0 )";
//let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
// i_load(opc_lw,x_0,simm12,x_0)
}

def i_load__opc_lw__x_0__simm12__xpr__: CodasipMicroClass_sc_load<(outs), (ins xpr:$op0, i32imm:$op1)>
{
let AsmString = "lw x0, $op1 ( $op0 )";
//let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
// i_load(opc_lw,x_0,simm12,xpr)
}

def i_load__opc_lw__xpr__simm12__x_0__: CodasipMicroClass_sc_load<(outs xpr:$op0), (ins i32imm:$op1)>
{
let AsmString = "lw $op0, $op1 ( x0 )";
let Pattern = [(set xpr:$op0, (i32 (load_a1_s0 (i32 sext12To32imm:$op1))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
// i_load(opc_lw,xpr,simm12,x_0)
}

def i_load__opc_lw__xpr__simm12__xpr__: CodasipMicroClass_sc_load<(outs xpr:$op0), (ins xpr:$op1, i32imm:$op2)>
{
let AsmString = "lw $op0, $op2 ( $op1 )";
let Pattern = [(set xpr:$op0, (i32 (load_a1_s0 (i32 (add (i32 CheckFI_xpr:$op1), (i32 sext12To32imm:$op2))))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
// i_load(opc_lw,xpr,simm12,xpr)
}

def i_load__opc_lw__xpr__simm12__xpr__SPEC_CLONE_: CodasipMicroClass_sc_load<(outs xpr:$op0), (ins xpr:$op1)>
{
let AsmString = "lw $op0, 0 ( $op1 )";
let Pattern = [(set xpr:$op0, (i32 (load_a1_s0 (i32 CheckFI_xpr:$op1))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
// i_load(opc_lw,xpr,simm12,xpr)
}

def i_mv_alias__x_0__x_0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "mv x0, x0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_mv_alias(x_0,x_0)
}

def i_mv_alias__x_0__xpr__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "mv x0, x1";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_mv_alias(x_0,xpr)
}

def i_mv_alias__xpr__x_0__: CodasipMicroClass_<(outs xpr:$op0), (ins)>
{
let AsmString = "mv $op0, x0";
let Pattern = [(set xpr:$op0, (i32 0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_mv_alias(xpr,x_0)
}

def i_mv_alias__xpr__xpr__: CodasipMicroClass_<(outs xpr:$op0), (ins xpr:$op1)>
{
let AsmString = "mv $op0, $op1";
//let Pattern = [(set xpr:$op0, (i32 CheckFI_xpr:$op1))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
// i_mv_alias(xpr,xpr)
}

def i_neg_alias__x_0__x_0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "neg x0, x0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_neg_alias(x_0,x_0)
}

def i_neg_alias__x_0__xpr__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "neg x0, x1";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_neg_alias(x_0,xpr)
}

def i_neg_alias__xpr__x_0__: CodasipMicroClass_<(outs xpr:$op0), (ins)>
{
let AsmString = "neg $op0, x0";
let Pattern = [(set xpr:$op0, (i32 0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_neg_alias(xpr,x_0)
}

def i_neg_alias__xpr__xpr__: CodasipMicroClass_<(outs xpr:$op0), (ins xpr:$op1)>
{
let AsmString = "neg $op0, $op1";
let Pattern = [(set xpr:$op0, (i32 (sub (i32 0), (i32 CheckFI_xpr:$op1))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_neg_alias(xpr,xpr)
}

def i_nop_alias__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "nop";
let Pattern = [];
let Size = 4;
let mayLoad = 0;
let mayStore = 0;
// i_nop_alias
}

def i_not_alias__x_0__x_0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "not x0, x0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_not_alias(x_0,x_0)
}

def i_not_alias__x_0__xpr__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "not x0, x1";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_not_alias(x_0,xpr)
}

def i_not_alias__xpr__x_0__: CodasipMicroClass_<(outs xpr:$op0), (ins)>
{
let AsmString = "not $op0, x0";
let Pattern = [(set xpr:$op0, (i32 -1))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_not_alias(xpr,x_0)
}

def i_not_alias__xpr__xpr__: CodasipMicroClass_<(outs xpr:$op0), (ins xpr:$op1)>
{
let AsmString = "not $op0, $op1";
let Pattern = [(set xpr:$op0, (i32 (xor (i32 CheckFI_xpr:$op1), (i32 -1))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_not_alias(xpr,xpr)
}

def i_seqz_alias__x_0__x_0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "seqz x0, x0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_seqz_alias(x_0,x_0)
}

def i_seqz_alias__x_0__xpr__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "seqz x0, x1";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_seqz_alias(x_0,xpr)
}

def i_seqz_alias__xpr__x_0__: CodasipMicroClass_<(outs xpr:$op0), (ins)>
{
let AsmString = "seqz $op0, x0";
let Pattern = [(set xpr:$op0, (i32 1))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_seqz_alias(xpr,x_0)
}

def i_seqz_alias__xpr__xpr__: CodasipMicroClass_<(outs xpr:$op0), (ins xpr:$op1)>
{
let AsmString = "seqz $op0, $op1";
let Pattern = [(set xpr:$op0, (i32 (seteq  (i32 CheckFI_xpr:$op1), (i32 0))))];
let isCompare = 1;
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_seqz_alias(xpr,xpr)
}

def i_sgtz_alias__x_0__x_0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sgtz x0, x0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_sgtz_alias(x_0,x_0)
}

def i_sgtz_alias__x_0__xpr__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sgtz x0, x1";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_sgtz_alias(x_0,xpr)
}

def i_sgtz_alias__xpr__x_0__: CodasipMicroClass_<(outs xpr:$op0), (ins)>
{
let AsmString = "sgtz $op0, x0";
let Pattern = [(set xpr:$op0, (i32 0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_sgtz_alias(xpr,x_0)
}

def i_sgtz_alias__xpr__xpr__: CodasipMicroClass_<(outs xpr:$op0), (ins xpr:$op1)>
{
let AsmString = "sgtz $op0, $op1";
let Pattern = [(set xpr:$op0, (i32 (setgt  (i32 CheckFI_xpr:$op1), (i32 0))))];
let isCompare = 1;
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_sgtz_alias(xpr,xpr)
}

def i_shift__opc_slli__x_0__x_0__shamt__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "slli x0, x0, 0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_shift(opc_slli,x_0,x_0,shamt)
}

def i_shift__opc_slli__x_0__xpr__shamt__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "slli x0, x1, 0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_shift(opc_slli,x_0,xpr,shamt)
}

def i_shift__opc_slli__xpr__x_0__shamt__: CodasipMicroClass_<(outs xpr:$op0), (ins)>
{
let AsmString = "slli $op0, x0, 0";
let Pattern = [(set xpr:$op0, (i32 0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_shift(opc_slli,xpr,x_0,shamt)
}

def i_shift__opc_slli__xpr__xpr__shamt__: CodasipMicroClass_<(outs xpr:$op0), (ins xpr:$op1, i32imm:$op2)>
{
let AsmString = "slli $op0, $op1, $op2";
let Pattern = [(set xpr:$op0, (i32 (shl (i32 CheckFI_xpr:$op1), (i32 zext5To32imm:$op2))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_shift(opc_slli,xpr,xpr,shamt)
}

def i_shift__opc_srai__x_0__x_0__shamt__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "srai x0, x0, 0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_shift(opc_srai,x_0,x_0,shamt)
}

def i_shift__opc_srai__x_0__xpr__shamt__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "srai x0, x1, 0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_shift(opc_srai,x_0,xpr,shamt)
}

def i_shift__opc_srai__xpr__x_0__shamt__: CodasipMicroClass_<(outs xpr:$op0), (ins)>
{
let AsmString = "srai $op0, x0, 0";
let Pattern = [(set xpr:$op0, (i32 0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_shift(opc_srai,xpr,x_0,shamt)
}

def i_shift__opc_srai__xpr__xpr__shamt__: CodasipMicroClass_<(outs xpr:$op0), (ins xpr:$op1, i32imm:$op2)>
{
let AsmString = "srai $op0, $op1, $op2";
let Pattern = [(set xpr:$op0, (i32 (sra (i32 CheckFI_xpr:$op1), (i32 zext5To32imm:$op2))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_shift(opc_srai,xpr,xpr,shamt)
}

def i_shift__opc_srli__x_0__x_0__shamt__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "srli x0, x0, 0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_shift(opc_srli,x_0,x_0,shamt)
}

def i_shift__opc_srli__x_0__xpr__shamt__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "srli x0, x1, 0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_shift(opc_srli,x_0,xpr,shamt)
}

def i_shift__opc_srli__xpr__x_0__shamt__: CodasipMicroClass_<(outs xpr:$op0), (ins)>
{
let AsmString = "srli $op0, x0, 0";
let Pattern = [(set xpr:$op0, (i32 0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_shift(opc_srli,xpr,x_0,shamt)
}

def i_shift__opc_srli__xpr__xpr__shamt__: CodasipMicroClass_<(outs xpr:$op0), (ins xpr:$op1, i32imm:$op2)>
{
let AsmString = "srli $op0, $op1, $op2";
let Pattern = [(set xpr:$op0, (i32 (srl (i32 CheckFI_xpr:$op1), (i32 zext5To32imm:$op2))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_shift(opc_srli,xpr,xpr,shamt)
}

def i_sltz_alias__x_0__x_0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sltz x0, x0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_sltz_alias(x_0,x_0)
}

def i_sltz_alias__x_0__xpr__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "sltz x0, x1";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_sltz_alias(x_0,xpr)
}

def i_sltz_alias__xpr__x_0__: CodasipMicroClass_<(outs xpr:$op0), (ins)>
{
let AsmString = "sltz $op0, x0";
let Pattern = [(set xpr:$op0, (i32 0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_sltz_alias(xpr,x_0)
}

def i_sltz_alias__xpr__xpr__: CodasipMicroClass_<(outs xpr:$op0), (ins xpr:$op1)>
{
let AsmString = "sltz $op0, $op1";
let Pattern = [(set xpr:$op0, (i32 (srl (i32 CheckFI_xpr:$op1), (i32 31))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_sltz_alias(xpr,xpr)
}

def i_snez_alias__x_0__x_0__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "snez x0, x0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_snez_alias(x_0,x_0)
}

def i_snez_alias__x_0__xpr__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "snez x0, x1";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_snez_alias(x_0,xpr)
}

def i_snez_alias__xpr__x_0__: CodasipMicroClass_<(outs xpr:$op0), (ins)>
{
let AsmString = "snez $op0, x0";
let Pattern = [(set xpr:$op0, (i32 0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_snez_alias(xpr,x_0)
}

def i_snez_alias__xpr__xpr__: CodasipMicroClass_<(outs xpr:$op0), (ins xpr:$op1)>
{
let AsmString = "snez $op0, $op1";
let Pattern = [(set xpr:$op0, (i32 (setne  (i32 CheckFI_xpr:$op1), (i32 0))))];
let isCompare = 1;
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_snez_alias(xpr,xpr)
}

def i_store__opc_sb__x_0__simm12__x_0__: CodasipMicroClass_<(outs), (ins i32imm:$op0)>
{
let AsmString = "sb x0, $op0 ( x0 )";
let Pattern = [(store_a1_s0 (i8 0), (i32 sext12To32imm:$op0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
// i_store(opc_sb,x_0,simm12,x_0)
}

def i_store__opc_sb__x_0__simm12__x_0__legalConstClonei32__: CodasipMicroClass_<(outs), (ins i32imm:$op0)>
{
let AsmString = "sb x0, $op0 ( x0 )";
let Pattern = [(truncstorei8_a1_s0 (i32 0), (i32 sext12To32imm:$op0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
// i_store(opc_sb,x_0,simm12,x_0)
}

def i_store__opc_sb__x_0__simm12__xpr__: CodasipMicroClass_<(outs), (ins xpr:$op0, i32imm:$op1)>
{
let AsmString = "sb x0, $op1 ( $op0 )";
let Pattern = [(store_a1_s0 (i8 0), (i32 (add (i32 CheckFI_xpr:$op0), (i32 sext12To32imm:$op1))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
// i_store(opc_sb,x_0,simm12,xpr)
}

def i_store__opc_sb__x_0__simm12__xpr__SPEC_CLONE_: CodasipMicroClass_<(outs), (ins xpr:$op0)>
{
let AsmString = "sb x0, 0 ( $op0 )";
let Pattern = [(store_a1_s0 (i8 0), (i32 CheckFI_xpr:$op0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
// i_store(opc_sb,x_0,simm12,xpr)
}

def i_store__opc_sb__x_0__simm12__xpr__legalConstClonei32__: CodasipMicroClass_<(outs), (ins xpr:$op0, i32imm:$op1)>
{
let AsmString = "sb x0, $op1 ( $op0 )";
let Pattern = [(truncstorei8_a1_s0 (i32 0), (i32 (add (i32 CheckFI_xpr:$op0), (i32 sext12To32imm:$op1))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
// i_store(opc_sb,x_0,simm12,xpr)
}

def i_store__opc_sb__x_0__simm12__xpr__legalConstClonei32__SPEC_CLONE_: CodasipMicroClass_<(outs), (ins xpr:$op0)>
{
let AsmString = "sb x0, 0 ( $op0 )";
let Pattern = [(truncstorei8_a1_s0 (i32 0), (i32 CheckFI_xpr:$op0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
// i_store(opc_sb,x_0,simm12,xpr)
}

def i_store__opc_sb__xpr__simm12__x_0__: CodasipMicroClass_<(outs), (ins xpr:$op0, i32imm:$op1)>
{
let AsmString = "sb $op0, $op1 ( x0 )";
let Pattern = [(truncstorei8_a1_s0 (i32 CheckFI_xpr:$op0), (i32 sext12To32imm:$op1))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
// i_store(opc_sb,xpr,simm12,x_0)
}

def i_store__opc_sb__xpr__simm12__xpr__: CodasipMicroClass_<(outs), (ins xpr:$op0, xpr:$op1, i32imm:$op2)>
{
let AsmString = "sb $op0, $op2 ( $op1 )";
let Pattern = [(truncstorei8_a1_s0 (i32 CheckFI_xpr:$op0), (i32 (add (i32 CheckFI_xpr:$op1), (i32 sext12To32imm:$op2))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
// i_store(opc_sb,xpr,simm12,xpr)
}

def i_store__opc_sb__xpr__simm12__xpr__SPEC_CLONE_: CodasipMicroClass_<(outs), (ins xpr:$op0, xpr:$op1)>
{
let AsmString = "sb $op0, 0 ( $op1 )";
let Pattern = [(truncstorei8_a1_s0 (i32 CheckFI_xpr:$op0), (i32 CheckFI_xpr:$op1))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
// i_store(opc_sb,xpr,simm12,xpr)
}

def i_store__opc_sh__x_0__simm12__x_0__: CodasipMicroClass_<(outs), (ins i32imm:$op0)>
{
let AsmString = "sh x0, $op0 ( x0 )";
let Pattern = [(store_a1_s0 (i16 0), (i32 sext12To32imm:$op0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
// i_store(opc_sh,x_0,simm12,x_0)
}

def i_store__opc_sh__x_0__simm12__x_0__legalConstClonei32__: CodasipMicroClass_<(outs), (ins i32imm:$op0)>
{
let AsmString = "sh x0, $op0 ( x0 )";
let Pattern = [(truncstorei16_a1_s0 (i32 0), (i32 sext12To32imm:$op0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
// i_store(opc_sh,x_0,simm12,x_0)
}

def i_store__opc_sh__x_0__simm12__xpr__: CodasipMicroClass_<(outs), (ins xpr:$op0, i32imm:$op1)>
{
let AsmString = "sh x0, $op1 ( $op0 )";
let Pattern = [(store_a1_s0 (i16 0), (i32 (add (i32 CheckFI_xpr:$op0), (i32 sext12To32imm:$op1))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
// i_store(opc_sh,x_0,simm12,xpr)
}

def i_store__opc_sh__x_0__simm12__xpr__SPEC_CLONE_: CodasipMicroClass_<(outs), (ins xpr:$op0)>
{
let AsmString = "sh x0, 0 ( $op0 )";
let Pattern = [(store_a1_s0 (i16 0), (i32 CheckFI_xpr:$op0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
// i_store(opc_sh,x_0,simm12,xpr)
}

def i_store__opc_sh__x_0__simm12__xpr__legalConstClonei32__: CodasipMicroClass_<(outs), (ins xpr:$op0, i32imm:$op1)>
{
let AsmString = "sh x0, $op1 ( $op0 )";
let Pattern = [(truncstorei16_a1_s0 (i32 0), (i32 (add (i32 CheckFI_xpr:$op0), (i32 sext12To32imm:$op1))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
// i_store(opc_sh,x_0,simm12,xpr)
}

def i_store__opc_sh__x_0__simm12__xpr__legalConstClonei32__SPEC_CLONE_: CodasipMicroClass_<(outs), (ins xpr:$op0)>
{
let AsmString = "sh x0, 0 ( $op0 )";
let Pattern = [(truncstorei16_a1_s0 (i32 0), (i32 CheckFI_xpr:$op0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
// i_store(opc_sh,x_0,simm12,xpr)
}

def i_store__opc_sh__xpr__simm12__x_0__: CodasipMicroClass_<(outs), (ins xpr:$op0, i32imm:$op1)>
{
let AsmString = "sh $op0, $op1 ( x0 )";
let Pattern = [(truncstorei16_a1_s0 (i32 CheckFI_xpr:$op0), (i32 sext12To32imm:$op1))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
// i_store(opc_sh,xpr,simm12,x_0)
}

def i_store__opc_sh__xpr__simm12__xpr__: CodasipMicroClass_<(outs), (ins xpr:$op0, xpr:$op1, i32imm:$op2)>
{
let AsmString = "sh $op0, $op2 ( $op1 )";
let Pattern = [(truncstorei16_a1_s0 (i32 CheckFI_xpr:$op0), (i32 (add (i32 CheckFI_xpr:$op1), (i32 sext12To32imm:$op2))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
// i_store(opc_sh,xpr,simm12,xpr)
}

def i_store__opc_sh__xpr__simm12__xpr__SPEC_CLONE_: CodasipMicroClass_<(outs), (ins xpr:$op0, xpr:$op1)>
{
let AsmString = "sh $op0, 0 ( $op1 )";
let Pattern = [(truncstorei16_a1_s0 (i32 CheckFI_xpr:$op0), (i32 CheckFI_xpr:$op1))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
// i_store(opc_sh,xpr,simm12,xpr)
}

def i_store__opc_sw__x_0__simm12__x_0__: CodasipMicroClass_<(outs), (ins i32imm:$op0)>
{
let AsmString = "sw x0, $op0 ( x0 )";
let Pattern = [(store_a1_s0 (i32 0), (i32 sext12To32imm:$op0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
// i_store(opc_sw,x_0,simm12,x_0)
}

def i_store__opc_sw__x_0__simm12__xpr__: CodasipMicroClass_<(outs), (ins xpr:$op0, i32imm:$op1)>
{
let AsmString = "sw x0, $op1 ( $op0 )";
let Pattern = [(store_a1_s0 (i32 0), (i32 (add (i32 CheckFI_xpr:$op0), (i32 sext12To32imm:$op1))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
// i_store(opc_sw,x_0,simm12,xpr)
}

def i_store__opc_sw__x_0__simm12__xpr__SPEC_CLONE_: CodasipMicroClass_<(outs), (ins xpr:$op0)>
{
let AsmString = "sw x0, 0 ( $op0 )";
let Pattern = [(store_a1_s0 (i32 0), (i32 CheckFI_xpr:$op0))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
// i_store(opc_sw,x_0,simm12,xpr)
}

def i_store__opc_sw__xpr__simm12__x_0__: CodasipMicroClass_<(outs), (ins xpr:$op0, i32imm:$op1)>
{
let AsmString = "sw $op0, $op1 ( x0 )";
let Pattern = [(store_a1_s0 (i32 CheckFI_xpr:$op0), (i32 sext12To32imm:$op1))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
// i_store(opc_sw,xpr,simm12,x_0)
}

def i_store__opc_sw__xpr__simm12__xpr__: CodasipMicroClass_<(outs), (ins xpr:$op0, xpr:$op1, i32imm:$op2)>
{
let AsmString = "sw $op0, $op2 ( $op1 )";
let Pattern = [(store_a1_s0 (i32 CheckFI_xpr:$op0), (i32 (add (i32 CheckFI_xpr:$op1), (i32 sext12To32imm:$op2))))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
// i_store(opc_sw,xpr,simm12,xpr)
}

def i_store__opc_sw__xpr__simm12__xpr__SPEC_CLONE_: CodasipMicroClass_<(outs), (ins xpr:$op0, xpr:$op1)>
{
let AsmString = "sw $op0, 0 ( $op1 )";
let Pattern = [(store_a1_s0 (i32 CheckFI_xpr:$op0), (i32 CheckFI_xpr:$op1))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
// i_store(opc_sw,xpr,simm12,xpr)
}

def i_upper_imm__opc_auipc__x_0__simm20__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "auipc x0, 0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_upper_imm(opc_auipc,x_0,simm20)
}

// note: (BGN545): The instruction contains invalid operation ('CurPC') even after the high-level analysis. The semantic pattern will be commented out.
def i_upper_imm__opc_auipc__xpr__simm20__: CodasipMicroClass_<(outs xpr:$op0), (ins i32imm:$op1)>
{
let AsmString = "auipc $op0, $op1";
//let Pattern = [(set xpr:$op0, (i32 (add (i32 (add (i32 (CurPC)), (i32 Trunc12_i32imm:$op1))), (i32 -4))))];
let Size = 4;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
// i_upper_imm(opc_auipc,xpr,simm20)
}

// note: (BGN545): The instruction contains invalid operation ('CurPC') even after the high-level analysis. The semantic pattern will be commented out.
def i_upper_imm__opc_auipc__xpr__simm20__SPEC_CLONE_: CodasipMicroClass_<(outs xpr:$op0), (ins)>
{
let AsmString = "auipc $op0, 0";
//let Pattern = [(set xpr:$op0, (i32 (add (i32 (CurPC)), (i32 -4))))];
let Size = 4;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
// i_upper_imm(opc_auipc,xpr,simm20)
}

def i_upper_imm__opc_lui__x_0__simm20__: CodasipMicroClass_<(outs), (ins)>
{
let AsmString = "lui x0, 0";
let Pattern = [];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
// i_upper_imm(opc_lui,x_0,simm20)
}

def i_upper_imm__opc_lui__xpr__simm20__: CodasipMicroClass_<(outs xpr:$op0), (ins i32imm:$op1)>
{
let AsmString = "lui $op0, $op1";
let Pattern = [(set xpr:$op0, (i32 Trunc12_i32imm:$op1))];
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let isMoveImm = 1;
// i_upper_imm(opc_lui,xpr,simm20)
}

def e_movi32__: CodasipMicroClass_<(outs xpr:$op0), (ins i32imm:$op1)>
{
let Pattern = [(set xpr:$op0, (i32 imm:$op1))];
let Size = 20;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let isMoveImm = 1;
let usesCustomInserter = 1;
let isPseudo = 1;
let hasNoSchedulingInfo = 1;
// 
}
def e_movi32__GA: CodasipMicroClass_<(outs xpr:$op0), (ins i32imm:$op1)>
{
let Pattern = [(set xpr:$op0, (i32 (GAWrap (i32 tglobaladdr:$op1))))];
let Size = 20;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let isMoveImm = 1;
let usesCustomInserter = 1;
let isPseudo = 1;
let hasNoSchedulingInfo = 1;
// 
}
def e_movi32__ES: CodasipMicroClass_<(outs xpr:$op0), (ins i32imm:$op1)>
{
let Pattern = [(set xpr:$op0, (i32 (GAWrap (i32 texternalsym:$op1))))];
let Size = 20;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let isMoveImm = 1;
let usesCustomInserter = 1;
let isPseudo = 1;
let hasNoSchedulingInfo = 1;
// 
}
def e_movi32__BA: CodasipMicroClass_<(outs xpr:$op0), (ins i32imm:$op1)>
{
let Pattern = [(set xpr:$op0, (i32 (GAWrap (i32 tblockaddress:$op1))))];
let Size = 20;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let isMoveImm = 1;
let usesCustomInserter = 1;
let isPseudo = 1;
let hasNoSchedulingInfo = 1;
// 
}
def e_movi32__JT: CodasipMicroClass_<(outs xpr:$op0), (ins i32imm:$op1)>
{
let Pattern = [(set xpr:$op0, (i32 (GAWrap (i32 tjumptable:$op1))))];
let Size = 20;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let isMoveImm = 1;
let usesCustomInserter = 1;
let isPseudo = 1;
let hasNoSchedulingInfo = 1;
// 
}
def e_movi32__CP: CodasipMicroClass_<(outs xpr:$op0), (ins i32imm:$op1)>
{
let Pattern = [(set xpr:$op0, (i32 (GAWrap (i32 tconstpool:$op1))))];
let Size = 20;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let isMoveImm = 1;
let usesCustomInserter = 1;
let isPseudo = 1;
let hasNoSchedulingInfo = 1;
// 
}

def i_jr_alias__xpr__TAILCALL_CLONE_: CodasipMicroClass_<(outs), (ins xpr:$op0, variable_ops)>
{
let AsmString = "jr $op0";
let Pattern = [(TailCall (i32 CheckFI_xpr:$op0))];
let Defs = [rf_xpr_1, rf_xpr_0, rf_xpr_3, rf_xpr_4, rf_xpr_5, rf_xpr_6, rf_xpr_7, rf_xpr_9, rf_xpr_10, rf_xpr_11, rf_xpr_12, rf_xpr_13, rf_xpr_14, rf_xpr_15, rf_xpr_16, rf_xpr_17, rf_xpr_18, rf_xpr_19, rf_xpr_20, rf_xpr_21, rf_xpr_22, rf_xpr_23, rf_xpr_24, rf_xpr_25, rf_xpr_26, rf_xpr_27, rf_xpr_28, rf_xpr_29, rf_xpr_30, rf_xpr_31];
let Uses = [rf_xpr_2];
let Size = 4;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
// i_jr_alias(xpr)
}

def i_ret_alias__TAILCALL_CLONE_: CodasipMicroClass_<(outs), (ins variable_ops)>
{
let AsmString = "ret";
let Pattern = [(TailCall (i32 NotFI_rf_xpr_1))];
let Defs = [rf_xpr_1, rf_xpr_0, rf_xpr_3, rf_xpr_4, rf_xpr_5, rf_xpr_6, rf_xpr_7, rf_xpr_9, rf_xpr_10, rf_xpr_11, rf_xpr_12, rf_xpr_13, rf_xpr_14, rf_xpr_15, rf_xpr_16, rf_xpr_17, rf_xpr_18, rf_xpr_19, rf_xpr_20, rf_xpr_21, rf_xpr_22, rf_xpr_23, rf_xpr_24, rf_xpr_25, rf_xpr_26, rf_xpr_27, rf_xpr_28, rf_xpr_29, rf_xpr_30, rf_xpr_31];
let Uses = [rf_xpr_1, rf_xpr_2];
let Size = 4;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
// i_ret_alias
}

def i_j_alias__rel_addr20__TAILCALL_CLONE_: CodasipMicroClass_<(outs), (ins i32imm:$op0, variable_ops)>
{
let AsmString = "j $op0";
let Pattern = [(TailCall (i32 (GAWrap (i32 tglobaladdr:$op0))))];
let Defs = [rf_xpr_1, rf_xpr_0, rf_xpr_3, rf_xpr_4, rf_xpr_5, rf_xpr_6, rf_xpr_7, rf_xpr_9, rf_xpr_10, rf_xpr_11, rf_xpr_12, rf_xpr_13, rf_xpr_14, rf_xpr_15, rf_xpr_16, rf_xpr_17, rf_xpr_18, rf_xpr_19, rf_xpr_20, rf_xpr_21, rf_xpr_22, rf_xpr_23, rf_xpr_24, rf_xpr_25, rf_xpr_26, rf_xpr_27, rf_xpr_28, rf_xpr_29, rf_xpr_30, rf_xpr_31];
let Uses = [rf_xpr_2];
let Size = 4;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
// i_j_alias(rel_addr20)
}
def i_j_alias__rel_addr20__TAILCALL_CLONE_ES: CodasipMicroClass_<(outs), (ins i32imm:$op0, variable_ops)>
{
let AsmString = "j $op0";
let Pattern = [(TailCall (i32 (GAWrap (i32 texternalsym:$op0))))];
let Defs = [rf_xpr_1, rf_xpr_0, rf_xpr_3, rf_xpr_4, rf_xpr_5, rf_xpr_6, rf_xpr_7, rf_xpr_9, rf_xpr_10, rf_xpr_11, rf_xpr_12, rf_xpr_13, rf_xpr_14, rf_xpr_15, rf_xpr_16, rf_xpr_17, rf_xpr_18, rf_xpr_19, rf_xpr_20, rf_xpr_21, rf_xpr_22, rf_xpr_23, rf_xpr_24, rf_xpr_25, rf_xpr_26, rf_xpr_27, rf_xpr_28, rf_xpr_29, rf_xpr_30, rf_xpr_31];
let Uses = [rf_xpr_2];
let Size = 4;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
// i_j_alias(rel_addr20)
}
def i_j_alias__rel_addr20__TAILCALL_CLONE_BA: CodasipMicroClass_<(outs), (ins i32imm:$op0, variable_ops)>
{
let AsmString = "j $op0";
let Pattern = [(TailCall (i32 (GAWrap (i32 tblockaddress:$op0))))];
let Defs = [rf_xpr_1, rf_xpr_0, rf_xpr_3, rf_xpr_4, rf_xpr_5, rf_xpr_6, rf_xpr_7, rf_xpr_9, rf_xpr_10, rf_xpr_11, rf_xpr_12, rf_xpr_13, rf_xpr_14, rf_xpr_15, rf_xpr_16, rf_xpr_17, rf_xpr_18, rf_xpr_19, rf_xpr_20, rf_xpr_21, rf_xpr_22, rf_xpr_23, rf_xpr_24, rf_xpr_25, rf_xpr_26, rf_xpr_27, rf_xpr_28, rf_xpr_29, rf_xpr_30, rf_xpr_31];
let Uses = [rf_xpr_2];
let Size = 4;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
// i_j_alias(rel_addr20)
}

def i_jal__opc_jal__x_0__rel_addr20__TAILCALL_CLONE_: CodasipMicroClass_<(outs), (ins i32imm:$op0, variable_ops)>
{
let AsmString = "jal x0, $op0";
let Pattern = [(TailCall (i32 (GAWrap (i32 tglobaladdr:$op0))))];
let Defs = [rf_xpr_1, rf_xpr_0, rf_xpr_3, rf_xpr_4, rf_xpr_5, rf_xpr_6, rf_xpr_7, rf_xpr_9, rf_xpr_10, rf_xpr_11, rf_xpr_12, rf_xpr_13, rf_xpr_14, rf_xpr_15, rf_xpr_16, rf_xpr_17, rf_xpr_18, rf_xpr_19, rf_xpr_20, rf_xpr_21, rf_xpr_22, rf_xpr_23, rf_xpr_24, rf_xpr_25, rf_xpr_26, rf_xpr_27, rf_xpr_28, rf_xpr_29, rf_xpr_30, rf_xpr_31];
let Uses = [rf_xpr_2];
let Size = 4;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
// i_jal(opc_jal,x_0,rel_addr20)
}
def i_jal__opc_jal__x_0__rel_addr20__TAILCALL_CLONE_ES: CodasipMicroClass_<(outs), (ins i32imm:$op0, variable_ops)>
{
let AsmString = "jal x0, $op0";
let Pattern = [(TailCall (i32 (GAWrap (i32 texternalsym:$op0))))];
let Defs = [rf_xpr_1, rf_xpr_0, rf_xpr_3, rf_xpr_4, rf_xpr_5, rf_xpr_6, rf_xpr_7, rf_xpr_9, rf_xpr_10, rf_xpr_11, rf_xpr_12, rf_xpr_13, rf_xpr_14, rf_xpr_15, rf_xpr_16, rf_xpr_17, rf_xpr_18, rf_xpr_19, rf_xpr_20, rf_xpr_21, rf_xpr_22, rf_xpr_23, rf_xpr_24, rf_xpr_25, rf_xpr_26, rf_xpr_27, rf_xpr_28, rf_xpr_29, rf_xpr_30, rf_xpr_31];
let Uses = [rf_xpr_2];
let Size = 4;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
// i_jal(opc_jal,x_0,rel_addr20)
}
def i_jal__opc_jal__x_0__rel_addr20__TAILCALL_CLONE_BA: CodasipMicroClass_<(outs), (ins i32imm:$op0, variable_ops)>
{
let AsmString = "jal x0, $op0";
let Pattern = [(TailCall (i32 (GAWrap (i32 tblockaddress:$op0))))];
let Defs = [rf_xpr_1, rf_xpr_0, rf_xpr_3, rf_xpr_4, rf_xpr_5, rf_xpr_6, rf_xpr_7, rf_xpr_9, rf_xpr_10, rf_xpr_11, rf_xpr_12, rf_xpr_13, rf_xpr_14, rf_xpr_15, rf_xpr_16, rf_xpr_17, rf_xpr_18, rf_xpr_19, rf_xpr_20, rf_xpr_21, rf_xpr_22, rf_xpr_23, rf_xpr_24, rf_xpr_25, rf_xpr_26, rf_xpr_27, rf_xpr_28, rf_xpr_29, rf_xpr_30, rf_xpr_31];
let Uses = [rf_xpr_2];
let Size = 4;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
// i_jal(opc_jal,x_0,rel_addr20)
}

def i_beqz_alias__x_0__rel_addr12__TAILCALL_CLONE_: CodasipMicroClass_<(outs), (ins i32imm:$op0, variable_ops)>
{
let AsmString = "beqz x0, $op0";
let Pattern = [(TailCall (i32 (GAWrap (i32 tglobaladdr:$op0))))];
let Defs = [rf_xpr_1, rf_xpr_0, rf_xpr_3, rf_xpr_4, rf_xpr_5, rf_xpr_6, rf_xpr_7, rf_xpr_9, rf_xpr_10, rf_xpr_11, rf_xpr_12, rf_xpr_13, rf_xpr_14, rf_xpr_15, rf_xpr_16, rf_xpr_17, rf_xpr_18, rf_xpr_19, rf_xpr_20, rf_xpr_21, rf_xpr_22, rf_xpr_23, rf_xpr_24, rf_xpr_25, rf_xpr_26, rf_xpr_27, rf_xpr_28, rf_xpr_29, rf_xpr_30, rf_xpr_31];
let Uses = [rf_xpr_2];
let Size = 4;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
// i_beqz_alias(x_0,rel_addr12)
}
def i_beqz_alias__x_0__rel_addr12__TAILCALL_CLONE_ES: CodasipMicroClass_<(outs), (ins i32imm:$op0, variable_ops)>
{
let AsmString = "beqz x0, $op0";
let Pattern = [(TailCall (i32 (GAWrap (i32 texternalsym:$op0))))];
let Defs = [rf_xpr_1, rf_xpr_0, rf_xpr_3, rf_xpr_4, rf_xpr_5, rf_xpr_6, rf_xpr_7, rf_xpr_9, rf_xpr_10, rf_xpr_11, rf_xpr_12, rf_xpr_13, rf_xpr_14, rf_xpr_15, rf_xpr_16, rf_xpr_17, rf_xpr_18, rf_xpr_19, rf_xpr_20, rf_xpr_21, rf_xpr_22, rf_xpr_23, rf_xpr_24, rf_xpr_25, rf_xpr_26, rf_xpr_27, rf_xpr_28, rf_xpr_29, rf_xpr_30, rf_xpr_31];
let Uses = [rf_xpr_2];
let Size = 4;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
// i_beqz_alias(x_0,rel_addr12)
}
def i_beqz_alias__x_0__rel_addr12__TAILCALL_CLONE_BA: CodasipMicroClass_<(outs), (ins i32imm:$op0, variable_ops)>
{
let AsmString = "beqz x0, $op0";
let Pattern = [(TailCall (i32 (GAWrap (i32 tblockaddress:$op0))))];
let Defs = [rf_xpr_1, rf_xpr_0, rf_xpr_3, rf_xpr_4, rf_xpr_5, rf_xpr_6, rf_xpr_7, rf_xpr_9, rf_xpr_10, rf_xpr_11, rf_xpr_12, rf_xpr_13, rf_xpr_14, rf_xpr_15, rf_xpr_16, rf_xpr_17, rf_xpr_18, rf_xpr_19, rf_xpr_20, rf_xpr_21, rf_xpr_22, rf_xpr_23, rf_xpr_24, rf_xpr_25, rf_xpr_26, rf_xpr_27, rf_xpr_28, rf_xpr_29, rf_xpr_30, rf_xpr_31];
let Uses = [rf_xpr_2];
let Size = 4;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
// i_beqz_alias(x_0,rel_addr12)
}

def i_bgez_alias__x_0__rel_addr12__TAILCALL_CLONE_: CodasipMicroClass_<(outs), (ins i32imm:$op0, variable_ops)>
{
let AsmString = "bgez x0, $op0";
let Pattern = [(TailCall (i32 (GAWrap (i32 tglobaladdr:$op0))))];
let Defs = [rf_xpr_1, rf_xpr_0, rf_xpr_3, rf_xpr_4, rf_xpr_5, rf_xpr_6, rf_xpr_7, rf_xpr_9, rf_xpr_10, rf_xpr_11, rf_xpr_12, rf_xpr_13, rf_xpr_14, rf_xpr_15, rf_xpr_16, rf_xpr_17, rf_xpr_18, rf_xpr_19, rf_xpr_20, rf_xpr_21, rf_xpr_22, rf_xpr_23, rf_xpr_24, rf_xpr_25, rf_xpr_26, rf_xpr_27, rf_xpr_28, rf_xpr_29, rf_xpr_30, rf_xpr_31];
let Uses = [rf_xpr_2];
let Size = 4;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
// i_bgez_alias(x_0,rel_addr12)
}
def i_bgez_alias__x_0__rel_addr12__TAILCALL_CLONE_ES: CodasipMicroClass_<(outs), (ins i32imm:$op0, variable_ops)>
{
let AsmString = "bgez x0, $op0";
let Pattern = [(TailCall (i32 (GAWrap (i32 texternalsym:$op0))))];
let Defs = [rf_xpr_1, rf_xpr_0, rf_xpr_3, rf_xpr_4, rf_xpr_5, rf_xpr_6, rf_xpr_7, rf_xpr_9, rf_xpr_10, rf_xpr_11, rf_xpr_12, rf_xpr_13, rf_xpr_14, rf_xpr_15, rf_xpr_16, rf_xpr_17, rf_xpr_18, rf_xpr_19, rf_xpr_20, rf_xpr_21, rf_xpr_22, rf_xpr_23, rf_xpr_24, rf_xpr_25, rf_xpr_26, rf_xpr_27, rf_xpr_28, rf_xpr_29, rf_xpr_30, rf_xpr_31];
let Uses = [rf_xpr_2];
let Size = 4;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
// i_bgez_alias(x_0,rel_addr12)
}
def i_bgez_alias__x_0__rel_addr12__TAILCALL_CLONE_BA: CodasipMicroClass_<(outs), (ins i32imm:$op0, variable_ops)>
{
let AsmString = "bgez x0, $op0";
let Pattern = [(TailCall (i32 (GAWrap (i32 tblockaddress:$op0))))];
let Defs = [rf_xpr_1, rf_xpr_0, rf_xpr_3, rf_xpr_4, rf_xpr_5, rf_xpr_6, rf_xpr_7, rf_xpr_9, rf_xpr_10, rf_xpr_11, rf_xpr_12, rf_xpr_13, rf_xpr_14, rf_xpr_15, rf_xpr_16, rf_xpr_17, rf_xpr_18, rf_xpr_19, rf_xpr_20, rf_xpr_21, rf_xpr_22, rf_xpr_23, rf_xpr_24, rf_xpr_25, rf_xpr_26, rf_xpr_27, rf_xpr_28, rf_xpr_29, rf_xpr_30, rf_xpr_31];
let Uses = [rf_xpr_2];
let Size = 4;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
// i_bgez_alias(x_0,rel_addr12)
}

def i_ble_alias__x_0__x_0__rel_addr12__TAILCALL_CLONE_: CodasipMicroClass_<(outs), (ins i32imm:$op0, variable_ops)>
{
let AsmString = "ble x0, x0, $op0";
let Pattern = [(TailCall (i32 (GAWrap (i32 tglobaladdr:$op0))))];
let Defs = [rf_xpr_1, rf_xpr_0, rf_xpr_3, rf_xpr_4, rf_xpr_5, rf_xpr_6, rf_xpr_7, rf_xpr_9, rf_xpr_10, rf_xpr_11, rf_xpr_12, rf_xpr_13, rf_xpr_14, rf_xpr_15, rf_xpr_16, rf_xpr_17, rf_xpr_18, rf_xpr_19, rf_xpr_20, rf_xpr_21, rf_xpr_22, rf_xpr_23, rf_xpr_24, rf_xpr_25, rf_xpr_26, rf_xpr_27, rf_xpr_28, rf_xpr_29, rf_xpr_30, rf_xpr_31];
let Uses = [rf_xpr_2];
let Size = 4;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
// i_ble_alias(x_0,x_0,rel_addr12)
}
def i_ble_alias__x_0__x_0__rel_addr12__TAILCALL_CLONE_ES: CodasipMicroClass_<(outs), (ins i32imm:$op0, variable_ops)>
{
let AsmString = "ble x0, x0, $op0";
let Pattern = [(TailCall (i32 (GAWrap (i32 texternalsym:$op0))))];
let Defs = [rf_xpr_1, rf_xpr_0, rf_xpr_3, rf_xpr_4, rf_xpr_5, rf_xpr_6, rf_xpr_7, rf_xpr_9, rf_xpr_10, rf_xpr_11, rf_xpr_12, rf_xpr_13, rf_xpr_14, rf_xpr_15, rf_xpr_16, rf_xpr_17, rf_xpr_18, rf_xpr_19, rf_xpr_20, rf_xpr_21, rf_xpr_22, rf_xpr_23, rf_xpr_24, rf_xpr_25, rf_xpr_26, rf_xpr_27, rf_xpr_28, rf_xpr_29, rf_xpr_30, rf_xpr_31];
let Uses = [rf_xpr_2];
let Size = 4;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
// i_ble_alias(x_0,x_0,rel_addr12)
}
def i_ble_alias__x_0__x_0__rel_addr12__TAILCALL_CLONE_BA: CodasipMicroClass_<(outs), (ins i32imm:$op0, variable_ops)>
{
let AsmString = "ble x0, x0, $op0";
let Pattern = [(TailCall (i32 (GAWrap (i32 tblockaddress:$op0))))];
let Defs = [rf_xpr_1, rf_xpr_0, rf_xpr_3, rf_xpr_4, rf_xpr_5, rf_xpr_6, rf_xpr_7, rf_xpr_9, rf_xpr_10, rf_xpr_11, rf_xpr_12, rf_xpr_13, rf_xpr_14, rf_xpr_15, rf_xpr_16, rf_xpr_17, rf_xpr_18, rf_xpr_19, rf_xpr_20, rf_xpr_21, rf_xpr_22, rf_xpr_23, rf_xpr_24, rf_xpr_25, rf_xpr_26, rf_xpr_27, rf_xpr_28, rf_xpr_29, rf_xpr_30, rf_xpr_31];
let Uses = [rf_xpr_2];
let Size = 4;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
// i_ble_alias(x_0,x_0,rel_addr12)
}

def i_blez_alias__x_0__rel_addr12__TAILCALL_CLONE_: CodasipMicroClass_<(outs), (ins i32imm:$op0, variable_ops)>
{
let AsmString = "blez x0, $op0";
let Pattern = [(TailCall (i32 (GAWrap (i32 tglobaladdr:$op0))))];
let Defs = [rf_xpr_1, rf_xpr_0, rf_xpr_3, rf_xpr_4, rf_xpr_5, rf_xpr_6, rf_xpr_7, rf_xpr_9, rf_xpr_10, rf_xpr_11, rf_xpr_12, rf_xpr_13, rf_xpr_14, rf_xpr_15, rf_xpr_16, rf_xpr_17, rf_xpr_18, rf_xpr_19, rf_xpr_20, rf_xpr_21, rf_xpr_22, rf_xpr_23, rf_xpr_24, rf_xpr_25, rf_xpr_26, rf_xpr_27, rf_xpr_28, rf_xpr_29, rf_xpr_30, rf_xpr_31];
let Uses = [rf_xpr_2];
let Size = 4;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
// i_blez_alias(x_0,rel_addr12)
}
def i_blez_alias__x_0__rel_addr12__TAILCALL_CLONE_ES: CodasipMicroClass_<(outs), (ins i32imm:$op0, variable_ops)>
{
let AsmString = "blez x0, $op0";
let Pattern = [(TailCall (i32 (GAWrap (i32 texternalsym:$op0))))];
let Defs = [rf_xpr_1, rf_xpr_0, rf_xpr_3, rf_xpr_4, rf_xpr_5, rf_xpr_6, rf_xpr_7, rf_xpr_9, rf_xpr_10, rf_xpr_11, rf_xpr_12, rf_xpr_13, rf_xpr_14, rf_xpr_15, rf_xpr_16, rf_xpr_17, rf_xpr_18, rf_xpr_19, rf_xpr_20, rf_xpr_21, rf_xpr_22, rf_xpr_23, rf_xpr_24, rf_xpr_25, rf_xpr_26, rf_xpr_27, rf_xpr_28, rf_xpr_29, rf_xpr_30, rf_xpr_31];
let Uses = [rf_xpr_2];
let Size = 4;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
// i_blez_alias(x_0,rel_addr12)
}
def i_blez_alias__x_0__rel_addr12__TAILCALL_CLONE_BA: CodasipMicroClass_<(outs), (ins i32imm:$op0, variable_ops)>
{
let AsmString = "blez x0, $op0";
let Pattern = [(TailCall (i32 (GAWrap (i32 tblockaddress:$op0))))];
let Defs = [rf_xpr_1, rf_xpr_0, rf_xpr_3, rf_xpr_4, rf_xpr_5, rf_xpr_6, rf_xpr_7, rf_xpr_9, rf_xpr_10, rf_xpr_11, rf_xpr_12, rf_xpr_13, rf_xpr_14, rf_xpr_15, rf_xpr_16, rf_xpr_17, rf_xpr_18, rf_xpr_19, rf_xpr_20, rf_xpr_21, rf_xpr_22, rf_xpr_23, rf_xpr_24, rf_xpr_25, rf_xpr_26, rf_xpr_27, rf_xpr_28, rf_xpr_29, rf_xpr_30, rf_xpr_31];
let Uses = [rf_xpr_2];
let Size = 4;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
// i_blez_alias(x_0,rel_addr12)
}

def i_branch__opc_beq__x_0__x_0__rel_addr12__TAILCALL_CLONE_: CodasipMicroClass_<(outs), (ins i32imm:$op0, variable_ops)>
{
let AsmString = "beq x0, x0, $op0";
let Pattern = [(TailCall (i32 (GAWrap (i32 tglobaladdr:$op0))))];
let Defs = [rf_xpr_1, rf_xpr_0, rf_xpr_3, rf_xpr_4, rf_xpr_5, rf_xpr_6, rf_xpr_7, rf_xpr_9, rf_xpr_10, rf_xpr_11, rf_xpr_12, rf_xpr_13, rf_xpr_14, rf_xpr_15, rf_xpr_16, rf_xpr_17, rf_xpr_18, rf_xpr_19, rf_xpr_20, rf_xpr_21, rf_xpr_22, rf_xpr_23, rf_xpr_24, rf_xpr_25, rf_xpr_26, rf_xpr_27, rf_xpr_28, rf_xpr_29, rf_xpr_30, rf_xpr_31];
let Uses = [rf_xpr_2];
let Size = 4;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
// i_branch(opc_beq,x_0,x_0,rel_addr12)
}
def i_branch__opc_beq__x_0__x_0__rel_addr12__TAILCALL_CLONE_ES: CodasipMicroClass_<(outs), (ins i32imm:$op0, variable_ops)>
{
let AsmString = "beq x0, x0, $op0";
let Pattern = [(TailCall (i32 (GAWrap (i32 texternalsym:$op0))))];
let Defs = [rf_xpr_1, rf_xpr_0, rf_xpr_3, rf_xpr_4, rf_xpr_5, rf_xpr_6, rf_xpr_7, rf_xpr_9, rf_xpr_10, rf_xpr_11, rf_xpr_12, rf_xpr_13, rf_xpr_14, rf_xpr_15, rf_xpr_16, rf_xpr_17, rf_xpr_18, rf_xpr_19, rf_xpr_20, rf_xpr_21, rf_xpr_22, rf_xpr_23, rf_xpr_24, rf_xpr_25, rf_xpr_26, rf_xpr_27, rf_xpr_28, rf_xpr_29, rf_xpr_30, rf_xpr_31];
let Uses = [rf_xpr_2];
let Size = 4;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
// i_branch(opc_beq,x_0,x_0,rel_addr12)
}
def i_branch__opc_beq__x_0__x_0__rel_addr12__TAILCALL_CLONE_BA: CodasipMicroClass_<(outs), (ins i32imm:$op0, variable_ops)>
{
let AsmString = "beq x0, x0, $op0";
let Pattern = [(TailCall (i32 (GAWrap (i32 tblockaddress:$op0))))];
let Defs = [rf_xpr_1, rf_xpr_0, rf_xpr_3, rf_xpr_4, rf_xpr_5, rf_xpr_6, rf_xpr_7, rf_xpr_9, rf_xpr_10, rf_xpr_11, rf_xpr_12, rf_xpr_13, rf_xpr_14, rf_xpr_15, rf_xpr_16, rf_xpr_17, rf_xpr_18, rf_xpr_19, rf_xpr_20, rf_xpr_21, rf_xpr_22, rf_xpr_23, rf_xpr_24, rf_xpr_25, rf_xpr_26, rf_xpr_27, rf_xpr_28, rf_xpr_29, rf_xpr_30, rf_xpr_31];
let Uses = [rf_xpr_2];
let Size = 4;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
// i_branch(opc_beq,x_0,x_0,rel_addr12)
}

def i_branch__opc_bge__x_0__x_0__rel_addr12__TAILCALL_CLONE_: CodasipMicroClass_<(outs), (ins i32imm:$op0, variable_ops)>
{
let AsmString = "bge x0, x0, $op0";
let Pattern = [(TailCall (i32 (GAWrap (i32 tglobaladdr:$op0))))];
let Defs = [rf_xpr_1, rf_xpr_0, rf_xpr_3, rf_xpr_4, rf_xpr_5, rf_xpr_6, rf_xpr_7, rf_xpr_9, rf_xpr_10, rf_xpr_11, rf_xpr_12, rf_xpr_13, rf_xpr_14, rf_xpr_15, rf_xpr_16, rf_xpr_17, rf_xpr_18, rf_xpr_19, rf_xpr_20, rf_xpr_21, rf_xpr_22, rf_xpr_23, rf_xpr_24, rf_xpr_25, rf_xpr_26, rf_xpr_27, rf_xpr_28, rf_xpr_29, rf_xpr_30, rf_xpr_31];
let Uses = [rf_xpr_2];
let Size = 4;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
// i_branch(opc_bge,x_0,x_0,rel_addr12)
}
def i_branch__opc_bge__x_0__x_0__rel_addr12__TAILCALL_CLONE_ES: CodasipMicroClass_<(outs), (ins i32imm:$op0, variable_ops)>
{
let AsmString = "bge x0, x0, $op0";
let Pattern = [(TailCall (i32 (GAWrap (i32 texternalsym:$op0))))];
let Defs = [rf_xpr_1, rf_xpr_0, rf_xpr_3, rf_xpr_4, rf_xpr_5, rf_xpr_6, rf_xpr_7, rf_xpr_9, rf_xpr_10, rf_xpr_11, rf_xpr_12, rf_xpr_13, rf_xpr_14, rf_xpr_15, rf_xpr_16, rf_xpr_17, rf_xpr_18, rf_xpr_19, rf_xpr_20, rf_xpr_21, rf_xpr_22, rf_xpr_23, rf_xpr_24, rf_xpr_25, rf_xpr_26, rf_xpr_27, rf_xpr_28, rf_xpr_29, rf_xpr_30, rf_xpr_31];
let Uses = [rf_xpr_2];
let Size = 4;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
// i_branch(opc_bge,x_0,x_0,rel_addr12)
}
def i_branch__opc_bge__x_0__x_0__rel_addr12__TAILCALL_CLONE_BA: CodasipMicroClass_<(outs), (ins i32imm:$op0, variable_ops)>
{
let AsmString = "bge x0, x0, $op0";
let Pattern = [(TailCall (i32 (GAWrap (i32 tblockaddress:$op0))))];
let Defs = [rf_xpr_1, rf_xpr_0, rf_xpr_3, rf_xpr_4, rf_xpr_5, rf_xpr_6, rf_xpr_7, rf_xpr_9, rf_xpr_10, rf_xpr_11, rf_xpr_12, rf_xpr_13, rf_xpr_14, rf_xpr_15, rf_xpr_16, rf_xpr_17, rf_xpr_18, rf_xpr_19, rf_xpr_20, rf_xpr_21, rf_xpr_22, rf_xpr_23, rf_xpr_24, rf_xpr_25, rf_xpr_26, rf_xpr_27, rf_xpr_28, rf_xpr_29, rf_xpr_30, rf_xpr_31];
let Uses = [rf_xpr_2];
let Size = 4;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
// i_branch(opc_bge,x_0,x_0,rel_addr12)
}

def i_branch__opc_bgeu__x_0__x_0__rel_addr12__TAILCALL_CLONE_: CodasipMicroClass_<(outs), (ins i32imm:$op0, variable_ops)>
{
let AsmString = "bgeu x0, x0, $op0";
let Pattern = [(TailCall (i32 (GAWrap (i32 tglobaladdr:$op0))))];
let Defs = [rf_xpr_1, rf_xpr_0, rf_xpr_3, rf_xpr_4, rf_xpr_5, rf_xpr_6, rf_xpr_7, rf_xpr_9, rf_xpr_10, rf_xpr_11, rf_xpr_12, rf_xpr_13, rf_xpr_14, rf_xpr_15, rf_xpr_16, rf_xpr_17, rf_xpr_18, rf_xpr_19, rf_xpr_20, rf_xpr_21, rf_xpr_22, rf_xpr_23, rf_xpr_24, rf_xpr_25, rf_xpr_26, rf_xpr_27, rf_xpr_28, rf_xpr_29, rf_xpr_30, rf_xpr_31];
let Uses = [rf_xpr_2];
let Size = 4;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
// i_branch(opc_bgeu,x_0,x_0,rel_addr12)
}
def i_branch__opc_bgeu__x_0__x_0__rel_addr12__TAILCALL_CLONE_ES: CodasipMicroClass_<(outs), (ins i32imm:$op0, variable_ops)>
{
let AsmString = "bgeu x0, x0, $op0";
let Pattern = [(TailCall (i32 (GAWrap (i32 texternalsym:$op0))))];
let Defs = [rf_xpr_1, rf_xpr_0, rf_xpr_3, rf_xpr_4, rf_xpr_5, rf_xpr_6, rf_xpr_7, rf_xpr_9, rf_xpr_10, rf_xpr_11, rf_xpr_12, rf_xpr_13, rf_xpr_14, rf_xpr_15, rf_xpr_16, rf_xpr_17, rf_xpr_18, rf_xpr_19, rf_xpr_20, rf_xpr_21, rf_xpr_22, rf_xpr_23, rf_xpr_24, rf_xpr_25, rf_xpr_26, rf_xpr_27, rf_xpr_28, rf_xpr_29, rf_xpr_30, rf_xpr_31];
let Uses = [rf_xpr_2];
let Size = 4;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
// i_branch(opc_bgeu,x_0,x_0,rel_addr12)
}
def i_branch__opc_bgeu__x_0__x_0__rel_addr12__TAILCALL_CLONE_BA: CodasipMicroClass_<(outs), (ins i32imm:$op0, variable_ops)>
{
let AsmString = "bgeu x0, x0, $op0";
let Pattern = [(TailCall (i32 (GAWrap (i32 tblockaddress:$op0))))];
let Defs = [rf_xpr_1, rf_xpr_0, rf_xpr_3, rf_xpr_4, rf_xpr_5, rf_xpr_6, rf_xpr_7, rf_xpr_9, rf_xpr_10, rf_xpr_11, rf_xpr_12, rf_xpr_13, rf_xpr_14, rf_xpr_15, rf_xpr_16, rf_xpr_17, rf_xpr_18, rf_xpr_19, rf_xpr_20, rf_xpr_21, rf_xpr_22, rf_xpr_23, rf_xpr_24, rf_xpr_25, rf_xpr_26, rf_xpr_27, rf_xpr_28, rf_xpr_29, rf_xpr_30, rf_xpr_31];
let Uses = [rf_xpr_2];
let Size = 4;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
// i_branch(opc_bgeu,x_0,x_0,rel_addr12)
}

def i_branch__opc_bgeu__xpr__x_0__rel_addr12__TAILCALL_CLONE_: CodasipMicroClass_<(outs), (ins i32imm:$op0, variable_ops)>
{
let AsmString = "bgeu x1, x0, $op0";
let Pattern = [(TailCall (i32 (GAWrap (i32 tglobaladdr:$op0))))];
let Defs = [rf_xpr_1, rf_xpr_0, rf_xpr_3, rf_xpr_4, rf_xpr_5, rf_xpr_6, rf_xpr_7, rf_xpr_9, rf_xpr_10, rf_xpr_11, rf_xpr_12, rf_xpr_13, rf_xpr_14, rf_xpr_15, rf_xpr_16, rf_xpr_17, rf_xpr_18, rf_xpr_19, rf_xpr_20, rf_xpr_21, rf_xpr_22, rf_xpr_23, rf_xpr_24, rf_xpr_25, rf_xpr_26, rf_xpr_27, rf_xpr_28, rf_xpr_29, rf_xpr_30, rf_xpr_31];
let Uses = [rf_xpr_2];
let Size = 4;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
// i_branch(opc_bgeu,xpr,x_0,rel_addr12)
}
def i_branch__opc_bgeu__xpr__x_0__rel_addr12__TAILCALL_CLONE_ES: CodasipMicroClass_<(outs), (ins i32imm:$op0, variable_ops)>
{
let AsmString = "bgeu x1, x0, $op0";
let Pattern = [(TailCall (i32 (GAWrap (i32 texternalsym:$op0))))];
let Defs = [rf_xpr_1, rf_xpr_0, rf_xpr_3, rf_xpr_4, rf_xpr_5, rf_xpr_6, rf_xpr_7, rf_xpr_9, rf_xpr_10, rf_xpr_11, rf_xpr_12, rf_xpr_13, rf_xpr_14, rf_xpr_15, rf_xpr_16, rf_xpr_17, rf_xpr_18, rf_xpr_19, rf_xpr_20, rf_xpr_21, rf_xpr_22, rf_xpr_23, rf_xpr_24, rf_xpr_25, rf_xpr_26, rf_xpr_27, rf_xpr_28, rf_xpr_29, rf_xpr_30, rf_xpr_31];
let Uses = [rf_xpr_2];
let Size = 4;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
// i_branch(opc_bgeu,xpr,x_0,rel_addr12)
}
def i_branch__opc_bgeu__xpr__x_0__rel_addr12__TAILCALL_CLONE_BA: CodasipMicroClass_<(outs), (ins i32imm:$op0, variable_ops)>
{
let AsmString = "bgeu x1, x0, $op0";
let Pattern = [(TailCall (i32 (GAWrap (i32 tblockaddress:$op0))))];
let Defs = [rf_xpr_1, rf_xpr_0, rf_xpr_3, rf_xpr_4, rf_xpr_5, rf_xpr_6, rf_xpr_7, rf_xpr_9, rf_xpr_10, rf_xpr_11, rf_xpr_12, rf_xpr_13, rf_xpr_14, rf_xpr_15, rf_xpr_16, rf_xpr_17, rf_xpr_18, rf_xpr_19, rf_xpr_20, rf_xpr_21, rf_xpr_22, rf_xpr_23, rf_xpr_24, rf_xpr_25, rf_xpr_26, rf_xpr_27, rf_xpr_28, rf_xpr_29, rf_xpr_30, rf_xpr_31];
let Uses = [rf_xpr_2];
let Size = 4;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
// i_branch(opc_bgeu,xpr,x_0,rel_addr12)
}

def i_jalr__opc_jalr__x_0__rel_jalr_addr12__x_0__TAILCALL_CLONE_: CodasipMicroClass_<(outs), (ins i32imm:$op0, variable_ops)>
{
let AsmString = "jalr x0, $op0 ( x0 )";
let Pattern = [(TailCall (i32 (GAWrap (i32 tglobaladdr:$op0))))];
let Defs = [rf_xpr_1, rf_xpr_0, rf_xpr_3, rf_xpr_4, rf_xpr_5, rf_xpr_6, rf_xpr_7, rf_xpr_9, rf_xpr_10, rf_xpr_11, rf_xpr_12, rf_xpr_13, rf_xpr_14, rf_xpr_15, rf_xpr_16, rf_xpr_17, rf_xpr_18, rf_xpr_19, rf_xpr_20, rf_xpr_21, rf_xpr_22, rf_xpr_23, rf_xpr_24, rf_xpr_25, rf_xpr_26, rf_xpr_27, rf_xpr_28, rf_xpr_29, rf_xpr_30, rf_xpr_31];
let Uses = [rf_xpr_2];
let Size = 4;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
// i_jalr(opc_jalr,x_0,rel_jalr_addr12,x_0)
}
def i_jalr__opc_jalr__x_0__rel_jalr_addr12__x_0__TAILCALL_CLONE_ES: CodasipMicroClass_<(outs), (ins i32imm:$op0, variable_ops)>
{
let AsmString = "jalr x0, $op0 ( x0 )";
let Pattern = [(TailCall (i32 (GAWrap (i32 texternalsym:$op0))))];
let Defs = [rf_xpr_1, rf_xpr_0, rf_xpr_3, rf_xpr_4, rf_xpr_5, rf_xpr_6, rf_xpr_7, rf_xpr_9, rf_xpr_10, rf_xpr_11, rf_xpr_12, rf_xpr_13, rf_xpr_14, rf_xpr_15, rf_xpr_16, rf_xpr_17, rf_xpr_18, rf_xpr_19, rf_xpr_20, rf_xpr_21, rf_xpr_22, rf_xpr_23, rf_xpr_24, rf_xpr_25, rf_xpr_26, rf_xpr_27, rf_xpr_28, rf_xpr_29, rf_xpr_30, rf_xpr_31];
let Uses = [rf_xpr_2];
let Size = 4;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
// i_jalr(opc_jalr,x_0,rel_jalr_addr12,x_0)
}
def i_jalr__opc_jalr__x_0__rel_jalr_addr12__x_0__TAILCALL_CLONE_BA: CodasipMicroClass_<(outs), (ins i32imm:$op0, variable_ops)>
{
let AsmString = "jalr x0, $op0 ( x0 )";
let Pattern = [(TailCall (i32 (GAWrap (i32 tblockaddress:$op0))))];
let Defs = [rf_xpr_1, rf_xpr_0, rf_xpr_3, rf_xpr_4, rf_xpr_5, rf_xpr_6, rf_xpr_7, rf_xpr_9, rf_xpr_10, rf_xpr_11, rf_xpr_12, rf_xpr_13, rf_xpr_14, rf_xpr_15, rf_xpr_16, rf_xpr_17, rf_xpr_18, rf_xpr_19, rf_xpr_20, rf_xpr_21, rf_xpr_22, rf_xpr_23, rf_xpr_24, rf_xpr_25, rf_xpr_26, rf_xpr_27, rf_xpr_28, rf_xpr_29, rf_xpr_30, rf_xpr_31];
let Uses = [rf_xpr_2];
let Size = 4;
let isCall = 1;
let isReturn = 1;
let isTerminator = 1;
let isBarrier = 1;
let mayLoad = 0;
let mayStore = 0;
// i_jalr(opc_jalr,x_0,rel_jalr_addr12,x_0)
}

def i_store__opc_sw__xpr__simm12__xpr__0_SUM2REGS_EMUL_: CodasipMicroClass_<(outs), (ins xpr:$op0, xpr:$op1, xpr:$op2)>
{
//let Pattern = [(store_a1_s0 (i32 CheckFI_xpr:$op0), (i32 (add (i32 CheckFI_xpr:$op1), (i32 CheckFI_xpr:$op2))))];
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
let hasSideEffects = 0;
let usesCustomInserter = 1;
let isPseudo = 1;
let hasNoSchedulingInfo = 1;
// i_store(opc_sw,xpr,simm12,xpr)
}

def i_store__opc_sw__xpr__simm12__xpr__1_BIGIMM_EMUL_: CodasipMicroClass_<(outs), (ins xpr:$op0, xpr:$op1, i32imm:$op2)>
{
//let Pattern = [(store_a1_s0 (i32 CheckFI_xpr:$op0), (i32 (add (i32 CheckFI_xpr:$op1), (i32 imm:$op2))))];
let Size = 28;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
let hasSideEffects = 0;
let usesCustomInserter = 1;
let isPseudo = 1;
let hasNoSchedulingInfo = 1;
// i_store(opc_sw,xpr,simm12,xpr)
}

def i_load__opc_lw__xpr__simm12__xpr__2_SUM2REGS_EMUL_: CodasipMicroClass_sc_load<(outs xpr:$op0), (ins xpr:$op1, xpr:$op2)>
{
//let Pattern = [(set xpr:$op0, (i32 (load_a1_s0 (i32 (add (i32 CheckFI_xpr:$op1), (i32 CheckFI_xpr:$op2))))))];
let Size = 8;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let hasSideEffects = 0;
let usesCustomInserter = 1;
let isPseudo = 1;
let hasNoSchedulingInfo = 1;
// i_load(opc_lw,xpr,simm12,xpr)
}

def i_load__opc_lw__xpr__simm12__xpr__3_BIGIMM_EMUL_: CodasipMicroClass_sc_load<(outs xpr:$op0), (ins xpr:$op1, i32imm:$op2)>
{
//let Pattern = [(set xpr:$op0, (i32 (load_a1_s0 (i32 (add (i32 CheckFI_xpr:$op1), (i32 imm:$op2))))))];
let Size = 28;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let hasSideEffects = 0;
let usesCustomInserter = 1;
let isPseudo = 1;
let hasNoSchedulingInfo = 1;
// i_load(opc_lw,xpr,simm12,xpr)
}

def i_store__opc_sw__xpr__simm12__xpr__4_BIGIMM_EMUL_: CodasipMicroClass_<(outs), (ins xpr:$op0, xpr:$op1, i32imm:$op2)>
{
//let Pattern = [(store_a1_s0 (i32 CheckFI_xpr:$op0), (i32 (add (i32 CheckFI_xpr:$op1), (i32 imm:$op2))))];
let Size = 28;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 1;
let hasSideEffects = 0;
let usesCustomInserter = 1;
let isPseudo = 1;
let hasNoSchedulingInfo = 1;
// i_store(opc_sw,xpr,simm12,xpr)
}

def i_load__opc_lw__xpr__simm12__xpr__5_BIGIMM_EMUL_: CodasipMicroClass_sc_load<(outs xpr:$op0), (ins xpr:$op1, i32imm:$op2)>
{
//let Pattern = [(set xpr:$op0, (i32 (load_a1_s0 (i32 (add (i32 CheckFI_xpr:$op1), (i32 imm:$op2))))))];
let Size = 28;
let isReMaterializable = 1;
let mayLoad = 1;
let mayStore = 0;
let hasSideEffects = 0;
let usesCustomInserter = 1;
let isPseudo = 1;
let hasNoSchedulingInfo = 1;
// i_load(opc_lw,xpr,simm12,xpr)
}

def i_alu_i__opc_addi__xpr__xpr__simm12__6_BIGIMM_EMUL_: CodasipMicroClass_<(outs xpr:$op0), (ins xpr:$op1, i32imm:$op2)>
{
//let Pattern = [(set xpr:$op0, (i32 (add (i32 CheckFI_xpr:$op1), (i32 imm:$op2))))];
let Size = 24;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let usesCustomInserter = 1;
let isPseudo = 1;
let hasNoSchedulingInfo = 1;
// i_alu_i(opc_addi,xpr,xpr,simm12)
}

def i_alu_i__opc_addi__xpr__xpr__simm12__7_BIGIMM_EMUL_: CodasipMicroClass_<(outs xpr:$op0), (ins xpr:$op1, i32imm:$op2)>
{
//let Pattern = [(set xpr:$op0, (i32 (add (i32 CheckFI_xpr:$op1), (i32 imm:$op2))))];
let Size = 24;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let usesCustomInserter = 1;
let isPseudo = 1;
let hasNoSchedulingInfo = 1;
// i_alu_i(opc_addi,xpr,xpr,simm12)
}

def i_alu_i__opc_addi__xpr__xpr__simm12__8_BIGIMM_EMUL_: CodasipMicroClass_<(outs xpr:$op0), (ins xpr:$op1, i32imm:$op2)>
{
//let Pattern = [(set xpr:$op0, (i32 (add (i32 CheckFI_xpr:$op1), (i32 imm:$op2))))];
let Size = 24;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
let usesCustomInserter = 1;
let isPseudo = 1;
let hasNoSchedulingInfo = 1;
// i_alu_i(opc_addi,xpr,xpr,simm12)
}

def i_upper_imm__opc_lui__xpr__simm20__SYNTAX_CLONE_e_movi32__1_: CodasipMicroClass_<(outs xpr:$op0), (ins i32imm:$op1)>
{
let AsmString = "lui $op0, $op1 >> 12 & 0xfffff";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
// i_upper_imm(opc_lui,xpr,simm20)
}

def i_alu_i__opc_ori__xpr__x_0__simm12__SYNTAX_CLONE_e_movi32__2_: CodasipMicroClass_<(outs xpr:$op0), (ins i32imm:$op1)>
{
let AsmString = "ori $op0, x0, $op1 & 0xfff";
let Size = 4;
let isReMaterializable = 1;
let mayLoad = 0;
let mayStore = 0;
let hasSideEffects = 0;
// i_alu_i(opc_ori,xpr,x_0,simm12)
}



include "CodasipPatterns.td"

include "CodasipCustomPats.td"

// callsequence nodes, generate instructions through manual elimination


def LSDCallSeqStart: SDCallSeqStart<[SDTCisVT<0,i32>]>;
def callseq_start: SDNode<"ISD::CALLSEQ_START", LSDCallSeqStart, [SDNPHasChain,SDNPOutGlue]>;
def CALLSTART: CodasipInst<(outs), (ins i32imm:$off)>
{
 let AsmString = "#CALLSEQ_START $off";
 let Pattern = [(callseq_start timm:$off)];
 let hasSideEffects = 1;
 let hasNoSchedulingInfo = 1;
}

def LSDCallSeqEnd: SDCallSeqEnd<[SDTCisVT<0,i32>, SDTCisVT<1,i32>]>;
def callseq_end: SDNode<"ISD::CALLSEQ_END", LSDCallSeqEnd, [SDNPHasChain,SDNPOptInGlue,SDNPOutGlue]>;
def CALLEND: CodasipInst<(outs), (ins i32imm:$imm, i32imm:$imm2)>
{
 let AsmString = "#CALLSEQ_END $imm, $imm2";
 let Pattern = [(callseq_end timm:$imm, timm:$imm2)];
 let hasSideEffects = 1;
 let hasNoSchedulingInfo = 1;
}


