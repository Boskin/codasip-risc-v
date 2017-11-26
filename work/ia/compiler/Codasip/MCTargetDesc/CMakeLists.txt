include_directories( ${CMAKE_CURRENT_BINARY_DIR}/.. ${CMAKE_CURRENT_SOURCE_DIR}/.. )

add_llvm_library(LLVMCodasipDesc
  CodasipMCAsmInfo.cpp
  CodasipMCTargetDesc.cpp
  )

add_dependencies(LLVMCodasipDesc CodasipCommonTableGen)
