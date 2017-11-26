#ifndef ERR_ASSEMBLER_NOTE_ENUM_H_
#define ERR_ASSEMBLER_NOTE_ENUM_H_

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
namespace note {

typedef enum : unsigned int {
    ENUM_UNKNOWN = 4294967295,
    ENUM_FIRST_OCCURRED_HERE = 2147483648,
    ENUM_PREVIOUS_DEFINITION = 2147483649
} NoteCode;

typedef codasip::MessageInfo<> NoteInfo;

class NoteManager : public codasip::Singleton<NoteManager>
{
    SINGLETON(NoteManager);

public:
    static const NoteInfo& GetInfo(const NoteCode code);
    static const codasip::FormatPattern& GetPattern(const NoteCode code);

private:
    typedef std::map<NoteCode, NoteInfo> NoteInfos;

    codasip::FormatPattern& CreatePattern(const NoteCode);

    NoteInfos m_Infos;
};

}   // namespace note
}   // namespace assembler
}   // namespace codasip

#endif // ERR_ASSEMBLER_NOTE_ENUM_H_
