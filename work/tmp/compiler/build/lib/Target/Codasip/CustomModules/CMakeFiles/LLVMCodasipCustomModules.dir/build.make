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
include lib/Target/Codasip/CustomModules/CMakeFiles/LLVMCodasipCustomModules.dir/depend.make

# Include the progress variables for this target.
include lib/Target/Codasip/CustomModules/CMakeFiles/LLVMCodasipCustomModules.dir/progress.make

# Include the compile flags for this target's objects.
include lib/Target/Codasip/CustomModules/CMakeFiles/LLVMCodasipCustomModules.dir/flags.make

lib/Target/Codasip/CustomModules/CMakeFiles/LLVMCodasipCustomModules.dir/dummy.cpp.obj: lib/Target/Codasip/CustomModules/CMakeFiles/LLVMCodasipCustomModules.dir/flags.make
lib/Target/Codasip/CustomModules/CMakeFiles/LLVMCodasipCustomModules.dir/dummy.cpp.obj: lib/Target/Codasip/CustomModules/CMakeFiles/LLVMCodasipCustomModules.dir/includes_CXX.rsp
lib/Target/Codasip/CustomModules/CMakeFiles/LLVMCodasipCustomModules.dir/dummy.cpp.obj: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/lib/Target/Codasip/CustomModules/dummy.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/C/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/Target/Codasip/CustomModules/CMakeFiles/LLVMCodasipCustomModules.dir/dummy.cpp.obj"
	cd /C/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/build/lib/Target/Codasip/CustomModules && /C/Codasip/MinGW-1.5.1/bin/g++.exe   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LLVMCodasipCustomModules.dir/dummy.cpp.obj -c /C/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/lib/Target/Codasip/CustomModules/dummy.cpp

lib/Target/Codasip/CustomModules/CMakeFiles/LLVMCodasipCustomModules.dir/dummy.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LLVMCodasipCustomModules.dir/dummy.cpp.i"
	cd /C/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/build/lib/Target/Codasip/CustomModules && /C/Codasip/MinGW-1.5.1/bin/g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /C/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/lib/Target/Codasip/CustomModules/dummy.cpp > CMakeFiles/LLVMCodasipCustomModules.dir/dummy.cpp.i

lib/Target/Codasip/CustomModules/CMakeFiles/LLVMCodasipCustomModules.dir/dummy.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LLVMCodasipCustomModules.dir/dummy.cpp.s"
	cd /C/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/build/lib/Target/Codasip/CustomModules && /C/Codasip/MinGW-1.5.1/bin/g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /C/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/lib/Target/Codasip/CustomModules/dummy.cpp -o CMakeFiles/LLVMCodasipCustomModules.dir/dummy.cpp.s

lib/Target/Codasip/CustomModules/CMakeFiles/LLVMCodasipCustomModules.dir/dummy.cpp.obj.requires:

.PHONY : lib/Target/Codasip/CustomModules/CMakeFiles/LLVMCodasipCustomModules.dir/dummy.cpp.obj.requires

lib/Target/Codasip/CustomModules/CMakeFiles/LLVMCodasipCustomModules.dir/dummy.cpp.obj.provides: lib/Target/Codasip/CustomModules/CMakeFiles/LLVMCodasipCustomModules.dir/dummy.cpp.obj.requires
	$(MAKE) -f lib/Target/Codasip/CustomModules/CMakeFiles/LLVMCodasipCustomModules.dir/build.make lib/Target/Codasip/CustomModules/CMakeFiles/LLVMCodasipCustomModules.dir/dummy.cpp.obj.provides.build
.PHONY : lib/Target/Codasip/CustomModules/CMakeFiles/LLVMCodasipCustomModules.dir/dummy.cpp.obj.provides

lib/Target/Codasip/CustomModules/CMakeFiles/LLVMCodasipCustomModules.dir/dummy.cpp.obj.provides.build: lib/Target/Codasip/CustomModules/CMakeFiles/LLVMCodasipCustomModules.dir/dummy.cpp.obj


# Object files for target LLVMCodasipCustomModules
LLVMCodasipCustomModules_OBJECTS = \
"CMakeFiles/LLVMCodasipCustomModules.dir/dummy.cpp.obj"

# External object files for target LLVMCodasipCustomModules
LLVMCodasipCustomModules_EXTERNAL_OBJECTS =

lib/libLLVMCodasipCustomModules.a: lib/Target/Codasip/CustomModules/CMakeFiles/LLVMCodasipCustomModules.dir/dummy.cpp.obj
lib/libLLVMCodasipCustomModules.a: lib/Target/Codasip/CustomModules/CMakeFiles/LLVMCodasipCustomModules.dir/build.make
lib/libLLVMCodasipCustomModules.a: lib/Target/Codasip/CustomModules/CMakeFiles/LLVMCodasipCustomModules.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/C/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library ../../../libLLVMCodasipCustomModules.a"
	cd /C/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/build/lib/Target/Codasip/CustomModules && $(CMAKE_COMMAND) -P CMakeFiles/LLVMCodasipCustomModules.dir/cmake_clean_target.cmake
	cd /C/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/build/lib/Target/Codasip/CustomModules && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LLVMCodasipCustomModules.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/Target/Codasip/CustomModules/CMakeFiles/LLVMCodasipCustomModules.dir/build: lib/libLLVMCodasipCustomModules.a

.PHONY : lib/Target/Codasip/CustomModules/CMakeFiles/LLVMCodasipCustomModules.dir/build

lib/Target/Codasip/CustomModules/CMakeFiles/LLVMCodasipCustomModules.dir/requires: lib/Target/Codasip/CustomModules/CMakeFiles/LLVMCodasipCustomModules.dir/dummy.cpp.obj.requires

.PHONY : lib/Target/Codasip/CustomModules/CMakeFiles/LLVMCodasipCustomModules.dir/requires

lib/Target/Codasip/CustomModules/CMakeFiles/LLVMCodasipCustomModules.dir/clean:
	cd /C/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/build/lib/Target/Codasip/CustomModules && $(CMAKE_COMMAND) -P CMakeFiles/LLVMCodasipCustomModules.dir/cmake_clean.cmake
.PHONY : lib/Target/Codasip/CustomModules/CMakeFiles/LLVMCodasipCustomModules.dir/clean

lib/Target/Codasip/CustomModules/CMakeFiles/LLVMCodasipCustomModules.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MSYS Makefiles" /C/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm /C/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/lib/Target/Codasip/CustomModules /C/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/build /C/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/build/lib/Target/Codasip/CustomModules /C/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/build/lib/Target/Codasip/CustomModules/CMakeFiles/LLVMCodasipCustomModules.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/Target/Codasip/CustomModules/CMakeFiles/LLVMCodasipCustomModules.dir/depend
