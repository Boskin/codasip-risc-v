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
 *  \date   2016-07-23
 *  \brief  Declaration/Implementation of the class.
 */

#ifndef MESSAGESL_MESSAGE_PRINTER_H_
#define MESSAGESL_MESSAGE_PRINTER_H_

#include "check_condition.h"

#include <vector>

namespace codasip {

/**
 *  \class  codasip::MessagePrinter
 *  \brief  Print all stored messages.
 */
template<class T, class Message>
class MessagePrinter : public T
{
public:
    /**
     *  \brief  Store message for printing.
     *  \param  message Message to print which has to be r-value;
     */
    MessagePrinter(Message&& message);
    /**
     *  \brief  Move constructor.
     */
    MessagePrinter(MessagePrinter&& other);
    /**
     *  \brief  Print all messages.
     */
    ~MessagePrinter();

    /**
     *  \{
     *  \brief Object is movable only.
     */
    MessagePrinter(MessagePrinter& other) = delete;
    MessagePrinter& operator =(const MessagePrinter& other) = delete;
    /** \} */

    /**
     *  \brief  Allow message chaining.
     *  \param  message Message to print as a complementary information for main massage.
     */
    MessagePrinter& operator <<(Message&& message);
    /**
     *  \brief  Print all messages if not printed already.
     */
    void Print() const;

private:
    typedef std::vector<Message> MessageList;

    mutable MessageList m_MessageList;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
//                                        Public interface                                        //
////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T, class Message>
inline MessagePrinter<T, Message>::MessagePrinter(Message&& message)
{
    m_MessageList.push_back(std::move(message));
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T, class Message>
inline MessagePrinter<T, Message>::MessagePrinter(MessagePrinter&& other)
  : T(std::move(other)),
    m_MessageList(std::move(other.m_MessageList))
{}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T, class Message>
inline MessagePrinter<T, Message>::~MessagePrinter()
{
    if (!m_MessageList.empty() && !m_MessageList[0].IsInvalidated())
    {   // if object hasn't been moved, print it
        Print();
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T, class Message>
inline MessagePrinter<T, Message>& MessagePrinter<T, Message>::operator <<(Message&& message)
{
    DEBUG_CONDITION(!m_MessageList.empty())
        << "Message printer has been moved!";
    DEBUG_CONDITION(!m_MessageList[0].IsInvalidated())
        << "Message chain cannot continue because message has been printed already!";

    m_MessageList.push_back(std::move(message));
    return *this;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T, class Message>
inline void MessagePrinter<T, Message>::Print() const
{
    DEBUG_CONDITION(!m_MessageList.empty())
        << "Message printer has been moved!";
    DEBUG_CONDITION(!m_MessageList[0].IsInvalidated())
        << "Message has been printed already!";

    // user implementation of printer
    T::DoPrint(m_MessageList);

    for (Message& message : m_MessageList)
    {   // invalidate all messages not to be printed again
        message.Invalidate();
    }
}

}   // namespace codasip

#endif  // MESSAGESL_MESSAGE_PRINTER_H_
