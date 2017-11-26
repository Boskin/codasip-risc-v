	.text
	.file	"wf_pow.bc"
	.globl	$powf
	.type	$powf,@function
$powf:                                  //  @powf
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -72
$cfi2:
	.cfi_adjust_cfa_offset 72
	sw x1, 68 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 60 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x11
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	call $__ieee754_powf
	add x3, x0, x10
	ori x28, x0, $__fdlib_version & 0xfff
	slli x28, x28, 20
	lui x1, $__fdlib_version >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x1, 0 ( x1 )
	nop
	xori x1, x1, -1
	beqz x1, LBB0_48
LBB0_1:                                 //  %lor.lhs.false
	sw x3, 16 ( x2 )                //  4-byte Folded Spill
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	call $__fpclassifyf
	bgtu x10, x0, LBB0_3
LBB0_2:
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_48 ( x0 )
LBB0_3:                                 //  %if.end
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	call $__fpclassifyf
	bgtu x10, x0, LBB0_10
LBB0_4:                                 //  %if.then5
	add x11, x0, x0
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__nesf2
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB0_48
LBB0_5:                                 //  %if.then7
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	slti x3, x0, 1
	addi x4, x2, 24
	or x1, x1, x28
	sw x3, 24 ( x2 )
	sw x1, 4 ( x4 )
	sw x0, 32 ( x4 )
	add x10, x0, x8
	call $__extendsfdf2
	addi x8, x2, 24
	sw x10, 8 ( x8 )
	sw x11, 36 ( x2 )
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__extendsfdf2
	ori x28, x0, $__fdlib_version & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $__fdlib_version >> 12 & 0xfffff
	or x1, x1, x28
	lw x3, 0 ( x1 )
	lui x1, 1072693248>>12 &0xfffff
	add x5, x0, x8
	sw x11, 20 ( x5 )
	sw x1, 28 ( x5 )
	xori x4, x3, 2
	sw x10, 16 ( x5 )
	sw x0, 24 ( x5 )
	beqz x4, LBB0_7
LBB0_6:                                 //  %if.then7
	xori x3, x3, -1
	bgtu x3, x0, LBB0_8
LBB0_7:                                 //  %if.then15
	sw x1, 52 ( x2 )
	addi x1, x2, 24
	sw x0, 24 ( x1 )
	jalr x0, LBB0_45 ( x0 )
LBB0_8:                                 //  %if.else
	addi x10, x2, 24
	call $matherr
	bgtu x10, x0, LBB0_45
LBB0_9:                                 //  %if.then18
	call $__errno
	addi x1, x0, 33
	jalr x0, LBB0_44 ( x0 )
LBB0_10:                                //  %if.end32
	add x10, x0, x8
	add x8, x0, x0
	add x11, x0, x8
	call $__nesf2
	bgtu x10, x0, LBB0_21
LBB0_11:                                //  %if.then35
	add x11, x0, x0
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	call $__nesf2
	bgtu x10, x0, LBB0_14
LBB0_12:                                //  %if.then38
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	slti x3, x0, 1
	addi x8, x2, 24
	or x1, x1, x28
	sw x3, 24 ( x2 )
	sw x1, 4 ( x8 )
	sw x0, 32 ( x8 )
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	nop
	call $__extendsfdf2
	sw x10, 8 ( x8 )
	sw x11, 36 ( x2 )
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__extendsfdf2
	ori x28, x0, $__fdlib_version & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $__fdlib_version >> 12 & 0xfffff
	or x1, x1, x28
	lw x1, 0 ( x1 )
	sw x11, 20 ( x8 )
	sw x0, 28 ( x8 )
	sw x10, 16 ( x8 )
	sw x0, 24 ( x8 )
	beqz x1, LBB0_8
LBB0_13:                                //  %if.then49
	lui x1, 1072693248>>12 &0xfffff
	sw x1, 52 ( x2 )
	sw x0, 24 ( x8 )
	jalr x0, LBB0_45 ( x0 )
LBB0_14:                                //  %if.end67
	add x11, x0, x0
	add x10, x0, x8
	call $__ltsf2
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	call $finitef
	lw x4, 20 ( x2 )                //  4-byte Folded Reload
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	bgt x0, x1, LBB0_16
LBB0_15:
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_48 ( x0 )
LBB0_16:                                //  %if.end67
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	beqz x10, LBB0_48
LBB0_17:                                //  %if.then72
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	slti x3, x0, 1
	addi x8, x2, 24
	or x1, x1, x28
	sw x3, 24 ( x2 )
	sw x1, 4 ( x8 )
	sw x0, 32 ( x8 )
	add x10, x0, x4
	call $__extendsfdf2
	sw x10, 8 ( x8 )
	sw x11, 36 ( x2 )
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__extendsfdf2
	ori x28, x0, $__fdlib_version & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $__fdlib_version >> 12 & 0xfffff
	or x1, x1, x28
	lw x1, 0 ( x1 )
	ori x28, x0, -1048576 & 0xfff
	slli x28, x28, 20
	lui x3, -1048576 >> 12 & 0xfffff
	srli x28, x28, 20
	sw x11, 20 ( x8 )
	sw x10, 16 ( x8 )
	or x3, x3, x28
	add x4, x0, x0
	beq x1, x4, LBB0_19
LBB0_18:                                //  %if.then72
	add x4, x0, x3
LBB0_19:                                //  %if.then72
	sw x4, 28 ( x8 )
	sw x0, 24 ( x8 )
LBB0_20:                                //  %if.then72
	xori x1, x1, 2
	bgtu x1, x0, LBB0_8
	jalr x0, LBB0_9 ( x0 )
LBB0_21:                                //  %if.end108
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $finitef
	bgtu x10, x0, LBB0_36
LBB0_22:                                //  %if.then111
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	nop
	call $finitef
	beqz x10, LBB0_36
LBB0_23:                                //  %land.lhs.true114
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $finitef
	beqz x10, LBB0_36
LBB0_24:                                //  %if.then117
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__fpclassifyf
	bgtu x10, x0, LBB0_28
LBB0_25:                                //  %if.then121
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	slti x3, x0, 1
	addi x4, x2, 24
	or x1, x1, x28
	sw x3, 24 ( x2 )
	sw x1, 4 ( x4 )
	sw x0, 32 ( x4 )
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	nop
	call $__extendsfdf2
	addi x1, x2, 24
	sw x10, 8 ( x1 )
	sw x11, 36 ( x2 )
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__extendsfdf2
	ori x28, x0, $__fdlib_version & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $__fdlib_version >> 12 & 0xfffff
	or x1, x1, x28
	lw x1, 0 ( x1 )
	addi x3, x2, 24
	sw x11, 20 ( x3 )
	sw x10, 16 ( x3 )
	beq x1, x8, LBB0_27
LBB0_26:                                //  %if.then121
	lui x8, 2146959360>>12 &0xfffff
LBB0_27:                                //  %if.then121
	addi x3, x2, 24
	sw x8, 28 ( x3 )
	sw x0, 24 ( x3 )
	jalr x0, LBB0_20 ( x0 )
LBB0_28:                                //  %if.else156
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	addi x3, x0, 3
	addi x4, x2, 24
	or x1, x1, x28
	sw x3, 24 ( x2 )
	sw x1, 4 ( x4 )
	sw x0, 32 ( x4 )
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	call $__extendsfdf2
	addi x1, x2, 24
	sw x10, 8 ( x1 )
	sw x11, 36 ( x2 )
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__extendsfdf2
	addi x4, x2, 24
	ori x28, x0, $__fdlib_version & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $__fdlib_version >> 12 & 0xfffff
	or x1, x1, x28
	lw x1, 0 ( x1 )
	sw x11, 20 ( x4 )
	sw x10, 16 ( x4 )
	bgtu x1, x0, LBB0_32
LBB0_29:                                //  %if.then166
	ori x28, x0, -536870912 & 0xfff
	slli x28, x28, 20
	lui x1, -536870912 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, 1206910975 & 0xfff
	slli x28, x28, 20
	lui x3, 1206910975 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	sw x1, 24 ( x4 )
	sw x3, 52 ( x2 )
	add x11, x0, x0
	add x10, x0, x8
	call $__ltsf2
	bgez x10, LBB0_35
LBB0_30:                                //  %land.lhs.true173
	lui x11, 1056964608>>12 &0xfffff
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	call $__extendsfdf2
	add x8, x0, x10
	sw x11, 20 ( x2 )               //  4-byte Folded Spill
	call $rint
	add x12, x0, x8
	lw x13, 20 ( x2 )               //  4-byte Folded Reload
	nop
	call $__eqdf2
	beqz x10, LBB0_35
LBB0_31:                                //  %if.then179
	ori x28, x0, -536870912 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, -536870912 >> 12 & 0xfffff
	or x1, x1, x28
	ori x28, x0, -940572673 & 0xfff
	slli x28, x28, 20
	lui x3, -940572673 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	addi x4, x2, 24
	sw x1, 24 ( x4 )
	sw x3, 52 ( x2 )
	jalr x0, LBB0_35 ( x0 )
LBB0_32:                                //  %if.else182
	lui x1, 2146435072>>12 &0xfffff
	sw x1, 52 ( x2 )
	sw x0, 24 ( x4 )
	add x11, x0, x0
	add x10, x0, x8
	call $__ltsf2
	bgez x10, LBB0_35
LBB0_33:                                //  %land.lhs.true190
	lui x11, 1056964608>>12 &0xfffff
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	call $__extendsfdf2
	add x8, x0, x10
	sw x11, 20 ( x2 )               //  4-byte Folded Spill
	call $rint
	add x12, x0, x8
	lw x13, 20 ( x2 )               //  4-byte Folded Reload
	nop
	call $__eqdf2
	beqz x10, LBB0_35
LBB0_34:                                //  %if.then196
	ori x28, x0, -1048576 & 0xfff
	slli x28, x28, 20
	lui x1, -1048576 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 52 ( x2 )
	addi x1, x2, 24
	sw x0, 24 ( x1 )
LBB0_35:                                //  %if.end199
	ori x28, x0, $__fdlib_version & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $__fdlib_version >> 12 & 0xfffff
	or x1, x1, x28
	lw x1, 0 ( x1 )
	nop
	xori x1, x1, 2
	bgtu x1, x0, LBB0_42
	jalr x0, LBB0_43 ( x0 )
LBB0_36:                                //  %if.end221
	add x11, x0, x0
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__nesf2
	beqz x10, LBB0_38
LBB0_37:
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_48 ( x0 )
LBB0_38:                                //  %land.lhs.true224
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	call $finitef
	bgtu x10, x0, LBB0_40
LBB0_39:
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_48 ( x0 )
LBB0_40:                                //  %land.lhs.true227
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $finitef
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	beqz x10, LBB0_48
LBB0_41:                                //  %if.then230
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	addi x3, x0, 4
	addi x4, x2, 24
	or x1, x1, x28
	sw x3, 24 ( x2 )
	sw x1, 4 ( x4 )
	sw x0, 32 ( x4 )
	add x10, x0, x8
	call $__extendsfdf2
	addi x8, x2, 24
	sw x10, 8 ( x8 )
	sw x11, 36 ( x2 )
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__extendsfdf2
	ori x28, x0, $__fdlib_version & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $__fdlib_version >> 12 & 0xfffff
	or x1, x1, x28
	lw x1, 0 ( x1 )
	add x3, x0, x8
	sw x11, 20 ( x3 )
	sw x0, 28 ( x3 )
	sw x10, 16 ( x3 )
	xori x1, x1, 2
	sw x0, 24 ( x3 )
	beqz x1, LBB0_43
LBB0_42:                                //  %if.else243
	addi x10, x2, 24
	call $matherr
	bgtu x10, x0, LBB0_45
LBB0_43:                                //  %if.end249.sink.split
	call $__errno
	addi x1, x0, 34
LBB0_44:                                //  %if.end249
	sw x1, 0 ( x10 )
LBB0_45:                                //  %if.end249
	lw x8, 56 ( x2 )
	nop
	beqz x8, LBB0_47
LBB0_46:                                //  %if.then253
	call $__errno
	sw x8, 0 ( x10 )
LBB0_47:                                //  %if.end256
	addi x1, x2, 24
	lw x10, 24 ( x1 )
	lw x11, 52 ( x2 )
	nop
	call $__truncdfsf2
	add x3, x0, x10
LBB0_48:                                //  %cleanup
	add x10, x0, x3
	lw x8, 60 ( x2 )                //  4-byte Folded Reload
	lw x1, 68 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 72
$cfi5:
	.cfi_adjust_cfa_offset -72
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$powf, ($func_end0)-($powf)
	.cfi_endproc

	.address_space	0	
	.address_space	0	
	.type	$.str,@object           //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str:
	.asciz	"powf"
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
