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
 * \author  Codasip (c) Decoders analyzer
 * \version 6.8.2-1.win.7.EVALUATION
 * \brief   Source files for profiler
 * \project RISC_V5
 */
#include "codasip_profiler_MI7RISC_V5_Decoders.h"

namespace codasip {
namespace profiler {
namespace MI7RISC_V5 {

const DecodersInterface::Instructions& Decoders::GetInstructions(const std::string& decoder) const 
{
    if (decoder == "MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw") {
        return  m_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw.GetInstructions();
        }
    static DecodersInterface::Instructions defaultInstructions;
    return defaultInstructions;
}
const DecodersInterface::Operands& Decoders::GetOperands(const std::string& decoder) const 
{
    if (decoder == "MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw") {
        return  m_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw.GetOperands();
        }
    static DecodersInterface::Operands defaultOperands;
    return defaultOperands;
}
const InstructionWithOperands& Decoders::Decode(const std::string& decoder, const codasip::MaxInt& input,const bool decodeOperands)
{
    output.Clear();
    if (decoder == "MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw") {
         m_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw.Decode(output, input, decodeOperands);
        return output;
    }
    LOG_ERROR() << "Unknown Decoder" << std::endl;
    return output;
}
} // namespace MI7RISC_V5
} // namespace profiler
} // namespace codasip
