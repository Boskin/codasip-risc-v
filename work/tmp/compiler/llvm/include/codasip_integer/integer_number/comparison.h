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
 *  \date   25. 2. 2016
 *  \brief  Implementation of the binary comparison operator for \ref CODASIP_INT.
 */

#ifndef INC_CODASIP_INTEGER_INTEGER_NUMBER_COMPARISON_H_
#define INC_CODASIP_INTEGER_INTEGER_NUMBER_COMPARISON_H_

#include "../integer_number.h"

namespace codasip {
namespace integer {

/**
 *  \brief  Equal comparison operator with standard/native integer type.
 *  \param  lhs first comparison operand
 *  \param  rhs second comparison operand
 */
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN, typename T>
_CODASIP_INT_INLINE
_CODASIP_INT_ENABLE_IF_POD(T, bool)
operator==( const IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>& lhs, const T rhs )
{   // comparison with native integer
    typedef typename integer::detail::UnderlyingTypeHelper<T>::type rhs_pod_type;
    return lhs.Backend() == static_cast<rhs_pod_type>(rhs);
}

/**
 *  \brief  Equal comparison operator with standard/native integer type.
 *  \param  lhs first comparison operand
 *  \param  rhs second comparison operand
 */
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN, typename T>
_CODASIP_INT_INLINE
_CODASIP_INT_ENABLE_IF_POD(T, bool)
operator==( const T lhs, const IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>& rhs )
{   // comparison with native integer
    return rhs == lhs;
}

/**
 *  \brief  Equal comparison operator of integers with the same backend
 *          implementation.
 *  \param  lhs first comparison operand
 *  \param  rhs second comparison operand
 */
template<unsigned LHS_BITS, bool LHS_SIGN, unsigned RHS_BITS, bool RHS_SIGN>
_CODASIP_INT_INLINE
_CODASIP_INT_ENABLE_IF(
    (IntegerNumber<LHS_BITS, LHS_SIGN>::IS_WRAPPER ==
    IntegerNumber<RHS_BITS, RHS_SIGN>::IS_WRAPPER), bool)
operator==( const IntegerNumber<LHS_BITS, LHS_SIGN>& lhs,
    const IntegerNumber<RHS_BITS, RHS_SIGN>& rhs )
{   // direct comparison of native same backend implementations
    return lhs.Backend() == rhs.Backend();
}

/**
 *  \brief  Equal comparison operator of integers with the different backend
 *          implementation - array vs. wrapper.
 *  \param  lhs first comparison operand
 *  \param  rhs second comparison operand
 */
template<unsigned LHS_BITS, bool LHS_SIGN, unsigned RHS_BITS, bool RHS_SIGN>
_CODASIP_INT_INLINE
_CODASIP_INT_ENABLE_IF(
    (!IntegerNumber<LHS_BITS, LHS_SIGN>::IS_WRAPPER &&
    IntegerNumber<RHS_BITS, RHS_SIGN>::IS_WRAPPER), bool)
operator==( const IntegerNumber<LHS_BITS, LHS_SIGN>& lhs,
    const IntegerNumber<RHS_BITS, RHS_SIGN>& rhs )
{   // direct comparison of array with lightweight wrapper
    typedef typename IntegerNumber<RHS_BITS, RHS_SIGN>::pod_type rhs_pod_type;
    return lhs.Backend() == static_cast<rhs_pod_type>(rhs);
}

/**
 *  \brief  Equal comparison operator of integers with the different backend
 *          implementation - wrapper vs. array.
 *  \param  lhs first comparison operand
 *  \param  rhs second comparison operand
 */
template<unsigned LHS_BITS, bool LHS_SIGN, unsigned RHS_BITS, bool RHS_SIGN>
_CODASIP_INT_INLINE
_CODASIP_INT_ENABLE_IF(
    (IntegerNumber<LHS_BITS, LHS_SIGN>::IS_WRAPPER &&
    !IntegerNumber<RHS_BITS, RHS_SIGN>::IS_WRAPPER), bool)
operator==( const IntegerNumber<LHS_BITS, LHS_SIGN>& lhs,
    const IntegerNumber<RHS_BITS, RHS_SIGN>& rhs )
{   // direct comparison of array with lightweight wrapper
    typedef typename IntegerNumber<LHS_BITS, LHS_SIGN>::pod_type lhs_pod_type;
    return rhs.Backend() == static_cast<lhs_pod_type>(lhs);
}

/**
 *  \brief  Non-equivalence comparison operator of integers.
 *  \param  lhs first comparison operand
 *  \param  rhs second comparison operand
 */
template<unsigned LHS_BITS, bool LHS_SIGN, unsigned RHS_BITS, bool RHS_SIGN>
_CODASIP_INT_INLINE bool operator!=( const IntegerNumber<LHS_BITS, LHS_SIGN>& lhs,
    const IntegerNumber<RHS_BITS, RHS_SIGN>& rhs )
{
    return !(lhs == rhs);
}

/**
 *  \brief  Non-equivalence comparison operator with standard/native integer type.
 *  \param  lhs first comparison operand
 *  \param  rhs second comparison operand
 */
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN, typename T>
_CODASIP_INT_INLINE
_CODASIP_INT_ENABLE_IF_POD(T, bool)
operator!=( const IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>& lhs, const T rhs )
{
    return !(lhs == rhs);
}

/**
 *  \brief  Non-equivalence comparison operator with standard/native integer type.
 *  \param  lhs first comparison operand
 *  \param  rhs second comparison operand
 */
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN, typename T>
_CODASIP_INT_INLINE
_CODASIP_INT_ENABLE_IF_POD(T, bool)
operator!=( const T lhs, const IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>& rhs )
{
    return !(lhs == rhs);
}

// from now on the order of operator definition is mandatory

/**
 *  \brief  Less than comparison operator with standard/native integer type.
 *  \param  lhs first comparison operand
 *  \param  rhs second comparison operand
 */
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN, typename T>
_CODASIP_INT_INLINE
_CODASIP_INT_ENABLE_IF_POD(T, bool)
operator<( const IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>& lhs, const T rhs )
{   // comparison with native integer
    typedef typename integer::detail::UnderlyingTypeHelper<T>::type rhs_pod_type;
    return lhs.Backend() < static_cast<rhs_pod_type>(rhs);
}

/**
 *  \brief  Less than comparison operator with standard/native integer type.
 *  \param  lhs first comparison operand
 *  \param  rhs second comparison operand
 */
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN, typename T>
_CODASIP_INT_INLINE
_CODASIP_INT_ENABLE_IF_POD(T, bool)
operator<( const T lhs, const IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>& rhs )
{   // comparison with native integer: (lhs < rhs) == (rhs > lhs)
    typedef typename integer::detail::UnderlyingTypeHelper<T>::type lhs_pod_type;
    return rhs.Backend() > static_cast<lhs_pod_type>(lhs);
}

/**
 *  \brief  Less than comparison operator of integers with the same backend
 *          implementation.
 *  \param  lhs first comparison operand
 *  \param  rhs second comparison operand
 */
template<unsigned LHS_BITS, bool LHS_SIGN, unsigned RHS_BITS, bool RHS_SIGN>
_CODASIP_INT_INLINE
_CODASIP_INT_ENABLE_IF(
    (IntegerNumber<LHS_BITS, LHS_SIGN>::IS_WRAPPER ==
    IntegerNumber<RHS_BITS, RHS_SIGN>::IS_WRAPPER), bool)
operator<( const IntegerNumber<LHS_BITS, LHS_SIGN>& lhs,
    const IntegerNumber<RHS_BITS, RHS_SIGN>& rhs )
{   // direct comparison of native same backend implementations
    return lhs.Backend() < rhs.Backend();
}

/**
 *  \brief  Less than comparison operator of integers with the same backend
 *          implementation.
 *  \param  lhs first comparison operand
 *  \param  rhs second comparison operand
 */
template<unsigned LHS_BITS, bool LHS_SIGN, unsigned RHS_BITS, bool RHS_SIGN>
_CODASIP_INT_INLINE
_CODASIP_INT_ENABLE_IF(
    (!IntegerNumber<LHS_BITS, LHS_SIGN>::IS_WRAPPER &&
    IntegerNumber<RHS_BITS, RHS_SIGN>::IS_WRAPPER), bool)
operator<( const IntegerNumber<LHS_BITS, LHS_SIGN>& lhs,
    const IntegerNumber<RHS_BITS, RHS_SIGN>& rhs )
{   // direct comparison of native same backend implementations
    typedef typename IntegerNumber<RHS_BITS, RHS_SIGN>::pod_type rhs_pod_type;
    return lhs.Backend() < static_cast<rhs_pod_type>(rhs);
}

/**
 *  \brief  Less than comparison operator of integers with the same backend
 *          implementation.
 *  \param  lhs first comparison operand
 *  \param  rhs second comparison operand
 */
template<unsigned LHS_BITS, bool LHS_SIGN, unsigned RHS_BITS, bool RHS_SIGN>
_CODASIP_INT_INLINE
_CODASIP_INT_ENABLE_IF(
    (IntegerNumber<LHS_BITS, LHS_SIGN>::IS_WRAPPER &&
    !IntegerNumber<RHS_BITS, RHS_SIGN>::IS_WRAPPER), bool)
operator<( const IntegerNumber<LHS_BITS, LHS_SIGN>& lhs,
    const IntegerNumber<RHS_BITS, RHS_SIGN>& rhs )
{   // direct comparison of native same backend implementations
    typedef typename IntegerNumber<LHS_BITS, LHS_SIGN>::pod_type lhs_pod_type;
    return rhs.Backend() > static_cast<lhs_pod_type>(lhs);
}

/**
 *  \brief  Greater comparison operator with standard/native integer type.
 *  \param  lhs first comparison operand
 *  \param  rhs second comparison operand
 */
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN, typename T>
_CODASIP_INT_INLINE
_CODASIP_INT_ENABLE_IF_POD(T, bool)
operator>( const IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>& lhs, const T rhs )
{   // comparison with native integer
    typedef typename integer::detail::UnderlyingTypeHelper<T>::type rhs_pod_type;
    return lhs.Backend() > static_cast<rhs_pod_type>(rhs);
}

/**
 *  \brief  Greater comparison operator with standard/native integer type.
 *  \param  lhs first comparison operand
 *  \param  rhs second comparison operand
 */
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN, typename T>
_CODASIP_INT_INLINE
_CODASIP_INT_ENABLE_IF_POD(T, bool)
operator>( const T lhs, const IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>& rhs )
{   // comparison with native integer: (lhs > rhs) == (rhs < lhs)
    return rhs < lhs;
}

/**
 *  \brief  Greater comparison operator of integers with the same backend
 *          implementation.
 *  \param  lhs first comparison operand
 *  \param  rhs second comparison operand
 */
template<unsigned LHS_BITS, bool LHS_SIGN, unsigned RHS_BITS, bool RHS_SIGN>
_CODASIP_INT_INLINE
_CODASIP_INT_ENABLE_IF(
    (IntegerNumber<LHS_BITS, LHS_SIGN>::IS_WRAPPER ==
    IntegerNumber<RHS_BITS, RHS_SIGN>::IS_WRAPPER), bool)
operator>( const IntegerNumber<LHS_BITS, LHS_SIGN>& lhs,
    const IntegerNumber<RHS_BITS, RHS_SIGN>& rhs )
{   // direct comparison of native same backend implementations
    return lhs.Backend() > rhs.Backend();
}

/**
 *  \brief  Less than comparison operator of integers with the same backend
 *          implementation.
 *  \param  lhs first comparison operand
 *  \param  rhs second comparison operand
 */
template<unsigned LHS_BITS, bool LHS_SIGN, unsigned RHS_BITS, bool RHS_SIGN>
_CODASIP_INT_INLINE
_CODASIP_INT_ENABLE_IF(
    (!IntegerNumber<LHS_BITS, LHS_SIGN>::IS_WRAPPER &&
    IntegerNumber<RHS_BITS, RHS_SIGN>::IS_WRAPPER), bool)
operator>( const IntegerNumber<LHS_BITS, LHS_SIGN>& lhs,
    const IntegerNumber<RHS_BITS, RHS_SIGN>& rhs )
{   // direct comparison of native same backend implementations
    typedef typename IntegerNumber<RHS_BITS, RHS_SIGN>::pod_type rhs_pod_type;
    return lhs.Backend() > static_cast<rhs_pod_type>(rhs);
}

/**
 *  \brief  Less than comparison operator of integers with the same backend
 *          implementation.
 *  \param  lhs first comparison operand
 *  \param  rhs second comparison operand
 */
template<unsigned LHS_BITS, bool LHS_SIGN, unsigned RHS_BITS, bool RHS_SIGN>
_CODASIP_INT_INLINE
_CODASIP_INT_ENABLE_IF(
    (IntegerNumber<LHS_BITS, LHS_SIGN>::IS_WRAPPER &&
    !IntegerNumber<RHS_BITS, RHS_SIGN>::IS_WRAPPER), bool)
operator>( const IntegerNumber<LHS_BITS, LHS_SIGN>& lhs,
    const IntegerNumber<RHS_BITS, RHS_SIGN>& rhs )
{   // direct comparison of native same backend implementations
    typedef typename IntegerNumber<LHS_BITS, LHS_SIGN>::pod_type lhs_pod_type;
    return rhs.Backend() < static_cast<lhs_pod_type>(lhs);
}

/**
 *  \brief  Less or equal comparison operator with standard/native integer type.
 *  \param  lhs first comparison operand
 *  \param  rhs second comparison operand
 */
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN, typename T>
_CODASIP_INT_INLINE
_CODASIP_INT_ENABLE_IF_POD(T, bool)
operator<=( const IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>& lhs, const T rhs )
{   // comparison with native integer
    return !(lhs > rhs);
}

/**
 *  \brief  Less or equal comparison operator with standard/native integer type.
 *  \param  lhs first comparison operand
 *  \param  rhs second comparison operand
 */
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN, typename T>
_CODASIP_INT_INLINE
_CODASIP_INT_ENABLE_IF_POD(T, bool)
operator<=( const T lhs, const IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>& rhs )
{   // comparison with native integer: (lhs < rhs) == !(rhs < lhs)
    return !(rhs < lhs);
}

/**
 *  \brief  Less or equal comparison operator of integers with the same backend
 *          implementation.
 *  \param  lhs first comparison operand
 *  \param  rhs second comparison operand
 */
template<unsigned LHS_BITS, bool LHS_SIGN, unsigned RHS_BITS, bool RHS_SIGN>
_CODASIP_INT_INLINE
bool operator<=( const IntegerNumber<LHS_BITS, LHS_SIGN>& lhs,
    const IntegerNumber<RHS_BITS, RHS_SIGN>& rhs )
{   // direct comparison of native same backend implementations
    return !(lhs > rhs);
}

/**
 *  \brief  Greater or equal comparison operator with standard/native integer type.
 *  \param  lhs first comparison operand
 *  \param  rhs second comparison operand
 */
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN, typename T>
_CODASIP_INT_INLINE
_CODASIP_INT_ENABLE_IF_POD(T, bool)
operator>=( const IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>& lhs, const T rhs )
{   // comparison with native integer
    return !(lhs < rhs);
}

/**
 *  \brief  Greater or equal comparison operator with standard/native integer type.
 *  \param  lhs first comparison operand
 *  \param  rhs second comparison operand
 */
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN, typename T>
_CODASIP_INT_INLINE
_CODASIP_INT_ENABLE_IF_POD(T, bool)
operator>=( const T lhs, const IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>& rhs )
{   // comparison with native integer: (lhs < rhs) == !(rhs < lhs)
    return !(lhs < rhs);
}

/**
 *  \brief  Greater or equal comparison operator of integers with the same backend
 *          implementation.
 *  \param  lhs first comparison operand
 *  \param  rhs second comparison operand
 */
template<unsigned LHS_BITS, bool LHS_SIGN, unsigned RHS_BITS, bool RHS_SIGN>
_CODASIP_INT_INLINE
bool operator>=( const IntegerNumber<LHS_BITS, LHS_SIGN>& lhs,
    const IntegerNumber<RHS_BITS, RHS_SIGN>& rhs )
{   // direct comparison of native same backend implementations
    return !(lhs < rhs);
}

}   // namespace codasip::integer
}   // namespace codasip

#endif  // INC_CODASIP_INTEGER_INTEGER_NUMBER_COMPARISON_H_
