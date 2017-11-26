/**
 * Codasip Ltd
 * 
 * CONFIDENTIAL 
 *
 * Copyright 2016 Codasip Ltd
 * 
 * All Rights Reserved.
 *
 * NOTICE: All information contained in this file, is and shall remain the property of Codasip Ltd 
 * and its suppliers, if any. 
 *
 * The intellectual and technical concepts contained herein are confidential and proprietary to 
 * Codasip Ltd and are protected by trade secret and copyright law.  In addition, elements of the 
 * technical concepts may be patent pending.  
 *
 * This file is part of the Codasip Studio product. No part of the Studio product, including this 
 * file, may be use, copied, modified, or distributed except in accordance with the terms contained 
 * in Codasip license agreement under which you obtained this file.
 *
 *  \file
 *  \author Zdenek Prikryl
 *  \date   Mar 4, 2016
 *  \brief  Declaration/Implementation of the class.
 */

#ifndef SIMULATORS2_RESOURCES_CSR_INCLUDE_H_
#define SIMULATORS2_RESOURCES_CSR_INCLUDE_H_

#include "csr_access_checker.h"
#include "csr_address_checker.h"
#include "csr_bus.h"
#include "csr_cache_interface.h"
#include "csr_cache_request.h"
#include "csr_cache_rpl.h"
#include "csr_cache_storage.h"
#include "csr_cache.h"
#include "csr_clb_interface.h"
#include "csr_dff_storage.h"
#include "csr_dumper.h"
#include "csr_endianness.h"
#include "csr_foreign.h"
#include "csr_fu_fve_resource.h"
#include "csr_fve_interface.h"
#include "csr_hashmap.h"
#include "csr_helpers.h"
#include "csr_include.h"
#include "csr_interface_base.h"
#include "csr_interface.h"
#include "csr_memory.h"
#include "csr_memory_interface.h"
#include "csr_memory_storage.h"
#include "csr_payload.h"
#include "csr_payload_sentinel.h"
#include "csr_port_base.h"
#include "csr_port.h"
#include "csr_register_file.h"
#include "csr_register.h"
#include "csr_rw_profiler.h"
#include "csr_sentinel.h"
#include "csr_signal.h"
#include "csr_storage_sentinel.h"
#include "csr_unaligned_generic.h"
#include "csr_unaligned_native.h"
#include "csr_variable_storage.h"
#include "csr_variable.h"
#include "csr_watchpoint_detector.h"

// defined in csr_sentinel, but can be used in every header
#undef RES_LOG

#endif  // SIMULATORS2_RESOURCES_CSR_INCLUDE_H_
