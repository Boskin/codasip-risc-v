	.text
	.file	"s_lrint.bc"
	.globl	$lrint
	.type	$lrint,@function
$lrint:                                 //  @lrint
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -40
$cfi2:
	.cfi_adjust_cfa_offset 40
	sw x1, 36 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 28 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x11
	srli x3, x1, 20
	andi x3, x3, 2047
	addi x3, x3, -1023
	addi x4, x0, 19
	slt x5, x1, x0
	bgt x3, x4, LBB0_4
LBB0_1:                                 //  %if.then
	slti x3, x3, -1
	add x8, x0, x0
	bgtu x3, x0, LBB0_11
LBB0_2:                                 //  %if.else
	ori x28, x0, $TWO52+4 & 0xfff
	slli x28, x28, 20
	lui x3, $TWO52+4 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	ori x28, x0, $TWO52 & 0xfff
	slli x28, x28, 20
	lui x4, $TWO52 >> 12 & 0xfffff
	srli x28, x28, 20
	sw x5, 12 ( x2 )                //  4-byte Folded Spill
	slli x5, x5, 3
	or x4, x4, x28
	add x3, x3, x5
	add x4, x4, x5
	lw x4, 0 ( x4 )
	nop
	sw x4, 8 ( x2 )                 //  4-byte Folded Spill
	lw x11, 0 ( x3 )
	nop
	sw x11, 4 ( x2 )                //  4-byte Folded Spill
	add x12, x0, x10
	add x10, x0, x4
	add x13, x0, x1
	call $__adddf3
	addi x1, x2, 16
	ori x1, x1, 4
	sw x11, 0 ( x1 )
	sw x10, 16 ( x2 )
	lw x11, 0 ( x1 )
	lw x10, 16 ( x2 )
	lw x12, 8 ( x2 )                //  4-byte Folded Reload
	lw x13, 4 ( x2 )                //  4-byte Folded Reload
	nop
	call $__subdf3
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	and x1, x1, x11
	beqz x1, LBB0_11
LBB0_3:                                 //  %if.end
	ori x28, x0, 1048575 & 0xfff
	slli x28, x28, 20
	lui x1, 1048575 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	srli x3, x11, 20
	and x1, x1, x11
	lui x4, 1048576>>12 &0xfffff
	andi x3, x3, 2047
	addi x5, x0, 1043
	or x1, x4, x1
	sub x3, x5, x3
	srl x8, x1, x3
	jalr x0, LBB0_9 ( x0 )
LBB0_4:                                 //  %if.else24
	addi x4, x0, 30
	bgt x3, x4, LBB0_12
LBB0_5:                                 //  %if.else35
	ori x28, x0, $TWO52+4 & 0xfff
	slli x28, x28, 20
	lui x3, $TWO52+4 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	ori x28, x0, $TWO52 & 0xfff
	slli x28, x28, 20
	lui x4, $TWO52 >> 12 & 0xfffff
	srli x28, x28, 20
	sw x5, 12 ( x2 )                //  4-byte Folded Spill
	slli x5, x5, 3
	or x4, x4, x28
	add x3, x3, x5
	add x4, x4, x5
	lw x8, 0 ( x4 )
	lw x11, 0 ( x3 )
	nop
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	add x12, x0, x10
	add x10, x0, x8
	add x13, x0, x1
	call $__adddf3
	addi x1, x2, 16
	ori x1, x1, 4
	sw x11, 0 ( x1 )
	sw x10, 16 ( x2 )
	lw x11, 0 ( x1 )
	lw x10, 16 ( x2 )
	add x12, x0, x8
	lw x13, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $__subdf3
	srli x1, x11, 20
	andi x1, x1, 2047
	addi x3, x0, 1075
	sub x3, x3, x1
	addi x4, x0, 32
	bgeu x3, x4, LBB0_7
LBB0_6:
	srl x3, x10, x3
	jalr x0, LBB0_8 ( x0 )
LBB0_7:                                 //  %if.else35
	add x3, x0, x0
LBB0_8:                                 //  %if.else35
	lui x4, 1048575 >> 12 & 0xfffff
	ori x28, x0, 1048575 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x4, x28
	and x4, x4, x11
	lui x5, 1048576>>12 &0xfffff
	or x4, x5, x4
	addi x1, x1, -1043
	sll x1, x4, x1
	or x8, x1, x3
LBB0_9:                                 //  %if.end64
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	add x1, x0, x0
	beq x3, x1, LBB0_11
LBB0_10:
	sub x8, x0, x8
LBB0_11:                                //  %cleanup
	add x10, x0, x8
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	lw x1, 36 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 40
$cfi5:
	.cfi_adjust_cfa_offset -40
$cfi6:
	.cfi_def_cfa 2, 0
	ret
LBB0_12:                                //  %if.else62
	add x11, x0, x1
	call $__fixdfsi
	add x8, x0, x10
	jalr x0, LBB0_11 ( x0 )
$func_end0:
	.size	$lrint, ($func_end0)-($lrint)
	.cfi_endproc

	.address_space	0	
	.type	$TWO52,@object          //  @TWO52
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3
$TWO52:
	.quad	4841369599423283200     //  double 4503599627370496
	.quad	-4382002437431492608    //  double -4503599627370496
	.size	$TWO52, 16


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
