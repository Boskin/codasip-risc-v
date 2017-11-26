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
#include "codasip_resources_MemoryCore_codasip_memory_codasip_mem_RISC_V5_as_all_0_t.h"

#include "codasip_interface.h"

namespace codasip {
namespace resources {

int MemoryCore_codasip_memory_codasip_mem_RISC_V5_as_all_0_t::Reset()
{
    if_code.reset();
    if_data.reset();
    return simulator::SIM_OK;
}
MemoryCore_codasip_memory_codasip_mem_RISC_V5_as_all_0_t::MemoryCore_codasip_memory_codasip_mem_RISC_V5_as_all_0_t()
 :  if_code("if_code", 0, (codasip_memory_codasip_mem_RISC_V5_as_all_0_t*)this),
    if_data("if_data", 1, (codasip_memory_codasip_mem_RISC_V5_as_all_0_t*)this)
{

}
} // namespace resources
} // namespace codasip
