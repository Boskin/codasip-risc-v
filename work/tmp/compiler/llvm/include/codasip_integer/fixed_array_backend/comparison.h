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
 *  \date   9. 3. 2016
 *  \brief  Declaration/Implementation of the class.
 */

#ifndef INC_CODASIP_INTEGER_FIXED_ARRAY_BACKEND_COMPARISON_H_
#define INC_CODASIP_INTEGER_FIXED_ARRAY_BACKEND_COMPARISON_H_

#include "../detail/defs.h"
#include "../detail/misc.h"
#include "arithmetic.h"
#include <type_traits>
#include <functional>
#include <algorithm>

namespace codasip {
namespace integer {
namespace backends {
namespace detail {

using integer::detail::GetSignExtension;
using integer::detail::static_min_helper;
using integer::detail::static_max_helper;
using integer::detail::native_int_bitwidth_helper;

/**
 *  \addtogroup CODASIP_INT
 *  \{
 */

template<unsigned LHS_SIZE, typename T>
_CODASIP_INT_INLINE bool DoIsZero( const T* vec )
{
    T value = vec[0];
    for ( unsigned ii = 1; ii < LHS_SIZE; ++ii )
    {
        value |= vec[ii];
    }
    return value == 0;
}

template<unsigned MIN_SIZE, unsigned MAX_SIZE, typename T1, typename T2>
_CODASIP_INT_INLINE bool DoEqualSign( const T1* vec, const T2 sign )
{
    for ( unsigned ii = MIN_SIZE; ii < MAX_SIZE; ++ii )
    {
        if ( vec[ii] != static_cast<T1>(sign) )
        {
            return false;
        }
    }
    return true;
}

template<unsigned MIN_SIZE, unsigned MAX_SIZE, typename T1, typename T2>
_CODASIP_INT_INLINE void CopyAndExtend( T1* dst, const T2* src )
{
    std::memcpy( dst, src, sizeof(T1) * MIN_SIZE );
    std::memset( dst + MIN_SIZE,
        GetSignExtension(src[MIN_SIZE -1]),
        (MAX_SIZE - MIN_SIZE) * sizeof(T1) );
}

template<unsigned LHS_SIZE, typename T>
_CODASIP_INT_INLINE int DoCompareResult( const T* vec )
{
    if ( static_cast<T>(vec[LHS_SIZE -1] >> (native_int_bitwidth_helper<T>::value -1)) )
    {   // MSB is set, less than
        return -1;
    }
    else
    {
        return !DoIsZero<LHS_SIZE>(vec);
    }
}

template<unsigned SIZE, typename T>
_CODASIP_INT_INLINE
_CODASIP_INT_ENABLE_IF_POD(T, int) DoCompareRaw( T* lhs, const T* rhs )
{
    DoBinaryMinus<SIZE, SIZE>( lhs, rhs );
    return DoCompareResult<SIZE>( lhs );
}

template<unsigned LHS_SIZE, unsigned RHS_SIZE, typename T1, typename T2>
_CODASIP_INT_INLINE
_CODASIP_INT_ENABLE_IF((sizeof(T1) == sizeof(T2)) && (LHS_SIZE == RHS_SIZE), bool)
DoEqual( const T1* lhs, const T2* rhs )
{
    _CODASIP_INT_VECTOR_ASSERTIONS( T1, T2 );

    return std::memcmp(lhs, rhs, sizeof(T1) * LHS_SIZE) == 0;
}

template<unsigned LHS_SIZE, unsigned RHS_SIZE, typename T1, typename T2>
_CODASIP_INT_INLINE
_CODASIP_INT_ENABLE_IF((LHS_SIZE > RHS_SIZE), bool)
DoEqual( const T1* lhs, const T2* rhs )
{
    _CODASIP_INT_VECTOR_ASSERTIONS( T1, T2 );

    enum : unsigned
    {
        MIN_SIZE = static_min_helper<LHS_SIZE, RHS_SIZE>::value,
        MAX_SIZE = static_max_helper<LHS_SIZE, RHS_SIZE>::value
    };
    for ( unsigned ii = 0; ii < MIN_SIZE; ++ii )
    {
        if ( lhs[ii] != static_cast<T1>(rhs[ii]) )
        {
            return false;
        }
    }
    return DoEqualSign<MIN_SIZE, MAX_SIZE>( lhs,
        GetSignExtension(rhs[RHS_SIZE -1]) );
}

template<unsigned LHS_SIZE, unsigned RHS_SIZE, typename T1, typename T2>
_CODASIP_INT_INLINE
_CODASIP_INT_ENABLE_IF((LHS_SIZE < RHS_SIZE), bool)
DoEqual( const T1* lhs, const T2* rhs )
{
    return DoEqual<RHS_SIZE, LHS_SIZE>( rhs, lhs );
}

template<unsigned LHS_SIZE, typename T1, typename T2>
_CODASIP_INT_INLINE
_CODASIP_INT_ENABLE_IF((sizeof(T1) >= sizeof(T2)), bool)
DoEqual( const T1* lhs, const T2 rhs )
{
    _CODASIP_INT_VECTOR_SCALAR_ASSERTIONS( T1, T2, LHS_SIZE );

    if ( lhs[0] != static_cast<T1>(rhs) )
    {
        return false;
    }
    // perform sign extension, for unsigned types there should be a zero
    return DoEqualSign<1, LHS_SIZE>( lhs, GetSignExtension(rhs) );
}

template<unsigned LHS_SIZE, typename T1, typename T2>
_CODASIP_INT_INLINE
_CODASIP_INT_ENABLE_IF((sizeof(T1) < sizeof(T2)) && ((LHS_SIZE * sizeof(T1)) >= sizeof(T2)), bool)
DoEqual( T1* lhs, const T2 rhs )
{   // cast it to shorter type and look at it as array
    _CODASIP_INT_VECTOR_SCALAR_ASSERTIONS( T1, T2, LHS_SIZE );

    enum : unsigned
    {
        MIN_SIZE = static_min_helper<LHS_SIZE, sizeof(T2) / sizeof(T1)>::value
    };
    T2 value = rhs;
    for ( unsigned ii = 0; ii < MIN_SIZE; ++ii )
    {
        if ( lhs[ii] != static_cast<T1>(value) )
        {
            return false;
        }
        value >>= integer::detail::native_int_bitwidth_helper<T1>::value;
    }
    return DoEqualSign<MIN_SIZE, LHS_SIZE>( lhs, value );
}

template<unsigned LHS_SIZE, typename T1, typename T2>
_CODASIP_INT_INLINE
_CODASIP_INT_ENABLE_IF((sizeof(T1) < sizeof(T2)) && ((LHS_SIZE * sizeof(T1)) < sizeof(T2)), bool)
DoEqual( T1* lhs, const T2 rhs )
{   // cast it to shorter type and look at it as array
    _CODASIP_INT_VECTOR_SCALAR_ASSERTIONS( T1, T2, LHS_SIZE );

    T2 value = rhs;
    for ( unsigned ii = 0; ii < LHS_SIZE; ++ii )
    {
        if ( lhs[ii] != static_cast<T1>(value) )
        {
            return false;
        }
        value >>= integer::detail::native_int_bitwidth_helper<T1>::value;
    }
    return static_cast<T2>(GetSignExtension(lhs[LHS_SIZE -1])) == value;
}

template<unsigned LHS_SIZE, unsigned RHS_SIZE, typename T1, typename T2>
_CODASIP_INT_INLINE
int DoCompare( const T1* lhs, const T2* rhs )
{
    _CODASIP_INT_VECTOR_ASSERTIONS( T1, T2 );

    enum : unsigned { SIZE = static_max_helper<LHS_SIZE, RHS_SIZE>::value +1 };

    typedef typename integer::detail::BinaryResultMaxPod<
        native_int_bitwidth_helper<T1>::value,
        std::is_signed<T1>::value,
        native_int_bitwidth_helper<T1>::value,
        std::is_signed<T2>::value>::type type;

    type lhsTmp[SIZE];
    type rhsTmp[SIZE];
    CopyAndExtend<LHS_SIZE, SIZE>( lhsTmp, lhs );
    CopyAndExtend<RHS_SIZE, SIZE>( rhsTmp, rhs );
    return DoCompareRaw<SIZE>( lhsTmp, rhsTmp );
}

template<unsigned LHS_SIZE, typename T1, typename T2>
_CODASIP_INT_INLINE
_CODASIP_INT_ENABLE_IF_POD(T2, int) DoCompare( const T1* lhs, const T2 rhs )
{
    _CODASIP_INT_VECTOR_SCALAR_ASSERTIONS( T1, T2, LHS_SIZE );

    enum : unsigned
    {   // check whether lhs must be extended
        SIZE = (((LHS_SIZE * sizeof(T1)) >= sizeof(T2))
            ? LHS_SIZE
            : (sizeof(T2) / sizeof(T1))) +1
    };
    typedef typename integer::detail::BinaryResultMaxPod<
        native_int_bitwidth_helper<T1>::value,
        std::is_signed<T1>::value,
        native_int_bitwidth_helper<T1>::value,
        std::is_signed<T2>::value>::type type;

    type lhsTmp[SIZE];
    type rhsTmp[SIZE];
    CopyAndExtend<LHS_SIZE, SIZE>( lhsTmp, lhs );
    DoToVector<T2, SIZE>( rhsTmp, rhs );
    return DoCompareRaw<SIZE>( lhsTmp, rhsTmp );
}

template<unsigned LHS_SIZE, unsigned RHS_SIZE, typename T1, typename T2>
_CODASIP_INT_INLINE
int DoLess( const T1* lhs, const T2* rhs )
{
    return DoCompare<LHS_SIZE, RHS_SIZE>( lhs, rhs ) < 0;
}

template<unsigned LHS_SIZE, typename T1, typename T2>
_CODASIP_INT_INLINE
int DoLess( const T1* lhs, const T2 rhs )
{
    return DoCompare<LHS_SIZE>( lhs, rhs ) < 0;
}

template<unsigned LHS_SIZE, unsigned RHS_SIZE, typename T1, typename T2>
_CODASIP_INT_INLINE
int DoGreater( const T1* lhs, const T2* rhs )
{
    return DoCompare<LHS_SIZE, RHS_SIZE>( lhs, rhs ) > 0;
}

template<unsigned LHS_SIZE, typename T1, typename T2>
_CODASIP_INT_INLINE
int DoGreater( const T1* lhs, const T2 rhs )
{
    return DoCompare<LHS_SIZE>( lhs, rhs ) > 0;
}

/** \} */ // addtogroup

}   // namespace codasip::integer::backends::detail
}   // namespace codasip::integer::backends
}   // namespace codasip::integer
}   // namespace codasip

#endif  // INC_CODASIP_INTEGER_FIXED_ARRAY_BACKEND_COMPARISON_H_
