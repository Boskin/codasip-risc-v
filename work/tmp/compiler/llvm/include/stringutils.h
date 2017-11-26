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
 *  \author Potesil Josef
 *  \date   24. 9. 2014
 *  \brief  Definition of utility function used for string manipulations.
 */


#ifndef _STRING_UTILS_H_
#define _STRING_UTILS_H_

#include <string>
#include <iterator>
#include <algorithm>
#include <functional>
#include <sstream>
#include <cctype>       // isspace

/**
 *  \addtogroup CODASIP_UTILITY
 *  \{
 *  \defgroup CODASIP_UTILITY_STRING    String utilities
 *  Contains common string manipulation functions.
 *  \}
 */

namespace codasip {

/**
 *  \addtogroup CODASIP_UTILITY_STRING
 *  \{
 */
/**
 *  \brief  Auxiliary function to convert C language string with escape
 *          sequences.
 *  \param  str source string to convert
 */
inline std::string stringToCString( const std::string& str )
{
   std::string cString;
   for ( std::string::size_type i = 0; i < str.length(); ++i )
   {
        switch ( str[i] )
        {
            case    7:  cString.append("\\a"); break;
            case    8:  cString.append("\\b"); break;
            case    9:  cString.append("\\t"); break;
            case   10:  cString.append("\\n"); break;
            case   11:  cString.append("\\v"); break;
            case   12:  cString.append("\\f"); break;
            case   13:  cString.append("\\r"); break;
            case '\0':  cString.append("\\0"); break;
            case '\\':  cString.append("\\\\"); break;
            case '\"':  cString.append("\\\""); break;
            case '\'':  cString.append("\\\'"); break;
            default  :  cString.push_back(str[i]); break;
        }
   }
   return cString;
}

/**
 *  \brief  Auxiliary function to convert C-string into string with escape
 *          sequences.
 *  \param  str input string
 */
inline std::string CStringToString( const std::string& str )
{
    std::string result;
    result.reserve( 2 * str.size() );

    for ( std::string::size_type i = 0; i < str.size(); ++i )
    {
        if ( (str[i] == '\\') && (i +1) < str.size() )
        {
            switch ( str[i +1] )
            {
                case 'a': result += '\a'; break;
                case 'b': result += '\b'; break;
                case 't': result += '\t'; break;
                case 'n': result += '\n'; break;
                case 'v': result += '\v'; break;
                case 'f': result += '\f'; break;
                case 'r': result += '\r'; break;
                case '0': result += '\0'; break;
                default:  result += str[i+1]; break;
            }
            ++i;
        }
        else
        {
            result += str[i];
        }
    }
    return result;
}

/**
 *  \brief  Rewrite content of string, replace old parts with new parts.
 *  \param  sContent content
 *  \param  sOld old string
 *  \param  sNew new string
 *  \param  bWholeWord false by default
 */
inline void RewriteString( std::string &sContent,
    const std::string sOld,
    const std::string sNew,
    const bool bWholeWord = false )
{
    std::string::size_type kk = sContent.find(sOld);
    while ( kk != std::string::npos)
    {
        bool replace = false;
        if (bWholeWord)
        {
            if ((kk == 0 || (!isalnum(sContent[kk - 1]) && sContent[kk - 1] != '_' && sContent[kk - 1] != '-')) &&
                !isalnum(sContent[kk + sOld.length()]) && sContent[kk + sOld.length()] != '_' && sContent[kk + sOld.length()] != '-')
            {
                replace = true;
            }
        }
        if (replace || !bWholeWord)
        {
            sContent.replace(kk, sOld.length(), sNew);
            // try to find another occurrence in rest of semantic action
            kk = sContent.find(sOld, kk + sNew.length());
        }
        else
        {
            kk = sContent.find(sOld, kk + sOld.length());
        }
    }
}

/**
 *  \{
 *  \brief  Replace every occurrence of an character/string with new one.
 *  \param  str source string
 *  \param  sOld character/string that will be replaced.
 *  \param  sNew substituted string
 *  \return reference to edited source string to allow chaining of commands
 */
inline std::string& Substitute( std::string& str,
    const std::string& sOld,
    const std::string& sNew )
{
    std::string::size_type pos = 0;
    while ( ((pos = str.find(sOld, pos)) != std::string::npos) &&
        (pos < str.size()) )
    {
        str.erase( pos, sOld.size() );
        str.insert( pos, sNew );
        pos += sNew.size();
    }
    return str;
}

inline std::string& Substitute( std::string& str,
    const char sOld,
    const std::string& sNew )
{
    return Substitute( str, std::string(1, sOld), sNew );
}

inline std::string& Substitute( std::string& str,
    const char sOld,
    const char sNew )
{
    std::replace( str.begin(), str.end(), sOld, sNew );
    return str;
}

inline std::string Substitute( const std::string& str,
    const char sOld,
    const char sNew )
{
    std::string copy( str );
    std::replace( copy.begin(), copy.end(), sOld, sNew );
    return copy;
}

/**
 *  \}
 *  \brief  Rewrite source string with C code in a way, it can be used
 *          by HTML/HTML generator. Replace special characters with their
 *          HTML/DOT equivalents.
 *  \param  csource source string with C code
 *  \return new string holding HTML/DOT code
 */
inline std::string RewriteCForHtml(const std::string& csource )
{
    std::stringstream newLine;
    newLine << std::endl;

    std::string lcsource = csource;

    Substitute( lcsource, '&', "&amp;" );
    Substitute( lcsource, '"', "&quot;" );
    Substitute( lcsource, '<', "&lt;" );
    Substitute( lcsource, '>', "&gt;" );
    Substitute( lcsource, '\\', "\\\\");
    Substitute( lcsource, newLine.str(), "<br />" );

    return lcsource;
}

/**
 *  \brief  Project name may contains - or spaces, but this is not valid
 *          characters for namespaces.
 *  \param  ns original namespace
 *  \return rewriten namespace
 */
inline std::string FixProjectName( const std::string& ns )
{
    std::string lns = ns;
    RewriteString(lns, "-", "_");
    RewriteString(lns, "=", "_");
    RewriteString(lns, "/", "_");
    RewriteString(lns, "*", "_");
    RewriteString(lns, "+", "_");
    RewriteString(lns, "%", "_");
    RewriteString(lns, "=", "_");
    RewriteString(lns, ".", "_");
    RewriteString(lns, ":", "_");
    RewriteString(lns, ",", "_");
    RewriteString(lns, " ", "_");
    RewriteString(lns, "(", "_");
    RewriteString(lns, ")", "_");
    RewriteString(lns, "[", "_");
    RewriteString(lns, "]", "_");
    RewriteString(lns, "{", "_");
    RewriteString(lns, "}", "_");
    RewriteString(lns, "/", "_");
    RewriteString(lns, ">", "_");
    RewriteString(lns, "<", "_");
    RewriteString(lns, "@", "_");
    RewriteString(lns, "#", "_");
    RewriteString(lns, "&", "_");
    RewriteString(lns, "\\", "_");

    return lns;
}

/**
 *  \brief  Transform the whole input string and convert all lowercase letters
 *          to uppercase.
 *  \param  str copy of source string to convert
 */
inline std::string ToUpper( std::string str )
{
    std::transform( str.begin(), str.end(), str.begin(),
        std::ptr_fun(&::toupper) );
    return str;
}

/**
 *  \brief  Transform the whole input string and convert all uppercase letters
 *          to lowercase.
 *  \param  str copy of source string to convert
 */
inline std::string ToLower( std::string str )
{
    std::transform( str.begin(), str.end(), str.begin(),
        std::ptr_fun(&::tolower) );
    return str;
}

/**
 *  \brief  Trim (remove whitespaces) string from start and end of string.
 *  \param  s source string to process
 */
inline std::string Trim( const std::string& s )
{
    std::string::size_type start = 0, end = s.size()-1;

    while ( start < s.size() && std::isspace(s[start]) )
    {
        ++start;
    }
    if ( start >= s.size() )
    {
        return std::string();
    }
    while ( end > 0 && std::isspace(s[end]) )
    {
        --end;
    }
    return s.substr( start, end - start +1 );
}

/**
 *  \brief  Splits source string into two parts separated by delimiter. The two
 *          parts are saved in first and second parameter.
 *  \param  name copy of the source string to split
 *  \param  first output parameter where to store the first part of the source
 *          string before delimiter. If delimiter was not found, will be empty.
 *  \param  second output parameter where to store the second part of the source
 *          string after delimiter. If delimiter was not found, will contain the
 *          whole source string.
 *  \param  delimiter string used as delimiter, won't be presented in result.
 *          The default value is the "." character.
 *  \retval true delimiter was found
 *  \retval false delimiter wasn't found
 */
inline bool SplitName( std::string name,
    std::string& first,
    std::string& second,
    const std::string& delimiter = std::string(1, '.') )
{
    const std::string::size_type dotPos = name.find( delimiter );
    if ( dotPos != std::string::npos )
    {
        first = name.substr( 0, dotPos );
        second = name.substr( dotPos + delimiter.size() );
        return true;
    }

    first.clear();
    second = name;
    return false;
}

/**
 *  \{
 *  \brief  Split source string into parts separated by delimiter and save all
 *          parts to the output container.
 *  Example of possible usage:
 *  \code
 *      std::vector<std::string> vector;
 *      std::set<std::string> set;
 *      std::string source("Source##separated##by##delimiter");
 *
 *      codasip::SplitNames(vector, source, "##");
 *      codasip::SplitNames(set, source, "##");
 *  \endcode
 *  vector object will contain Source, separated, by, delimiter strings as well
 *  as set object (but in sorted order).
 *  \tparam ContainerType Can be used with all STL containers with support for
 *          std::insert_iterator (vector, list, deque, set).
 *  \param  container   Destination container where to store the result.
 *  \param  source      copy of source data
 *  \param  delimiter   string used as delimiter, won't be presented in result.
 *  \return Reference to destination container.
 */
template<class ContainerType>
inline ContainerType& SplitNames(ContainerType& container,
    std::string source,
    const std::string& delimiter,
    const bool includeEmpty = false)
{
    typename std::insert_iterator<ContainerType> inserter(
        container, container.end());
    std::string::size_type pos = std::string::npos;
    while ((pos = source.find(delimiter)) != std::string::npos)
    {
        // do not include empty strings
        if (includeEmpty || pos > 0)
        {
            inserter = source.substr(0, pos);
        }
        source.erase(0, pos + delimiter.size());
        pos = source.find(delimiter);
    }
    if (!source.empty() || includeEmpty)
    {
        inserter = source;
    }

    return container;
}

template<class ContainerType>
inline ContainerType& SplitNames(ContainerType& container,
    std::string source,
    const char delimiter,
    const bool includeEmpty = false)
{
    return SplitNames( container, source, std::string(1, delimiter), includeEmpty );
}

inline bool IsTokenChar(char c)
{
    //return isalpha(c) || isdigit(c) || c == '_';
    return !isspace(c) && c != '\0';
}

/**
 * \brief Get identifiers containing only alphanumeric characters and underscores.
 * \param container
 * \param source
 * \return
 */
template<class TokensContainerType, class PositionsContainerType>
inline TokensContainerType& SplitTokens(TokensContainerType& tokens,
    PositionsContainerType& tokenPositions,
    const std::string& source)
{
    typename std::insert_iterator<TokensContainerType> tokensInserter(
        tokens, tokens.end());
    typename std::insert_iterator<PositionsContainerType> positionsInserter(
        tokenPositions, tokenPositions.end());

    std::string token;

    for(size_t i = 0; i <= source.length(); i++)
    {
        if(!IsTokenChar(source[i]))
        {
            // token end
            if(!token.empty())
            {
                tokensInserter = token;
                token.clear();
            }
        }
        else
        {
            // new token start
            if(token.empty())
            {
                positionsInserter = i;
            }
            token += source[i];
        }
    }

    return tokens;
}

/**
 *  \}
 *  \brief  Concatenate items with given delimiter. The delimiter is used only
 *          if both arguments are not empty.
 *  \param  first source operand
 *  \param  second source operand
 *  \param  del delimiter
 *  \return Concatenated value
 */
inline std::string Concatenate( const std::string& first,
    const std::string& second,
    const std::string& del )
{
    return first + (first.empty() || second.empty() ? std::string() : del) + second;
}
/**
 *  \copydoc Concatenate( const std::string&, const std::string&, const std::string& )
 *  \param  third source operand
 */
inline std::string Concatenate( const std::string& first,
    const std::string& second,
    const std::string& third,
    const std::string& del )
{
    return Concatenate( first, Concatenate(second, third, del), del );
}

/**
 *  \brief  Concatenate items given by iterator range.
 *  \param  begin first iterator in range/container
 *  \param  end past-end iterator
 *  \param  delimiter Delimiter used in string build
 *  \return Concatenated value
 */
template<class InputIterator>
inline std::string ConcatenateNames(InputIterator begin,
    InputIterator end,
    const std::string& delimiter)
{
    std::string value;

    while ( begin != end )
    {
        value = Concatenate( value, *begin, delimiter );
        ++begin;
    }
    return value;
}

/**
 *  \brief  Concatenate items in the container
 *  \tparam ContainerType Can be used with all STL containers with support for
 *          std::insert_iterator (vector, list, deque, set).
 *  \param  container Input container
 *  \param  delimiter Delimiter used in string build
 *  \return Concatenated value
 */
template<class ContainerType>
inline std::string ConcatenateNames(const ContainerType& container,
    const std::string& delimiter)
{
    return ConcatenateNames( container.begin(), container.end(), delimiter );
}

/**
 *  \brief  Returns true if \p str1 is case insensitively equal to \p str2
 */
inline bool StrIEqual(const std::string& str1, const std::string& str2)
{
    if (str1.size() != str2.size())
    {
        return false;
    }
    for (std::string::const_iterator c1 = str1.begin(), c2 = str2.begin();
        c1 != str1.end();
        ++c1, ++c2)
    {
        if (tolower(*c1) != tolower(*c2))
        {
            return false;
        }
    }
    return true;
}

/**
 * \brief  Removes \p prefix from start of string \p input
 */
inline std::string RemovePrefix(const std::string& input, const std::string& prefix)
{
    if (input.length() < prefix.length() || prefix.empty())
    {
        return input;
    }

    if (input.substr(0, prefix.length()) == prefix)
    {
        return input.substr(prefix.length());
    }

    return input;
}

/**
 * \brief  Removes string \p suffix from end of string \p input
 */
inline std::string RemoveSuffix(const std::string& input, const std::string& suffix)
{
    if (input.length() < suffix.length() || suffix.empty())
    {
        return input;
    }

    if (input.substr(input.length() - suffix.length()) == suffix)
    {
        return input.substr(0, input.length() - suffix.length());
    }

    return input;
}

/**
 * \brief Removes \p prefix from start and \p suffix from end of the \p input
 */
inline std::string RemovePrefixSuffix(const std::string& input, const std::string& prefix,
    const std::string& suffix)
{
    return RemoveSuffix(RemovePrefix(input, prefix), suffix);
}

/**
 *  \brief  Return true if string \p str starts with prefix \p prefix
 */
inline bool StartsWith(const std::string& str, const std::string& prefix)
{
    if (str.length() < prefix.length())
    {
        return false;
    }

    return str.substr(0, prefix.length()) == prefix;
}

/**
 *  \brief  Return true if string \p str ends with suffix \p suffix
 */
inline bool EndsWith(const std::string& str, const std::string& suffix)
{
    if (str.length() < suffix.length() || str.empty())
    {
        return false;
    }

    return (str.substr(str.size() - suffix.length()) == suffix);
}

/**
 * \brief Converts string to identifier
 * \param[in] s string
 * \return identifier
 * \warning User parsers in assembler depend on this functionality
 */
inline const std::string StringToIdentifier(const std::string& s)
{
    std::stringstream ss;
    for (char c : s)
    {
        if (isalnum(c))
        {
            ss << c;
        }
        else
        {
            ss << "_" << "0x" << std::hex << (int)c << std::dec << "_";
        }
    }
    return ss.str();
}

}   // namespace codasip

/** \} */   // end DOXYGEN group comment

#endif // _STRING_UTILS_H_
