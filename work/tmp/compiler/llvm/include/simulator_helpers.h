/**
 * Codasip Ltd
 *
 * CONFIDENTIAL
 *
 * Copyright 2017 Codasip Ltd
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
 *  \author Martin Ministr
 *  \date   11. 4. 2017
 *  \brief  Declaration/Implementation of the class.
 */

#ifndef SIMULATOR_SIMBASE_SIMULATOR_HELPERS_H_
#define SIMULATOR_SIMBASE_SIMULATOR_HELPERS_H_

#include <string>

#include "codasip_integer.h"
#include "codasip_vec.h"

#include "half_float.h"

// following definitions are used for generated code
// definitions of bool, true and false, TODO should be hard copied into codasip::simulator as once?
#include <cstdbool>


namespace codasip {
namespace simulator {


// constants
const std::string SIM_EXIT_CODE_FILE = "sim_exit_code";


// types declared here should be used only within simulator helpers, only few of them
// warning: when adding new types, erase them from simulator_helpers_test.cpp (Windows issues)
typedef codasip::Integer<1, false> uint1;
typedef codasip::Integer<32, true> int32;


////////////////////////////////////////////////////////////////////////////////////////////////////
/// Internal Functions

/// Helper for float casts
template<class To, class From>
struct BitcastHelperImpl
{
    static To Cast(const From from)
    {
        return *(const To*)&from;
    }
};

/// Helper for float casts specialization for cast to half_float
template<class From>
struct BitcastHelperImpl< ::half_float::half, From>
{
    static ::half_float::half Cast(const From from)
    {
        return ::half_float::detail::half_bitcast(
            BitcastHelperImpl< ::half_float::detail::uint16, From>::Cast(from));
    }
};

/// Helper for float casts specialization for cast from half_float
template<class To>
struct BitcastHelperImpl<To, ::half_float::half>
{
    static To Cast(const ::half_float::half from)
    {
        ::half_float::detail::uint16 bitcast = ::half_float::detail::half_bitcast(from);
        return *(To*)&bitcast;
    }
};

/// Helper for float casts specialization for cast from float vector to int
template<class To, int TOTAL_BITS, typename BASE_TYPE>
struct BitcastHelperImpl<To, codasip::codasip_vec_flt<TOTAL_BITS, BASE_TYPE> >
{
    static To Cast(const codasip::codasip_vec_flt<TOTAL_BITS, BASE_TYPE> from)
    {
        return from.get_as_bits();
    }
};

/**
 * \brief Helper for bitcasts to/from float types in simulator
 */
template<class To, class From>
inline To BitcastHelper(const From from)
{
    return BitcastHelperImpl<To, From>::Cast(from);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
/// Debug Functions

/**
 * \brief Store program exit code to a file named 'sim_exit_code'.
 * \param[in] code
 */
void codasip_store_exit_code(int32 code);

////////////////////////////////////////////////////////////////////////////////////////////////////
/// Compiler Functions

/**
 * \brief Returns value representing undefined value, -1.
 */
template<typename T>
T codasip_undef()
{
    return -1;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
/// Arithmetic Functions

template<typename T>
uint1 codasip_borrow_sub(T a, T b)
{
    return a.to_unsigned() < b.to_unsigned();
}

template<typename T>
uint1 codasip_borrow_sub_c(T a, T b, uint1 c)
{
    return c
        ? a.to_unsigned() < (a - b - c).to_unsigned() || b.to_unsigned() == ((T)-1).to_unsigned()
        : a.to_unsigned() < b.to_unsigned();
}

template<typename T>
uint1 codasip_carry_add(T a, T b)
{
    return (a + b).to_unsigned() < a.to_unsigned();
}

template<typename T>
uint1 codasip_carry_add_c(T a, T b, uint1 c)
{
    return c
        ? (a + b + c).to_unsigned() <= a.to_unsigned()
        : (a + b + c).to_unsigned() <  a.to_unsigned();
}

template<typename T>
T codasip_ctlz(T src)
{
    T res = 0;
    while (res < T::BIT_WIDTH && (src & ((T)1 << ((T::BIT_WIDTH - 1) - res))) == 0)
    {
        res++;
    }
    return res;
}

template<typename T>
T codasip_cttz(T src)
{
    T res = 0;
    while (res < T::BIT_WIDTH && (src & ((T)1 << res)) == 0)
    {
        res++;
    }
    return res;
}

template<typename T>
T codasip_ctlo(T src)
{
    T res = 0;
    while (res < T::BIT_WIDTH && (src & ((T)1 << ((T::BIT_WIDTH - 1) - res))) != 0)
    {
        res++;
    }
    return res;
}

template<typename T>
T codasip_ctto(T src)
{
    T res = 0;
    while (res < T::BIT_WIDTH && (src & ((T)1 << res)) != 0)
    {
        res++;
    }
    return res;
}

template<typename T>
T codasip_ctpop(T src)
{
    T res = 0;
    for (size_t i = 0; i < T::BIT_WIDTH; i++)
    {
        if ((src >> i) & 1)
        {
            res++;
        }
    }
    return res;
}

template<typename T>
uint1 codasip_overflow_add(T a, T b)
{
    return ((a ^ (a + b)) & (b ^ (a + b))).to_signed() < 0;
}

template<typename T>
uint1 codasip_overflow_add_c(T a, T b, uint1 c)
{
    return ((a ^ (a + b + c)) & (b ^ (a + b + c))).to_signed() < 0;
}

template<typename T>
uint1 codasip_overflow_sub(T a, T b)
{
    return ((a ^ b) & (a ^ (a - b))).to_signed() < 0;
}

template<typename T>
uint1 codasip_overflow_sub_c(T a, T b, uint1 c)
{
    return ((a ^ b) & (a ^ (a - b - c))).to_signed() < 0;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
/// Saturated Arithmetic Functions

template<typename T>
typename std::enable_if<!std::is_signed<T>::value, T>::type codasip_usadd(T a, T b)
{
    return codasip_carry_add<T>(a, b) ? (T)-1 /*unsigned max*/ : a + b;
}

template<typename T>
typename std::enable_if<!std::is_signed<T>::value, uint1>::type codasip_usadd_occured(T a, T b)
{
    return codasip_carry_add<T>(a, b);
}

template<typename T>
typename std::enable_if<!std::is_signed<T>::value, T>::type codasip_ussub(T a, T b)
{
    return codasip_borrow_sub<T>(a, b) ? (T)-1 /*unsigned max*/ : a - b;
}

template<typename T>
typename std::enable_if<!std::is_signed<T>::value, uint1>::type codasip_ussub_occured(T a, T b)
{
    return codasip_borrow_sub<T>(a, b);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
/// Floating Point Functions

template<typename T>
typename std::enable_if<!std::is_integral<T>::value, T>::type codasip_cos(T a)
{
    return cos(a);
}

template<typename T>
typename std::enable_if<!std::is_integral<T>::value, T>::type codasip_exp(T a)
{
    return exp(a);
}

template<typename T>
typename std::enable_if<!std::is_integral<T>::value, T>::type codasip_fabs(T a)
{
    return fabs(a);
}

// scalar float
template<typename CompareType, typename T>
typename std::enable_if<std::is_floating_point<T>::value
    || std::is_same<T, ::half_float::half>::value, CompareType>::type IsNan(T a)
{
    return std::isnan(a);
}

// vector float
template<typename CompareType, typename T>
typename std::enable_if<!std::is_floating_point<T>::value
    && !std::is_same<T, ::half_float::half>::value, CompareType>::type IsNan(T a)
{
    CompareType res;
    for (size_t i = 0; i < T::ELEM_COUNT; i++)
    {
        res[i] = std::isnan(a[i]);
    }
    return res;
}

/**
 * \brief Compares two floats or two float vectors if they are comparable.
 *        CompareType could be uint1 or vector of uintX, where X is size of T vector item.
 * \note  Similar description fits all other float compare functions.
 * \param[in] a
 * \param[in] b
 */
template<typename CompareType, typename T>
typename std::enable_if<!std::is_integral<T>::value, CompareType>::type codasip_fcmp_ord(T a, T b)
{
    return (!IsNan<CompareType, T>(a)) & (!IsNan<CompareType, T>(b));
}

template<typename CompareType, typename T>
typename std::enable_if<!std::is_integral<T>::value, CompareType>::type codasip_fcmp_oeq(T a, T b)
{
    return codasip_fcmp_ord<CompareType, T>(a, b) & (a == b);
}

template<typename CompareType, typename T>
typename std::enable_if<!std::is_integral<T>::value, CompareType>::type codasip_fcmp_oge(T a, T b)
{
    return codasip_fcmp_ord<CompareType, T>(a, b) & (a >= b);
}

template<typename CompareType, typename T>
typename std::enable_if<!std::is_integral<T>::value, CompareType>::type codasip_fcmp_ogt(T a, T b)
{
    return codasip_fcmp_ord<CompareType, T>(a, b) & (a > b);
}

template<typename CompareType, typename T>
typename std::enable_if<!std::is_integral<T>::value, CompareType>::type codasip_fcmp_ole(T a, T b)
{
    return codasip_fcmp_ord<CompareType, T>(a, b) & (a <= b);
}

template<typename CompareType, typename T>
typename std::enable_if<!std::is_integral<T>::value, CompareType>::type codasip_fcmp_olt(T a, T b)
{
    return codasip_fcmp_ord<CompareType, T>(a, b) & (a < b);
}

template<typename CompareType, typename T>
typename std::enable_if<!std::is_integral<T>::value, CompareType>::type codasip_fcmp_one(T a, T b)
{
    return codasip_fcmp_ord<CompareType, T>(a, b) & (a != b);
}

template<typename CompareType, typename T>
typename std::enable_if<!std::is_integral<T>::value, CompareType>::type codasip_fcmp_uno(T a, T b)
{
    return IsNan<CompareType, T>(a) | IsNan<CompareType, T>(b);
}

template<typename CompareType, typename T>
typename std::enable_if<!std::is_integral<T>::value, CompareType>::type codasip_fcmp_ueq(T a, T b)
{
    return codasip_fcmp_uno<CompareType, T>(a, b) | (a == b);
}

template<typename CompareType, typename T>
typename std::enable_if<!std::is_integral<T>::value, CompareType>::type codasip_fcmp_uge(T a, T b)
{
    return codasip_fcmp_uno<CompareType, T>(a, b) | (a >= b);
}

template<typename CompareType, typename T>
typename std::enable_if<!std::is_integral<T>::value, CompareType>::type codasip_fcmp_ugt(T a, T b)
{
    return codasip_fcmp_uno<CompareType, T>(a, b) | (a > b);
}

template<typename CompareType, typename T>
typename std::enable_if<!std::is_integral<T>::value, CompareType>::type codasip_fcmp_ule(T a, T b)
{
    return codasip_fcmp_uno<CompareType, T>(a, b) | (a <= b);
}

template<typename CompareType, typename T>
typename std::enable_if<!std::is_integral<T>::value, CompareType>::type codasip_fcmp_ult(T a, T b)
{
    return codasip_fcmp_uno<CompareType, T>(a, b) | (a < b);
}

template<typename CompareType, typename T>
typename std::enable_if<!std::is_integral<T>::value, CompareType>::type codasip_fcmp_une(T a, T b)
{
    return codasip_fcmp_uno<CompareType, T>(a, b) | (a != b);
}

template<typename T>
typename std::enable_if<!std::is_integral<T>::value, T>::type codasip_floor(T a)
{
    return floor(a);
}

template<typename T>
typename std::enable_if<!std::is_integral<T>::value, T>::type codasip_fma(T a, T b, T c)
{
    return fma(a, b, c);
}

/**
 * \brief Get rounding mode.
 */
int32 codasip_fpu_getround();
/**
 * \brief Sets rounding mode.
 * \param[in] mode rounding mode
 */
void codasip_fpu_setround(int32 mode);

template<typename T>
typename std::enable_if<!std::is_integral<T>::value, T>::type codasip_log(T a)
{
    return log(a);
}

template<typename T>
typename std::enable_if<!std::is_integral<T>::value, T>::type codasip_pow(T a, T b)
{
    return pow(a, b);
}

template<typename T>
typename std::enable_if<!std::is_integral<T>::value, T>::type codasip_powi(T a, int32 b)
{
    return codasip_pow<T>(a, (T)b);
}

template<typename T>
typename std::enable_if<!std::is_integral<T>::value, T>::type codasip_sin(T a)
{
    return sin(a);
}

template<typename T>
typename std::enable_if<!std::is_integral<T>::value, T>::type codasip_sqrt(T a)
{
    return sqrt(a);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
/// Vector Functions

template<typename ConditionVectorType, typename ValueVectorType>
ValueVectorType codasip_select(ConditionVectorType cond, ValueVectorType a, ValueVectorType b)
{
    ValueVectorType res;
    for (size_t i = 0; i < ValueVectorType::ELEM_COUNT; i++)
    {
        res[i] = cond[i] ? a[i] : b[i];
    }
    return res;
}

template<typename TargetVectorType, typename SourceVectorType>
TargetVectorType codasip_sext(SourceVectorType a)
{
    TargetVectorType res;
    for (size_t i = 0; i < TargetVectorType::ELEM_COUNT; i++)
    {
        res[i] = (codasip::Integer<TargetVectorType::ELEM_BITS, true>)
            (codasip::Integer<SourceVectorType::ELEM_BITS, true>)a[i];
    }
    return res;
}

template<typename MaskVectorType, typename ValueVectorType>
ValueVectorType codasip_shufflevector(ValueVectorType a, ValueVectorType b, MaskVectorType mask)
{
    ValueVectorType res;
    for (size_t i = 0; i < ValueVectorType::ELEM_COUNT; i++)
    {
        size_t pos = mask[i];
        res[i] = (pos < ValueVectorType::ELEM_COUNT)? a[pos] : b[pos - ValueVectorType::ELEM_COUNT];
    }
    return res;
}

/**
 * \brief Quarantined to work only when target element type is smaller then source element type.
 * \param[in] a source vector
 */
template<typename TargetVectorType, typename SourceVectorType>
TargetVectorType codasip_trunc(SourceVectorType a)
{
    TargetVectorType res;
    for (size_t i = 0; i < TargetVectorType::ELEM_COUNT; i++)
    {
        res[i] = a[i];
    }
    return res;
}

template<typename TargetVectorType, typename SourceVectorType>
TargetVectorType codasip_zext(SourceVectorType a)
{
    TargetVectorType res;
    for (size_t i = 0; i < TargetVectorType::ELEM_COUNT; i++)
    {
        res[i] = (codasip::Integer<TargetVectorType::ELEM_BITS, false>)
            (codasip::Integer<SourceVectorType::ELEM_BITS, false>)a[i];
    }
    return res;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
/// Fixed Point Functions

template<typename T>
//typename std::enable_if<std::is_signed<T>::value, T>::type FIXME does not work
T codasip_fx_div(T a, T b, int32 fract_bits, uint1 rounding_flag)
{
    codasip::Integer<2 * T::BIT_WIDTH, true> c = a;
    codasip::Integer<2 * T::BIT_WIDTH, true> d = b;
    return rounding_flag ? ((c << fract_bits) + (d >> 2)) / d : (c << fract_bits) / d;
}

/**
 * \brief Retrieves mantissa bit-width.
 *        Private helper for functions codasip_fx_fptofx and codasip_fx_fxtofp.
 * \param[in] source floating point source
 */
template<typename FloatType>
size_t GetMantissaBits()
{
    const size_t bitWidth = CHAR_BIT * sizeof(FloatType);

    switch (bitWidth)
    {
        case 16:
            return 10;
        case 32:
            return 23;
        case 64:
            return 52;
        default:
            THROW_ERROR() << "Unsupported mantissa bits for floating point type of bit-width "
                << bitWidth << ".";
            return 0;
    }
}

/**
 * \brief Retrieves floating point bias value.
 *        Private helper for functions codasip_fx_fptofx and codasip_fx_fxtofp.
 * \param[in] source floating point source
 */
template<typename FloatType>
size_t GetBias()
{
    const size_t bitWidth = CHAR_BIT * sizeof(FloatType);

    switch (bitWidth)
    {
        case 16:
            return 15;
        case 32:
            return 127;
        case 64:
            return 1023;
        default:
            THROW_ERROR() << "Unsupported bias value for floating point type of bit-width "
                << bitWidth << ".";
            return 0;
    }
}

template<typename FixedPointType, typename FloatType>
typename std::enable_if</*std::is_signed<FixedPointType>::value FIXME does not work
    && */(std::is_floating_point<FloatType>::value || std::is_same<FloatType, ::half_float::half>::value),
FixedPointType>::type codasip_fx_fptofx_to(FloatType a, int32 fract_bits)
{
    const size_t TARGET_BIT_WIDTH = FixedPointType::BIT_WIDTH;
    const size_t SOURCE_BIT_WIDTH = CHAR_BIT * sizeof(FloatType);
    const size_t MANTISSA_BITS = GetMantissaBits<FloatType>();
    const size_t BIAS = GetBias<FloatType>();

    FixedPointType i     = *(FixedPointType*)&a;
    FixedPointType mMask = ((FixedPointType)1 << MANTISSA_BITS) - 1;
    FixedPointType eMask = ((FixedPointType)1 << (SOURCE_BIT_WIDTH - MANTISSA_BITS - 1)) - 1;

    FixedPointType shift = MANTISSA_BITS > fract_bits
        ? MANTISSA_BITS - fract_bits : fract_bits - MANTISSA_BITS;
    FixedPointType m     = MANTISSA_BITS > fract_bits
        ? (i & mMask) >> shift : (i & mMask) << shift;

    FixedPointType e     = ((i >> MANTISSA_BITS) & eMask) - BIAS;

    m += (FixedPointType)1 << fract_bits;
    m = e > 0 ? m << e : m >> (0 - e);

    FixedPointType mClz = codasip_ctlz<FixedPointType>(m);
    m = (SOURCE_BIT_WIDTH - mClz) > TARGET_BIT_WIDTH
        ? (m >> (SOURCE_BIT_WIDTH - TARGET_BIT_WIDTH)) : m;

    return i > 0 ? m : (FixedPointType)(0 - m);
}

template<typename FloatType, typename FixedPointType>
typename std::enable_if</*std::is_signed<FixedPointType>::value FIXME does not work
    && */(std::is_floating_point<FloatType>::value || std::is_same<FloatType, ::half_float::half>::value),
FloatType>::type codasip_fx_fxtofp_to(FixedPointType a, int32 fract_bits)
{
    const size_t TARGET_BIT_WIDTH = CHAR_BIT * sizeof(FloatType);
    const size_t SOURCE_BIT_WIDTH = FixedPointType::BIT_WIDTH;
    const size_t MANTISSA_BITS = GetMantissaBits<FloatType>();
    const size_t BIAS = GetBias<FloatType>();

    typedef codasip::Integer<TARGET_BIT_WIDTH, true> TargetFixedPointType;

    TargetFixedPointType s    = (a >> (SOURCE_BIT_WIDTH - 1)) & 1;
    TargetFixedPointType m    = a > 0 ? (TargetFixedPointType)a : (TargetFixedPointType)(0 - a);
    TargetFixedPointType mClz = codasip_ctlz<TargetFixedPointType>(m);
    TargetFixedPointType e    = SOURCE_BIT_WIDTH > TARGET_BIT_WIDTH
        ? (SOURCE_BIT_WIDTH - 1) - mClz : (TARGET_BIT_WIDTH - 1) - mClz;

    m = e > MANTISSA_BITS ? m >> (SOURCE_BIT_WIDTH - MANTISSA_BITS) : m << (MANTISSA_BITS - e);
    m = m ^ ((TargetFixedPointType)1 << MANTISSA_BITS);
    e = e > MANTISSA_BITS ? (TargetFixedPointType)MANTISSA_BITS : e;
    e = (e - fract_bits + BIAS) << MANTISSA_BITS;

    TargetFixedPointType f = s << (TARGET_BIT_WIDTH - 1);
    f = f | e | m;
    return *(FloatType*)&f;
}

template<typename IntegerType, typename FixedPointType>
/*typename std::enable_if<std::is_signed<IntegerType>::value FIXME does not work
    && std::is_signed<FixedPointType>::value, IntegerType>::type*/
IntegerType codasip_fx_fxtoi_to(FixedPointType a, int32 fract_bits)
{
    return a >> fract_bits;
}

template<typename FixedPointType, typename IntegerType>
/*typename std::enable_if<std::is_signed<FixedPointType>::value FIXME does not work
    && std::is_signed<IntegerType>::value, FixedPointType>::type*/
FixedPointType codasip_fx_itofx_to(IntegerType a, int32 fract_bits)
{
    return a << fract_bits;
}

template<typename T>
//typename std::enable_if<std::is_signed<T>::value, T>::type FIXME does not work
T codasip_fx_mul(T a, T b, int32 fract_bits, uint1 rounding_flag)
{
    codasip::Integer<2 * T::BIT_WIDTH, true> c = a;
    codasip::Integer<2 * T::BIT_WIDTH, true> d = b;
    return rounding_flag
        ? ((c * d) + ((codasip::Integer<2 * T::BIT_WIDTH, true>)1 << (fract_bits - 1))) >> fract_bits
        : (c * d) >> fract_bits;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
/// Complex Numbers Functions

template<typename VectorType>
VectorType codasip_cplx_add(VectorType a, VectorType b)
{
    return a + b;
}

template<typename VectorType>
VectorType codasip_cplx_sub(VectorType a, VectorType b)
{
    return a - b;
}

template<typename VectorType>
VectorType codasip_cplx_mul(VectorType a, VectorType b)
{
    VectorType res;
    for (size_t i = 0; i < VectorType::ELEM_COUNT / 2; i += 2)
    {
        res[i] = a[i] * b[i] - a[i+1] * b[i+1];
        res[i+1] = a[i] * b[i+1] - a[i+1] * b[i];
    }
    return res;
}

template<typename VectorType>
VectorType codasip_cplx_div(VectorType a, VectorType b)
{
    VectorType res;
    for (size_t i = 0; i < VectorType::ELEM_COUNT / 2; i += 2)
    {
        res[i] = (a[i] * b[i] + a[i+1] * b[i+1]) / (b[i] * b[i] + a[i+1] * b[i+1]);
        res[i+1] = (a[i+1] * b[i] - a[i] * b[i+1]) / (b[i] * b[i] + a[i+1] * b[i+1]);
    }
    return res;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
/// Miscellaneous Functions

/**
 * \brief Does conversion between uintX and floatX.
 * \param[in] value source value
 */
template<typename TargetType, typename SourceType>
TargetType codasip_bitcast_to_float(SourceType value)
{
    return *((TargetType*)&value);
}
/**
 * \brief Does conversion between uintX and vY[ui]Z.
 * \param[in] value source value
 */
template<typename TargetType, typename SourceType>
TargetType codasip_bitcast_to_vector(SourceType value)
{
    return (TargetType)value;
}
/**
 * \brief Does conversion from uintX to vYfZ.
 * \param[in] value source value
 */
template<typename TargetType, typename SourceType>
TargetType codasip_bitcast_to_float_vector_from_uint(SourceType value)
{
    TargetType res;
    res.set_from_bits(value);
    return res;
}
/**
 * \brief Does conversion from vYfZ to uintX.
 * \param[in] value source value
 */
template<typename TargetType, typename SourceType>
TargetType codasip_bitcast_to_uint_from_float_vector(SourceType value)
{
    return value.get_as_bits();
}


}   // namespace codasip::simulator
}   // namespace codasip

#endif  // SIMULATOR_SIMBASE_SIMULATOR_HELPERS_H_
