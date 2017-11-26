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
 *  \brief   Part of assembler
 *  \author  Adam Husar
 *  \date    2016
 */

#ifndef ASMPROFILEINFO_H_
#define ASMPROFILEINFO_H_

#include <string>


namespace codasip {
namespace assembler {


class AsmSection;


class AsmProfileInfoUtil
{
public:
    /**
     *  \brief Use current section and current address
     */
    static void AddProfileInfo(const std::string& flagsStr, const std::string& blockName);

private:

    static AsmSection& GetProfileInfoSection();
    static void AppendStringZero(AsmSection& targetSection, const std::string& s);
    static void AppendChar(AsmSection& targetSection, const char c);
    static void AppendRelocation(AsmSection& targetSection);

    static size_t m_ProfileSymbolCount;
};

}   // codasip::assembler
}   // codasip

#endif // ASMPROFILEINFO_H_
