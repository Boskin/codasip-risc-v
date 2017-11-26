""" 
******************************************************************************
*      "Copyright (C) 2015, Codasip s.r.o., All Rights Reserved"             *
******************************************************************************
""" 
""" 
file
author Benna Filip
date   2.09.2015
brief  Driver for lto enabled compilation
""" 

import os
import sys
from tempfile import mkdtemp
from shutil import rmtree, copyfile
from re import search
from subprocess import *

# ---------------------------------- CLASSES -----------------------------------
class Toolchain:
    """
    Toolchain contains paths and other information regarding compilation tools.

    @ivar _path: The path to the 'bin' folder of the toolchain.
    @ivar _prefix: The prefix of the tools in the toolchain.
    @ivar _bash: The path to the bash interpreter.

    @cvar _llvm_lto: A instance of the Tool class representing the llvm-lto.
    @cvar _llvm_link: A instance of the Tool class representing the llvm-link.
    @cvar _ld: A instance of the Tool class representing the gnu ld.
    @cvar _clang: A instance of the Tool class representing the clang.
    @cvar _objdump: A instance of the Tool class representing the gnu objdump.
    @cvar _ar: A instance of the Tool class representing the gnu ar.
    @cvar _strip: A instance of the Tool class representing the gnu strip.
    @cvar _elfconvert: A instance of the Tool class representing the Codasip
        elfconvert tool.
    @cvar _tools: List of all the tools in the toolchain.
    """
    class Tool:
        """
        Tool represents single tool from the toolchain.

        @ivar _name: The name of the tool.
        @ivar _is_script: If True the tool is a shell script.
        @ivar _suffix: The suffix of the tool such as '.exe'.
        """
     
        def __init__(self, name, is_script):
            """ 
            Constructor
            @param name: Name of the tool without the prefix.
            @param is_script: If True tool is a shell script, otherwise it
                is executable binary.
            """ 
            self._name = name
            self._is_script = is_script
            self._suffix = ""

        def name(self):
            """Returns the name of the tool including suffix if present"""
            return self._name + self._suffix

        def is_script(self):
            """Returns True if the tool is a shell script"""
            return self._is_script

        def set_exe(self):
            """Sets the tool suffix to .exe (used on Windows)"""
            self._suffix = ".exe"

        def is_exe(self):
            """Returns True if the tool is Windows executable binary"""
            return self._suffix

    _llvm_lto = Tool("llvm-lto", False)
    _llvm_link = Tool("llvm-link", False)
    _ld = Tool("ld", True)
    _clang = Tool("clang", True)
    _objdump = Tool("objdump", False)
    _ar = Tool("ar", False)
    _strip = Tool("strip", False)
    _elfconvert = Tool("elfconvert", False)
    
    _tools = [_llvm_lto, _llvm_link , _ld, _clang, _objdump, _ar, _strip,
         _elfconvert]

    def __init__(self, path, prefix):
        """
        Constructor
        @param path: The path to the bin folder of the toolchain.
        @param prefix: The prefix of the tools in the toolchain.
        """
        self._path = path
        self._prefix = prefix
        self._bash = ""

        # check whether we are running on Windows or Linux
        self._bash = 'bash'
        
        if os.name == 'nt':
            try:
                self._bash = os.path.join(os.environ['CODASIP_MINGW'], 'bash')
            except KeyError:
                pass

        for tool in self._tools:
            tool_path = self._get_tool_path(tool)
            
            # check if tool exists
            if not os.path.exists(tool_path):
                # executable binaries may have '.exe' suffix
                if not tool.is_script():
                    tool_path += ".exe"
                    if os.path.exists(tool_path):
                        # set the suffix and test next tool
                        tool.set_exe()
                        continue
                error("Could not find '" + self._get_tool_name(tool)
                    + "(.exe)' in: " + self._path)

    def _get_tool_name(self, tool):
        """
        Returns the name of the tool including the prefix.
        @param tool: The required tool.
        """
        return self._prefix + "-" + tool.name()

    def _get_tool_path(self, tool):
        """
        Returns the path to the tool including the name of the tool.
        @param tool: The required tool.
        """
        tool_name = self._get_tool_name(tool)
        tool_path = os.path.join(self._path, tool_name)
        
        return tool_path

    def _get_executable(self, tool):
        """
        Returns a command which executes the tool.
        @param tool: The required tool.
        """
        cmd = []
        if tool.is_script():
            cmd.append(self._bash)
        cmd.append(self._get_tool_path(tool))

        return cmd

    def llvm_lto(self):
        """Returns a command which executes llvm-lto"""
        return self._get_executable(self._llvm_lto)

    def llvm_link(self):
        """Returns a command which executes llvm-link"""
        return self._get_executable(self._llvm_link)

    def ld(self):
        """Returns a command which executes gnu ld"""
        return self._get_executable(self._ld)

    def clang(self):
        """Returns a command which executes clang"""
        return self._get_executable(self._clang)

    def objdump(self):
        """Returns a command which executes gnu objdump"""
        return self._get_executable(self._objdump)

    def ar(self):
        """Returns a command which executes gnu ar"""
        return self._get_executable(self._ar)

    def strip(self):
        """Returns a command which executes gnu strip"""
        return self._get_executable(self._strip)

    def elfconvert(self):
        """Returns a command which executes Codasip elfconvert tool"""
        return self._get_executable(self._elfconvert)


class CommandLine:
    """
    CommandLine holds all the arguments passed into the wpo linker driver.

    @ivar _is_verbose: If True the script should print progress information.
    @ivar _is_save_temps: If True the temporary files should be kept.
    @ivar _n_output_file: The name of the output file of the linking.
    @ivar _s_clang: A list of arguments for the clang.
    @ivar _s_ld: A list of the arguments for the gnu ld.
    @ivar _s_lib_path: A list of paths to the linked libraries.
    @ivar _s_lib: A list of names of the linked libraries.

    @cvar _skip_next_switches: A list of command line switches which are
        followed by an argument.
    """
    # argument following these switches has to be skipped during parsing
    _skip_next_switches = ['a', 'A', '-architecture', 'b', '-format', 'c',
    '-mri-script', 'dT', '-defsym', 'e', '-entry', 'f', '-auxiliary', 'F',
    '-filter', 'G', '-gpsize', 'h', 'soname', 'I', '-dynamic-linker', 'm',
    'o', '-output', 'plugin', 'plugin-opt', 'R', '-just-symbols', 'T',
    '-script', '-default-script', 'u', '-undefined', 'y', '-trace-symbol', 'Y'
    '-assert', 'fini', 'init', 'Map', '-oformat', '-retain-symbols-file',
    'rpath', 'rpath-link', '-spare-dynamic-tags', '-task-link',
    '-section-start', 'Tbss', 'Tdata', 'Ttext', 'Ttext-segment',
    '-version-script', '-version-exports-section', '-dynamic-list', '-wrap'
    ]

    def __init__(self):
        self._is_verbose = False
        self._is_save_temps = False
        self._n_output_file = "a.out"

        self._s_clang = []
        self._s_ld = []
        self._s_lib_path = []
        self._s_lib = []

    def add_clang_switch(self, switch):
        """
        Adds clang switch.
        @param switch: The switch to add.
        """
        self._s_clang.append(switch)
    
    def add_ld_switch(self, switch):
        """
        Adds gnu ld switch.
        @param switch: The switch to add.
        """
        self._s_ld.append(switch)

    def add_lib_path_switch(self, switch):
        """
        Adds switch containing search path to the linked libraries.
        @param: switch: The switch to add.
        """
        self._s_lib_path.append(switch)

    def get_lib_path_switches(self):
        """Returns search paths to the linked libraries"""
        return self._s_lib_path

    def add_lib_switch(self, switch):
        """
        Adds switch containing name of a linked library.
        @param switch: The switch to add.
        """
        if switch not in self._s_lib:
            self._s_lib.append(switch)

    def get_lib_switches(self):
        """Returns full names of the linked libraries"""
        return ["lib" + lib + ".a" for lib in self._s_lib]

    def set_x_sections_switches(self):
        """Adds clang and ld switches to create a section for each function"""
        # creates new section for each function
        if "-ffunction-sections" not in self._s_clang:
            self._s_clang.append("-ffunction-sections")
        # creates new section for data from each function
        if "-fdata-sections" not in self._s_clang:
            self._s_clang.append("-fdata-sections")
        # removes all unused sections => generates smaller binary
        if "-gc-sections" not in self._s_ld:
            self._s_ld.append("-gc-sections")

    def is_skip_next(self, switch):
        """
        Returns true if the switch is followed by an argument.
        @param switch: The switch to check.
        """
        return switch in self._skip_next_switches

    def set_output_file(self, name):
        """
        Sets the name of the file which is the ouput of the linking.
        @param name: The name of the ouput file.
        """
        self._n_output_file = name

    def get_output_file(self):
        """Returns the name of the output file"""
        return self._n_output_file

    def set_verbose(self):
        """Stores the information that the verbose mode is on"""
        self._is_verbose = True

    def set_save_temps(self):
        """Stores the information that temporary files should be kept"""
        self._is_save_temps = True

    def is_verbose(self):
        """Returns True if the verbose mode is on"""
        return self._is_verbose

    def is_save_temps(self):
        """Returns True if the temporary files should be kept"""
        return self._is_save_temps

    def get_clang_switches(self):
        """Returns the switches for clang"""
        switches = []
        switches += self._s_clang
        if self._is_verbose:
            switches.append("-v")
        if self._is_save_temps:
            switches.append("-save-temps")
        
        return switches

    def get_ld_switches(self):
        """Returns the switches for gnu ld"""
        switches = []
        switches += self._s_ld
        for lib_path in self._s_lib_path:
            switches += ["-L", lib_path]
        if self._s_lib:
            switches.append("--start-group")
            for lib in self._s_lib:
                switches.append("-l" + lib)
            switches.append("--end-group")
        switches += ["-o", self._n_output_file]

        return switches

    def __str__(self):
        """Returns a dump of switches passed into the wpo linker driver"""
        s = "*** COMMAND LINE SETTINGS ***\n"
        s += "verbosity: "
        if self._is_verbose:
            s += "ON\n"
        else:
            s += "OFF\n"
        s += "save temporary files: "
        if self._is_save_temps:
            s += "ON\n"
        else:
            s += "OFF\n"
        s += "output file name: " + self._n_output_file + "\n"
        s += "clang switches: " + str(self._s_clang) + "\n"
        s += "ld switches: " + str(self._s_ld) + "\n"

        return s


class File:
    """
    File is a baseclass for which hold the information common to all files.

    @ivar _name: The name of the file.
    @ivar _location: The path to the directory where the file is located.
    @ivar _s_global: List of global symbols defined in the file.
    @ivar _s_undefined: List of undefined symbols required by the file.
    """
    class FileType:
        """
        Enum class representing the formats of the file.
        """
        Object, Bitcode, Archive = range(3)

    def __init__(self, name, location, s_global, s_undefined):
        """
        Constructor
        @param name: The name of the file.
        @param location: The path to the directory where the file is located.
        @param s_global: List of global symbols defined in the file.
        @param s_undefined: List of undefined symbols required by the file.
        """
        self._name = name
        self._location = location
        self._type = None
        self._s_global = s_global
        self._s_undefined = s_undefined

    def __str__(self):
        """Returns the format of the file followed by the path to the file"""
        if self._type == File.FileType.Object:
            s = "Object: "
        elif self._type == File.FileType.Bitcode:
            s = "Bitcode: "
        else:
            s = "Archive: "

        s += os.path.join(self._location, self._name)

        return s

    def is_bitcode(self):
        """Returns True if the files contains bitcode section"""
        return self._type == File.FileType.Bitcode

    def path(self):
        """Returns the path to the file"""
        return os.path.join(self._location, self._name)

    def global_symbols(self):
        """Returns the list of the global symbols defined in the file"""
        return self._s_global

    def undefined_symbols(self):
        """Returns the list of the undefined symbols required by the file"""
        return self._s_undefined

class ObjectFile(File):
    """
    Represents an object file format.
    """
    def __init__(self, name, location, s_global, s_undefined):
        """
        Constructor
        @param name: The name of the file.
        @param location: The path to the directory where the file is located.
        @param s_global: List of global symbols defined in the file.
        @param s_undefined: List of undefined symbols required by the file.
        """
        File.__init__(self, name, location, s_global, s_undefined)
        self._type = File.FileType.Object

class BitcodeFile(File):
    """
    Represents an object file format with a bitcode section.
    """
    def __init__(self, name, location, s_global, s_undefined):
        """
        Constructor
        @param name: The name of the file.
        @param location: The path to the directory where the file is located.
        @param s_global: List of global symbols defined in the file.
        @param s_undefined: List of undefined symbols required by the file.
        """
        File.__init__(self, name, location, s_global, s_undefined)
        self._type = File.FileType.Bitcode

        self._bc_name = ""
        self._bc_location = ""

    def set_bitcode(self, name, location):
        """
        Sets information regarding the file with dumped bitcode.
        """
        self._bc_name = name
        self._bc_location = location

    def get_bitcode_path(self):
        """Returns path to the file with dumped bitcode"""
        return os.path.join(self._bc_location, self._bc_name)

class ArchiveFile(File):
    """
    Represents an archive format.
    """
    def __init__(self, name, location, s_global, s_undefined):
        """
        Constructor
        @param name: The name of the file.
        @param location: The path to the directory where the file is located.
        @param s_global: List of global symbols defined in the file.
        @param s_undefined: List of undefined symbols required by the file.
        """
        File.__init__(self, name, location, s_global, s_undefined)
        self._type = File.FileType.Archive


class Project:
    """
    Project holds all the files used during the linking.

    @ivar _p_tmp: Path to the temporary directory used during linking.
    @ivar _toolchain: A instance of the Toolchain class.
    @ivar _f_object: A list of the object files in the project.
    @ivar _f_bitcode: A list of the object files containing bitcode.
    @ivar _f_archive: A list if the archive files in the project.

    @cvar _n_std_libs: A list of names of the standard libraries usually used
        during the linking. 
    """
    _n_std_libs = ["libc.a", "libm.a", "libcomp.a"]

    def __init__(self, p_tmp, toolchain):
        """
        Constructor
        @param p_tmp: Path to the temporary directory used during linking.
        @param toolchain: A instance of the Toolchain class.
        """
        self._p_tmp = p_tmp
        self._toolchain = toolchain

        self._f_object = []
        self._f_bitcode = []
        self._f_archive = []

        self._bc_index = 0

        self._p_bc_file_link = ""
        self._p_bc_file_opt = ""

    def _is_archive(self, p_file):
        """
        Returns True if the file is an archive.
        @param p_file: Path to the file which should be checked.
        """
        is_archive = False

        try:
            output = execute(['head'], [p_file])
        except RuntimeError:
            error("Could not read file '" + p_file + "'")
        
        # '<arch>' is present in each archive file
        if '<arch>' in output.splitlines()[0]:
            is_archive = True

        return is_archive

    def _has_bc(self, p_file):
        """
        Returns True if the file contains the bitcode section.
        @param p_file: Path to the file which should be checked.
        """
        has_bc = False
        
        args = ['-h', '-w', p_file]

        try:
            output = execute(self._toolchain.objdump(), args)
        except RuntimeError:
            error("Could not dump '" + p_file + "'")

        # check if the bitcode section is present in the file
        if ".codasip_bc" in output:
            has_bc = True

        return has_bc

    def _extract_archive(self, p_archive):
        """
        Extracts given archive file and returns list of extracted object files.
        @param p_archive: Path to the archive file.
        """
        # create a new folder for the extracted object files
        p_arch_tmp = mkdtemp("", "arch", self._p_tmp)
        files = []

        cwd = os.getcwd()
        os.chdir(p_arch_tmp)

        args = ['-vx', p_archive]
        
        try:
            output = execute(self._toolchain.ar(), args)
        except RuntimeError:
            error("Can not extract archive '" + p_archive + "'")

        # create a list of the extracted object files
        for line in [l.decode() for l in output.splitlines()]:
            fields = line.split()
            if len(fields) <= 2:
                continue
            files.append(os.path.join(p_arch_tmp, fields[2]))

        os.chdir(cwd)

        return files

    def _get_symbols(self, p_file):
        """
        Returns lists of global and undefined symbols in the file.
        """
        s_global = set()
        s_undefined = set()
        
        args = ['-t', p_file]

        try:
            output = execute(self._toolchain.objdump(), args)
        except:
            error("Could not dump file '" + p_file + "'")

        # find all the global and undefined symbols in the symbol table
        for line in [l.decode() for l in output.splitlines()]:
            fields = line.split()
            if len(fields) <= 3:
                continue
            if fields[1] == "g":
                s_global.add(fields[-1])
            if fields[-3] == "*UND*":
                s_undefined.add(fields[-1])

        return s_global, s_undefined

    def _is_duplicit(self, new_file):
        """
        Returns True if an identical file is already present in the project.
        @param new_file: A file which should be added to the project.
        """
        is_duplicit = False

        # if duplicit found in bitcode files, do not use the new file
        for f in self._f_bitcode:
            if new_file.global_symbols() <= f.global_symbols():
                is_duplicit = True
                break

        # now check object files with no bitcode
        if not is_duplicit:
            for f in self._f_object:
                if new_file.global_symbols() <= f.global_symbols():
                    # keep the bitcode file and remove the old one
                    if new_file.is_bitcode():
                        self._f_object.remove(f)
                    # do not use the new file, same as the found one
                    else:
                        is_duplicit = True
                    break

        return is_duplicit

    def _add_bitcode(self, new_file):
        """
        Adds a new object file containing bitcode into the project.
        @param new_file: The file which should be added.
        """
        n_bc_file_tmp = "codasip_bc_file_" + str(self._bc_index) + ".bc"
        self._bc_index += 1
        p_bc_file_tmp = os.path.join(self._p_tmp, n_bc_file_tmp)

        # find the position of the bitcode in the object file
        args = ['-h', '-w', new_file.path()]
        
        try:
            output = execute(self._toolchain.objdump(), args)
        except:
            error("Could not dump file '" + new_file.path() + "'")

        size = 0
        offset = 0
        for line in [l.decode() for l in output.splitlines()]:
            fields = line.split()
            if len(fields) <= 7:
                continue
            if fields[1] == ".codasip_bc":
                try:
                    size = int(fields[2], 16)
                    offset = int(fields[5], 16)
                except:
                    error("Could not read objdump output")

        if size:
            # extract the bitcode into separate file
            f_object = open(new_file.path(), mode="rb")
            f_object.seek(offset)
            f_bitcode = open(p_bc_file_tmp, mode="wb+")
            f_bitcode.write(f_object.read(size))
            f_object.close()
            f_bitcode.close()

            new_file.set_bitcode(n_bc_file_tmp, self._p_tmp)
            self._f_bitcode.append(new_file)

    def _link_bc_files(self):
        """Links all the bitcode files from the project"""
        n_bc_file_res = ""

        p_to_link = []
        for f in self._f_bitcode:
            p_bc = f.get_bitcode_path()
            # there was possibly a library with one (or more) files with
            # no bitcode and the rest with bitcode => there can be ordinary
            # object files in the self._f_bitcode list
            if p_bc:
                p_to_link.append(p_bc)

        # it is possible that there was no file with bitcode attached
        if not p_to_link:
            return ""

        p_bc_file_res = p_to_link[0]
        p_to_link_new = []
        procs = []
        run = 0

        # link all the files in pairs until only one is left => tree
        while len(p_to_link) > 1:
            procs = []

            # link the files on same level of the "tree" in parallel            
            for index in range(len(p_to_link) / 2):
                n_bc_file_res = ("codasip_bc_tmp_" + str(run) + "_" +
                    str(index) + ".bc")
                p_bc_file_res = os.path.join(self._p_tmp, n_bc_file_res)
                p_bc_1 = p_to_link[index * 2]
                p_bc_2 = p_to_link[index*2 + 1]

                cmd = self._toolchain.llvm_link()
                cmd += ["-o", p_bc_file_res, p_bc_1, p_bc_2]
                proc = Popen(cmd, stdout=PIPE)
                procs.append(proc)
                p_to_link_new.append(p_bc_file_res)

            # wait for all running procs to finish
            for proc in procs:
                proc.communicate()[0]
                if proc.returncode != 0:
                    error("Could not link bc files(2)")

            # if the number of files on the current tree level was odd
            # there is one file left to link
            if len(p_to_link) % 2:
                args = ["-o", p_bc_file_res, p_bc_file_res, p_to_link[-1]]
                
                try:
                    execute(self._toolchain.llvm_link(), args)
                except:
                    error("Could not link bc files(1)")

            p_to_link = p_to_link_new
            p_to_link_new = []
            run += 1

        self._p_bc_file_link = p_bc_file_res

                
    def add_object_or_archive(self, p_file):
        """
        Adds a new file which can be either object file or archive
        into the project.
        @param p_file: Path to the new file.
        """
        # input file is an archive
        if self._is_archive(p_file):
            self.add_archive(p_file)
        # input file is an object file
        else:
            name = os.path.basename(p_file)
            location = os.path.dirname(p_file)
            s_global, s_undefined = self._get_symbols(p_file)
            if self._has_bc(p_file):
                f_bitcode = BitcodeFile(name, location, s_global, s_undefined)
                if not self._is_duplicit(f_bitcode):
                    self._add_bitcode(f_bitcode) 
            else:
                f_object = ObjectFile(name, location, s_global, s_undefined)
                if not self._is_duplicit(f_object):
                    self._f_object.append(f_object)

    def add_archive(self, p_archive):
        """
        Adds a new archive file into the project.
        @param p_archive: Path to the new archive file.
        """
        if self._has_bc(p_archive):
            # to remove unused library functions from the resulting binary
            # each function has to be in its own section
            if os.path.basename(p_archive) in self._n_std_libs:
                cmd_line.set_x_sections_switches()

            files = self._extract_archive(p_archive)
            location = os.path.dirname(files[0])
            for f in files:
                name = os.path.basename(f)
                s_global, s_undefined = self._get_symbols(f)    
                f_bitcode = BitcodeFile(name, location, s_global, s_undefined)
                if not self._is_duplicit(f_bitcode):
                    self._add_bitcode(f_bitcode)
            
        else:
            name = os.path.basename(p_archive)
            location = os.path.dirname(p_archive)
            s_global, s_undefined = self._get_symbols(p_archive)
            f_archive = ArchiveFile(name, location, s_global, s_undefined)
            self._f_archive.append(f_archive)

    def get_lto_input(self):
        """Returns the path to the linked bitcode files"""
        self._link_bc_files()
        
        return self._p_bc_file_link

    def set_lto_output(self, path):
        """Sets the path to the file which is output of the llvm-lto"""
        self._p_bc_file_opt = path

    def get_lto_output(self):
        """Returns the path to the output of the llvm-lto"""
        return self._p_bc_file_opt

    def get_object_files(self):
        """Returns a list of paths to all the object files in the project"""
        return [f.path() for f in self._f_object]

    def get_archive_files(self):
        """Returns a list of paths to all the archives in the project"""
        return [f.path() for f in self._f_archive]

    def get_symbols_to_export(self):
        """Returns set of symbols which are not defined among all the object
        files and archives in the project and should not be internalized by
        the llvm-lto"""
        s_global = set()
        s_undefined = set()

        for f in self._f_object + self._f_archive:
            s_global.update(f.global_symbols())
            s_undefined.update(f.undefined_symbols())

        # computes the set difference
        s_undefined.difference_update(s_global)

        return s_undefined

    def __str__(self):
        """Returns paths to all the files in the project"""
        s = "*** PROJECT FILES ***\n"

        for f in self._f_object + self._f_bitcode + self._f_archive:
            s += str(f) + "\n"
        
        return s


# ------------------------------ GLOBAL VARIABLES ------------------------------
tmp_dir = ""
cmd_line = CommandLine()


# ------------------------------------ UTILS -----------------------------------
def error(message):
    """
    Prints the given error message and exits with exit code -1
    @param message: The message to be printed on std error output.
    """
    global tmp_dir
    
    sys.stderr.write("wpo-linker error: " + message + "\n")
    rmtree(tmp_dir)
    sys.exit(-1)

def warning(message):
    """
    Prints the given warning message.
    @param message: The message to be printed on std error output.
    """
    sys.stderr.write("wpo-linker warning: " + message + "\n")

def finalize():
    """Deletes all the temporary files created during the linking"""
    global tmp_dir

    rmtree(tmp_dir)

def execute(executable, args):
    """
    Exectutes the given executable with the given arguments.
    @param executable: The path to the executable
        (it is a list -> [interpreter, script] / [executable]).
    @param args: A list of the arguemnts to pass to the executable.
    """
    cmd = executable
    cmd += args

    proc = Popen(cmd, stdout=PIPE)
    output = proc.communicate()[0]

    if proc.returncode != 0:
        raise RuntimeError(" ".join(executable) + " failed")

    return output

def execute_verbose(executable, args):
    """
    Exectutes the given executable with the given arguments while printing
    the executed command on std error output.
    @param executable: The path to the executable
        (it is a list -> [interpreter, script] / [executable]).
    @param args: A list of the arguemnts to pass to the executable.
    """
    global cmd_line

    if cmd_line.is_verbose():
        print_verbose(executable + args)

    return execute(executable, args)

def print_verbose(cmd):
    """
    Prints the given command on std error output.
    @param cmd: The command to be printed.
    """
    verboseString = ' "' + cmd[0] + '" '
    for item in cmd[1:]:
        verboseString += item
        verboseString += " " 
    sys.stderr.write(verboseString + "\n")


# ------------------------------ COMPILATION STEPS -----------------------------
def get_toolchain(p_script):
    """
    Creates a new instance of the Toolchain class for the current project.
    @param p_script: The path to this script.
    """
    path = os.path.dirname(os.path.abspath(p_script))
    prefix = ""

    m_prefix = search(r'(.*?)-wpo-linker', os.path.basename(p_script))
    if m_prefix:
        prefix = m_prefix.group(1)

    return Toolchain(path, prefix)

def parse_cmd_args(cmd_line, project, args):
    """
    Parses the arguments passed into this script.
    @param cmd_line: A instance of the CommandLine class.
    @param project: A instance of the Project class.
    @param args: List of arguments.
    """
    index = 0

    while index < len(args):
        item = args[index]
        
        if item.startswith("-"):
            item = item[1:]
            if item == "v":
                cmd_line.set_verbose()
            if item == "save-temps":
                cmd_line.set_save_temps()
            # path to dir with libraries, next item is the path
            elif item == "L":
                index += 1
                item = args[index]
                cmd_line.add_lib_path_switch(item)
            # path to dir with libraries, next item is the path
            elif item == "-library-path":
                index += 1
                item = args[index]
                cmd_line.add_lib_path_switch(item)
            # path to dir with libraries, switch and path are in the same item
            elif item.startswith("L"):
                item = item[1:]
                cmd_line.add_lib_path_switch(item)
            # library name, next item is the name
            elif item == "l":
                index += 1
                item = args[index]
                cmd_line.add_lib_switch(item)
            # library name, next item is the name
            elif item == "-library":
                index += 1
                item = args[index]
                cmd_line.add_lib_switch(item)
            # library name, switch and name are in the same item
            elif item.startswith("l"):
                item = item[1:]
                cmd_line.add_lib_switch(item)
            # local, next switch is for llvm-lto
            elif item == "Wo":
                index += 1
                item = args[index]
                if item == "-v":
                    cmd_line.set_verbose()
                elif item == "-save-temps":
                    cmd_line.set_save_temps()
                else:
                    cmd_line.add_clang_switch(item)
            # output file name
            elif item == "o":
                index += 1
                item = args[index]
                cmd_line.set_output_file(item)
            # next item in args has to be skipped
            elif cmd_line.is_skip_next(item):
                cmd_line.add_ld_switch(args[index])
                index += 1
                cmd_line.add_ld_switch(args[index])
            # unused simple switch
            else:
                cmd_line.add_ld_switch(args[index])
        # the item is path to object file or archive
        else:
            project.add_object_or_archive(os.path.abspath(item))

        index += 1

    #get absolute path for all libs
    for lib in cmd_line.get_lib_switches():
        found = False
        for path in cmd_line.get_lib_path_switches():
            p_lib = os.path.abspath(os.path.join(path, lib))
            if os.path.isfile(p_lib):
                found = True
                project.add_archive(p_lib)
                break
        if not found:
            error("Could not find library '" + lib + "'")

def lto_optimize(toolchain, project):
    """
    Runs the llvm-lto to optimize the linked bitcode files.
    @param toolchain: A instance of the Toolchain class.
    @param project: A instance of the Project class.
    """
    global cmd_line, tmp_dir

    # get the linked bitcode files
    p_bc_file_link = project.get_lto_input()

    if not p_bc_file_link:
        warning("No bitcode files found in the inputs")
        return ""

    p_bc_file_opt = os.path.join(tmp_dir, "codasip_bc_opt.bc")
    p_obj_file_opt = os.path.join(tmp_dir, "codasip_bc_opt1.o")

    # optimize linked bitcode file using llvm-lto
    args = [p_bc_file_link]
    for symbol in project.get_symbols_to_export():
        args.append("-exported-symbol=" + symbol)

    try:
        output = execute_verbose(toolchain.llvm_lto(), args)
    except RuntimeError:
        error("Could not optimize bc files")
    #get the name of output .ll file
    llFile = search(r"Wrote native object file '(.*?)'", output)
    if not llFile:
        error("Tool llvm-lto failed")
    else:
        llFile = llFile.group(1)
        
        #compile the .ll file
        copyfile(llFile, p_bc_file_opt)
        args = ["-c", p_bc_file_opt, "-o", p_obj_file_opt]
        #add switches marked as llvm-lto switches
        args += cmd_line.get_clang_switches()
       
        try:
            execute_verbose(toolchain.clang(), args)
        except RuntimeError:
            error("Could not compile llvm-lto output into object file")

    project.set_lto_output(p_bc_file_opt)

    return p_obj_file_opt

def size_optimize(toolchain, project):
    """
    Performs the size optimization based on dumped symbol addresses.
    @param toolchain: A instance of the toolchain class.
    @param project: A instance of the project class.
    """
    global cmd_line, tmp_dir

    p_symbol_file = os.path.join(tmp_dir, "codasip.sym")
    p_obj_file_opt = os.path.join(tmp_dir, "codasip_bc_opt2.o")

    # dump the symbol addresses from the executable from step 2
    args = [cmd_line.get_output_file(), "-m", "sym", "-o", p_symbol_file]

    try:
        execute(toolchain.elfconvert(), args)
    except RuntimeError:
        error("Could not dump symbol addresses")

    args = cmd_line.get_clang_switches()
    args += ["-Xllc", "-link-info-optim=" + p_symbol_file]
    args += ["-c", project.get_lto_output(), "-o", p_obj_file_opt]

    try:
        execute_verbose(toolchain.clang(), args)
    except RuntimeError:
        error("Could not perform size optimization")

    return p_obj_file_opt

def create_executable(toolchain, f_objects, f_archives):
    """
    Links all the given object files and archives.
    @param toolchain: A instance of the Toolchain class.
    @param f_objects: A list of object files to be linked.
    @param f_archives: A list of archives to be linked.
    """
    global cmd_line, tmp_dir

    args = f_objects + f_archives + cmd_line.get_ld_switches()
    
    try:
        execute_verbose(toolchain.ld(), args)
    except RuntimeError:
        error("Could not create the executable")


# ------------------------------------ MAIN ------------------------------------
def main(args):
    """
    The main function which calls the steps of the linking.
    @param args: The arguments passed into this script.
    """
    global tmp_dir

    tmp_dir = mkdtemp()
    l_args = list(args)

    # STEP 0 - sort all command line switches and input files
    toolchain = get_toolchain(l_args[0])
    project = Project(tmp_dir, toolchain)
    
    l_args = l_args[1:]
    parse_cmd_args(cmd_line, project, l_args)

    # STEP 1 - optimize given bitcode files
    p_obj_file_opt = lto_optimize(toolchain, project)

    # STEP 2 - link optimized bitcode with the rest of input files
    f_objects = []
    if p_obj_file_opt:
        f_objects = [p_obj_file_opt]
    f_objects += project.get_object_files()
    create_executable(toolchain, f_objects, project.get_archive_files())

    # STEP 3 - dump symbol addresses and genereate size optimized code
    p_obj_file_opt = size_optimize(toolchain, project)

    # STEP 4 - link size optimized bitcode with the rest of input files
    files = [p_obj_file_opt]
    files += project.get_object_files()
    create_executable(toolchain, files, project.get_archive_files())

    finalize()

    return 0

if __name__ == '__main__':
    sys.exit(main(sys.argv))
