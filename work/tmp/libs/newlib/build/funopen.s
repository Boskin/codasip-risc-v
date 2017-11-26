	.text
	.file	"funopen.bc"
	.globl	$_funopen_r
	.type	$_funopen_r,@function
$_funopen_r:                            //  @_funopen_r
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
	add x8, x0, x10
	or x1, x13, x12
	bgtu x1, x0, LBB0_2
LBB0_1:                                 //  %if.then
	addi x1, x0, 22
	sw x1, 0 ( x8 )
	add x5, x0, x0
	jalr x0, LBB0_16 ( x0 )
LBB0_2:                                 //  %if.end
	sw x11, 20 ( x2 )               //  4-byte Folded Spill
	sw x12, 24 ( x2 )               //  4-byte Folded Spill
	sw x13, 8 ( x2 )                //  4-byte Folded Spill
	sw x14, 12 ( x2 )               //  4-byte Folded Spill
	sw x15, 16 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	call $__sfp
	add x5, x0, x0
	beqz x10, LBB0_16
LBB0_3:                                 //  %if.end3
	sw x10, 4 ( x2 )                //  4-byte Folded Spill
	addi x11, x0, 20
	add x10, x0, x8
	call $_malloc_r
	bgtu x10, x0, LBB0_5
LBB0_4:                                 //  %if.then6
	call $__sfp_lock_acquire
	lw x1, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	sh x0, 12 ( x1 )
	call $__sfp_lock_release
	add x5, x0, x0
	jalr x0, LBB0_16 ( x0 )
LBB0_5:                                 //  %if.end7
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lui x1, 65535 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x5, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	sh x1, 14 ( x5 )
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x10 )
	sw x10, 28 ( x5 )
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x3, LBB0_12
LBB0_6:                                 //  %if.then16
	add x1, x0, x0
	sw x3, 4 ( x10 )
	lw x7, 16 ( x2 )                //  4-byte Folded Reload
	lw x9, 12 ( x2 )                //  4-byte Folded Reload
	lw x4, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	beq x4, x1, LBB0_8
LBB0_7:
	addi x3, x0, 16
	jalr x0, LBB0_9 ( x0 )
LBB0_8:                                 //  %if.then16
	addi x3, x0, 4
LBB0_9:                                 //  %if.then16
	sh x3, 12 ( x5 )
	sw x4, 8 ( x10 )
	lui x3, $funwriter >> 12 & 0xfffff
	ori x28, x0, $funwriter & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	bne x4, x1, LBB0_11
LBB0_10:                                //  %if.then16
	add x3, x0, x1
LBB0_11:                                //  %if.then16
	sw x3, 36 ( x5 )
	lui x1, $funreader >> 12 & 0xfffff
	ori x28, x0, $funreader & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	jalr x0, LBB0_13 ( x0 )
LBB0_12:                                //  %if.else26
	ori x28, x0, $funwriter & 0xfff
	slli x28, x28, 20
	lui x1, $funwriter >> 12 & 0xfffff
	srli x28, x28, 20
	addi x3, x0, 8
	or x1, x1, x28
	sh x3, 12 ( x5 )
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x3, 8 ( x10 )
	sw x1, 36 ( x5 )
	sw x0, 4 ( x10 )
	add x1, x0, x0
	lw x7, 16 ( x2 )                //  4-byte Folded Reload
	lw x9, 12 ( x2 )                //  4-byte Folded Reload
LBB0_13:                                //  %if.end32
	ori x28, x0, $funseeker & 0xfff
	slli x28, x28, 20
	lui x4, $funseeker >> 12 & 0xfffff
	srli x28, x28, 20
	add x3, x0, x0
	sw x1, 32 ( x5 )
	or x1, x4, x28
	bne x9, x3, LBB0_15
LBB0_14:                                //  %if.end32
	add x1, x0, x3
LBB0_15:                                //  %if.end32
	sw x9, 12 ( x10 )
	sw x1, 40 ( x5 )
	sw x7, 16 ( x10 )
	lui x1, $funcloser >> 12 & 0xfffff
	ori x28, x0, $funcloser & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 44 ( x5 )
LBB0_16:                                //  %cleanup
	add x10, x0, x5
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
	.size	$_funopen_r, ($func_end0)-($_funopen_r)
	.cfi_endproc

	.type	$funreader,@function
$funreader:                             //  @funreader
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
	lw x1, 4 ( x8 )
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
	.size	$funreader, ($func_end1)-($funreader)
	.cfi_endproc

	.type	$funwriter,@function
$funwriter:                             //  @funwriter
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
	bgez x8, LBB2_3
LBB2_1:                                 //  %land.lhs.true
	call $__errno
	lw x1, 0 ( x10 )
	nop
	beqz x1, LBB2_3
LBB2_2:                                 //  %if.then
	call $__errno
	lw x1, 0 ( x10 )
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x1, 0 ( x3 )
LBB2_3:                                 //  %if.end
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
	.size	$funwriter, ($func_end2)-($funwriter)
	.cfi_endproc

	.type	$funseeker,@function
$funseeker:                             //  @funseeker
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
	sw x13, 16 ( x2 )               //  4-byte Folded Spill
	sw x12, 12 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x11
	call $__errno
	sw x0, 0 ( x10 )
	lw x10, 0 ( x8 )
	lw x1, 12 ( x8 )
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	lw x12, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call_reg x1
	add x8, x0, x10
	bgez x8, LBB3_3
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
	add x10, x0, x8
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
	.size	$funseeker, ($func_end3)-($funseeker)
	.cfi_endproc

	.type	$funcloser,@function
$funcloser:                             //  @funcloser
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
	lw x1, 16 ( x8 )
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
	lw x1, 16 ( x8 )
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
	.size	$funcloser, ($func_end4)-($funcloser)
	.cfi_endproc

	.globl	$funopen
	.type	$funopen,@function
$funopen:                               //  @funopen
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi35:
	.cfi_def_cfa 2, 0
$cfi36:
	.cfi_val_offset 2, 0
	addi x2, x2, -40
$cfi37:
	.cfi_adjust_cfa_offset 40
	sw x1, 36 ( x2 )
$cfi38:
	.cfi_offset 1, -4
	sw x8, 28 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x1, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	or x3, x12, x11
	lw x8, 0 ( x1 )
	bgtu x3, x0, LBB5_2
LBB5_1:                                 //  %if.then.i
	addi x1, x0, 22
	sw x1, 0 ( x8 )
	add x5, x0, x0
	jalr x0, LBB5_16 ( x0 )
LBB5_2:                                 //  %if.end.i
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	sw x11, 24 ( x2 )               //  4-byte Folded Spill
	sw x12, 8 ( x2 )                //  4-byte Folded Spill
	sw x13, 12 ( x2 )               //  4-byte Folded Spill
	sw x14, 16 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	call $__sfp
	add x5, x0, x0
	beqz x10, LBB5_16
LBB5_3:                                 //  %if.end3.i
	sw x10, 4 ( x2 )                //  4-byte Folded Spill
	addi x11, x0, 20
	add x10, x0, x8
	call $_malloc_r
	bgtu x10, x0, LBB5_5
LBB5_4:                                 //  %if.then6.i
	call $__sfp_lock_acquire
	lw x1, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	sh x0, 12 ( x1 )
	call $__sfp_lock_release
	add x5, x0, x0
	jalr x0, LBB5_16 ( x0 )
LBB5_5:                                 //  %if.end7.i
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lui x1, 65535 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x5, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	sh x1, 14 ( x5 )
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x10 )
	sw x10, 28 ( x5 )
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x3, LBB5_12
LBB5_6:                                 //  %if.then16.i
	add x1, x0, x0
	sw x3, 4 ( x10 )
	lw x7, 16 ( x2 )                //  4-byte Folded Reload
	lw x9, 12 ( x2 )                //  4-byte Folded Reload
	lw x4, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	beq x4, x1, LBB5_8
LBB5_7:
	addi x3, x0, 16
	jalr x0, LBB5_9 ( x0 )
LBB5_8:                                 //  %if.then16.i
	addi x3, x0, 4
LBB5_9:                                 //  %if.then16.i
	sh x3, 12 ( x5 )
	sw x4, 8 ( x10 )
	lui x3, $funwriter >> 12 & 0xfffff
	ori x28, x0, $funwriter & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	bne x4, x1, LBB5_11
LBB5_10:                                //  %if.then16.i
	add x3, x0, x1
LBB5_11:                                //  %if.then16.i
	sw x3, 36 ( x5 )
	lui x1, $funreader >> 12 & 0xfffff
	ori x28, x0, $funreader & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	jalr x0, LBB5_13 ( x0 )
LBB5_12:                                //  %if.else26.i
	ori x28, x0, $funwriter & 0xfff
	slli x28, x28, 20
	lui x1, $funwriter >> 12 & 0xfffff
	srli x28, x28, 20
	addi x3, x0, 8
	or x1, x1, x28
	sh x3, 12 ( x5 )
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x3, 8 ( x10 )
	sw x1, 36 ( x5 )
	sw x0, 4 ( x10 )
	add x1, x0, x0
	lw x7, 16 ( x2 )                //  4-byte Folded Reload
	lw x9, 12 ( x2 )                //  4-byte Folded Reload
LBB5_13:                                //  %if.end32.i
	ori x28, x0, $funseeker & 0xfff
	slli x28, x28, 20
	lui x4, $funseeker >> 12 & 0xfffff
	srli x28, x28, 20
	add x3, x0, x0
	sw x1, 32 ( x5 )
	or x1, x4, x28
	bne x9, x3, LBB5_15
LBB5_14:                                //  %if.end32.i
	add x1, x0, x3
LBB5_15:                                //  %if.end32.i
	sw x9, 12 ( x10 )
	sw x1, 40 ( x5 )
	sw x7, 16 ( x10 )
	lui x1, $funcloser >> 12 & 0xfffff
	ori x28, x0, $funcloser & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 44 ( x5 )
LBB5_16:                                //  %_funopen_r.exit
	add x10, x0, x5
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	lw x1, 36 ( x2 )
$cfi39:
	.cfi_same_value 1
	addi x2, x2, 40
$cfi40:
	.cfi_adjust_cfa_offset -40
$cfi41:
	.cfi_def_cfa 2, 0
	ret
$func_end5:
	.size	$funopen, ($func_end5)-($funopen)
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
