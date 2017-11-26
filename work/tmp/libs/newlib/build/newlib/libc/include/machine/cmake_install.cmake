# Install script for directory: C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/include/machine

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/Newlib")
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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/machine/_arc4random.h;c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/machine/_default_types.h;c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/machine/_types.h;c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/machine/ansi.h;c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/machine/endian.h;c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/machine/fastmath.h;c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/machine/malloc.h;c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/machine/param.h;c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/machine/setjmp-dj.h;c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/machine/stdlib.h;c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/machine/termios.h;c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/machine/time.h;c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/machine/types.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/machine" TYPE FILE FILES
    "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/include/machine/_arc4random.h"
    "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/include/machine/_default_types.h"
    "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/include/machine/_types.h"
    "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/include/machine/ansi.h"
    "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/include/machine/endian.h"
    "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/include/machine/fastmath.h"
    "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/include/machine/malloc.h"
    "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/include/machine/param.h"
    "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/include/machine/setjmp-dj.h"
    "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/include/machine/stdlib.h"
    "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/include/machine/termios.h"
    "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/include/machine/time.h"
    "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/include/machine/types.h"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/machine")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include" TYPE DIRECTORY FILES "C:/Users/Boskin/codasip/RISC_V5/libs/newlib/newlib/libc/machine" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

