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
 *  \author Potesil Josef
 *  \date   2014-10-22
 *  \brief  Provides functions and macros similar to assert that throw
 *          exceptions rather than calling exit. As a benefit, it stores
 *          filename and line number in exception message, where the exception
 *          occurred.
 */

#ifndef _CHECK_CONDITION_H_
#define _CHECK_CONDITION_H_

#include "codasip_exceptions.h"
#include "compiler.h"
#include <string>
#include <iostream>
#include <sstream>

namespace codasip {
namespace detail {
/**
 *  \brief  Writes to the given output stream filename and line number from
 *          where this function was called.
 *  \param  os  output stream
 *  \param  file filename
 *  \param  line line number
 */
inline std::ostream& CheckConditionHeader( std::ostream& os,
    const char* file, const int line )
{
// TODO: after Adam removes all asserts, switch to standarized NDEBUG define
#ifndef CODASIP_RELEASE_BUILD
    if (file != nullptr && line > 0)
    {
        os << file << "(" << line << "): ";
    }
#else
    UNUSED(file);
    UNUSED(line);
#endif
    return os;
}

/**
 *  \internal
 *  \class  ExceptionStream
 *  \brief  Class that stores stream used for exception message creation.
 */
template<class Exception = ::codasip::exceptions::BasicError>
class ExceptionStream : public Exception
{
public:
    /**
     *  \brief  Constructor.
     *  \param  file File name where exception has been raised.
     *  \param  line Line number where exception has been raised.
     *  \param  defaultError Default error message when no stream message has been provided.
     */
    ExceptionStream(const char* file,
        const int line,
        const std::string& defaultError = std::string());
    /**
     *  \brief  Constructor.
     *  \param  file File name where exception has been raised.
     *  \param  line Line number where exception has been raised.
     *  \param  cond mainly to distinguish for the previous constructor
     *  \param  conditionError Default error message when no stream message has been provided.
     */
    ExceptionStream(const char* file,
        const int line,
        const bool cond,
        const std::string& conditionError);
    /**
     *  \brief  Copy constructor.
     *  \param  other Object to copy.
     */
    ExceptionStream(const ExceptionStream& other);
    /**
     *  \brief  Do nothing.
     */
    ~ExceptionStream() throw();
    /**
     *  \brief  Return exception message.
     */
    const char* what() const throw();
    /**
     *  \{
     *  \brief  Support stream operators.
     */
    template <typename T>
    ExceptionStream& operator<<(T value);
    ExceptionStream& operator<<(std::ostream& (*f)(std::ostream&));
    /** \} */

private:
    /// Stream for message formating.
    mutable std::ostringstream m_Stream;
    /// Holds message converted from stream.
    mutable std::string m_MessageBuffer;
    /// Holds the string of the condition that raised this exception
    std::string m_ConditionError;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class Exception>
inline ExceptionStream<Exception>::ExceptionStream(const char* file,
    const int line,
    const std::string& defaultError)
  : m_MessageBuffer(defaultError)
{
    codasip::detail::CheckConditionHeader(m_Stream, file, line);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class Exception>
inline ExceptionStream<Exception>::ExceptionStream(const char* file,
    const int line,
    const bool cond, // mainly to distinguish for the previous constructor
    const std::string& conditionError)
  : m_ConditionError(conditionError)
{

    codasip::detail::CheckConditionHeader(m_Stream, file, line);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class Exception>
inline ExceptionStream<Exception>::ExceptionStream(const ExceptionStream& other)
  : Exception(other),
    m_Stream(other.m_Stream.str())
{}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class Exception>
inline ExceptionStream<Exception>::~ExceptionStream() throw()
{
#ifdef LLVM_NO_EXCEPTIONS
    llvm::errs() << "internal error: " << m_Stream.str();
#else
    // Print condition string of the message would be empty
    if (m_MessageBuffer == "")
    {
        m_Stream << m_ConditionError;
    }
#endif
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class Exception>
inline const char* ExceptionStream<Exception>::what() const throw()
{
    std::string streamMessage = m_Stream.str();
    if (!streamMessage.empty())
    {
        m_MessageBuffer = streamMessage + m_MessageBuffer;
        m_Stream.str("");
    }
    return m_MessageBuffer.c_str();
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class Exception>
template<typename T>
inline ExceptionStream<Exception>& ExceptionStream<Exception>::operator<<(T value)
{
    m_Stream << value;
    return *this;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class Exception>
inline ExceptionStream<Exception>& ExceptionStream<Exception>::operator<<(
    std::ostream& (*f)(std::ostream&))
{
    m_Stream << f;
    return *this;
}

}   // namespace codasip::detail
}   // namespace codasip


/**
 *  \addtogroup CODASIP_UTILITY
 *  \{
 */
/**
 *  \def    STD_COUT
 *  \brief  Access the standard output stream, but prints source file and line
 *          information at start. Should be used for debug outputs.
 */
#define STD_COUT ::codasip::detail::CheckConditionHeader(std::cout, __FILE__, __LINE__)
/**
 *  \def    STD_CERR
 *  \brief  Access the standard error stream, but prints source file and line
 *          information at start. Should be used for debug outputs.
 */
#define STD_CERR ::codasip::detail::CheckConditionHeader(std::cerr, __FILE__, __LINE__)
/**
 *  \def    THROW
 *  \param  exception Type of exception to be thrown
 *  \brief  Throws exception of type \p Exception with given message.
 */
#define THROW(exception) \
    throw ::codasip::detail::ExceptionStream<exception>(__FILE__, __LINE__)
/**
 *  \def    THROW_ERROR
 *  \brief  Throws codasip::exceptions::BasicError exception with given message.
 */
#ifndef LLVM_NO_EXCEPTIONS
#define THROW_ERROR() \
    throw ::codasip::detail::ExceptionStream<>(__FILE__, __LINE__)
#else
#define THROW_ERROR() \
    ::codasip::detail::ExceptionStream<>(__FILE__, __LINE__)
#endif
/**
 *  \def    THROW_DEFAULT_ERROR
 *  \brief  Throws codasip::exceptions::BasicError exception with default message.
 */
#ifndef LLVM_NO_EXCEPTIONS
#define THROW_DEFAULT_ERROR(message) \
    throw ::codasip::detail::ExceptionStream<>(__FILE__, __LINE__, message)
#else
#define THROW_DEFAULT_ERROR(message) \
    ::codasip::detail::ExceptionStream<>(__FILE__, __LINE__, message)
#endif
/**
 *  \def    THROW_ERROR_COND
 *  \brief  Throws codasip::exceptions::BasicError exception with given message and
 *          condition if nothing else would be printed.
 */
#ifndef LLVM_NO_EXCEPTIONS
#define THROW_ERROR_COND(cond, message) \
    throw ::codasip::detail::ExceptionStream<>(__FILE__, __LINE__, cond, message)
#else
#define THROW_ERROR_COND(cond, message) \
    ::codasip::detail::ExceptionStream<>(__FILE__, __LINE__, cond, message)
#endif
/**
 *  \def    THROW_GENERAL_ERROR
 *  \brief  Throws codasip::exceptions::CGeneralError exception with given message.
 */
#define THROW_GENERAL_ERROR(message) THROW_ERROR() << message
/**
 *  \def    CHECK_CONDITION
 *  \brief  Checks, if condition is true, otherwise throw exception
 *          codasip::exceptions::CGeneralError. It is replacement of
 *          standard assert macro.
 *  \sa     codasip::detail::CheckConditionStream
 *  \param  cond condition to check
 */
#define CHECK_CONDITION(cond) \
    if (!(cond)) THROW_DEFAULT_ERROR(#cond)
/**
 *  \def    CHECK_NOT_NULL
 *  \brief  Checks, if the pointer is not NULL, otherwise throw
 *          exception codasip::exceptions::CGeneralError. It is
 *          replacement of standard assert macro, but adds condition.
 *  \sa     codasip::detail::CheckConditionStream
 *  \param  pointer to check
 */
#define CHECK_NOT_NULL(pointer) \
    if (!pointer) THROW_DEFAULT_ERROR("Dereferencing NULL pointer '" #pointer "'.")
/**
 *  \def    CHECK_NOT_EMPTY
 *  \brief  Checks whether container is non-empty. If it is empty, throw an
 *          exception.
 *  \param  c source container to check
 */
#define CHECK_NOT_EMPTY(c) \
    if ((c).empty()) THROW_DEFAULT_ERROR("Missing informations, container '" #c "' is empty.")

/**
 *  \def    DEBUG_CONDITION
 *  \brief  Checks, if condition is true, otherwise throw exception.
 *          Working only in debug builds, in release no checks are done and
 *          call to DEBUG_CONDITION is completely removed
 *  \sa     codasip::detail::CheckConditionStream
 *  \param  cond condition to check
 */
#ifdef CODASIP_USE_ASSERTS
#define DEBUG_CONDITION(cond) CHECK_CONDITION(cond)
#else
#define DEBUG_CONDITION(cond) CHECK_CONDITION(true)
#endif

/** \} */   // end DOXYGEN group comment

#endif  // _CHECK_CONDITION_H_
