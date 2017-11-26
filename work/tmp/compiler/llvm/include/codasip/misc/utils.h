/**************************************************************************************************
 *                     Copyright (c) 2014  Codasip, Ltd. All Rights Reserved.                     *
 **************************************************************************************************/
/**
 *  \file
 *  \author jan
 *  \date   30 Oct 2014
 *  \brief  Declaration/Implementation of the class.
 */
#ifndef CODASIP_LLVM_UTILS_H_
#define CODASIP_LLVM_UTILS_H_

#include "llvm/Target/TargetLowering.h"
#include "llvm/CodeGen/MachineFunction.h"

namespace llvm
{

/** Auxiliary function for checking of extends.
 * Prints an error and aborts if a custom type would cause an error.
 * E.g. extend of i33 to i64 on i32 arch is not allowed.
 * \param act  Legalize action.
 * \param inVt  Input type of an extend (for error print).
 * \param oldVt  Original output type (for error print). */
void CheckUnsupportedExtend(TargetLowering::LegalizeTypeAction act, const EVT inVt, const EVT oldVt, MachineFunction &mf);

} // End llvm namespace

#endif  // UTILS_H_
