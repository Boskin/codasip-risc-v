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
 * \brief   Header file for cross-platform file and path management
 * \author  Hons Petr
 * \date    7.7.2014
 */

#ifndef FILESYSTEM_H_
#define FILESYSTEM_H_

#include <string>
#include <memory>   // unique_ptr
#include <ctime>    // time_t

namespace codasip {
namespace filesystem {

/**
 * \defgroup OS             OS specific library
 * \{
 * Library for uniform access to operation system specific functions.
 * Creates uniform access to filesystem, threads, synchronization
 * and more. Also manages compiler specific macros for inlining or
 * low-level assembler functions.
 *
 * \defgroup Filesysteml     Filesystem library
 * \{
 * Uniform access to operation system specific filesystem. Enables
 * path management, directory traversal and file I/O.
 */

// forward declarations
class Path;

/**
 * \brief  Returns current working directory.
 * \return path object with current working directory.
 */
Path GetWorkingDirectory();
/**
 * \brief  Sets current working directory.
 * \param  path Working directory to be set.
 * \return success of setting working directory.
 */
bool SetWorkingDirectory(const Path& path);
/**
 * Returns directory where current executable is saved.
 */
Path GetExecutableDirectory();
/**
 * \{
 * \brief  Checks if file/directory exists.
 * \param  path Path to file/directory to be checked.
 * \return true, if there exists file or directory on \p path,
 *         false otherwise.
 */
bool Exists(const char* path);
bool Exists(const Path& path);
/**
 * \} \{
 * \brief  Checks if file exists.
 * \param  path  Path to file to be checked.
 * \return true, if there exists file on \p path,
 *         false otherwise.
 */
bool FileExists(const char* path);
bool FileExists(const Path& path);
/**
 * \} \{
 * \brief  Checks if directory exists.
 * \param  path  Path to directory to be checked.
 * \return true, if there exists directory on \p path,
 *         false otherwise.
 */
bool DirExists(const char* path);
bool DirExists(const Path& path);
/**
 * \}
 * \brief  Removes file or directory on given path.
 * \param  path Path of file/directory to be removed.
 * \param  recursive If set to true and there is directory on \p path,
 *                   recursively delete the directory including all files
 *                   and subdirectories.
 * \return false, if file or directory couldn't be deleted, true on success.
 */
bool Remove(const Path& path, bool recursive = false);
/**
 * \{
 * \brief  Removes file given path.
 * \param  path Path of file to be removed.
 * \return false, if file couldn't be deleted, true on success.
 */
bool RemoveFile(const char* path);
bool RemoveFile(const Path& path);
/**
 * \} \{
 * \brief Removes directory.
 * \param path Path of directory to be removed.
 * \param recursive If set to true and there is directory on \p path,
 *        recursively delete the directory including all files
 *        and subdirectories.
 * \return false, if directory couldn't be deleted, true on success.
 */
bool RemoveDirectory(const Path& path, bool recursive = false);
/**
 * \} \{
 * \brief      Gets last modification time of file.
 * \param[in]  path Path to file for getting its last modify time.
 * \param[out] time Storage for retrieved last modification time of file.
 * \return     false, if file couldn't found or its last modify time
 *             couldn't be read, true on success.
 */
bool LastModifyTime(const char* path, std::time_t& time);
bool LastModifyTime(const Path& path, std::time_t& time);
/**
 * \}
 * \brief      Returns size of file.
 * \param[in]  path Path of file which size is returned in \p size.
 * \param[out] size On success will contain size of file.
 * \return     true, if size of file on \p path is stored into \p size,
 *             false on error.
 */
bool FileSize(const char* path, unsigned int& size);
/**
 * \brief  Creates directory.
 * \param  path Path of directory to be created. Path is normalized before creating directory.
 * \param  recursive If set to true, entire path will be created including all parent
 *         directories - e.g. if param dir is \e /test/foo and \e /test doesn't exist,
 *         than both directories \e /test and \e /test/foo will be created.
 * \return true on success, false on error
 */
bool CreateDirectory(const Path& path, const bool recursive = true);
/**
 * \brief  Checks if file is binary by reading first 8000bytes and trying to find zero byte.
 * \param  path Path to file.
 * \return true, if file was found and zero byte was detected, false otherwise.
 * \note   note http://git.kernel.org/?p=git/git.git;a=blob;f=xdiff-interface.c;hb=HEAD
 */
bool IsBinaryFile(const char* path);
/**
 * \brief  Return path to unique temporary file. Directory for storage these files
 *         has to be set by \ref SetTemporaryDirectory(), by default working directory
 *         is used.
 * \return path to currently not existing temporary file.
 * \note   Functions uses internal mutex to avoid concurrent generating of unique index.
 */
Path GetTemporaryFile();
/**
 * \brief Sets directory for storage of temporary files generated by \ref GetTemporaryFile().
 * \param dir Directory to be set.
 */
void SetTemporaryDirectory(const Path& dir);
/**
 * \brief Return system specific path to temporary directory.
 */
Path GetSystemTempPath();
/**
 * \brief Create unique directory in \p dir with given prefix. If such directory already exists,
 *        add numeric suffixes until one is found. e.g. for prefix "codal" directories "codal",
 *        "codal1", "codal2", .. will be tried
 */
Path CreateUniqueDirectory(const Path& dir, const std::string& prefix);
/**
 *  \brief  Copy recursively source directory into destination.
 *  \param  source data to be copied
 *  \param  destination target directory
 *  \return true, if directory was copied, false otherwise
 */
bool CopyDirectory( const Path& source, const Path& destination );
/**
 *  \class  Path
 *  \brief  Class for uniform and cross-platform management of filesystem paths.
 *          Recommended usage for path creation:
 *          \code
 *           Path dir ("test");
 *           dir /= "foo";
 *           Path file = dir.GetParent() / "hello.cpp";
 *           std::cout << file;
 *          \endcode
 *          Will show <tt>test/hello.cpp</tt> on Linux and <tt>test\\hello.cpp</tt> on Windows.
 *  \note   The class relies on the compiler to generate default implementation
 *          of special member functions like copy/move constructor, ...
 */
class Path
{
public:
    /**
     * \brief Operation system specific separator.
     */
#ifdef _WIN32
	static const char SEPARATOR = '\\';
#else
	static const char SEPARATOR = '/';
#endif
	/**
	 * \brief  Constructor for empty path.
	 */
    Path();
	/**
	 * \{
	 * \brief  Constructor.
	 * \param  path Path to be stored.
	 * \note   Same as call \ref Assign()
	 */
	Path(const char* path);
	Path(const std::string& path);
	/**
	 * \} \{
	 * \brief  Stores new path.
	 * \param  path Path to be stored.
	 * \return reference to same object.
	 */
	Path& Assign(const char* path);
	Path& Assign(const Path& path);
	Path& Assign(const std::string& path);
	/**
	 * \} \{
	 * \brief  Appends system specific path separator and \p path.
	 *         Modifies current object.
     * \param  path Path to added after system specific path \ref SEPARATOR.
     * \return reference to same object.
     * \note   Example: <tt>foo/bar Add test -> /foo/bar/test</tt>
	 */
	Path& Add(const char* path);
	Path& Add(const std::string& path);
	Path& Add(const Path& path);
    Path& operator/= (const Path& path);
    /**
     * \} \{
     * \brief  Appends string to path. Modifies current object.
     * \param  str String to be appended to internally stored path.
     * \return reference to same object.
     * \note   Example: <tt>foo/bar Concat test -> /foo/bartest</tt>
     */
    Path& Concat(const char* str);
    Path& Concat(const std::string& str);
    Path& Concat(const Path& str);
	Path& operator+= (const Path& str);
	/**
	 * \}
	 * \brief  Returns new path object created by adding given
	 *         \p path to current path. Doesn't modify current
	 *         path object.
	 * \param  path Path to be added to currently stored path.
	 * \return New path object.
     * \note   Example: <tt>foo / bar -> foo/bar</tt>
	 */
	Path operator/ (const Path& path) const;
	/**
     * \brief  Returns new path object created by concatenating given
     *         \p path to current path. Doesn't modify current
     *         object.
     * \param  path Path to be concatenated to currently stored path.
     * \return New path object.
     * \note   Example: <tt>foo + bar -> foobar</tt>
     */
	Path operator+ (const Path& path) const;
	/**
	 * \brief Returns true, if current path is absolute.
	 * \param allOS If set to false (default), true is returned if current path is absolute
	 *        on current operating system, if set to true, true is returned if current path is
	 *        absolute on Linux and/or Windows.
	 */
	bool IsAbsolute(const bool allOS = false) const;
    /**
     * \brief Returns true, if current path is relative.
     */
	bool IsRelative() const { return !IsAbsolute(); };
    /**
     * \brief Returns true, if current path is empty.
     */
	bool Empty() const { return m_path.empty(); };
	/**
	 * \brief Compare paths. Return same as std::string::compare
	 */
	int Compare(const Path&) const;
	/**
     * \brief      Returns size of file.
     * \param[out] size On success will contain size of file.
     * \return     true, if size of file is stored into \p size,
     *             false on error.
     * \see filesystem::FileSize()
     */
	bool GetFileSize(unsigned int& size) const { return FileSize(m_path.c_str(), size); }
	/**
	 * \brief Clears path.
	 */
	void Clear() { m_path.clear(); }
	/**
	 * \brief  Returns if file or directory exist on current path.
	 * \return true, if file or directory exists on path, false otherwise.
	 */
	bool Exists() const
	{
		if(m_path.empty()) return false;
		return filesystem::Exists(m_path.c_str());
	}
    /**
     * \brief  Returns if file exists on current path.
     * \return true, if file exists on path, false otherwise.
     */
	bool FileExists() const
	{
		if(m_path.empty()) return false;
		return filesystem::FileExists(m_path.c_str());
	}
    /**
     * \brief  Returns if directory exists on current path.
     * \return true, if directory exists on path, false otherwise.
     */
	bool DirExists() const
	{
		if(m_path.empty()) return false;
		return filesystem::DirExists(m_path.c_str());
	}
	/**
	 * \brief  Removes file on current path
	 * \return false, if file couldn't be deleted, true on success.
	 */
	bool RemoveFile() const
	{
		if(m_path.empty()) return false;
		return filesystem::RemoveFile(m_path.c_str());
	}
	/**
	 * \brief  Removes file or directory on current path.
	 * \param  recursive If set to true and there is directory on current path,
	 *                   recursively delete the directory including all files
	 *                   and subdirectories.
	 * \return false, if file or directory couldn't be deleted, true on success.
	 */
	bool Remove(bool recursive = false) const
	{
		if(m_path.empty()) return false;
		return filesystem::Remove(m_path, recursive);
	}
    /**
     * \brief  Returns extension of current path.
     * \return Extension of current path, if there is none, returns empty string.
     * \note   Example: <tt>foo.exe -> exe</tt>
     */
	std::string GetExtension() const;
    /**
     * \brief  Returns filename of current path.
     * \return Filename of current path, if there is none, returns empty string.
     * \note   Example: <tt>test/foo.bar -> foo.bar</tt>
     */
	std::string GetFileName() const;
    /**
     * \brief  Returns filename of current path without extension.
     * \return Filename of current path, if there is none, returns empty string.
     * \note   Example: <tt>test/foo.bar -> foo</tt>
     */
    std::string GetFileNameWithoutExt() const;
    /**
     * \brief  Check if filename has given prefix
     * \param  prefix Prefix to be checked against filename.
     * \return True, if filename of current path start with \p prefix, false otherwise
     * \note   Example: <tt>prefix aa in test/aatest.bar -> true</tt>
     *                  <tt>prefix aa in aatest/foo.bar -> false</tt>
     */
    bool HasFileNamePrefix(const std::string& prefix) const;
    /**
     * \brief  Normalize path, remove not necessary .., ., double path separators, etc.
     *         Relative path will stay relative (opposite to C library function realpath).
     * \return New Path object containing normalized path.
     */
    Path GetNormalized() const;
    /**
     * \brief  If current path is absolute, unchanged path will be returned. If current path
     *         is relative, workingDirectory / current path will be returned.
     * \return New Path object containing absolute path.
     */
    Path GetAbsolute() const;
	/**
	 * \{
	 * \brief  Returns parent directory of current path.
	 * \return New path object containing path to parent directory.
     * \note   Example: <tt>ab/test/foo.bar -> ab/test</tt>
	 */
	Path GetDirectory() const;
	Path GetParent() const { return GetDirectory(); }
    /**
     * \}
     * \brief Implicit conversion to std::string. Returns copy of current path.
     */
    operator std::string() const { return m_path; }
    /**
     * \brief Returns pointer to C-string containing current path.
     */
    const char* c_str() const { return m_path.c_str(); }
    /**
     * \brief Returns internal path as string.
     */
	const std::string& GetPath() const { return m_path; }
	/**
	 * \brief  Move file or directory on current path to specific path. After
	 *         successful move current path is changed to destination path.
	 * \param  destination Path where file or directory on current path
	 *         will be moved to.
	 * \return true, if file or directory was moved and internal path was changed,
	 *         false otherwise
	 * \note   If directory for \p destination doesn't exist, it is automatically created.
	 *         If move was not successful, current stored path is not altered.
	 */
	bool Move(const Path& destination);
    /**
     * \brief  Copy file on current path to specific path. After
     *         successful move current path is changed to destination path.
     * \param  destination Path where file on current path will be copied to.
     * \return true, if file was copied and internal path was changed, false otherwise
     * \note   If copy was not successful, current stored path is not altered.
     */
	bool CopyFile(const Path& destination);
	/**
	 * \brief Create directory at current path.
	 * \param recursive If set to true (default), all parent directories will be created as well.
	 * \see   filesystem::CreateDirectory()
	 */
	bool CreateDirectory(bool recursive = true) const
	{
		return filesystem::CreateDirectory(*this, recursive);
	}
	/**
	 * \brief  Set extension of stored path to \p ext.
	 * \param  ext Extension to be set.
     * \return reference to same object.
	 */
	Path& SetExtension(const std::string& ext);
    /**
     * \brief  Set extension of executable (on Windows .exe, on Linux nothing) in stored path.
     * \return reference to same object.
     */
	Path& SetExeExtension()
	{
		#ifdef _WIN32
			SetExtension("exe");
		#endif
		return *this;
	}
	/**
	 * \brief Enables printing to C++ output stream.
	 */
	friend std::ostream &operator<<(std::ostream &stream, Path obj);
	/**
	 * \brief Remove trailing / or \ characters
	 */
	Path& RemoveTrailingSlashes();
	/**
	 * \brief Returns length of path string
	 */
	size_t Length()
	{
	    return m_path.length();
	}
	/**
	 * \brief Returns path in POSIX format (all slashes are converted to /)
	 */
	std::string GetPOSIX() const;
	/**
	 * \brief Return if current path has same path suffix as \p file
	 * \note  /test/a/b.txt , a/b.txt  ->  true
	 *        /test/ac/b.txt , c/b.txt  ->  false
	 */
	bool HasSameSuffix(const Path& suffix) const;
	/**
	 * \brief Check if folder is empty. For non existent folder returns false
	 */
	bool IsEmptyDir() const;

protected:
	/**
	 * \brief Normalizes path to native system format.
	 * Called internally to normalize path, switch path separators to native operation system separators, etc.
	 */
	void NormalizeToNative();

	/// Storage of current path.
	std::string m_path;
};

/**
 * \{
 * \brief Comparison operators for Path
 */
inline bool operator< (Path const& l, Path const& r) { return l.Compare(r) < 0; }
inline bool operator> (Path const& l, Path const& r) { return l.Compare(r) > 0; }
inline bool operator== (Path const& l, Path const& r) { return l.Compare(r) == 0; }
inline bool operator!= (Path const& l, Path const& r) { return l.Compare(r) != 0; }

/**
 * \}
 * \class  DirectoryIterator
 * \brief  Class for uniform and cross-platform directory traversal. Only
 *         files and directories in given folder are returned, no subdirectories
 *         (opposite to \ref RecursiveDirectoryIterator). This class behaves
 *         similarly to std::iterator with few exceptions - no copy constructor,
 *         no begin() and end(), no postfix incrementation. End iterator is created
 *         by not-parametrized constructor.
 *         Interface similar to boost::filesystem::directory_iterator.
 *
 *         Recommended usage for directory traversal:
 *         \code
 *           DirectoryIterator it("/home/codasip"), end;
 *           if(!it.IsOpened())
 *           {
 *               std::cout << "Error opening directory"  << std::endl;
 *               return false;
 *           }
 *
 *           for (; it != end; ++it)
 *           {
 *               std::cout << *it << std::endl;
 *           }
 *         \endcode
 *         Will show all directories and files in /home/codasip.
 */
class DirectoryIterator:
    public std::iterator<std::forward_iterator_tag, // Forward iterator type
                         Path,                     // Iterator type
                         std::ptrdiff_t,            // Difference between pointers
                         const Path*,              // Pointer type
                         const Path&>              // Reference type
{
public:
    /**
     * \brief  Constructor. Creates end iterator.
     * \note   Use as end constructor for all object of type DirectoryIterator
     */
    DirectoryIterator();
    /**
     * \brief  Constructor. Opens directory on path \p dir and create iterator
     *         to first file or directory.
     * \param  dir Path to directory to be opened.
     * \param  onlyFiles All directories will be skipped, only files in directory
     *         \p dir will be returned.
     */
    DirectoryIterator(const Path& dir, const bool onlyFiles = false);
    /**
     * \brief  Desctructor. Automatically closes directory opened by \ref DirectoryIterator(const Path&, bool).
     */
    ~DirectoryIterator();
    /**
     * \brief  Return success of opening a directory.
     * \return True, if \p DirectoryIterator(const Path&,bool) successfully opened a directory (even if it's empty),
     *         false on error.
     */
    bool IsOpened() const;
    /**
     * \brief  Dereference iterator to get current file object reference.
     */
    const Path& operator*() const;
    /**
     * \brief  Dereference iterator to get current file object pointer.
     */
    const Path* operator->() const;
    /**
     * \brief  Advance iterator one file/directory forward. If no file/directory is found
     *         iterator will be equal to end iterator (created by \ref DirectoryIterator()).
     */
    DirectoryIterator& operator++();
    /**
     * \brief  Checks equality of 2 iterators.
     * \param  it Iterator to be checked against this iterator.
     * \return true, if \p it and this iterator are equal, false otherwise.
     */
    bool Equal(DirectoryIterator const& it) const;

protected:
    /// Forward declaration of implementation
    class Impl;
    /**
     * \{
     * \brief  Disable copy constructor and assign operator.
     */
    DirectoryIterator(const DirectoryIterator& that);
    DirectoryIterator& operator=(DirectoryIterator const&);
    /**
     * \}
     */
    /// System specific implementation (PIMPL)
    const std::unique_ptr<Impl> m_Impl;
};
/**
 * \brief  Checks equality of 2 iterators.
 * \param  lhs Iterator to be checked for equality.
 * \param  rhs Iterator to be checked for equality.
 * \return true, if \p lhs and \p rhs are equal, false otherwise.
 */
inline bool operator==(DirectoryIterator const& lhs,DirectoryIterator const& rhs)
{
    return lhs.Equal(rhs);
}
/**
 * \brief  Checks inequality of 2 iterators.
 * \param  lhs Iterator to be checked for inequality.
 * \param  rhs Iterator to be checked for inequality.
 * \return false, if \p lhs and \p rhs are equal, true otherwise.
 */
inline bool operator!=(DirectoryIterator const& lhs, DirectoryIterator const& rhs)
{
	return !lhs.Equal(rhs);
}

/**
 * \class  RecursiveDirectoryIterator
 * \brief  Class for uniform and cross-platform recursive directory traversal.
 *         All files and directories in given folder and subfolders are returned
 *         (opposite to \ref DirectoryIterator). This class behaves similarly to
 *         std::iterator with few exceptions - no copy constructor, no begin() and
 *         end(), no postfix incrementation. End iterator is created by
 *         not-parametrized constructor. Uses DirectoryIterator for iterating
 *         in every level of directory structure. Interface similar to
 *         boost::filesystem::directory_iterator.
 *
 *         Recommended usage for directory traversal:
 *         \code
 *           RecursiveDirectoryIterator it("/home/codasip"), end;
 *           if(!it.IsOpened())
 *           {
 *               std::cout << "Error opening directory"  << std::endl;
 *               return false;
 *           }
 *
 *           for (; it != end; ++it)
 *           {
 *               std::cout << *it << std::endl;
 *           }
 *         \endcode
 *         Will show all directories and files in /home/codasip and its subdirectories.
 */
class RecursiveDirectoryIterator:
    public std::iterator<std::forward_iterator_tag, // Forward iterator type
                         Path,                     // Iterator type
                         std::ptrdiff_t,            // Difference between pointers
                         const Path*,              // Pointer type
                         const Path&>              // Reference type
{
public:
    /**
     * \brief  Constructor. Creates end iterator.
     * \note   Use as end constructor for all object of type RecursiveDirectoryIterator
     */
    RecursiveDirectoryIterator();
    /**
     * \brief  Constructor. Opens directory on path \p dir and create iterator
     *         to first file or directory.
     * \param  dir Path to directory to be opened.
     * \param  onlyFiles All directories will be skipped, only files in directory
     *         \p dir and its subdirectories will be returned.
     */
    RecursiveDirectoryIterator(const Path& dir, bool onlyFiles = false);
    /**
     * \brief  Desctructor. Automatically closes directory opened by
     *         \ref RecursiveDirectoryIterator(const Path&, bool).
     */
	~RecursiveDirectoryIterator();
    /**
     * \brief  Return success of opening a directory.
     * \return True, if \p RecursiveDirectoryIterator(const Path&,bool) successfully
     *         opened a directory (even if it's empty), false on error.
     */
    bool IsOpened() const;
    /**
     * \brief  Dereference iterator to get current file object reference.
     */
    const Path& operator*() const;
    /**
     * \brief  Dereference iterator to get current file object pointer.
     */
	const Path* operator->() const;
    /**
     * \brief  Advance iterator one file/directory forward. If new directory will be encountered,
     *         iterator will recursively advance into this directory. If no next file/directory
     *         is found iterator will be equal to end iterator (created by
     *         \ref RecursiveDirectoryIterator()).
     */
    RecursiveDirectoryIterator& operator++();
    /**
     * \brief  Checks equality of 2 iterators.
     * \param  it Iterator to be checked against this iterator.
     * \return true, if \p it and this iterator are equal, false otherwise.
     */
    bool Equal(const RecursiveDirectoryIterator& it) const;

protected:
    /**
     * \{
     * \brief  Disable copy constructor and assign operator.
     */
	RecursiveDirectoryIterator(const RecursiveDirectoryIterator& that);
	RecursiveDirectoryIterator& operator=(RecursiveDirectoryIterator const&);
    /**
     * \}
     */
    /// Forward declaration of implementation
    class Impl;

    /// System specific implementation (PIMPL)
    const std::unique_ptr<Impl> m_Impl;
};

/**
 * \copydoc operator==(DirectoryIterator const&, DirectoryIterator const&)
 */
inline bool operator==(RecursiveDirectoryIterator const& lhs, RecursiveDirectoryIterator const& rhs)
{
	return lhs.Equal(rhs);
}
/**
 * \copydoc operator!=(DirectoryIterator const&, DirectoryIterator const&)
 */
inline bool operator!=(RecursiveDirectoryIterator const& lhs, RecursiveDirectoryIterator const& rhs)
{
	return !lhs.Equal(rhs);
}

/**
 * \class  AutoDelete
 * \brief  Automatically delete file / directory in destructor
 */
class AutoDelete
{
public:
    /// Default constructor. No path will be associated
    AutoDelete() {};
    /// Constructor
    explicit AutoDelete(const Path& path)
      : m_Path(path)
    {}
    /// Destructor. If non-empty path is set, file / directory will be removed
    ~AutoDelete()
    {
        Remove();
    }
    /// Change stored path, if empty, no deletion will be performed
    void SetPath(const Path& path)
    {
        m_Path = path;
    }
    /// Remove associated path
    void Remove()
    {
        if (!m_Path.Empty())
        {
            m_Path.Remove(true);
            m_Path.Clear();
        }
    }

private:
    Path m_Path;
};


}   // namespace codasip::filesystem

/// Shortcut for simpler accessing codasip::filesystem namespace.
namespace fs = codasip::filesystem;
}   // namespace codasip

/// Shortcut for simpler accessing codasip::filesystem namespace.
namespace fs = codasip::filesystem;

#endif /* FILESYSTEM_H_ */
