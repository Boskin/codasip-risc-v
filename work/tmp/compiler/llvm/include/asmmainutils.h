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
 *  \brief  Part of assembler. This file contains some auxiliary functions that are used in the
 *          fixed assembler part.
 *  \author Adam Husar, Martin Ministr
 *  \date   Jan 1, 2009
 */

#ifndef _ASMMAINUTILS_H_
#define _ASMMAINUTILS_H_

#include <string>

#include "asmstdinclude.h"


namespace codasip {
namespace assembler {


/**
 * \brief Removes dollar character prefix from symbol name
 * \param[in] compilerSymbolName symbol name from compiler
 */
std::string RemoveSymbolPrefix(const std::string& compilerSymbolName);

bool CheckNumRange(const exprval_t& value, const exprval_t& min, const exprval_t& max);

/**
 * \brief Creates name of a pseudo-symbol using two numbers -
 *        usually line number and count of symbols in symbol table
 * \param[in] line program line
 */
const std::string CreatePseudoSymbolName(const int line = 0);


}   // codasip::assembler
}   // codasip

#endif  // _ASMMAINUTILS_H_
