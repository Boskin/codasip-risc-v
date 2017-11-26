/**
 * Codasip Ltd
 *
 * CONFIDENTIAL
 *
 * Copyright 2017 Codasip Ltd
 *
 * All Rights Reserved.
 * This file is part of the Codasip Studio product. No part of the Studio product, including this
 * file, may be use, copied, modified, or distributed except in accordance with the terms contained
 * in Codasip license agreement under which you obtained this file.
 *
 * \file
 * \date    2017-11-26
 * \author  Codasip (c) disassembler generator
 * \version 6.8.2-1.win.7.EVALUATION
 * \brief   Source files for disassembler
 * \project MI7RISC_V5
 */
#include "codasip_disassembler_MI7RISC_V5_Dsm.h"

#include "codasip_integer.h"
#include <iostream>
#include <string>
#include <cstdlib>
#include "check_condition.h"
#include "codasip_log.h"

namespace codasip {
namespace disassembler {
namespace MI7RISC_V5 {

Dsm::Dsm()
 :  codasip_switch_instruction_set(DisassemblerCore::codasip_instruction_set_undef)
{
    m_DisassemblerCore.Init(&m_DsmUtils);
}
/**
 * \brief DetermineInstructionSet
 */
void Dsm::DetermineInstructionSet(const std::string& ISName)
{
    if (ISName == "default" || ISName == "default_start")
    {
        codasip_switch_instruction_set = DisassemblerCore::CODASIP_SWITCH_VALUE_MI13default_start;
    }
    else
    {
        THROW_ERROR() << "Unknown instruction set name: " << ISName << std::endl;
    }
    m_DisassemblerCore.SetInstructionSet(codasip_switch_instruction_set);
}
size_t Dsm::GetInputBitWidth(Processing& processing)
{
    if (codasip_switch_instruction_set == DisassemblerCore::CODASIP_SWITCH_VALUE_MI13default_start)
    {
        processing = DATA;
        return 32;
    }
    else
    {
        THROW_ERROR() << "Unknown instruction set" << std::endl;
        return 0;
    }
}
size_t Dsm::GetInstructionBitWidth(const MaxUint& rawData, const size_t rawDataSize, const size_t bbw, const bool isLittle)
{
    if (codasip_switch_instruction_set == DisassemblerCore::CODASIP_SWITCH_VALUE_MI13default_start)
    {
        return 32;
    }
    else
    {
        THROW_ERROR() << "Unknown instruction set" << std::endl;
        return 0;
    }
}
/**
 * \brief DisassembleCore
 */
int Dsm::DisassembleCore(int& parsedBits, codasip_address_t& address, const MaxUint& data, const size_t dataSize, const int section, const int bbw, const size_t debundleParsedBits)
{
    char text[2049] = "";
    char binary[2049] = "";
    uint32_t MI5startValue = data;
    int parserParsedBits;
    int state = m_DisassemblerCore.Parser(MI5startValue, address, parserParsedBits);
    if (state == INSTPARSER_OK)
    {
        if ((state = m_DisassemblerCore.Generator(text)) != INSTGENERATOR_OK)
        {
            return state;
        }
        strncat(binary, codasip::Integer<32, false>(MI5startValue).get_bin(false, false, 32).substr(32 - parserParsedBits).c_str(), parserParsedBits);
    }
    else if (state == INSTPARSER_INVALIDCODE)
    {
        if (m_DsmUtils.IsExecutableLoaded()) LOG_WARNING() << "cannot disassemble the instruction: " << data.get_hex(true, false, dataSize) << " at address 0x" << std::hex << address << " (" << std::dec << address << ")" << std::endl;
        const std::string binaryData = data.get_bin(false, false, dataSize);
        codasip_address_t nextAddress = address + 1;
        m_DsmUtils.SaveText(section, address, nextAddress, binaryData.substr(0, bbw).c_str(), m_DsmUtils.DumpAsData(binaryData.c_str(), bbw).c_str());
        parsedBits = bbw;
        address = nextAddress;
        return state;
    }
    else
    {
        if (state != DSM_DONE)
        {
            LOG_ERROR() << "cannot disassemble the instruction: " << data.get_hex(true, false, dataSize) << " at address 0x" << std::hex << address << " (" << std::dec << address << ")" << std::endl;
        }
        return state;
    }
    const size_t realParsedBits = (debundleParsedBits ? debundleParsedBits : parserParsedBits);
    codasip_address_t nextAddress = address + realParsedBits / bbw;
    m_DsmUtils.SaveText(section, address, nextAddress, binary, text);
    parsedBits = realParsedBits;
    address = nextAddress;
    return DSM_DONE;
}
/**
 * \brief DisassembleData
 */
int Dsm::DisassembleData(const DataParts& rawBytes, const codasip_address_t address, const int section, const int bbw, const int wbw, const bool isLittle, const std::string& ISName)
{
    DetermineInstructionSet(ISName);

    codasip_address_t currentAddress = address;

    const size_t bitCount = rawBytes.size() * bbw;
    int parsedBits = 0;
    while (parsedBits < bitCount)
    {
        Dsm::Processing processing;
        size_t rawDataSize = GetInputBitWidth(processing);

        MaxUint rawData;
        if (processing == Dsm::INSTRUCTION_LENGTH)
        {
            size_t readDataSize = DsmUtils::GetRawData(rawData, rawBytes, rawDataSize, currentAddress - address, parsedBits % bbw, bbw);
            rawDataSize = GetInstructionBitWidth(rawData, readDataSize, bbw, isLittle);
        }
        size_t readDataSize = DsmUtils::GetRawData(rawData, rawBytes, rawDataSize, currentAddress - address, parsedBits % bbw, bbw);

        int currentParsedBits;
        int ret = DisassembleParcels(currentParsedBits, currentAddress, rawData, readDataSize, rawDataSize, section, bbw, wbw, isLittle);
        if (ret != DSM_DONE && ret != INSTPARSER_INVALIDCODE && ret != DEBUNDLE_FAIL)
        {
            return ret;
        }
        parsedBits += currentParsedBits;
        CHECK_CONDITION(parsedBits % bbw == 0);
    }
    return DSM_DONE;
}
int Dsm::Disassemble(const getopt::DisassemblerOptions& options)
{
    m_DsmUtils.Clear();
    m_DsmUtils.LoadExecutable(options.GetInput());
    int sectionIndex = 0;
    int sectionCount = m_DsmUtils.GetSectionCount();
    for (int sectionIndex = 0; sectionIndex < sectionCount; sectionIndex++)
    {
        if (!m_DsmUtils.IsTextSection(sectionIndex))
        {
            continue;
        }

        DataParts rawBytes;
        m_DsmUtils.GetSectionData(rawBytes, sectionIndex);
        const codasip_address_t address = m_DsmUtils.GetSectionVirtualAddress(sectionIndex);
        const int bbw = m_DsmUtils.GetByteBitWidth(sectionIndex);
        const int wbw = m_DsmUtils.GetWordBitWidth(sectionIndex);
        const bool isLittle = m_DsmUtils.IsLittle(sectionIndex);
        const std::string ISName = "default";

        int ret = DisassembleData(rawBytes, address, sectionIndex, bbw, wbw, isLittle, ISName);
        if (ret != DSM_DONE)
        {
            LOG_ERROR() << "file: " << options.GetInput() << ": disassembler error, code: " << ret << std::endl;
            return ret;
        }

    }
    m_DsmUtils.SaveToFile(options.GetOutput(), options);
    return DSM_DONE;
}
int Dsm::Disassemble(Instructions& output, const DataParts& rawBytes, const codasip_address_t address, const int bbw, const int wbw, const bool isLittle, const char* ISName)
{
    m_DsmUtils.ClearData();
    int ret = DisassembleData(rawBytes, address, 0, bbw, wbw, isLittle, ISName);
    m_DsmUtils.StoreInstructions(output);
    return ret;
}
unsigned int Dsm::GetParcelBytes() const 
{
    return 0;
}
void Dsm::ClearSymbols()
{
    m_DsmUtils.ClearSymbolTable();
}
void Dsm::LoadSymbols(const objfile::ObjectFile& executable)
{
    m_DsmUtils.LoadSymbols(executable);
}
void Dsm::AddSymbol(const codasip_address_t address, const char* symbol)
{
    m_DsmUtils.AddSymbol(address, symbol);
}
void Dsm::Destroy()
{
    delete this;
}
const char* Dsm::GetName() const 
{
    return "RISC_V5";
}
} // namespace MI7RISC_V5
} // namespace disassembler
} // namespace codasip
