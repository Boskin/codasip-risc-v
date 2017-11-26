	.text
	.file	"freopen.bc"
	.globl	$_freopen_r
	.type	$_freopen_r,@function
$_freopen_r:                            //  @_freopen_r
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
	add x8, x0, x13
	add x3, x0, x12
	sw x11, 16 ( x2 )               //  4-byte Folded Spill
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	beqz x10, LBB0_3
LBB0_1:                                 //  %land.lhs.true
	lw x1, 56 ( x10 )
	nop
	bgtu x1, x0, LBB0_3
LBB0_2:                                 //  %if.then
	sw x3, 12 ( x2 )                //  4-byte Folded Spill
	call $__sinit
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
LBB0_3:                                 //  %if.end
	addi x12, x2, 24
	add x11, x0, x3
	call $__sflags
	bgtu x10, x0, LBB0_5
LBB0_4:                                 //  %if.then8
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $_fclose_r
	add x10, x0, x0
	jalr x0, LBB0_28 ( x0 )
LBB0_5:                                 //  %if.end21
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	lhu x1, 12 ( x8 )
	nop
	bgtu x1, x0, LBB0_11
LBB0_6:                                 //  %if.then26
	addi x1, x0, 32
	sh x1, 12 ( x8 )
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	nop
LBB0_7:                                 //  %if.end44
	bgtu x11, x0, LBB0_16
LBB0_8:                                 //  %if.then52
	lw x3, 44 ( x8 )
	addi x1, x0, 9
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	not x1, x0
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	sw x3, 4 ( x2 )                 //  4-byte Folded Spill
	beqz x3, LBB0_10
LBB0_9:                                 //  %if.then56
	lw x11, 28 ( x8 )
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	lw x1, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	call_reg x1
LBB0_10:                                //  %if.end62
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_17 ( x0 )
LBB0_11:                                //  %if.else
	andi x1, x1, 8
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	beqz x1, LBB0_13
LBB0_12:                                //  %if.then32
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $_fflush_r
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	nop
LBB0_13:                                //  %if.end34
	beqz x11, LBB0_7
LBB0_14:                                //  %if.end34
	lw x1, 44 ( x8 )
	nop
	beqz x1, LBB0_7
LBB0_15:                                //  %if.end44.thread
	lw x11, 28 ( x8 )
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	nop
	call_reg x1
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
LBB0_16:                                //  %if.then47
	lw x12, 24 ( x2 )
	addi x13, x0, 438
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	nop
	call $_open_r
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	lw x1, 0 ( x3 )
	nop
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
LBB0_17:                                //  %if.end62
	lbu x1, 12 ( x8 )
	nop
	andi x1, x1, 128
	beqz x1, LBB0_19
LBB0_18:                                //  %if.then67
	lw x11, 16 ( x8 )
	add x10, x0, x3
	call $_free_r
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
LBB0_19:                                //  %if.end68
	sw x0, 8 ( x8 )
	sw x0, 4 ( x8 )
	sw x0, 0 ( x8 )
	sw x0, 16 ( x8 )
	lw x11, 48 ( x8 )
	sw x0, 20 ( x8 )
	sw x0, 24 ( x8 )
	beqz x11, LBB0_23
LBB0_20:                                //  %if.then75
	addi x1, x8, 64
	beq x11, x1, LBB0_22
LBB0_21:                                //  %if.then80
	add x10, x0, x3
	call $_free_r
LBB0_22:                                //  %if.end83
	sw x0, 48 ( x8 )
LBB0_23:                                //  %if.end86
	lw x11, 68 ( x8 )
	sw x0, 52 ( x8 )
	beqz x11, LBB0_25
LBB0_24:                                //  %if.then92
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	nop
	call $_free_r
	sw x0, 68 ( x8 )
LBB0_25:                                //  %if.end97
	sw x0, 72 ( x8 )
	ori x28, x0, 57343 & 0xfff
	lhu x1, 12 ( x8 )
	slli x28, x28, 20
	lui x3, 57343 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	and x1, x3, x1
	sh x1, 12 ( x8 )
	ori x28, x0, -8193 & 0xfff
	lw x1, 100 ( x8 )
	slli x28, x28, 20
	lui x3, -8193 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	addi x10, x8, 92
	and x1, x3, x1
	sw x1, 100 ( x8 )
	add x11, x0, x0
	addi x12, x0, 8
	call $memset
	lw x9, 16 ( x2 )                //  4-byte Folded Reload
	nop
	bgez x9, LBB0_27
LBB0_26:                                //  %if.then109
	call $__sfp_lock_acquire
	sh x0, 12 ( x8 )
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x3, 0 ( x1 )
	call $__sfp_lock_release
	add x10, x0, x0
	jalr x0, LBB0_28 ( x0 )
LBB0_27:                                //  %if.end123
	ori x28, x0, $__sread & 0xfff
	slli x28, x28, 20
	lui x1, $__sread >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $__swrite & 0xfff
	slli x28, x28, 20
	lui x3, $__swrite >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	ori x28, x0, $__sseek & 0xfff
	slli x28, x28, 20
	lui x4, $__sseek >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	ori x28, x0, $__sclose & 0xfff
	slli x28, x28, 20
	lui x5, $__sclose >> 12 & 0xfffff
	srli x28, x28, 20
	or x5, x5, x28
	lw x7, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sh x7, 12 ( x8 )
	sh x9, 14 ( x8 )
	sw x8, 28 ( x8 )
	sw x1, 32 ( x8 )
	sw x3, 36 ( x8 )
	sw x4, 40 ( x8 )
	sw x5, 44 ( x8 )
	add x10, x0, x8
LBB0_28:                                //  %cleanup
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
	.size	$_freopen_r, ($func_end0)-($_freopen_r)
	.cfi_endproc

	.globl	$freopen
	.type	$freopen,@function
$freopen:                               //  @freopen
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	add x3, x0, x12
	add x4, x0, x11
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x5, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x5, x5, x28
	lw x5, 0 ( x5 )
	add x11, x0, x10
	add x12, x0, x4
	add x13, x0, x3
	add x10, x0, x5
	j $_freopen_r
$func_end1:
	.size	$freopen, ($func_end1)-($freopen)
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
