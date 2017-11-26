	.text
	.file	"sniprintf.bc"
	.globl	$_sniprintf_r
	.type	$_sniprintf_r,@function
$_sniprintf_r:                          //  @_sniprintf_r
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -128
$cfi2:
	.cfi_adjust_cfa_offset 128
	sw x1, 124 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 116 ( x2 )               //  4-byte Folded Spill
	lw x8, 136 ( x2 )
	lw x5, 128 ( x2 )
	bgez x8, LBB0_2
LBB0_1:                                 //  %if.then
	addi x1, x0, 139
	sw x1, 0 ( x5 )
	not x10, x0
	jalr x0, LBB0_8 ( x0 )
LBB0_2:                                 //  %if.end
	add x1, x0, x0
	lw x12, 140 ( x2 )
	lw x3, 132 ( x2 )
	beq x8, x1, LBB0_4
LBB0_3:
	addi x1, x8, -1
LBB0_4:                                 //  %if.end
	addi x11, x2, 8
	addi x4, x0, 520
	sh x4, 12 ( x11 )
	sw x3, 8 ( x2 )
	sw x3, 16 ( x11 )
	sw x1, 8 ( x11 )
	sw x1, 28 ( x2 )
	lui x1, 65535 >> 12 & 0xfffff
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	sh x1, 14 ( x11 )
	addi x13, x2, 144
	sw x13, 112 ( x2 )
	add x10, x0, x5
	call $_svfiprintf_r
	addi x1, x0, -2
	bgt x10, x1, LBB0_6
LBB0_5:                                 //  %if.then6
	addi x1, x0, 139
	lw x3, 128 ( x2 )
	nop
	sw x1, 0 ( x3 )
LBB0_6:                                 //  %if.end8
	beqz x8, LBB0_8
LBB0_7:                                 //  %if.then10
	lw x1, 8 ( x2 )
	nop
	sb x0, 0 ( x1 )
LBB0_8:                                 //  %cleanup
	lw x8, 116 ( x2 )               //  4-byte Folded Reload
	lw x1, 124 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 128
$cfi5:
	.cfi_adjust_cfa_offset -128
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$_sniprintf_r, ($func_end0)-($_sniprintf_r)
	.cfi_endproc

	.globl	$sniprintf
	.type	$sniprintf,@function
$sniprintf:                             //  @sniprintf
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	addi x2, x2, -128
$cfi9:
	.cfi_adjust_cfa_offset 128
	sw x1, 124 ( x2 )
$cfi10:
	.cfi_offset 1, -4
	sw x8, 116 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, $_impure_ptr & 0xfff
	lw x4, 132 ( x2 )
	slli x28, x28, 20
	lui x1, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x8, 0 ( x1 )
	bgez x4, LBB1_2
LBB1_1:                                 //  %if.then
	addi x1, x0, 139
	sw x1, 0 ( x8 )
	not x10, x0
	jalr x0, LBB1_8 ( x0 )
LBB1_2:                                 //  %if.end
	add x1, x0, x0
	lw x12, 136 ( x2 )
	lw x3, 128 ( x2 )
	beq x4, x1, LBB1_4
LBB1_3:
	addi x1, x4, -1
LBB1_4:                                 //  %if.end
	addi x11, x2, 8
	addi x4, x0, 520
	sh x4, 12 ( x11 )
	sw x3, 8 ( x2 )
	sw x3, 16 ( x11 )
	sw x1, 8 ( x11 )
	sw x1, 28 ( x2 )
	lui x1, 65535 >> 12 & 0xfffff
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	sh x1, 14 ( x11 )
	addi x13, x2, 140
	sw x13, 112 ( x2 )
	add x10, x0, x8
	call $_svfiprintf_r
	addi x1, x0, -2
	bgt x10, x1, LBB1_6
LBB1_5:                                 //  %if.then6
	addi x1, x0, 139
	sw x1, 0 ( x8 )
LBB1_6:                                 //  %if.end8
	lw x1, 132 ( x2 )
	nop
	beqz x1, LBB1_8
LBB1_7:                                 //  %if.then10
	lw x1, 8 ( x2 )
	nop
	sb x0, 0 ( x1 )
LBB1_8:                                 //  %cleanup
	lw x8, 116 ( x2 )               //  4-byte Folded Reload
	lw x1, 124 ( x2 )
$cfi11:
	.cfi_same_value 1
	addi x2, x2, 128
$cfi12:
	.cfi_adjust_cfa_offset -128
$cfi13:
	.cfi_def_cfa 2, 0
	ret
$func_end1:
	.size	$sniprintf, ($func_end1)-($sniprintf)
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
