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
 *  \brief   Part of assembler
 *  \author  Adam Husar
 *  \date    Jan 1, 2009
 */

#if !defined(EA_715E1F37_34A9_44f7_BDB4_2F0E5B63EDA4__INCLUDED_)
#define EA_715E1F37_34A9_44f7_BDB4_2F0E5B63EDA4__INCLUDED_

#include <vector>

#include "asmstdinclude.h"


namespace codasip {
namespace assembler {


class AsmSection;


// This structure represents one item from the debug line information table.
// Is one member of the following relation:
// (nFileNum, nFileNameid) -> (nSectNum, nRelAddr).
struct SAsmLineInfo
{
public:
    // initialize this structure's members to invalid values.
    SAsmLineInfo()
: nLineNum(-1), nFileNameIdx(-1), nSectNum(-1), nRelAddr(-1) {}

    SAsmLineInfo(
        const int anLineNum, const int anFileNameIdx,
        const int anSectNum, const exprval_t anRelAddr)
    : nLineNum(anLineNum), nFileNameIdx(anFileNameIdx),
      nSectNum(anSectNum), nRelAddr(anRelAddr) {}

public:
    // Original source file line number.
    int nLineNum;

    // Original file name index, name as string can be retrieved using LogicalFileInfo.
    int nFileNameIdx;

    // Section number to which this line info belongs.
    int nSectNum;

    // Relative address from the beginning of section with number nSectNum.
    exprval_t nRelAddr;

public:
    void DebugPrint(FILE* fout, const int nIndent);

};

class AsmSymbol;

// This class holds all line debug informations. Is one of intermediate code tables.
// DataAndFixupStoreUnit stores new information here.
// Is used by ObjFileTransfUnit to store line debug information to the resulting
// object file.
class AsmLineInfoTable
{
public:
    ~AsmLineInfoTable()
    {
        for (size_t i = 0; i < line_infos.size(); i++)
            delete line_infos[i];
    }

    // Adds new line information to the line info table, table becomes owner of this object
    void Add(SAsmLineInfo* newInfo)
    { line_infos.push_back(newInfo); }

    size_t Count() const
    { return line_infos.size(); }

    // TODO unused?
    SAsmLineInfo* GetLineInfo(const size_t nIdx) const;

    // Append new compilation unit into .codasip_line section that contains information from this
    void GenerateDebugLineSectionContents();

    void DebugPrint(FILE* fout);

private:
    std::vector<SAsmLineInfo*> line_infos;

    // for line info generation
    void AppendChar(const char c);
    void AppendStringZero(const std::string str);
    void AppendNumAsStringZero(const int num);
    void AppendRelocation(AsmSymbol& symbol);
    AsmSymbol& CreateSectionStartPseudoSymbol(const int section);

    void GenerateHeader(const size_t section_index);
    void GenerateLineInfo(const size_t section_info_begin, const size_t section_info_end);

    void SetHeaderLength(int start, int end);


    // used by GenerateDebugLineSectionContents, valid only if
    // function GenerateDebugLineSectionContents is called
    AsmSection* target_section;
    int byte_size;
};

}   // codasip::assembler
}   // codasip

#endif // !defined(EA_715E1F37_34A9_44f7_BDB4_2F0E5B63EDA4__INCLUDED_)
