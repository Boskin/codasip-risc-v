	.text
	.file	"asctime_r.bc"
	.globl	$asctime_r
	.type	$asctime_r,@function
$asctime_r:                             //  @asctime_r
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -64
$cfi2:
	.cfi_adjust_cfa_offset 64
	sw x1, 60 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 52 ( x2 )                //  4-byte Folded Spill
	sw x11, 48 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x10
	lw x10, 24 ( x8 )
	addi x11, x0, 3
	call $__mulsi3
	sw x10, 44 ( x2 )               //  4-byte Folded Spill
	lw x10, 16 ( x8 )
	addi x11, x0, 3
	call $__mulsi3
	lw x1, 20 ( x8 )
	lw x3, 12 ( x8 )
	lw x4, 8 ( x8 )
	lw x5, 4 ( x8 )
	lw x7, 0 ( x8 )
	ori x28, x0, $asctime_r.mon_name & 0xfff
	slli x28, x28, 20
	lui x9, $asctime_r.mon_name >> 12 & 0xfffff
	srli x28, x28, 20
	or x9, x9, x28
	ori x28, x0, $asctime_r.day_name & 0xfff
	slli x28, x28, 20
	lui x11, $asctime_r.day_name >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x11, x28
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x12, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	addi x1, x1, 1900
	add x9, x9, x10
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	nop
	add x10, x11, x10
	or x11, x12, x28
	sw x1, 32 ( x2 )
	sw x7, 28 ( x2 )
	sw x5, 24 ( x2 )
	sw x4, 20 ( x2 )
	sw x3, 16 ( x2 )
	sw x9, 12 ( x2 )
	sw x10, 8 ( x2 )
	sw x11, 4 ( x2 )
	lw x8, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sw x8, 0 ( x2 )
	call $siprintf
	add x10, x0, x8
	lw x8, 52 ( x2 )                //  4-byte Folded Reload
	lw x1, 60 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 64
$cfi5:
	.cfi_adjust_cfa_offset -64
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$asctime_r, ($func_end0)-($asctime_r)
	.cfi_endproc

	.address_space	0	
	.type	$asctime_r.day_name,@object //  @asctime_r.day_name
	.section	.rodata,"a",@progbits
$asctime_r.day_name:
	.ascii	"Sun"
	.ascii	"Mon"
	.ascii	"Tue"
	.ascii	"Wed"
	.ascii	"Thu"
	.ascii	"Fri"
	.ascii	"Sat"
	.size	$asctime_r.day_name, 21

	.address_space	0	
	.type	$asctime_r.mon_name,@object //  @asctime_r.mon_name
$asctime_r.mon_name:
	.ascii	"Jan"
	.ascii	"Feb"
	.ascii	"Mar"
	.ascii	"Apr"
	.ascii	"May"
	.ascii	"Jun"
	.ascii	"Jul"
	.ascii	"Aug"
	.ascii	"Sep"
	.ascii	"Oct"
	.ascii	"Nov"
	.ascii	"Dec"
	.size	$asctime_r.mon_name, 36

	.address_space	0	
	.type	$.str,@object           //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str:
	.asciz	"%.3s %.3s%3d %.2d:%.2d:%.2d %d\n"
	.size	$.str, 32


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
