	.text
	.file	"refill.bc"
	.globl	$__srefill_r
	.type	$__srefill_r,@function
$__srefill_r:                           //  @__srefill_r
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
	add x8, x0, x11
	add x5, x0, x10
	beqz x5, LBB0_3
LBB0_1:                                 //  %land.lhs.true
	lw x1, 56 ( x5 )
	nop
	bgtu x1, x0, LBB0_3
LBB0_2:                                 //  %if.then
	add x10, x0, x5
	sw x5, 8 ( x2 )                 //  4-byte Folded Spill
	call $__sinit
	lw x5, 8 ( x2 )                 //  4-byte Folded Reload
LBB0_3:                                 //  %if.end
	lh x1, 12 ( x8 )
	lui x3, 8192>>12 
	and x4, x3, x1
	bgtu x4, x0, LBB0_5
LBB0_4:                                 //  %if.then4
	or x1, x3, x1
	sh x1, 12 ( x8 )
	ori x28, x0, -8193 & 0xfff
	lw x3, 100 ( x8 )
	slli x28, x28, 20
	lui x4, -8193 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	and x3, x4, x3
	sw x3, 100 ( x8 )
LBB0_5:                                 //  %do.end10
	andi x3, x1, 32
	sw x0, 4 ( x8 )
	not x10, x0
	bgtu x3, x0, LBB0_31
LBB0_6:                                 //  %if.end16
	andi x3, x1, 4
	bgtu x3, x0, LBB0_21
LBB0_7:                                 //  %if.then21
	andi x3, x1, 16
	bgtu x3, x0, LBB0_9
LBB0_8:                                 //  %if.then27
	addi x3, x0, 9
	ori x1, x1, 64
	sw x3, 0 ( x5 )
	jalr x0, LBB0_30 ( x0 )
LBB0_9:                                 //  %if.end32
	andi x3, x1, 8
	beqz x3, LBB0_13
LBB0_10:                                //  %if.then37
	add x10, x0, x5
	add x11, x0, x8
	sw x5, 8 ( x2 )                 //  4-byte Folded Spill
	call $_fflush_r
	beqz x10, LBB0_12
LBB0_11:
	not x10, x0
	jalr x0, LBB0_31 ( x0 )
LBB0_12:                                //  %if.end40
	lh x1, 12 ( x8 )
	nop
	andi x1, x1, -9
	sh x1, 12 ( x8 )
	sw x0, 8 ( x8 )
	sw x0, 24 ( x8 )
	lw x5, 8 ( x2 )                 //  4-byte Folded Reload
LBB0_13:                                //  %if.end45
	ori x1, x1, 4
	sh x1, 12 ( x8 )
LBB0_14:                                //  %if.end69
	sw x5, 8 ( x2 )                 //  4-byte Folded Spill
	lw x1, 16 ( x8 )
	nop
	bgtu x1, x0, LBB0_16
LBB0_15:                                //  %if.then73
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x8
	call $__smakebuf_r
LBB0_16:                                //  %if.end74
	lh x3, 12 ( x8 )
	nop
	andi x1, x3, 3
	beqz x1, LBB0_19
LBB0_17:                                //  %if.then79
	slti x1, x0, 1
	sh x1, 12 ( x8 )
	ori x28, x0, $_global_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x1, $_global_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $lflush & 0xfff
	lw x10, 0 ( x1 )
	slli x28, x28, 20
	lui x1, $lflush >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	sw x3, 4 ( x2 )                 //  4-byte Folded Spill
	call $_fwalk
	lw x3, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	andi x1, x3, 9
	xori x1, x1, 9
	sh x3, 12 ( x8 )
	bgtu x1, x0, LBB0_19
LBB0_18:                                //  %if.then89
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x8
	call $__sflush_r
LBB0_19:                                //  %if.end92
	lw x12, 16 ( x8 )
	lw x13, 20 ( x8 )
	lw x11, 28 ( x8 )
	lw x1, 32 ( x8 )
	sw x12, 0 ( x8 )
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call_reg x1
	sw x10, 4 ( x8 )
	ble x10, x0, LBB0_26
LBB0_20:
	add x10, x0, x0
	jalr x0, LBB0_31 ( x0 )
LBB0_21:                                //  %if.else
	lw x11, 48 ( x8 )
	nop
	beqz x11, LBB0_14
LBB0_22:                                //  %if.then52
	addi x1, x8, 64
	beq x11, x1, LBB0_24
LBB0_23:                                //  %if.then57
	add x10, x0, x5
	sw x5, 8 ( x2 )                 //  4-byte Folded Spill
	call $_free_r
	lw x5, 8 ( x2 )                 //  4-byte Folded Reload
LBB0_24:                                //  %if.end60
	sw x0, 48 ( x8 )
	lw x1, 60 ( x8 )
	nop
	sw x1, 4 ( x8 )
	beqz x1, LBB0_14
LBB0_25:                                //  %if.then66
	lw x1, 56 ( x8 )
	add x10, x0, x0
	sw x1, 0 ( x8 )
	jalr x0, LBB0_31 ( x0 )
LBB0_26:                                //  %if.then103
	bgtu x10, x0, LBB0_28
LBB0_27:
	addi x1, x0, 32
	jalr x0, LBB0_29 ( x0 )
LBB0_28:                                //  %if.else112
	sw x0, 4 ( x8 )
	addi x1, x0, 64
LBB0_29:                                //  %if.end118
	not x10, x0
	lh x3, 12 ( x8 )
	nop
	or x1, x1, x3
LBB0_30:                                //  %return
	sh x1, 12 ( x8 )
LBB0_31:                                //  %return
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
	.size	$__srefill_r, ($func_end0)-($__srefill_r)
	.cfi_endproc

	.type	$lflush,@function
$lflush:                                //  @lflush
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	addi x2, x2, -8
$cfi9:
	.cfi_adjust_cfa_offset 8
	sw x1, 4 ( x2 )
$cfi10:
	.cfi_offset 1, -4
	lhu x1, 12 ( x10 )
	nop
	andi x1, x1, 9
	xori x1, x1, 9
	beqz x1, LBB1_2
LBB1_1:
	add x10, x0, x0
	jalr x0, LBB1_3 ( x0 )
LBB1_2:                                 //  %if.then
	call $fflush
LBB1_3:                                 //  %return
	lw x1, 4 ( x2 )
$cfi11:
	.cfi_same_value 1
	addi x2, x2, 8
$cfi12:
	.cfi_adjust_cfa_offset -8
$cfi13:
	.cfi_def_cfa 2, 0
	ret
$func_end1:
	.size	$lflush, ($func_end1)-($lflush)
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
