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
 *  \brief  Implementation of assignment and conversion functions between scalar
 *          C types and vector types used by
 *          codasip::integer::backends::FixedArrayIntegerBackend.
 */

#ifndef INC_CODASIP_INTEGER_FIXED_ARRAY_BACKEND_ASSIGN_H_
#define INC_CODASIP_INTEGER_FIXED_ARRAY_BACKEND_ASSIGN_H_

#include "../detail/defs.h"
#include <type_traits>
#include <functional>
#include <cstring>      // std::memcpy, std::memset

namespace codasip {
namespace integer {
namespace backends {
namespace detail {

using integer::detail::GetSignExtension;
using integer::detail::static_min_helper;
using integer::detail::native_int_bitwidth_helper;
using integer::detail::BitMaskHelper;

/**
 *  \addtogroup CODASIP_INT
 *  \{
 */

/**
 *  \class  ConcatenationHelper
 *  \brief  Helper class used to create scalar values from vector elements. The
 *          template uses recursion to generate proper number of concatenations.
 *  \tparam S scalar/returned/result type
 *  \tparam V vector/array type
 *  \tparam N number of array elements used for concatenation
 */
template<typename S, typename V, unsigned N>
struct ConcatenationHelper
{
    enum : unsigned
    {   /// bit-width of the array element
        T_BITWIDTH = native_int_bitwidth_helper<V>::value,
        /// LSB position of one array element in scalar
        SHIFT_COUNT = T_BITWIDTH * (N - 1),
    };
    enum : S
    {   /// value of bit-mask for single array element
        BIT_MASK = BitMaskHelper<S, T_BITWIDTH>::value
    };
    _CODASIP_INT_INLINE S operator()( const V* vec ) const
    {   // the value must be masked to prevent sign extension in case V is signed
        return static_cast<S>(static_cast<S>(static_cast<S>(vec[N -1]) & BIT_MASK) << SHIFT_COUNT) |
            ConcatenationHelper<S, V, N-1>()( vec );
    }
};

/**
 *  \class  ConcatenationHelper
 *  \brief  Specialization used to stop template recursion.
 */
template<typename S, typename V>
struct ConcatenationHelper<S, V, 0>
{
    _CODASIP_INT_INLINE S operator()( const V* ) const { return 0; }
};

/**
 *  \class  VectorToScalarHelper
 *  \brief  Helper class used to convert vector of elements into scalar type.
 *  \tparam S scalar/returned/result type
 *  \tparam V vector/array type
 *  \tparam SIZE number of array elements
 *  \note   This version is used when size of an array is long enough to create
 *          value of type \em S.
 */
template<typename S, typename V, unsigned SIZE, bool = (SIZE < (sizeof(S) / sizeof(V)))>
struct VectorToScalarHelper
{
    _CODASIP_INT_INLINE S operator()( const V* vec ) const
    {   // take lowest values and concatenate them, no sign extension required
        // the source array is long enough
        return ConcatenationHelper<S, V, sizeof(S) / sizeof(V)>()( vec );
    }
};

/**
 *  \class  VectorToScalarHelper
 *  \brief  This specialization is used when size of an array is not long enough
 *          to create value of type \em V.
 */
template<typename S, typename V, unsigned SIZE>
struct VectorToScalarHelper<S, V, SIZE, true>
{
    enum : unsigned
    {   /// bit-width of the array element
        V_BITWIDTH = native_int_bitwidth_helper<V>::value,
        /// lowest position from where the sign should be extended
        SIGN_POS = (V_BITWIDTH * SIZE)
    };
    _CODASIP_INT_INLINE S operator()( const V* vec ) const
    {   // take lowest values and concatenate them, the sign extension must be
        // done because the source array is not long enough
        return static_cast<S>(static_cast<S>(GetSignExtension(vec[SIZE -1])) << SIGN_POS) |
            ConcatenationHelper<S, V, SIZE>()(vec);
    }
};

/**
 *  \class  ScalarToVectorHelper
 *  \brief  Convert scalar value into vector. The scalar type is expected to be
 *          bigger/wider than single vector element.
 */
template<typename S, typename V, unsigned SIZE>
struct ScalarToVectorHelper
{
    enum : unsigned
    {   /// extract value from scalar by shift right
        SHIFT_COUNT = (SIZE -1) * native_int_bitwidth_helper<V>::value
    };
    _CODASIP_INT_INLINE void operator()( V* vec, const S value ) const
    {
        ScalarToVectorHelper<S, V, SIZE -1>()( vec, value );
        vec[SIZE -1] = static_cast<S>(value >> SHIFT_COUNT);
    }
};

template<typename S, typename V>
struct ScalarToVectorHelper<S, V, 0>
{
    _CODASIP_INT_INLINE void operator()( V*, const S ) const {}
};

/**
 *  \{
 *  \brief  Convert scalar into vector type.
 *  \tparam S scalar/returned/result type
 *  \tparam LHS_SIZE size of the vector
 *  \tparam V vector/array type
 *  \param[out] vec target array/vector
 *  \param[in]  scalar value to assign
 */
template<typename S, unsigned LHS_SIZE, typename V>
_CODASIP_INT_INLINE
_CODASIP_INT_ENABLE_IF((LHS_SIZE == 1) || ((LHS_SIZE > 1) && (sizeof(S) >= (sizeof(V) * LHS_SIZE))), void)
DoToVector( V* vec, const S scalar )
{   // the scalar assigns the whole array without sign extension
    ScalarToVectorHelper<S, V, LHS_SIZE>()( vec, scalar );
}

template<typename S, unsigned LHS_SIZE, typename V>
_CODASIP_INT_INLINE
_CODASIP_INT_ENABLE_IF((LHS_SIZE > 1) && (sizeof(S) < (sizeof(V) * LHS_SIZE)), void)
DoToVector( V* vec, const S scalar )
{
    enum : unsigned
    {
        LHS_SIGN_INDEX = integer::detail::static_max_helper<(sizeof(S) / sizeof(V)), 1>::value
    };
    // assigns lower parts of the vector with the scalar
    ScalarToVectorHelper<S, V, LHS_SIGN_INDEX>()( vec, scalar );
    // fill the rest of the array with sign of from scalar
    // avoid usage of std::fill_n, it causes too many warning c4996 (false positive)
    V sign = static_cast<S>(GetSignExtension(scalar));
    for ( unsigned ii = LHS_SIGN_INDEX; ii < LHS_SIZE; ++ii )
    {
        vec[ii] = sign;
    }
}

/**
 *  \}
 *  \brief  Perform array assignment. The operation is performed 1:1 on the
 *          whole LHS.
 *  \tparam LHS_SIZE size of first array
 *  \tparam RHS_SIZE size of second array
 *  \param  lhs first operand
 *  \param  rhs second operand
 */
template<unsigned LHS_SIZE, unsigned RHS_SIZE, typename T1, typename T2>
_CODASIP_INT_INLINE
_CODASIP_INT_ENABLE_IF((LHS_SIZE <= RHS_SIZE), void)
DoAssign( T1* lhs, const T2* rhs )
{
    _CODASIP_INT_VECTOR_ASSERTIONS( T1, T2 );
    std::memcpy( lhs, rhs, LHS_SIZE * sizeof(T1) );
}

/**
 *  \brief  Perform array assignment. This version is used in situation when
 *          \em rhs is shorter and must be sign extended.
 *  \tparam LHS_SIZE size of first array
 *  \tparam RHS_SIZE size of second array
 *  \param  lhs first operand
 *  \param  rhs second operand
 */
template<unsigned LHS_SIZE, unsigned RHS_SIZE, typename T1, typename T2>
_CODASIP_INT_INLINE
_CODASIP_INT_ENABLE_IF((LHS_SIZE > RHS_SIZE), void)
DoAssign( T1* lhs, const T2* rhs )
{   // do standard assignment of the common part
    DoAssign<RHS_SIZE, RHS_SIZE, T1, T2>( lhs, rhs );
    // now fill rest of the array with sign of the rhs
    std::memset( lhs + RHS_SIZE,
        GetSignExtension(rhs[RHS_SIZE -1]),
        (LHS_SIZE - RHS_SIZE) * sizeof(T1) );
}

/**
 *  \brief  Perform array assignment with scalar value. The scalar will be
 *          sign extended to the size of array.
 *  \tparam LHS_SIZE size of first array
 *  \param  lhs first operand, array
 *  \param  rhs second operand, scalar
 */
template<unsigned LHS_SIZE, typename T1, typename T2>
_CODASIP_INT_INLINE _CODASIP_INT_ENABLE_IF_POD(T2, void)
DoAssign( T1* lhs, const T2 rhs )
{
    _CODASIP_INT_VECTOR_SCALAR_ASSERTIONS( T1, T2, LHS_SIZE );
    DoToVector<T2, LHS_SIZE, T1>( lhs, rhs );
}

/**
 *  \{
 *  \brief  Convert vector type into single scalar.
 *  \tparam S scalar/returned/result type
 *  \tparam LHS_SIZE size of the vector
 *  \tparam V vector/array type
 *  \param  array source array/vector to convert
 */
template<typename S, unsigned LHS_SIZE, typename V>
_CODASIP_INT_INLINE
_CODASIP_INT_ENABLE_IF((LHS_SIZE == 1) || (sizeof(S) <= sizeof(V)), S)
DoToScalar( const V* array )
{   // only one (lowest) array element is required for conversions
    return static_cast<S>( array[0] );
}

template<typename S, unsigned LHS_SIZE, typename V>
_CODASIP_INT_INLINE
_CODASIP_INT_ENABLE_IF((LHS_SIZE > 1) && (sizeof(S) > sizeof(V)), S)
DoToScalar( const V* array )
{   // the scalar must be created from multiple array elements
    return VectorToScalarHelper<S, V, LHS_SIZE>()( array );
}

/** \} */
/** \} */ // addtogroup

}   // namespace codasip::integer::backends::detail
}   // namespace codasip::integer::backends
}   // namespace codasip::integer
}   // namespace codasip

#endif  // INC_CODASIP_INTEGER_FIXED_ARRAY_BACKEND_ASSIGN_H_
