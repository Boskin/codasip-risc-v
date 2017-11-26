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


// definition of calling conventions
// should be backed by abi def, but can be done automatically as well

def CC_Codasip_Gen: CallingConv<[
  CCIfType<[i16,i8,i1], CCPromoteToType<i32>>,
  CCIfNotVarArg<CCIfType<[i32], CCAssignToReg<[rf_xpr_10, rf_xpr_11, rf_xpr_12, rf_xpr_13, rf_xpr_14, rf_xpr_15, rf_xpr_16, rf_xpr_17]>>>,
  CCIfType<[i32], CCAssignToStack<4,4>>
]>;

def RetCC_Codasip_Gen: CallingConv<[
  CCIfType<[i16,i8,i1], CCPromoteToType<i32>>,
  CCIfType<[i32], CCAssignToReg<[rf_xpr_10, rf_xpr_11, rf_xpr_12, rf_xpr_13]>>
]>;

include "CodasipCustomCallC.td"
