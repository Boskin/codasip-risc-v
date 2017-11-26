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
#ifndef CODASIP_RESOURCES_MEMORYCORE_CODASIP_MEMORY_CODASIP_MEM_RISC_V5_AS_ALL_0_T_0_H_
#define CODASIP_RESOURCES_MEMORYCORE_CODASIP_MEMORY_CODASIP_MEM_RISC_V5_AS_ALL_0_T_0_H_

#include "csr_include.h"

namespace codasip {
namespace resources {
class MemoryCore_codasip_memory_codasip_mem_RISC_V5_as_all_0_t;
typedef Memory<MemoryCore_codasip_memory_codasip_mem_RISC_V5_as_all_0_t> codasip_memory_codasip_mem_RISC_V5_as_all_0_t;
}
}

namespace codasip {
namespace resources {

/**
 * \class MemoryCore_codasip_memory_codasip_mem_RISC_V5_as_all_0_t
 */
class MemoryCore_codasip_memory_codasip_mem_RISC_V5_as_all_0_t  {
public:
    enum {
        IS_UNALIGNED = 0,
        LATENCY_READ_SIZE = 1,
        LATENCY_WRITE_SIZE = 1
    };
private:
    typedef uint32_t DataType;
public:
    typedef MemoryStorage<DataType, 8,32, codasip::resources::CP_LITTLE_ENDIAN, 8388608, IS_UNALIGNED> StorageType;
    /**
     * \class MI7if_codeAttributes
     */
    class MI7if_codeAttributes  {
    public:
        enum {
            IS_READABLE=1,
            IS_WRITABLE=0
        };
    };
    ClbInterface<PayloadSentinel<uint32_t, 8,32>, codasip_memory_codasip_mem_RISC_V5_as_all_0_t, MI7if_codeAttributes> if_code;
    /**
     * \class MI7if_dataAttributes
     */
    class MI7if_dataAttributes  {
    public:
        enum {
            IS_READABLE=1,
            IS_WRITABLE=1
        };
    };
    ClbInterface<PayloadSentinel<uint32_t, 8,32>, codasip_memory_codasip_mem_RISC_V5_as_all_0_t, MI7if_dataAttributes> if_data;
    /**
     * \brief GetLatencyRead
     */
    static Index GetLatencyRead(const Index index = 0);
    /**
     * \brief GetLatencyWrite
     */
    static Index GetLatencyWrite(const Index index = 0);
    /**
     * \brief Reset
     */
    int Reset();
    /**
     * \brief ClockCycle
     */
    int ClockCycle();
    /**
     * \brief MemoryCore_codasip_memory_codasip_mem_RISC_V5_as_all_0_t
     */
    MemoryCore_codasip_memory_codasip_mem_RISC_V5_as_all_0_t();
};
FORCE_INLINE Index MemoryCore_codasip_memory_codasip_mem_RISC_V5_as_all_0_t::GetLatencyRead(const Index index)
{
    return 1;
}
FORCE_INLINE Index MemoryCore_codasip_memory_codasip_mem_RISC_V5_as_all_0_t::GetLatencyWrite(const Index index)
{
    return 1;
}
FORCE_INLINE int MemoryCore_codasip_memory_codasip_mem_RISC_V5_as_all_0_t::ClockCycle()
{
    #ifdef __CA_MODEL__
    if_code.clock_cycle();
    #endif // __CA_MODEL__
    #ifdef __CA_MODEL__
    if_data.clock_cycle();
    #endif // __CA_MODEL__
    return simulator::SIM_OK;
}
} // namespace resources
} // namespace codasip

#endif // CODASIP_RESOURCES_MEMORYCORE_CODASIP_MEMORY_CODASIP_MEM_RISC_V5_AS_ALL_0_T_0_H_
