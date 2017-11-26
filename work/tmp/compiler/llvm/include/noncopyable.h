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
 *  \date   25. 9. 2014
 *  \brief  Definition of the class codasip::NonCopyable.
 */


#ifndef UTILITY_NONCOPYABLE_H_
#define UTILITY_NONCOPYABLE_H_

namespace codasip {

/**
 *  \addtogroup CODASIP_UTILITY
 *  \{
 *  \class  codasip::NonCopyable
 *  \brief  This class ensures, that derived classes do not support copy
 *          semantic. Should be used to prohibit copy construction and copy
 *          assignment. Should be used like this:
 *  \code
 *  // new class declaration
 *  class NewClassType : private NonCopyable
 *  {
 *      // ... declarations inside the class
 *  };
 *  \endcode
 *  \}
 */
class NonCopyable
{
protected:
    /**
     *  \{
     *  \brief  Default (empty) constructor/destructor implementations.
     */
    NonCopyable() {}
    ~NonCopyable() {}
private:
    /**
     *  \} \{
     *  \brief  Declared but not defined copy constructor and assignment
     *          operator prevent compiler to generate default implementations.
     */
    NonCopyable( const NonCopyable& );
    NonCopyable& operator=( const NonCopyable& );
    /** \} */
};

}   // namespace codasip

#endif // UTILITY_NONCOPYABLE_H_
