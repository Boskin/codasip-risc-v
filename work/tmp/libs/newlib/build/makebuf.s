	.text
	.file	"makebuf.bc"
	.globl	$__smakebuf_r
	.type	$__smakebuf_r,@function
$__smakebuf_r:                          //  @__smakebuf_r
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -96
$cfi2:
	.cfi_adjust_cfa_offset 96
	sw x1, 92 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 84 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x11
	lhu x1, 12 ( x8 )
	nop
	andi x3, x1, 2
	beqz x3, LBB0_2
LBB0_1:                                 //  %if.then
	addi x1, x8, 67
	slti x3, x0, 1
	sw x1, 0 ( x8 )
	sw x1, 16 ( x8 )
	sw x3, 20 ( x8 )
	jalr x0, LBB0_17 ( x0 )
LBB0_2:                                 //  %if.end
	lh x11, 14 ( x8 )
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	bgt x0, x11, LBB0_5
LBB0_3:                                 //  %lor.lhs.false.i
	addi x12, x2, 24
	call $_fstat_r
	bgez x10, LBB0_9
LBB0_4:                                 //  %lor.lhs.false.i.if.then.i_crit_edge
	lh x1, 12 ( x8 )
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
LBB0_5:                                 //  %if.then.i
	andi x1, x1, 128
	srli x1, x1, 7
	beqz x1, LBB0_7
LBB0_6:
	addi x3, x0, 64
	jalr x0, LBB0_8 ( x0 )
LBB0_7:                                 //  %if.then.i
	addi x3, x0, 1024
LBB0_8:                                 //  %if.then.i
	add x1, x0, x0
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_10 ( x0 )
LBB0_9:                                 //  %if.end8.i
	lw x1, 28 ( x2 )
	lui x3, 61440>>12 
	ori x28, x0, 2048 & 0xfff
	lui x4, 8192>>12 
	and x1, x3, x1
	slli x28, x28, 20
	xor x1, x4, x1
	lui x3, 2048 >> 12 & 0xfffff
	srli x28, x28, 20
	seqz x1, x1
	or x3, x3, x28
	sw x3, 16 ( x2 )                //  4-byte Folded Spill
	addi x3, x0, 1024
	andi x1, x1, 1
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
LBB0_10:                                //  %__swhatbuf_r.exit
	add x11, x0, x3
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	call $_malloc_r
	bgtu x10, x0, LBB0_13
LBB0_11:                                //  %if.then4
	lh x1, 12 ( x8 )
	nop
	andi x3, x1, 512
	bgtu x3, x0, LBB0_17
LBB0_12:                                //  %if.then9
	ori x1, x1, 2
	addi x3, x8, 67
	slti x4, x0, 1
	sh x1, 12 ( x8 )
	sw x3, 0 ( x8 )
	sw x3, 16 ( x8 )
	sw x4, 20 ( x8 )
	jalr x0, LBB0_17 ( x0 )
LBB0_13:                                //  %if.else
	ori x28, x0, $_cleanup_r & 0xfff
	slli x28, x28, 20
	lui x1, $_cleanup_r >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 60 ( x3 )
	lh x1, 12 ( x8 )
	nop
	ori x1, x1, 128
	sh x1, 12 ( x8 )
	sw x10, 0 ( x8 )
	sw x10, 16 ( x8 )
	lw x4, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x4, 20 ( x8 )
	add x10, x0, x3
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x3, LBB0_16
LBB0_14:                                //  %land.lhs.true
	lh x11, 14 ( x8 )
	nop
	call $_isatty_r
	lh x1, 12 ( x8 )
	beqz x10, LBB0_16
LBB0_15:                                //  %if.then34
	ori x1, x1, 1
	sh x1, 12 ( x8 )
LBB0_16:                                //  %if.end39
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	nop
	or x1, x3, x1
	sh x1, 12 ( x8 )
LBB0_17:                                //  %cleanup
	lw x8, 84 ( x2 )                //  4-byte Folded Reload
	lw x1, 92 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 96
$cfi5:
	.cfi_adjust_cfa_offset -96
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$__smakebuf_r, ($func_end0)-($__smakebuf_r)
	.cfi_endproc

	.globl	$__swhatbuf_r
	.type	$__swhatbuf_r,@function
$__swhatbuf_r:                          //  @__swhatbuf_r
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	addi x2, x2, -88
$cfi9:
	.cfi_adjust_cfa_offset 88
	sw x1, 84 ( x2 )
$cfi10:
	.cfi_offset 1, -4
	sw x8, 76 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x11
	lh x11, 14 ( x8 )
	nop
	bgt x0, x11, LBB1_2
LBB1_1:                                 //  %lor.lhs.false
	sw x12, 12 ( x2 )               //  4-byte Folded Spill
	addi x12, x2, 16
	sw x13, 8 ( x2 )                //  4-byte Folded Spill
	call $_fstat_r
	lw x13, 8 ( x2 )                //  4-byte Folded Reload
	lw x12, 12 ( x2 )               //  4-byte Folded Reload
	bgez x10, LBB1_6
LBB1_2:                                 //  %if.then
	sw x0, 0 ( x13 )
	lbu x1, 12 ( x8 )
	nop
	srli x1, x1, 7
	beqz x1, LBB1_4
LBB1_3:
	addi x1, x0, 64
	add x10, x0, x0
	jalr x0, LBB1_7 ( x0 )
LBB1_4:                                 //  %if.then
	addi x1, x0, 1024
	add x10, x0, x0
	jalr x0, LBB1_7 ( x0 )
LBB1_6:                                 //  %if.end8
	lw x1, 20 ( x2 )
	lui x3, 61440>>12 
	lui x4, 8192>>12 
	ori x28, x0, 2048 & 0xfff
	and x1, x3, x1
	xor x1, x4, x1
	slli x28, x28, 20
	seqz x1, x1
	andi x1, x1, 1
	lui x3, 2048 >> 12 & 0xfffff
	srli x28, x28, 20
	sw x1, 0 ( x13 )
	or x10, x3, x28
	addi x1, x0, 1024
LBB1_7:                                 //  %cleanup
	sw x1, 0 ( x12 )
	lw x8, 76 ( x2 )                //  4-byte Folded Reload
	lw x1, 84 ( x2 )
$cfi11:
	.cfi_same_value 1
	addi x2, x2, 88
$cfi12:
	.cfi_adjust_cfa_offset -88
$cfi13:
	.cfi_def_cfa 2, 0
	ret
$func_end1:
	.size	$__swhatbuf_r, ($func_end1)-($__swhatbuf_r)
	.cfi_endproc


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
