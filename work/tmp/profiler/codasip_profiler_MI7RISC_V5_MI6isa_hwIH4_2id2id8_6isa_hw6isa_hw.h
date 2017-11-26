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
#ifndef CODASIP_PROFILER_MI7RISC_V5_MI6ISA_HWIH4_2ID2ID8_6ISA_HW6ISA_HW_0_H_
#define CODASIP_PROFILER_MI7RISC_V5_MI6ISA_HWIH4_2ID2ID8_6ISA_HW6ISA_HW_0_H_

#include "profiler_interface.h"
#include "codasip_integer.h"
#include "toolstypes.h"
#include "dsm_text.h"
#include <set>
#include <stack>

namespace codasip {
namespace profiler {
namespace MI7RISC_V5 {

/**
 * \class MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw
 */
class MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw  {
private:
    typedef enum {
        CODASIP_SWITCH_UNDEF_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw,
        CODASIP_SWITCH_VALUE_MI10i_hw_alu_iIH4_2id2id8_6isa_hw6isa_hw,
        CODASIP_SWITCH_VALUE_MI10i_hw_shiftIH4_2id2id8_6isa_hw6isa_hw,
        CODASIP_SWITCH_VALUE_MI10i_hw_storeIH4_2id2id8_6isa_hw6isa_hw,
        CODASIP_SWITCH_VALUE_MI11i_hw_branchIH4_2id2id8_6isa_hw6isa_hw,
        CODASIP_SWITCH_VALUE_MI12i_hw_syscallIH4_2id2id8_6isa_hw6isa_hw,
        CODASIP_SWITCH_VALUE_MI14i_hw_upper_immIH4_2id2id8_6isa_hw6isa_hw,
        CODASIP_SWITCH_VALUE_MI6opc_lbIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc,
        CODASIP_SWITCH_VALUE_MI6opc_lhIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc,
        CODASIP_SWITCH_VALUE_MI6opc_lwIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc,
        CODASIP_SWITCH_VALUE_MI6opc_orIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc,
        CODASIP_SWITCH_VALUE_MI6opc_sbIH4_2id2id8_6isa_hw6isa_hw11_9opc_store3opc,
        CODASIP_SWITCH_VALUE_MI6opc_shIH4_2id2id8_6isa_hw6isa_hw11_9opc_store3opc,
        CODASIP_SWITCH_VALUE_MI6opc_swIH4_2id2id8_6isa_hw6isa_hw11_9opc_store3opc,
        CODASIP_SWITCH_VALUE_MI7opc_addIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc,
        CODASIP_SWITCH_VALUE_MI7opc_andIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc,
        CODASIP_SWITCH_VALUE_MI7opc_beqIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc,
        CODASIP_SWITCH_VALUE_MI7opc_bgeIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc,
        CODASIP_SWITCH_VALUE_MI7opc_bltIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc,
        CODASIP_SWITCH_VALUE_MI7opc_bneIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc,
        CODASIP_SWITCH_VALUE_MI7opc_lbuIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc,
        CODASIP_SWITCH_VALUE_MI7opc_lhuIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc,
        CODASIP_SWITCH_VALUE_MI7opc_luiIH4_2id2id8_6isa_hw6isa_hw16_13opc_upper_imm3opc,
        CODASIP_SWITCH_VALUE_MI7opc_oriIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc,
        CODASIP_SWITCH_VALUE_MI7opc_sllIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc,
        CODASIP_SWITCH_VALUE_MI7opc_sltIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc,
        CODASIP_SWITCH_VALUE_MI7opc_sraIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc,
        CODASIP_SWITCH_VALUE_MI7opc_srlIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc,
        CODASIP_SWITCH_VALUE_MI7opc_subIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc,
        CODASIP_SWITCH_VALUE_MI7opc_xorIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc,
        CODASIP_SWITCH_VALUE_MI8i_hw_aluIH4_2id2id8_6isa_hw6isa_hw,
        CODASIP_SWITCH_VALUE_MI8i_hw_jalIH4_2id2id8_6isa_hw6isa_hw,
        CODASIP_SWITCH_VALUE_MI8opc_addiIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc,
        CODASIP_SWITCH_VALUE_MI8opc_andiIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc,
        CODASIP_SWITCH_VALUE_MI8opc_bgeuIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc,
        CODASIP_SWITCH_VALUE_MI8opc_bltuIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc,
        CODASIP_SWITCH_VALUE_MI8opc_slliIH4_2id2id8_6isa_hw6isa_hw11_9opc_shift3opc,
        CODASIP_SWITCH_VALUE_MI8opc_sltiIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc,
        CODASIP_SWITCH_VALUE_MI8opc_sltuIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc,
        CODASIP_SWITCH_VALUE_MI8opc_sraiIH4_2id2id8_6isa_hw6isa_hw11_9opc_shift3opc,
        CODASIP_SWITCH_VALUE_MI8opc_srliIH4_2id2id8_6isa_hw6isa_hw11_9opc_shift3opc,
        CODASIP_SWITCH_VALUE_MI8opc_xoriIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc,
        CODASIP_SWITCH_VALUE_MI9i_hw_haltIH4_2id2id8_6isa_hw6isa_hw,
        CODASIP_SWITCH_VALUE_MI9i_hw_jalrIH4_2id2id8_6isa_hw6isa_hw,
        CODASIP_SWITCH_VALUE_MI9i_hw_loadIH4_2id2id8_6isa_hw6isa_hw,
        CODASIP_SWITCH_VALUE_MI9opc_auipcIH4_2id2id8_6isa_hw6isa_hw16_13opc_upper_imm3opc,
        CODASIP_SWITCH_VALUE_MI9opc_sltiuIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc,
    }parser_switch_t;
    parser_switch_t codasip_switch_MI10opc_branchIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc;
    parser_switch_t codasip_switch_MI13opc_upper_immIH4_2id2id8_6isa_hw6isa_hw16_13opc_upper_imm3opc;
    parser_switch_t codasip_switch_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw;
    parser_switch_t codasip_switch_MI7opc_aluIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc;
    parser_switch_t codasip_switch_MI8opc_loadIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc;
    parser_switch_t codasip_switch_MI9opc_alu_iIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc;
    parser_switch_t codasip_switch_MI9opc_shiftIH4_2id2id8_6isa_hw6isa_hw11_9opc_shift3opc;
    parser_switch_t codasip_switch_MI9opc_storeIH4_2id2id8_6isa_hw6isa_hw11_9opc_store3opc;
    std::stack<disassembler::DsmText> m_Streams;
    codasip_address_t m_Address;
public:
    DecodersInterface::Instructions m_Instructions;
    DecodersInterface::Operands m_Operands;
private:
    int idecstate;
    int Parser_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw(const uint32_t input);
    int Parser_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw_bs_7(const uint32_t input);
    int Parser_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw_bs_10(const uint32_t input);
    int Parser_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw_bs_17(const uint32_t input);
    void SwitchClean_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw();
    int Generator_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw(InstructionWithOperands& output, const bool decodeOperands);
public:
    /**
     * \brief Decode
     */
    void Decode(InstructionWithOperands& output, const codasip::MaxInt& input, const bool decodeOperands);
    /**
     * \brief GetInstructions
     */
    const DecodersInterface::Instructions& GetInstructions() const ;
    /**
     * \brief GetOperands
     */
    const DecodersInterface::Operands& GetOperands() const ;
    /**
     * \brief MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw
     */
    MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw();
};
/**
 * \brief Parser_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw
 */
FORCE_INLINE int MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw::Parser_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw(const uint32_t input)
{
        SwitchClean_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw();
        if (Parser_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw_bs_7(input) == INSTPARSER_OK) return INSTPARSER_OK;
        SwitchClean_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw();
        if (Parser_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw_bs_10(input) == INSTPARSER_OK) return INSTPARSER_OK;
        SwitchClean_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw();
        if (Parser_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw_bs_17(input) == INSTPARSER_OK) return INSTPARSER_OK;
        return INSTPARSER_INVALIDCODE;
}
/**
 * \brief SwitchClean_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw
 */
FORCE_INLINE void MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw::SwitchClean_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw()
{
    codasip_switch_MI10opc_branchIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc = CODASIP_SWITCH_UNDEF_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw;
    codasip_switch_MI13opc_upper_immIH4_2id2id8_6isa_hw6isa_hw16_13opc_upper_imm3opc = CODASIP_SWITCH_UNDEF_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw;
    codasip_switch_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw = CODASIP_SWITCH_UNDEF_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw;
    codasip_switch_MI7opc_aluIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc = CODASIP_SWITCH_UNDEF_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw;
    codasip_switch_MI8opc_loadIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc = CODASIP_SWITCH_UNDEF_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw;
    codasip_switch_MI9opc_alu_iIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc = CODASIP_SWITCH_UNDEF_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw;
    codasip_switch_MI9opc_shiftIH4_2id2id8_6isa_hw6isa_hw11_9opc_shift3opc = CODASIP_SWITCH_UNDEF_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw;
    codasip_switch_MI9opc_storeIH4_2id2id8_6isa_hw6isa_hw11_9opc_store3opc = CODASIP_SWITCH_UNDEF_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw;
}
FORCE_INLINE void MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw::Decode(InstructionWithOperands& output, const codasip::MaxInt& input, const bool decodeOperands)
{
    Parser_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw(input);
    Generator_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw(output, decodeOperands);
}
FORCE_INLINE const DecodersInterface::Instructions& MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw::GetInstructions() const 
{
    return m_Instructions;
}
FORCE_INLINE const DecodersInterface::Operands& MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw::GetOperands() const 
{
    return m_Operands;
}
} // namespace MI7RISC_V5
} // namespace profiler
} // namespace codasip

#endif // CODASIP_PROFILER_MI7RISC_V5_MI6ISA_HWIH4_2ID2ID8_6ISA_HW6ISA_HW_0_H_
