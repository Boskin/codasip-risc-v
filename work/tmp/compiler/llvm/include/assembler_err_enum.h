#ifndef ERR_ASSEMBLER_ERR_ENUM_H_
#define ERR_ASSEMBLER_ERR_ENUM_H_

#include "message_group.h"
#include "message_info.h"
#include "singleton.h"

#include <set>
#include <map>

namespace codasip {
    // Forward declaration
    class FormatPattern;
}

namespace codasip {
namespace assembler {
namespace err {

typedef enum : unsigned int {
    ENUM_UNKNOWN = 4294967295,
    ENUM_INTERNAL_ERROR = 0,
    ENUM_SYNTACTIC_ANALYSIS_ERROR = 1,
    ENUM_UNEXPECTED_EOF_INSIDE_COMMENT = 2,
    ENUM_UNSUPPORTED_DIRECTIVE_USECT = 3,
    ENUM_DIRECTIVE_ERROR = 4,
    ENUM_UNEXPECTED_CHARACTER = 5,
    ENUM_SECTION_SYNTACTIC_ERROR = 8,
    ENUM_SECTION_DIVISIBLE_WORD_SIZE_BY_BYTE_SIZE = 9,
    ENUM_ULEB128_SLEB128_NOT_A_CONSTANT = 10,
    ENUM_NOT_COMPILE_TIME_EXPRESSION = 11,
    ENUM_DOUBLE_CONSTANT_CONVERSION = 12,
    ENUM_GLOBAL_LOCAL_SYMBOL = 14,
    ENUM_RECURSIVE_SYMBOL_DEFINITION = 15,
    ENUM_MULTIPLE_SYMBOL_DECLARATION = 16,
    ENUM_OPERATOR_ON_RELATIVE_VALUE = 17,
    ENUM_SUBSTRACTION_LABELS_NOT_SAME_SECTION = 18,
    ENUM_SUBSTRACTION_VALUES_NOT_SAME_SECTION = 19,
    ENUM_EXPRESSION_VALUE_OVERFLOW_UNDERFLOW = 20,
    ENUM_EXPRESSION_DIVISION_BY_ZERO = 21,
    ENUM_EXPRESSION_MODULAR_DIVISION_BY_ZERO = 22,
    ENUM_TOO_LARGE_RELOCATION_BIT_WIDTH = 23,
    ENUM_UNKNOWN_ADDRESS_SPACE = 24,
    ENUM_UNSUPPORTED_PROFILER_DIRECTIVE_FLAGS = 25,
    ENUM_DATA_IS_LARGER_THAN_SECTION_SIZE = 28,
    ENUM_SECTION_ALIGNMENT_AND_ABSOLUTE_POSITION = 29,
    ENUM_ACCESS_NON_EXISTENT_SECTION = 30,
    ENUM_DWARF_FILE_NUMBER_WITH_DIFFERENT_NAME_USED = 31,
    ENUM_DWARF_REFERENCED_FILES_NUMBERED_FROM_1 = 32,
    ENUM_DWARF_REFERENCED_FILES_NUMBERED_CONTINUOUSLY = 33,
    ENUM_REFERENCE_TO_UNDEFINED_LOCAL_SYMBOL = 36,
    ENUM_COULD_NOT_GET_LOCAL_LABEL_INDEX = 37,
    ENUM_UNEXPECTED_LOCAL_SYMBOL_PREFIX = 38,
    ENUM_INCORRECT_EXPRESSION_FORM_FOR_OBJECT_FILE = 39,
    ENUM_CREATE_SYMBOL_THAT_ALREADY_EXIST = 41,
    ENUM_UNSUPPORTED_EXPRESSION_WITH_CURRENT_ADDRESS_AND_SYMBOLS = 42,
    ENUM_DIFFERENT_REGISTER_OPERANDS = 43,
    ENUM_MISMATCH_BETWEEN_INSTRUCTION_COUNT_AND_SLOT_COUNT = 44,
    ENUM_FILE_COULD_NOT_BE_OPENED_FOR_MODE = 45,
    ENUM_INVALID_OPTION_DEBUG_LEVEL = 46,
    ENUM_CONSTANT_OUT_OF_RANGE = 47,
    ENUM_INSTRUCTION_SIZE_IS_NOT_DIVISIBLE_BY_BYTE_SIZE = 48,
    ENUM_BUNDLED_LOWER_CONTENT_SIZE = 49,
    ENUM_BUNDLED_INSTRUCTION_WITH_NON_CONTINUOUS_RELOCATION = 50,
    ENUM_CONSTANT_VALUE_NOT_EVALUABLE_DURING_FIRST_PASS = 53,
    ENUM_DIRECTIVE_MACRO_WITHOUT_FOLLOWING_ENDM = 54,
    ENUM_DIRECTIVE_MACRO_ALREADY_DEFINED = 55,
    ENUM_DIRECTIVE_ENDM_WITHOUT_PRECEDING_MACRO = 56,
    ENUM_CONSTANT_CONVERSION = 57,
    ENUM_RETURN_TO_SECTION_WITH_DIFFERENT_SETTING = 60,
    ENUM_DIRECTIVE_POPSECTION_WITHOUT_PRECEDING_PUSHSECTION = 61,
    ENUM_DIRECTIVE_OUTSIDE_OF_SECTION = 62,
    ENUM_DIRECTIVE_ORG_CANNOT_SET_ADDRESS_BEFORE_CURRENT_ADDRESS = 63,
    ENUM_DIRECTIVE_ABS_ORG_ABSOLUTE_ADDRESS_ALREADY_SET = 64,
    ENUM_DIRECTIVE_ABS_ORG_INVALID_ADDRESS = 65,
    ENUM_DIRECTIVE_ABS_ORG_NON_ALIGNED_ADDRESS = 66,
    ENUM_CANNOT_STORE_STRING_OUTSIDE_SECTION = 67,
    ENUM_CANNOT_STORE_STRING_IN_SECTION_WITH_WORD_SIZE = 68,
    ENUM_STORE_DATA_TO_NON_EVALUATED_SYMBOL = 70,
    ENUM_DOUBLE_COSTANT_OVERFLOW = 71,
    ENUM_DIRECTIVE_INCBIN_CANNOT_OPEN_FILE = 72,
    ENUM_DIRECTIVE_INCBIN_ARG_SKIP_IS_NEGATIVE = 73,
    ENUM_DIRECTIVE_INCBIN_ARG_SKIP_LARGER_THAN_FILE_SIZE = 74,
    ENUM_DIRECTIVE_INCBIN_ARG_COUNT_IS_NEGATIVE = 75,
    ENUM_CANNOT_DO_ACTION_OUTSIDE_SECTION = 76,
    ENUM_REQUESTED_BITWIDTH = 77,
    ENUM_ADDRESS_BITS_TO_BE_ALIGNED_IS_NEGATIVE = 79,
    ENUM_LABEL_DEFINED_OUTSIDE_SECTION = 80,
    ENUM_SIZE_OF_SYMBOL_NON_CONSTANT_IN_COMPILE_TIME = 81,
    ENUM_SIZE_OF_SYMBOL_REDEFINED = 82,
    ENUM_INVALID_TYPE_ARGUMENT = 83,
    ENUM_DIRECTIVE_PROFILER_IN_NON_CODE_SECTION = 84,
    ENUM_DIFFERENT_ATTRIBUTES_THAT_SHOULD_BE_SAME = 85,
    ENUM_CODASIP_FATAL = 86
} ErrorCode;

typedef codasip::MessageInfo<> ErrorInfo;

class ErrorManager : public codasip::Singleton<ErrorManager>
{
    SINGLETON(ErrorManager);

public:
    static const ErrorInfo& GetInfo(const ErrorCode code);
    static const codasip::FormatPattern& GetPattern(const ErrorCode code);

private:
    typedef std::map<ErrorCode, ErrorInfo> ErrorInfos;

    codasip::FormatPattern& CreatePattern(const ErrorCode);

    ErrorInfos m_Infos;
};

}   // namespace err
}   // namespace assembler
}   // namespace codasip

#endif // ERR_ASSEMBLER_ERR_ENUM_H_
