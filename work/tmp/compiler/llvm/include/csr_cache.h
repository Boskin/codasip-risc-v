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


#ifndef SIMULATORS2_RESOURCES_CSR_CACHE_H_
#define SIMULATORS2_RESOURCES_CSR_CACHE_H_

#include <cmath>
#include <vector>

#include "csr_helpers.h"
#include "csr_payload_sentinel.h"
#include "csr_interface.h"
#include "csr_unaligned_generic.h"
#include "csr_unaligned_native.h"
#include "csr_cache_rpl.h"
#include "csr_cache_storage.h"
#include "csr_cache_request.h"
#include "csr_address_checker.h"
#include "csr_access_checker.h"
#include "simulator_resources.h"

//#define _DEBUG_CACHE
#define CACHE_INLINE inline

namespace codasip {
namespace resources {
/**
 *  \class  codasip::resources::Cache
 *  \brief          Software implementation of cache. The organization is constructed as one or more
 *                  direct-mapped caches (performance reasons).
 *  \tparam _Params Parameters
 */
template <class _Params>
class Cache : public Sentinel,
    public _Params,
    public CacheStorage<_Params>,
    public simulator::CacheInfo
{
public:
    /// bit-width of data
    static const Index CACHE_DATA_BITS = _Params::WORD_BIT_WIDTH;
    static const Index BYTE_BITS = _Params::LAU_BIT_WIDTH;
    /// \copydoc codasip::resources::cache::Attribute::BYTES_PER_WORD
    static const Index BYTES_PER_WORD = CACHE_DATA_BITS / BYTE_BITS;
    /// Target data bit width.
    static const Index TARGET_DATA_BITS = _Params::TARGET_WORD_BIT_WIDTH;

    /// Data type of connected target.
    typedef typename _Params::target_payload_t TData;
    /// Data type of the interface.
    typedef typename _Params::data_type Data;
    /// \copydoc codasip::resources::cache::Storage::LineIndex
    typedef codasip_address_t LineIndex;
    Cache(const std::string& name, const Uid uid);
    ~Cache();
    /**
     *  \brief  Reset cache (reset request logic)
     */
    void reset();
    /**
     *  \brief  Move one clock cycle further.
     */
    void clock_cycle();
    void set_ia();
    /**
     *  \brief       Debug read for debugger or profiler.
     *  \copydetails CInterface::dread
     */
    Data dread(const codasip_address_t addr, const Index sbi = 0,
        const Index sbc = BYTES_PER_WORD);
    /**
     *  \brief  Debug write for debugger or profiler.
     *  \copydetails CInterface::dwrite
     */
    void dwrite(const Data data, const codasip_address_t addr, const Index sbi = 0,
        const Index sbc = BYTES_PER_WORD);
    /**
     * \brief  Used by cache interfaces to detrmine if they may accept request.
     * \return Returns true if FSM of at least one cache interface is not in IDLE state.
     *         False otherwise.
     */
    bool IsBusy();
    /**
     * \brief          Notify other port, that request failed and send response.
     * \param addr     Address of failed request.
     * \param port     Identification of notifying port.
     * \param response Response of failed request.
     * \return         True if the other port handles request to same cacheline.
     */
    bool NotifyRequestFailed(const Index port, const codasip_address_t addr, const Response response);
    /**
     * \brief Sets internal variable m_TargetInterfaceUsed to true to prevent any communication
     *        with Target.
     */
    void SetInterfaceUsed(const bool strong = true);
    /**
     * \brief  Determines whether communication with Target is available or not.
     * \return m_TargetInterfaceUsed value.
     */
    bool TargetUsed(const bool strong = false);
    /**
     * \brief Informs whether or not ther is line eviction in progress.
     * \return True when lineevict is in progress.
     */
    bool EvictRunning();
    /**
     * \brief Pushes cache word into eviction line.
     * \param data Data to be pushed.
     */
    void PushEvictWord(Data data);
    /**
     * \brief Notify other port, that it should invalidate preloaded cacheline.
     * \param port Identification of notifying port.
     */
    void InvalidateNotify(const Index port);
    bool SkipCycle(const Index port);
    bool SameLine(const Index port, const codasip_address_t addr,
        const bool read = true);
    void ForwardData(const Index port, const Data data, const Index latency = 1);
    void ForwardResponse(const Index port, const codasip_address_t, const Response);
    LineIndex GetOffset(const Index port);
    bool IsRead(const Index port);
    void MissNotify(const Index port);
    /// setters
    void ResetEvictOffset();
    void SetEvictAddr(codasip_address_t);
    void SetEvictRequest(bool increment = false);
    template <class T>
    void blocking_cb(Payload<T>& p, Uid);
    template <class T>
    void request_cb(Payload<T>& p, Uid);
    template <class T>
    void finish_cb(Payload<T>& p, Uid);
    /**
     *  \copydoc codasip::resources::CInterface::read
     */
    Response TargetBlocking(const Command cmd, TData& data, const codasip_address_t addr,
        const Index sbi = 0, const Index sbc = TARGET_BYTES_PER_WORD);
    /**
     *  \copydoc codasip::resources::CInterface::request
     */
    Status TargetRequest(const Command type, const codasip_address_t addr, const Index sbi = 0,
        const Index sbc = TARGET_BYTES_PER_WORD);
    /**
     *  \copydoc codasip::resources::CInterface::ifinish
     */
    Response TargetIfinish(TData& data);
    /**
     *  \copydoc codasip::resources::CInterface::ofinish
     */
    Response TargetOfinish(const TData data);

    /// \copydoc ResourceInfo::GetUid
    Uid GetUid() const override;
    /// \copydoc ResourceInfo::GetName
    const std::string& GetName() const override;
    /// \copydoc ResourceInfo::GetBitWidth
    unsigned GetBitWidth() const override;
    /// \copydoc AddressableInfo::GetLAU
    unsigned GetLAU() const override;
    /// \copydoc AddressableInfo::GetAddrBitWidth
    unsigned GetAddrBitWidth() const override;
    /// \copydoc AddressableInfo::IsBig
    bool IsBig() const override;

#ifdef _DEBUG_CACHE
    std::vector<std::string> type_s;
#endif
private:
    /// \copydoc codasip::resources::cache::Attribute::CACHE_NUM_WAYS
    static const Index CACHE_NUM_WAYS = _Params::NUMWAYS;
    /// \copydoc codasip::resources::cache::Attribute::CACHE_LINE_SIZE
    static const codasip_address_t CACHE_LINE_SIZE = _Params::LINE_SIZE;
    /// \copydoc codasip::resources::cache::Attribute::SET_LINE_COUNT
    static const Index SET_LINE_COUNT = (_Params::SIZE / CACHE_LINE_SIZE) / CACHE_NUM_WAYS;
    /// \copydoc codasip::resources::cache::Attribute::PORT_COUNT
    static const Index PORT_COUNT =  _Params::PORT_COUNT;
    /// \copydoc codasip::resources::cache::Attribute::IS_MULTIPORT
    static const bool IS_MULTIPORT = PORT_COUNT > 1;
    /// Target LAUs per target word.
    static const Index TARGET_BYTES_PER_WORD = TARGET_DATA_BITS / BYTE_BITS;
    /// Number of cache words in one target word.
    static const Index CACHE_WORDS_PER_TARGET_WORD = TARGET_DATA_BITS/CACHE_DATA_BITS;
    /// Endianness around cache
    static const Endianness ENDIANNESS = static_cast<Endianness>(_Params::ENDIANNESS);

    /// replacement policy
    typedef typename _Params::replacement_policy_t ReplacementPolicy;
    /// Container type of cacheline.
    typedef typename std::vector< Data > CLine;
    void InterfaceReset();
    /**
     *  \brief  Compare port A and port B command priority.
     *  \return Compares request types and returns >0 if type0 > type1, <0 if type0 < type1 and 0 if
     *          type0 == type1.
     */
    int CompareRequestPriority(const Command type0, const Command type1);
    /**
     * \brief Sets internal variable m_TargetInterfaceUsed to false to enable communication with
     *        Target. Should be called at the begging of every clock cycle.
     */
    void ResetInterfaceUsed();
    /**
     * \brief  Determines whether or not PortA cache interface should be called first despite PortB
     *         request having higher priority.
     * \return True if portA request is read/write that causes cache hit or is noncacheable region
     *         request, false otherwise.
     */
    bool PortAFirst();
    /**
     * \brief  Determines whether or not PortB cache interface should be called first despite PortA
     *         request having same or higher priority.
     * \return True if PortA request is read/write causing cache miss and PortB request is
     *         read/write causing cache hit or when PortB request is noncacheable region access and
     *         PortA request is not. False otherwise.
     */
    bool PortBFirst();
    /// Target usage lock.
    bool m_TargetInterfaceUsed;
    bool m_StrongLock;
    /// Eviction buffer
    CLine m_EvictLine;
    /// Eviction tag
    codasip_address_t m_EvictAddr;
    /// Determines between request and ofinish during line eviction
    bool m_EvictRequest;
    /// Eviction offset
    LineIndex m_EvictOffset;
    /// Skip Eviction Cycle
    unsigned char m_SkipCycle;
    Payload<typename _Params::target_payload_t> m_Payload;
};
////////////////////////////////////////////////////////////////////////////////////////////////////
//                      Cache interface Start                                                    //
////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class _Params>
CACHE_INLINE Cache<_Params>::Cache(const std::string& name, const Uid uid) :
    Sentinel(name, uid),
    _Params(*this),
    CacheStorage<_Params>(),
    m_TargetInterfaceUsed(false),
    m_StrongLock(false),
    m_EvictAddr(0),
    m_EvictRequest(false),
    m_EvictOffset(0),
    m_SkipCycle(0)
{
    CacheStorage<_Params>::Reset();
#ifdef _DEBUG_CACHE
    type_s.push_back("CP_CMD_NONE");
    type_s.push_back("CP_CMD_READ");
    type_s.push_back("CP_CMD_WRITE");
    type_s.push_back("CP_CMD_UNKNOWN");
    type_s.push_back("CP_CMD_INVALIDATE");
    type_s.push_back("CP_CMD_INVALIDATE_ALL");
    type_s.push_back("CP_CMD_FLUSH");
    type_s.push_back("CP_CMD_FLUSH_ALL");
    type_s.push_back("CP_CMD_READ_BURST");
    type_s.push_back("CP_CMD_READ_BURST_4");
    type_s.push_back("CP_CMD_READ_BURST_8");
    type_s.push_back("CP_CMD_READ_BURST_16");
    type_s.push_back("CP_CMD_WRITE_BURST");
    type_s.push_back("CP_CMD_WRITE_BURST_4");
    type_s.push_back("CP_CMD_WRITE_BURST_8");
    type_s.push_back("CP_CMD_WRITE_BURST_16");
#endif
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class _Params>
CACHE_INLINE Cache<_Params>::~Cache()
{}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class _Params>
CACHE_INLINE void Cache<_Params>::reset()
{
    CacheStorage<_Params>::Reset();
    m_EvictRequest = false;
    m_EvictLine.clear();
    for (int i = 1; i <= PORT_COUNT; ++i)
    {
        _Params::GetSlaveInterface(i).Reset();
    }
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class _Params>
CACHE_INLINE void Cache<_Params>::clock_cycle()
{
    int prio = 0;
    TData word = 0, cWord = 0;
    Data cacheWord = 0;
    Status st = CP_ST_READY;
    bool clear = false;
#ifdef _DEBUG_CACHE
    std::cerr << "*====================================================*" << std::endl <<
        "|              NEW CYCLE "<< this->get_signature() << "                      |" << std::endl <<
        "*====================================================*" << std::endl;
#endif
    ResetInterfaceUsed();
    if (m_SkipCycle)
    {
        m_SkipCycle--;
        SetInterfaceUsed(false);
    }
    else if (!m_EvictLine.empty())
    {
#ifdef _DEBUG_CACHE
        std::cerr << "Eviction in progress" << std::endl;
#endif
        SetInterfaceUsed(false);
        if (m_EvictRequest)
        {
            switch (TargetRequest(CP_CMD_WRITE, m_EvictAddr + m_EvictOffset, 0,
                                TARGET_BYTES_PER_WORD))
            {
                case CP_ST_READY:
                    m_EvictRequest = false;
                    break;
                case CP_ST_BUSY:
                    break;
                case CP_ST_ERROR:
                default:
                    m_EvictOffset = 0;
                    break;
            }
        }
        else
        {
            if ((m_EvictOffset + TARGET_BYTES_PER_WORD) < CACHE_LINE_SIZE)
            {
                st = TargetRequest(CP_CMD_WRITE, m_EvictAddr + m_EvictOffset + TARGET_BYTES_PER_WORD,
                    0, TARGET_BYTES_PER_WORD);
            }
            if ((int)BYTES_PER_WORD >= (int)TARGET_BYTES_PER_WORD)
            {
                // Construct target word as cache word subblock.
                cacheWord = m_EvictLine.at(m_EvictOffset / BYTES_PER_WORD);
                word = Unaligned<Data, BYTE_BITS, BYTES_PER_WORD>::template read<ENDIANNESS>
                    (&cacheWord, 0, m_EvictOffset % BYTES_PER_WORD, TARGET_BYTES_PER_WORD);
            }
            else
            {
                for (int i = 0; i < CACHE_WORDS_PER_TARGET_WORD; i++)
                {
                    cWord = m_EvictLine.at(m_EvictOffset / BYTES_PER_WORD + i);
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
            }
            switch (TargetOfinish(word))
            {
                case CP_RS_WAIT:
                    break;
                case CP_RS_ACK:
                    m_EvictOffset += TARGET_BYTES_PER_WORD;
                    if (m_EvictOffset >= CACHE_LINE_SIZE)
                    {
                        clear = true;
                    }
                    else
                    {
                        switch (st)
                        {
                            case CP_ST_READY:
                                break;
                            case CP_ST_BUSY:
                                m_EvictRequest = true;
                                break;
                            case CP_ST_ERROR:
                            default:
                                m_EvictRequest = true;
                                m_EvictOffset = 0;
                                break;
                        }
                    }
                    break;
                default:
                    m_EvictRequest = true;
                    m_EvictOffset = 0;
                    break;
            }
        }
    }
    if (!IS_MULTIPORT)
    {
        _Params::GetSlaveInterface(0).ClockCycle();
    }
    else
    {
        prio = CompareRequestPriority(_Params::GetSlaveInterface(1).GetCommand(),
            _Params::GetSlaveInterface(2).GetCommand());
        if (((prio >= 0) && !PortBFirst()) || ((prio < 0) && PortAFirst()))
        {
#ifdef _DEBUG_CACHE
            std::cerr << "D$ PORT A" << std::endl;
#endif
            _Params::GetSlaveInterface(1).ClockCycle();
#ifdef _DEBUG_CACHE
            std::cerr << "D$ PORT B" << std::endl;
#endif
            _Params::GetSlaveInterface(2).ClockCycle();
        }
        else
        {
#ifdef _DEBUG_CACHE
            std::cerr << "D$ PORT B" << std::endl;
#endif
            _Params::GetSlaveInterface(2).ClockCycle();
#ifdef _DEBUG_CACHE
            std::cerr << "D$ PORT A" << std::endl;
#endif
            _Params::GetSlaveInterface(1).ClockCycle();
        }
    }
    if (clear)
    {
        m_EvictLine.clear();
    }
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class _Params>
CACHE_INLINE typename Cache<_Params>::Data Cache<_Params>::dread(const codasip_address_t addr,
    const Index sbi, const Index sbc)
{
    return _Params::GetSlaveInterface(1).dread(addr, sbi, sbc);
}

template <class _Params>
CACHE_INLINE void Cache<_Params>::dwrite(const Data data, const codasip_address_t addr,
    const Index sbi, const Index sbc)
{
    _Params::GetSlaveInterface(1).dwrite(data, addr, sbi, sbc);
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class _Params>
CACHE_INLINE bool Cache<_Params>::IsBusy()
{
    for (int i = 1; i <= PORT_COUNT; ++i)
    {
        if (_Params::GetSlaveInterface(i).IsBusy())
        {
            return true;
        }
    }
    return false;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class _Params>
CACHE_INLINE int Cache<_Params>::CompareRequestPriority(const Command type0,
    const Command type1)
{
    static int priorityTable[] = {
        2, // CP_CMD_NONE
        0, // CP_CMD_READ
        1, // CP_CMD_WRITE
        2, // reserved
        2, // CP_CMD_INVALIDATE
        2, // CP_CMD_INVALIDATE_ALL
        2, // CP_CMD_FLUSH
        2  // CP_CMD_FLUSH_ALL
    };
#ifdef _DEBUG_CACHE
    std::cerr << "Comparing priorities : Port A command("<< type_s.at(type0) <<
        ") vs Port B command(" << type_s.at(type1) << ")\n\tResults in priority(" <<
        priorityTable[type1] - priorityTable[type0] << ")" << std::endl;
#endif
    return priorityTable[type1] - priorityTable[type0];
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class _Params>
CACHE_INLINE void Cache<_Params>::ResetInterfaceUsed()
{
    m_TargetInterfaceUsed = false;
    m_StrongLock = false;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class _Params>
CACHE_INLINE void Cache<_Params>::SetInterfaceUsed(const bool strong)
{
    m_TargetInterfaceUsed = true;
    m_StrongLock = strong;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class _Params>
CACHE_INLINE bool Cache<_Params>::TargetUsed(const bool strong)
{
    return strong ? m_StrongLock : m_TargetInterfaceUsed;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class _Params>
CACHE_INLINE bool Cache<_Params>::PortAFirst()
{
    return  _Params::GetSlaveInterface(1).IsNCAccess();
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class _Params>
CACHE_INLINE bool Cache<_Params>::PortBFirst()
{
    return (!_Params::GetSlaveInterface(1).IsNCAccess() &&
        _Params::GetSlaveInterface(2).IsNCAccess());
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class _Params>
CACHE_INLINE bool Cache<_Params>::NotifyRequestFailed(const Index port,
    const codasip_address_t addr, const Response response)
{
    int otherPort = port ^ 3;
    return _Params::GetSlaveInterface(otherPort).NotifyRequestFailed(addr, response);
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class _Params>
CACHE_INLINE bool Cache<_Params>::EvictRunning()
{
    return !m_EvictLine.empty();
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class _Params>
CACHE_INLINE void Cache<_Params>::PushEvictWord(Data data)
{
    m_EvictLine.push_back(data);
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class _Params>
CACHE_INLINE void Cache<_Params>::SetEvictAddr(codasip_address_t addr)
{
    m_EvictAddr = addr;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class _Params>
CACHE_INLINE void Cache<_Params>::ResetEvictOffset()
{
    m_EvictOffset = 0;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class _Params>
CACHE_INLINE void Cache<_Params>::SetEvictRequest(bool increment)
{
    m_EvictRequest = true;
    if (increment)
    {
        m_SkipCycle++;
    }
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class _Params>
CACHE_INLINE void Cache<_Params>::InvalidateNotify(const Index port)
{
     int otherPort = port ^ 3;
     _Params::GetSlaveInterface(otherPort).InvalidateNotify();
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class _Params>
CACHE_INLINE bool Cache<_Params>::SkipCycle(const Index port)
{
     int otherPort = port ^ 3;
     return _Params::GetSlaveInterface(otherPort).SkipCycle();
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class _Params>
CACHE_INLINE bool Cache<_Params>::SameLine(const Index port, const codasip_address_t addr,
    const bool read)
{
    int otherPort = port ^ 3;
    return _Params::GetSlaveInterface(otherPort).SameLine(addr, read);
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class _Params>
CACHE_INLINE void Cache<_Params>::ForwardData(const Index port, const Data data,
    const Index latency)
{
    int otherPort = port ^ 3;
    _Params::GetSlaveInterface(otherPort).ForwardData(data, latency);
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class _Params>
CACHE_INLINE void Cache<_Params>::ForwardResponse(const Index port, const codasip_address_t addr,
    const Response resp)
{
    int otherPort = port ^ 3;
    _Params::GetSlaveInterface(otherPort).ForwardResponse(addr, resp);
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class _Params>
CACHE_INLINE typename Cache<_Params>::LineIndex Cache<_Params>::GetOffset(const Index port)
{
    int otherPort = port ^ 3;
    return _Params::GetSlaveInterface(otherPort).GetOffset();
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class _Params>
CACHE_INLINE bool Cache<_Params>::IsRead(const Index port)
{
    int otherPort = port ^ 3;
    return _Params::GetSlaveInterface(otherPort).IsRead();
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class _Params>
CACHE_INLINE void Cache<_Params>::MissNotify(const Index port)
{
    int otherPort = port ^ 3;
    return _Params::GetSlaveInterface(otherPort).MissNotify();
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template <class _Params>
template <class T>
inline void Cache<_Params>::blocking_cb(Payload<T>&, Uid)
{}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class _Params>
template <class T>
inline void Cache<_Params>::request_cb(Payload<T>&, Uid)
{}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class _Params>
template <class T>
inline void Cache<_Params>::finish_cb(Payload<T>&, Uid)
{}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE Response
Cache<_Params>::TargetBlocking(const Command cmd,  TData& data, const codasip_address_t addr,
    const Index sbi, const Index sbc)
{
    m_Payload.reset();
    m_Payload.set_address(addr);
    m_Payload.set_bi(sbi);
    m_Payload.set_bc(sbc);
    m_Payload.set_command(cmd);
    m_Payload.set_data(data);
    _Params::GetMasterInterface().blocking(m_Payload);
    data = m_Payload.get_data();
#ifdef _DEBUG_CACHE
    std::cerr << __FUNCTION__ << "addr = 0x" << std::hex << m_Payload.get_address() << " data = 0x" << data << std::endl;
#endif
    return m_Payload.get_response();
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE Status Cache<_Params>::TargetRequest(const Command type,
    const codasip_address_t addr, const Index sbi, const Index sbc)
{
#ifdef _DEBUG_CACHE
    std::cerr << "Storage::TargetRequest(" << type_s.at(type) << ", addr = h'" << std::hex <<
        addr << ", sbi = h'"  << std::hex << sbi  << ", sbc = h'"  << std::hex << sbc << " )" <<
        std::endl;
#endif
    m_Payload.reset();
    m_Payload.set_address(addr);
    m_Payload.set_bi(sbi);
    m_Payload.set_bc(sbc);
    m_Payload.set_command(type);
    _Params::GetMasterInterface().request(m_Payload);
    return m_Payload.get_status();
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE Response Cache<_Params>::TargetIfinish(TData& data)
{
#ifdef _DEBUG_CACHE
    std::cerr << "Storage::TargetIfinish(";
#endif
    _Params::GetMasterInterface().finish(m_Payload);
    data = m_Payload.get_data();
#ifdef _DEBUG_CACHE
    std::cerr << std::hex << data << ") = " << m_Payload.get_response() << std::endl;
#endif
    return m_Payload.get_response();
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE Response Cache<_Params>::TargetOfinish(const TData data)
{
#ifdef _DEBUG_CACHE
    std::cerr << "Cache::TargetOfinish(h'" << std::hex << data << ")" << std::endl;
#endif
    m_Payload.set_data(data);
    _Params::GetMasterInterface().finish(m_Payload);
    return m_Payload.get_response();
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void Cache<_Params>::set_ia()
{
    for (int i = 1; i <= PORT_COUNT; ++i)
    {
        _Params::GetSlaveInterface(i).SetIa();
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE Uid Cache<_Params>::GetUid() const
{
    return get_uid();
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE const std::string& Cache<_Params>::GetName() const
{
    return get_name();
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE unsigned Cache<_Params>::GetBitWidth() const
{
    return CACHE_DATA_BITS;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE unsigned Cache<_Params>::GetLAU() const
{
    return BYTE_BITS;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE unsigned Cache<_Params>::GetAddrBitWidth() const
{
    return _Params::ADDR_BIT_WIDTH;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE bool Cache<_Params>::IsBig() const
{
    return _Params::ENDIANNESS == 0;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
//                      Cache interface End                                                      //
////////////////////////////////////////////////////////////////////////////////////////////////////
}   // namespace codasip::resource
}   // namespace codasip
#endif // SIMULATORS2_RESOURCES_CSR_CACHE_H_
