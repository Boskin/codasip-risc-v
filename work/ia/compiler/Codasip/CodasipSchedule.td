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


// schedule itineraries, this can be edited
// Note: if VLIW, we don't care about actual unit IDs
// - the only thing that matters is how many slots does something consume

def FU0_S0: FuncUnit;
def FU1_S0: FuncUnit;
def W_rf_xpr_S0: FuncUnit;
def Itin_sc_load: InstrItinClass;

def CodasipItineraries: ProcessorItineraries<[FU0_S0,FU1_S0,W_rf_xpr_S0], [], [
InstrItinData<Itin_sc_load, [InstrStage< 1, [FU0_S0]>, InstrStage<0,[W_rf_xpr_S0],0>, InstrStage< 1, [FU1_S0]>]>
]>;


// an empty file, unless vliw
include "CodasipVliwSchedule.td"

