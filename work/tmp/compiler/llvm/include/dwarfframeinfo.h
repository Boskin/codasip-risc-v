/**
 * Codasip Ltd
 *
 * CONFIDENTIAL
 *
 * Copyright 2014 Codasip Ltd
 *
 * All Rights Reserved.
 *
 * NOTICE: All information contained in this file, is and shall remain the property of Codasip Ltd
 * and its suppliers, if any.
 *
 * The intellectual and technical concepts contained herein are confidential and proprietary to
 * Codasip Ltd and are protected by trade secret and copyright law.  In addition, elements of the
 * technical concepts may be patent pending.
 *
 * This file is part of the Codasip Studio product. No part of the Studio product, including this
 * file, may be use, copied, modified, or distributed except in accordance with the terms contained
 * in Codasip license agreement under which you obtained this file.
 *
 *  \file
 *  \brief   Part of assembler
 *  \author  Adam Husar
 *  \date    Jan 1, 2009
 */

#ifndef DWARFFRAMEINFO_H_
#define DWARFFRAMEINFO_H_

#include <vector>

#include "location.h"

#include "asmstdinclude.h"
#include "logical_file_info.h"


namespace codasip {
namespace assembler {


/*

 For each method a pair CIE-FDE is generated, there are no multiple FDEs for one CIE for simplicity
 see DWARF standard pages 126-137 and GNU as manual at http://sourceware.org/binutils/docs-2.20/as/CFI-directives.html#CFI-directives

 Example for Codix:

    .globl  $bit_count
    .type   $bit_count,@function
$bit_count:
    .cfi_startproc      // FI: starting procedure, for each procedure 1 CIE and 1 FDE is generated
$func_begin0:
  // the following rules could be default, but the assembler cannot know these details
  .cfi_return_column 30 // FI: set that return adress can be found in column 30
  .cfi_def_cfa 2, 0     // FI: CFA is in r2 (fp)
  .cfi_register 30, 30  // FI: set that column 30 contains the value of r30, is this necessary?
$BB0_0:                                 //  %entry
  // prologue
  sp = add sp, -8
  nop
  st ra, [ sp +4 ]
  st fp, [ sp 0 ]
  fp = sp
  .cfi_offset 30, -4    // FI: setting return address column - it is now on the stack and calculated as CFA - 4
  .cfi_def_cfa 2, 8 // FI: CFA is calculated as fp - 8 from now on

  ...
  ...
$BB0_2:
  // epilogue
    sp = fp
    r3 = ld [ fp -8 ]
    ra = ld [ sp +4 ]
    fp = ld [ sp 0 ]
    .cfi_def_cfa 2, 0   // FI: the CFA is now contained in r2 (fp)
    .cfi_register 30, 30 // FI: return address position was invalidated by the previous information, it is now in the register
    nop
    sp = add sp, +8
    jump ra
    .size   $bit_count, ($tmp4)-($bit_count)
$func_end0:
    .cfi_endproc    // ending procedure, this specifies the last CIE address
 */

class AsmSection;
class AsmSymbol;
class DwarfUtils;

class DwarfFrameInfo
{
public:
    DwarfFrameInfo()
: errorEncountered(false), frameTargetSection(NULL), retvalTargetSection(NULL), dwut(NULL), pseudoSymbolCounter(0)
{}

    // methods are named according to .cfi directives
    // column arguments are column indices in the .debug_frame table,
    // reg are DWARF register indices

    // CIE information
    void StartProc();
    void EndProc();
    void ReturnColumn(int column);

    // FDE information
    void Offset(int reg, int offset);
    void DefCfa(int reg, int offset);
    void Register(int column, int reg);
    void DefCfaRegister(int reg);
    void DefCfaOffset(int offset);
    void AdjustCfaOffset(int offset);
    void ValOffset(int reg, int offset);
    void SameValue(int reg);

    // create section .debug_frame with contained information
    void GenerateFrameInfoSectionContents();


    // Codasip extension for return values
    void CodasipRetvalRegs(const std::vector<int>& regs);
    void CodasipRetstructReg(int reg);

    // create section .codasip_retval with contained information
    void GenerateRetvalInfoSectionContents();



    void DebugPrint();

private:
    bool CheckFDEPrerequitites();

    enum FDEInstructionType
    {
        fdeInvalid,
        fdeOffset,
        fdeDefCfa,
        fdeRegister,
        fdeDefCfaRegister,
        fdeDefCfaOffset,
        fdeAdjustCfaOffset,
        fdeValOffset,
        fdeSameValue
    };

    // one command/instruction from FDE section
    struct SFDEInstruction
    {
        SFDEInstruction() : type(fdeInvalid), address(0), reg(-1), offset(-1), column(-1) {}

        FDEInstructionType type;

        // address where directive appeared
        exprval_t address;

        // set according to the instruction that it represents
        int reg;
        int offset;
        int column;
    };

    // complete info for CIE (with return value extension)
    struct SCIEInfo : public Location
    {
        SCIEInfo()
          : Location(LogicalFileInfo::GetLocation(true)),
            addressSection(-1),
            startAddressSet(false), startAddress(0),
            endAddressSet(false), endAddress(0),
            returnColumSet(false), returnColumn(0),
            retvalInfoSet(false), retvalInfoIsRegs(false) {}

        // addresses are relative to the start of the
        // section with index addressSection
        int addressSection;

        bool startAddressSet;
        exprval_t startAddress; // specified by .cfi_startproc

        bool endAddressSet;
        exprval_t endAddress; // specified by .cfi_endproc

        bool returnColumSet;
        int returnColumn; // specified by .cfi_return_column, must be set only once


        // Codasip extension for return value specification, is stored to another section
        // not in .dwarf_frame, but in .codasip_retval
        bool retvalInfoSet;

        // Set to true if return value information contains a list of registers contained in retvalRegs,
        // to false if the function returns large data (e.g. structure) and retvalRegs contains just one register
        // that holds address to these returned data
        bool retvalInfoIsRegs;
        std::vector<int> retvalRegs;

        // FDE instructions associated with this CIE
        // CIE has no default initial_instructions
        std::vector<SFDEInstruction> FDEInstructions;
    };

    // CIE informations encountered so far, the
    // last item is the currently processed CIE/FDE for current function
    std::vector<SCIEInfo> CIEInfos;

    // Codasip Extension to the

    // if any error was encountered, do not generate anything
    // however the compilation goes on
    bool errorEncountered;

    // auxiliary methods
    SCIEInfo& LastCIE();
    bool CheckLastCIEFinished();
    bool CheckLastCIEOpened(bool checkReturnColumn);

    AsmSection* CreateDebugSection(const char* sectionName);
    AsmSymbol& CreateTextPseudoSymbol(const char* const prefix, int section, exprval_t address);

    exprval_t GenerateCIE(SCIEInfo& info);
    void GenerateFDE(SCIEInfo& info, exprval_t CIE_pointer, size_t frameSectionIndex);


    void GenerateOneRetvalInfo(const SCIEInfo& retvalInfo);


    // target .debug_frame section when generating data
    AsmSection* frameTargetSection;

    // target .codasip_retval section when generating data
    AsmSection* retvalTargetSection;

    // utility for generating dwarf data
    DwarfUtils* dwut;

    // auxiliary counter for generating new symbol names
    int pseudoSymbolCounter;
};

// defined as a global singleton object, accessible through a function
// because of warnings when linking with mingw
#define g_DwarfFrameInfo GetDwarfFrameInfoObj()
DwarfFrameInfo& GetDwarfFrameInfoObj();

}   // codasip::assembler
}   // codasip

#endif /* DWARFFRAMEINFO_H_ */
