/*******************************************************\
* Copyright (C) 2014, Codasip s.r.o., All Rights Reserved *
\*******************************************************/

This is a Codasip-generated LLVM back-end.

== Editing the backend:

Running the backendgen application with -O parameter will generate a number of files
which are meant to be edited by a user (this option is always on if you are using Codasip Studio).
These files are almost always (with the exception of CodasipMicroClasses and CodasipSchedule)
static and their contents are not dependent on the input architecture description.
Typically, majority of these file have generated counterparts (e.g. CodasipInstrInfo.h
and CodasipGenInstrInfo.h) and contain a definition of a C++ class derived from a generated
implementation (e.g. CodasipInstrInfo and CodasipGenInstrInfo2). The TD files are typically
included in other TD files - search the other TD files for 'include "file.td"'.
Obviously, all the files are needed for a backend to be compilable, even if they are left unedited.

A list of editable files follows. Only some of them are expected to be edited though.
Additional info and help can be found in the files themselves.
Their generated counterparts should be also referred to.

- CodasipCustomMicroClasses.td, CodasipSchedule.td:
These two files have to be edited, if you wish the compiler to handle exotic hazards
(since it is not possible to extract this information automatically from a model.)
CodasipMicroClasses contains definitions of various instruction classes, as denoted
in the Codal description. These classes reference itinerarires defined in CodasipSchedule.
It should be noted that unlike the other editable files, contents of CodasipMicroClasses
are dependent on the input instruction set. Should a new MicroClass appear later in development,
it needs to be added in CodasipMicroClasses manually.
Please see CodasipMicroClasses.td itself for further help and prepared examples of CodasipSchedule.td
for examples how a CPU scheduling info should look like.

- CodasipVliwSchedule.td
This file can be ignored unles the architecture is a VLIW

- CodasipCustomPats.td:
Can contain custom selection patterns (if you are opposed to defining them in rulelib.rl).
Non-simple patterns (dummy instructions with custom inserters) can be also used but those shall
require handler in CodasipISelLowering.cpp.

- CodasipCustomCallC.td:
Custom definition of a calling convention. See CodasipCallingConv.td.

- CodasipISelLowering.cpp (+.h):
Can be used to redefine settings of legalities of operations and types.

- CodasipInstrInfo.cpp (+.h):
Can be used for example for implementation of register copying and spilling (templates prepared).
If you are compiling for an OS environment, you might be also interested in AnalyzeBranch.

- CodasipRegisterInfo.cpp (+.h):
- CodasipCustSelDAG.inc, CodasipSelectionDAGInfo.cpp (+.h)
- CodasipCustJmpLenCheck.inc
- CodasipFrameLowering.cpp (+.h)
These can be mostly ignored and rarely need editing.


