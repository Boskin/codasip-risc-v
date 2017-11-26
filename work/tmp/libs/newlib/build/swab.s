	.text
	.file	"swab.bc"
	.globl	$swab
	.type	$swab,@function
$swab:                                  //  @swab
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	slti x3, x12, 2
	beqz x3, LBB0_2
LBB0_1:
	slti x3, x0, 1
	jalr x0, LBB0_5 ( x0 )
LBB0_2:                                 //  %for.body.preheader
	add x3, x0, x0
LBB0_3:                                 //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	add x4, x3, x10
	lb x5, 0 ( x4 )
	lb x4, 1 ( x4 )
	add x7, x3, x11
	addi x9, x3, 3
	sb x5, 1 ( x7 )
	sb x4, 0 ( x7 )
	addi x3, x3, 2
	bgt x12, x9, LBB0_3
LBB0_4:                                 //  %for.end.loopexit
	addi x3, x3, 1
LBB0_5:                                 //  %for.end
	bne x3, x12, LBB0_7
LBB0_6:                                 //  %if.then
	add x3, x12, x11
	sb x0, -1 ( x3 )
LBB0_7:                                 //  %if.end
	ret
$func_end0:
	.size	$swab, ($func_end0)-($swab)
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
