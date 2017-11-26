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
 * \date    2017-11-26
 * \author  Codasip (c) disassembler generator
 * \version 6.8.2-1.win.7.EVALUATION
 * \brief   Source files for disassembler
 * \project MI7RISC_V5
 */
#ifndef CODASIP_DISASSEMBLER_MI7RISC_V5_DISASSEMBLERCORE_1_H_
#define CODASIP_DISASSEMBLER_MI7RISC_V5_DISASSEMBLERCORE_1_H_

#include "dsm_text.h"
#include "dsmutils.h"
#include "codasip_integer.h"
#include <stack>

namespace codasip {
namespace disassembler {
namespace MI7RISC_V5 {

/**
 * \class DisassemblerCore
 */
class DisassemblerCore  {
private:
    typedef enum {
        CODASIP_SWITCH_UNDEF_MI13default_startIH1_13default_start,
        CODASIP_SWITCH_VALUE_MI11i_upper_immIH1_13default_start,
        CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all6xpr_rd,
        CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all7xpr_rs1,
        CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all7xpr_rs2,
        CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all6xpr_rd,
        CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all7xpr_rs1,
        CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all7xpr_rs2,
        CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all6xpr_rd,
        CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all7xpr_rs1,
        CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all7xpr_rs2,
        CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all6xpr_rd,
        CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all7xpr_rs1,
        CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all7xpr_rs2,
        CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all6xpr_rd,
        CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all7xpr_rs1,
        CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all7xpr_rs2,
        CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all6xpr_rd,
        CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all7xpr_rs1,
        CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all7xpr_rs2,
        CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all6xpr_rd,
        CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all7xpr_rs1,
        CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all7xpr_rs2,
        CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all6xpr_rd,
        CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all7xpr_rs1,
        CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all7xpr_rs2,
        CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all6xpr_rd,
        CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all7xpr_rs1,
        CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all7xpr_rs2,
        CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all6xpr_rd,
        CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all7xpr_rs1,
        CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all7xpr_rs2,
        CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all6xpr_rd,
        CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1,
        CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2,
        CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all6xpr_rd,
        CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all7xpr_rs1,
        CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all7xpr_rs2,
        CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all6xpr_rd,
        CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all7xpr_rs1,
        CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all7xpr_rs2,
        CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all6xpr_rd,
        CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all7xpr_rs1,
        CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all7xpr_rs2,
        CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all6xpr_rd,
        CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all7xpr_rs1,
        CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all7xpr_rs2,
        CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all6xpr_rd,
        CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all7xpr_rs1,
        CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all7xpr_rs2,
        CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all6xpr_rd,
        CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all7xpr_rs1,
        CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all7xpr_rs2,
        CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all6xpr_rd,
        CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all7xpr_rs1,
        CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all7xpr_rs2,
        CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all6xpr_rd,
        CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all7xpr_rs1,
        CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all7xpr_rs2,
        CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all6xpr_rd,
        CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all7xpr_rs1,
        CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all7xpr_rs2,
        CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all6xpr_rd,
        CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all7xpr_rs1,
        CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all7xpr_rs2,
        CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all6xpr_rd,
        CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all7xpr_rs1,
        CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all7xpr_rs2,
        CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all6xpr_rd,
        CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all7xpr_rs1,
        CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all7xpr_rs2,
        CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all6xpr_rd,
        CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all7xpr_rs1,
        CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all7xpr_rs2,
        CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all6xpr_rd,
        CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all7xpr_rs1,
        CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all7xpr_rs2,
        CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all6xpr_rd,
        CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all7xpr_rs1,
        CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all7xpr_rs2,
        CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all6xpr_rd,
        CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all7xpr_rs1,
        CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all7xpr_rs2,
        CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all6xpr_rd,
        CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all7xpr_rs1,
        CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all7xpr_rs2,
        CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all6xpr_rd,
        CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all7xpr_rs1,
        CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all7xpr_rs2,
        CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all6xpr_rd,
        CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all7xpr_rs1,
        CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all7xpr_rs2,
        CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all6xpr_rd,
        CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all7xpr_rs1,
        CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all7xpr_rs2,
        CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all6xpr_rd,
        CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all7xpr_rs1,
        CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all7xpr_rs2,
        CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all6xpr_rd,
        CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all7xpr_rs1,
        CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all7xpr_rs2,
        CODASIP_SWITCH_VALUE_MI5i_aluIH1_13default_start,
        CODASIP_SWITCH_VALUE_MI5i_jalIH1_13default_start,
        CODASIP_SWITCH_VALUE_MI6i_haltIH1_13default_start,
        CODASIP_SWITCH_VALUE_MI6i_jalrIH1_13default_start,
        CODASIP_SWITCH_VALUE_MI6i_loadIH1_13default_start,
        CODASIP_SWITCH_VALUE_MI6opc_lbIH1_13default_start10_8opc_load3opc,
        CODASIP_SWITCH_VALUE_MI6opc_lhIH1_13default_start10_8opc_load3opc,
        CODASIP_SWITCH_VALUE_MI6opc_lwIH1_13default_start10_8opc_load3opc,
        CODASIP_SWITCH_VALUE_MI6opc_orIH1_13default_start9_7opc_alu3opc,
        CODASIP_SWITCH_VALUE_MI6opc_sbIH1_13default_start11_9opc_store3opc,
        CODASIP_SWITCH_VALUE_MI6opc_shIH1_13default_start11_9opc_store3opc,
        CODASIP_SWITCH_VALUE_MI6opc_swIH1_13default_start11_9opc_store3opc,
        CODASIP_SWITCH_VALUE_MI7i_alu_iIH1_13default_start,
        CODASIP_SWITCH_VALUE_MI7i_shiftIH1_13default_start,
        CODASIP_SWITCH_VALUE_MI7i_storeIH1_13default_start,
        CODASIP_SWITCH_VALUE_MI7opc_addIH1_13default_start9_7opc_alu3opc,
        CODASIP_SWITCH_VALUE_MI7opc_andIH1_13default_start9_7opc_alu3opc,
        CODASIP_SWITCH_VALUE_MI7opc_beqIH1_13default_start13_10opc_branch3opc,
        CODASIP_SWITCH_VALUE_MI7opc_bgeIH1_13default_start13_10opc_branch3opc,
        CODASIP_SWITCH_VALUE_MI7opc_bltIH1_13default_start13_10opc_branch3opc,
        CODASIP_SWITCH_VALUE_MI7opc_bneIH1_13default_start13_10opc_branch3opc,
        CODASIP_SWITCH_VALUE_MI7opc_lbuIH1_13default_start10_8opc_load3opc,
        CODASIP_SWITCH_VALUE_MI7opc_lhuIH1_13default_start10_8opc_load3opc,
        CODASIP_SWITCH_VALUE_MI7opc_luiIH1_13default_start16_13opc_upper_imm3opc,
        CODASIP_SWITCH_VALUE_MI7opc_oriIH1_13default_start11_9opc_alu_i3opc,
        CODASIP_SWITCH_VALUE_MI7opc_sllIH1_13default_start9_7opc_alu3opc,
        CODASIP_SWITCH_VALUE_MI7opc_sltIH1_13default_start9_7opc_alu3opc,
        CODASIP_SWITCH_VALUE_MI7opc_sraIH1_13default_start9_7opc_alu3opc,
        CODASIP_SWITCH_VALUE_MI7opc_srlIH1_13default_start9_7opc_alu3opc,
        CODASIP_SWITCH_VALUE_MI7opc_subIH1_13default_start9_7opc_alu3opc,
        CODASIP_SWITCH_VALUE_MI7opc_xorIH1_13default_start9_7opc_alu3opc,
        CODASIP_SWITCH_VALUE_MI8i_branchIH1_13default_start,
        CODASIP_SWITCH_VALUE_MI8opc_addiIH1_13default_start11_9opc_alu_i3opc,
        CODASIP_SWITCH_VALUE_MI8opc_andiIH1_13default_start11_9opc_alu_i3opc,
        CODASIP_SWITCH_VALUE_MI8opc_bgeuIH1_13default_start13_10opc_branch3opc,
        CODASIP_SWITCH_VALUE_MI8opc_bltuIH1_13default_start13_10opc_branch3opc,
        CODASIP_SWITCH_VALUE_MI8opc_slliIH1_13default_start11_9opc_shift3opc,
        CODASIP_SWITCH_VALUE_MI8opc_sltiIH1_13default_start11_9opc_alu_i3opc,
        CODASIP_SWITCH_VALUE_MI8opc_sltuIH1_13default_start9_7opc_alu3opc,
        CODASIP_SWITCH_VALUE_MI8opc_sraiIH1_13default_start11_9opc_shift3opc,
        CODASIP_SWITCH_VALUE_MI8opc_srliIH1_13default_start11_9opc_shift3opc,
        CODASIP_SWITCH_VALUE_MI8opc_xoriIH1_13default_start11_9opc_alu_i3opc,
        CODASIP_SWITCH_VALUE_MI9i_syscallIH1_13default_start,
        CODASIP_SWITCH_VALUE_MI9opc_auipcIH1_13default_start16_13opc_upper_imm3opc,
        CODASIP_SWITCH_VALUE_MI9opc_sltiuIH1_13default_start11_9opc_alu_i3opc,
        // Bundle switch identifiers
        codasip_bundle_undef,
    }parser_switch_t;
public:
    typedef enum {
        codasip_instruction_set_undef,
        CODASIP_SWITCH_VALUE_MI13default_start,
    }instruction_set_switch_t;
private:
    uint8_t MI3valIH1_13default_start7_5shamt5shamt1_5shamt;
    uint32_t MI3valIH1_13default_start8_6simm204simm1_6simm20;
    int32_t MI3valIH1_13default_start13_10rel_addr208rel_addr1_10rel_addr20;
    int16_t MI3valIH1_13default_start18_15rel_jalr_addr128rel_addr1_15rel_jalr_addr12;
    int16_t MI3valIH1_13default_start8_6simm124simm1_6simm12;
    int16_t MI3valIH1_13default_start13_10rel_addr128rel_addr1_10rel_addr12;
    parser_switch_t codasip_switch_MI10opc_branchIH1_13default_start13_10opc_branch3opc;
    parser_switch_t codasip_switch_MI13opc_upper_immIH1_13default_start16_13opc_upper_imm3opc;
    parser_switch_t codasip_switch_MI3xprIH1_13default_start9_7xpr_all6xpr_rd;
    parser_switch_t codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1;
    parser_switch_t codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2;
    parser_switch_t codasip_switch_MI7opc_aluIH1_13default_start9_7opc_alu3opc;
    parser_switch_t codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd;
    parser_switch_t codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1;
    parser_switch_t codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2;
    parser_switch_t codasip_switch_MI8opc_loadIH1_13default_start10_8opc_load3opc;
    parser_switch_t codasip_switch_MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc;
    parser_switch_t codasip_switch_MI9opc_shiftIH1_13default_start11_9opc_shift3opc;
    parser_switch_t codasip_switch_MI9opc_storeIH1_13default_start11_9opc_store3opc;
    parser_switch_t codasip_switch_MI9riscv_isaIH1_13default_start;
    std::stack<disassembler::DsmText> m_Streams;
    codasip_address_t m_Address;
    DsmUtils* m_DsmUtils;
    parser_switch_t codasip_switch_bundle;
    instruction_set_switch_t codasip_switch_instruction_set;
public:
    /**
     * \brief Parser_MI13default_start
     */
    int Parser_MI13default_start(const uint32_t input, const codasip_address_t address, int & parsedBits);
private:
    int Parser_MI13default_start_bs_32(const uint32_t input, const codasip_address_t address, int & parsedBits);
    int Parser_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1_bc_19_18_17_16_15_bs_32(const uint32_t input);
    int Parser_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1_bc_19_18_17_16_15_bs_32(const uint32_t input);
    int Parser_MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd_bc_11_10_9_8_7_bs_32(const uint32_t input);
    int Parser_MI3xprIH1_13default_start9_7xpr_all6xpr_rd_bc_11_10_9_8_7_bs_32(const uint32_t input);
    int Parser_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2_bc_24_23_22_21_20_bs_32(const uint32_t input);
    int Parser_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2_bc_24_23_22_21_20_bs_32(const uint32_t input);
    void SwitchClean_MI13default_start();
    int Generator_MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd(char * output);
    int Generator_MI3xprIH1_13default_start9_7xpr_all6xpr_rd(char * output);
    int Generator_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1(char * output);
    int Generator_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1(char * output);
    int Generator_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2(char * output);
    int Generator_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2(char * output);
public:
    /**
     * \brief Generator_MI13default_start
     */
    int Generator_MI13default_start(char * output);
    /**
     * \brief Init
     */
    void Init(DsmUtils* dsmUtils);
    /**
     * \brief Parser
     */
    int Parser(const uint32_t input, const codasip_address_t address, int& parsedBits);
    /**
     * \brief Generator
     */
    int Generator(char* output);
    /**
     * \brief SetInstructionSet
     */
    void SetInstructionSet(const instruction_set_switch_t value);
    /**
     * \brief DisassemblerCore
     */
    DisassemblerCore();
};
FORCE_INLINE int DisassemblerCore::Parser_MI13default_start(const uint32_t input, const codasip_address_t address, int & parsedBits)
{
        m_Address = address;
        SwitchClean_MI13default_start();
        if (Parser_MI13default_start_bs_32(input, address, parsedBits) == INSTPARSER_OK) return INSTPARSER_OK;
        return INSTPARSER_INVALIDCODE;
}
/**
 * \brief Parser_MI13default_start_bs_32
 */
FORCE_INLINE int DisassemblerCore::Parser_MI13default_start_bs_32(const uint32_t input, const codasip_address_t address, int & parsedBits)
{
        if (((input & 0xffffffff) == 0x3f /*00000000000000000000000000111111*/ )) {
            codasip_switch_MI9riscv_isaIH1_13default_start = CODASIP_SWITCH_VALUE_MI6i_haltIH1_13default_start;
            
        
            goto END_OF_MI9riscv_isaIH1_13default_start;
        }
        if (((input & 0xffffffff) == 0x60005f /*00000000011000000000000001011111*/ )) {
            codasip_switch_MI9riscv_isaIH1_13default_start = CODASIP_SWITCH_VALUE_MI9i_syscallIH1_13default_start;
            
        
            goto END_OF_MI9riscv_isaIH1_13default_start;
        }
        if (((input & 0xfe00307f) == 0x1013 /*0000000XXXXXXXXXXX01XXXXX0010011*/ ) || 
                ((input & 0xfe00707f) == 0x40005013 /*0100000XXXXXXXXXX101XXXXX0010011*/ )) {
            codasip_switch_MI9riscv_isaIH1_13default_start = CODASIP_SWITCH_VALUE_MI7i_shiftIH1_13default_start;
            switch (((input & 0xfe00707f) )) {
            case ( 0x1013 /*0000000XXXXXXXXXX001XXXXX0010011*/ ):
            {
                codasip_switch_MI9opc_shiftIH1_13default_start11_9opc_shift3opc = CODASIP_SWITCH_VALUE_MI8opc_slliIH1_13default_start11_9opc_shift3opc;
            
                break;
            }
            case ( 0x5013 /*0000000XXXXXXXXXX101XXXXX0010011*/ ):
            {
                codasip_switch_MI9opc_shiftIH1_13default_start11_9opc_shift3opc = CODASIP_SWITCH_VALUE_MI8opc_srliIH1_13default_start11_9opc_shift3opc;
            
                break;
            }
            case ( 0x40005013 /*0100000XXXXXXXXXX101XXXXX0010011*/ ):
            {
                codasip_switch_MI9opc_shiftIH1_13default_start11_9opc_shift3opc = CODASIP_SWITCH_VALUE_MI8opc_sraiIH1_13default_start11_9opc_shift3opc;
            
                break;
            }
            default: 
                return INSTPARSER_INVALIDCODE;
            }
            
            MI3valIH1_13default_start7_5shamt5shamt1_5shamt = (((input & 0x1f00000) >> 20) << 0);
            
            
            if (Parser_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1_bc_19_18_17_16_15_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
            
            if (Parser_MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd_bc_11_10_9_8_7_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
            
        
            goto END_OF_MI9riscv_isaIH1_13default_start;
        }
        if (((input & 0xfe00007f) == 0x33 /*0000000XXXXXXXXXXXXXXXXXX0110011*/ ) || 
                ((input & 0xfe00707f) == 0x40000033 /*0100000XXXXXXXXXX000XXXXX0110011*/ ) || 
                ((input & 0xfe00707f) == 0x40005033 /*0100000XXXXXXXXXX101XXXXX0110011*/ )) {
            codasip_switch_MI9riscv_isaIH1_13default_start = CODASIP_SWITCH_VALUE_MI5i_aluIH1_13default_start;
            switch (((input & 0xfe00707f) )) {
            case ( 0x33 /*0000000XXXXXXXXXX000XXXXX0110011*/ ):
            {
                codasip_switch_MI7opc_aluIH1_13default_start9_7opc_alu3opc = CODASIP_SWITCH_VALUE_MI7opc_addIH1_13default_start9_7opc_alu3opc;
            
                break;
            }
            case ( 0x1033 /*0000000XXXXXXXXXX001XXXXX0110011*/ ):
            {
                codasip_switch_MI7opc_aluIH1_13default_start9_7opc_alu3opc = CODASIP_SWITCH_VALUE_MI7opc_sllIH1_13default_start9_7opc_alu3opc;
            
                break;
            }
            case ( 0x2033 /*0000000XXXXXXXXXX010XXXXX0110011*/ ):
            {
                codasip_switch_MI7opc_aluIH1_13default_start9_7opc_alu3opc = CODASIP_SWITCH_VALUE_MI7opc_sltIH1_13default_start9_7opc_alu3opc;
            
                break;
            }
            case ( 0x3033 /*0000000XXXXXXXXXX011XXXXX0110011*/ ):
            {
                codasip_switch_MI7opc_aluIH1_13default_start9_7opc_alu3opc = CODASIP_SWITCH_VALUE_MI8opc_sltuIH1_13default_start9_7opc_alu3opc;
            
                break;
            }
            case ( 0x4033 /*0000000XXXXXXXXXX100XXXXX0110011*/ ):
            {
                codasip_switch_MI7opc_aluIH1_13default_start9_7opc_alu3opc = CODASIP_SWITCH_VALUE_MI7opc_xorIH1_13default_start9_7opc_alu3opc;
            
                break;
            }
            case ( 0x5033 /*0000000XXXXXXXXXX101XXXXX0110011*/ ):
            {
                codasip_switch_MI7opc_aluIH1_13default_start9_7opc_alu3opc = CODASIP_SWITCH_VALUE_MI7opc_srlIH1_13default_start9_7opc_alu3opc;
            
                break;
            }
            case ( 0x6033 /*0000000XXXXXXXXXX110XXXXX0110011*/ ):
            {
                codasip_switch_MI7opc_aluIH1_13default_start9_7opc_alu3opc = CODASIP_SWITCH_VALUE_MI6opc_orIH1_13default_start9_7opc_alu3opc;
            
                break;
            }
            case ( 0x7033 /*0000000XXXXXXXXXX111XXXXX0110011*/ ):
            {
                codasip_switch_MI7opc_aluIH1_13default_start9_7opc_alu3opc = CODASIP_SWITCH_VALUE_MI7opc_andIH1_13default_start9_7opc_alu3opc;
            
                break;
            }
            case ( 0x40000033 /*0100000XXXXXXXXXX000XXXXX0110011*/ ):
            {
                codasip_switch_MI7opc_aluIH1_13default_start9_7opc_alu3opc = CODASIP_SWITCH_VALUE_MI7opc_subIH1_13default_start9_7opc_alu3opc;
            
                break;
            }
            case ( 0x40005033 /*0100000XXXXXXXXXX101XXXXX0110011*/ ):
            {
                codasip_switch_MI7opc_aluIH1_13default_start9_7opc_alu3opc = CODASIP_SWITCH_VALUE_MI7opc_sraIH1_13default_start9_7opc_alu3opc;
            
                break;
            }
            default: 
                return INSTPARSER_INVALIDCODE;
            }
            
            if (Parser_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2_bc_24_23_22_21_20_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
            
            if (Parser_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1_bc_19_18_17_16_15_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
            
            if (Parser_MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd_bc_11_10_9_8_7_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
            
        
            goto END_OF_MI9riscv_isaIH1_13default_start;
        }
        if (((input & 0x5f) == 0x17 /*XXXXXXXXXXXXXXXXXXXXXXXXX0X10111*/ )) {
            codasip_switch_MI9riscv_isaIH1_13default_start = CODASIP_SWITCH_VALUE_MI11i_upper_immIH1_13default_start;
            MI3valIH1_13default_start8_6simm204simm1_6simm20 = (((input & 0xfffff000) >> 12) << 0);
            
            
            if (Parser_MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd_bc_11_10_9_8_7_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
            
            switch (((input & 0x7f) )) {
            case ( 0x17 /*XXXXXXXXXXXXXXXXXXXXXXXXX0010111*/ ):
            {
                codasip_switch_MI13opc_upper_immIH1_13default_start16_13opc_upper_imm3opc = CODASIP_SWITCH_VALUE_MI9opc_auipcIH1_13default_start16_13opc_upper_imm3opc;
            
                break;
            }
            case ( 0x37 /*XXXXXXXXXXXXXXXXXXXXXXXXX0110111*/ ):
            {
                codasip_switch_MI13opc_upper_immIH1_13default_start16_13opc_upper_imm3opc = CODASIP_SWITCH_VALUE_MI7opc_luiIH1_13default_start16_13opc_upper_imm3opc;
            
                break;
            }
            default: 
                return INSTPARSER_INVALIDCODE;
            }
            
        
            goto END_OF_MI9riscv_isaIH1_13default_start;
        }
        if (((input & 0x7f) == 0x6f /*XXXXXXXXXXXXXXXXXXXXXXXXX1101111*/ )) {
            codasip_switch_MI9riscv_isaIH1_13default_start = CODASIP_SWITCH_VALUE_MI5i_jalIH1_13default_start;
            MI3valIH1_13default_start13_10rel_addr208rel_addr1_10rel_addr20 = (((input & 0x80000000) >> 31) << 19);
            MI3valIH1_13default_start13_10rel_addr208rel_addr1_10rel_addr20 |= (((input & 0xff000) >> 12) << 11);
            MI3valIH1_13default_start13_10rel_addr208rel_addr1_10rel_addr20 |= (((input & 0x100000) >> 20) << 10);
            MI3valIH1_13default_start13_10rel_addr208rel_addr1_10rel_addr20 |= (((input & 0x7fe00000) >> 21) << 0);
            MI3valIH1_13default_start13_10rel_addr208rel_addr1_10rel_addr20 = (((int32_t)((int32_t)MI3valIH1_13default_start13_10rel_addr208rel_addr1_10rel_addr20 << 12)) >> 12);
            
            
            if (Parser_MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd_bc_11_10_9_8_7_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
            
            
        
            goto END_OF_MI9riscv_isaIH1_13default_start;
        }
        if (((input & 0x707f) == 0x67 /*XXXXXXXXXXXXXXXXX000XXXXX1100111*/ )) {
            codasip_switch_MI9riscv_isaIH1_13default_start = CODASIP_SWITCH_VALUE_MI6i_jalrIH1_13default_start;
            MI3valIH1_13default_start18_15rel_jalr_addr128rel_addr1_15rel_jalr_addr12 = (((input & 0xfff00000) >> 20) << 0);
            MI3valIH1_13default_start18_15rel_jalr_addr128rel_addr1_15rel_jalr_addr12 = (((int16_t)((int16_t)MI3valIH1_13default_start18_15rel_jalr_addr128rel_addr1_15rel_jalr_addr12 << 4)) >> 4);
            
            
            if (Parser_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1_bc_19_18_17_16_15_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
            
            
            if (Parser_MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd_bc_11_10_9_8_7_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
            
        
            goto END_OF_MI9riscv_isaIH1_13default_start;
        }
        if (((input & 0x707f) == 0x2003 /*XXXXXXXXXXXXXXXXX010XXXXX0000011*/ ) || 
                ((input & 0x207f) == 0x3 /*XXXXXXXXXXXXXXXXXX0XXXXXX0000011*/ )) {
            codasip_switch_MI9riscv_isaIH1_13default_start = CODASIP_SWITCH_VALUE_MI6i_loadIH1_13default_start;
            MI3valIH1_13default_start8_6simm124simm1_6simm12 = (((input & 0xfff00000) >> 20) << 0);
            MI3valIH1_13default_start8_6simm124simm1_6simm12 = (((int16_t)((int16_t)MI3valIH1_13default_start8_6simm124simm1_6simm12 << 4)) >> 4);
            
            
            if (Parser_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1_bc_19_18_17_16_15_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
            
            switch (((input & 0x707f) )) {
            case ( 0x2003 /*XXXXXXXXXXXXXXXXX010XXXXX0000011*/ ):
            {
                codasip_switch_MI8opc_loadIH1_13default_start10_8opc_load3opc = CODASIP_SWITCH_VALUE_MI6opc_lwIH1_13default_start10_8opc_load3opc;
            
                break;
            }
            case ( 0x3 /*XXXXXXXXXXXXXXXXX000XXXXX0000011*/ ):
            {
                codasip_switch_MI8opc_loadIH1_13default_start10_8opc_load3opc = CODASIP_SWITCH_VALUE_MI6opc_lbIH1_13default_start10_8opc_load3opc;
            
                break;
            }
            case ( 0x1003 /*XXXXXXXXXXXXXXXXX001XXXXX0000011*/ ):
            {
                codasip_switch_MI8opc_loadIH1_13default_start10_8opc_load3opc = CODASIP_SWITCH_VALUE_MI6opc_lhIH1_13default_start10_8opc_load3opc;
            
                break;
            }
            case ( 0x4003 /*XXXXXXXXXXXXXXXXX100XXXXX0000011*/ ):
            {
                codasip_switch_MI8opc_loadIH1_13default_start10_8opc_load3opc = CODASIP_SWITCH_VALUE_MI7opc_lbuIH1_13default_start10_8opc_load3opc;
            
                break;
            }
            case ( 0x5003 /*XXXXXXXXXXXXXXXXX101XXXXX0000011*/ ):
            {
                codasip_switch_MI8opc_loadIH1_13default_start10_8opc_load3opc = CODASIP_SWITCH_VALUE_MI7opc_lhuIH1_13default_start10_8opc_load3opc;
            
                break;
            }
            default: 
                return INSTPARSER_INVALIDCODE;
            }
            
            if (Parser_MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd_bc_11_10_9_8_7_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
            
        
            goto END_OF_MI9riscv_isaIH1_13default_start;
        }
        if (((input & 0x307f) == 0x3013 /*XXXXXXXXXXXXXXXXXX11XXXXX0010011*/ ) || 
                ((input & 0x107f) == 0x13 /*XXXXXXXXXXXXXXXXXXX0XXXXX0010011*/ )) {
            codasip_switch_MI9riscv_isaIH1_13default_start = CODASIP_SWITCH_VALUE_MI7i_alu_iIH1_13default_start;
            MI3valIH1_13default_start8_6simm124simm1_6simm12 = (((input & 0xfff00000) >> 20) << 0);
            MI3valIH1_13default_start8_6simm124simm1_6simm12 = (((int16_t)((int16_t)MI3valIH1_13default_start8_6simm124simm1_6simm12 << 4)) >> 4);
            
            
            if (Parser_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1_bc_19_18_17_16_15_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
            
            switch (((input & 0x707f) )) {
            case ( 0x3013 /*XXXXXXXXXXXXXXXXX011XXXXX0010011*/ ):
            {
                codasip_switch_MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc = CODASIP_SWITCH_VALUE_MI9opc_sltiuIH1_13default_start11_9opc_alu_i3opc;
            
                break;
            }
            case ( 0x7013 /*XXXXXXXXXXXXXXXXX111XXXXX0010011*/ ):
            {
                codasip_switch_MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc = CODASIP_SWITCH_VALUE_MI8opc_andiIH1_13default_start11_9opc_alu_i3opc;
            
                break;
            }
            case ( 0x13 /*XXXXXXXXXXXXXXXXX000XXXXX0010011*/ ):
            {
                codasip_switch_MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc = CODASIP_SWITCH_VALUE_MI8opc_addiIH1_13default_start11_9opc_alu_i3opc;
            
                break;
            }
            case ( 0x2013 /*XXXXXXXXXXXXXXXXX010XXXXX0010011*/ ):
            {
                codasip_switch_MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc = CODASIP_SWITCH_VALUE_MI8opc_sltiIH1_13default_start11_9opc_alu_i3opc;
            
                break;
            }
            case ( 0x4013 /*XXXXXXXXXXXXXXXXX100XXXXX0010011*/ ):
            {
                codasip_switch_MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc = CODASIP_SWITCH_VALUE_MI8opc_xoriIH1_13default_start11_9opc_alu_i3opc;
            
                break;
            }
            case ( 0x6013 /*XXXXXXXXXXXXXXXXX110XXXXX0010011*/ ):
            {
                codasip_switch_MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc = CODASIP_SWITCH_VALUE_MI7opc_oriIH1_13default_start11_9opc_alu_i3opc;
            
                break;
            }
            default: 
                return INSTPARSER_INVALIDCODE;
            }
            
            if (Parser_MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd_bc_11_10_9_8_7_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
            
        
            goto END_OF_MI9riscv_isaIH1_13default_start;
        }
        if (((input & 0x607f) == 0x23 /*XXXXXXXXXXXXXXXXX00XXXXXX0100011*/ ) || 
                ((input & 0x707f) == 0x2023 /*XXXXXXXXXXXXXXXXX010XXXXX0100011*/ )) {
            codasip_switch_MI9riscv_isaIH1_13default_start = CODASIP_SWITCH_VALUE_MI7i_storeIH1_13default_start;
            MI3valIH1_13default_start8_6simm124simm1_6simm12 = (((input & 0xfe000000) >> 25) << 5);
            MI3valIH1_13default_start8_6simm124simm1_6simm12 |= (((input & 0xf80) >> 7) << 0);
            MI3valIH1_13default_start8_6simm124simm1_6simm12 = (((int16_t)((int16_t)MI3valIH1_13default_start8_6simm124simm1_6simm12 << 4)) >> 4);
            
            
            if (Parser_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2_bc_24_23_22_21_20_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
            
            if (Parser_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1_bc_19_18_17_16_15_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
            
            switch (((input & 0x707f) )) {
            case ( 0x23 /*XXXXXXXXXXXXXXXXX000XXXXX0100011*/ ):
            {
                codasip_switch_MI9opc_storeIH1_13default_start11_9opc_store3opc = CODASIP_SWITCH_VALUE_MI6opc_sbIH1_13default_start11_9opc_store3opc;
            
                break;
            }
            case ( 0x1023 /*XXXXXXXXXXXXXXXXX001XXXXX0100011*/ ):
            {
                codasip_switch_MI9opc_storeIH1_13default_start11_9opc_store3opc = CODASIP_SWITCH_VALUE_MI6opc_shIH1_13default_start11_9opc_store3opc;
            
                break;
            }
            case ( 0x2023 /*XXXXXXXXXXXXXXXXX010XXXXX0100011*/ ):
            {
                codasip_switch_MI9opc_storeIH1_13default_start11_9opc_store3opc = CODASIP_SWITCH_VALUE_MI6opc_swIH1_13default_start11_9opc_store3opc;
            
                break;
            }
            default: 
                return INSTPARSER_INVALIDCODE;
            }
            
        
            goto END_OF_MI9riscv_isaIH1_13default_start;
        }
        if (((input & 0x607f) == 0x6063 /*XXXXXXXXXXXXXXXXX11XXXXXX1100011*/ ) || 
                ((input & 0x207f) == 0x63 /*XXXXXXXXXXXXXXXXXX0XXXXXX1100011*/ )) {
            codasip_switch_MI9riscv_isaIH1_13default_start = CODASIP_SWITCH_VALUE_MI8i_branchIH1_13default_start;
            MI3valIH1_13default_start13_10rel_addr128rel_addr1_10rel_addr12 = (((input & 0x80000000) >> 31) << 11);
            MI3valIH1_13default_start13_10rel_addr128rel_addr1_10rel_addr12 |= (((input & 0x80) >> 7) << 10);
            MI3valIH1_13default_start13_10rel_addr128rel_addr1_10rel_addr12 |= (((input & 0x7e000000) >> 25) << 4);
            MI3valIH1_13default_start13_10rel_addr128rel_addr1_10rel_addr12 |= (((input & 0xf00) >> 8) << 0);
            MI3valIH1_13default_start13_10rel_addr128rel_addr1_10rel_addr12 = (((int16_t)((int16_t)MI3valIH1_13default_start13_10rel_addr128rel_addr1_10rel_addr12 << 4)) >> 4);
            
            
            if (Parser_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2_bc_24_23_22_21_20_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
            
            if (Parser_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1_bc_19_18_17_16_15_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
            
            switch (((input & 0x707f) )) {
            case ( 0x6063 /*XXXXXXXXXXXXXXXXX110XXXXX1100011*/ ):
            {
                codasip_switch_MI10opc_branchIH1_13default_start13_10opc_branch3opc = CODASIP_SWITCH_VALUE_MI8opc_bltuIH1_13default_start13_10opc_branch3opc;
            
                break;
            }
            case ( 0x7063 /*XXXXXXXXXXXXXXXXX111XXXXX1100011*/ ):
            {
                codasip_switch_MI10opc_branchIH1_13default_start13_10opc_branch3opc = CODASIP_SWITCH_VALUE_MI8opc_bgeuIH1_13default_start13_10opc_branch3opc;
            
                break;
            }
            case ( 0x63 /*XXXXXXXXXXXXXXXXX000XXXXX1100011*/ ):
            {
                codasip_switch_MI10opc_branchIH1_13default_start13_10opc_branch3opc = CODASIP_SWITCH_VALUE_MI7opc_beqIH1_13default_start13_10opc_branch3opc;
            
                break;
            }
            case ( 0x1063 /*XXXXXXXXXXXXXXXXX001XXXXX1100011*/ ):
            {
                codasip_switch_MI10opc_branchIH1_13default_start13_10opc_branch3opc = CODASIP_SWITCH_VALUE_MI7opc_bneIH1_13default_start13_10opc_branch3opc;
            
                break;
            }
            case ( 0x4063 /*XXXXXXXXXXXXXXXXX100XXXXX1100011*/ ):
            {
                codasip_switch_MI10opc_branchIH1_13default_start13_10opc_branch3opc = CODASIP_SWITCH_VALUE_MI7opc_bltIH1_13default_start13_10opc_branch3opc;
            
                break;
            }
            case ( 0x5063 /*XXXXXXXXXXXXXXXXX101XXXXX1100011*/ ):
            {
                codasip_switch_MI10opc_branchIH1_13default_start13_10opc_branch3opc = CODASIP_SWITCH_VALUE_MI7opc_bgeIH1_13default_start13_10opc_branch3opc;
            
                break;
            }
            default: 
                return INSTPARSER_INVALIDCODE;
            }
            
        
            goto END_OF_MI9riscv_isaIH1_13default_start;
        }
        return INSTPARSER_INVALIDCODE;
        // Collecting label
        END_OF_MI9riscv_isaIH1_13default_start:
        parsedBits = 32;

        return INSTPARSER_OK;
}
/**
 * \brief SwitchClean_MI13default_start
 */
FORCE_INLINE void DisassemblerCore::SwitchClean_MI13default_start()
{
    codasip_switch_MI10opc_branchIH1_13default_start13_10opc_branch3opc = CODASIP_SWITCH_UNDEF_MI13default_startIH1_13default_start;
    codasip_switch_MI13opc_upper_immIH1_13default_start16_13opc_upper_imm3opc = CODASIP_SWITCH_UNDEF_MI13default_startIH1_13default_start;
    codasip_switch_MI3xprIH1_13default_start9_7xpr_all6xpr_rd = CODASIP_SWITCH_UNDEF_MI13default_startIH1_13default_start;
    codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1 = CODASIP_SWITCH_UNDEF_MI13default_startIH1_13default_start;
    codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2 = CODASIP_SWITCH_UNDEF_MI13default_startIH1_13default_start;
    codasip_switch_MI7opc_aluIH1_13default_start9_7opc_alu3opc = CODASIP_SWITCH_UNDEF_MI13default_startIH1_13default_start;
    codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = CODASIP_SWITCH_UNDEF_MI13default_startIH1_13default_start;
    codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = CODASIP_SWITCH_UNDEF_MI13default_startIH1_13default_start;
    codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = CODASIP_SWITCH_UNDEF_MI13default_startIH1_13default_start;
    codasip_switch_MI8opc_loadIH1_13default_start10_8opc_load3opc = CODASIP_SWITCH_UNDEF_MI13default_startIH1_13default_start;
    codasip_switch_MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc = CODASIP_SWITCH_UNDEF_MI13default_startIH1_13default_start;
    codasip_switch_MI9opc_shiftIH1_13default_start11_9opc_shift3opc = CODASIP_SWITCH_UNDEF_MI13default_startIH1_13default_start;
    codasip_switch_MI9opc_storeIH1_13default_start11_9opc_store3opc = CODASIP_SWITCH_UNDEF_MI13default_startIH1_13default_start;
    codasip_switch_MI9riscv_isaIH1_13default_start = CODASIP_SWITCH_UNDEF_MI13default_startIH1_13default_start;
}
/**
 * \brief Generator_MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd
 */
FORCE_INLINE int DisassemblerCore::Generator_MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd(char * output)
{
    switch (codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd) {
        case CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all6xpr_rd:
        m_Streams.top() += "x0";
        break;
        case CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all6xpr_rd:
        Generator_MI3xprIH1_13default_start9_7xpr_all6xpr_rd(output);
        break;
        default:
            return INSTGENERATOR_FAIL;
        }
    return INSTGENERATOR_OK;
}
/**
 * \brief Generator_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1
 */
FORCE_INLINE int DisassemblerCore::Generator_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1(char * output)
{
    switch (codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1) {
        case CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all7xpr_rs1:
        m_Streams.top() += "x0";
        break;
        case CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1:
        Generator_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1(output);
        break;
        default:
            return INSTGENERATOR_FAIL;
        }
    return INSTGENERATOR_OK;
}
/**
 * \brief Generator_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2
 */
FORCE_INLINE int DisassemblerCore::Generator_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2(char * output)
{
    switch (codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2) {
        case CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all7xpr_rs2:
        m_Streams.top() += "x0";
        break;
        case CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2:
        Generator_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2(output);
        break;
        default:
            return INSTGENERATOR_FAIL;
        }
    return INSTGENERATOR_OK;
}
FORCE_INLINE void DisassemblerCore::Init(DsmUtils* dsmUtils)
{
    m_DsmUtils = dsmUtils;
}
FORCE_INLINE int DisassemblerCore::Parser(const uint32_t input, const codasip_address_t address, int& parsedBits)
{
    switch (codasip_switch_instruction_set)
    {
        case CODASIP_SWITCH_VALUE_MI13default_start:
        {
            return Parser_MI13default_start(input >> 0, address, parsedBits);
        }
        default:
        {
            return INSTPARSER_INVALIDCODE;
        }
    }
}
FORCE_INLINE int DisassemblerCore::Generator(char* output)
{
    switch (codasip_switch_instruction_set)
    {
        case CODASIP_SWITCH_VALUE_MI13default_start:
        {
            return Generator_MI13default_start(output);
        }
        default:
        {
            return INSTGENERATOR_FAIL;
        }
    }
}
FORCE_INLINE void DisassemblerCore::SetInstructionSet(const instruction_set_switch_t value)
{
    codasip_switch_instruction_set = value;
}
} // namespace MI7RISC_V5
} // namespace disassembler
} // namespace codasip

#endif // CODASIP_DISASSEMBLER_MI7RISC_V5_DISASSEMBLERCORE_1_H_
