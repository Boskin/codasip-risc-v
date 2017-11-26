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
 *  \author Potesil Josef
 *  \date   7.3.2014
 *  \brief  Includes all header files containing private utilities. These
 *          utilities should not be used in generated code, because they are not
 *          installed.
 */

#ifndef _CODASIP_UTILS_H_
#define _CODASIP_UTILS_H_

#include "stringutils.h"
//#include "noncopyable.h"
//#include "matchvalue.h"
//#include "toolstypes.h"
//#include "deprecatedutils.h"
#include "number_cast.h"
#include "check_condition.h"
#include "codasip_integer.h"
#include <string>
#include <algorithm>
#include <functional>
#include <limits>
#include <climits>
#include <vector>

/**
 *  \defgroup CODASIP_UTILITY Codasip utility library
 *  Contains common auxiliary classes and utility functions used across the
 *  whole Codasip Framework.
 */

/**
 *  \addtogroup CODASIP_UTILITY
 *  \{
 *  \def BIND_THIS(x)
 *  \brief  Creates functor to member function and saves the pointer to the
 *          class instance (\b this). The class has to contain \b THIS_CLASS
 *          typedef to it self, it will be added before the function name.
 *          Typical usage:
 *  \code
 *  class TestClass {
 *      // typedef THIS_CLASS needed for this macro
 *      typedef TestClass THIS_CLASS;
 *      void fnc1( const int x) {
 *          std::cout << x << std::endl;
 *          // ...
 *      }
 *      void fnc2( const std::vector<int>& v ) {
 *          std::for_each( v.begin(), v.end(), BIND_THIS(fnc1) );
 *          // instead of:
 *          std::for_each( v.begin(), v.end(), std::bind1st(std::mem_fun(&TestClass::fnc1), this) );
 *      }
 *      // ...
 *  };
 *  \endcode
 *  \param  x member function name without the class prefix.
 *  \}
 */
#define BIND_THIS(x) \
    std::bind1st(std::mem_fun(&THIS_CLASS::x), this)

namespace codasip {
// forward
template<int BITS, bool SIGNED> class IntegerNumber;

namespace detail {

template<typename T>
class PredicateClass
{
public:
    PredicateClass(T value);
    bool operator()(T value);

private:
    T m_Value;
};

template<typename T>
inline PredicateClass<T>::PredicateClass(T value)
  : m_Value(value)
{}

template<typename T>
inline bool PredicateClass<T>::operator()(T value)
{
    return m_Value == value;
}

}   // anonymous codasip::detail

/**
 *  \addtogroup CODASIP_UTILITY
 *  \{
 */
/**
 *  \brief  Auxiliary function to generate black spaces for DebugPrints
 *  \param  nIndent count of blank characters
 */
inline std::string GetIndent( const int nIndent )
{
    return std::string( 4*(nIndent > 0 ? nIndent : 0), ' ' );
}

/**
 *  \brief  Used for semantic sections and external files
 */
std::string getCType( const unsigned int pSize,
    const bool pSigned,
    const bool useBool);

/**
 * \brief   Used for instances and attributes for optimizations reasons (the
 *          bit-width is assured by the simulation engine).
 */
std::string getSTDCType( const unsigned int pSize,
    const bool pSigned,
    const bool useBool );

/**
 *  \brief  Create type string with CodAL integer type with given attributes,
 *          for integer (non-vector) types only.
 *  \param  bitWidth Bit size
 *  \param  isSigned indicate the sign for integer data types.
 */
std::string GetCodalIntType( const unsigned bitWidth, const bool isSigned );

/**
 * \brief Return size of STD type, to which bitSize fits
 * \param bitSize Bit size
 * \param useBool if true, bool is taken as the type
 */
int getSTDCTypeSize( const unsigned int bitSize, const bool useBool );

/**
 *  \brief  Returns data type of a real (floating point) type based on given
 *          bit-width.
 *  \param  bitWidth target bit-width
 *  \return string holding the type with one space
 *  \throw  codasip::exceptions::CGeneralError when bit-width is not supported.
 */
std::string GetCRealType( const int bitWidth );

/**
 *  \brief  Returns data type of a arithmetic data types
 *          (integer, floating point and void type).
 *  \param  isReal indicates if the type should be real (floating point) or
 *          integer.
 *  \param  bitWidth bit-width of target data type.
 *  \param  isSigned indicate the sign for integer data types.
 *  \param  useBool Use bool
 *  \return string holding the type with one space
 *  \throw  codasip::exceptions::CGeneralError when data type or bit-width is not
 *          supported.
 */
std::string GetCArithmeticType( const bool isReal,
    const int bitWidth,
    const bool isSigned,
    const bool useBool);

/**
 *  \brief  Temporal replacement for std::copy_if function. Copies the elements
 *          in the range [first,last) for which pred returns true to the range
 *          beginning at result.
 *  \param  first,last Input iterators to the initial and final positions in a
 *          sequence. The range copied is [first,last), which contains all the
 *          elements between first and last, including the element pointed by
 *          first but not the element pointed by last. InputIterator shall point
 *          to a type assignable to the elements pointed by OutputIterator.
 *  \param  result Output iterator to the initial position of the range where
 *          the resulting sequence is stored. The range includes as many
 *          elements as [first,last).
 *  \param  pred Unary function that accepts an element in the range as argument,
 *          and returns a value convertible to bool. The value returned
 *          indicates whether the element is to be copied (if true, it is
 *          copied). The function shall not modify any of its arguments. This
 *          can either be a function pointer or a function object.
 */
template <class InputIterator, class OutputIterator, class UnaryPredicate>
inline OutputIterator copy_if( InputIterator first,
    InputIterator last,
    OutputIterator result,
    UnaryPredicate pred )
{
    while ( first != last )
    {
        if ( pred(*first) )
        {
            *result = *first;
            ++result;
        }
        ++first;
    }
    return result;
}

/**
 *  \brief  Compute size of given range. Return maximum value of type T in case
 *          of an overflow.
 *  \tparam T integer type, should not be reference
 *  \param  left first range border
 *  \param  right second range border
 */
template<typename T> inline T RangeSize( const T left, const T right )
{
    const T low = std::min(left, right);
    const T high = std::max(left, right);
    return high - low + ((high - low) != std::numeric_limits<T>::max());
}

/**
 *  \brief  Check if given value is a power of 2. Works only for unsigned types.
 *  \param  value source data
 */
inline bool IsPowerOfTwo( size_t value )
{
    return ((value != 0) && ((value & (~value + 1)) == value));
}

/**
 *  \brief  Generic function to create copies of object from pointers.
 *          Copy constructor of the source type is used to create copy.
 *  \param  ptr source pointer
 *  \return pointer to dynamically allocated copy of the object
 *  \retval NULL if source node is NULL, result is also NULL.
 */
template<typename T> inline T* CopyPtr( const T* const ptr )
{
    return ( ptr ) ? new T( *ptr ) : NULL;
}

/**
 *  \brief  Generic function to erase all occurrences of given value from vector
 *          container. Modifies size of the container.
 *  \param  vector source container to modify
 *  \param  value value to be removed from the container
 */
template<class Vector, class Predicate>
inline void EraseVectorValues( Vector& vector, Predicate pred )
{
    vector.erase( std::remove_if(vector.begin(), vector.end(), pred), vector.end() );
}

/**
 *  \brief  Generic function to erase all occurrences of given value from vector
 *          container. Modifies size of the container.
 *  \param  vector source container to modify
 *  \param  value value to be removed from the container
 */
template<class Vector, class Value>
inline void EraseVectorValue( Vector& vector, Value value )
{
    EraseVectorValues( vector, detail::PredicateClass<Value>(value) );
}

/** \} */   // Doxygen group comment

/**
 *  \addtogroup CODASIP_UTILITY
 *  \{
 *  \class  codasip::Destroyer
 *  \brief  This function object serves to properly destroy dynamically
 *          allocated objects. It was designed to be used with the std::for_each
 *          STL function to deallocate pointers stored in containers,
 *          like this:
 *          \code
 *          typedef std::vector<ClassName*> cont_type;
 *          cont_type cont;
 *          cont.push_back( new ClassName() );
 *          // ...
 *          std::for_each( cont.begin(), cont.end(), codasip::Destroyer() );
 *          // or manualy
 *          codasip::Destroyer()( *cont.begin() );
 *          \endcode
 *  \}
 */
struct Destroyer
{
    template<typename T>
    void operator()( const T* const ptr ) const { delete ptr; }
};

/**
 *  \brief  This function deletes all dynamically allocated items of given container.
 *  \tparam Container Container type of dynamically allocated pointers. Otherwise undefined
 *          behavior might occur.
 *  \param  cont Container whose items will be deleted.
 */
template<typename Container>
inline void DeleteContainer(Container& cont)
{
    for (typename Container::iterator it = cont.begin();
        it != cont.end();
        ++it)
    {
        delete *it;
    }
    // for safety
    cont.clear();
}

/**
 *  \brief  Returns bit at given position in number.
 *  \tparam T integer type
 *  \param  number Number its bits will be examined
 *  \param  position Index of bit (0 - LSB, N - MSB)
 */
template<typename T>
inline bool GetBit(const T& number, const unsigned position)
{
    return number & (1 << position);
}

/**
 *  \brief  Sets bit to 1 at given position.
 *  \tparam T integer type
 *  \param  number Number its bits will be changed
 *  \param  position Index of bit (0 - LSB, N - MSB)
 */
template<typename T>
inline void SetBit(T& number, const unsigned position)
{
    number |= 1 << position;
}

/**
 *  \brief  Clears bit to 0 at given position.
 *  \tparam T integer type
 *  \param  number Number its bits will be changed
 *  \param  position Index of bit (0 - LSB, N - MSB)
 */
template<typename T>
inline void ClearBit(T& number, const unsigned position)
{
    number &= ~(1 << position);
}

/**
 *  \brief  Sets bit at given position to given value.
 *  \tparam T integer type
 *  \param  number Number its bits will be changed
 *  \param  position Index of bit (0 - LSB, N - MSB)
 *  \param  value Bit at \p position in \p number will be set to this value
 */
template<typename T>
inline void SetBit(T& number, const unsigned position, const bool value)
{
    if (value)
    {
        SetBit(number, position);
    }
    else
    {
        ClearBit(number, position);
    }
}

/**
 *  \brief  Computes bit-width needed to store given value.
 *  \tparam T integer type.
 *  \param  value source data.
 *  \param  isSigned source data are signed or unsigned.
 */
template<typename T>
inline T ComputeBitWidth(const T value, const bool isSigned = false)
{
    T aux = (value > 0 || value == 0) ? value : (T(0) - value);
    T mask = ~T(1);
    T bitWidth = 0;
    do
    {
        ++bitWidth;
        aux &= mask;
        mask <<= 1;
    } while (aux != 0);
    // one bit plus if the value is less than zero => sign bit
    return bitWidth + isSigned;
}

/**
 *  \brief  Truncate integer value to specific bit-width with sign preservation.
 *  \param  value Source data.
 *  \param  bitWidth Bit-width of truncated value. Input type must be greater then this bit-width.
 *  \param  isSigned Truncated value is signed or unsigned.
 *  \param  maxBitWidth Maximal bit-width of truncated value.
 */
template<typename T1>
T1 TruncateInt(const T1 value,
    const unsigned bitWidth,
    const bool isSigned,
    const unsigned maxBitWidth = std::numeric_limits<unsigned>::max())
{
    if (!(bitWidth > 0))
    {   // when bit-width is not positive number, return 0
        return 0;
    }
    if (bitWidth >= maxBitWidth)
    {   // return original value when bit-width exceeds maximum
        return value;
    }

    T1 mask = T1(-1) << bitWidth;
    T1 result = value;

    if (isSigned && (static_cast<int>(value >> (bitWidth - 1)) & 1))
    {
        result |= mask;
    }
    else
    {
        result &= ~mask;
    }

    return result;
}

/**
 *  \brief  Returns true, if in given \p value is present given \p flag.
 *          If flag is using multiple bits (e.g. 1 << 3 | 1 ), all bits has to match in \p value.
 */
template <typename T1>
inline bool HasFlag(const T1 value, const int flag)
{
    return (value & flag) == static_cast<T1>(flag);
}

/**
 *  \brief  Returns true, if in given \p value are present given flags.
 */
template <typename T1>
inline bool HasFlags(const T1 value,
	const unsigned flag1,
    const int flag2,
    const int flag3 = 0,
    const int flag4 = 0,
    const int flag5 = 0)
{
    const int flags = (flag1 | flag2 | flag3 | flag4 | flag5);
    return (value & flags) == flags;
}

/**
 *  \brief  Adds \p flag into given \p value
 */
template <typename T1>
inline void SetFlag(T1& value, const int flag)
{
    value |= flag;
}

#define STUB(a) STD_COUT << "STUB: " << (a) << std::endl;


/**
 *  \brief  Return bitwidth of C type or codasip::Integer
 */
template<class T, typename U = typename std::decay<T>::type>
struct TypeBitWidth
{
    enum { value = sizeof(T) * CHAR_BIT };
};

/**
 *  \brief  Return bitwidth of C type or codasip_int
 *  \note   Specialization for codasip::Integer
 */
template<typename T, int BITS, bool SIGNED> struct TypeBitWidth<T, IntegerNumber<BITS, SIGNED> >
{
    enum { value = IntegerNumber<BITS, SIGNED>::BIT_WIDTH };
};

/**
 *  \brief  Convert integer into byte array
 */
template<class T>
inline void IntegerToByteArray(uint8_t* dst, const unsigned int bc, const T& src)
{
    // we have to check maximum bytes that can be shifted from T. In x86 shift over
    // maximum bitwidth of type is undefined (e.g. uint32_t(1) >> 33)
    enum : unsigned
    {
        MAX_BYTES = ((TypeBitWidth<T>::value - 1) / CHAR_BIT + 1)
    };

    const unsigned bytes = MAX_BYTES < bc ? MAX_BYTES : bc;
    for (unsigned ii = 0; ii < bc; ++ii)
    {
        if (ii < bytes)
        {
            dst[ii] = src >> (ii * 8);
        }
        else
        {
            dst[ii] = 0;
        }
    }
}

/**
 *  \brief  Convert byte array into integer
 */
template<class T>
inline void ByteArrayToInteger(T& dst, const uint8_t* src, const unsigned int bc)
{
    // we have to check maximum bytes that can be shifted from T. In x86 shift over
    // maximum bitwidth of type is undefined (e.g. uint32_t(1) >> 33)
    enum : unsigned
    {
        MAX_BYTES = ((TypeBitWidth<T>::value - 1) / CHAR_BIT + 1)
    };

    dst = 0;
    const unsigned bytes = MAX_BYTES < bc ? MAX_BYTES : bc;
    for (unsigned int ii = 0; ii < bytes; ++ii)
    {
        dst |= T(src[ii]) << (ii * 8);
    }
}

/**
 * \brief       Calculates base 2 logarithm.
 * \param value Input value.
 * \return      Base 2 logarithm of input value.
 */
template<typename T>
inline T ILog2(const T value)
{
    T x = value, y = 0;
    while (x > 1)
    {
        x >>= 1;
        y++;
    }
    return y;
}

/**
 * \brief       Calculates ceiling of base 2 logarithm.
 * \param value Input value.
 * \return      Ceiling of base 2 logarithm of input value.
 */
template<typename T>
inline T CLog2(const T value)
{
    T clog2 = 0;
    for (T size = value; size > 1; size = (size+1) >> 1)
    {
        clog2++;
    }
    return clog2;
}

/// Creates mask of 1 bits with specified length on specified type
template<class _Type>
FORCE_INLINE _Type BitMask(const int length) {
    return length ?
        codasip::Integer<1024, false>(-1)>>(1024-length) :
        codasip::Integer<1024, false>(0);
}
#define BIT_MASK_SPECIALIZATION(_Type) \
    template<> \
    FORCE_INLINE _Type  BitMask<_Type>(const int length) { \
        return length ? ((_Type)-1) >> (sizeof(_Type)*8-(length)) : (_Type)0; \
    }

BIT_MASK_SPECIALIZATION(unsigned char)
BIT_MASK_SPECIALIZATION(unsigned short)
BIT_MASK_SPECIALIZATION(unsigned int)
BIT_MASK_SPECIALIZATION(unsigned long int)
BIT_MASK_SPECIALIZATION(unsigned long long int)

#undef BIT_MASK_SPECIALIZATION

/// Compute greatest common divisor for a and b
template<typename IntegerType>
inline IntegerType Gcd(IntegerType a, IntegerType b)
{
    return b == 0 ? a : Gcd(b, a % b);
}

/**
 * \brief Extract two numbers from an range
 * \param a From number
 * \param b To number
 * \param source Source string
 * \param delimiter Delimiter of numbers
 */
template<typename IntegerType>
void GetRange(IntegerType& a,
    IntegerType&b,
    const std::string& source,
    const std::string& delimiter = "..")
{
    // default values
    a = 0;
    b = 0;
    // empty, do nothing
    if (source.empty())
    {
        return;
    }
    // split it based on delimiter
    std::vector<std::string> parts;
    SplitNames(parts, source, delimiter);
    // speculatively initialize both numbers
    a = b = StrToInt<IntegerType>(parts.at(0));
    // if there is a second part, use it
    if (parts.size() == 2)
    {
        b = StrToInt<IntegerType>(parts.at(1));
    }
}


}   // namespace codasip

#endif // _CODASIP_UTILS_H_
