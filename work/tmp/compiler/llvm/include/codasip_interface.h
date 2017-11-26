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
 *  \author Codasip Ltd.
 *  \brief  Codasip simulator and debugger interfaces that can be re-implemented to support
 *          custom implementation.
 */

#ifndef _CODASIP_INTERFACE_H_
#define _CODASIP_INTERFACE_H_

#include <stdint.h>
#include <string>
#include <set>

namespace codasip {
namespace simulator {
// forward declaration
class DebuggerInterface;
class SimulatorInterface;
class Path;

/// ID of ASIP thread, indexed from 0
typedef uint16_t ThreadId;
/// Typedef for addresses
typedef uint64_t Address;
/// Data type that is used to store binary data for data watchpoint or access to resources
typedef uint8_t Data;

/// ID of invalid thread
static const ThreadId INVALID_THREAD_ID = ThreadId(-1);
/// Invalid address
static const Address INVALID_ADDRESS = Address(-1);

/// Level of stepping and stopping of the simulator
typedef enum
{
    /// Invalid level
    LEVEL_INVALID = 0,
    /// Stepping in instructions / C code
    LEVEL_INSTRUCTION,
    /// Stepping in CodAL statements
    LEVEL_CODAL
} DebugLevel;

/// Type of logging message
typedef enum
{
    /// Invalid log type
    LOG_TYPE_INVALID = 0,
    /// Informative messages using codasip_print
    LOG_TYPE_PRINT,
    /// Informative messages using codasip_info
    LOG_TYPE_INFO,
    /// Warning messages using codasip_warning
    LOG_TYPE_WARNING,
    /// Warning messages using codasip_error
    LOG_TYPE_ERROR,
    /// Warning messages using codasip_fatal
    LOG_TYPE_FATAL
} LogType;

/// Type of debugging event
typedef enum
{
    /// Invalid stop reason
    EVENT_INVALID = 0,
    /// Breakpoint was hit
    EVENT_BREAKPOINT,
    /// Single step was performed
    EVENT_STEP,
    /// Watchpoint at given address was hit
    EVENT_ADDRESS_WATCHPOINT,
    /// Watchpoint with given data was hit
    EVENT_DATA_WATCHPOINT,
    /// Stack overflow was detected
    EVENT_STACK_OVERFLOW,
    /// Invalid instruction was decoded
    EVENT_INVALID_INSTRUCTION
} EventType;

/// Return codes for simulator
typedef enum
{
    /// Success return code
    SIM_OK = 0,
    /// Simulation successfully halted
    SIM_HALT,
    /// Simulation failed
    SIM_FAIL,
    /// Simulation was killed from debugger
    SIM_KILLED,
    /// Instruction generator failed to generate output
    INSTGENERATOR_FAIL,
    /// Instruction generator succeeded to generate output
    INSTGENERATOR_OK,
    /// Instruction parser succeeded to parse input
    INSTPARSER_OK,
    /// There are no more data to parse for instruction parser
    INSTPARSER_DONE,
    /// Instruction parser failed to parse input
    INSTPARSER_INVALIDCODE,
    /// disassembler finished
    DSM_DONE,
    /// one instruction was successfully disassembled
    DSM_OK,
    /// Marks last return code
    SIM_RETURN_CODE_END
} SimulatorReturnCode;

////////////////////////////////////////////////////////////////////////////////////////////////////
/**
 *  \class  PathIterator
 *  \brief  Bidirectional const iterator over simulator Path
 */
class PathIterator :
    public std::iterator<std::bidirectional_iterator_tag,
          const std::string, // Iterator type
          unsigned>          // Reference type
{
public:
    /// \brief  Constructor
    PathIterator(const Path& path);
    /// \brief  Constructor of end() iterator
    PathIterator();
    /// \brief  Access to stored element
    reference operator*() const;
    /// \brief  Access to stored element
    pointer operator->() const ;
    /**
     *  \brief  Iterator operators
     *  \{
     */
    bool operator==(const PathIterator& rhs) const;
    bool operator!=(const PathIterator& rhs) const;
    PathIterator& operator--();
    PathIterator& operator++();
    PathIterator operator--(int);
    PathIterator operator++(int);
    /**
     *  \}
     */
private:
    /// \brief  Move the iterator
    void Move(const bool forward);

    /// Associated path object
    const Path* m_Path;
    /// Current element
    std::string m_Current;
    /// Position of current element
    size_t m_Pos;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
/**
 *  \class  Path
 *  \brief  Stores string that contains path to the resource (e.g. "level1.asip.resource_test")
 */
class Path
{
public:
    typedef PathIterator const_iterator;
    typedef std::reverse_iterator<const_iterator> const_reverse_iterator;

    typedef std::string value_type;
    typedef value_type::difference_type difference_type;
    typedef value_type* pointer;
    typedef value_type& reference;

    /**
     *  \brief  Constructor
     *  \{
     */
    Path();
    Path(const std::string&);
    Path(const char*);

    template<class Iterator>
    Path(Iterator it, Iterator last)
    {
        for (; it != last; ++it)
        {
            if (!m_Path.empty())
            {
                m_Path.append(1, '.');
            }
            m_Path += *it;
        }
    }
    /**
     *  \}
     *  \brief  Automatic conversion
     */
    operator std::string() const
    {
        return m_Path;
    }
    /**
     *  \{
     *  \brief  Return stored path string
     */
    const std::string& GetPath() const;
    const char* c_str() const;
    /**
     *  \}
     *  \brief  Set stored path string
     */
    void SetPath(const std::string& path);
    /**
     *  \brief  Return const begin iterator
     */
    const_iterator begin() const;
    /**
     *  \brief  Return const end iterator
     */
    const_iterator end() const;
    /**
     *  \brief  Return if given path is empty
     */
    bool Empty() const;
    /**
     *  \brief  Clears stored path
     */
    void Clear();

private:
    std::string m_Path;
};

/**
 * \brief Enables using Path in C++ streams, returns its name
 */
inline std::ostream& operator<<( std::ostream& os, const Path& s )
{
    os << s.GetPath();
    return os;
}
/**
 * \brief Enables using Path in C++ streams, returns its name
 */
inline bool operator==(const Path& l, const Path& r)
{
    return l.GetPath() == r.GetPath();
}

////////////////////////////////////////////////////////////////////////////////////////////////////
/**
 *  \class  StopLocation
 *  \brief  Describes location in single ASIP simulator code where debugging event occurred.
 */
class StopLocation
{
public:
    /**
     *  \brief  Constructor.
     */
    StopLocation();
    /**
     *  \brief  Constructor.
     *  \param  tid ID of ASIP instance thread where event occurred.
     *  \param  addr Code address.
     *  \param  lvl Describes type of code where debugging event occurred.
     */
    StopLocation(const ThreadId tid,
        const Address addr,
        const DebugLevel lvl);
    /**
     *  \brief  Access to internal attributes
     *  \{
     */
    ThreadId GetThread() const;
    Address GetAddress() const;
    DebugLevel GetLevel() const;
    /**
     *  \}
     *  \brief Methods for setting internal attributes
     *  \{
     */
    void SetThread(const ThreadId thread);
    void SetAddress(const Address address);
    void SetLevel(const DebugLevel level);
    /**
     *  \}
     */
protected:
    /// Thread ID where event occurred.
    ThreadId m_Thread;
    /// Code address
    Address m_Address;
    /// Type of code
    DebugLevel m_Level;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
/**
 *  \class  BreakpointInfo
 *  \brief  Describes attributes for changing breakpoint at given address.
 */
class BreakpointInfo : public StopLocation
{
public:
    /**
     *  \brief  Constructor.
     */
    BreakpointInfo();
    /**
     *  \brief  Constructor.
     *  \param  addr Address of breakpoint to change.
     *  \param  lvl Type of code where breakpoint will be set.
     *  \param  enabled True if given breakpoint will be enabled, false if it will be disabled.
     */
    BreakpointInfo(const Address addr,
        const DebugLevel lvl = LEVEL_INSTRUCTION,
        const bool enabled = true);
    /**
     *  \brief  Return if breakpoint that is being set will get enabled or disabled.
     */
    bool IsEnabled() const;
    /**
     *  \brief  Change the state the breakpoint will be set to.
     */
    void SetEnabled(const bool enabled = true);

protected:
    /// True if given breakpoint will be enabled, false if it will be disabled.
    bool m_Enabled;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
/**
 *  \class  WatchpointInfo
 *  \brief  Describes attributes for changing watchpoint or informing when given watchpoint is hit
 */
class WatchpointInfo
{
public:
    /// Type of access the watchpoint stops at.
    typedef enum
    {
        /// Invalid type
        NONE  = 0,
        /// Hit watchpoint when given data/address is read
        READ  = 1,
        /// Hit watchpoint when given data/address is written
        WRITE = READ << 1,
        /// Hit watchpoint when given data/address is read or written
        ALL   = READ | WRITE
    } AccessType;

    /**
     *  \brief  Constructor
     */
    WatchpointInfo();
    /**
     *  \brief  Return true if watchpoint is assigned to specific resource (true) and GetResource
     *          returns valid resource info, or is assigned to default address space (false)
     */
    bool HasAssignedResource() const;
    /**
     *  \brief  Access internal attributes
     *  \{
     */
    bool IsEnabled() const;
    bool IsDataWatchpoint() const;
    bool IsCodal() const;
    const Path& GetResource() const;
    Address GetAddress() const;
    Address GetSize() const;
    AccessType GetAccessType() const;
    const Data* GetData() const;
    unsigned GetDataBitSize() const;
    /**
     *  \}
     *  \brief  Store information about setting the address watchpoint
     *  \param  access Type of access to break at.
     *  \param  addr Address the watchpoint will hit at
     *  \param  size Size of watchpoint in LAU
     *  \param  resource Set interface / address space the watchpoint belongs to. If
     *          empty (default), default data address space will be used.
     */
    void SetAddressWatchpoint(const AccessType access,
        const Address addr,
        const Address size = 1,
        const Path resource = "");
    /**
     *  \brief  Store information about setting the data watchpoint
     *  \param  access Type of access to break at.
     *  \param  data Pointer to buffer containing data to break at. This data will get copied.
     *  \param  bitSize Bit size of \p data buffer.
     *  \param  resource Set interface / address space the watchpoint belongs to.  If
     *          empty (default), default data address space will be used.
     */
    void SetDataWatchpoint(const AccessType access,
        const Data* data,
        const unsigned bitSize,
        const Path resource = "");
    /**
     *  \brief  Set address and access type of hit watchpoint that was hit in given resource
     *  \param  resource Path to resource where WP was hit
     *  \param  address Address where hit occurred
     *  \param  access Type of access at given \p address
     */
    void SetAccess(const Path& resource,
        const Address address,
        const WatchpointInfo::AccessType access);
    /**
     *  \brief  Change the state the watchpoint will be set to.
     */
    void SetEnabled(const bool enabled = true);
    /**
     *  \brief  Set address where address watchpoint should hit
     */
    void SetAddress(const Address addr);
    /**
     *  \brief  Set if watchpoint should suspend the execution in CodAL code, false for code
     */
    void SetCodal(const bool codal);

private:
    /// True if watchpoint is enabled, false otherwise
    bool m_Enabled;
    /// True if watchpoint should suspend the execution in CodAL code, false for code
    bool m_Codal;
    /// True if \ref m_Resource is describing some resource or default data address
    /// space should be used
    bool m_ResourceValid;
    /// resource where watchpoint hit
    Path m_Resource;
    /// Type of watchpoint access
    AccessType m_Access;
    /// Memory address of address watchpoint to be watched
    Address m_Address;
    /// Size describing range to watch
    Address m_Size;
    /// Data of data watchpoint to be watched
    const Data* m_Data;
    /// Bitsize of m_Data
    unsigned m_DataBitSize;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
/**
 *  \class  EventInfo
 *  \brief  Describes single debugging event sent to debugging interface HandleEvent method.
 */
class EventInfo : public StopLocation
{
public:
    /**
     *  \brief  Constructor
     */
    EventInfo();
    /**
     *  \brief  Constructor
     *  \param  tid ID of the thread where debugging event occurred.
     *  \param  addr Code address where debugging event occurred.
     *  \param  lvl Level describing type of code address.
     *  \param  type Reason describing type of event
     */
    EventInfo(const ThreadId tid,
        const Address addr,
        const DebugLevel lvl,
        const EventType type);
    /**
     *  \brief  Return type of event
     */
    EventType GetType() const;
    /**
     *  \brief  Return attributes of hit watchpoint, or NULL
     */
    const WatchpointInfo* GetWatchpointHit() const;
    /**
     *  \brief  Method setting internal attributes
     *  \{
     */
    void SetReason(const EventType reason);
    void SetWatchpointHitInfo(const WatchpointInfo* = NULL);
    /// \}

protected:
    /// Type of event
    EventType m_Type;
    /// Contains description of watchpoint hit
    const WatchpointInfo* m_Watchpoint;
};


////////////////////////////////////////////////////////////////////////////////////////////////////
/**
 *  \class  SimulatorInterface
 *  \brief  Interface that is implemented by every Codasip simulator. Can be used to control
 *          the simulation, register a debugger interface and retrieve the state of simulation.
 */
class SimulatorInterface
{
public:
    ////////////////////////////////////////////////////////////////////////////////////////////////
    // Thread safe interface, can be used when simulation is running (ClockCycle() is running)    //
    ////////////////////////////////////////////////////////////////////////////////////////////////
    /**
     *  \brief  Halt simulator execution, all its sub-simulators and all its threads.
     *  \note   Thread-safe, can be used when simulation (ClockCycle) is running
     */
    virtual void Kill() = 0;
    /**
     *  \brief  Resume ASIP execution and all its threads. Undefined behavior when given ASIP
     *          instance is not suspended.
     *  \note   Thread-safe
     */
    virtual void Resume() = 0;
    /**
     *  \brief  Interrupt ASIP execution and all its threads. When its already interrupted, no
     *          action is performed. \ref HandleEvent on registered Debugger interface will
     *          be called with stop reason STOP_STEP.
     *  \note   Thread-safe, can be used when simulation (ClockCycle) is running
     */
    virtual void Interrupt() = 0;
    /**
     *  \brief  Return the full path of the simulator.
     */
    virtual const Path& GetPath() const = 0;

    ////////////////////////////////////////////////////////////////////////////////////////////////
    // Not-thread safe interface, can be used only when simulation is suspended (in HandleEvent   //
    // callback or when HandleEvent returned true and Resume was not called)                      //
    ////////////////////////////////////////////////////////////////////////////////////////////////
    /**
     *  \brief  Destructor
     */
    virtual ~SimulatorInterface() {}
    /**
     *  \brief  Reset simulator. Will activate reset CodAL event and wait until its execution
     *          finishes.
     *  \return SIM_OK on success, SIM_HALT when simulation halted, other return codes on error.
     */
    virtual int Reset() = 0;
    /**
     *  \brief  Simulate single clock cycle of the simulator and all its parts. Returns simulator
     *          code SimulatorReturnCode
     *  \return SIM_OK on success, SIM_HALT when simulation halted, other return codes on error.
     */
    virtual int ClockCycle() = 0;
    /**
     *  \brief  Return current clock count for given
     */
    virtual uint64_t GetCycleCount() const = 0;
    /**
     *  \brief  Load executable into given ASIP instance.
     *  \param  asip ASIP name where the application will be loaded into.
     *  \param  executable Path to the executable (.xexe file) to be loaded
     *  \param  arguments String containing arguments that will be available in C main function
     *          argc and argv arguments.
     *  \return Success of executable loading.
     */
    virtual bool LoadExecutable(const std::string& executable,
        const std::string& arguments = std::string()) = 0;
    /**
     *  \brief  Set debugging level for given ASIP instance. Controls where execution will
     *          be suspended (HandleEvent will be called) when step mode is enabled.
     *  \param  level Debugging level to be set
     */
    virtual void SetDebugLevel(const DebugLevel level) = 0;
    /**
     *  \brief  Enable or disable stepping mode (interrupt after each instruction) for given
     *          ASIP thread.
     *  \param  tid Thread ID of thread of given \ref asip that stepping mode will be changed
     *  \param  stepMode True for enabling stepping mode, false for disabling.
     */
    virtual void SetThreadStepMode(const ThreadId tid, const bool stepMode) = 0;
    /**
     *  \brief  Change breakpoint in given ASIP instance
     *  \param  info Information about breakpoint to change. Contains address and state
     *          of the breakpoint to set (enable/disable).
     */
    virtual void SetBreakpoint(const BreakpointInfo& info) = 0;
    /**
     *  \brief  Change data/address watchpoint (hit when given addres is read/written) in given ASIP
     *          instance
     *  \param  info Information about watchpoint to change. Contains address/data and state
     *          of the watchpoint to be set (enable/disable).
     */
    virtual bool SetWatchpoint(const WatchpointInfo& info) = 0;
    /**
     *  \brief  Read simulator resource
     *  \param  output Output buffer where data will be stored
     *  \param  outputLen Length of the output buffer in bytes (sizeof operator)
     *  \param  resource Path to resource that should be read
     *  \param  addr Optional address for addressed resources, for simple registers use 0
     *  \return Success of read
     */
    virtual bool ResourceRead(Data* output,
        unsigned outputLen,
        const Path& resource,
        const Address addr = 0) = 0;
    /**
     *  \brief  Write into simulator resource
     *  \param  resource Path to resource that should be written to
     *  \param  data Input buffer with data that should be written
     *  \param  dataLen Length of the output buffer in bytes (sizeof operator)
     *  \param  addr Optional address for addressed resources, for simple registers use 0
     *  \return Success of write
     */
    virtual bool ResourceWrite(const Data* data,
        const unsigned dataLen,
        const Path& resource,
        const Address addr = 0) = 0;
    /**
     *  \brief  Controls of single logging type logging for simulator.
     *  \param  type Logging type to be changed
     *  \param  options Options setting enabled logging type verbosity levels. Format:
     *          0,1,2-3,4-,5+:
     *          0  : enable single type
     *          2-3: enable range
     *          4- : disable single type
     *          5+ : enable all types from 5 up including 5
     */
    virtual void SetLogging(const LogType type, const std::string& options) = 0;
    /**
     *  \brief  Set profiler options for given simulator.
     *  \param  output Path to the output file
     *  \param  samplingRate Sampling rate in number of clock cycle. E.g. sampling rate 10
     *          issues profiler data dump every 10th clock cycle.
     *  \param  enabledCallStack Enabled call stack tracking
     *  \param  sequenceLengths All tracked sequences of instructions
     */
    virtual void InitProfiler(const std::string& output,
        const unsigned int samplingRate,
        const bool enabledCallStack,
        const std::set<unsigned int>& sequenceLengths) = 0;
    /**
     *  \brief  Register given debugger interface into the simulator. When any debugging event
     *          occurs, this registered interface will be informed by call to its virtual methods.
     *          When the same interface is already registered, no action is performed.
     */
    virtual void Register(DebuggerInterface& iface) = 0;
    /**
     *  \brief  Return last error message from simulator
     */
    virtual const std::string& GetLastError() const = 0;
    /**
     *  \brief  Set simulation timeout (max clock cycles).
     *  \param  timeout Maximum number of clock cycles
     */
    virtual void SetTimeout(const uint64_t timeout) = 0;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
/**
 *  \class  DebuggerInterface
 *  \brief  Interface that is describing interface the simulator can use to inform about various
 *          debugging events.
 *  \note   Common order of methods call by Codasip simulator:
 *          Register -> AsipAdded(for each ASIP) -> ThreadStarted
 *              -> HandleEvent (multiple times) -> ThreadExited -> AsipExited
 */
class DebuggerInterface
{
public:
    /**
     *  \brief  Destructor
     */
    virtual ~DebuggerInterface() {}
    /**
     *  \brief  Called after registration of this interface into the simulator for every ASIP
     *          instance.
     *  \param  asip Reference to ASIP simulator that was created
     *  \param  name Name of the ASIP instance
     */
    virtual void AsipAdded(SimulatorInterface& asip) = 0;
    /**
     *  \brief  Called before execution of thread started after ASIP execution starts.
     *  \param  asip Reference to ASIP simulator that has started
     *  \param  tid Thread ID of the started thread.
     */
    virtual void ThreadStarted(SimulatorInterface& asip, const ThreadId tid) = 0;
    /**
     *  \brief  Called when debugging event occurs in the simulator.
     *  \param  info Describes location and reason of the simulator stop.
     *  \return When true is returned, simulator will be suspended (can be resumed by Resume()
     *          call). When false is returned, the simulation will continue.
     */
    virtual bool HandleEvent(SimulatorInterface& asip, const EventInfo& info) = 0;
    /**
     *  \brief  Called after execution of the thread ends with given exit code set by
     *          CodAL built-in codasip_store_exit_code
     *  \param  asip Reference to ASIP simulator instance where thread ended.
     *  \param  tid Thread ID of the ended thread.
     *  \param  exitcode Exit code returned by ended thread
     */
    virtual void ThreadExited(SimulatorInterface& asip, const ThreadId tid, const int exitcode) = 0;
    /**
     *  \brief  Called after all ASIP execution ended after all its threads ended.
     *  \param  asip Reference to ASIP simulator instance whose execution ended.
     *  \param  exitcode Exit code of ASIP instance. If single thread is present, its the same
     *          as thread exit code.
     *  \param  msg Error message when simulation fails or empty.
     */
    virtual void AsipExited(SimulatorInterface& asip,
        const int exitcode,
        const std::string& msg) = 0;
    /**
     *  \brief  Called when simulation generates output message (builtins codasip_print,
     *          codasip_info, etc.). Message is already formatted, this method can be used
     *          to redirect messages into different locations based on message type.
     *  \param  type Type of message
     *  \param  sim Simulator where message was generated
     *  \param  output Text of message
     */
    virtual void Output(SimulatorInterface& sim,
        const LogType type,
        const std::string& output) = 0;
    /**
     *  \brief  Register given simulator interface into current debugger interface. Should
     *          call SimulatorInterface::Register so both interfaces know about each other.
     */
    virtual void Register(SimulatorInterface& iface) = 0;
};

/**
 * \brief Generic payload used in foreign simulators for memory related
 */
class ForeignPayload
{
public:
    /**
     * \brief Default constructor
     */
    ForeignPayload();
    /**
     * \brief Reset all attributes to 0
     */
    void Reset();
    /**
     * \{
     * \brief Getter
     */
    Address GetAddress() const;
    unsigned int GetBc() const;
    unsigned int GetBi() const;
    int GetCommand() const;
    uint8_t* GetData();
    const uint8_t* GetData() const;
    int GetResponse() const;
    int GetStatus() const;
    unsigned int GetDataLength() const;
    /**
     * \}
     * \{
     * \brief Setter
     */
    void SetAddress(const Address address);
    void SetBc(const unsigned int bc);
    void SetBi(const unsigned int bi);
    void SetCommand(const int command);
    void SetData(uint8_t* data);
    void SetResponse(const int response);
    void SetStatus(const int status);
    void SetDataLength(const unsigned int length);
    /** \} */

private:
    /// Command for the request
    int m_Command;
    /// Address of the request
    Address m_Address;
    /// data that should be written
    uint8_t* m_Data;
    /// byte index
    unsigned int m_Bi;
    /// byte count
    unsigned int m_Bc;
    /// Status of slave
    int m_Status;
    /// Response from slave
    int m_Response;
    /// Length of data and mask
    unsigned int m_DataLength;
};

}   // namespace codasip::simulator
}   // namespace codasip


#endif  // _CODASIP_INTERFACE_H_
