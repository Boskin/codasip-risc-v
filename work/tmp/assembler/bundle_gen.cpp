/**
 * Codasip Ltd
 *
 * CONFIDENTIAL
 *
 * Copyright 2017 Codasip Ltd
 *
 * All Rights Reserved.
 * This file is part of the Codasip Studio product. No part of the Studio product, including this
 * file, may be use, copied, modified, or distributed except in accordance with the terms contained
 * in Codasip license agreement under which you obtained this file.
 *
 * \file
 * \date    2017-11-25
 * \author  Codasip (c) Assembler generator
 * \version 6.8.2-1.win.7.EVALUATION
 * \brief   Source for assembler
 */

#include "bundle_gen.h"

#include <cstdarg>
#include <cstdio>

#include "check_condition.h"

#include "assembler_messages.h"
#include "logical_file_info.h"
#include "usedattr.h"


using namespace std;

namespace codasip {
namespace assembler {

void codasip_print(const char * fmt, ...)
{
    va_list vl;
    va_start(vl, fmt);
    vprintf(fmt, vl);
    va_end(vl);
}

void codasip_info(const int type, const char * fmt, ...)
{
    codasip_print("info: ");
    va_list vl;
    va_start(vl, fmt);
    vprintf(fmt, vl);
    va_end(vl);
    printf("\n");
}

void codasip_warning(const int type, const char * fmt, ...)
{
    codasip_print("warning: ");
    va_list vl;
    va_start(vl, fmt);
    vprintf(fmt, vl);
    va_end(vl);
    printf("\n");
}

void codasip_error(const int type, const char * fmt, ...)
{
    codasip_print("error: ");
    va_list vl;
    va_start(vl, fmt);
    vprintf(fmt, vl);
    va_end(vl);
    printf("\n");
}

void codasip_fatal(const int rc, const char * fmt, ...)
{}

struct bundle_state_t
{
    bool is_align_end;
    uint64_t current_address;
};

template<int BITS>
struct bundle
{
    bundle()
      : size(0)
    {}

    template<int R_BITS>
    bundle(const bundle<R_BITS>& copy) :
        value(copy.value),
        size(copy.size)
    {}

    bundling_int<BITS> value;
    uint32_t size;
};

template<int BITS>
void FillFixupInfo(bundling_int<BITS>& instr, const InstrWithFixups& inputInstr)
{
    const std::vector<FixupInfo>& fixups = inputInstr.GetFixups();
    for (int fixupIndex = 0; fixupIndex < fixups.size(); fixupIndex++)
    {
        const FixupInfo& fixup = fixups[fixupIndex];
        for (int bit = fixup.GetFirstBitInstrRelative(), fixupBit = fixup.GetFirstBit();
            bit <= fixup.GetLastBitInstrRelative(); bit++, fixupBit++)
        {
            instr.SetFixupBit(bit, fixupIndex, fixupBit);
        }
    }
}


BundlingBitInfo::Content call_fbundle_generated(int& res_size, const std::vector<InstrWithFixups>& inputInstrs, const bool bundleAlignEnd, const exprval_t currentAddress)
{
    switch (codasip_switch_MI5start)
    {
        case CODASIP_SWITCH_VALUE_MI13default_start:
        {
            THROW_ERROR() << "Bundling is not supported." << endl;
            BundlingBitInfo::Content content;
            return content;
        }
        default:
        {
            THROW_ERROR() << "Unknown IS in call_fbundle_generated" << endl;
            BundlingBitInfo::Content content;
            return content;
        }
    }
}

bool has_fbundle_generated()
{
    switch (codasip_switch_MI5start)
    {
        case CODASIP_SWITCH_VALUE_MI13default_start:
        {
            return false;
        }
        default:
        {
            THROW_ERROR() << "Unknown IS in has_fbundle_generated" << endl;
            return false;
        }
    }
}

}
}
