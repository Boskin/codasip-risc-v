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

# Include any dependencies generated for this target.
include tools/llc/CMakeFiles/llc.dir/depend.make

# Include the progress variables for this target.
include tools/llc/CMakeFiles/llc.dir/progress.make

# Include the compile flags for this target's objects.
include tools/llc/CMakeFiles/llc.dir/flags.make

tools/llc/CMakeFiles/llc.dir/dummy.cpp.obj: tools/llc/CMakeFiles/llc.dir/flags.make
tools/llc/CMakeFiles/llc.dir/dummy.cpp.obj: tools/llc/CMakeFiles/llc.dir/includes_CXX.rsp
tools/llc/CMakeFiles/llc.dir/dummy.cpp.obj: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/tools/llc/dummy.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/C/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tools/llc/CMakeFiles/llc.dir/dummy.cpp.obj"
	cd /C/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/build/tools/llc && /C/Codasip/MinGW-1.5.1/bin/g++.exe   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/llc.dir/dummy.cpp.obj -c /C/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/tools/llc/dummy.cpp

tools/llc/CMakeFiles/llc.dir/dummy.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/llc.dir/dummy.cpp.i"
	cd /C/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/build/tools/llc && /C/Codasip/MinGW-1.5.1/bin/g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /C/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/tools/llc/dummy.cpp > CMakeFiles/llc.dir/dummy.cpp.i

tools/llc/CMakeFiles/llc.dir/dummy.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/llc.dir/dummy.cpp.s"
	cd /C/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/build/tools/llc && /C/Codasip/MinGW-1.5.1/bin/g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /C/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/tools/llc/dummy.cpp -o CMakeFiles/llc.dir/dummy.cpp.s

tools/llc/CMakeFiles/llc.dir/dummy.cpp.obj.requires:

.PHONY : tools/llc/CMakeFiles/llc.dir/dummy.cpp.obj.requires

tools/llc/CMakeFiles/llc.dir/dummy.cpp.obj.provides: tools/llc/CMakeFiles/llc.dir/dummy.cpp.obj.requires
	$(MAKE) -f tools/llc/CMakeFiles/llc.dir/build.make tools/llc/CMakeFiles/llc.dir/dummy.cpp.obj.provides.build
.PHONY : tools/llc/CMakeFiles/llc.dir/dummy.cpp.obj.provides

tools/llc/CMakeFiles/llc.dir/dummy.cpp.obj.provides.build: tools/llc/CMakeFiles/llc.dir/dummy.cpp.obj


# Object files for target llc
llc_OBJECTS = \
"CMakeFiles/llc.dir/dummy.cpp.obj"

# External object files for target llc
llc_EXTERNAL_OBJECTS =

bin/llc.exe: tools/llc/CMakeFiles/llc.dir/dummy.cpp.obj
bin/llc.exe: tools/llc/CMakeFiles/llc.dir/build.make
bin/llc.exe: lib/libLLVMCodasipCodeGen.a
bin/llc.exe: lib/libLLVMCodasipDesc.a
bin/llc.exe: lib/libLLVMCodasipInfo.a
bin/llc.exe: lib/libLLVMCodasipAsmPrinter.a
bin/llc.exe: lib/libLLVMCodasipCustomModules.a
bin/llc.exe: tools/llc/CMakeFiles/llc.dir/linklibs.rsp
bin/llc.exe: tools/llc/CMakeFiles/llc.dir/objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/C/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/llc.exe"
	cd /C/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/build/tools/llc && /C/Codasip/MinGW-1.5.1/bin/cmake.exe -E remove -f CMakeFiles/llc.dir/objects.a
	cd /C/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/build/tools/llc && /C/Codasip/MinGW-1.5.1/bin/ar.exe cr CMakeFiles/llc.dir/objects.a @CMakeFiles/llc.dir/objects1.rsp
	cd /C/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/build/tools/llc && /C/Codasip/MinGW-1.5.1/bin/g++.exe   -Wall -W -Wno-unused-parameter -Wwrite-strings -Wcast-qual -Wno-missing-field-initializers -pedantic -Wno-long-long -Wno-maybe-uninitialized -Wdelete-non-virtual-dtor -Wno-comment -std=gnu++11  -O1  -O2   -Wl,--stack,16777216 -Wl,--whole-archive CMakeFiles/llc.dir/objects.a -Wl,--no-whole-archive  -o ../../bin/llc.exe -Wl,--out-implib,../../lib/libllc.dll.a -Wl,--major-image-version,0,--minor-image-version,0 @CMakeFiles/llc.dir/linklibs.rsp

# Rule to build all files generated by this target.
tools/llc/CMakeFiles/llc.dir/build: bin/llc.exe

.PHONY : tools/llc/CMakeFiles/llc.dir/build

tools/llc/CMakeFiles/llc.dir/requires: tools/llc/CMakeFiles/llc.dir/dummy.cpp.obj.requires

.PHONY : tools/llc/CMakeFiles/llc.dir/requires

tools/llc/CMakeFiles/llc.dir/clean:
	cd /C/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/build/tools/llc && $(CMAKE_COMMAND) -P CMakeFiles/llc.dir/cmake_clean.cmake
.PHONY : tools/llc/CMakeFiles/llc.dir/clean

tools/llc/CMakeFiles/llc.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MSYS Makefiles" /C/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm /C/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/tools/llc /C/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/build /C/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/build/tools/llc /C/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/build/tools/llc/CMakeFiles/llc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/llc/CMakeFiles/llc.dir/depend

