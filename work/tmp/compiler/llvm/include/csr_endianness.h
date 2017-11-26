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
 *  \author Zdenek Prikryl
 *  \date   Mar 07, 2016
 *  \brief
 */

#ifndef SIMULATORS2_RESOURCES_CSR_ENDIANNESS_H_
#define SIMULATORS2_RESOURCES_CSR_ENDIANNESS_H_

#include "codasiputils.h"

#include "csr_helpers.h"

namespace codasip {
namespace resources {

/**
 * \brief Swap bytes in word.
 *        It is byte conversion (not bit).
 * \tparam _WordBits Bit-Width of the word
 * \tparam _ByteBits Bit-Width of the byte
 */
template <Index _WordBits, Index _ByteBits>
class ByteSwapper
{
private:
    /// bytes per word
    static const Index BPW = _WordBits / _ByteBits;

    typedef typename TypeSelector<_WordBits, false>::type type;
    /// Template used to move one byte of memory to achieve conversion from big to little endian
    template <Index I>
    static type swap(const type data, Bool2Type<false>)
    {
        return CustomShift<(BPW - 1 - (2 * I)) * _ByteBits>::Shift(
            data & (BitMask<type>(_ByteBits) << (_ByteBits * I))) |
            // recursive call
            swap<I + 1>(data, Bool2Type<(I + 1) >= (BPW - 1)>());
    }

    /// Template used to move one byte of memory to achieve conversion from big to little endian
    /// I is last index ( I = bytes - 1 )
    template <unsigned int I>
    static type  swap(const type data, Bool2Type<true>)
    {
        return CustomShift<(BPW - 1 - (2 * I)) *_ByteBits>::Shift(
            data & (BitMask<type>(_ByteBits) << (_ByteBits * I)));
    }
public:

    /**
     * \brief Swap bytes in the data
     * \param data Data to be converted
     */
    static type swap(const type data)
    {
        return swap<0>(data, Bool2Type<(BPW == 1)>());
    }
};

/**
 * \brief Partial specialization for the case when there is only one byte.
 */
template <Index _WordBits>
class ByteSwapper<_WordBits, _WordBits>
{
public:
    typedef typename TypeSelector<_WordBits, false>::type type;
    /// \copydoc EndiannessConverter
    static type swap(const type data)
    {
        return data;
    }
};

}   // namespace resources
}   // namespace codasip

#endif // SIMULATORS2_RESOURCES_CSR_ENDIANNESS_H_
