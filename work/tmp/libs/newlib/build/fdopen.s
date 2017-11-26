	.text
	.file	"fdopen.bc"
	.globl	$_fdopen_r
	.type	$_fdopen_r,@function
$_fdopen_r:                             //  @_fdopen_r
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -32
$cfi2:
	.cfi_adjust_cfa_offset 32
	sw x1, 28 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	sw x11, 12 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x10
	addi x1, x2, 16
	add x11, x0, x12
	add x12, x0, x1
	call $__sflags
	add x1, x0, x0
	beqz x10, LBB0_3
LBB0_1:                                 //  %if.end
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	add x8, x0, x1
	call $__sfp
	add x1, x0, x8
	beqz x10, LBB0_3
LBB0_2:                                 //  %if.end4
	ori x28, x0, $__sread & 0xfff
	slli x28, x28, 20
	lui x1, $__sread >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $__swrite & 0xfff
	slli x28, x28, 20
	lui x3, $__swrite >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	ori x28, x0, $__sseek & 0xfff
	slli x28, x28, 20
	lui x4, $__sseek >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	ori x28, x0, $__sclose & 0xfff
	slli x28, x28, 20
	lui x5, $__sclose >> 12 & 0xfffff
	srli x28, x28, 20
	or x5, x5, x28
	lw x7, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sh x7, 12 ( x10 )
	lw x7, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sh x7, 14 ( x10 )
	sw x10, 28 ( x10 )
	sw x1, 32 ( x10 )
	sw x3, 36 ( x10 )
	sw x4, 40 ( x10 )
	sw x5, 44 ( x10 )
	add x1, x0, x10
LBB0_3:                                 //  %cleanup
	add x10, x0, x1
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	lw x1, 28 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 32
$cfi5:
	.cfi_adjust_cfa_offset -32
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$_fdopen_r, ($func_end0)-($_fdopen_r)
	.cfi_endproc

	.globl	$fdopen
	.type	$fdopen,@function
$fdopen:                                //  @fdopen
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	addi x2, x2, -32
$cfi9:
	.cfi_adjust_cfa_offset 32
	sw x1, 28 ( x2 )
$cfi10:
	.cfi_offset 1, -4
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x1, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x8, 0 ( x1 )
	addi x12, x2, 16
	add x10, x0, x8
	call $__sflags
	add x1, x0, x0
	beqz x10, LBB1_3
LBB1_1:                                 //  %if.end.i
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	add x8, x0, x1
	call $__sfp
	add x1, x0, x8
	beqz x10, LBB1_3
LBB1_2:                                 //  %if.end4.i
	ori x28, x0, $__sread & 0xfff
	slli x28, x28, 20
	lui x1, $__sread >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $__swrite & 0xfff
	slli x28, x28, 20
	lui x3, $__swrite >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	ori x28, x0, $__sseek & 0xfff
	slli x28, x28, 20
	lui x4, $__sseek >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	ori x28, x0, $__sclose & 0xfff
	slli x28, x28, 20
	lui x5, $__sclose >> 12 & 0xfffff
	srli x28, x28, 20
	or x5, x5, x28
	lw x7, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sh x7, 12 ( x10 )
	lw x7, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sh x7, 14 ( x10 )
	sw x10, 28 ( x10 )
	sw x1, 32 ( x10 )
	sw x3, 36 ( x10 )
	sw x4, 40 ( x10 )
	sw x5, 44 ( x10 )
	add x1, x0, x10
LBB1_3:                                 //  %_fdopen_r.exit
	add x10, x0, x1
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	lw x1, 28 ( x2 )
$cfi11:
	.cfi_same_value 1
	addi x2, x2, 32
$cfi12:
	.cfi_adjust_cfa_offset -32
$cfi13:
	.cfi_def_cfa 2, 0
	ret
$func_end1:
	.size	$fdopen, ($func_end1)-($fdopen)
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
