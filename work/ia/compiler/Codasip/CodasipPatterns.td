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


// definition of auxiliary patterns
    
def rule_BRCOND_0: Pattern<(brcond (i32 (seteq (i32 CheckFI_xpr:$op0), (i32 sext12To32imm:$op1))), bb:$op2),
[(i_beqz_alias__xpr__rel_addr12__ (i_alu_i__opc_xori__xpr__xpr__simm12__ (i32 CheckFI_xpr:$op0), (i32 sext12To32imm:$op1)), bb:$op2)]>;

def rule_BRCOND_1: Pattern<(brcond (i32 (setne (i32 CheckFI_xpr:$op0), (i32 sext12To32imm:$op1))), bb:$op2),
[(i_bgtu_alias__xpr__x_0__rel_addr12__ (i_alu_i__opc_xori__xpr__xpr__simm12__ (i32 CheckFI_xpr:$op0), (i32 sext12To32imm:$op1)), bb:$op2)]>;

def rule_BRCOND_2: Pattern<(brcond (i32 (setge (i32 CheckFI_xpr:$op0), (i32 sext12To32imm:$op1))), bb:$op2),
[(i_beqz_alias__xpr__rel_addr12__ (i_alu_i__opc_slti__xpr__xpr__simm12__ (i32 CheckFI_xpr:$op0), (i32 sext12To32imm:$op1)), bb:$op2)]>;

def rule_BRCOND_3: Pattern<(brcond (i32 (setlt (i32 CheckFI_xpr:$op0), (i32 sext12To32imm:$op1))), bb:$op2),
[(i_bgtu_alias__xpr__x_0__rel_addr12__ (i_alu_i__opc_slti__xpr__xpr__simm12__ (i32 CheckFI_xpr:$op0), (i32 sext12To32imm:$op1)), bb:$op2)]>;

def rule_BRCOND_4: Pattern<(brcond (i32 (setuge (i32 CheckFI_xpr:$op0), (i32 sext12To32imm:$op1))), bb:$op2),
[(i_beqz_alias__xpr__rel_addr12__ (i_alu_i__opc_sltiu__xpr__xpr__simm12__ (i32 CheckFI_xpr:$op0), (i32 sext12To32imm:$op1)), bb:$op2)]>;

def rule_BRCOND_5: Pattern<(brcond (i32 (setult (i32 CheckFI_xpr:$op0), (i32 sext12To32imm:$op1))), bb:$op2),
[(i_bgtu_alias__xpr__x_0__rel_addr12__ (i_alu_i__opc_sltiu__xpr__xpr__simm12__ (i32 CheckFI_xpr:$op0), (i32 sext12To32imm:$op1)), bb:$op2)]>;

def rule_BRCOND_6: Pattern<(brcond (i32 CheckFI_xpr:$op0), bb:$op1),
[(i_bgtu_alias__xpr__x_0__rel_addr12__ (i32 CheckFI_xpr:$op0), bb:$op1)]>;

def rule_SELECT_7: CodasipInst<(outs xpr:$op2_out), (ins xpr:$op0, xpr:$op1, xpr:$op2, xpr:$op3) > {
let Pattern = [(set xpr:$op2_out, (select (i32 (seteq (i32 CheckFI_xpr:$op0), (i32 CheckFI_xpr:$op1))), (i32 CheckFI_xpr:$op2), (i32 CheckFI_xpr:$op3)))];
let usesCustomInserter = 1;
}

def rule_SELECT_8: CodasipInst<(outs xpr:$op2_out), (ins xpr:$op0, xpr:$op1, xpr:$op2, xpr:$op3) > {
let Pattern = [(set xpr:$op2_out, (select (i32 (setne (i32 CheckFI_xpr:$op0), (i32 CheckFI_xpr:$op1))), (i32 CheckFI_xpr:$op2), (i32 CheckFI_xpr:$op3)))];
let usesCustomInserter = 1;
}

def rule_SELECT_9: CodasipInst<(outs xpr:$op2_out), (ins xpr:$op0, xpr:$op1, xpr:$op2, xpr:$op3) > {
let Pattern = [(set xpr:$op2_out, (select (i32 (setge (i32 CheckFI_xpr:$op0), (i32 CheckFI_xpr:$op1))), (i32 CheckFI_xpr:$op2), (i32 CheckFI_xpr:$op3)))];
let usesCustomInserter = 1;
}

def rule_SELECT_10: CodasipInst<(outs xpr:$op2_out), (ins xpr:$op0, xpr:$op1, xpr:$op2, xpr:$op3) > {
let Pattern = [(set xpr:$op2_out, (select (i32 (setgt (i32 CheckFI_xpr:$op0), (i32 CheckFI_xpr:$op1))), (i32 CheckFI_xpr:$op2), (i32 CheckFI_xpr:$op3)))];
let usesCustomInserter = 1;
}

def rule_SELECT_11: CodasipInst<(outs xpr:$op2_out), (ins xpr:$op0, xpr:$op1, xpr:$op2, xpr:$op3) > {
let Pattern = [(set xpr:$op2_out, (select (i32 (setle (i32 CheckFI_xpr:$op0), (i32 CheckFI_xpr:$op1))), (i32 CheckFI_xpr:$op2), (i32 CheckFI_xpr:$op3)))];
let usesCustomInserter = 1;
}

def rule_SELECT_12: CodasipInst<(outs xpr:$op2_out), (ins xpr:$op0, xpr:$op1, xpr:$op2, xpr:$op3) > {
let Pattern = [(set xpr:$op2_out, (select (i32 (setlt (i32 CheckFI_xpr:$op0), (i32 CheckFI_xpr:$op1))), (i32 CheckFI_xpr:$op2), (i32 CheckFI_xpr:$op3)))];
let usesCustomInserter = 1;
}

def rule_SELECT_13: CodasipInst<(outs xpr:$op2_out), (ins xpr:$op0, xpr:$op1, xpr:$op2, xpr:$op3) > {
let Pattern = [(set xpr:$op2_out, (select (i32 (setuge (i32 CheckFI_xpr:$op0), (i32 CheckFI_xpr:$op1))), (i32 CheckFI_xpr:$op2), (i32 CheckFI_xpr:$op3)))];
let usesCustomInserter = 1;
}

def rule_SELECT_14: CodasipInst<(outs xpr:$op2_out), (ins xpr:$op0, xpr:$op1, xpr:$op2, xpr:$op3) > {
let Pattern = [(set xpr:$op2_out, (select (i32 (setugt (i32 CheckFI_xpr:$op0), (i32 CheckFI_xpr:$op1))), (i32 CheckFI_xpr:$op2), (i32 CheckFI_xpr:$op3)))];
let usesCustomInserter = 1;
}

def rule_SELECT_15: CodasipInst<(outs xpr:$op2_out), (ins xpr:$op0, xpr:$op1, xpr:$op2, xpr:$op3) > {
let Pattern = [(set xpr:$op2_out, (select (i32 (setule (i32 CheckFI_xpr:$op0), (i32 CheckFI_xpr:$op1))), (i32 CheckFI_xpr:$op2), (i32 CheckFI_xpr:$op3)))];
let usesCustomInserter = 1;
}

def rule_SELECT_16: CodasipInst<(outs xpr:$op2_out), (ins xpr:$op0, xpr:$op1, xpr:$op2, xpr:$op3) > {
let Pattern = [(set xpr:$op2_out, (select (i32 (setult (i32 CheckFI_xpr:$op0), (i32 CheckFI_xpr:$op1))), (i32 CheckFI_xpr:$op2), (i32 CheckFI_xpr:$op3)))];
let usesCustomInserter = 1;
}

def rule_SELECT_17: CodasipInst<(outs xpr:$op1_out), (ins xpr:$op0, xpr:$op1, xpr:$op2) > {
let Pattern = [(set xpr:$op1_out, (select (i32 CheckFI_xpr:$op0), (i32 CheckFI_xpr:$op1), (i32 CheckFI_xpr:$op2)))];
let usesCustomInserter = 1;
}

def rule_SETCC_18: Pattern<(i32 (seteq (i32 CheckFI_xpr:$op0), (i32 CheckFI_xpr:$op1))),
[(i_seqz_alias__xpr__xpr__ (i_alu__opc_xor__xpr__xpr__xpr__ (i32 CheckFI_xpr:$op0), (i32 CheckFI_xpr:$op1)))]>;

def rule_SETCC_19: Pattern<(i32 (seteq (i32 CheckFI_xpr:$op0), (i32 sext12To32imm:$op1))),
[(i_seqz_alias__xpr__xpr__ (i_alu_i__opc_xori__xpr__xpr__simm12__ (i32 CheckFI_xpr:$op0), (i32 sext12To32imm:$op1)))]>;

def rule_SETCC_20: Pattern<(i32 (setne (i32 CheckFI_xpr:$op0), (i32 CheckFI_xpr:$op1))),
[(i_alu__opc_sltu__xpr__x_0__xpr__ (i_alu__opc_xor__xpr__xpr__xpr__ (i32 CheckFI_xpr:$op0), (i32 CheckFI_xpr:$op1)))]>;

def rule_SETCC_21: Pattern<(i32 (setne (i32 CheckFI_xpr:$op0), (i32 sext12To32imm:$op1))),
[(i_alu__opc_sltu__xpr__x_0__xpr__ (i_alu_i__opc_xori__xpr__xpr__simm12__ (i32 CheckFI_xpr:$op0), (i32 sext12To32imm:$op1)))]>;

def rule_SETCC_22: Pattern<(i32 (setge (i32 CheckFI_xpr:$op0), (i32 CheckFI_xpr:$op1))),
[(i_seqz_alias__xpr__xpr__ (i_alu__opc_slt__xpr__xpr__xpr__ (i32 CheckFI_xpr:$op0), (i32 CheckFI_xpr:$op1)))]>;

def rule_SETCC_23: Pattern<(i32 (setge (i32 CheckFI_xpr:$op0), (i32 sext12To32imm:$op1))),
[(i_seqz_alias__xpr__xpr__ (i_alu_i__opc_slti__xpr__xpr__simm12__ (i32 CheckFI_xpr:$op0), (i32 sext12To32imm:$op1)))]>;

def rule_SETCC_24: Pattern<(i32 (setle (i32 CheckFI_xpr:$op0), (i32 CheckFI_xpr:$op1))),
[(i_alu_i__opc_xori__xpr__xpr__simm12__ (i_alu__opc_slt__xpr__xpr__xpr__ (i32 CheckFI_xpr:$op1), (i32 CheckFI_xpr:$op0)), 1)]>;

def rule_SETCC_25: Pattern<(i32 (setuge (i32 CheckFI_xpr:$op0), (i32 CheckFI_xpr:$op1))),
[(i_alu_i__opc_xori__xpr__xpr__simm12__ (i_alu__opc_sltu__xpr__xpr__xpr__ (i32 CheckFI_xpr:$op0), (i32 CheckFI_xpr:$op1)), 1)]>;

def rule_SETCC_26: Pattern<(i32 (setuge (i32 CheckFI_xpr:$op0), (i32 sext12To32imm:$op1))),
[(i_alu_i__opc_xori__xpr__xpr__simm12__ (i_alu_i__opc_sltiu__xpr__xpr__simm12__ (i32 CheckFI_xpr:$op0), (i32 sext12To32imm:$op1)), 1)]>;

def rule_SETCC_27: Pattern<(i32 (setule (i32 CheckFI_xpr:$op0), (i32 CheckFI_xpr:$op1))),
[(i_alu_i__opc_xori__xpr__xpr__simm12__ (i_alu__opc_sltu__xpr__xpr__xpr__ (i32 CheckFI_xpr:$op1), (i32 CheckFI_xpr:$op0)), 1)]>;




// patterns linking intrinsics with instructions



// patterns for moi instructions


