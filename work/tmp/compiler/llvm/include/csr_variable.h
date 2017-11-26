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
 *  \author Zdenek Prikryl
 *  \date   Mar 9, 2016
 *  \brief  Declaration/Implementation of the class.
 */

#ifndef SIMULATORS2_RESOURCES_CSR_VARIABLE_H_
#define SIMULATORS2_RESOURCES_CSR_VARIABLE_H_

#include "csr_helpers.h"

#include <string>

namespace codasip {
namespace resources {

/**
 *  \addtogroup SIMULATOR
 *  \{
 *  \class  codasip::resources::Variable
 *  \brief  Just a wrapper around an variable
 *  \}
 */
template<class T>
class Variable : public T
{
public:
    /**
     * \copydoc Sentinel::Sentinel
     */
    Variable(const std::string& name, const Uid uid);
};

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline Variable<T>::Variable(const std::string& name, const Uid uid)
  : T(name, uid)
{}

}   // namespace resources
}   // namespace codasip

#endif  // SIMULATORS2_RESOURCES_CSR_VARIABLE_H_
