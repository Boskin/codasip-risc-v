/**
 * Codasip Ltd
 *
 * CONFIDENTIAL
 *
 * Copyright 2014 Codasip Ltd
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
 *  \author Martin Ministr
 *  \date   2016-08-29
 *  \brief  Declaration of the class codasip::assembler::Messages.
 */

#ifndef MESSAGESL_CODASIP_ASSEMBLER_MESSAGES_H_
#define MESSAGESL_CODASIP_ASSEMBLER_MESSAGES_H_

#include <memory>

#include "singleton.h"

#include "assembler_message_printer.h"
#include "assembler_err_messages.h"
#include "assembler_wrn_messages.h"
#include "assembler_note_messages.h"

namespace codasip {

// Forward declaration
class Messages;

}   // namespace codasip

namespace codasip {
namespace assembler {

class Messages : public Singleton<Messages>
{
    SINGLETON(Messages);

public:
    /**
     *  \brief  Print message to output.
     *  \param  messageList List of messages to print.
     */
    void Print(const MessageList& messageList);

    bool HasError() const;
    size_t GetErrorCount() const;
    size_t GetWarningCount() const;

    inline bool IgnoreWarningOverflow() const;
    inline void SetIgnoreWarningOverflow(const bool value);

    void PrintFinalResume() const;

private:
    /// Message system implementation
    std::unique_ptr<codasip::Messages> m_Messages;
    /// TODO delete when more systematic solution is created
    bool m_IgnoreWarningOverflow;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
inline bool Messages::IgnoreWarningOverflow() const
{
    return m_IgnoreWarningOverflow;
}

inline void Messages::SetIgnoreWarningOverflow(const bool value)
{
    m_IgnoreWarningOverflow = value;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
/**
 * \brief Used for throwing an exception that signals about occurred error. Just catch it and exit.
 */
class AssemblerError : public std::exception
{
public:
    AssemblerError();
    AssemblerError(const int exitCode);

    bool HasExitCode() const;
    int GetExitCode() const;

    virtual const char* what() const throw()
    {
        return "An error occurred in assembler.";
    }

private:
    bool m_HasExitCode;
    int m_ExitCode;
};

}   // namespace codasip::assembler
}   // namespace codasip

#endif // MESSAGESL_CODASIP_ASSEMBLER_MESSAGES_H_
