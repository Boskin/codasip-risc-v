	.text
	.file	"__atexit.bc"
	.globl	$__register_exitproc
	.type	$__register_exitproc,@function
$__register_exitproc:                   //  @__register_exitproc
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
	add x5, x0, x10
	ori x28, x0, $_global_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x1, $_global_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x3, 0 ( x1 )
	nop
	lw x10, 328 ( x3 )
	nop
	bgtu x10, x0, LBB0_2
LBB0_1:                                 //  %if.then
	addi x10, x3, 332
	sw x10, 328 ( x3 )
LBB0_2:                                 //  %if.end
	lw x1, 4 ( x10 )
	nop
	slti x1, x1, 32
	bgtu x1, x0, LBB0_6
LBB0_3:                                 //  %if.then3
	ori x28, x0, $malloc & 0xfff
	slli x28, x28, 20
	lui x1, $malloc >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	not x8, x0
	beqz x1, LBB0_10
LBB0_4:                                 //  %if.end5
	sw x3, 8 ( x2 )                 //  4-byte Folded Spill
	sw x5, 12 ( x2 )                //  4-byte Folded Spill
	sw x12, 16 ( x2 )               //  4-byte Folded Spill
	sw x13, 20 ( x2 )               //  4-byte Folded Spill
	sw x11, 24 ( x2 )               //  4-byte Folded Spill
	addi x10, x0, 400
	call $malloc
	beqz x10, LBB0_10
LBB0_5:                                 //  %if.end8
	sw x0, 4 ( x10 )
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	lw x1, 328 ( x3 )
	nop
	sw x1, 0 ( x10 )
	sw x10, 328 ( x3 )
	sw x0, 392 ( x10 )
	sw x0, 396 ( x10 )
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	lw x13, 20 ( x2 )               //  4-byte Folded Reload
	lw x12, 16 ( x2 )               //  4-byte Folded Reload
	lw x5, 12 ( x2 )                //  4-byte Folded Reload
	nop
LBB0_6:                                 //  %if.end13
	beqz x5, LBB0_9
LBB0_7:                                 //  %if.then15
	lw x3, 4 ( x10 )
	addi x4, x10, 136
	slti x1, x0, 1
	xori x5, x5, 2
	slli x3, x3, 2
	add x3, x3, x4
	sw x12, 0 ( x3 )
	lw x3, 4 ( x10 )
	lw x7, 392 ( x10 )
	sll x9, x1, x3
	slli x3, x3, 2
	or x7, x9, x7
	add x3, x3, x4
	sw x7, 392 ( x10 )
	sw x13, 128 ( x3 )
	bgtu x5, x0, LBB0_9
LBB0_8:                                 //  %if.then23
	lw x3, 4 ( x10 )
	lw x4, 396 ( x10 )
	sll x1, x1, x3
	or x1, x1, x4
	sw x1, 396 ( x10 )
LBB0_9:                                 //  %if.end29
	lw x1, 4 ( x10 )
	nop
	slli x3, x1, 2
	addi x1, x1, 1
	add x3, x3, x10
	sw x1, 4 ( x10 )
	sw x11, 8 ( x3 )
	add x8, x0, x0
LBB0_10:                                //  %cleanup
	add x10, x0, x8
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
	.size	$__register_exitproc, ($func_end0)-($__register_exitproc)
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
