	.text
	.file	"mstats.bc"
	.globl	$mallinfo
	.type	$mallinfo,@function
$mallinfo:                              //  @mallinfo
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retstruct_reg 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x3, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	lw x11, 0 ( x3 )
	nop
	j $_mallinfo_r
$func_end0:
	.size	$mallinfo, ($func_end0)-($mallinfo)
	.cfi_endproc

	.globl	$malloc_stats
	.type	$malloc_stats,@function
$malloc_stats:                          //  @malloc_stats
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi2:
	.cfi_def_cfa 2, 0
$cfi3:
	.cfi_val_offset 2, 0
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x3, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	lw x10, 0 ( x3 )
	nop
	j $_malloc_stats_r
$func_end1:
	.size	$malloc_stats, ($func_end1)-($malloc_stats)
	.cfi_endproc

	.globl	$mallopt
	.type	$mallopt,@function
$mallopt:                               //  @mallopt
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi4:
	.cfi_def_cfa 2, 0
$cfi5:
	.cfi_val_offset 2, 0
	add x3, x0, x11
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x4, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	lw x4, 0 ( x4 )
	add x11, x0, x10
	add x12, x0, x3
	add x10, x0, x4
	j $_mallopt_r
$func_end2:
	.size	$mallopt, ($func_end2)-($mallopt)
	.cfi_endproc

	.globl	$_mstats_r
	.type	$_mstats_r,@function
$_mstats_r:                             //  @_mstats_r
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi6:
	.cfi_def_cfa 2, 0
$cfi7:
	.cfi_val_offset 2, 0
	addi x2, x2, -32
$cfi8:
	.cfi_adjust_cfa_offset 32
	sw x1, 28 ( x2 )
$cfi9:
	.cfi_offset 1, -4
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x10
	lw x1, 12 ( x8 )
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x3, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	sw x11, 8 ( x2 )
	sw x3, 4 ( x2 )
	sw x1, 0 ( x2 )
	call $fiprintf
	add x10, x0, x8
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	lw x1, 28 ( x2 )
$cfi10:
	.cfi_same_value 1
	addi x2, x2, 32
$cfi11:
	.cfi_adjust_cfa_offset -32
$cfi12:
	.cfi_def_cfa 2, 0
	j $_malloc_stats_r
$func_end3:
	.size	$_mstats_r, ($func_end3)-($_mstats_r)
	.cfi_endproc

	.globl	$mstats
	.type	$mstats,@function
$mstats:                                //  @mstats
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi13:
	.cfi_def_cfa 2, 0
$cfi14:
	.cfi_val_offset 2, 0
	addi x2, x2, -32
$cfi15:
	.cfi_adjust_cfa_offset 32
	sw x1, 28 ( x2 )
$cfi16:
	.cfi_offset 1, -4
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x1, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x8, 0 ( x1 )
	nop
	lw x1, 12 ( x8 )
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x3, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	sw x10, 8 ( x2 )
	sw x3, 4 ( x2 )
	sw x1, 0 ( x2 )
	call $fiprintf
	add x10, x0, x8
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	lw x1, 28 ( x2 )
$cfi17:
	.cfi_same_value 1
	addi x2, x2, 32
$cfi18:
	.cfi_adjust_cfa_offset -32
$cfi19:
	.cfi_def_cfa 2, 0
	j $_malloc_stats_r
$func_end4:
	.size	$mstats, ($func_end4)-($mstats)
	.cfi_endproc

	.address_space	0	
	.address_space	0	
	.type	$.str,@object           //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str:
	.asciz	"Memory allocation statistics %s\n"
	.size	$.str, 33


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
