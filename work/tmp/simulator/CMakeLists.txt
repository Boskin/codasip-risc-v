project("iSimulator_RISC_V5")
cmake_minimum_required(VERSION 2.8 FATAL_ERROR)

add_definitions(-D__CA_MODEL__)

list(APPEND SOURCE_FILES
 "codasip_resources_MemoryCore_codasip_memory_codasip_mem_RISC_V5_as_all_0_t.cpp" "codasip_disassembler_MI7RISC_V5_DisassemblerCore.cpp" "codasip_disassembler_MI7RISC_V5_Dsm.cpp" "codasip_simulator_MI7RISC_V5_Sim.cpp" "codasip_simulator_MI17codasip_top_level_Sim.cpp")

include("${TOOLS_DIR}/cmake/isimulator.cmake")
