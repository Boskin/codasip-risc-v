	.text
	.file	"sf_expm1.bc"
	.globl	$expm1f
	.type	$expm1f,@function
$expm1f:                                //  @expm1f
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
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x1, x28
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, 1100331076 & 0xfff
	slli x28, x28, 20
	lui x4, 1100331076 >> 12 & 0xfffff
	srli x28, x28, 20
	and x1, x1, x5
	or x4, x4, x28
	and x8, x3, x5
	bgtu x4, x1, LBB0_13
LBB0_1:                                 //  %if.then3
	ori x28, x0, 2139095041 & 0xfff
	slli x28, x28, 20
	lui x3, 2139095041 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	bgtu x3, x1, LBB0_3
LBB0_2:                                 //  %if.then5
	add x10, x0, x5
	add x11, x0, x5
	call $__addsf3
	jalr x0, LBB0_39 ( x0 )
LBB0_3:                                 //  %if.end6
	lui x10, 2139095040>>12 &0xfffff
	bne x1, x10, LBB0_7
LBB0_4:                                 //  %if.then8
	ori x28, x0, -1082130432 & 0xfff
	slli x28, x28, 20
	lui x1, -1082130432 >> 12 & 0xfffff
	srli x28, x28, 20
	add x3, x0, x0
	or x1, x1, x28
	beq x8, x3, LBB0_6
LBB0_5:                                 //  %if.then8
	add x5, x0, x1
LBB0_6:                                 //  %if.then8
	add x10, x0, x5
	jalr x0, LBB0_39 ( x0 )
LBB0_7:                                 //  %if.end11
	bgtu x8, x0, LBB0_9
LBB0_8:                                 //  %if.end11
	lui x3, 1118925335 >> 12 & 0xfffff
	ori x28, x0, 1118925335 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	bgtu x1, x3, LBB0_39
LBB0_9:                                 //  %if.end17
	ori x28, x0, 228737632 & 0xfff
	slli x28, x28, 20
	lui x1, 228737632 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x5
	sw x5, 24 ( x2 )                //  4-byte Folded Spill
	call $__addsf3
	add x11, x0, x0
	call $__ltsf2
	lw x5, 24 ( x2 )                //  4-byte Folded Reload
	add x1, x0, x10
	ori x28, x0, -1082130432 & 0xfff
	slli x28, x28, 20
	lui x3, -1082130432 >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x3, x28
	bgez x1, LBB0_11
LBB0_10:                                //  %if.end17
	bgtu x8, x0, LBB0_39
LBB0_11:                                //  %if.else41
	ori x28, x0, -1090519040 & 0xfff
	slli x28, x28, 20
	lui x1, -1090519040 >> 12 & 0xfffff
	srli x28, x28, 20
	add x3, x0, x0
	or x1, x1, x28
	bne x8, x3, LBB0_18
LBB0_12:
	lui x8, 1056964608>>12 &0xfffff
	jalr x0, LBB0_19 ( x0 )
LBB0_13:                                //  %if.end27
	ori x28, x0, 1051816473 & 0xfff
	slli x28, x28, 20
	lui x3, 1051816473 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	bgtu x3, x1, LBB0_21
LBB0_14:                                //  %if.then30
	ori x28, x0, 1065686417 & 0xfff
	slli x28, x28, 20
	lui x3, 1065686417 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	bgtu x1, x3, LBB0_11
LBB0_15:                                //  %if.then33
	bgtu x8, x0, LBB0_17
LBB0_16:                                //  %if.then36
	ori x28, x0, -1087278720 & 0xfff
	slli x28, x28, 20
	lui x1, -1087278720 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x5
	call $__addsf3
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 924317649 & 0xfff
	slli x28, x28, 20
	lui x1, 924317649 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x1, x28
	slti x1, x0, 1
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_20 ( x0 )
LBB0_17:                                //  %if.else38
	ori x28, x0, 1060204928 & 0xfff
	slli x28, x28, 20
	lui x1, 1060204928 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x5
	call $__addsf3
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, -1223165999 & 0xfff
	slli x28, x28, 20
	lui x1, -1223165999 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x1, x28
	not x1, x0
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_20 ( x0 )
LBB0_18:                                //  %if.else41
	add x8, x0, x1
LBB0_19:                                //  %if.else41
	lui x1, 1069066811 >> 12 & 0xfffff
	ori x28, x0, 1069066811 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x5
	sw x5, 24 ( x2 )                //  4-byte Folded Spill
	call $__mulsf3
	add x11, x0, x8
	call $__addsf3
	call $__fixsfsi
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	call $__floatsisf
	add x8, x0, x10
	lui x1, -1087278720 >> 12 & 0xfffff
	ori x28, x0, -1087278720 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__mulsf3
	add x1, x0, x10
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__addsf3
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	lui x1, 924317649 >> 12 & 0xfffff
	ori x28, x0, 924317649 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $__mulsf3
	add x3, x0, x10
LBB0_20:                                //  %if.end51
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	sw x3, 24 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x3
	call $__subsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	add x8, x0, x1
	call $__subsf3
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subsf3
	add x5, x0, x8
	sw x10, 4 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_23 ( x0 )
LBB0_21:                                //  %if.else55
	ori x28, x0, 855638015 & 0xfff
	slli x28, x28, 20
	lui x3, 855638015 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	bgeu x3, x1, LBB0_40
LBB0_22:
	add x1, x0, x0
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
                                        //  implicit-def: %rf_xpr_1
	sw x1, 4 ( x2 )                 //  4-byte Folded Spill
LBB0_23:                                //  %if.end65
	lui x11, 1056964608>>12 &0xfffff
	add x10, x0, x5
	add x8, x0, x5
	sw x8, 24 ( x2 )                //  4-byte Folded Spill
	call $__mulsf3
	add x1, x0, x10
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, -1269305925 & 0xfff
	slli x28, x28, 20
	lui x1, -1269305925 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x8, x0, x10
	call $__mulsf3
	ori x28, x0, 914783828 & 0xfff
	slli x28, x28, 20
	lui x1, 914783828 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, -1197051699 & 0xfff
	slli x28, x28, 20
	lui x1, -1197051699 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 986713345 & 0xfff
	slli x28, x28, 20
	lui x1, 986713345 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, -1123514231 & 0xfff
	slli x28, x28, 20
	lui x1, -1123514231 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x11, 1065353216>>12 &0xfffff
	call $__addsf3
	add x1, x0, x10
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	add x1, x0, x10
	lui x10, 1077936128>>12 &0xfffff
	add x11, x0, x1
	call $__subsf3
	add x8, x0, x10
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x8
	call $__subsf3
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $__mulsf3
	add x1, x0, x10
	lui x10, 1086324736>>12 &0xfffff
	add x11, x0, x1
	call $__subsf3
	add x1, x0, x10
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__divsf3
	add x1, x0, x10
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	add x1, x0, x10
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x3, x0, LBB0_26
LBB0_24:                                //  %if.then86
	lw x8, 24 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	nop
LBB0_25:                                //  %cleanup
	call $__subsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__subsf3
	jalr x0, LBB0_39 ( x0 )
LBB0_26:                                //  %if.else90
	add x10, x0, x1
	lw x8, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	add x11, x0, x8
	call $__subsf3
	add x1, x0, x10
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	add x11, x0, x8
	call $__subsf3
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subsf3
	add x5, x0, x10
	lw x4, 16 ( x2 )                //  4-byte Folded Reload
	nop
	xori x1, x4, 1
	beqz x1, LBB0_30
LBB0_27:                                //  %if.else90
	xori x1, x4, -1
	bgtu x1, x0, LBB0_33
LBB0_28:                                //  %if.then97
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x5
	call $__subsf3
	lui x11, 1056964608>>12 &0xfffff
	call $__mulsf3
	ori x28, x0, -1090519040 & 0xfff
	slli x28, x28, 20
	lui x1, -1090519040 >> 12 & 0xfffff
LBB0_29:                                //  %cleanup
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	jalr x0, LBB0_39 ( x0 )
LBB0_30:                                //  %if.then104
	sw x5, 20 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, -1098907648 & 0xfff
	slli x28, x28, 20
	lui x1, -1098907648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	lw x8, 24 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	call $__ltsf2
	bgez x10, LBB0_32
LBB0_31:                                //  %if.then107
	lui x11, 1056964608>>12 &0xfffff
	add x10, x0, x8
	call $__addsf3
	add x1, x0, x10
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__subsf3
	ori x28, x0, -1073741824 & 0xfff
	slli x28, x28, 20
	lui x1, -1073741824 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__mulsf3
	jalr x0, LBB0_39 ( x0 )
LBB0_32:                                //  %if.else111
	add x10, x0, x8
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subsf3
	add x11, x0, x10
	call $__addsf3
	lui x11, 1065353216>>12 &0xfffff
	call $__addsf3
	jalr x0, LBB0_39 ( x0 )
LBB0_33:                                //  %if.end115
	addi x1, x4, 1
	sltiu x1, x1, 58
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	bgtu x1, x0, LBB0_35
LBB0_34:                                //  %if.then120
	add x8, x0, x4
	add x10, x0, x5
	add x11, x0, x3
	call $__subsf3
	add x1, x0, x10
	lui x10, 1065353216>>12 &0xfffff
	add x11, x0, x1
	call $__subsf3
	slli x1, x8, 23
	add x10, x1, x10
	ori x28, x0, -1082130432 & 0xfff
	slli x28, x28, 20
	lui x1, -1082130432 >> 12 & 0xfffff
	jalr x0, LBB0_29 ( x0 )
LBB0_35:                                //  %if.end136
	addi x1, x0, 22
	bgt x4, x1, LBB0_37
LBB0_36:                                //  %if.then139
	lui x1, 16777216>>12 &0xfffff
	srl x1, x1, x4
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x4
	add x10, x0, x5
	add x11, x0, x3
	call $__subsf3
	add x1, x0, x10
	lui x3, 1065353216>>12 &0xfffff
	lw x4, 20 ( x2 )                //  4-byte Folded Reload
	nop
	sub x10, x3, x4
	add x11, x0, x1
	call $__subsf3
	jalr x0, LBB0_38 ( x0 )
LBB0_37:                                //  %if.else164
	addi x1, x0, 127
	sub x1, x1, x4
	sw x4, 16 ( x2 )                //  4-byte Folded Spill
	slli x10, x1, 23
	add x11, x0, x5
	add x8, x0, x3
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	lw x8, 16 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x1
	call $__subsf3
	lui x11, 1065353216>>12 &0xfffff
	call $__addsf3
LBB0_38:                                //  %if.end192
	slli x1, x8, 23
	add x10, x1, x10
LBB0_39:                                //  %cleanup
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
LBB0_40:                                //  %if.then58
	ori x28, x0, 1900671690 & 0xfff
	slli x28, x28, 20
	lui x1, 1900671690 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x5
	add x8, x0, x5
	call $__addsf3
	add x11, x0, x10
	jalr x0, LBB0_25 ( x0 )
$func_end0:
	.size	$expm1f, ($func_end0)-($expm1f)
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
