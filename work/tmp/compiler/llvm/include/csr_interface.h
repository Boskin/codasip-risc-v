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
 *  \date   Feb 23, 2016
 *  \brief  Declaration/Implementation of the class.
 */

#ifndef SIMULATORS2_RESOURCES_CSR_INTERFACE_H_
#define SIMULATORS2_RESOURCES_CSR_INTERFACE_H_

#include "csr_interface_base.h"
#include "csr_payload.h"
#include "simulator_resources.h"

//#define IFACE_DBG_OUT

namespace codasip {
namespace resources {

/**
 *  \brief  Get name of callback selector with custom names of all callback methods.
 *          This name is used in third template parameter in Interface class.
 *  \param  b_cb Name of blocking callback method in underling module.
 *  \param  r_cb Name of request callback method in underling module.
 *  \param  f_cb Name of finish callback method in underling module.
 */
#define CODASIP_IFACE_CB_SELECT_FULL(b_cb, r_cb, f_cb) \
    codasip_iface_select_##b_cb##_##r_cb##_##f_cb

/**
 *  \brief  Create interface callback selector with custom names of all callback methods.
 *  \param  b_cb Name of blocking callback method in underling module.
 *  \param  r_cb Name of request callback method in underling module.
 *  \param  f_cb Name of finish callback method in underling module.
 */
#define CODASIP_IFACE_CB_SELECTOR_FULL(b_cb, r_cb, f_cb) \
struct CODASIP_IFACE_CB_SELECT_FULL(b_cb, r_cb, f_cb) \
{ \
    template <class M, class T, class U> \
    static inline void blocking_cb(M& module, T& p, const U& uid) \
    { \
        module.b_cb(p, uid); \
    } \
    template <class M, class T, class U> \
    static inline void request_cb(M& module, T& p, const U& uid) \
    { \
        module.r_cb(p, uid); \
    } \
    template <class M, class T, class U> \
    static inline void finish_cb(M& module, T& p, const U& uid) \
    { \
        module.f_cb(p, uid); \
    } \
}

/**
 *  \brief  Create interface callback selector with standard names of callback methods.
 *          The names are IFACE_blocking_cb, IFACE_request_cb, IFACE_finish_cb.
 *  \param  name Name of IFACE prefix (usually interface name).
 */
#define CODASIP_IFACE_CB_SELECTOR(name) \
    CODASIP_IFACE_CB_SELECTOR_FULL(name##_blocking_cb, name##_request_cb, name##_finish_cb)

/**
 *  \brief  Get name of callback selector with standard names of callback methods.
 *          This name is used in third template parameter in Interface class.
 *  \param  name Name of IFACE prefix (usually interface name).
 */
#define CODASIP_IFACE_CB_SELECT(name) \
    CODASIP_IFACE_CB_SELECT_FULL(name##_blocking_cb, name##_request_cb, name##_finish_cb)

namespace detail {

// Create default selector in separate namespace
CODASIP_IFACE_CB_SELECTOR_FULL(blocking_cb, request_cb, finish_cb);

/**
 * \brief Empty module, provides empty callbacks.
 */
template<class T>
class InterfaceModule
{
public:
    void blocking_cb(Payload<T>&, Uid) {}
    void request_cb(Payload<T>&, Uid) {}
    void finish_cb(Payload<T>&, Uid) {}
};

}   // namespace codasip::resources::detail

/**
 *  \addtogroup SIMULATOR
 *  \{
 *  \class  Interface
 *  \brief  Basic interface that can be placed on a platform
 *  \}
 */
template<class T, class M = detail::InterfaceModule<typename T::data_type>, class S =
    detail::CODASIP_IFACE_CB_SELECT_FULL(blocking_cb, request_cb, finish_cb)>
class Interface : public T, public InterfaceBase<typename T::data_type>, public simulator::InterfaceInfo
{
public:
    /// Callback function
    typedef void (M::*Cb)(Payload<typename T::data_type>&);

    /**
     * \copydoc Sentinel::Sentinel
     */
    Interface(const std::string& name, const Uid uid, M* module = NULL);
    /**
     * \{
     * \brief CodAL helper
     */
    void load(const typename T::data_type data,
        const codasip_address_t addr,
        const Index bi = 0,
        const Index bc = T::BPW);
    typename T::data_type read(const codasip_address_t addr,
        const Index bi = 0,
        const Index bc = T::BPW);
    typename T::data_type dread(const codasip_address_t addr,
        const Index bi = 0,
        const Index bc = T::BPW);
    void write(const typename T::data_type data,
        const codasip_address_t addr,
        const Index bi = 0,
        const Index bc = T::BPW);
    void dwrite(const typename T::data_type data,
        const codasip_address_t addr,
        const Index bi = 0,
        const Index bc = T::BPW);
    Status request(const int command,
        const codasip_address_t addr,
        const Index bi = 0,
        const Index bc = T::BPW);
    template <class R>
    Response finish(const int command, R& data);
    template <class IR, class OR>
    Response finish(const int command, IR& idata, OR& odata);
    void invalidate(const codasip_address_t addr);
    void invalidate_all(const codasip_address_t addr);
    void flush(const codasip_address_t addr);
    void flush_all(const codasip_address_t addr);

    /** \} */

    void blocking(Payload<typename T::data_type>& p) override;
    void request(Payload<typename T::data_type>& p) override;
    void finish(Payload<typename T::data_type>& p) override;

    /// \copydoc ResourceInfo::GetUid
    Uid GetUid() const override;
    /// \copydoc ResourceInfo::GetName
    const std::string& GetName() const override;
    /// \copydoc ResourceInfo::GetBitWidth
    unsigned GetBitWidth() const override;
    /// \copydoc AddressableInfo::GetLAU
    unsigned GetLAU() const override;
    /// \copydoc AddressableInfo::GetAddrBitWidth
    unsigned GetAddrBitWidth() const override;
    /// \copydoc AddressableInfo::IsBig
    bool IsBig() const override;
    /// \copydoc InterfaceInfo::GetFlag
    Flag GetFlag() const override;

protected:
    void blocking_cb(Payload<typename T::data_type>& p) override;
    void request_cb(Payload<typename T::data_type>& p) override;
    void finish_cb(Payload<typename T::data_type>& p) override;

    const M* get_module() const;

private:
    /// Payload for helper functions
    Payload<typename T::data_type> m_Payload;
    /// Owning module
    M* m_Module;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T, class M, class S>
inline Interface<T, M, S>::Interface(const std::string& name, const Uid uid, M* module)
  : T(name, uid),
    m_Module(module)
{}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T, class M, class S>
RES_INLINE void Interface<T, M, S>::load(const typename T::data_type data,
    const codasip_address_t addr,
    const Index bi,
    const Index bc)
{
    m_Payload.reset();

    m_Payload.set_command(CP_CMD_LOAD);
    m_Payload.set_address(addr);
    m_Payload.set_bi(bi);
    m_Payload.set_bc(bc);
    m_Payload.set_data(data);
    this->blocking(m_Payload);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T, class M, class S>
RES_INLINE typename T::data_type
Interface<T, M, S>::read(const codasip_address_t addr,
    const Index bi,
    const Index bc)
{
    #ifdef IFACE_DBG_OUT
    std::cout << this->get_signature() << ": read addr: " << addr << std::endl;
	#endif

    m_Payload.reset();

    m_Payload.set_command(CP_CMD_READ);
    m_Payload.set_address(addr);
    m_Payload.set_bi(bi);
    m_Payload.set_bc(bc);
    this->blocking(m_Payload);
    #ifdef IFACE_DBG_OUT
    std::cout << this->get_signature() << ": read data: " << m_Payload.get_data() << std::endl;
	#endif
    return m_Payload.get_data();
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T, class M, class S>
RES_INLINE typename T::data_type
Interface<T, M, S>::dread(const codasip_address_t addr,
    const Index bi,
    const Index bc)
{
    #ifdef IFACE_DBG_OUT
    std::cout << this->get_signature() << " iface::dread: " << addr << std::endl;
	#endif
    m_Payload.reset();
    m_Payload.set_command(CP_CMD_DREAD);
    m_Payload.set_address(addr);
    m_Payload.set_bi(bi);
    m_Payload.set_bc(bc);
    this->blocking(m_Payload);
    return m_Payload.get_data();
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T, class M, class S>
RES_INLINE void Interface<T, M, S>::write(const typename T::data_type data,
    const codasip_address_t addr,
    const Index bi,
    const Index bc)
{
    #ifdef IFACE_DBG_OUT
    std::cout << this->get_signature() << ": write addr: " << addr << std::endl;
	#endif

    m_Payload.reset();

    m_Payload.set_command(CP_CMD_WRITE);
    m_Payload.set_address(addr);
    m_Payload.set_bi(bi);
    m_Payload.set_bc(bc);
    m_Payload.set_data(data);
    this->blocking(m_Payload);
    #ifdef IFACE_DBG_OUT
    std::cout << this->get_signature() << ": write data: " << m_Payload.get_data() << std::endl;
	#endif
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T, class M, class S>
RES_INLINE void Interface<T, M, S>::dwrite(const typename T::data_type data,
    const codasip_address_t addr,
    const Index bi,
    const Index bc)
{
    m_Payload.reset();

    m_Payload.set_command(CP_CMD_DWRITE);
    m_Payload.set_address(addr);
    m_Payload.set_bi(bi);
    m_Payload.set_bc(bc);
    m_Payload.set_data(data);
    this->blocking(m_Payload);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T, class M, class S>
RES_INLINE Status Interface<T, M, S>::request(const int command,
    const codasip_address_t addr,
    const Index bi,
    const Index bc)
{
    m_Payload.reset();

    m_Payload.set_command(static_cast<Command>(command));
    m_Payload.set_address(addr);
    m_Payload.set_bi(bi);
    m_Payload.set_bc(bc);
    this->request(m_Payload);

    #ifdef IFACE_DBG_OUT
    std::cout << this->get_signature() << ": request: "
        << "address: "<< addr << ", "
        << "data: "<< m_Payload.get_data() << ", "
        << "bi: "<< m_Payload.get_bi() << ", "
        << "bc: "<< m_Payload.get_bc() << ", "
        << "command: "<< m_Payload.get_command() << ", "
        << "specifier: "<< m_Payload.get_specifier() << ", "
        << "uid: "<< m_Payload.get_uid() << ", "
        << "response: "<< m_Payload.get_response() << ", "
        << "status: "<< m_Payload.get_status() << ", "
        << std::endl;
    #endif

    return m_Payload.get_status();
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T, class M, class S>
template<class R>
RES_INLINE Response Interface<T, M, S>::finish(const int command, R& data)
{
    return finish(command, data, data);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T, class M, class S>
template <class IR, class OR>
RES_INLINE Response Interface<T, M, S>::finish(const int command, IR& idata, OR& odata)
{
    m_Payload.set_command(static_cast<Command>(command));
    // output -> prepare data
    if (command == CP_CMD_WRITE ||
        command == CP_CMD_FLUSH ||
        command == CP_CMD_FLUSH_ALL)
    {
        m_Payload.set_data(odata.read());
    }
    // transaction
    this->finish(m_Payload);
    // input -> store data
    if (command == CP_CMD_READ ||
        command == CP_CMD_INVALIDATE ||
        command == CP_CMD_INVALIDATE_ALL)
    {
        idata.write(m_Payload.get_data());
    }
    // return response
    return m_Payload.get_response();
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T, class M, class S>
RES_INLINE void Interface<T, M, S>::invalidate(const codasip_address_t addr)
{
    #ifdef IFACE_DBG_OUT
    std::cout << this->get_signature() << ": invalidate addr: " << addr << std::endl;
	#endif
    m_Payload.reset();
    m_Payload.set_command(CP_CMD_INVALIDATE);
    m_Payload.set_address(addr);
    this->blocking(m_Payload);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T, class M, class S>
RES_INLINE void Interface<T, M, S>::invalidate_all(const codasip_address_t addr)
{
    #ifdef IFACE_DBG_OUT
    std::cout << this->get_signature() << ": invalidate all addr: " << addr << std::endl;
	#endif
    m_Payload.reset();
    m_Payload.set_command(CP_CMD_INVALIDATE_ALL);
    m_Payload.set_address(addr);
    this->blocking(m_Payload);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T, class M, class S>
RES_INLINE void Interface<T, M, S>::flush(const codasip_address_t addr)
{
    #ifdef IFACE_DBG_OUT
    std::cout << this->get_signature() << ": flush addr: " << addr << std::endl;
	#endif
    m_Payload.reset();
    m_Payload.set_command(CP_CMD_FLUSH);
    m_Payload.set_address(addr);
    this->blocking(m_Payload);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T, class M, class S>
RES_INLINE void Interface<T, M, S>::flush_all(const codasip_address_t addr)
{
    #ifdef IFACE_DBG_OUT
    std::cout << this->get_signature() << ": flush all addr: " << addr << std::endl;
	#endif
    m_Payload.reset();
    m_Payload.set_command(CP_CMD_FLUSH_ALL);
    m_Payload.set_address(addr);
    this->blocking(m_Payload);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T, class M, class S>
RES_INLINE void Interface<T, M, S>::blocking(Payload<typename T::data_type>& p)
{
    blocking_cb(p);
    this->handle_blocking_cb(p);
    T::blocking_d(p);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T, class M, class S>
RES_INLINE void Interface<T, M, S>::request(Payload<typename T::data_type>& p)
{
    request_cb(p);
    this->handle_request_cb(p);
    T::request_d(p);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T, class M, class S>
RES_INLINE void Interface<T, M, S>::finish(Payload<typename T::data_type>& p)
{
    finish_cb(p);
    this->handle_finish_cb(p);
    T::finish_d(p);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T, class M, class S>
RES_INLINE void Interface<T, M, S>::blocking_cb(Payload<typename T::data_type>& p)
{
    #ifdef IFACE_DBG_OUT
    std::cout << this->get_uid() << ": Mem blocking: "
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

    T::blocking(p);
    if (m_Module)
    {
        S::blocking_cb(*m_Module, p, this->get_uid());
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T, class M, class S>
RES_INLINE void Interface<T, M, S>::request_cb(Payload<typename T::data_type>& p)
{
    T::request(p);
    if (m_Module)
    {
        S::request_cb(*m_Module, p, this->get_uid());
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T, class M, class S>
RES_INLINE void Interface<T, M, S>::finish_cb(Payload<typename T::data_type>& p)
{
    T::finish(p);
    if (m_Module)
    {
        S::finish_cb(*m_Module, p, this->get_uid());
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T, class M, class S>
RES_INLINE const M* Interface<T, M, S>::get_module() const
{
    return m_Module;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T, class M, class S>
RES_INLINE Uid Interface<T, M, S>::GetUid() const
{
    return T::get_uid();
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T, class M, class S>
RES_INLINE const std::string& Interface<T, M, S>::GetName() const
{
    return T::get_name();
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T, class M, class S>
RES_INLINE unsigned Interface<T, M, S>::GetBitWidth() const
{
    return T::WORD_BITS;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T, class M, class S>
RES_INLINE unsigned Interface<T, M, S>::GetLAU() const
{
    return T::BYTE_BITS;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T, class M, class S>
RES_INLINE unsigned Interface<T, M, S>::GetAddrBitWidth() const
{
    return T::ADDR_BITS;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T, class M, class S>
RES_INLINE bool Interface<T, M, S>::IsBig() const
{
    return T::ENDIANNESS == CP_BIG_ENDIAN;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T, class M, class S>
RES_INLINE simulator::InterfaceInfo::Flag Interface<T, M, S>::GetFlag() const
{
    return FLAG_RW;
}

}   // namespace resources
}   // namespace codasip

#endif  // SIMULATORS2_RESOURCES_CSR_INTERFACE_H_
