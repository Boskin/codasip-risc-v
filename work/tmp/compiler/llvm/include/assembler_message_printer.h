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
 *  \author Martin Ministr
 *  \date   2016-08-29
 *  \brief  Declaration of the class codasip::assembler::MessagePrinter.
 */

#ifndef CODASIP_ASSEMBLER_MESSAGE_PRINTER_H_
#define CODASIP_ASSEMBLER_MESSAGE_PRINTER_H_

#include "message_printer.h"    // messagesl

#include <vector>

namespace codasip {

// Forward declaration
class Message;

}

namespace codasip {
namespace assembler {

class Message
{
public:
    Message(codasip::Message&& other);
    Message(Message&& other);
    ~Message();

    /**
     *  \{
     *  \brief  Object is movable only.
     */
    Message(const Message& other) = delete;
    Message& operator =(const Message& other) = delete;
    /** \} */

    bool IsInvalidated() const;
    codasip::Message& GetMessage() const;

    void Invalidate();

private:
    codasip::Message* m_Message;
};

typedef std::vector<Message> MessageList;

class MessagePrinterBase
{
protected:
    void DoPrint(const MessageList& messageList) const;
};

class MessagePrinter : public codasip::MessagePrinter<MessagePrinterBase, Message>
{
public:
    MessagePrinter(codasip::Message&& other);
    MessagePrinter(MessagePrinter&& other);

    /**
     *  \{
     *  \brief Object is movable only.
     */
    MessagePrinter(MessagePrinter& other) = delete;
    MessagePrinter& operator =(const MessagePrinter& other) = delete;
    /** \} */
};

}   // namespace codasip::assembler
}   // namespace codasip

#endif // CODASIP_ASSEMBLER_MESSAGE_PRINTER_H_
