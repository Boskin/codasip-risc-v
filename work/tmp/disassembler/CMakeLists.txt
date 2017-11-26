project("Disassembler_RISC_V5")
cmake_minimum_required(VERSION 2.8 FATAL_ERROR)

list(APPEND SOURCE_FILES
 "codasip_disassembler_MI7RISC_V5_DisassemblerCore.cpp" "codasip_disassembler_MI7RISC_V5_Dsm.cpp" "disassembler_interface.cpp")

include("${TOOLS_DIR}/cmake/disassembler.cmake")
