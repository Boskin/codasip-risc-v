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

#ifndef SIMULATORS2_RESOURCES_BYTE_ENABLE_H_
#define SIMULATORS2_RESOURCES_BYTE_ENABLE_H_

#include "codasiputils.h"

#include "csr_helpers.h"

namespace codasip {
namespace resources {

/**
 * \brief Return or write_shift a part of the word according to the byte enable information
 * \tparam _WordBits Bit-Width of the word
 * \tparam _ByteBits Bit-Width of the byte
 */
template <Index _WordBits, Index _ByteBits>
class ByteEnable {
    public:
        /// Storage type of single memory cell
        typedef typename TypeSelector<_WordBits, false>::type data_type;
        /// Bytes per word
        static const Index BPW = _WordBits / _ByteBits;
    private:
        /**
         * \brief Check valid combination of byte count and byte index
         * \param bi Byte index
         * \param bc Byte count
         * \return true is combination is valid
         */
        static bool check(const Index bi, const Index bc);
    public:
        /**
         * \brief Shift data from bus systemc
         * \param data Original data that's gonna change
         * \param bi Byte index
         * \param bc Byte count
         */
        static data_type& read_shift(data_type& data, const Index bi, const Index bc);
        /**
         * \brief Shift data to bus based system
         * \param data Original data that's gonna change
         * \param bi Byte index
         * \param bc Byte count
         */
        static data_type& write_shift(data_type& data, const Index bi, const Index bc);
        /**
         * \brief Create byte enable signal
         * \param be Output byte enable signal
         * \param bi Byte index
         * \param bc Byte count
         */
        static data_type& build_be(data_type& be, const Index bi, const Index bc);
};

////////////////////////////////////////////////////////////////////////////////////////////////////
template <Index _WordBits, Index _ByteBits>
RES_INLINE bool ByteEnable<_WordBits, _ByteBits>::check(const Index bi, const Index bc)
{
    if (bc == 0 ||
        (bc + bi > BPW))
    {
        return false;
    }
    return true;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <Index _WordBits, Index _ByteBits>
RES_INLINE typename ByteEnable<_WordBits, _ByteBits>::data_type&
ByteEnable<_WordBits, _ByteBits>::read_shift(data_type& data, const Index bi, const Index bc)
{
    if (!check(bi, bc))
    {
        data = 0;
        return data;
    }

    data = ((data >> (bi * _ByteBits)) & BitMask<data_type> (bc * _ByteBits));
    return data;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <Index _WordBits, Index _ByteBits>
RES_INLINE typename ByteEnable<_WordBits, _ByteBits>::data_type&
ByteEnable<_WordBits, _ByteBits>::write_shift(data_type& data, const Index bi, const Index bc)
{
    if (!check(bi, bc))
    {
        data = 0;
        return data;
    }

    data = ((data & BitMask<data_type> (bc * _ByteBits)) << (bi * _ByteBits));
    return data;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <Index _WordBits, Index _ByteBits>
RES_INLINE typename ByteEnable<_WordBits, _ByteBits>::data_type&
ByteEnable<_WordBits, _ByteBits>::build_be(data_type& be, const Index bi, const Index bc)
{
    static data_type wordMask = BitMask<data_type>(BPW);

    if (!check(bi, bc))
    {
        be = 0;
        return be;
    }

    be = (BitMask<data_type>(bc) << bi) & wordMask;
    return be;
}

/**
 * \brief Partial specialization for the case when there is only one byte in word
 */
template <Index _WordBits>
class ByteEnable<_WordBits, _WordBits>
{
private:
    /// \copydoc ByteEnable::check
    static bool check(const Index bi, const Index bc);
public:
    /// Storage type of single memory cell
    typedef typename TypeSelector<_WordBits, false>::type data_type;
    /// \copydoc ByteEnable::read_shift
    static data_type& read_shift(data_type& data, const Index bi, const Index bc);
    /// \copydoc ByteEnable::write_shift
    static data_type& write_shift(data_type& data, const Index bi, const Index bc);
    /// \copydoc ByteEnable::build_be
    static data_type& build_be(data_type& be, const Index bi, const Index bc);
};

////////////////////////////////////////////////////////////////////////////////////////////////////
template<Index _WordBits>
RES_INLINE bool ByteEnable<_WordBits, _WordBits>::check(const Index bi, const Index bc)
{
    return bc == 1 && bi == 0;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<Index _WordBits>
RES_INLINE typename ByteEnable<_WordBits, _WordBits>::data_type&
ByteEnable<_WordBits, _WordBits>::read_shift(data_type& data, const Index bi, const Index bc)
{
    if (!check(bi, bc))
    {
        data = 0;
        return data;
    }

    data = data & BitMask<data_type> (bc * _WordBits);
    return data;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<Index _WordBits>
RES_INLINE typename ByteEnable<_WordBits, _WordBits>::data_type&
ByteEnable<_WordBits, _WordBits>::write_shift(data_type& data, const Index bi, const Index bc)
{
    if (!check(bi, bc))
    {
        data = 0;
        return data;
    }

    data = data & BitMask<data_type> (bc * _WordBits);
    return data;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<Index _WordBits>
RES_INLINE typename ByteEnable<_WordBits, _WordBits>::data_type&
ByteEnable<_WordBits, _WordBits>::build_be(data_type& be, const Index bi, const Index bc)
{
    if (!check(bi, bc))
    {
        be = 0;
        return be;
    }
    be = 1;
    return be;
}


}   // namespace resources
}   // namespace codasip


#endif  // SIMULATORS2_RESOURCES_BYTE_ENABLE_H_
