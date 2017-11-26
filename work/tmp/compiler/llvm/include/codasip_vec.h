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
 *  \author Adam Husar, Martin Ministr
 *  \date   1.2.2012
 *  \brief  Contains declaration of codasip::codasip_vec template class.
 */

#ifndef INC_CODASIP_VEC_H_
#define INC_CODASIP_VEC_H_

#include "csr_helpers.h"
#include "codasip_integer.h"
#include "check_condition.h"
#include <climits>              // CHAR_BIT
#include <algorithm>            // std::copy_n, std::fill_n
#include <type_traits>

namespace codasip {

#define CODASIP_VEC_BINARY_OPERATOR(op, ret_type) \
    friend ret_type operator op(const self_t& lhs, const self_t& rhs) \
    { \
        ret_type res; \
        for (unsigned i = 0; i < ELEM_COUNT; ++i) \
        { \
            res.elems[i] = lhs.elems[i] op rhs.elems[i]; \
        } \
        return res; \
    }

#define CODASIP_VEC_ARRAY_OOR(index) \
    CHECK_CONDITION(index < ELEM_COUNT) << "Accessing element with index " << index \
        << " of a vector variable that has only " << ELEM_COUNT << " elements.";

#define CODASIP_VEC_ARRAY_OPERATOR() \
    elem_t& operator[](const size_t index) \
    { \
        CODASIP_VEC_ARRAY_OOR(index) \
        return elems[index]; \
    } \
    const elem_t& operator[](const size_t index) const \
    { \
        CODASIP_VEC_ARRAY_OOR(index) \
        return elems[index]; \
    }

/**
 * \class codasip_vec
 * \brief Implements integer vector type (SIMD).
 *        v4i4 is indexed as bits of byte, (uint32)0x11223344 => {0x44, 0x33, 0x22, 0x11}.
 */
template<unsigned TOTAL_BITS, int ELEM_BITS_ARG, bool SIGNED>
class codasip_vec
{
public:
    enum : unsigned
    {
        ELEM_BITS = ELEM_BITS_ARG,
        ELEM_COUNT = TOTAL_BITS / ELEM_BITS
    };
    typedef typename resources::TypeSelector<ELEM_BITS, SIGNED>::type elem_t;
    typedef typename resources::TypeSelector<TOTAL_BITS, SIGNED>::type full_t;
    typedef typename resources::TypeSelector<TOTAL_BITS, !SIGNED>::type full_diff_sign_t;
    typedef codasip_vec<TOTAL_BITS, ELEM_BITS, SIGNED> self_t;
    /**
     *  \brief  Default constructor initializes to zero.
     */
    codasip_vec()
    {
        std::fill_n( elems, static_cast<unsigned>(ELEM_COUNT), static_cast<elem_t>(0) );
    }
    /**
     *  \brief  Copy constructor.
     *  \param  v vector value to assign.
     */
    template<bool RHS_SIGN>
    codasip_vec(const codasip_vec<TOTAL_BITS, ELEM_BITS, RHS_SIGN>& v)
    {
        std::copy_n( v.elems, static_cast<unsigned>(ELEM_COUNT), elems );
    }
    /**
     *  \brief  Constructor from scalar type.
     *  \param  v scalar value to assign.
     */
    template<bool RHS_SIGN>
    codasip_vec(const codasip::Integer<TOTAL_BITS, RHS_SIGN>& v)
    {
        InitFromScalar( v );
    }
    template<bool RHS_SIGN>
    operator codasip::Integer<TOTAL_BITS, RHS_SIGN>() const
    {
        codasip::Integer<TOTAL_BITS, RHS_SIGN> res;
        for ( unsigned i = 0; i < ELEM_COUNT; ++i )
        {
            res |= (((full_t)elems[i]) & (((full_t)1 << ELEM_BITS) - 1)) << (full_t)(i * ELEM_BITS);
        }
        return res;
    }
    // Enable conversion to underlying POD type.
    template<typename T, typename std::enable_if<
        (!std::is_same<typename std::decay<T>::type, codasip::Integer<TOTAL_BITS, SIGNED> >::value) &&
        (std::is_same<typename std::decay<T>::type, full_t>::value ||
        std::is_same<typename std::decay<T>::type, full_diff_sign_t>::value), bool>::type = 0>
    operator T() const
    {
        return this->operator codasip::Integer<TOTAL_BITS, std::numeric_limits<T>::is_signed>();
    }
    // Enable creation from underlying POD type.
    template<typename T, typename std::enable_if<
        (!std::is_same<typename std::decay<T>::type, codasip::Integer<TOTAL_BITS, SIGNED> >::value) &&
        (std::is_same<typename std::decay<T>::type, full_t>::value ||
        std::is_same<typename std::decay<T>::type, full_diff_sign_t>::value), bool>::type = 0>
    codasip_vec(const T& v)
    {
        InitFromScalar( v );
    }

    /**
     *  \{
     *  \brief  Access element on given index. Has protection for out-of-range
     *          access.
     *  \param  index address to access
     */
    CODASIP_VEC_ARRAY_OPERATOR()
    /**
     *  \} \{
     *  \brief  Definition of binary operator.
     *  \param  lhs first operand
     *  \param  rhs second operand
     */
    CODASIP_VEC_BINARY_OPERATOR( +, self_t )
    CODASIP_VEC_BINARY_OPERATOR( -, self_t )
    CODASIP_VEC_BINARY_OPERATOR( *, self_t )
    CODASIP_VEC_BINARY_OPERATOR( /, self_t )
    CODASIP_VEC_BINARY_OPERATOR( %, self_t )
    CODASIP_VEC_BINARY_OPERATOR( &, self_t )
    CODASIP_VEC_BINARY_OPERATOR( |, self_t )
    CODASIP_VEC_BINARY_OPERATOR( ^, self_t )
    CODASIP_VEC_BINARY_OPERATOR( <<, self_t )
    CODASIP_VEC_BINARY_OPERATOR( >>, self_t )
    CODASIP_VEC_BINARY_OPERATOR( >, self_t )
    CODASIP_VEC_BINARY_OPERATOR( <, self_t )
    CODASIP_VEC_BINARY_OPERATOR( >=, self_t )
    CODASIP_VEC_BINARY_OPERATOR( <=, self_t )
    CODASIP_VEC_BINARY_OPERATOR( ==, self_t )
    CODASIP_VEC_BINARY_OPERATOR( !=, self_t )
    /**
     * \brief Bitwise negation operator.
     */
    self_t operator~() const
    {
        self_t res;
        for ( unsigned i = 0; i < ELEM_COUNT; ++i )
        {
            res.elems[i] = ~elems[i];
        }
        return res;
    }
    /**
     * \brief Logical negation operator.
     */
    self_t operator!() const
    {
        self_t res;
        for (size_t i = 0; i < ELEM_COUNT; i++)
        {
            res.elems[i] = !elems[i];
        }
        return res;
    }
private:
    /**
     *  \brief  Initialize vector type from scalar of the same bit-width.
     *  \param  v value for initialization.
     */
    template<typename T>
    void InitFromScalar( const T& v )
    {
        for ( unsigned i = 0; i < ELEM_COUNT; ++i )
        {
            elems[i] = v >> (i * ELEM_BITS);
        }
    }
public:
    /// actual storage, v4u8 [0, 1, 2, 3] stored as 00112233 as uint32 33221100
    elem_t elems[ELEM_COUNT];
};

/**
 *  \class  codasip_vec_flt
 *  \brief  Implements floating point vector type.
 */
template<unsigned TOTAL_BITS, typename BASE_TYPE>
class codasip_vec_flt
{
public:
   enum : unsigned
   {
       ELEM_BITS = (sizeof(BASE_TYPE) * CHAR_BIT),
       ELEM_COUNT = TOTAL_BITS / ELEM_BITS
   };
   typedef BASE_TYPE elem_t;
   typedef typename resources::TypeSelector<TOTAL_BITS, false>::type full_int_t;
   typedef typename resources::TypeSelector<ELEM_BITS, false>::type elem_int_t;
   typedef codasip_vec_flt<TOTAL_BITS, BASE_TYPE> self_t;
   typedef codasip_vec<TOTAL_BITS, ELEM_BITS, false> int_vec_t;
    /**
     *  \brief  Default constructor.
     */
    codasip_vec_flt()
    {
        std::fill_n( elems, static_cast<unsigned>(ELEM_COUNT), static_cast<elem_t>(0.0) );
    }
    /**
     *  \brief  Copy constructor.
     *  \param  v assigned value
     */
    codasip_vec_flt(const self_t& v)
    {
        std::copy_n( v.elems, static_cast<unsigned>(ELEM_COUNT), elems );
    }
    /**
     *  \brief  Conversion from codasip::Integer.
     *  \param  v assigned value
     */
    template<bool RHS_SIGN>
    void set_from_bits(const codasip::Integer<TOTAL_BITS, RHS_SIGN>& v)
    {
        for ( unsigned i = 0; i < ELEM_COUNT; ++i )
        {
            elem_int_t tmp = (v >> (i * ELEM_BITS));
            elems[i] = *((elem_t*)(&tmp));
        }
    }
    /**
     *  \brief  Conversion to codasip::Integer.
     */
    codasip::Integer<TOTAL_BITS, false> get_as_bits() const
    {
        codasip::Integer<TOTAL_BITS, false> res;
        for ( unsigned i = 0; i < ELEM_COUNT; ++i )
        {
            elem_int_t tmp = *((elem_int_t*)(&elems[i]));
            res |= (((full_int_t)tmp) & (((full_int_t)1 << (full_int_t)ELEM_BITS) - 1)) << (full_int_t)(i * ELEM_BITS);
        }
        return res;
    }
    /**
     *  \{
     *  \brief  Access element on given index. Has protection for out-of-range
     *          access.
     *  \param  index address to access
     */
    CODASIP_VEC_ARRAY_OPERATOR()
    /**
     *  \} \{
     *  \brief  Definition of binary operator.
     *  \param  lhs first operand
     *  \param  rhs second operand
     */
    CODASIP_VEC_BINARY_OPERATOR( +, self_t )
    CODASIP_VEC_BINARY_OPERATOR( -, self_t )
    CODASIP_VEC_BINARY_OPERATOR( *, self_t )
    CODASIP_VEC_BINARY_OPERATOR( /, self_t )
    CODASIP_VEC_BINARY_OPERATOR( >, int_vec_t )
    CODASIP_VEC_BINARY_OPERATOR( <, int_vec_t )
    CODASIP_VEC_BINARY_OPERATOR( >=, int_vec_t )
    CODASIP_VEC_BINARY_OPERATOR( <=, int_vec_t )
    CODASIP_VEC_BINARY_OPERATOR( ==, int_vec_t )
    CODASIP_VEC_BINARY_OPERATOR( !=, int_vec_t )
    /** \} */
public:
    /// actual storage
    elem_t elems[ELEM_COUNT];
};

} // namespace codasip

#undef CODASIP_VEC_ARRAY_OOR
#undef CODASIP_VEC_ARRAY_OPERATOR
#undef CODASIP_VEC_BINARY_OPERATOR

#endif // INC_CODASIP_VEC_H_
