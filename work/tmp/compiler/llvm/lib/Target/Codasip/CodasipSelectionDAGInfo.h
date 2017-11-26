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


#ifndef CODASIPSELECTIONDAGINFO_H_
#define CODASIPSELECTIONDAGINFO_H_

#include "CodasipGenSelectionDAGInfo.h"

namespace llvm {

class CodasipSelectionDAGInfo: public CodasipGenSelectionDAGInfo
{
public:
  explicit CodasipSelectionDAGInfo(const CodasipTargetMachine &TM): CodasipGenSelectionDAGInfo(TM) {}
};

}

#endif /* CODASIPSELECTIONDAGINFO_H_ */
