	.text
	.file	"e_j1.bc"
	.globl	$__ieee754_j1
	.type	$__ieee754_j1,@function
$__ieee754_j1:                          //  @__ieee754_j1
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10, 11, 10, 11
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
	add x8, x0, x11
	add x4, x0, x10
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	and x5, x1, x8
	lui x1, 2146435072>>12 &0xfffff
	bgtu x1, x5, LBB0_2
LBB0_1:                                 //  %if.then
	add x10, x0, x0
	lui x11, 1072693248>>12 &0xfffff
	add x12, x0, x4
	add x13, x0, x8
	call $__divdf3
	jalr x0, LBB0_31 ( x0 )
LBB0_2:                                 //  %if.end
	add x10, x0, x4
	add x11, x0, x8
	sw x4, 52 ( x2 )                //  4-byte Folded Spill
	sw x5, 56 ( x2 )                //  4-byte Folded Spill
	call $fabs
	lui x1, 1073741824>>12 &0xfffff
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	sw x8, 48 ( x2 )                //  4-byte Folded Spill
	bgtu x1, x3, LBB0_27
LBB0_3:                                 //  %if.then2
	add x8, x0, x10
	sw x11, 44 ( x2 )               //  4-byte Folded Spill
	call $sin
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	sw x11, 52 ( x2 )               //  4-byte Folded Spill
	sw x8, 36 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	nop
	call $cos
	add x8, x0, x10
	sw x8, 32 ( x2 )                //  4-byte Folded Spill
	sw x11, 28 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	add x10, x0, x0
	or x11, x1, x28
	lw x12, 40 ( x2 )               //  4-byte Folded Reload
	lw x13, 52 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	add x12, x0, x8
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	nop
	add x13, x0, x8
	call $__subdf3
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	sw x11, 24 ( x2 )               //  4-byte Folded Spill
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
	lw x12, 32 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x8
	call $__subdf3
	ori x28, x0, 2145386495 & 0xfff
	slli x28, x28, 20
	lui x1, 2145386495 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x3, x1, LBB0_22
LBB0_4:                                 //  %if.then8
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	sw x11, 12 ( x2 )               //  4-byte Folded Spill
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
	lw x12, 32 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x8
	call $__muldf3
	add x12, x0, x0
	add x13, x0, x12
	call $__gtdf2
	add x8, x0, x10
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x10
	add x13, x0, x11
	call $__adddf3
	call $cos
	ble x8, x0, LBB0_6
LBB0_5:                                 //  %if.then11
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	nop
	add x12, x0, x8
	lw x13, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divdf3
	jalr x0, LBB0_7 ( x0 )
LBB0_6:                                 //  %if.else
	lw x12, 16 ( x2 )               //  4-byte Folded Reload
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	nop
	add x13, x0, x8
	call $__divdf3
	sw x11, 24 ( x2 )               //  4-byte Folded Spill
	add x11, x0, x8
	add x8, x0, x10
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
LBB0_7:                                 //  %if.end15
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	lui x1, 1207959552>>12 &0xfffff
	bgtu x3, x1, LBB0_22
LBB0_8:                                 //  %if.else21
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	sw x11, 12 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	or x1, x1, x28
	ori x28, x0, $pr8 & 0xfff
	slli x28, x28, 20
	lui x3, $pr8 >> 12 & 0xfffff
	srli x28, x28, 20
	or x8, x3, x28
	ori x28, x0, $ps8 & 0xfff
	slli x28, x28, 20
	lui x3, $ps8 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x3, x28
	ori x28, x0, 1075838975 & 0xfff
	slli x28, x28, 20
	lui x3, 1075838975 >> 12 & 0xfffff
	srli x28, x28, 20
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	nop
	and x5, x1, x11
	or x1, x3, x28
	bgtu x5, x1, LBB0_15
LBB0_9:                                 //  %if.else.i
	ori x28, x0, $pr5 & 0xfff
	slli x28, x28, 20
	lui x1, $pr5 >> 12 & 0xfffff
	srli x28, x28, 20
	or x8, x1, x28
	ori x28, x0, $ps5 & 0xfff
	slli x28, x28, 20
	lui x1, $ps5 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x1, x28
	ori x28, x0, 1074933386 & 0xfff
	slli x28, x28, 20
	lui x1, 1074933386 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x5, x1, LBB0_15
LBB0_10:                                //  %if.else3.i
	ori x28, x0, $pr2 & 0xfff
	slli x28, x28, 20
	lui x1, $pr2 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x1, x28
	ori x28, x0, $pr3 & 0xfff
	slli x28, x28, 20
	lui x1, $pr3 >> 12 & 0xfffff
	srli x28, x28, 20
	or x8, x1, x28
	ori x28, x0, 1074191212 & 0xfff
	slli x28, x28, 20
	lui x1, 1074191212 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x5, x1, LBB0_12
LBB0_11:                                //  %if.else3.i
	add x8, x0, x3
LBB0_12:                                //  %if.else3.i
	lui x3, $ps2 >> 12 & 0xfffff
	ori x28, x0, $ps2 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	lui x4, $ps3 >> 12 & 0xfffff
	ori x28, x0, $ps3 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x4, x28
	bgtu x5, x1, LBB0_14
LBB0_13:                                //  %if.else3.i
	add x4, x0, x3
LBB0_14:                                //  %if.else3.i
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
LBB0_15:                                //  %pone.exit
	sw x4, 32 ( x2 )                //  4-byte Folded Spill
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	nop
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
	sw x11, 52 ( x2 )               //  4-byte Folded Spill
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
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
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
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
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
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
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
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
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
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	nop
	lw x12, 32 ( x8 )
	lw x13, 36 ( x8 )
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
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
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
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
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
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
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
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
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x8, x0, x0
	add x12, x0, x8
	lui x13, 1072693248>>12 &0xfffff
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__divdf3
	add x12, x0, x8
	lui x13, 1072693248>>12 &0xfffff
	call $__adddf3
	lw x5, 40 ( x2 )                //  4-byte Folded Reload
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	sw x11, 28 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, $qr8 & 0xfff
	slli x28, x28, 20
	lui x1, $qr8 >> 12 & 0xfffff
	srli x28, x28, 20
	or x8, x1, x28
	ori x28, x0, $qs8 & 0xfff
	slli x28, x28, 20
	lui x1, $qs8 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x1, x28
	ori x28, x0, 1075838975 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 1075838975 >> 12 & 0xfffff
	or x1, x1, x28
	bgtu x5, x1, LBB0_21
LBB0_16:                                //  %if.else.i131
	ori x28, x0, $qr5 & 0xfff
	slli x28, x28, 20
	lui x1, $qr5 >> 12 & 0xfffff
	srli x28, x28, 20
	or x8, x1, x28
	ori x28, x0, $qs5 & 0xfff
	slli x28, x28, 20
	lui x1, $qs5 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x1, x28
	ori x28, x0, 1074933386 & 0xfff
	slli x28, x28, 20
	lui x1, 1074933386 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x5, x1, LBB0_21
LBB0_17:                                //  %if.else3.i134
	ori x28, x0, $qr2 & 0xfff
	slli x28, x28, 20
	lui x1, $qr2 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x1, x28
	ori x28, x0, $qr3 & 0xfff
	slli x28, x28, 20
	lui x1, $qr3 >> 12 & 0xfffff
	srli x28, x28, 20
	or x8, x1, x28
	ori x28, x0, 1074191212 & 0xfff
	slli x28, x28, 20
	lui x1, 1074191212 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x5, x1, LBB0_19
LBB0_18:                                //  %if.else3.i134
	add x8, x0, x3
LBB0_19:                                //  %if.else3.i134
	lui x3, $qs2 >> 12 & 0xfffff
	ori x28, x0, $qs2 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	lui x4, $qs3 >> 12 & 0xfffff
	ori x28, x0, $qs3 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x4, x28
	bgtu x5, x1, LBB0_21
LBB0_20:                                //  %if.else3.i134
	add x4, x0, x3
LBB0_21:                                //  %qone.exit
	sw x4, 4 ( x2 )                 //  4-byte Folded Spill
	lw x12, 40 ( x8 )
	lw x13, 44 ( x8 )
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
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
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
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
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
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
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
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
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
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
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	lw x8, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	lw x12, 40 ( x8 )
	lw x13, 44 ( x8 )
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
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
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
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
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
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
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
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
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
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
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
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
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__divdf3
	lui x13, 1071120384>>12 &0xfffff
	add x12, x0, x8
	call $__adddf3
	lw x12, 36 ( x2 )               //  4-byte Folded Reload
	lw x13, 44 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divdf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x8, x0, x10
	sw x11, 56 ( x2 )               //  4-byte Folded Spill
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	lw x12, 32 ( x2 )               //  4-byte Folded Reload
	lw x13, 28 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	add x12, x0, x8
	lw x13, 56 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
LBB0_22:                                //  %if.end30
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
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	nop
	call $__ieee754_sqrt
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__divdf3
	add x8, x0, x10
	add x3, x0, x11
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	or x11, x1, x28
	add x1, x0, x0
	add x10, x0, x1
	add x12, x0, x8
	sw x3, 56 ( x2 )                //  4-byte Folded Spill
	add x13, x0, x3
	call $__subdf3
	add x3, x0, x0
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x3, x1, LBB0_24
LBB0_23:                                //  %if.end30
	add x10, x0, x8
LBB0_24:                                //  %if.end30
	bgt x3, x1, LBB0_26
LBB0_25:                                //  %if.end30
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
LBB0_26:                                //  %if.end30
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
LBB0_27:                                //  %if.end35
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
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $__adddf3
	add x12, x0, x0
	lui x13, 1072693248>>12 &0xfffff
	call $__gtdf2
	ble x10, x0, LBB0_30
LBB0_28:                                //  %if.end35
	lui x1, 1044381695 >> 12 & 0xfffff
	ori x28, x0, 1044381695 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x3, x1, LBB0_30
LBB0_29:                                //  %if.then40
	add x12, x0, x0
	lui x13, 1071644672>>12 &0xfffff
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	jalr x0, LBB0_31 ( x0 )
LBB0_30:                                //  %if.end43
	add x12, x0, x0
	lui x13, 1071644672>>12 &0xfffff
	lw x8, 52 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	sw x11, 36 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x8
	add x13, x0, x11
	call $__muldf3
	sw x10, 56 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 1187646425 & 0xfff
	slli x28, x28, 20
	lui x1, 1187646425 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1047177978 & 0xfff
	slli x28, x28, 20
	lui x1, 1047177978 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x8, x0, x11
	call $__muldf3
	ori x28, x0, -1172924824 & 0xfff
	slli x28, x28, 20
	lui x1, -1172924824 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1091516986 & 0xfff
	slli x28, x28, 20
	lui x1, -1091516986 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -1740166047 & 0xfff
	slli x28, x28, 20
	lui x1, -1740166047 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1062669727 & 0xfff
	slli x28, x28, 20
	lui x1, 1062669727 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -1078984704 & 0xfff
	slli x28, x28, 20
	lui x1, -1078984704 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x12, x0, x0
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	sw x11, 28 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, -809926952 & 0xfff
	slli x28, x28, 20
	lui x1, -809926952 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1034627791 & 0xfff
	slli x28, x28, 20
	lui x1, 1034627791 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $__muldf3
	ori x28, x0, -914489556 & 0xfff
	slli x28, x28, 20
	lui x1, -914489556 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1043704968 & 0xfff
	slli x28, x28, 20
	lui x1, 1043704968 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	sw x8, 44 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 859800728 & 0xfff
	slli x28, x28, 20
	lui x1, 859800728 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1051967480 & 0xfff
	slli x28, x28, 20
	lui x1, 1051967480 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -1177684380 & 0xfff
	slli x28, x28, 20
	lui x1, -1177684380 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1059610454 & 0xfff
	slli x28, x28, 20
	lui x1, 1059610454 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x8, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 308510291 & 0xfff
	slli x28, x28, 20
	lui x1, 308510291 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1066638603 & 0xfff
	slli x28, x28, 20
	lui x1, 1066638603 >> 12 & 0xfffff
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
	lui x13, 1072693248>>12 &0xfffff
	add x12, x0, x0
	call $__adddf3
	add x8, x0, x10
	sw x11, 56 ( x2 )               //  4-byte Folded Spill
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	lw x11, 28 ( x2 )               //  4-byte Folded Reload
	lw x12, 52 ( x2 )               //  4-byte Folded Reload
	lw x13, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	add x12, x0, x8
	lw x13, 56 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divdf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
LBB0_31:                                //  %cleanup
	lw x8, 60 ( x2 )                //  4-byte Folded Reload
	lw x1, 68 ( x2 )
$cfi7:
	.cfi_same_value 1
	addi x2, x2, 72
$cfi8:
	.cfi_adjust_cfa_offset -72
$cfi9:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$__ieee754_j1, ($func_end0)-($__ieee754_j1)
	.cfi_endproc

	.globl	$__ieee754_y1
	.type	$__ieee754_y1,@function
$__ieee754_y1:                          //  @__ieee754_y1
	.cfi_startproc
  .codasip_retval_regs 10, 11
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi10:
	.cfi_def_cfa 2, 0
$cfi11:
	.cfi_val_offset 2, 0
	addi x2, x2, -72
$cfi12:
	.cfi_adjust_cfa_offset 72
	sw x1, 68 ( x2 )
$cfi13:
	.cfi_offset 1, -4
	sw x8, 60 ( x2 )                //  4-byte Folded Spill
	add x4, x0, x11
	add x8, x0, x10
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	and x7, x1, x4
	lui x1, 2146435072>>12 &0xfffff
	bgtu x1, x7, LBB1_3
LBB1_1:                                 //  %if.then
	add x10, x0, x8
	add x11, x0, x4
	add x12, x0, x8
	add x13, x0, x4
	sw x4, 56 ( x2 )                //  4-byte Folded Spill
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
	jalr x0, LBB1_30 ( x0 )
LBB1_3:                                 //  %if.end
	ori x28, x0, -1048576 & 0xfff
	slli x28, x28, 20
	or x1, x8, x7
	lui x3, -1048576 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x3, x28
	add x10, x0, x0
	beqz x1, LBB1_30
LBB1_4:                                 //  %if.end4
	bgez x4, LBB1_6
LBB1_5:
	lui x11, 2146959360>>12 &0xfffff
	jalr x0, LBB1_30 ( x0 )
LBB1_6:                                 //  %if.end7
	lui x1, 1073741824>>12 &0xfffff
	bgtu x1, x7, LBB1_27
LBB1_7:                                 //  %if.then9
	add x10, x0, x8
	add x11, x0, x4
	sw x7, 40 ( x2 )                //  4-byte Folded Spill
	sw x4, 56 ( x2 )                //  4-byte Folded Spill
	call $sin
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	sw x11, 44 ( x2 )               //  4-byte Folded Spill
	sw x8, 52 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	nop
	call $cos
	add x8, x0, x10
	sw x8, 36 ( x2 )                //  4-byte Folded Spill
	sw x11, 24 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	add x10, x0, x0
	or x11, x1, x28
	lw x12, 48 ( x2 )               //  4-byte Folded Reload
	lw x13, 44 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	add x12, x0, x8
	lw x8, 24 ( x2 )                //  4-byte Folded Reload
	nop
	add x13, x0, x8
	call $__subdf3
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	sw x11, 28 ( x2 )               //  4-byte Folded Spill
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	lw x12, 36 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x8
	call $__subdf3
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	ori x28, x0, 2145386495 & 0xfff
	slli x28, x28, 20
	lui x1, 2145386495 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgeu x1, x3, LBB1_9
LBB1_8:
	lw x11, 28 ( x2 )               //  4-byte Folded Reload
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_26 ( x0 )
LBB1_9:                                 //  %if.then14
	sw x11, 16 ( x2 )               //  4-byte Folded Spill
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	lw x12, 36 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x8
	call $__muldf3
	add x12, x0, x0
	add x13, x0, x12
	call $__gtdf2
	add x8, x0, x10
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x10
	add x13, x0, x11
	call $__adddf3
	call $cos
	ble x8, x0, LBB1_11
LBB1_10:                                //  %if.then19
	lw x12, 32 ( x2 )               //  4-byte Folded Reload
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	nop
	add x13, x0, x8
	call $__divdf3
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	sw x11, 16 ( x2 )               //  4-byte Folded Spill
	add x11, x0, x8
	jalr x0, LBB1_12 ( x0 )
LBB1_11:                                //  %if.else
	lw x12, 20 ( x2 )               //  4-byte Folded Reload
	lw x13, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divdf3
LBB1_12:                                //  %if.end23
	lw x7, 40 ( x2 )                //  4-byte Folded Reload
	lui x1, 1207959552>>12 &0xfffff
	bgtu x7, x1, LBB1_26
LBB1_13:                                //  %if.else29
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	sw x11, 28 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, $pr8 & 0xfff
	slli x28, x28, 20
	lui x1, $pr8 >> 12 & 0xfffff
	srli x28, x28, 20
	or x8, x1, x28
	ori x28, x0, $ps8 & 0xfff
	slli x28, x28, 20
	lui x1, $ps8 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x1, x28
	ori x28, x0, 1075838975 & 0xfff
	slli x28, x28, 20
	lui x1, 1075838975 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	bgtu x7, x1, LBB1_19
LBB1_14:                                //  %if.else.i
	ori x28, x0, $pr5 & 0xfff
	slli x28, x28, 20
	lui x1, $pr5 >> 12 & 0xfffff
	srli x28, x28, 20
	or x8, x1, x28
	ori x28, x0, $ps5 & 0xfff
	slli x28, x28, 20
	lui x1, $ps5 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x1, x28
	ori x28, x0, 1074933386 & 0xfff
	slli x28, x28, 20
	lui x1, 1074933386 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x7, x1, LBB1_19
LBB1_15:                                //  %if.else3.i
	ori x28, x0, $pr2 & 0xfff
	slli x28, x28, 20
	lui x1, $pr2 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x1, x28
	ori x28, x0, $pr3 & 0xfff
	slli x28, x28, 20
	lui x1, $pr3 >> 12 & 0xfffff
	srli x28, x28, 20
	or x8, x1, x28
	ori x28, x0, 1074191212 & 0xfff
	slli x28, x28, 20
	lui x1, 1074191212 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x7, x1, LBB1_17
LBB1_16:                                //  %if.else3.i
	add x8, x0, x3
LBB1_17:                                //  %if.else3.i
	lui x3, $ps2 >> 12 & 0xfffff
	ori x28, x0, $ps2 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	lui x4, $ps3 >> 12 & 0xfffff
	ori x28, x0, $ps3 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x4, x28
	bgtu x7, x1, LBB1_19
LBB1_18:                                //  %if.else3.i
	add x4, x0, x3
LBB1_19:                                //  %pone.exit
	sw x4, 36 ( x2 )                //  4-byte Folded Spill
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
	add x12, x0, x0
	lui x13, 1072693248>>12 &0xfffff
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__divdf3
	add x12, x0, x0
	lui x13, 1072693248>>12 &0xfffff
	call $__adddf3
	lw x7, 40 ( x2 )                //  4-byte Folded Reload
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	sw x11, 24 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, $qr8 & 0xfff
	slli x28, x28, 20
	lui x1, $qr8 >> 12 & 0xfffff
	srli x28, x28, 20
	or x8, x1, x28
	ori x28, x0, $qs8 & 0xfff
	slli x28, x28, 20
	lui x1, $qs8 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x1, x28
	ori x28, x0, 1075838975 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 1075838975 >> 12 & 0xfffff
	or x1, x1, x28
	bgtu x7, x1, LBB1_25
LBB1_20:                                //  %if.else.i139
	ori x28, x0, $qr5 & 0xfff
	slli x28, x28, 20
	lui x1, $qr5 >> 12 & 0xfffff
	srli x28, x28, 20
	or x8, x1, x28
	ori x28, x0, $qs5 & 0xfff
	slli x28, x28, 20
	lui x1, $qs5 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x1, x28
	ori x28, x0, 1074933386 & 0xfff
	slli x28, x28, 20
	lui x1, 1074933386 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x7, x1, LBB1_25
LBB1_21:                                //  %if.else3.i142
	ori x28, x0, $qr2 & 0xfff
	slli x28, x28, 20
	lui x1, $qr2 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x1, x28
	ori x28, x0, $qr3 & 0xfff
	slli x28, x28, 20
	lui x1, $qr3 >> 12 & 0xfffff
	srli x28, x28, 20
	or x8, x1, x28
	ori x28, x0, 1074191212 & 0xfff
	slli x28, x28, 20
	lui x1, 1074191212 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x7, x1, LBB1_23
LBB1_22:                                //  %if.else3.i142
	add x8, x0, x3
LBB1_23:                                //  %if.else3.i142
	lui x3, $qs2 >> 12 & 0xfffff
	ori x28, x0, $qs2 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	lui x4, $qs3 >> 12 & 0xfffff
	ori x28, x0, $qs3 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x4, x28
	bgtu x7, x1, LBB1_25
LBB1_24:                                //  %if.else3.i142
	add x4, x0, x3
LBB1_25:                                //  %qone.exit
	sw x4, 40 ( x2 )                //  4-byte Folded Spill
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
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	lw x8, 40 ( x2 )                //  4-byte Folded Reload
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
	lw x8, 48 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 24 ( x3 )
	lw x3, 28 ( x3 )
	add x12, x0, x10
	add x13, x0, x11
	add x10, x0, x1
	add x11, x0, x3
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
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 16 ( x3 )
	lw x3, 20 ( x3 )
	add x12, x0, x10
	add x13, x0, x11
	add x10, x0, x1
	add x11, x0, x3
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lw x8, 40 ( x2 )                //  4-byte Folded Reload
	nop
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
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__divdf3
	lui x13, 1071120384>>12 &0xfffff
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
	lui x1, 1016070144>>12 &0xfffff
	bgtu x7, x1, LBB1_29
LBB1_28:                                //  %if.then41
	ori x28, x0, 1841940611 & 0xfff
	slli x28, x28, 20
	lui x1, 1841940611 >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x1, x28
	ori x28, x0, -1075552464 & 0xfff
	slli x28, x28, 20
	lui x1, -1075552464 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x12, x0, x8
	add x13, x0, x4
	call $__divdf3
	jalr x0, LBB1_30 ( x0 )
LBB1_29:                                //  %if.end43
	add x10, x0, x8
	add x11, x0, x4
	add x12, x0, x8
	add x13, x0, x4
	sw x4, 56 ( x2 )                //  4-byte Folded Spill
	sw x8, 52 ( x2 )                //  4-byte Folded Spill
	call $__muldf3
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 1452344760 & 0xfff
	slli x28, x28, 20
	lui x1, 1452344760 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1099387904 & 0xfff
	slli x28, x28, 20
	lui x1, -1099387904 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x8, x0, x11
	call $__muldf3
	ori x28, x0, -1884899186 & 0xfff
	slli x28, x28, 20
	lui x1, -1884899186 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1056484099 & 0xfff
	slli x28, x28, 20
	lui x1, 1056484099 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 1212478735 & 0xfff
	slli x28, x28, 20
	lui x1, 1212478735 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1084271131 & 0xfff
	slli x28, x28, 20
	lui x1, -1084271131 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 1982409937 & 0xfff
	slli x28, x28, 20
	lui x1, 1982409937 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1068094407 & 0xfff
	slli x28, x28, 20
	lui x1, 1068094407 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 339524746 & 0xfff
	slli x28, x28, 20
	lui x1, 339524746 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1077340058 & 0xfff
	slli x28, x28, 20
	lui x1, -1077340058 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	sw x11, 36 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, -624265430 & 0xfff
	slli x28, x28, 20
	lui x1, -624265430 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1035096121 & 0xfff
	slli x28, x28, 20
	lui x1, 1035096121 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	sw x8, 44 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x8
	call $__muldf3
	ori x28, x0, 1537645190 & 0xfff
	slli x28, x28, 20
	lui x1, 1537645190 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1044037405 & 0xfff
	slli x28, x28, 20
	lui x1, 1044037405 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -1991340890 & 0xfff
	slli x28, x28, 20
	lui x1, -1991340890 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1052164186 & 0xfff
	slli x28, x28, 20
	lui x1, 1052164186 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x8, 48 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 1814394724 & 0xfff
	slli x28, x28, 20
	lui x1, 1814394724 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1059753097 & 0xfff
	slli x28, x28, 20
	lui x1, 1059753097 >> 12 & 0xfffff
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
	ori x28, x0, 1062054384 & 0xfff
	slli x28, x28, 20
	lui x1, 1062054384 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1066689805 & 0xfff
	slli x28, x28, 20
	lui x1, 1066689805 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
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
	lw x12, 52 ( x2 )               //  4-byte Folded Reload
	lw x8, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x13, x0, x8
	call $__muldf3
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	sw x11, 44 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x0
	lui x11, 1072693248>>12 &0xfffff
	lw x12, 52 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x8
	call $__divdf3
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	sw x11, 36 ( x2 )               //  4-byte Folded Spill
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $__ieee754_j1
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	sw x11, 28 ( x2 )               //  4-byte Folded Spill
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $__ieee754_log
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	lw x11, 28 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lw x12, 40 ( x2 )               //  4-byte Folded Reload
	lw x13, 36 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
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
	call $__adddf3
LBB1_30:                                //  %cleanup
	lw x8, 60 ( x2 )                //  4-byte Folded Reload
	lw x1, 68 ( x2 )
$cfi14:
	.cfi_same_value 1
	addi x2, x2, 72
$cfi15:
	.cfi_adjust_cfa_offset -72
$cfi16:
	.cfi_def_cfa 2, 0
	ret
$func_end1:
	.size	$__ieee754_y1, ($func_end1)-($__ieee754_y1)
	.cfi_endproc

	.address_space	0	
	.type	$pr8,@object            //  @pr8
	.section	.rodata,"a",@progbits
	.p2align	3
$pr8:
	.quad	0                       //  double 0
	.quad	4593108669964483790     //  double 0.11718749999998865
	.quad	4623642783075237838     //  double 13.239480659307358
	.quad	4645956509072532880     //  double 412.05185430737856
	.quad	4660739070293783244     //  double 3874.7453891396053
	.quad	4665424076983468765     //  double 7914.4795403189173
	.size	$pr8, 48

	.address_space	0	
	.type	$ps8,@object            //  @ps8
	.p2align	3
$ps8:
	.quad	4637737046166039724     //  double 114.20737037567841
	.quad	4660246896882558799     //  double 3650.9308342085346
	.quad	4675312035863837567     //  double 36956.206026903346
	.quad	4681443626114291643     //  double 97602.79359349508
	.quad	4674196627785386797     //  double 30804.272062788881
	.size	$ps8, 40

	.address_space	0	
	.type	$pr5,@object            //  @pr5
	.p2align	3
$pr5:
	.quad	4444215450408176253     //  double 1.3199051955624352E-11
	.quad	4593108669473816643     //  double 0.1171874931906141
	.quad	4619345235458332131     //  double 6.8027512786843287
	.quad	4637321927758054125     //  double 108.30818299018911
	.quad	4647764391453972041     //  double 517.63613953319975
	.quad	4647861843912428727     //  double 528.71520136333754
	.size	$pr5, 48

	.address_space	0	
	.type	$ps5,@object            //  @ps5
	.p2align	3
$ps5:
	.quad	4633539819881849661     //  double 59.280598722113133
	.quad	4651931674920511233     //  double 991.40141873361438
	.quad	4662607993962411771     //  double 5353.2669529148798
	.quad	4665347342921480981     //  double 7844.6903174955123
	.quad	4654329683615112785     //  double 1504.0468881036106
	.size	$ps5, 40

	.address_space	0	
	.type	$pr3,@object            //  @pr3
	.p2align	3
$pr3:
	.quad	4479388525873962717     //  double 3.0250391613737362E-9
	.quad	4593108624248787323     //  double 0.11718686556725359
	.quad	4616038696802495882     //  double 3.9329775003331564
	.quad	4630139433958953257     //  double 35.119403559163693
	.quad	4636107843717306423     //  double 91.055011075078127
	.quad	4632030898649841381     //  double 48.559068519736492
	.size	$pr3, 48

	.address_space	0	
	.type	$ps3,@object            //  @ps3
	.p2align	3
$ps3:
	.quad	4630093258825139868     //  double 34.791309500125152
	.quad	4644632004018677599     //  double 336.76245874782575
	.quad	4652319004553631011     //  double 1046.8713997577513
	.quad	4651046875287138793     //  double 890.81134639825643
	.quad	4637003843403443539     //  double 103.78793243963928
	.size	$ps3, 40

	.address_space	0	
	.type	$pr2,@object            //  @pr2
	.p2align	3
$pr2:
	.quad	4502730828338775284     //  double 1.0771083010687374E-7
	.quad	4593107857116106115     //  double 0.11717621946268335
	.quad	4612515840360689344     //  double 2.3685149666760879
	.quad	4623081595299015012     //  double 12.242610914826123
	.quad	4625673627793067746     //  double 17.693971127168773
	.quad	4617398297642189310     //  double 5.073523125888185
	.size	$pr2, 48

	.address_space	0	
	.type	$ps2,@object            //  @ps2
	.p2align	3
$ps2:
	.quad	4626727052061830364     //  double 21.436485936382141
	.quad	4638516932880444629     //  double 125.29022716840275
	.quad	4642376518279027673     //  double 232.27646905716281
	.quad	4637981366650700969     //  double 117.6793732871471
	.quad	4620898491152880018     //  double 8.3646389337161828
	.size	$ps2, 40

	.address_space	0	
	.type	$qr8,@object            //  @qr8
	.p2align	3
$qr8:
	.quad	0                       //  double 0
	.quad	-4631318898052956685    //  double -0.10253906249999271
	.quad	-4598098727748011529    //  double -16.271753454458999
	.quad	-4573479293624732298    //  double -759.60172251395011
	.quad	-4555631922415897579    //  double -11849.806670242959
	.quad	-4546481884815647638    //  double -48438.512428575035
	.size	$qr8, 48

	.address_space	0	
	.type	$qs8,@object            //  @qs8
	.p2align	3
$qs8:
	.quad	4639882611305205221     //  double 161.39536970072291
	.quad	4665326117599085593     //  double 7825.3859992334847
	.quad	4683839934366703256     //  double 133875.33628724958
	.quad	4694429024867752985     //  double 719657.72368324094
	.quad	4693973273079819612     //  double 666601.23261777638
	.quad	-4534569120172758504    //  double -294490.26430383464
	.size	$qs8, 48

	.address_space	0	
	.type	$qr5,@object            //  @qr5
	.p2align	3
$qr5:
	.quad	-4776355188663279464    //  double -2.089799311417641E-11
	.quad	-4631318898936283153    //  double -0.10253905024137543
	.quad	-4602647041615352501    //  double -8.0564482812393603
	.quad	-4582705720479729232    //  double -183.66960747488838
	.quad	-4569617851380305073    //  double -1373.1937606550816
	.quad	-4565408795781650531    //  double -2612.4444045321566
	.size	$qr5, 48

	.address_space	0	
	.type	$qs5,@object            //  @qs5
	.p2align	3
$qs5:
	.quad	4635419745701204402     //  double 81.276550138433578
	.quad	4656474838921902137     //  double 1991.7987346048596
	.quad	4670530914603028009     //  double 17468.485192490891
	.quad	4677084341551681943     //  double 49851.427091035228
	.quad	4673411522359998027     //  double 27948.075163891812
	.quad	-4561461224969101308    //  double -4719.1835479512847
	.size	$qs5, 48

	.address_space	0	
	.type	$qr3,@object            //  @qr3
	.p2align	3
$qr3:
	.quad	-4740654704431740849    //  double -5.0783122646176656E-9
	.quad	-4631318986876850860    //  double -0.10253782982083709
	.quad	-4606495489464804865    //  double -4.610115811394734
	.quad	-4590033946861037862    //  double -57.847221656278364
	.quad	-4581137379441978017    //  double -228.2445407376317
	.quad	-4581455249564492810    //  double -219.21012847890933
	.size	$qr3, 48

	.address_space	0	
	.type	$qs3,@object            //  @qs3
	.p2align	3
$qs3:
	.quad	4631905091510822884     //  double 47.665155032372951
	.quad	4649138596034506302     //  double 673.86511267669971
	.quad	4659651449835125914     //  double 3380.1528667952634
	.quad	4662821807351223462     //  double 5547.7290972072278
	.quad	4656084822175047499     //  double 1903.119193388108
	.quad	-4584411051263905505    //  double -135.20119144430734
	.size	$qs3, 48

	.address_space	0	
	.type	$qr2,@object            //  @qr2
	.p2align	3
$qr2:
	.quad	-4717536937982417198    //  double -1.7838172751095887E-7
	.quad	-4631320484753395696    //  double -0.10251704260798555
	.quad	-4609992201811046694    //  double -2.7522056827818746
	.quad	-4597144003242585985    //  double -19.663616264370372
	.quad	-4592218461252334934    //  double -42.325313337283049
	.quad	-4596663158158954926    //  double -21.371921170370406
	.size	$qr2, 48

	.address_space	0	
	.type	$qs2,@object            //  @qs2
	.p2align	3
$qs2:
	.quad	4629006120318297343     //  double 29.533362906052385
	.quad	4643105013550423226     //  double 252.98154998219053
	.quad	4649874281219072247     //  double 757.50283486864544
	.quad	4649714987232968745     //  double 739.39320532046725
	.quad	4639690984324520148     //  double 155.94900333666612
	.quad	-4606102118978557845    //  double -4.9594989882262821
	.size	$qs2, 48


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
