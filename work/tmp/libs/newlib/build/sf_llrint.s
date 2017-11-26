	.text
	.file	"sf_llrint.bc"
	.globl	$llrintf
	.type	$llrintf,@function
$llrintf:                               //  @llrintf
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10, 11
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
	add x1, x0, x10
	srli x3, x1, 23
	andi x3, x3, 255
	addi x4, x3, -127
	addi x5, x0, 62
	bgt x4, x5, LBB0_6
LBB0_1:                                 //  %if.then
	add x11, x0, x0
	slti x5, x4, -1
	add x10, x0, x11
	bgtu x5, x0, LBB0_16
LBB0_2:                                 //  %if.else
	slti x4, x4, 23
	slt x8, x1, x0
	bgtu x4, x0, LBB0_4
LBB0_3:                                 //  %if.then5
	ori x28, x0, 8388607 & 0xfff
	slli x28, x28, 20
	lui x4, 8388607 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	and x1, x4, x1
	lui x4, 8388608>>12 &0xfffff
	or x10, x4, x1
	addi x12, x3, -150
	add x11, x0, x0
	call $__ashldi3
	add x1, x0, x10
	jalr x0, LBB0_8 ( x0 )
LBB0_4:                                 //  %if.else8
	ori x28, x0, $TWO23 & 0xfff
	slli x28, x28, 20
	lui x3, $TWO23 >> 12 & 0xfffff
	srli x28, x28, 20
	sw x8, 4 ( x2 )                 //  4-byte Folded Spill
	slli x4, x8, 2
	or x3, x3, x28
	add x3, x3, x4
	lw x8, 0 ( x3 )
	add x11, x0, x1
	add x10, x0, x8
	call $__addsf3
	sw x10, 8 ( x2 )
	lw x10, 8 ( x2 )
	add x11, x0, x8
	call $__subsf3
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	and x1, x1, x10
	bgtu x1, x0, LBB0_7
LBB0_5:
	add x11, x0, x0
	add x10, x0, x11
	jalr x0, LBB0_16 ( x0 )
LBB0_6:                                 //  %if.else31
	add x10, x0, x1
	call $__fixsfdi
	jalr x0, LBB0_16 ( x0 )
LBB0_7:                                 //  %if.end
	ori x28, x0, 8388607 & 0xfff
	slli x28, x28, 20
	lui x1, 8388607 >> 12 & 0xfffff
	srli x28, x28, 20
	srli x3, x10, 23
	or x1, x1, x28
	andi x3, x3, 255
	addi x4, x0, 150
	and x1, x1, x10
	lui x5, 8388608>>12 &0xfffff
	sub x3, x4, x3
	or x1, x5, x1
	srl x1, x1, x3
	add x11, x0, x0
	lw x8, 4 ( x2 )                 //  4-byte Folded Reload
LBB0_8:                                 //  %if.end33
	add x3, x0, x0
	beq x8, x3, LBB0_10
LBB0_9:
	sub x10, x0, x1
	jalr x0, LBB0_11 ( x0 )
LBB0_10:                                //  %if.end33
	add x10, x0, x1
LBB0_11:                                //  %if.end33
	beq x1, x3, LBB0_13
LBB0_12:
	slti x1, x0, 1
	jalr x0, LBB0_14 ( x0 )
LBB0_13:                                //  %if.end33
	add x1, x0, x3
LBB0_14:                                //  %if.end33
	beq x8, x3, LBB0_16
LBB0_15:
	sub x3, x0, x11
	sub x11, x3, x1
LBB0_16:                                //  %cleanup
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
	.size	$llrintf, ($func_end0)-($llrintf)
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
