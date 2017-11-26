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
 *  \author Pavel Richtarik
 *  \date   Mar 11, 2016
 *  \brief  Implementation of the class codasip::resources::MemoryStorage.
 */

#ifndef SIMULATORS2_RESOURCES_CSR_MEMORY_STORAGE_H_
#define SIMULATORS2_RESOURCES_CSR_MEMORY_STORAGE_H_

#include "csr_sentinel.h"   // Logging
#include "csr_unaligned_native.h"
#include "csr_payload_sentinel.h"
#include "csr_storage_sentinel.h"
#include "csr_memory.h"
#include "dump_stream.h"
#include <unordered_map>
#include <type_traits>

namespace codasip {
namespace resources {

namespace detail {

/**
 * \brief Sparse storage container (map)
 */
template <class K, class V>
class SparseStorage;

}   // namespace codasip::resources::detail

/**
 *  \addtogroup SIMULATOR
 *  \{
 *  \class  MemoryStorage
 *  \brief  Class holding data for large memories using a hash map.
 *  \}
 */
template<class T,
    Index _ByteBits = BitWidthTypeSelector<T>::value,
    Index _AddrBits = 32,
    Endianness _Endianness = CP_LITTLE_ENDIAN,
    codasip_address_t _Size = 0x100000,
    bool _IsUnaligned = false>
class MemoryStorage : public Sentinel
{
public:
    typedef T data_type;

    /// \copydoc PayloadSentinel<T, _ByteBits, _AddrBits>::ADDR_BITS
    static const Index ADDR_BITS = PayloadSentinel<T, _ByteBits, _AddrBits, _Endianness>::ADDR_BITS;
    /// \copydoc PayloadSentinel<T, _ByteBits, _AddrBits>::WORD_BITS
    static const Index WORD_BITS = PayloadSentinel<T, _ByteBits, _AddrBits, _Endianness>::WORD_BITS;
    /// \copydoc PayloadSentinel<T, _ByteBits, _AddrBits>::BYTE_BITS
    static const Index BYTE_BITS = PayloadSentinel<T, _ByteBits, _AddrBits, _Endianness>::BYTE_BITS;
    /// \copydoc PayloadSentinel<T, _ByteBits, _AddrBits>::BPW
    static const Index BPW = PayloadSentinel<T, _ByteBits, _AddrBits, _Endianness>::BPW;
    /// \copydoc PayloadSentinel<T, _ByteBits, _AddrBits>::ENDIANNESS
    static const Endianness ENDIANNESS = _Endianness;
    /// \copydoc PayloadSentinel<T, _ByteBits, _AddrBits>::SIZE
    static const codasip_address_t SIZE = _Size;

    /// Maximum size for a plain array memory
    static const codasip_address_t MAX_ARRAY_SIZE = 256 * 1024 * 1024;
    static const bool IS_PLAIN_ARRAY = _Size <= MAX_ARRAY_SIZE;

    /// Container type
    typedef typename std::conditional<IS_PLAIN_ARRAY,
        T*, detail::SparseStorage<codasip_address_t, T>>::type DataType;

    /**
     * \copydoc Sentinel::Sentinel
     */
    MemoryStorage(const std::string& name, const Uid uid);
    /**
     * \brief Destructor
     */
    ~MemoryStorage();

    /**
     * \{
     * \brief Data access
     */
    template<class _Pt>
    void blocking(Payload<_Pt>& p);
    template<class _Pt>
    void request(Payload<_Pt>& p);
    template<class _Pt>
    void finish(Payload<_Pt>& p);
    /** \} */

    /**
     * \brief Check address including bi, bc and unaligned access
     */
    template<class _Pt>
    void check_address(Payload<_Pt>&) const;
    /**
     * \brief Dump memory to the stream
     */
    void dump(simulator::DumpStream& stream);

private:
    template<class _Pt>
    void read(Payload<_Pt>&) const;
    template<class _Pt>
    void write(Payload<_Pt>&);

    void log_oor(codasip_address_t addr) const;
    void log_unaligned(codasip_address_t addr) const;
    void log_bi_bc(codasip_address_t addr, Index bi, Index bc) const;

    template <class Dt>
    typename std::enable_if<std::is_pointer<Dt>::value>::type Allocate();
    template <class Dt>
    typename std::enable_if<std::is_pointer<Dt>::value>::type Free();
    template <class Dt>
    typename std::enable_if<!std::is_pointer<Dt>::value>::type Allocate();
    template <class Dt>
    typename std::enable_if<!std::is_pointer<Dt>::value>::type Free();

    /// data itself
    DataType m_Data;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T, Index _ByteBits, Index _AddrBits, Endianness _Endianness, codasip_address_t _Size,
    bool _IsUnaligned>
inline MemoryStorage<T, _ByteBits, _AddrBits, _Endianness, _Size, _IsUnaligned>::
MemoryStorage(const std::string& name, const Uid uid)
  : Sentinel(name, uid)
{
    Allocate<DataType>();
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T, Index _ByteBits, Index _AddrBits, Endianness _Endianness, codasip_address_t _Size,
    bool _IsUnaligned>
inline MemoryStorage<T, _ByteBits, _AddrBits, _Endianness, _Size, _IsUnaligned>::~MemoryStorage()
{
    Free<DataType>();
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T, Index _ByteBits, Index _AddrBits, Endianness _Endianness, codasip_address_t _Size,
    bool _IsUnaligned>
template<class _Pt>
RES_INLINE void
MemoryStorage<T, _ByteBits, _AddrBits, _Endianness, _Size, _IsUnaligned>::blocking(Payload<_Pt>& p)
{
    switch(p.get_command())
    {
        case CP_CMD_READ:
        case CP_CMD_DREAD:
            read(p);
            break;
        case CP_CMD_LOAD:
        case CP_CMD_WRITE:
        case CP_CMD_DWRITE:
            write(p);
            break;
        default:
            break;
    }
    // end it immediately on error
    if (p.get_response() != CP_RS_ACK)
    {
        throw exceptions::BasicError(
            "Aborted simulation, fatal error when accessing "
                "'" + this->get_signature() + "'");
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T, Index _ByteBits, Index _AddrBits, Endianness _Endianness, codasip_address_t _Size,
    bool _IsUnaligned>
template<class _Pt>
RES_INLINE void
MemoryStorage<T, _ByteBits, _AddrBits, _Endianness, _Size, _IsUnaligned>::request(Payload<_Pt>& p)
{
    switch(p.get_command())
    {
        case CP_CMD_NONE:
            return;
        default:
            check_address(p);
            return;
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T, Index _ByteBits, Index _AddrBits, Endianness _Endianness, codasip_address_t _Size,
    bool _IsUnaligned>
template<class _Pt>
RES_INLINE void
MemoryStorage<T, _ByteBits, _AddrBits, _Endianness, _Size, _IsUnaligned>::finish(Payload<_Pt>& p)
{
    switch(p.get_command())
    {
        case CP_CMD_READ:
            read(p);
            break;
        case CP_CMD_WRITE:
            write(p);
            break;
        default:
            p.set_response(CP_RS_IDLE);
            break;
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T, Index _ByteBits, Index _AddrBits, Endianness _Endianness, codasip_address_t _Size,
    bool _IsUnaligned>
template<class _Pt>
RES_INLINE void
MemoryStorage<T, _ByteBits, _AddrBits, _Endianness, _Size, _IsUnaligned>::read(Payload<_Pt>& p) const
{
    check_address(p);
    if(p.get_response() == CP_RS_ACK)
    {
        p.set_data(Unaligned<T, _ByteBits, _Size>::
            template read<_Endianness>(m_Data,
                StorageSentinel<T, _Size>::get_address(p.get_address()),
                p.get_bi(),
                p.get_bc()));
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T, Index _ByteBits, Index _AddrBits, Endianness _Endianness, codasip_address_t _Size,
    bool _IsUnaligned>
template<class _Pt>
RES_INLINE void MemoryStorage<T, _ByteBits, _AddrBits, _Endianness, _Size, _IsUnaligned>::write(
    Payload<_Pt>& p)
{
    check_address(p);
    if(p.get_response() == CP_RS_ACK)
    {
        Unaligned<T, _ByteBits, _Size>::
            template write<_Endianness>(m_Data,
                p.get_data(),
                StorageSentinel<T, _Size>::get_address(p.get_address()),
                p.get_bi(),
                p.get_bc());
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T, Index _ByteBits, Index _AddrBits, Endianness _Endianness, codasip_address_t _Size,
    bool _IsUnaligned>
template<class _Pt>
RES_INLINE void
MemoryStorage<T, _ByteBits, _AddrBits, _Endianness, _Size, _IsUnaligned>::check_address(
    Payload<_Pt>& p) const
{
    // no unaligned check for DREAD, DWRIE & LOAD
    const bool skipUnalignedCheck = p.get_command() == CP_CMD_DREAD ||
        p.get_command() == CP_CMD_DWRITE ||
        p.get_command() == CP_CMD_LOAD;

    if (!skipUnalignedCheck && !_IsUnaligned && (p.get_address() % BPW))
    {
        p.set_response(CP_RS_UNALIGNED);
        log_unaligned(p.get_address());
    }
    else if (p.get_address() >= _Size)
    {
        p.set_response(CP_RS_OOR);
        log_oor(p.get_address());
    }
    else if (p.get_bi() + p.get_bc() > BPW)
    {
        p.set_response(CP_RS_ERROR);
        log_bi_bc(p.get_address(), p.get_bi(), p.get_bc());
    }
    else
    {
        p.set_response(CP_RS_ACK);
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T, Index _ByteBits, Index _AddrBits, Endianness _Endianness, codasip_address_t _Size,
    bool _IsUnaligned>
inline void
MemoryStorage<T, _ByteBits, _AddrBits, _Endianness, _Size, _IsUnaligned>::log_oor(
    codasip_address_t addr) const
{
    RES_LOG(LOG_TYPE_ERROR, 0) << "'" << this->get_signature() << "': Address '0x" << std::hex
        << addr << "' is out-of-range, Max address is '0x" << (_Size - 1) << "'.";
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T, Index _ByteBits, Index _AddrBits, Endianness _Endianness, codasip_address_t _Size,
    bool _IsUnaligned>
inline void
MemoryStorage<T, _ByteBits, _AddrBits, _Endianness, _Size, _IsUnaligned>::log_unaligned(
    codasip_address_t addr) const
{
    RES_LOG(LOG_TYPE_ERROR, 0) << "'" << this->get_signature() << "': Address '0x" << std::hex
        << addr << "' is unaligned and memory does not support such an access.";
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T, Index _ByteBits, Index _AddrBits, Endianness _Endianness, codasip_address_t _Size,
    bool _IsUnaligned>
inline void
MemoryStorage<T, _ByteBits, _AddrBits, _Endianness, _Size, _IsUnaligned>::log_bi_bc(
    codasip_address_t addr, Index bi, Index bc) const
{
    RES_LOG(LOG_TYPE_ERROR, 0) << "'" << this->get_signature() << "': Address '0x" << std::hex
        << addr << std::dec << "': unsupported combination of byte index (" << bi << ") and "
        << " byte count (" << bc << ").";
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T, Index _ByteBits, Index _AddrBits, Endianness _Endianness, codasip_address_t _Size,
    bool _IsUnaligned>
inline void
MemoryStorage<T, _ByteBits, _AddrBits, _Endianness, _Size, _IsUnaligned>::dump(
    simulator::DumpStream& stream)
{
    for (codasip_address_t i = 0; i < _Size; ++i)
    {
        if (m_Data[i])
        {
            stream.DumpAddr(this->get_signature(), m_Data[i], i*BPW, WORD_BITS);
        }
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T, Index _ByteBits, Index _AddrBits, Endianness _Endianness, codasip_address_t _Size,
    bool _IsUnaligned>
template <class Dt>
inline typename std::enable_if<std::is_pointer<Dt>::value>::type
MemoryStorage<T, _ByteBits, _AddrBits, _Endianness, _Size, _IsUnaligned>::Allocate()
{
    m_Data = new T [_Size];
    if (std::is_arithmetic<data_type>::value)
    {
        ::memset(m_Data, 0, sizeof(T) * _Size);
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T, Index _ByteBits, Index _AddrBits, Endianness _Endianness, codasip_address_t _Size,
    bool _IsUnaligned>
template <class Dt>
inline typename std::enable_if<std::is_pointer<Dt>::value>::type
MemoryStorage<T, _ByteBits, _AddrBits, _Endianness, _Size, _IsUnaligned>::Free()
{
    delete[] m_Data;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T, Index _ByteBits, Index _AddrBits, Endianness _Endianness, codasip_address_t _Size,
    bool _IsUnaligned>
template <class Dt>
inline typename std::enable_if<!std::is_pointer<Dt>::value>::type
MemoryStorage<T, _ByteBits, _AddrBits, _Endianness, _Size, _IsUnaligned>::Allocate()
{}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T, Index _ByteBits, Index _AddrBits, Endianness _Endianness, codasip_address_t _Size,
    bool _IsUnaligned>
template <class Dt>
inline typename std::enable_if<!std::is_pointer<Dt>::value>::type
MemoryStorage<T, _ByteBits, _AddrBits, _Endianness, _Size, _IsUnaligned>::Free()
{}


namespace detail {

/**
 *  \addtogroup SIMULATOR
 *  \{
 *  \class  SparseStorage
 *  \brief  Sparse storage container. Needs to be derived from std::unordered_map to provide 
 *          operator [] const.
 *  \}
 */
template <class K, class T>
class SparseStorage : public std::unordered_map<K, T>
{
public:
    typedef K key_type;
    typedef T data_type;

    const data_type& operator[](const key_type& key) const
    {
        static const data_type defaultValue = data_type();
        auto it = this->find(key);
        return it != this->end() ? it->second : defaultValue;
    }

    data_type& operator[](const key_type& key)
    {
        return std::unordered_map<key_type, data_type>::operator[](key);
    }
};

}   // namespace codasip::resources::detail
}   // namespace codasip::resources
}   // namespace codasip


#endif  // SIMULATORS2_RESOURCES_CSR_MEMORY_STORAGE_H_
