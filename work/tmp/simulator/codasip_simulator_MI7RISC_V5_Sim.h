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
#ifndef CODASIP_SIMULATOR_MI7RISC_V5_SIM_3_H_
#define CODASIP_SIMULATOR_MI7RISC_V5_SIM_3_H_

#include "simulator_private.h"
#include "simulator_log.h"
#include "csr_include.h"
#include "simulator_helpers.h"
#include <memory>
#include <iomanip>
#include "stringutils.h"
#undef SIM_LOG
#define SIM_LOG(logType, verb) LOG(m_Log, logType, verb)
#include "codasip_resources_MemoryCore_codasip_memory_codasip_mem_RISC_V5_as_all_0_t.h"
#include "locking.h"
#include "watchpoints.h"
#include "disassembler.h"
#include "dsmutils.h"
#include "dump_stream.h"
#include "loader.h"

namespace codasip {
namespace simulator {
namespace MI7RISC_V5 {

/**
 * \class Sim
 */
class Sim : public SimulatorPrivateInterface
 {
private:
    typedef enum {
        CODASIP_SWITCH_UNDEF_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw,
    }parser_switch_t;
    typedef enum {
        MI6ISA_HWIH4_2ID2ID8_6ISA_HW6ISA_HW_MULTIACTIVATION,
        MI14PRINT_PIPELINE_MULTIACTIVATION,
        MI12PIPE_CONTROLIH15_12PIPE_CONTROL12PIPE_CONTROL_MULTIACTIVATION,
        MI2EXIH4_2EX2EX_MULTIACTIVATION,
        MI9EX_OUTPUTIH11_9EX_OUTPUT9EX_OUTPUT_MULTIACTIVATION,
        MI9EX_BRANCHIH11_9EX_BRANCH9EX_BRANCH_MULTIACTIVATION,
        MI2FEIH4_2FE2FE_MULTIACTIVATION,
        MI9FE_OUTPUTIH11_9FE_OUTPUT9FE_OUTPUT_MULTIACTIVATION,
        MI12FE_CLEAR_CTLIH15_12FE_CLEAR_CTL12FE_CLEAR_CTL_MULTIACTIVATION,
        MI2IDIH4_2ID2ID_MULTIACTIVATION,
        MI9ID_OUTPUTIH11_9ID_OUTPUT9ID_OUTPUT_MULTIACTIVATION,
        MI2MEIH4_2ME2ME_MULTIACTIVATION,
        MI9ME_OUTPUTIH11_9ME_OUTPUT9ME_OUTPUT_MULTIACTIVATION,
        MI2WBIH4_2WB2WB_MULTIACTIVATION,
    }MultipleActivationCheckersEnum;
    Path m_Path;
    std::string m_Name;
    Uid m_Uid;
    uint64_t m_SimCycleCounter;
    resources::Index m_CheckerLevel;
    mutable Log m_Log;
    uint64_t m_SimCycleTimeout;
    int m_Halt;
    bool m_Started;
    ThreadId m_ThreadId;
    std::string m_ExitMsg;
public:
    resources::codasip_memory_codasip_mem_RISC_V5_as_all_0_t* m_MemoryShorcut_MI28codasip_mem_RISC_V5_as_all_0;
private:
    DebuggerInterface* m_Debugger;
    bool m_Resume;
    synchronization::ConditionVariable m_ResumeCV;
    synchronization::ReentrantMutex m_ResumeMutex;
    volatile bool m_IsStepMode;
    resources::HashMapSelector<32, bool>::type m_BreakPoints;
    WatchpointListener m_Watchpoints;
    EventInfo m_EventInfo;
    disassembler::Disassembler* m_Disassembler;
    int idecstate;
    bool m_MultipleActivation[14];
    DumpStreamIterator m_DumpIterEnd;
    std::vector<DumpStreamIterator> m_RestoreIters;
    resources::Signal<resources::Dumper<resources::VariableStorage<codasip::Integer<1, false> > > > MI10s_fe_stall;
    resources::Signal<resources::Dumper<resources::VariableStorage<codasip::Integer<1, false> > > > MI10s_fe_clear;
    resources::Signal<resources::Dumper<resources::VariableStorage<uint32_t > > > MI10s_fe_instr;
    resources::Signal<resources::Dumper<resources::VariableStorage<codasip::Integer<1, false> > > > MI10s_id_stall;
    resources::Signal<resources::Dumper<resources::VariableStorage<codasip::Integer<1, false> > > > MI10s_id_clear;
    resources::Register<resources::Dumper<resources::DffStorage<uint32_t > > > MI7r_id_pc;
    resources::Register<resources::Dumper<resources::DffStorage<uint32_t > > > MI10r_id_instr;
    resources::Signal<resources::Dumper<resources::VariableStorage<codasip::Integer<7, false> > > > MI11s_id_opcode;
    resources::Signal<resources::Dumper<resources::VariableStorage<codasip::Integer<17, false> > > > MI20s_id_extended_opcode;
    resources::Signal<resources::Dumper<resources::VariableStorage<codasip::Integer<17, false> > > > MI17s_id_rtype_opcode;
    resources::Signal<resources::Dumper<resources::VariableStorage<codasip::Integer<10, false> > > > MI17s_id_itype_opcode;
    resources::Signal<resources::Dumper<resources::VariableStorage<codasip::Integer<10, false> > > > MI17s_id_stype_opcode;
    resources::Signal<resources::Dumper<resources::VariableStorage<codasip::Integer<7, false> > > > MI17s_id_utype_opcode;
    resources::Signal<resources::Dumper<resources::VariableStorage<codasip::Integer<5, false> > > > MI10s_id_xpr_a;
    resources::Signal<resources::Dumper<resources::VariableStorage<codasip::Integer<5, false> > > > MI10s_id_xpr_b;
    resources::Signal<resources::Dumper<resources::VariableStorage<codasip::Integer<5, false> > > > MI13s_id_xpr_dest;
    resources::Signal<resources::Dumper<resources::VariableStorage<codasip::Integer<5, false> > > > MI12s_id_shamnt5;
    resources::Signal<resources::Dumper<resources::VariableStorage<codasip::Integer<12, false> > > > MI17s_id_itype_simm12;
    resources::Signal<resources::Dumper<resources::VariableStorage<codasip::Integer<12, false> > > > MI17s_id_stype_simm12;
    resources::Signal<resources::Dumper<resources::VariableStorage<codasip::Integer<12, false> > > > MI17s_id_btype_simm12;
    resources::Signal<resources::Dumper<resources::VariableStorage<codasip::Integer<20, false> > > > MI17s_id_jtype_simm20;
    resources::Signal<resources::Dumper<resources::VariableStorage<codasip::Integer<20, false> > > > MI17s_id_utype_uimm20;
    resources::Signal<resources::Dumper<resources::VariableStorage<uint32_t > > > MI8s_id_imm;
    resources::Signal<resources::Dumper<resources::VariableStorage<codasip::Integer<12, false> > > > MI8s_id_csr;
    resources::Signal<resources::Dumper<resources::VariableStorage<codasip::Integer<5, false> > > > MI9s_id_zimm;
    resources::Signal<resources::Dumper<resources::VariableStorage<codasip::Integer<1, false> > > > MI14s_id_src_a_mux;
    resources::Signal<resources::Dumper<resources::VariableStorage<codasip::Integer<2, false> > > > MI14s_id_src_b_mux;
    resources::Signal<resources::Dumper<resources::VariableStorage<codasip::Integer<4, false> > > > MI11s_id_alu_op;
    resources::Signal<resources::Dumper<resources::VariableStorage<codasip::Integer<4, false> > > > MI11s_id_mem_op;
    resources::Signal<resources::Dumper<resources::VariableStorage<codasip::Integer<2, false> > > > MI12s_id_jump_op;
    resources::Signal<resources::Dumper<resources::VariableStorage<codasip::Integer<2, false> > > > MI17s_id_xpr_dest_src;
    resources::Signal<resources::Dumper<resources::VariableStorage<codasip::Integer<1, false> > > > MI10s_ex_stall;
    resources::Signal<resources::Dumper<resources::VariableStorage<codasip::Integer<1, false> > > > MI10s_ex_clear;
    resources::Register<resources::Dumper<resources::DffStorage<uint32_t > > > MI7r_ex_pc;
    resources::Register<resources::Dumper<resources::DffStorage<uint32_t > > > MI10r_ex_instr;
    resources::Register<resources::Dumper<resources::DffStorage<codasip::Integer<5, false> > > > MI13r_ex_xpr_dest;
    resources::Register<resources::Dumper<resources::DffStorage<codasip::Integer<5, false> > > > MI17r_ex_xpr_dest_src;
    resources::Register<resources::Dumper<resources::DffStorage<codasip::Integer<4, false> > > > MI11r_ex_alu_op;
    resources::Register<resources::Dumper<resources::DffStorage<codasip::Integer<4, false> > > > MI11r_ex_mem_op;
    resources::Register<resources::Dumper<resources::DffStorage<codasip::Integer<2, false> > > > MI12r_ex_jump_op;
    resources::Register<resources::Dumper<resources::DffStorage<codasip::Integer<5, false> > > > MI10r_ex_xpr_a;
    resources::Register<resources::Dumper<resources::DffStorage<codasip::Integer<5, false> > > > MI10r_ex_xpr_b;
    resources::Register<resources::Dumper<resources::DffStorage<codasip::Integer<1, false> > > > MI14r_ex_src_a_mux;
    resources::Register<resources::Dumper<resources::DffStorage<codasip::Integer<2, false> > > > MI14r_ex_src_b_mux;
    resources::Signal<resources::Dumper<resources::VariableStorage<codasip::Integer<2, false> > > > MI14s_ex_forward_a;
    resources::Signal<resources::Dumper<resources::VariableStorage<uint32_t > > > MI23s_ex_xpr_data_a_forward;
    resources::Signal<resources::Dumper<resources::VariableStorage<uint32_t > > > MI13s_ex_alu_in_a;
    resources::Signal<resources::Dumper<resources::VariableStorage<codasip::Integer<2, false> > > > MI14s_ex_forward_b;
    resources::Signal<resources::Dumper<resources::VariableStorage<uint32_t > > > MI23s_ex_xpr_data_b_forward;
    resources::Signal<resources::Dumper<resources::VariableStorage<uint32_t > > > MI13s_ex_alu_in_b;
    resources::Register<resources::Dumper<resources::DffStorage<uint32_t > > > MI15r_ex_xpr_data_a;
    resources::Register<resources::Dumper<resources::DffStorage<uint32_t > > > MI15r_ex_xpr_data_b;
    resources::Register<resources::Dumper<resources::DffStorage<uint32_t > > > MI8r_ex_imm;
    resources::Signal<resources::Dumper<resources::VariableStorage<uint32_t > > > MI12s_ex_alu_out;
    resources::Signal<resources::Dumper<resources::VariableStorage<uint32_t > > > MI18s_ex_branch_target;
    resources::Signal<resources::Dumper<resources::VariableStorage<codasip::Integer<1, false> > > > MI9s_ex_zero;
    resources::Signal<resources::Dumper<resources::VariableStorage<codasip::Integer<1, false> > > > MI16s_ex_take_branch;
    resources::Signal<resources::Dumper<resources::VariableStorage<codasip::Integer<1, false> > > > MI10s_me_stall;
    resources::Signal<resources::Dumper<resources::VariableStorage<codasip::Integer<1, false> > > > MI10s_me_clear;
    resources::Register<resources::Dumper<resources::DffStorage<uint32_t > > > MI7r_me_pc;
    resources::Register<resources::Dumper<resources::DffStorage<uint32_t > > > MI10r_me_instr;
    resources::Register<resources::Dumper<resources::DffStorage<uint32_t > > > MI15r_me_alu_data_b;
    resources::Register<resources::Dumper<resources::DffStorage<codasip::Integer<5, false> > > > MI13r_me_xpr_dest;
    resources::Register<resources::Dumper<resources::DffStorage<codasip::Integer<2, false> > > > MI17r_me_xpr_dest_src;
    resources::Register<resources::Dumper<resources::DffStorage<codasip::Integer<4, false> > > > MI11r_me_mem_op;
    resources::Register<resources::Dumper<resources::DffStorage<uint32_t > > > MI12r_me_alu_out;
    resources::Signal<resources::Dumper<resources::VariableStorage<uint32_t > > > MI17s_me_mem_read_raw;
    resources::Signal<resources::Dumper<resources::VariableStorage<uint32_t > > > MI13s_me_mem_read;
    resources::Signal<resources::Dumper<resources::VariableStorage<uint32_t > > > MI13s_me_data_out;
    resources::Signal<resources::Dumper<resources::VariableStorage<codasip::Integer<1, false> > > > MI10s_wb_stall;
    resources::Signal<resources::Dumper<resources::VariableStorage<codasip::Integer<1, false> > > > MI10s_wb_clear;
    resources::Register<resources::Dumper<resources::DffStorage<uint32_t > > > MI7r_wb_pc;
    resources::Register<resources::Dumper<resources::DffStorage<uint32_t > > > MI10r_wb_instr;
    resources::Register<resources::Dumper<resources::DffStorage<codasip::Integer<5, false> > > > MI13r_wb_xpr_dest;
    resources::Register<resources::Dumper<resources::DffStorage<codasip::Integer<2, false> > > > MI17r_wb_xpr_dest_src;
    resources::Register<resources::Dumper<resources::DffStorage<uint32_t > > > MI13r_wb_data_out;
    resources::Register<resources::Dumper<resources::DffStorage<uint32_t > > > MI12r_wb_alu_out;
    resources::Register<resources::Dumper<resources::DffStorage<uint32_t > > > MI13r_wb_mem_read;
    resources::Register<resources::Dumper<resources::DffStorage<uint32_t > > > MI4r_pc;
public:
    resources::RegisterFile<resources::Dumper<resources::DffStorage<uint32_t, 32> > > MI6rf_xpr;
private:
    AddressSpaceInfo MI6as_all_virt_program;
    AddressSpaceInfo MI6as_all_virt_data;
    AddressSpaceInfo MI6as_all;
public:
    resources::Interface<resources::Dumper<resources::PayloadSentinel<uint32_t, 8, 32, resources::CP_LITTLE_ENDIAN> > > MI7if_code;
    resources::Interface<resources::WatchpointDetector<resources::Dumper<resources::PayloadSentinel<uint32_t, 8, 32, resources::CP_LITTLE_ENDIAN> > > > MI7if_data;
private:
    resources::Signal<resources::VariableStorage<codasip::Integer<17, false> > > MI65codasip_return_MI7opc_aluIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc;
    resources::Signal<resources::VariableStorage<codasip::Integer<10, false> > > MI70codasip_return_MI9opc_alu_iIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc;
    resources::Signal<resources::VariableStorage<codasip::Integer<17, false> > > MI70codasip_return_MI9opc_shiftIH4_2id2id8_6isa_hw6isa_hw11_9opc_shift3opc;
    resources::Signal<resources::VariableStorage<codasip::Integer<10, false> > > MI74codasip_return_MI10opc_branchIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc;
    resources::Signal<resources::VariableStorage<codasip::Integer<10, false> > > MI68codasip_return_MI8opc_loadIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc;
    resources::Signal<resources::VariableStorage<codasip::Integer<10, false> > > MI70codasip_return_MI9opc_storeIH4_2id2id8_6isa_hw6isa_hw11_9opc_store3opc;
    resources::Signal<resources::VariableStorage<codasip::Integer<7, false> > > MI80codasip_return_MI13opc_upper_immIH4_2id2id8_6isa_hw6isa_hw16_13opc_upper_imm3opc;
    resources::Signal<resources::VariableStorage<codasip::Integer<7, false> > > MI68codasip_return_MI8opc_haltIH4_2id2id8_6isa_hw6isa_hw10_8opc_halt3opc;
    resources::Signal<resources::VariableStorage<codasip::Integer<7, false> > > MI76codasip_return_MI11opc_syscallIH4_2id2id8_6isa_hw6isa_hw14_11opc_syscall3opc;
    resources::Signal<resources::VariableStorage<codasip::Integer<7, false> > > MI65codasip_return_MI7opc_jalIH4_2id2id8_6isa_hw6isa_hw9_7opc_jal3opc;
    resources::Signal<resources::VariableStorage<codasip::Integer<10, false> > > MI68codasip_return_MI8opc_jalrIH4_2id2id8_6isa_hw6isa_hw10_8opc_jalr3opc;
    resources::Signal<resources::VariableStorage<codasip::Integer<17, false> > > MI11INSTRUCTIONIH4_2id2id8_6isa_hw6isa_hw1_6isa_hw;
    resources::Signal<resources::VariableStorage<codasip::Integer<17, false> > > MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_8i_hw_alu;
    resources::Signal<resources::VariableStorage<codasip::Integer<10, false> > > MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_10i_hw_alu_i;
    resources::Signal<resources::VariableStorage<codasip::Integer<17, false> > > MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_10i_hw_shift;
    resources::Signal<resources::VariableStorage<codasip::Integer<10, false> > > MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_11i_hw_branch;
    resources::Signal<resources::VariableStorage<codasip::Integer<10, false> > > MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_9i_hw_load;
    resources::Signal<resources::VariableStorage<codasip::Integer<10, false> > > MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_10i_hw_store;
    resources::Signal<resources::VariableStorage<codasip::Integer<7, false> > > MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_14i_hw_upper_imm;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_0IH15_12pipe_control12pipe_control1_12pipe_control;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_2IH15_12pipe_control12pipe_control1_12pipe_control;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_4IH15_12pipe_control12pipe_control1_12pipe_control;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_6IH15_12pipe_control12pipe_control1_12pipe_control;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_8IH15_12pipe_control12pipe_control1_12pipe_control;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_1IH15_12pipe_control12pipe_control1_12pipe_control;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_3IH15_12pipe_control12pipe_control1_12pipe_control;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_5IH15_12pipe_control12pipe_control1_12pipe_control;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_7IH15_12pipe_control12pipe_control1_12pipe_control;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_9IH15_12pipe_control12pipe_control1_12pipe_control;
    resources::Signal<resources::VariableStorage<codasip::Integer<2, false> > > MI17codasip_tmp_var_0IH4_2ex2ex1_2ex;
    resources::Signal<resources::VariableStorage<codasip::Integer<2, false> > > MI17codasip_tmp_var_1IH4_2ex2ex1_2ex;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_2IH4_2ex2ex1_2ex;
    resources::Signal<resources::VariableStorage<codasip::Integer<2, false> > > MI17codasip_tmp_var_3IH4_2ex2ex1_2ex;
    resources::Signal<resources::VariableStorage<codasip::Integer<4, false> > > MI17codasip_tmp_var_4IH4_2ex2ex1_2ex;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_0IH4_2fe2fe1_2fe;
    resources::Signal<resources::VariableStorage<codasip::Integer<7, false> > > MI17codasip_tmp_var_0IH4_2id2id1_2id;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_1IH4_2id2id1_2id;
    resources::Signal<resources::VariableStorage<uint32_t > > MI8data_memIH4_2me2me1_2meB0;
    resources::Signal<resources::VariableStorage<codasip::Integer<3, false> > > MI11request_cmdIH4_2me2me1_2meB0;
    resources::Signal<resources::VariableStorage<codasip::Integer<3, false> > > MI10byte_countIH4_2me2me1_2meB0;
    resources::Signal<resources::VariableStorage<codasip::Integer<4, false> > > MI17codasip_tmp_var_0IH4_2me2me1_2me;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_1IH4_2me2me1_2me;
    resources::Signal<resources::VariableStorage<codasip::Integer<2, false> > > MI17codasip_tmp_var_5IH4_2me2me1_2me;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_2IH4_2me2me1_2me;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_3IH4_2me2me1_2me;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_4IH4_2me2me1_2me;
    resources::Signal<resources::VariableStorage<codasip::Integer<1, false> > > MI17codasip_tmp_var_0IH4_2wb2wb1_2wb;
    std::string m_Executable;
    bool m_OverflowCheck;
    Address m_OverflowCheckMain;
    bool m_OverflowCheckActive;
    Address m_OverflowCheckStackLow;
    Address m_OverflowCheckStackHigh;
    Uid m_OverflowCheckSP;
    Address m_OverflowCheckSPIndex;
public:
    /**
     * \brief Sim
     */
    Sim(const std::string& name, const Uid uid);
    /**
     * \brief ClockCycle
     */
    int ClockCycle();
    /**
     * \brief Reset
     */
    int Reset();
    /**
     * \brief GetPath
     */
    const Path& GetPath() const ;
    /**
     * \brief GetName
     */
    const std::string& GetName() const ;
    /**
     * \brief GetUid
     */
    Uid GetUid() const ;
    /**
     * \brief GetCycleCount
     */
    uint64_t GetCycleCount() const ;
    /**
     * \brief SetCycleCount
     */
    void SetCycleCount(const uint64_t val);
    /**
     * \brief SetLogging
     */
    void SetLogging(const LogType type, const std::string& options);
    /**
     * \brief GetLastError
     */
    const std::string& GetLastError() const ;
    /**
     * \brief Elaborate
     */
    void Elaborate(Log& parentLog);
    /**
     * \brief Run
     */
    int Run();
    /**
     * \brief GetType
     */
    Type GetType() const ;
    /**
     * \brief GetSimulator
     */
    SimulatorPrivateInterface* GetSimulator() const ;
    /**
     * \brief GetFeatures
     */
    SimulatorPrivateInterface::Features GetFeatures() const ;
    /**
     * \brief SetTimeout
     */
    void SetTimeout(const uint64_t timeout);
    /**
     * \brief PmuClockCycle
     */
    void PmuClockCycle();
    /**
     * \brief Register
     */
    void Register(DebuggerInterface& iface);
    /**
     * \brief SetDebugger
     */
    void SetDebugger(DebuggerInterface& iface);
private:
    void StopInDebugger(const EventType event = simulator::EVENT_STEP,simulator::Address codalAddr = simulator::INVALID_ADDRESS);
public:
    /**
     * \brief Kill
     */
    void Kill();
    /**
     * \brief Interrupt
     */
    void Interrupt();
    /**
     * \brief SetBreakpoint
     */
    void SetBreakpoint(const BreakpointInfo& info);
    /**
     * \brief SetThreadStepMode
     */
    void SetThreadStepMode(const ThreadId tid, const bool stepMode);
    /**
     * \brief SetDebugLevel
     */
    void SetDebugLevel(const DebugLevel level);
    /**
     * \brief Resume
     */
    void Resume();
private:
    void CodalWatchpoint(const Address addr);
public:
    /**
     * \brief SetWatchpoint
     */
    bool SetWatchpoint(const WatchpointInfo& info);
private:
    void codasip_debugger();
public:
    /**
     * \brief ~Sim
     */
    ~Sim();
private:
    template<class T> std::string codasip_disassembler(const int&, const T& input, const codasip_address_t address = 0, const std::string& isa = "default");
public:
    /**
     * \brief CreateDisassembler
     */
    disassembler::Disassembler* CreateDisassembler() const ;
    /**
     * \brief SetCallstackUnwinder
     */
    void SetCallstackUnwinder(debugger::UnwinderWrapper* wrapper);
    /**
     * \brief InitProfiler
     */
    void InitProfiler(const std::string& output, const unsigned int samplingRate,const bool enabledCallStack,const std::set<unsigned int>& sequenceLengths);
    /**
     * \brief Parser_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw
     */
    int Parser_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw(const uint32_t input);
private:
    int Parser_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw_bs_7(const uint32_t input);
    int Parser_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw_bs_10(const uint32_t input);
    int Parser_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw_bs_17(const uint32_t input);
    void SwitchClean_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw();
    void MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw(const uint32_t input);
    void MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw();
    void MI9i_hw_haltIH4_2id2id8_6isa_hw6isa_hw();
    void MI12i_hw_syscallIH4_2id2id8_6isa_hw6isa_hw();
    void MI8i_hw_aluIH4_2id2id8_6isa_hw6isa_hw();
    void MI10i_hw_alu_iIH4_2id2id8_6isa_hw6isa_hw();
    void MI10i_hw_shiftIH4_2id2id8_6isa_hw6isa_hw();
    void MI11i_hw_branchIH4_2id2id8_6isa_hw6isa_hw();
    void MI8i_hw_jalIH4_2id2id8_6isa_hw6isa_hw();
    void MI9i_hw_jalrIH4_2id2id8_6isa_hw6isa_hw();
    void MI9i_hw_loadIH4_2id2id8_6isa_hw6isa_hw();
    void MI10i_hw_storeIH4_2id2id8_6isa_hw6isa_hw();
    void MI14i_hw_upper_immIH4_2id2id8_6isa_hw6isa_hw();
    void MI4main();
    void MI5reset();
    bool IsResetFinished() const ;
    void MI14print_pipeline();
    void MI12pipe_controlIH15_12pipe_control12pipe_control();
    void MI2exIH4_2ex2ex();
    void MI9ex_outputIH11_9ex_output9ex_output();
    void MI9ex_branchIH11_9ex_branch9ex_branch();
    void MI2feIH4_2fe2fe();
    void MI9fe_outputIH11_9fe_output9fe_output();
    void MI12fe_clear_ctlIH15_12fe_clear_ctl12fe_clear_ctl();
    void MI2idIH4_2id2id();
    void MI9id_outputIH11_9id_output9id_output();
    void MI2meIH4_2me2me();
    void MI9me_outputIH11_9me_output9me_output();
    void MI2wbIH4_2wb2wb();
    void MI8opc_haltIH4_2id2id8_6isa_hw6isa_hw10_8opc_halt3opc();
    void MI11opc_syscallIH4_2id2id8_6isa_hw6isa_hw14_11opc_syscall3opc();
    void MI7opc_addIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc();
    void MI7opc_sltIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc();
    void MI8opc_sltuIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc();
    void MI7opc_andIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc();
    void MI6opc_orIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc();
    void MI7opc_xorIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc();
    void MI7opc_sllIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc();
    void MI7opc_srlIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc();
    void MI7opc_subIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc();
    void MI7opc_sraIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc();
    void MI8opc_addiIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc();
    void MI8opc_sltiIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc();
    void MI9opc_sltiuIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc();
    void MI8opc_andiIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc();
    void MI7opc_oriIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc();
    void MI8opc_xoriIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc();
    void MI8opc_slliIH4_2id2id8_6isa_hw6isa_hw11_9opc_shift3opc();
    void MI8opc_srliIH4_2id2id8_6isa_hw6isa_hw11_9opc_shift3opc();
    void MI8opc_sraiIH4_2id2id8_6isa_hw6isa_hw11_9opc_shift3opc();
    void MI7opc_beqIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc();
    void MI7opc_bneIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc();
    void MI7opc_bltIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc();
    void MI8opc_bltuIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc();
    void MI7opc_bgeIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc();
    void MI8opc_bgeuIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc();
    void MI7opc_jalIH4_2id2id8_6isa_hw6isa_hw9_7opc_jal3opc();
    void MI8opc_jalrIH4_2id2id8_6isa_hw6isa_hw10_8opc_jalr3opc();
    void MI6opc_lbIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc();
    void MI6opc_lhIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc();
    void MI6opc_lwIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc();
    void MI7opc_lbuIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc();
    void MI7opc_lhuIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc();
    void MI6opc_sbIH4_2id2id8_6isa_hw6isa_hw11_9opc_store3opc();
    void MI6opc_shIH4_2id2id8_6isa_hw6isa_hw11_9opc_store3opc();
    void MI6opc_swIH4_2id2id8_6isa_hw6isa_hw11_9opc_store3opc();
    void MI7opc_luiIH4_2id2id8_6isa_hw6isa_hw16_13opc_upper_imm3opc();
    void MI9opc_auipcIH4_2id2id8_6isa_hw6isa_hw16_13opc_upper_imm3opc();
    void fnc_rtl_clock_cycle();
    void ClearMultuactivationCheckers();
public:
    /**
     * \brief ResourceRead
     */
    MaxInt ResourceRead(const Uid resource, const Address addr);
    /**
     * \brief ResourceRead
     */
    MaxInt ResourceRead(const Uid resource, const Address addr, const unsigned sbi, const unsigned sbc);
    /**
     * \brief ResourceWrite
     */
    void ResourceWrite(const Uid resource, const MaxInt& data, const Address addr);
    /**
     * \brief ResourceWrite
     */
    void ResourceWrite(const Uid resource, const MaxInt& data, const Address addr, const unsigned sbi, const unsigned sbc);
    /**
     * \brief ResourceStats
     */
    uint64_t ResourceStats(const Uid resource, const profiler::AccessType type, const Address addr) const ;
    /**
     * \brief Dump
     */
    bool Dump(DumpStream& stream,const std::vector<Uid>& resources,const bool continuous = false);
    /**
     * \brief LoadProgram
     */
    void LoadProgram(const Uid addressSpace,const codasip::MaxInt& data,const Address addr,const unsigned int sbi,const unsigned int sbc,const bool isText,const int bw);
private:
    void DumpResources();
public:
    /**
     * \brief InvalidateCaches
     */
    void InvalidateCaches(const bool flush);
    /**
     * \brief Restore
     */
    bool Restore(std::istream& stream,const bool continuous = false,const std::string& format = std::string());
private:
    void MI4pipe_MI2FE_MI5stall();
    void MI4pipe_MI2FE_MI5clear();
    void MI4pipe_MI2ID_MI5stall();
    void MI4pipe_MI2ID_MI5clear();
    void MI4pipe_MI2EX_MI5stall();
    void MI4pipe_MI2EX_MI5clear();
    void MI4pipe_MI2ME_MI5stall();
    void MI4pipe_MI2ME_MI5clear();
    void MI4pipe_MI2WB_MI5stall();
    void MI4pipe_MI2WB_MI5clear();
    void SignalsClockCycle();
public:
    /**
     * \brief RegistersClockCycle
     */
    void RegistersClockCycle();
private:
    void MI6as_all_load(const MaxInt& data, const codasip_address_t addr, const resources::Index sbi, const resources::Index sbc, const int xexe_bw);
    MaxInt MI6as_all_dread(const codasip_address_t addr,const resources::Index sbi = 0, const resources::Index sbc = 4);
    void MI6as_all_dwrite(const MaxInt& data, const codasip_address_t addr,const resources::Index sbi = 0, const resources::Index sbc = 4);
    MaxInt MI6as_all_program_dread(const codasip_address_t addr,const resources::Index sbi = 0, const resources::Index sbc = 4);
    void MI6as_all_program_dwrite(const MaxInt& data, const codasip_address_t addr,const resources::Index sbi = 0, const resources::Index sbc = 4);
    MaxInt MI6as_all_data_dread(const codasip_address_t addr,const resources::Index sbi = 0, const resources::Index sbc = 4);
    void MI6as_all_data_dwrite(const MaxInt& data, const codasip_address_t addr,const resources::Index sbi = 0, const resources::Index sbc = 4);
    void InterfacesClockCycle();
public:
    /**
     * \brief ResourceRead
     */
    bool ResourceRead(Data* output, unsigned outputLen, const Path& resource, const Address addr = 0);
    /**
     * \brief ResourceWrite
     */
    bool ResourceWrite(const Data* data, const unsigned dataLen, const Path& resource, const Address addr = 0);
private:
    bool GetAsipInfo(Uid* pcUID, Uid* programAsUID, Uid* dataAsUID) const ;
public:
    /**
     * \brief SetExecutable
     */
    void SetExecutable(const std::string& executable);
    /**
     * \brief LoadExecutable
     */
    bool LoadExecutable(const std::string& executable, const std::string& arguments);
private:
    void PortsClockCycle();
    void CheckStackOverflow();
    uint64_t codasip_get_clock_cycle() const ;
    void codasip_inc_clock_cycle(uint64_t val);
    void codasip_halt();
public:
    /**
     * \brief StackOverflowCheck
     */
    void StackOverflowCheck(const bool enable, const Address main, const Address low, const Address high, const Uid sp, const Address spIndex = 0);
};
inline int Sim::ClockCycle()
{
    int rc = SIM_OK;
    ClearMultuactivationCheckers();
    if (m_Halt != SIM_OK) return m_Halt;
    try {
        if (!m_Started) {
            if (m_Debugger) {
                m_Debugger->ThreadStarted(*this,m_ThreadId);
            }
            m_Started = true;
        }
        codasip_debugger();
        SignalsClockCycle();
        InterfacesClockCycle();
        fnc_rtl_clock_cycle();
        PortsClockCycle();
        MI4main();
        PmuClockCycle();
        RegistersClockCycle();
        CheckStackOverflow();
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
    if (m_SimCycleCounter >= m_SimCycleTimeout) {
        return SIM_HALT;
    }
    return m_Halt;
}
inline uint64_t Sim::GetCycleCount() const 
{
    return m_SimCycleCounter;
}
inline void Sim::PmuClockCycle()
{

}
/**
 * \brief CodalWatchpoint
 */
inline void Sim::CodalWatchpoint(const Address addr)
{

}
/**
 * \brief codasip_debugger
 */
inline void Sim::codasip_debugger()
{
    const Address addr = MI4r_pc.dread();
    if(addr & (~(BitMask<codasip_address_t>(32))))
        throw codasip::exceptions::CGeneralError("breakpoint address is out of range");

    bool stop = false;
    if (m_Watchpoints.IsHit(m_EventInfo, 0)) {
        m_EventInfo.SetAddress(addr);
        stop = true;
    }
    else if (m_BreakPoints[addr]) {
        m_EventInfo.SetAddress(addr);
        m_EventInfo.SetReason(EVENT_BREAKPOINT);
        stop = true;
    }
    else if (m_IsStepMode) {
        m_EventInfo.SetAddress(addr);
        m_EventInfo.SetReason(EVENT_STEP);
        stop = true;
    }
    if(stop) {
        m_Resume = false;
        if(m_Debugger && m_Debugger->HandleEvent(*this, m_EventInfo)) {
            synchronization::ScopedLock<synchronization::ReentrantMutex> lock(m_ResumeMutex);
            while (!m_Resume && m_Halt != SIM_KILLED)
                m_ResumeCV.Wait(lock);
            m_Resume = false;
            if (m_Halt == SIM_KILLED) 
                throw codasip::exceptions::CGeneralError("");
        }
    }
}
/**
 * \brief codasip_disassembler
 */
template<class T> std::string Sim::codasip_disassembler(const int&, const T& input, const codasip_address_t address, const std::string& isa)
{
    disassembler::Instructions output;
    const size_t inputSize = resources::BitWidthTypeSelector<T>::value;
    m_Disassembler->Disassemble(output, input, inputSize, address, 8, isa.c_str());
    if (output.size())
    {
        return output.at(0).GetText();
    }
    std::stringstream ss;
    ss << "disassembler: failed for the input: " << std::hex << "0x" << input << std::dec << ".";
    return ss.str();
}
inline int Sim::Parser_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw(const uint32_t input)
{
        if (Parser_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw_bs_7(input) == INSTPARSER_OK) return INSTPARSER_OK;
        if (Parser_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw_bs_10(input) == INSTPARSER_OK) return INSTPARSER_OK;
        if (Parser_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw_bs_17(input) == INSTPARSER_OK) return INSTPARSER_OK;
        return INSTPARSER_INVALIDCODE;
}
/**
 * \brief SwitchClean_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw
 */
inline void Sim::SwitchClean_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw()
{

}
/**
 * \brief MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw
 */
inline void Sim::MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw(const uint32_t input)
{
    int ret = Parser_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw(input);
    if (ret != INSTPARSER_OK) {
        m_Halt = ret;
    }
    MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw();
}
/**
 * \brief MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw
 */
inline void Sim::MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw()
{
    if (m_CheckerLevel == 0 && m_MultipleActivation[MI6ISA_HWIH4_2ID2ID8_6ISA_HW6ISA_HW_MULTIACTIVATION]) 
    {
        SIM_LOG(LOG_TYPE_ERROR, 0) << ": isa_hw: multiple activation in the same clock cycle." << std::endl;
    }
    m_MultipleActivation[MI6ISA_HWIH4_2ID2ID8_6ISA_HW6ISA_HW_MULTIACTIVATION] = true;
}
/**
 * \brief MI9i_hw_haltIH4_2id2id8_6isa_hw6isa_hw
 */
inline void Sim::MI9i_hw_haltIH4_2id2id8_6isa_hw6isa_hw()
{
    MI14s_id_src_b_mux.write(codasip::Integer<1, false>(0u));
    MI8s_id_imm.write(int32_t(0l));
    MI11s_id_mem_op.write(codasip::Integer<1, false>(0u));
    MI12s_id_jump_op.write(codasip::Integer<1, false>(0u));
    MI17s_id_xpr_dest_src.write(codasip::Integer<1, false>(0u));
    MI11s_id_alu_op.write(codasip::Integer<1, false>(0u));
}
/**
 * \brief MI12i_hw_syscallIH4_2id2id8_6isa_hw6isa_hw
 */
inline void Sim::MI12i_hw_syscallIH4_2id2id8_6isa_hw6isa_hw()
{
    MI14s_id_src_b_mux.write(codasip::Integer<1, false>(0u));
    MI8s_id_imm.write(int32_t(0l));
    MI11s_id_mem_op.write(codasip::Integer<1, false>(0u));
    MI12s_id_jump_op.write(codasip::Integer<1, false>(0u));
    MI17s_id_xpr_dest_src.write(codasip::Integer<1, false>(0u));
    MI11s_id_alu_op.write(codasip::Integer<1, false>(0u));
}
/**
 * \brief MI8i_hw_jalIH4_2id2id8_6isa_hw6isa_hw
 */
inline void Sim::MI8i_hw_jalIH4_2id2id8_6isa_hw6isa_hw()
{
    MI14s_id_src_b_mux.write(codasip::Integer<1, false>(0u));
    MI8s_id_imm.write(int32_t(0l));
    MI11s_id_mem_op.write(codasip::Integer<1, false>(0u));
    MI12s_id_jump_op.write(codasip::Integer<1, false>(1u));
    MI17s_id_xpr_dest_src.write(codasip::Integer<1, false>(0u));
    MI11s_id_alu_op.write(codasip::Integer<1, false>(0u));
}
/**
 * \brief MI9i_hw_jalrIH4_2id2id8_6isa_hw6isa_hw
 */
inline void Sim::MI9i_hw_jalrIH4_2id2id8_6isa_hw6isa_hw()
{
    MI14s_id_src_b_mux.write(codasip::Integer<1, false>(0u));
    MI8s_id_imm.write(int32_t(0l));
    MI11s_id_mem_op.write(codasip::Integer<1, false>(0u));
    MI12s_id_jump_op.write(codasip::Integer<1, false>(1u));
    MI17s_id_xpr_dest_src.write(codasip::Integer<1, false>(0u));
    MI11s_id_alu_op.write(codasip::Integer<1, false>(0u));
}
/**
 * \brief MI4main
 */
inline void Sim::MI4main()
{
    SIM_LOG(LOG_TYPE_INFO, 6)
         << "\n-----\n";
    MI2wbIH4_2wb2wb();
    MI2meIH4_2me2me();
    MI2exIH4_2ex2ex();
    MI2idIH4_2id2id();
    MI2feIH4_2fe2fe();
    MI12pipe_controlIH15_12pipe_control12pipe_control();
}
/**
 * \brief MI5reset
 */
inline void Sim::MI5reset()
{
    SIM_LOG(LOG_TYPE_INFO, 2)
         << "Resetting...";
}
/**
 * \brief IsResetFinished
 */
inline bool Sim::IsResetFinished() const 
{
    return true;
}
/**
 * \brief MI9fe_outputIH11_9fe_output9fe_output
 */
inline void Sim::MI9fe_outputIH11_9fe_output9fe_output()
{
    if (m_CheckerLevel == 0 && m_MultipleActivation[MI9FE_OUTPUTIH11_9FE_OUTPUT9FE_OUTPUT_MULTIACTIVATION]) 
    {
        SIM_LOG(LOG_TYPE_ERROR, 0) << ": fe_output: multiple activation in the same clock cycle." << std::endl;
    }
    m_MultipleActivation[MI9FE_OUTPUTIH11_9FE_OUTPUT9FE_OUTPUT_MULTIACTIVATION] = true;
    MI7r_id_pc.write(MI4r_pc.read());
    MI10r_id_instr.write(MI10s_fe_instr.read());
}
/**
 * \brief MI8opc_haltIH4_2id2id8_6isa_hw6isa_hw10_8opc_halt3opc
 */
inline void Sim::MI8opc_haltIH4_2id2id8_6isa_hw6isa_hw10_8opc_halt3opc()
{

}
/**
 * \brief MI11opc_syscallIH4_2id2id8_6isa_hw6isa_hw14_11opc_syscall3opc
 */
inline void Sim::MI11opc_syscallIH4_2id2id8_6isa_hw6isa_hw14_11opc_syscall3opc()
{

}
/**
 * \brief MI7opc_addIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc
 */
inline void Sim::MI7opc_addIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc()
{
    MI65codasip_return_MI7opc_aluIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc.write(codasip::Integer<17, false>(51u));
}
/**
 * \brief MI7opc_sltIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc
 */
inline void Sim::MI7opc_sltIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc()
{
    MI65codasip_return_MI7opc_aluIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc.write(codasip::Integer<17, false>(307u));
}
/**
 * \brief MI8opc_sltuIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc
 */
inline void Sim::MI8opc_sltuIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc()
{
    MI65codasip_return_MI7opc_aluIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc.write(codasip::Integer<17, false>(435u));
}
/**
 * \brief MI7opc_andIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc
 */
inline void Sim::MI7opc_andIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc()
{
    MI65codasip_return_MI7opc_aluIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc.write(codasip::Integer<17, false>(947u));
}
/**
 * \brief MI6opc_orIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc
 */
inline void Sim::MI6opc_orIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc()
{
    MI65codasip_return_MI7opc_aluIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc.write(codasip::Integer<17, false>(819u));
}
/**
 * \brief MI7opc_xorIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc
 */
inline void Sim::MI7opc_xorIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc()
{
    MI65codasip_return_MI7opc_aluIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc.write(codasip::Integer<17, false>(563u));
}
/**
 * \brief MI7opc_sllIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc
 */
inline void Sim::MI7opc_sllIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc()
{
    MI65codasip_return_MI7opc_aluIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc.write(codasip::Integer<17, false>(179u));
}
/**
 * \brief MI7opc_srlIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc
 */
inline void Sim::MI7opc_srlIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc()
{
    MI65codasip_return_MI7opc_aluIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc.write(codasip::Integer<17, false>(691u));
}
/**
 * \brief MI7opc_subIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc
 */
inline void Sim::MI7opc_subIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc()
{
    MI65codasip_return_MI7opc_aluIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc.write(codasip::Integer<17, false>(32819u));
}
/**
 * \brief MI7opc_sraIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc
 */
inline void Sim::MI7opc_sraIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc()
{
    MI65codasip_return_MI7opc_aluIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc.write(codasip::Integer<17, false>(33459u));
}
/**
 * \brief MI8opc_addiIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc
 */
inline void Sim::MI8opc_addiIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc()
{
    MI70codasip_return_MI9opc_alu_iIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc.write(codasip::Integer<10, false>(19u));
}
/**
 * \brief MI8opc_sltiIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc
 */
inline void Sim::MI8opc_sltiIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc()
{
    MI70codasip_return_MI9opc_alu_iIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc.write(codasip::Integer<10, false>(275u));
}
/**
 * \brief MI9opc_sltiuIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc
 */
inline void Sim::MI9opc_sltiuIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc()
{
    MI70codasip_return_MI9opc_alu_iIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc.write(codasip::Integer<10, false>(403u));
}
/**
 * \brief MI8opc_andiIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc
 */
inline void Sim::MI8opc_andiIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc()
{
    MI70codasip_return_MI9opc_alu_iIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc.write(codasip::Integer<10, false>(915u));
}
/**
 * \brief MI7opc_oriIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc
 */
inline void Sim::MI7opc_oriIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc()
{
    MI70codasip_return_MI9opc_alu_iIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc.write(codasip::Integer<10, false>(787u));
}
/**
 * \brief MI8opc_xoriIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc
 */
inline void Sim::MI8opc_xoriIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc()
{
    MI70codasip_return_MI9opc_alu_iIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc.write(codasip::Integer<10, false>(531u));
}
/**
 * \brief MI8opc_slliIH4_2id2id8_6isa_hw6isa_hw11_9opc_shift3opc
 */
inline void Sim::MI8opc_slliIH4_2id2id8_6isa_hw6isa_hw11_9opc_shift3opc()
{
    MI70codasip_return_MI9opc_shiftIH4_2id2id8_6isa_hw6isa_hw11_9opc_shift3opc.write(codasip::Integer<17, false>(147u));
}
/**
 * \brief MI8opc_srliIH4_2id2id8_6isa_hw6isa_hw11_9opc_shift3opc
 */
inline void Sim::MI8opc_srliIH4_2id2id8_6isa_hw6isa_hw11_9opc_shift3opc()
{
    MI70codasip_return_MI9opc_shiftIH4_2id2id8_6isa_hw6isa_hw11_9opc_shift3opc.write(codasip::Integer<17, false>(659u));
}
/**
 * \brief MI8opc_sraiIH4_2id2id8_6isa_hw6isa_hw11_9opc_shift3opc
 */
inline void Sim::MI8opc_sraiIH4_2id2id8_6isa_hw6isa_hw11_9opc_shift3opc()
{
    MI70codasip_return_MI9opc_shiftIH4_2id2id8_6isa_hw6isa_hw11_9opc_shift3opc.write(codasip::Integer<17, false>(33427u));
}
/**
 * \brief MI7opc_beqIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc
 */
inline void Sim::MI7opc_beqIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc()
{
    MI74codasip_return_MI10opc_branchIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc.write(codasip::Integer<10, false>(99u));
}
/**
 * \brief MI7opc_bneIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc
 */
inline void Sim::MI7opc_bneIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc()
{
    MI74codasip_return_MI10opc_branchIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc.write(codasip::Integer<10, false>(227u));
}
/**
 * \brief MI7opc_bltIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc
 */
inline void Sim::MI7opc_bltIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc()
{
    MI74codasip_return_MI10opc_branchIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc.write(codasip::Integer<10, false>(611u));
}
/**
 * \brief MI8opc_bltuIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc
 */
inline void Sim::MI8opc_bltuIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc()
{
    MI74codasip_return_MI10opc_branchIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc.write(codasip::Integer<10, false>(867u));
}
/**
 * \brief MI7opc_bgeIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc
 */
inline void Sim::MI7opc_bgeIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc()
{
    MI74codasip_return_MI10opc_branchIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc.write(codasip::Integer<10, false>(739u));
}
/**
 * \brief MI8opc_bgeuIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc
 */
inline void Sim::MI8opc_bgeuIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc()
{
    MI74codasip_return_MI10opc_branchIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc.write(codasip::Integer<10, false>(995u));
}
/**
 * \brief MI7opc_jalIH4_2id2id8_6isa_hw6isa_hw9_7opc_jal3opc
 */
inline void Sim::MI7opc_jalIH4_2id2id8_6isa_hw6isa_hw9_7opc_jal3opc()
{

}
/**
 * \brief MI8opc_jalrIH4_2id2id8_6isa_hw6isa_hw10_8opc_jalr3opc
 */
inline void Sim::MI8opc_jalrIH4_2id2id8_6isa_hw6isa_hw10_8opc_jalr3opc()
{

}
/**
 * \brief MI6opc_lbIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc
 */
inline void Sim::MI6opc_lbIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc()
{
    MI68codasip_return_MI8opc_loadIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc.write(codasip::Integer<10, false>(3u));
}
/**
 * \brief MI6opc_lhIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc
 */
inline void Sim::MI6opc_lhIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc()
{
    MI68codasip_return_MI8opc_loadIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc.write(codasip::Integer<10, false>(131u));
}
/**
 * \brief MI6opc_lwIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc
 */
inline void Sim::MI6opc_lwIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc()
{
    MI68codasip_return_MI8opc_loadIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc.write(codasip::Integer<10, false>(259u));
}
/**
 * \brief MI7opc_lbuIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc
 */
inline void Sim::MI7opc_lbuIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc()
{
    MI68codasip_return_MI8opc_loadIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc.write(codasip::Integer<10, false>(515u));
}
/**
 * \brief MI7opc_lhuIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc
 */
inline void Sim::MI7opc_lhuIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc()
{
    MI68codasip_return_MI8opc_loadIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc.write(codasip::Integer<10, false>(643u));
}
/**
 * \brief MI6opc_sbIH4_2id2id8_6isa_hw6isa_hw11_9opc_store3opc
 */
inline void Sim::MI6opc_sbIH4_2id2id8_6isa_hw6isa_hw11_9opc_store3opc()
{
    MI70codasip_return_MI9opc_storeIH4_2id2id8_6isa_hw6isa_hw11_9opc_store3opc.write(codasip::Integer<10, false>(35u));
}
/**
 * \brief MI6opc_shIH4_2id2id8_6isa_hw6isa_hw11_9opc_store3opc
 */
inline void Sim::MI6opc_shIH4_2id2id8_6isa_hw6isa_hw11_9opc_store3opc()
{
    MI70codasip_return_MI9opc_storeIH4_2id2id8_6isa_hw6isa_hw11_9opc_store3opc.write(codasip::Integer<10, false>(163u));
}
/**
 * \brief MI6opc_swIH4_2id2id8_6isa_hw6isa_hw11_9opc_store3opc
 */
inline void Sim::MI6opc_swIH4_2id2id8_6isa_hw6isa_hw11_9opc_store3opc()
{
    MI70codasip_return_MI9opc_storeIH4_2id2id8_6isa_hw6isa_hw11_9opc_store3opc.write(codasip::Integer<10, false>(291u));
}
/**
 * \brief MI7opc_luiIH4_2id2id8_6isa_hw6isa_hw16_13opc_upper_imm3opc
 */
inline void Sim::MI7opc_luiIH4_2id2id8_6isa_hw6isa_hw16_13opc_upper_imm3opc()
{
    MI80codasip_return_MI13opc_upper_immIH4_2id2id8_6isa_hw6isa_hw16_13opc_upper_imm3opc.write(codasip::Integer<7, false>(55u));
}
/**
 * \brief MI9opc_auipcIH4_2id2id8_6isa_hw6isa_hw16_13opc_upper_imm3opc
 */
inline void Sim::MI9opc_auipcIH4_2id2id8_6isa_hw6isa_hw16_13opc_upper_imm3opc()
{
    MI80codasip_return_MI13opc_upper_immIH4_2id2id8_6isa_hw6isa_hw16_13opc_upper_imm3opc.write(codasip::Integer<7, false>(23u));
}
/**
 * \brief fnc_rtl_clock_cycle
 */
inline void Sim::fnc_rtl_clock_cycle()
{

}
/**
 * \brief ClearMultuactivationCheckers
 */
inline void Sim::ClearMultuactivationCheckers()
{
    ::memset(m_MultipleActivation, 0, sizeof(m_MultipleActivation));
}
/**
 * \brief MI4pipe_MI2FE_MI5stall
 */
inline void Sim::MI4pipe_MI2FE_MI5stall()
{

}
/**
 * \brief MI4pipe_MI2FE_MI5clear
 */
inline void Sim::MI4pipe_MI2FE_MI5clear()
{

}
/**
 * \brief MI4pipe_MI2ID_MI5stall
 */
inline void Sim::MI4pipe_MI2ID_MI5stall()
{
    MI7r_id_pc.stall();
    MI10r_id_instr.stall();
}
/**
 * \brief MI4pipe_MI2ID_MI5clear
 */
inline void Sim::MI4pipe_MI2ID_MI5clear()
{
    MI7r_id_pc.clear();
    MI10r_id_instr.clear();
}
/**
 * \brief MI4pipe_MI2EX_MI5stall
 */
inline void Sim::MI4pipe_MI2EX_MI5stall()
{
    MI7r_ex_pc.stall();
    MI10r_ex_instr.stall();
    MI13r_ex_xpr_dest.stall();
    MI17r_ex_xpr_dest_src.stall();
    MI11r_ex_alu_op.stall();
    MI11r_ex_mem_op.stall();
    MI12r_ex_jump_op.stall();
    MI10r_ex_xpr_a.stall();
    MI10r_ex_xpr_b.stall();
    MI14r_ex_src_a_mux.stall();
    MI14r_ex_src_b_mux.stall();
    MI15r_ex_xpr_data_a.stall();
    MI15r_ex_xpr_data_b.stall();
    MI8r_ex_imm.stall();
}
/**
 * \brief MI4pipe_MI2EX_MI5clear
 */
inline void Sim::MI4pipe_MI2EX_MI5clear()
{
    MI7r_ex_pc.clear();
    MI10r_ex_instr.clear();
    MI13r_ex_xpr_dest.clear();
    MI17r_ex_xpr_dest_src.clear();
    MI11r_ex_alu_op.clear();
    MI11r_ex_mem_op.clear();
    MI12r_ex_jump_op.clear();
    MI10r_ex_xpr_a.clear();
    MI10r_ex_xpr_b.clear();
    MI14r_ex_src_a_mux.clear();
    MI14r_ex_src_b_mux.clear();
    MI15r_ex_xpr_data_a.clear();
    MI15r_ex_xpr_data_b.clear();
    MI8r_ex_imm.clear();
}
/**
 * \brief MI4pipe_MI2ME_MI5stall
 */
inline void Sim::MI4pipe_MI2ME_MI5stall()
{
    MI7r_me_pc.stall();
    MI10r_me_instr.stall();
    MI15r_me_alu_data_b.stall();
    MI13r_me_xpr_dest.stall();
    MI17r_me_xpr_dest_src.stall();
    MI11r_me_mem_op.stall();
    MI12r_me_alu_out.stall();
}
/**
 * \brief MI4pipe_MI2ME_MI5clear
 */
inline void Sim::MI4pipe_MI2ME_MI5clear()
{
    MI7r_me_pc.clear();
    MI10r_me_instr.clear();
    MI15r_me_alu_data_b.clear();
    MI13r_me_xpr_dest.clear();
    MI17r_me_xpr_dest_src.clear();
    MI11r_me_mem_op.clear();
    MI12r_me_alu_out.clear();
}
/**
 * \brief MI4pipe_MI2WB_MI5stall
 */
inline void Sim::MI4pipe_MI2WB_MI5stall()
{
    MI7r_wb_pc.stall();
    MI10r_wb_instr.stall();
    MI13r_wb_xpr_dest.stall();
    MI17r_wb_xpr_dest_src.stall();
    MI13r_wb_data_out.stall();
    MI12r_wb_alu_out.stall();
    MI13r_wb_mem_read.stall();
}
/**
 * \brief MI4pipe_MI2WB_MI5clear
 */
inline void Sim::MI4pipe_MI2WB_MI5clear()
{
    MI7r_wb_pc.clear();
    MI10r_wb_instr.clear();
    MI13r_wb_xpr_dest.clear();
    MI17r_wb_xpr_dest_src.clear();
    MI13r_wb_data_out.clear();
    MI12r_wb_alu_out.clear();
    MI13r_wb_mem_read.clear();
}
/**
 * \brief SignalsClockCycle
 */
inline void Sim::SignalsClockCycle()
{
    MI10s_fe_stall.clock_cycle();
    MI10s_fe_clear.clock_cycle();
    MI10s_fe_instr.clock_cycle();
    MI10s_id_stall.clock_cycle();
    MI10s_id_clear.clock_cycle();
    MI11s_id_opcode.clock_cycle();
    MI20s_id_extended_opcode.clock_cycle();
    MI17s_id_rtype_opcode.clock_cycle();
    MI17s_id_itype_opcode.clock_cycle();
    MI17s_id_stype_opcode.clock_cycle();
    MI17s_id_utype_opcode.clock_cycle();
    MI10s_id_xpr_a.clock_cycle();
    MI10s_id_xpr_b.clock_cycle();
    MI13s_id_xpr_dest.clock_cycle();
    MI12s_id_shamnt5.clock_cycle();
    MI17s_id_itype_simm12.clock_cycle();
    MI17s_id_stype_simm12.clock_cycle();
    MI17s_id_btype_simm12.clock_cycle();
    MI17s_id_jtype_simm20.clock_cycle();
    MI17s_id_utype_uimm20.clock_cycle();
    MI8s_id_imm.clock_cycle();
    MI8s_id_csr.clock_cycle();
    MI9s_id_zimm.clock_cycle();
    MI14s_id_src_a_mux.clock_cycle();
    MI14s_id_src_b_mux.clock_cycle();
    MI11s_id_alu_op.clock_cycle();
    MI11s_id_mem_op.clock_cycle();
    MI12s_id_jump_op.clock_cycle();
    MI17s_id_xpr_dest_src.clock_cycle();
    MI10s_ex_stall.clock_cycle();
    MI10s_ex_clear.clock_cycle();
    MI14s_ex_forward_a.clock_cycle();
    MI23s_ex_xpr_data_a_forward.clock_cycle();
    MI13s_ex_alu_in_a.clock_cycle();
    MI14s_ex_forward_b.clock_cycle();
    MI23s_ex_xpr_data_b_forward.clock_cycle();
    MI13s_ex_alu_in_b.clock_cycle();
    MI12s_ex_alu_out.clock_cycle();
    MI18s_ex_branch_target.clock_cycle();
    MI9s_ex_zero.clock_cycle();
    MI16s_ex_take_branch.clock_cycle();
    MI10s_me_stall.clock_cycle();
    MI10s_me_clear.clock_cycle();
    MI17s_me_mem_read_raw.clock_cycle();
    MI13s_me_mem_read.clock_cycle();
    MI13s_me_data_out.clock_cycle();
    MI10s_wb_stall.clock_cycle();
    MI10s_wb_clear.clock_cycle();
    MI65codasip_return_MI7opc_aluIH4_2id2id8_6isa_hw6isa_hw9_7opc_alu3opc.clock_cycle();
    MI70codasip_return_MI9opc_alu_iIH4_2id2id8_6isa_hw6isa_hw11_9opc_alu_i3opc.clock_cycle();
    MI70codasip_return_MI9opc_shiftIH4_2id2id8_6isa_hw6isa_hw11_9opc_shift3opc.clock_cycle();
    MI74codasip_return_MI10opc_branchIH4_2id2id8_6isa_hw6isa_hw13_10opc_branch3opc.clock_cycle();
    MI68codasip_return_MI8opc_loadIH4_2id2id8_6isa_hw6isa_hw10_8opc_load3opc.clock_cycle();
    MI70codasip_return_MI9opc_storeIH4_2id2id8_6isa_hw6isa_hw11_9opc_store3opc.clock_cycle();
    MI80codasip_return_MI13opc_upper_immIH4_2id2id8_6isa_hw6isa_hw16_13opc_upper_imm3opc.clock_cycle();
    MI68codasip_return_MI8opc_haltIH4_2id2id8_6isa_hw6isa_hw10_8opc_halt3opc.clock_cycle();
    MI76codasip_return_MI11opc_syscallIH4_2id2id8_6isa_hw6isa_hw14_11opc_syscall3opc.clock_cycle();
    MI65codasip_return_MI7opc_jalIH4_2id2id8_6isa_hw6isa_hw9_7opc_jal3opc.clock_cycle();
    MI68codasip_return_MI8opc_jalrIH4_2id2id8_6isa_hw6isa_hw10_8opc_jalr3opc.clock_cycle();
    MI11INSTRUCTIONIH4_2id2id8_6isa_hw6isa_hw1_6isa_hw.clock_cycle();
    MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_8i_hw_alu.clock_cycle();
    MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_10i_hw_alu_i.clock_cycle();
    MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_10i_hw_shift.clock_cycle();
    MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_11i_hw_branch.clock_cycle();
    MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_9i_hw_load.clock_cycle();
    MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_10i_hw_store.clock_cycle();
    MI17codasip_tmp_var_0IH4_2id2id8_6isa_hw6isa_hw1_14i_hw_upper_imm.clock_cycle();
    MI17codasip_tmp_var_0IH15_12pipe_control12pipe_control1_12pipe_control.clock_cycle();
    MI17codasip_tmp_var_2IH15_12pipe_control12pipe_control1_12pipe_control.clock_cycle();
    MI17codasip_tmp_var_4IH15_12pipe_control12pipe_control1_12pipe_control.clock_cycle();
    MI17codasip_tmp_var_6IH15_12pipe_control12pipe_control1_12pipe_control.clock_cycle();
    MI17codasip_tmp_var_8IH15_12pipe_control12pipe_control1_12pipe_control.clock_cycle();
    MI17codasip_tmp_var_1IH15_12pipe_control12pipe_control1_12pipe_control.clock_cycle();
    MI17codasip_tmp_var_3IH15_12pipe_control12pipe_control1_12pipe_control.clock_cycle();
    MI17codasip_tmp_var_5IH15_12pipe_control12pipe_control1_12pipe_control.clock_cycle();
    MI17codasip_tmp_var_7IH15_12pipe_control12pipe_control1_12pipe_control.clock_cycle();
    MI17codasip_tmp_var_9IH15_12pipe_control12pipe_control1_12pipe_control.clock_cycle();
    MI17codasip_tmp_var_0IH4_2ex2ex1_2ex.clock_cycle();
    MI17codasip_tmp_var_1IH4_2ex2ex1_2ex.clock_cycle();
    MI17codasip_tmp_var_2IH4_2ex2ex1_2ex.clock_cycle();
    MI17codasip_tmp_var_3IH4_2ex2ex1_2ex.clock_cycle();
    MI17codasip_tmp_var_4IH4_2ex2ex1_2ex.clock_cycle();
    MI17codasip_tmp_var_0IH4_2fe2fe1_2fe.clock_cycle();
    MI17codasip_tmp_var_0IH4_2id2id1_2id.clock_cycle();
    MI17codasip_tmp_var_1IH4_2id2id1_2id.clock_cycle();
    MI8data_memIH4_2me2me1_2meB0.clock_cycle();
    MI11request_cmdIH4_2me2me1_2meB0.clock_cycle();
    MI10byte_countIH4_2me2me1_2meB0.clock_cycle();
    MI17codasip_tmp_var_0IH4_2me2me1_2me.clock_cycle();
    MI17codasip_tmp_var_1IH4_2me2me1_2me.clock_cycle();
    MI17codasip_tmp_var_5IH4_2me2me1_2me.clock_cycle();
    MI17codasip_tmp_var_2IH4_2me2me1_2me.clock_cycle();
    MI17codasip_tmp_var_3IH4_2me2me1_2me.clock_cycle();
    MI17codasip_tmp_var_4IH4_2me2me1_2me.clock_cycle();
    MI17codasip_tmp_var_0IH4_2wb2wb1_2wb.clock_cycle();
}
inline void Sim::RegistersClockCycle()
{
    MI7r_id_pc.clock_cycle();
    MI10r_id_instr.clock_cycle();
    MI7r_ex_pc.clock_cycle();
    MI10r_ex_instr.clock_cycle();
    MI13r_ex_xpr_dest.clock_cycle();
    MI17r_ex_xpr_dest_src.clock_cycle();
    MI11r_ex_alu_op.clock_cycle();
    MI11r_ex_mem_op.clock_cycle();
    MI12r_ex_jump_op.clock_cycle();
    MI10r_ex_xpr_a.clock_cycle();
    MI10r_ex_xpr_b.clock_cycle();
    MI14r_ex_src_a_mux.clock_cycle();
    MI14r_ex_src_b_mux.clock_cycle();
    MI15r_ex_xpr_data_a.clock_cycle();
    MI15r_ex_xpr_data_b.clock_cycle();
    MI8r_ex_imm.clock_cycle();
    MI7r_me_pc.clock_cycle();
    MI10r_me_instr.clock_cycle();
    MI15r_me_alu_data_b.clock_cycle();
    MI13r_me_xpr_dest.clock_cycle();
    MI17r_me_xpr_dest_src.clock_cycle();
    MI11r_me_mem_op.clock_cycle();
    MI12r_me_alu_out.clock_cycle();
    MI7r_wb_pc.clock_cycle();
    MI10r_wb_instr.clock_cycle();
    MI13r_wb_xpr_dest.clock_cycle();
    MI17r_wb_xpr_dest_src.clock_cycle();
    MI13r_wb_data_out.clock_cycle();
    MI12r_wb_alu_out.clock_cycle();
    MI13r_wb_mem_read.clock_cycle();
    MI4r_pc.clock_cycle();
    MI6rf_xpr.clock_cycle();
}
/**
 * \brief MI6as_all_load
 */
inline void Sim::MI6as_all_load(const MaxInt& data, const codasip_address_t addr, const resources::Index sbi, const resources::Index sbc, const int xexe_bw)
{
    if (addr <= 4294967295lu) {
        if (xexe_bw != -1 && xexe_bw % 8) {
            SIM_LOG(LOG_TYPE_WARNING, 0) << "LAU bit-width in xexe file (address 0x" << std::hex << addr << std::dec << "(" << addr << ")) is not compatible with LAU bit-width of interface 'if_code'." << std::endl;
        }
        MI7if_code.load(data, addr, sbi, sbc);
    }
}
/**
 * \brief MI6as_all_dread
 */
inline MaxInt Sim::MI6as_all_dread(const codasip_address_t addr,const resources::Index sbi, const resources::Index sbc)
{
    if (addr <= 4294967295lu) {
        return MI7if_code.dread(addr, sbi, sbc);
    }
    // failsafe
    return 0;
}
/**
 * \brief MI6as_all_dwrite
 */
inline void Sim::MI6as_all_dwrite(const MaxInt& data, const codasip_address_t addr,const resources::Index sbi, const resources::Index sbc)
{
    if (addr <= 4294967295lu) {
        MI7if_code.dwrite(data, addr, sbi, sbc);
        return;
    }
}
/**
 * \brief MI6as_all_program_dread
 */
inline MaxInt Sim::MI6as_all_program_dread(const codasip_address_t addr,const resources::Index sbi, const resources::Index sbc)
{
    if (addr <= 4294967295lu) {
        return MI7if_code.dread(addr, sbi, sbc);
    }
    // failsafe
    return 0;
}
/**
 * \brief MI6as_all_program_dwrite
 */
inline void Sim::MI6as_all_program_dwrite(const MaxInt& data, const codasip_address_t addr,const resources::Index sbi, const resources::Index sbc)
{
    if (addr <= 4294967295lu) {
        MI7if_code.dwrite(data, addr, sbi, sbc);
        return;
    }
}
/**
 * \brief MI6as_all_data_dread
 */
inline MaxInt Sim::MI6as_all_data_dread(const codasip_address_t addr,const resources::Index sbi, const resources::Index sbc)
{
    if (addr <= 4294967295lu) {
        return MI7if_data.dread(addr, sbi, sbc);
    }
    // failsafe
    return 0;
}
/**
 * \brief MI6as_all_data_dwrite
 */
inline void Sim::MI6as_all_data_dwrite(const MaxInt& data, const codasip_address_t addr,const resources::Index sbi, const resources::Index sbc)
{
    if (addr <= 4294967295lu) {
        MI7if_data.dwrite(data, addr, sbi, sbc);
        return;
    }
}
/**
 * \brief InterfacesClockCycle
 */
inline void Sim::InterfacesClockCycle()
{
    MI7if_code.clock_cycle();
    MI7if_data.clock_cycle();
}
/**
 * \brief PortsClockCycle
 */
inline void Sim::PortsClockCycle()
{

}
/**
 * \brief CheckStackOverflow
 */
inline void Sim::CheckStackOverflow()
{
    if (!m_OverflowCheck) return;
    if (!m_OverflowCheckActive) {
        if (MI4r_pc.dread() != m_OverflowCheckMain) return;
        m_OverflowCheckActive = true;
    }
    codasip_address_t currentSP = ResourceRead(m_OverflowCheckSP, m_OverflowCheckSPIndex);
    if (currentSP < m_OverflowCheckStackLow || currentSP > m_OverflowCheckStackHigh) {
        SIM_LOG(LOG_TYPE_FATAL, SIM_FAIL) << std::showbase << std::hex << "Stack overflow detected, current stack pointer: " << currentSP << ", valid stack range: " << m_OverflowCheckStackLow << " - " << m_OverflowCheckStackHigh;
        StopInDebugger(EVENT_STACK_OVERFLOW);
        m_Halt = SIM_FAIL;
    }
}
/**
 * \brief codasip_halt
 */
inline void Sim::codasip_halt()
{
    m_Halt = SIM_HALT;
}
} // namespace MI7RISC_V5
} // namespace simulator
} // namespace codasip

#endif // CODASIP_SIMULATOR_MI7RISC_V5_SIM_3_H_
