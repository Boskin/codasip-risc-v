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
 *  \author Hons
 *  \date   10. 5. 2016
 *  \brief  Declaration/Implementation of the class.
 */

#ifndef SIMULATORS2_SIMBASE_SIMULATOR_LOG_H_
#define SIMULATORS2_SIMBASE_SIMULATOR_LOG_H_

#include <vector>
#include <sstream>
#include "codasip_interface.h"
#include "compiler.h"

/// Syntax sugar for logging
#define LOG(log, logType, verbosity) \
    if (log.Header(logType, verbosity)) LogMessage(log).Stream()

namespace codasip {
namespace simulator {
/**
 *  \class  Log
 *  \brief  Class managing logging for single simulator
 */
class Log
{
public:
    /// Constructor
    Log(SimulatorInterface* simulator = nullptr);
    /// Destructor
    ~Log();

    /**
     *  \brief Start new log message. If logging for given log type and its type is enabled, true
     *         is returned and message header is created. Otherwise no header is created and false is
     *         returned
     */
    bool Header(const LogType logType, const uint32_t type);
    /**
     *  \brief Finish currently creating log message
     *  \note  Priority of output: Output stream (\ref SetOutputStream), debugger, cout/cerr
     */
    void Dispatch();
    /**
     *  \brief Set output stream
     */
    void SetOutputStream(std::ostream& out);
    /**
     *  \brief Enable given types/verbosity for give log type.
     *  \param logType Logging type whose enabled types will be changed.
     *  \param flags String describing new logging types. Format:
     *         0,1,2-3,4-,5+:
     *         0  : enable single type
     *         2-3: enable range
     *         4- : disable single type
     *         5+ : enable all types from 5 up including 5
     */
    void SetLogging(const LogType logType, const std::string& flags);
    /**
     *  \brief Set debugger
     */
    void SetDebugger(DebuggerInterface* dbg);
    /**
     *  \brief Set debugger
     */
    void SetParentLog(Log& log);
    /**
     *  \brief  Accessor to internal stream. Used in LogMessage
     */
    std::ostringstream& Stream();
    /**
     *  \brief  Return last error message
     */
    const std::string& GetLastError() const;

private:
    /**
     *  \brief Start new log message of given log type and level.
     */
    void PrintHeader(const LogType logType, const uint32_t type);

    /// Associated simulator. Is pointer so this class can be unittested
    SimulatorInterface* m_Simulator;
    /// Associated debugger
    DebuggerInterface* m_Debugger;
    /// Associated output stream
    std::ostream* m_Output;
    /// Parent simulator Log instance. Used to traverse error messages up
    Log* m_ParentLog;

    /// True if newline should be added if logging message doesn't end on one
    bool m_AutoNewline;
    /// Last successfully created header log type
    LogType m_LastLogType;
    /// Last error message
    std::string m_LastError;

    /// Array of vectors determining if given type/verbosity is enabled for given log type (array index)
    std::vector<bool> m_EnabledType[LOG_TYPE_ERROR - LOG_TYPE_INFO + 1];
    /// Array of bools determining if types after those described in \ref m_EnabledType are enabled or not
    bool m_RestEnabled[LOG_TYPE_ERROR - LOG_TYPE_INFO + 1];
    /// Stream where new log message is created
    std::ostringstream m_Stream;
    /// Default state (showbase, hex, dec, ...) for stream
    std::ios m_StreamDefaultState;
};

/**
 *  \class  LogMessage
 *  \brief  Helper for constructing log message using stream operator <<
 */
class LogMessage
{
public:
    /// Constructor
    explicit LogMessage(Log& logger);
    /// Destructor. Will log the message
    ~LogMessage();
    /**
     * \brief Return internal stream
     */
    std::ostream& Stream();

private:
    Log& m_Logger;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
inline std::ostringstream& Log::Stream()
{
    return m_Stream;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline LogMessage::LogMessage(Log& logger)
  : m_Logger(logger)
{}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline LogMessage::~LogMessage()
{
    m_Logger.Dispatch();
}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline std::ostream& LogMessage::Stream()
{
    return m_Logger.Stream();
}

////////////////////////////////////////////////////////////////////////////////////////////////////
FORCE_INLINE bool Log::Header(const LogType logType, const uint32_t type)
{
    // invalid log type
    if (logType > LOG_TYPE_FATAL)
    {
        return false;
    }

    // print shares the enalbes with info
    LogType logType4enable = logType == LOG_TYPE_PRINT ? LOG_TYPE_INFO : logType;
    if (logType4enable >= LOG_TYPE_INFO && logType4enable <= LOG_TYPE_ERROR)
    {
        auto& enabled = m_EnabledType[logType4enable-LOG_TYPE_INFO];

        // given log type/verbosity is disabled
        if (type < enabled.size())
        {
            if (!enabled[type])
            {
                return false;
            }
        }
        // no information found for given type/verbosity, so use m_RestEnabled
        else
        {
            if (!m_RestEnabled[logType4enable-LOG_TYPE_INFO])
            {
                return false;
            }
        }
    }

    PrintHeader(logType, type);
    return true;
}

}   // namespace simulator
}   // namespace codasip

#endif  // SIMULATORS2_SIMBASE_SIMULATOR_LOG_H_
