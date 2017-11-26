set(DEBUG_SOURCES OFF) # do not modify this line, may be modified with script codasip_install_sources.sh during installation
set(EVALUATION ON) # do not modify this line, may be modified with script codasip_install_sources.sh during installation
link_directories(${CMAKE_BINARY_DIR}/lib/ ${CUSTOM_LIB_PATH}/ ${CODASIP_INSTALL}/lib/)

add_executable(llc dummy.cpp)

set(CMAKE_LIBRARY_PATH ${CMAKE_LIBRARY_PATH} ${CMAKE_BINARY_DIR}/bin)

target_link_libraries(llc llcarch LLVMCodasipCodeGen  LLVMCodasipDesc LLVMCodasipInfo LLVMExtractorCodeGen LLVMExtractorDesc LLVMExtractorInfo LLVMSemExtrCommon
    LLVMIRReader LLVMAsmParser LLVMBitReader LLVMBitWriter LLVMSelectionDAG LLVMipo LLVMAnalysis LLVMAsmPrinter LLVMMCParser LLVMCodeGen LLVMInstrumentation LLVMMIRParser LLVMScalarOpts LLVMInstCombine LLVMTransformUtils LLVMAnalysis LLVMTarget LLVMCore LLVMMC LLVMSupport LLVMDebugInfoCodeView LLVMCodasipMisc
    LLVMDebugInfoMSF LLVMDemangle)

add_dependencies(llc LLVMCodasipCodeGen)

if (UNIX)
    target_link_libraries(llc tinfo ncurses dl pthread m -Wl,-export-dynamic)
else()
    # shell32 too?
    target_link_libraries(llc psapi imagehlp)
endif()

if (${EVALUATION})
  target_link_libraries(llc licappl utility)
  message(STATUS "Evaluation mode is enabled.")
endif ()
if (${DEBUG_SOURCES})
  target_link_libraries(llc licappl utility)
  message(STATUS "Debug sources mode is enabled.")
  add_definitions(-DDEBUG_SOURCES)
endif ()

install(TARGETS llc DESTINATION ${CMAKE_INSTALL_PREFIX}/bin/)
