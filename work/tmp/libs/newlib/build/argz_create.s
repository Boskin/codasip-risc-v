	.text
	.file	"argz_create.bc"
	.globl	$argz_create
	.type	$argz_create,@function
$argz_create:                           //  @argz_create
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
	add x1, x0, x10
	sw x0, 0 ( x12 )
	lw x10, 0 ( x1 )
	nop
	beqz x10, LBB0_10
LBB0_1:                                 //  %while.body.preheader
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	add x3, x0, x0
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
	sw x12, 16 ( x2 )               //  4-byte Folded Spill
LBB0_2:                                 //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	add x8, x0, x3
	call $strlen
	lw x12, 16 ( x2 )               //  4-byte Folded Reload
	nop
	lw x1, 0 ( x12 )
	addi x3, x8, 1
	slli x4, x3, 2
	lw x5, 12 ( x2 )                //  4-byte Folded Reload
	nop
	add x4, x4, x5
	add x1, x1, x10
	addi x1, x1, 1
	sw x1, 0 ( x12 )
	lw x10, 0 ( x4 )
	nop
	bgtu x10, x0, LBB0_2
LBB0_3:                                 //  %while.end
	sw x8, 4 ( x2 )                 //  4-byte Folded Spill
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	add x10, x0, x1
	call $malloc
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x10, 0 ( x1 )
	bgtu x10, x0, LBB0_5
LBB0_4:
	addi x10, x0, 12
	jalr x0, LBB0_9 ( x0 )
LBB0_5:                                 //  %for.cond.preheader
	add x3, x0, x10
	add x10, x0, x0
	lw x1, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	bgt x0, x1, LBB0_9
LBB0_6:                                 //  %for.body.preheader
	not x4, x0
	sw x3, 16 ( x2 )                //  4-byte Folded Spill
LBB0_7:                                 //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	sw x4, 12 ( x2 )                //  4-byte Folded Spill
	lw x10, 0 ( x8 )
	nop
	call $strlen
	lw x11, 0 ( x8 )
	addi x12, x10, 1
	sw x12, 8 ( x2 )                //  4-byte Folded Spill
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $memcpy
	lw x4, 12 ( x2 )                //  4-byte Folded Reload
	nop
	addi x4, x4, 1
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	add x1, x3, x1
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	addi x8, x8, 4
	lw x1, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	bne x1, x4, LBB0_7
LBB0_8:
	add x10, x0, x0
LBB0_9:                                 //  %cleanup
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
LBB0_10:                                //  %if.then
	sw x0, 0 ( x11 )
	jalr x0, LBB0_8 ( x0 )
$func_end0:
	.size	$argz_create, ($func_end0)-($argz_create)
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
