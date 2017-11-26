/**
 * Codasip Ltd
 *
 * CONFIDENTIAL
 *
 * Copyright 2014 Codasip Ltd
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
 *  \date   6.4.2011
 *  \brief  Tools types
 */

#ifndef _TOOLSTYPES_H_INCLUDED_
#define _TOOLSTYPES_H_INCLUDED_

#include <climits>
#include <string>
#include <stdint.h>

typedef int64_t codasip_int64_t;
typedef uint64_t codasip_uint64_t;

typedef codasip_int64_t codasip_signed_attr_t;
typedef codasip_uint64_t codasip_unsigned_attr_t;

typedef long double codasip_real_t;

/**
 *  \brief  Type used to store various size (always 64bit long).
 */
typedef codasip_uint64_t codasip_size_t;

/**
 *  \brief  Type used to handle addresses inside simulators.
 *  \note   This constant is used by the functional verification of the CPU.
 */
typedef codasip_uint64_t codasip_address_t;

const int CHAR_BIT_WIDTH = sizeof(char) * CHAR_BIT;
const int SHORT_BIT_WIDTH = sizeof(short) * CHAR_BIT;
const int INT_BIT_WIDTH = sizeof(int) * CHAR_BIT;
const int LONG_BIT_WIDTH = sizeof(long) * CHAR_BIT;
const int LONGLONG_BIT_WIDTH = sizeof(long long) * CHAR_BIT;

const int FLOAT_BIT_WIDTH = sizeof(float) * CHAR_BIT;
const int DOUBLE_BIT_WIDTH = sizeof(double) * CHAR_BIT;
// fixed size for long double because of different behavior of sizeof(long double) on different machines
const int LONG_DOUBLE_BIT_WIDTH = 128;

namespace codasip {
namespace profiler {

/// Access type for profiling info
typedef enum
{
    /// Count of read accesses
    ACCESS_READ,
    /// Count of write accesses
    ACCESS_WRITE,
    /// Count of cache hits
    CACHE_HIT,
    /// Count of cache misses
    CACHE_MISS
} AccessType;

/// Type for counting of accesses
typedef codasip_uint64_t Counter;

}   // namespace codasip::profiler
}   // namespace codasip

#endif  // _TOOLSTYPES_H_INCLUDED_
