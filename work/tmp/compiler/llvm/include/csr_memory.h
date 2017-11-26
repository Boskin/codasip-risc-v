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
 *  \date   Mar 8, 2016
 *  \brief  Declaration/Implementation of the class.
 */

#ifndef SIMULATORS2_RESOURCES_CSR_MEMORY_H_
#define SIMULATORS2_RESOURCES_CSR_MEMORY_H_

#include "csr_helpers.h"
#include "simulator_resources.h"

//#define MEMORY_INLINE inline
#define MEMORY_INLINE FORCE_INLINE

namespace codasip {
namespace simulator {
class DumpStream;
}
namespace resources {

namespace csr_memory {
    template<class M, class T>
    class DefaultInterf
    {
    public:
        /// read latency low
        static const Index LATENCY_READ_SIZE = 1;
        /// write latency low
        static const Index LATENCY_WRITE_SIZE = 1;
        /// is an interface readable
        static const Index IS_READABLE = true;
        /// is an interface writable
        static const Index IS_WRITABLE = false;
        /// Return read latency
        static Index GetLatencyRead(const Index)
        {
            return 1;
        }
        /// Return write latency
        static Index GetLatencyWrite(const Index)
        {
            return 1;
        }
    };
}

/**
 *  \addtogroup SIMULATOR
 *  \{
 *  \class  Memory
 *  \brief  Memory that can be placed on a platform
 *  \}
 */
template<class MemoryCore>
class Memory : public MemoryCore, public simulator::MemoryInfo
{
public:
    typedef typename MemoryCore::StorageType::data_type data_type;

    /**
     * \copydoc Sentinel::Sentinel
     */
    Memory(const std::string& name, const Uid uid);

    /**
     * \brief Reset memory (reset request logic)
     */
    void reset();
    /**
     * \brief Move one clock cycle further
     */
    void clock_cycle();
    /**
     * \{
     * \brief Direct memory interface for IA mode
     */
    data_type read(const codasip_address_t addr,
        const Index bi = 0,
        const Index bc = MemoryCore::StorageType::BPW);
    void write(const data_type data,
        const codasip_address_t addr,
        const Index bi = 0,
        const Index bc = MemoryCore::StorageType::BPW);
    data_type dread(const codasip_address_t addr,
        const Index bi = 0,
        const Index bc = MemoryCore::StorageType::BPW);
    void dwrite(const data_type data,
        const codasip_address_t addr,
        const Index bi = 0,
        const Index bc = MemoryCore::StorageType::BPW);
    void invalidate(const codasip_address_t addr);
    void invalidate_all(const codasip_address_t addr);
    void flush(const codasip_address_t addr);
    void flush_all(const codasip_address_t addr);
    /**
     * \} \{
     * \brief Interfaces callbacks
     */
    template <class T>
    void blocking_cb(Payload<T>& p, const Uid);
    template <class T>
    void request_cb(Payload<T>& p, const Uid);
    template <class T>
    void finish_cb(Payload<T>& p, const Uid);
    /** \} */

    /**
     * \brief Check access (unaligned, bi+bc, address range)
     * \param p Payload
     */
    template<class _Pt>
    void check_address(Payload<_Pt>& p) const;
    /**
     *  \{
     *  \brief Sentinel methods
     */
    void set_log(simulator::Log& log);
    const std::string& get_signature() const;
    Uid get_uid() const;
    /**
     *  \}
     *  \copydoc  MemoryStorage::dump
     */
    void dump(simulator::DumpStream& stream);

    /// \copydoc ResourceInfo::GetUid
    Uid GetUid() const override;
    /// \copydoc ResourceInfo::GetName
    const std::string& GetName() const override;
    /// \copydoc ResourceInfo::GetBitWidth
    unsigned GetBitWidth() const override;
    /// \copydoc AddressableInfo::GetLAU
    unsigned GetLAU() const override;
    /// \copydoc AddressableInfo::GetAddrBitWidth
    unsigned GetAddrBitWidth() const override;
    /// \copydoc AddressableInfo::IsBig
    bool IsBig() const override;
    /// \copydoc MemoryInfo::GetSize
    simulator::Address GetSize() const override;

private:
    /// main storage
    typename MemoryCore::StorageType m_Storage;
    /// temporal payload used for a direct memory access
    Payload<typename Memory<MemoryCore>::data_type> m_Payload;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class MemoryCore>
inline Memory<MemoryCore>::Memory(const std::string& name, const Uid uid)
  : MemoryCore(),
    m_Storage(name, uid)
{}

////////////////////////////////////////////////////////////////////////////////
template <class MemoryCore>
inline void Memory<MemoryCore>::reset()
{
    MemoryCore::Reset();
}

////////////////////////////////////////////////////////////////////////////////
template <class MemoryCore>
MEMORY_INLINE void Memory<MemoryCore>::clock_cycle()
{
    MemoryCore::ClockCycle();
}

////////////////////////////////////////////////////////////////////////////////
template <class MemoryCore>
MEMORY_INLINE typename Memory<MemoryCore>::data_type
Memory<MemoryCore>::read(const codasip_address_t addr,
    const Index bi,
    const Index bc)
{
    m_Payload.reset();

    m_Payload.set_command(CP_CMD_READ);
    m_Payload.set_address(addr);
    m_Payload.set_bi(bi);
    m_Payload.set_bc(bc);

    m_Storage.blocking(m_Payload);

    return m_Payload.get_data();
}

////////////////////////////////////////////////////////////////////////////////
template <class MemoryCore>
MEMORY_INLINE void Memory<MemoryCore>::write(const data_type data,
    const codasip_address_t addr,
    const Index bi,
    const Index bc)
{
    m_Payload.reset();

    m_Payload.set_command(CP_CMD_WRITE);
    m_Payload.set_address(addr);
    m_Payload.set_bi(bi);
    m_Payload.set_bc(bc);
    m_Payload.set_data(data);

    m_Storage.blocking(m_Payload);
}

////////////////////////////////////////////////////////////////////////////////
template <class MemoryCore>
MEMORY_INLINE typename Memory<MemoryCore>::data_type
Memory<MemoryCore>::dread(const codasip_address_t addr,
    const Index bi,
    const Index bc)
{
    m_Payload.reset();

    m_Payload.set_command(CP_CMD_DREAD);
    m_Payload.set_address(addr);
    m_Payload.set_bi(bi);
    m_Payload.set_bc(bc);

    m_Storage.blocking(m_Payload);

    return m_Payload.get_data();
}

////////////////////////////////////////////////////////////////////////////////
template <class MemoryCore>
MEMORY_INLINE void Memory<MemoryCore>::dwrite(const data_type data,
    const codasip_address_t addr,
    const Index bi,
    const Index bc)
{
    m_Payload.reset();

    m_Payload.set_command(CP_CMD_DWRITE);
    m_Payload.set_address(addr);
    m_Payload.set_bi(bi);
    m_Payload.set_bc(bc);
    m_Payload.set_data(data);

    m_Storage.blocking(m_Payload);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class MemoryCore>
MEMORY_INLINE void Memory<MemoryCore>::invalidate(const codasip_address_t addr)
{
    m_Payload.reset();
    m_Payload.set_command(CP_CMD_INVALIDATE);
    m_Payload.set_address(addr);
    m_Storage.blocking(m_Payload);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class MemoryCore>
MEMORY_INLINE void Memory<MemoryCore>::invalidate_all(const codasip_address_t addr)
{
    m_Payload.reset();
    m_Payload.set_command(CP_CMD_INVALIDATE_ALL);
    m_Payload.set_address(addr);
    m_Storage.blocking(m_Payload);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class MemoryCore>
MEMORY_INLINE void Memory<MemoryCore>::flush(const codasip_address_t addr)
{
    m_Payload.reset();
    m_Payload.set_command(CP_CMD_FLUSH);
    m_Payload.set_address(addr);
    m_Storage.blocking(m_Payload);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class MemoryCore>
MEMORY_INLINE void Memory<MemoryCore>::flush_all(const codasip_address_t addr)
{
    m_Payload.reset();
    m_Payload.set_command(CP_CMD_FLUSH_ALL);
    m_Payload.set_address(addr);
    m_Storage.blocking(m_Payload);
}

////////////////////////////////////////////////////////////////////////////////
template <class MemoryCore>
template <class T>
MEMORY_INLINE void Memory<MemoryCore>::blocking_cb(Payload<T>& p, const Uid)
{
    m_Storage.blocking(p);
}

////////////////////////////////////////////////////////////////////////////////
template <class MemoryCore>
template <class T>
MEMORY_INLINE void Memory<MemoryCore>::request_cb(Payload<T>& p, const Uid)
{
    m_Storage.request(p);
}

////////////////////////////////////////////////////////////////////////////////
template <class MemoryCore>
template <class T>
MEMORY_INLINE void Memory<MemoryCore>::finish_cb(Payload<T>& p, const Uid)
{
    m_Storage.finish(p);
}

////////////////////////////////////////////////////////////////////////////////
template <class MemoryCore>
template<class _Pt>
MEMORY_INLINE void Memory<MemoryCore>::check_address(Payload<_Pt>& p) const
{
    m_Storage.check_address(p);
}

////////////////////////////////////////////////////////////////////////////////
template <class MemoryCore>
inline void Memory<MemoryCore>::set_log(simulator::Log& log)
{
    m_Storage.set_log(log);
}

////////////////////////////////////////////////////////////////////////////////
template <class MemoryCore>
inline const std::string& Memory<MemoryCore>::get_signature() const
{
    return m_Storage.get_signature();
}

////////////////////////////////////////////////////////////////////////////////
template <class MemoryCore>
inline Uid Memory<MemoryCore>::get_uid() const
{
    return m_Storage.get_uid();
}

////////////////////////////////////////////////////////////////////////////////
template <class MemoryCore>
inline void Memory<MemoryCore>::dump(simulator::DumpStream& stream)
{
    m_Storage.dump(stream);
}

////////////////////////////////////////////////////////////////////////////////
template <class MemoryCore>
inline Uid Memory<MemoryCore>::GetUid() const
{
    return m_Storage.get_uid();
}

////////////////////////////////////////////////////////////////////////////////
template <class MemoryCore>
inline const std::string& Memory<MemoryCore>::GetName() const
{
    return m_Storage.get_name();
}

////////////////////////////////////////////////////////////////////////////////
template <class MemoryCore>
inline unsigned Memory<MemoryCore>::GetBitWidth() const
{
    return MemoryCore::StorageType::WORD_BITS;
}

////////////////////////////////////////////////////////////////////////////////
template <class MemoryCore>
inline unsigned Memory<MemoryCore>::GetLAU() const
{
    return MemoryCore::StorageType::BYTE_BITS;
}

////////////////////////////////////////////////////////////////////////////////
template <class MemoryCore>
inline unsigned Memory<MemoryCore>::GetAddrBitWidth() const
{
    return MemoryCore::StorageType::ADDR_BITS;
}

////////////////////////////////////////////////////////////////////////////////
template <class MemoryCore>
inline bool Memory<MemoryCore>::IsBig() const
{
    return MemoryCore::StorageType::ENDIANNESS == CP_BIG_ENDIAN;
}

////////////////////////////////////////////////////////////////////////////////
template <class MemoryCore>
inline simulator::Address Memory<MemoryCore>::GetSize() const
{
    return MemoryCore::StorageType::SIZE;
}


}   // namespace resources
}   // namespace codasip

#endif  // SIMULATORS2_RESOURCES_CSR_MEMORY_H_
