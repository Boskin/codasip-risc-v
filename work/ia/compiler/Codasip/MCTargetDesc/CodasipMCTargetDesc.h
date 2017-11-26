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


#ifndef CODASIPMCTARGETDESC_H
#define CODASIPMCTARGETDESC_H

namespace llvm {
class MCAsmBackend;
class MCInstrInfo;
class MCCodeEmitter;
class MCContext;
class MCSubtargetInfo;
class StringRef;
class Target;

extern Target TheCodasipTarget;
} // End llvm namespace

// Defines symbolic names for Codasip registers.
// This defines a mapping from register name to register number.
#define GET_REGINFO_ENUM
#include "CodasipGenRegisterInfo.inc"

// Defines symbolic names for the Codasip instructions.
#define GET_INSTRINFO_ENUM
#include "CodasipGenInstrInfo.inc"

#define GET_SUBTARGETINFO_ENUM
#include "CodasipGenSubtargetInfo.inc"

#endif
