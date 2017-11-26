	.text
	.file	"e_sqrt.bc"
	.globl	$__ieee754_sqrt
	.type	$__ieee754_sqrt,@function
$__ieee754_sqrt:                        //  @__ieee754_sqrt
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
	add x8, x0, x10
	lui x1, 2146435072>>12 &0xfffff
	and x3, x1, x11
	bne x3, x1, LBB0_2
LBB0_1:                                 //  %if.then
	add x10, x0, x8
	add x12, x0, x8
	add x13, x0, x11
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	call $__muldf3
	add x12, x0, x8
	lw x13, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $__adddf3
	add x8, x0, x10
	jalr x0, LBB0_32 ( x0 )
LBB0_2:                                 //  %if.end
	bgt x11, x0, LBB0_8
LBB0_3:                                 //  %if.then3
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	and x1, x1, x11
	or x1, x8, x1
	beqz x1, LBB0_32
LBB0_4:                                 //  %if.else
	bgt x0, x11, LBB0_7
LBB0_5:                                 //  %while.body.preheader
	slti x1, x0, 1
LBB0_6:                                 //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	srli x11, x8, 11
	addi x1, x1, -21
	slli x8, x8, 21
	beqz x11, LBB0_6
	jalr x0, LBB0_10 ( x0 )
LBB0_7:                                 //  %if.then8
	add x10, x0, x8
	add x12, x0, x8
	add x13, x0, x11
	call $__subdf3
	add x12, x0, x10
	add x13, x0, x11
	call $__divdf3
	add x8, x0, x10
	jalr x0, LBB0_32 ( x0 )
LBB0_8:                                 //  %if.end12
	srli x1, x11, 20
	bgtu x1, x0, LBB0_15
LBB0_9:
	slti x1, x0, 1
LBB0_10:                                //  %for.cond.preheader
	lui x4, 1048576>>12 &0xfffff
	and x3, x4, x11
	beqz x3, LBB0_12
LBB0_11:
	add x3, x0, x0
	jalr x0, LBB0_14 ( x0 )
LBB0_12:                                //  %for.body.preheader
	add x3, x0, x0
LBB0_13:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	slli x11, x11, 1
	and x5, x4, x11
	addi x3, x3, 1
	beqz x5, LBB0_13
LBB0_14:                                //  %for.end
	addi x4, x0, 32
	sub x4, x4, x3
	srl x4, x8, x4
	or x11, x11, x4
	sll x8, x8, x3
	sub x1, x1, x3
LBB0_15:                                //  %if.end28
	ori x28, x0, 1048575 & 0xfff
	slli x28, x28, 20
	lui x3, 1048575 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	addi x5, x1, -1023
	and x1, x3, x11
	lui x3, 1048576>>12 &0xfffff
	andi x4, x5, 1
	or x1, x3, x1
	beqz x4, LBB0_17
LBB0_16:                                //  %if.then33
	slli x1, x1, 1
	slt x3, x8, x0
	or x1, x3, x1
	slli x8, x8, 1
LBB0_17:                                //  %if.end39
	slli x1, x1, 1
	slt x3, x8, x0
	or x4, x3, x1
	lui x7, 2097152>>12 &0xfffff
	add x3, x0, x0
	slli x10, x8, 1
	add x1, x0, x3
LBB0_18:                                //  %while.body48
                                        //  =>This Inner Loop Header: Depth=1
	add x9, x7, x3
	bgt x9, x4, LBB0_20
LBB0_19:                                //  %if.then51
                                        //    in Loop: Header=BB0_18 Depth=1
	add x1, x7, x1
	sub x4, x4, x9
	add x3, x7, x9
LBB0_20:                                //  %if.end55
                                        //    in Loop: Header=BB0_18 Depth=1
	srli x9, x8, 30
	andi x9, x9, 1
	slli x4, x4, 1
	srli x7, x7, 1
	or x4, x9, x4
	slli x9, x10, 1
	add x8, x0, x10
	add x10, x0, x9
	bgtu x7, x0, LBB0_18
LBB0_21:                                //  %while.cond63.preheader
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x7, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x7, x28
	add x11, x0, x0
	srli x5, x5, 1
	not x12, x0
	add x7, x0, x11
LBB0_22:                                //  %while.body65
                                        //  =>This Inner Loop Header: Depth=1
	add x13, x10, x11
	bgt x4, x3, LBB0_25
LBB0_23:                                //  %lor.lhs.false
                                        //    in Loop: Header=BB0_22 Depth=1
	bgtu x13, x9, LBB0_26
LBB0_24:                                //  %lor.lhs.false
                                        //    in Loop: Header=BB0_22 Depth=1
	bne x4, x3, LBB0_26
LBB0_25:                                //  %if.then70
                                        //    in Loop: Header=BB0_22 Depth=1
	add x11, x10, x13
	sltu x14, x9, x13
	slt x15, x12, x11
	slti x16, x13, 0
	and x15, x15, x16
	andi x14, x14, 1
	sub x4, x4, x14
	andi x14, x15, 1
	add x7, x10, x7
	sub x9, x9, x13
	sub x4, x4, x3
	add x3, x3, x14
LBB0_26:                                //  %if.end87
                                        //    in Loop: Header=BB0_22 Depth=1
	slli x4, x4, 1
	slt x13, x9, x0
	srli x10, x10, 1
	or x4, x13, x4
	slli x9, x9, 1
	bgtu x10, x0, LBB0_22
LBB0_27:                                //  %while.end94
	or x3, x9, x4
	beqz x3, LBB0_31
LBB0_28:                                //  %if.then99
	xori x3, x7, -1
	bgtu x3, x0, LBB0_30
LBB0_29:                                //  %if.then101
	add x7, x0, x0
	addi x1, x1, 1
	jalr x0, LBB0_31 ( x0 )
LBB0_30:                                //  %if.else111
	andi x3, x7, 1
	add x7, x7, x3
LBB0_31:                                //  %if.end117
	slli x3, x5, 20
	srai x4, x1, 1
	add x3, x4, x3
	lui x4, 1071644672>>12 &0xfffff
	srli x5, x7, 1
	slli x1, x1, 31
	add x11, x4, x3
	or x8, x5, x1
LBB0_32:                                //  %cleanup
	add x10, x0, x8
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
	.size	$__ieee754_sqrt, ($func_end0)-($__ieee754_sqrt)
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
