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
 *  \brief   This file contains target-specific information for assembler that is not generated
 *           automatically
 *  \author  Adam Husar
 *  \date    Jan 1, 2009
 */

#ifndef ASMTARGETDEFS_H_
#define ASMTARGETDEFS_H_

#include "asmstdinclude.h"

#include "asmmemoryinfo_gen.h"

// byte
#ifndef DEFAULT_BYTESIZE
#define DEFAULT_BYTESIZE 8
#endif

// half-word, for GNU as, this is always 16
#define DEFAULT_HWORDSIZE 16
// according to GNU as manual should be the same as word, but this is a little strange
#define DEFAULT_SHORTSIZE 16

// word, depends on target architecture, but almost always is 32 bits wide
#define DEFAULT_WORDSIZE 32

// depends on target architecture
#define DEFAULT_INTSIZE DEFAULT_WORDSIZE

#define DEFAULT_LONGSIZE 32


// section definitions
#ifndef DEFAULT_SECTION_BYTESIZE
#define DEFAULT_SECTION_BYTESIZE 8
#endif

// 8 is a safe value, that should be usually overridden
#ifndef DEFAULT_SECTION_WORDSIZE
#define DEFAULT_SECTION_WORDSIZE 8
#endif

#ifndef DEFAULT_TEXT_SECTION_BYTE_ALIGNMENT
#define DEFAULT_TEXT_SECTION_BYTE_ALIGNMENT (DEFAULT_SECTION_WORDSIZE / DEFAULT_SECTION_BYTESIZE)
#endif

#define DEFAULT_BYTES_PER_SECTION_WORD (DEFAULT_SECTION_WORDSIZE / DEFAULT_SECTION_BYTESIZE)

#ifndef DEFAULT_LITTLE_ENDIAN
#define DEFAULT_LITTLE_ENDIAN false
#endif

// if true, then .align directive has semantics of p2align, otherwise of balign
#ifndef DEFAULT_ALIGN_IS_P2ALIGN
#define DEFAULT_ALIGN_IS_P2ALIGN false
#endif

// symbol prefix
#ifndef NONDEFAULT_SYMBOL_PREFIX
#define NONDEFAULT_SYMBOL_PREFIX NULL
#endif


#endif  // ASMTARGETDEFS_H_
