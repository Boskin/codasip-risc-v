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
 *  \date   Feb 25, 2016
 *  \brief  Declaration/Implementation of the class.
 */

#ifndef SIMULATORS2_RESOURCES_CSR_PAYLOAD_SENTINEL_H_
#define SIMULATORS2_RESOURCES_CSR_PAYLOAD_SENTINEL_H_

#include "csr_payload.h"
#include "csr_sentinel.h"

#include <climits>

namespace codasip {
namespace resources {

/**
 *  \addtogroup SIMULATOR
 *  \{
 *  \class  codasip::resources::PayloadSentinel
 *  \brief  Basic storage for a payload
 *  \}
 */
template<class T,
    Index _ByteBits = BitWidthTypeSelector<T>::value,
    Index _AddrBits = 32,
    Endianness _Endianness = CP_LITTLE_ENDIAN>
class PayloadSentinel : public Sentinel
{
public:
    /// public type
    typedef T data_type;

    static const Index ADDR_BITS = _AddrBits;
    static const Index WORD_BITS = BitWidthTypeSelector<T>::value;
    static const Index BYTE_BITS = _ByteBits;
    static const Index BPW = WORD_BITS / BYTE_BITS;
    static const Endianness ENDIANNESS = _Endianness;
    static const codasip_address_t SIZE = (_AddrBits == sizeof(codasip_address_t) * CHAR_BIT
        ? codasip_address_t(-1)
        : (codasip_address_t(1) << _AddrBits));

    /**
     * \copydoc Sentinel::Sentinel
     */
    PayloadSentinel(const std::string& name, const Uid uid);

    void blocking(Payload<T>& p);
    void request(Payload<T>& p);
    void finish(Payload<T>& p);

    /**
     * \{
     * \brief Do nothing
     */
    void clock_cycle() {}
    void reset() {}
    void stall() {}
    void gated() {}
    /** \} */
    /** \} */
    /**
     * \{
     * \brief Callback when action is done
     */
    void blocking_d(Payload<T>&) {}
    void request_d(Payload<T>&) {}
    void finish_d(Payload<T>&) {}
    /** \} */

private:
    void fix_address(Payload<T>&);
};

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, Index _ByteBits, Index _AddrBits, Endianness _Endianness>
inline PayloadSentinel<T, _ByteBits, _AddrBits, _Endianness>::PayloadSentinel(const std::string& name,
    const Uid uid)
  : Sentinel(name, uid)
{}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, Index _ByteBits, Index _AddrBits, Endianness _Endianness>
RES_INLINE void PayloadSentinel<T, _ByteBits, _AddrBits, _Endianness>::blocking(Payload<T>& p)
{
    fix_address(p);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, Index _ByteBits, Index _AddrBits, Endianness _Endianness>
RES_INLINE void PayloadSentinel<T, _ByteBits, _AddrBits, _Endianness>::request(Payload<T>& p)
{
    fix_address(p);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, Index _ByteBits, Index _AddrBits, Endianness _Endianness>
RES_INLINE void PayloadSentinel<T, _ByteBits, _AddrBits, _Endianness>::finish(Payload<T>& p)
{
    fix_address(p);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, Index _ByteBits, Index _AddrBits, Endianness _Endianness>
RES_INLINE void PayloadSentinel<T, _ByteBits, _AddrBits, _Endianness>::fix_address(Payload<T>& p)
{
    p.set_address((p.get_address() << (sizeof(codasip_address_t) * CHAR_BIT - ADDR_BITS)) >>
        (sizeof(codasip_address_t) * CHAR_BIT - ADDR_BITS));
}

}   // namespace resources
}   // namespace codasip


#endif  // SIMULATORS2_RESOURCES_CSR_PAYLOAD_SENTINEL_H_
