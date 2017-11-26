	.text
	.file	"ef_j1.bc"
	.globl	$__ieee754_j1f
	.type	$__ieee754_j1f,@function
$__ieee754_j1f:                         //  @__ieee754_j1f
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10, 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -56
$cfi2:
	.cfi_adjust_cfa_offset 56
	sw x1, 52 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 44 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x10
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	and x4, x1, x8
	lui x1, 2139095040>>12 &0xfffff
	bgtu x1, x4, LBB0_2
LBB0_1:                                 //  %if.then
	lui x10, 1065353216>>12 &0xfffff
	add x11, x0, x8
	call $__divsf3
	jalr x0, LBB0_27 ( x0 )
LBB0_2:                                 //  %if.end
	add x10, x0, x8
	sw x4, 40 ( x2 )                //  4-byte Folded Spill
	call $fabsf
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	lui x1, 1073741824>>12 &0xfffff
	sw x8, 32 ( x2 )                //  4-byte Folded Spill
	bgtu x1, x3, LBB0_23
LBB0_3:                                 //  %if.then2
	add x8, x0, x10
	sw x8, 36 ( x2 )                //  4-byte Folded Spill
	call $sinf
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	call $cosf
	add x8, x0, x10
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x1, x28
	lw x11, 28 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subsf3
	add x11, x0, x8
	call $__subsf3
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	sw x8, 24 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x8
	call $__subsf3
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 2130706431 & 0xfff
	slli x28, x28, 20
	lui x1, 2130706431 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	nop
	add x8, x0, x3
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	bgeu x1, x3, LBB0_5
LBB0_4:
	add x10, x0, x8
	jalr x0, LBB0_9 ( x0 )
LBB0_5:                                 //  %if.then8
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	add x11, x0, x0
	call $__gtsf2
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	add x11, x0, x10
	call $__addsf3
	call $cosf
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	ble x1, x0, LBB0_7
LBB0_6:                                 //  %if.then11
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divsf3
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	jalr x0, LBB0_8 ( x0 )
LBB0_7:                                 //  %if.else
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divsf3
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
LBB0_8:                                 //  %if.else21
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
LBB0_9:                                 //  %if.else21
	lui x3, 2147483647 >> 12 & 0xfffff
	ori x28, x0, $pr8 & 0xfff
	slli x28, x28, 20
	lui x1, $pr8 >> 12 & 0xfffff
	srli x28, x28, 20
	or x8, x1, x28
	ori x28, x0, $ps8 & 0xfff
	slli x28, x28, 20
	lui x1, $ps8 >> 12 & 0xfffff
	srli x28, x28, 20
	or x5, x1, x28
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x3, x28
	ori x28, x0, 1090519039 & 0xfff
	slli x28, x28, 20
	lui x3, 1090519039 >> 12 & 0xfffff
	srli x28, x28, 20
	and x1, x1, x10
	or x3, x3, x28
	bgtu x1, x3, LBB0_16
LBB0_10:                                //  %if.else.i
	ori x28, x0, $pr5 & 0xfff
	slli x28, x28, 20
	lui x3, $pr5 >> 12 & 0xfffff
	srli x28, x28, 20
	or x8, x3, x28
	ori x28, x0, $ps5 & 0xfff
	slli x28, x28, 20
	lui x3, $ps5 >> 12 & 0xfffff
	srli x28, x28, 20
	or x5, x3, x28
	ori x28, x0, 1089936471 & 0xfff
	slli x28, x28, 20
	lui x3, 1089936471 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	bgtu x1, x3, LBB0_16
LBB0_11:                                //  %if.else3.i
	ori x28, x0, $pr2 & 0xfff
	slli x28, x28, 20
	lui x3, $pr2 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x3, x28
	ori x28, x0, $pr3 & 0xfff
	slli x28, x28, 20
	lui x3, $pr3 >> 12 & 0xfffff
	srli x28, x28, 20
	or x8, x3, x28
	ori x28, x0, 1077336935 & 0xfff
	slli x28, x28, 20
	lui x3, 1077336935 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	bgtu x1, x3, LBB0_13
LBB0_12:                                //  %if.else3.i
	add x8, x0, x4
LBB0_13:                                //  %if.else3.i
	lui x4, $ps2 >> 12 & 0xfffff
	ori x28, x0, $ps2 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x4, x28
	lui x5, $ps3 >> 12 & 0xfffff
	ori x28, x0, $ps3 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x5, x5, x28
	bgtu x1, x3, LBB0_15
LBB0_14:                                //  %if.else3.i
	add x5, x0, x4
LBB0_15:                                //  %if.else3.i
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
LBB0_16:                                //  %ponef.exit
	sw x5, 28 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x10
	call $__mulsf3
	add x1, x0, x10
	lui x10, 1065353216>>12 &0xfffff
	add x11, x0, x1
	call $__divsf3
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	lw x11, 20 ( x8 )
	sw x8, 24 ( x2 )                //  4-byte Folded Spill
	call $__mulsf3
	lw x1, 16 ( x8 )
	add x11, x0, x10
	add x10, x0, x1
	call $__addsf3
	add x1, x0, x10
	lw x8, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 12 ( x1 )
	add x11, x0, x10
	add x10, x0, x1
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lw x8, 24 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 8 ( x8 )
	add x11, x0, x10
	add x10, x0, x1
	call $__addsf3
	add x1, x0, x10
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	lw x1, 4 ( x8 )
	add x11, x0, x10
	add x10, x0, x1
	call $__addsf3
	add x1, x0, x10
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	lw x1, 0 ( x8 )
	add x11, x0, x10
	add x10, x0, x1
	call $__addsf3
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	nop
	lw x11, 16 ( x8 )
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	lw x1, 12 ( x8 )
	add x11, x0, x10
	add x10, x0, x1
	call $__addsf3
	add x1, x0, x10
	lw x8, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 8 ( x1 )
	add x11, x0, x10
	add x10, x0, x1
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 4 ( x8 )
	add x11, x0, x10
	add x10, x0, x1
	call $__addsf3
	add x1, x0, x10
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	lw x1, 0 ( x8 )
	add x11, x0, x10
	add x10, x0, x1
	call $__addsf3
	add x1, x0, x10
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	lui x8, 1065353216>>12 &0xfffff
	add x11, x0, x8
	call $__addsf3
	add x1, x0, x10
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__divsf3
	add x11, x0, x8
	call $__addsf3
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, $qr2 & 0xfff
	slli x28, x28, 20
	lui x1, $qr2 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $qr8 & 0xfff
	slli x28, x28, 20
	lui x3, $qr8 >> 12 & 0xfffff
	srli x28, x28, 20
	or x8, x3, x28
	ori x28, x0, 1075838975 & 0xfff
	slli x28, x28, 20
	lui x3, 2145386496>>12 &0xfffff
	lui x4, 1075838975 >> 12 & 0xfffff
	srli x28, x28, 20
	lw x5, 36 ( x2 )                //  4-byte Folded Reload
	nop
	and x3, x3, x5
	or x4, x4, x28
	sw x3, 8 ( x2 )                 //  4-byte Folded Spill
	sw x4, 4 ( x2 )                 //  4-byte Folded Spill
	bgtu x3, x4, LBB0_18
LBB0_17:                                //  %ponef.exit
	add x8, x0, x1
LBB0_18:                                //  %ponef.exit
	lw x11, 20 ( x8 )
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	sw x8, 28 ( x2 )                //  4-byte Folded Spill
	call $__mulsf3
	add x1, x0, x10
	lw x10, 16 ( x8 )
	add x11, x0, x1
	call $__addsf3
	add x1, x0, x10
	lw x8, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	add x1, x0, x10
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	nop
	lw x10, 12 ( x3 )
	add x11, x0, x1
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	add x1, x0, x10
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	nop
	lw x10, 8 ( x8 )
	add x11, x0, x1
	call $__addsf3
	add x1, x0, x10
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	add x1, x0, x10
	lw x10, 4 ( x8 )
	add x11, x0, x1
	call $__addsf3
	add x1, x0, x10
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	add x1, x0, x10
	lw x10, 0 ( x8 )
	add x11, x0, x1
	call $__addsf3
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	lui x1, $qs2 >> 12 & 0xfffff
	ori x28, x0, $qs2 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	lui x3, $qs8 >> 12 & 0xfffff
	ori x28, x0, $qs8 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x5, x3, x28
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	lw x4, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	bgtu x3, x4, LBB0_20
LBB0_19:                                //  %ponef.exit
	add x5, x0, x1
LBB0_20:                                //  %ponef.exit
	lw x11, 20 ( x5 )
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x5
	sw x8, 28 ( x2 )                //  4-byte Folded Spill
	call $__mulsf3
	add x1, x0, x10
	lw x10, 16 ( x8 )
	add x11, x0, x1
	call $__addsf3
	add x1, x0, x10
	lw x8, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	add x1, x0, x10
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	nop
	lw x10, 12 ( x3 )
	add x11, x0, x1
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	add x1, x0, x10
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	nop
	lw x10, 8 ( x8 )
	add x11, x0, x1
	call $__addsf3
	add x1, x0, x10
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	add x1, x0, x10
	lw x10, 4 ( x8 )
	add x11, x0, x1
	call $__addsf3
	add x1, x0, x10
	lw x8, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	add x1, x0, x10
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	nop
	lw x10, 0 ( x3 )
	add x11, x0, x1
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x11, 1065353216>>12 &0xfffff
	call $__addsf3
	add x1, x0, x10
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__divsf3
	lui x11, 1052770304>>12 &0xfffff
	call $__addsf3
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divsf3
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	add x8, x0, x10
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__subsf3
	lui x1, 1058041531 >> 12 & 0xfffff
	ori x28, x0, 1058041531 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__mulsf3
	add x8, x0, x10
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	nop
	call $__ieee754_sqrtf
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__divsf3
	add x8, x0, x10
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	or x10, x1, x28
	add x11, x0, x8
	call $__subsf3
	add x1, x0, x0
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x1, x3, LBB0_22
LBB0_21:                                //  %ponef.exit
	add x10, x0, x8
LBB0_22:                                //  %ponef.exit
	lw x8, 44 ( x2 )                //  4-byte Folded Reload
	lw x1, 52 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 56
$cfi5:
	.cfi_adjust_cfa_offset -56
$cfi6:
	.cfi_def_cfa 2, 0
	ret
LBB0_23:                                //  %if.end35
	ori x28, x0, 1900671690 & 0xfff
	slli x28, x28, 20
	lui x1, 1900671690 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $__addsf3
	lui x11, 1065353216>>12 &0xfffff
	call $__gtsf2
	ble x10, x0, LBB0_26
LBB0_24:                                //  %if.end35
	lui x1, 838860799 >> 12 & 0xfffff
	ori x28, x0, 838860799 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x3, x1, LBB0_26
LBB0_25:                                //  %if.then40
	lui x11, 1056964608>>12 &0xfffff
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	jalr x0, LBB0_27 ( x0 )
LBB0_26:                                //  %if.end43
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	nop
	add x11, x0, x10
	call $__mulsf3
	add x8, x0, x10
	ori x28, x0, 861231058 & 0xfff
	slli x28, x28, 20
	lui x1, 861231058 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__mulsf3
	ori x28, x0, -1215943114 & 0xfff
	slli x28, x28, 20
	lui x1, -1215943114 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 985165053 & 0xfff
	slli x28, x28, 20
	lui x1, 985165053 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, -1115684864 & 0xfff
	slli x28, x28, 20
	lui x1, -1115684864 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 760829566 & 0xfff
	slli x28, x28, 20
	lui x1, 760829566 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $__mulsf3
	ori x28, x0, 833446982 & 0xfff
	slli x28, x28, 20
	lui x1, 833446982 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 899547074 & 0xfff
	slli x28, x28, 20
	lui x1, 899547074 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 960690870 & 0xfff
	slli x28, x28, 20
	lui x1, 960690870 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 1016916057 & 0xfff
	slli x28, x28, 20
	lui x1, 1016916057 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x11, 1065353216>>12 &0xfffff
	call $__addsf3
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	call $__mulsf3
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	lui x11, 1056964608>>12 &0xfffff
	add x10, x0, x8
	call $__mulsf3
	add x8, x0, x10
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__addsf3
LBB0_27:                                //  %cleanup
	lw x8, 44 ( x2 )                //  4-byte Folded Reload
	lw x1, 52 ( x2 )
$cfi7:
	.cfi_same_value 1
	addi x2, x2, 56
$cfi8:
	.cfi_adjust_cfa_offset -56
$cfi9:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$__ieee754_j1f, ($func_end0)-($__ieee754_j1f)
	.cfi_endproc

	.globl	$__ieee754_y1f
	.type	$__ieee754_y1f,@function
$__ieee754_y1f:                         //  @__ieee754_y1f
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi10:
	.cfi_def_cfa 2, 0
$cfi11:
	.cfi_val_offset 2, 0
	addi x2, x2, -56
$cfi12:
	.cfi_adjust_cfa_offset 56
	sw x1, 52 ( x2 )
$cfi13:
	.cfi_offset 1, -4
	sw x8, 44 ( x2 )                //  4-byte Folded Spill
	add x3, x0, x10
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	and x8, x1, x3
	lui x1, 2139095040>>12 &0xfffff
	bgtu x1, x8, LBB1_3
LBB1_1:                                 //  %if.then
	add x10, x0, x3
	add x11, x0, x3
	add x8, x0, x3
	call $__mulsf3
	add x11, x0, x8
	call $__addsf3
	add x1, x0, x10
	lui x10, 1065353216>>12 &0xfffff
LBB1_2:                                 //  %cleanup
	add x11, x0, x1
	call $__divsf3
	jalr x0, LBB1_29 ( x0 )
LBB1_3:                                 //  %if.end
	ori x28, x0, -8388608 & 0xfff
	slli x28, x28, 20
	lui x1, -8388608 >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x1, x28
	beqz x8, LBB1_29
LBB1_4:                                 //  %if.end3
	bgez x3, LBB1_6
LBB1_5:
	lui x10, 2143289344>>12 &0xfffff
	jalr x0, LBB1_29 ( x0 )
LBB1_6:                                 //  %if.end6
	lui x1, 1073741824>>12 &0xfffff
	bgtu x1, x8, LBB1_26
LBB1_7:                                 //  %if.then8
	add x10, x0, x3
	sw x3, 40 ( x2 )                //  4-byte Folded Spill
	call $sinf
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	nop
	call $cosf
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x1, x28
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subsf3
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subsf3
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subsf3
	ori x28, x0, 2130706431 & 0xfff
	slli x28, x28, 20
	lui x1, 2130706431 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgeu x1, x8, LBB1_9
LBB1_8:
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_25 ( x0 )
LBB1_9:                                 //  %if.then13
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	add x11, x0, x0
	call $__gtsf2
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	nop
	add x11, x0, x10
	call $__addsf3
	call $cosf
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	ble x1, x0, LBB1_11
LBB1_10:                                //  %if.then18
	lw x11, 28 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divsf3
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_12 ( x0 )
LBB1_11:                                //  %if.else
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divsf3
LBB1_12:                                //  %if.end22
	lui x1, 1207959552>>12 &0xfffff
	bgtu x8, x1, LBB1_25
LBB1_13:                                //  %if.else28
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, $pr8 & 0xfff
	slli x28, x28, 20
	lui x1, $pr8 >> 12 & 0xfffff
	srli x28, x28, 20
	or x5, x1, x28
	ori x28, x0, $ps8 & 0xfff
	slli x28, x28, 20
	lui x1, $ps8 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x1, x28
	ori x28, x0, 1090519039 & 0xfff
	slli x28, x28, 20
	lui x1, 1090519039 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	bgtu x8, x1, LBB1_20
LBB1_14:                                //  %if.else.i
	ori x28, x0, $pr5 & 0xfff
	slli x28, x28, 20
	lui x1, $pr5 >> 12 & 0xfffff
	srli x28, x28, 20
	or x5, x1, x28
	ori x28, x0, $ps5 & 0xfff
	slli x28, x28, 20
	lui x1, $ps5 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x1, x28
	ori x28, x0, 1089936471 & 0xfff
	slli x28, x28, 20
	lui x1, 1089936471 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x8, x1, LBB1_20
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
	or x5, x1, x28
	ori x28, x0, 1077336935 & 0xfff
	slli x28, x28, 20
	lui x1, 1077336935 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x8, x1, LBB1_17
LBB1_16:                                //  %if.else3.i
	add x5, x0, x3
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
	bgtu x8, x1, LBB1_19
LBB1_18:                                //  %if.else3.i
	add x4, x0, x3
LBB1_19:                                //  %if.else3.i
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
LBB1_20:                                //  %ponef.exit
	sw x4, 32 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x10
	add x8, x0, x5
	call $__mulsf3
	add x1, x0, x10
	lui x10, 1065353216>>12 &0xfffff
	add x11, x0, x1
	call $__divsf3
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	lw x11, 20 ( x8 )
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	call $__mulsf3
	lw x1, 16 ( x8 )
	add x11, x0, x10
	add x10, x0, x1
	call $__addsf3
	add x1, x0, x10
	lw x8, 36 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 12 ( x1 )
	add x11, x0, x10
	add x10, x0, x1
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 8 ( x8 )
	add x11, x0, x10
	add x10, x0, x1
	call $__addsf3
	add x1, x0, x10
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	lw x1, 4 ( x8 )
	add x11, x0, x10
	add x10, x0, x1
	call $__addsf3
	add x1, x0, x10
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	lw x1, 0 ( x8 )
	add x11, x0, x10
	add x10, x0, x1
	call $__addsf3
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	nop
	lw x11, 16 ( x8 )
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	lw x1, 12 ( x8 )
	add x11, x0, x10
	add x10, x0, x1
	call $__addsf3
	add x1, x0, x10
	lw x8, 36 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 8 ( x1 )
	add x11, x0, x10
	add x10, x0, x1
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 4 ( x8 )
	add x11, x0, x10
	add x10, x0, x1
	call $__addsf3
	add x1, x0, x10
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	lw x1, 0 ( x8 )
	add x11, x0, x10
	add x10, x0, x1
	call $__addsf3
	add x1, x0, x10
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	lui x8, 1065353216>>12 &0xfffff
	add x11, x0, x8
	call $__addsf3
	add x1, x0, x10
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__divsf3
	add x11, x0, x8
	call $__addsf3
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, $qr2 & 0xfff
	slli x28, x28, 20
	lui x1, $qr2 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $qr8 & 0xfff
	slli x28, x28, 20
	lui x3, $qr8 >> 12 & 0xfffff
	srli x28, x28, 20
	or x8, x3, x28
	ori x28, x0, 1075838975 & 0xfff
	slli x28, x28, 20
	lui x3, 2145386496>>12 &0xfffff
	lui x4, 1075838975 >> 12 & 0xfffff
	srli x28, x28, 20
	lw x5, 40 ( x2 )                //  4-byte Folded Reload
	nop
	and x3, x3, x5
	or x4, x4, x28
	sw x3, 12 ( x2 )                //  4-byte Folded Spill
	sw x4, 8 ( x2 )                 //  4-byte Folded Spill
	bgtu x3, x4, LBB1_22
LBB1_21:                                //  %ponef.exit
	add x8, x0, x1
LBB1_22:                                //  %ponef.exit
	lw x11, 20 ( x8 )
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	sw x8, 32 ( x2 )                //  4-byte Folded Spill
	call $__mulsf3
	add x1, x0, x10
	lw x10, 16 ( x8 )
	add x11, x0, x1
	call $__addsf3
	add x1, x0, x10
	lw x8, 36 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	add x1, x0, x10
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	lw x10, 12 ( x3 )
	add x11, x0, x1
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	add x1, x0, x10
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	nop
	lw x10, 8 ( x8 )
	add x11, x0, x1
	call $__addsf3
	add x1, x0, x10
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	add x1, x0, x10
	lw x10, 4 ( x8 )
	add x11, x0, x1
	call $__addsf3
	add x1, x0, x10
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	add x1, x0, x10
	lw x10, 0 ( x8 )
	add x11, x0, x1
	call $__addsf3
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	lui x1, $qs2 >> 12 & 0xfffff
	ori x28, x0, $qs2 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	lui x3, $qs8 >> 12 & 0xfffff
	ori x28, x0, $qs8 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x5, x3, x28
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	lw x4, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	bgtu x3, x4, LBB1_24
LBB1_23:                                //  %ponef.exit
	add x5, x0, x1
LBB1_24:                                //  %ponef.exit
	lw x11, 20 ( x5 )
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x5
	sw x8, 32 ( x2 )                //  4-byte Folded Spill
	call $__mulsf3
	add x1, x0, x10
	lw x10, 16 ( x8 )
	add x11, x0, x1
	call $__addsf3
	add x1, x0, x10
	lw x8, 36 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	add x1, x0, x10
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	lw x10, 12 ( x3 )
	add x11, x0, x1
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	add x1, x0, x10
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	nop
	lw x10, 8 ( x8 )
	add x11, x0, x1
	call $__addsf3
	add x1, x0, x10
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	add x1, x0, x10
	lw x10, 4 ( x8 )
	add x11, x0, x1
	call $__addsf3
	add x1, x0, x10
	lw x8, 36 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	add x1, x0, x10
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	lw x10, 0 ( x3 )
	add x11, x0, x1
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x11, 1065353216>>12 &0xfffff
	call $__addsf3
	add x1, x0, x10
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__divsf3
	lui x11, 1052770304>>12 &0xfffff
	call $__addsf3
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divsf3
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	add x8, x0, x10
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__addsf3
LBB1_25:                                //  %if.end37
	ori x28, x0, 1058041531 & 0xfff
	slli x28, x28, 20
	lui x1, 1058041531 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__mulsf3
	add x8, x0, x10
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	nop
	call $__ieee754_sqrtf
	add x1, x0, x10
	add x10, x0, x8
	jalr x0, LBB1_2 ( x0 )
LBB1_26:                                //  %if.end38
	lui x1, 612368384>>12 &0xfffff
	bgtu x8, x1, LBB1_28
LBB1_27:                                //  %if.then40
	ori x28, x0, -1088226941 & 0xfff
	slli x28, x28, 20
	lui x1, -1088226941 >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x1, x28
	add x11, x0, x3
	call $__divsf3
	jalr x0, LBB1_29 ( x0 )
LBB1_28:                                //  %if.end42
	add x10, x0, x3
	add x11, x0, x3
	sw x3, 40 ( x2 )                //  4-byte Folded Spill
	call $__mulsf3
	ori x28, x0, -1278910461 & 0xfff
	slli x28, x28, 20
	lui x1, -1278910461 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x8, x0, x10
	call $__mulsf3
	ori x28, x0, 935680028 & 0xfff
	slli x28, x28, 20
	lui x1, 935680028 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, -1157976278 & 0xfff
	slli x28, x28, 20
	lui x1, -1157976278 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 1028562492 & 0xfff
	slli x28, x28, 20
	lui x1, 1028562492 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, -1102527695 & 0xfff
	slli x28, x28, 20
	lui x1, -1102527695 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 764576207 & 0xfff
	slli x28, x28, 20
	lui x1, 764576207 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $__mulsf3
	ori x28, x0, 836106475 & 0xfff
	slli x28, x28, 20
	lui x1, 836106475 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 901120724 & 0xfff
	slli x28, x28, 20
	lui x1, 901120724 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 961832011 & 0xfff
	slli x28, x28, 20
	lui x1, 961832011 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 1017325674 & 0xfff
	slli x28, x28, 20
	lui x1, 1017325674 >> 12 & 0xfffff
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
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__divsf3
	lw x8, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	call $__mulsf3
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	call $__ieee754_j1f
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	call $__ieee754_logf
	add x1, x0, x10
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	add x8, x0, x10
	lui x10, 1065353216>>12 &0xfffff
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__subsf3
	ori x28, x0, 1059256707 & 0xfff
	slli x28, x28, 20
	lui x1, 1059256707 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__mulsf3
	add x1, x0, x10
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__addsf3
LBB1_29:                                //  %cleanup
	lw x8, 44 ( x2 )                //  4-byte Folded Reload
	lw x1, 52 ( x2 )
$cfi14:
	.cfi_same_value 1
	addi x2, x2, 56
$cfi15:
	.cfi_adjust_cfa_offset -56
$cfi16:
	.cfi_def_cfa 2, 0
	ret
$func_end1:
	.size	$__ieee754_y1f, ($func_end1)-($__ieee754_y1f)
	.cfi_endproc

	.address_space	0	
	.type	$pr8,@object            //  @pr8
	.section	.rodata,"a",@progbits
	.p2align	2
$pr8:
	.long	0                       //  float 0
	.long	1039138816              //  float 0.1171875
	.long	1096013034              //  float 13.239481
	.long	1137575587              //  float 412.051849
	.long	1165110253              //  float 3874.74536
	.long	1173836758              //  float 7914.47949
	.size	$pr8, 24

	.address_space	0	
	.type	$ps8,@object            //  @ps8
	.p2align	2
$ps8:
	.long	1122265644              //  float 114.207367
	.long	1164193509              //  float 3650.93091
	.long	1192254517              //  float 36956.207
	.long	1203675494              //  float 97602.7968
	.long	1190176907              //  float 30804.2715
	.size	$ps8, 20

	.address_space	0	
	.type	$pr5,@object            //  @pr5
	.p2align	2
$pr5:
	.long	761803583               //  float 1.31990521E-11
	.long	1039138815              //  float 0.117187493
	.long	1088008227              //  float 6.80275106
	.long	1121492426              //  float 108.308182
	.long	1140943031              //  float 517.636169
	.long	1141124550              //  float 528.71521
	.size	$pr5, 24

	.address_space	0	
	.type	$ps5,@object            //  @ps5
	.p2align	2
$ps5:
	.long	1114447701              //  float 59.2805977
	.long	1148705201              //  float 991.401428
	.long	1168591395              //  float 5353.26709
	.long	1173693830              //  float 7844.69042
	.long	1153171840              //  float 1504.04688
	.size	$ps5, 20

	.address_space	0	
	.type	$pr3,@object            //  @pr3
	.p2align	2
$pr3:
	.long	827318541               //  float 3.02503911E-9
	.long	1039138731              //  float 0.117186867
	.long	1081849319              //  float 3.93297744
	.long	1108113989              //  float 35.1194038
	.long	1119231018              //  float 91.0550079
	.long	1111637116              //  float 48.5590668
	.size	$pr3, 24

	.address_space	0	
	.type	$ps3,@object            //  @ps3
	.p2align	2
$ps3:
	.long	1108027981              //  float 34.7913094
	.long	1135108504              //  float 336.762451
	.long	1149426659              //  float 1046.87146
	.long	1147057133              //  float 890.81134
	.long	1120899948              //  float 103.787933
	.size	$ps3, 20

	.address_space	0	
	.type	$pr2,@object            //  @pr2
	.p2align	2
$pr2:
	.long	870796968               //  float 1.07710832E-7
	.long	1039137302              //  float 0.11717622
	.long	1075287488              //  float 2.36851501
	.long	1094967740              //  float 12.2426109
	.long	1099795777              //  float 17.6939716
	.long	1084381773              //  float 5.07352304
	.size	$pr2, 24

	.address_space	0	
	.type	$ps2,@object            //  @ps2
	.p2align	2
$ps2:
	.long	1101757932              //  float 21.4364853
	.long	1123718297              //  float 125.29023
	.long	1130907335              //  float 232.276474
	.long	1122720727              //  float 117.679375
	.long	1090901392              //  float 8.36463928
	.size	$ps2, 20

	.address_space	0	
	.type	$qr8,@object            //  @qr8
	.p2align	2
$qr8:
	.long	0                       //  float 0
	.long	3184656384              //  float -0.102539063
	.long	3246533773              //  float -16.2717533
	.long	3292391043              //  float -759.601745
	.long	3325634362              //  float -11849.8066
	.long	3342677635              //  float -48438.5117
	.size	$qr8, 24

	.address_space	0	
	.type	$qs8,@object            //  @qs8
	.p2align	2
$qs8:
	.long	1126262071              //  float 161.39537
	.long	1173654295              //  float 7825.38623
	.long	1208138966              //  float 133875.344
	.long	1227862684              //  float 719657.75
	.long	1227013780              //  float 666601.25
	.long	3364866888              //  float -294490.25
	.size	$qs8, 24

	.address_space	0	
	.type	$qr2,@object            //  @qr2
	.p2align	2
$qr2:
	.long	3024062770              //  float -1.78381725E-7
	.long	3184653429              //  float -0.102517046
	.long	3224380451              //  float -2.75220561
	.long	3248312086              //  float -19.6636162
	.long	3257486623              //  float -42.3253136
	.long	3249207730              //  float -21.3719215
	.size	$qr2, 24

	.address_space	0	
	.type	$qs2,@object            //  @qs2
	.p2align	2
$qs2:
	.long	1106003028              //  float 29.5333633
	.long	1132264263              //  float 252.981552
	.long	1144873006              //  float 757.502808
	.long	1144576298              //  float 739.393188
	.long	1125905138              //  float 155.949005
	.long	3231626295              //  float -4.95949888
	.size	$qs2, 24


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
