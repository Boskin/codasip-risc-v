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
 *  \author Hons Petr
 *  \date   6. 10. 2015
 *  \brief
 */

#ifndef _SIMULATOR_PRIVATE_H_
#define _SIMULATOR_PRIVATE_H_

#include "toolstypes.h"     // profiler types
#include "codasip_interface.h"
#include "simulator_resources.h"

// forward
namespace codasip {
namespace disassembler {
class Disassembler;
}   // namespace codasip::disassembler
namespace simulator {
class DumpStream;
namespace codal
{
class DebugInfo;
}
}   // namespace codasip::simulator
namespace debugger {
class UnwinderWrapper;
class DebuggerInterface;
}   // namespace codasip::debugger
}   // namespace codasip

namespace codasip {
namespace simulator {
/**
 *  \class  SimulatorPrivateInterface
 *  \brief  Abstract simulator interface implemented by simulators. This private interface
 *          is used by Codasip debugger
 */
class SimulatorPrivateInterface
    : public SimulatorInterface,        // public interface available outside of Codasip tools
      public ComponentBase              // Base class for all component based instances
{
public:
    /// Enum describing simulator features
    typedef enum
    {
        /// IA simulator
        SIMULATOR_IA     = 0,
        /// CA simulator
        SIMULATOR_CA     = 1,
        /// Support of debugging
        DEBUGGER         = SIMULATOR_CA << 1,
        /// CodAL debugging
        CODAL            = DEBUGGER << 1,
        /// Support for watchpoints
        WATCHPOINTS      = CODAL << 1,
        /// Support for dumping
        DUMP             = WATCHPOINTS << 1,
        /// Low profiler
        PROFILER_LOW     = DUMP << 1,
        /// High profiler
        PROFILER_HIGH    = PROFILER_LOW << 1,
        /// Stack overflow detection
        STACK_OVERFLOW_CHECK = PROFILER_HIGH << 1,
        /// Support of Nexus/JTAG
        NEXUS            = STACK_OVERFLOW_CHECK << 1
    } Features;
    /**
     * \brief  Describes mandatory resources for ASIP simulator
     */
    struct AsipInfo
    {
        AsipInfo();

        /// Program counter description
        RegisterInfo* m_Pc;
        /// Default data address space description
        AddressSpaceInfo* m_DataAs;
        /// Default program address space description
        AddressSpaceInfo* m_ProgramAs;
    };

    /**
     * \brief Needed for correct function overload
     * \{
     */
    using SimulatorInterface::ResourceRead;
    using ComponentBase::ResourceRead;
    using SimulatorInterface::ResourceWrite;
    using ComponentBase::ResourceWrite;
    /**
     * \}
     */
    /**
     * \brief Get simulator features
     */
    virtual Features GetFeatures() const = 0;
    /**
     * \copydoc SimulatorInterface::GetPath
     * \note Needed because same function is implemented in both SimulatorInterface and ComponentBase
     */
    virtual const Path& GetPath() const override = 0;
    /**
     *  \brief  Run until all simulators ends.
     */
    virtual int Run() = 0;
    /**
     *  \brief  Returns profiling statistics for given resource. If the resource is addressable
     *          then address must be provided.
     *  \param  resource UID of resource
     *  \param  type Type of profiling statistics to be returned.
     *  \param  address Address (default 0)
     *  \return Count of accesses of given \p type on resource \p name at given \p address
     */
    virtual uint64_t ResourceStats(const Uid resource,
        const profiler::AccessType type,
        const Address address = 0) const = 0;
    /**
     *  \brief  Return new object containing implementation of disassembler for ASIP.
     *          NULL if disassembler for given ASIP is not present
     */
    virtual disassembler::Disassembler* CreateDisassembler() const = 0;
    /**
     *  \brief  Load program into the memory according processor address space
     *          If the bw of the word is specified, it checks, if the destination
     *          memory has proper bit-width. The -1 means "do not check bw".
     *  \param  addressSpace Uid of address space the data will be loaded into
     *  \param  data Data
     *  \param  addr Address
     *  \param  sbi Subblock index
     *  \param  sbc Subbloc count
     *  \param  isText if true, loaded data represents program
     *  \param  bw bw of data
     */
    virtual void LoadProgram(const Uid addressSpace,
        const MaxInt& data,
        const Address addr,
        const unsigned int sbi,
        const unsigned int sbc,
        const bool isText,
        const int bw = -1) = 0;
    /**
     *  \brief  Save executable path. Mandatory for correct OProfile data generation
     *  \param  executable Path to the executable file
     */
    virtual void SetExecutable(const std::string& executable) = 0;
    /**
     *  \brief  Controls stack overflow checking of simulator
     *  \param  enable True if stack overflow checking should be enabled, false otherwise
     *  \param  main Address of main symbol. After PC hits this address checking is enabled
     *  \param  low Lowest address of stack
     *  \param  high Highest address of stack
     *  \param  sp UID of stack pointer register
     *  \param  spIndex Index into register file if \ref spName is register file, or 0
     */
    virtual void StackOverflowCheck(const bool enable,
        const Address main = 0,
        const Address low = 0,
        const Address high = 0,
        const Uid sp = INVALID_UID,
        const Address spIndex = 0) = 0;
    /**
     *  \brief  Dump resources into the file
     *  \param  resources List of resource UIDs to be dumped. If empty, all resources will be dumped.
     *  \param  file File to be dumped to
     *  \param  format Format to be dumped to. Currently "codasip" only. If empty, default Codasip
     *          dump format will be used.
     *  \return Success of dump
     */
    virtual bool Dump(DumpStream& stream,
        const std::vector<Uid>& resources,
        const bool continuous = false) = 0;
    /**
     *  \brief  Restore dumped resources values from file
     *  \param  file File containing dumped data.
     *  \param  format Format to be dumped to. Currently "codasip" only. If set to empty,
     *          automatic detection of format will be performed.
     *  \return Success of dump
     */
    virtual bool Restore(std::istream& file,
        const bool continuous = false,
        const std::string& format = std::string()) = 0;
    /**
     *  \brief  Set given unwinder wrapper into ASIP instance. This wrapper will be used by
     *          the profiler to unwind C call stack
     *  \param  wrapper Unwinder wrapper that can be used to unwind C call stack. If NULL,
     *          wrapper was deleted and should be removed from the simulator
     *  \note   Do not delete the wrapper, its owned by the debugger
     */
    virtual void SetCallstackUnwinder(debugger::UnwinderWrapper* wrapper) = 0;
    /**
     * \brief Get information about ASIP simulator
     * \param pcUID UID of program counter
     * \param programAsUID UID of program address space
     * \param dataAsUID UID of data address space
     */
    virtual bool GetAsipInfo(Uid* = nullptr, Uid* = nullptr, Uid* = nullptr) const
    {
        return false;
    }
    /**
     * \brief Return CodAL debug info container containing line table, debug information
     *        (block,variables,etc.) and current CodAL callstack
     */
    virtual const codal::DebugInfo* GetCodalDebugInfo() const
    {
        return nullptr;
    }
    /**
     * \brief  Returns data address space of ASIP
     * \throws if data address space was not specified or found
     */
    const AddressSpaceInfo& GetDataAddressSpace() const;
    /**
     * \brief  Returns program address space of ASIP
     * \throws if program address space was not specified or found
     */
    const AddressSpaceInfo& GetProgramAddressSpace() const;
    /**
     * \brief  Returns program counter description
     * \throws if program counter was not found
     */
    const RegisterInfo& GetProgramCounter() const;
    /**
     * \brief Dump simulator hierarchy info as XML data that will be printed into \p out
     */
    void DumpHierarchyToXml(std::ostream& out) const;
};

/**
 *  \brief  Class that loads all ASIPs from the simulator info to be used for application loading.
 */
class Design
{
public:
    /// Description of a single resource (ASIP or Component)
    template <class T>
    struct Info
    {
        /// Name of ASIP, can be also alias (without toplevel simulator name)
        Path m_Name;
        /// Resource (simulator/component instance)
        T* m_Resource;
        /// True if \p m_Name is alias
        bool m_Alias;
    };

    typedef Info<SimulatorPrivateInterface> AsipInfo;
    typedef Info<Component> ComponentInfo;

    typedef std::vector<AsipInfo> AsipInfos;
    typedef std::vector<ComponentInfo> ComponentInfos;

    /**
     *  \brief  Constructor
     *  \param  top Toplevel simulator
     */
    Design(SimulatorPrivateInterface& top);
    /**
     *  \brief  Find ASIP by name
     */
    const AsipInfo* FindAsip(const Path& path) const;
    /**
     *  \{
     *  \brief  Get infos
     */
    const AsipInfos& GetAsipInfos() const;
    const ComponentInfos& GetComponentInfos() const;
    /**
     *  \}
     */
    /**
     *  \brief  Load executables to destination - debugger or simulator directly
     */
    template<class Destination, class Options>
    void LoadExecutables(Destination& dest, const Options& args);
    /**
     * \brief Print clock cycle info
     * \param log Path to the output file, or empty for printing to stdout
     */
    void DumpClockCycles(const std::string& logFile);

private:
    /// Load single simulator info
    void Load(SimulatorPrivateInterface& sim);

    void Load(debugger::DebuggerInterface& dest,
        SimulatorPrivateInterface& sim,
        const std::string& exe,
        const std::string& args,
        const bool load);
    void Load(SimulatorPrivateInterface& dest,
        SimulatorPrivateInterface& sim,
        const std::string& exe,
        const std::string& args,
        const bool load);

    /// List of ASIP infos
    AsipInfos m_AsipInfos;
    /// List of component infos
    ComponentInfos m_ComponentInfos;
    /// Toplevel simulator
    SimulatorPrivateInterface& m_Top;
};

/**
 * \brief Load executable set in arguments into destination (simulator or debugger)
 * \param dest Simulator or debugger that will be used to load executable using
 *             LoadExecutable method
 * \param asipNames Container of ASIP names in simulator
 * \param args Arguments set by user to run simulator
 * \return Return true on success, false on error
 */
template<class Destination, class Options>
void Design::LoadExecutables(Destination& dest, const Options& args)
{
    const auto& options = args.GetAsipsOptions();

    ////////////////////////////////////////////////////////////////////////////////////////////////
    // Check all ASIP names used in arguments
    ////////////////////////////////////////////////////////////////////////////////////////////////
    for (auto& opt : options)
    {
        CHECK_CONDITION(FindAsip(opt.first)) << "ASIP " << opt.first
            << " used in simulator arguments was not found in simulator.";
    }

    ////////////////////////////////////////////////////////////////////////////////////////////////
    // Load executables
    ////////////////////////////////////////////////////////////////////////////////////////////////
    for (auto& asip : GetAsipInfos())
    {
        auto opt = options.find(asip.m_Name);
        // specific options found
        if (opt != options.end() && opt->second.HasExecutable())
        {
            Load(dest,
                *asip.m_Resource,
                opt->second.GetExecutable(),
                opt->second.GetProgArgs(),
                opt->second.LoadSim());
        }
        // this is alias for other ASIP, so skip all other checks
        else if (asip.m_Alias)
        {
            continue;
        }
        // use global options
        else if (args.GetGlobalOptions().HasExecutable())
        {
            Load(dest,
                *asip.m_Resource,
                args.GetGlobalOptions().GetExecutable(),
                args.GetGlobalOptions().GetProgArgs(),
                args.GetGlobalOptions().LoadSim());
        }
        // no application found and we are not using debugger
        else if (args.IsRunOnly())
        {
            THROW_ERROR() << "No executable set for ASIP " << asip.m_Name << std::endl;
        }
    }
}

} // namespace codasip::simulator
} // namespace codasip

#endif // _SIMULATOR_PRIVATE_H_
