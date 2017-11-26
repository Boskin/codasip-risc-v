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

#if !defined(EA_7C0C725E_1A55_4285_9DCC_392E46F3CF10__INCLUDED_)
#define EA_7C0C725E_1A55_4285_9DCC_392E46F3CF10__INCLUDED_

#include <string>
#include <vector>

#include "asmstdinclude.h"
#include "asmfixupinfo.h"
#include "bundlingunit.h"
#include "instrcoderiface.h"
#include "tokenstructs.h"
#include "token_id_info.h"


namespace codasip {
namespace assembler {


////////////////////////////////////////////////////////////////////////////////////////////////////
/**
 *  \brief Firstly it is for instruction which arise from generator, which works after bison parser
 *         This is ASM translated instruction. Each instruction refers to one bundle instruction.
 *         Second it is for storage of binary slot instructions (way how they are encoded on VLIW).
 */
class TranslatedInstr
{
public:
    TranslatedInstr();
    TranslatedInstr(const TranslatedInstr& copy);

    /**
     *  \brief Creates destination TranslatedInstr from source TranslatedInstr by given order
     *  \param[out] dst result TranslatedInstr
     *  \param[in] src source TranslatedInstr
     *  \param[in] order information what part of translated instruction must be used for destination
     */
    static void CreateTranslatedSlot(TranslatedInstr& dst, const TranslatedInstr& src,
        const PlacementInfo& order);

    const std::string& GetCoding() const;
    std::string& GetCoding();
    const GenAttrInfos& GetAttrInfos() const;
    GenAttrInfos& GetAttrInfos();

    void SetCoding(const std::string& coding);
    void SetAttrInfos(const GenAttrInfos& attrInfos);

    void SetCodingBit(const int index, const char& bit);

private:
    /// binary coding of instruction
    std::string m_Coding;
    /// information about attribute operands
    GenAttrInfos m_AttrInfos;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
typedef std::vector<TranslatedInstr> TranslatedInstrs;

////////////////////////////////////////////////////////////////////////////////////////////////////
/**
 *  \brief This is a wrapper class for instruction coder. Coder is generated using pair automata and
 *         is used in this way: Syntactic analyzer recognizes tokens that should be sent to coder,
 *         coder is in fact a final automata and when a token arrives, it performs a transition.
 *         Using these transition semantic actions, binary instruction format is generated.
 */
class InstructionCoder
{
public:
    InstructionCoder();

    /**
     * \brief Creates ParsedAttrInfo by bison parser
     * \param[in] name attribute name
     * \param[in] signature attribute signature
     * \param[in] expression parsed expression
     * \param[in] duplicate is it duplicate, for solving conditional sections problems
     * \param[in] evaluator function used for evaluating attribute when needed
     */
    void CreateParsedAttrInfo(const std::string& name, const std::string& signature,
        const Token& expression, const bool duplicate,
        ParsedAttrInfo::EvalAttributeSemantics evaluator);
    void ResetParsedAttrInfoSet();

    inline bool IsBundleAlignEnd() const;
    inline bool IsListingOn() const;

    inline void SetBundleAlignEnd(const bool value);
    inline void DecrementListingCounter();
    inline void IncrementListingCounter();

    /**
     *  \brief Generate instruction or bundle for VLIW. Called when a complete instruction/bundle is
     *         translated, handles instruction's attributes and stores it into the object file.
     *  \param[in] sourceLine
     */
    void GenerateInstruction(const int sourceLine);

private:
    typedef std::vector<FixupInfo> Fixups;

    void CheckAttributeNames(const ParsedAttrInfos& parsedAttrInfos,
        const std::vector<GenAttrInfo>& genAttrInfos);

    void EvaluateParsedAttributesEncoding();

    void PerformConstantFixups(Fixups& remainingFixups, TranslatedInstr& instruction,
        const size_t bundleSize);
    void PerformOneFixup(TranslatedInstr& instruction, FixupInfo& fixupInfo,
        Fixups& remainingFixups, const Token& token, const size_t bundleSize);
    void PopulateAsmFixupInfo(FixupInfo& resInfo, const ParsedAttrInfo& parsedInfo,
        const GenAttrInfo& genInfo, const int placementIndex);

    const ParsedAttrInfo& FindParseAttrInfoByName(const std::string& name, const ParsedAttrInfos&
        parsedAttrInfos);
    const TokenIdInfo* FindTokenIdInfo(const int id);

    static void TransformAsmToBinBundle(TranslatedInstrs& binTranslatedSlots,
        const TranslatedInstrs& asmTranslatedInstrs);
    static size_t GetBundleBitCount(const std::vector<InstrWithFixups>& bundle);

    // attribute information from syntactic analyzer
    ParsedAttrInfos m_ParsedAttrInfos;

    /// set to true if there was a directive '.bundle_align_end' before this instruction or bundle
    /// reseted after bundle or instruction was stored
    bool m_BundleAlignEnd;
    /// listing of instructions is turned on
    int m_ListingCounter;

    ParsedAttrInfo m_ZeroParseAttr;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
inline bool InstructionCoder::IsBundleAlignEnd() const
{
    return m_BundleAlignEnd;
}

inline bool InstructionCoder::IsListingOn() const
{
    return m_ListingCounter > 0;
}

inline void InstructionCoder::SetBundleAlignEnd(const bool value)
{
    m_BundleAlignEnd = value;
}

inline void InstructionCoder::DecrementListingCounter()
{
    m_ListingCounter--;
}

inline void InstructionCoder::IncrementListingCounter()
{
    m_ListingCounter++;
}

////////////////////////////////////////////////////////////////////////////////////////////////////

}   // codasip::assembler
}   // codasip

#endif // !defined(EA_7C0C725E_1A55_4285_9DCC_392E46F3CF10__INCLUDED_)
