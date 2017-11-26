	.text
	.file	"mbrtowc.bc"
	.globl	$_mbrtowc_r
	.type	$_mbrtowc_r,@function
$_mbrtowc_r:                            //  @_mbrtowc_r
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
	sw x14, 20 ( x2 )               //  4-byte Folded Spill
	sw x13, 12 ( x2 )               //  4-byte Folded Spill
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x12
	ori x28, x0, $__mbtowc & 0xfff
	slli x28, x28, 20
	lui x1, $__mbtowc >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x1, 0 ( x1 )
	nop
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	call $__locale_charset
	add x1, x0, x10
	bgtu x8, x0, LBB0_2
LBB0_1:                                 //  %if.then
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x3, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	add x11, x0, x0
	or x12, x3, x28
	slti x13, x0, 1
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_3 ( x0 )
LBB0_2:                                 //  %if.else
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	add x12, x0, x8
	lw x13, 12 ( x2 )               //  4-byte Folded Reload
LBB0_3:                                 //  %if.end
	add x14, x0, x1
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	nop
	add x15, x0, x8
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	call_reg x1
	xori x1, x10, -1
	bgtu x1, x0, LBB0_5
LBB0_4:                                 //  %if.then6
	addi x1, x0, 138
	sw x0, 0 ( x8 )
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x3 )
	not x10, x0
LBB0_5:                                 //  %cleanup
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
	.size	$_mbrtowc_r, ($func_end0)-($_mbrtowc_r)
	.cfi_endproc

	.globl	$mbrtowc
	.type	$mbrtowc,@function
$mbrtowc:                               //  @mbrtowc
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
	sw x13, 24 ( x2 )               //  4-byte Folded Spill
	sw x12, 12 ( x2 )               //  4-byte Folded Spill
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	sw x11, 16 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, $__mbtowc & 0xfff
	slli x28, x28, 20
	lui x1, $__mbtowc >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x3, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	lw x1, 0 ( x1 )
	nop
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	lw x8, 0 ( x3 )
	call $__locale_charset
	lw x12, 16 ( x2 )               //  4-byte Folded Reload
	add x1, x0, x10
	sw x8, 4 ( x2 )                 //  4-byte Folded Spill
	bgtu x12, x0, LBB1_2
LBB1_1:                                 //  %if.then
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x3, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	add x11, x0, x0
	or x12, x3, x28
	slti x13, x0, 1
	add x10, x0, x8
	jalr x0, LBB1_3 ( x0 )
LBB1_2:                                 //  %if.else
	add x10, x0, x8
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	lw x13, 12 ( x2 )               //  4-byte Folded Reload
LBB1_3:                                 //  %if.end
	add x14, x0, x1
	lw x8, 24 ( x2 )                //  4-byte Folded Reload
	nop
	add x15, x0, x8
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	call_reg x1
	xori x1, x10, -1
	bgtu x1, x0, LBB1_5
LBB1_4:                                 //  %if.then6
	addi x1, x0, 138
	sw x0, 0 ( x8 )
	lw x3, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x1, 0 ( x3 )
	not x10, x0
LBB1_5:                                 //  %cleanup
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
	.size	$mbrtowc, ($func_end1)-($mbrtowc)
	.cfi_endproc

	.address_space	0	
	.address_space	0	
	.type	$.str,@object           //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str:
	.zero	1
	.size	$.str, 1

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
