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
 *  \brief  Implementation of the binary commutative operators for \ref CODASIP_INT.
 */

#ifndef INC_CODASIP_INTEGER_INTEGER_NUMBER_BINARY_OPS_H_
#define INC_CODASIP_INTEGER_INTEGER_NUMBER_BINARY_OPS_H_

#include "../integer_number.h"

#ifndef _CODASIP_INT_RESULT_TYPE
#define _CODASIP_INT_RESULT_TYPE( result ) \
    typename codasip::integer::detail::BinaryOperatorHelper<codasip::integer::IntegerNumber, LHS_BITS, LHS_SIGN, RHS_BITS, RHS_SIGN>:: result
#else
    #error "Macro _CODASIP_INT_RESULT_TYPE already defined!!!"
#endif

#ifndef _CODASIP_INT_RESULT_TYPE_POD
#define _CODASIP_INT_RESULT_TYPE_POD( pod_type, result ) \
    typename codasip::integer::detail::BinaryResultNative<codasip::integer::IntegerNumber, _CODASIP_BITS, _CODASIP_SIGN, pod_type>:: result
#else
    #error "Macro _CODASIP_INT_RESULT_TYPE_POD already defined!!!"
#endif

#ifndef _CODASIP_INT_ENABLE_RESULT_IF
#define _CODASIP_INT_ENABLE_RESULT_IF( cnd, result ) \
    typename std::enable_if< cnd, _CODASIP_INT_RESULT_TYPE(result) >::type
#else
    #error "Macro _CODASIP_INT_ENABLE_RESULT_IF already defined!!!"
#endif

#ifndef _CODASIP_INT_ENABLE_RESULT_IF_POD
#define _CODASIP_INT_ENABLE_RESULT_IF_POD( pod_type, result ) \
    typename std::enable_if< _CODASIP_INT_INTEGRAL_CND(pod_type), _CODASIP_INT_RESULT_TYPE_POD(pod_type, result) >::type
#else
    #error "Macro _CODASIP_INT_ENABLE_RESULT_IF_POD already defined!!!"
#endif
#ifndef _CODASIP_INT_ENABLE_MOVE_RESULT_IF
#define _CODASIP_INT_ENABLE_MOVE_RESULT_IF( result ) \
    typename std::enable_if<std::is_same< _CODASIP_INT_RESULT_TYPE(result), codasip::integer::IntegerNumber<LHS_BITS, LHS_SIGN> >::value, _CODASIP_INT_RESULT_TYPE(result)>::type
#else
    #error "Macro _CODASIP_INT_ENABLE_MOVE_RESULT_IF already defined!!!"
#endif
#ifndef _CODASIP_INT_ENABLE_MOVE_RESULT_IF_POD
#define _CODASIP_INT_ENABLE_MOVE_RESULT_IF_POD( pod_type, result ) \
    typename std::enable_if< _CODASIP_INT_INTEGRAL_CND(pod_type) && std::is_same< _CODASIP_INT_RESULT_TYPE_POD(pod_type, result), codasip::integer::IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN> >::value, _CODASIP_INT_RESULT_TYPE_POD(pod_type, result)>::type
#else
    #error "Macro _CODASIP_INT_ENABLE_MOVE_RESULT_IF_POD already defined!!!"
#endif

/**
 *  \brief  Generate definition of binary operator.
 *  \param  op binary operator
 *  \param  result type of the result after operation has been performed
 */
#ifndef _CODASIP_INT_DEF_BINARY
#define _CODASIP_INT_DEF_BINARY( op, result ) \
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN, typename T> \
_CODASIP_INT_INLINE _CODASIP_INT_ENABLE_RESULT_IF_POD(T, result) operator op ( \
    const codasip::integer::IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>& lhs, \
    const T rhs ) \
{ \
    typedef typename codasip::integer::detail::UnderlyingTypeHelper<T>::type pod_type; \
    typedef _CODASIP_INT_RESULT_TYPE_POD(pod_type, result) result_type; \
    result_type nrv(lhs); \
    nrv op##= rhs; \
    return nrv; \
} \
\
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN, typename T> \
_CODASIP_INT_INLINE \
_CODASIP_INT_ENABLE_MOVE_RESULT_IF_POD(T, shift_type) \
operator op ( \
    codasip::integer::IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>&& lhs, \
    const T rhs ) \
{ \
    lhs op##= rhs; \
    return std::move(lhs); \
} \
\
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN, typename T> \
_CODASIP_INT_INLINE _CODASIP_INT_ENABLE_RESULT_IF_POD(T, result) operator op( \
    const T lhs, \
    const codasip::integer::IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>& rhs ) \
{ \
    typedef typename codasip::integer::detail::UnderlyingTypeHelper<T>::type pod_type; \
    typedef _CODASIP_INT_RESULT_TYPE_POD(pod_type, result) result_type; \
    result_type nrv(lhs); \
    nrv op##= rhs; \
    return nrv; \
} \
\
template<unsigned LHS_BITS, bool LHS_SIGN, unsigned RHS_BITS, bool RHS_SIGN> \
_CODASIP_INT_INLINE \
_CODASIP_INT_ENABLE_MOVE_RESULT_IF(result) \
operator op( codasip::integer::IntegerNumber<LHS_BITS, LHS_SIGN>&& lhs, \
    const codasip::integer::IntegerNumber<RHS_BITS, RHS_SIGN>& rhs ) \
{ \
    lhs op##= rhs; \
    return std::move(lhs); \
}\
\
template<unsigned LHS_BITS, bool LHS_SIGN, unsigned RHS_BITS, bool RHS_SIGN> \
_CODASIP_INT_INLINE _CODASIP_INT_ENABLE_IF( \
    (codasip::integer::IntegerNumber<LHS_BITS, LHS_SIGN>::IS_WRAPPER == \
    codasip::integer::IntegerNumber<RHS_BITS, RHS_SIGN>::IS_WRAPPER) || \
    (codasip::integer::IntegerNumber<LHS_BITS, LHS_SIGN>::IS_WRAPPER), _CODASIP_INT_RESULT_TYPE(result)) \
operator op( const codasip::integer::IntegerNumber<LHS_BITS, LHS_SIGN>& lhs, \
    const codasip::integer::IntegerNumber<RHS_BITS, RHS_SIGN>& rhs ) \
{ \
    typedef _CODASIP_INT_RESULT_TYPE(result) result_type; \
    result_type nrv(lhs); \
    nrv op##= rhs; \
    return nrv; \
} \
\
template<unsigned LHS_BITS, bool LHS_SIGN, unsigned RHS_BITS, bool RHS_SIGN> \
_CODASIP_INT_INLINE _CODASIP_INT_ENABLE_IF( \
    (!codasip::integer::IntegerNumber<LHS_BITS, LHS_SIGN>::IS_WRAPPER && \
    codasip::integer::IntegerNumber<RHS_BITS, RHS_SIGN>::IS_WRAPPER), _CODASIP_INT_RESULT_TYPE(result)) \
operator op( const codasip::integer::IntegerNumber<LHS_BITS, LHS_SIGN>& lhs, \
    const codasip::integer::IntegerNumber<RHS_BITS, RHS_SIGN>& rhs ) \
{ \
    typedef _CODASIP_INT_RESULT_TYPE(result) result_type; \
    typedef typename codasip::integer::IntegerNumber<RHS_BITS, RHS_SIGN>::pod_type rhs_pod_type; \
    result_type nrv(lhs); \
    nrv op##= static_cast<rhs_pod_type>(rhs); \
    return nrv; \
}
#else
    #error "Macro _CODASIP_INT_DEF_BINARY already defined!!!"
#endif

/**
 *  \brief  Generate definition for binary shift operator.
 *  \param  op binary shift operator to define
 */
#ifndef _CODASIP_INT_DEF_BINARY_SHIFT
#define _CODASIP_INT_DEF_BINARY_SHIFT( op ) \
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN, typename T> \
_CODASIP_INT_INLINE _CODASIP_INT_ENABLE_RESULT_IF_POD(T, shift_type) operator op ( \
    const codasip::integer::IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>& lhs, \
    const T rhs ) \
{ \
    typedef _CODASIP_INT_RESULT_TYPE_POD(T, shift_type) result_type; \
    result_type nrv(lhs); \
    nrv op##= static_cast<const unsigned>(rhs); \
    return nrv; \
} \
\
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN, typename T> \
_CODASIP_INT_INLINE _CODASIP_INT_ENABLE_MOVE_RESULT_IF_POD(T, shift_type) operator op ( \
    codasip::integer::IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>&& lhs, \
    const T rhs ) \
{ \
    lhs op##= static_cast<const unsigned>(rhs); \
    return std::move(lhs); \
} \
\
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN, typename T> \
_CODASIP_INT_INLINE _CODASIP_INT_ENABLE_IF_POD(T, T) operator op( \
    const T lhs, \
    const codasip::integer::IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>& rhs ) \
{ \
    return lhs op static_cast<const unsigned>(rhs); \
}\
\
template<unsigned LHS_BITS, bool LHS_SIGN, unsigned RHS_BITS, bool RHS_SIGN> \
_CODASIP_INT_INLINE _CODASIP_INT_RESULT_TYPE(shift_type) \
operator op( const codasip::integer::IntegerNumber<LHS_BITS, LHS_SIGN>& lhs, \
    const codasip::integer::IntegerNumber<RHS_BITS, RHS_SIGN>& rhs ) \
{ \
    typedef _CODASIP_INT_RESULT_TYPE(shift_type) result_type; \
    result_type nrv(lhs); \
    nrv op##= static_cast<const unsigned>(rhs); \
    return nrv; \
} \
template<unsigned LHS_BITS, bool LHS_SIGN, unsigned RHS_BITS, bool RHS_SIGN> \
_CODASIP_INT_INLINE \
_CODASIP_INT_ENABLE_MOVE_RESULT_IF(shift_type) \
operator op( codasip::integer::IntegerNumber<LHS_BITS, LHS_SIGN>&& lhs, \
    const codasip::integer::IntegerNumber<RHS_BITS, RHS_SIGN>& rhs ) \
{ \
    lhs op##= static_cast<const unsigned>(rhs); \
    return std::move(lhs); \
}
#else
    #error "Macro _CODASIP_INT_DEF_BINARY_SHIFT already defined!!!"
#endif

namespace codasip {
namespace integer {

/**
 *  \{
 *  \brief  Implementation of binary addition (+) operator.
 *  \param  lhs first operand
 *  \param  rhs second operand
 */
_CODASIP_INT_DEF_BINARY(+, add_type)
/**
 *  \} \{
 *  \brief  Implementation of binary subtracting (-) operator.
 *  \param  lhs first operand
 *  \param  rhs second operand
 */
_CODASIP_INT_DEF_BINARY(-, sub_type)
/**
 *  \} \{
 *  \brief  Implementation of binary multiplication (*) operator.
 *  \param  lhs first operand
 *  \param  rhs second operand
 */
_CODASIP_INT_DEF_BINARY(*, mul_type)
/**
 *  \} \{
 *  \brief  Implementation of binary division (/) operator.
 *  \param  lhs first operand
 *  \param  rhs second operand
 */
_CODASIP_INT_DEF_BINARY(/, div_type)
/**
 *  \} \{
 *  \brief  Implementation of binary modulus (%) operator.
 *  \param  lhs first operand
 *  \param  rhs second operand
 */
_CODASIP_INT_DEF_BINARY(%, mod_type)
/**
 *  \} \{
 *  \brief  Implementation of binary bitwise AND (&) operator.
 *  \param  lhs first operand
 *  \param  rhs second operand
 */
_CODASIP_INT_DEF_BINARY(&, bitwise_type)
/**
 *  \} \{
 *  \brief  Implementation of binary bitwise OR (|) operator.
 *  \param  lhs first operand
 *  \param  rhs second operand
 */
_CODASIP_INT_DEF_BINARY(|, bitwise_type)
/**
 *  \} \{
 *  \brief  Implementation of binary bitwise XOR (^) operator.
 *  \param  lhs first operand
 *  \param  rhs second operand
 */
_CODASIP_INT_DEF_BINARY(^, bitwise_type)
/**
 *  \} \{
 *  \brief  Implementation of binary arithmetic shift left (<<) operator.
 *  \param  lhs first operand
 *  \param  rhs second operand
 */
_CODASIP_INT_DEF_BINARY_SHIFT(<<)
/**
 *  \} \{
 *  \brief  Implementation of binary arithmetic shift right (>>) operator.
 *  \param  lhs first operand
 *  \param  rhs second operand
 */
_CODASIP_INT_DEF_BINARY_SHIFT(>>)

/** \} */

}   // namespace codasip::integer
}   // namespace codasip

#undef _CODASIP_INT_RESULT_TYPE
#undef _CODASIP_INT_RESULT_TYPE_POD
#undef _CODASIP_INT_ENABLE_RESULT_IF
#undef _CODASIP_INT_ENABLE_RESULT_IF_POD
#undef _CODASIP_INT_DEF_BINARY
#undef _CODASIP_INT_DEF_BINARY_SHIFT
#undef _CODASIP_INT_ENABLE_MOVE_RESULT_IF
#undef _CODASIP_INT_ENABLE_MOVE_RESULT_IF_POD

#endif  // INC_CODASIP_INTEGER_INTEGER_NUMBER_BINARY_OPS_H_
