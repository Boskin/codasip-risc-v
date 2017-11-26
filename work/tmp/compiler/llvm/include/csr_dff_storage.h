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

#ifndef SIMULATORS2_RESOURCES_CSR_DFF_STORAGE_H_
#define SIMULATORS2_RESOURCES_CSR_DFF_STORAGE_H_

#include "csr_hashmap.h"
#include "csr_helpers.h"
#include "csr_sentinel.h"
#include "csr_storage_sentinel.h"

#include <type_traits>

namespace codasip {
namespace resources {

/**
 *  \addtogroup SIMULATOR
 *  \{
 *  \class  DffStorage
 *  \brief
 *  \}
 */
template<class T, codasip_address_t _Size = 1>
class DffStorage : public StorageSentinel<T, _Size>
{
public:
    /// \copydoc  Storage<T, _Size>::type
    typedef typename StorageSentinel<T, _Size>::data_type data_type;
    /// \copydoc  Storage<T, _Size>::ADDR_BITS
    static const Index ADDR_BITS =  StorageSentinel<T, _Size>::ADDR_BITS;
    /// \copydoc  Storage<T, _Size>::WORD_BITS
    static const Index WORD_BITS =  StorageSentinel<T, _Size>::WORD_BITS;
    /// \copydoc  Storage<T, _Size>::BYTE_BITS
    static const Index BYTE_BITS =  StorageSentinel<T, _Size>::BYTE_BITS;
    /// \copydoc  Storage<T, _Size>::BPW
    static const Index BPW =  StorageSentinel<T, _Size>::BPW;
    /// \copydoc  Storage<T, _Size>::SIZE
    static const codasip_address_t SIZE = StorageSentinel<T, _Size>::SIZE;

    /**
     * \copydoc Sentinel::Sentinel
     */
    DffStorage(const std::string& name, const Uid uid);
    /**
     * \{
     * \brief Read value
     * \param addr Address to the storage
     */
    data_type read(const codasip_address_t addr = 0) const;
    data_type dread(const codasip_address_t addr = 0) const;
    /**
     * \}
     * \{
     * \brief Write data to the storage
     * \param data New data
     * \param addr Address to the storage
     */
    void write(const data_type data, const codasip_address_t addr = 0);
    void dwrite(const data_type data, const codasip_address_t addr = 0);
    /**
     * \}
     * \brief Initialize the value
     */
    void reset();
    /**
     * \brief Do nothing, only for nice printing
     */
    void clock_cycle();
    /**
     * \brief Stall the value to the next clock cycle
     */
    void stall();
    /**
     * \brief Clear the value to the next clock cycle
     */
    void clear();
    /**
     * \brief Signalizes that the clock was gated
     */
    void gated();
private:

    /// data itself
    data_type m_DataQ[SIZE];
    data_type m_DataD[SIZE];
    /// pipeline handling
    bool m_Stall;
    bool m_Clear;
    bool m_Gated;
};

template <class T, codasip_address_t _Size>
inline DffStorage<T, _Size>::DffStorage(const std::string& name, const Uid uid)
   : StorageSentinel<T, _Size>(name, uid),
     m_Stall(false),
     m_Clear(false),
     m_Gated(false)
{
    if (std::is_arithmetic<data_type>::value)
    {
        ::memset(m_DataQ, 0, sizeof(data_type) * SIZE);
        ::memset(m_DataD, 0, sizeof(data_type) * SIZE);
    }
}

template <class T, codasip_address_t _Size>
RES_INLINE typename DffStorage<T, _Size>::data_type
DffStorage<T, _Size>::read(const codasip_address_t addr) const
{
    return dread(addr);
}

template <class T, codasip_address_t _Size>
RES_INLINE typename DffStorage<T, _Size>::data_type
DffStorage<T, _Size>::dread(const codasip_address_t addr) const
{
    // addressable, check the address
    if (SIZE > 1)
    {
        return m_DataQ[this->get_address(addr)];
    }
    // no address, no checking
    return m_DataQ[0];
}

template <class T, codasip_address_t _Size>
RES_INLINE void
DffStorage<T, _Size>::write(const data_type data,
    const codasip_address_t addr)
{
    // addressable, check the address
    if (SIZE > 1)
    {
        m_DataD[this->get_address(addr)] = data;
        return;
    }
    // no address, no checking
    m_DataD[0] = data;
}

template <class T, codasip_address_t _Size>
RES_INLINE void
DffStorage<T, _Size>::dwrite(const data_type data,
    const codasip_address_t addr)
{
    // addressable, check the address
    if (SIZE > 1)
    {
        m_DataQ[this->get_address(addr)] = m_DataD[this->get_address(addr)] = data;
        return;
    }
    // no address, no checking
    m_DataQ[0] = m_DataD[0] = data;
}

template <class T, codasip_address_t _Size>
RES_INLINE void DffStorage<T, _Size>::reset()
{
    if (SIZE == 1)
    {
        dwrite(this->get_default_value());
    }
    else
    {
        for (codasip_address_t ii = 0; ii < SIZE; ++ii)
        {
            dwrite(this->get_default_value(), ii);
        }
    }
}

template <class T, codasip_address_t _Size>
RES_INLINE void DffStorage<T, _Size>::clock_cycle()
{
    if (m_Gated)
    {
        std::copy_n(m_DataQ, SIZE, m_DataD);
        m_Clear = m_Stall = m_Gated = false;
        return;
    }
    // clear has the highest priority
    if (m_Clear)
    {
        reset();
        m_Clear = m_Stall = false;
        return;
    }

    if (m_Stall)
    {
        std::copy_n(m_DataQ, SIZE, m_DataD);
        m_Stall = false;
        return;
    }
    // standard write
    std::copy_n(m_DataD, SIZE, m_DataQ);
}

template <class T, codasip_address_t _Size>
RES_INLINE void DffStorage<T, _Size>::stall()
{
    m_Stall = true;
}

template <class T, codasip_address_t _Size>
RES_INLINE void DffStorage<T, _Size>::clear()
{
    m_Clear = true;
}

template <class T, codasip_address_t _Size>
RES_INLINE void DffStorage<T, _Size>::gated()
{
    m_Gated = true;
}

}   // namespace resources
}   // namespace codasip

#endif  // SIMULATORS2_RESOURCES_CSR_DFF_STORAGE_H_
