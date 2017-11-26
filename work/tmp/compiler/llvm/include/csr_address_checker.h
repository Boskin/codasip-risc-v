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

#ifndef SIMULATORS2_RESOURCES_CSR_ADDRESS_CHECKER_H_
#define SIMULATORS2_RESOURCES_CSR_ADDRESS_CHECKER_H_

#include "csr_helpers.h"
#include "csr_payload.h"

#include "csr_sentinel.h"   // Logging

#include <climits>

namespace codasip {
namespace resources {

/**
 *  \addtogroup SIMULATOR
 *  \{
 *  \class  AddressChecker
 *  \brief
 *  \}
 */
template<class T>
class AddressChecker : public T
{
public:
    /**
     * \copydoc Sentinel::Sentinel
     */
    AddressChecker(const std::string& name, const Uid uid);
    /**
     * \{
     * \copydoc VariableStorage::read
     */
    typename T::data_type read(const codasip_address_t addr) const;
    typename T::data_type dread(const codasip_address_t addr) const;
    /**
     * \}
     * \{
     * \copydoc VariableStorage::write
     */
    void write(const typename T::data_type data, const codasip_address_t addr);
    void dwrite(const typename T::data_type data, const codasip_address_t addr);
    /**
     * \copydoc PayloadSentinel::blocking
     */
    void blocking(Payload<typename T::data_type>& p);
    /**
     * \copydoc PayloadSentinel::request
     */
    void request(Payload<typename T::data_type>& p);
    /**
     * \copydoc PayloadSentinel::finish
     */
    void finish(Payload<typename T::data_type>& p);
private:

    void CheckAddress(const codasip_address_t, const Index, const Index, const bool = false) const;
    void log_bc(const Index bi, const Index bc) const;
    void log_oor(const codasip_address_t addr) const;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline AddressChecker<T>::AddressChecker(const std::string& name, const Uid uid)
  : T(name, uid)
{}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
RES_INLINE typename T::data_type
AddressChecker<T>::read(const codasip_address_t addr) const
{
    CheckAddress(addr, 0, 1, true);
    return T::read(addr);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
RES_INLINE typename T::data_type
AddressChecker<T>::dread(const codasip_address_t addr) const
{
    CheckAddress(addr, 0, 1);
    return T::dread(addr);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
RES_INLINE void
AddressChecker<T>::write(const typename T::data_type data, const codasip_address_t addr)
{
    CheckAddress(addr, 0, 1, true);
    T::write(data, addr);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
RES_INLINE void
AddressChecker<T>::dwrite(const typename T::data_type data,
    const codasip_address_t addr)
{
    CheckAddress(addr, 0, 1);
    T::dwrite(data, addr);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
RES_INLINE void AddressChecker<T>::blocking(Payload<typename T::data_type>& p)
{
    CheckAddress(p.get_address(), p.get_bi(), p.get_bc(), true);
    T::blocking(p);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
RES_INLINE void AddressChecker<T>::request(Payload<typename T::data_type>& p)
{
    CheckAddress(p.get_address(), p.get_bi(), p.get_bc());
    T::request(p);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
RES_INLINE void AddressChecker<T>::finish(Payload<typename T::data_type>& p)
{
    CheckAddress(p.get_address(), p.get_bi(), p.get_bc());
    T::finish(p);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
RES_INLINE void AddressChecker<T>::CheckAddress(const codasip_address_t addr,
    const Index bi,
    const Index bc,
    const bool endOnError) const
{
    // check bi and bc
    if (bi + bc > T::BPW)
    {
        log_bc(bi, bc);
        if (endOnError)
        {
            throw exceptions::BasicError(
                "Aborted simulation, fatal error when accessing "
                "'" + this->get_signature() + "'");
        }
    }
    // maximum, there is no way to get overflow
    if (T::ADDR_BITS == sizeof(codasip_address_t) * CHAR_BIT)
    {
        return;
    }
    if (addr >= T::SIZE)
    {
        log_oor(addr);
        if (endOnError)
        {
            throw exceptions::BasicError(
                "Aborted simulation, fatal error when accessing "
                "'" + this->get_signature() + "'");
        }
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline void AddressChecker<T>::log_bc(const Index bi, const Index bc) const
{
    RES_LOG(LOG_TYPE_ERROR, 0) << "'" << this->get_signature() << "': Combination of "
        << "byte index (" << bi << ") and byte count (" << bc << ") in not allowed. "
        << "Bytes per word is " << T::BPW << ".";
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline void AddressChecker<T>::log_oor(const codasip_address_t addr) const
{
    RES_LOG(LOG_TYPE_ERROR, 0) << "'" << this->get_signature() << "': Address '0x"
        << std::hex << addr << "' is out-of-range, Max address is '0x" << (T::SIZE - 1) << "'.";
}

}   // namespace resources
}   // namespace codasip

#endif  // SIMULATORS2_RESOURCES_CSR_ADDRESS_CHECKER_H_
