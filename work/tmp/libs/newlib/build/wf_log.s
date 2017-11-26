	.text
	.file	"wf_log.bc"
	.globl	$logf
	.type	$logf,@function
$logf:                                  //  @logf
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
	call $__ieee754_logf
	add x3, x0, x10
	ori x28, x0, $__fdlib_version & 0xfff
	slli x28, x28, 20
	lui x1, $__fdlib_version >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x1, 0 ( x1 )
	nop
	xori x1, x1, -1
	beqz x1, LBB0_19
LBB0_1:                                 //  %lor.lhs.false
	sw x3, 8 ( x2 )                 //  4-byte Folded Spill
	add x11, x0, x0
	add x10, x0, x8
	call $__gtsf2
	add x1, x0, x8
	add x8, x0, x10
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x1
	call $__fpclassifyf
	ble x8, x0, LBB0_3
LBB0_2:
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	jalr x0, LBB0_19 ( x0 )
LBB0_3:                                 //  %lor.lhs.false
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	beqz x10, LBB0_19
LBB0_4:                                 //  %if.end
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	addi x8, x2, 16
	or x1, x1, x28
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
	ori x28, x0, -1048576 & 0xfff
	slli x28, x28, 20
	lw x5, 0 ( x1 )
	lui x1, -1048576 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, -940572673 & 0xfff
	slli x28, x28, 20
	lui x3, -940572673 >> 12 & 0xfffff
	srli x28, x28, 20
	sw x10, 16 ( x8 )
	sw x11, 12 ( x8 )
	sw x11, 36 ( x2 )
	sw x10, 8 ( x8 )
	add x4, x0, x8
	add x8, x0, x5
	or x3, x3, x28
	add x11, x0, x0
	beq x8, x11, LBB0_6
LBB0_5:                                 //  %if.end
	add x3, x0, x1
LBB0_6:                                 //  %if.end
	sw x3, 28 ( x4 )
	lui x1, -536870912 >> 12 & 0xfffff
	ori x28, x0, -536870912 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	beq x8, x11, LBB0_8
LBB0_7:                                 //  %if.end
	add x1, x0, x11
LBB0_8:                                 //  %if.end
	sw x1, 24 ( x4 )
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__nesf2
	bgtu x10, x0, LBB0_12
LBB0_9:                                 //  %if.then13
	addi x1, x0, 2
	sw x1, 16 ( x2 )
	xori x1, x8, 2
	bgtu x1, x0, LBB0_11
LBB0_10:                                //  %if.then16
	call $__errno
	addi x1, x0, 34
	sw x1, 0 ( x10 )
	jalr x0, LBB0_16 ( x0 )
LBB0_11:                                //  %if.else18
	addi x10, x2, 16
	call $matherr
	beqz x10, LBB0_10
	jalr x0, LBB0_16 ( x0 )
LBB0_12:                                //  %if.else24
	slti x1, x0, 1
	sw x1, 16 ( x2 )
	xori x1, x8, 2
	beqz x1, LBB0_14
LBB0_13:                                //  %if.else30
	addi x10, x2, 16
	call $matherr
	bgtu x10, x0, LBB0_15
LBB0_14:                                //  %if.end36.sink.split
	call $__errno
	addi x1, x0, 33
	sw x1, 0 ( x10 )
LBB0_15:                                //  %if.end36
	lui x1, $.str.1 >> 12 & 0xfffff
	ori x28, x0, $.str.1 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x10, x1, x28
	call $nan
	addi x1, x2, 16
	sw x10, 24 ( x1 )
	sw x11, 44 ( x2 )
LBB0_16:                                //  %if.end39
	lw x8, 48 ( x2 )
	nop
	beqz x8, LBB0_18
LBB0_17:                                //  %if.then43
	call $__errno
	sw x8, 0 ( x10 )
LBB0_18:                                //  %if.end46
	addi x1, x2, 16
	lw x10, 24 ( x1 )
	lw x11, 44 ( x2 )
	nop
	call $__truncdfsf2
	add x3, x0, x10
LBB0_19:                                //  %cleanup
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
	.size	$logf, ($func_end0)-($logf)
	.cfi_endproc

	.address_space	0	
	.address_space	0	
	.type	$.str,@object           //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str:
	.asciz	"logf"
	.size	$.str, 5

	.address_space	0	
	.type	$.str.1,@object         //  @.str.1
$.str.1:
	.zero	1
	.size	$.str.1, 1


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
