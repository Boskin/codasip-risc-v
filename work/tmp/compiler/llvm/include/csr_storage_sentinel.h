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

#ifndef SIMULATORS2_RESOURCES_CSR_STORAGE_SENTINEL_H_
#define SIMULATORS2_RESOURCES_CSR_STORAGE_SENTINEL_H_

#include "csr_helpers.h"
#include "csr_sentinel.h"

namespace codasip {
namespace resources {

/**
 *  \addtogroup SIMULATOR
 *  \{
 *  \class  codasip::resources::Storage
 *  \brief
 *  \}
 */
template<class T, codasip_address_t _Size>
class StorageSentinel : public Sentinel
{
public:
    /// Typedef for used data type
    typedef T data_type;

    static const Index ADDR_BITS = BitWidthSelector<_Size - 1>::value;
    static const Index WORD_BITS =  BitWidthTypeSelector<T>::value;
    static const Index BYTE_BITS =  WORD_BITS;
    static const Index BPW = WORD_BITS / BYTE_BITS;
    static const codasip_address_t SIZE = _Size;

    StorageSentinel(const std::string& name, const Uid uid);
    /**
     * \brief Truncate address to the correct boundaries
     */
    static codasip_address_t get_address(const codasip_address_t);
    /**
     * \brief Set default value
     * \param defaultValue Default value
     */
    void set_default_value(const data_type defaultValue);
    /**
     * \brief Return default value
     */
    data_type get_default_value() const;
protected:

    /// default value for reset and clear
    data_type m_DefaultValue;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, codasip_address_t _Size>
inline StorageSentinel<T, _Size>::StorageSentinel(const std::string& name, const Uid uid)
  : Sentinel(name, uid),
    m_DefaultValue(0)
{}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, codasip_address_t _Size>
RES_INLINE codasip_address_t
StorageSentinel<T, _Size>::get_address(const codasip_address_t addr)
{
    // fix the maximum address
    return IsPowerOf2Selector<SIZE>::value
        // aligned
        ? ((addr << (sizeof(codasip_address_t) * CHAR_BIT - ADDR_BITS)) >>
            (sizeof(codasip_address_t) * CHAR_BIT - ADDR_BITS))
        // bas size
        : addr % SIZE;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, codasip_address_t _Size>
inline void
StorageSentinel<T, _Size>::set_default_value(const data_type defaultValue)
{
    m_DefaultValue = defaultValue;
}


template <class T, codasip_address_t _Size>
RES_INLINE typename StorageSentinel<T, _Size>::data_type
StorageSentinel<T, _Size>::get_default_value() const
{
    return m_DefaultValue;
}

}   // namespace resources
}   // namespace codasip

#endif  // SIMULATORS2_RESOURCES_CSR_STORAGE_SENTINEL_H_
