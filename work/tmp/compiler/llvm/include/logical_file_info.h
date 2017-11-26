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
 *  \author  Adam Husar, Martin Ministr
 *  \date    Jan 1, 2009
 */


#ifndef ASSEMBLER_LOGICAL_FILE_INFO_H_
#define ASSEMBLER_LOGICAL_FILE_INFO_H_

#include <string>
#include <vector>

#include "filesystem.h"
#include "location.h"


namespace codasip {
namespace assembler {


////////////////////////////////////////////////////////////////////////////////////////////////////
/**
 * \brief This class is used as file name storage and a line counter.
 *        It is used for error printing.
 * 
 *        File names and lines are set by AsmControlUnit and DirectiveHandlerUnit,
 *        lines are incremented by the generated lexical analyzer.
 * 
 *        Also serves as a container for compiled file names.
 */
class LogicalFileInfo
{
public:
    static int GetFileIndex();
    static int GetLine(const bool lexicalAnalyzer = true);
    static const std::string& GetFileName();
    /**
     * \brief Returns file name by it's index. Fails if no such file name exists.
     */
    static const std::string& GetFileName(const size_t index);
    /**
     * \brief Returns count of file names contained.
     */
    static int GetFileNamesCount();
    static Location GetLocation(const bool lexicalAnalyzer = false);

    static void SetFileName(const fs::Path& path);
    /**
     * \brief Increments current line number.
     */
    static void IncrementLine();
    static void SetLine(const int line);

private:
    typedef std::vector<std::string> FileNames;

    /// Current file index.
    static int m_FileIndex;
    /// Current line number.
    static int m_Line;
    /**
     * This array contains all used file names.
     * When adding new items, keys (identifiers) are generated from the count of items,
     * so do not remove any items from it.
     */
    static FileNames m_FileNames;
};

////////////////////////////////////////////////////////////////////////////////////////////////////

}   // codasip::assembler
}   // codasip

#endif  // ASSEMBLER_LOGICAL_FILE_INFO_H_
