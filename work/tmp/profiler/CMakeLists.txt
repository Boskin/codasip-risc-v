project("Profiler_RISC_V5")
cmake_minimum_required(VERSION 2.8 FATAL_ERROR)

list(APPEND SOURCE_FILES
 "codasip_profiler_MI7RISC_V5_MI6isa_hwIH4_2id2id8_6isa_hw6isa_hw.cpp" "codasip_profiler_MI7RISC_V5_Decoders.cpp" "codasip_disassembler_MI7RISC_V5_DisassemblerCore.cpp" "codasip_disassembler_MI7RISC_V5_Dsm.cpp" "c:/users/boskin/codasip/risc_v5/work/tmp/profiler/profiler_builder.cpp" "codasip_profiler_MI7RISC_V5_Profiler.cpp")

include("${TOOLS_DIR}/cmake/profiler.cmake")
