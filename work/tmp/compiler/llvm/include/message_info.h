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
 *  \author Libor Vasicek
 *  \date   2016-08-29
 *  \brief  Declaration/Implementation of the class.
 */

#ifndef MESSAGESL_MESSAGE_INFO_H_
#define MESSAGESL_MESSAGE_INFO_H_

#include <memory>

namespace codasip {

// Forward declaration
class FormatPattern;

class MessageInfoBase
{
public:
    /**
     *  \brief  Default constructors and move constructors. Needed for VS
     */
    MessageInfoBase();
    MessageInfoBase(MessageInfoBase&&);
    ~MessageInfoBase();
    MessageInfoBase(const MessageInfoBase&) = delete;
    /**
     *  \brief  Return newly created pattern format.
     */
    FormatPattern& CreatePattern();
    /**
     *  \{
     *  \brief  Getter.
     */
    FormatPattern& GetPattern();
    const FormatPattern& GetPattern() const;
    /** \} */

private:
    /// Message pattern
    std::unique_ptr<FormatPattern> m_Pattern;
};

/**
 *  \class  codasip::MessageInfo
 *  \brief  Stores all information about message.
 */
template<class T = void>
class MessageInfo : public MessageInfoBase
{
public:
    /**
     *  \brief  Default constructor.
     */
    MessageInfo();
    /**
     *  \brief  Create message info.
     *  \param  group Message group.
     */
    explicit MessageInfo(const T& group);
    /**
     *  \brief  Default move constructor, needed for VS
     */
    MessageInfo(MessageInfo<T>&&);
    MessageInfo(const MessageInfo<T>&) = delete;
    /**
     *  \{
     *  \brief  Getter.
     */
    const T& GetGroup() const;
    /** \} */

private:
    /// Message group
    const T* m_Group;
};

/**
 *  \class  codasip::MessageInfo
 *  \brief  Stores all information about message.
 */
template<>
class MessageInfo<void> : public MessageInfoBase
{
public:
    /**
     *  \brief  Constructors. Needed for VS
     */
    MessageInfo();
    MessageInfo(MessageInfo<void>&&);
    MessageInfo(const MessageInfo<void>&) = delete;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
//                                        Public interface                                        //
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T>
inline MessageInfo<T>::MessageInfo()
  : m_Group(nullptr)
{}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T>
inline MessageInfo<T>::MessageInfo(MessageInfo<T>&& rhs)
  : MessageInfoBase(std::move(rhs)),
    m_Group(rhs.m_Group)
{}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T>
inline MessageInfo<T>::MessageInfo(const T& group)
  : m_Group(&group)
{}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T>
inline const T& MessageInfo<T>::GetGroup() const
{
    CHECK_NOT_NULL(m_Group);
    return *m_Group;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline MessageInfo<void>::MessageInfo()
{}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline MessageInfo<void>::MessageInfo(MessageInfo<void>&& rhs)
  : MessageInfoBase(std::move(rhs))
{}

}   // namespace codasip

#endif  // MESSAGESL_MESSAGE_INFO_H_
