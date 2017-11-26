	.text
	.file	"execr.bc"
	.globl	$_execve_r
	.type	$_execve_r,@function
$_execve_r:                             //  @_execve_r
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -24
$cfi2:
	.cfi_adjust_cfa_offset 24
	sw x1, 20 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, $errno & 0xfff
	slli x28, x28, 20
	lui x1, $errno >> 12 & 0xfffff
	srli x28, x28, 20
	or x8, x1, x28
	sw x0, 0 ( x8 )
	add x10, x0, x11
	add x11, x0, x12
	add x12, x0, x13
	call $execve
	xori x1, x10, -1
	bgtu x1, x0, LBB0_3
LBB0_1:                                 //  %entry
	lw x1, 0 ( x8 )
	nop
	beqz x1, LBB0_3
LBB0_2:                                 //  %if.then
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x1, 0 ( x3 )
LBB0_3:                                 //  %if.end
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	lw x1, 20 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 24
$cfi5:
	.cfi_adjust_cfa_offset -24
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$_execve_r, ($func_end0)-($_execve_r)
	.cfi_endproc

	.globl	$_fork_r
	.type	$_fork_r,@function
$_fork_r:                               //  @_fork_r
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	addi x2, x2, -24
$cfi9:
	.cfi_adjust_cfa_offset 24
	sw x1, 20 ( x2 )
$cfi10:
	.cfi_offset 1, -4
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, $errno & 0xfff
	slli x28, x28, 20
	lui x1, $errno >> 12 & 0xfffff
	srli x28, x28, 20
	or x8, x1, x28
	sw x0, 0 ( x8 )
	call $fork
	xori x1, x10, -1
	bgtu x1, x0, LBB1_3
LBB1_1:                                 //  %entry
	lw x1, 0 ( x8 )
	nop
	beqz x1, LBB1_3
LBB1_2:                                 //  %if.then
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x1, 0 ( x3 )
LBB1_3:                                 //  %if.end
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	lw x1, 20 ( x2 )
$cfi11:
	.cfi_same_value 1
	addi x2, x2, 24
$cfi12:
	.cfi_adjust_cfa_offset -24
$cfi13:
	.cfi_def_cfa 2, 0
	ret
$func_end1:
	.size	$_fork_r, ($func_end1)-($_fork_r)
	.cfi_endproc

	.globl	$_wait_r
	.type	$_wait_r,@function
$_wait_r:                               //  @_wait_r
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi14:
	.cfi_def_cfa 2, 0
$cfi15:
	.cfi_val_offset 2, 0
	addi x2, x2, -24
$cfi16:
	.cfi_adjust_cfa_offset 24
	sw x1, 20 ( x2 )
$cfi17:
	.cfi_offset 1, -4
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, $errno & 0xfff
	slli x28, x28, 20
	lui x1, $errno >> 12 & 0xfffff
	srli x28, x28, 20
	or x8, x1, x28
	sw x0, 0 ( x8 )
	add x10, x0, x11
	call $wait
	xori x1, x10, -1
	bgtu x1, x0, LBB2_3
LBB2_1:                                 //  %entry
	lw x1, 0 ( x8 )
	nop
	beqz x1, LBB2_3
LBB2_2:                                 //  %if.then
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x1, 0 ( x3 )
LBB2_3:                                 //  %if.end
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	lw x1, 20 ( x2 )
$cfi18:
	.cfi_same_value 1
	addi x2, x2, 24
$cfi19:
	.cfi_adjust_cfa_offset -24
$cfi20:
	.cfi_def_cfa 2, 0
	ret
$func_end2:
	.size	$_wait_r, ($func_end2)-($_wait_r)
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
