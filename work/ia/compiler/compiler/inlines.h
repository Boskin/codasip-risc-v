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


//#include <inttypes.h>
#if   __SIZEOF_POINTER__ == 2
#define int32_t            long
#define uint32_t  unsigned long
#elif __SIZEOF_POINTER__ == 4
#define int32_t            long
#define uint32_t  unsigned long
#elif __SIZEOF_POINTER__ == 8
#define int32_t            int
#define uint32_t  unsigned int
#else
#warning "__SIZEOF_POINTER__ is not defined"
#endif

#define int8_t      signed char 
#define uint8_t   unsigned char
#define int16_t            short
#define uint16_t  unsigned short
#define int64_t            long long
#define uint64_t  unsigned long long

// helper types
typedef union {int32_t i; float f;} __codasip_builtin_bitcast_i32_f32_ty;

// custom ints
#define DEFINE_CUSTOM_INT(width) \
typedef          int  int##width##_t __attribute__((bit_width( width ))); \
typedef unsigned int uint##width##_t __attribute__((bit_width( width )))
 

DEFINE_CUSTOM_INT(1); 
DEFINE_CUSTOM_INT(2); 
DEFINE_CUSTOM_INT(3); 
DEFINE_CUSTOM_INT(4); 
DEFINE_CUSTOM_INT(5); 
DEFINE_CUSTOM_INT(6); 
DEFINE_CUSTOM_INT(7); 
DEFINE_CUSTOM_INT(9); 
DEFINE_CUSTOM_INT(10); 
DEFINE_CUSTOM_INT(11); 
DEFINE_CUSTOM_INT(12); 
DEFINE_CUSTOM_INT(13); 
DEFINE_CUSTOM_INT(14); 
DEFINE_CUSTOM_INT(15); 
DEFINE_CUSTOM_INT(17); 
DEFINE_CUSTOM_INT(18); 
DEFINE_CUSTOM_INT(19); 
DEFINE_CUSTOM_INT(20); 
DEFINE_CUSTOM_INT(21); 
DEFINE_CUSTOM_INT(22); 
DEFINE_CUSTOM_INT(23); 
DEFINE_CUSTOM_INT(24); 
DEFINE_CUSTOM_INT(25); 
DEFINE_CUSTOM_INT(26); 
DEFINE_CUSTOM_INT(27); 
DEFINE_CUSTOM_INT(28); 
DEFINE_CUSTOM_INT(29); 
DEFINE_CUSTOM_INT(30); 
DEFINE_CUSTOM_INT(31); 
DEFINE_CUSTOM_INT(33); 
DEFINE_CUSTOM_INT(34); 
DEFINE_CUSTOM_INT(35); 
DEFINE_CUSTOM_INT(36); 
DEFINE_CUSTOM_INT(37); 
DEFINE_CUSTOM_INT(38); 
DEFINE_CUSTOM_INT(39); 
DEFINE_CUSTOM_INT(40); 
DEFINE_CUSTOM_INT(41); 
DEFINE_CUSTOM_INT(42); 
DEFINE_CUSTOM_INT(43); 
DEFINE_CUSTOM_INT(44); 
DEFINE_CUSTOM_INT(45); 
DEFINE_CUSTOM_INT(46); 
DEFINE_CUSTOM_INT(47); 
DEFINE_CUSTOM_INT(48); 
DEFINE_CUSTOM_INT(49); 
DEFINE_CUSTOM_INT(50); 
DEFINE_CUSTOM_INT(51); 
DEFINE_CUSTOM_INT(52); 
DEFINE_CUSTOM_INT(53); 
DEFINE_CUSTOM_INT(54); 
DEFINE_CUSTOM_INT(55); 
DEFINE_CUSTOM_INT(56); 
DEFINE_CUSTOM_INT(57); 
DEFINE_CUSTOM_INT(58); 
DEFINE_CUSTOM_INT(59); 
DEFINE_CUSTOM_INT(60); 
DEFINE_CUSTOM_INT(61); 
DEFINE_CUSTOM_INT(62); 
DEFINE_CUSTOM_INT(63); 
DEFINE_CUSTOM_INT(128);
DEFINE_CUSTOM_INT(256);
DEFINE_CUSTOM_INT(512);
DEFINE_CUSTOM_INT(1024);

#undef DEFINE_CUSTOM_INT

// Structures and types in which the wrappers return their results.



// builtin template functions -- should NOT be called directly

extern void   __codasip_builtin_void(int,...)    __asm__("llvm.codasip.builtin");
extern float  __codasip_builtin_float(int,...)   __asm__("llvm.codasip.builtin.anyfloat.f32");
extern double __codasip_builtin_double(int,...)  __asm__("llvm.codasip.builtin.anyfloat.f64");
extern float  __codasip_builtin_nomem_float(int,...)   __asm__("llvm.codasip.builtin.nomem.anyfloat.f32");
extern double __codasip_builtin_nomem_double(int,...)  __asm__("llvm.codasip.builtin.nomem.anyfloat.f64");



/// Internal subcodes for intrinsic calls
enum IntrinsicsSubcodes
{
  
  IntrinsicsSubcodes_stopper
};

// Wrappers for intrinsic calls 



#undef int8_t
#undef uint8_t
#undef int16_t
#undef uint16_t
#undef int32_t
#undef uint32_t
#undef int64_t
#undef uint64_t

