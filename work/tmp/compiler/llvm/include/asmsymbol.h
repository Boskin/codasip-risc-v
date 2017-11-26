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
 *  \brief   This file contains definition of classes AsmSymbol and AsmSymbolTable.
 *  \author  Adam Husar, Martin Ministr
 *  \date    Jan 1, 2009
 */

#if !defined(EA_93516344_01F5_4621_82B4_C0427C6D25A8__INCLUDED_)
#define EA_93516344_01F5_4621_82B4_C0427C6D25A8__INCLUDED_

#include <map>
#include <set>
#include <string>
#include <vector>

#include "enumutils.h"
#include "location.h"

#include "asmstdinclude.h"


namespace codasip {
namespace assembler {


class ExprElemBase;


/**
 *  \brief This class represents one assembler symbol with its parameters and value.
 *         Assembler symbols can be either symbols that were defined directly in assembler
 *         source file and also pseudo symbols that substitute expressions.
 */
class AsmSymbol : public Location
{
public:
    /// Contains values that represent different symbol value types.
    CODASIP_ENUM_CLASS_STR(ValueType,
        /**
         * Symbol value relative to section start. i.e. labels have this value type.
         * Will be stored as a relocation.
         */
        (SECTION_RELATIVE, "section relative"),
        /**
         * Absolute symbol value. Constant symbols defined for example using .equiv
         * directive have this value type. Also expressions 'label1 - label2' have this type
         * if the labels come from the same section.
         * Can be computed right away.
         */
        (ABSOLUTE, "absolute"),
        /// represents current_address, should be used only within constant expression
        (CURRENT_ADDRESS, "current_address"),
        /**
         * Undefined symbol value type. Symbols that are not defined or pseudo symbols
         * that represent an expression that is formed from undefined symbols have this
         * value type.
         * Will be stored as relocation.
         */
        (UNDEFINED, "undefined"),
        /// complex relocation type
        (COMPLEX, "complex"),
        /// Erroneous value. Used when there was a semantic error during expression evaluation.
        (ERROR, "error")
    );

    /// symbol type description of '.type' directive
    CODASIP_ENUM_CLASS_STR_DEFAULT(Usage, NOT_SET,
        (NOT_SET, "not set"),
        (FUNCTION, "@function"),
        (OBJECT, "@object")
    );

    /**
     *  \brief Creates AsmSymbol
     *         Pseudo symbol means, that this symbol was created because of relocation.
     */
    AsmSymbol(const Location& location, const std::string& name, ExprElemBase& symbolExpression,
        const bool isGlobal, const bool isPseudoSymbol = false);

    ~AsmSymbol();

    /**
     *  \brief Tries to calculate the symbol value.
     *  \param[out] valueType determines value type of the result and if the result is valid.
     *  \param[out] isSigned sign of the result
     *  \param[out] bitWidth bit-width of the result
     */
    exprval_t TryEval(AsmSymbol::ValueType* valueType = NULL, bool* isSigned = NULL,
        size_t* bitWidth = NULL);

    inline const std::string& GetName() const;
    /**
     *  \brief Sets symbol name.
     *  \warning If this symbol is already present in the symbol table, then do not use this method
     *           and use AsmSymbolTable::RenameSymbol, because the search table needs to be updated.
     */
    inline void SetName(const std::string& name);
    /**
     *  \brief If symbol value is constant, class member value is returned.
     *  \return symbol section number, SECTION_NUMBER_UNDEFINED if section number is not available.
     */
    int GetSectionNumber() const;
    /**
     *  \brief Returns symbol value type.
     */
    AsmSymbol::ValueType GetValueType() const;
    /**
     *  \brief Returns true, if symbol is defined as global.
     */
    inline bool IsGlobal() const;
    /**
     *  \brief Sets whether this symbol is defined as global.
     */
    void SetIsGlobal(const bool isGlobal);

    bool IsWeak() const;
    /**
     *  \brief Sets also global visibility to the same value
     */
    inline void SetIsWeak(const bool value);

    /**
     *  \brief Returns true, if symbol is defined,
     *         that means that its expression if of type ExprConst and its value type is UNDEFINED.
     */
    bool IsDefined() const;

    /**
     *  \brief Changes this symbols expression object. Old expression object is returned.
     *         This assembler symbol becomes owner of expression
     *         and the returned object must be freed by caller.
     *  \warning This method should be used rarely.
     */
    ExprElemBase& ChangeSymbolExpression(ExprElemBase& symbolExpression);

    ExprElemBase& GetSymbolExpression();
    const ExprElemBase& GetSymbolExpression() const;

    /**
     *  \brief Returns address on which this symbol has been defined,
     *         fails if this value was not set.
     */
    inline bool IsPseudoSymbol() const;

    inline bool IsSymbolBlockSizeSet() const;
    exprval_t GetSymbolBlockSize() const;
    inline void SetSymbolBlockSize(exprval_t newVal);

    inline Usage GetSymbolUsageType() const;
    inline void SetSymbolUsageType(Usage type);

    inline bool IsLocalLabel() const;
    void SetIsLocalLabel(const bool value);

    int GetLocalLabelNum() const;
    void SetLocalLabelNum(const int value);

    // for .local, .global and .weak directives handling,
    // not to override later the symbol visibility using other directives
    inline bool GetVisibilitySetExplicitly() const;
    inline void SetVisibilitySetExplicitly(const bool value);

    /**
     * \brief Reduce current_address from symbol expression.
     */
    void ReduceCurrentAddress();

    const std::string ToString(const bool printSymbolExpression, const int indent) const;
    /**
     *  \brief Prints debug information about this assembler symbol into output file.
     *  \param[out] out output file
     *  \param[in] printSymbolExpression if it is true, also symbol expression is printed
     *  \param[in] indent determines indent from left side.
     */
    void DebugPrint(FILE* out, const bool printSymbolExpression, const int indent) const;

    /**
     * \brief Parse local label argument name, present in ExprSymbol
     * \param[out] index {NUM}
     * \param[out] isForward is in format '{NUM}f'?
     * \param[in] name in format '{NUM}("b"|"f")', for example '1b', '2f' ...
     * \return indicator that name represents a local symbol
     */
    static bool ParseLocalLabelName(int& index, bool& isForward, const std::string& name);

private:
    void ActualizeRelativeSymbol();

    /// Symbol name
    std::string m_Name;
    /// Specifies whether symbol was defined as global.
    bool m_IsGlobal;
    /**
     * Specifies whether symbol was defined as weak.
     * If this value is true, the symbol is also global. (m_IsGlobal is set to true)
     */
    bool m_IsWeak;
    /// Represents symbol value. Can be either constant, another symbol or an expression.
    ExprElemBase* m_SymbolExpression;
    /// Was this symbol created as a pseudo symbol?
    bool m_IsPseudoSymbol;

    /// Size of block that starts with this symbol.
    bool m_SymbolBlockSizeSet;
    exprval_t m_SymbolBlockSize;

    Usage m_UsageType;

    bool m_IsLocalLabel;
    int m_LocalLabelNum;

    bool m_VisibilitySetExplicitly;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
inline const std::string& AsmSymbol::GetName() const
{
    return m_Name;
}

inline void AsmSymbol::SetName(const std::string& name)
{
    m_Name = name;
}

inline bool AsmSymbol::IsGlobal() const
{
    return m_IsGlobal;
}

inline void AsmSymbol::SetIsWeak(const bool value)
{
    m_IsGlobal = value;
    m_IsWeak = value;
}

inline bool AsmSymbol::IsPseudoSymbol() const
{
    return m_IsPseudoSymbol;
}

inline bool AsmSymbol::IsSymbolBlockSizeSet() const
{
    return m_SymbolBlockSizeSet;
}

inline void AsmSymbol::SetSymbolBlockSize(exprval_t value)
{
    m_SymbolBlockSize = value;
    m_SymbolBlockSizeSet = true;
}

inline AsmSymbol::Usage AsmSymbol::GetSymbolUsageType() const
{
    return m_UsageType;
}

inline void AsmSymbol::SetSymbolUsageType(Usage type)
{
    m_UsageType = type;
}

inline bool AsmSymbol::IsLocalLabel() const
{
    return m_IsLocalLabel;
}

inline bool AsmSymbol::GetVisibilitySetExplicitly() const
{
    return m_VisibilitySetExplicitly;
}

inline void AsmSymbol::SetVisibilitySetExplicitly(const bool value)
{
    m_VisibilitySetExplicitly = value;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
typedef std::set<AsmSymbol*> AsmSymbolsSet;

}   // codasip::assembler
}   // codasip

#endif // !defined(EA_93516344_01F5_4621_82B4_C0427C6D25A8__INCLUDED_)
