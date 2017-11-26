#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "LLVMCodasipCodeGen" for configuration "Release"
set_property(TARGET LLVMCodasipCodeGen APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(LLVMCodasipCodeGen PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libLLVMCodasipCodeGen.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS LLVMCodasipCodeGen )
list(APPEND _IMPORT_CHECK_FILES_FOR_LLVMCodasipCodeGen "${_IMPORT_PREFIX}/lib/libLLVMCodasipCodeGen.a" )

# Import target "LLVMCodasipAsmPrinter" for configuration "Release"
set_property(TARGET LLVMCodasipAsmPrinter APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(LLVMCodasipAsmPrinter PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libLLVMCodasipAsmPrinter.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS LLVMCodasipAsmPrinter )
list(APPEND _IMPORT_CHECK_FILES_FOR_LLVMCodasipAsmPrinter "${_IMPORT_PREFIX}/lib/libLLVMCodasipAsmPrinter.a" )

# Import target "LLVMCodasipInfo" for configuration "Release"
set_property(TARGET LLVMCodasipInfo APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(LLVMCodasipInfo PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libLLVMCodasipInfo.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS LLVMCodasipInfo )
list(APPEND _IMPORT_CHECK_FILES_FOR_LLVMCodasipInfo "${_IMPORT_PREFIX}/lib/libLLVMCodasipInfo.a" )

# Import target "LLVMCodasipDesc" for configuration "Release"
set_property(TARGET LLVMCodasipDesc APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(LLVMCodasipDesc PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libLLVMCodasipDesc.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS LLVMCodasipDesc )
list(APPEND _IMPORT_CHECK_FILES_FOR_LLVMCodasipDesc "${_IMPORT_PREFIX}/lib/libLLVMCodasipDesc.a" )

# Import target "LLVMCodasipCustomModules" for configuration "Release"
set_property(TARGET LLVMCodasipCustomModules APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(LLVMCodasipCustomModules PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libLLVMCodasipCustomModules.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS LLVMCodasipCustomModules )
list(APPEND _IMPORT_CHECK_FILES_FOR_LLVMCodasipCustomModules "${_IMPORT_PREFIX}/lib/libLLVMCodasipCustomModules.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
