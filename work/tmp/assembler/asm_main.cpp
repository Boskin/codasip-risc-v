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
 * \date    2017-11-25
 * \author  Codasip (c) Assembler generator
 * \version 6.8.2-1.win.7.EVALUATION
 * \brief   Source for assembler
 */
#include <cstdio>
#include <ctype.h>
#include <string>

#include "check_condition.h"

#include "usedattr.h"
#include "instrcoderiface.h"

#define INSTGENERATOR_OK 19
#define INSTGENERATOR_FAIL 20

#include "basicoptions.h"
static const codasip::getopt::ToolInfoSetter g_ToolInfo(codasip::getopt::ToolInfo("C51_657_727", 
"RISC_V5", 
"bc0f726d732216a62d28372eb2dd55dee052bfe611decfbe60eace2b7f66beaa", 
"2017-11-25 23:36:57", 
""
));
namespace codasip {
namespace assembler {

void evaluate_MI3valIH1_13default_start13_10rel_addr128rel_addr1_10rel_addr12(ParsedAttrInfo& info)
{
    ExprElemBase& expression = 
        SubExpr::CreateBinary(SubExpr::RIGHT_SHIFT,
            (
                SubExpr::CreateBinary(SubExpr::MINUS,
                    info.CreateExpression(),
                    ExprConst::CreateCurrentAddress()
                )
            ),
            SubExpr::CreateConversion(true, 32,
                ExprConst::CreateAbsolute(1L)
            )
        );

    AsmSymbol& symbol = g_Tables.symbolTable.DefineSymbol(LogicalFileInfo::GetLocation(), CreatePseudoSymbolName(), &expression, true);
    info.SetExpressionToken(Token::CreateSymbol(symbol));

    const Token& token = info.GetExpressionToken();
    if (token.IsSymbol())
    {
        info.SetRelative(1);
    }
    else
    {
        AsmSymbol::ValueType type;
        exprval_t value = token.NumAttrEval(&type);
        CHECK_CONDITION(type != AsmSymbol::ERROR);
        info.SetExpressionToken(Token::CreateNumerical(value, token.IsMasked()));
    }
}

void evaluate_MI3valIH1_13default_start13_10rel_addr208rel_addr1_10rel_addr20(ParsedAttrInfo& info)
{
    ExprElemBase& expression = 
        SubExpr::CreateBinary(SubExpr::RIGHT_SHIFT,
            (
                SubExpr::CreateBinary(SubExpr::MINUS,
                    info.CreateExpression(),
                    ExprConst::CreateCurrentAddress()
                )
            ),
            SubExpr::CreateConversion(true, 32,
                ExprConst::CreateAbsolute(1L)
            )
        );

    AsmSymbol& symbol = g_Tables.symbolTable.DefineSymbol(LogicalFileInfo::GetLocation(), CreatePseudoSymbolName(), &expression, true);
    info.SetExpressionToken(Token::CreateSymbol(symbol));

    const Token& token = info.GetExpressionToken();
    if (token.IsSymbol())
    {
        info.SetRelative(1);
    }
    else
    {
        AsmSymbol::ValueType type;
        exprval_t value = token.NumAttrEval(&type);
        CHECK_CONDITION(type != AsmSymbol::ERROR);
        info.SetExpressionToken(Token::CreateNumerical(value, token.IsMasked()));
    }
}

void evaluate_MI3valIH1_13default_start18_15rel_jalr_addr128rel_addr1_15rel_jalr_addr12(ParsedAttrInfo& info)
{
    ExprElemBase& expression = 
        (
            SubExpr::CreateBinary(SubExpr::MINUS,
                info.CreateExpression(),
                ExprConst::CreateCurrentAddress()
            )
        );

    AsmSymbol& symbol = g_Tables.symbolTable.DefineSymbol(LogicalFileInfo::GetLocation(), CreatePseudoSymbolName(), &expression, true);
    info.SetExpressionToken(Token::CreateSymbol(symbol));

    const Token& token = info.GetExpressionToken();
    if (token.IsSymbol())
    {
        info.SetRelative(1);
    }
    else
    {
        AsmSymbol::ValueType type;
        exprval_t value = token.NumAttrEval(&type);
        CHECK_CONDITION(type != AsmSymbol::ERROR);
        info.SetExpressionToken(Token::CreateNumerical(value, token.IsMasked()));
    }
}

int Generator_MI13default_start(TranslatedInstr& instruction, ComputedAttributes& attributeValues)
{
    {
        //MI13default_start
        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX11");
        switch (codasip_switch_MI13default_start)
        {
        case CODASIP_SWITCH_VALUE_MI9riscv_isaIH1_13default_start:
        {
            //MI9riscv_isaIH1_13default_start
            StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX11");
            switch (codasip_switch_MI9riscv_isaIH1_13default_start)
            {
            case CODASIP_SWITCH_VALUE_MI12i_snez_aliasIH1_13default_start:
            {
                //MI12i_snez_aliasIH1_13default_start
                StrAppendStr(instruction.GetCoding(), 0, "0000000XXXXX00000011XXXXX0110011");
                //MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX");
                switch (codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1)
                {
                case CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all7xpr_rs1:
                {
                    //MI3x_0IH1_13default_start9_7xpr_all7xpr_rs1
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00000");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1:
                {
                    //MI3xprIH1_13default_start9_7xpr_all7xpr_rs1
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX");
                    switch (codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1)
                    {
                    case CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_24IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_25IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_26IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_27IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_28IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_29IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_30IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_31IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_12IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_13IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_14IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_15IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_6IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_7IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_3IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_1IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_2IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_4IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_5IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_8IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_9IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_10IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_11IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_16IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_17IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_18IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_19IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_20IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_21IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_22IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_23IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10111");
                    }
                    break;
                    default:
                        return INSTGENERATOR_FAIL;
                    }
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
                //MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX");
                switch (codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd)
                {
                case CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all6xpr_rd:
                {
                    //MI3x_0IH1_13default_start9_7xpr_all6xpr_rd
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00000");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all6xpr_rd:
                {
                    //MI3xprIH1_13default_start9_7xpr_all6xpr_rd
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX");
                    switch (codasip_switch_MI3xprIH1_13default_start9_7xpr_all6xpr_rd)
                    {
                    case CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_24IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_25IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_26IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_27IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_28IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_29IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_30IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_31IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_12IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_13IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_14IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_15IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_6IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_7IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_3IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_1IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_2IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_4IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_5IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_8IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_9IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_10IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_11IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_16IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_17IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_18IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_19IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_20IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_21IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_22IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_23IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10111");
                    }
                    break;
                    default:
                        return INSTGENERATOR_FAIL;
                    }
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
            }
            break;
            case CODASIP_SWITCH_VALUE_MI9i_syscallIH1_13default_start:
            {
                //MI9i_syscallIH1_13default_start
                StrAppendStr(instruction.GetCoding(), 0, "00000000011000000000000001011111");
                //MI11opc_syscallIH1_13default_start14_11opc_syscall3opc
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX1011111");
            }
            break;
            case CODASIP_SWITCH_VALUE_MI12i_sgtz_aliasIH1_13default_start:
            {
                //MI12i_sgtz_aliasIH1_13default_start
                StrAppendStr(instruction.GetCoding(), 0, "0000000XXXXX00000010XXXXX0110011");
                //MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX");
                switch (codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1)
                {
                case CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all7xpr_rs1:
                {
                    //MI3x_0IH1_13default_start9_7xpr_all7xpr_rs1
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00000");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1:
                {
                    //MI3xprIH1_13default_start9_7xpr_all7xpr_rs1
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX");
                    switch (codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1)
                    {
                    case CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_24IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_25IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_26IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_27IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_28IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_29IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_30IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_31IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_12IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_13IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_14IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_15IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_6IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_7IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_3IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_1IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_2IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_4IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_5IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_8IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_9IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_10IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_11IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_16IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_17IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_18IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_19IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_20IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_21IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_22IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_23IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10111");
                    }
                    break;
                    default:
                        return INSTGENERATOR_FAIL;
                    }
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
                //MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX");
                switch (codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd)
                {
                case CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all6xpr_rd:
                {
                    //MI3x_0IH1_13default_start9_7xpr_all6xpr_rd
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00000");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all6xpr_rd:
                {
                    //MI3xprIH1_13default_start9_7xpr_all6xpr_rd
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX");
                    switch (codasip_switch_MI3xprIH1_13default_start9_7xpr_all6xpr_rd)
                    {
                    case CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_24IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_25IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_26IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_27IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_28IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_29IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_30IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_31IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_12IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_13IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_14IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_15IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_6IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_7IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_3IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_1IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_2IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_4IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_5IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_8IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_9IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_10IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_11IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_16IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_17IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_18IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_19IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_20IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_21IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_22IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_23IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10111");
                    }
                    break;
                    default:
                        return INSTGENERATOR_FAIL;
                    }
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
            }
            break;
            case CODASIP_SWITCH_VALUE_MI11i_neg_aliasIH1_13default_start:
            {
                //MI11i_neg_aliasIH1_13default_start
                StrAppendStr(instruction.GetCoding(), 0, "0100000XXXXX00000000XXXXX0110011");
                //MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX");
                switch (codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2)
                {
                case CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all7xpr_rs2:
                {
                    //MI3x_0IH1_13default_start9_7xpr_all7xpr_rs2
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00000");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2:
                {
                    //MI3xprIH1_13default_start9_7xpr_all7xpr_rs2
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX");
                    switch (codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2)
                    {
                    case CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_24IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_25IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_26IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_27IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_28IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_29IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_30IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_31IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_12IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_13IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_14IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_15IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_6IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_7IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_3IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_1IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_2IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_4IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_5IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_8IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_9IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_10IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_11IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_16IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_17IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_18IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_19IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_20IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_21IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_22IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_23IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10111");
                    }
                    break;
                    default:
                        return INSTGENERATOR_FAIL;
                    }
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
                //MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX");
                switch (codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd)
                {
                case CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all6xpr_rd:
                {
                    //MI3x_0IH1_13default_start9_7xpr_all6xpr_rd
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00000");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all6xpr_rd:
                {
                    //MI3xprIH1_13default_start9_7xpr_all6xpr_rd
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX");
                    switch (codasip_switch_MI3xprIH1_13default_start9_7xpr_all6xpr_rd)
                    {
                    case CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_24IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_25IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_26IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_27IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_28IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_29IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_30IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_31IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_12IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_13IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_14IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_15IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_6IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_7IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_3IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_1IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_2IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_4IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_5IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_8IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_9IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_10IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_11IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_16IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_17IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_18IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_19IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_20IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_21IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_22IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_23IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10111");
                    }
                    break;
                    default:
                        return INSTGENERATOR_FAIL;
                    }
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
            }
            break;
            case CODASIP_SWITCH_VALUE_MI7i_shiftIH1_13default_start:
            {
                //MI7i_shiftIH1_13default_start
                StrAppendStr(instruction.GetCoding(), 0, "0X00000XXXXXXXXXXX01XXXXX0010011");
                //MI9opc_shiftIH1_13default_start11_9opc_shift3opc
                StrAppendStr(instruction.GetCoding(), 0, "0X00000XXXXXXXXXXX01XXXXX0010011");
                switch (codasip_switch_MI9opc_shiftIH1_13default_start11_9opc_shift3opc)
                {
                case CODASIP_SWITCH_VALUE_MI8opc_slliIH1_13default_start11_9opc_shift3opc:
                {
                    //MI8opc_slliIH1_13default_start11_9opc_shift3opc
                    StrAppendStr(instruction.GetCoding(), 0, "0000000XXXXXXXXXX001XXXXX0010011");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI8opc_srliIH1_13default_start11_9opc_shift3opc:
                {
                    //MI8opc_srliIH1_13default_start11_9opc_shift3opc
                    StrAppendStr(instruction.GetCoding(), 0, "0000000XXXXXXXXXX101XXXXX0010011");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI8opc_sraiIH1_13default_start11_9opc_shift3opc:
                {
                    //MI8opc_sraiIH1_13default_start11_9opc_shift3opc
                    StrAppendStr(instruction.GetCoding(), 0, "0100000XXXXXXXXXX101XXXXX0010011");
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
                //MI5shamtIH1_13default_start7_5shamt5shamt
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX");
                instruction.GetAttrInfos().push_back(GenAttrInfo("MI3valIH1_13default_start7_5shamt5shamt1_5shamt", false, 1, 7, 5));
                //MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX");
                switch (codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1)
                {
                case CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all7xpr_rs1:
                {
                    //MI3x_0IH1_13default_start9_7xpr_all7xpr_rs1
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00000");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1:
                {
                    //MI3xprIH1_13default_start9_7xpr_all7xpr_rs1
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX");
                    switch (codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1)
                    {
                    case CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_24IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_25IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_26IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_27IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_28IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_29IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_30IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_31IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_12IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_13IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_14IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_15IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_6IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_7IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_3IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_1IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_2IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_4IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_5IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_8IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_9IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_10IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_11IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_16IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_17IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_18IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_19IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_20IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_21IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_22IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_23IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10111");
                    }
                    break;
                    default:
                        return INSTGENERATOR_FAIL;
                    }
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
                //MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX");
                switch (codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd)
                {
                case CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all6xpr_rd:
                {
                    //MI3x_0IH1_13default_start9_7xpr_all6xpr_rd
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00000");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all6xpr_rd:
                {
                    //MI3xprIH1_13default_start9_7xpr_all6xpr_rd
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX");
                    switch (codasip_switch_MI3xprIH1_13default_start9_7xpr_all6xpr_rd)
                    {
                    case CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_24IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_25IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_26IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_27IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_28IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_29IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_30IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_31IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_12IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_13IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_14IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_15IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_6IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_7IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_3IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_1IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_2IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_4IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_5IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_8IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_9IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_10IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_11IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_16IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_17IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_18IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_19IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_20IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_21IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_22IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_23IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10111");
                    }
                    break;
                    default:
                        return INSTGENERATOR_FAIL;
                    }
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
            }
            break;
            case CODASIP_SWITCH_VALUE_MI12i_beqz_aliasIH1_13default_start:
            {
                //MI12i_beqz_aliasIH1_13default_start
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00000XXXXX000XXXXX1100011");
                //MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX");
                instruction.GetAttrInfos().push_back(GenAttrInfo("MI3valIH1_13default_start13_10rel_addr128rel_addr1_10rel_addr12", true, 4, 0, 1, 24, 1, 1, 6, 20, 4));
                //MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX");
                switch (codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1)
                {
                case CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all7xpr_rs1:
                {
                    //MI3x_0IH1_13default_start9_7xpr_all7xpr_rs1
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00000");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1:
                {
                    //MI3xprIH1_13default_start9_7xpr_all7xpr_rs1
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX");
                    switch (codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1)
                    {
                    case CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_24IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_25IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_26IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_27IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_28IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_29IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_30IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_31IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_12IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_13IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_14IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_15IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_6IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_7IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_3IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_1IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_2IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_4IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_5IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_8IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_9IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_10IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_11IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_16IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_17IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_18IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_19IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_20IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_21IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_22IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_23IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10111");
                    }
                    break;
                    default:
                        return INSTGENERATOR_FAIL;
                    }
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
            }
            break;
            case CODASIP_SWITCH_VALUE_MI12i_bnez_aliasIH1_13default_start:
            {
                //MI12i_bnez_aliasIH1_13default_start
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00000XXXXX001XXXXX1100011");
                //MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX");
                instruction.GetAttrInfos().push_back(GenAttrInfo("MI3valIH1_13default_start13_10rel_addr128rel_addr1_10rel_addr12", true, 4, 0, 1, 24, 1, 1, 6, 20, 4));
                //MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX");
                switch (codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1)
                {
                case CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all7xpr_rs1:
                {
                    //MI3x_0IH1_13default_start9_7xpr_all7xpr_rs1
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00000");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1:
                {
                    //MI3xprIH1_13default_start9_7xpr_all7xpr_rs1
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX");
                    switch (codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1)
                    {
                    case CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_24IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_25IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_26IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_27IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_28IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_29IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_30IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_31IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_12IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_13IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_14IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_15IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_6IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_7IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_3IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_1IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_2IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_4IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_5IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_8IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_9IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_10IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_11IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_16IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_17IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_18IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_19IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_20IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_21IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_22IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_23IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10111");
                    }
                    break;
                    default:
                        return INSTGENERATOR_FAIL;
                    }
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
            }
            break;
            case CODASIP_SWITCH_VALUE_MI12i_bltz_aliasIH1_13default_start:
            {
                //MI12i_bltz_aliasIH1_13default_start
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00000XXXXX100XXXXX1100011");
                //MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX");
                instruction.GetAttrInfos().push_back(GenAttrInfo("MI3valIH1_13default_start13_10rel_addr128rel_addr1_10rel_addr12", true, 4, 0, 1, 24, 1, 1, 6, 20, 4));
                //MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX");
                switch (codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1)
                {
                case CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all7xpr_rs1:
                {
                    //MI3x_0IH1_13default_start9_7xpr_all7xpr_rs1
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00000");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1:
                {
                    //MI3xprIH1_13default_start9_7xpr_all7xpr_rs1
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX");
                    switch (codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1)
                    {
                    case CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_24IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_25IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_26IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_27IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_28IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_29IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_30IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_31IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_12IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_13IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_14IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_15IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_6IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_7IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_3IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_1IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_2IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_4IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_5IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_8IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_9IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_10IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_11IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_16IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_17IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_18IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_19IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_20IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_21IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_22IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_23IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10111");
                    }
                    break;
                    default:
                        return INSTGENERATOR_FAIL;
                    }
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
            }
            break;
            case CODASIP_SWITCH_VALUE_MI12i_bgez_aliasIH1_13default_start:
            {
                //MI12i_bgez_aliasIH1_13default_start
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00000XXXXX101XXXXX1100011");
                //MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX");
                instruction.GetAttrInfos().push_back(GenAttrInfo("MI3valIH1_13default_start13_10rel_addr128rel_addr1_10rel_addr12", true, 4, 0, 1, 24, 1, 1, 6, 20, 4));
                //MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX");
                switch (codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1)
                {
                case CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all7xpr_rs1:
                {
                    //MI3x_0IH1_13default_start9_7xpr_all7xpr_rs1
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00000");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1:
                {
                    //MI3xprIH1_13default_start9_7xpr_all7xpr_rs1
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX");
                    switch (codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1)
                    {
                    case CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_24IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_25IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_26IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_27IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_28IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_29IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_30IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_31IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_12IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_13IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_14IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_15IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_6IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_7IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_3IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_1IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_2IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_4IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_5IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_8IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_9IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_10IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_11IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_16IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_17IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_18IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_19IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_20IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_21IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_22IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_23IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10111");
                    }
                    break;
                    default:
                        return INSTGENERATOR_FAIL;
                    }
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
            }
            break;
            case CODASIP_SWITCH_VALUE_MI8i_branchIH1_13default_start:
            {
                //MI8i_branchIH1_13default_start
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX1100011");
                //MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX");
                instruction.GetAttrInfos().push_back(GenAttrInfo("MI3valIH1_13default_start13_10rel_addr128rel_addr1_10rel_addr12", true, 4, 0, 1, 24, 1, 1, 6, 20, 4));
                //MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX");
                switch (codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2)
                {
                case CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all7xpr_rs2:
                {
                    //MI3x_0IH1_13default_start9_7xpr_all7xpr_rs2
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00000");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2:
                {
                    //MI3xprIH1_13default_start9_7xpr_all7xpr_rs2
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX");
                    switch (codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2)
                    {
                    case CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_24IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_25IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_26IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_27IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_28IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_29IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_30IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_31IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_12IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_13IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_14IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_15IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_6IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_7IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_3IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_1IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_2IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_4IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_5IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_8IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_9IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_10IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_11IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_16IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_17IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_18IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_19IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_20IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_21IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_22IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_23IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10111");
                    }
                    break;
                    default:
                        return INSTGENERATOR_FAIL;
                    }
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
                //MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX");
                switch (codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1)
                {
                case CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all7xpr_rs1:
                {
                    //MI3x_0IH1_13default_start9_7xpr_all7xpr_rs1
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00000");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1:
                {
                    //MI3xprIH1_13default_start9_7xpr_all7xpr_rs1
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX");
                    switch (codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1)
                    {
                    case CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_24IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_25IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_26IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_27IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_28IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_29IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_30IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_31IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_12IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_13IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_14IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_15IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_6IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_7IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_3IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_1IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_2IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_4IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_5IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_8IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_9IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_10IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_11IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_16IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_17IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_18IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_19IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_20IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_21IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_22IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_23IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10111");
                    }
                    break;
                    default:
                        return INSTGENERATOR_FAIL;
                    }
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
                //MI10opc_branchIH1_13default_start13_10opc_branch3opc
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX1100011");
                switch (codasip_switch_MI10opc_branchIH1_13default_start13_10opc_branch3opc)
                {
                case CODASIP_SWITCH_VALUE_MI8opc_bltuIH1_13default_start13_10opc_branch3opc:
                {
                    //MI8opc_bltuIH1_13default_start13_10opc_branch3opc
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX110XXXXX1100011");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI8opc_bgeuIH1_13default_start13_10opc_branch3opc:
                {
                    //MI8opc_bgeuIH1_13default_start13_10opc_branch3opc
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX111XXXXX1100011");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI7opc_beqIH1_13default_start13_10opc_branch3opc:
                {
                    //MI7opc_beqIH1_13default_start13_10opc_branch3opc
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX000XXXXX1100011");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI7opc_bneIH1_13default_start13_10opc_branch3opc:
                {
                    //MI7opc_bneIH1_13default_start13_10opc_branch3opc
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX001XXXXX1100011");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI7opc_bltIH1_13default_start13_10opc_branch3opc:
                {
                    //MI7opc_bltIH1_13default_start13_10opc_branch3opc
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX100XXXXX1100011");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI7opc_bgeIH1_13default_start13_10opc_branch3opc:
                {
                    //MI7opc_bgeIH1_13default_start13_10opc_branch3opc
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX101XXXXX1100011");
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
            }
            break;
            case CODASIP_SWITCH_VALUE_MI12i_blez_aliasIH1_13default_start:
            {
                //MI12i_blez_aliasIH1_13default_start
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00000101XXXXX1100011");
                //MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX");
                instruction.GetAttrInfos().push_back(GenAttrInfo("MI3valIH1_13default_start13_10rel_addr128rel_addr1_10rel_addr12", true, 4, 0, 1, 24, 1, 1, 6, 20, 4));
                //MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX");
                switch (codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1)
                {
                case CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all7xpr_rs1:
                {
                    //MI3x_0IH1_13default_start9_7xpr_all7xpr_rs1
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00000");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1:
                {
                    //MI3xprIH1_13default_start9_7xpr_all7xpr_rs1
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX");
                    switch (codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1)
                    {
                    case CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_24IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_25IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_26IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_27IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_28IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_29IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_30IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_31IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_12IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_13IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_14IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_15IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_6IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_7IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_3IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_1IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_2IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_4IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_5IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_8IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_9IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_10IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_11IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_16IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_17IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_18IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_19IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_20IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_21IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_22IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_23IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10111");
                    }
                    break;
                    default:
                        return INSTGENERATOR_FAIL;
                    }
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
            }
            break;
            case CODASIP_SWITCH_VALUE_MI7i_storeIH1_13default_start:
            {
                //MI7i_storeIH1_13default_start
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX0XXXXXXX0100011");
                //MI6simm12IH1_13default_start8_6simm124simm
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX");
                instruction.GetAttrInfos().push_back(GenAttrInfo("MI3valIH1_13default_start8_6simm124simm1_6simm12", true, 2, 0, 7, 20, 5));
                //MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX");
                switch (codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2)
                {
                case CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all7xpr_rs2:
                {
                    //MI3x_0IH1_13default_start9_7xpr_all7xpr_rs2
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00000");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2:
                {
                    //MI3xprIH1_13default_start9_7xpr_all7xpr_rs2
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX");
                    switch (codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2)
                    {
                    case CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_24IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_25IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_26IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_27IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_28IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_29IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_30IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_31IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_12IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_13IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_14IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_15IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_6IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_7IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_3IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_1IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_2IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_4IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_5IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_8IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_9IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_10IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_11IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_16IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_17IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_18IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_19IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_20IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_21IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_22IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_23IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10111");
                    }
                    break;
                    default:
                        return INSTGENERATOR_FAIL;
                    }
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
                //MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX");
                switch (codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1)
                {
                case CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all7xpr_rs1:
                {
                    //MI3x_0IH1_13default_start9_7xpr_all7xpr_rs1
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00000");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1:
                {
                    //MI3xprIH1_13default_start9_7xpr_all7xpr_rs1
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX");
                    switch (codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1)
                    {
                    case CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_24IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_25IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_26IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_27IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_28IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_29IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_30IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_31IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_12IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_13IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_14IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_15IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_6IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_7IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_3IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_1IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_2IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_4IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_5IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_8IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_9IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_10IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_11IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_16IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_17IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_18IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_19IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_20IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_21IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_22IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_23IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10111");
                    }
                    break;
                    default:
                        return INSTGENERATOR_FAIL;
                    }
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
                //MI9opc_storeIH1_13default_start11_9opc_store3opc
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX0XXXXXXX0100011");
                switch (codasip_switch_MI9opc_storeIH1_13default_start11_9opc_store3opc)
                {
                case CODASIP_SWITCH_VALUE_MI6opc_sbIH1_13default_start11_9opc_store3opc:
                {
                    //MI6opc_sbIH1_13default_start11_9opc_store3opc
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX000XXXXX0100011");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI6opc_shIH1_13default_start11_9opc_store3opc:
                {
                    //MI6opc_shIH1_13default_start11_9opc_store3opc
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX001XXXXX0100011");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI6opc_swIH1_13default_start11_9opc_store3opc:
                {
                    //MI6opc_swIH1_13default_start11_9opc_store3opc
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX010XXXXX0100011");
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
            }
            break;
            case CODASIP_SWITCH_VALUE_MI10i_li_aliasIH1_13default_start:
            {
                //MI10i_li_aliasIH1_13default_start
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00000000XXXXX0010011");
                //MI6simm12IH1_13default_start8_6simm124simm
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX");
                instruction.GetAttrInfos().push_back(GenAttrInfo("MI3valIH1_13default_start8_6simm124simm1_6simm12", true, 1, 0, 12));
                //MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX");
                switch (codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd)
                {
                case CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all6xpr_rd:
                {
                    //MI3x_0IH1_13default_start9_7xpr_all6xpr_rd
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00000");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all6xpr_rd:
                {
                    //MI3xprIH1_13default_start9_7xpr_all6xpr_rd
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX");
                    switch (codasip_switch_MI3xprIH1_13default_start9_7xpr_all6xpr_rd)
                    {
                    case CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_24IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_25IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_26IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_27IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_28IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_29IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_30IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_31IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_12IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_13IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_14IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_15IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_6IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_7IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_3IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_1IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_2IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_4IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_5IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_8IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_9IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_10IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_11IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_16IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_17IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_18IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_19IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_20IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_21IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_22IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_23IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10111");
                    }
                    break;
                    default:
                        return INSTGENERATOR_FAIL;
                    }
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
            }
            break;
            case CODASIP_SWITCH_VALUE_MI9i_j_aliasIH1_13default_start:
            {
                //MI9i_j_aliasIH1_13default_start
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX000001101111");
                //MI10rel_addr20IH1_13default_start13_10rel_addr208rel_addr
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX");
                instruction.GetAttrInfos().push_back(GenAttrInfo("MI3valIH1_13default_start13_10rel_addr208rel_addr1_10rel_addr20", true, 4, 0, 1, 12, 8, 11, 1, 1, 10));
            }
            break;
            case CODASIP_SWITCH_VALUE_MI12i_bgtz_aliasIH1_13default_start:
            {
                //MI12i_bgtz_aliasIH1_13default_start
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00000100XXXXX1100011");
                //MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX");
                instruction.GetAttrInfos().push_back(GenAttrInfo("MI3valIH1_13default_start13_10rel_addr128rel_addr1_10rel_addr12", true, 4, 0, 1, 24, 1, 1, 6, 20, 4));
                //MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX");
                switch (codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2)
                {
                case CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all7xpr_rs2:
                {
                    //MI3x_0IH1_13default_start9_7xpr_all7xpr_rs2
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00000");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2:
                {
                    //MI3xprIH1_13default_start9_7xpr_all7xpr_rs2
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX");
                    switch (codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2)
                    {
                    case CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_24IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_25IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_26IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_27IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_28IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_29IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_30IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_31IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_12IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_13IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_14IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_15IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_6IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_7IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_3IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_1IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_2IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_4IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_5IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_8IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_9IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_10IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_11IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_16IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_17IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_18IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_19IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_20IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_21IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_22IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_23IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10111");
                    }
                    break;
                    default:
                        return INSTGENERATOR_FAIL;
                    }
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
            }
            break;
            case CODASIP_SWITCH_VALUE_MI5i_aluIH1_13default_start:
            {
                //MI5i_aluIH1_13default_start
                StrAppendStr(instruction.GetCoding(), 0, "0X00000XXXXXXXXXXXXXXXXXX0110011");
                //MI7opc_aluIH1_13default_start9_7opc_alu3opc
                StrAppendStr(instruction.GetCoding(), 0, "0X00000XXXXXXXXXXXXXXXXXX0110011");
                switch (codasip_switch_MI7opc_aluIH1_13default_start9_7opc_alu3opc)
                {
                case CODASIP_SWITCH_VALUE_MI7opc_addIH1_13default_start9_7opc_alu3opc:
                {
                    //MI7opc_addIH1_13default_start9_7opc_alu3opc
                    StrAppendStr(instruction.GetCoding(), 0, "0000000XXXXXXXXXX000XXXXX0110011");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI7opc_sllIH1_13default_start9_7opc_alu3opc:
                {
                    //MI7opc_sllIH1_13default_start9_7opc_alu3opc
                    StrAppendStr(instruction.GetCoding(), 0, "0000000XXXXXXXXXX001XXXXX0110011");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI7opc_sltIH1_13default_start9_7opc_alu3opc:
                {
                    //MI7opc_sltIH1_13default_start9_7opc_alu3opc
                    StrAppendStr(instruction.GetCoding(), 0, "0000000XXXXXXXXXX010XXXXX0110011");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI8opc_sltuIH1_13default_start9_7opc_alu3opc:
                {
                    //MI8opc_sltuIH1_13default_start9_7opc_alu3opc
                    StrAppendStr(instruction.GetCoding(), 0, "0000000XXXXXXXXXX011XXXXX0110011");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI7opc_xorIH1_13default_start9_7opc_alu3opc:
                {
                    //MI7opc_xorIH1_13default_start9_7opc_alu3opc
                    StrAppendStr(instruction.GetCoding(), 0, "0000000XXXXXXXXXX100XXXXX0110011");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI7opc_srlIH1_13default_start9_7opc_alu3opc:
                {
                    //MI7opc_srlIH1_13default_start9_7opc_alu3opc
                    StrAppendStr(instruction.GetCoding(), 0, "0000000XXXXXXXXXX101XXXXX0110011");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI6opc_orIH1_13default_start9_7opc_alu3opc:
                {
                    //MI6opc_orIH1_13default_start9_7opc_alu3opc
                    StrAppendStr(instruction.GetCoding(), 0, "0000000XXXXXXXXXX110XXXXX0110011");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI7opc_andIH1_13default_start9_7opc_alu3opc:
                {
                    //MI7opc_andIH1_13default_start9_7opc_alu3opc
                    StrAppendStr(instruction.GetCoding(), 0, "0000000XXXXXXXXXX111XXXXX0110011");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI7opc_subIH1_13default_start9_7opc_alu3opc:
                {
                    //MI7opc_subIH1_13default_start9_7opc_alu3opc
                    StrAppendStr(instruction.GetCoding(), 0, "0100000XXXXXXXXXX000XXXXX0110011");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI7opc_sraIH1_13default_start9_7opc_alu3opc:
                {
                    //MI7opc_sraIH1_13default_start9_7opc_alu3opc
                    StrAppendStr(instruction.GetCoding(), 0, "0100000XXXXXXXXXX101XXXXX0110011");
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
                //MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX");
                switch (codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2)
                {
                case CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all7xpr_rs2:
                {
                    //MI3x_0IH1_13default_start9_7xpr_all7xpr_rs2
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00000");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2:
                {
                    //MI3xprIH1_13default_start9_7xpr_all7xpr_rs2
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX");
                    switch (codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2)
                    {
                    case CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_24IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_25IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_26IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_27IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_28IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_29IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_30IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_31IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_12IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_13IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_14IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_15IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_6IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_7IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_3IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_1IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_2IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_4IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_5IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_8IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_9IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_10IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_11IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_16IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_17IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_18IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_19IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_20IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_21IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_22IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_23IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10111");
                    }
                    break;
                    default:
                        return INSTGENERATOR_FAIL;
                    }
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
                //MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX");
                switch (codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1)
                {
                case CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all7xpr_rs1:
                {
                    //MI3x_0IH1_13default_start9_7xpr_all7xpr_rs1
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00000");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1:
                {
                    //MI3xprIH1_13default_start9_7xpr_all7xpr_rs1
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX");
                    switch (codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1)
                    {
                    case CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_24IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_25IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_26IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_27IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_28IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_29IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_30IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_31IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_12IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_13IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_14IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_15IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_6IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_7IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_3IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_1IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_2IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_4IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_5IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_8IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_9IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_10IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_11IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_16IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_17IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_18IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_19IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_20IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_21IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_22IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_23IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10111");
                    }
                    break;
                    default:
                        return INSTGENERATOR_FAIL;
                    }
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
                //MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX");
                switch (codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd)
                {
                case CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all6xpr_rd:
                {
                    //MI3x_0IH1_13default_start9_7xpr_all6xpr_rd
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00000");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all6xpr_rd:
                {
                    //MI3xprIH1_13default_start9_7xpr_all6xpr_rd
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX");
                    switch (codasip_switch_MI3xprIH1_13default_start9_7xpr_all6xpr_rd)
                    {
                    case CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_24IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_25IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_26IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_27IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_28IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_29IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_30IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_31IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_12IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_13IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_14IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_15IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_6IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_7IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_3IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_1IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_2IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_4IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_5IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_8IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_9IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_10IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_11IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_16IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_17IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_18IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_19IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_20IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_21IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_22IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_23IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10111");
                    }
                    break;
                    default:
                        return INSTGENERATOR_FAIL;
                    }
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
            }
            break;
            case CODASIP_SWITCH_VALUE_MI11i_not_aliasIH1_13default_start:
            {
                //MI11i_not_aliasIH1_13default_start
                StrAppendStr(instruction.GetCoding(), 0, "111111111111XXXXX100XXXXX0010011");
                //MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX");
                switch (codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1)
                {
                case CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all7xpr_rs1:
                {
                    //MI3x_0IH1_13default_start9_7xpr_all7xpr_rs1
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00000");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1:
                {
                    //MI3xprIH1_13default_start9_7xpr_all7xpr_rs1
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX");
                    switch (codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1)
                    {
                    case CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_24IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_25IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_26IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_27IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_28IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_29IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_30IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_31IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_12IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_13IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_14IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_15IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_6IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_7IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_3IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_1IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_2IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_4IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_5IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_8IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_9IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_10IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_11IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_16IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_17IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_18IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_19IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_20IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_21IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_22IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_23IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10111");
                    }
                    break;
                    default:
                        return INSTGENERATOR_FAIL;
                    }
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
                //MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX");
                switch (codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd)
                {
                case CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all6xpr_rd:
                {
                    //MI3x_0IH1_13default_start9_7xpr_all6xpr_rd
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00000");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all6xpr_rd:
                {
                    //MI3xprIH1_13default_start9_7xpr_all6xpr_rd
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX");
                    switch (codasip_switch_MI3xprIH1_13default_start9_7xpr_all6xpr_rd)
                    {
                    case CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_24IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_25IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_26IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_27IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_28IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_29IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_30IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_31IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_12IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_13IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_14IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_15IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_6IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_7IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_3IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_1IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_2IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_4IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_5IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_8IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_9IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_10IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_11IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_16IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_17IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_18IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_19IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_20IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_21IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_22IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_23IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10111");
                    }
                    break;
                    default:
                        return INSTGENERATOR_FAIL;
                    }
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
            }
            break;
            case CODASIP_SWITCH_VALUE_MI11i_nop_aliasIH1_13default_start:
            {
                //MI11i_nop_aliasIH1_13default_start
                StrAppendStr(instruction.GetCoding(), 0, "00000000000000000000000000010011");
            }
            break;
            case CODASIP_SWITCH_VALUE_MI6i_haltIH1_13default_start:
            {
                //MI6i_haltIH1_13default_start
                StrAppendStr(instruction.GetCoding(), 0, "00000000000000000000000000111111");
                //MI8opc_haltIH1_13default_start10_8opc_halt3opc
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX0111111");
            }
            break;
            case CODASIP_SWITCH_VALUE_MI11i_ret_aliasIH1_13default_start:
            {
                //MI11i_ret_aliasIH1_13default_start
                StrAppendStr(instruction.GetCoding(), 0, "00000000000000001000000001100111");
            }
            break;
            case CODASIP_SWITCH_VALUE_MI10i_jr_aliasIH1_13default_start:
            {
                //MI10i_jr_aliasIH1_13default_start
                StrAppendStr(instruction.GetCoding(), 0, "000000000000XXXXX000000001100111");
                //MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX");
                switch (codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1)
                {
                case CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all7xpr_rs1:
                {
                    //MI3x_0IH1_13default_start9_7xpr_all7xpr_rs1
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00000");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1:
                {
                    //MI3xprIH1_13default_start9_7xpr_all7xpr_rs1
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX");
                    switch (codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1)
                    {
                    case CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_24IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_25IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_26IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_27IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_28IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_29IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_30IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_31IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_12IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_13IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_14IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_15IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_6IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_7IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_3IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_1IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_2IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_4IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_5IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_8IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_9IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_10IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_11IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_16IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_17IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_18IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_19IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_20IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_21IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_22IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_23IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10111");
                    }
                    break;
                    default:
                        return INSTGENERATOR_FAIL;
                    }
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
            }
            break;
            case CODASIP_SWITCH_VALUE_MI16i_call_reg_aliasIH1_13default_start:
            {
                //MI16i_call_reg_aliasIH1_13default_start
                StrAppendStr(instruction.GetCoding(), 0, "000000000000XXXXX000000011100111");
                //MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX");
                switch (codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1)
                {
                case CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all7xpr_rs1:
                {
                    //MI3x_0IH1_13default_start9_7xpr_all7xpr_rs1
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00000");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1:
                {
                    //MI3xprIH1_13default_start9_7xpr_all7xpr_rs1
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX");
                    switch (codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1)
                    {
                    case CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_24IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_25IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_26IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_27IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_28IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_29IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_30IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_31IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_12IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_13IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_14IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_15IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_6IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_7IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_3IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_1IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_2IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_4IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_5IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_8IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_9IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_10IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_11IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_16IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_17IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_18IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_19IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_20IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_21IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_22IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_23IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10111");
                    }
                    break;
                    default:
                        return INSTGENERATOR_FAIL;
                    }
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
            }
            break;
            case CODASIP_SWITCH_VALUE_MI10i_mv_aliasIH1_13default_start:
            {
                //MI10i_mv_aliasIH1_13default_start
                StrAppendStr(instruction.GetCoding(), 0, "000000000000XXXXX000XXXXX0010011");
                //MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX");
                switch (codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1)
                {
                case CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all7xpr_rs1:
                {
                    //MI3x_0IH1_13default_start9_7xpr_all7xpr_rs1
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00000");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1:
                {
                    //MI3xprIH1_13default_start9_7xpr_all7xpr_rs1
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX");
                    switch (codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1)
                    {
                    case CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_24IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_25IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_26IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_27IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_28IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_29IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_30IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_31IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_12IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_13IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_14IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_15IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_6IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_7IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_3IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_1IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_2IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_4IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_5IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_8IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_9IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_10IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_11IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_16IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_17IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_18IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_19IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_20IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_21IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_22IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_23IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10111");
                    }
                    break;
                    default:
                        return INSTGENERATOR_FAIL;
                    }
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
                //MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX");
                switch (codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd)
                {
                case CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all6xpr_rd:
                {
                    //MI3x_0IH1_13default_start9_7xpr_all6xpr_rd
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00000");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all6xpr_rd:
                {
                    //MI3xprIH1_13default_start9_7xpr_all6xpr_rd
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX");
                    switch (codasip_switch_MI3xprIH1_13default_start9_7xpr_all6xpr_rd)
                    {
                    case CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_24IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_25IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_26IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_27IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_28IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_29IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_30IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_31IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_12IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_13IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_14IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_15IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_6IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_7IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_3IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_1IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_2IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_4IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_5IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_8IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_9IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_10IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_11IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_16IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_17IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_18IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_19IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_20IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_21IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_22IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_23IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10111");
                    }
                    break;
                    default:
                        return INSTGENERATOR_FAIL;
                    }
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
            }
            break;
            case CODASIP_SWITCH_VALUE_MI12i_sltz_aliasIH1_13default_start:
            {
                //MI12i_sltz_aliasIH1_13default_start
                StrAppendStr(instruction.GetCoding(), 0, "000000000000XXXXX010XXXXX0110011");
                //MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX");
                switch (codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1)
                {
                case CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all7xpr_rs1:
                {
                    //MI3x_0IH1_13default_start9_7xpr_all7xpr_rs1
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00000");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1:
                {
                    //MI3xprIH1_13default_start9_7xpr_all7xpr_rs1
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX");
                    switch (codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1)
                    {
                    case CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_24IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_25IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_26IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_27IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_28IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_29IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_30IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_31IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_12IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_13IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_14IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_15IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_6IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_7IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_3IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_1IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_2IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_4IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_5IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_8IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_9IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_10IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_11IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_16IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_17IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_18IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_19IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_20IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_21IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_22IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_23IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10111");
                    }
                    break;
                    default:
                        return INSTGENERATOR_FAIL;
                    }
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
                //MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX");
                switch (codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd)
                {
                case CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all6xpr_rd:
                {
                    //MI3x_0IH1_13default_start9_7xpr_all6xpr_rd
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00000");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all6xpr_rd:
                {
                    //MI3xprIH1_13default_start9_7xpr_all6xpr_rd
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX");
                    switch (codasip_switch_MI3xprIH1_13default_start9_7xpr_all6xpr_rd)
                    {
                    case CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_24IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_25IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_26IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_27IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_28IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_29IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_30IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_31IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_12IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_13IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_14IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_15IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_6IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_7IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_3IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_1IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_2IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_4IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_5IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_8IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_9IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_10IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_11IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_16IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_17IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_18IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_19IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_20IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_21IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_22IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_23IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10111");
                    }
                    break;
                    default:
                        return INSTGENERATOR_FAIL;
                    }
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
            }
            break;
            case CODASIP_SWITCH_VALUE_MI12i_seqz_aliasIH1_13default_start:
            {
                //MI12i_seqz_aliasIH1_13default_start
                StrAppendStr(instruction.GetCoding(), 0, "000000000001XXXXX011XXXXX0010011");
                //MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX");
                switch (codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1)
                {
                case CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all7xpr_rs1:
                {
                    //MI3x_0IH1_13default_start9_7xpr_all7xpr_rs1
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00000");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1:
                {
                    //MI3xprIH1_13default_start9_7xpr_all7xpr_rs1
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX");
                    switch (codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1)
                    {
                    case CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_24IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_25IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_26IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_27IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_28IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_29IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_30IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_31IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_12IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_13IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_14IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_15IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_6IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_7IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_3IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_1IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_2IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_4IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_5IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_8IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_9IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_10IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_11IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_16IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_17IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_18IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_19IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_20IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_21IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_22IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_23IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10111");
                    }
                    break;
                    default:
                        return INSTGENERATOR_FAIL;
                    }
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
                //MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX");
                switch (codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd)
                {
                case CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all6xpr_rd:
                {
                    //MI3x_0IH1_13default_start9_7xpr_all6xpr_rd
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00000");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all6xpr_rd:
                {
                    //MI3xprIH1_13default_start9_7xpr_all6xpr_rd
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX");
                    switch (codasip_switch_MI3xprIH1_13default_start9_7xpr_all6xpr_rd)
                    {
                    case CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_24IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_25IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_26IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_27IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_28IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_29IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_30IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_31IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_12IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_13IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_14IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_15IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_6IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_7IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_3IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_1IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_2IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_4IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_5IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_8IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_9IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_10IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_11IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_16IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_17IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_18IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_19IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_20IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_21IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_22IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_23IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10111");
                    }
                    break;
                    default:
                        return INSTGENERATOR_FAIL;
                    }
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
            }
            break;
            case CODASIP_SWITCH_VALUE_MI5i_jalIH1_13default_start:
            {
                //MI5i_jalIH1_13default_start
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX1101111");
                //MI10rel_addr20IH1_13default_start13_10rel_addr208rel_addr
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX");
                instruction.GetAttrInfos().push_back(GenAttrInfo("MI3valIH1_13default_start13_10rel_addr208rel_addr1_10rel_addr20", true, 4, 0, 1, 12, 8, 11, 1, 1, 10));
                //MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX");
                switch (codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd)
                {
                case CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all6xpr_rd:
                {
                    //MI3x_0IH1_13default_start9_7xpr_all6xpr_rd
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00000");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all6xpr_rd:
                {
                    //MI3xprIH1_13default_start9_7xpr_all6xpr_rd
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX");
                    switch (codasip_switch_MI3xprIH1_13default_start9_7xpr_all6xpr_rd)
                    {
                    case CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_24IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_25IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_26IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_27IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_28IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_29IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_30IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_31IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_12IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_13IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_14IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_15IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_6IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_7IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_3IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_1IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_2IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_4IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_5IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_8IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_9IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_10IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_11IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_16IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_17IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_18IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_19IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_20IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_21IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_22IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_23IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10111");
                    }
                    break;
                    default:
                        return INSTGENERATOR_FAIL;
                    }
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
                //MI7opc_jalIH1_13default_start9_7opc_jal3opc
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX1101111");
            }
            break;
            case CODASIP_SWITCH_VALUE_MI12i_call_aliasIH1_13default_start:
            {
                //MI12i_call_aliasIH1_13default_start
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX000011101111");
                //MI10rel_addr20IH1_13default_start13_10rel_addr208rel_addr
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX");
                instruction.GetAttrInfos().push_back(GenAttrInfo("MI3valIH1_13default_start13_10rel_addr208rel_addr1_10rel_addr20", true, 4, 0, 1, 12, 8, 11, 1, 1, 10));
            }
            break;
            case CODASIP_SWITCH_VALUE_MI11i_upper_immIH1_13default_start:
            {
                //MI11i_upper_immIH1_13default_start
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX0X10111");
                //MI6simm20IH1_13default_start8_6simm204simm
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX");
                instruction.GetAttrInfos().push_back(GenAttrInfo("MI3valIH1_13default_start8_6simm204simm1_6simm20", false, 1, 0, 20));
                //MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX");
                switch (codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd)
                {
                case CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all6xpr_rd:
                {
                    //MI3x_0IH1_13default_start9_7xpr_all6xpr_rd
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00000");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all6xpr_rd:
                {
                    //MI3xprIH1_13default_start9_7xpr_all6xpr_rd
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX");
                    switch (codasip_switch_MI3xprIH1_13default_start9_7xpr_all6xpr_rd)
                    {
                    case CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_24IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_25IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_26IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_27IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_28IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_29IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_30IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_31IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_12IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_13IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_14IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_15IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_6IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_7IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_3IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_1IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_2IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_4IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_5IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_8IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_9IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_10IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_11IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_16IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_17IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_18IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_19IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_20IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_21IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_22IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_23IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10111");
                    }
                    break;
                    default:
                        return INSTGENERATOR_FAIL;
                    }
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
                //MI13opc_upper_immIH1_13default_start16_13opc_upper_imm3opc
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX0X10111");
                switch (codasip_switch_MI13opc_upper_immIH1_13default_start16_13opc_upper_imm3opc)
                {
                case CODASIP_SWITCH_VALUE_MI9opc_auipcIH1_13default_start16_13opc_upper_imm3opc:
                {
                    //MI9opc_auipcIH1_13default_start16_13opc_upper_imm3opc
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX0010111");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI7opc_luiIH1_13default_start16_13opc_upper_imm3opc:
                {
                    //MI7opc_luiIH1_13default_start16_13opc_upper_imm3opc
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX0110111");
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
            }
            break;
            case CODASIP_SWITCH_VALUE_MI7i_alu_iIH1_13default_start:
            {
                //MI7i_alu_iIH1_13default_start
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX0010011");
                //MI6simm12IH1_13default_start8_6simm124simm
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX");
                instruction.GetAttrInfos().push_back(GenAttrInfo("MI3valIH1_13default_start8_6simm124simm1_6simm12", true, 1, 0, 12));
                //MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX");
                switch (codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1)
                {
                case CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all7xpr_rs1:
                {
                    //MI3x_0IH1_13default_start9_7xpr_all7xpr_rs1
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00000");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1:
                {
                    //MI3xprIH1_13default_start9_7xpr_all7xpr_rs1
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX");
                    switch (codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1)
                    {
                    case CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_24IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_25IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_26IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_27IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_28IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_29IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_30IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_31IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_12IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_13IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_14IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_15IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_6IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_7IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_3IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_1IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_2IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_4IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_5IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_8IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_9IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_10IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_11IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_16IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_17IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_18IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_19IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_20IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_21IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_22IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_23IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10111");
                    }
                    break;
                    default:
                        return INSTGENERATOR_FAIL;
                    }
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
                //MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX0010011");
                switch (codasip_switch_MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc)
                {
                case CODASIP_SWITCH_VALUE_MI9opc_sltiuIH1_13default_start11_9opc_alu_i3opc:
                {
                    //MI9opc_sltiuIH1_13default_start11_9opc_alu_i3opc
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX011XXXXX0010011");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI8opc_addiIH1_13default_start11_9opc_alu_i3opc:
                {
                    //MI8opc_addiIH1_13default_start11_9opc_alu_i3opc
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX000XXXXX0010011");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI8opc_sltiIH1_13default_start11_9opc_alu_i3opc:
                {
                    //MI8opc_sltiIH1_13default_start11_9opc_alu_i3opc
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX010XXXXX0010011");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI8opc_andiIH1_13default_start11_9opc_alu_i3opc:
                {
                    //MI8opc_andiIH1_13default_start11_9opc_alu_i3opc
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX111XXXXX0010011");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI8opc_xoriIH1_13default_start11_9opc_alu_i3opc:
                {
                    //MI8opc_xoriIH1_13default_start11_9opc_alu_i3opc
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX100XXXXX0010011");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI7opc_oriIH1_13default_start11_9opc_alu_i3opc:
                {
                    //MI7opc_oriIH1_13default_start11_9opc_alu_i3opc
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX110XXXXX0010011");
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
                //MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX");
                switch (codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd)
                {
                case CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all6xpr_rd:
                {
                    //MI3x_0IH1_13default_start9_7xpr_all6xpr_rd
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00000");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all6xpr_rd:
                {
                    //MI3xprIH1_13default_start9_7xpr_all6xpr_rd
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX");
                    switch (codasip_switch_MI3xprIH1_13default_start9_7xpr_all6xpr_rd)
                    {
                    case CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_24IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_25IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_26IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_27IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_28IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_29IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_30IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_31IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_12IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_13IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_14IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_15IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_6IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_7IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_3IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_1IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_2IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_4IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_5IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_8IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_9IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_10IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_11IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_16IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_17IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_18IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_19IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_20IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_21IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_22IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_23IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10111");
                    }
                    break;
                    default:
                        return INSTGENERATOR_FAIL;
                    }
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
            }
            break;
            case CODASIP_SWITCH_VALUE_MI6i_jalrIH1_13default_start:
            {
                //MI6i_jalrIH1_13default_start
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX000XXXXX1100111");
                //MI15rel_jalr_addr12IH1_13default_start18_15rel_jalr_addr128rel_addr
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX");
                instruction.GetAttrInfos().push_back(GenAttrInfo("MI3valIH1_13default_start18_15rel_jalr_addr128rel_addr1_15rel_jalr_addr12", true, 1, 0, 12));
                //MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX");
                switch (codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1)
                {
                case CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all7xpr_rs1:
                {
                    //MI3x_0IH1_13default_start9_7xpr_all7xpr_rs1
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00000");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1:
                {
                    //MI3xprIH1_13default_start9_7xpr_all7xpr_rs1
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX");
                    switch (codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1)
                    {
                    case CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_24IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_25IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_26IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_27IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_28IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_29IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_30IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_31IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_12IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_13IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_14IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_15IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_6IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_7IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_3IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_1IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_2IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_4IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_5IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_8IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_9IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_10IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_11IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_16IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_17IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_18IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_19IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_20IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_21IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_22IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_23IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10111");
                    }
                    break;
                    default:
                        return INSTGENERATOR_FAIL;
                    }
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
                //MI8opc_jalrIH1_13default_start10_8opc_jalr3opc
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX000XXXXX1100111");
                //MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX");
                switch (codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd)
                {
                case CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all6xpr_rd:
                {
                    //MI3x_0IH1_13default_start9_7xpr_all6xpr_rd
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00000");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all6xpr_rd:
                {
                    //MI3xprIH1_13default_start9_7xpr_all6xpr_rd
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX");
                    switch (codasip_switch_MI3xprIH1_13default_start9_7xpr_all6xpr_rd)
                    {
                    case CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_24IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_25IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_26IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_27IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_28IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_29IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_30IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_31IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_12IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_13IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_14IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_15IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_6IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_7IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_3IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_1IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_2IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_4IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_5IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_8IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_9IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_10IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_11IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_16IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_17IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_18IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_19IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_20IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_21IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_22IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_23IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10111");
                    }
                    break;
                    default:
                        return INSTGENERATOR_FAIL;
                    }
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
            }
            break;
            case CODASIP_SWITCH_VALUE_MI6i_loadIH1_13default_start:
            {
                //MI6i_loadIH1_13default_start
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX0000011");
                //MI6simm12IH1_13default_start8_6simm124simm
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX");
                instruction.GetAttrInfos().push_back(GenAttrInfo("MI3valIH1_13default_start8_6simm124simm1_6simm12", true, 1, 0, 12));
                //MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX");
                switch (codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1)
                {
                case CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all7xpr_rs1:
                {
                    //MI3x_0IH1_13default_start9_7xpr_all7xpr_rs1
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00000");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1:
                {
                    //MI3xprIH1_13default_start9_7xpr_all7xpr_rs1
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX");
                    switch (codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1)
                    {
                    case CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_24IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_25IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_26IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_27IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_28IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_29IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_30IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_31IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_12IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_13IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_14IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_15IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_6IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_7IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_3IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_1IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_2IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_4IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_5IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_8IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_9IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_10IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_11IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_16IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_17IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_18IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_19IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_20IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_21IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_22IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_23IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10111");
                    }
                    break;
                    default:
                        return INSTGENERATOR_FAIL;
                    }
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
                //MI8opc_loadIH1_13default_start10_8opc_load3opc
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX0000011");
                switch (codasip_switch_MI8opc_loadIH1_13default_start10_8opc_load3opc)
                {
                case CODASIP_SWITCH_VALUE_MI6opc_lbIH1_13default_start10_8opc_load3opc:
                {
                    //MI6opc_lbIH1_13default_start10_8opc_load3opc
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX000XXXXX0000011");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI6opc_lhIH1_13default_start10_8opc_load3opc:
                {
                    //MI6opc_lhIH1_13default_start10_8opc_load3opc
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX001XXXXX0000011");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI7opc_lhuIH1_13default_start10_8opc_load3opc:
                {
                    //MI7opc_lhuIH1_13default_start10_8opc_load3opc
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX101XXXXX0000011");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI6opc_lwIH1_13default_start10_8opc_load3opc:
                {
                    //MI6opc_lwIH1_13default_start10_8opc_load3opc
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX010XXXXX0000011");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI7opc_lbuIH1_13default_start10_8opc_load3opc:
                {
                    //MI7opc_lbuIH1_13default_start10_8opc_load3opc
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX100XXXXX0000011");
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
                //MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX");
                switch (codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd)
                {
                case CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all6xpr_rd:
                {
                    //MI3x_0IH1_13default_start9_7xpr_all6xpr_rd
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00000");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all6xpr_rd:
                {
                    //MI3xprIH1_13default_start9_7xpr_all6xpr_rd
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX");
                    switch (codasip_switch_MI3xprIH1_13default_start9_7xpr_all6xpr_rd)
                    {
                    case CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_24IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_25IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_26IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_27IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_28IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_29IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_30IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_31IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX11111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_12IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_13IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_14IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_15IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_6IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_7IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_3IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_1IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_2IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_4IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_5IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX00101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_8IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI3x_9IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_10IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_11IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX01011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_16IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_17IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_18IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_19IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_20IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_21IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_22IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all6xpr_rd:
                    {
                        //MI4x_23IH1_13default_start9_7xpr_all6xpr_rd
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXX10111");
                    }
                    break;
                    default:
                        return INSTGENERATOR_FAIL;
                    }
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
            }
            break;
            case CODASIP_SWITCH_VALUE_MI11i_bgt_aliasIH1_13default_start:
            {
                //MI11i_bgt_aliasIH1_13default_start
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX100XXXXX1100011");
                //MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX");
                instruction.GetAttrInfos().push_back(GenAttrInfo("MI3valIH1_13default_start13_10rel_addr128rel_addr1_10rel_addr12", true, 4, 0, 1, 24, 1, 1, 6, 20, 4));
                //MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX");
                switch (codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1)
                {
                case CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all7xpr_rs1:
                {
                    //MI3x_0IH1_13default_start9_7xpr_all7xpr_rs1
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00000");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1:
                {
                    //MI3xprIH1_13default_start9_7xpr_all7xpr_rs1
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX");
                    switch (codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1)
                    {
                    case CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_24IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_25IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_26IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_27IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_28IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_29IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_30IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_31IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_12IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_13IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_14IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_15IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_6IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_7IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_3IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_1IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_2IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_4IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_5IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_8IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_9IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_10IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_11IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_16IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_17IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_18IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_19IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_20IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_21IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_22IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_23IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10111");
                    }
                    break;
                    default:
                        return INSTGENERATOR_FAIL;
                    }
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
                //MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX");
                switch (codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2)
                {
                case CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all7xpr_rs2:
                {
                    //MI3x_0IH1_13default_start9_7xpr_all7xpr_rs2
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00000");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2:
                {
                    //MI3xprIH1_13default_start9_7xpr_all7xpr_rs2
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX");
                    switch (codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2)
                    {
                    case CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_24IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_25IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_26IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_27IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_28IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_29IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_30IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_31IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_12IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_13IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_14IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_15IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_6IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_7IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_3IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_1IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_2IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_4IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_5IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_8IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_9IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_10IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_11IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_16IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_17IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_18IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_19IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_20IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_21IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_22IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_23IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10111");
                    }
                    break;
                    default:
                        return INSTGENERATOR_FAIL;
                    }
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
            }
            break;
            case CODASIP_SWITCH_VALUE_MI11i_ble_aliasIH1_13default_start:
            {
                //MI11i_ble_aliasIH1_13default_start
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX101XXXXX1100011");
                //MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX");
                instruction.GetAttrInfos().push_back(GenAttrInfo("MI3valIH1_13default_start13_10rel_addr128rel_addr1_10rel_addr12", true, 4, 0, 1, 24, 1, 1, 6, 20, 4));
                //MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX");
                switch (codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1)
                {
                case CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all7xpr_rs1:
                {
                    //MI3x_0IH1_13default_start9_7xpr_all7xpr_rs1
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00000");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1:
                {
                    //MI3xprIH1_13default_start9_7xpr_all7xpr_rs1
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX");
                    switch (codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1)
                    {
                    case CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_24IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_25IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_26IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_27IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_28IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_29IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_30IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_31IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_12IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_13IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_14IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_15IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_6IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_7IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_3IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_1IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_2IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_4IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_5IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_8IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_9IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_10IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_11IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_16IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_17IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_18IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_19IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_20IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_21IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_22IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_23IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10111");
                    }
                    break;
                    default:
                        return INSTGENERATOR_FAIL;
                    }
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
                //MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX");
                switch (codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2)
                {
                case CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all7xpr_rs2:
                {
                    //MI3x_0IH1_13default_start9_7xpr_all7xpr_rs2
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00000");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2:
                {
                    //MI3xprIH1_13default_start9_7xpr_all7xpr_rs2
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX");
                    switch (codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2)
                    {
                    case CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_24IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_25IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_26IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_27IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_28IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_29IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_30IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_31IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_12IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_13IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_14IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_15IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_6IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_7IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_3IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_1IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_2IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_4IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_5IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_8IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_9IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_10IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_11IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_16IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_17IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_18IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_19IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_20IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_21IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_22IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_23IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10111");
                    }
                    break;
                    default:
                        return INSTGENERATOR_FAIL;
                    }
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
            }
            break;
            case CODASIP_SWITCH_VALUE_MI12i_bgtu_aliasIH1_13default_start:
            {
                //MI12i_bgtu_aliasIH1_13default_start
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX110XXXXX1100011");
                //MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX");
                instruction.GetAttrInfos().push_back(GenAttrInfo("MI3valIH1_13default_start13_10rel_addr128rel_addr1_10rel_addr12", true, 4, 0, 1, 24, 1, 1, 6, 20, 4));
                //MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX");
                switch (codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1)
                {
                case CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all7xpr_rs1:
                {
                    //MI3x_0IH1_13default_start9_7xpr_all7xpr_rs1
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00000");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1:
                {
                    //MI3xprIH1_13default_start9_7xpr_all7xpr_rs1
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX");
                    switch (codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1)
                    {
                    case CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_24IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_25IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_26IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_27IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_28IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_29IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_30IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_31IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_12IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_13IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_14IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_15IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_6IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_7IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_3IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_1IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_2IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_4IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_5IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_8IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_9IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_10IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_11IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_16IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_17IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_18IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_19IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_20IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_21IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_22IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_23IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10111");
                    }
                    break;
                    default:
                        return INSTGENERATOR_FAIL;
                    }
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
                //MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX");
                switch (codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2)
                {
                case CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all7xpr_rs2:
                {
                    //MI3x_0IH1_13default_start9_7xpr_all7xpr_rs2
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00000");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2:
                {
                    //MI3xprIH1_13default_start9_7xpr_all7xpr_rs2
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX");
                    switch (codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2)
                    {
                    case CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_24IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_25IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_26IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_27IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_28IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_29IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_30IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_31IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_12IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_13IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_14IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_15IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_6IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_7IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_3IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_1IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_2IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_4IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_5IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_8IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_9IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_10IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_11IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_16IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_17IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_18IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_19IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_20IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_21IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_22IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_23IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10111");
                    }
                    break;
                    default:
                        return INSTGENERATOR_FAIL;
                    }
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
            }
            break;
            case CODASIP_SWITCH_VALUE_MI12i_bleu_aliasIH1_13default_start:
            {
                //MI12i_bleu_aliasIH1_13default_start
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX111XXXXX1100011");
                //MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXXXXXXXXXX");
                instruction.GetAttrInfos().push_back(GenAttrInfo("MI3valIH1_13default_start13_10rel_addr128rel_addr1_10rel_addr12", true, 4, 0, 1, 24, 1, 1, 6, 20, 4));
                //MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX");
                switch (codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1)
                {
                case CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all7xpr_rs1:
                {
                    //MI3x_0IH1_13default_start9_7xpr_all7xpr_rs1
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00000");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1:
                {
                    //MI3xprIH1_13default_start9_7xpr_all7xpr_rs1
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX");
                    switch (codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs1)
                    {
                    case CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_24IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_25IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_26IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_27IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_28IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_29IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_30IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_31IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX11111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_12IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_13IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_14IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_15IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_6IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_7IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_3IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_1IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_2IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_4IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_5IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX00101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_8IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI3x_9IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_10IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_11IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX01011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_16IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_17IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_18IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_19IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_20IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_21IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_22IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all7xpr_rs1:
                    {
                        //MI4x_23IH1_13default_start9_7xpr_all7xpr_rs1
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXX10111");
                    }
                    break;
                    default:
                        return INSTGENERATOR_FAIL;
                    }
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
                //MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2
                StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX");
                switch (codasip_switch_MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2)
                {
                case CODASIP_SWITCH_VALUE_MI3x_0IH1_13default_start9_7xpr_all7xpr_rs2:
                {
                    //MI3x_0IH1_13default_start9_7xpr_all7xpr_rs2
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00000");
                }
                break;
                case CODASIP_SWITCH_VALUE_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2:
                {
                    //MI3xprIH1_13default_start9_7xpr_all7xpr_rs2
                    StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXXXXXXX");
                    switch (codasip_switch_MI3xprIH1_13default_start9_7xpr_all7xpr_rs2)
                    {
                    case CODASIP_SWITCH_VALUE_MI4x_24IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_24IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_25IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_25IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_26IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_26IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_27IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_27IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_28IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_28IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_29IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_29IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_30IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_30IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_31IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_31IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX11111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_12IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_12IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_13IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_13IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_14IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_14IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_15IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_15IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_6IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_6IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_7IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_7IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00111");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_3IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_3IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_1IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_1IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_2IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_2IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_4IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_4IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_5IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_5IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX00101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_8IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_8IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI3x_9IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI3x_9IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_10IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_10IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_11IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_11IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX01011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_16IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_16IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10000");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_17IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_17IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10001");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_18IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_18IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10010");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_19IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_19IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10011");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_20IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_20IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10100");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_21IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_21IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10101");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_22IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_22IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10110");
                    }
                    break;
                    case CODASIP_SWITCH_VALUE_MI4x_23IH1_13default_start9_7xpr_all7xpr_rs2:
                    {
                        //MI4x_23IH1_13default_start9_7xpr_all7xpr_rs2
                        StrAppendStr(instruction.GetCoding(), 0, "XXXXXXXXXXXX10111");
                    }
                    break;
                    default:
                        return INSTGENERATOR_FAIL;
                    }
                }
                break;
                default:
                    return INSTGENERATOR_FAIL;
                }
            }
            break;
            default:
                return INSTGENERATOR_FAIL;
            }
        }
        break;
        default:
            return INSTGENERATOR_FAIL;
        }
    }
    return INSTGENERATOR_OK;
}
int generate_instr(TranslatedInstrs& asmTranslatedInstrs, ComputedAttributes& attributeValues)
{
    switch(codasip_switch_MI5start)
    {
        case CODASIP_SWITCH_VALUE_MI13default_start:
        {
            asmTranslatedInstrs.resize(1);
            return Generator_MI13default_start(asmTranslatedInstrs.front(), attributeValues);
        }
        default:
        {
            CHECK_CONDITION(false) << "Unknown instruction set." << std::endl;
        }
    }
}
bool get_asm_instr_to_bin_slot(AsmToBinSlots& asmToBinSlots)
{
    asmToBinSlots.clear();
    switch(codasip_switch_MI5start)
    {
        case CODASIP_SWITCH_VALUE_MI13default_start:
        {
            return false;
        }
        default:
        {
            THROW_ERROR() << "Unknown instruction set." << std::endl;
        }
    }
    return false; // should not be here
}
}
}
