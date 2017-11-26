# Install script for directory: C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/include/sys

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
   "c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/sys/_default_fcntl.h;c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/sys/_intsup.h;c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/sys/_sigset.h;c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/sys/_stdint.h;c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/sys/_timespec.h;c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/sys/_timeval.h;c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/sys/_types.h;c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/sys/cdefs.h;c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/sys/custom_file.h;c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/sys/dir.h;c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/sys/dirent.h;c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/sys/errno.h;c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/sys/fcntl.h;c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/sys/features.h;c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/sys/file.h;c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/sys/iconvnls.h;c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/sys/lock.h;c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/sys/mman.h;c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/sys/param.h;c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/sys/queue.h;c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/sys/reent.h;c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/sys/resource.h;c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/sys/sched.h;c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/sys/select.h;c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/sys/signal.h;c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/sys/stat.h;c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/sys/stdio.h;c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/sys/string.h;c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/sys/syslimits.h;c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/sys/time.h;c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/sys/timeb.h;c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/sys/times.h;c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/sys/timespec.h;c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/sys/tree.h;c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/sys/types.h;c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/sys/unistd.h;c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/sys/utime.h;c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/sys/wait.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/sys" TYPE FILE FILES
    "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/include/sys/_default_fcntl.h"
    "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/include/sys/_intsup.h"
    "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/include/sys/_sigset.h"
    "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/include/sys/_stdint.h"
    "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/include/sys/_timespec.h"
    "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/include/sys/_timeval.h"
    "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/include/sys/_types.h"
    "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/include/sys/cdefs.h"
    "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/include/sys/custom_file.h"
    "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/include/sys/dir.h"
    "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/include/sys/dirent.h"
    "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/include/sys/errno.h"
    "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/include/sys/fcntl.h"
    "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/include/sys/features.h"
    "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/include/sys/file.h"
    "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/include/sys/iconvnls.h"
    "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/include/sys/lock.h"
    "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/include/sys/mman.h"
    "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/include/sys/param.h"
    "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/include/sys/queue.h"
    "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/include/sys/reent.h"
    "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/include/sys/resource.h"
    "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/include/sys/sched.h"
    "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/include/sys/select.h"
    "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/include/sys/signal.h"
    "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/include/sys/stat.h"
    "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/include/sys/stdio.h"
    "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/include/sys/string.h"
    "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/include/sys/syslimits.h"
    "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/include/sys/time.h"
    "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/include/sys/timeb.h"
    "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/include/sys/times.h"
    "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/include/sys/timespec.h"
    "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/include/sys/tree.h"
    "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/include/sys/types.h"
    "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/include/sys/unistd.h"
    "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/include/sys/utime.h"
    "C:/Codasip/Studio-6.8.2/tools/toolchain/newlib/newlib/libc/include/sys/wait.h"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include/sys")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "c:/users/boskin/codasip/risc_v5/work/tmp/libs/newlib/install/include" TYPE DIRECTORY FILES "C:/Users/Boskin/codasip/RISC_V5/libs/newlib/newlib/libc/sys" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

