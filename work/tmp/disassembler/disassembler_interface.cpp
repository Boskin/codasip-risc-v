#include "disassembler_interface.h"
#include "codasip_disassembler_MI7RISC_V5_Dsm.h"
#include "basicoptions.h"

static const codasip::getopt::ToolInfoSetter g_ToolInfo(codasip::getopt::ToolInfo("C51_657_727", 
"RISC_V5", 
"bc0f726d732216a62d28372eb2dd55dee052bfe611decfbe60eace2b7f66beaa", 
"2017-11-25 23:36:43", 
""
));
extern "C" CODASIP_EXPORT codasip::disassembler::Disassembler* GetCodasipDisassemblerInstance(){
    return new codasip::disassembler::MI7RISC_V5::Dsm();
}
extern "C" CODASIP_EXPORT const char* GetCodasipDisassemblerName(){
    return "RISC_V5";
}
extern "C" CODASIP_EXPORT const char* GetCodasipDisassemblerVersion(){
    return "6.8.2-1.win.7.EVALUATION";
}
