	.text
	.file	"setvbuf.bc"
	.globl	$setvbuf
	.type	$setvbuf,@function
$setvbuf:                               //  @setvbuf
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -48
$cfi2:
	.cfi_adjust_cfa_offset 48
	sw x1, 44 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 36 ( x2 )                //  4-byte Folded Spill
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x10
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x1, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x10, 0 ( x1 )
	sw x12, 16 ( x2 )               //  4-byte Folded Spill
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	sw x13, 20 ( x2 )               //  4-byte Folded Spill
	beqz x10, LBB0_3
LBB0_1:                                 //  %land.lhs.true
	lw x1, 56 ( x10 )
	nop
	bgtu x1, x0, LBB0_3
LBB0_2:                                 //  %if.then
	call $__sinit
	lw x13, 20 ( x2 )               //  4-byte Folded Reload
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x12, 16 ( x2 )               //  4-byte Folded Reload
	nop
LBB0_3:                                 //  %if.end
	xori x3, x12, 2
	beqz x3, LBB0_6
LBB0_4:                                 //  %if.then2
	slti x1, x0, 1
	not x9, x0
	bgtu x12, x1, LBB0_38
LBB0_5:                                 //  %if.then2
	bgt x0, x13, LBB0_38
LBB0_6:                                 //  %if.end9
	sw x3, 12 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x8
	call $_fflush_r
	lw x11, 48 ( x8 )
	nop
	beqz x11, LBB0_10
LBB0_7:                                 //  %if.then17
	addi x1, x8, 64
	beq x11, x1, LBB0_9
LBB0_8:                                 //  %if.then22
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $_free_r
LBB0_9:                                 //  %if.end25
	sw x0, 48 ( x8 )
LBB0_10:                                //  %if.end28
	lhu x1, 12 ( x8 )
	sw x0, 24 ( x8 )
	sw x0, 4 ( x8 )
	andi x3, x1, 128
	beqz x3, LBB0_12
LBB0_11:                                //  %if.then33
	lw x11, 16 ( x8 )
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $_free_r
	lh x1, 12 ( x8 )
LBB0_12:                                //  %if.end35
	ori x28, x0, 62300 & 0xfff
	slli x28, x28, 20
	lui x3, 62300 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	and x1, x3, x1
	sh x1, 12 ( x8 )
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB0_14
LBB0_13:
	add x9, x0, x0
	jalr x0, LBB0_34 ( x0 )
LBB0_14:                                //  %if.end43
	addi x12, x2, 32
	addi x13, x2, 28
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $__swhatbuf_r
	lh x3, 12 ( x8 )
	add x1, x0, x0
	or x3, x10, x3
	sh x3, 12 ( x8 )
	add x7, x0, x1
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
	beq x3, x1, LBB0_16
LBB0_15:                                //  %if.end43
	lw x7, 8 ( x2 )                 //  4-byte Folded Reload
LBB0_16:                                //  %if.end43
	lw x4, 16 ( x2 )                //  4-byte Folded Reload
	bne x3, x1, LBB0_18
LBB0_17:
	lw x3, 32 ( x2 )
LBB0_18:                                //  %if.end43
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	beqz x7, LBB0_20
LBB0_19:
	add x5, x0, x3
	jalr x0, LBB0_23 ( x0 )
LBB0_20:                                //  %if.then54
	add x10, x0, x3
	sw x3, 20 ( x2 )                //  4-byte Folded Spill
	call $malloc
	add x7, x0, x10
	beqz x7, LBB0_32
LBB0_21:
	lw x5, 20 ( x2 )                //  4-byte Folded Reload
	lw x4, 16 ( x2 )                //  4-byte Folded Reload
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
LBB0_22:                                //  %if.end88
	lh x1, 12 ( x8 )
	nop
	ori x1, x1, 128
	sh x1, 12 ( x8 )
LBB0_23:                                //  %if.end93
	lw x1, 56 ( x10 )
	nop
	bgtu x1, x0, LBB0_25
LBB0_24:                                //  %if.then96
	sw x5, 20 ( x2 )                //  4-byte Folded Spill
	sw x7, 24 ( x2 )                //  4-byte Folded Spill
	call $__sinit
	lw x7, 24 ( x2 )                //  4-byte Folded Reload
	lw x5, 20 ( x2 )                //  4-byte Folded Reload
	lw x4, 16 ( x2 )                //  4-byte Folded Reload
LBB0_25:                                //  %if.end97
	lw x1, 32 ( x2 )
	nop
	beq x5, x1, LBB0_27
LBB0_26:                                //  %if.then100
	lh x1, 12 ( x8 )
	lui x3, 2048 >> 12 & 0xfffff
	ori x28, x0, 2048 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	or x1, x3, x1
	sh x1, 12 ( x8 )
LBB0_27:                                //  %if.end105
	lh x1, 12 ( x8 )
	xori x3, x4, 1
	bgtu x3, x0, LBB0_29
LBB0_28:                                //  %if.then108
	ori x1, x1, 1
	sh x1, 12 ( x8 )
LBB0_29:                                //  %if.end113
	sw x7, 0 ( x8 )
	sw x7, 16 ( x8 )
	sw x5, 20 ( x8 )
	slli x1, x1, 16
	srai x1, x1, 16
	andi x3, x1, 8
	beqz x3, LBB0_36
LBB0_30:                                //  %if.then123
	andi x1, x1, 1
	beqz x1, LBB0_35
LBB0_31:                                //  %if.then128
	sw x0, 8 ( x8 )
	sub x1, x0, x5
	sw x1, 24 ( x8 )
	jalr x0, LBB0_37 ( x0 )
LBB0_32:                                //  %if.then58
	not x9, x0
	lw x10, 32 ( x2 )
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	beq x1, x10, LBB0_34
LBB0_33:                                //  %if.end64
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	call $malloc
	not x9, x0
	lw x5, 20 ( x2 )                //  4-byte Folded Reload
	add x7, x0, x10
	lw x4, 16 ( x2 )                //  4-byte Folded Reload
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	bgtu x7, x0, LBB0_22
LBB0_34:                                //  %nbf
	lh x1, 12 ( x8 )
	addi x3, x8, 67
	slti x4, x0, 1
	ori x1, x1, 2
	sh x1, 12 ( x8 )
	sw x0, 8 ( x8 )
	sw x3, 0 ( x8 )
	sw x3, 16 ( x8 )
	sw x4, 20 ( x8 )
	jalr x0, LBB0_38 ( x0 )
LBB0_35:                                //  %if.else
	sw x5, 8 ( x8 )
	jalr x0, LBB0_37 ( x0 )
LBB0_36:                                //  %if.else135
	sw x0, 8 ( x8 )
LBB0_37:                                //  %cleanup
	add x9, x0, x0
LBB0_38:                                //  %cleanup
	add x10, x0, x9
	lw x8, 36 ( x2 )                //  4-byte Folded Reload
	lw x1, 44 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 48
$cfi5:
	.cfi_adjust_cfa_offset -48
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$setvbuf, ($func_end0)-($setvbuf)
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
