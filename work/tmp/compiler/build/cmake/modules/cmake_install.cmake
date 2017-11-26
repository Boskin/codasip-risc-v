# Install script for directory: C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/cmake/modules

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

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "cmake-exports" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/llvm/LLVMExports.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/llvm/LLVMExports.cmake"
         "C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/build/cmake/modules/CMakeFiles/Export/lib/cmake/llvm/LLVMExports.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/llvm/LLVMExports-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/llvm/LLVMExports.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/llvm" TYPE FILE FILES "C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/build/cmake/modules/CMakeFiles/Export/lib/cmake/llvm/LLVMExports.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/llvm" TYPE FILE FILES "C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/build/cmake/modules/CMakeFiles/Export/lib/cmake/llvm/LLVMExports-release.cmake")
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "cmake-exports" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/llvm" TYPE FILE FILES
    "C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/build/cmake/modules/CMakeFiles/LLVMConfig.cmake"
    "C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/build/lib/cmake/llvm/LLVMConfigVersion.cmake"
    "C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/cmake/modules/LLVM-Config.cmake"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "cmake-exports" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/llvm" TYPE DIRECTORY FILES "C:/Users/Boskin/codasip/RISC_V5/work/tmp/compiler/llvm/cmake/modules/." FILES_MATCHING REGEX "/[^/]*\\.cmake$" REGEX "/\\.svn$" EXCLUDE REGEX "/llvmconfig\\.cmake$" EXCLUDE REGEX "/llvmconfigversion\\.cmake$" EXCLUDE REGEX "/llvm\\-config\\.cmake$" EXCLUDE REGEX "/gethosttriple\\.cmake$" EXCLUDE)
endif()

