	.text
	.file	"memchr.bc"
	.globl	$memchr
	.type	$memchr,@function
$memchr:                                //  @memchr
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	andi x3, x10, 3
	beqz x3, LBB0_6
LBB0_1:                                 //  %while.body.lr.ph
	add x3, x0, x0
	andi x4, x11, 255
LBB0_2:                                 //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	beqz x12, LBB0_15
LBB0_3:                                 //  %if.end
                                        //    in Loop: Header=BB0_2 Depth=1
	lbu x5, 0 ( x10 )
	nop
	bne x5, x4, LBB0_5
LBB0_4:
	ret
LBB0_5:                                 //  %if.end6
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x10, x10, 1
	andi x5, x10, 3
	addi x12, x12, -1
	bgtu x5, x0, LBB0_2
LBB0_6:                                 //  %while.end
	sltiu x3, x12, 4
	bgtu x3, x0, LBB0_10
LBB0_7:                                 //  %if.then9
	andi x3, x11, 255
	slli x4, x3, 8
	or x3, x3, x4
	slli x4, x3, 16
	or x3, x3, x4
	lui x4, -16843009 >> 12 & 0xfffff
	lui x5, -2139062144 >> 12 & 0xfffff
	addi x7, x0, 3
LBB0_8:                                 //  %while.body22
                                        //  =>This Inner Loop Header: Depth=1
	ori x28, x0, -16843009 & 0xfff
	lw x9, 0 ( x10 )
	slli x28, x28, 20
	srli x28, x28, 20
	or x13, x4, x28
	ori x28, x0, -2139062144 & 0xfff
	xor x9, x3, x9
	slli x28, x28, 20
	srli x28, x28, 20
	add x13, x13, x9
	not x9, x9
	and x9, x13, x9
	or x13, x5, x28
	and x9, x13, x9
	bgtu x9, x0, LBB0_10
LBB0_9:                                 //  %if.end28
                                        //    in Loop: Header=BB0_8 Depth=1
	addi x12, x12, -4
	addi x10, x10, 4
	bgtu x12, x7, LBB0_8
LBB0_10:                                //  %while.cond33.preheader
	add x3, x0, x0
	beqz x12, LBB0_15
LBB0_11:                                //  %while.body36.lr.ph
	andi x4, x11, 255
LBB0_12:                                //  %while.body36
                                        //  =>This Inner Loop Header: Depth=1
	lbu x5, 0 ( x10 )
	nop
	bne x5, x4, LBB0_14
LBB0_13:
	ret
LBB0_14:                                //  %if.end42
                                        //    in Loop: Header=BB0_12 Depth=1
	addi x12, x12, -1
	addi x10, x10, 1
	bgtu x12, x0, LBB0_12
LBB0_15:                                //  %cleanup
	add x10, x0, x3
	ret
$func_end0:
	.size	$memchr, ($func_end0)-($memchr)
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