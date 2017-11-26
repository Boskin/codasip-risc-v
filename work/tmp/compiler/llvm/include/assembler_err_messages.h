#ifndef ERR_ASSEMBLER_ERR_H_
#define ERR_ASSEMBLER_ERR_H_

#include "assembler_message_printer.h"
#include "enumutils.h"
#include "format_number.h"
#include "codasip_integer.h"
#include "location.h"
#include "assembler_err_enum.h"
#include "common_messages.h"

namespace codasip {
namespace assembler {
namespace err {

CODASIP_ENUM_CLASS_STR(OverUnderFlow,
    (CASE_OVERFLOW = 0, "overflow"),
    (CASE_UNDERFLOW = 1, "underflow"));

CODASIP_ENUM_CLASS_STR(SectionSetting,
    (SECTION_SETTING_TYPE = 0, "type"),
    (SECTION_SETTING_WORD = 1, "word bit-width"),
    (SECTION_SETTING_BPWC = 2, "bytes per word count"),
    (SECTION_SETTING_ENDIAN = 3, "endianess"),
    (SECTION_SETTING_ADDRESS_SPACE = 4, "address space"));

CODASIP_ENUM_CLASS_STR(SectionDirectives,
    (ORG = 0, ".org"),
    (ABS_ORG = 1, ".abs_org"),
    (PROFILER = 2, ".profiler"));

CODASIP_ENUM_CLASS_STR(SectionAction,
    (DEFINE_DATA = 0, "define data"),
    (DO_ALIGNMENT = 1, "do alignment"),
    (DEFINE_COMMON_SYMBOL = 2, "define common symbol"));

CODASIP_ENUM_CLASS_STR(BitWidth77,
    (TOO_SMALL_77 = 0, "small, minimal"),
    (TOO_LARGE_77 = 1, "large, maximal"));

codasip::assembler::MessagePrinter INTERNAL_ERROR(const std::string& text0);

codasip::assembler::MessagePrinter INTERNAL_ERROR(const Location& location,
    const std::string& text0);

codasip::assembler::MessagePrinter SYNTACTIC_ANALYSIS_ERROR(const Location& location,
    const std::string& text0);

codasip::assembler::MessagePrinter UNEXPECTED_EOF_INSIDE_COMMENT(const Location& location);

codasip::assembler::MessagePrinter UNSUPPORTED_DIRECTIVE_USECT(const Location& location);

codasip::assembler::MessagePrinter DIRECTIVE_ERROR(const Location& location,
    const std::string& text0);

codasip::assembler::MessagePrinter UNEXPECTED_CHARACTER(const Location& location,
    const std::string& text0,
    const codasip::format::Number num0);

codasip::assembler::MessagePrinter SECTION_SYNTACTIC_ERROR(const Location& location);

codasip::assembler::MessagePrinter SECTION_DIVISIBLE_WORD_SIZE_BY_BYTE_SIZE(const Location& location,
    const std::string& id0,
    const codasip::format::Number num0,
    const codasip::format::Number num1);

codasip::assembler::MessagePrinter ULEB128_SLEB128_NOT_A_CONSTANT(const Location& location);

codasip::assembler::MessagePrinter NOT_COMPILE_TIME_EXPRESSION(const Location& location,
    const std::string& id0);

codasip::assembler::MessagePrinter DOUBLE_CONSTANT_CONVERSION(const Location& location,
    const std::string& text0,
    const codasip::format::Number num0);

codasip::assembler::MessagePrinter GLOBAL_LOCAL_SYMBOL(const Location& location,
    const std::string& id0);

codasip::assembler::MessagePrinter RECURSIVE_SYMBOL_DEFINITION(const Location& location,
    const std::string& id0);

codasip::assembler::MessagePrinter MULTIPLE_SYMBOL_DECLARATION(const Location& location,
    const std::string& id0);

codasip::assembler::MessagePrinter OPERATOR_ON_RELATIVE_VALUE(const Location& location,
    const std::string& text0,
    const std::string& text1);

codasip::assembler::MessagePrinter SUBSTRACTION_LABELS_NOT_SAME_SECTION(const Location& location,
    const std::string& id0,
    const std::string& id1,
    const std::string& text0);

codasip::assembler::MessagePrinter SUBSTRACTION_VALUES_NOT_SAME_SECTION(const Location& location,
    const std::string& text0);

codasip::assembler::MessagePrinter EXPRESSION_VALUE_OVERFLOW_UNDERFLOW(const Location& location,
    const OverUnderFlow::EnumType enum0,
    const std::string& text0);

codasip::assembler::MessagePrinter EXPRESSION_DIVISION_BY_ZERO(const Location& location,
    const std::string& text0);

codasip::assembler::MessagePrinter EXPRESSION_MODULAR_DIVISION_BY_ZERO(const Location& location,
    const std::string& text0);

codasip::assembler::MessagePrinter TOO_LARGE_RELOCATION_BIT_WIDTH(const Location& location,
    const codasip::format::Number num0,
    const codasip::format::Number num1,
    const codasip::format::Number num2);

codasip::assembler::MessagePrinter UNKNOWN_ADDRESS_SPACE(const Location& location,
    const codasip::format::Number num0);

codasip::assembler::MessagePrinter UNSUPPORTED_PROFILER_DIRECTIVE_FLAGS(const Location& location,
    const std::string& text0);

codasip::assembler::MessagePrinter DATA_IS_LARGER_THAN_SECTION_SIZE(const Location& location,
    const codasip::format::Number num0,
    const codasip::format::Number num1);

codasip::assembler::MessagePrinter SECTION_ALIGNMENT_AND_ABSOLUTE_POSITION(const Location& location,
    const codasip::format::Number num0,
    const codasip::format::Number num1);

codasip::assembler::MessagePrinter ACCESS_NON_EXISTENT_SECTION(const Location& location);

codasip::assembler::MessagePrinter DWARF_FILE_NUMBER_WITH_DIFFERENT_NAME_USED(const Location& location,
    const codasip::format::Number num0,
    const std::string& id0);

codasip::assembler::MessagePrinter DWARF_REFERENCED_FILES_NUMBERED_FROM_1();

codasip::assembler::MessagePrinter DWARF_REFERENCED_FILES_NUMBERED_CONTINUOUSLY(const codasip::format::Number num0,
    const codasip::format::Number num1);

codasip::assembler::MessagePrinter REFERENCE_TO_UNDEFINED_LOCAL_SYMBOL(const Location& location,
    const std::string& id0,
    const codasip::format::Number num0);

codasip::assembler::MessagePrinter COULD_NOT_GET_LOCAL_LABEL_INDEX(const Location& location,
    const std::string& id0);

codasip::assembler::MessagePrinter UNEXPECTED_LOCAL_SYMBOL_PREFIX(const Location& location,
    const std::string& id0,
    const std::string& text0);

codasip::assembler::MessagePrinter INCORRECT_EXPRESSION_FORM_FOR_OBJECT_FILE(const Location& location,
    const std::string& id0);

codasip::assembler::MessagePrinter CREATE_SYMBOL_THAT_ALREADY_EXIST(const Location& location,
    const std::string& id0);

codasip::assembler::MessagePrinter UNSUPPORTED_EXPRESSION_WITH_CURRENT_ADDRESS_AND_SYMBOLS(const Location& location,
    const std::string& text0);

codasip::assembler::MessagePrinter DIFFERENT_REGISTER_OPERANDS(const Location& location,
    const std::string& text0);

codasip::assembler::MessagePrinter MISMATCH_BETWEEN_INSTRUCTION_COUNT_AND_SLOT_COUNT(const Location& location,
    const codasip::format::Number num0,
    const codasip::format::Number num1);

codasip::assembler::MessagePrinter FILE_COULD_NOT_BE_OPENED_FOR_MODE(const std::string& id0,
    const std::string& text0);

codasip::assembler::MessagePrinter INVALID_OPTION_DEBUG_LEVEL(const std::string& text0);

codasip::assembler::MessagePrinter CONSTANT_OUT_OF_RANGE(const Location& location,
    const codasip::format::Number num0,
    const codasip::format::Number num1,
    const codasip::format::Number num2);

codasip::assembler::MessagePrinter INSTRUCTION_SIZE_IS_NOT_DIVISIBLE_BY_BYTE_SIZE(const Location& location,
    const codasip::format::Number num0,
    const codasip::format::Number num1);

codasip::assembler::MessagePrinter BUNDLED_LOWER_CONTENT_SIZE(const Location& location,
    const codasip::format::Number num0,
    const codasip::format::Number num1);

codasip::assembler::MessagePrinter BUNDLED_INSTRUCTION_WITH_NON_CONTINUOUS_RELOCATION(const Location& location,
    const std::string& id0,
    const codasip::format::Number num0);

codasip::assembler::MessagePrinter CONSTANT_VALUE_NOT_EVALUABLE_DURING_FIRST_PASS(const Location& location);

codasip::assembler::MessagePrinter DIRECTIVE_MACRO_WITHOUT_FOLLOWING_ENDM(const Location& location);

codasip::assembler::MessagePrinter DIRECTIVE_MACRO_ALREADY_DEFINED(const Location& location,
    const std::string& id0);

codasip::assembler::MessagePrinter DIRECTIVE_ENDM_WITHOUT_PRECEDING_MACRO(const Location& location);

codasip::assembler::MessagePrinter CONSTANT_CONVERSION(const Location& location,
    const std::string& text0,
    const std::string& text1,
    const codasip::format::Number num0);

codasip::assembler::MessagePrinter RETURN_TO_SECTION_WITH_DIFFERENT_SETTING(const Location& location,
    const std::string& id0,
    const SectionSetting::EnumType enum0);

codasip::assembler::MessagePrinter DIRECTIVE_POPSECTION_WITHOUT_PRECEDING_PUSHSECTION(const Location& location);

codasip::assembler::MessagePrinter DIRECTIVE_OUTSIDE_OF_SECTION(const Location& location,
    const SectionDirectives::EnumType enum0);

codasip::assembler::MessagePrinter DIRECTIVE_ORG_CANNOT_SET_ADDRESS_BEFORE_CURRENT_ADDRESS(const Location& location,
    const codasip::format::Number num0,
    const std::string& id0,
    const codasip::format::Number num1);

codasip::assembler::MessagePrinter DIRECTIVE_ABS_ORG_ABSOLUTE_ADDRESS_ALREADY_SET(const Location& location,
    const std::string& id0);

codasip::assembler::MessagePrinter DIRECTIVE_ABS_ORG_INVALID_ADDRESS(const Location& location,
    const codasip::format::Number num0,
    const std::string& id0,
    const codasip::format::Number num1);

codasip::assembler::MessagePrinter DIRECTIVE_ABS_ORG_NON_ALIGNED_ADDRESS(const Location& location,
    const codasip::format::Number num0,
    const codasip::format::Number num1);

codasip::assembler::MessagePrinter CANNOT_STORE_STRING_OUTSIDE_SECTION(const Location& location,
    const std::string& text0);

codasip::assembler::MessagePrinter CANNOT_STORE_STRING_IN_SECTION_WITH_WORD_SIZE(const Location& location,
    const std::string& text0,
    const std::string& id0,
    const codasip::format::Number num0);

codasip::assembler::MessagePrinter STORE_DATA_TO_NON_EVALUATED_SYMBOL(const Location& location);

codasip::assembler::MessagePrinter DOUBLE_COSTANT_OVERFLOW(const Location& location,
    const std::string& text0);

codasip::assembler::MessagePrinter DIRECTIVE_INCBIN_CANNOT_OPEN_FILE(const Location& location,
    const std::string& id0);

codasip::assembler::MessagePrinter DIRECTIVE_INCBIN_ARG_SKIP_IS_NEGATIVE(const Location& location,
    const codasip::format::Number num0);

codasip::assembler::MessagePrinter DIRECTIVE_INCBIN_ARG_SKIP_LARGER_THAN_FILE_SIZE(const Location& location,
    const codasip::format::Number num0,
    const codasip::format::Number num1);

codasip::assembler::MessagePrinter DIRECTIVE_INCBIN_ARG_COUNT_IS_NEGATIVE(const Location& location,
    const codasip::format::Number num0);

codasip::assembler::MessagePrinter CANNOT_DO_ACTION_OUTSIDE_SECTION(const Location& location,
    const SectionAction::EnumType enum0);

codasip::assembler::MessagePrinter REQUESTED_BITWIDTH(const Location& location,
    const BitWidth77::EnumType enum0,
    const codasip::format::Number num0,
    const codasip::format::Number num1);

codasip::assembler::MessagePrinter ADDRESS_BITS_TO_BE_ALIGNED_IS_NEGATIVE(const Location& location,
    const codasip::format::Number num0);

codasip::assembler::MessagePrinter LABEL_DEFINED_OUTSIDE_SECTION(const Location& location,
    const std::string& id0);

codasip::assembler::MessagePrinter SIZE_OF_SYMBOL_NON_CONSTANT_IN_COMPILE_TIME(const Location& location,
    const std::string& id0);

codasip::assembler::MessagePrinter SIZE_OF_SYMBOL_REDEFINED(const Location& location,
    const std::string& id0);

codasip::assembler::MessagePrinter INVALID_TYPE_ARGUMENT(const Location& location,
    const std::string& text0);

codasip::assembler::MessagePrinter DIRECTIVE_PROFILER_IN_NON_CODE_SECTION(const Location& location);

codasip::assembler::MessagePrinter DIFFERENT_ATTRIBUTES_THAT_SHOULD_BE_SAME(const Location& location,
    const std::string& id0,
    const codasip::format::Number num0,
    const codasip::format::Number num1);

codasip::assembler::MessagePrinter CODASIP_FATAL(const Location& location,
    const std::string& text0);

}   // namespace err
}   // namespace assembler
}   // namespace codasip

#endif // ERR_ASSEMBLER_ERR_H_
