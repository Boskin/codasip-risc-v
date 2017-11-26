	.text
	.file	"e_j0.bc"
	.globl	$__ieee754_j0
	.type	$__ieee754_j0,@function
$__ieee754_j0:                          //  @__ieee754_j0
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10, 11
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -72
$cfi2:
	.cfi_adjust_cfa_offset 72
	sw x1, 68 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 60 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	and x3, x1, x11
	lui x1, 2146435072>>12 &0xfffff
	bgtu x1, x3, LBB0_3
LBB0_1:                                 //  %if.then
	add x12, x0, x10
	add x13, x0, x11
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x0
	lui x11, 1072693248>>12 &0xfffff
LBB0_2:                                 //  %cleanup
	add x12, x0, x1
	add x13, x0, x3
	call $__divdf3
	jalr x0, LBB0_31 ( x0 )
LBB0_3:                                 //  %if.end
	sw x3, 56 ( x2 )                //  4-byte Folded Spill
	call $fabs
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	add x8, x0, x11
	lui x1, 1073741824>>12 &0xfffff
	sw x8, 48 ( x2 )                //  4-byte Folded Spill
	sw x10, 52 ( x2 )               //  4-byte Folded Spill
	bgtu x1, x3, LBB0_23
LBB0_4:                                 //  %if.then2
	add x11, x0, x8
	call $sin
	sw x10, 44 ( x2 )               //  4-byte Folded Spill
	sw x11, 40 ( x2 )               //  4-byte Folded Spill
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $cos
	add x1, x0, x10
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x11
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x8
	call $__subdf3
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	sw x11, 32 ( x2 )               //  4-byte Folded Spill
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	lw x12, 36 ( x2 )               //  4-byte Folded Reload
	sw x8, 24 ( x2 )                //  4-byte Folded Spill
	add x13, x0, x8
	call $__adddf3
	ori x28, x0, 2145386495 & 0xfff
	slli x28, x28, 20
	lui x1, 2145386495 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x3, x1, LBB0_22
LBB0_5:                                 //  %if.then6
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	sw x11, 16 ( x2 )               //  4-byte Folded Spill
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	lw x12, 36 ( x2 )               //  4-byte Folded Reload
	lw x13, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	add x12, x0, x0
	add x13, x0, x12
	call $__ltdf2
	add x8, x0, x10
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x10
	add x13, x0, x11
	call $__adddf3
	call $cos
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	xor x11, x1, x11
	bgez x8, LBB0_7
LBB0_6:                                 //  %if.then12
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	nop
	add x12, x0, x8
	lw x13, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divdf3
	jalr x0, LBB0_8 ( x0 )
LBB0_7:                                 //  %if.else
	lw x12, 20 ( x2 )               //  4-byte Folded Reload
	lw x8, 16 ( x2 )                //  4-byte Folded Reload
	nop
	add x13, x0, x8
	call $__divdf3
	sw x11, 32 ( x2 )               //  4-byte Folded Spill
	add x11, x0, x8
	add x8, x0, x10
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
LBB0_8:                                 //  %if.end16
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	lui x1, 1207959552>>12 &0xfffff
	bgtu x3, x1, LBB0_22
LBB0_9:                                 //  %if.else22
	sw x8, 28 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	or x1, x1, x28
	ori x28, x0, $pR8 & 0xfff
	slli x28, x28, 20
	lui x3, $pR8 >> 12 & 0xfffff
	srli x28, x28, 20
	or x8, x3, x28
	ori x28, x0, $pS8 & 0xfff
	slli x28, x28, 20
	lui x3, $pS8 >> 12 & 0xfffff
	srli x28, x28, 20
	or x7, x3, x28
	ori x28, x0, 1075838975 & 0xfff
	slli x28, x28, 20
	lui x4, 1075838975 >> 12 & 0xfffff
	srli x28, x28, 20
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
	and x5, x1, x3
	or x1, x4, x28
	bgtu x5, x1, LBB0_15
LBB0_10:                                //  %if.else.i
	ori x28, x0, $pR5 & 0xfff
	slli x28, x28, 20
	lui x1, $pR5 >> 12 & 0xfffff
	srli x28, x28, 20
	or x8, x1, x28
	ori x28, x0, $pS5 & 0xfff
	slli x28, x28, 20
	lui x1, $pS5 >> 12 & 0xfffff
	srli x28, x28, 20
	or x7, x1, x28
	ori x28, x0, 1074933386 & 0xfff
	slli x28, x28, 20
	lui x1, 1074933386 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x5, x1, LBB0_15
LBB0_11:                                //  %if.else3.i
	ori x28, x0, $pR2 & 0xfff
	slli x28, x28, 20
	lui x1, $pR2 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x1, x28
	ori x28, x0, $pR3 & 0xfff
	slli x28, x28, 20
	lui x1, $pR3 >> 12 & 0xfffff
	srli x28, x28, 20
	or x8, x1, x28
	ori x28, x0, 1074191212 & 0xfff
	slli x28, x28, 20
	lui x1, 1074191212 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x5, x1, LBB0_13
LBB0_12:                                //  %if.else3.i
	add x8, x0, x3
LBB0_13:                                //  %if.else3.i
	lui x3, $pS2 >> 12 & 0xfffff
	ori x28, x0, $pS2 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	lui x4, $pS3 >> 12 & 0xfffff
	ori x28, x0, $pS3 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x7, x4, x28
	bgtu x5, x1, LBB0_15
LBB0_14:                                //  %if.else3.i
	add x7, x0, x3
LBB0_15:                                //  %pzero.exit
	sw x7, 36 ( x2 )                //  4-byte Folded Spill
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	sw x11, 16 ( x2 )               //  4-byte Folded Spill
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x10
	add x13, x0, x11
	sw x5, 40 ( x2 )                //  4-byte Folded Spill
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x0
	lui x11, 1072693248>>12 &0xfffff
	add x12, x0, x1
	add x13, x0, x3
	call $__divdf3
	sw x10, 56 ( x2 )               //  4-byte Folded Spill
	sw x11, 44 ( x2 )               //  4-byte Folded Spill
	lw x12, 40 ( x8 )
	lw x13, 44 ( x8 )
	nop
	call $__muldf3
	lw x1, 32 ( x8 )
	lw x3, 36 ( x8 )
	add x12, x0, x10
	add x13, x0, x11
	add x10, x0, x1
	add x11, x0, x3
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lw x1, 24 ( x8 )
	lw x3, 28 ( x8 )
	add x12, x0, x10
	add x13, x0, x11
	add x10, x0, x1
	add x11, x0, x3
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lw x1, 16 ( x8 )
	lw x3, 20 ( x8 )
	add x12, x0, x10
	add x13, x0, x11
	add x10, x0, x1
	add x11, x0, x3
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lw x1, 8 ( x8 )
	lw x3, 12 ( x8 )
	add x12, x0, x10
	add x13, x0, x11
	add x10, x0, x1
	add x11, x0, x3
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lw x1, 0 ( x8 )
	lw x3, 4 ( x8 )
	add x12, x0, x10
	add x13, x0, x11
	add x10, x0, x1
	add x11, x0, x3
	call $__adddf3
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	sw x11, 12 ( x2 )               //  4-byte Folded Spill
	lw x8, 36 ( x2 )                //  4-byte Folded Reload
	nop
	lw x12, 32 ( x8 )
	lw x13, 36 ( x8 )
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	lw x1, 24 ( x8 )
	lw x3, 28 ( x8 )
	add x12, x0, x10
	add x13, x0, x11
	add x10, x0, x1
	add x11, x0, x3
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lw x1, 16 ( x8 )
	lw x3, 20 ( x8 )
	add x12, x0, x10
	add x13, x0, x11
	add x10, x0, x1
	add x11, x0, x3
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lw x1, 8 ( x8 )
	lw x3, 12 ( x8 )
	add x12, x0, x10
	add x13, x0, x11
	add x10, x0, x1
	add x11, x0, x3
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lw x1, 0 ( x8 )
	lw x3, 4 ( x8 )
	add x12, x0, x10
	add x13, x0, x11
	add x10, x0, x1
	add x11, x0, x3
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x8, x0, x0
	add x12, x0, x8
	lui x13, 1072693248>>12 &0xfffff
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__divdf3
	add x12, x0, x8
	lui x13, 1072693248>>12 &0xfffff
	call $__adddf3
	lw x5, 40 ( x2 )                //  4-byte Folded Reload
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	sw x11, 24 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, $qR8 & 0xfff
	slli x28, x28, 20
	lui x1, $qR8 >> 12 & 0xfffff
	srli x28, x28, 20
	or x8, x1, x28
	ori x28, x0, $qS8 & 0xfff
	slli x28, x28, 20
	lui x1, $qS8 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x1, x28
	ori x28, x0, 1075838975 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 1075838975 >> 12 & 0xfffff
	or x1, x1, x28
	bgtu x5, x1, LBB0_21
LBB0_16:                                //  %if.else.i146
	ori x28, x0, $qR5 & 0xfff
	slli x28, x28, 20
	lui x1, $qR5 >> 12 & 0xfffff
	srli x28, x28, 20
	or x8, x1, x28
	ori x28, x0, $qS5 & 0xfff
	slli x28, x28, 20
	lui x1, $qS5 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x1, x28
	ori x28, x0, 1074933386 & 0xfff
	slli x28, x28, 20
	lui x1, 1074933386 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x5, x1, LBB0_21
LBB0_17:                                //  %if.else3.i149
	ori x28, x0, $qR2 & 0xfff
	slli x28, x28, 20
	lui x1, $qR2 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x1, x28
	ori x28, x0, $qR3 & 0xfff
	slli x28, x28, 20
	lui x1, $qR3 >> 12 & 0xfffff
	srli x28, x28, 20
	or x8, x1, x28
	ori x28, x0, 1074191212 & 0xfff
	slli x28, x28, 20
	lui x1, 1074191212 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x5, x1, LBB0_19
LBB0_18:                                //  %if.else3.i149
	add x8, x0, x3
LBB0_19:                                //  %if.else3.i149
	lui x3, $qS2 >> 12 & 0xfffff
	ori x28, x0, $qS2 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	lui x4, $qS3 >> 12 & 0xfffff
	ori x28, x0, $qS3 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x4, x28
	bgtu x5, x1, LBB0_21
LBB0_20:                                //  %if.else3.i149
	add x4, x0, x3
LBB0_21:                                //  %qzero.exit
	sw x4, 8 ( x2 )                 //  4-byte Folded Spill
	lw x12, 40 ( x8 )
	lw x13, 44 ( x8 )
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	lw x1, 32 ( x8 )
	lw x3, 36 ( x8 )
	add x12, x0, x10
	add x13, x0, x11
	add x10, x0, x1
	add x11, x0, x3
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lw x1, 24 ( x8 )
	lw x3, 28 ( x8 )
	add x12, x0, x10
	add x13, x0, x11
	add x10, x0, x1
	add x11, x0, x3
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lw x1, 16 ( x8 )
	lw x3, 20 ( x8 )
	add x12, x0, x10
	add x13, x0, x11
	add x10, x0, x1
	add x11, x0, x3
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lw x1, 8 ( x8 )
	lw x3, 12 ( x8 )
	add x12, x0, x10
	add x13, x0, x11
	add x10, x0, x1
	add x11, x0, x3
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lw x1, 0 ( x8 )
	lw x3, 4 ( x8 )
	add x12, x0, x10
	add x13, x0, x11
	add x10, x0, x1
	add x11, x0, x3
	call $__adddf3
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	sw x11, 12 ( x2 )               //  4-byte Folded Spill
	lw x8, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	lw x12, 40 ( x8 )
	lw x13, 44 ( x8 )
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	lw x1, 32 ( x8 )
	lw x3, 36 ( x8 )
	add x12, x0, x10
	add x13, x0, x11
	add x10, x0, x1
	add x11, x0, x3
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lw x1, 24 ( x8 )
	lw x3, 28 ( x8 )
	add x12, x0, x10
	add x13, x0, x11
	add x10, x0, x1
	add x11, x0, x3
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lw x1, 16 ( x8 )
	lw x3, 20 ( x8 )
	add x12, x0, x10
	add x13, x0, x11
	add x10, x0, x1
	add x11, x0, x3
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lw x1, 8 ( x8 )
	lw x3, 12 ( x8 )
	add x12, x0, x10
	add x13, x0, x11
	add x10, x0, x1
	add x11, x0, x3
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lw x1, 0 ( x8 )
	lw x3, 4 ( x8 )
	add x12, x0, x10
	add x13, x0, x11
	add x10, x0, x1
	add x11, x0, x3
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x8, x0, x0
	lui x13, 1072693248>>12 &0xfffff
	add x12, x0, x8
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__divdf3
	ori x28, x0, -1077936128 & 0xfff
	slli x28, x28, 20
	lui x1, -1077936128 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x12, x0, x8
	call $__adddf3
	lw x12, 52 ( x2 )               //  4-byte Folded Reload
	lw x13, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divdf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x8, x0, x10
	sw x11, 56 ( x2 )               //  4-byte Folded Spill
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	lw x12, 36 ( x2 )               //  4-byte Folded Reload
	lw x13, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	add x12, x0, x8
	lw x13, 56 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
LBB0_22:                                //  %if.end31
	ori x28, x0, 1346542445 & 0xfff
	slli x28, x28, 20
	lui x1, 1346542445 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1071779287 & 0xfff
	slli x28, x28, 20
	lui x1, 1071779287 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__muldf3
	add x8, x0, x10
	sw x11, 56 ( x2 )               //  4-byte Folded Spill
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $__ieee754_sqrt
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_2 ( x0 )
LBB0_23:                                //  %if.end32
	ori x28, x0, -2013235812 & 0xfff
	slli x28, x28, 20
	lui x1, -2013235812 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 2117592124 & 0xfff
	slli x28, x28, 20
	lui x1, 2117592124 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x11, x0, x8
	add x8, x0, x3
	call $__adddf3
	ori x28, x0, 1059061759 & 0xfff
	slli x28, x28, 20
	lui x1, 1059061759 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x8, x1, LBB0_27
LBB0_24:                                //  %if.end32
	add x12, x0, x0
	lui x8, 1072693248>>12 &0xfffff
	add x13, x0, x8
	call $__gtdf2
	ble x10, x0, LBB0_27
LBB0_25:                                //  %if.then37
	lui x1, 1044381696>>12 &0xfffff
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	add x10, x0, x0
	bgtu x1, x3, LBB0_32
LBB0_26:                                //  %if.else40
	ori x28, x0, -1076887552 & 0xfff
	slli x28, x28, 20
	lui x1, -1076887552 >> 12 & 0xfffff
	srli x28, x28, 20
	add x12, x0, x0
	or x13, x1, x28
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x8, 48 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lui x13, 1072693248>>12 &0xfffff
	add x12, x0, x0
	jalr x0, LBB0_30 ( x0 )
LBB0_27:                                //  %if.end45
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x10
	add x13, x0, x11
	call $__muldf3
	sw x11, 44 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 1943420878 & 0xfff
	slli x28, x28, 20
	lui x1, 1943420878 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1103899161 & 0xfff
	slli x28, x28, 20
	lui x1, -1103899161 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x8, x0, x10
	sw x8, 40 ( x2 )                //  4-byte Folded Spill
	call $__muldf3
	ori x28, x0, 206584089 & 0xfff
	slli x28, x28, 20
	lui x1, 206584089 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1052684753 & 0xfff
	slli x28, x28, 20
	lui x1, 1052684753 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x8, 44 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -1239759127 & 0xfff
	slli x28, x28, 20
	lui x1, -1239759127 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1087838555 & 0xfff
	slli x28, x28, 20
	lui x1, -1087838555 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 1066401791 & 0xfff
	slli x28, x28, 20
	lui x1, 1066401791 >> 12 & 0xfffff
	srli x28, x28, 20
	addi x12, x0, -3
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x8, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	sw x11, 36 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, -193700465 & 0xfff
	slli x28, x28, 20
	lui x1, -193700465 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1041500348 & 0xfff
	slli x28, x28, 20
	lui x1, 1041500348 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x10, x0, x8
	lw x8, 44 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	call $__muldf3
	ori x28, x0, -830155351 & 0xfff
	slli x28, x28, 20
	lui x1, -830155351 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1050753876 & 0xfff
	slli x28, x28, 20
	lui x1, 1050753876 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -581444620 & 0xfff
	slli x28, x28, 20
	lui x1, -581444620 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1058973394 & 0xfff
	slli x28, x28, 20
	lui x1, 1058973394 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x8, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -2100772188 & 0xfff
	slli x28, x28, 20
	lui x1, -2100772188 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1066401000 & 0xfff
	slli x28, x28, 20
	lui x1, 1066401000 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x12, x0, x0
	lui x13, 1072693248>>12 &0xfffff
	call $__adddf3
	add x5, x0, x10
	add x4, x0, x11
	ori x28, x0, 1072693247 & 0xfff
	slli x28, x28, 20
	lui x1, 1072693247 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x3, x1, LBB0_29
LBB0_28:                                //  %if.then63
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x5
	add x13, x0, x4
	call $__divdf3
	ori x28, x0, -1076887552 & 0xfff
	slli x28, x28, 20
	lui x1, -1076887552 >> 12 & 0xfffff
	srli x28, x28, 20
	add x8, x0, x0
	or x13, x1, x28
	add x12, x0, x8
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lui x13, 1072693248>>12 &0xfffff
	add x12, x0, x8
	jalr x0, LBB0_30 ( x0 )
LBB0_29:                                //  %if.else68
	add x12, x0, x0
	lui x13, 1071644672>>12 &0xfffff
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	sw x4, 56 ( x2 )                //  4-byte Folded Spill
	sw x5, 52 ( x2 )                //  4-byte Folded Spill
	call $__muldf3
	add x8, x0, x10
	sw x11, 24 ( x2 )               //  4-byte Folded Spill
	lui x13, 1072693248>>12 &0xfffff
	add x12, x0, x0
	call $__adddf3
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	sw x11, 28 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x0
	lui x11, 1072693248>>12 &0xfffff
	add x12, x0, x8
	lw x13, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 28 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x8, x0, x10
	sw x11, 48 ( x2 )               //  4-byte Folded Spill
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	lw x12, 52 ( x2 )               //  4-byte Folded Reload
	lw x13, 56 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divdf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
LBB0_30:                                //  %cleanup
	call $__adddf3
LBB0_31:                                //  %cleanup
	add x8, x0, x11
LBB0_32:                                //  %cleanup
	add x11, x0, x8
	lw x8, 60 ( x2 )                //  4-byte Folded Reload
	lw x1, 68 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 72
$cfi5:
	.cfi_adjust_cfa_offset -72
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$__ieee754_j0, ($func_end0)-($__ieee754_j0)
	.cfi_endproc

	.globl	$__ieee754_y0
	.type	$__ieee754_y0,@function
$__ieee754_y0:                          //  @__ieee754_y0
	.cfi_startproc
  .codasip_retval_regs 10, 11
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	addi x2, x2, -72
$cfi9:
	.cfi_adjust_cfa_offset 72
	sw x1, 68 ( x2 )
$cfi10:
	.cfi_offset 1, -4
	sw x8, 60 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x11
	add x4, x0, x10
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	and x5, x1, x8
	lui x1, 2146435072>>12 &0xfffff
	bgtu x1, x5, LBB1_3
LBB1_1:                                 //  %if.then
	add x10, x0, x4
	add x11, x0, x8
	add x12, x0, x4
	add x13, x0, x8
	sw x8, 56 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x4
	call $__muldf3
	add x12, x0, x8
	lw x13, 56 ( x2 )               //  4-byte Folded Reload
	nop
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x0
	lui x11, 1072693248>>12 &0xfffff
LBB1_2:                                 //  %cleanup
	add x12, x0, x1
	add x13, x0, x3
	call $__divdf3
	jalr x0, LBB1_31 ( x0 )
LBB1_3:                                 //  %if.end
	ori x28, x0, -1048576 & 0xfff
	slli x28, x28, 20
	or x1, x4, x5
	lui x3, -1048576 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x3, x28
	add x10, x0, x0
	beqz x1, LBB1_31
LBB1_4:                                 //  %if.end4
	bgez x8, LBB1_6
LBB1_5:
	lui x11, 2146959360>>12 &0xfffff
	jalr x0, LBB1_31 ( x0 )
LBB1_6:                                 //  %if.end7
	lui x1, 1073741824>>12 &0xfffff
	bgtu x1, x5, LBB1_27
LBB1_7:                                 //  %if.then9
	add x10, x0, x4
	add x11, x0, x8
	sw x4, 52 ( x2 )                //  4-byte Folded Spill
	sw x5, 40 ( x2 )                //  4-byte Folded Spill
	call $sin
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	sw x11, 44 ( x2 )               //  4-byte Folded Spill
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $cos
	sw x8, 56 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x10
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x11
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x8
	call $__subdf3
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	sw x11, 28 ( x2 )               //  4-byte Folded Spill
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	lw x12, 36 ( x2 )               //  4-byte Folded Reload
	sw x8, 24 ( x2 )                //  4-byte Folded Spill
	add x13, x0, x8
	call $__adddf3
	ori x28, x0, 2145386495 & 0xfff
	slli x28, x28, 20
	lui x1, 2145386495 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	bgeu x1, x3, LBB1_9
LBB1_8:
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_26 ( x0 )
LBB1_9:                                 //  %if.then13
	sw x11, 16 ( x2 )               //  4-byte Folded Spill
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	lw x12, 36 ( x2 )               //  4-byte Folded Reload
	lw x13, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	add x12, x0, x0
	add x13, x0, x12
	call $__ltdf2
	add x8, x0, x10
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x10
	add x13, x0, x11
	call $__adddf3
	call $cos
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	xor x11, x1, x11
	bgez x8, LBB1_11
LBB1_10:                                //  %if.then19
	lw x12, 32 ( x2 )               //  4-byte Folded Reload
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	nop
	add x13, x0, x8
	call $__divdf3
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	sw x11, 16 ( x2 )               //  4-byte Folded Spill
	jalr x0, LBB1_12 ( x0 )
LBB1_11:                                //  %if.else
	lw x12, 20 ( x2 )               //  4-byte Folded Reload
	lw x13, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divdf3
	add x8, x0, x11
LBB1_12:                                //  %if.end23
	lw x5, 40 ( x2 )                //  4-byte Folded Reload
	lui x1, 1207959552>>12 &0xfffff
	bgtu x5, x1, LBB1_26
LBB1_13:                                //  %if.else29
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	sw x8, 28 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, $pR8 & 0xfff
	slli x28, x28, 20
	lui x1, $pR8 >> 12 & 0xfffff
	srli x28, x28, 20
	or x8, x1, x28
	ori x28, x0, $pS8 & 0xfff
	slli x28, x28, 20
	lui x1, $pS8 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x1, x28
	ori x28, x0, 1075838975 & 0xfff
	slli x28, x28, 20
	lui x1, 1075838975 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	bgtu x5, x1, LBB1_19
LBB1_14:                                //  %if.else.i
	ori x28, x0, $pR5 & 0xfff
	slli x28, x28, 20
	lui x1, $pR5 >> 12 & 0xfffff
	srli x28, x28, 20
	or x8, x1, x28
	ori x28, x0, $pS5 & 0xfff
	slli x28, x28, 20
	lui x1, $pS5 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x1, x28
	ori x28, x0, 1074933386 & 0xfff
	slli x28, x28, 20
	lui x1, 1074933386 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x5, x1, LBB1_19
LBB1_15:                                //  %if.else3.i
	ori x28, x0, $pR2 & 0xfff
	slli x28, x28, 20
	lui x1, $pR2 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x1, x28
	ori x28, x0, $pR3 & 0xfff
	slli x28, x28, 20
	lui x1, $pR3 >> 12 & 0xfffff
	srli x28, x28, 20
	or x8, x1, x28
	ori x28, x0, 1074191212 & 0xfff
	slli x28, x28, 20
	lui x1, 1074191212 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x5, x1, LBB1_17
LBB1_16:                                //  %if.else3.i
	add x8, x0, x3
LBB1_17:                                //  %if.else3.i
	lui x3, $pS2 >> 12 & 0xfffff
	ori x28, x0, $pS2 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	lui x4, $pS3 >> 12 & 0xfffff
	ori x28, x0, $pS3 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x4, x28
	bgtu x5, x1, LBB1_19
LBB1_18:                                //  %if.else3.i
	add x4, x0, x3
LBB1_19:                                //  %pzero.exit
	sw x4, 36 ( x2 )                //  4-byte Folded Spill
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x10
	add x13, x0, x11
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x0
	lui x11, 1072693248>>12 &0xfffff
	add x12, x0, x1
	add x13, x0, x3
	call $__divdf3
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	sw x11, 44 ( x2 )               //  4-byte Folded Spill
	lw x12, 40 ( x8 )
	lw x13, 44 ( x8 )
	nop
	call $__muldf3
	lw x1, 32 ( x8 )
	lw x3, 36 ( x8 )
	add x12, x0, x10
	add x13, x0, x11
	add x10, x0, x1
	add x11, x0, x3
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lw x1, 24 ( x8 )
	lw x3, 28 ( x8 )
	add x12, x0, x10
	add x13, x0, x11
	add x10, x0, x1
	add x11, x0, x3
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lw x1, 16 ( x8 )
	lw x3, 20 ( x8 )
	add x12, x0, x10
	add x13, x0, x11
	add x10, x0, x1
	add x11, x0, x3
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lw x1, 8 ( x8 )
	lw x3, 12 ( x8 )
	add x12, x0, x10
	add x13, x0, x11
	add x10, x0, x1
	add x11, x0, x3
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lw x1, 0 ( x8 )
	lw x3, 4 ( x8 )
	add x12, x0, x10
	add x13, x0, x11
	add x10, x0, x1
	add x11, x0, x3
	call $__adddf3
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	sw x11, 12 ( x2 )               //  4-byte Folded Spill
	lw x8, 36 ( x2 )                //  4-byte Folded Reload
	nop
	lw x12, 32 ( x8 )
	lw x13, 36 ( x8 )
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	lw x1, 24 ( x8 )
	lw x3, 28 ( x8 )
	add x12, x0, x10
	add x13, x0, x11
	add x10, x0, x1
	add x11, x0, x3
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lw x1, 16 ( x8 )
	lw x3, 20 ( x8 )
	add x12, x0, x10
	add x13, x0, x11
	add x10, x0, x1
	add x11, x0, x3
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lw x1, 8 ( x8 )
	lw x3, 12 ( x8 )
	add x12, x0, x10
	add x13, x0, x11
	add x10, x0, x1
	add x11, x0, x3
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lw x1, 0 ( x8 )
	lw x3, 4 ( x8 )
	add x12, x0, x10
	add x13, x0, x11
	add x10, x0, x1
	add x11, x0, x3
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x8, x0, x0
	add x12, x0, x8
	lui x13, 1072693248>>12 &0xfffff
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__divdf3
	add x12, x0, x8
	lui x13, 1072693248>>12 &0xfffff
	call $__adddf3
	lw x5, 40 ( x2 )                //  4-byte Folded Reload
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	sw x11, 24 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, $qR8 & 0xfff
	slli x28, x28, 20
	lui x1, $qR8 >> 12 & 0xfffff
	srli x28, x28, 20
	or x8, x1, x28
	ori x28, x0, $qS8 & 0xfff
	slli x28, x28, 20
	lui x1, $qS8 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x1, x28
	ori x28, x0, 1075838975 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 1075838975 >> 12 & 0xfffff
	or x1, x1, x28
	bgtu x5, x1, LBB1_25
LBB1_20:                                //  %if.else.i139
	ori x28, x0, $qR5 & 0xfff
	slli x28, x28, 20
	lui x1, $qR5 >> 12 & 0xfffff
	srli x28, x28, 20
	or x8, x1, x28
	ori x28, x0, $qS5 & 0xfff
	slli x28, x28, 20
	lui x1, $qS5 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x1, x28
	ori x28, x0, 1074933386 & 0xfff
	slli x28, x28, 20
	lui x1, 1074933386 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x5, x1, LBB1_25
LBB1_21:                                //  %if.else3.i142
	ori x28, x0, $qR2 & 0xfff
	slli x28, x28, 20
	lui x1, $qR2 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x1, x28
	ori x28, x0, $qR3 & 0xfff
	slli x28, x28, 20
	lui x1, $qR3 >> 12 & 0xfffff
	srli x28, x28, 20
	or x8, x1, x28
	ori x28, x0, 1074191212 & 0xfff
	slli x28, x28, 20
	lui x1, 1074191212 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x5, x1, LBB1_23
LBB1_22:                                //  %if.else3.i142
	add x8, x0, x3
LBB1_23:                                //  %if.else3.i142
	lui x3, $qS2 >> 12 & 0xfffff
	ori x28, x0, $qS2 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	lui x4, $qS3 >> 12 & 0xfffff
	ori x28, x0, $qS3 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x4, x28
	bgtu x5, x1, LBB1_25
LBB1_24:                                //  %if.else3.i142
	add x4, x0, x3
LBB1_25:                                //  %qzero.exit
	sw x4, 8 ( x2 )                 //  4-byte Folded Spill
	lw x12, 40 ( x8 )
	lw x13, 44 ( x8 )
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	lw x1, 32 ( x8 )
	lw x3, 36 ( x8 )
	add x12, x0, x10
	add x13, x0, x11
	add x10, x0, x1
	add x11, x0, x3
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lw x1, 24 ( x8 )
	lw x3, 28 ( x8 )
	add x12, x0, x10
	add x13, x0, x11
	add x10, x0, x1
	add x11, x0, x3
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lw x1, 16 ( x8 )
	lw x3, 20 ( x8 )
	add x12, x0, x10
	add x13, x0, x11
	add x10, x0, x1
	add x11, x0, x3
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lw x1, 8 ( x8 )
	lw x3, 12 ( x8 )
	add x12, x0, x10
	add x13, x0, x11
	add x10, x0, x1
	add x11, x0, x3
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lw x1, 0 ( x8 )
	lw x3, 4 ( x8 )
	add x12, x0, x10
	add x13, x0, x11
	add x10, x0, x1
	add x11, x0, x3
	call $__adddf3
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	sw x11, 12 ( x2 )               //  4-byte Folded Spill
	lw x8, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	lw x12, 40 ( x8 )
	lw x13, 44 ( x8 )
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	lw x1, 32 ( x8 )
	lw x3, 36 ( x8 )
	add x12, x0, x10
	add x13, x0, x11
	add x10, x0, x1
	add x11, x0, x3
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lw x1, 24 ( x8 )
	lw x3, 28 ( x8 )
	add x12, x0, x10
	add x13, x0, x11
	add x10, x0, x1
	add x11, x0, x3
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lw x1, 16 ( x8 )
	lw x3, 20 ( x8 )
	add x12, x0, x10
	add x13, x0, x11
	add x10, x0, x1
	add x11, x0, x3
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lw x1, 8 ( x8 )
	lw x3, 12 ( x8 )
	add x12, x0, x10
	add x13, x0, x11
	add x10, x0, x1
	add x11, x0, x3
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lw x1, 0 ( x8 )
	lw x3, 4 ( x8 )
	add x12, x0, x10
	add x13, x0, x11
	add x10, x0, x1
	add x11, x0, x3
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x8, x0, x0
	lui x13, 1072693248>>12 &0xfffff
	add x12, x0, x8
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__divdf3
	ori x28, x0, -1077936128 & 0xfff
	slli x28, x28, 20
	lui x1, -1077936128 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x12, x0, x8
	call $__adddf3
	lw x12, 52 ( x2 )               //  4-byte Folded Reload
	lw x13, 56 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divdf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x8, x0, x10
	sw x11, 48 ( x2 )               //  4-byte Folded Spill
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	lw x11, 28 ( x2 )               //  4-byte Folded Reload
	lw x12, 36 ( x2 )               //  4-byte Folded Reload
	lw x13, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	add x12, x0, x8
	lw x13, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $__adddf3
	add x8, x0, x11
LBB1_26:                                //  %if.end38
	ori x28, x0, 1346542445 & 0xfff
	slli x28, x28, 20
	lui x1, 1346542445 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1071779287 & 0xfff
	slli x28, x28, 20
	lui x1, 1071779287 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x11, x0, x8
	call $__muldf3
	add x8, x0, x10
	sw x11, 48 ( x2 )               //  4-byte Folded Spill
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	nop
	call $__ieee754_sqrt
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_2 ( x0 )
LBB1_27:                                //  %if.end39
	lui x1, 1044381696>>12 &0xfffff
	bgtu x5, x1, LBB1_29
LBB1_28:                                //  %if.then41
	add x10, x0, x4
	add x11, x0, x8
	call $__ieee754_log
	ori x28, x0, 1841940611 & 0xfff
	slli x28, x28, 20
	lui x1, 1841940611 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1071931184 & 0xfff
	slli x28, x28, 20
	lui x1, 1071931184 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__muldf3
	ori x28, x0, -1714696161 & 0xfff
	slli x28, x28, 20
	lui x1, -1714696161 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1078795050 & 0xfff
	slli x28, x28, 20
	lui x1, -1078795050 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	jalr x0, LBB1_30 ( x0 )
LBB1_29:                                //  %if.end45
	add x10, x0, x4
	add x11, x0, x8
	add x12, x0, x4
	add x13, x0, x8
	sw x4, 52 ( x2 )                //  4-byte Folded Spill
	call $__muldf3
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	sw x11, 44 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 1765782472 & 0xfff
	slli x28, x28, 20
	lui x1, 1765782472 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1111104451 & 0xfff
	slli x28, x28, 20
	lui x1, -1111104451 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__muldf3
	ori x28, x0, 995011540 & 0xfff
	slli x28, x28, 20
	lui x1, 995011540 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1045758039 & 0xfff
	slli x28, x28, 20
	lui x1, 1045758039 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 1943166125 & 0xfff
	slli x28, x28, 20
	lui x1, 1943166125 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1093665113 & 0xfff
	slli x28, x28, 20
	lui x1, -1093665113 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 548576107 & 0xfff
	slli x28, x28, 20
	lui x1, 548576107 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1060554061 & 0xfff
	slli x28, x28, 20
	lui x1, 1060554061 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -1318258025 & 0xfff
	slli x28, x28, 20
	lui x1, -1318258025 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1081324312 & 0xfff
	slli x28, x28, 20
	lui x1, -1081324312 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -1645616132 & 0xfff
	slli x28, x28, 20
	lui x1, -1645616132 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1069980929 & 0xfff
	slli x28, x28, 20
	lui x1, 1069980929 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -1714696161 & 0xfff
	slli x28, x28, 20
	lui x1, -1714696161 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1078795050 & 0xfff
	slli x28, x28, 20
	lui x1, -1078795050 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	sw x11, 36 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 1003936239 & 0xfff
	slli x28, x28, 20
	lui x1, 1003936239 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1040076824 & 0xfff
	slli x28, x28, 20
	lui x1, 1040076824 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	ori x28, x0, 2146566909 & 0xfff
	slli x28, x28, 20
	lui x1, 2146566909 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1049715757 & 0xfff
	slli x28, x28, 20
	lui x1, 1049715757 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -176634175 & 0xfff
	slli x28, x28, 20
	lui x1, -176634175 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1058270395 & 0xfff
	slli x28, x28, 20
	lui x1, 1058270395 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -1849047270 & 0xfff
	slli x28, x28, 20
	lui x1, -1849047270 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1066013296 & 0xfff
	slli x28, x28, 20
	lui x1, 1066013296 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x12, x0, x0
	lui x13, 1072693248>>12 &0xfffff
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__divdf3
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	sw x11, 44 ( x2 )               //  4-byte Folded Spill
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $__ieee754_j0
	add x1, x0, x8
	add x8, x0, x10
	sw x11, 40 ( x2 )               //  4-byte Folded Spill
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__ieee754_log
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 1841940611 & 0xfff
	slli x28, x28, 20
	lui x1, 1841940611 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1071931184 & 0xfff
	slli x28, x28, 20
	lui x1, 1071931184 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
LBB1_30:                                //  %cleanup
	call $__adddf3
LBB1_31:                                //  %cleanup
	lw x8, 60 ( x2 )                //  4-byte Folded Reload
	lw x1, 68 ( x2 )
$cfi11:
	.cfi_same_value 1
	addi x2, x2, 72
$cfi12:
	.cfi_adjust_cfa_offset -72
$cfi13:
	.cfi_def_cfa 2, 0
	ret
$func_end1:
	.size	$__ieee754_y0, ($func_end1)-($__ieee754_y0)
	.cfi_endproc

	.address_space	0	
	.type	$pR8,@object            //  @pR8
	.section	.rodata,"a",@progbits
	.p2align	3
$pR8:
	.quad	0                       //  double 0
	.quad	-4633641066610819790    //  double -0.070312499999990036
	.quad	-4602632842817591431    //  double -8.081670412753498
	.quad	-4580142118682892189    //  double -257.06310567970485
	.quad	-4565688573100176644    //  double -2485.2164100942882
	.quad	-4560874239408970691    //  double -5253.0438049072955
	.size	$pR8, 48

	.address_space	0	
	.type	$pS8,@object            //  @pS8
	.p2align	3
$pS8:
	.quad	4637900793828697937     //  double 116.53436461966818
	.quad	4660648908942829880     //  double 3833.7447536412183
	.quad	4675812540598890591     //  double 40597.857264847255
	.quad	4682759616392571325     //  double 116752.97256437592
	.quad	4676778718732765660     //  double 47627.728414673096
	.size	$pS8, 40

	.address_space	0	
	.type	$pR5,@object            //  @pR5
	.p2align	3
$pR5:
	.quad	-4780262379782629940    //  double -1.141254646918945E-11
	.quad	-4633641067036869690    //  double -0.070312494087359928
	.quad	-4607002713190011969    //  double -4.1596106447058778
	.quad	-4588909431676397693    //  double -67.674765226516726
	.quad	-4578837338016002973    //  double -331.23129964917297
	.quad	-4578569900043039785    //  double -346.43338836560491
	.size	$pR5, 48

	.address_space	0	
	.type	$pS5,@object            //  @pS5
	.p2align	3
$pS5:
	.quad	4633747173989205470     //  double 60.753938269230034
	.quad	4652338271982856292     //  double 1051.2523059570458
	.quad	4663295962775428448     //  double 5978.9709433385578
	.quad	4666517258757405240     //  double 9625.4451435777446
	.quad	4657509392920078436     //  double 2406.0581592293911
	.size	$pS5, 40

	.address_space	0	
	.type	$pR3,@object            //  @pR3
	.p2align	3
$pR3:
	.quad	-4745139227486737786    //  double -2.5470460177195192E-9
	.quad	-4633641105403878837    //  double -0.070311961638148165
	.quad	-4610764959760744332    //  double -2.4090322154952961
	.quad	-4596495946174869996    //  double -21.965977473488309
	.quad	-4590001302967543227    //  double -58.079170470173757
	.quad	-4593827009006479345    //  double -31.44794705948885
	.size	$pR3, 48

	.address_space	0	
	.type	$pS3,@object            //  @pS3
	.p2align	3
$pS3:
	.quad	4630243105449672147     //  double 35.856033805520973
	.quad	4645067437439089678     //  double 361.51398305030386
	.quad	4652964358233547222     //  double 1193.6078379211153
	.quad	4652675797830835070     //  double 1127.9967985690741
	.quad	4640311352621502593     //  double 173.58093081333575
	.size	$pS3, 40

	.address_space	0	
	.type	$pR2,@object            //  @pR2
	.p2align	3
$pR2:
	.quad	-4722073588920286611    //  double -8.8753433303252641E-8
	.quad	-4633641743984746942    //  double -0.070303099548362474
	.quad	-4614159672459089853    //  double -1.4507384678095299
	.quad	-4603088988856670221    //  double -7.6356961382352777
	.quad	-4600881226022886653    //  double -11.193166886035675
	.quad	-4608908095059400945    //  double -3.2336457935133534
	.size	$pR2, 48

	.address_space	0	
	.type	$pS2,@object            //  @pS2
	.p2align	3
$pS2:
	.quad	4626947676037667161     //  double 22.220299753208881
	.quad	4638996367093041039     //  double 136.20679421821521
	.quad	4643465779653248923     //  double 270.47027865808349
	.quad	4639618025689381631     //  double 153.87539420832033
	.quad	4624441123253327881     //  double 14.657617694825619
	.size	$pS2, 40

	.address_space	0	
	.type	$qR8,@object            //  @qR8
	.p2align	3
$qR8:
	.quad	0                       //  double 0
	.quad	4589942076476489260     //  double 0.073242187499993505
	.quad	4622814529337898198     //  double 11.768206468225269
	.quad	4648116562747725861     //  double 557.67338025640186
	.quad	4666096009499702381     //  double 8859.1972075646863
	.quad	4675320065150686566     //  double 37014.626777688783
	.size	$qR8, 48

	.address_space	0	
	.type	$qS8,@object            //  @qS8
	.p2align	3
$qS8:
	.quad	4639966373233768892     //  double 163.77602689568982
	.quad	4665626239135581539     //  double 8098.3449465644981
	.quad	4684137591238528063     //  double 142538.29141912048
	.quad	4695147586068491075     //  double 803309.2571195144
	.quad	4695467065687804733     //  double 840501.57981906051
	.quad	-4533720279514009403    //  double -343899.29353786662
	.size	$qS8, 48

	.address_space	0	
	.type	$qR5,@object            //  @qR5
	.p2align	3
$qR5:
	.quad	4446246417212411097     //  double 1.8408596359451553E-11
	.quad	4589942075695476812     //  double 0.073242176661268477
	.quad	4618256359431159251     //  double 5.8356350896205695
	.quad	4638957832572995817     //  double 135.11157728644983
	.quad	4652232681307292801     //  double 1027.243765961641
	.quad	4656466830624744358     //  double 1989.9778586460538
	.size	$qR5, 48

	.address_space	0	
	.type	$qS5,@object            //  @qS5
	.p2align	3
$qS5:
	.quad	4635525303045592387     //  double 82.776610223653776
	.quad	4656787576741544142     //  double 2077.8141642139299
	.quad	4670909917246856813     //  double 18847.288778571809
	.quad	4678032627064644466     //  double 56751.112289494733
	.quad	4675177420980638880     //  double 35976.753842511447
	.quad	-4560762860034341367    //  double -5354.3427560194477
	.size	$qS5, 48

	.address_space	0	
	.type	$qR3,@object            //  @qR3
	.p2align	3
$qR3:
	.quad	4481869993748646786     //  double 4.3774101408973862E-9
	.quad	4589941999411202114     //  double 0.073241118004291145
	.quad	4614712958387526901     //  double 3.3442313751617072
	.quad	4631195308593622749     //  double 42.621844074541265
	.quad	4640213792005750047     //  double 170.8080913405656
	.quad	4640070445855023584     //  double 166.73394869665117
	.size	$qR3, 48

	.address_space	0	
	.type	$qS3,@object            //  @qS3
	.p2align	3
$qS3:
	.quad	4632059018626679718     //  double 48.758872972458718
	.quad	4649453708224253619     //  double 709.68922105660602
	.quad	4660363923165150307     //  double 3704.1482262011136
	.quad	4663825327293164072     //  double 6460.4251675256892
	.quad	4657751891375010240     //  double 2516.3336892036896
	.quad	-4583916842411822065    //  double -149.24745183615639
	.size	$qS3, 48

	.address_space	0	
	.type	$qR2,@object            //  @qR2
	.p2align	3
$qR2:
	.quad	4504779658175671259     //  double 1.5044444488698327E-7
	.quad	4589940724610907700     //  double 0.073223426596307928
	.quad	4611677874752550812     //  double 1.99819174093816
	.quad	4624349917051711461     //  double 14.495602934788574
	.quad	4629606469526608970     //  double 31.666231750478154
	.quad	4625267948167187380     //  double 16.252707571092927
	.size	$qR2, 48

	.address_space	0	
	.type	$qS2,@object            //  @qS2
	.p2align	3
$qS2:
	.quad	4629240369966512877     //  double 30.365584835521918
	.quad	4643446038404877120     //  double 269.34811860804984
	.quad	4650642012334440226     //  double 844.78375759532014
	.quad	4650977601645232660     //  double 882.93584511248855
	.quad	4641686549908427621     //  double 212.66638851179883
	.quad	-4605706414756517583    //  double -5.3109549388266695
	.size	$qS2, 48


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
