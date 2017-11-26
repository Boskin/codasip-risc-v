	.text
	.file	"fopen.bc"
	.globl	$_fopen_r
	.type	$_fopen_r,@function
$_fopen_r:                              //  @_fopen_r
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
	beqz x10, LBB0_8
LBB0_1:                                 //  %if.end
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	call $__sfp
	add x1, x0, x8
	add x8, x0, x10
	bgtu x8, x0, LBB0_3
LBB0_2:
	add x1, x0, x0
	jalr x0, LBB0_8 ( x0 )
LBB0_3:                                 //  %if.end4
	lw x12, 16 ( x2 )
	addi x13, x0, 438
	sw x1, 4 ( x2 )                 //  4-byte Folded Spill
	add x10, x0, x1
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $_open_r
	bgez x10, LBB0_5
LBB0_4:                                 //  %if.then7
	call $__sfp_lock_acquire
	sh x0, 12 ( x8 )
	call $__sfp_lock_release
	add x1, x0, x0
	jalr x0, LBB0_8 ( x0 )
LBB0_5:                                 //  %if.end8
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
	lw x9, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	andi x7, x9, 256
	sh x10, 14 ( x8 )
	sh x9, 12 ( x8 )
	sw x8, 28 ( x8 )
	sw x1, 32 ( x8 )
	sw x3, 36 ( x8 )
	sw x4, 40 ( x8 )
	sw x5, 44 ( x8 )
	beqz x7, LBB0_7
LBB0_6:                                 //  %if.then21
	add x12, x0, x0
	addi x13, x0, 2
	lw x10, 4 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x8
	call $_fseek_r
LBB0_7:                                 //  %cleanup
	add x1, x0, x8
LBB0_8:                                 //  %cleanup
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
	.size	$_fopen_r, ($func_end0)-($_fopen_r)
	.cfi_endproc

	.globl	$fopen
	.type	$fopen,@function
$fopen:                                 //  @fopen
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
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
	j $_fopen_r
$func_end1:
	.size	$fopen, ($func_end1)-($fopen)
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
