project("Assembler_RISC_V5")
cmake_minimum_required(VERSION 2.8 FATAL_ERROR)

list(APPEND SOURCE_FILES
 "codasip_assembler_TokenIdInfos.cpp")

include("${TOOLS_DIR}/cmake/assembler.cmake")
