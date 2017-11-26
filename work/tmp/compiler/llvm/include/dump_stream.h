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
 *  \author Petr Hons
 *  \date   3. 10. 2016
 *  \brief  Declaration/Implementation of the class.
 */

#ifndef DUMPL_DUMP_STREAM_H_
#define DUMPL_DUMP_STREAM_H_

#include <limits.h>     // CHAR_BIT

#include <iosfwd>
#include <iomanip>
#include <sstream>

#include "codasiputils.h"
#include "codasip_interface.h"
#include "codasip_integer.h"

namespace codasip {
namespace simulator {
class SimulatorPrivateInterface;
class DumpStreamIterator;
class Log;

class DumpStream
{
public:
    template<class T, bool Is>
    using IsIntegral = typename std::enable_if<std::is_integral<typename std::decay<T>::type>::value == Is>::type;

    typedef enum {
        FORMAT_INVALID = 0,
        FORMAT_CODASIP,
        FORMAT_VCD
    } Format;

    static DumpStream* Create(std::ostream& os, const Format format = FORMAT_CODASIP);

    DumpStream(std::ostream& output);
    virtual ~DumpStream() {}
    /**
     *  \brief  Dump current clock cycle if it has changed from last invocation of this method.
     */
    virtual void DumpClockCycle(const uint64_t cc) = 0;
    /**
     *  \brief  Dump data into the file
     */
    template<class T>
    IsIntegral<T, true> Dump(const std::string& id, T&& data);
    template<class T>
    IsIntegral<T, false> Dump(const std::string& id, T&& data);

    /**
     *  \brief  Dump addressable data into the file
     */
    template<class T>
    IsIntegral<T, true> DumpAddr(const std::string& id, T&& data, const Address addr, const unsigned dataBits);
    template<class T>
    IsIntegral<T, false> DumpAddr(const std::string& id, T&& data, const Address addr, const unsigned dataBits);
    /**
     *  \brief  Finish generation of data dump. Can be used by some implementations to reformat
     *          dumped data with headers etc. Will be automatically called from destructor.
     */
    virtual bool Finish() = 0;

protected:
    virtual void DoDump(const std::string& id,
        const std::string& data,
        const unsigned bw,
        const Address addr = INVALID_ADDRESS) = 0;

    /// Last clock cycle used that was dumped.
    uint64_t m_LastClockCycle;
    /// Output stream - either user defined or opened file
    std::ostream& m_Output;
};

struct DumpStreamIteratorValue
{
    DumpStreamIteratorValue() : m_ClockCycle(-1), m_Address(INVALID_ADDRESS) {}
    bool HasValidAddress()
    {
        return m_Address != INVALID_ADDRESS;
    }

    uint64_t m_ClockCycle;
    std::string m_Id;
    std::string m_Data;
    Address m_Address;
};

class DumpStreamIterator:
    public std::iterator<std::forward_iterator_tag, // Forward iterator type
                         const DumpStreamIteratorValue>        // Reference type
{
public:
    /**
     * \brief  Constructor. Creates end iterator.
     * \note   Use as end constructor for all object of type DirectoryIterator
     */
    DumpStreamIterator(std::istream& file);
    /**
     * \brief  Constructor. Creates end iterator.
     * \note   Use as end constructor for all object of type DirectoryIterator
     */
    DumpStreamIterator();
    /**
     * \brief  Dereference iterator to get current file object reference.
     */
    const DumpStreamIteratorValue& operator*() const;
    /**
     * \brief  Dereference iterator to get current file object pointer.
     */
    const DumpStreamIteratorValue* operator->() const;
    /**
     * \brief  Advance iterator one file/directory forward. If no file/directory is found
     *         iterator will be equal to end iterator (created by \ref DirectoryIterator()).
     */
    DumpStreamIterator& operator++();
    /**
     * \brief  Checks equality of 2 iterators.
     * \param  it Iterator to be checked against this iterator.
     * \return true, if \p it and this iterator are equal, false otherwise.
     */
    bool Equal(const DumpStreamIterator& it) const;
    /**
     * \brief Get current line
     */
    size_t GetLine() const;

private:
    bool Traverse();

    std::istream* m_Stream;
    size_t m_Line;
    std::string m_Buffer;
    DumpStreamIteratorValue m_Value;
};

/**
 * \brief  Checks equality of 2 iterators.
 * \param  lhs Iterator to be checked for equality.
 * \param  rhs Iterator to be checked for equality.
 * \return true, if \p lhs and \p rhs are equal, false otherwise.
 */
inline bool operator==(DumpStreamIterator const& lhs,DumpStreamIterator const& rhs)
{
    return lhs.Equal(rhs);
}
/**
 * \brief  Checks inequality of 2 iterators.
 * \param  lhs Iterator to be checked for inequality.
 * \param  rhs Iterator to be checked for inequality.
 * \return false, if \p lhs and \p rhs are equal, true otherwise.
 */
inline bool operator!=(DumpStreamIterator const& lhs, DumpStreamIterator const& rhs)
{
    return !lhs.Equal(rhs);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T>
inline DumpStream::IsIntegral<T, true> DumpStream::Dump(const std::string& id, T&& data)
{
    std::stringstream stream;
    stream << std::setfill ('0')
           << std::setw(sizeof(T)*2)
           << std::hex << +data;
    DoDump(id, stream.str(), sizeof(T)*CHAR_BIT);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T>
inline DumpStream::IsIntegral<T, false> DumpStream::Dump(const std::string& id, T&& data)
{
    DoDump(id, data.get_hex(false, false), data.BIT_WIDTH);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T>
inline DumpStream::IsIntegral<T, true> DumpStream::DumpAddr(const std::string& id,
    T&& data,
    const Address addr,
    const unsigned dataBits)
{
    const auto mask = BitMask<typename std::decay<T>::type>(dataBits);

    std::stringstream stream;
    stream << std::setfill ('0')
           << std::setw(((dataBits-1) / 4) + 1)
           << std::hex << ((+data) & mask);

    DoDump(id, stream.str(), dataBits, addr);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T>
inline DumpStream::IsIntegral<T, false> DumpStream::DumpAddr(const std::string& id,
    T&& data,
    const Address addr,
    const unsigned dataBits)
{
    DoDump(id, data.get_hex(false, false, dataBits), dataBits, addr);
}

}   // namespace codasip::simulator
}   // namespace codasip

#endif  // DUMPL_DUMP_STREAM_H_
