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

#ifndef DIRECTIVEHANDLERIFACE_H_
#define DIRECTIVEHANDLERIFACE_H_

#include <list>
#include <string>

#include "enumutils.h"

#include "assembler_messages.h"
#include "asmstdinclude.h"
#include "asmsection.h"


// auxiliary class that provides nicer interface to directive handler
// and was created to ease modification of assembler for different formats
namespace codasip {
namespace assembler {


class AsmSymbol;
class Token;
class TokenList;


// --- some constants ---
const int MAX_BYTES_TO_BE_SKIPPED_INVALID = -1;


/// section type description
CODASIP_ENUM_CLASS_STR_DEFAULT(SectionTypeDescription, SECTION_TYPE_INVALID,
    (SECTION_TYPE_INVALID, "invalid"),
    (PROGBITS, "@progbits"),
    (NOBITS, "@nobits"),
    (NOTE, "@note"),
    (INIT_ARRAY, "@init_array"),
    (FINI_ARRAY, "@fini_array"),
    (PREINIT_ARRAY, "@preinit_array")
);

////////////////////////////////////////////////////////////////////////////////////////////////////
/**
 * \brief Used for remembering current line in syntactic parser.
 *        In VLIW it points to the first instruction of current bundle.
 */
class CurrentInstructionLine
{
public:
    /**
     * \brief Returns stored line number.
     */
    static int Get();
    /**
     * \brief Store current line number - we need to remember it's value, because
     *        when compiling multi-line instructions, we need to store line information
     *        for the first line on which the instruction or directive started.
     *        Is sent to the InstrCoderUnit and DirectiveHandlerUnit and then
     *        stored to the DebugLineInfoTable by DataAndFixupStoreUnit.
     */
    static void Set(const int line);

private:
    /// Auxiliary global variable for line number information.
    static int m_Line;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
/**
 *  \brief Represents section flags and type specifier
 */
class SectionFlags
{
public:
    inline const std::string GetFlags() const
    {
        return m_Flags;
    }
    inline const std::string GetType() const
    {
        return m_Type;
    }
    inline void SetFlags(const std::string& flags)
    {
        m_Flags = flags;
    }
    inline void SetType(const std::string& type)
    {
        m_Type = type;
    }

private:
    std::string m_Flags;
    std::string m_Type;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
/**
 *  \brief Information used for storing remaining tokens that were read with a concatenated terminal
 *         or macros but could not be returned yet.
 */
class TokenInfo
{
public:
    typedef std::list<TokenInfo> TokenInfos;

    static TokenInfo CreateEof();
    static TokenInfo Create(const int id);
    static TokenInfo Create(const int id, const std::string& text);

    /**
     * \brief Determines if token with given id has text attached.
     * \param[in] id
     */
    static bool HasText(const int id);

    inline int GetId() const;
    inline const std::string& GetText() const;
    inline bool IsEof() const;

    inline void SetId(const int id);
    inline void SetText(const std::string& value);

    const std::string ToString() const;

private:
    TokenInfo();
    TokenInfo(const int id, const std::string& text = "", const bool isEof = false);

    int m_Id;
    /// set only for attributes
    std::string m_Text;
    bool m_Eof;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
inline int TokenInfo::GetId() const
{
    return m_Id;
}

inline const std::string& TokenInfo::GetText() const
{
    return m_Text;
}

inline bool TokenInfo::IsEof() const
{
    return m_Eof;
}

inline void TokenInfo::SetId(const int id)
{
    m_Id = id;
}

inline void TokenInfo::SetText(const std::string& value)
{
    m_Text = value;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
class Macro : public Location
{
public:
    /// macro arguments
    typedef std::vector<std::string> Arguments;

    /// 'LOCAL' directive, available only inside block between directives '.macro' and '.endm',
    /// alternate macro mode have to be set by directive '.altmacro'
    static const std::string DIRECTIVE_LOCAL;

    Macro(const std::string& name, const Arguments& arguments);

    const std::string& GetName() const;
    const Arguments& GetArguments() const;
    const TokenInfo::TokenInfos& GetTokens() const;

    void AddToken(const TokenInfo token);

    const std::string GetUniqueLocalName(const std::string& name);

    const std::string ToString() const;

private:
    std::string m_Name;
    Arguments m_Arguments;
    TokenInfo::TokenInfos m_Tokens;
    /// used for creation of the unique local symbol identifier
    size_t m_LocalNameCounter;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
/**
 * \brief Token handler unit adds support for concatenated terminals and macros by storing
 *        parsed tokens that lexical analyzer should use when the time is right.
 *        It also has methods for creating tokens from string constants or user immediate.
 */
class TokenHandlerUnit
{
public:
    /// token identifiers
    typedef std::vector<int> TokenIds;
    /// terminal string => terminal token identifier
    typedef std::map<std::string, TokenIds> Terminals;
    /// macro id => macro body
    typedef std::map<const std::string, Macro> Macros;

    // terminal string handling
    static void InitTerminals();
    static int MatchIdToken(const std::string& id, const int resultNotFound);

    static void AddCurrentToken(const TokenInfo& info);
    static int GetCurrentToken();

    // macro handling
    static void StartMacro(const std::string& id, const Macro::Arguments& arguments);
    static void EndMacro();
    static void CallMacro(const std::string& id, const TokenList& toEvaluate);
    static bool IsAlternateMacroModeSet();
    static void SetAlternateMacroMode(const bool value);
    static void ProcessMacroLocal(const std::string& name);

    /**
     * \brief Main processing function for tokens
     * \param[out] isMacroCall determines if identifier is macro call, switch lexical analyzer state
     * \param[in, out] text processed token text
     * \param[in] tokenId processed token id
     * \return token id after processing, could be different token when parsing .macro directive
     */
    static int Process(bool& isMacroCall, std::string*& text, const int tokenId);

    // string constant and user immediate handling
    static Token& ConvertConstantToToken(const std::string& constant, const unsigned int prefixSize,
        const unsigned int base, const std::string& baseStr);
    static Token& CreateImmediateOperand(const exprval_t number);

private:
    enum State
    {
        PRODUCING_TOKENS,
        PRODUCING_MACRO_TOKENS,
        READING_MACRO_HEADER,
        READING_MACRO
    };

    static exprval_t GetConstant(const std::string& constant, const unsigned int prefixSize,
        const unsigned int base, const std::string& baseStr);

    static Terminals m_Terminals;

    /// current tokens that will be produced before tokens from parsing the rest of the input file
    static TokenInfo::TokenInfos m_CurrentTokens;

    /// macros and their token containers
    static Macros m_Macros;
    /// container of currently parsed macro
    static Macro* m_CurrentMacro;
    /// alternate macro mode
    static bool m_AlternateMacroMode;

    /// state of this unit
    static State m_State;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
/**
 * \brief Section handler unit is responsible for correct processing of section related directives.
 */
class SectionHandlerUnit
{
public:
    inline static bool IsSectionProcessed();

    inline static void SetSectionProcessed(const bool value);

    /**
     *  \brief Support for section switching, if no suitable existing section is found,
     *         then a new one is created, also support for specific address spaces by section type
     *         is implemented. All optional arguments must be either defined or undefined
     */
    static void CreateOrSwitchToSection(const AsmSection::Type type, const std::string& name,
        const bool paramsSet = false, const int wordBitWidth = -1, const int bytesPerWord = 1,
        const bool littleEndian = true, const bool overrideAs = true);
    /**
     *  \brief Creates a section (if does not exists) and switches to it.
     *  \param[in] name
     *  \param[in] flags
     */
    static void CreateSection(const std::string& name, const SectionFlags& flags);
    static AsmSection::Type ParseCoffSectionTypeFlags(const std::string& flags,
        const std::string& specifier);
    /**
     * \brief Push current section on the section stack, then
     *        creates a section (if does not exists) and switches to it.
     * \param[in] sectionName
     * \param[in] sectionFlags
     */
    static void PushSection(const std::string& sectionName, const SectionFlags& sectionFlags);
    /**
     * \brief Removes section from top of the section stack and switches to it.
     */
    static void PopSection();
    /**
     * \brief Switch to previous section of the current section.
     */
    static void Previous();
    /**
     * \brief Directive '.org newLocation, fill'
     *        Advance the location counter of the current section to new location.
     *        Beware that the origin is relative to the start of the section,
     *        not to the start of the subsection. This is compatible with other people's assemblers.
     * \param[in] newLocation
     * \param[in] fill value to be filled into each skipped byte
     */
    static void SetOrg(const exprval_t& newLocation, const exprval_t& fill = 0);
    /**
     * \brief
     * \param[in] newLocation
     * \note Directive .abs_org may be currently present in each section just once.
     */
    static void SetAbsOrg(const exprval_t& newLocation);

    /**
     * \brief Auxiliary function for GNU assembler align directives.
     */
    static void GasAlign(const int dirType, const int alignValue, const int fillValue = 0,
        const int maxBytesToBeSkipped = MAX_BYTES_TO_BE_SKIPPED_INVALID);
    // TODO fix comments
    // These functions were inspired by GNU as directives defined here
    // http://sourceware.org/binutils/docs-2.20/as/Pseudo-Ops.html#Pseudo-Ops
    // specify divisibility of address
    // Pad the location counter (in the current subsection) to a particular storage boundary.
    // The first expression (which must be absolute) is the alignment request in bytes. For example
    // `.balign 8' advances the location counter until it is a multiple of 8. If the location counter
    // is already a multiple of 8, no change is needed.
    static void BAlign(const int alignmentInBytes, const int fillValueSizeBytes,
        const exprval_t fillValue = 0,
        const int maxBytesToBeSkipped = MAX_BYTES_TO_BE_SKIPPED_INVALID);

    static void AppendByteString(const std::string& s, const bool delimitWithZero,
        const bool transformEscapeSequences = false);
    /**
     * \brief Same as AppendDataBitWidth, but bit-width is determined from the directive type
     *        and stored accordingly to the target section,
     *        e.g. byte for code address space can be different from byte for data address space
     * \param[in] type
     * \param[in] token
     */
    static void AppendDataDirective(const DataDirectiveType type, Token* token);
    /**
     * \brief Signedness is not important for us, number is truncated, only when an option
     *        to print warnings is specified, then warning about truncation is printed
     * \param[in] bitWidth
     * \param[in] data
     */
    static void AppendDataBitWidth(const int bitWidth, const exprval_t& data);
    static void AppendDataBitWidth(const int bitWidth, Token* token);
    /**
     * \brief
     * \param[in] bitWidth
     * \param[in] token expression
     */
    static void AppendFloatingPointValue(const int bitWidth, Token* token);
    static void AppendBytesRepeat(const int byteCount, const exprval_t& data, const exprval_t& repeatCount);
    /**
     * \brief Handle directive '.incbin'
     * \param[in] file
     * \param[in] skip number of bytes from the start of the file that will be skipped
     * \param[in] countSet signals that count is set
     * \param[in] count when -1, whole file is included,
     *                  otherwise specifies maximal number of bytes to read
     */
    static void AppendDataIncBin(const std::string& fileName, const exprval_t skip, bool countSet,
        exprval_t count);
    /**
     * \brief Adds data to a debug section .comment
     * \param[in] text
     */
    static void AppendIdent(const std::string& text);

    /**
     * \brief Prints error and returns false if no current section is selected
     * \param[in] text failed action description
     */
    static bool CheckSectionExists(const err::SectionAction action);

private:
    typedef std::vector<AsmSection*> SectionStack;

    static void CreateSection(const AsmSection::Type type, const std::string& name,
        const int wordBitWidth, const int bytesPerWord, const bool littleEndian,
        const std::string& addressSpace);
    static AsmSection::Type GetSectionTypeFromName(const std::string& name);
    static void P2Align(const int addressBitsToBeAligned, const int fillValueSizeBytes,
        const exprval_t fillValue = 0,
        const int maxBytesToBeSkipped = MAX_BYTES_TO_BE_SKIPPED_INVALID);
    static void DoAlign(const int alignSize, const int fillValueSizeBytes,
        const exprval_t fillValue, const int maxBytesToBeSkipped);

    static bool CheckAllowedBitWidth(const int bitWidth);
    static int GetDataDirectiveBitWidth(const DataDirectiveType type);

    /// Determines if section is processed. Assembler have to be terminated,
    /// when error occurs during section processing to prevent false errors.
    static bool m_SectionProcessed;
    /// section stack
    static SectionStack m_SectionStack;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
inline bool SectionHandlerUnit::IsSectionProcessed()
{
    return m_SectionProcessed;
}

inline void SectionHandlerUnit::SetSectionProcessed(const bool value)
{
    m_SectionProcessed = value;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
/**
 * \brief Address space handler unit is responsible for correct switching between address spaces.
 */
class AddressSpaceHandlerUnit
{
public:
    static void SwitchToAddressSpace(const int index);
    static int GetCurrentAddressSpace();
    static void SetCurrentAddressSpace(const int index);

private:
    /// current address space, useful only during parsing, so it is defined here like this
    static int m_CurrentAddressSpace;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
/**
 * \brief Handle symbol related directives
 */
class SymbolHandlerUnit
{
public:
    /**
     * \brief Creates label at current position
     * \param[in] name
     * \param[in] fromParser error line information depends on context
     * \param[in] addressOverride
     */
    static AsmSymbol& DefineLabel(const std::string& name, const bool fromParser = true,
        const exprval_t addressOverride = -1);
    static void DefineLocalLabel(const int number);

    /**
     * \brief Currently is common symbol handled as a standard global symbol,
     *        if not overridden as local, this will be fixed in later versions
     * \param[in] name
     * \param[in] defAsGlobal
     * \param[in] sizeInBytes
     * \param[in] alignmentByteBoundary
     */
    static void DefineComm(const std::string& name, const bool defAsGlobal, const int sizeInBytes,
        const int alignmentByteBoundary = -1);
    /**
     * \brief Useful mainly for GNU as's .equiv and .eqv
     * \param[in] name
     * \param[in] token expression
     */
    static void DefineEquiv(const std::string& name, Token* token);
    /**
     * \brief Useful mainly for GNU as's symbol operator expression
     * \param[in] name
     * \param[in] op operator
     * \param[in] token representing expression
     */
    static void DefineSymbol(const std::string& name, const SymbolDefinitionOperator op,
        Token* token);
    /**
     * \brief Useful mainly for GNU as's .equ and .set that may redefine a symbol
     * \param[in] name
     * \param[in] token expression
     */
    static void DefineSet(const std::string& name, Token* token);

    static void SetSymbolVisibility(const std::string& name, const bool isGlobal,
        const bool isWeak = false);
    static void SetSymbolSize(const std::string& name, Token& token);
    static void SetSymbolUsageType(const std::string& name, const std::string& typeSpecifier);

private:
    static void DefineEquiv(const std::string& name, const exprval_t value);
};

////////////////////////////////////////////////////////////////////////////////////////////////////
/**
 * \brief Directive handler unit is responsible for handling of directives, that are not handled by
 *        any of specialized handler units.

 */
class DirectiveHandlerUnit
{
public:
    /**
     * \brief Processes .directive that says that the next instruction is jump target
     *        and the current instruction's end should be aligned. Used by BundlingUnit.
     */
    static void BundleAlignEnd();
    static void ProfilerInfo(const std::string& flags, const std::string& blockName = "");
};

////////////////////////////////////////////////////////////////////////////////////////////////////


}   // codasip::assembler
}   // codasip

#endif /* DIRECTIVEHANDLERIFACE_H_ */
