	.text
	.file	"wsetup.bc"
	.globl	$__swsetup_r
	.type	$__swsetup_r,@function
$__swsetup_r:                           //  @__swsetup_r
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
	add x4, x0, x10
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x1, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x10, 0 ( x1 )
	nop
	beqz x10, LBB0_3
LBB0_1:                                 //  %land.lhs.true
	lw x1, 56 ( x10 )
	nop
	bgtu x1, x0, LBB0_3
LBB0_2:                                 //  %if.then
	sw x4, 8 ( x2 )                 //  4-byte Folded Spill
	call $__sinit
	lw x4, 8 ( x2 )                 //  4-byte Folded Reload
LBB0_3:                                 //  %if.end
	lh x1, 12 ( x8 )
	nop
	andi x3, x1, 8
	bgtu x3, x0, LBB0_13
LBB0_4:                                 //  %if.then3
	andi x3, x1, 16
	bgtu x3, x0, LBB0_6
LBB0_5:                                 //  %if.then9
	addi x3, x0, 9
	sw x3, 0 ( x4 )
	jalr x0, LBB0_24 ( x0 )
LBB0_6:                                 //  %if.end13
	andi x3, x1, 4
	beqz x3, LBB0_12
LBB0_7:                                 //  %if.then18
	lw x11, 48 ( x8 )
	nop
	beqz x11, LBB0_11
LBB0_8:                                 //  %if.then21
	addi x3, x8, 64
	beq x11, x3, LBB0_10
LBB0_9:                                 //  %if.then26
	add x10, x0, x4
	sw x4, 8 ( x2 )                 //  4-byte Folded Spill
	call $_free_r
	lw x4, 8 ( x2 )                 //  4-byte Folded Reload
	lh x1, 12 ( x8 )
LBB0_10:                                //  %if.end29
	sw x0, 48 ( x8 )
LBB0_11:                                //  %if.end32
	ori x28, x0, 65499 & 0xfff
	slli x28, x28, 20
	lui x3, 65499 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	and x1, x3, x1
	sh x1, 12 ( x8 )
	lw x3, 16 ( x8 )
	sw x0, 4 ( x8 )
	sw x3, 0 ( x8 )
LBB0_12:                                //  %if.end38
	ori x1, x1, 8
	sh x1, 12 ( x8 )
LBB0_13:                                //  %if.end43
	lw x3, 16 ( x8 )
	nop
	bgtu x3, x0, LBB0_16
LBB0_14:                                //  %if.end43
	andi x3, x1, 640
	xori x3, x3, 512
	beqz x3, LBB0_16
LBB0_15:                                //  %if.then57
	add x10, x0, x4
	add x11, x0, x8
	call $__smakebuf_r
	lh x1, 12 ( x8 )
	nop
LBB0_16:                                //  %if.end58
	slli x1, x1, 16
	srai x1, x1, 16
	andi x3, x1, 1
	beqz x3, LBB0_18
LBB0_17:                                //  %if.then63
	lw x3, 20 ( x8 )
	sw x0, 8 ( x8 )
	sub x3, x0, x3
	sw x3, 24 ( x8 )
	jalr x0, LBB0_22 ( x0 )
LBB0_18:                                //  %if.else
	andi x3, x1, 2
	beqz x3, LBB0_20
LBB0_19:
	add x3, x0, x0
	jalr x0, LBB0_21 ( x0 )
LBB0_20:                                //  %cond.false
	lw x3, 20 ( x8 )
	nop
LBB0_21:                                //  %cond.end
	sw x3, 8 ( x8 )
LBB0_22:                                //  %if.end72
	lw x3, 16 ( x8 )
	add x10, x0, x0
	bgtu x3, x0, LBB0_25
LBB0_23:                                //  %if.end72
	andi x3, x1, 128
	beqz x3, LBB0_25
LBB0_24:                                //  %if.then81
	ori x1, x1, 64
	sh x1, 12 ( x8 )
	not x10, x0
LBB0_25:                                //  %return
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
	.size	$__swsetup_r, ($func_end0)-($__swsetup_r)
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
