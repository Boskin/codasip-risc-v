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
 *  \brief   This is a class used to store line information using dwarf debug format
 *  \author  Adam Husar
 *  \date    Jan 1, 2009
 */

#ifndef DWARFLINEINFO_H_
#define DWARFLINEINFO_H_

#include <vector>
#include <map>
#include <string>

#include "asmstdinclude.h"
#include "loc_options.h"


namespace codasip {
namespace assembler {


class AsmSection;
class AsmSymbol;
class DwarfUtils;

class DwarfLineInfo
{
public:
    void AddFileInfo(const int file, const std::string& name);

    // TODO outdated comment
    // when bbDiscriminator is not -1, then this means basic_block discriminator options were used and bbDiscriminator
    // contains unique function BB index
    void AddLocInfo(const int fileno, const int lineno, const int column, const LocOptions& options);
    void GenerateDebugLineSectionContents();

    size_t GetFileCount() { return map_fileno_name.size(); } 

private:
    bool GenerateHeader();
    bool GenerateLineInfo();

    // append data to .debug_line section
    AsmSymbol& CreateTextStartPseudoSymbol();

    int GetAddressSizeBytes();

private:
    AsmSection* target_section;

    std::map<int, std::string> map_fileno_name;

    struct SLineInfo
    {
        SLineInfo(const exprval_t _address, const int _section,
            const int _file, const int _line, const int _column,
            const bool _basic_block, const bool _discriminator_set, const int _discriminator,
            const bool _prologue_end, const bool _epilogue_begin
        )
        : address(_address), section(_section), file(_file), line(_line), column(_column),
          basic_block(_basic_block), discriminator_set(_discriminator_set), discriminator(_discriminator),
          prologue_end(_prologue_end), epilogue_begin(_epilogue_begin)

        {}

        exprval_t address;
        int section; //TODO: may be different, but all sections must have the same properties
        int file;
        int line;
        int column;
        bool basic_block;
        bool discriminator_set;
        int discriminator; //valid only if discriminator_set is true
        bool prologue_end;
        bool epilogue_begin;
    };

    std::vector<SLineInfo> vec_line_infos;

    DwarfUtils* dwut;

};

//defined as a global singleton object
#define g_DwarfLineInfo GetDwarfLineInfoObj()
DwarfLineInfo& GetDwarfLineInfoObj();


}   // codasip::assembler
}   // codasip

#endif /* DWARFLINEINFO_H_ */
