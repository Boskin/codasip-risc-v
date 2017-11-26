	.text
	.file	"freer.bc"
	.globl	$_free_r
	.type	$_free_r,@function
$_free_r:                               //  @_free_r
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	beqz x11, LBB0_21
LBB0_1:                                 //  %if.end
	lw x4, -4 ( x11 )
	add x5, x0, x0
	addi x3, x11, -4
	ble x5, x4, LBB0_3
LBB0_2:
	add x3, x4, x3
LBB0_3:                                 //  %if.end
	lui x5, $__malloc_free_list >> 12 & 0xfffff
	ori x28, x0, $__malloc_free_list & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x5, x28
	lw x4, 0 ( x4 )
	nop
	bgtu x4, x0, LBB0_6
LBB0_4:                                 //  %if.then2
	sw x0, 4 ( x3 )
LBB0_5:                                 //  %cleanup
	ori x28, x0, $__malloc_free_list & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x5, x28
	sw x3, 0 ( x4 )
	ret
LBB0_6:                                 //  %if.end3
	bgeu x3, x4, LBB0_10
LBB0_7:                                 //  %if.then5
	lw x7, 0 ( x3 )
	nop
	add x9, x7, x3
	bne x9, x4, LBB0_9
LBB0_8:                                 //  %if.then7
	lw x9, 0 ( x4 )
	nop
	add x7, x7, x9
	sw x7, 0 ( x3 )
	lw x4, 4 ( x4 )
	nop
LBB0_9:                                 //  %if.end13
	sw x4, 4 ( x3 )
	jalr x0, LBB0_5 ( x0 )
LBB0_10:                                //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	add x5, x0, x4
	lw x4, 4 ( x5 )
	nop
	beqz x4, LBB0_12
LBB0_11:                                //  %do.body
                                        //    in Loop: Header=BB0_10 Depth=1
	bgeu x3, x4, LBB0_10
LBB0_12:                                //  %do.end
	lw x7, 0 ( x5 )
	nop
	add x9, x7, x5
	bne x9, x3, LBB0_15
LBB0_13:                                //  %if.then20
	lw x3, 0 ( x3 )
	nop
	add x3, x7, x3
	sw x3, 0 ( x5 )
	add x7, x3, x5
	bne x7, x4, LBB0_21
LBB0_14:                                //  %if.then27
	lw x7, 0 ( x4 )
	nop
	add x3, x3, x7
	sw x3, 0 ( x5 )
	lw x3, 4 ( x4 )
	jalr x0, LBB0_20 ( x0 )
LBB0_15:                                //  %if.else34
	bgeu x3, x9, LBB0_17
LBB0_16:                                //  %if.then38
	addi x3, x0, 12
	sw x3, 0 ( x10 )
	ret
LBB0_17:                                //  %if.else39
	lw x7, 0 ( x3 )
	nop
	add x9, x7, x3
	bne x9, x4, LBB0_19
LBB0_18:                                //  %if.then43
	lw x9, 0 ( x4 )
	nop
	add x7, x7, x9
	sw x7, 0 ( x3 )
	lw x4, 4 ( x4 )
	nop
LBB0_19:                                //  %if.else50
	sw x4, 4 ( x3 )
LBB0_20:                                //  %if.end55.sink.split
	sw x3, 4 ( x5 )
LBB0_21:                                //  %cleanup
	ret
$func_end0:
	.size	$_free_r, ($func_end0)-($_free_r)
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
