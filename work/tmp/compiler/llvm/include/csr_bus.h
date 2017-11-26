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
 *  \date   Feb 24, 2016
 *  \brief  Declaration/Implementation of the class.
 */

#ifndef SIMULATORS2_RESOURCES_CSR_BUS_H_
#define SIMULATORS2_RESOURCES_CSR_BUS_H_

#include "csr_helpers.h"
#include "csr_sentinel.h"

namespace codasip {
namespace resources {

template <class _BusCore>
class Bus : public _BusCore, public Sentinel
{
public:
    /**
     * \copydoc Sentinel::Sentinel
     */
    Bus(const std::string& name, const Uid uid);
    /**
     * \brief Reset bus (reset request logic)
     */
    void reset();
    /**
     * \brief Move one clock cycle further
     */
    void clock_cycle();

    template <class T>
    void blocking_cb(Payload<T>& p, const Uid);
    template <class T>
    void request_cb(Payload<T>& p, const Uid);
    template <class T>
    void finish_cb(Payload<T>& p, const Uid);

private:
    /// Slave in requets
    typename _BusCore::SlaveInterface* m_HandledSlaveRequest;
    /// Slave in finish
    typename _BusCore::SlaveInterface* m_HandledSlaveFinish;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class _BusCore>
inline Bus<_BusCore>::Bus(const std::string& name, const Uid uid)
  : Sentinel(name, uid),
    m_HandledSlaveRequest(NULL),
    m_HandledSlaveFinish(NULL)
{}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class _BusCore>
inline void Bus<_BusCore>::reset()
{
    _BusCore::Reset();
    m_HandledSlaveRequest = NULL;
    m_HandledSlaveFinish = NULL;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class _BusCore>
inline void Bus<_BusCore>::clock_cycle()
{
    _BusCore::ClockCycle();
    if (m_HandledSlaveRequest != NULL)
    {
        m_HandledSlaveFinish = m_HandledSlaveRequest;
        m_HandledSlaveRequest = NULL;
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class _BusCore>
template <class T>
inline void Bus<_BusCore>::blocking_cb(Payload<T>& p, const Uid)
{
    codasip_address_t oAddr = p.get_address();
    codasip_address_t nAddr = 0;
    typename _BusCore::SlaveInterface* slave = NULL;

    this->GetSlaveInterface(oAddr, nAddr, slave);
    if (slave == NULL)
    {
        return;
    }
    p.set_address(nAddr);
    slave->blocking(p);
    p.set_address(oAddr);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class _BusCore>
template <class T>
inline void Bus<_BusCore>::request_cb(Payload<T>& p, const Uid)
{
    // not finished yet
    if (m_HandledSlaveRequest != NULL || m_HandledSlaveFinish != NULL)
    {
        p.set_status(CP_ST_BUSY);
        return;
    }
    // check that there is a slave
    codasip_address_t oAddr = p.get_address();
    codasip_address_t nAddr = 0;

    m_HandledSlaveRequest = NULL;
    this->GetSlaveInterface(oAddr, nAddr, m_HandledSlaveRequest);

    if (m_HandledSlaveRequest == NULL)
    {
        p.set_status(CP_ST_ERROR);
        return;
    }
    // do the communication
    p.set_address(nAddr);
    m_HandledSlaveRequest->request(p);
    p.set_address(oAddr);
    // is accepted, then
    if (p.get_status() != CP_ST_READY)
    {
        m_HandledSlaveRequest = NULL;
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class _BusCore>
template <class T>
inline void Bus<_BusCore>::finish_cb(Payload<T>& p, const Uid)
{
    // no request is running
    if (m_HandledSlaveFinish == NULL)
    {
        p.set_response(CP_RS_IDLE);
        return;
    }
    // finish it
    m_HandledSlaveFinish->finish(p);
    // check response, if we should not wait, finish
    if (p.get_response() != CP_RS_WAIT)
    {
        m_HandledSlaveFinish = NULL;
    }
}

}   // namespace resources
}   // namespace codasip


#endif  // SIMULATORS2_RESOURCES_CSR_PORT_H_
