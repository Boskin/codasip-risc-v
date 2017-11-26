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
 *  \date   Feb 25, 2016
 *  \brief  Declaration/Implementation of the class.
 */

#ifndef SIMULATORS2_RESOURCES_CSR_INTERFACE_BASE_H_
#define SIMULATORS2_RESOURCES_CSR_INTERFACE_BASE_H_

#include "csr_helpers.h"
#include "csr_payload.h"

#include <vector>
#include <algorithm>

namespace codasip {
namespace resources {

/**
 *  \addtogroup SIMULATOR
 *  \{
 *  \class  InterfaceBase
 *  \brief  Base for interfaces, it holds connections
 *  \}
 */
template<class T>
class InterfaceBase
{
public:
    /**
     * \brief Destructor
     */
    virtual ~InterfaceBase() {}
    /**
     * \brief Bind this interface with rhs interface,
     *        The direction is taken into account a->b, not b->a
     * \param rhs Connected port
     */
    void bind(InterfaceBase<T>& rhs);
    /**
     * \{
     * \brief Par of interface interface
     */
    virtual void blocking(Payload<T>&) = 0;
    virtual void request(Payload<T>&) = 0;
    virtual void finish(Payload<T>&) = 0;
   /** \} */

protected:
    /// Container for binded targets
    typedef std::vector<InterfaceBase<T>* > Binds;
    /**
     * \brief Getter
     */
    Binds& get_fw_binds();
    const Binds& get_fw_binds() const;
    /**
     * \}
     * \brief Par of interface interface
     */
    virtual void blocking_cb(Payload<T>&) = 0;
    virtual void request_cb(Payload<T>&) = 0;
    virtual void finish_cb(Payload<T>&) = 0;
    /**
     * \brief Propagate value to all forward connections
     */
    void handle_blocking_cb(Payload<T>&);
    void handle_request_cb(Payload<T>&);
    void handle_finish_cb(Payload<T>&);

private:

    void fw_bind(InterfaceBase& rhs);
    void bw_bind(InterfaceBase& lhs);

    void add_bind(Binds&, InterfaceBase&);
    void add_binds(Binds&, Binds&);

    /// forward bind
    Binds m_FwBinds;
    /// backward bind
    Binds m_BwBinds;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline void InterfaceBase<T>::bind(InterfaceBase<T>& rhs)
{
    // forward bind
    fw_bind(rhs);
    // backward bind
    bw_bind(rhs);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline typename InterfaceBase<T>::Binds& InterfaceBase<T>::get_fw_binds()
{
    return m_FwBinds;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline const typename InterfaceBase<T>::Binds& InterfaceBase<T>::get_fw_binds() const
{
    return m_FwBinds;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
RES_INLINE void InterfaceBase<T>::handle_blocking_cb(Payload<T>& p)
{
    // update binds
    for (auto it = this->get_fw_binds().begin(); it != this->get_fw_binds().end(); ++it)
    {
        (*it)->blocking_cb(p);
    }
}

template <class T>
RES_INLINE void InterfaceBase<T>::handle_request_cb(Payload<T>& p)
{
    // update binds
    for (auto it = this->get_fw_binds().begin(); it != this->get_fw_binds().end(); ++it)
    {
        (*it)->request_cb(p);
    }
}

template <class T>
RES_INLINE void InterfaceBase<T>::handle_finish_cb(Payload<T>& p)
{
    // update binds
    for (auto it = this->get_fw_binds().begin(); it != this->get_fw_binds().end(); ++it)
    {
        (*it)->finish_cb(p);
    }
}


////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline void InterfaceBase<T>::fw_bind(InterfaceBase& rhs)
{
    // chain: a -> b -> c -> d
    // a.bind(b) means:
    // add b's fw binds (c, d)
    add_binds(m_FwBinds, rhs.get_fw_binds());
    // add b itself
    add_bind(m_FwBinds, rhs);
    // update all bw binds with the new fw binds of this
    for (auto it = m_BwBinds.begin(); it != m_BwBinds.end(); ++it)
    {
        (*it)->fw_bind(*this);
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline void InterfaceBase<T>::bw_bind(InterfaceBase& rhs)
{
    // chain: a -> b -> c -> d
    // a.bind(b) means:
    // add a to b's bw binds
    rhs.add_bind(rhs.m_BwBinds, *this);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline void InterfaceBase<T>::add_bind(Binds& binds, InterfaceBase& rhs)
{
    // ignore ourselves
    if (&rhs == this)
    {
        return;
    }
    // check that there is no such port already inserted
    if (std::find(binds.begin(), binds.end(), &rhs) != binds.end())
    {
        return;
    }
    // create a connection
    binds.push_back(&rhs);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline void InterfaceBase<T>::add_binds(Binds& binds, Binds& newBinds)
{
    // add everything we have
    for (auto it = newBinds.begin(); it != newBinds.end(); ++it)
    {
        add_bind(binds, **it);
    }
}


}   // namespace resources
}   // namespace codasip

#endif  // SIMULATORS2_RESOURCES_CSR_INTERFACE_BASE_H_
