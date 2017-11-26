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
 *  \date   10. 3. 2016
 *  \brief  Implementation of the division and modulus operations on vector of
 *          integers.
 */

#ifndef INC_CODASIP_INTEGER_FIXED_ARRAY_BACKEND_DIVISION_H_
#define INC_CODASIP_INTEGER_FIXED_ARRAY_BACKEND_DIVISION_H_

#include "../detail/defs.h"
#include "../detail/misc.h"
#include "arithmetic.h"
#include "bitwise_ops.h"
#include "comparison.h"
#include <type_traits>
#include <functional>

namespace codasip {
namespace integer {
namespace backends {
namespace detail {

using integer::detail::GetSignExtension;
using integer::detail::native_int_bitwidth_helper;
using integer::detail::underlying_type_helper;

/**
 *  \addtogroup CODASIP_INT
 *  \{
 */

template<unsigned LHS_SIZE, unsigned RHS_SIZE, typename T>
_CODASIP_INT_INLINE void DoDivModUnsigned( T* rem, T* quo, T* lhs, const T* rhs )
{
    _CODASIP_INT_VECTOR_ASSERTIONS( T, T );
    enum : unsigned
    {
        BITS = native_int_bitwidth_helper<T>::value
    };
    typedef typename std::make_unsigned<T>::type UT;

    for ( unsigned ii = 0; ii < LHS_SIZE * BITS; ++ii )
    {
        DoBitwiseShiftLeftCompound<LHS_SIZE>( rem, 1 );
        rem[0] |= static_cast<T>(static_cast<UT>(static_cast<UT>(
            lhs[LHS_SIZE -1]) >> (BITS -1)));
        DoBitwiseShiftLeftCompound<LHS_SIZE>( lhs, 1 );
        DoBitwiseShiftLeftCompound<LHS_SIZE>( quo, 1 );

        while ( DoCompare<LHS_SIZE, RHS_SIZE>(rem, rhs) >= 0 )
        {
            DoBinaryMinus<LHS_SIZE, RHS_SIZE>( rem, rhs );
            DoBinaryPlus<LHS_SIZE>( quo, static_cast<T>(1) );
        }
    }
}

template<bool DIV, unsigned LHS_SIZE, unsigned RHS_SIZE, typename T>
_CODASIP_INT_INLINE void DoDivModUnsigned( T* lhs, const T* rhs )
{
    if ( DoEqual<RHS_SIZE>(rhs, static_cast<T>(1)) )
    {   // division/modulus by one
        if ( !DIV )
        {
            std::memset( lhs, 0, LHS_SIZE * sizeof(T) );
        }
        return;
    }
    T rem[LHS_SIZE] = {0};
    T quo[LHS_SIZE] = {0};
    DoDivModUnsigned<LHS_SIZE, RHS_SIZE, T>( rem, quo, lhs, rhs );
    // choose quotient or remainder
    std::memcpy( lhs, DIV ? quo : rem, LHS_SIZE * sizeof(T) );
}

}   // namespace codasip::integer::backends::detail
}   // namespace codasip::integer::backends
}   // namespace codasip::integer
}   // namespace codasip

/** \} */

#endif  // INC_CODASIP_INTEGER_FIXED_ARRAY_BACKEND_DIVISION_H_
