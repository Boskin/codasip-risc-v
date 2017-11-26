	.text
	.file	"mallocr.bc"
	.globl	$_malloc_r
	.type	$_malloc_r,@function
$_malloc_r:                             //  @_malloc_r
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
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
	addi x1, x11, 11
	andi x7, x1, -4
	addi x1, x0, 12
	bgtu x7, x1, LBB0_2
LBB0_1:                                 //  %entry
	add x7, x0, x1
LBB0_2:                                 //  %entry
	bgt x0, x7, LBB0_4
LBB0_3:                                 //  %entry
	bgeu x7, x11, LBB0_5
LBB0_4:                                 //  %if.then
	addi x1, x0, 12
	sw x1, 0 ( x10 )
	add x10, x0, x0
	jalr x0, LBB0_23 ( x0 )
LBB0_5:                                 //  %if.end
	lui x1, $__malloc_free_list >> 12 & 0xfffff
	ori x28, x0, $__malloc_free_list & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x1, x28
	lw x4, 0 ( x3 )
	nop
	beqz x4, LBB0_14
LBB0_6:                                 //  %while.body.preheader
	add x3, x0, x4
LBB0_7:                                 //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	add x8, x0, x4
	lw x4, 0 ( x8 )
	nop
	sub x4, x4, x7
	bgt x0, x4, LBB0_12
LBB0_8:                                 //  %if.then7
	addi x5, x0, 11
	bgtu x4, x5, LBB0_13
LBB0_9:                                 //  %while.end.thread
	ori x28, x0, $__malloc_free_list & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	beq x3, x8, LBB0_11
LBB0_10:                                //  %while.end.thread
	addi x1, x3, 4
LBB0_11:                                //  %while.end.thread
	lw x3, 4 ( x8 )
	nop
	sw x3, 0 ( x1 )
	jalr x0, LBB0_21 ( x0 )
LBB0_12:                                //  %cleanup
                                        //    in Loop: Header=BB0_7 Depth=1
	lw x4, 4 ( x8 )
	add x3, x0, x8
	bgtu x4, x0, LBB0_7
	jalr x0, LBB0_14 ( x0 )
LBB0_13:                                //  %while.end
	sw x4, 0 ( x8 )
	add x8, x4, x8
	sw x7, 0 ( x8 )
	bgtu x8, x0, LBB0_21
LBB0_14:                                //  %if.then22
	lui x1, $__malloc_sbrk_start >> 12 & 0xfffff
	ori x28, x0, $__malloc_sbrk_start & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	lw x1, 0 ( x1 )
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	bgtu x1, x0, LBB0_16
LBB0_15:                                //  %if.then.i
	add x11, x0, x0
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	add x8, x0, x7
	call $_sbrk_r
	add x7, x0, x8
	ori x28, x0, $__malloc_sbrk_start & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $__malloc_sbrk_start >> 12 & 0xfffff
	or x1, x1, x28
	sw x10, 0 ( x1 )
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
LBB0_16:                                //  %if.end.i
	sw x7, 4 ( x2 )                 //  4-byte Folded Spill
	add x11, x0, x7
	call $_sbrk_r
	xori x1, x10, -1
	beqz x1, LBB0_19
LBB0_17:                                //  %if.end4.i
	addi x1, x10, 3
	andi x8, x1, -4
	beq x8, x10, LBB0_20
LBB0_18:                                //  %if.then6.i
	sub x11, x8, x10
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $_sbrk_r
	xori x1, x10, -1
	bgtu x1, x0, LBB0_20
LBB0_19:                                //  %if.then24
	addi x1, x0, 12
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x1, 0 ( x3 )
	add x10, x0, x0
	jalr x0, LBB0_23 ( x0 )
LBB0_20:                                //  %if.end26
	lw x1, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x1, 0 ( x8 )
LBB0_21:                                //  %if.end28
	addi x1, x8, 4
	addi x3, x8, 11
	andi x10, x3, -8
	sub x1, x10, x1
	beqz x1, LBB0_23
LBB0_22:                                //  %if.then34
	add x3, x1, x8
	sub x1, x0, x1
	sw x1, 0 ( x3 )
LBB0_23:                                //  %cleanup38
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
	.size	$_malloc_r, ($func_end0)-($_malloc_r)
	.cfi_endproc

	.address_space	0	
	.type	$__malloc_free_list,@object //  @__malloc_free_list
	.bss
	.globl	$__malloc_free_list
	.p2align	2
$__malloc_free_list:
	.long	0
	.size	$__malloc_free_list, 4

	.address_space	0	
	.type	$__malloc_sbrk_start,@object //  @__malloc_sbrk_start
	.globl	$__malloc_sbrk_start
	.p2align	2
$__malloc_sbrk_start:
	.long	0
	.size	$__malloc_sbrk_start, 4


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
