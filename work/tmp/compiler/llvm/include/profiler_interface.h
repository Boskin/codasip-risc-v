/**
 * Codasip Ltd
 * 
 * CONFIDENTIAL 
 *
 * Copyright 2015 Codasip Ltd
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
 *  \date   Oct 30, 2015
 *  \brief  Declaration/Implementation of the class.
 */

#ifndef SIMULATORS2_PROFILERL_PROFILER_INTERFACE_H_
#define SIMULATORS2_PROFILERL_PROFILER_INTERFACE_H_

#include "codasip_integer.h"

#include <string>
#include <set>
#include <vector>
#include <map>

// forward
namespace codasip {
namespace disassembler {
class Disassembler;
}
}

namespace codasip {
namespace profiler {

/// Return codes for disassembler
enum {
    /// generator failed to generate output
    INSTGENERATOR_FAIL,
    /// generator succeeded to generate output
    INSTGENERATOR_OK,
    /// parser succeeded to parse input
    INSTPARSER_OK,
    /// there are no more data to parse
    INSTPARSER_DONE,
    /// parser failed to parse input
    INSTPARSER_INVALIDCODE
};

/**
 * \class  codasip::profiler::InstructionWithOperands
 * \brief  Class that is filled by a decoder
 */
class InstructionWithOperands
{
public:
    /// Container for instructions
    typedef std::vector<std::string> TypedOperands;
    /// Container for instructions
    typedef std::map<std::string, TypedOperands> Operands;

    /**
     * \brief Set a decoded instruction
     * \param instruction Textual representation of the instruction
     */
    void SetInstruction(const std::string& instruction);
    /**
     * \brief Add a decoded operand to a particular type class
     * \param typeClass Type class (r.g. registers)
     * \param operand Textual representation of operand itself
     */
    void AddOperand(const std::string& typeClass, const std::string& operand);
    /**
     * \brief Return decoded instruction
     */
    const std::string& GetInstruction() const;
    /**
     * \brief Return decoded operands of all type classes
     */
    const Operands& GetOperands() const;
    /**
     * \brief Clear all members
     */
    void Clear();
private:
    /// Decoded instruction
    std::string m_Instruction;
    /// Decoded operands
    Operands m_Operands;
};

/**
 * \class  codasip::profiler::Decoders
 * \brief  Base class for a generated decoders used by a static profilers
 */
class DecodersInterface
{
public:
    /// Container for instructions
    typedef std::set<std::string> Instructions;
    /// Container for instructions
    typedef std::set<std::string> TypedOperands;
    /// Container for instructions
    typedef std::map<std::string, TypedOperands> Operands;

    /**
     * \brief Convert binary input into the text input
     * \param decoderUid Decoder id
     * \param input Binary input
     * \param decodeOperands If true, all operands are fully decoded
     */
    virtual const InstructionWithOperands& Decode(const std::string& decoder,
        const codasip::MaxInt& input,
        const bool decodeOperands) = 0;
    /**
     * \brief Return all instructions in the decoder
     * \param decoder Decoder id
     */
    virtual const Instructions& GetInstructions(const std::string& decoder) const = 0;
    /**
     * \brief Return all operands in the decoder
     * \param decoder Decoder id
     */
    virtual const Operands& GetOperands(const std::string& decoder) const = 0;
    /**
     * \brief Destructor
     */
    virtual ~DecodersInterface() {};
};

/**
 * \class codasip::profiler::ProfilerInterface
 * \brief Base class for a generated part of a profiler
 */
class ProfilerInterface
{
public:
    /**
     * \brief Return decoders for a particular asip within a platform
     * \param asip Id of the asip. The id is loaded from a dump file
     * \return If there is a decoder with a given id, then a pointer to it, otherwise NULL
     */
    virtual DecodersInterface* GetDecoders(const std::string& asip) = 0;
    /**
     * \brief Return disassembler for a particular asip within a platform
     * \param asip Id of the asip. The id is loaded from a dump file
     * \return If there is a disassembler with a given id, then a pointer to it, otherwise NULL
     */
    virtual disassembler::Disassembler* GetDisassembler(const std::string& asip) = 0;
    /**
     * \brief Return hash of the profiler for version checking
     */
    virtual const std::string& GetModelHash() const = 0;
    /**
     * \brief Return address space signature for a given interface.
     * @param interfaceUid Uid of interface
     * \return Return empty string when interface is not found, otherwise signature of
     *         an address space is returned
     */
    virtual std::string GetAddressSpace(const int interfaceUid) const = 0;
    /**
     * \brief Dump Info to the output
     */
    virtual void DumpInfo(std::ostream& out) const = 0;
    /**
     * \brief Destructor
     */
    virtual ~ProfilerInterface() {};
};

}   // namespace codasip::profiler
}   // namespace codasip

#endif  // SIMULATORS2_PROFILERL_PROFILER_INTERFACE_H_
