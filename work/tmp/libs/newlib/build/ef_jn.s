	.text
	.file	"ef_jn.bc"
	.globl	$__ieee754_jnf
	.type	$__ieee754_jnf,@function
$__ieee754_jnf:                         //  @__ieee754_jnf
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
	add x8, x0, x11
	add x4, x0, x10
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, 2139095041 & 0xfff
	slli x28, x28, 20
	lui x3, 2139095041 >> 12 & 0xfffff
	srli x28, x28, 20
	and x5, x1, x8
	or x1, x3, x28
	bgtu x1, x5, LBB0_2
LBB0_1:                                 //  %if.then
	add x10, x0, x8
	add x11, x0, x8
	call $__addsf3
	jalr x0, LBB0_51 ( x0 )
LBB0_2:                                 //  %if.end
	bgt x0, x4, LBB0_4
LBB0_3:
	add x10, x0, x8
	add x1, x0, x8
	jalr x0, LBB0_5 ( x0 )
LBB0_4:                                 //  %if.then2
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x1, x28
	xor x1, x3, x8
	xor x10, x3, x8
	sub x4, x0, x4
LBB0_5:                                 //  %if.end4
	xori x3, x4, 1
	beqz x3, LBB0_50
LBB0_6:                                 //  %if.end4
	bgtu x4, x0, LBB0_8
LBB0_7:                                 //  %if.then6
	call $__ieee754_j0f
	jalr x0, LBB0_51 ( x0 )
LBB0_8:                                 //  %if.end11
	sw x5, 36 ( x2 )                //  4-byte Folded Spill
	slt x1, x1, x0
	sw x4, 40 ( x2 )                //  4-byte Folded Spill
	and x1, x4, x1
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
	call $fabsf
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	add x4, x0, x0
	bgez x8, LBB0_11
LBB0_9:                                 //  %if.end11
	lui x1, -2147483648 >> 12 & 0xfffff
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	beq x8, x1, LBB0_47
LBB0_10:                                //  %if.end11
	lui x1, -8388608 >> 12 & 0xfffff
	ori x28, x0, -8388608 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	jalr x0, LBB0_13 ( x0 )
LBB0_11:                                //  %if.end11
	beqz x8, LBB0_47
LBB0_12:                                //  %if.end11
	lui x1, 2139095040>>12 &0xfffff
LBB0_13:                                //  %if.end11
	add x4, x0, x0
	beq x8, x1, LBB0_47
LBB0_14:                                //  %if.else
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	nop
	call $__floatsisf
	sw x10, 4 ( x2 )                //  4-byte Folded Spill
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	call $__lesf2
	bgt x10, x0, LBB0_18
LBB0_15:                                //  %if.then20
	add x10, x0, x8
	call $__ieee754_j0f
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	call $__ieee754_j1f
	add x4, x0, x10
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	slti x1, x3, 2
	add x8, x0, x3
	bgtu x1, x0, LBB0_47
LBB0_16:                                //  %for.body.preheader
	addi x1, x0, 2
	addi x8, x8, -1
LBB0_17:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	sw x4, 36 ( x2 )                //  4-byte Folded Spill
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	nop
	call $__floatsisf
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divsf3
	add x1, x0, x10
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	lw x11, 28 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subsf3
	add x4, x0, x10
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 2
	addi x8, x8, -1
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 28 ( x2 )                //  4-byte Folded Spill
	bgtu x8, x0, LBB0_17
	jalr x0, LBB0_47 ( x0 )
LBB0_18:                                //  %if.else28
	lui x1, 813694975 >> 12 & 0xfffff
	ori x28, x0, 813694975 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x3, x1, LBB0_25
LBB0_19:                                //  %if.then31
	addi x1, x0, 33
	add x4, x0, x0
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x3, x1, LBB0_47
LBB0_20:                                //  %if.else35
	lui x11, 1056964608>>12 &0xfffff
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	slti x1, x1, 2
	beqz x1, LBB0_22
LBB0_21:
	lui x1, 1065353216>>12 &0xfffff
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_46 ( x0 )
LBB0_22:                                //  %for.body40.preheader
	lui x1, 1065353216>>12 &0xfffff
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	slti x8, x0, 1
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	nop
LBB0_23:                                //  %for.body40
                                        //  =>This Inner Loop Header: Depth=1
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	addi x8, x8, 1
	add x10, x0, x8
	call $__floatsisf
	add x1, x0, x10
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	bne x1, x8, LBB0_23
LBB0_24:                                //  %for.end46
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_46 ( x0 )
LBB0_25:                                //  %if.else49
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	slli x10, x1, 1
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	call $__floatsisf
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divsf3
	add x8, x0, x10
	lui x10, 1073741824>>12 &0xfffff
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divsf3
	add x1, x0, x10
	add x10, x0, x8
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	add x11, x0, x1
	call $__addsf3
	add x1, x0, x10
	sw x8, 36 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x1
	call $__mulsf3
	lui x1, -1082130432 >> 12 & 0xfffff
	ori x28, x0, -1082130432 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	lui x1, 1315859240 >> 12 & 0xfffff
	ori x28, x0, 1315859240 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	add x8, x0, x10
	call $__ltsf2
	bgt x0, x10, LBB0_27
LBB0_26:
	slti x3, x0, 1
	jalr x0, LBB0_29 ( x0 )
LBB0_27:                                //  %while.body.preheader
	lw x11, 28 ( x2 )               //  4-byte Folded Reload
	slti x3, x0, 1
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
LBB0_28:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	sw x3, 20 ( x2 )                //  4-byte Folded Spill
	sw x8, 16 ( x2 )                //  4-byte Folded Spill
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $__addsf3
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	add x11, x0, x8
	call $__mulsf3
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subsf3
	add x8, x0, x10
	ori x28, x0, 1315859240 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 1315859240 >> 12 & 0xfffff
	or x11, x1, x28
	call $__ltsf2
	lw x11, 28 ( x2 )               //  4-byte Folded Reload
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, 1
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	bgt x0, x10, LBB0_28
LBB0_29:                                //  %while.end
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x3
	slli x8, x1, 1
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	ble x1, x8, LBB0_31
LBB0_30:
	add x10, x0, x0
	jalr x0, LBB0_33 ( x0 )
LBB0_31:                                //  %for.body71.preheader
	add x10, x0, x0
LBB0_32:                                //  %for.body71
                                        //  =>This Inner Loop Header: Depth=1
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	call $__floatsisf
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divsf3
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subsf3
	add x1, x0, x10
	lui x10, 1065353216>>12 &0xfffff
	add x11, x0, x1
	call $__divsf3
	addi x8, x8, -2
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	ble x1, x8, LBB0_32
LBB0_33:                                //  %for.end78
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	lw x8, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $__mulsf3
	call $fabsf
	call $__ieee754_logf
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x1, 1118925184 >> 12 & 0xfffff
	ori x28, x0, 1118925184 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__ltsf2
	add x8, x0, x10
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	addi x10, x1, -2
	call $__floatsisf
	add x4, x0, x10
	bgt x0, x8, LBB0_36
LBB0_34:                                //  %for.cond105.preheader
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	slti x1, x3, 2
	beqz x1, LBB0_40
LBB0_35:
	lui x1, 1065353216>>12 &0xfffff
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_45 ( x0 )
LBB0_36:                                //  %for.cond91.preheader
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	slti x1, x3, 2
	bgtu x1, x0, LBB0_35
LBB0_37:                                //  %for.body94.preheader
	lui x5, 1065353216>>12 &0xfffff
	lw x8, 36 ( x2 )                //  4-byte Folded Reload
LBB0_38:                                //  %for.body94
                                        //  =>This Inner Loop Header: Depth=1
	sw x4, 20 ( x2 )                //  4-byte Folded Spill
	sw x3, 40 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x5
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	add x11, x0, x4
	call $__mulsf3
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divsf3
	add x11, x0, x8
	call $__subsf3
	add x8, x0, x10
	ori x28, x0, -1073741824 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, -1073741824 >> 12 & 0xfffff
	or x11, x1, x28
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	nop
	call $__addsf3
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	add x4, x0, x10
	add x5, x0, x8
	addi x3, x3, -1
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	slti x1, x0, 1
	bgt x3, x1, LBB0_38
LBB0_39:
	sw x5, 28 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_45 ( x0 )
LBB0_40:                                //  %for.body108.preheader
	lui x1, 1065353216>>12 &0xfffff
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
LBB0_41:                                //  %for.body108
                                        //  =>This Inner Loop Header: Depth=1
	sw x3, 40 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, -1073741824 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, -1073741824 >> 12 & 0xfffff
	or x11, x1, x28
	add x10, x0, x4
	add x8, x0, x4
	call $__addsf3
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $__mulsf3
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divsf3
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subsf3
	add x8, x0, x10
	ori x28, x0, 1343554297 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 1343554297 >> 12 & 0xfffff
	or x11, x1, x28
	call $__gtsf2
	bgt x10, x0, LBB0_43
LBB0_42:                                //    in Loop: Header=BB0_41 Depth=1
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	sw x8, 28 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_44 ( x0 )
LBB0_43:                                //  %if.then115
                                        //    in Loop: Header=BB0_41 Depth=1
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $__divsf3
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $__divsf3
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	lui x1, 1065353216>>12 &0xfffff
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
LBB0_44:                                //  %for.inc119
                                        //    in Loop: Header=BB0_41 Depth=1
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	lw x4, 16 ( x2 )                //  4-byte Folded Reload
	addi x3, x3, -1
	slti x1, x0, 1
	bgt x3, x1, LBB0_41
LBB0_45:                                //  %if.end122
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__ieee754_j0f
	add x1, x0, x10
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	lw x11, 28 ( x2 )               //  4-byte Folded Reload
	nop
LBB0_46:                                //  %if.end128
	call $__divsf3
	add x4, x0, x10
LBB0_47:                                //  %if.end128
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x1, x28
	add x11, x0, x4
	add x8, x0, x4
	call $__subsf3
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	add x3, x0, x0
	bne x1, x3, LBB0_49
LBB0_48:                                //  %if.end128
	add x10, x0, x8
LBB0_49:                                //  %if.end128
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
LBB0_50:                                //  %if.then9
	call $__ieee754_j1f
LBB0_51:                                //  %cleanup
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
	.size	$__ieee754_jnf, ($func_end0)-($__ieee754_jnf)
	.cfi_endproc

	.globl	$__ieee754_ynf
	.type	$__ieee754_ynf,@function
$__ieee754_ynf:                         //  @__ieee754_ynf
	.cfi_startproc
  .codasip_retval_regs 10, 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi10:
	.cfi_def_cfa 2, 0
$cfi11:
	.cfi_val_offset 2, 0
	addi x2, x2, -40
$cfi12:
	.cfi_adjust_cfa_offset 40
	sw x1, 36 ( x2 )
$cfi13:
	.cfi_offset 1, -4
	sw x8, 28 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x11
	add x5, x0, x10
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, 2139095041 & 0xfff
	slli x28, x28, 20
	lui x3, 2139095041 >> 12 & 0xfffff
	srli x28, x28, 20
	and x1, x1, x8
	or x3, x3, x28
	bgtu x3, x1, LBB1_2
LBB1_1:                                 //  %if.then
	add x10, x0, x8
	add x11, x0, x8
	call $__addsf3
	jalr x0, LBB1_24 ( x0 )
LBB1_2:                                 //  %if.end
	ori x28, x0, -8388608 & 0xfff
	slli x28, x28, 20
	lui x3, -8388608 >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x3, x28
	beqz x1, LBB1_24
LBB1_3:                                 //  %if.end3
	bgez x8, LBB1_5
LBB1_4:
	lui x10, 2143289344>>12 &0xfffff
	jalr x0, LBB1_24 ( x0 )
LBB1_5:                                 //  %if.end6
	bgt x0, x5, LBB1_7
LBB1_6:
	slti x10, x0, 1
	jalr x0, LBB1_8 ( x0 )
LBB1_7:                                 //  %if.then8
	slli x3, x5, 1
	andi x3, x3, 2
	slti x4, x0, 1
	sub x10, x4, x3
	sub x5, x0, x5
LBB1_8:                                 //  %if.end11
	xori x3, x5, 1
	beqz x3, LBB1_23
LBB1_9:                                 //  %if.end11
	bgtu x5, x0, LBB1_11
LBB1_10:                                //  %if.then13
	add x10, x0, x8
	call $__ieee754_y0f
	jalr x0, LBB1_24 ( x0 )
LBB1_11:                                //  %if.end18
	lui x3, 2139095040>>12 &0xfffff
	bne x1, x3, LBB1_13
LBB1_12:
	add x10, x0, x0
	jalr x0, LBB1_24 ( x0 )
LBB1_13:                                //  %if.end22
	sw x10, 4 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	sw x5, 12 ( x2 )                //  4-byte Folded Spill
	call $__ieee754_y0f
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	call $__ieee754_y1f
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	slti x1, x1, 2
	beqz x1, LBB1_15
LBB1_14:
	add x4, x0, x10
	jalr x0, LBB1_20 ( x0 )
LBB1_15:                                //  %if.end22
	ori x28, x0, -8388608 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, -8388608 >> 12 & 0xfffff
	or x1, x1, x28
	bne x10, x1, LBB1_17
LBB1_16:
	add x4, x0, x10
	jalr x0, LBB1_20 ( x0 )
LBB1_17:                                //  %for.body.preheader
	sw x8, 8 ( x2 )                 //  4-byte Folded Spill
	addi x3, x0, 2
	add x8, x0, x3
	lw x5, 20 ( x2 )                //  4-byte Folded Reload
LBB1_18:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	sw x5, 20 ( x2 )                //  4-byte Folded Spill
	sw x3, 16 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	call $__floatsisf
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $__divsf3
	add x1, x0, x10
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subsf3
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	add x4, x0, x10
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	ble x1, x3, LBB1_20
LBB1_19:                                //  %for.body
                                        //    in Loop: Header=BB1_18 Depth=1
	addi x8, x8, 2
	addi x3, x3, 1
	ori x28, x0, -8388608 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, -8388608 >> 12 & 0xfffff
	or x1, x1, x28
	lw x5, 24 ( x2 )                //  4-byte Folded Reload
	add x10, x0, x4
	bne x4, x1, LBB1_18
LBB1_20:                                //  %for.end
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x1, x28
	add x11, x0, x4
	add x8, x0, x4
	call $__subsf3
	add x4, x0, x8
	add x1, x0, x0
	lw x3, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	bgt x3, x1, LBB1_22
LBB1_21:                                //  %for.end
	add x4, x0, x10
LBB1_22:                                //  %for.end
	add x10, x0, x4
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	lw x1, 36 ( x2 )
$cfi14:
	.cfi_same_value 1
	addi x2, x2, 40
$cfi15:
	.cfi_adjust_cfa_offset -40
$cfi16:
	.cfi_def_cfa 2, 0
	ret
LBB1_23:                                //  %if.then16
	call $__floatsisf
	add x1, x0, x8
	add x8, x0, x10
	add x10, x0, x1
	call $__ieee754_y1f
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
LBB1_24:                                //  %cleanup
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	lw x1, 36 ( x2 )
$cfi17:
	.cfi_same_value 1
	addi x2, x2, 40
$cfi18:
	.cfi_adjust_cfa_offset -40
$cfi19:
	.cfi_def_cfa 2, 0
	ret
$func_end1:
	.size	$__ieee754_ynf, ($func_end1)-($__ieee754_ynf)
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
