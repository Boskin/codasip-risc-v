# CMAKE generated file: DO NOT EDIT!
# Generated by "MSYS Makefiles" Generator, CMake Version 3.6

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /C/Codasip/MinGW-1.5.1/bin/cmake.exe

# The command to remove a file.
RM = /C/Codasip/MinGW-1.5.1/bin/cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /C/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /C/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/build

# Utility rule file for attributes_inc.

# Include the progress variables for this target.
include include/llvm/IR/CMakeFiles/attributes_inc.dir/progress.make

include/llvm/IR/CMakeFiles/attributes_inc: include/llvm/IR/Attributes.gen
include/llvm/IR/CMakeFiles/attributes_inc: include/llvm/IR/Intrinsics.gen


include/llvm/IR/Attributes.gen: include/llvm/IR/Attributes.gen.tmp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/C/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Updating Attributes.gen..."
	cd /C/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/build/include/llvm/IR && /C/Codasip/MinGW-1.5.1/bin/cmake.exe -E copy_if_different C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/build/include/llvm/IR/Attributes.gen.tmp C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/build/include/llvm/IR/Attributes.gen

include/llvm/IR/Intrinsics.gen: include/llvm/IR/Intrinsics.gen.tmp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/C/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Updating Intrinsics.gen..."
	cd /C/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/build/include/llvm/IR && /C/Codasip/MinGW-1.5.1/bin/cmake.exe -E copy_if_different C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/build/include/llvm/IR/Intrinsics.gen.tmp C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/build/include/llvm/IR/Intrinsics.gen

include/llvm/IR/Attributes.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/Attributes.td
include/llvm/IR/Attributes.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/Intrinsics.td
include/llvm/IR/Attributes.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/IntrinsicsAArch64.td
include/llvm/IR/Attributes.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/IntrinsicsAMDGPU.td
include/llvm/IR/Attributes.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/IntrinsicsARM.td
include/llvm/IR/Attributes.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/IntrinsicsBPF.td
include/llvm/IR/Attributes.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/IntrinsicsHexagon.td
include/llvm/IR/Attributes.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/IntrinsicsMips.td
include/llvm/IR/Attributes.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/IntrinsicsNVVM.td
include/llvm/IR/Attributes.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/IntrinsicsPowerPC.td
include/llvm/IR/Attributes.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/IntrinsicsSystemZ.td
include/llvm/IR/Attributes.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/IntrinsicsWebAssembly.td
include/llvm/IR/Attributes.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/IntrinsicsX86.td
include/llvm/IR/Attributes.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/IntrinsicsXCore.td
include/llvm/IR/Attributes.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/CodeGen/ValueTypes.td
include/llvm/IR/Attributes.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/Attributes.td
include/llvm/IR/Attributes.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/Intrinsics.td
include/llvm/IR/Attributes.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/IntrinsicsAArch64.td
include/llvm/IR/Attributes.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/IntrinsicsAMDGPU.td
include/llvm/IR/Attributes.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/IntrinsicsARM.td
include/llvm/IR/Attributes.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/IntrinsicsBPF.td
include/llvm/IR/Attributes.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/IntrinsicsHexagon.td
include/llvm/IR/Attributes.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/IntrinsicsMips.td
include/llvm/IR/Attributes.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/IntrinsicsNVVM.td
include/llvm/IR/Attributes.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/IntrinsicsPowerPC.td
include/llvm/IR/Attributes.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/IntrinsicsSystemZ.td
include/llvm/IR/Attributes.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/IntrinsicsWebAssembly.td
include/llvm/IR/Attributes.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/IntrinsicsX86.td
include/llvm/IR/Attributes.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/IntrinsicsXCore.td
include/llvm/IR/Attributes.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/Option/OptParser.td
include/llvm/IR/Attributes.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/TableGen/SearchableTable.td
include/llvm/IR/Attributes.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/Target/GenericOpcodes.td
include/llvm/IR/Attributes.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/Target/Target.td
include/llvm/IR/Attributes.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/Target/TargetCallingConv.td
include/llvm/IR/Attributes.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/Target/TargetGlobalISel.td
include/llvm/IR/Attributes.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/Target/TargetItinerary.td
include/llvm/IR/Attributes.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/Target/TargetSchedule.td
include/llvm/IR/Attributes.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/Target/TargetSelectionDAG.td
include/llvm/IR/Attributes.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/codasip/IntrinsicsCodasip.td
include/llvm/IR/Attributes.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/Attributes.td
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/C/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building Attributes.gen..."
	cd /C/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/build/include/llvm/IR && /C/Codasip/Studio-6.8.2/tools/bin/llvm-tblgen -gen-attrs -I C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR -I C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/Attributes.td -o C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/build/include/llvm/IR/Attributes.gen.tmp

include/llvm/IR/Intrinsics.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/Attributes.td
include/llvm/IR/Intrinsics.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/Intrinsics.td
include/llvm/IR/Intrinsics.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/IntrinsicsAArch64.td
include/llvm/IR/Intrinsics.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/IntrinsicsAMDGPU.td
include/llvm/IR/Intrinsics.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/IntrinsicsARM.td
include/llvm/IR/Intrinsics.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/IntrinsicsBPF.td
include/llvm/IR/Intrinsics.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/IntrinsicsHexagon.td
include/llvm/IR/Intrinsics.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/IntrinsicsMips.td
include/llvm/IR/Intrinsics.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/IntrinsicsNVVM.td
include/llvm/IR/Intrinsics.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/IntrinsicsPowerPC.td
include/llvm/IR/Intrinsics.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/IntrinsicsSystemZ.td
include/llvm/IR/Intrinsics.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/IntrinsicsWebAssembly.td
include/llvm/IR/Intrinsics.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/IntrinsicsX86.td
include/llvm/IR/Intrinsics.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/IntrinsicsXCore.td
include/llvm/IR/Intrinsics.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/CodeGen/ValueTypes.td
include/llvm/IR/Intrinsics.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/Attributes.td
include/llvm/IR/Intrinsics.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/Intrinsics.td
include/llvm/IR/Intrinsics.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/IntrinsicsAArch64.td
include/llvm/IR/Intrinsics.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/IntrinsicsAMDGPU.td
include/llvm/IR/Intrinsics.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/IntrinsicsARM.td
include/llvm/IR/Intrinsics.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/IntrinsicsBPF.td
include/llvm/IR/Intrinsics.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/IntrinsicsHexagon.td
include/llvm/IR/Intrinsics.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/IntrinsicsMips.td
include/llvm/IR/Intrinsics.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/IntrinsicsNVVM.td
include/llvm/IR/Intrinsics.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/IntrinsicsPowerPC.td
include/llvm/IR/Intrinsics.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/IntrinsicsSystemZ.td
include/llvm/IR/Intrinsics.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/IntrinsicsWebAssembly.td
include/llvm/IR/Intrinsics.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/IntrinsicsX86.td
include/llvm/IR/Intrinsics.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/IntrinsicsXCore.td
include/llvm/IR/Intrinsics.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/Option/OptParser.td
include/llvm/IR/Intrinsics.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/TableGen/SearchableTable.td
include/llvm/IR/Intrinsics.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/Target/GenericOpcodes.td
include/llvm/IR/Intrinsics.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/Target/Target.td
include/llvm/IR/Intrinsics.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/Target/TargetCallingConv.td
include/llvm/IR/Intrinsics.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/Target/TargetGlobalISel.td
include/llvm/IR/Intrinsics.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/Target/TargetItinerary.td
include/llvm/IR/Intrinsics.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/Target/TargetSchedule.td
include/llvm/IR/Intrinsics.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/Target/TargetSelectionDAG.td
include/llvm/IR/Intrinsics.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/codasip/IntrinsicsCodasip.td
include/llvm/IR/Intrinsics.gen.tmp: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/Intrinsics.td
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/C/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building Intrinsics.gen..."
	cd /C/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/build/include/llvm/IR && /C/Codasip/Studio-6.8.2/tools/bin/llvm-tblgen -gen-intrinsic -I C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR -I C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR/Intrinsics.td -o C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/build/include/llvm/IR/Intrinsics.gen.tmp

attributes_inc: include/llvm/IR/CMakeFiles/attributes_inc
attributes_inc: include/llvm/IR/Attributes.gen
attributes_inc: include/llvm/IR/Intrinsics.gen
attributes_inc: include/llvm/IR/Attributes.gen.tmp
attributes_inc: include/llvm/IR/Intrinsics.gen.tmp
attributes_inc: include/llvm/IR/CMakeFiles/attributes_inc.dir/build.make

.PHONY : attributes_inc

# Rule to build all files generated by this target.
include/llvm/IR/CMakeFiles/attributes_inc.dir/build: attributes_inc

.PHONY : include/llvm/IR/CMakeFiles/attributes_inc.dir/build

include/llvm/IR/CMakeFiles/attributes_inc.dir/clean:
	cd /C/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/build/include/llvm/IR && $(CMAKE_COMMAND) -P CMakeFiles/attributes_inc.dir/cmake_clean.cmake
.PHONY : include/llvm/IR/CMakeFiles/attributes_inc.dir/clean

include/llvm/IR/CMakeFiles/attributes_inc.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MSYS Makefiles" /C/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm /C/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/include/llvm/IR /C/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/build /C/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/build/include/llvm/IR /C/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/build/include/llvm/IR/CMakeFiles/attributes_inc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : include/llvm/IR/CMakeFiles/attributes_inc.dir/depend

