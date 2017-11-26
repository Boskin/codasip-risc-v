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
#include "codasip_simulator_MI17codasip_top_level_Sim.h"

#include "basicoptions.h"
static const codasip::getopt::ToolInfoSetter g_ToolInfo(codasip::getopt::ToolInfo("C51_657_727", 
"RISC_V5", 
"c6531b5a26b5f0e047c1db0a753f9f9ec9184e2ea2e3400419110244043b0875", 
"2017-11-26 01:01:07", 
""
));
#include "simulator_resources.h"
#include "codasip_type_traits.h"
OPTIONAL_CALL_DEF_VOID(dump);
#include "codasip_simulator_MI7RISC_V5_Sim.h"

namespace codasip {
namespace simulator {
namespace MI17codasip_top_level {

Sim::Sim(const std::string& name)
 :  m_Path(name),
    m_Uid(171),
    m_SimCycleCounter(0),
    m_CheckerLevel(1),
    m_Log(this),
    m_SimCycleTimeout(-1),
    m_DumpIterEnd(),
    m_RestoreIters(),
    MI28codasip_mem_RISC_V5_as_all_0("codasip_mem_RISC_V5_as_all_0", 172),
    MI7RISC_V5(*new simulator::MI7RISC_V5::Sim("RISC_V5", 0)),
    m_Debugger(NULL)
{
    m_Name = name;
    size_t namePos = m_Name.rfind('.');
    if (namePos != std::string::npos) m_Name.erase(0, namePos+1);
    Elaborate(m_Log);
    Insert(MI28codasip_mem_RISC_V5_as_all_0);
    MI28codasip_mem_RISC_V5_as_all_0.set_log(m_Log);
    Insert(MI7RISC_V5);
    MI7RISC_V5.m_MemoryShorcut_MI28codasip_mem_RISC_V5_as_all_0 = &MI28codasip_mem_RISC_V5_as_all_0;
    m_Halts[CODASIP_HALTED_RISC_V5] = false;
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
int Sim::Reset()
{
    int rc = SIM_OK;
    m_SimCycleCounter = 0;
    MI28codasip_mem_RISC_V5_as_all_0.reset();
    rc = MI7RISC_V5.Reset();
    if (rc != SIM_OK && rc != SIM_HALT) {
        return rc;
    }
    m_Halts[CODASIP_HALTED_RISC_V5] = false;
    DumpResources();
    m_SimCycleCounter++;
    return SIM_OK;
}
void Sim::SetCycleCount(const uint64_t val)
{
    m_SimCycleCounter = val;
    MI7RISC_V5.SetCycleCount(val);
}
void Sim::SetLogging(const LogType type, const std::string& options)
{
    m_Log.SetLogging(type, options);
    MI7RISC_V5.SetLogging(type, options);
}
const std::string& Sim::GetLastError() const 
{
    return m_Log.GetLastError();
}
void Sim::Elaborate(Log& parentLog)
{
    MI7RISC_V5.Elaborate(m_Log);
    // connection for MI7RISC_V5
    MI7RISC_V5.MI7if_code.bind(MI28codasip_mem_RISC_V5_as_all_0.if_code);
    MI7RISC_V5.MI7if_data.bind(MI28codasip_mem_RISC_V5_as_all_0.if_data);
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
    return LEVEL;
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
bool Sim::LoadExecutable(const std::string& executable, const std::string& arguments)
{
    throw exceptions::CGeneralError("Cannot load executable in level simulator.");return 0;
}
void Sim::LoadProgram(const Uid addressSpace,const codasip::MaxInt& data,const Address addr,const unsigned int sbi,const unsigned int sbc,const bool isText,const int bw)
{
    throw exceptions::CGeneralError("Cannot load program in level simulator.");
}
void Sim::SetExecutable(const std::string& executable)
{
    SIM_LOG(LOG_TYPE_ERROR, 0) << "Cannot set executable in level simulator." << std::endl;
}
void Sim::StackOverflowCheck(const bool enable, const Address main, const Address low, const Address high, const Uid sp, const Address spIndex)
{
    SIM_LOG(LOG_TYPE_ERROR, 0) << "Cannot check stack overflow in level simulator." << std::endl;
}
disassembler::Disassembler* Sim::CreateDisassembler() const 
{
    SIM_LOG(LOG_TYPE_ERROR, 0) << "Cannot create disassembler in level simulator." << std::endl;
    return 0;
}
void Sim::SetCallstackUnwinder(debugger::UnwinderWrapper* wrapper)
{
    SIM_LOG(LOG_TYPE_ERROR, 0) << "Cannot set callstack unwinder in level simulator." << std::endl;
}
int Sim::ClockCycle()
{
    int rc = SIM_OK;
    MI28codasip_mem_RISC_V5_as_all_0.clock_cycle();
    if (!m_Halts[CODASIP_HALTED_RISC_V5]) {
        rc = MI7RISC_V5.codasip::simulator::MI7RISC_V5::Sim::ClockCycle();
        if (rc != SIM_OK && rc != SIM_HALT) {
            return rc;
        }
        m_Halts[CODASIP_HALTED_RISC_V5] = rc != SIM_OK;
    }
    DumpResources();
    m_SimCycleCounter++;
    if (m_SimCycleCounter >= m_SimCycleTimeout) {
        return SIM_HALT;
    }
    return (HaltedAll() ? SIM_HALT:SIM_OK);
}
MaxInt Sim::ResourceRead(const Uid resource, const Address addr)
{
    switch (resource) {
    case 172:
        return MI28codasip_mem_RISC_V5_as_all_0.dread(addr);
    default:
        SIM_LOG(LOG_TYPE_ERROR, 0) << "unknown resource UID: '" << resource << "'" << std::endl;
    }
    return 0;
}
MaxInt Sim::ResourceRead(const Uid resource, const Address addr, const unsigned sbi, const unsigned sbc)
{
    switch (resource) {
    case 172:
        return MI28codasip_mem_RISC_V5_as_all_0.dread(addr, sbi, sbc);
    default:
        SIM_LOG(LOG_TYPE_ERROR, 0) << "unknown resource UID: '" << resource << "'" << std::endl;
    }
    return 0;
}
void Sim::ResourceWrite(const Uid resource, const MaxInt& data, const Address addr)
{
    switch (resource) {
    case 172:
        MI28codasip_mem_RISC_V5_as_all_0.dwrite(data, addr);
        break;
    default:
        SIM_LOG(LOG_TYPE_ERROR, 0) << "unknown resource UID: '" << resource << "'" << std::endl;
    }
}
void Sim::ResourceWrite(const Uid resource, const MaxInt& data, const Address addr, const unsigned sbi, const unsigned sbc)
{
    switch (resource) {
    case 172:
        MI28codasip_mem_RISC_V5_as_all_0.dwrite(data, addr, sbi, sbc);
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
            case 172:
                if (continuous) {
                    SIM_LOG(LOG_TYPE_ERROR, 0) << "Resource " << MI28codasip_mem_RISC_V5_as_all_0.get_signature() << " doesn't support continuous dump of changes.\n";
                    return false;
                } else { 
                    OptionalCalldump(MI28codasip_mem_RISC_V5_as_all_0, stream);
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
        MI7RISC_V5.Dump(stream, resources, continuous);
    }
    else {
        stream.DumpClockCycle(m_SimCycleCounter);
        InvalidateCaches(true);
        OptionalCalldump(MI28codasip_mem_RISC_V5_as_all_0, stream);
        MI7RISC_V5.Dump(stream, resources, continuous);
    }
    return true;
}
/**
 * \brief DumpResources
 */
void Sim::DumpResources()
{
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
    MI7RISC_V5.InvalidateCaches(flush);
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
Sim::~Sim()
{
    delete &MI7RISC_V5;
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
void Sim::InitProfiler(const std::string& output, const unsigned int samplingRate,const bool enabledCallStack,const std::set<unsigned int>& sequenceLengths)
{
    SIM_LOG(LOG_TYPE_ERROR, 0) << "Profiler is not part of simulator. Please, re-generate the simulator with profiling features.";
}
void Sim::SetBreakpoint(const BreakpointInfo& info)
{
    SIM_LOG(LOG_TYPE_ERROR, 0) << "Cannot set a breakpoint in level simulator." << std::endl;
}
bool Sim::SetWatchpoint(const WatchpointInfo& info)
{
    SIM_LOG(LOG_TYPE_ERROR, 0) << "Cannot set a watchpoint in level simulator." << std::endl;
    return 0;
}
void Sim::SetThreadStepMode(const ThreadId tid, const bool stepMode)
{
    SIM_LOG(LOG_TYPE_ERROR, 0) << "Cannot set step mode in level simulator." << std::endl;
}
void Sim::SetDebugLevel(const DebugLevel level)
{
    SIM_LOG(LOG_TYPE_ERROR, 0) << "Cannot set debug level of the simulation in level simulator." << std::endl;
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
    MI7RISC_V5.SetDebugger(iface);
}
void Sim::Kill()
{
    MI7RISC_V5.Kill();
}
void Sim::Interrupt()
{
    MI7RISC_V5.Interrupt();
}
void Sim::Resume()
{
    MI7RISC_V5.Resume();
}
} // namespace MI17codasip_top_level
} // namespace simulator
} // namespace codasip
