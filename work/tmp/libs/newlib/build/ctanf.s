	.text
	.file	"ctanf.bc"
	.globl	$ctanf
	.type	$ctanf,@function
$ctanf:                                 //  @ctanf
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retstruct_reg 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -112
$cfi2:
	.cfi_adjust_cfa_offset 112
	sw x1, 108 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 100 ( x2 )               //  4-byte Folded Spill
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	lw x3, 4 ( x11 )
	lw x8, 0 ( x11 )
	sw x3, 4 ( x2 )                 //  4-byte Folded Spill
	sw x3, 96 ( x2 )
	sw x8, 92 ( x2 )
	lw x1, 92 ( x2 )
	nop
	sw x1, 52 ( x2 )
	sw x3, 56 ( x2 )
	addi x10, x2, 52
	call $crealf
	add x11, x0, x10
	call $__addsf3
	call $cosf
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	sw x8, 84 ( x2 )
	lw x8, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x8, 88 ( x2 )
	lw x1, 84 ( x2 )
	nop
	sw x1, 44 ( x2 )
	sw x8, 48 ( x2 )
	addi x10, x2, 44
	call $cimagf
	add x11, x0, x10
	call $__addsf3
	call $coshf
	add x1, x0, x10
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__addsf3
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	call $fabsf
	lui x11, 1048576000>>12 &0xfffff
	call $__ltsf2
	bgez x10, LBB0_2
LBB0_1:                                 //  %if.then
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 76 ( x2 )
	sw x8, 80 ( x2 )
	sw x8, 40 ( x2 )
	lw x1, 76 ( x2 )
	nop
	sw x1, 36 ( x2 )
	addi x10, x2, 36
	call $_ctansf
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
LBB0_2:                                 //  %if.end
	add x11, x0, x0
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__eqsf2
	bgtu x10, x0, LBB0_4
LBB0_3:
	lui x8, 2139095040>>12 &0xfffff
	lui x10, 2143289344>>12 &0xfffff
	jalr x0, LBB0_5 ( x0 )
LBB0_4:                                 //  %if.end21
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 68 ( x2 )
	sw x8, 72 ( x2 )
	lw x1, 68 ( x2 )
	nop
	sw x1, 28 ( x2 )
	sw x8, 32 ( x2 )
	addi x10, x2, 28
	call $crealf
	add x11, x0, x10
	call $__addsf3
	call $sinf
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 60 ( x2 )
	sw x8, 64 ( x2 )
	sw x8, 24 ( x2 )
	lw x1, 60 ( x2 )
	nop
	sw x1, 20 ( x2 )
	lw x8, 16 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	call $__divsf3
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	addi x10, x2, 20
	call $cimagf
	add x11, x0, x10
	call $__addsf3
	call $sinhf
	add x11, x0, x8
	call $__divsf3
	add x8, x0, x10
	add x11, x0, x0
	call $__mulsf3
	add x1, x0, x10
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__addsf3
LBB0_5:                                 //  %cleanup
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x10, 0 ( x1 )
	sw x8, 4 ( x1 )
	lw x8, 100 ( x2 )               //  4-byte Folded Reload
	lw x1, 108 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 112
$cfi5:
	.cfi_adjust_cfa_offset -112
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$ctanf, ($func_end0)-($ctanf)
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
