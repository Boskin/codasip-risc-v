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

#ifndef MESSAGESL_MESSAGE_GROUP_H_
#define MESSAGESL_MESSAGE_GROUP_H_

#include <string>

namespace codasip {

/**
 *  \class  codasip::MessageGroup
 *  \brief  Print all stored messages.
 */
template<class T>
class MessageGroup
{
public:
    /**
     *  \brief  Create message group.
     *  \param  type Group type.
     *  \param  name Name of group.
     *  \param  info Extended information about group.
     */
    MessageGroup(const T type,
        const int severity = 0,
        const std::string& name = std::string(),
        const std::string& info = std::string());

    /**
     *  \{
     *  \brief  Getter.
     */
    T GetType() const;
    int GetSeverity() const;
    const std::string& GetName() const;
    const std::string& GetInfo() const;
    /** \} */

    /**
     *  \brief  Comparison operator for ordered container support.
     *  \param  other Other object to compare.
     */
    bool operator<(const MessageGroup& other) const;

private:
    /// Group type
    const T m_Type;
    /// Severity level
    const int m_Severity;
    /// Name of group
    const std::string m_Name;
    /// Extended information about group
    const std::string m_Info;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
//                                        Public interface                                        //
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T>
inline MessageGroup<T>::MessageGroup(const T type,
    const int severity,
    const std::string& name,
    const std::string& info)
  : m_Type(type),
    m_Severity(severity),
    m_Name(name),
    m_Info(info)
{}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T>
T MessageGroup<T>::GetType() const
{
    return m_Type;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T>
int MessageGroup<T>::GetSeverity() const
{
    return m_Severity;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T>
const std::string& MessageGroup<T>::GetName() const
{
    return m_Name;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T>
const std::string& MessageGroup<T>::GetInfo() const
{
    return m_Info;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T>
bool MessageGroup<T>::operator<(const MessageGroup& other) const
{
    return m_Type < other.m_Type;
}

}   // namespace codasip

#endif  // MESSAGESL_MESSAGE_GROUP_H_
