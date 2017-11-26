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
 *  \date   3. 3. 2016
 *  \brief  Implementation of arithmetic operations on vector of integers.
 */

#ifndef INC_CODASIP_INTEGER_FIXED_ARRAY_BACKEND_ARITHMETIC_H_
#define INC_CODASIP_INTEGER_FIXED_ARRAY_BACKEND_ARITHMETIC_H_

#include "../detail/defs.h"
#include "../detail/misc.h"
#include "bitwise_ops.h"
#include "assign.h"
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


/**
 *  \class  DoubleTypeHelper
 *  \brief  Pick data type which is twice as large with the same sign. Does not
 *          work for 64 bit types.
 */
template<typename T, bool = native_int_bitwidth_helper<T>::value <= native_int_bitwidth_helper<uint32_t>::value>
struct DoubleTypeHelper;

template<typename T>
struct DoubleTypeHelper<T, true>
{
    typedef typename underlying_type_helper<
        native_int_bitwidth_helper<T>::value + native_int_bitwidth_helper<uint8_t>::value,
        std::is_signed<T>::value>::type type;
};

/**
 *  \brief  Do propagate carry and sign from lower parts to higher ones for
 *          additive operator.
 *  \tparam Binary additive binary operator/functor
 *  \param  lhs source vector to be modified
 *  \param  carry initial carry value
 */
template
<
    template<class> class Binary,
    unsigned MIN_SIZE,
    unsigned LHS_SIZE,
    typename T1,
    typename T2,
    typename DoubleT
>
_CODASIP_INT_INLINE void DoAdditivePropagateSignAndCarry( T1* lhs, const T2 sign,
    DoubleT carry )
{
    typedef typename std::make_unsigned<T1>::type UT;
    typedef typename DoubleTypeHelper<UT>::type double_UT_type;

    for ( unsigned ii = MIN_SIZE; ii < LHS_SIZE && (carry != 0 || sign != 0); ++ii )
    {
        carry += Binary<double_UT_type>()(
            static_cast<UT>(lhs[ii]),
            static_cast<UT>(sign) );
        lhs[ii] = static_cast<UT>( carry );
        carry >>= native_int_bitwidth_helper<UT>::value;
    }
}

/**
 *  \brief  Do additive operation of two vectors. The size of vectors element
 *          must fit, the sign does not matter. If the second operand is smaller,
 *          it will be sign extended.
 *  \tparam Binary additive binary operator/functor
 *  \tparam LHS_SIZE size of the first vector
 *  \tparam RHS_SIZE size of the second vector
 *  \param[in, out] lhs source vector used as first operand and place where to
 *          store the result
 *  \param[in]  rhs second vector operand
 */
template
<
    template<class> class Binary,
    unsigned LHS_SIZE,
    unsigned RHS_SIZE,
    typename T1,
    typename T2
>
_CODASIP_INT_INLINE void DoAdditive( T1* lhs, const T2* rhs )
{
    _CODASIP_INT_VECTOR_ASSERTIONS( T1, T2 );
    enum : unsigned
    {
        MIN_SIZE = integer::detail::static_min_helper<LHS_SIZE, RHS_SIZE>::value,
        T1_BITS = native_int_bitwidth_helper<T1>::value
    };
    typedef typename underlying_type_helper<T1_BITS, false>::type UT;
    typedef typename DoubleTypeHelper<UT>::type double_UT_type;
    typedef typename std::make_signed<double_UT_type>::type double_ST_type;

    double_ST_type carry = 0;

    for ( unsigned ii = 0; ii < MIN_SIZE; ++ii )
    {
        carry += Binary<double_UT_type>()(
            static_cast<UT>(lhs[ii]),
            static_cast<UT>(rhs[ii]) );
        lhs[ii] = static_cast<T1>( carry );
        carry >>= native_int_bitwidth_helper<T1>::value;
    }
    DoAdditivePropagateSignAndCarry<Binary, MIN_SIZE, LHS_SIZE>( lhs,
        GetSignExtension(rhs[RHS_SIZE -1]),
        carry );
}

/**
 *  \brief  Do additive operation of a vector with scalar. This version is
 *          designed to work with scalar which is smaller or equal to size of
 *          single vector element.
 *  \tparam Binary additive binary operator/functor
 *  \tparam LHS_SIZE size of the first vector
 *  \param[in, out] lhs source vector used as first operand and place where to
 *          store the result
 *  \param[in]  rhs second scalar operand
 */
template <template<typename> class Binary, unsigned LHS_SIZE, typename T1, typename T2>
_CODASIP_INT_INLINE
_CODASIP_INT_ENABLE_IF((sizeof(T1) >= sizeof(T2)), void)
DoAdditive( T1* lhs, const T2 rhs )
{
    _CODASIP_INT_VECTOR_SCALAR_ASSERTIONS( T1, T2, LHS_SIZE );

    typedef typename std::make_unsigned<T1>::type UT;
    typedef typename DoubleTypeHelper<T1>::type double_T_type;
    typedef typename std::make_signed<double_T_type>::type double_ST_type;

    double_ST_type carry = Binary<double_ST_type>()(
        static_cast<UT>(lhs[0]),
        static_cast<UT>(rhs) );
    lhs[0] = static_cast<T1>( carry );
    carry >>= native_int_bitwidth_helper<T1>::value;
    DoAdditivePropagateSignAndCarry<std::plus, 1, LHS_SIZE>( lhs,
        GetSignExtension(rhs),
        carry );
}

/**
 *  \brief  Do additive operation of a vector with scalar. This version is
 *          designed to work with scalar which is greater than size of single
 *          vector element.
 *  \tparam Binary additive binary operator/functor
 *  \tparam LHS_SIZE size of the first vector
 *  \param[in, out] lhs source vector used as first operand and place where to
 *          store the result
 *  \param[in]  rhs second scalar operand
 */
template <template<typename> class Binary, unsigned LHS_SIZE, typename T1, typename T2>
_CODASIP_INT_INLINE
_CODASIP_INT_ENABLE_IF((sizeof(T1) < sizeof(T2)), void)
DoAdditive( T1* lhs, const T2 rhs )
{   // cast it to shorter type and look at it as array
    _CODASIP_INT_VECTOR_SCALAR_ASSERTIONS( T1, T2, LHS_SIZE );

    enum : unsigned
    {
        MIN_SIZE = integer::detail::static_min_helper<LHS_SIZE, sizeof(T2) / sizeof(T1)>::value
    };
    typedef typename std::make_unsigned<T1>::type UT;
    typedef typename DoubleTypeHelper<T1>::type double_T_type;
    typedef typename std::make_signed<double_T_type>::type double_ST_type;

    double_ST_type carry = 0;
    T2 value = rhs;
    for ( unsigned ii = 0; ii < LHS_SIZE; ++ii )
    {
        carry += Binary<double_ST_type>()(
            static_cast<UT>(lhs[ii]),
            static_cast<UT>(value) );
        lhs[ii] = static_cast<T1>( carry );
        carry >>= native_int_bitwidth_helper<T1>::value;
        value >>= native_int_bitwidth_helper<T1>::value;
    }
    DoAdditivePropagateSignAndCarry<Binary, MIN_SIZE, LHS_SIZE>( lhs,
        GetSignExtension(value),
        carry );
}

/**
 *  \brief  Implements binary addition of two vectors. The size of vectors
 *          element must fit, the sign does not matter.
 *  \tparam LHS_SIZE size of the first vector
 *  \tparam RHS_SIZE size of the second vector
 *  \param[in, out] lhs source vector used as first operand and place where to
 *          store the result
 *  \param[in]  rhs second vector operand
 */
template<unsigned LHS_SIZE, unsigned RHS_SIZE, typename T1, typename T2>
_CODASIP_INT_INLINE void DoBinaryPlus( T1* lhs, const T2* rhs )
{
    DoAdditive<std::plus, LHS_SIZE, RHS_SIZE, T1, T2>( lhs, rhs );
}

/**
 *  \brief  Implements binary addition of a vector and scalar.
 *  \tparam LHS_SIZE size of the first vector
 *  \param[in, out] lhs source vector used as first operand and place where to
 *          store the result
 *  \param  rhs second scalar operand
 */
template<unsigned LHS_SIZE, typename T1, typename T2>
_CODASIP_INT_INLINE
_CODASIP_INT_ENABLE_IF_POD(T2, void) DoBinaryPlus( T1* lhs, const T2 rhs )
{
    DoAdditive<std::plus, LHS_SIZE, T1, T2>( lhs, rhs );
}

/**
 *  \brief  Implements binary subtraction of two vectors.
 *  \copydetails DoBinaryPlus( T1*, const T2* )
 */
template<unsigned LHS_SIZE, unsigned RHS_SIZE, typename T1, typename T2>
_CODASIP_INT_INLINE void DoBinaryMinus( T1* lhs, const T2* rhs )
{
    DoAdditive<std::minus, LHS_SIZE, RHS_SIZE, T1, T2>( lhs, rhs );
}

/**
 *  \brief  Implements binary subtraction of a vector and scalar.
 *  \copydetails DoBinaryPlus( T1*, const T2 )
 */
template<unsigned LHS_SIZE, typename T1, typename T2>
_CODASIP_INT_INLINE
_CODASIP_INT_ENABLE_IF_POD(T2, void) DoBinaryMinus( T1* lhs, const T2 rhs )
{
    DoAdditive<std::minus, LHS_SIZE, T1, T2>( lhs, rhs );
}

/**
 *  \brief  Do a single round of vector multiplication algorithm. Works only for
 *          unsigned integers.
 *  \param[in, out] vector where to store result
 *  \param[in, out] tmp auxiliary buffer
 *  \param  lhs vector integer to be multiplied
 *  \param  rhs second multiplication algorithm
 *  \param  shiftOffset initial bit position of the \em rhs
 */
template<unsigned LHS_SIZE, typename T1, typename T2>
_CODASIP_INT_INLINE
void DoMultiplicationUnsignedRound( T1* result,
    T1* tmp,
    const T1* lhs,
    const T2 rhs,
    const unsigned shiftOffset )
{
    T2 rhsValue = rhs;
    for ( unsigned ii = 0; (ii < native_int_bitwidth_helper<T2>::value) && (rhsValue != 0); ++ii )
    {
        if ( rhsValue & static_cast<T2>(1) )
        {
            DoBitwiseShiftLeftCompound<LHS_SIZE>( tmp, lhs, ii + shiftOffset );
            DoBinaryPlus<LHS_SIZE, LHS_SIZE>( result, tmp );
        }
        rhsValue >>= 1;
    }
}

/**
 *  \brief  Multiply two unsigned integer vectors.
 *  \param[in, out] lhs first operand
 *  \param[in]  rhs second operand
 */
template<unsigned LHS_SIZE, unsigned RHS_SIZE, typename T1, typename T2>
_CODASIP_INT_INLINE
void DoBinaryMultiplication( T1* lhs, const T2* rhs )
{
    _CODASIP_INT_VECTOR_ASSERTIONS( T1, T2 );

    T1 result[LHS_SIZE] = {0};
    T1 tmp[LHS_SIZE];

    for ( unsigned ii = 0; ii < RHS_SIZE; ++ii )
    {
        DoMultiplicationUnsignedRound<LHS_SIZE>( result, tmp, lhs, rhs[ii],
            ii * native_int_bitwidth_helper<T2>::value );
    }
    const T2 sign = GetSignExtension(rhs[RHS_SIZE -1]);
    for ( unsigned ii = RHS_SIZE; ii < LHS_SIZE; ++ii )
    {
        DoMultiplicationUnsignedRound<LHS_SIZE>( result, tmp, lhs, sign,
            ii * native_int_bitwidth_helper<T2>::value );
    }
    std::memcpy( lhs, result, sizeof(T1) * LHS_SIZE );
}

/**
 *  \brief  Multiply unsigned integer vector with a scalar.
 *  \param[in, out] lhs first operand
 *  \param[in]  rhs second operand
 */
template<unsigned LHS_SIZE, typename T1, typename T2>
_CODASIP_INT_INLINE
void DoBinaryMultiplication( T1* lhs, const T2 rhs )
{
    T1 tmpRhs[LHS_SIZE];
    ::codasip::integer::backends::detail::DoAssign<LHS_SIZE>( tmpRhs, rhs );
    DoBinaryMultiplication<LHS_SIZE, LHS_SIZE>( lhs, tmpRhs );
}

/**
 *  \{
 *  \brief  Compute unary negation (-) of given vector.
 *  \param[in, out] lhs source vector to be modified
 */
template<unsigned LHS_SIZE, typename T>
_CODASIP_INT_INLINE
_CODASIP_INT_ENABLE_IF((LHS_SIZE == 1), void) DoUnaryNeg( T* lhs )
{
    lhs[LHS_SIZE -1] = static_cast<T>(-lhs[LHS_SIZE -1]);
}

template<unsigned LHS_SIZE, typename T>
_CODASIP_INT_INLINE
_CODASIP_INT_ENABLE_IF((LHS_SIZE > 1), void)
DoUnaryNeg( T* lhs )
{
    typedef typename std::make_unsigned<T>::type UT;
    typedef typename DoubleTypeHelper<UT>::type double_T_type;
    typedef typename std::make_signed<double_T_type>::type double_ST_type;

    double_ST_type carry = 0;
    for ( unsigned ii = 0; ii < LHS_SIZE; ++ii )
    {
        carry -= static_cast<UT>( lhs[ii] );
        lhs[ii] = static_cast<T>( carry );
        carry >>= native_int_bitwidth_helper<UT>::value;
    }
}

/** \} */
/** \} */ // addtogroup

}   // namespace codasip::integer::backends::detail
}   // namespace codasip::integer::backends
}   // namespace codasip::integer
}   // namespace codasip

#endif  // INC_CODASIP_INTEGER_FIXED_ARRAY_BACKEND_ARITHMETIC_H_
