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
#ifndef CODASIP_PROFILER_MI7RISC_V5_DECODERS_1_H_
#define CODASIP_PROFILER_MI7RISC_V5_DECODERS_1_H_

#include "profiler_interface.h"
#include "codasip_profiler_MI7RISC_V5_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw.h"
#include "codasip_log.h"

namespace codasip {
namespace profiler {
namespace MI7RISC_V5 {

/**
 * \class Decoders
 */
class Decoders : public DecodersInterface
 {
private:
    MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw m_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw;
    InstructionWithOperands output;
public:
    /**
     * \brief GetInstructions
     */
    const DecodersInterface::Instructions& GetInstructions(const std::string& decoder) const ;
    /**
     * \brief GetOperands
     */
    const DecodersInterface::Operands& GetOperands(const std::string& decoder) const ;
    /**
     * \brief Decode
     */
    const InstructionWithOperands& Decode(const std::string& decoder, const codasip::MaxInt& input,const bool decodeOperands);
};
} // namespace MI7RISC_V5
} // namespace profiler
} // namespace codasip

#endif // CODASIP_PROFILER_MI7RISC_V5_DECODERS_1_H_
