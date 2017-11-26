	.text
	.file	"sf_rint.bc"
	.globl	$rintf
	.type	$rintf,@function
$rintf:                                 //  @rintf
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
	add x7, x0, x10
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	and x8, x1, x7
	srli x1, x8, 23
	addi x1, x1, -127
	addi x3, x0, 22
	bgt x1, x3, LBB0_8
LBB0_1:                                 //  %if.then
	beqz x8, LBB0_10
LBB0_2:                                 //  %if.end
	ori x28, x0, 1065353215 & 0xfff
	slli x28, x28, 20
	lui x3, 1065353215 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	slt x5, x7, x0
	bgtu x8, x3, LBB0_4
LBB0_3:                                 //  %if.then6
	ori x28, x0, -1048576 & 0xfff
	slli x28, x28, 20
	lui x1, -1048576 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, 8388607 & 0xfff
	slli x28, x28, 20
	lui x3, 8388607 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	ori x28, x0, $TWO23 & 0xfff
	slli x28, x28, 20
	lui x4, $TWO23 >> 12 & 0xfffff
	srli x28, x28, 20
	sw x5, 4 ( x2 )                 //  4-byte Folded Spill
	slli x5, x5, 2
	or x4, x4, x28
	and x3, x3, x7
	add x4, x4, x5
	sub x3, x0, x3
	lw x8, 0 ( x4 )
	srli x3, x3, 9
	lui x4, 4194304>>12 &0xfffff
	and x1, x1, x7
	and x3, x4, x3
	or x10, x1, x3
	add x11, x0, x8
	call $__addsf3
	sw x10, 8 ( x2 )
	lw x10, 8 ( x2 )
	add x11, x0, x8
	call $__subsf3
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	or x1, x1, x28
	and x1, x1, x10
	lw x3, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	slli x3, x3, 31
	or x7, x3, x1
	jalr x0, LBB0_10 ( x0 )
LBB0_4:                                 //  %if.else
	ori x28, x0, 8388607 & 0xfff
	slli x28, x28, 20
	lui x3, 8388607 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	srl x3, x3, x1
	and x4, x7, x3
	beqz x4, LBB0_10
LBB0_5:                                 //  %if.end38
	srli x3, x3, 1
	and x4, x7, x3
	beqz x4, LBB0_7
LBB0_6:                                 //  %if.then42
	lui x4, 2097152>>12 &0xfffff
	not x3, x3
	srl x1, x4, x1
	and x3, x3, x7
	or x7, x1, x3
LBB0_7:                                 //  %do.body54
	ori x28, x0, $TWO23 & 0xfff
	slli x28, x28, 20
	lui x1, $TWO23 >> 12 & 0xfffff
	srli x28, x28, 20
	slli x3, x5, 2
	or x1, x1, x28
	add x1, x1, x3
	lw x8, 0 ( x1 )
	add x11, x0, x7
	add x10, x0, x8
	call $__addsf3
	sw x10, 8 ( x2 )
	lw x10, 8 ( x2 )
	add x11, x0, x8
	call $__subsf3
	jalr x0, LBB0_9 ( x0 )
LBB0_8:                                 //  %if.else48
	add x10, x0, x7
	add x11, x0, x7
	sw x7, 4 ( x2 )                 //  4-byte Folded Spill
	call $__addsf3
	lw x7, 4 ( x2 )                 //  4-byte Folded Reload
	lui x1, 2139095040>>12 &0xfffff
	bgtu x1, x8, LBB0_10
LBB0_9:                                 //  %if.else48
	add x7, x0, x10
LBB0_10:                                //  %cleanup
	add x10, x0, x7
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
	.size	$rintf, ($func_end0)-($rintf)
	.cfi_endproc

	.address_space	0	
	.type	$TWO23,@object          //  @TWO23
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	2
$TWO23:
	.long	1258291200              //  float 8388608
	.long	3405774848              //  float -8388608
	.size	$TWO23, 8


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
