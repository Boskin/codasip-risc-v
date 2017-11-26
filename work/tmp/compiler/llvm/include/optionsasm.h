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
 *  \author Tomas Ondrus
 *  \date   Mar 31, 2015
 *  \brief  Declaration/Implementation of the class.
 */

#ifndef GETOPTL_INTERFACE_OPTIONSASM_H_
#define GETOPTL_INTERFACE_OPTIONSASM_H_

#include "basicoptions.h"

namespace codasip {
namespace getopt {

class AssemblerOptions : public virtual BasicOptions
{
public:
    virtual const std::string& GetInput() const = 0;
    virtual const std::string& GetOutput() const = 0;
    virtual bool IsNoWarnOverflow() const = 0;
    virtual bool IsUseInputAsSectionSuffix() const = 0;
    virtual bool IsCommToCurrentSection() const = 0;
    virtual bool IsNoRemoveTwoDotsId() const = 0;
    virtual bool IsKeepOutputName() const = 0;
    virtual bool IsGetMemoryInfo() const = 0;
    virtual bool IsPrintAddressSpaceInfo() const = 0;
    virtual const std::string& GetDebugLevel() const = 0;
    virtual bool IsNoRetvalInfo() const = 0;

    static AssemblerOptions* Create();
};

}
}

#endif  // GETOPTL_INTERFACE_OPTIONSASM_H_
