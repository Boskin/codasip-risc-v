	.text
	.file	"envz_get.bc"
	.globl	$envz_get
	.type	$envz_get,@function
$envz_get:                              //  @envz_get
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
	add x8, x0, x12
	sw x10, 8 ( x2 )
	add x10, x0, x0
	sw x11, 4 ( x2 )
	beqz x11, LBB0_8
LBB0_1:                                 //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	add x10, x0, x8
	addi x11, x2, 8
	addi x12, x2, 4
	call $_buf_findstr
	bgtu x10, x0, LBB0_4
LBB0_2:                                 //  %while.condthread-pre-split
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 4 ( x2 )
	nop
	bgtu x1, x0, LBB0_1
LBB0_3:
	add x10, x0, x0
	jalr x0, LBB0_8 ( x0 )
LBB0_4:                                 //  %if.then
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 8 ( x2 )
	nop
	lbu x3, 0 ( x1 )
	nop
	bgtu x3, x0, LBB0_6
LBB0_5:
	add x10, x0, x0
	jalr x0, LBB0_8 ( x0 )
LBB0_6:                                 //  %if.then
                                        //    in Loop: Header=BB0_1 Depth=1
	xori x3, x3, 61
	bgtu x3, x0, LBB0_2
LBB0_7:                                 //  %if.then3
	addi x10, x1, 1
	sw x10, 8 ( x2 )
LBB0_8:                                 //  %cleanup
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
	.size	$envz_get, ($func_end0)-($envz_get)
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
