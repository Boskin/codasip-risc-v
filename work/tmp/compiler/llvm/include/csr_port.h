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

#ifndef SIMULATORS2_RESOURCES_CSR_PORT_H_
#define SIMULATORS2_RESOURCES_CSR_PORT_H_

#include "csr_port_base.h"
#include "simulator_resources.h"

namespace codasip {
namespace resources {

/**
 *  \brief  Get name of callback selector with custom names of all callback methods.
 *          This name is used in third template parameter in Port class.
 *  \param  w_cb Name of write callback method in underling module.
 *  \param  dw_cb Name of debug write callback method in underling module.
 */
#define CODASIP_PORT_CB_SELECT_FULL(w_cb, dw_cb) codasip_port_select_##w_cb##_##dw_cb

/**
 *  \brief  Create interface callback selector with custom names of all callback methods.
 *  \param  w_cb Name of write callback method in underling module.
 *  \param  dw_cb Name of debug write callback method in underling module.
 */
#define CODASIP_PORT_CB_SELECTOR_FULL(w_cb, dw_cb) \
struct CODASIP_PORT_CB_SELECT_FULL(w_cb, dw_cb) \
{ \
    template <class M, class T, class U> \
    static inline void write_cb(M& module, T& data, const U& uid) \
    { \
        module.w_cb(data, uid); \
    } \
    template <class M, class T, class U> \
    static inline void dwrite_cb(M& module, T& data, const U& uid) \
    { \
        module.dw_cb(data, uid); \
    } \
}

/**
 *  \brief  Create port callback selector with standard names of callback methods.
 *          The names are PORT_write_cb, PORT_dwrite_cb.
 *  \param  name Name of PORT prefix (usually port name).
 */
#define CODASIP_PORT_CB_SELECTOR(name) \
    CODASIP_PORT_CB_SELECTOR_FULL(name##_write_cb, name##_dwrite_cb)

/**
 *  \brief  Get name of callback selector with standard names of callback methods.
 *          This name is used in third template parameter in Port class.
 *  \param  name Name of PORT prefix (usually port name).
 */
#define CODASIP_PORT_CB_SELECT(name) \
    CODASIP_PORT_CB_SELECT_FULL(name##_write_cb, name##_dwrite_cb)

namespace detail {

CODASIP_PORT_CB_SELECTOR_FULL(write_cb, dwrite_cb);

/**
 * \brief Empty module, provides empty callbacks.
 */
template<class T>
class PortModule
{
public:
    void write_cb(T, Uid) {}
    void dwrite_cb(T, Uid) {}
};

}

/**
 *  \addtogroup SIMULATOR
 *  \{
 *  \class  Port
 *  \brief
 *  \}
 */
template<class T, typename M = detail::PortModule<typename T::data_type>, class S =
    detail::CODASIP_PORT_CB_SELECT_FULL(write_cb, dwrite_cb)>
class Port : public T, public PortBase<typename T::data_type>, public simulator::PortInfo
{
public:
    /**
     * \copydoc Sentinel::Sentinel
     */
    Port(const std::string& name, const Uid uid, M* module = NULL);
    /**
     * \{
     * \copydoc VariableStorage::write
     */
    typename T::data_type read() const override;
    typename T::data_type dread() const override;
    /**
     * \{
     * \copydoc VariableStorage::write
     */
    void write(const typename T::data_type data) override;
    void dwrite(const typename T::data_type data) override;
    /** \} */

    /// \copydoc ResourceInfo::GetUid
    Uid GetUid() const override;
    /// \copydoc ResourceInfo::GetName
    const std::string& GetName() const override;
    /// \copydoc ResourceInfo::GetBitWidth
    unsigned GetBitWidth() const override;

private:

    void write_cb(const typename T::data_type) override;
    void dwrite_cb(const typename T::data_type) override;

    /// pointer to the module owning callback
    M* m_Module;
};


////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, typename M, class S>
inline Port<T, M, S>::Port(const std::string& name, const Uid uid, M* module)
  : T(name, uid),
    m_Module(module)
{}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, typename M, class S>
RES_INLINE typename T::data_type Port<T, M, S>::read() const
{
    return T::read();
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, typename M, class S>
RES_INLINE typename T::data_type Port<T, M, S>::dread() const
{
    return T::dread();
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, typename M, class S>
RES_INLINE void Port<T, M, S>::write(const typename T::data_type data)
{
    this->handle_write_cb(data);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, typename M, class S>
RES_INLINE void Port<T, M, S>::dwrite(const typename T::data_type data)
{
    this->handle_dwrite_cb(data);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, typename M, class S>
RES_INLINE void Port<T, M, S>::write_cb(const typename T::data_type data)
{
    T::write(data);
    if (m_Module)
    {
        S::write_cb(*m_Module, data, this->get_uid());
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, typename M, class S>
RES_INLINE void Port<T, M, S>::dwrite_cb(const typename T::data_type data)
{
    T::dwrite(data);
    if (m_Module)
    {
        S::dwrite_cb(*m_Module, data, this->get_uid());
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, typename M, class S>
RES_INLINE Uid Port<T, M, S>::GetUid() const
{
    return T::get_uid();
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, typename M, class S>
RES_INLINE const std::string& Port<T, M, S>::GetName() const
{
    return T::get_name();
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, typename M, class S>
RES_INLINE unsigned Port<T, M, S>::GetBitWidth() const
{
    return T::WORD_BITS;
}

}   // namespace resources
}   // namespace codasip

#endif  // SIMULATORS2_RESOURCES_CSR_PORT_H_
