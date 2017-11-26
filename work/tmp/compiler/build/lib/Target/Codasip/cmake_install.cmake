# Install script for directory: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/lib/Target/Codasip

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/LLVM")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "LLVMCodasipCodeGen" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/build/lib/libLLVMCodasipCodeGen.a")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/build/lib/Target/Codasip/InstPrinter/cmake_install.cmake")
  include("C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/build/lib/Target/Codasip/TargetInfo/cmake_install.cmake")
  include("C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/build/lib/Target/Codasip/MCTargetDesc/cmake_install.cmake")
  include("C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/build/lib/Target/Codasip/CustomModules/cmake_install.cmake")

endif()

