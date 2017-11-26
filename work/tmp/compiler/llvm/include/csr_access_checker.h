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

#ifndef SIMULATORS2_RESOURCES_CSR_ACCESS_CHECKER_H_
#define SIMULATORS2_RESOURCES_CSR_ACCESS_CHECKER_H_

#include "csr_helpers.h"
#include "csr_payload.h"

#include "csr_sentinel.h"   // Logging
#include "number_cast.h"

namespace codasip {
namespace resources {

/**
 *  \addtogroup SIMULATOR
 *  \{
 *  \class  AccessChecker
 *  \brief
 *  \}
 */
template<class T>
class AccessChecker : public T
{
public:
    /**
     * \copydoc Sentinel::Sentinel
     */
    AccessChecker(const std::string& name, const Uid uid);
    /**
     * \{
     * \copydoc VariableStorage::read
     */
    typename T::data_type read(const codasip_address_t addr = 0) const;
    /**
     * \}
     * \{
     * \copydoc VariableStorage::write
     */
    void write(const typename T::data_type data, const codasip_address_t addr = 0);
    /**
     * \copydoc PayloadSentinel::request
     */
    void request(Payload<typename T::data_type>& p);
    /**
     * \copydoc PayloadSentinel::finish
     */
    void finish(Payload<typename T::data_type>& p);
    /**
     * \{
     * \brief Reset counters
     */
    void reset();
    void clock_cycle();
    /**
     * \}
     * \brief Enable or disable
     * \param checkerLevel Variable with the level
     */
    void set_checker_level(const Index& checkerLevel);
    /**
     * \brief Set maximum of reads and writes in one clock cycle
     * \param read Maximum for reads (0 is unlimited)
     * \param read Maximum for writes (0 is unlimited)
     */
    void set_max(const Index read, const Index write);
private:

    static const unsigned REQUEST_MAX = 1;
    static const unsigned FINISH_MAX = 1;
    static const unsigned WRITE_MAX = 1;

    bool is_enabled() const;
    void log_read(const Index cnt) const;
    void log_write(const Index cnt) const;
    void log_request(const Index cnt) const;
    void log_finish(const Index cnt) const;

    /// Count of read access in current cycle
    Index m_ReadMax;
    /// Count of write access in current cycle
    Index m_WriteMax;
    /// Count of read access in current cycle
    mutable Index m_Read;
    /// Count of write access in current cycle
    mutable Index m_Write;
    /// Count of request access in current cycle
    mutable Index m_Request;
    /// Count of finish access in current cycle
    mutable Index m_Finish;
    /// local variable protecting accesses
    const Index* m_CheckerLevel;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline AccessChecker<T>::AccessChecker(const std::string& name, const Uid uid)
  : T(name, uid),
    m_ReadMax(0),
    m_WriteMax(WRITE_MAX),
    m_Read(0),
    m_Write(0),
    m_Request(0),
    m_Finish(0),
    m_CheckerLevel(NULL)
{}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
RES_INLINE typename T::data_type
AccessChecker<T>::read(const codasip_address_t addr) const
{
    // check if checker is enabled
    if (is_enabled())
    {
        if (m_ReadMax && ++m_Read > m_ReadMax)
        {
            log_read(m_Read);
        }
    }
    return T::read(addr);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
RES_INLINE void
AccessChecker<T>::write(const typename T::data_type data, const codasip_address_t addr)
{
    // check if checker is enabled
    if (is_enabled())
    {
        if(m_WriteMax && ++m_Write > m_WriteMax)
        {
            log_write(m_Write);
        }
    }
    T::write(data, addr);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
RES_INLINE void AccessChecker<T>::request(Payload<typename T::data_type>& p)
{
    if (is_enabled())
    {
        if (++m_Request > REQUEST_MAX)
        {
            log_request(m_Request);
        }
    }
    return T::request(p);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
RES_INLINE void AccessChecker<T>::finish(Payload<typename T::data_type>& p)
{
    if (is_enabled())
    {
        if (++m_Finish > FINISH_MAX)
        {
            log_finish(m_Finish);
        }
    }
    return T::finish(p);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline void AccessChecker<T>::reset()
{
    m_Read = 0;
    m_Write = 0;
    m_Request = 0;
    m_Finish = 0;
    T::reset();
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
RES_INLINE void AccessChecker<T>::clock_cycle()
{
    m_Read = 0;
    m_Write = 0;
    m_Request = 0;
    m_Finish = 0;
    T::clock_cycle();
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline void AccessChecker<T>::set_checker_level(const Index& checkerLevel)
{
    m_CheckerLevel = &checkerLevel;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline void AccessChecker<T>::set_max(const Index read, const Index write)
{
    m_ReadMax = read;
    m_WriteMax = write;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
RES_INLINE bool AccessChecker<T>::is_enabled() const
{
    return m_CheckerLevel != NULL && (*m_CheckerLevel) == 0;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline void AccessChecker<T>::log_read(const Index cnt) const
{
    RES_LOG(LOG_TYPE_WARNING, 0) << "'" << this->get_signature()
        << "' has been read multiple times "
        << "in one clock. Read count: " << cnt
        << ". Allowed count:" << m_ReadMax;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline void AccessChecker<T>::log_write(const Index cnt) const
{
    RES_LOG(LOG_TYPE_WARNING, 0) << "'" << this->get_signature()
        << "' has been written multiple times "
        << "in one clock. Write count: " << cnt
        << ". Allowed count:" << m_WriteMax;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline void AccessChecker<T>::log_request(const Index cnt) const
{
    RES_LOG(LOG_TYPE_WARNING, 0) << "'" << this->get_signature()
        << "' has been requested multiple times "
        << "in one clock. Request count: " << cnt
        << ". Allowed count:" << REQUEST_MAX;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline void AccessChecker<T>::log_finish(const Index cnt) const
{
    RES_LOG(LOG_TYPE_WARNING, 0) << "'" << this->get_signature()
        << "' has been finished multiple times "
        << "in one clock. Finish count: " << cnt
        << ". Allowed count:" << FINISH_MAX;
}

}   // namespace resources
}   // namespace codasip



#endif  // SIMULATORS2_RESOURCES_CSR_ACCESS_CHECKER_H_
