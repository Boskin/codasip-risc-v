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
 * \brief  Singleton design pattern implementation
 * \author Hons Petr
 * \date   2014-10-13
 */

#ifndef UTILITY_SINGLETON_H_
#define UTILITY_SINGLETON_H_

#include <memory>  // unique_ptr

#include "noncopyable.h"

namespace codasip {

/**
 *  \brief  Sets needed friend classes so singleton can be properly initialized.
 */
#define SINGLETON(type) \
    public: \
        ~type(); \
    protected: \
        type(); \
	    type(const type&) = delete; \
        type& operator=(const type&) = delete; \
        friend class codasip::Singleton<type>; \
        friend class std::unique_ptr<type>

/**
 *  \class  Singleton
 *  \brief  Implements singleton design pattern. Only one instance of given type can exist.
 *          Use SINGLETON macro to implement needed methods.
 *
 *          \code
 *          class Testing : public Singleton<Testing>
 *          {
 *
 *              ... code ...
 *
 *              SINGLETON(Testing);
 *          }
 *          \endcode
 */
template <typename Type>
class Singleton
{
public:
    /**
     *  \brief  Returns single unique instance of singleton class
     *  \return Single unique instance of singleton
     */
    static Type& Instance();
    /**
     *  \brief  Deletes internally stored singleton class
     */
    static void Destroy();

protected:
    /**
     *  \brief  Contains and creates statically allocated unique_ptr, that contains unique singleton
     *          object.
     *  \return Reference to unique_ptr object that manages singleton object.
     */
    static std::unique_ptr<Type>& GetInstance();
};

////////////////////////////////////////////////////////////////////////////////////////////////////
template <typename Type>
Type& Singleton<Type>::Instance()
{
    return *GetInstance();
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <typename Type>
std::unique_ptr<Type>& Singleton<Type>::GetInstance()
{
    static std::unique_ptr<Type> instance(new Type);
    return instance;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <typename Type>
void Singleton<Type>::Destroy()
{
    // first delete and let the pointer in singleton so it can be accessed
    delete GetInstance().get();
    // now is pointer invalid so release it out of unique_ptr
    GetInstance().release();
}

}   // namespace codasip

#endif /* UTILITY_SINGLETON_H_ */
