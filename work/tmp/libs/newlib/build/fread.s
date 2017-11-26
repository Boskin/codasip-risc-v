	.text
	.file	"fread.bc"
	.globl	$_fread_r
	.type	$_fread_r,@function
$_fread_r:                              //  @_fread_r
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -56
$cfi2:
	.cfi_adjust_cfa_offset 56
	sw x1, 52 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 44 ( x2 )                //  4-byte Folded Spill
	sw x14, 40 ( x2 )               //  4-byte Folded Spill
	sw x11, 32 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x10
	sw x13, 16 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x13
	sw x12, 8 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x12
	call $__mulsi3
	bgtu x10, x0, LBB0_2
LBB0_1:
	add x10, x0, x0
	jalr x0, LBB0_29 ( x0 )
LBB0_2:                                 //  %do.body
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	beqz x8, LBB0_5
LBB0_3:                                 //  %land.lhs.true
	lw x1, 56 ( x8 )
	nop
	bgtu x1, x0, LBB0_5
LBB0_4:                                 //  %if.then2
	add x10, x0, x8
	call $__sinit
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
LBB0_5:                                 //  %if.end3
	lw x5, 40 ( x2 )                //  4-byte Folded Reload
	nop
	lh x1, 12 ( x5 )
	lui x3, 8192>>12 
	and x4, x3, x1
	bgtu x4, x0, LBB0_7
LBB0_6:                                 //  %if.then14
	or x1, x3, x1
	sh x1, 12 ( x5 )
	ori x28, x0, -8193 & 0xfff
	lw x3, 100 ( x5 )
	slli x28, x28, 20
	lui x4, -8193 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	and x3, x4, x3
	sw x3, 100 ( x5 )
LBB0_7:                                 //  %do.end22
	lw x3, 4 ( x5 )
	nop
	bgez x3, LBB0_9
LBB0_8:                                 //  %if.then25
	sw x0, 4 ( x5 )
	add x3, x0, x0
LBB0_9:                                 //  %if.end27
	andi x1, x1, 2
	bgtu x1, x0, LBB0_12
LBB0_10:                                //  %while.cond104.preheader
	lw x11, 0 ( x5 )
	bgtu x10, x3, LBB0_24
LBB0_11:
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_27 ( x0 )
LBB0_12:                                //  %if.then32
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	bgtu x10, x3, LBB0_14
LBB0_13:                                //  %if.then32
	add x3, x0, x10
LBB0_14:                                //  %if.then32
	lw x11, 0 ( x5 )
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x3
	add x12, x0, x8
	call $memcpy
	add x4, x0, x8
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 0 ( x3 )
	nop
	add x1, x4, x1
	sw x1, 0 ( x3 )
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sub x5, x1, x4
	lw x1, 4 ( x3 )
	nop
	sub x1, x1, x4
	sw x1, 4 ( x3 )
	beqz x5, LBB0_19
LBB0_15:                                //  %if.then32
	lw x11, 48 ( x3 )
	nop
	beqz x11, LBB0_19
LBB0_16:                                //  %if.then49
	addi x1, x3, 64
	beq x11, x1, LBB0_18
LBB0_17:                                //  %if.then54
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	sw x5, 36 ( x2 )                //  4-byte Folded Spill
	call $_free_r
	lw x5, 36 ( x2 )                //  4-byte Folded Reload
	add x4, x0, x8
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
LBB0_18:                                //  %if.end57
	sw x0, 48 ( x3 )
LBB0_19:                                //  %while.cond.preheader
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	add x8, x4, x1
LBB0_20:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	beqz x5, LBB0_28
LBB0_21:                                //  %while.body
                                        //    in Loop: Header=BB0_20 Depth=1
	lw x1, 0 ( x3 )
	nop
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	lw x1, 20 ( x3 )
	nop
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	lw x1, 16 ( x3 )
	nop
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
	sw x8, 16 ( x3 )
	sw x5, 20 ( x3 )
	sw x8, 0 ( x3 )
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x3
	sw x5, 36 ( x2 )                //  4-byte Folded Spill
	call $__srefill_r
	lw x5, 36 ( x2 )                //  4-byte Folded Reload
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 16 ( x3 )
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 20 ( x3 )
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x3 )
	lw x1, 4 ( x3 )
	sw x0, 4 ( x3 )
	add x8, x1, x8
	sub x5, x5, x1
	beqz x10, LBB0_20
LBB0_22:                                //  %cleanup101
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sub x10, x1, x5
LBB0_23:                                //  %cleanup153
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $__udivsi3
	jalr x0, LBB0_29 ( x0 )
LBB0_24:
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	nop
LBB0_25:                                //  %while.body108
                                        //  =>This Inner Loop Header: Depth=1
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x3
	add x12, x0, x8
	call $memcpy
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	nop
	lw x1, 0 ( x11 )
	nop
	add x1, x8, x1
	sw x1, 0 ( x11 )
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x8
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	nop
	call $__srefill_r
	bgtu x10, x0, LBB0_30
LBB0_26:                                //  %while.body108.while.cond104_crit_edge
                                        //    in Loop: Header=BB0_25 Depth=1
	lw x4, 32 ( x2 )                //  4-byte Folded Reload
	nop
	add x4, x8, x4
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	lw x11, 0 ( x1 )
	lw x3, 4 ( x1 )
	add x10, x0, x4
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x3, LBB0_25
LBB0_27:                                //  %while.end133
	lw x8, 36 ( x2 )                //  4-byte Folded Reload
	nop
	add x12, x0, x8
	call $memcpy
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 4 ( x3 )
	nop
	sub x1, x1, x8
	sw x1, 4 ( x3 )
	lw x1, 0 ( x3 )
	nop
	add x1, x8, x1
	sw x1, 0 ( x3 )
LBB0_28:                                //  %cleanup153
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
LBB0_29:                                //  %cleanup153
	lw x8, 44 ( x2 )                //  4-byte Folded Reload
	lw x1, 52 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 56
$cfi5:
	.cfi_adjust_cfa_offset -56
$cfi6:
	.cfi_def_cfa 2, 0
	ret
LBB0_30:                                //  %if.then117
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	nop
	sub x10, x1, x3
	jalr x0, LBB0_23 ( x0 )
$func_end0:
	.size	$_fread_r, ($func_end0)-($_fread_r)
	.cfi_endproc

	.globl	$fread
	.type	$fread,@function
$fread:                                 //  @fread
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	add x3, x0, x13
	add x4, x0, x12
	add x5, x0, x11
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x7, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x7, x7, x28
	lw x7, 0 ( x7 )
	add x11, x0, x10
	add x12, x0, x5
	add x13, x0, x4
	add x10, x0, x7
	add x14, x0, x3
	j $_fread_r
$func_end1:
	.size	$fread, ($func_end1)-($fread)
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
