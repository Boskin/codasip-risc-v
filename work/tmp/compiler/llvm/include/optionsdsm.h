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
 *  \author tomxi
 *  \date   Mar 31, 2015
 *  \brief  Declaration/Implementation of the class.
 */

#ifndef GETOPTL_INTERFACE_OPTIONSDSM_H_
#define GETOPTL_INTERFACE_OPTIONSDSM_H_

#include "basicoptions.h"
#include "toolstypes.h"

namespace codasip {
namespace getopt {

class DisassemblerOptions : public virtual BasicOptions
{
public:

    /// formats of disassemble output
    typedef enum {
        FORMAT_CODASIP,
        FORMAT_OBJDUMP,
        FORMAT_SIMPLE
    } Format;

    virtual const std::string& GetInput() const = 0;
    virtual const std::string& GetOutput() const = 0;
    virtual codasip_address_t GetStartAddress() const = 0;
    virtual codasip_address_t GetStopAddress() const = 0;
    virtual bool GetObjdumpOutput() const = 0;
    virtual bool GetObjdumpOutputAll() const = 0;
    virtual bool GetSimpleOutput() const = 0;
    virtual bool GetSimpleOutputAll() const = 0;
    virtual bool GetNoShowRawInsn() const = 0;
    virtual bool GetSource() const = 0;
    virtual bool HasOutput() const = 0;
    virtual bool HasStartAddress() const = 0;
    virtual bool HasStopAddress() const = 0;
    virtual Format GetFormat() const = 0;
    virtual bool GetPrintAllSections() const = 0;

    static DisassemblerOptions* Create();
};

}
}

#endif  // GETOPTL_INTERFACE_OPTIONSDSM_H_
