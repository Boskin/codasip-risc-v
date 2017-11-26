	.text
	.file	"s_rint.bc"
	.globl	$rint
	.type	$rint,@function
$rint:                                  //  @rint
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10, 11
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
	add x9, x0, x11
	srli x1, x9, 20
	andi x3, x1, 2047
	addi x8, x3, -1023
	addi x1, x0, 19
	slt x7, x9, x0
	bgt x8, x1, LBB0_9
LBB0_1:                                 //  %if.then
	addi x4, x0, 1022
	bgtu x3, x4, LBB0_4
LBB0_2:                                 //  %if.then5
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	and x1, x1, x9
	or x1, x10, x1
	beqz x1, LBB0_18
LBB0_3:                                 //  %if.end
	ori x28, x0, -131072 & 0xfff
	slli x28, x28, 20
	lui x1, -131072 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, 1048575 & 0xfff
	slli x28, x28, 20
	lui x3, 1048575 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	ori x28, x0, $TWO52+4 & 0xfff
	slli x28, x28, 20
	lui x4, $TWO52+4 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	ori x28, x0, $TWO52 & 0xfff
	slli x28, x28, 20
	and x3, x3, x9
	lui x5, $TWO52 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x10, x3
	sw x7, 12 ( x2 )                //  4-byte Folded Spill
	slli x7, x7, 3
	or x5, x5, x28
	sub x3, x0, x3
	add x4, x4, x7
	add x5, x5, x7
	or x3, x3, x10
	lw x8, 0 ( x5 )
	lw x13, 0 ( x4 )
	nop
	sw x13, 8 ( x2 )                //  4-byte Folded Spill
	srli x3, x3, 12
	lui x4, 524288>>12 
	and x1, x1, x9
	and x3, x4, x3
	or x11, x1, x3
	add x12, x0, x8
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
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	or x1, x1, x28
	and x1, x1, x11
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	nop
	slli x3, x3, 31
	or x9, x3, x1
	jalr x0, LBB0_18 ( x0 )
LBB0_4:                                 //  %if.else
	ori x28, x0, 1048575 & 0xfff
	slli x28, x28, 20
	lui x3, 1048575 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	srl x3, x3, x8
	and x4, x9, x3
	or x4, x10, x4
	beqz x4, LBB0_18
LBB0_5:                                 //  %if.end47
	srli x3, x3, 1
	and x4, x9, x3
	or x4, x10, x4
	beqz x4, LBB0_17
LBB0_6:                                 //  %if.then52
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x4, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x4, x28
	beq x8, x1, LBB0_8
LBB0_7:                                 //  %if.then52
	add x10, x0, x0
LBB0_8:                                 //  %if.then52
	lui x1, 262144>>12 
	srl x1, x1, x8
	not x3, x3
	and x3, x3, x9
	or x9, x1, x3
	jalr x0, LBB0_17 ( x0 )
LBB0_9:                                 //  %if.else62
	slti x1, x8, 52
	bgtu x1, x0, LBB0_14
LBB0_10:                                //  %if.then64
	add x11, x0, x9
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x10
	add x13, x0, x9
	sw x9, 8 ( x2 )                 //  4-byte Folded Spill
	call $__adddf3
	add x9, x0, x11
	addi x1, x0, 1024
	beq x8, x1, LBB0_12
LBB0_11:                                //  %if.then64
	lw x9, 8 ( x2 )                 //  4-byte Folded Reload
LBB0_12:                                //  %if.then64
	beq x8, x1, LBB0_18
LBB0_13:                                //  %if.then64
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_18 ( x0 )
LBB0_14:                                //  %if.else69
	addi x1, x3, -1043
	not x3, x0
	srl x3, x3, x1
	and x4, x10, x3
	beqz x4, LBB0_18
LBB0_15:                                //  %if.end75
	srli x3, x3, 1
	and x4, x10, x3
	beqz x4, LBB0_17
LBB0_16:                                //  %if.then79
	lui x4, 1073741824>>12 &0xfffff
	not x3, x3
	srl x1, x4, x1
	and x3, x3, x10
	or x10, x1, x3
LBB0_17:                                //  %do.body88
	ori x28, x0, $TWO52+4 & 0xfff
	slli x28, x28, 20
	lui x1, $TWO52+4 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $TWO52 & 0xfff
	slli x28, x28, 20
	lui x3, $TWO52 >> 12 & 0xfffff
	srli x28, x28, 20
	slli x4, x7, 3
	or x3, x3, x28
	add x1, x1, x4
	add x3, x3, x4
	lw x8, 0 ( x3 )
	lw x11, 0 ( x1 )
	nop
	sw x11, 12 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x10
	add x10, x0, x8
	add x13, x0, x9
	call $__adddf3
	addi x1, x2, 16
	ori x1, x1, 4
	sw x11, 0 ( x1 )
	sw x10, 16 ( x2 )
	lw x11, 0 ( x1 )
	lw x10, 16 ( x2 )
	add x12, x0, x8
	lw x13, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	add x9, x0, x11
LBB0_18:                                //  %cleanup
	add x11, x0, x9
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
$func_end0:
	.size	$rint, ($func_end0)-($rint)
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
