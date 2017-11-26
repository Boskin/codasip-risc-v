	.text
	.file	"argz_create_sep.bc"
	.globl	$argz_create_sep
	.type	$argz_create_sep,@function
$argz_create_sep:                       //  @argz_create_sep
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
	sw x0, 20 ( x2 )
	sw x0, 0 ( x13 )
	beqz x10, LBB0_2
LBB0_1:                                 //  %lor.lhs.false
	lbu x1, 0 ( x10 )
	nop
	bgtu x1, x0, LBB0_3
LBB0_2:                                 //  %if.then
	sw x0, 0 ( x12 )
	jalr x0, LBB0_13 ( x0 )
LBB0_3:                                 //  %if.end
	sw x13, 16 ( x2 )               //  4-byte Folded Spill
	sw x12, 12 ( x2 )               //  4-byte Folded Spill
	sb x0, 27 ( x2 )
	sb x11, 26 ( x2 )
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	call $strdup
	sw x10, 4 ( x2 )                //  4-byte Folded Spill
	sw x10, 20 ( x2 )
	addi x10, x2, 20
	addi x11, x2, 26
	call $strsep
	bgtu x10, x0, LBB0_5
LBB0_4:
	add x8, x0, x0
	jalr x0, LBB0_7 ( x0 )
LBB0_5:                                 //  %while.body.preheader
	add x8, x0, x0
LBB0_6:                                 //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	call $strlen
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 0 ( x3 )
	nop
	add x1, x1, x10
	addi x1, x1, 1
	sw x1, 0 ( x3 )
	addi x10, x2, 20
	addi x11, x2, 26
	call $strsep
	addi x8, x8, 1
	bgtu x10, x0, LBB0_6
LBB0_7:                                 //  %while.end
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	lw x10, 0 ( x1 )
	nop
	call $malloc
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sw x10, 0 ( x1 )
	bgtu x10, x0, LBB0_9
LBB0_8:
	addi x10, x0, 12
	jalr x0, LBB0_14 ( x0 )
LBB0_9:                                 //  %if.end12
	lw x10, 4 ( x2 )                //  4-byte Folded Reload
	nop
	call $free
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $strdup
	sw x10, 4 ( x2 )                //  4-byte Folded Spill
	sw x10, 20 ( x2 )
	add x3, x0, x8
	ble x3, x0, LBB0_12
LBB0_10:                                //  %for.body.preheader
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	lw x8, 0 ( x1 )
LBB0_11:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	sw x3, 16 ( x2 )                //  4-byte Folded Spill
	addi x10, x2, 20
	addi x11, x2, 26
	call $strsep
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	call $strlen
	addi x12, x10, 1
	sw x12, 8 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $memcpy
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, -1
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	add x8, x1, x8
	bgtu x3, x0, LBB0_11
LBB0_12:                                //  %for.end
	lw x10, 4 ( x2 )                //  4-byte Folded Reload
	nop
	call $free
LBB0_13:                                //  %cleanup
	add x10, x0, x0
LBB0_14:                                //  %cleanup
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
	.size	$argz_create_sep, ($func_end0)-($argz_create_sep)
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
