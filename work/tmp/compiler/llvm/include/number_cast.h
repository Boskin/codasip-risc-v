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
 *  \date   25.10.2011
 *  \brief  Contains declaration of IntToStr and StrToInt function templates.
 */

#ifndef _NUMBER_CAST_H_
#define _NUMBER_CAST_H_

#include "toolstypes.h"
#include "codasip_integer.h"

#include <string>
#include <sstream>
#include <iomanip>
#include <utility>
#include <stdexcept>
#include <limits>
#include <locale>
#include <algorithm>

namespace codasip {
namespace detail {

const ::std::string ERR_INT_CONV = "Conversion to integer type failed. ";
const std::string ERR_REAL_CONV = "Conversion to real type failed. ";
const std::string ERR_CHAR_CONV = "Conversion of character constant failed. ";
const std::string ERR_ESCAPE_CHAR_CONV = "Conversion of char escape sequence failed. ";
const std::string ERR_BAD_ESCAPE_CHAR = "Escape sequence is out of range of char type. ";
const std::string ERR_UNSUPPORTED_DIGIT = "Conversion of given number failed, invalid digit. ";

/**
 *  \internal
 *  \brief  Generates prefix with error origin before the error message
 *          and throws std::invalid_argument exception with it.
 *  \param  error_message message to the user.
 *  \param  file name of the file where the exception was thrown.
 *  \param  line line number where the exception was thrown.
 */
inline void throw_invalid_arg( const std::string& error_message,
    const char* file,
    const int line )
{
    std::ostringstream oss;
    oss << file << "(" << line << ") error: " << error_message;
    throw std::invalid_argument( oss.str() );
}
/**
 *  \internal
 *  \def    CODASIP_NC_THROW_INVALID_CAST
 *  \brief  Should be used to generate error exceptions.
 */
#define CODASIP_NC_THROW_INVALID_CAST(message) \
    throw_invalid_arg((message),__FILE__,__LINE__)

/**
 *  \addtogroup CODASIP_UTILITY_CONVERSION
 *  \{
 *  \class  number_cast
 *  \brief  This template class handles number conversions between string and
 *          integer or floating types. Supports hexadecimal, octal and decimal
 *          format of integer types, binary format is not supported out of box
 *          (the template type must support it). String format must be set
 *          explicitly. Character constant and escape sequences are supported.
 *  \note   This class should not be used directly, use conversion functions.
 *  \tparam ArithmeticType integer data type. Based on the conversion
 *          (int -> string or string -> int) must be defined stream operators <<
 *          or >> or both.
 *  \throws std::invalid_argument exception on error with string value as
 *          stored argument.
 *  \}
 */
template<typename ArithmeticType>
class number_cast
{
public:
    typedef ArithmeticType value_type;
    /**
     *  \brief  Converts integer types to their string representation.
     *  \param  value user value
     *  \param  number_base Numerical base format flag for the output, default
     *          is std::dec for decimal, supported are std::hex and std::oct.
     *  \param  precision Decimal precision to be used to format floating-point values.
     *  \return String number representation with chosen numerical base.
     */
    static std::string ToString( const value_type& value,
        std::ios_base& (*number_base)(std::ios_base&) = std::dec,
        const int precision = -1 )
    {
        std::ostringstream oss;
        if ( precision > 0 )
        {
            oss << std::setprecision( precision );
        }
        oss << std::nouppercase << number_base << value;
        return oss.str();
    }
    /**
     *  \brief  Convert string number representation to chosen return data type.
     *          Saves bit width of the number specified by the user,
     *          (e.g. "1234ull").
     *  \param  value user value
     *  \param  bitwidth output parameter where information about specified
     *          bit-width will be stored. Value 0 means that user did not
     *          explicitly specified the bit-width.
     *  \param  number_base Numerical base format flag for the input string,
     *          default is std::dec for decimal, supported are std::hex and
     *          std::oct.
     *  \return integer representation with chosen numerical base.
     */
    static value_type StrToInt( const std::string& value,
        int& bitwidth,
        std::ios_base& (*number_base)(std::ios_base&) = std::dec )
    {
        bitwidth = 0;
        if ( value.empty() )
            //CODASIP_NC_THROW_INVALID_CAST( ERR_INT_CONV + " empty string" );
            return 0;

        if ( value == "false" || value == "FALSE" )
            return false;
        else if ( value == "true" || value == "TRUE" )
            return true;
        else if ( value.at(0) == '\'')
        {   // it should be char constant like 'x'
            return static_cast<value_type>( HandleCharConstant( value ) );
        }
        std::string str_value( value );
        bitwidth = CheckNumberSuffix( str_value );

        std::istringstream iss( str_value );
        value_type return_value;
        iss >> number_base >> return_value;
        if ( !iss.eof() )
            CODASIP_NC_THROW_INVALID_CAST(ERR_INT_CONV + " '" + value + '\'');

        return return_value;
    }
    /**
     *  \brief  Convert string number representation to chosen return data type.
     *          Saves bit width of the number specified by the user,
     *          (e.g. 0.0f, 0.0L).
     *  \param  value user value
     *  \param  bitwidth output parameter with bit-width of the constant.
     *          It is determined based on the suffix, if not used, bit-width of
     *          double data type is set.
     *  \return real holding the value
     */
    static value_type StrToReal( const std::string& value, int& bitwidth )
    {
        bitwidth = 0;
        if ( value.empty() )
            CODASIP_NC_THROW_INVALID_CAST( ERR_REAL_CONV + " empty string" );

        std::string str_value( value );
        bitwidth = CheckRealNumberSuffix( str_value );

        std::istringstream iss( str_value );
        value_type return_value;
        iss >> return_value;
        if ( !iss.eof() )
            CODASIP_NC_THROW_INVALID_CAST(ERR_REAL_CONV + " '" + value + '\'');

        return return_value;
    }
private:
    /**
     *  \brief  Handles character constants like '0', 'A'. Checks, if the
     *          character constant has proper format.
     *  \param  value input string data
     *  \return Value of the constant.
     */
    static int HandleCharConstant( const std::string& value )
    {
        std::string string_value( value );
        // count single quotation marks, there has to be exactly two
        if ( std::count( string_value.begin(), string_value.end(), '\'' ) != 2 )
            CODASIP_NC_THROW_INVALID_CAST( ERR_CHAR_CONV + " '" + value + "'" );
        // remove first and last character (which should be ')
        string_value = string_value.substr( 1, string_value.size() -2 );
        // there should not be any single quotation mark anymore
        if ( std::count( string_value.begin(), string_value.end(), '\'' ) > 0 )
            CODASIP_NC_THROW_INVALID_CAST( ERR_CHAR_CONV + " '" + value + "'" );
        // check escape sequences, just one is allowed except double backslash
        if (( std::count( string_value.begin(), string_value.end(), '\\' ) > 1 )
            && (string_value != "\\\\") )
            CODASIP_NC_THROW_INVALID_CAST( ERR_CHAR_CONV + " '" + value + "'" );
        // if it is escape sequence get it's value, otherwise simple access
        return ( (string_value[0] == '\\')
            ? EscapeSequenceValue( string_value )
            : string_value[0] );
    }
    /**
     *  \brief  Handles character constants with one escape sequence.
     *  \param  string_value String representation of the constant.
     *  \return Character constant value.
     */
    static int EscapeSequenceValue( const std::string& string_value )
    {
        typedef std::pair<std::string, int> escape_pair;
        static escape_pair simple_escape_sequence[] =
        {   // escape sequence table
            escape_pair("\\a", '\a'), escape_pair("\\b", '\b'),
            escape_pair("\\f", '\f'), escape_pair("\\n", '\n'),
            escape_pair("\\r", '\r'), escape_pair("\\t", '\t'),
            escape_pair("\\v", '\v'), escape_pair("\\'", '\''),
            escape_pair("\\\"", '\"'), escape_pair("\\\\", '\\'),
            escape_pair("\\?", '\?'), escape_pair("\\0", 0),
        };
        static const size_t simple_escape_sequence_count =
            sizeof(simple_escape_sequence) / sizeof(escape_pair);
        for ( size_t i = 0; i < simple_escape_sequence_count; ++i )
        {   // try to find simple escape sequence
            if ( string_value == simple_escape_sequence[i].first )
                return simple_escape_sequence[i].second;
        }
        // need backslash and at lease one character
        if ( string_value.size() < 2 || string_value[0] != '\\' )
            CODASIP_NC_THROW_INVALID_CAST(
                ERR_ESCAPE_CHAR_CONV + "'" + string_value + "'" );
        // it's not simple escape sequence, it should be hexa or octal number
        char c;
        int value = std::numeric_limits<int>::min();
        std::stringstream ss( string_value );
        if ( string_value[1] == 'x' )
        {   // ASCII character in hexa notation, skip first two chars "\x"
            ss.get(c).get(c) >> std::hex >> value;
        }
        else
        {   // ASCII character in octal notation, skip first char with "\"
            ss.get(c) >> std::oct >> value;
        }
        if ( !ss.eof() )
        {   // the input was not read completely => fail
            CODASIP_NC_THROW_INVALID_CAST(
                ERR_ESCAPE_CHAR_CONV + "'" + string_value + "'" );
        }
        if ( value < std::numeric_limits<char>::min() ||
             std::numeric_limits<char>::max() < value )
        {   // check underflow/overflow/out of range
            CODASIP_NC_THROW_INVALID_CAST(
                ERR_BAD_ESCAPE_CHAR + "'" + string_value + "'" );
        }

        return value;
    }
    /**
     *  \brief  Checks the constant number suffix format (like "ull") and based
     *          on this suffix return bit-width.
     *  \param  str_value input string
     *  \return bit-width for the constant.
     *  \retval 0   user bit-width was not specified.
     */
    static int CheckNumberSuffix( std::string& str_value )
    {
        int lcount(0), ucount(0);
        std::string value( str_value );
        typedef typename std::string::reverse_iterator iterator;
        for ( iterator rit = value.rbegin(); rit != value.rend(); ++rit )
        {
            if ( *rit == 'u' || *rit == 'U' )
                ++ucount;
            else if ( *rit == 'l' || *rit == 'L' )
                ++lcount;
            else if ( isxdigit( *rit ) )
            {
                value.erase( value.rend() - rit );
                break;
            }
            else
            {   // unsupported character, probably bad number format
                CODASIP_NC_THROW_INVALID_CAST(
                    ERR_UNSUPPORTED_DIGIT + "'" + value + "'" );
            }
        }
        if (ucount > 1 || lcount > 2)
        {   // to many l or u used, max is ull
            CODASIP_NC_THROW_INVALID_CAST("Invalid suffix: '" + str_value + "'");
        }
        str_value = value;
        return ( (lcount == 2)
            ? std::numeric_limits<unsigned long long>::digits
            : std::numeric_limits<unsigned long>::digits * lcount );
    }
    /**
     *  \brief  Checks the constant number suffix format (like f, l) and based
     *          on this suffix return bit-width.
     *  \param  str_value input string
     *  \return bit-width for the constant.
     *  \retval bit-width of double when no suffix was specified.
     */
    static int CheckRealNumberSuffix( std::string& str_value )
    {
        int lcount(0), fcount(0);
        std::string value( str_value );
        typedef typename std::string::reverse_iterator iterator;
        for ( iterator rit = value.rbegin(); rit != value.rend(); ++rit )
        {
            if ( *rit == 'f' || *rit == 'F' )
                ++fcount;
            else if ( *rit == 'l' || *rit == 'L' )
                ++lcount;
            else if ( isdigit( *rit ) || (*rit == '.') )
            {
                value.erase( value.rend() - rit, std::string::npos );
                break;
            }
            else
            {   // unsupported character, probably bad number format
                CODASIP_NC_THROW_INVALID_CAST(
                    ERR_UNSUPPORTED_DIGIT + "'" + value + "'" );
            }
            if (fcount > 1 || lcount > 1 || ((fcount == lcount) && fcount != 0))
            {   // to many l or f used or combination used
                CODASIP_NC_THROW_INVALID_CAST("Invalid suffix: '" + str_value + "'");
            }
        }
        str_value = value;
        return (fcount)
            ? FLOAT_BIT_WIDTH : (lcount)
            ? LONG_DOUBLE_BIT_WIDTH
            : DOUBLE_BIT_WIDTH;
    }
};

#undef CODASIP_NC_THROW_INVALID_CAST

}   // namespace detail

/**
 *  \addtogroup CODASIP_UTILITY
 *  \{
 *  \defgroup CODASIP_UTILITY_CONVERSION Number conversions
 *  Contains basic function which should be used for conversions between
 *  integer/float values and their string representation.
 *  \{
 */
/**
 *  \brief  Basic template function to convert integer types to their string
 *          representation.
 *  \tparam IntegerType source data type, must have stream output operator <<
 *          defined.
 *  \param  value user value
 *  \param  number_base Numerical base format for the output, default is decimal
 *          with std::dec, supported are std::oct and std::hex too.
 *  \return String number representation with chosen numerical base.
 */
template<typename IntegerType>
inline std::string IntToStr( const IntegerType& value,
    std::ios_base& (*number_base)(std::ios_base&) = std::dec  )
{
    return codasip::detail::number_cast<IntegerType>::ToString( value, number_base );
}

/**
 *  \addtogroup CODASIP_UTILITY
 *  \{
 *  \defgroup CODASIP_UTILITY_CONVERSION Number conversions
 *  Contains basic function which should be used for conversions between
 *  integer/float values and their string representation.
 *  \{
 */
/**
 *  \brief  Basic template function to convert integer types to their hexadecimal string
 *          representation. Ensures that hexadecimal number will be printed with '0x' prefix.
 *  \tparam IntegerType source data type, must have stream output operator <<
 *          defined.
 *  \param  value user value
 *  \return String number representation with chosen numerical base.
 */
template<typename IntegerType>
inline std::string IntToHexStr(const IntegerType& value)
{
    return "0x" + IntToStr(value, std::hex);
}

/**
 *  \brief  Basic template function to convert real (floating) types to their
 *          string representation.
 *  \param  value user value
 *  \param  number_base Numerical base format for the output, default is decimal
 *          with std::dec, supported are std::oct and std::hex too.
 *  \param  precision Decimal precision to be used to format floating-point values.
 *  \return String number representation.
 */
template<typename RealType>
inline std::string RealToStr( const RealType& value,
    std::ios_base& (*number_base)(std::ios_base&) = std::dec,
    const int precision = -1 )
{   // same implementation, just different name
    return codasip::detail::number_cast<RealType>::ToString( value, number_base, precision );
}

/**
 *  \brief  Basic template function to convert real types to their hexadecimal string
 *          representation. Ensures that hexadecimal number will be printed with '0x' prefix.
 *  \tparam RealType source data type.
 *  \tparam IntegerType source data type, must have stream output operator << defined.
 *  \param  value user value
 *  \param  showComment show value as real in comment.
 *  \return String number representation with chosen numerical base.
 *  \note   RealType and IntegerType should have same length.
 *          TODO try to remove need of IntegerType
 */
template<typename RealType, typename IntegerType>
inline std::string RealToHexStr(const RealType& value, const bool showComment = false)
{
    const IntegerType* pointer = (const IntegerType*)&value;
    return IntToHexStr(*pointer) + (showComment ? " /*" + RealToStr(value) + "*/" : "");
}

/**
 *  \brief  Basic template function to convert string number representation
 *          to chosen return data type. Saves bit width of the number in case
 *          when number suffix is specified by the user like "1234LL".
 *          Automatically detects number format (decimal, hexadecimal
 *          and octal). Can handle character escape sequences.
 *  \tparam ReturnType return data type, must have stream operator >> defined.
 *  \param  value user value
 *  \param  bitwidth output parameter where information about specified
 *          bit-width will be stored.
 *  \return integer holding the value with chosen numerical base.
 */
template<typename ReturnType>
inline ReturnType StrToInt( const std::string& value, int& bitwidth )
{
    if ( value.size() > 2 && value.at(0) == '0' && (value.at(1) == 'x' || value.at(1) == 'X') )
    {   // hexadecimal detected
        return codasip::detail::number_cast<ReturnType>::StrToInt( value, bitwidth, std::hex );
    }
    else if ( value.size() > 2 && value.at(0) == '0' && (value.at(1) == 'b' || value.at(1) == 'B') )
    {
        bitwidth = 0;
        return codasip::MaxInt(value);
    }
    else if ( value.size() > 1 && value.at(0) == '0' )
    {   // octal format
        return codasip::detail::number_cast<ReturnType>::StrToInt( value, bitwidth, std::oct );
    }
    else
    {   // default is decimal
        return codasip::detail::number_cast<ReturnType>::StrToInt( value, bitwidth, std::dec );
    }
}

/**
 *  \brief  Basic template function to convert string number representation
 *          to chosen return data type. Automatically detects number format
 *          (decimal, hexadecimal and octal). Can handle character escape 
 *          sequences.
 *  \tparam ReturnType return data type, must have stream operator >> defined.
 *  \param  value user value
 *  \return integer holding the value with chosen numerical base.
 */
template<typename ReturnType>
inline ReturnType StrToInt( const std::string& value )
{
    int bitwidth;
    return StrToInt<ReturnType>( value, bitwidth );
}

/**
 *  \{
 *  \copydoc StrToReal( const std::string& )
 *  \param  bitwidth output parameter where information about bit-width will be
 *          stored (contains correct value if no exception).
 */
template<typename ReturnType>
ReturnType StrToReal( const std::string& value, int& bitwidth );

// limit the usage only to float, double and long double
// otherwise cause compilation error
template<>
inline float StrToReal<float>( const std::string& value, int& bitwidth )
{
    return codasip::detail::number_cast<float>::StrToReal( value, bitwidth );
}
template<>
inline double StrToReal<double>( const std::string& value, int& bitwidth )
{
    return codasip::detail::number_cast<double>::StrToReal( value, bitwidth );
}
template<>
inline long double StrToReal<long double>( const std::string& value,
    int& bitwidth )
{
    return codasip::detail::number_cast<long double>::StrToReal( value, bitwidth );
}

/**
 *  \}
 *  \brief  Basic template function to convert real number in string
 *          representation to real (floating point) data type.
 *  \tparam ReturnType return data type, can be only float, double, long double.
 *  \param  value user value
 *  \return real holding the value with chosen numerical base.
 */
template<typename ReturnType>
inline ReturnType StrToReal( const std::string& value )
{
    int bitwidth;
    return StrToReal<ReturnType>( value, bitwidth );
}

/**
 *  \}
 *  \}
 */   // end DOXYGEN group comment

}    // namespace codasip

#endif // _NUMBER_CAST_H_
