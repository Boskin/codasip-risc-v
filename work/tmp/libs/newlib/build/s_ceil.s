	.text
	.file	"s_ceil.bc"
	.globl	$ceil
	.type	$ceil,@function
$ceil:                                  //  @ceil
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10, 11, 10, 11
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
	srli x1, x11, 20
	andi x8, x1, 2047
	addi x4, x8, -1023
	addi x1, x0, 19
	bgt x4, x1, LBB0_16
LBB0_1:                                 //  %if.then
	addi x1, x0, 1022
	bgtu x8, x1, LBB0_9
LBB0_2:                                 //  %if.then3
	ori x28, x0, -2013235812 & 0xfff
	slli x28, x28, 20
	lui x1, -2013235812 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 2117592124 & 0xfff
	slli x28, x28, 20
	lui x1, 2117592124 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	sw x11, 16 ( x2 )               //  4-byte Folded Spill
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	call $__adddf3
	add x8, x0, x0
	add x12, x0, x8
	add x13, x0, x8
	call $__gtdf2
	ble x10, x0, LBB0_25
LBB0_3:                                 //  %if.then5
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	lw x4, 16 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x0, x4, LBB0_32
LBB0_4:                                 //  %if.else
	add x8, x0, x3
	or x3, x8, x4
	add x1, x0, x0
	beq x3, x1, LBB0_6
LBB0_5:                                 //  %if.else
	lui x4, 1072693248>>12 &0xfffff
LBB0_6:                                 //  %if.else
	beq x3, x1, LBB0_8
LBB0_7:                                 //  %if.else
	add x8, x0, x1
LBB0_8:                                 //  %if.else
	add x11, x0, x4
	jalr x0, LBB0_32 ( x0 )
LBB0_9:                                 //  %if.else12
	ori x28, x0, 1048575 & 0xfff
	slli x28, x28, 20
	lui x1, 1048575 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	srl x3, x1, x4
	and x1, x11, x3
	or x1, x10, x1
	bgtu x1, x0, LBB0_11
LBB0_10:
	add x8, x0, x10
	jalr x0, LBB0_32 ( x0 )
LBB0_11:                                //  %if.end18
	sw x3, 4 ( x2 )                 //  4-byte Folded Spill
	sw x4, 8 ( x2 )                 //  4-byte Folded Spill
	ori x28, x0, -2013235812 & 0xfff
	slli x28, x28, 20
	lui x1, -2013235812 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 2117592124 & 0xfff
	slli x28, x28, 20
	lui x1, 2117592124 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	sw x11, 16 ( x2 )               //  4-byte Folded Spill
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	call $__adddf3
	add x8, x0, x0
	add x12, x0, x8
	add x13, x0, x8
	call $__gtdf2
	ble x10, x0, LBB0_25
LBB0_12:                                //  %if.then21
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	nop
	ble x3, x8, LBB0_14
LBB0_13:
	lui x1, 1048576>>12 &0xfffff
	lw x4, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	srl x1, x1, x4
	jalr x0, LBB0_15 ( x0 )
LBB0_14:                                //  %if.then21
	add x1, x0, x8
LBB0_15:                                //  %if.then21
	lw x4, 4 ( x2 )                 //  4-byte Folded Reload
	add x1, x3, x1
	not x3, x4
	and x11, x3, x1
	jalr x0, LBB0_32 ( x0 )
LBB0_16:                                //  %if.else30
	slti x1, x4, 52
	bgtu x1, x0, LBB0_22
LBB0_17:                                //  %if.then32
	add x12, x0, x10
	sw x11, 16 ( x2 )               //  4-byte Folded Spill
	add x13, x0, x11
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x4
	call $__adddf3
	addi x1, x0, 1024
	beq x8, x1, LBB0_19
LBB0_18:                                //  %if.then32
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
LBB0_19:                                //  %if.then32
	beq x8, x1, LBB0_21
LBB0_20:                                //  %if.then32
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
LBB0_21:                                //  %if.then32
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
LBB0_22:                                //  %if.else37
	addi x1, x8, -1043
	not x3, x0
	srl x3, x3, x1
	and x1, x10, x3
	bgtu x1, x0, LBB0_24
LBB0_23:
	add x8, x0, x10
	jalr x0, LBB0_32 ( x0 )
LBB0_24:                                //  %if.end43
	sw x3, 4 ( x2 )                 //  4-byte Folded Spill
	sw x4, 8 ( x2 )                 //  4-byte Folded Spill
	ori x28, x0, -2013235812 & 0xfff
	slli x28, x28, 20
	lui x1, -2013235812 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 2117592124 & 0xfff
	slli x28, x28, 20
	lui x1, 2117592124 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	sw x11, 16 ( x2 )               //  4-byte Folded Spill
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	call $__adddf3
	add x12, x0, x0
	add x13, x0, x12
	call $__gtdf2
	bgt x10, x0, LBB0_26
LBB0_25:
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_32 ( x0 )
LBB0_26:                                //  %if.then46
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	lw x4, 16 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x4, x0, LBB0_28
LBB0_27:
	add x11, x0, x4
	add x5, x0, x3
	lw x7, 4 ( x2 )                 //  4-byte Folded Reload
	jalr x0, LBB0_31 ( x0 )
LBB0_28:                                //  %if.then48
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	xori x1, x1, 20
	add x5, x0, x3
	lw x7, 4 ( x2 )                 //  4-byte Folded Reload
	bgtu x1, x0, LBB0_30
LBB0_29:                                //  %if.then50
	addi x11, x4, 1
	jalr x0, LBB0_31 ( x0 )
LBB0_30:                                //  %if.else52
	addi x1, x0, 1075
	sub x1, x1, x8
	slti x3, x0, 1
	sll x1, x3, x1
	add x5, x5, x1
	sltu x1, x5, x1
	andi x1, x1, 1
	add x11, x4, x1
LBB0_31:                                //  %if.end60
	not x1, x7
	and x8, x1, x5
LBB0_32:                                //  %cleanup
	add x10, x0, x8
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	lw x1, 28 ( x2 )
$cfi7:
	.cfi_same_value 1
	addi x2, x2, 32
$cfi8:
	.cfi_adjust_cfa_offset -32
$cfi9:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$ceil, ($func_end0)-($ceil)
	.cfi_endproc


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
