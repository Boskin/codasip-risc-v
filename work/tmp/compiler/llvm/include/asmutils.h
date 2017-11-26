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
 *  \date   2014-10-14
 *  \brief  Declaration of the helper functions. Shared between assembler, asmdetl and semextr.
 */

#ifndef ASMUTILS_H
#define ASMUTILS_H


#include <string>


namespace codasip {


/**
 *  \brief Determines whether character c is decimal
 *  \param c character
 */
bool isDecimal(const char c);

/**
 *  \brief Determines whether string s is identifier
 *  \param s string
 */
bool isID(const std::string& s);

/**
 *  \brief Some Adam's ugly transformation function
 *  \param[in] str source string
 */
std::string TransformStringWithEscapeSequences(const std::string& str);


}   // namespace codasip

#endif
