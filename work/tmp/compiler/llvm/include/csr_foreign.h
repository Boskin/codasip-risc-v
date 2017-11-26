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
 *  \date   Oct 25, 2012
 *  \brief
 */

#include "codasip_integer.h"
#include "toolstypes.h"
#include "compiler.h"
#include "csr_helpers.h"
#include "codasip_interface.h"  // ForeignPayload
#include "codasiputils.h"       // IntegerToByteArray, ByteArrayToInteger

#ifndef SIMULATORS2_RESOURCES_CSR_FOREIGN_H_
#define SIMULATORS2_RESOURCES_CSR_FOREIGN_H_
#ifdef USE_DPI

#include <svdpi.h>

namespace codasip {
namespace dpi {
namespace detail {

/**
 *  \brief  Convert source value from SystemVerilog logic vector into target
 *          type.
 *  \param  dst target to assign
 *  \param  src source value
 *  \param  bw how many bits to assign (\em src and \em dst must be big enough)
 */
template<typename T>
inline void FromSVLV( T& dst, const svLogicVecVal* src, const int bw )
{
    dst = 0;
    for ( int ii = 0; ii < bw; ++ii )
    {
        dst |= (static_cast<T>((svGetBitselLogic(src, ii) == sv_1) ? 1 : 0) << ii);
    }
}

/**
 *  \brief  Convert source value into SystemVerilog logic vector.
 *  \copydetails FromSVLV()
 */
template<typename T>
inline void ToSVLV( svLogicVecVal* dst, const T& src, const int bw )
{
    for ( int ii = 0; ii < bw; ++ii )
    {
        svPutBitselLogic(dst, ii, ((src >> ii) & 1) ? sv_1 : sv_0);
    }
}

inline void FromSVLV( uint8_t* dst, const svLogicVecVal* src, const int bw )
{
    for (int ii = 0, byte = 0; ii < bw; ++byte)
    {
        dst[byte] = 0;
        for (int jj = 0; jj < 8 && ii < bw; ++jj, ++ii)
        {
            dst[byte] |= ((svGetBitselLogic(src, ii) == sv_1) ? 1 : 0) << jj;
        }
    }
}

inline void ToSVLV( svLogicVecVal* dst, const uint8_t* src, const int bw )
{
    for (int ii = 0, byte = 0; ii < bw; ++byte)
    {
        for (int jj = 0; jj < 8 && ii < bw; ++jj, ++ii)
        {
            svPutBitselLogic(dst, ii, ((src[byte] >> jj) & 1) ? sv_1 : sv_0);
        }
    }
}

}  // namespace codasip::dpi::detail

template<typename T>
inline typename std::enable_if<!std::is_pointer<typename std::decay<T>::type >::value, void>::type
SVL2CI(T& dst, const svLogic src)
{
    dst = (src == sv_1);
}

template<typename T>
inline void SVLV2CI(T& dst, const svLogicVecVal* src, const int bw)
{
    detail::FromSVLV( dst, src, bw );
}

template<typename T>
inline typename std::enable_if<!std::is_pointer<typename std::decay<T>::type >::value, void>::type
CI2SVL(svLogic* dst, const T& src)
{
    *dst = (src == 1);
}

template<typename T>
inline void CI2SVLV(svLogicVecVal* dst, const T& src, const int bw)
{
    detail::ToSVLV( dst, src, bw );
}

inline void SVL2CI(uint8_t* dst, const svLogic src)
{
    *dst = (src == sv_1);
}

inline void CI2SVL(svLogic* dst, const uint8_t* src)
{
    *dst = (*src == 1);
}

}   // namespace codasip::dpi
}   // namespace codasip

#endif

namespace codasip {
namespace foreign {

inline void MaskToByteArray(uint8_t* dst,
    const unsigned int len,
    const unsigned int bi,
    const unsigned int bc)
{
    for (unsigned int ii = 0; ii < len; ++ii)
    {
        if (ii >= bi && ii <= (bi + bc - 1))
        {
            dst[ii] = 0xff;
        }
        else
        {
            dst[ii] = 0;
        }
    }
}

inline void ByteArrayToMask(unsigned int& bi,
    unsigned int& bc,
    const uint8_t* dst,
    const unsigned int len)
{
    bi = 0;
    for (unsigned int ii = 0; ii < len; ++ii)
    {
        if (dst[ii] == 0xff)
        {
            bi = ii;
            break;
        }
    }
    bc = 0;
    for (unsigned int ii = bi; ii < len; ++ii)
    {
        if (dst[ii] == 0xff)
        {
            ++bc;
        }
    }
}

template <class T>
void Cp2Fp(simulator::ForeignPayload& fp, const T& cp)
{
    int len = resources::BitWidthTypeSelector<typename T::data_type>::value / CHAR_BIT;

    fp.SetAddress(cp.get_address());
    fp.SetBc(cp.get_bc());
    fp.SetBi(cp.get_bi());
    fp.SetCommand(cp.get_command());
    IntegerToByteArray(fp.GetData(), len, cp.get_data());
    fp.SetResponse(cp.get_response());
    fp.SetStatus(cp.get_status());
    fp.SetDataLength(len);
}


template <class T>
void Fp2Cp(T& cp, const simulator::ForeignPayload& fp)
{
    typename T::data_type ldata;
    int len = resources::BitWidthTypeSelector<typename T::data_type>::value / CHAR_BIT;

    cp.set_address(fp.GetAddress());
    cp.set_bc(fp.GetBc());
    cp.set_bi(fp.GetBi());
    cp.set_command(static_cast<resources::Command>(fp.GetCommand()));
    ByteArrayToInteger(ldata, fp.GetData(), fp.GetDataLength());
    cp.set_data(ldata);
    cp.set_response(static_cast<resources::Response>(fp.GetResponse()));
    cp.set_status(static_cast<resources::Status>(fp.GetStatus()));
    cp.set_bi(fp.GetBi());
    cp.set_bc(fp.GetBc());
}


}   // namespace foreign
}   // namespace codasip

#endif // SIMULATORS2_RESOURCES_CSR_FOREIGN_H_
