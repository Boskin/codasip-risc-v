	.text
	.file	"argz_replace.bc"
	.globl	$argz_replace
	.type	$argz_replace,@function
$argz_replace:                          //  @argz_replace
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -64
$cfi2:
	.cfi_adjust_cfa_offset 64
	sw x1, 60 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 52 ( x2 )                //  4-byte Folded Spill
	sw x14, 36 ( x2 )               //  4-byte Folded Spill
	sw x13, 28 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x11
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	sw x12, 40 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x12
	call $strlen
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	nop
	call $strlen
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 0 ( x1 )
	lw x3, 0 ( x8 )
	lw x4, 36 ( x2 )                //  4-byte Folded Reload
	nop
	sw x0, 0 ( x4 )
	lw x4, 24 ( x2 )                //  4-byte Folded Reload
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	sub x4, x10, x4
	sw x4, 32 ( x2 )                //  4-byte Folded Spill
	sw x1, 48 ( x2 )
	sw x3, 44 ( x2 )
	sw x8, 8 ( x2 )                 //  4-byte Folded Spill
	lw x1, 0 ( x8 )
	nop
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	addi x8, x2, 44
LBB0_1:                                 //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	lw x1, 44 ( x2 )
	nop
	beqz x1, LBB0_4
LBB0_2:                                 //  %while.body
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	addi x11, x2, 48
	add x12, x0, x8
	call $_buf_findstr
	beqz x10, LBB0_1
LBB0_3:                                 //  %if.then
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x4, 36 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 0 ( x4 )
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	lw x5, 32 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x3, x5
	sw x3, 16 ( x2 )                //  4-byte Folded Spill
	addi x1, x1, 1
	sw x1, 0 ( x4 )
	jalr x0, LBB0_1 ( x0 )
LBB0_4:                                 //  %while.end
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 0 ( x1 )
	nop
	beqz x1, LBB0_19
LBB0_5:                                 //  %if.then6
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $malloc
	addi x1, x0, 12
	beqz x10, LBB0_20
LBB0_6:                                 //  %if.end10
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	lw x11, 0 ( x1 )
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	lw x1, 0 ( x1 )
	sw x11, 48 ( x2 )
	sw x1, 44 ( x2 )
	sw x10, 4 ( x2 )                //  4-byte Folded Spill
	bgtu x1, x0, LBB0_8
LBB0_7:
	add x1, x0, x0
	add x3, x0, x11
	jalr x0, LBB0_14 ( x0 )
LBB0_8:                                 //  %while.body13.preheader
	add x8, x0, x10
	jalr x0, LBB0_11 ( x0 )
LBB0_9:                                 //  %if.then16
                                        //    in Loop: Header=BB0_11 Depth=1
	lw x1, 48 ( x2 )
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	nop
	add x3, x3, x11
	sw x3, 32 ( x2 )                //  4-byte Folded Spill
	sub x12, x1, x3
	add x10, x0, x8
	call $memcpy
	lw x1, 48 ( x2 )
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x3
	add x10, x1, x8
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	lw x11, 28 ( x2 )               //  4-byte Folded Reload
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	nop
	add x12, x0, x8
	call $memcpy
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	add x8, x8, x1
	lw x11, 48 ( x2 )
LBB0_10:                                //  %while.cond11thread-pre-split
                                        //    in Loop: Header=BB0_11 Depth=1
	lw x1, 44 ( x2 )
	nop
	beqz x1, LBB0_13
LBB0_11:                                //  %while.body13
                                        //  =>This Inner Loop Header: Depth=1
	sw x11, 36 ( x2 )               //  4-byte Folded Spill
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	addi x11, x2, 48
	addi x12, x2, 44
	call $_buf_findstr
	bgtu x10, x0, LBB0_9
LBB0_12:                                //    in Loop: Header=BB0_11 Depth=1
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_10 ( x0 )
LBB0_13:                                //  %while.end26.loopexit
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	lw x1, 0 ( x1 )
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	nop
	lw x3, 0 ( x3 )
	add x10, x0, x8
LBB0_14:                                //  %while.end26
	add x1, x1, x3
	sub x12, x1, x11
	call $memcpy
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	lw x10, 0 ( x1 )
	lw x8, 16 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	call $realloc
	bgtu x10, x0, LBB0_16
LBB0_15:                                //  %if.then34
	lw x10, 4 ( x2 )                //  4-byte Folded Reload
	nop
	call $free
	addi x1, x0, 12
	jalr x0, LBB0_20 ( x0 )
LBB0_16:                                //  %if.end35
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sw x10, 0 ( x1 )
	lw x11, 4 ( x2 )                //  4-byte Folded Reload
	add x12, x0, x8
	call $memcpy
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x8, 0 ( x1 )
	bgtu x8, x0, LBB0_18
LBB0_17:                                //  %if.then37
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	nop
	lw x10, 0 ( x8 )
	nop
	call $free
	sw x0, 0 ( x8 )
LBB0_18:                                //  %if.end38
	lw x10, 4 ( x2 )                //  4-byte Folded Reload
	nop
	call $free
LBB0_19:                                //  %cleanup
	add x1, x0, x0
LBB0_20:                                //  %cleanup
	add x10, x0, x1
	lw x8, 52 ( x2 )                //  4-byte Folded Reload
	lw x1, 60 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 64
$cfi5:
	.cfi_adjust_cfa_offset -64
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$argz_replace, ($func_end0)-($argz_replace)
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
