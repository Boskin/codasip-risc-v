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
 *  \author Hons
 *  \date   26. 3. 2015
 *  \brief  Declaration/Implementation of the class.
 */

#ifndef GETOPTL_BASICOPTIONS_H_
#define GETOPTL_BASICOPTIONS_H_

#include <string>
#include <vector>

namespace codasip {
namespace getopt {

/**
 * \class ModelInfo
 * \brief Holds info about generated tool
 */
class ToolInfo
{
public:
    /**
     * \brief Construtor
     */
    ToolInfo(const std::string& licensee,
        const std::string& project,
        const std::string& hash,
        const std::string& date,
        const std::string& text);
    /**
     * \{
     * \brief Getter
     */
    const std::string& GetLicensee() const;
    const std::string& GetDate() const;
    const std::string& GetHash() const;
    const std::string& GetProject() const;
    const std::string& GetText() const;
    /** \} */
private:
    /// Licensee
    std::string m_Licensee;
    /// Model id (typically a project name)
    std::string m_Project;
    /// Model hash
    std::string m_Hash;
    /// Current date
    std::string m_Date;
    /// User text
    std::string m_Text;
};

/**
 * \brief
 * \param mi Model info
 */
void SetToolInfo(const ToolInfo& ti);
/**
 * \brief Returns storage for info. Uses on-demand static initialization of object
 *        because model has can be set before statics in current cpp files are initialized.
 */
const ToolInfo& GetToolInfo();

/**
 * \class ToolInfoSetter
 * \brief Class to be used in generated tools to set info, such as a hash before main() is called.
 *        Usage:
 *              ToolInfoSetter g_setter {"urisc", "6a6b8c15c", "161314", "Sony 1.2.3"};
 */
class ToolInfoSetter
{
public:
    /// Constructor
    ToolInfoSetter(const ToolInfo& ti)
    {
        SetToolInfo(ti);
    }
};

/**
 * \class BaseOptions
 */
class BasicOptions
{
public:
    /// Container for storage of file names
    typedef std::vector<std::string> FileList;

    /// Virtual destructor
    virtual ~BasicOptions() {};
    /**
     * \brief Parses arguments sent to process using main (argc, argv)
     */
    virtual void Parse(int argc, const char* const* argv) = 0;
};

}   // codasip::getopt
}   // codasip


#endif  // GETOPTL_BASICOPTIONS_H_
