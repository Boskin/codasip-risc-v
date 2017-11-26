/**
 * Codasip Ltd
 * 
 * CONFIDENTIAL 
 *
 * Copyright 2014 Codasip Ltd
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
 *  \author Hons Petr
 *  \date   2. 4. 2015
 *  \brief  Definition of utility function used for enum to string automatic conversion.
 */

#ifndef _ENUM_UTILS_H_
#define _ENUM_UTILS_H_

#include "check_condition.h"    // CHECK_CONDITION
#include "stringutils.h"        // Trim
#include <sstream>
#include <map>

/**
 *  \addtogroup CODASIP_UTILITY
 *  \{
 *  \defgroup CODASIP_UTILITY_ENUM    Enum utilities
 *  Contains common functions and macros for automatic creation of enums and conversion
 *  of enum to string and back.
 *  \}
 */
namespace codasip {
namespace detail {
/// Typedef for container with mapping of enum number to enum string
typedef std::map<unsigned, std::string> EnumContainer;

/**
 * \struct AssignmentTester
 * \brief  Enables detection if there was some literal assigned or not.
 * \note   AssignmentTester a_ENUM_A;
           AssignmentTester value = a_ENUM_A;
           value.m_Assigned is false

           AssignmentTester a_ENUM_A = (ENUM_A * 2 + 6);
           AssignmentTester value = a_ENUM_A = (ENUM_A * 2 + 6);
           value.m_Assigned is true

           this enables preprocessor concatenation of enumeration specification
           (ENUM_A or ENUM_A = ....) with some prefix (e.g. 'a_') and then detection
           that there was some .... or no assignment was performed
 */
struct AssignmentTester
{
    /// Default constructor
    AssignmentTester() : m_Assigned(false), m_Value(0) {}
    /// Conversion of literal
    AssignmentTester(unsigned i) : m_Assigned(true), m_Value(i) {}

    /// True if literal was converted
    bool m_Assigned;
    /// Value of literal
    unsigned m_Value;
};

/**
 * \brief Inserts into container \p cont describing single enum new enumeration with \p value
 *        and associated string \p enumStr. \p enumStr might contain initialization of enumeration
 *        (e.g. ENUM_A = 10 * 2 + 3) so it must be removed.
 */
inline void InsertIntoEnumContainer(EnumContainer& cont,
    const unsigned value,
    std::string enumStr)
{
    // if string is created automatically from ENUM=10, discard =10
    size_t pos = enumStr.find("=");
    if (pos != std::string::npos && pos > 1)
    {
        enumStr = enumStr.substr(0, pos);
    }

    cont.insert(EnumContainer::value_type((unsigned)value, ::codasip::Trim(enumStr)));
}


}   // namespace codasip::detail
}   // namespace codasip

////////////////////////////////////////////////////////////////////////////////////////////////////
/**
 * \brief Basic macros
 */
#define PP_COMMA() ,
#define PP_EMPTY()

////////////////////////////////////////////////////////////////////////////////////////////////////
/**
 * \brief Expand and concatenate 2 arguments.
 */
#ifdef _MSC_VER
#   define PP_CAT(a, b) PP_CAT_OO((a, b))
#   define PP_CAT_OO(par) PP_CAT_I ## par
#   define PP_CAT_I(a, b) a ## b
#else
#   define PP_CAT(a, b) PP_CAT_I(a, b)
#   define PP_CAT_I(a, b) PP_CAT_II(~, a ## b)
#   define PP_CAT_II(p, res) res
#endif

////////////////////////////////////////////////////////////////////////////////////////////////////
/**
 * \brief Expand given macro.
 */
#ifdef _MSC_VER
#   define PP_EXPAND(x) PP_EXPAND_OO((x))
#   define PP_EXPAND_OO(par) PP_EXPAND_I ## par
#else
#   define PP_EXPAND(x) PP_EXPAND_I(x)
#endif
#define PP_EXPAND_I(x) x

////////////////////////////////////////////////////////////////////////////////////////////////////
/**
 * \brief Return number of variadic tuple elements.
 */
#if _MSC_VER
#   define PP_VARIADIC_SIZE(...) PP_CAT(PP_VARIADIC_SIZE_I(__VA_ARGS__, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 79, 78, 77, 76, 75, 74, 73, 72, 71, 70, 69, 68, 67, 66, 65, 64, 63, 62, 61, 60, 59, 58, 57, 56, 55, 54, 53, 52, 51, 50, 49, 48, 47, 46, 45, 44, 43, 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1,),)
#else
#   define PP_VARIADIC_SIZE(...) PP_VARIADIC_SIZE_I(__VA_ARGS__, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 79, 78, 77, 76, 75, 74, 73, 72, 71, 70, 69, 68, 67, 66, 65, 64, 63, 62, 61, 60, 59, 58, 57, 56, 55, 54, 53, 52, 51, 50, 49, 48, 47, 46, 45, 44, 43, 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1,)
#endif
#define PP_VARIADIC_SIZE_I(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, e73, e74, e75, e76, e77, e78, e79, e80, e81, e82, e83, e84, e85, e86, e87, e88, e89, e90, e91, e92, e93, e94, e95, e96, e97, e98, e99, e100, e101, e102, e103, e104, e105, e106, e107, e108, e109, e110, e111, e112, e113, e114, e115, e116, e117, e118, e119, e120, e121, e122, e123, e124, size, ...) size

////////////////////////////////////////////////////////////////////////////////////////////////////
/**
 * \brief Return tuple element at given index.
 */
#if _MSC_VER
#   define PP_VARIADIC_ELEM(n, ...) PP_VARIADIC_ELEM_I(n,__VA_ARGS__)
#   define PP_VARIADIC_ELEM_I(n, ...) PP_VARIADIC_ELEM_II(PP_CAT(PP_VARIADIC_ELEM_, n), (__VA_ARGS__))
#   define PP_VARIADIC_ELEM_II(f, a) f ## a
#else
#   define PP_VARIADIC_ELEM(n, ...) PP_CAT(PP_VARIADIC_ELEM_, n)(__VA_ARGS__,)
#endif
#define PP_VARIADIC_ELEM_0(e0, ...) e0
#define PP_VARIADIC_ELEM_1(e0, e1, ...) e1
#define PP_VARIADIC_ELEM_2(e0, e1, e2, ...) e2
#define PP_VARIADIC_ELEM_3(e0, e1, e2, e3, ...) e3
#define PP_VARIADIC_ELEM_4(e0, e1, e2, e3, e4, ...) e4
#define PP_VARIADIC_ELEM_5(e0, e1, e2, e3, e4, e5, ...) e5
#define PP_VARIADIC_ELEM_6(e0, e1, e2, e3, e4, e5, e6, ...) e6
#define PP_VARIADIC_ELEM_7(e0, e1, e2, e3, e4, e5, e6, e7, ...) e7
#define PP_VARIADIC_ELEM_8(e0, e1, e2, e3, e4, e5, e6, e7, e8, ...) e8
#define PP_VARIADIC_ELEM_9(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, ...) e9
#define PP_VARIADIC_ELEM_10(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, ...) e10
#define PP_VARIADIC_ELEM_11(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, ...) e11
#define PP_VARIADIC_ELEM_12(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, ...) e12
#define PP_VARIADIC_ELEM_13(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, ...) e13
#define PP_VARIADIC_ELEM_14(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, ...) e14
#define PP_VARIADIC_ELEM_15(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, ...) e15
#define PP_VARIADIC_ELEM_16(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, ...) e16
#define PP_VARIADIC_ELEM_17(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, ...) e17
#define PP_VARIADIC_ELEM_18(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, ...) e18
#define PP_VARIADIC_ELEM_19(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, ...) e19
#define PP_VARIADIC_ELEM_20(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, ...) e20
#define PP_VARIADIC_ELEM_21(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, ...) e21
#define PP_VARIADIC_ELEM_22(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, ...) e22
#define PP_VARIADIC_ELEM_23(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, ...) e23
#define PP_VARIADIC_ELEM_24(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, ...) e24
#define PP_VARIADIC_ELEM_25(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, ...) e25
#define PP_VARIADIC_ELEM_26(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, ...) e26
#define PP_VARIADIC_ELEM_27(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, ...) e27
#define PP_VARIADIC_ELEM_28(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, ...) e28
#define PP_VARIADIC_ELEM_29(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, ...) e29
#define PP_VARIADIC_ELEM_30(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, ...) e30
#define PP_VARIADIC_ELEM_31(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, ...) e31
#define PP_VARIADIC_ELEM_32(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, ...) e32
#define PP_VARIADIC_ELEM_33(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, ...) e33
#define PP_VARIADIC_ELEM_34(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, ...) e34
#define PP_VARIADIC_ELEM_35(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, ...) e35
#define PP_VARIADIC_ELEM_36(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, ...) e36
#define PP_VARIADIC_ELEM_37(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, ...) e37
#define PP_VARIADIC_ELEM_38(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, ...) e38
#define PP_VARIADIC_ELEM_39(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, ...) e39
#define PP_VARIADIC_ELEM_40(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, ...) e40
#define PP_VARIADIC_ELEM_41(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, ...) e41
#define PP_VARIADIC_ELEM_42(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, ...) e42
#define PP_VARIADIC_ELEM_43(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, ...) e43
#define PP_VARIADIC_ELEM_44(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, ...) e44
#define PP_VARIADIC_ELEM_45(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, ...) e45
#define PP_VARIADIC_ELEM_46(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, ...) e46
#define PP_VARIADIC_ELEM_47(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, ...) e47
#define PP_VARIADIC_ELEM_48(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, ...) e48
#define PP_VARIADIC_ELEM_49(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, ...) e49
#define PP_VARIADIC_ELEM_50(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, ...) e50
#define PP_VARIADIC_ELEM_51(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, ...) e51
#define PP_VARIADIC_ELEM_52(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, ...) e52
#define PP_VARIADIC_ELEM_53(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, ...) e53
#define PP_VARIADIC_ELEM_54(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, ...) e54
#define PP_VARIADIC_ELEM_55(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, ...) e55
#define PP_VARIADIC_ELEM_56(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, ...) e56
#define PP_VARIADIC_ELEM_57(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, ...) e57
#define PP_VARIADIC_ELEM_58(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, ...) e58
#define PP_VARIADIC_ELEM_59(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, ...) e59
#define PP_VARIADIC_ELEM_60(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, ...) e60
#define PP_VARIADIC_ELEM_61(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, ...) e61
#define PP_VARIADIC_ELEM_62(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, ...) e62
#define PP_VARIADIC_ELEM_63(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, ...) e63
#define PP_VARIADIC_ELEM_64(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, ...) e64
#define PP_VARIADIC_ELEM_65(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, ...) e65
#define PP_VARIADIC_ELEM_66(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, ...) e66
#define PP_VARIADIC_ELEM_67(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, ...) e67
#define PP_VARIADIC_ELEM_68(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, ...) e68
#define PP_VARIADIC_ELEM_69(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, ...) e69
#define PP_VARIADIC_ELEM_70(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, ...) e70
#define PP_VARIADIC_ELEM_71(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, ...) e71
#define PP_VARIADIC_ELEM_72(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, ...) e72
#define PP_VARIADIC_ELEM_73(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, e73, ...) e73
#define PP_VARIADIC_ELEM_74(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, e73, e74, ...) e74
#define PP_VARIADIC_ELEM_75(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, e73, e74, e75, ...) e75
#define PP_VARIADIC_ELEM_76(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, e73, e74, e75, e76, ...) e76
#define PP_VARIADIC_ELEM_77(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, e73, e74, e75, e76, e77, ...) e77
#define PP_VARIADIC_ELEM_78(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, e73, e74, e75, e76, e77, e78, ...) e78
#define PP_VARIADIC_ELEM_79(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, e73, e74, e75, e76, e77, e78, e79, ...) e79
#define PP_VARIADIC_ELEM_80(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, e73, e74, e75, e76, e77, e78, e79, e80, ...) e80
#define PP_VARIADIC_ELEM_81(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, e73, e74, e75, e76, e77, e78, e79, e80, e81, ...) e81
#define PP_VARIADIC_ELEM_82(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, e73, e74, e75, e76, e77, e78, e79, e80, e81, e82, ...) e82
#define PP_VARIADIC_ELEM_83(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, e73, e74, e75, e76, e77, e78, e79, e80, e81, e82, e83, ...) e83
#define PP_VARIADIC_ELEM_84(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, e73, e74, e75, e76, e77, e78, e79, e80, e81, e82, e83, e84, ...) e84
#define PP_VARIADIC_ELEM_85(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, e73, e74, e75, e76, e77, e78, e79, e80, e81, e82, e83, e84, e85, ...) e85
#define PP_VARIADIC_ELEM_86(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, e73, e74, e75, e76, e77, e78, e79, e80, e81, e82, e83, e84, e85, e86, ...) e86
#define PP_VARIADIC_ELEM_87(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, e73, e74, e75, e76, e77, e78, e79, e80, e81, e82, e83, e84, e85, e86, e87, ...) e87
#define PP_VARIADIC_ELEM_88(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, e73, e74, e75, e76, e77, e78, e79, e80, e81, e82, e83, e84, e85, e86, e87, e88, ...) e88
#define PP_VARIADIC_ELEM_89(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, e73, e74, e75, e76, e77, e78, e79, e80, e81, e82, e83, e84, e85, e86, e87, e88, e89, ...) e89
#define PP_VARIADIC_ELEM_90(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, e73, e74, e75, e76, e77, e78, e79, e80, e81, e82, e83, e84, e85, e86, e87, e88, e89, e90, ...) e90
#define PP_VARIADIC_ELEM_91(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, e73, e74, e75, e76, e77, e78, e79, e80, e81, e82, e83, e84, e85, e86, e87, e88, e89, e90, e91, ...) e91
#define PP_VARIADIC_ELEM_92(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, e73, e74, e75, e76, e77, e78, e79, e80, e81, e82, e83, e84, e85, e86, e87, e88, e89, e90, e91, e92, ...) e92
#define PP_VARIADIC_ELEM_93(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, e73, e74, e75, e76, e77, e78, e79, e80, e81, e82, e83, e84, e85, e86, e87, e88, e89, e90, e91, e92, e93, ...) e93
#define PP_VARIADIC_ELEM_94(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, e73, e74, e75, e76, e77, e78, e79, e80, e81, e82, e83, e84, e85, e86, e87, e88, e89, e90, e91, e92, e93, e94, ...) e94
#define PP_VARIADIC_ELEM_95(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, e73, e74, e75, e76, e77, e78, e79, e80, e81, e82, e83, e84, e85, e86, e87, e88, e89, e90, e91, e92, e93, e94, e95, ...) e95
#define PP_VARIADIC_ELEM_96(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, e73, e74, e75, e76, e77, e78, e79, e80, e81, e82, e83, e84, e85, e86, e87, e88, e89, e90, e91, e92, e93, e94, e95, e96, ...) e96
#define PP_VARIADIC_ELEM_97(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, e73, e74, e75, e76, e77, e78, e79, e80, e81, e82, e83, e84, e85, e86, e87, e88, e89, e90, e91, e92, e93, e94, e95, e96, e97, ...) e97
#define PP_VARIADIC_ELEM_98(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, e73, e74, e75, e76, e77, e78, e79, e80, e81, e82, e83, e84, e85, e86, e87, e88, e89, e90, e91, e92, e93, e94, e95, e96, e97, e98, ...) e98
#define PP_VARIADIC_ELEM_99(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, e73, e74, e75, e76, e77, e78, e79, e80, e81, e82, e83, e84, e85, e86, e87, e88, e89, e90, e91, e92, e93, e94, e95, e96, e97, e98, e99, ...) e99
#define PP_VARIADIC_ELEM_100(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, e73, e74, e75, e76, e77, e78, e79, e80, e81, e82, e83, e84, e85, e86, e87, e88, e89, e90, e91, e92, e93, e94, e95, e96, e97, e98, e99, e100, ...) e100
#define PP_VARIADIC_ELEM_101(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, e73, e74, e75, e76, e77, e78, e79, e80, e81, e82, e83, e84, e85, e86, e87, e88, e89, e90, e91, e92, e93, e94, e95, e96, e97, e98, e99, e100, e101, ...) e101
#define PP_VARIADIC_ELEM_102(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, e73, e74, e75, e76, e77, e78, e79, e80, e81, e82, e83, e84, e85, e86, e87, e88, e89, e90, e91, e92, e93, e94, e95, e96, e97, e98, e99, e100, e101, e102, ...) e102
#define PP_VARIADIC_ELEM_103(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, e73, e74, e75, e76, e77, e78, e79, e80, e81, e82, e83, e84, e85, e86, e87, e88, e89, e90, e91, e92, e93, e94, e95, e96, e97, e98, e99, e100, e101, e102, e103, ...) e103
#define PP_VARIADIC_ELEM_104(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, e73, e74, e75, e76, e77, e78, e79, e80, e81, e82, e83, e84, e85, e86, e87, e88, e89, e90, e91, e92, e93, e94, e95, e96, e97, e98, e99, e100, e101, e102, e103, e104, ...) e104
#define PP_VARIADIC_ELEM_105(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, e73, e74, e75, e76, e77, e78, e79, e80, e81, e82, e83, e84, e85, e86, e87, e88, e89, e90, e91, e92, e93, e94, e95, e96, e97, e98, e99, e100, e101, e102, e103, e104, e105, ...) e105
#define PP_VARIADIC_ELEM_106(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, e73, e74, e75, e76, e77, e78, e79, e80, e81, e82, e83, e84, e85, e86, e87, e88, e89, e90, e91, e92, e93, e94, e95, e96, e97, e98, e99, e100, e101, e102, e103, e104, e105, e106, ...) e106
#define PP_VARIADIC_ELEM_107(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, e73, e74, e75, e76, e77, e78, e79, e80, e81, e82, e83, e84, e85, e86, e87, e88, e89, e90, e91, e92, e93, e94, e95, e96, e97, e98, e99, e100, e101, e102, e103, e104, e105, e106, e107, ...) e107
#define PP_VARIADIC_ELEM_108(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, e73, e74, e75, e76, e77, e78, e79, e80, e81, e82, e83, e84, e85, e86, e87, e88, e89, e90, e91, e92, e93, e94, e95, e96, e97, e98, e99, e100, e101, e102, e103, e104, e105, e106, e107, e108, ...) e108
#define PP_VARIADIC_ELEM_109(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, e73, e74, e75, e76, e77, e78, e79, e80, e81, e82, e83, e84, e85, e86, e87, e88, e89, e90, e91, e92, e93, e94, e95, e96, e97, e98, e99, e100, e101, e102, e103, e104, e105, e106, e107, e108, e109, ...) e109
#define PP_VARIADIC_ELEM_110(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, e73, e74, e75, e76, e77, e78, e79, e80, e81, e82, e83, e84, e85, e86, e87, e88, e89, e90, e91, e92, e93, e94, e95, e96, e97, e98, e99, e100, e101, e102, e103, e104, e105, e106, e107, e108, e109, e110, ...) e110
#define PP_VARIADIC_ELEM_111(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, e73, e74, e75, e76, e77, e78, e79, e80, e81, e82, e83, e84, e85, e86, e87, e88, e89, e90, e91, e92, e93, e94, e95, e96, e97, e98, e99, e100, e101, e102, e103, e104, e105, e106, e107, e108, e109, e110, e111, ...) e111
#define PP_VARIADIC_ELEM_112(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, e73, e74, e75, e76, e77, e78, e79, e80, e81, e82, e83, e84, e85, e86, e87, e88, e89, e90, e91, e92, e93, e94, e95, e96, e97, e98, e99, e100, e101, e102, e103, e104, e105, e106, e107, e108, e109, e110, e111, e112, ...) e112
#define PP_VARIADIC_ELEM_113(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, e73, e74, e75, e76, e77, e78, e79, e80, e81, e82, e83, e84, e85, e86, e87, e88, e89, e90, e91, e92, e93, e94, e95, e96, e97, e98, e99, e100, e101, e102, e103, e104, e105, e106, e107, e108, e109, e110, e111, e112, e113, ...) e113
#define PP_VARIADIC_ELEM_114(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, e73, e74, e75, e76, e77, e78, e79, e80, e81, e82, e83, e84, e85, e86, e87, e88, e89, e90, e91, e92, e93, e94, e95, e96, e97, e98, e99, e100, e101, e102, e103, e104, e105, e106, e107, e108, e109, e110, e111, e112, e113, e114, ...) e114
#define PP_VARIADIC_ELEM_115(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, e73, e74, e75, e76, e77, e78, e79, e80, e81, e82, e83, e84, e85, e86, e87, e88, e89, e90, e91, e92, e93, e94, e95, e96, e97, e98, e99, e100, e101, e102, e103, e104, e105, e106, e107, e108, e109, e110, e111, e112, e113, e114, e115, ...) e115
#define PP_VARIADIC_ELEM_116(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, e73, e74, e75, e76, e77, e78, e79, e80, e81, e82, e83, e84, e85, e86, e87, e88, e89, e90, e91, e92, e93, e94, e95, e96, e97, e98, e99, e100, e101, e102, e103, e104, e105, e106, e107, e108, e109, e110, e111, e112, e113, e114, e115, e116, ...) e116
#define PP_VARIADIC_ELEM_117(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, e73, e74, e75, e76, e77, e78, e79, e80, e81, e82, e83, e84, e85, e86, e87, e88, e89, e90, e91, e92, e93, e94, e95, e96, e97, e98, e99, e100, e101, e102, e103, e104, e105, e106, e107, e108, e109, e110, e111, e112, e113, e114, e115, e116, e117, ...) e117
#define PP_VARIADIC_ELEM_118(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, e73, e74, e75, e76, e77, e78, e79, e80, e81, e82, e83, e84, e85, e86, e87, e88, e89, e90, e91, e92, e93, e94, e95, e96, e97, e98, e99, e100, e101, e102, e103, e104, e105, e106, e107, e108, e109, e110, e111, e112, e113, e114, e115, e116, e117, e118, ...) e118
#define PP_VARIADIC_ELEM_119(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, e73, e74, e75, e76, e77, e78, e79, e80, e81, e82, e83, e84, e85, e86, e87, e88, e89, e90, e91, e92, e93, e94, e95, e96, e97, e98, e99, e100, e101, e102, e103, e104, e105, e106, e107, e108, e109, e110, e111, e112, e113, e114, e115, e116, e117, e118, e119, ...) e119
#define PP_VARIADIC_ELEM_120(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, e73, e74, e75, e76, e77, e78, e79, e80, e81, e82, e83, e84, e85, e86, e87, e88, e89, e90, e91, e92, e93, e94, e95, e96, e97, e98, e99, e100, e101, e102, e103, e104, e105, e106, e107, e108, e109, e110, e111, e112, e113, e114, e115, e116, e117, e118, e119, e120, ...) e120
#define PP_VARIADIC_ELEM_121(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, e73, e74, e75, e76, e77, e78, e79, e80, e81, e82, e83, e84, e85, e86, e87, e88, e89, e90, e91, e92, e93, e94, e95, e96, e97, e98, e99, e100, e101, e102, e103, e104, e105, e106, e107, e108, e109, e110, e111, e112, e113, e114, e115, e116, e117, e118, e119, e120, e121, ...) e121
#define PP_VARIADIC_ELEM_122(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, e73, e74, e75, e76, e77, e78, e79, e80, e81, e82, e83, e84, e85, e86, e87, e88, e89, e90, e91, e92, e93, e94, e95, e96, e97, e98, e99, e100, e101, e102, e103, e104, e105, e106, e107, e108, e109, e110, e111, e112, e113, e114, e115, e116, e117, e118, e119, e120, e121, e122, ...) e122
#define PP_VARIADIC_ELEM_123(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, e73, e74, e75, e76, e77, e78, e79, e80, e81, e82, e83, e84, e85, e86, e87, e88, e89, e90, e91, e92, e93, e94, e95, e96, e97, e98, e99, e100, e101, e102, e103, e104, e105, e106, e107, e108, e109, e110, e111, e112, e113, e114, e115, e116, e117, e118, e119, e120, e121, e122, e123, ...) e123
#define PP_VARIADIC_ELEM_124(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, e73, e74, e75, e76, e77, e78, e79, e80, e81, e82, e83, e84, e85, e86, e87, e88, e89, e90, e91, e92, e93, e94, e95, e96, e97, e98, e99, e100, e101, e102, e103, e104, e105, e106, e107, e108, e109, e110, e111, e112, e113, e114, e115, e116, e117, e118, e119, e120, e121, e122, e123, e124, ...) e124
#define PP_VARIADIC_ELEM_125(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20, e21, e22, e23, e24, e25, e26, e27, e28, e29, e30, e31, e32, e33, e34, e35, e36, e37, e38, e39, e40, e41, e42, e43, e44, e45, e46, e47, e48, e49, e50, e51, e52, e53, e54, e55, e56, e57, e58, e59, e60, e61, e62, e63, e64, e65, e66, e67, e68, e69, e70, e71, e72, e73, e74, e75, e76, e77, e78, e79, e80, e81, e82, e83, e84, e85, e86, e87, e88, e89, e90, e91, e92, e93, e94, e95, e96, e97, e98, e99, e100, e101, e102, e103, e104, e105, e106, e107, e108, e109, e110, e111, e112, e113, e114, e115, e116, e117, e118, e119, e120, e121, e122, e123, e124, e125, ...) e125

////////////////////////////////////////////////////////////////////////////////////////////////////
/**
 * \brief Expand argument and convert it to string.
 */
#if _MSC_VER
#   define PP_STRINGIZE(text) PP_STRINGIZE_A((text))
#   define PP_STRINGIZE_A(arg) PP_STRINGIZE_I arg
#else
#   define PP_STRINGIZE(text) PP_STRINGIZE_I(text)
#endif
#define PP_STRINGIZE_I(text) #text

////////////////////////////////////////////////////////////////////////////////////////////////////
/**
 * \brief Repeats given \p macro \p count times. Use separator \p sep between elements
 * \param macro Macro to be called. Has to have 2 arguments:
 *          index of current call,
 *          data - will be set to \p data used to call PP_REPEAT
 * \param sep Macro for separator. This macro has to have zero arguments in format #define SEP().
 *        PP_EMPTY or PP_COMMA can be used
 */
#define PP_REPEAT(count, sep, macro, data) PP_CAT(PP_REPEAT_I_, count) (macro, data, sep)

#define PP_REPEAT_I_128(m, d, s) PP_REPEAT_I_127(m, d, s) s() m(127, d)
#define PP_REPEAT_I_127(m, d, s) PP_REPEAT_I_126(m, d, s) s() m(126, d)
#define PP_REPEAT_I_126(m, d, s) PP_REPEAT_I_125(m, d, s) s() m(125, d)
#define PP_REPEAT_I_125(m, d, s) PP_REPEAT_I_124(m, d, s) s() m(124, d)
#define PP_REPEAT_I_124(m, d, s) PP_REPEAT_I_123(m, d, s) s() m(123, d)
#define PP_REPEAT_I_123(m, d, s) PP_REPEAT_I_122(m, d, s) s() m(122, d)
#define PP_REPEAT_I_122(m, d, s) PP_REPEAT_I_121(m, d, s) s() m(121, d)
#define PP_REPEAT_I_121(m, d, s) PP_REPEAT_I_120(m, d, s) s() m(120, d)
#define PP_REPEAT_I_120(m, d, s) PP_REPEAT_I_119(m, d, s) s() m(119, d)
#define PP_REPEAT_I_119(m, d, s) PP_REPEAT_I_118(m, d, s) s() m(118, d)
#define PP_REPEAT_I_118(m, d, s) PP_REPEAT_I_117(m, d, s) s() m(117, d)
#define PP_REPEAT_I_117(m, d, s) PP_REPEAT_I_116(m, d, s) s() m(116, d)
#define PP_REPEAT_I_116(m, d, s) PP_REPEAT_I_115(m, d, s) s() m(115, d)
#define PP_REPEAT_I_115(m, d, s) PP_REPEAT_I_114(m, d, s) s() m(114, d)
#define PP_REPEAT_I_114(m, d, s) PP_REPEAT_I_113(m, d, s) s() m(113, d)
#define PP_REPEAT_I_113(m, d, s) PP_REPEAT_I_112(m, d, s) s() m(112, d)
#define PP_REPEAT_I_112(m, d, s) PP_REPEAT_I_111(m, d, s) s() m(111, d)
#define PP_REPEAT_I_111(m, d, s) PP_REPEAT_I_110(m, d, s) s() m(110, d)
#define PP_REPEAT_I_110(m, d, s) PP_REPEAT_I_109(m, d, s) s() m(109, d)
#define PP_REPEAT_I_109(m, d, s) PP_REPEAT_I_108(m, d, s) s() m(108, d)
#define PP_REPEAT_I_108(m, d, s) PP_REPEAT_I_107(m, d, s) s() m(107, d)
#define PP_REPEAT_I_107(m, d, s) PP_REPEAT_I_106(m, d, s) s() m(106, d)
#define PP_REPEAT_I_106(m, d, s) PP_REPEAT_I_105(m, d, s) s() m(105, d)
#define PP_REPEAT_I_105(m, d, s) PP_REPEAT_I_104(m, d, s) s() m(104, d)
#define PP_REPEAT_I_104(m, d, s) PP_REPEAT_I_103(m, d, s) s() m(103, d)
#define PP_REPEAT_I_103(m, d, s) PP_REPEAT_I_102(m, d, s) s() m(102, d)
#define PP_REPEAT_I_102(m, d, s) PP_REPEAT_I_101(m, d, s) s() m(101, d)
#define PP_REPEAT_I_101(m, d, s) PP_REPEAT_I_100(m, d, s) s() m(100, d)
#define PP_REPEAT_I_100(m, d, s) PP_REPEAT_I_99(m, d, s) s() m(99, d)
#define PP_REPEAT_I_99(m, d, s) PP_REPEAT_I_98(m, d, s) s() m(98, d)
#define PP_REPEAT_I_98(m, d, s) PP_REPEAT_I_97(m, d, s) s() m(97, d)
#define PP_REPEAT_I_97(m, d, s) PP_REPEAT_I_96(m, d, s) s() m(96, d)
#define PP_REPEAT_I_96(m, d, s) PP_REPEAT_I_95(m, d, s) s() m(95, d)
#define PP_REPEAT_I_95(m, d, s) PP_REPEAT_I_94(m, d, s) s() m(94, d)
#define PP_REPEAT_I_94(m, d, s) PP_REPEAT_I_93(m, d, s) s() m(93, d)
#define PP_REPEAT_I_93(m, d, s) PP_REPEAT_I_92(m, d, s) s() m(92, d)
#define PP_REPEAT_I_92(m, d, s) PP_REPEAT_I_91(m, d, s) s() m(91, d)
#define PP_REPEAT_I_91(m, d, s) PP_REPEAT_I_90(m, d, s) s() m(90, d)
#define PP_REPEAT_I_90(m, d, s) PP_REPEAT_I_89(m, d, s) s() m(89, d)
#define PP_REPEAT_I_89(m, d, s) PP_REPEAT_I_88(m, d, s) s() m(88, d)
#define PP_REPEAT_I_88(m, d, s) PP_REPEAT_I_87(m, d, s) s() m(87, d)
#define PP_REPEAT_I_87(m, d, s) PP_REPEAT_I_86(m, d, s) s() m(86, d)
#define PP_REPEAT_I_86(m, d, s) PP_REPEAT_I_85(m, d, s) s() m(85, d)
#define PP_REPEAT_I_85(m, d, s) PP_REPEAT_I_84(m, d, s) s() m(84, d)
#define PP_REPEAT_I_84(m, d, s) PP_REPEAT_I_83(m, d, s) s() m(83, d)
#define PP_REPEAT_I_83(m, d, s) PP_REPEAT_I_82(m, d, s) s() m(82, d)
#define PP_REPEAT_I_82(m, d, s) PP_REPEAT_I_81(m, d, s) s() m(81, d)
#define PP_REPEAT_I_81(m, d, s) PP_REPEAT_I_80(m, d, s) s() m(80, d)
#define PP_REPEAT_I_80(m, d, s) PP_REPEAT_I_79(m, d, s) s() m(79, d)
#define PP_REPEAT_I_79(m, d, s) PP_REPEAT_I_78(m, d, s) s() m(78, d)
#define PP_REPEAT_I_78(m, d, s) PP_REPEAT_I_77(m, d, s) s() m(77, d)
#define PP_REPEAT_I_77(m, d, s) PP_REPEAT_I_76(m, d, s) s() m(76, d)
#define PP_REPEAT_I_76(m, d, s) PP_REPEAT_I_75(m, d, s) s() m(75, d)
#define PP_REPEAT_I_75(m, d, s) PP_REPEAT_I_74(m, d, s) s() m(74, d)
#define PP_REPEAT_I_74(m, d, s) PP_REPEAT_I_73(m, d, s) s() m(73, d)
#define PP_REPEAT_I_73(m, d, s) PP_REPEAT_I_72(m, d, s) s() m(72, d)
#define PP_REPEAT_I_72(m, d, s) PP_REPEAT_I_71(m, d, s) s() m(71, d)
#define PP_REPEAT_I_71(m, d, s) PP_REPEAT_I_70(m, d, s) s() m(70, d)
#define PP_REPEAT_I_70(m, d, s) PP_REPEAT_I_69(m, d, s) s() m(69, d)
#define PP_REPEAT_I_69(m, d, s) PP_REPEAT_I_68(m, d, s) s() m(68, d)
#define PP_REPEAT_I_68(m, d, s) PP_REPEAT_I_67(m, d, s) s() m(67, d)
#define PP_REPEAT_I_67(m, d, s) PP_REPEAT_I_66(m, d, s) s() m(66, d)
#define PP_REPEAT_I_66(m, d, s) PP_REPEAT_I_65(m, d, s) s() m(65, d)
#define PP_REPEAT_I_65(m, d, s) PP_REPEAT_I_64(m, d, s) s() m(64, d)
#define PP_REPEAT_I_64(m, d, s) PP_REPEAT_I_63(m, d, s) s() m(63, d)
#define PP_REPEAT_I_63(m, d, s) PP_REPEAT_I_62(m, d, s) s() m(62, d)
#define PP_REPEAT_I_62(m, d, s) PP_REPEAT_I_61(m, d, s) s() m(61, d)
#define PP_REPEAT_I_61(m, d, s) PP_REPEAT_I_60(m, d, s) s() m(60, d)
#define PP_REPEAT_I_60(m, d, s) PP_REPEAT_I_59(m, d, s) s() m(59, d)
#define PP_REPEAT_I_59(m, d, s) PP_REPEAT_I_58(m, d, s) s() m(58, d)
#define PP_REPEAT_I_58(m, d, s) PP_REPEAT_I_57(m, d, s) s() m(57, d)
#define PP_REPEAT_I_57(m, d, s) PP_REPEAT_I_56(m, d, s) s() m(56, d)
#define PP_REPEAT_I_56(m, d, s) PP_REPEAT_I_55(m, d, s) s() m(55, d)
#define PP_REPEAT_I_55(m, d, s) PP_REPEAT_I_54(m, d, s) s() m(54, d)
#define PP_REPEAT_I_54(m, d, s) PP_REPEAT_I_53(m, d, s) s() m(53, d)
#define PP_REPEAT_I_53(m, d, s) PP_REPEAT_I_52(m, d, s) s() m(52, d)
#define PP_REPEAT_I_52(m, d, s) PP_REPEAT_I_51(m, d, s) s() m(51, d)
#define PP_REPEAT_I_51(m, d, s) PP_REPEAT_I_50(m, d, s) s() m(50, d)
#define PP_REPEAT_I_50(m, d, s) PP_REPEAT_I_49(m, d, s) s() m(49, d)
#define PP_REPEAT_I_49(m, d, s) PP_REPEAT_I_48(m, d, s) s() m(48, d)
#define PP_REPEAT_I_48(m, d, s) PP_REPEAT_I_47(m, d, s) s() m(47, d)
#define PP_REPEAT_I_47(m, d, s) PP_REPEAT_I_46(m, d, s) s() m(46, d)
#define PP_REPEAT_I_46(m, d, s) PP_REPEAT_I_45(m, d, s) s() m(45, d)
#define PP_REPEAT_I_45(m, d, s) PP_REPEAT_I_44(m, d, s) s() m(44, d)
#define PP_REPEAT_I_44(m, d, s) PP_REPEAT_I_43(m, d, s) s() m(43, d)
#define PP_REPEAT_I_43(m, d, s) PP_REPEAT_I_42(m, d, s) s() m(42, d)
#define PP_REPEAT_I_42(m, d, s) PP_REPEAT_I_41(m, d, s) s() m(41, d)
#define PP_REPEAT_I_41(m, d, s) PP_REPEAT_I_40(m, d, s) s() m(40, d)
#define PP_REPEAT_I_40(m, d, s) PP_REPEAT_I_39(m, d, s) s() m(39, d)
#define PP_REPEAT_I_39(m, d, s) PP_REPEAT_I_38(m, d, s) s() m(38, d)
#define PP_REPEAT_I_38(m, d, s) PP_REPEAT_I_37(m, d, s) s() m(37, d)
#define PP_REPEAT_I_37(m, d, s) PP_REPEAT_I_36(m, d, s) s() m(36, d)
#define PP_REPEAT_I_36(m, d, s) PP_REPEAT_I_35(m, d, s) s() m(35, d)
#define PP_REPEAT_I_35(m, d, s) PP_REPEAT_I_34(m, d, s) s() m(34, d)
#define PP_REPEAT_I_34(m, d, s) PP_REPEAT_I_33(m, d, s) s() m(33, d)
#define PP_REPEAT_I_33(m, d, s) PP_REPEAT_I_32(m, d, s) s() m(32, d)
#define PP_REPEAT_I_32(m, d, s) PP_REPEAT_I_31(m, d, s) s() m(31, d)
#define PP_REPEAT_I_31(m, d, s) PP_REPEAT_I_30(m, d, s) s() m(30, d)
#define PP_REPEAT_I_30(m, d, s) PP_REPEAT_I_29(m, d, s) s() m(29, d)
#define PP_REPEAT_I_29(m, d, s) PP_REPEAT_I_28(m, d, s) s() m(28, d)
#define PP_REPEAT_I_28(m, d, s) PP_REPEAT_I_27(m, d, s) s() m(27, d)
#define PP_REPEAT_I_27(m, d, s) PP_REPEAT_I_26(m, d, s) s() m(26, d)
#define PP_REPEAT_I_26(m, d, s) PP_REPEAT_I_25(m, d, s) s() m(25, d)
#define PP_REPEAT_I_25(m, d, s) PP_REPEAT_I_24(m, d, s) s() m(24, d)
#define PP_REPEAT_I_24(m, d, s) PP_REPEAT_I_23(m, d, s) s() m(23, d)
#define PP_REPEAT_I_23(m, d, s) PP_REPEAT_I_22(m, d, s) s() m(22, d)
#define PP_REPEAT_I_22(m, d, s) PP_REPEAT_I_21(m, d, s) s() m(21, d)
#define PP_REPEAT_I_21(m, d, s) PP_REPEAT_I_20(m, d, s) s() m(20, d)
#define PP_REPEAT_I_20(m, d, s) PP_REPEAT_I_19(m, d, s) s() m(19, d)
#define PP_REPEAT_I_19(m, d, s) PP_REPEAT_I_18(m, d, s) s() m(18, d)
#define PP_REPEAT_I_18(m, d, s) PP_REPEAT_I_17(m, d, s) s() m(17, d)
#define PP_REPEAT_I_17(m, d, s) PP_REPEAT_I_16(m, d, s) s() m(16, d)
#define PP_REPEAT_I_16(m, d, s) PP_REPEAT_I_15(m, d, s) s() m(15, d)
#define PP_REPEAT_I_15(m, d, s) PP_REPEAT_I_14(m, d, s) s() m(14, d)
#define PP_REPEAT_I_14(m, d, s) PP_REPEAT_I_13(m, d, s) s() m(13, d)
#define PP_REPEAT_I_13(m, d, s) PP_REPEAT_I_12(m, d, s) s() m(12, d)
#define PP_REPEAT_I_12(m, d, s) PP_REPEAT_I_11(m, d, s) s() m(11, d)
#define PP_REPEAT_I_11(m, d, s) PP_REPEAT_I_10(m, d, s) s() m(10, d)
#define PP_REPEAT_I_10(m, d, s) PP_REPEAT_I_9(m, d, s) s() m(9, d)
#define PP_REPEAT_I_9(m, d, s) PP_REPEAT_I_8(m, d, s) s() m(8, d)
#define PP_REPEAT_I_8(m, d, s) PP_REPEAT_I_7(m, d, s) s() m(7, d)
#define PP_REPEAT_I_7(m, d, s) PP_REPEAT_I_6(m, d, s) s() m(6, d)
#define PP_REPEAT_I_6(m, d, s) PP_REPEAT_I_5(m, d, s) s() m(5, d)
#define PP_REPEAT_I_5(m, d, s) PP_REPEAT_I_4(m, d, s) s() m(4, d)
#define PP_REPEAT_I_4(m, d, s) PP_REPEAT_I_3(m, d, s) s() m(3, d)
#define PP_REPEAT_I_3(m, d, s) PP_REPEAT_I_2(m, d, s) s() m(2, d)
#define PP_REPEAT_I_2(m, d, s) PP_REPEAT_I_1(m, d, s) s() m(1, d)
#define PP_REPEAT_I_1(m, d, s) PP_REPEAT_I_0(m, d, s) m(0, d)
#define PP_REPEAT_I_0(m, d, s)

////////////////////////////////////////////////////////////////////////////////////////////////////
/**
 * \brief Calls \p macro on every argument. Use \p sep as separator
 * \param macro Macro to be called on every element. Has to have 2 arguments:
 *          index of current element,
 *          current element
 * \param sep Macro for separator. This macro has to have zero arguments in format #define SEP().
 *        PP_EMPTY or PP_COMMA can be used
 *
 * \note  Example:
 *          #define GEN_STR(i, data) PP_STRINGIZE(i) data
 *          #define SEP() "|"
 *          PP_FOREACH(GEN_STR, SEP, "a", "b", "c"))   =   "0a|1b|2c"
 */
#define PP_FOREACH(macro, sep, ...) \
    PP_REPEAT(PP_VARIADIC_SIZE(__VA_ARGS__), sep, PP_FOREACH_EL, (macro, __VA_ARGS__))

#define PP_FOREACH_EL(c, d) PP_FOREACH_EL_MACRO d (c, PP_FOREACH_GET(c, PP_FOREACH_EL_ARGS d))
#define PP_FOREACH_EL_MACRO(m, ...) m
#define PP_FOREACH_EL_ARGS(m, ...) __VA_ARGS__

#define PP_FOREACH_GET(c, ...) PP_VARIADIC_ELEM(c, __VA_ARGS__)

////////////////////////////////////////////////////////////////////////////////////////////////////
// macro called for each enum to generate the enum typedef.
#define CODASIP_ENUM_EL(i, e) CODASIP_ENUM_EL_I(e, ~)
#ifdef _MSC_VER
#   define CODASIP_SENUM_EL(i, tuple) PP_EXPAND(CODASIP_ENUM_EL_I tuple)
#else
#   define CODASIP_SENUM_EL(i, tuple) CODASIP_ENUM_EL_I tuple
#endif
// creates enum as comma separated enum values
#define CODASIP_ENUM_EL_I(e, s) e

// macro called for each enum to generate string
// string of enum is automatically created, everything after = is discarded (TEST = 10 => "TEST")
#define CODASIP_ENUM_STR_EL(i, e)                                \
{ ::codasip::detail::AssignmentTester PP_CAT(tester_,e);         \
  ::codasip::detail::AssignmentTester tester = PP_CAT(tester_,e);\
  if (tester.m_Assigned) currentValue = tester.m_Value;          \
  ::codasip::detail::InsertIntoEnumContainer(cont, currentValue++, PP_STRINGIZE(e)); }
// macro called for each enum to generate string, string of enum is defined by user
#ifdef _MSC_VER
#   define CODASIP_SENUM_STR_EL(i, tuple) PP_EXPAND(CODASIP_ENUM_EL_II tuple)
#else
#   define CODASIP_SENUM_STR_EL(i, tuple) CODASIP_ENUM_EL_II tuple
#endif
#define CODASIP_ENUM_EL_II(e, s) \
{ ::codasip::detail::AssignmentTester PP_CAT(tester_,e);         \
  ::codasip::detail::AssignmentTester tester = PP_CAT(tester_,e);\
  if (tester.m_Assigned) currentValue = tester.m_Value;          \
  cont.insert(::codasip::detail::EnumContainer::value_type(currentValue++, s));}

////////////////////////////////////////////////////////////////////////////////////////////////////
/**
 * \brief Generates typedef based on arguments
 */
#define CODASIP_ENUM_IMPL_ENUM(type, name, ...)   \
typedef enum                                      \
{                                                 \
    PP_FOREACH(CODASIP_##type##_EL, PP_COMMA, __VA_ARGS__)  \
} name
/**
 * \brief Generates content of function for static mapping container creation.
 */
#define CODASIP_ENUM_IMPL_CONTAINER(type, ...)              \
    static ::codasip::detail::EnumContainer cont;           \
    if (cont.empty()) {                                     \
        unsigned currentValue = 0;                          \
        PP_FOREACH(CODASIP_##type##_STR_EL, PP_EMPTY, __VA_ARGS__)    \
    }                                                       \
    return cont
/**
 * \brief Generates content of function for enum to string conversion.
 */
#define CODASIP_ENUM_IMPL_TOSTR(name, def, get_cont)                                 \
    const ::codasip::detail::EnumContainer& cont = get_cont;                          \
    ::codasip::detail::EnumContainer::const_iterator it = cont.find((unsigned)value); \
    if (it == cont.end()) {                                                           \
        it = cont.find((unsigned)def);                                                \
        CHECK_CONDITION(it != cont.end()) << "Enumeration " << #name                  \
            << " doesn't contain value " << (unsigned)value;                          \
    }                                                                                 \
    return it->second
/**
 * \brief Generates content of function for string to enum conversion.
 */
#define CODASIP_ENUM_IMPL_FROMSTR(name, def, get_cont)   \
    const ::codasip::detail::EnumContainer& cont = get_cont;                 \
    for(::codasip::detail::EnumContainer::const_iterator it = cont.begin();  \
        it!=cont.end(); ++it)                               \
    {                                                       \
        if (it->second == str) return (name)it->first;    \
    }                                                       \
    CHECK_CONDITION((unsigned)def != (unsigned)-1)          \
        << "Enumeration " << #name << " doesn't contain string value " << str; \
    return (name)def

////////////////////////////////////////////////////////////////////////////////////////////////////
/**
 * \brief Generates enum class with \p name and enumeration nameEnum.
 */
#define CODASIP_ENUM(name, ...) \
    CODASIP_ENUM_IMPL(ENUM, name, -1, __VA_ARGS__)
/**
 * \copydoc CODASIP_ENUM
 * \note Generates class for managing of enum values.
 */
#define CODASIP_ENUM_CLASS(name, ...) \
    CODASIP_ENUM_CLASS_IMPL(ENUM, name##Enum, name, -1, __VA_ARGS__)
/**
 * \brief Generates enum \p name with default value \p def.
 */
#define CODASIP_ENUM_DEFAULT(name, def, ...) \
    CODASIP_ENUM_IMPL(ENUM, name, def, __VA_ARGS__)
/**
 * \copydoc CODASIP_ENUM_DEFAULT
 * \note Generates class for managing of enum values.
 */
#define CODASIP_ENUM_CLASS_DEFAULT(name, def, ...) \
    CODASIP_ENUM_CLASS_IMPL(ENUM, name##Enum, name, def, __VA_ARGS__)
/**
 * \brief Generates enum \p name with custom mapping of strings to enums
 *        Every argument has to be in format (id, "str").
 * \note  Example:
 *            CODASIP_ENUM_STR(TestingEnum,
 *                (EnumVal1, "value 1"),
 *                (EnumVal2, "value 2"));
 */
#define CODASIP_ENUM_STR(name, ...) \
    CODASIP_ENUM_IMPL(SENUM, name, -1, __VA_ARGS__)
/**
 * \copydoc CODASIP_ENUM_STR
 * \note Generates class for managing of enum values.
 */
#define CODASIP_ENUM_CLASS_STR(name, ...) \
    CODASIP_ENUM_CLASS_IMPL(SENUM, name##Enum, name, -1, __VA_ARGS__)
/**
 * \brief  Generates enum class with \p name and enumeration nameEnum with default value \p def.
 *         Every argument has to be in format (id, "str").
 * \note   Example:
 *             CODASIP_ENUM_STR_DEFAULT(TestingEnum,
 *                 (EnumVal1, "value 1"),
 *                 (EnumVal2, "value 2"));
 */
#define CODASIP_ENUM_STR_DEFAULT(name, def, ...) \
    CODASIP_ENUM_IMPL(SENUM, name, def, __VA_ARGS__)
/**
 * \copydoc CODASIP_ENUM_STR_DEFAULT
 * \note Generates class for managing of enum values.
 */
#define CODASIP_ENUM_CLASS_STR_DEFAULT(name, def, ...) \
    CODASIP_ENUM_CLASS_IMPL(SENUM, name##Enum, name, def, __VA_ARGS__)

////////////////////////////////////////////////////////////////////////////////////////////////////
/**
 * \brief Implementation of automatic enum->string mapping
 * \param type ENUM (non-string enums) or SENUM (for each enum specialized string). Set internally.
 * \param name Name of enumeration
 * \param def  Default enum value, its string/numeric value is returned when requested
 *        sting/number is not found.
 * \param ...  Definition of enumeration. For non-string enums is list of identifiers, for
 *        string enums is list of 2-tuples (id, "str") where string "str" is mapped to enum id.
 * \note  Automatically generates:
 *          1) const std::string& <name>ToString(<name> enum)
 *             For given enum returns its string representation. If not found returns string for
 *             default enum value, if default is not set, throws an exception.
 *
 *          2) <name> <name>FromString(const std::string& s)
 *             For given string returns its enumeration. If not found returns default enum value,
 *             if default is not set, throws an exception.
 *
 *          3) enumeration <name>Count
 *             Used as sentinel in enumeration, has highest value of all enumeration values. Its
 *             string representation is used, cannot be obtained using ToString or FromString methods.
 */
#ifndef SWIG
#define CODASIP_ENUM_IMPL(type /* ENUM or SENUM */, name, def, ...) \
CODASIP_ENUM_IMPL_ENUM(type, name, __VA_ARGS__);                    \
inline const ::codasip::detail::EnumContainer& name##GetContainer() \
{                                                                   \
    CODASIP_ENUM_IMPL_CONTAINER(type, __VA_ARGS__);                 \
}                                                                   \
inline const std::string& name##ToString(name value)                \
{                                                                   \
    CODASIP_ENUM_IMPL_TOSTR(name, def, name##GetContainer());       \
}                                                                   \
inline name name##FromString(const std::string& str)                \
{                                                                   \
    CODASIP_ENUM_IMPL_FROMSTR(name, def, name##GetContainer());     \
}
#else   // SWIG
#define CODASIP_ENUM_IMPL(type /* ENUM or SENUM */, name, def, ...) \
CODASIP_ENUM_IMPL_ENUM(type, name, __VA_ARGS__);
#endif

/**
 * \brief Implementation of automatic enum->string mapping with class
 * \param type ENUM (non-string enums) or SENUM (for each enum specialized string). Set internally.
 * \param enumName Name of enumeration typedef
 * \param className Name of class that automatically converts string <-> enum
 * \param def  Default enum value, its string/numeric value is returned when requested
 *        sting/number is not found. Set to -1 if default is not set.
 * \param ...  Definition of enumeration. For non-string enums is list of identifiers, for
 *        string enums is list of 2-tuples (id, "str") where string "str" is mapped to enum id.
 * \note  Automatically generates (notation <> is replaced by arguments):
 *          1) Enumeration <enumName>
 *             Creates enumeration using variadic arguments of define.
 *
 *          2) Converter <className>
 *             Stores enumeration with basic interface for comparing and conversion to/from string.
 *             Static methods:
 *                 const std::string& ToStr(<enumName> enum)
 *                     For given enum returns its string representation. If not found returns string
 *                     for default enum value, if default is not set, throws an exception.
 *
 *                 static method <enumName> FromStr(const std::string& s)
 *                     For given string returns its enumeration. If not found returns default enum
 *                     value, if default is not set, throws an exception.
 */
#define CODASIP_ENUM_CLASS_IMPL(type, enumName, className, def, ...)  \
CODASIP_ENUM_IMPL_ENUM(type, enumName, __VA_ARGS__);            \
                                                                \
class className                                                 \
{                                                               \
public:                                                         \
    typedef ::codasip::detail::EnumContainer EnumContainer;     \
    typedef enumName EnumType;                                  \
    /**                                                         \
     * \brief Constructor                                       \
     */                                                         \
    className()                                                 \
      : m_Value((EnumType)def)                                  \
    {}                                                          \
    /**                                                         \
     * \brief Constructor                                       \
     * \param value                                             \
     */                                                         \
    className(const EnumType value)                             \
      : m_Value(value)                                          \
    {}                                                          \
    /**                                                         \
     * \brief Constructor                                       \
     */                                                         \
    className(const char* value)                                \
      : m_Value(FromStr(value))                                 \
    {}                                                          \
     /**                                                        \
      * \brief Constructor                                      \
      */                                                        \
    className(const std::string& value)                         \
      : m_Value(FromStr(value))                                 \
    {}                                                          \
    /**                                                         \
     * \brief Return enum                                       \
     */                                                         \
    EnumType Get() const                                        \
    {                                                           \
        return m_Value;                                         \
    }                                                           \
    /**                                                         \
     * \brief Convert enum to string value                      \
     */                                                         \
    const std::string& ToStr() const                            \
    {                                                           \
        return ToStr(m_Value);                                  \
    }                                                           \
    /**                                                         \
     * \brief Return true, if the value is equal                \
     */                                                         \
    bool IsEqual(const EnumType value) const                    \
    {                                                           \
        return m_Value == value;                                \
    }                                                           \
    /**                                                         \
     * \brief equal operator                                    \
     */                                                         \
    bool operator ==(const className& lhs) const                \
    {                                                           \
        return operator==(lhs.m_Value);                         \
    }                                                           \
    /**                                                         \
     * \brief not equal operator                                \
     */                                                         \
    bool operator !=(const className& lhs) const                \
    {                                                           \
        return operator!=(lhs.m_Value);                         \
    }                                                           \
    /**                                                         \
     * \brief equal operator                                    \
     */                                                         \
    bool operator ==(const EnumType lhs) const                  \
    {                                                           \
        return m_Value == lhs;                                  \
    }                                                           \
    /**                                                         \
     * \brief not equal operator                                \
     */                                                         \
    bool operator !=(const EnumType lhs) const                  \
    {                                                           \
        return m_Value != lhs;                                  \
    }                                                           \
    /**                                                         \
     * \brief Assignment operator                               \
     */                                                         \
    className& operator =(const EnumType lhs)                   \
    {                                                           \
        m_Value = lhs;                                          \
        return *this;                                           \
    }                                                           \
    /**                                                         \
     * \brief Automatic conversion into enum type               \
     */                                                         \
    operator EnumType() const { return Get(); }                 \
    /**                                                         \
     * \brief Automatic conversion into string                  \
     */                                                         \
    operator std::string() const { return ToStr(); }            \
    /**                                                         \
     * \brief Creates container enum value -> string of enum.   \
     */                                                         \
    static const EnumContainer& GetContainer()                  \
    {                                                           \
        CODASIP_ENUM_IMPL_CONTAINER(type, __VA_ARGS__);         \
    }                                                           \
    /**                                                         \
     * \brief Converts enumeration into string.                 \
     */                                                         \
    static const std::string& ToStr(EnumType value)             \
    {                                                           \
        CODASIP_ENUM_IMPL_TOSTR(enumName, def, GetContainer()); \
    }                                                           \
    /**                                                         \
     * \brief Converts string into enumeration.                 \
     */                                                         \
    static EnumType FromStr(const std::string& str)             \
    {                                                           \
        CODASIP_ENUM_IMPL_FROMSTR(enumName, def, GetContainer()); \
    }                                                           \
    /**                                                         \
     * \brief Returns true if given value is default one        \
     */                                                         \
    static bool IsDefault(const unsigned value)                 \
    {                                                           \
        if((unsigned)def == (unsigned)-1)                       \
        {   /* no default value is specified */                 \
            return false;                                       \
        }                                                       \
        return (unsigned)value == (unsigned)def;                \
    }                                                           \
private:                                                        \
    /** Stored enumeration value */                             \
    EnumType m_Value;                                           \
}

/** \} */   // end DOXYGEN group comment

#endif // _ENUM_UTILS_H_
