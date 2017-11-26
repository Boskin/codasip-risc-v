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
 *  \author Petr Hons
 *  \date   7. 4. 2016
 *  \brief  Declaration/Implementation of the class.
 */

#ifndef SIMULATORS2_RESOURCES_CSR_DUMPER_H_
#define SIMULATORS2_RESOURCES_CSR_DUMPER_H_

#include <vector>

#include "csr_helpers.h"
#include "csr_payload.h"

namespace codasip {
namespace simulator {
class DumpStream;
} // namespace codasip::simulator

namespace resources {

/**
 *  \addtogroup SIMULATOR
 *  \{
 *  \class  codasip::resources::DumperBase
 *  \brief  Base class for all dumpers
 *  \}
 */
template<class T>
class DumperBase : public T
{
public:
    /**
     * \copydoc Sentinel::Sentinel
     */
    DumperBase(const std::string& name, const Uid uid);
    /**
     * \brief Set output stream.
     * \param output Output stream
     */
    void set_dump_stream(simulator::DumpStream& stream);

protected:
    /// Opened Codasip file to dump
    simulator::DumpStream* m_Dump;
};

/**
 *  \addtogroup SIMULATOR
 *  \{
 *  \class  codasip::resources::Dumper
 *  \brief  Dumps changes of single addressable resource (port, signal, register) into the file
 *  \}
 */
template<class T>
class DumperSingle : public DumperBase<T>
{
    typedef DumperBase<T> Base;
public:
    /**
     * \copydoc DumperBase::DumperBase
     */
    DumperSingle(const std::string& name, const Uid uid);
    /**
     *  \brief  Detect change of resources
     */
    void write(const typename T::data_type data, const codasip_address_t addr = 0);
    /**
     *  \brief  Detect changes when simulator is reseted after the run
     */
    void reset();
    /**
     *  \brief  Dump changes into the file
     *  \param  clockCycle Current clock cycle counter
     *  \{
     */
    void dump(const Counter clockCycle);
    /**
     *  \}
     */
private:
    /// True when value was written
    bool m_Changed;
};

/**
 *  \addtogroup SIMULATOR
 *  \{
 *  \class  codasip::resources::Dumper
 *  \brief  Dumps changes of addressable resource (register file, interface) into the file
 *  \}
 */
template<class T>
class DumperAddress : public DumperBase<T>
{
    typedef DumperBase<T> Base;
    typedef Payload<typename T::data_type> DumpPayload;
public:
    /**
     * \copydoc DumperBase::DumperBase
     */
    DumperAddress(const std::string& name, const Uid uid);
    /**
     *  \brief  Detect change of resources
     *  \{
     */
    void write(const typename T::data_type data, const codasip_address_t addr = 0);
    void request_d(DumpPayload& p);
    void blocking_d(DumpPayload& p);
    void finish_d(DumpPayload& p);
    /**
     *  \}
     */
    /**
     *  \brief  Dump changes into the file
     *  \param  clockCycle Current clock cycle counter
     *  \{
     */
    void dump(const Counter clockCycle);
    /**
     *  \}
     */
private:
    /// Vector of payloads that were written in current clock cycle
    std::vector<DumpPayload> m_Changes;
    /// Stored payload from request, used in finish to determine sbi,sbc and address
    DumpPayload m_RequestPayload;
};

/**
 *  \addtogroup SIMULATOR
 *  \{
 *  \class  codasip::resources::Dumper
 *  \brief  Dumps changes of resource into the file. Selects correct implementation based
 *          on the resource type
 *  \}
 */
template<class T,
    class Base = typename std::conditional<T::SIZE == 1, DumperSingle<T>, DumperAddress<T> >::type>
using Dumper = Base;

////////////////////////////////////////////////////////////////////////////////////////////////////
//                                         DumperSingle                                           //
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline DumperSingle<T>::DumperSingle(const std::string& name, const Uid uid)
  : Base(name, uid),
    m_Changed(false)
{}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline void DumperSingle<T>::reset()
{
    // only in non-addressable items
    if (this->m_Dump)
    {
        m_Changed = true;
    }
    T::reset();
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
RES_INLINE void DumperSingle<T>::write(const typename T::data_type data,
    const codasip_address_t addr)
{
    if (this->m_Dump)
    {
        m_Changed = true;
    }
    T::write(data, addr);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline void DumperSingle<T>::dump(const Counter clockCycle)
{
    if (!this->m_Dump || !m_Changed)
    {
        return;
    }

    this->m_Dump->DumpClockCycle(clockCycle);
    this->m_Dump->Dump(this->get_signature(), T::dread());
    m_Changed = false;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
//                                         DumperAddress                                          //
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline DumperAddress<T>::DumperAddress(const std::string& name, const Uid uid)
  : Base(name, uid)
{}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline void DumperAddress<T>::dump(const Counter clockCycle)
{
    if (!this->m_Dump || m_Changes.empty())
    {
        return;
    }

    this->m_Dump->DumpClockCycle(clockCycle);

    for (const auto& payload : m_Changes)
    {
        this->m_Dump->DumpAddr(this->get_signature(),
            payload.get_data(),
            payload.get_address() + payload.get_bi(),
            T::BYTE_BITS * payload.get_bc());
    }
    m_Changes.clear();
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
RES_INLINE void DumperAddress<T>::write(const typename T::data_type data,
    const codasip_address_t addr)
{
    if (this->m_Dump)
    {
        m_Changes.emplace_back();
        auto& payload = m_Changes.back();
        payload.set_data(data);
        payload.set_address(addr);
        payload.set_bc(T::BPW);
    }

    T::write(data, addr);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
RES_INLINE void DumperAddress<T>::request_d(DumpPayload& p)
{
    T::request_d(p);
    if (this->m_Dump && p.get_command() == CP_CMD_WRITE && p.get_status() == CP_ST_READY)
    {
        // have to store sbi, sbc and address because in finish payload it might be changed
        // e.g. bus will translate the address
        m_RequestPayload = p;
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
RES_INLINE void DumperAddress<T>::blocking_d(DumpPayload& p)
{
    T::blocking_d(p);
    if (this->m_Dump && p.get_command() == CP_CMD_WRITE)
    {
        m_Changes.emplace_back(p);
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
RES_INLINE void DumperAddress<T>::finish_d(DumpPayload& p)
{
    T::finish_d(p);
    if (this->m_Dump && p.get_command() == CP_CMD_WRITE && p.get_response() == CP_RS_ACK)
    {
        // store address, sbi and sbc from request
        m_Changes.push_back(m_RequestPayload);
        // set data
        m_Changes.back().set_data(p.get_data());
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////
//                                          DumperBase                                            //
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline DumperBase<T>::DumperBase(const std::string& name, const Uid uid)
  : T(name, uid),
    m_Dump(nullptr)
{}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline void DumperBase<T>::set_dump_stream(simulator::DumpStream& output)
{
    m_Dump = &output;
}


}   // namespace resources
}   // namespace codasip

#endif  // SIMULATORS2_RESOURCES_CSR_DUMPER_H_
