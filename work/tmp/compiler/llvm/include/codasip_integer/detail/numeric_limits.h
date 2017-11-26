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
 *  \brief  Specialization of std::numeric_limits for codasip::integer::IntegerNumber.
 */

#ifndef INC_CODASIP_INTEGER_DETAIL_NUMERIC_LIMITS_H_
#define INC_CODASIP_INTEGER_DETAIL_NUMERIC_LIMITS_H_

#include <limits>

namespace codasip {
namespace integer {
namespace detail {

/**
 *  \addtogroup CODASIP_INT
 *  \{
 *  \class  numeric_limits_base
 *  \brief  Base class specializing std::numeric_limits for Codasip integer
 *          backends and number classes.
 *  \tparam T integer backend or number class, must contain \em BIT_WIDTH and
 *          \em IS_SIGNED member attributes.
 *  \}
 */
template <class T>
struct numeric_limits_base
{
private:
    typedef T value_type;
public:
    static CODASIP_CONSTEXPR bool is_specialized = true;
    // sign does not count into digits
    static CODASIP_CONSTEXPR int  digits = static_cast<int>(T::BIT_WIDTH - T::IS_SIGNED);
    static CODASIP_CONSTEXPR int  digits10 = static_cast<int>((digits * 643L) / 2136);
    static CODASIP_CONSTEXPR int  max_digits10 = digits10 + 2;
    static CODASIP_CONSTEXPR bool is_signed = T::IS_SIGNED;
    static CODASIP_CONSTEXPR bool is_integer = true;
    static CODASIP_CONSTEXPR bool is_exact = true;
    static CODASIP_CONSTEXPR int radix = 2;
    static value_type min() CODASIP_NOEXCEPT
    {
        return is_signed
            ? (value_type(1) << (T::BIT_WIDTH -1))
            : value_type(0);
    }
    static value_type max() CODASIP_NOEXCEPT { return ~min(); }
    static value_type lowest() CODASIP_NOEXCEPT { return min(); }
    static value_type epsilon() CODASIP_NOEXCEPT { return value_type(); }
    static value_type round_error() CODASIP_NOEXCEPT { return value_type(); }

    static CODASIP_CONSTEXPR int  min_exponent = 0;
    static CODASIP_CONSTEXPR int  min_exponent10 = 0;
    static CODASIP_CONSTEXPR int  max_exponent = 0;
    static CODASIP_CONSTEXPR int  max_exponent10 = 0;

    static CODASIP_CONSTEXPR bool has_infinity = false;
    static CODASIP_CONSTEXPR bool has_quiet_NaN = false;
    static CODASIP_CONSTEXPR bool has_signaling_NaN = false;
    static CODASIP_CONSTEXPR std::float_denorm_style has_denorm = std::denorm_absent;
    static CODASIP_CONSTEXPR bool has_denorm_loss = false;
    static value_type infinity() CODASIP_NOEXCEPT { return value_type(); }
    static value_type quiet_NaN() CODASIP_NOEXCEPT { return value_type(); }
    static value_type signaling_NaN() CODASIP_NOEXCEPT { return value_type(); }
    static value_type denorm_min() CODASIP_NOEXCEPT { return value_type(); }

    static CODASIP_CONSTEXPR bool is_iec559 = false;
    static CODASIP_CONSTEXPR bool is_bounded = true;
    // see https://gcc.gnu.org/bugzilla/show_bug.cgi?id=22200
    static CODASIP_CONSTEXPR bool is_modulo = is_signed;

    static CODASIP_CONSTEXPR bool traps = false;
    static CODASIP_CONSTEXPR bool tinyness_before = false;
    static CODASIP_CONSTEXPR std::float_round_style round_style = std::round_toward_zero;
};

}   // namespace codasip::integer::detail
}   // namespace codasip::integer
}   // namespace codasip

#endif  // INC_CODASIP_INTEGER_DETAIL_NUMERIC_LIMITS_H_
