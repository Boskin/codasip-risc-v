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
 *  \brief   This file contains definition of a class AsmControlUnit. These class serves as main
 *           assembler controller and starts first and second assembler pass.
 *  \author  Adam Husar, Martin Ministr
 *  \date    Jan 1, 2009
 */

#ifndef ASSEMBLER_CONTROL_UNIT_H_
#define ASSEMBLER_CONTROL_UNIT_H_

#include <string>


namespace codasip {
namespace assembler {


class ObjFileTransfUnit;


////////////////////////////////////////////////////////////////////////////////////////////////////
/**
 * \brief Serves as main assembler controller and starts first and second assembler pass.
 */
class AsmControlUnit
{
public:
    AsmControlUnit();

    /**
     * \brief Starts first assembler pass. It consists of parsing input file
     *        and using read intermediate code is stored to section, symbol and relocation tables.
     * \param[in] input Path to input assembler file.
     */
    void StartPassOne(const std::string& input);
    /**
     *  \brief Starts second assembler pass. Uses information from section, symbol
     *         and relocation tables to create output object file.
     *  \param[in] objectFile Path to output object file.
     */
    void StartPassTwo(const std::string& objectFileName);

private:
    void CreateDefaultSection() const;
};

}   // codasip::assembler
}   // codasip

#endif  // ASSEMBLER_CONTROL_UNIT_H_
