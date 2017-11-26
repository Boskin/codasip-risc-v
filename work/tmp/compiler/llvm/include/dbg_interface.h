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
 *  \author Petr Hons
 *  \date   8. 10. 2015
 *  \brief  Global external interface for creating debugger instance
 */

#ifndef _DEBUGGER_INTERFACE_H_
#define _DEBUGGER_INTERFACE_H_

#include "codasip_interface.h"

namespace codasip {
namespace debugger {

/**
 *  \brief  Public interface for Codasip debugger for initialization of simulation
 *          and external control.
 */
class DebuggerInterface : public simulator::DebuggerInterface
{
public:
    /**
     * \brief Custom function that is called when debugger starts simulation
     * \param User defined argument, or NULL
     */
    typedef void (*DebuggerMainFunc) (void*);
    /**
     * \brief Ctor, it creates all managers and issues its initialization
     * \param name Debugger name
     * \param mi True if MI interface should be used, false for GDB/CLKI
     * \param tcp True if network interface should be initialized, false if commands will
     *        be issued using standard input.
     * \param port Port number in the case of TCP/IP communication (tcp = true). If set to 0,
     *        debugger will use dynamic port and print it on standard output.
     */
    static DebuggerInterface* Create(const std::string & name,
        const bool mi,
        const bool tcp,
        const unsigned short port = 0,
        const bool batch = false);
    /**
     * \brief Virtual destructor
     */
    virtual ~DebuggerInterface() {};
    /**
     * \brief Run main debugger loop and blocks until the debugger is terminated. The main debugger
     *        loop executes user commands. When simulation command (e.g. run) is executed, spawns
     *        new thread with simulator.
     */
    virtual void Run() = 0;
    /**
     * \brief Initializes main debugger loop in different thread. Blocks until user sends simulation
     *        command (e.g. run). When debugger is initialized in remote mode (\ref Create - tcp
     *        is enabled and port is set), debugger main loop is spawned that waits for connection
     *        and the method immediately returns.
     * \param blockUntilRun When debugger is initialized in remote mode, this method blocks
     *        until user attaches to the debugger and runs the simulation (command run or
     *        -exec-run).
     * \return True when initialization was successful and simulation should be run. False when
     *        debugger was terminated by user (quit command) or some error occurs.
     */
    virtual bool Init(const bool blockUntilRun = false) = 0;
    /**
     * \brief Stop listen to the user commands.
     */
    virtual void Exit() = 0;
    /**
     * \brief Load executable file, it fills the simulator's memory and
     *        also the debugger symbol tables for BP/WP
     * \param asip Inferior name
     * \param executable Path to the executable
     * \param arguments Executable parameters
     * \param loadSim True if executable should be loaded into simulator and debugger,
     *        false if only into debugger
     */
    virtual void LoadExecutable(const std::string& asip,
        const std::string& executable,
        const std::string& arguments = std::string(),
        const bool loadSim = true) = 0;
    /**
     * \brief Ignore \p section while loading executables
     */
    virtual void IgnoreSection(const std::string & section) = 0;
    /**
     * \brief   Run commands from file
     * \return  Success of execution. If file couldn't be opened or some command failed, return
     *          false.
     */
    virtual bool ExecuteCommandsFromFile(const std::string& file, const bool print = false) = 0;

};

}   // namespace codasip::debugger
}   // namespace codasip


#endif  // _DEBUGGER_INTERFACE_H_
