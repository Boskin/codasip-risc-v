	.text
	.file	"fgets.bc"
	.globl	$_fgets_r
	.type	$_fgets_r,@function
$_fgets_r:                              //  @_fgets_r
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -48
$cfi2:
	.cfi_adjust_cfa_offset 48
	sw x1, 44 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 36 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x12
	add x4, x0, x13
	slti x1, x8, 2
	add x3, x0, x0
	sw x3, 4 ( x2 )                 //  4-byte Folded Spill
	bgtu x1, x0, LBB0_15
LBB0_1:                                 //  %if.end
	sw x11, 16 ( x2 )               //  4-byte Folded Spill
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	sw x4, 8 ( x2 )                 //  4-byte Folded Spill
	beqz x10, LBB0_4
LBB0_2:                                 //  %land.lhs.true
	lw x1, 56 ( x10 )
	nop
	bgtu x1, x0, LBB0_4
LBB0_3:                                 //  %if.then2
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__sinit
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	lw x4, 8 ( x2 )                 //  4-byte Folded Reload
LBB0_4:                                 //  %if.end3
	addi x3, x8, -1
	lw x5, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sw x5, 24 ( x2 )                //  4-byte Folded Spill
LBB0_5:                                 //  %do.body9
                                        //  =>This Inner Loop Header: Depth=1
	lw x1, 4 ( x4 )
	sw x3, 28 ( x2 )                //  4-byte Folded Spill
	bgtu x1, x0, LBB0_9
LBB0_6:                                 //  %if.then12
                                        //    in Loop: Header=BB0_5 Depth=1
	add x11, x0, x4
	add x8, x0, x4
	call $__srefill_r
	beqz x10, LBB0_8
LBB0_7:                                 //  %if.then14
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	lw x5, 16 ( x2 )                //  4-byte Folded Reload
	nop
	bne x1, x5, LBB0_14
	jalr x0, LBB0_15 ( x0 )
LBB0_8:                                 //  %if.end31
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 4 ( x8 )
	add x4, x0, x8
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	nop
LBB0_9:                                 //  %if.end33
                                        //    in Loop: Header=BB0_5 Depth=1
	add x12, x0, x3
	bgtu x1, x3, LBB0_11
LBB0_10:                                //  %if.end33
                                        //    in Loop: Header=BB0_5 Depth=1
	add x12, x0, x1
LBB0_11:                                //  %if.end33
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x10, 0 ( x4 )
	nop
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	addi x11, x0, 10
	sw x12, 32 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x4
	call $memchr
	beqz x10, LBB0_13
LBB0_12:                                //  %if.then41
	lw x1, 4 ( x8 )
	addi x3, x10, 1
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	nop
	sub x12, x3, x11
	sw x12, 32 ( x2 )               //  4-byte Folded Spill
	sub x1, x1, x12
	sw x1, 4 ( x8 )
	sw x3, 0 ( x8 )
	lw x8, 24 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	call $memcpy
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x8
	sb x0, 0 ( x1 )
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 4 ( x2 )                 //  4-byte Folded Spill
	jalr x0, LBB0_15 ( x0 )
LBB0_13:                                //  %if.end57
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 4 ( x8 )
	lw x12, 32 ( x2 )               //  4-byte Folded Reload
	nop
	sub x1, x1, x12
	sw x1, 4 ( x8 )
	lw x1, 0 ( x8 )
	nop
	add x1, x12, x1
	sw x1, 0 ( x8 )
	lw x8, 24 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	nop
	call $memcpy
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sub x3, x3, x1
	add x8, x1, x8
	sw x8, 24 ( x2 )                //  4-byte Folded Spill
	lw x5, 16 ( x2 )                //  4-byte Folded Reload
	lw x4, 8 ( x2 )                 //  4-byte Folded Reload
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	bgtu x3, x0, LBB0_5
LBB0_14:                                //  %do.end67
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	sb x0, 0 ( x1 )
	sw x5, 4 ( x2 )                 //  4-byte Folded Spill
LBB0_15:                                //  %cleanup
	lw x10, 4 ( x2 )                //  4-byte Folded Reload
	lw x8, 36 ( x2 )                //  4-byte Folded Reload
	lw x1, 44 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 48
$cfi5:
	.cfi_adjust_cfa_offset -48
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$_fgets_r, ($func_end0)-($_fgets_r)
	.cfi_endproc

	.globl	$fgets
	.type	$fgets,@function
$fgets:                                 //  @fgets
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	add x3, x0, x12
	add x4, x0, x11
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x5, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x5, x5, x28
	lw x5, 0 ( x5 )
	add x11, x0, x10
	add x12, x0, x4
	add x13, x0, x3
	add x10, x0, x5
	j $_fgets_r
$func_end1:
	.size	$fgets, ($func_end1)-($fgets)
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
