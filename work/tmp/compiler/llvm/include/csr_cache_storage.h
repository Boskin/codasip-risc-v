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

#ifndef SIMULATORS2_RESOURCES_CSR_CACHE_STORAGE_H_
#define SIMULATORS2_RESOURCES_CSR_CACHE_STORAGE_H_

#include "csr_helpers.h"


namespace codasip {
namespace resources {

//#define _DEBUG_CACHE_STORAGE
#define CACHE_INLINE inline
/**
 *  \class  codasip::resources::cache::CacheStorage
 *  \tparam _Params Cache parameters.
 */
template<class _Params>
class CacheStorage : public _Params::replacement_policy_t
{
public:
    /// \copydoc codasip::resources::cache::Attribute::CACHE_DATA_BITS
    static const Index CACHE_DATA_BITS = _Params::WORD_BIT_WIDTH;
    /// \copydoc codasip::resources::cache::Attribute::BYTE_BITS
    static const Index BYTE_BITS = _Params::LAU_BIT_WIDTH;
    /// \copydoc codasip::resources::cache::Attribute::BYTES_PER_WORD
    static const Index BYTES_PER_WORD = CACHE_DATA_BITS / BYTE_BITS;
    /// \copydoc codasip::resources::cache::Attribute::CACHE_LINE_SIZE
    static const codasip_address_t CACHE_LINE_SIZE = _Params::LINE_SIZE;
    /// \copydoc codasip::resources::cache::Attribute::CACHE_NUM_WAYS
    static const Index CACHE_NUM_WAYS = _Params::NUMWAYS;
    /// \copydoc codasip::resources::cache::Attribute::SET_LINE_COUNT
    static const Index SET_LINE_COUNT = (_Params::SIZE / CACHE_LINE_SIZE) / CACHE_NUM_WAYS;
    /// \copydoc codasip::resources::cache::Attribute::WORDS_PER_LINE
    static const Index WORDS_PER_LINE = CACHE_LINE_SIZE / (CACHE_DATA_BITS / BYTE_BITS);
    /// \copydoc codasip::resources::cache::Attribute::ENDIANNESS
    static const Endianness ENDIANNESS = static_cast<Endianness>(_Params::ENDIANNESS);

    /// Data type of the interface.
    typedef typename _Params::data_type Data;
    /// Container type of cacheline.
    typedef typename std::vector< Data > CLine;
    /// Line index of entry in cache.
    typedef codasip_address_t LineIndex;
    typedef codasip_address_t Tag;

    /**
     *  \brief  Initialize data CacheStorage.
     */
    CacheStorage();
    /**
     *  \brief  Free allocated data CacheStorage.
     */
    ~CacheStorage();
    /**
     *  \copydoc codasip::resources::CCache::reset
     */
    void Reset();
    /**
     *  \brief Determines if data in specific set and on specific index are valid
     *  \param set    Cache way/set
     *  \param line   Index calculated from address
     *  \param return Returns true if is falid, false if is invalid
     */
    bool IsValid(const Index set, const LineIndex line) const;
    /**
     *  \brief Determines if data in specific set and on specific index are dirty
     *  \param set    Cache way/set
     *  \param line   Index calculated from address
     *  \param return Returns true if is dirty, false if is clear
     */
    bool IsDirty(const Index set, const LineIndex line) const;
    /**
     *  \brief Marks data in specific set and on specific index as valid
     *  \param set    Cache way/set
     *  \param line   Index calculated from address
     */
    void SetValid(const Index set, const LineIndex line);
    /**
     *  \brief Marks data in specific set and on specific index as invalid
     *  \param set    Cache way/set
     *  \param line   Index calculated from address
     */
    void SetInvalid(const Index set, const LineIndex line);
    /**
     *  \brief Marks data in specific set and on specific index as dirty
     *  \param set    Cache way/set
     *  \param line   Index calculated from address
     */
    void SetDirty  (const Index set, const LineIndex line);
    /**
     *  \brief Marks data in specific set and on specific index as clear
     *  \param set    Cache way/set
     *  \param line   Index calculated from address
     */
    void SetClear  (const Index set, const LineIndex line);
    /**
     *  \brief Save tag for specific set and on specific index
     *  \param set    Cache way/set
     *  \param line   Index calculated from address
     *  \param tag    Tag calculated from address
     */
    void SetTag(const Index set, const LineIndex line, const Tag tag);
    /**
     *  \brief Returns tag for specific set and on specific index
     *  \param set    Cache way/set
     *  \param line   Index calculated from address
     *  \return       Tag
     */
    Tag GetTag(const Index set, const LineIndex line) const;
    /**
     *  \brief       Determines if on specific index are valid data for specific tag
     *  \param  tag  Tag calculated from address
     *  \param  line Index calculated from address
     *  \param  set  Way/set in which are HITted data
     *  \return      Returns true if is HIT, false is is MISS
     */
    bool IsHit(const Tag tag, const LineIndex line, Index& set);
    /**
     *  \brief          Gets data saved in cache
     *  \param  set     Way/set in which are data
     *  \param  index   Index calculated from address
     *  \param  offset  Offset Index calculated from address
     *  \param  si      Subblock index
     *  \param  sc      Subblock counter
     *  \return         Cache data
     */
    Data GetData(const Index set, const LineIndex index, const LineIndex offset, const Index si,
        const Index sc);
    /**
     *  \brief  Gets data saved in cache
     *  \param  set     Way/set in which are data
     *  \param  index   Index calculated from address
     *  \param  offset  Offset Index calculated from address
     *  \return         Cache data
     */
    Data GetData(const Index set, const LineIndex index, const LineIndex offset);
    /**
     *  \brief  Writes data to cache
     *  \param  data    Data to write
     *  \param  set     Way/set in which are data
     *  \param  index   Index calculated from address
     *  \param  offset  Offset Index calculated from address
     *  \param  si      Subblock index
     *  \param  sc      Subblock counter
     *  \return         Cache data
     */
    void SetData(typename CacheStorage<_Params>::Data data, const Index set, const LineIndex index,
        const LineIndex offset, const Index si, const Index sc);
    /**
     *  \brief  Saves cache line into cache
     *  \param  set           Way/set into which are data saved
     *  \param  index         Index calculated from address
     *  \param  cacheLineData Cache line data
     */
    void SaveCacheLine(const Index set, const codasip_address_t addr,
        const CLine cacheLineData);
    /**
     *  \brief  Returns current replace way/set
     *  \param  index Index calculated from address
     *  \return       current replace way/set
     */
    Index GetReplaceWay(const LineIndex index);
private:
    /**
     *  \brief  Initialize valid bits, dirty bits and tags
     */
    void Init();
    /**
     *  \brief Marks data in specific set and on specific index as valid or invalid
     *  \param set    Cache way/set
     *  \param line   Index calculated from address
     *  \param value  True if data should be marked as valid, else others
     */
    void SetValidBit(const Index set, const LineIndex line, const bool value);
    /**
     *  \brief Marks data in specific set and on specific index as dirty or clear
     *  \param set    Cache way/set
     *  \param line   Index calculated from address
     *  \param value  True if data should be marked as dirty, else clear
     */
    void SetDirtyBit(const Index set, const LineIndex line, const bool value);
    /**
     *  \brief  Calculate index from address
     *  \param  addr Address
     *  \return Index calculated from address addr
     */
    LineIndex GetIndexFromAddr(const codasip_address_t addr);
    /// container with actual data
    std::vector<std::vector<std::vector<Data> > > m_Data;
    /// container with valid bits
    std::vector<std::vector<bool> > m_ValidBits; // true == valid
    /// container with dirty bits
    std::vector<std::vector<bool> > m_DirtyBits; // true == dirty
    /// container with tags
    std::vector<std::vector<Tag> > m_Tags;
};//class CacheStorage

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE CacheStorage<_Params>::CacheStorage()
  : m_Data(CACHE_NUM_WAYS, std::vector<std::vector<Data> >(SET_LINE_COUNT, std::vector<Data>
        (WORDS_PER_LINE, 0))),
    m_ValidBits(CACHE_NUM_WAYS, std::vector<bool> (SET_LINE_COUNT, false)),
    m_DirtyBits(CACHE_NUM_WAYS, std::vector<bool> (SET_LINE_COUNT, false)),
    m_Tags(CACHE_NUM_WAYS, std::vector<Tag>(SET_LINE_COUNT, 0))

{}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE CacheStorage<_Params>::~CacheStorage()
{}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void CacheStorage<_Params>::Init()
{
    m_ValidBits.clear();
    m_DirtyBits.clear();
    m_Tags.clear();
    for(int i = 0; i < CACHE_NUM_WAYS; i++)
    {
        m_ValidBits.push_back(std::vector<bool>());
        m_DirtyBits.push_back(std::vector<bool>());
        m_Tags.push_back(std::vector<Tag>());
        for(int j = 0; j < SET_LINE_COUNT; j++)
        {
            m_ValidBits.at(i).push_back(false);
            m_DirtyBits.at(i).push_back(false);
            m_Tags.at(i).push_back(0);
        }
    }
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void CacheStorage<_Params>::SetValidBit(const Index set, const LineIndex line,
    const bool value)
{
#ifdef _DEBUG_CACHE_STORAGE
    std::cerr << __FUNCTION__ << " : set(" << set << ") line(" << line << ") value(" << value <<
        ")" << std::endl;
#endif
    this->m_ValidBits.at(set).at(line) = value;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void CacheStorage<_Params>::SetDirtyBit(const Index set, const LineIndex line,
    const bool value)
{
    this->m_DirtyBits.at(set).at(line) = value;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE bool CacheStorage<_Params>::IsValid(const Index set, const LineIndex line) const
{
    return this->m_ValidBits.at(set).at(line);
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE bool CacheStorage<_Params>::IsDirty(const Index set, const LineIndex line) const
{
    return this->m_DirtyBits.at(set).at(line);
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void CacheStorage<_Params>::SetValid  (const Index set, const LineIndex line)
{
    this->SetValidBit(set, line, true);
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void CacheStorage<_Params>::SetInvalid(const Index set, const LineIndex line)
{
    this->SetValidBit(set, line, false);
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void CacheStorage<_Params>::SetDirty(const Index set, const LineIndex line)
{
    this->SetDirtyBit(set, line, true);
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void CacheStorage<_Params>::SetClear(const Index set, const LineIndex line)
{
    this->SetDirtyBit(set, line, false);
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void CacheStorage<_Params>::SetTag(const Index set, const LineIndex line,
    const Tag tag)
{
    this->m_Tags.at(set).at(line) = tag;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE typename CacheStorage<_Params>::Tag CacheStorage<_Params>::GetTag(const Index set,
    const LineIndex line) const
{
    return this->m_Tags.at(set).at(line);
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE bool CacheStorage<_Params>::IsHit(const Tag tag, const LineIndex line, Index& set)
{
    for (set = 0; set < CACHE_NUM_WAYS; set++)
    {
        // tag comparison in every set! if match, cache hit only if valid_bit set to 1, else miss!
        if (tag == this->GetTag(set, line))
        {
            if (this->IsValid(set, line))
            {
                break;
            }
        }
    }
    if (set < CACHE_NUM_WAYS)
    {
        return true;
    }
    return false;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE typename CacheStorage<_Params>::Data
CacheStorage<_Params>::GetData(const Index set, const LineIndex index, const LineIndex offset,
    const Index si, const Index sc)
{
    Data data = GetData(set, index, offset);
    return Unaligned<Data, BYTE_BITS, BYTES_PER_WORD>::template read<ENDIANNESS> (&data,
        0, si, sc);
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE typename CacheStorage<_Params>::Data
CacheStorage<_Params>::GetData(const Index set, const LineIndex index, const LineIndex offset)
{
    return this->m_Data.at(set).at(index).at(offset);
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void CacheStorage<_Params>::SetData(typename CacheStorage<_Params>::Data data,
    const Index set, const LineIndex index, const LineIndex offset, const Index si,
    const Index sc)
{
#ifdef _DEBUG_CACHE_STORAGE
    std::cerr << "CacheStorage::" << __FUNCTION__ << "(data(" << data << ") set(" << set << ") index(" <<
        index << ") offset(" << offset << ") si(" << si << ") sc(" << sc << "))" << std::endl;
#endif
    Data d = this->GetData(set, index, offset);
    Unaligned<Data, BYTE_BITS, BYTES_PER_WORD>::template write<ENDIANNESS>(&d, data, 0, si, sc);
    this->m_Data[set][index][offset] = d;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void CacheStorage<_Params>::SaveCacheLine(const Index set, const codasip_address_t addr,
    CLine cacheLineData)
{
#ifdef _DEBUG_CACHE_STORAGE
    std::cerr << "CacheStorage::SaveCacheLine( set = " << std::dec << set << ", addr = h'" << std::hex <<
        addr << ", cacheLineData = h'";
    for (int i = 0; i < cacheLineData.size(); i++)
    {
        if (i != 0)
        {
            std::cerr << "_";
        }
        std::cerr << std::hex << cacheLineData.at(i);
    }
    std::cerr << " ) m_Data.size() = " << std::dec << m_Data.size() << std::endl;
#endif
    const codasip_address_t index = GetIndexFromAddr(addr);
    for (unsigned int i = 0; i < cacheLineData.size(); i++)
    {
#ifdef _DEBUG_CACHE_STORAGE
        std::cerr << "i = " << std::dec << i << std::endl;
#endif
        m_Data.at(set).at(index).at(i) = cacheLineData.at(i);
    }
#ifdef _DEBUG_CACHE_STORAGE
        std::cerr << "CacheStorage::SaveCacheLine()  saved" << std::endl;
#endif
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE Index CacheStorage<_Params>::GetReplaceWay(const LineIndex index)
{
    return _Params::replacement_policy_t::GetReplaceWay(index, this->m_ValidBits);
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void CacheStorage<_Params>::Reset()
{
#ifdef _DEBUG_CACHE_STORAGE
    std::cerr << "CacheStorage::Reset()" << std::endl;
#endif
    Init();
    this->ResetReplacementBits();
    this->ReplaceWay = 0;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE typename CacheStorage<_Params>::LineIndex CacheStorage<_Params>::GetIndexFromAddr
    (const codasip_address_t addr)
{
    return ((addr / CACHE_LINE_SIZE) % SET_LINE_COUNT);
}

}// namespace codasip::resources
}// namespace codasip

#endif
