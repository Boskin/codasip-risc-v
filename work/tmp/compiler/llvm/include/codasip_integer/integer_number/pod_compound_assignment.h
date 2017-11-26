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
 *  \date   29. 2. 2016
 *  \brief  Definition of compound assignment operator to standard/native integer types,
 *          e.g. short += IntegerNumber<b, s>.
 */

#ifndef INC_CODASIP_INTEGER_INTEGER_NUMBER_POD_COMPOUND_ASSIGNMENT_H_
#define INC_CODASIP_INTEGER_INTEGER_NUMBER_POD_COMPOUND_ASSIGNMENT_H_

#include "../integer_number.h"

/**
 *  \def    _CODASIP_INT_POD_COMPOUND_ASSIGNMENT
 *  \brief  Creates assign version of operator to one standard integer type.
 *          (e.g. int += IntegerNumber;)
 */
#ifndef _CODASIP_INT_POD_COMPOUND_ASSIGNMENT
#define _CODASIP_INT_POD_COMPOUND_ASSIGNMENT( op ) \
    template<typename T, unsigned _CODASIP_BITS, bool _CODASIP_SIGN> \
    _CODASIP_INT_INLINE _CODASIP_INT_ENABLE_IF_POD(T, T&) operator op( T& lhs, \
        const codasip::integer::IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>& rhs ) \
    { \
        return ( lhs op static_cast<const T>(rhs) ); \
    }
#else
    #error "Macro _CODASIP_INT_POD_COMPOUND_ASSIGNMENT already defined!!!"
#endif

namespace codasip {
namespace integer {

/**
 *  \brief  Compound assignment operator to standard integer type from
 *          IntegerNumber.
 *  \param  lhs standard integer variable to assign
 *  \param  rhs value to be used in assignment
 */
_CODASIP_INT_POD_COMPOUND_ASSIGNMENT( += )
_CODASIP_INT_POD_COMPOUND_ASSIGNMENT( -= )
_CODASIP_INT_POD_COMPOUND_ASSIGNMENT( *= )
_CODASIP_INT_POD_COMPOUND_ASSIGNMENT( /= )
_CODASIP_INT_POD_COMPOUND_ASSIGNMENT( %= )
_CODASIP_INT_POD_COMPOUND_ASSIGNMENT( &= )
_CODASIP_INT_POD_COMPOUND_ASSIGNMENT( |= )
_CODASIP_INT_POD_COMPOUND_ASSIGNMENT( ^= )
_CODASIP_INT_POD_COMPOUND_ASSIGNMENT( <<= )
_CODASIP_INT_POD_COMPOUND_ASSIGNMENT( >>= )

}   // namespace codasip::integer
}   // namespace codasip

#undef _CODASIP_INT_POD_COMPOUND_ASSIGNMENT

#endif  // INC_CODASIP_INTEGER_INTEGER_NUMBER_POD_COMPOUND_ASSIGNMENT_H_
