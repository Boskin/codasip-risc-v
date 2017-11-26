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
 *  \author Zdenek Prikryl, Petr Hons
 *  \date   Oct 25, 2012
 *  \brief
 */

#ifndef _HELPERS_H_
#define _HELPERS_H_

#include "codasip_integer.h"
#include "toolstypes.h"
#include "compiler.h"

namespace codasip {
namespace resources {

// turn off force inlining for optimization level 0. It is needed for big cores on Windows
// so it will even be compilable
#if defined(CODASIP_OPTIMIZATION) && CODASIP_OPTIMIZATION == 0
#define RES_INLINE inline
#else
#define RES_INLINE FORCE_INLINE
#endif

/**
 * \brief Obtain needed bit-width to store a particular value
 * \tparam Value Value for which we want to get bit-width
 */
template<codasip_address_t VALUE>
struct BitWidthSelector
{
    ///
    enum { value = 1 + BitWidthSelector<(VALUE >> 1)>::value };
};
template<> struct BitWidthSelector<0>
{
    enum { value = 1 };
};
template<> struct BitWidthSelector<1>
{
    enum { value = 1 };
};

/**
 * \brief Obtain info about a value whether it is a power of two or now
 * \tparam VALUE alue for which we want to get info about power
 */
template<codasip_address_t VALUE>
struct IsPowerOf2Selector
{
    enum {value = (VALUE >= 1) & !(VALUE & (VALUE - 1))};
};

/// Uid type
typedef uint16_t Uid;
/// Counter type
typedef uint64_t Counter;
/// Intex for bi, bc
typedef unsigned Index;

typedef enum : int
{
    CP_CMD_UNKNOWN = -1,

    /// blocking read
    CP_CMD_NONE = 0,
    /// read
    CP_CMD_READ = 1,
    /// blocking write
    CP_CMD_WRITE = 2,
    /// invalidate
    CP_CMD_INVALIDATE = 4,
    /// invalidate all
    CP_CMD_INVALIDATE_ALL = 5,
    /// flush data in cache
    CP_CMD_FLUSH = 6,
    /// flush all
    CP_CMD_FLUSH_ALL = 7,

    // just simulation commands
    /// blocking dread
    CP_CMD_LOAD = 100,
    /// blocking dread
    CP_CMD_DREAD = 101,
    /// blocking dwrite
    CP_CMD_DWRITE = 102
} Command;


// When change something, the codal_constants.h must be changed also
/// return codes
typedef enum : int
{
    CP_RS_IDLE = 0,
    /// transfer ended ok
    CP_RS_ACK = 1,
    /// the slave does not perform any transfer, or there is transfer running
    CP_RS_WAIT = 2,
    /// an unknown error occurred
    CP_RS_ERROR = 3,
    /// unaligned access, but slave do not support it
    CP_RS_UNALIGNED = 4,
    /// access out of range of the slave
    CP_RS_OOR = 5
    // 6 and 7 is reserved
} Response;

typedef enum : int
{
    /// slave default state
    CP_ST_BUSY = 0,
    /// slave is ready
    CP_ST_READY = 1,
    // 2 is reserved
    /// slave is in error state
    CP_ST_ERROR = 3
} Status;

/// Endian types
typedef enum
{
    /// Storage is handled as big endian
    CP_BIG_ENDIAN = 0,
    /// Storage is handled as little endian
    CP_LITTLE_ENDIAN = 1
} Endianness;

template<class T, typename U = typename std::decay<T>::type>
struct BitWidthTypeSelector
{
    // assuming codasip type
    enum { value = U::BIT_WIDTH };
};

#define BIT_WIDTH_TYPE_SPECIALIZATION(_Type) \
    template<typename T> struct BitWidthTypeSelector<T, _Type> \
    { \
        enum { value = sizeof(_Type) * CHAR_BIT }; \
    }; \

BIT_WIDTH_TYPE_SPECIALIZATION(bool)
BIT_WIDTH_TYPE_SPECIALIZATION(char)
BIT_WIDTH_TYPE_SPECIALIZATION(signed char)
BIT_WIDTH_TYPE_SPECIALIZATION(short)
BIT_WIDTH_TYPE_SPECIALIZATION(int)
BIT_WIDTH_TYPE_SPECIALIZATION(long int)
BIT_WIDTH_TYPE_SPECIALIZATION(long long int)
BIT_WIDTH_TYPE_SPECIALIZATION(unsigned char)
BIT_WIDTH_TYPE_SPECIALIZATION(unsigned short)
BIT_WIDTH_TYPE_SPECIALIZATION(unsigned int)
BIT_WIDTH_TYPE_SPECIALIZATION(unsigned long int)
BIT_WIDTH_TYPE_SPECIALIZATION(unsigned long long int)

#undef BIT_WIDTH_TYPE_SPECIALIZATION

template<class T>
RES_INLINE codasip_address_t GetAlignedAddress(const codasip_address_t addr)
{
    if (T::BPW == 1)
    {
        return addr;
    }
    return addr / T::BPW;
}

/**
 * Type trait that converts value to type
 */
template<bool _B> struct Bool2Type { };

/**
 * Function to return storage type of n BITS
 */
template<int _BitWidth, bool _IsSigned>
struct TypeSelector {

    typedef
        typename std::conditional<_IsSigned == false,
            // unsigned types, use bit approximation, the resource will truncate
            // an unneeded part
            typename std::conditional<_BitWidth <= sizeof(unsigned char) * CHAR_BIT,
                unsigned char,
            typename std::conditional<_BitWidth <= sizeof(unsigned short) * CHAR_BIT,
                unsigned short,
            typename std::conditional<_BitWidth <= sizeof(unsigned int) * CHAR_BIT,
                unsigned int,
            typename std::conditional<_BitWidth <= sizeof(unsigned long int) * CHAR_BIT,
                unsigned long int,
            typename std::conditional<_BitWidth <= sizeof(unsigned long long int) * CHAR_BIT,
                unsigned long long int,
                codasip::Integer<_BitWidth, false>
            >::type >::type >::type >::type >::type,
            // signed types, the bit-width must be precise
            typename std::conditional<_BitWidth == sizeof(char) * CHAR_BIT,
                char,
            typename std::conditional<_BitWidth == sizeof(short) * CHAR_BIT,
                short,
            typename std::conditional<_BitWidth == sizeof(int) * CHAR_BIT,
                int,
            typename std::conditional<_BitWidth == sizeof(long int) * CHAR_BIT,
                long,
            typename std::conditional<_BitWidth == sizeof(long long int) * CHAR_BIT,
                long long,
                codasip::Integer<_BitWidth, true>
            >::type >::type >::type >::type >::type
        >::type type;
};

/**
 * \brief Template shift
 * \param _Shift    Number of shift, if positive, left shift (<<) will be used, otherwise right shift (>>) will be used
 * \usage
 *      custom_shift<2>::shift(4);  //Result: 16
 *      custom_shift<-2>::shift(4); //Result: 1
 */
template<int _Shift>
struct CustomShift {
    /// Function that calls left or right shift according to template parameter _Shift
    template<typename _Type>
    static _Type Shift (const _Type value) {
        return Shift(value, Bool2Type<_Shift>=0>());
    }

    /// Function for left shift
    template<typename _Type>
    static _Type Shift (const _Type value, const Bool2Type<true>) {
        return value << _Shift;
    }

    /// Function for left right
    template<typename _Type>
    static _Type Shift (const _Type value, const Bool2Type<false>) {
        return value >> -_Shift;
    }
};

template<Index _BW>
RES_INLINE void CopyInteger( uint32_t* dst, const Integer<_BW, false>& src )
{
    enum
    {
        NATIVE_BIT_WIDTH = std::numeric_limits<uint32_t>::digits,
        SIZE_IN_BYTES = sizeof(uint32_t) * ((_BW + NATIVE_BIT_WIDTH) / NATIVE_BIT_WIDTH)
    };
    std::memcpy( dst, src.get_data(), SIZE_IN_BYTES );
}

template<Index _BW>
RES_INLINE void CopyInteger( Integer<_BW, false>& dst, const uint32_t* src )
{
    enum
    {
        NATIVE_BIT_WIDTH = std::numeric_limits<uint32_t>::digits,
        SIZE_IN_BYTES = sizeof(uint32_t) * ((_BW + NATIVE_BIT_WIDTH) / NATIVE_BIT_WIDTH)
    };
    std::memcpy( dst.get_data(), src, SIZE_IN_BYTES );
    dst.bit_correction();
}

/**
 * \brief Wrapper for correct handling pragma simulator. It allows also nested functions etc.
 */
class BlockPragmaSimulator
{
public:
    /**
     * \brief Increase counter
     * \param checker Reference to the checker
     */
    BlockPragmaSimulator(Index& checker)
      : m_Checker(checker)
    {
        ++m_Checker;
    }
    /**
     * \brief Decrease counter
     */
    ~BlockPragmaSimulator()
    {
        --m_Checker;
    }
private:
    /// reference to the pointer
    Index& m_Checker;
};


}   // namespace resources
}   // namespace codasip

#endif // _HELPERS_H_
