	.text
	.file	"fseeko.bc"
	.globl	$_fseeko_r
	.type	$_fseeko_r,@function
$_fseeko_r:                             //  @_fseeko_r
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -112
$cfi2:
	.cfi_adjust_cfa_offset 112
	sw x1, 108 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 100 ( x2 )               //  4-byte Folded Spill
	sw x12, 28 ( x2 )               //  4-byte Folded Spill
	add x9, x0, x11
	add x8, x0, x10
	sw x9, 32 ( x2 )                //  4-byte Folded Spill
	sw x8, 36 ( x2 )                //  4-byte Folded Spill
	beqz x8, LBB0_3
LBB0_1:                                 //  %land.lhs.true
	lw x1, 56 ( x8 )
	nop
	bgtu x1, x0, LBB0_3
LBB0_2:                                 //  %if.then
	add x10, x0, x8
	add x8, x0, x13
	call $__sinit
	add x13, x0, x8
	lw x9, 32 ( x2 )                //  4-byte Folded Reload
	lw x8, 36 ( x2 )                //  4-byte Folded Reload
LBB0_3:                                 //  %if.end
	lhu x1, 12 ( x9 )
	nop
	andi x1, x1, 264
	xori x1, x1, 264
	bgtu x1, x0, LBB0_5
LBB0_4:                                 //  %if.then16
	add x10, x0, x8
	add x11, x0, x9
	add x8, x0, x13
	call $_fflush_r
	add x13, x0, x8
	lw x9, 32 ( x2 )                //  4-byte Folded Reload
	lw x8, 36 ( x2 )                //  4-byte Folded Reload
LBB0_5:                                 //  %if.end17
	lw x3, 40 ( x9 )
	nop
	bgtu x3, x0, LBB0_8
LBB0_6:                                 //  %if.then19
	addi x1, x0, 29
LBB0_7:                                 //  %cleanup
	sw x1, 0 ( x8 )
	not x3, x0
	jalr x0, LBB0_73 ( x0 )
LBB0_8:                                 //  %if.end32
	add x5, x0, x0
	bgtu x13, x0, LBB0_10
LBB0_9:
	sw x3, 24 ( x2 )                //  4-byte Folded Spill
	sw x5, 12 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_24 ( x0 )
LBB0_10:                                //  %if.end32
	xori x1, x13, 2
	beqz x1, LBB0_9
LBB0_11:                                //  %if.end32
	xori x1, x13, 1
	bgtu x1, x0, LBB0_74
LBB0_12:                                //  %sw.bb
	sw x3, 24 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	add x11, x0, x9
	add x8, x0, x9
	call $_fflush_r
	add x9, x0, x8
	lhu x1, 12 ( x9 )
	lui x3, 4096>>12 
	and x3, x3, x1
	beqz x3, LBB0_14
LBB0_13:                                //  %if.then38
	lw x10, 80 ( x9 )
	jalr x0, LBB0_17 ( x0 )
LBB0_14:                                //  %if.else
	lw x11, 28 ( x9 )
	add x12, x0, x0
	slti x13, x0, 1
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x9
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	call_reg x1
	xori x1, x10, -1
	bgtu x1, x0, LBB0_16
LBB0_15:
	not x3, x0
	jalr x0, LBB0_73 ( x0 )
LBB0_16:                                //  %if.else.if.end56_crit_edge
	lh x1, 12 ( x8 )
	add x9, x0, x8
LBB0_17:                                //  %if.end56
	lw x8, 36 ( x2 )                //  4-byte Folded Reload
	slli x1, x1, 16
	srai x1, x1, 16
	andi x3, x1, 4
	beqz x3, LBB0_20
LBB0_18:                                //  %if.then61
	lw x1, 4 ( x9 )
	nop
	sub x10, x10, x1
	lw x1, 48 ( x9 )
	nop
	beqz x1, LBB0_23
LBB0_19:                                //  %if.then64
	lw x1, 60 ( x9 )
	nop
	sub x10, x10, x1
	jalr x0, LBB0_23 ( x0 )
LBB0_20:                                //  %if.else67
	andi x1, x1, 8
	beqz x1, LBB0_23
LBB0_21:                                //  %land.lhs.true72
	lw x1, 0 ( x9 )
	nop
	beqz x1, LBB0_23
LBB0_22:                                //  %if.then75
	add x1, x10, x1
	lw x3, 16 ( x9 )
	nop
	sub x10, x1, x3
LBB0_23:                                //  %if.end79
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	add x1, x1, x10
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	slti x5, x0, 1
	add x13, x0, x0
LBB0_24:                                //  %sw.epilog
	lw x1, 16 ( x9 )
	sw x13, 20 ( x2 )               //  4-byte Folded Spill
	bgtu x1, x0, LBB0_26
LBB0_25:                                //  %if.then99
	add x10, x0, x8
	add x11, x0, x9
	add x8, x0, x9
	sw x5, 16 ( x2 )                //  4-byte Folded Spill
	call $__smakebuf_r
	lw x5, 16 ( x2 )                //  4-byte Folded Reload
	lw x13, 20 ( x2 )               //  4-byte Folded Reload
	add x9, x0, x8
	lw x8, 36 ( x2 )                //  4-byte Folded Reload
LBB0_26:                                //  %if.end100
	ori x28, x0, 2074 & 0xfff
	lh x1, 12 ( x9 )
	slli x28, x28, 20
	lui x3, 2074 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	and x3, x3, x1
	bgtu x3, x0, LBB0_33
LBB0_27:                                //  %if.end106
	andi x1, x1, 1024
	bgtu x1, x0, LBB0_42
LBB0_28:                                //  %if.then112
	ori x28, x0, $__sseek & 0xfff
	slli x28, x28, 20
	lui x1, $__sseek >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	nop
	bne x3, x1, LBB0_32
LBB0_29:                                //  %lor.lhs.false
	lh x11, 14 ( x9 )
	nop
	bgt x0, x11, LBB0_32
LBB0_30:                                //  %lor.lhs.false118
	addi x12, x2, 40
	add x10, x0, x8
	add x8, x0, x9
	sw x5, 16 ( x2 )                //  4-byte Folded Spill
	call $_fstat_r
	lw x5, 16 ( x2 )                //  4-byte Folded Reload
	lw x13, 20 ( x2 )               //  4-byte Folded Reload
	add x9, x0, x8
	lw x8, 36 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB0_32
LBB0_31:                                //  %lor.lhs.false123
	lw x1, 44 ( x2 )
	lui x3, 61440>>12 
	lui x4, 32768>>12 
	and x1, x3, x1
	beq x1, x4, LBB0_41
LBB0_32:                                //  %if.then127
	ori x28, x0, 2048 & 0xfff
	lh x1, 12 ( x9 )
	slli x28, x28, 20
	lui x3, 2048 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	or x1, x3, x1
	sh x1, 12 ( x9 )
LBB0_33:                                //  %dumb
	add x10, x0, x8
	add x11, x0, x9
	call $_fflush_r
	not x3, x0
	bgtu x10, x0, LBB0_73
LBB0_34:                                //  %lor.lhs.false316
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	lw x11, 28 ( x1 )
	add x10, x0, x8
	lw x12, 28 ( x2 )               //  4-byte Folded Reload
	lw x13, 20 ( x2 )               //  4-byte Folded Reload
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	add x8, x0, x3
	call_reg x1
	add x3, x0, x8
	xori x1, x10, -1
	beqz x1, LBB0_73
LBB0_35:                                //  %if.end334
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	lw x11, 48 ( x1 )
	add x4, x0, x1
	beqz x11, LBB0_39
LBB0_36:                                //  %if.then339
	addi x1, x4, 64
	beq x11, x1, LBB0_38
LBB0_37:                                //  %if.then346
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x4
	call $_free_r
	add x4, x0, x8
LBB0_38:                                //  %if.end349
	sw x0, 48 ( x4 )
LBB0_39:                                //  %if.end352
	lw x1, 16 ( x4 )
	sw x0, 4 ( x4 )
	ori x28, x0, 63455 & 0xfff
	slli x28, x28, 20
	sw x1, 0 ( x4 )
	lhu x1, 12 ( x4 )
	lui x3, 63455 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	addi x10, x4, 92
	and x1, x3, x1
	sh x1, 12 ( x4 )
LBB0_40:                                //  %cleanup
	add x8, x0, x0
	addi x12, x0, 8
	jalr x0, LBB0_72 ( x0 )
LBB0_41:                                //  %if.end131
	addi x1, x0, 1024
	sw x1, 76 ( x9 )
	lh x1, 12 ( x9 )
	nop
	ori x1, x1, 1024
	sh x1, 12 ( x9 )
LBB0_42:                                //  %if.end136
	lw x12, 28 ( x2 )               //  4-byte Folded Reload
	beqz x13, LBB0_45
LBB0_43:                                //  %if.else140
	lh x11, 14 ( x9 )
	addi x12, x2, 40
	add x10, x0, x8
	add x8, x0, x9
	sw x5, 16 ( x2 )                //  4-byte Folded Spill
	call $_fstat_r
	lw x5, 16 ( x2 )                //  4-byte Folded Reload
	add x9, x0, x8
	lw x8, 36 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB0_33
LBB0_44:                                //  %if.end146
	lw x1, 56 ( x2 )
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	nop
	add x12, x3, x1
LBB0_45:                                //  %if.end148
	bgtu x5, x0, LBB0_53
LBB0_46:                                //  %if.then150
	sw x12, 12 ( x2 )               //  4-byte Folded Spill
	lbu x1, 13 ( x9 )
	nop
	andi x1, x1, 16
	beqz x1, LBB0_48
LBB0_47:                                //  %if.then155
	lw x10, 80 ( x9 )
	jalr x0, LBB0_49 ( x0 )
LBB0_48:                                //  %if.else157
	lw x11, 28 ( x9 )
	add x12, x0, x0
	slti x13, x0, 1
	add x10, x0, x8
	add x8, x0, x9
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	call_reg x1
	add x9, x0, x8
	lw x8, 36 ( x2 )                //  4-byte Folded Reload
	xori x1, x10, -1
	beqz x1, LBB0_33
LBB0_49:                                //  %if.end164
	lw x1, 4 ( x9 )
	lw x11, 48 ( x9 )
	addi x3, x9, 48
	sw x3, 16 ( x2 )                //  4-byte Folded Spill
	sub x10, x10, x1
	bgtu x11, x0, LBB0_52
LBB0_50:
	lw x12, 12 ( x2 )               //  4-byte Folded Reload
LBB0_51:                                //  %if.else191
	lw x1, 16 ( x9 )
	lw x4, 0 ( x9 )
	add x11, x0, x0
	slti x3, x0, 1
	addi x5, x9, 4
	sub x7, x4, x1
	sub x4, x10, x7
	jalr x0, LBB0_55 ( x0 )
LBB0_52:                                //  %if.end175.thread548
	lw x1, 60 ( x9 )
	nop
	sub x10, x10, x1
	lw x12, 12 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_54 ( x0 )
LBB0_53:                                //  %if.end175
	lw x11, 48 ( x9 )
	addi x1, x9, 48
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	beqz x11, LBB0_51
LBB0_54:                                //  %if.then180
	lw x4, 4 ( x9 )
	lw x1, 16 ( x9 )
	lw x7, 56 ( x9 )
	add x3, x0, x0
	add x4, x10, x4
	addi x5, x9, 60
	sub x7, x7, x1
	sub x4, x4, x7
LBB0_55:                                //  %if.end201
	bgt x4, x12, LBB0_62
LBB0_56:                                //  %if.end201
	lw x5, 0 ( x5 )
	nop
	add x5, x7, x5
	add x7, x4, x5
	bgeu x12, x7, LBB0_62
LBB0_57:                                //  %if.then208
	sub x4, x12, x4
	add x1, x4, x1
	sub x4, x5, x4
	sw x1, 0 ( x9 )
	sw x4, 4 ( x9 )
	bgtu x3, x0, LBB0_61
LBB0_58:                                //  %if.then219
	addi x1, x9, 64
	beq x11, x1, LBB0_60
LBB0_59:                                //  %if.then224
	add x10, x0, x8
	add x8, x0, x9
	call $_free_r
	add x9, x0, x8
LBB0_60:                                //  %if.end227
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sw x0, 0 ( x1 )
LBB0_61:                                //  %if.end230
	ori x28, x0, 65503 & 0xfff
	lhu x1, 12 ( x9 )
	slli x28, x28, 20
	lui x3, 65503 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	and x1, x3, x1
	sh x1, 12 ( x9 )
	addi x10, x9, 92
	jalr x0, LBB0_40 ( x0 )
LBB0_62:                                //  %if.end248
	lw x1, 76 ( x9 )
	lw x11, 28 ( x9 )
	sub x1, x0, x1
	sw x12, 12 ( x2 )               //  4-byte Folded Spill
	and x12, x1, x12
	add x13, x0, x0
	add x10, x0, x8
	sw x12, 8 ( x2 )                //  4-byte Folded Spill
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	call_reg x1
	lw x9, 32 ( x2 )                //  4-byte Folded Reload
	xori x1, x10, -1
	beqz x1, LBB0_33
LBB0_63:                                //  %if.end257
	sw x0, 4 ( x9 )
	lw x1, 16 ( x9 )
	nop
	sw x1, 0 ( x9 )
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	lw x11, 0 ( x1 )
	lw x4, 12 ( x2 )                //  4-byte Folded Reload
	beqz x11, LBB0_67
LBB0_64:                                //  %if.then266
	addi x1, x9, 64
	beq x11, x1, LBB0_66
LBB0_65:                                //  %if.then273
	add x10, x0, x8
	call $_free_r
	lw x4, 12 ( x2 )                //  4-byte Folded Reload
	lw x9, 32 ( x2 )                //  4-byte Folded Reload
LBB0_66:                                //  %if.end276
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sw x0, 0 ( x1 )
LBB0_67:                                //  %if.end279
	ori x28, x0, 65503 & 0xfff
	lhu x1, 12 ( x9 )
	slli x28, x28, 20
	lui x3, 65503 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	and x1, x3, x1
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sub x3, x4, x3
	sh x1, 12 ( x9 )
	beqz x3, LBB0_71
LBB0_68:                                //  %if.then286
	sw x3, 16 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	add x11, x0, x9
	call $__srefill_r
	lw x9, 32 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB0_33
LBB0_69:                                //  %lor.lhs.false289
	lw x1, 4 ( x9 )
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x3, x1, LBB0_33
LBB0_70:                                //  %if.end294
	lw x3, 0 ( x9 )
	lw x4, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x4
	add x3, x4, x3
	sw x3, 0 ( x9 )
	sw x1, 4 ( x9 )
LBB0_71:                                //  %if.end299
	addi x10, x9, 92
	addi x12, x0, 8
	add x8, x0, x0
LBB0_72:                                //  %cleanup
	add x11, x0, x8
	call $memset
	add x3, x0, x8
LBB0_73:                                //  %cleanup
	add x10, x0, x3
	lw x8, 100 ( x2 )               //  4-byte Folded Reload
	lw x1, 108 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 112
$cfi5:
	.cfi_adjust_cfa_offset -112
$cfi6:
	.cfi_def_cfa 2, 0
	ret
LBB0_74:                                //  %sw.default
	addi x1, x0, 22
	jalr x0, LBB0_7 ( x0 )
$func_end0:
	.size	$_fseeko_r, ($func_end0)-($_fseeko_r)
	.cfi_endproc

	.globl	$fseeko
	.type	$fseeko,@function
$fseeko:                                //  @fseeko
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	add x3, x0, x12
	add x4, x0, x11
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x5, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x5, x5, x28
	lw x5, 0 ( x5 )
	add x11, x0, x10
	add x12, x0, x4
	add x13, x0, x3
	add x10, x0, x5
	j $_fseeko_r
$func_end1:
	.size	$fseeko, ($func_end1)-($fseeko)
	.cfi_endproc

	.address_space	0	

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
