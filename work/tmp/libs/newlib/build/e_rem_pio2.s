	.text
	.file	"e_rem_pio2.bc"
	.globl	$__ieee754_rem_pio2
	.type	$__ieee754_rem_pio2,@function
$__ieee754_rem_pio2:                    //  @__ieee754_rem_pio2
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -96
$cfi2:
	.cfi_adjust_cfa_offset 96
	sw x1, 92 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 84 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x10
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, 1072243195 & 0xfff
	slli x28, x28, 20
	lui x3, 1072243195 >> 12 & 0xfffff
	srli x28, x28, 20
	and x4, x1, x11
	or x1, x3, x28
	bgtu x4, x1, LBB0_2
LBB0_1:                                 //  %if.then
	sw x8, 0 ( x12 )
	sw x0, 12 ( x12 )
	sw x11, 4 ( x12 )
	sw x0, 8 ( x12 )
	add x4, x0, x0
	jalr x0, LBB0_31 ( x0 )
LBB0_2:                                 //  %if.end
	ori x28, x0, 1073928571 & 0xfff
	slli x28, x28, 20
	lui x1, 1073928571 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x12, 48 ( x2 )               //  4-byte Folded Spill
	bgtu x4, x1, LBB0_12
LBB0_3:                                 //  %if.then3
	sw x4, 52 ( x2 )                //  4-byte Folded Spill
	ble x11, x0, LBB0_8
LBB0_4:                                 //  %if.then5
	ori x28, x0, -1074191877 & 0xfff
	slli x28, x28, 20
	lui x1, -1074191877 >> 12 & 0xfffff
	srli x28, x28, 20
	lui x12, 1413480448>>12 &0xfffff
	or x13, x1, x28
	add x10, x0, x8
	call $__adddf3
	ori x28, x0, 1073291771 & 0xfff
	slli x28, x28, 20
	lui x1, 1073291771 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	nop
	beq x3, x1, LBB0_6
LBB0_5:                                 //  %if.then7
	ori x28, x0, 442655537 & 0xfff
	slli x28, x28, 20
	lui x1, 442655537 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	sw x12, 52 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, -1110395807 & 0xfff
	slli x28, x28, 20
	lui x1, -1110395807 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	sw x13, 44 ( x2 )               //  4-byte Folded Spill
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	sw x11, 36 ( x2 )               //  4-byte Folded Spill
	call $__adddf3
	add x1, x0, x11
	add x3, x0, x10
	lw x8, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 4 ( x8 )
	sw x3, 0 ( x8 )
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x3
	add x13, x0, x1
	call $__subdf3
	add x12, x0, x10
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x11
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_7 ( x0 )
LBB0_6:                                 //  %if.else
	ori x28, x0, -1110395807 & 0xfff
	slli x28, x28, 20
	lui x1, -1110395807 >> 12 & 0xfffff
	srli x28, x28, 20
	lui x12, 442499072>>12 &0xfffff
	or x13, x1, x28
	call $__adddf3
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	sw x11, 36 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 771977331 & 0xfff
	slli x28, x28, 20
	lui x1, 771977331 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	sw x12, 52 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, -1146938998 & 0xfff
	slli x28, x28, 20
	lui x1, -1146938998 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	sw x13, 44 ( x2 )               //  4-byte Folded Spill
	call $__adddf3
	add x1, x0, x11
	add x3, x0, x10
	lw x8, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 4 ( x8 )
	sw x3, 0 ( x8 )
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x3
	add x13, x0, x1
	call $__subdf3
	add x13, x0, x11
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x10
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	nop
LBB0_7:                                 //  %if.end21
	call $__adddf3
	sw x11, 12 ( x8 )
	sw x10, 8 ( x8 )
	slti x4, x0, 1
	jalr x0, LBB0_31 ( x0 )
LBB0_8:                                 //  %if.else22
	ori x28, x0, 1073291771 & 0xfff
	slli x28, x28, 20
	lui x1, 1073291771 >> 12 & 0xfffff
	srli x28, x28, 20
	lui x12, 1413480448>>12 &0xfffff
	or x13, x1, x28
	add x10, x0, x8
	add x8, x0, x13
	call $__adddf3
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	nop
	beq x1, x8, LBB0_10
LBB0_9:                                 //  %if.then24
	ori x28, x0, 442655537 & 0xfff
	slli x28, x28, 20
	lui x1, 442655537 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1037087841 & 0xfff
	slli x28, x28, 20
	lui x1, 1037087841 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	sw x11, 40 ( x2 )               //  4-byte Folded Spill
	sw x12, 52 ( x2 )               //  4-byte Folded Spill
	sw x13, 44 ( x2 )               //  4-byte Folded Spill
	call $__adddf3
	add x1, x0, x11
	add x3, x0, x10
	lw x8, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 4 ( x8 )
	sw x3, 0 ( x8 )
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x3
	add x13, x0, x1
	call $__subdf3
	add x3, x0, x10
	add x1, x0, x11
	jalr x0, LBB0_11 ( x0 )
LBB0_10:                                //  %if.else31
	ori x28, x0, 1037087841 & 0xfff
	slli x28, x28, 20
	lui x1, 1037087841 >> 12 & 0xfffff
	srli x28, x28, 20
	lui x12, 442499072>>12 &0xfffff
	or x13, x1, x28
	call $__adddf3
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	sw x11, 40 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 771977331 & 0xfff
	slli x28, x28, 20
	lui x1, 771977331 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1000544650 & 0xfff
	slli x28, x28, 20
	lui x1, 1000544650 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	sw x12, 52 ( x2 )               //  4-byte Folded Spill
	sw x13, 44 ( x2 )               //  4-byte Folded Spill
	call $__adddf3
	add x1, x0, x11
	add x3, x0, x10
	lw x8, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 4 ( x8 )
	sw x3, 0 ( x8 )
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x3
	add x13, x0, x1
	call $__subdf3
	add x1, x0, x11
	add x3, x0, x10
LBB0_11:                                //  %if.end39
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x3
	add x13, x0, x1
	call $__adddf3
	sw x11, 12 ( x8 )
	sw x10, 8 ( x8 )
	not x4, x0
	jalr x0, LBB0_31 ( x0 )
LBB0_12:                                //  %if.end40
	ori x28, x0, 1094263291 & 0xfff
	slli x28, x28, 20
	lui x1, 1094263291 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x4, x1, LBB0_24
LBB0_13:                                //  %if.then42
	sw x4, 52 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	sw x11, 32 ( x2 )               //  4-byte Folded Spill
	call $fabs
	sw x10, 44 ( x2 )               //  4-byte Folded Spill
	sw x11, 28 ( x2 )               //  4-byte Folded Spill
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
	add x12, x0, x0
	lui x13, 1071644672>>12 &0xfffff
	call $__adddf3
	call $__fixdfsi
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	call $__floatsidf
	add x8, x0, x10
	sw x11, 36 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, -1074191877 & 0xfff
	slli x28, x28, 20
	lui x1, -1074191877 >> 12 & 0xfffff
	srli x28, x28, 20
	lui x12, 1413480448>>12 &0xfffff
	or x13, x1, x28
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	lw x11, 28 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	sw x10, 44 ( x2 )               //  4-byte Folded Spill
	sw x11, 16 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 442655537 & 0xfff
	slli x28, x28, 20
	lui x1, 442655537 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1037087841 & 0xfff
	slli x28, x28, 20
	lui x1, 1037087841 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	lw x8, 40 ( x2 )                //  4-byte Folded Reload
	add x4, x0, x10
	add x5, x0, x11
	addi x1, x0, 31
	sw x4, 28 ( x2 )                //  4-byte Folded Spill
	sw x5, 24 ( x2 )                //  4-byte Folded Spill
	bgt x8, x1, LBB0_16
LBB0_14:                                //  %land.lhs.true
	ori x28, x0, $npio2_hw-4 & 0xfff
	slli x28, x28, 20
	lui x1, $npio2_hw-4 >> 12 & 0xfffff
	srli x28, x28, 20
	slli x3, x8, 2
	or x1, x1, x28
	add x1, x1, x3
	lw x1, 0 ( x1 )
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	nop
	beq x3, x1, LBB0_16
LBB0_15:                                //  %if.then54
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	lw x8, 16 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	add x12, x0, x4
	add x13, x0, x5
	call $__subdf3
	add x4, x0, x11
	add x11, x0, x8
	add x5, x0, x10
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	lw x8, 48 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_21 ( x0 )
LBB0_16:                                //  %if.else57
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	lw x8, 16 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	add x12, x0, x4
	add x13, x0, x5
	call $__subdf3
	add x4, x0, x11
	add x5, x0, x10
	srli x1, x4, 20
	andi x1, x1, 2047
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	nop
	srli x7, x3, 20
	sub x1, x7, x1
	slti x1, x1, 17
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sw x4, 4 ( x3 )
	sw x5, 0 ( x3 )
	beqz x1, LBB0_18
LBB0_17:
	add x11, x0, x8
	add x8, x0, x3
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_22 ( x0 )
LBB0_18:                                //  %if.then73
	ori x28, x0, 1037087841 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x12, 442499072>>12 &0xfffff
	lui x1, 1037087841 >> 12 & 0xfffff
	or x13, x1, x28
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	sw x7, 8 ( x2 )                 //  4-byte Folded Spill
	call $__muldf3
	add x1, x0, x10
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	add x3, x0, x11
	sw x3, 24 ( x2 )                //  4-byte Folded Spill
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	add x1, x0, x10
	add x3, x0, x11
	sw x3, 52 ( x2 )                //  4-byte Folded Spill
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x8, x0, x1
	add x13, x0, x3
	call $__subdf3
	lw x12, 28 ( x2 )               //  4-byte Folded Reload
	lw x13, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	sw x10, 44 ( x2 )               //  4-byte Folded Spill
	sw x11, 28 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 771977331 & 0xfff
	slli x28, x28, 20
	lui x1, 771977331 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1000544650 & 0xfff
	slli x28, x28, 20
	lui x1, 1000544650 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	lw x12, 44 ( x2 )               //  4-byte Folded Reload
	lw x13, 28 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	add x12, x0, x1
	sw x3, 24 ( x2 )                //  4-byte Folded Spill
	add x13, x0, x3
	call $__subdf3
	add x4, x0, x11
	add x5, x0, x10
	srli x1, x4, 20
	andi x1, x1, 2047
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sub x1, x3, x1
	slti x1, x1, 50
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sw x4, 4 ( x3 )
	sw x5, 0 ( x3 )
	add x8, x0, x3
	beqz x1, LBB0_20
LBB0_19:
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_22 ( x0 )
LBB0_20:                                //  %if.then95
	ori x28, x0, 1000544650 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x12, 771751936>>12 &0xfffff
	lui x1, 1000544650 >> 12 & 0xfffff
	or x13, x1, x28
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	add x1, x0, x10
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	add x3, x0, x11
	sw x3, 24 ( x2 )                //  4-byte Folded Spill
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	add x1, x0, x10
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x11
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x8
	call $__subdf3
	lw x12, 28 ( x2 )               //  4-byte Folded Reload
	lw x13, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	sw x10, 52 ( x2 )               //  4-byte Folded Spill
	sw x11, 28 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 622873025 & 0xfff
	slli x28, x28, 20
	lui x1, 622873025 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 964395930 & 0xfff
	slli x28, x28, 20
	lui x1, 964395930 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	lw x12, 52 ( x2 )               //  4-byte Folded Reload
	lw x13, 28 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	add x12, x0, x1
	sw x3, 24 ( x2 )                //  4-byte Folded Spill
	add x13, x0, x3
	call $__subdf3
	add x4, x0, x11
	add x11, x0, x8
	lw x8, 48 ( x2 )                //  4-byte Folded Reload
	add x5, x0, x10
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
LBB0_21:                                //  %if.end106
	sw x4, 4 ( x8 )
	sw x5, 0 ( x8 )
LBB0_22:                                //  %if.end106
	sw x4, 44 ( x2 )                //  4-byte Folded Spill
	sw x5, 52 ( x2 )                //  4-byte Folded Spill
	add x12, x0, x5
	add x13, x0, x4
	call $__subdf3
	lw x12, 28 ( x2 )               //  4-byte Folded Reload
	lw x13, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	sw x11, 12 ( x8 )
	sw x10, 8 ( x8 )
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	lw x4, 40 ( x2 )                //  4-byte Folded Reload
	bgez x1, LBB0_31
LBB0_23:                                //  %if.then113
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	xor x3, x1, x3
	xor x1, x1, x11
	lw x5, 52 ( x2 )                //  4-byte Folded Reload
	nop
	sw x5, 0 ( x8 )
	sw x3, 4 ( x8 )
	sw x1, 12 ( x8 )
	jalr x0, LBB0_30 ( x0 )
LBB0_24:                                //  %if.end122
	lui x1, 2146435072>>12 &0xfffff
	bgtu x1, x4, LBB0_26
LBB0_25:                                //  %if.then125
	add x10, x0, x8
	add x12, x0, x8
	add x13, x0, x11
	call $__subdf3
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sw x11, 12 ( x1 )
	sw x11, 4 ( x1 )
	sw x10, 8 ( x1 )
	sw x10, 0 ( x1 )
	add x4, x0, x0
	jalr x0, LBB0_31 ( x0 )
LBB0_26:                                //  %do.body130
	sw x11, 32 ( x2 )               //  4-byte Folded Spill
	srli x1, x4, 20
	addi x1, x1, -1046
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
	slli x1, x1, 20
	sub x11, x4, x1
	sw x11, 52 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	call $__fixdfsi
	call $__floatsidf
	add x1, x0, x10
	add x3, x0, x11
	addi x4, x2, 56
	ori x4, x4, 4
	sw x3, 0 ( x4 )
	sw x1, 56 ( x2 )
	add x10, x0, x8
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	add x12, x0, x0
	lui x13, 1097859072>>12 &0xfffff
	call $__muldf3
	add x8, x0, x10
	sw x11, 52 ( x2 )               //  4-byte Folded Spill
	call $__fixdfsi
	call $__floatsidf
	add x1, x0, x10
	add x3, x0, x11
	addi x4, x2, 56
	sw x1, 8 ( x4 )
	sw x3, 68 ( x2 )
	add x10, x0, x8
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	add x12, x0, x0
	lui x13, 1097859072>>12 &0xfffff
	call $__muldf3
	addi x1, x2, 56
	sw x11, 20 ( x1 )
	sw x10, 16 ( x1 )
	addi x13, x0, 4
	addi x8, x1, 16
LBB0_27:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	sw x13, 52 ( x2 )               //  4-byte Folded Spill
	lw x10, 0 ( x8 )
	lw x11, 4 ( x8 )
	add x12, x0, x0
	add x13, x0, x12
	call $__eqdf2
	lw x13, 52 ( x2 )               //  4-byte Folded Reload
	addi x8, x8, -8
	addi x13, x13, -1
	beqz x10, LBB0_27
LBB0_28:                                //  %while.end
	ori x28, x0, $two_over_pi & 0xfff
	slli x28, x28, 20
	lui x1, $two_over_pi >> 12 & 0xfffff
	srli x28, x28, 20
	addi x10, x2, 56
	addi x14, x0, 2
	or x15, x1, x28
	lw x8, 48 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	lw x12, 44 ( x2 )               //  4-byte Folded Reload
	nop
	call $__kernel_rem_pio2
	add x4, x0, x10
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	bgez x1, LBB0_31
LBB0_29:                                //  %if.then168
	ori x28, x0, -2147483648 & 0xfff
	lw x12, 0 ( x8 )
	lw x13, 4 ( x8 )
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	add x10, x0, x0
	or x11, x1, x28
	sw x11, 52 ( x2 )               //  4-byte Folded Spill
	sw x4, 40 ( x2 )                //  4-byte Folded Spill
	call $__subdf3
	sw x11, 4 ( x8 )
	sw x10, 0 ( x8 )
	lw x12, 8 ( x8 )
	lw x13, 12 ( x8 )
	add x10, x0, x0
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	lw x4, 40 ( x2 )                //  4-byte Folded Reload
	sw x11, 12 ( x8 )
LBB0_30:                                //  %cleanup
	sw x10, 8 ( x8 )
	sub x4, x0, x4
LBB0_31:                                //  %cleanup
	add x10, x0, x4
	lw x8, 84 ( x2 )                //  4-byte Folded Reload
	lw x1, 92 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 96
$cfi5:
	.cfi_adjust_cfa_offset -96
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$__ieee754_rem_pio2, ($func_end0)-($__ieee754_rem_pio2)
	.cfi_endproc

	.address_space	0	
	.type	$npio2_hw,@object       //  @npio2_hw
	.section	.rodata,"a",@progbits
	.p2align	2
$npio2_hw:
	.long	1073291771              //  0x3ff921fb
	.long	1074340347              //  0x400921fb
	.long	1074977148              //  0x4012d97c
	.long	1075388923              //  0x401921fb
	.long	1075800698              //  0x401f6a7a
	.long	1076025724              //  0x4022d97c
	.long	1076231611              //  0x4025fdbb
	.long	1076437499              //  0x402921fb
	.long	1076643386              //  0x402c463a
	.long	1076849274              //  0x402f6a7a
	.long	1076971356              //  0x4031475c
	.long	1077074300              //  0x4032d97c
	.long	1077177244              //  0x40346b9c
	.long	1077280187              //  0x4035fdbb
	.long	1077383131              //  0x40378fdb
	.long	1077486075              //  0x403921fb
	.long	1077589019              //  0x403ab41b
	.long	1077691962              //  0x403c463a
	.long	1077794906              //  0x403dd85a
	.long	1077897850              //  0x403f6a7a
	.long	1077968460              //  0x40407e4c
	.long	1078019932              //  0x4041475c
	.long	1078071404              //  0x4042106c
	.long	1078122876              //  0x4042d97c
	.long	1078174348              //  0x4043a28c
	.long	1078225820              //  0x40446b9c
	.long	1078277292              //  0x404534ac
	.long	1078328763              //  0x4045fdbb
	.long	1078380235              //  0x4046c6cb
	.long	1078431707              //  0x40478fdb
	.long	1078483179              //  0x404858eb
	.long	1078534651              //  0x404921fb
	.size	$npio2_hw, 128

	.address_space	0	
	.type	$two_over_pi,@object    //  @two_over_pi
	.p2align	2
$two_over_pi:
	.long	10680707                //  0xa2f983
	.long	7228996                 //  0x6e4e44
	.long	1387004                 //  0x1529fc
	.long	2578385                 //  0x2757d1
	.long	16069853                //  0xf534dd
	.long	12639074                //  0xc0db62
	.long	9804092                 //  0x95993c
	.long	4427841                 //  0x439041
	.long	16666979                //  0xfe5163
	.long	11263675                //  0xabdebb
	.long	12935607                //  0xc561b7
	.long	2387514                 //  0x246e3a
	.long	4345298                 //  0x424dd2
	.long	14681673                //  0xe00649
	.long	3074569                 //  0x2eea09
	.long	13734428                //  0xd1921c
	.long	16653803                //  0xfe1deb
	.long	1880361                 //  0x1cb129
	.long	10960616                //  0xa73ee8
	.long	8533493                 //  0x8235f5
	.long	3062596                 //  0x2ebb44
	.long	8710556                 //  0x84e99c
	.long	7349940                 //  0x7026b4
	.long	6258241                 //  0x5f7e41
	.long	3772886                 //  0x3991d6
	.long	3769171                 //  0x398353
	.long	3798172                 //  0x39f49c
	.long	8675211                 //  0x845f8b
	.long	12450088                //  0xbdf928
	.long	3874808                 //  0x3b1ff8
	.long	9961438                 //  0x97ffde
	.long	366607                  //  0x5980f
	.long	15675153                //  0xef2f11
	.long	9132554                 //  0x8b5a0a
	.long	7151469                 //  0x6d1f6d
	.long	3571407                 //  0x367ecf
	.long	2607881                 //  0x27cb09
	.long	12013382                //  0xb74f46
	.long	4155038                 //  0x3f669e
	.long	6285869                 //  0x5fea2d
	.long	7677882                 //  0x7527ba
	.long	13102053                //  0xc7ebe5
	.long	15825725                //  0xf17b3d
	.long	473591                  //  0x739f7
	.long	9065106                 //  0x8a5292
	.long	15363067                //  0xea6bfb
	.long	6271263                 //  0x5fb11f
	.long	9264392                 //  0x8d5d08
	.long	5636912                 //  0x560330
	.long	4652155                 //  0x46fc7b
	.long	7056368                 //  0x6babf0
	.long	13614112                //  0xcfbc20
	.long	10155062                //  0x9af436
	.long	1944035                 //  0x1da9e3
	.long	9527646                 //  0x91615e
	.long	15080200                //  0xe61b08
	.long	6658437                 //  0x659985
	.long	6231200                 //  0x5f14a0
	.long	6832269                 //  0x68408d
	.long	16767104                //  0xffd880
	.long	5075751                 //  0x4d7327
	.long	3212806                 //  0x310606
	.long	1398474                 //  0x1556ca
	.long	7579849                 //  0x73a8c9
	.long	6349435                 //  0x60e27b
	.long	12618859                //  0xc08c6b
	.size	$two_over_pi, 264


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
