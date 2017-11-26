	.text
	.file	"vasnprintf.bc"
	.globl	$_vasnprintf_r
	.type	$_vasnprintf_r,@function
$_vasnprintf_r:                         //  @_vasnprintf_r
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -120
$cfi2:
	.cfi_adjust_cfa_offset 120
	sw x1, 116 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 108 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x12
	lw x3, 0 ( x8 )
	sltu x1, x0, x11
	sltu x4, x0, x3
	and x4, x4, x1
	beqz x4, LBB0_2
LBB0_1:
	addi x5, x0, 1544
	jalr x0, LBB0_3 ( x0 )
LBB0_2:                                 //  %entry
	addi x5, x0, 648
LBB0_3:                                 //  %entry
	addi x1, x2, 4
	sh x5, 12 ( x1 )
	add x5, x0, x0
	bgtu x4, x0, LBB0_5
LBB0_4:                                 //  %entry
	add x3, x0, x5
LBB0_5:                                 //  %entry
	bgtu x4, x0, LBB0_7
LBB0_6:                                 //  %entry
	add x11, x0, x5
LBB0_7:                                 //  %entry
	sw x11, 4 ( x2 )
	sw x11, 20 ( x2 )
	bgez x3, LBB0_9
LBB0_8:                                 //  %if.then3
	addi x1, x0, 139
	sw x1, 0 ( x10 )
	add x10, x0, x0
	jalr x0, LBB0_12 ( x0 )
LBB0_9:                                 //  %if.end4
	sw x3, 8 ( x1 )
	sw x3, 24 ( x2 )
	lui x3, 65535 >> 12 & 0xfffff
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	sh x3, 14 ( x1 )
	add x11, x0, x1
	add x12, x0, x13
	add x13, x0, x14
	call $_svfprintf_r
	bgez x10, LBB0_11
LBB0_10:
	add x10, x0, x0
	jalr x0, LBB0_12 ( x0 )
LBB0_11:                                //  %if.end8
	sw x10, 0 ( x8 )
	lw x1, 4 ( x2 )
	nop
	sb x0, 0 ( x1 )
	lw x10, 20 ( x2 )
LBB0_12:                                //  %cleanup
	lw x8, 108 ( x2 )               //  4-byte Folded Reload
	lw x1, 116 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 120
$cfi5:
	.cfi_adjust_cfa_offset -120
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$_vasnprintf_r, ($func_end0)-($_vasnprintf_r)
	.cfi_endproc

	.globl	$vasnprintf
	.type	$vasnprintf,@function
$vasnprintf:                            //  @vasnprintf
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	addi x2, x2, -120
$cfi9:
	.cfi_adjust_cfa_offset 120
	sw x1, 116 ( x2 )
$cfi10:
	.cfi_offset 1, -4
	sw x8, 108 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x11
	add x1, x0, x10
	lw x3, 0 ( x8 )
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x4, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	sltu x5, x0, x1
	sltu x7, x0, x3
	or x9, x4, x28
	and x4, x7, x5
	lw x10, 0 ( x9 )
	beqz x4, LBB1_2
LBB1_1:
	addi x5, x0, 1544
	jalr x0, LBB1_3 ( x0 )
LBB1_2:                                 //  %entry
	addi x5, x0, 648
LBB1_3:                                 //  %entry
	addi x11, x2, 4
	sh x5, 12 ( x11 )
	add x5, x0, x0
	bgtu x4, x0, LBB1_5
LBB1_4:                                 //  %entry
	add x3, x0, x5
LBB1_5:                                 //  %entry
	bgtu x4, x0, LBB1_7
LBB1_6:                                 //  %entry
	add x1, x0, x5
LBB1_7:                                 //  %entry
	sw x1, 4 ( x2 )
	sw x1, 20 ( x2 )
	bgez x3, LBB1_9
LBB1_8:                                 //  %if.then3.i
	addi x1, x0, 139
	sw x1, 0 ( x10 )
	add x10, x0, x0
	jalr x0, LBB1_12 ( x0 )
LBB1_9:                                 //  %if.end4.i
	sw x3, 8 ( x11 )
	sw x3, 24 ( x2 )
	lui x1, 65535 >> 12 & 0xfffff
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	sh x1, 14 ( x11 )
	call $_svfprintf_r
	bgez x10, LBB1_11
LBB1_10:
	add x10, x0, x0
	jalr x0, LBB1_12 ( x0 )
LBB1_11:                                //  %if.end8.i
	sw x10, 0 ( x8 )
	lw x1, 4 ( x2 )
	nop
	sb x0, 0 ( x1 )
	lw x10, 20 ( x2 )
LBB1_12:                                //  %_vasnprintf_r.exit
	lw x8, 108 ( x2 )               //  4-byte Folded Reload
	lw x1, 116 ( x2 )
$cfi11:
	.cfi_same_value 1
	addi x2, x2, 120
$cfi12:
	.cfi_adjust_cfa_offset -120
$cfi13:
	.cfi_def_cfa 2, 0
	ret
$func_end1:
	.size	$vasnprintf, ($func_end1)-($vasnprintf)
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
