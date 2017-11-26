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
 *  \brief   Part of assembler. This file contains definition of base class ExprElemBase and
 *           derived classes ExprSymbol, ExprConst and SubExpr. They are used to represent
 *           assembler expression.
 *  \author  Adam Husar, Martin Ministr
 *  \date    Jan 1, 2009
 */

#if !defined(EA_B6E33312_9633_40eb_BEF4_1C9BC18D025D__INCLUDED_)
#define EA_B6E33312_9633_40eb_BEF4_1C9BC18D025D__INCLUDED_

#include <cstdio>
#include <set>

#include "enumutils.h"

#include "asmstdinclude.h"
#include "asmsymbol.h"


namespace codasip {
namespace assembler {


class ExprSymbol;
class ExprConst;
class SubExpr;


////////////////////////////////////////////////////////////////////////////////////////////////////
/**
 *  \brief Base class for all expression elements: ExprSymbol, ExprConst and SubExpr.
 */
class ExprElemBase
{
public:
    ExprElemBase(const bool isSigned, const size_t bitWidth);

    virtual ~ExprElemBase();

    inline bool IsSigned() const;
    inline size_t GetBitWidth() const;

    /**
     *  \brief Clones this object deeply
     */
    virtual ExprElemBase& Clone() const = 0;
    /**
     *  \brief Returns expression elements value type.
     */
    virtual AsmSymbol::ValueType GetValueType() = 0;
    /**
     *  \brief Returns section number. Fails if ValType is not AsmSymbol::symbvalRel.
     */
    virtual int GetSectionNumber() = 0;
    /**
     *  \brief Tries to calculate expression value. Then using value stored to valueType,
     *         you can determine value type of result and if this result is valid.
     *  \param[out] valueType
     */
    virtual exprval_t TryEval(AsmSymbol::ValueType* valueType = NULL, bool* isSigned = NULL,
        size_t* bitWidth = NULL) = 0;
    /**
     *  \brief Determines if expression has mask.
     */
    virtual bool HasMask() const = 0;
    /**
     *  \brief Determines if expression has constant that is used within binary and operation.
     */
    virtual bool HasMaskedConstant() const = 0;
    /**
     *  \brief Collects all symbols within tree
     *  \param[in, out] symbols
     */
    virtual void GetSymbols(AsmSymbolsSet& symbols) const = 0;
    /**
     *  \brief Determines if it is a current_address.
     */
    virtual bool IsCurrentAddress() const;
    virtual bool HasCurrentAddress() const = 0;
    /**
     *  \brief Applies CodAL based rules to the expression. Add more conversions to the operands.
     */
    virtual void ApplyCodALRules();
    /**
     *  \brief Creates relocation expression string.
     *         This string is useful for linker.
     *  \param[in] debug prints this string for debug purpose
     *  \param[in] indent indentation
     */
    virtual const std::string ToRelocationExpression(const bool debug = false,
        const int indent = 0) const = 0;
    /**
     *  \brief This method is used to create expression string.
     *         This string is then useful when printing semantic error messages.
     */
    virtual const std::string ToString() const = 0;
    /**
     *  \brief Prints debug information about this expression element symbol into file fout.
     *  \param[out] fout
     *  \param[in] indent determines indent from left side
     */
    virtual void DebugPrint(FILE* fout, const int indent) const = 0;

    /**
     *  \brief Set constant as masked in expression.
     */
    virtual void SetMasked() = 0;

    bool IsExprSymbol() const;
    ExprSymbol& ToExprSymbol();
    const ExprSymbol& ToExprSymbol() const;

    bool IsExprConst() const;
    ExprConst& ToExprConst();
    const ExprConst& ToExprConst() const;

    bool IsSubExpr() const;
    SubExpr& ToSubExpr();
    const SubExpr& ToSubExpr() const;

    /**
     *  \brief Determines if it is a symbol. Could be ExprSymbol or ExprConst with relative symbol.
     */
    bool IsSymbol() const;

private:
    /// sign information
    bool m_Signed;
    /// bit width
    size_t m_BitWidth;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
inline bool ExprElemBase::IsSigned() const
{
    return m_Signed;
}

inline size_t ExprElemBase::GetBitWidth() const
{
    return m_BitWidth;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
/**
 *  \brief Represents symbol expression element.
 *         In in fact only a wrapper of AsmSymbol class that can be used as expression element.
 *  \note  This class is used in other parts of assembler and when not all methods are inline,
 *         then the linker writes a message about auto-import.
 */
class ExprSymbol : public ExprElemBase
{
public:
    // factory methods
    static ExprSymbol& Create(AsmSymbol& symbol);

    ~ExprSymbol();

    /// \copydoc ExprElemBase::Clone
    ExprElemBase& Clone() const;
    /// \copydoc ExprElemBase::GetValueType
    virtual AsmSymbol::ValueType GetValueType();
    /// \copydoc ExprElemBase::GetSectionNumber
    virtual int GetSectionNumber();
    /// \copydoc ExprElemBase::TryEval
    virtual exprval_t TryEval(AsmSymbol::ValueType* valueType = NULL, bool* isSigned = NULL,
        size_t* bitWidth = NULL);
    /// \copydoc ExprElemBase::HasMask
    virtual bool HasMask() const;
    /// \copydoc ExprElemBase::HasMaskedConstant
    virtual bool HasMaskedConstant() const;
    /// \copydoc ExprElemBase::GetSymbols
    virtual void GetSymbols(AsmSymbolsSet& symbols) const;
    /// \copydoc ExprElemBase::HasCurrentAddress
    virtual bool HasCurrentAddress() const;
    /// \copydoc ExprElemBase::ToRelocationExpression
    virtual const std::string ToRelocationExpression(const bool debug = false,
        const int indent = 0) const;
    /// \copydoc ExprElemBase::ToString
    virtual const std::string ToString() const;
    /// \copydoc ExprElemBase::DebugPrint
    virtual void DebugPrint(FILE* fout, const int indent) const;

    /// \copydoc ExprElemBase::SetMasked
    virtual void SetMasked();

    /**
     *  \brief Returns pointer to referenced symbol.
     */
    AsmSymbol& GetSymbol() const;
    const std::string& GetName() const;
    void OverrideSymbol(AsmSymbol& symbol);

private:
    ExprSymbol(AsmSymbol& symbol);

    /// This is a pointer to a symbol that represents this expression element.
    AsmSymbol* m_Symbol;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
/**
 *  \brief Represents expression element that holds only a numeric constant value.
 */
class ExprConst : public ExprElemBase
{
public:
    CODASIP_ENUM_CLASS_STR(Function,
        (NONE, "none"),
        (CODASIP_FATAL, "codasip_fatal")
    );

    // factory methods
    static ExprConst& CreateConstant(const bool isSigned, const size_t bitWidth,
        const exprval_t value, const AsmSymbol::ValueType valueType,
        const int sectionNumber = SECTION_NUMBER_UNDEFINED, AsmSymbol* relativeSymbol = NULL);
    static ExprConst& CreateAbsolute(const exprval_t value);
    static ExprConst& CreateComplex();
    static ExprConst& CreateCurrentAddress();
    /**
     * \brief Creates built-in function
     * \param[in] function built-in function type
     * \param[in] exitCode
     * \param[in] message function message
     */
    static ExprConst& CreateFunction(const Function function, const uint32_t exitCode,
        const std::string& message);
    static ExprConst& CreateSectionRelative(const exprval_t address, const int sectionNumber);
    static ExprConst& CreateUndefined();
    static ExprConst& CreateError();

    ~ExprConst();

    inline exprval_t GetValue() const;
    inline AsmSymbol::ValueType GetValueType() const;

    /// \copydoc ExprElemBase::Clone
    virtual ExprElemBase& Clone() const;
    /// \copydoc ExprElemBase::GetValueType
    virtual AsmSymbol::ValueType GetValueType();
    /// \copydoc ExprElemBase::GetSectionNumber
    virtual int GetSectionNumber();
    /// \copydoc ExprElemBase::TryEval
    virtual exprval_t TryEval(AsmSymbol::ValueType* valueType = NULL, bool* isSigned = NULL,
        size_t* bitWidth = NULL);
    /// \copydoc ExprElemBase::HasMask
    virtual bool HasMask() const;
    /// \copydoc ExprElemBase::HasMaskedConstant
    virtual bool HasMaskedConstant() const;
    /// \copydoc ExprElemBase::GetSymbols
    virtual void GetSymbols(AsmSymbolsSet& symbols) const;
    /// \copydoc ExprElemBase::IsCurrentAddress
    virtual bool IsCurrentAddress() const;
    /// \copydoc ExprElemBase::HasCurrentAddress
    virtual bool HasCurrentAddress() const;
    /// \copydoc ExprElemBase::ToRelocationExpression
    virtual const std::string ToRelocationExpression(const bool debug = false,
        const int indent = 0) const;
    /// \copydoc ExprElemBase::ToString
    virtual const std::string ToString() const;
    /// \copydoc ExprElemBase::DebugPrint
    virtual void DebugPrint(FILE* fout, const int indent) const;

    AsmSymbol& GetSectionRelativeSymbol() const;
    void SetSectionRelativeSymbol(AsmSymbol& symbol);

    inline bool IsMasked() const;
    inline Function GetFunction() const;
    inline uint32_t GetFunctionExitCode() const;
    inline const std::string& GetFunctionMessage() const;
    /// \copydoc ExprElemBase::SetMasked
    virtual void SetMasked();

private:
    ExprConst(const bool isSigned, const size_t bitWidth, const exprval_t value,
        const AsmSymbol::ValueType valueType, const int sectionNumber = SECTION_NUMBER_UNDEFINED,
        AsmSymbol* relativeSymbol = NULL, const Function function = NONE,
        const uint32_t exitCode = 0, const std::string& functionMessage = "");

    /// Constant value of this expression element.
    exprval_t m_Value;
    /// Type of symbol value. Can be either section relative, absolute or undefined.
    AsmSymbol::ValueType m_ValueType;
    /// Section number. Valid only for symbols with value type section relative.
    int m_SectionNumber;
    /// If this constant represents value of a section relative symbol, this is the original symbol.
    AsmSymbol* m_SectionRelativeSymbol;
    /// Constant is masked in expression (binary and operation is done over this constant).
    /// When true it silences warnings about truncation of this constant.
    bool m_Masked;
    /// constant is not value but a function that needs to be called when constant is evaluated
    /// valid only for the absolute constant
    Function m_Function;
    /// exit code returned by 'codasip_fatal' function
    uint32_t m_FunctionExitCode;
    /// message printed by 'codasip_fatal' function
    std::string m_FunctionMessage;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
inline exprval_t ExprConst::GetValue() const
{
    return m_Value;
}

inline AsmSymbol::ValueType ExprConst::GetValueType() const
{
    return m_ValueType;
}

inline bool ExprConst::IsMasked() const
{
    return m_Masked;
}

inline ExprConst::Function ExprConst::GetFunction() const
{
    return m_Function;
}

inline uint32_t ExprConst::GetFunctionExitCode() const
{
    return m_FunctionExitCode;
}

inline const std::string& ExprConst::GetFunctionMessage() const
{
    return m_FunctionMessage;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
/**
 *  \brief Represents subexpression element - that means operator with one or two operands.
 */
class SubExpr : public ExprElemBase
{
public:
    /**
     *  \brief All operator types. May be extended.
     *         These identifiers are used in expressions instead of bison generated token
     *         identifiers because we need to have expressions independent on assembler lexical
     *         and syntactic analyzer.
     *         From token numbers are transformed to these in ExprHandlerUnit.
     */
    CODASIP_ENUM_CLASS_STR(Operator,
        (UNKNOWN, "unknown"),
        (NEGATION, "!"),        // T_OP_NEG
        (BINARY_NEGATION, "~"), // T_OP_BIN_NEG
        (MULTIPLICATION, "*"),  // T_OP_MULT
        (DIVISION, "/"),        // T_OP_DIV
        (MODULO, "%"),          // T_OP_MOD
        (PLUS, "+"),            // T_OP_PLUS
        (MINUS, "-"),           // T_OP_MINUS
        (LEFT_SHIFT, "<<"),      // T_OP_LSHIFT
        (RIGHT_SHIFT, ">>"),     // T_OP_RSHIFT
        (BINARY_AND, "&"),      // T_OP_BIN_AND
        (BINARY_XOR, "^"),      // T_OP_BIN_XOR
        (BINARY_OR, "|"),       // T_OP_BIN_OR
        (LOWER, "<"),
        (GREATER, ">"),
        (EQUAL, "=="),
        (LOWER_EQUAL, "<="),
        (GREATER_EQUAL, ">="),
        (NOT_EQUAL, "!="),
        (LOGICAL_AND, "&&"),
        (LOGICAL_OR, "||"),
        (SELECT, "?"),
        (COMMA, ",")
    );

    typedef std::vector<ExprElemBase*> Operands;

    // factory methods
    /**
     *  \brief Creates conversion operation, unary addition with desired destination type
     *  \param[in] isSigned
     *  \param[in] bitWidth
     *  \param[in] operand1
     */
    static SubExpr& CreateConversion(const bool isSigned, const size_t bitWidth,
        ExprElemBase& operand1);
    /**
     *  \brief Creates unary SubExpr
     *  \param[in] op
     *  \param[in] operand1
     */
    static SubExpr& CreateUnary(const SubExpr::Operator op, ExprElemBase& operand1);
    /**
     *  \brief Creates binary SubExpr
     *  \param[in] op
     *  \param[in] operand1
     *  \param[in] operand2
     */
    static SubExpr& CreateBinary(const Operator op, ExprElemBase& operand1, ExprElemBase& operand2);
    /**
     *  \brief Creates ternary SubExpr
     *  \param[in] op
     *  \param[in] operand1
     *  \param[in] operand2
     *  \param[in] operand3
     */
    static SubExpr& CreateTernary(const SubExpr::Operator op, ExprElemBase& operand1,
        ExprElemBase& operand2, ExprElemBase& operand3);

    SubExpr(const SubExpr& copy);

    ~SubExpr();

    /// \copydoc ExprElemBase::Clone
    virtual ExprElemBase& Clone() const;
    /// \copydoc ExprElemBase::GetValueType
    virtual AsmSymbol::ValueType GetValueType();
    /// \copydoc ExprElemBase::GetSectionNumber
    virtual int GetSectionNumber();
    /// \copydoc ExprElemBase::TryEval
    virtual exprval_t TryEval(AsmSymbol::ValueType* valueType = NULL, bool* isSigned = NULL,
        size_t* bitWidth = NULL);
    /// \copydoc ExprElemBase::HasMask
    virtual bool HasMask() const;
    /// \copydoc ExprElemBase::HasMaskedConstant
    virtual bool HasMaskedConstant() const;
    /// \copydoc ExprElemBase::GetSymbols
    virtual void GetSymbols(AsmSymbolsSet& symbols) const;
    /// \copydoc ExprElemBase::HasCurrentAddress
    virtual bool HasCurrentAddress() const;
    /// \copydoc ExprElemBase::ApplyCodALRules
    virtual void ApplyCodALRules();
    /// \copydoc ExprElemBase::ToRelocationExpression
    virtual const std::string ToRelocationExpression(const bool debug = false,
        const int indent = 0) const;
    /// \copydoc ExprElemBase::ToString
    virtual const std::string ToString() const;
    /// \copydoc ExprElemBase::DebugPrint
    virtual void DebugPrint(FILE* fout, const int indent) const;

    /// \copydoc ExprElemBase::SetMasked
    virtual void SetMasked();

    inline Operator GetOperator() const;
    inline Operands& GetOperands();
    inline const Operands& GetOperands() const;
    ExprElemBase& GetOperand(const size_t index);
    const ExprElemBase& GetOperand(const size_t index) const;

    inline bool IsUnary() const;
    inline bool IsBinary() const;
    inline bool IsTernary() const;

    inline void SetOperator(const SubExpr::Operator op);
    void SetOperand(const size_t index, ExprElemBase& operand);

private:
    SubExpr(const bool isSigned, const size_t bitWidth, const Operator op, ExprElemBase& operand1);
    SubExpr(const bool isSigned, const size_t bitWidth, const Operator op, ExprElemBase& operand1,
        ExprElemBase& operand2);
    SubExpr(const bool isSigned, const size_t bitWidth, const Operator op, ExprElemBase& operand1,
        ExprElemBase& operand2, ExprElemBase& operand3);

    static size_t DetermineBinaryOperationBitWidth(const SubExpr::Operator op,
        const ExprElemBase& operand1, const ExprElemBase& operand2);
    static size_t DetermineBinaryResultBitWidth(const SubExpr::Operator op,
        const ExprElemBase& operand1, const ExprElemBase& operand2);
    static size_t DetermineBinaryOperationSign(const SubExpr::Operator op,
        const ExprElemBase& operand1, const ExprElemBase& operand2);
    static size_t DetermineBinaryResultSign(const SubExpr::Operator op,
        const ExprElemBase& operand1, const ExprElemBase& operand2);
    static size_t DetermineTernaryBitWidth(const SubExpr::Operator op, const ExprElemBase& operand1,
        const ExprElemBase& operand2, const ExprElemBase& operand3);
    static size_t DetermineTernarySign(const SubExpr::Operator op, const ExprElemBase& operand1,
        const ExprElemBase& operand2, const ExprElemBase& operand3);

    ExprConst& EvalSubExpr();
    ExprConst& EvalUnarySubExpr();
    ExprConst& EvalBinarySubExpr();
    ExprConst& EvalBinarySubExpr_FirstOpRel();
    ExprConst& EvalBinarySubExpr_FirstOpAbs();

    exprval_t ApplyUnaryOperator(const Operator op, ExprElemBase& operand1) const;
    exprval_t ApplyBinaryOperator(const Operator op, ExprElemBase& operand1,
        ExprElemBase& operand2) const;
    exprval_t ApplyTernaryOperator(const Operator op, ExprElemBase& operand1,
        ExprElemBase& operand2, ExprElemBase& operand3) const;

private:
    const std::string ToRelocationExpressionDebug(const int indent) const;

    /**
     * \brief Operation is originally gained from source code as tokens, these tokens
     *        are then transformed into ExprHandlerUnit into enum Operation values.
     *
     *        If operator type does not determine whether this operator should be applied as
     *        unary or binary (i.e. MINUS), we can decide from second operand value (is
     *        is NULL or not).
     */
    Operator m_Operator;
    /// Operation operands
    Operands m_Operands;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
inline SubExpr::Operator SubExpr::GetOperator() const
{
    return m_Operator;
}

inline SubExpr::Operands& SubExpr::GetOperands()
{
    return m_Operands;
}

inline const SubExpr::Operands& SubExpr::GetOperands() const
{
    return m_Operands;
}

inline bool SubExpr::IsUnary() const
{
    return m_Operands.size() == 1;
}

inline bool SubExpr::IsBinary() const
{
    return m_Operands.size() == 2;
}

inline bool SubExpr::IsTernary() const
{
    return m_Operands.size() == 3;
}

inline void SubExpr::SetOperator(const SubExpr::Operator op)
{
    m_Operator = op;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
/**
 *  \brief This is an auxiliary class,
 *         which contains some factory methods of ExprSymbol, ExprConst and SubExpr classes.
 */
class ExprUtils
{
public:
    /**
     *  \brief Check current_address format, supported is only 'S - current-address'
     *  \param[in] root
     */
    static bool IsCurrentAddressSupported(const ExprElemBase& root);
    /**
     * \brief This method tries to evaluate operand.
     *        If this operand is not only one ExprConst object and
     *        if result has not undefined symbol value type, reduces it to one ExprConst object.
     *        Rewrites given operand if reduction was made.
     * \param[in, out] root
     */
    static void ReduceOperandIfPossible(ExprElemBase** root);
    /**
     * \brief Replace all subexpressions in format ExprConst{number} - ExprConst{current_address}
     *        into ExprConst{number}.
     * \param[in, out] root
     */
    static void ReduceCurrentAddress(ExprElemBase** root);
    /**
     * \brief Transforms all subexpressions in format
     *        (ExprSymbol{$0} +/- ExprConst{number}) - ExprConst{current_address}
     *        into format (ExprSymbol{$0} - ExprConst{current_address}) +/- ExprConst{number}.
     * \param[in, out] root
     */
    static void TransformCurrentAddress(ExprElemBase& root);
};

}   // codasip::assembler
}   // codasip

#endif // !defined(EA_B6E33312_9633_40eb_BEF4_1C9BC18D025D__INCLUDED_)
