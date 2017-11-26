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
 *  \date   Apr 27, 2016
 *  \brief  Declaration/Implementation of the class.
 */

#ifndef SIMULATORS2_RESOURCES_CSR_FVE_INTERFACE_H_
#define SIMULATORS2_RESOURCES_CSR_FVE_INTERFACE_H_

#include "csr_helpers.h"
#include "csr_payload.h"

namespace codasip {
namespace resources {

template <class T>
class FveInterface : public T
{
public:
    FveInterface(const std::string& name, const Uid uid);

    void blocking(Payload<typename T::data_type>& p);

    const Payload<typename T::data_type>& get_payload() const;
    /**
     *  \brief  Clear previously stored payload data.
     */
    void reset();

private:
    /// Request payload
    Payload<typename T::data_type> m_Payload;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline FveInterface<T>::FveInterface(const std::string& name, const Uid uid)
  : T(name, uid)
{}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline void FveInterface<T>::blocking(Payload<typename T::data_type>& p)
{
    T::blocking(p);
    // has to be after T::blocking because we need target's response
    m_Payload = p;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline const Payload<typename T::data_type>& FveInterface<T>::get_payload() const
{
    return m_Payload;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline void FveInterface<T>::reset()
{
    m_Payload.reset();
}

}   // namespace resources
}   // namespace codasip

#endif  // SIMULATORS2_RESOURCES_CSR_FVE_INTERFACE_H_
