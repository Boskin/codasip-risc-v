	.text
	.file	"efgcvt.bc"
	.globl	$fcvt
	.type	$fcvt,@function
$fcvt:                                  //  @fcvt
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	add x15, x0, x0
	j $fcvtbuf
$func_end0:
	.size	$fcvt, ($func_end0)-($fcvt)
	.cfi_endproc

	.globl	$fcvtf
	.type	$fcvtf,@function
$fcvtf:                                 //  @fcvtf
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi2:
	.cfi_def_cfa 2, 0
$cfi3:
	.cfi_val_offset 2, 0
	addi x2, x2, -24
$cfi4:
	.cfi_adjust_cfa_offset 24
	sw x1, 20 ( x2 )
$cfi5:
	.cfi_offset 1, -4
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	sw x13, 8 ( x2 )                //  4-byte Folded Spill
	sw x12, 4 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x11
	call $__extendsfdf2
	add x15, x0, x0
	add x12, x0, x8
	lw x13, 4 ( x2 )                //  4-byte Folded Reload
	lw x14, 8 ( x2 )                //  4-byte Folded Reload
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	lw x1, 20 ( x2 )
$cfi6:
	.cfi_same_value 1
	addi x2, x2, 24
$cfi7:
	.cfi_adjust_cfa_offset -24
$cfi8:
	.cfi_def_cfa 2, 0
	j $fcvtbuf
$func_end1:
	.size	$fcvtf, ($func_end1)-($fcvtf)
	.cfi_endproc

	.globl	$gcvtf
	.type	$gcvtf,@function
$gcvtf:                                 //  @gcvtf
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi9:
	.cfi_def_cfa 2, 0
$cfi10:
	.cfi_val_offset 2, 0
	addi x2, x2, -32
$cfi11:
	.cfi_adjust_cfa_offset 32
	sw x1, 28 ( x2 )
$cfi12:
	.cfi_offset 1, -4
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	sw x12, 16 ( x2 )               //  4-byte Folded Spill
	sw x11, 12 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x10
	add x11, x0, x0
	call $__ltsf2
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	call $__extendsfdf2
	add x1, x0, x11
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	bgt x0, x3, LBB2_2
LBB2_1:
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	nop
	add x14, x0, x3
	lw x13, 12 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB2_3 ( x0 )
LBB2_2:                                 //  %if.then.i
	addi x3, x0, 45
	lw x4, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sb x3, 0 ( x4 )
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, -1
	addi x14, x4, 1
	add x13, x0, x3
LBB2_3:                                 //  %gcvt.exit
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x3, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	lw x3, 0 ( x3 )
	addi x15, x0, 103
	add x11, x0, x10
	add x10, x0, x3
	add x12, x0, x1
	add x8, x0, x0
	add x16, x0, x8
	call $_gcvt
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	bne x10, x8, LBB2_5
LBB2_4:                                 //  %gcvt.exit
	add x1, x0, x8
LBB2_5:                                 //  %gcvt.exit
	add x10, x0, x1
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	lw x1, 28 ( x2 )
$cfi13:
	.cfi_same_value 1
	addi x2, x2, 32
$cfi14:
	.cfi_adjust_cfa_offset -32
$cfi15:
	.cfi_def_cfa 2, 0
	ret
$func_end2:
	.size	$gcvtf, ($func_end2)-($gcvtf)
	.cfi_endproc

	.globl	$gcvt
	.type	$gcvt,@function
$gcvt:                                  //  @gcvt
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi16:
	.cfi_def_cfa 2, 0
$cfi17:
	.cfi_val_offset 2, 0
	addi x2, x2, -32
$cfi18:
	.cfi_adjust_cfa_offset 32
	sw x1, 28 ( x2 )
$cfi19:
	.cfi_offset 1, -4
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x13
	sw x12, 4 ( x2 )                //  4-byte Folded Spill
	add x12, x0, x0
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	sw x11, 12 ( x2 )               //  4-byte Folded Spill
	add x13, x0, x12
	call $__ltdf2
	sw x8, 16 ( x2 )                //  4-byte Folded Spill
	bgt x0, x10, LBB3_2
LBB3_1:
	add x14, x0, x8
	lw x13, 4 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB3_3 ( x0 )
LBB3_2:                                 //  %if.then
	addi x1, x0, 45
	sb x1, 0 ( x8 )
	lw x1, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	addi x1, x1, -1
	addi x14, x8, 1
	add x13, x0, x1
LBB3_3:                                 //  %if.end
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x1, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x10, 0 ( x1 )
	addi x15, x0, 103
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	lw x12, 12 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x0
	add x16, x0, x8
	call $_gcvt
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	bne x10, x8, LBB3_5
LBB3_4:                                 //  %if.end
	add x1, x0, x8
LBB3_5:                                 //  %if.end
	add x10, x0, x1
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	lw x1, 28 ( x2 )
$cfi20:
	.cfi_same_value 1
	addi x2, x2, 32
$cfi21:
	.cfi_adjust_cfa_offset -32
$cfi22:
	.cfi_def_cfa 2, 0
	ret
$func_end3:
	.size	$gcvt, ($func_end3)-($gcvt)
	.cfi_endproc

	.globl	$ecvt
	.type	$ecvt,@function
$ecvt:                                  //  @ecvt
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi23:
	.cfi_def_cfa 2, 0
$cfi24:
	.cfi_val_offset 2, 0
	add x15, x0, x0
	j $ecvtbuf
$func_end4:
	.size	$ecvt, ($func_end4)-($ecvt)
	.cfi_endproc

	.globl	$ecvtf
	.type	$ecvtf,@function
$ecvtf:                                 //  @ecvtf
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi25:
	.cfi_def_cfa 2, 0
$cfi26:
	.cfi_val_offset 2, 0
	addi x2, x2, -24
$cfi27:
	.cfi_adjust_cfa_offset 24
	sw x1, 20 ( x2 )
$cfi28:
	.cfi_offset 1, -4
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	sw x13, 8 ( x2 )                //  4-byte Folded Spill
	sw x12, 4 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x11
	call $__extendsfdf2
	add x15, x0, x0
	add x12, x0, x8
	lw x13, 4 ( x2 )                //  4-byte Folded Reload
	lw x14, 8 ( x2 )                //  4-byte Folded Reload
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	lw x1, 20 ( x2 )
$cfi29:
	.cfi_same_value 1
	addi x2, x2, 24
$cfi30:
	.cfi_adjust_cfa_offset -24
$cfi31:
	.cfi_def_cfa 2, 0
	j $ecvtbuf
$func_end5:
	.size	$ecvtf, ($func_end5)-($ecvtf)
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
