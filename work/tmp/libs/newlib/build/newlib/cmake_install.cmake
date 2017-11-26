# Install script for directory: C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib

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
   "c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include" TYPE DIRECTORY FILES "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/include/" FILES_MATCHING REGEX "/machine$" EXCLUDE REGEX "/rpc$" EXCLUDE REGEX "/sys$" EXCLUDE REGEX "/newlib\\.h$" EXCLUDE REGEX "/[^/]*\\.h$")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/newlib.h;c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/stdio.h;c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/stdio_ext.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include" TYPE FILE FILES
    "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/machine/codasip/newlib.h"
    "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/stdio/stdio.h"
    "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/stdio/stdio_ext.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("C:/Users/Boskin/codasip/RISC_V5/work/tmp/libs/newlib/build/newlib/libc/argz/cmake_install.cmake")
  include("C:/Users/Boskin/codasip/RISC_V5/work/tmp/libs/newlib/build/newlib/libc/ctype/cmake_install.cmake")
  include("C:/Users/Boskin/codasip/RISC_V5/work/tmp/libs/newlib/build/newlib/libc/errno/cmake_install.cmake")
  include("C:/Users/Boskin/codasip/RISC_V5/work/tmp/libs/newlib/build/newlib/libc/locale/cmake_install.cmake")
  include("C:/Users/Boskin/codasip/RISC_V5/work/tmp/libs/newlib/build/newlib/libc/misc/cmake_install.cmake")
  include("C:/Users/Boskin/codasip/RISC_V5/work/tmp/libs/newlib/build/newlib/libc/reent/cmake_install.cmake")
  include("C:/Users/Boskin/codasip/RISC_V5/work/tmp/libs/newlib/build/newlib/libc/search/cmake_install.cmake")
  include("C:/Users/Boskin/codasip/RISC_V5/work/tmp/libs/newlib/build/newlib/libc/signal/cmake_install.cmake")
  include("C:/Users/Boskin/codasip/RISC_V5/work/tmp/libs/newlib/build/newlib/libc/stdlib/cmake_install.cmake")
  include("C:/Users/Boskin/codasip/RISC_V5/work/tmp/libs/newlib/build/newlib/libc/string/cmake_install.cmake")
  include("C:/Users/Boskin/codasip/RISC_V5/work/tmp/libs/newlib/build/newlib/libc/time/cmake_install.cmake")
  include("C:/Users/Boskin/codasip/RISC_V5/work/tmp/libs/newlib/build/newlib/libc/stdio/cmake_install.cmake")
  include("C:/Users/Boskin/codasip/RISC_V5/work/tmp/libs/newlib/build/newlib/libm/common/cmake_install.cmake")
  include("C:/Users/Boskin/codasip/RISC_V5/work/tmp/libs/newlib/build/newlib/libm/complex/cmake_install.cmake")
  include("C:/Users/Boskin/codasip/RISC_V5/work/tmp/libs/newlib/build/newlib/libm/math/cmake_install.cmake")
  include("C:/Users/Boskin/codasip/RISC_V5/work/tmp/libs/newlib/build/newlib/libc/include/machine/cmake_install.cmake")
  include("C:/Users/Boskin/codasip/RISC_V5/work/tmp/libs/newlib/build/newlib/libc/include/sys/cmake_install.cmake")

endif()
