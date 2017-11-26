	.text
	.file	"wcstod.bc"
	.globl	$_wcstod_r
	.type	$_wcstod_r,@function
$_wcstod_r:                             //  @_wcstod_r
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10, 11
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -56
$cfi2:
	.cfi_adjust_cfa_offset 56
	sw x1, 52 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 44 ( x2 )                //  4-byte Folded Spill
	sw x12, 20 ( x2 )               //  4-byte Folded Spill
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	addi x8, x11, -2
LBB0_1:                                 //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	lh x10, 2 ( x8 )
	addi x8, x8, 2
	call $iswspace
	bgtu x10, x0, LBB0_1
LBB0_2:                                 //  %while.end
	sw x0, 40 ( x2 )
	sw x0, 36 ( x2 )
	sw x8, 28 ( x2 )
	add x11, x0, x0
	addi x12, x2, 28
	addi x14, x2, 36
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x11
	call $_wcsrtombs_r
	xori x1, x10, -1
	bgtu x1, x0, LBB0_6
LBB0_3:                                 //  %if.then
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB0_5
LBB0_4:
	add x11, x0, x0
	add x10, x0, x11
	jalr x0, LBB0_14 ( x0 )
LBB0_5:                                 //  %if.then5
	add x11, x0, x0
	sw x8, 0 ( x1 )
	add x10, x0, x11
	jalr x0, LBB0_14 ( x0 )
LBB0_6:                                 //  %if.end6
	addi x11, x10, 1
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	sw x11, 12 ( x2 )               //  4-byte Folded Spill
	call $_malloc_r
	add x1, x0, x10
	beqz x1, LBB0_4
LBB0_7:                                 //  %if.end11
	sw x0, 40 ( x2 )
	sw x0, 36 ( x2 )
	addi x12, x2, 28
	addi x14, x2, 36
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x1
	lw x13, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $_wcsrtombs_r
	addi x12, x2, 32
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $_strtod_r
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	sw x11, 12 ( x2 )               //  4-byte Folded Spill
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	beqz x1, LBB0_13
LBB0_8:                                 //  %if.then17
	call $_localeconv_r
	lw x10, 0 ( x10 )
	nop
	call $strlen
	add x3, x0, x10
	sltiu x1, x3, 2
	bgtu x1, x0, LBB0_12
LBB0_9:                                 //  %if.then22
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	sw x3, 4 ( x2 )                 //  4-byte Folded Spill
	call $_localeconv_r
	lw x11, 0 ( x10 )
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $strstr
	lw x4, 4 ( x2 )                 //  4-byte Folded Reload
	beqz x10, LBB0_12
LBB0_10:                                //  %land.lhs.true
	lw x1, 32 ( x2 )
	nop
	bgeu x10, x1, LBB0_12
LBB0_11:                                //  %if.then29
	slti x3, x0, 1
	sub x3, x3, x4
	add x1, x3, x1
	sw x1, 32 ( x2 )
LBB0_12:                                //  %if.end31
	lw x1, 32 ( x2 )
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	nop
	slli x3, x11, 1
	slli x1, x1, 1
	sub x1, x1, x3
	add x1, x1, x8
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x3 )
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	nop
LBB0_13:                                //  %if.end33
	call $_free_r
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
LBB0_14:                                //  %cleanup
	lw x8, 44 ( x2 )                //  4-byte Folded Reload
	lw x1, 52 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 56
$cfi5:
	.cfi_adjust_cfa_offset -56
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$_wcstod_r, ($func_end0)-($_wcstod_r)
	.cfi_endproc

	.globl	$_wcstof_r
	.type	$_wcstof_r,@function
$_wcstof_r:                             //  @_wcstof_r
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	addi x2, x2, -24
$cfi9:
	.cfi_adjust_cfa_offset 24
	sw x1, 20 ( x2 )
$cfi10:
	.cfi_offset 1, -4
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	call $_wcstod_r
	add x8, x0, x10
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	call $__fpclassifyd
	bgtu x10, x0, LBB1_2
LBB1_1:                                 //  %if.then
	add x10, x0, x0
	call $nanf
	jalr x0, LBB1_3 ( x0 )
LBB1_2:                                 //  %if.end
	add x10, x0, x8
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $__truncdfsf2
LBB1_3:                                 //  %cleanup
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	lw x1, 20 ( x2 )
$cfi11:
	.cfi_same_value 1
	addi x2, x2, 24
$cfi12:
	.cfi_adjust_cfa_offset -24
$cfi13:
	.cfi_def_cfa 2, 0
	ret
$func_end1:
	.size	$_wcstof_r, ($func_end1)-($_wcstof_r)
	.cfi_endproc

	.globl	$wcstod
	.type	$wcstod,@function
$wcstod:                                //  @wcstod
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi14:
	.cfi_def_cfa 2, 0
$cfi15:
	.cfi_val_offset 2, 0
	add x3, x0, x11
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x4, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	lw x4, 0 ( x4 )
	add x11, x0, x10
	add x12, x0, x3
	add x10, x0, x4
	j $_wcstod_r
$func_end2:
	.size	$wcstod, ($func_end2)-($wcstod)
	.cfi_endproc

	.globl	$wcstof
	.type	$wcstof,@function
$wcstof:                                //  @wcstof
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi16:
	.cfi_def_cfa 2, 0
$cfi17:
	.cfi_val_offset 2, 0
	addi x2, x2, -24
$cfi18:
	.cfi_adjust_cfa_offset 24
	sw x1, 20 ( x2 )
$cfi19:
	.cfi_offset 1, -4
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x11
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x3, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	lw x3, 0 ( x3 )
	add x11, x0, x10
	add x12, x0, x1
	add x10, x0, x3
	call $_wcstod_r
	add x8, x0, x10
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	call $__fpclassifyd
	bgtu x10, x0, LBB3_2
LBB3_1:                                 //  %if.then
	add x10, x0, x0
	call $nanf
	jalr x0, LBB3_3 ( x0 )
LBB3_2:                                 //  %if.end
	add x10, x0, x8
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $__truncdfsf2
LBB3_3:                                 //  %cleanup
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	lw x1, 20 ( x2 )
$cfi20:
	.cfi_same_value 1
	addi x2, x2, 24
$cfi21:
	.cfi_adjust_cfa_offset -24
$cfi22:
	.cfi_def_cfa 2, 0
	ret
$func_end3:
	.size	$wcstof, ($func_end3)-($wcstof)
	.cfi_endproc

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
