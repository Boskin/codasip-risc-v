	.text
	.file	"s_nextafter.bc"
	.globl	$nextafter
	.type	$nextafter,@function
$nextafter:                             //  @nextafter
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10, 11
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
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	and x8, x1, x11
	lui x4, 2146435072>>12 &0xfffff
	bgtu x4, x8, LBB0_2
LBB0_1:                                 //  %land.lhs.true
	ori x28, x0, -2146435072 & 0xfff
	slli x28, x28, 20
	lui x3, -2146435072 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	add x3, x3, x8
	or x3, x10, x3
	bgtu x3, x0, LBB0_4
LBB0_2:                                 //  %lor.lhs.false
	and x1, x1, x13
	bgtu x4, x1, LBB0_6
LBB0_3:                                 //  %land.lhs.true14
	ori x28, x0, -2146435072 & 0xfff
	slli x28, x28, 20
	lui x3, -2146435072 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	add x1, x3, x1
	or x1, x12, x1
	beqz x1, LBB0_6
LBB0_4:                                 //  %if.then
	call $__adddf3
	add x4, x0, x10
	add x8, x0, x11
LBB0_5:                                 //  %cleanup
	add x10, x0, x4
	add x11, x0, x8
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
LBB0_6:                                 //  %if.end
	sw x12, 8 ( x2 )                //  4-byte Folded Spill
	sw x13, 4 ( x2 )                //  4-byte Folded Spill
	sw x11, 12 ( x2 )               //  4-byte Folded Spill
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	call $__eqdf2
	bgtu x10, x0, LBB0_8
LBB0_7:
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	lw x4, 16 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_5 ( x0 )
LBB0_8:                                 //  %if.end20
	lw x5, 8 ( x2 )                 //  4-byte Folded Reload
	lw x4, 4 ( x2 )                 //  4-byte Folded Reload
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	lw x7, 16 ( x2 )                //  4-byte Folded Reload
	nop
	or x1, x7, x8
	add x10, x0, x7
	bgtu x1, x0, LBB0_13
LBB0_9:                                 //  %do.body24
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	and x11, x1, x4
	sw x11, 16 ( x2 )               //  4-byte Folded Spill
	slti x10, x0, 1
	add x12, x0, x10
	add x13, x0, x11
	call $__muldf3
	add x8, x0, x11
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	slti x12, x0, 1
	lw x13, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__eqdf2
	add x1, x0, x0
	beq x10, x1, LBB0_11
LBB0_10:                                //  %do.body24
	lw x8, 16 ( x2 )                //  4-byte Folded Reload
LBB0_11:                                //  %do.body24
	lw x4, 12 ( x2 )                //  4-byte Folded Reload
	beq x10, x1, LBB0_5
LBB0_12:                                //  %do.body24
	slti x4, x0, 1
	jalr x0, LBB0_5 ( x0 )
LBB0_13:                                //  %if.end35
	add x11, x0, x3
	add x1, x0, x4
	lui x3, 2146435072>>12 &0xfffff
	bgt x0, x11, LBB0_20
LBB0_14:                                //  %if.then37
	bgt x11, x1, LBB0_17
LBB0_15:                                //  %lor.lhs.false39
	bgeu x5, x10, LBB0_27
LBB0_16:                                //  %lor.lhs.false39
	bne x11, x1, LBB0_27
LBB0_17:                                //  %if.then43
	add x1, x0, x0
	bne x10, x1, LBB0_19
LBB0_18:
	not x1, x0
LBB0_19:                                //  %if.then43
	addi x4, x10, -1
	jalr x0, LBB0_28 ( x0 )
LBB0_20:                                //  %if.else56
	bgez x1, LBB0_24
LBB0_21:                                //  %if.else56
	bgt x11, x1, LBB0_24
LBB0_22:                                //  %lor.lhs.false60
	bgeu x5, x10, LBB0_27
LBB0_23:                                //  %lor.lhs.false60
	bne x11, x1, LBB0_27
LBB0_24:                                //  %if.then64
	add x1, x0, x0
	bne x10, x1, LBB0_26
LBB0_25:
	not x1, x0
LBB0_26:                                //  %if.then64
	addi x4, x10, -1
	jalr x0, LBB0_28 ( x0 )
LBB0_27:                                //  %if.else70
	addi x4, x10, 1
	seqz x1, x4
	andi x1, x1, 1
LBB0_28:                                //  %if.end77
	add x8, x11, x1
	and x1, x3, x8
	bne x1, x3, LBB0_5
LBB0_29:                                //  %if.then80
	add x12, x0, x10
	add x13, x0, x11
	jalr x0, LBB0_4 ( x0 )
$func_end0:
	.size	$nextafter, ($func_end0)-($nextafter)
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
