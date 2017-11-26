	.text
	.file	"malignr.bc"
	.globl	$_memalign_r
	.type	$_memalign_r,@function
$_memalign_r:                           //  @_memalign_r
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
	add x8, x0, x11
	addi x1, x8, -1
	and x1, x8, x1
	add x7, x0, x0
	bgtu x1, x0, LBB0_15
LBB0_1:                                 //  %if.end
	addi x1, x0, 8
	bgtu x8, x1, LBB0_3
LBB0_2:                                 //  %if.end
	add x8, x0, x1
LBB0_3:                                 //  %if.end
	addi x1, x0, 4
	bgtu x12, x1, LBB0_5
LBB0_4:                                 //  %if.end
	add x12, x0, x1
LBB0_5:                                 //  %if.end
	addi x1, x12, 3
	andi x1, x1, -4
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	add x1, x1, x8
	addi x11, x1, -8
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	call $_malloc_r
	add x7, x0, x0
	beqz x10, LBB0_15
LBB0_6:                                 //  %if.end13
	lw x3, -4 ( x10 )
	addi x1, x10, -4
	add x4, x0, x0
	ble x4, x3, LBB0_8
LBB0_7:
	add x1, x3, x1
LBB0_8:                                 //  %if.end13
	addi x11, x1, 4
	add x3, x11, x8
	addi x3, x3, -1
	sub x4, x0, x8
	and x7, x4, x3
	sub x3, x7, x11
	beqz x3, LBB0_12
LBB0_9:                                 //  %if.then20
	sltiu x4, x3, 12
	bgtu x4, x0, LBB0_11
LBB0_10:                                //  %if.then22
	lw x4, 0 ( x1 )
	nop
	sub x4, x4, x3
	add x8, x3, x1
	sw x4, 0 ( x8 )
	sw x3, 0 ( x1 )
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	sw x7, 8 ( x2 )                 //  4-byte Folded Spill
	call $_free_r
	lw x7, 8 ( x2 )                 //  4-byte Folded Reload
	jalr x0, LBB0_13 ( x0 )
LBB0_11:                                //  %if.else
	add x4, x3, x1
	sub x3, x0, x3
	sw x3, 0 ( x4 )
LBB0_12:                                //  %if.end31
	add x8, x0, x1
LBB0_13:                                //  %if.end31
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x7
	lw x3, 0 ( x8 )
	nop
	add x4, x3, x8
	addi x5, x1, 12
	bgeu x5, x4, LBB0_15
LBB0_14:                                //  %if.then37
	sub x4, x1, x8
	sw x4, 0 ( x8 )
	sub x3, x3, x4
	sw x3, 0 ( x1 )
	addi x11, x1, 4
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x7
	call $_free_r
	add x7, x0, x8
LBB0_15:                                //  %cleanup
	add x10, x0, x7
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
	.size	$_memalign_r, ($func_end0)-($_memalign_r)
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
