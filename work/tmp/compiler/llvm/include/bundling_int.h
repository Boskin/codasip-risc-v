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
 *  \author Martin Ministr
 *  \date   20. 4. 2015
 *  \brief  Declaration of the class.
 */

#ifndef BUNDLING_BIT_INFO_H_
#define BUNDLING_BIT_INFO_H_

#include <iostream>
#include <string>
#include <vector>

#include "codasip_exceptions.h"
#include "codasip_integer.h"


//#define DEBUG_CLASS

#ifdef DEBUG_CLASS
#define DEBUG_OUT(msg) std::cout << (msg) << std::endl
#else
#define DEBUG_OUT(msg)
#endif


#undef __CODASIP_MAX
#define __CODASIP_MAX(__codasip_a, __codasip_b) \
    (((__codasip_a) < (__codasip_b)) ? (__codasip_b) : (__codasip_a))


// forward declarations
template<int BITS>
class bundling_int;

namespace std {

/**
 *  \addtogroup CODASIP_INT
 *  \{
 *  \class  std::numeric_limits
 *  \brief  Specialize std::numeric_limits for IntegerNumber.
 *  \}
 */
template <int _CODASIP_BITS>
struct numeric_limits< bundling_int<_CODASIP_BITS> >
  : public ::codasip::integer::detail::numeric_limits_base< bundling_int<_CODASIP_BITS> >
{};

}   // namespace std


namespace codasip {
namespace assembler {


/**
 *  \brief Carries information about one bit of bundling_int
 */
class BundlingBitInfo
{
public:
    typedef std::vector<BundlingBitInfo> Content;

    static const char ONE_BIT = '1';
    static const char ZERO_BIT = '0';
    static const int UNDEFINED_SLOT = -1;
    static const int UNDEFINED_INDEX = -1;

    BundlingBitInfo(char value, int index) :
        m_Value(value),
        m_Index(index),
        m_Slot(UNDEFINED_SLOT),
        m_OriginIndex(UNDEFINED_INDEX),
        m_OriginFixupIndex(UNDEFINED_INDEX),
        m_OriginFixupBitIndex(UNDEFINED_INDEX)
    {}

    BundlingBitInfo(char value, int index, int slot, int originIndex, int originFixupIndex,
        int originFixupBitIndex) :
        m_Value(value),
        m_Index(index),
        m_Slot(slot),
        m_OriginIndex(originIndex),
        m_OriginFixupIndex(originFixupIndex),
        m_OriginFixupBitIndex(originFixupBitIndex)
    {}

    BundlingBitInfo(const BundlingBitInfo& copy) :
        m_Value(copy.GetValue()),
        m_Index(copy.GetIndex()),
        m_Slot(copy.GetSlot()),
        m_OriginIndex(copy.GetOriginIndex()),
        m_OriginFixupIndex(copy.GetOriginFixupIndex()),
        m_OriginFixupBitIndex(copy.GetOriginFixupBitIndex())
    {}

    void ClearOriginInfo()
    {
        m_Slot = UNDEFINED_SLOT;
        m_OriginIndex = UNDEFINED_INDEX;
        m_OriginFixupIndex = UNDEFINED_INDEX;
        m_OriginFixupBitIndex = UNDEFINED_INDEX;
    }

    const char& GetValue() const
    {
        return m_Value;
    }

    int GetIndex() const
    {
        return m_Index;
    }

    int GetSlot() const
    {
        return m_Slot;
    }

    int GetOriginIndex() const
    {
        return m_OriginIndex;
    }

    int GetOriginFixupIndex() const
    {
        return m_OriginFixupIndex;
    }

    int GetOriginFixupBitIndex() const
    {
        return m_OriginFixupBitIndex;
    }

    void SetIndex(const int index)
    {
        m_Index = index;
    }

    void SetOriginFixupInfo(const int originFixupIndex, const int originFixupBitIndex)
    {
        if (m_OriginFixupIndex != UNDEFINED_INDEX || m_OriginFixupBitIndex != UNDEFINED_INDEX)
        {
            std::cerr << "Fixup bit information is already set." << std::endl;
        }

        m_OriginFixupIndex = originFixupIndex;
        m_OriginFixupBitIndex = originFixupBitIndex;
    }

    void SetOriginInfo(const BundlingBitInfo& value)
    {
        m_Slot = value.GetSlot();
        m_OriginIndex = value.GetOriginIndex();
        m_OriginFixupIndex = value.GetOriginFixupIndex();
        m_OriginFixupBitIndex = value.GetOriginFixupBitIndex();
    }

    void operator&=(const BundlingBitInfo& value)
    {
        if ((GetValue() == ONE_BIT || GetValue() == ZERO_BIT) == false
            || (value.GetValue() == ONE_BIT || value.GetValue() == ZERO_BIT) == false)
        {
            std::cerr << "Cannot negate bit with value: " << GetValue() << " with value: "
                << value.GetValue() << std::endl;
        }
        else if (value.GetValue() == ZERO_BIT)
        {
            m_Value = ZERO_BIT;
            ClearOriginInfo();
        }
    }

    /**
     *  \brief Negates value of this bit, X = ~X
     */
    void Negate()
    {
        if (m_Value == ONE_BIT)
        {
            m_Value = ZERO_BIT;
        }
        else if (m_Value == ZERO_BIT)
        {
            m_Value = ONE_BIT;
        }
        else
        {
            std::cerr << "Cannot negate bit with value: " << m_Value << std::endl;
        }
    }

    void operator|=(const BundlingBitInfo& value)
    {
        if ((GetValue() == ONE_BIT || GetValue() == ZERO_BIT) == false
            || (value.GetValue() == ONE_BIT || value.GetValue() == ZERO_BIT) == false)
        {
            std::cerr << "Cannot negate bit with value: " << GetValue() << " with value: "
                << value.GetValue() << std::endl;
        }
        else if (value.GetValue() == ONE_BIT)
        {
            m_Value = ONE_BIT;
            ClearOriginInfo();
        }

        // copy information about origin bit if it exists
        if (value.GetSlot() != UNDEFINED_SLOT)
        {
            SetOriginInfo(value);
        }
    }

    void Print() const
    {
        std::cout << GetIndex() << ". " << GetValue();
        if (GetSlot() != UNDEFINED_SLOT)
        {
            std::cout << " is representing slots: " << GetSlot() << " index: [" << GetOriginIndex()
                << "]";
            if (GetOriginFixupIndex() != UNDEFINED_INDEX
                && GetOriginFixupBitIndex() != UNDEFINED_INDEX)
            {
                std::cout << " fixup no: " << GetOriginFixupIndex()
                    << " bit: " << GetOriginFixupBitIndex();
            }
        }
        std::cout << std::endl;
    }

    static void PrintContent(const Content& bits)
    {
        for (size_t i = 0; i < bits.size(); i++)
        {
            bits[i].Print();
        }
    }

private:
    /// value of the bit, could be '0', '1' or 'X' (undefined)
    char m_Value;
    /// index of the bit in the bit field of bundling_int
    int m_Index;
    /// slot which is represented by this bit, -X means no slot
    int m_Slot;
    /// index of the bit in the origin bit field of bundling_int which stored original instruction
    int m_OriginIndex;
    /// index of the fixup in the array of 'slot' instruction
    int m_OriginFixupIndex;
    /// index of the stored bit of the fixup
    int m_OriginFixupBitIndex;
};


////////////////////////////////////////////////////////////////////////////////////////////////////
/**
 *  \brief Class which is used for tracking origin of bits
 *         after bundling operation we get result which has information about which bit is taken
 *         from which slot and index
 */
template<int BITS>
class bundling_int
{
private:
    /// bits which are stored in this bit field
    BundlingBitInfo::Content m_Bits;
    /// slot which is represented by this bundling_int
    int m_Slot;

public:
    enum
    {
        BIT_WIDTH = BITS,
        IS_SIGNED = false
    };

    template<int R_BITS>
    struct return_type
    {
        enum
        {
            BIT_W = __CODASIP_MAX(BIT_WIDTH, R_BITS)
        };

        typedef bundling_int<BIT_W> bit_t;
    };

    // Helper methods
    const BundlingBitInfo::Content& GetContent() const
    {
        return m_Bits;
    }

    int GetSlot() const
    {
        return m_Slot;
    }

    int ComputeIndex(int index) const
    {
#if 0
        return ((BIT_WIDTH - 1) - index);
#else
        return index;
#endif
    }

    /**
     *  \brief Sets one value into another including all tracking information
     *         If bit widths are different then it works as written below:
     *         |x|x|x| = |1|0|, result is |0|1|0|, fill extra bits with zero bits
     *         |x|x| = |1|1|0|, result is |1|0|, truncate bits from prefix
     *  \param[in] value assigned value
     */
    template<int R_BITS>
    void CopyContent(const bundling_int<R_BITS>& source)
    {
        int startIndex = 0;
        // fill with zeros
        if (BIT_WIDTH > R_BITS)
        {
            int bitWidth = BIT_WIDTH - source.BIT_WIDTH;
            for (int i = 0; i < bitWidth; i++)
            {
                m_Bits.push_back(BundlingBitInfo(BundlingBitInfo::ZERO_BIT, ComputeIndex(i),
                    BundlingBitInfo::UNDEFINED_SLOT, BundlingBitInfo::UNDEFINED_INDEX,
                    BundlingBitInfo::UNDEFINED_INDEX, BundlingBitInfo::UNDEFINED_INDEX));
            }
        }
        // truncate some value common bits
        else
        {
            startIndex = source.BIT_WIDTH - BIT_WIDTH;
        }

        // copy common bits from value
        const BundlingBitInfo::Content& bits = source.GetContent();
        for (int i = startIndex; i < source.BIT_WIDTH; i++)
        {
            m_Bits.push_back(BundlingBitInfo(bits[i].GetValue(), ComputeIndex(m_Bits.size()),
                bits[i].GetSlot(), bits[i].GetOriginIndex(), bits[i].GetOriginFixupIndex(),
                bits[i].GetOriginFixupBitIndex()));
        }
    }

    /**
     *  \brief Sets valid indexes of BundlingBitInfos after shifts for example
     */
    void ResetIndexes()
    {
        for (size_t i = 0; i < m_Bits.size(); i++)
        {
            m_Bits[i].SetIndex(ComputeIndex(i));
        }
    }

    // Constructors
    bundling_int() :
        m_Slot(BundlingBitInfo::UNDEFINED_SLOT)
    {
        DEBUG_OUT("Common constructor");
    }

    bundling_int(const std::string& source, int slot) :
        m_Slot(slot)
    {
        DEBUG_OUT("String + slot constructor");

        if (BIT_WIDTH != source.size())
        {
            std::cerr << "Warning: Assembler's size of instruction (" << source.size()
                << ") and bundle type size (" << BIT_WIDTH << ") mismatch." << std::endl;
        }
        for (size_t i = 0; i < source.size(); i++)
        {
            int index = ComputeIndex(i);
            m_Bits.push_back(BundlingBitInfo(source[i], index, GetSlot(), index,
                BundlingBitInfo::UNDEFINED_INDEX, BundlingBitInfo::UNDEFINED_INDEX));
        }
    }

    template<int R_BITS>
    bundling_int(const bundling_int<R_BITS>& copy) :
        m_Slot(BundlingBitInfo::UNDEFINED_SLOT)
    {
        DEBUG_OUT("bundling_int constructor");

        CopyContent(copy);
    }

    template<unsigned R_BITS, bool SIGNED>
    bundling_int(const codasip::Integer<R_BITS, SIGNED>& value) :
        m_Slot(BundlingBitInfo::UNDEFINED_SLOT)
    {
        DEBUG_OUT("codasip_int constructor");

        std::string binary = value.get_bin(false, false);
        for (int i = 0; i < BIT_WIDTH; i++)
        {
            m_Bits.push_back(BundlingBitInfo(binary[i], ComputeIndex(i)));
        }
    }

    /**
     *  \brief Sets fixup info to given bit
     *  \param[in] index bit index
     *  \param[in] originFixupIndex index to array of instruction fixups
     *  \param[in] originFixupBitIndex index of fixup bit
     */
    void SetFixupBit(int index, int originFixupIndex, int originFixupBitIndex)
    {
        m_Bits[index].SetOriginFixupInfo(originFixupIndex, originFixupBitIndex);
    }

    // Operators
    template<int R_BITS>
    bundling_int& operator=(const bundling_int<R_BITS>& value)
    {
        DEBUG_OUT("Operator= bundling_int");

        // clear old bit values
        m_Bits.clear();

        CopyContent(value);

        return *this;
    }
    template<typename T>
    bundling_int& operator=(const T r)
    {
        return (*this) = bundling_int(r);
    }

    /**
     *  \brief Creates conversion constructor to create bundling_int from given integer data type.
     */
    #define __BUNDLING_INT_CONVERSION_OPERATOR_WITH_INT_TYPE(ctype) \
        bundling_int(const ctype value) : \
            m_Slot(BundlingBitInfo::UNDEFINED_SLOT) \
        { \
            codasip::Integer<BIT_WIDTH, false> local(value); \
            std::string binary = local.get_bin(false, false); \
            for (int i = 0; i < BIT_WIDTH; i++) \
            { \
                m_Bits.push_back(BundlingBitInfo(binary[i], ComputeIndex(i))); \
            } \
        }

    /**
     *  \brief Create constructor and assignment operator from integer types
     *         and conversion to C integers and strings.
     */
    __BUNDLING_INT_CONVERSION_OPERATOR_WITH_INT_TYPE(bool)
    __BUNDLING_INT_CONVERSION_OPERATOR_WITH_INT_TYPE(char)
    __BUNDLING_INT_CONVERSION_OPERATOR_WITH_INT_TYPE(signed char)
    __BUNDLING_INT_CONVERSION_OPERATOR_WITH_INT_TYPE(unsigned char)
    __BUNDLING_INT_CONVERSION_OPERATOR_WITH_INT_TYPE(signed short)
    __BUNDLING_INT_CONVERSION_OPERATOR_WITH_INT_TYPE(unsigned short)
    __BUNDLING_INT_CONVERSION_OPERATOR_WITH_INT_TYPE(signed int)
    __BUNDLING_INT_CONVERSION_OPERATOR_WITH_INT_TYPE(unsigned int)
    __BUNDLING_INT_CONVERSION_OPERATOR_WITH_INT_TYPE(signed long int)
    __BUNDLING_INT_CONVERSION_OPERATOR_WITH_INT_TYPE(unsigned long int)
    __BUNDLING_INT_CONVERSION_OPERATOR_WITH_INT_TYPE(signed long long int)
    __BUNDLING_INT_CONVERSION_OPERATOR_WITH_INT_TYPE(unsigned long long int)

    /**
     *  \brief Comparison and equivalence functions.
     *  \param[in] r second operand.
     *  \tparam R_BITS bit-width of the second operand.
     */
    template<int R_BITS>
    bool equal_to(const bundling_int<R_BITS>& r) const
    {
        DEBUG_OUT("equal_to: " + BIT_WIDTH + " and " + r.BIT_WIDTH);

        size_t left = 0;
        size_t right = 0;
        if (BIT_WIDTH > r.BIT_WIDTH)
        {
            for (left = 0; left < (BIT_WIDTH - r.BIT_WIDTH); left++)
            {
                if (m_Bits[left].GetValue() != BundlingBitInfo::ZERO_BIT)
                {
                    return false;
                }
            }
        }
        else
        {
            for (right = 0; right < (r.BIT_WIDTH - BIT_WIDTH); right++)
            {
                if (r.GetContent()[right].GetValue() != BundlingBitInfo::ZERO_BIT)
                {
                    return false;
                }
            }
        }

        for (size_t i = left, j = right; i < BIT_WIDTH; i++, j++)
        {
            if (m_Bits[i].GetValue() != r.GetContent()[j].GetValue())
            {
                return false;
            }
        }

        DEBUG_OUT("equals");
        return true;
    }

    /**
     *  \brief Comparison and equivalence functions.
     *  \param[in] r second operand.
     *  \tparam R_BITS bit-width of the second operand.
     */
    template<int R_BITS>
    bool not_equal_to(const bundling_int<R_BITS>& r) const
    {
        return !equal_to(r);
    }

    bundling_int operator~() const
    {
        bundling_int tmp(*this);
        for (int i = 0; i < BIT_WIDTH; i++)
        {
            tmp.m_Bits[i].Negate();
        }
        return tmp;
    }

    template<int R_BITS>
    bundling_int& operator&=(const bundling_int<R_BITS>& r)
    {
        size_t left = 0;
        size_t right = 0;
        if (BIT_WIDTH > r.BIT_WIDTH)
        {
            for (left = 0; left < (BIT_WIDTH - r.BIT_WIDTH); left++)
            {
                m_Bits[left] &= BundlingBitInfo(BundlingBitInfo::ZERO_BIT, m_Bits[left].GetIndex());
            }
        }
        else
        {
            right += (r.BIT_WIDTH - BIT_WIDTH);
        }

        for (size_t i = left, j = right; i < BIT_WIDTH; i++, j++)
        {
            m_Bits[i] &= r.GetContent()[j];
        }

        return *this;
    }

    template<typename T>
    bundling_int& operator&=(const T r)
    {
        return (*this) &= bundling_int(r);
    }

    template<int R_BITS>
    bundling_int& operator|=(const bundling_int<R_BITS>& r)
    {
        DEBUG_OUT("Operator|= bundling_int");

        size_t left = 0;
        size_t right = 0;
        if (BIT_WIDTH > r.BIT_WIDTH)
        {
            for (left = 0; left < (BIT_WIDTH - r.BIT_WIDTH); left++)
            {
                m_Bits[left] |= BundlingBitInfo(BundlingBitInfo::ZERO_BIT, m_Bits[left].GetIndex());
            }
        }
        else
        {
            right += (r.BIT_WIDTH - BIT_WIDTH);
        }

        for (size_t i = left, j = right; i < BIT_WIDTH; i++, j++)
        {
            m_Bits[i] |= r.GetContent()[j];
        }

        return *this;
    }

    template<typename T>
    bundling_int& operator|=(const T r)
    {
        return (*this) |= bundling_int(r);
    }

    bundling_int& operator<<=(const unsigned value)
    {
        if (value > BIT_WIDTH)
        {
            ::std::ostringstream oss;
            oss << __FILE__ << "(" << __LINE__ << ") error: too large shift count: " << value;
            throw codasip::exceptions::CGeneralError( oss.str() );
        }

        for (unsigned i = 0; i < value; i++)
        {
            m_Bits.erase(m_Bits.begin());
            m_Bits.push_back(BundlingBitInfo(BundlingBitInfo::ZERO_BIT, 0));
        }

        // reset BundlingBitInfo indexes
        ResetIndexes();

        return *this;
    }

    template<typename T>
    bundling_int& operator<<=(const T r)
    {
        return (*this) <<= static_cast<const unsigned>(r);
    }

    bundling_int& operator>>=(const unsigned value)
    {
        if (value > BIT_WIDTH)
        {
            ::std::ostringstream oss;
            oss << __FILE__ << "(" << __LINE__ << ") error: too large shift count: " << value;
            throw codasip::exceptions::CGeneralError( oss.str() );
        }

        for (unsigned i = 0; i < value; i++)
        {
            m_Bits.erase(m_Bits.end());
            m_Bits.insert(m_Bits.begin(), BundlingBitInfo(BundlingBitInfo::ZERO_BIT, 0));
        }

        // reset BundlingBitInfo indexes
        ResetIndexes();

        return *this;
    }

    template<typename T>
    bundling_int& operator>>=(const T r)
    {
        return (*this) >>= static_cast<const unsigned>(r);
    }

    template<typename T>
    bundling_int operator<<(const T r) const
    {
        bundling_int<BIT_WIDTH> tmp(*this);
        return tmp <<= static_cast<const unsigned>(r);
    }

    template<typename T>
    bundling_int operator>>(const T r) const
    {
        bundling_int<BIT_WIDTH> tmp(*this);
        return tmp >>= static_cast<const unsigned>(r);
    }

    /**
     *  \brief Used for printing contents of bundling_int
     */
    void Print() const
    {
        BundlingBitInfo::PrintContent(m_Bits);
    }
};

#ifndef __TYPE_WIDTH
#define __TYPE_WIDTH(T) std::numeric_limits<T>::digits + std::numeric_limits<T>::is_signed
#else
    #error "Macro __TYPE_WIDTH already defined!!!"
#endif

/**
 *  \brief Defines all forms of comparison operator. First version defines comparison of two
 *         bundling_int objects. Other versions use bundling_int as one operand and the other should
 *         be any standard integer type.
 */
#define __BUNDLING_INT_COMPARE_OPERATOR(op, func) \
template<int L_BITS, int R_BITS> \
bool operator op(const bundling_int<L_BITS>& lhs, \
    const bundling_int<R_BITS>& rhs) \
{ \
    return ( lhs.func(rhs) ); \
} \
template<typename T, int L_BITS> \
bool operator op(const bundling_int<L_BITS>& lhs, const T rhs ) \
{ \
    enum { I_BITS=std::numeric_limits<T>::digits + std::numeric_limits<T>::is_signed }; \
    return ( lhs.func(bundling_int<I_BITS>((rhs))) ); \
} \
template<typename T, int R_BITS> \
bool operator op( const T lhs, const bundling_int<R_BITS>& rhs ) \
{ \
    enum { I_BITS=std::numeric_limits<T>::digits + std::numeric_limits<T>::is_signed }; \
    return ( bundling_int<I_BITS>(lhs).func(rhs) ); \
}

// generate comparison operators for codasip_int
__BUNDLING_INT_COMPARE_OPERATOR(==, equal_to)
__BUNDLING_INT_COMPARE_OPERATOR(!=, not_equal_to)

/**
 *  \brief Defines template binary operator in three forms. First version defines operation with
 *         bundling_int as left and right operands. Other versions use bundling_int as one operand
 *         and the other should be any standard integer type.
 */
#define __BUNDLING_INT_BINARY_OPERATOR( OP, RET_TYPE ) \
template<int L_BITS, int R_BITS> \
    typename bundling_int<L_BITS>::template return_type<R_BITS>::RET_TYPE \
    operator OP( const bundling_int<L_BITS>& lhs, const bundling_int<R_BITS>& rhs ) \
{ \
    typedef typename bundling_int<L_BITS>::template return_type<R_BITS>::RET_TYPE ret_type; \
    ret_type nrv(lhs); \
    nrv OP##= rhs; \
    return nrv; \
} \
template<typename T, int L_BITS> \
typename bundling_int<L_BITS>::template return_type<__TYPE_WIDTH(T)>::RET_TYPE \
    operator OP(const bundling_int<L_BITS>& lhs, const T rhs) \
{ \
    typedef bundling_int<__TYPE_WIDTH(T)> rhs_type; \
    typedef typename bundling_int<L_BITS>::template return_type<rhs_type::BIT_WIDTH>::RET_TYPE ret_type; \
    ret_type nrv( lhs ); \
    nrv OP##= rhs_type( rhs ); \
    return nrv; \
} \
template<typename T, int R_BITS> \
typename bundling_int<__TYPE_WIDTH(T)>::template return_type<R_BITS>::RET_TYPE \
    operator OP(const T lhs, const bundling_int<R_BITS>& rhs) \
{ \
    typedef typename bundling_int<__TYPE_WIDTH(T)>::template return_type<R_BITS>::RET_TYPE ret_type; \
    ret_type nrv(lhs); \
    nrv OP##= rhs; \
    return nrv; \
}

__BUNDLING_INT_BINARY_OPERATOR(&, bit_t)
__BUNDLING_INT_BINARY_OPERATOR(|, bit_t)


#undef DEBUG_CLASS
#undef __CODASIP_MAX
#undef __TYPE_WIDTH


}   // codasip::assembler
}   // codasip

#endif  // BUNDLING_BIT_INFO_H_
