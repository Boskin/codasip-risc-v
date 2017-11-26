# Install script for directory: C:/Users/Boskin/codasip/RISC_V5/work/tmp/disassembler

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/Disassembler_RISC_V5")
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

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "c:/users/boskin/codasip/risc_v5/work/ia/sdk/bin/RISC_V5-ia-disassembler.exe")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "c:/users/boskin/codasip/risc_v5/work/ia/sdk/bin" TYPE EXECUTABLE FILES "C:/Users/Boskin/codasip/RISC_V5/work/tmp/disassembler/RISC_V5-ia-disassembler.exe")
  if(EXISTS "$ENV{DESTDIR}/c:/users/boskin/codasip/risc_v5/work/ia/sdk/bin/RISC_V5-ia-disassembler.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/c:/users/boskin/codasip/risc_v5/work/ia/sdk/bin/RISC_V5-ia-disassembler.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/Codasip/MinGW-1.5.1/bin/strip.exe" "$ENV{DESTDIR}/c:/users/boskin/codasip/risc_v5/work/ia/sdk/bin/RISC_V5-ia-disassembler.exe")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "c:/users/boskin/codasip/risc_v5/work/ia/sdk/bin/libRISC_V5-ia-disassembler.dll")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "c:/users/boskin/codasip/risc_v5/work/ia/sdk/bin" TYPE SHARED_LIBRARY FILES "C:/Users/Boskin/codasip/RISC_V5/work/tmp/disassembler/libRISC_V5-ia-disassembler.dll")
  if(EXISTS "$ENV{DESTDIR}/c:/users/boskin/codasip/risc_v5/work/ia/sdk/bin/libRISC_V5-ia-disassembler.dll" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/c:/users/boskin/codasip/risc_v5/work/ia/sdk/bin/libRISC_V5-ia-disassembler.dll")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/Codasip/MinGW-1.5.1/bin/strip.exe" "$ENV{DESTDIR}/c:/users/boskin/codasip/risc_v5/work/ia/sdk/bin/libRISC_V5-ia-disassembler.dll")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "C:/Users/Boskin/codasip/RISC_V5/work/tmp/disassembler/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
