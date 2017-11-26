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
#ifndef CODASIP_PROFILER_MI7RISC_V5_PROFILER_4_H_
#define CODASIP_PROFILER_MI7RISC_V5_PROFILER_4_H_

#include "profiler_interface.h"
#include "codasip_profiler_MI7RISC_V5_Decoders.h"
#include "codasip_disassembler_MI7RISC_V5_Dsm.h"

namespace codasip {
namespace profiler {
namespace MI7RISC_V5 {

/**
 * \class Profiler
 */
class Profiler : public ProfilerInterface
 {
private:
    codasip::profiler::MI7RISC_V5::Decoders m_Decoders_MI7RISC_V5;
    codasip::disassembler::MI7RISC_V5::Dsm m_Dsm_MI7RISC_V5;
public:
    /**
     * \brief GetModelHash
     */
    const std::string& GetModelHash() const ;
    /**
     * \brief GetDecoders
     */
    DecodersInterface* GetDecoders(const std::string& asip);
    /**
     * \brief GetDisassembler
     */
    disassembler::Disassembler* GetDisassembler(const std::string& asip);
    /**
     * \brief GetAddressSpace
     */
    std::string GetAddressSpace(const int interfaceUid) const ;
    /**
     * \brief DumpInfo
     */
    void DumpInfo(std::ostream& out) const ;
};
FORCE_INLINE std::string Profiler::GetAddressSpace(const int interfaceUid) const 
{
    if (interfaceUid == 85) {
        return "as_all";
    }
    if (interfaceUid == 86) {
        return "as_all";
    }
    return "";
}
FORCE_INLINE void Profiler::DumpInfo(std::ostream& out) const 
{
    out << "<?xml version=\"1.0\"?><asip name=\"RISC_V5\" model_type=\"ca\" version=\"6.8.2-1.win.7.EVALUATION\"/>" << std::endl;
}
} // namespace MI7RISC_V5
} // namespace profiler
} // namespace codasip

#endif // CODASIP_PROFILER_MI7RISC_V5_PROFILER_4_H_
