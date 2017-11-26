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
 *  \brief   This file contains definition of a simple class SInterCodeTables that only contains
 *           intermediate code table objects. To gain access to these tables, use global object
 *           g_Tables.
 *  \author  Adam Husar
 *  \date    Jan 1, 2009
 */

#if !defined(EA_2A2E8F39_5904_4cab_947F_FFA8826E01A6__INCLUDED_)
#define EA_2A2E8F39_5904_4cab_947F_FFA8826E01A6__INCLUDED_

#include "asmstdinclude.h"
#include "asmsection.h"
#include "asm_symbol_table.h"
#include "asmfixupinfo.h"
#include "asmlineinfo.h"


namespace codasip {
namespace assembler {


// This is a simple class that contains classes and structures used to store
// intermediate code representation between pass one and two.
class SInterCodeTables
{
public:
    AsmSymbolTable symbolTable;
    AsmSectionTable sectTable;
    AsmFixupInfoTable fixupTable;
    AsmLineInfoTable lineInfoTable;
};


#define g_Tables GetTablesGlobObj()
SInterCodeTables& GetTablesGlobObj();


}   // codasip::assembler
}   // codasip

#endif // !defined(EA_2A2E8F39_5904_4cab_947F_FFA8826E01A6__INCLUDED_)
