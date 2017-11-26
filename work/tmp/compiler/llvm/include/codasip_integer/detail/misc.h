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
 *  \brief  Declaration/Implementation of the class.
 */

#ifndef INC_CODASIP_INTEGER_DETAIL_MISC_H_
#define INC_CODASIP_INTEGER_DETAIL_MISC_H_

#include "defs.h"
#include <type_traits>
#include <functional>
#include <limits>
#include <cstdint>
#include <string>
#include <ostream>

namespace codasip {
namespace integer {
namespace detail {

template<int _BITS> struct is_trivial_fixed_int
{
    static const bool value = (_BITS <= std::numeric_limits<uint64_t>::digits);
};

template<unsigned _LBITS, unsigned _RBITS>
struct size_helper
{
    static const unsigned value = (_LBITS /_RBITS) + (_LBITS % _RBITS != 0);
};

template<unsigned LHS_BITS, unsigned RHS_BITS>
struct static_max_helper
{
    static const unsigned value = (LHS_BITS > RHS_BITS) ? LHS_BITS : RHS_BITS;
};

template<unsigned LHS_BITS, unsigned RHS_BITS>
struct static_min_helper
{
    static const unsigned value = (LHS_BITS < RHS_BITS) ? LHS_BITS : RHS_BITS;
};

template<typename Integer>
struct native_int_bitwidth_helper
{
    static const unsigned value = std::numeric_limits<Integer>::digits +
        std::numeric_limits<Integer>::is_signed;
};

template
<
    unsigned _BITS,
    bool _SIGN,
    bool IS_VALID = is_trivial_fixed_int<_BITS>::value
>
struct underlying_type_helper;

template<unsigned _BITS, bool _SIGN>
struct underlying_type_helper<_BITS, _SIGN, true>
{
    typedef typename std::conditional<_SIGN, int8_t, uint8_t>::type int8_type;
    typedef typename std::conditional<_SIGN, int16_t, uint16_t>::type int16_type;
    typedef typename std::conditional<_SIGN, int32_t, uint32_t>::type int32_type;
    typedef typename std::conditional<_SIGN, int64_t, uint64_t>::type int64_type;
    typedef
        typename std::conditional<_BITS <= std::numeric_limits<uint8_t>::digits, int8_type,
            typename std::conditional<_BITS <= std::numeric_limits<uint16_t>::digits, int16_type,
                typename std::conditional<_BITS <= std::numeric_limits<uint32_t>::digits, int32_type, int64_type>
                ::type>
            ::type>
        ::type type;
};

template
<
    unsigned _BITS,
    bool _SIGN,
    unsigned UNDERLYING_BITS = native_int_bitwidth_helper<uint8_t>::value
>
struct array_type_helper
{
    /// choose bit-width of underlying type
    static const unsigned UNDERLYING_BIT_WIDTH = UNDERLYING_BITS;
    /// select underlying type
    typedef typename underlying_type_helper<UNDERLYING_BIT_WIDTH, _SIGN>::type pod_type;
    typedef typename underlying_type_helper<UNDERLYING_BIT_WIDTH, false>::type unsigned_pod_type;
    /// compute required array size
    static const unsigned SIZE = size_helper<_BITS, UNDERLYING_BIT_WIDTH>::value;
    /// resulting array type
    typedef pod_type type[SIZE];
    /// resulting constant array type
    typedef const pod_type const_type[SIZE];
};

/**
 *  \class  return_type_helper
 *  \brief  Specifies bit-width and data type for binary operation.
 */
template<unsigned LHS_BITS, bool LHS_SIGN, unsigned RHS_BITS, bool RHS_SIGN>
struct return_type_helper
{
    static CODASIP_CONSTEXPR unsigned BINARY_W = static_max_helper<LHS_BITS, RHS_BITS>::value;
    static CODASIP_CONSTEXPR bool BINARY_S = LHS_SIGN && RHS_SIGN;
    static CODASIP_CONSTEXPR unsigned SHIFT_W = LHS_BITS;
    static CODASIP_CONSTEXPR bool SHIFT_S = LHS_SIGN;
    static CODASIP_CONSTEXPR unsigned BIT_WIDTH = BINARY_W;
    static CODASIP_CONSTEXPR bool IS_SIGNED = BINARY_S;
};

/**
 *  \class  BinaryResultMaxPod
 *  \brief  Specify result type (integer class) for standard binary operators
 *          like +, -, ... according to Codasip rules.
 */
template
<
    template<unsigned, bool> class Number,
    unsigned LHS_BITS, bool LHS_SIGN,
    unsigned RHS_BITS, bool RHS_SIGN
>
struct BinaryOperatorHelper
{
    /// bit-width of the integer number
    static const unsigned BIT_WIDTH =
        return_type_helper<LHS_BITS, LHS_SIGN, RHS_BITS, RHS_SIGN>::BINARY_W;
    /// sign of the integer number
    static const bool IS_SIGNED =
        return_type_helper<LHS_BITS, LHS_SIGN, RHS_BITS, RHS_SIGN>::BINARY_S;
    /// resulting type
    typedef Number<BIT_WIDTH, IS_SIGNED> type;

    typedef type add_type;
    typedef type sub_type;
    typedef type mul_type;
    typedef type div_type;
    typedef type mod_type;
    typedef type bitwise_type;
    typedef type cmp_type;
    typedef Number<LHS_BITS, LHS_SIGN> shift_type;
};

template
<
    template<unsigned, bool> class Number,
    unsigned LHS_BITS, bool LHS_SIGN,
    typename T
>
struct BinaryResultNative : public BinaryOperatorHelper<Number, LHS_BITS, LHS_SIGN,
    native_int_bitwidth_helper<T>::value,
    std::numeric_limits<T>::is_signed>
{};

/**
 *  \class  BinaryResultMaxPod
 *  \brief  Specify result type (native/standard integer) for standard binary
 *          operators like +, -, ... according to Codasip rules.
 */
template<unsigned LHS_BITS, bool LHS_SIGN, unsigned RHS_BITS, bool RHS_SIGN>
struct BinaryResultMaxPod
{
    /// bit-width of the integer number
    static const unsigned BIT_WIDTH =
        return_type_helper<LHS_BITS, LHS_SIGN, RHS_BITS, RHS_SIGN>::BINARY_W;
    /// sign of the integer number
    static const bool IS_SIGNED =
        return_type_helper<LHS_BITS, LHS_SIGN, RHS_BITS, RHS_SIGN>::BINARY_S;
    /// resulting type
    typedef typename underlying_type_helper<BIT_WIDTH, IS_SIGNED>::type type;
};

/**
 *  \class  BitMaskHelper
 *  \brief  Define bitwise mask with least significant bits set one. It was
 *          designed to work with standard/native integer types.
 *  \tparam T target type
 *  \tparam _CODASIP_BITS number of LSBs set to ones.
 */
template<typename T, unsigned _CODASIP_BITS>
struct BitMaskHelper
{
    // define unsigned type to create mask
    typedef typename std::make_unsigned<T>::type T_unsigned;
    // create unsigned mask as compile-time constant with unsigned type
    enum : T_unsigned
    {
        ONES_MASK = static_cast<T_unsigned>(~0),
        SHIFT_COUNT = native_int_bitwidth_helper<T>::value - _CODASIP_BITS,
        BIT_MASK = ONES_MASK >> SHIFT_COUNT
    };
    enum : T
    {   /// final mask value
        value = static_cast<T>(BIT_MASK)
    };
};

/**
 *  \class  is_native_type_bitwidth
 *  \brief  Indicates whether given bit-width equals to bit-width of native
 *          integer types or not (without reminders).
 */
template<unsigned BITS>
struct is_native_type_bitwidth
{
    static const bool value = (native_int_bitwidth_helper<uint8_t>::value == BITS) ||
        (native_int_bitwidth_helper<uint16_t>::value == BITS) ||
        (native_int_bitwidth_helper<uint32_t>::value == BITS) ||
        (native_int_bitwidth_helper<uint64_t>::value == BITS);
};

/**
 *  \class  use_direct_native_int_comparator
 *  \brief  Indicates whether to use direct and faster comparison of native
 *          integers or not. If signs do match or if bit-width of both operands
 *          is equal to native integer types the optimized version should be
 *          chosen.
 */
template
<
    unsigned LHS_BITS,
    bool LHS_SIGN,
    unsigned RHS_BITS,
    bool RHS_SIGN
>
struct use_direct_native_int_comparator
{
    static const bool value = (LHS_SIGN == RHS_SIGN) || (
        is_native_type_bitwidth<LHS_BITS>::value &&
        is_native_type_bitwidth<RHS_BITS>::value );
};

inline std::string RemoveLeadingZeros( std::string value )
{
    // do not remove the last zero
    if ( value.size() < 2 )
        return value;
    std::string::size_type pos = value.find_first_not_of('0');
    if ( pos == std::string::npos )
    {
        pos = value.size() - 1;
    }
    return value.erase( 0, pos );
}

/**
 *  \brief  Check given input string and set attributes about integer value.
 *  \param[out] isNeg stores information about presence of the sign '-' character
 *  \param[out] radix format of the integer stored in string
 *  \param[in, out] n length of the input string left to parse.
 *  \param[in, out] str source string holding integer value. The pointer will be
 *          moved (skips sign and radix format)
 */
inline void DetectIntegerFormatFromString( bool& isNeg,
    unsigned& radix,
    size_t& n,
    const char*& str )
{
    if ( n && (*str == '-') )
    {
        isNeg = true;
        n -= 1;
        ++str;
    }
    else
    {
        isNeg = false;
    }
    // default radix is decimal base
    radix = 10;
    if ( n && (*str == '0') )
    {
        if ( (n > 1) && ((str[1] == 'x') || (str[1] == 'X')) )
        {   // hexadecimal
            radix = 16;
            str += 2;
            n -= 2;
        }
        else if ( (n > 1) && ((str[1] == 'b') || (str[1] == 'B')) )
        {   // binary format
            radix = 2;
            str += 2;
            n -= 2;
        }
        else if ( (n > 1) && ((str[1] == 'd') || (str[1] == 'D')) )
        {   // decimal format
            radix = 10;
            str += 2;
            n -= 2;
        }
        else
        {   // octal
            radix = 8;
            n -= 1;
        }
    }
}

template<unsigned _CODASIP_BITS, typename T>
inline std::string ToBinaryStr( const T value )
{
    static_assert( _CODASIP_BITS <= native_int_bitwidth_helper<T>::value,
        "Unexpected bit-width of native integer." );
    typedef typename std::make_unsigned<T>::type UT;
    UT uv = value;
    std::string result( _CODASIP_BITS, '0' );
    std::string::size_type pos( _CODASIP_BITS );
    for ( unsigned ii = 0; ii < _CODASIP_BITS; ++ii )
    {
        result[--pos] = '0' + static_cast<typename std::string::value_type>(uv & static_cast<T>(1));
        uv >>= 1;
    }
    return result;
}

template<unsigned _CODASIP_BITS, typename T>
inline std::string ToOctalStr( const T value )
{
    static_assert( _CODASIP_BITS <= native_int_bitwidth_helper<T>::value,
        "Unexpected bit-width of native integer." );
    enum : T
    {
        RADIX_BITS = 3,
        MASK = 7,
        BIT_REM = (_CODASIP_BITS % RADIX_BITS),
        DIGIT_COUNT = (_CODASIP_BITS / RADIX_BITS) + bool(BIT_REM),
        MSB_MASK = bool(BIT_REM) ? (MASK >> (RADIX_BITS - BIT_REM)) : MASK
    };
    typedef typename std::make_unsigned<T>::type UT;
    UT uv = value;
    std::string result( DIGIT_COUNT, '0' );
    std::string::size_type pos( DIGIT_COUNT );
    for ( unsigned ii = 0; ii < DIGIT_COUNT; ++ii )
    {
       result[--pos] = '0' + static_cast<typename std::string::value_type>(uv & MASK);
       uv >>= RADIX_BITS;
    }
    // correction of the highest digit to fit with bit-width
    if ( BIT_REM != 0 )
    {
        result[pos] = (MSB_MASK & (result[pos] - '0')) + '0';
    }
    return result;
}

template<unsigned _CODASIP_BITS, typename T>
inline std::string ToHexadecimalStr( const T value, const char a )
{
    static_assert( _CODASIP_BITS <= native_int_bitwidth_helper<T>::value,
        "Unexpected bit-width of native integer." );
    enum : T
    {
        RADIX_BITS = 4,
        MASK = 15,
        BIT_REM = (_CODASIP_BITS % RADIX_BITS),
        DIGIT_COUNT = (_CODASIP_BITS / RADIX_BITS) + bool(BIT_REM),
        MSB_MASK = bool(BIT_REM) ? (MASK >> (RADIX_BITS - BIT_REM)) : MASK
    };
    typedef typename std::make_unsigned<T>::type UT;
    UT uv = value;
    std::string result( DIGIT_COUNT, '0' );
    std::string::size_type pos( DIGIT_COUNT );
    for ( unsigned ii = 0; ii < _CODASIP_BITS / RADIX_BITS; ++ii )
    {
        typename std::string::value_type c = '0' + static_cast<typename std::string::value_type>(uv & MASK);
        if ( c > '9' )
        {   // upper or lower case
            c += a - '9' - 1;
        }
        result[--pos] = c;
        uv >>= RADIX_BITS;
    }
    // correction of the highest digit to fit with bit-width
    if ( BIT_REM != 0 )
    {
        typename std::string::value_type c = '0' + static_cast<typename std::string::value_type>(uv & MSB_MASK);
        if ( c > '9' )
        {
            c += a - '9';
        }
        result[0] = c;
    }
    return result;
}


template<unsigned _CODASIP_BITS, typename T>
inline std::string ToDecimalStr( T value )
{
    static_assert( _CODASIP_BITS <= native_int_bitwidth_helper<T>::value,
        "Unexpected bit-width of native integer." );
    enum : T
    {
        RADIX_BASE = 10,
        DIGIT_COUNT = (_CODASIP_BITS / 3) + 1
    };
    std::string result( DIGIT_COUNT, '0' );
    std::string::size_type pos = result.size();
    while ( value )
    {
        result[--pos] = '0' + (value % RADIX_BASE);
        value /= RADIX_BASE;
    }
    pos = result.find_first_not_of('0');
    result.erase(0, pos);
    if ( result.empty() )
    {
       result = "0";
    }
    return result;
}

inline std::string GetNumberPrefix( const std::ios_base::fmtflags flags,
    const bool isNeg )
{
    std::string result;
    if ( !isNeg && (flags & std::ios_base::showpos) && (flags & std::ios_base::dec) )
    {
        result += '+';
    }
    else if ( isNeg && (flags & std::ios_base::dec) )
    {
        result += '-';
    }
    if ( flags & std::ios_base::showbase )
    {
        result += '0';
        if ( flags & std::ios_base::hex )
        {
            result += (flags & std::ios_base::uppercase) ? 'X' : 'x';
        }
        else if ( flags & std::ios_base::dec )
        {
            result += (flags & std::ios_base::uppercase) ? 'D' : 'd';
        }
        else if ( !(flags & std::ios_base::oct) )
        {   // octal does not have additional character, expecting binary as fallback
            result += (flags & std::ios_base::uppercase) ? 'B' : 'b';
        }
    }
    return result;
}

template<unsigned _CODASIP_BITS, typename T>
_CODASIP_INT_INLINE T DoBitCorrection( const T value )
{
    enum : unsigned
    {   /// actual bit-width of the underlying POD type
        UNDERLYING_BIT_WIDTH = ::codasip::integer::detail::native_int_bitwidth_helper<T>::value,
        /// shift reminder for bit-correction
        REMINDER_RIGHT = (_CODASIP_BITS % UNDERLYING_BIT_WIDTH == 0)
            ? UNDERLYING_BIT_WIDTH
            : _CODASIP_BITS % UNDERLYING_BIT_WIDTH,
        /// shift offset for bit correction
        REMINDER_LEFT = UNDERLYING_BIT_WIDTH - REMINDER_RIGHT
    };
    // (value << offset) >> offset
    // the compiler even on -O0 should produce rhs & mask for unsigned type
    // the compiler even on -O0 should reduce ((value << 0) >> 0) to (value)
    return static_cast<T>(static_cast<T>(value << REMINDER_LEFT) >> REMINDER_LEFT);
}

/**
 *  \brief  Return sign extended on the whole data type. Signed version uses the
 *          arithmetic shift right.
 *  \param  value target value to extend.
 */
template<typename T>
_CODASIP_INT_INLINE
typename std::enable_if<std::is_integral<T>::value && std::is_signed<T>::value, T>::type
GetSignExtension( const T value )
{
    return static_cast<T>( value >> std::numeric_limits<T>::digits );
}

/**
 *  \brief  Return sign extended on the whole data type. The unsigned version
 *          always returns zero.
 *  \param  value target value to extend.
 */
template<typename T>
_CODASIP_INT_INLINE
typename std::enable_if<std::is_integral<T>::value && !std::is_signed<T>::value, T>::type
GetSignExtension( const T )
{
    return 0;
}

/**
 *  \brief  Return absolute value on given value (signed version).
 *  \param  value source value.
 */
template<typename T>
_CODASIP_INT_INLINE
typename std::enable_if<std::is_integral<T>::value && std::is_signed<T>::value, T>::type
GetAbsValue( const T value )
{
    return (value >= 0) ? value : -value;
}

/**
 *  \brief  Return absolute value on given value (unsigned version). The value
 *          won't be changed, just returned back.
 *  \param  value source value.
 */
template<typename T>
_CODASIP_INT_INLINE
typename std::enable_if<std::is_integral<T>::value && !std::is_signed<T>::value, T>::type
GetAbsValue( const T value )
{
    return value;
}

#ifdef _MSC_VER
#pragma warning(push)
#pragma warning( disable : 4146 )  //  unary minus operator applied to unsigned type, result still unsigned
#endif

/**
 *  \brief  Return unary negation of given signed value. Tries to avoid MSVC
 *          compiler warnings C4146 about applying unary - on unsigned type.
 *  \param  value source value.
 */
template<typename T>
_CODASIP_INT_INLINE T GetUnaryNegation( const T value )
{
    static_assert( std::is_integral<T>::value, "Unexpected usage, should be used with native integer types." );
    return static_cast<T>(-value);
}

#ifdef _MSC_VER
#pragma warning(pop)
#endif

#ifndef _CODASIP_INT_COMPOUND_ASSIGNMENT_OP
#define _CODASIP_INT_COMPOUND_ASSIGNMENT_OP(name, op) \
struct name \
{ \
    template<typename T1, typename T2> \
    void operator()( T1& x, T2&& y ) const { x op##= std::forward<T2>(y); } \
};
#else
#error "Macro _CODASIP_INT_COMPOUND_ASSIGNMENT_OP already defined!!!"
#endif

_CODASIP_INT_COMPOUND_ASSIGNMENT_OP( compound_plus, + )
_CODASIP_INT_COMPOUND_ASSIGNMENT_OP( compound_minus, - )
_CODASIP_INT_COMPOUND_ASSIGNMENT_OP( compound_multiplies, * )
_CODASIP_INT_COMPOUND_ASSIGNMENT_OP( compound_divides, / )
_CODASIP_INT_COMPOUND_ASSIGNMENT_OP( compound_modulus, % )
_CODASIP_INT_COMPOUND_ASSIGNMENT_OP( compound_bit_and, & )
_CODASIP_INT_COMPOUND_ASSIGNMENT_OP( compound_bit_or, | )
_CODASIP_INT_COMPOUND_ASSIGNMENT_OP( compound_bit_xor, ^ )

#undef _CODASIP_INT_COMPOUND_ASSIGNMENT_OP

}   // namespace codasip::integer::detail
}   // namespace codasip::integer
}   // namespace codasip

#endif // INC_CODASIP_INTEGER_DETAIL_MISC_H_
