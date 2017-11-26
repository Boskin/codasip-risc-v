#===-- LLVMBuild.cmake - LLVMBuild Configuration for LLVM -----*- CMake -*--===#
#
#                     The LLVM Compiler Infrastructure
#
# This file is distributed under the University of Illinois Open Source
# License. See LICENSE.TXT for details.
#
#===------------------------------------------------------------------------===#
#
# This file contains the LLVMBuild project information in a format easily
# consumed by the CMake based build system.
#
# This file is autogenerated by llvm-build, do not edit!
#
#===------------------------------------------------------------------------===#


# LLVMBuild CMake fragment dependencies.
#
# CMake has no builtin way to declare that the configuration depends on
# a particular file. However, a side effect of configure_file is to add
# said input file to CMake's internal dependency list. So, we use that
# and a dummy output file to communicate the dependency information to
# CMake.
#
# FIXME: File a CMake RFE to get a properly supported version of this
# feature.
configure_file("C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/LLVMBuild.txt"
               ${CMAKE_CURRENT_BINARY_DIR}/DummyConfigureOutput)
configure_file("C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/bindings/LLVMBuild.txt"
               ${CMAKE_CURRENT_BINARY_DIR}/DummyConfigureOutput)
configure_file("C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/lib/LLVMBuild.txt"
               ${CMAKE_CURRENT_BINARY_DIR}/DummyConfigureOutput)
configure_file("C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/lib/Target/LLVMBuild.txt"
               ${CMAKE_CURRENT_BINARY_DIR}/DummyConfigureOutput)
configure_file("C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/lib/Target/Codasip/LLVMBuild.txt"
               ${CMAKE_CURRENT_BINARY_DIR}/DummyConfigureOutput)
configure_file("C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/lib/Target/Codasip/MCTargetDesc/LLVMBuild.txt"
               ${CMAKE_CURRENT_BINARY_DIR}/DummyConfigureOutput)
configure_file("C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/lib/Target/Codasip/TargetInfo/LLVMBuild.txt"
               ${CMAKE_CURRENT_BINARY_DIR}/DummyConfigureOutput)
configure_file("C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/lib/Target/Codasip/InstPrinter/LLVMBuild.txt"
               ${CMAKE_CURRENT_BINARY_DIR}/DummyConfigureOutput)
configure_file("C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/lib/Target/Codasip/CustomModules/LLVMBuild.txt"
               ${CMAKE_CURRENT_BINARY_DIR}/DummyConfigureOutput)
configure_file("C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/lib/Interpreter/LLVMBuild.txt"
               ${CMAKE_CURRENT_BINARY_DIR}/DummyConfigureOutput)
configure_file("C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/tools/LLVMBuild.txt"
               ${CMAKE_CURRENT_BINARY_DIR}/DummyConfigureOutput)
configure_file("C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/utils/LLVMBuild.txt"
               ${CMAKE_CURRENT_BINARY_DIR}/DummyConfigureOutput)
configure_file("C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/utils/TableGen/LLVMBuild.txt"
               ${CMAKE_CURRENT_BINARY_DIR}/DummyConfigureOutput)
configure_file("C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/utils/llvm-build/llvmbuild/util.py"
               ${CMAKE_CURRENT_BINARY_DIR}/DummyConfigureOutput)
configure_file("C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/utils/llvm-build/llvmbuild/__init__.py"
               ${CMAKE_CURRENT_BINARY_DIR}/DummyConfigureOutput)
configure_file("C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/utils/llvm-build/llvmbuild/configutil.py"
               ${CMAKE_CURRENT_BINARY_DIR}/DummyConfigureOutput)
configure_file("C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/utils/llvm-build/llvmbuild/componentinfo.py"
               ${CMAKE_CURRENT_BINARY_DIR}/DummyConfigureOutput)
configure_file("C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/utils/llvm-build/llvmbuild/main.py"
               ${CMAKE_CURRENT_BINARY_DIR}/DummyConfigureOutput)

# Explicit library dependency information.
#
# The following property assignments effectively create a map from component
# names to required libraries, in a way that is easily accessed from CMake.
set_property(GLOBAL PROPERTY LLVMBUILD_LIB_DEPS_LLVMTarget )
set_property(GLOBAL PROPERTY LLVMBUILD_LIB_DEPS_LLVMCodasipAsmPrinter LLVMTarget)
set_property(GLOBAL PROPERTY LLVMBUILD_LIB_DEPS_LLVMCodasipInfo LLVMTarget)
set_property(GLOBAL PROPERTY LLVMBUILD_LIB_DEPS_LLVMCodasipDesc LLVMCodasipInfo)
set_property(GLOBAL PROPERTY LLVMBUILD_LIB_DEPS_LLVMCodasipCustomModules LLVMTarget)
set_property(GLOBAL PROPERTY LLVMBUILD_LIB_DEPS_LLVMCodasipCodeGen LLVMCodasipAsmPrinter LLVMCodasipCustomModules LLVMCodasipDesc LLVMCodasipInfo LLVMTarget)
set_property(GLOBAL PROPERTY LLVMBUILD_LIB_DEPS_LLVMInterpreter )