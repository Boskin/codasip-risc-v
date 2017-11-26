	.text
	.file	"argz_extract.bc"
	.globl	$argz_extract
	.type	$argz_extract,@function
$argz_extract:                          //  @argz_extract
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs
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
	sw x12, 8 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x11
	sw x10, 4 ( x2 )                //  4-byte Folded Spill
	call $argz_count
	lw x7, 4 ( x2 )                 //  4-byte Folded Reload
	lw x5, 8 ( x2 )                 //  4-byte Folded Reload
	sltiu x1, x8, 2
	bgtu x1, x0, LBB0_6
LBB0_1:                                 //  %if.then
	xori x1, x8, 2
	beqz x1, LBB0_6
LBB0_2:                                 //  %for.body.preheader
	add x1, x0, x0
LBB0_3:                                 //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	add x3, x8, x7
	lbu x4, -2 ( x3 )
	nop
	bgtu x4, x0, LBB0_5
LBB0_4:                                 //  %if.then4
                                        //    in Loop: Header=BB0_3 Depth=1
	addi x1, x1, 1
	sub x4, x10, x1
	slli x4, x4, 2
	add x4, x4, x5
	addi x3, x3, -1
	sw x3, 0 ( x4 )
LBB0_5:                                 //  %for.inc
                                        //    in Loop: Header=BB0_3 Depth=1
	addi x8, x8, -1
	xori x3, x8, 2
	bgtu x3, x0, LBB0_3
LBB0_6:                                 //  %if.end8
	slli x1, x10, 2
	add x1, x1, x5
	sw x7, 0 ( x5 )
	sw x0, 0 ( x1 )
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
	.size	$argz_extract, ($func_end0)-($argz_extract)
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
