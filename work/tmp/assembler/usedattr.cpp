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
 * \author  Codasip (c) Assembler generator
 * \version 6.8.2-1.win.7.EVALUATION
 * \brief   Source for assembler
 */

#include "usedattr.h"

#include "assembler_messages.h"
#include "logical_file_info.h"


namespace codasip {
namespace assembler {

__codasip__asm_switch_value_enum codasip_switch_MI10opc_branchIH1_13default_start13_10opc_branch3opc;
__codasip__asm_switch_value_enum codasip_switch_MI13default_start;
__codasip__asm_switch_value_enum codasip_switch_MI13opc_upper_immIH1_13default_start16_13opc_upper_imm3opc;
__codasip__asm_switch_value_enum codasip_switch_MI3xprIH1_13default_start9_7xpr_all6xpr_rd;
__codasip__asm_switch_value_enum codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1;
__codasip__asm_switch_value_enum codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2;
__codasip__asm_switch_value_enum codasip_switch_MI5start;
__codasip__asm_switch_value_enum codasip_switch_MI7opc_aluIH1_13default_start9_7opc_alu3opc;
__codasip__asm_switch_value_enum codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd;
__codasip__asm_switch_value_enum codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1;
__codasip__asm_switch_value_enum codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2;
__codasip__asm_switch_value_enum codasip_switch_MI8opc_loadIH1_13default_start10_8opc_load3opc;
__codasip__asm_switch_value_enum codasip_switch_MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc;
__codasip__asm_switch_value_enum codasip_switch_MI9opc_shiftIH1_13default_start11_9opc_shift3opc;
__codasip__asm_switch_value_enum codasip_switch_MI9opc_storeIH1_13default_start11_9opc_store3opc;
__codasip__asm_switch_value_enum codasip_switch_MI9riscv_isaIH1_13default_start;

const std::vector<std::string> InitializeHints()
{
    std::vector<std::string> hints;
    hints.resize(173, "");
    hints[CODASIP_SWITCH_VALUE_MI10i_jr_aliasIH1_13default_start] = "jrx0";
    hints[CODASIP_SWITCH_VALUE_MI10i_li_aliasIH1_13default_start] = "lix0,";
    hints[CODASIP_SWITCH_VALUE_MI10i_mv_aliasIH1_13default_start] = "mvx0,x0";
    hints[CODASIP_SWITCH_VALUE_MI11i_bgt_aliasIH1_13default_start] = "bgtx0,x0,";
    hints[CODASIP_SWITCH_VALUE_MI11i_ble_aliasIH1_13default_start] = "blex0,x0,";
    hints[CODASIP_SWITCH_VALUE_MI11i_neg_aliasIH1_13default_start] = "negx0,x0";
    hints[CODASIP_SWITCH_VALUE_MI11i_nop_aliasIH1_13default_start] = "nop";
    hints[CODASIP_SWITCH_VALUE_MI11i_not_aliasIH1_13default_start] = "notx0,x0";
    hints[CODASIP_SWITCH_VALUE_MI11i_ret_aliasIH1_13default_start] = "ret";
    hints[CODASIP_SWITCH_VALUE_MI11i_upper_immIH1_13default_start] = "XXXx0,";
    hints[CODASIP_SWITCH_VALUE_MI12i_beqz_aliasIH1_13default_start] = "beqzx0,";
    hints[CODASIP_SWITCH_VALUE_MI12i_bgez_aliasIH1_13default_start] = "bgezx0,";
    hints[CODASIP_SWITCH_VALUE_MI12i_bgtu_aliasIH1_13default_start] = "bgtux0,x0,";
    hints[CODASIP_SWITCH_VALUE_MI12i_bgtz_aliasIH1_13default_start] = "bgtzx0,";
    hints[CODASIP_SWITCH_VALUE_MI12i_bleu_aliasIH1_13default_start] = "bleux0,x0,";
    hints[CODASIP_SWITCH_VALUE_MI12i_blez_aliasIH1_13default_start] = "blezx0,";
    hints[CODASIP_SWITCH_VALUE_MI12i_bltz_aliasIH1_13default_start] = "bltzx0,";
    hints[CODASIP_SWITCH_VALUE_MI12i_bnez_aliasIH1_13default_start] = "bnezx0,";
    hints[CODASIP_SWITCH_VALUE_MI12i_call_aliasIH1_13default_start] = "call";
    hints[CODASIP_SWITCH_VALUE_MI12i_seqz_aliasIH1_13default_start] = "seqzx0,x0";
    hints[CODASIP_SWITCH_VALUE_MI12i_sgtz_aliasIH1_13default_start] = "sgtzx0,x0";
    hints[CODASIP_SWITCH_VALUE_MI12i_sltz_aliasIH1_13default_start] = "sltzx0,x0";
    hints[CODASIP_SWITCH_VALUE_MI12i_snez_aliasIH1_13default_start] = "snezx0,x0";
    hints[CODASIP_SWITCH_VALUE_MI13default_start] = "XXX";
    hints[CODASIP_SWITCH_VALUE_MI16i_call_reg_aliasIH1_13default_start] = "call_regx0";
    hints[CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all6xpr_rd] = "XXXx0,x0,x0";
    hints[CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all7xpr_rs1] = "XXXx0,x0,x0";
    hints[CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all7xpr_rs2] = "XXXx0,x0,x0";
    hints[CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all6xpr_rd] = "x1";
    hints[CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all7xpr_rs1] = "x1";
    hints[CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all7xpr_rs2] = "x1";
    hints[CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all6xpr_rd] = "x2";
    hints[CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all7xpr_rs1] = "x2";
    hints[CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all7xpr_rs2] = "x2";
    hints[CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all6xpr_rd] = "x3";
    hints[CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all7xpr_rs1] = "x3";
    hints[CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all7xpr_rs2] = "x3";
    hints[CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all6xpr_rd] = "x4";
    hints[CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all7xpr_rs1] = "x4";
    hints[CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all7xpr_rs2] = "x4";
    hints[CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all6xpr_rd] = "x5";
    hints[CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all7xpr_rs1] = "x5";
    hints[CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all7xpr_rs2] = "x5";
    hints[CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all6xpr_rd] = "x6";
    hints[CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all7xpr_rs1] = "x6";
    hints[CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all7xpr_rs2] = "x6";
    hints[CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all6xpr_rd] = "x7";
    hints[CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all7xpr_rs1] = "x7";
    hints[CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all7xpr_rs2] = "x7";
    hints[CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all6xpr_rd] = "x8";
    hints[CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all7xpr_rs1] = "x8";
    hints[CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all7xpr_rs2] = "x8";
    hints[CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all6xpr_rd] = "x9";
    hints[CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all7xpr_rs1] = "x9";
    hints[CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all7xpr_rs2] = "x9";
    hints[CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all6xpr_rd] = "XXXXXX,x0,x0";
    hints[CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1] = "XXXx0,XXX,x0";
    hints[CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2] = "XXXx0,x0,XXX";
    hints[CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all6xpr_rd] = "x10";
    hints[CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all7xpr_rs1] = "x10";
    hints[CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all7xpr_rs2] = "x10";
    hints[CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all6xpr_rd] = "x11";
    hints[CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all7xpr_rs1] = "x11";
    hints[CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all7xpr_rs2] = "x11";
    hints[CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all6xpr_rd] = "x12";
    hints[CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all7xpr_rs1] = "x12";
    hints[CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all7xpr_rs2] = "x12";
    hints[CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all6xpr_rd] = "x13";
    hints[CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all7xpr_rs1] = "x13";
    hints[CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all7xpr_rs2] = "x13";
    hints[CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all6xpr_rd] = "x14";
    hints[CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all7xpr_rs1] = "x14";
    hints[CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all7xpr_rs2] = "x14";
    hints[CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all6xpr_rd] = "x15";
    hints[CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all7xpr_rs1] = "x15";
    hints[CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all7xpr_rs2] = "x15";
    hints[CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all6xpr_rd] = "x16";
    hints[CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all7xpr_rs1] = "x16";
    hints[CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all7xpr_rs2] = "x16";
    hints[CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all6xpr_rd] = "x17";
    hints[CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all7xpr_rs1] = "x17";
    hints[CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all7xpr_rs2] = "x17";
    hints[CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all6xpr_rd] = "x18";
    hints[CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all7xpr_rs1] = "x18";
    hints[CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all7xpr_rs2] = "x18";
    hints[CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all6xpr_rd] = "x19";
    hints[CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all7xpr_rs1] = "x19";
    hints[CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all7xpr_rs2] = "x19";
    hints[CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all6xpr_rd] = "x20";
    hints[CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all7xpr_rs1] = "x20";
    hints[CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all7xpr_rs2] = "x20";
    hints[CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all6xpr_rd] = "x21";
    hints[CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all7xpr_rs1] = "x21";
    hints[CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all7xpr_rs2] = "x21";
    hints[CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all6xpr_rd] = "x22";
    hints[CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all7xpr_rs1] = "x22";
    hints[CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all7xpr_rs2] = "x22";
    hints[CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all6xpr_rd] = "x23";
    hints[CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all7xpr_rs1] = "x23";
    hints[CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all7xpr_rs2] = "x23";
    hints[CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all6xpr_rd] = "x24";
    hints[CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all7xpr_rs1] = "x24";
    hints[CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all7xpr_rs2] = "x24";
    hints[CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all6xpr_rd] = "x25";
    hints[CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all7xpr_rs1] = "x25";
    hints[CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all7xpr_rs2] = "x25";
    hints[CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all6xpr_rd] = "x26";
    hints[CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all7xpr_rs1] = "x26";
    hints[CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all7xpr_rs2] = "x26";
    hints[CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all6xpr_rd] = "x27";
    hints[CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all7xpr_rs1] = "x27";
    hints[CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all7xpr_rs2] = "x27";
    hints[CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all6xpr_rd] = "x28";
    hints[CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all7xpr_rs1] = "x28";
    hints[CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all7xpr_rs2] = "x28";
    hints[CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all6xpr_rd] = "x29";
    hints[CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all7xpr_rs1] = "x29";
    hints[CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all7xpr_rs2] = "x29";
    hints[CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all6xpr_rd] = "x30";
    hints[CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all7xpr_rs1] = "x30";
    hints[CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all7xpr_rs2] = "x30";
    hints[CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all6xpr_rd] = "x31";
    hints[CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all7xpr_rs1] = "x31";
    hints[CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all7xpr_rs2] = "x31";
    hints[CODASIP_SWITCH_VALUE_MI5i_aluIH1_13default_start] = "XXXx0,x0,x0";
    hints[CODASIP_SWITCH_VALUE_MI5i_jalIH1_13default_start] = "jalx0,";
    hints[CODASIP_SWITCH_VALUE_MI6i_haltIH1_13default_start] = "halt";
    hints[CODASIP_SWITCH_VALUE_MI6i_jalrIH1_13default_start] = "jalrx0,(x0)";
    hints[CODASIP_SWITCH_VALUE_MI6i_loadIH1_13default_start] = "XXXx0,(x0)";
    hints[CODASIP_SWITCH_VALUE_MI6opc_lbIH1_13default_start10_8opc_load3opc] = "lb";
    hints[CODASIP_SWITCH_VALUE_MI6opc_lhIH1_13default_start10_8opc_load3opc] = "lh";
    hints[CODASIP_SWITCH_VALUE_MI6opc_lwIH1_13default_start10_8opc_load3opc] = "lw";
    hints[CODASIP_SWITCH_VALUE_MI6opc_orIH1_13default_start9_7opc_alu3opc] = "or";
    hints[CODASIP_SWITCH_VALUE_MI6opc_sbIH1_13default_start11_9opc_store3opc] = "sb";
    hints[CODASIP_SWITCH_VALUE_MI6opc_shIH1_13default_start11_9opc_store3opc] = "sh";
    hints[CODASIP_SWITCH_VALUE_MI6opc_swIH1_13default_start11_9opc_store3opc] = "sw";
    hints[CODASIP_SWITCH_VALUE_MI7i_alu_iIH1_13default_start] = "XXXx0,x0,";
    hints[CODASIP_SWITCH_VALUE_MI7i_shiftIH1_13default_start] = "XXXx0,x0,";
    hints[CODASIP_SWITCH_VALUE_MI7i_storeIH1_13default_start] = "XXXx0,(x0)";
    hints[CODASIP_SWITCH_VALUE_MI7opc_addIH1_13default_start9_7opc_alu3opc] = "add";
    hints[CODASIP_SWITCH_VALUE_MI7opc_andIH1_13default_start9_7opc_alu3opc] = "and";
    hints[CODASIP_SWITCH_VALUE_MI7opc_beqIH1_13default_start13_10opc_branch3opc] = "beq";
    hints[CODASIP_SWITCH_VALUE_MI7opc_bgeIH1_13default_start13_10opc_branch3opc] = "bge";
    hints[CODASIP_SWITCH_VALUE_MI7opc_bltIH1_13default_start13_10opc_branch3opc] = "blt";
    hints[CODASIP_SWITCH_VALUE_MI7opc_bneIH1_13default_start13_10opc_branch3opc] = "bne";
    hints[CODASIP_SWITCH_VALUE_MI7opc_lbuIH1_13default_start10_8opc_load3opc] = "lbu";
    hints[CODASIP_SWITCH_VALUE_MI7opc_lhuIH1_13default_start10_8opc_load3opc] = "lhu";
    hints[CODASIP_SWITCH_VALUE_MI7opc_luiIH1_13default_start16_13opc_upper_imm3opc] = "lui";
    hints[CODASIP_SWITCH_VALUE_MI7opc_oriIH1_13default_start11_9opc_alu_i3opc] = "ori";
    hints[CODASIP_SWITCH_VALUE_MI7opc_sllIH1_13default_start9_7opc_alu3opc] = "sll";
    hints[CODASIP_SWITCH_VALUE_MI7opc_sltIH1_13default_start9_7opc_alu3opc] = "slt";
    hints[CODASIP_SWITCH_VALUE_MI7opc_sraIH1_13default_start9_7opc_alu3opc] = "sra";
    hints[CODASIP_SWITCH_VALUE_MI7opc_srlIH1_13default_start9_7opc_alu3opc] = "srl";
    hints[CODASIP_SWITCH_VALUE_MI7opc_subIH1_13default_start9_7opc_alu3opc] = "sub";
    hints[CODASIP_SWITCH_VALUE_MI7opc_xorIH1_13default_start9_7opc_alu3opc] = "xor";
    hints[CODASIP_SWITCH_VALUE_MI8i_branchIH1_13default_start] = "XXXx0,x0,";
    hints[CODASIP_SWITCH_VALUE_MI8opc_addiIH1_13default_start11_9opc_alu_i3opc] = "addi";
    hints[CODASIP_SWITCH_VALUE_MI8opc_andiIH1_13default_start11_9opc_alu_i3opc] = "andi";
    hints[CODASIP_SWITCH_VALUE_MI8opc_bgeuIH1_13default_start13_10opc_branch3opc] = "bgeu";
    hints[CODASIP_SWITCH_VALUE_MI8opc_bltuIH1_13default_start13_10opc_branch3opc] = "bltu";
    hints[CODASIP_SWITCH_VALUE_MI8opc_slliIH1_13default_start11_9opc_shift3opc] = "slli";
    hints[CODASIP_SWITCH_VALUE_MI8opc_sltiIH1_13default_start11_9opc_alu_i3opc] = "slti";
    hints[CODASIP_SWITCH_VALUE_MI8opc_sltuIH1_13default_start9_7opc_alu3opc] = "sltu";
    hints[CODASIP_SWITCH_VALUE_MI8opc_sraiIH1_13default_start11_9opc_shift3opc] = "srai";
    hints[CODASIP_SWITCH_VALUE_MI8opc_srliIH1_13default_start11_9opc_shift3opc] = "srli";
    hints[CODASIP_SWITCH_VALUE_MI8opc_xoriIH1_13default_start11_9opc_alu_i3opc] = "xori";
    hints[CODASIP_SWITCH_VALUE_MI9i_j_aliasIH1_13default_start] = "j";
    hints[CODASIP_SWITCH_VALUE_MI9i_syscallIH1_13default_start] = "syscall";
    hints[CODASIP_SWITCH_VALUE_MI9opc_auipcIH1_13default_start16_13opc_upper_imm3opc] = "auipc";
    hints[CODASIP_SWITCH_VALUE_MI9opc_sltiuIH1_13default_start11_9opc_alu_i3opc] = "sltiu";
    hints[CODASIP_SWITCH_VALUE_MI9riscv_isaIH1_13default_start] = "nop";
    return hints;
}

const std::vector<std::string> g_Hints = InitializeHints();

void UpdateSwitchValue(__codasip__asm_switch_value_enum& switchId, const __codasip__asm_switch_value_enum newValue){
    if (switchId == SWITCH_ID_ENUM_INVALID_INDEX)
    {
        switchId = newValue;
        return;
    }

    if (switchId != newValue)
    {
        err::DIFFERENT_REGISTER_OPERANDS(LogicalFileInfo::GetLocation(true), g_Hints[newValue]);
    }
}

void codasip_asm_switch_reset()
{
    codasip_switch_MI10opc_branchIH1_13default_start13_10opc_branch3opc = __codasip__asm_switch_value_enum_invalid;
    codasip_switch_MI13default_start = __codasip__asm_switch_value_enum_invalid;
    codasip_switch_MI13opc_upper_immIH1_13default_start16_13opc_upper_imm3opc = __codasip__asm_switch_value_enum_invalid;
    codasip_switch_MI3xprIH1_13default_start9_7xpr_all6xpr_rd = __codasip__asm_switch_value_enum_invalid;
    codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1 = __codasip__asm_switch_value_enum_invalid;
    codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2 = __codasip__asm_switch_value_enum_invalid;
    codasip_switch_MI5start = __codasip__asm_switch_value_enum_invalid;
    codasip_switch_MI7opc_aluIH1_13default_start9_7opc_alu3opc = __codasip__asm_switch_value_enum_invalid;
    codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = __codasip__asm_switch_value_enum_invalid;
    codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = __codasip__asm_switch_value_enum_invalid;
    codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = __codasip__asm_switch_value_enum_invalid;
    codasip_switch_MI8opc_loadIH1_13default_start10_8opc_load3opc = __codasip__asm_switch_value_enum_invalid;
    codasip_switch_MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc = __codasip__asm_switch_value_enum_invalid;
    codasip_switch_MI9opc_shiftIH1_13default_start11_9opc_shift3opc = __codasip__asm_switch_value_enum_invalid;
    codasip_switch_MI9opc_storeIH1_13default_start11_9opc_store3opc = __codasip__asm_switch_value_enum_invalid;
    codasip_switch_MI9riscv_isaIH1_13default_start = __codasip__asm_switch_value_enum_invalid;
}

}
}
