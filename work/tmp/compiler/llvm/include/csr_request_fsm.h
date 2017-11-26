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
 *  \author Zdenek Prikryl
 *  \date   Oct 29, 2012
 *  \brief
 */

#ifndef _REQUESTTEMPLATES_H_
#define _REQUESTTEMPLATES_H_

#include "csr_helpers.h"

namespace codasip {
namespace resources {

/**
 * \class codasip::resources::CRequestFSM
 * \brief Basic class for request read and write things. It contains only state
 *        automaton.
 */
class RequestFSM {

private:
    /// Counter holding info about process of request
    int m_Request;
    /// guard, it is set when the request succeeds
    bool m_Finished;

protected:
    /// reset
    void RES_INLINE Reset() {
        m_Request = -1;
        m_Finished = false;
    }

    /**
     * \brief Defautl constructor
     */
    RequestFSM() {
        Reset();
    }

    /**
     * \brief Signalize error, so, finish the request in the next clock cycle
     */
    void Error(bool delay) {
        if (delay == 0)
        {
            m_Request = -1;
            m_Finished = true;
        }
        else
        {
            m_Request = delay;
        }
    }

    /// move one clock cycle further
    bool RES_INLINE ClockCycle() {
        // the next clock cycle, the read will succeed
        register bool finished = m_Request == 1;
        if (m_Request >= 0)
            m_Request--;
        m_Finished = finished;
        return finished;
    }
    /**
     * \brief Handle read request. It returns OK, if the request can be
     *        accepted, otherwise, error is returned.
     * \param latency Latency of the request
     */
    Status RES_INLINE Request(const Index latency) {
        if (IsBusy())
            return  CP_ST_BUSY;
        // if the read latency is 0, we are ready immediately
        if (latency)
            m_Request = latency;
        else
            m_Finished = true;
        return CP_ST_READY;
    }
    /**
     * \brief Check read request on given dataport, if the read request is
     *        ready, it returns OK, otherwise error code is returned
     */
    Response RES_INLINE Finish() const {
        if (m_Finished)
            return CP_RS_ACK;
        if (IsBusy())
            return CP_RS_WAIT;
        return CP_RS_IDLE;
    }
    /**
     * \brief Return true, if there is any request running
     */
    bool RES_INLINE IsBusy() const {
        return m_Request > 0;
    }
    /**
     * \brief Stall request
     */
    void RES_INLINE Stall() {
        m_Finished = false;
        ++m_Request;
    }
};


}   // namespace resources
}	// namespace codasip

#endif // _REQUESTTEMPLATES_H_
