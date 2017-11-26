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
 *  \brief   This file contains some important constants and datatypes.
 *  \author  Adam Husar
 *  \date    Jan 1, 2009
 */

#ifndef __ASMSTDINCLUDE_H__
#define __ASMSTDINCLUDE_H__

#include <vector>
#include <string>
#include <stdio.h>

#include "codasip_integer.h"
#include "enumutils.h"


namespace codasip {
namespace assembler {


// information about one address space,
// constant array g_AddressSpacesInfo is defined in generated asmmemoryinfo_gen.h
struct AddressSpaceInfo {
    inline int GetByteSize() const
    {
        return sect_wordsize / sect_bytes_per_word;
    }

    const char* name;
    int sect_wordsize;
    int sect_bytes_per_word;
    bool little_endian;
    bool is_default; // 0 - generic as
};


//data type used to express expression values
//may be sometimes used both as signed and unsigned
const unsigned int EXPRVAL_BITWIDTH_MIN = 1;
const unsigned int EXPRVAL_BITWIDTH_MAX = 256;
const bool EXPRVAL_IS_SIGNED = true;
const bool EXPRVAL_IS_UNSIGNED = false;

typedef codasip::Integer<EXPRVAL_BITWIDTH_MAX, EXPRVAL_IS_SIGNED> exprval_t;
typedef codasip::Integer<EXPRVAL_BITWIDTH_MAX, EXPRVAL_IS_UNSIGNED> uexprval_t;

const exprval_t EXPRVAL_SIGNED_MIN = (exprval_t)1 << (EXPRVAL_BITWIDTH_MAX - 1);    // 0x80...
const exprval_t EXPRVAL_SIGNED_MAX = ~((exprval_t)1 << (EXPRVAL_BITWIDTH_MAX - 1)); // 0x7F...
const exprval_t EXPRVAL_UNSIGNED_MIN = (exprval_t)0;                                // 0x00...
const exprval_t EXPRVAL_UNSIGNED_MAX = ~((exprval_t)0);                             // 0xFF...

const char* const LOCAL_LABEL_PREFIX = "@local_";
const char* const LOCAL_LABEL_PREFIX_NO_AT = "local_";

// numerical constant, token is created from T_BIN_CONST, T_OCT_CONST, T_DEC_CONST or T_HEX_CONST
const int T_NUM_CONST = 0x00100001;
// Token object with this ID represents a symbol from symbol table
const int T_SYMBOL = 0x00100002;

// indexes to generated asmmemoryinfo_gen.h structure - this ways are they generated
#define GENERIC_DATA_ADDRESS_SPACE 0 // default


// Invalid section number.
// Used in AsmSymbol and CExpr*** classes.
const int SECTION_NUMBER_UNDEFINED = -1;

enum DataDirectiveType
{
    DATA_DIRECTIVE_INVALID,
    DATA_DIRECTIVE_BYTE,
    DATA_DIRECTIVE_HWORD,
    DATA_DIRECTIVE_SHORT,
    DATA_DIRECTIVE_HALF,
    DATA_DIRECTIVE_WORD,
    DATA_DIRECTIVE_DWORD,
    DATA_DIRECTIVE_INT,
    DATA_DIRECTIVE_LONG,
    DATA_DIRECTIVE_2BYTE,
    DATA_DIRECTIVE_4BYTE,
    DATA_DIRECTIVE_QUAD
};

CODASIP_ENUM_CLASS_STR(SymbolDefinitionOperator,
    (AND_ASSIGN, "&="),
    (ADD_ASSIGN, "+="),
    (SUB_ASSIGN, "-="),
    (MUL_ASSIGN, "*="),
    (DIV_ASSIGN, "/="),
    (ASSIGN, "=")
);


// Ignores in lexical analyzer
enum IgnoreType
{
    IGNORE_NONE,
    IGNORE_CFI
};


const int SWITCH_ID_ENUM_INVALID_INDEX = 0;


const std::string DEFAULT_DIRECTIVE_ERR_MESSAGE = ".err directive invoked in source file.";
const std::string DEFAULT_DIRECTIVE_ERROR_MESSAGE = ".error directive invoked in source file.";
const std::string DEFAULT_DIRECTIVE_WARNING_MESSAGE = ".warning directive invoked in source file.";


}   // codasip::assembler
}   // codasip

#endif //__ASMSTDINCLUDE_H__
