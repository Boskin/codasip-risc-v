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
 * \author  Codasip (c) Assembler generator
 * \version 6.8.2-1.win.7.EVALUATION
 * \brief   Source for assembler
 */

#ifndef __ASM_MEMORY_INFO_H__
#define __ASM_MEMORY_INFO_H__

#define DEFAULT_BYTESIZE 8
#define DEFAULT_SECTION_BYTESIZE 8
#define DEFAULT_SECTION_WORDSIZE 32
#define DEFAULT_LITTLE_ENDIAN true
#define LE_INSTRUCTION_PARCEL_BYTES 0

const codasip::assembler::AddressSpaceInfo g_AddressSpacesInfo[] = {
  { "as_all", 32, 4, true, true }, 
};
#define ADDRESS_SPACES_COUNT 1
#endif
