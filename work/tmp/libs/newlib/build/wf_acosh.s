	.text
	.file	"wf_acosh.bc"
	.globl	$acoshf
	.type	$acoshf,@function
$acoshf:                                //  @acoshf
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -64
$cfi2:
	.cfi_adjust_cfa_offset 64
	sw x1, 60 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 52 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x10
	call $__ieee754_acoshf
	add x3, x0, x10
	ori x28, x0, $__fdlib_version & 0xfff
	slli x28, x28, 20
	lui x1, $__fdlib_version >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x1, 0 ( x1 )
	nop
	xori x1, x1, -1
	beqz x1, LBB0_10
LBB0_1:                                 //  %lor.lhs.false
	sw x3, 12 ( x2 )                //  4-byte Folded Spill
	lui x11, 1065353216>>12 &0xfffff
	add x10, x0, x8
	call $__ltsf2
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	call $__fpclassifyf
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	bgt x0, x1, LBB0_3
LBB0_2:
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_10 ( x0 )
LBB0_3:                                 //  %lor.lhs.false
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	beqz x10, LBB0_10
LBB0_4:                                 //  %if.then4
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	slti x3, x0, 1
	addi x4, x2, 16
	or x1, x1, x28
	sw x3, 16 ( x2 )
	sw x1, 4 ( x4 )
	sw x0, 32 ( x4 )
	add x10, x0, x8
	call $__extendsfdf2
	ori x28, x0, $__fdlib_version & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $__fdlib_version >> 12 & 0xfffff
	or x1, x1, x28
	lw x1, 0 ( x1 )
	lui x3, 2146959360>>12 &0xfffff
	addi x4, x2, 16
	sw x10, 16 ( x4 )
	sw x11, 12 ( x4 )
	xori x1, x1, 2
	sw x3, 28 ( x4 )
	sw x11, 36 ( x2 )
	sw x10, 8 ( x4 )
	sw x0, 24 ( x4 )
	beqz x1, LBB0_6
LBB0_5:                                 //  %if.else
	addi x10, x2, 16
	call $matherr
	bgtu x10, x0, LBB0_7
LBB0_6:                                 //  %if.end14.sink.split
	call $__errno
	addi x1, x0, 33
	sw x1, 0 ( x10 )
LBB0_7:                                 //  %if.end14
	lw x8, 48 ( x2 )
	nop
	beqz x8, LBB0_9
LBB0_8:                                 //  %if.then18
	call $__errno
	sw x8, 0 ( x10 )
LBB0_9:                                 //  %if.end21
	addi x1, x2, 16
	lw x10, 24 ( x1 )
	lw x11, 44 ( x2 )
	nop
	call $__truncdfsf2
	add x3, x0, x10
LBB0_10:                                //  %cleanup
	add x10, x0, x3
	lw x8, 52 ( x2 )                //  4-byte Folded Reload
	lw x1, 60 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 64
$cfi5:
	.cfi_adjust_cfa_offset -64
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$acoshf, ($func_end0)-($acoshf)
	.cfi_endproc

	.address_space	0	
	.address_space	0	
	.type	$.str,@object           //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str:
	.asciz	"acoshf"
	.size	$.str, 7


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
