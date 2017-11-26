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
 *  \author Petr Hons
 *  \date   13.1.2016
 *  \brief  Implementation of watchpoint hit detection in simulator
 */

#ifndef _WATCHPOINTS_H_
#define _WATCHPOINTS_H_

#include <algorithm>
#include <vector>
#include <map>

#include "codasiputils.h"   // IntegerToByteArray
#include "codasip_integer.h"
#include "simulator_private.h"

namespace codasip {
namespace simulator {
/**
 *  \brief  Class that stores current watchpoint info. Is used as single place where all watchpoint
 *          events are redirected to. Is used to inform debugger that some watchpoint occurs
 */
class WatchpointListener
{
public:
    /**
     *  \brief  Constructor
     */
    WatchpointListener();
    /**
     *  \brief  Called from WatchpointDetectors when any WP is hit
     *  \param resource UID of resource where the WP was hit
     *  \param dataWp True for data WP, false for address one.
     *  \param access Type of access that hit the WP
     *  \param address Address of WP hit
     *  \param data Data of WP hit
     */
    void Hit(const Path& resource,
        const bool codal,
        const bool dataWp,
        const WatchpointInfo::AccessType access,
        const Address address,
        const codasip::MaxInt & data);
    /**
     * \brief Return true if watchpoint was hit and simulation should be suspended in code / Codal.
     * \param info Output event that will be filled with hit watchpoint information.
     * \param codal True to handle watchpoints suspending in CodAL, false for code.
     */
    bool IsHit(EventInfo& info, const bool codal);

private:
    /// Structure describing single hit
    typedef struct HitInfo
    {
        /// Constructor
        HitInfo();
        /// Describes type of watchpoint to be hit and described in m_Info, or EVENT_INVALID
        EventType m_Event;
        /// Data of hit watchpoint
        std::vector<Data> m_Data;
        /// Current information about hit watchpoint
        WatchpointInfo m_Info;
    } HitInfo;

    /// Decribes information with hit watchpoints
    /// 0 - watchpoint suspend in code
    /// 1 - watchpoint suspend in CodAL
    HitInfo m_Hit[2];
};

////////////////////////////////////////////////////////////////////////////////////////////////////
inline WatchpointListener::WatchpointListener()
{}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline WatchpointListener::HitInfo::HitInfo()
  : m_Event(EVENT_INVALID)
{
    m_Data.resize(codasip::MaxInt::BIT_WIDTH / CHAR_BIT);
    m_Info.SetDataWatchpoint(WatchpointInfo::NONE, m_Data.data(), (unsigned)m_Data.size() * CHAR_BIT);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline void WatchpointListener::Hit(const Path& resource,
    const bool codal,
    const bool dataWp,
    const WatchpointInfo::AccessType access,
    const Address address,
    const codasip::MaxInt & data)
{
    HitInfo& hit = m_Hit[codal];

    // already have WP
    if (hit.m_Event != EVENT_INVALID)
    {
        return;
    }

    hit.m_Event = dataWp ? EVENT_DATA_WATCHPOINT : EVENT_ADDRESS_WATCHPOINT;

    // fill with zeroes
    std::fill(hit.m_Data.begin(), hit.m_Data.end(), 0);
    // copy data
    IntegerToByteArray(hit.m_Data.data(), (unsigned)hit.m_Data.size(), data);

    hit.m_Info.SetAccess(resource, address, access);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline bool WatchpointListener::IsHit(EventInfo& info, const bool codal)
{
    HitInfo& hit = m_Hit[codal];
    if (hit.m_Event == EVENT_INVALID)
    {
        return false;
    }

    info.SetReason(hit.m_Event);
    info.SetWatchpointHitInfo(&hit.m_Info);
    hit.m_Event = EVENT_INVALID;
    return true;
}

}   // namespace codasip::simulator
}	// namespace codasip

#endif // _WATCHPOINTS_H_
