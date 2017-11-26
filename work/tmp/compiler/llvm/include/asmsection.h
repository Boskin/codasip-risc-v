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
 *  \brief   This file contains definition of classes AsmSection and AsmSectionTable. They are
 *           used to store intermediate code between assembler passes.
 *  \author  Adam Husar, Martin Ministr
 *  \date    Jan 1, 2009
 */

#if !defined(EA_36653841_FA3C_436c_A142_1A9E9D2E216A__INCLUDED_)
#define EA_36653841_FA3C_436c_A142_1A9E9D2E216A__INCLUDED_

#include <cstdio>
#include <string>
#include <vector>

#include "asmfixupinfo.h"


namespace codasip {
namespace assembler {


/**
 * \brief Represents exactly one section. Is contained in AsmSectionTable.
 *        All sizes and addresses are in bytes, but the data are stored in words.
 *        All addresses are relative to the beginning of this section.
 *        TODO: allow switching of actual section
 */
class AsmSection
{
public:
    enum Type
    {
        TEXT,
        DATA,
        BSS,
        DEBUG,
        INFO
    };

    /// data type used to store values, one word is stored as one item
    typedef std::vector<std::string> Data;

    /**
     * \brief As arguments needs information about section.
     * \param[in] name
     * \param[in] type
     * \param[in] wordBitWidth
     * \param[in] bytesPerWord
     * \param[in] isLittleEndian
     * \param[in] addressSpace
     * \param[in] byteAlignment
     */
    AsmSection(const std::string& name, const Type type, const size_t wordBitWidth,
        const size_t bytesPerWord = 8, const bool isLittleEndian = false,
        const std::string& addressSpace = "", const size_t byteAlignment = 0);
    /**
     * \brief Second constructor version with address space.
     * \param[in] name
     * \param[in] type
     * \param[in] info
     * \param[in] byteAlignment
     */
    AsmSection(const std::string& name, const Type type, const AddressSpaceInfo& info,
        const size_t byteAlignment = 0);

    inline const std::string& GetName() const;
    inline Type GetType() const;
    inline size_t GetByteBitWidth() const;
    inline size_t GetWordBitWidth() const;
    inline size_t GetBytesPerWord() const;
    inline bool IsAbsoluteAddressSet() const;
    size_t GetAbsoluteAddress() const;
    inline bool IsLittleEndian() const;
    inline const std::string& GetAddressSpace() const;
    inline size_t GetByteAlignment() const;
    /**
     * \brief Get current byte address.
     */
    inline size_t GetCurrentAddress() const;
    /**
     * \brief Get size in target bytes.
     */
    size_t GetSize() const;
    inline bool HasPreviousSection() const;
    AsmSection& GetPreviousSection() const;

    void SetAbsoluteAddress(const size_t value);
    inline void SetBSSSize(const size_t value);
    inline void SetPreviousSection(AsmSection& previousSection);

    /**
     * \brief Appends data to this section and correctly places data accordingly to their endianess.
     * \param[in] data data are in big-endian
     */
    void AppendData(const Data& data);
    /**
     * \brief Appends data to this section and correctly places data accordingly to their endianess.
     * \param[in] word word is in big-endian
     * \warning Actually it is also used to append not whole words.
     */
    void AppendWord(const std::string& word);
    /**
     * \brief Simply append data without any checks, needed for fast fill.
     * \param[in] word is formed from zeroes and endian indenpendent
     */
    void AppendWordNoCheck(const std::string& word);
    /**
     * \brief Access to data array, index from 0 .. count of words - 1.
     *        BSS section returns zero byte.
     * \param[in] index
     */
    const std::string GetByteByIndex(const size_t index) const;
    /**
     * \brief Returns one word from specified address, address must be aligned.
     * \param[in] address
     */
    std::string GetWord(const size_t address) const;

    /**
     * \brief Sets one byte in a section.
     * \param[in] address
     * \param[in] data
     */
    void SetByte(const size_t address, const std::string& byte);
    /**
     * \brief Sets one word in this section on specified address, address must be aligned.
     * \param[in] address
     * \param[in] word
     */
    void SetWord(const size_t address, const std::string& word);
    /**
     * \brief Sets 32 bit value in a section, does not care about word boundaries,
     *        reverses endianess if needed, but does not modify words.
     * \param[in] address
     * \param[in] value
     */
    void Set32BitValue(const size_t address, const std::string& value);

    /**
     * \brief Sets specified data according to the section's endianess
     *        fails if the data are out of range
     *        method expects bin indices according to endianess and data must be as big endian
     * \param[in] startAddress
     * \param[in] lowBit
     * \param[in] highBit
     * \param[in] dataBigEndian
     */
    void SetFixupValue(size_t startAddress, size_t lowBit, size_t highBit,
        std::string dataBigEndian);
    /**
     * \brief Opposite to AsmSection::CreateSectionName.
     */
    std::string GetBaseSectionNameNoAs();
    std::string ReverseByEndianess(const std::string& word) const;
        /**
     * \brief New alignment can be only increased, new value must be a power of 2.
     *        The only exception are DWARF debug sections that have alignment 1.
     * \param[in] newByteAlignment
     */
    void UpdateByteAlignment(const size_t newByteAlignment);

    void DebugPrint(FILE* fout);

    /**
     * \brief Creates section name.
     * \param[in] name
     * \param[in] addressSpace
     */
    static std::string CreateSectionName(const std::string& name, const std::string& addressSpace);

    const std::string ToString() const;

private:
    size_t GetAddressToWordIndex(const size_t address) const;
    void SetWordBits(const size_t byteAddress, const size_t lowBit, const std::string& wordPart);

    void CheckBSSSection(const std::string& functionName);
    void CheckWordSizeAndAlignment(const size_t byteAlignment);

    /// section name
    std::string m_Name;
    /// section type
    Type m_Type;
    /// target byte bit-width, calculated in constructor
    size_t m_ByteBitWidth;
    /// target word bit-width
    size_t m_WordBitWidth;
    /// used for address calculation
    size_t m_BytesPerWord;
    /// section absolute address is set
    bool m_AbsoluteAddressSet;
    /// section absolute address
    size_t m_AbsoluteAddress;
    /// default is big endian
    bool m_LittleEndian;
    /// section address space to which it will be loaded
    std::string m_AddressSpace;
    /// byte alignment, must be a power of 2, set to m_BytesPerWord in constructors
    size_t m_ByteAlignment;
    /// section data
    Data m_Data;
    /// BSS section size in bytes, data are not maintained when section is BSS
    size_t m_BSSSize;
    /// only default section could have NULL
    AsmSection* m_PreviousSection;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
inline const std::string& AsmSection::GetName() const
{
    return m_Name;
}

inline AsmSection::Type AsmSection::GetType() const
{
    return m_Type;
}

inline size_t AsmSection::GetByteBitWidth() const
{
    return m_ByteBitWidth;
}

inline size_t AsmSection::GetWordBitWidth() const
{
    return m_WordBitWidth;
}

inline size_t AsmSection::GetBytesPerWord() const
{
    return m_BytesPerWord;
}

inline bool AsmSection::IsAbsoluteAddressSet() const
{
    return m_AbsoluteAddressSet;
}

inline bool AsmSection::IsLittleEndian() const
{
    return m_LittleEndian;
}

inline const std::string& AsmSection::GetAddressSpace() const
{
    return m_AddressSpace;
}

inline size_t AsmSection::GetByteAlignment() const
{
    return m_ByteAlignment;
}

inline size_t AsmSection::GetCurrentAddress() const
{
    return GetSize();
}

inline bool AsmSection::HasPreviousSection() const
{
    return m_PreviousSection != NULL;
}

inline void AsmSection::SetBSSSize(const size_t value)
{
    m_BSSSize = value;
}

inline void AsmSection::SetPreviousSection(AsmSection& previousSection)
{
    m_PreviousSection = &previousSection;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
class AsmSectionTable
{
public:
    AsmSectionTable();

    virtual ~AsmSectionTable();

    /**
     * \brief Returns index of newly added section.
     *        Section table becomes owner of this section.
     * \param[in] section new section
     * \param[in] switchToCurrent
     */
    int AddSection(AsmSection& section, const bool switchToCurrent = true);

    //return info about current section
    exprval_t GetCurrentAddress(const bool fromParser = false)
    { return GetCurrentSection(fromParser).GetCurrentAddress(); }

    int GetCurrentSectionIndex()
    { return m_CurrentSectionIndex; }

    void SetCurrentSectionIndex(const size_t idx);

    /**
     * \brief Section must be already present.
     * \param[in] section
     */
    void SetCurrentSection(AsmSection& section);

    //no section is actual - sets current section to NULL
    void UnsetCurrentSection();

    //returns NULL if not found
    AsmSection* FindSectionByName(const std::string& name);

    //appends data in big-endian to current section
    void AppendData(const AsmSection::Data& new_data)
    { GetCurrentSection().AppendData(new_data); }

    // word is in big-endian
    void AppendWord(const std::string& word)
    { GetCurrentSection().AppendWord(word); }

    size_t Count() const
    { return m_Sections.size(); }

    AsmSection* GetSection(const size_t nSectNum);
    size_t GetSectionIndex(const AsmSection* sect);

    bool HasCurrentSection() const;
    AsmSection& GetCurrentSection(const bool fromParser = false);

    void DebugPrint(FILE* fout);

private:
    /// current section index, we must be able to switch between sections
    int m_CurrentSectionIndex;
    std::vector<AsmSection*> m_Sections;
};


class DataAndFixupStoreUnit
{
public:
    // Appends data to current section and stores according fixup information
    // to fixups table.
    void AppendData(const AsmSection::Data& data, const std::vector<FixupInfo>& arrFixups);
};

}   // codasip::assembler
}   // codasip

#endif // !defined(EA_36653841_FA3C_436c_A142_1A9E9D2E216A__INCLUDED_)
