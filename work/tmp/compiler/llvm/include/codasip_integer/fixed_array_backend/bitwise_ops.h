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
 *  \date   2. 3. 2016
 *  \brief  Implementation of bitwise operations (and, or, xor, shift) on vector
 *          integer types.
 */

#ifndef INC_CODASIP_INTEGER_FIXED_ARRAY_BACKEND_BITWISE_OPS_H_
#define INC_CODASIP_INTEGER_FIXED_ARRAY_BACKEND_BITWISE_OPS_H_

#include "../detail/defs.h"
#include "../detail/misc.h"
#include <type_traits>
#include <functional>
#include <cstring>      // std::memmove, std::memset

namespace codasip {
namespace integer {
namespace backends {
namespace detail {

using integer::detail::GetSignExtension;
using integer::detail::native_int_bitwidth_helper;

/**
 *  \addtogroup CODASIP_INT
 *  \{
 */

/**
 *  \brief  Perform array version of bit-wise operation.
 *  \tparam Binary binary functor implementing the operation.
 *  \tparam LHS_SIZE size of first array
 *  \tparam RHS_SIZE size of second array
 *  \param  lhs first operand
 *  \param  rhs second operand
 */
template
<
    class Binary,
    unsigned LHS_SIZE,
    unsigned RHS_SIZE,
    typename T1,
    typename T2
>
_CODASIP_INT_INLINE
void DoBitwiseOp( T1* lhs, const T2* rhs )
{
    _CODASIP_INT_VECTOR_ASSERTIONS( T1, T2 );
    enum : unsigned
    {
        MIN_SIZE = integer::detail::static_min_helper<LHS_SIZE, RHS_SIZE>::value
    };
    for ( unsigned ii = 0; ii < MIN_SIZE; ++ii )
    {
        Binary()( lhs[ii], rhs[ii] );
    }
    // perform sign extension, for unsigned types there should be a zero
    const T2 sign = GetSignExtension(rhs[RHS_SIZE -1]);
    for ( unsigned ii = MIN_SIZE; ii < LHS_SIZE; ++ii )
    {
        Binary()( lhs[ii], sign );
    }
}

/**
 *  \brief  Perform bit-wise operation of vector with scalar. The scalar will be
 *          sign extended to the size of array. This version should be used in
 *          situations when \em rhs is shorter or the same as array element type.
 *  \tparam Binary binary functor implementing the operation.
 *  \tparam LHS_SIZE size of first array
 *  \param  lhs first operand, array
 *  \param  rhs second operand, scalar
 */
template
<
    class Binary,
    unsigned LHS_SIZE,
    typename T1,
    typename T2
>
_CODASIP_INT_INLINE
_CODASIP_INT_ENABLE_IF((sizeof(T1) >= sizeof(T2)), void)
DoBitwiseOp( T1* lhs, const T2 rhs )
{
    _CODASIP_INT_VECTOR_SCALAR_ASSERTIONS( T1, T2, LHS_SIZE );

    Binary()( lhs[0], rhs );
    // perform sign extension, for unsigned types there should be a zero
    const T2 sign = GetSignExtension(rhs);
    for ( unsigned ii = 1; ii < LHS_SIZE; ++ii )
    {
        Binary()( lhs[ii], sign );
    }
}

/**
 *  \brief  Perform bit-wise operation of vector with scalar. The scalar will be
 *          sign extended to the size of array. This version should be used in
 *          situations when \em rhs is wider than array element type.
 *  \tparam Binary binary functor implementing the operation.
 *  \tparam LHS_SIZE size of first array
 *  \param  lhs first operand, array
 *  \param  rhs second operand, scalar
 */
template
<
    class Binary,
    unsigned LHS_SIZE,
    typename T1,
    typename T2
>
_CODASIP_INT_INLINE
_CODASIP_INT_ENABLE_IF((sizeof(T1) < sizeof(T2)), void)
DoBitwiseOp( T1* lhs, const T2 rhs )
{   // cast it to shorter type and look at it as array
    _CODASIP_INT_VECTOR_SCALAR_ASSERTIONS( T1, T2, LHS_SIZE );

    enum : unsigned
    {
        MIN_SIZE = integer::detail::static_min_helper<LHS_SIZE, sizeof(T2) / sizeof(T1)>::value
    };
    T2 value = rhs;
    for ( unsigned ii = 0; ii < MIN_SIZE; ++ii )
    {
        Binary()( lhs[ii], value );
        value >>= integer::detail::native_int_bitwidth_helper<T1>::value;
    }
    for ( unsigned ii = MIN_SIZE; ii < LHS_SIZE; ++ii )
    {
        Binary()( lhs[ii], value );
    }
}

/**
 *  \brief  Invert every bit in every element of given array.
 *  \param[in, out] array to be modified
 */
template<unsigned LHS_SIZE, typename T>
_CODASIP_INT_INLINE void DoBitwiseNot( T* array )
{
    for ( unsigned ii = 0; ii < LHS_SIZE; ++ii )
    {
        array[ii] = ~array[ii];
    }
}

/**
 *  \brief  Perform one round of arithmetic shift right when the number of
 *          shifted bits is not aligned to shifted type. The value is created
 *          from two array elements.
 *  \param  high first array element
 *  \param  low second array element
 *  \param  remLeft number of bits to shift left the first array element
 *  \param  remRight number of bits to shift left the second array element
 */
template<typename T>
_CODASIP_INT_INLINE T ShiftRightSingleRoundAnaligned( const T high,
    const T low,
    const unsigned remLeft,
    const unsigned remRight )
{
    typedef typename std::make_unsigned<T>::type UT;

    return static_cast<T>(high << remLeft) |
        static_cast<T>(static_cast<UT>(static_cast<UT>(low) >> remRight));
}

/**
 *  \brief  Perform one round of logical shift left when the number of shifted
 *          bits is not aligned to shifted type. The value is created from two
 *          array elements.
 *  \param  high first array element
 *  \param  low second array element
 *  \param  remLeft number of bits to shift left the second array element
 *  \param  remRight number of bits to shift left the first array element
 */
template<typename T>
_CODASIP_INT_INLINE T ShiftLeftSingleRoundAnaligned( const T high,
    const T low,
    const unsigned remLeft,
    const unsigned remRight )
{
    return ShiftRightSingleRoundAnaligned( high, low, remRight, remLeft );
}

/**
 *  \{
 *  \brief  Do arithmetic shift right on given array.
 *  \param[in, out] array to be modified
 *  \param  rhs how many bits to shift
 */
template<unsigned LHS_SIZE, typename T>
_CODASIP_INT_INLINE
_CODASIP_INT_ENABLE_IF((LHS_SIZE == 1), void) DoBitwiseShiftRightCompound( T* lhs,
    const unsigned rhs )
{
    if ( rhs >= native_int_bitwidth_helper<T>::value )
    {
        lhs[0] = GetSignExtension(lhs[0]);
    }
    else
    {
        lhs[0] = static_cast<T>(lhs[0] >> rhs);
    }
}

template<unsigned LHS_SIZE, typename T>
_CODASIP_INT_INLINE
_CODASIP_INT_ENABLE_IF((LHS_SIZE > 1), void) DoBitwiseShiftRightCompound( T* lhs,
    const unsigned rhs )
{
    enum : unsigned { T_BITS = native_int_bitwidth_helper<T>::value };

    if ( rhs >= (T_BITS * LHS_SIZE) )
    {   // shift over the whole array, e.g. uint128 >> 128, fill with sign
        std::memset( lhs, GetSignExtension(lhs[LHS_SIZE -1]), sizeof(T) * LHS_SIZE );
    }
    else if ( rhs % T_BITS == 0 )
    {   // moving aligned elements, e.g. uint128 >> 32
        const unsigned offset = std::min( rhs / T_BITS, LHS_SIZE );
        for ( unsigned ii = offset; ii < LHS_SIZE; ++ii )
        {
            lhs[ii - offset] = lhs[ii];
        }
        // fill highest bits with sign
        std::memset( lhs + LHS_SIZE - offset,
            GetSignExtension(lhs[LHS_SIZE -1]),
            offset * sizeof(T) );
    }
    else
    {   // unaligned shift
        const unsigned offset = rhs / T_BITS;
        const unsigned remRight = rhs % T_BITS;
        const unsigned remLeft = T_BITS - remRight;
        for ( unsigned ii = offset; ii < LHS_SIZE -1; ++ii )
        {
            lhs[ii - offset] = ShiftRightSingleRoundAnaligned( lhs[ii + 1],
                lhs[ii], remLeft, remRight );
        }
        const T sign = GetSignExtension(lhs[LHS_SIZE -1]);
        lhs[LHS_SIZE - 1 - offset] = ShiftRightSingleRoundAnaligned( sign,
            lhs[LHS_SIZE -1], remLeft, remRight );
        // fill highest bits with sign
        std::memset( lhs + LHS_SIZE - offset, sign, offset * sizeof(T) );
    }
}

/**
 *  \} \{
 *  \brief  Do shift left on given array.
 *  \param[in, out] array to be modified
 *  \param  rhs how many bits to shift
 */
template<unsigned LHS_SIZE, typename T>
_CODASIP_INT_INLINE
_CODASIP_INT_ENABLE_IF((LHS_SIZE == 1), void) DoBitwiseShiftLeftCompound( T* lhs,
    const unsigned rhs )
{
    if ( rhs >= native_int_bitwidth_helper<T>::value )
    {
        lhs[0] = 0;
    }
    else
    {
        lhs[0] = static_cast<T>(lhs[0] << rhs);
    }
}

template<unsigned LHS_SIZE, typename T>
_CODASIP_INT_INLINE
void DoBitwiseShiftLeftCompound( T* result, const T* lhs, const unsigned rhs )
{
    enum : int { T_BITS = native_int_bitwidth_helper<T>::value };
    typedef typename std::make_unsigned<T>::type UT;

    if ( rhs == 0 )
    {
        std::memcpy( result, lhs, sizeof(T) * LHS_SIZE );
    }
    else if ( rhs >= (T_BITS * LHS_SIZE) )
    {   // shift over the whole array, e.g. uint128 >> 128, fill with sign
        std::memset( result, 0, sizeof(T) * LHS_SIZE );
    }
    else if ( rhs % T_BITS == 0 )
    {   // moving aligned elements, e.g. uint128 >> 32
        const unsigned offset = std::min( rhs / T_BITS, LHS_SIZE );
        for ( unsigned ii = LHS_SIZE; ii > offset; --ii )
        {
            result[ii -1] = lhs[ii - offset -1];
        }
        // fill highest bits with sign
        std::memset( result, 0, offset * sizeof(T) );
    }
    else
    {   // unaligned shift
        const unsigned offset = rhs / T_BITS;
        const unsigned remRight = rhs % T_BITS;
        const unsigned remLeft = T_BITS - remRight;
        for ( unsigned ii = LHS_SIZE; ii > offset +1; --ii )
        {
            result[ii -1] = ShiftLeftSingleRoundAnaligned( lhs[ii - offset -1],
                lhs[ii - offset -2], remLeft, remRight );
        }
        result[offset] = static_cast<T>(static_cast<UT>(static_cast<UT>(lhs[0]) << remRight));
        // fill lowest bits with zeros
        std::memset( result, 0, offset * sizeof(T) );
    }
}

template<unsigned LHS_SIZE, typename T>
_CODASIP_INT_INLINE
_CODASIP_INT_ENABLE_IF((LHS_SIZE > 1), void) DoBitwiseShiftLeftCompound( T* lhs,
    const unsigned rhs )
{
    DoBitwiseShiftLeftCompound<LHS_SIZE, T>( lhs, lhs, rhs );
}

/**
 *  \}
 *  \}
 */

}   // namespace codasip::integer::backends::detail
}   // namespace codasip::integer::backends
}   // namespace codasip::integer
}   // namespace codasip

#endif  // INC_CODASIP_INTEGER_FIXED_ARRAY_BACKEND_BITWISE_OPS_H_
