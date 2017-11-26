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
 *  \date   Mar 9, 2016
 *  \brief  Declaration/Implementation of the class.
 */

#ifndef SIMULATORS2_RESOURCES_CSR_MEMORY_REQUEST_H_
#define SIMULATORS2_RESOURCES_CSR_MEMORY_REQUEST_H_

#include "csr_request_fsm.h"

namespace codasip {
namespace resources {

/**
 * \class codasip::resources::CMemoryRequest
 * \brief Request within the memory protocol.
 */
template<class T>
class MemoryRequest : public RequestFSM
{
public:
    /// Array of read request information
    Payload<T> m_Request;
    /// Actual finished read request (it is used for synchronous memories
    /// when in the same clock cycle, the request and finish can occur for
    /// different addresses)
    Payload<T> m_FinishRead;
    /// info form store write
    Payload<T> m_FinishWrite;
    /**
     * \brief Default constructor
     */
    MemoryRequest()
    {
        reset();
    }

    /// reset
    void reset()
    {
       m_Request.reset();
       m_FinishRead.reset();
       m_FinishWrite.reset();
       RequestFSM::Reset();
    }

    /**
     * \brief Universal read request
     * \param latency Latency of the request
     * \param p       Request data (address, bi, bc, command), response field is updated.
     */
    void RES_INLINE request(const Index latency, Payload<T>& p)
    {
        // fill status
        p.set_status(RequestFSM::Request(latency));
        if (p.get_status() == CP_ST_READY)
        {
            if (p.get_command() == CP_CMD_READ)
            {
                if (latency)
                {
                    // fill request parameters
                    m_Request = p;
                }
                // if the latency is zero, then the request successes immediately
                else
                {
                    m_FinishRead =  p;
                }
            }
            else
            {
                m_FinishWrite = m_Request = p;
            }
        }
    }

    /**
     * \brief Check read request on given dataport, if the read request is
     *        ready, it returns OK, otherwise error code is returned
     * \param p Request parameters
     * \return Return code
     */
    void RES_INLINE ifinish(Payload<T>& p) const
    {
        if(p.update_cmd_args(m_FinishRead))
        {
            p.set_response(RequestFSM::Finish());
        }
    }

    void RES_INLINE ofinish(Payload<T>& p)
    {
        // update data
        m_FinishWrite.set_data(p.get_data());
        m_Request.set_data(p.get_data());

        if (m_Request.get_command() != CP_CMD_NONE)
        {
            p = m_Request;
            p.set_response(CP_RS_ACK);
        }
        else if (IsBusy())
        {
            p.update_cmd_args(m_FinishWrite);
            p.set_response(CP_RS_WAIT);
        }
        else
        {
            p.set_response(CP_RS_IDLE);
        }
    }

    /// move one clock cycle further
    bool RES_INLINE clock_cycle(Payload<T>& p)
    {
        // reset read finish
        if (m_FinishRead.get_command() != CP_CMD_NONE &&
            RequestFSM::Finish() == CP_RS_ACK)
            m_FinishRead.reset();

        // valid request
        if (m_Request.get_command() != CP_CMD_NONE)
        {
            if (m_Request.get_command() == CP_CMD_READ)
                m_FinishRead = m_Request;
            // clear request every clock cycle
            m_Request.reset();
        }

        // for write, move one clock cycle further
        bool cc = RequestFSM::ClockCycle();

        // clear finish when there is nothing to do
        if (m_FinishWrite.get_command() != CP_CMD_NONE && cc)
        {
            p = m_FinishWrite;
            m_FinishWrite.reset();
        }
        // return whether this is a lucky clock cycle
        return cc;
    }
};
}   // namespace resources
}   // namespace codasip

#endif  // SIMULATORS2_RESOURCES_CSR_MEMORY_REQUEST_H_
