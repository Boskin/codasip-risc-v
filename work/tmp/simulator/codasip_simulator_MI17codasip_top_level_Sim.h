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
 * \project codasip_top_level
 */
#ifndef CODASIP_SIMULATOR_MI17CODASIP_TOP_LEVEL_SIM_4_H_
#define CODASIP_SIMULATOR_MI17CODASIP_TOP_LEVEL_SIM_4_H_

#include "simulator_private.h"
#include "simulator_log.h"
#include "csr_include.h"
#include "simulator_helpers.h"
#include <memory>
#include <iomanip>
#include "stringutils.h"
#undef SIM_LOG
#define SIM_LOG(logType, verb) LOG(m_Log, logType, verb)
#include "dump_stream.h"
#include "codasip_resources_MemoryCore_codasip_memory_codasip_mem_RISC_V5_as_all_0_t.h"

namespace codasip { 
namespace simulator { 
namespace MI7RISC_V5{
class Sim;
}
}
}

namespace codasip {
namespace simulator {
namespace MI17codasip_top_level {

/**
 * \class Sim
 */
class Sim : public SimulatorPrivateInterface
 {
private:
    typedef enum {
        CODASIP_HALTED_RISC_V5,
    }CodasipHalted;
    Path m_Path;
    std::string m_Name;
    Uid m_Uid;
    uint64_t m_SimCycleCounter;
    resources::Index m_CheckerLevel;
    mutable Log m_Log;
    uint64_t m_SimCycleTimeout;
    bool m_Halts[2];
    DumpStreamIterator m_DumpIterEnd;
    std::vector<DumpStreamIterator> m_RestoreIters;
    resources::codasip_memory_codasip_mem_RISC_V5_as_all_0_t MI28codasip_mem_RISC_V5_as_all_0;
    simulator::MI7RISC_V5::Sim& MI7RISC_V5;
    DebuggerInterface* m_Debugger;
public:
    /**
     * \brief Sim
     */
    Sim(const std::string& name);
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
     * \brief Reset
     */
    int Reset();
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
     * \brief LoadExecutable
     */
    bool LoadExecutable(const std::string& executable, const std::string& arguments);
    /**
     * \brief LoadProgram
     */
    void LoadProgram(const Uid addressSpace,const codasip::MaxInt& data,const Address addr,const unsigned int sbi,const unsigned int sbc,const bool isText,const int bw);
    /**
     * \brief SetExecutable
     */
    void SetExecutable(const std::string& executable);
    /**
     * \brief StackOverflowCheck
     */
    void StackOverflowCheck(const bool enable, const Address main, const Address low, const Address high, const Uid sp, const Address spIndex = 0);
    /**
     * \brief CreateDisassembler
     */
    disassembler::Disassembler* CreateDisassembler() const ;
    /**
     * \brief SetCallstackUnwinder
     */
    void SetCallstackUnwinder(debugger::UnwinderWrapper* wrapper);
    /**
     * \brief ClockCycle
     */
    int ClockCycle();
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
    /**
     * \brief ~Sim
     */
    ~Sim();
private:
    bool HaltedAll();
public:
    /**
     * \brief ResourceRead
     */
    bool ResourceRead(Data* output, unsigned outputLen, const Path& resource, const Address addr = 0);
    /**
     * \brief ResourceWrite
     */
    bool ResourceWrite(const Data* data, const unsigned dataLen, const Path& resource, const Address addr = 0);
    /**
     * \brief InitProfiler
     */
    void InitProfiler(const std::string& output, const unsigned int samplingRate,const bool enabledCallStack,const std::set<unsigned int>& sequenceLengths);
    /**
     * \brief SetBreakpoint
     */
    void SetBreakpoint(const BreakpointInfo& info);
    /**
     * \brief SetWatchpoint
     */
    bool SetWatchpoint(const WatchpointInfo& info);
    /**
     * \brief SetThreadStepMode
     */
    void SetThreadStepMode(const ThreadId tid, const bool stepMode);
    /**
     * \brief SetDebugLevel
     */
    void SetDebugLevel(const DebugLevel level);
    /**
     * \brief Register
     */
    void Register(DebuggerInterface& iface);
    /**
     * \brief SetDebugger
     */
    void SetDebugger(DebuggerInterface& iface);
    /**
     * \brief Kill
     */
    void Kill();
    /**
     * \brief Interrupt
     */
    void Interrupt();
    /**
     * \brief Resume
     */
    void Resume();
};
inline uint64_t Sim::GetCycleCount() const 
{
    return m_SimCycleCounter;
}
/**
 * \brief HaltedAll
 */
inline bool Sim::HaltedAll()
{
    return m_Halts[CODASIP_HALTED_RISC_V5];
}
} // namespace MI17codasip_top_level
} // namespace simulator
} // namespace codasip

#endif // CODASIP_SIMULATOR_MI17CODASIP_TOP_LEVEL_SIM_4_H_
