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
 *  \brief   Part of assembler. This file contains class ExprHandlerUnit that is used by syntactic
 *           analyzer semantic actions, mainly to transform expressions abstract syntax tree to
 *           assembler internal expression representation.
 *  \author  Adam Husar, Martin Ministr
 *  \date    Jan 1, 2009
 */

#if !defined(EA_88A4432A_86F7_4317_9658_2B94D6057248__INCLUDED_)
#define EA_88A4432A_86F7_4317_9658_2B94D6057248__INCLUDED_

#include "exprelems.h"
#include "tokenstructs.h"


namespace codasip {
namespace assembler {


/**
 *  \brief Expression handler unit used by syntactic analyzer to create expressions and
 *         pseudo-symbols from AST created by actions from expressions rules.
 */
class ExprHandlerUnit
{
public:
    /**
     *  \brief Used by semantic action of rule expr ::= expr1.
     *         Transforms expression AST to expression that uses ExprElemBase derived classes.
     *         Either evaluates expression AST to numerical value or creates pseudo symbol
     *         that represents this expression.
     *         Returns Token* that can have id either T_SYMBOL or T_NUMBER.
     *
     *         Caller is responsible for freeing of returned result token object.
     */
    Token& HandleExpr(const TokenNode& root);

private:
    ExprElemBase& TransformExprTree(const TokenNode& tokenNode);
    ExprElemBase& TransformExprLeaf(const Token& token);
    SubExpr::Operator ConvertOperatorToOpType(const int tokenOpNum);
};

}   // codasip::assembler
}   // codasip

#endif // !defined(EA_88A4432A_86F7_4317_9658_2B94D6057248__INCLUDED_)
