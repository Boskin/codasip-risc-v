	.text
	.file	"ef_rem_pio2.bc"
	.globl	$__ieee754_rem_pio2f
	.type	$__ieee754_rem_pio2f,@function
$__ieee754_rem_pio2f:                   //  @__ieee754_rem_pio2f
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
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, 1061752792 & 0xfff
	slli x28, x28, 20
	lui x3, 1061752792 >> 12 & 0xfffff
	srli x28, x28, 20
	and x8, x1, x10
	or x1, x3, x28
	bgtu x8, x1, LBB0_2
LBB0_1:                                 //  %if.then
	sw x10, 0 ( x11 )
	sw x0, 4 ( x11 )
	add x4, x0, x0
	jalr x0, LBB0_31 ( x0 )
LBB0_2:                                 //  %if.end
	ori x28, x0, 1075235811 & 0xfff
	slli x28, x28, 20
	lui x1, 1075235811 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x11, 32 ( x2 )               //  4-byte Folded Spill
	bgtu x8, x1, LBB0_12
LBB0_3:                                 //  %if.then3
	ble x10, x0, LBB0_8
LBB0_4:                                 //  %if.then5
	ori x28, x0, -1077342336 & 0xfff
	slli x28, x28, 20
	lui x1, -1077342336 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x8, x0, x10
	call $__addsf3
	ori x28, x0, 2147483632 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483632 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, 1070141392 & 0xfff
	slli x28, x28, 20
	lui x3, 1070141392 >> 12 & 0xfffff
	srli x28, x28, 20
	and x1, x1, x8
	or x3, x3, x28
	beq x1, x3, LBB0_6
LBB0_5:                                 //  %if.then8
	ori x28, x0, -1221245885 & 0xfff
	slli x28, x28, 20
	lui x1, -1221245885 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	sw x11, 36 ( x2 )               //  4-byte Folded Spill
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	call $__addsf3
	add x1, x0, x10
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x8 )
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_7 ( x0 )
LBB0_6:                                 //  %if.else
	ori x28, x0, -1221245952 & 0xfff
	slli x28, x28, 20
	lui x1, -1221245952 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, -1366973688 & 0xfff
	slli x28, x28, 20
	lui x1, -1366973688 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	sw x11, 36 ( x2 )               //  4-byte Folded Spill
	call $__addsf3
	add x1, x0, x10
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x8 )
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
LBB0_7:                                 //  %if.end22
	add x11, x0, x1
	call $__subsf3
	add x11, x0, x10
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	nop
	call $__addsf3
	sw x10, 4 ( x8 )
	slti x4, x0, 1
	jalr x0, LBB0_31 ( x0 )
LBB0_8:                                 //  %if.else23
	ori x28, x0, 1070141312 & 0xfff
	slli x28, x28, 20
	lui x1, 1070141312 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x8, x0, x10
	call $__addsf3
	ori x28, x0, 2147483632 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483632 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, 1070141392 & 0xfff
	slli x28, x28, 20
	lui x3, 1070141392 >> 12 & 0xfffff
	srli x28, x28, 20
	and x1, x1, x8
	or x3, x3, x28
	beq x1, x3, LBB0_10
LBB0_9:                                 //  %if.then26
	ori x28, x0, 926237763 & 0xfff
	slli x28, x28, 20
	lui x1, 926237763 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	sw x11, 36 ( x2 )               //  4-byte Folded Spill
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	call $__addsf3
	add x1, x0, x10
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x8 )
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_11 ( x0 )
LBB0_10:                                //  %if.else33
	ori x28, x0, 926237696 & 0xfff
	slli x28, x28, 20
	lui x1, 926237696 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 780509960 & 0xfff
	slli x28, x28, 20
	lui x1, 780509960 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	sw x11, 36 ( x2 )               //  4-byte Folded Spill
	call $__addsf3
	add x1, x0, x10
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x8 )
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
LBB0_11:                                //  %if.end41
	add x11, x0, x1
	call $__subsf3
	add x11, x0, x10
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	nop
	call $__addsf3
	sw x10, 4 ( x8 )
	not x4, x0
	jalr x0, LBB0_31 ( x0 )
LBB0_12:                                //  %if.end42
	ori x28, x0, 1128861568 & 0xfff
	slli x28, x28, 20
	lui x1, 1128861568 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x8, x1, LBB0_24
LBB0_13:                                //  %if.then44
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	call $fabsf
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 1059256708 & 0xfff
	slli x28, x28, 20
	lui x1, 1059256708 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__mulsf3
	lui x11, 1056964608>>12 &0xfffff
	call $__addsf3
	call $__fixsfsi
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	call $__floatsisf
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, -1077342336 & 0xfff
	slli x28, x28, 20
	lui x1, -1077342336 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__mulsf3
	add x1, x0, x10
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__addsf3
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 926237763 & 0xfff
	slli x28, x28, 20
	lui x1, 926237763 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	lw x5, 24 ( x2 )                //  4-byte Folded Reload
	add x7, x0, x10
	lw x9, 28 ( x2 )                //  4-byte Folded Reload
	addi x1, x0, 31
	sw x7, 16 ( x2 )                //  4-byte Folded Spill
	bgt x5, x1, LBB0_16
LBB0_14:                                //  %land.lhs.true
	ori x28, x0, 2147483392 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483392 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $npio2_hw-4 & 0xfff
	slli x28, x28, 20
	lui x3, $npio2_hw-4 >> 12 & 0xfffff
	srli x28, x28, 20
	slli x4, x5, 2
	or x3, x3, x28
	add x3, x3, x4
	lw x3, 0 ( x3 )
	and x1, x1, x9
	beq x1, x3, LBB0_16
LBB0_15:                                //  %if.then57
	lw x8, 36 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	add x11, x0, x7
	call $__subsf3
	add x4, x0, x10
	add x10, x0, x8
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_21 ( x0 )
LBB0_16:                                //  %if.else60
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x7
	call $__subsf3
	add x4, x0, x10
	srli x1, x4, 23
	andi x1, x1, 255
	srli x5, x8, 23
	sub x1, x5, x1
	slti x1, x1, 9
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sw x4, 0 ( x3 )
	beqz x1, LBB0_18
LBB0_17:
	add x8, x0, x3
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_22 ( x0 )
LBB0_18:                                //  %if.then75
	ori x28, x0, 926237696 & 0xfff
	slli x28, x28, 20
	lui x1, 926237696 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	sw x5, 8 ( x2 )                 //  4-byte Folded Spill
	call $__mulsf3
	add x1, x0, x10
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__subsf3
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 780509960 & 0xfff
	slli x28, x28, 20
	lui x1, 780509960 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	call $__mulsf3
	sw x10, 4 ( x2 )                //  4-byte Folded Spill
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subsf3
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subsf3
	add x1, x0, x10
	lw x10, 4 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x1
	call $__subsf3
	add x1, x0, x10
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x1
	call $__subsf3
	add x4, x0, x10
	srli x1, x4, 23
	andi x1, x1, 255
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sub x1, x3, x1
	slti x1, x1, 26
	sw x4, 0 ( x8 )
	beqz x1, LBB0_20
LBB0_19:
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_22 ( x0 )
LBB0_20:                                //  %if.then96
	ori x28, x0, 780509952 & 0xfff
	slli x28, x28, 20
	lui x1, 780509952 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	call $__mulsf3
	add x1, x0, x10
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__subsf3
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 613232946 & 0xfff
	slli x28, x28, 20
	lui x1, 613232946 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	call $__mulsf3
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subsf3
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subsf3
	add x1, x0, x10
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__subsf3
	add x1, x0, x10
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x1
	call $__subsf3
	add x4, x0, x10
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
LBB0_21:                                //  %if.end107
	sw x4, 0 ( x8 )
LBB0_22:                                //  %if.end107
	sw x4, 36 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x4
	call $__subsf3
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subsf3
	sw x10, 4 ( x8 )
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	lw x4, 24 ( x2 )                //  4-byte Folded Reload
	bgez x1, LBB0_31
LBB0_23:                                //  %if.then114
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	nop
	xor x3, x1, x3
	xor x1, x1, x10
	sw x3, 0 ( x8 )
	sw x1, 4 ( x8 )
	jalr x0, LBB0_30 ( x0 )
LBB0_24:                                //  %if.end123
	lui x1, 2139095040>>12 &0xfffff
	bgtu x1, x8, LBB0_26
LBB0_25:                                //  %if.then126
	add x11, x0, x10
	call $__subsf3
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sw x10, 4 ( x1 )
	sw x10, 0 ( x1 )
	add x4, x0, x0
	jalr x0, LBB0_31 ( x0 )
LBB0_26:                                //  %if.end130
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	srli x1, x8, 23
	addi x1, x1, -134
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
	slli x1, x1, 23
	sub x8, x8, x1
	add x10, x0, x8
	call $__fixsfsi
	call $__floatsisf
	add x1, x0, x10
	sw x1, 40 ( x2 )
	add x10, x0, x8
	add x11, x0, x1
	call $__subsf3
	lui x11, 1132462080>>12 &0xfffff
	call $__mulsf3
	add x8, x0, x10
	call $__fixsfsi
	call $__floatsisf
	add x1, x0, x10
	addi x3, x2, 40
	sw x1, 4 ( x3 )
	add x10, x0, x8
	add x11, x0, x1
	call $__subsf3
	lui x11, 1132462080>>12 &0xfffff
	call $__mulsf3
	sw x10, 48 ( x2 )
	addi x13, x0, 4
	addi x8, x2, 48
LBB0_27:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	sw x13, 36 ( x2 )               //  4-byte Folded Spill
	lw x10, 0 ( x8 )
	add x11, x0, x0
	call $__eqsf2
	lw x13, 36 ( x2 )               //  4-byte Folded Reload
	addi x8, x8, -4
	addi x13, x13, -1
	beqz x10, LBB0_27
LBB0_28:                                //  %while.end
	ori x28, x0, $two_over_pi & 0xfff
	slli x28, x28, 20
	lui x1, $two_over_pi >> 12 & 0xfffff
	srli x28, x28, 20
	addi x10, x2, 40
	addi x14, x0, 2
	or x15, x1, x28
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	lw x12, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $__kernel_rem_pio2f
	add x4, x0, x10
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	bgez x1, LBB0_31
LBB0_29:                                //  %if.then155
	ori x28, x0, -2147483648 & 0xfff
	lw x11, 0 ( x8 )
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x1, x28
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	sw x4, 24 ( x2 )                //  4-byte Folded Spill
	call $__subsf3
	sw x10, 0 ( x8 )
	lw x11, 4 ( x8 )
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subsf3
	lw x4, 24 ( x2 )                //  4-byte Folded Reload
	sw x10, 4 ( x8 )
LBB0_30:                                //  %cleanup
	sub x4, x0, x4
LBB0_31:                                //  %cleanup
	add x10, x0, x4
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
	.size	$__ieee754_rem_pio2f, ($func_end0)-($__ieee754_rem_pio2f)
	.cfi_endproc

	.address_space	0	
	.type	$npio2_hw,@object       //  @npio2_hw
	.section	.rodata,"a",@progbits
	.p2align	2
$npio2_hw:
	.long	1070141184              //  0x3fc90f00
	.long	1078529792              //  0x40490f00
	.long	1083624192              //  0x4096cb00
	.long	1086918400              //  0x40c90f00
	.long	1090212608              //  0x40fb5300
	.long	1092012800              //  0x4116cb00
	.long	1093659904              //  0x412fed00
	.long	1095307008              //  0x41490f00
	.long	1096954112              //  0x41623100
	.long	1098601216              //  0x417b5300
	.long	1099577856              //  0x418a3a00
	.long	1100401408              //  0x4196cb00
	.long	1101224960              //  0x41a35c00
	.long	1102048512              //  0x41afed00
	.long	1102872064              //  0x41bc7e00
	.long	1103695616              //  0x41c90f00
	.long	1104519168              //  0x41d5a000
	.long	1105342720              //  0x41e23100
	.long	1106166272              //  0x41eec200
	.long	1106989824              //  0x41fb5300
	.long	1107554816              //  0x4203f200
	.long	1107966464              //  0x420a3a00
	.long	1108378368              //  0x42108300
	.long	1108790016              //  0x4216cb00
	.long	1109201920              //  0x421d1400
	.long	1109613568              //  0x42235c00
	.long	1110025472              //  0x4229a500
	.long	1110437120              //  0x422fed00
	.long	1110849024              //  0x42363600
	.long	1111260672              //  0x423c7e00
	.long	1111672576              //  0x4242c700
	.long	1112084224              //  0x42490f00
	.size	$npio2_hw, 128

	.address_space	0	
	.type	$two_over_pi,@object    //  @two_over_pi
	.p2align	2
$two_over_pi:
	.long	162                     //  0xa2
	.long	249                     //  0xf9
	.long	131                     //  0x83
	.long	110                     //  0x6e
	.long	78                      //  0x4e
	.long	68                      //  0x44
	.long	21                      //  0x15
	.long	41                      //  0x29
	.long	252                     //  0xfc
	.long	39                      //  0x27
	.long	87                      //  0x57
	.long	209                     //  0xd1
	.long	245                     //  0xf5
	.long	52                      //  0x34
	.long	221                     //  0xdd
	.long	192                     //  0xc0
	.long	219                     //  0xdb
	.long	98                      //  0x62
	.long	149                     //  0x95
	.long	153                     //  0x99
	.long	60                      //  0x3c
	.long	67                      //  0x43
	.long	144                     //  0x90
	.long	65                      //  0x41
	.long	254                     //  0xfe
	.long	81                      //  0x51
	.long	99                      //  0x63
	.long	171                     //  0xab
	.long	222                     //  0xde
	.long	187                     //  0xbb
	.long	197                     //  0xc5
	.long	97                      //  0x61
	.long	183                     //  0xb7
	.long	36                      //  0x24
	.long	110                     //  0x6e
	.long	58                      //  0x3a
	.long	66                      //  0x42
	.long	77                      //  0x4d
	.long	210                     //  0xd2
	.long	224                     //  0xe0
	.long	6                       //  0x6
	.long	73                      //  0x49
	.long	46                      //  0x2e
	.long	234                     //  0xea
	.long	9                       //  0x9
	.long	209                     //  0xd1
	.long	146                     //  0x92
	.long	28                      //  0x1c
	.long	254                     //  0xfe
	.long	29                      //  0x1d
	.long	235                     //  0xeb
	.long	28                      //  0x1c
	.long	177                     //  0xb1
	.long	41                      //  0x29
	.long	167                     //  0xa7
	.long	62                      //  0x3e
	.long	232                     //  0xe8
	.long	130                     //  0x82
	.long	53                      //  0x35
	.long	245                     //  0xf5
	.long	46                      //  0x2e
	.long	187                     //  0xbb
	.long	68                      //  0x44
	.long	132                     //  0x84
	.long	233                     //  0xe9
	.long	156                     //  0x9c
	.long	112                     //  0x70
	.long	38                      //  0x26
	.long	180                     //  0xb4
	.long	95                      //  0x5f
	.long	126                     //  0x7e
	.long	65                      //  0x41
	.long	57                      //  0x39
	.long	145                     //  0x91
	.long	214                     //  0xd6
	.long	57                      //  0x39
	.long	131                     //  0x83
	.long	83                      //  0x53
	.long	57                      //  0x39
	.long	244                     //  0xf4
	.long	156                     //  0x9c
	.long	132                     //  0x84
	.long	95                      //  0x5f
	.long	139                     //  0x8b
	.long	189                     //  0xbd
	.long	249                     //  0xf9
	.long	40                      //  0x28
	.long	59                      //  0x3b
	.long	31                      //  0x1f
	.long	248                     //  0xf8
	.long	151                     //  0x97
	.long	255                     //  0xff
	.long	222                     //  0xde
	.long	5                       //  0x5
	.long	152                     //  0x98
	.long	15                      //  0xf
	.long	239                     //  0xef
	.long	47                      //  0x2f
	.long	17                      //  0x11
	.long	139                     //  0x8b
	.long	90                      //  0x5a
	.long	10                      //  0xa
	.long	109                     //  0x6d
	.long	31                      //  0x1f
	.long	109                     //  0x6d
	.long	54                      //  0x36
	.long	126                     //  0x7e
	.long	207                     //  0xcf
	.long	39                      //  0x27
	.long	203                     //  0xcb
	.long	9                       //  0x9
	.long	183                     //  0xb7
	.long	79                      //  0x4f
	.long	70                      //  0x46
	.long	63                      //  0x3f
	.long	102                     //  0x66
	.long	158                     //  0x9e
	.long	95                      //  0x5f
	.long	234                     //  0xea
	.long	45                      //  0x2d
	.long	117                     //  0x75
	.long	39                      //  0x27
	.long	186                     //  0xba
	.long	199                     //  0xc7
	.long	235                     //  0xeb
	.long	229                     //  0xe5
	.long	241                     //  0xf1
	.long	123                     //  0x7b
	.long	61                      //  0x3d
	.long	7                       //  0x7
	.long	57                      //  0x39
	.long	247                     //  0xf7
	.long	138                     //  0x8a
	.long	82                      //  0x52
	.long	146                     //  0x92
	.long	234                     //  0xea
	.long	107                     //  0x6b
	.long	251                     //  0xfb
	.long	95                      //  0x5f
	.long	177                     //  0xb1
	.long	31                      //  0x1f
	.long	141                     //  0x8d
	.long	93                      //  0x5d
	.long	8                       //  0x8
	.long	86                      //  0x56
	.long	3                       //  0x3
	.long	48                      //  0x30
	.long	70                      //  0x46
	.long	252                     //  0xfc
	.long	123                     //  0x7b
	.long	107                     //  0x6b
	.long	171                     //  0xab
	.long	240                     //  0xf0
	.long	207                     //  0xcf
	.long	188                     //  0xbc
	.long	32                      //  0x20
	.long	154                     //  0x9a
	.long	244                     //  0xf4
	.long	54                      //  0x36
	.long	29                      //  0x1d
	.long	169                     //  0xa9
	.long	227                     //  0xe3
	.long	145                     //  0x91
	.long	97                      //  0x61
	.long	94                      //  0x5e
	.long	230                     //  0xe6
	.long	27                      //  0x1b
	.long	8                       //  0x8
	.long	101                     //  0x65
	.long	153                     //  0x99
	.long	133                     //  0x85
	.long	95                      //  0x5f
	.long	20                      //  0x14
	.long	160                     //  0xa0
	.long	104                     //  0x68
	.long	64                      //  0x40
	.long	141                     //  0x8d
	.long	255                     //  0xff
	.long	216                     //  0xd8
	.long	128                     //  0x80
	.long	77                      //  0x4d
	.long	115                     //  0x73
	.long	39                      //  0x27
	.long	49                      //  0x31
	.long	6                       //  0x6
	.long	6                       //  0x6
	.long	21                      //  0x15
	.long	86                      //  0x56
	.long	202                     //  0xca
	.long	115                     //  0x73
	.long	168                     //  0xa8
	.long	201                     //  0xc9
	.long	96                      //  0x60
	.long	226                     //  0xe2
	.long	123                     //  0x7b
	.long	192                     //  0xc0
	.long	140                     //  0x8c
	.long	107                     //  0x6b
	.size	$two_over_pi, 792


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
