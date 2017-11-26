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
 *  \author Zdenek Prikryl
 *  \date   6.4.2011
 *  \brief  Codasip Exceptions
 */


#ifndef CODASIP_EXCEPTIONS_H_
#define CODASIP_EXCEPTIONS_H_

// standard exceptions
#include <exception>
#include <string>

namespace codasip {
namespace exceptions {

// basic exception without message's prefix
class BasicError : public std::exception
{
public:
    ~BasicError() throw()
    {}

    BasicError( const std::string& msg = "Unknown error" )
      : m_Message( msg )
    {}

    virtual const char* what() const throw()
    {
        return m_Message.c_str();
    }

protected:
    std::string m_Message;
};

//! Obecna vyjimka.
// TODO: completely remove CGeneralError
typedef BasicError CGeneralError;

}   // namespace codasip::exceptions
}   // namespace codasip

#endif /*CODASIP_EXCEPTIONS_H_*/
