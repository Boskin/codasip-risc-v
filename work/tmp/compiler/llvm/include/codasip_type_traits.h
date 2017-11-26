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
 *  \date   25.1.2012
 *  \brief  Contains simple versions of type traits class templates available
 *          in C++11.
 */

#ifndef _CODASIP_TYPE_TRAITS_H_
#define _CODASIP_TYPE_TRAITS_H_

#include <iterator>

namespace codasip {
namespace detail {

/**
 *  \addtogroup CODASIP_UTILITY
 *  \{
 *  \defgroup CODASIP_UTILITY_TYPETRAITS  Type traits
 *  Temporal replacement for some type traits class templates available in C++11.
 *  \}
 */
/**
 *  \addtogroup CODASIP_UTILITY_TYPETRAITS
 *  \{
 */
/**
 *  \brief  Provides member typedef type, which is defined as T if B is true at
 *          compile time, or as F if B is false. Temporal replacement
 *          of standard type traits from C++11.
 */
template<bool C, typename T, typename F> struct conditional
{
    typedef T   type;
};
/**
 *  \brief  Specialization of \ref conditional for false condition.
 */
template<typename T, typename F> struct conditional<false, T, F>
{
    typedef F   type;
};
/**
 *  \brief  Indicates if T is a (top level) const-qualified type. Temporal
 *          replacement of standard type traits from C++11.
 */
template<typename T> struct is_const            { enum { value = false }; };
/**
 *  \brief  Specialization of \ref is_const for constant types.
 */
template<typename T> struct is_const<const T>   { enum { value = true };  };
/**
 *  \brief  Add const qualifier to data type T. Temporal replacement of standard
 *          type traits from C++11.
 */
template<typename T> struct add_const           { typedef const T type; };
/**
 *  \brief  Specialization of \ref add_const for constant types.
 */
template<typename T> struct add_const<const T>  { typedef const T type; };
/**
 *  \brief  Remove const qualifier to data type T. Temporal replacement of
 *          standard type traits from C++11.
 */
template<typename T> struct remove_const            { typedef T type; };
/**
 *  \brief  Specialization of \ref remove_const for constant types.
 */
template<typename T> struct remove_const<const T>   { typedef T type; };
/**
 *  \brief  Removes volatile qualifier from the T type. Temporal replacement
 *          of standard type traits from C++11.
 */
template <typename T> struct remove_volatile                { typedef T type; };
/**
 *  \brief  Specialization of \ref remove_volatile for volatile types.
 */
template <typename T> struct remove_volatile<volatile T>    { typedef T type; };
/**
 *  \brief  Removes reference modifier from the T type. Temporal replacement
 *          of standard type traits from C++11.
 */
template<typename T> struct remove_reference        { typedef T type; };
/**
 *  \brief  Specialization of \ref remove_reference for reference types.
 */
template<typename T> struct remove_reference<T&>    { typedef T type; };
/**
 *  \brief  If T is an object or function, provides a member typedef type which
 *          is T& otherwise, type is T. Temporal replacement of standard type
 *          traits from C++11.
 */
template<typename T> struct add_lvalue_reference            { typedef T&   type; };
/**
 *  \brief  Specialization of \ref add_lvalue_reference for reference types.
 */
template<typename T> struct add_lvalue_reference<T&>        { typedef T&   type; };
/**
 *  \brief  Specialization of \ref add_lvalue_reference for void type.
 */
template<> struct add_lvalue_reference<void>                { typedef void type; };
/**
 *  \brief  Specialization of \ref add_lvalue_reference for constant void type.
 */
template<> struct add_lvalue_reference<void const>          { typedef void const type; };
/**
 *  \brief  Specialization of \ref add_lvalue_reference for volatile void type.
 */
template<> struct add_lvalue_reference<void volatile>       { typedef void volatile type; };
/**
 *  \brief  Specialization of \ref add_lvalue_reference for constant volatile void type.
 */
template<> struct add_lvalue_reference<void const volatile> { typedef void const volatile type; };
/**
 *  \brief  Provides the member typedef type which is the type pointed to by T,
 *          or, if T is not a pointer, then type is the same as T.
 */
template< class T > struct remove_pointer                    {typedef T type;};
/**
 *  \brief  Specialization of \ref remove_pointer for pointer type.
 */
template< class T > struct remove_pointer<T*>                {typedef T type;};
/**
 *  \brief  Specialization of \ref remove_pointer for constant pointer type.
 */
template< class T > struct remove_pointer<T* const>          {typedef T type;};
/**
 *  \brief  Specialization of \ref remove_pointer for volatile pointer type.
 */
template< class T > struct remove_pointer<T* volatile>       {typedef T type;};
/**
 *  \brief  Specialization of \ref remove_pointer for constant volatile pointer type.
 */
template< class T > struct remove_pointer<T* const volatile> {typedef T type;};
/**
 *  \brief  Removes const volatile qualifier from the T type. Temporal
 *          replacement of standard type traits from C++11.
 */
template <typename T> struct remove_cv
{
    typedef typename remove_volatile<typename remove_const<T>::type>::type type;
};
/**
 *  \brief  Based on the condition C template parameter adds or removes const
 *          qualifier from the data type T.
 */
template<bool C, typename T> struct use_const
{
    typedef typename conditional<C,
        typename add_const<T>::type,
        typename remove_const<T>::type>::type   type;
};
/**
 *  \brief  Adds const qualifier to the source type if condition C is true
 *          otherwise leaves the type untouched.
 */
template<bool C, typename T> struct add_const_cnd
{
    typedef typename conditional<C, typename add_const<T>::type, T>::type type;
};
/**
 *  \brief  Indicates if iterator type is const_iterator or simple iterator.
 */
template<typename Iterator> struct is_const_iterator
{
    enum { value = is_const<typename remove_reference<
        typename std::iterator_traits<Iterator>::reference>::type>::value };
};
/**
 *  \brief  Indicates if T is pointer type. Should not be used directly by user.
 */
template<typename T> struct is_pointer_helper
{
    enum { value = false };
};
/**
 *  \brief  Specialization of \ref is_pointer_helper for pointer type.
 */
template<typename T> struct is_pointer_helper<T*>
{
    enum { value = true };
};
/**
 *  \brief  Indicates if T is an object pointer type or a function pointer type
 *          Temporal replacement of standard type traits from C++11.
 */
template<typename T> struct is_pointer
{
    enum { value = is_pointer_helper<typename remove_cv<T>::type>::value };
};
/**
 *  \brief  If T and U name the same type with the same const-volatile
 *          qualifications, provides the member constant value equal to true.
 *          Otherwise value is false
 *          Temporal replacement of standard type traits from C++11.
 */
template<typename T, typename U> struct is_same
{
    enum { value = false };
};
/**
 *  \brief  Specialization of \ref is_same for identical type.
 */
template<typename T> struct is_same<T, T>
{
    enum { value = true };
};
/**
 *  \brief  If T is a floating-point type (float, double, long double,
 *          including any cv-qualified variants), provides the member constant
 *          value equal true. For any other type, value is false.
 *          Temporal replacement of standard type traits from C++11.
 */
template<typename T> struct is_floating_point
{
    enum { value =
        is_same<float, typename remove_cv<T>::type>::value ||
        is_same<double, typename remove_cv<T>::type>::value ||
        is_same<long double, typename remove_cv<T>::type>::value };
};
/**
 *  \brief  Helper class implementing the unified access to variables (pointers
 *          and variables)
 *  \see GetRef()
 */
template<typename T, bool isPointer = is_pointer<typename remove_reference<T>::type>::value>
struct get_ref_helper
{
    typedef typename add_lvalue_reference<T>::type  argument_type;
    typedef argument_type                           result_type;

    result_type operator()( argument_type x ) const { return x; };
};
/**
 *  \brief  Specialization of \ref get_ref_helper for pointer type.
 */
template<typename T>
struct get_ref_helper<T, true>
{
    typedef typename remove_reference<T>::type              argument_type;
    typedef typename add_lvalue_reference<
        typename remove_pointer<argument_type>::type>::type result_type;

    result_type operator()( argument_type x ) const { return *x; }
};
/**
 *  \brief  Helper class implementing the detection whether variables (pointer
 *          or value is valid or not.
 *  \see    IsValid()
 */
template<typename T, bool isPointer = is_pointer<T>::value>
struct is_valid_helper
{
    typedef typename add_lvalue_reference<T>::type  argument_type;
    typedef bool                                    result_type;

    result_type operator()( argument_type ) const { return true; }
};
/**
 *  \brief  Specialization of \ref is_valid_helper for pointer type.
 */
template<typename T>
struct is_valid_helper<T, true>
{
    typedef typename add_lvalue_reference<T>::type  argument_type;
    typedef bool                                    result_type;

    result_type operator()( argument_type x ) const { return x; }
};
/**
 *  \brief  This function was designed to provide unified access using the .
 *          operator to access members of pointers and values. This function
 *          should be used to provide reference to an object in situations, when
 *          the caller does not known, whether accessed variable is a pointer or
 *          value. If given variable is not a pointer, returns reference to
 *          given type, otherwise the pointer will be dereferenced and reference
 *          to underlying object will be returned.
 *  \param  x source variable
 */
template<typename T>
inline typename codasip::detail::get_ref_helper<T>::result_type GetRef( T& x )
{
    return codasip::detail::get_ref_helper<T>()( x );
}
/**
 *  \brief  This function was designed to provide detection whether given
 *          variable is valid or not. For pointers it is checked whether it is
 *          not NULL, values are always valid.
 *  \param  x source variable
 */
template<typename T> inline bool IsValid( T& x )
{
    return codasip::detail::is_valid_helper<T>()( x );
}

/**
 *  \brief  Helper macro for optional call to member function, that is called only when
 *          such method exists.
 *  \param  func Name of function to detect
 *  \param  ret Return type of function
 *  \param  def Default return type that will be returned if method is not present.
 *  \note   Usage:
 *          OPTIONAL_CALL_DEF(Method, int, -1);
 *          int ret = OptionalCallMethod(obj, arg1, arg2);
 */
#ifdef _MSVC

#define OPTIONAL_CALL_DEF(func, ret, def) \
template<typename T, typename...Args> \
inline ret OptionalCall##func(T& obj, Args&&... args) { \
    __if_exists(T::func) {\
        return obj.func(std::forward<Args>(args)...); \
    } \
    return def; \
}

#else

#define OPTIONAL_CALL_DEF(func, ret, def) \
template<class T, typename...Args> \
inline auto OptionalCall##func(T& obj, Args&&... args) -> decltype(&T::func, ret()) { \
    return obj.func(std::forward<Args>(args)...); \
} \
template<typename...Args> \
inline ret OptionalCall##func(Args&&...) { return def; }

#endif

/**
 *  \brief  Helper macto for optional call to void member function
 */
#define OPTIONAL_CALL_DEF_VOID(func) OPTIONAL_CALL_DEF(func, void, void())

/** \} */   // end DOXYGEN group comment

}   // namespace codasip::detail
}   // namespace codasip

#endif // _CODASIP_TYPE_TRAITS_H_
