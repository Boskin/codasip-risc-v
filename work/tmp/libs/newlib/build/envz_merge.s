	.text
	.file	"envz_merge.bc"
	.globl	$envz_merge
	.type	$envz_merge,@function
$envz_merge:                            //  @envz_merge
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -40
$cfi2:
	.cfi_adjust_cfa_offset 40
	sw x1, 36 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 28 ( x2 )                //  4-byte Folded Spill
	sw x14, 24 ( x2 )               //  4-byte Folded Spill
	sw x11, 16 ( x2 )               //  4-byte Folded Spill
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x0
	sw x12, 4 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x12
	sw x13, 8 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x13
	add x12, x0, x8
	call $argz_next
	beqz x10, LBB0_12
LBB0_1:                                 //  %while.body.lr.ph
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB0_8
LBB0_2:                                 //  %while.body.us
                                        //  =>This Inner Loop Header: Depth=1
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	call $strdup
	add x8, x0, x10
	addi x11, x0, 61
	call $strchr
	beqz x10, LBB0_4
LBB0_3:                                 //  %if.then8.us
                                        //    in Loop: Header=BB0_2 Depth=1
	sb x0, 0 ( x10 )
LBB0_4:                                 //  %if.end.us
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	lw x11, 0 ( x1 )
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	lw x10, 0 ( x1 )
	add x12, x0, x8
	call $envz_entry
	add x1, x0, x0
	bgtu x10, x0, LBB0_6
LBB0_5:                                 //  %if.then11.us
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	lw x12, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $argz_add
	add x1, x0, x10
LBB0_6:                                 //  %if.end13.us
                                        //    in Loop: Header=BB0_2 Depth=1
	add x10, x0, x8
	add x8, x0, x1
	call $free
	lw x10, 4 ( x2 )                //  4-byte Folded Reload
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	lw x12, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $argz_next
	bgtu x8, x0, LBB0_12
LBB0_7:                                 //  %if.end13.us
                                        //    in Loop: Header=BB0_2 Depth=1
	bgtu x10, x0, LBB0_2
	jalr x0, LBB0_12 ( x0 )
LBB0_8:                                 //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	call $strdup
	add x8, x0, x10
	addi x11, x0, 61
	call $strchr
	add x13, x0, x0
	beqz x10, LBB0_10
LBB0_9:                                 //  %if.then17
                                        //    in Loop: Header=BB0_8 Depth=1
	sb x0, 0 ( x10 )
	addi x13, x10, 1
LBB0_10:                                //  %if.end19
                                        //    in Loop: Header=BB0_8 Depth=1
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x8
	call $envz_add
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	call $free
	lw x10, 4 ( x2 )                //  4-byte Folded Reload
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	lw x12, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $argz_next
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x8, x0, LBB0_12
LBB0_11:                                //  %if.end19
                                        //    in Loop: Header=BB0_8 Depth=1
	bgtu x10, x0, LBB0_8
LBB0_12:                                //  %while.end
	add x10, x0, x8
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	lw x1, 36 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 40
$cfi5:
	.cfi_adjust_cfa_offset -40
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$envz_merge, ($func_end0)-($envz_merge)
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
