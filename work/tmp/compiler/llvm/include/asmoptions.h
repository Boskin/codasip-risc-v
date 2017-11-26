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

#ifndef ASMOPTIONS_H_
#define ASMOPTIONS_H_

#include "asmstdinclude.h"

#include "singleton.h"


namespace codasip {
namespace assembler {


// globally accessible options

struct AddressSpaceInfo;

class AsmOptions : public Singleton<AsmOptions>
{
    SINGLETON(AsmOptions);

public:
    const std::string& GetInputFileName() const;
    const std::string GetInputFileNameAsSectionSuffix() const;
    bool GetStoreCommSymbolsToCurrentSection() const;
    bool GetRemoveTwoDotsFromId() const;
    int GetDebugLevel() const;
    bool GenerateRetvalInfo() const;
    int GetLEInstructionParcelBytes() const;

    // ******  Address spaces ******
    const char* GetDataSectionsAddressSpaceOverride() const;

    // these variables are set using values from asmtargetdefs.h when assembler starts
    // must be initialized currently from asmmain, because asmfixedl is built without generated information
    void InitAddressSpacesInfo(
        int default_section_wordsize_, int default_bytes_per_word_, bool default_little_endian_,
        int address_spaces_count_, const AddressSpaceInfo* address_space_infos_
    );

    // using information from m_DataSectionsAddressSpaceOverride and AddressSpaceInfo
    const AddressSpaceInfo& GetCodeAddressSpaceInfo();

    //int GetDataAddressSpaceIndex();
    const AddressSpaceInfo& GetDataAddressSpaceInfo();

    const AddressSpaceInfo& GetDebugAddressSpaceInfo();

    // autixliary function that select default endianess for dwarf
    bool DetermineIfDwarfAndElfEndianIsLittle();

    // returns address spaces in
    int GetAddressSpacesCount();
    const AddressSpaceInfo& GetAddressSpaceInfo(const unsigned addrSpaceIndex);

    const char* GetNonDefaultSymbolPrefix() const;
    const std::string GetLocalLabelPrefix() const;

    const char* GetNongenericAddressSpaceName(const unsigned addrSpaceIndex);

    bool IsHarvard();

    void SetInputFileName(const std::string& name);
    void SetUseInputFileNameAsSectionSuffix(const bool value);
    void SetStoreCommSymbolsToCurrentSection(const bool value);
    void SetRemoveTwoDotsFromId(const bool value);
    void SetKeepOutputName(const bool value);
    void SetDebugLevel(const int value);
    void SetNoRetvalInfo(const bool value);
    void SetLEInstructionParcelBytes(const int value);
    void SetHarvardCodeAddressSpace(const int value);
    void SetDataSectionsAddressSpaceOverride(const char* dataSectionsAddressSpaceOverride);
    void SetNonDefaultSymbolPrefix(const char* nonDefaultSymbolPrefix);

private:
    std::string m_InputFileName;
    /// use input file name to create section names
    bool m_UseInputFileNameAsSectionSuffix;

    /// if true, symbols defined as comm must be stored in the current section
    /// if false, these symbols are stored to .data section
    bool m_StoreCommSymbolsToCurrentSection;

    /// remove one of leading dots in an identifier
    bool m_RemoveTwoDotsFromId;

    /// do not modify output file name in case when just one object file is generated
    bool m_KeepOutputName;

    /// .codasip_line section is not generated if true
    int m_DebugLevel;

    /// when set to true, then return value information is not generated
    bool m_NoRetvalInfo;

    /// set to 0 if this value was not set
    int m_LEInstructionParcelBytes;

    /// for harvard architectures, this contains the code address space index
    int m_HarvardCodeAddressSpace;

    /// if not NULL, then contains name of memory map/address space to which all data sections must be placed
    /// if used, then also enables comm_to_data
    const char* m_DataSectionsAddressSpaceOverride;

    int m_DefaultSectionWordBitWidth;
    int m_DefaultBytesPerWord;
    bool m_DefaultLittleEndian;

    const AddressSpaceInfo* m_AddressSpaceInfos;
    int m_AddressSpacesCount;

    AddressSpaceInfo m_DebugAddressSpace;

    /// set to non-NULL value if symbol_prefix was specified
    const char* m_NonDefaultSymbolPrefix;
    /// prepared local label prefix
    std::string m_LocalLabelPrefix;
};


#define g_AsmOptions AsmOptions::Instance()


}   // codasip::assembler
}   // codasip

#endif /* ASMOPTIONS_H_ */
