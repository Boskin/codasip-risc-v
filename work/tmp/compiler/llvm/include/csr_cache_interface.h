/**
 * Codasip Ltd
 *
 * CONFIDENTIAL
 *
 * Copyright 2016 Codasip Ltd
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
 *  \author Jiri Bartak
 *  \date   Mar 8, 2016
 *  \brief  Declaration/Implementation of the class.
 */

#ifndef SIMULATORS2_RESOURCES_CSR_CACHE_INTERFACE_H_
#define SIMULATORS2_RESOURCES_CSR_CACHE_INTERFACE_H_

#include "csr_helpers.h"
#include "csr_interface.h"
#include "csr_cache_request.h"
#include "csr_cache.h"
#include "csr_payload.h"
#include "csr_payload_sentinel.h"
#include "codasiputils.h"
#include "csr_address_checker.h"
#include "csr_access_checker.h"


namespace codasip {
namespace resources {

#define CACHE_INLINE inline

//#define _DEBUG_CACHE_INTERFACE
#ifdef _DEBUG_CACHE_INTERFACE
//#define _PRINT_CLINES
#endif

/**
 *  \class  codasip::resources::cache::CacheInterface
 *  \brief          CLB interface of cache. Must be instantiated in generated core class
 *                  as interface with specific number.
 *  \tparam _Params Generated parameters of the cache.
 */
template <class T, class M, class _Params>
class CacheInterface : public Interface<T, M>,
    private CacheRequest<_Params>,
    private Payload<typename _Params::target_payload_t>
{
public:
    /// Allow helper functions in Interface for conversion into blocking command
    using Interface<T, M>::invalidate_all;
    using Interface<T, M>::flush_all;

    /// \copydoc codasip::resources::cache::Attribute::CACHE_DATA_BITS
    static const Index CACHE_DATA_BITS = _Params::WORD_BIT_WIDTH;
    /// Bit-width of target data .
    static const Index TARGET_DATA_BITS = _Params::TARGET_WORD_BIT_WIDTH;

    /// \copydoc codasip::resources::cache::Storage::Data
    typedef typename _Params::data_type Data;

    /// Standard type for state.
    typedef unsigned char FSMState;
    /// Line index of entry in cache.
    typedef codasip_address_t LineIndex;
    /// Tag of entry in cache.
    typedef codasip_address_t Tag;
    /**
     *  \brief  Create one cache interface with associated storage and inner profiler.
     *  \param  storage Shared storage container with line information, actual data and target
     *          component where data are written during write back phase. The storage can be locked.
     *  \param  innerProfiler Interface for inner profiling.
     *  \param  id Unique identification number of the interface.
     */
    CacheInterface(const std::string& name, const Uid uid, M* module);
    /**
     *  \brief  Currently do nothing.
     */
    ~CacheInterface();
    /**
     *  \brief  Return true if interface is busy.
     */
    bool IsBusy() const;
    /**
     * \brief   Cache software reset.
     * \copydoc codasip::resources::CCache::reset
     */
    void Reset();
    /**
     * \brief   Cache clock cycle method. Should be called in every step of CA simulation.
     * \copydoc codasip::resources::CCache::clock_cycle()
     */
    void ClockCycle();
    /**
     * \brief          Checks current requests address and changes response to given value
     *                 if both requests go to same cacheline.
     * \param addr     Address of failed request.
     * \param response Response of the other cache port.
     * \return         True if requests of both ports go to same cacheline.
     */
    bool NotifyRequestFailed(const codasip_address_t addr, const Response response);
    /**
     * \brief Invalidates currently loaded cache line.
     */
    void InvalidateNotify();
    void MissNotify();
    bool SkipCycle();
    bool SameLine(const codasip_address_t addr, const bool read);
    void ForwardData(const Data data, const Index latency);
    void ForwardResponse(const codasip_address_t, const Response);
    LineIndex GetOffset();
    bool IsRead();
    void SetIa();
    void CheckForward(const Index ratio = 1, const bool justFinished = false);
    void blocking_cb(Payload<typename _Params::data_type>& p) override;
    void request_cb(Payload<typename _Params::data_type>& p) override;
    void finish_cb(Payload<typename _Params::data_type>& p) override;
/* End of CacheInterface public */
private:
    /// \copydoc codasip::resources::cache::Attribute::CACHE_ADDR_BITS
    static const Index CACHE_ADDR_BITS = _Params::ADDR_BIT_WIDTH;
    /// \copydoc codasip::resources::cache::Attribute::CACHE_SIZE
    static const codasip_address_t CACHE_SIZE = _Params::SIZE;
    /// \copydoc codasip::resources::cache::Attribute::CACHE_LINE_SIZE
    static const codasip_address_t CACHE_LINE_SIZE = _Params::LINE_SIZE;
    /// \copydoc codasip::resources::cache::Attribute::CACHE_NUM_WAYS
    static const Index CACHE_NUM_WAYS = _Params::NUMWAYS;
    /// \copydoc codasip::resources::cache::Attribute::SET_LINE_COUNT
    static const Index SET_LINE_COUNT = (CACHE_SIZE / CACHE_LINE_SIZE) / CACHE_NUM_WAYS;
    /// \copydoc codasip::resources::cache::Attribute::IS_DCACHE
    static const bool IS_DCACHE = _Params::IS_WRITABLE && _Params::IS_READABLE;
    /// \copydoc codasip::resources::cache::Attribute::IS_ICACHE
    static const bool IS_ICACHE = !(_Params::IS_WRITABLE) && _Params::IS_READABLE;
    /// \copydoc codasip::resources::cache::Attribute::IS_MULTIPORT
    static const bool IS_MULTIPORT = _Params::PORT_COUNT > 1;
    /// \copydoc codasip::resources::cache::Attribute::NCREGION_START_A
    static const codasip_address_t NCREGION_START_A = _Params::NC_START_A;
    /// \copydoc codasip::resources::cache::Attribute::NCREGION_STOP_A
    static const codasip_address_t NCREGION_STOP_A = _Params::NC_STOP_A;
    /// \copydoc codasip::resources::cache::Attribute::BYTE_BITS
    static const Index BYTE_BITS = _Params::LAU_BIT_WIDTH;
    /// \copydoc codasip::resources::cache::Attribute::BYTES_PER_WORD
    static const Index BYTES_PER_WORD = CACHE_DATA_BITS / BYTE_BITS;
    /// \copydoc codasip::resources::cache::Attribute::WORDS_PER_LINE
    static const Index WORDS_PER_LINE = CACHE_LINE_SIZE / BYTES_PER_WORD;
    /// Target bytes per word.
    static const Index TARGET_BYTES_PER_WORD = TARGET_DATA_BITS / BYTE_BITS;
    /// Number of cache words in one target word.
    static const Index CACHE_WORDS_PER_TARGET_WORD = TARGET_DATA_BITS/CACHE_DATA_BITS;
    /// Number of target words in one cache word.
    static const Index TARGET_WORDS_PER_CACHE_WORD = CACHE_DATA_BITS/TARGET_DATA_BITS;
    /// Invalidate request latency
    static const Index LATENCY_INVALIDATE = 3;
    /// Invalidate all request latency
    static const Index LATENCY_INVALIDATE_ALL = 2 + IS_MULTIPORT;
    /// Flush request latency
    static const Index LATENCY_FLUSH = 3;
    /// Flush all request latency
    static const Index LATENCY_FLUSH_ALL = 3;
    /// Endianness around cache
    static const Endianness ENDIANNESS = static_cast<Endianness>(_Params::ENDIANNESS);

    /// states for requests
    enum
    {
        STATE_IDLE = 0,
        STATE_NCR_R_FINISH,
        STATE_NCR_REQUEST,
        STATE_R_REQUEST,
        STATE_R_CL_REQUEST,
        STATE_R_CL_FINISH,
        STATE_I_CL,
        STATE_I_ALL,
        STATE_NCR_W_FINISH,
        STATE_SAVE_DATA,
        STATE_W_HIT,
        STATE_F_CL,
        STATE_F_ALL,
        STATE_SKIP_CYCLE,
        STATE_RAM_RESP,
        STATE_R_BUFFER,
        STATE_R_ACCEPT,
        STATE_R_REQUEST_D,
        STATE_R_BUFFER_D,
        STATE_SAVE_LINE,
        STATE_W_MISS,
        STATE_FORWARD,
        STATE_FORWARD_R
    };
#ifdef _DEBUG_CACHE_INTERFACE
    std::vector<std::string> stavy;
#endif
    /// Container type of cacheline.
    typedef typename std::vector< Data > CLine;
    /// \copydoc codasip::resources::cache::Storage::SetIndex
    typedef Index SetIndex;
    /// Replacement policy.
    typedef typename _Params::replacement_policy_t ReplacementPolicy;
    /// Target data type.
    typedef typename _Params::target_payload_t TData;

    /**
     *  \brief   Read data from $
     *  \copydoc codasip::resources::CInterface::read
     */
    void read(Payload<typename _Params::data_type>& p);
    /**
     *  \brief   Write data to $
     *  \copydoc codasip::resources::CInterface::write
     */
    void write(Payload<typename _Params::data_type>& p);
    /**
     *  \brief       Load program
     *  \copydetails codasip::resources::CInterface::load
     */
    void load(const Data data, const codasip_address_t addr, const Index sbc, const Index sbi);
    /**
     *  \brief   Method used when flushing cache line and cache word is smaller than target word.
     *  \param   set    Number of way.
     *  \param   index  Cacheline number.
     *  \param   offset Offset within cacheline.
     *  \return  Returns target word composed of several cache words.
     */
    TData GatherTargetWord(const Index, const LineIndex, const LineIndex);
    TData GatherTargetWordInternal(const int offset);
    /**
     * \brief Performs one step of cache FSM.
     */
    void Fsm_step();
    /**
     *  \brief      Determines if address is alligned
     *  \param addr Address
     *  \return     Returns true if address is alligned, false if is unalligned
     */
    bool IsAligned(const codasip_address_t addr) const;
    /**
     *  \brief      Determines if combination of SI and SC is correct
     *  \param  sbi Sbi
     *  \param  sbc Sbc
     *  \return     Returns true if combination of SI and sc is correct, false if not
     */
    bool IsError(const Index sbi, const Index sbc) const;
    /**
     *  \brief      Determines if address is in noncacheable region
     *  \param addr Address
     *  \return     Returns true if address falls into noncacheable region, false if not
     */
    bool IsNC(const codasip_address_t addr) const;
    /**
     * \brief Reads cacheline from target and saves it to cache.
     * \param set  Cache way index.
     * \param addr Address that caused cache miss.
     */
    Response ReadLine(const codasip_address_t addr);
    /**
     * \brief Writes cacheline into target.
     * \param set  Cache way that needs to be written.
     * \param addr Address that caused cache miss.
     */
    void WriteLine(const Index set, const codasip_address_t addr);
    SetIndex WriteLoadedLine();
    /**
     *  \brief       Debug read for debugger or profiler.
     *  \copydetails codasip::resources::CInterface::dread
     */
    Data dread(const codasip_address_t addr, const Index sbi = 0,
        const Index sbc = BYTES_PER_WORD);
    /**
     *  \brief       Debug write for debugger or profiler.
     *  \copydetails codasip::resources::CInterface::dwrite
     */
    void dwrite(const Data data, const codasip_address_t addr, const Index sbi = 0,
        const Index sbc = BYTES_PER_WORD);
    /**
     *  \brief   Invalidate $ line
     *  \copydoc codasip::resources::CInterface::invalidate
     */
    void invalidate(Payload<typename _Params::data_type>& p);
    /**
     *  \brief   Invalidate whole $
     *  \copydoc codasip::resources::CInterface::invalidate_all
     */
    void invalidate_all(Payload<typename _Params::data_type>& p);
    /**
     *  \brief   Flush cacheline to master interface. Only effective in Dcache.
     *  \copydoc codasip::resources::CInterface::flush
     */
    void flush(Payload<typename _Params::data_type>& p);
    /**
     *  \brief   Flush all cache data to master interface. Only effective in Dcache.
     *  \copydoc codasip::resources::CInterface::flush_all
     */
    void flush_all(Payload<typename _Params::data_type>& p);
    /**
     *  \brief  Used to determine which port has priority.
     *  \return Returns true if present or next cache FSM state is any phase of Noncachable region
     *          request.
     */
    bool IsNCAccess();
    /**
     *  \brief  Calculate tag from address
     *  \param  addr Address
     *  \return Tag calculated from address addr
     */
    Tag GetTagFromAddr(const codasip_address_t addr);
    /**
     *  \brief  Calculate index from address
     *  \param  addr Address
     *  \return Index calculated from address addr
     */
    LineIndex GetIndexFromAddr(const codasip_address_t addr);
    /**
     *  \brief  Calculate offset from address
     *  \param  addr Address
     *  \return Offset calculated from address addr
     */
    LineIndex GetOffsetFromAddr(const codasip_address_t addr);
    /// Unique identification number of the interface.
    const int m_Id;
    /// LSB of address tag.
    const int m_TagShift;
    /// Address tag bit-width.
    const int m_TagBits;
    /// LSB of address index.
    const int m_IndexShift;
    /// Number of target bits per word.
    const int m_TargetWordAlign;
    /// Reset in progress indication (allows abusing invalidate all to reset)
    bool m_Reset;
    Cache<_Params>& m_Cache;
    /// next state of FSM
    FSMState m_NextState;
    /// State of cache final state machine
    FSMState m_FSMstate;
    /// Cache response during this clock cycle.
    Response m_NextResponse;
    /// Prevent response reset.
    bool m_PreventRespReset;
    /// currenty loaded cache line offset
    LineIndex m_CurrentOffset;
    /// currenty loaded cache line data
    CLine m_CurrentLine;
    /// currenty loaded cache line index
    LineIndex m_CurrentIndex;
    /// currenty loaded cache line tag
    Tag m_CurrentTag;
    /// current cache line loaded
    bool m_LineLoaded;
    /// current cache line loaded
    bool m_LineLoadTried;
    bool m_EvictDelay;
    bool m_InvalidateNotify;
    bool m_DelayedRequest;
    bool m_SkipCurrLine;
    bool m_ForwardResp;
    bool m_IA;
    codasip_address_t m_ForwardAddr;
    friend class Cache<_Params>;
/* End of CacheInterface private */
}; // class CacheInterface

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, class M, class _Params>
CACHE_INLINE CacheInterface<T, M, _Params>::CacheInterface(const std::string& name, const Uid uid,
    M* module)
    :
    Interface<T, M>(name, uid, module),
    CacheRequest<_Params>(),
    Payload<typename _Params::target_payload_t>(),
    m_Id(uid),
    m_TagShift(ILog2(SET_LINE_COUNT * WORDS_PER_LINE * BYTES_PER_WORD)),
    m_TagBits(CACHE_ADDR_BITS - m_TagShift),
    m_IndexShift(ILog2((Index)WORDS_PER_LINE * BYTES_PER_WORD)),
    m_TargetWordAlign(ILog2((Index)TARGET_BYTES_PER_WORD)),
    m_Reset(true),
    m_Cache(*module),
    m_NextState(STATE_IDLE),
    m_FSMstate (STATE_IDLE),
    m_NextResponse(CP_RS_IDLE),
    m_PreventRespReset(false),
    m_CurrentOffset(0),
    m_CurrentIndex(0),
    m_CurrentTag(0),
    m_LineLoaded(false),
    m_LineLoadTried(false),
    m_EvictDelay(true),
    m_InvalidateNotify(false),
    m_DelayedRequest(false),
    m_SkipCurrLine(false),
    m_ForwardResp(false),
    m_IA(false),
    m_ForwardAddr(0)
{
#ifdef _DEBUG_CACHE_INTERFACE
    stavy.push_back("IDLE");
    stavy.push_back("Non-cachable region read finish");
    stavy.push_back("Non-cachable region request");
    stavy.push_back("Actual Cache line load");
    stavy.push_back("Cache line read request");
    stavy.push_back("Cache line read finish");
    stavy.push_back("Cache line invalidate");
    stavy.push_back("Invalidate all");
    stavy.push_back("Non-cachable region write finish");
    stavy.push_back("Save data to cache buffer");
    stavy.push_back("Write hit");
    stavy.push_back("Cache line flush");
    stavy.push_back("Flush all");
    stavy.push_back("Skip clock.");
    stavy.push_back("Send RAM response.");
    stavy.push_back("Read current cache line.");
    stavy.push_back("Accept new request during read finish.");
    stavy.push_back("Read request in DCACHE.");
    stavy.push_back("Read current cache line from cache.");
    stavy.push_back("Save cache line into cache.");
    stavy.push_back("Current cache line miss during write.");
    stavy.push_back("Forward data.");
    stavy.push_back("Forward response.");
#endif
    CacheRequest<_Params>::Reset();
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, class M, class _Params>
CACHE_INLINE CacheInterface<T, M, _Params>::~CacheInterface()
{}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, class M, class _Params>
CACHE_INLINE typename CacheInterface<T, M, _Params>::TData
CacheInterface<T, M, _Params>::GatherTargetWord(const Index set, const LineIndex index,
    const LineIndex offset)
{
    TData word = 0, cWord = 0;
    for (int i = 0; i < CACHE_WORDS_PER_TARGET_WORD; i++)
    {
        cWord = m_Cache.GetData(set, index, offset + i);
        if (ENDIANNESS == CP_LITTLE_ENDIAN)
        {
            word += (cWord << (i * CACHE_DATA_BITS));
        }
        else
        {
            word = static_cast<TData>(word << CACHE_DATA_BITS);
            word |= cWord;
        }
    }
    return word;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, class M, class _Params>
CACHE_INLINE typename CacheInterface<T, M, _Params>::TData
CacheInterface<T, M, _Params>::GatherTargetWordInternal(const int offset)
{
    TData word = 0, cWord = 0;
    for (int i = offset; i < offset + CACHE_WORDS_PER_TARGET_WORD; i++)
    {
        cWord = m_CurrentLine.at(i);
        word += (cWord << ((i % CACHE_WORDS_PER_TARGET_WORD) * CACHE_DATA_BITS));
    }
    return word;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, class M, class _Params>
CACHE_INLINE typename CacheInterface<T, M, _Params>::SetIndex CacheInterface<T, M, _Params>::WriteLoadedLine()
{
    const LineIndex tag = GetTagFromAddr(CacheRequest<_Params>::GetAddr());
    const LineIndex index = GetIndexFromAddr(CacheRequest<_Params>::GetAddr());
    Index set = m_Cache.GetReplaceWay(index);
    if (m_Cache.IsValid(set, index) && m_Cache.IsDirty(set, index))
    {
        WriteLine(set, CacheRequest<_Params>::GetAddr());
    }
    m_Cache.SaveCacheLine(set, CacheRequest<_Params>::GetAddr(), CacheRequest<_Params>::GetCacheLine());
    if (CacheRequest<_Params>::GetCommand() == CP_CMD_WRITE)
    {
        m_Cache.SetDirty(set, index);
    }
    else
    {
        m_Cache.SetClear(set, index);
    }
    m_Cache.SetValid(set, index);
    m_Cache.SetTag(set, index, tag);
    m_Cache.UpdateReplacementBits(set, false, index);
    return set;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, class M, class _Params>
CACHE_INLINE Response CacheInterface<T, M, _Params>::ReadLine(const codasip_address_t addr)
{
#ifdef _DEBUG_CACHE_INTERFACE
    std::cerr << "CacheInterface::" << __FUNCTION__ <<"(addr = h'" << std::hex << addr << ")"<<
        std::endl;
#endif
    codasip_address_t targetAddr = CacheRequest<_Params>::GetCachelineAddr(addr);
    TData targetData = 0, tmpData = 0;
    Response memResp = CP_RS_ACK;
    for (int j = 0; j < WORDS_PER_LINE; j++)
    {
        // cache words will be read as sub-blocks of target word, one target word at the time
        if (TARGET_DATA_BITS >= CACHE_DATA_BITS)
        {
            memResp = m_Cache.TargetBlocking(CP_CMD_READ, targetData, targetAddr, 0, TARGET_BYTES_PER_WORD);
            if (memResp != CP_RS_ACK)
            {
                CacheRequest<_Params>::Reset();
                return memResp;
            }
            for (int i = 0; i < CACHE_WORDS_PER_TARGET_WORD; i++)
            {
                CacheRequest<_Params>::PushWord(Unaligned<TData, BYTE_BITS,
                    TARGET_BYTES_PER_WORD>::template read<ENDIANNESS>(&targetData, 0,
                    i * BYTES_PER_WORD, BYTES_PER_WORD));
            }
            j += (CACHE_WORDS_PER_TARGET_WORD - 1);
            targetAddr += TARGET_BYTES_PER_WORD;
        }
        // target words will be concatenated to form cache word
        else
        {
            for (int i = 0; i < TARGET_WORDS_PER_CACHE_WORD; i++)
            {
                memResp = m_Cache.TargetBlocking(CP_CMD_READ, tmpData, targetAddr + i *
                    TARGET_BYTES_PER_WORD, 0, TARGET_BYTES_PER_WORD);
                if (memResp != CP_RS_ACK)
                {
                    CacheRequest<_Params>::Reset();
                    return memResp;
                }
                CacheRequest<_Params>::IncCounter();
                CacheRequest<_Params>::ConcatenateCacheData(tmpData);
            }
            CacheRequest<_Params>::PushCacheData();
            targetAddr += BYTES_PER_WORD;
        }
    }
    return memResp;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, class M, class _Params>
CACHE_INLINE void
CacheInterface<T, M, _Params>::WriteLine(const Index set, const codasip_address_t addr)
{
#ifdef _DEBUG_CACHE_INTERFACE
    std::cerr << "CacheInterface::" << __FUNCTION__ << "( set '" << std::dec << set <<
        ", addr = h'" << std::hex << addr << " )"<< std::endl;
#endif
    const LineIndex index = GetIndexFromAddr(addr);
    const LineIndex tag = m_Cache.GetTag(set,index);
    codasip_address_t cacheLineAddr = (tag << m_TagShift) + (index << m_IndexShift);
    Data  cacheData  = 0;
    TData targetData = 0;
    for (int i = 0; i < WORDS_PER_LINE; i++)
    {
        // cache word wider than target word, writing subblocks of cache word
        if (TARGET_DATA_BITS < CACHE_DATA_BITS)
        {
            cacheData = m_Cache.GetData(set,index,i);
            for (int j = 0; j < TARGET_WORDS_PER_CACHE_WORD; j++)
            {
                targetData = Unaligned<Data, BYTE_BITS, BYTES_PER_WORD>::template
                        read<ENDIANNESS>(&cacheData, 0, j * TARGET_BYTES_PER_WORD,
                        TARGET_BYTES_PER_WORD);
                m_Cache.TargetBlocking(CP_CMD_WRITE, targetData, cacheLineAddr, 0,
                    TARGET_BYTES_PER_WORD);
                cacheLineAddr += TARGET_BYTES_PER_WORD;
            }
        }
        // cache word smaller than target word, writing cache words as target word subblocks
        else if (!((i + 1) % CACHE_WORDS_PER_TARGET_WORD))
        {
            targetData = GatherTargetWord(set, index, (i / CACHE_WORDS_PER_TARGET_WORD) *
                CACHE_WORDS_PER_TARGET_WORD);
            m_Cache.TargetBlocking(CP_CMD_WRITE, targetData, cacheLineAddr, 0,
                TARGET_BYTES_PER_WORD);
            cacheLineAddr += TARGET_BYTES_PER_WORD;
        }
    }
    m_Cache.SetClear(set,index);
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, class M, class _Params>
CACHE_INLINE void CacheInterface<T, M, _Params>::read(Payload<typename _Params::data_type>& p)
{
    Index set;
    Index sbi = p.get_bi(), sbc = p.get_bc();
    codasip_address_t addr = p.get_address();
    codasip_address_t ncAddr = CacheRequest<_Params>::GetCachelineAddr(addr);
    Data cacheData = 0;
    TData targetData = 0;
    CacheRequest<_Params>::Reset();
    const LineIndex tag = GetTagFromAddr(addr);
    const LineIndex index = GetIndexFromAddr(addr);
    const LineIndex offset = GetOffsetFromAddr(addr);
#ifdef _DEBUG_CACHE_INTERFACE
    std::cerr << "CacheInterface::"<< __FUNCTION__ <<"( addr = h'" << std::hex << addr <<
                 ", sbi = " << std::dec << sbi << ", sbc = " << sbc << " )" << std::endl;
#endif
    // noncacheable region read -> read target
    if (IsNC(addr))
    {
        CacheRequest<_Params>::SetNCAddr(addr);
        if (TARGET_DATA_BITS >= CACHE_DATA_BITS)
        {
            CacheRequest<_Params>::AlignNCAddr(m_TargetWordAlign);
            p.set_response(m_Cache.TargetBlocking(CP_CMD_READ, targetData,
                CacheRequest<_Params>::GetNCAddr(), 0, TARGET_BYTES_PER_WORD));
            // noncacheable region read -> read target
            cacheData = Unaligned<TData, BYTE_BITS, TARGET_BYTES_PER_WORD>::template
                read<ENDIANNESS> (&targetData, 0, sbi + addr % TARGET_BYTES_PER_WORD, sbc);

        }
        else
        {
            CacheRequest<_Params>::ResetCacheData();
            CacheRequest<_Params>::ResetCounter();
            CacheRequest<_Params>::SetSbi(sbi);
            CacheRequest<_Params>::SetSbc(sbc);
            for (int i = 0; i < TARGET_WORDS_PER_CACHE_WORD; i++)
            {
                CacheRequest<_Params>::IncCounter();
                p.set_response(m_Cache.TargetBlocking(CP_CMD_READ, targetData,
                    CacheRequest<_Params>::GetNCAddr(), 0, TARGET_BYTES_PER_WORD));
                if (p.get_response() != CP_RS_ACK)
                {
                    p.set_data(0);
                    return;
                }
                CacheRequest<_Params>::ConcatenateCacheData(targetData);
                CacheRequest<_Params>::NCAddrIncWord();
            }
            CacheRequest<_Params>::CacheToCore();
            cacheData = CacheRequest<_Params>::GetCoreData();
        }
    }
    else
    {
        if (m_Cache.IsHit(tag, index, set))
        {
            m_Cache.UpdateReplacementBits(set, true, index);
            cacheData = m_Cache.GetData(set, index, offset, sbi, sbc);
        }
        else if (IS_MULTIPORT && (ncAddr == m_ForwardAddr) && m_ForwardResp)
        {
            p.set_response(m_NextResponse);
            m_ForwardResp = false;
        }
        else
        {
            CacheRequest<_Params>::SetCmd(CP_CMD_READ);
            CacheRequest<_Params>::SetAddr(addr);
            m_Cache.MissNotify(m_Id);
            if (IS_MULTIPORT && m_Cache.IsHit(tag, index, set))
            {
                cacheData = m_Cache.GetData(set, index, offset, sbi, sbc);
            }
            else
            {
                p.set_response(ReadLine(addr));
                if (p.get_response() != CP_RS_ACK)
                {
                    m_Cache.ForwardResponse(m_Id, ncAddr, p.get_response());
                    p.set_data(0);
                    return;
                }
                if (IS_MULTIPORT)
                {
                    cacheData = CacheRequest<_Params>::GetCacheLine().at(offset);
                    cacheData = Unaligned<Data, BYTE_BITS, BYTES_PER_WORD>::template
                        read<ENDIANNESS> (&cacheData, 0, sbi, sbc);
                    m_DelayedRequest = true;
                }
                else
                {
                    set = WriteLoadedLine();
                    cacheData = m_Cache.GetData(set, index, offset, sbi, sbc);
                    CacheRequest<_Params>::Reset();
                }
            }
        }
    }
    p.set_data(cacheData);
    p.set_response(CP_RS_ACK);
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, class M, class _Params>
CACHE_INLINE void CacheInterface<T, M, _Params>::write(Payload<typename _Params::data_type>& p)
{
    Index set, sbi = p.get_bi(), sbc = p.get_bc();
    Data cacheData, data = p.get_data();
    TData targetData = 0;
    codasip_address_t addr = p.get_address();
    CacheRequest<_Params>::Reset();
    const LineIndex tag = GetTagFromAddr(addr);
    const LineIndex index = GetIndexFromAddr(addr);
    const LineIndex offset = GetOffsetFromAddr(addr);
#ifdef _DEBUG_CACHE_INTERFACE
    std::cerr << "CacheInterface::" <<  __FUNCTION__  << "(data = h'" << std::hex << data <<
        ", addr = h'" << std::hex << addr << ", sbi = "<< std::dec << sbi << ", sbc = " << sbc <<
        " )" << std::endl;
#endif
    // noncacheable address
    if (IsNC(addr))
    {
        CacheRequest<_Params>::Reset();
        CacheRequest<_Params>::SetNCAddr(addr);
        if (TARGET_DATA_BITS >= CACHE_DATA_BITS)
        {
            CacheRequest<_Params>::AlignNCAddr(m_TargetWordAlign);
            CacheRequest<_Params>::SetNCSbc(sbc);
            if (sbc || !sbi)
            {
                CacheRequest<_Params>::SetNCSbi(sbi + addr % TARGET_BYTES_PER_WORD);
            }
            targetData = data;
            p.set_response(m_Cache.TargetBlocking(CP_CMD_WRITE, targetData,
                CacheRequest<_Params>::GetNCAddr(), CacheRequest<_Params>::GetNCSbi(),
                CacheRequest<_Params>::GetNCSbc()));
            if (p.get_response() != CP_RS_ACK)
            {
                return;
            }
        }
        else
        {
            CacheRequest<_Params>::SetNCSbc(0);
            CacheRequest<_Params>::ResetNCWMask();
            for (Index i = sbi; i < sbi + sbc; i++)
            {
                CacheRequest<_Params>::SetNCWMask(i);
            }
            for (int i = 0; i < TARGET_WORDS_PER_CACHE_WORD; i++)
            {
                CacheRequest<_Params>::SetNCSbiSbc();
                cacheData = 0;
                Unaligned<Data, BYTE_BITS, BYTES_PER_WORD>::template
                    write<ENDIANNESS>(&cacheData, data, 0, sbi, sbc);
                targetData = Unaligned<Data, BYTE_BITS, BYTES_PER_WORD>::template
                    read<ENDIANNESS>(&data, 0, CacheRequest<_Params>::GetCumulativeSbi(),
                    CacheRequest<_Params>::GetNCSbc());
                p.set_response(m_Cache.TargetBlocking(CP_CMD_WRITE, targetData,
                    CacheRequest<_Params>::GetNCAddr(), CacheRequest<_Params>::GetNCSbi(),
                    CacheRequest<_Params>::GetNCSbc()));
                if (p.get_response() != CP_RS_ACK)
                {
                    return;
                }
                CacheRequest<_Params>::NCAddrIncWord();
                CacheRequest<_Params>::IncCounter();
            }
        }
    }
    else
    {
        CacheRequest<_Params>::SetCmd(CP_CMD_WRITE);
        CacheRequest<_Params>::SetAddr(addr);
        // hit
        if (m_Cache.IsHit(tag, index, set))
        {
            if (IS_MULTIPORT)
            {
                CacheRequest<_Params>::SetOffset(offset);
                CacheRequest<_Params>::SetTag(tag);
                CacheRequest<_Params>::SetIndex(index);
                CacheRequest<_Params>::SetSbi(sbi);
                CacheRequest<_Params>::SetSbc(sbc);
                CacheRequest<_Params>::SetCoreData(data);
                m_DelayedRequest = true;
            }
            else
            {
                m_Cache.SetDirty(set,index);
                m_Cache.UpdateReplacementBits(set, true, index);
                m_Cache.SetData(data, set, index, offset, sbi, sbc);
            }
        }
        // miss
        else
        {
            m_Cache.MissNotify(m_Id);
            if (IS_MULTIPORT && m_Cache.IsHit(tag, index, set))
            {
                m_Cache.SetDirty(set,index);
                m_Cache.SetData(data, set, index, offset, sbi, sbc);
            }
            else
            {
                p.set_response(ReadLine(addr));
                if (p.get_response() != CP_RS_ACK)
                {
                    p.set_response(CP_RS_ACK);
                    return;
                }
                if (IS_MULTIPORT)
                {
                    CacheRequest<_Params>::SetOffset(offset);
                    CacheRequest<_Params>::SetTag(tag);
                    CacheRequest<_Params>::SetIndex(index);
                    CacheRequest<_Params>::SetSbi(sbi);
                    CacheRequest<_Params>::SetSbc(sbc);
                    cacheData = CacheRequest<_Params>::GetCacheLineWord();
                    Unaligned<Data, BYTE_BITS, BYTES_PER_WORD>::template
                        write<ENDIANNESS>(&cacheData, data, 0, sbi, sbc);
                    CacheRequest<_Params>::SetCacheLineWord(cacheData);
                    CacheRequest<_Params>::SetCoreData(data);
                    m_DelayedRequest = true;
                }
                else
                {
                    set = WriteLoadedLine();
                    m_Cache.SetData(data, set, index, offset, sbi, sbc);
                    CacheRequest<_Params>::Reset();
                }
            }
        }
    }
    p.set_response(CP_RS_ACK);
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, class M, class _Params>
CACHE_INLINE void CacheInterface<T, M, _Params>::load(const Data data, const codasip_address_t addr,
    const Index sbc, const Index sbi)
{
    TData targetData = data;
    m_Cache.TargetBlocking(CP_CMD_LOAD, targetData, addr, sbc, sbi);
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, class M, class _Params>
CACHE_INLINE typename CacheInterface<T, M, _Params>::Data
CacheInterface<T, M, _Params>::dread(const codasip_address_t addr, const Index sbi, const Index sbc)
{
#ifdef _DEBUG_CACHE_INTERFACE
    std::cerr << "CacheInterface::"<< __FUNCTION__ <<"( addr = h'" << std::hex << addr <<
        ", sbi = " << std::dec << sbi << ", sbc = " << sbc << " )" << std::endl;
#endif
    Index set, sbiA, addrA, counter;
    TData targetData = 0;
    Data cacheData = 0, tmpData;
    codasip_address_t ncAddr;
    const LineIndex tag = GetTagFromAddr(addr);
    const LineIndex index = GetIndexFromAddr(addr);
    const LineIndex offset = GetOffsetFromAddr(addr);
    sbiA = sbi;
    if (!IsAligned(addr))
    {
        sbiA += (addr % BYTES_PER_WORD);
        addrA = addr & -BYTES_PER_WORD;
    }
    else
    {
        addrA = addr;
    }
    // data present in cache -> read it from cache
    if (!IsNC(addrA) && m_Cache.IsHit(tag, index, set))
    {
        return m_Cache.GetData(set, index, offset, sbiA, sbc);
    }
    else
    {
        ncAddr = addrA;
        if (TARGET_DATA_BITS >= CACHE_DATA_BITS)
        {
            for (Index i = 0; i < m_TargetWordAlign; i++)
            {
                CacheRequest<_Params>::ChangeNthBitToXinAddr(ncAddr, i, 0);
            }
            m_Cache.TargetBlocking(CP_CMD_DREAD, targetData, ncAddr, 0, TARGET_BYTES_PER_WORD);
            // noncacheable region read -> read target
            cacheData = Unaligned<TData, BYTE_BITS, TARGET_BYTES_PER_WORD>::template
                read<ENDIANNESS> (&targetData, 0, sbi + addrA % TARGET_BYTES_PER_WORD, sbc);
        }
        else
        {
            counter = 0;
            for (int i = 0; i < TARGET_WORDS_PER_CACHE_WORD; i++)
            {
                m_Cache.TargetBlocking(CP_CMD_DREAD, targetData, ncAddr, 0, TARGET_BYTES_PER_WORD);
                tmpData = targetData;
                cacheData += (tmpData << ((counter * TARGET_DATA_BITS) % CACHE_DATA_BITS));
                counter++;
                ncAddr += TARGET_BYTES_PER_WORD;
            }
            cacheData = Unaligned<Data, BYTE_BITS, BYTES_PER_WORD>::
                template read<ENDIANNESS>(&cacheData, 0, sbi, sbc);
        }
    }
    return cacheData;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, class M, class _Params>
CACHE_INLINE void CacheInterface<T, M, _Params>::dwrite(const Data data, const codasip_address_t addr,
    const Index sbi, const Index sbc)
{
#ifdef _DEBUG_CACHE_INTERFACE
    std::cerr << "CacheInterface::"<< __FUNCTION__ <<"( addr = h'" << std::hex << addr <<
        ", sbi = " << std::dec << sbi << ", sbc = " << sbc << " )" << std::endl;
#endif
    TData targetData = data;
    Data cacheData;
    Index set, sbiA, sbcA, addrA, counter, cumulativeSbi;
    codasip_address_t ncAddr;
    bool ncWriteMask[BYTES_PER_WORD];
    sbiA = sbi;
    if (!IsAligned(addr))
    {
        sbiA += (addr % BYTES_PER_WORD);
        addrA = addr & -BYTES_PER_WORD;
    }
    else
    {
        addrA = addr;
    }
    const LineIndex tag = GetTagFromAddr(addrA);
    const LineIndex index = GetIndexFromAddr(addrA);
    const LineIndex offset = GetOffsetFromAddr(addrA);
    if (!IsNC(addrA) && m_Cache.IsHit(tag, index, set))
    {
        m_Cache.SetDirty(set,index);
        m_Cache.SetData(data, set, index, offset, sbiA, sbc);
    }
    else
    {
        ncAddr = addrA;
        if (TARGET_DATA_BITS >= CACHE_DATA_BITS)
        {
            for (Index i = 0; i < m_TargetWordAlign; i++)
            {
                CacheRequest<_Params>::ChangeNthBitToXinAddr(ncAddr, i, 0);
            }
            if (IsAligned(addr))
            {
                sbiA += (addr % BYTES_PER_WORD);
            }
            m_Cache.TargetBlocking(CP_CMD_DWRITE, targetData, ncAddr, sbiA, sbc);
        }
        else
        {
            cacheData = 0;
            Unaligned<Data, BYTE_BITS, BYTES_PER_WORD>::template
                write<ENDIANNESS>(&cacheData, data, 0, sbiA, sbc);
            for (Index i = 0; i < BYTES_PER_WORD; i++)
            {
                ncWriteMask[i] = (i >= sbiA) && (i < (sbiA + sbc));
            }
            cumulativeSbi = 0;
            counter = 0;
            sbcA = 0;
            for (int i = 0; i < TARGET_WORDS_PER_CACHE_WORD; i++)
            {
                cumulativeSbi += sbcA;
                sbiA = 0;
                sbcA = 0;
                bool stop = false;
                for (Index i = counter * TARGET_BYTES_PER_WORD;
                    i < counter * TARGET_BYTES_PER_WORD + TARGET_BYTES_PER_WORD; i++)
                {
                    if (ncWriteMask[i])
                    {
                        sbcA++;
                        stop = true;
                    }
                    else if (stop)
                    {
                        break;
                    }
                    else
                    {
                        sbiA++;
                    }
                }
                sbiA %= TARGET_BYTES_PER_WORD;
                cumulativeSbi += sbiA;
                targetData = Unaligned<Data, BYTE_BITS, BYTES_PER_WORD>::template read<ENDIANNESS>
                    (&cacheData, 0, cumulativeSbi, sbcA);
                if (m_Cache.TargetBlocking(CP_CMD_DWRITE, targetData, ncAddr, sbiA, sbcA) !=
                    CP_RS_ACK)
                {
                    return;
                }
                ncAddr += TARGET_BYTES_PER_WORD;
                counter++;
            }
        }
    }
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, class M, class _Params>
CACHE_INLINE void CacheInterface<T, M, _Params>::invalidate(Payload<typename _Params::data_type>& p)
{
    Index set;
    codasip_address_t addr = p.get_address();
    const LineIndex tag = GetTagFromAddr(addr);
    TData data = 0;
#ifdef _DEBUG_CACHE_INTERFACE
    std::cerr << "CacheInterface::"<< __FUNCTION__ << "( addr = h'" << std::hex << addr << " )" <<
                 std::endl;
#endif
    const LineIndex index = GetIndexFromAddr(addr);
    if (IsNC(addr))
    {
        CacheRequest<_Params>::SetNCAddr(addr);
        if (TARGET_DATA_BITS >= CACHE_DATA_BITS)
        {
            CacheRequest<_Params>::AlignNCAddr(m_TargetWordAlign);
        }
        p.set_response(m_Cache.TargetBlocking(CP_CMD_INVALIDATE, data,
            CacheRequest<_Params>::GetNCAddr()));
        return;
    }
    else if (IS_MULTIPORT && !m_DelayedRequest)
    {
        CacheRequest<_Params>::SetCmd(CP_CMD_INVALIDATE);
        CacheRequest<_Params>::SetAddr(addr);
        m_DelayedRequest = true;
    }
    else if (m_Cache.IsHit(tag, index, set))
    {
        m_LineLoaded = false;
        m_LineLoadTried = false;
        m_Cache.InvalidateNotify(m_Id);
        m_Cache.SetInvalid(set, index);
        m_Cache.SetClear(set, index);
    }
    p.set_response(CP_RS_ACK);
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, class M, class _Params>
CACHE_INLINE void CacheInterface<T, M, _Params>::invalidate_all(Payload<typename _Params::data_type>& p)
{
    codasip_address_t addr = p.get_address();
    TData data = 0;
#ifdef _DEBUG_CACHE_INTERFACE
    std::cerr << "CacheInterface::" << __FUNCTION__ << "( addr = h'" << std::hex << addr << " )" <<
        std::endl;
#endif
    if (IsNC(addr))
    {
        CacheRequest<_Params>::SetNCAddr(addr);
        if (TARGET_DATA_BITS >= CACHE_DATA_BITS)
        {
            CacheRequest<_Params>::AlignNCAddr(m_TargetWordAlign);
        }
        p.set_response(m_Cache.TargetBlocking(CP_CMD_INVALIDATE_ALL, data,
            CacheRequest<_Params>::GetNCAddr()));
        return;
    }
    else if (IS_MULTIPORT && !m_DelayedRequest)
    {
        CacheRequest<_Params>::SetCmd(CP_CMD_INVALIDATE_ALL);
        m_DelayedRequest = true;
    }
    else
    {
        for (LineIndex line = 0; line < SET_LINE_COUNT; line++)
        {
            for (Index set = 0; set < CACHE_NUM_WAYS; set++)
            {
                m_Cache.SetInvalid(set, line);
            }
            m_Cache.ResetReplacementBits();
        }
    }
    p.set_response(CP_RS_ACK);
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, class M, class _Params>
CACHE_INLINE void CacheInterface<T, M, _Params>::flush(Payload<typename _Params::data_type>& p)
{
    Index set;
    codasip_address_t addr = p.get_address();
    TData data = 0;
#ifdef _DEBUG_CACHE_INTERFACE
    std::cerr << "CacheInterface::" << __FUNCTION__ << "( addr = h'" << std::hex << addr << " )" <<
                 std::endl;
#endif
    const LineIndex tag = GetTagFromAddr(addr);
    const LineIndex index = GetIndexFromAddr(addr);
    if (IsNC(addr))
    {
        CacheRequest<_Params>::SetNCAddr(addr);
        if (TARGET_DATA_BITS >= CACHE_DATA_BITS)
        {
            CacheRequest<_Params>::AlignNCAddr(m_TargetWordAlign);
        }
        p.set_response(m_Cache.TargetBlocking(CP_CMD_FLUSH, data,
            CacheRequest<_Params>::GetNCAddr()));
        return;
    }
    else if (IS_MULTIPORT && !m_DelayedRequest)
    {
        CacheRequest<_Params>::SetCmd(CP_CMD_FLUSH);
        CacheRequest<_Params>::SetAddr(addr);
        m_DelayedRequest = true;
    }
    else if (m_Cache.IsHit(tag, index, set) && m_Cache.IsDirty(set,index))
    {
        WriteLine(set,addr);
    }
    p.set_response(CP_RS_ACK);
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, class M, class _Params>
CACHE_INLINE void CacheInterface<T, M, _Params>::flush_all(Payload<typename _Params::data_type>& p)
{
    codasip_address_t addr = p.get_address();
    TData data = 0;
#ifdef _DEBUG_CACHE_INTERFACE
    std::cerr << "CacheInterface::flush_all( addr = h'" << std::hex << addr << " )" << std::endl;
#endif
    if (IsNC(addr))
    {
        CacheRequest<_Params>::SetNCAddr(addr);
        if (TARGET_DATA_BITS >= CACHE_DATA_BITS)
        {
            CacheRequest<_Params>::AlignNCAddr(m_TargetWordAlign);
        }
        p.set_response(m_Cache.TargetBlocking(CP_CMD_FLUSH_ALL, data,
            CacheRequest<_Params>::GetNCAddr()));
        return;
    }
    else if (IS_MULTIPORT && !m_DelayedRequest)
    {
        CacheRequest<_Params>::SetCmd(CP_CMD_FLUSH_ALL);
        m_DelayedRequest = true;
    }
    else
    {
        for (LineIndex line = 0; line < SET_LINE_COUNT; line++)
        {
            for (Index set = 0; set < CACHE_NUM_WAYS; set++)
            {
                if (m_Cache.IsValid(set, line) && m_Cache.IsDirty(set,line))
                {
                    WriteLine(set, (m_Cache.GetTag(set,line) << m_TagShift) + (line <<
                        m_IndexShift));
                }
            }
        }
    }
    p.set_response(CP_RS_ACK);
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, class M, class _Params>
CACHE_INLINE bool CacheInterface<T, M, _Params>::IsAligned(const codasip_address_t addr) const
{
    if (addr % BYTES_PER_WORD != 0)
    {
#ifdef _DEBUG_CACHE_INTERFACE
        std::cerr << "Address 'h" << std::dec << addr << " is UNALIGNED" << std::endl;
#endif
        return false;
    }
    return true;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, class M, class _Params>
CACHE_INLINE bool CacheInterface<T, M, _Params>::IsError(const Index sbi, const Index sbc) const
{
    if ((sbi + sbc) > BYTES_PER_WORD)
    {
#ifdef _DEBUG_CACHE_INTERFACE
        std::cerr << std::dec << "(SI = " << sbi << " + SC = " << sbc << ") > " << BYTES_PER_WORD <<
            "   it is ERROR" << std::endl;
#endif
        return true;
    }
    return false;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, class M, class _Params>
CACHE_INLINE bool CacheInterface<T, M, _Params>::IsNC(const codasip_address_t addr) const
{
    if (addr >= NCREGION_START_A && addr <= NCREGION_STOP_A)
    {
#ifdef _DEBUG_CACHE_INTERFACE
        std::cerr << "Request for addr " << std::hex << addr << " is into NC region" << std::endl;
#endif
        return true;
    }
    return false;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, class M, class _Params>
CACHE_INLINE bool CacheInterface<T, M, _Params>::IsBusy() const
{
    bool ret = false;
    // cache reset sequence or data cache with other than read request that hit
    if ((m_FSMstate != STATE_IDLE) && (m_FSMstate != STATE_R_ACCEPT))
    {
        ret = true;
    }
    return ret;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, class M, class _Params>
CACHE_INLINE void CacheInterface<T, M, _Params>::blocking_cb
    (Payload<typename _Params::data_type>& p)
{
#ifdef _DEBUG_CACHE_INTERFACE
    std::cerr << "CacheInterface::"<< __FUNCTION__ << "::port" << m_Id <<  "(" << p.get_command() <<
        ", " << std::hex << p.get_address() << ", " << p.get_bi() << ", " << p.get_bc() <<
        ") index =" << GetIndexFromAddr(p.get_address()) << std::endl;
#endif
    Command cmd = p.get_command();
    if ((cmd != CP_CMD_LOAD) && (IS_DCACHE || cmd == CP_CMD_INVALIDATE ||
        cmd == CP_CMD_INVALIDATE_ALL || cmd == CP_CMD_READ))
    {
        if ((cmd != CP_CMD_DWRITE) && (cmd != CP_CMD_DREAD) && !IsAligned(p.get_address()))
        {
            p.set_response(CP_RS_UNALIGNED);
            return;
        }
        if (IsError(p.get_bi(), p.get_bc()))
        {
            p.set_response(CP_RS_ERROR);
            p.set_data(0);
            return;
        }
    }
    if (IS_ICACHE)
    {
        switch (cmd)
        {
            case CP_CMD_READ:
                read(p);
                break;
            case CP_CMD_INVALIDATE:
                invalidate(p);
                break;
            case CP_CMD_INVALIDATE_ALL:
                invalidate_all(p);
                break;
            case CP_CMD_LOAD:
                load(p.get_data(), p.get_address(), p.get_bi(), p.get_bc());
                break;
            case CP_CMD_DREAD:
                p.set_data(dread(p.get_address(), p.get_bi(), p.get_bc()));
                break;
            case CP_CMD_DWRITE:
                dwrite(p.get_data(), p.get_address(), p.get_bi(), p.get_bc());
                break;
            default:
                p.set_response(CP_RS_IDLE);
                p.set_data(0);
                break;
        }
    }
    else
    {
        switch (cmd)
        {
            case CP_CMD_READ:
                read(p);
                break;
            case CP_CMD_WRITE:
                write(p);
                break;
            case CP_CMD_INVALIDATE:
                invalidate(p);
                break;
            case CP_CMD_INVALIDATE_ALL:
                invalidate_all(p);
                break;
            case CP_CMD_FLUSH:
                flush(p);
                break;
            case CP_CMD_FLUSH_ALL:
                flush_all(p);
                break;
            case CP_CMD_LOAD:
                load(p.get_data(), p.get_address(),
                    p.get_bi(), p.get_bc());
                break;
            case CP_CMD_DREAD:
                p.set_data(dread(p.get_address(), p.get_bi(),
                    p.get_bc()));
                break;
            case CP_CMD_DWRITE:
                dwrite(p.get_data(), p.get_address(),
                    p.get_bi(), p.get_bc());
                break;
            default:
                p.set_response(CP_RS_IDLE);
                p.set_data(0);
                break;
        }
    }
} // CacheInterface::blocking
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, class M, class _Params>
CACHE_INLINE void CacheInterface<T, M, _Params>::request_cb(Payload<typename _Params::data_type>& p)
{
#ifdef _DEBUG_CACHE_INTERFACE
    std::cerr << "CacheInterface::"<< __FUNCTION__ << "::port" << m_Id <<  "(" << p.get_command() <<
        ", " << std::hex << p.get_address() << ", " << p.get_bi() << ", " << p.get_bc() << ", " <<
        p.get_data() << ") " << std::endl;
#endif
    // set current request to detect more than 1 request per cycle
    if (m_Cache.IsBusy())
    {   // Cache is not ready yet.

#ifdef _DEBUG_CACHE_INTERFACE
        std::cerr << "\tcache is busy" << std::endl;
#endif
        p.set_status(CP_ST_BUSY);
        return;
    }
#ifdef _DEBUG_CACHE_INTERFACE
    std::cerr << "\tcache is ready" << std::endl;
#endif
    Command type = p.get_command();
    codasip_address_t addr = p.get_address();
    Index sbi = p.get_bi();
    Index sbc = p.get_bc();
    // invalid command check
    if (((IS_DCACHE) && (type != CP_CMD_FLUSH && type != CP_CMD_FLUSH_ALL && type != CP_CMD_WRITE &&
        type != CP_CMD_INVALIDATE && type != CP_CMD_INVALIDATE_ALL && type != CP_CMD_READ)) ||
        ((IS_ICACHE) && (type != CP_CMD_INVALIDATE && type != CP_CMD_INVALIDATE_ALL &&
        type != CP_CMD_READ)))
    {
        m_NextResponse = CP_RS_IDLE;
        CacheRequest<_Params>::SetCmd(type);
    }
    else if (!IsAligned(addr))
    {
        m_NextState = STATE_SKIP_CYCLE;
        m_NextResponse = CP_RS_UNALIGNED;
        m_PreventRespReset = true;
        m_CurrentLine.clear();
        m_LineLoadTried = false;
        m_LineLoaded = false;
    }
    else if (IsError(sbi, sbc))
    {
        m_NextState = STATE_SKIP_CYCLE;
        m_NextResponse = CP_RS_ERROR;
        m_PreventRespReset = true;
    }
    // valid request
    else
    {
        CacheRequest<_Params>::Reset();
        CacheRequest<_Params>::SetCmd(type);
        CacheRequest<_Params>::SetAddr(addr);
        CacheRequest<_Params>::SetNCAddr(addr);
        CacheRequest<_Params>::SetSbi(sbi);
        CacheRequest<_Params>::SetSbc(sbc);
        CacheRequest<_Params>::SetTag(GetTagFromAddr(addr));
        CacheRequest<_Params>::SetIndex(GetIndexFromAddr(addr));
        CacheRequest<_Params>::SetOffset(GetOffsetFromAddr(addr));
        if (IsNC(addr))
        {
            m_NextState = STATE_NCR_REQUEST;
            if (type == CP_CMD_WRITE)
            {
                // target word wider than cache word, calculate needed subblock and align address
                if (TARGET_DATA_BITS >= CACHE_DATA_BITS)
                {
                    CacheRequest<_Params>::SetNCSbc(sbc);
                    if (sbc || !sbi)
                    {
                        CacheRequest<_Params>::SetNCSbi(sbi + addr % TARGET_BYTES_PER_WORD);
                    }
                    CacheRequest<_Params>::AlignNCAddr(m_TargetWordAlign);
                }
                // sbi = 0, sbc = target word size
                else
                {
                    CacheRequest<_Params>::SetNCSbc(0);
                    CacheRequest<_Params>::ResetNCWMask();
                    for (Index i = sbi; i < sbi + sbc; i++)
                    {
                        CacheRequest<_Params>::SetNCWMask(i);
                    }
                    CacheRequest<_Params>::SetNCSbiSbc();
                }
            }
            else
            {
                // need to re-align address if target word is wider than cache word
                if (TARGET_DATA_BITS > CACHE_DATA_BITS)
                {
                    CacheRequest<_Params>::AlignNCAddr(m_TargetWordAlign);
                }
                CacheRequest<_Params>::SetNCSbc(TARGET_BYTES_PER_WORD);
            }
        }
        else if (type == CP_CMD_READ)
        {
            CacheRequest<_Params>::SetResp(CP_RS_WAIT);
            if (m_FSMstate == STATE_R_ACCEPT)
            {
                CacheRequest<_Params>::AlignNCAddr(m_IndexShift);
                m_NextState = STATE_R_BUFFER;
            }
            else
            {
                // cachable region - request might be sent next clock (if miss)
                CacheRequest<_Params>::AlignNCAddr(m_IndexShift);
                if (IS_DCACHE)
                {
                    m_NextState = STATE_R_REQUEST_D;
                }
                else
                {
                    m_NextState = STATE_R_REQUEST;
                }
            }
        }
        else if (type == CP_CMD_INVALIDATE)
        {
            CacheRequest<_Params>::SetLatency(LATENCY_INVALIDATE);
            CacheRequest<_Params>::SetResp(CP_RS_ACK);
            m_NextState = STATE_I_CL;
        }
        else if (type == CP_CMD_INVALIDATE_ALL)
        {
            CacheRequest<_Params>::SetLatency(LATENCY_INVALIDATE_ALL);
            CacheRequest<_Params>::SetResp(CP_RS_ACK);
            m_NextState = STATE_I_ALL;
        }
        else if (IS_DCACHE)
        {
            CacheRequest<_Params>::SetResp(CP_RS_ACK);
            if (type == CP_CMD_WRITE)
            {
                CacheRequest<_Params>::AlignNCAddr(m_IndexShift);
                m_NextState = STATE_SAVE_DATA;
            }
            else if (type == CP_CMD_FLUSH)
            {
                m_EvictDelay = true;
                CacheRequest<_Params>::SetLatency(LATENCY_FLUSH);
                CacheRequest<_Params>::AlignNCAddr(m_IndexShift);
                m_NextState = STATE_F_CL;
            }
            else if (type == CP_CMD_FLUSH_ALL)
            {
                m_EvictDelay = true;
                CacheRequest<_Params>::SetLatency(LATENCY_FLUSH_ALL);
                CacheRequest<_Params>::SetIndex(0);
                m_NextState = STATE_F_ALL;
            }
        }

    }
    p.set_status(CP_ST_READY);
} // CacheInterface::request
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, class M, class _Params>
void CacheInterface<T, M, _Params>::finish_cb(Payload<typename _Params::data_type>& p)
{
    TData targetData;
    Data data = p.get_data(), cacheData;
    Response rc;
    switch (p.get_command())
    {
        case CP_CMD_INVALIDATE_ALL:
        case CP_CMD_INVALIDATE:
        case CP_CMD_READ:
            if (CacheRequest<_Params>::DataReady())
            {
                p.set_data(CacheRequest<_Params>::GetCoreData());
            }
            break;
        case CP_CMD_FLUSH_ALL:
        case CP_CMD_FLUSH:
        case CP_CMD_WRITE:
            if ((m_FSMstate == STATE_NCR_REQUEST) && !CacheRequest<_Params>::WriteDataReady())
            {
                CacheRequest<_Params>::SetCoreData(data);
                CacheRequest<_Params>::SetWriteDataReady();
            }
            else if (m_FSMstate == STATE_NCR_W_FINISH)
            {
                if (!CacheRequest<_Params>::WriteDataReady())
                {
                    CacheRequest<_Params>::SetCoreData(data);
                    CacheRequest<_Params>::SetWriteDataReady();
                }
                data = CacheRequest<_Params>::GetCoreWriteData();
                m_Cache.SetInterfaceUsed();
                if (CACHE_DATA_BITS > TARGET_DATA_BITS)
                {
                    cacheData = 0;
                    Unaligned<Data, BYTE_BITS, BYTES_PER_WORD>::template
                        write<ENDIANNESS>(&cacheData, data, 0, CacheRequest<_Params>::GetSbi(),
                        CacheRequest<_Params>::GetSbc());
                    targetData = Unaligned<Data, BYTE_BITS, BYTES_PER_WORD>::template
                        read<ENDIANNESS> (&cacheData, 0, CacheRequest<_Params>::GetCumulativeSbi(),
                        CacheRequest<_Params>::GetNCSbc());
                }
                else
                {
                    targetData = Unaligned<Data, BYTE_BITS, BYTES_PER_WORD>::template
                        read<ENDIANNESS> (&data, 0, 0, CacheRequest<_Params>::GetNCSbc());
                }
                CacheRequest<_Params>::IncCounter();
                CacheRequest<_Params>::NCAddrIncWord();
                if (CACHE_DATA_BITS > TARGET_DATA_BITS)
                {
                    CacheRequest<_Params>::SetNCSbiSbc();
                }
                rc = m_Cache.TargetOfinish(targetData);
                switch (rc)
                {
                    case CP_RS_WAIT:
                        if (CacheRequest<_Params>::GetTargetBytesCount() < BYTES_PER_WORD)
                        {
                            m_Cache.TargetRequest(CacheRequest<_Params>::GetCommand(),
                                CacheRequest<_Params>::GetNCAddr(), CacheRequest<_Params>::GetNCSbi(),
                                CacheRequest<_Params>::GetNCSbc());
                        }
                        CacheRequest<_Params>::DecCounter();
                        CacheRequest<_Params>::NCAddrDecWord();
                        m_NextState = m_FSMstate;
                        break;
                    case CP_RS_ACK:
                        if (CacheRequest<_Params>::GetTargetBytesCount() >= BYTES_PER_WORD)
                        {
                            CacheRequest<_Params>::SetResp(rc);
                            m_NextState = STATE_RAM_RESP;
                        }
                        else
                        {
                            switch (m_Cache.TargetRequest(CacheRequest<_Params>::GetCommand(), CacheRequest<_Params>::GetNCAddr(),
                                CacheRequest<_Params>::GetNCSbi(), CacheRequest<_Params>::GetNCSbc()))
                            {
                                case CP_ST_READY:
                                    m_NextState = STATE_NCR_W_FINISH;
                                    break;
                                case CP_ST_BUSY:
                                    m_NextState = STATE_NCR_REQUEST;
                                    break;
                                case CP_ST_ERROR:
                                default:
                                    CacheRequest<_Params>::SetResp(CP_RS_ERROR);
                                    m_NextState = STATE_RAM_RESP;
                                    break;
                            }
                        }
                        break;
                    case CP_RS_ERROR:
                    default:
                        CacheRequest<_Params>::SetResp(rc);
                        CacheRequest<_Params>::ResetCacheData();
                        m_NextState = STATE_RAM_RESP;
                        break;
                }
            }
            // cache write data will be saved during next clock cycle, 0 if ofinish not called,
            else if ((m_FSMstate == STATE_SAVE_DATA) && !CacheRequest<_Params>::WriteDataReady())
            {
                CacheRequest<_Params>::SetCoreData(data);
                CacheRequest<_Params>::SetWriteDataReady();
            }
            break;
        default:
            break;
    }
    p.set_response(m_NextResponse);
#ifdef _DEBUG_CACHE_INTERFACE
    std::cerr << "CacheInterface::"<< __FUNCTION__ << "::port" << m_Id <<  "(" << p.get_command() << ", " <<
        std::hex << p.get_data() << ", " << p.get_bi() << ", " << p.get_bc() << ") " << m_NextResponse << std::endl;
#endif
} // CacheInterface::ifinish
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, class M, class _Params>
void CacheInterface<T, M, _Params>::Fsm_step(){
#ifdef _DEBUG_CACHE_INTERFACE
    std::cerr << "CacheInterface::" << __FUNCTION__ << "() state of FSM is : " <<
        stavy.at(m_FSMstate) << std::endl;
#endif
    Response rc;
    m_NextState = STATE_IDLE;
    Index way = 0;
    TData targetData = 0;
    Data cacheData = 0;
    LineIndex index = 0;
    Index latency = 0;
    bool fixResponse = false;
    // Each state resolves next FSM state and response that will be presented
    // during this clock cycle. Status of interface is busy when FSM is in state
    // other than STATE_IDLE.
    switch (m_FSMstate)
    {
        case STATE_FORWARD_R:
            if (CacheRequest<_Params>::GetLatency())
            {
                CacheRequest<_Params>::DecLatency();
                m_NextState = m_FSMstate;
                m_NextResponse = CP_RS_WAIT;
            }
            else
            {
                m_NextResponse = CacheRequest<_Params>::GetResponse();
            }
            break;
        case STATE_FORWARD:
            if (CacheRequest<_Params>::GetLatency())
            {
                CacheRequest<_Params>::DecLatency();
                m_NextState = m_FSMstate;
                m_NextResponse = CP_RS_WAIT;
            }
            else
            {
                m_NextResponse = CP_RS_ACK;
                CacheRequest<_Params>::SetDataReady();
            }
            break;
        case STATE_NCR_W_FINISH:
            m_Cache.SetInterfaceUsed();
            if (m_Cache.SkipCycle(m_Id))
            {
                CacheRequest<_Params>::SetLatency(2);
            }
            m_NextResponse = CP_RS_WAIT;
            break;
        case STATE_R_ACCEPT:
            m_NextState = STATE_R_ACCEPT;
            if (CacheRequest<_Params>::GetCommand() == CP_CMD_READ)
            {
                m_CurrentOffset++;
                if (m_CurrentOffset == WORDS_PER_LINE)
                {
                    m_CurrentOffset = 0;
                    m_CurrentIndex++;
                    m_CurrentLine.clear();
                    if (m_CurrentIndex == SET_LINE_COUNT)
                    {
                    m_CurrentIndex = 0;
                        m_CurrentTag++;
                    }
                    if (m_Cache.IsHit(m_CurrentTag, m_CurrentIndex, way))
                    {
                        m_LineLoaded = true;
                        for (Index i = 0; i < WORDS_PER_LINE; i++)
                        {
                            m_CurrentLine.push_back(m_Cache.GetData(way, m_CurrentIndex, i));
                        }
                    }
                    else
                    {
                        m_LineLoaded = false;
                    }
                }
            }
            m_NextResponse = CP_RS_IDLE;
            break;
        case STATE_RAM_RESP:
            m_NextResponse = CacheRequest<_Params>::GetResponse();
            CacheRequest<_Params>::SetResp(CP_RS_IDLE);
            if (m_NextResponse == CP_RS_ACK)
            {
                CacheRequest<_Params>::SetDataReady();
            }
            if (CacheRequest<_Params>::GetLatency())
            {
                CacheRequest<_Params>::DecLatency();
                m_NextState = m_FSMstate;
            }
            m_Cache.SetInterfaceUsed();
            break;
        // Noncachable region read. Request to target will be repeated if target is busy.
        // Error stops repeating request. Ready switches to finish state. Interface responds
        // with wait.
        case STATE_NCR_REQUEST:
            m_NextResponse = CP_RS_WAIT;
            if (m_Cache.TargetUsed())
            {
                m_Cache.SetInterfaceUsed();
                m_NextState = STATE_NCR_REQUEST;
            }
            else
            {
                m_Cache.SetInterfaceUsed();
                switch (m_Cache.TargetRequest(CacheRequest<_Params>::GetCommand(), CacheRequest<_Params>::GetNCAddr(),
                    CacheRequest<_Params>::GetNCSbi(), CacheRequest<_Params>::GetNCSbc()))
                {
                    case CP_ST_READY:
                        if (CacheRequest<_Params>::GetCommand() != CP_CMD_WRITE)
                        {
                            m_NextState = STATE_NCR_R_FINISH;
                        }
                        else
                        {
                            m_NextState = STATE_NCR_W_FINISH;
                        }
                        break;
                    case CP_ST_BUSY:
                        m_NextState = STATE_NCR_REQUEST;
                        break;
                    case CP_ST_ERROR:
                    default:
                        CacheRequest<_Params>::SetResp(CP_RS_ERROR);
                        m_NextState = STATE_RAM_RESP;
                        break;
                }
            }
            break;
        // Finish will be repeated while target responds with wait. Error stops whole request.
        // Ack adds loaded data to the rest (if target word is smaller than cache word). Once
        // enough data is loaded, they can be read using ifinish. Interface responds with
        // Ack (enough data loaded), wait (not enough data loaded) or with target response.
        case STATE_NCR_R_FINISH:
            m_NextResponse = CP_RS_WAIT;
            m_Cache.SetInterfaceUsed();
            CacheRequest<_Params>::IncCounter();
            CacheRequest<_Params>::NCAddrIncWord();
            if (m_Cache.SkipCycle(m_Id))
            {
                CacheRequest<_Params>::SetLatency(2);
            }
            switch (rc = m_Cache.TargetIfinish(targetData))
            {
                case CP_RS_WAIT:
                    if (CacheRequest<_Params>::GetTargetBytesCount() < BYTES_PER_WORD)
                    {
                        m_Cache.TargetRequest(CacheRequest<_Params>::GetCommand(), CacheRequest<_Params>::GetNCAddr(),
                            CacheRequest<_Params>::GetNCSbi(), CacheRequest<_Params>::GetNCSbc());
                    }
                    CacheRequest<_Params>::DecCounter();
                    CacheRequest<_Params>::NCAddrDecWord();
                    m_NextState = STATE_NCR_R_FINISH;
                    break;
                case CP_RS_ACK:
                    if (TARGET_DATA_BITS >= CACHE_DATA_BITS)
                    {
                        CacheRequest<_Params>::SetCoreData(Unaligned<TData, BYTE_BITS,
                            TARGET_BYTES_PER_WORD>::template read<ENDIANNESS>(&targetData, 0,
                            CacheRequest<_Params>::GetAddrModTBPW(), BYTES_PER_WORD));
                        CacheRequest<_Params>::SetResp(rc);
                        m_NextState = STATE_RAM_RESP;
                    }
                    else
                    {
                        CacheRequest<_Params>::ConcatenateCacheData(targetData);
                        if (CacheRequest<_Params>::GetTargetBytesCount() >= BYTES_PER_WORD)
                        {
                            CacheRequest<_Params>::SetResp(rc);
                            CacheRequest<_Params>::CacheToCore();
                            m_NextState = STATE_RAM_RESP;
                        }
                        else
                        {
                            switch (m_Cache.TargetRequest(CacheRequest<_Params>::GetCommand(),
                                CacheRequest<_Params>::GetNCAddr(), CacheRequest<_Params>::GetNCSbi(), CacheRequest<_Params>::GetNCSbc()))
                            {
                                case CP_ST_READY:
                                    m_NextState = STATE_NCR_R_FINISH;
                                    break;
                                case CP_ST_BUSY:
                                    m_NextState = STATE_NCR_REQUEST;
                                    break;
                                case CP_ST_ERROR:
                                default:
                                    CacheRequest<_Params>::SetResp(CP_RS_ERROR);
                                    m_NextState = STATE_RAM_RESP;
                                    break;
                            }
                        }
                    }
                    break;
                case CP_RS_ERROR:
                default:
                    CacheRequest<_Params>::SetResp(rc);
                    CacheRequest<_Params>::ResetCacheData();
                    m_NextState = STATE_RAM_RESP;
                    break;
            }
            break;
        // Cacheable region read. Check if there is a hit in cache and increment latency counter
        // if so. Respond with wait if latency not met, ack otherwise. If not hit, check which
        // cacheline should be replaced. If that line is valid and dirty, start write request
        // and repond with wait,continue to next state otherwise.
        case STATE_R_REQUEST:
            m_LineLoadTried = true;
            if (m_Cache.IsHit(CacheRequest<_Params>::GetTag(), CacheRequest<_Params>::GetIndex(), way))
            {
                m_LineLoaded = true;
                m_CurrentLine.clear();
                m_CurrentTag = CacheRequest<_Params>::GetTag();
                m_CurrentIndex = CacheRequest<_Params>::GetIndex();
                m_CurrentOffset = CacheRequest<_Params>::GetOffset();
                for (Index i = 0; i < WORDS_PER_LINE; i++)
                {
                    m_CurrentLine.push_back(m_Cache.GetData(way, m_CurrentIndex, i));
                }
            }
            m_NextState = STATE_R_BUFFER;
            m_NextResponse = CP_RS_WAIT;
            break;
        case STATE_R_BUFFER:
            if (m_LineLoaded && ((CacheRequest<_Params>::GetIndex() == m_CurrentIndex) && (CacheRequest<_Params>::GetTag() ==
                m_CurrentTag)))
            {
                CacheRequest<_Params>::SetCoreData(m_CurrentLine.at(CacheRequest<_Params>::GetOffset()));
                CacheRequest<_Params>::SetDataReady();
                m_NextResponse = CP_RS_ACK;
                m_Cache.IsHit(CacheRequest<_Params>::GetTag(), CacheRequest<_Params>::GetIndex(), way);
                m_Cache.UpdateReplacementBits(way, true, CacheRequest<_Params>::GetIndex());
                m_FSMstate = STATE_R_ACCEPT;
                m_NextState = STATE_R_ACCEPT;
                m_CurrentOffset = CacheRequest<_Params>::GetOffset() + 1;
                m_LineLoadTried = false;
                if (m_CurrentOffset == WORDS_PER_LINE)
                {
                    m_CurrentOffset = 0;
                    m_CurrentLine.clear();
                    if (++m_CurrentIndex == SET_LINE_COUNT)
                    {
                        m_CurrentIndex = 0;
                        if (++m_CurrentTag == (1 << m_TagBits))
                        {
                            m_CurrentTag = 0;
                        }
                    }
                    if (m_Cache.IsHit(m_CurrentTag, m_CurrentIndex, way))
                    {
                        m_LineLoaded = true;
                        for (Index i = 0; i < WORDS_PER_LINE; i++)
                        {
                            m_CurrentLine.push_back(m_Cache.GetData(way, m_CurrentIndex, i));
                        }
                    }
                    else
                    {
                        m_LineLoaded = false;
                    }
                }
            }
            else
            {
                if (m_LineLoadTried || ((CacheRequest<_Params>::GetIndex() == m_CurrentIndex) &&
                    (CacheRequest<_Params>::GetTag() == m_CurrentTag)))
                {
                    CacheRequest<_Params>::SetResp(CP_RS_WAIT);
                    m_NextResponse = CP_RS_WAIT;
                    switch (m_Cache.TargetRequest(CP_CMD_READ, CacheRequest<_Params>::GetNCAddr(), 0,
                        TARGET_BYTES_PER_WORD))
                    {
                        case CP_ST_READY:
                            m_NextState = STATE_R_CL_FINISH;
                            break;
                        case CP_ST_BUSY:
                            m_NextState = STATE_R_CL_REQUEST;
                            break;
                        case CP_ST_ERROR:
                        default:
                            CacheRequest<_Params>::SetResp(CP_RS_ERROR);
                            m_NextState = STATE_RAM_RESP;
                            break;
                    }
                }
                else
                {
                    m_NextResponse = CP_RS_WAIT;
                    m_NextState = STATE_R_REQUEST;
                }
                m_CurrentLine.clear();
                m_LineLoaded = false;
                m_LineLoadTried = false;
            }
            break;
        case STATE_R_CL_REQUEST:
            m_NextResponse = CacheRequest<_Params>::GetResponse();
            if (m_NextResponse == CP_RS_ACK)
            {
                CacheRequest<_Params>::SetDataReady();
                CacheRequest<_Params>::SetResp(CP_RS_IDLE);
            }
            if (m_Cache.TargetUsed())
            {
                m_NextState = m_FSMstate;
            }
            else
            {
                m_Cache.SetInterfaceUsed();
                CheckForward(TARGET_DATA_BITS >= CACHE_DATA_BITS ? 1 : TARGET_WORDS_PER_CACHE_WORD);
                switch (m_Cache.TargetRequest(CP_CMD_READ, CacheRequest<_Params>::GetNCAddr(), 0,
                    TARGET_BYTES_PER_WORD))
                {
                    case CP_ST_READY:
                        m_NextState = STATE_R_CL_FINISH;
                        break;
                    case CP_ST_BUSY:
                        m_NextState = STATE_R_CL_REQUEST;
                        break;
                    case CP_ST_ERROR:
                    default:
                        if (CacheRequest<_Params>::NotFinished())
                        {
                            CacheRequest<_Params>::SetResp(CP_RS_ERROR);
                        }
                        else
                        {
                            CacheRequest<_Params>::SetResp(CP_RS_IDLE);
                        }
                        m_NextState = STATE_RAM_RESP;
                        break;
                }
            }
            break;
        case STATE_R_CL_FINISH:
            m_NextResponse = CacheRequest<_Params>::GetResponse();
            if (m_NextResponse == CP_RS_ACK)
            {
                CacheRequest<_Params>::SetDataReady();
                CacheRequest<_Params>::SetResp(CP_RS_IDLE);
            }
            m_Cache.SetInterfaceUsed();
            CacheRequest<_Params>::IncCounter();
            CacheRequest<_Params>::NCAddrIncWord();
            switch (rc = m_Cache.TargetIfinish(targetData))
            {
                case CP_RS_WAIT:
                    if (CacheRequest<_Params>::GetTargetBytesCount() < CACHE_LINE_SIZE)
                    {
                        m_Cache.TargetRequest(CP_CMD_READ, CacheRequest<_Params>::GetNCAddr(),
                            0, TARGET_BYTES_PER_WORD);
                    }
                    CacheRequest<_Params>::DecCounter();
                    CacheRequest<_Params>::NCAddrDecWord();
                    m_NextState = m_FSMstate;
                    break;
                case CP_RS_ACK:
                    if (TARGET_DATA_BITS >= CACHE_DATA_BITS)
                    {
                        // Split target word to cache words.
                        for (int i = 0; i < CACHE_WORDS_PER_TARGET_WORD; i++)
                        {
                            CacheRequest<_Params>::PushWord(Unaligned<TData, BYTE_BITS,
                                TARGET_BYTES_PER_WORD>:: template read<ENDIANNESS>
                                (&targetData, 0, i * BYTES_PER_WORD, BYTES_PER_WORD));
                        }
                        CheckForward();
                    }
                    else
                    {
                        CacheRequest<_Params>::ConcatenateCacheData(targetData);
                        if (CacheRequest<_Params>::LoadedCacheWord())
                        {
                            CacheRequest<_Params>::PushCacheData();
                        }
                        CheckForward(TARGET_WORDS_PER_CACHE_WORD);
                    }
                    if (CacheRequest<_Params>::NotFinished() &&
                        (((CacheRequest<_Params>::GetOffset() + 1) * CACHE_DATA_BITS) <=
                        (CacheRequest<_Params>::GetCounter() * TARGET_DATA_BITS)))
                    {
                        CacheRequest<_Params>::SetFinished();
                        fixResponse = true;
                        if (CacheRequest<_Params>::GetCommand() == CP_CMD_READ)
                        {
                            CacheRequest<_Params>::SetCoreData(CacheRequest<_Params>::GetCacheLineWord());
                            CacheRequest<_Params>::SetResp(rc);
                        }
                        else
                        {
                            cacheData = CacheRequest<_Params>::GetCacheLineWord();
                            Unaligned<Data, BYTE_BITS, BYTES_PER_WORD>::template write<ENDIANNESS>
                                (&cacheData, CacheRequest<_Params>::GetCoreWriteData(), 0,
                                CacheRequest<_Params>::GetSbi(), CacheRequest<_Params>::GetSbc());
                            CacheRequest<_Params>::SetCacheLineWord(cacheData);
                        }
                    }
                    if (CacheRequest<_Params>::GetTargetBytesCount() >= CACHE_LINE_SIZE)
                    {
                        CacheRequest<_Params>::SetLatency(1);
                        CheckForward(1, fixResponse);
                        m_CurrentIndex = 0;
                        m_CurrentTag = 0;
                        m_CurrentLine.clear();
                        m_NextState = STATE_SAVE_LINE;
                    }
                    else
                    {
                        switch (m_Cache.TargetRequest(CP_CMD_READ, CacheRequest<_Params>::GetNCAddr(), 0,
                            TARGET_BYTES_PER_WORD))
                        {
                            case CP_ST_READY:
                                m_NextState = STATE_R_CL_FINISH;
                                break;
                            case CP_ST_BUSY:
                                m_NextState = STATE_R_CL_REQUEST;
                                break;
                            case CP_ST_ERROR:
                            default:
                                if (!fixResponse)
                                {
                                    if (CacheRequest<_Params>::NotFinished())
                                    {
                                        CacheRequest<_Params>::SetResp(CP_RS_ERROR);
                                    }
                                    else
                                    {
                                        CacheRequest<_Params>::SetResp(CP_RS_IDLE);
                                    }
                                }
                                m_NextState = STATE_RAM_RESP;
                                break;
                        }
                    }
                    break;
                case CP_RS_ERROR:
                default:
                    if ((CacheRequest<_Params>::GetCommand() == CP_CMD_READ) && CacheRequest<_Params>::NotFinished())
                    {
                        CacheRequest<_Params>::SetResp(rc);
                    }
                    if (IS_MULTIPORT)
                    {
                        m_Cache.NotifyRequestFailed(m_Id, CacheRequest<_Params>::GetCachelineAddr(CacheRequest<_Params>::GetAddr()), rc);
                        if (m_Cache.SkipCycle(m_Id))
                        {
                            CacheRequest<_Params>::SetLatency(2);
                        }
                    }
                    CacheRequest<_Params>::ResetCacheData();
                    m_NextState = STATE_RAM_RESP;
                    break;
            }
            break;
        case STATE_SAVE_LINE:
            m_Cache.SetInterfaceUsed();
            m_NextResponse = CacheRequest<_Params>::GetResponse();
            m_Cache.InvalidateNotify(m_Id);
            if (m_NextResponse == CP_RS_ACK)
            {
                CacheRequest<_Params>::SetDataReady();
                CacheRequest<_Params>::SetResp(CP_RS_IDLE);
            }
            if (CacheRequest<_Params>::GetLatency())
            {
                CacheRequest<_Params>::DecLatency();
                m_NextState = STATE_SAVE_LINE;
            }
            else
            {
                way = m_Cache.GetReplaceWay(CacheRequest<_Params>::GetIndex());
                if (m_Cache.IsDirty(way, CacheRequest<_Params>::GetIndex()) &&
                    m_Cache.IsValid(way, CacheRequest<_Params>::GetIndex()))
                {
                    if (m_Cache.EvictRunning())
                    {
                        m_NextState = STATE_SAVE_LINE;
                        break;
                    }
                    else
                    {
                        for (Index i = 0; i < WORDS_PER_LINE; i++)
                        {
                            m_Cache.PushEvictWord(m_Cache.GetData(way, CacheRequest<_Params>::GetIndex(), i));
                        }
                        m_Cache.SetEvictAddr((m_Cache.GetTag(way, CacheRequest<_Params>::GetIndex()) <<
                            m_TagShift) + (CacheRequest<_Params>::GetIndex() << m_IndexShift));
                        m_Cache.ResetEvictOffset();
                        m_Cache.SetEvictRequest(true);
                        m_Cache.SetClear(way, CacheRequest<_Params>::GetIndex());
                        m_NextState = STATE_SKIP_CYCLE;
                    }
                    latency = 2;
                }
                else
                {
                    latency = 1;
                }
                if (CacheRequest<_Params>::GetCommand() == CP_CMD_WRITE)
                {
                    m_Cache.SetDirty(way, CacheRequest<_Params>::GetIndex());
                }
                m_Cache.SaveCacheLine(way, CacheRequest<_Params>::GetAddr(), CacheRequest<_Params>::GetCacheLine());
                m_Cache.SetValid(way, CacheRequest<_Params>::GetIndex());
                m_Cache.SetTag(way, CacheRequest<_Params>::GetIndex(), CacheRequest<_Params>::GetTag());
                m_Cache.UpdateReplacementBits(way, false, CacheRequest<_Params>::GetIndex());
                if (IS_MULTIPORT && m_Cache.SkipCycle(m_Id))
                {
                    CacheRequest<_Params>::SetLatency(latency);
                    m_NextState = STATE_SKIP_CYCLE;
                }
            }
            break;
        case STATE_SKIP_CYCLE:
            if (m_PreventRespReset)
            {
                m_PreventRespReset = false;
            }
            else
            {
                if (CacheRequest<_Params>::GetLatency())
                {
                    CacheRequest<_Params>::DecLatency();
                    m_NextState = m_FSMstate;
                }
                m_NextResponse = CP_RS_IDLE;
            }
            m_Cache.SetInterfaceUsed();
            break;
        // Clears valid bit. Response Ack.
        case STATE_I_CL:
            m_NextResponse = CacheRequest<_Params>::GetResponse();
            CacheRequest<_Params>::SetResp(CP_RS_IDLE);
            if (CacheRequest<_Params>::GetLatency())
            {
                CacheRequest<_Params>::DecLatency();
                m_NextState = m_FSMstate;
                m_Cache.SetInterfaceUsed();
            }
            else if (IS_MULTIPORT && m_Cache.TargetUsed(true))
            {
                m_NextState = m_FSMstate;
            }
            else
            {
                m_Cache.SetInterfaceUsed();
                if (m_Cache.IsHit(CacheRequest<_Params>::GetTag(), CacheRequest<_Params>::GetIndex(), way))
                {
                    m_LineLoaded = false;
                    m_LineLoadTried = false;
                    m_Cache.InvalidateNotify(m_Id);
                    m_Cache.SetInvalid(way, CacheRequest<_Params>::GetIndex());
                    m_Cache.SetClear(way, CacheRequest<_Params>::GetIndex());
                }
                if (IS_MULTIPORT)
                {
                    if (m_Cache.SkipCycle(m_Id))
                    {
                        CacheRequest<_Params>::SetLatency(2);
                    }
                    m_NextState = STATE_SKIP_CYCLE;
                }
                m_CurrentLine.clear();
                m_LineLoaded = false;
            }
            break;
        // Clears cachelines. One line in all ways per clock cycle.
        // Response is Ack in first cycle and Idle afterwards.
        case STATE_I_ALL:
            m_NextResponse = CacheRequest<_Params>::GetResponse();
            CacheRequest<_Params>::SetResp(CP_RS_IDLE);
            m_NextState = m_FSMstate;
            if (CacheRequest<_Params>::GetLatency())
            {
                CacheRequest<_Params>::DecLatency();
                m_Cache.SetInterfaceUsed();
            }
            else if (m_Cache.TargetUsed(true) && IS_MULTIPORT && !m_Reset)
            {
                m_NextState = m_FSMstate;
            }
            else
            {
                m_Cache.SetInterfaceUsed();
                for (Index i = 0; i < CACHE_NUM_WAYS; i++)
                {
                    m_Cache.SetInvalid(i, CacheRequest<_Params>::GetCounter());
                    m_Cache.SetClear(i, CacheRequest<_Params>::GetCounter());
                }
#ifdef _DEBUG_CACHE_INTERFACE
                std::cerr << "Invalidating line (" << CacheRequest<_Params>::GetCounter() << ")" << std::endl;
#endif
                CacheRequest<_Params>::IncCounter();
                if (CacheRequest<_Params>::LastLine())
                {
                    if (IS_MULTIPORT && m_Cache.SkipCycle(m_Id) && !m_Reset)
                    {
                        CacheRequest<_Params>::SetLatency(1);
                        m_NextState = STATE_SKIP_CYCLE;
                    }
                    else
                    {
                        m_NextState = STATE_IDLE;
                    }
                    m_Cache.ResetReplacementBits();
                    m_LineLoaded = false;
                    m_LineLoadTried = false;
                    m_Cache.InvalidateNotify(m_Id);
                    CacheRequest<_Params>::ResetCounter();
                    m_Reset = false;
                }
            }
            break;
        case STATE_R_REQUEST_D:
            m_Cache.SetInterfaceUsed();
            if (m_LineLoaded && ((CacheRequest<_Params>::GetIndex() == m_CurrentIndex) &&
                (CacheRequest<_Params>::GetTag() == m_CurrentTag)))
            {
                CacheRequest<_Params>::SetCoreData(m_CurrentLine.at(CacheRequest<_Params>::GetOffset()));
                CacheRequest<_Params>::SetDataReady();
                m_Cache.IsHit(CacheRequest<_Params>::GetTag(), CacheRequest<_Params>::GetIndex(), way);
                m_Cache.UpdateReplacementBits(way, true, CacheRequest<_Params>::GetIndex());
                m_NextResponse = CP_RS_ACK;
            }
            else
            {
                m_NextResponse = CP_RS_WAIT;
                m_NextState = STATE_R_BUFFER_D;
            }
            break;
        case STATE_R_BUFFER_D:
            if (m_Cache.IsHit(CacheRequest<_Params>::GetTag(), CacheRequest<_Params>::GetIndex(), way))
            {
                m_LineLoaded = true;
                m_CurrentTag = m_Cache.GetTag(way, CacheRequest<_Params>::GetIndex());
                m_CurrentIndex = CacheRequest<_Params>::GetIndex();
                m_CurrentOffset = CacheRequest<_Params>::GetOffset();
                m_Cache.UpdateReplacementBits(way, true, CacheRequest<_Params>::GetIndex());
                m_CurrentLine.clear();
                for (Index i = 0; i < WORDS_PER_LINE; i++)
                {
                    m_CurrentLine.push_back(m_Cache.GetData(way, m_CurrentIndex, i));
                }
                if (CacheRequest<_Params>::GetCommand() == CP_CMD_READ)
                {
                    CacheRequest<_Params>::SetCoreData(m_CurrentLine.at(CacheRequest<_Params>::GetOffset()));
                    CacheRequest<_Params>::SetDataReady();
                    m_NextResponse = CP_RS_ACK;
                }
                else
                {
                    if (IS_MULTIPORT && m_Cache.SameLine(m_Id, CacheRequest<_Params>::GetAddr(), false))
                    {
                        m_Cache.InvalidateNotify(m_Id);
                    }
                    m_Cache.SetData(CacheRequest<_Params>::GetCoreWriteData(), way, m_CurrentIndex,
                        m_CurrentOffset, CacheRequest<_Params>::GetSbi(), CacheRequest<_Params>::GetSbc());
                    cacheData = m_CurrentLine.at(m_CurrentOffset);
                    Unaligned<Data, BYTE_BITS, BYTES_PER_WORD>::template write<ENDIANNESS>
                        (&cacheData, CacheRequest<_Params>::GetCoreWriteData(), 0,
                        CacheRequest<_Params>::GetSbi(), CacheRequest<_Params>::GetSbc());
                    m_Cache.SetDirty(way, m_CurrentIndex);
                    m_CurrentLine.at(m_CurrentOffset) = cacheData;
                    m_NextResponse = CP_RS_IDLE;
                }
                if (IS_MULTIPORT && m_Cache.SkipCycle(m_Id))
                {
                    m_NextState = STATE_SKIP_CYCLE;
                }
            }
            else
            {
                m_LineLoaded = false;
                if (CacheRequest<_Params>::GetCommand() == CP_CMD_READ)
                {
                    CacheRequest<_Params>::SetResp(CP_RS_WAIT);
                    m_NextResponse = CP_RS_WAIT;
                }
                else
                {
                    CacheRequest<_Params>::SetResp(CP_RS_IDLE);
                    m_NextResponse = CP_RS_IDLE;
                }
                if (m_Cache.TargetUsed())
                {
                    m_Cache.SetInterfaceUsed();
                    m_NextState = m_FSMstate;
                }
                else
                {
                    m_Cache.SetInterfaceUsed();
                    switch (m_Cache.TargetRequest(CP_CMD_READ, CacheRequest<_Params>::GetNCAddr(), 0,
                        TARGET_BYTES_PER_WORD))
                    {
                        case CP_ST_READY:
                            m_NextState = STATE_R_CL_FINISH;
                            break;
                        case CP_ST_BUSY:
                            m_NextState = STATE_R_CL_REQUEST;
                            break;
                        case CP_ST_ERROR:
                        default:
                            if (IS_MULTIPORT && m_Cache.SkipCycle(m_Id))
                            {
                                CacheRequest<_Params>::SetLatency(2);
                            }
                            if (CacheRequest<_Params>::GetCommand() == CP_CMD_READ)
                            {
                                CacheRequest<_Params>::SetResp(CP_RS_ERROR);
                                m_NextState = STATE_RAM_RESP;
                            }
                            else
                            {
                                m_NextState = STATE_SKIP_CYCLE;
                            }
                            break;
                    }
                }
            }
            break;
        // Check if address is cached. If it is, mark line as dirty, update replacement bits.
        // Data will be recieved during ofinish so they will be written in next cycle.
        // Response is Ack, cache will save data to buffer.
        case STATE_SAVE_DATA:
            m_NextResponse = CacheRequest<_Params>::GetResponse();
            m_Cache.SetInterfaceUsed();
            CacheRequest<_Params>::SetResp(CP_RS_IDLE);
            if (m_LineLoaded && ((CacheRequest<_Params>::GetIndex() == m_CurrentIndex) && (CacheRequest<_Params>::GetTag() ==
                m_CurrentTag)))
            {
                m_NextState = STATE_W_HIT;
                if (IS_MULTIPORT && m_Cache.SameLine(m_Id, CacheRequest<_Params>::GetAddr(), false))
                {
                    m_Cache.InvalidateNotify(m_Id);
                }
            }
            else
            {
                m_LineLoaded = false;
                m_CurrentLine.clear();
                m_NextState = STATE_R_BUFFER_D;
            }
            break;
        // This state writes data to cacheline. It writes data, that were presented previous
        // clock cycle so it directly moves to IDLE state, if write latency was met.
        // Response is Idle.
        case STATE_W_HIT:
            m_Cache.IsHit(CacheRequest<_Params>::GetTag(), CacheRequest<_Params>::GetIndex(), way);
            m_Cache.SetData(CacheRequest<_Params>::GetCoreWriteData(), way,
                CacheRequest<_Params>::GetIndex(), CacheRequest<_Params>::GetOffset(),
                CacheRequest<_Params>::GetSbi(), CacheRequest<_Params>::GetSbc());
            m_Cache.SetDirty(way, CacheRequest<_Params>::GetIndex());
            if (IS_MULTIPORT && m_Cache.SameLine(m_Id, CacheRequest<_Params>::GetAddr(), false))
            {
                m_Cache.InvalidateNotify(m_Id);
            }
            if (m_SkipCurrLine)
            {
                m_SkipCurrLine = false;
            }
            else
            {
                cacheData = m_CurrentLine.at(CacheRequest<_Params>::GetOffset());
                Unaligned<Data, BYTE_BITS, BYTES_PER_WORD>::template write<ENDIANNESS>
                    (&cacheData, CacheRequest<_Params>::GetCoreWriteData(), 0,
                    CacheRequest<_Params>::GetSbi(), CacheRequest<_Params>::GetSbc());
                m_CurrentLine.at(CacheRequest<_Params>::GetOffset()) = cacheData;
            }
            m_FSMstate = STATE_IDLE;
            m_NextResponse = CP_RS_IDLE;
            break;
        case STATE_F_CL:
            m_NextResponse = CacheRequest<_Params>::GetResponse();
            CacheRequest<_Params>::SetResp(CP_RS_IDLE);
            m_NextState = m_FSMstate;
            if (CacheRequest<_Params>::GetLatency())
            {
                m_Cache.SetInterfaceUsed();
                CacheRequest<_Params>::DecLatency();
            }
            else if (!IS_MULTIPORT || !m_Cache.TargetUsed(true))
            {
                m_Cache.SetInterfaceUsed();
                m_Cache.InvalidateNotify(m_Id);
                if (m_Cache.IsHit(CacheRequest<_Params>::GetTag(), CacheRequest<_Params>::GetIndex(), way) &&
                    m_Cache.IsDirty(way, CacheRequest<_Params>::GetIndex()))
                {
                    if (m_Cache.EvictRunning())
                    {
                        m_EvictDelay = false;
                        break;
                    }
                    else
                    {
                        for (Index i = 0; i < WORDS_PER_LINE; i++)
                        {
                            m_Cache.PushEvictWord(m_Cache.GetData(way, CacheRequest<_Params>::GetIndex(), i));
                        }
                        m_Cache.SetEvictAddr((m_Cache.GetTag(way, CacheRequest<_Params>::GetIndex()) <<
                            m_TagShift) + (CacheRequest<_Params>::GetIndex() << m_IndexShift));
                        m_Cache.ResetEvictOffset();
                        m_Cache.SetEvictRequest(IS_MULTIPORT && m_EvictDelay);
                        m_Cache.SetClear(way, CacheRequest<_Params>::GetIndex());
                        if (IS_MULTIPORT)
                        {
                            if (m_Cache.SkipCycle(m_Id))
                            {
                                if (m_EvictDelay)
                                {
                                    CacheRequest<_Params>::SetLatency(2);
                                }
                                else
                                {
                                    CacheRequest<_Params>::SetLatency(1);
                                }
                                m_NextState = STATE_SKIP_CYCLE;
                            }
                            else if (m_EvictDelay)
                            {
                                m_NextState = STATE_SKIP_CYCLE;
                            }
                            else
                            {
                                m_NextState = STATE_IDLE;
                            }
                        }
                        else
                        {
                            m_NextState = STATE_IDLE;
                        }
                    }
                }
                else if (IS_MULTIPORT)
                {
                    if (m_Cache.SkipCycle(m_Id))
                    {
                        CacheRequest<_Params>::SetLatency(2);
                    }
                    m_NextState = STATE_SKIP_CYCLE;
                }
                else
                {
                    m_NextState = STATE_IDLE;
                }
                m_CurrentLine.clear();
                m_LineLoaded = false;
            }
            break;
        case STATE_F_ALL:
            m_NextResponse = CacheRequest<_Params>::GetResponse();
            CacheRequest<_Params>::SetResp(CP_RS_IDLE);
            m_NextState = m_FSMstate;
            if (CacheRequest<_Params>::GetLatency())
            {
                CacheRequest<_Params>::DecLatency();
                m_Cache.SetInterfaceUsed();
            }
            else if (!IS_MULTIPORT || !m_Cache.TargetUsed(true))
            {
                m_Cache.SetInterfaceUsed();
#ifdef _DEBUG_CACHE_INTERFACE
                std::cerr << "Flushing set(" << CacheRequest<_Params>::GetCounter() << ") of line (" <<
                    CacheRequest<_Params>::GetIndex() << ")" << std::endl;
#endif
                if (m_Cache.IsValid(CacheRequest<_Params>::GetCounter(), CacheRequest<_Params>::GetIndex()) &&
                    m_Cache.IsDirty(CacheRequest<_Params>::GetCounter(), CacheRequest<_Params>::GetIndex()))
                {
#ifdef _DEBUG_CACHE_INTERFACE
                    std::cerr << "This line is valid and dirty" << std::endl;
#endif
                    if (m_Cache.EvictRunning())
                    {
                        m_EvictDelay = false;
                        break;
                    }
                    else
                    {
                        for (Index i = 0; i < WORDS_PER_LINE; i++)
                        {
                            m_Cache.PushEvictWord(m_Cache.GetData(CacheRequest<_Params>::GetCounter(),
                                CacheRequest<_Params>::GetIndex(), i));
                        }
                        m_Cache.SetEvictAddr((m_Cache.GetTag(CacheRequest<_Params>::GetCounter(),
                            CacheRequest<_Params>::GetIndex()) << m_TagShift) + (CacheRequest<_Params>::GetIndex() <<
                            m_IndexShift));
                        m_Cache.ResetEvictOffset();
                        m_Cache.SetEvictRequest(IS_MULTIPORT && m_EvictDelay);
                        m_CurrentLine.clear();
                        m_LineLoaded = false;
                        m_Cache.SetClear(CacheRequest<_Params>::GetCounter(), CacheRequest<_Params>::GetIndex());
                        if (!IS_MULTIPORT || m_EvictDelay)
                        {
                            break;
                        }
                    }
                }
                CacheRequest<_Params>::IncCounter();
                m_EvictDelay = true;
                if (CacheRequest<_Params>::GetCounter() == CACHE_NUM_WAYS)
                {
                    CacheRequest<_Params>::ResetCounter();
                    CacheRequest<_Params>::IncIndex();
                    if (CacheRequest<_Params>::GetIndex() == SET_LINE_COUNT)
                    {
                        m_NextState = STATE_IDLE;
                        if (!IS_MULTIPORT)
                        {
                            m_FSMstate = STATE_IDLE;
                        }
                        else if (m_Cache.SkipCycle(m_Id))
                        {
                            CacheRequest<_Params>::SetLatency(1);
                            m_NextState = STATE_SKIP_CYCLE;
                        }
                    }
                }
            }
            break;
        default:
            if (m_PreventRespReset)
            {
                m_PreventRespReset = false;
            }
            else
            {
                m_NextResponse = CP_RS_IDLE;
            }
            break;
    }
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, class M, class _Params>
CACHE_INLINE void CacheInterface<T, M, _Params>::Reset()
{
#ifdef _DEBUG_CACHE_INTERFACE
    std::cerr << "CacheInterface::Reset()" << std::endl;
#endif
    m_FSMstate = STATE_IDLE;
    if (!m_IA)
    {
        m_NextState = STATE_I_ALL;
    }
    m_NextResponse = CP_RS_IDLE;
    m_PreventRespReset = false;
    m_Reset = true;
    CacheRequest<_Params>::Reset();
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, class M, class _Params>
CACHE_INLINE void CacheInterface<T, M, _Params>::ClockCycle()
{
    Payload<typename _Params::data_type> payload;
    LineIndex index, offset;
    Index set, sbi, sbc;
#ifdef _DEBUG_CACHE_INTERFACE
    std::cerr << "######################################################" << std::endl <<
        "CacheInterface::ClockCycle()" << std::endl;
#endif
    CacheRequest<_Params>::ResetDataReady();
#ifdef _DEBUG_CACHE_INTERFACE
    std::cerr << "\tm_FSMstate " << stavy.at(m_FSMstate) << " moved to " << stavy.at(m_NextState) <<
        std::endl;
    std::cerr << "Current cache line : " << std::endl;
    std::cerr << "Tag is " << std::hex << m_CurrentTag << std::endl;
    std::cerr << "Index is " << m_CurrentIndex << std::endl;
    std::cerr << "Offset is " << m_CurrentOffset << std::endl;
    std::cerr << "Load tried " << m_LineLoadTried << std::endl;
    std::cerr << "Loaded " << m_LineLoaded << std::endl;
    std::cerr << "Next response " << m_NextResponse << std::endl;
    for (typename CLine::iterator it = m_CurrentLine.begin(); it != m_CurrentLine.end(); ++it)
    {
        std::cerr << std::hex << *it << "_";
    }
    std::cerr << std::endl;
#endif
    m_FSMstate = m_NextState;
    Fsm_step();
    if (m_InvalidateNotify)
    {
        if (m_NextState == STATE_W_HIT)
        {
            m_SkipCurrLine = true;
        }
        m_CurrentLine.clear();
        m_LineLoaded = false;
        m_InvalidateNotify = false;
    }
    if (m_DelayedRequest)
    {
        switch (CacheRequest<_Params>::GetCommand())
        {
            case CP_CMD_WRITE:
                index = CacheRequest<_Params>::GetIndex();
                if (m_Cache.IsHit(CacheRequest<_Params>::GetTag(), index, set))
                {
                    offset = CacheRequest<_Params>::GetOffset();
                    sbi = CacheRequest<_Params>::GetSbi();
                    sbc = CacheRequest<_Params>::GetSbc();
                    m_Cache.SetDirty(set, index);
                    m_Cache.SetData(CacheRequest<_Params>::GetCoreWriteData(), set, index, offset, sbi, sbc);
                    m_Cache.UpdateReplacementBits(set, true, index);
                }
                else
                {
                    WriteLoadedLine();
                }
                break;
            case CP_CMD_READ:
                WriteLoadedLine();
                break;
            case CP_CMD_INVALIDATE:
                payload.set_address(CacheRequest<_Params>::GetAddr());
                payload.set_command(CP_CMD_INVALIDATE);
                invalidate(payload);
                break;
            case CP_CMD_INVALIDATE_ALL:
                payload.set_command(CP_CMD_INVALIDATE_ALL);
                invalidate_all(payload);
                break;
            case CP_CMD_FLUSH:
                payload.set_address(CacheRequest<_Params>::GetAddr());
                payload.set_command(CP_CMD_FLUSH);
                flush(payload);
                break;
            case CP_CMD_FLUSH_ALL:
                payload.set_command(CP_CMD_FLUSH_ALL);
                flush_all(payload);
                break;
            default:
                break;
        }
        CacheRequest<_Params>::Reset();
        m_DelayedRequest = false;
    }
#ifdef _PRINT_CLINES
    std::cerr << "######################################################" << std::endl;
    // print cache contents ways are separated by X X X, each line contains cacheline, cache words
    // are separated by underscores
   // if (!IS_MULTIPORT || m_Id == 0)
    {
        for (int i = 0; i < CACHE_NUM_WAYS; i++)
        {
            for (int j = 0; j < SET_LINE_COUNT; j++)
            {
                for (int k = 0; k < WORDS_PER_LINE; k++)
                {
                    std::cerr << m_Cache.GetData(i, j, k);
                    if(k == (WORDS_PER_LINE - 1))
                    {
                        break;
                    }
                    std::cerr << "_";
                }
                std::cerr << std::hex << "[[" << m_Cache.GetTag(i, j) << "]]" << "((" << m_Cache.IsValid(i, j) << "))" <<  "((" <<
                    m_Cache.IsDirty(i, j) << "))" << std::endl;
            }
            std::cerr << "X X X"<< std::endl;
        }
    }
#endif
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, class M, class _Params>
CACHE_INLINE bool CacheInterface<T, M, _Params>::IsNCAccess()
{
    return ((m_NextState == STATE_NCR_REQUEST) || (m_NextState == STATE_NCR_R_FINISH) ||
        (m_NextState == STATE_NCR_W_FINISH) || (m_FSMstate == STATE_NCR_W_FINISH) ||
        (m_FSMstate == STATE_NCR_R_FINISH) || ((m_NextState == STATE_RAM_RESP) &&
        IsNC(CacheRequest<_Params>::GetAddr())));
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, class M, class _Params>
CACHE_INLINE bool CacheInterface<T, M, _Params>::NotifyRequestFailed(const codasip_address_t addr,
    const Response response)
{
    if (addr == CacheRequest<_Params>::GetCachelineAddr(CacheRequest<_Params>::GetAddr()))
    {
        if (m_FSMstate == STATE_R_BUFFER_D)
        {
            CacheRequest<_Params>::SetResp(response);
            CacheRequest<_Params>::SetLatency(1);
            m_NextState = STATE_FORWARD_R;
        }
        else
        {
            if (m_FSMstate == STATE_R_REQUEST)
            {
                m_PreventRespReset = true;
                m_NextResponse = response;
            }
            m_NextState = STATE_SKIP_CYCLE;
        }
        return true;
    }
    else
    {
        return false;
    }
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, class M, class _Params>
CACHE_INLINE void CacheInterface<T, M, _Params>::InvalidateNotify()
{
    m_InvalidateNotify = true;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, class M, class _Params>
CACHE_INLINE void CacheInterface<T, M, _Params>::MissNotify()
{
#ifdef _DEBUG_CACHE_INTERFACE
    std::cerr << __FUNCTION__ << "()" << std::endl;
#endif
    if (m_DelayedRequest && (CacheRequest<_Params>::GetCommand() == CP_CMD_READ))
    {
#ifdef _DEBUG_CACHE_INTERFACE
        std::cerr << "Finishing request." << std::endl;
#endif
        WriteLoadedLine();
        m_DelayedRequest = false;
        CacheRequest<_Params>::Reset();
    }
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, class M, class _Params>
CACHE_INLINE bool CacheInterface<T, M, _Params>::SkipCycle()
{
    return (m_FSMstate == STATE_F_ALL) || (m_FSMstate == STATE_I_ALL) ||
        (m_FSMstate == STATE_I_CL) || (m_FSMstate == STATE_F_CL);
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, class M, class _Params>
CACHE_INLINE bool CacheInterface<T, M, _Params>::SameLine(const codasip_address_t addr,
    const bool read)
{
    const LineIndex tag = GetTagFromAddr(addr);
    const LineIndex index = GetIndexFromAddr(addr);
    bool result;
    result = ((m_FSMstate == STATE_R_BUFFER_D) || !read) && (tag == CacheRequest<_Params>::GetTag()) &&
        (index == CacheRequest<_Params>::GetIndex());
    return result;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, class M, class _Params>
CACHE_INLINE void CacheInterface<T, M, _Params>::ForwardData(const Data data, const Index latency)
{
    if (CacheRequest<_Params>::GetCommand() == CP_CMD_READ)
    {
        m_NextState = STATE_FORWARD;
        CacheRequest<_Params>::SetLatency(latency);
        CacheRequest<_Params>::SetCoreData(data);
    }
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, class M, class _Params>
CACHE_INLINE void CacheInterface<T, M, _Params>::ForwardResponse(const codasip_address_t addr,
    const Response resp)
{
    m_ForwardAddr = CacheRequest<_Params>::GetCachelineAddr(addr);
    m_NextResponse = resp;
    m_ForwardResp = true;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, class M, class _Params>
CACHE_INLINE typename CacheInterface<T, M, _Params>::LineIndex CacheInterface<T, M, _Params>::GetOffset()
{
    return CacheRequest<_Params>::GetOffset();
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, class M, class _Params>
CACHE_INLINE bool CacheInterface<T, M, _Params>::IsRead()
{
    return (CacheRequest<_Params>::GetCommand() == CP_CMD_READ) && (m_FSMstate != STATE_IDLE);
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, class M, class _Params>
CACHE_INLINE void CacheInterface<T, M, _Params>::CheckForward(const Index ratio,
    const bool justFinished)
{
    LineIndex offset = 0;
#ifdef _DEBUG_CACHE_INTERFACE
    std::cerr << __FUNCTION__ << "(" << ratio << ", " << justFinished << ")" << std::endl;
#endif
    if (IS_MULTIPORT && m_Cache.SameLine(m_Id, CacheRequest<_Params>::GetAddr()) && (justFinished ||
        ((CacheRequest<_Params>::GetCommand() == CP_CMD_READ) && !CacheRequest<_Params>::NotFinished())))
    {

        if (!justFinished || (CacheRequest<_Params>::GetCommand() == CP_CMD_READ))
        {
            offset = CacheRequest<_Params>::GetOffset();
            m_CurrentOffset = m_Cache.GetOffset(m_Id);
            if ((m_CurrentOffset < (CacheRequest<_Params>::GetCounter() / ratio)) || justFinished)
            {
                CacheRequest<_Params>::SetOffset(m_CurrentOffset);
                m_Cache.ForwardData(m_Id, CacheRequest<_Params>::GetCacheLineWord(),
                    justFinished ? 2 : /*(offset >= CacheRequest<_Params>::GetOffset()) ? 0 :*/ 1);
                CacheRequest<_Params>::SetOffset(offset);
                if (justFinished)
                {
                    CacheRequest<_Params>::SetLatency(2);
                }
            }
        }
    }
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, class M, class _Params>
CACHE_INLINE typename CacheInterface<T, M, _Params>::Tag CacheInterface<T, M, _Params>::GetTagFromAddr
    (const codasip_address_t addr)
{
    return ((addr / SET_LINE_COUNT) / CACHE_LINE_SIZE);
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, class M, class _Params>
CACHE_INLINE typename CacheInterface<T, M, _Params>::LineIndex CacheInterface<T, M, _Params>::GetIndexFromAddr
    (const codasip_address_t addr)
{
    return ((addr / CACHE_LINE_SIZE) % SET_LINE_COUNT);
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, class M, class _Params>
CACHE_INLINE typename CacheInterface<T, M, _Params>::LineIndex CacheInterface<T, M, _Params>::GetOffsetFromAddr
    (const codasip_address_t addr)
{
    return ((addr % CACHE_LINE_SIZE) / BYTES_PER_WORD);
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T, class M, class _Params>
CACHE_INLINE void CacheInterface<T, M, _Params>::SetIa()
{
    m_FSMstate = m_NextState = STATE_IDLE;
    m_IA = true;
}
}   // namespace resources
}   // namespace codasip

#endif  // SIMULATORS2_RESOURCES_CSR_CACHE_INTERFACE_H_
