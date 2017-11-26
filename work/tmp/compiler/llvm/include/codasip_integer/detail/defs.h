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
 *  \date   16. 2. 2016
 *  \brief  Contains common macro definitions for the \ref CODASIP_INT.
 */

#ifndef INC_CODASIP_INTEGER_DETAIL_DEFS_H_
#define INC_CODASIP_INTEGER_DETAIL_DEFS_H_

#include "compiler.h"
#include <type_traits>

namespace codasip {
namespace integer {
namespace detail {

template<typename T, bool = std::is_enum<typename std::decay<T>::type>::value>
struct UnderlyingTypeHelper;

template<typename T>
struct UnderlyingTypeHelper<T, true>
{
    typedef typename std::underlying_type<typename std::decay<T>::type>::type type;
};

template<typename T>
struct UnderlyingTypeHelper<T, false>
{
    typedef typename std::decay<T>::type type;
};

template<typename T>
struct IsIntegral : public std::integral_constant<bool,
    std::is_integral<typename UnderlyingTypeHelper<T>::type>::value>
{};

}   // namespace codasip::integer::detail
}   // namespace codasip::integer
}   // namespace codasip


/**
 *  \def    _CODASIP_INT_INLINE
 *  \brief  Force inline for most of the functions used in the \ref CODASIP_INT.
 */
#ifndef _CODASIP_INT_INLINE
#define _CODASIP_INT_INLINE FORCE_INLINE
#endif

/**
 *  \def    _CODASIP_INT_ENABLE_IF_POD
 *  \brief  Generate condition enabling feature if condition is true.
 */
#ifndef _CODASIP_INT_ENABLE_IF
#define _CODASIP_INT_ENABLE_IF(cnd, R) \
    typename std::enable_if< cnd , R >::type
#else
    #error "Macro _CODASIP_INT_ENABLE_IF already defined!!!"
#endif

/**
 *  \def    _CODASIP_INT_INTEGRAL_CND
 *  \brief  Generate condition that given type is an integral type.
 */
#ifndef _CODASIP_INT_INTEGRAL_CND
#define _CODASIP_INT_INTEGRAL_CND(T) \
    (::codasip::integer::detail::IsIntegral<T>::value)
#else
#error "Macro _CODASIP_INT_INTEGRAL_CND already defined!!!"
#endif
/**
 *  \def    _CODASIP_INT_ENABLE_IF_POD
 *  \brief  Generate condition enabling feature in case of standard/native
 *          integer types.
 */
#ifndef _CODASIP_INT_ENABLE_IF_POD
#define _CODASIP_INT_ENABLE_IF_POD(T, R) \
    _CODASIP_INT_ENABLE_IF( _CODASIP_INT_INTEGRAL_CND(T), R)
#else
    #error "Macro _CODASIP_INT_ENABLE_IF_POD already defined!!!"
#endif

/**
 *  \def    _CODASIP_INT_VECTOR_ASSERTIONS
 *  \brief  Generate compile-time assertions for vector with vector operations.
 */
#ifndef _CODASIP_INT_VECTOR_ASSERTIONS
#define _CODASIP_INT_VECTOR_ASSERTIONS( T1, T2 ) \
    static_assert( std::is_integral<T1>::value && std::is_integral<T2>::value, \
        "Vector operations are defined for integral types only." ); \
    static_assert( sizeof(T1) == sizeof(T2), \
        "Vector operations are defined only for base types of the same size." ); \
    static_assert( (LHS_SIZE != 0) && (RHS_SIZE != 0), \
        "Vector operations are defined for non-zero vector lengths." )
#else
    #error "Macro _CODASIP_INT_VECTOR_ASSERTIONS already defined!!!"
#endif

/**
 *  \def    _CODASIP_INT_VECTOR_SCALAR_ASSERTIONS
 *  \brief  Generate compile-time assertions for vector with scalar operations.
 */
#ifndef _CODASIP_INT_VECTOR_SCALAR_ASSERTIONS
#define _CODASIP_INT_VECTOR_SCALAR_ASSERTIONS( T1, T2, SIZE ) \
    static_assert( _CODASIP_INT_INTEGRAL_CND(T1) && _CODASIP_INT_INTEGRAL_CND(T2), \
        "Vector operations are defined for integral types only." ); \
    static_assert( (SIZE != 0), \
        "Vector operations are defined for non-zero vector lengths." )
#else
    #error "Macro _CODASIP_INT_VECTOR_SCALAR_ASSERTIONS already defined!!!"
#endif

#endif // INC_CODASIP_INTEGER_DETAIL_DEFS_H_
