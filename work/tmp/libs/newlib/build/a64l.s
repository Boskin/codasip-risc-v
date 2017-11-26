	.text
	.file	"a64l.bc"
	.globl	$a64l
	.type	$a64l,@function
$a64l:                                  //  @a64l
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -32
$cfi2:
	.cfi_adjust_cfa_offset 32
	sw x1, 28 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	add x4, x0, x10
	bgtu x4, x0, LBB0_2
LBB0_1:
	add x8, x0, x0
	jalr x0, LBB0_23 ( x0 )
LBB0_2:                                 //  %for.body.preheader
	lbu x1, 0 ( x4 )
	add x8, x0, x0
	add x7, x0, x4
	beq x1, x8, LBB0_4
LBB0_3:                                 //  %for.body.preheader
	addi x7, x4, 1
LBB0_4:                                 //  %for.body.preheader
	lbu x1, 0 ( x7 )
	nop
	beq x1, x8, LBB0_6
LBB0_5:                                 //  %for.body.preheader
	addi x7, x7, 1
LBB0_6:                                 //  %for.body.preheader
	lbu x1, 0 ( x7 )
	nop
	beq x1, x8, LBB0_8
LBB0_7:                                 //  %for.body.preheader
	addi x7, x7, 1
LBB0_8:                                 //  %for.body.preheader
	lbu x1, 0 ( x7 )
	nop
	beq x1, x8, LBB0_10
LBB0_9:                                 //  %for.body.preheader
	addi x7, x7, 1
LBB0_10:                                //  %for.body.preheader
	lbu x1, 0 ( x7 )
	nop
	beq x1, x8, LBB0_12
LBB0_11:                                //  %for.body.preheader
	addi x7, x7, 1
LBB0_12:                                //  %for.body.preheader
	lbu x1, 0 ( x7 )
	nop
	beq x1, x8, LBB0_14
LBB0_13:                                //  %for.body.preheader
	addi x7, x7, 1
LBB0_14:                                //  %for.body.preheader
	bgeu x4, x7, LBB0_23
LBB0_15:                                //  %while.body.preheader
	add x8, x0, x0
	sw x4, 8 ( x2 )                 //  4-byte Folded Spill
LBB0_16:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	add x1, x0, x7
	addi x7, x1, -1
	lb x1, -1 ( x1 )
	nop
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
	addi x10, x1, -47
	addi x1, x0, 75
	bgtu x10, x1, LBB0_21
LBB0_17:                                //  %while.body
                                        //    in Loop: Header=BB0_16 Depth=1
	addi x11, x0, 4
	sw x7, 16 ( x2 )                //  4-byte Folded Spill
	call $__mulsi3
	lw x7, 16 ( x2 )                //  4-byte Folded Reload
	lw x4, 8 ( x2 )                 //  4-byte Folded Reload
	ori x28, x0, JTI0_0 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, JTI0_0 >> 12 & 0xfffff
	or x1, x1, x28
	add x1, x1, x10
	lw x3, 0 ( x1 )
	slti x1, x0, 1
	jr x3
LBB0_18:                                //  %sw.bb6
                                        //    in Loop: Header=BB0_16 Depth=1
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, -46
	jalr x0, LBB0_22 ( x0 )
LBB0_19:                                //  %sw.bb8
                                        //    in Loop: Header=BB0_16 Depth=1
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, -53
	jalr x0, LBB0_22 ( x0 )
LBB0_20:                                //  %sw.bb12
                                        //    in Loop: Header=BB0_16 Depth=1
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, -59
	jalr x0, LBB0_22 ( x0 )
LBB0_21:                                //  %sw.default
                                        //    in Loop: Header=BB0_16 Depth=1
	add x1, x0, x0
LBB0_22:                                //  %sw.epilog
                                        //    in Loop: Header=BB0_16 Depth=1
	slli x3, x8, 6
	add x8, x3, x1
	bgtu x7, x4, LBB0_16
LBB0_23:                                //  %cleanup
	add x10, x0, x8
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	lw x1, 28 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 32
$cfi5:
	.cfi_adjust_cfa_offset -32
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$a64l, ($func_end0)-($a64l)
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	LBB0_22
	.long	LBB0_18
	.long	LBB0_18
	.long	LBB0_18
	.long	LBB0_18
	.long	LBB0_18
	.long	LBB0_18
	.long	LBB0_18
	.long	LBB0_18
	.long	LBB0_18
	.long	LBB0_18
	.long	LBB0_21
	.long	LBB0_21
	.long	LBB0_21
	.long	LBB0_21
	.long	LBB0_21
	.long	LBB0_21
	.long	LBB0_21
	.long	LBB0_19
	.long	LBB0_19
	.long	LBB0_19
	.long	LBB0_19
	.long	LBB0_19
	.long	LBB0_19
	.long	LBB0_19
	.long	LBB0_19
	.long	LBB0_19
	.long	LBB0_19
	.long	LBB0_19
	.long	LBB0_19
	.long	LBB0_19
	.long	LBB0_19
	.long	LBB0_19
	.long	LBB0_19
	.long	LBB0_19
	.long	LBB0_19
	.long	LBB0_19
	.long	LBB0_19
	.long	LBB0_19
	.long	LBB0_19
	.long	LBB0_19
	.long	LBB0_19
	.long	LBB0_19
	.long	LBB0_19
	.long	LBB0_21
	.long	LBB0_21
	.long	LBB0_21
	.long	LBB0_21
	.long	LBB0_21
	.long	LBB0_21
	.long	LBB0_20
	.long	LBB0_20
	.long	LBB0_20
	.long	LBB0_20
	.long	LBB0_20
	.long	LBB0_20
	.long	LBB0_20
	.long	LBB0_20
	.long	LBB0_20
	.long	LBB0_20
	.long	LBB0_20
	.long	LBB0_20
	.long	LBB0_20
	.long	LBB0_20
	.long	LBB0_20
	.long	LBB0_20
	.long	LBB0_20
	.long	LBB0_20
	.long	LBB0_20
	.long	LBB0_20
	.long	LBB0_20
	.long	LBB0_20
	.long	LBB0_20
	.long	LBB0_20
	.long	LBB0_20
	.long	LBB0_20


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
