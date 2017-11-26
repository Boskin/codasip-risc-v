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
 * \author  Codasip (c) source generator
 * \version 6.8.2-1.win.7.EVALUATION
 */
#include "codasip_profiler_MI7RISC_V5_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw.h"

namespace codasip {
namespace profiler {
namespace MI7RISC_V5 {

/**
 * \brief Parser_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw_bs_7
 */
int MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw::Parser_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw_bs_7(const uint32_t input)
{
        if (((input & 0x7f) == 0x3f /*0111111*/ )) {
            codasip_switch_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw = CODASIP_SWITCH_VALUE_MI9i_hw_haltIH4_2id2id8_6isa_hw6isa_hw;
            
        
            goto END_OF_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw;
        }
        if (((input & 0x5f) == 0x17 /*0X10111*/ )) {
            codasip_switch_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw = CODASIP_SWITCH_VALUE_MI14i_hw_upper_immIH4_2id2id8_6isa_hw6isa_hw;
            switch (((input & 0x7f) )) {
            case ( 0x17 /*0010111*/ ):
            {
                codasip_switch_MI13opc_upper_immIH4_2id2id8_6isa_hw6isa_hw16_13opc_upper_imm3opc = CODASIP_SWITCH_VALUE_MI9opc_auipcIH4_2id2id8_6isa_hw6isa_hw16_13opc_upper_imm3opc;
            
                break;
            }
            case ( 0x37 /*0110111*/ ):
            {
                codasip_switch_MI13opc_upper_immIH4_2id2id8_6isa_hw6isa_hw16_13opc_upper_imm3opc = CODASIP_SWITCH_VALUE_MI7opc_luiIH4_2id2id8_6isa_hw6isa_hw16_13opc_upper_imm3opc;
            
                break;
            }
            default: 
                return INSTPARSER_INVALIDCODE;
            }
            
        
            goto END_OF_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw;
        }
        if (((input & 0x7f) == 0x5f /*1011111*/ )) {
            codasip_switch_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw = CODASIP_SWITCH_VALUE_MI12i_hw_syscallIH4_2id2id8_6isa_hw6isa_hw;
            
        
            goto END_OF_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw;
        }
        if (((input & 0x7f) == 0x6f /*1101111*/ )) {
            codasip_switch_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw = CODASIP_SWITCH_VALUE_MI8i_hw_jalIH4_2id2id8_6isa_hw6isa_hw;
            
        
            goto END_OF_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw;
        }
        return INSTPARSER_INVALIDCODE;
        // Collecting label
        END_OF_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw:
        return INSTPARSER_OK;
}
/**
 * \brief Parser_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw_bs_10
 */
int MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw::Parser_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw_bs_10(const uint32_t input)
{
        if (((input & 0x3ff) == 0x67 /*0001100111*/ )) {
            codasip_switch_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw = CODASIP_SWITCH_VALUE_MI9i_hw_jalrIH4_2id2id8_6isa_hw6isa_hw;
            
        
            goto END_OF_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw;
        }
        if (((input & 0x37f) == 0x23 /*00X0100011*/ ) || 
                ((input & 0x3ff) == 0x123 /*0100100011*/ )) {
            codasip_switch_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw = CODASIP_SWITCH_VALUE_MI10i_hw_storeIH4_2id2id8_6isa_hw6isa_hw;
            switch (((input & 0x3ff) )) {
            case ( 0x23 /*0000100011*/ ):
            {
                codasip_switch_MI9opc_storeIH4_2id2id8_6isa_hw6isa_hw11_9opc_store3opc = CODASIP_SWITCH_VALUE_MI6opc_sbIH4_2id2id8_6isa_hw6isa_hw11_9opc_store3opc;
            
                break;
            }
            case ( 0xa3 /*0010100011*/ ):
            {
                codasip_switch_MI9opc_storeIH4_2id2id8_6isa_hw6isa_hw11_9opc_store3opc = CODASIP_SWITCH_VALUE_MI6opc_shIH4_2id2id8_6isa_hw6isa_hw11_9opc_store3opc;
            
                break;
            }
            case ( 0x123 /*0100100011*/ ):
            {
                codasip_switch_MI9opc_storeIH4_2id2id8_6isa_hw6isa_hw11_9opc_store3opc = CODASIP_SWITCH_VALUE_MI6opc_swIH4_2id2id8_6isa_hw6isa_hw11_9opc_store3opc;
            
                break;
            }
            default: 
                return INSTPARSER_INVALIDCODE;
            }
            
        
            goto END_OF_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw;
        }
        if (((input & 0x3ff) == 0x103 /*0100000011*/ ) || 
                ((input & 0x17f) == 0x3 /*X0X0000011*/ )) {
            codasip_switch_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw = CODASIP_SWITCH_VALUE_MI9i_hw_loadIH4_2id2id8_6isa_hw6isa_hw;
            switch (((input & 0x3ff) )) {
            case ( 0x103 /*0100000011*/ ):
            {
                codasip_switch_MI8opc_loadIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc = CODASIP_SWITCH_VALUE_MI6opc_lwIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc;
            
                break;
            }
            case ( 0x3 /*0000000011*/ ):
            {
                codasip_switch_MI8opc_loadIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc = CODASIP_SWITCH_VALUE_MI6opc_lbIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc;
            
                break;
            }
            case ( 0x83 /*0010000011*/ ):
            {
                codasip_switch_MI8opc_loadIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc = CODASIP_SWITCH_VALUE_MI6opc_lhIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc;
            
                break;
            }
            case ( 0x203 /*1000000011*/ ):
            {
                codasip_switch_MI8opc_loadIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc = CODASIP_SWITCH_VALUE_MI7opc_lbuIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc;
            
                break;
            }
            case ( 0x283 /*1010000011*/ ):
            {
                codasip_switch_MI8opc_loadIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc = CODASIP_SWITCH_VALUE_MI7opc_lhuIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc;
            
                break;
            }
            default: 
                return INSTPARSER_INVALIDCODE;
            }
            
        
            goto END_OF_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw;
        }
        if (((input & 0x37f) == 0x363 /*11X1100011*/ ) || 
                ((input & 0x17f) == 0x63 /*X0X1100011*/ )) {
            codasip_switch_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw = CODASIP_SWITCH_VALUE_MI11i_hw_branchIH4_2id2id8_6isa_hw6isa_hw;
            switch (((input & 0x3ff) )) {
            case ( 0x363 /*1101100011*/ ):
            {
                codasip_switch_MI10opc_branchIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc = CODASIP_SWITCH_VALUE_MI8opc_bltuIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc;
            
                break;
            }
            case ( 0x3e3 /*1111100011*/ ):
            {
                codasip_switch_MI10opc_branchIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc = CODASIP_SWITCH_VALUE_MI8opc_bgeuIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc;
            
                break;
            }
            case ( 0x63 /*0001100011*/ ):
            {
                codasip_switch_MI10opc_branchIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc = CODASIP_SWITCH_VALUE_MI7opc_beqIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc;
            
                break;
            }
            case ( 0xe3 /*0011100011*/ ):
            {
                codasip_switch_MI10opc_branchIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc = CODASIP_SWITCH_VALUE_MI7opc_bneIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc;
            
                break;
            }
            case ( 0x263 /*1001100011*/ ):
            {
                codasip_switch_MI10opc_branchIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc = CODASIP_SWITCH_VALUE_MI7opc_bltIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc;
            
                break;
            }
            case ( 0x2e3 /*1011100011*/ ):
            {
                codasip_switch_MI10opc_branchIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc = CODASIP_SWITCH_VALUE_MI7opc_bgeIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc;
            
                break;
            }
            default: 
                return INSTPARSER_INVALIDCODE;
            }
            
        
            goto END_OF_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw;
        }
        if (((input & 0x1ff) == 0x193 /*X110010011*/ ) || 
                ((input & 0xff) == 0x13 /*XX00010011*/ )) {
            codasip_switch_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw = CODASIP_SWITCH_VALUE_MI10i_hw_alu_iIH4_2id2id8_6isa_hw6isa_hw;
            switch (((input & 0x3ff) )) {
            case ( 0x193 /*0110010011*/ ):
            {
                codasip_switch_MI9opc_alu_iIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc = CODASIP_SWITCH_VALUE_MI9opc_sltiuIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc;
            
                break;
            }
            case ( 0x393 /*1110010011*/ ):
            {
                codasip_switch_MI9opc_alu_iIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc = CODASIP_SWITCH_VALUE_MI8opc_andiIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc;
            
                break;
            }
            case ( 0x13 /*0000010011*/ ):
            {
                codasip_switch_MI9opc_alu_iIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc = CODASIP_SWITCH_VALUE_MI8opc_addiIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc;
            
                break;
            }
            case ( 0x113 /*0100010011*/ ):
            {
                codasip_switch_MI9opc_alu_iIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc = CODASIP_SWITCH_VALUE_MI8opc_sltiIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc;
            
                break;
            }
            case ( 0x213 /*1000010011*/ ):
            {
                codasip_switch_MI9opc_alu_iIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc = CODASIP_SWITCH_VALUE_MI8opc_xoriIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc;
            
                break;
            }
            case ( 0x313 /*1100010011*/ ):
            {
                codasip_switch_MI9opc_alu_iIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc = CODASIP_SWITCH_VALUE_MI7opc_oriIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc;
            
                break;
            }
            default: 
                return INSTPARSER_INVALIDCODE;
            }
            
        
            goto END_OF_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw;
        }
        return INSTPARSER_INVALIDCODE;
        // Collecting label
        END_OF_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw:
        return INSTPARSER_OK;
}
/**
 * \brief Parser_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw_bs_17
 */
int MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw::Parser_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw_bs_17(const uint32_t input)
{
        if (((input & 0x1fdff) == 0x93 /*0000000X010010011*/ ) || 
                ((input & 0x1ffff) == 0x8293 /*01000001010010011*/ )) {
            codasip_switch_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw = CODASIP_SWITCH_VALUE_MI10i_hw_shiftIH4_2id2id8_6isa_hw6isa_hw;
            switch (((input & 0x1ffff) )) {
            case ( 0x93 /*00000000010010011*/ ):
            {
                codasip_switch_MI9opc_shiftIH4_2id2id8_6isa_hw6isa_hw11_9opc_shift3opc = CODASIP_SWITCH_VALUE_MI8opc_slliIH4_2id2id8_6isa_hw6isa_hw11_9opc_shift3opc;
            
                break;
            }
            case ( 0x293 /*00000001010010011*/ ):
            {
                codasip_switch_MI9opc_shiftIH4_2id2id8_6isa_hw6isa_hw11_9opc_shift3opc = CODASIP_SWITCH_VALUE_MI8opc_srliIH4_2id2id8_6isa_hw6isa_hw11_9opc_shift3opc;
            
                break;
            }
            case ( 0x8293 /*01000001010010011*/ ):
            {
                codasip_switch_MI9opc_shiftIH4_2id2id8_6isa_hw6isa_hw11_9opc_shift3opc = CODASIP_SWITCH_VALUE_MI8opc_sraiIH4_2id2id8_6isa_hw6isa_hw11_9opc_shift3opc;
            
                break;
            }
            default: 
                return INSTPARSER_INVALIDCODE;
            }
            
        
            goto END_OF_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw;
        }
        if (((input & 0x1fc7f) == 0x33 /*0000000XXX0110011*/ ) || 
                ((input & 0x1ffff) == 0x8033 /*01000000000110011*/ ) || 
                ((input & 0x1ffff) == 0x82b3 /*01000001010110011*/ )) {
            codasip_switch_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw = CODASIP_SWITCH_VALUE_MI8i_hw_aluIH4_2id2id8_6isa_hw6isa_hw;
            switch (((input & 0x1ffff) )) {
            case ( 0x33 /*00000000000110011*/ ):
            {
                codasip_switch_MI7opc_aluIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc = CODASIP_SWITCH_VALUE_MI7opc_addIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc;
            
                break;
            }
            case ( 0xb3 /*00000000010110011*/ ):
            {
                codasip_switch_MI7opc_aluIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc = CODASIP_SWITCH_VALUE_MI7opc_sllIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc;
            
                break;
            }
            case ( 0x133 /*00000000100110011*/ ):
            {
                codasip_switch_MI7opc_aluIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc = CODASIP_SWITCH_VALUE_MI7opc_sltIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc;
            
                break;
            }
            case ( 0x1b3 /*00000000110110011*/ ):
            {
                codasip_switch_MI7opc_aluIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc = CODASIP_SWITCH_VALUE_MI8opc_sltuIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc;
            
                break;
            }
            case ( 0x233 /*00000001000110011*/ ):
            {
                codasip_switch_MI7opc_aluIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc = CODASIP_SWITCH_VALUE_MI7opc_xorIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc;
            
                break;
            }
            case ( 0x2b3 /*00000001010110011*/ ):
            {
                codasip_switch_MI7opc_aluIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc = CODASIP_SWITCH_VALUE_MI7opc_srlIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc;
            
                break;
            }
            case ( 0x333 /*00000001100110011*/ ):
            {
                codasip_switch_MI7opc_aluIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc = CODASIP_SWITCH_VALUE_MI6opc_orIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc;
            
                break;
            }
            case ( 0x3b3 /*00000001110110011*/ ):
            {
                codasip_switch_MI7opc_aluIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc = CODASIP_SWITCH_VALUE_MI7opc_andIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc;
            
                break;
            }
            case ( 0x8033 /*01000000000110011*/ ):
            {
                codasip_switch_MI7opc_aluIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc = CODASIP_SWITCH_VALUE_MI7opc_subIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc;
            
                break;
            }
            case ( 0x82b3 /*01000001010110011*/ ):
            {
                codasip_switch_MI7opc_aluIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc = CODASIP_SWITCH_VALUE_MI7opc_sraIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc;
            
                break;
            }
            default: 
                return INSTPARSER_INVALIDCODE;
            }
            
        
            goto END_OF_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw;
        }
        return INSTPARSER_INVALIDCODE;
        // Collecting label
        END_OF_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw:
        return INSTPARSER_OK;
}
/**
 * \brief Generator_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw
 */
int MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw::Generator_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw(InstructionWithOperands& output, const bool decodeOperands)
{
    output.Clear();
    m_Streams = std::stack<disassembler::DsmText>();
    m_Streams.push(disassembler::DsmText());
    switch (codasip_switch_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw) {
        case CODASIP_SWITCH_VALUE_MI9i_hw_haltIH4_2id2id8_6isa_hw6isa_hw:
        m_Streams.top() += "halt";
        break;
        case CODASIP_SWITCH_VALUE_MI12i_hw_syscallIH4_2id2id8_6isa_hw6isa_hw:
        m_Streams.top() += "syscall";
        break;
        case CODASIP_SWITCH_VALUE_MI8i_hw_aluIH4_2id2id8_6isa_hw6isa_hw:
        switch (codasip_switch_MI7opc_aluIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc) {
            case CODASIP_SWITCH_VALUE_MI7opc_addIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc:
            m_Streams.top() += "add";
            break;
            case CODASIP_SWITCH_VALUE_MI7opc_sltIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc:
            m_Streams.top() += "slt";
            break;
            case CODASIP_SWITCH_VALUE_MI8opc_sltuIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc:
            m_Streams.top() += "sltu";
            break;
            case CODASIP_SWITCH_VALUE_MI7opc_andIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc:
            m_Streams.top() += "and";
            break;
            case CODASIP_SWITCH_VALUE_MI6opc_orIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc:
            m_Streams.top() += "or";
            break;
            case CODASIP_SWITCH_VALUE_MI7opc_xorIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc:
            m_Streams.top() += "xor";
            break;
            case CODASIP_SWITCH_VALUE_MI7opc_sllIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc:
            m_Streams.top() += "sll";
            break;
            case CODASIP_SWITCH_VALUE_MI7opc_srlIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc:
            m_Streams.top() += "srl";
            break;
            case CODASIP_SWITCH_VALUE_MI7opc_subIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc:
            m_Streams.top() += "sub";
            break;
            case CODASIP_SWITCH_VALUE_MI7opc_sraIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc:
            m_Streams.top() += "sra";
            break;
            default:
                return INSTGENERATOR_FAIL;
            }
        break;
        case CODASIP_SWITCH_VALUE_MI10i_hw_alu_iIH4_2id2id8_6isa_hw6isa_hw:
        switch (codasip_switch_MI9opc_alu_iIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc) {
            case CODASIP_SWITCH_VALUE_MI8opc_addiIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc:
            m_Streams.top() += "addi";
            break;
            case CODASIP_SWITCH_VALUE_MI8opc_sltiIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc:
            m_Streams.top() += "slti";
            break;
            case CODASIP_SWITCH_VALUE_MI9opc_sltiuIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc:
            m_Streams.top() += "sltiu";
            break;
            case CODASIP_SWITCH_VALUE_MI8opc_andiIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc:
            m_Streams.top() += "andi";
            break;
            case CODASIP_SWITCH_VALUE_MI7opc_oriIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc:
            m_Streams.top() += "ori";
            break;
            case CODASIP_SWITCH_VALUE_MI8opc_xoriIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc:
            m_Streams.top() += "xori";
            break;
            default:
                return INSTGENERATOR_FAIL;
            }
        break;
        case CODASIP_SWITCH_VALUE_MI10i_hw_shiftIH4_2id2id8_6isa_hw6isa_hw:
        switch (codasip_switch_MI9opc_shiftIH4_2id2id8_6isa_hw6isa_hw11_9opc_shift3opc) {
            case CODASIP_SWITCH_VALUE_MI8opc_slliIH4_2id2id8_6isa_hw6isa_hw11_9opc_shift3opc:
            m_Streams.top() += "slli";
            break;
            case CODASIP_SWITCH_VALUE_MI8opc_srliIH4_2id2id8_6isa_hw6isa_hw11_9opc_shift3opc:
            m_Streams.top() += "srli";
            break;
            case CODASIP_SWITCH_VALUE_MI8opc_sraiIH4_2id2id8_6isa_hw6isa_hw11_9opc_shift3opc:
            m_Streams.top() += "srai";
            break;
            default:
                return INSTGENERATOR_FAIL;
            }
        break;
        case CODASIP_SWITCH_VALUE_MI11i_hw_branchIH4_2id2id8_6isa_hw6isa_hw:
        switch (codasip_switch_MI10opc_branchIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc) {
            case CODASIP_SWITCH_VALUE_MI7opc_beqIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc:
            m_Streams.top() += "beq";
            break;
            case CODASIP_SWITCH_VALUE_MI7opc_bneIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc:
            m_Streams.top() += "bne";
            break;
            case CODASIP_SWITCH_VALUE_MI7opc_bltIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc:
            m_Streams.top() += "blt";
            break;
            case CODASIP_SWITCH_VALUE_MI8opc_bltuIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc:
            m_Streams.top() += "bltu";
            break;
            case CODASIP_SWITCH_VALUE_MI7opc_bgeIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc:
            m_Streams.top() += "bge";
            break;
            case CODASIP_SWITCH_VALUE_MI8opc_bgeuIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc:
            m_Streams.top() += "bgeu";
            break;
            default:
                return INSTGENERATOR_FAIL;
            }
        break;
        case CODASIP_SWITCH_VALUE_MI8i_hw_jalIH4_2id2id8_6isa_hw6isa_hw:
        m_Streams.top() += "jal";
        break;
        case CODASIP_SWITCH_VALUE_MI9i_hw_jalrIH4_2id2id8_6isa_hw6isa_hw:
        m_Streams.top() += "jalr";
        break;
        case CODASIP_SWITCH_VALUE_MI9i_hw_loadIH4_2id2id8_6isa_hw6isa_hw:
        switch (codasip_switch_MI8opc_loadIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc) {
            case CODASIP_SWITCH_VALUE_MI6opc_lbIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc:
            m_Streams.top() += "lb";
            break;
            case CODASIP_SWITCH_VALUE_MI6opc_lhIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc:
            m_Streams.top() += "lh";
            break;
            case CODASIP_SWITCH_VALUE_MI6opc_lwIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc:
            m_Streams.top() += "lw";
            break;
            case CODASIP_SWITCH_VALUE_MI7opc_lbuIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc:
            m_Streams.top() += "lbu";
            break;
            case CODASIP_SWITCH_VALUE_MI7opc_lhuIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc:
            m_Streams.top() += "lhu";
            break;
            default:
                return INSTGENERATOR_FAIL;
            }
        break;
        case CODASIP_SWITCH_VALUE_MI10i_hw_storeIH4_2id2id8_6isa_hw6isa_hw:
        switch (codasip_switch_MI9opc_storeIH4_2id2id8_6isa_hw6isa_hw11_9opc_store3opc) {
            case CODASIP_SWITCH_VALUE_MI6opc_sbIH4_2id2id8_6isa_hw6isa_hw11_9opc_store3opc:
            m_Streams.top() += "sb";
            break;
            case CODASIP_SWITCH_VALUE_MI6opc_shIH4_2id2id8_6isa_hw6isa_hw11_9opc_store3opc:
            m_Streams.top() += "sh";
            break;
            case CODASIP_SWITCH_VALUE_MI6opc_swIH4_2id2id8_6isa_hw6isa_hw11_9opc_store3opc:
            m_Streams.top() += "sw";
            break;
            default:
                return INSTGENERATOR_FAIL;
            }
        break;
        case CODASIP_SWITCH_VALUE_MI14i_hw_upper_immIH4_2id2id8_6isa_hw6isa_hw:
        switch (codasip_switch_MI13opc_upper_immIH4_2id2id8_6isa_hw6isa_hw16_13opc_upper_imm3opc) {
            case CODASIP_SWITCH_VALUE_MI7opc_luiIH4_2id2id8_6isa_hw6isa_hw16_13opc_upper_imm3opc:
            m_Streams.top() += "lui";
            break;
            case CODASIP_SWITCH_VALUE_MI9opc_auipcIH4_2id2id8_6isa_hw6isa_hw16_13opc_upper_imm3opc:
            m_Streams.top() += "auipc";
            break;
            default:
                return INSTGENERATOR_FAIL;
            }
        break;
        default:
            return INSTGENERATOR_FAIL;
        }
    output.SetInstruction(m_Streams.top().ToString());
    return INSTGENERATOR_OK;
}
MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw::MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw()
 :  codasip_switch_MI10opc_branchIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc(CODASIP_SWITCH_UNDEF_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw),
    codasip_switch_MI13opc_upper_immIH4_2id2id8_6isa_hw6isa_hw16_13opc_upper_imm3opc(CODASIP_SWITCH_UNDEF_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw),
    codasip_switch_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw(CODASIP_SWITCH_UNDEF_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw),
    codasip_switch_MI7opc_aluIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc(CODASIP_SWITCH_UNDEF_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw),
    codasip_switch_MI8opc_loadIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc(CODASIP_SWITCH_UNDEF_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw),
    codasip_switch_MI9opc_alu_iIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc(CODASIP_SWITCH_UNDEF_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw),
    codasip_switch_MI9opc_shiftIH4_2id2id8_6isa_hw6isa_hw11_9opc_shift3opc(CODASIP_SWITCH_UNDEF_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw),
    codasip_switch_MI9opc_storeIH4_2id2id8_6isa_hw6isa_hw11_9opc_store3opc(CODASIP_SWITCH_UNDEF_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw),
    m_Address(0),
    idecstate(0)
{
    m_Instructions.insert("halt");
    m_Instructions.insert("syscall");
    m_Instructions.insert("add");
    m_Instructions.insert("slt");
    m_Instructions.insert("sltu");
    m_Instructions.insert("and");
    m_Instructions.insert("or");
    m_Instructions.insert("xor");
    m_Instructions.insert("sll");
    m_Instructions.insert("srl");
    m_Instructions.insert("sub");
    m_Instructions.insert("sra");
    m_Instructions.insert("addi");
    m_Instructions.insert("slti");
    m_Instructions.insert("sltiu");
    m_Instructions.insert("andi");
    m_Instructions.insert("ori");
    m_Instructions.insert("xori");
    m_Instructions.insert("slli");
    m_Instructions.insert("srli");
    m_Instructions.insert("srai");
    m_Instructions.insert("beq");
    m_Instructions.insert("bne");
    m_Instructions.insert("blt");
    m_Instructions.insert("bltu");
    m_Instructions.insert("bge");
    m_Instructions.insert("bgeu");
    m_Instructions.insert("jal");
    m_Instructions.insert("jalr");
    m_Instructions.insert("lb");
    m_Instructions.insert("lh");
    m_Instructions.insert("lw");
    m_Instructions.insert("lbu");
    m_Instructions.insert("lhu");
    m_Instructions.insert("sb");
    m_Instructions.insert("sh");
    m_Instructions.insert("sw");
    m_Instructions.insert("lui");
    m_Instructions.insert("auipc");
}
} // namespace MI7RISC_V5
} // namespace profiler
} // namespace codasip
