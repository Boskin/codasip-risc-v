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
 *  \author Jiri Bartak
 *  \date   Nov 1, 2012
 *  \brief
 */
#ifndef SIMULATORS2_RESOURCES_CSR_CACHE_RPL_H_
#define SIMULATORS2_RESOURCES_CSR_CACHE_RPL_H_

#include "csr_helpers.h"

namespace codasip {
namespace resources {

//#define _DEBUG_CACHE_RPL
#define CACHE_INLINE inline

/**
 *  \class  codasip::resources::cache::BaseRPL
 *  \brief  This class is parent class for cache replacement policies.
 *          It holds only necessary constants
 *  \tparam _Params provides access to parent cache configuration.
 */
template<class _Params>
class BaseRPL
{
public:
    /// \copydoc codasip::resources::cache::Attribute::NUMWAYS
    static const Index CACHE_NUM_WAYS = _Params::NUMWAYS;
    /// \copydoc codasip::resources::cache::Attribute::NUMWAYS_BIT_WIDTH
    static const Index NUMWAYS_BIT_WIDTH = CACHE_NUM_WAYS == 1 ?
        0 : BitWidthSelector<CACHE_NUM_WAYS -1>::value;
    /// \copydoc codasip::resources::cache::Attribute::SET_LINE_COUNT
    static const Index SET_LINE_COUNT = (_Params::SIZE / _Params::LINE_SIZE) / CACHE_NUM_WAYS;

    // type used to store cache tags
    typedef codasip_address_t tag_t;
    // index of entry in cache
    typedef codasip_address_t line_Index;
    /**
     * \brief  Initialize BaseRPL
     */
    BaseRPL();
    /// Way of cache that should be now used for save data
    Index ReplaceWay;
}; // class BaseRPL

/**
 *  \class  codasip::resources::cache::GRR_RPL
 *  \brief  This class implements cache replacement policy Global Round Robin.
 *  \tparam _Params provides access to parent cache configuration.
 */
template<class _Params>
class GRR_RPL : public BaseRPL<_Params>
{
public:
    /**
     *  \brief  Default constructor, initialize the replacement policy.
     */
    GRR_RPL();
    /**
     *  \brief  Get next way for save new data
     *  \param  index     Index got from address
     *  \param  validBits Bits for recognition validity of current cache data
     *  \return Way index
     */
    Index GetReplaceWay(const typename BaseRPL<_Params>::line_Index index,
        const std::vector< std::vector<bool> >& validBits);
    /**
     *  \brief  Update replacement bits
     *  \param  set   Currnet replace way
     *  \param  isHis Indicates if this is update of replacement bits after hit or miss
     *  \param  index Index got from address
     */
    void UpdateReplacementBits(const Index set, const bool isHit,
        const typename BaseRPL<_Params>::line_Index index);
    /**
     *  \brief  Sets replacement bits to start values
     */
    void ResetReplacementBits();
    /**
     *  \brief  Initialize replacement bits
     */
    void InitReplacementBits();
private:
    /// Replacement bit for Global Round Robin
    Index m_replacementBits;
}; // class GRR_RPL

/**
 *  \class  codasip::resources::cache::LRU_RPL
 *  \brief  This class implements cache replacement policy Least Recently Used
 *  \tparam _Params provides access to parent cache configuration.
 */
template<class _Params>
class LRU_RPL : public BaseRPL<_Params>
{
public:
    /**
     *  \brief  Default constructor, initialize the replacement policy.
     */
    LRU_RPL();
    /**
     *  \brief  Get next way for save new data
     *  \param  index     Index got from address
     *  \param  validBits Bits for recognition validity of current cache data
     *  \return Way index
     */
    Index GetReplaceWay(const typename BaseRPL<_Params>::line_Index index,
        const std::vector< std::vector<bool> >& validBits) ;
    /**
     *  \brief  Update replacement bits
     *  \param  set   Currnet replace way
     *  \param  isHis Indicates if this is update of replacement bits after hit or miss
     *  \param  index Index got from address
     */
    void UpdateReplacementBits(const Index set, const bool isHit,
        const typename BaseRPL<_Params>::line_Index index);
    /**
     *  \brief  Sets replacement bits to start values
     */
    void ResetReplacementBits();
    /**
     *  \brief  Initialize replacement bits
     */
    void InitReplacementBits();

private:
    /// Replacement bits for Least Recently Used
    std::vector< std::vector< Index> > m_replacementBits;
}; // class LRU_RPL

/**
 *  \class  codasip::resources::cache::RR_RPL
 *  \brief  This class implements cache replacement policy Round Robin
 *  \tparam _Params provides access to parent cache configuration.
 */
template<class _Params>
class RR_RPL : public BaseRPL<_Params>
{
public:
    /**
     *  \brief  Default constructor, initialize the replacement policy.
     */
    RR_RPL();
    /**
     *  \brief  Get next way for save new data
     *  \param  index     Index got from address
     *  \param  validBits Bits for recognition validity of current cache data
     *  \return Way index
     */
    Index GetReplaceWay(const typename BaseRPL<_Params>::line_Index index,
        const std::vector< std::vector<bool> >& validBits);
    /**
     *  \brief  Update replacement bits
     *  \param  set   Currnet replace way
     *  \param  isHis Indicates if this is update of replacement bits after hit or miss
     *  \param  index Index got from address
     */
    void UpdateReplacementBits(const Index set, const bool isHit,
        const typename BaseRPL<_Params>::line_Index index);
    /**
     *  \brief  Sets replacement bits to start values
     */
    void ResetReplacementBits();
    /**
     *  \brief  Initialize replacement bits
     */
    void InitReplacementBits();

private:
    /// Replacement bits for Round Robin
    std::vector< Index> m_replacementBits;
}; // class RR_RPL

/**
 *  \class  codasip::resources::cache::PLRU_RPL
 *  \brief  This class implements cache replacement policy Pseudo Least Recently Used
 *  \tparam _Params provides access to parent cache configuration.
 */
template<class _Params>
class PLRU_RPL : public BaseRPL<_Params>
{
public:
    /**
     *  \brief  Default constructor, initialize the replacement policy.
     */
    PLRU_RPL();
    /**
     *  \brief  Get next way for save new data
     *  \param  index     Index got from address
     *  \param  validBits Bits for recognition validity of current cache data
     *  \return Way index
     */
    Index GetReplaceWay(const typename BaseRPL<_Params>::line_Index index,
        const std::vector< std::vector<bool> >& validBits);
    /**
     *  \brief  Update replacement bits
     *  \param  set   Currnet replace way
     *  \param  isHis Indicates if this is update of replacement bits after hit or miss
     *  \param  index Index got from address
     */
    void UpdateReplacementBits(const Index set, const bool isHit,
        const typename BaseRPL<_Params>::line_Index index);
    /**
     *  \brief  Sets replacement bits to start values
     */
    void ResetReplacementBits();
    /**
     *  \brief  Initialize replacement bits
     */
    void InitReplacementBits();

private:
    /// Replacement bits for Pseudo Least Recently Used
    std::vector< std::vector< Index> > m_replacementBits;
}; // class PLRU_RPL

/**
 *  \class  codasip::resources::cache::NRU_RPL
 *  \brief  This class implements cache replacement policy Not Recently Used
 *  \tparam _Params provides access to parent cache configuration.
 */
template<class _Params>
class NRU_RPL : public BaseRPL<_Params>
{
public:
    /**
     *  \brief  Default constructor, initialize the replacement policy.
     */
    NRU_RPL();
    /**
     *  \brief  Get next way for save new data
     *  \param  index     Index got from address
     *  \param  validBits Bits for recognition validity of current cache data
     *  \return Way index
     */
    Index GetReplaceWay(const typename BaseRPL<_Params>::line_Index index,
        const std::vector< std::vector<bool> >& validBits);
    /**
     *  \brief  Update replacement bits
     *  \param  set   Currnet replace way
     *  \param  isHis Indicates if this is update of replacement bits after hit or miss
     *  \param  index Index got from address
     */
    void UpdateReplacementBits(const Index set, const bool isHit,
        const typename BaseRPL<_Params>::line_Index index);
    /**
     *  \brief  Sets replacement bits to start values
     */
    void ResetReplacementBits();
    /**
     *  \brief  Initialize replacement bits
     */
    void InitReplacementBits();
private:
    /// Replacement bits for Not Recently Used
    std::vector< std::vector< Index> > m_replacementBits;
};
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
class RandomRPL : public RR_RPL<_Params>
{};
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE BaseRPL<_Params>::BaseRPL():
    ReplaceWay(0)
{}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE GRR_RPL<_Params>::GRR_RPL():
    BaseRPL<_Params>(),
    m_replacementBits(0)
{}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE Index GRR_RPL<_Params>::GetReplaceWay(const typename BaseRPL<_Params>::line_Index index,
    const std::vector< std::vector<bool> >& validBits)
{
    for (int i = 0; i < this->CACHE_NUM_WAYS; i++)
    {
        if (!validBits.at(i).at(index))
        {
#ifdef _DEBUG_CACHE_RPL
            std::cerr << "GRR_RPL::GetReplaceWay()    returns " << std::dec << i << std::endl;
#endif
            return m_replacementBits = i;
        }
    }
#ifdef _DEBUG_CACHE_RPL
    std::cerr << "GRR_RPL::GetReplaceWay()  returns " << std::dec << m_replacementBits << std::endl;
#endif
    return m_replacementBits;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void GRR_RPL<_Params>::UpdateReplacementBits(const Index set, const bool isHit,
    const typename BaseRPL<_Params>::line_Index)
{
#ifdef _DEBUG_CACHE_RPL
    std::cerr << "GRR_RPL::UpdateReplacementBits( set = " << std::dec << set << ", isHit = " <<
                 isHit << " )" << std::endl;
#endif
    if (isHit == false)
    {
        m_replacementBits = (set + 1) % this->CACHE_NUM_WAYS;
    }
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void GRR_RPL<_Params>::ResetReplacementBits()
{
    m_replacementBits = 0;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE LRU_RPL<_Params>::LRU_RPL()
{
    InitReplacementBits();
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void LRU_RPL<_Params>::InitReplacementBits()
{
    for (int i = 0; i < this->SET_LINE_COUNT; i++)
    {
        m_replacementBits.push_back( std::vector<Index>() );
        for (int j = 0; j < this->CACHE_NUM_WAYS; j++)
        {
            m_replacementBits.at(i).push_back(0);
        }
    }
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void LRU_RPL<_Params>::ResetReplacementBits()
{
    m_replacementBits.clear();
    InitReplacementBits();
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE Index LRU_RPL<_Params>::GetReplaceWay(const typename BaseRPL<_Params>::line_Index index,
    const std::vector< std::vector<bool> >& validBits)
{
    Index n = 0;
    for (Index i = 0; i < this->CACHE_NUM_WAYS; i++)
    {
        if (validBits.at(i).at(index) == false)
        {
#ifdef _DEBUG_CACHE_RPL
            std::cerr << "LRU_RPL::GetReplaceWay()    returns " << std::dec << i << std::endl;
#endif
            return i;
        }
    }
    for (Index i = 1; i < this->CACHE_NUM_WAYS; i++)
    {
        if (m_replacementBits.at(index).at(n) < m_replacementBits.at(index).at(i))
        {
            n = i;
        }
    }
#ifdef _DEBUG_CACHE_RPL
    std::cerr << "LRU_RPL::GetReplaceWay()    returns " << std::dec << n << std::endl;
#endif
    return n;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void LRU_RPL<_Params>::UpdateReplacementBits(const Index set, const bool,
    const typename BaseRPL<_Params>::line_Index index)
{
#ifdef _DEBUG_CACHE_RPL
    std::cerr << "LRU_RPL::UpdateReplacementBits( set = " << std::dec << set << ", index = h'" <<
        std::hex << index << " )" << std::endl;
#endif
    int not_used = m_replacementBits.at(index).at(set);
    for (int i = 0; i < this->CACHE_NUM_WAYS; i++)
    {
        if (set == i)
        {
            m_replacementBits.at(index).at(set) = 0;
        }
        else if (not_used >= m_replacementBits.at(index).at(i))
        {
            m_replacementBits.at(index).at(i) = (m_replacementBits.at(index).at(i) + 1) %
                                                this->CACHE_NUM_WAYS;
        }
    }
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE RR_RPL<_Params>::RR_RPL()
{
    InitReplacementBits();
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE Index RR_RPL<_Params>::GetReplaceWay(const typename BaseRPL<_Params>::line_Index index,
    const std::vector< std::vector<bool> >& validBits)
{
    for (Index i = 0; i < this->CACHE_NUM_WAYS; i++)
    {
        if (validBits.at(i).at(index) == false)
        {
#ifdef _DEBUG_CACHE_RPL
            std::cerr << "RR_RPL::GetReplaceWay() returns " << std::dec << i << std::endl;
#endif
            return i;
        }
    }
#ifdef _DEBUG_CACHE_RPL
    std::cerr << "RR_RPL::GetReplaceWay() returns " << std::dec << m_replacementBits.at(index) <<
                 std::endl;
#endif
    return m_replacementBits.at(index);
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void RR_RPL<_Params>::UpdateReplacementBits(const Index set, const bool isHit,
    const typename BaseRPL<_Params>::line_Index index)
{
#ifdef _DEBUG_CACHE_RPL
    std::cerr << "RR_RPL::UpdateReplacementBits( set = " << std::dec << set << ", isHit = " <<
                 isHit << ", index = h'" << std::hex << index << " )" << std::endl;
#endif
    if (isHit == false)
    {
        m_replacementBits.at(index) = (set + 1) % this->CACHE_NUM_WAYS;
    }
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void RR_RPL<_Params>::ResetReplacementBits()
{
    m_replacementBits.clear();
    InitReplacementBits();
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void RR_RPL<_Params>::InitReplacementBits()
{
    for (int i = 0; i < this->SET_LINE_COUNT; i++)
    {
        m_replacementBits.push_back(0);
    }
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE PLRU_RPL<_Params>::PLRU_RPL()
{
    InitReplacementBits();
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void PLRU_RPL<_Params>::InitReplacementBits()
{
    for (int i = 0; i < this->SET_LINE_COUNT; i++)
    {
        m_replacementBits.push_back( std::vector< Index>() );
        for (int j = 0; j < (this->CACHE_NUM_WAYS - 1); j++)
        {
            m_replacementBits.at(i).push_back(0);
        }
    }
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE Index PLRU_RPL<_Params>::GetReplaceWay(const typename BaseRPL<_Params>::line_Index index,
    const std::vector< std::vector<bool> >& validBits )
{
    int i, n, w;
    for (i = 0; i < this->CACHE_NUM_WAYS; i++)
    {
        if (validBits.at(i).at(index) == false)
        {
#ifdef _DEBUG_CACHE_RPL
            std::cerr << "PLRU_RPL::GetReplaceWay()    returns " << std::dec << i << std::endl;
#endif
            return i;
        }
    }
    i = 1;
    n = 0;
    w = 0;
    while (i <= log2(this->CACHE_NUM_WAYS * 1.0))
    {
        if (m_replacementBits.at(index).at(n) == 1)
        {
            n = n*2 + 2;
            w = w + (this->CACHE_NUM_WAYS / pow(2,i));
        }
        else
        {
            n = n*2 + 1;
        }
        i++;
    }
#ifdef _DEBUG_CACHE_RPL
    std::cerr << "PLRU_RPL::GetReplaceWay()    returns " << std::dec << w << std::endl;
#endif
    return w;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void PLRU_RPL<_Params>::UpdateReplacementBits(const Index set, const bool,
    const typename BaseRPL<_Params>::line_Index index)
{
#ifdef _DEBUG_CACHE_RPL
    std::cerr << "PLRU_RPL::UpdateReplacementBits( set = " << std::dec << set << ", index = h'" <<
        std::hex << index << " )" << std::endl;
#endif
    int i = 1;
    int n;
    while (i <= log2(this->CACHE_NUM_WAYS * 1.0))
    {
        n = (set / pow(2,i)) + ((this->CACHE_NUM_WAYS / (pow(2,i))) - 1);
        int tmp = pow(2,i);
        if ((set % tmp) < (pow(2,(i-1))))
        {
            m_replacementBits.at(index).at(n) = 1;
        }
        else
        {
            m_replacementBits.at(index).at(n) = 0;
        }
        i++;
    }
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void PLRU_RPL<_Params>::ResetReplacementBits()
{
    m_replacementBits.clear();
    InitReplacementBits();
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE NRU_RPL<_Params>::NRU_RPL()
{
    InitReplacementBits();
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE Index NRU_RPL<_Params>::GetReplaceWay(const typename BaseRPL<_Params>::line_Index index,
    const std::vector< std::vector<bool> >& validBits)
{
    int i;
    for (i = 0; i < this->CACHE_NUM_WAYS; i++)
    {
        if (validBits.at(i).at(index) == false)
        {
#ifdef _DEBUG_CACHE_RPL
            std::cerr << "NRU_RPL::GetReplaceWay()    returns " << std::dec << i << std::endl;
#endif
            return i;
        }
    }
    for (i = 0; i < this->CACHE_NUM_WAYS; i++)
    {
        if (m_replacementBits.at(index).at(i) == 0)
        {
#ifdef _DEBUG_CACHE_RPL
            std::cerr << "NRU_RPL::GetReplaceWay()    returns " << std::dec << i << std::endl;
#endif
            return i;
        }
    }
#ifdef _DEBUG_CACHE_RPL
    std::cerr << "NRU_RPL::GetReplaceWay()    returns " << std::dec << i << std::endl;
#endif
    return i;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void NRU_RPL<_Params>::UpdateReplacementBits(const Index set, const bool,
    const typename BaseRPL<_Params>::line_Index index)
{
#ifdef _DEBUG_CACHE_RPL
    std::cerr << "NRU_RPL::UpdateReplacementBits( set = " << std::dec << set << ", index = h'" <<
        std::hex << index << " )" << std::endl;
#endif
    bool full = true;
    for (int i = 0; i < this->CACHE_NUM_WAYS; i++)
    {
        if (set != i)
        {
            if (m_replacementBits.at(index).at(i) == 0)
            {
                full = false;
                break;
            }
        }
    }
    m_replacementBits.at(index).at(set) = 1;
    if (full == true)
    {
        for (int i = 0; i < this->CACHE_NUM_WAYS; i++)
        {
            if (set != i)
            {
                m_replacementBits.at(index).at(i) = 0;
            }
        }
    }
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void NRU_RPL<_Params>::ResetReplacementBits()
{
    m_replacementBits.clear();
    InitReplacementBits();
}
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class _Params>
CACHE_INLINE void NRU_RPL<_Params>::InitReplacementBits()
{
    for (int i = 0; i < this->SET_LINE_COUNT; i++)
    {
        m_replacementBits.push_back(std::vector<Index>());
        for (int j = 0; j < this->CACHE_NUM_WAYS; j++)
        {
            m_replacementBits.at(i).push_back(0);
        }
    }
}
}// namespace codasip::resources
}// namespace codasip
#endif
