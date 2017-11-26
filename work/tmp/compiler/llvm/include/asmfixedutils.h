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
 *  \brief   This file contains some auxiliary functions that are used in the fixed assembler part.
 *  \author  Adam Husar
 *  \date    Jan 1, 2009
 */

#ifndef _ASMFIXEDUTILS_H_
#define _ASMFIXEDUTILS_H_

#include <string>
#include <vector>

#include "asmstdinclude.h"
#include "asmsection.h"
#include "asmfixupinfo.h"
#include "bundlingunit.h"


namespace codasip {
namespace assembler {


/**
 *  \brief Sets s to be a std::string that contains exactly indent space characters.
 *         TODO use GetIndent()
 *  \param[out] res
 *  \param[in] indent in spaces
 */
void CreateIndent(std::string& res, const int indent);

/**
 *  \brief It is this way, because of speed? FIXME Adam?
 *  \param[in] src
 */
inline std::string ReverseStr(const std::string& src)
{
    std::string res;
    res.reserve(src.size());

    for (size_t i = 0; i < src.size(); i++)
    {
        res += src[src.size() - 1 - i];
    }

    return res;
}

/**
 *  \brief Converts 8-bit value to binary std::string
 *  \param[in] src
 *  \param[in] byteSize
 */
std::string ByteToBin(unsigned char src, const size_t byteSize = 8);
/**
 *  \brief Converts ascii std::string to binary data
 *  \param[in] src
 *  \param[in] byteSize
 */
std::string AsciiToBin(const std::string src, const size_t byteSize = 8);
/**
 *  \brief Convert array of characters to binary data std::string
 *  \param[in] src
 *  \param[in] size
 *  \param[in] byteSize
 */
std::string AsciiToBin(const char* src, const size_t size, const size_t byteSize = 8);
/**
 *  \brief Converts 64-bit value to big-endian binary std::string, does not care about signedness,
 *         truncate if needed
 *  \param[in] src
 *  \param[in] bitWidth
 */
std::string NumToBin(exprval_t src, size_t bitWidth);
const exprval_t BinToNum(const std::string& src, const bool isSigned = false);

// some auxiliary functions
std::vector<char> LongLongToLebBytes(const bool isSigned, long long int value);
std::string NumToLebBin(const bool isSigned, long long int value);

}   // codasip::assembler
}   // codasip

#endif  // _ASMFIXEDUTILS_H_
