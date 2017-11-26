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
 * \brief	Header file for cross-platform IO streams
 * \author	Hons Petr
 * \date	9.7.2014
 */
#ifndef IO_H_
#define IO_H_

#include <fcntl.h>
#ifdef _WIN32
    #include <io.h>
#else
	#include <unistd.h>
#endif

#include <fstream>

#include "filesystem.h"

namespace codasip
{
namespace io
{

/**
 * \addtogroup OS
 * \{
 * \addtogroup Filesysteml
 * \{
 */
/**
 * \brief Copy of ios_base opening modes for usage as codasip::io::in
 */
typedef std::ios_base::openmode	mode;
/**
 * \{
 * \brief Access modes used in opening a I/O stream.
 */
static const mode app		= std::ios_base::app;
static const mode ate		= std::ios_base::ate;
static const mode binary	= std::ios_base::binary;
static const mode in		= std::ios_base::in;
static const mode out		= std::ios_base::out;
static const mode trunc		= std::ios_base::trunc;
/**
 * \}
 */

//TODO: modify for long windows path handling, so far only wrapper
/**
 * \class Fstream
 * \brief Class for uniform and cross-platform file I/O
 *        access using C++ streams. Same interface as standard
 *        std::fstream.
 */
class Fstream : public std::fstream
{
public:
    /**
    * \brief Open not associated input / output stream
    */
	Fstream() : std::fstream() {}
    /**
     * \brief Open file for both input and output.
     * \param file File to be opened.
     * \param m Mode used for opening stream for \p file (in, out, app, etc.).
     */
	explicit Fstream(const filesystem::Path& file, mode m = in | out) : std::fstream()
    {
        Open(file, m);
    }
    /**
     * \brief Open file for both input and output.
     * \param file File to be opened.
     * \param m Mode used for opening stream for \p file (in, out, app, etc.).
     */
    void Open(const filesystem::Path& file, mode m = in | out)
    {
        open(file.c_str(), m);
    }
};

/**
 * \class Ifstream
 * \brief Class for uniform and cross-platform input file stream.
 *        Same interface as standard std::ifstream.
 */
class Ifstream : public std::ifstream
{
public:
    /**
    * \brief Open not associated input stream
    */
	Ifstream() : std::ifstream() {}
    /**
     * \brief Open file for input.
     * \param file File to be opened.
     * \param m Mode used for opening stream for \p file (in, out, app, etc.).
     */
	explicit Ifstream(const filesystem::Path& file, mode m = in) : std::ifstream()
    {
        Open(file, m);
    }
    /**
     * \brief Open file for input.
     * \param file File to be opened.
     * \param m Mode used for opening stream for \p file (in, out, app, etc.).
     */
    void Open(const filesystem::Path& file, mode m = in)
    {
        open(file.c_str(), m);
    }
};

/**
 * \class Ofstream
 * \brief Class for uniform and cross-platform output file stream.
 *        Same interface as standard std::ofstream.
 */
class Ofstream : public std::ofstream
{
public:
    /**
    * \brief Open not associated output stream
    */
    Ofstream() : std::ofstream() {}
    /**
     * \brief Open file for output.
     * \param file File to be opened.
     * \param m Mode used for opening stream for \p file (in, out, app, etc.).
     */
    explicit Ofstream(const filesystem::Path& file, mode m = out | trunc) : std::ofstream()
    {
        Open(file, m);
    }
    /**
     * \brief Open file for output.
     * \param file File to be opened.
     * \param m Mode used for opening stream for \p file (in, out, app, etc.).
     */
    void Open(const filesystem::Path& file, mode m = out | trunc)
    {
        open(file.c_str(), m);
    }
};

} // namespace io

/// Namespace for using lowlevel functions like read, close, lseek, etc. working with int file descriptor
/// Do not use, if not necessary, used in legacy code
namespace low_io
{
/**
 * \{
 * \brief Access types used in low-level operation system file access functions.
 *        Uses same names as standard C++ stream access modes.
 */
#ifdef _WIN32
static const int app	= _O_APPEND;
static const int binary	= _O_BINARY;
static const int create	= _O_CREAT;
static const int in		= _O_RDONLY;
static const int out	= _O_WRONLY;
static const int inout	= _O_RDWR;
#else
static const int app    = O_APPEND;
static const int binary = 0;
static const int create = O_CREAT;
static const int in     = O_RDONLY;
static const int out    = O_WRONLY;
static const int inout  = O_RDWR;
#endif
/**
 * \}
 * \brief  Open or possibly create file.
 * \param  file Path of file to be opened.
 * \param  flag Type of operation from codasip::low_io namespace (app, binary, in, out).
 * \return file descriptor or -1 on error.
 */
inline int open(const filesystem::Path& file, int flag)
{
	return ::open(file.c_str(), flag, 0);
}
/**
 * \brief  Closes a file opened by \ref open.
 * \param  fd File descriptor of file to be closed.
 * \return 0 on success, -1 on error.
 */
inline int close(int fd)
{
	return ::close(fd);
}


} // namespace low_io
} // namespace codasip

#endif /* IO_H_ */
