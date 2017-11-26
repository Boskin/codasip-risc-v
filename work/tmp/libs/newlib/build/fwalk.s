	.text
	.file	"fwalk.bc"
	.globl	$_fwalk
	.type	$_fwalk,@function
$_fwalk:                                //  @_fwalk
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
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
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	add x4, x0, x0
	addi x3, x10, 736
	slti x5, x0, 1
LBB0_1:                                 //  %for.body
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_3 Depth 2
	lw x1, 4 ( x3 )
	sw x3, 4 ( x2 )                 //  4-byte Folded Spill
	ble x1, x0, LBB0_7
LBB0_2:                                 //  %for.body3.preheader
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x7, x1, 1
	lw x8, 8 ( x3 )
	nop
LBB0_3:                                 //  %for.body3
                                        //    Parent Loop BB0_1 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lhu x1, 12 ( x8 )
	nop
	sltiu x1, x1, 2
	bgtu x1, x0, LBB0_6
LBB0_4:                                 //  %land.lhs.true10
                                        //    in Loop: Header=BB0_3 Depth=2
	ori x28, x0, 65535 & 0xfff
	lhu x1, 14 ( x8 )
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, 65535 >> 12 & 0xfffff
	or x3, x3, x28
	beq x1, x3, LBB0_6
LBB0_5:                                 //  %if.then
                                        //    in Loop: Header=BB0_3 Depth=2
	add x10, x0, x8
	sw x4, 16 ( x2 )                //  4-byte Folded Spill
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	sw x7, 12 ( x2 )                //  4-byte Folded Spill
	call_reg x1
	lw x7, 12 ( x2 )                //  4-byte Folded Reload
	slti x5, x0, 1
	lw x4, 16 ( x2 )                //  4-byte Folded Reload
	nop
	or x4, x4, x10
LBB0_6:                                 //  %for.inc
                                        //    in Loop: Header=BB0_3 Depth=2
	addi x7, x7, -1
	addi x8, x8, 104
	bgt x7, x5, LBB0_3
LBB0_7:                                 //  %for.inc14
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x3, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	lw x3, 0 ( x3 )
	nop
	bgtu x3, x0, LBB0_1
LBB0_8:                                 //  %for.end15
	add x10, x0, x4
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
$func_end0:
	.size	$_fwalk, ($func_end0)-($_fwalk)
	.cfi_endproc

	.globl	$_fwalk_reent
	.type	$_fwalk_reent,@function
$_fwalk_reent:                          //  @_fwalk_reent
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	addi x2, x2, -40
$cfi9:
	.cfi_adjust_cfa_offset 40
	sw x1, 36 ( x2 )
$cfi10:
	.cfi_offset 1, -4
	sw x8, 28 ( x2 )                //  4-byte Folded Spill
	sw x11, 12 ( x2 )               //  4-byte Folded Spill
	add x4, x0, x0
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	addi x3, x10, 736
	slti x5, x0, 1
LBB1_1:                                 //  %for.body
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_3 Depth 2
	lw x1, 4 ( x3 )
	sw x3, 8 ( x2 )                 //  4-byte Folded Spill
	ble x1, x0, LBB1_7
LBB1_2:                                 //  %for.body3.preheader
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x7, x1, 1
	lw x8, 8 ( x3 )
	nop
LBB1_3:                                 //  %for.body3
                                        //    Parent Loop BB1_1 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lhu x1, 12 ( x8 )
	nop
	sltiu x1, x1, 2
	bgtu x1, x0, LBB1_6
LBB1_4:                                 //  %land.lhs.true10
                                        //    in Loop: Header=BB1_3 Depth=2
	ori x28, x0, 65535 & 0xfff
	lhu x1, 14 ( x8 )
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, 65535 >> 12 & 0xfffff
	or x3, x3, x28
	beq x1, x3, LBB1_6
LBB1_5:                                 //  %if.then
                                        //    in Loop: Header=BB1_3 Depth=2
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	sw x4, 24 ( x2 )                //  4-byte Folded Spill
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	sw x7, 20 ( x2 )                //  4-byte Folded Spill
	call_reg x1
	lw x7, 20 ( x2 )                //  4-byte Folded Reload
	slti x5, x0, 1
	lw x4, 24 ( x2 )                //  4-byte Folded Reload
	nop
	or x4, x4, x10
LBB1_6:                                 //  %for.inc
                                        //    in Loop: Header=BB1_3 Depth=2
	addi x7, x7, -1
	addi x8, x8, 104
	bgt x7, x5, LBB1_3
LBB1_7:                                 //  %for.inc14
                                        //    in Loop: Header=BB1_1 Depth=1
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	lw x3, 0 ( x3 )
	nop
	bgtu x3, x0, LBB1_1
LBB1_8:                                 //  %for.end15
	add x10, x0, x4
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	lw x1, 36 ( x2 )
$cfi11:
	.cfi_same_value 1
	addi x2, x2, 40
$cfi12:
	.cfi_adjust_cfa_offset -40
$cfi13:
	.cfi_def_cfa 2, 0
	ret
$func_end1:
	.size	$_fwalk_reent, ($func_end1)-($_fwalk_reent)
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
