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
#ifndef CODASIP_DISASSEMBLER_MI7RISC_V5_DSM_3_H_
#define CODASIP_DISASSEMBLER_MI7RISC_V5_DSM_3_H_

#include "codasip_disassembler_MI7RISC_V5_DisassemblerCore.h"
#include "disassembler.h"
#include "dsmutils.h"
#include <iostream>

namespace codasip {
namespace disassembler {
namespace MI7RISC_V5 {

/**
 * \class Dsm
 */
class Dsm : public Disassembler
 {
public:
    typedef enum {
        INSTRUCTION_LENGTH,
        DATA
    }Processing;
private:
    DisassemblerCore m_DisassemblerCore;
    DsmUtils m_DsmUtils;
    DisassemblerCore::instruction_set_switch_t codasip_switch_instruction_set;
public:
    /**
     * \brief Dsm
     */
    Dsm();
private:
    void DetermineInstructionSet(const std::string& ISName);
public:
    /**
     * \brief GetInputBitWidth
     */
    size_t GetInputBitWidth(Processing& processing);
    /**
     * \brief GetInstructionBitWidth
     */
    size_t GetInstructionBitWidth(const MaxUint& rawData, const size_t rawDataSize, const size_t bbw, const bool isLittle);
private:
    int DisassembleParcels(int& parsedBits, codasip_address_t& address, const MaxUint& rawData, const size_t rawDataSize, const size_t needDataSize, const int section, const int bbw, const int wbw, const bool isLittle);
    int DisassembleCore(int& parsedBits, codasip_address_t& address, const MaxUint& data, const size_t dataSize, const int section, const int bbw, const size_t debundleParsedBits);
    int DisassembleData(const DataParts& rawBytes, const codasip_address_t address, const int section, const int bbw, const int wbw, const bool isLittle, const std::string& ISName);
public:
    /**
     * \brief Disassemble
     */
    int Disassemble(const getopt::DisassemblerOptions& options);
    /**
     * \brief Disassemble
     */
    int Disassemble(Instructions& output, const DataParts& rawBytes, const codasip_address_t address, const int bbw, const int wbw, const bool isLittle, const char* ISName);
private:
    int Disassemble(Instructions& output, const MaxUint& data, const size_t dataSize, const codasip_address_t address, const int bbw, const char* ISName);
public:
    /**
     * \brief GetParcelBytes
     */
    unsigned int GetParcelBytes() const ;
    /**
     * \brief ClearSymbols
     */
    void ClearSymbols();
    /**
     * \brief LoadSymbols
     */
    void LoadSymbols(const objfile::ObjectFile& executable);
    /**
     * \brief AddSymbol
     */
    void AddSymbol(const codasip_address_t address, const char* symbol);
    /**
     * \brief Destroy
     */
    void Destroy();
    /**
     * \brief GetName
     */
    const char* GetName() const ;
};
/**
 * \brief DisassembleParcels
 */
FORCE_INLINE int Dsm::DisassembleParcels(int& parsedBits, codasip_address_t& address, const MaxUint& rawData, const size_t rawDataSize, const size_t needDataSize, const int section, const int bbw, const int wbw, const bool isLittle)
{
    MaxUint data = rawData;
    m_DsmUtils.DeparcelBytes(data, rawDataSize, GetParcelBytes(), bbw, isLittle);
    return DisassembleCore(parsedBits, address, data, needDataSize, section, bbw, 0);
}
/**
 * \brief Disassemble
 */
FORCE_INLINE int Dsm::Disassemble(Instructions& output, const MaxUint& data, const size_t dataSize, const codasip_address_t address, const int bbw, const char* ISName)
{
    m_DsmUtils.ClearData();
    int ignoreParsedBits = 0;
    DetermineInstructionSet(ISName);
    codasip_address_t tmpAddress = address;
    int ret = DisassembleCore(ignoreParsedBits, tmpAddress, data, dataSize, 0, bbw, dataSize);
    m_DsmUtils.StoreInstructions(output);
    return ret;
}
} // namespace MI7RISC_V5
} // namespace disassembler
} // namespace codasip

#endif // CODASIP_DISASSEMBLER_MI7RISC_V5_DSM_3_H_
