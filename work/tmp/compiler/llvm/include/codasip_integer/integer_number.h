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
 *  \brief  Implementation of the class codasip::integer::IntegerNumber.
 */

#ifndef INC_CODASIP_INTEGER_INTEGER_NUMBER_H_
#define INC_CODASIP_INTEGER_INTEGER_NUMBER_H_

#include "detail/misc.h"
#include "detail/numeric_limits.h"
#include "fixed_array_integer_backend.h"
#include "native_integer_backend.h"
#include "check_condition.h"
#include <initializer_list>
#include <cstring>      // std::strlen

namespace codasip {
namespace integer {

/**
 *  \def    _CODASIP_INTEGER_NUMBER_DEC_COMPOUND_PUBLIC
 *  \brief  Generates declaration of compound assignment operator for IntegerNumber
 *          which should be public.
 *  \param  op binary operator type
 */
#ifndef _CODASIP_INTEGER_NUMBER_DEC_COMPOUND_PUBLIC
#define _CODASIP_INTEGER_NUMBER_DEC_COMPOUND_PUBLIC( op ) \
    template<class T> \
    _CODASIP_INT_ENABLE_IF_POD(T, reference) operator op( const T rhs ); \
    template<unsigned RHS_BITS, bool RHS_SIGNED> \
    reference operator op( const IntegerNumber<RHS_BITS, RHS_SIGNED>& rhs );
#else
#error "Macro _CODASIP_INTEGER_NUMBER_DEC_COMPOUND_PUBLIC already defined!!!"
#endif

/**
 *  \def    _CODASIP_INTEGER_NUMBER_DEF_COMPOUND_PUBLIC
 *  \brief  Generates definition of compound assignment operator for IntegerNumber
 *          which should be public. The operator uses given function to perform
 *          the actual operation.
 *  \param  op binary operator type
 *  \param  func function identifier
 */
#ifndef _CODASIP_INTEGER_NUMBER_DEF_COMPOUND_PUBLIC
#define _CODASIP_INTEGER_NUMBER_DEF_COMPOUND_PUBLIC( op, func ) \
    template<class T> \
    _CODASIP_INT_INLINE _CODASIP_INT_ENABLE_IF_POD(T, reference) operator op( const T rhs ) \
    { \
        typedef typename integer::detail::UnderlyingTypeHelper<T>::type rhs_pod_type; \
        Backend() op static_cast<const rhs_pod_type>(rhs); \
        return *this; \
    } \
    \
    template<unsigned RHS_BITS, bool RHS_SIGNED> \
    _CODASIP_INT_INLINE reference operator op( const IntegerNumber<RHS_BITS, RHS_SIGNED>& rhs ) \
    { \
        func( rhs ); \
        return *this; \
    }
#else
#error "Macro _CODASIP_INTEGER_NUMBER_DEF_COMPOUND_PUBLIC already defined!!!"
#endif

/**
 *  \def    _CODASIP_INTEGER_NUMBER_DEF_COMPOUND_PRIVATE
 *  \brief  Generates definition of a helper function for compound assignment
 *          operator for IntegerNumber which should be private (2 versions only).
 *  \param  func function identifier
 */
#ifndef _CODASIP_INTEGER_NUMBER_DEF_COMPOUND_PRIVATE
#define _CODASIP_INTEGER_NUMBER_DEF_COMPOUND_PRIVATE( op, func ) \
    template<unsigned RHS_BITS, bool RHS_SIGNED> \
    _CODASIP_INT_ENABLE_IF((IS_WRAPPER == IntegerNumber<RHS_BITS, RHS_SIGNED>::IS_WRAPPER), void) \
    func( const IntegerNumber<RHS_BITS, RHS_SIGNED>& value ) \
    { \
        Backend() op value.Backend(); \
    } \
    template<unsigned RHS_BITS, bool RHS_SIGNED> \
    _CODASIP_INT_ENABLE_IF((!IS_WRAPPER && IntegerNumber<RHS_BITS, RHS_SIGNED>::IS_WRAPPER), void) \
    func( const IntegerNumber<RHS_BITS, RHS_SIGNED>& value ) \
    { \
        typedef IntegerNumber<RHS_BITS, RHS_SIGNED> rhs_type; \
        Backend() op static_cast<typename rhs_type::pod_type>( value.Backend() ); \
    }
#else
#error "Macro _CODASIP_INTEGER_NUMBER_DEF_COMPOUND_PRIVATE already defined!!!"
#endif

/**
 *  \def    _CODASIP_INTEGER_NUMBER_DEF_COMPOUND_PRIVATE_ALL
 *  \brief  Generates definition of a helper function for compound assignment
 *          operator for IntegerNumber which should be private (3 versions).
 *  \param  func function identifier
 */
#ifndef _CODASIP_INTEGER_NUMBER_DEF_COMPOUND_PRIVATE_ALL
#define _CODASIP_INTEGER_NUMBER_DEF_COMPOUND_PRIVATE_ALL( op, func ) \
    _CODASIP_INTEGER_NUMBER_DEF_COMPOUND_PRIVATE( op, func ) \
    \
    template<unsigned RHS_BITS, bool RHS_SIGNED> \
    _CODASIP_INT_ENABLE_IF((IS_WRAPPER && !IntegerNumber<RHS_BITS, RHS_SIGNED>::IS_WRAPPER), void) \
    func( const IntegerNumber<RHS_BITS, RHS_SIGNED>& value ) \
    { \
        Backend() op static_cast<pod_type>( value.Backend() ); \
    }
#else
#error "Macro _CODASIP_INTEGER_NUMBER_DEF_COMPOUND_PRIVATE_ALL already defined!!!"
#endif

/**
 *  \addtogroup CODASIP_INT
 *  \{
 *  \class  codasip::integer::IntegerNumber
 *  \brief  Simple and lightweight wrapper around integer backend. Implements
 *          full range of unary and binary operators as well as cooperation with
 *          standard integer types.
 *  \}
 */
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
class IntegerNumber
{
public:
    /// template parameter alias for bit-width of the integer
    static CODASIP_CONSTEXPR unsigned BIT_WIDTH = _CODASIP_BITS;
    /// template parameter alias for sign of the integer
    static CODASIP_CONSTEXPR bool IS_SIGNED = _CODASIP_SIGN;
    /// type of backend, true is lightweight wrapper around native integer
    /// or array implementation
    static CODASIP_CONSTEXPR bool IS_WRAPPER = integer::detail::is_trivial_fixed_int<BIT_WIDTH>::value;

    // behave similarly to STL

    /// this type
    typedef IntegerNumber<BIT_WIDTH,IS_SIGNED> value_type;
    /// pointer type
    typedef value_type*         pointer;
    /// pointer to constant type
    typedef const value_type*   const_pointer;
    /// reference type
    typedef value_type&         reference;
    /// reference to constant type
    typedef const value_type&   const_reference;
    /// backend implementing basic operations
    typedef typename std::conditional<IS_WRAPPER,
        // lightweight wrapper around native integer type
        backends::NativeIntegerBackend<BIT_WIDTH, IS_SIGNED>,
        // fixed size array implementation for wide integer types
        backends::FixedArrayIntegerBackend<BIT_WIDTH, IS_SIGNED> >::type
        BackendType;
    /// underlying integer type used by the backend
    typedef typename BackendType::pod_type pod_type;

    /// size of the array required to hold the value (only for compatibility)
    static CODASIP_CONSTEXPR unsigned SIZE = BackendType::SIZE;

    /**
     *  \brief  Default constructor initializes to zero.
     */
    IntegerNumber() CODASIP_NOEXCEPT;
    /**
     *  \brief  Conversion constructor. The only requirement is that the value
     *          can be casted to \em pod_type.
     *  \param  rhs value to assign
     */
    template<typename T, _CODASIP_INT_ENABLE_IF_POD(T, bool) = 0>
    IntegerNumber( const T rhs ) CODASIP_NOEXCEPT;
    /**
     *  \brief  Conversion constructor. May cast between backend types.
     *  \param  rhs value to assign
     */
    template<unsigned RHS_BITS, bool RHS_SIGNED>
    IntegerNumber( const IntegerNumber<RHS_BITS, RHS_SIGNED>& value ) CODASIP_NOEXCEPT;
    /**
     *  \{
     *  \brief  Construct integer from its string representation.
     *  \copydetails operator=( const char* )
     *  \note   Cannot use explicit because simulator uses implicit conversion from string
     *          (e.g. register default value)
     */
    IntegerNumber( const char* str );
    IntegerNumber( const std::string& str );
    /**
     *  \}
     *  \brief  Default copy constructor.
     *  \param  rhs value to assign
     */
    IntegerNumber( const_reference rhs ) CODASIP_NOEXCEPT;
    /**
     *  \brief  Default move constructor.
     *  \param  rhs value to assign
     */
    IntegerNumber( IntegerNumber&& rhs ) CODASIP_NOEXCEPT;
    /**
     *  \brief  Initialize the content based on the values in given list.
     *  \param  initList initialization list
     */
    IntegerNumber( std::initializer_list<pod_type> initList ) CODASIP_NOEXCEPT;
    /**
     *  \brief  Default assignment with the same data type.
     *  \param  rhs value to assign
     */
    reference operator=( const_reference rhs ) CODASIP_NOEXCEPT;
    /**
     *  \brief  Default move assignment.
     *  \param  rhs value to assign
     */
    reference operator=( IntegerNumber&& rhs ) CODASIP_NOEXCEPT;
    /**
     *  \{
     *  \brief  Assignment operator from string. Supported formats are decimal
     *          (default), octal (prefix 0), hexadecimal (0x, 0X) and binary
     *          (0b, 0B).
     *  \param  str source string to parse and assign
     */
    reference operator=( const char* str );
    reference operator=( const std::string& str );
    /**
     *  \}
     *  \brief  Conversion operator to bool type. Function is marked as explicit
     *          to prevent unwanted implicit conversions by the compiler.
     */
    explicit operator bool() const CODASIP_NOEXCEPT;
    /**
     *  \brief  Implicit conversion operator to standard integer types only
     *          (used by static_cast, return type conversion, ...).
     *  \tparam T target standard integer type
     */
    template<typename T, _CODASIP_INT_ENABLE_IF_POD(T, bool) = 0>
    operator T() const CODASIP_NOEXCEPT;

    /**
     *  \brief  Implicit conversion operator to standard floating point only
     *          (used by static_cast, return type conversion, ...).
     *  \tparam T target standard floating point type
     */
    template<typename T, _CODASIP_INT_ENABLE_IF(std::is_floating_point<T>::value, bool) = 0 >
    operator T() const CODASIP_NOEXCEPT;
    /**
     *  \{
     *  \brief  Sign conversion.
     */
    IntegerNumber<_CODASIP_BITS, false> to_unsigned() const CODASIP_NOEXCEPT;
    IntegerNumber<_CODASIP_BITS, true> to_signed() const CODASIP_NOEXCEPT;
    /**
     *  \} \{
     *  \brief  Unary operator.
     */
    value_type operator++(const int) CODASIP_NOEXCEPT;
    reference operator++() CODASIP_NOEXCEPT;
    value_type operator--(const int) CODASIP_NOEXCEPT;
    reference operator--() CODASIP_NOEXCEPT;
    value_type operator~() const CODASIP_NOEXCEPT;
    bool operator!() const CODASIP_NOEXCEPT;
    value_type operator+() const CODASIP_NOEXCEPT;
    value_type operator-() const CODASIP_NOEXCEPT;

    // arithmetic compound operators

    /**
     *  \} \{
     *  \brief  Compound assignment operator.
     *  \param  rhs operand value.
     *  \return self reference
     */
    _CODASIP_INTEGER_NUMBER_DEF_COMPOUND_PUBLIC(  =, DoAssign )
    _CODASIP_INTEGER_NUMBER_DEF_COMPOUND_PUBLIC( +=, DoAssignAdd )
    _CODASIP_INTEGER_NUMBER_DEF_COMPOUND_PUBLIC( -=, DoAssignSub )
    _CODASIP_INTEGER_NUMBER_DEF_COMPOUND_PUBLIC( *=, DoAssignMult )
    _CODASIP_INTEGER_NUMBER_DEC_COMPOUND_PUBLIC( /= )
    _CODASIP_INTEGER_NUMBER_DEC_COMPOUND_PUBLIC( %= )
    _CODASIP_INTEGER_NUMBER_DEF_COMPOUND_PUBLIC( &=, DoAssignAnd )
    _CODASIP_INTEGER_NUMBER_DEF_COMPOUND_PUBLIC( ^=, DoAssignXor )
    _CODASIP_INTEGER_NUMBER_DEF_COMPOUND_PUBLIC( |=, DoAssignOr )

    // bitwise compound operators
    template<class T>
    reference operator<<=( const T& rhs ) CODASIP_NOEXCEPT;
    template<class T>
    reference operator>>=( const T& rhs ) CODASIP_NOEXCEPT;

    /**
     *  \}
     *  \brief  Returns the string representation of current value in binary format.
     *  \param  bits return only given number of least significant bits.
     *  \copydetails ToStrDec()
     */
    std::string get_bin( const bool showBase = false,
        const bool removeLeadingZeros = true,
        const unsigned bits = BIT_WIDTH ) const;
    /**
     *  \brief  Returns the string representation of current value in octal format.
     *  \param  removeLeadingZeros indicates whether leading zeros should be
     *          skipped (default) or not.
     *  \copydetails ToStrDec()
     */
    std::string get_oct( const bool showBase = false,
        const bool removeLeadingZeros = true ) const;
    /**
     *  \brief  Returns the string representation of current value in hexadecimal format.
     *  \copydetails ToStrOct()
     */
    std::string get_hex( const bool showBase = false,
        const bool removeLeadingZeroes = true,
        const unsigned bits = BIT_WIDTH) const;
    /**
     *  \brief  Returns the string representation of current value in decimal format.
     */
    std::string get_dec() const;
    /**
     *  \brief  Returns the string representation formatted according to given
     *          flags.
     *  \param  flags formating flags
     */
    std::string ToStr( const std::ios_base::fmtflags flags ) const;

    /**
     *  \{
     *  \brief  Access the backend implementation.
     */
    BackendType& Backend() CODASIP_NOEXCEPT;
    const BackendType& Backend() const CODASIP_NOEXCEPT;
    /**
     *  \} \{
     *  \brief  Return pointer to underlying data.
     */
    pod_type* get_data() CODASIP_NOEXCEPT;
    const pod_type* get_data() const CODASIP_NOEXCEPT;
    /**
     *  \}
     *  \brief  Swap content of the integers.
     *  \param  rhs value to swap content with
     */
    void swap( reference rhs ) CODASIP_NOEXCEPT;
    /**
     *  \{
     *  \brief  Assign interger from string in binary, oct or hex.
     *  \param str String to convert
     *  \param n Number of characters in \ref str
     *  \param radix Radix of string number, has to be power of 2.
     *  \param positive Positive / negative number
     *  \return
     */
    bool AssignFromStringShift(const char* str,
        const size_t n,
        const unsigned radix,
        const bool positive = true);
    bool AssignFromStringShift(const std::string& str,
        const unsigned radix,
        const bool positive = true);
    /**
     * \}
     */
private:
    static value_type Convert( const BackendType& );

    _CODASIP_INTEGER_NUMBER_DEF_COMPOUND_PRIVATE_ALL(  =, DoAssign )
    _CODASIP_INTEGER_NUMBER_DEF_COMPOUND_PRIVATE_ALL( +=, DoAssignAdd )
    _CODASIP_INTEGER_NUMBER_DEF_COMPOUND_PRIVATE_ALL( -=, DoAssignSub )
    _CODASIP_INTEGER_NUMBER_DEF_COMPOUND_PRIVATE_ALL( *=, DoAssignMult )
    _CODASIP_INTEGER_NUMBER_DEF_COMPOUND_PRIVATE_ALL( &=, DoAssignAnd )
    _CODASIP_INTEGER_NUMBER_DEF_COMPOUND_PRIVATE_ALL( ^=, DoAssignXor )
    _CODASIP_INTEGER_NUMBER_DEF_COMPOUND_PRIVATE_ALL( |=, DoAssignOr )
    _CODASIP_INTEGER_NUMBER_DEF_COMPOUND_PRIVATE( /=, DoAssignDiv )
    _CODASIP_INTEGER_NUMBER_DEF_COMPOUND_PRIVATE( %=, DoAssignMod )
    template<unsigned RHS_BITS, bool RHS_SIGNED>
    _CODASIP_INT_ENABLE_IF((IS_WRAPPER && !IntegerNumber<RHS_BITS, RHS_SIGNED>::IS_WRAPPER), void)
    DoAssignDiv( const IntegerNumber<RHS_BITS, RHS_SIGNED>& value )
    {
        typedef typename codasip::integer::detail::BinaryOperatorHelper<codasip::integer::IntegerNumber, BIT_WIDTH, IS_SIGNED, RHS_BITS, RHS_SIGNED>::div_type result_type;
        result_type tmp( *this );
        tmp.Backend() /= value.Backend();
        Backend() = tmp;
    }
    template<unsigned RHS_BITS, bool RHS_SIGNED>
    _CODASIP_INT_ENABLE_IF((IS_WRAPPER && !IntegerNumber<RHS_BITS, RHS_SIGNED>::IS_WRAPPER), void)
    DoAssignMod( const IntegerNumber<RHS_BITS, RHS_SIGNED>& value )
    {
        typedef typename codasip::integer::detail::BinaryOperatorHelper<codasip::integer::IntegerNumber, BIT_WIDTH, IS_SIGNED, RHS_BITS, RHS_SIGNED>::mod_type result_type;
        result_type tmp( *this );
        tmp.Backend() %= value.Backend();
        Backend() = tmp;
    }

    /// integer backend type
    BackendType m_Backend;
};

////////////////////////////////////////////////////////////////////////////////
//                             Public interface                               //
////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::IntegerNumber() CODASIP_NOEXCEPT
{}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
template<typename T, _CODASIP_INT_ENABLE_IF_POD(T, bool)>
_CODASIP_INT_INLINE IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::IntegerNumber(
    const T rhs ) CODASIP_NOEXCEPT
  : m_Backend( static_cast<const typename integer::detail::UnderlyingTypeHelper<T>::type>(rhs) )
{}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
template <unsigned RHS_BITS, bool RHS_SIGNED>
_CODASIP_INT_INLINE IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::IntegerNumber(
    const IntegerNumber<RHS_BITS, RHS_SIGNED>& value ) CODASIP_NOEXCEPT
{
    this->operator=( value );
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::IntegerNumber(
    const char* str )
{
    this->operator=( str );
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::IntegerNumber(
    const std::string& str )
{
    this->operator=( str );
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::IntegerNumber(
    const_reference rhs ) CODASIP_NOEXCEPT
  : m_Backend( rhs.Backend() )
{}

////////////////////////////////////////////////////////////////////////////////
template <unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::IntegerNumber(
    IntegerNumber&& rhs ) CODASIP_NOEXCEPT
  : m_Backend( std::move(rhs.m_Backend) )
{}

////////////////////////////////////////////////////////////////////////////////
template <unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::IntegerNumber(
    std::initializer_list<pod_type> initList ) CODASIP_NOEXCEPT
  : m_Backend( initList )
{}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE typename IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::reference
IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::operator=( const_reference rhs ) CODASIP_NOEXCEPT
{
    Backend() = rhs.Backend();
    return *this;
}

////////////////////////////////////////////////////////////////////////////////
template <unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE typename IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::reference
IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::operator=( IntegerNumber&& rhs ) CODASIP_NOEXCEPT
{
    m_Backend = std::move( rhs.m_Backend );
    return *this;
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE typename IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::reference
IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::operator=( const char* str )
{
    Backend().AssignFromString( str, str ? std::strlen(str) : 0 );
    return *this;
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE typename IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::reference
IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::operator=( const std::string& str )
{
    Backend().AssignFromString( str.c_str(), str.size() );
    return *this;
}

////////////////////////////////////////////////////////////////////////////////
template <unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::operator bool() const CODASIP_NOEXCEPT
{
    return !!Backend();
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
template<typename T, _CODASIP_INT_ENABLE_IF_POD(T, bool)>
_CODASIP_INT_INLINE IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::operator T() const CODASIP_NOEXCEPT
{
    typedef typename integer::detail::UnderlyingTypeHelper<T>::type rhs_pod_type;
    return static_cast<T>(static_cast<rhs_pod_type>(Backend()));
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
template<typename T, _CODASIP_INT_ENABLE_IF(std::is_floating_point<T>::value, bool) >
_CODASIP_INT_INLINE IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::operator T() const CODASIP_NOEXCEPT
{
    return static_cast<T>(Backend());
}

////////////////////////////////////////////////////////////////////////////////
template <unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE IntegerNumber<_CODASIP_BITS, false>
IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::to_unsigned() const CODASIP_NOEXCEPT
{
    return *this;
}

////////////////////////////////////////////////////////////////////////////////
template <unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE IntegerNumber<_CODASIP_BITS, true>
IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::to_signed() const CODASIP_NOEXCEPT
{
    return *this;
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE typename IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::value_type
IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::operator++(const int) CODASIP_NOEXCEPT
{
    value_type nrv(*this);
    ++(*this);
    return nrv;
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE typename IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::reference
IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::operator++() CODASIP_NOEXCEPT
{
    ++Backend();
    return *this;
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE typename IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::value_type
IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::operator--(const int) CODASIP_NOEXCEPT
{
    value_type nrv(*this);
    --(*this);
    return nrv;
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE typename IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::reference
IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::operator--() CODASIP_NOEXCEPT
{
    --Backend();
    return *this;
}
////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE typename IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::value_type
IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::operator~() const CODASIP_NOEXCEPT
{
    return Convert(~Backend());
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE bool IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::operator!() const CODASIP_NOEXCEPT
{
    return !Backend();
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE typename IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::value_type
IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::operator+() const CODASIP_NOEXCEPT
{
    return *this;
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE typename IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::value_type
IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::operator-() const CODASIP_NOEXCEPT
{
    return Convert(-Backend());
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
template <class T>
_CODASIP_INT_INLINE typename std::enable_if<_CODASIP_INT_INTEGRAL_CND(T), typename IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::reference >::type
IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::operator/=( const T rhs )
{
    typedef typename integer::detail::UnderlyingTypeHelper<T>::type rhs_pod_type;
    CHECK_CONDITION( !!static_cast<const rhs_pod_type>(rhs) )
        << "Division by zero is an undefined operation.";
    Backend() /= static_cast<const rhs_pod_type>(rhs);
    return *this;
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
template<unsigned RHS_BITS, bool RHS_SIGNED>
_CODASIP_INT_INLINE
typename IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::reference
IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::operator/=(
    const IntegerNumber<RHS_BITS, RHS_SIGNED>& rhs )
{
    CHECK_CONDITION( !!rhs ) << "Division by zero is an undefined operation.";
    DoAssignDiv( rhs );
    return *this;
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
template <class T>
_CODASIP_INT_INLINE typename std::enable_if<_CODASIP_INT_INTEGRAL_CND(T), typename IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::reference >::type
IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::operator%=( const T rhs )
{
    typedef typename integer::detail::UnderlyingTypeHelper<T>::type rhs_pod_type;
    CHECK_CONDITION( !!static_cast<const rhs_pod_type>(rhs) )
        << "Modulus by zero is an undefined operation.";
    Backend() %= rhs;
    return *this;
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
template<unsigned RHS_BITS, bool RHS_SIGNED>
_CODASIP_INT_INLINE
typename IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::reference
IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::operator%=(
    const IntegerNumber<RHS_BITS, RHS_SIGNED>& rhs )
{
    CHECK_CONDITION( !!rhs ) << "Modulus by zero is an undefined operation.";
    DoAssignMod( rhs );
    return *this;
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
template<typename T>
_CODASIP_INT_INLINE typename IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::reference
IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::operator<<=( const T& rhs ) CODASIP_NOEXCEPT
{
    Backend() <<= static_cast<const unsigned>( rhs );
    return *this;
}

////////////////////////////////////////////////////////////////////////////////
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
template<typename T>
_CODASIP_INT_INLINE typename IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::reference
IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::operator>>=( const T& rhs ) CODASIP_NOEXCEPT
{
    Backend() >>= static_cast<const unsigned>( rhs );
    return *this;
}

////////////////////////////////////////////////////////////////////////////////
template <unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE typename IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::BackendType&
IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::Backend() CODASIP_NOEXCEPT
{
    return m_Backend;
}

////////////////////////////////////////////////////////////////////////////////
template <unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE const typename IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::BackendType&
IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::Backend() const CODASIP_NOEXCEPT
{
    return m_Backend;
}

////////////////////////////////////////////////////////////////////////////////
template <unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE typename IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::pod_type*
IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::get_data() CODASIP_NOEXCEPT
{
    return Backend().data();
}

////////////////////////////////////////////////////////////////////////////////
template <unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE const typename IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::pod_type*
IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::get_data() const CODASIP_NOEXCEPT
{
    return Backend().data();
}

////////////////////////////////////////////////////////////////////////////////
template <unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE void IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::swap( reference rhs ) CODASIP_NOEXCEPT
{
    Backend().swap( rhs.Backend() );
}

////////////////////////////////////////////////////////////////////////////////
template <unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE std::string IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::get_bin(
    const bool showBase,
    const bool removeLeadingZeros,
    const unsigned bits ) const
{
    DEBUG_CONDITION( BIT_WIDTH >= bits )
        << "Specified bit-width: " << bits
        << " has to be less or equal to: " << BIT_WIDTH << ::std::endl;
    const std::string value = Backend().ToStr(
        std::ios_base::dec ^ std::ios_base::dec ).substr( BIT_WIDTH - bits );
    std::string result;
    if ( showBase )
    {
        result += detail::GetNumberPrefix(std::ios_base::showbase, false);
    }
    if ( removeLeadingZeros )
    {
        result += detail::RemoveLeadingZeros(value);
    }
    else
    {
        result += value;
    }
    return result;
}

////////////////////////////////////////////////////////////////////////////////
template <unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE std::string IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::get_oct(
    const bool showBase,
    const bool removeLeadingZeros ) const
{
    const std::string value = Backend().ToStr( std::ios_base::oct );
    std::string result;
    if ( showBase )
    {
        result += detail::GetNumberPrefix(std::ios_base::showbase | std::ios_base::oct, false);
    }
    if ( removeLeadingZeros )
    {
        result += detail::RemoveLeadingZeros(value);
    }
    else
    {
        result += value;
    }
    return result;
}

////////////////////////////////////////////////////////////////////////////////
template <unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE std::string IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::get_hex(
    const bool showBase,
    const bool removeLeadingZeroes,
    const unsigned bits) const
{
    std::string value = Backend().ToStr( std::ios_base::hex );
    std::string result;

    if (bits == 0)
    {
        return result;
    }

    if ( showBase )
    {
        result += detail::GetNumberPrefix(std::ios_base::showbase | std::ios_base::hex, false);
    }

    // number of hexadecimal digits to print
    const size_t hexStringLen = ((bits-1) / 4)+1;
    const size_t len = value.length();

    if (len >= hexStringLen && len > 0)
    {
        value = value.substr(len-hexStringLen);
        if (bits < hexStringLen * 4)
        {
            // mask most significant hex character to limit number of bits
            int diff = hexStringLen * 4 - bits;
            int mask = (1 << (4 - diff)) - 1;
            unsigned first = (value[0] >= 'a') ? (value[0] - 'a' + 10) :(value[0] - '0');
            // the hex number will always be in range <0, 9>
            value[0] = (first & mask) + '0';
        }
    }
    else if (!removeLeadingZeroes && len < hexStringLen)
    {
        value.insert(value.begin(), hexStringLen-len, '0');
    }

    if ( removeLeadingZeroes )
    {
        result += detail::RemoveLeadingZeros(value);
    }
    else
    {
        result += value;
    }
    return result;
}

////////////////////////////////////////////////////////////////////////////////
template <unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE std::string IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::get_dec() const
{
    return ToStr( std::ios_base::dec );
}

////////////////////////////////////////////////////////////////////////////////
template <unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE std::string IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::ToStr(
    const std::ios_base::fmtflags flags ) const
{
    return integer::detail::GetNumberPrefix(flags, Backend().IsNegative()) +=
        integer::detail::RemoveLeadingZeros(Backend().ToStr(flags));
}

////////////////////////////////////////////////////////////////////////////////
template <unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
bool IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::AssignFromStringShift(const char* str,
    const size_t n,
    const unsigned radix,
    const bool positive)
{
    return Backend().AssignFromStringShift(str, n, radix, positive);
}

////////////////////////////////////////////////////////////////////////////////
template <unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
bool IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::AssignFromStringShift(const std::string& str,
    const unsigned radix,
    const bool positive)
{
    return AssignFromStringShift(str.c_str(), str.size(), radix, positive);
}

/**
 *  \brief  Based on the output mode of the output stream, write out the value
 *          in that format (decimal, octal,...)
 *  \param  os reference to output stream
 *  \param  rhs codasip integer to be written out
 *  \return reference to output stream to support chaining
 */
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE std::ostream& operator<<( std::ostream& os,
    const IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>& rhs )
{
    return os << rhs.ToStr( os.flags() );
}

/**
 *  \brief  Overloaded operator to cooperate with standard input streams.
 *  \param  is  input stream
 *  \param  rhs integer where result will be stored.
 *  \return reference to input stream to support chaining.
 */
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE std::istream& operator>>( std::istream& is,
    IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>& rhs )
{
    std::string str;
    is >> str;
    if ( !rhs.Backend().AssignFromString(str.c_str(), str.size()) )
    {
        for ( size_t ii = 0; ii < str.size(); ++ii )
        {
            is.putback(str[ii]);
        }
    }
    return is;
}

/**
 *  \brief  Conversion constructor.
 *  \param  value backend type to copy
 */
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE
typename IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::value_type
IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>::Convert( const BackendType& value )
{
    value_type tmp;
    tmp.Backend() = value;
    return tmp;
}

}   // namespace codasip::integer
}   // namespace codasip

namespace std {

/**
 *  \addtogroup CODASIP_INT
 *  \{
 *  \class  std::numeric_limits
 *  \brief  Specialize std::numeric_limits for IntegerNumber.
 *  \}
 */
template <unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
struct numeric_limits< ::codasip::integer::IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN> >
  : public ::codasip::integer::detail::numeric_limits_base< ::codasip::integer::IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN> >
{};

template <unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
_CODASIP_INT_INLINE void swap(
    ::codasip::integer::IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>& lhs,
    ::codasip::integer::IntegerNumber<_CODASIP_BITS, _CODASIP_SIGN>& rhs )
{
    lhs.swap( rhs );
}

}   // namespace std

#undef _CODASIP_INTEGER_NUMBER_DEC_COMPOUND_PUBLIC
#undef _CODASIP_INTEGER_NUMBER_DEF_COMPOUND_PUBLIC
#undef _CODASIP_INTEGER_NUMBER_DEF_COMPOUND_PRIVATE
#undef _CODASIP_INTEGER_NUMBER_DEF_COMPOUND_PRIVATE_ALL

#endif  // INC_CODASIP_INTEGER_INTEGER_NUMBER_H_
