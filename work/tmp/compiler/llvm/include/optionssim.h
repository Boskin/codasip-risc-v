/**
 * Codasip Ltd
 *
 * CONFIDENTIAL
 *
 * Copyright 2015 Codasip Ltd
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
 *  \author Tomas Ondrus
 *  \date   Mar 30, 2015
 *  \brief  Declaration/Implementation of the class.
 */

#ifndef GETOPTL_INTERFACE_OPTIONSSIM_H_
#define GETOPTL_INTERFACE_OPTIONSSIM_H_

#include "basicoptions.h"
#include <map>
#include <set>
#include <iostream>

namespace codasip {
namespace debugger {
class DebuggerInterface;
}
namespace simulator {
class SimulatorPrivateInterface;
}

namespace getopt {

/// Container for names of ASIPs
typedef std::map<std::string, simulator::SimulatorPrivateInterface*> Asips;
/// Container for options for logging
typedef std::map<unsigned, std::string> LogTypeOptions;


/**
 * \brief Options for starting of simulation.
 */
class SimulatorOptions : public virtual BasicOptions
{
public:
    /**
     * \class SimulatorOptions::Asip
     * \brief Options for single ASIP in simulation. Specifies executable and arguments.
     *        If executable is empty, such ASIP was used in configuration but no executable was
     *        set, so we just check correct ASIP name and use global executable.
     */
    class Asip
    {
    public:
        Asip() : m_LoadSim(true)
        {}
        const std::string& GetExecutable() const
        {
            return m_Executable;
        }
        bool HasExecutable() const
        {
            return !m_Executable.empty();
        }
        const std::string& GetProgArgs() const
        {
            return m_ProgArgs;
        }
        bool LoadSim() const
        {
            return m_LoadSim;
        }
        void SetExecutable(const std::string& exe, const std::string& args)
        {
            m_Executable = exe;
            m_ProgArgs = args;
        }
        void SetLoadSim(const bool loadSim)
        {
            m_LoadSim = loadSim;
        }
        LogTypeOptions& GetLogOptions()
        {
            return m_Log;
        }
        const LogTypeOptions& GetLogOptions() const
        {
            return m_Log;
        }

    private:
        std::string m_Executable;
        std::string m_ProgArgs;
        bool m_LoadSim;
        LogTypeOptions m_Log;
    };

    /**
     * \class SimulatorOptions::Component
     * \brief Options for a single component in simulation. Specifies custom params.
     */
    class Component
    {
    public:
        typedef std::vector<std::string> Args;

        Component()
        {}
        const Args& GetArgs() const
        {
            return m_Args;
        }
        void SetArgs(const Args& args)
        {
            m_Args = args;
        }
    private:
        Args m_Args;
    };

    class DumpOptions
    {
    public:
        DumpOptions()
            : m_Load(false),
              m_Vcd(false)
        {};

        bool IsLoad() const
        {
            return m_Load;
        }
        bool IsVcd() const
        {
            return m_Vcd;
        }
        void SetFormat(const bool load, const bool vcd)
        {
            m_Load = load;
            m_Vcd = vcd;
        }
        const std::vector<std::string>& GetResources() const
        {
            return m_Resources;
        }
        std::vector<std::string>& GetResources()
        {
            return m_Resources;
        }

    private:
        bool m_Load;
        bool m_Vcd;
        std::vector<std::string> m_Resources;
    };

    /// Container for options (value) for ASIP of given name (key)
    typedef std::map<std::string, Asip> AsipOptions;
    /// Container for options (value) for component of given name (key)
    typedef std::map<std::string, Component> ComponentOptions;
    /// Container for dump options (value) for file (key)
    typedef std::map<std::string, DumpOptions> DumpFiles;
    ///
    typedef std::set<unsigned int> Sequences;

    virtual bool IsMI() const = 0;
    virtual bool IsRunOnly() const = 0;
    virtual unsigned short GetTCPPort() const = 0;
    virtual bool UseTCP() const = 0;
    virtual bool IsProfiler() const = 0;
    virtual const std::string& GetProfilerOutput() const = 0;
    virtual unsigned int GetProfilerSamplingRate() const = 0;
    virtual bool ProfilerEnabledCallStack() const = 0;
    virtual Sequences GetProfilerSequences() const = 0;
    virtual bool HasDumpClockCycles() const = 0;
    virtual const std::string& GetDumpClockCycles() const = 0;
    virtual bool GetDumpSimulatorInfo() const = 0;
    virtual bool IsBatchMode() const = 0;
    virtual const std::string& GetBatchFile() const = 0;
    virtual bool ExecuteInitBatchFile() const = 0;
    virtual bool VerifyExecutables() const = 0;
    virtual uint64_t GetTimeout() const = 0;

    /**
     * \brief Get options for specific ASIPs
     */
    const AsipOptions& GetAsipsOptions() const
    {
        return m_AsipArgs;
    }
    /**
     * \brief Get options for specific ASIPs
     */
    const ComponentOptions& GetComponentOptions() const
    {
        return m_ComponentArgs;
    }
    /**
     * \brief Get global options for all ASIPs
     */
    const Asip& GetGlobalOptions() const
    {
        return m_GlobalArgs;
    }
    /**
     * \brief Get options for dumping of resources
     */
    const DumpFiles& GetDumpFiles() const
    {
        return m_DumpFiles;
    }

    static SimulatorOptions* Create();

protected:
    AsipOptions m_AsipArgs;
    ComponentOptions m_ComponentArgs;
    Asip m_GlobalArgs;
    DumpFiles m_DumpFiles;
};

/// Helper to call proper method on simulator and debugger to load executable
template<class Destination> struct LoadHelper;

/**
 * \brief Helper for loading executable into simulator
 * \note  Second template is needed so inclusion of simulator header is not needed and simulator
 *        can stay incomplete type
 */
template<> struct LoadHelper<simulator::SimulatorPrivateInterface>
{
    template<class Destination, typename Asip>
    static void Load(
        Destination& dest,
        const Asip& asip,
        const std::string& exe,
        const std::string& args,
        const bool /*load*/)
    {
        asip.second->LoadExecutable(exe, args);
    }
};

/**
 * \brief Helper for loading executable into debugger
 * \note  Second template is needed so inclusion of debugger header is not needed and debugger
 *        can stay incomplete type
 */
template<> struct LoadHelper<debugger::DebuggerInterface>
{
    template<class Destination>
    static void Load(
        Destination& dest,
        const Asips::value_type& asip,
        const std::string& exe,
        const std::string& args,
        const bool load)
    {
        // debugger needs to know if application should be loaded into simulator
        dest.LoadExecutable(asip.first, exe, args, load);
    }
};

/**
 * \brief Load executable set in arguments into destination (simulator or debugger)
 * \param dest Simulator or debugger that will be used to load executable using
 *             LoadExecutable method
 * \param asipNames Container of ASIP names in simulator
 * \param args Arguments set by user to run simulator
 * \return Return true on success, false on error
 */
template<class Destination>
bool LoadAndCheckExecutables(Destination& dest,
    const Asips& asips,
    const SimulatorOptions& args)
{
    const SimulatorOptions::AsipOptions& options = args.GetAsipsOptions();

    ////////////////////////////////////////////////////////////////////////////////////////////////
    // Check all ASIP names used in arguments
    ////////////////////////////////////////////////////////////////////////////////////////////////
    for (SimulatorOptions::AsipOptions::const_iterator arg = options.begin();
        arg != options.end();
        ++arg)
    {
        if (!asips.count(arg->first))
        {
            std::cerr << "error: ASIP " << arg->first
                << " used in simulator arguments was not found in simulator." << std::endl;
            return false;
        }
    }

    ////////////////////////////////////////////////////////////////////////////////////////////////
    // Load executables
    ////////////////////////////////////////////////////////////////////////////////////////////////
    for (auto& asip : asips)
    {
        auto opt = options.find(asip.first);
        // specific options found
        if (opt != options.end() && opt->second.HasExecutable())
        {
            LoadHelper<Destination>::Load(dest,
                asip,
                opt->second.GetExecutable(),
                opt->second.GetProgArgs(),
                opt->second.LoadSim());
        }
        // use global options
        else if (args.GetGlobalOptions().HasExecutable())
        {
            LoadHelper<Destination>::Load(dest,
                asip,
                args.GetGlobalOptions().GetExecutable(),
                args.GetGlobalOptions().GetProgArgs(),
                args.GetGlobalOptions().LoadSim());
        }
        // no application found and we are not using debugger
        else if (args.IsRunOnly())
        {
            std::cerr << "error: no executable set for ASIP " << asip.first << std::endl;
            return false;
        }
    }

    return true;
}

}   // namespace codasip::getopt
}   // namespace codasip

#endif  // GETOPTL_INTERFACE_OPTIONSSIM_H_
