	.text
	.file	"strchr.bc"
	.globl	$strchr
	.type	$strchr,@function
$strchr:                                //  @strchr
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	andi x4, x11, 255
	andi x3, x10, 3
	beqz x4, LBB0_6
LBB0_1:                                 //  %while.cond17.preheader
	beqz x3, LBB0_15
LBB0_2:
	add x3, x0, x0
LBB0_3:                                 //  %while.body20
                                        //  =>This Inner Loop Header: Depth=1
	lbu x5, 0 ( x10 )
	nop
	beqz x5, LBB0_24
LBB0_4:                                 //  %if.end23
                                        //    in Loop: Header=BB0_3 Depth=1
	bne x5, x4, LBB0_14
LBB0_5:
	ret
LBB0_6:                                 //  %while.cond.preheader
	beqz x3, LBB0_10
LBB0_7:                                 //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	lbu x3, 0 ( x10 )
	nop
	bgtu x3, x0, LBB0_9
LBB0_8:
	ret
LBB0_9:                                 //  %if.end
                                        //    in Loop: Header=BB0_7 Depth=1
	addi x10, x10, 1
	andi x3, x10, 3
	bgtu x3, x0, LBB0_7
LBB0_10:                                //  %while.end
	addi x3, x10, -4
	lui x4, -16843009 >> 12 & 0xfffff
	lui x5, -2139062144 >> 12 & 0xfffff
LBB0_11:                                //  %while.cond4
                                        //  =>This Inner Loop Header: Depth=1
	ori x28, x0, -16843009 & 0xfff
	slli x28, x28, 20
	lw x7, 4 ( x3 )
	srli x28, x28, 20
	or x9, x4, x28
	ori x28, x0, -2139062144 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	add x9, x9, x7
	not x10, x7
	and x9, x9, x10
	or x10, x5, x28
	and x9, x10, x9
	addi x3, x3, 4
	beqz x9, LBB0_11
LBB0_12:                                //  %while.end10
	andi x4, x7, 255
	beqz x4, LBB0_24
LBB0_13:                                //  %while.cond11.while.cond11_crit_edge
                                        //  =>This Inner Loop Header: Depth=1
	lbu x4, 1 ( x3 )
	addi x3, x3, 1
	bgtu x4, x0, LBB0_13
	jalr x0, LBB0_24 ( x0 )
LBB0_14:                                //  %if.end28
                                        //    in Loop: Header=BB0_3 Depth=1
	addi x10, x10, 1
	andi x5, x10, 3
	bgtu x5, x0, LBB0_3
LBB0_15:                                //  %while.end30
	ori x28, x0, -16843009 & 0xfff
	slli x28, x28, 20
	lw x7, 0 ( x10 )
	lui x3, -16843009 >> 12 & 0xfffff
	srli x28, x28, 20
	or x5, x3, x28
	ori x28, x0, -2139062144 & 0xfff
	slli x28, x28, 20
	add x9, x5, x7
	not x11, x7
	lui x5, -2139062144 >> 12 & 0xfffff
	srli x28, x28, 20
	and x9, x9, x11
	or x11, x5, x28
	and x9, x11, x9
	bgtu x9, x0, LBB0_19
LBB0_16:                                //  %land.rhs.preheader
	slli x9, x4, 8
	or x9, x4, x9
	slli x11, x9, 16
	or x9, x9, x11
LBB0_17:                                //  %land.rhs
                                        //  =>This Inner Loop Header: Depth=1
	ori x28, x0, -16843009 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x3, x28
	ori x28, x0, -2139062144 & 0xfff
	xor x7, x9, x7
	slli x28, x28, 20
	srli x28, x28, 20
	add x11, x11, x7
	not x7, x7
	and x7, x11, x7
	or x11, x5, x28
	and x7, x11, x7
	bgtu x7, x0, LBB0_19
LBB0_18:                                //  %while.body48
                                        //    in Loop: Header=BB0_17 Depth=1
	ori x28, x0, -16843009 & 0xfff
	slli x28, x28, 20
	lw x7, 4 ( x10 )
	srli x28, x28, 20
	or x11, x3, x28
	ori x28, x0, -2139062144 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	add x11, x11, x7
	not x12, x7
	and x11, x11, x12
	or x12, x5, x28
	and x11, x12, x11
	addi x10, x10, 4
	beqz x11, LBB0_17
LBB0_19:                                //  %while.end50
	addi x3, x10, -1
LBB0_20:                                //  %while.cond51
                                        //  =>This Inner Loop Header: Depth=1
	lbu x5, 1 ( x3 )
	addi x3, x3, 1
	beq x5, x4, LBB0_22
LBB0_21:                                //  %while.cond51
                                        //    in Loop: Header=BB0_20 Depth=1
	bgtu x5, x0, LBB0_20
LBB0_22:                                //  %while.end62
	beq x5, x4, LBB0_24
LBB0_23:                                //  %while.end62
	add x3, x0, x0
LBB0_24:                                //  %cleanup
	add x10, x0, x3
	ret
$func_end0:
	.size	$strchr, ($func_end0)-($strchr)
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
