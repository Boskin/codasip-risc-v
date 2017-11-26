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
 *  \author Zdenek Prikryl
 *  \date   Mar 15, 2016
 *  \brief  Declaration/Implementation of the class.
 */

#ifndef SIMULATORS2_RESOURCES_UNALIGNED_H_
#define SIMULATORS2_RESOURCES_UNALIGNED_H_

#include "csr_helpers.h"
#include "codasiputils.h"

namespace codasip {
namespace resources {

/**
 * \brief UnalignedGeneric access, it accepts array of data and it reads two following
 *        words.
 * \tparam _BitWidth Bit-Width of the word
 * \tparam _LAU Bit-Width of the byte
 * \tparam _Size Size of storage with unaligned access is performed
 */
template<class T, int _ByteBits, codasip_address_t _Size>
class UnalignedGeneric
{
protected:
    ///
    static const Index WORD_BITS = BitWidthTypeSelector<T>::value;
    ///
    static const Index BYTE_BITS = _ByteBits;
    ///
    static const Index BPW = WORD_BITS / BYTE_BITS;

    /// type used for word bit-width
    typedef typename TypeSelector<WORD_BITS, false>::type data_type;

    /// underling bit width
    static const Index STORAGE_BITS = BitWidthTypeSelector<data_type>::value;
    /// padding of underling type for value storing
    static const Index PADDING_BITS = STORAGE_BITS - WORD_BITS;

    static codasip_address_t get_index(const codasip_address_t addr);
    static codasip_address_t get_offset(const codasip_address_t addr);

    template <Endianness _Endianness>
    static data_type read_shift(data_type, const Index, const Index);
    template <Endianness _Endianness>
    static void write_shift(data_type&, data_type&, data_type, const Index, const Index);

public:

    template <Endianness _Endianness, class ContainerType>
    static T read(const ContainerType& src,
        const codasip_address_t addr,
        const Index bi = 0,
        const Index bc = BPW);
    
    template <Endianness _Endianness>
    static T read(const T* src,
        const codasip_address_t addr,
        const Index bi = 0,
        const Index bc = BPW);
        
    template <Endianness _Endianness, class ContainerType>
    static void write(ContainerType& dst,
        const T data,
        const codasip_address_t addr,
        const Index bi = 0,
        const Index bc = BPW);

    template <Endianness _Endianness>
    static void write(T* dst,
        const T data,
        const codasip_address_t addr,
        const Index bi = 0,
        const Index bc = BPW);
};

/**
 * \brief Used for non-native types.
 */
template<class T, int _ByteBits, codasip_address_t _Size>
class Unaligned : public UnalignedGeneric<T, _ByteBits, _Size>
{};

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, int _ByteBits, codasip_address_t _Size>
RES_INLINE codasip_address_t UnalignedGeneric<T, _ByteBits, _Size>::get_index(const codasip_address_t addr)
{
    return addr / BPW;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, int _ByteBits, codasip_address_t _Size>
RES_INLINE codasip_address_t UnalignedGeneric<T, _ByteBits, _Size>::get_offset(const codasip_address_t addr)
{
    return addr % BPW;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, int _ByteBits, codasip_address_t _Size>
template <Endianness _Endianness>
RES_INLINE typename UnalignedGeneric<T, _ByteBits, _Size>::data_type
UnalignedGeneric<T, _ByteBits, _Size>::read_shift(data_type dst, const Index bi, const Index bc)
{
    // maximum, do not do anything
    if (bc >= BPW)
    {
        return dst;
    }
    // handle byte index
    if (_Endianness == CP_LITTLE_ENDIAN)
    {
        dst >>= bi * BYTE_BITS;
    }
    else
    {
        dst >>= (BPW - bi - bc) * BYTE_BITS;
    }
    // handle byte count
    dst &= static_cast<data_type>(-1) >> (STORAGE_BITS - (bc * BYTE_BITS));
    return dst;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, int _ByteBits, codasip_address_t _Size>
template <Endianness _Endianness>
RES_INLINE void
UnalignedGeneric<T, _ByteBits, _Size>::write_shift(data_type& dst,
    data_type& mask,
    data_type src,
    const Index bi,
    const Index bc)
{
    // while word
    if (bc == BPW)
    {
        dst = src;
        mask = BitMask<data_type>(WORD_BITS);
        return;
    }

    if (_Endianness == CP_LITTLE_ENDIAN)
    {
        mask = ((BitMask<data_type>(bc * BYTE_BITS)) << (bi * BYTE_BITS));
        dst = (src << (bi * BYTE_BITS)) & mask;
    }
    else
    {
        mask = (((BitMask<data_type>(bc * BYTE_BITS)) << ((BPW - bc - bi) * BYTE_BITS)));
        dst = (src << (BPW - bc - bi) * BYTE_BITS) & mask;
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, int _ByteBits, codasip_address_t _Size>
template <Endianness _Endianness, class ContainerType>
RES_INLINE T UnalignedGeneric<T, _ByteBits, _Size>::read(const ContainerType& src,
    const codasip_address_t addr,
    const Index bi,
    const Index bc)
{
    // nothing to read
    if(!bc)
    {
        return 0;
    }

    //
    codasip_address_t offset = get_offset(addr);
    // need to address index
    codasip_address_t ind1 = get_index(addr) % _Size;
    // offset 0 -> aligned access
    if (!offset)
    {
        return read_shift<_Endianness>(src[ind1], bi, bc);
    }
    // prepare one more
    codasip_address_t ind2 = (ind1 + 1) % _Size;
    // little
    if (_Endianness == CP_LITTLE_ENDIAN)
    {
        //
        // check, that index is ok, otherwise, set to zero (like HW does
        data_type ret = static_cast<data_type>(src[ind2]) << ((BPW - offset) * BYTE_BITS);
        // finish
        ret |= (static_cast<data_type>(src[ind1]) >> ((offset) * BYTE_BITS));

        return read_shift<_Endianness>(ret, bi, bc);
    }
    // big
    data_type ret = (static_cast<data_type>(src[ind1]) << ((offset) * BYTE_BITS));
    // check, that index is ok, otherwise, set to zero (like HW does
    ret |= (static_cast<data_type>(src[ind2]) >> ((BPW - offset) * BYTE_BITS));

    return read_shift<_Endianness>(ret, bi, bc);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, int _ByteBits, codasip_address_t _Size>
template <Endianness _Endianness>
RES_INLINE T UnalignedGeneric<T, _ByteBits, _Size>::read(const T* src,
    const codasip_address_t addr,
    const Index bi,
    const Index bc)
{
    return read<_Endianness, const T*>(src, addr, bi, bc);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, int _ByteBits, codasip_address_t _Size>
template <Endianness _Endianness, class ContainerType>
RES_INLINE void UnalignedGeneric<T, _ByteBits, _Size>::write(ContainerType& dst,
    const T data,
    const codasip_address_t addr,
    const Index bi,
    const Index bc)
{
    // nothing to write
    if(!bc)
    {
        return;
    }

    // bpw == 1
    if(BPW == 1)
    {
        dst[addr % _Size] = data;
    }

    //
    codasip_address_t offset = get_offset(addr);
    // need to address index
    codasip_address_t ind1 = get_index(addr)  % _Size;;
    //
    data_type ldata, lmask;
    //
    write_shift<_Endianness>(ldata, lmask, data, bi, bc);

    // offset 0 -> aligned access
    if (!offset)
    {
        dst[ind1] &= ~lmask;
        dst[ind1] |= ldata;
        return;
    }
    // prepare one more
    codasip_address_t ind2 = (ind1 + 1) % _Size;
    // perform data modification
    data_type m1 = dst[ind1];
    data_type m2 = dst[ind2];

    if (_Endianness == CP_LITTLE_ENDIAN)
    {
        m1 &= ~(lmask << (offset * BYTE_BITS));
        m1 |= ldata << (offset * BYTE_BITS);

        m2 &= ~(lmask >> ((BPW - offset) * BYTE_BITS));
        m2 |= ldata >> ((BPW - offset) * BYTE_BITS);
    }
    else
    {
        m1 &= ~(lmask >> ((offset) * BYTE_BITS));
        m1 |= ldata >> ((offset) * BYTE_BITS);

        m2 &= ~(lmask << ((BPW - offset) * BYTE_BITS));
        m2 |= ldata << ((BPW - offset) * BYTE_BITS);
    }
    // store data back
    dst[ind1] = m1;
    dst[ind2] = m2;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, int _ByteBits, codasip_address_t _Size>
template <Endianness _Endianness>
RES_INLINE void UnalignedGeneric<T, _ByteBits, _Size>::write(T* dst,
    const T data,
    const codasip_address_t addr,
    const Index bi,
    const Index bc)
{
    write<_Endianness, T*>(dst, data, addr, bi, bc);
}

}   // namespace resources
}   // namespace codasip


#endif  // SIMULATORS2_RESOURCES_UNALIGNED_H_
