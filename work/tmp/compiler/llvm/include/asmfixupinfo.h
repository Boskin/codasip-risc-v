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
 *  \brief   This file contains fixup information table definition - class CAsmFixupTable. This
 *           table holds fixup information using structure FixupInfo.
 *  \author  Adam Husar
 *  \date    Jan 1, 2009
 */

#if !defined(EA_E12DC628_0DC5_4a64_89AC_D52BED64ECA7__INCLUDED_)
#define EA_E12DC628_0DC5_4a64_89AC_D52BED64ECA7__INCLUDED_

#include <string>
#include <vector>

#include "enumutils.h"
#include "location.h"

#include "asmstdinclude.h"


namespace codasip {
namespace assembler {


class AsmSymbol;


/// This class holds information about one fixup.
class FixupInfo : public Location
{
public:
    /// used to store information for overflow checking when fixup performing
    CODASIP_ENUM_CLASS_STR(Signedness,
        (DONT_CARE, "dont care"),
        (SIGNED, "signed"),
        (UNSIGNED, "unsigned")
    );

    FixupInfo();

    FixupInfo(AsmSymbol& apSymbol, const size_t anFixupBytes, const size_t anLowBit,
        const size_t anLastBit, const exprval_t anAddr, const size_t anSectNum,
        const Signedness asignType, const bool abIsRelative = false, const exprval_t anOffset = 0,
        const int anRShift = 0, const bool abUseMask = false, const exprval_t anMask = 0);

    AsmSymbol& GetSymbol() const;
    inline size_t GetFixupBytes() const;
    inline size_t GetFirstBit() const;
    inline size_t GetFirstBitInstrRelative() const;
    inline size_t GetLastBit() const;
    inline size_t GetLastBitInstrRelative() const;
    inline exprval_t GetAddress() const;
    inline int GetSectionNum() const;
    inline Signedness GetSignType() const;
    inline bool IsRelative() const;
    inline exprval_t GetOffset() const;
    inline int GetRShift() const;
    inline bool UseMask() const;
    inline exprval_t GetMask() const;

    inline void SetSymbol(AsmSymbol& symbol);
    inline void SetFixupBytes(const size_t fixupBytes);
    inline void SetFirstBit(const size_t firstBit);
    inline void SetFirstBitInstrRelative(const size_t firstBitInstrRelative);
    inline void SetLastBit(const size_t lastBit);
    inline void SetLastBitInstrRelative(const size_t lastBitInstrRelative);
    inline void SetAddress(const exprval_t address);
    inline void SetSectionNum(const int sectionNum);
    inline void SetSignType(const Signedness signType);
    inline void SetRelative(const bool relative);
    inline void SetOffset(const exprval_t offset);
    inline void SetRShift(const int RShift);
    inline void SetUseMask(const bool useMask);
    inline void SetMask(const exprval_t mask);

    /**
     *  \brief Returns true if result could be calculated (source relocation symbol has known value)
     *         and relocation is not relative
     *         uses sign information to check overflow/underflow
     *         TODO: maybe add section name
     *  \param[out] res
     *  \param[in] overrideSrc
     *  \param[in] overrideValue
     *  \param[in] isMasked
     */
    bool CalculateFixupValue(std::string& res, const bool overrideSrc = false,
        const exprval_t overrideValue = 0, const bool isMasked = false);
    /**
     *  \brief Tries to calculate fixup value, if successful, then modifies according section data
     */
    bool PerformFixup();
    /**
     *  \brief TODO
     *         used in instruction coder unit
     *  \param[in, out] coding translated instruction coding
     *  \param[in] value
     */
    void SetFixupBitsBigEndian(std::string& coding, const std::string& value) const;
    /**
     *  \brief For debug printing
     */
    const std::string ToString() const;
    /**
     *  \brief Prints debug information this fixup info into a file.
     */
    void DebugPrint(FILE* fout, const int indent) const;

private:
    void TruncationWarning(const bool isSigned, const exprval_t orig, const std::string& res);

    /// result value to be stored is always calculated like this:
    /// relative (IsRelative() is true): value(Symbol) - CURRENT_ADDRESS + Offset >> RShift && Mask
    /// absolute (IsRelative() is false): value(Symbol) + Offset >> RShift && Mask
    /// mask is applied only if UseMask() is true

    /// Pointer to symbol whose value will be used when performing fixups.
    AsmSymbol* m_Symbol;

    /// count of bytes for a fixup
    size_t m_FixupBytes;

    /// Index of lowest bit of word where fixup must be performed. Counted from MSB and from 0.
    size_t m_FirstBit;
    size_t m_FirstBitInstrRelative;

    /// Index of lowest bit of word where fixup must be performed. Counted from MSB and from 0.
    size_t m_LastBit;
    size_t m_LastBitInstrRelative;

    /// Address of word in section with number nSectNum where this fixup must be performed.
    exprval_t m_Address;

    /// Index of section to which this fixup info is related.
    int m_SectionNum;

    /// Is true, when in the CODING section was attribute defined as
    /// signed bit field (using 0bsx). Otherwise false.
    /// For constant data is set to don't care
    /// Used to check overflows/underflows when truncating signed value
    Signedness m_SignType;

    /// Is this fixup absolute or relative?
    /// Used when attribute is defined as relative using the CURRENT_ADDRESS construction.
    /// (used mainly for relative jump instructions)
    bool m_Relative;

    /// Value that will be added to original relocated value
    exprval_t m_Offset;

    /// Right shift value
    int m_RShift;

    /// Mask
    bool m_UseMask;
    exprval_t m_Mask;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
inline size_t FixupInfo::GetFixupBytes() const
{
    return m_FixupBytes;
}

inline size_t FixupInfo::GetFirstBit() const
{
    return m_FirstBit;
}

inline size_t FixupInfo::GetFirstBitInstrRelative() const
{
    return m_FirstBitInstrRelative;
}

inline size_t FixupInfo::GetLastBit() const
{
    return m_LastBit;
}

inline size_t FixupInfo::GetLastBitInstrRelative() const
{
    return m_LastBitInstrRelative;
}

inline exprval_t FixupInfo::GetAddress() const
{
    return m_Address;
}

inline int FixupInfo::GetSectionNum() const
{
    return m_SectionNum;
}

inline FixupInfo::Signedness FixupInfo::GetSignType() const
{
    return m_SignType;
}

inline bool FixupInfo::IsRelative() const
{
    return m_Relative;
}

inline exprval_t FixupInfo::GetOffset() const
{
    return m_Offset;
}

inline int FixupInfo::GetRShift() const
{
    return m_RShift;
}

inline bool FixupInfo::UseMask() const
{
    return m_UseMask;
}

inline exprval_t FixupInfo::GetMask() const
{
    return m_Mask;
}

inline void FixupInfo::SetSymbol(AsmSymbol& symbol)
{
    m_Symbol = &symbol;
}

inline void FixupInfo::SetFixupBytes(const size_t fixupBytes)
{
    m_FixupBytes = fixupBytes;
}

inline void FixupInfo::SetFirstBit(const size_t firstBit)
{
    m_FirstBit = firstBit;
}

inline void FixupInfo::SetFirstBitInstrRelative(const size_t firstBitInstrRelative)
{
    m_FirstBitInstrRelative = firstBitInstrRelative;
}

inline void FixupInfo::SetLastBit(const size_t lastBit)
{
    m_LastBit = lastBit;
}

inline void FixupInfo::SetLastBitInstrRelative(const size_t lastBitInstrRelative)
{
    m_LastBitInstrRelative = lastBitInstrRelative;
}

inline void FixupInfo::SetAddress(const exprval_t address)
{
    m_Address = address;
}

inline void FixupInfo::SetSectionNum(const int sectionNum)
{
    m_SectionNum = sectionNum;
}

inline void FixupInfo::SetSignType(const Signedness signType)
{
    m_SignType = signType;
}

inline void FixupInfo::SetRelative(const bool relative)
{
    m_Relative = relative;
}

inline void FixupInfo::SetOffset(const exprval_t offset)
{
    m_Offset = offset;
}

inline void FixupInfo::SetRShift(const int RShift)
{
    m_RShift = RShift;
}

inline void FixupInfo::SetUseMask(const bool useMask)
{
    m_UseMask = useMask;
}

inline void FixupInfo::SetMask(const exprval_t mask)
{
    m_Mask = mask;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
/**
 *  \brief This class serves as fixup information table.
 *         Is contained in SInterCodeTables global object g_Tables.
 */
class AsmFixupInfoTable
{
public:
    ~AsmFixupInfoTable();

    /**
     *  \brief Returns fixup info with specified index. Fails if index is out of range.
     *  \param[in] index
     */
    FixupInfo& GetFixupInfo(const size_t index);
    size_t GetSize() const;

    /**
     *  \brief Add, table becomes owner of object to which points pInfo.
     *  \param[in] info
     */
    void Add(FixupInfo& info);

    void DebugPrint(FILE* fout);

private:
    std::vector<FixupInfo*> m_Fixups;
};

}   // codasip::assembler
}   // codasip

#endif // !defined(EA_E12DC628_0DC5_4a64_89AC_D52BED64ECA7__INCLUDED_)
