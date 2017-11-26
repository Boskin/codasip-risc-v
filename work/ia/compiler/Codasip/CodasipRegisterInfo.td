/**
 * Codasip Ltd
 *
 * CONFIDENTIAL
 *
 * Copyright 2017 Codasip Ltd
 *
 * All Rights Reserved.
 * This file is part of the Codasip Studio product. No part of the Studio product, including this
 * file, may be use, copied, modified, or distributed except in accordance with the terms contained
 * in Codasip license agreement under which you obtained this file.
 *
 * \file
 * \date    2017-11-25
 * \author  Codasip (c) C compiler backend generator
 * \version 6.8.2-1.win.7.EVALUATION
 * \brief   Source for compiler backend
 * \project RISC_V5.ia
 * \note          6.8.2-1.win.7.EVALUATION\n      Licensee: C51_657_727\n      Project: RISC_V5.ia\n      Date: 2017-11-25 23:37:30\n      Copyright (C) 2017 Codasip Ltd.
 */


// definition of registers, groups of registers and their properties

/******** Register dedication **************************************/
// Stack pointer: rf_xpr_2
// Base pointer: rf_xpr_8

/*******************************************************************/

// convenient classes
class CodasipReg<string defSyntax, list<string> altNames, list<RegAltNameIndex> altNameInds>: Register<defSyntax,altNames>
{
  let Namespace = " Codasip";
  let RegAltNameIndices = altNameInds;
}

class CodasipRegAltNameIndex: RegAltNameIndex
{
  let Namespace = " Codasip";
}

// definition of all HW registers
def xpr_AltNameIndex: CodasipRegAltNameIndex;
def rf_xpr_0: CodasipReg<"-",[], []>, DwarfRegNum<[0]>;
def rf_xpr_1: CodasipReg<"x1", ["x1"], [xpr_AltNameIndex]>, DwarfRegNum<[1]>;
def rf_xpr_2: CodasipReg<"x2", ["x2"], [xpr_AltNameIndex]>, DwarfRegNum<[2]>;
def rf_xpr_3: CodasipReg<"x3", ["x3"], [xpr_AltNameIndex]>, DwarfRegNum<[3]>;
def rf_xpr_4: CodasipReg<"x4", ["x4"], [xpr_AltNameIndex]>, DwarfRegNum<[4]>;
def rf_xpr_5: CodasipReg<"x5", ["x5"], [xpr_AltNameIndex]>, DwarfRegNum<[5]>;
def rf_xpr_6: CodasipReg<"x6", ["x6"], [xpr_AltNameIndex]>, DwarfRegNum<[6]>;
def rf_xpr_7: CodasipReg<"x7", ["x7"], [xpr_AltNameIndex]>, DwarfRegNum<[7]>;
def rf_xpr_8: CodasipReg<"x8", ["x8"], [xpr_AltNameIndex]>, DwarfRegNum<[8]>;
def rf_xpr_9: CodasipReg<"x9", ["x9"], [xpr_AltNameIndex]>, DwarfRegNum<[9]>;
def rf_xpr_10: CodasipReg<"x10", ["x10"], [xpr_AltNameIndex]>, DwarfRegNum<[10]>;
def rf_xpr_11: CodasipReg<"x11", ["x11"], [xpr_AltNameIndex]>, DwarfRegNum<[11]>;
def rf_xpr_12: CodasipReg<"x12", ["x12"], [xpr_AltNameIndex]>, DwarfRegNum<[12]>;
def rf_xpr_13: CodasipReg<"x13", ["x13"], [xpr_AltNameIndex]>, DwarfRegNum<[13]>;
def rf_xpr_14: CodasipReg<"x14", ["x14"], [xpr_AltNameIndex]>, DwarfRegNum<[14]>;
def rf_xpr_15: CodasipReg<"x15", ["x15"], [xpr_AltNameIndex]>, DwarfRegNum<[15]>;
def rf_xpr_16: CodasipReg<"x16", ["x16"], [xpr_AltNameIndex]>, DwarfRegNum<[16]>;
def rf_xpr_17: CodasipReg<"x17", ["x17"], [xpr_AltNameIndex]>, DwarfRegNum<[17]>;
def rf_xpr_18: CodasipReg<"x18", ["x18"], [xpr_AltNameIndex]>, DwarfRegNum<[18]>;
def rf_xpr_19: CodasipReg<"x19", ["x19"], [xpr_AltNameIndex]>, DwarfRegNum<[19]>;
def rf_xpr_20: CodasipReg<"x20", ["x20"], [xpr_AltNameIndex]>, DwarfRegNum<[20]>;
def rf_xpr_21: CodasipReg<"x21", ["x21"], [xpr_AltNameIndex]>, DwarfRegNum<[21]>;
def rf_xpr_22: CodasipReg<"x22", ["x22"], [xpr_AltNameIndex]>, DwarfRegNum<[22]>;
def rf_xpr_23: CodasipReg<"x23", ["x23"], [xpr_AltNameIndex]>, DwarfRegNum<[23]>;
def rf_xpr_24: CodasipReg<"x24", ["x24"], [xpr_AltNameIndex]>, DwarfRegNum<[24]>;
def rf_xpr_25: CodasipReg<"x25", ["x25"], [xpr_AltNameIndex]>, DwarfRegNum<[25]>;
def rf_xpr_26: CodasipReg<"x26", ["x26"], [xpr_AltNameIndex]>, DwarfRegNum<[26]>;
def rf_xpr_27: CodasipReg<"x27", ["x27"], [xpr_AltNameIndex]>, DwarfRegNum<[27]>;
def rf_xpr_28: CodasipReg<"x28", ["x28"], [xpr_AltNameIndex]>, DwarfRegNum<[28]>;
def rf_xpr_29: CodasipReg<"x29", ["x29"], [xpr_AltNameIndex]>, DwarfRegNum<[29]>;
def rf_xpr_30: CodasipReg<"x30", ["x30"], [xpr_AltNameIndex]>, DwarfRegNum<[30]>;
def rf_xpr_31: CodasipReg<"x31", ["x31"], [xpr_AltNameIndex]>, DwarfRegNum<[31]>;


// definition of HW banks


// definition of register class rf_xpr
def rf_xpr: RegisterClass<"Codasip", [i32], 32, (add rf_xpr_0, rf_xpr_1, rf_xpr_2, rf_xpr_3, rf_xpr_4, rf_xpr_5, rf_xpr_6, rf_xpr_7, rf_xpr_8, rf_xpr_9, rf_xpr_10, rf_xpr_11, rf_xpr_12, rf_xpr_13, rf_xpr_14, rf_xpr_15, rf_xpr_16, rf_xpr_17, rf_xpr_18, rf_xpr_19, rf_xpr_20, rf_xpr_21, rf_xpr_22, rf_xpr_23, rf_xpr_24, rf_xpr_25, rf_xpr_26, rf_xpr_27, rf_xpr_28, rf_xpr_29, rf_xpr_30, rf_xpr_31)>
{
  let isAllocatable = 0;
  let Size = 32;
}


// dummy classes for FI hack



// definition of logical classes


// definition of register class xpr
def xpr: RegisterClass<"Codasip", [i32], 32, (add rf_xpr_1, rf_xpr_2, rf_xpr_3, rf_xpr_4, rf_xpr_5, rf_xpr_6, rf_xpr_7, rf_xpr_8, rf_xpr_9, rf_xpr_10, rf_xpr_11, rf_xpr_12, rf_xpr_13, rf_xpr_14, rf_xpr_15, rf_xpr_16, rf_xpr_17, rf_xpr_18, rf_xpr_19, rf_xpr_20, rf_xpr_21, rf_xpr_22, rf_xpr_23, rf_xpr_24, rf_xpr_25, rf_xpr_26, rf_xpr_27, rf_xpr_28, rf_xpr_29, rf_xpr_30, rf_xpr_31)>
{
  let AltOrders = [ (add rf_xpr_1, rf_xpr_3, rf_xpr_4, rf_xpr_5, rf_xpr_6, rf_xpr_7, rf_xpr_9, rf_xpr_10, rf_xpr_11, rf_xpr_12, rf_xpr_13, rf_xpr_14, rf_xpr_15, rf_xpr_16, rf_xpr_17, rf_xpr_18, rf_xpr_19, rf_xpr_20, rf_xpr_21, rf_xpr_22, rf_xpr_23, rf_xpr_24, rf_xpr_25, rf_xpr_26, rf_xpr_27, rf_xpr_28, rf_xpr_29, rf_xpr_30, rf_xpr_31, rf_xpr_8),
     (add ) ];
  let AltOrderSelect = [{ if(true) return 1; else  return 0;}];
  let Size = 32;
  let CopyCost = 1;
}

