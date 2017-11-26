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
 *  \date   Feb 23, 2016
 *  \brief  Declaration/Implementation of the class.
 */

#ifndef SIMULATORS2_RESOURCES_CSR_RW_PROFILER_H_
#define SIMULATORS2_RESOURCES_CSR_RW_PROFILER_H_

#include "csr_hashmap.h"
#include "csr_helpers.h"
#include "csr_payload.h"
#include "csr_storage_sentinel.h"

#include "toolstypes.h"


#include <type_traits>

namespace codasip {
namespace resources {

template<class T>
class PortBase;

template<class T>
class Signal;

template<class T, typename = void>
class RwProfilerBase;

/**
 * \brief Generic case - SIZE > 1 (map is needed)
 */
template<class T>
class RwProfilerBase<T, typename std::enable_if<T::SIZE != 1>::type> : public T
{
public:
    /// Counters of the read/write accesses
    typedef typename HashMapSelector<T::ADDR_BITS, Counter>::type Counters;

    /**
     * \copydoc Sentinel::Sentinel
     */
    RwProfilerBase(const std::string& name, const Uid uid);
    /**
     * \brief Reset counters
     */
    void reset();
    /**
     * \brief Universal function for getting statistics
     */
    Counter stat(const profiler::AccessType at) const;
    Counter stat(const profiler::AccessType at, const codasip_address_t addr) const;
    /**
     * \brief Return raw data, usefull for profiler
     */
    typename Counters::iterator get_counter(const profiler::AccessType at) const;
protected:

    void check_read(const codasip_address_t addr = 0) const;
    void inc_read(const codasip_address_t addr = 0) const;
    void inc_write(const codasip_address_t addr = 0) const;

    /// Counters of the read accesses
    mutable Counters m_Read;
    /// Counters of the write accesses
    mutable Counters m_Write;
private:

    void log_uninitialized(const codasip_address_t addr) const;
};

/**
 * \brief Specialization for SIZE == 1 (no map)
 */
template<class T>
class RwProfilerBase<T, typename std::enable_if<T::SIZE == 1>::type> : public T
{
public:
    /// Counters of the read/write accesses
    typedef typename HashMapSelector<T::ADDR_BITS, Counter>::type Counters;

    /**
     * \copydoc Sentinel::Sentinel
     */
    RwProfilerBase(const std::string& name, const Uid uid);
    /**
     * \brief Reset counters
     */
    void reset();
    /**
     * \brief Universal function for getting statistics
     */
    Counter stat(const profiler::AccessType at, const codasip_address_t addr = 0) const;
    /**
     * \brief Return raw data, usefull for profiler
     */
    typename Counters::iterator get_counter(const profiler::AccessType at) const;
protected:

    void check_read(const codasip_address_t addr = 0) const;
    void inc_read(const codasip_address_t addr = 0) const;
    void inc_write(const codasip_address_t addr = 0) const;

    /// Counters of the read accesses
    mutable Counter m_Read;
    /// Counters of the write accesses
    mutable Counter m_Write;
    /// Counters - [0] is filled with the requested counter and iterator is returned when
    /// get_counter is called
    mutable Counters m_Counters;

private:
    void log_uninitialized() const;
};

/**
 *  \addtogroup SIMULATOR
 *  \{
 *  \class  ReadWriteProfiler
 *  \brief  Profiler that counts read/write accesses
 *  \}
 */
template<class T>
class RwProfiler : public RwProfilerBase<T>
{
public:
    /// Counters of the read/write accesses
    typedef typename HashMapSelector<T::ADDR_BITS, Counter>::type Counters;

    /**
     * \copydoc Sentinel::Sentinel
     */
    RwProfiler(const std::string& name, const Uid uid);
    /**
     * \copydoc VariableStorage::read
     */
    typename T::data_type read(const codasip_address_t addr = 0) const;
    /**
     * \copydoc VariableStorage::write
     */
    void write(const typename T::data_type data, const codasip_address_t addr = 0);
    /**
     * \brief Return number of reads
     */
    Counter get_read() const;
    Counter get_read(const codasip_address_t addr) const;
    /**
     * \brief Return number of writes
     */
    Counter get_write() const;
    Counter get_write(const codasip_address_t addr) const;
    /**
     * \copydoc PayloadSentinel::blocking
     */
    void blocking(Payload<typename T::data_type>& p);
    /**
     * \copydoc PayloadSentinel::finish
     */
    void request(Payload<typename T::data_type>& p);
    /**
     * \brief Enables or disables read checking mechanism
     */
    void set_check_read(const bool check);
    /**
     * \brief If set, then the write is added when clock cycle is performed
     */
    void set_dff_mode(const bool dffMode);
    /**
     * \copydoc DffStorage::stall
     */
    void stall();
    /**
     * \copydoc DffStorage::gated
     */
    void gated();
    /**
     * \copydoc DffStorage::clock_cycle
     */
    void clock_cycle();
    /**
     * \copydoc DffStorage::reset
     */
    void reset();
private:
    /// Container for write addresses
    typedef std::vector<codasip_address_t> Addresses;

    void handle_payload(Payload<typename T::data_type>&);

    /// If true, the read are checed as well
    bool m_CheckRead;
    /// If true, the write is handed on clock_cycle
    bool m_DffMode;
    /// If true, the write is commited on clock_cycle
    bool m_Commit;
    /// Addresses stored for clock_cycle
    Addresses m_Addresses;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
//                                    Generic case - SIZE > 1                                     //
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline RwProfilerBase<T, typename std::enable_if<T::SIZE != 1>::type>::
RwProfilerBase(const std::string& name, const Uid uid)
  : T(name, uid)
{}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline void RwProfilerBase<T, typename std::enable_if<T::SIZE != 1>::type>::reset()
{
    m_Read.Reset();
    m_Write.Reset();
    T::reset();
}

///////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
RES_INLINE void RwProfilerBase<T, typename std::enable_if<T::SIZE != 1>::type>::
check_read(const codasip_address_t addr) const
{
    if (m_Write[addr] == 0)
    {
        log_uninitialized(addr);
    }
}

///////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
RES_INLINE void RwProfilerBase<T, typename std::enable_if<T::SIZE != 1>::type>::
inc_read(const codasip_address_t addr) const
{
    ++m_Read[addr];
}

///////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
RES_INLINE void RwProfilerBase<T, typename std::enable_if<T::SIZE != 1>::type>::
inc_write(const codasip_address_t addr) const
{
    ++m_Write[addr];
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline Counter RwProfilerBase<T, typename std::enable_if<T::SIZE != 1>::type>::
stat(const profiler::AccessType at) const
{
    Counter ret = 0, val;
    codasip_address_t addr;

    switch (at)
    {
        case profiler::ACCESS_READ:
        {
            typename Counters::iterator it = m_Read.Iterator();
            while(it.Next(addr, val))
            {
                ret += val;
            }
            return ret;
        }
        case profiler::ACCESS_WRITE:
        {
            typename Counters::iterator it = m_Write.Iterator();
            while(it.Next(addr, val))
            {
                ret += val;
            }
            return ret;
        }
        default:
            break;
    }
    return 0;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline Counter RwProfilerBase<T, typename std::enable_if<T::SIZE != 1>::type>::
stat(const profiler::AccessType at,
    const codasip_address_t addr) const
{
    codasip_address_t laddr =
        GetAlignedAddress<T>(StorageSentinel<typename T::data_type, T::SIZE>::get_address(addr));

    switch (at)
    {
        case profiler::ACCESS_READ:
            return m_Read[laddr];
        case profiler::ACCESS_WRITE:
            return m_Write[laddr];
        default:
            break;
    }
    return 0;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline typename RwProfilerBase<T, typename std::enable_if<T::SIZE != 1>::type>::Counters::iterator
RwProfilerBase<T, typename std::enable_if<T::SIZE != 1>::type>::
get_counter(const profiler::AccessType at) const
{
    switch (at)
    {
        case profiler::ACCESS_READ:
            return m_Read.Iterator();
        case profiler::ACCESS_WRITE:
            return m_Write.Iterator();
        default:
            break;
    }
    // silent compilers
    static Counters c;
    return c.Iterator();
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline void RwProfilerBase<T, typename std::enable_if<T::SIZE != 1>::type>::
log_uninitialized(const codasip_address_t addr) const
{
    std::stringstream index;
    if (T::SIZE > 1)
    {
        index << "[" << addr << "]";
    }
    RES_LOG(LOG_TYPE_WARNING, 0) << "using uninitialized resource: '"
        << this->get_signature() << index.str() << "'" << std::endl;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
//                                  Specialization - SIZE == 1 (no map)                           //
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline RwProfilerBase<T, typename std::enable_if<T::SIZE == 1>::type>::
RwProfilerBase(const std::string& name, const Uid uid)
  : T(name, uid),
    m_Read(0),
    m_Write(0)
{}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline void RwProfilerBase<T, typename std::enable_if<T::SIZE == 1>::type>::reset()
{
    m_Read = 0;
    m_Write = 0;
    T::reset();
}

///////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
RES_INLINE void RwProfilerBase<T, typename std::enable_if<T::SIZE == 1>::type>::
check_read(const codasip_address_t) const
{
    if (m_Write == 0)
    {
        log_uninitialized();
    }
}

///////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
RES_INLINE void RwProfilerBase<T, typename std::enable_if<T::SIZE == 1>::type>::
inc_read(const codasip_address_t) const
{
    ++m_Read;
}

///////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
RES_INLINE void RwProfilerBase<T, typename std::enable_if<T::SIZE == 1>::type>::
inc_write(const codasip_address_t) const
{
    ++m_Write;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline Counter RwProfilerBase<T, typename std::enable_if<T::SIZE == 1>::type>::
stat(const profiler::AccessType at, const codasip_address_t) const
{
    switch (at)
    {
        case profiler::ACCESS_READ:
            return m_Read;
        case profiler::ACCESS_WRITE:
            return m_Write;
        default:
            break;
    }
    return 0;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline typename RwProfilerBase<T, typename std::enable_if<T::SIZE == 1>::type>::Counters::iterator
RwProfilerBase<T, typename std::enable_if<T::SIZE == 1>::type>::
get_counter(const profiler::AccessType at) const
{
    switch (at)
    {
        case profiler::ACCESS_READ:
            m_Counters[0] = m_Read;
            break;
        case profiler::ACCESS_WRITE:
            m_Counters[0] = m_Write;
            break;
        default:
            break;
    }
    return m_Counters.Iterator();
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline void RwProfilerBase<T, typename std::enable_if<T::SIZE == 1>::type>::
log_uninitialized() const
{
    RES_LOG(LOG_TYPE_WARNING, 0) << "using uninitialized resource: '"
        << this->get_signature()  << "'" << std::endl;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
//                                        Common implementation                                   //
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline RwProfiler<T>::RwProfiler(const std::string& name, const Uid uid)
  : RwProfilerBase<T>(name, uid),
    m_CheckRead(false),
    m_DffMode(false),
    m_Commit(true)
{}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
RES_INLINE typename T::data_type RwProfiler<T>::read(const codasip_address_t addr) const
{
    codasip_address_t laddr =
        GetAlignedAddress<T>(StorageSentinel<typename T::data_type, T::SIZE>::get_address(addr));

    if(m_CheckRead)
    {
        this->check_read(laddr);
    }
    this->inc_read(laddr);
    return T::read(addr);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
RES_INLINE void RwProfiler<T>::write(const typename T::data_type data,
    const codasip_address_t addr)
{
    codasip_address_t laddr =
        GetAlignedAddress<T>(StorageSentinel<typename T::data_type, T::SIZE>::get_address(addr));

    if (m_DffMode)
    {
        m_Addresses.push_back(laddr);
    }
    else
    {
        this->inc_write(laddr);
    }
    T::write(data, addr);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
RES_INLINE void RwProfiler<T>::stall()
{
    m_Commit = false;
    T::stall();
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
RES_INLINE void RwProfiler<T>::gated()
{
    m_Commit = false;
    T::gated();
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
RES_INLINE void RwProfiler<T>::clock_cycle()
{
    if (m_DffMode)
    {
        if (m_Commit)
        {
            if (m_Addresses.size())
            {
                if (T::SIZE == 1)
                {
                    this->inc_write();
                }
                else
                {
                    for (size_t ii = 0; ii < m_Addresses.size(); ++ii)
                    {
                        this->inc_write(m_Addresses.at(ii));
                    }
                }
            }
        }
        m_Commit = true;
        m_Addresses.clear();
    }
    T::clock_cycle();
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
RES_INLINE void RwProfiler<T>::reset()
{
    if (m_DffMode)
    {
        m_Addresses.clear();
    }
    RwProfilerBase<T>::reset();
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline Counter RwProfiler<T>::get_read() const
{
    return this->stat(profiler::ACCESS_READ);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline Counter RwProfiler<T>::get_read(const codasip_address_t addr) const
{
    return this->stat(profiler::ACCESS_READ, addr);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline Counter RwProfiler<T>::get_write() const
{
    return this->stat(profiler::ACCESS_WRITE);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline Counter RwProfiler<T>::get_write(const codasip_address_t addr) const
{
    return this->stat(profiler::ACCESS_WRITE, addr);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
RES_INLINE void RwProfiler<T>::blocking(Payload<typename T::data_type>& p)
{
    T::blocking(p);
    handle_payload(p);
}

///////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
RES_INLINE void RwProfiler<T>::request(Payload<typename T::data_type>& p)
{
    T::request(p);
    handle_payload(p);
}

///////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
RES_INLINE void RwProfiler<T>::handle_payload(Payload<typename T::data_type>& p)
{
    codasip_address_t laddr =
        GetAlignedAddress<T>(StorageSentinel<typename T::data_type, T::SIZE>::get_address(p.get_address()));

    switch(p.get_command())
    {
        case CP_CMD_WRITE:
            this->inc_write(laddr);
            break;
        case CP_CMD_READ:
            if(m_CheckRead)
            {
                this->check_read(laddr);
            }
            this->inc_read(laddr);
            break;
        default:
            break;
    }
}

///////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline void RwProfiler<T>::set_check_read(const bool check)
{
    m_CheckRead = check;
}

///////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline void RwProfiler<T>::set_dff_mode(const bool dffMode)
{
    m_DffMode = dffMode;
}

}   // namespace resources
}   // namespace codasip


#endif  // SIMULATORS2_RESOURCES_CSR_RW_PROFILER_H_
