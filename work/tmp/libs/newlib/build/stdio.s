	.text
	.file	"stdio.bc"
	.globl	$__sread
	.type	$__sread,@function
$__sread:                               //  @__sread
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -16
$cfi2:
	.cfi_adjust_cfa_offset 16
	sw x1, 12 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 4 ( x2 )                 //  4-byte Folded Spill
	add x8, x0, x11
	lh x11, 14 ( x8 )
	nop
	call $_read_r
	bgt x0, x10, LBB0_2
LBB0_1:                                 //  %if.then
	lw x1, 80 ( x8 )
	nop
	add x1, x10, x1
	sw x1, 80 ( x8 )
	jalr x0, LBB0_3 ( x0 )
LBB0_2:                                 //  %if.else
	ori x28, x0, 61439 & 0xfff
	lhu x1, 12 ( x8 )
	slli x28, x28, 20
	lui x3, 61439 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	and x1, x3, x1
	sh x1, 12 ( x8 )
LBB0_3:                                 //  %if.end
	lw x8, 4 ( x2 )                 //  4-byte Folded Reload
	lw x1, 12 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 16
$cfi5:
	.cfi_adjust_cfa_offset -16
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$__sread, ($func_end0)-($__sread)
	.cfi_endproc

	.globl	$__seofread
	.type	$__seofread,@function
$__seofread:                            //  @__seofread
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	add x10, x0, x0
	ret
$func_end1:
	.size	$__seofread, ($func_end1)-($__seofread)
	.cfi_endproc

	.globl	$__swrite
	.type	$__swrite,@function
$__swrite:                              //  @__swrite
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi9:
	.cfi_def_cfa 2, 0
$cfi10:
	.cfi_val_offset 2, 0
	addi x2, x2, -32
$cfi11:
	.cfi_adjust_cfa_offset 32
	sw x1, 28 ( x2 )
$cfi12:
	.cfi_offset 1, -4
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x11
	lhu x1, 12 ( x8 )
	nop
	andi x3, x1, 256
	beqz x3, LBB2_2
LBB2_1:                                 //  %if.then
	lh x11, 14 ( x8 )
	sw x12, 12 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x0
	sw x13, 16 ( x2 )               //  4-byte Folded Spill
	addi x13, x0, 2
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	call $_lseek_r
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	lw x12, 12 ( x2 )               //  4-byte Folded Reload
	lw x13, 16 ( x2 )               //  4-byte Folded Reload
	lh x1, 12 ( x8 )
LBB2_2:                                 //  %if.end
	ori x28, x0, 61439 & 0xfff
	slli x28, x28, 20
	lui x3, 61439 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	and x1, x3, x1
	sh x1, 12 ( x8 )
	lh x11, 14 ( x8 )
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	lw x1, 28 ( x2 )
$cfi13:
	.cfi_same_value 1
	addi x2, x2, 32
$cfi14:
	.cfi_adjust_cfa_offset -32
$cfi15:
	.cfi_def_cfa 2, 0
	j $_write_r
$func_end2:
	.size	$__swrite, ($func_end2)-($__swrite)
	.cfi_endproc

	.globl	$__sseek
	.type	$__sseek,@function
$__sseek:                               //  @__sseek
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi16:
	.cfi_def_cfa 2, 0
$cfi17:
	.cfi_val_offset 2, 0
	addi x2, x2, -16
$cfi18:
	.cfi_adjust_cfa_offset 16
	sw x1, 12 ( x2 )
$cfi19:
	.cfi_offset 1, -4
	sw x8, 4 ( x2 )                 //  4-byte Folded Spill
	add x8, x0, x11
	lh x11, 14 ( x8 )
	nop
	call $_lseek_r
	xori x3, x10, -1
	lh x1, 12 ( x8 )
	bgtu x3, x0, LBB3_2
LBB3_1:                                 //  %if.then
	ori x28, x0, 61439 & 0xfff
	slli x28, x28, 20
	lui x3, 61439 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	and x1, x3, x1
	sh x1, 12 ( x8 )
	jalr x0, LBB3_3 ( x0 )
LBB3_2:                                 //  %if.else
	lui x3, 4096>>12 
	or x1, x3, x1
	sh x1, 12 ( x8 )
	sw x10, 80 ( x8 )
LBB3_3:                                 //  %if.end
	lw x8, 4 ( x2 )                 //  4-byte Folded Reload
	lw x1, 12 ( x2 )
$cfi20:
	.cfi_same_value 1
	addi x2, x2, 16
$cfi21:
	.cfi_adjust_cfa_offset -16
$cfi22:
	.cfi_def_cfa 2, 0
	ret
$func_end3:
	.size	$__sseek, ($func_end3)-($__sseek)
	.cfi_endproc

	.globl	$__sclose
	.type	$__sclose,@function
$__sclose:                              //  @__sclose
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi23:
	.cfi_def_cfa 2, 0
$cfi24:
	.cfi_val_offset 2, 0
	lh x11, 14 ( x11 )
	nop
	j $_close_r
$func_end4:
	.size	$__sclose, ($func_end4)-($__sclose)
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
