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
 *  \date   17. 3. 2016
 *  \brief  Implementation of the class codasip::integer::backends::FixedArrayIntegerBackend.
 */

#ifndef INC_CODASIP_INTEGER_FIXED_ARRAY_BACKEND_BACKEND_IMPL_H_
#define INC_CODASIP_INTEGER_FIXED_ARRAY_BACKEND_BACKEND_IMPL_H_

#include "../fixed_array_integer_backend.h"
#include "arithmetic.h"
#include "assign.h"
#include "bitwise_ops.h"
#include "comparison.h"
#include "division.h"
#include <cmath>

namespace codasip {
namespace integer {
namespace backends {

/**
 *  \def    _CODASIP_FIXED_ARRAY_INT_BACKEND_DEF_COMPOUND
 *  \brief  Generates definition of compound assignment operator for
 *          FixedArrayIntegerBackend.
 *  \param  op binary operator type
 *  \param  func function implementing the operation
 */
#ifndef _CODASIP_FIXED_ARRAY_INT_BACKEND_DEF_COMPOUND
#define _CODASIP_FIXED_ARRAY_INT_BACKEND_DEF_COMPOUND( op, func ) \
    template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN> \
    template<class T> \
    _CODASIP_INT_INLINE \
    typename std::enable_if<_CODASIP_INT_INTEGRAL_CND(T), typename FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::reference >::type \
    FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::operator op( const T rhs ) \
    { \
        func<SIZE>( m_Value, rhs ); \
        DoBitCorrection(); \
        return *this; \
    } \
    \
    template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN> \
    template<unsigned RHS_BITS, bool RHS_SIGNED> \
    _CODASIP_INT_INLINE \
    typename FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::reference \
    FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::operator op( \
        const FixedArrayIntegerBackend<RHS_BITS, RHS_SIGNED>& rhs ) \
    { \
        typedef FixedArrayIntegerBackend<RHS_BITS, RHS_SIGNED> rhs_type; \
        func<SIZE, rhs_type::SIZE>( m_Value, rhs.data() ); \
        DoBitCorrection(); \
        return *this; \
    }
#else
    #error "Macro _CODASIP_FIXED_ARRAY_INT_BACKEND_DEF_COMPOUND already defined!!!"
#endif


/**
 *  \def    _CODASIP_FIXED_ARRAY_INT_BACKEND_DEF_COMPARISON
 *  \brief  Generates definition of comparison operator for
 *          FixedArrayIntegerBackend.
 *  \param  op binary operator type
 *  \param  func function implementing the operation
 */
#ifndef _CODASIP_FIXED_ARRAY_INT_BACKEND_DEF_COMPARISON
#define _CODASIP_FIXED_ARRAY_INT_BACKEND_DEF_COMPARISON( op, func ) \
    template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN> \
    template<typename T> \
    _CODASIP_INT_INLINE \
    _CODASIP_INT_ENABLE_IF_POD(T, bool) \
    FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::operator op( const T rhs ) const \
    { \
        typedef integer::detail::return_type_helper< \
            BIT_WIDTH, IS_SIGNED, \
            integer::detail::native_int_bitwidth_helper<T>::value, \
            std::is_signed<T>::value> result_type; \
        typedef FixedArrayIntegerBackend<result_type::BIT_WIDTH, result_type::IS_SIGNED> \
            cmp_type; \
        \
        if ( cmp_type::IS_SIGNED == IS_SIGNED && IS_SIGNED == std::is_signed<T>::value ) \
        { \
            return func<SIZE>( data(), rhs ); \
        } \
        else if ( cmp_type::IS_SIGNED == IS_SIGNED ) \
        { \
            return this->operator op( cmp_type(rhs) ); \
        } \
        else \
        { \
            return cmp_type(*this) op rhs; \
        } \
    } \
    template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN> \
    template<unsigned RHS_BITS> \
    _CODASIP_INT_INLINE \
    bool FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::operator op( \
        const FixedArrayIntegerBackend<RHS_BITS, _CODASIP_SIGN>& rhs ) const \
    { \
        typedef FixedArrayIntegerBackend<RHS_BITS, _CODASIP_SIGN> rhs_type; \
        return func<SIZE, rhs_type::SIZE>( data(), rhs.data() ); \
    } \
    template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN> \
    template<unsigned RHS_BITS, bool RHS_SIGNED> \
    _CODASIP_INT_INLINE \
    bool FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::operator op( \
        const FixedArrayIntegerBackend<RHS_BITS, RHS_SIGNED>& rhs ) const \
    { \
        typedef integer::detail::return_type_helper< \
            BIT_WIDTH, IS_SIGNED, \
            RHS_BITS, RHS_SIGNED> result_type; \
        typedef FixedArrayIntegerBackend<result_type::BIT_WIDTH, result_type::IS_SIGNED> \
            cmp_type; \
        \
        if ( cmp_type::IS_SIGNED != IS_SIGNED ) \
        { \
            return cmp_type(*this).operator op( rhs ); \
        } \
        else \
        { \
            return this->operator op( cmp_type(rhs) ); \
        } \
    }
#else
    #error "Macro _CODASIP_FIXED_ARRAY_INT_BACKEND_DEF_COMPARISON already defined!!!"
#endif

////////////////////////////////////////////////////////////////////////////////
//                             Public interface                               //
////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE
FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::FixedArrayIntegerBackend() CODASIP_NOEXCEPT
{
    InitZero();
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE
FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::FixedArrayIntegerBackend(
    const_reference rhs ) CODASIP_NOEXCEPT
{
    CopyValue( rhs.data() );
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE
FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::FixedArrayIntegerBackend(
    value_type&& rhs ) CODASIP_NOEXCEPT
{
    CopyValue( rhs.data() );
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
template<typename T, _CODASIP_INT_ENABLE_IF_POD(T, bool)>
_CODASIP_INT_INLINE FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::FixedArrayIntegerBackend(
    const T rhs ) CODASIP_NOEXCEPT
{
    this->operator=( rhs );
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
template<unsigned RHS_BITS, bool RHS_SIGNED>
_CODASIP_INT_INLINE
FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::FixedArrayIntegerBackend(
    const FixedArrayIntegerBackend<RHS_BITS,RHS_SIGNED>& rhs ) CODASIP_NOEXCEPT
{
    this->operator=( rhs );
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE
FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::FixedArrayIntegerBackend(
    std::initializer_list<pod_type> initList) CODASIP_NOEXCEPT
{
    CopyValue( initList.begin() );
    DoBitCorrection();
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
template<typename T>
_CODASIP_INT_INLINE
typename std::enable_if<_CODASIP_INT_INTEGRAL_CND(T), typename FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::reference>::type
FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::operator=( const T rhs ) CODASIP_NOEXCEPT
{
    detail::DoAssign<SIZE>( m_Value, rhs );
    DoBitCorrection();
    return *this;
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
template<unsigned RHS_BITS, bool RHS_SIGNED>
_CODASIP_INT_INLINE
typename FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::reference
FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::operator=(
    const FixedArrayIntegerBackend<RHS_BITS,RHS_SIGNED>& rhs ) CODASIP_NOEXCEPT
{
    typedef FixedArrayIntegerBackend<RHS_BITS, RHS_SIGNED> rhs_type;
    detail::DoAssign<SIZE, rhs_type::SIZE>( m_Value, rhs.data() );
    DoBitCorrection();
    return *this;
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE
typename FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::reference
FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::operator=(
    const_reference rhs ) CODASIP_NOEXCEPT
{
    if ( this != &rhs )
    {   // avoid self assignment
        CopyValue( rhs.data() );
    }
    return *this;
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE
typename FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::reference
FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::operator=(
    value_type&& rhs ) CODASIP_NOEXCEPT
{
    if ( this != &rhs )
    {   // avoid self assignment
        CopyValue( rhs.data() );
    }
    return *this;
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
template<typename T, _CODASIP_INT_ENABLE_IF_POD(T, bool)>
_CODASIP_INT_INLINE FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::operator T() const CODASIP_NOEXCEPT
{
    return detail::DoToScalar<T, SIZE, pod_type>( m_Value );
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
template<typename T, _CODASIP_INT_ENABLE_IF(std::is_floating_point<T>::value, bool) >
FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::operator T() const CODASIP_NOEXCEPT
{
    if (_CODASIP_SIGN && this->IsNegative())
    {
        FixedArrayIntegerBackend<_CODASIP_BITS, false, true> helper( *this );
        helper.Negate();
        return -(static_cast<T>(helper));
    }
    else
    {
        T f = 0.0;
        for (int i = (SIZE-1); i >= 0; --i)
        {
            f = f * (1ull << array_helper::UNDERLYING_BIT_WIDTH) +
                static_cast<unsigned_pod_type>(m_Value[i]);
        }
        return f;
    }
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE
typename FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::reference
FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::operator++() CODASIP_NOEXCEPT
{
    return this->operator+=( static_cast<pod_type>(1) );
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE
typename FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::reference
FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::operator--() CODASIP_NOEXCEPT
{
    return this->operator-=( static_cast<pod_type>(1) );
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE
typename FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::value_type
FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::operator~() const CODASIP_NOEXCEPT
{   // rely on return value optimization
    value_type nrv( *this );
    nrv.Invert();
    return nrv;
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE
bool FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::operator!() const CODASIP_NOEXCEPT
{
    return detail::DoIsZero<SIZE>( m_Value );
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE
typename FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::value_type
FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::operator-() const CODASIP_NOEXCEPT
{   // rely on return value optimization
    value_type nrv( *this );
    nrv.Negate();
    return nrv;
}

////////////////////////////////////////////////////////////////////////////////
_CODASIP_FIXED_ARRAY_INT_BACKEND_DEF_COMPOUND(+=, detail::DoBinaryPlus)
_CODASIP_FIXED_ARRAY_INT_BACKEND_DEF_COMPOUND(-=, detail::DoBinaryMinus)
_CODASIP_FIXED_ARRAY_INT_BACKEND_DEF_COMPOUND(*=, detail::DoBinaryMultiplication)

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
template<class T>
_CODASIP_INT_INLINE
typename std::enable_if<_CODASIP_INT_INTEGRAL_CND(T), typename FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::reference >::type
FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::operator /=( const T rhs )
{
    DoDivModCompound<true>( rhs );
    return *this;
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
template<unsigned RHS_BITS, bool RHS_SIGNED>
inline //_CODASIP_INT_INLINE
typename FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::reference
FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::operator /=(
    const FixedArrayIntegerBackend<RHS_BITS, RHS_SIGNED>& rhs )
{
    DoDivModCompound<true>( rhs );
    return *this;
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
template<class T>
_CODASIP_INT_INLINE
typename std::enable_if<_CODASIP_INT_INTEGRAL_CND(T), typename FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::reference >::type
FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::operator %=( const T rhs )
{
    DoDivModCompound<false>( rhs );
    return *this;
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
template<unsigned RHS_BITS, bool RHS_SIGNED>
inline //_CODASIP_INT_INLINE
typename FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::reference
FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::operator %=(
    const FixedArrayIntegerBackend<RHS_BITS, RHS_SIGNED>& rhs )
{
    DoDivModCompound<false>( rhs );
    return *this;

}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
template<class T>
_CODASIP_INT_INLINE
typename FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::reference
FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::operator&=( const T& rhs ) CODASIP_NOEXCEPT
{
    DoBitwiseCompound<codasip::integer::detail::compound_bit_and>( rhs );
    return *this;
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
template<class T>
_CODASIP_INT_INLINE
typename FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::reference
FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::operator|=( const T& rhs ) CODASIP_NOEXCEPT
{
    DoBitwiseCompound<codasip::integer::detail::compound_bit_or>( rhs );
    return *this;
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
template<class T>
_CODASIP_INT_INLINE
typename FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::reference
FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::operator^=( const T& rhs ) CODASIP_NOEXCEPT
{
    DoBitwiseCompound<codasip::integer::detail::compound_bit_xor>( rhs );
    return *this;
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE
typename FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::reference
FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::operator<<=( const unsigned rhs ) CODASIP_NOEXCEPT
{
    if ( rhs != 0 )
    {
        detail::DoBitwiseShiftLeftCompound<SIZE>( m_Value, rhs );
        DoBitCorrection();
    }
    return *this;
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE
typename FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::reference
FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::operator>>=( const unsigned rhs ) CODASIP_NOEXCEPT
{
    if ( rhs != 0 )
    {   // no need for bit-correction after this call, the algorithm automatically
        // preserves correct MSBs (sign or zeros) because the underlying data type
        // has the same sign
        detail::DoBitwiseShiftRightCompound<SIZE>( m_Value, rhs );
    }
    return *this;
}

_CODASIP_FIXED_ARRAY_INT_BACKEND_DEF_COMPARISON( ==, detail::DoEqual )
_CODASIP_FIXED_ARRAY_INT_BACKEND_DEF_COMPARISON( <, detail::DoLess )
_CODASIP_FIXED_ARRAY_INT_BACKEND_DEF_COMPARISON( >, detail::DoGreater )

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE
bool FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::IsNegative() const CODASIP_NOEXCEPT
{   // signed only and MSB bit is set
    return detail::GetSignExtension( m_Value[SIZE -1] );
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE bool FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::AssignFromString(
    const char* str,
    size_t n )
{
    bool isNeg = false;
    unsigned radix = 10;
    ::codasip::integer::detail::DetectIntegerFormatFromString( isNeg, radix, n, str );
    bool success = (n == 0);
    if ( n != 0 )
    {   // non-empty string
        switch (radix)
        {
            case 2:
            case 16:
                // string in hexadecimal or binary format
                // no InitZero, is inside the Assign method
                success = AssignFromStringShift( str, n, radix, true );
                break;
            case 8:
                InitZero();
                success = DoAssignFromStringOct( str, n );
                break;
            case 10:
                // string in decimal format
                InitZero();
                success = DoAssignFromStringDec( str, n );
                break;
            default:
                return false;
                break;
        }
        if ( isNeg )
        {
            Negate();
        }
    }
    return success;
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
inline std::string FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::ToStr(
    const std::ios_base::fmtflags flags ) const
{
    std::string result;
    if ( flags & std::ios_base::dec )
    {
        if ( IsNegative() )
        {   // use temporary object to call conversion
            result = FixedArrayIntegerBackend<_CODASIP_BITS, false>(-(*this)).ToStr(flags);
        }
        else
        {
            result = ToStrDec();
        }
    }
    else if ( flags & std::ios_base::hex )
    {
        result = ToStrHex( (flags & std::ios_base::uppercase) ? 'A' : 'a' );
    }
    else if ( flags & std::ios_base::oct )
    {
        result = ToStrOct();
    }
    else
    {
        result = ToStrBin();
    }
    return result;
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE
typename FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::pod_type*
FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::data() CODASIP_NOEXCEPT
{
    return m_Value;
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE
const typename FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::pod_type*
FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::data() const CODASIP_NOEXCEPT
{
    return m_Value;
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE void FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::swap(
    reference rhs ) CODASIP_NOEXCEPT
{
    std::swap_ranges( data(), data() + SIZE, rhs.data() );
}

////////////////////////////////////////////////////////////////////////////////
//                             Private interface                              //
////////////////////////////////////////////////////////////////////////////////
/**
 *  \brief  Initialize the internal array to zero.
 */
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE
void FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::InitZero()
{
    std::memset( m_Value, 0, SIZE_IN_BYTES );
}

/**
 *  \brief  Copy given array to the internal one. The length is expected to be
 *          the same as the size of the internal one or bigger.
 */
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE
void FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::CopyValue(
    const pod_type* value )
{
    std::memcpy( m_Value, value, SIZE_IN_BYTES );
}

/**
 *  \brief  For bit-width configurations that do not align with underlying types
 *          the bit-correction of the MSB bits must be performed.
 */
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE
void FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::DoBitCorrection()
{
    if ( REMINDER_LEFT != 0 )
    {
        m_Value[SIZE -1] = static_cast<pod_type>(static_cast<pod_type>(
            m_Value[SIZE -1] << REMINDER_LEFT) >> REMINDER_LEFT);
    }
}

/**
 *  \brief  Perform bitwise AND/OR/XOR and update current value with the result.
 *          The scalar value will be sign extended if necessary.
 *  \param  rhs second operand of the binary operation
 */
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
template<class Binary, typename T>
_CODASIP_INT_INLINE
_CODASIP_INT_ENABLE_IF_POD(T, void)
FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::DoBitwiseCompound(
    const T rhs )
{
    detail::DoBitwiseOp<Binary, SIZE>( m_Value, rhs );
    DoBitCorrection();
}

/**
 *  \brief  Perform bitwise AND/OR/XOR and update current value with the result.
 *  \param  rhs second operand of the binary operation
 */
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
template<class Binary, unsigned RHS_BITS, bool RHS_SIGNED>
_CODASIP_INT_INLINE
void FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::DoBitwiseCompound(
    const FixedArrayIntegerBackend<RHS_BITS, RHS_SIGNED>& rhs )
{
    typedef FixedArrayIntegerBackend<RHS_BITS, RHS_SIGNED> rhs_type;
    detail::DoBitwiseOp<Binary, SIZE, rhs_type::SIZE>( m_Value, rhs.data() );
    DoBitCorrection();
}

/**
 *  \brief  Negate current value, apply unary - operator.
 */
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE
typename FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::reference
FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::Negate()
{
    detail::DoUnaryNeg<SIZE>( m_Value );
    DoBitCorrection();
    return *this;
}

/**
 *  \brief  Invert every bit of current value, apply unary ~ operator.
 */
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE
typename FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::reference
FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::Invert()
{
    detail::DoBitwiseNot<SIZE>( m_Value );
    DoBitCorrection();
    return *this;
}

/**
 *  \brief  Parse string holding integer in hexadecimal, octal or binary format
 *          and assign the internal value.
 *  \copydetails DoAssignFromStringOct()
 *  \param  radix valid values are 16, 8, 2
 */
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
inline bool FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::AssignFromStringShift(
    const char* str,
    const size_t n,
    const unsigned radix,
    const bool)
{
    const unsigned radixBits = (radix == 16) ? 4 : 1;
    const unsigned digitsPerWord = UNDERLYING_BIT_WIDTH / radixBits;

    InitZero();
    for ( size_t ii = 0, jj = 0; (ii < SIZE) && (jj < n); ++ii, jj += digitsPerWord )
    {
        pod_type word = 0, value;
        const size_t count = (jj + digitsPerWord) > n
            ? (n - jj)
            : digitsPerWord;
        for ( size_t kk = 0; (kk < count); ++kk )
        {
            const char c = *(str + n - jj - kk -1);
            if ( ('0' <= c) && (c <= '9') )
            {
                value = c - '0';
            }
            else if ( ('a' <= c) && (c <= 'f') )
            {
                value = c - 'a' + 10;
            }
            else if ( ('A' <= c) && (c <= 'F') )
            {
                value = c - 'A' + 10;
            }
            else
            {   // Unexpected character found while parsing string input
                return false;
            }
            word |= value << (radixBits * kk);
        }
        m_Value[ii] = word;
    }
    DoBitCorrection();
    return true;
}

/**
 *  \brief  Parse string holding integer in octal format and assign the internal
 *          value.
 *  \param  str source input string to parse
 *  \param  n length of the input string
 */
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
inline bool FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::DoAssignFromStringOct(
    const char* str,
    size_t /*n*/ )
{
    typedef uint64_t block_type;

    enum : unsigned { DEGITS_PER_BLOCK = std::numeric_limits<block_type>::digits / 3 };
    enum : block_type { BASE = 8 };

    while ( *str != '\0' )
    {   // reduces the number of shifts by reading a block into standard
        // integer then shift by 3*inner_loop_counter, e.g. by 30 for int32, by 63 for int64
        block_type block = 0;
        unsigned jj = 0;
        for ( ; jj < DEGITS_PER_BLOCK; ++jj )
        {
            char c = *str;
            if ( ('0' <= c) && (c <= '9') )
            {
                c -= '0';
            }
            else
            {   // Unexpected character found while parsing string input
                return false;
            }
            block *= BASE;
            block += c;
            ++str;
            if ( *str == '\0' )
            {
                break;
            }
        }
        (*this) <<= jj * 3;
        (*this) += block;
    }
    return true;
}

/**
 *  \brief  Parse string holding integer in decimal format and assign the internal
 *          value.
 *  \copydetails DoAssignFromStringOct()
 */
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
inline bool FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::DoAssignFromStringDec(
    const char* str,
    size_t n )
{
    typedef uint64_t block_type;

    enum { DEGITS_PER_BLOCK = std::numeric_limits<block_type>::digits10 };
    enum : block_type { BASE = 10 };

    size_t ii = 0;
    while ( (*(str + ii) != '\0') && (ii < n) )
    {   // reduces the number of multiplication by reading a block into standard
        // integer then multiply with 10^inner_loop_counter, e.g. 10^18
        block_type block = 0, block_mult = 1;
        for ( unsigned jj = 0; jj < DEGITS_PER_BLOCK; ++jj )
        {
            char c = *(str + ii);
            if ( ('0' <= c) && (c <= '9') )
            {
                c -= '0';
            }
            else
            {   // Unexpected character found while parsing string input
                return false;
            }
            block_mult *= BASE;
            block *= BASE;
            block += c;
            ++ii;
            if ( (*(str + ii)  == '\0') || (ii == n) )
            {
                break;
            }
        }
        (*this) *= block_mult;
        (*this) += block;
    }
    return true;
}

/**
 *  \brief  Convert current value into binary string representation. No
 *          formatting performed.
 */
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE std::string
FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::ToStrBin() const
{
    std::string result;
    result.reserve( BIT_WIDTH );
    for ( unsigned ii = SIZE; ii != 0; --ii )
    {
        result += integer::detail::ToBinaryStr<UNDERLYING_BIT_WIDTH, pod_type>(m_Value[ii -1]);
    }
    result.erase( 0, (SIZE * UNDERLYING_BIT_WIDTH) - BIT_WIDTH );
    return result;
}

/**
 *  \brief  Convert current value into octal string representation. No
 *          formatting performed.
 */
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE std::string
FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::ToStrOct() const
{
    enum : unsigned
    {
        DEGITS_PER_BLOCK = UNDERLYING_BIT_WIDTH / 3,
        RESULT_SIZE = BIT_WIDTH / 3 + DEGITS_PER_BLOCK
    };
    const unsigned_pod_type base = 8;

    std::string result( RESULT_SIZE, '0' );
    FixedArrayIntegerBackend<BIT_WIDTH, false> copy( *this );
    std::string::size_type ii = RESULT_SIZE;
    while ( !!copy )
    {
        unsigned_pod_type lsb = copy.data()[0];
        for ( unsigned jj = 0; jj < DEGITS_PER_BLOCK; ++jj )
        {
            result[--ii] = '0' + (lsb % base);
            lsb /= base;
        }
        copy >>= (3 * DEGITS_PER_BLOCK);
    }
    return integer::detail::RemoveLeadingZeros(result);
}

/**
 *  \brief  Convert current value into decimal string representation. No
 *          formatting performed.
 */
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE std::string
FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::ToStrDec() const
{
    enum : unsigned
    {
        RESULT_SIZE = BIT_WIDTH / 3 + std::numeric_limits<pod_type>::digits10
    };
    static const pod_type base = 10;
    static const pod_type div = static_cast<pod_type>(std::pow(base, std::numeric_limits<pod_type>::digits10));

    value_type copy( *this ), rem, quo;
    std::string result( RESULT_SIZE, '0' );
    std::string::size_type ii = RESULT_SIZE;
    while ( !!copy )
    {   // eliminate the number of vector divisions
        // divide with highest power of 10 the base type can hold
        detail::DoDivModUnsigned<SIZE, 1, pod_type>(
            rem.m_Value,
            quo.m_Value,
            copy.m_Value,
            &div );
        // convert reminder into a string
        pod_type lsb = rem.data()[0];
        for ( int jj = 0; jj < std::numeric_limits<pod_type>::digits10; ++jj )
        {
            result[--ii] = '0' + (lsb % base);
            lsb /= base;
        }
        // prepare next iteration
        copy = quo;
        copy.DoBitCorrection();
        quo.InitZero();
        rem.InitZero();
    }
    return integer::detail::RemoveLeadingZeros(result);
}

/**
 *  \brief  Convert current value into hexadecimal string representation. No
 *          formatting performed.
 *  \param  val 'a' or 'A' character value
 */
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE std::string
FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::ToStrHex(
    const char val ) const
{
    std::string result;
    result.reserve( BIT_WIDTH / 4 );
    result = integer::detail::ToHexadecimalStr<REMINDER_RIGHT, pod_type>(
        m_Value[SIZE -1], val );
    for ( unsigned ii = SIZE -1; ii != 0; --ii )
    {
        result += integer::detail::ToHexadecimalStr<UNDERLYING_BIT_WIDTH, pod_type>(
            m_Value[ii -1], val );
    }
    return result;
}

/**
 *  \brief  Implements compound operator for division or modulus.
 *  \param  rhs denominator
 */
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
template<bool DIVMOD, typename T>
_CODASIP_INT_INLINE _CODASIP_INT_ENABLE_IF_POD(T, void)
FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::DoDivModCompound( const T rhs )
{
    DoDivModCompound<DIVMOD>( FixedArrayIntegerBackend<
        integer::detail::native_int_bitwidth_helper<T>::value,
        std::numeric_limits<T>::is_signed>(rhs) );
}

/**
 *  \brief  Implements compound operator for division or modulus.
 *  \param  rhs denominator
 */
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
template<bool DIVMOD, unsigned RHS_BITS, bool RHS_SIGN>
_CODASIP_INT_INLINE void
FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::DoDivModCompound(
    const FixedArrayIntegerBackend<RHS_BITS, RHS_SIGN>& rhs )
{
    typedef FixedArrayIntegerBackend<RHS_BITS, RHS_SIGN> rhs_type;
    typedef integer::detail::return_type_helper<BIT_WIDTH, IS_SIGNED,
        RHS_BITS, RHS_SIGN> res_helper;
    typedef FixedArrayIntegerBackend<res_helper::BINARY_W, false>
        res_type;

    if ( !IS_SIGNED && !RHS_SIGN )
    {
        detail::DoDivModUnsigned<DIVMOD, SIZE, rhs_type::SIZE, unsigned_pod_type>(
            reinterpret_cast<unsigned_pod_type*>(data()),
            reinterpret_cast<const unsigned_pod_type*>(rhs.data()) );
    }
    else if ( IS_SIGNED != RHS_SIGN )
    {
        res_type lhsTmp( *this ), rhsTmp( rhs );
        detail::DoDivModUnsigned<DIVMOD, res_type::SIZE, res_type::SIZE>(
            reinterpret_cast<typename res_type::unsigned_pod_type*>(lhsTmp.data()),
            reinterpret_cast<const typename res_type::unsigned_pod_type*>(rhsTmp.data()) );
        CopyValue( reinterpret_cast<const pod_type*>(lhsTmp.data()) );
    }
    else
    {
        res_type lhsTmp( *this ), rhsTmp( rhs );
        const bool lhsNeg = IS_SIGNED && IsNegative();
        const bool rhsNeg = RHS_SIGN && rhs.IsNegative();
        if ( lhsNeg )
        {
            lhsTmp.Negate();
        }
        if ( rhsNeg )
        {
            rhsTmp.Negate();
        }
        detail::DoDivModUnsigned<DIVMOD, res_type::SIZE, res_type::SIZE>(
            reinterpret_cast<typename res_type::unsigned_pod_type*>(lhsTmp.data()),
            reinterpret_cast<const typename res_type::unsigned_pod_type*>(rhsTmp.data()) );
        if ( DIVMOD )
        {   // division: result is negative if only one of the operands is negative
            if ( lhsNeg ^ rhsNeg )
                lhsTmp.Negate();
        }
        else
        {   // modulus: result is negative if the first operand is negative
            if ( lhsNeg )
                lhsTmp.Negate();
        }
        CopyValue( reinterpret_cast<const pod_type*>(lhsTmp.data()) );
    }
    DoBitCorrection();
}

}   // namespace codasip::integer::backends
}   // namespace codasip::integer
}   // namespace codasip

#undef _CODASIP_FIXED_ARRAY_INT_BACKEND_DEF_COMPOUND
#undef _CODASIP_FIXED_ARRAY_INT_BACKEND_DEF_COMPARISON

#endif  // INC_CODASIP_INTEGER_FIXED_ARRAY_BACKEND_BACKEND_IMPL_H_
