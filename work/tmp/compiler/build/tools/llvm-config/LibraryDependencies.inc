//===- llvm-build generated file --------------------------------*- C++ -*-===//
//
// Component Library Depenedency Table
//
// Automatically generated file, do not edit!
//
//===----------------------------------------------------------------------===//

struct AvailableComponent {
  /// The name of the component.
  const char *Name;

  /// The name of the library for this component (or NULL).
  const char *Library;

  /// Whether the component is installed.
  bool IsInstalled;

  /// The list of libraries required when linking this component.
  const char *RequiredLibraries[6];
} AvailableComponents[13] = {
  { "all", 0, 1, { "engine", "nativecodegen", "all-targets", "native" } },
  { "all-targets", 0, 1, { "codasip" } },
  { "codasip", 0, 1, { "codasipasmprinter", "codasipinfo", "codasipdesc", "codasipcustommodules", "codasipcodegen" } },
  { "codasipasmprinter", "libLLVMCodasipAsmPrinter.a", 1, { "target" } },
  { "codasipcodegen", "libLLVMCodasipCodeGen.a", 1, { "codasipdesc", "codasipinfo", "codasipasmprinter", "codasipcustommodules", "target" } },
  { "codasipcustommodules", "libLLVMCodasipCustomModules.a", 1, { "target" } },
  { "codasipdesc", "libLLVMCodasipDesc.a", 1, { "codasipinfo" } },
  { "codasipinfo", "libLLVMCodasipInfo.a", 1, { "target" } },
  { "engine", 0, 1, { "interpreter" } },
  { "interpreter", "libLLVMInterpreter.a", 1, {  } },
  { "native", 0, 1, {  } },
  { "nativecodegen", 0, 1, {  } },
  { "target", "libLLVMTarget.a", 1, {  } },
};
