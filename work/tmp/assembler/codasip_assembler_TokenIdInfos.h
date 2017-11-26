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
 * \project MI7RISC_V5
 */
#ifndef CODASIP_ASSEMBLER_TOKENIDINFOS_0_H_
#define CODASIP_ASSEMBLER_TOKENIDINFOS_0_H_

#include <vector>

#include "token_id_info.h"

namespace codasip {
namespace assembler {

/**
 * \class TokenIdInfos
 */
class TokenIdInfos : public std::vector<TokenIdInfo>
 {
private:
    static TokenIdInfos m_Instance;
public:
    /**
     * \brief Instance
     */
    static TokenIdInfos& Instance();
    /**
     * \brief TokenIdInfos
     */
    TokenIdInfos();
    /**
     * \brief ReplaceTokenNames
     */
    static void ReplaceTokenNames(std::string& res, const char* src);
};
} // namespace assembler
} // namespace codasip

#endif // CODASIP_ASSEMBLER_TOKENIDINFOS_0_H_
