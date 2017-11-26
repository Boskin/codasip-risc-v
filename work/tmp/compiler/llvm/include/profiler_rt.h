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
 *  \author Pavel Richtarik
 *  \date   Oct 26, 2015
 *  \brief
 */

#ifndef SIMULATORS2_PROFILERL_PROFILER_RT_PROFILER_RT_H_
#define SIMULATORS2_PROFILERL_PROFILER_RT_PROFILER_RT_H_


#include "check_condition.h"
#include "compiler.h"
#include "profiler_rt_types.h"
#include "unwinder_wrapper.h"
#include "codasip_log.h"

#include <algorithm>
#include <map>
#include <initializer_list>

namespace codasip {
namespace profiler {
namespace runtime {

class Writer;

/**
 * \class DumpWriter
 * \brief Create output file and write header in the beginning.
 *        Order of the operations is mandatory:
 *        0. - Initialize - SetHeader(), ...
 *        1. - Start()
 *        2. - zero or many CreateSample() - CommitSample()
 *        3. - Stop()
 *
 *        Any statistics (samples) can be created / updated any time,
 *        before they are written.
 */
class ProfilerRt
{
public:
    /**
     * \brief Default constructor
     */
    ProfilerRt();
    /**
     * \brief Default descturctor
     */
    ~ProfilerRt();
    /**
     * \brief Initialize unwinder. It is called when no debugger is involved
     * \param objectFile Object file with debug info
     * \param sim Simulator info
     */
    void InitUnwinder(const objfile::ObjectFile& objectFile,
        simulator::SimulatorPrivateInterface& sim);
    /**
     * \brief Initialize unwinder. It is called when a debugger is involved
     * \param unwinder Debugger's unwinder
     */
    void InitUnwinder(debugger::UnwinderWrapper* unwinder);
    /**
     * \brief Initialize blocks if there are any in the object file
     * \param objectFile Object file with debug info
     */
    void InitBlocks(const objfile::ObjectFile& objectFile);
    /**
     * \brief Set id of the ASIP
     * \param id Identifier
     */
    void SetId(const std::string& id);
    /**
     * \brief Set signature of the ASIP
     * \param signature Global signature
     */
    void SetSignature(const std::string& signature);
    /**
     * \brief Sets the executable path
     * \param filename
     */
    void SetExecutable(const filesystem::Path& filename);
    /**
     * \brief Initialize sampling rate
     * \param samplingRate Sampling rate
     */
    void SetSamplingRate(const int samplingRate);
    /**
     * \brief Set writer object
     * \param writer Writer object
     */
    void SetWriter(Writer& writer);
    /**
     * \brief Enable call stack handling
     * \param enabled true/false value
     */
    void EnableCallStack(const bool enabled);
    /**
     * \brief Enable block only mode
     * \param enabled true/false value
     */
    void EnableBlockOnly(const bool enabled);
    /**
     * \brief Set tracked sequences of instructions
     * \param sequenceLengths Container with tracked instructions
     */
    void SetSequenceLengths(const DecoderBase::SequenceLengths& sequenceLengths);
    /**
     * \brief  Start output. Open the given file, write header info, expect stack snapshots.
     * \param  filePath Output file name that will be used for dump
     */
    void Start();
    /**
     * \brief  Write footer data, particularly total number of cycles and close the file.
     * \param  cyclesCount
     */
    void Stop(const uint64_t cyclesCount);
    /**
     * \brief  Clear all data except header
     */
    void Reset();
    /**
     * \brief   Create a new sample that is used for data logging
     * \param   clockCycle current clock cycle
     * \param   address Current address of the sample
     */
    void CreateSample(const uint64_t clockCycle, const codasip_address_t address);
    /**
     * \brief   Commit sample, update counters for the active address.
     */
    void CommitSample();
    /**
     * \brief   Create decoder statistics.
     * \tparam  BITS Bitwidth of the decodere
     * \param   intId Id used for fast access
     * \param   textId Textual id used for dumping
     */
    template <class T>
    void AddDecoder(const int intId,
        const std::string& textId,
        const std::string& signature,
        const int maxBitWidth);
    /**
     * \brief Add a new pipeline into the system
     * \param intId Fast id of the pipe
     * \param textId Textual id of the pipe
     */
    void AddPipeline(const int intId, const std::string& textId);
    /**
     * \brief Add pipeline stage to the pipeline, pipeline must exists
     * \param pipelineIntId Pipeline fast id
     * \param stageIntId Stage fast id
     * \param textId Textual form of stage
     */
    void AddPipelineStage(const int pipelineIntId, const int stageIntId, const std::string& textId);
    /**
     * \brief Add one codal statement that will be tracked during simulation
     * \param address Address of the statement
     * \param file File name
     * \param line Line number
     */
    void AddCodalStatement(const codasip_address_t address,
        const std::string& file,
        const unsigned line);
    /**
     * \brief   Add condition to be tracked.
     */
    void AddCodalCondition(const codasip_address_t conditionId,
        const std::string& file,
        const unsigned line,
        const unsigned branchesCount);
    /**
     * \brief   Add condition branch to be tracked.
     */
    void AddCodalConditionBranch(const codasip_address_t conditionId,
        const unsigned branchId,
        const std::string& file,
        const unsigned line);
    /**
     * \brief  Add expression to be tracked.
     */
    void AddCodalExpression(const codasip_address_t expressionId,
        const std::string& file,
        const unsigned line,
        const unsigned column,
        const std::string& expression,
        const CodalExpressionInfo::Terms& terms);
    /**
     * \brief Add resource info into the dump
     * \param textId Text id of the resource
     * \param signature Signature
     * \param userDefined If true, the resource was added by an user
     * \param items Number of doubles (access type, counter)
     */
    void AddResource(const std::string& textId,
        const std::string& signature,
        const bool userDefined,
        const int items, ...);
    /**
     * \brief Add a power and area item for operators
     * \param id Id of an item
     * \param type Type of an them
     * \param codalStatement Codasip statement for the later reference
     */
    void AddPpaOperator(const std::string& designPath,
        const int type,
        const Counter bitWidth,
        const Counter inputs);
    /**
     * \brief Add an activity item (event or decoder)
     * \param id Identifier of activity item  (event or decoder)
     * \param designPath String representation
     */
    void AddPpaActivity(const int id, const std::string& designPath);
    /**
     * \brief add a power and area item for resources
     * \param signature Signature of the resource
     * \param type Type of the resource
     * \param bitWidth Bit width of the resource
     * \param readPorts Number of read ports
     * \param writePorts Number of write ports
     */
    void AddPpaResource(const std::string signature,
        const std::string& designPath,
        const int type,
        const Counter bitWidth,
        const Counter size,
        const int readPorts,
        const int writePorts);
    /**
     * \brief Inform about cache hit
     * \param cacheId Id of the cache
     */
    void CacheHit(const int cacheId);
    /**
     * \brief Inform about cache miss
     * \param cacheId Id of the cache
     */
    void CacheMiss(const int  cacheId);
    /**
     * \brief Inform about pipeline stall in a particular stage
     * \param pipelineId Pipeline id
     * \param stageId Stage id
     */
    void PipelineStall(const int pipelineId, const int stageId);
    /**
     * \brief Inform about pipeline clear in a particular stage
     * \param pipelineId Pipeline id
     * \param stageId Stage id
     */
    void PipelineClear(const int pipelineId, const int stageId);
    /**
     * \brief Codal statement was hit
     * \param address Address of the statement
     */
    void CodalStatementHit(const codasip_address_t address);
    /**
     * \brief Hit a particular condition/branch.
     */
    void CodalConditionHit(const codasip_address_t conditionAddress);
    void CodalBranchHit(const codasip_address_t conditionAddress, const unsigned branchId);
    /**
     * \brief Hit a particular expression.
     */
    void CodalExpressionHit(const codasip_address_t expressionId,
        const std::initializer_list<bool>& terms);
    /**
     * \brief Some ppa activity item was hit
     * \param id of the activity
     */
    void PpaActivityHit(const int id);
    /**
     * \brief   Update the decoder info.
     * \param   decoderId   Decoder id
     * \param   value       Value (instruction) that has been decoded
     */
    template<class T>
    void DecoderHit(const int decoderId, const T& value);
    /**
     * \brief   Update interface reads count.
     * \param interfaceId   Interface id
     * \param address       Accessed address
     * \param value         Number of accesses
     */
    void InterfaceAccess(const int interfaceId,
        const codasip_address_t address,
        const Counter value,
        const int type);
    /**
     * \brief   Unwind a new call stack snapshot.
     * \param clockCycle Current clock cycle
     * \param pc Actual program counter
     */
    void CreateCallStack(const uint64_t clockCycle, const codasip_address_t pc);
    /**
     * \brief
     */
    void CommitCallStack();
    /**
     * \{
     * \brief Gettter
     */
    Writer& GetWriter();
    const Writer& GetWriter() const;
    /** \} */

private:
    /**
     * \brief   Internal state.
     */
    enum State
    {
        /// default, before start, after stop
        ST_PASSIVE,
        /// file opened, header written, waiting for stack snapshots
        ST_WRITING_STACK,
        /// stack snapshots & instruction statistics finished, waiting for close
        ST_INSTR_WRITTEN
    };

    bool HandleBlocks(const uint64_t, const codasip_address_t);
    void WriteStatistics();
    void DbgWrite(const std::string& str);
    // MEMBERS

    /// ASIP id
    std::string m_Id;
    /// ASIP signature
    std::string m_Signature;
    /// filename of the simulated program
    std::string m_ProgFilename;

    /// internal state
    State m_State;

    /// current call stack that is filled by simulator
    CallStack m_CallStack;
    /// decoders statistics - contains type info, is updated within samples
    DecodersStats m_DecodersStats;
    /// interfaces statistics
    InterfacesStats m_InterfacesStats;
    /// pipelines dictionary
    PipelinesDict m_PipelinesDict;
    /// samples dictionary (grouped/merged by address)
    SamplesDict m_SamplesDict;
    /// resources dictionary
    ResourcesDict m_ResourcesDict;
    /// codal addresses dictionary
    CodalAddressesDict m_CodalAddressesDict;
    /// branches dictionary
    CodalConditionsDict m_CodalConditionsDict;
    /// expressions dictionary
    CodalExpressionsDict m_CodalExpressionsDict;
    /// scanned blocks
    BlocksAddressesStats m_BlockAddressesStats;
    /// scanned blocks
    BlockActivity m_BlockActivity;
    /// Power and area stats
    PpaOperators m_PpaOperators;
    /// Power and area stats
    PpaResources m_PpaResources;
    /// Power activity
    PpaActivity m_PpaActivity;

    /// Value of the sampling rate
    int m_SamplingRate;
    /// Current number of the sample, so we can do a sampling
    int m_SampleIndex;
    /// Info about enabled call stack handler
    bool m_EnabledCallStack;
    /// Info whether the block only should tracked
    bool m_EnabledBlockOnly;


    /// active sample
    Sample* m_Sample;
    codasip_address_t m_LastAddress;

    /// info whether we're using own writer
    bool m_OwnWriter;
    /// Shared writer
    Writer* m_Writer;
    /// ID within the writer
    size_t m_Index;

    ///
    const objfile::ObjectFile* m_ObjectFile;
    /// Unwinder used for a call stack
    debugger::UnwinderWrapper* m_Unwinder;

    friend class Writer;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
FORCE_INLINE void ProfilerRt::CreateSample(const uint64_t clockCycle,
    const codasip_address_t address)
{

    /// Current number of the sample, so we can do a sampling
    ++m_SampleIndex;
    if (m_SampleIndex == m_SamplingRate)
    {
        m_SampleIndex = 0;

        bool blockActive = HandleBlocks(clockCycle, address);

        if (m_EnabledBlockOnly && !blockActive)
        {
            return;
        }

        // create record if it does not exist yet
        SamplesDict::iterator itSample = m_SamplesDict.find(address);
        if(itSample == m_SamplesDict.end())
        {
             m_SamplesDict[address] = Sample(m_DecodersStats, address);
        }
        m_Sample = &m_SamplesDict[address];
    }
}

/**
 * \brief Update block statistics
 * \param clockCycle Current clock cycle
 * \param address Current address
 * \return true, if we're in the block and we're in the block only mode. In other cases
 *         false is returned
 */
FORCE_INLINE bool ProfilerRt::HandleBlocks(const uint64_t clockCycle,
    const codasip_address_t address)
{
    if (m_BlockAddressesStats.empty())
    {
        return false;
    }

    BlocksAddressesStats::iterator it = m_BlockAddressesStats.find(address);
    if (it != m_BlockAddressesStats.end() && address != m_LastAddress)
    {
        m_LastAddress = address;
        for (auto& ba : it->second)
        {
            ba.GetTimeStamps().push_back(clockCycle);

            if (m_EnabledBlockOnly)
            {
                switch(ba.GetFlag())
                {
                    case BlockAddress::START:
                        m_BlockActivity.Inc(ba.GetName());
                        break;
                    case BlockAddress::END:
                        m_BlockActivity.Dec(ba.GetName());
                        break;
                    default:
                        break;
                }
            }
        }
    }

    return m_EnabledBlockOnly
        ? m_BlockActivity.IsActive()
        : false;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
FORCE_INLINE void ProfilerRt::CommitSample()
{
    if (m_Sample == NULL)
    {
        return;
    }
    m_Sample->Hit();
    m_Sample = NULL;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
void ProfilerRt::AddDecoder(const int intId,
    const std::string& textId,
    const std::string& signature,
    const int maxBitWidth)
{
    DEBUG_CONDITION(m_DecodersStats.find(intId) == m_DecodersStats.end())
        << "DumpWriter: Duplicate CreateDecoder " << textId;

    m_DecodersStats[intId] = new Decoder<T>(textId, signature, maxBitWidth);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T>
FORCE_INLINE void ProfilerRt::DecoderHit(const int decoderId, const T& value)
{
    if (m_Sample == NULL)
    {
        return;
    }
    m_Sample->DecoderHit(decoderId, value);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
FORCE_INLINE void ProfilerRt::InterfaceAccess(const int interfaceId,
    const codasip_address_t address,
    const Counter value,
    const int type)
{
    if(static_cast<AccessType>(type) == ACCESS_READ)
    {
        m_InterfacesStats[interfaceId][address].readsCount += value;
    }
    else
    {
        m_InterfacesStats[interfaceId][address].writesCount += value;
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////
FORCE_INLINE void ProfilerRt::CacheHit(const int cacheId)
{
    if (m_Sample == NULL)
    {
        return;
    }
    m_Sample->CacheHit(cacheId);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
FORCE_INLINE void ProfilerRt::CacheMiss(const int cacheId)
{
    if (m_Sample == NULL)
    {
        return;
    }
    m_Sample->CacheMiss(cacheId);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
FORCE_INLINE void ProfilerRt::PipelineStall(const int pipelineId, const int stageId)
{
    if (m_Sample == NULL)
    {
        return;
    }
    m_Sample->PipelineStall(pipelineId, stageId);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
FORCE_INLINE void ProfilerRt::PipelineClear(const int pipelineId, const int stageId)
{
    if (m_Sample == NULL)
    {
        return;
    }
    m_Sample->PipelineClear(pipelineId, stageId);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
FORCE_INLINE void ProfilerRt::CodalStatementHit(const codasip_address_t address)
{
    if (m_Sample == NULL)
    {
        return;
    }

    DEBUG_CONDITION(m_CodalAddressesDict.count(address));
    ++m_CodalAddressesDict[address].counter;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
FORCE_INLINE void ProfilerRt::CodalConditionHit(const codasip_address_t address)
{
    if (m_Sample == NULL)
    {
        return;
    }
    DEBUG_CONDITION(m_CodalConditionsDict.count(address));
    m_CodalConditionsDict[address].Hit();
}

////////////////////////////////////////////////////////////////////////////////////////////////////
FORCE_INLINE void ProfilerRt::CodalBranchHit(const codasip_address_t address,
    const unsigned branchId)
{
    if (m_Sample == NULL)
    {
        return;
    }
    DEBUG_CONDITION(m_CodalConditionsDict.count(address));
    m_CodalConditionsDict[address].HitBranch(branchId);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
FORCE_INLINE void ProfilerRt::CodalExpressionHit(const codasip_address_t expressionId,
    const std::initializer_list<bool>& terms)
{
    if (m_Sample == NULL)
    {
        return;
    }
    //std::cout << "EXP ID: " << expressionId << std::endl;
    DEBUG_CONDITION(m_CodalExpressionsDict.count(expressionId));
    DEBUG_CONDITION(terms.size() == m_CodalExpressionsDict[expressionId].GetTerms().size());
    m_CodalExpressionsDict[expressionId].Hit(terms);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
FORCE_INLINE void ProfilerRt::PpaActivityHit(const int id)
{
    ++m_PpaActivity[id].counter;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
FORCE_INLINE void ProfilerRt::CreateCallStack(const uint64_t clockCycle, const codasip_address_t pc)
{
    if (!m_EnabledCallStack || m_Sample == NULL)
    {
        return;
    }
    // prepare for the next usage
    m_CallStack.SetClockCycle(clockCycle);

    if (m_Unwinder != NULL)
    {
        m_Unwinder->Unwind(m_CallStack.GetAddresses());
    }
    else
    {
        m_CallStack.GetAddresses().clear();
        m_CallStack.GetAddresses().push_back(pc);
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline Writer& ProfilerRt::GetWriter()
{
    return *m_Writer;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline const Writer& ProfilerRt::GetWriter() const
{
    return *m_Writer;
}

} // namespace codasip::profiler::runtime
} // namespace codasip::profiler
} // namespace codasip

#endif // SIMULATORS2_PROFILERL_PROFILER_RT_PROFILER_RT_H_
