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
 * \date    2017-11-26
 * \author  Codasip (c) simulator generator
 * \version 6.8.2-1.win.7.EVALUATION
 * \brief   Source files for simulator
 * \project MI7RISC_V5
 */
#include "codasip_simulator_MI7RISC_V5_Sim.h"

#include "basicoptions.h"
static const codasip::getopt::ToolInfoSetter g_ToolInfo(codasip::getopt::ToolInfo("C51_657_727", 
"RISC_V5", 
"c6531b5a26b5f0e047c1db0a753f9f9ec9184e2ea2e3400419110244043b0875", 
"2017-11-26 01:01:07", 
""
));
#include "codasip_disassembler_MI7RISC_V5_Dsm.h"
#include "simulator_resources.h"

namespace codasip {
namespace simulator {
namespace MI7RISC_V5 {

Sim::Sim(const std::string& name, const Uid uid)
 :  m_Path(name),
    m_Uid(uid),
    m_SimCycleCounter(0),
    m_CheckerLevel(0),
    m_Log(this),
    m_SimCycleTimeout(-1),
    m_Halt(SIM_OK),
    m_Started(false),
    m_ThreadId(0),
    m_ExitMsg(),
    m_MemoryShorcut_MI28codasip_mem_RISC_V5_as_all_0(NULL),
    m_Debugger(NULL),
    m_Resume(false),
    m_ResumeCV(),
    m_ResumeMutex(),
    m_IsStepMode(false),
    m_EventInfo(m_ThreadId,0,LEVEL_INSTRUCTION,EVENT_INVALID),
    m_Disassembler(CreateDisassembler()),
    idecstate(0),
    m_DumpIterEnd(),
    m_RestoreIters(),
    MI10s_fe_stall(name + ".s_fe_stall", 2),
    MI10s_fe_clear(name + ".s_fe_clear", 3),
    MI10s_fe_instr(name + ".s_fe_instr", 4),
    MI10s_id_stall(name + ".s_id_stall", 5),
    MI10s_id_clear(name + ".s_id_clear", 6),
    MI7r_id_pc(name + ".r_id_pc", 7),
    MI10r_id_instr(name + ".r_id_instr", 8),
    MI11s_id_opcode(name + ".s_id_opcode", 9),
    MI20s_id_extended_opcode(name + ".s_id_extended_opcode", 10),
    MI17s_id_rtype_opcode(name + ".s_id_rtype_opcode", 11),
    MI17s_id_itype_opcode(name + ".s_id_itype_opcode", 12),
    MI17s_id_stype_opcode(name + ".s_id_stype_opcode", 13),
    MI17s_id_utype_opcode(name + ".s_id_utype_opcode", 14),
    MI10s_id_xpr_a(name + ".s_id_xpr_a", 15),
    MI10s_id_xpr_b(name + ".s_id_xpr_b", 16),
    MI13s_id_xpr_dest(name + ".s_id_xpr_dest", 17),
    MI12s_id_shamnt5(name + ".s_id_shamnt5", 18),
    MI17s_id_itype_simm12(name + ".s_id_itype_simm12", 19),
    MI17s_id_stype_simm12(name + ".s_id_stype_simm12", 20),
    MI17s_id_btype_simm12(name + ".s_id_btype_simm12", 21),
    MI17s_id_jtype_simm20(name + ".s_id_jtype_simm20", 22),
    MI17s_id_utype_uimm20(name + ".s_id_utype_uimm20", 23),
    MI8s_id_imm(name + ".s_id_imm", 24),
    MI8s_id_csr(name + ".s_id_csr", 25),
    MI9s_id_zimm(name + ".s_id_zimm", 26),
    MI14s_id_src_a_mux(name + ".s_id_src_a_mux", 27),
    MI14s_id_src_b_mux(name + ".s_id_src_b_mux", 28),
    MI11s_id_alu_op(name + ".s_id_alu_op", 29),
    MI11s_id_mem_op(name + ".s_id_mem_op", 30),
    MI12s_id_jump_op(name + ".s_id_jump_op", 31),
    MI17s_id_xpr_dest_src(name + ".s_id_xpr_dest_src", 32),
    MI10s_ex_stall(name + ".s_ex_stall", 33),
    MI10s_ex_clear(name + ".s_ex_clear", 34),
    MI7r_ex_pc(name + ".r_ex_pc", 35),
    MI10r_ex_instr(name + ".r_ex_instr", 36),
    MI13r_ex_xpr_dest(name + ".r_ex_xpr_dest", 37),
    MI17r_ex_xpr_dest_src(name + ".r_ex_xpr_dest_src", 38),
    MI11r_ex_alu_op(name + ".r_ex_alu_op", 39),
    MI11r_ex_mem_op(name + ".r_ex_mem_op", 40),
    MI12r_ex_jump_op(name + ".r_ex_jump_op", 41),
    MI10r_ex_xpr_a(name + ".r_ex_xpr_a", 42),
    MI10r_ex_xpr_b(name + ".r_ex_xpr_b", 43),
    MI14r_ex_src_a_mux(name + ".r_ex_src_a_mux", 44),
    MI14r_ex_src_b_mux(name + ".r_ex_src_b_mux", 45),
    MI14s_ex_forward_a(name + ".s_ex_forward_a", 46),
    MI23s_ex_xpr_data_a_forward(name + ".s_ex_xpr_data_a_forward", 47),
    MI13s_ex_alu_in_a(name + ".s_ex_alu_in_a", 48),
    MI14s_ex_forward_b(name + ".s_ex_forward_b", 49),
    MI23s_ex_xpr_data_b_forward(name + ".s_ex_xpr_data_b_forward", 50),
    MI13s_ex_alu_in_b(name + ".s_ex_alu_in_b", 51),
    MI15r_ex_xpr_data_a(name + ".r_ex_xpr_data_a", 52),
    MI15r_ex_xpr_data_b(name + ".r_ex_xpr_data_b", 53),
    MI8r_ex_imm(name + ".r_ex_imm", 54),
    MI12s_ex_alu_out(name + ".s_ex_alu_out", 55),
    MI18s_ex_branch_target(name + ".s_ex_branch_target", 56),
    MI9s_ex_zero(name + ".s_ex_zero", 57),
    MI16s_ex_take_branch(name + ".s_ex_take_branch", 58),
    MI10s_me_stall(name + ".s_me_stall", 59),
    MI10s_me_clear(name + ".s_me_clear", 60),
    MI7r_me_pc(name + ".r_me_pc", 61),
    MI10r_me_instr(name + ".r_me_instr", 62),
    MI15r_me_alu_data_b(name + ".r_me_alu_data_b", 63),
    MI13r_me_xpr_dest(name + ".r_me_xpr_dest", 64),
    MI17r_me_xpr_dest_src(name + ".r_me_xpr_dest_src", 65),
    MI11r_me_mem_op(name + ".r_me_mem_op", 66),
    MI12r_me_alu_out(name + ".r_me_alu_out", 67),
    MI17s_me_mem_read_raw(name + ".s_me_mem_read_raw", 68),
    MI13s_me_mem_read(name + ".s_me_mem_read", 69),
    MI13s_me_data_out(name + ".s_me_data_out", 70),
    MI10s_wb_stall(name + ".s_wb_stall", 71),
    MI10s_wb_clear(name + ".s_wb_clear", 72),
    MI7r_wb_pc(name + ".r_wb_pc", 73),
    MI10r_wb_instr(name + ".r_wb_instr", 74),
    MI13r_wb_xpr_dest(name + ".r_wb_xpr_dest", 75),
    MI17r_wb_xpr_dest_src(name + ".r_wb_xpr_dest_src", 76),
    MI13r_wb_data_out(name + ".r_wb_data_out", 77),
    MI12r_wb_alu_out(name + ".r_wb_alu_out", 78),
    MI13r_wb_mem_read(name + ".r_wb_mem_read", 79),
    MI4r_pc(name + ".r_pc", 80),
    MI6rf_xpr(name + ".rf_xpr", 81),
    MI6as_all_virt_program(83,"as_all (Using PROGRAM interface(s))",AddressSpaceInfo::AS_PROGRAM,32,32,8,false,true),
    MI6as_all_virt_data(84,"as_all (Using DATA interface(s))",AddressSpaceInfo::AS_DATA,32,32,8,false,true),
    MI6as_all(82,"as_all",AddressSpaceInfo::AS_ALL,32,32,8,false,false),
    MI7if_code(name + ".if_code", 85),
    MI7if_data(name + ".if_data", 86),
    MI65codasip_return_MI7opc_aluIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc(name + ".codasip_return_MI7opc_aluIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc", 89),
    MI70codasip_return_MI9opc_alu_iIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc(name + ".codasip_return_MI9opc_alu_iIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc", 91),
    MI70codasip_return_MI9opc_shiftIH4_2id2id8_6isa_hw6isa_hw11_9opc_shift3opc(name + ".codasip_return_MI9opc_shiftIH4_2id2id8_6isa_hw6isa_hw11_9opc_shift3opc", 93),
    MI74codasip_return_MI10opc_branchIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc(name + ".codasip_return_MI10opc_branchIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc", 95),
    MI68codasip_return_MI8opc_loadIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc(name + ".codasip_return_MI8opc_loadIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc", 97),
    MI70codasip_return_MI9opc_storeIH4_2id2id8_6isa_hw6isa_hw11_9opc_store3opc(name + ".codasip_return_MI9opc_storeIH4_2id2id8_6isa_hw6isa_hw11_9opc_store3opc", 99),
    MI80codasip_return_MI13opc_upper_immIH4_2id2id8_6isa_hw6isa_hw16_13opc_upper_imm3opc(name + ".codasip_return_MI13opc_upper_immIH4_2id2id8_6isa_hw6isa_hw16_13opc_upper_imm3opc", 101),
    MI68codasip_return_MI8opc_haltIH4_2id2id8_6isa_hw6isa_hw10_8opc_halt3opc(name + ".codasip_return_MI8opc_haltIH4_2id2id8_6isa_hw6isa_hw10_8opc_halt3opc", 131),
    MI76codasip_return_MI11opc_syscallIH4_2id2id8_6isa_hw6isa_hw14_11opc_syscall3opc(name + ".codasip_return_MI11opc_syscallIH4_2id2id8_6isa_hw6isa_hw14_11opc_syscall3opc", 132),
    MI65codasip_return_MI7opc_jalIH4_2id2id8_6isa_hw6isa_hw9_7opc_jal3opc(name + ".codasip_return_MI7opc_jalIH4_2id2id8_6isa_hw6isa_hw9_7opc_jal3opc", 133),
    MI68codasip_return_MI8opc_jalrIH4_2id2id8_6isa_hw6isa_hw10_8opc_jalr3opc(name + ".codasip_return_MI8opc_jalrIH4_2id2id8_6isa_hw6isa_hw10_8opc_jalr3opc", 134),
    MI11INSTRUCTIONIH4_2id2id8_6isa_hw6isa_hw1_6isa_hw(name + ".INSTRUCTION", 88),
    MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_8i_hw_alu(name + ".codasip_tmp_var_0", 90),
    MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_10i_hw_alu_i(name + ".codasip_tmp_var_0", 92),
    MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_10i_hw_shift(name + ".codasip_tmp_var_0", 94),
    MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_11i_hw_branch(name + ".codasip_tmp_var_0", 96),
    MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_9i_hw_load(name + ".codasip_tmp_var_0", 98),
    MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_10i_hw_store(name + ".codasip_tmp_var_0", 100),
    MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_14i_hw_upper_imm(name + ".codasip_tmp_var_0", 102),
    MI17codasip_tmp_var_0IH15_12pipe_control12pipe_control1_12pipe_control(name + ".codasip_tmp_var_0", 103),
    MI17codasip_tmp_var_2IH15_12pipe_control12pipe_control1_12pipe_control(name + ".codasip_tmp_var_2", 104),
    MI17codasip_tmp_var_4IH15_12pipe_control12pipe_control1_12pipe_control(name + ".codasip_tmp_var_4", 105),
    MI17codasip_tmp_var_6IH15_12pipe_control12pipe_control1_12pipe_control(name + ".codasip_tmp_var_6", 106),
    MI17codasip_tmp_var_8IH15_12pipe_control12pipe_control1_12pipe_control(name + ".codasip_tmp_var_8", 107),
    MI17codasip_tmp_var_1IH15_12pipe_control12pipe_control1_12pipe_control(name + ".codasip_tmp_var_1", 108),
    MI17codasip_tmp_var_3IH15_12pipe_control12pipe_control1_12pipe_control(name + ".codasip_tmp_var_3", 109),
    MI17codasip_tmp_var_5IH15_12pipe_control12pipe_control1_12pipe_control(name + ".codasip_tmp_var_5", 110),
    MI17codasip_tmp_var_7IH15_12pipe_control12pipe_control1_12pipe_control(name + ".codasip_tmp_var_7", 111),
    MI17codasip_tmp_var_9IH15_12pipe_control12pipe_control1_12pipe_control(name + ".codasip_tmp_var_9", 112),
    MI17codasip_tmp_var_0IH4_2ex2ex1_2ex(name + ".codasip_tmp_var_0", 113),
    MI17codasip_tmp_var_1IH4_2ex2ex1_2ex(name + ".codasip_tmp_var_1", 114),
    MI17codasip_tmp_var_2IH4_2ex2ex1_2ex(name + ".codasip_tmp_var_2", 115),
    MI17codasip_tmp_var_3IH4_2ex2ex1_2ex(name + ".codasip_tmp_var_3", 116),
    MI17codasip_tmp_var_4IH4_2ex2ex1_2ex(name + ".codasip_tmp_var_4", 117),
    MI17codasip_tmp_var_0IH4_2fe2fe1_2fe(name + ".codasip_tmp_var_0", 118),
    MI17codasip_tmp_var_0IH4_2id2id1_2id(name + ".codasip_tmp_var_0", 119),
    MI17codasip_tmp_var_1IH4_2id2id1_2id(name + ".codasip_tmp_var_1", 120),
    MI8data_memIH4_2me2me1_2meB0(name + ".data_mem", 121),
    MI11request_cmdIH4_2me2me1_2meB0(name + ".request_cmd", 122),
    MI10byte_countIH4_2me2me1_2meB0(name + ".byte_count", 123),
    MI17codasip_tmp_var_0IH4_2me2me1_2me(name + ".codasip_tmp_var_0", 124),
    MI17codasip_tmp_var_1IH4_2me2me1_2me(name + ".codasip_tmp_var_1", 125),
    MI17codasip_tmp_var_5IH4_2me2me1_2me(name + ".codasip_tmp_var_5", 126),
    MI17codasip_tmp_var_2IH4_2me2me1_2me(name + ".codasip_tmp_var_2", 127),
    MI17codasip_tmp_var_3IH4_2me2me1_2me(name + ".codasip_tmp_var_3", 128),
    MI17codasip_tmp_var_4IH4_2me2me1_2me(name + ".codasip_tmp_var_4", 129),
    MI17codasip_tmp_var_0IH4_2wb2wb1_2wb(name + ".codasip_tmp_var_0", 130),
    m_OverflowCheck(false),
    m_OverflowCheckMain(0),
    m_OverflowCheckActive(false),
    m_OverflowCheckStackLow(0),
    m_OverflowCheckStackHigh(0),
    m_OverflowCheckSP(),
    m_OverflowCheckSPIndex(0)
{
    m_Name = name;
    m_Executable = "";
    size_t namePos = m_Name.rfind('.');
    if (namePos != std::string::npos) m_Name.erase(0, namePos+1);
    MI7if_data.set_listener(m_Watchpoints);
    ClearMultuactivationCheckers();
    Insert(MI10s_fe_stall);
    MI10s_fe_stall.set_log(m_Log);
    Insert(MI10s_fe_clear);
    MI10s_fe_clear.set_log(m_Log);
    Insert(MI10s_fe_instr);
    MI10s_fe_instr.set_log(m_Log);
    Insert(MI10s_id_stall);
    MI10s_id_stall.set_log(m_Log);
    Insert(MI10s_id_clear);
    MI10s_id_clear.set_log(m_Log);
    MI7r_id_pc.set_default_value(0x0U);
    Insert(MI7r_id_pc);
    MI7r_id_pc.set_pipeline_stage("ID");
    MI7r_id_pc.set_log(m_Log);
    MI10r_id_instr.set_default_value(0x0U);
    Insert(MI10r_id_instr);
    MI10r_id_instr.set_pipeline_stage("ID");
    MI10r_id_instr.set_log(m_Log);
    Insert(MI11s_id_opcode);
    MI11s_id_opcode.set_log(m_Log);
    Insert(MI20s_id_extended_opcode);
    MI20s_id_extended_opcode.set_log(m_Log);
    Insert(MI17s_id_rtype_opcode);
    MI17s_id_rtype_opcode.set_log(m_Log);
    Insert(MI17s_id_itype_opcode);
    MI17s_id_itype_opcode.set_log(m_Log);
    Insert(MI17s_id_stype_opcode);
    MI17s_id_stype_opcode.set_log(m_Log);
    Insert(MI17s_id_utype_opcode);
    MI17s_id_utype_opcode.set_log(m_Log);
    Insert(MI10s_id_xpr_a);
    MI10s_id_xpr_a.set_log(m_Log);
    Insert(MI10s_id_xpr_b);
    MI10s_id_xpr_b.set_log(m_Log);
    Insert(MI13s_id_xpr_dest);
    MI13s_id_xpr_dest.set_log(m_Log);
    Insert(MI12s_id_shamnt5);
    MI12s_id_shamnt5.set_log(m_Log);
    Insert(MI17s_id_itype_simm12);
    MI17s_id_itype_simm12.set_log(m_Log);
    Insert(MI17s_id_stype_simm12);
    MI17s_id_stype_simm12.set_log(m_Log);
    Insert(MI17s_id_btype_simm12);
    MI17s_id_btype_simm12.set_log(m_Log);
    Insert(MI17s_id_jtype_simm20);
    MI17s_id_jtype_simm20.set_log(m_Log);
    Insert(MI17s_id_utype_uimm20);
    MI17s_id_utype_uimm20.set_log(m_Log);
    Insert(MI8s_id_imm);
    MI8s_id_imm.set_log(m_Log);
    Insert(MI8s_id_csr);
    MI8s_id_csr.set_log(m_Log);
    Insert(MI9s_id_zimm);
    MI9s_id_zimm.set_log(m_Log);
    Insert(MI14s_id_src_a_mux);
    MI14s_id_src_a_mux.set_log(m_Log);
    Insert(MI14s_id_src_b_mux);
    MI14s_id_src_b_mux.set_log(m_Log);
    Insert(MI11s_id_alu_op);
    MI11s_id_alu_op.set_log(m_Log);
    Insert(MI11s_id_mem_op);
    MI11s_id_mem_op.set_log(m_Log);
    Insert(MI12s_id_jump_op);
    MI12s_id_jump_op.set_log(m_Log);
    Insert(MI17s_id_xpr_dest_src);
    MI17s_id_xpr_dest_src.set_log(m_Log);
    Insert(MI10s_ex_stall);
    MI10s_ex_stall.set_log(m_Log);
    Insert(MI10s_ex_clear);
    MI10s_ex_clear.set_log(m_Log);
    MI7r_ex_pc.set_default_value(0x0U);
    Insert(MI7r_ex_pc);
    MI7r_ex_pc.set_pipeline_stage("EX");
    MI7r_ex_pc.set_log(m_Log);
    MI10r_ex_instr.set_default_value(0x0U);
    Insert(MI10r_ex_instr);
    MI10r_ex_instr.set_pipeline_stage("EX");
    MI10r_ex_instr.set_log(m_Log);
    MI13r_ex_xpr_dest.set_default_value(0x0U);
    Insert(MI13r_ex_xpr_dest);
    MI13r_ex_xpr_dest.set_pipeline_stage("EX");
    MI13r_ex_xpr_dest.set_log(m_Log);
    MI17r_ex_xpr_dest_src.set_default_value(0x0U);
    Insert(MI17r_ex_xpr_dest_src);
    MI17r_ex_xpr_dest_src.set_pipeline_stage("EX");
    MI17r_ex_xpr_dest_src.set_log(m_Log);
    MI11r_ex_alu_op.set_default_value(0x0U);
    Insert(MI11r_ex_alu_op);
    MI11r_ex_alu_op.set_pipeline_stage("EX");
    MI11r_ex_alu_op.set_log(m_Log);
    MI11r_ex_mem_op.set_default_value(0x0U);
    Insert(MI11r_ex_mem_op);
    MI11r_ex_mem_op.set_pipeline_stage("EX");
    MI11r_ex_mem_op.set_log(m_Log);
    MI12r_ex_jump_op.set_default_value(0x0U);
    Insert(MI12r_ex_jump_op);
    MI12r_ex_jump_op.set_pipeline_stage("EX");
    MI12r_ex_jump_op.set_log(m_Log);
    MI10r_ex_xpr_a.set_default_value(0x0U);
    Insert(MI10r_ex_xpr_a);
    MI10r_ex_xpr_a.set_pipeline_stage("EX");
    MI10r_ex_xpr_a.set_log(m_Log);
    MI10r_ex_xpr_b.set_default_value(0x0U);
    Insert(MI10r_ex_xpr_b);
    MI10r_ex_xpr_b.set_pipeline_stage("EX");
    MI10r_ex_xpr_b.set_log(m_Log);
    MI14r_ex_src_a_mux.set_default_value(0x0U);
    Insert(MI14r_ex_src_a_mux);
    MI14r_ex_src_a_mux.set_pipeline_stage("EX");
    MI14r_ex_src_a_mux.set_log(m_Log);
    MI14r_ex_src_b_mux.set_default_value(0x0U);
    Insert(MI14r_ex_src_b_mux);
    MI14r_ex_src_b_mux.set_pipeline_stage("EX");
    MI14r_ex_src_b_mux.set_log(m_Log);
    Insert(MI14s_ex_forward_a);
    MI14s_ex_forward_a.set_log(m_Log);
    Insert(MI23s_ex_xpr_data_a_forward);
    MI23s_ex_xpr_data_a_forward.set_log(m_Log);
    Insert(MI13s_ex_alu_in_a);
    MI13s_ex_alu_in_a.set_log(m_Log);
    Insert(MI14s_ex_forward_b);
    MI14s_ex_forward_b.set_log(m_Log);
    Insert(MI23s_ex_xpr_data_b_forward);
    MI23s_ex_xpr_data_b_forward.set_log(m_Log);
    Insert(MI13s_ex_alu_in_b);
    MI13s_ex_alu_in_b.set_log(m_Log);
    MI15r_ex_xpr_data_a.set_default_value(0x0U);
    Insert(MI15r_ex_xpr_data_a);
    MI15r_ex_xpr_data_a.set_pipeline_stage("EX");
    MI15r_ex_xpr_data_a.set_log(m_Log);
    MI15r_ex_xpr_data_b.set_default_value(0x0U);
    Insert(MI15r_ex_xpr_data_b);
    MI15r_ex_xpr_data_b.set_pipeline_stage("EX");
    MI15r_ex_xpr_data_b.set_log(m_Log);
    MI8r_ex_imm.set_default_value(0x0U);
    Insert(MI8r_ex_imm);
    MI8r_ex_imm.set_pipeline_stage("EX");
    MI8r_ex_imm.set_log(m_Log);
    Insert(MI12s_ex_alu_out);
    MI12s_ex_alu_out.set_log(m_Log);
    Insert(MI18s_ex_branch_target);
    MI18s_ex_branch_target.set_log(m_Log);
    Insert(MI9s_ex_zero);
    MI9s_ex_zero.set_log(m_Log);
    Insert(MI16s_ex_take_branch);
    MI16s_ex_take_branch.set_log(m_Log);
    Insert(MI10s_me_stall);
    MI10s_me_stall.set_log(m_Log);
    Insert(MI10s_me_clear);
    MI10s_me_clear.set_log(m_Log);
    MI7r_me_pc.set_default_value(0x0U);
    Insert(MI7r_me_pc);
    MI7r_me_pc.set_pipeline_stage("ME");
    MI7r_me_pc.set_log(m_Log);
    MI10r_me_instr.set_default_value(0x0U);
    Insert(MI10r_me_instr);
    MI10r_me_instr.set_pipeline_stage("ME");
    MI10r_me_instr.set_log(m_Log);
    MI15r_me_alu_data_b.set_default_value(0x0U);
    Insert(MI15r_me_alu_data_b);
    MI15r_me_alu_data_b.set_pipeline_stage("ME");
    MI15r_me_alu_data_b.set_log(m_Log);
    MI13r_me_xpr_dest.set_default_value(0x0U);
    Insert(MI13r_me_xpr_dest);
    MI13r_me_xpr_dest.set_pipeline_stage("ME");
    MI13r_me_xpr_dest.set_log(m_Log);
    MI17r_me_xpr_dest_src.set_default_value(0x0U);
    Insert(MI17r_me_xpr_dest_src);
    MI17r_me_xpr_dest_src.set_pipeline_stage("ME");
    MI17r_me_xpr_dest_src.set_log(m_Log);
    MI11r_me_mem_op.set_default_value(0x0U);
    Insert(MI11r_me_mem_op);
    MI11r_me_mem_op.set_pipeline_stage("ME");
    MI11r_me_mem_op.set_log(m_Log);
    MI12r_me_alu_out.set_default_value(0x0U);
    Insert(MI12r_me_alu_out);
    MI12r_me_alu_out.set_pipeline_stage("ME");
    MI12r_me_alu_out.set_log(m_Log);
    Insert(MI17s_me_mem_read_raw);
    MI17s_me_mem_read_raw.set_log(m_Log);
    Insert(MI13s_me_mem_read);
    MI13s_me_mem_read.set_log(m_Log);
    Insert(MI13s_me_data_out);
    MI13s_me_data_out.set_log(m_Log);
    Insert(MI10s_wb_stall);
    MI10s_wb_stall.set_log(m_Log);
    Insert(MI10s_wb_clear);
    MI10s_wb_clear.set_log(m_Log);
    MI7r_wb_pc.set_default_value(0x0U);
    Insert(MI7r_wb_pc);
    MI7r_wb_pc.set_pipeline_stage("WB");
    MI7r_wb_pc.set_log(m_Log);
    MI10r_wb_instr.set_default_value(0x0U);
    Insert(MI10r_wb_instr);
    MI10r_wb_instr.set_pipeline_stage("WB");
    MI10r_wb_instr.set_log(m_Log);
    MI13r_wb_xpr_dest.set_default_value(0x0U);
    Insert(MI13r_wb_xpr_dest);
    MI13r_wb_xpr_dest.set_pipeline_stage("WB");
    MI13r_wb_xpr_dest.set_log(m_Log);
    MI17r_wb_xpr_dest_src.set_default_value(0x0U);
    Insert(MI17r_wb_xpr_dest_src);
    MI17r_wb_xpr_dest_src.set_pipeline_stage("WB");
    MI17r_wb_xpr_dest_src.set_log(m_Log);
    MI13r_wb_data_out.set_default_value(0x0U);
    Insert(MI13r_wb_data_out);
    MI13r_wb_data_out.set_pipeline_stage("WB");
    MI13r_wb_data_out.set_log(m_Log);
    MI12r_wb_alu_out.set_default_value(0x0U);
    Insert(MI12r_wb_alu_out);
    MI12r_wb_alu_out.set_pipeline_stage("WB");
    MI12r_wb_alu_out.set_log(m_Log);
    MI13r_wb_mem_read.set_default_value(0x0U);
    Insert(MI13r_wb_mem_read);
    MI13r_wb_mem_read.set_pipeline_stage("WB");
    MI13r_wb_mem_read.set_log(m_Log);
    MI4r_pc.set_default_value(0x0U);
    Insert(MI4r_pc);
    MI4r_pc.set_log(m_Log);
    MI6rf_xpr.set_default_value(0x0U);
    Insert(MI6rf_xpr);
    MI6rf_xpr.set_architectural(true);
    MI6rf_xpr.set_log(m_Log);
    Insert(MI6as_all_virt_program);
    Insert(MI6as_all_virt_data);
    Insert(MI6as_all);
    Insert(MI7if_code);
    MI7if_code.set_log(m_Log);
    Insert(MI7if_data);
    MI7if_data.set_log(m_Log);
    MI11INSTRUCTIONIH4_2id2id8_6isa_hw6isa_hw1_6isa_hw.set_log(m_Log);
    MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_8i_hw_alu.set_log(m_Log);
    MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_10i_hw_alu_i.set_log(m_Log);
    MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_10i_hw_shift.set_log(m_Log);
    MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_11i_hw_branch.set_log(m_Log);
    MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_9i_hw_load.set_log(m_Log);
    MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_10i_hw_store.set_log(m_Log);
    MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_14i_hw_upper_imm.set_log(m_Log);
    MI17codasip_tmp_var_0IH15_12pipe_control12pipe_control1_12pipe_control.set_log(m_Log);
    MI17codasip_tmp_var_2IH15_12pipe_control12pipe_control1_12pipe_control.set_log(m_Log);
    MI17codasip_tmp_var_4IH15_12pipe_control12pipe_control1_12pipe_control.set_log(m_Log);
    MI17codasip_tmp_var_6IH15_12pipe_control12pipe_control1_12pipe_control.set_log(m_Log);
    MI17codasip_tmp_var_8IH15_12pipe_control12pipe_control1_12pipe_control.set_log(m_Log);
    MI17codasip_tmp_var_1IH15_12pipe_control12pipe_control1_12pipe_control.set_log(m_Log);
    MI17codasip_tmp_var_3IH15_12pipe_control12pipe_control1_12pipe_control.set_log(m_Log);
    MI17codasip_tmp_var_5IH15_12pipe_control12pipe_control1_12pipe_control.set_log(m_Log);
    MI17codasip_tmp_var_7IH15_12pipe_control12pipe_control1_12pipe_control.set_log(m_Log);
    MI17codasip_tmp_var_9IH15_12pipe_control12pipe_control1_12pipe_control.set_log(m_Log);
    MI17codasip_tmp_var_0IH4_2ex2ex1_2ex.set_log(m_Log);
    MI17codasip_tmp_var_1IH4_2ex2ex1_2ex.set_log(m_Log);
    MI17codasip_tmp_var_2IH4_2ex2ex1_2ex.set_log(m_Log);
    MI17codasip_tmp_var_3IH4_2ex2ex1_2ex.set_log(m_Log);
    MI17codasip_tmp_var_4IH4_2ex2ex1_2ex.set_log(m_Log);
    MI17codasip_tmp_var_0IH4_2fe2fe1_2fe.set_log(m_Log);
    MI17codasip_tmp_var_0IH4_2id2id1_2id.set_log(m_Log);
    MI17codasip_tmp_var_1IH4_2id2id1_2id.set_log(m_Log);
    MI8data_memIH4_2me2me1_2meB0.set_log(m_Log);
    MI11request_cmdIH4_2me2me1_2meB0.set_log(m_Log);
    MI10byte_countIH4_2me2me1_2meB0.set_log(m_Log);
    MI17codasip_tmp_var_0IH4_2me2me1_2me.set_log(m_Log);
    MI17codasip_tmp_var_1IH4_2me2me1_2me.set_log(m_Log);
    MI17codasip_tmp_var_5IH4_2me2me1_2me.set_log(m_Log);
    MI17codasip_tmp_var_2IH4_2me2me1_2me.set_log(m_Log);
    MI17codasip_tmp_var_3IH4_2me2me1_2me.set_log(m_Log);
    MI17codasip_tmp_var_4IH4_2me2me1_2me.set_log(m_Log);
    MI17codasip_tmp_var_0IH4_2wb2wb1_2wb.set_log(m_Log);
}
int Sim::Reset()
{
    m_Halt = SIM_OK;
    m_ExitMsg.clear();
    int rc = SIM_OK;
    m_SimCycleCounter = 0;
    MI7r_id_pc.reset();
    MI10r_id_instr.reset();
    MI7r_ex_pc.reset();
    MI10r_ex_instr.reset();
    MI13r_ex_xpr_dest.reset();
    MI17r_ex_xpr_dest_src.reset();
    MI11r_ex_alu_op.reset();
    MI11r_ex_mem_op.reset();
    MI12r_ex_jump_op.reset();
    MI10r_ex_xpr_a.reset();
    MI10r_ex_xpr_b.reset();
    MI14r_ex_src_a_mux.reset();
    MI14r_ex_src_b_mux.reset();
    MI15r_ex_xpr_data_a.reset();
    MI15r_ex_xpr_data_b.reset();
    MI8r_ex_imm.reset();
    MI7r_me_pc.reset();
    MI10r_me_instr.reset();
    MI15r_me_alu_data_b.reset();
    MI13r_me_xpr_dest.reset();
    MI17r_me_xpr_dest_src.reset();
    MI11r_me_mem_op.reset();
    MI12r_me_alu_out.reset();
    MI7r_wb_pc.reset();
    MI10r_wb_instr.reset();
    MI13r_wb_xpr_dest.reset();
    MI17r_wb_xpr_dest_src.reset();
    MI13r_wb_data_out.reset();
    MI12r_wb_alu_out.reset();
    MI13r_wb_mem_read.reset();
    MI4r_pc.reset();
    MI6rf_xpr.reset();
    MI7if_code.reset();
    MI7if_data.reset();
    m_OverflowCheckActive = false;
    if (m_Started && m_Debugger) {
        m_Debugger->ThreadExited(*this,m_ThreadId,m_Halt);
    }
    m_Started = false;
    try {
        if (!m_Started) {
            if (m_Debugger) {
                m_Debugger->ThreadStarted(*this,m_ThreadId);
            }
            m_Started = true;
        }
        MI5reset();
        DumpResources();
    }
    catch (std::exception & ex) {
        if (m_Halt == SIM_OK)
            m_Halt = SIM_FAIL;
        if (strlen(ex.what()) > 0)
            SIM_LOG(LOG_TYPE_FATAL, m_Halt) << ex.what();
        m_ExitMsg = ex.what();
    }
    if (m_Halt != SIM_OK) {
        if (m_Debugger) {
            m_Debugger->ThreadExited(*this,m_ThreadId,m_Halt);
            m_Debugger->AsipExited(*this,m_Halt,m_ExitMsg);
        }
        m_Started = false;
    }
    m_SimCycleCounter++;
    return SIM_OK;
}
const Path& Sim::GetPath() const 
{
    return m_Path;
}
const std::string& Sim::GetName() const 
{
    return m_Name;
}
Uid Sim::GetUid() const 
{
    return m_Uid;
}
void Sim::SetCycleCount(const uint64_t val)
{
    m_SimCycleCounter = val;
}
void Sim::SetLogging(const LogType type, const std::string& options)
{
    m_Log.SetLogging(type, options);
}
const std::string& Sim::GetLastError() const 
{
    return m_Log.GetLastError();
}
void Sim::Elaborate(Log& parentLog)
{
    m_Log.SetParentLog(parentLog);
}
int Sim::Run()
{
    int rc = SIM_OK;
    do {
        rc = Sim::ClockCycle();
    } while (rc == SIM_OK);
    return rc;
}
Type Sim::GetType() const 
{
    return ASIP;
}
SimulatorPrivateInterface* Sim::GetSimulator() const 
{
    return const_cast<SimulatorPrivateInterface*>(static_cast<const SimulatorPrivateInterface*>(this));
}
SimulatorPrivateInterface::Features Sim::GetFeatures() const 
{
    return (Features)(SIMULATOR_CA | DEBUGGER | WATCHPOINTS | DUMP | STACK_OVERFLOW_CHECK);
}
void Sim::SetTimeout(const uint64_t timeout)
{
    m_SimCycleTimeout = timeout;
}
void Sim::Register(DebuggerInterface& iface)
{
    if (m_Debugger == &iface) return;
    SetDebugger(iface);
    iface.Register(*this);
}
void Sim::SetDebugger(DebuggerInterface& iface)
{
    if (m_Debugger == &iface) return;
    m_Debugger = &iface;
    m_Log.SetDebugger(&iface);
    m_Debugger->AsipAdded(*this);
}
/**
 * \brief StopInDebugger
 */
void Sim::StopInDebugger(const EventType event,simulator::Address codalAddr)
{
    if (m_Debugger == NULL) return;
    EventInfo* eventInfo = NULL;
    if (codalAddr == INVALID_ADDRESS) {
        m_EventInfo.SetAddress(MI4r_pc.dread());
        m_EventInfo.SetReason(event);
        eventInfo = &m_EventInfo;
    }
    if (eventInfo != NULL) {
        m_Resume = false;
        if(m_Debugger && m_Debugger->HandleEvent(*this, *eventInfo)) {
            synchronization::ScopedLock<synchronization::ReentrantMutex> lock(m_ResumeMutex);
            while (!m_Resume && m_Halt != SIM_KILLED)
                m_ResumeCV.Wait(lock);
            m_Resume = false;
            if (m_Halt == SIM_KILLED) 
                throw codasip::exceptions::CGeneralError("");
        }
    }
}
void Sim::Kill()
{
    m_Halt = SIM_KILLED;
    m_ResumeCV.NotifyOne();
}
void Sim::Interrupt()
{
    if (m_Debugger) {
        SetThreadStepMode(0, true);
        return;
    }
    Kill();
}
void Sim::SetBreakpoint(const BreakpointInfo& info)
{
    m_BreakPoints[info.GetAddress()] = info.IsEnabled();
}
void Sim::SetThreadStepMode(const ThreadId tid, const bool stepMode)
{
    m_IsStepMode = stepMode;
}
void Sim::SetDebugLevel(const DebugLevel level)
{

}
void Sim::Resume()
{
    using namespace synchronization;
    {
        ScopedLock<ReentrantMutex> lock(m_ResumeMutex);
        m_Resume = true;
    }
    m_ResumeCV.NotifyOne();
}
bool Sim::SetWatchpoint(const WatchpointInfo& info)
{
    auto res = GetResourceInfo(info.GetResource());
    switch (res ? res->GetUid() : INVALID_UID) {
    case INVALID_UID:
    case 82:
    case 84:
        if (!info.IsDataWatchpoint()) {
            if (0ULL <= info.GetAddress() && info.GetAddress()+info.GetSize() <= 4294967295ULL) {
                return MI7if_data.set_watchpoint(info, 0ULL);
            }
        } else {
            return MI7if_data.set_watchpoint(info);
        }
        return true;
    case 86:
        return MI7if_data.set_watchpoint(info);
    }
    SIM_LOG(LOG_TYPE_WARNING, 0) << "unknown resource with UID " << info.GetResource() << " for watchpoint setting." << std::endl;
    return false;
}
Sim::~Sim()
{
    m_Disassembler->Destroy();
}
disassembler::Disassembler* Sim::CreateDisassembler() const 
{
    return new disassembler::MI7RISC_V5::Dsm();
}
void Sim::SetCallstackUnwinder(debugger::UnwinderWrapper* wrapper)
{

}
void Sim::InitProfiler(const std::string& output, const unsigned int samplingRate,const bool enabledCallStack,const std::set<unsigned int>& sequenceLengths)
{
    SIM_LOG(LOG_TYPE_ERROR, 0) << "Profiler is not part of simulator. Please, re-generate the simulator with profiling features.";
}
/**
 * \brief Parser_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw_bs_7
 */
int Sim::Parser_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw_bs_7(const uint32_t input)
{
        if (((input & 0x7f) == 0x3f /*0111111*/ )) {
            
            MI8opc_haltIH4_2id2id8_6isa_hw6isa_hw10_8opc_halt3opc();
            
            MI9i_hw_haltIH4_2id2id8_6isa_hw6isa_hw();
        
            goto END_OF_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw;
        }
        if (((input & 0x5f) == 0x17 /*0X10111*/ )) {
            
            switch (((input & 0x7f) )) {
            case ( 0x17 /*0010111*/ ):
            {
                
                MI9opc_auipcIH4_2id2id8_6isa_hw6isa_hw16_13opc_upper_imm3opc();
            
                break;
            }
            case ( 0x37 /*0110111*/ ):
            {
                
                MI7opc_luiIH4_2id2id8_6isa_hw6isa_hw16_13opc_upper_imm3opc();
            
                break;
            }
            default: 
                return INSTPARSER_INVALIDCODE;
            }
            
            MI14i_hw_upper_immIH4_2id2id8_6isa_hw6isa_hw();
        
            goto END_OF_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw;
        }
        if (((input & 0x7f) == 0x5f /*1011111*/ )) {
            
            MI11opc_syscallIH4_2id2id8_6isa_hw6isa_hw14_11opc_syscall3opc();
            
            MI12i_hw_syscallIH4_2id2id8_6isa_hw6isa_hw();
        
            goto END_OF_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw;
        }
        if (((input & 0x7f) == 0x6f /*1101111*/ )) {
            
            MI7opc_jalIH4_2id2id8_6isa_hw6isa_hw9_7opc_jal3opc();
            
            MI8i_hw_jalIH4_2id2id8_6isa_hw6isa_hw();
        
            goto END_OF_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw;
        }
        return INSTPARSER_INVALIDCODE;
        // Collecting label
        END_OF_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw:
        return INSTPARSER_OK;
}
/**
 * \brief Parser_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw_bs_10
 */
int Sim::Parser_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw_bs_10(const uint32_t input)
{
        if (((input & 0x3ff) == 0x67 /*0001100111*/ )) {
            
            MI8opc_jalrIH4_2id2id8_6isa_hw6isa_hw10_8opc_jalr3opc();
            
            MI9i_hw_jalrIH4_2id2id8_6isa_hw6isa_hw();
        
            goto END_OF_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw;
        }
        if (((input & 0x37f) == 0x23 /*00X0100011*/ ) || 
                ((input & 0x3ff) == 0x123 /*0100100011*/ )) {
            
            switch (((input & 0x3ff) )) {
            case ( 0x23 /*0000100011*/ ):
            {
                
                MI6opc_sbIH4_2id2id8_6isa_hw6isa_hw11_9opc_store3opc();
            
                break;
            }
            case ( 0xa3 /*0010100011*/ ):
            {
                
                MI6opc_shIH4_2id2id8_6isa_hw6isa_hw11_9opc_store3opc();
            
                break;
            }
            case ( 0x123 /*0100100011*/ ):
            {
                
                MI6opc_swIH4_2id2id8_6isa_hw6isa_hw11_9opc_store3opc();
            
                break;
            }
            default: 
                return INSTPARSER_INVALIDCODE;
            }
            
            MI10i_hw_storeIH4_2id2id8_6isa_hw6isa_hw();
        
            goto END_OF_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw;
        }
        if (((input & 0x3ff) == 0x103 /*0100000011*/ ) || 
                ((input & 0x17f) == 0x3 /*X0X0000011*/ )) {
            
            switch (((input & 0x3ff) )) {
            case ( 0x103 /*0100000011*/ ):
            {
                
                MI6opc_lwIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc();
            
                break;
            }
            case ( 0x3 /*0000000011*/ ):
            {
                
                MI6opc_lbIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc();
            
                break;
            }
            case ( 0x83 /*0010000011*/ ):
            {
                
                MI6opc_lhIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc();
            
                break;
            }
            case ( 0x203 /*1000000011*/ ):
            {
                
                MI7opc_lbuIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc();
            
                break;
            }
            case ( 0x283 /*1010000011*/ ):
            {
                
                MI7opc_lhuIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc();
            
                break;
            }
            default: 
                return INSTPARSER_INVALIDCODE;
            }
            
            MI9i_hw_loadIH4_2id2id8_6isa_hw6isa_hw();
        
            goto END_OF_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw;
        }
        if (((input & 0x37f) == 0x363 /*11X1100011*/ ) || 
                ((input & 0x17f) == 0x63 /*X0X1100011*/ )) {
            
            switch (((input & 0x3ff) )) {
            case ( 0x363 /*1101100011*/ ):
            {
                
                MI8opc_bltuIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc();
            
                break;
            }
            case ( 0x3e3 /*1111100011*/ ):
            {
                
                MI8opc_bgeuIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc();
            
                break;
            }
            case ( 0x63 /*0001100011*/ ):
            {
                
                MI7opc_beqIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc();
            
                break;
            }
            case ( 0xe3 /*0011100011*/ ):
            {
                
                MI7opc_bneIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc();
            
                break;
            }
            case ( 0x263 /*1001100011*/ ):
            {
                
                MI7opc_bltIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc();
            
                break;
            }
            case ( 0x2e3 /*1011100011*/ ):
            {
                
                MI7opc_bgeIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc();
            
                break;
            }
            default: 
                return INSTPARSER_INVALIDCODE;
            }
            
            MI11i_hw_branchIH4_2id2id8_6isa_hw6isa_hw();
        
            goto END_OF_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw;
        }
        if (((input & 0x1ff) == 0x193 /*X110010011*/ ) || 
                ((input & 0xff) == 0x13 /*XX00010011*/ )) {
            
            switch (((input & 0x3ff) )) {
            case ( 0x193 /*0110010011*/ ):
            {
                
                MI9opc_sltiuIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc();
            
                break;
            }
            case ( 0x393 /*1110010011*/ ):
            {
                
                MI8opc_andiIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc();
            
                break;
            }
            case ( 0x13 /*0000010011*/ ):
            {
                
                MI8opc_addiIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc();
            
                break;
            }
            case ( 0x113 /*0100010011*/ ):
            {
                
                MI8opc_sltiIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc();
            
                break;
            }
            case ( 0x213 /*1000010011*/ ):
            {
                
                MI8opc_xoriIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc();
            
                break;
            }
            case ( 0x313 /*1100010011*/ ):
            {
                
                MI7opc_oriIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc();
            
                break;
            }
            default: 
                return INSTPARSER_INVALIDCODE;
            }
            
            MI10i_hw_alu_iIH4_2id2id8_6isa_hw6isa_hw();
        
            goto END_OF_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw;
        }
        return INSTPARSER_INVALIDCODE;
        // Collecting label
        END_OF_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw:
        return INSTPARSER_OK;
}
/**
 * \brief Parser_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw_bs_17
 */
int Sim::Parser_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw_bs_17(const uint32_t input)
{
        if (((input & 0x1fdff) == 0x93 /*0000000X010010011*/ ) || 
                ((input & 0x1ffff) == 0x8293 /*01000001010010011*/ )) {
            
            switch (((input & 0x1ffff) )) {
            case ( 0x93 /*00000000010010011*/ ):
            {
                
                MI8opc_slliIH4_2id2id8_6isa_hw6isa_hw11_9opc_shift3opc();
            
                break;
            }
            case ( 0x293 /*00000001010010011*/ ):
            {
                
                MI8opc_srliIH4_2id2id8_6isa_hw6isa_hw11_9opc_shift3opc();
            
                break;
            }
            case ( 0x8293 /*01000001010010011*/ ):
            {
                
                MI8opc_sraiIH4_2id2id8_6isa_hw6isa_hw11_9opc_shift3opc();
            
                break;
            }
            default: 
                return INSTPARSER_INVALIDCODE;
            }
            
            MI10i_hw_shiftIH4_2id2id8_6isa_hw6isa_hw();
        
            goto END_OF_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw;
        }
        if (((input & 0x1fc7f) == 0x33 /*0000000XXX0110011*/ ) || 
                ((input & 0x1ffff) == 0x8033 /*01000000000110011*/ ) || 
                ((input & 0x1ffff) == 0x82b3 /*01000001010110011*/ )) {
            
            switch (((input & 0x1ffff) )) {
            case ( 0x33 /*00000000000110011*/ ):
            {
                
                MI7opc_addIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc();
            
                break;
            }
            case ( 0xb3 /*00000000010110011*/ ):
            {
                
                MI7opc_sllIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc();
            
                break;
            }
            case ( 0x133 /*00000000100110011*/ ):
            {
                
                MI7opc_sltIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc();
            
                break;
            }
            case ( 0x1b3 /*00000000110110011*/ ):
            {
                
                MI8opc_sltuIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc();
            
                break;
            }
            case ( 0x233 /*00000001000110011*/ ):
            {
                
                MI7opc_xorIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc();
            
                break;
            }
            case ( 0x2b3 /*00000001010110011*/ ):
            {
                
                MI7opc_srlIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc();
            
                break;
            }
            case ( 0x333 /*00000001100110011*/ ):
            {
                
                MI6opc_orIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc();
            
                break;
            }
            case ( 0x3b3 /*00000001110110011*/ ):
            {
                
                MI7opc_andIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc();
            
                break;
            }
            case ( 0x8033 /*01000000000110011*/ ):
            {
                
                MI7opc_subIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc();
            
                break;
            }
            case ( 0x82b3 /*01000001010110011*/ ):
            {
                
                MI7opc_sraIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc();
            
                break;
            }
            default: 
                return INSTPARSER_INVALIDCODE;
            }
            
            MI8i_hw_aluIH4_2id2id8_6isa_hw6isa_hw();
        
            goto END_OF_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw;
        }
        return INSTPARSER_INVALIDCODE;
        // Collecting label
        END_OF_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw:
        return INSTPARSER_OK;
}
/**
 * \brief MI8i_hw_aluIH4_2id2id8_6isa_hw6isa_hw
 */
void Sim::MI8i_hw_aluIH4_2id2id8_6isa_hw6isa_hw()
{
    MI14s_id_src_b_mux.write(codasip::Integer<1, false>(0u));
    MI8s_id_imm.write(int32_t(0l));
    MI11s_id_mem_op.write(codasip::Integer<1, false>(0u));
    MI12s_id_jump_op.write(codasip::Integer<1, false>(0u));
    MI17s_id_xpr_dest_src.write(codasip::Integer<1, false>(1u));
    MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_8i_hw_alu.write(MI65codasip_return_MI7opc_aluIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc.read());
    if ((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_8i_hw_alu.read() == codasip::Integer<17, false>(563u)))
    {
        MI11s_id_alu_op.write(codasip::Integer<3, false>(4u));
    }
    if ((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_8i_hw_alu.read() == codasip::Integer<17, false>(307u)))
    {
        MI11s_id_alu_op.write(codasip::Integer<4, false>(9u));
    }
    if ((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_8i_hw_alu.read() == codasip::Integer<17, false>(435u)))
    {
        MI11s_id_alu_op.write(codasip::Integer<4, false>(10u));
    }
    if ((bool)((bool)((bool)((bool)((bool)((bool)((bool)((bool)((bool)((((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_8i_hw_alu.read() == codasip::Integer<17, false>(179u)))))) && (((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_8i_hw_alu.read() == codasip::Integer<17, false>(691u))))))) && (((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_8i_hw_alu.read() == codasip::Integer<17, false>(33459u))))))) && (((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_8i_hw_alu.read() == codasip::Integer<17, false>(51u))))))) && (((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_8i_hw_alu.read() == codasip::Integer<17, false>(32819u))))))) && (((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_8i_hw_alu.read() == codasip::Integer<17, false>(947u))))))) && (((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_8i_hw_alu.read() == codasip::Integer<17, false>(819u))))))) && (((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_8i_hw_alu.read() == codasip::Integer<17, false>(563u))))))) && (((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_8i_hw_alu.read() == codasip::Integer<17, false>(307u))))))) && (((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_8i_hw_alu.read() == codasip::Integer<17, false>(435u))))))))
    {
        if (!(bool(0u))) {
            SIM_LOG(LOG_TYPE_FATAL, 0)
                 << "assert failed: c:/users/boskin/codasip/risc_v5/model/ca/decoders/ca_decoder.codal:97: "
                 << "Default case in decoder i_alu: "
                 << codasip::Integer<17, 0>(MI65codasip_return_MI7opc_aluIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc.read()).get_dec();
            throw exceptions::BasicError("");
        };
    }
    if ((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_8i_hw_alu.read() == codasip::Integer<17, false>(179u)))
    {
        MI11s_id_alu_op.write(codasip::Integer<3, false>(6u));
    }
    if ((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_8i_hw_alu.read() == codasip::Integer<17, false>(691u)))
    {
        MI11s_id_alu_op.write(codasip::Integer<3, false>(7u));
    }
    if ((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_8i_hw_alu.read() == codasip::Integer<17, false>(33459u)))
    {
        MI11s_id_alu_op.write(codasip::Integer<4, false>(8u));
    }
    if ((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_8i_hw_alu.read() == codasip::Integer<17, false>(51u)))
    {
        MI11s_id_alu_op.write(codasip::Integer<1, false>(0u));
    }
    if ((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_8i_hw_alu.read() == codasip::Integer<17, false>(32819u)))
    {
        MI11s_id_alu_op.write(codasip::Integer<1, false>(1u));
    }
    if ((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_8i_hw_alu.read() == codasip::Integer<17, false>(947u)))
    {
        MI11s_id_alu_op.write(codasip::Integer<2, false>(2u));
    }
    if ((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_8i_hw_alu.read() == codasip::Integer<17, false>(819u)))
    {
        MI11s_id_alu_op.write(codasip::Integer<2, false>(3u));
    }
}
/**
 * \brief MI10i_hw_alu_iIH4_2id2id8_6isa_hw6isa_hw
 */
void Sim::MI10i_hw_alu_iIH4_2id2id8_6isa_hw6isa_hw()
{
    MI14s_id_src_b_mux.write(codasip::Integer<1, false>(1u));
    MI8s_id_imm.write((int32_t)(MI17s_id_itype_simm12.read()));
    MI11s_id_mem_op.write(codasip::Integer<1, false>(0u));
    MI12s_id_jump_op.write(codasip::Integer<1, false>(0u));
    MI17s_id_xpr_dest_src.write(codasip::Integer<1, false>(1u));
    MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_10i_hw_alu_i.write(MI70codasip_return_MI9opc_alu_iIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc.read());
    if ((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_10i_hw_alu_i.read() == codasip::Integer<10, false>(19u)))
    {
        MI11s_id_alu_op.write(codasip::Integer<1, false>(0u));
    }
    if ((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_10i_hw_alu_i.read() == codasip::Integer<10, false>(915u)))
    {
        MI11s_id_alu_op.write(codasip::Integer<2, false>(2u));
    }
    if ((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_10i_hw_alu_i.read() == codasip::Integer<10, false>(787u)))
    {
        MI11s_id_alu_op.write(codasip::Integer<2, false>(3u));
    }
    if ((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_10i_hw_alu_i.read() == codasip::Integer<10, false>(531u)))
    {
        MI11s_id_alu_op.write(codasip::Integer<3, false>(4u));
    }
    if ((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_10i_hw_alu_i.read() == codasip::Integer<10, false>(275u)))
    {
        MI11s_id_alu_op.write(codasip::Integer<4, false>(9u));
    }
    if ((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_10i_hw_alu_i.read() == codasip::Integer<10, false>(403u)))
    {
        MI11s_id_alu_op.write(codasip::Integer<4, false>(10u));
    }
    if ((bool)((bool)((bool)((bool)((bool)((((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_10i_hw_alu_i.read() == codasip::Integer<10, false>(19u)))))) && (((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_10i_hw_alu_i.read() == codasip::Integer<10, false>(915u))))))) && (((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_10i_hw_alu_i.read() == codasip::Integer<10, false>(787u))))))) && (((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_10i_hw_alu_i.read() == codasip::Integer<10, false>(531u))))))) && (((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_10i_hw_alu_i.read() == codasip::Integer<10, false>(275u))))))) && (((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_10i_hw_alu_i.read() == codasip::Integer<10, false>(403u))))))))
    {
        MI11s_id_alu_op.write(codasip::Integer<1, false>(0u));
        if (!(bool(0u))) {
            SIM_LOG(LOG_TYPE_FATAL, 0)
                 << "assert failed: c:/users/boskin/codasip/risc_v5/model/ca/decoders/ca_decoder.codal:145: "
                 << "Default case in decoder i_hw_alu: "
                 << codasip::Integer<10, 0>(MI70codasip_return_MI9opc_alu_iIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc.read()).get_dec();
            throw exceptions::BasicError("");
        };
    }
}
/**
 * \brief MI10i_hw_shiftIH4_2id2id8_6isa_hw6isa_hw
 */
void Sim::MI10i_hw_shiftIH4_2id2id8_6isa_hw6isa_hw()
{
    MI14s_id_src_b_mux.write(codasip::Integer<1, false>(1u));
    MI8s_id_imm.write((uint32_t)(MI12s_id_shamnt5.read()));
    MI11s_id_mem_op.write(codasip::Integer<1, false>(0u));
    MI12s_id_jump_op.write(codasip::Integer<1, false>(0u));
    MI17s_id_xpr_dest_src.write(codasip::Integer<1, false>(1u));
    MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_10i_hw_shift.write(MI70codasip_return_MI9opc_shiftIH4_2id2id8_6isa_hw6isa_hw11_9opc_shift3opc.read());
    if ((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_10i_hw_shift.read() == codasip::Integer<17, false>(147u)))
    {
        MI11s_id_alu_op.write(codasip::Integer<3, false>(6u));
    }
    if ((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_10i_hw_shift.read() == codasip::Integer<17, false>(659u)))
    {
        MI11s_id_alu_op.write(codasip::Integer<3, false>(7u));
    }
    if ((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_10i_hw_shift.read() == codasip::Integer<17, false>(33427u)))
    {
        MI11s_id_alu_op.write(codasip::Integer<4, false>(8u));
    }
    if ((bool)((bool)((((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_10i_hw_shift.read() == codasip::Integer<17, false>(147u)))))) && (((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_10i_hw_shift.read() == codasip::Integer<17, false>(659u))))))) && (((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_10i_hw_shift.read() == codasip::Integer<17, false>(33427u))))))))
    {
        MI11s_id_alu_op.write(codasip::Integer<3, false>(6u));
        if (!(bool(0u))) {
            SIM_LOG(LOG_TYPE_FATAL, 0)
                 << "assert failed: c:/users/boskin/codasip/risc_v5/model/ca/decoders/ca_decoder.codal:179: "
                 << "Default case in decoder in hw_shift: "
                 << codasip::Integer<17, 0>(MI70codasip_return_MI9opc_shiftIH4_2id2id8_6isa_hw6isa_hw11_9opc_shift3opc.read()).get_dec();
            throw exceptions::BasicError("");
        };
    }
}
/**
 * \brief MI11i_hw_branchIH4_2id2id8_6isa_hw6isa_hw
 */
void Sim::MI11i_hw_branchIH4_2id2id8_6isa_hw6isa_hw()
{
    MI14s_id_src_b_mux.write(codasip::Integer<1, false>(0u));
    MI8s_id_imm.write((int32_t)(((int32_t)((int32_t)(MI17s_id_btype_simm12.read()) << int32_t(1l)))));
    MI11s_id_mem_op.write(codasip::Integer<1, false>(0u));
    MI12s_id_jump_op.write(codasip::Integer<2, false>(2u));
    MI17s_id_xpr_dest_src.write(codasip::Integer<1, false>(0u));
    MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_11i_hw_branch.write(MI74codasip_return_MI10opc_branchIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc.read());
    if ((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_11i_hw_branch.read() == codasip::Integer<10, false>(99u)))
    {
        MI11s_id_alu_op.write(codasip::Integer<1, false>(1u));
    }
    if ((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_11i_hw_branch.read() == codasip::Integer<10, false>(227u)))
    {
        MI11s_id_alu_op.write(codasip::Integer<3, false>(5u));
    }
    if ((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_11i_hw_branch.read() == codasip::Integer<10, false>(611u)))
    {
        MI11s_id_alu_op.write(codasip::Integer<4, false>(11u));
    }
    if ((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_11i_hw_branch.read() == codasip::Integer<10, false>(867u)))
    {
        MI11s_id_alu_op.write(codasip::Integer<4, false>(12u));
    }
    if ((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_11i_hw_branch.read() == codasip::Integer<10, false>(739u)))
    {
        MI11s_id_alu_op.write(codasip::Integer<4, false>(9u));
    }
    if ((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_11i_hw_branch.read() == codasip::Integer<10, false>(995u)))
    {
        MI11s_id_alu_op.write(codasip::Integer<4, false>(10u));
    }
    if ((bool)((bool)((bool)((bool)((bool)((((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_11i_hw_branch.read() == codasip::Integer<10, false>(99u)))))) && (((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_11i_hw_branch.read() == codasip::Integer<10, false>(227u))))))) && (((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_11i_hw_branch.read() == codasip::Integer<10, false>(611u))))))) && (((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_11i_hw_branch.read() == codasip::Integer<10, false>(867u))))))) && (((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_11i_hw_branch.read() == codasip::Integer<10, false>(739u))))))) && (((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_11i_hw_branch.read() == codasip::Integer<10, false>(995u))))))))
    {
        MI11s_id_alu_op.write(codasip::Integer<1, false>(1u));
        if (!(bool(0u))) {
            SIM_LOG(LOG_TYPE_FATAL, 0)
                 << "assert failed: c:/users/boskin/codasip/risc_v5/model/ca/decoders/ca_decoder.codal:225: "
                 << "Default case in decoder i_branch: "
                 << codasip::Integer<10, 0>(MI74codasip_return_MI10opc_branchIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc.read()).get_dec();
            throw exceptions::BasicError("");
        };
    }
}
/**
 * \brief MI9i_hw_loadIH4_2id2id8_6isa_hw6isa_hw
 */
void Sim::MI9i_hw_loadIH4_2id2id8_6isa_hw6isa_hw()
{
    MI14s_id_src_b_mux.write(codasip::Integer<1, false>(1u));
    MI8s_id_imm.write((int32_t)(MI17s_id_itype_simm12.read()));
    MI11s_id_alu_op.write(codasip::Integer<1, false>(0u));
    MI12s_id_jump_op.write(codasip::Integer<1, false>(0u));
    MI17s_id_xpr_dest_src.write(codasip::Integer<2, false>(2u));
    MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_9i_hw_load.write(MI68codasip_return_MI8opc_loadIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc.read());
    if ((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_9i_hw_load.read() == codasip::Integer<10, false>(259u)))
    {
        MI11s_id_mem_op.write(codasip::Integer<3, false>(4u));
    }
    if ((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_9i_hw_load.read() == codasip::Integer<10, false>(131u)))
    {
        MI11s_id_mem_op.write(codasip::Integer<3, false>(5u));
    }
    if ((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_9i_hw_load.read() == codasip::Integer<10, false>(643u)))
    {
        MI11s_id_mem_op.write(codasip::Integer<3, false>(6u));
    }
    if ((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_9i_hw_load.read() == codasip::Integer<10, false>(3u)))
    {
        MI11s_id_mem_op.write(codasip::Integer<3, false>(7u));
    }
    if ((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_9i_hw_load.read() == codasip::Integer<10, false>(515u)))
    {
        MI11s_id_mem_op.write(codasip::Integer<4, false>(8u));
    }
    if ((bool)((bool)((bool)((bool)((((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_9i_hw_load.read() == codasip::Integer<10, false>(259u)))))) && (((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_9i_hw_load.read() == codasip::Integer<10, false>(131u))))))) && (((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_9i_hw_load.read() == codasip::Integer<10, false>(643u))))))) && (((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_9i_hw_load.read() == codasip::Integer<10, false>(3u))))))) && (((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_9i_hw_load.read() == codasip::Integer<10, false>(515u))))))))
    {
        MI11s_id_mem_op.write(codasip::Integer<3, false>(4u));
        if (!(bool(0u))) {
            SIM_LOG(LOG_TYPE_FATAL, 0)
                 << "assert failed: c:/users/boskin/codasip/risc_v5/model/ca/decoders/ca_decoder.codal:307: "
                 << "Default case in HW load: "
                 << codasip::Integer<10, 0>(MI68codasip_return_MI8opc_loadIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc.read()).get_dec()
                 << "\n";
            throw exceptions::BasicError("");
        };
    }
}
/**
 * \brief MI10i_hw_storeIH4_2id2id8_6isa_hw6isa_hw
 */
void Sim::MI10i_hw_storeIH4_2id2id8_6isa_hw6isa_hw()
{
    MI14s_id_src_b_mux.write(codasip::Integer<1, false>(0u));
    MI8s_id_imm.write((int32_t)(MI17s_id_stype_simm12.read()));
    MI12s_id_jump_op.write(codasip::Integer<1, false>(0u));
    MI17s_id_xpr_dest_src.write(codasip::Integer<1, false>(0u));
    MI11s_id_alu_op.write(codasip::Integer<1, false>(0u));
    MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_10i_hw_store.write(MI70codasip_return_MI9opc_storeIH4_2id2id8_6isa_hw6isa_hw11_9opc_store3opc.read());
    if ((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_10i_hw_store.read() == codasip::Integer<10, false>(291u)))
    {
        MI11s_id_mem_op.write(codasip::Integer<1, false>(1u));
    }
    if ((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_10i_hw_store.read() == codasip::Integer<10, false>(163u)))
    {
        MI11s_id_mem_op.write(codasip::Integer<2, false>(2u));
    }
    if ((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_10i_hw_store.read() == codasip::Integer<10, false>(35u)))
    {
        MI11s_id_mem_op.write(codasip::Integer<2, false>(3u));
    }
    if ((bool)((bool)((((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_10i_hw_store.read() == codasip::Integer<10, false>(291u)))))) && (((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_10i_hw_store.read() == codasip::Integer<10, false>(163u))))))) && (((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_10i_hw_store.read() == codasip::Integer<10, false>(35u))))))))
    {
        MI11s_id_mem_op.write(codasip::Integer<1, false>(1u));
        if (!(bool(0u))) {
            SIM_LOG(LOG_TYPE_FATAL, 0)
                 << "assert failed: c:/users/boskin/codasip/risc_v5/model/ca/decoders/ca_decoder.codal:341: "
                 << "Default case in i_hw_store in decoder: "
                 << codasip::Integer<10, 0>(MI70codasip_return_MI9opc_storeIH4_2id2id8_6isa_hw6isa_hw11_9opc_store3opc.read()).get_dec();
            throw exceptions::BasicError("");
        };
    }
}
/**
 * \brief MI14i_hw_upper_immIH4_2id2id8_6isa_hw6isa_hw
 */
void Sim::MI14i_hw_upper_immIH4_2id2id8_6isa_hw6isa_hw()
{
    MI14s_id_src_b_mux.write(codasip::Integer<1, false>(1u));
    MI8s_id_imm.write((uint32_t)(((uint32_t)((uint32_t)(MI17s_id_utype_uimm20.read()) << int32_t(12l)))));
    MI12s_id_jump_op.write(codasip::Integer<1, false>(0u));
    MI17s_id_xpr_dest_src.write(codasip::Integer<1, false>(1u));
    MI11s_id_alu_op.write(codasip::Integer<1, false>(0u));
    MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_14i_hw_upper_imm.write(MI80codasip_return_MI13opc_upper_immIH4_2id2id8_6isa_hw6isa_hw16_13opc_upper_imm3opc.read());
    if ((bool)((((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_14i_hw_upper_imm.read() == codasip::Integer<7, false>(55u)))))) && (((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_14i_hw_upper_imm.read() == codasip::Integer<7, false>(23u))))))))
    {
        if (!(bool(0u))) {
            SIM_LOG(LOG_TYPE_FATAL, 0)
                 << "assert failed: c:/users/boskin/codasip/risc_v5/model/ca/decoders/ca_decoder.codal:371: "
                 << "Default case in i_hw_upper_imm in decoder: "
                 << codasip::Integer<7, 0>(MI80codasip_return_MI13opc_upper_immIH4_2id2id8_6isa_hw6isa_hw16_13opc_upper_imm3opc.read()).get_dec();
            throw exceptions::BasicError("");
        };
    }
}
/**
 * \brief MI14print_pipeline
 */
void Sim::MI14print_pipeline()
{
    if (m_CheckerLevel == 0 && m_MultipleActivation[MI14PRINT_PIPELINE_MULTIACTIVATION]) 
    {
        SIM_LOG(LOG_TYPE_ERROR, 0) << ": print_pipeline: multiple activation in the same clock cycle." << std::endl;
    }
    m_MultipleActivation[MI14PRINT_PIPELINE_MULTIACTIVATION] = true;
    SIM_LOG(LOG_TYPE_PRINT, 6)
         << "ID: ";
    {
        resources::BlockPragmaSimulator codasip_bps(m_CheckerLevel);
        {
            SIM_LOG(LOG_TYPE_PRINT, 6) << codasip_disassembler(codasip::Integer<3, false>(6u),MI10r_id_instr.read(),MI7r_id_pc.read());
        }
    }
    SIM_LOG(LOG_TYPE_PRINT, 6)
         << "\n";
    SIM_LOG(LOG_TYPE_PRINT, 6)
         << "EX: ";
    {
        resources::BlockPragmaSimulator codasip_bps(m_CheckerLevel);
        {
            SIM_LOG(LOG_TYPE_PRINT, 6) << codasip_disassembler(codasip::Integer<3, false>(6u),MI10r_ex_instr.read(),MI7r_ex_pc.read());
        }
    }
    SIM_LOG(LOG_TYPE_PRINT, 6)
         << "\n";
    SIM_LOG(LOG_TYPE_PRINT, 6)
         << "ME: ";
    {
        resources::BlockPragmaSimulator codasip_bps(m_CheckerLevel);
        {
            SIM_LOG(LOG_TYPE_PRINT, 6) << codasip_disassembler(codasip::Integer<3, false>(6u),MI10r_me_instr.read(),MI7r_me_pc.read());
        }
    }
    SIM_LOG(LOG_TYPE_PRINT, 6)
         << "\n";
    SIM_LOG(LOG_TYPE_PRINT, 6)
         << "WB: ";
    {
        resources::BlockPragmaSimulator codasip_bps(m_CheckerLevel);
        {
            SIM_LOG(LOG_TYPE_PRINT, 6) << codasip_disassembler(codasip::Integer<3, false>(6u),MI10r_wb_instr.read(),MI7r_wb_pc.read());
        }
    }
    SIM_LOG(LOG_TYPE_PRINT, 6)
         << "\n";
}
/**
 * \brief MI12pipe_controlIH15_12pipe_control12pipe_control
 */
void Sim::MI12pipe_controlIH15_12pipe_control12pipe_control()
{
    if (m_CheckerLevel == 0 && m_MultipleActivation[MI12PIPE_CONTROLIH15_12PIPE_CONTROL12PIPE_CONTROL_MULTIACTIVATION]) 
    {
        SIM_LOG(LOG_TYPE_ERROR, 0) << ": pipe_control: multiple activation in the same clock cycle." << std::endl;
    }
    m_MultipleActivation[MI12PIPE_CONTROLIH15_12PIPE_CONTROL12PIPE_CONTROL_MULTIACTIVATION] = true;
    {
        resources::BlockPragmaSimulator codasip_bps(m_CheckerLevel);
        {
            MI14print_pipeline();
        }
    }
    MI17codasip_tmp_var_0IH15_12pipe_control12pipe_control1_12pipe_control.write((codasip::Integer<1, false>)(MI10s_fe_stall.read()));
    if (MI17codasip_tmp_var_0IH15_12pipe_control12pipe_control1_12pipe_control.read())
    {
        SIM_LOG(LOG_TYPE_INFO, 6)
             << "pipeline FE stall\n";
    }
    MI17codasip_tmp_var_2IH15_12pipe_control12pipe_control1_12pipe_control.write((codasip::Integer<1, false>)(MI10s_id_stall.read()));
    if (MI17codasip_tmp_var_2IH15_12pipe_control12pipe_control1_12pipe_control.read())
    {
        MI4pipe_MI2ID_MI5stall();
        SIM_LOG(LOG_TYPE_INFO, 6)
             << "pipeline ID stall\n";
    }
    if (((bool)(!(MI17codasip_tmp_var_2IH15_12pipe_control12pipe_control1_12pipe_control.read()))))
    {
        MI17codasip_tmp_var_3IH15_12pipe_control12pipe_control1_12pipe_control.write((codasip::Integer<1, false>)(MI10s_id_clear.read()));
    }
    if (MI17codasip_tmp_var_3IH15_12pipe_control12pipe_control1_12pipe_control.read())
    {
        MI4pipe_MI2ID_MI5clear();
        SIM_LOG(LOG_TYPE_INFO, 6)
             << "pipeline ID clear\n";
    }
    MI17codasip_tmp_var_4IH15_12pipe_control12pipe_control1_12pipe_control.write((codasip::Integer<1, false>)(MI10s_ex_stall.read()));
    if (MI17codasip_tmp_var_4IH15_12pipe_control12pipe_control1_12pipe_control.read())
    {
        MI4pipe_MI2EX_MI5stall();
        SIM_LOG(LOG_TYPE_INFO, 6)
             << "pipeline EX stall\n";
    }
    if (((bool)(!(MI17codasip_tmp_var_4IH15_12pipe_control12pipe_control1_12pipe_control.read()))))
    {
        MI17codasip_tmp_var_5IH15_12pipe_control12pipe_control1_12pipe_control.write((codasip::Integer<1, false>)(MI10s_ex_clear.read()));
    }
    if (MI17codasip_tmp_var_5IH15_12pipe_control12pipe_control1_12pipe_control.read())
    {
        MI4pipe_MI2EX_MI5clear();
        SIM_LOG(LOG_TYPE_INFO, 6)
             << "pipeline EX clear\n";
    }
    MI17codasip_tmp_var_6IH15_12pipe_control12pipe_control1_12pipe_control.write((codasip::Integer<1, false>)(MI10s_me_stall.read()));
    if (MI17codasip_tmp_var_6IH15_12pipe_control12pipe_control1_12pipe_control.read())
    {
        MI4pipe_MI2ME_MI5stall();
        SIM_LOG(LOG_TYPE_INFO, 6)
             << "pipeline ME stall\n";
    }
    if (((bool)(!(MI17codasip_tmp_var_6IH15_12pipe_control12pipe_control1_12pipe_control.read()))))
    {
        MI17codasip_tmp_var_7IH15_12pipe_control12pipe_control1_12pipe_control.write((codasip::Integer<1, false>)(MI10s_me_clear.read()));
    }
    if (MI17codasip_tmp_var_7IH15_12pipe_control12pipe_control1_12pipe_control.read())
    {
        MI4pipe_MI2ME_MI5clear();
        SIM_LOG(LOG_TYPE_INFO, 6)
             << "pipeline ME clear\n";
    }
    MI17codasip_tmp_var_8IH15_12pipe_control12pipe_control1_12pipe_control.write((codasip::Integer<1, false>)(MI10s_wb_stall.read()));
    if (MI17codasip_tmp_var_8IH15_12pipe_control12pipe_control1_12pipe_control.read())
    {
        MI4pipe_MI2WB_MI5stall();
        SIM_LOG(LOG_TYPE_INFO, 6)
             << "pipeline WB stall\n";
    }
    if (((bool)(!(MI17codasip_tmp_var_8IH15_12pipe_control12pipe_control1_12pipe_control.read()))))
    {
        MI17codasip_tmp_var_9IH15_12pipe_control12pipe_control1_12pipe_control.write((codasip::Integer<1, false>)(MI10s_wb_clear.read()));
    }
    if (MI17codasip_tmp_var_9IH15_12pipe_control12pipe_control1_12pipe_control.read())
    {
        MI4pipe_MI2WB_MI5clear();
        SIM_LOG(LOG_TYPE_INFO, 6)
             << "pipeline WB clear\n";
    }
}
/**
 * \brief MI2exIH4_2ex2ex
 */
void Sim::MI2exIH4_2ex2ex()
{
    if (m_CheckerLevel == 0 && m_MultipleActivation[MI2EXIH4_2EX2EX_MULTIACTIVATION]) 
    {
        SIM_LOG(LOG_TYPE_ERROR, 0) << ": ex: multiple activation in the same clock cycle." << std::endl;
    }
    m_MultipleActivation[MI2EXIH4_2EX2EX_MULTIACTIVATION] = true;
    MI14s_ex_forward_a.write(codasip::Integer<1, false>(0u));
    MI14s_ex_forward_b.write(codasip::Integer<1, false>(0u));
    MI10s_ex_stall.write(MI10s_me_stall.read());
    MI17codasip_tmp_var_0IH4_2ex2ex1_2ex.write(MI14s_ex_forward_a.read());
    if ((bool)(MI17codasip_tmp_var_0IH4_2ex2ex1_2ex.read() == codasip::Integer<2, false>(0u)))
    {
        MI23s_ex_xpr_data_a_forward.write(MI15r_ex_xpr_data_a.read());
    }
    if ((bool)(MI17codasip_tmp_var_0IH4_2ex2ex1_2ex.read() == codasip::Integer<2, false>(1u)))
    {
        MI23s_ex_xpr_data_a_forward.write(MI12r_me_alu_out.read());
    }
    if ((bool)(MI17codasip_tmp_var_0IH4_2ex2ex1_2ex.read() == codasip::Integer<2, false>(2u)))
    {
        MI23s_ex_xpr_data_a_forward.write(MI13r_wb_data_out.read());
    }
    if ((bool)((bool)((((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2ex2ex1_2ex.read() == codasip::Integer<2, false>(0u)))))) && (((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2ex2ex1_2ex.read() == codasip::Integer<2, false>(1u))))))) && (((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2ex2ex1_2ex.read() == codasip::Integer<2, false>(2u))))))))
    {
        MI23s_ex_xpr_data_a_forward.write(MI15r_ex_xpr_data_a.read());
        if (!(bool(0u))) {
            SIM_LOG(LOG_TYPE_FATAL, 0)
                 << "assert failed: c:/users/boskin/codasip/risc_v5/model/ca/pipelines/ca_pipe_ex.codal:67: "
                 << "Default case in forward_a in ex: "
                 << codasip::Integer<2, 0>(MI14s_ex_forward_a.read()).get_dec();
            throw exceptions::BasicError("");
        };
    }
    MI17codasip_tmp_var_1IH4_2ex2ex1_2ex.write(MI14s_ex_forward_b.read());
    if ((bool)(MI17codasip_tmp_var_1IH4_2ex2ex1_2ex.read() == codasip::Integer<2, false>(1u)))
    {
        MI23s_ex_xpr_data_b_forward.write(MI12r_me_alu_out.read());
    }
    if ((bool)(MI17codasip_tmp_var_1IH4_2ex2ex1_2ex.read() == codasip::Integer<2, false>(2u)))
    {
        MI23s_ex_xpr_data_b_forward.write(MI13r_wb_data_out.read());
    }
    if ((bool)((bool)((((bool)(!((bool)(MI17codasip_tmp_var_1IH4_2ex2ex1_2ex.read() == codasip::Integer<2, false>(0u)))))) && (((bool)(!((bool)(MI17codasip_tmp_var_1IH4_2ex2ex1_2ex.read() == codasip::Integer<2, false>(1u))))))) && (((bool)(!((bool)(MI17codasip_tmp_var_1IH4_2ex2ex1_2ex.read() == codasip::Integer<2, false>(2u))))))))
    {
        MI23s_ex_xpr_data_b_forward.write(MI15r_ex_xpr_data_b.read());
        if (!(bool(0u))) {
            SIM_LOG(LOG_TYPE_FATAL, 0)
                 << "assert failed: c:/users/boskin/codasip/risc_v5/model/ca/pipelines/ca_pipe_ex.codal:86: "
                 << "Default case in forward_b in ex: "
                 << codasip::Integer<2, 0>(MI14s_ex_forward_b.read()).get_dec();
            throw exceptions::BasicError("");
        };
    }
    if ((bool)(MI17codasip_tmp_var_1IH4_2ex2ex1_2ex.read() == codasip::Integer<2, false>(0u)))
    {
        MI23s_ex_xpr_data_b_forward.write(MI15r_ex_xpr_data_b.read());
    }
    MI17codasip_tmp_var_2IH4_2ex2ex1_2ex.write(MI14r_ex_src_a_mux.read());
    if ((bool)(MI17codasip_tmp_var_2IH4_2ex2ex1_2ex.read() == codasip::Integer<1, false>(0u)))
    {
        MI13s_ex_alu_in_a.write(MI23s_ex_xpr_data_a_forward.read());
    }
    if ((bool)(MI17codasip_tmp_var_2IH4_2ex2ex1_2ex.read() == codasip::Integer<1, false>(1u)))
    {
        MI13s_ex_alu_in_a.write(MI7r_ex_pc.read());
    }
    MI17codasip_tmp_var_3IH4_2ex2ex1_2ex.write(MI14r_ex_src_b_mux.read());
    if ((bool)(MI17codasip_tmp_var_3IH4_2ex2ex1_2ex.read() == codasip::Integer<2, false>(0u)))
    {
        MI13s_ex_alu_in_b.write(MI23s_ex_xpr_data_b_forward.read());
    }
    if ((bool)(MI17codasip_tmp_var_3IH4_2ex2ex1_2ex.read() == codasip::Integer<2, false>(1u)))
    {
        MI13s_ex_alu_in_b.write(MI8r_ex_imm.read());
    }
    if ((bool)(MI17codasip_tmp_var_3IH4_2ex2ex1_2ex.read() == codasip::Integer<2, false>(2u)))
    {
        MI13s_ex_alu_in_b.write(int32_t(4l));
    }
    if ((bool)((bool)((((bool)(!((bool)(MI17codasip_tmp_var_3IH4_2ex2ex1_2ex.read() == codasip::Integer<2, false>(0u)))))) && (((bool)(!((bool)(MI17codasip_tmp_var_3IH4_2ex2ex1_2ex.read() == codasip::Integer<2, false>(1u))))))) && (((bool)(!((bool)(MI17codasip_tmp_var_3IH4_2ex2ex1_2ex.read() == codasip::Integer<2, false>(2u))))))))
    {
        MI13s_ex_alu_in_b.write(codasip::Integer<1, false>(0u));
        if (!(bool(0u))) {
            SIM_LOG(LOG_TYPE_FATAL, 0)
                 << "assert failed: c:/users/boskin/codasip/risc_v5/model/ca/pipelines/ca_pipe_ex.codal:120: "
                 << "Default case in event ex in src b mux: "
                 << codasip::Integer<2, 0>(MI14r_ex_src_b_mux.read()).get_dec();
            throw exceptions::BasicError("");
        };
    }
    MI17codasip_tmp_var_4IH4_2ex2ex1_2ex.write(MI11r_ex_alu_op.read());
    if ((bool)(MI17codasip_tmp_var_4IH4_2ex2ex1_2ex.read() == codasip::Integer<4, false>(0u)))
    {
        MI12s_ex_alu_out.write((uint32_t)(MI13s_ex_alu_in_a.read() + MI13s_ex_alu_in_b.read()));
    }
    if ((bool)(MI17codasip_tmp_var_4IH4_2ex2ex1_2ex.read() == codasip::Integer<4, false>(1u)))
    {
        MI12s_ex_alu_out.write((uint32_t)(MI13s_ex_alu_in_a.read() - MI13s_ex_alu_in_b.read()));
    }
    if ((bool)(MI17codasip_tmp_var_4IH4_2ex2ex1_2ex.read() == codasip::Integer<4, false>(2u)))
    {
        MI12s_ex_alu_out.write((uint32_t)(MI13s_ex_alu_in_a.read() & MI13s_ex_alu_in_b.read()));
    }
    if ((bool)(MI17codasip_tmp_var_4IH4_2ex2ex1_2ex.read() == codasip::Integer<4, false>(3u)))
    {
        MI12s_ex_alu_out.write((uint32_t)(MI13s_ex_alu_in_a.read() | MI13s_ex_alu_in_b.read()));
    }
    if ((bool)(MI17codasip_tmp_var_4IH4_2ex2ex1_2ex.read() == codasip::Integer<4, false>(4u)))
    {
        MI12s_ex_alu_out.write((uint32_t)(MI13s_ex_alu_in_a.read() ^ MI13s_ex_alu_in_b.read()));
    }
    if ((bool)(MI17codasip_tmp_var_4IH4_2ex2ex1_2ex.read() == codasip::Integer<4, false>(5u)))
    {
        MI12s_ex_alu_out.write(((uint32_t)(~((uint32_t)(MI13s_ex_alu_in_a.read() ^ MI13s_ex_alu_in_b.read())))));
    }
    if ((bool)(MI17codasip_tmp_var_4IH4_2ex2ex1_2ex.read() == codasip::Integer<4, false>(6u)))
    {
        MI12s_ex_alu_out.write((uint32_t)(MI13s_ex_alu_in_a.read() << (codasip::Integer<5, false>)(MI13s_ex_alu_in_b.read())));
    }
    if ((bool)(MI17codasip_tmp_var_4IH4_2ex2ex1_2ex.read() == codasip::Integer<4, false>(7u)))
    {
        MI12s_ex_alu_out.write((uint32_t)((uint32_t)(MI13s_ex_alu_in_a.read()) >> (codasip::Integer<5, false>)(MI13s_ex_alu_in_b.read())));
    }
    if ((bool)(MI17codasip_tmp_var_4IH4_2ex2ex1_2ex.read() == codasip::Integer<4, false>(8u)))
    {
        MI12s_ex_alu_out.write((int32_t)((int32_t)(MI13s_ex_alu_in_a.read()) >> (codasip::Integer<5, false>)(MI13s_ex_alu_in_b.read())));
    }
    if ((bool)(MI17codasip_tmp_var_4IH4_2ex2ex1_2ex.read() == codasip::Integer<4, false>(9u)))
    {
        MI12s_ex_alu_out.write((bool)(MI13s_ex_alu_in_a.read() < MI13s_ex_alu_in_b.read()));
    }
    if ((bool)(MI17codasip_tmp_var_4IH4_2ex2ex1_2ex.read() == codasip::Integer<4, false>(10u)))
    {
        MI12s_ex_alu_out.write((bool)((uint32_t)(MI13s_ex_alu_in_a.read()) < (uint32_t)(MI13s_ex_alu_in_b.read())));
    }
    if ((bool)(MI17codasip_tmp_var_4IH4_2ex2ex1_2ex.read() == codasip::Integer<4, false>(11u)))
    {
        MI12s_ex_alu_out.write((bool)(MI13s_ex_alu_in_a.read() >= MI13s_ex_alu_in_b.read()));
    }
    if ((bool)(MI17codasip_tmp_var_4IH4_2ex2ex1_2ex.read() == codasip::Integer<4, false>(12u)))
    {
        MI12s_ex_alu_out.write((bool)((uint32_t)(MI13s_ex_alu_in_a.read()) >= (uint32_t)(MI13s_ex_alu_in_b.read())));
    }
    if ((bool)((bool)((bool)((bool)((bool)((bool)((bool)((bool)((bool)((bool)((bool)((bool)((((bool)(!((bool)(MI17codasip_tmp_var_4IH4_2ex2ex1_2ex.read() == codasip::Integer<4, false>(0u)))))) && (((bool)(!((bool)(MI17codasip_tmp_var_4IH4_2ex2ex1_2ex.read() == codasip::Integer<4, false>(1u))))))) && (((bool)(!((bool)(MI17codasip_tmp_var_4IH4_2ex2ex1_2ex.read() == codasip::Integer<4, false>(2u))))))) && (((bool)(!((bool)(MI17codasip_tmp_var_4IH4_2ex2ex1_2ex.read() == codasip::Integer<4, false>(3u))))))) && (((bool)(!((bool)(MI17codasip_tmp_var_4IH4_2ex2ex1_2ex.read() == codasip::Integer<4, false>(4u))))))) && (((bool)(!((bool)(MI17codasip_tmp_var_4IH4_2ex2ex1_2ex.read() == codasip::Integer<4, false>(5u))))))) && (((bool)(!((bool)(MI17codasip_tmp_var_4IH4_2ex2ex1_2ex.read() == codasip::Integer<4, false>(6u))))))) && (((bool)(!((bool)(MI17codasip_tmp_var_4IH4_2ex2ex1_2ex.read() == codasip::Integer<4, false>(7u))))))) && (((bool)(!((bool)(MI17codasip_tmp_var_4IH4_2ex2ex1_2ex.read() == codasip::Integer<4, false>(8u))))))) && (((bool)(!((bool)(MI17codasip_tmp_var_4IH4_2ex2ex1_2ex.read() == codasip::Integer<4, false>(9u))))))) && (((bool)(!((bool)(MI17codasip_tmp_var_4IH4_2ex2ex1_2ex.read() == codasip::Integer<4, false>(10u))))))) && (((bool)(!((bool)(MI17codasip_tmp_var_4IH4_2ex2ex1_2ex.read() == codasip::Integer<4, false>(11u))))))) && (((bool)(!((bool)(MI17codasip_tmp_var_4IH4_2ex2ex1_2ex.read() == codasip::Integer<4, false>(12u))))))))
    {
        MI12s_ex_alu_out.write(codasip::Integer<1, false>(0u));
        if (!(bool(0u))) {
            SIM_LOG(LOG_TYPE_FATAL, 0)
                 << "assert failed: c:/users/boskin/codasip/risc_v5/model/ca/pipelines/ca_pipe_ex.codal:179: "
                 << "Default case in event ex in alu op: "
                 << codasip::Integer<4, 0>(MI11r_ex_alu_op.read()).get_dec();
            throw exceptions::BasicError("");
        };
    }
    MI9ex_branchIH11_9ex_branch9ex_branch();
    MI9ex_outputIH11_9ex_output9ex_output();
}
/**
 * \brief MI9ex_outputIH11_9ex_output9ex_output
 */
void Sim::MI9ex_outputIH11_9ex_output9ex_output()
{
    if (m_CheckerLevel == 0 && m_MultipleActivation[MI9EX_OUTPUTIH11_9EX_OUTPUT9EX_OUTPUT_MULTIACTIVATION]) 
    {
        SIM_LOG(LOG_TYPE_ERROR, 0) << ": ex_output: multiple activation in the same clock cycle." << std::endl;
    }
    m_MultipleActivation[MI9EX_OUTPUTIH11_9EX_OUTPUT9EX_OUTPUT_MULTIACTIVATION] = true;
    MI7r_me_pc.write(MI7r_ex_pc.read());
    MI10r_me_instr.write(MI10r_ex_instr.read());
    MI13r_me_xpr_dest.write(MI13r_ex_xpr_dest.read());
    MI17r_me_xpr_dest_src.write(MI17r_ex_xpr_dest_src.read());
    MI11r_me_mem_op.write(MI11r_ex_mem_op.read());
    MI15r_me_alu_data_b.write(MI13s_ex_alu_in_b.read());
    MI12r_me_alu_out.write(MI12s_ex_alu_out.read());
}
/**
 * \brief MI9ex_branchIH11_9ex_branch9ex_branch
 */
void Sim::MI9ex_branchIH11_9ex_branch9ex_branch()
{
    if (m_CheckerLevel == 0 && m_MultipleActivation[MI9EX_BRANCHIH11_9EX_BRANCH9EX_BRANCH_MULTIACTIVATION]) 
    {
        SIM_LOG(LOG_TYPE_ERROR, 0) << ": ex_branch: multiple activation in the same clock cycle." << std::endl;
    }
    m_MultipleActivation[MI9EX_BRANCHIH11_9EX_BRANCH9EX_BRANCH_MULTIACTIVATION] = true;
    MI18s_ex_branch_target.write((uint32_t)(MI7r_ex_pc.read() + MI8r_ex_imm.read()));
    MI9s_ex_zero.write((bool)(MI12s_ex_alu_out.read() == uint32_t(0ul)));
    MI16s_ex_take_branch.write((bool)(((bool)(MI9s_ex_zero.read() && ((bool)(MI12r_ex_jump_op.read() == codasip::Integer<2, false>(2u))))) || ((bool)(MI12r_ex_jump_op.read() == codasip::Integer<2, false>(1u)))));
}
/**
 * \brief MI2feIH4_2fe2fe
 */
void Sim::MI2feIH4_2fe2fe()
{
    if (m_CheckerLevel == 0 && m_MultipleActivation[MI2FEIH4_2FE2FE_MULTIACTIVATION]) 
    {
        SIM_LOG(LOG_TYPE_ERROR, 0) << ": fe: multiple activation in the same clock cycle." << std::endl;
    }
    m_MultipleActivation[MI2FEIH4_2FE2FE_MULTIACTIVATION] = true;
    MI10s_fe_stall.write(MI10s_id_stall.read());
    MI7if_code.request(int32_t(1l),MI4r_pc.read(),int32_t(0l),int32_t(4l));
    MI7if_code.finish(int32_t(1l),MI10s_fe_instr);
    MI7r_id_pc.write(MI4r_pc.read());
    MI17codasip_tmp_var_0IH4_2fe2fe1_2fe.write((codasip::Integer<1, false>)(MI16s_ex_take_branch.read()));
    if (MI17codasip_tmp_var_0IH4_2fe2fe1_2fe.read())
    {
        MI4r_pc.write(MI18s_ex_branch_target.read());
    }
    if (((bool)(!(MI17codasip_tmp_var_0IH4_2fe2fe1_2fe.read()))))
    {
        MI4r_pc.write((uint32_t)(MI4r_pc.read() + uint32_t(4ul)));
    }
    MI12fe_clear_ctlIH15_12fe_clear_ctl12fe_clear_ctl();
    MI9fe_outputIH11_9fe_output9fe_output();
}
/**
 * \brief MI12fe_clear_ctlIH15_12fe_clear_ctl12fe_clear_ctl
 */
void Sim::MI12fe_clear_ctlIH15_12fe_clear_ctl12fe_clear_ctl()
{
    if (m_CheckerLevel == 0 && m_MultipleActivation[MI12FE_CLEAR_CTLIH15_12FE_CLEAR_CTL12FE_CLEAR_CTL_MULTIACTIVATION]) 
    {
        SIM_LOG(LOG_TYPE_ERROR, 0) << ": fe_clear_ctl: multiple activation in the same clock cycle." << std::endl;
    }
    m_MultipleActivation[MI12FE_CLEAR_CTLIH15_12FE_CLEAR_CTL12FE_CLEAR_CTL_MULTIACTIVATION] = true;
    MI10s_id_clear.write(MI16s_ex_take_branch.read());
    MI10s_ex_clear.write(MI16s_ex_take_branch.read());
    MI10s_me_clear.write(MI10s_ex_stall.read());
    MI10s_wb_clear.write(MI10s_me_stall.read());
}
/**
 * \brief MI2idIH4_2id2id
 */
void Sim::MI2idIH4_2id2id()
{
    if (m_CheckerLevel == 0 && m_MultipleActivation[MI2IDIH4_2ID2ID_MULTIACTIVATION]) 
    {
        SIM_LOG(LOG_TYPE_ERROR, 0) << ": id: multiple activation in the same clock cycle." << std::endl;
    }
    m_MultipleActivation[MI2IDIH4_2ID2ID_MULTIACTIVATION] = true;
    MI10s_id_stall.write(MI10s_ex_stall.read());
    MI11s_id_opcode.write(((codasip::Integer<7, false>)((uint32_t)(MI10r_id_instr.read() >> int32_t(0l)))));
    MI17s_id_rtype_opcode.write(((codasip::Integer<17, false>)(((codasip::Integer<17, false>)((codasip::Integer<17, false>)(((codasip::Integer<10, false>)(((codasip::Integer<10, false>)((codasip::Integer<10, false>)(((codasip::Integer<7, false>)((uint32_t)(MI10r_id_instr.read() >> int32_t(25l))))) << int32_t(3l))) | (codasip::Integer<10, false>)(((codasip::Integer<3, false>)((uint32_t)(MI10r_id_instr.read() >> int32_t(12l)))))))) << int32_t(7l))) | (codasip::Integer<17, false>)(((codasip::Integer<7, false>)((uint32_t)(MI10r_id_instr.read() >> int32_t(0l))))))));
    MI17codasip_tmp_var_0IH4_2id2id1_2id.write(MI11s_id_opcode.read());
    if ((bool)((bool)((bool)((bool)((bool)((bool)((bool)((bool)((bool)((((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2id2id1_2id.read() == codasip::Integer<7, false>(19u)))))) && (((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2id2id1_2id.read() == codasip::Integer<7, false>(51u))))))) && (((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2id2id1_2id.read() == codasip::Integer<7, false>(99u))))))) && (((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2id2id1_2id.read() == codasip::Integer<7, false>(3u))))))) && (((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2id2id1_2id.read() == codasip::Integer<7, false>(35u))))))) && (((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2id2id1_2id.read() == codasip::Integer<7, false>(103u))))))) && (((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2id2id1_2id.read() == codasip::Integer<7, false>(31u))))))) && (((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2id2id1_2id.read() == codasip::Integer<7, false>(63u))))))) && (((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2id2id1_2id.read() == codasip::Integer<7, false>(95u))))))) && (((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2id2id1_2id.read() == codasip::Integer<7, false>(111u))))))))
    {
        MI20s_id_extended_opcode.write(codasip::Integer<17, false>(51u));
    }
    if ((bool)(MI17codasip_tmp_var_0IH4_2id2id1_2id.read() == codasip::Integer<7, false>(35u)))
    {
        MI20s_id_extended_opcode.write(((uint32_t)((uint32_t)(MI17s_id_rtype_opcode.read()) & uint32_t(1023ul))));
    }
    if ((bool)(MI17codasip_tmp_var_0IH4_2id2id1_2id.read() == codasip::Integer<7, false>(3u)))
    {
        MI20s_id_extended_opcode.write(((uint32_t)((uint32_t)(MI17s_id_rtype_opcode.read()) & uint32_t(1023ul))));
    }
    if ((bool)(MI17codasip_tmp_var_0IH4_2id2id1_2id.read() == codasip::Integer<7, false>(99u)))
    {
        MI20s_id_extended_opcode.write(((uint32_t)((uint32_t)(MI17s_id_rtype_opcode.read()) & uint32_t(1023ul))));
    }
    if ((bool)(MI17codasip_tmp_var_0IH4_2id2id1_2id.read() == codasip::Integer<7, false>(95u)))
    {
        MI20s_id_extended_opcode.write(((uint32_t)((uint32_t)(MI17s_id_rtype_opcode.read()) & uint32_t(127ul))));
    }
    if ((bool)(MI17codasip_tmp_var_0IH4_2id2id1_2id.read() == codasip::Integer<7, false>(63u)))
    {
        MI20s_id_extended_opcode.write(((uint32_t)((uint32_t)(MI17s_id_rtype_opcode.read()) & uint32_t(127ul))));
    }
    if ((bool)(MI17codasip_tmp_var_0IH4_2id2id1_2id.read() == codasip::Integer<7, false>(31u)))
    {
        MI20s_id_extended_opcode.write(((uint32_t)((uint32_t)(MI17s_id_rtype_opcode.read()) & uint32_t(127ul))));
    }
    if ((bool)(MI17codasip_tmp_var_0IH4_2id2id1_2id.read() == codasip::Integer<7, false>(103u)))
    {
        MI20s_id_extended_opcode.write(((uint32_t)((uint32_t)(MI17s_id_rtype_opcode.read()) & uint32_t(1023ul))));
    }
    if ((bool)(MI17codasip_tmp_var_0IH4_2id2id1_2id.read() == codasip::Integer<7, false>(111u)))
    {
        MI20s_id_extended_opcode.write(((uint32_t)((uint32_t)(MI17s_id_rtype_opcode.read()) & uint32_t(127ul))));
    }
    if ((bool)(MI17codasip_tmp_var_0IH4_2id2id1_2id.read() == codasip::Integer<7, false>(51u)))
    {
        MI17codasip_tmp_var_1IH4_2id2id1_2id.write((bool)((bool)((bool)((bool)(((codasip::Integer<3, false>)((codasip::Integer<17, false>)(MI17s_id_rtype_opcode.read() >> int32_t(7l)))) == codasip::Integer<3, false>(1u)) || (bool)(((codasip::Integer<3, false>)((codasip::Integer<17, false>)(MI17s_id_rtype_opcode.read() >> int32_t(7l)))) == codasip::Integer<3, false>(5u))) || (bool)(((codasip::Integer<3, false>)((codasip::Integer<17, false>)(MI17s_id_rtype_opcode.read() >> int32_t(7l)))) == codasip::Integer<3, false>(5u)))));
    }
    if ((bool)(MI17codasip_tmp_var_0IH4_2id2id1_2id.read() == codasip::Integer<7, false>(19u)))
    {
        MI17codasip_tmp_var_1IH4_2id2id1_2id.write((bool)((bool)((bool)((bool)(((codasip::Integer<3, false>)((codasip::Integer<17, false>)(MI17s_id_rtype_opcode.read() >> int32_t(7l)))) == codasip::Integer<3, false>(1u)) || (bool)(((codasip::Integer<3, false>)((codasip::Integer<17, false>)(MI17s_id_rtype_opcode.read() >> int32_t(7l)))) == codasip::Integer<3, false>(5u))) || (bool)(((codasip::Integer<3, false>)((codasip::Integer<17, false>)(MI17s_id_rtype_opcode.read() >> int32_t(7l)))) == codasip::Integer<3, false>(5u)))));
    }
    if (MI17codasip_tmp_var_1IH4_2id2id1_2id.read())
    {
        MI20s_id_extended_opcode.write(((uint32_t)((uint32_t)(MI17s_id_rtype_opcode.read()) & uint32_t(1023ul))));
    }
    if ((bool)((((bool)(!(MI17codasip_tmp_var_1IH4_2id2id1_2id.read())))) && ((bool)(MI17codasip_tmp_var_0IH4_2id2id1_2id.read() == codasip::Integer<7, false>(51u)))))
    {
        MI20s_id_extended_opcode.write(((uint32_t)((uint32_t)(MI17s_id_rtype_opcode.read()) & uint32_t(131071ul))));
    }
    if (MI17codasip_tmp_var_1IH4_2id2id1_2id.read())
    {
        MI20s_id_extended_opcode.write(((uint32_t)((uint32_t)(MI17s_id_rtype_opcode.read()) & uint32_t(1023ul))));
    }
    if ((bool)((((bool)(!(MI17codasip_tmp_var_1IH4_2id2id1_2id.read())))) && ((bool)(MI17codasip_tmp_var_0IH4_2id2id1_2id.read() == codasip::Integer<7, false>(19u)))))
    {
        MI20s_id_extended_opcode.write(((uint32_t)((uint32_t)(MI17s_id_rtype_opcode.read()) & uint32_t(131071ul))));
    }
    MI12s_id_shamnt5.write(((codasip::Integer<5, false>)((uint32_t)(MI10r_id_instr.read() >> int32_t(20l)))));
    MI17s_id_itype_simm12.write(((codasip::Integer<12, false>)((uint32_t)(MI10r_id_instr.read() >> int32_t(20l)))));
    MI17s_id_stype_simm12.write(((codasip::Integer<12, false>)(((codasip::Integer<12, false>)((codasip::Integer<12, false>)(((codasip::Integer<7, false>)((uint32_t)(MI10r_id_instr.read() >> int32_t(25l))))) << int32_t(5l))) | (codasip::Integer<12, false>)(((codasip::Integer<5, false>)((uint32_t)(MI10r_id_instr.read() >> int32_t(7l))))))));
    MI17s_id_btype_simm12.write(((codasip::Integer<12, false>)(((codasip::Integer<12, false>)((codasip::Integer<12, false>)(((uint8_t)(((uint8_t)((uint8_t)(((codasip::Integer<2, false>)(((codasip::Integer<2, false>)((codasip::Integer<2, false>)(((codasip::Integer<1, false>)((uint32_t)(MI10r_id_instr.read() >> int32_t(31l))))) << int32_t(1l))) | (codasip::Integer<2, false>)(((codasip::Integer<1, false>)((uint32_t)(MI10r_id_instr.read() >> int32_t(7l)))))))) << int32_t(6l))) | (uint8_t)(((codasip::Integer<6, false>)((uint32_t)(MI10r_id_instr.read() >> int32_t(25l)))))))) << int32_t(4l))) | (codasip::Integer<12, false>)(((codasip::Integer<4, false>)((uint32_t)(MI10r_id_instr.read() >> int32_t(8l))))))));
    MI17s_id_utype_uimm20.write(((codasip::Integer<20, false>)((uint32_t)(MI10r_id_instr.read() >> int32_t(12l)))));
    MI10s_id_xpr_a.write(((codasip::Integer<5, false>)((uint32_t)(MI10r_id_instr.read() >> int32_t(15l)))));
    MI10s_id_xpr_b.write(((codasip::Integer<5, false>)((uint32_t)(MI10r_id_instr.read() >> int32_t(20l)))));
    MI13s_id_xpr_dest.write(((codasip::Integer<5, false>)((uint32_t)(MI10r_id_instr.read() >> int32_t(7l)))));
    MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw(MI20s_id_extended_opcode.read());
    MI9id_outputIH11_9id_output9id_output();
}
/**
 * \brief MI9id_outputIH11_9id_output9id_output
 */
void Sim::MI9id_outputIH11_9id_output9id_output()
{
    if (m_CheckerLevel == 0 && m_MultipleActivation[MI9ID_OUTPUTIH11_9ID_OUTPUT9ID_OUTPUT_MULTIACTIVATION]) 
    {
        SIM_LOG(LOG_TYPE_ERROR, 0) << ": id_output: multiple activation in the same clock cycle." << std::endl;
    }
    m_MultipleActivation[MI9ID_OUTPUTIH11_9ID_OUTPUT9ID_OUTPUT_MULTIACTIVATION] = true;
    MI7r_ex_pc.write(MI7r_id_pc.read());
    MI10r_ex_instr.write(MI10r_id_instr.read());
    MI14r_ex_src_b_mux.write(MI14s_id_src_b_mux.read());
    MI13r_ex_xpr_dest.write(MI13s_id_xpr_dest.read());
    MI17r_ex_xpr_dest_src.write(MI17s_id_xpr_dest_src.read());
    MI11r_ex_alu_op.write(MI11s_id_alu_op.read());
    MI11r_ex_mem_op.write(MI11s_id_mem_op.read());
    MI12r_ex_jump_op.write(MI12s_id_jump_op.read());
    MI15r_ex_xpr_data_a.write((((bool)(MI13r_wb_xpr_dest.read() == MI10s_id_xpr_a.read())) ? (uint32_t)(MI13r_wb_data_out.read()) : (uint32_t)(MI6rf_xpr.read(MI10s_id_xpr_a.read()))));
    MI15r_ex_xpr_data_b.write((((bool)(MI13r_wb_xpr_dest.read() == MI10s_id_xpr_b.read())) ? (uint32_t)(MI13r_wb_data_out.read()) : (uint32_t)(MI6rf_xpr.read(MI10s_id_xpr_b.read()))));
    MI8r_ex_imm.write(MI8s_id_imm.read());
}
/**
 * \brief MI2meIH4_2me2me
 */
void Sim::MI2meIH4_2me2me()
{
    if (m_CheckerLevel == 0 && m_MultipleActivation[MI2MEIH4_2ME2ME_MULTIACTIVATION]) 
    {
        SIM_LOG(LOG_TYPE_ERROR, 0) << ": me: multiple activation in the same clock cycle." << std::endl;
    }
    m_MultipleActivation[MI2MEIH4_2ME2ME_MULTIACTIVATION] = true;
    MI10s_me_stall.write(MI10s_wb_stall.read());
    MI17codasip_tmp_var_0IH4_2me2me1_2me.write(MI11r_me_mem_op.read());
    if ((bool)((bool)((bool)((bool)((bool)((bool)((bool)((bool)((((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2me2me1_2me.read() == codasip::Integer<4, false>(0u)))))) && (((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2me2me1_2me.read() == codasip::Integer<4, false>(1u))))))) && (((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2me2me1_2me.read() == codasip::Integer<4, false>(2u))))))) && (((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2me2me1_2me.read() == codasip::Integer<4, false>(3u))))))) && (((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2me2me1_2me.read() == codasip::Integer<4, false>(4u))))))) && (((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2me2me1_2me.read() == codasip::Integer<4, false>(5u))))))) && (((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2me2me1_2me.read() == codasip::Integer<4, false>(6u))))))) && (((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2me2me1_2me.read() == codasip::Integer<4, false>(7u))))))) && (((bool)(!((bool)(MI17codasip_tmp_var_0IH4_2me2me1_2me.read() == codasip::Integer<4, false>(8u))))))))
    {
        MI11request_cmdIH4_2me2me1_2meB0.write(int32_t(0l));
        MI10byte_countIH4_2me2me1_2meB0.write(int32_t(0l));
        if (!(bool(0u))) {
            SIM_LOG(LOG_TYPE_FATAL, 0)
                 << "assert failed: c:/users/boskin/codasip/risc_v5/model/ca/pipelines/ca_pipe_me.codal:55: "
                 << "Default case in event me in mem op: "
                 << codasip::Integer<4, 0>(MI11r_me_mem_op.read()).get_dec();
            throw exceptions::BasicError("");
        };
    }
    if ((bool)(MI17codasip_tmp_var_0IH4_2me2me1_2me.read() == codasip::Integer<4, false>(5u)))
    {
        MI11request_cmdIH4_2me2me1_2meB0.write(int32_t(1l));
        MI10byte_countIH4_2me2me1_2meB0.write(int32_t(2l));
    }
    if ((bool)(MI17codasip_tmp_var_0IH4_2me2me1_2me.read() == codasip::Integer<4, false>(7u)))
    {
        MI11request_cmdIH4_2me2me1_2meB0.write(int32_t(1l));
        MI10byte_countIH4_2me2me1_2meB0.write(int32_t(1l));
    }
    if ((bool)(MI17codasip_tmp_var_0IH4_2me2me1_2me.read() == codasip::Integer<4, false>(0u)))
    {
        MI11request_cmdIH4_2me2me1_2meB0.write(int32_t(0l));
        MI10byte_countIH4_2me2me1_2meB0.write(int32_t(0l));
    }
    if ((bool)(MI17codasip_tmp_var_0IH4_2me2me1_2me.read() == codasip::Integer<4, false>(1u)))
    {
        MI11request_cmdIH4_2me2me1_2meB0.write(int32_t(2l));
        MI10byte_countIH4_2me2me1_2meB0.write(int32_t(4l));
    }
    if ((bool)(MI17codasip_tmp_var_0IH4_2me2me1_2me.read() == codasip::Integer<4, false>(2u)))
    {
        MI11request_cmdIH4_2me2me1_2meB0.write(int32_t(2l));
        MI10byte_countIH4_2me2me1_2meB0.write(int32_t(2l));
    }
    if ((bool)(MI17codasip_tmp_var_0IH4_2me2me1_2me.read() == codasip::Integer<4, false>(3u)))
    {
        MI11request_cmdIH4_2me2me1_2meB0.write(int32_t(2l));
        MI10byte_countIH4_2me2me1_2meB0.write(int32_t(1l));
    }
    if ((bool)(MI17codasip_tmp_var_0IH4_2me2me1_2me.read() == codasip::Integer<4, false>(4u)))
    {
        MI11request_cmdIH4_2me2me1_2meB0.write(int32_t(1l));
        MI10byte_countIH4_2me2me1_2meB0.write(int32_t(4l));
    }
    if ((bool)(MI17codasip_tmp_var_0IH4_2me2me1_2me.read() == codasip::Integer<4, false>(6u)))
    {
        MI11request_cmdIH4_2me2me1_2meB0.write(int32_t(1l));
        MI10byte_countIH4_2me2me1_2meB0.write(int32_t(2l));
    }
    if ((bool)(MI17codasip_tmp_var_0IH4_2me2me1_2me.read() == codasip::Integer<4, false>(8u)))
    {
        MI11request_cmdIH4_2me2me1_2meB0.write(int32_t(1l));
        MI10byte_countIH4_2me2me1_2meB0.write(int32_t(1l));
    }
    MI17codasip_tmp_var_1IH4_2me2me1_2me.write((bool)((bool)(MI11request_cmdIH4_2me2me1_2meB0.read() == codasip::Integer<3, false>(1u))));
    if (((bool)(!(MI17codasip_tmp_var_1IH4_2me2me1_2me.read()))))
    {
        MI17codasip_tmp_var_4IH4_2me2me1_2me.write((bool)((bool)(MI11request_cmdIH4_2me2me1_2meB0.read() == codasip::Integer<3, false>(2u))));
    }
    if (MI17codasip_tmp_var_1IH4_2me2me1_2me.read())
    {
        MI7if_data.request(int32_t(1l),MI12r_me_alu_out.read(),int32_t(0l),MI10byte_countIH4_2me2me1_2meB0.read());
        MI7if_data.finish(int32_t(1l),MI8data_memIH4_2me2me1_2meB0);
        MI17codasip_tmp_var_2IH4_2me2me1_2me.write((bool)((bool)(MI11request_cmdIH4_2me2me1_2meB0.read() == codasip::Integer<3, false>(5u))));
    }
    if (MI17codasip_tmp_var_2IH4_2me2me1_2me.read())
    {
        MI13s_me_mem_read.write((int32_t)((int16_t)(MI8data_memIH4_2me2me1_2meB0.read())));
    }
    if ((bool)((((bool)(!(MI17codasip_tmp_var_2IH4_2me2me1_2me.read())))) && (MI17codasip_tmp_var_1IH4_2me2me1_2me.read())))
    {
        MI17codasip_tmp_var_3IH4_2me2me1_2me.write((bool)((bool)(MI11request_cmdIH4_2me2me1_2meB0.read() == codasip::Integer<3, false>(7u))));
    }
    if (MI17codasip_tmp_var_4IH4_2me2me1_2me.read())
    {
        MI7if_data.request(int32_t(2l),MI12r_me_alu_out.read(),int32_t(0l),MI10byte_countIH4_2me2me1_2meB0.read());
        MI7if_data.finish(int32_t(2l),MI15r_me_alu_data_b);
        MI13s_me_mem_read.write(int32_t(0l));
    }
    if ((bool)((((bool)(!(MI17codasip_tmp_var_4IH4_2me2me1_2me.read())))) && (((bool)(!(MI17codasip_tmp_var_1IH4_2me2me1_2me.read()))))))
    {
        MI13s_me_mem_read.write(int32_t(0l));
    }
    if (MI17codasip_tmp_var_3IH4_2me2me1_2me.read())
    {
        MI13s_me_mem_read.write((int32_t)((int8_t)(MI8data_memIH4_2me2me1_2meB0.read())));
    }
    if ((bool)(((bool)((((bool)(!(MI17codasip_tmp_var_3IH4_2me2me1_2me.read())))) && (((bool)(!(MI17codasip_tmp_var_2IH4_2me2me1_2me.read())))))) && (MI17codasip_tmp_var_1IH4_2me2me1_2me.read())))
    {
        MI13s_me_mem_read.write(MI8data_memIH4_2me2me1_2meB0.read());
    }
    MI17codasip_tmp_var_5IH4_2me2me1_2me.write(MI17r_me_xpr_dest_src.read());
    if ((bool)(MI17codasip_tmp_var_5IH4_2me2me1_2me.read() == codasip::Integer<2, false>(0u)))
    {
        MI13s_me_data_out.write(int32_t(0l));
    }
    if ((bool)(MI17codasip_tmp_var_5IH4_2me2me1_2me.read() == codasip::Integer<2, false>(1u)))
    {
        MI13s_me_data_out.write(MI12r_me_alu_out.read());
    }
    if ((bool)(MI17codasip_tmp_var_5IH4_2me2me1_2me.read() == codasip::Integer<2, false>(2u)))
    {
        MI13s_me_data_out.write(MI13s_me_mem_read.read());
    }
    if ((bool)((bool)((((bool)(!((bool)(MI17codasip_tmp_var_5IH4_2me2me1_2me.read() == codasip::Integer<2, false>(0u)))))) && (((bool)(!((bool)(MI17codasip_tmp_var_5IH4_2me2me1_2me.read() == codasip::Integer<2, false>(1u))))))) && (((bool)(!((bool)(MI17codasip_tmp_var_5IH4_2me2me1_2me.read() == codasip::Integer<2, false>(2u))))))))
    {
        MI13s_me_data_out.write(int32_t(0l));
        if (!(bool(0u))) {
            SIM_LOG(LOG_TYPE_FATAL, 0)
                 << "assert failed: c:/users/boskin/codasip/risc_v5/model/ca/pipelines/ca_pipe_me.codal:92: "
                 << "Default case in xpr_dest_src in me: "
                 << codasip::Integer<2, 0>(MI17r_me_xpr_dest_src.read()).get_dec();
            throw exceptions::BasicError("");
        };
    }
    MI9me_outputIH11_9me_output9me_output();
}
/**
 * \brief MI9me_outputIH11_9me_output9me_output
 */
void Sim::MI9me_outputIH11_9me_output9me_output()
{
    if (m_CheckerLevel == 0 && m_MultipleActivation[MI9ME_OUTPUTIH11_9ME_OUTPUT9ME_OUTPUT_MULTIACTIVATION]) 
    {
        SIM_LOG(LOG_TYPE_ERROR, 0) << ": me_output: multiple activation in the same clock cycle." << std::endl;
    }
    m_MultipleActivation[MI9ME_OUTPUTIH11_9ME_OUTPUT9ME_OUTPUT_MULTIACTIVATION] = true;
    MI7r_wb_pc.write(MI7r_me_pc.read());
    MI10r_wb_instr.write(MI10r_me_instr.read());
    MI13r_wb_xpr_dest.write(MI13r_me_xpr_dest.read());
    MI17r_wb_xpr_dest_src.write(MI17r_me_xpr_dest_src.read());
    MI13r_wb_data_out.write(MI13s_me_data_out.read());
}
/**
 * \brief MI2wbIH4_2wb2wb
 */
void Sim::MI2wbIH4_2wb2wb()
{
    if (m_CheckerLevel == 0 && m_MultipleActivation[MI2WBIH4_2WB2WB_MULTIACTIVATION]) 
    {
        SIM_LOG(LOG_TYPE_ERROR, 0) << ": wb: multiple activation in the same clock cycle." << std::endl;
    }
    m_MultipleActivation[MI2WBIH4_2WB2WB_MULTIACTIVATION] = true;
    MI10s_wb_stall.write(int32_t(0l));
    MI17codasip_tmp_var_0IH4_2wb2wb1_2wb.write((bool)((bool)((bool)(MI17r_wb_xpr_dest_src.read() != codasip::Integer<2, false>(0u)) && (bool)(MI13r_wb_xpr_dest.read() != codasip::Integer<5, false>(0u)))));
    if (MI17codasip_tmp_var_0IH4_2wb2wb1_2wb.read())
    {
        MI6rf_xpr.write(MI13r_wb_data_out.read(),MI13r_wb_xpr_dest.read());
        SIM_LOG(LOG_TYPE_PRINT, 2)
             << "Wrote "
             <<  std::dec << (MI13r_wb_data_out.read()) << std::dec
             << " to x"
             << codasip::Integer<5, 0>(MI13r_wb_xpr_dest.read()).get_dec();
    }
}
MaxInt Sim::ResourceRead(const Uid resource, const Address addr)
{
    switch (resource) {
    case 2:
        return MI10s_fe_stall.dread();
    case 3:
        return MI10s_fe_clear.dread();
    case 4:
        return MI10s_fe_instr.dread();
    case 5:
        return MI10s_id_stall.dread();
    case 6:
        return MI10s_id_clear.dread();
    case 7:
        return MI7r_id_pc.dread();
    case 8:
        return MI10r_id_instr.dread();
    case 9:
        return MI11s_id_opcode.dread();
    case 10:
        return MI20s_id_extended_opcode.dread();
    case 11:
        return MI17s_id_rtype_opcode.dread();
    case 12:
        return MI17s_id_itype_opcode.dread();
    case 13:
        return MI17s_id_stype_opcode.dread();
    case 14:
        return MI17s_id_utype_opcode.dread();
    case 15:
        return MI10s_id_xpr_a.dread();
    case 16:
        return MI10s_id_xpr_b.dread();
    case 17:
        return MI13s_id_xpr_dest.dread();
    case 18:
        return MI12s_id_shamnt5.dread();
    case 19:
        return MI17s_id_itype_simm12.dread();
    case 20:
        return MI17s_id_stype_simm12.dread();
    case 21:
        return MI17s_id_btype_simm12.dread();
    case 22:
        return MI17s_id_jtype_simm20.dread();
    case 23:
        return MI17s_id_utype_uimm20.dread();
    case 24:
        return MI8s_id_imm.dread();
    case 25:
        return MI8s_id_csr.dread();
    case 26:
        return MI9s_id_zimm.dread();
    case 27:
        return MI14s_id_src_a_mux.dread();
    case 28:
        return MI14s_id_src_b_mux.dread();
    case 29:
        return MI11s_id_alu_op.dread();
    case 30:
        return MI11s_id_mem_op.dread();
    case 31:
        return MI12s_id_jump_op.dread();
    case 32:
        return MI17s_id_xpr_dest_src.dread();
    case 33:
        return MI10s_ex_stall.dread();
    case 34:
        return MI10s_ex_clear.dread();
    case 35:
        return MI7r_ex_pc.dread();
    case 36:
        return MI10r_ex_instr.dread();
    case 37:
        return MI13r_ex_xpr_dest.dread();
    case 38:
        return MI17r_ex_xpr_dest_src.dread();
    case 39:
        return MI11r_ex_alu_op.dread();
    case 40:
        return MI11r_ex_mem_op.dread();
    case 41:
        return MI12r_ex_jump_op.dread();
    case 42:
        return MI10r_ex_xpr_a.dread();
    case 43:
        return MI10r_ex_xpr_b.dread();
    case 44:
        return MI14r_ex_src_a_mux.dread();
    case 45:
        return MI14r_ex_src_b_mux.dread();
    case 46:
        return MI14s_ex_forward_a.dread();
    case 47:
        return MI23s_ex_xpr_data_a_forward.dread();
    case 48:
        return MI13s_ex_alu_in_a.dread();
    case 49:
        return MI14s_ex_forward_b.dread();
    case 50:
        return MI23s_ex_xpr_data_b_forward.dread();
    case 51:
        return MI13s_ex_alu_in_b.dread();
    case 52:
        return MI15r_ex_xpr_data_a.dread();
    case 53:
        return MI15r_ex_xpr_data_b.dread();
    case 54:
        return MI8r_ex_imm.dread();
    case 55:
        return MI12s_ex_alu_out.dread();
    case 56:
        return MI18s_ex_branch_target.dread();
    case 57:
        return MI9s_ex_zero.dread();
    case 58:
        return MI16s_ex_take_branch.dread();
    case 59:
        return MI10s_me_stall.dread();
    case 60:
        return MI10s_me_clear.dread();
    case 61:
        return MI7r_me_pc.dread();
    case 62:
        return MI10r_me_instr.dread();
    case 63:
        return MI15r_me_alu_data_b.dread();
    case 64:
        return MI13r_me_xpr_dest.dread();
    case 65:
        return MI17r_me_xpr_dest_src.dread();
    case 66:
        return MI11r_me_mem_op.dread();
    case 67:
        return MI12r_me_alu_out.dread();
    case 68:
        return MI17s_me_mem_read_raw.dread();
    case 69:
        return MI13s_me_mem_read.dread();
    case 70:
        return MI13s_me_data_out.dread();
    case 71:
        return MI10s_wb_stall.dread();
    case 72:
        return MI10s_wb_clear.dread();
    case 73:
        return MI7r_wb_pc.dread();
    case 74:
        return MI10r_wb_instr.dread();
    case 75:
        return MI13r_wb_xpr_dest.dread();
    case 76:
        return MI17r_wb_xpr_dest_src.dread();
    case 77:
        return MI13r_wb_data_out.dread();
    case 78:
        return MI12r_wb_alu_out.dread();
    case 79:
        return MI13r_wb_mem_read.dread();
    case 80:
        return MI4r_pc.dread();
    case 81:
        return MI6rf_xpr.dread(addr);
    case 83:
        return MI6as_all_program_dread(addr);
    case 84:
        return MI6as_all_data_dread(addr);
    case 82:
        return MI6as_all_dread(addr);
    case 85:
        return MI7if_code.dread(addr);
    case 86:
        return MI7if_data.dread(addr);
    case 88:
        return MI11INSTRUCTIONIH4_2id2id8_6isa_hw6isa_hw1_6isa_hw.dread();
    case 90:
        return MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_8i_hw_alu.dread();
    case 92:
        return MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_10i_hw_alu_i.dread();
    case 94:
        return MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_10i_hw_shift.dread();
    case 96:
        return MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_11i_hw_branch.dread();
    case 98:
        return MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_9i_hw_load.dread();
    case 100:
        return MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_10i_hw_store.dread();
    case 102:
        return MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_14i_hw_upper_imm.dread();
    case 103:
        return MI17codasip_tmp_var_0IH15_12pipe_control12pipe_control1_12pipe_control.dread();
    case 104:
        return MI17codasip_tmp_var_2IH15_12pipe_control12pipe_control1_12pipe_control.dread();
    case 105:
        return MI17codasip_tmp_var_4IH15_12pipe_control12pipe_control1_12pipe_control.dread();
    case 106:
        return MI17codasip_tmp_var_6IH15_12pipe_control12pipe_control1_12pipe_control.dread();
    case 107:
        return MI17codasip_tmp_var_8IH15_12pipe_control12pipe_control1_12pipe_control.dread();
    case 108:
        return MI17codasip_tmp_var_1IH15_12pipe_control12pipe_control1_12pipe_control.dread();
    case 109:
        return MI17codasip_tmp_var_3IH15_12pipe_control12pipe_control1_12pipe_control.dread();
    case 110:
        return MI17codasip_tmp_var_5IH15_12pipe_control12pipe_control1_12pipe_control.dread();
    case 111:
        return MI17codasip_tmp_var_7IH15_12pipe_control12pipe_control1_12pipe_control.dread();
    case 112:
        return MI17codasip_tmp_var_9IH15_12pipe_control12pipe_control1_12pipe_control.dread();
    case 113:
        return MI17codasip_tmp_var_0IH4_2ex2ex1_2ex.dread();
    case 114:
        return MI17codasip_tmp_var_1IH4_2ex2ex1_2ex.dread();
    case 115:
        return MI17codasip_tmp_var_2IH4_2ex2ex1_2ex.dread();
    case 116:
        return MI17codasip_tmp_var_3IH4_2ex2ex1_2ex.dread();
    case 117:
        return MI17codasip_tmp_var_4IH4_2ex2ex1_2ex.dread();
    case 118:
        return MI17codasip_tmp_var_0IH4_2fe2fe1_2fe.dread();
    case 119:
        return MI17codasip_tmp_var_0IH4_2id2id1_2id.dread();
    case 120:
        return MI17codasip_tmp_var_1IH4_2id2id1_2id.dread();
    case 121:
        return MI8data_memIH4_2me2me1_2meB0.dread();
    case 122:
        return MI11request_cmdIH4_2me2me1_2meB0.dread();
    case 123:
        return MI10byte_countIH4_2me2me1_2meB0.dread();
    case 124:
        return MI17codasip_tmp_var_0IH4_2me2me1_2me.dread();
    case 125:
        return MI17codasip_tmp_var_1IH4_2me2me1_2me.dread();
    case 126:
        return MI17codasip_tmp_var_5IH4_2me2me1_2me.dread();
    case 127:
        return MI17codasip_tmp_var_2IH4_2me2me1_2me.dread();
    case 128:
        return MI17codasip_tmp_var_3IH4_2me2me1_2me.dread();
    case 129:
        return MI17codasip_tmp_var_4IH4_2me2me1_2me.dread();
    case 130:
        return MI17codasip_tmp_var_0IH4_2wb2wb1_2wb.dread();
    default:
        SIM_LOG(LOG_TYPE_ERROR, 0) << "unknown resource UID: '" << resource << "'" << std::endl;
    }
    return 0;
}
MaxInt Sim::ResourceRead(const Uid resource, const Address addr, const unsigned sbi, const unsigned sbc)
{
    switch (resource) {
    case 81:
        return MI6rf_xpr.dread(addr);
    case 83:
        return MI6as_all_program_dread(addr, sbi, sbc);
    case 84:
        return MI6as_all_data_dread(addr, sbi, sbc);
    case 82:
        return MI6as_all_dread(addr, sbi, sbc);
    case 85:
        return MI7if_code.dread(addr, sbi, sbc);
    case 86:
        return MI7if_data.dread(addr, sbi, sbc);
    default:
        SIM_LOG(LOG_TYPE_ERROR, 0) << "unknown resource UID: '" << resource << "'" << std::endl;
    }
    return 0;
}
void Sim::ResourceWrite(const Uid resource, const MaxInt& data, const Address addr)
{
    switch (resource) {
    case 2:
        MI10s_fe_stall.dwrite(data);
        break;
    case 3:
        MI10s_fe_clear.dwrite(data);
        break;
    case 4:
        MI10s_fe_instr.dwrite(data);
        break;
    case 5:
        MI10s_id_stall.dwrite(data);
        break;
    case 6:
        MI10s_id_clear.dwrite(data);
        break;
    case 7:
        MI7r_id_pc.dwrite(data);
        break;
    case 8:
        MI10r_id_instr.dwrite(data);
        break;
    case 9:
        MI11s_id_opcode.dwrite(data);
        break;
    case 10:
        MI20s_id_extended_opcode.dwrite(data);
        break;
    case 11:
        MI17s_id_rtype_opcode.dwrite(data);
        break;
    case 12:
        MI17s_id_itype_opcode.dwrite(data);
        break;
    case 13:
        MI17s_id_stype_opcode.dwrite(data);
        break;
    case 14:
        MI17s_id_utype_opcode.dwrite(data);
        break;
    case 15:
        MI10s_id_xpr_a.dwrite(data);
        break;
    case 16:
        MI10s_id_xpr_b.dwrite(data);
        break;
    case 17:
        MI13s_id_xpr_dest.dwrite(data);
        break;
    case 18:
        MI12s_id_shamnt5.dwrite(data);
        break;
    case 19:
        MI17s_id_itype_simm12.dwrite(data);
        break;
    case 20:
        MI17s_id_stype_simm12.dwrite(data);
        break;
    case 21:
        MI17s_id_btype_simm12.dwrite(data);
        break;
    case 22:
        MI17s_id_jtype_simm20.dwrite(data);
        break;
    case 23:
        MI17s_id_utype_uimm20.dwrite(data);
        break;
    case 24:
        MI8s_id_imm.dwrite(data);
        break;
    case 25:
        MI8s_id_csr.dwrite(data);
        break;
    case 26:
        MI9s_id_zimm.dwrite(data);
        break;
    case 27:
        MI14s_id_src_a_mux.dwrite(data);
        break;
    case 28:
        MI14s_id_src_b_mux.dwrite(data);
        break;
    case 29:
        MI11s_id_alu_op.dwrite(data);
        break;
    case 30:
        MI11s_id_mem_op.dwrite(data);
        break;
    case 31:
        MI12s_id_jump_op.dwrite(data);
        break;
    case 32:
        MI17s_id_xpr_dest_src.dwrite(data);
        break;
    case 33:
        MI10s_ex_stall.dwrite(data);
        break;
    case 34:
        MI10s_ex_clear.dwrite(data);
        break;
    case 35:
        MI7r_ex_pc.dwrite(data);
        break;
    case 36:
        MI10r_ex_instr.dwrite(data);
        break;
    case 37:
        MI13r_ex_xpr_dest.dwrite(data);
        break;
    case 38:
        MI17r_ex_xpr_dest_src.dwrite(data);
        break;
    case 39:
        MI11r_ex_alu_op.dwrite(data);
        break;
    case 40:
        MI11r_ex_mem_op.dwrite(data);
        break;
    case 41:
        MI12r_ex_jump_op.dwrite(data);
        break;
    case 42:
        MI10r_ex_xpr_a.dwrite(data);
        break;
    case 43:
        MI10r_ex_xpr_b.dwrite(data);
        break;
    case 44:
        MI14r_ex_src_a_mux.dwrite(data);
        break;
    case 45:
        MI14r_ex_src_b_mux.dwrite(data);
        break;
    case 46:
        MI14s_ex_forward_a.dwrite(data);
        break;
    case 47:
        MI23s_ex_xpr_data_a_forward.dwrite(data);
        break;
    case 48:
        MI13s_ex_alu_in_a.dwrite(data);
        break;
    case 49:
        MI14s_ex_forward_b.dwrite(data);
        break;
    case 50:
        MI23s_ex_xpr_data_b_forward.dwrite(data);
        break;
    case 51:
        MI13s_ex_alu_in_b.dwrite(data);
        break;
    case 52:
        MI15r_ex_xpr_data_a.dwrite(data);
        break;
    case 53:
        MI15r_ex_xpr_data_b.dwrite(data);
        break;
    case 54:
        MI8r_ex_imm.dwrite(data);
        break;
    case 55:
        MI12s_ex_alu_out.dwrite(data);
        break;
    case 56:
        MI18s_ex_branch_target.dwrite(data);
        break;
    case 57:
        MI9s_ex_zero.dwrite(data);
        break;
    case 58:
        MI16s_ex_take_branch.dwrite(data);
        break;
    case 59:
        MI10s_me_stall.dwrite(data);
        break;
    case 60:
        MI10s_me_clear.dwrite(data);
        break;
    case 61:
        MI7r_me_pc.dwrite(data);
        break;
    case 62:
        MI10r_me_instr.dwrite(data);
        break;
    case 63:
        MI15r_me_alu_data_b.dwrite(data);
        break;
    case 64:
        MI13r_me_xpr_dest.dwrite(data);
        break;
    case 65:
        MI17r_me_xpr_dest_src.dwrite(data);
        break;
    case 66:
        MI11r_me_mem_op.dwrite(data);
        break;
    case 67:
        MI12r_me_alu_out.dwrite(data);
        break;
    case 68:
        MI17s_me_mem_read_raw.dwrite(data);
        break;
    case 69:
        MI13s_me_mem_read.dwrite(data);
        break;
    case 70:
        MI13s_me_data_out.dwrite(data);
        break;
    case 71:
        MI10s_wb_stall.dwrite(data);
        break;
    case 72:
        MI10s_wb_clear.dwrite(data);
        break;
    case 73:
        MI7r_wb_pc.dwrite(data);
        break;
    case 74:
        MI10r_wb_instr.dwrite(data);
        break;
    case 75:
        MI13r_wb_xpr_dest.dwrite(data);
        break;
    case 76:
        MI17r_wb_xpr_dest_src.dwrite(data);
        break;
    case 77:
        MI13r_wb_data_out.dwrite(data);
        break;
    case 78:
        MI12r_wb_alu_out.dwrite(data);
        break;
    case 79:
        MI13r_wb_mem_read.dwrite(data);
        break;
    case 80:
        MI4r_pc.dwrite(data);
        break;
    case 81:
        MI6rf_xpr.dwrite(data, addr);
        break;
    case 83:
        MI6as_all_program_dwrite(data, addr);
        break;
    case 84:
        MI6as_all_data_dwrite(data, addr);
        break;
    case 82:
        MI6as_all_dwrite(data, addr);
        break;
    case 85:
        MI7if_code.dwrite(data, addr);
        break;
    case 86:
        MI7if_data.dwrite(data, addr);
        break;
    case 88:
        MI11INSTRUCTIONIH4_2id2id8_6isa_hw6isa_hw1_6isa_hw.dwrite(data);
        break;
    case 90:
        MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_8i_hw_alu.dwrite(data);
        break;
    case 92:
        MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_10i_hw_alu_i.dwrite(data);
        break;
    case 94:
        MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_10i_hw_shift.dwrite(data);
        break;
    case 96:
        MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_11i_hw_branch.dwrite(data);
        break;
    case 98:
        MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_9i_hw_load.dwrite(data);
        break;
    case 100:
        MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_10i_hw_store.dwrite(data);
        break;
    case 102:
        MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_14i_hw_upper_imm.dwrite(data);
        break;
    case 103:
        MI17codasip_tmp_var_0IH15_12pipe_control12pipe_control1_12pipe_control.dwrite(data);
        break;
    case 104:
        MI17codasip_tmp_var_2IH15_12pipe_control12pipe_control1_12pipe_control.dwrite(data);
        break;
    case 105:
        MI17codasip_tmp_var_4IH15_12pipe_control12pipe_control1_12pipe_control.dwrite(data);
        break;
    case 106:
        MI17codasip_tmp_var_6IH15_12pipe_control12pipe_control1_12pipe_control.dwrite(data);
        break;
    case 107:
        MI17codasip_tmp_var_8IH15_12pipe_control12pipe_control1_12pipe_control.dwrite(data);
        break;
    case 108:
        MI17codasip_tmp_var_1IH15_12pipe_control12pipe_control1_12pipe_control.dwrite(data);
        break;
    case 109:
        MI17codasip_tmp_var_3IH15_12pipe_control12pipe_control1_12pipe_control.dwrite(data);
        break;
    case 110:
        MI17codasip_tmp_var_5IH15_12pipe_control12pipe_control1_12pipe_control.dwrite(data);
        break;
    case 111:
        MI17codasip_tmp_var_7IH15_12pipe_control12pipe_control1_12pipe_control.dwrite(data);
        break;
    case 112:
        MI17codasip_tmp_var_9IH15_12pipe_control12pipe_control1_12pipe_control.dwrite(data);
        break;
    case 113:
        MI17codasip_tmp_var_0IH4_2ex2ex1_2ex.dwrite(data);
        break;
    case 114:
        MI17codasip_tmp_var_1IH4_2ex2ex1_2ex.dwrite(data);
        break;
    case 115:
        MI17codasip_tmp_var_2IH4_2ex2ex1_2ex.dwrite(data);
        break;
    case 116:
        MI17codasip_tmp_var_3IH4_2ex2ex1_2ex.dwrite(data);
        break;
    case 117:
        MI17codasip_tmp_var_4IH4_2ex2ex1_2ex.dwrite(data);
        break;
    case 118:
        MI17codasip_tmp_var_0IH4_2fe2fe1_2fe.dwrite(data);
        break;
    case 119:
        MI17codasip_tmp_var_0IH4_2id2id1_2id.dwrite(data);
        break;
    case 120:
        MI17codasip_tmp_var_1IH4_2id2id1_2id.dwrite(data);
        break;
    case 121:
        MI8data_memIH4_2me2me1_2meB0.dwrite(data);
        break;
    case 122:
        MI11request_cmdIH4_2me2me1_2meB0.dwrite(data);
        break;
    case 123:
        MI10byte_countIH4_2me2me1_2meB0.dwrite(data);
        break;
    case 124:
        MI17codasip_tmp_var_0IH4_2me2me1_2me.dwrite(data);
        break;
    case 125:
        MI17codasip_tmp_var_1IH4_2me2me1_2me.dwrite(data);
        break;
    case 126:
        MI17codasip_tmp_var_5IH4_2me2me1_2me.dwrite(data);
        break;
    case 127:
        MI17codasip_tmp_var_2IH4_2me2me1_2me.dwrite(data);
        break;
    case 128:
        MI17codasip_tmp_var_3IH4_2me2me1_2me.dwrite(data);
        break;
    case 129:
        MI17codasip_tmp_var_4IH4_2me2me1_2me.dwrite(data);
        break;
    case 130:
        MI17codasip_tmp_var_0IH4_2wb2wb1_2wb.dwrite(data);
        break;
    default:
        SIM_LOG(LOG_TYPE_ERROR, 0) << "unknown resource UID: '" << resource << "'" << std::endl;
    }
}
void Sim::ResourceWrite(const Uid resource, const MaxInt& data, const Address addr, const unsigned sbi, const unsigned sbc)
{
    switch (resource) {
    case 81:
        MI6rf_xpr.dwrite(data, addr);
        break;
    case 83:
        MI6as_all_program_dwrite(data, addr, sbi, sbc);
        break;
    case 84:
        MI6as_all_data_dwrite(data, addr, sbi, sbc);
        break;
    case 82:
        MI6as_all_dwrite(data, addr, sbi, sbc);
        break;
    case 85:
        MI7if_code.dwrite(data, addr, sbi, sbc);
        break;
    case 86:
        MI7if_data.dwrite(data, addr, sbi, sbc);
        break;
    default:
        SIM_LOG(LOG_TYPE_ERROR, 0) << "unknown resource UID: '" << resource << "'" << std::endl;
    }
}
uint64_t Sim::ResourceStats(const Uid resource, const profiler::AccessType type, const Address addr) const 
{
    switch (resource) {
    }
    return 0;
}
bool Sim::Dump(DumpStream& stream,const std::vector<Uid>& resources,const bool continuous)
{
    if (!resources.empty()) {
        for (auto resource : resources) {
            switch (resource) {
            case 2:
                if (continuous) {
                    MI10s_fe_stall.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI10s_fe_stall.get_signature(), MI10s_fe_stall.dread());
                }
                break;
            case 3:
                if (continuous) {
                    MI10s_fe_clear.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI10s_fe_clear.get_signature(), MI10s_fe_clear.dread());
                }
                break;
            case 4:
                if (continuous) {
                    MI10s_fe_instr.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI10s_fe_instr.get_signature(), MI10s_fe_instr.dread());
                }
                break;
            case 5:
                if (continuous) {
                    MI10s_id_stall.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI10s_id_stall.get_signature(), MI10s_id_stall.dread());
                }
                break;
            case 6:
                if (continuous) {
                    MI10s_id_clear.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI10s_id_clear.get_signature(), MI10s_id_clear.dread());
                }
                break;
            case 7:
                if (continuous) {
                    MI7r_id_pc.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI7r_id_pc.get_signature(), MI7r_id_pc.dread());
                }
                break;
            case 8:
                if (continuous) {
                    MI10r_id_instr.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI10r_id_instr.get_signature(), MI10r_id_instr.dread());
                }
                break;
            case 9:
                if (continuous) {
                    MI11s_id_opcode.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI11s_id_opcode.get_signature(), MI11s_id_opcode.dread());
                }
                break;
            case 10:
                if (continuous) {
                    MI20s_id_extended_opcode.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI20s_id_extended_opcode.get_signature(), MI20s_id_extended_opcode.dread());
                }
                break;
            case 11:
                if (continuous) {
                    MI17s_id_rtype_opcode.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI17s_id_rtype_opcode.get_signature(), MI17s_id_rtype_opcode.dread());
                }
                break;
            case 12:
                if (continuous) {
                    MI17s_id_itype_opcode.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI17s_id_itype_opcode.get_signature(), MI17s_id_itype_opcode.dread());
                }
                break;
            case 13:
                if (continuous) {
                    MI17s_id_stype_opcode.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI17s_id_stype_opcode.get_signature(), MI17s_id_stype_opcode.dread());
                }
                break;
            case 14:
                if (continuous) {
                    MI17s_id_utype_opcode.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI17s_id_utype_opcode.get_signature(), MI17s_id_utype_opcode.dread());
                }
                break;
            case 15:
                if (continuous) {
                    MI10s_id_xpr_a.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI10s_id_xpr_a.get_signature(), MI10s_id_xpr_a.dread());
                }
                break;
            case 16:
                if (continuous) {
                    MI10s_id_xpr_b.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI10s_id_xpr_b.get_signature(), MI10s_id_xpr_b.dread());
                }
                break;
            case 17:
                if (continuous) {
                    MI13s_id_xpr_dest.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI13s_id_xpr_dest.get_signature(), MI13s_id_xpr_dest.dread());
                }
                break;
            case 18:
                if (continuous) {
                    MI12s_id_shamnt5.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI12s_id_shamnt5.get_signature(), MI12s_id_shamnt5.dread());
                }
                break;
            case 19:
                if (continuous) {
                    MI17s_id_itype_simm12.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI17s_id_itype_simm12.get_signature(), MI17s_id_itype_simm12.dread());
                }
                break;
            case 20:
                if (continuous) {
                    MI17s_id_stype_simm12.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI17s_id_stype_simm12.get_signature(), MI17s_id_stype_simm12.dread());
                }
                break;
            case 21:
                if (continuous) {
                    MI17s_id_btype_simm12.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI17s_id_btype_simm12.get_signature(), MI17s_id_btype_simm12.dread());
                }
                break;
            case 22:
                if (continuous) {
                    MI17s_id_jtype_simm20.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI17s_id_jtype_simm20.get_signature(), MI17s_id_jtype_simm20.dread());
                }
                break;
            case 23:
                if (continuous) {
                    MI17s_id_utype_uimm20.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI17s_id_utype_uimm20.get_signature(), MI17s_id_utype_uimm20.dread());
                }
                break;
            case 24:
                if (continuous) {
                    MI8s_id_imm.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI8s_id_imm.get_signature(), MI8s_id_imm.dread());
                }
                break;
            case 25:
                if (continuous) {
                    MI8s_id_csr.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI8s_id_csr.get_signature(), MI8s_id_csr.dread());
                }
                break;
            case 26:
                if (continuous) {
                    MI9s_id_zimm.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI9s_id_zimm.get_signature(), MI9s_id_zimm.dread());
                }
                break;
            case 27:
                if (continuous) {
                    MI14s_id_src_a_mux.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI14s_id_src_a_mux.get_signature(), MI14s_id_src_a_mux.dread());
                }
                break;
            case 28:
                if (continuous) {
                    MI14s_id_src_b_mux.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI14s_id_src_b_mux.get_signature(), MI14s_id_src_b_mux.dread());
                }
                break;
            case 29:
                if (continuous) {
                    MI11s_id_alu_op.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI11s_id_alu_op.get_signature(), MI11s_id_alu_op.dread());
                }
                break;
            case 30:
                if (continuous) {
                    MI11s_id_mem_op.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI11s_id_mem_op.get_signature(), MI11s_id_mem_op.dread());
                }
                break;
            case 31:
                if (continuous) {
                    MI12s_id_jump_op.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI12s_id_jump_op.get_signature(), MI12s_id_jump_op.dread());
                }
                break;
            case 32:
                if (continuous) {
                    MI17s_id_xpr_dest_src.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI17s_id_xpr_dest_src.get_signature(), MI17s_id_xpr_dest_src.dread());
                }
                break;
            case 33:
                if (continuous) {
                    MI10s_ex_stall.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI10s_ex_stall.get_signature(), MI10s_ex_stall.dread());
                }
                break;
            case 34:
                if (continuous) {
                    MI10s_ex_clear.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI10s_ex_clear.get_signature(), MI10s_ex_clear.dread());
                }
                break;
            case 35:
                if (continuous) {
                    MI7r_ex_pc.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI7r_ex_pc.get_signature(), MI7r_ex_pc.dread());
                }
                break;
            case 36:
                if (continuous) {
                    MI10r_ex_instr.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI10r_ex_instr.get_signature(), MI10r_ex_instr.dread());
                }
                break;
            case 37:
                if (continuous) {
                    MI13r_ex_xpr_dest.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI13r_ex_xpr_dest.get_signature(), MI13r_ex_xpr_dest.dread());
                }
                break;
            case 38:
                if (continuous) {
                    MI17r_ex_xpr_dest_src.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI17r_ex_xpr_dest_src.get_signature(), MI17r_ex_xpr_dest_src.dread());
                }
                break;
            case 39:
                if (continuous) {
                    MI11r_ex_alu_op.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI11r_ex_alu_op.get_signature(), MI11r_ex_alu_op.dread());
                }
                break;
            case 40:
                if (continuous) {
                    MI11r_ex_mem_op.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI11r_ex_mem_op.get_signature(), MI11r_ex_mem_op.dread());
                }
                break;
            case 41:
                if (continuous) {
                    MI12r_ex_jump_op.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI12r_ex_jump_op.get_signature(), MI12r_ex_jump_op.dread());
                }
                break;
            case 42:
                if (continuous) {
                    MI10r_ex_xpr_a.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI10r_ex_xpr_a.get_signature(), MI10r_ex_xpr_a.dread());
                }
                break;
            case 43:
                if (continuous) {
                    MI10r_ex_xpr_b.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI10r_ex_xpr_b.get_signature(), MI10r_ex_xpr_b.dread());
                }
                break;
            case 44:
                if (continuous) {
                    MI14r_ex_src_a_mux.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI14r_ex_src_a_mux.get_signature(), MI14r_ex_src_a_mux.dread());
                }
                break;
            case 45:
                if (continuous) {
                    MI14r_ex_src_b_mux.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI14r_ex_src_b_mux.get_signature(), MI14r_ex_src_b_mux.dread());
                }
                break;
            case 46:
                if (continuous) {
                    MI14s_ex_forward_a.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI14s_ex_forward_a.get_signature(), MI14s_ex_forward_a.dread());
                }
                break;
            case 47:
                if (continuous) {
                    MI23s_ex_xpr_data_a_forward.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI23s_ex_xpr_data_a_forward.get_signature(), MI23s_ex_xpr_data_a_forward.dread());
                }
                break;
            case 48:
                if (continuous) {
                    MI13s_ex_alu_in_a.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI13s_ex_alu_in_a.get_signature(), MI13s_ex_alu_in_a.dread());
                }
                break;
            case 49:
                if (continuous) {
                    MI14s_ex_forward_b.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI14s_ex_forward_b.get_signature(), MI14s_ex_forward_b.dread());
                }
                break;
            case 50:
                if (continuous) {
                    MI23s_ex_xpr_data_b_forward.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI23s_ex_xpr_data_b_forward.get_signature(), MI23s_ex_xpr_data_b_forward.dread());
                }
                break;
            case 51:
                if (continuous) {
                    MI13s_ex_alu_in_b.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI13s_ex_alu_in_b.get_signature(), MI13s_ex_alu_in_b.dread());
                }
                break;
            case 52:
                if (continuous) {
                    MI15r_ex_xpr_data_a.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI15r_ex_xpr_data_a.get_signature(), MI15r_ex_xpr_data_a.dread());
                }
                break;
            case 53:
                if (continuous) {
                    MI15r_ex_xpr_data_b.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI15r_ex_xpr_data_b.get_signature(), MI15r_ex_xpr_data_b.dread());
                }
                break;
            case 54:
                if (continuous) {
                    MI8r_ex_imm.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI8r_ex_imm.get_signature(), MI8r_ex_imm.dread());
                }
                break;
            case 55:
                if (continuous) {
                    MI12s_ex_alu_out.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI12s_ex_alu_out.get_signature(), MI12s_ex_alu_out.dread());
                }
                break;
            case 56:
                if (continuous) {
                    MI18s_ex_branch_target.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI18s_ex_branch_target.get_signature(), MI18s_ex_branch_target.dread());
                }
                break;
            case 57:
                if (continuous) {
                    MI9s_ex_zero.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI9s_ex_zero.get_signature(), MI9s_ex_zero.dread());
                }
                break;
            case 58:
                if (continuous) {
                    MI16s_ex_take_branch.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI16s_ex_take_branch.get_signature(), MI16s_ex_take_branch.dread());
                }
                break;
            case 59:
                if (continuous) {
                    MI10s_me_stall.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI10s_me_stall.get_signature(), MI10s_me_stall.dread());
                }
                break;
            case 60:
                if (continuous) {
                    MI10s_me_clear.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI10s_me_clear.get_signature(), MI10s_me_clear.dread());
                }
                break;
            case 61:
                if (continuous) {
                    MI7r_me_pc.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI7r_me_pc.get_signature(), MI7r_me_pc.dread());
                }
                break;
            case 62:
                if (continuous) {
                    MI10r_me_instr.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI10r_me_instr.get_signature(), MI10r_me_instr.dread());
                }
                break;
            case 63:
                if (continuous) {
                    MI15r_me_alu_data_b.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI15r_me_alu_data_b.get_signature(), MI15r_me_alu_data_b.dread());
                }
                break;
            case 64:
                if (continuous) {
                    MI13r_me_xpr_dest.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI13r_me_xpr_dest.get_signature(), MI13r_me_xpr_dest.dread());
                }
                break;
            case 65:
                if (continuous) {
                    MI17r_me_xpr_dest_src.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI17r_me_xpr_dest_src.get_signature(), MI17r_me_xpr_dest_src.dread());
                }
                break;
            case 66:
                if (continuous) {
                    MI11r_me_mem_op.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI11r_me_mem_op.get_signature(), MI11r_me_mem_op.dread());
                }
                break;
            case 67:
                if (continuous) {
                    MI12r_me_alu_out.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI12r_me_alu_out.get_signature(), MI12r_me_alu_out.dread());
                }
                break;
            case 68:
                if (continuous) {
                    MI17s_me_mem_read_raw.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI17s_me_mem_read_raw.get_signature(), MI17s_me_mem_read_raw.dread());
                }
                break;
            case 69:
                if (continuous) {
                    MI13s_me_mem_read.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI13s_me_mem_read.get_signature(), MI13s_me_mem_read.dread());
                }
                break;
            case 70:
                if (continuous) {
                    MI13s_me_data_out.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI13s_me_data_out.get_signature(), MI13s_me_data_out.dread());
                }
                break;
            case 71:
                if (continuous) {
                    MI10s_wb_stall.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI10s_wb_stall.get_signature(), MI10s_wb_stall.dread());
                }
                break;
            case 72:
                if (continuous) {
                    MI10s_wb_clear.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI10s_wb_clear.get_signature(), MI10s_wb_clear.dread());
                }
                break;
            case 73:
                if (continuous) {
                    MI7r_wb_pc.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI7r_wb_pc.get_signature(), MI7r_wb_pc.dread());
                }
                break;
            case 74:
                if (continuous) {
                    MI10r_wb_instr.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI10r_wb_instr.get_signature(), MI10r_wb_instr.dread());
                }
                break;
            case 75:
                if (continuous) {
                    MI13r_wb_xpr_dest.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI13r_wb_xpr_dest.get_signature(), MI13r_wb_xpr_dest.dread());
                }
                break;
            case 76:
                if (continuous) {
                    MI17r_wb_xpr_dest_src.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI17r_wb_xpr_dest_src.get_signature(), MI17r_wb_xpr_dest_src.dread());
                }
                break;
            case 77:
                if (continuous) {
                    MI13r_wb_data_out.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI13r_wb_data_out.get_signature(), MI13r_wb_data_out.dread());
                }
                break;
            case 78:
                if (continuous) {
                    MI12r_wb_alu_out.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI12r_wb_alu_out.get_signature(), MI12r_wb_alu_out.dread());
                }
                break;
            case 79:
                if (continuous) {
                    MI13r_wb_mem_read.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI13r_wb_mem_read.get_signature(), MI13r_wb_mem_read.dread());
                }
                break;
            case 80:
                if (continuous) {
                    MI4r_pc.set_dump_stream(stream);
                } else { 
                    stream.Dump(MI4r_pc.get_signature(), MI4r_pc.dread());
                }
                break;
            case 81:
                if (continuous) {
                    MI6rf_xpr.set_dump_stream(stream);
                } else { 
                    for (codasip_address_t addr = 0; addr < 32; ++addr) {
                        stream.DumpAddr(MI6rf_xpr.get_signature(), MI6rf_xpr.dread(addr), addr,32);
                    }
                }
                break;
            case 85:
                if (continuous) {
                    MI7if_code.set_dump_stream(stream);
                } else { 
                    SIM_LOG(LOG_TYPE_ERROR, 0) << "Resource " << MI7if_code.get_signature() << " doesn't support single dump.\n";
                    return false;
                }
                break;
            case 86:
                if (continuous) {
                    MI7if_data.set_dump_stream(stream);
                } else { 
                    SIM_LOG(LOG_TYPE_ERROR, 0) << "Resource " << MI7if_data.get_signature() << " doesn't support single dump.\n";
                    return false;
                }
                break;
            default:
                SIM_LOG(LOG_TYPE_ERROR, 0) << "unknown dump resource UID: '" << resource << "'" << std::endl;
                return false;
            }
        }
        return true;
    }
    if (continuous) {
        MI10s_fe_stall.set_dump_stream(stream);
        MI10s_fe_clear.set_dump_stream(stream);
        MI10s_fe_instr.set_dump_stream(stream);
        MI10s_id_stall.set_dump_stream(stream);
        MI10s_id_clear.set_dump_stream(stream);
        MI7r_id_pc.set_dump_stream(stream);
        MI10r_id_instr.set_dump_stream(stream);
        MI11s_id_opcode.set_dump_stream(stream);
        MI20s_id_extended_opcode.set_dump_stream(stream);
        MI17s_id_rtype_opcode.set_dump_stream(stream);
        MI17s_id_itype_opcode.set_dump_stream(stream);
        MI17s_id_stype_opcode.set_dump_stream(stream);
        MI17s_id_utype_opcode.set_dump_stream(stream);
        MI10s_id_xpr_a.set_dump_stream(stream);
        MI10s_id_xpr_b.set_dump_stream(stream);
        MI13s_id_xpr_dest.set_dump_stream(stream);
        MI12s_id_shamnt5.set_dump_stream(stream);
        MI17s_id_itype_simm12.set_dump_stream(stream);
        MI17s_id_stype_simm12.set_dump_stream(stream);
        MI17s_id_btype_simm12.set_dump_stream(stream);
        MI17s_id_jtype_simm20.set_dump_stream(stream);
        MI17s_id_utype_uimm20.set_dump_stream(stream);
        MI8s_id_imm.set_dump_stream(stream);
        MI8s_id_csr.set_dump_stream(stream);
        MI9s_id_zimm.set_dump_stream(stream);
        MI14s_id_src_a_mux.set_dump_stream(stream);
        MI14s_id_src_b_mux.set_dump_stream(stream);
        MI11s_id_alu_op.set_dump_stream(stream);
        MI11s_id_mem_op.set_dump_stream(stream);
        MI12s_id_jump_op.set_dump_stream(stream);
        MI17s_id_xpr_dest_src.set_dump_stream(stream);
        MI10s_ex_stall.set_dump_stream(stream);
        MI10s_ex_clear.set_dump_stream(stream);
        MI7r_ex_pc.set_dump_stream(stream);
        MI10r_ex_instr.set_dump_stream(stream);
        MI13r_ex_xpr_dest.set_dump_stream(stream);
        MI17r_ex_xpr_dest_src.set_dump_stream(stream);
        MI11r_ex_alu_op.set_dump_stream(stream);
        MI11r_ex_mem_op.set_dump_stream(stream);
        MI12r_ex_jump_op.set_dump_stream(stream);
        MI10r_ex_xpr_a.set_dump_stream(stream);
        MI10r_ex_xpr_b.set_dump_stream(stream);
        MI14r_ex_src_a_mux.set_dump_stream(stream);
        MI14r_ex_src_b_mux.set_dump_stream(stream);
        MI14s_ex_forward_a.set_dump_stream(stream);
        MI23s_ex_xpr_data_a_forward.set_dump_stream(stream);
        MI13s_ex_alu_in_a.set_dump_stream(stream);
        MI14s_ex_forward_b.set_dump_stream(stream);
        MI23s_ex_xpr_data_b_forward.set_dump_stream(stream);
        MI13s_ex_alu_in_b.set_dump_stream(stream);
        MI15r_ex_xpr_data_a.set_dump_stream(stream);
        MI15r_ex_xpr_data_b.set_dump_stream(stream);
        MI8r_ex_imm.set_dump_stream(stream);
        MI12s_ex_alu_out.set_dump_stream(stream);
        MI18s_ex_branch_target.set_dump_stream(stream);
        MI9s_ex_zero.set_dump_stream(stream);
        MI16s_ex_take_branch.set_dump_stream(stream);
        MI10s_me_stall.set_dump_stream(stream);
        MI10s_me_clear.set_dump_stream(stream);
        MI7r_me_pc.set_dump_stream(stream);
        MI10r_me_instr.set_dump_stream(stream);
        MI15r_me_alu_data_b.set_dump_stream(stream);
        MI13r_me_xpr_dest.set_dump_stream(stream);
        MI17r_me_xpr_dest_src.set_dump_stream(stream);
        MI11r_me_mem_op.set_dump_stream(stream);
        MI12r_me_alu_out.set_dump_stream(stream);
        MI17s_me_mem_read_raw.set_dump_stream(stream);
        MI13s_me_mem_read.set_dump_stream(stream);
        MI13s_me_data_out.set_dump_stream(stream);
        MI10s_wb_stall.set_dump_stream(stream);
        MI10s_wb_clear.set_dump_stream(stream);
        MI7r_wb_pc.set_dump_stream(stream);
        MI10r_wb_instr.set_dump_stream(stream);
        MI13r_wb_xpr_dest.set_dump_stream(stream);
        MI17r_wb_xpr_dest_src.set_dump_stream(stream);
        MI13r_wb_data_out.set_dump_stream(stream);
        MI12r_wb_alu_out.set_dump_stream(stream);
        MI13r_wb_mem_read.set_dump_stream(stream);
        MI4r_pc.set_dump_stream(stream);
        MI6rf_xpr.set_dump_stream(stream);
        MI7if_code.set_dump_stream(stream);
        MI7if_data.set_dump_stream(stream);
    }
    else {
        stream.DumpClockCycle(m_SimCycleCounter);
        InvalidateCaches(true);
        stream.Dump(MI10s_fe_stall.get_signature(), MI10s_fe_stall.dread());
        stream.Dump(MI10s_fe_clear.get_signature(), MI10s_fe_clear.dread());
        stream.Dump(MI10s_fe_instr.get_signature(), MI10s_fe_instr.dread());
        stream.Dump(MI10s_id_stall.get_signature(), MI10s_id_stall.dread());
        stream.Dump(MI10s_id_clear.get_signature(), MI10s_id_clear.dread());
        stream.Dump(MI7r_id_pc.get_signature(), MI7r_id_pc.dread());
        stream.Dump(MI10r_id_instr.get_signature(), MI10r_id_instr.dread());
        stream.Dump(MI11s_id_opcode.get_signature(), MI11s_id_opcode.dread());
        stream.Dump(MI20s_id_extended_opcode.get_signature(), MI20s_id_extended_opcode.dread());
        stream.Dump(MI17s_id_rtype_opcode.get_signature(), MI17s_id_rtype_opcode.dread());
        stream.Dump(MI17s_id_itype_opcode.get_signature(), MI17s_id_itype_opcode.dread());
        stream.Dump(MI17s_id_stype_opcode.get_signature(), MI17s_id_stype_opcode.dread());
        stream.Dump(MI17s_id_utype_opcode.get_signature(), MI17s_id_utype_opcode.dread());
        stream.Dump(MI10s_id_xpr_a.get_signature(), MI10s_id_xpr_a.dread());
        stream.Dump(MI10s_id_xpr_b.get_signature(), MI10s_id_xpr_b.dread());
        stream.Dump(MI13s_id_xpr_dest.get_signature(), MI13s_id_xpr_dest.dread());
        stream.Dump(MI12s_id_shamnt5.get_signature(), MI12s_id_shamnt5.dread());
        stream.Dump(MI17s_id_itype_simm12.get_signature(), MI17s_id_itype_simm12.dread());
        stream.Dump(MI17s_id_stype_simm12.get_signature(), MI17s_id_stype_simm12.dread());
        stream.Dump(MI17s_id_btype_simm12.get_signature(), MI17s_id_btype_simm12.dread());
        stream.Dump(MI17s_id_jtype_simm20.get_signature(), MI17s_id_jtype_simm20.dread());
        stream.Dump(MI17s_id_utype_uimm20.get_signature(), MI17s_id_utype_uimm20.dread());
        stream.Dump(MI8s_id_imm.get_signature(), MI8s_id_imm.dread());
        stream.Dump(MI8s_id_csr.get_signature(), MI8s_id_csr.dread());
        stream.Dump(MI9s_id_zimm.get_signature(), MI9s_id_zimm.dread());
        stream.Dump(MI14s_id_src_a_mux.get_signature(), MI14s_id_src_a_mux.dread());
        stream.Dump(MI14s_id_src_b_mux.get_signature(), MI14s_id_src_b_mux.dread());
        stream.Dump(MI11s_id_alu_op.get_signature(), MI11s_id_alu_op.dread());
        stream.Dump(MI11s_id_mem_op.get_signature(), MI11s_id_mem_op.dread());
        stream.Dump(MI12s_id_jump_op.get_signature(), MI12s_id_jump_op.dread());
        stream.Dump(MI17s_id_xpr_dest_src.get_signature(), MI17s_id_xpr_dest_src.dread());
        stream.Dump(MI10s_ex_stall.get_signature(), MI10s_ex_stall.dread());
        stream.Dump(MI10s_ex_clear.get_signature(), MI10s_ex_clear.dread());
        stream.Dump(MI7r_ex_pc.get_signature(), MI7r_ex_pc.dread());
        stream.Dump(MI10r_ex_instr.get_signature(), MI10r_ex_instr.dread());
        stream.Dump(MI13r_ex_xpr_dest.get_signature(), MI13r_ex_xpr_dest.dread());
        stream.Dump(MI17r_ex_xpr_dest_src.get_signature(), MI17r_ex_xpr_dest_src.dread());
        stream.Dump(MI11r_ex_alu_op.get_signature(), MI11r_ex_alu_op.dread());
        stream.Dump(MI11r_ex_mem_op.get_signature(), MI11r_ex_mem_op.dread());
        stream.Dump(MI12r_ex_jump_op.get_signature(), MI12r_ex_jump_op.dread());
        stream.Dump(MI10r_ex_xpr_a.get_signature(), MI10r_ex_xpr_a.dread());
        stream.Dump(MI10r_ex_xpr_b.get_signature(), MI10r_ex_xpr_b.dread());
        stream.Dump(MI14r_ex_src_a_mux.get_signature(), MI14r_ex_src_a_mux.dread());
        stream.Dump(MI14r_ex_src_b_mux.get_signature(), MI14r_ex_src_b_mux.dread());
        stream.Dump(MI14s_ex_forward_a.get_signature(), MI14s_ex_forward_a.dread());
        stream.Dump(MI23s_ex_xpr_data_a_forward.get_signature(), MI23s_ex_xpr_data_a_forward.dread());
        stream.Dump(MI13s_ex_alu_in_a.get_signature(), MI13s_ex_alu_in_a.dread());
        stream.Dump(MI14s_ex_forward_b.get_signature(), MI14s_ex_forward_b.dread());
        stream.Dump(MI23s_ex_xpr_data_b_forward.get_signature(), MI23s_ex_xpr_data_b_forward.dread());
        stream.Dump(MI13s_ex_alu_in_b.get_signature(), MI13s_ex_alu_in_b.dread());
        stream.Dump(MI15r_ex_xpr_data_a.get_signature(), MI15r_ex_xpr_data_a.dread());
        stream.Dump(MI15r_ex_xpr_data_b.get_signature(), MI15r_ex_xpr_data_b.dread());
        stream.Dump(MI8r_ex_imm.get_signature(), MI8r_ex_imm.dread());
        stream.Dump(MI12s_ex_alu_out.get_signature(), MI12s_ex_alu_out.dread());
        stream.Dump(MI18s_ex_branch_target.get_signature(), MI18s_ex_branch_target.dread());
        stream.Dump(MI9s_ex_zero.get_signature(), MI9s_ex_zero.dread());
        stream.Dump(MI16s_ex_take_branch.get_signature(), MI16s_ex_take_branch.dread());
        stream.Dump(MI10s_me_stall.get_signature(), MI10s_me_stall.dread());
        stream.Dump(MI10s_me_clear.get_signature(), MI10s_me_clear.dread());
        stream.Dump(MI7r_me_pc.get_signature(), MI7r_me_pc.dread());
        stream.Dump(MI10r_me_instr.get_signature(), MI10r_me_instr.dread());
        stream.Dump(MI15r_me_alu_data_b.get_signature(), MI15r_me_alu_data_b.dread());
        stream.Dump(MI13r_me_xpr_dest.get_signature(), MI13r_me_xpr_dest.dread());
        stream.Dump(MI17r_me_xpr_dest_src.get_signature(), MI17r_me_xpr_dest_src.dread());
        stream.Dump(MI11r_me_mem_op.get_signature(), MI11r_me_mem_op.dread());
        stream.Dump(MI12r_me_alu_out.get_signature(), MI12r_me_alu_out.dread());
        stream.Dump(MI17s_me_mem_read_raw.get_signature(), MI17s_me_mem_read_raw.dread());
        stream.Dump(MI13s_me_mem_read.get_signature(), MI13s_me_mem_read.dread());
        stream.Dump(MI13s_me_data_out.get_signature(), MI13s_me_data_out.dread());
        stream.Dump(MI10s_wb_stall.get_signature(), MI10s_wb_stall.dread());
        stream.Dump(MI10s_wb_clear.get_signature(), MI10s_wb_clear.dread());
        stream.Dump(MI7r_wb_pc.get_signature(), MI7r_wb_pc.dread());
        stream.Dump(MI10r_wb_instr.get_signature(), MI10r_wb_instr.dread());
        stream.Dump(MI13r_wb_xpr_dest.get_signature(), MI13r_wb_xpr_dest.dread());
        stream.Dump(MI17r_wb_xpr_dest_src.get_signature(), MI17r_wb_xpr_dest_src.dread());
        stream.Dump(MI13r_wb_data_out.get_signature(), MI13r_wb_data_out.dread());
        stream.Dump(MI12r_wb_alu_out.get_signature(), MI12r_wb_alu_out.dread());
        stream.Dump(MI13r_wb_mem_read.get_signature(), MI13r_wb_mem_read.dread());
        stream.Dump(MI4r_pc.get_signature(), MI4r_pc.dread());
        for (codasip_address_t addr = 0; addr < 32; ++addr) {
            stream.DumpAddr(MI6rf_xpr.get_signature(), MI6rf_xpr.dread(addr), addr,32);
        }
    }
    return true;
}
void Sim::LoadProgram(const Uid addressSpace,const codasip::MaxInt& data,const Address addr,const unsigned int sbi,const unsigned int sbc,const bool isText,const int bw)
{
    switch (addressSpace) {
    case 82:
        MI6as_all_load(data, addr, sbi, sbc, bw);
        return;
    }
    SIM_LOG(LOG_TYPE_ERROR, 0) << "unknown address space: '" << addressSpace << "'" << std::endl;
}
/**
 * \brief DumpResources
 */
void Sim::DumpResources()
{
    MI10s_fe_stall.dump(m_SimCycleCounter);
    MI10s_fe_clear.dump(m_SimCycleCounter);
    MI10s_fe_instr.dump(m_SimCycleCounter);
    MI10s_id_stall.dump(m_SimCycleCounter);
    MI10s_id_clear.dump(m_SimCycleCounter);
    MI7r_id_pc.dump(m_SimCycleCounter);
    MI10r_id_instr.dump(m_SimCycleCounter);
    MI11s_id_opcode.dump(m_SimCycleCounter);
    MI20s_id_extended_opcode.dump(m_SimCycleCounter);
    MI17s_id_rtype_opcode.dump(m_SimCycleCounter);
    MI17s_id_itype_opcode.dump(m_SimCycleCounter);
    MI17s_id_stype_opcode.dump(m_SimCycleCounter);
    MI17s_id_utype_opcode.dump(m_SimCycleCounter);
    MI10s_id_xpr_a.dump(m_SimCycleCounter);
    MI10s_id_xpr_b.dump(m_SimCycleCounter);
    MI13s_id_xpr_dest.dump(m_SimCycleCounter);
    MI12s_id_shamnt5.dump(m_SimCycleCounter);
    MI17s_id_itype_simm12.dump(m_SimCycleCounter);
    MI17s_id_stype_simm12.dump(m_SimCycleCounter);
    MI17s_id_btype_simm12.dump(m_SimCycleCounter);
    MI17s_id_jtype_simm20.dump(m_SimCycleCounter);
    MI17s_id_utype_uimm20.dump(m_SimCycleCounter);
    MI8s_id_imm.dump(m_SimCycleCounter);
    MI8s_id_csr.dump(m_SimCycleCounter);
    MI9s_id_zimm.dump(m_SimCycleCounter);
    MI14s_id_src_a_mux.dump(m_SimCycleCounter);
    MI14s_id_src_b_mux.dump(m_SimCycleCounter);
    MI11s_id_alu_op.dump(m_SimCycleCounter);
    MI11s_id_mem_op.dump(m_SimCycleCounter);
    MI12s_id_jump_op.dump(m_SimCycleCounter);
    MI17s_id_xpr_dest_src.dump(m_SimCycleCounter);
    MI10s_ex_stall.dump(m_SimCycleCounter);
    MI10s_ex_clear.dump(m_SimCycleCounter);
    MI7r_ex_pc.dump(m_SimCycleCounter);
    MI10r_ex_instr.dump(m_SimCycleCounter);
    MI13r_ex_xpr_dest.dump(m_SimCycleCounter);
    MI17r_ex_xpr_dest_src.dump(m_SimCycleCounter);
    MI11r_ex_alu_op.dump(m_SimCycleCounter);
    MI11r_ex_mem_op.dump(m_SimCycleCounter);
    MI12r_ex_jump_op.dump(m_SimCycleCounter);
    MI10r_ex_xpr_a.dump(m_SimCycleCounter);
    MI10r_ex_xpr_b.dump(m_SimCycleCounter);
    MI14r_ex_src_a_mux.dump(m_SimCycleCounter);
    MI14r_ex_src_b_mux.dump(m_SimCycleCounter);
    MI14s_ex_forward_a.dump(m_SimCycleCounter);
    MI23s_ex_xpr_data_a_forward.dump(m_SimCycleCounter);
    MI13s_ex_alu_in_a.dump(m_SimCycleCounter);
    MI14s_ex_forward_b.dump(m_SimCycleCounter);
    MI23s_ex_xpr_data_b_forward.dump(m_SimCycleCounter);
    MI13s_ex_alu_in_b.dump(m_SimCycleCounter);
    MI15r_ex_xpr_data_a.dump(m_SimCycleCounter);
    MI15r_ex_xpr_data_b.dump(m_SimCycleCounter);
    MI8r_ex_imm.dump(m_SimCycleCounter);
    MI12s_ex_alu_out.dump(m_SimCycleCounter);
    MI18s_ex_branch_target.dump(m_SimCycleCounter);
    MI9s_ex_zero.dump(m_SimCycleCounter);
    MI16s_ex_take_branch.dump(m_SimCycleCounter);
    MI10s_me_stall.dump(m_SimCycleCounter);
    MI10s_me_clear.dump(m_SimCycleCounter);
    MI7r_me_pc.dump(m_SimCycleCounter);
    MI10r_me_instr.dump(m_SimCycleCounter);
    MI15r_me_alu_data_b.dump(m_SimCycleCounter);
    MI13r_me_xpr_dest.dump(m_SimCycleCounter);
    MI17r_me_xpr_dest_src.dump(m_SimCycleCounter);
    MI11r_me_mem_op.dump(m_SimCycleCounter);
    MI12r_me_alu_out.dump(m_SimCycleCounter);
    MI17s_me_mem_read_raw.dump(m_SimCycleCounter);
    MI13s_me_mem_read.dump(m_SimCycleCounter);
    MI13s_me_data_out.dump(m_SimCycleCounter);
    MI10s_wb_stall.dump(m_SimCycleCounter);
    MI10s_wb_clear.dump(m_SimCycleCounter);
    MI7r_wb_pc.dump(m_SimCycleCounter);
    MI10r_wb_instr.dump(m_SimCycleCounter);
    MI13r_wb_xpr_dest.dump(m_SimCycleCounter);
    MI17r_wb_xpr_dest_src.dump(m_SimCycleCounter);
    MI13r_wb_data_out.dump(m_SimCycleCounter);
    MI12r_wb_alu_out.dump(m_SimCycleCounter);
    MI13r_wb_mem_read.dump(m_SimCycleCounter);
    MI4r_pc.dump(m_SimCycleCounter);
    MI6rf_xpr.dump(m_SimCycleCounter);
    MI7if_code.dump(m_SimCycleCounter);
    MI7if_data.dump(m_SimCycleCounter);
    for (auto& it : m_RestoreIters) {
        MaxInt data;
        try {
            for(; it != m_DumpIterEnd; ++it) {
                if (it->m_ClockCycle > m_SimCycleCounter) {
                    break;
                }
                auto res = FindResource(it->m_Id);
                if (!res) {
                    SIM_LOG(LOG_TYPE_WARNING, 0) << "Resource " << it->m_Id << " was not found in simulator. Skipping." << std::endl;
                    continue;
                }
                if (!data.AssignFromStringShift(it->m_Data, 16)) {
                    SIM_LOG(LOG_TYPE_ERROR, 0) << "Error during parsing of hexadecimal data on line " << it.GetLine() << ". Skipping." << std::endl;
                    continue;
                }
                res.ResourceWrite(data, it->m_Address);
            }
        }
        catch (std::exception& ex) {
            SIM_LOG(LOG_TYPE_ERROR, 0) << "Error during parsing of restore file: "<< ex.what() << std::endl;
        }
    }
}
void Sim::InvalidateCaches(const bool flush)
{

}
bool Sim::Restore(std::istream& stream,const bool continuous,const std::string& format)
{
    if (format.size() && format != "codasip") { 
        SIM_LOG(LOG_TYPE_ERROR, 0) << "unknown restore format " << format << "." << std::endl;
        return false;
    }
    bool suc = true;
    if (!continuous) {
        DumpStreamIterator it (stream);
        if (it != m_DumpIterEnd) InvalidateCaches(false);
        uint64_t startCC = it->m_ClockCycle;
        if (it->m_ClockCycle != -1) {
            SetCycleCount(it->m_ClockCycle);
        }
        MaxInt data;
        try {
            for(; it != m_DumpIterEnd; ++it) {
                if (it->m_ClockCycle != startCC) {
                    SIM_LOG(LOG_TYPE_WARNING, 0) << "Found multiple clock cycle dumps in restore file. Loaded only first one and the rest will be skipped." << std::endl;
                    break;
                }
                auto res = FindResource(it->m_Id);
                if (!res) {
                    SIM_LOG(LOG_TYPE_WARNING, 0) << "Resource " << it->m_Id << " was not found in simulator. Skipping." << std::endl;
                    continue;
                }
                if (!data.AssignFromStringShift(it->m_Data, 16)) {
                    SIM_LOG(LOG_TYPE_ERROR, 0) << "Error during parsing of hexadecimal data on line " << it.GetLine() << ". Skipping." << std::endl;
                    continue;
                }
                res.ResourceWrite(data, it->m_Address);
            }
        }
        catch (std::exception& ex) {
            SIM_LOG(LOG_TYPE_ERROR, 0) << "Error during parsing of restore file: "<< ex.what() << std::endl;
            suc = false;
        }
        return suc;
    }
    m_RestoreIters.emplace_back(stream);
    return true;
}
bool Sim::ResourceRead(Data* output, unsigned outputLen, const Path& resource, const Address addr)
{
    auto res = FindResource(resource);
    if (!res) {
        SIM_LOG(LOG_TYPE_ERROR, 0) << "unknown resource '" << resource << "'" << std::endl;
        return false;
    }
    auto data = res.ResourceRead(addr);
    IntegerToByteArray(output, outputLen, data);
    return true;
}
bool Sim::ResourceWrite(const Data* data, const unsigned dataLen, const Path& resource, const Address addr)
{
    auto res = FindResource(resource);
    if (!res) {
        SIM_LOG(LOG_TYPE_ERROR, 0) << "unknown resource '" << resource << "'" << std::endl;
        return false;
    }
    codasip::MaxInt dataInt;
    ByteArrayToInteger(dataInt, data, dataLen);
    res.ResourceWrite(dataInt, addr);
    return true;
}
/**
 * \brief GetAsipInfo
 */
bool Sim::GetAsipInfo(Uid* pcUID, Uid* programAsUID, Uid* dataAsUID) const 
{
    if (pcUID) *pcUID = 80;
    if (programAsUID) *programAsUID = 83;
    if (dataAsUID) *dataAsUID = 84;
    return true;
}
void Sim::SetExecutable(const std::string& executable)
{
    m_Executable = executable;
}
bool Sim::LoadExecutable(const std::string& executable, const std::string& arguments)
{
    Loader loader (*this);
    loader.LoadExecutable(executable);
    loader.LoadIntoSimulator(arguments, 0);
    Address entry = loader.GetEntryPoint();
    if (entry != 0llu) {
        SIM_LOG(LOG_TYPE_WARNING, 0) << "entry-point is set to 0x" << std::hex << entry << std::dec << ", but the program counter has value 0x0. Reseting the program counter to the entry-point.";
        MI4r_pc.set_default_value(entry);
        MI4r_pc.dwrite(entry);
    }
    return true;
}
/**
 * \brief codasip_get_clock_cycle
 */
uint64_t Sim::codasip_get_clock_cycle() const 
{
    return m_SimCycleCounter;
}
/**
 * \brief codasip_inc_clock_cycle
 */
void Sim::codasip_inc_clock_cycle(uint64_t val)
{
    m_SimCycleCounter += (val - 1) < val ? val - 1 : 0;
}
void Sim::StackOverflowCheck(const bool enable, const Address main, const Address low, const Address high, const Uid sp, const Address spIndex)
{
    m_OverflowCheck = enable;
    m_OverflowCheckMain = main;
    m_OverflowCheckActive = false;
    m_OverflowCheckStackLow = low;
    m_OverflowCheckStackHigh = high;
    m_OverflowCheckSP = sp;
    m_OverflowCheckSPIndex = spIndex;
    if (enable) {
        SIM_LOG(LOG_TYPE_INFO, 0) << std::showbase << std::hex << "Stack overflow checking enabled, stack range: " << m_OverflowCheckStackLow << " - " << m_OverflowCheckStackHigh;
    }
}
} // namespace MI7RISC_V5
} // namespace simulator
} // namespace codasip
