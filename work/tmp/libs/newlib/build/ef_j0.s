	.text
	.file	"ef_j0.bc"
	.globl	$__ieee754_j0f
	.type	$__ieee754_j0f,@function
$__ieee754_j0f:                         //  @__ieee754_j0f
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -48
$cfi2:
	.cfi_adjust_cfa_offset 48
	sw x1, 44 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 36 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	and x3, x1, x10
	lui x1, 2139095040>>12 &0xfffff
	bgtu x1, x3, LBB0_3
LBB0_1:                                 //  %if.then
	add x11, x0, x10
	call $__mulsf3
	add x1, x0, x10
	lui x10, 1065353216>>12 &0xfffff
	add x11, x0, x1
	call $__divsf3
	jalr x0, LBB0_30 ( x0 )
LBB0_3:                                 //  %if.end
	sw x3, 32 ( x2 )                //  4-byte Folded Spill
	call $fabsf
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	add x8, x0, x10
	lui x1, 1073741824>>12 &0xfffff
	sw x8, 28 ( x2 )                //  4-byte Folded Spill
	bgtu x1, x3, LBB0_21
LBB0_4:                                 //  %if.then2
	add x10, x0, x8
	call $sinf
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	call $cosf
	add x8, x0, x10
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $__subsf3
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x8
	call $__addsf3
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 2130706431 & 0xfff
	slli x28, x28, 20
	lui x1, 2130706431 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x3, x1, LBB0_8
LBB0_5:                                 //  %if.then6
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	nop
	add x11, x0, x10
	call $__addsf3
	call $cosf
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	xor x8, x1, x10
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	add x11, x0, x0
	call $__ltsf2
	bgez x10, LBB0_7
LBB0_6:                                 //  %if.then12
	add x10, x0, x8
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divsf3
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	jalr x0, LBB0_8 ( x0 )
LBB0_7:                                 //  %if.else
	add x10, x0, x8
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divsf3
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
LBB0_8:                                 //  %if.else22
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	lui x1, 2147483647 >> 12 & 0xfffff
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
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
	or x4, x3, x28
	ori x28, x0, 1090519039 & 0xfff
	slli x28, x28, 20
	lui x3, 1090519039 >> 12 & 0xfffff
	srli x28, x28, 20
	and x5, x1, x10
	or x1, x3, x28
	bgtu x5, x1, LBB0_14
LBB0_9:                                 //  %if.else.i
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
	ori x28, x0, 1089936471 & 0xfff
	slli x28, x28, 20
	lui x1, 1089936471 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x5, x1, LBB0_14
LBB0_10:                                //  %if.else3.i
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
	ori x28, x0, 1077336935 & 0xfff
	slli x28, x28, 20
	lui x1, 1077336935 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x5, x1, LBB0_12
LBB0_11:                                //  %if.else3.i
	add x8, x0, x3
LBB0_12:                                //  %if.else3.i
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
	bgtu x5, x1, LBB0_14
LBB0_13:                                //  %if.else3.i
	add x4, x0, x3
LBB0_14:                                //  %pzerof.exit
	sw x4, 24 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x10
	sw x5, 8 ( x2 )                 //  4-byte Folded Spill
	call $__mulsf3
	add x1, x0, x10
	lui x10, 1065353216>>12 &0xfffff
	add x11, x0, x1
	call $__divsf3
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	lw x11, 20 ( x8 )
	nop
	call $__mulsf3
	lw x1, 16 ( x8 )
	add x11, x0, x10
	add x10, x0, x1
	call $__addsf3
	add x1, x0, x10
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
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
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	lw x1, 4 ( x8 )
	add x11, x0, x10
	add x10, x0, x1
	call $__addsf3
	add x1, x0, x10
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	lw x1, 0 ( x8 )
	add x11, x0, x10
	add x10, x0, x1
	call $__addsf3
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	lw x8, 24 ( x2 )                //  4-byte Folded Reload
	nop
	lw x11, 16 ( x8 )
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	lw x1, 12 ( x8 )
	add x11, x0, x10
	add x10, x0, x1
	call $__addsf3
	add x1, x0, x10
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 8 ( x1 )
	add x11, x0, x10
	add x10, x0, x1
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lw x8, 24 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 4 ( x8 )
	add x11, x0, x10
	add x10, x0, x1
	call $__addsf3
	add x1, x0, x10
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	lw x1, 0 ( x8 )
	add x11, x0, x10
	add x10, x0, x1
	call $__addsf3
	add x1, x0, x10
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	nop
	add x8, x0, x10
	add x11, x0, x1
	call $__mulsf3
	lui x11, 1065353216>>12 &0xfffff
	call $__addsf3
	add x1, x0, x10
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__divsf3
	lui x11, 1065353216>>12 &0xfffff
	call $__addsf3
	lw x5, 8 ( x2 )                 //  4-byte Folded Reload
	sw x10, 4 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, $qR8 & 0xfff
	slli x28, x28, 20
	lui x1, $qR8 >> 12 & 0xfffff
	srli x28, x28, 20
	or x7, x1, x28
	ori x28, x0, $qS8 & 0xfff
	slli x28, x28, 20
	lui x1, $qS8 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x1, x28
	ori x28, x0, 1090519039 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 1090519039 >> 12 & 0xfffff
	or x1, x1, x28
	bgtu x5, x1, LBB0_20
LBB0_15:                                //  %if.else.i144
	ori x28, x0, $qR5 & 0xfff
	slli x28, x28, 20
	lui x1, $qR5 >> 12 & 0xfffff
	srli x28, x28, 20
	or x7, x1, x28
	ori x28, x0, $qS5 & 0xfff
	slli x28, x28, 20
	lui x1, $qS5 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x1, x28
	ori x28, x0, 1089936471 & 0xfff
	slli x28, x28, 20
	lui x1, 1089936471 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x5, x1, LBB0_20
LBB0_16:                                //  %if.else3.i147
	ori x28, x0, $qR2 & 0xfff
	slli x28, x28, 20
	lui x1, $qR2 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x1, x28
	ori x28, x0, $qR3 & 0xfff
	slli x28, x28, 20
	lui x1, $qR3 >> 12 & 0xfffff
	srli x28, x28, 20
	or x7, x1, x28
	ori x28, x0, 1077336935 & 0xfff
	slli x28, x28, 20
	lui x1, 1077336935 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x5, x1, LBB0_18
LBB0_17:                                //  %if.else3.i147
	add x7, x0, x3
LBB0_18:                                //  %if.else3.i147
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
	bgtu x5, x1, LBB0_20
LBB0_19:                                //  %if.else3.i147
	add x4, x0, x3
LBB0_20:                                //  %qzerof.exit
	sw x4, 24 ( x2 )                //  4-byte Folded Spill
	lw x11, 20 ( x7 )
	add x10, x0, x8
	add x8, x0, x7
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	call $__mulsf3
	lw x1, 16 ( x8 )
	add x11, x0, x10
	add x10, x0, x1
	call $__addsf3
	add x1, x0, x10
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
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
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	lw x1, 4 ( x8 )
	add x11, x0, x10
	add x10, x0, x1
	call $__addsf3
	add x1, x0, x10
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	lw x1, 0 ( x8 )
	add x11, x0, x10
	add x10, x0, x1
	call $__addsf3
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	lw x8, 24 ( x2 )                //  4-byte Folded Reload
	nop
	lw x11, 20 ( x8 )
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	lw x1, 16 ( x8 )
	add x11, x0, x10
	add x10, x0, x1
	call $__addsf3
	add x1, x0, x10
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
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
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	lw x1, 4 ( x8 )
	add x11, x0, x10
	add x10, x0, x1
	call $__addsf3
	add x1, x0, x10
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 0 ( x1 )
	add x11, x0, x10
	add x10, x0, x1
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x11, 1065353216>>12 &0xfffff
	call $__addsf3
	add x1, x0, x10
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__divsf3
	ori x28, x0, -1107296256 & 0xfff
	slli x28, x28, 20
	lui x1, -1107296256 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	call $__divsf3
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	call $__ieee754_sqrtf
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	lw x11, 4 ( x2 )                //  4-byte Folded Reload
	nop
	call $__mulsf3
	add x8, x0, x10
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__subsf3
	ori x28, x0, 1058041531 & 0xfff
	slli x28, x28, 20
	lui x1, 1058041531 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__mulsf3
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divsf3
	jalr x0, LBB0_30 ( x0 )
LBB0_21:                                //  %if.end32
	ori x28, x0, 1900671690 & 0xfff
	slli x28, x28, 20
	lui x1, 1900671690 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	add x8, x0, x3
	call $__addsf3
	ori x28, x0, 956301311 & 0xfff
	slli x28, x28, 20
	lui x1, 956301311 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x8, x1, LBB0_26
LBB0_22:                                //  %if.end32
	lui x8, 1065353216>>12 &0xfffff
	add x11, x0, x8
	call $__gtsf2
	ble x10, x0, LBB0_26
LBB0_23:                                //  %if.then37
	lui x1, 838860800>>12 &0xfffff
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x3, LBB0_31
LBB0_24:                                //  %if.else40
	ori x28, x0, -1098907648 & 0xfff
	slli x28, x28, 20
	lui x1, -1098907648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	call $__mulsf3
LBB0_25:                                //  %cleanup
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x11, 1065353216>>12 &0xfffff
	jalr x0, LBB0_29 ( x0 )
LBB0_26:                                //  %if.end45
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	nop
	add x11, x0, x10
	call $__mulsf3
	add x8, x0, x10
	ori x28, x0, -1315000516 & 0xfff
	slli x28, x28, 20
	lui x1, -1315000516 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__mulsf3
	ori x28, x0, 905285256 & 0xfff
	slli x28, x28, 20
	lui x1, 905285256 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, -1186515666 & 0xfff
	slli x28, x28, 20
	lui x1, -1186515666 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x11, 1015021568>>12 &0xfffff
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 815810024 & 0xfff
	slli x28, x28, 20
	lui x1, 815810024 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $__mulsf3
	ori x28, x0, 889838246 & 0xfff
	slli x28, x28, 20
	lui x1, 889838246 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 955594391 & 0xfff
	slli x28, x28, 20
	lui x1, 955594391 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 1015015236 & 0xfff
	slli x28, x28, 20
	lui x1, 1015015236 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x11, 1065353216>>12 &0xfffff
	call $__addsf3
	add x4, x0, x10
	ori x28, x0, 1065353215 & 0xfff
	slli x28, x28, 20
	lui x1, 1065353215 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x3, x1, LBB0_28
LBB0_27:                                //  %if.then63
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x4
	call $__divsf3
	ori x28, x0, -1098907648 & 0xfff
	slli x28, x28, 20
	lui x1, -1098907648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	jalr x0, LBB0_25 ( x0 )
LBB0_28:                                //  %if.else68
	lui x11, 1056964608>>12 &0xfffff
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	sw x4, 32 ( x2 )                //  4-byte Folded Spill
	call $__mulsf3
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	lui x11, 1065353216>>12 &0xfffff
	call $__addsf3
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	lui x10, 1065353216>>12 &0xfffff
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subsf3
	add x1, x0, x10
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	add x1, x0, x10
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
LBB0_29:                                //  %cleanup
	call $__addsf3
LBB0_30:                                //  %cleanup
	add x8, x0, x10
LBB0_31:                                //  %cleanup
	add x10, x0, x8
	lw x8, 36 ( x2 )                //  4-byte Folded Reload
	lw x1, 44 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 48
$cfi5:
	.cfi_adjust_cfa_offset -48
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$__ieee754_j0f, ($func_end0)-($__ieee754_j0f)
	.cfi_endproc

	.globl	$__ieee754_y0f
	.type	$__ieee754_y0f,@function
$__ieee754_y0f:                         //  @__ieee754_y0f
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	addi x2, x2, -56
$cfi9:
	.cfi_adjust_cfa_offset 56
	sw x1, 52 ( x2 )
$cfi10:
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
	jalr x0, LBB1_34 ( x0 )
LBB1_3:                                 //  %if.end
	ori x28, x0, -8388608 & 0xfff
	slli x28, x28, 20
	lui x1, -8388608 >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x1, x28
	beqz x8, LBB1_34
LBB1_4:                                 //  %if.end3
	bgez x3, LBB1_6
LBB1_5:
	lui x10, 2143289344>>12 &0xfffff
	jalr x0, LBB1_34 ( x0 )
LBB1_6:                                 //  %if.end6
	lui x1, 1073741824>>12 &0xfffff
	bgtu x1, x8, LBB1_30
LBB1_7:                                 //  %if.then8
	add x10, x0, x3
	sw x3, 36 ( x2 )                //  4-byte Folded Spill
	call $sinf
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	nop
	call $cosf
	add x1, x0, x10
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__subsf3
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__addsf3
	lw x7, 36 ( x2 )                //  4-byte Folded Reload
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, $pR8 & 0xfff
	slli x28, x28, 20
	lui x1, $pR8 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x1, x28
	ori x28, x0, $pS8 & 0xfff
	slli x28, x28, 20
	lui x1, $pS8 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x1, x28
	ori x28, x0, 2130706431 & 0xfff
	slli x28, x28, 20
	lui x1, 2130706431 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	slti x5, x0, 1
	sw x8, 16 ( x2 )                //  4-byte Folded Spill
	bgeu x1, x8, LBB1_9
LBB1_8:
	sw x4, 28 ( x2 )                //  4-byte Folded Spill
	sw x3, 32 ( x2 )                //  4-byte Folded Spill
	sw x5, 8 ( x2 )                 //  4-byte Folded Spill
	add x10, x0, x7
	jalr x0, LBB1_23 ( x0 )
LBB1_9:                                 //  %if.then12
	add x10, x0, x7
	add x11, x0, x7
	call $__addsf3
	call $cosf
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	xor x1, x1, x10
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	add x11, x0, x0
	call $__ltsf2
	bgez x10, LBB1_11
LBB1_10:                                //  %if.then18
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divsf3
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	jalr x0, LBB1_12 ( x0 )
LBB1_11:                                //  %if.else
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divsf3
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
LBB1_12:                                //  %if.else28
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	lui x1, $pR8 >> 12 & 0xfffff
	lui x3, $pS8 >> 12 & 0xfffff
	ori x28, x0, $pR8 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x1, x28
	ori x28, x0, $pS8 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	ori x28, x0, 1090519039 & 0xfff
	slli x28, x28, 20
	lui x1, 1090519039 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgeu x1, x8, LBB1_14
LBB1_13:
	sw x4, 28 ( x2 )                //  4-byte Folded Spill
	sw x3, 32 ( x2 )                //  4-byte Folded Spill
	slti x1, x0, 1
	jalr x0, LBB1_22 ( x0 )
LBB1_14:                                //  %if.else.i
	ori x28, x0, $pR5 & 0xfff
	slli x28, x28, 20
	lui x1, $pR5 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x1, x28
	ori x28, x0, $pS5 & 0xfff
	slli x28, x28, 20
	lui x1, $pS5 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x1, x28
	ori x28, x0, 1089936471 & 0xfff
	slli x28, x28, 20
	lui x1, 1089936471 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgeu x1, x8, LBB1_16
LBB1_15:
	sw x4, 28 ( x2 )                //  4-byte Folded Spill
	sw x3, 32 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_21 ( x0 )
LBB1_16:                                //  %if.else3.i
	ori x28, x0, $pR2 & 0xfff
	slli x28, x28, 20
	lui x1, $pR2 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x1, x28
	ori x28, x0, $pR3 & 0xfff
	slli x28, x28, 20
	lui x1, $pR3 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x1, x28
	ori x28, x0, 1077336935 & 0xfff
	slli x28, x28, 20
	lui x1, 1077336935 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x8, x1, LBB1_18
LBB1_17:                                //  %if.else3.i
	add x4, x0, x3
LBB1_18:                                //  %if.else3.i
	sw x4, 28 ( x2 )                //  4-byte Folded Spill
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
	bgtu x8, x1, LBB1_20
LBB1_19:                                //  %if.else3.i
	add x4, x0, x3
LBB1_20:                                //  %if.else3.i
	sw x4, 32 ( x2 )                //  4-byte Folded Spill
LBB1_21:                                //  %pzerof.exit
	add x1, x0, x0
LBB1_22:                                //  %pzerof.exit
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
LBB1_23:                                //  %pzerof.exit
	add x11, x0, x10
	call $__mulsf3
	add x1, x0, x10
	lui x10, 1065353216>>12 &0xfffff
	add x11, x0, x1
	call $__divsf3
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	nop
	lw x11, 20 ( x8 )
	nop
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
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 12 ( x1 )
	add x11, x0, x10
	add x10, x0, x1
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
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
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	lw x11, 16 ( x1 )
	lw x8, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	call $__mulsf3
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 12 ( x1 )
	add x11, x0, x10
	add x10, x0, x1
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
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
	lw x8, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 0 ( x1 )
	add x11, x0, x10
	add x10, x0, x1
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x8, 1065353216>>12 &0xfffff
	add x11, x0, x8
	call $__addsf3
	add x1, x0, x10
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__divsf3
	add x11, x0, x8
	call $__addsf3
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
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
	lw x5, 16 ( x2 )                //  4-byte Folded Reload
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB1_29
LBB1_24:                                //  %if.else.i134
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
	ori x28, x0, 1089936471 & 0xfff
	slli x28, x28, 20
	lui x1, 1089936471 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x5, x1, LBB1_29
LBB1_25:                                //  %if.else3.i137
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
	ori x28, x0, 1077336935 & 0xfff
	slli x28, x28, 20
	lui x1, 1077336935 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x5, x1, LBB1_27
LBB1_26:                                //  %if.else3.i137
	add x8, x0, x3
LBB1_27:                                //  %if.else3.i137
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
	bgtu x5, x1, LBB1_29
LBB1_28:                                //  %if.else3.i137
	add x4, x0, x3
LBB1_29:                                //  %qzerof.exit
	sw x4, 32 ( x2 )                //  4-byte Folded Spill
	lw x11, 20 ( x8 )
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	sw x8, 28 ( x2 )                //  4-byte Folded Spill
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
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 12 ( x1 )
	add x11, x0, x10
	add x10, x0, x1
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
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
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	nop
	lw x11, 20 ( x8 )
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	nop
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
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 12 ( x1 )
	add x11, x0, x10
	add x10, x0, x1
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
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
	lw x8, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 0 ( x1 )
	add x11, x0, x10
	add x10, x0, x1
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x11, 1065353216>>12 &0xfffff
	call $__addsf3
	add x1, x0, x10
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__divsf3
	ori x28, x0, -1107296256 & 0xfff
	slli x28, x28, 20
	lui x1, -1107296256 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divsf3
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	add x8, x0, x10
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__addsf3
	ori x28, x0, 1058041531 & 0xfff
	slli x28, x28, 20
	lui x1, 1058041531 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__mulsf3
	add x8, x0, x10
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	nop
	call $__ieee754_sqrtf
	add x1, x0, x10
	add x10, x0, x8
	jalr x0, LBB1_2 ( x0 )
LBB1_30:                                //  %if.end38
	lui x1, 838860800>>12 &0xfffff
	bgtu x8, x1, LBB1_32
LBB1_31:                                //  %if.then40
	add x10, x0, x3
	call $__ieee754_logf
	ori x28, x0, 1059256707 & 0xfff
	slli x28, x28, 20
	lui x1, 1059256707 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__mulsf3
	ori x28, x0, -1114167627 & 0xfff
	slli x28, x28, 20
	lui x1, -1114167627 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	jalr x0, LBB1_33 ( x0 )
LBB1_32:                                //  %if.end44
	add x10, x0, x3
	add x11, x0, x3
	sw x3, 36 ( x2 )                //  4-byte Folded Spill
	call $__mulsf3
	add x8, x0, x10
	ori x28, x0, -1372642837 & 0xfff
	slli x28, x28, 20
	lui x1, -1372642837 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__mulsf3
	ori x28, x0, 849871546 & 0xfff
	slli x28, x28, 20
	lui x1, 849871546 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, -1233128132 & 0xfff
	slli x28, x28, 20
	lui x1, -1233128132 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 968239721 & 0xfff
	slli x28, x28, 20
	lui x1, 968239721 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, -1134401722 & 0xfff
	slli x28, x28, 20
	lui x1, -1134401722 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 1043654669 & 0xfff
	slli x28, x28, 20
	lui x1, 1043654669 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, -1114167627 & 0xfff
	slli x28, x28, 20
	lui x1, -1114167627 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 804421826 & 0xfff
	slli x28, x28, 20
	lui x1, 804421826 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $__mulsf3
	ori x28, x0, 881533292 & 0xfff
	slli x28, x28, 20
	lui x1, 881533292 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 949970400 & 0xfff
	slli x28, x28, 20
	lui x1, 949970400 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 1011913605 & 0xfff
	slli x28, x28, 20
	lui x1, 1011913605 >> 12 & 0xfffff
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
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__divsf3
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	lw x8, 36 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	call $__ieee754_j0f
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	call $__ieee754_logf
	add x1, x0, x10
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 1059256707 & 0xfff
	slli x28, x28, 20
	lui x1, 1059256707 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__mulsf3
	add x1, x0, x10
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
LBB1_33:                                //  %cleanup
	call $__addsf3
LBB1_34:                                //  %cleanup
	lw x8, 44 ( x2 )                //  4-byte Folded Reload
	lw x1, 52 ( x2 )
$cfi11:
	.cfi_same_value 1
	addi x2, x2, 56
$cfi12:
	.cfi_adjust_cfa_offset -56
$cfi13:
	.cfi_def_cfa 2, 0
	ret
$func_end1:
	.size	$__ieee754_y0f, ($func_end1)-($__ieee754_y0f)
	.cfi_endproc

	.address_space	0	
	.type	$pR8,@object            //  @pR8
	.section	.rodata,"a",@progbits
	.p2align	2
$pR8:
	.long	0                       //  float 0
	.long	3180331008              //  float -0.0703125
	.long	3238088326              //  float -8.08167076
	.long	3279980564              //  float -257.06311
	.long	3306902390              //  float -2485.21631
	.long	3315869786              //  float -5253.04395
	.size	$pR8, 24

	.address_space	0	
	.type	$pS8,@object            //  @pS8
	.p2align	2
$pS8:
	.long	1122570648              //  float 116.534363
	.long	1164942315              //  float 3833.74487
	.long	1193186779              //  float 40597.8555
	.long	1206126716              //  float 116752.969
	.long	1194986426              //  float 47627.7266
	.size	$pS8, 20

	.address_space	0	
	.type	$pR5,@object            //  @pR5
	.p2align	2
$pR5:
	.long	2907227530              //  float -1.14125463E-11
	.long	3180331007              //  float -0.0703124925
	.long	3229948808              //  float -4.15961075
	.long	3263650171              //  float -67.6747665
	.long	3282410907              //  float -331.231293
	.long	3282909049              //  float -346.43338
	.size	$pR5, 24

	.address_space	0	
	.type	$pS5,@object            //  @pS5
	.p2align	2
$pS5:
	.long	1114833928              //  float 60.7539368
	.long	1149462547              //  float 1051.25232
	.long	1169872836              //  float 5978.9707
	.long	1175872968              //  float 9625.44531
	.long	1159094510              //  float 2406.05811
	.size	$pS5, 20

	.address_space	0	
	.type	$pR3,@object            //  @pR3
	.p2align	2
$pR3:
	.long	2972649499              //  float -2.54704591E-9
	.long	3180330936              //  float -0.0703119636
	.long	3222941077              //  float -2.40903211
	.long	3249519186              //  float -21.9659767
	.long	3261616402              //  float -58.0791702
	.long	3254490469              //  float -31.4479465
	.size	$pR3, 24

	.address_space	0	
	.type	$pS3,@object            //  @pS3
	.p2align	2
$pS3:
	.long	1108307092              //  float 35.8560333
	.long	1135919562              //  float 361.513977
	.long	1150628723              //  float 1193.60779
	.long	1150091238              //  float 1127.99683
	.long	1127060664              //  float 173.580933
	.size	$pS3, 20

	.address_space	0	
	.type	$pR2,@object            //  @pR2
	.p2align	2
$pR2:
	.long	3015612599              //  float -8.87534312E-8
	.long	3180329746              //  float -0.0703030974
	.long	3216617932              //  float -1.45073843
	.long	3237238687              //  float -7.63569593
	.long	3241350966              //  float -11.1931667
	.long	3226399757              //  float -3.23364568
	.size	$pR2, 24

	.address_space	0	
	.type	$pS2,@object            //  @pS2
	.p2align	2
$pS2:
	.long	1102168877              //  float 22.2203007
	.long	1124611312              //  float 136.206787
	.long	1132936242              //  float 270.470276
	.long	1125769242              //  float 153.875397
	.long	1097500058              //  float 14.6576176
	.size	$pS2, 20

	.address_space	0	
	.type	$qR8,@object            //  @qR8
	.p2align	2
$qR8:
	.long	0                       //  float 0
	.long	1033240576              //  float 0.0732421875
	.long	1094470291              //  float 11.7682066
	.long	1141599001              //  float 557.673401
	.long	1175088330              //  float 8859.19726
	.long	1192269472              //  float 37014.625
	.size	$qR8, 24

	.address_space	0	
	.type	$qS8,@object            //  @qS8
	.p2align	2
$qS8:
	.long	1126418090              //  float 163.776031
	.long	1174213314              //  float 8098.34472
	.long	1208693395              //  float 142538.297
	.long	1229201108              //  float 803309.25
	.long	1229796185              //  float 840501.563
	.long	3366447977              //  float -343899.281
	.size	$qS8, 24

	.address_space	0	
	.type	$qR5,@object            //  @qR5
	.p2align	2
$qR5:
	.long	765586553               //  float 1.84085958E-11
	.long	1033240575              //  float 0.07324218
	.long	1085980038              //  float 5.83563519
	.long	1124539536              //  float 135.111572
	.long	1149265869              //  float 1027.24377
	.long	1157152587              //  float 1989.97791
	.size	$qR5, 24

	.address_space	0	
	.type	$qS5,@object            //  @qS5
	.p2align	2
$qS5:
	.long	1118145952              //  float 82.7766113
	.long	1157750023              //  float 2077.81421
	.long	1184054932              //  float 18847.2891
	.long	1197322013              //  float 56751.1133
	.long	1192003777              //  float 35976.7539
	.long	3316077246              //  float -5354.34277
	.size	$qS5, 24

	.address_space	0	
	.type	$qR3,@object            //  @qR3
	.p2align	2
$qR3:
	.long	831940635               //  float 4.37740999E-9
	.long	1033240432              //  float 0.0732411146
	.long	1079379939              //  float 3.34423137
	.long	1110080709              //  float 42.6218452
	.long	1126878943              //  float 170.80809
	.long	1126611940              //  float 166.733948
	.size	$qR3, 24

	.address_space	0	
	.type	$qS3,@object            //  @qS3
	.p2align	2
$qS3:
	.long	1111689494              //  float 48.758873
	.long	1144089628              //  float 709.689208
	.long	1164411487              //  float 3704.14819
	.long	1170858855              //  float 6460.42529
	.long	1159546199              //  float 2516.33374
	.long	3272949593              //  float -149.247452
	.size	$qS3, 24

	.address_space	0	
	.type	$qR2,@object            //  @qR2
	.p2align	2
$qR2:
	.long	874613211               //  float 1.5044445E-7
	.long	1033238058              //  float 0.0732234269
	.long	1073726655              //  float 1.99819171
	.long	1097330173              //  float 14.4956026
	.long	1107121265              //  float 31.6662312
	.long	1099040140              //  float 16.2527084
	.size	$qR2, 24

	.address_space	0	
	.type	$qS2,@object            //  @qS2
	.p2align	2
$qS2:
	.long	1106439352              //  float 30.3655853
	.long	1132899471              //  float 269.348114
	.long	1146303017              //  float 844.783752
	.long	1146928101              //  float 882.935852
	.long	1129622168              //  float 212.666382
	.long	3232363352              //  float -5.31095505
	.size	$qS2, 24


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
