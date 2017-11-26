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
 * @file    compiler.h
 * @brief    Header file used for global compiler specific settings
 * @author    Hons Petr
 * @date    11.7.2014
 */

#ifndef COMPILER_H_
#define COMPILER_H_

/// System and platform specific macros
#if defined(__MINGW32__) || defined(__MINGW64__)
/// MINGW on Windows
#define _MINGW
#elif defined(_MSC_VER)
/// Microsoft Visual Studio
#define _MSVC
#endif

#include <stdint.h>     // uintxxx_t
#ifdef _MSVC
#   include <stdlib.h>   // byte swaps (function _byteswap_ulong)
#   include <intrin.h>     // intrinsic function on Windows
#endif

/// MSVC does not define snprintf
/// _snprintf does not guarantee null termination, _snprintf_s needs to be used instead
#ifdef _MSVC
#   if _MSC_VER < 1900
#       ifndef snprintf
#           define snprintf(buffer, size, format, ...) \
                _snprintf_s(buffer, size, size, format, __VA_ARGS__)
#       endif

/// More secure versions
#       define printf printf_s
#       define fprintf fprintf_s

#   endif

    /// MSVC does not define popen and pclose
#   define popen _popen
#   define pclose _pclose

#   define strncasecmp _strnicmp
#   define strcasecmp _stricmp

    /// Discard attributes
#   define __attribute__(A) /* do nothing */
#endif

/// Suppress warning of unused symbol
#ifdef _MSVC
#   define NO_WARN_UNUSED
#else
#   define NO_WARN_UNUSED __attribute__((unused))
#endif

/// Macro for forcing compiler to always inline method/function
#ifdef _MSVC
#   define FORCE_INLINE inline __forceinline
#else
#   define FORCE_INLINE inline __attribute__((always_inline))
#endif

/// Marks given function to be exported from shared library. This
/// code should match code generated in \ref ForeignGenerator::GenerateExportHeader
#if !defined(CODASIP_EXPORT) && defined(_MSVC)
#    ifdef CODASIP_SHARED_LIBRARY
#        define CODASIP_EXPORT __declspec(dllexport)
#    else
#        define CODASIP_EXPORT __declspec(dllimport)
#    endif
#endif
#ifndef CODASIP_EXPORT
#    define CODASIP_EXPORT
#endif

/// Visual studio supports noexcept and constexpr since 2015 RTM
#if defined(_MSVC) && (_MSC_VER < 1900)
#   define CODASIP_NOEXCEPT
#   define CODASIP_CONSTEXPR const
#else
#   define CODASIP_NOEXCEPT noexcept
#   define CODASIP_CONSTEXPR constexpr
#endif

/// Suppress compiler warning about unused varable
template<class T> void UNUSED( const T& ) { }

/// Handle used for system resources, on Windows void* defined in windows.h
#ifndef HANDLE
#ifdef _WIN32
    typedef void* HANDLE;
#else
    typedef int HANDLE;
#endif
#endif

/// Invalid handle
#ifndef INVALID_HANDLE
// same on all systems, on windows its defined in windows.h
#define INVALID_HANDLE ((HANDLE)(-1))
#endif

/// Global functions enclosed in codasip namespace
namespace codasip {

/// Compiler specific 16bit unsigned integer byte swap.
uint16_t FORCE_INLINE bswap16(uint16_t n)
{
    return ((uint16_t)((n) << 8) | (uint16_t)((n) >> 8));
}

/// Compiler specific 32bit unsigned integer byte swap.
uint32_t FORCE_INLINE bswap32(uint32_t n)
{
#ifdef _MSVC
    return _byteswap_ulong(n);
#elif defined(__has_builtin) && defined(__builtin_bswap32)
    return  __builtin_bswap32(n);
#else
    return  ((((uint32_t)(n) & 0x000000FF) << 24) |
            (((uint32_t)(n) & 0x0000FF00) << 8)  |
            (((uint32_t)(n) >> 8) & 0x0000FF00)  |
            (((uint32_t)(n) >> 24) & 0x000000FF));
#endif
}

/// Compiler specific 64bit unsigned integer byte swap.
uint64_t FORCE_INLINE bswap64(uint64_t n)
{
#ifdef _MSVC
    return _byteswap_uint64(n);
#elif defined(__has_builtin) && defined(__builtin_bswap64)
    return  __builtin_bswap64(n);
#else
    return (((uint64_t)(n) << 56) |
            (((uint64_t)(n) << 40) & 0X00FF000000000000ULL) |
            (((uint64_t)(n) << 24) & 0X0000FF0000000000ULL) |
            (((uint64_t)(n) << 8)  & 0X000000FF00000000ULL) |
            (((uint64_t)(n) >> 8)  & 0X00000000FF000000ULL) |
            (((uint64_t)(n) >> 24) & 0X0000000000FF0000ULL) |
            (((uint64_t)(n) >> 40) & 0X000000000000FF00ULL) |
            ((uint64_t)(n)  >> 56));
#endif
}

#ifdef _MSVC
    // MSVC specific compile asserts
    // these assumptions are needed for following implementation of built-in functions
    static_assert(sizeof(unsigned long long) == 8, "");
    static_assert(sizeof(unsigned long) == 4, "");
    static_assert(sizeof(unsigned int) == 4, "");
#endif

/**
 * \{
 * \brief Number of leading 0 bits starting from LSB.
 */
int FORCE_INLINE buildin_ctzll (unsigned long long mask)
{
#ifdef _MSVC
    unsigned long w;
    #if defined(_WIN64)
        if (_BitScanForward64(&w, mask))
            return static_cast<int>(w);
    #else
        // win32 doesnt support _BitScanForward64, so we have to use checking of low and high order bits
        if (_BitScanForward(&w, static_cast<unsigned long>(mask)))
            return static_cast<int>(w);
        if (_BitScanForward(&w, static_cast<unsigned long>(mask >> 32)))
            return static_cast<int>(w + 32);
    #endif
    return 64; // undefined behaviour
#else
    return __builtin_ctzll(mask);
#endif
}

int FORCE_INLINE buildin_ctzl(unsigned long mask)
{
#ifdef _MSVC
    unsigned long w;
    if (_BitScanForward(&w, mask))
        return static_cast<int>(w);
    return 32; // undefined behaviour
#else
    return __builtin_ctzl(mask);
#endif
}

int FORCE_INLINE buildin_ctz(unsigned int mask)
{
#ifdef _MSVC
    //static compile checks
    static_assert(sizeof(mask) == 4, "");
    static_assert(sizeof(unsigned long) == 4, "");
    return buildin_ctzl(static_cast<unsigned long>(mask));
#else
    return __builtin_ctz(mask);
#endif
}
/**
 * \}
 * \{
 * \brief Number of leading 0 bits starting from MSB.
 */
int FORCE_INLINE buildin_clzll(unsigned long long mask)
{
#ifdef _MSVC
    unsigned long w;
    // compiler intrinsics only for 64bit
    #if defined(_WIN64)
        if (_BitScanReverse64(&w, mask))
            return static_cast<int>(63 - w);
    #else
        if (_BitScanReverse(&w, static_cast<unsigned long>(mask >> 32)))
            return static_cast<int>(63 - (w + 32));
        if (_BitScanReverse(&w, static_cast<unsigned long>(mask)))
            return static_cast<int>(63 - w);
    #endif
    return 64; // undefined behaviour
#else
    return __builtin_clzll(mask);
#endif
}

int FORCE_INLINE buildin_clzl(unsigned long mask)
{
#ifdef _MSVC
    unsigned long where;
    if (_BitScanReverse(&where, mask))
        return static_cast<int>(31 - where);
    return 32; // undefined behaviour
#else
    return __builtin_clzl(mask);
#endif
}

int FORCE_INLINE buildin_clz(unsigned int x)
{
#ifdef _MSVC
    return buildin_clzl(x);
#else
    return __builtin_clz(x);
#endif
}

}   // namespace codasip

#endif /* COMPILER_H_ */
