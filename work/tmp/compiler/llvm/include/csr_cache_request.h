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


#ifndef SIMULATORS2_RESOURCES_CSR_CACHE_REQUEST_H_
#define SIMULATORS2_RESOURCES_CSR_CACHE_REQUEST_H_

#include "csr_helpers.h"
#include "csr_unaligned_native.h"
#include "csr_unaligned_generic.h"
#include "codasiputils.h"

namespace codasip {
namespace resources {

#define CACHE_INLINE inline
/**
 *  \class  codasip::resources::cache::CacheRequest
 *  \brief  Request related data for use during CA simulation.
 *  \tparam _Params Generated parameters of the cache.
 */
template <class _Params>
class CacheRequest
{
public:
    /// \copydoc codasip::resources::cache::Attribute::CACHE_DATA_BITS
    static const Index CACHE_DATA_BITS = _Params::WORD_BIT_WIDTH;
    /// \copydoc codasip::resources::cache::Attribute::CACHE_LINE_SIZE
    static const codasip_address_t CACHE_LINE_SIZE = _Params::LINE_SIZE;
    /// \copydoc codasip::resources::cache::Attribute::BYTE_BITS
    static const Index BYTE_BITS = _Params::LAU_BIT_WIDTH;
    /// \copydoc codasip::resources::cache::Attribute::WORDS_PER_WORD
    static const Index BYTES_PER_WORD = CACHE_DATA_BITS / BYTE_BITS;
    /// \copydoc codasip::resources::cache::Attribute::WORDS_PER_LINE
    static const Index WORDS_PER_LINE = CACHE_LINE_SIZE / BYTES_PER_WORD;
    /// \copydoc codasip::resources::cache::Attribute::ENDIANNESS
    static const Endianness ENDIANNESS = static_cast<Endianness>(_Params::ENDIANNESS);

    /// Data type of cache interface.
    typedef typename _Params::data_type Data;
    /// Data type of cache target.
    typedef typename _Params::target_payload_t TData;
    /// Container type of cacheline.
    typedef typename std::vector< Data > CLine;
    /// Line index of entry in cache.
    typedef codasip_address_t LineIndex;
    CacheRequest();
    /**
     *  \brief Clears loaded cacheline.
     */
    ~CacheRequest();
    /**
     * \brief Resets all members to zero.
     */
    void Reset();
    // Reset methods
    void ResetCounter();
    void ResetCacheData();
    void ResetDataReady();
    void ResetNCWMask();

    // Set methods
    void SetAddr(const codasip_address_t);
    void SetNCAddr(const codasip_address_t);
    void SetSbi(const Index);
    void SetNCSbi(const Index);
    void SetSbc(const Index);
    void SetNCSbc(const Index);
    void SetCmd(const Command);
    void SetResp(const Response);
    void SetTag(const LineIndex);
    void SetOffset(const LineIndex);
    void SetIndex(const LineIndex);
    void SetLatency(const Index);
    void SetCoreData(const Data);
    void SetWriteDataReady(const Data);
    void SetCacheLineWord(const Data);
    void SetDataReady();
    void SetWriteDataReady();
    void SetNCWMask(const Index);
    // For NC Write, uses NCW mask
    void SetNCSbiSbc();
    void SetFinished();

    // Get methods
    Index GetAddrModTBPW();
    codasip_address_t GetAddr();
    codasip_address_t GetNCAddr();
    Index GetSbi();
    Index GetNextWordSbi();
    Index GetNCSbi();
    Index GetSbc();
    Index GetNCSbc();
    Command GetCommand();
    Response GetResponse();
    Index GetCounter();
    Index GetTargetBytesCount();
    Index GetLatency();
    Data GetCacheLineWord();
    Data GetCoreData();
    Data GetCoreWriteData();
    CLine GetCacheLine();
    LineIndex GetTag();
    LineIndex GetIndex();
    LineIndex GetOffset();
    bool NotFinished();
    void CacheToCore();
    Index GetCumulativeSbi();

    // Increment methods
    void IncCounter();
    void IncIndex();


    // Decrement methods
    void DecCounter();
    void DecLatency();

    /**
     *  \brief  Clears LSBs of private member m_NCAddr.
     *  \param  wordBits Number of LSBs to clear.
     */
    void AlignNCAddr(const Index wordBits);
    /**
     *  \brief  Moves private member m_NCAddr to next target word.
     */
    void NCAddrIncWord();
    /**
     *  \brief  Moves private member m_NCAddr to previous target word.
     */
    void NCAddrDecWord();
    /**
     *  \brief  Concatenates data to private member m_CacheData, adding MSBs.
     *  \param  data Data to concatenate.
     */
    void ConcatenateCacheData(const TData data);
    /**
     *  \brief  Pushes word to cacheline container m_CacheLine.
     *  \param  word Word to push.
     */
    void PushWord(const Data word);
    /**
     *  \brief  Pushes m_CacheData to cacheline container m_CacheLine.
     */
    void PushCacheData();
    /**
     *  \brief  Informs whether or not all cachelines have been processed.
     *  \return True if m_Counter == SET_LINE_COUNT, false otherwise.
     */
    bool LastLine();
    /**
     *  \brief  Used when cache word size is bigger than target word size.
     *          Informs whether or not enough target words have been loaded.
     *  \return True if m_Counter == TARGET_WORDS_PER_CACHE_WORD, false otherwise.
     */
    bool LoadedCacheWord();
    /**
     *  \brief  Clears LSBs of address to align it to cacheline size.
     *  \param  addrToCache Address to be aligned.
     *  \return Address aligned to cacheline size.
     */
    codasip_address_t GetCachelineAddr(const codasip_address_t addrToCache);
    /**
     *  \brief  Changes Nth bit of address to X.
     *  \param  addr Address to be modified.
     *  \param  n Bit to modify.
     *  \param  value New value of selected bit.
     */
    void ChangeNthBitToXinAddr(codasip_address_t& addr, const int n, const int value);
    /**
     * \brief  Used to check whether or not are data ready to be read by master.
     * \return m_DataReady value.
     */
    bool DataReady();
    /**
     * \brief  Used to check whether or not are data ready to be written.
     * \return m_WriteDataReady value.
     */
    bool WriteDataReady();
private:
    enum
    {
        /// Target data bit width.
        TARGET_DATA_BITS = _Params::TARGET_WORD_BIT_WIDTH,
        /// Target LAUs per target word.
        TARGET_BYTES_PER_WORD = TARGET_DATA_BITS / BYTE_BITS,
        /// \copydoc codasip::resources::cache::Attribute::SET_LINE_COUNT
        SET_LINE_COUNT = (_Params::SIZE / CACHE_LINE_SIZE) / _Params::NUMWAYS,
        /// How many target words fit into one cache word.
        TARGET_WORDS_PER_CACHE_WORD = CACHE_DATA_BITS/TARGET_DATA_BITS
    };
    /// Request address.
    codasip_address_t m_Addr;
    /// Noncachable address - address aligned to either target word size or cache line size.
    codasip_address_t m_NCAddr;
    /// Offset into target word.
    Index m_AddrModTBPW;
    /// Request SBI.
    Index m_Sbi;
    /// Recalculated SBI used for some target requests.
    Index m_NCSbi;
    /// Request SBC.
    Index m_Sbc;
    /// Recalculated SBC used for some target requests.
    Index m_NCSbc;
    /// Request type.
    Command m_Command;
    /// Precalculated response allowing merge of some FSM states.
    Response m_Response;
    /// Generic counter.
    Index m_Counter;
    /// Cache write/read latency counter.
    Index m_Latency;
    /// LSB position of cacheline index.
    Index m_LineShift;
    /// Cache word size data, used in ifinsh method and as temporary cache word storage.
    Data m_CacheData;
    /// Cache word size data, used in ofinsh method.
    Data m_CoreData;
    /// Cacheline container.
    CLine m_CacheLine;
    /// Tag parsed from request addr.
    LineIndex m_Tag;
    /// Offset parsed from request addr.
    LineIndex m_Offset;
    /// Index parsed from request addr.
    LineIndex m_Index;
    /// Data ready to be read.
    bool m_DataReady;
    /// Data ready to be written.
    bool m_WriteDataReady;
    /// Mask for non-cacheable region write, used when ASIP data are wider than RAM data
    bool m_NCWriteMask[BYTES_PER_WORD];
    /// Request finished (still might need to finish loading cache line)
    bool m_Finished;
    /// Cumulative sbi for NC region write in case of cahe word being wider than target word
    Index m_CumulativeSbi;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE CacheRequest<_Params>::CacheRequest()
  : m_Addr(0),
    m_NCAddr(0),
    m_AddrModTBPW(0),
    m_Sbi(0),
    m_NCSbi(0),
    m_Sbc(0),
    m_NCSbc(0),
    m_Command(CP_CMD_NONE),
    m_Response(CP_RS_IDLE),
    m_Counter(0),
    m_Latency(0),
    m_LineShift(ILog2((Index)CACHE_LINE_SIZE)),
    m_CacheData(0),
    m_CoreData(0),
    m_Tag(0),
    m_Offset(0),
    m_Index(0),
    m_DataReady(false),
    m_WriteDataReady(false),
    m_Finished(false),
    m_CumulativeSbi(0)
{
    m_CacheLine.clear();
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE CacheRequest<_Params>::~CacheRequest()
{}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void CacheRequest<_Params>::Reset()
{
    m_Addr = 0;
    m_NCAddr = 0;
    m_AddrModTBPW = 0;
    m_Sbi = 0;
    m_NCSbi = 0;
    m_Sbc = 0;
    m_NCSbc = WORDS_PER_LINE;
    m_Response = CP_RS_IDLE;
    m_CoreData = 0;
    m_Tag = 0;
    m_Offset = 0;
    m_Index = 0;
    m_Latency = 0;
    m_CumulativeSbi = 0;
    m_Finished = false;
    m_DataReady = false;
    m_WriteDataReady = false;
    m_Command = CP_CMD_NONE;
    ResetCounter();
    ResetCacheData();
    m_CacheLine.clear();
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void CacheRequest<_Params>::ResetNCWMask()
{
    for (Index i = 0; i < BYTES_PER_WORD; i++)
    {
        m_NCWriteMask[i] = false;
    }
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void CacheRequest<_Params>::ResetCounter()
{
    m_Counter = 0;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void CacheRequest<_Params>::ResetCacheData()
{
    m_CacheData = 0;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void CacheRequest<_Params>::ResetDataReady()
{
    m_DataReady = false;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void CacheRequest<_Params>::NCAddrIncWord()
{
    m_NCAddr += TARGET_BYTES_PER_WORD;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void CacheRequest<_Params>::NCAddrDecWord()
{
    m_NCAddr -= TARGET_BYTES_PER_WORD;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void CacheRequest<_Params>::AlignNCAddr(const Index wordBits)
{
    for (Index i = 0; i < wordBits; i++)
    {
        ChangeNthBitToXinAddr(m_NCAddr, i, 0);
    }
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void CacheRequest<_Params>::SetNCWMask(const Index pos)
{
    m_NCWriteMask[pos] = true;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void CacheRequest<_Params>::SetAddr(const codasip_address_t addr)
{
    m_Addr = addr;
    m_AddrModTBPW = (Index)(addr % TARGET_BYTES_PER_WORD);
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void CacheRequest<_Params>::SetNCAddr(const codasip_address_t addr)
{
    m_NCAddr = addr;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void CacheRequest<_Params>::SetSbi(const Index sbi)
{
    m_Sbi = sbi;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void CacheRequest<_Params>::SetNCSbi(const Index sbi)
{
    m_NCSbi = sbi;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void CacheRequest<_Params>::SetSbc(const Index sbc)
{
    m_Sbc = sbc;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void CacheRequest<_Params>::SetNCSbc(const Index sbc)
{
    m_NCSbc = sbc;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void CacheRequest<_Params>::SetNCSbiSbc()
{
    m_CumulativeSbi += m_NCSbc;
    m_NCSbi = 0;
    m_NCSbc = 0;
    bool stop = false;
    for (Index i = GetTargetBytesCount(); i < GetTargetBytesCount() + TARGET_BYTES_PER_WORD;
        i++)
    {
        if (m_NCWriteMask[i])
        {
            m_NCSbc++;
            stop = true;
        }
        else if (stop)
        {
            break;
        }
        else
        {
            m_NCSbi++;
        }
    }
    m_NCSbi %= TARGET_BYTES_PER_WORD;
    m_CumulativeSbi += m_NCSbi;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void CacheRequest<_Params>::SetCmd(const Command command)
{
    m_Command = command;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void CacheRequest<_Params>::SetResp(const Response response)
{
    m_Response = response;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void CacheRequest<_Params>::SetFinished()
{
    m_Finished = true;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void CacheRequest<_Params>::ConcatenateCacheData(const TData data)
{
    Data tmp = data;
    if (ENDIANNESS == CP_LITTLE_ENDIAN)
    {
        m_CacheData += (tmp << (((m_Counter - 1) * TARGET_DATA_BITS) % CACHE_DATA_BITS));
    }
    else
    {
        m_CacheData = static_cast<Data>(m_CacheData << TARGET_DATA_BITS);
        m_CacheData |= tmp;
    }
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void CacheRequest<_Params>::SetCoreData(const Data data)
{
    m_CoreData = data;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void CacheRequest<_Params>::IncCounter()
{
    m_Counter++;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void CacheRequest<_Params>::DecCounter()
{
    m_Counter--;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void CacheRequest<_Params>::PushWord(const Data data)
{
    m_CacheLine.push_back(data);
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void CacheRequest<_Params>::PushCacheData()
{
    m_CacheLine.push_back(m_CacheData);
    ResetCacheData();
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void CacheRequest<_Params>::SetTag(const LineIndex tag)
{
    m_Tag = tag;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void CacheRequest<_Params>::SetOffset(const LineIndex offset)
{
    m_Offset = offset;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void CacheRequest<_Params>::SetIndex(const LineIndex index)
{
    m_Index = index;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void CacheRequest<_Params>::SetDataReady()
{
    m_DataReady = true;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void CacheRequest<_Params>::SetWriteDataReady()
{
    m_WriteDataReady = true;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void CacheRequest<_Params>::IncIndex()
{
    m_Index++;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void CacheRequest<_Params>::DecLatency()
{
    m_Latency--;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void CacheRequest<_Params>::SetLatency(const Index latency)
{
    m_Latency = latency;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE codasip_address_t CacheRequest<_Params>::GetAddr()
{
    return m_Addr;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE Index CacheRequest<_Params>::GetAddrModTBPW()
{
    return m_AddrModTBPW;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE codasip_address_t CacheRequest<_Params>::GetNCAddr()
{
    return m_NCAddr;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE Index CacheRequest<_Params>::GetSbi()
{
    return m_Sbi;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE Index CacheRequest<_Params>::GetNextWordSbi()
{
    return m_Counter * m_NCSbc;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE bool CacheRequest<_Params>::NotFinished()
{
    return !m_Finished;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE Index CacheRequest<_Params>::GetNCSbi()
{
    return m_NCSbi;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE Index CacheRequest<_Params>::GetSbc()
{
    return m_Sbc;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE Index CacheRequest<_Params>::GetNCSbc()
{
    return m_NCSbc;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE Command CacheRequest<_Params>::GetCommand()
{
    return m_Command;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE Response CacheRequest<_Params>::GetResponse()
{
    return m_Response;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE Index CacheRequest<_Params>::GetCounter()
{
    return m_Counter;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE Index CacheRequest<_Params>::GetTargetBytesCount()
{
    return m_Counter * TARGET_BYTES_PER_WORD;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE bool CacheRequest<_Params>::LastLine()
{
    return m_Counter == SET_LINE_COUNT;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE bool CacheRequest<_Params>::LoadedCacheWord()
{
    Index value = TARGET_WORDS_PER_CACHE_WORD ? m_Counter % TARGET_WORDS_PER_CACHE_WORD : 0;
    return value == 0;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE Index CacheRequest<_Params>::GetLatency()
{
    return m_Latency;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void CacheRequest<_Params>::CacheToCore()
{
    m_CoreData = m_CacheData;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE Index CacheRequest<_Params>::GetCumulativeSbi()
{
    return m_CumulativeSbi;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE typename CacheRequest<_Params>::Data CacheRequest<_Params>::GetCoreData()
{
    return Unaligned<Data, BYTE_BITS, BYTES_PER_WORD>::template read<ENDIANNESS>(&m_CoreData,
        0, m_Sbi,m_Sbc);
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE typename CacheRequest<_Params>::Data CacheRequest<_Params>::GetCoreWriteData()
{
    return m_CoreData;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE typename CacheRequest<_Params>::CLine CacheRequest<_Params>::GetCacheLine()
{
    return m_CacheLine;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE typename CacheRequest<_Params>::Data CacheRequest<_Params>::GetCacheLineWord()
{
    return m_CacheLine.at(m_Offset);
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void CacheRequest<_Params>::SetCacheLineWord(const Data data)
{
    m_CacheLine.at(m_Offset) = data;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE typename CacheRequest<_Params>::LineIndex CacheRequest<_Params>::GetTag()
{
    return m_Tag;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE typename CacheRequest<_Params>::LineIndex CacheRequest<_Params>::GetIndex()
{
    return m_Index;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE typename CacheRequest<_Params>::LineIndex CacheRequest<_Params>::GetOffset()
{
    return m_Offset;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE codasip_address_t CacheRequest<_Params>::GetCachelineAddr
    (const codasip_address_t addrToCache)
{
    codasip_address_t newAddr = addrToCache;
    if(BYTES_PER_WORD < CACHE_LINE_SIZE)
    {
        for (int i = 0; i < m_LineShift; i++)
        {
            ChangeNthBitToXinAddr(newAddr, i, 0);
        }
    }
    return newAddr;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void CacheRequest<_Params>::ChangeNthBitToXinAddr(codasip_address_t& addr,
    const int n, const int value)
{
    addr ^= (-value ^ addr) & (1 << n);
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE bool CacheRequest<_Params>::DataReady()
{
    return m_DataReady;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE bool CacheRequest<_Params>::WriteDataReady()
{
    return m_WriteDataReady;
}
}   // namespace codasip::resource
}   // namespace codasip
#endif
