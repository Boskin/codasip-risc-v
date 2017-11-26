	.text
	.file	"sf_atan.bc"
	.globl	$atanf
	.type	$atanf,@function
$atanf:                                 //  @atanf
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
	add x5, x0, x10
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	and x8, x1, x5
	lui x1, 1350565888>>12 &0xfffff
	bgtu x1, x8, LBB0_5
LBB0_1:                                 //  %if.then
	ori x28, x0, 2139095041 & 0xfff
	slli x28, x28, 20
	lui x1, 2139095041 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x1, x8, LBB0_3
LBB0_2:                                 //  %if.then2
	add x10, x0, x5
	add x11, x0, x5
	call $__addsf3
	jalr x0, LBB0_21 ( x0 )
LBB0_3:                                 //  %if.end
	ori x28, x0, -1077342245 & 0xfff
	slli x28, x28, 20
	lui x1, -1077342245 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, 1070141403 & 0xfff
	slli x28, x28, 20
	lui x3, 1070141403 >> 12 & 0xfffff
	srli x28, x28, 20
	add x4, x0, x0
	or x10, x3, x28
	bgt x5, x4, LBB0_21
LBB0_4:                                 //  %if.end
	add x10, x0, x1
	jalr x0, LBB0_21 ( x0 )
LBB0_5:                                 //  %if.end7
	ori x28, x0, 1054867455 & 0xfff
	slli x28, x28, 20
	lui x1, 1054867455 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x5, 16 ( x2 )                //  4-byte Folded Spill
	bgtu x8, x1, LBB0_10
LBB0_6:                                 //  %if.then9
	ori x28, x0, 1900671690 & 0xfff
	slli x28, x28, 20
	lui x1, 1900671690 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x5
	call $__addsf3
	lui x11, 1065353216>>12 &0xfffff
	call $__gtsf2
	not x3, x0
	bgt x10, x0, LBB0_8
LBB0_7:
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x1
	jalr x0, LBB0_17 ( x0 )
LBB0_8:                                 //  %if.then9
	lui x1, 822083584>>12 &0xfffff
	lw x4, 16 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x4
	bgeu x8, x1, LBB0_17
LBB0_9:
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_21 ( x0 )
LBB0_10:                                //  %if.else17
	add x10, x0, x5
	call $fabsf
	add x3, x0, x10
	ori x28, x0, 1066926079 & 0xfff
	slli x28, x28, 20
	lui x1, 1066926079 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x8, x1, LBB0_14
LBB0_11:                                //  %if.then19
	ori x28, x0, 1060110335 & 0xfff
	slli x28, x28, 20
	lui x1, 1060110335 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x8, x1, LBB0_13
LBB0_12:                                //  %if.then21
	add x10, x0, x3
	add x11, x0, x3
	add x8, x0, x3
	call $__addsf3
	ori x28, x0, -1082130432 & 0xfff
	slli x28, x28, 20
	lui x1, -1082130432 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	lui x11, 1073741824>>12 &0xfffff
	add x10, x0, x8
	call $__addsf3
	add x1, x0, x10
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__divsf3
	add x3, x0, x0
	jalr x0, LBB0_17 ( x0 )
LBB0_13:                                //  %if.else24
	ori x28, x0, -1082130432 & 0xfff
	slli x28, x28, 20
	lui x1, -1082130432 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x3
	add x8, x0, x3
	call $__addsf3
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	lui x11, 1065353216>>12 &0xfffff
	add x10, x0, x8
	call $__addsf3
	add x1, x0, x10
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__divsf3
	slti x3, x0, 1
	jalr x0, LBB0_17 ( x0 )
LBB0_14:                                //  %if.else29
	ori x28, x0, 1075576831 & 0xfff
	slli x28, x28, 20
	lui x1, 1075576831 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x8, x1, LBB0_16
LBB0_15:                                //  %if.then31
	ori x28, x0, -1077936128 & 0xfff
	slli x28, x28, 20
	lui x1, -1077936128 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x3
	add x8, x0, x3
	call $__addsf3
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	lui x11, 1069547520>>12 &0xfffff
	add x10, x0, x8
	call $__mulsf3
	lui x11, 1065353216>>12 &0xfffff
	call $__addsf3
	add x1, x0, x10
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__divsf3
	addi x3, x0, 2
	jalr x0, LBB0_17 ( x0 )
LBB0_16:                                //  %if.else36
	ori x28, x0, -1082130432 & 0xfff
	slli x28, x28, 20
	lui x1, -1082130432 >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x1, x28
	add x11, x0, x3
	call $__divsf3
	addi x3, x0, 3
LBB0_17:                                //  %if.end40
	sw x3, 8 ( x2 )                 //  4-byte Folded Spill
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	add x11, x0, x10
	call $__mulsf3
	sw x10, 4 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x10
	call $__mulsf3
	add x8, x0, x10
	ori x28, x0, 1015376343 & 0xfff
	slli x28, x28, 20
	lui x1, 1015376343 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__mulsf3
	ori x28, x0, 1028381273 & 0xfff
	slli x28, x28, 20
	lui x1, 1028381273 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 1032350517 & 0xfff
	slli x28, x28, 20
	lui x1, 1032350517 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 1035611758 & 0xfff
	slli x28, x28, 20
	lui x1, 1035611758 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 1041385765 & 0xfff
	slli x28, x28, 20
	lui x1, 1041385765 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 1051372203 & 0xfff
	slli x28, x28, 20
	lui x1, 1051372203 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	lw x10, 4 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	sw x10, 4 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, -1122655711 & 0xfff
	slli x28, x28, 20
	lui x1, -1122655711 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $__mulsf3
	ori x28, x0, -1116802709 & 0xfff
	slli x28, x28, 20
	lui x1, -1116802709 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, -1113749611 & 0xfff
	slli x28, x28, 20
	lui x1, -1113749611 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, -1109160392 & 0xfff
	slli x28, x28, 20
	lui x1, -1109160392 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, -1102263091 & 0xfff
	slli x28, x28, 20
	lui x1, -1102263091 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lw x8, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	bgez x8, LBB0_19
LBB0_18:                                //  %if.then64
	lw x11, 4 ( x2 )                //  4-byte Folded Reload
	nop
	call $__addsf3
	add x1, x0, x10
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__subsf3
	jalr x0, LBB0_21 ( x0 )
LBB0_19:                                //  %if.else68
	lw x11, 4 ( x2 )                //  4-byte Folded Reload
	nop
	call $__addsf3
	add x1, x0, x10
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, $atanlo & 0xfff
	slli x28, x28, 20
	lui x1, $atanlo >> 12 & 0xfffff
	srli x28, x28, 20
	slli x8, x8, 2
	or x1, x1, x28
	add x1, x1, x8
	lw x11, 0 ( x1 )
	nop
	call $__subsf3
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subsf3
	ori x28, x0, $atanhi & 0xfff
	slli x28, x28, 20
	lui x1, $atanhi >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	add x1, x1, x8
	lw x1, 0 ( x1 )
	add x11, x0, x10
	add x10, x0, x1
	call $__subsf3
	add x8, x0, x10
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x1, x28
	add x11, x0, x8
	call $__subsf3
	add x1, x0, x0
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x1, x3, LBB0_21
LBB0_20:                                //  %if.else68
	add x10, x0, x8
LBB0_21:                                //  %cleanup
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
	.size	$atanf, ($func_end0)-($atanf)
	.cfi_endproc

	.address_space	0	
	.type	$atanhi,@object         //  @atanhi
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	2
$atanhi:
	.long	1055744824              //  float 0.463647604
	.long	1061752794              //  float 0.785398125
	.long	1065064542              //  float 0.982793688
	.long	1070141402              //  float 1.57079625
	.size	$atanhi, 16

	.address_space	0	
	.type	$atanlo,@object         //  @atanlo
	.p2align	2
$atanlo:
	.long	833369961               //  float 5.01215824E-9
	.long	857874792               //  float 3.77489471E-8
	.long	856952756               //  float 3.44732172E-8
	.long	866263400               //  float 7.54978942E-8
	.size	$atanlo, 16


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
