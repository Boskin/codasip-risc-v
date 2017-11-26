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

#ifndef SIMULATORS2_RESOURCES_CSR_SENTINEL_H_
#define SIMULATORS2_RESOURCES_CSR_SENTINEL_H_

#include "csr_helpers.h"
#include "number_cast.h"
#include "simulator_log.h"

// Helper
#define RES_LOG(logType, type) LOG(this->get_log(), simulator::logType, type)

namespace codasip {
namespace resources {
using simulator::LogMessage;

/**
 *  \addtogroup SIMULATOR
 *  \{
 *  \class  Sentinel
 *  \brief  Basic class that holds name of the resource and uid
 *  \}
 */
class Sentinel
{
public:
    Sentinel(const std::string& name, const Uid uid);
    /**
     * \{
     * \brief Getter
     */
    const std::string& get_signature() const;
    const std::string& get_name() const;
    Uid get_uid() const;
    simulator::Log& get_log() const;
    /** \} */
    void set_log(simulator::Log& log);

private:
    /// Signature of the resource = level.resource_name
    std::string m_Signature;
    /// Name of resource = resource_name
    std::string m_Name;
    /// Uid of the resource
    Uid m_Uid;
    /// Log
    mutable simulator::Log* m_Log;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
inline Sentinel::Sentinel(const std::string& name, const Uid uid)
  : m_Signature(name),
    m_Uid(uid),
    m_Log(nullptr)
{
    auto pos = name.rfind('.');
    if (pos == std::string::npos)
    {
        m_Name = name;
    }
    else
    {
        m_Name = name.substr(pos+1);
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////
RES_INLINE const std::string& Sentinel::get_signature() const
{
    return m_Signature;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
RES_INLINE const std::string& Sentinel::get_name() const
{
    return m_Name;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
RES_INLINE Uid Sentinel::get_uid() const
{
    return m_Uid;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
RES_INLINE simulator::Log& Sentinel::get_log() const
{
    // if this resource is used outside of simulator (e.g. custom golden_models), use single
    // default logger
    static simulator::Log g_Log;
    return m_Log ? *m_Log : g_Log;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
RES_INLINE void Sentinel::set_log(simulator::Log& log)
{
    m_Log = &log;
}

}   // namespace resources
}   // namespace codasip

#endif  // SIMULATORS2_RESOURCES_CSR_SENTINEL_H_
