	.text
	.file	"w_pow.bc"
	.globl	$pow
	.type	$pow,@function
$pow:                                   //  @pow
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10, 11
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -80
$cfi2:
	.cfi_adjust_cfa_offset 80
	sw x1, 76 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 68 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x13
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	sw x11, 20 ( x2 )               //  4-byte Folded Spill
	sw x12, 28 ( x2 )               //  4-byte Folded Spill
	call $__ieee754_pow
	add x3, x0, x10
	ori x28, x0, $__fdlib_version & 0xfff
	slli x28, x28, 20
	lui x1, $__fdlib_version >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x1, 0 ( x1 )
	nop
	xori x1, x1, -1
	beqz x1, LBB0_45
LBB0_1:                                 //  %lor.lhs.false
	sw x3, 12 ( x2 )                //  4-byte Folded Spill
	sw x11, 16 ( x2 )               //  4-byte Folded Spill
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	sw x8, 8 ( x2 )                 //  4-byte Folded Spill
	add x11, x0, x8
	call $__fpclassifyd
	bgtu x10, x0, LBB0_3
LBB0_2:
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_45 ( x0 )
LBB0_3:                                 //  %if.end
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	call $__fpclassifyd
	bgtu x10, x0, LBB0_10
LBB0_4:                                 //  %if.then5
	add x12, x0, x0
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	lw x8, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	add x11, x0, x8
	add x13, x0, x12
	call $__nedf2
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB0_45
LBB0_5:                                 //  %if.then7
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x1, x28
	ori x28, x0, $__fdlib_version & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $__fdlib_version >> 12 & 0xfffff
	or x1, x1, x28
	lw x3, 0 ( x1 )
	addi x10, x2, 32
	slti x5, x0, 1
	lui x1, 1072693248>>12 &0xfffff
	xori x7, x3, 2
	lw x9, 24 ( x2 )                //  4-byte Folded Reload
	nop
	sw x9, 8 ( x10 )
	sw x8, 20 ( x10 )
	sw x1, 28 ( x10 )
	sw x5, 32 ( x2 )
	sw x4, 4 ( x10 )
	sw x0, 32 ( x10 )
	lw x4, 20 ( x2 )                //  4-byte Folded Reload
	nop
	sw x4, 44 ( x2 )
	lw x4, 28 ( x2 )                //  4-byte Folded Reload
	nop
	sw x4, 16 ( x10 )
	sw x0, 24 ( x10 )
	beqz x7, LBB0_7
LBB0_6:                                 //  %if.then7
	xori x3, x3, -1
	bgtu x3, x0, LBB0_8
LBB0_7:                                 //  %if.then12
	sw x1, 60 ( x2 )
	sw x0, 24 ( x10 )
	jalr x0, LBB0_42 ( x0 )
LBB0_8:                                 //  %if.else
	addi x10, x2, 32
	call $matherr
	bgtu x10, x0, LBB0_42
LBB0_9:                                 //  %if.then15
	call $__errno
	addi x1, x0, 33
	jalr x0, LBB0_41 ( x0 )
LBB0_10:                                //  %if.end27
	add x12, x0, x0
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x13, x0, x12
	call $__nedf2
	bgtu x10, x0, LBB0_20
LBB0_11:                                //  %if.then29
	add x12, x0, x0
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	add x13, x0, x12
	call $__nedf2
	bgtu x10, x0, LBB0_14
LBB0_12:                                //  %if.then31
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $__fdlib_version & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, $__fdlib_version >> 12 & 0xfffff
	or x3, x3, x28
	lw x3, 0 ( x3 )
	addi x7, x2, 32
	slti x4, x0, 1
	lw x5, 24 ( x2 )                //  4-byte Folded Reload
	nop
	sw x5, 8 ( x7 )
	lw x5, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x5, 20 ( x7 )
	sw x0, 28 ( x7 )
	sw x4, 32 ( x2 )
	sw x1, 4 ( x7 )
	sw x0, 32 ( x7 )
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 44 ( x2 )
	sw x8, 16 ( x7 )
	sw x0, 24 ( x7 )
	beqz x3, LBB0_8
LBB0_13:                                //  %if.then39
	lui x1, 1072693248>>12 &0xfffff
	sw x1, 60 ( x2 )
	sw x0, 24 ( x7 )
	jalr x0, LBB0_42 ( x0 )
LBB0_14:                                //  %if.end55
	add x12, x0, x0
	add x10, x0, x8
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	add x13, x0, x12
	call $__ltdf2
	sw x10, 4 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $finite
	lw x1, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	bgez x1, LBB0_2
LBB0_15:                                //  %if.end55
	lw x9, 8 ( x2 )                 //  4-byte Folded Reload
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	beqz x10, LBB0_45
LBB0_16:                                //  %if.then59
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x1, x28
	ori x28, x0, $__fdlib_version & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $__fdlib_version >> 12 & 0xfffff
	or x1, x1, x28
	lw x1, 0 ( x1 )
	ori x28, x0, -1048576 & 0xfff
	slli x28, x28, 20
	addi x10, x2, 32
	slti x4, x0, 1
	lui x5, -1048576 >> 12 & 0xfffff
	srli x28, x28, 20
	lw x7, 24 ( x2 )                //  4-byte Folded Reload
	nop
	sw x7, 8 ( x10 )
	sw x9, 20 ( x10 )
	sw x4, 32 ( x2 )
	sw x3, 4 ( x10 )
	sw x0, 32 ( x10 )
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 44 ( x2 )
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 16 ( x10 )
	or x3, x5, x28
	add x4, x0, x0
	beq x1, x4, LBB0_18
LBB0_17:                                //  %if.then59
	add x4, x0, x3
LBB0_18:                                //  %if.then59
	sw x4, 28 ( x10 )
	sw x0, 24 ( x10 )
LBB0_19:                                //  %if.then59
	xori x1, x1, 2
	bgtu x1, x0, LBB0_8
	jalr x0, LBB0_9 ( x0 )
LBB0_20:                                //  %if.end89
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $finite
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB0_35
LBB0_21:                                //  %if.then92
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	nop
	call $finite
	beqz x10, LBB0_35
LBB0_22:                                //  %land.lhs.true95
	add x10, x0, x8
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $finite
	beqz x10, LBB0_35
LBB0_23:                                //  %if.then98
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__fpclassifyd
	bgtu x10, x0, LBB0_27
LBB0_24:                                //  %if.then101
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x1, x28
	ori x28, x0, $__fdlib_version & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $__fdlib_version >> 12 & 0xfffff
	or x1, x1, x28
	lw x1, 0 ( x1 )
	addi x7, x2, 32
	slti x4, x0, 1
	lw x5, 24 ( x2 )                //  4-byte Folded Reload
	nop
	sw x5, 8 ( x7 )
	lw x5, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x5, 20 ( x7 )
	sw x4, 32 ( x2 )
	sw x3, 4 ( x7 )
	sw x0, 32 ( x7 )
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 44 ( x2 )
	sw x8, 16 ( x7 )
	add x3, x0, x0
	beq x1, x3, LBB0_26
LBB0_25:                                //  %if.then101
	lui x3, 2146959360>>12 &0xfffff
LBB0_26:                                //  %if.then101
	sw x3, 28 ( x7 )
	sw x0, 24 ( x7 )
	jalr x0, LBB0_19 ( x0 )
LBB0_27:                                //  %if.else130
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $__fdlib_version & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, $__fdlib_version >> 12 & 0xfffff
	or x3, x3, x28
	lw x3, 0 ( x3 )
	addi x9, x2, 32
	addi x4, x0, 3
	lw x5, 24 ( x2 )                //  4-byte Folded Reload
	nop
	sw x5, 8 ( x9 )
	lw x7, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x7, 20 ( x9 )
	sw x4, 32 ( x2 )
	sw x1, 4 ( x9 )
	sw x0, 32 ( x9 )
	lw x4, 20 ( x2 )                //  4-byte Folded Reload
	nop
	sw x4, 44 ( x2 )
	sw x8, 16 ( x9 )
	bgtu x3, x0, LBB0_31
LBB0_28:                                //  %if.then137
	ori x28, x0, -536870912 & 0xfff
	slli x28, x28, 20
	lui x1, -536870912 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, 1206910975 & 0xfff
	slli x28, x28, 20
	lui x3, 1206910975 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	sw x1, 24 ( x9 )
	sw x3, 60 ( x2 )
	add x12, x0, x0
	lui x13, 1071644672>>12 &0xfffff
	add x11, x0, x7
	add x10, x0, x8
	add x8, x0, x4
	call $__muldf3
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	sw x11, 28 ( x2 )               //  4-byte Folded Spill
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x0
	add x13, x0, x12
	call $__ltdf2
	bgez x10, LBB0_34
LBB0_29:                                //  %land.lhs.true140
	lw x8, 16 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 28 ( x2 )               //  4-byte Folded Reload
	nop
	call $rint
	add x12, x0, x8
	lw x13, 28 ( x2 )               //  4-byte Folded Reload
	nop
	call $__eqdf2
	beqz x10, LBB0_34
LBB0_30:                                //  %if.then143
	ori x28, x0, -536870912 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, -536870912 >> 12 & 0xfffff
	or x1, x1, x28
	ori x28, x0, -940572673 & 0xfff
	slli x28, x28, 20
	lui x3, -940572673 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	addi x4, x2, 32
	sw x1, 24 ( x4 )
	sw x3, 60 ( x2 )
	jalr x0, LBB0_34 ( x0 )
LBB0_31:                                //  %if.else146
	lui x1, 2146435072>>12 &0xfffff
	sw x1, 60 ( x2 )
	sw x0, 24 ( x9 )
	add x12, x0, x0
	lui x13, 1071644672>>12 &0xfffff
	add x11, x0, x7
	add x10, x0, x8
	add x8, x0, x4
	call $__muldf3
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	sw x11, 28 ( x2 )               //  4-byte Folded Spill
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x0
	add x13, x0, x12
	call $__ltdf2
	bgez x10, LBB0_34
LBB0_32:                                //  %land.lhs.true150
	lw x8, 16 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 28 ( x2 )               //  4-byte Folded Reload
	nop
	call $rint
	add x12, x0, x8
	lw x13, 28 ( x2 )               //  4-byte Folded Reload
	nop
	call $__eqdf2
	beqz x10, LBB0_34
LBB0_33:                                //  %if.then153
	ori x28, x0, -1048576 & 0xfff
	slli x28, x28, 20
	lui x1, -1048576 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 60 ( x2 )
	addi x1, x2, 32
	sw x0, 24 ( x1 )
LBB0_34:                                //  %if.end156
	ori x28, x0, $__fdlib_version & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $__fdlib_version >> 12 & 0xfffff
	or x1, x1, x28
	lw x1, 0 ( x1 )
	nop
	xori x1, x1, 2
	bgtu x1, x0, LBB0_39
	jalr x0, LBB0_40 ( x0 )
LBB0_35:                                //  %if.end175
	add x12, x0, x0
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x12
	call $__nedf2
	bgtu x10, x0, LBB0_2
LBB0_36:                                //  %land.lhs.true177
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	nop
	call $finite
	beqz x10, LBB0_2
LBB0_37:                                //  %land.lhs.true180
	add x10, x0, x8
	lw x8, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	add x11, x0, x8
	call $finite
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	beqz x10, LBB0_45
LBB0_38:                                //  %if.then183
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $__fdlib_version & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, $__fdlib_version >> 12 & 0xfffff
	or x3, x3, x28
	lw x3, 0 ( x3 )
	addi x7, x2, 32
	addi x4, x0, 4
	lw x5, 24 ( x2 )                //  4-byte Folded Reload
	nop
	sw x5, 8 ( x7 )
	xori x3, x3, 2
	sw x8, 20 ( x7 )
	sw x0, 28 ( x7 )
	sw x4, 32 ( x2 )
	sw x1, 4 ( x7 )
	sw x0, 32 ( x7 )
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 44 ( x2 )
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 16 ( x7 )
	sw x0, 24 ( x7 )
	beqz x3, LBB0_40
LBB0_39:                                //  %if.else193
	addi x10, x2, 32
	call $matherr
	bgtu x10, x0, LBB0_42
LBB0_40:                                //  %if.end199.sink.split
	call $__errno
	addi x1, x0, 34
LBB0_41:                                //  %if.end199
	sw x1, 0 ( x10 )
LBB0_42:                                //  %if.end199
	lw x8, 64 ( x2 )
	nop
	beqz x8, LBB0_44
LBB0_43:                                //  %if.then202
	call $__errno
	sw x8, 0 ( x10 )
LBB0_44:                                //  %if.end205
	lw x11, 60 ( x2 )
	addi x1, x2, 32
	lw x3, 24 ( x1 )
	nop
LBB0_45:                                //  %cleanup
	add x10, x0, x3
	lw x8, 68 ( x2 )                //  4-byte Folded Reload
	lw x1, 76 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 80
$cfi5:
	.cfi_adjust_cfa_offset -80
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$pow, ($func_end0)-($pow)
	.cfi_endproc

	.address_space	0	
	.address_space	0	
	.type	$.str,@object           //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str:
	.asciz	"pow"
	.size	$.str, 4


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
