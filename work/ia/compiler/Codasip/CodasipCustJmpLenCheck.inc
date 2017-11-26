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


// you can edit this file
// see CodasipJumpLengthCheck.cpp (GetNextBB and such)

// you can redefine the tolerance for jump length checking here, 
// this may be useful for cases where your short jump is really short and 
// the default tolerance defined in CodasipJumpLengthCheck.cpp is too high  
//#undef INTOLER
//#define INTOLER 0x4

// specifi opcode of longer jump instruction, that old jump instruction should be replaced by
unsigned JumpLengthChecker::HandleShortJumpGenCust(unsigned oldJumpOpcode)
{
  unsigned newJumpOpcode;
  switch (oldJumpOpcode)
  {
	default:
	  newJumpOpcode = oldJumpOpcode;
	  break;
  }
  return newJumpOpcode;
}

// same as handleShortJumpGenCust, but user specifies shorter instructions, that can be replaced for longer ones
unsigned JumpLengthChecker::HandleLongJumpGenCust(unsigned oldJumpOpcode)
{
  unsigned newJumpOpcode;
  switch (oldJumpOpcode)
  {
	default:
	  newJumpOpcode = oldJumpOpcode;
	  break;
  }
  return newJumpOpcode;
}

// if conditional jump compares against constant, user specifies value of constant
bool JumpLengthChecker::HasConsOperand(unsigned jumpOpcode, int64_t &consVal)
{
  switch(jumpOpcode)
  {  
    default:
	  consVal = 0;
	  return false;
  }
  return true;
} 
  
