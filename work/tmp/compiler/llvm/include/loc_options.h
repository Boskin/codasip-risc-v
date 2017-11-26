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
 *  \author  Martin Ministr
 *  \date    5. 12. 2016
 */


#ifndef ASSEMBLER_LOC_OPTIONS_H_
#define ASSEMBLER_LOC_OPTIONS_H_


namespace codasip {
namespace assembler {


////////////////////////////////////////////////////////////////////////////////////////////////////
/**
 *  \brief Represents directive '.loc' options
 */
class LocOptions
{
public:
    const int NOT_SET = -1;

    LocOptions()
      : m_BasicBlock(false),
        m_PrologueEnd(false),
        m_EpilogueBegin(false),
        m_IsDiscriminator(false),
        m_Discriminator(NOT_SET)
    {}

    inline bool IsBasicBlock() const
    {
        return m_BasicBlock;
    }
    inline bool IsPrologueEnd() const
    {
        return m_PrologueEnd;
    }
    inline bool IsEpilogueBegin() const
    {
        return m_EpilogueBegin;
    }
    inline bool IsDiscriminator() const
    {
        return m_IsDiscriminator;
    }
    inline int GetDiscriminator() const
    {
        return m_Discriminator;
    }

    inline void SetBasicBlock(const bool value)
    {
        m_BasicBlock = value;
    }
    inline void SetPrologueEnd(const bool value)
    {
        m_PrologueEnd = value;
    }
    inline void SetEpilogueBegin(const bool value)
    {
        m_EpilogueBegin = value;
    }
    inline void SetDiscriminator(const int value)
    {
        m_IsDiscriminator = true;
        m_Discriminator = value;
    }

private:
    bool m_BasicBlock;
    bool m_PrologueEnd;
    bool m_EpilogueBegin;
    //m_IsStmt;
    //m_Isa;
    bool m_IsDiscriminator;
    int m_Discriminator;
};

}   // codasip::assembler
}   // codasip

#endif  // ASSEMBLER_LOC_OPTIONS_H_
