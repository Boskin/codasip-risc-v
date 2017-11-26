	.text
	.file	"strncasecmp.bc"
	.globl	$strncasecmp
	.type	$strncasecmp,@function
$strncasecmp:                           //  @strncasecmp
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	add x4, x0, x0
	beqz x12, LBB0_9
LBB0_1:                                 //  %for.body.lr.ph
	ori x28, x0, $__ctype_ptr__ & 0xfff
	slli x28, x28, 20
	lui x3, $__ctype_ptr__ >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	lw x3, 0 ( x3 )
	nop
	addi x5, x3, 1
	slti x7, x0, 1
LBB0_2:                                 //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	lbu x9, 0 ( x11 )
	nop
	add x3, x9, x5
	lbu x3, 0 ( x3 )
	nop
	andi x3, x3, 3
	bne x3, x7, LBB0_4
LBB0_3:                                 //    in Loop: Header=BB0_2 Depth=1
	addi x9, x9, 32
LBB0_4:                                 //  %for.body
                                        //    in Loop: Header=BB0_2 Depth=1
	lbu x3, 0 ( x10 )
	nop
	add x13, x3, x5
	lbu x13, 0 ( x13 )
	nop
	andi x13, x13, 3
	bne x13, x7, LBB0_6
LBB0_5:                                 //    in Loop: Header=BB0_2 Depth=1
	addi x3, x3, 32
LBB0_6:                                 //  %for.body
                                        //    in Loop: Header=BB0_2 Depth=1
	sub x3, x3, x9
	beqz x9, LBB0_10
LBB0_7:                                 //  %for.body
                                        //    in Loop: Header=BB0_2 Depth=1
	bgtu x3, x0, LBB0_10
LBB0_8:                                 //  %for.inc
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x10, x10, 1
	addi x11, x11, 1
	addi x12, x12, -1
	bgtu x12, x0, LBB0_2
LBB0_9:
	add x3, x0, x4
LBB0_10:                                //  %for.end
	add x10, x0, x3
	ret
$func_end0:
	.size	$strncasecmp, ($func_end0)-($strncasecmp)
	.cfi_endproc

	.address_space	0	

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
