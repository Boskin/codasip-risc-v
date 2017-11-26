#
# Codasip Ltd
# 
# CONFIDENTIAL 
#
# Copyright 2015 Codasip Ltd
# 
# All Rights Reserved.
#
# NOTICE: All information contained in this file, is and shall remain the property of Codasip Ltd 
# and its suppliers, if any. 
#
# The intellectual and technical concepts contained herein are confidential and proprietary to 
# Codasip Ltd and are protected by trade secret and copyright law.  In addition, elements of the 
# technical concepts may be patent pending.  
#
# This file is part of the Codasip Studio product. No part of the Studio product, including this 
# file, may be use, copied, modified, or distributed except in accordance with the terms contained 
# in Codasip license agreement under which you obtained this file.
#
import os
import re
import sys
import codasip
import shutil
import subprocess
import zipfile
import types
import fnmatch
from distutils import dir_util

from codasip import folder_changed, hdl_extension, config_changed, CodalProject, ComponentProject
from codasip import warning, info, error, BuildError, ConfigError, resolve_path, flaten_generator 
from codasip import Sdk, SdkModel, Hdk
from codasip.utils import traverse, wraps, unifdef_stream

def jtag_flags(model):
    """Global flags for JTAG"""
    # helper for command building
    cmd = codasip.command_builder()

    if model.config['jtag.nexus-clock-control']:
        cmd += '--nexus-clock-control'
    if model.config['jtag.dft-scan-mode']:
        cmd += '--dft-scan-mode'

    return cmd

def nexus_flags(model):
    """Common flags for JTAG/Nexus"""
    # helper for command building
    cmd = codasip.command_builder()

    # all avaliable model paths
    model_paths = [m.design_path for m in model.list_models(ia=False)]

    mapping = model.config['nexus']
    if mapping:
        for m in mapping:
            name = m.get('model')
            if not name:
                warning('Missing model name in JTAG/Nexus configuration of project {}.', model.project.name)
                continue
            
            # skip model paths that are not in model hierarchy
            if name not in model_paths:
                # print warning only for toplevel model that should contain entire hierarchy
                if model == model.top:
                    warning('Model {} in JTAG/Nexus configuration was not found in the project {} hierarchy.', name, model.project.name)
                continue

            def add_flag(id, config, list=False, cmd=cmd, m=m):
                opt = m.get(config)
                if opt is not None:
                    if list:
                        for o in opt:
                            cmd += [id, o]
                    else:
                        cmd += [id, opt]

            cmd += ['-a', name]
            # JTAG part
            add_flag('--jtag-id', 'identifier')
            add_flag('--jtag-ir-size', 'ir-length')
            add_flag('--jtag-instr-idcode', 'instruction-idcode')
            add_flag('--jtag-instr-nexus-access', 'instruction-nexus-access')
            add_flag('--jtag-instr-nexus-control', 'instruction-nexus-control')
            # Nexus part
            add_flag('--nexus-breakpoints', 'breakpoints')
            if m.get('watchpoints'):
                cmd += '--nexus-watchpoints'
            add_flag('--nexus-interfaces', 'interfaces', True)
            add_flag('--nexus-bsc', 'bscan-resources', True)

    return cmd

def fpga_bscan_flags(model):
    """Flags for FPGA BSCAN cell"""
    # helper for command building
    cmd = codasip.command_builder()

    def add_flag(id, config, cmd=cmd):
        opt = model.config[config]
        if opt is not None:
            cmd += [id, opt]

    if model.config['fpga_bscan.enable']:
        cmd += '--fpga-bscan'
    add_flag('--fpga-bscan-jtag-chain', 'fpga_bscan.jtag-chain')
    add_flag('--fpga-bscan-user-code', 'fpga_bscan.user-code')
    add_flag('--fpga-bscan-ir-size', 'fpga_bscan.ir-length')
    add_flag('--fpga-bscan-ir-before', 'fpga_bscan.ir-before')
    add_flag('--fpga-bscan-dev-before', 'fpga_bscan.dev-before')

    return cmd

def rtl_flags(model, uvm=False):
    """"Common arguments for RTL and UVM"""
    # file dependencies
    file_dep = [model.model]
    # task dependencies
    task_dep = []
    # helper for command building
    cmd = codasip.command_builder()
    # XML source model
    cmd += model.model

    # HDL language
    lang = model.config['rtl.language']
    cmd += ['-l', lang]
    # generate synthesis script templates
    if lang in ['verilog', 'sverilog', 'vhdl']:
        synt = model.config['rtl.synthesis-tool']
        if synt and model.config['rtl.synthesis-script'] != False:
            cmd += ['--rtl-synthesis-tool', synt]

    # get all components recursively 
    components = list(model.components) 
    for m in model.list_models(): 
        components.extend(m.components) 

    # component project instances
    for c in components:
        cmd += ['-e', '{},{}'.format(c.name, c.dir)]
        # add component source files as dependencies, so when component source changes,
        # invalidate simulator
        source_files = c.get_source_files(lang)
        if source_files:
            file_dep.extend(source_files)

    def add_value_flag(flag, conf, model=model, cmd=cmd):
        if model.config[conf]:
            cmd += [flag, model.config[conf]]

    def add_flag(flag, conf, model=model, cmd=cmd):
        if model.config[conf]:
            cmd += flag

    # Target technology
    add_value_flag('--rtl-technology', 'rtl.technology')
    # Clock domain synchronization - metastability
    add_value_flag('--rtl-sync-reg-length', 'rtl.sync-reg-length')

    # Reset active level
    if model.config['rtl.reset-level'] == 'high':
        cmd += "--rtl-reset-active-high"
     # Reset type
    if model.config['rtl.reset-type'] == 'sync':
        cmd += "--rtl-reset-synchronous"
    # HDL comments length
    if model.config['rtl.comments-length'] is not None:
        cmd += ['--rtl-comments', model.config['rtl.comments-length']]
    # HDL DFF delay
    if model.config['rtl.dff-delay'] is not None:
        cmd += ['--rtl-dff-delay', model.config['rtl.dff-delay']]

    # RTL optimizations

    # RTL limits for inferred multiplexers
    if model.config['rtl.opt-mux-select-max'] is not None:
        cmd += ['--rtl-opt-mux-select-max', model.config['rtl.opt-mux-select-max']]
    # RTL optimization to remove ACT for always activated units
    add_flag('--rtl-opt-fu-always-act', 'rtl.opt-fu-always-act')
    # RTL optimization to remove operand isolation logic
    add_flag('--rtl-opt-fu-input-ops', 'rtl.opt-fu-input-ops')
    add_flag('--rtl-opt-fu-act', 'rtl.opt-fu-act')
    # reduce usage of activation condition inside fu using auxiliary signal
    add_flag('--rtl-opt-fu-act-aux', 'rtl.opt-fu-act-aux')
    # RTL nesting level
    if model.config['rtl.cnd-nesting-level'] is not None:
        cmd += ['--rtl-cnd-nesting-level', model.config['rtl.cnd-nesting-level']]

    # RTL simulation and verification startup scripts
    add_value_flag('--rtl-simulation-tool', 'rtl.rtl-simulation-tool')

    # force loading .heap and .stack sections
    if uvm or model.config['rtl.force-heap-and-stack']:
        cmd += "--rtl-heap-stack"
    # generate testbenches                
    if not uvm and model.config['rtl.testbenches']:
        cmd += '-b'
    # verbosity_flag
    cmd += model.verbosity_flag
    # SVG debug files (not for UMV)
    if not uvm and model.config['svg']:
        cmd += '--svg'

    # RTL naming options
    add_value_flag('--rtl-name-clock', 'rtl.name-clock')
    add_value_flag('--rtl-name-reset', 'rtl.name-reset')
    add_value_flag('--rtl-name-reset2', 'rtl.name-reset2')
    add_value_flag('--rtl-name-scan-mode', 'rtl.name-scan-mode')
    add_value_flag('--rtl-name-case-top', 'rtl.name-case-top')
    add_value_flag('--rtl-name-case-top-port', 'rtl.name-case-top-port')
    add_value_flag('--rtl-name-case-module', 'rtl.name-case-module')
    add_value_flag('--rtl-name-case-port', 'rtl.name-case-port')
    add_value_flag('--rtl-name-case-signal', 'rtl.name-case-signal')
    add_value_flag('--rtl-name-case-instance', 'rtl.name-case-instance')
    add_value_flag('--rtl-name-prefix-module', 'rtl.name-prefix-module')
    add_value_flag('--rtl-name-suffix-module', 'rtl.name-suffix-module')
    add_value_flag('--rtl-name-prefix-port', 'rtl.name-prefix-port')
    add_value_flag('--rtl-name-suffix-port', 'rtl.name-suffix-port')
    add_value_flag('--rtl-name-prefix-signal', 'rtl.name-prefix-signal')
    add_value_flag('--rtl-name-suffix-signal', 'rtl.name-suffix-signal')
    add_value_flag('--rtl-name-prefix-instance', 'rtl.name-prefix-instance')
    add_value_flag('--rtl-name-suffix-instance', 'rtl.name-suffix-instance')

    # RTL mapping
    mapping = model.config['rtl.mapping']
    if not uvm and mapping and model.config['rtl.memory-init'] != False:
        if not isinstance(mapping, list):
            warning('Incomplete RTL program mapping: {} in project {} configuration.', str(m), model.project.name)
        else:
            for m in mapping:
                ins = m.get('instance')
                app = m.get('program')
                if ins and app:
                    app = resolve_path(model, app)
                    cmd += ['-a', ins, '--init', app]
                else:
                    warning('Incomplete RTL program mapping: {} in project {} configuration.', str(m), model.project.name)
    # nexus and JTAG flags
    cmd += jtag_flags(model)
    cmd += nexus_flags(model)
    cmd += fpga_bscan_flags(model)

    return cmd, file_dep, task_dep

def uvm_flags(model):
    """"Common arguments for UVM"""
    cmd, file_dep, task_dep = rtl_flags(model, True)

    def add_enable_flag(conf, flag, model=model, cmd=cmd):
        if model.config[conf]:
            cmd += flag

    # automatic UVM
    add_enable_flag('uvm.auto', '--uvm-auto')
    # assert based verification
    add_enable_flag('uvm.assertions', '--uvm-abv')
    # data verification
    add_enable_flag('uvm.data-ver', '--uvm-data-ver')
    # enable code coverage collection
    add_enable_flag('uvm.code-coverage', '--uvm-code-coverage')
    # enable functional coverage collection
    add_enable_flag('uvm.func-coverage', '--uvm-func-coverage')
    # force the generator to generate unique files names
    add_enable_flag('uvm.unique-files', '--uvm-unique-files')

    # uvm mapping
    mapping = model.config['uvm.mapping']
    if mapping:
        for m in mapping:
            ins = m.get('instance')
            app = m.get('program')
            if ins and app:
                app = resolve_path(model, app)
                cmd += ['-a', ins, '--uvm-init', app]
            else:
                warning('Incomplete UVM program mapping for project {}: {}.', model.project.name, str(m))
    return cmd, file_dep, task_dep

def sim_flags(model, cosim=False):
    """"Common arguments for simulator, cosimulator and auto UVM"""
    # file dependencies
    file_dep = [model.model]
    # task dependencies
    task_dep = []

    cmd = codasip.command_builder()
    # prefix
    cmd += ['--prefix', model.prefix]
    # add input model
    cmd += model.model
    
    # get all components recursively 
    components = list(model.components) 
    for m in model.list_models(): 
        components.extend(m.components) 

    # component project instances
    for c in components:
        cmd += ['-e', '{},{}'.format(c.name, c.dir)]
        # add component source files as dependencies, so when component source changes,
        # invalidate simulator
        source_files = c.get_source_files()
        if source_files:
            file_dep.extend(source_files)

    # debugger
    if model.config['simulator.debugger']:
        cmd += ['-d']
        if model.config['simulator.watchpoints']:
            cmd += ['-w']
        if model.config['simulator.codal-debugger']:
            cmd += ['--codal-debug']

    # profiler
    profiler = model.config['simulator.profiler']
    if profiler and model.config['simulator.enable-profiler'] != False:
        if profiler == 'low':
            cmd += ['--profiler-rt', 'L']
        elif profiler == 'high':
            cmd += ['--profiler-rt', 'H']
            # advanced features
            if model.config['simulator.profiler-resources-coverage'] != False:
                cmd += ['--profiler-rt-resources-coverage']
            if model.config['simulator.profiler-call-stack'] != False:
                cmd += ['--profiler-rt-call-stack']
            if model.config['simulator.profiler-codal-coverage'] != False:
                cmd += ['--profiler-rt-codal-coverage']
            if model.config['simulator.profiler-decoders-coverage'] != False:
                cmd += ['--profiler-rt-decoders-coverage']
            if model.config['simulator.profiler-ppa'] != False:
                cmd += ['--profiler-rt-ppa']
        else:
            raise ConfigError('Invalid profiler level {} for project {}'.format(profiler, model.project.name))
    # resource dumping
    if model.config['simulator.dump']:
        cmd += ['--dump']
    # stack overflow checks
    if model.config['simulator.stack-overflow-detection']:
        cmd += ['--stack-overflow-check']
    # cosimulator
    if cosim:
        cmd += ['--cosim', model.config['simulator.co-simulator']]
        # foreign (DPI) co-simulation
        cmd += ['--rtl-simulation-tool', model.config['rtl.rtl-simulation-tool']]

    # optimization level
    opt = model.config['simulator.optimization']
    if opt is None:
        opt = model.config['optimization']
    cmd += ['-O', opt]
    # number of used cpus
    if model.config['parallel-build']:
        cmd += ['-P', model.config['parallel-build']]
    # verbosity_flag
    cmd += model.verbosity_flag
    # SVG debug files
    if model.config['svg']:
        cmd += '--svg'

    # add nexus flags for CA model simulator
    if not model.ia:
        cmd += nexus_flags(model)

    return cmd, file_dep, task_dep

def auto_memory_flags(model):
    """"Arguments for automatic memory generation"""
    cmd = codasip.command_builder()
    # handle default memories attributes
    memory_size = model.config['memory.size']
    # override the default memory size
    if memory_size:
        cmd += ['--memory-size', memory_size]
    # should be memories unaligned
    if model.config['memory.unaligned']:
        cmd += ['--memory-unaligned']
    # memory latencies
    memory_latencies = model.config['memory.latencies']
    if memory_latencies:
        memory_read_latencies = memory_latencies[0]
        latencies = ','.join(map(str, memory_read_latencies))

        if len(memory_latencies) == 2:    
            memory_write_latencies = memory_latencies[1]
            latencies += ":" + ','.join(map(str, memory_write_latencies))

        cmd += ['--memory-latencies', latencies]
            
    return cmd

def version_text_flag(model):
    """"Argument for version text that user adds"""
    cmd = codasip.command_builder()
    # handle attribute
    version_text = model.config['version-text']
    # get the text
    if version_text:
        cmd += ['--version-text', version_text]
        
    return cmd

def sdk_libraries(model, print_warning=False):
    """
    Parse enabled libraries and return dictionary of library description:
        key:
            name - Name of library
        value:
            dir - Source library for library, or None
            outputs - list of output files
    """ 
    # get all known libraries
    libs_desc = codasip.internal_get_libraries_info()
    
    enabled_libs = set()
    args = model.config.find('sdk', model.design_path)

    # parse enabled libraries from config
    if args:
        for name, enabled in args.iteritems():
            if name in libs_desc and enabled == True:
                enabled_libs.add(name)

    libs = {}
    # detect all known libraries
    for name, lib_info in libs_desc.iteritems():
        # disabled library
        if name not in enabled_libs:
            continue
        
        # try directory in model, e.g. <project>/models/ia/startup
        lib_dir = None
        if lib_info['source_dir']:
            dir = os.path.join(model.dir, 'libs', lib_info['source_dir'])
            if os.path.isdir(dir):
                lib_dir = dir
            else:
                # try directory in project, e.g. <project>/startup
                dir = os.path.join(model.project.dir, 'libs', name)
                if os.path.isdir(dir):
                    lib_dir = dir
                else:
                    if print_warning:
                        warning('Source files for enabled library {} were not found in {}. '
                                + 'Build of this library will be skipped.', name, dir)
                    continue
        
        libs[name] = {'dir': lib_dir,
                      'outputs' : [os.path.join(model.sdk_dir, o) for o in lib_info['output']]}

    return libs


####################################################################################################
def sdk_generator(task_generator):
    """
    Task decorator that modifies all tasks generating SDK tools.
    It will add another action to the task that will refresh the XML describing an SDK.
    It will also add _sdk_tools task as dependency for all decorated tasks.
    """
    @wraps(task_generator)
    def _wrapper(*args):
        model = args[0]
        sdk_id = model.config['sdk-id']
        
        def refresh_sdk():
            """Task action to recreate SDK XML"""
            sdk = Sdk(model.sdk.dir)
            sdk.add_model(model.sdk)
            sdk.save(custom_id=sdk_id)
                
        def modify_task(task):
            """Modify the task"""
            if task and task['basename'] != '_sdk_tools':
                
                # actions can be None
                if not task.get('actions'):
                    task['actions'] = [refresh_sdk]
                else:
                    task['actions'].append(refresh_sdk)
                    
                # str is needed, because SDK ID can be None
                task.setdefault('uptodate', []).append(config_changed(str(sdk_id)))
                
                if model.asip and model.ia: 
                    task.setdefault('task_dep', []).append(model.get_task_id('_sdk_tools'))
                    
            return task
        
        # go through all generated tasks from single task generator and modify them
        tasks = task_generator(*args)
        # from generators returning generators get list of tasks
        for task in flaten_generator(tasks):
            yield modify_task(task)
    
    return _wrapper

####################################################################################################
def hdk_generator(task_generator):
    """
    Task decorator that modifies all tasks generating HDK. Adds _hdk_tools task as dependency.
    Generate task for CA top-level models only.
    """
    @wraps(task_generator)
    def _wrapper(*args):
        model = args[0]
        
        # only CA toplevel models
        if model.ia or model.top != model:
            return
        
        hdk_id = model.config['hdk-id']
        
        def refresh_hdk():
            """Task action to recreate HDK XML"""
            hdk = Hdk(model.hdk.dir)
            hdk.add_model(model.hdk)
            hdk.save(custom_id=hdk_id)
                
        def modify_task(task):
            """Modify the task"""
            if task and task['basename'] != '_hdk_tools':
                
                # actions can be None
                if not task.get('actions'):
                    task['actions'] = [refresh_hdk]
                else:
                    task['actions'].append(refresh_hdk)
                    
                # str is needed, because HDK ID can be None
                task.setdefault('uptodate', []).append(config_changed(str(hdk_id)))
                task.setdefault('task_dep', []).append(model.get_task_id('_hdk_tools'))
            return task
        
        # go through all generated tasks from single task generator and modify them
        tasks = task_generator(*args)
        # from generators returning generators get list of tasks
        for task in flaten_generator(tasks):
            yield modify_task(task)
    
    return _wrapper


@codasip.hook(event='tasks_finished')
def add_configuration_title(event, project, task_list):
    """Automatically add current model configuration string into CodAL compilation task title"""
    l = project.list_models()
    models = {}
    for m in l:
        models[m.design_path] = m

    for task in task_list:
        # split tasks for models, will fail on group task
        try:
            basename, design_path = task.name.split(':')
        except ValueError:
            continue
        # filter to CodAL compilation tasks only
        if not basename.startswith('model.'):
            continue
        # find model by design path
        model = models.get(design_path)
        if model is None:
            continue
        # calculate configuration string of the model
        config = model.project.options.get_configuration()
        if not config:
            continue
        # replace task title
        name = ' {} '.format(model.design_path_list[-1])
        changed = name + '({}) '.format(config)
        task.doc = task.doc.replace(name, changed)
        task.custom_title = task.doc


####################################################################################################
def task_compile(model):
    """"Compile CodAL files, called from dodo task"""

    def compile():
        """Compile CodAL source code. If not found, print error."""
        if not model.source_files:
            raise BuildError('No source files found in {}.'.format(model.dir))
        
        for comp in model.components:
            if not os.path.isfile(comp.model):
                raise BuildError('Component {} source files missing.'.format(comp.name))

        model.compile()

    files = model.source_files
    # add dependency on child models
    for m in model.models:
        files.append(m.model)

    # compilation flags used for analysis and compilation
    cmd = model.compile_flags

    return {
        'basename': 'model',
        'actions': [compile],
        'targets': [model.model],
        'file_dep': files,
        'uptodate': [config_changed(cmd)],
        'title': 'Model Compilation'
    }

@codasip.filter(sdk=True)
@sdk_generator
def task_sdk_tools(model):
    # list of SDK tools binaries
    targets = [os.path.join(model.sdk_dir, 'bin', model.prefix + t)
               for t in codasip.list_sdk_tools()]

    # create command 
    cmd = codasip.command_builder()
    # prefix
    cmd += ['--prefix', model.prefix]

    # SDK tools documentation
    args = model.config.find('sdk', model.design_path)
    if args and 'man' in args and args['man']:
        cmd += ['--doc']
        targets += [os.path.join(model.sdk_dir, 'share', 'man', 'man1'),
                    os.path.join(model.sdk_dir, 'share', 'info')]

    # SDK dir
    cmd += model.sdk_dir

    return {
        # starts with underscore -> hidden/private tasks
        'basename': '_sdk_tools',
        'actions': [(codasip.copy_sdk_tools, [cmd],)],
        'targets': targets,
        'uptodate': [config_changed(cmd)],
        'title': 'SDK Tools'
    }

@hdk_generator
def task_hdk_tools(model):
    """Copy JtagAdapter binaries and support files to HDK"""
    build_type = codasip.BuildType()
    lib_prefix = '' if build_type.msvc else 'lib'
    if build_type.mingw:
        static_lib_extension = '.dll.a'
    elif build_type.msvc:
        static_lib_extension = '.lib'
    else:
        static_lib_extension = '.a'        

    # dictionary of source path -> target path         
    files = {}
    
    # binary
    sources = ['jtagadapter' + codasip.extension_exe]
    # shared library that contains implementation for RTL plugins
    sources.append(lib_prefix + 'jtagadapterl' + codasip.extension_shared_lib)
    # import library, windows only
    if build_type.win:
        sources.append(lib_prefix + 'jtagadapterl' + static_lib_extension)
    
    # find all installed plugins
    root = os.path.join(codasip.tools_dir, 'bin')
    if False:
        for file in os.listdir(root):
            name, ext = os.path.splitext(file)
            # only shared libs
            if ext != codasip.extension_shared_lib:
                continue
            # lib prefix can be present only for Mingw/Linux builds
            if bool(lib_prefix) != name.startswith('lib'):
                continue
            if not name.endswith('plugin'):
                continue
            sources.append(file)

    # create mapping of source paths -> target ones
    for f in sources:
        files[os.path.join(root, f)] = os.path.join(model.hdk_dir, 'bin', f)
        
    # include files
    f = os.path.join('include', 'jtag_plugin.h')
    files[os.path.join(codasip.tools_dir, f)] = os.path.join(model.hdk_dir, f)
    
    # source files - plugin sources 
    root = os.path.join(codasip.tools_dir, 'src', 'jtagadapter')
    for f in os.listdir(root):
        files[os.path.join(root, f)] = os.path.join(model.hdk_dir, 'src', f)
        
    def copy_hdk_tools(files):
        for source, target in files.iteritems():
            target_dir = os.path.dirname(target)
            if not os.path.isdir(target_dir):
                os.makedirs(target_dir)
            shutil.copyfile(source, target)
            
    return {
        # starts with underscore -> hidden/private tasks
        'basename': '_hdk_tools',
        'actions': [(copy_hdk_tools, [files])],
        'targets': files.values(),
        'file_dep': files.keys(),
        'uptodate': [True],        
        'title': 'HDK Tools'
    }

@codasip.filter(asip=True)
@sdk_generator
def task_generate_asm(model):
    # do not generate CA assembler when there is IA assembler present
    if not model.ia and model.get_sibling_model(True):
        return
    
    # custom parser (Bison .yy file) and scanner (Flex .l file)
    assembler_files = codasip.traverse(os.path.join(model.dir, 'assembler'), ['l', 'yy'])

    # create command 
    cmd = codasip.command_builder()
    # add input model
    cmd += model.model
    # custom parser and scanner
    for f in assembler_files:
        # filename without extension
        fname = os.path.splitext(os.path.basename(f))[0]
        if fname in ['base_scanner', 'base_parser', 'user_scanner', 'user_parser']:
            fname = fname.replace('_', '-')
            cmd += ['--' + fname, f]    

    # optimization level
    cmd += ['-O', model.config['optimization']]
    # number of used cpus
    if model.config['parallel-build']:
        cmd += ['-P', model.config['parallel-build']]
    # prefix
    cmd += ['--prefix', model.prefix]
    # verbosity_flag
    cmd += model.verbosity_flag
    # defines from options
    cmd += model.options_flag
    # user version
    cmd += version_text_flag(model)   
    # SVG debug files
    if model.config['svg']:
        cmd += '--svg'
        
    # custom linker scripts
    # first project dir (lower priority)    
    linker_dir = os.path.join(model.project.dir, 'linker') 
    for script in codasip.traverse(linker_dir, ['lds', 'LDS']):
        cmd += ['--linker-script', script]
    
    # then model/linker scripts, if same name as in project dir, it will be overwritten    
    linker_dir = os.path.join(model.dir, 'linker')
    for script in codasip.traverse(linker_dir, ['lds', 'LDS']):
        cmd += ['--linker-script', script]        
    
    # configuration from SDK section
    args = model.config.find('sdk', model.design_path)
    # default linker argumnents, only when not empty
    if args and args.get('default-linker-args'):
        cmd += ['--default-linker-args', args['default-linker-args']]

    # add dependency on SDK tools for IA assembler
    targets = [model.get_sdk_tool('assembler')]
    targets += [model.get_sdk_tool('ld'),
                os.path.join(model.sdk_dir, 'lib', 'ldscripts', 'default.lds'),
                os.path.join(model.work_dir.get_sdk_share(model.design_path), 'asm_grammar.xml')]

    return {
        'basename': 'asm',
        'actions': [(codasip.generate_asm, [cmd],)],
        'targets': targets,
        'file_dep': [model.model] + assembler_files,
        'uptodate': [config_changed(cmd)],
        'title': 'Assembler'
    }

@codasip.filter(asip=True)
@sdk_generator
def task_generate_dsm(model):
    # do not generate CA disssembler when there is IA disssembler present
    if not model.ia and model.get_sibling_model(True):
        return

    # create command 
    cmd = codasip.command_builder()
    # add input model
    cmd += model.model
    # optimization level
    cmd += ['-O', model.config['optimization']]
    # number of used cpus
    if model.config['parallel-build']:
        cmd += ['-P', model.config['parallel-build']]
    # prefix
    cmd += ['--prefix', model.prefix]
    # verbosity_flag
    cmd += model.verbosity_flag
    # user version
    cmd += version_text_flag(model)   
    # SVG debug files
    if model.config['svg']:
        cmd += '--svg'
        
    return {
        'basename': 'dsm',
        'actions': [(codasip.generate_dsm, [cmd],)],
        'targets': [model.get_sdk_tool('disassembler')],
        'file_dep': [model.model],
        'uptodate': [config_changed(cmd)],
        'title': 'Disassembler'
    }
    
@sdk_generator
def task_generate_prof(model):
    # do not generate task for intermediate level projects
    if model.top != model and not model.asip:
        return

    # basic dict common to everything
    task = {
        'actions': None,
        'basename' : 'prof',
        'title' : 'Profiler',
        'uptodate': [True]
    }
    
    # check whether we should handle nested ASIPs
    if model.top != model and not model.config['simulator.build-asip-tools']:
        return task
    
    # create command 
    cmd = codasip.command_builder()
    # add input model
    cmd += model.model
    # optimization level
    cmd += ['-O', model.config['optimization']]
    # number of used cpus
    if model.config['parallel-build']:
        cmd += ['-P', model.config['parallel-build']]
    # prefix
    cmd += ['--prefix', model.prefix]
    # verbosity_flag
    cmd += model.verbosity_flag
    # user version
    cmd += version_text_flag(model)   

    task.update({
        'actions': [(codasip.generate_prof, [cmd],)],
        'targets': [model.get_sdk_tool('profiler')],
        'file_dep': [model.model],
        'uptodate': [config_changed(cmd)],
    })
    return task
    
@sdk_generator
def task_generate_sim(model):
    # do not generate task for intermediate level projects
    if model.top != model and not model.asip:
        return
    
    # basic dict common to everything 
    task = {
        'actions': None,
        'basename': 'sim',
        'title': 'Simulator',
        'uptodate': [True]
    }
    
    # check whether we should handle nested ASIPs
    if model.top != model and not model.config['simulator.build-asip-tools']:
        return task   
    
    # create command with simulator flags
    cmd, file_dep, task_dep = sim_flags(model)

    # automatic memory size
    cmd += auto_memory_flags(model)
    # user version
    cmd += version_text_flag(model)
       
    task.update({
        'actions': [(codasip.generate_sim, [cmd],)],
        'targets': [model.get_sdk_tool('isimulator')],
        'file_dep': file_dep,
        'task_dep': task_dep,
        'uptodate': [config_changed(cmd)],
    })
    return task
    
@codasip.filter(sdk=True, parametrize=codasip.SemanticsType)
def task_extract_semantics(model, type):
    type_flags = {
        codasip.SEM_COMPILER: {},
        codasip.SEM_RANDOMGEN: {'arg': '-r', 'title': 'Random assembly'},
        codasip.SEM_SIMULATION: {'arg': '-s', 'title': 'QEMU'},
        codasip.SEM_DOCUMENTATION: {'arg': '-d', 'title': 'Documentation'},
        codasip.SEM_BUILTIN_GENERATOR: {'arg': '-b', 'title': 'Builtin generator'}
    }
    
    # create command 
    cmd = codasip.command_builder()
    # file dependencies
    file_dep = [model.model]
    
    # try to find user semantics
    user_semantics_dir = os.path.join(model.dir, 'compiler')
    user_semantics = codasip.traverse(user_semantics_dir, 'sem')
    # only single file, get first or none
    user_semantics = user_semantics[0] if user_semantics else None
    
    # flag based on extraction type
    target_info = type_flags[type]
    cmd += target_info.get('arg')
    
    # add input model
    cmd += model.model
    # user semantics
    if user_semantics:
        cmd += ['-a', user_semantics]
        file_dep.append(user_semantics)
    # verbosity_flag
    cmd += model.verbosity_flag
    # defines from options
    cmd += model.options_flag

    # additional arguments
    args = model.config.find('compiler', model.design_path)
    if args and 'semextr-args' in args:
        cmd.append_command(args['semextr-args'])
    
    output = model.work_dir.get_semantics_file(model.design_path, type)
    
    return {
        'basename': '_semextr_' + type,
        'actions': [(codasip.extract_semantics, [cmd],)],
        'targets': [output],
        'file_dep': file_dep,
        'uptodate': [config_changed(cmd)],
        'title': target_info.get('title', type) + ' semantics'
    }

@codasip.filter(sdk=True)
@sdk_generator
def task_generate_ccompiler(model):
    compiler_dir = os.path.join(model.dir, 'compiler')
    
    # load source files
    sources = codasip.traverse(compiler_dir, ['h', 'cpp', 'td', 'TD', 'inc', 'c', 'hpp', 'txt'])
    rulelib = codasip.traverse(compiler_dir, 'rl')
    include_dir = os.path.join(model.project.dir, 'libs', 'include')
    includes = codasip.traverse(include_dir, ['h', 'hpp'])
    
    # remove all txt files that are not CMakeLists.txt
    sources = [s for s in sources if
               codasip.get_extension(s) != 'txt' or os.path.basename(s) == 'CMakeLists.txt']
    
    # create command 
    cmd = codasip.command_builder()
    
    # add input semantics
    semantics = model.work_dir.get_semantics_file(model.design_path, codasip.SEM_COMPILER)
    # semantics has to be first argument
    sources.insert(0, semantics)
    # user sources
    cmd += sources
    # prefix
    cmd += ['--prefix', model.prefix]
        # optimization level
    cmd += ['-O', model.config['optimization']]
    
    # user rulelib
    if rulelib:
        cmd += ['-u', rulelib[0]]
    # verbosity_flag
    cmd += model.verbosity_flag
    # defines from options
    cmd += model.options_flag
    # SVG debug files
    if model.config['svg']:
        cmd += '--svg'

    # per model arguments
    arch = model.get_design_path(full=False)
    args = model.config.find('compiler', model.design_path)
    # custom arguments
    if args and 'backendgen-args' in args:
        cmd.append_command(args['backendgen-args'])
    # architecture name
    if args and 'architecture' in args:
        arch = args['architecture']
    cmd += ['--arch', arch]
    # default clang argumnents, only when not empty
    if args and args.get('default-clang-args'):
        cmd += ['--default-clang-args', args['default-clang-args']]
        
    # user version
    cmd += version_text_flag(model)

    def copy_include(model, src_dir):
        """Copy all header files from 'libs/include' to SDK"""
    
        if not os.path.isdir(src_dir):
            return
    
        dst_dir = os.path.join(model.sdk_dir, 'include')
        
        # get options replacer
        options_replacer = model.project.options_replacer

        # clear and create output directory
        if not os.path.isdir(dst_dir):
            os.makedirs(dst_dir)
        for name in os.listdir(src_dir):
            with open(os.path.join(src_dir, name), 'r') as input:
                with open(os.path.join(dst_dir, name), 'w') as output:
                    for line in unifdef_stream(input, replacer=options_replacer):
                        output.write(line)

    return {
        'basename': 'compiler',
        'actions': [(codasip.generate_ccompiler, [cmd],), (copy_include, [model, include_dir],)],
        'targets': [model.get_sdk_tool('llc'),
                    model.get_sdk_tool('clang')],
        'file_dep': sources + includes,
        'uptodate': [config_changed(cmd)],
        'title': 'C/C++ Compiler'
    }

# create task for given library
def create_library_task(name, info, model, configuration_name='', defines=''):
    # create command 
    cmd = codasip.command_builder()
    # design path, needed to find SDK folder    
    cmd += ['--design-path', model.design_path]
    # output prefix, needed to find assembler, compiler in SDK bin folder
    cmd += ['--prefix', model.prefix]
    
    cmd += ['--library', name]
    
    outputs = []
    if configuration_name:
        cmd += ['--configuration-name', configuration_name]
        
        # outputs has to be tweaked for newlib custom target
        for o in info['outputs']:
            # split path 'sdk/newlib/lib/libc.a' to 'sdk/newlib/lib' and 'libc.a'
            filepath, filename = os.path.split(o)
            # split path 'sdk/newlib/lib' to 'sdk/newlib' and 'lib'
            filepath, libname = os.path.split(filepath)
            outputs.append(os.path.join(filepath, configuration_name, libname, filename))
    else:
        outputs = info['outputs']
    
    cmd += ['--defines', defines]
    cmd += model.options_flag
    
    # library source dir
    file_dep = []
    lib_dir = info['dir']
    
    if lib_dir:
        cmd += ['--source-directory', lib_dir]
        # get all input files
        file_dep = traverse(lib_dir)

    task_name = '_libs_' + name + '_' + configuration_name
    
    task_options = {
        'basename': task_name,
        'actions': [(codasip.build_libraries, [cmd],)],
        'file_dep': file_dep,
        'targets': outputs,
        'task_dep' : [model.get_task_id('compiler'),
                      model.get_task_id('asm')],
        'uptodate': [config_changed(cmd)],
        'title': name + ' library'
    }
    
    return task_name, task_options

@codasip.filter(sdk=True)
@sdk_generator
def task_build_libs(model):
    """Build C/C++ libraries"""
    # get information about supported libraries
    lib_info = codasip.internal_get_libraries_info()

    # parse 
    enabled_libs = set()
    args = model.config.find('sdk', model.design_path)

    # parse enabled libraries from config
    if args:
        for name, enabled in args.iteritems():
            if name in lib_info and enabled == True:
                enabled_libs.add(name)
    
    tasks = []
    libs = sdk_libraries(model, print_warning=True)
    
    # create tasks for every library, default task for newlib if it is on
    for name, info in libs.iteritems():
        task_name, task_options = create_library_task(name, info, model)

        tasks.append(model.get_task_id(task_name))
        
        # create task for every library
        yield task_options
    
    # handle additional newlib configurations
    for name, info in libs.iteritems():
        # newlib option has to be on
        if (name != 'newlib'):
            continue
        
        # there has to be some newlib configurations
        if not 'newlib_configuration' in args.keys():
            break
        
        newlib_configurations = args['newlib_configuration']
        for configuration_name, defines in newlib_configurations.iteritems():
            task_name, task_options = create_library_task(name, info, model, configuration_name, defines)
            tasks.append(model.get_task_id(task_name))
            
            # create task for every newlib configuration
            yield task_options
    
    # add group task only when at at least single library is enabled
    if libs:
        yield {
            'basename': 'libs',
            'actions': None,
            'task_dep' : tasks,
            'title': 'SDK Libraries'
        }

def task_sdk(model):
    """Group task to generate entire SDK"""
    # asip and level tasks
    sdk_tasks = ['sim', 'prof']
    
    if model.ia:
        # add IA toolchain
        if model.asip:
            sdk_tasks += ['asm', 'dsm', 'compiler']
            # at least single SDK library is enabled
            if sdk_libraries(model):
                sdk_tasks += ['libs']
    
    # add asm and dsm for CA model only when IA model is not present
    elif model.asip and not model.get_sibling_model(True):
        sdk_tasks += ['asm', 'dsm']
    
    return {
        'basename': 'sdk',
        'actions': None,  # this is just group of tasks
        'task_dep': [model.get_task_id(t) for t in sdk_tasks],
        'title': 'SDK'
    }

def task_generate_cosim(model):
    # do not generate task for intermediate level projects
    if model.top != model and not model.asip:
        return
    
    # type of cosimulator
    cosim = model.config['simulator.co-simulator']
    if cosim not in codasip.CoSimType:
        raise ConfigError('Invalid Co-simulator type {} for project {}'.format(cosim, model.project.name))
    
    names = {
            codasip.COSIM_DPI: "DPI",
            codasip.COSIM_SYSTEMC: "SystemC",
            codasip.COSIM_CPP: "C/C++"
    }

    # basic dict common to everything 
    task = {
        'actions': None,
        'basename': 'cosim',
        # use name from dictionary or type from configuration
        'title': names.get(cosim, cosim) + ' Co-simulator',
        'uptodate': [True]
    }
    
    # check whether we should handle nested ASIPs
    if model.top != model and not model.config['simulator.build-asip-tools']:
        return task  

    # create command with simulator flags
    cmd, file_dep, task_dep = sim_flags(model, cosim)

    output_dir = model.work_dir.get_cosim_dir(model.design_path, cosim)
    
    task.update({
        'actions': [(codasip.generate_sim, [cmd],)],
        'targets': [output_dir],
        'file_dep': file_dep,
        'task_dep': task_dep,
        'uptodate': [config_changed(cmd)],
    })
    return task

@codasip.filter(sdk=True)
def task_generate_random_asm(model):
    # directories
    output_dir = model.work_dir.get_randomgen_dir(model.design_path)
    asm_dir = os.path.join(output_dir, 'asm')
    
    assembler = model.get_sdk_tool('assembler')
    linker = model.get_sdk_tool('ld')
    # file dependencies
    file_dep = [assembler, linker]
    
    # create command 
    cmd = codasip.command_builder()

    # check if contraints should be generated from model or overriden by user
    override = model.config['random-assembler-programs.override-constraints']
   
    # try user constraints
    user_constraints_dir = os.path.join(model.dir, 'random_asm')
    user_constraints = codasip.traverse(user_constraints_dir, 'cons')
    # only single file, get first or none
    if user_constraints:
        user_constraints = user_constraints[0]
        file_dep += [user_constraints]
    
    if override and not user_constraints:
        warning('User contraints file was not found for random assembler programs. Default one will be used.')
        override = False

    # input semantics
    semantics = model.work_dir.get_semantics_file(model.design_path, codasip.SEM_RANDOMGEN)
    cmd += semantics
    file_dep.append(semantics)

    # generate contraints
    if not override:
        # input XML model
        cmd += ['-m', model.model]
        file_dep.append(model.model)

        # use undefined semantics
        if model.config['random-assembler-programs.use-undefined']:
            cmd += '--use-undefined'
        # bad constraints not used
        if model.config['random-assembler-programs.fix-complex-syntax']:
            cmd += '--fix-complex-syntax'
        # override the default memory size
        memory_size = model.config['memory.size']
        if memory_size:
            cmd += ['--memory-size', memory_size]
        # user contraints to be added to generated ones
        if user_constraints:
            cmd += ['--constraints', user_constraints]
        
        # SMT solver mode settings
        if model.config['random-assembler-programs.use-smt-solver']:
            cmd += ['--use-smt-solver']
            use_timeout = model.config['random-assembler-programs.use-smt-solver-timeout']
            timeout = model.config['random-assembler-programs.smt-solver-timeout']
            if use_timeout and timeout:
                cmd += ['--smt-solver-timeout', timeout]
    # use user specified contraints
    else:
        cmd += ['--skip-constraint-generation']
        cmd += ['--constraints', user_constraints]
        
    # arguments for randomgen
    # number of instructions
    cmd += ['-i', model.config['random-assembler-programs.instructions']]
    # number of files
    cmd += ['-c', model.config['random-assembler-programs.programs']]
    # seed for random generation
    seed = model.config['random-assembler-programs.seed']
    random_seed = model.config['random-assembler-programs.random-seed']
    
    # if both random seed and seed is set, use random seed
    if random_seed:
        seed = None
    # if seed is not set but random seed is disabled, use default value 1
    elif seed is None and random_seed == False:
        seed = 1

    if seed:
        # seed is set, check files for update
        cmd += ['--seed', seed]
    # verbosity_flag
    cmd += model.verbosity_flag
    # defines from options
    cmd += model.options_flag
    
    def generate(args, asm_dir, output_dir, assembler, linker):
        """Main function for generating random assembly"""
        
        # generate assembly files
        codasip.generate_random_asm(args)

        if not os.path.isfile(assembler) or not os.path.isfile(linker):
            raise RuntimeError('Assembler is not built - skipping building of random executables.')
           
           
        bin_dir = os.path.join(output_dir, 'bin')
        exe_dir = os.path.join(output_dir, 'exe')
        output_zip = os.path.join(output_dir, 'random_asm.zip')

        # recreate directories
        for d in [bin_dir, exe_dir]:
            if os.path.isdir(d):
                shutil.rmtree(d)
            os.makedirs(d)
            
        executables = []
        
        # selects number from random assembler program name, random_1.s => 1
        def get_random_asm_num(name):
            return int(os.path.splitext(name)[0].split('_')[1])
        
        info('Building assembly files.')
        for root, dirs, files in os.walk(asm_dir):
            info('Detected {} files.', len(files))
            for asm in sorted(files, key=get_random_asm_num):
                asm = os.path.join(root, asm)

                obj = codasip.change_path(asm, new_ext='o', new_folder=bin_dir)
                exe = codasip.change_path(asm, new_ext='xexe', new_folder=exe_dir)
                
                info('Building {}', os.path.basename(asm))
                
                args = [assembler]
                args += ['-i', asm]
                args += ['-o', obj]
                rc = subprocess.call(args)
                if rc != 0:
                    error('Failed to assemble {}', os.path.basename(asm))
                    continue
                
                if os.name == 'nt':
                    args = [os.path.join(codasip.mingw_dir, 'bash'), linker]
                else:
                    args = [linker]
                args += [obj, '-o', exe]
                args += ['-defsym', '_STACK_SIZE=0x0']
                rc = subprocess.call(args)
                # grep stderr: 'relocation truncated to fit' - then you can either ignore this message or select to generate smaller programs
                if rc != 0:
                    error('error: Failed to link {}', os.path.basename(obj))
                    continue
                
                # save executable path for creating output ZIP
                executables.append(exe)
        
        with zipfile.ZipFile(output_zip, 'w') as zfile:
            for exe in executables:
                zfile.write(exe, os.path.basename(exe))
        info('Created ZIP archive {} containing built executables.', output_zip)
    
    if seed:
        # seed is set, check files for update
        uptodate = [config_changed(cmd),
                    folder_changed(asm_dir, includes='*.s')]
    else:
        # seed is not set, files will always be different
        uptodate = [False]
    
    return {
        'basename': 'random_asm',
        'actions': [(generate, [cmd, asm_dir, output_dir, assembler, linker],)],
        'targets': [],
        'task_dep': [model.get_task_id('asm')],
        'file_dep': file_dep,
        'uptodate': uptodate,
        'title': 'Random Assembler Programs'
    }

@codasip.filter(sdk=True)
def task_generate_doc(model):
    semantics = model.work_dir.get_semantics_file(model.design_path, codasip.SEM_DOCUMENTATION)
    sources = codasip.traverse(os.path.join(model.dir, 'doc'))
    
    # create command 
    cmd = codasip.command_builder()
    
    # add input semantics
    cmd += ['-s', semantics]
    # add input model
    cmd += ['-m', model.model]
    # add format
    cmd += ['-f', model.config['documentation.format']]
    # verbosity_flag
    cmd += model.verbosity_flag
    
    # user sources
    cmd += sources
    
    output_dir = model.work_dir.get_report_dir(model.design_path, codasip.TOOL_DOC)
    
    return {
        'basename': 'doc',
        'actions': [(codasip.generate_doc, [cmd],)],
        'targets': [],
        'file_dep': [semantics],
        'uptodate': [config_changed(cmd),
                     folder_changed(output_dir, includes='*')],
        'title': 'Documentation'
    }

@codasip.filter(sdk=True)
def task_generate_qemu(model):
    semantics = model.work_dir.get_semantics_file(model.design_path, codasip.SEM_SIMULATION)
    sources_dir = os.path.join(model.dir, 'qemu')
    sources = codasip.traverse(sources_dir, ['h', 'c', 'template'])
    
    # create command 
    cmd = codasip.command_builder()
    
    # input semantics
    cmd += ['-s', semantics]
    # model
    cmd += ['-x', model.model]
    # generation flags
    cmd += [model.config['simulator.qemu-gen-args']]
    # compilation flags
    cflags = model.config['simulator.qemu-comp-args']
    if cflags:
        cmd += ['-f', cflags]
     # prefix
    cmd += ['--prefix', model.prefix]
    # verbosity_flag
    cmd += model.verbosity_flag
    # qemu sources
    cmd += sources
    # user version
    cmd += version_text_flag(model)
    
    return {
        'basename': 'qemu',
        'actions': [(codasip.generate_qemu, [cmd],)],
        'targets': [model.get_sdk_tool('qemu')],
        'file_dep': [semantics, model.model],
        'uptodate': [config_changed(cmd)],
        'title': 'QEMU'
    }
    
@hdk_generator
def task_generate_rtl(model):
    # rtl language
    lang = model.config['rtl.language']

    # create command 
    cmd, file_dep, task_dep = rtl_flags(model)

    output_dir = model.work_dir.get_rtl_dir(model.design_path, lang)    
    # user version
    cmd += version_text_flag(model)

    return {
        'basename': 'rtl',
        'actions': [(codasip.generate_rtl, [cmd],)],
        'targets': [],
        'file_dep': file_dep,
        'task_dep': task_dep,
        'uptodate': [config_changed(cmd),
                     folder_changed(output_dir,
                                    includes='*' + hdl_extension(lang))],
        'title': 'RTL'
    }

@hdk_generator
def task_generate_uvm(model):
    # True if automatic FU should be generated, false otherwise
    auto = model.config['uvm.auto']
    # rtl language
    lang = model.config['rtl.language']

    # create command 
    cmd, file_dep, task_dep = uvm_flags(model)
    # generating UVM
    cmd += ['--uvm']
    # automatic UVM
    if auto:
        # find IA sibling model for current CA model
        model_ia = model.get_sibling_model(ia=True)
        if not model_ia:
            warning('Cannot find IA model for generating auto UVM for ', model.design_path)
            return

        file_dep.append(model_ia.model)
        cmd += ['--uvm-gm', model_ia.model]
        # automatic memory size
        cmd += auto_memory_flags(model)
        # todo: add GM flags, same as Cosim
        # debugger required for codasip_disassembler() to work
        if model.config['simulator.debugger']:
            cmd += ['-d']
        # stack overflow checks
        if model.config['simulator.stack-overflow-detection']:
            cmd += ['--stack-overflow-check']

    output_dir = model.work_dir.get_uvm_dir(model.design_path, False, False, auto)
    rtl_dir = model.work_dir.get_rtl_dir(model.design_path, lang)  
    # user version
    cmd += version_text_flag(model)   
    
    return {
        'basename': 'uvm',
        'actions': [(codasip.generate_uvm, [cmd],)],
        'targets': [],
        'file_dep': file_dep,
        'task_dep': task_dep,
        'uptodate': [config_changed(cmd),
                     folder_changed(output_dir),
                     folder_changed(rtl_dir,
                                    includes='*' + hdl_extension(lang))],
        'title': 'UVM Verification (' + ('Auto' if auto else 'User') + ")"
    }

@hdk_generator
def task_hdk(model):
    """Group task to generate entire HDK"""
    # Asip tasks
    hdk_tasks = ['rtl', 'uvm']
    
    return {
        'basename': 'hdk',
        'actions': None,  # This is just group of tasks
        'task_dep': [model.get_task_id(t) for t in hdk_tasks],
        'title': 'HDK'
    }

@codasip.filter(type=CodalProject)
def task_publish_ip(project):
    # only toplevel projects
    if project.top != project:
        return
    
    # Load publication configuration
    sdk_include = project.config['publication.sdk']
    hdk_include = project.config['publication.hdk']
    doc_include = project.config['publication.doc']
    tests_include = project.config['publication.tests']
    publish_path = os.path.join(str(project.work_dir), 'publish')
    
    task_dep = []
    # User-specified models to publish
    model_design_paths = project.config['publication.publish-models']
    # if no models are selected, use all
    if not model_design_paths:
        model_design_paths = [model.design_path for model in project.list_models()]
    
    models = {}
    for m in project.list_models():
        models[m.design_path] = m
    
    # Find all models set by user
    publish_models = []
    for design_path in model_design_paths:
        model = models.get(design_path)
        if not model:
            warning('Model {} for publication was not found, skipping.', design_path)
            continue
        
        # Add subtasks - ASIP and toplevel SDKs
        publish_models.append(model)
        if sdk_include and (model.asip or model.parent is None):
            task_dep.append(model.get_task_id('sdk'))
        
        # Add subtasks - ca toplevel HDKs
        if hdk_include and model.hdk and model.parent is None:
            task_dep.append(model.get_task_id('hdk'))
    
    def publish_doc(publish_path):
        """Copy documentation"""
        for proj in project.repository.projects.itervalues():
            path = os.path.join(proj.dir, 'doc')
            
            if not os.path.isdir(path):
                continue
            
            info('Copying {} documentation', proj.name)
            for root, dirs, files in os.walk(path):
                # relative directory
                rel_dir = os.path.relpath(root, path)
                
                for fname in files:
                    # skip some files and extensions
                    if fname in ['.gitignore'] or codasip.get_extension(fname) in ['.pyo', '.pyc']:
                        continue
                    
                    target = os.path.join(publish_path, 'doc', rel_dir)
                    if not os.path.isdir(target):
                        os.makedirs(target)
                    
                    shutil.copyfile(os.path.join(root, fname),
                                    os.path.join(target, fname))
                    
                # skip some directories
                dirs[:] = [d for d in dirs if d != 'private']
                    
    def publish_ip(publish_path, models):
        info('Cleaning publish output directory')
        # Clean publication directory
        if os.path.isdir(publish_path):
            codasip.rmtree(publish_path, ignore_errors=True, content_only=True)
        else:
            os.makedirs(publish_path)
        
        # Copy tests
        tests_root = os.path.join(project.dir, 'tests')
        if tests_include and os.path.isdir(tests_root):
            info('Copying tests')
            codasip.copy(tests_root, publish_path, copy_root=True)
        
        # detect if multiple SDKs can be merged together
        # possible only if there are at most single ASIP project
        asips = [p for p in project.repository.projects.itervalues() if getattr(p, 'asip', False)]
        merge_sdks = len(asips) <= 1
        
        # Copy SDKs and HDK for specified models
        # key = path publish path, value = list of HDK and SDK model instances
        targets = {}
        
        for model in models:
            # Split project.model and return project path
            project_path = [p.split('.')[0] for p in model.design_path_list]
            # project path in multi-level hierarchy, 1: to skip toplevel project name
            # e.g. for codasip_urisc_top.ia.codasip_urisc.ia -> codasip_urisc
            # is empty for single level project
            project_path = '.'.join(project_path[1:])

            # Copy SDK. Sdk might be missing (e.g. CA ASIP SDK with disabled ASIP tools build)
            if sdk_include and os.path.isdir(model.sdk_dir):
                info('Publishing {} SDK', model.design_path)
                output = os.path.join(publish_path, 'sdk')
                if not merge_sdks and project_path:
                    output = os.path.join(output, project_path)
                    
                if not os.path.isdir(output):
                    os.makedirs(output)

                targets.setdefault(output, []).append(model.sdk)
                codasip.copy(model.sdk_dir, output)
                
            # Copy HDK and create new Hdk handler, hdk is top-level only so no project hierarchy
            if hdk_include and model.hdk and model.parent is None:
                info('Publishing {} HDK', model.design_path)
                output = os.path.join(publish_path, 'hdk')
                if not os.path.isdir(output):
                    os.makedirs(output)
                    
                targets.setdefault(output, []).append(model.hdk)
                codasip.copy(model.hdk_dir, output)
        
        # merge SDK and HDK xml models per directory
        for path, models in targets.iteritems():
            target_sdk = Sdk()
            target_hdk = Hdk()
            
            for m in models:
                if isinstance(m, SdkModel):
                    target_sdk.add_model(m)
                else:
                    target_hdk.add_model(m)
                
            # save merged xml
            if target_sdk.models:
                target_sdk.save(path)
            if target_hdk.models:
                target_hdk.save(path)
                    
    def pack(publish_path, output):
        """ Pack the package. Use another function so hooks can alter the behavior. """
        # just filename
        exclude_filenames = ['report.txt', 'sim_exit_code', 'vsim.wlf', 'modelsim.ini']
        # just directory
        exclude_dirs = ['uvm/questa/work', 'uvm/riviera/work', 'uvm/xexes']
        # any path
        exclude_paths = ['*.ucdb', '/*.zip']

        info("Creating archive {}", os.path.basename(output))
        with zipfile.ZipFile(output, 'w', zipfile.ZIP_DEFLATED) as zf:
            for root, dirs, files in os.walk(publish_path):
                rel_dir = os.path.relpath(root, publish_path)
                    
                # exclude dirs
                filtered = []
                for d in dirs:
                    rel = os.path.join(rel_dir, d).replace('\\', '/')
                    for e in exclude_dirs:
                        if rel.endswith(e):
                            break
                    else:
                        filtered.append(d)
                dirs[:] = filtered
                
                for file in files:
                    source = os.path.join(root, file)
                    # do not add itself
                    if source == output:
                        continue
                    
                    # skip some filenames
                    if file in exclude_filenames:
                        continue
                    
                    # exclude path by regular. For file in root use '/<filename>'
                    if root == publish_path:
                        target = '/' + file
                    else:
                        target = os.path.join(rel_dir, file)
                     
                    if any((fnmatch.fnmatch(target, e) for e in exclude_paths)):
                        continue
                    
                    zf.write(source, os.path.join(rel_dir, file))
    
    # todo: set targets when not archiving
    targets = []
    # first publish sdk and hdk, will clean the output folder
    actions = [(publish_ip,[publish_path, publish_models],)]
    
    # add documentation
    if doc_include:
        actions.append((publish_doc, [publish_path],))
        
    # create an archive
    if project.config['publication.archive']:
        archive = os.path.join(publish_path, project.package_name + '.zip')
        targets.append(archive)
        actions.append((pack, [publish_path, archive],))
                
    return {
        'basename': 'publish_ip',
        'actions': actions,
        'task_dep': task_dep,
        'targets' : targets,
        'uptodate': [config_changed(publish_path),
                     folder_changed(publish_path)],
        'title': 'IP Publication'
    }


@codasip.filter(top=True)
def task_testing(model):
    """SDK Testing. Execute Codasip model testsuite"""
    tmp_dir = os.path.join(str(model.work_dir), 'tests')

    # get IA SDK models
    if model.ia:
        ia_models = model.list_models(asip=True)
    else:
        ia_models = model.get_sibling_model(ia=True).list_models(asip=True)

    # get all SDKs
    sdks = [model.sdk_dir] + [m.sdk_dir for m in ia_models]
    # get HDK path
    hdks = []
    if not model.ia and model.hdk:
        hdks.append(model.hdk_dir)
    # get design paths for simulator
    design_paths = [model.design_path]

    paths = []
    for p in model.project.repository.projects.itervalues():
        path = os.path.join(p.dir, 'tests')
        if os.path.isdir(path):
            paths.append(path)

    def run(paths, sdks, hdks, design_paths):
        from codasip.testsuite import Testsuite

        suite = Testsuite(test_dir=paths,
                          sdk_dir=sdks,
                          hdk_dir=hdks,
                          work_dir=tmp_dir)
        suite.run(['--design-path='+dp for dp in design_paths])

    task_dep = [model.get_task_id('sdk')]
    task_dep += (m.get_task_id('libs') for m in ia_models)
    if not model.ia:
        task_dep.append(model.get_task_id('hdk'))

    return {
        'basename': 'test',
        'actions': [(run, [paths, sdks, hdks, design_paths])],
        'task_dep': task_dep,
        'uptodate': [False],
        'title': 'Testing'
    }

@codasip.filter(ia=False, asip=True)  # CA only
def task_generate_uvm_fu(model):
    # create command 
    cmd, file_dep, task_dep = uvm_flags(model)
    # type of UVM
    cmd += ['--uvm-fu']

    output_dir = model.work_dir.get_uvm_dir(model.design_path, False, True, True)
    # user version
    cmd += version_text_flag(model)
    
    return {
        # private target
        'basename': '_uvm_fu',
        'actions': [(codasip.generate_uvm, [cmd],)],
        'targets': [],
        'file_dep': file_dep,
        'task_dep': task_dep,
        'uptodate': [config_changed(cmd),
                     folder_changed(output_dir)],
        'title': 'UVM Verification of functional units'
    }