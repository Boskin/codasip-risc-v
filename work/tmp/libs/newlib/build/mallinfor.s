	.text
	.file	"mallinfor.bc"
	.globl	$_mallinfo_r
	.type	$_mallinfo_r,@function
$_mallinfo_r:                           //  @_mallinfo_r
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retstruct_reg 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -24
$cfi2:
	.cfi_adjust_cfa_offset 24
	sw x1, 20 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, $__malloc_sbrk_start & 0xfff
	slli x28, x28, 20
	lui x1, $__malloc_sbrk_start >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x3, 0 ( x1 )
	add x8, x0, x0
	add x1, x0, x8
	beqz x3, LBB0_5
LBB0_1:                                 //  %if.else
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
	add x10, x0, x11
	add x11, x0, x1
	call $_sbrk_r
	xori x1, x10, -1
	bgtu x1, x0, LBB0_3
LBB0_2:
	not x1, x0
	jalr x0, LBB0_4 ( x0 )
LBB0_3:                                 //  %if.else3
	ori x28, x0, $__malloc_sbrk_start & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $__malloc_sbrk_start >> 12 & 0xfffff
	or x1, x1, x28
	lw x1, 0 ( x1 )
	nop
	sub x1, x10, x1
LBB0_4:                                 //  %if.end4
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
LBB0_5:                                 //  %if.end4
	ori x28, x0, $__malloc_free_list & 0xfff
	slli x28, x28, 20
	lui x3, $__malloc_free_list >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	lw x3, 0 ( x3 )
	nop
	beqz x3, LBB0_8
LBB0_6:                                 //  %for.body.preheader
	add x8, x0, x0
LBB0_7:                                 //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x4, 0 ( x3 )
	lw x3, 4 ( x3 )
	add x8, x8, x4
	bgtu x3, x0, LBB0_7
LBB0_8:                                 //  %for.end
	ori x28, x0, $__malloc_current_mallinfo & 0xfff
	slli x28, x28, 20
	lui x3, $__malloc_current_mallinfo >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	ori x28, x0, $__malloc_current_mallinfo+32 & 0xfff
	slli x28, x28, 20
	lui x4, $__malloc_current_mallinfo+32 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	ori x28, x0, $__malloc_current_mallinfo+28 & 0xfff
	slli x28, x28, 20
	lui x5, $__malloc_current_mallinfo+28 >> 12 & 0xfffff
	srli x28, x28, 20
	or x5, x5, x28
	ori x28, x0, $__malloc_current_mallinfo+36 & 0xfff
	slli x28, x28, 20
	lui x7, $__malloc_current_mallinfo+36 >> 12 & 0xfffff
	srli x28, x28, 20
	or x7, x7, x28
	ori x28, x0, $__malloc_current_mallinfo+24 & 0xfff
	slli x28, x28, 20
	lui x9, $__malloc_current_mallinfo+24 >> 12 & 0xfffff
	srli x28, x28, 20
	or x9, x9, x28
	ori x28, x0, $__malloc_current_mallinfo+20 & 0xfff
	slli x28, x28, 20
	lui x11, $__malloc_current_mallinfo+20 >> 12 & 0xfffff
	srli x28, x28, 20
	or x16, x11, x28
	ori x28, x0, $__malloc_current_mallinfo+16 & 0xfff
	slli x28, x28, 20
	lui x11, $__malloc_current_mallinfo+16 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x11, x28
	ori x28, x0, $__malloc_current_mallinfo+12 & 0xfff
	slli x28, x28, 20
	lui x12, $__malloc_current_mallinfo+12 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x12, x28
	ori x28, x0, $__malloc_current_mallinfo+8 & 0xfff
	slli x28, x28, 20
	lui x13, $__malloc_current_mallinfo+8 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x13, x28
	ori x28, x0, $__malloc_current_mallinfo+4 & 0xfff
	slli x28, x28, 20
	sub x14, x1, x8
	lui x15, $__malloc_current_mallinfo+4 >> 12 & 0xfffff
	srli x28, x28, 20
	sw x1, 0 ( x3 )
	or x1, x15, x28
	sw x14, 0 ( x5 )
	lw x5, 0 ( x9 )
	lw x9, 0 ( x16 )
	lw x15, 0 ( x11 )
	lw x11, 0 ( x12 )
	lw x12, 0 ( x13 )
	lw x1, 0 ( x1 )
	lw x3, 0 ( x3 )
	sw x8, 0 ( x4 )
	lw x7, 0 ( x7 )
	lw x4, 0 ( x4 )
	sw x14, 28 ( x10 )
	sw x7, 36 ( x10 )
	sw x4, 32 ( x10 )
	sw x5, 24 ( x10 )
	sw x9, 20 ( x10 )
	sw x15, 16 ( x10 )
	sw x11, 12 ( x10 )
	sw x12, 8 ( x10 )
	sw x1, 4 ( x10 )
	sw x3, 0 ( x10 )
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	lw x1, 20 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 24
$cfi5:
	.cfi_adjust_cfa_offset -24
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$_mallinfo_r, ($func_end0)-($_mallinfo_r)
	.cfi_endproc

	.address_space	0	
	.type	$__malloc_current_mallinfo,@object //  @__malloc_current_mallinfo
	.bss
	.globl	$__malloc_current_mallinfo
	.p2align	2
$__malloc_current_mallinfo:
	.zero	40
	.size	$__malloc_current_mallinfo, 40

	.address_space	0	
	.address_space	0	

  .address_space 0
  .section .codasip_regmap, "g"
  .short 32
  .short 0
  .asciz "rf_xpr"
  .short 0
  .short 1
  .asciz "rf_xpr"
  .short 1
  .short 2
  .asciz "rf_xpr"
  .short 2
  .short 3
  .asciz "rf_xpr"
  .short 3
  .short 4
  .asciz "rf_xpr"
  .short 4
  .short 5
  .asciz "rf_xpr"
  .short 5
  .short 6
  .asciz "rf_xpr"
  .short 6
  .short 7
  .asciz "rf_xpr"
  .short 7
  .short 8
  .asciz "rf_xpr"
  .short 8
  .short 9
  .asciz "rf_xpr"
  .short 9
  .short 10
  .asciz "rf_xpr"
  .short 10
  .short 11
  .asciz "rf_xpr"
  .short 11
  .short 12
  .asciz "rf_xpr"
  .short 12
  .short 13
  .asciz "rf_xpr"
  .short 13
  .short 14
  .asciz "rf_xpr"
  .short 14
  .short 15
  .asciz "rf_xpr"
  .short 15
  .short 16
  .asciz "rf_xpr"
  .short 16
  .short 17
  .asciz "rf_xpr"
  .short 17
  .short 18
  .asciz "rf_xpr"
  .short 18
  .short 19
  .asciz "rf_xpr"
  .short 19
  .short 20
  .asciz "rf_xpr"
  .short 20
  .short 21
  .asciz "rf_xpr"
  .short 21
  .short 22
  .asciz "rf_xpr"
  .short 22
  .short 23
  .asciz "rf_xpr"
  .short 23
  .short 24
  .asciz "rf_xpr"
  .short 24
  .short 25
  .asciz "rf_xpr"
  .short 25
  .short 26
  .asciz "rf_xpr"
  .short 26
  .short 27
  .asciz "rf_xpr"
  .short 27
  .short 28
  .asciz "rf_xpr"
  .short 28
  .short 29
  .asciz "rf_xpr"
  .short 29
  .short 30
  .asciz "rf_xpr"
  .short 30
  .short 31
  .asciz "rf_xpr"
  .short 31
  .short 2
  .ident "      6.8.2-1.win.7.EVALUATION\n      Licensee: C51_657_727\n      Project: RISC_V5.ia\n      Date: 2017-11-25 23:37:30\n      Copyright (C) 2017 Codasip Ltd."
