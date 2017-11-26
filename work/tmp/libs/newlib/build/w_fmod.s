	.text
	.file	"w_fmod.bc"
	.globl	$fmod
	.type	$fmod,@function
$fmod:                                  //  @fmod
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10, 11
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -80
$cfi2:
	.cfi_adjust_cfa_offset 80
	sw x1, 76 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 68 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x12
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	sw x11, 20 ( x2 )               //  4-byte Folded Spill
	sw x13, 28 ( x2 )               //  4-byte Folded Spill
	call $__ieee754_fmod
	add x3, x0, x10
	ori x28, x0, $__fdlib_version & 0xfff
	slli x28, x28, 20
	lui x1, $__fdlib_version >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x1, 0 ( x1 )
	nop
	xori x1, x1, -1
	beqz x1, LBB0_15
LBB0_1:                                 //  %lor.lhs.false
	sw x3, 12 ( x2 )                //  4-byte Folded Spill
	sw x11, 16 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	lw x11, 28 ( x2 )               //  4-byte Folded Reload
	nop
	call $__fpclassifyd
	bgtu x10, x0, LBB0_3
LBB0_2:
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_15 ( x0 )
LBB0_3:                                 //  %lor.lhs.false3
	add x1, x0, x0
	sw x8, 4 ( x2 )                 //  4-byte Folded Spill
	add x10, x0, x8
	add x12, x0, x1
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	add x13, x0, x12
	call $__nedf2
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	nop
	call $__fpclassifyd
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB0_2
LBB0_4:                                 //  %lor.lhs.false3
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	beqz x10, LBB0_15
LBB0_5:                                 //  %if.then7
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x1, x28
	ori x28, x0, $__fdlib_version & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $__fdlib_version >> 12 & 0xfffff
	or x1, x1, x28
	lw x1, 0 ( x1 )
	addi x9, x2, 32
	slti x4, x0, 1
	lw x5, 24 ( x2 )                //  4-byte Folded Reload
	nop
	sw x5, 8 ( x9 )
	sw x8, 20 ( x9 )
	sw x4, 32 ( x2 )
	sw x3, 4 ( x9 )
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 44 ( x2 )
	lw x4, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x4, 16 ( x9 )
	sw x0, 32 ( x9 )
	add x4, x0, x0
	beq x1, x4, LBB0_7
LBB0_6:                                 //  %if.then7
	lui x3, 2146959360>>12 &0xfffff
LBB0_7:                                 //  %if.then7
	sw x3, 28 ( x9 )
	add x3, x0, x0
	beq x1, x3, LBB0_9
LBB0_8:                                 //  %if.then7
	add x3, x0, x0
	sw x3, 24 ( x2 )                //  4-byte Folded Spill
LBB0_9:                                 //  %if.then7
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 24 ( x9 )
	xori x1, x1, 2
	beqz x1, LBB0_11
LBB0_10:                                //  %if.else16
	addi x10, x2, 32
	call $matherr
	bgtu x10, x0, LBB0_12
LBB0_11:                                //  %if.end21.sink.split
	call $__errno
	addi x1, x0, 33
	sw x1, 0 ( x10 )
LBB0_12:                                //  %if.end21
	lw x8, 64 ( x2 )
	nop
	beqz x8, LBB0_14
LBB0_13:                                //  %if.then24
	call $__errno
	sw x8, 0 ( x10 )
LBB0_14:                                //  %if.end27
	lw x11, 60 ( x2 )
	addi x1, x2, 32
	lw x3, 24 ( x1 )
	nop
LBB0_15:                                //  %cleanup
	add x10, x0, x3
	lw x8, 68 ( x2 )                //  4-byte Folded Reload
	lw x1, 76 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 80
$cfi5:
	.cfi_adjust_cfa_offset -80
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$fmod, ($func_end0)-($fmod)
	.cfi_endproc

	.address_space	0	
	.address_space	0	
	.type	$.str,@object           //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str:
	.asciz	"fmod"
	.size	$.str, 5


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
