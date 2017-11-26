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
 *  \author Zdenek Prikryl
 *  \date   Apr 3, 2013
 *  \brief
 */

#ifndef _DSMUTILS_H_
#define _DSMUTILS_H_

#include "disassembler.h"
#include "optionsdsm.h"

#include <string>
#include <set>
#include <map>
#include <vector>
#include <functional>   // std::greater

#include "codasip_integer.h"


namespace codasip {
namespace objfile {

// forward
class ObjectFile;
class Section;

}   // namespace codasip::objfile

namespace disassembler {

/**
 * \brief Helper class used for input preparing for disassembler and other
 *        tools working with executable files.
 */
class DsmUtils
{
    public:
        enum
        {
            /// during section data loading, use build endian
            USE_BUILD_ENDIAN = 0,
            /// during section data loading, big endian is used for output
            TO_BIG_ENDIAN = 1,
            /// labels are kept in the original form (i.e. numbers)
            KEEP_LABELS = 0,
            /// addresses are replaced by text
            UPDATE_LABELS = 1
        };

        /// \brief Ctor
        DsmUtils();
        /// \brief Dctor
        ~DsmUtils();
        /**
         * \brief Load executable
         * \param executable Path to the executable
         */
        void LoadExecutable(const std::string & executable);
        /**
         * \brief Return count of sections
         * \return Count of the sections, if the file is not loaded, -1 is
         *         returned
         */
        int GetSectionCount() const;
        /**
         * \brief Get raw data, does not fill padding, because it could mess up deparcel phase
         * \param[out] rawData
         * \param[in] rawBytes
         * \param[in] rawDataSize size of the read data
         * \param[in] byte byte where read starts
         * \param[in] bit bit index where read starts, numbered as 0..7 for 8-bit byte
         * \param[in] bbw byte bit-width
         * \return size of read data
         */
        static size_t GetRawData(MaxUint& rawData, const DataParts& rawBytes,
            const size_t dataSize, const size_t byte, const size_t bit, const size_t bbw);
        /**
         * \brief Get section data as vector of bytes
         * \param[out] rawBytes
         * \param[in] sectionIndex
         */
        void GetSectionData(DataParts& rawBytes, const size_t sectionIndex);
        /**
         * \brief Get section data as vector of bytes
         * \param[out] rawBytes
         * \param[in] section
         */
        static void GetSectionData(DataParts& rawBytes, const objfile::Section& section);
        /**
         * \brief Get section load address
         * \param[in] sectionIndex
         */
        codasip_address_t GetSectionLoadAddress(const size_t sectionIndex);
        /**
         * \brief Get section virtual address
         * \param[in] sectionIndex
         */
        codasip_address_t GetSectionVirtualAddress(const size_t sectionIndex);
        /**
         * \brief Check if the section is text section
         * \param index Section index
         * \return true, if the section exists and it is text section, otherwise
         *         it returns false
         */
        bool IsTextSection(const int index) const;
        /**
         *  \brief  Insert note there should be generated label. The label is
         *          either random or it is taken from the
         *          symbol table in the input file. This function is called only for
         *          the disassembler.
         *  \param  output returned label
         *  \param  address address of the destination
         *  \return true, if the label was generated
         */
        bool UpdateLabel(char * output, const codasip_address_t address);

        /**
         * \brief Dump binary data as data statement (i.e. bit 32, 0x123)
         * \param input Input binary in big endian
         * \param bw Bit width of the result
         * \return dumped binary data
         */
        static std::string DumpAsData(const char * input, const int bw);
        /**
         * \brief Save one textual form of given address into internal container
         *        The container if denoted by section number. The textual form
         *        can be an instruction, or pure data statement (i.e. bit 32, 0x123)
         * \param index Section index
         * \param address Address
         * \param address Address of following instruction
         * \param binary Binary form of the instruction
         * \param text Textual form of the binary data at given address
         */
        void SaveText(const int index,
                const codasip_address_t address,
                const codasip_address_t nextAddress,
                const char* binary,
                const char* text);
        /**
         * \brief Save stored data to the file. If the text section was disassembled,
         *        then textual form of the instructions are dumped. IF not,
         *        pure data is dumped. Also, all data sections are dumped.
         * \param path Path to the output file
         * \param options options which parameterize printed output
         */
        void SaveToFile(const std::string & path, const getopt::DisassemblerOptions& options) const;
        /**
         * \brief Returns pointer to disassembler data stored into this class
         *        using \p SaveText. Returns data of the specified section.
         */
        const disassembler::Instructions& GetInstructions(const unsigned int section) const;
        /**
         * \brief Store disassembled data into output buffer
         */
        void StoreInstructions(disassembler::Instructions& out) const;
        /**
         * \brief Clear all internal attributes
         */
        void Clear();
        /**
         * \brief Clear previously parsed data
         */
        void ClearData();
        /**
         * \brief Clear previously added symbols using \p AddSymbol
         */
        void ClearSymbolTable();
        /**
         * \brief Add new symbol with given name on given address. These symbols are used
         *        for enhanced disassembler output when disassembler is used from debugger
         * \param address Address of symbol
         * \param symbol Name of symbol
         */
        void AddSymbol(const codasip_address_t address, const char* symbol);
        /**
         * \brief Return bit width of word
         * \param index Section index, if there is no such section -1 is returned
         */
        int GetWordBitWidth(const int index) const;
        /**
         * \brief Return number of bytes in word
         * \param index Section index, if there is no such section -1 is returned
         */
        int GetBytesPerWord(const int index) const;
        /**
         * \brief Return bit width of byte
         * \param index Section index, if there is no such section -1 is returned
         */
        int GetByteBitWidth(const int index) const;
        /**
         * \brief Return true, if the binary is little endian
         * \param index Section index, if there is no such section false
         */
        bool IsLittle(const int index) const;
        /**
         * \brief Load all symbols of the executable
         * \param executable Executable
         */
        void LoadSymbols(const objfile::ObjectFile& executable);
        /**
         * \brief Inform whether the executable was loaded or not
         */
        bool IsExecutableLoaded() const;
        /**
         * \brief Deparcel bytes of data
         * \param[in, out] data has already solved bits in bytes by object file library
         * \param[in] size data bit-width
         * \param[in] parcelBytes parcel size in bytes
         * \param[in] byteSize byte bit-width
         * \param[in] isLittle little endian (RISC-V when parcelBytes = 0, ARM otherwise)
         */
        static void DeparcelBytes(MaxUint& data, const size_t size, const size_t parcelBytes,
            const size_t byteSize, const bool isLittle);
        /**
         * \brief Split data into parts of given size
         * \param[out] parts
         * \param[in] data data is aligned to the LSB, 'ZZZZ0111' for 0x7 on 4 bits
         * \param[in] dataSize data bit-width
         * \param[in] partSize part bit-width
         */
        static void ToParts(DataParts& parts, const MaxUint& data, const size_t dataSize,
            const size_t partSize);
        /**
         * \brief Parts in order 'AA' 'BB' 'CC' 'DD' are returned as data 'DDCCBBAA'
         * \param[out] data
         * \param[in] parts
         * \param[in] partSize part bit-width
         */
        static void CreateDataFromRevertedParts(MaxUint& data, const DataParts& parts,
            const size_t partSize);
        // TODO unittest
        /**
         * \brief Gets binary hex output for GNU format.
         *        '27260000' => '27 26 00 00'
         * \param[in] binaryHexOutput
         */
        static const std::string GetGnuBinaryHexOutput(const std::string& binaryHexOutput);

    private:
        /// disassembled sections with textual form of binary data
        typedef std::map<unsigned, Instructions> DisassembledSections;

        /// type for symbols used for labels
        typedef std::map<codasip_address_t, std::string, std::greater<codasip_address_t> > labels_t;
        /// type for symbols used for labels
        typedef std::map<codasip_address_t,
            std::pair<std::string, codasip_address_t>,
            std::greater<codasip_address_t> > functions_t;
        /// set of used symbols used for existence checks
        typedef std::set<std::string> symbols_t;
        /// Symbol table
        typedef std::multimap<codasip_address_t, std::string, std::greater<codasip_address_t> > symbol_table_t;
        /// start and end address of label regions
        typedef std::pair<codasip_address_t, codasip_address_t> label_region_t;
        /// container holding all label regions
        typedef std::set<label_region_t> label_regions_t;

        void SaveOutput(std::ostream& out, const getopt::DisassemblerOptions& options) const;

        static void ReverseWithPadding(std::string & , const int );
        std::string GetHeaderOfSection(const int index,
            const getopt::DisassemblerOptions::Format format) const;

        const objfile::Section& GetSection(const size_t sectionIndex);

        /// handled executable
        objfile::ObjectFile* m_Executable;
        /// symbols loaded from input file or added during the disassembling
        /// (generated for local jumps)
        labels_t m_Labels;
        /// all used symbols
        symbols_t m_Symbols;
        /// Disassembled sections
        DisassembledSections m_Sections;
        /// info whether the labels should be updated
        bool m_UpdateLabels;
        /// Addresses mapping set by debugger, it is used for symbol handling
        symbol_table_t m_SymbolTable;
        /// part of memory where is allowed to generate labels
        label_regions_t m_LabelRegions;
};

}   // namespace disassembler
}   // namespace codasip

#endif // _DSMUTILS_H_
