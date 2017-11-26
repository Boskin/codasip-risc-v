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

#ifndef BUNDLINGUNIT_H_
#define BUNDLINGUNIT_H_

#include <vector>

#include "asmfixupinfo.h"
#include "bundling_int.h"


namespace codasip {
namespace assembler {


//forward declarations
class AsmSection;
class AsmSectionTable;
class AsmFixupInfoTable;
class AsmLineInfoTable;


/**
 *  \brief One instruction with its fixups
 */
class InstrWithFixups
{
public:
    typedef std::vector<FixupInfo> Fixups;
    typedef Fixups::iterator FixupsIt;
    typedef Fixups::const_iterator FixupsCIt;

    InstrWithFixups(const std::string& data, const std::vector<FixupInfo>& fixups)
      : m_Data(data),
        m_Fixups(fixups)
    {}

    InstrWithFixups()
    {}

    inline const std::string& GetData() const;
    inline size_t GetSize() const;
    inline const Fixups& GetFixups() const;
    inline FixupsIt FixupsBegin();
    inline FixupsIt FixupsEnd();
    inline FixupsCIt FixupsBegin() const;
    inline FixupsCIt FixupsEnd() const;

    inline void AddFixup(const FixupInfo& fixup);
    inline void SetData(const std::string& data);
    inline void SetFixups(const Fixups& fixups);

    /**
     *  \brief Prints debug information about this instruction with fixup info into a file.
     */
    void DebugPrint(FILE* fout) const;

private:
    /// instruction coding
    std::string m_Data;
    /// relocations over instruction
    Fixups m_Fixups;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
inline const std::string& InstrWithFixups::GetData() const
{
    return m_Data;
}

inline size_t InstrWithFixups::GetSize() const
{
    return m_Data.size();
}

inline const InstrWithFixups::Fixups& InstrWithFixups::GetFixups() const
{
    return m_Fixups;
}

inline InstrWithFixups::FixupsIt InstrWithFixups::FixupsBegin()
{
    return m_Fixups.begin();
}

inline InstrWithFixups::FixupsIt InstrWithFixups::FixupsEnd()
{
    return m_Fixups.end();
}

inline InstrWithFixups::FixupsCIt InstrWithFixups::FixupsBegin() const
{
    return m_Fixups.begin();
}

inline InstrWithFixups::FixupsCIt InstrWithFixups::FixupsEnd() const
{
    return m_Fixups.end();
}

inline void InstrWithFixups::AddFixup(const FixupInfo& fixup)
{
    m_Fixups.push_back(fixup);
}

inline void InstrWithFixups::SetData(const std::string& data)
{
    m_Data = data;
}

inline void InstrWithFixups::SetFixups(const Fixups& fixups)
{
    m_Fixups.clear();
    m_Fixups.insert(m_Fixups.begin(), fixups.begin(), fixups.end());
}

////////////////////////////////////////////////////////////////////////////////////////////////////
/**
 *  \brief Accepts data from InstrCoderUnit and after optional bundling stores it into the section
 *         and fixup table
 */
class BundlingUnit
{
public:
    BundlingUnit(AsmSectionTable& sectionTable, AsmFixupInfoTable& fixupTable,
        AsmLineInfoTable& lineInfoTable)
  : m_SectionTable(sectionTable),
    m_FixupTable(fixupTable),
    m_LineInfoTable(lineInfoTable)
{}

    /**
     *  \brief Called from InstrCoderUnit, instructions is a vector of single instructions together
     *         with relocation info. Together they form one bundle that is located on line srcLine.
     *  \param[in, out] instructions
     *  \param[out] bundleAlignEnd information for bundling that the next instruction is jump target
     *  \param[out] srcLine
     */
    void AppendInstrs(std::vector<InstrWithFixups>& instructions, const bool bundleAlignEnd,
        const int srcLine);

private:
    bool FixupCrossesParcelBoundary(const FixupInfo& fixup, const size_t parcelBits);
    void FixParcelBytes(InstrWithFixups& instr, const AsmSection& section);

    FixupInfo* CreateNewFixupInfo(const FixupInfo& copyFixupInfo, const int shift);

    void AppendInstrsNonBundle(std::vector<InstrWithFixups>& instructions, const int srcLine);
    bool IsContinuousFixup(const FixupInfo& src, const BundlingBitInfo::Content& res,
        const size_t index) const;
    void AppendInstrsBundleGenerated(const std::vector<InstrWithFixups>& instructions,
        const bool bundleAlignEnd, const int srcLine);

    AsmSectionTable& m_SectionTable;
    AsmFixupInfoTable& m_FixupTable;
    AsmLineInfoTable& m_LineInfoTable;
};

}   // codasip::assembler
}   // codasip

#endif  // BUNDLINGUNIT_H_
