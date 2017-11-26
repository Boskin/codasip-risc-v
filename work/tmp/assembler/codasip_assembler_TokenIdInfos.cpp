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
 * \project MI7RISC_V5
 */
#include "codasip_assembler_TokenIdInfos.h"

#include "stringutils.h"

namespace codasip {
namespace assembler {

// static attributes
TokenIdInfos TokenIdInfos::m_Instance;

TokenIdInfos& TokenIdInfos::Instance()
{
    return m_Instance;
}
TokenIdInfos::TokenIdInfos()
{
    push_back(TokenIdInfo(10000, "YT_X1_", "X1"));
    push_back(TokenIdInfo(10001, "YT_X2_", "X2"));
    push_back(TokenIdInfo(10002, "YT_X3_", "X3"));
    push_back(TokenIdInfo(10003, "YT_X4_", "X4"));
    push_back(TokenIdInfo(10004, "YT_X5_", "X5"));
    push_back(TokenIdInfo(10005, "YT_X6_", "X6"));
    push_back(TokenIdInfo(10006, "YT_X7_", "X7"));
    push_back(TokenIdInfo(10007, "YT_X8_", "X8"));
    push_back(TokenIdInfo(10008, "YT_X9_", "X9"));
    push_back(TokenIdInfo(10009, "YT_X10_", "X10"));
    push_back(TokenIdInfo(10010, "YT_X11_", "X11"));
    push_back(TokenIdInfo(10011, "YT_X12_", "X12"));
    push_back(TokenIdInfo(10012, "YT_X13_", "X13"));
    push_back(TokenIdInfo(10013, "YT_X14_", "X14"));
    push_back(TokenIdInfo(10014, "YT_X15_", "X15"));
    push_back(TokenIdInfo(10015, "YT_X16_", "X16"));
    push_back(TokenIdInfo(10016, "YT_X17_", "X17"));
    push_back(TokenIdInfo(10017, "YT_X18_", "X18"));
    push_back(TokenIdInfo(10018, "YT_X19_", "X19"));
    push_back(TokenIdInfo(10019, "YT_X20_", "X20"));
    push_back(TokenIdInfo(10020, "YT_X21_", "X21"));
    push_back(TokenIdInfo(10021, "YT_X22_", "X22"));
    push_back(TokenIdInfo(10022, "YT_X23_", "X23"));
    push_back(TokenIdInfo(10023, "YT_X24_", "X24"));
    push_back(TokenIdInfo(10024, "YT_X25_", "X25"));
    push_back(TokenIdInfo(10025, "YT_X26_", "X26"));
    push_back(TokenIdInfo(10026, "YT_X27_", "X27"));
    push_back(TokenIdInfo(10027, "YT_X28_", "X28"));
    push_back(TokenIdInfo(10028, "YT_X29_", "X29"));
    push_back(TokenIdInfo(10029, "YT_X30_", "X30"));
    push_back(TokenIdInfo(10030, "YT_X31_", "X31"));
    push_back(TokenIdInfo(10031, "YT_SLLI_", "SLLI"));
    push_back(TokenIdInfo(10032, "YT_SRLI_", "SRLI"));
    push_back(TokenIdInfo(10033, "YT_SRAI_", "SRAI"));
    push_back(TokenIdInfo(10034, "YT_ADDI_", "ADDI"));
    push_back(TokenIdInfo(10035, "YT_SLTI_", "SLTI"));
    push_back(TokenIdInfo(10036, "YT_SLTIU_", "SLTIU"));
    push_back(TokenIdInfo(10037, "YT_ANDI_", "ANDI"));
    push_back(TokenIdInfo(10038, "YT_ORI_", "ORI"));
    push_back(TokenIdInfo(10039, "YT_XORI_", "XORI"));
    push_back(TokenIdInfo(10040, "YT_BEQ_", "BEQ"));
    push_back(TokenIdInfo(10041, "YT_BNE_", "BNE"));
    push_back(TokenIdInfo(10042, "YT_BLT_", "BLT"));
    push_back(TokenIdInfo(10043, "YT_BLTU_", "BLTU"));
    push_back(TokenIdInfo(10044, "YT_BGE_", "BGE"));
    push_back(TokenIdInfo(10045, "YT_BGEU_", "BGEU"));
    push_back(TokenIdInfo(10046, "YT_LUI_", "LUI"));
    push_back(TokenIdInfo(10047, "YT_AUIPC_", "AUIPC"));
    push_back(TokenIdInfo(10048, "YT_LB_", "LB"));
    push_back(TokenIdInfo(10049, "YT_LH_", "LH"));
    push_back(TokenIdInfo(10050, "YT_LW_", "LW"));
    push_back(TokenIdInfo(10051, "YT_LBU_", "LBU"));
    push_back(TokenIdInfo(10052, "YT_LHU_", "LHU"));
    push_back(TokenIdInfo(10053, "YT_SB_", "SB"));
    push_back(TokenIdInfo(10054, "YT_SH_", "SH"));
    push_back(TokenIdInfo(10055, "YT_SW_", "SW"));
    push_back(TokenIdInfo(10056, "YT_ADD_", "ADD"));
    push_back(TokenIdInfo(10057, "YT_SLT_", "SLT"));
    push_back(TokenIdInfo(10058, "YT_SLTU_", "SLTU"));
    push_back(TokenIdInfo(10059, "YT_AND_", "AND"));
    push_back(TokenIdInfo(10060, "YT_OR_", "OR"));
    push_back(TokenIdInfo(10061, "YT_XOR_", "XOR"));
    push_back(TokenIdInfo(10062, "YT_SLL_", "SLL"));
    push_back(TokenIdInfo(10063, "YT_SRL_", "SRL"));
    push_back(TokenIdInfo(10064, "YT_SUB_", "SUB"));
    push_back(TokenIdInfo(10065, "YT_SRA_", "SRA"));
    push_back(TokenIdInfo(10066, "YT_NOP_", "NOP"));
    push_back(TokenIdInfo(10067, "YT_HALT_", "HALT"));
    push_back(TokenIdInfo(10068, "YT_SYSCALL_", "SYSCALL"));
    push_back(TokenIdInfo(10069, "YT_X0_", "X0"));
    push_back(TokenIdInfo(1013, "T_DELIM", ","));
    push_back(TokenIdInfo(10070, "YT_JAL_", "JAL"));
    push_back(TokenIdInfo(10071, "YT_JALR_", "JALR"));
    push_back(TokenIdInfo(1027, "T_PAR_LEFT", "("));
    push_back(TokenIdInfo(1028, "T_PAR_RIGHT", ")"));
    push_back(TokenIdInfo(10072, "YT_LI_", "LI"));
    push_back(TokenIdInfo(10073, "YT_MV_", "MV"));
    push_back(TokenIdInfo(10074, "YT_NOT_", "NOT"));
    push_back(TokenIdInfo(10075, "YT_NEG_", "NEG"));
    push_back(TokenIdInfo(10076, "YT_SEQZ_", "SEQZ"));
    push_back(TokenIdInfo(10077, "YT_SNEZ_", "SNEZ"));
    push_back(TokenIdInfo(10078, "YT_SLTZ_", "SLTZ"));
    push_back(TokenIdInfo(10079, "YT_SGTZ_", "SGTZ"));
    push_back(TokenIdInfo(10080, "YT_BEQZ_", "BEQZ"));
    push_back(TokenIdInfo(10081, "YT_BNEZ_", "BNEZ"));
    push_back(TokenIdInfo(10082, "YT_BLEZ_", "BLEZ"));
    push_back(TokenIdInfo(10083, "YT_BGEZ_", "BGEZ"));
    push_back(TokenIdInfo(10084, "YT_BLTZ_", "BLTZ"));
    push_back(TokenIdInfo(10085, "YT_BGTZ_", "BGTZ"));
    push_back(TokenIdInfo(10086, "YT_BGT_", "BGT"));
    push_back(TokenIdInfo(10087, "YT_BLE_", "BLE"));
    push_back(TokenIdInfo(10088, "YT_BGTU_", "BGTU"));
    push_back(TokenIdInfo(10089, "YT_BLEU_", "BLEU"));
    push_back(TokenIdInfo(10090, "YT_J_", "J"));
    push_back(TokenIdInfo(10091, "YT_JR_", "JR"));
    push_back(TokenIdInfo(10092, "YT_RET_", "RET"));
    push_back(TokenIdInfo(10093, "YT_CALL_", "CALL"));
    push_back(TokenIdInfo(10094, "YT_CALL_0x5f_REG_", "CALL_REG"));
}
void TokenIdInfos::ReplaceTokenNames(std::string& res, const char* src)
{
    res = src;

    for (const TokenIdInfo& token : Instance())
    {
        if (token.GetId() == -1) // EXPR
        {
            continue;
        }

        const std::string replacement = "\"" + (token.GetRepresentation() != "\n" ? token.GetRepresentation() : "newline" ) + "\"";
        Substitute(res, token.GetName(), replacement);
    }
}
} // namespace assembler
} // namespace codasip
