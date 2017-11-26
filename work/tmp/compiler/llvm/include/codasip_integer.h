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
 *  \author Potesil Josef
 *  \date   22. 2. 2016
 *  \brief  Import all necessary declarations and definitions to work with \ref CODASIP_INT.
 */

#ifndef INC_CODASIP_INTEGER_H_
#define INC_CODASIP_INTEGER_H_

#include "codasip_integer/detail/defs.h"
#include "codasip_integer/integer_number.h"
#include "codasip_integer/integer_number/binary_ops.h"
#include "codasip_integer/integer_number/comparison.h"
#include "codasip_integer/integer_number/pod_compound_assignment.h"
#include "codasip_integer/detail/undefs.h"

namespace codasip {

/**
 *  \brief  Template alias for integer type with arbitrary precision.
 *  \tparam BITS target bit-width including sign
 *  \tparam SIGN whether to use signed (true) or unsigned (false) data type
 */
template<unsigned BITS, bool SIGN>
using Integer = integer::IntegerNumber<BITS, SIGN>;

/**
 *  \brief  Signed integer type with specified arbitrary precision.
 *  \tparam BITS target bit-width including sign
 */
template<unsigned BITS>
using Int = integer::IntegerNumber<BITS, true>;

/**
 *  \brief  Unsigned integer type with specified arbitrary precision.
 *  \tparam BITS target bit-width
 */
template<unsigned BITS>
using Uint = integer::IntegerNumber<BITS, false>;

/// 1024-bit wide signed integer data type
typedef Int<1024> MaxInt;

/// 1024-bit wide unsigned integer data type
typedef Uint<1024> MaxUint;

}  // namespace codasip

#endif  // INC_CODASIP_INTEGER_H_
