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
 *  \author Zdenek Prikryl
 *  \date   Nov 24, 2014
 *  \brief  Declaration/Implementation of the class.
 */

#ifndef LOCATION_H_
#define LOCATION_H_

#include "filesystem.h"

#include <ostream>

namespace codasip {

/**
 *  \addtogroup CODASIP_UTILITY
 *  \{
 *  \class codasip::Location
 *  \brief class holding location info
 *  \}
 */
class Location
{
public:
    /**
     * \brief Constructor
     * \param file Path
     * \param line Line number
     */
    Location(const filesystem::Path& file = "",
        const int line = 0,
        const int column = 0);
    /**
     * \brief Getter
     */
    bool Empty() const;
    int GetLine() const;
    int GetColumn() const;
    const filesystem::Path& GetFile() const;
    /**
     * \}
     * \brief Setter
     */
    void SetFile(const filesystem::Path& file);
    void SetLine(const int line);
    void SetColumn(const int column);
    /** \} */

private:
    /// file name including path
    filesystem::Path m_File;
    /// line number
    int m_Line;
    int m_Column;
};

/**
 *  \{
 *  \brief  Compare two locations.
 *  \param  l First location.
 *  \param  l Second location.
 */
inline bool operator==(const Location& l, const Location& r)
{
    return l.GetFile() == r.GetFile()
        && l.GetLine() == r.GetLine()
        && l.GetColumn() == r.GetColumn();
}

inline bool operator!=(const Location& l, const Location& r)
{
    return !(l == r);
}
/** \} */

////////////////////////////////////////////////////////////////////////////////////////////////////
//                                        Public interface                                        //
////////////////////////////////////////////////////////////////////////////////////////////////////
inline Location::Location(const filesystem::Path& file, const int line, const int column)
  : m_File(file),
    m_Line(line),
    m_Column(column)
{}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline bool Location::Empty() const
{
    return GetFile().Empty();
}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline int Location::GetLine() const
{
    return m_Line;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline int Location::GetColumn() const
{
    return m_Column;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline const filesystem::Path& Location::GetFile() const
{
    return m_File;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline bool operator<(const Location& lhs, const Location& rhs)
{
    return (lhs.GetFile() == rhs.GetFile())
        ? ((lhs.GetLine() == rhs.GetLine())
            ? (lhs.GetColumn() < rhs.GetColumn())
            : (lhs.GetLine() < rhs.GetLine()))
        : lhs.GetFile() < rhs.GetFile();
}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline void Location::SetFile(const filesystem::Path& file)
{
    m_File = file;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline void Location::SetLine(const int line)
{
    m_Line = line;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline void Location::SetColumn(const int column)
{
    m_Column = column;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline std::ostream& operator<<(std::ostream& stream, Location location)
{
    stream << location.GetFile() << ":" << location.GetLine();
    if (location.GetColumn())
    {   // print column if there is any
        stream << ":" << location.GetColumn();
    }
    return stream;
}

}   // namespace codasip

#endif  // LOCATION_H_
