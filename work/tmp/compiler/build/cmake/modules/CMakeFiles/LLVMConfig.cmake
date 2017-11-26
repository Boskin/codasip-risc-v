# This file provides information and services to the final user.


# Compute the installation prefix from this LLVMConfig.cmake file location.
get_filename_component(LLVM_INSTALL_PREFIX "${CMAKE_CURRENT_LIST_FILE}" PATH)
get_filename_component(LLVM_INSTALL_PREFIX "${LLVM_INSTALL_PREFIX}" PATH)
get_filename_component(LLVM_INSTALL_PREFIX "${LLVM_INSTALL_PREFIX}" PATH)
get_filename_component(LLVM_INSTALL_PREFIX "${LLVM_INSTALL_PREFIX}" PATH)

set(LLVM_VERSION_MAJOR 4)
set(LLVM_VERSION_MINOR 0)
set(LLVM_VERSION_PATCH 0)
set(LLVM_PACKAGE_VERSION 4.0.0)

set(LLVM_BUILD_TYPE Release)

set(LLVM_COMMON_DEPENDS )

set(LLVM_AVAILABLE_LIBS LLVMCodasipCodeGen;LLVMCodasipAsmPrinter;LLVMCodasipInfo;LLVMCodasipDesc;LLVMCodasipCustomModules)

set(LLVM_ALL_TARGETS AArch64;AMDGPU;ARM;BPF;Hexagon;Lanai;Mips;MSP430;NVPTX;PowerPC;RISCV;Sparc;SystemZ;X86;XCore;Codasip;Extractor)

set(LLVM_TARGETS_TO_BUILD Codasip)

set(LLVM_TARGETS_WITH_JIT X86;PowerPC;AArch64;ARM;Mips;SystemZ)


set_property(GLOBAL PROPERTY LLVMBUILD_LIB_DEPS_LLVMCodasipCodeGen LLVMCodasipAsmPrinter;LLVMCodasipCustomModules;LLVMCodasipDesc;LLVMCodasipInfo;LLVMTarget)
set_property(GLOBAL PROPERTY LLVMBUILD_LIB_DEPS_LLVMCodasipAsmPrinter LLVMTarget)
set_property(GLOBAL PROPERTY LLVMBUILD_LIB_DEPS_LLVMCodasipInfo LLVMTarget)
set_property(GLOBAL PROPERTY LLVMBUILD_LIB_DEPS_LLVMCodasipDesc LLVMCodasipInfo)
set_property(GLOBAL PROPERTY LLVMBUILD_LIB_DEPS_LLVMCodasipCustomModules LLVMTarget)

set(TARGET_TRIPLE "i686-pc-mingw32")

set(LLVM_ABI_BREAKING_CHECKS WITH_ASSERTS)

set(LLVM_ENABLE_ASSERTIONS ON)

set(LLVM_ENABLE_EH OFF)

set(LLVM_ENABLE_RTTI OFF)

set(LLVM_ENABLE_TERMINFO ON)

set(LLVM_ENABLE_THREADS ON)

set(LLVM_ENABLE_ZLIB 0)

set(LLVM_ENABLE_DIA_SDK 0)

set(LLVM_NATIVE_ARCH X86)

set(LLVM_ENABLE_PIC ON)

set(LLVM_BUILD_32_BITS )

set(LLVM_ENABLE_PLUGINS OFF)
set(LLVM_EXPORT_SYMBOLS_FOR_PLUGINS OFF)
set(LLVM_PLUGIN_EXT .dll)

set(LLVM_ON_UNIX 0)
set(LLVM_ON_WIN32 1)

set(LLVM_LIBDIR_SUFFIX )

set(LLVM_INCLUDE_DIRS "${LLVM_INSTALL_PREFIX}/include")
set(LLVM_LIBRARY_DIRS "${LLVM_INSTALL_PREFIX}/lib${LLVM_LIBDIR_SUFFIX}")

# These variables are duplicated, but they must match the LLVM variables of the
# same name. The variables ending in "S" could some day become lists, and are
# preserved for convention and compatibility.
set(LLVM_INCLUDE_DIR "${LLVM_INSTALL_PREFIX}/include")
set(LLVM_LIBRARY_DIR "${LLVM_INSTALL_PREFIX}/lib${LLVM_LIBDIR_SUFFIX}")

set(LLVM_DEFINITIONS "-D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_LIMIT_MACROS")
set(LLVM_CMAKE_DIR "${LLVM_INSTALL_PREFIX}/lib/cmake/llvm")
set(LLVM_BINARY_DIR "${LLVM_INSTALL_PREFIX}")
set(LLVM_TOOLS_BINARY_DIR "${LLVM_INSTALL_PREFIX}/bin")
set(LLVM_TOOLS_INSTALL_DIR "bin")

if(NOT TARGET LLVMSupport)
  set(LLVM_EXPORTED_TARGETS "LLVMCodasipCodeGen;LLVMCodasipAsmPrinter;LLVMCodasipInfo;LLVMCodasipDesc;LLVMCodasipCustomModules")
  include("${LLVM_CMAKE_DIR}/LLVMExports.cmake")
  
endif()

include(${LLVM_CMAKE_DIR}/LLVM-Config.cmake)
