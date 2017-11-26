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
 *  \author Pavel Richtarik
 *  \date   Nov 16, 2015
 *  \brief  Declaration/Implementation of the class.
 */

#ifndef SIMULATORS2_PROFILERL_PROFILER_RT_PROFILER_RT_WRITER_H_
#define SIMULATORS2_PROFILERL_PROFILER_RT_PROFILER_RT_WRITER_H_

#include "profiler_rt.h"

#include <set>

namespace codasip {
namespace profiler {
namespace runtime {

class Writer
{
public:
    /// Constructor.
    Writer();

    /**
     * \brief  Set the current time
     * \param  time Value in seconds
     */
    void SetTime(std::time_t time);

    /**
     * \brief Set studio version
     * \param studioVersion
     */
    void SetStudioVersion(const std::string& studioVersion);
    /**
     * \brief Set hash
     * \param studioVersion
     */
    void SetHash(const std::string& hash);
    /**
     * \brief Set project name
     * \param project
     */
    void SetProject(const std::string& project);

    /**
     * \brief Set output file
     * \param output name of the output file
     */
    void SetOutput(const filesystem::Path& output);

    /**
     * \brief Register profiler, return assigned ID.
     * \param profiler
     */
    size_t Register(ProfilerRt& profiler);

    /**
     * \brief Mark profiler as active. Writer will wait for it to stop.
     * \param profilerId
     */
    void Start(const size_t profilerId);

    /**
     * \brief Write call stack.
     * \param profilerId
     */
    void WriteCallStackSnapshot(const size_t profilerId);

    /**
     * \brief Write statistics.
     * \param profilerId
     */
    void WriteStatistics(const size_t profilerId);

    /**
     * \brief Stop a profiler - unregister, write profiler footer.
     * \param profilerId
     * \param cyclesCount
     */
    void Stop(const size_t profilerId, const uint64_t cyclesCount);

    /**
     * \brief Reset all profilers.
     */
    void Reset();

    /**
     * \brief Reset all profilers. Called from a specific profiler.
     * \param profilerId Origin of the reset event - this one is skipped when propagating.
     */
    void Reset(const size_t profilerId);

    /**
     * \brief Debug write - corrupts the dump!
     */
    void DbgWrite(const std::string& str);

private:
    typedef std::vector<ProfilerRt*> Profilers;

    /**
     * \brief Internal state.
     */
    enum State
    {
        /// file not opened
        ST_PASSIVE,
        /// file opened, header written, no more registrations allowed
        ST_ACTIVE,
        /// reset process in progress
        ST_RESTARTING
    };

    /// Internal buffer size
    static const size_t BUFFER_SIZE = 100;

    void WriteHeader();

    void WritePipelinesInfo(const ProfilerRt& profiler);
    void WriteCodalInfo(const ProfilerRt& profiler);
    void WriteCodalConditions(const ProfilerRt& profiler);
    void WriteCodalExpressions(const ProfilerRt& profiler);

    void WriteSamples(const ProfilerRt& profiler);
    void WriteDecoders(const ProfilerRt& profiler);
    void WriteInterfaces(const ProfilerRt& profiler);
    void WriteBlocks(const ProfilerRt& profiler);
    void WriteResources(const ProfilerRt& profiler);
    void WritePpa(const ProfilerRt& profiler);

    // WRITE FUNCTIONS, ENCAPSULATING BUFFERING

    void BufferWrite(const char* data, size_t length);

    template <typename T>
    void BufferWrite(const T& val);

    template <typename TCast, typename T>
    void BufferWriteCast(const T& val);

    template <typename TVec>
    void BufferWrite(const std::vector<TVec>& vec);

    template <typename TKey, typename TMap>
    void BufferWrite(const std::map<TKey,TMap>& map);
    template <typename TKey, typename TMap>
    void BufferWrite(const std::unordered_map<TKey,TMap>& map);

    void BufferWriteString(const std::string& str);
    void BufferFlush();
    void BufferClear();
    bool IsBufferFull();

    /// General info
    std::time_t m_Time;
    std::string m_StudioVersion;
    std::string m_Project;
    std::string m_Hash;

    /// Internal buffer (writing in chunks)
    char m_Buffer[BUFFER_SIZE];
    /// actual first free byte index in the buffer
    size_t m_ActBufferIndex;

    /// Internal state
    State m_State;
    /// Profilers
    Profilers m_Profilers;
    /// Active profilers
    std::set<size_t> m_ActiveProfilers;
    /// Output path
    filesystem::Path m_OutputPath;
    /// Output stream
    io::Ofstream m_Output;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
inline void Writer::SetTime(time_t time)
{
    m_Time = time;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
inline void Writer::SetStudioVersion(const std::string& studioVersion)
{
    m_StudioVersion = studioVersion;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline void Writer::SetHash(const std::string& hash)
{
    m_Hash = hash;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline void Writer::SetProject(const std::string& project)
{
    m_Project = project;
}

}   // namespace codasip::profiler::runtime
}   // namespace codasip::profiler
}   // namespace codasip

#endif  // SIMULATORS2_PROFILERL_PROFILER_RT_PROFILER_RT_WRITER_H_
