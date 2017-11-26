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
 *  \author Libor Vasicek
 *  \date   2016-09-01
 *  \brief  Declaration/Implementation of the class.
 */

#ifndef UTILITY_MESSAGES_FORMAT_NUMBER_H_
#define UTILITY_MESSAGES_FORMAT_NUMBER_H_

#include "codasip_integer.h"

#include <cstdint>

namespace codasip {

// Forward declaration
class FormatItem;

}   // namespace codasip

namespace codasip {
namespace format {

/**
 *  \brief  Class to passing numbers with different types.
 */
class Number
{
public:
    /**
     *  \brief  Create number.
     *  \param  value Value of number.
     */
    template<class T>
    Number(const T& value);
    /**
     *  \brief  Getter.
     */
    FormatItem& GetFormatItem() const;

private:
    static FormatItem* GetFormatItem(const int32_t);
    static FormatItem* GetFormatItem(const uint32_t);
    static FormatItem* GetFormatItem(const int64_t);
    static FormatItem* GetFormatItem(const uint64_t);
    static FormatItem* GetFormatItem(const codasip::MaxInt&);
    static FormatItem* GetFormatItem(const codasip::MaxUint&);
    template<unsigned T>
    static FormatItem* GetFormatItem(const codasip::Int<T>&);
    template<unsigned T>
    static FormatItem* GetFormatItem(const codasip::Uint<T>&);

    /// Stores value of number.
    mutable FormatItem* m_Value;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
//                                        Public interface                                        //
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T>
inline Number::Number(const T& value)
  : m_Value(GetFormatItem(value))
{}

////////////////////////////////////////////////////////////////////////////////////////////////////
//                                       Private interface                                        //
////////////////////////////////////////////////////////////////////////////////////////////////////
template<unsigned T>
inline FormatItem* Number::GetFormatItem(const codasip::Int<T>& value)
{
    return GetFormatItem(codasip::MaxInt(value));
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<unsigned T>
inline FormatItem* Number::GetFormatItem(const codasip::Uint<T>& value)
{
    return GetFormatItem(codasip::MaxUint(value));
}

}   // namespace codasip::format
}   // namespace codasip

#endif  // UTILITY_MESSAGES_FORMAT_NUMBER_H_
