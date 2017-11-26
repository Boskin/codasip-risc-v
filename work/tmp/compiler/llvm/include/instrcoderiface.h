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
 *  \date    Jan 1, 2009
 */

#ifndef INSTRCODERIFACE_H_
#define INSTRCODERIFACE_H_

#include <map>
#include <stdio.h>
#include <string>
#include <vector>

#include "asmstdinclude.h"


namespace codasip {
namespace assembler {


class ExprElemBase;
class Token;


////////////////////////////////////////////////////////////////////////////////////////////////////
class ParsedAttrInfo
{
public:
    /// pointer to function which evaluates attribute semantics for given attribute
    typedef void (*EvalAttributeSemantics)(ParsedAttrInfo& info);

    // constructor, this object becomes owner of Token, needed for instruction coder
    ParsedAttrInfo();
    ParsedAttrInfo(const std::string& id, const std::string& signature,
        const Token& expressionToken, const bool duplicate,
        EvalAttributeSemantics evalAttributeSemantics);
    ParsedAttrInfo(const ParsedAttrInfo& copy);

    ~ParsedAttrInfo();

    inline const std::string& GetId() const;
    inline const std::string& GetSignature() const;
    const Token& GetExpressionToken() const;
    inline bool IsRelative() const;
    inline bool IsDuplicate() const;
    inline EvalAttributeSemantics GetEvalAttributeSemantics() const;

    void SetExpressionToken(const Token& value);
    inline void SetRelative(const bool relative);

    /**
     *  \brief Returns expression that represents this token
     *         Creates expression from constant token or copies it from assembler symbol of symbol token
     */
    ExprElemBase& CreateExpression();
    inline void EvaluateAttributeEncoding();

private:
    std::string m_Id;
    std::string m_Signature;
    /// token, could have expression tree from assembler (bison, CodAL, internal shifts and masks)
    const Token* m_ExpressionToken;
    /// if relative, then current address is subtracted first from original value
    bool m_Relative;

    /// flag that attribute is parsed as duplicate (risen from conditional section need)
    bool m_Duplicate;
    /// pointer to evaluate function
    EvalAttributeSemantics m_EvalAttributeSemantics;
};

typedef std::vector<ParsedAttrInfo> ParsedAttrInfos;

////////////////////////////////////////////////////////////////////////////////////////////////////
inline const std::string& ParsedAttrInfo::GetId() const
{
    return m_Id;
}

inline const std::string& ParsedAttrInfo::GetSignature() const
{
    return m_Signature;
}

inline bool ParsedAttrInfo::IsRelative() const
{
    return m_Relative;
}

inline bool ParsedAttrInfo::IsDuplicate() const
{
    return m_Duplicate;
}

inline ParsedAttrInfo::EvalAttributeSemantics ParsedAttrInfo::GetEvalAttributeSemantics() const
{
    return m_EvalAttributeSemantics;
}

inline void ParsedAttrInfo::SetRelative(const bool relative)
{
    m_Relative = relative;
}

inline void ParsedAttrInfo::EvaluateAttributeEncoding()
{
    if (m_EvalAttributeSemantics != NULL)
    {
        m_EvalAttributeSemantics(*this);
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////
/**
 *  \brief Class which stores bit sequence information, start and length of bit sequence
 */
class PlacementInfo
{
public:
    PlacementInfo();
    PlacementInfo(const int start, const int length);

    int GetStart() const;
    int GetLength() const;
    int GetStop() const;

    void SetStart(const int start);
    void SetLength(const int length);

    bool IsPlacementInRange(const PlacementInfo& range) const;
    bool IsPlacementOutRange(const PlacementInfo& range) const;

    /// \return Number of lower bits that were cropped
    std::pair<int,int> CropByRange(const PlacementInfo& range);

    /// \brief Debug function
    const std::string ToString() const;

private:
    /// start of bit sequence
    int m_Start;
    /// length of bit sequence
    int m_Length;
};

typedef std::vector<PlacementInfo> PlacementInfos;
typedef PlacementInfos::const_iterator PlacementInfosCIt;
typedef PlacementInfos::iterator PlacementInfosIt;

////////////////////////////////////////////////////////////////////////////////////////////////////
/**
 *  \brief Used for describing attribute after generation phase. Could be moved on VLIW, etc.
 */
class GenAttrInfo
{
public:
    GenAttrInfo();
    GenAttrInfo(const std::string& ASName, const bool isSigned, const int paramsCount, ...);

    inline const std::string& GetName() const;
    inline bool IsSigned() const;
    const PlacementInfo& GetPlacement(const unsigned int index) const;
    inline size_t GetPlacementCount() const;
    inline int GetPlacementsRShift() const;
    inline bool IsPlacementMaskSet() const;
    inline exprval_t GetPlacementMask() const;
    inline bool IsSignedDontCare() const;

    inline void SetName(const std::string& name);
    inline void SetSigned(const bool value);
    inline void AddPlacement(const PlacementInfo& placement);
    inline void SetPlacementRShift(const int value);
    inline void SetPlacementMaskSet(const bool value);
    inline void SetPlacementMask(const exprval_t value);
    inline void SetSignedDontCare(const bool value);

    /**
     *  \brief Shifts all placement starts by given shift
     *  \param[in] shift performed shift over all starts of placement information
     */
    void MoveAllPlacements(const int shift);

private:
    /// attribute name - matches with attribute name from parsed attribute information
    std::string m_Name;

    bool m_Signed;

    PlacementInfos m_Placements;

    /// additional information that can be set with CreateTranslatedSlot
    /// valid only if there is just one placement in the placements array
    int m_PlacementsRShift;
    bool m_PlacementMaskSet;
    exprval_t m_PlacementMask;
    bool m_SignedDontCare;
};

typedef std::vector<GenAttrInfo> GenAttrInfos;
typedef std::vector<GenAttrInfo>::const_iterator GenAttrInfosCIt;
typedef std::vector<GenAttrInfo>::iterator GenAttrInfosIt;
////////////////////////////////////////////////////////////////////////////////////////////////////
inline const std::string& GenAttrInfo::GetName() const
{
    return m_Name;
}

inline bool GenAttrInfo::IsSigned() const
{
    return m_Signed;
}

inline size_t GenAttrInfo::GetPlacementCount() const
{
    return m_Placements.size();
}

inline int GenAttrInfo::GetPlacementsRShift() const
{
    return m_PlacementsRShift;
}

inline bool GenAttrInfo::IsPlacementMaskSet() const
{
    return m_PlacementMaskSet;
}

inline exprval_t GenAttrInfo::GetPlacementMask() const
{
    return m_PlacementMask;
}

inline bool GenAttrInfo::IsSignedDontCare() const
{
    return m_SignedDontCare;
}

inline void GenAttrInfo::SetName(const std::string& name)
{
    m_Name = name;
}

inline void GenAttrInfo::SetSigned(const bool value)
{
    m_Signed = value;
}

inline void GenAttrInfo::AddPlacement(const PlacementInfo& placement)
{
    m_Placements.push_back(placement);
}

inline void GenAttrInfo::SetPlacementRShift(const int value)
{
    m_PlacementsRShift = value;
}

inline void GenAttrInfo::SetPlacementMaskSet(const bool value)
{
    m_PlacementMaskSet = value;
}

inline void GenAttrInfo::SetPlacementMask(const exprval_t value)
{
    m_PlacementMask = value;
}

inline void GenAttrInfo::SetSignedDontCare(const bool value)
{
    m_SignedDontCare = value;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
/**
 *  \brief Class which stores mapping of instruction from assembler slot to binary slot as coding
 */
class AsmToBinSlot
{
public:
    AsmToBinSlot(const int asmSlot, const int start, const int length);

    int GetAsmSlot() const;
    const PlacementInfo& GetAsmBits() const;

    const std::string ToString() const;

private:
    /// assembler slot from which binary slot be constructed
    int m_AsmSlot;
    /// assembler slot bits which must be taken
    PlacementInfo m_AsmBits;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
typedef std::vector<AsmToBinSlot> AsmToBinSlots;
typedef AsmToBinSlots::const_iterator AsmToBinSlotsCIt;

////////////////////////////////////////////////////////////////////////////////////////////////////
/**
 *  \brief Computed attributes, after parsing, they are used as conditional sections attribute
 */
class ComputedAttributes
{
public:
    void InitFromParseInfo(ParsedAttrInfos& parsedInfos);
    exprval_t Get(const std::string& name);

private:
    typedef std::map<std::string, exprval_t> Attributes;

    const std::string ToString() const;

    // map attribute name - value
    Attributes m_Data;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
void StrAppendStr(std::string& dst, const size_t pos, const std::string& src);

}   // codasip::assembler
}   // codasip

#endif  // ICODERIFACESTRUCT_H_
