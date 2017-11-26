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
 *  \brief  Implementation of the class
 *          codasip::integer::detail::NativeIntegerBackend.
 */

#ifndef INC_CODASIP_INTEGER_NATIVE_INTEGER_BACKEND_H_
#define INC_CODASIP_INTEGER_NATIVE_INTEGER_BACKEND_H_

#include "detail/defs.h"
#include "detail/misc.h"
#include "detail/numeric_limits.h"
#include <string>       // std::string
#include <ostream>      // std::ios_base
#include <initializer_list>

/**
 *  \addtogroup CODASIP_INT
 *  \{
 */

/**
 *  \def    _CODASIP_NATIVE_INT_BACKEND_DEF_INCDEC
 *  \brief  Generates definition of unary pre/post increment/decrement operator
 *          for NativeIntegerBackend.
 *  \param  op unary operator type
 *  \param  compound compound assignment operator used to implement the unary
 *          operator.
 */
#ifndef _CODASIP_NATIVE_INT_BACKEND_DEF_INCDEC
#define _CODASIP_NATIVE_INT_BACKEND_DEF_INCDEC(op, compound) \
    template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN> \
    _CODASIP_INT_INLINE typename NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::reference \
    NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::operator op() CODASIP_NOEXCEPT \
    { \
        (*this) compound static_cast<pod_type>(1); \
        return *this; \
    }
#else
    #error "Macro _CODASIP_NATIVE_INT_BACKEND_DEF_INCDEC already defined!!!"
#endif

/**
 *  \def    _CODASIP_NATIVE_INT_BACKEND_DEF_UNARY
 *  \brief  Generates definition of unary operator for NativeIntegerBackend.
 *  \param  op unary operator type
 */
#ifndef _CODASIP_NATIVE_INT_BACKEND_DEF_UNARY
#define _CODASIP_NATIVE_INT_BACKEND_DEF_UNARY(op, func) \
    template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN> \
    _CODASIP_INT_INLINE typename NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::value_type \
    NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::operator op() const CODASIP_NOEXCEPT \
    { \
        return static_cast<pod_type>(func(m_Value)); \
    }
#else
    #error "Macro _CODASIP_NATIVE_INT_BACKEND_DEF_UNARY already defined!!!"
#endif

/**
 *  \def    _CODASIP_NATIVE_INT_BACKEND_DEF_COMPOUND
 *  \brief  Generates definition of compound assignment operator for
 *          NativeIntegerBackend.
 *  \param  op binary operator type
 */
#ifndef _CODASIP_NATIVE_INT_BACKEND_DEF_COMPOUND
#define _CODASIP_NATIVE_INT_BACKEND_DEF_COMPOUND(op) \
    template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN> \
    template<class T> \
    _CODASIP_INT_INLINE typename NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::reference \
    NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::operator op##=( const T& rhs ) \
    { \
        AssignInteger( m_Value op static_cast<const pod_type>(rhs) ); \
        return *this; \
    }
#else
    #error "Macro _CODASIP_NATIVE_INT_BACKEND_DEF_COMPOUND already defined!!!"
#endif

/**
 *  \def    _CODASIP_NATIVE_INT_BACKEND_COMPARE_CND
 *  \brief  Defines condition for comparison member function which chooses the
 *          correct version. If signs do match or if bit-width of both operands
 *          is equal to native integer types the optimized version should be
 *          chosen.
 */
#ifndef _CODASIP_NATIVE_INT_BACKEND_COMPARE_CND
#define _CODASIP_NATIVE_INT_BACKEND_COMPARE_CND( rhsBits, rhsSign ) \
    (::codasip::integer::detail::use_direct_native_int_comparator<_CODASIP_BITS,_CODASIP_SIGN, rhsBits, rhsSign>::value)
#else
    #error "Macro _CODASIP_NATIVE_INT_BACKEND_COMPARE_CND already defined!!!"
#endif

namespace codasip {
namespace integer {
namespace backends {

/**
 *  \class  NativeIntegerBackend
 *  \brief  Forward declaration of the integer wrapper class for specified
 *          bit-width and sign. The implementation should be provided only for
 *          integers with bit-width lower or equal to widest standard integer
 *          type (uint64_t).
 *  \tparam _CODASIP_BITS bit-width of the type with (sign bit included).
 *  \tparam _CODASIP_SIGN signed (true) or unsigned integer.
 *  \tparam _CODASIP_IS_VALID indicates whether template parameters are properly
 *          configured or not. Generates compilation error when trying to use it
 *          with bigger bit-width.
 */
template
<
    unsigned _CODASIP_BITS,
    bool _CODASIP_SIGN,
    bool _CODASIP_IS_VALID = ::codasip::integer::detail::is_trivial_fixed_int<_CODASIP_BITS>::value &&
        (_CODASIP_BITS != 0) &&
        !(_CODASIP_BITS == 1 && _CODASIP_SIGN)
>
class NativeIntegerBackend;

/**
 *  \class  NativeIntegerBackend
 *  \brief  Represents integer type with arbitrary precision up to 64 bits. This
 *          implementation is a tiny/lightweight wrapper around native/standard
 *          integer type. The nearest higher or equal native integer type is
 *          chosen to hold the actual value. Does not provide full range of
 *          unary, binary, assignment operators, it is a backend only. It is
 *          expected that some other wrapper class will implement full operator
 *          support.
 *          The implementation relies on the C++ compiler inlining and other
 *          optimizations to optimize out nested function calls, unnamed objects,
 *          ...
 *  \tparam _CODASIP_BITS bit-width of the type with (sign bit included).
 *  \tparam _CODASIP_SIGN signed (true) or unsigned integer.
 */
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
class NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>
{
public:
    /// template parameter alias for bit-width of the integer
    static CODASIP_CONSTEXPR unsigned BIT_WIDTH = _CODASIP_BITS;
    /// template parameter alias for sign of the integer
    static CODASIP_CONSTEXPR bool IS_SIGNED = _CODASIP_SIGN;
    /// size of the array required to hold the value (only for compatibility)
    static CODASIP_CONSTEXPR unsigned SIZE = 1;

    // behave similarly to STL

    /// this type
    typedef NativeIntegerBackend<BIT_WIDTH,IS_SIGNED> value_type;
    /// pointer type
    typedef value_type*         pointer;
    /// pointer to constant type
    typedef const value_type*   const_pointer;
    /// reference type
    typedef value_type&         reference;
    /// reference to constant type
    typedef const value_type&   const_reference;
    /// selects the POD type
    typedef typename ::codasip::integer::detail::underlying_type_helper<
        BIT_WIDTH, IS_SIGNED>::type pod_type;
    /// select unsigned POD type
    typedef typename ::codasip::integer::detail::underlying_type_helper<
        BIT_WIDTH, false>::type unsigned_pod_type;

    /**
     *  \brief  Default constructor initializes to zero.
     */
    NativeIntegerBackend() CODASIP_NOEXCEPT;
    /**
     *  \brief  Conversion constructor. The only requirement is that the value
     *          can be casted to \em pod_type.
     *  \param  rhs value to assign
     */
    template<typename T>
    NativeIntegerBackend( const T& rhs ) CODASIP_NOEXCEPT;
    /**
     *  \brief  Default copy constructor.
     *  \param  rhs value to assign
     */
    NativeIntegerBackend( const_reference rhs ) CODASIP_NOEXCEPT;
    /**
     *  \brief  Default move constructor.
     *  \param  rhs value to assign
     */
    NativeIntegerBackend( NativeIntegerBackend&& rhs ) CODASIP_NOEXCEPT;
    /**
     *  \brief  Initialize the content based on the first value in given list.
     *  \param  initList initialization list
     */
    NativeIntegerBackend( std::initializer_list<pod_type> initList ) CODASIP_NOEXCEPT;
    /**
     *  \brief  Assignment with the same data type.
     *  \param  rhs value to assign
     */
    reference operator=( const_reference rhs ) CODASIP_NOEXCEPT;
    /**
     *  \brief  Default move assignment with the same data type.
     *  \param  rhs value to assign
     */
    reference operator=( NativeIntegerBackend&& rhs ) CODASIP_NOEXCEPT;
    /**
     *  \brief  Assignment operator for trivial integer.
     *  \param  rhs value to assign
     */
    template<typename T>
    reference operator=( const T& rhs ) CODASIP_NOEXCEPT;
    /**
     *  \brief  Conversion operator to standard integer types  only (used by
     *          static_cast).
     *  \tparam T target standard integer type
     */
    template<typename T, _CODASIP_INT_ENABLE_IF_POD(T, bool) = 0>
    explicit operator T() const CODASIP_NOEXCEPT;
    /**
     *  \brief  Conversion operator to standard integer types  only (used by
     *          static_cast).
     *  \tparam T target standard integer type
     */
    template<typename T, _CODASIP_INT_ENABLE_IF(std::is_floating_point<T>::value, bool) = 0>
    explicit operator T() const CODASIP_NOEXCEPT;
    /**
     *  \{
     *  \brief  Unary operator.
     */
    reference operator++() CODASIP_NOEXCEPT;
    reference operator--() CODASIP_NOEXCEPT;
    value_type operator~() const CODASIP_NOEXCEPT;
    bool operator!() const CODASIP_NOEXCEPT;
    value_type operator-() const CODASIP_NOEXCEPT;

    // arithmetic compound operators

    /**
     *  \} \{
     *  \brief  Compound operator.
     *  \param  rhs operand value.
     *  \return self reference
     */
    template<class T>
    reference operator+=( const T& rhs );
    template<class T>
    reference operator-=( const T& rhs );
    template<class T>
    reference operator*=( const T& rhs );
    template<class T>
    reference operator/=( const T& rhs );
    template<class T>
    reference operator%=( const T& rhs );

    // bitwise compound operators

    template<class T>
    reference operator&=( const T& rhs );
    template<class T>
    reference operator|=( const T& rhs );
    template<class T>
    reference operator^=( const T& rhs );
    reference operator<<=( const unsigned rhs ) CODASIP_NOEXCEPT;
    reference operator>>=( const unsigned rhs ) CODASIP_NOEXCEPT;
    /**
     *  \} \{
     *  \brief  Comparison functions.
     *  \param  rhs operand value.
     */
    template<typename T>
    bool operator==( const T& rhs ) const CODASIP_NOEXCEPT;
    template<typename T>
    bool operator<( const T& rhs ) const CODASIP_NOEXCEPT;
    template<typename T>
    bool operator>( const T& rhs ) const CODASIP_NOEXCEPT;
    /**
     *  \}
     *  \brief  Indicates whether current value is negative or not. Is relevant
     *          for signed integer types only.
     */
    bool IsNegative() const CODASIP_NOEXCEPT;
    /**
     *  \brief  Parse the whole input string and updated stored value. If the
     *          parsing fails, the current value is undefined.
     *  \param  str source input string
     *  \param  n length of the input string
     *  \retval true parsing successful
     *  \retval false parsing failed, unexpected character occurred
     */
    bool AssignFromString( const char* str, size_t n );
    /**
     *  \brief  Returns the string representation.
     *  \param  flags formating flags, only radix/base number and upper/lower
     *          cases are considered.
     */
    std::string ToStr( const std::ios_base::fmtflags flags ) const;
    /**
     *  \{
     *  \brief  Return pointer to the data contained by the array.
     */
    pod_type* data() CODASIP_NOEXCEPT;
    const pod_type* data() const CODASIP_NOEXCEPT;
    /**
     *  \}
     *  \brief  Swap content of the integers.
     *  \param  rhs value to swap content with
     */
    void swap( reference rhs ) CODASIP_NOEXCEPT;
    /**
     *  \copydoc Integer::AssignFromStringShift
     */
    bool AssignFromStringShift(const char* str,
        const size_t n,
        const unsigned radix,
        const bool positive);
private:
    // assignments
    void AssignInteger( const pod_type );
    bool DoAssignFromStringDec( const char*, const bool );

    // generic comparison
    template<template<typename> class Comparator>
    bool Compare( const_reference ) const;
    template<template<typename> class Comparator, typename T>
    _CODASIP_INT_ENABLE_IF_POD(T, bool) Compare( const T ) const;
    template<template<typename> class Comparator, unsigned _CODASIP_RHS_BITS, bool _CODASIP_RHS_SIGN>
    bool Compare( const NativeIntegerBackend<_CODASIP_RHS_BITS, _CODASIP_RHS_SIGN>& ) const;
    template<template<typename>class Comparator, unsigned _CODASIP_RHS_BITS, bool _CODASIP_RHS_SIGN, typename T>
    _CODASIP_INT_ENABLE_IF(_CODASIP_NATIVE_INT_BACKEND_COMPARE_CND(_CODASIP_RHS_BITS, _CODASIP_RHS_SIGN), bool)
    DoCompare( const T ) const;
    template<template<typename>class Comparator, unsigned _CODASIP_RHS_BITS, bool _CODASIP_RHS_SIGN, typename T>
    _CODASIP_INT_ENABLE_IF(!_CODASIP_NATIVE_INT_BACKEND_COMPARE_CND(_CODASIP_RHS_BITS, _CODASIP_RHS_SIGN), bool)
    DoCompare( const T& ) const;

    template<template<typename> class Operator>
    void DivMod( const_reference );
    template<template<typename> class Operator, typename T>
    _CODASIP_INT_ENABLE_IF_POD(T, void) DivMod( const T );
    template<template<typename> class Operator, unsigned _CODASIP_RHS_BITS, bool _CODASIP_RHS_SIGN>
    void DivMod( const NativeIntegerBackend<_CODASIP_RHS_BITS, _CODASIP_RHS_SIGN>& );
    template<template<typename> class Operator, unsigned  _CODASIP_RHS_BITS, bool _CODASIP_RHS_SIGN, typename T>
    _CODASIP_INT_ENABLE_IF(_CODASIP_NATIVE_INT_BACKEND_COMPARE_CND(_CODASIP_RHS_BITS, _CODASIP_RHS_SIGN), void)
    DoDivMod( const T rhs );
    template<template<typename> class Operator, unsigned  _CODASIP_RHS_BITS, bool _CODASIP_RHS_SIGN, typename T>
    _CODASIP_INT_ENABLE_IF(!_CODASIP_NATIVE_INT_BACKEND_COMPARE_CND(_CODASIP_RHS_BITS, _CODASIP_RHS_SIGN), void)
    DoDivMod( const T rhs );

    /// standard integer holding current value
    pod_type m_Value;
};


////////////////////////////////////////////////////////////////////////////////
//                             Public interface                               //
////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::NativeIntegerBackend() CODASIP_NOEXCEPT
  : m_Value( 0 )
{}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
template<typename T>
_CODASIP_INT_INLINE NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::NativeIntegerBackend(
    const T& rhs ) CODASIP_NOEXCEPT
{
    AssignInteger( static_cast<const pod_type>(rhs) );
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
inline NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::NativeIntegerBackend(
    std::initializer_list<pod_type> initList ) CODASIP_NOEXCEPT
{
    AssignInteger( *initList.begin() );
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::NativeIntegerBackend(
    const_reference rhs ) CODASIP_NOEXCEPT
  : m_Value( rhs.m_Value )
{}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::NativeIntegerBackend(
    NativeIntegerBackend&& rhs ) CODASIP_NOEXCEPT
  : m_Value( std::move(rhs.m_Value) )
{}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE typename NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::reference
NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::operator=(const_reference rhs) CODASIP_NOEXCEPT
{
    m_Value = rhs.m_Value;
    return *this;
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE typename NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::reference
NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::operator=(NativeIntegerBackend&& rhs) CODASIP_NOEXCEPT
{
    m_Value = std::move(rhs.m_Value);
    return *this;
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
template<typename T>
_CODASIP_INT_INLINE typename NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::reference
NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::operator=(const T& rhs) CODASIP_NOEXCEPT
{
    AssignInteger( static_cast<const pod_type>(rhs) );
    return *this;
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
template<typename T, _CODASIP_INT_ENABLE_IF_POD(T, bool)>
_CODASIP_INT_INLINE NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::operator T() const CODASIP_NOEXCEPT
{
    return m_Value;
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
template<typename T, _CODASIP_INT_ENABLE_IF(std::is_floating_point<T>::value, bool)>
_CODASIP_INT_INLINE NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::operator T() const CODASIP_NOEXCEPT
{
    return static_cast<T>(m_Value);
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE bool
NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::operator!() const CODASIP_NOEXCEPT
{
    return !m_Value;
}

////////////////////////////////////////////////////////////////////////////////
_CODASIP_NATIVE_INT_BACKEND_DEF_UNARY(~, ~)
_CODASIP_NATIVE_INT_BACKEND_DEF_UNARY(-, ::codasip::integer::detail::GetUnaryNegation)

_CODASIP_NATIVE_INT_BACKEND_DEF_INCDEC(++, +=)
_CODASIP_NATIVE_INT_BACKEND_DEF_INCDEC(--, -=)

_CODASIP_NATIVE_INT_BACKEND_DEF_COMPOUND(+)
_CODASIP_NATIVE_INT_BACKEND_DEF_COMPOUND(-)
_CODASIP_NATIVE_INT_BACKEND_DEF_COMPOUND(*)
_CODASIP_NATIVE_INT_BACKEND_DEF_COMPOUND(&)
_CODASIP_NATIVE_INT_BACKEND_DEF_COMPOUND(|)
_CODASIP_NATIVE_INT_BACKEND_DEF_COMPOUND(^)

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
template<class T>
_CODASIP_INT_INLINE typename NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::reference
NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::operator /=( const T& rhs )
{
    DivMod<std::divides>( rhs );
    return *this;
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
template<class T>
_CODASIP_INT_INLINE typename NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::reference
NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::operator %=( const T& rhs )
{
    DivMod<std::modulus>( rhs );
    return *this;
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE
typename NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::reference
NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::operator <<=(
    const unsigned rhs ) CODASIP_NOEXCEPT
{
    if ( rhs < BIT_WIDTH )
    {
        AssignInteger( m_Value << rhs );
    }
    else
    {   // fill the vacated bit positions with zeros
        AssignInteger( 0 );
    }
    return *this;
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE
typename NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::reference
NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::operator >>=(
    const unsigned rhs ) CODASIP_NOEXCEPT
{
    if ( rhs < BIT_WIDTH )
    {
        AssignInteger( m_Value >> rhs );
    }
    else
    {   // fill the vacated bit positions with zeros for unsigned, otherwise
        // fill the vacated bit positions with the value of the most significant (sign) bit
        AssignInteger( integer::detail::GetSignExtension(m_Value) );
    }
    return *this;
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
template<typename T>
_CODASIP_INT_INLINE bool
NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::operator==(
    const T& rhs ) const CODASIP_NOEXCEPT
{
    return Compare<std::equal_to>( rhs );
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
template<typename T>
_CODASIP_INT_INLINE bool
NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::operator<(
    const T& rhs ) const CODASIP_NOEXCEPT
{
    return Compare<std::less>( rhs );
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
template<typename T>
_CODASIP_INT_INLINE bool
NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::operator>(
    const T& rhs ) const CODASIP_NOEXCEPT
{
    return Compare<std::greater>( rhs );
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE
bool NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::IsNegative() const CODASIP_NOEXCEPT
{   // signed only and MSB bit is set
    return IS_SIGNED && (m_Value < 0);
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE bool
NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::AssignFromString(
    const char* str,
    size_t n )
{
    bool isNeg = false;
    unsigned radix = 10;
    ::codasip::integer::detail::DetectIntegerFormatFromString( isNeg, radix, n, str );
    // empty string or zero
    bool success = (n == 0);
    AssignInteger( 0 );
    if ( n != 0 )
    {   // non-empty string
        if ( radix == 10 )
        {   // string in decimal format
            success = DoAssignFromStringDec( str, isNeg );
        }
        else
        {   // string in hexadecimal, octal or binary format
            success = AssignFromStringShift(str, n, radix, !isNeg);
        }
    }
    return success;
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
inline std::string NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::ToStr(
    const std::ios_base::fmtflags flags ) const
{
    using namespace integer::detail;
    std::string result;
    if ( flags & std::ios_base::dec )
    {
        result += ToDecimalStr<BIT_WIDTH, unsigned_pod_type>( GetAbsValue(m_Value) );
    }
    else if ( flags & std::ios_base::hex )
    {
        result = ToHexadecimalStr<BIT_WIDTH, pod_type>( m_Value,
            (flags & std::ios_base::uppercase) ? 'A' : 'a');
    }
    else if ( flags & std::ios_base::oct )
    {
        result = ToOctalStr<BIT_WIDTH, pod_type>( m_Value );
    }
    else
    {
        result = ToBinaryStr<BIT_WIDTH, pod_type>( m_Value );
    }
    return result;
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE
typename NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::pod_type*
NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::data() CODASIP_NOEXCEPT
{
    return &m_Value;
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE
const typename NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::pod_type*
NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::data() const CODASIP_NOEXCEPT
{
    return &m_Value;
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE void NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::swap(
    reference rhs ) CODASIP_NOEXCEPT
{
    std::swap( m_Value, rhs.m_Value );
}

////////////////////////////////////////////////////////////////////////////////
//                             Private interface                              //
////////////////////////////////////////////////////////////////////////////////
/**
 *  \brief  Assign integer value to wrapper's POD type and do bit-correction.
 *          For unsigned types the compiler optimizes the code and creates mask
 *          with bit-wise and operation. Also the compiler removes the shifting
 *          if the bit-width fits POD type exactly. All optimization are performed
 *          even with O0 optimization level (gcc-4.8).
 *  \param  rhs integer value to assign
 */
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE void
NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::AssignInteger(
    const pod_type rhs )
{
    m_Value = ::codasip::integer::detail::DoBitCorrection<_CODASIP_BITS>( rhs );
}

/**
 *  \brief  Parse string holding integer in decimal format and assign the
 *          internal value.
 *  \param  str source input string to parse
 *  \param  radix valid values are 16, 8, 2
 *  \param  isNeg indicates whether parsed number should be negative or not
 */
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE bool NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::DoAssignFromStringDec(
    const char* str,
    const bool isNeg )
{
    pod_type value = 0, result = 0;
    while ( *str != '\0' )
    {
        value = *str - '0';
        if ( value >= 10 )
        {   // Unexpected character found while parsing string input
            return false;
        }
        // update parsed value
        result *= 10;
        result += value;
        ++str;
    }
    if ( isNeg )
    {
        result = ::codasip::integer::detail::GetUnaryNegation(result);
    }
    AssignInteger( result );
    return true;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
inline bool NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::AssignFromStringShift(
    const char* str,
    const size_t n,
    const unsigned radix,
    const bool positive)
{
    const unsigned shift = (radix == 16) ? 4 : (radix == 8) ? 3 : 1;
    pod_type value = 0, result = 0;
    char c = 0;
    for (size_t i = 0; i < n; ++i)
    {
        c = *str;
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
        // update parsed value
        result <<= shift;
        result |= value;
        ++str;
    }
    if (!positive)
    {
        result = ::codasip::integer::detail::GetUnaryNegation(result);
    }
    AssignInteger( result );
    return true;
}

/**
 *  \brief  Direct comparison of two instances of the same data type.
 *  \tparam Compare binary comparison functor template
 *  \param  rhs second comparison operand.
 */
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
template<template<typename> class Comparator>
_CODASIP_INT_INLINE bool NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::Compare(
    const_reference rhs ) const
{
    return Comparator<pod_type>()( m_Value, rhs.m_Value );
}

/**
 *  \brief  Compare with native integer type. Direct comparison should be is made
 *          if the sign matches or if bit-width of both operands matches.
 *  \copydetails Compare( const_reference )
 */
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
template<template<typename> class Comparator, typename T>
_CODASIP_INT_INLINE _CODASIP_INT_ENABLE_IF_POD(T, bool)
NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::Compare( const T rhs ) const
{
    return DoCompare<Comparator,
        ::codasip::integer::detail::native_int_bitwidth_helper<T>::value,
        std::numeric_limits<T>::is_signed,
        T>( rhs );
}

/**
 *  \brief  Compare two different integer wrappers.
 *  \copydetails Compare( const T )
 */
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
template<template<typename> class Comparator, unsigned _CODASIP_RHS_BITS, bool _CODASIP_RHS_SIGN>
_CODASIP_INT_INLINE bool NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::Compare(
    const NativeIntegerBackend<_CODASIP_RHS_BITS, _CODASIP_RHS_SIGN>& rhs ) const
{
    return DoCompare<Comparator, _CODASIP_RHS_BITS, _CODASIP_RHS_SIGN>( rhs );
}

/**
 *  \brief  Provide fast implementation of comparison operation directly on POD
 *          type without creating any temporary backend/wrapper objects. If
 *          necessary the data types will be extended to nearest sufficient POD
 *          integer type and then compared.
 *  \tparam Compare comparison functor template
 *  \tparam T POD integer type
 *  \param  rhs second comparison operand.
 */
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
template<template<typename> class Comparator, unsigned  _CODASIP_RHS_BITS, bool _CODASIP_RHS_SIGN, typename T>
_CODASIP_INT_INLINE
_CODASIP_INT_ENABLE_IF(_CODASIP_NATIVE_INT_BACKEND_COMPARE_CND(_CODASIP_RHS_BITS, _CODASIP_RHS_SIGN), bool)
NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::DoCompare( const T rhs ) const
{
    using namespace ::codasip::integer::detail;
    typedef typename BinaryResultMaxPod<
        BIT_WIDTH, IS_SIGNED,
        _CODASIP_RHS_BITS, _CODASIP_RHS_SIGN>::type compare_type;
    // fast version comparing values directly
    return Comparator<compare_type>()(
        static_cast<compare_type>(m_Value),
        static_cast<compare_type>(rhs) );
}

/**
 *  \brief  Provide implementation of comparison operation with creation of
 *          temporary backend/wrapper objects. The comparison result is chosen
 *          automatically and both values are casted properly to target
 *          comparison type.
 *  \tparam Compare comparison functor template
 *  \tparam T second data type to compare
 *  \param  rhs second comparison operand.
 */
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
template<template<typename> class Comparator, unsigned  _CODASIP_RHS_BITS, bool _CODASIP_RHS_SIGN, typename T>
_CODASIP_INT_INLINE
_CODASIP_INT_ENABLE_IF(!_CODASIP_NATIVE_INT_BACKEND_COMPARE_CND(_CODASIP_RHS_BITS, _CODASIP_RHS_SIGN), bool)
NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::DoCompare( const T& rhs ) const
{
    using namespace ::codasip::integer::detail;
    typedef return_type_helper<
        BIT_WIDTH, IS_SIGNED,
        _CODASIP_RHS_BITS, _CODASIP_RHS_SIGN> compare_type_helper;
    typedef NativeIntegerBackend<
        compare_type_helper::BINARY_W,
        compare_type_helper::BINARY_S> compare_type;
    // potentially slower implementation creating unnamed objects converting
    // value correctly according to target comparison type
    // but with native integers there is no penalty
    return Comparator<compare_type>()( compare_type(m_Value), compare_type(rhs) );
}

/**
 *  \brief  Direct division/modulus of two instances of the same data type.
 *  \tparam Operator binary operation functor template
 *  \param  rhs second operand.
 */
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
template<template<typename> class Operator>
_CODASIP_INT_INLINE void NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::DivMod(
    const_reference rhs )
{
    AssignInteger( Operator<pod_type>()(m_Value, rhs.m_Value) );
}

/**
 *  \brief  Divide/Module with native integer type. Direct operation should be made
 *          if the sign matches or if bit-width of both operands matches native
 *          type.
 *  \copydetails DivMod( const_reference )
 */
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
template<template<typename> class Operator, typename T>
_CODASIP_INT_INLINE _CODASIP_INT_ENABLE_IF_POD(T, void)
NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::DivMod( const T rhs )
{
    DoDivMod<Operator,
        ::codasip::integer::detail::native_int_bitwidth_helper<T>::value,
        std::numeric_limits<T>::is_signed,
        T>( rhs );
}

/**
 *  \brief  Divide/Module two different integer wrappers.
 *  \copydetails DivMod( const T )
 */
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
template<template<typename> class Operator, unsigned _CODASIP_RHS_BITS, bool _CODASIP_RHS_SIGN>
_CODASIP_INT_INLINE void NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::DivMod(
    const NativeIntegerBackend<_CODASIP_RHS_BITS, _CODASIP_RHS_SIGN>& rhs )
{
    typedef typename NativeIntegerBackend<_CODASIP_RHS_BITS, _CODASIP_RHS_SIGN>::pod_type
        rhs_pod_type;
    return DoDivMod<Operator, _CODASIP_RHS_BITS, _CODASIP_RHS_SIGN>(
        static_cast<rhs_pod_type>(rhs) );
}

/**
 *  \brief  Provide fast implementation of division operation directly on POD
 *          type without creating any temporary backend/wrapper objects.
 *  \tparam Operator binary operator functor template
 *  \tparam T POD integer type
 *  \param  rhs second comparison operand.
 */
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
template<template<typename> class Operator, unsigned  _CODASIP_RHS_BITS, bool _CODASIP_RHS_SIGN, typename T>
_CODASIP_INT_INLINE
_CODASIP_INT_ENABLE_IF(_CODASIP_NATIVE_INT_BACKEND_COMPARE_CND(_CODASIP_RHS_BITS, _CODASIP_RHS_SIGN), void)
NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::DoDivMod( const T rhs )
{
    static_assert( _CODASIP_INT_INTEGRAL_CND(T),
        "This division function was defined for integral types only." );
    typedef typename ::codasip::integer::detail::BinaryResultMaxPod<
        BIT_WIDTH, IS_SIGNED, _CODASIP_RHS_BITS, _CODASIP_RHS_SIGN>::type
        result_type;
    // fast version divides values directly
    AssignInteger( Operator<result_type>()(result_type(m_Value), result_type(rhs)) );
}

/**
 *  \brief  Provide implementation of comparison operation with creation of
 *          temporary backend/wrapper objects. The comparison result is chosen
 *          automatically and both values are casted properly to target
 *          comparison type.
 *  \tparam Compare comparison functor template
 *  \tparam T second data type to compare
 *  \param  rhs second comparison operand.
 */
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
template<template<typename> class Operator, unsigned  _CODASIP_RHS_BITS, bool _CODASIP_RHS_SIGN, typename T>
_CODASIP_INT_INLINE
_CODASIP_INT_ENABLE_IF(!_CODASIP_NATIVE_INT_BACKEND_COMPARE_CND(_CODASIP_RHS_BITS, _CODASIP_RHS_SIGN), void)
NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>::DoDivMod( const T rhs )
{
    static_assert( _CODASIP_INT_INTEGRAL_CND(T),
        "This division function was defined for integral types only." );
    typedef ::codasip::integer::detail::BinaryResultMaxPod<
        BIT_WIDTH, IS_SIGNED, _CODASIP_RHS_BITS, _CODASIP_RHS_SIGN>
        result_type_helper;
    typedef typename result_type_helper::type result_type;
    // potentially slower implementation preparing values by masking to correct bit-width
    AssignInteger( Operator<result_type>()(
        ::codasip::integer::detail::DoBitCorrection<result_type_helper::BIT_WIDTH, result_type>(m_Value),
         ::codasip::integer::detail::DoBitCorrection<result_type_helper::BIT_WIDTH, result_type>(rhs)) );
}

}   // namespace codasip::integer::backends
}   // namespace codasip::integer
}   // namespace codasip

 namespace std {

 /**
  *  \addtogroup CODASIP_INT
  *  \{
  *  \class  std::numeric_limits
  *  \brief  Specialize std::numeric_limits for NativeIntegerBackend.
  *  \}
  */
 template <unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
 struct numeric_limits< ::codasip::integer::backends::NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true> >
   : public ::codasip::integer::detail::numeric_limits_base< ::codasip::integer::backends::NativeIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true> >
 {};

 }  // namespace std

/** \} */   // addtogroup CODASIP_INT

#undef _CODASIP_NATIVE_INT_BACKEND_DEF_INCDEC
#undef _CODASIP_NATIVE_INT_BACKEND_DEF_UNARY
#undef _CODASIP_NATIVE_INT_BACKEND_DEF_COMPOUND
#undef _CODASIP_NATIVE_INT_BACKEND_COMPARE_CND

#endif  // INC_CODASIP_INTEGER_NATIVE_INTEGER_BACKEND_H_
