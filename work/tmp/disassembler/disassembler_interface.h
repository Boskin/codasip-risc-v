#ifndef _DISASSEMBLER_INTERFACE_H_
#define _DISASSEMBLER_INTERFACE_H_
#include "disassembler.h"

#include "compiler.h"

extern "C" CODASIP_EXPORT codasip::disassembler::Disassembler* GetCodasipDisassemblerInstance();
extern "C" CODASIP_EXPORT const char* GetCodasipDisassemblerName();
extern "C" CODASIP_EXPORT const char* GetCodasipDisassemblerVersion();
#endif
