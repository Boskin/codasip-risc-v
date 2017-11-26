set(LLVM_TARGET_DEFINITIONS Attributes.td)
tablegen(LLVM Attributes.gen -gen-attrs)

set(LLVM_TARGET_DEFINITIONS Intrinsics.td)
tablegen(LLVM Intrinsics.gen -gen-intrinsic)
add_public_tablegen_target(intrinsics_gen)

# ===== CODASIP ================
install(FILES ${CMAKE_CURRENT_BINARY_DIR}/Intrinsics.gen DESTINATION ${CMAKE_INSTALL_PREFIX}/include/llvm/IR/)
add_public_tablegen_target(attributes_inc)
# ==============================
