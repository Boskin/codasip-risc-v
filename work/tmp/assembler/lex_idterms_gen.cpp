#include "directivehandleriface.h"

void TokenHandlerUnit::InitTerminals()
{
    TokenIds ids;

    ids.push_back(YT_SUB_);
    m_Terminals.insert(make_pair("SUB", ids)); ids.clear();

    ids.push_back(YT_X17_);
    m_Terminals.insert(make_pair("X17", ids)); ids.clear();

    ids.push_back(YT_X16_);
    m_Terminals.insert(make_pair("X16", ids)); ids.clear();

    ids.push_back(YT_X15_);
    m_Terminals.insert(make_pair("X15", ids)); ids.clear();

    ids.push_back(YT_X14_);
    m_Terminals.insert(make_pair("X14", ids)); ids.clear();

    ids.push_back(YT_X13_);
    m_Terminals.insert(make_pair("X13", ids)); ids.clear();

    ids.push_back(YT_X12_);
    m_Terminals.insert(make_pair("X12", ids)); ids.clear();

    ids.push_back(YT_X11_);
    m_Terminals.insert(make_pair("X11", ids)); ids.clear();

    ids.push_back(YT_X10_);
    m_Terminals.insert(make_pair("X10", ids)); ids.clear();

    ids.push_back(YT_X1_);
    m_Terminals.insert(make_pair("X1", ids)); ids.clear();

    ids.push_back(YT_X0_);
    m_Terminals.insert(make_pair("X0", ids)); ids.clear();

    ids.push_back(YT_SYSCALL_);
    m_Terminals.insert(make_pair("SYSCALL", ids)); ids.clear();

    ids.push_back(YT_SW_);
    m_Terminals.insert(make_pair("SW", ids)); ids.clear();

    ids.push_back(YT_X18_);
    m_Terminals.insert(make_pair("X18", ids)); ids.clear();

    ids.push_back(YT_SRLI_);
    m_Terminals.insert(make_pair("SRLI", ids)); ids.clear();

    ids.push_back(YT_SRL_);
    m_Terminals.insert(make_pair("SRL", ids)); ids.clear();

    ids.push_back(YT_SRAI_);
    m_Terminals.insert(make_pair("SRAI", ids)); ids.clear();

    ids.push_back(YT_SRA_);
    m_Terminals.insert(make_pair("SRA", ids)); ids.clear();

    ids.push_back(YT_SNEZ_);
    m_Terminals.insert(make_pair("SNEZ", ids)); ids.clear();

    ids.push_back(YT_SLTZ_);
    m_Terminals.insert(make_pair("SLTZ", ids)); ids.clear();

    ids.push_back(YT_SLTU_);
    m_Terminals.insert(make_pair("SLTU", ids)); ids.clear();

    ids.push_back(YT_SLTIU_);
    m_Terminals.insert(make_pair("SLTIU", ids)); ids.clear();

    ids.push_back(YT_SLTI_);
    m_Terminals.insert(make_pair("SLTI", ids)); ids.clear();

    ids.push_back(YT_SLT_);
    m_Terminals.insert(make_pair("SLT", ids)); ids.clear();

    ids.push_back(YT_SLLI_);
    m_Terminals.insert(make_pair("SLLI", ids)); ids.clear();

    ids.push_back(YT_X29_);
    m_Terminals.insert(make_pair("X29", ids)); ids.clear();

    ids.push_back(YT_XORI_);
    m_Terminals.insert(make_pair("XORI", ids)); ids.clear();

    ids.push_back(YT_XOR_);
    m_Terminals.insert(make_pair("XOR", ids)); ids.clear();

    ids.push_back(YT_X9_);
    m_Terminals.insert(make_pair("X9", ids)); ids.clear();

    ids.push_back(YT_X8_);
    m_Terminals.insert(make_pair("X8", ids)); ids.clear();

    ids.push_back(YT_X7_);
    m_Terminals.insert(make_pair("X7", ids)); ids.clear();

    ids.push_back(YT_X6_);
    m_Terminals.insert(make_pair("X6", ids)); ids.clear();

    ids.push_back(YT_X5_);
    m_Terminals.insert(make_pair("X5", ids)); ids.clear();

    ids.push_back(YT_X4_);
    m_Terminals.insert(make_pair("X4", ids)); ids.clear();

    ids.push_back(YT_X31_);
    m_Terminals.insert(make_pair("X31", ids)); ids.clear();

    ids.push_back(YT_X30_);
    m_Terminals.insert(make_pair("X30", ids)); ids.clear();

    ids.push_back(YT_X3_);
    m_Terminals.insert(make_pair("X3", ids)); ids.clear();

    ids.push_back(YT_SLL_);
    m_Terminals.insert(make_pair("SLL", ids)); ids.clear();

    ids.push_back(YT_X28_);
    m_Terminals.insert(make_pair("X28", ids)); ids.clear();

    ids.push_back(YT_X27_);
    m_Terminals.insert(make_pair("X27", ids)); ids.clear();

    ids.push_back(YT_X26_);
    m_Terminals.insert(make_pair("X26", ids)); ids.clear();

    ids.push_back(YT_X25_);
    m_Terminals.insert(make_pair("X25", ids)); ids.clear();

    ids.push_back(YT_X24_);
    m_Terminals.insert(make_pair("X24", ids)); ids.clear();

    ids.push_back(YT_X23_);
    m_Terminals.insert(make_pair("X23", ids)); ids.clear();

    ids.push_back(YT_X22_);
    m_Terminals.insert(make_pair("X22", ids)); ids.clear();

    ids.push_back(YT_X21_);
    m_Terminals.insert(make_pair("X21", ids)); ids.clear();

    ids.push_back(YT_X20_);
    m_Terminals.insert(make_pair("X20", ids)); ids.clear();

    ids.push_back(YT_X2_);
    m_Terminals.insert(make_pair("X2", ids)); ids.clear();

    ids.push_back(YT_X19_);
    m_Terminals.insert(make_pair("X19", ids)); ids.clear();

    ids.push_back(YT_BGEZ_);
    m_Terminals.insert(make_pair("BGEZ", ids)); ids.clear();

    ids.push_back(YT_CALL_);
    m_Terminals.insert(make_pair("CALL", ids)); ids.clear();

    ids.push_back(YT_BNEZ_);
    m_Terminals.insert(make_pair("BNEZ", ids)); ids.clear();

    ids.push_back(YT_BNE_);
    m_Terminals.insert(make_pair("BNE", ids)); ids.clear();

    ids.push_back(YT_BLTZ_);
    m_Terminals.insert(make_pair("BLTZ", ids)); ids.clear();

    ids.push_back(YT_BLTU_);
    m_Terminals.insert(make_pair("BLTU", ids)); ids.clear();

    ids.push_back(YT_BLT_);
    m_Terminals.insert(make_pair("BLT", ids)); ids.clear();

    ids.push_back(YT_BLEZ_);
    m_Terminals.insert(make_pair("BLEZ", ids)); ids.clear();

    ids.push_back(YT_BLEU_);
    m_Terminals.insert(make_pair("BLEU", ids)); ids.clear();

    ids.push_back(YT_BLE_);
    m_Terminals.insert(make_pair("BLE", ids)); ids.clear();

    ids.push_back(YT_BGTZ_);
    m_Terminals.insert(make_pair("BGTZ", ids)); ids.clear();

    ids.push_back(YT_BGTU_);
    m_Terminals.insert(make_pair("BGTU", ids)); ids.clear();

    ids.push_back(YT_BGT_);
    m_Terminals.insert(make_pair("BGT", ids)); ids.clear();

    ids.push_back(YT_CALL_0x5f_REG_);
    m_Terminals.insert(make_pair("CALL_REG", ids)); ids.clear();

    ids.push_back(YT_BGEU_);
    m_Terminals.insert(make_pair("BGEU", ids)); ids.clear();

    ids.push_back(YT_BGE_);
    m_Terminals.insert(make_pair("BGE", ids)); ids.clear();

    ids.push_back(YT_BEQZ_);
    m_Terminals.insert(make_pair("BEQZ", ids)); ids.clear();

    ids.push_back(YT_BEQ_);
    m_Terminals.insert(make_pair("BEQ", ids)); ids.clear();

    ids.push_back(YT_AUIPC_);
    m_Terminals.insert(make_pair("AUIPC", ids)); ids.clear();

    ids.push_back(YT_ANDI_);
    m_Terminals.insert(make_pair("ANDI", ids)); ids.clear();

    ids.push_back(YT_AND_);
    m_Terminals.insert(make_pair("AND", ids)); ids.clear();

    ids.push_back(YT_ADDI_);
    m_Terminals.insert(make_pair("ADDI", ids)); ids.clear();

    ids.push_back(YT_ADD_);
    m_Terminals.insert(make_pair("ADD", ids)); ids.clear();

    ids.push_back(YT_LW_);
    m_Terminals.insert(make_pair("LW", ids)); ids.clear();

    ids.push_back(YT_SH_);
    m_Terminals.insert(make_pair("SH", ids)); ids.clear();

    ids.push_back(YT_SGTZ_);
    m_Terminals.insert(make_pair("SGTZ", ids)); ids.clear();

    ids.push_back(YT_SEQZ_);
    m_Terminals.insert(make_pair("SEQZ", ids)); ids.clear();

    ids.push_back(YT_SB_);
    m_Terminals.insert(make_pair("SB", ids)); ids.clear();

    ids.push_back(YT_RET_);
    m_Terminals.insert(make_pair("RET", ids)); ids.clear();

    ids.push_back(YT_ORI_);
    m_Terminals.insert(make_pair("ORI", ids)); ids.clear();

    ids.push_back(YT_OR_);
    m_Terminals.insert(make_pair("OR", ids)); ids.clear();

    ids.push_back(YT_NOT_);
    m_Terminals.insert(make_pair("NOT", ids)); ids.clear();

    ids.push_back(YT_NOP_);
    m_Terminals.insert(make_pair("NOP", ids)); ids.clear();

    ids.push_back(YT_NEG_);
    m_Terminals.insert(make_pair("NEG", ids)); ids.clear();

    ids.push_back(YT_MV_);
    m_Terminals.insert(make_pair("MV", ids)); ids.clear();

    ids.push_back(YT_LUI_);
    m_Terminals.insert(make_pair("LUI", ids)); ids.clear();

    ids.push_back(YT_LI_);
    m_Terminals.insert(make_pair("LI", ids)); ids.clear();

    ids.push_back(YT_LHU_);
    m_Terminals.insert(make_pair("LHU", ids)); ids.clear();

    ids.push_back(YT_LH_);
    m_Terminals.insert(make_pair("LH", ids)); ids.clear();

    ids.push_back(YT_LBU_);
    m_Terminals.insert(make_pair("LBU", ids)); ids.clear();

    ids.push_back(YT_LB_);
    m_Terminals.insert(make_pair("LB", ids)); ids.clear();

    ids.push_back(YT_JR_);
    m_Terminals.insert(make_pair("JR", ids)); ids.clear();

    ids.push_back(YT_JALR_);
    m_Terminals.insert(make_pair("JALR", ids)); ids.clear();

    ids.push_back(YT_JAL_);
    m_Terminals.insert(make_pair("JAL", ids)); ids.clear();

    ids.push_back(YT_J_);
    m_Terminals.insert(make_pair("J", ids)); ids.clear();

    ids.push_back(YT_HALT_);
    m_Terminals.insert(make_pair("HALT", ids)); ids.clear();
}
