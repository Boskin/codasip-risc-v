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

#ifndef SIMULATORS2_RESOURCES_CSR_CLB_INTERFACE_H_
#define SIMULATORS2_RESOURCES_CSR_CLB_INTERFACE_H_

#include "csr_interface.h"
#include "csr_clb_request.h"
#include "csr_memory.h"

//#define CLB_DBG_OUT

namespace codasip {
namespace resources {

/**
 *  \addtogroup SIMULATOR
 *  \{
 *  \class  MemoryInterface
 *  \brief  Interface that handles memory protocol.
 *  \}
 */
template<class T, class M, class A = csr_memory::DefaultInterf<M, typename T::data_type>>
class ClbInterface :
    public Interface<T, M>,
    private ClbRequest<typename T::data_type>
{
public:
    /// Number of bytes in word
    static const Index SUBBLOCKS = T::WORD_BITS / T::BYTE_BITS;

    /**
     * \{
     * \brief Call Interface<T, M> methods - resolve ambiguous call (multiple inherritance)
     */
    using Interface<T, M>::request;
    using Interface<T, M>::finish;
    /** \} */

    /**
     * \copydoc Sentinel::Sentinel
     */
    ClbInterface(const std::string& name, const Uid uid, M* module);

    /**
     * \copydoc codasip::resources::CInterface::request
     */
    void request_cb(Payload<typename T::data_type>& p) override;
    /**
     * \copydoc codasip::resources::CInterface::ifinish
     */
    void finish_cb(Payload<typename T::data_type>& p) override;

    void clock_cycle();
    void reset();

private:

    unsigned get_read_latency() const;
    unsigned get_write_latency() const;

    void inc_read_latency();
    void inc_write_latency();

    /// write request payload
    Payload<typename T::data_type> m_OfRpQ;
    Payload<typename T::data_type> m_OfRpD;
    /// info of the current request is read (needed for RAW hazzard handling)
    bool m_ReadRequest;
    /// current read latency
    unsigned m_ReadRequestLatency;
    /// Read latency
    unsigned m_ReadLatencyIndex;
    /// Write latency
    unsigned m_WriteLatencyIndex;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, class M, class A>
inline ClbInterface<T, M, A>::ClbInterface(const std::string& name,
    const Uid uid,
    M* module)
  : Interface<T, M>(name, uid, module),
    m_ReadRequest(false),
    m_ReadRequestLatency(0),
    m_ReadLatencyIndex(0),
    m_WriteLatencyIndex(0)
{}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, class M, class A>
void RES_INLINE ClbInterface<T, M, A>::request_cb(Payload<typename T::data_type>& p)
{
    #ifdef CLB_DBG_OUT
    std::cout << this->get_signature() << ": Clb request: "
            << "address: "<< p.get_address() << ", "
            << "data: "<< p.get_data() << ", "
            << "bi: "<< p.get_bi() << ", "
            << "bc: "<< p.get_bc() << ", "
            << "command: "<< p.get_command() << ", "
            << "specifier: "<< p.get_specifier() << ", "
            << "uid: "<< p.get_uid() << ", "
            << "response: "<< p.get_response() << ", "
            << "status: "<< p.get_status() << ", "
            << std::endl;
    #endif
    // something in the progress
    if (ClbRequest<typename T::data_type>::IsBusy())
    {
        p.set_status(CP_ST_BUSY);
    }
    else
    {
        m_ReadRequest = false;
        switch (p.get_command())
        {
            case CP_CMD_READ:
                if (!A::IS_READABLE)
                    p.set_status(CP_ST_READY);
                else
                {
                    m_ReadRequestLatency = get_read_latency();
                    ClbRequest<typename T::data_type>::request(m_ReadRequestLatency, p);
                    if(p.get_status() == CP_ST_READY)
                    {
                        Interface<T, M>::request_cb(p);
                        // error, reset the request
                        if (p.get_response() == CP_RS_ACK)
                        {
                            m_ReadRequest = true;
                            inc_read_latency();
                        }
                        else
                        {
                            ClbRequest<typename T::data_type>::Error(1);
                            m_ReadRequest = false;
                            m_ReadRequestLatency = 0;
                        }
                    }
                }
                break;
            case CP_CMD_WRITE:

                if (!A::IS_WRITABLE)
                    p.set_status(CP_ST_READY);
                else
                {
                    ClbRequest<typename T::data_type>::request(get_write_latency(), p);
                    if(p.get_status() == CP_ST_READY)
                    {
                        Interface<T, M>::request_cb(p);
                        // error, reset the request
                        if (p.get_response() == CP_RS_ACK)
                        {
                            inc_write_latency();
                        }
                        else
                        {
                            ClbRequest<typename T::data_type>::Error(1);
                        }
                    }
                }
                break;
            case CP_CMD_NONE:
            default:
                p.set_status(CP_ST_READY);
        }
    }
    #ifdef CLB_DBG_OUT
    std::cout << this->get_signature() << ": Clb request r: "
            << "address: "<< p.get_address() << ", "
            << "data: "<< p.get_data() << ", "
            << "bi: "<< p.get_bi() << ", "
            << "bc: "<< p.get_bc() << ", "
            << "command: "<< p.get_command() << ", "
            << "specifier: "<< p.get_specifier() << ", "
            << "uid: "<< p.get_uid() << ", "
            << "response: "<< p.get_response() << ", "
            << "status: "<< p.get_status() << ", "
            << std::endl;
    #endif
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, class M, class A>
void RES_INLINE ClbInterface<T, M, A>::finish_cb(Payload<typename T::data_type>& p)
{
    #ifdef CLB_DBG_OUT
    std::cout << this->get_signature() << ": Clb fin: "
            << "address: "<< p.get_address() << ", "
            << "data: "<< p.get_data() << ", "
            << "bi: "<< p.get_bi() << ", "
            << "bc: "<< p.get_bc() << ", "
            << "command: "<< p.get_command() << ", "
            << "specifier: "<< p.get_specifier() << ", "
            << "uid: "<< p.get_uid() << ", "
            << "response: "<< p.get_response() << ", "
            << "status: "<< p.get_status() << ", "
            << std::endl;
    #endif
    // data to be written (if write request)
    typename T::data_type data = p.get_data();
    ClbRequest<typename T::data_type>::finish(p);

    // no request
    if(p.get_command() == CP_CMD_NONE)
    {
        p.set_response(CP_RS_IDLE);
    }
    // response OK
    else if(p.get_response() == CP_RS_ACK)
    {
        if(p.get_command() == CP_CMD_READ ||
            p.get_command() == CP_CMD_INVALIDATE ||
            p.get_command() == CP_CMD_INVALIDATE_ALL)
        {
            Interface<T, M>::finish_cb(p);
        }
        else if(p.get_command() == CP_CMD_WRITE)
        {
            // actual writing will happen in the next clk, however we need to check the address,
            // to return correct response
            this->get_module()->check_address(p);
            if(p.get_response() == CP_RS_ACK)
            {
                p.set_data(data);
                m_OfRpD = p;
            }
        }
    }

    // clear data on error
    if (p.get_response() != CP_RS_ACK)
    {
        p.set_data(0);
    }
    #ifdef CLB_DBG_OUT
    std::cout << this->get_signature() << ": Clb fin r: "
            << "address: "<< p.get_address() << ", "
            << "data: "<< p.get_data() << ", "
            << "bi: "<< p.get_bi() << ", "
            << "bc: "<< p.get_bc() << ", "
            << "command: "<< p.get_command() << ", "
            << "specifier: "<< p.get_specifier() << ", "
            << "uid: "<< p.get_uid() << ", "
            << "response: "<< p.get_response() << ", "
            << "status: "<< p.get_status() << ", "
            << std::endl;
    #endif
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, class M, class A>
void RES_INLINE ClbInterface<T, M, A>::clock_cycle()
{
    // some data to be written
    if (m_OfRpQ.get_command() == CP_CMD_WRITE)
    {
        // write data
        Interface<T, M>::finish_cb(m_OfRpQ);
        m_OfRpQ.reset();
    }

    // write needs to be done in the following clock cycle
    Payload<typename T::data_type> rp;
    ClbRequest<typename T::data_type>::finish(rp);
    if (rp.get_response() && m_OfRpD.get_command() == CP_CMD_WRITE)
    {
        m_OfRpQ = m_OfRpD;
        m_OfRpD.reset();

        // solve RAW hazard in the case of BRAM and rw interface
        if (A::IS_READABLE && A::IS_WRITABLE && m_ReadRequest && m_ReadRequestLatency == 1)
        {
        	// stall only valid requests
            this->get_module()->check_address(ClbRequest<typename T::data_type>::m_Request);
            if(ClbRequest<typename T::data_type>::m_Request.get_response() == CP_RS_ACK)
            {
                ClbInterface::Stall();
                m_ReadRequest = false;
            }
        }
    }
    ClbRequest<typename T::data_type>::clock_cycle(rp);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, class M, class A>
void RES_INLINE ClbInterface<T, M, A>::reset()
{
    ClbRequest<typename T::data_type>::reset();
    m_OfRpQ.reset();
    m_OfRpD.reset();
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, class M, class A>
unsigned RES_INLINE ClbInterface<T, M, A>::get_read_latency() const
{
    if (M::LATENCY_READ_SIZE == 1)
    {
        return M::GetLatencyRead();
    }
    return M::GetLatencyRead(m_ReadLatencyIndex);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, class M, class A>
unsigned RES_INLINE ClbInterface<T, M, A>::get_write_latency() const
{
    if (M::LATENCY_WRITE_SIZE == 1)
    {
        return M::GetLatencyWrite();
    }
    return M::GetLatencyWrite(m_WriteLatencyIndex);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, class M, class A>
void RES_INLINE ClbInterface<T, M, A>::inc_read_latency()
{
    if (M::LATENCY_READ_SIZE == 1)
    {
        return;
    }
    ++m_ReadLatencyIndex;
    if (m_ReadLatencyIndex >= M::LATENCY_READ_SIZE)
    {
        m_ReadLatencyIndex = 0;
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, class M, class A>
void RES_INLINE ClbInterface<T, M, A>::inc_write_latency()
{
    if (M::LATENCY_WRITE_SIZE == 1)
    {
        return;
    }
    ++m_WriteLatencyIndex;
    if (m_WriteLatencyIndex >= M::LATENCY_WRITE_SIZE)
    {
        m_WriteLatencyIndex = 0;
    }
}


}   // namespace resources
}   // namespace codasip

#endif  // SIMULATORS2_RESOURCES_CSR_CLB_INTERFACE_H_
