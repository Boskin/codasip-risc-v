#ifndef ERR_ASSEMBLER_NOTE_H_
#define ERR_ASSEMBLER_NOTE_H_

#include "assembler_message_printer.h"
#include "enumutils.h"
#include "format_number.h"
#include "codasip_integer.h"
#include "location.h"
#include "assembler_note_enum.h"

namespace codasip {
namespace assembler {
namespace note {

Message FIRST_OCCURRED_HERE(const Location& location);

Message PREVIOUS_DEFINITION(const Location& location);

}   // namespace note
}   // namespace assembler
}   // namespace codasip

#endif // ERR_ASSEMBLER_NOTE_H_
