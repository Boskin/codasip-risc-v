#ifndef ERR_ASSEMBLER_WRN_H_
#define ERR_ASSEMBLER_WRN_H_

#include "assembler_message_printer.h"
#include "enumutils.h"
#include "format_number.h"
#include "codasip_integer.h"
#include "location.h"
#include "assembler_wrn_enum.h"

namespace codasip {
namespace assembler {
namespace wrn {

CODASIP_ENUM_CLASS_STR(RelocationOverflowSign,
    (CAPITAL_SIGNED = 0, "Signed"),
    (CAPITAL_UNSIGNED = 1, "Unsigned"));

codasip::assembler::MessagePrinter DIRECTIVE_WARNING(const Location& location,
    const std::string& text0);

codasip::assembler::MessagePrinter UNSUPPORTED_DIRECTIVE(const Location& location,
    const std::string& text0);

codasip::assembler::MessagePrinter IGNORE_DIRECTIVE(const Location& location);

codasip::assembler::MessagePrinter IGNORE_SECTION_FLAGS(const Location& location,
    const std::string& text0);

codasip::assembler::MessagePrinter UNEXPECTED_SECTION_TYPE_ARGUMENT(const Location& location,
    const std::string& text0);

codasip::assembler::MessagePrinter IGNORE_TYPE_DIRECTIVE_SPECIFIER(const Location& location,
    const std::string& text0);

codasip::assembler::MessagePrinter IGNORE_LOC_OPTION_SPECIFIER(const Location& location);

codasip::assembler::MessagePrinter IGNORE_LOC_OPTION(const Location& location,
    const std::string& text0);

codasip::assembler::MessagePrinter UNEXPECTED_SIGN_FOR_RELATIVE_RELOCATION(const Location& location);

codasip::assembler::MessagePrinter RELOCATION_OVERFLOW(const Location& location,
    const RelocationOverflowSign::EnumType enum0,
    const codasip::format::Number num0,
    const codasip::format::Number num1,
    const codasip::format::Number num2,
    const codasip::format::Number num3,
    const codasip::format::Number num4);

codasip::assembler::MessagePrinter NON_CODE_SECTION_LINE_INFORMATION(const std::string& id0);

codasip::assembler::MessagePrinter UNDETERMINED_ELF_FILE_ENDIANESS(const Location& location);

codasip::assembler::MessagePrinter RETURN_COLUMN_INFO_NOT_SET(const Location& location);

codasip::assembler::MessagePrinter LAST_FUNCTION_HAS_NOT_LAST_ADDRESS_SET(const Location& location);

codasip::assembler::MessagePrinter CURRENT_FUNCTION_HAS_NOT_START_ADDRESS_SET(const Location& location);

codasip::assembler::MessagePrinter CFI_START_PROC_CFI_END_PROC_IN_DIFFERENT_SECTIONS(const Location& location);

codasip::assembler::MessagePrinter CIE_INFORMATION_DOES_NOT_FIT_CURRENT_SECTION(const Location& location);

codasip::assembler::MessagePrinter CFI_SAME_VALUE_NON_NEGATIVE_ARGUMENT(const Location& location);

codasip::assembler::MessagePrinter MISSING_CFI_RETURN_COLUMN_SPECIFICATION(const Location& location);

codasip::assembler::MessagePrinter MULTIPLE_RETVAL_REGS_OR_RETSTRUC_REGS(const Location& location);

codasip::assembler::MessagePrinter DIRECTIVE_LOC_IN_DIFFERENT_SECTIONS(const Location& location);

codasip::assembler::MessagePrinter DWARF_AND_NO_DEBUGLINE_SECTION();

codasip::assembler::MessagePrinter DWARF_ADDRESS_SIZE_RETRIEVAL(const Location& location);

codasip::assembler::MessagePrinter DWARF_COULD_NOT_RETRIEVE_ADDRESS_SIZE(const Location& location);

codasip::assembler::MessagePrinter DWARF_INVALID_ADDRESS_SIZE_RETRIEVED(const Location& location,
    const codasip::format::Number num0);

codasip::assembler::MessagePrinter DWARF_SAME_LINE_INFO_FOR_MULTIPLE_LINES(const Location& location,
    const codasip::format::Number num0,
    const codasip::format::Number num1,
    const codasip::format::Number num2);

codasip::assembler::MessagePrinter ABSOLUTE_SYMBOL_WITH_DEFINED_SECTION(const Location& location,
    const std::string& id0);

codasip::assembler::MessagePrinter INSTRUCTION_NOT_DIVISIBLE_BY_PARCEL_BITS_SIZE(const Location& location,
    const codasip::format::Number num0,
    const codasip::format::Number num1);

codasip::assembler::MessagePrinter SECTION_FLAGS_DO_NOT_MATCH_TYPE_SPECIFIER(const Location& location,
    const std::string& text0,
    const std::string& text1);

codasip::assembler::MessagePrinter SECTION_UNKNOWN_FLAGS(const Location& location,
    const std::string& text0);

codasip::assembler::MessagePrinter DIRECTIVE_ALIGNMENT_MAX_BYTES_TO_BE_SKIPPED(const Location& location);

codasip::assembler::MessagePrinter DIRECTIVE_INCBIN_COUNT(const Location& location,
    const codasip::format::Number num0,
    const codasip::format::Number num1);

codasip::assembler::MessagePrinter DIRECTIVE_INCBIN_SKIP_ADDED_TO_COUNT(const Location& location,
    const codasip::format::Number num0,
    const codasip::format::Number num1);

codasip::assembler::MessagePrinter PREVIOUS_WITHOUT_CORRESPONDING_SECTION(const Location& location,
    const std::string& id0);

}   // namespace wrn
}   // namespace assembler
}   // namespace codasip

#endif // ERR_ASSEMBLER_WRN_H_
