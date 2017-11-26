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


include "CodasipCustomMicroClasses.td"

// Definition of auto-generated instruction classes

class CodasipMicroClass_sc_load<dag outs, dag ins>
: CodasipInst<outs,ins>
{
 let Itinerary = Itin_sc_load;
 let hasDelaySlot = 0;
 let allowInDelaySlot = 1;
}



class CodasipMicroClass_<dag outs, dag ins>
: CodasipInst<outs,ins>
{
}
