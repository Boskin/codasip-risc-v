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
 *  \date   Mar 2, 2016
 *  \brief  Declaration/Implementation of the class.
 */

#ifndef SIMULATORS2_RESOURCES_CSR_WATCHPOINT_DETECTOR_H_
#define SIMULATORS2_RESOURCES_CSR_WATCHPOINT_DETECTOR_H_

#include "csr_helpers.h"
#include "csr_payload.h"

#include "codasip_integer.h"
#include "codasip_interface.h"
#include "watchpoints.h"

#include <algorithm>
#include <vector>
#include <map>
#include <climits>

namespace codasip {
namespace resources {

/**
 *  \addtogroup SIMULATOR
 *  \{
 *  \class  WatchpointDetector
 *  \brief  Class that is able to detect a watchpoints on a defined interfaces
 *  \}
 */
template <class T>
class WatchpointDetector : public T
{
public:
    /**
     * \copydoc Sentinel::Sentinel
     */
    WatchpointDetector(const std::string& name, const Uid uid);
    /**
     * \brief Set watchpoint listener
     * \param listener Listener
     */
    void set_listener(simulator::WatchpointListener& listener);
    /**
     * \brief Enable/disable watchpoint
     * \param info Description of watchpoint
     * \param offset If current detector watches over address space interface with address range,
     *        substract the offset from address to be watched.
     *        WP at 0xff with offset 0xf will watch at 0xf0 but will back report that 0xff was hit
     * \return Success of enabling/disabling data watchpoint
     */
    bool set_watchpoint(const simulator::WatchpointInfo& info, const codasip_address_t offset = 0);

    void blocking(Payload<typename T::data_type>& p);
    void request(Payload<typename T::data_type>& p);
    void finish(Payload<typename T::data_type>& p);

private:
    /// Description of single address watchpoint
    typedef struct
    {
        /// Type of access to watch
        simulator::WatchpointInfo::AccessType m_Access;
        /// Resource name used for registration, needed when watchpoint was set on address space
        simulator::Path m_Resource;
        /// Offset used to set the watchpoint. Will be subtracted from hit address
        codasip_address_t m_Offset;
    } DataWatchpoint;

    /// Description of single address watchpoint
    typedef struct AddressWatchpoint : public DataWatchpoint
    {
        /// Lowest address of the range to watch
        codasip_address_t m_AddressLow;
        /// Higherst address of the range to watch
        codasip_address_t m_AddressHigh;
    } AddressWatchpoint;

    typedef std::vector<AddressWatchpoint> AddressWps;
    typedef std::map< codasip::MaxInt, DataWatchpoint> DataWps;

    void address_watchpoint(simulator::WatchpointInfo::AccessType,
        const codasip_address_t,
        const typename T::data_type);
    void data_watchpoint(simulator::WatchpointInfo::AccessType,
        const codasip_address_t,
        const typename T::data_type);

//    void memory_access(simulator::WatchpointInfo::AccessType,
//        const codasip_address_t,
//        const typename T::data_type);

    /// Listener
    simulator::WatchpointListener* m_Listener;
    /// Watchpoint addresses to be watched (0 - suspend in code, 1 - codal)
    AddressWps m_AddressWps[2];
    /// Data to be watched (key) by given access type (value), 0 - suspend in code, 1 - codal
    DataWps m_DataWps[2];
};


template <class T>
inline WatchpointDetector<T>::WatchpointDetector(const std::string& name, const Uid uid)
  : T(name, uid),
    m_Listener(NULL)
{}

template <class T>
inline void WatchpointDetector<T>::blocking(Payload<typename T::data_type>& p)
{
    T::blocking(p);
    if (p.get_command() == CP_CMD_READ || p.get_command() == CP_CMD_WRITE)
    {
        simulator::WatchpointInfo::AccessType access =  p.get_command() == CP_CMD_READ
            ? simulator::WatchpointInfo::READ
            : simulator::WatchpointInfo::WRITE;

        address_watchpoint(access, p.get_address(), p.get_data());
        data_watchpoint(access, p.get_address(), p.get_data());
    }
}

template <class T>
inline void WatchpointDetector<T>::request(Payload<typename T::data_type>& p)
{
    T::request(p);
    if (p.get_status() == CP_ST_READY)
    {
        switch (p.get_command())
        {
            case CP_CMD_READ:
                address_watchpoint(simulator::WatchpointInfo::READ, p.get_address(), 0);
                break;
            case CP_CMD_WRITE:
                address_watchpoint(simulator::WatchpointInfo::WRITE, p.get_address(), 0);
                break;
            default:
                break;
        }
    }
}

template <class T>
inline void WatchpointDetector<T>::finish(Payload<typename T::data_type>& p)
{
    T::finish(p);
    if (p.get_response() == CP_RS_ACK)
    {
        switch (p.get_command())
        {
            case CP_CMD_READ:
                data_watchpoint(simulator::WatchpointInfo::READ, p.get_address(), p.get_data());
                break;
            case CP_CMD_WRITE:
                data_watchpoint(simulator::WatchpointInfo::WRITE, p.get_address(), p.get_data());
                break;
            default:
                break;
        }
    }
}

template <class T>
inline void WatchpointDetector<T>::set_listener(simulator::WatchpointListener& listener)
{
    m_Listener = &listener;
}

template <class T>
inline bool WatchpointDetector<T>::set_watchpoint(const simulator::WatchpointInfo& info,
    const codasip_address_t offset)
{
    DataWatchpoint* wp = nullptr;

    if (info.IsDataWatchpoint())
    {
        // convert simulator data into codasip::MaxInt
        codasip::MaxInt data;
        if (info.GetDataBitSize() > 0)
        {   // copy data
            ByteArrayToInteger(data, info.GetData(), ((info.GetDataBitSize()-1) / CHAR_BIT)+1);
        }

        auto& wps = m_DataWps[info.IsCodal()];
        auto it = wps.find(data);

        // disabling data WP
        if (!info.IsEnabled())
        {
            if (it != wps.end())
            {
                wps.erase(it);
                return true;
            }
            return false;
        }

        // enabling data WP
        if (it != wps.end())
        {
            wp = &it->second;
        }
        // not found -> create new
        else
        {
            wp = &wps[data];
        }
    }
    // address WP
    else
    {
        AddressWps& wps = m_AddressWps[info.IsCodal()];

        AddressWatchpoint* awp = nullptr;
        auto low = info.GetAddress()-offset;
        auto high = info.GetAddress()+info.GetSize()-1-offset;
        for (auto it = wps.begin(); it != wps.end();  ++it)
        {
            // precise match
            if (it->m_AddressLow >= offset
                && it->m_AddressLow == low
                && it->m_AddressHigh == high)
            {
                if (info.IsEnabled())
                {
                    awp = &*it;
                    break;
                }
                else
                {
                    wps.erase(it);
                    return true;
                }
            }
        }

        // we have not found WP to delete
        if (!info.IsEnabled())
        {
            return false;
        }

        // not found watchpoint to enable -> create new
        if (!awp)
        {
            // new address WP
            wps.push_back(typename AddressWps::value_type());
            awp = &wps.back();
        }

        awp->m_AddressLow = low;
        awp->m_AddressHigh = high;
        // set global arguments
        wp = awp;
    }

    // watchpoint not found
    if (!wp)
    {
        return false;
    }

    // set info of the watchpoint
    wp->m_Access = info.GetAccessType();
    wp->m_Offset = offset;
    wp->m_Resource = info.GetResource();
    if (wp->m_Resource.Empty())
    {
        wp->m_Resource = this->get_signature();
    }
    return true;
}

template <class T>
inline void WatchpointDetector<T>::address_watchpoint(simulator::WatchpointInfo::AccessType access,
    const codasip_address_t addr,
    const typename T::data_type data)
{
    // no listener, no fun
    if (m_Listener == NULL)
    {
        return;
    }
    // search for code and codal WPs
    for (unsigned char i = 0; i < 2; ++i)
    {
        // detect by address
        for (auto& wp : m_AddressWps[i])
        {
            if (wp.m_AddressLow <= addr
                && addr <= wp.m_AddressHigh
                && (wp.m_Access & access) == access)
            {
                m_Listener->Hit(wp.m_Resource,
                    i > 0,  // codal
                    false,  // address wp
                    access, // access type
                    addr+wp.m_Offset,  // address, add offset that was subtracted in set_watchpoint
                    data);
                break;
            }
        }
    }
}

template <class T>
inline void WatchpointDetector<T>::data_watchpoint(simulator::WatchpointInfo::AccessType access,
    const codasip_address_t addr,
    const typename T::data_type data)
{
        // no listener, no fun
    if (m_Listener == NULL)
    {
        return;
    }
    // search for code and codal WPs
    for (unsigned char i = 0; i < 2; ++i)
    {
        DataWps& dataWps = m_DataWps[i];

        // data WP
        auto it = dataWps.find(data);
        if (it != dataWps.end() && (it->second.m_Access & access))
        {
            m_Listener->Hit(it->second.m_Resource,
                i > 0,
                true,
                access,
                addr+it->second.m_Offset,  // address, add offset that was subtracted in set_watchpoint
                codasip::MaxInt(data));
        }
    }
}
//
//template <class T>
//inline void WatchpointDetector<T>::memory_access(simulator::WatchpointInfo::AccessType access,
//    const codasip_address_t addr,
//    typename T::data_type data)
//{
//    // no listener, no fun
//    if (m_Listener == NULL)
//    {
//        return;
//    }
//    // search for code and codal WPs
//    for (unsigned char i = 0; i < 2; ++i)
//    {
//        AddressWps& addressWps = m_AddressWps[i];
//        DataWps& dataWps = m_DataWps[i];
//
//        // detect by address
//        for (auto it = addressWps.begin(); it != addressWps.end(); ++it)
//        {
//            if (it->m_AddressLow <= addr
//                && addr <= it->m_AddressHigh
//                && (it->m_Access & access) == access)
//            {
//                m_Listener->Hit(this->get_uid(), i, false, access, addr, codasip::MaxInt(data));
//                break;
//            }
//        }
//
//        // data WP
//        auto it = dataWps.find(data);
//        if (it != dataWps.end() && (it->second & access))
//        {
//            m_Listener->Hit(this->get_uid(), i, true, access, addr, codasip::MaxInt(data));
//        }
//    }
//}


}   // namespace resources
}   // namespace codasip

#endif  // SIMULATORS2_RESOURCES_CSR_WATCHPOINT_DETECTOR_H_
