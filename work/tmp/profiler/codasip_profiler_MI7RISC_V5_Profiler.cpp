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
#include "codasip_profiler_MI7RISC_V5_Profiler.h"

#include "basicoptions.h"
static const codasip::getopt::ToolInfoSetter g_ToolInfo(codasip::getopt::ToolInfo("C51_657_727", 
"RISC_V5", 
"c6531b5a26b5f0e047c1db0a753f9f9ec9184e2ea2e3400419110244043b0875", 
"2017-11-26 01:00:26", 
""
));

namespace codasip {
namespace profiler {
namespace MI7RISC_V5 {

const std::string& Profiler::GetModelHash() const 
{
    return getopt::GetToolInfo().GetHash();
}
DecodersInterface* Profiler::GetDecoders(const std::string& asip)
{
    if (asip == "MI7RISC_V5") {
        return &m_Decoders_MI7RISC_V5;
    }
    return NULL;
}
disassembler::Disassembler* Profiler::GetDisassembler(const std::string& asip)
{
    if (asip == "MI7RISC_V5") {
        return &m_Dsm_MI7RISC_V5;
    }
    return NULL;
}
} // namespace MI7RISC_V5
} // namespace profiler
} // namespace codasip
