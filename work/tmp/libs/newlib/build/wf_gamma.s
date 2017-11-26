	.text
	.file	"wf_gamma.bc"
	.globl	$gammaf
	.type	$gammaf,@function
$gammaf:                                //  @gammaf
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
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x1, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x1, 0 ( x1 )
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	addi x11, x1, 160
	call $__ieee754_gammaf_r
	add x8, x0, x10
	ori x28, x0, $__fdlib_version & 0xfff
	slli x28, x28, 20
	lui x1, $__fdlib_version >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x1, 0 ( x1 )
	nop
	xori x1, x1, -1
	beqz x1, LBB0_23
LBB0_1:                                 //  %if.end
	add x10, x0, x8
	call $finitef
	bgtu x10, x0, LBB0_23
LBB0_2:                                 //  %land.lhs.true
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $finitef
	beqz x10, LBB0_23
LBB0_3:                                 //  %if.then4
	add x11, x0, x0
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	call $__lesf2
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	call $floorf
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	bgt x1, x0, LBB0_12
LBB0_4:                                 //  %if.then4
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__nesf2
	bgtu x10, x0, LBB0_12
LBB0_5:                                 //  %if.then9
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	addi x3, x0, 2
	addi x8, x2, 16
	or x1, x1, x28
	sw x3, 16 ( x2 )
	sw x1, 4 ( x8 )
	sw x0, 32 ( x8 )
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__extendsfdf2
	ori x28, x0, $__fdlib_version & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $__fdlib_version >> 12 & 0xfffff
	or x1, x1, x28
	lw x1, 0 ( x1 )
	ori x28, x0, 1206910975 & 0xfff
	slli x28, x28, 20
	lui x4, 1206910975 >> 12 & 0xfffff
	srli x28, x28, 20
	add x3, x0, x0
	sw x10, 16 ( x8 )
	sw x11, 12 ( x8 )
	sw x11, 36 ( x2 )
	sw x10, 8 ( x8 )
	or x4, x4, x28
	beq x1, x3, LBB0_7
LBB0_6:                                 //  %if.then9
	lui x4, 2146435072>>12 &0xfffff
LBB0_7:                                 //  %if.then9
	sw x4, 28 ( x8 )
	lui x4, -536870912 >> 12 & 0xfffff
	ori x28, x0, -536870912 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x4, x28
	beq x1, x3, LBB0_9
LBB0_8:                                 //  %if.then9
	add x4, x0, x3
LBB0_9:                                 //  %if.then9
	sw x4, 24 ( x8 )
	addi x8, x8, 32
	xori x1, x1, 2
	bgtu x1, x0, LBB0_11
LBB0_10:                                //  %if.then18
	call $__errno
	addi x1, x0, 33
	jalr x0, LBB0_19 ( x0 )
LBB0_11:                                //  %if.else20
	addi x10, x2, 16
	call $matherr
	beqz x10, LBB0_10
	jalr x0, LBB0_20 ( x0 )
LBB0_12:                                //  %if.else27
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	addi x3, x0, 3
	addi x8, x2, 16
	or x1, x1, x28
	sw x3, 16 ( x2 )
	sw x1, 4 ( x8 )
	sw x0, 32 ( x8 )
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__extendsfdf2
	ori x28, x0, $__fdlib_version & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $__fdlib_version >> 12 & 0xfffff
	or x1, x1, x28
	lw x1, 0 ( x1 )
	ori x28, x0, 1206910975 & 0xfff
	slli x28, x28, 20
	lui x3, 1206910975 >> 12 & 0xfffff
	srli x28, x28, 20
	sw x10, 16 ( x8 )
	sw x11, 12 ( x8 )
	sw x11, 36 ( x2 )
	sw x10, 8 ( x8 )
	or x3, x3, x28
	add x4, x0, x0
	beq x1, x4, LBB0_14
LBB0_13:                                //  %if.else27
	lui x3, 2146435072>>12 &0xfffff
LBB0_14:                                //  %if.else27
	sw x3, 28 ( x8 )
	lui x3, -536870912 >> 12 & 0xfffff
	ori x28, x0, -536870912 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	beq x1, x4, LBB0_16
LBB0_15:                                //  %if.else27
	add x3, x0, x4
LBB0_16:                                //  %if.else27
	sw x3, 24 ( x8 )
	addi x8, x8, 32
	xori x1, x1, 2
	beqz x1, LBB0_18
LBB0_17:                                //  %if.else45
	addi x10, x2, 16
	call $matherr
	bgtu x10, x0, LBB0_20
LBB0_18:                                //  %if.then48
	call $__errno
	addi x1, x0, 34
LBB0_19:                                //  %if.end52
	sw x1, 0 ( x10 )
LBB0_20:                                //  %if.end52
	lw x8, 0 ( x8 )
	nop
	beqz x8, LBB0_22
LBB0_21:                                //  %if.then56
	call $__errno
	sw x8, 0 ( x10 )
LBB0_22:                                //  %if.end59
	addi x1, x2, 16
	lw x10, 24 ( x1 )
	lw x11, 44 ( x2 )
	nop
	call $__truncdfsf2
	add x8, x0, x10
LBB0_23:                                //  %cleanup
	add x10, x0, x8
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
	.size	$gammaf, ($func_end0)-($gammaf)
	.cfi_endproc

	.address_space	0	
	.address_space	0	
	.address_space	0	
	.type	$.str,@object           //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str:
	.asciz	"gammaf"
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
