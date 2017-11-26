#add_llvm_tool_subdirectory(llvm-config)
add_llvm_tool_subdirectory(llc)

set(LLVM_COMMON_DEPENDS ${LLVM_COMMON_DEPENDS} PARENT_SCOPE)
