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
 * \author  Codasip (c) disassembler generator
 * \version 6.8.2-1.win.7.EVALUATION
 * \brief   Source files for disassembler
 * \project MI7RISC_V5
 */
#include "codasip_disassembler_MI7RISC_V5_DisassemblerCore.h"

#include "disassembler.h"
#include <string.h>

namespace codasip {
namespace disassembler {
namespace MI7RISC_V5 {

/**
 * \brief Parser_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1_bc_19_18_17_16_15_bs_32
 */
int DisassemblerCore::Parser_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1_bc_19_18_17_16_15_bs_32(const uint32_t input)
{
        if (((input & 0xf8000) == 0x0 /*XXXXXXXXXXXX00000*/ )) {
            codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all7xpr_rs1;
        
            goto END_OF_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1;
        }
        if (((input & 0xf8000) == 0x8000 /*XXXXXXXXXXXX00001*/ ) || 
                ((input & 0xf0000) == 0x10000 /*XXXXXXXXXXXX0001X*/ ) || 
                ((input & 0xe0000) == 0x20000 /*XXXXXXXXXXXX001XX*/ ) || 
                ((input & 0xc0000) == 0x40000 /*XXXXXXXXXXXX01XXX*/ ) || 
                ((input & 0x80000) == 0x80000 /*XXXXXXXXXXXX1XXXX*/ )) {
            codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1;
            if (Parser_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1_bc_19_18_17_16_15_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
        
            goto END_OF_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1;
        }
        return INSTPARSER_INVALIDCODE;
        // Collecting label
        END_OF_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1:
        return INSTPARSER_OK;
}
/**
 * \brief Parser_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1_bc_19_18_17_16_15_bs_32
 */
int DisassemblerCore::Parser_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1_bc_19_18_17_16_15_bs_32(const uint32_t input)
{
        switch (((input & 0xf8000) )) {
        case ( 0x8000 /*XXXXXXXXXXXX00001*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1 = CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all7xpr_rs1;
        
            break;
        }
        case ( 0x18000 /*XXXXXXXXXXXX00011*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1 = CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all7xpr_rs1;
        
            break;
        }
        case ( 0x10000 /*XXXXXXXXXXXX00010*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1 = CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all7xpr_rs1;
        
            break;
        }
        case ( 0x38000 /*XXXXXXXXXXXX00111*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1 = CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all7xpr_rs1;
        
            break;
        }
        case ( 0x30000 /*XXXXXXXXXXXX00110*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1 = CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all7xpr_rs1;
        
            break;
        }
        case ( 0x28000 /*XXXXXXXXXXXX00101*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1 = CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all7xpr_rs1;
        
            break;
        }
        case ( 0x20000 /*XXXXXXXXXXXX00100*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1 = CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all7xpr_rs1;
        
            break;
        }
        case ( 0x78000 /*XXXXXXXXXXXX01111*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1 = CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all7xpr_rs1;
        
            break;
        }
        case ( 0x70000 /*XXXXXXXXXXXX01110*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1 = CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all7xpr_rs1;
        
            break;
        }
        case ( 0x68000 /*XXXXXXXXXXXX01101*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1 = CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all7xpr_rs1;
        
            break;
        }
        case ( 0x60000 /*XXXXXXXXXXXX01100*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1 = CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all7xpr_rs1;
        
            break;
        }
        case ( 0x58000 /*XXXXXXXXXXXX01011*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1 = CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all7xpr_rs1;
        
            break;
        }
        case ( 0x50000 /*XXXXXXXXXXXX01010*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1 = CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all7xpr_rs1;
        
            break;
        }
        case ( 0x48000 /*XXXXXXXXXXXX01001*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1 = CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all7xpr_rs1;
        
            break;
        }
        case ( 0x40000 /*XXXXXXXXXXXX01000*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1 = CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all7xpr_rs1;
        
            break;
        }
        case ( 0xf8000 /*XXXXXXXXXXXX11111*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1 = CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all7xpr_rs1;
        
            break;
        }
        case ( 0xf0000 /*XXXXXXXXXXXX11110*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1 = CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all7xpr_rs1;
        
            break;
        }
        case ( 0xe8000 /*XXXXXXXXXXXX11101*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1 = CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all7xpr_rs1;
        
            break;
        }
        case ( 0xe0000 /*XXXXXXXXXXXX11100*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1 = CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all7xpr_rs1;
        
            break;
        }
        case ( 0xd8000 /*XXXXXXXXXXXX11011*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1 = CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all7xpr_rs1;
        
            break;
        }
        case ( 0xd0000 /*XXXXXXXXXXXX11010*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1 = CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all7xpr_rs1;
        
            break;
        }
        case ( 0xc8000 /*XXXXXXXXXXXX11001*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1 = CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all7xpr_rs1;
        
            break;
        }
        case ( 0xc0000 /*XXXXXXXXXXXX11000*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1 = CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all7xpr_rs1;
        
            break;
        }
        case ( 0xb8000 /*XXXXXXXXXXXX10111*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1 = CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all7xpr_rs1;
        
            break;
        }
        case ( 0xb0000 /*XXXXXXXXXXXX10110*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1 = CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all7xpr_rs1;
        
            break;
        }
        case ( 0xa8000 /*XXXXXXXXXXXX10101*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1 = CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all7xpr_rs1;
        
            break;
        }
        case ( 0xa0000 /*XXXXXXXXXXXX10100*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1 = CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all7xpr_rs1;
        
            break;
        }
        case ( 0x98000 /*XXXXXXXXXXXX10011*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1 = CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all7xpr_rs1;
        
            break;
        }
        case ( 0x90000 /*XXXXXXXXXXXX10010*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1 = CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all7xpr_rs1;
        
            break;
        }
        case ( 0x88000 /*XXXXXXXXXXXX10001*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1 = CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all7xpr_rs1;
        
            break;
        }
        case ( 0x80000 /*XXXXXXXXXXXX10000*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1 = CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all7xpr_rs1;
        
            break;
        }
        default: 
            return INSTPARSER_INVALIDCODE;
        }
        return INSTPARSER_OK;
}
/**
 * \brief Parser_MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd_bc_11_10_9_8_7_bs_32
 */
int DisassemblerCore::Parser_MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd_bc_11_10_9_8_7_bs_32(const uint32_t input)
{
        if (((input & 0xf80) == 0x0 /*XXXXXXXXXXXXXXXXXXXX00000*/ )) {
            codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all6xpr_rd;
        
            goto END_OF_MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd;
        }
        if (((input & 0xf80) == 0x80 /*XXXXXXXXXXXXXXXXXXXX00001*/ ) || 
                ((input & 0xf00) == 0x100 /*XXXXXXXXXXXXXXXXXXXX0001X*/ ) || 
                ((input & 0xe00) == 0x200 /*XXXXXXXXXXXXXXXXXXXX001XX*/ ) || 
                ((input & 0xc00) == 0x400 /*XXXXXXXXXXXXXXXXXXXX01XXX*/ ) || 
                ((input & 0x800) == 0x800 /*XXXXXXXXXXXXXXXXXXXX1XXXX*/ )) {
            codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all6xpr_rd;
            if (Parser_MI3xprIH1_13default_start9_7xpr_all6xpr_rd_bc_11_10_9_8_7_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
        
            goto END_OF_MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd;
        }
        return INSTPARSER_INVALIDCODE;
        // Collecting label
        END_OF_MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd:
        return INSTPARSER_OK;
}
/**
 * \brief Parser_MI3xprIH1_13default_start9_7xpr_all6xpr_rd_bc_11_10_9_8_7_bs_32
 */
int DisassemblerCore::Parser_MI3xprIH1_13default_start9_7xpr_all6xpr_rd_bc_11_10_9_8_7_bs_32(const uint32_t input)
{
        switch (((input & 0xf80) )) {
        case ( 0x80 /*XXXXXXXXXXXXXXXXXXXX00001*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all6xpr_rd = CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all6xpr_rd;
        
            break;
        }
        case ( 0x180 /*XXXXXXXXXXXXXXXXXXXX00011*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all6xpr_rd = CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all6xpr_rd;
        
            break;
        }
        case ( 0x100 /*XXXXXXXXXXXXXXXXXXXX00010*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all6xpr_rd = CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all6xpr_rd;
        
            break;
        }
        case ( 0x380 /*XXXXXXXXXXXXXXXXXXXX00111*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all6xpr_rd = CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all6xpr_rd;
        
            break;
        }
        case ( 0x300 /*XXXXXXXXXXXXXXXXXXXX00110*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all6xpr_rd = CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all6xpr_rd;
        
            break;
        }
        case ( 0x280 /*XXXXXXXXXXXXXXXXXXXX00101*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all6xpr_rd = CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all6xpr_rd;
        
            break;
        }
        case ( 0x200 /*XXXXXXXXXXXXXXXXXXXX00100*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all6xpr_rd = CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all6xpr_rd;
        
            break;
        }
        case ( 0x780 /*XXXXXXXXXXXXXXXXXXXX01111*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all6xpr_rd = CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all6xpr_rd;
        
            break;
        }
        case ( 0x700 /*XXXXXXXXXXXXXXXXXXXX01110*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all6xpr_rd = CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all6xpr_rd;
        
            break;
        }
        case ( 0x680 /*XXXXXXXXXXXXXXXXXXXX01101*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all6xpr_rd = CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all6xpr_rd;
        
            break;
        }
        case ( 0x600 /*XXXXXXXXXXXXXXXXXXXX01100*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all6xpr_rd = CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all6xpr_rd;
        
            break;
        }
        case ( 0x580 /*XXXXXXXXXXXXXXXXXXXX01011*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all6xpr_rd = CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all6xpr_rd;
        
            break;
        }
        case ( 0x500 /*XXXXXXXXXXXXXXXXXXXX01010*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all6xpr_rd = CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all6xpr_rd;
        
            break;
        }
        case ( 0x480 /*XXXXXXXXXXXXXXXXXXXX01001*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all6xpr_rd = CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all6xpr_rd;
        
            break;
        }
        case ( 0x400 /*XXXXXXXXXXXXXXXXXXXX01000*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all6xpr_rd = CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all6xpr_rd;
        
            break;
        }
        case ( 0xf80 /*XXXXXXXXXXXXXXXXXXXX11111*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all6xpr_rd = CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all6xpr_rd;
        
            break;
        }
        case ( 0xf00 /*XXXXXXXXXXXXXXXXXXXX11110*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all6xpr_rd = CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all6xpr_rd;
        
            break;
        }
        case ( 0xe80 /*XXXXXXXXXXXXXXXXXXXX11101*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all6xpr_rd = CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all6xpr_rd;
        
            break;
        }
        case ( 0xe00 /*XXXXXXXXXXXXXXXXXXXX11100*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all6xpr_rd = CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all6xpr_rd;
        
            break;
        }
        case ( 0xd80 /*XXXXXXXXXXXXXXXXXXXX11011*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all6xpr_rd = CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all6xpr_rd;
        
            break;
        }
        case ( 0xd00 /*XXXXXXXXXXXXXXXXXXXX11010*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all6xpr_rd = CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all6xpr_rd;
        
            break;
        }
        case ( 0xc80 /*XXXXXXXXXXXXXXXXXXXX11001*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all6xpr_rd = CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all6xpr_rd;
        
            break;
        }
        case ( 0xc00 /*XXXXXXXXXXXXXXXXXXXX11000*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all6xpr_rd = CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all6xpr_rd;
        
            break;
        }
        case ( 0xb80 /*XXXXXXXXXXXXXXXXXXXX10111*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all6xpr_rd = CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all6xpr_rd;
        
            break;
        }
        case ( 0xb00 /*XXXXXXXXXXXXXXXXXXXX10110*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all6xpr_rd = CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all6xpr_rd;
        
            break;
        }
        case ( 0xa80 /*XXXXXXXXXXXXXXXXXXXX10101*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all6xpr_rd = CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all6xpr_rd;
        
            break;
        }
        case ( 0xa00 /*XXXXXXXXXXXXXXXXXXXX10100*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all6xpr_rd = CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all6xpr_rd;
        
            break;
        }
        case ( 0x980 /*XXXXXXXXXXXXXXXXXXXX10011*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all6xpr_rd = CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all6xpr_rd;
        
            break;
        }
        case ( 0x900 /*XXXXXXXXXXXXXXXXXXXX10010*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all6xpr_rd = CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all6xpr_rd;
        
            break;
        }
        case ( 0x880 /*XXXXXXXXXXXXXXXXXXXX10001*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all6xpr_rd = CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all6xpr_rd;
        
            break;
        }
        case ( 0x800 /*XXXXXXXXXXXXXXXXXXXX10000*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all6xpr_rd = CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all6xpr_rd;
        
            break;
        }
        default: 
            return INSTPARSER_INVALIDCODE;
        }
        return INSTPARSER_OK;
}
/**
 * \brief Parser_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2_bc_24_23_22_21_20_bs_32
 */
int DisassemblerCore::Parser_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2_bc_24_23_22_21_20_bs_32(const uint32_t input)
{
        if (((input & 0x1f00000) == 0x0 /*XXXXXXX00000*/ )) {
            codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all7xpr_rs2;
        
            goto END_OF_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2;
        }
        if (((input & 0x1f00000) == 0x100000 /*XXXXXXX00001*/ ) || 
                ((input & 0x1e00000) == 0x200000 /*XXXXXXX0001X*/ ) || 
                ((input & 0x1c00000) == 0x400000 /*XXXXXXX001XX*/ ) || 
                ((input & 0x1800000) == 0x800000 /*XXXXXXX01XXX*/ ) || 
                ((input & 0x1000000) == 0x1000000 /*XXXXXXX1XXXX*/ )) {
            codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2;
            if (Parser_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2_bc_24_23_22_21_20_bs_32(input) != INSTPARSER_OK) return INSTPARSER_INVALIDCODE;
        
            goto END_OF_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2;
        }
        return INSTPARSER_INVALIDCODE;
        // Collecting label
        END_OF_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2:
        return INSTPARSER_OK;
}
/**
 * \brief Parser_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2_bc_24_23_22_21_20_bs_32
 */
int DisassemblerCore::Parser_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2_bc_24_23_22_21_20_bs_32(const uint32_t input)
{
        switch (((input & 0x1f00000) )) {
        case ( 0x100000 /*XXXXXXX00001*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2 = CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all7xpr_rs2;
        
            break;
        }
        case ( 0x300000 /*XXXXXXX00011*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2 = CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all7xpr_rs2;
        
            break;
        }
        case ( 0x200000 /*XXXXXXX00010*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2 = CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all7xpr_rs2;
        
            break;
        }
        case ( 0x700000 /*XXXXXXX00111*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2 = CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all7xpr_rs2;
        
            break;
        }
        case ( 0x600000 /*XXXXXXX00110*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2 = CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all7xpr_rs2;
        
            break;
        }
        case ( 0x500000 /*XXXXXXX00101*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2 = CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all7xpr_rs2;
        
            break;
        }
        case ( 0x400000 /*XXXXXXX00100*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2 = CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all7xpr_rs2;
        
            break;
        }
        case ( 0xf00000 /*XXXXXXX01111*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2 = CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all7xpr_rs2;
        
            break;
        }
        case ( 0xe00000 /*XXXXXXX01110*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2 = CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all7xpr_rs2;
        
            break;
        }
        case ( 0xd00000 /*XXXXXXX01101*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2 = CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all7xpr_rs2;
        
            break;
        }
        case ( 0xc00000 /*XXXXXXX01100*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2 = CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all7xpr_rs2;
        
            break;
        }
        case ( 0xb00000 /*XXXXXXX01011*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2 = CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all7xpr_rs2;
        
            break;
        }
        case ( 0xa00000 /*XXXXXXX01010*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2 = CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all7xpr_rs2;
        
            break;
        }
        case ( 0x900000 /*XXXXXXX01001*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2 = CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all7xpr_rs2;
        
            break;
        }
        case ( 0x800000 /*XXXXXXX01000*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2 = CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all7xpr_rs2;
        
            break;
        }
        case ( 0x1f00000 /*XXXXXXX11111*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2 = CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all7xpr_rs2;
        
            break;
        }
        case ( 0x1e00000 /*XXXXXXX11110*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2 = CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all7xpr_rs2;
        
            break;
        }
        case ( 0x1d00000 /*XXXXXXX11101*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2 = CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all7xpr_rs2;
        
            break;
        }
        case ( 0x1c00000 /*XXXXXXX11100*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2 = CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all7xpr_rs2;
        
            break;
        }
        case ( 0x1b00000 /*XXXXXXX11011*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2 = CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all7xpr_rs2;
        
            break;
        }
        case ( 0x1a00000 /*XXXXXXX11010*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2 = CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all7xpr_rs2;
        
            break;
        }
        case ( 0x1900000 /*XXXXXXX11001*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2 = CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all7xpr_rs2;
        
            break;
        }
        case ( 0x1800000 /*XXXXXXX11000*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2 = CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all7xpr_rs2;
        
            break;
        }
        case ( 0x1700000 /*XXXXXXX10111*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2 = CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all7xpr_rs2;
        
            break;
        }
        case ( 0x1600000 /*XXXXXXX10110*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2 = CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all7xpr_rs2;
        
            break;
        }
        case ( 0x1500000 /*XXXXXXX10101*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2 = CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all7xpr_rs2;
        
            break;
        }
        case ( 0x1400000 /*XXXXXXX10100*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2 = CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all7xpr_rs2;
        
            break;
        }
        case ( 0x1300000 /*XXXXXXX10011*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2 = CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all7xpr_rs2;
        
            break;
        }
        case ( 0x1200000 /*XXXXXXX10010*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2 = CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all7xpr_rs2;
        
            break;
        }
        case ( 0x1100000 /*XXXXXXX10001*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2 = CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all7xpr_rs2;
        
            break;
        }
        case ( 0x1000000 /*XXXXXXX10000*/ ):
        {
            codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2 = CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all7xpr_rs2;
        
            break;
        }
        default: 
            return INSTPARSER_INVALIDCODE;
        }
        return INSTPARSER_OK;
}
/**
 * \brief Generator_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1
 */
int DisassemblerCore::Generator_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1(char * output)
{
    switch (codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1) {
        case CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all7xpr_rs1:
        m_Streams.top() += "x1";
        break;
        case CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all7xpr_rs1:
        m_Streams.top() += "x2";
        break;
        case CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all7xpr_rs1:
        m_Streams.top() += "x3";
        break;
        case CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all7xpr_rs1:
        m_Streams.top() += "x4";
        break;
        case CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all7xpr_rs1:
        m_Streams.top() += "x5";
        break;
        case CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all7xpr_rs1:
        m_Streams.top() += "x6";
        break;
        case CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all7xpr_rs1:
        m_Streams.top() += "x7";
        break;
        case CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all7xpr_rs1:
        m_Streams.top() += "x8";
        break;
        case CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all7xpr_rs1:
        m_Streams.top() += "x9";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all7xpr_rs1:
        m_Streams.top() += "x10";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all7xpr_rs1:
        m_Streams.top() += "x11";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all7xpr_rs1:
        m_Streams.top() += "x12";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all7xpr_rs1:
        m_Streams.top() += "x13";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all7xpr_rs1:
        m_Streams.top() += "x14";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all7xpr_rs1:
        m_Streams.top() += "x15";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all7xpr_rs1:
        m_Streams.top() += "x16";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all7xpr_rs1:
        m_Streams.top() += "x17";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all7xpr_rs1:
        m_Streams.top() += "x18";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all7xpr_rs1:
        m_Streams.top() += "x19";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all7xpr_rs1:
        m_Streams.top() += "x20";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all7xpr_rs1:
        m_Streams.top() += "x21";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all7xpr_rs1:
        m_Streams.top() += "x22";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all7xpr_rs1:
        m_Streams.top() += "x23";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all7xpr_rs1:
        m_Streams.top() += "x24";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all7xpr_rs1:
        m_Streams.top() += "x25";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all7xpr_rs1:
        m_Streams.top() += "x26";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all7xpr_rs1:
        m_Streams.top() += "x27";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all7xpr_rs1:
        m_Streams.top() += "x28";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all7xpr_rs1:
        m_Streams.top() += "x29";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all7xpr_rs1:
        m_Streams.top() += "x30";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all7xpr_rs1:
        m_Streams.top() += "x31";
        break;
        default:
            return INSTGENERATOR_FAIL;
        }
    return INSTGENERATOR_OK;
}
/**
 * \brief Generator_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2
 */
int DisassemblerCore::Generator_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2(char * output)
{
    switch (codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2) {
        case CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all7xpr_rs2:
        m_Streams.top() += "x1";
        break;
        case CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all7xpr_rs2:
        m_Streams.top() += "x2";
        break;
        case CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all7xpr_rs2:
        m_Streams.top() += "x3";
        break;
        case CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all7xpr_rs2:
        m_Streams.top() += "x4";
        break;
        case CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all7xpr_rs2:
        m_Streams.top() += "x5";
        break;
        case CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all7xpr_rs2:
        m_Streams.top() += "x6";
        break;
        case CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all7xpr_rs2:
        m_Streams.top() += "x7";
        break;
        case CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all7xpr_rs2:
        m_Streams.top() += "x8";
        break;
        case CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all7xpr_rs2:
        m_Streams.top() += "x9";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all7xpr_rs2:
        m_Streams.top() += "x10";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all7xpr_rs2:
        m_Streams.top() += "x11";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all7xpr_rs2:
        m_Streams.top() += "x12";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all7xpr_rs2:
        m_Streams.top() += "x13";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all7xpr_rs2:
        m_Streams.top() += "x14";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all7xpr_rs2:
        m_Streams.top() += "x15";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all7xpr_rs2:
        m_Streams.top() += "x16";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all7xpr_rs2:
        m_Streams.top() += "x17";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all7xpr_rs2:
        m_Streams.top() += "x18";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all7xpr_rs2:
        m_Streams.top() += "x19";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all7xpr_rs2:
        m_Streams.top() += "x20";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all7xpr_rs2:
        m_Streams.top() += "x21";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all7xpr_rs2:
        m_Streams.top() += "x22";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all7xpr_rs2:
        m_Streams.top() += "x23";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all7xpr_rs2:
        m_Streams.top() += "x24";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all7xpr_rs2:
        m_Streams.top() += "x25";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all7xpr_rs2:
        m_Streams.top() += "x26";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all7xpr_rs2:
        m_Streams.top() += "x27";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all7xpr_rs2:
        m_Streams.top() += "x28";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all7xpr_rs2:
        m_Streams.top() += "x29";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all7xpr_rs2:
        m_Streams.top() += "x30";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all7xpr_rs2:
        m_Streams.top() += "x31";
        break;
        default:
            return INSTGENERATOR_FAIL;
        }
    return INSTGENERATOR_OK;
}
/**
 * \brief Generator_MI3xprIH1_13default_start9_7xpr_all6xpr_rd
 */
int DisassemblerCore::Generator_MI3xprIH1_13default_start9_7xpr_all6xpr_rd(char * output)
{
    switch (codasip_switch_MI3xprIH1_13default_start9_7xpr_all6xpr_rd) {
        case CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all6xpr_rd:
        m_Streams.top() += "x1";
        break;
        case CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all6xpr_rd:
        m_Streams.top() += "x2";
        break;
        case CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all6xpr_rd:
        m_Streams.top() += "x3";
        break;
        case CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all6xpr_rd:
        m_Streams.top() += "x4";
        break;
        case CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all6xpr_rd:
        m_Streams.top() += "x5";
        break;
        case CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all6xpr_rd:
        m_Streams.top() += "x6";
        break;
        case CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all6xpr_rd:
        m_Streams.top() += "x7";
        break;
        case CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all6xpr_rd:
        m_Streams.top() += "x8";
        break;
        case CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all6xpr_rd:
        m_Streams.top() += "x9";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all6xpr_rd:
        m_Streams.top() += "x10";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all6xpr_rd:
        m_Streams.top() += "x11";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all6xpr_rd:
        m_Streams.top() += "x12";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all6xpr_rd:
        m_Streams.top() += "x13";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all6xpr_rd:
        m_Streams.top() += "x14";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all6xpr_rd:
        m_Streams.top() += "x15";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all6xpr_rd:
        m_Streams.top() += "x16";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all6xpr_rd:
        m_Streams.top() += "x17";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all6xpr_rd:
        m_Streams.top() += "x18";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all6xpr_rd:
        m_Streams.top() += "x19";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all6xpr_rd:
        m_Streams.top() += "x20";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all6xpr_rd:
        m_Streams.top() += "x21";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all6xpr_rd:
        m_Streams.top() += "x22";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all6xpr_rd:
        m_Streams.top() += "x23";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all6xpr_rd:
        m_Streams.top() += "x24";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all6xpr_rd:
        m_Streams.top() += "x25";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all6xpr_rd:
        m_Streams.top() += "x26";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all6xpr_rd:
        m_Streams.top() += "x27";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all6xpr_rd:
        m_Streams.top() += "x28";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all6xpr_rd:
        m_Streams.top() += "x29";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all6xpr_rd:
        m_Streams.top() += "x30";
        break;
        case CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all6xpr_rd:
        m_Streams.top() += "x31";
        break;
        default:
            return INSTGENERATOR_FAIL;
        }
    return INSTGENERATOR_OK;
}
int DisassemblerCore::Generator_MI13default_start(char * output)
{
    output[0] = '\0';
    m_Streams = std::stack<disassembler::DsmText>();
    m_Streams.push(disassembler::DsmText());
    switch (codasip_switch_MI9riscv_isaIH1_13default_start) {
        case CODASIP_SWITCH_VALUE_MI6i_haltIH1_13default_start:
        m_Streams.top() += "halt";
        break;
        case CODASIP_SWITCH_VALUE_MI9i_syscallIH1_13default_start:
        m_Streams.top() += "syscall";
        break;
        case CODASIP_SWITCH_VALUE_MI5i_aluIH1_13default_start:
        switch (codasip_switch_MI7opc_aluIH1_13default_start9_7opc_alu3opc) {
            case CODASIP_SWITCH_VALUE_MI7opc_addIH1_13default_start9_7opc_alu3opc:
            m_Streams.top() += "add";
            break;
            case CODASIP_SWITCH_VALUE_MI7opc_sltIH1_13default_start9_7opc_alu3opc:
            m_Streams.top() += "slt";
            break;
            case CODASIP_SWITCH_VALUE_MI8opc_sltuIH1_13default_start9_7opc_alu3opc:
            m_Streams.top() += "sltu";
            break;
            case CODASIP_SWITCH_VALUE_MI7opc_andIH1_13default_start9_7opc_alu3opc:
            m_Streams.top() += "and";
            break;
            case CODASIP_SWITCH_VALUE_MI6opc_orIH1_13default_start9_7opc_alu3opc:
            m_Streams.top() += "or";
            break;
            case CODASIP_SWITCH_VALUE_MI7opc_xorIH1_13default_start9_7opc_alu3opc:
            m_Streams.top() += "xor";
            break;
            case CODASIP_SWITCH_VALUE_MI7opc_sllIH1_13default_start9_7opc_alu3opc:
            m_Streams.top() += "sll";
            break;
            case CODASIP_SWITCH_VALUE_MI7opc_srlIH1_13default_start9_7opc_alu3opc:
            m_Streams.top() += "srl";
            break;
            case CODASIP_SWITCH_VALUE_MI7opc_subIH1_13default_start9_7opc_alu3opc:
            m_Streams.top() += "sub";
            break;
            case CODASIP_SWITCH_VALUE_MI7opc_sraIH1_13default_start9_7opc_alu3opc:
            m_Streams.top() += "sra";
            break;
            default:
                return INSTGENERATOR_FAIL;
            }
        Generator_MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd(output);
        m_Streams.top() += ",";
        Generator_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1(output);
        m_Streams.top() += ",";
        Generator_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2(output);
        break;
        case CODASIP_SWITCH_VALUE_MI7i_shiftIH1_13default_start:
        switch (codasip_switch_MI9opc_shiftIH1_13default_start11_9opc_shift3opc) {
            case CODASIP_SWITCH_VALUE_MI8opc_slliIH1_13default_start11_9opc_shift3opc:
            m_Streams.top() += "slli";
            break;
            case CODASIP_SWITCH_VALUE_MI8opc_srliIH1_13default_start11_9opc_shift3opc:
            m_Streams.top() += "srli";
            break;
            case CODASIP_SWITCH_VALUE_MI8opc_sraiIH1_13default_start11_9opc_shift3opc:
            m_Streams.top() += "srai";
            break;
            default:
                return INSTGENERATOR_FAIL;
            }
        Generator_MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd(output);
        m_Streams.top() += ",";
        Generator_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1(output);
        m_Streams.top() += ",";
        {
            std::stringstream out;
            out << (int)MI3valIH1_13default_start7_5shamt5shamt1_5shamt;
            m_Streams.top() += out.str();
        }
        break;
        case CODASIP_SWITCH_VALUE_MI7i_alu_iIH1_13default_start:
        switch (codasip_switch_MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc) {
            case CODASIP_SWITCH_VALUE_MI8opc_addiIH1_13default_start11_9opc_alu_i3opc:
            m_Streams.top() += "addi";
            break;
            case CODASIP_SWITCH_VALUE_MI8opc_sltiIH1_13default_start11_9opc_alu_i3opc:
            m_Streams.top() += "slti";
            break;
            case CODASIP_SWITCH_VALUE_MI9opc_sltiuIH1_13default_start11_9opc_alu_i3opc:
            m_Streams.top() += "sltiu";
            break;
            case CODASIP_SWITCH_VALUE_MI8opc_andiIH1_13default_start11_9opc_alu_i3opc:
            m_Streams.top() += "andi";
            break;
            case CODASIP_SWITCH_VALUE_MI7opc_oriIH1_13default_start11_9opc_alu_i3opc:
            m_Streams.top() += "ori";
            break;
            case CODASIP_SWITCH_VALUE_MI8opc_xoriIH1_13default_start11_9opc_alu_i3opc:
            m_Streams.top() += "xori";
            break;
            default:
                return INSTGENERATOR_FAIL;
            }
        Generator_MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd(output);
        m_Streams.top() += ",";
        Generator_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1(output);
        m_Streams.top() += ",";
        {
            std::stringstream out;
            out << MI3valIH1_13default_start8_6simm124simm1_6simm12;
            m_Streams.top() += out.str();
        }
        break;
        case CODASIP_SWITCH_VALUE_MI8i_branchIH1_13default_start:
        switch (codasip_switch_MI10opc_branchIH1_13default_start13_10opc_branch3opc) {
            case CODASIP_SWITCH_VALUE_MI7opc_beqIH1_13default_start13_10opc_branch3opc:
            m_Streams.top() += "beq";
            break;
            case CODASIP_SWITCH_VALUE_MI7opc_bneIH1_13default_start13_10opc_branch3opc:
            m_Streams.top() += "bne";
            break;
            case CODASIP_SWITCH_VALUE_MI7opc_bltIH1_13default_start13_10opc_branch3opc:
            m_Streams.top() += "blt";
            break;
            case CODASIP_SWITCH_VALUE_MI8opc_bltuIH1_13default_start13_10opc_branch3opc:
            m_Streams.top() += "bltu";
            break;
            case CODASIP_SWITCH_VALUE_MI7opc_bgeIH1_13default_start13_10opc_branch3opc:
            m_Streams.top() += "bge";
            break;
            case CODASIP_SWITCH_VALUE_MI8opc_bgeuIH1_13default_start13_10opc_branch3opc:
            m_Streams.top() += "bgeu";
            break;
            default:
                return INSTGENERATOR_FAIL;
            }
        Generator_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1(output);
        m_Streams.top() += ",";
        Generator_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2(output);
        m_Streams.top() += ",";
        {
            uint32_t print_MI3valIH1_13default_start13_10rel_addr128rel_addr1_10rel_addr12 = MI3valIH1_13default_start13_10rel_addr128rel_addr1_10rel_addr12;
            print_MI3valIH1_13default_start13_10rel_addr128rel_addr1_10rel_addr12 = (codasip::Integer<13, 0>)(((MI3valIH1_13default_start13_10rel_addr128rel_addr1_10rel_addr12 + m_Address)) << (int32_t)(0x1));
            char label[1024] = "";
            if (m_DsmUtils->UpdateLabel(label, print_MI3valIH1_13default_start13_10rel_addr128rel_addr1_10rel_addr12))
            {
                m_Streams.top() += label;
            }
            else
            {
                std::stringstream out;
                out << "0x" << std::hex << print_MI3valIH1_13default_start13_10rel_addr128rel_addr1_10rel_addr12;
                m_Streams.top() += out.str();
        }
    }
    break;
    case CODASIP_SWITCH_VALUE_MI5i_jalIH1_13default_start:
    m_Streams.top() += "jal";
    Generator_MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd(output);
    m_Streams.top() += ",";
    {
        uint32_t print_MI3valIH1_13default_start13_10rel_addr208rel_addr1_10rel_addr20 = MI3valIH1_13default_start13_10rel_addr208rel_addr1_10rel_addr20;
        print_MI3valIH1_13default_start13_10rel_addr208rel_addr1_10rel_addr20 = (codasip::Integer<21, 0>)(((MI3valIH1_13default_start13_10rel_addr208rel_addr1_10rel_addr20 + m_Address)) << (int32_t)(0x1));
        char label[1024] = "";
        if (m_DsmUtils->UpdateLabel(label, print_MI3valIH1_13default_start13_10rel_addr208rel_addr1_10rel_addr20))
        {
            m_Streams.top() += label;
        }
        else
        {
            std::stringstream out;
            out << "0x" << std::hex << print_MI3valIH1_13default_start13_10rel_addr208rel_addr1_10rel_addr20;
            m_Streams.top() += out.str();
    }
    }
    break;
    case CODASIP_SWITCH_VALUE_MI6i_jalrIH1_13default_start:
    m_Streams.top() += "jalr";
    Generator_MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd(output);
    m_Streams.top() += ",";
    {
        uint32_t print_MI3valIH1_13default_start18_15rel_jalr_addr128rel_addr1_15rel_jalr_addr12 = MI3valIH1_13default_start18_15rel_jalr_addr128rel_addr1_15rel_jalr_addr12;
        print_MI3valIH1_13default_start18_15rel_jalr_addr128rel_addr1_15rel_jalr_addr12 = (codasip::Integer<12, 0>)((MI3valIH1_13default_start18_15rel_jalr_addr128rel_addr1_15rel_jalr_addr12 + m_Address));
        char label[1024] = "";
        if (m_DsmUtils->UpdateLabel(label, print_MI3valIH1_13default_start18_15rel_jalr_addr128rel_addr1_15rel_jalr_addr12))
        {
            m_Streams.top() += label;
        }
        else
        {
            std::stringstream out;
            out << "0x" << std::hex << print_MI3valIH1_13default_start18_15rel_jalr_addr128rel_addr1_15rel_jalr_addr12;
            m_Streams.top() += out.str();
    }
    }
    m_Streams.top() += "(";
    Generator_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1(output);
    m_Streams.top() += ")";
    break;
    case CODASIP_SWITCH_VALUE_MI11i_upper_immIH1_13default_start:
    switch (codasip_switch_MI13opc_upper_immIH1_13default_start16_13opc_upper_imm3opc) {
        case CODASIP_SWITCH_VALUE_MI7opc_luiIH1_13default_start16_13opc_upper_imm3opc:
        m_Streams.top() += "lui";
        break;
        case CODASIP_SWITCH_VALUE_MI9opc_auipcIH1_13default_start16_13opc_upper_imm3opc:
        m_Streams.top() += "auipc";
        break;
        default:
            return INSTGENERATOR_FAIL;
        }
    Generator_MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd(output);
    m_Streams.top() += ",";
    {
        std::stringstream out;
        out << MI3valIH1_13default_start8_6simm204simm1_6simm20;
        m_Streams.top() += out.str();
    }
    break;
    case CODASIP_SWITCH_VALUE_MI6i_loadIH1_13default_start:
    switch (codasip_switch_MI8opc_loadIH1_13default_start10_8opc_load3opc) {
        case CODASIP_SWITCH_VALUE_MI6opc_lbIH1_13default_start10_8opc_load3opc:
        m_Streams.top() += "lb";
        break;
        case CODASIP_SWITCH_VALUE_MI6opc_lhIH1_13default_start10_8opc_load3opc:
        m_Streams.top() += "lh";
        break;
        case CODASIP_SWITCH_VALUE_MI6opc_lwIH1_13default_start10_8opc_load3opc:
        m_Streams.top() += "lw";
        break;
        case CODASIP_SWITCH_VALUE_MI7opc_lbuIH1_13default_start10_8opc_load3opc:
        m_Streams.top() += "lbu";
        break;
        case CODASIP_SWITCH_VALUE_MI7opc_lhuIH1_13default_start10_8opc_load3opc:
        m_Streams.top() += "lhu";
        break;
        default:
            return INSTGENERATOR_FAIL;
        }
    Generator_MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd(output);
    m_Streams.top() += ",";
    {
        std::stringstream out;
        out << MI3valIH1_13default_start8_6simm124simm1_6simm12;
        m_Streams.top() += out.str();
    }
    m_Streams.top() += "(";
    Generator_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1(output);
    m_Streams.top() += ")";
    break;
    case CODASIP_SWITCH_VALUE_MI7i_storeIH1_13default_start:
    switch (codasip_switch_MI9opc_storeIH1_13default_start11_9opc_store3opc) {
        case CODASIP_SWITCH_VALUE_MI6opc_sbIH1_13default_start11_9opc_store3opc:
        m_Streams.top() += "sb";
        break;
        case CODASIP_SWITCH_VALUE_MI6opc_shIH1_13default_start11_9opc_store3opc:
        m_Streams.top() += "sh";
        break;
        case CODASIP_SWITCH_VALUE_MI6opc_swIH1_13default_start11_9opc_store3opc:
        m_Streams.top() += "sw";
        break;
        default:
            return INSTGENERATOR_FAIL;
        }
    Generator_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2(output);
    m_Streams.top() += ",";
    {
        std::stringstream out;
        out << MI3valIH1_13default_start8_6simm124simm1_6simm12;
        m_Streams.top() += out.str();
    }
    m_Streams.top() += "(";
    Generator_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1(output);
    m_Streams.top() += ")";
    break;
    default:
        return INSTGENERATOR_FAIL;
    }
    ::strcpy(output, m_Streams.top().ToString().c_str());
    return INSTGENERATOR_OK;
}
DisassemblerCore::DisassemblerCore()
 :  MI3valIH1_13default_start7_5shamt5shamt1_5shamt(0),
    MI3valIH1_13default_start8_6simm204simm1_6simm20(0),
    MI3valIH1_13default_start13_10rel_addr208rel_addr1_10rel_addr20(0),
    MI3valIH1_13default_start18_15rel_jalr_addr128rel_addr1_15rel_jalr_addr12(0),
    MI3valIH1_13default_start8_6simm124simm1_6simm12(0),
    MI3valIH1_13default_start13_10rel_addr128rel_addr1_10rel_addr12(0),
    codasip_switch_MI10opc_branchIH1_13default_start13_10opc_branch3opc(CODASIP_SWITCH_UNDEF_MI13default_startIH1_13default_start),
    codasip_switch_MI13opc_upper_immIH1_13default_start16_13opc_upper_imm3opc(CODASIP_SWITCH_UNDEF_MI13default_startIH1_13default_start),
    codasip_switch_MI3xprIH1_13default_start9_7xpr_all6xpr_rd(CODASIP_SWITCH_UNDEF_MI13default_startIH1_13default_start),
    codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1(CODASIP_SWITCH_UNDEF_MI13default_startIH1_13default_start),
    codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2(CODASIP_SWITCH_UNDEF_MI13default_startIH1_13default_start),
    codasip_switch_MI7opc_aluIH1_13default_start9_7opc_alu3opc(CODASIP_SWITCH_UNDEF_MI13default_startIH1_13default_start),
    codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd(CODASIP_SWITCH_UNDEF_MI13default_startIH1_13default_start),
    codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1(CODASIP_SWITCH_UNDEF_MI13default_startIH1_13default_start),
    codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2(CODASIP_SWITCH_UNDEF_MI13default_startIH1_13default_start),
    codasip_switch_MI8opc_loadIH1_13default_start10_8opc_load3opc(CODASIP_SWITCH_UNDEF_MI13default_startIH1_13default_start),
    codasip_switch_MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc(CODASIP_SWITCH_UNDEF_MI13default_startIH1_13default_start),
    codasip_switch_MI9opc_shiftIH1_13default_start11_9opc_shift3opc(CODASIP_SWITCH_UNDEF_MI13default_startIH1_13default_start),
    codasip_switch_MI9opc_storeIH1_13default_start11_9opc_store3opc(CODASIP_SWITCH_UNDEF_MI13default_startIH1_13default_start),
    codasip_switch_MI9riscv_isaIH1_13default_start(CODASIP_SWITCH_UNDEF_MI13default_startIH1_13default_start),
    m_Address(0),
    m_DsmUtils(0),
    codasip_switch_bundle(codasip_bundle_undef),
    codasip_switch_instruction_set(codasip_instruction_set_undef)
{

}
} // namespace MI7RISC_V5
} // namespace disassembler
} // namespace codasip
