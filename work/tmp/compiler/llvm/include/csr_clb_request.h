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

#ifndef SIMULATORS2_RESOURCES_CSR_CLB_REQUEST_H_
#define SIMULATORS2_RESOURCES_CSR_CLB_REQUEST_H_

#include "csr_request_fsm.h"

namespace codasip {
namespace resources {

/**
 * \class codasip::resources::ClbRequest
 * \brief Request within the clb protocol.
 */
template<class T>
class ClbRequest : public RequestFSM {

public:
    /// Array of read request information
    Payload<T> m_Request;
    /// Actual finished read request (it is used for synchronous memories
    /// when in the same clock cycle, the request and finish can occur for
    /// different addresses)
    Payload<T> m_Finish;

    /**
     * \brief Default constructor
     */
    ClbRequest()
    {
        reset();
    }

    /// reset
    void reset()
    {
       m_Request.reset();
       m_Finish.reset();
       RequestFSM::Reset();
    }

    /**
     * \brief Universal read request
     * \param latency Latency of the request
     * \param p       Request data (address, bi, bc, command), response field is updated.
     */
    void RES_INLINE request(const Index latency, Payload<T>& p) {
        // fill status
        p.set_status(RequestFSM::Request(latency));
        if (p.get_status() == CP_ST_READY)
        {
            // fill request parameters
            m_Request = p;
        }
    }
    /**
     * \brief Check read request on given dataport, if the read request is
     *        ready, it returns OK, otherwise error code is returned
     * \param p Request parameters
     * \return Return code
     */
    void RES_INLINE finish(Payload<T>& p) const
    {
        Response resp = RequestFSM::Finish();
        if(resp == CP_RS_ACK)
        {
            p = m_Finish;
        }
        p.set_response(resp);
    }

    /// move one clock cycle further
    bool RES_INLINE clock_cycle(Payload<T>& p)
    {
        // valid request
        if (m_Request.get_command() != CP_CMD_NONE)
        {
            m_Finish = m_Request;
            // clear request every clock cycle
            m_Request.reset();
        }
        // clear finish when there is nothing to do
        if (m_Finish.get_command() != CP_CMD_NONE && !IsBusy())
        {
            p = m_Finish;
            m_Finish.reset();
        }
        // return whether this is a lucky clock cycle
        return RequestFSM::ClockCycle();
    }
};

}   // namespace resources
}   // namespace codasip

#endif  // SIMULATORS2_RESOURCES_CSR_CLB_REQUEST_H_
