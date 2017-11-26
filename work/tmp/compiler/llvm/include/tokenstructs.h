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
 *  \brief   This file contains definition of classes Token, TokenList and TokenNode,
 *           these classes are used as interface structures between syntactic analyzer and
 *           directive and expression handling units.
 *  \author  Adam Husar
 *  \date    Jan 1, 2009
 */

#if !defined(EA_954817E8_E6AA_4ae5_AFBC_67DBA3D03EA2__INCLUDED_)
#define EA_954817E8_E6AA_4ae5_AFBC_67DBA3D03EA2__INCLUDED_

#include <deque>
#include <string>

#include "asmstdinclude.h"
#include "asmsymbol.h"


namespace codasip {
namespace assembler {


////////////////////////////////////////////////////////////////////////////////////////////////////
class Token
{
public:
    static Token& CreateKeyword(const int id);
    static Token& CreateNumerical(const exprval_t value, const bool isMasked = false);
    static Token& CreateDouble(const double value);
    static Token& CreateId(const std::string& value);
    static Token& CreateString(const std::string& value);
    static Token& CreateSymbol(AsmSymbol& symbol);

    Token(const Token& copy);

    bool IsIdentifier() const;
    inline bool IsNumericConstant() const;
    inline bool IsDoubleConstant() const;
    inline bool IsSymbol() const;

    int Id() const; // TODO rename to GetId
    /**
     *  \brief Returns tokens numerical value or symbols value.
     *         Fails if token ID is not T_NUM_CONST or T_SYMBOL.
     *         If m_Id is T_NUM_CONST, second argument may be NULL.
     *         Evaluation is successful only if result has absolute value type.
     *  \param[in] symbolValueType information whether symbol value evaluation was successful
     */
    exprval_t NumAttrEval(AsmSymbol::ValueType* symbolValueType = NULL) const;
    /**
     * \brief Calls TargwordAttr.
     */
    exprval_t ToInteger() const;
    /**
     * \brief Calls TargwordAttr and truncates result, prints error if truncation changed value.
     */
    int IntAttr() const;
    double DoubleAttr() const;
    /**
     *  \brief Returns tokens string contents value. Fails if token ID is not T_STRING.
     */
    const std::string& StrAttr() const;
    /**
     *  \brief Return constant symbol pointer. Fails if token id is not T_SYMBOL.
     */
    AsmSymbol* SymbolAttr() const;
    bool IsMasked() const;

    const std::string ToString() const;

private:
    Token(const int id, const exprval_t numAttr = 0, const double doubleAttr = 0,
        const std::string& strAttr = "", AsmSymbol* symbol = NULL, const bool isMasked = false);

    exprval_t TargwordAttr() const;

    /// Token ID. Same value that returns lexical analyzer when this token is recognized.
    /// Also specifies type of attribute that this token has.
    int m_Id;

    /// Numeric attribute. Valid only if token type is T_NUM_CONST.
    exprval_t m_NumAttr;
    /// Numeric attribute. Valid only if token type is T_DOUBLE_CONST.
    double m_DoubleAttr;
    /// String token attribute, valid only if m_nId is T_STRING or T_ID.
    std::string m_StrAttr;
    /// Pointer to symbol in symbol table, valid only if m_Id is T_SYMBOL.
    AsmSymbol* m_Symbol;
    /// Token is created from expression that is masked. Valid only if token type is T_NUM_CONST.
    bool m_Masked;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
inline bool Token::IsNumericConstant() const
{
    return m_Id == T_NUM_CONST;
}

inline bool Token::IsSymbol() const
{
    return m_Id == T_SYMBOL;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
class TokenList : public std::deque<Token*>
{
public:
    /**
     * \brief Frees stored tokens.
     */
    virtual ~TokenList();

private:
    void Free();
};

////////////////////////////////////////////////////////////////////////////////////////////////////
/**
 *  \brief This class serves as one node of token tree.
 *         Tree from these nodes is constructed using semantic actions is expression parsing rules
 *         and then is passed to the expression handling unit.
 *         Functions used in bison used non NULL pointers instead reference to simplify code.
 */
class TokenNode
{
public:
    /**
     *  \brief Initializes this node to be a leaf and to have one Token value.
     *         This tree node becomes owner of handed-over object.
     *  \param[in] leafToken
     */
    static TokenNode* CreateLeaf(Token& leaf);
    /**
     *  \brief Initializes this node to have two child nodes.
     *         This tree node becomes owner of handed-over objects.
     *  \param[in] child1
     *  \param[in] child2
     */
    static TokenNode* CreateUnary(const int op, TokenNode* child);
    /**
     *  \brief Initializes this node to have three child nodes.
     *         This tree node becomes owner of handed-over objects.
     *  \param[in] child1
     *  \param[in] child2
     *  \param[in] child3
     */
    static TokenNode* CreateBinary(const int op, TokenNode* lhs, TokenNode* rhs);

    virtual ~TokenNode();

    /**
     *  \brief Returns child on given index. Fails if index is out of range.
     *  \param[in] index
     */
    const TokenNode& GetChild(const size_t index) const;
    /**
     *  \brief Returns count of this node children. Returns 0 if this node is a leaf.
     */
    int GetChildCount() const;
    /**
     *  \brief Returns contained Token object pointer. Only leaves can contain a token.
     *         Fails if this node is not a token.
     */
    const Token& GetLeafToken() const;

private:
    TokenNode(Token& leafToken);
    TokenNode(TokenNode* child1, TokenNode* child2);
    TokenNode(TokenNode* child1, TokenNode* child2, TokenNode* child3);

    /// This array contains pointers to children nodes. CTokenTreeNode is owner of children nodes.
    std::vector<TokenNode*> m_ChildNodes;
    /// If this token is a leaf (has 0 children) then this pointer points to a Token object.
    Token* m_LeafToken;
};

}   // codasip::assembler
}   // codasip

#endif // !defined(EA_954817E8_E6AA_4ae5_AFBC_67DBA3D03EA2__INCLUDED_)
