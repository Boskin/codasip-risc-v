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
 *  \author Zdenek Prikryl
 *  \date   Apr 8, 2014
 *  \brief  Declaration/Implementation of the class.
 */

#ifndef SIMULATORS2_RESOURCES_HASMAP_H_
#define SIMULATORS2_RESOURCES_HASMAP_H_

#include "csr_helpers.h"

#include <type_traits>

namespace codasip {
namespace resources {

/**
 * \class codasip::resources::CItem
 * \brief Encapsulation of item placed in the CHashMap*
 * \tparam _Type Type of the item
 * \internal
 */
template <class _Type>
class HasMapItem
{

private:
    /// attribute holding value
    _Type m_Item;

public:
    /**
     * \brief Default constructor, it assignes zero
     */
    HasMapItem() : m_Item(0)
    {}
    /**
     * \brief Reset.
     */
    RES_INLINE void Reset() {
        m_Item = 0;
    }
    /**
     * \brief Rerun reference to the item
     * \param Ignored parameter
     * \return Reference
     */
    RES_INLINE _Type & operator [] (const codasip_address_t) {
        return m_Item;
    }
    /**
     * \brief Return const reference to the item
     * \param  Ignored parameter
     * \return Constant reference
     */
    RES_INLINE const _Type & operator [] (const codasip_address_t) const {
        return m_Item;
    }
};

/**
 * \class codasip::resources::CHashMapIterator
 * \brief Base abstract class of all iterators over CHashMap. This is const iterator
 */
template <class _Type>
class HashMapConstIterator
{
public:
    /// virtual dtor
    virtual ~HashMapConstIterator() {}
    /**
     * \brief Returns current hash map value and moves iterator to next element
     * \return True if some value and address is returned, otherwise false
     */
    virtual bool Next(codasip_address_t & addr, _Type & count) = 0;
    /**
     * \brief Set iterator back to beginning
     */
    virtual void Begin() = 0;
};

/**
 * \class codasip::resources::CHashMapNLevels<_AddrBits, _Type>
 * \brief Unsorted map holding values. There is no limitation on size but
 *        real memory and size of codasip_address_t
 * \tparam _AddrBits Number of bits needed for addressing
 * \tparam _Type Type of the item
 */
template <Index _AddrBits,
    class _Type>
class HashMapNLevels
{

private:
    // 16 bits are used as parts
    /// Part size (need to be aligned to power of 2)
    static const Index HM_PART_SIZE = 0x10000;
    /// Part bits
    static const Index HM_PART_BITS = BitWidthSelector<HM_PART_SIZE -1>::value;
    /// Part mask
    static const Index HM_PART_MASK = HM_PART_SIZE - 1;
    /// Address shift
    static const Index HM_ADDR_SHIFT = ((_AddrBits - 1) / HM_PART_BITS) * HM_PART_BITS;

public:
    // cannot make private, cannot specify friend in iterator, it will SIGSEV GCC

    /// type in the current level of the map
    typedef
        typename std::conditional<_AddrBits >= HM_PART_BITS + 1,
            HashMapNLevels<_AddrBits - HM_PART_BITS, _Type>,
            HasMapItem<_Type> >::type item_t;
    /// array of items
    item_t * m_Items;

    /**
     * \brief Default constructor, it does not allocate anything
     */
    HashMapNLevels() : m_Items(0)
    {}
    /**
     * \brief Descructor, deallocate what has been allocated
     */
    ~HashMapNLevels() {
        delete [] m_Items;
        m_Items = 0;
    }
    /**
     * \brief Reset.
     */
    RES_INLINE void Reset() {
        if(m_Items)
        {
            for(Index i = 0; i < HM_PART_SIZE; i++)
                m_Items[i].Reset();
        }
    }

    /**
     * \brief Return reference to the final item stored in the hash map
     * \param addr Address of the item
     * \return Reference
     */
    RES_INLINE _Type & operator[] (const codasip_address_t addr) {
        // it is not allocated yet, allocate it now
        if (m_Items == 0)
            m_Items = new item_t [HM_PART_SIZE];
        // compute index to the local array and pass address
        codasip_address_t laddr = (addr >> HM_ADDR_SHIFT) & HM_PART_MASK;
        return (m_Items[laddr][addr]);
    }
    /**
     * \brief Return reference to the final item stored in the hash map
     * \param addr Address of the item
     * \return Constant Reference
     */
    RES_INLINE const _Type & operator[] (const codasip_address_t addr) const {
        static const _Type zero = 0;
        // read for the first time, return 0
        if (m_Items == 0)
            return zero;

        // compute index to the local array and pass address
        codasip_address_t laddr = (addr >> HM_ADDR_SHIFT) & HM_PART_MASK;
        return (m_Items[laddr][addr]);
    }

    /**
     * Constant iterator for iterating over N-level hash map
     */
    class HashMapNLevelConstIterator : public HashMapConstIterator<_Type>
    {

    public:
        /**
         * \brief Tail of recursive traversal through hash map to find first stored value
         * \param item	Item holding value to be returned
         * \param level	Current level in hash map
         * \param addr	Address of current item
         * \param retAddr	Output address when next value is found
         * \param retCount	Output value when next value is found
         * \return	true if item has non-zero value and retAddr and retCount was changed
         * 			false otherwise
         */
        bool Traverse(const HasMapItem<_Type> & item,
            Index level, codasip_address_t addr,
            codasip_address_t& retAddr, _Type & retCount)
        {
            // if the item has data, return them
            if(item[0]) {
                retAddr = addr;
                retCount = item[0];
            	// value was found
            	// skip to next item in hash map, so after Next call
            	// this item would be skipped
            	++m_Index[level-1];

                return true;
            }
            return false;
        }
        /**
         * \brief Recursively traverse through hash map to find first stored value
         * \param map	Map to traverse through
         * \param level	Current level in hash map
         * \param addr	Bit address prefix of current hash map
         * \param retAddr	Output address when next value is found
         * \param retCount	Output value when next value is found
         * \return	true if some value is found and retAddr and retCount was changed
         * 			false otherwise
         */
    	template <Index _TraverseAddrBits>
        bool Traverse(const HashMapNLevels<_TraverseAddrBits, _Type>& map,
            Index level, codasip_address_t addr,
            codasip_address_t& retAddr,
            _Type & retCount)
    	{
            // empty hash map object
            if(map.m_Items == 0)
                return false;
            // get previously traversed index on this level
            codasip_address_t & it = m_Index[level];
            for(; it < HM_PART_SIZE; ++it)
            {
                // find through all next levels, if some value is found
                if(Traverse(map.m_Items[it],
                    level + 1, addr << HM_PART_BITS | it,
                    retAddr, retCount))
                {
                    // if we get past size of current level, get back to first element
                	// not on zero level (m_MapRef object), because we will afterward
                	// iterate again over entire hash map
                    if (level > 0 && it >= HM_PART_SIZE)
                        it = 0;

                    return true;
                }
            }
            it = 0;
            return false;
        }

    public:
        HashMapNLevelConstIterator(const HashMapNLevels& map)
          : m_MapRef(map){
            Begin();
        }
        virtual ~HashMapNLevelConstIterator() {}
        /**
         * \copydoc CHashMapIterator::Next
         */
        virtual bool Next(codasip_address_t & addr, _Type & count) {
            return Traverse(m_MapRef, Index(0), codasip_address_t(0), addr, count);
        }
        /**
         * \copydoc CHashMapIterator::Begin
         */
        virtual void Begin() {
            memset(&m_Index, 0, sizeof(m_Index));
        }
    private:
        /// Reference to the hash map
        const HashMapNLevels& m_MapRef;
        /// Indexes of current item for each level
        /// m_MapRef[m_Index[0]][m_Index[1]][m_Index[2]] ... points to next element after previously returned
        codasip_address_t m_Index[(_AddrBits/HM_PART_BITS) + 1];
    };

    /// Typedef of iterator
    typedef HashMapNLevelConstIterator iterator;

    /**
     * Get const iterator
     */
    iterator Iterator() const {
        return iterator(*this);
    }
};

/**
 * \class codasip::resources::CHashMap1Level<_AddrBits, _Type>
 * \brief Specialization for small memories. It uses direct access without subtables
 * \copydetails codasip::resources::CHashMapNLevels<_AddrBits, _Type>
 */
template <Index _AddrBits,
    class _Type>
class HashMap1Level
{
private:
    /// Items in the map
    _Type * m_Items;

    /// maximum size of map
    static const codasip_address_t HM_SIZE = codasip_address_t(1) << _AddrBits;

public:
    /**
     * \brief Default constructor, it allocate simple array
     */
    HashMap1Level() {
        m_Items = new _Type [HM_SIZE];
        // assume C types
        if (sizeof(_Type) <= 8)
            memset(m_Items, 0, sizeof(_Type) * HM_SIZE);
    }
    /**
     * \copydoc CHashMapNLevels<_AddrBits, _Type>::~CHashMapNLevels
     */
    ~HashMap1Level() {
        delete [] m_Items;
    }
    /**
     * \brief Reset.
     */
    RES_INLINE void Reset() {
        for(Index i = 0; i < HM_SIZE; i++)
            m_Items[i] = 0;
    }
    /**
     * \copydoc CHashMapNLevels<_AddrBits, _Type>::operator[]
     */
    RES_INLINE _Type & operator[] (const codasip_address_t addr) {
        return m_Items[addr];
    }
    /**
     * \copydoc CHashMapNLevels<_AddrBits, _Type>::operator[] const
     */
    RES_INLINE const _Type & operator[] (const codasip_address_t addr) const {
        return m_Items[addr];
    }

    /**
     * Constant iterator for iterating over single-level hash map
     */
    class HashMap1LevelIterator : public HashMapConstIterator<_Type>
    {

    public:
        /**
         * \brief Defautl constructor
         * \param map Reference to the map
         */
        HashMap1LevelIterator(const HashMap1Level & map)
          : m_MapRef(map),
            m_It(0)
        {}
        virtual ~HashMap1LevelIterator() {}
        /**
         * \copydoc CHashMapIterator::Next
         */
        virtual bool Next(codasip_address_t & addr, _Type & count) {
            // just one level, check each item
            for(; m_It < HM_SIZE; ++m_It) {
                // data are not zero
                if(m_MapRef.m_Items[m_It] != 0) {
                    // 1:1 mapping
                    addr = m_It;
                    count = m_MapRef.m_Items[m_It];
                    // move to the next item
                    ++m_It;
                    return true;
                }
            }
            return false;
        }
        /**
         * \copydoc CHashMapIterator::Begin
         */
        virtual void Begin() {
            m_It = 0;
        }
    private:
        /// Reference to the hash map
        const HashMap1Level& m_MapRef;
        /// Iterator
        codasip_address_t m_It;
    };

    /// Typedef of iterator
    typedef HashMap1LevelIterator iterator;

    /**
     * Get const iterator
     */
    iterator Iterator() const {
        return iterator(*this);
    }
};


/**
 * \class codasip::resources::CHashMap2Levels<32, _Type>
 * \brief Specialization for small memories. It uses only two hops to get the value
 * \copydetails codasip::resources::CHashMapNLevels<_AddrBits, _Type>
 */
template <Index _AddrBits,
    class _Type>
class HashMap2Levels
{
private:

    // optimized for 32 bit integer
    /// Part size
    static const Index HM_PART_SIZE = 0x10000;
    /// Part bits
    static const Index HM_PART_BITS = 16;
    /// Part mask
    static const Index HM_PART_MASK = 0xffff;

    /// Two dimensional array
    _Type ** m_Items;

public:

    HashMap2Levels() {
        m_Items = new _Type * [HM_PART_SIZE];
        // set pointers to zero
        memset(m_Items, 0, sizeof(_Type *) * HM_PART_SIZE);
    }

    ~HashMap2Levels() {
        // deallocate subtables
        for (Index ii = 0; ii < HM_PART_SIZE; ii++)
            delete [] m_Items[ii];
        // deallocate main table
        delete [] m_Items;
    }

    RES_INLINE void Reset() {
        for(Index part = 0; part < HM_PART_SIZE; part++)
        {
            if(m_Items[part])
            {
                for(Index item = 0; item < HM_PART_SIZE; item++)
                    m_Items[part][item] = 0;
            }
        }
    }

    RES_INLINE _Type & operator[] (const codasip_address_t addr) {
        codasip_address_t laddr = (addr >> HM_PART_BITS) & HM_PART_MASK;
        if (m_Items[laddr] == 0) {
            m_Items[laddr] = new _Type [HM_PART_SIZE];
            // assume C types
            if (sizeof(_Type) <= 8)
                memset(m_Items[laddr], 0, sizeof(_Type) * HM_PART_SIZE);
        }
        return m_Items[laddr][addr & HM_PART_MASK];
    }

    RES_INLINE const _Type & operator[] (const codasip_address_t addr) const {
        static _Type zero = 0;
        codasip_address_t laddr = (addr >> HM_PART_BITS) & HM_PART_MASK;
        if (m_Items[laddr] == 0)
            return zero;
        return m_Items[laddr][addr & HM_PART_MASK];
    }

    /**
     * Constant iterator for iterating over 2-level hash map
     */
    class HashMap2LevelIterator : public HashMapConstIterator<_Type>
    {
    public:
        /**
         * \brief Default constructor
         * \param map Reference to hash map
         */
        HashMap2LevelIterator(const HashMap2Levels& map)
          : m_MapRef(map),
            m_It1Level(0),
            m_It2Level(0)
        {}
        virtual ~HashMap2LevelIterator() {}
        /**
         * \copydoc CHashMapIterator::Next
         */
        virtual bool Next(codasip_address_t & addr, _Type & count) {
            for(; m_It1Level < HM_PART_SIZE; ++m_It1Level) {
                // something is in next level
                if(m_MapRef.m_Items[m_It1Level] != 0) {
                    // iterate over level
                    for(; m_It2Level < HM_PART_SIZE; ++m_It2Level) {
                        // data are not null, handle them
                        if(m_MapRef.m_Items[m_It1Level][m_It2Level] != 0) {
                            // reconstruct address
                            addr = m_It1Level << HM_PART_BITS | m_It2Level;
                            // fill data
                            count = m_MapRef.m_Items[m_It1Level][m_It2Level];
                            // we get to end in 2nd level, reset secodn
                            // counter and increate the first one
                            if(++m_It2Level >= HM_PART_SIZE) {
                                m_It2Level = 0;
                                ++m_It1Level;
                            }
                            // we have data to process
                            return true;
                        }
                    }
                }
                // end of current level 1, move to the next one
                m_It2Level = 0;
            }
            // no data to process
            return false;
        }
        /**
         * \copydoc CHashMapIterator::Begin
         */
        virtual void Begin() {
            m_It1Level = m_It2Level = 0;
        }
    private:
        /// Reference to the hash map
        const HashMap2Levels& m_MapRef;
        /// Iterator over the first level
        codasip_address_t m_It1Level;
        /// Iterator over the second level
        codasip_address_t m_It2Level;
    };

    /// Typedef of iterator
    typedef HashMap2LevelIterator iterator;

    /**
     * Get const iterator
     */
    iterator Iterator() const {
        return iterator(*this);
    }
};

/**
 * \struct codasip::resources::CHashMapSelector<_AddrBits, _Type>
 * \brief Select the best type of hash map for a given address bit width
 * \copydetails codasip::resources::CHashMapNLevels<_AddrBits, _Type>
 */
template <Index _AddrBits,
    class _Type>
struct HashMapSelector
{
    /// selected type
    typedef
            typename std::conditional<_AddrBits <= 20,
                HashMap1Level<_AddrBits, _Type>,
            typename std::conditional<_AddrBits <= 32,
                HashMap2Levels<_AddrBits, _Type>,
                HashMapNLevels<_AddrBits, _Type> >::type>::type type;
};


}   // namespace codasip::resources
}   // namespace codasip

#endif // SIMULATORS2_RESOURCES_HASMAP_H_
