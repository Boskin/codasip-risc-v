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

#ifndef SIMULATORS2_RESOURCES_CSR_MEMORY_INTERFACE_H_
#define SIMULATORS2_RESOURCES_CSR_MEMORY_INTERFACE_H_

#include "csr_interface.h"
#include "csr_memory_request.h"
#include "csr_memory.h"

namespace codasip {
namespace resources {

//#define MEM_DBG_OUT

/**
 *  \addtogroup SIMULATOR
 *  \{
 *  \class  MemoryInterface
 *  \brief  Interface that handles memory protocol.
 *  \}
 */
template<class T, class M, class A = csr_memory::DefaultInterf<M, typename T::data_type>>
class MemoryInterface :
    public Interface<T, M>,
    private MemoryRequest<typename T::data_type>
{
public:
    /// Number of bytes in word
    static const Index BPW = T::WORD_BITS / T::BYTE_BITS;

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
    MemoryInterface(const std::string& name, const Uid uid, M* module);
    /**
     * \copydoc codasip::resources::Interface::request
     */
    void request_cb(Payload<typename T::data_type>& p) override;
    /**
     * \copydoc codasip::resources::Interface::finish
     */
    void finish_cb(Payload<typename T::data_type>& p) override;

    void clock_cycle();
    void reset();
};

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, class M, class A>
inline MemoryInterface<T, M, A>::MemoryInterface(const std::string& name,
    const Uid uid,
    M* module)
  : Interface<T, M>(name, uid, module)
{}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, class M, class A>
void RES_INLINE MemoryInterface<T, M, A>::request_cb(Payload<typename T::data_type>& p)
{
    #ifdef MEM_DBG_OUT
    std::cout << this->get_uid() << ": Mem request: "
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
    if (MemoryRequest<typename T::data_type>::IsBusy())
    {
        p.set_status(CP_ST_BUSY);
    }
    else
    {
        switch (p.get_command())
        {
            case CP_CMD_READ:
                if (!A::IS_READABLE)
                    p.set_status(CP_ST_READY);
                else
                {
                    MemoryRequest<typename T::data_type>::request(M::GetLatencyRead(), p);
                    if(p.get_status() == CP_ST_READY)
                    {
                        Interface<T, M>::request_cb(p);
                        // error, reset the request
                        if (p.get_response() != CP_RS_ACK)
                        {
                            MemoryRequest<typename T::data_type>::Error(1);
                        }
                    }
                }
                break;
            case CP_CMD_WRITE:
                if (!A::IS_WRITABLE)
                    p.set_status(CP_ST_READY);
                else
                {
                    MemoryRequest<typename T::data_type>::request(M::GetLatencyWrite(), p);
                    if(p.get_status() == CP_ST_READY)
                    {
                        Interface<T, M>::request_cb(p);
                        // error, reset the request
                        if (p.get_response() != CP_RS_ACK)
                        {
                            MemoryRequest<typename T::data_type>::Error(0);
                        }
                    }
                }
                break;
            case CP_CMD_NONE:
            default:
                p.set_status(CP_ST_READY);
        }
    }

    #ifdef MEM_DBG_OUT
    std::cout << this->get_uid() << ": Mem request r: "
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
void RES_INLINE MemoryInterface<T, M, A>::finish_cb(Payload<typename T::data_type>& p)
{
    #ifdef MEM_DBG_OUT
    std::cout << this->get_uid() << ": Mem finish: "
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

    p.set_response(CP_RS_ERROR);

    // obtain request data
    switch(p.get_command())
    {
        case CP_CMD_NONE:
            p.set_response(CP_RS_IDLE);
            break;
        case CP_CMD_READ:
        case CP_CMD_INVALIDATE:
        case CP_CMD_INVALIDATE_ALL:
            if(A::IS_READABLE)
            {
                MemoryRequest<typename T::data_type>::ifinish(p);
                // response OK
                if(p.get_response() == CP_RS_ACK)
                {
                    Interface<T, M>::finish_cb(p);
                }
            }
            break;
        case CP_CMD_WRITE:
        case CP_CMD_FLUSH:
        case CP_CMD_FLUSH_ALL:
            if(A::IS_WRITABLE)
            {
                MemoryRequest<typename T::data_type>::ofinish(p);
                // response OK
                if(p.get_response() == CP_RS_ACK)
                {
                    // actual writing will happen in the next clk, however we need to check the address,
                    // to return correct response
                    this->get_module()->check_address(p);
                }
            }
            break;
        default:
            break;
    }

    // respone not OK
    if(p.get_response() != CP_RS_ACK)
    {
        p.set_data(0);
    }

    #ifdef MEM_DBG_OUT
    std::cout << this->get_uid() << ": Mem finish r: "
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
void RES_INLINE MemoryInterface<T, M, A>::clock_cycle()
{
    // request data
    Payload<typename T::data_type> rp;
    if(MemoryRequest<typename T::data_type>::clock_cycle(rp))
    {
        // write data
        if (rp.get_command() == CP_CMD_WRITE)
        {
            // write data
            Interface<T, M>::finish_cb(rp);
        }
    }
    Interface<T, M>::clock_cycle();
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, class M, class A>
void RES_INLINE MemoryInterface<T, M, A>::reset()
{
    Interface<T, M>::reset();
    MemoryRequest<typename T::data_type>::reset();
}

}   // namespace resources
}   // namespace codasip

#endif  // SIMULATORS2_RESOURCES_CSR_MEMORY_INTERFACE_H_
