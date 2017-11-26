	.text
	.file	"vswprintf.bc"
	.globl	$_vswprintf_r
	.type	$_vswprintf_r,@function
$_vswprintf_r:                          //  @_vswprintf_r
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -128
$cfi2:
	.cfi_adjust_cfa_offset 128
	sw x1, 124 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 116 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x12
	add x1, x0, x11
	add x5, x0, x10
	ori x28, x0, 1073741823 & 0xfff
	slli x28, x28, 20
	lui x3, 1073741823 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	bgtu x8, x3, LBB0_6
LBB0_1:                                 //  %if.end
	addi x11, x2, 12
	addi x4, x0, 520
	add x3, x0, x0
	sh x4, 12 ( x11 )
	sw x1, 12 ( x2 )
	sw x1, 16 ( x11 )
	beq x8, x3, LBB0_3
LBB0_2:
	slli x1, x8, 1
	addi x3, x1, -2
LBB0_3:                                 //  %if.end
	sw x3, 8 ( x11 )
	sw x3, 32 ( x2 )
	lui x1, 65535 >> 12 & 0xfffff
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	sh x1, 14 ( x11 )
	sw x5, 8 ( x2 )                 //  4-byte Folded Spill
	add x10, x0, x5
	add x12, x0, x13
	add x13, x0, x14
	call $_svfwprintf_r
	beqz x8, LBB0_5
LBB0_4:                                 //  %if.then4
	lw x1, 12 ( x2 )
	nop
	sh x0, 0 ( x1 )
LBB0_5:                                 //  %if.end6
	lw x5, 8 ( x2 )                 //  4-byte Folded Reload
	bgtu x8, x10, LBB0_7
LBB0_6:                                 //  %cleanup.sink.split
	addi x1, x0, 139
	sw x1, 0 ( x5 )
	not x10, x0
LBB0_7:                                 //  %cleanup
	lw x8, 116 ( x2 )               //  4-byte Folded Reload
	lw x1, 124 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 128
$cfi5:
	.cfi_adjust_cfa_offset -128
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$_vswprintf_r, ($func_end0)-($_vswprintf_r)
	.cfi_endproc

	.globl	$vswprintf
	.type	$vswprintf,@function
$vswprintf:                             //  @vswprintf
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	addi x2, x2, -128
$cfi9:
	.cfi_adjust_cfa_offset 128
	sw x1, 124 ( x2 )
$cfi10:
	.cfi_offset 1, -4
	sw x8, 116 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x11
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x1, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, 1073741823 & 0xfff
	slli x28, x28, 20
	lui x3, 1073741823 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	lw x4, 0 ( x1 )
	bgtu x8, x3, LBB1_6
LBB1_1:                                 //  %if.end.i
	addi x11, x2, 12
	addi x3, x0, 520
	add x1, x0, x0
	sh x3, 12 ( x11 )
	sw x10, 12 ( x2 )
	sw x10, 16 ( x11 )
	beq x8, x1, LBB1_3
LBB1_2:
	slli x1, x8, 1
	addi x1, x1, -2
LBB1_3:                                 //  %if.end.i
	sw x1, 8 ( x11 )
	sw x1, 32 ( x2 )
	lui x1, 65535 >> 12 & 0xfffff
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	sh x1, 14 ( x11 )
	sw x4, 8 ( x2 )                 //  4-byte Folded Spill
	add x10, x0, x4
	call $_svfwprintf_r
	beqz x8, LBB1_5
LBB1_4:                                 //  %if.then4.i
	lw x1, 12 ( x2 )
	nop
	sh x0, 0 ( x1 )
LBB1_5:                                 //  %if.end6.i
	lw x4, 8 ( x2 )                 //  4-byte Folded Reload
	bgtu x8, x10, LBB1_7
LBB1_6:                                 //  %cleanup.sink.split.i
	addi x1, x0, 139
	sw x1, 0 ( x4 )
	not x10, x0
LBB1_7:                                 //  %_vswprintf_r.exit
	lw x8, 116 ( x2 )               //  4-byte Folded Reload
	lw x1, 124 ( x2 )
$cfi11:
	.cfi_same_value 1
	addi x2, x2, 128
$cfi12:
	.cfi_adjust_cfa_offset -128
$cfi13:
	.cfi_def_cfa 2, 0
	ret
$func_end1:
	.size	$vswprintf, ($func_end1)-($vswprintf)
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
