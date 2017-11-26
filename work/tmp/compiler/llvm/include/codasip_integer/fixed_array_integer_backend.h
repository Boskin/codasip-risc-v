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
 *  \date   19. 2. 2016
 *  \brief  Implementation of the class codasip::integer::backends::StaticArrayIntegerBackend.
 */

#ifndef INC_CODASIP_INTEGER_FIXED_ARRAY_INTEGER_BACKEND_H_
#define INC_CODASIP_INTEGER_FIXED_ARRAY_INTEGER_BACKEND_H_

#include "detail/defs.h"
#include "detail/misc.h"
#include "detail/numeric_limits.h"
#include <string>
#include <ostream>
#include <initializer_list>

/**
 *  \def    _CODASIP_FIXED_ARRAY_INT_BACKEND_DEC_COMPOUND
 *  \brief  Generates declaration of compound assignment operator for
 *          FixedArrayIntegerBackend.
 *  \param  op binary operator type
 */
#ifndef _CODASIP_FIXED_ARRAY_INT_BACKEND_DEC_COMPOUND
#define _CODASIP_FIXED_ARRAY_INT_BACKEND_DEC_COMPOUND( op ) \
    template<typename T> \
    _CODASIP_INT_ENABLE_IF_POD(T, reference) operator op( const T rhs ); \
    \
    template<unsigned RHS_BITS, bool RHS_SIGNED> \
    reference operator op( const FixedArrayIntegerBackend<RHS_BITS, RHS_SIGNED>& rhs );
#else
    #error "Macro _CODASIP_FIXED_ARRAY_INT_BACKEND_DEC_COMPOUND already defined!!!"
#endif

/**
 *  \def    _CODASIP_FIXED_ARRAY_INT_BACKEND_DEC_COMPARISON
 *  \brief  Generates declaration of comparison operator for
 *          FixedArrayIntegerBackend.
 *  \param  op binary operator type
 */
#ifndef _CODASIP_FIXED_ARRAY_INT_BACKEND_DEC_COMPARISON
#define _CODASIP_FIXED_ARRAY_INT_BACKEND_DEC_COMPARISON( op ) \
    template<typename T> \
    _CODASIP_INT_ENABLE_IF_POD(T, bool) operator op( const T rhs ) const; \
    \
    template<unsigned RHS_BITS> \
    bool operator op( const FixedArrayIntegerBackend<RHS_BITS, _CODASIP_SIGN>& rhs ) const; \
    template<unsigned RHS_BITS, bool RHS_SIGNED> \
    bool operator op( const FixedArrayIntegerBackend<RHS_BITS, RHS_SIGNED>& rhs ) const;
#else
    #error "Macro _CODASIP_FIXED_ARRAY_INT_BACKEND_DEC_COMPARISON already defined!!!"
#endif

namespace codasip {
namespace integer {
namespace backends {

/**
 *  \addtogroup CODASIP_INT
 *  \{
 *  \class  FixedArrayIntegerBackend
 *  \brief  Forward declaration of the integer wrapper class for specified
 *          bit-width and sign. The implementation stores value in an array on
 *          the stack.
 *  \tparam _CODASIP_BITS bit-width of the type with (sign bit included).
 *  \tparam _CODASIP_SIGN signed (true) or unsigned integer.
 *  \tparam _CODASIP_IS_VALID indicates whether template parameters are properly
 *          configured or not. Generates compilation error when trying to use it
 *          with zero bit-width or when trying to define int1 data type.
 *  \}
 */
template
<
    unsigned _CODASIP_BITS,
    bool _CODASIP_SIGN,
    bool _CODASIP_IS_VALID = (_CODASIP_BITS != 0) &&
        !(_CODASIP_BITS == 1 && _CODASIP_SIGN)
>
class FixedArrayIntegerBackend;

/**
 *  \addtogroup CODASIP_INT
 *  \{
 *  \class  FixedArrayIntegerBackend
 *  \brief  Provides implementation for integer with arbitrary precision
 *          (bit-width) which stores the value in an array.
 *  \tparam _CODASIP_BITS bit-width of the type with (sign bit included).
 *  \tparam _CODASIP_SIGN signed (true) or unsigned integer.
 *  \}
 */
template<unsigned _CODASIP_BITS, bool _CODASIP_SIGN>
class FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true>
{
private:
    /// helper class holding informations about POD and array type
    typedef ::codasip::integer::detail::array_type_helper<
        _CODASIP_BITS, _CODASIP_SIGN, 32> array_helper;
public:
    /// template parameter alias for bit-width of the integer
    static CODASIP_CONSTEXPR unsigned BIT_WIDTH = _CODASIP_BITS;
    /// template parameter alias for sign of the integer
    static CODASIP_CONSTEXPR bool IS_SIGNED = _CODASIP_SIGN;
    /// size of the array required to hold the value
    static CODASIP_CONSTEXPR unsigned SIZE = array_helper::SIZE;

    // behave similarly to STL

    /// this type
    typedef FixedArrayIntegerBackend<BIT_WIDTH,IS_SIGNED> value_type;
    /// pointer type
    typedef value_type*         pointer;
    /// pointer to constant type
    typedef const value_type*   const_pointer;
    /// reference type
    typedef value_type&         reference;
    /// reference to constant type
    typedef const value_type&   const_reference;
    /// selects the POD type
    typedef typename array_helper::pod_type pod_type;
    /// select unsigned POD type
    typedef typename array_helper::unsigned_pod_type unsigned_pod_type;
    /// select array type to store the value
    typedef typename array_helper::type array_type;

    /**
     *  \brief  Default constructor initializes to zero.
     */
    FixedArrayIntegerBackend() CODASIP_NOEXCEPT;
    /**
     *  \brief  Default copy constructor.
     *  \param  rhs value to assign
     */
    FixedArrayIntegerBackend( const_reference rhs ) CODASIP_NOEXCEPT;
    /**
     *  \brief  Move constructor. The actual implementation must copy the copy,
     *          static array cannot be moved.
     *  \param  rhs value to move
     */
    FixedArrayIntegerBackend( value_type&& rhs ) CODASIP_NOEXCEPT;
    /**
     *  \brief  Conversion constructor for standard/native integer types.
     *  \param  rhs initial value to assign
     */
    template<typename T, _CODASIP_INT_ENABLE_IF_POD(T, bool) = 0>
    FixedArrayIntegerBackend( const T rhs ) CODASIP_NOEXCEPT;
    /**
     *  \brief  Copy constructor with the same backend implementation type.
     *  \param  rhs value to assign
     */
    template<unsigned RHS_BITS, bool RHS_SIGNED>
    FixedArrayIntegerBackend( const FixedArrayIntegerBackend<RHS_BITS, RHS_SIGNED>& rhs ) CODASIP_NOEXCEPT;
    /**
     *  \brief  Initialize the content based on the values in given list. The
     *          length of the list must fit with the size of internal array.
     *  \param  initList initialization list
     */
    FixedArrayIntegerBackend( std::initializer_list<pod_type> initList ) CODASIP_NOEXCEPT;
    /**
     *  \brief  Assignment with the same data type.
     *  \param  rhs value to assign
     */
    reference operator=( const_reference rhs ) CODASIP_NOEXCEPT;
    /**
     *  \brief  Move assignment operator. The actual implementation must copy
     *          the copy, static array cannot be moved.
     *  \param  rhs value to move
     */
    reference operator=( value_type&& rhs ) CODASIP_NOEXCEPT;
    /**
     *  \brief  Assignment operator for integer data type.
     *  \param  rhs value to assign
     */
    template<typename T>
    _CODASIP_INT_ENABLE_IF_POD(T, reference) operator=( const T rhs ) CODASIP_NOEXCEPT;
    /**
     *  \brief  Assignment operator with the same backend implementation type.
     *  \param  rhs value to assign
     */
    template<unsigned RHS_BITS, bool RHS_SIGNED>
    reference operator=( const FixedArrayIntegerBackend<RHS_BITS, RHS_SIGNED>& rhs ) CODASIP_NOEXCEPT;
    /**
     *  \brief  Conversion operator to standard integer types  only (used by
     *          static_cast).
     *  \tparam T target standard integer type
     */
    template<typename T, _CODASIP_INT_ENABLE_IF_POD(T, bool) = 0>
    explicit operator T() const CODASIP_NOEXCEPT;
    /**
     *  \brief  Conversion operator to standard floating point types  only (used by
     *          static_cast).
     *  \tparam T target standard floating point type
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
    _CODASIP_FIXED_ARRAY_INT_BACKEND_DEC_COMPOUND( += )
    _CODASIP_FIXED_ARRAY_INT_BACKEND_DEC_COMPOUND( -= )
    _CODASIP_FIXED_ARRAY_INT_BACKEND_DEC_COMPOUND( *= )
    _CODASIP_FIXED_ARRAY_INT_BACKEND_DEC_COMPOUND( /= )
    _CODASIP_FIXED_ARRAY_INT_BACKEND_DEC_COMPOUND( %= )

    // bitwise compound operators

    template<class T>
    reference operator&=( const T& rhs ) CODASIP_NOEXCEPT;
    template<class T>
    reference operator|=( const T& rhs ) CODASIP_NOEXCEPT;
    template<class T>
    reference operator^=( const T& rhs ) CODASIP_NOEXCEPT;
    reference operator<<=( const unsigned rhs ) CODASIP_NOEXCEPT;
    reference operator>>=( const unsigned rhs ) CODASIP_NOEXCEPT;
    /**
     *  \} \{
     *  \brief  Comparison functions.
     *  \param  rhs operand value.
     */
    _CODASIP_FIXED_ARRAY_INT_BACKEND_DEC_COMPARISON( == )
    _CODASIP_FIXED_ARRAY_INT_BACKEND_DEC_COMPARISON( < )
    _CODASIP_FIXED_ARRAY_INT_BACKEND_DEC_COMPARISON( > )
    /**
     *  \}
     *  \copydoc NativeIntegerBackend::IsNegative()
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
     *  \copydoc NativeIntegerBackend::ToStr()
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

    enum : unsigned
    {   /// actual bit-width of the underlying POD type
        UNDERLYING_BIT_WIDTH = array_helper::UNDERLYING_BIT_WIDTH,
        /// shift reminder for bit-correction
        REMINDER_RIGHT = (BIT_WIDTH % UNDERLYING_BIT_WIDTH == 0)
            ? UNDERLYING_BIT_WIDTH
            : BIT_WIDTH % UNDERLYING_BIT_WIDTH,
        /// shift offset for bit correction
        REMINDER_LEFT = UNDERLYING_BIT_WIDTH - REMINDER_RIGHT,
        /// size of the value in bytes
        SIZE_IN_BYTES = SIZE * sizeof(pod_type)
    };

    void InitZero();
    void CopyValue( const pod_type* );
    // assignments
    bool DoAssignFromStringOct( const char*, size_t );
    bool DoAssignFromStringDec( const char*, size_t );
    void DoBitCorrection();
    template<class Binary, typename T>
    _CODASIP_INT_ENABLE_IF_POD(T, void) DoBitwiseCompound( const T );
    template<class Binary, unsigned RHS_BITS, bool RHS_SIGN>
    void DoBitwiseCompound( const FixedArrayIntegerBackend<RHS_BITS, RHS_SIGN>& );
    template<bool DIVMOD, typename T>
    _CODASIP_INT_ENABLE_IF_POD(T, void) DoDivModCompound( const T );
    template<bool DIVMOD, unsigned RHS_BITS, bool RHS_SIGN>
    void DoDivModCompound( const FixedArrayIntegerBackend<RHS_BITS, RHS_SIGN>& );

public:
    reference Negate();
    reference Invert();
private:
    // string conversions
    std::string ToStrBin() const;
    std::string ToStrOct() const;
    std::string ToStrDec() const;
    std::string ToStrHex( const char ) const;

    /// array of integers holding current value
    array_type m_Value;
};

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
struct numeric_limits< ::codasip::integer::backends::FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true> >
  : public ::codasip::integer::detail::numeric_limits_base< ::codasip::integer::backends::FixedArrayIntegerBackend<_CODASIP_BITS, _CODASIP_SIGN, true> >
{};

}  // namespace std

#undef _CODASIP_FIXED_ARRAY_INT_BACKEND_DEC_COMPOUND
#undef _CODASIP_FIXED_ARRAY_INT_BACKEND_DEC_COMPARISON

#include "fixed_array_backend/backend_impl.h"

#endif  // INC_CODASIP_INTEGER_FIXED_ARRAY_INTEGER_BACKEND_H_
