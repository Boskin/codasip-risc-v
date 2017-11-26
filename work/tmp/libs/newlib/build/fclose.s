	.text
	.file	"fclose.bc"
	.globl	$_fclose_r
	.type	$_fclose_r,@function
$_fclose_r:                             //  @_fclose_r
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
	add x3, x0, x10
	add x10, x0, x0
	beqz x8, LBB0_17
LBB0_1:                                 //  %do.body
	beqz x3, LBB0_4
LBB0_2:                                 //  %land.lhs.true
	lw x1, 56 ( x3 )
	nop
	bgtu x1, x0, LBB0_4
LBB0_3:                                 //  %if.then2
	add x10, x0, x3
	sw x3, 16 ( x2 )                //  4-byte Folded Spill
	call $__sinit
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	add x10, x0, x0
LBB0_4:                                 //  %if.end3
	lhu x1, 12 ( x8 )
	nop
	beqz x1, LBB0_17
LBB0_5:                                 //  %if.end26
	add x10, x0, x3
	sw x3, 16 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x8
	call $__sflush_r
	lw x1, 44 ( x8 )
	nop
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	beqz x1, LBB0_8
LBB0_6:                                 //  %land.lhs.true29
	lw x11, 28 ( x8 )
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	call_reg x1
	add x1, x0, x0
	ble x1, x10, LBB0_8
LBB0_7:
	not x1, x0
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
LBB0_8:                                 //  %if.end35
	lbu x1, 12 ( x8 )
	nop
	andi x1, x1, 128
	beqz x1, LBB0_10
LBB0_9:                                 //  %if.then40
	lw x11, 16 ( x8 )
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $_free_r
LBB0_10:                                //  %if.end41
	lw x11, 48 ( x8 )
	nop
	beqz x11, LBB0_14
LBB0_11:                                //  %if.then45
	addi x1, x8, 64
	beq x11, x1, LBB0_13
LBB0_12:                                //  %if.then50
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $_free_r
LBB0_13:                                //  %if.end53
	sw x0, 48 ( x8 )
LBB0_14:                                //  %if.end56
	lw x11, 68 ( x8 )
	nop
	beqz x11, LBB0_16
LBB0_15:                                //  %if.then60
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $_free_r
	sw x0, 68 ( x8 )
LBB0_16:                                //  %if.end65
	call $__sfp_lock_acquire
	sh x0, 12 ( x8 )
	call $__sfp_lock_release
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
LBB0_17:                                //  %cleanup
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
	.size	$_fclose_r, ($func_end0)-($_fclose_r)
	.cfi_endproc

	.globl	$fclose
	.type	$fclose,@function
$fclose:                                //  @fclose
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x3, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	lw x3, 0 ( x3 )
	add x11, x0, x10
	add x10, x0, x3
	j $_fclose_r
$func_end1:
	.size	$fclose, ($func_end1)-($fclose)
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
