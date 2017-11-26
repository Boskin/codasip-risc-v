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
 *  \date   Feb 22, 2016
 *  \brief  Declaration/Implementation of the class.
 */

#ifndef SIMULATORS2_RESOURCES_CSR_VARIABLE_STORAGE_H_
#define SIMULATORS2_RESOURCES_CSR_VARIABLE_STORAGE_H_

#include "csr_helpers.h"
#include "csr_sentinel.h"
#include "csr_storage_sentinel.h"

namespace codasip {
namespace resources {

/**
 *  \addtogroup SIMULATOR
 *  \{
 *  \class  VariableStorage
 *  \brief  Basic class holding data, it represents either single data or an array
 *  \}
 */
template<class T, codasip_address_t _Size = 1>
class VariableStorage : public StorageSentinel<T, _Size>
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
    VariableStorage(const std::string& name, const Uid uid);
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
     * \{
     * \brief Do nothing
     */
    void clock_cycle();
    void stall();
    void clear();
    void gated();
    /** \} */
private:
    /// data itself
    data_type m_Data[SIZE];
};

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, codasip_address_t _Size>
inline VariableStorage<T, _Size>::
VariableStorage(const std::string& name, const Uid uid)
  : StorageSentinel<T, _Size>(name, uid)
{
    if (std::is_arithmetic<data_type>::value)
    {
        ::memset(m_Data, 0, sizeof(T) * SIZE);
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, codasip_address_t _Size>
RES_INLINE typename VariableStorage<T, _Size>::data_type
VariableStorage<T, _Size>::read(const codasip_address_t addr) const
{
    return dread(addr);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, codasip_address_t _Size>
RES_INLINE typename VariableStorage<T, _Size>::data_type
VariableStorage<T, _Size>::dread(const codasip_address_t addr) const
{
    // addressable, check the address
    if (SIZE > 1)
    {
        return m_Data[this->get_address(addr)];
    }
    // no address, no checking
    return m_Data[0];
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, codasip_address_t _Size>
RES_INLINE void
VariableStorage<T, _Size>::write(const data_type data, const codasip_address_t addr)
{
    dwrite(data, addr);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, codasip_address_t _Size>
RES_INLINE void
VariableStorage<T, _Size>::dwrite(const data_type data, const codasip_address_t addr)
{
    // addressable, check the address
    if (SIZE > 1)
    {
        m_Data[this->get_address(addr)] = data;
        return;
    }
    // no address, no checking
    m_Data[0] = data;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, codasip_address_t _Size>
inline void
VariableStorage<T, _Size>::reset()
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

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, codasip_address_t _Size>
RES_INLINE void
VariableStorage<T, _Size>::clock_cycle()
{}

}   // namespace resources
}   // namespace codasip


#endif  // SIMULATORS2_RESOURCES_CSR_VARIABLE_STORAGE_H_
