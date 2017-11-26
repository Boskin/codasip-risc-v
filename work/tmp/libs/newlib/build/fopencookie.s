	.text
	.file	"fopencookie.bc"
	.globl	$_fopencookie_r
	.type	$_fopencookie_r,@function
$_fopencookie_r:                        //  @_fopencookie_r
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
	sw x13, 20 ( x2 )               //  4-byte Folded Spill
	sw x11, 16 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x10
	addi x1, x2, 24
	add x11, x0, x12
	add x12, x0, x1
	call $__sflags
	add x3, x0, x0
	beqz x10, LBB0_13
LBB0_1:                                 //  %if.end
	andi x1, x10, 20
	beqz x1, LBB0_3
LBB0_2:                                 //  %land.lhs.true
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 0 ( x1 )
	nop
	beqz x1, LBB0_5
LBB0_3:                                 //  %lor.lhs.false
	andi x1, x10, 24
	beqz x1, LBB0_6
LBB0_4:                                 //  %land.lhs.true4
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 4 ( x1 )
	nop
	bgtu x1, x0, LBB0_6
LBB0_5:                                 //  %if.then6
	addi x1, x0, 22
	sw x1, 0 ( x8 )
	jalr x0, LBB0_13 ( x0 )
LBB0_6:                                 //  %if.end7
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	call $__sfp
	bgtu x10, x0, LBB0_8
LBB0_7:
	add x3, x0, x0
	jalr x0, LBB0_13 ( x0 )
LBB0_8:                                 //  %if.end11
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	addi x11, x0, 24
	add x10, x0, x8
	call $_malloc_r
	bgtu x10, x0, LBB0_10
LBB0_9:                                 //  %if.then14
	call $__sfp_lock_acquire
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sh x0, 12 ( x1 )
	call $__sfp_lock_release
	add x3, x0, x0
	jalr x0, LBB0_13 ( x0 )
LBB0_10:                                //  %if.end15
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lui x1, 65535 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x1, x28
	ori x28, x0, $fcreader & 0xfff
	slli x28, x28, 20
	lui x1, $fcreader >> 12 & 0xfffff
	srli x28, x28, 20
	or x5, x1, x28
	ori x28, x0, $fcwriter & 0xfff
	slli x28, x28, 20
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	lw x7, 0 ( x1 )
	lw x9, 4 ( x1 )
	lui x3, $fcwriter >> 12 & 0xfffff
	srli x28, x28, 20
	lw x1, 8 ( x1 )
	or x11, x3, x28
	ori x28, x0, $fcseeker & 0xfff
	slli x28, x28, 20
	lui x12, $fcseeker >> 12 & 0xfffff
	srli x28, x28, 20
	add x3, x0, x0
	lw x13, 8 ( x2 )                //  4-byte Folded Reload
	nop
	sh x4, 14 ( x13 )
	lw x4, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sh x4, 12 ( x13 )
	lw x4, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sw x4, 0 ( x10 )
	sw x13, 4 ( x10 )
	sw x10, 28 ( x13 )
	sw x7, 8 ( x10 )
	sw x5, 32 ( x13 )
	sw x9, 12 ( x10 )
	sw x11, 36 ( x13 )
	or x4, x12, x28
	bne x1, x3, LBB0_12
LBB0_11:                                //  %if.end15
	add x4, x0, x3
LBB0_12:                                //  %if.end15
	sw x1, 16 ( x10 )
	sw x4, 40 ( x13 )
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 12 ( x1 )
	nop
	sw x1, 20 ( x10 )
	lui x1, $fccloser >> 12 & 0xfffff
	ori x28, x0, $fccloser & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 44 ( x13 )
	add x3, x0, x13
LBB0_13:                                //  %cleanup
	add x10, x0, x3
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
	.size	$_fopencookie_r, ($func_end0)-($_fopencookie_r)
	.cfi_endproc

	.type	$fcreader,@function
$fcreader:                              //  @fcreader
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	addi x2, x2, -32
$cfi9:
	.cfi_adjust_cfa_offset 32
	sw x1, 28 ( x2 )
$cfi10:
	.cfi_offset 1, -4
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	sw x13, 16 ( x2 )               //  4-byte Folded Spill
	sw x12, 12 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x11
	call $__errno
	sw x0, 0 ( x10 )
	lw x10, 0 ( x8 )
	lw x1, 8 ( x8 )
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	lw x12, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call_reg x1
	add x8, x0, x10
	bgez x8, LBB1_3
LBB1_1:                                 //  %land.lhs.true
	call $__errno
	lw x1, 0 ( x10 )
	nop
	beqz x1, LBB1_3
LBB1_2:                                 //  %if.then
	call $__errno
	lw x1, 0 ( x10 )
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x1, 0 ( x3 )
LBB1_3:                                 //  %if.end
	add x10, x0, x8
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	lw x1, 28 ( x2 )
$cfi11:
	.cfi_same_value 1
	addi x2, x2, 32
$cfi12:
	.cfi_adjust_cfa_offset -32
$cfi13:
	.cfi_def_cfa 2, 0
	ret
$func_end1:
	.size	$fcreader, ($func_end1)-($fcreader)
	.cfi_endproc

	.type	$fcwriter,@function
$fcwriter:                              //  @fcwriter
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi14:
	.cfi_def_cfa 2, 0
$cfi15:
	.cfi_val_offset 2, 0
	addi x2, x2, -32
$cfi16:
	.cfi_adjust_cfa_offset 32
	sw x1, 28 ( x2 )
$cfi17:
	.cfi_offset 1, -4
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x11
	sw x13, 16 ( x2 )               //  4-byte Folded Spill
	sw x12, 12 ( x2 )               //  4-byte Folded Spill
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	lw x1, 4 ( x8 )
	nop
	lbu x3, 13 ( x1 )
	nop
	andi x3, x3, 1
	beqz x3, LBB2_3
LBB2_1:                                 //  %land.lhs.true
	lw x1, 40 ( x1 )
	nop
	beqz x1, LBB2_3
LBB2_2:                                 //  %if.then
	add x12, x0, x0
	addi x13, x0, 2
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x8
	call_reg x1
LBB2_3:                                 //  %if.end
	call $__errno
	sw x0, 0 ( x10 )
	lw x10, 0 ( x8 )
	lw x1, 12 ( x8 )
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	lw x12, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call_reg x1
	add x8, x0, x10
	bgez x8, LBB2_6
LBB2_4:                                 //  %land.lhs.true9
	call $__errno
	lw x1, 0 ( x10 )
	nop
	beqz x1, LBB2_6
LBB2_5:                                 //  %if.then12
	call $__errno
	lw x1, 0 ( x10 )
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x1, 0 ( x3 )
LBB2_6:                                 //  %if.end14
	add x10, x0, x8
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	lw x1, 28 ( x2 )
$cfi18:
	.cfi_same_value 1
	addi x2, x2, 32
$cfi19:
	.cfi_adjust_cfa_offset -32
$cfi20:
	.cfi_def_cfa 2, 0
	ret
$func_end2:
	.size	$fcwriter, ($func_end2)-($fcwriter)
	.cfi_endproc

	.type	$fcseeker,@function
$fcseeker:                              //  @fcseeker
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi21:
	.cfi_def_cfa 2, 0
$cfi22:
	.cfi_val_offset 2, 0
	addi x2, x2, -32
$cfi23:
	.cfi_adjust_cfa_offset 32
	sw x1, 28 ( x2 )
$cfi24:
	.cfi_offset 1, -4
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	sw x13, 12 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x11
	sw x12, 16 ( x2 )
	call $__errno
	sw x0, 0 ( x10 )
	lw x10, 0 ( x8 )
	lw x1, 16 ( x8 )
	addi x11, x2, 16
	lw x12, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call_reg x1
	bgez x10, LBB3_3
LBB3_1:                                 //  %land.lhs.true
	call $__errno
	lw x1, 0 ( x10 )
	nop
	beqz x1, LBB3_3
LBB3_2:                                 //  %if.then
	call $__errno
	lw x1, 0 ( x10 )
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x1, 0 ( x3 )
LBB3_3:                                 //  %if.end
	lw x10, 16 ( x2 )
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	lw x1, 28 ( x2 )
$cfi25:
	.cfi_same_value 1
	addi x2, x2, 32
$cfi26:
	.cfi_adjust_cfa_offset -32
$cfi27:
	.cfi_def_cfa 2, 0
	ret
$func_end3:
	.size	$fcseeker, ($func_end3)-($fcseeker)
	.cfi_endproc

	.type	$fccloser,@function
$fccloser:                              //  @fccloser
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi28:
	.cfi_def_cfa 2, 0
$cfi29:
	.cfi_val_offset 2, 0
	addi x2, x2, -24
$cfi30:
	.cfi_adjust_cfa_offset 24
	sw x1, 20 ( x2 )
$cfi31:
	.cfi_offset 1, -4
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x11
	lw x1, 20 ( x8 )
	nop
	bgtu x1, x0, LBB4_2
LBB4_1:
	add x1, x0, x0
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	jalr x0, LBB4_7 ( x0 )
LBB4_2:                                 //  %if.then
	sw x10, 4 ( x2 )                //  4-byte Folded Spill
	call $__errno
	sw x0, 0 ( x10 )
	lw x10, 0 ( x8 )
	lw x1, 20 ( x8 )
	nop
	call_reg x1
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	bgt x0, x10, LBB4_4
LBB4_3:
	lw x10, 4 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB4_7 ( x0 )
LBB4_4:                                 //  %land.lhs.true
	call $__errno
	lw x1, 0 ( x10 )
	nop
	bgtu x1, x0, LBB4_6
LBB4_5:
	lw x10, 4 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB4_7 ( x0 )
LBB4_6:                                 //  %if.then6
	call $__errno
	lw x1, 0 ( x10 )
	lw x10, 4 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x10 )
LBB4_7:                                 //  %if.end8
	add x11, x0, x8
	call $_free_r
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	lw x1, 20 ( x2 )
$cfi32:
	.cfi_same_value 1
	addi x2, x2, 24
$cfi33:
	.cfi_adjust_cfa_offset -24
$cfi34:
	.cfi_def_cfa 2, 0
	ret
$func_end4:
	.size	$fccloser, ($func_end4)-($fccloser)
	.cfi_endproc

	.globl	$fopencookie
	.type	$fopencookie,@function
$fopencookie:                           //  @fopencookie
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi35:
	.cfi_def_cfa 2, 0
$cfi36:
	.cfi_val_offset 2, 0
	addi x2, x2, -32
$cfi37:
	.cfi_adjust_cfa_offset 32
	sw x1, 28 ( x2 )
$cfi38:
	.cfi_offset 1, -4
	add x1, x0, x11
	add x3, x0, x10
	lw x4, 8 ( x12 )
	addi x13, x2, 8
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x5, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x5, x5, x28
	lw x10, 0 ( x5 )
	sw x4, 8 ( x13 )
	lw x4, 4 ( x12 )
	nop
	sw x4, 4 ( x13 )
	lw x4, 12 ( x12 )
	nop
	sw x4, 20 ( x2 )
	lw x4, 0 ( x12 )
	nop
	sw x4, 8 ( x2 )
	add x11, x0, x3
	add x12, x0, x1
	call $_fopencookie_r
	lw x1, 28 ( x2 )
$cfi39:
	.cfi_same_value 1
	addi x2, x2, 32
$cfi40:
	.cfi_adjust_cfa_offset -32
$cfi41:
	.cfi_def_cfa 2, 0
	ret
$func_end5:
	.size	$fopencookie, ($func_end5)-($fopencookie)
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
