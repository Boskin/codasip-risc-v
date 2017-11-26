	.text
	.file	"ldtoa.bc"
	.globl	$_ldtoa_r
	.type	$_ldtoa_r,@function
$_ldtoa_r:                              //  @_ldtoa_r
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -416
$cfi2:
	.cfi_adjust_cfa_offset 416
	sw x1, 412 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 404 ( x2 )               //  4-byte Folded Spill
	sw x17, 64 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x16
	sw x15, 60 ( x2 )               //  4-byte Folded Spill
	sw x14, 72 ( x2 )               //  4-byte Folded Spill
	sw x13, 76 ( x2 )               //  4-byte Folded Spill
	add x1, x0, x11
	lw x11, 64 ( x10 )
	not x3, x0
	addi x4, x0, 144
	sw x12, 104 ( x2 )
	sw x1, 100 ( x2 )
	sw x3, 168 ( x2 )
	sw x4, 172 ( x2 )
	sw x10, 80 ( x2 )               //  4-byte Folded Spill
	beqz x11, LBB0_2
LBB0_1:                                 //  %if.then
	lw x1, 68 ( x10 )
	slti x3, x0, 1
	sll x3, x3, x1
	sw x1, 4 ( x11 )
	sw x3, 8 ( x11 )
	call $_Bfree
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	sw x0, 64 ( x1 )
LBB0_2:                                 //  %if.end
	addi x10, x2, 100
	addi x11, x2, 248
	call $e53toe
	ori x28, x0, 32767 & 0xfff
	lhu x21, 266 ( x2 )
	slli x28, x28, 20
	lui x9, 32767 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x9, x28
	and x1, x3, x21
	lh x14, 248 ( x2 )
	beq x1, x3, LBB0_4
LBB0_3:
	add x3, x0, x14
	jalr x0, LBB0_14 ( x0 )
LBB0_4:                                 //  %for.body.preheader.i.i
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lui x3, 65535 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	and x3, x3, x14
	beqz x3, LBB0_6
LBB0_5:
	add x3, x0, x0
	jalr x0, LBB0_15 ( x0 )
LBB0_6:                                 //  %for.inc.i.i
	lhu x4, 250 ( x2 )
	add x3, x0, x0
	add x14, x0, x3
	bgtu x4, x0, LBB0_15
LBB0_7:                                 //  %for.inc.1.i.i
	lhu x4, 252 ( x2 )
	add x3, x0, x0
	add x14, x0, x3
	bgtu x4, x0, LBB0_15
LBB0_8:                                 //  %for.inc.2.i.i
	lhu x4, 254 ( x2 )
	add x3, x0, x0
	add x14, x0, x3
	bgtu x4, x0, LBB0_15
LBB0_9:                                 //  %for.inc.3.i.i
	lhu x4, 256 ( x2 )
	add x3, x0, x0
	add x14, x0, x3
	bgtu x4, x0, LBB0_15
LBB0_10:                                //  %for.inc.4.i.i
	lhu x4, 258 ( x2 )
	add x3, x0, x0
	add x14, x0, x3
	bgtu x4, x0, LBB0_15
LBB0_11:                                //  %for.inc.5.i.i
	lhu x4, 260 ( x2 )
	add x3, x0, x0
	add x14, x0, x3
	bgtu x4, x0, LBB0_15
LBB0_12:                                //  %for.inc.6.i.i
	lhu x4, 262 ( x2 )
	add x3, x0, x0
	add x14, x0, x3
	bgtu x4, x0, LBB0_15
LBB0_13:                                //  %eisnan.exit.i
	lhu x4, 264 ( x2 )
	add x3, x0, x0
	add x14, x0, x3
	bgtu x4, x0, LBB0_15
LBB0_14:                                //  %if.end.i
	add x14, x0, x3
	srli x3, x21, 15
LBB0_15:                                //  %eisneg.exit
	add x5, x0, x0
	lw x4, 76 ( x2 )                //  4-byte Folded Reload
	nop
	xori x7, x4, 3
	bne x4, x5, LBB0_17
LBB0_16:
	addi x4, x0, 20
	jalr x0, LBB0_18 ( x0 )
LBB0_17:                                //  %eisneg.exit
	sltu x4, x0, x7
	andi x4, x4, 1
	lw x5, 72 ( x2 )                //  4-byte Folded Reload
	nop
	sub x4, x5, x4
LBB0_18:                                //  %eisneg.exit
	sw x3, 0 ( x8 )
	addi x3, x0, 42
	bgt x3, x4, LBB0_20
LBB0_19:                                //  %eisneg.exit
	add x4, x0, x3
LBB0_20:                                //  %eisneg.exit
	lw x5, 172 ( x2 )
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x9, x28
	sw x7, 56 ( x2 )                //  4-byte Folded Spill
	sw x4, 68 ( x2 )                //  4-byte Folded Spill
	sw x5, 52 ( x2 )                //  4-byte Folded Spill
	beq x1, x3, LBB0_27
LBB0_21:                                //  %entry.if.end_crit_edge.i
	lh x13, 264 ( x2 )
	addi x1, x2, 248
	lh x12, 14 ( x1 )
	lh x15, 12 ( x1 )
	lh x16, 10 ( x1 )
	lh x17, 8 ( x1 )
	lh x18, 6 ( x1 )
	lh x19, 4 ( x1 )
	lh x20, 2 ( x1 )
LBB0_22:                                //  %if.end.i262
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x9, x28
	lui x11, 32768>>12 
	and x10, x11, x21
	add x3, x0, x0
	sw x3, 88 ( x2 )                //  4-byte Folded Spill
	beq x10, x3, LBB0_24
LBB0_23:                                //  %if.end.i262
	and x21, x1, x21
LBB0_24:                                //  %if.end.i262
	addi x1, x0, 144
	sw x1, 172 ( x2 )
	sh x14, 352 ( x2 )
	addi x1, x2, 352
	sh x20, 2 ( x1 )
	sh x19, 4 ( x1 )
	sh x18, 6 ( x1 )
	sh x17, 8 ( x1 )
	sh x16, 10 ( x1 )
	sh x15, 12 ( x1 )
	sh x12, 14 ( x1 )
	sh x13, 16 ( x1 )
	sh x21, 370 ( x2 )
	sh x0, 326 ( x2 )
	addi x1, x2, 326
	sh x0, 2 ( x1 )
	sh x0, 4 ( x1 )
	sh x0, 6 ( x1 )
	sh x0, 8 ( x1 )
	sh x0, 10 ( x1 )
	sh x0, 12 ( x1 )
	sh x0, 14 ( x1 )
	sh x11, 16 ( x1 )
	lui x1, 16383 >> 12 & 0xfffff
	ori x28, x0, 16383 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	sh x1, 344 ( x2 )
	bgtu x21, x0, LBB0_39
LBB0_25:                                //  %for.body.preheader.i263
	or x1, x13, x12
	or x1, x15, x1
	or x1, x16, x1
	or x1, x17, x1
	or x1, x18, x1
	or x1, x19, x1
	or x1, x20, x1
	or x1, x14, x1
	lui x3, 65535 >> 12 & 0xfffff
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	and x1, x3, x1
	bgtu x1, x0, LBB0_45
LBB0_26:
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	jalr x0, LBB0_177 ( x0 )
LBB0_27:                                //  %for.body.preheader.i.i236
	lui x1, 65535 >> 12 & 0xfffff
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	and x1, x1, x14
	bgtu x1, x0, LBB0_37
LBB0_28:                                //  %for.inc.i.i239
	lhu x1, 250 ( x2 )
	nop
	bgtu x1, x0, LBB0_37
LBB0_29:                                //  %for.inc.1.i.i242
	lhu x1, 252 ( x2 )
	nop
	bgtu x1, x0, LBB0_37
LBB0_30:                                //  %for.inc.2.i.i245
	lhu x1, 254 ( x2 )
	nop
	bgtu x1, x0, LBB0_37
LBB0_31:                                //  %for.inc.3.i.i248
	lhu x1, 256 ( x2 )
	nop
	bgtu x1, x0, LBB0_37
LBB0_32:                                //  %for.inc.4.i.i251
	lhu x1, 258 ( x2 )
	nop
	bgtu x1, x0, LBB0_37
LBB0_33:                                //  %for.inc.5.i.i254
	lhu x1, 260 ( x2 )
	nop
	bgtu x1, x0, LBB0_37
LBB0_34:                                //  %for.inc.6.i.i257
	lhu x1, 262 ( x2 )
	nop
	bgtu x1, x0, LBB0_37
LBB0_35:                                //  %eisnan.exit.i260
	lhu x1, 264 ( x2 )
	nop
	bgtu x1, x0, LBB0_37
LBB0_36:
	add x13, x0, x0
	add x12, x0, x13
	add x15, x0, x13
	add x16, x0, x13
	add x17, x0, x13
	add x18, x0, x13
	add x19, x0, x13
	add x20, x0, x13
	add x14, x0, x13
	jalr x0, LBB0_22 ( x0 )
LBB0_37:                                //  %if.then.i
	lui x1, $.str >> 12 & 0xfffff
	ori x28, x0, $.str & 0xfff
LBB0_38:                                //  %etoasc.exit
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 4 ( x2 )
	addi x1, x2, 110
	sw x1, 0 ( x2 )
	call $sprintf
	lui x1, 9999 >> 12 & 0xfffff
	ori x28, x0, 9999 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x1, x28
	jalr x0, LBB0_249 ( x0 )
LBB0_39:                                //  %tnzro.i
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x9, x28
	bne x21, x1, LBB0_43
LBB0_40:                                //  %if.then30.i
	beqz x10, LBB0_42
LBB0_41:                                //  %if.then32.i
	lui x1, $.str.1 >> 12 & 0xfffff
	ori x28, x0, $.str.1 & 0xfff
	jalr x0, LBB0_38 ( x0 )
LBB0_42:                                //  %if.else34.i
	lui x1, $.str.2 >> 12 & 0xfffff
	ori x28, x0, $.str.2 & 0xfff
	jalr x0, LBB0_38 ( x0 )
LBB0_43:                                //  %land.lhs.true.i
	slli x1, x13, 16
	srai x1, x1, 16
	bgt x0, x1, LBB0_45
LBB0_44:                                //  %if.then47.i
	lui x1, $.str.3 >> 12 & 0xfffff
	ori x28, x0, $.str.3 & 0xfff
	jalr x0, LBB0_38 ( x0 )
LBB0_45:                                //  %if.end49.i
	sw x21, 24 ( x2 )               //  4-byte Folded Spill
	sw x20, 28 ( x2 )               //  4-byte Folded Spill
	sw x19, 32 ( x2 )               //  4-byte Folded Spill
	sw x18, 36 ( x2 )               //  4-byte Folded Spill
	sw x17, 40 ( x2 )               //  4-byte Folded Spill
	sw x16, 44 ( x2 )               //  4-byte Folded Spill
	sw x15, 84 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x14
	sw x13, 96 ( x2 )               //  4-byte Folded Spill
	sw x12, 92 ( x2 )               //  4-byte Folded Spill
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	lui x1, $eone >> 12 & 0xfffff
	ori x28, x0, $eone & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x10, x1, x28
	addi x11, x2, 352
	call $ecmp
	bgtu x10, x0, LBB0_312
LBB0_311:                               //  %if.end49.i
	jalr x0, LBB0_177 ( x0 )
LBB0_312:                               //  %if.end49.i
LBB0_46:                                //  %if.end55.i
	bgt x0, x10, LBB0_314
LBB0_313:                               //  %if.end55.i
	jalr x0, LBB0_132 ( x0 )
LBB0_314:                               //  %if.end55.i
LBB0_47:                                //  %if.then58.i
	sh x8, 300 ( x2 )
	addi x1, x2, 300
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	nop
	sh x3, 2 ( x1 )
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sh x3, 4 ( x1 )
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	nop
	sh x3, 6 ( x1 )
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	sh x3, 8 ( x1 )
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	sh x3, 10 ( x1 )
	lw x3, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sh x3, 12 ( x1 )
	lw x3, 92 ( x2 )                //  4-byte Folded Reload
	nop
	sh x3, 14 ( x1 )
	lw x3, 96 ( x2 )                //  4-byte Folded Reload
	nop
	sh x3, 16 ( x1 )
	lui x1, 16526 >> 12 & 0xfffff
	ori x28, x0, 16526 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	sh x1, 318 ( x2 )
	addi x3, x0, 16
	lui x1, $etens+160 >> 12 & 0xfffff
	ori x28, x0, $etens+160 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x10, x1, x28
	add x1, x0, x0
	sw x1, 88 ( x2 )                //  4-byte Folded Spill
LBB0_48:                                //  %do.body.i
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_63 Depth 2
	sw x3, 92 ( x2 )                //  4-byte Folded Spill
	sw x10, 96 ( x2 )               //  4-byte Folded Spill
	addi x11, x2, 300
	addi x8, x2, 326
	add x12, x0, x8
	addi x13, x2, 168
	call $ediv
	lhu x3, 344 ( x2 )
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x5, 32767 >> 12 & 0xfffff
	or x1, x5, x28
	and x1, x1, x3
	ori x28, x0, -16382 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x4, -16382 >> 12 & 0xfffff
	or x4, x4, x28
	add x4, x4, x1
	lh x15, 16 ( x8 )
	lh x16, 14 ( x8 )
	lh x17, 12 ( x8 )
	lh x18, 10 ( x8 )
	lh x19, 8 ( x8 )
	lh x20, 6 ( x8 )
	lh x21, 4 ( x8 )
	lh x11, 2 ( x8 )
	lh x14, 326 ( x2 )
	add x27, x0, x5
	bgt x4, x0, LBB0_50
LBB0_49:                                //  %if.then.i.i
                                        //    in Loop: Header=BB0_48 Depth=1
	sh x0, 274 ( x2 )
	addi x1, x2, 274
	sh x0, 2 ( x1 )
	sh x0, 4 ( x1 )
	sh x0, 6 ( x1 )
	sh x0, 8 ( x1 )
	sh x0, 10 ( x1 )
	sh x0, 12 ( x1 )
	sh x0, 14 ( x1 )
	sh x0, 16 ( x1 )
	sh x0, 292 ( x2 )
	add x1, x0, x0
	lui x8, 65535 >> 12 & 0xfffff
	addi x31, x2, 110
	jalr x0, LBB0_66 ( x0 )
LBB0_50:                                //  %if.end.i.i
                                        //    in Loop: Header=BB0_48 Depth=1
	sh x14, 274 ( x2 )
	addi x4, x2, 274
	sh x11, 2 ( x4 )
	sh x21, 4 ( x4 )
	sh x20, 6 ( x4 )
	sh x19, 8 ( x4 )
	sh x18, 10 ( x4 )
	sh x17, 12 ( x4 )
	sh x16, 14 ( x4 )
	sh x15, 16 ( x4 )
	ori x28, x0, 16526 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x4, 16526 >> 12 & 0xfffff
	or x4, x4, x28
	sub x1, x4, x1
	sh x3, 292 ( x2 )
	lui x8, 65535 >> 12 & 0xfffff
	addi x5, x0, 15
	bgt x1, x0, LBB0_60
LBB0_51:                                //    in Loop: Header=BB0_48 Depth=1
	add x1, x0, x14
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
LBB0_52:                                //  %for.cond66.1.i
                                        //    in Loop: Header=BB0_48 Depth=1
	lhu x3, 330 ( x2 )
	lhu x4, 278 ( x2 )
	nop
	bne x3, x4, LBB0_123
LBB0_53:                                //  %for.cond66.2.i
                                        //    in Loop: Header=BB0_48 Depth=1
	lhu x4, 332 ( x2 )
	lhu x5, 280 ( x2 )
	nop
	bne x4, x5, LBB0_123
LBB0_54:                                //  %for.cond66.3.i
                                        //    in Loop: Header=BB0_48 Depth=1
	lhu x5, 334 ( x2 )
	lhu x7, 282 ( x2 )
	nop
	bne x5, x7, LBB0_123
LBB0_55:                                //  %for.cond66.4.i
                                        //    in Loop: Header=BB0_48 Depth=1
	lhu x7, 336 ( x2 )
	lhu x9, 284 ( x2 )
	nop
	bne x7, x9, LBB0_123
LBB0_56:                                //  %for.cond66.5.i
                                        //    in Loop: Header=BB0_48 Depth=1
	lhu x9, 338 ( x2 )
	lhu x12, 286 ( x2 )
	nop
	bne x9, x12, LBB0_123
LBB0_57:                                //  %for.cond66.6.i
                                        //    in Loop: Header=BB0_48 Depth=1
	lhu x14, 340 ( x2 )
	lhu x12, 288 ( x2 )
	nop
	bne x14, x12, LBB0_123
LBB0_58:                                //  %for.cond66.7.i
                                        //    in Loop: Header=BB0_48 Depth=1
	lhu x12, 342 ( x2 )
	lhu x13, 290 ( x2 )
	nop
	bne x12, x13, LBB0_123
LBB0_59:                                //  %for.cond66.8.i
                                        //    in Loop: Header=BB0_48 Depth=1
	sh x1, 300 ( x2 )
	addi x1, x2, 300
	sh x11, 2 ( x1 )
	sh x3, 4 ( x1 )
	sh x4, 6 ( x1 )
	sh x5, 8 ( x1 )
	sh x7, 10 ( x1 )
	sh x9, 12 ( x1 )
	sh x14, 14 ( x1 )
	sh x12, 16 ( x1 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x8, x28
	lw x4, 92 ( x2 )                //  4-byte Folded Reload
	nop
	and x1, x1, x4
	lw x3, 88 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x3, x1
	sw x3, 88 ( x2 )                //  4-byte Folded Spill
	lh x1, 344 ( x2 )
	nop
	sh x1, 318 ( x2 )
	jalr x0, LBB0_124 ( x0 )
LBB0_60:                                //  %while.cond.preheader.i.i
                                        //    in Loop: Header=BB0_48 Depth=1
	slti x4, x1, 16
	addi x31, x2, 110
	beqz x4, LBB0_62
LBB0_61:                                //    in Loop: Header=BB0_48 Depth=1
	add x5, x0, x14
	addi x4, x2, 274
	jalr x0, LBB0_65 ( x0 )
LBB0_62:                                //  %while.body.i.i.preheader
                                        //    in Loop: Header=BB0_48 Depth=1
	addi x4, x2, 274
LBB0_63:                                //  %while.body.i.i
                                        //    Parent Loop BB0_48 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sh x0, 0 ( x4 )
	addi x4, x4, 2
	addi x1, x1, -16
	bgt x1, x5, LBB0_63
LBB0_64:                                //  %while.end.loopexit.i.i
                                        //    in Loop: Header=BB0_48 Depth=1
	lh x5, 0 ( x4 )
LBB0_65:                                //  %while.end.i.i
                                        //    in Loop: Header=BB0_48 Depth=1
	slli x1, x1, 1
	ori x28, x0, $bmask & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x7, $bmask >> 12 & 0xfffff
	or x7, x7, x28
	add x1, x7, x1
	lh x1, 0 ( x1 )
	nop
	and x1, x5, x1
	sh x1, 0 ( x4 )
	lh x1, 274 ( x2 )
LBB0_66:                                //  %isitneg.i.i
                                        //    in Loop: Header=BB0_48 Depth=1
	lui x4, 32768>>12 
	and x3, x4, x3
	bgtu x3, x0, LBB0_68
LBB0_67:                                //    in Loop: Header=BB0_48 Depth=1
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_121 ( x0 )
LBB0_68:                                //  %for.body.preheader.i805.i
                                        //    in Loop: Header=BB0_48 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x8, x28
	and x22, x3, x1
	and x23, x3, x14
	lh x3, 290 ( x2 )
	addi x4, x2, 274
	add x13, x0, x4
	lh x4, 14 ( x13 )
	lh x5, 12 ( x13 )
	lh x7, 10 ( x13 )
	lh x9, 8 ( x13 )
	lh x25, 6 ( x13 )
	lh x12, 4 ( x13 )
	lh x13, 2 ( x13 )
	bne x23, x22, LBB0_77
LBB0_69:                                //  %for.body.preheader.i805.i
                                        //    in Loop: Header=BB0_48 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x22, x8, x28
	and x23, x22, x13
	and x22, x22, x11
	bne x22, x23, LBB0_77
LBB0_70:                                //  %for.body.preheader.i805.i
                                        //    in Loop: Header=BB0_48 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x22, x8, x28
	and x23, x22, x12
	and x21, x22, x21
	bne x21, x23, LBB0_77
LBB0_71:                                //  %for.body.preheader.i805.i
                                        //    in Loop: Header=BB0_48 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x21, x8, x28
	and x22, x21, x25
	and x20, x21, x20
	bne x20, x22, LBB0_77
LBB0_72:                                //  %for.body.preheader.i805.i
                                        //    in Loop: Header=BB0_48 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x20, x8, x28
	and x21, x20, x9
	and x19, x20, x19
	bne x19, x21, LBB0_77
LBB0_73:                                //  %for.body.preheader.i805.i
                                        //    in Loop: Header=BB0_48 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x19, x8, x28
	and x20, x19, x7
	and x18, x19, x18
	bne x18, x20, LBB0_77
LBB0_74:                                //  %for.body.preheader.i805.i
                                        //    in Loop: Header=BB0_48 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x18, x8, x28
	and x19, x18, x5
	and x17, x18, x17
	bne x17, x19, LBB0_77
LBB0_75:                                //  %for.body.preheader.i805.i
                                        //    in Loop: Header=BB0_48 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x17, x8, x28
	and x18, x17, x4
	and x16, x17, x16
	bne x16, x18, LBB0_77
LBB0_76:                                //  %for.body.preheader.i805.i
                                        //    in Loop: Header=BB0_48 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x16, x8, x28
	and x17, x16, x3
	and x15, x16, x15
	beq x15, x17, LBB0_51
LBB0_77:                                //  %if.then29.i.i
                                        //    in Loop: Header=BB0_48 Depth=1
	lhu x11, 292 ( x2 )
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x16, x27, x28
	and x15, x16, x11
	bne x15, x16, LBB0_80
LBB0_78:                                //  %for.body.preheader.i.i.i.i
                                        //    in Loop: Header=BB0_48 Depth=1
	or x11, x1, x13
	or x11, x12, x11
	or x10, x25, x11
	or x9, x9, x10
	or x7, x7, x9
	or x5, x5, x7
	or x4, x4, x5
	or x3, x3, x4
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x8, x28
	and x3, x4, x3
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	bgtu x3, x0, LBB0_121
LBB0_79:                                //  %if.then6.i.i.i.i
                                        //    in Loop: Header=BB0_48 Depth=1
	sh x0, 274 ( x2 )
	jalr x0, LBB0_119 ( x0 )
LBB0_80:                                //  %emovi.exit.i.i.i.i
                                        //    in Loop: Header=BB0_48 Depth=1
	ori x28, x0, 16383 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x18, 16383 >> 12 & 0xfffff
	or x26, x18, x28
	sh x26, 2 ( x31 )
	sh x0, 4 ( x31 )
	lui x29, 32768>>12 
	sh x29, 6 ( x31 )
	sh x0, 8 ( x31 )
	sh x0, 10 ( x31 )
	sh x0, 12 ( x31 )
	sh x0, 14 ( x31 )
	sh x0, 16 ( x31 )
	sh x0, 18 ( x31 )
	sh x0, 20 ( x31 )
	sh x0, 22 ( x31 )
	slli x11, x11, 16
	srai x14, x11, 31
	sh x0, 134 ( x2 )
	sh x14, 378 ( x2 )
	addi x10, x2, 378
	sh x15, 2 ( x10 )
	sh x0, 4 ( x10 )
	sh x3, 6 ( x10 )
	sh x4, 8 ( x10 )
	sh x5, 10 ( x10 )
	sh x7, 12 ( x10 )
	sh x9, 14 ( x10 )
	sh x25, 16 ( x10 )
	sh x12, 18 ( x10 )
	sh x13, 20 ( x10 )
	sh x1, 22 ( x10 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x17, x8, x28
	and x30, x17, x15
	sh x0, 402 ( x2 )
	sh x17, 110 ( x2 )
	sub x11, x26, x30
	bgt x11, x0, LBB0_82
LBB0_81:                                //    in Loop: Header=BB0_48 Depth=1
	add x24, x0, x15
	add x16, x0, x14
	add x21, x0, x1
	add x1, x0, x0
	add x14, x0, x1
	add x23, x0, x13
	add x13, x0, x14
	add x22, x0, x12
	add x12, x0, x14
	add x10, x0, x25
	add x25, x0, x14
	add x20, x0, x9
	add x9, x0, x14
	add x18, x0, x7
	add x7, x0, x14
	add x15, x0, x5
	add x5, x0, x14
	add x19, x0, x4
	add x4, x0, x14
	add x14, x0, x3
	add x3, x0, x29
	jalr x0, LBB0_83 ( x0 )
LBB0_82:                                //  %if.then19.i.i.i.i
                                        //    in Loop: Header=BB0_48 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x16, x8, x28
	sh x16, 378 ( x2 )
	ori x28, x0, 16383 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x24, x18, x28
	sh x24, 2 ( x10 )
	sh x0, 4 ( x10 )
	sh x29, 6 ( x10 )
	sh x0, 8 ( x10 )
	sh x0, 10 ( x10 )
	sh x0, 12 ( x10 )
	sh x0, 14 ( x10 )
	sh x0, 16 ( x10 )
	sh x0, 18 ( x10 )
	sh x0, 20 ( x10 )
	sh x0, 22 ( x10 )
	sh x0, 402 ( x2 )
	sh x14, 110 ( x2 )
	sh x15, 2 ( x31 )
	sh x0, 4 ( x31 )
	sh x3, 6 ( x31 )
	sh x4, 8 ( x31 )
	sh x5, 10 ( x31 )
	sh x7, 12 ( x31 )
	sh x9, 14 ( x31 )
	sh x25, 16 ( x31 )
	sh x12, 18 ( x31 )
	sh x13, 20 ( x31 )
	sh x1, 22 ( x31 )
	sub x11, x0, x11
	sh x0, 134 ( x2 )
	add x26, x0, x15
	add x17, x0, x14
	add x14, x0, x0
	add x21, x0, x14
	add x23, x0, x14
	add x22, x0, x14
	add x10, x0, x14
	add x20, x0, x14
	add x18, x0, x14
	add x15, x0, x14
	add x19, x0, x14
	add x14, x0, x29
	add x30, x0, x24
LBB0_83:                                //  %if.end29.i.i.i.i
                                        //    in Loop: Header=BB0_48 Depth=1
	beqz x11, LBB0_86
LBB0_84:                                //  %if.then32.i.i.i.i
                                        //    in Loop: Header=BB0_48 Depth=1
	slti x1, x11, -145
	bgtu x1, x0, LBB0_110
LBB0_85:                                //  %if.end36.i.i.i.i
                                        //    in Loop: Header=BB0_48 Depth=1
	add x10, x0, x31
	sw x30, 84 ( x2 )               //  4-byte Folded Spill
	call $eshift
	lw x13, 84 ( x2 )               //  4-byte Folded Reload
	addi x31, x2, 110
	add x11, x0, x10
	lh x1, 378 ( x2 )
	lh x16, 110 ( x2 )
	addi x10, x2, 378
	jalr x0, LBB0_105 ( x0 )
LBB0_86:                                //  %for.inc.i.i.i.i.i
                                        //    in Loop: Header=BB0_48 Depth=1
	sw x30, 84 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x8, x28
	and x29, x11, x14
	and x30, x11, x3
	add x11, x0, x3
	add x27, x0, x14
	bne x30, x29, LBB0_101
LBB0_87:                                //  %for.inc.1.i.i.i.i.i
                                        //    in Loop: Header=BB0_48 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x8, x28
	and x29, x11, x19
	and x30, x11, x4
	add x11, x0, x4
	add x27, x0, x19
	bne x30, x29, LBB0_101
LBB0_88:                                //  %for.inc.2.i.i.i.i.i
                                        //    in Loop: Header=BB0_48 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x8, x28
	and x29, x11, x15
	and x30, x11, x5
	add x11, x0, x5
	add x27, x0, x15
	bne x30, x29, LBB0_101
LBB0_89:                                //  %for.inc.3.i.i.i.i.i
                                        //    in Loop: Header=BB0_48 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x8, x28
	and x29, x11, x18
	and x30, x11, x7
	add x11, x0, x7
	add x27, x0, x18
	bne x30, x29, LBB0_101
LBB0_90:                                //  %for.inc.4.i.i.i.i.i
                                        //    in Loop: Header=BB0_48 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x8, x28
	and x29, x11, x20
	and x30, x11, x9
	add x11, x0, x9
	add x27, x0, x20
	bne x30, x29, LBB0_101
LBB0_91:                                //  %for.inc.5.i.i.i.i.i
                                        //    in Loop: Header=BB0_48 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x8, x28
	and x29, x11, x10
	and x30, x11, x25
	add x11, x0, x25
	add x27, x0, x10
	bne x30, x29, LBB0_101
LBB0_92:                                //  %for.inc.6.i.i.i.i.i
                                        //    in Loop: Header=BB0_48 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x8, x28
	and x29, x11, x22
	and x30, x11, x12
	add x11, x0, x12
	add x27, x0, x22
	bne x30, x29, LBB0_101
LBB0_93:                                //  %for.inc.7.i.i.i.i.i
                                        //    in Loop: Header=BB0_48 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x8, x28
	and x29, x11, x23
	and x30, x11, x13
	add x11, x0, x13
	add x27, x0, x23
	bne x30, x29, LBB0_101
LBB0_94:                                //  %for.inc.8.i.i.i.i.i
                                        //    in Loop: Header=BB0_48 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x8, x28
	and x29, x11, x21
	and x30, x11, x1
	add x11, x0, x1
	add x27, x0, x21
	bne x30, x29, LBB0_101
LBB0_95:                                //  %if.then44.i.i.i.i
                                        //    in Loop: Header=BB0_48 Depth=1
	add x7, x0, x10
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x8, x28
	and x3, x1, x16
	and x1, x1, x17
	beq x1, x3, LBB0_97
LBB0_96:                                //  %if.then51.i.i.i.i
                                        //    in Loop: Header=BB0_48 Depth=1
	sh x0, 274 ( x2 )
	addi x1, x2, 274
	sh x0, 2 ( x1 )
	sh x0, 4 ( x1 )
	sh x0, 6 ( x1 )
	sh x0, 8 ( x1 )
	sh x0, 10 ( x1 )
	sh x0, 12 ( x1 )
	sh x0, 14 ( x1 )
	sh x0, 16 ( x1 )
	sh x0, 292 ( x2 )
	add x1, x0, x0
	lui x27, 32767 >> 12 & 0xfffff
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_120 ( x0 )
LBB0_97:                                //  %if.end52.i.i.i.i
                                        //    in Loop: Header=BB0_48 Depth=1
	bgtu x24, x0, LBB0_100
LBB0_98:                                //  %if.end52.i.i.i.i
                                        //    in Loop: Header=BB0_48 Depth=1
	slli x1, x14, 16
	srai x1, x1, 16
	bgt x0, x1, LBB0_100
LBB0_99:                                //  %for.body.i.i.preheader.i.i.i
                                        //    in Loop: Header=BB0_48 Depth=1
	lui x1, 32768>>12 
	add x10, x0, x1
	and x1, x10, x22
	srli x1, x1, 15
	and x3, x10, x23
	srli x3, x3, 15
	srli x4, x21, 14
	andi x4, x4, 2
	or x3, x4, x3
	slli x5, x3, 1
	or x1, x1, x5
	slli x1, x1, 1
	add x12, x0, x7
	and x5, x10, x12
	srli x5, x5, 15
	or x1, x5, x1
	addi x11, x2, 378
	sh x0, 24 ( x11 )
	slli x5, x21, 1
	sh x5, 22 ( x11 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x8, 65535 >> 12 & 0xfffff
	or x5, x8, x28
	and x1, x5, x1
	and x7, x10, x20
	srli x7, x7, 15
	slli x9, x1, 1
	or x7, x7, x9
	slli x9, x23, 1
	srli x4, x4, 1
	or x4, x9, x4
	sh x4, 20 ( x11 )
	and x4, x5, x7
	and x7, x10, x18
	srli x7, x7, 15
	slli x9, x4, 1
	or x7, x7, x9
	andi x3, x3, 1
	slli x9, x22, 1
	or x3, x9, x3
	sh x3, 18 ( x11 )
	and x3, x5, x7
	and x7, x10, x15
	srli x7, x7, 15
	slli x9, x3, 1
	or x7, x7, x9
	srli x1, x1, 1
	andi x1, x1, 1
	slli x9, x12, 1
	or x1, x9, x1
	sh x1, 16 ( x11 )
	and x1, x5, x7
	and x7, x10, x19
	srli x7, x7, 15
	slli x9, x1, 1
	or x7, x7, x9
	srli x4, x4, 1
	andi x4, x4, 1
	slli x9, x20, 1
	or x4, x9, x4
	sh x4, 14 ( x11 )
	and x4, x5, x7
	and x5, x5, x14
	slli x7, x4, 1
	srli x9, x5, 15
	or x7, x9, x7
	srli x3, x3, 1
	andi x3, x3, 1
	slli x9, x18, 1
	or x3, x9, x3
	sh x3, 12 ( x11 )
	srli x3, x7, 1
	andi x3, x3, 1
	slli x5, x5, 1
	or x14, x5, x3
	srli x3, x4, 1
	andi x3, x3, 1
	slli x4, x19, 1
	or x3, x4, x3
	srli x1, x1, 1
	andi x1, x1, 1
	slli x4, x15, 1
	or x1, x4, x1
	sh x1, 10 ( x11 )
	sh x3, 8 ( x11 )
	sh x14, 6 ( x11 )
	andi x1, x7, 1
	sh x1, 382 ( x2 )
	jalr x0, LBB0_109 ( x0 )
LBB0_100:                               //  %for.end.i.i.i.i
                                        //    in Loop: Header=BB0_48 Depth=1
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x1, 1
	sh x3, 380 ( x2 )
	lui x27, 32767 >> 12 & 0xfffff
	lui x8, 65535 >> 12 & 0xfffff
	jalr x0, LBB0_111 ( x0 )
LBB0_101:                               //  %if.end74.i.i.i.i
                                        //    in Loop: Header=BB0_48 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x29, x8, x28
	and x27, x29, x27
	and x11, x29, x11
	bgtu x11, x27, LBB0_103
LBB0_102:                               //    in Loop: Header=BB0_48 Depth=1
	add x1, x0, x16
	add x16, x0, x17
	add x11, x0, x0
	addi x10, x2, 378
	jalr x0, LBB0_104 ( x0 )
LBB0_103:                               //  %if.then77.i.i.i.i
                                        //    in Loop: Header=BB0_48 Depth=1
	sh x17, 378 ( x2 )
	add x11, x0, x10
	addi x10, x2, 378
	sh x26, 2 ( x10 )
	sh x0, 4 ( x10 )
	sh x3, 6 ( x10 )
	sh x4, 8 ( x10 )
	sh x5, 10 ( x10 )
	sh x7, 12 ( x10 )
	sh x9, 14 ( x10 )
	sh x25, 16 ( x10 )
	sh x12, 18 ( x10 )
	sh x13, 20 ( x10 )
	sh x1, 22 ( x10 )
	sh x0, 402 ( x2 )
	sh x16, 110 ( x2 )
	sh x24, 2 ( x31 )
	sh x0, 4 ( x31 )
	sh x14, 6 ( x31 )
	sh x19, 8 ( x31 )
	sh x15, 10 ( x31 )
	sh x18, 12 ( x31 )
	sh x20, 14 ( x31 )
	sh x11, 16 ( x31 )
	sh x22, 18 ( x31 )
	sh x23, 20 ( x31 )
	sh x21, 22 ( x31 )
	sh x0, 134 ( x2 )
	add x1, x0, x17
	add x11, x0, x0
LBB0_104:                               //  %if.end85.i.i.i.i
                                        //    in Loop: Header=BB0_48 Depth=1
	lw x13, 84 ( x2 )               //  4-byte Folded Reload
LBB0_105:                               //  %if.end85.i.i.i.i
                                        //    in Loop: Header=BB0_48 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x8, x28
	and x1, x3, x1
	and x3, x3, x16
	bne x3, x1, LBB0_107
LBB0_106:                               //  %if.then92.i.i.i.i
                                        //    in Loop: Header=BB0_48 Depth=1
	lhu x1, 24 ( x31 )
	lhu x3, 24 ( x10 )
	nop
	add x1, x1, x3
	sh x1, 24 ( x10 )
	srli x1, x1, 16
	lhu x3, 22 ( x31 )
	nop
	add x1, x1, x3
	lhu x3, 22 ( x10 )
	nop
	add x1, x3, x1
	sh x1, 22 ( x10 )
	srli x1, x1, 16
	andi x1, x1, 1
	lhu x3, 20 ( x31 )
	nop
	add x1, x3, x1
	lhu x3, 20 ( x10 )
	nop
	add x1, x3, x1
	sh x1, 20 ( x10 )
	lhu x3, 18 ( x31 )
	lhu x4, 18 ( x10 )
	nop
	add x3, x3, x4
	srli x1, x1, 16
	andi x1, x1, 1
	add x1, x1, x3
	sh x1, 18 ( x10 )
	lhu x3, 16 ( x31 )
	lhu x4, 16 ( x10 )
	nop
	add x3, x3, x4
	srli x1, x1, 16
	andi x1, x1, 1
	add x1, x1, x3
	sh x1, 16 ( x10 )
	lhu x3, 14 ( x31 )
	lhu x4, 14 ( x10 )
	nop
	add x3, x3, x4
	srli x1, x1, 16
	andi x1, x1, 1
	add x1, x1, x3
	sh x1, 14 ( x10 )
	lhu x3, 12 ( x31 )
	lhu x4, 12 ( x10 )
	nop
	add x3, x3, x4
	srli x1, x1, 16
	andi x1, x1, 1
	add x1, x1, x3
	sh x1, 12 ( x10 )
	lhu x3, 10 ( x31 )
	lhu x4, 10 ( x10 )
	nop
	add x3, x3, x4
	srli x1, x1, 16
	andi x1, x1, 1
	add x1, x1, x3
	sh x1, 10 ( x10 )
	lhu x3, 8 ( x31 )
	lhu x4, 8 ( x10 )
	nop
	add x3, x3, x4
	srli x1, x1, 16
	andi x1, x1, 1
	add x1, x1, x3
	sh x1, 8 ( x10 )
	lhu x3, 6 ( x31 )
	lhu x4, 6 ( x10 )
	nop
	add x3, x3, x4
	srli x1, x1, 16
	andi x1, x1, 1
	add x1, x1, x3
	sh x1, 6 ( x10 )
	lhu x3, 114 ( x2 )
	lhu x4, 382 ( x2 )
	nop
	add x3, x3, x4
	srli x1, x1, 16
	andi x1, x1, 1
	add x1, x1, x3
	add x12, x0, x0
	jalr x0, LBB0_108 ( x0 )
LBB0_107:                               //  %if.else95.i.i.i.i
                                        //    in Loop: Header=BB0_48 Depth=1
	lhu x1, 24 ( x31 )
	lhu x3, 24 ( x10 )
	nop
	sub x1, x3, x1
	sh x1, 24 ( x10 )
	lhu x3, 22 ( x31 )
	lhu x4, 22 ( x10 )
	nop
	sub x3, x4, x3
	srli x1, x1, 16
	andi x1, x1, 1
	sub x1, x3, x1
	sh x1, 22 ( x10 )
	lhu x3, 20 ( x31 )
	lhu x4, 20 ( x10 )
	nop
	sub x3, x4, x3
	srli x1, x1, 16
	andi x1, x1, 1
	sub x1, x3, x1
	sh x1, 20 ( x10 )
	lhu x3, 18 ( x31 )
	lhu x4, 18 ( x10 )
	nop
	sub x3, x4, x3
	srli x1, x1, 16
	andi x1, x1, 1
	sub x1, x3, x1
	sh x1, 18 ( x10 )
	lhu x3, 16 ( x31 )
	lhu x4, 16 ( x10 )
	nop
	sub x3, x4, x3
	srli x1, x1, 16
	andi x1, x1, 1
	sub x1, x3, x1
	sh x1, 16 ( x10 )
	lhu x3, 14 ( x31 )
	lhu x4, 14 ( x10 )
	nop
	sub x3, x4, x3
	srli x1, x1, 16
	andi x1, x1, 1
	sub x1, x3, x1
	sh x1, 14 ( x10 )
	lhu x3, 12 ( x31 )
	lhu x4, 12 ( x10 )
	nop
	sub x3, x4, x3
	srli x1, x1, 16
	andi x1, x1, 1
	sub x1, x3, x1
	sh x1, 12 ( x10 )
	lhu x3, 10 ( x31 )
	lhu x4, 10 ( x10 )
	nop
	sub x3, x4, x3
	srli x1, x1, 16
	andi x1, x1, 1
	sub x1, x3, x1
	sh x1, 10 ( x10 )
	lhu x3, 8 ( x31 )
	lhu x4, 8 ( x10 )
	nop
	sub x3, x4, x3
	srli x1, x1, 16
	andi x1, x1, 1
	sub x1, x3, x1
	sh x1, 8 ( x10 )
	lhu x3, 6 ( x31 )
	lhu x4, 6 ( x10 )
	nop
	sub x3, x4, x3
	srli x1, x1, 16
	andi x1, x1, 1
	sub x1, x3, x1
	sh x1, 6 ( x10 )
	lhu x3, 114 ( x2 )
	lhu x4, 382 ( x2 )
	nop
	sub x3, x4, x3
	srli x1, x1, 16
	andi x1, x1, 1
	sub x1, x3, x1
	slti x12, x0, 1
LBB0_108:                               //  %if.end98.i.i.i.i
                                        //    in Loop: Header=BB0_48 Depth=1
	sh x1, 4 ( x10 )
	addi x14, x0, 64
	addi x15, x2, 168
	call $emdnorm
	lh x14, 384 ( x2 )
LBB0_109:                               //  %donethread-pre-split.i.i.i.i
                                        //    in Loop: Header=BB0_48 Depth=1
	lui x27, 32767 >> 12 & 0xfffff
LBB0_110:                               //  %donethread-pre-split.i.i.i.i
                                        //    in Loop: Header=BB0_48 Depth=1
	lh x17, 378 ( x2 )
	lh x3, 380 ( x2 )
LBB0_111:                               //  %done.i.i.i.i
                                        //    in Loop: Header=BB0_48 Depth=1
	ori x28, x0, -32768 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, -32768 >> 12 & 0xfffff
	or x4, x1, x28
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x5, x8, x28
	and x7, x5, x17
	add x1, x0, x3
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	add x9, x0, x0
	beq x7, x9, LBB0_113
LBB0_112:                               //  %done.i.i.i.i
                                        //    in Loop: Header=BB0_48 Depth=1
	or x1, x4, x3
LBB0_113:                               //  %done.i.i.i.i
                                        //    in Loop: Header=BB0_48 Depth=1
	and x3, x5, x3
	sh x1, 292 ( x2 )
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x27, x28
	bne x3, x4, LBB0_116
LBB0_114:                               //  %for.body.preheader.i.i.i.i.i.i
                                        //    in Loop: Header=BB0_48 Depth=1
	addi x3, x2, 378
	add x11, x0, x3
	lh x3, 8 ( x11 )
	nop
	or x3, x14, x3
	lh x4, 10 ( x11 )
	nop
	or x3, x4, x3
	lh x4, 12 ( x11 )
	nop
	or x3, x4, x3
	lh x4, 22 ( x11 )
	lh x5, 20 ( x11 )
	lh x7, 18 ( x11 )
	lh x9, 16 ( x11 )
	lh x12, 14 ( x11 )
	lh x11, 402 ( x2 )
	sh x0, 274 ( x2 )
	addi x13, x2, 274
	sh x0, 2 ( x13 )
	sh x0, 4 ( x13 )
	sh x0, 6 ( x13 )
	sh x0, 8 ( x13 )
	sh x0, 10 ( x13 )
	sh x0, 12 ( x13 )
	or x3, x12, x3
	or x3, x9, x3
	or x3, x7, x3
	or x3, x5, x3
	or x3, x4, x3
	or x3, x11, x3
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x8, x28
	and x3, x4, x3
	sh x0, 288 ( x2 )
	beqz x3, LBB0_117
LBB0_115:                               //  %if.then11.i.i.i.i.i
                                        //    in Loop: Header=BB0_48 Depth=1
	lui x1, 49152>>12 
	sh x1, 290 ( x2 )
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x27, x28
	jalr x0, LBB0_118 ( x0 )
LBB0_116:                               //  %if.end13.i.i.i.i.i
                                        //    in Loop: Header=BB0_48 Depth=1
	addi x1, x2, 274
	add x3, x0, x1
	sh x14, 16 ( x3 )
	addi x1, x2, 378
	add x4, x0, x1
	lh x1, 8 ( x4 )
	nop
	sh x1, 14 ( x3 )
	lh x1, 10 ( x4 )
	nop
	sh x1, 12 ( x3 )
	lh x1, 12 ( x4 )
	nop
	sh x1, 10 ( x3 )
	lh x1, 14 ( x4 )
	nop
	sh x1, 8 ( x3 )
	lh x1, 16 ( x4 )
	nop
	sh x1, 6 ( x3 )
	lh x1, 18 ( x4 )
	nop
	sh x1, 4 ( x3 )
	lh x1, 20 ( x4 )
	nop
	sh x1, 276 ( x2 )
	lh x1, 400 ( x2 )
	nop
	sh x1, 274 ( x2 )
	jalr x0, LBB0_120 ( x0 )
LBB0_117:                               //  %if.end12.i.i.i.i.i
                                        //    in Loop: Header=BB0_48 Depth=1
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x27, x28
	or x1, x3, x1
	sh x0, 290 ( x2 )
LBB0_118:                               //  %cleanup.sink.split.i.i.i.i.i
                                        //    in Loop: Header=BB0_48 Depth=1
	sh x1, 292 ( x2 )
LBB0_119:                               //  %eadd1.exit.i.i.i
                                        //    in Loop: Header=BB0_48 Depth=1
	add x1, x0, x0
LBB0_120:                               //  %eadd1.exit.i.i.i
                                        //    in Loop: Header=BB0_48 Depth=1
	lh x14, 326 ( x2 )
LBB0_121:                               //  %for.body69.preheader.i
                                        //    in Loop: Header=BB0_48 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x8, x28
	and x4, x3, x1
	and x3, x3, x14
	bne x3, x4, LBB0_123
LBB0_122:                               //  %for.cond66.i
                                        //    in Loop: Header=BB0_48 Depth=1
	lhu x11, 276 ( x2 )
	lhu x3, 328 ( x2 )
	nop
	beq x3, x11, LBB0_52
LBB0_123:                               //    in Loop: Header=BB0_48 Depth=1
	lw x4, 92 ( x2 )                //  4-byte Folded Reload
	nop
LBB0_124:                               //  %noint.i
                                        //    in Loop: Header=BB0_48 Depth=1
	srli x1, x4, 1
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x27, x28
	and x3, x3, x1
	addi x10, x10, 20
	bgtu x3, x0, LBB0_48
LBB0_125:                               //  %do.end.i
	addi x11, x2, 300
	lh x1, 18 ( x11 )
	addi x3, x2, 352
	add x4, x0, x3
	lh x3, 18 ( x4 )
	nop
	add x1, x1, x3
	lui x3, 49010 >> 12 & 0xfffff
	ori x28, x0, 49010 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	add x1, x3, x1
	sh x1, 18 ( x11 )
	lh x3, 300 ( x2 )
	nop
	sh x3, 352 ( x2 )
	lh x3, 2 ( x11 )
	nop
	sh x3, 2 ( x4 )
	lh x3, 4 ( x11 )
	nop
	sh x3, 4 ( x4 )
	lh x3, 6 ( x11 )
	nop
	sh x3, 6 ( x4 )
	lh x3, 8 ( x11 )
	nop
	sh x3, 8 ( x4 )
	lh x3, 10 ( x11 )
	nop
	sh x3, 10 ( x4 )
	lh x3, 12 ( x11 )
	nop
	sh x3, 12 ( x4 )
	lh x3, 14 ( x11 )
	nop
	sh x3, 14 ( x4 )
	lh x3, 316 ( x2 )
	nop
	sh x3, 368 ( x2 )
	sh x1, 18 ( x4 )
	sh x0, 326 ( x2 )
	addi x1, x2, 326
	add x3, x0, x1
	sh x0, 2 ( x3 )
	sh x0, 4 ( x3 )
	sh x0, 6 ( x3 )
	sh x0, 8 ( x3 )
	sh x0, 10 ( x3 )
	sh x0, 12 ( x3 )
	sh x0, 14 ( x3 )
	lui x1, 32768>>12 
	sh x1, 16 ( x3 )
	ori x28, x0, 16383 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 16383 >> 12 & 0xfffff
	or x1, x1, x28
	sh x1, 344 ( x2 )
	lui x1, $etens+240 >> 12 & 0xfffff
	ori x28, x0, $etens+240 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x10, x1, x28
	call $ecmp
	bgt x10, x0, LBB0_177
LBB0_126:                               //  %while.body.i.preheader
	lui x1, $etens >> 12 & 0xfffff
	ori x28, x0, $etens & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x8, x1, x28
	lui x1, 4096>>12 
	sw x1, 96 ( x2 )                //  4-byte Folded Spill
	addi x11, x2, 300
	jalr x0, LBB0_128 ( x0 )
LBB0_127:                               //  %while.cond.i
                                        //    in Loop: Header=BB0_128 Depth=1
	sw x1, 96 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, $etens+240 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $etens+240 >> 12 & 0xfffff
	or x10, x1, x28
	addi x1, x2, 300
	add x11, x0, x1
	call $ecmp
	addi x11, x2, 300
	addi x8, x8, 20
	bgt x10, x0, LBB0_177
LBB0_128:                               //  %while.body.i
                                        //  =>This Inner Loop Header: Depth=1
	add x10, x0, x8
	call $ecmp
	ble x10, x0, LBB0_130
LBB0_129:                               //    in Loop: Header=BB0_128 Depth=1
	lw x4, 96 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_131 ( x0 )
LBB0_130:                               //  %if.then106.i
                                        //    in Loop: Header=BB0_128 Depth=1
	add x10, x0, x8
	addi x11, x2, 300
	add x12, x0, x11
	addi x1, x2, 168
	add x13, x0, x1
	call $ediv
	add x10, x0, x8
	addi x11, x2, 326
	add x12, x0, x11
	addi x13, x2, 168
	call $emul
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 65535 >> 12 & 0xfffff
	or x1, x1, x28
	lw x4, 96 ( x2 )                //  4-byte Folded Reload
	nop
	and x1, x1, x4
	lw x3, 88 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x1, x3
	sw x3, 88 ( x2 )                //  4-byte Folded Spill
LBB0_131:                               //  %if.end113.i
                                        //    in Loop: Header=BB0_128 Depth=1
	srli x1, x4, 1
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, 32767 >> 12 & 0xfffff
	or x3, x3, x28
	and x1, x3, x1
	bgtu x1, x0, LBB0_127
	jalr x0, LBB0_177 ( x0 )
LBB0_132:                               //  %if.else123.i
	lw x10, 92 ( x2 )               //  4-byte Folded Reload
	lw x12, 96 ( x2 )               //  4-byte Folded Reload
	add x7, x0, x8
	lw x13, 84 ( x2 )               //  4-byte Folded Reload
	lw x14, 44 ( x2 )               //  4-byte Folded Reload
	lw x15, 40 ( x2 )               //  4-byte Folded Reload
	lw x16, 36 ( x2 )               //  4-byte Folded Reload
	lw x17, 32 ( x2 )               //  4-byte Folded Reload
	lw x18, 28 ( x2 )               //  4-byte Folded Reload
	lw x5, 24 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x5, x0, LBB0_139
LBB0_133:                               //  %while.cond129.preheader.i
	slli x1, x12, 16
	srai x1, x1, 16
	bgez x1, LBB0_135
LBB0_134:
	add x3, x0, x0
	sw x3, 88 ( x2 )                //  4-byte Folded Spill
	addi x5, x2, 326
	jalr x0, LBB0_169 ( x0 )
LBB0_135:                               //  %while.body135.i.preheader
	add x8, x0, x0
LBB0_136:                               //  %while.body135.i
                                        //  =>This Inner Loop Header: Depth=1
	ori x28, x0, $etens+240 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, $etens+240 >> 12 & 0xfffff
	or x10, x3, x28
	addi x11, x2, 352
	add x12, x0, x11
	addi x13, x2, 168
	call $emul
	addi x8, x8, -1
	lh x12, 368 ( x2 )
	nop
	bgez x12, LBB0_136
LBB0_137:                               //  %if.end197.loopexit.i
	sw x8, 88 ( x2 )                //  4-byte Folded Spill
	lh x3, 370 ( x2 )
	addi x1, x2, 352
	lh x10, 14 ( x1 )
	lh x13, 12 ( x1 )
	lh x14, 10 ( x1 )
	lh x15, 8 ( x1 )
	lh x16, 6 ( x1 )
	lh x17, 4 ( x1 )
	lh x18, 2 ( x1 )
	lh x7, 352 ( x2 )
	addi x5, x2, 326
	jalr x0, LBB0_169 ( x0 )
LBB0_139:                               //  %if.else140.i
	slli x1, x5, 16
	srai x3, x1, 31
	sh x3, 274 ( x2 )
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 32767 >> 12 & 0xfffff
	or x4, x1, x28
	and x1, x4, x5
	sh x1, 276 ( x2 )
	bne x1, x4, LBB0_143
LBB0_140:                               //  %for.body.preheader.i.i1014.i
	or x4, x12, x10
	or x4, x13, x4
	or x4, x14, x4
	or x4, x15, x4
	or x4, x16, x4
	or x4, x17, x4
	or x4, x18, x4
	or x4, x7, x4
	lui x5, 65535 >> 12 & 0xfffff
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x5, x5, x28
	and x5, x5, x4
	addi x11, x2, 282
	addi x4, x2, 274
	sh x0, 4 ( x4 )
	addi x19, x4, 6
	bgtu x5, x0, LBB0_142
LBB0_141:                               //  %for.body23.preheader.i1048.i
	sh x0, 6 ( x4 )
	sh x0, 8 ( x4 )
	sh x0, 10 ( x4 )
	sh x0, 12 ( x4 )
	sh x0, 14 ( x4 )
	sh x0, 16 ( x4 )
	sh x0, 18 ( x4 )
	sh x0, 20 ( x4 )
	sh x0, 22 ( x4 )
	add x7, x0, x0
	sh x0, 298 ( x2 )
	add x18, x0, x7
	add x17, x0, x7
	add x16, x0, x7
	add x15, x0, x7
	add x14, x0, x7
	add x13, x0, x7
	add x10, x0, x7
	add x12, x0, x7
	jalr x0, LBB0_144 ( x0 )
LBB0_142:                               //  %if.then13.i1067.i
	sh x12, 6 ( x4 )
	sh x10, 8 ( x4 )
	sh x13, 10 ( x4 )
	sh x14, 12 ( x4 )
	sh x15, 14 ( x4 )
	sh x16, 16 ( x4 )
	sh x17, 18 ( x4 )
	sh x18, 20 ( x4 )
	sh x7, 296 ( x2 )
	jalr x0, LBB0_144 ( x0 )
LBB0_143:                               //  %if.end28.i1085.i
	addi x4, x2, 274
	sh x0, 4 ( x4 )
	sh x12, 6 ( x4 )
	sh x10, 8 ( x4 )
	sh x13, 10 ( x4 )
	sh x14, 12 ( x4 )
	sh x15, 14 ( x4 )
	sh x16, 16 ( x4 )
	sh x17, 18 ( x4 )
	sh x18, 20 ( x4 )
	sh x7, 22 ( x4 )
	addi x11, x4, 8
	addi x19, x4, 6
	sh x0, 298 ( x2 )
LBB0_144:                               //  %for.cond143.preheader.i
	add x4, x0, x0
	addi x8, x2, 300
	sw x4, 88 ( x2 )                //  4-byte Folded Spill
	sw x4, 96 ( x2 )                //  4-byte Folded Spill
	sw x11, 92 ( x2 )               //  4-byte Folded Spill
	sw x19, 84 ( x2 )               //  4-byte Folded Spill
LBB0_145:                               //  %if.end153.i
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_146 Depth 2
	sh x3, 300 ( x2 )
	sh x1, 2 ( x8 )
	sh x0, 4 ( x8 )
	sh x12, 6 ( x8 )
	sh x10, 8 ( x8 )
	sh x13, 10 ( x8 )
	sh x14, 12 ( x8 )
	sh x15, 14 ( x8 )
	sh x16, 16 ( x8 )
	sh x17, 18 ( x8 )
	sh x18, 20 ( x8 )
	sh x7, 22 ( x8 )
	sh x0, 324 ( x2 )
	add x10, x0, x8
	call $eshdn1
	add x10, x0, x8
	call $eshdn1
	lui x21, 65535 >> 12 & 0xfffff
	addi x20, x2, 274
	lw x19, 84 ( x2 )               //  4-byte Folded Reload
	lw x11, 92 ( x2 )               //  4-byte Folded Reload
	lhu x1, 24 ( x20 )
	lhu x3, 324 ( x2 )
	nop
	add x1, x1, x3
	sh x1, 324 ( x2 )
	srli x1, x1, 16
	lhu x3, 22 ( x20 )
	nop
	add x1, x1, x3
	lhu x3, 22 ( x8 )
	nop
	add x1, x3, x1
	sh x1, 22 ( x8 )
	srli x1, x1, 16
	andi x1, x1, 1
	lhu x3, 20 ( x20 )
	nop
	add x1, x3, x1
	lhu x3, 20 ( x8 )
	nop
	add x1, x3, x1
	sh x1, 20 ( x8 )
	lhu x3, 18 ( x20 )
	lhu x4, 18 ( x8 )
	nop
	add x3, x3, x4
	srli x1, x1, 16
	andi x1, x1, 1
	add x1, x1, x3
	sh x1, 18 ( x8 )
	lhu x3, 16 ( x20 )
	lhu x4, 16 ( x8 )
	nop
	add x3, x3, x4
	srli x1, x1, 16
	andi x1, x1, 1
	add x1, x1, x3
	sh x1, 16 ( x8 )
	lhu x3, 14 ( x20 )
	lhu x4, 14 ( x8 )
	nop
	add x3, x3, x4
	srli x1, x1, 16
	andi x1, x1, 1
	add x1, x1, x3
	sh x1, 14 ( x8 )
	lhu x3, 12 ( x20 )
	lhu x4, 12 ( x8 )
	nop
	add x3, x3, x4
	srli x1, x1, 16
	andi x1, x1, 1
	add x1, x1, x3
	sh x1, 12 ( x8 )
	lhu x3, 10 ( x20 )
	lhu x4, 10 ( x8 )
	nop
	add x3, x3, x4
	srli x1, x1, 16
	andi x1, x1, 1
	add x1, x1, x3
	sh x1, 10 ( x8 )
	lhu x3, 0 ( x11 )
	lhu x4, 8 ( x8 )
	nop
	add x3, x3, x4
	srli x1, x1, 16
	andi x1, x1, 1
	add x1, x1, x3
	sh x1, 8 ( x8 )
	lhu x3, 0 ( x19 )
	lhu x4, 6 ( x8 )
	nop
	add x3, x3, x4
	srli x1, x1, 16
	andi x1, x1, 1
	add x1, x1, x3
	sh x1, 6 ( x8 )
	lh x3, 4 ( x8 )
	lh x4, 278 ( x2 )
	nop
	add x3, x4, x3
	srli x1, x1, 16
	andi x1, x1, 1
	add x3, x1, x3
	sh x3, 4 ( x8 )
	lhu x1, 2 ( x8 )
	nop
	addi x1, x1, 3
	sh x1, 2 ( x8 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x21, x28
	and x3, x4, x3
	beqz x3, LBB0_148
LBB0_146:                               //  %while.body169.i
                                        //    Parent Loop BB0_145 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x10, x0, x8
	call $eshdn1
	lhu x1, 2 ( x8 )
	nop
	addi x1, x1, 1
	sh x1, 2 ( x8 )
	lhu x3, 304 ( x2 )
	nop
	bgtu x3, x0, LBB0_146
LBB0_147:                               //    in Loop: Header=BB0_145 Depth=1
	lw x11, 92 ( x2 )               //  4-byte Folded Reload
	lw x19, 84 ( x2 )               //  4-byte Folded Reload
	addi x20, x2, 274
	lui x21, 65535 >> 12 & 0xfffff
LBB0_148:                               //  %while.end175.i
                                        //    in Loop: Header=BB0_145 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x21, x28
	and x3, x3, x1
	ori x28, x0, 16382 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x4, 16382 >> 12 & 0xfffff
	or x4, x4, x28
	lui x9, 32767 >> 12 & 0xfffff
	bgtu x3, x4, LBB0_150
LBB0_149:                               //  %while.end175.i
                                        //    in Loop: Header=BB0_145 Depth=1
	lh x3, 324 ( x2 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x21, x28
	and x3, x4, x3
	beqz x3, LBB0_151
LBB0_150:                               //  %while.end175.for.end194_crit_edge.i
	lh x12, 0 ( x19 )
	lh x1, 276 ( x2 )
	lh x3, 274 ( x2 )
	jalr x0, LBB0_152 ( x0 )
LBB0_151:                               //  %if.end188.i
                                        //    in Loop: Header=BB0_145 Depth=1
	lh x3, 300 ( x2 )
	nop
	sh x3, 274 ( x2 )
	sh x1, 2 ( x20 )
	sh x0, 4 ( x20 )
	lh x12, 6 ( x8 )
	nop
	sh x12, 0 ( x19 )
	lh x10, 8 ( x8 )
	nop
	sh x10, 0 ( x11 )
	lh x13, 10 ( x8 )
	nop
	sh x13, 10 ( x20 )
	lh x14, 12 ( x8 )
	nop
	sh x14, 12 ( x20 )
	lh x15, 14 ( x8 )
	nop
	sh x15, 14 ( x20 )
	lh x16, 16 ( x8 )
	nop
	sh x16, 16 ( x20 )
	lh x17, 18 ( x8 )
	nop
	sh x17, 18 ( x20 )
	lh x18, 20 ( x8 )
	nop
	sh x18, 20 ( x20 )
	lh x7, 322 ( x2 )
	nop
	sh x7, 22 ( x20 )
	lw x4, 88 ( x2 )                //  4-byte Folded Reload
	nop
	addi x4, x4, -1
	sw x4, 88 ( x2 )                //  4-byte Folded Spill
	lw x4, 96 ( x2 )                //  4-byte Folded Reload
	nop
	addi x4, x4, 1
	sw x4, 96 ( x2 )                //  4-byte Folded Spill
	slti x4, x4, 43
	sh x0, 298 ( x2 )
	bgtu x4, x0, LBB0_145
LBB0_152:                               //  %for.end194.i
	lui x4, -32768 >> 12 & 0xfffff
	ori x28, x0, -32768 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x4, x28
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x5, x21, x28
	and x7, x5, x3
	add x10, x0, x0
	add x3, x0, x1
	beq x7, x10, LBB0_154
LBB0_153:                               //  %for.end194.i
	or x3, x4, x1
LBB0_154:                               //  %for.end194.i
	and x1, x5, x1
	sh x3, 370 ( x2 )
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x9, x28
	addi x5, x2, 326
	addi x7, x2, 352
	bne x1, x4, LBB0_166
LBB0_155:                               //  %for.body.preheader.i.i1236.i
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x21, x28
	and x1, x1, x12
	bgtu x1, x0, LBB0_165
LBB0_156:                               //  %for.cond.i.i1239.i
	lhu x1, 0 ( x11 )
	nop
	bgtu x1, x0, LBB0_165
LBB0_157:                               //  %for.cond.1.i.i1242.i
	lhu x1, 284 ( x2 )
	nop
	bgtu x1, x0, LBB0_165
LBB0_158:                               //  %for.cond.2.i.i1245.i
	lhu x1, 286 ( x2 )
	nop
	bgtu x1, x0, LBB0_165
LBB0_159:                               //  %for.cond.3.i.i1248.i
	lhu x1, 288 ( x2 )
	nop
	bgtu x1, x0, LBB0_165
LBB0_160:                               //  %for.cond.4.i.i1251.i
	lhu x1, 290 ( x2 )
	nop
	bgtu x1, x0, LBB0_165
LBB0_161:                               //  %for.cond.5.i.i1254.i
	lhu x1, 292 ( x2 )
	nop
	bgtu x1, x0, LBB0_165
LBB0_162:                               //  %for.cond.6.i.i1257.i
	lhu x1, 294 ( x2 )
	nop
	bgtu x1, x0, LBB0_165
LBB0_163:                               //  %for.cond.7.i.i1260.i
	lhu x1, 296 ( x2 )
	nop
	bgtu x1, x0, LBB0_165
LBB0_164:                               //  %eiisnan.exit.i1263.i
	lhu x1, 298 ( x2 )
	nop
	beqz x1, LBB0_167
LBB0_165:                               //  %if.then11.i1272.i
	sh x0, 352 ( x2 )
	sh x0, 2 ( x7 )
	sh x0, 4 ( x7 )
	sh x0, 6 ( x7 )
	sh x0, 8 ( x7 )
	sh x0, 10 ( x7 )
	sh x0, 12 ( x7 )
	sh x0, 14 ( x7 )
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x9, x28
	lui x12, 49152>>12 
	sh x12, 368 ( x2 )
	jalr x0, LBB0_168 ( x0 )
LBB0_166:                               //  %if.end13.i1299.i
	sh x12, 16 ( x7 )
	lh x10, 0 ( x11 )
	nop
	sh x10, 14 ( x7 )
	lh x13, 10 ( x20 )
	nop
	sh x13, 12 ( x7 )
	lh x14, 12 ( x20 )
	nop
	sh x14, 10 ( x7 )
	lh x15, 14 ( x20 )
	nop
	sh x15, 8 ( x7 )
	lh x16, 16 ( x20 )
	nop
	sh x16, 6 ( x7 )
	lh x17, 18 ( x20 )
	nop
	sh x17, 4 ( x7 )
	lh x18, 20 ( x20 )
	nop
	sh x18, 354 ( x2 )
	lh x7, 296 ( x2 )
	nop
	sh x7, 352 ( x2 )
	jalr x0, LBB0_169 ( x0 )
LBB0_167:                               //  %if.end12.i1281.i
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x9, x28
	or x3, x1, x3
	sh x0, 352 ( x2 )
	sh x0, 2 ( x7 )
	sh x0, 4 ( x7 )
	sh x0, 6 ( x7 )
	sh x0, 8 ( x7 )
	sh x0, 10 ( x7 )
	sh x0, 12 ( x7 )
	sh x0, 14 ( x7 )
	add x12, x0, x0
	sh x0, 368 ( x2 )
LBB0_168:                               //  %cleanup.sink.split.i1301.i
	sh x3, 370 ( x2 )
	add x13, x0, x10
	add x14, x0, x10
	add x15, x0, x10
	add x16, x0, x10
	add x17, x0, x10
	add x18, x0, x10
	add x7, x0, x10
LBB0_169:                               //  %if.end197.i
	sh x7, 274 ( x2 )
	addi x11, x2, 274
	sh x18, 2 ( x11 )
	sh x17, 4 ( x11 )
	sh x16, 6 ( x11 )
	sh x15, 8 ( x11 )
	sh x14, 10 ( x11 )
	sh x13, 12 ( x11 )
	sh x10, 14 ( x11 )
	sh x12, 16 ( x11 )
	sh x3, 292 ( x2 )
	sh x0, 326 ( x2 )
	sh x0, 2 ( x5 )
	sh x0, 4 ( x5 )
	sh x0, 6 ( x5 )
	sh x0, 8 ( x5 )
	sh x0, 10 ( x5 )
	sh x0, 12 ( x5 )
	sh x0, 14 ( x5 )
	lui x1, 32768>>12 
	sh x1, 16 ( x5 )
	ori x28, x0, 16383 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 16383 >> 12 & 0xfffff
	or x1, x1, x28
	sh x1, 344 ( x2 )
	ori x28, x0, $eone & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $eone >> 12 & 0xfffff
	or x10, x1, x28
	call $ecmp
	ble x10, x0, LBB0_176
LBB0_170:                               //  %while.body206.i.preheader
	lui x1, $etens >> 12 & 0xfffff
	ori x28, x0, $etens & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 96 ( x2 )                //  4-byte Folded Spill
	lui x1, -4096 >> 12 & 0xfffff
	ori x28, x0, -4096 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x8, x1, x28
	lui x1, $emtens >> 12 & 0xfffff
	ori x28, x0, $emtens & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	addi x11, x2, 274
LBB0_171:                               //  %while.body206.i
                                        //  =>This Inner Loop Header: Depth=1
	sw x1, 92 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x1
	call $ecmp
	bgez x10, LBB0_173
LBB0_172:                               //    in Loop: Header=BB0_171 Depth=1
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_174 ( x0 )
LBB0_173:                               //  %if.then211.i
                                        //    in Loop: Header=BB0_171 Depth=1
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	addi x11, x2, 274
	add x12, x0, x11
	addi x1, x2, 168
	add x13, x0, x1
	call $emul
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	addi x11, x2, 326
	add x12, x0, x11
	addi x13, x2, 168
	call $emul
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x8
LBB0_174:                               //  %if.end217.i
                                        //    in Loop: Header=BB0_171 Depth=1
	sw x1, 88 ( x2 )                //  4-byte Folded Spill
	addi x1, x8, 1
	sltiu x1, x1, 3
	bgtu x1, x0, LBB0_176
LBB0_175:                               //  %if.end221.i
                                        //    in Loop: Header=BB0_171 Depth=1
	slt x1, x8, x0
	add x1, x1, x8
	sw x1, 84 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, $eone & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $eone >> 12 & 0xfffff
	or x10, x1, x28
	addi x8, x2, 274
	add x11, x0, x8
	call $ecmp
	add x11, x0, x8
	lw x1, 96 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 20
	sw x1, 96 ( x2 )                //  4-byte Folded Spill
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 20
	lw x3, 84 ( x2 )                //  4-byte Folded Reload
	nop
	srai x8, x3, 1
	bgt x10, x0, LBB0_171
LBB0_176:                               //  %while.end224.i
	ori x28, x0, $eone & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $eone >> 12 & 0xfffff
	or x11, x1, x28
	addi x10, x2, 326
	addi x13, x2, 168
	add x12, x0, x10
	call $ediv
LBB0_177:                               //  %isone.i
	lhu x1, 344 ( x2 )
	nop
	slli x3, x1, 16
	srai x3, x3, 31
	sh x3, 274 ( x2 )
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x19, 32767 >> 12 & 0xfffff
	or x4, x19, x28
	and x5, x4, x1
	sh x5, 276 ( x2 )
	bne x5, x4, LBB0_181
LBB0_178:                               //  %for.body.preheader.i.i931.i
	addi x20, x2, 326
	lh x9, 2 ( x20 )
	lh x7, 326 ( x2 )
	nop
	or x1, x7, x9
	lh x10, 4 ( x20 )
	nop
	or x1, x10, x1
	lh x11, 6 ( x20 )
	nop
	or x1, x11, x1
	lh x12, 8 ( x20 )
	nop
	or x1, x12, x1
	lh x13, 10 ( x20 )
	nop
	or x1, x13, x1
	lh x14, 12 ( x20 )
	nop
	or x1, x14, x1
	lh x15, 14 ( x20 )
	nop
	or x1, x15, x1
	lh x16, 342 ( x2 )
	nop
	or x1, x16, x1
	lui x4, 65535 >> 12 & 0xfffff
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x4, x28
	and x18, x4, x1
	addi x1, x2, 282
	addi x17, x2, 274
	sh x0, 4 ( x17 )
	addi x4, x17, 6
	bgtu x18, x0, LBB0_180
LBB0_179:                               //  %for.body23.preheader.i965.i
	sh x0, 6 ( x17 )
	sh x0, 8 ( x17 )
	sh x0, 10 ( x17 )
	sh x0, 12 ( x17 )
	sh x0, 14 ( x17 )
	sh x0, 16 ( x17 )
	sh x0, 18 ( x17 )
	sh x0, 20 ( x17 )
	sh x0, 22 ( x17 )
	add x7, x0, x0
	sh x0, 298 ( x2 )
	add x9, x0, x7
	add x10, x0, x7
	add x11, x0, x7
	add x12, x0, x7
	add x13, x0, x7
	add x14, x0, x7
	add x15, x0, x7
	add x16, x0, x7
	jalr x0, LBB0_182 ( x0 )
LBB0_180:                               //  %if.then13.i984.i
	sh x16, 6 ( x17 )
	sh x15, 8 ( x17 )
	sh x14, 10 ( x17 )
	sh x13, 12 ( x17 )
	sh x12, 14 ( x17 )
	sh x11, 16 ( x17 )
	sh x10, 18 ( x17 )
	sh x9, 20 ( x17 )
	sh x7, 22 ( x17 )
	lh x17, 324 ( x2 )
	nop
	sh x17, 298 ( x2 )
	jalr x0, LBB0_182 ( x0 )
LBB0_181:                               //  %if.end28.i1002.i
	addi x4, x2, 274
	addi x1, x4, 8
	sh x0, 4 ( x4 )
	addi x20, x2, 326
	lh x16, 16 ( x20 )
	nop
	sh x16, 6 ( x4 )
	lh x15, 14 ( x20 )
	nop
	sh x15, 8 ( x4 )
	lh x14, 12 ( x20 )
	nop
	sh x14, 10 ( x4 )
	lh x13, 10 ( x20 )
	nop
	sh x13, 12 ( x4 )
	lh x12, 8 ( x20 )
	nop
	sh x12, 14 ( x4 )
	lh x11, 6 ( x20 )
	nop
	sh x11, 16 ( x4 )
	lh x10, 4 ( x20 )
	nop
	sh x10, 18 ( x4 )
	lh x9, 328 ( x2 )
	nop
	sh x9, 20 ( x4 )
	lh x7, 326 ( x2 )
	nop
	sh x7, 22 ( x4 )
	addi x4, x4, 6
	sh x0, 298 ( x2 )
LBB0_182:                               //  %emovi.exit1004.i
	sh x3, 326 ( x2 )
	sh x5, 2 ( x20 )
	sh x0, 4 ( x20 )
	sh x16, 6 ( x20 )
	sh x15, 8 ( x20 )
	sh x14, 10 ( x20 )
	sh x13, 12 ( x20 )
	sh x12, 14 ( x20 )
	sh x11, 16 ( x20 )
	sh x10, 18 ( x20 )
	sh x9, 20 ( x20 )
	sh x7, 22 ( x20 )
	sh x0, 350 ( x2 )
	lhu x5, 370 ( x2 )
	nop
	slli x3, x5, 16
	srai x3, x3, 31
	sh x3, 274 ( x2 )
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x7, x19, x28
	and x5, x7, x5
	sh x5, 276 ( x2 )
	bne x5, x7, LBB0_186
LBB0_183:                               //  %for.body.preheader.i.i880.i
	addi x11, x2, 352
	lh x9, 2 ( x11 )
	lh x7, 352 ( x2 )
	nop
	or x12, x7, x9
	lh x10, 4 ( x11 )
	nop
	or x12, x10, x12
	lh x19, 6 ( x11 )
	nop
	or x13, x19, x12
	lh x12, 8 ( x11 )
	nop
	or x14, x12, x13
	lh x13, 10 ( x11 )
	nop
	or x15, x13, x14
	lh x14, 12 ( x11 )
	nop
	or x16, x14, x15
	lh x15, 14 ( x11 )
	nop
	or x17, x15, x16
	lh x16, 368 ( x2 )
	nop
	or x17, x16, x17
	lui x18, 65535 >> 12 & 0xfffff
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x18, x18, x28
	and x17, x18, x17
	sh x0, 278 ( x2 )
	bgtu x17, x0, LBB0_185
LBB0_184:                               //  %for.body23.preheader.i.i
	sh x0, 0 ( x4 )
	sh x0, 0 ( x1 )
	addi x1, x2, 274
	sh x0, 10 ( x1 )
	sh x0, 12 ( x1 )
	sh x0, 14 ( x1 )
	sh x0, 16 ( x1 )
	sh x0, 18 ( x1 )
	sh x0, 20 ( x1 )
	sh x0, 296 ( x2 )
	sh x0, 24 ( x1 )
	add x7, x0, x0
	add x9, x0, x7
	add x10, x0, x7
	add x19, x0, x7
	add x12, x0, x7
	add x13, x0, x7
	add x14, x0, x7
	add x15, x0, x7
	add x16, x0, x7
	jalr x0, LBB0_187 ( x0 )
LBB0_185:                               //  %if.then13.i.i
	sh x16, 0 ( x4 )
	sh x15, 0 ( x1 )
	addi x1, x2, 274
	sh x14, 10 ( x1 )
	sh x13, 12 ( x1 )
	sh x12, 14 ( x1 )
	sh x19, 16 ( x1 )
	sh x10, 18 ( x1 )
	sh x9, 20 ( x1 )
	sh x7, 296 ( x2 )
	lh x4, 350 ( x2 )
	nop
	sh x4, 24 ( x1 )
	jalr x0, LBB0_187 ( x0 )
LBB0_186:                               //  %if.end28.i.i
	addi x17, x2, 274
	sh x0, 4 ( x17 )
	addi x11, x2, 352
	lh x16, 16 ( x11 )
	nop
	sh x16, 0 ( x4 )
	lh x15, 14 ( x11 )
	nop
	sh x15, 0 ( x1 )
	lh x14, 12 ( x11 )
	nop
	sh x14, 10 ( x17 )
	lh x13, 10 ( x11 )
	nop
	sh x13, 12 ( x17 )
	lh x12, 8 ( x11 )
	nop
	sh x12, 14 ( x17 )
	lh x19, 6 ( x11 )
	nop
	sh x19, 16 ( x17 )
	lh x10, 4 ( x11 )
	nop
	sh x10, 18 ( x17 )
	lh x9, 354 ( x2 )
	nop
	sh x9, 20 ( x17 )
	lh x7, 352 ( x2 )
	nop
	sh x7, 22 ( x17 )
	sh x0, 298 ( x2 )
LBB0_187:                               //  %emovi.exit.i
	sh x3, 352 ( x2 )
	sh x5, 2 ( x11 )
	sh x0, 4 ( x11 )
	sh x16, 6 ( x11 )
	sh x15, 8 ( x11 )
	sh x14, 10 ( x11 )
	sh x13, 12 ( x11 )
	sh x12, 14 ( x11 )
	sh x19, 16 ( x11 )
	sh x10, 18 ( x11 )
	sh x9, 20 ( x11 )
	sh x7, 22 ( x11 )
	sh x0, 376 ( x2 )
	addi x10, x2, 326
	addi x12, x2, 168
	call $eiremain
	lhu x12, 244 ( x2 )
	nop
	bgtu x12, x0, LBB0_196
LBB0_188:                               //  %land.rhs.lr.ph.i
	lui x8, 65535 >> 12 & 0xfffff
	addi x1, x2, 352
	add x10, x0, x1
LBB0_189:                               //  %land.rhs.i
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_192 Depth 2
                                        //      Child Loop BB0_194 Depth 2
	sw x12, 96 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, $ezero & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $ezero >> 12 & 0xfffff
	or x11, x1, x28
	call $ecmp
	bgtu x10, x0, LBB0_191
LBB0_190:
	lw x9, 48 ( x2 )                //  4-byte Folded Reload
	add x10, x0, x0
	lw x12, 96 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_197 ( x0 )
LBB0_191:                               //  %for.body.i789.i.preheader
                                        //    in Loop: Header=BB0_189 Depth=1
	addi x1, x0, 24
	add x12, x0, x0
	add x3, x0, x12
	addi x11, x2, 352
LBB0_192:                               //  %for.body.i789.i
                                        //    Parent Loop BB0_189 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x4, x1, x11
	lhu x5, 0 ( x4 )
	nop
	srli x7, x5, 15
	or x3, x3, x7
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x7, x8, x28
	and x3, x7, x3
	slli x5, x5, 1
	srli x7, x3, 1
	andi x7, x7, 1
	or x5, x5, x7
	sh x5, 0 ( x4 )
	slli x3, x3, 1
	addi x1, x1, -2
	xori x4, x1, 2
	bgtu x4, x0, LBB0_192
LBB0_193:                               //  %eshup1.exit790.i
                                        //    in Loop: Header=BB0_189 Depth=1
	lh x1, 352 ( x2 )
	nop
	sh x1, 300 ( x2 )
	lh x1, 2 ( x11 )
	addi x13, x2, 300
	sh x1, 2 ( x13 )
	lh x1, 4 ( x11 )
	nop
	sh x1, 4 ( x13 )
	lh x1, 6 ( x11 )
	nop
	sh x1, 6 ( x13 )
	lh x1, 8 ( x11 )
	nop
	sh x1, 8 ( x13 )
	lh x1, 10 ( x11 )
	nop
	sh x1, 10 ( x13 )
	lh x1, 12 ( x11 )
	nop
	sh x1, 12 ( x13 )
	lhu x1, 14 ( x11 )
	lhu x3, 16 ( x11 )
	lhu x4, 18 ( x11 )
	lhu x5, 20 ( x11 )
	lh x7, 374 ( x2 )
	sh x0, 24 ( x13 )
	slli x9, x7, 1
	sh x9, 22 ( x13 )
	srli x7, x7, 14
	andi x7, x7, 2
	slli x9, x5, 1
	srli x10, x7, 1
	or x9, x9, x10
	sh x9, 20 ( x13 )
	srli x5, x5, 15
	or x5, x5, x7
	slli x7, x5, 1
	srli x9, x4, 15
	or x7, x9, x7
	andi x5, x5, 1
	slli x4, x4, 1
	or x4, x4, x5
	sh x4, 18 ( x13 )
	slli x4, x7, 1
	srli x5, x3, 15
	or x4, x5, x4
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x5, x8, x28
	and x4, x5, x4
	srli x7, x4, 1
	andi x7, x7, 1
	slli x3, x3, 1
	or x3, x3, x7
	sh x3, 16 ( x13 )
	slli x3, x4, 1
	srli x4, x1, 15
	or x3, x4, x3
	and x3, x5, x3
	srli x4, x3, 1
	andi x4, x4, 1
	slli x1, x1, 1
	or x1, x1, x4
	sh x1, 314 ( x2 )
	slli x1, x3, 1
	lhu x3, 12 ( x13 )
	nop
	srli x4, x3, 15
	or x1, x4, x1
	and x1, x5, x1
	srli x4, x1, 1
	andi x4, x4, 1
	slli x3, x3, 1
	or x3, x3, x4
	sh x3, 12 ( x13 )
	slli x1, x1, 1
	lhu x3, 10 ( x13 )
	nop
	srli x4, x3, 15
	or x1, x4, x1
	and x1, x5, x1
	srli x4, x1, 1
	andi x4, x4, 1
	slli x3, x3, 1
	or x3, x3, x4
	sh x3, 10 ( x13 )
	slli x1, x1, 1
	lhu x3, 8 ( x13 )
	nop
	srli x4, x3, 15
	or x1, x4, x1
	and x1, x5, x1
	srli x4, x1, 1
	andi x4, x4, 1
	slli x3, x3, 1
	or x3, x3, x4
	sh x3, 8 ( x13 )
	slli x1, x1, 1
	lhu x3, 6 ( x13 )
	nop
	srli x4, x3, 15
	or x1, x4, x1
	srli x4, x1, 1
	andi x4, x4, 1
	slli x3, x3, 1
	or x3, x3, x4
	sh x3, 6 ( x13 )
	andi x1, x1, 1
	lh x3, 4 ( x13 )
	nop
	slli x3, x3, 1
	or x1, x3, x1
	sh x1, 4 ( x13 )
	addi x1, x0, 24
	add x3, x0, x12
LBB0_194:                               //  %for.body.i730.i
                                        //    Parent Loop BB0_189 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x4, x1, x13
	lhu x5, 0 ( x4 )
	nop
	srli x7, x5, 15
	or x3, x3, x7
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x7, x8, x28
	and x3, x7, x3
	slli x5, x5, 1
	srli x7, x3, 1
	andi x7, x7, 1
	or x5, x5, x7
	sh x5, 0 ( x4 )
	slli x3, x3, 1
	addi x1, x1, -2
	xori x4, x1, 2
	bgtu x4, x0, LBB0_194
LBB0_195:                               //  %eshup1.exit731.i
                                        //    in Loop: Header=BB0_189 Depth=1
	lhu x1, 24 ( x13 )
	lhu x3, 24 ( x11 )
	nop
	add x1, x1, x3
	sh x1, 24 ( x11 )
	srli x1, x1, 16
	lhu x3, 22 ( x13 )
	nop
	add x1, x1, x3
	lhu x3, 22 ( x11 )
	nop
	add x1, x3, x1
	sh x1, 22 ( x11 )
	srli x1, x1, 16
	andi x1, x1, 1
	lhu x3, 20 ( x13 )
	nop
	add x1, x3, x1
	lhu x3, 20 ( x11 )
	nop
	add x1, x3, x1
	sh x1, 20 ( x11 )
	lhu x3, 18 ( x13 )
	lhu x4, 18 ( x11 )
	nop
	add x3, x3, x4
	srli x1, x1, 16
	andi x1, x1, 1
	add x1, x1, x3
	sh x1, 18 ( x11 )
	lhu x3, 16 ( x13 )
	lhu x4, 16 ( x11 )
	nop
	add x3, x3, x4
	srli x1, x1, 16
	andi x1, x1, 1
	add x1, x1, x3
	sh x1, 16 ( x11 )
	lhu x3, 14 ( x13 )
	lhu x4, 14 ( x11 )
	nop
	add x3, x3, x4
	srli x1, x1, 16
	andi x1, x1, 1
	add x1, x1, x3
	sh x1, 14 ( x11 )
	lhu x3, 12 ( x13 )
	lhu x4, 12 ( x11 )
	nop
	add x3, x3, x4
	srli x1, x1, 16
	andi x1, x1, 1
	add x1, x1, x3
	sh x1, 12 ( x11 )
	lhu x3, 10 ( x13 )
	lhu x4, 10 ( x11 )
	nop
	add x3, x3, x4
	srli x1, x1, 16
	andi x1, x1, 1
	add x1, x1, x3
	sh x1, 10 ( x11 )
	lhu x3, 8 ( x13 )
	lhu x4, 8 ( x11 )
	nop
	add x3, x3, x4
	srli x1, x1, 16
	andi x1, x1, 1
	add x1, x1, x3
	sh x1, 8 ( x11 )
	lhu x3, 6 ( x13 )
	lhu x4, 6 ( x11 )
	nop
	add x3, x3, x4
	srli x1, x1, 16
	andi x1, x1, 1
	add x1, x1, x3
	sh x1, 6 ( x11 )
	lhu x3, 304 ( x2 )
	lh x4, 356 ( x2 )
	nop
	add x3, x3, x4
	srli x1, x1, 16
	andi x1, x1, 1
	add x1, x1, x3
	sh x1, 356 ( x2 )
	addi x10, x2, 326
	addi x12, x2, 168
	call $eiremain
	addi x10, x2, 352
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, -1
	sw x1, 88 ( x2 )                //  4-byte Folded Spill
	lhu x12, 244 ( x2 )
	nop
	beqz x12, LBB0_189
LBB0_196:
	add x10, x0, x12
	lw x9, 48 ( x2 )                //  4-byte Folded Reload
LBB0_197:                               //  %while.end260.i
	add x3, x0, x0
	addi x4, x0, 3
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	lw x5, 76 ( x2 )                //  4-byte Folded Reload
	lw x7, 68 ( x2 )                //  4-byte Folded Reload
	beq x5, x4, LBB0_199
LBB0_198:                               //  %while.end260.i
	add x1, x0, x3
LBB0_199:                               //  %while.end260.i
	addi x11, x2, 352
	bne x9, x3, LBB0_201
LBB0_200:
	addi x3, x0, 32
	jalr x0, LBB0_202 ( x0 )
LBB0_201:                               //  %while.end260.i
	addi x3, x0, 45
LBB0_202:                               //  %while.end260.i
	sb x3, 110 ( x2 )
	add x3, x7, x1
	addi x4, x0, 42
	add x1, x0, x3
	bgt x4, x3, LBB0_204
LBB0_203:                               //  %while.end260.i
	add x1, x0, x4
LBB0_204:                               //  %while.end260.i
	xori x4, x12, 10
	bgtu x4, x0, LBB0_209
LBB0_205:                               //  %if.then277.i
	addi x4, x2, 110
	addi x5, x0, 49
	sb x5, 1 ( x4 )
	addi x5, x0, 46
	sb x5, 2 ( x4 )
	ble x3, x0, LBB0_207
LBB0_206:                               //  %if.end285.thread.i
	addi x3, x0, 48
	sb x3, 113 ( x2 )
	lw x3, 88 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, 1
	sw x3, 88 ( x2 )                //  4-byte Folded Spill
	addi x1, x1, -1
	addi x5, x4, 4
	jalr x0, LBB0_210 ( x0 )
LBB0_207:                               //  %if.end285.i
	addi x5, x2, 113
	lw x4, 88 ( x2 )                //  4-byte Folded Reload
	nop
	addi x4, x4, 1
	bgez x1, LBB0_212
LBB0_208:
	add x8, x0, x5
	jalr x0, LBB0_248 ( x0 )
LBB0_209:                               //  %if.else291.i
	addi x3, x12, 48
	addi x4, x2, 110
	sb x3, 1 ( x4 )
	addi x3, x0, 46
	sb x3, 2 ( x4 )
	addi x5, x2, 113
LBB0_210:                               //  %if.end298.i
	bgez x1, LBB0_213
LBB0_211:
	slti x7, x0, 1
	jalr x0, LBB0_220 ( x0 )
LBB0_212:
	sw x4, 88 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
LBB0_213:                               //  %for.body.i599.preheader.lr.ph.i
	add x12, x0, x0
	addi x1, x1, 1
	sw x1, 84 ( x2 )                //  4-byte Folded Spill
	addi x13, x0, 24
	lui x8, 65535 >> 12 & 0xfffff
	sw x5, 48 ( x2 )                //  4-byte Folded Spill
	add x3, x0, x5
	add x4, x0, x12
LBB0_214:                               //  %for.body.i599.preheader.i
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_215 Depth 2
                                        //      Child Loop BB0_217 Depth 2
	sw x4, 92 ( x2 )                //  4-byte Folded Spill
	sw x3, 96 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x13
	add x3, x0, x12
LBB0_215:                               //  %for.body.i599.i
                                        //    Parent Loop BB0_214 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x4, x1, x11
	lhu x5, 0 ( x4 )
	nop
	srli x7, x5, 15
	or x3, x3, x7
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x7, x8, x28
	and x3, x7, x3
	slli x5, x5, 1
	srli x7, x3, 1
	andi x7, x7, 1
	or x5, x5, x7
	sh x5, 0 ( x4 )
	slli x3, x3, 1
	addi x1, x1, -2
	xori x4, x1, 2
	bgtu x4, x0, LBB0_215
LBB0_216:                               //  %eshup1.exit600.i
                                        //    in Loop: Header=BB0_214 Depth=1
	lh x1, 352 ( x2 )
	nop
	sh x1, 300 ( x2 )
	lh x1, 2 ( x11 )
	addi x14, x2, 300
	sh x1, 2 ( x14 )
	lh x1, 4 ( x11 )
	nop
	sh x1, 4 ( x14 )
	lh x1, 6 ( x11 )
	nop
	sh x1, 6 ( x14 )
	lh x1, 8 ( x11 )
	nop
	sh x1, 8 ( x14 )
	lh x1, 10 ( x11 )
	nop
	sh x1, 10 ( x14 )
	lh x1, 12 ( x11 )
	nop
	sh x1, 12 ( x14 )
	lhu x1, 14 ( x11 )
	lhu x3, 16 ( x11 )
	lhu x4, 18 ( x11 )
	lhu x5, 20 ( x11 )
	lh x7, 374 ( x2 )
	sh x0, 24 ( x14 )
	slli x9, x7, 1
	sh x9, 22 ( x14 )
	srli x7, x7, 14
	andi x7, x7, 2
	slli x9, x5, 1
	srli x10, x7, 1
	or x9, x9, x10
	sh x9, 20 ( x14 )
	srli x5, x5, 15
	or x5, x5, x7
	slli x7, x5, 1
	srli x9, x4, 15
	or x7, x9, x7
	andi x5, x5, 1
	slli x4, x4, 1
	or x4, x4, x5
	sh x4, 18 ( x14 )
	slli x4, x7, 1
	srli x5, x3, 15
	or x4, x5, x4
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x5, x8, x28
	and x4, x5, x4
	srli x7, x4, 1
	andi x7, x7, 1
	slli x3, x3, 1
	or x3, x3, x7
	sh x3, 16 ( x14 )
	slli x3, x4, 1
	srli x4, x1, 15
	or x3, x4, x3
	and x3, x5, x3
	srli x4, x3, 1
	andi x4, x4, 1
	slli x1, x1, 1
	or x1, x1, x4
	sh x1, 314 ( x2 )
	slli x1, x3, 1
	lhu x3, 12 ( x14 )
	nop
	srli x4, x3, 15
	or x1, x4, x1
	and x1, x5, x1
	srli x4, x1, 1
	andi x4, x4, 1
	slli x3, x3, 1
	or x3, x3, x4
	sh x3, 12 ( x14 )
	slli x1, x1, 1
	lhu x3, 10 ( x14 )
	nop
	srli x4, x3, 15
	or x1, x4, x1
	and x1, x5, x1
	srli x4, x1, 1
	andi x4, x4, 1
	slli x3, x3, 1
	or x3, x3, x4
	sh x3, 10 ( x14 )
	slli x1, x1, 1
	lhu x3, 8 ( x14 )
	nop
	srli x4, x3, 15
	or x1, x4, x1
	and x1, x5, x1
	srli x4, x1, 1
	andi x4, x4, 1
	slli x3, x3, 1
	or x3, x3, x4
	sh x3, 8 ( x14 )
	slli x1, x1, 1
	lhu x3, 6 ( x14 )
	nop
	srli x4, x3, 15
	or x1, x4, x1
	srli x4, x1, 1
	andi x4, x4, 1
	slli x3, x3, 1
	or x3, x3, x4
	sh x3, 6 ( x14 )
	andi x1, x1, 1
	lh x3, 4 ( x14 )
	nop
	slli x3, x3, 1
	or x1, x3, x1
	sh x1, 4 ( x14 )
	add x1, x0, x13
	add x3, x0, x12
LBB0_217:                               //  %for.body.i.i
                                        //    Parent Loop BB0_214 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x4, x1, x14
	lhu x5, 0 ( x4 )
	nop
	srli x7, x5, 15
	or x3, x3, x7
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x7, x8, x28
	and x3, x7, x3
	slli x5, x5, 1
	srli x7, x3, 1
	andi x7, x7, 1
	or x5, x5, x7
	sh x5, 0 ( x4 )
	slli x3, x3, 1
	addi x1, x1, -2
	xori x4, x1, 2
	bgtu x4, x0, LBB0_217
LBB0_218:                               //  %eshup1.exit.i
                                        //    in Loop: Header=BB0_214 Depth=1
	lhu x1, 24 ( x14 )
	lhu x3, 24 ( x11 )
	nop
	add x1, x1, x3
	sh x1, 24 ( x11 )
	srli x1, x1, 16
	lhu x3, 22 ( x14 )
	nop
	add x1, x1, x3
	lhu x3, 22 ( x11 )
	nop
	add x1, x3, x1
	sh x1, 22 ( x11 )
	srli x1, x1, 16
	andi x1, x1, 1
	lhu x3, 20 ( x14 )
	nop
	add x1, x3, x1
	lhu x3, 20 ( x11 )
	nop
	add x1, x3, x1
	sh x1, 20 ( x11 )
	lhu x3, 18 ( x14 )
	lhu x4, 18 ( x11 )
	nop
	add x3, x3, x4
	srli x1, x1, 16
	andi x1, x1, 1
	add x1, x1, x3
	sh x1, 18 ( x11 )
	lhu x3, 16 ( x14 )
	lhu x4, 16 ( x11 )
	nop
	add x3, x3, x4
	srli x1, x1, 16
	andi x1, x1, 1
	add x1, x1, x3
	sh x1, 16 ( x11 )
	lhu x3, 14 ( x14 )
	lhu x4, 14 ( x11 )
	nop
	add x3, x3, x4
	srli x1, x1, 16
	andi x1, x1, 1
	add x1, x1, x3
	sh x1, 14 ( x11 )
	lhu x3, 12 ( x14 )
	lhu x4, 12 ( x11 )
	nop
	add x3, x3, x4
	srli x1, x1, 16
	andi x1, x1, 1
	add x1, x1, x3
	sh x1, 12 ( x11 )
	lhu x3, 10 ( x14 )
	lhu x4, 10 ( x11 )
	nop
	add x3, x3, x4
	srli x1, x1, 16
	andi x1, x1, 1
	add x1, x1, x3
	sh x1, 10 ( x11 )
	lhu x3, 8 ( x14 )
	lhu x4, 8 ( x11 )
	nop
	add x3, x3, x4
	srli x1, x1, 16
	andi x1, x1, 1
	add x1, x1, x3
	sh x1, 8 ( x11 )
	lhu x3, 6 ( x14 )
	lhu x4, 6 ( x11 )
	nop
	add x3, x3, x4
	srli x1, x1, 16
	andi x1, x1, 1
	add x1, x1, x3
	sh x1, 6 ( x11 )
	lhu x3, 304 ( x2 )
	lh x4, 356 ( x2 )
	nop
	add x3, x3, x4
	srli x1, x1, 16
	andi x1, x1, 1
	add x1, x1, x3
	sh x1, 356 ( x2 )
	addi x10, x2, 326
	addi x12, x2, 168
	call $eiremain
	addi x11, x2, 352
	lh x1, 244 ( x2 )
	nop
	addi x1, x1, 48
	lw x3, 96 ( x2 )                //  4-byte Folded Reload
	nop
	sb x1, 0 ( x3 )
	addi x3, x3, 1
	lw x4, 92 ( x2 )                //  4-byte Folded Reload
	nop
	addi x4, x4, 1
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	add x12, x0, x0
	addi x13, x0, 24
	bne x4, x1, LBB0_214
LBB0_219:                               //  %for.end320.loopexit.i
	lw x5, 48 ( x2 )                //  4-byte Folded Reload
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	add x5, x1, x5
	add x7, x0, x0
	lh x10, 244 ( x2 )
LBB0_220:                               //  %for.end320.i
	lw x4, 88 ( x2 )                //  4-byte Folded Reload
	lui x1, 65535 >> 12 & 0xfffff
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x1, x28
	and x3, x3, x10
	addi x8, x5, -1
	sltiu x3, x3, 5
	bgtu x3, x0, LBB0_248
LBB0_221:                               //  %if.then326.i
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x1, x28
	and x3, x3, x10
	xori x3, x3, 5
	lui x13, 32767 >> 12 & 0xfffff
	sw x4, 88 ( x2 )                //  4-byte Folded Spill
	bgtu x3, x0, LBB0_240
LBB0_222:                               //  %if.then329.i
	sw x7, 96 ( x2 )                //  4-byte Folded Spill
	sw x5, 48 ( x2 )                //  4-byte Folded Spill
	lhu x4, 2 ( x11 )
	lui x3, -32768 >> 12 & 0xfffff
	ori x28, x0, -32768 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x5, x3, x28
	lhu x7, 352 ( x2 )
	add x9, x0, x0
	add x3, x0, x4
	beq x7, x9, LBB0_224
LBB0_223:                               //  %if.then329.i
	or x3, x5, x4
LBB0_224:                               //  %if.then329.i
	sh x3, 344 ( x2 )
	lh x5, 358 ( x2 )
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x7, x13, x28
	bne x4, x7, LBB0_227
LBB0_225:                               //  %for.body.preheader.i.i.i
	lh x4, 8 ( x11 )
	nop
	or x4, x5, x4
	lh x5, 10 ( x11 )
	nop
	or x4, x5, x4
	lh x5, 12 ( x11 )
	nop
	or x4, x5, x4
	lh x5, 22 ( x11 )
	lh x7, 20 ( x11 )
	lh x9, 18 ( x11 )
	lh x10, 16 ( x11 )
	lh x11, 14 ( x11 )
	lh x12, 376 ( x2 )
	sh x0, 326 ( x2 )
	addi x14, x2, 326
	sh x0, 2 ( x14 )
	sh x0, 4 ( x14 )
	sh x0, 6 ( x14 )
	sh x0, 8 ( x14 )
	sh x0, 10 ( x14 )
	sh x0, 12 ( x14 )
	or x4, x11, x4
	or x4, x10, x4
	or x4, x9, x4
	or x4, x7, x4
	or x4, x5, x4
	or x4, x12, x4
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	and x1, x1, x4
	sh x0, 340 ( x2 )
	beqz x1, LBB0_228
LBB0_226:                               //  %if.then11.i.i
	lui x1, 49152>>12 
	sh x1, 342 ( x2 )
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x13, x28
	jalr x0, LBB0_229 ( x0 )
LBB0_227:                               //  %if.end13.i.i
	addi x1, x2, 326
	add x3, x0, x1
	sh x5, 16 ( x3 )
	lh x1, 8 ( x11 )
	nop
	sh x1, 14 ( x3 )
	lh x1, 10 ( x11 )
	nop
	sh x1, 12 ( x3 )
	lh x1, 12 ( x11 )
	nop
	sh x1, 10 ( x3 )
	lh x1, 14 ( x11 )
	nop
	sh x1, 8 ( x3 )
	lh x1, 16 ( x11 )
	nop
	sh x1, 6 ( x3 )
	lh x1, 18 ( x11 )
	nop
	sh x1, 4 ( x3 )
	lh x1, 20 ( x11 )
	nop
	sh x1, 328 ( x2 )
	lh x1, 374 ( x2 )
	nop
	sh x1, 326 ( x2 )
	jalr x0, LBB0_230 ( x0 )
LBB0_228:                               //  %if.end12.i.i
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x13, x28
	or x1, x1, x3
	sh x0, 342 ( x2 )
LBB0_229:                               //  %cleanup.sink.split.i.i
	sh x1, 344 ( x2 )
LBB0_230:                               //  %emovo.exit.i
	addi x10, x2, 326
	lui x1, $ezero >> 12 & 0xfffff
	ori x28, x0, $ezero & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $ecmp
	lw x4, 88 ( x2 )                //  4-byte Folded Reload
	lw x5, 48 ( x2 )                //  4-byte Folded Reload
	lw x7, 96 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB0_240
LBB0_231:                               //  %if.end337.i
	bgtu x7, x0, LBB0_248
LBB0_232:                               //  %lor.lhs.false.i
	lbu x3, -2 ( x5 )
	addi x1, x0, 46
	not x4, x0
	beq x3, x1, LBB0_234
LBB0_233:                               //  %lor.lhs.false.i
	add x4, x0, x0
LBB0_234:                               //  %lor.lhs.false.i
	addi x1, x5, -2
	add x4, x4, x1
	lbu x4, 0 ( x4 )
	nop
	andi x4, x4, 1
	bgtu x4, x0, LBB0_236
LBB0_235:
	lw x4, 88 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_248 ( x0 )
LBB0_236:                               //  %if.else360.i.preheader
	andi x4, x3, 127
	xori x5, x4, 46
	add x3, x0, x8
	beqz x5, LBB0_243
LBB0_237:                               //  %if.end374.i.preheader
	addi x5, x1, 1
	addi x1, x0, 48
LBB0_238:                               //  %if.end374.i
                                        //  =>This Inner Loop Header: Depth=1
	addi x3, x4, 1
	sb x3, -1 ( x5 )
	andi x3, x3, 255
	sltiu x3, x3, 58
	beqz x3, LBB0_242
LBB0_239:
	lw x4, 88 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_248 ( x0 )
LBB0_240:                               //  %roun.preheader.i
	addi x1, x5, -2
	bgtu x7, x0, LBB0_246
LBB0_241:                               //  %roun.preheader.i.if.else360.i.preheader_crit_edge
	lb x3, 0 ( x1 )
	jalr x0, LBB0_236 ( x0 )
LBB0_242:                               //  %if.then379.i
                                        //    in Loop: Header=BB0_238 Depth=1
	sb x1, -1 ( x5 )
	addi x3, x5, -1
	lbu x4, -2 ( x5 )
	nop
	andi x4, x4, 127
	xori x7, x4, 46
	add x5, x0, x3
	bgtu x7, x0, LBB0_238
LBB0_243:                               //  %if.then363.i
	lb x1, -2 ( x3 )
	nop
	addi x4, x1, 1
	sb x4, -2 ( x3 )
	slti x1, x1, 57
	beqz x1, LBB0_245
LBB0_244:
	lw x4, 88 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_248 ( x0 )
LBB0_245:                               //  %if.then370.i
	addi x1, x0, 49
	sb x1, -2 ( x3 )
	lw x4, 88 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_247 ( x0 )
LBB0_246:                               //  %if.then358.i
	addi x3, x0, 49
	sb x3, 0 ( x1 )
LBB0_247:                               //  %doexp.i
	addi x4, x4, 1
LBB0_248:                               //  %doexp.i
	sw x4, 8 ( x2 )
	lui x1, $.str.4 >> 12 & 0xfffff
	ori x28, x0, $.str.4 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 4 ( x2 )
	sw x8, 0 ( x2 )
	add x8, x0, x4
	call $sprintf
	add x4, x0, x8
LBB0_249:                               //  %etoasc.exit
	addi x1, x2, 168
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 4 ( x1 )
	add x7, x0, x4
	sw x4, 184 ( x2 )
	lh x1, 248 ( x2 )
	lhu x3, 266 ( x2 )
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x5, 32767 >> 12 & 0xfffff
	or x4, x5, x28
	and x3, x4, x3
	lw x9, 60 ( x2 )                //  4-byte Folded Reload
	bne x3, x4, LBB0_259
LBB0_250:                               //  %etoasc.exit
	lui x4, 65535 >> 12 & 0xfffff
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x4, x28
	and x4, x4, x1
	bgtu x4, x0, LBB0_259
LBB0_251:                               //  %for.inc.i.i210
	lhu x4, 250 ( x2 )
	nop
	bgtu x4, x0, LBB0_259
LBB0_252:                               //  %for.inc.1.i.i213
	lhu x4, 252 ( x2 )
	nop
	bgtu x4, x0, LBB0_259
LBB0_253:                               //  %for.inc.2.i.i216
	lhu x4, 254 ( x2 )
	nop
	bgtu x4, x0, LBB0_259
LBB0_254:                               //  %for.inc.3.i.i219
	lhu x4, 256 ( x2 )
	nop
	bgtu x4, x0, LBB0_259
LBB0_255:                               //  %for.inc.4.i.i222
	lhu x4, 258 ( x2 )
	nop
	bgtu x4, x0, LBB0_259
LBB0_256:                               //  %for.inc.5.i.i225
	lhu x4, 260 ( x2 )
	nop
	bgtu x4, x0, LBB0_259
LBB0_257:                               //  %for.inc.6.i.i228
	lhu x4, 262 ( x2 )
	nop
	bgtu x4, x0, LBB0_259
LBB0_258:                               //  %eisinf.exit
	lhu x4, 264 ( x2 )
	nop
	beqz x4, LBB0_269
LBB0_259:                               //  %lor.lhs.false
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x5, x28
	bne x3, x4, LBB0_270
LBB0_260:                               //  %for.body.preheader.i
	lui x3, 65535 >> 12 & 0xfffff
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	and x1, x3, x1
	bgtu x1, x0, LBB0_269
LBB0_261:                               //  %for.inc.i
	lhu x1, 250 ( x2 )
	nop
	bgtu x1, x0, LBB0_269
LBB0_262:                               //  %for.inc.1.i
	lhu x1, 252 ( x2 )
	nop
	bgtu x1, x0, LBB0_269
LBB0_263:                               //  %for.inc.2.i
	lhu x1, 254 ( x2 )
	nop
	bgtu x1, x0, LBB0_269
LBB0_264:                               //  %for.inc.3.i
	lhu x1, 256 ( x2 )
	nop
	bgtu x1, x0, LBB0_269
LBB0_265:                               //  %for.inc.4.i
	lhu x1, 258 ( x2 )
	nop
	bgtu x1, x0, LBB0_269
LBB0_266:                               //  %for.inc.5.i
	lhu x1, 260 ( x2 )
	nop
	bgtu x1, x0, LBB0_269
LBB0_267:                               //  %for.inc.6.i
	lhu x1, 262 ( x2 )
	nop
	bgtu x1, x0, LBB0_269
LBB0_268:                               //  %eisnan.exit
	lhu x1, 264 ( x2 )
	nop
	beqz x1, LBB0_270
LBB0_269:                               //  %if.then28
	lui x1, 9999 >> 12 & 0xfffff
	ori x28, x0, 9999 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 0 ( x9 )
	lw x10, 68 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_278 ( x0 )
LBB0_270:                               //  %if.end29
	addi x1, x7, 1
	sw x1, 0 ( x9 )
	addi x1, x2, 110
	lw x10, 68 ( x2 )               //  4-byte Folded Reload
	add x5, x0, x0
LBB0_271:                               //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	add x3, x5, x1
	lbu x3, 0 ( x3 )
	nop
	beqz x3, LBB0_275
LBB0_272:                               //  %while.cond
                                        //    in Loop: Header=BB0_271 Depth=1
	xori x3, x3, 46
	beqz x3, LBB0_274
LBB0_273:                               //  %if.end37
                                        //    in Loop: Header=BB0_271 Depth=1
	addi x5, x5, 1
	jalr x0, LBB0_271 ( x0 )
LBB0_274:                               //  %while.body42
                                        //  =>This Inner Loop Header: Depth=1
	add x3, x5, x1
	lb x4, 1 ( x3 )
	nop
	sb x4, 0 ( x3 )
	addi x5, x5, 1
	lbu x3, 1 ( x3 )
	nop
	bgtu x3, x0, LBB0_274
LBB0_275:                               //  %while.cond45
                                        //  =>This Inner Loop Header: Depth=1
	addi x3, x5, -1
	ble x5, x0, LBB0_277
LBB0_276:                               //  %while.cond45
                                        //    in Loop: Header=BB0_275 Depth=1
	add x4, x5, x1
	lb x4, 0 ( x4 )
	nop
	andi x4, x4, 255
	xori x4, x4, 69
	add x5, x0, x3
	bgtu x4, x0, LBB0_275
LBB0_277:                               //  %while.end54
	add x1, x3, x1
	sb x0, 1 ( x1 )
LBB0_278:                               //  %while.cond56.preheader
	addi x1, x2, 111
LBB0_279:                               //  %while.cond56
                                        //  =>This Inner Loop Header: Depth=1
	lbu x3, -1 ( x1 )
	nop
	xori x4, x3, 32
	beqz x4, LBB0_283
LBB0_280:                               //  %while.cond56
                                        //    in Loop: Header=BB0_279 Depth=1
	xori x4, x3, 45
	beqz x4, LBB0_283
LBB0_281:                               //  %while.cond67.preheader
	sb x3, 110 ( x2 )
	bgtu x3, x0, LBB0_284
LBB0_282:
	addi x1, x2, 110
	jalr x0, LBB0_287 ( x0 )
LBB0_283:                               //  %while.body63
                                        //    in Loop: Header=BB0_279 Depth=1
	addi x1, x1, 1
	jalr x0, LBB0_279 ( x0 )
LBB0_284:                               //  %while.cond67.while.cond67_crit_edge.preheader
	add x3, x0, x0
	addi x4, x2, 110
LBB0_285:                               //  %while.cond67.while.cond67_crit_edge
                                        //  =>This Inner Loop Header: Depth=1
	add x5, x3, x4
	add x7, x3, x1
	lbu x7, 0 ( x7 )
	nop
	sb x7, 1 ( x5 )
	addi x3, x3, 1
	bgtu x7, x0, LBB0_285
LBB0_286:                               //  %while.end74.loopexit
	add x1, x3, x4
LBB0_287:                               //  %while.end74
	lw x3, 76 ( x2 )                //  4-byte Folded Reload
	nop
	xori x3, x3, 2
	bgtu x3, x0, LBB0_289
LBB0_288:
	slti x3, x0, 1
	jalr x0, LBB0_291 ( x0 )
LBB0_289:                               //  %if.else79
	lw x4, 184 ( x2 )
	add x3, x0, x10
	bgt x10, x4, LBB0_291
LBB0_290:                               //  %if.else79
	add x3, x0, x4
LBB0_291:                               //  %while.cond88.preheader
	lbu x4, -1 ( x1 )
	nop
	xori x4, x4, 48
	beqz x4, LBB0_293
LBB0_292:
	add x8, x0, x1
	jalr x0, LBB0_297 ( x0 )
LBB0_293:                               //  %land.rhs93.lr.ph
	addi x4, x2, 110
LBB0_294:                               //  %land.rhs93
                                        //  =>This Inner Loop Header: Depth=1
	sub x5, x1, x4
	bgt x5, x3, LBB0_296
LBB0_295:
	add x8, x0, x1
	jalr x0, LBB0_297 ( x0 )
LBB0_296:                               //  %while.body98
                                        //    in Loop: Header=BB0_294 Depth=1
	addi x8, x1, -1
	sb x0, -1 ( x1 )
	lbu x1, -2 ( x1 )
	nop
	xori x5, x1, 48
	add x1, x0, x8
	beqz x5, LBB0_294
LBB0_297:                               //  %while.end100
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB0_302
LBB0_298:                               //  %land.lhs.true
	lw x1, 184 ( x2 )
	nop
	add x1, x10, x1
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	bgt x0, x1, LBB0_300
LBB0_299:                               //  %land.lhs.true.if.then112_crit_edge
	lw x1, 0 ( x9 )
	jalr x0, LBB0_301 ( x0 )
LBB0_300:                               //  %if.then107
	sb x0, 110 ( x2 )
	sw x0, 0 ( x9 )
	add x1, x0, x0
	addi x8, x2, 110
LBB0_301:                               //  %if.then112
	lw x3, 72 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x3
	addi x1, x1, 3
	jalr x0, LBB0_303 ( x0 )
LBB0_302:                               //  %if.else115
	lw x1, 72 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 9
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	nop
LBB0_303:                               //  %if.end118
	sw x0, 68 ( x10 )
	sltiu x3, x1, 24
	beqz x3, LBB0_305
LBB0_304:
	add x11, x0, x0
	jalr x0, LBB0_308 ( x0 )
LBB0_305:                               //  %for.body.preheader
	addi x3, x0, 4
	add x11, x0, x0
LBB0_306:                               //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	addi x11, x11, 1
	slli x3, x3, 1
	addi x4, x3, 20
	bgeu x1, x4, LBB0_306
LBB0_307:                               //  %for.cond.for.end_crit_edge
	sw x11, 68 ( x10 )
LBB0_308:                               //  %for.end
	call $_Balloc
	sw x10, 96 ( x2 )               //  4-byte Folded Spill
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	sw x10, 64 ( x1 )
	addi x11, x2, 110
	call $strcpy
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x3, LBB0_310
LBB0_309:                               //  %if.then132
	addi x1, x2, 110
	sub x1, x8, x1
	add x1, x1, x10
	sw x1, 0 ( x3 )
LBB0_310:                               //  %if.end138
	lw x8, 404 ( x2 )               //  4-byte Folded Reload
	lw x1, 412 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 416
$cfi5:
	.cfi_adjust_cfa_offset -416
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$_ldtoa_r, ($func_end0)-($_ldtoa_r)
	.cfi_endproc

	.type	$e53toe,@function
$e53toe:                                //  @e53toe
	.cfi_startproc
  .codasip_retval_regs
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
	lhu x4, 6 ( x10 )
	ori x28, x0, 32752 & 0xfff
	slli x28, x28, 20
	lui x1, 32752 >> 12 & 0xfffff
	srli x28, x28, 20
	slli x5, x4, 16
	andi x3, x4, 15
	or x7, x1, x28
	addi x8, x2, 18
	srai x1, x5, 31
	ori x5, x3, 16
	and x4, x7, x4
	sh x0, 2 ( x8 )
	sh x0, 6 ( x8 )
	sh x0, 8 ( x8 )
	sh x0, 10 ( x8 )
	sh x0, 12 ( x8 )
	sh x0, 14 ( x8 )
	sh x0, 16 ( x8 )
	sh x0, 18 ( x8 )
	sh x0, 20 ( x8 )
	sh x0, 22 ( x8 )
	sh x0, 42 ( x2 )
	sh x1, 18 ( x2 )
	sh x5, 4 ( x8 )
	bne x4, x7, LBB1_9
LBB1_1:                                 //  %if.then11
	bgtu x3, x0, LBB1_5
LBB1_2:                                 //  %lor.lhs.false
	lhu x3, 4 ( x10 )
	nop
	bgtu x3, x0, LBB1_5
LBB1_3:                                 //  %lor.lhs.false21
	lhu x3, 2 ( x10 )
	nop
	bgtu x3, x0, LBB1_5
LBB1_4:                                 //  %lor.lhs.false26
	lhu x3, 0 ( x10 )
	nop
	beqz x3, LBB1_6
LBB1_5:                                 //  %if.then31
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	lui x1, 32767 >> 12 & 0xfffff
	srli x28, x28, 20
	lui x3, 49152>>12 
	or x1, x1, x28
	sh x0, 0 ( x11 )
	sh x0, 2 ( x11 )
	sh x0, 4 ( x11 )
	sh x0, 6 ( x11 )
	sh x0, 8 ( x11 )
	sh x0, 10 ( x11 )
	sh x0, 12 ( x11 )
	sh x0, 14 ( x11 )
	sh x3, 16 ( x11 )
	sh x1, 18 ( x11 )
	jalr x0, LBB1_25 ( x0 )
LBB1_6:                                 //  %if.end32
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	lui x3, 32767 >> 12 & 0xfffff
	srli x28, x28, 20
	add x4, x0, x0
	or x3, x3, x28
	beq x1, x4, LBB1_8
LBB1_7:                                 //  %if.end32
	not x3, x0
LBB1_8:                                 //  %if.end32
	sh x0, 0 ( x11 )
	sh x0, 2 ( x11 )
	sh x0, 4 ( x11 )
	sh x0, 6 ( x11 )
	sh x0, 8 ( x11 )
	sh x0, 10 ( x11 )
	sh x0, 12 ( x11 )
	sh x0, 14 ( x11 )
	sh x0, 16 ( x11 )
	sh x3, 18 ( x11 )
	jalr x0, LBB1_25 ( x0 )
LBB1_9:                                 //  %if.end37
	srli x1, x4, 4
	sw x11, 12 ( x2 )               //  4-byte Folded Spill
	beqz x1, LBB1_11
LBB1_10:
	add x3, x0, x0
	jalr x0, LBB1_12 ( x0 )
LBB1_11:                                //  %if.then43
	sh x3, 22 ( x2 )
	slti x3, x0, 1
LBB1_12:                                //  %while.cond18.preheader.i
	sw x3, 8 ( x2 )                 //  4-byte Folded Spill
	ori x28, x0, 15360 & 0xfff
	slli x28, x28, 20
	lui x3, 15360 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	add x1, x3, x1
	sh x1, 2 ( x8 )
	lh x1, 4 ( x10 )
	nop
	sh x1, 6 ( x8 )
	lh x1, 2 ( x10 )
	nop
	sh x1, 8 ( x8 )
	lh x1, 0 ( x10 )
	nop
	sh x1, 28 ( x2 )
	add x10, x0, x8
	call $eshdn1
	add x10, x0, x8
	call $eshdn1
	add x10, x0, x8
	call $eshdn1
	add x10, x0, x8
	call $eshdn1
	add x10, x0, x8
	call $eshdn1
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB1_14
LBB1_13:                                //  %while.cond18.preheader.i.if.end74_crit_edge
	lh x3, 20 ( x2 )
	jalr x0, LBB1_17 ( x0 )
LBB1_14:                                //  %if.then60
	addi x10, x2, 18
	call $enormlz
	slti x1, x10, 145
	bgtu x1, x0, LBB1_16
LBB1_15:                                //  %if.then65
	addi x1, x2, 18
	sh x0, 2 ( x1 )
	sh x0, 4 ( x1 )
	sh x0, 6 ( x1 )
	sh x0, 8 ( x1 )
	sh x0, 10 ( x1 )
	sh x0, 12 ( x1 )
	sh x0, 14 ( x1 )
	sh x0, 16 ( x1 )
	sh x0, 18 ( x1 )
	sh x0, 20 ( x1 )
	sh x0, 22 ( x1 )
	add x3, x0, x0
	sh x0, 42 ( x2 )
	jalr x0, LBB1_17 ( x0 )
LBB1_16:                                //  %if.else
	ori x28, x0, -65535 & 0xfff
	slli x28, x28, 20
	lhu x1, 20 ( x2 )
	lui x3, -65535 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	sub x3, x3, x10
	add x3, x1, x3
	sh x3, 20 ( x2 )
LBB1_17:                                //  %if.end74
	lw x12, 12 ( x2 )               //  4-byte Folded Reload
	lhu x5, 18 ( x2 )
	ori x28, x0, -32768 & 0xfff
	slli x28, x28, 20
	lui x1, -32768 >> 12 & 0xfffff
	srli x28, x28, 20
	add x7, x0, x0
	or x4, x1, x28
	add x1, x0, x3
	beq x5, x7, LBB1_19
LBB1_18:                                //  %if.end74
	or x1, x4, x3
LBB1_19:                                //  %if.end74
	sh x1, 18 ( x12 )
	lui x4, 65535 >> 12 & 0xfffff
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x5, x4, x28
	and x5, x5, x3
	lui x3, 32767 >> 12 & 0xfffff
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x7, x3, x28
	bne x5, x7, LBB1_22
LBB1_20:                                //  %for.body.preheader.i.i
	lh x5, 6 ( x8 )
	lh x7, 8 ( x8 )
	lh x9, 10 ( x8 )
	lh x10, 12 ( x8 )
	lh x11, 14 ( x8 )
	or x5, x5, x7
	lh x7, 16 ( x8 )
	or x5, x9, x5
	lh x9, 18 ( x8 )
	or x5, x10, x5
	lh x10, 20 ( x8 )
	or x5, x11, x5
	lh x11, 22 ( x8 )
	or x5, x7, x5
	lh x7, 42 ( x2 )
	ori x28, x0, 65535 & 0xfff
	or x5, x9, x5
	slli x28, x28, 20
	or x5, x10, x5
	or x5, x11, x5
	srli x28, x28, 20
	or x5, x7, x5
	or x4, x4, x28
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	and x4, x4, x5
	beqz x4, LBB1_23
LBB1_21:                                //  %if.then11.i
	lui x1, 49152>>12 
	sh x0, 0 ( x12 )
	sh x0, 2 ( x12 )
	sh x0, 4 ( x12 )
	sh x0, 6 ( x12 )
	sh x0, 8 ( x12 )
	sh x0, 10 ( x12 )
	sh x0, 12 ( x12 )
	sh x0, 14 ( x12 )
	sh x1, 16 ( x12 )
	or x1, x3, x28
	jalr x0, LBB1_24 ( x0 )
LBB1_22:                                //  %if.end13.i
	lh x1, 6 ( x8 )
	nop
	sh x1, 16 ( x12 )
	lh x1, 8 ( x8 )
	nop
	sh x1, 14 ( x12 )
	lh x1, 10 ( x8 )
	nop
	sh x1, 12 ( x12 )
	lh x1, 12 ( x8 )
	nop
	sh x1, 10 ( x12 )
	lh x1, 14 ( x8 )
	nop
	sh x1, 8 ( x12 )
	lh x1, 16 ( x8 )
	nop
	sh x1, 6 ( x12 )
	lh x1, 18 ( x8 )
	nop
	sh x1, 4 ( x12 )
	lh x1, 20 ( x8 )
	nop
	sh x1, 2 ( x12 )
	lh x1, 40 ( x2 )
	nop
	sh x1, 0 ( x12 )
	jalr x0, LBB1_25 ( x0 )
LBB1_23:                                //  %if.end12.i
	or x3, x3, x28
	sh x0, 0 ( x12 )
	sh x0, 2 ( x12 )
	or x1, x3, x1
	sh x0, 4 ( x12 )
	sh x0, 6 ( x12 )
	sh x0, 8 ( x12 )
	sh x0, 10 ( x12 )
	sh x0, 12 ( x12 )
	sh x0, 14 ( x12 )
	sh x0, 16 ( x12 )
LBB1_24:                                //  %cleanup.sink.split.i
	sh x1, 18 ( x12 )
LBB1_25:                                //  %cleanup
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
	.size	$e53toe, ($func_end1)-($e53toe)
	.cfi_endproc

	.globl	$_ldcheck
	.type	$_ldcheck,@function
$_ldcheck:                              //  @_ldcheck
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi14:
	.cfi_def_cfa 2, 0
$cfi15:
	.cfi_val_offset 2, 0
	addi x2, x2, -48
$cfi16:
	.cfi_adjust_cfa_offset 48
	sw x1, 44 ( x2 )
$cfi17:
	.cfi_offset 1, -4
	lw x1, 4 ( x10 )
	lw x3, 0 ( x10 )
	sw x1, 8 ( x2 )
	sw x3, 4 ( x2 )
	addi x10, x2, 4
	addi x11, x2, 14
	call $e53toe
	ori x28, x0, 32767 & 0xfff
	lhu x1, 32 ( x2 )
	slli x28, x28, 20
	lui x3, 32767 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	and x1, x3, x1
	beq x1, x3, LBB2_2
LBB2_1:
	add x10, x0, x0
	jalr x0, LBB2_13 ( x0 )
LBB2_2:                                 //  %for.body.preheader.i
	lhu x1, 14 ( x2 )
	slti x10, x0, 1
	bgtu x1, x0, LBB2_13
LBB2_3:                                 //  %for.inc.i
	lhu x1, 16 ( x2 )
	nop
	bgtu x1, x0, LBB2_13
LBB2_4:                                 //  %for.inc.1.i
	lhu x1, 18 ( x2 )
	nop
	bgtu x1, x0, LBB2_13
LBB2_5:                                 //  %for.inc.2.i
	lhu x1, 20 ( x2 )
	nop
	bgtu x1, x0, LBB2_13
LBB2_6:                                 //  %for.inc.3.i
	lhu x1, 22 ( x2 )
	nop
	bgtu x1, x0, LBB2_13
LBB2_7:                                 //  %for.inc.4.i
	lhu x1, 24 ( x2 )
	nop
	bgtu x1, x0, LBB2_13
LBB2_8:                                 //  %for.inc.5.i
	lhu x1, 26 ( x2 )
	nop
	bgtu x1, x0, LBB2_13
LBB2_9:                                 //  %for.inc.6.i
	lhu x1, 28 ( x2 )
	nop
	bgtu x1, x0, LBB2_13
LBB2_10:                                //  %for.inc.7.i
	lhu x1, 30 ( x2 )
	add x3, x0, x0
	beq x1, x3, LBB2_12
LBB2_11:
	slti x10, x0, 1
	jalr x0, LBB2_13 ( x0 )
LBB2_12:                                //  %for.inc.7.i
	addi x10, x0, 2
LBB2_13:                                //  %cleanup
	lw x1, 44 ( x2 )
$cfi18:
	.cfi_same_value 1
	addi x2, x2, 48
$cfi19:
	.cfi_adjust_cfa_offset -48
$cfi20:
	.cfi_def_cfa 2, 0
	ret
$func_end2:
	.size	$_ldcheck, ($func_end2)-($_ldcheck)
	.cfi_endproc

	.type	$eshift,@function
$eshift:                                //  @eshift
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi21:
	.cfi_def_cfa 2, 0
$cfi22:
	.cfi_val_offset 2, 0
	addi x2, x2, -32
$cfi23:
	.cfi_adjust_cfa_offset 32
	sw x1, 28 ( x2 )
$cfi24:
	.cfi_offset 1, -4
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x10
	bgtu x11, x0, LBB3_2
LBB3_1:
	add x10, x0, x0
	jalr x0, LBB3_26 ( x0 )
LBB3_2:                                 //  %if.end
	bgt x0, x11, LBB3_10
LBB3_3:                                 //  %while.cond29.preheader
	slti x1, x11, 16
	bgtu x1, x0, LBB3_7
LBB3_4:                                 //  %while.body32.lr.ph
	lh x19, 24 ( x8 )
	lh x18, 22 ( x8 )
	lh x16, 20 ( x8 )
	lh x15, 18 ( x8 )
	lh x13, 16 ( x8 )
	lh x12, 14 ( x8 )
	lh x10, 12 ( x8 )
	lh x9, 10 ( x8 )
	lh x5, 8 ( x8 )
	lh x4, 6 ( x8 )
	add x1, x0, x0
	addi x3, x0, 15
LBB3_5:                                 //  %while.body32
                                        //  =>This Inner Loop Header: Depth=1
	add x7, x0, x19
	add x26, x0, x18
	add x14, x0, x16
	add x17, x0, x15
	add x20, x0, x13
	add x21, x0, x12
	add x22, x0, x10
	add x23, x0, x9
	add x24, x0, x5
	add x25, x0, x4
	addi x11, x11, -16
	add x4, x0, x24
	add x5, x0, x23
	add x9, x0, x22
	add x10, x0, x21
	add x12, x0, x20
	add x13, x0, x17
	add x15, x0, x14
	add x16, x0, x26
	add x18, x0, x7
	add x19, x0, x1
	bgt x11, x3, LBB3_5
LBB3_6:                                 //  %while.cond29.while.cond35.preheader_crit_edge
	sh x24, 6 ( x8 )
	sh x25, 4 ( x8 )
	sh x23, 8 ( x8 )
	sh x22, 10 ( x8 )
	sh x21, 12 ( x8 )
	sh x20, 14 ( x8 )
	sh x17, 16 ( x8 )
	sh x14, 18 ( x8 )
	sh x26, 20 ( x8 )
	sh x7, 22 ( x8 )
	sh x0, 24 ( x8 )
LBB3_7:                                 //  %while.cond35.preheader
	slti x1, x11, 8
	beqz x1, LBB3_20
LBB3_8:                                 //  %while.cond41.preheader
	bgt x11, x0, LBB3_21
LBB3_9:
	add x27, x0, x0
	jalr x0, LBB3_25 ( x0 )
LBB3_10:                                //  %if.then3
	addi x1, x0, -16
	sub x29, x0, x11
	ble x11, x1, LBB3_17
LBB3_11:
	add x27, x0, x0
	jalr x0, LBB3_13 ( x0 )
LBB3_12:                                //  %while.cond.while.cond8.preheader_crit_edge
	sh x26, 24 ( x8 )
	sh x25, 22 ( x8 )
	sh x24, 20 ( x8 )
	sh x23, 18 ( x8 )
	sh x21, 16 ( x8 )
	sh x18, 14 ( x8 )
	sh x15, 12 ( x8 )
	sh x12, 10 ( x8 )
	sh x9, 8 ( x8 )
	sh x5, 6 ( x8 )
	sh x0, 4 ( x8 )
LBB3_13:                                //  %while.cond8.preheader
	slti x1, x29, 8
	beqz x1, LBB3_19
LBB3_14:                                //  %while.cond18.preheader
	ble x29, x0, LBB3_25
LBB3_15:                                //  %while.body21.preheader
	addi x3, x29, 1
LBB3_16:                                //  %while.body21
                                        //  =>This Inner Loop Header: Depth=1
	sw x3, 12 ( x2 )                //  4-byte Folded Spill
	sw x27, 16 ( x2 )               //  4-byte Folded Spill
	lhu x1, 24 ( x8 )
	nop
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	add x10, x0, x8
	call $eshdn1
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	lw x27, 16 ( x2 )               //  4-byte Folded Reload
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	andi x1, x1, 1
	addi x3, x3, -1
	or x27, x27, x1
	slti x1, x0, 1
	bgt x3, x1, LBB3_16
	jalr x0, LBB3_25 ( x0 )
LBB3_17:                                //  %while.body.lr.ph
	add x1, x0, x0
	lh x22, 4 ( x8 )
	lh x20, 6 ( x8 )
	lh x19, 8 ( x8 )
	lh x17, 10 ( x8 )
	lh x16, 12 ( x8 )
	lh x14, 14 ( x8 )
	lh x13, 16 ( x8 )
	lh x11, 18 ( x8 )
	lh x10, 20 ( x8 )
	lh x7, 22 ( x8 )
	lh x4, 24 ( x8 )
	addi x3, x0, 15
	add x27, x0, x1
LBB3_18:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	add x5, x0, x22
	add x9, x0, x20
	add x12, x0, x19
	add x15, x0, x17
	add x18, x0, x16
	add x21, x0, x14
	add x23, x0, x13
	add x24, x0, x11
	add x25, x0, x10
	add x26, x0, x7
	addi x29, x29, -16
	or x27, x27, x4
	add x4, x0, x26
	add x7, x0, x25
	add x10, x0, x24
	add x11, x0, x23
	add x13, x0, x21
	add x14, x0, x18
	add x16, x0, x15
	add x17, x0, x12
	add x19, x0, x9
	add x20, x0, x5
	add x22, x0, x1
	bgt x29, x3, LBB3_18
	j LBB3_12
LBB3_19:                                //  %while.body11
                                        //  =>This Inner Loop Header: Depth=1
	sw x29, 12 ( x2 )               //  4-byte Folded Spill
	sw x27, 16 ( x2 )               //  4-byte Folded Spill
	lbu x1, 24 ( x8 )
	nop
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	add x10, x0, x8
	call $eshdn8
	lw x29, 12 ( x2 )               //  4-byte Folded Reload
	lw x27, 16 ( x2 )               //  4-byte Folded Reload
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	or x27, x27, x1
	addi x29, x29, -8
	addi x1, x0, 7
	bgt x29, x1, LBB3_19
	jalr x0, LBB3_14 ( x0 )
LBB3_20:                                //  %while.body38
                                        //  =>This Inner Loop Header: Depth=1
	sw x11, 16 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	call $eshup8
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	nop
	addi x11, x11, -8
	addi x1, x0, 7
	bgt x11, x1, LBB3_20
	jalr x0, LBB3_8 ( x0 )
LBB3_21:
	add x27, x0, x0
	addi x1, x0, 24
	lui x3, 65535 >> 12 & 0xfffff
	slti x4, x0, 1
LBB3_22:                                //  %for.body.i.preheader
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB3_23 Depth 2
	add x5, x0, x11
	add x7, x0, x1
	add x9, x0, x27
LBB3_23:                                //  %for.body.i
                                        //    Parent Loop BB3_22 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x10, x7, x8
	lhu x11, 0 ( x10 )
	nop
	srli x12, x11, 15
	or x9, x9, x12
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x12, x3, x28
	and x9, x12, x9
	slli x11, x11, 1
	srli x12, x9, 1
	andi x12, x12, 1
	or x11, x11, x12
	sh x11, 0 ( x10 )
	slli x9, x9, 1
	addi x7, x7, -2
	xori x10, x7, 2
	bgtu x10, x0, LBB3_23
LBB3_24:                                //  %eshup1.exit
                                        //    in Loop: Header=BB3_22 Depth=1
	addi x11, x5, -1
	bgt x5, x4, LBB3_22
LBB3_25:                                //  %if.end47
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lui x1, 65535 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	and x1, x1, x27
	sltu x1, x0, x1
	andi x10, x1, 1
LBB3_26:                                //  %cleanup
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	lw x1, 28 ( x2 )
$cfi25:
	.cfi_same_value 1
	addi x2, x2, 32
$cfi26:
	.cfi_adjust_cfa_offset -32
$cfi27:
	.cfi_def_cfa 2, 0
	ret
$func_end3:
	.size	$eshift, ($func_end3)-($eshift)
	.cfi_endproc

	.type	$enormlz,@function
$enormlz:                               //  @enormlz
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi28:
	.cfi_def_cfa 2, 0
$cfi29:
	.cfi_val_offset 2, 0
	addi x2, x2, -24
$cfi30:
	.cfi_adjust_cfa_offset 24
	sw x1, 20 ( x2 )
$cfi31:
	.cfi_offset 1, -4
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	lhu x1, 4 ( x10 )
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	bgtu x1, x0, LBB4_18
LBB4_1:                                 //  %if.end
	lh x1, 6 ( x10 )
	nop
	bgez x1, LBB4_3
LBB4_2:
	add x8, x0, x0
	jalr x0, LBB4_23 ( x0 )
LBB4_3:                                 //  %while.cond.preheader
	beqz x1, LBB4_10
LBB4_4:
	add x8, x0, x0
	jalr x0, LBB4_7 ( x0 )
LBB4_5:                                 //  %while.condthread-pre-split
                                        //    in Loop: Header=BB4_11 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x7, x11, x28
	and x26, x7, x1
	add x15, x0, x22
	add x7, x0, x8
	add x17, x0, x16
	add x18, x0, x14
	add x19, x0, x13
	add x20, x0, x12
	add x21, x0, x9
	add x23, x0, x5
	add x24, x0, x4
	add x25, x0, x3
	beqz x26, LBB4_11
LBB4_6:                                 //  %while.cond.while.cond12.preheader_crit_edge
	sh x0, 4 ( x10 )
	sh x22, 8 ( x10 )
	sh x1, 6 ( x10 )
	sh x16, 10 ( x10 )
	sh x14, 12 ( x10 )
	sh x13, 14 ( x10 )
	sh x12, 16 ( x10 )
	sh x9, 18 ( x10 )
	sh x5, 20 ( x10 )
	sh x4, 22 ( x10 )
	sh x0, 24 ( x10 )
LBB4_7:                                 //  %while.cond12.preheader
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lui x3, 65535 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	and x3, x3, x1
	addi x4, x0, 255
	bgeu x4, x3, LBB4_13
LBB4_8:                                 //  %while.cond20.preheader
	slli x1, x1, 16
	srai x1, x1, 16
	bgt x0, x1, LBB4_23
LBB4_9:
	add x1, x0, x0
	addi x3, x0, 24
	addi x4, x0, 159
	lui x14, 65535 >> 12 & 0xfffff
	jalr x0, LBB4_15 ( x0 )
LBB4_10:                                //  %while.body.lr.ph
	add x3, x0, x0
	lh x25, 24 ( x10 )
	lh x24, 22 ( x10 )
	lh x23, 20 ( x10 )
	lh x21, 18 ( x10 )
	lh x20, 16 ( x10 )
	lh x19, 14 ( x10 )
	lh x18, 12 ( x10 )
	lh x17, 10 ( x10 )
	lh x15, 8 ( x10 )
	addi x27, x0, 144
	lui x11, 65535 >> 12 & 0xfffff
	add x7, x0, x3
LBB4_11:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	add x4, x0, x25
	add x5, x0, x24
	add x9, x0, x23
	add x12, x0, x21
	add x13, x0, x20
	add x14, x0, x19
	add x16, x0, x18
	add x22, x0, x17
	add x1, x0, x15
	addi x8, x7, 16
	ble x8, x27, LBB4_5
LBB4_12:                                //  %cleanup.loopexit77
	sh x0, 4 ( x10 )
	sh x22, 8 ( x10 )
	sh x1, 6 ( x10 )
	sh x16, 10 ( x10 )
	sh x14, 12 ( x10 )
	sh x13, 14 ( x10 )
	sh x12, 16 ( x10 )
	sh x9, 18 ( x10 )
	sh x5, 20 ( x10 )
	sh x4, 22 ( x10 )
	sh x0, 24 ( x10 )
	addi x8, x7, 16
	jalr x0, LBB4_23 ( x0 )
LBB4_13:                                //  %while.body17
                                        //  =>This Inner Loop Header: Depth=1
	call $eshup8
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	addi x8, x8, 8
	lhu x1, 6 ( x10 )
	nop
	sltiu x3, x1, 256
	bgtu x3, x0, LBB4_13
	jalr x0, LBB4_8 ( x0 )
LBB4_14:                                //  %while.cond20thread-pre-split
                                        //    in Loop: Header=BB4_15 Depth=1
	lh x5, 6 ( x10 )
	nop
	bgt x0, x5, LBB4_23
LBB4_15:                                //  %while.body25
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB4_16 Depth 2
	add x5, x0, x8
	add x7, x0, x3
	add x9, x0, x1
LBB4_16:                                //  %for.body.i
                                        //    Parent Loop BB4_15 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x13, x7, x10
	lhu x11, 0 ( x13 )
	nop
	srli x12, x11, 15
	or x9, x9, x12
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x12, x14, x28
	and x9, x12, x9
	slli x11, x11, 1
	srli x12, x9, 1
	andi x12, x12, 1
	or x11, x11, x12
	sh x11, 0 ( x13 )
	slli x9, x9, 1
	addi x7, x7, -2
	xori x11, x7, 2
	bgtu x11, x0, LBB4_16
LBB4_17:                                //  %eshup1.exit
                                        //    in Loop: Header=BB4_15 Depth=1
	addi x8, x5, 1
	ble x5, x4, LBB4_14
	jalr x0, LBB4_23 ( x0 )
LBB4_18:                                //  %normdn
	sltiu x1, x1, 256
	beqz x1, LBB4_20
LBB4_19:
	add x8, x0, x0
	jalr x0, LBB4_21 ( x0 )
LBB4_20:                                //  %if.then35
	call $eshdn8
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	addi x8, x0, -8
LBB4_21:                                //  %while.cond37
                                        //  =>This Inner Loop Header: Depth=1
	lhu x1, 4 ( x10 )
	nop
	beqz x1, LBB4_23
LBB4_22:                                //  %while.body41
                                        //    in Loop: Header=BB4_21 Depth=1
	call $eshdn1
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	slti x1, x8, -143
	addi x8, x8, -1
	beqz x1, LBB4_21
LBB4_23:                                //  %cleanup
	add x10, x0, x8
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	lw x1, 20 ( x2 )
$cfi32:
	.cfi_same_value 1
	addi x2, x2, 24
$cfi33:
	.cfi_adjust_cfa_offset -24
$cfi34:
	.cfi_def_cfa 2, 0
	ret
$func_end4:
	.size	$enormlz, ($func_end4)-($enormlz)
	.cfi_endproc

	.type	$eshdn8,@function
$eshdn8:                                //  @eshdn8
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi35:
	.cfi_def_cfa 2, 0
$cfi36:
	.cfi_val_offset 2, 0
	lhu x3, 4 ( x10 )
	lhu x4, 6 ( x10 )
	lhu x5, 8 ( x10 )
	lhu x7, 10 ( x10 )
	lhu x9, 12 ( x10 )
	lhu x11, 14 ( x10 )
	lhu x12, 16 ( x10 )
	lhu x13, 18 ( x10 )
	lhu x14, 20 ( x10 )
	lhu x15, 22 ( x10 )
	lbu x16, 25 ( x10 )
	slli x17, x3, 8
	srli x18, x4, 8
	slli x19, x15, 8
	slli x4, x4, 8
	srli x20, x5, 8
	slli x5, x5, 8
	srli x21, x7, 8
	slli x7, x7, 8
	srli x22, x9, 8
	slli x9, x9, 8
	srli x23, x11, 8
	slli x11, x11, 8
	srli x24, x12, 8
	slli x12, x12, 8
	srli x25, x13, 8
	slli x13, x13, 8
	srli x26, x14, 8
	slli x14, x14, 8
	srli x15, x15, 8
	srli x3, x3, 8
	or x17, x17, x18
	or x4, x4, x20
	or x5, x5, x21
	or x7, x7, x22
	or x9, x9, x23
	or x11, x11, x24
	or x12, x12, x25
	or x13, x13, x26
	or x14, x14, x15
	or x15, x19, x16
	sh x3, 4 ( x10 )
	sh x17, 6 ( x10 )
	sh x4, 8 ( x10 )
	sh x5, 10 ( x10 )
	sh x7, 12 ( x10 )
	sh x9, 14 ( x10 )
	sh x11, 16 ( x10 )
	sh x12, 18 ( x10 )
	sh x13, 20 ( x10 )
	sh x14, 22 ( x10 )
	sh x15, 24 ( x10 )
	ret
$func_end5:
	.size	$eshdn8, ($func_end5)-($eshdn8)
	.cfi_endproc

	.type	$eshdn1,@function
$eshdn1:                                //  @eshdn1
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi37:
	.cfi_def_cfa 2, 0
$cfi38:
	.cfi_val_offset 2, 0
	lhu x3, 4 ( x10 )
	lhu x4, 6 ( x10 )
	lhu x5, 8 ( x10 )
	lhu x7, 10 ( x10 )
	slli x9, x3, 1
	andi x9, x9, 2
	andi x11, x4, 1
	or x9, x9, x11
	lhu x11, 12 ( x10 )
	slli x9, x9, 1
	andi x12, x5, 1
	or x9, x9, x12
	ori x28, x0, 65535 & 0xfff
	slli x9, x9, 1
	andi x12, x7, 1
	slli x28, x28, 20
	lhu x13, 14 ( x10 )
	or x9, x9, x12
	slli x9, x9, 1
	andi x12, x11, 1
	lui x14, 65535 >> 12 & 0xfffff
	srli x28, x28, 20
	or x9, x9, x12
	or x12, x14, x28
	lhu x14, 16 ( x10 )
	and x15, x12, x9
	slli x15, x15, 1
	andi x16, x13, 1
	or x15, x15, x16
	lhu x16, 18 ( x10 )
	and x17, x12, x15
	slli x17, x17, 1
	andi x18, x14, 1
	or x17, x17, x18
	lhu x18, 20 ( x10 )
	and x19, x12, x17
	slli x19, x19, 1
	andi x20, x16, 1
	or x19, x19, x20
	lhu x20, 22 ( x10 )
	and x21, x12, x19
	slli x21, x21, 1
	andi x22, x18, 1
	or x21, x21, x22
	and x12, x12, x21
	lhu x22, 24 ( x10 )
	slli x12, x12, 1
	andi x23, x20, 1
	or x12, x12, x23
	andi x9, x9, 2
	andi x15, x15, 2
	andi x17, x17, 2
	andi x19, x19, 2
	andi x21, x21, 2
	andi x23, x12, 2
	slli x24, x3, 15
	srli x25, x4, 1
	slli x4, x4, 15
	srli x26, x5, 1
	slli x5, x5, 15
	srli x7, x7, 1
	slli x9, x9, 14
	srli x11, x11, 1
	slli x15, x15, 14
	srli x13, x13, 1
	slli x17, x17, 14
	srli x14, x14, 1
	slli x19, x19, 14
	srli x16, x16, 1
	slli x21, x21, 14
	srli x18, x18, 1
	slli x23, x23, 14
	srli x20, x20, 1
	slli x12, x12, 15
	srli x22, x22, 1
	srli x3, x3, 1
	or x24, x25, x24
	or x4, x26, x4
	or x5, x7, x5
	or x7, x11, x9
	or x9, x13, x15
	or x11, x14, x17
	or x13, x16, x19
	or x14, x18, x21
	or x15, x20, x23
	or x12, x22, x12
	sh x3, 4 ( x10 )
	sh x24, 6 ( x10 )
	sh x4, 8 ( x10 )
	sh x5, 10 ( x10 )
	sh x7, 12 ( x10 )
	sh x9, 14 ( x10 )
	sh x11, 16 ( x10 )
	sh x13, 18 ( x10 )
	sh x14, 20 ( x10 )
	sh x15, 22 ( x10 )
	sh x12, 24 ( x10 )
	ret
$func_end6:
	.size	$eshdn1, ($func_end6)-($eshdn1)
	.cfi_endproc

	.type	$eshup8,@function
$eshup8:                                //  @eshup8
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi39:
	.cfi_def_cfa 2, 0
$cfi40:
	.cfi_val_offset 2, 0
	lhu x3, 24 ( x10 )
	lhu x4, 22 ( x10 )
	lhu x5, 20 ( x10 )
	lhu x7, 18 ( x10 )
	lhu x9, 16 ( x10 )
	lhu x11, 14 ( x10 )
	lhu x12, 12 ( x10 )
	lhu x13, 10 ( x10 )
	lhu x14, 8 ( x10 )
	lhu x15, 6 ( x10 )
	lhu x16, 4 ( x10 )
	srli x17, x3, 8
	slli x18, x4, 8
	srli x4, x4, 8
	slli x19, x5, 8
	srli x5, x5, 8
	slli x20, x7, 8
	srli x7, x7, 8
	slli x21, x9, 8
	srli x9, x9, 8
	slli x22, x11, 8
	srli x11, x11, 8
	slli x23, x12, 8
	srli x12, x12, 8
	slli x24, x13, 8
	srli x13, x13, 8
	slli x25, x14, 8
	srli x14, x14, 8
	slli x26, x15, 8
	srli x15, x15, 8
	slli x16, x16, 8
	slli x3, x3, 8
	or x17, x17, x18
	or x4, x4, x19
	or x5, x5, x20
	or x7, x7, x21
	or x9, x9, x22
	or x11, x11, x23
	or x12, x12, x24
	or x13, x13, x25
	or x14, x14, x26
	or x15, x15, x16
	sh x3, 24 ( x10 )
	sh x17, 22 ( x10 )
	sh x4, 20 ( x10 )
	sh x5, 18 ( x10 )
	sh x7, 16 ( x10 )
	sh x9, 14 ( x10 )
	sh x11, 12 ( x10 )
	sh x12, 10 ( x10 )
	sh x13, 8 ( x10 )
	sh x14, 6 ( x10 )
	sh x15, 4 ( x10 )
	ret
$func_end7:
	.size	$eshup8, ($func_end7)-($eshup8)
	.cfi_endproc

	.type	$ecmp,@function
$ecmp:                                  //  @ecmp
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi41:
	.cfi_def_cfa 2, 0
$cfi42:
	.cfi_val_offset 2, 0
	addi x2, x2, -72
$cfi43:
	.cfi_adjust_cfa_offset 72
	sw x8, 60 ( x2 )                //  4-byte Folded Spill
	add x3, x0, x10
	ori x28, x0, 32767 & 0xfff
	lhu x7, 18 ( x3 )
	slli x28, x28, 20
	lui x9, 32767 >> 12 & 0xfffff
	srli x28, x28, 20
	or x5, x9, x28
	and x4, x5, x7
	bne x4, x5, LBB8_10
LBB8_1:                                 //  %for.body.preheader.i
	lhu x5, 0 ( x3 )
	addi x10, x0, -2
	bgtu x5, x0, LBB8_57
LBB8_2:                                 //  %for.inc.i
	lhu x5, 2 ( x3 )
	nop
	bgtu x5, x0, LBB8_57
LBB8_3:                                 //  %for.inc.1.i
	lhu x5, 4 ( x3 )
	nop
	bgtu x5, x0, LBB8_57
LBB8_4:                                 //  %for.inc.2.i
	lhu x5, 6 ( x3 )
	nop
	bgtu x5, x0, LBB8_57
LBB8_5:                                 //  %for.inc.3.i
	lhu x5, 8 ( x3 )
	nop
	bgtu x5, x0, LBB8_57
LBB8_6:                                 //  %for.inc.4.i
	lhu x5, 10 ( x3 )
	nop
	bgtu x5, x0, LBB8_57
LBB8_7:                                 //  %for.inc.5.i
	lhu x5, 12 ( x3 )
	nop
	bgtu x5, x0, LBB8_57
LBB8_8:                                 //  %for.inc.6.i
	lhu x5, 14 ( x3 )
	nop
	bgtu x5, x0, LBB8_57
LBB8_9:                                 //  %eisnan.exit
	lhu x5, 16 ( x3 )
	nop
	bgtu x5, x0, LBB8_57
LBB8_10:                                //  %lor.lhs.false
	ori x28, x0, 32767 & 0xfff
	lhu x12, 18 ( x11 )
	slli x28, x28, 20
	srli x28, x28, 20
	or x10, x9, x28
	and x5, x10, x12
	bne x5, x10, LBB8_20
LBB8_11:                                //  %for.body.preheader.i162
	lhu x13, 0 ( x11 )
	addi x10, x0, -2
	bgtu x13, x0, LBB8_57
LBB8_12:                                //  %for.inc.i165
	lhu x13, 2 ( x11 )
	nop
	bgtu x13, x0, LBB8_57
LBB8_13:                                //  %for.inc.1.i170
	lhu x13, 4 ( x11 )
	nop
	bgtu x13, x0, LBB8_57
LBB8_14:                                //  %for.inc.2.i173
	lhu x13, 6 ( x11 )
	nop
	bgtu x13, x0, LBB8_57
LBB8_15:                                //  %for.inc.3.i176
	lhu x13, 8 ( x11 )
	nop
	bgtu x13, x0, LBB8_57
LBB8_16:                                //  %for.inc.4.i179
	lhu x13, 10 ( x11 )
	nop
	bgtu x13, x0, LBB8_57
LBB8_17:                                //  %for.inc.5.i182
	lhu x13, 12 ( x11 )
	nop
	bgtu x13, x0, LBB8_57
LBB8_18:                                //  %for.inc.6.i185
	lhu x13, 14 ( x11 )
	nop
	bgtu x13, x0, LBB8_57
LBB8_19:                                //  %eisnan.exit190
	lhu x13, 16 ( x11 )
	nop
	bgtu x13, x0, LBB8_57
LBB8_20:                                //  %if.end
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	slli x10, x7, 16
	srli x28, x28, 20
	srai x13, x10, 31
	or x10, x9, x28
	sh x13, 34 ( x2 )
	sh x4, 36 ( x2 )
	bne x4, x10, LBB8_31
LBB8_21:                                //  %for.body.preheader.i.i85
	lh x14, 2 ( x3 )
	lh x10, 0 ( x3 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lui x15, 65535 >> 12 & 0xfffff
	srli x28, x28, 20
	or x16, x14, x10
	or x15, x15, x28
	and x15, x15, x16
	bgtu x15, x0, LBB8_30
LBB8_22:                                //  %for.inc.1.i.i91
	lhu x15, 4 ( x3 )
	add x14, x0, x0
	bgtu x15, x0, LBB8_30
LBB8_23:                                //  %for.inc.2.i.i94
	lhu x15, 6 ( x3 )
	nop
	bgtu x15, x0, LBB8_30
LBB8_24:                                //  %for.inc.3.i.i97
	lhu x15, 8 ( x3 )
	nop
	bgtu x15, x0, LBB8_30
LBB8_25:                                //  %for.inc.4.i.i100
	lhu x15, 10 ( x3 )
	nop
	bgtu x15, x0, LBB8_30
LBB8_26:                                //  %for.inc.5.i.i103
	lhu x15, 12 ( x3 )
	nop
	bgtu x15, x0, LBB8_30
LBB8_27:                                //  %for.inc.6.i.i106
	lhu x15, 14 ( x3 )
	nop
	bgtu x15, x0, LBB8_30
LBB8_28:                                //  %eisnan.exit.i108
	lhu x15, 16 ( x3 )
	nop
	bgtu x15, x0, LBB8_30
LBB8_29:                                //  %for.body23.preheader.i119
	addi x3, x2, 34
	sh x0, 4 ( x3 )
	sh x0, 6 ( x3 )
	sh x0, 8 ( x3 )
	sh x0, 10 ( x3 )
	sh x0, 12 ( x3 )
	sh x0, 14 ( x3 )
	sh x0, 16 ( x3 )
	sh x0, 18 ( x3 )
	sh x0, 20 ( x3 )
	sh x0, 22 ( x3 )
	add x16, x0, x0
	sh x0, 58 ( x2 )
	add x15, x0, x16
	add x17, x0, x16
	add x18, x0, x16
	add x19, x0, x16
	add x20, x0, x16
	add x21, x0, x16
	add x14, x0, x16
	add x10, x0, x16
	jalr x0, LBB8_32 ( x0 )
LBB8_30:                                //  %if.then13.i138
	addi x22, x2, 34
	sh x0, 4 ( x22 )
	lh x16, 16 ( x3 )
	lh x15, 14 ( x3 )
	lh x17, 12 ( x3 )
	lh x18, 10 ( x3 )
	lh x19, 8 ( x3 )
	lh x20, 6 ( x3 )
	lh x21, 4 ( x3 )
	lh x3, -2 ( x3 )
	sh x16, 6 ( x22 )
	sh x15, 8 ( x22 )
	sh x17, 10 ( x22 )
	sh x18, 12 ( x22 )
	sh x19, 14 ( x22 )
	sh x20, 16 ( x22 )
	sh x21, 18 ( x22 )
	sh x14, 20 ( x22 )
	sh x10, 22 ( x22 )
	sh x3, 58 ( x2 )
	jalr x0, LBB8_32 ( x0 )
LBB8_31:                                //  %if.end28.i156
	addi x22, x2, 34
	sh x0, 4 ( x22 )
	lh x16, 16 ( x3 )
	lh x15, 14 ( x3 )
	lh x17, 12 ( x3 )
	lh x18, 10 ( x3 )
	lh x19, 8 ( x3 )
	lh x20, 6 ( x3 )
	lh x21, 4 ( x3 )
	lh x14, 2 ( x3 )
	lh x10, 0 ( x3 )
	sh x16, 6 ( x22 )
	sh x15, 8 ( x22 )
	sh x17, 10 ( x22 )
	sh x18, 12 ( x22 )
	sh x19, 14 ( x22 )
	sh x20, 16 ( x22 )
	sh x21, 18 ( x22 )
	sh x14, 20 ( x22 )
	sh x10, 22 ( x22 )
	sh x0, 58 ( x2 )
LBB8_32:                                //  %emovi.exit158
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	slli x3, x12, 16
	srli x28, x28, 20
	srai x3, x3, 31
	or x22, x9, x28
	sh x3, 8 ( x2 )
	sh x5, 10 ( x2 )
	bne x5, x22, LBB8_43
LBB8_33:                                //  %for.body.preheader.i.i
	lh x23, 2 ( x11 )
	lh x22, 0 ( x11 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lui x24, 65535 >> 12 & 0xfffff
	srli x28, x28, 20
	or x25, x23, x22
	or x24, x24, x28
	and x24, x24, x25
	bgtu x24, x0, LBB8_42
LBB8_34:                                //  %for.inc.1.i.i
	lhu x24, 4 ( x11 )
	add x23, x0, x0
	bgtu x24, x0, LBB8_42
LBB8_35:                                //  %for.inc.2.i.i
	lhu x24, 6 ( x11 )
	nop
	bgtu x24, x0, LBB8_42
LBB8_36:                                //  %for.inc.3.i.i
	lhu x24, 8 ( x11 )
	nop
	bgtu x24, x0, LBB8_42
LBB8_37:                                //  %for.inc.4.i.i
	lhu x24, 10 ( x11 )
	nop
	bgtu x24, x0, LBB8_42
LBB8_38:                                //  %for.inc.5.i.i
	lhu x24, 12 ( x11 )
	nop
	bgtu x24, x0, LBB8_42
LBB8_39:                                //  %for.inc.6.i.i
	lhu x24, 14 ( x11 )
	nop
	bgtu x24, x0, LBB8_42
LBB8_40:                                //  %eisnan.exit.i
	lhu x24, 16 ( x11 )
	nop
	bgtu x24, x0, LBB8_42
LBB8_41:                                //  %for.body23.preheader.i
	addi x11, x2, 8
	sh x0, 4 ( x11 )
	sh x0, 6 ( x11 )
	sh x0, 8 ( x11 )
	sh x0, 10 ( x11 )
	sh x0, 12 ( x11 )
	sh x0, 14 ( x11 )
	sh x0, 16 ( x11 )
	sh x0, 18 ( x11 )
	sh x0, 20 ( x11 )
	sh x0, 22 ( x11 )
	add x25, x0, x0
	sh x0, 32 ( x2 )
	add x24, x0, x25
	add x26, x0, x25
	add x27, x0, x25
	add x29, x0, x25
	add x30, x0, x25
	add x31, x0, x25
	add x23, x0, x25
	add x22, x0, x25
	jalr x0, LBB8_44 ( x0 )
LBB8_42:                                //  %if.then13.i
	addi x8, x2, 8
	sh x0, 4 ( x8 )
	lh x25, 16 ( x11 )
	lh x24, 14 ( x11 )
	lh x26, 12 ( x11 )
	lh x27, 10 ( x11 )
	lh x29, 8 ( x11 )
	lh x30, 6 ( x11 )
	lh x31, 4 ( x11 )
	lh x11, -2 ( x11 )
	sh x25, 6 ( x8 )
	sh x24, 8 ( x8 )
	sh x26, 10 ( x8 )
	sh x27, 12 ( x8 )
	sh x29, 14 ( x8 )
	sh x30, 16 ( x8 )
	sh x31, 18 ( x8 )
	sh x23, 20 ( x8 )
	sh x22, 22 ( x8 )
	sh x11, 32 ( x2 )
	jalr x0, LBB8_44 ( x0 )
LBB8_43:                                //  %if.end28.i
	addi x8, x2, 8
	sh x0, 4 ( x8 )
	lh x25, 16 ( x11 )
	lh x24, 14 ( x11 )
	lh x26, 12 ( x11 )
	lh x27, 10 ( x11 )
	lh x29, 8 ( x11 )
	lh x30, 6 ( x11 )
	lh x31, 4 ( x11 )
	lh x23, 2 ( x11 )
	lh x22, 0 ( x11 )
	sh x25, 6 ( x8 )
	sh x24, 8 ( x8 )
	sh x26, 10 ( x8 )
	sh x27, 12 ( x8 )
	sh x29, 14 ( x8 )
	sh x30, 16 ( x8 )
	sh x31, 18 ( x8 )
	sh x23, 20 ( x8 )
	sh x22, 22 ( x8 )
	sh x0, 32 ( x2 )
LBB8_44:                                //  %emovi.exit
	beq x13, x3, LBB8_50
LBB8_45:                                //  %for.body.preheader
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x9, x28
	or x4, x12, x7
	and x3, x3, x4
	or x3, x16, x3
	or x3, x25, x3
	or x3, x15, x3
	or x3, x24, x3
	or x3, x17, x3
	or x3, x26, x3
	or x3, x18, x3
	or x3, x27, x3
	or x3, x19, x3
	or x3, x29, x3
	or x3, x20, x3
	or x3, x30, x3
	or x3, x21, x3
	or x3, x31, x3
	ori x28, x0, 65535 & 0xfff
	or x3, x14, x3
	slli x28, x28, 20
	or x3, x23, x3
	or x3, x10, x3
	lui x4, 65535 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x22, x3
	or x4, x4, x28
	and x3, x4, x3
	bgtu x3, x0, LBB8_47
LBB8_46:
	add x10, x0, x0
	jalr x0, LBB8_57 ( x0 )
LBB8_47:                                //  %nzro
	add x3, x0, x0
	bne x13, x3, LBB8_49
LBB8_48:
	slti x10, x0, 1
	jalr x0, LBB8_57 ( x0 )
LBB8_49:                                //  %nzro
	not x10, x0
	jalr x0, LBB8_57 ( x0 )
LBB8_50:                                //  %do.cond
	add x10, x0, x0
	bne x13, x10, LBB8_52
LBB8_51:
	slti x3, x0, 1
	jalr x0, LBB8_53 ( x0 )
LBB8_52:                                //  %do.cond
	not x3, x0
LBB8_53:                                //  %do.cond
	beq x4, x5, LBB8_58
LBB8_54:                                //  %__mdiff
	lui x7, 65535 >> 12 & 0xfffff
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x7, x7, x28
	and x5, x7, x5
	and x4, x7, x4
	bgeu x5, x4, LBB8_56
LBB8_55:
	add x10, x0, x3
	jalr x0, LBB8_57 ( x0 )
LBB8_56:                                //  %__mdiff
	sub x10, x0, x3
LBB8_57:                                //  %cleanup
	lw x8, 60 ( x2 )                //  4-byte Folded Reload
	addi x2, x2, 72
$cfi44:
	.cfi_adjust_cfa_offset -72
$cfi45:
	.cfi_def_cfa 2, 0
	ret
LBB8_58:                                //  %do.cond.2
	lui x7, 65535 >> 12 & 0xfffff
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x7, x28
	and x9, x4, x25
	and x11, x4, x16
	add x4, x0, x16
	add x5, x0, x25
	bne x11, x9, LBB8_54
LBB8_59:                                //  %do.cond.3
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x7, x28
	and x7, x4, x24
	and x9, x4, x15
	add x4, x0, x15
	add x5, x0, x24
	bne x9, x7, LBB8_54
LBB8_60:                                //  %do.cond.4
	lhu x5, 18 ( x2 )
	lhu x4, 44 ( x2 )
	nop
	bne x4, x5, LBB8_54
LBB8_61:                                //  %do.cond.5
	lhu x5, 20 ( x2 )
	lhu x4, 46 ( x2 )
	nop
	bne x4, x5, LBB8_54
LBB8_62:                                //  %do.cond.6
	lhu x5, 22 ( x2 )
	lhu x4, 48 ( x2 )
	nop
	bne x4, x5, LBB8_54
LBB8_63:                                //  %do.cond.7
	lhu x5, 24 ( x2 )
	lhu x4, 50 ( x2 )
	nop
	bne x4, x5, LBB8_54
LBB8_64:                                //  %do.cond.8
	lhu x5, 26 ( x2 )
	lhu x4, 52 ( x2 )
	nop
	bne x4, x5, LBB8_54
LBB8_65:                                //  %do.cond.9
	lhu x5, 28 ( x2 )
	lhu x4, 54 ( x2 )
	nop
	bne x4, x5, LBB8_54
LBB8_66:                                //  %do.cond.10
	lhu x5, 30 ( x2 )
	lhu x4, 56 ( x2 )
	nop
	bne x4, x5, LBB8_54
	jalr x0, LBB8_57 ( x0 )
$func_end8:
	.size	$ecmp, ($func_end8)-($ecmp)
	.cfi_endproc

	.type	$ediv,@function
$ediv:                                  //  @ediv
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi46:
	.cfi_def_cfa 2, 0
$cfi47:
	.cfi_val_offset 2, 0
	addi x2, x2, -136
$cfi48:
	.cfi_adjust_cfa_offset 136
	sw x1, 132 ( x2 )
$cfi49:
	.cfi_offset 1, -4
	sw x8, 124 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x10
	sw x13, 24 ( x2 )               //  4-byte Folded Spill
	add x7, x0, x11
	ori x28, x0, 32767 & 0xfff
	lhu x10, 18 ( x8 )
	slli x28, x28, 20
	lui x4, 32767 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x4, x28
	and x5, x1, x10
	bne x5, x1, LBB9_11
LBB9_1:                                 //  %for.body.preheader.i
	lhu x1, 0 ( x8 )
	nop
	bgtu x1, x0, LBB9_10
LBB9_2:                                 //  %for.inc.i
	lhu x3, 2 ( x8 )
	nop
	bgtu x3, x0, LBB9_10
LBB9_3:                                 //  %for.inc.1.i
	lhu x3, 4 ( x8 )
	nop
	bgtu x3, x0, LBB9_10
LBB9_4:                                 //  %for.inc.2.i
	lhu x3, 6 ( x8 )
	nop
	bgtu x3, x0, LBB9_10
LBB9_5:                                 //  %for.inc.3.i
	lhu x3, 8 ( x8 )
	nop
	bgtu x3, x0, LBB9_10
LBB9_6:                                 //  %for.inc.4.i
	lhu x3, 10 ( x8 )
	nop
	bgtu x3, x0, LBB9_10
LBB9_7:                                 //  %for.inc.5.i
	lhu x3, 12 ( x8 )
	nop
	bgtu x3, x0, LBB9_10
LBB9_8:                                 //  %for.inc.6.i
	lhu x3, 14 ( x8 )
	nop
	bgtu x3, x0, LBB9_10
LBB9_9:                                 //  %eisnan.exit
	lhu x3, 16 ( x8 )
	nop
	beqz x3, LBB9_11
LBB9_10:                                //  %if.then
	sh x1, 0 ( x12 )
	lh x1, 2 ( x8 )
	nop
	sh x1, 2 ( x12 )
	lh x1, 4 ( x8 )
	nop
	sh x1, 4 ( x12 )
	lh x1, 6 ( x8 )
	nop
	sh x1, 6 ( x12 )
	lh x1, 8 ( x8 )
	nop
	sh x1, 8 ( x12 )
	lh x1, 10 ( x8 )
	nop
	sh x1, 10 ( x12 )
	lh x1, 12 ( x8 )
	nop
	sh x1, 12 ( x12 )
	lh x1, 14 ( x8 )
	nop
	sh x1, 14 ( x12 )
	lh x1, 16 ( x8 )
	nop
	sh x1, 16 ( x12 )
	lh x1, 18 ( x8 )
	nop
	sh x1, 18 ( x12 )
	jalr x0, LBB9_158 ( x0 )
LBB9_11:                                //  %if.end
	ori x28, x0, 32767 & 0xfff
	lhu x9, 18 ( x7 )
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x4, x28
	and x4, x1, x9
	bne x4, x1, LBB9_22
LBB9_12:                                //  %for.body.preheader.i372
	lhu x1, 0 ( x7 )
	nop
	bgtu x1, x0, LBB9_21
LBB9_13:                                //  %for.inc.i375
	lhu x3, 2 ( x7 )
	nop
	bgtu x3, x0, LBB9_21
LBB9_14:                                //  %for.inc.1.i380
	lhu x3, 4 ( x7 )
	nop
	bgtu x3, x0, LBB9_21
LBB9_15:                                //  %for.inc.2.i383
	lhu x3, 6 ( x7 )
	nop
	bgtu x3, x0, LBB9_21
LBB9_16:                                //  %for.inc.3.i386
	lhu x3, 8 ( x7 )
	nop
	bgtu x3, x0, LBB9_21
LBB9_17:                                //  %for.inc.4.i389
	lhu x3, 10 ( x7 )
	nop
	bgtu x3, x0, LBB9_21
LBB9_18:                                //  %for.inc.5.i392
	lhu x3, 12 ( x7 )
	nop
	bgtu x3, x0, LBB9_21
LBB9_19:                                //  %for.inc.6.i395
	lhu x3, 14 ( x7 )
	nop
	bgtu x3, x0, LBB9_21
LBB9_20:                                //  %eisnan.exit400
	lhu x3, 16 ( x7 )
	nop
	beqz x3, LBB9_22
LBB9_21:                                //  %if.then3
	sh x1, 0 ( x12 )
	lh x1, 2 ( x7 )
	nop
	sh x1, 2 ( x12 )
	lh x1, 4 ( x7 )
	nop
	sh x1, 4 ( x12 )
	lh x1, 6 ( x7 )
	nop
	sh x1, 6 ( x12 )
	lh x1, 8 ( x7 )
	nop
	sh x1, 8 ( x12 )
	lh x1, 10 ( x7 )
	nop
	sh x1, 10 ( x12 )
	lh x1, 12 ( x7 )
	nop
	sh x1, 12 ( x12 )
	lh x1, 14 ( x7 )
	nop
	sh x1, 14 ( x12 )
	lh x1, 16 ( x7 )
	nop
	sh x1, 16 ( x12 )
	lh x1, 18 ( x7 )
	nop
	sh x1, 18 ( x12 )
	jalr x0, LBB9_158 ( x0 )
LBB9_22:                                //  %if.end4
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	sw x9, 28 ( x2 )                //  4-byte Folded Spill
	sw x12, 8 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, $ezero & 0xfff
	slli x28, x28, 20
	lui x1, $ezero >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	sw x5, 40 ( x2 )                //  4-byte Folded Spill
	sw x7, 36 ( x2 )                //  4-byte Folded Spill
	sw x4, 32 ( x2 )                //  4-byte Folded Spill
	call $ecmp
	lw x18, 32 ( x2 )               //  4-byte Folded Reload
	lw x15, 36 ( x2 )               //  4-byte Folded Reload
	lw x17, 40 ( x2 )               //  4-byte Folded Reload
	lui x16, 32767 >> 12 & 0xfffff
	bgtu x10, x0, LBB9_24
LBB9_23:                                //  %land.lhs.true
	ori x28, x0, $ezero & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $ezero >> 12 & 0xfffff
	or x11, x1, x28
	add x10, x0, x15
	call $ecmp
	lw x18, 32 ( x2 )               //  4-byte Folded Reload
	lw x15, 36 ( x2 )               //  4-byte Folded Reload
	lw x17, 40 ( x2 )               //  4-byte Folded Reload
	lui x16, 32767 >> 12 & 0xfffff
	beqz x10, LBB9_44
LBB9_24:                                //  %lor.lhs.false
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x16, x28
	bne x17, x1, LBB9_45
LBB9_25:                                //  %for.body.preheader.i.i439
	lhu x1, 0 ( x8 )
	nop
	bgtu x1, x0, LBB9_45
LBB9_26:                                //  %for.inc.i.i441
	lhu x1, 2 ( x8 )
	nop
	bgtu x1, x0, LBB9_45
LBB9_27:                                //  %for.inc.1.i.i443
	lhu x1, 4 ( x8 )
	nop
	bgtu x1, x0, LBB9_45
LBB9_28:                                //  %for.inc.2.i.i445
	lhu x1, 6 ( x8 )
	nop
	bgtu x1, x0, LBB9_45
LBB9_29:                                //  %for.inc.3.i.i447
	lhu x1, 8 ( x8 )
	nop
	bgtu x1, x0, LBB9_45
LBB9_30:                                //  %for.inc.4.i.i449
	lhu x1, 10 ( x8 )
	nop
	bgtu x1, x0, LBB9_45
LBB9_31:                                //  %for.inc.5.i.i451
	lhu x1, 12 ( x8 )
	nop
	bgtu x1, x0, LBB9_45
LBB9_32:                                //  %for.inc.6.i.i453
	lhu x1, 14 ( x8 )
	nop
	bgtu x1, x0, LBB9_45
LBB9_33:                                //  %eisinf.exit
	lhu x1, 16 ( x8 )
	nop
	bgtu x1, x0, LBB9_45
LBB9_34:                                //  %land.lhs.true10
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x16, x28
	bne x18, x1, LBB9_69
LBB9_35:                                //  %for.body.preheader.i.i738
	lhu x1, 0 ( x15 )
	nop
	bgtu x1, x0, LBB9_69
LBB9_36:                                //  %for.inc.i.i741
	lhu x1, 2 ( x15 )
	nop
	bgtu x1, x0, LBB9_46
LBB9_37:                                //  %for.inc.1.i.i744
	lhu x1, 4 ( x15 )
	nop
	bgtu x1, x0, LBB9_46
LBB9_38:                                //  %for.inc.2.i.i747
	lhu x1, 6 ( x15 )
	nop
	bgtu x1, x0, LBB9_46
LBB9_39:                                //  %for.inc.3.i.i750
	lhu x1, 8 ( x15 )
	nop
	bgtu x1, x0, LBB9_46
LBB9_40:                                //  %for.inc.4.i.i753
	lhu x1, 10 ( x15 )
	nop
	bgtu x1, x0, LBB9_46
LBB9_41:                                //  %for.inc.5.i.i756
	lhu x1, 12 ( x15 )
	nop
	bgtu x1, x0, LBB9_46
LBB9_42:                                //  %for.inc.6.i.i759
	lhu x1, 14 ( x15 )
	nop
	bgtu x1, x0, LBB9_46
LBB9_43:                                //  %eisinf.exit767
	lhu x1, 16 ( x15 )
	nop
	bgtu x1, x0, LBB9_46
LBB9_44:                                //  %if.then13
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 49152>>12 
	or x3, x16, x28
	lw x4, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sh x0, 0 ( x4 )
	sh x0, 2 ( x4 )
	sh x0, 4 ( x4 )
	sh x0, 6 ( x4 )
	sh x0, 8 ( x4 )
	sh x0, 10 ( x4 )
	sh x0, 12 ( x4 )
	sh x0, 14 ( x4 )
	sh x1, 16 ( x4 )
	sh x3, 18 ( x4 )
	jalr x0, LBB9_158 ( x0 )
LBB9_45:                                //  %if.end14
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x16, x28
	bne x18, x1, LBB9_69
LBB9_46:                                //  %for.body.preheader.i.i697
	lhu x1, 0 ( x15 )
	nop
	bgtu x1, x0, LBB9_69
LBB9_47:                                //  %for.inc.i.i700
	lhu x1, 2 ( x15 )
	nop
	bgtu x1, x0, LBB9_69
LBB9_48:                                //  %for.inc.1.i.i703
	lhu x1, 4 ( x15 )
	nop
	bgtu x1, x0, LBB9_69
LBB9_49:                                //  %for.inc.2.i.i706
	lhu x1, 6 ( x15 )
	nop
	bgtu x1, x0, LBB9_69
LBB9_50:                                //  %for.inc.3.i.i709
	lhu x1, 8 ( x15 )
	nop
	bgtu x1, x0, LBB9_69
LBB9_51:                                //  %for.inc.4.i.i712
	lhu x1, 10 ( x15 )
	nop
	bgtu x1, x0, LBB9_69
LBB9_52:                                //  %for.inc.5.i.i715
	lhu x1, 12 ( x15 )
	nop
	bgtu x1, x0, LBB9_69
LBB9_53:                                //  %for.inc.6.i.i718
	lhu x1, 14 ( x15 )
	nop
	bgtu x1, x0, LBB9_69
LBB9_54:                                //  %eisinf.exit726
	lhu x1, 16 ( x15 )
	nop
	bgtu x1, x0, LBB9_69
LBB9_55:                                //  %if.then17
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x16, x28
	bne x17, x1, LBB9_65
LBB9_56:                                //  %for.body.preheader.i.i665
	lhu x3, 0 ( x8 )
	add x1, x0, x0
	bgtu x3, x0, LBB9_66
LBB9_57:                                //  %for.inc.i.i668
	lhu x3, 2 ( x8 )
	nop
	bgtu x3, x0, LBB9_66
LBB9_58:                                //  %for.inc.1.i.i671
	lhu x3, 4 ( x8 )
	nop
	bgtu x3, x0, LBB9_66
LBB9_59:                                //  %for.inc.2.i.i674
	lhu x3, 6 ( x8 )
	nop
	bgtu x3, x0, LBB9_66
LBB9_60:                                //  %for.inc.3.i.i677
	lhu x3, 8 ( x8 )
	nop
	bgtu x3, x0, LBB9_66
LBB9_61:                                //  %for.inc.4.i.i680
	lhu x3, 10 ( x8 )
	nop
	bgtu x3, x0, LBB9_66
LBB9_62:                                //  %for.inc.5.i.i683
	lhu x3, 12 ( x8 )
	nop
	bgtu x3, x0, LBB9_66
LBB9_63:                                //  %for.inc.6.i.i686
	lhu x3, 14 ( x8 )
	nop
	bgtu x3, x0, LBB9_66
LBB9_64:                                //  %eisnan.exit.i689
	lhu x3, 16 ( x8 )
	nop
	bgtu x3, x0, LBB9_66
LBB9_65:                                //  %if.end.i691
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	srli x1, x1, 15
LBB9_66:                                //  %eisneg.exit
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	nop
	srli x4, x3, 15
	lui x3, 32767 >> 12 & 0xfffff
	or x3, x3, x28
	beq x1, x4, LBB9_68
LBB9_67:
	not x3, x0
LBB9_68:                                //  %eisneg.exit
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sh x0, 0 ( x1 )
	sh x0, 2 ( x1 )
	sh x0, 4 ( x1 )
	sh x0, 6 ( x1 )
	sh x0, 8 ( x1 )
	sh x0, 10 ( x1 )
	sh x0, 12 ( x1 )
	sh x0, 14 ( x1 )
	sh x0, 16 ( x1 )
	sh x3, 18 ( x1 )
	jalr x0, LBB9_158 ( x0 )
LBB9_69:                                //  %if.end24
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x16, x28
	bne x17, x1, LBB9_80
LBB9_70:                                //  %for.body.preheader.i.i592
	lhu x1, 0 ( x8 )
	nop
	bgtu x1, x0, LBB9_80
LBB9_71:                                //  %for.inc.i.i595
	lhu x1, 2 ( x8 )
	nop
	bgtu x1, x0, LBB9_80
LBB9_72:                                //  %for.inc.1.i.i598
	lhu x1, 4 ( x8 )
	nop
	bgtu x1, x0, LBB9_80
LBB9_73:                                //  %for.inc.2.i.i601
	lhu x1, 6 ( x8 )
	nop
	bgtu x1, x0, LBB9_80
LBB9_74:                                //  %for.inc.3.i.i604
	lhu x1, 8 ( x8 )
	nop
	bgtu x1, x0, LBB9_80
LBB9_75:                                //  %for.inc.4.i.i607
	lhu x1, 10 ( x8 )
	nop
	bgtu x1, x0, LBB9_80
LBB9_76:                                //  %for.inc.5.i.i610
	lhu x1, 12 ( x8 )
	nop
	bgtu x1, x0, LBB9_80
LBB9_77:                                //  %for.inc.6.i.i613
	lhu x1, 14 ( x8 )
	nop
	bgtu x1, x0, LBB9_80
LBB9_78:                                //  %eisinf.exit621
	lhu x1, 16 ( x8 )
	nop
	bgtu x1, x0, LBB9_80
LBB9_79:                                //  %if.then27
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sh x0, 0 ( x1 )
	sh x0, 2 ( x1 )
	sh x0, 4 ( x1 )
	sh x0, 6 ( x1 )
	sh x0, 8 ( x1 )
	sh x0, 10 ( x1 )
	sh x0, 12 ( x1 )
	sh x0, 14 ( x1 )
	sh x0, 16 ( x1 )
	sh x0, 18 ( x1 )
	jalr x0, LBB9_158 ( x0 )
LBB9_80:                                //  %if.end28
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	slli x1, x1, 16
	srai x1, x1, 16
	srli x28, x28, 20
	srli x1, x1, 15
	or x3, x16, x28
	sh x1, 72 ( x2 )
	sh x17, 74 ( x2 )
	bne x17, x3, LBB9_91
LBB9_81:                                //  %for.body.preheader.i.i506
	lh x3, 2 ( x8 )
	lh x1, 0 ( x8 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lui x4, 65535 >> 12 & 0xfffff
	srli x28, x28, 20
	or x5, x3, x1
	or x4, x4, x28
	and x4, x4, x5
	bgtu x4, x0, LBB9_90
LBB9_82:                                //  %for.inc.1.i.i512
	lhu x4, 4 ( x8 )
	add x3, x0, x0
	bgtu x4, x0, LBB9_90
LBB9_83:                                //  %for.inc.2.i.i515
	lhu x4, 6 ( x8 )
	nop
	bgtu x4, x0, LBB9_90
LBB9_84:                                //  %for.inc.3.i.i518
	lhu x4, 8 ( x8 )
	nop
	bgtu x4, x0, LBB9_90
LBB9_85:                                //  %for.inc.4.i.i521
	lhu x4, 10 ( x8 )
	nop
	bgtu x4, x0, LBB9_90
LBB9_86:                                //  %for.inc.5.i.i524
	lhu x4, 12 ( x8 )
	nop
	bgtu x4, x0, LBB9_90
LBB9_87:                                //  %for.inc.6.i.i527
	lhu x4, 14 ( x8 )
	nop
	bgtu x4, x0, LBB9_90
LBB9_88:                                //  %eisnan.exit.i529
	lhu x4, 16 ( x8 )
	nop
	bgtu x4, x0, LBB9_90
LBB9_89:                                //  %for.body23.preheader.i540
	addi x1, x2, 72
	sh x0, 4 ( x1 )
	sh x0, 6 ( x1 )
	sh x0, 8 ( x1 )
	sh x0, 10 ( x1 )
	sh x0, 12 ( x1 )
	sh x0, 14 ( x1 )
	sh x0, 16 ( x1 )
	sh x0, 18 ( x1 )
	sh x0, 20 ( x1 )
	sh x0, 22 ( x1 )
	jalr x0, LBB9_92 ( x0 )
LBB9_90:                                //  %if.then13.i559
	addi x4, x2, 72
	sh x0, 4 ( x4 )
	lh x5, 16 ( x8 )
	lh x7, 14 ( x8 )
	lh x9, 12 ( x8 )
	lh x10, 10 ( x8 )
	lh x11, 8 ( x8 )
	lh x12, 6 ( x8 )
	lh x13, 4 ( x8 )
	lh x14, -2 ( x8 )
	sh x5, 6 ( x4 )
	sh x7, 8 ( x4 )
	sh x9, 10 ( x4 )
	sh x10, 12 ( x4 )
	sh x11, 14 ( x4 )
	sh x12, 16 ( x4 )
	sh x13, 18 ( x4 )
	sh x3, 20 ( x4 )
	sh x1, 22 ( x4 )
	sh x14, 96 ( x2 )
	jalr x0, LBB9_93 ( x0 )
LBB9_91:                                //  %if.end28.i577
	addi x1, x2, 72
	sh x0, 4 ( x1 )
	lh x3, 16 ( x8 )
	lh x4, 14 ( x8 )
	lh x5, 12 ( x8 )
	lh x7, 10 ( x8 )
	lh x9, 8 ( x8 )
	lh x10, 6 ( x8 )
	lh x11, 4 ( x8 )
	lh x12, 2 ( x8 )
	lh x13, 0 ( x8 )
	sh x3, 6 ( x1 )
	sh x4, 8 ( x1 )
	sh x5, 10 ( x1 )
	sh x7, 12 ( x1 )
	sh x9, 14 ( x1 )
	sh x10, 16 ( x1 )
	sh x11, 18 ( x1 )
	sh x12, 20 ( x1 )
	sh x13, 22 ( x1 )
LBB9_92:                                //  %emovi.exit579
	sh x0, 96 ( x2 )
LBB9_93:                                //  %emovi.exit579
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	slli x1, x1, 16
	srai x1, x1, 16
	srli x28, x28, 20
	srli x1, x1, 15
	or x3, x16, x28
	sh x1, 46 ( x2 )
	sh x18, 48 ( x2 )
	bne x18, x3, LBB9_105
LBB9_94:                                //  %for.body.preheader.i.i463
	lh x4, 2 ( x15 )
	lh x3, 0 ( x15 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lui x1, 65535 >> 12 & 0xfffff
	srli x28, x28, 20
	or x5, x4, x3
	or x7, x1, x28
	and x5, x7, x5
	bgtu x5, x0, LBB9_103
LBB9_95:                                //  %for.inc.1.i.i469
	lhu x5, 4 ( x15 )
	add x4, x0, x0
	bgtu x5, x0, LBB9_103
LBB9_96:                                //  %for.inc.2.i.i472
	lhu x5, 6 ( x15 )
	nop
	bgtu x5, x0, LBB9_103
LBB9_97:                                //  %for.inc.3.i.i475
	lhu x5, 8 ( x15 )
	nop
	bgtu x5, x0, LBB9_103
LBB9_98:                                //  %for.inc.4.i.i478
	lhu x5, 10 ( x15 )
	nop
	bgtu x5, x0, LBB9_103
LBB9_99:                                //  %for.inc.5.i.i481
	lhu x5, 12 ( x15 )
	nop
	bgtu x5, x0, LBB9_103
LBB9_100:                               //  %for.inc.6.i.i484
	lhu x5, 14 ( x15 )
	nop
	bgtu x5, x0, LBB9_103
LBB9_101:                               //  %eisnan.exit.i485
	lhu x5, 16 ( x15 )
	nop
	bgtu x5, x0, LBB9_103
LBB9_102:                               //  %for.body23.preheader.i
	addi x3, x2, 46
	sh x0, 4 ( x3 )
	sh x0, 6 ( x3 )
	sh x0, 8 ( x3 )
	sh x0, 10 ( x3 )
	sh x0, 12 ( x3 )
	sh x0, 14 ( x3 )
	sh x0, 16 ( x3 )
	sh x0, 18 ( x3 )
	sh x0, 20 ( x3 )
	sh x0, 22 ( x3 )
	sh x0, 70 ( x2 )
	jalr x0, LBB9_104 ( x0 )
LBB9_103:                               //  %if.then13.i
	addi x5, x2, 46
	sh x0, 4 ( x5 )
	lh x7, 16 ( x15 )
	lh x9, 14 ( x15 )
	lh x10, 12 ( x15 )
	lh x11, 10 ( x15 )
	lh x12, 8 ( x15 )
	lh x13, 6 ( x15 )
	lh x14, 4 ( x15 )
	lh x15, -2 ( x15 )
	sh x7, 6 ( x5 )
	sh x9, 8 ( x5 )
	sh x10, 10 ( x5 )
	sh x11, 12 ( x5 )
	sh x12, 14 ( x5 )
	sh x13, 16 ( x5 )
	sh x14, 18 ( x5 )
	sh x4, 20 ( x5 )
	sh x3, 22 ( x5 )
	sh x15, 70 ( x2 )
LBB9_104:                               //  %emovi.exit.thread
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	and x1, x1, x17
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
	or x15, x16, x28
	jalr x0, LBB9_109 ( x0 )
LBB9_105:                               //  %emovi.exit
	addi x14, x2, 46
	sh x0, 4 ( x14 )
	lh x3, 16 ( x15 )
	ori x28, x0, 65535 & 0xfff
	lh x10, 14 ( x15 )
	lh x11, 12 ( x15 )
	lh x12, 10 ( x15 )
	lh x13, 8 ( x15 )
	lh x9, 6 ( x15 )
	lh x4, 4 ( x15 )
	lh x5, 2 ( x15 )
	lh x1, 0 ( x15 )
	slli x28, x28, 20
	lui x7, 65535 >> 12 & 0xfffff
	srli x28, x28, 20
	or x15, x7, x28
	sh x3, 6 ( x14 )
	sh x10, 8 ( x14 )
	sh x11, 10 ( x14 )
	sh x12, 12 ( x14 )
	sh x13, 14 ( x14 )
	sh x9, 16 ( x14 )
	sh x4, 18 ( x14 )
	sh x5, 20 ( x14 )
	sh x1, 22 ( x14 )
	and x14, x15, x17
	and x15, x15, x18
	sh x0, 70 ( x2 )
	beqz x18, LBB9_107
LBB9_106:
	sw x14, 12 ( x2 )               //  4-byte Folded Spill
	jalr x0, LBB9_109 ( x0 )
LBB9_107:                               //  %for.cond.1
	or x3, x10, x3
	or x3, x11, x3
	or x3, x12, x3
	or x3, x13, x3
	ori x28, x0, 65535 & 0xfff
	or x3, x9, x3
	slli x28, x28, 20
	or x3, x4, x3
	or x3, x5, x3
	srli x28, x28, 20
	or x1, x1, x3
	or x3, x7, x28
	and x1, x3, x1
	beqz x1, LBB9_79
LBB9_108:                               //  %if.then43
	sw x14, 12 ( x2 )               //  4-byte Folded Spill
	addi x10, x2, 46
	add x8, x0, x15
	call $enormlz
	add x15, x0, x8
	sub x15, x15, x10
	lh x17, 74 ( x2 )
LBB9_109:                               //  %dnzro1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lui x1, 65535 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	and x1, x1, x17
	sw x15, 4 ( x2 )                //  4-byte Folded Spill
	bgtu x1, x0, LBB9_112
LBB9_110:                               //  %for.cond53
	lhu x1, 76 ( x2 )
	nop
	beqz x1, LBB9_159
LBB9_111:                               //  %if.then61
	addi x10, x2, 72
	call $enormlz
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x10
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
LBB9_112:                               //  %dnzro2
	lh x1, 46 ( x2 )
	addi x4, x2, 46
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	nop
	sh x1, 52 ( x3 )
	lh x1, 2 ( x4 )
	add x10, x0, x4
	sh x0, 56 ( x3 )
	sh x0, 58 ( x3 )
	sh x0, 60 ( x3 )
	sh x1, 54 ( x3 )
	sh x0, 62 ( x3 )
	sh x0, 64 ( x3 )
	sh x0, 66 ( x3 )
	sh x0, 68 ( x3 )
	sh x0, 70 ( x3 )
	sh x0, 72 ( x3 )
	sh x0, 74 ( x3 )
	sh x0, 76 ( x3 )
	call $eshdn1
	ori x28, x0, 65535 & 0xfff
	lhu x10, 78 ( x2 )
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 65535 >> 12 & 0xfffff
	add x8, x0, x1
	or x11, x8, x28
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	call $__mulsi3
	add x29, x0, x8
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	addi x10, x0, 2
	addi x1, x2, 46
	lh x3, 6 ( x1 )
	lh x1, 50 ( x2 )
	addi x8, x2, 98
LBB9_113:                               //  %for.body9.i
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB9_116 Depth 2
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x29, x28
	and x3, x4, x3
	slli x1, x1, 16
	or x10, x3, x1
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x10, x1, LBB9_115
LBB9_114:                               //  %if.else.i
                                        //    in Loop: Header=BB9_113 Depth=1
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__udivsi3
	lui x29, 65535 >> 12 & 0xfffff
	add x4, x0, x10
LBB9_115:                               //  %if.end.i
                                        //    in Loop: Header=BB9_113 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x29, x28
	sh x0, 22 ( x8 )
	sw x4, 32 ( x2 )                //  4-byte Folded Spill
	and x1, x1, x4
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	sh x0, 122 ( x2 )
	addi x1, x2, 122
	add x7, x0, x1
	addi x8, x0, 24
LBB9_116:                               //  %for.body.i.i
                                        //    Parent Loop BB9_113 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x1, x2, 72
	add x1, x8, x1
	lhu x10, 0 ( x1 )
	nop
	bgtu x10, x0, LBB9_118
LBB9_117:                               //  %if.then.i.i
                                        //    in Loop: Header=BB9_116 Depth=2
	addi x1, x7, -2
	add x3, x0, x0
	jalr x0, LBB9_119 ( x0 )
LBB9_118:                               //  %if.else.i.i
                                        //    in Loop: Header=BB9_116 Depth=2
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	sw x7, 40 ( x2 )                //  4-byte Folded Spill
	call $__mulsi3
	lw x7, 40 ( x2 )                //  4-byte Folded Reload
	lui x29, 65535 >> 12 & 0xfffff
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lhu x1, 0 ( x7 )
	srli x28, x28, 20
	or x3, x29, x28
	and x3, x3, x10
	lhu x4, -2 ( x7 )
	add x1, x3, x1
	srli x3, x10, 16
	srli x5, x1, 16
	add x3, x3, x5
	add x3, x4, x3
	sh x1, 0 ( x7 )
	sh x3, -2 ( x7 )
	addi x1, x7, -2
	srli x3, x3, 16
LBB9_119:                               //  %if.end.i.i
                                        //    in Loop: Header=BB9_116 Depth=2
	addi x8, x8, -2
	xori x4, x8, 4
	sh x3, -4 ( x7 )
	add x7, x0, x1
	bgtu x4, x0, LBB9_116
LBB9_120:                               //  %m16m.exit.i
                                        //    in Loop: Header=BB9_113 Depth=1
	lhu x12, 122 ( x2 )
	addi x8, x2, 98
	lhu x13, 22 ( x8 )
	lhu x11, 20 ( x8 )
	lhu x10, 18 ( x8 )
	lhu x9, 16 ( x8 )
	lhu x7, 14 ( x8 )
	lhu x5, 12 ( x8 )
	lhu x4, 10 ( x8 )
	lhu x3, 8 ( x8 )
	lhu x1, 6 ( x8 )
	lhu x25, 4 ( x8 )
	lhu x14, 50 ( x2 )
	nop
	add x15, x0, x14
	add x16, x0, x25
	bne x25, x14, LBB9_122
LBB9_121:                               //  %for.inc.i.i
                                        //    in Loop: Header=BB9_113 Depth=1
	lhu x15, 52 ( x2 )
	add x16, x0, x1
	beq x1, x15, LBB9_132
LBB9_122:                               //  %difrnt.i.i
                                        //    in Loop: Header=BB9_113 Depth=1
	bgeu x15, x16, LBB9_127
LBB9_123:                               //  %if.then22.i
                                        //    in Loop: Header=BB9_113 Depth=1
	addi x15, x2, 72
	add x27, x0, x15
	lhu x24, 24 ( x27 )
	lhu x23, 22 ( x27 )
	lhu x16, 20 ( x27 )
	lhu x15, 18 ( x27 )
	sub x12, x12, x24
	srli x17, x12, 16
	sub x13, x13, x23
	andi x17, x17, 1
	sub x13, x13, x17
	srli x17, x13, 16
	andi x17, x17, 1
	sub x11, x11, x16
	sub x11, x11, x17
	srli x17, x11, 16
	lhu x19, 16 ( x27 )
	andi x17, x17, 1
	sub x10, x10, x15
	sub x10, x10, x17
	srli x17, x10, 16
	lhu x20, 14 ( x27 )
	andi x17, x17, 1
	sub x9, x9, x19
	sub x9, x9, x17
	srli x17, x9, 16
	lhu x21, 12 ( x27 )
	andi x17, x17, 1
	sub x7, x7, x20
	sub x7, x7, x17
	srli x17, x7, 16
	lhu x22, 10 ( x27 )
	andi x17, x17, 1
	sub x5, x5, x21
	sub x5, x5, x17
	srli x17, x5, 16
	lhu x18, 8 ( x27 )
	andi x17, x17, 1
	sub x4, x4, x22
	sub x4, x4, x17
	srli x26, x4, 16
	lhu x17, 6 ( x27 )
	andi x26, x26, 1
	sub x3, x3, x18
	sub x3, x3, x26
	srli x26, x3, 16
	lhu x27, 76 ( x2 )
	andi x26, x26, 1
	sub x1, x1, x17
	ori x28, x0, 65535 & 0xfff
	sub x1, x1, x26
	slli x28, x28, 20
	srli x26, x1, 16
	srli x28, x28, 20
	sub x25, x25, x27
	andi x26, x26, 1
	or x27, x29, x28
	sub x25, x25, x26
	and x26, x27, x25
	lw x30, 36 ( x2 )               //  4-byte Folded Reload
	nop
	add x27, x27, x30
	sw x27, 32 ( x2 )               //  4-byte Folded Spill
	bne x26, x14, LBB9_125
LBB9_124:                               //  %for.inc.i136.i
                                        //    in Loop: Header=BB9_113 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lhu x14, 52 ( x2 )
	srli x28, x28, 20
	or x25, x29, x28
	and x26, x25, x1
	add x25, x0, x1
	beq x26, x14, LBB9_141
LBB9_125:                               //  %difrnt.i141.i
                                        //    in Loop: Header=BB9_113 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x26, x29, x28
	and x25, x26, x25
	bgeu x14, x25, LBB9_127
LBB9_126:                               //  %if.then30.i
                                        //    in Loop: Header=BB9_113 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x14, x29, x28
	and x12, x14, x12
	sub x12, x12, x24
	and x13, x14, x13
	srli x24, x12, 16
	sub x13, x13, x23
	andi x23, x24, 1
	sub x13, x13, x23
	and x11, x14, x11
	srli x23, x13, 16
	sub x11, x11, x16
	andi x16, x23, 1
	sub x11, x11, x16
	and x10, x14, x10
	srli x16, x11, 16
	sub x10, x10, x15
	andi x15, x16, 1
	sub x10, x10, x15
	and x9, x14, x9
	srli x15, x10, 16
	sub x9, x9, x19
	andi x15, x15, 1
	sub x9, x9, x15
	and x7, x14, x7
	srli x15, x9, 16
	sub x7, x7, x20
	andi x15, x15, 1
	sub x7, x7, x15
	and x5, x14, x5
	srli x15, x7, 16
	sub x5, x5, x21
	andi x15, x15, 1
	sub x5, x5, x15
	and x4, x14, x4
	srli x15, x5, 16
	sub x4, x4, x22
	andi x15, x15, 1
	sub x4, x4, x15
	and x3, x14, x3
	srli x14, x4, 16
	ori x28, x0, 65534 & 0xfff
	sub x3, x3, x18
	andi x14, x14, 1
	slli x28, x28, 20
	sub x3, x3, x14
	srli x14, x3, 16
	srli x28, x28, 20
	sub x1, x1, x17
	andi x14, x14, 1
	lui x15, 65534 >> 12 & 0xfffff
	or x15, x15, x28
	sub x1, x1, x14
	lw x14, 36 ( x2 )               //  4-byte Folded Reload
	nop
	add x14, x15, x14
	sw x14, 32 ( x2 )               //  4-byte Folded Spill
LBB9_127:                               //  %if.end36.i
                                        //    in Loop: Header=BB9_113 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	addi x18, x2, 46
	lhu x14, 24 ( x18 )
	srli x28, x28, 20
	or x15, x29, x28
	and x12, x15, x12
	sub x12, x14, x12
	sh x12, 24 ( x18 )
	lhu x14, 22 ( x18 )
	and x13, x15, x13
	srli x12, x12, 16
	lhu x16, 20 ( x18 )
	sub x13, x14, x13
	andi x12, x12, 1
	sub x12, x13, x12
	and x11, x15, x11
	srli x13, x12, 16
	lhu x14, 18 ( x18 )
	sub x11, x16, x11
	andi x13, x13, 1
	sub x11, x11, x13
	and x10, x15, x10
	srli x13, x11, 16
	lhu x16, 16 ( x18 )
	sub x10, x14, x10
	andi x13, x13, 1
	sub x17, x10, x13
	and x9, x15, x9
	srli x13, x17, 16
	lhu x14, 14 ( x18 )
	sub x9, x16, x9
	andi x13, x13, 1
	sub x9, x9, x13
	and x7, x15, x7
	srli x13, x9, 16
	lhu x16, 12 ( x18 )
	sub x7, x14, x7
	andi x13, x13, 1
	sub x7, x7, x13
	and x5, x15, x5
	srli x13, x7, 16
	lhu x14, 10 ( x18 )
	sub x5, x16, x5
	andi x13, x13, 1
	sub x5, x5, x13
	and x4, x15, x4
	srli x13, x5, 16
	lhu x16, 8 ( x18 )
	sub x4, x14, x4
	andi x13, x13, 1
	sub x4, x4, x13
	and x3, x15, x3
	srli x13, x4, 16
	lhu x14, 6 ( x18 )
	sub x3, x16, x3
	andi x13, x13, 1
	sub x3, x3, x13
	and x1, x15, x1
	srli x13, x3, 16
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	nop
	slli x15, x10, 1
	addi x10, x10, 1
	sub x1, x14, x1
	andi x13, x13, 1
	lw x14, 24 ( x2 )               //  4-byte Folded Reload
	nop
	add x14, x15, x14
	sub x1, x1, x13
	xori x15, x10, 13
	lw x13, 32 ( x2 )               //  4-byte Folded Reload
	nop
	sh x13, 52 ( x14 )
	sh x1, 50 ( x2 )
	sh x3, 6 ( x18 )
	sh x4, 8 ( x18 )
	sh x5, 10 ( x18 )
	sh x7, 12 ( x18 )
	sh x9, 14 ( x18 )
	sh x17, 16 ( x18 )
	sh x11, 18 ( x18 )
	sh x12, 20 ( x18 )
	lh x13, 24 ( x18 )
	nop
	sh x13, 22 ( x18 )
	sh x0, 24 ( x18 )
	bgtu x15, x0, LBB9_113
LBB9_128:                               //  %edivm.exit
	lw x15, 24 ( x2 )               //  4-byte Folded Reload
	nop
	lh x14, 52 ( x15 )
	or x1, x1, x3
	or x1, x4, x1
	ori x28, x0, 16383 & 0xfff
	sh x14, 46 ( x2 )
	lh x3, 54 ( x15 )
	or x1, x5, x1
	slli x28, x28, 20
	or x1, x7, x1
	addi x10, x2, 46
	sh x3, 2 ( x10 )
	lh x3, 56 ( x15 )
	or x1, x9, x1
	lui x4, 16383 >> 12 & 0xfffff
	srli x28, x28, 20
	sh x3, 4 ( x10 )
	lh x3, 58 ( x15 )
	or x4, x4, x28
	ori x28, x0, 65535 & 0xfff
	or x1, x17, x1
	sh x3, 6 ( x10 )
	lh x3, 60 ( x15 )
	slli x28, x28, 20
	or x1, x11, x1
	or x1, x12, x1
	sh x3, 8 ( x10 )
	lh x3, 62 ( x15 )
	srli x28, x28, 20
	or x1, x13, x1
	or x5, x29, x28
	sh x3, 10 ( x10 )
	lh x3, 64 ( x15 )
	and x1, x5, x1
	lw x5, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	add x4, x4, x5
	sltu x1, x0, x1
	sh x3, 12 ( x10 )
	lh x3, 66 ( x15 )
	lw x5, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sub x13, x4, x5
	andi x11, x1, 1
	sh x3, 14 ( x10 )
	lh x1, 68 ( x15 )
	nop
	sh x1, 16 ( x10 )
	lh x1, 70 ( x15 )
	nop
	sh x1, 18 ( x10 )
	lh x1, 72 ( x15 )
	nop
	sh x1, 20 ( x10 )
	lh x1, 74 ( x15 )
	nop
	sh x1, 22 ( x10 )
	lh x1, 76 ( x15 )
	nop
	sh x1, 70 ( x2 )
	add x8, x0, x0
	addi x14, x0, 64
	add x12, x0, x8
	call $emdnorm
	lhu x1, 46 ( x2 )
	lhu x4, 72 ( x2 )
	nop
	beq x4, x1, LBB9_130
LBB9_129:
	not x8, x0
LBB9_130:                               //  %edivm.exit
	lw x7, 8 ( x2 )                 //  4-byte Folded Reload
	lui x9, 32767 >> 12 & 0xfffff
	sh x8, 46 ( x2 )
	addi x3, x2, 46
	lhu x3, 2 ( x3 )
	lui x5, -32768 >> 12 & 0xfffff
	ori x28, x0, -32768 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x5, x5, x28
	lui x10, 65535 >> 12 & 0xfffff
	beq x4, x1, LBB9_151
LBB9_131:
	or x1, x5, x3
	jalr x0, LBB9_152 ( x0 )
LBB9_132:                               //  %for.inc.1.i.i
                                        //    in Loop: Header=BB9_113 Depth=1
	lhu x15, 54 ( x2 )
	add x16, x0, x3
	bne x3, x15, LBB9_122
LBB9_133:                               //  %for.inc.2.i.i
                                        //    in Loop: Header=BB9_113 Depth=1
	lhu x15, 56 ( x2 )
	add x16, x0, x4
	bne x4, x15, LBB9_122
LBB9_134:                               //  %for.inc.3.i.i
                                        //    in Loop: Header=BB9_113 Depth=1
	lhu x15, 58 ( x2 )
	add x16, x0, x5
	bne x5, x15, LBB9_122
LBB9_135:                               //  %for.inc.4.i.i
                                        //    in Loop: Header=BB9_113 Depth=1
	lhu x15, 60 ( x2 )
	add x16, x0, x7
	bne x7, x15, LBB9_122
LBB9_136:                               //  %for.inc.5.i.i
                                        //    in Loop: Header=BB9_113 Depth=1
	lhu x15, 62 ( x2 )
	add x16, x0, x9
	bne x9, x15, LBB9_122
LBB9_137:                               //  %for.inc.6.i.i
                                        //    in Loop: Header=BB9_113 Depth=1
	lhu x15, 64 ( x2 )
	add x16, x0, x10
	bne x10, x15, LBB9_122
LBB9_138:                               //  %for.inc.7.i.i
                                        //    in Loop: Header=BB9_113 Depth=1
	lhu x15, 66 ( x2 )
	add x16, x0, x11
	bne x11, x15, LBB9_122
LBB9_139:                               //  %for.inc.8.i.i
                                        //    in Loop: Header=BB9_113 Depth=1
	lhu x15, 68 ( x2 )
	add x16, x0, x13
	bne x13, x15, LBB9_122
LBB9_140:                               //  %for.inc.9.i.i
                                        //    in Loop: Header=BB9_113 Depth=1
	lhu x15, 70 ( x2 )
	add x16, x0, x12
	bne x12, x15, LBB9_122
	jalr x0, LBB9_127 ( x0 )
LBB9_141:                               //  %for.inc.1.i146.i
                                        //    in Loop: Header=BB9_113 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lhu x14, 54 ( x2 )
	srli x28, x28, 20
	or x25, x29, x28
	and x26, x25, x3
	add x25, x0, x3
	bne x26, x14, LBB9_125
LBB9_142:                               //  %for.inc.2.i150.i
                                        //    in Loop: Header=BB9_113 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lhu x14, 56 ( x2 )
	srli x28, x28, 20
	or x25, x29, x28
	and x26, x25, x4
	add x25, x0, x4
	bne x26, x14, LBB9_125
LBB9_143:                               //  %for.inc.3.i154.i
                                        //    in Loop: Header=BB9_113 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lhu x14, 58 ( x2 )
	srli x28, x28, 20
	or x25, x29, x28
	and x26, x25, x5
	add x25, x0, x5
	bne x26, x14, LBB9_125
LBB9_144:                               //  %for.inc.4.i158.i
                                        //    in Loop: Header=BB9_113 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lhu x14, 60 ( x2 )
	srli x28, x28, 20
	or x25, x29, x28
	and x26, x25, x7
	add x25, x0, x7
	bne x26, x14, LBB9_125
LBB9_145:                               //  %for.inc.5.i162.i
                                        //    in Loop: Header=BB9_113 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lhu x14, 62 ( x2 )
	srli x28, x28, 20
	or x25, x29, x28
	and x26, x25, x9
	add x25, x0, x9
	bne x26, x14, LBB9_125
LBB9_146:                               //  %for.inc.6.i166.i
                                        //    in Loop: Header=BB9_113 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lhu x14, 64 ( x2 )
	srli x28, x28, 20
	or x25, x29, x28
	and x26, x25, x10
	add x25, x0, x10
	bne x26, x14, LBB9_125
LBB9_147:                               //  %for.inc.7.i170.i
                                        //    in Loop: Header=BB9_113 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lhu x14, 66 ( x2 )
	srli x28, x28, 20
	or x25, x29, x28
	and x26, x25, x11
	add x25, x0, x11
	bne x26, x14, LBB9_125
LBB9_148:                               //  %for.inc.8.i174.i
                                        //    in Loop: Header=BB9_113 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lhu x14, 68 ( x2 )
	srli x28, x28, 20
	or x25, x29, x28
	and x26, x25, x13
	add x25, x0, x13
	bne x26, x14, LBB9_125
LBB9_149:                               //  %for.inc.9.i178.i
                                        //    in Loop: Header=BB9_113 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lhu x14, 70 ( x2 )
	srli x28, x28, 20
	or x25, x29, x28
	and x25, x25, x12
	beq x25, x14, LBB9_127
LBB9_150:                               //    in Loop: Header=BB9_113 Depth=1
	add x25, x0, x12
	jalr x0, LBB9_125 ( x0 )
LBB9_151:                               //  %edivm.exit
	add x1, x0, x3
LBB9_152:                               //  %edivm.exit
	sh x1, 18 ( x7 )
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x9, x28
	bne x3, x4, LBB9_155
LBB9_153:                               //  %for.body.preheader.i.i
	addi x3, x2, 46
	add x5, x0, x3
	lh x3, 6 ( x5 )
	lh x4, 8 ( x5 )
	nop
	or x3, x3, x4
	lh x4, 10 ( x5 )
	nop
	or x3, x4, x3
	lh x4, 12 ( x5 )
	nop
	or x3, x4, x3
	lh x4, 14 ( x5 )
	nop
	or x3, x4, x3
	lh x4, 16 ( x5 )
	nop
	or x3, x4, x3
	lh x4, 18 ( x5 )
	nop
	or x3, x4, x3
	lh x4, 20 ( x5 )
	nop
	or x3, x4, x3
	lh x4, 22 ( x5 )
	nop
	or x3, x4, x3
	lh x4, 70 ( x2 )
	nop
	or x3, x4, x3
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x10, x28
	and x3, x4, x3
	beqz x3, LBB9_156
LBB9_154:                               //  %if.then11.i
	sh x0, 0 ( x7 )
	sh x0, 2 ( x7 )
	sh x0, 4 ( x7 )
	sh x0, 6 ( x7 )
	sh x0, 8 ( x7 )
	sh x0, 10 ( x7 )
	sh x0, 12 ( x7 )
	sh x0, 14 ( x7 )
	lui x1, 49152>>12 
	sh x1, 16 ( x7 )
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x9, x28
	jalr x0, LBB9_157 ( x0 )
LBB9_155:                               //  %if.end13.i
	addi x1, x2, 46
	add x3, x0, x1
	lh x1, 6 ( x3 )
	nop
	sh x1, 16 ( x7 )
	lh x1, 8 ( x3 )
	nop
	sh x1, 14 ( x7 )
	lh x1, 10 ( x3 )
	nop
	sh x1, 12 ( x7 )
	lh x1, 12 ( x3 )
	nop
	sh x1, 10 ( x7 )
	lh x1, 14 ( x3 )
	nop
	sh x1, 8 ( x7 )
	lh x1, 16 ( x3 )
	nop
	sh x1, 6 ( x7 )
	lh x1, 18 ( x3 )
	nop
	sh x1, 4 ( x7 )
	lh x1, 20 ( x3 )
	nop
	sh x1, 2 ( x7 )
	lh x1, 68 ( x2 )
	nop
	sh x1, 0 ( x7 )
	jalr x0, LBB9_158 ( x0 )
LBB9_156:                               //  %if.end12.i
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x9, x28
	or x1, x3, x1
	sh x0, 0 ( x7 )
	sh x0, 2 ( x7 )
	sh x0, 4 ( x7 )
	sh x0, 6 ( x7 )
	sh x0, 8 ( x7 )
	sh x0, 10 ( x7 )
	sh x0, 12 ( x7 )
	sh x0, 14 ( x7 )
	sh x0, 16 ( x7 )
LBB9_157:                               //  %cleanup.sink.split.i
	sh x1, 18 ( x7 )
LBB9_158:                               //  %cleanup
	lw x8, 124 ( x2 )               //  4-byte Folded Reload
	lw x1, 132 ( x2 )
$cfi50:
	.cfi_same_value 1
	addi x2, x2, 136
$cfi51:
	.cfi_adjust_cfa_offset -136
$cfi52:
	.cfi_def_cfa 2, 0
	ret
LBB9_159:                               //  %for.cond53.1
	lhu x1, 78 ( x2 )
	nop
	bgtu x1, x0, LBB9_111
LBB9_160:                               //  %for.cond53.2
	lhu x1, 80 ( x2 )
	nop
	bgtu x1, x0, LBB9_111
LBB9_161:                               //  %for.cond53.3
	lhu x1, 82 ( x2 )
	nop
	bgtu x1, x0, LBB9_111
LBB9_162:                               //  %for.cond53.4
	lhu x1, 84 ( x2 )
	nop
	bgtu x1, x0, LBB9_111
LBB9_163:                               //  %for.cond53.5
	lhu x1, 86 ( x2 )
	nop
	bgtu x1, x0, LBB9_111
LBB9_164:                               //  %for.cond53.6
	lhu x1, 88 ( x2 )
	nop
	bgtu x1, x0, LBB9_111
LBB9_165:                               //  %for.cond53.7
	lhu x1, 90 ( x2 )
	nop
	bgtu x1, x0, LBB9_111
LBB9_166:                               //  %for.cond53.8
	lhu x1, 92 ( x2 )
	nop
	bgtu x1, x0, LBB9_111
LBB9_167:                               //  %for.cond53.9
	lhu x1, 94 ( x2 )
	nop
	bgtu x1, x0, LBB9_111
LBB9_168:                               //  %for.cond53.10
	lhu x3, 46 ( x2 )
	lhu x4, 72 ( x2 )
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 32767 >> 12 & 0xfffff
	or x1, x1, x28
	beq x4, x3, LBB9_170
LBB9_169:                               //  %for.cond53.10
	not x1, x0
LBB9_170:                               //  %for.cond53.10
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sh x0, 0 ( x3 )
	sh x0, 2 ( x3 )
	sh x0, 4 ( x3 )
	sh x0, 6 ( x3 )
	sh x0, 8 ( x3 )
	sh x0, 10 ( x3 )
	sh x0, 12 ( x3 )
	sh x0, 14 ( x3 )
	sh x0, 16 ( x3 )
	sh x1, 18 ( x3 )
	jalr x0, LBB9_158 ( x0 )
$func_end9:
	.size	$ediv, ($func_end9)-($ediv)
	.cfi_endproc

	.type	$emul,@function
$emul:                                  //  @emul
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi53:
	.cfi_def_cfa 2, 0
$cfi54:
	.cfi_val_offset 2, 0
	addi x2, x2, -160
$cfi55:
	.cfi_adjust_cfa_offset 160
	sw x1, 156 ( x2 )
$cfi56:
	.cfi_offset 1, -4
	sw x8, 148 ( x2 )               //  4-byte Folded Spill
	add x14, x0, x10
	add x24, x0, x13
	add x23, x0, x11
	ori x28, x0, 32767 & 0xfff
	lhu x8, 18 ( x14 )
	slli x28, x28, 20
	lui x15, 32767 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x15, x28
	and x26, x1, x8
	bne x26, x1, LBB10_11
LBB10_1:                                //  %for.body.preheader.i
	lhu x1, 0 ( x14 )
	nop
	bgtu x1, x0, LBB10_10
LBB10_2:                                //  %for.inc.i
	lhu x3, 2 ( x14 )
	nop
	bgtu x3, x0, LBB10_10
LBB10_3:                                //  %for.inc.1.i
	lhu x3, 4 ( x14 )
	nop
	bgtu x3, x0, LBB10_10
LBB10_4:                                //  %for.inc.2.i
	lhu x3, 6 ( x14 )
	nop
	bgtu x3, x0, LBB10_10
LBB10_5:                                //  %for.inc.3.i
	lhu x3, 8 ( x14 )
	nop
	bgtu x3, x0, LBB10_10
LBB10_6:                                //  %for.inc.4.i
	lhu x3, 10 ( x14 )
	nop
	bgtu x3, x0, LBB10_10
LBB10_7:                                //  %for.inc.5.i
	lhu x3, 12 ( x14 )
	nop
	bgtu x3, x0, LBB10_10
LBB10_8:                                //  %for.inc.6.i
	lhu x3, 14 ( x14 )
	nop
	bgtu x3, x0, LBB10_10
LBB10_9:                                //  %eisnan.exit
	lhu x3, 16 ( x14 )
	nop
	beqz x3, LBB10_11
LBB10_10:                               //  %if.then
	sh x1, 0 ( x12 )
	lh x1, 2 ( x14 )
	nop
	sh x1, 2 ( x12 )
	lh x1, 4 ( x14 )
	nop
	sh x1, 4 ( x12 )
	lh x1, 6 ( x14 )
	nop
	sh x1, 6 ( x12 )
	lh x1, 8 ( x14 )
	nop
	sh x1, 8 ( x12 )
	lh x1, 10 ( x14 )
	nop
	sh x1, 10 ( x12 )
	lh x1, 12 ( x14 )
	nop
	sh x1, 12 ( x12 )
	lh x1, 14 ( x14 )
	nop
	sh x1, 14 ( x12 )
	lh x1, 16 ( x14 )
	nop
	sh x1, 16 ( x12 )
	lh x1, 18 ( x14 )
	nop
	sh x1, 18 ( x12 )
	jalr x0, LBB10_150 ( x0 )
LBB10_11:                               //  %if.end
	ori x28, x0, 32767 & 0xfff
	lhu x16, 18 ( x23 )
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x15, x28
	and x25, x1, x16
	bne x25, x1, LBB10_22
LBB10_12:                               //  %for.body.preheader.i144
	lhu x1, 0 ( x23 )
	nop
	bgtu x1, x0, LBB10_21
LBB10_13:                               //  %for.inc.i147
	lhu x3, 2 ( x23 )
	nop
	bgtu x3, x0, LBB10_21
LBB10_14:                               //  %for.inc.1.i152
	lhu x3, 4 ( x23 )
	nop
	bgtu x3, x0, LBB10_21
LBB10_15:                               //  %for.inc.2.i155
	lhu x3, 6 ( x23 )
	nop
	bgtu x3, x0, LBB10_21
LBB10_16:                               //  %for.inc.3.i158
	lhu x3, 8 ( x23 )
	nop
	bgtu x3, x0, LBB10_21
LBB10_17:                               //  %for.inc.4.i161
	lhu x3, 10 ( x23 )
	nop
	bgtu x3, x0, LBB10_21
LBB10_18:                               //  %for.inc.5.i164
	lhu x3, 12 ( x23 )
	nop
	bgtu x3, x0, LBB10_21
LBB10_19:                               //  %for.inc.6.i167
	lhu x3, 14 ( x23 )
	nop
	bgtu x3, x0, LBB10_21
LBB10_20:                               //  %eisnan.exit172
	lhu x3, 16 ( x23 )
	nop
	beqz x3, LBB10_22
LBB10_21:                               //  %if.then3
	sh x1, 0 ( x12 )
	lh x1, 2 ( x23 )
	nop
	sh x1, 2 ( x12 )
	lh x1, 4 ( x23 )
	nop
	sh x1, 4 ( x12 )
	lh x1, 6 ( x23 )
	nop
	sh x1, 6 ( x12 )
	lh x1, 8 ( x23 )
	nop
	sh x1, 8 ( x12 )
	lh x1, 10 ( x23 )
	nop
	sh x1, 10 ( x12 )
	lh x1, 12 ( x23 )
	nop
	sh x1, 12 ( x12 )
	lh x1, 14 ( x23 )
	nop
	sh x1, 14 ( x12 )
	lh x1, 16 ( x23 )
	nop
	sh x1, 16 ( x12 )
	lh x1, 18 ( x23 )
	nop
	sh x1, 18 ( x12 )
	jalr x0, LBB10_150 ( x0 )
LBB10_22:                               //  %if.end4
	sw x12, 4 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x15, x28
	sw x24, 20 ( x2 )               //  4-byte Folded Spill
	bne x26, x1, LBB10_33
LBB10_23:                               //  %for.body.preheader.i.i212
	lhu x1, 0 ( x14 )
	nop
	bgtu x1, x0, LBB10_33
LBB10_24:                               //  %for.inc.i.i
	lhu x1, 2 ( x14 )
	nop
	bgtu x1, x0, LBB10_33
LBB10_25:                               //  %for.inc.1.i.i
	lhu x1, 4 ( x14 )
	nop
	bgtu x1, x0, LBB10_33
LBB10_26:                               //  %for.inc.2.i.i
	lhu x1, 6 ( x14 )
	nop
	bgtu x1, x0, LBB10_33
LBB10_27:                               //  %for.inc.3.i.i
	lhu x1, 8 ( x14 )
	nop
	bgtu x1, x0, LBB10_33
LBB10_28:                               //  %for.inc.4.i.i
	lhu x1, 10 ( x14 )
	nop
	bgtu x1, x0, LBB10_33
LBB10_29:                               //  %for.inc.5.i.i
	lhu x1, 12 ( x14 )
	nop
	bgtu x1, x0, LBB10_33
LBB10_30:                               //  %for.inc.6.i.i
	lhu x1, 14 ( x14 )
	nop
	bgtu x1, x0, LBB10_33
LBB10_31:                               //  %eisinf.exit
	lhu x1, 16 ( x14 )
	nop
	bgtu x1, x0, LBB10_33
LBB10_32:                               //  %land.lhs.true
	ori x28, x0, $ezero & 0xfff
	slli x28, x28, 20
	lui x1, $ezero >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x23
	sw x23, 36 ( x2 )               //  4-byte Folded Spill
	sw x25, 40 ( x2 )               //  4-byte Folded Spill
	sw x26, 32 ( x2 )               //  4-byte Folded Spill
	sw x16, 28 ( x2 )               //  4-byte Folded Spill
	sw x14, 24 ( x2 )               //  4-byte Folded Spill
	call $ecmp
	lw x14, 24 ( x2 )               //  4-byte Folded Reload
	lw x16, 28 ( x2 )               //  4-byte Folded Reload
	lw x26, 32 ( x2 )               //  4-byte Folded Reload
	lw x25, 40 ( x2 )               //  4-byte Folded Reload
	lw x23, 36 ( x2 )               //  4-byte Folded Reload
	lw x24, 20 ( x2 )               //  4-byte Folded Reload
	lui x15, 32767 >> 12 & 0xfffff
	beqz x10, LBB10_44
LBB10_33:                               //  %lor.lhs.false
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x15, x28
	bne x25, x1, LBB10_45
LBB10_34:                               //  %for.body.preheader.i.i493
	lhu x1, 0 ( x23 )
	nop
	bgtu x1, x0, LBB10_45
LBB10_35:                               //  %for.inc.i.i496
	lhu x1, 2 ( x23 )
	nop
	bgtu x1, x0, LBB10_45
LBB10_36:                               //  %for.inc.1.i.i499
	lhu x1, 4 ( x23 )
	nop
	bgtu x1, x0, LBB10_45
LBB10_37:                               //  %for.inc.2.i.i502
	lhu x1, 6 ( x23 )
	nop
	bgtu x1, x0, LBB10_45
LBB10_38:                               //  %for.inc.3.i.i505
	lhu x1, 8 ( x23 )
	nop
	bgtu x1, x0, LBB10_45
LBB10_39:                               //  %for.inc.4.i.i508
	lhu x1, 10 ( x23 )
	nop
	bgtu x1, x0, LBB10_45
LBB10_40:                               //  %for.inc.5.i.i511
	lhu x1, 12 ( x23 )
	nop
	bgtu x1, x0, LBB10_45
LBB10_41:                               //  %for.inc.6.i.i514
	lhu x1, 14 ( x23 )
	nop
	bgtu x1, x0, LBB10_45
LBB10_42:                               //  %eisinf.exit522
	lhu x1, 16 ( x23 )
	nop
	bgtu x1, x0, LBB10_45
LBB10_43:                               //  %land.lhs.true10
	ori x28, x0, $ezero & 0xfff
	slli x28, x28, 20
	lui x1, $ezero >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x14
	sw x23, 36 ( x2 )               //  4-byte Folded Spill
	sw x25, 40 ( x2 )               //  4-byte Folded Spill
	sw x26, 32 ( x2 )               //  4-byte Folded Spill
	sw x16, 28 ( x2 )               //  4-byte Folded Spill
	sw x14, 24 ( x2 )               //  4-byte Folded Spill
	call $ecmp
	lw x14, 24 ( x2 )               //  4-byte Folded Reload
	lw x16, 28 ( x2 )               //  4-byte Folded Reload
	lw x26, 32 ( x2 )               //  4-byte Folded Reload
	lw x25, 40 ( x2 )               //  4-byte Folded Reload
	lw x23, 36 ( x2 )               //  4-byte Folded Reload
	lw x24, 20 ( x2 )               //  4-byte Folded Reload
	lui x15, 32767 >> 12 & 0xfffff
	bgtu x10, x0, LBB10_45
LBB10_44:                               //  %if.then13
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 49152>>12 
	or x3, x15, x28
	lw x4, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	sh x0, 0 ( x4 )
	sh x0, 2 ( x4 )
	sh x0, 4 ( x4 )
	sh x0, 6 ( x4 )
	sh x0, 8 ( x4 )
	sh x0, 10 ( x4 )
	sh x0, 12 ( x4 )
	sh x0, 14 ( x4 )
	sh x1, 16 ( x4 )
	sh x3, 18 ( x4 )
	jalr x0, LBB10_150 ( x0 )
LBB10_45:                               //  %if.end14
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x15, x28
	bne x26, x1, LBB10_55
LBB10_46:                               //  %for.body.preheader.i.i452
	lhu x1, 0 ( x14 )
	nop
	bgtu x1, x0, LBB10_55
LBB10_47:                               //  %for.inc.i.i455
	lhu x1, 2 ( x14 )
	nop
	bgtu x1, x0, LBB10_55
LBB10_48:                               //  %for.inc.1.i.i458
	lhu x1, 4 ( x14 )
	nop
	bgtu x1, x0, LBB10_55
LBB10_49:                               //  %for.inc.2.i.i461
	lhu x1, 6 ( x14 )
	nop
	bgtu x1, x0, LBB10_55
LBB10_50:                               //  %for.inc.3.i.i464
	lhu x1, 8 ( x14 )
	nop
	bgtu x1, x0, LBB10_55
LBB10_51:                               //  %for.inc.4.i.i467
	lhu x1, 10 ( x14 )
	nop
	bgtu x1, x0, LBB10_55
LBB10_52:                               //  %for.inc.5.i.i470
	lhu x1, 12 ( x14 )
	nop
	bgtu x1, x0, LBB10_55
LBB10_53:                               //  %for.inc.6.i.i473
	lhu x1, 14 ( x14 )
	nop
	bgtu x1, x0, LBB10_55
LBB10_54:                               //  %eisinf.exit481
	lhu x1, 16 ( x14 )
	nop
	beqz x1, LBB10_66
LBB10_55:                               //  %lor.lhs.false17
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x15, x28
	bne x25, x1, LBB10_98
LBB10_56:                               //  %for.body.preheader.i.i419
	lhu x1, 0 ( x23 )
	nop
	bgtu x1, x0, LBB10_98
LBB10_57:                               //  %for.inc.i.i422
	lhu x1, 2 ( x23 )
	nop
	bgtu x1, x0, LBB10_98
LBB10_58:                               //  %for.inc.1.i.i425
	lhu x1, 4 ( x23 )
	nop
	bgtu x1, x0, LBB10_98
LBB10_59:                               //  %for.inc.2.i.i428
	lhu x1, 6 ( x23 )
	nop
	bgtu x1, x0, LBB10_98
LBB10_60:                               //  %for.inc.3.i.i431
	lhu x1, 8 ( x23 )
	nop
	bgtu x1, x0, LBB10_98
LBB10_61:                               //  %for.inc.4.i.i434
	lhu x1, 10 ( x23 )
	nop
	bgtu x1, x0, LBB10_98
LBB10_62:                               //  %for.inc.5.i.i437
	lhu x1, 12 ( x23 )
	nop
	bgtu x1, x0, LBB10_98
LBB10_63:                               //  %for.inc.6.i.i440
	lhu x1, 14 ( x23 )
	nop
	bgtu x1, x0, LBB10_98
LBB10_64:                               //  %eisinf.exit448
	lhu x1, 16 ( x23 )
	nop
	bgtu x1, x0, LBB10_98
LBB10_65:                               //  %if.then20
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x15, x28
	bne x26, x1, LBB10_83
LBB10_66:                               //  %for.body.preheader.i.i387
	add x4, x0, x14
	lhu x3, 0 ( x14 )
	add x1, x0, x0
	beqz x3, LBB10_68
LBB10_67:
	lui x15, 32767 >> 12 & 0xfffff
	jalr x0, LBB10_84 ( x0 )
LBB10_68:                               //  %for.inc.i.i390
	lhu x3, 2 ( x4 )
	nop
	beqz x3, LBB10_70
LBB10_69:
	lui x15, 32767 >> 12 & 0xfffff
	jalr x0, LBB10_84 ( x0 )
LBB10_70:                               //  %for.inc.1.i.i393
	lhu x3, 4 ( x4 )
	nop
	beqz x3, LBB10_72
LBB10_71:
	lui x15, 32767 >> 12 & 0xfffff
	jalr x0, LBB10_84 ( x0 )
LBB10_72:                               //  %for.inc.2.i.i396
	lhu x3, 6 ( x4 )
	nop
	beqz x3, LBB10_74
LBB10_73:
	lui x15, 32767 >> 12 & 0xfffff
	jalr x0, LBB10_84 ( x0 )
LBB10_74:                               //  %for.inc.3.i.i399
	lhu x3, 8 ( x4 )
	nop
	beqz x3, LBB10_76
LBB10_75:
	lui x15, 32767 >> 12 & 0xfffff
	jalr x0, LBB10_84 ( x0 )
LBB10_76:                               //  %for.inc.4.i.i402
	lhu x3, 10 ( x4 )
	nop
	beqz x3, LBB10_78
LBB10_77:
	lui x15, 32767 >> 12 & 0xfffff
	jalr x0, LBB10_84 ( x0 )
LBB10_78:                               //  %for.inc.5.i.i405
	lhu x3, 12 ( x4 )
	nop
	beqz x3, LBB10_80
LBB10_79:
	lui x15, 32767 >> 12 & 0xfffff
	jalr x0, LBB10_84 ( x0 )
LBB10_80:                               //  %for.inc.6.i.i408
	lhu x3, 14 ( x4 )
	nop
	beqz x3, LBB10_82
LBB10_81:
	lui x15, 32767 >> 12 & 0xfffff
	jalr x0, LBB10_84 ( x0 )
LBB10_82:                               //  %eisnan.exit.i411
	lhu x3, 16 ( x4 )
	lui x15, 32767 >> 12 & 0xfffff
	bgtu x3, x0, LBB10_84
LBB10_83:                               //  %if.end.i413
	srli x1, x8, 15
LBB10_84:                               //  %eisneg.exit415
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x15, x28
	bne x25, x3, LBB10_94
LBB10_85:                               //  %for.body.preheader.i.i356
	lhu x4, 0 ( x23 )
	add x3, x0, x0
	bgtu x4, x0, LBB10_95
LBB10_86:                               //  %for.inc.i.i359
	lhu x4, 2 ( x23 )
	nop
	bgtu x4, x0, LBB10_95
LBB10_87:                               //  %for.inc.1.i.i362
	lhu x4, 4 ( x23 )
	nop
	bgtu x4, x0, LBB10_95
LBB10_88:                               //  %for.inc.2.i.i365
	lhu x4, 6 ( x23 )
	nop
	bgtu x4, x0, LBB10_95
LBB10_89:                               //  %for.inc.3.i.i368
	lhu x4, 8 ( x23 )
	nop
	bgtu x4, x0, LBB10_95
LBB10_90:                               //  %for.inc.4.i.i371
	lhu x4, 10 ( x23 )
	nop
	bgtu x4, x0, LBB10_95
LBB10_91:                               //  %for.inc.5.i.i374
	lhu x4, 12 ( x23 )
	nop
	bgtu x4, x0, LBB10_95
LBB10_92:                               //  %for.inc.6.i.i377
	lhu x4, 14 ( x23 )
	nop
	bgtu x4, x0, LBB10_95
LBB10_93:                               //  %eisnan.exit.i380
	lhu x4, 16 ( x23 )
	nop
	bgtu x4, x0, LBB10_95
LBB10_94:                               //  %if.end.i382
	srli x3, x16, 15
LBB10_95:                               //  %eisneg.exit
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x4, 32767 >> 12 & 0xfffff
	or x4, x4, x28
	beq x1, x3, LBB10_97
LBB10_96:
	not x4, x0
LBB10_97:                               //  %eisneg.exit
	lw x1, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	sh x0, 0 ( x1 )
	sh x0, 2 ( x1 )
	sh x0, 4 ( x1 )
	sh x0, 6 ( x1 )
	sh x0, 8 ( x1 )
	sh x0, 10 ( x1 )
	sh x0, 12 ( x1 )
	sh x0, 14 ( x1 )
	sh x0, 16 ( x1 )
	sh x4, 18 ( x1 )
	jalr x0, LBB10_150 ( x0 )
LBB10_98:                               //  %if.end27
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	slli x1, x8, 16
	srai x1, x1, 16
	srli x28, x28, 20
	srli x1, x1, 15
	or x3, x15, x28
	sh x1, 70 ( x2 )
	sh x26, 72 ( x2 )
	bne x26, x3, LBB10_109
LBB10_99:                               //  %for.body.preheader.i.i270
	lh x3, 2 ( x14 )
	lh x1, 0 ( x14 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lui x4, 65535 >> 12 & 0xfffff
	srli x28, x28, 20
	or x5, x3, x1
	or x4, x4, x28
	and x4, x4, x5
	bgtu x4, x0, LBB10_108
LBB10_100:                              //  %for.inc.1.i.i276
	lhu x4, 4 ( x14 )
	add x3, x0, x0
	bgtu x4, x0, LBB10_108
LBB10_101:                              //  %for.inc.2.i.i279
	lhu x4, 6 ( x14 )
	nop
	bgtu x4, x0, LBB10_108
LBB10_102:                              //  %for.inc.3.i.i282
	lhu x4, 8 ( x14 )
	nop
	bgtu x4, x0, LBB10_108
LBB10_103:                              //  %for.inc.4.i.i285
	lhu x4, 10 ( x14 )
	nop
	bgtu x4, x0, LBB10_108
LBB10_104:                              //  %for.inc.5.i.i288
	lhu x4, 12 ( x14 )
	nop
	bgtu x4, x0, LBB10_108
LBB10_105:                              //  %for.inc.6.i.i291
	lhu x4, 14 ( x14 )
	nop
	bgtu x4, x0, LBB10_108
LBB10_106:                              //  %eisnan.exit.i293
	lhu x4, 16 ( x14 )
	nop
	bgtu x4, x0, LBB10_108
LBB10_107:                              //  %for.body23.preheader.i304
	addi x1, x2, 70
	sh x0, 4 ( x1 )
	sh x0, 6 ( x1 )
	sh x0, 8 ( x1 )
	sh x0, 10 ( x1 )
	sh x0, 12 ( x1 )
	sh x0, 14 ( x1 )
	sh x0, 16 ( x1 )
	sh x0, 18 ( x1 )
	sh x0, 20 ( x1 )
	sh x0, 22 ( x1 )
	add x4, x0, x0
	sh x0, 94 ( x2 )
	add x5, x0, x4
	add x7, x0, x4
	add x9, x0, x4
	add x10, x0, x4
	add x11, x0, x4
	add x12, x0, x4
	add x3, x0, x4
	add x1, x0, x4
	jalr x0, LBB10_110 ( x0 )
LBB10_108:                              //  %if.then13.i323
	addi x13, x2, 70
	sh x0, 4 ( x13 )
	lh x4, 16 ( x14 )
	lh x5, 14 ( x14 )
	lh x7, 12 ( x14 )
	lh x9, 10 ( x14 )
	lh x10, 8 ( x14 )
	lh x11, 6 ( x14 )
	lh x12, 4 ( x14 )
	lh x14, -2 ( x14 )
	sh x4, 6 ( x13 )
	sh x5, 8 ( x13 )
	sh x7, 10 ( x13 )
	sh x9, 12 ( x13 )
	sh x10, 14 ( x13 )
	sh x11, 16 ( x13 )
	sh x12, 18 ( x13 )
	sh x3, 20 ( x13 )
	sh x1, 22 ( x13 )
	sh x14, 94 ( x2 )
	jalr x0, LBB10_110 ( x0 )
LBB10_109:                              //  %if.end28.i341
	addi x13, x2, 70
	sh x0, 4 ( x13 )
	lh x4, 16 ( x14 )
	lh x5, 14 ( x14 )
	lh x7, 12 ( x14 )
	lh x9, 10 ( x14 )
	lh x10, 8 ( x14 )
	lh x11, 6 ( x14 )
	lh x12, 4 ( x14 )
	lh x3, 2 ( x14 )
	lh x1, 0 ( x14 )
	sh x4, 6 ( x13 )
	sh x5, 8 ( x13 )
	sh x7, 10 ( x13 )
	sh x9, 12 ( x13 )
	sh x10, 14 ( x13 )
	sh x11, 16 ( x13 )
	sh x12, 18 ( x13 )
	sh x3, 20 ( x13 )
	sh x1, 22 ( x13 )
	sh x0, 94 ( x2 )
LBB10_110:                              //  %emovi.exit343
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	slli x13, x16, 16
	srai x13, x13, 16
	srli x28, x28, 20
	srli x13, x13, 15
	or x14, x15, x28
	sh x13, 44 ( x2 )
	sh x25, 46 ( x2 )
	bne x25, x14, LBB10_121
LBB10_111:                              //  %for.body.preheader.i.i228
	lh x14, 2 ( x23 )
	lh x13, 0 ( x23 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lui x15, 65535 >> 12 & 0xfffff
	srli x28, x28, 20
	or x16, x14, x13
	or x15, x15, x28
	and x15, x15, x16
	bgtu x15, x0, LBB10_120
LBB10_112:                              //  %for.inc.1.i.i234
	lhu x15, 4 ( x23 )
	add x14, x0, x0
	bgtu x15, x0, LBB10_120
LBB10_113:                              //  %for.inc.2.i.i237
	lhu x15, 6 ( x23 )
	nop
	bgtu x15, x0, LBB10_120
LBB10_114:                              //  %for.inc.3.i.i240
	lhu x15, 8 ( x23 )
	nop
	bgtu x15, x0, LBB10_120
LBB10_115:                              //  %for.inc.4.i.i243
	lhu x15, 10 ( x23 )
	nop
	bgtu x15, x0, LBB10_120
LBB10_116:                              //  %for.inc.5.i.i246
	lhu x15, 12 ( x23 )
	nop
	bgtu x15, x0, LBB10_120
LBB10_117:                              //  %for.inc.6.i.i249
	lhu x15, 14 ( x23 )
	nop
	bgtu x15, x0, LBB10_120
LBB10_118:                              //  %eisnan.exit.i250
	lhu x15, 16 ( x23 )
	nop
	bgtu x15, x0, LBB10_120
LBB10_119:                              //  %for.body23.preheader.i
	addi x13, x2, 44
	sh x0, 4 ( x13 )
	sh x0, 6 ( x13 )
	sh x0, 8 ( x13 )
	sh x0, 10 ( x13 )
	sh x0, 12 ( x13 )
	sh x0, 14 ( x13 )
	sh x0, 16 ( x13 )
	sh x0, 18 ( x13 )
	sh x0, 20 ( x13 )
	sh x0, 22 ( x13 )
	jalr x0, LBB10_122 ( x0 )
LBB10_120:                              //  %if.then13.i
	addi x15, x2, 44
	sh x0, 4 ( x15 )
	lh x16, 16 ( x23 )
	lh x17, 14 ( x23 )
	lh x18, 12 ( x23 )
	lh x19, 10 ( x23 )
	lh x20, 8 ( x23 )
	lh x21, 6 ( x23 )
	lh x22, 4 ( x23 )
	lh x23, -2 ( x23 )
	sh x16, 6 ( x15 )
	sh x17, 8 ( x15 )
	sh x18, 10 ( x15 )
	sh x19, 12 ( x15 )
	sh x20, 14 ( x15 )
	sh x21, 16 ( x15 )
	sh x22, 18 ( x15 )
	sh x14, 20 ( x15 )
	sh x13, 22 ( x15 )
	sh x23, 68 ( x2 )
	jalr x0, LBB10_123 ( x0 )
LBB10_121:                              //  %if.end28.i
	addi x13, x2, 44
	sh x0, 4 ( x13 )
	lh x14, 16 ( x23 )
	lh x15, 14 ( x23 )
	lh x16, 12 ( x23 )
	lh x17, 10 ( x23 )
	lh x18, 8 ( x23 )
	lh x19, 6 ( x23 )
	lh x20, 4 ( x23 )
	lh x21, 2 ( x23 )
	lh x22, 0 ( x23 )
	sh x14, 6 ( x13 )
	sh x15, 8 ( x13 )
	sh x16, 10 ( x13 )
	sh x17, 12 ( x13 )
	sh x18, 14 ( x13 )
	sh x19, 16 ( x13 )
	sh x20, 18 ( x13 )
	sh x21, 20 ( x13 )
	sh x22, 22 ( x13 )
LBB10_122:                              //  %emovi.exit
	sh x0, 68 ( x2 )
LBB10_123:                              //  %emovi.exit
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lui x13, 65535 >> 12 & 0xfffff
	srli x28, x28, 20
	or x8, x13, x28
	and x14, x8, x26
	beqz x26, LBB10_125
LBB10_124:
	add x1, x0, x25
	jalr x0, LBB10_127 ( x0 )
LBB10_125:                              //  %for.cond.1
	or x4, x5, x4
	or x4, x7, x4
	or x4, x9, x4
	or x4, x10, x4
	ori x28, x0, 65535 & 0xfff
	or x4, x11, x4
	slli x28, x28, 20
	or x4, x12, x4
	or x3, x3, x4
	srli x28, x28, 20
	or x1, x1, x3
	or x3, x13, x28
	and x1, x3, x1
	beqz x1, LBB10_160
LBB10_126:                              //  %if.then42
	addi x10, x2, 70
	sw x25, 40 ( x2 )               //  4-byte Folded Spill
	sw x14, 8 ( x2 )                //  4-byte Folded Spill
	call $enormlz
	lw x14, 8 ( x2 )                //  4-byte Folded Reload
	lw x25, 40 ( x2 )               //  4-byte Folded Reload
	lw x24, 20 ( x2 )               //  4-byte Folded Reload
	sub x14, x14, x10
	lh x1, 46 ( x2 )
LBB10_127:                              //  %mnzer1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, 65535 >> 12 & 0xfffff
	or x3, x3, x28
	and x3, x3, x1
	and x4, x8, x25
	sw x4, 12 ( x2 )                //  4-byte Folded Spill
	sw x14, 8 ( x2 )                //  4-byte Folded Spill
	bgtu x3, x0, LBB10_130
LBB10_128:                              //  %for.cond52
	add x8, x0, x24
	lhu x1, 48 ( x2 )
	nop
	beqz x1, LBB10_151
LBB10_129:                              //  %if.then60
	addi x10, x2, 44
	call $enormlz
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x10
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
	lh x1, 46 ( x2 )
	add x24, x0, x8
LBB10_130:                              //  %mnzer2
	lh x3, 44 ( x2 )
	sh x1, 54 ( x24 )
	addi x10, x0, 3
	add x4, x0, x0
	sh x3, 52 ( x24 )
	addi x26, x2, 94
	sh x0, 56 ( x24 )
	sh x0, 58 ( x24 )
	sh x0, 60 ( x24 )
	sh x0, 62 ( x24 )
	sh x0, 64 ( x24 )
	sh x0, 66 ( x24 )
	sh x0, 68 ( x24 )
	sh x0, 70 ( x24 )
	sh x0, 72 ( x24 )
	sh x0, 74 ( x24 )
	sh x0, 76 ( x24 )
	addi x1, x24, 52
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	addi x8, x2, 122
	add x27, x0, x4
	add x3, x0, x4
	add x1, x0, x4
	add x5, x0, x4
	add x7, x0, x4
	add x9, x0, x4
	add x11, x0, x4
	add x12, x0, x4
	add x13, x0, x4
	add x14, x0, x4
	add x15, x0, x4
LBB10_131:                              //  %for.body10.i
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB10_133 Depth 2
	lhu x16, 0 ( x26 )
	add x4, x0, x0
	sw x16, 36 ( x2 )               //  4-byte Folded Spill
	beqz x16, LBB10_138
LBB10_132:                              //  %if.else.i
                                        //    in Loop: Header=BB10_131 Depth=1
	sw x27, 24 ( x2 )               //  4-byte Folded Spill
	sw x26, 28 ( x2 )               //  4-byte Folded Spill
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	sh x0, 22 ( x8 )
	sh x0, 146 ( x2 )
	addi x1, x2, 146
	add x7, x0, x1
	addi x8, x0, 24
LBB10_133:                              //  %for.body.i.i
                                        //    Parent Loop BB10_131 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x1, x2, 44
	add x1, x8, x1
	lhu x10, 0 ( x1 )
	nop
	bgtu x10, x0, LBB10_135
LBB10_134:                              //  %if.then.i.i
                                        //    in Loop: Header=BB10_133 Depth=2
	addi x1, x7, -2
	add x3, x0, x0
	jalr x0, LBB10_136 ( x0 )
LBB10_135:                              //  %if.else.i.i
                                        //    in Loop: Header=BB10_133 Depth=2
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	sw x7, 40 ( x2 )                //  4-byte Folded Spill
	call $__mulsi3
	lw x7, 40 ( x2 )                //  4-byte Folded Reload
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lhu x1, 0 ( x7 )
	srli x28, x28, 20
	lui x3, 65535 >> 12 & 0xfffff
	or x3, x3, x28
	and x3, x3, x10
	lhu x4, -2 ( x7 )
	add x1, x3, x1
	srli x3, x10, 16
	srli x5, x1, 16
	add x3, x3, x5
	add x3, x4, x3
	sh x1, 0 ( x7 )
	sh x3, -2 ( x7 )
	addi x1, x7, -2
	srli x3, x3, 16
LBB10_136:                              //  %if.end.i.i
                                        //    in Loop: Header=BB10_133 Depth=2
	addi x8, x8, -2
	xori x4, x8, 4
	sh x3, -4 ( x7 )
	add x7, x0, x1
	bgtu x4, x0, LBB10_133
LBB10_137:                              //  %m16m.exit.i
                                        //    in Loop: Header=BB10_131 Depth=1
	addi x8, x2, 122
	lh x1, 4 ( x8 )
	lh x3, 6 ( x8 )
	lh x4, 8 ( x8 )
	lh x5, 10 ( x8 )
	lh x7, 12 ( x8 )
	lh x9, 14 ( x8 )
	lh x15, 16 ( x8 )
	lh x11, 18 ( x8 )
	lh x12, 20 ( x8 )
	lh x13, 22 ( x8 )
	lh x14, 146 ( x2 )
	addi x10, x2, 96
	sh x1, 4 ( x10 )
	sh x3, 6 ( x10 )
	sh x4, 8 ( x10 )
	sh x5, 10 ( x10 )
	sh x7, 12 ( x10 )
	sh x9, 14 ( x10 )
	sh x15, 16 ( x10 )
	sh x11, 18 ( x10 )
	sh x12, 20 ( x10 )
	sh x13, 22 ( x10 )
	sh x14, 120 ( x2 )
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $eaddm
	lw x24, 20 ( x2 )               //  4-byte Folded Reload
	nop
	lh x4, 56 ( x24 )
	lh x15, 58 ( x24 )
	lh x14, 60 ( x24 )
	lh x13, 62 ( x24 )
	lh x12, 64 ( x24 )
	lh x11, 66 ( x24 )
	lh x9, 68 ( x24 )
	lh x7, 70 ( x24 )
	lh x5, 72 ( x24 )
	lh x1, 74 ( x24 )
	lh x3, 76 ( x24 )
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	lw x26, 28 ( x2 )               //  4-byte Folded Reload
	lw x27, 24 ( x2 )               //  4-byte Folded Reload
LBB10_138:                              //  %if.end.i
                                        //    in Loop: Header=BB10_131 Depth=1
	add x25, x0, x1
	add x16, x0, x15
	add x17, x0, x14
	add x18, x0, x13
	add x19, x0, x12
	add x20, x0, x11
	add x21, x0, x9
	add x22, x0, x7
	add x1, x0, x5
	addi x10, x10, 1
	xori x23, x10, 13
	sh x25, 76 ( x24 )
	sh x1, 74 ( x24 )
	sh x22, 72 ( x24 )
	sh x21, 70 ( x24 )
	sh x20, 68 ( x24 )
	sh x19, 66 ( x24 )
	sh x18, 64 ( x24 )
	sh x17, 62 ( x24 )
	sh x16, 60 ( x24 )
	sh x4, 58 ( x24 )
	addi x26, x26, -2
	or x27, x27, x3
	sh x0, 56 ( x24 )
	add x3, x0, x25
	add x5, x0, x22
	add x7, x0, x21
	add x9, x0, x20
	add x11, x0, x19
	add x12, x0, x18
	add x13, x0, x17
	add x14, x0, x16
	add x15, x0, x4
	bgtu x23, x0, LBB10_131
LBB10_139:                              //  %emulm.exit
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lh x3, 52 ( x24 )
	lui x5, 65535 >> 12 & 0xfffff
	or x5, x5, x28
	ori x28, x0, -16382 & 0xfff
	slli x28, x28, 20
	lui x7, -16382 >> 12 & 0xfffff
	srli x28, x28, 20
	lw x9, 8 ( x2 )                 //  4-byte Folded Reload
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	nop
	add x9, x10, x9
	or x7, x7, x28
	sh x3, 44 ( x2 )
	and x11, x5, x27
	add x13, x7, x9
	lh x3, 54 ( x24 )
	addi x10, x2, 44
	sh x3, 2 ( x10 )
	sh x0, 4 ( x10 )
	sh x4, 6 ( x10 )
	sh x16, 8 ( x10 )
	sh x17, 10 ( x10 )
	sh x18, 12 ( x10 )
	sh x19, 14 ( x10 )
	sh x20, 16 ( x10 )
	sh x21, 18 ( x10 )
	sh x22, 20 ( x10 )
	sh x1, 22 ( x10 )
	sh x25, 68 ( x2 )
	add x8, x0, x0
	addi x14, x0, 64
	add x12, x0, x8
	add x15, x0, x24
	call $emdnorm
	lhu x1, 44 ( x2 )
	lhu x4, 70 ( x2 )
	nop
	beq x4, x1, LBB10_141
LBB10_140:
	not x8, x0
LBB10_141:                              //  %emulm.exit
	lw x7, 4 ( x2 )                 //  4-byte Folded Reload
	lui x9, 32767 >> 12 & 0xfffff
	sh x8, 44 ( x2 )
	addi x3, x2, 44
	lhu x3, 2 ( x3 )
	lui x5, -32768 >> 12 & 0xfffff
	ori x28, x0, -32768 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x5, x5, x28
	beq x4, x1, LBB10_143
LBB10_142:
	or x1, x5, x3
	jalr x0, LBB10_144 ( x0 )
LBB10_143:                              //  %emulm.exit
	add x1, x0, x3
LBB10_144:                              //  %emulm.exit
	sh x1, 18 ( x7 )
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x9, x28
	bne x3, x4, LBB10_147
LBB10_145:                              //  %for.body.preheader.i.i
	addi x3, x2, 44
	add x5, x0, x3
	lh x3, 6 ( x5 )
	lh x4, 8 ( x5 )
	nop
	or x3, x3, x4
	lh x4, 10 ( x5 )
	nop
	or x3, x4, x3
	lh x4, 12 ( x5 )
	nop
	or x3, x4, x3
	lh x4, 14 ( x5 )
	nop
	or x3, x4, x3
	lh x4, 16 ( x5 )
	nop
	or x3, x4, x3
	lh x4, 18 ( x5 )
	nop
	or x3, x4, x3
	lh x4, 20 ( x5 )
	nop
	or x3, x4, x3
	lh x4, 22 ( x5 )
	nop
	or x3, x4, x3
	lh x4, 68 ( x2 )
	nop
	or x3, x4, x3
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x4, 65535 >> 12 & 0xfffff
	or x4, x4, x28
	and x3, x4, x3
	beqz x3, LBB10_148
LBB10_146:                              //  %if.then11.i
	sh x0, 0 ( x7 )
	sh x0, 2 ( x7 )
	sh x0, 4 ( x7 )
	sh x0, 6 ( x7 )
	sh x0, 8 ( x7 )
	sh x0, 10 ( x7 )
	sh x0, 12 ( x7 )
	sh x0, 14 ( x7 )
	lui x1, 49152>>12 
	sh x1, 16 ( x7 )
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x9, x28
	jalr x0, LBB10_149 ( x0 )
LBB10_147:                              //  %if.end13.i
	addi x1, x2, 44
	add x3, x0, x1
	lh x1, 6 ( x3 )
	nop
	sh x1, 16 ( x7 )
	lh x1, 8 ( x3 )
	nop
	sh x1, 14 ( x7 )
	lh x1, 10 ( x3 )
	nop
	sh x1, 12 ( x7 )
	lh x1, 12 ( x3 )
	nop
	sh x1, 10 ( x7 )
	lh x1, 14 ( x3 )
	nop
	sh x1, 8 ( x7 )
	lh x1, 16 ( x3 )
	nop
	sh x1, 6 ( x7 )
	lh x1, 18 ( x3 )
	nop
	sh x1, 4 ( x7 )
	lh x1, 20 ( x3 )
	nop
	sh x1, 2 ( x7 )
	lh x1, 66 ( x2 )
	nop
	sh x1, 0 ( x7 )
	jalr x0, LBB10_150 ( x0 )
LBB10_148:                              //  %if.end12.i
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x9, x28
	or x1, x3, x1
	sh x0, 0 ( x7 )
	sh x0, 2 ( x7 )
	sh x0, 4 ( x7 )
	sh x0, 6 ( x7 )
	sh x0, 8 ( x7 )
	sh x0, 10 ( x7 )
	sh x0, 12 ( x7 )
	sh x0, 14 ( x7 )
	sh x0, 16 ( x7 )
LBB10_149:                              //  %cleanup.sink.split.i
	sh x1, 18 ( x7 )
LBB10_150:                              //  %cleanup
	lw x8, 148 ( x2 )               //  4-byte Folded Reload
	lw x1, 156 ( x2 )
$cfi57:
	.cfi_same_value 1
	addi x2, x2, 160
$cfi58:
	.cfi_adjust_cfa_offset -160
$cfi59:
	.cfi_def_cfa 2, 0
	ret
LBB10_151:                              //  %for.cond52.1
	lhu x1, 50 ( x2 )
	nop
	bgtu x1, x0, LBB10_129
LBB10_152:                              //  %for.cond52.2
	lhu x1, 52 ( x2 )
	nop
	bgtu x1, x0, LBB10_129
LBB10_153:                              //  %for.cond52.3
	lhu x1, 54 ( x2 )
	nop
	bgtu x1, x0, LBB10_129
LBB10_154:                              //  %for.cond52.4
	lhu x1, 56 ( x2 )
	nop
	bgtu x1, x0, LBB10_129
LBB10_155:                              //  %for.cond52.5
	lhu x1, 58 ( x2 )
	nop
	bgtu x1, x0, LBB10_129
LBB10_156:                              //  %for.cond52.6
	lhu x1, 60 ( x2 )
	nop
	bgtu x1, x0, LBB10_129
LBB10_157:                              //  %for.cond52.7
	lhu x1, 62 ( x2 )
	nop
	bgtu x1, x0, LBB10_129
LBB10_158:                              //  %for.cond52.8
	lhu x1, 64 ( x2 )
	nop
	bgtu x1, x0, LBB10_129
LBB10_159:                              //  %for.cond52.9
	lhu x1, 66 ( x2 )
	nop
	bgtu x1, x0, LBB10_129
LBB10_160:                              //  %for.cond52.10
	lw x1, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	sh x0, 0 ( x1 )
	sh x0, 2 ( x1 )
	sh x0, 4 ( x1 )
	sh x0, 6 ( x1 )
	sh x0, 8 ( x1 )
	sh x0, 10 ( x1 )
	sh x0, 12 ( x1 )
	sh x0, 14 ( x1 )
	sh x0, 16 ( x1 )
	sh x0, 18 ( x1 )
	jalr x0, LBB10_150 ( x0 )
$func_end10:
	.size	$emul, ($func_end10)-($emul)
	.cfi_endproc

	.type	$eaddm,@function
$eaddm:                                 //  @eaddm
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi60:
	.cfi_def_cfa 2, 0
$cfi61:
	.cfi_val_offset 2, 0
	lhu x3, 24 ( x11 )
	lhu x4, 24 ( x10 )
	lhu x5, 22 ( x11 )
	lhu x7, 20 ( x11 )
	lhu x9, 18 ( x11 )
	add x3, x3, x4
	sh x3, 24 ( x11 )
	lhu x4, 22 ( x10 )
	srli x3, x3, 16
	lhu x12, 16 ( x11 )
	lhu x13, 14 ( x11 )
	add x3, x3, x4
	add x3, x5, x3
	sh x3, 22 ( x11 )
	lhu x4, 20 ( x10 )
	srli x3, x3, 16
	andi x3, x3, 1
	lhu x5, 12 ( x11 )
	add x3, x3, x4
	add x3, x7, x3
	sh x3, 20 ( x11 )
	lhu x4, 18 ( x10 )
	srli x3, x3, 16
	andi x3, x3, 1
	lhu x7, 10 ( x11 )
	add x3, x3, x4
	add x3, x9, x3
	sh x3, 18 ( x11 )
	lhu x4, 16 ( x10 )
	srli x3, x3, 16
	andi x3, x3, 1
	lhu x9, 8 ( x11 )
	add x3, x3, x4
	add x3, x12, x3
	sh x3, 16 ( x11 )
	lhu x4, 14 ( x10 )
	srli x3, x3, 16
	andi x3, x3, 1
	lhu x12, 6 ( x11 )
	add x3, x3, x4
	add x3, x13, x3
	sh x3, 14 ( x11 )
	lhu x4, 12 ( x10 )
	srli x3, x3, 16
	andi x3, x3, 1
	lhu x13, 4 ( x11 )
	add x3, x3, x4
	add x3, x5, x3
	sh x3, 12 ( x11 )
	lhu x4, 10 ( x10 )
	srli x3, x3, 16
	andi x3, x3, 1
	add x3, x3, x4
	add x3, x7, x3
	sh x3, 10 ( x11 )
	lhu x4, 8 ( x10 )
	srli x3, x3, 16
	andi x3, x3, 1
	add x3, x3, x4
	add x3, x9, x3
	sh x3, 8 ( x11 )
	lhu x4, 6 ( x10 )
	srli x3, x3, 16
	andi x3, x3, 1
	add x3, x3, x4
	add x3, x12, x3
	sh x3, 6 ( x11 )
	lh x4, 4 ( x10 )
	srli x3, x3, 16
	andi x3, x3, 1
	add x3, x3, x4
	add x3, x13, x3
	sh x3, 4 ( x11 )
	ret
$func_end11:
	.size	$eaddm, ($func_end11)-($eaddm)
	.cfi_endproc

	.type	$eiremain,@function
$eiremain:                              //  @eiremain
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi62:
	.cfi_def_cfa 2, 0
$cfi63:
	.cfi_val_offset 2, 0
	addi x2, x2, -32
$cfi64:
	.cfi_adjust_cfa_offset 32
	sw x1, 28 ( x2 )
$cfi65:
	.cfi_offset 1, -4
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	sw x12, 16 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x11
	lhu x1, 2 ( x10 )
	nop
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
	sw x10, 4 ( x2 )                //  4-byte Folded Spill
	call $enormlz
	lhu x1, 2 ( x8 )
	nop
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x10
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	call $enormlz
	lw x25, 12 ( x2 )               //  4-byte Folded Reload
	lw x23, 16 ( x2 )               //  4-byte Folded Reload
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sub x13, x1, x10
	sh x0, 52 ( x23 )
	sh x0, 54 ( x23 )
	sh x0, 56 ( x23 )
	sh x0, 58 ( x23 )
	sh x0, 60 ( x23 )
	sh x0, 62 ( x23 )
	sh x0, 64 ( x23 )
	sh x0, 66 ( x23 )
	sh x0, 68 ( x23 )
	sh x0, 70 ( x23 )
	sh x0, 72 ( x23 )
	sh x0, 74 ( x23 )
	sh x0, 76 ( x23 )
	bgt x25, x13, LBB12_30
LBB12_1:                                //  %while.body.lr.ph
	addi x1, x23, 76
	lui x3, 65535 >> 12 & 0xfffff
	slti x4, x0, 1
	add x5, x0, x0
	addi x7, x0, 24
	lw x24, 4 ( x2 )                //  4-byte Folded Reload
LBB12_2:                                //  %while.body
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB12_26 Depth 2
                                        //      Child Loop BB12_28 Depth 2
	add x9, x0, x13
	lhu x10, 4 ( x8 )
	lhu x19, 4 ( x24 )
	add x17, x0, x10
	bne x19, x10, LBB12_5
LBB12_3:                                //  %for.inc.i
                                        //    in Loop: Header=BB12_2 Depth=1
	lhu x17, 6 ( x8 )
	lhu x11, 6 ( x24 )
	nop
	beq x11, x17, LBB12_7
LBB12_4:                                //    in Loop: Header=BB12_2 Depth=1
	add x19, x0, x11
LBB12_5:                                //  %difrnt.i
                                        //    in Loop: Header=BB12_2 Depth=1
	add x11, x0, x5
	bgtu x19, x17, LBB12_25
LBB12_6:                                //  %difrnt.i.if.then_crit_edge
                                        //    in Loop: Header=BB12_2 Depth=1
	lh x11, 6 ( x8 )
	lh x12, 8 ( x8 )
	lh x13, 10 ( x8 )
	lh x14, 12 ( x8 )
	lh x15, 14 ( x8 )
	lh x16, 16 ( x8 )
	lh x18, 18 ( x8 )
	lh x20, 20 ( x8 )
	lh x21, 22 ( x8 )
	lh x22, 24 ( x24 )
	lh x19, 24 ( x8 )
	jalr x0, LBB12_24 ( x0 )
LBB12_7:                                //  %for.inc.1.i
                                        //    in Loop: Header=BB12_2 Depth=1
	lhu x17, 8 ( x8 )
	lhu x12, 8 ( x24 )
	nop
	beq x12, x17, LBB12_9
LBB12_8:                                //    in Loop: Header=BB12_2 Depth=1
	add x19, x0, x12
	jalr x0, LBB12_5 ( x0 )
LBB12_9:                                //  %for.inc.2.i
                                        //    in Loop: Header=BB12_2 Depth=1
	lhu x17, 10 ( x8 )
	lhu x13, 10 ( x24 )
	nop
	beq x13, x17, LBB12_11
LBB12_10:                               //    in Loop: Header=BB12_2 Depth=1
	add x19, x0, x13
	jalr x0, LBB12_5 ( x0 )
LBB12_11:                               //  %for.inc.3.i
                                        //    in Loop: Header=BB12_2 Depth=1
	lhu x17, 12 ( x8 )
	lhu x14, 12 ( x24 )
	nop
	beq x14, x17, LBB12_13
LBB12_12:                               //    in Loop: Header=BB12_2 Depth=1
	add x19, x0, x14
	jalr x0, LBB12_5 ( x0 )
LBB12_13:                               //  %for.inc.4.i
                                        //    in Loop: Header=BB12_2 Depth=1
	lhu x17, 14 ( x8 )
	lhu x15, 14 ( x24 )
	nop
	beq x15, x17, LBB12_15
LBB12_14:                               //    in Loop: Header=BB12_2 Depth=1
	add x19, x0, x15
	jalr x0, LBB12_5 ( x0 )
LBB12_15:                               //  %for.inc.5.i
                                        //    in Loop: Header=BB12_2 Depth=1
	lhu x17, 16 ( x8 )
	lhu x16, 16 ( x24 )
	nop
	beq x16, x17, LBB12_17
LBB12_16:                               //    in Loop: Header=BB12_2 Depth=1
	add x19, x0, x16
	jalr x0, LBB12_5 ( x0 )
LBB12_17:                               //  %for.inc.6.i
                                        //    in Loop: Header=BB12_2 Depth=1
	lhu x17, 18 ( x8 )
	lhu x18, 18 ( x24 )
	nop
	beq x18, x17, LBB12_19
LBB12_18:                               //    in Loop: Header=BB12_2 Depth=1
	add x19, x0, x18
	jalr x0, LBB12_5 ( x0 )
LBB12_19:                               //  %for.inc.7.i
                                        //    in Loop: Header=BB12_2 Depth=1
	lhu x17, 20 ( x8 )
	lhu x20, 20 ( x24 )
	nop
	beq x20, x17, LBB12_21
LBB12_20:                               //    in Loop: Header=BB12_2 Depth=1
	add x19, x0, x20
	jalr x0, LBB12_5 ( x0 )
LBB12_21:                               //  %for.inc.8.i
                                        //    in Loop: Header=BB12_2 Depth=1
	lhu x17, 22 ( x8 )
	lhu x21, 22 ( x24 )
	nop
	beq x21, x17, LBB12_23
LBB12_22:                               //    in Loop: Header=BB12_2 Depth=1
	add x19, x0, x21
	jalr x0, LBB12_5 ( x0 )
LBB12_23:                               //  %for.inc.9.i
                                        //    in Loop: Header=BB12_2 Depth=1
	lhu x17, 24 ( x8 )
	lhu x19, 24 ( x24 )
	nop
	add x22, x0, x19
	bne x19, x17, LBB12_5
LBB12_24:                               //  %if.then
                                        //    in Loop: Header=BB12_2 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x17, x3, x28
	and x22, x17, x22
	and x19, x17, x19
	sub x19, x19, x22
	sh x19, 24 ( x8 )
	lhu x22, 22 ( x24 )
	and x21, x17, x21
	srli x19, x19, 16
	andi x19, x19, 1
	sub x21, x21, x22
	sub x19, x21, x19
	sh x19, 22 ( x8 )
	lhu x21, 20 ( x24 )
	and x20, x17, x20
	srli x19, x19, 16
	andi x19, x19, 1
	sub x20, x20, x21
	sub x19, x20, x19
	sh x19, 20 ( x8 )
	lhu x20, 18 ( x24 )
	and x18, x17, x18
	srli x19, x19, 16
	andi x19, x19, 1
	sub x18, x18, x20
	sub x18, x18, x19
	sh x18, 18 ( x8 )
	lhu x19, 16 ( x24 )
	and x16, x17, x16
	srli x18, x18, 16
	andi x18, x18, 1
	sub x16, x16, x19
	sub x16, x16, x18
	sh x16, 16 ( x8 )
	lhu x18, 14 ( x24 )
	and x15, x17, x15
	srli x16, x16, 16
	andi x16, x16, 1
	sub x15, x15, x18
	sub x15, x15, x16
	sh x15, 14 ( x8 )
	lhu x16, 12 ( x24 )
	and x14, x17, x14
	srli x15, x15, 16
	andi x15, x15, 1
	sub x14, x14, x16
	sub x14, x14, x15
	sh x14, 12 ( x8 )
	lhu x15, 10 ( x24 )
	and x13, x17, x13
	srli x14, x14, 16
	andi x14, x14, 1
	sub x13, x13, x15
	sub x13, x13, x14
	sh x13, 10 ( x8 )
	lhu x14, 8 ( x24 )
	and x12, x17, x12
	srli x13, x13, 16
	andi x13, x13, 1
	sub x12, x12, x14
	sub x12, x12, x13
	sh x12, 8 ( x8 )
	lhu x13, 6 ( x24 )
	and x11, x17, x11
	srli x12, x12, 16
	andi x12, x12, 1
	sub x11, x11, x13
	sub x11, x11, x12
	sh x11, 6 ( x8 )
	lh x12, 4 ( x24 )
	srli x11, x11, 16
	andi x11, x11, 1
	sub x10, x10, x12
	sub x10, x10, x11
	sh x10, 4 ( x8 )
	add x11, x0, x4
LBB12_25:                               //  %if.end
                                        //    in Loop: Header=BB12_2 Depth=1
	add x12, x0, x5
	add x10, x0, x5
LBB12_26:                               //  %for.body.i62
                                        //    Parent Loop BB12_2 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x13, x10, x1
	lhu x14, 0 ( x13 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	srli x15, x14, 15
	or x12, x12, x15
	or x15, x3, x28
	and x12, x15, x12
	srli x15, x12, 1
	addi x10, x10, -2
	slli x14, x14, 1
	andi x15, x15, 1
	or x14, x14, x15
	xori x15, x10, -22
	sh x14, 0 ( x13 )
	slli x12, x12, 1
	bgtu x15, x0, LBB12_26
LBB12_27:                               //  %eshup1.exit63
                                        //    in Loop: Header=BB12_2 Depth=1
	lh x10, 76 ( x23 )
	nop
	or x10, x11, x10
	sh x10, 76 ( x23 )
	add x11, x0, x5
	add x10, x0, x7
LBB12_28:                               //  %for.body.i
                                        //    Parent Loop BB12_2 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x12, x10, x8
	lhu x13, 0 ( x12 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	srli x14, x13, 15
	or x11, x11, x14
	or x14, x3, x28
	and x11, x14, x11
	srli x14, x11, 1
	addi x10, x10, -2
	slli x13, x13, 1
	andi x14, x14, 1
	or x13, x13, x14
	xori x14, x10, 2
	sh x13, 0 ( x12 )
	slli x11, x11, 1
	bgtu x14, x0, LBB12_28
LBB12_29:                               //  %eshup1.exit
                                        //    in Loop: Header=BB12_2 Depth=1
	addi x13, x9, -1
	bgt x9, x25, LBB12_2
LBB12_30:                               //  %while.end
	add x11, x0, x0
	add x10, x0, x8
	add x12, x0, x11
	add x14, x0, x11
	add x15, x0, x23
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	lw x1, 28 ( x2 )
$cfi66:
	.cfi_same_value 1
	addi x2, x2, 32
$cfi67:
	.cfi_adjust_cfa_offset -32
$cfi68:
	.cfi_def_cfa 2, 0
	j $emdnorm
$func_end12:
	.size	$eiremain, ($func_end12)-($eiremain)
	.cfi_endproc

	.type	$emdnorm,@function
$emdnorm:                               //  @emdnorm
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi69:
	.cfi_def_cfa 2, 0
$cfi70:
	.cfi_val_offset 2, 0
	addi x2, x2, -40
$cfi71:
	.cfi_adjust_cfa_offset 40
	sw x1, 36 ( x2 )
$cfi72:
	.cfi_offset 1, -4
	sw x8, 28 ( x2 )                //  4-byte Folded Spill
	sw x15, 20 ( x2 )               //  4-byte Folded Spill
	sw x14, 16 ( x2 )               //  4-byte Folded Spill
	sw x12, 8 ( x2 )                //  4-byte Folded Spill
	sw x11, 12 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x13
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	call $enormlz
	slti x1, x10, 145
	sub x12, x8, x10
	bgtu x1, x0, LBB13_3
LBB13_1:                                //  %entry
	lui x1, 32766 >> 12 & 0xfffff
	ori x28, x0, 32766 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	bgt x12, x1, LBB13_3
LBB13_2:                                //  %if.then
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	nop
	sh x0, 2 ( x10 )
	sh x0, 4 ( x10 )
	sh x0, 6 ( x10 )
	sh x0, 8 ( x10 )
	sh x0, 10 ( x10 )
	sh x0, 12 ( x10 )
	sh x0, 14 ( x10 )
	sh x0, 16 ( x10 )
	sh x0, 18 ( x10 )
	sh x0, 20 ( x10 )
	sh x0, 22 ( x10 )
	add x12, x0, x0
	addi x1, x0, 12
	jalr x0, LBB13_51 ( x0 )
LBB13_3:                                //  %if.end
	bgez x12, LBB13_8
LBB13_4:                                //  %if.then3
	slti x1, x12, -144
	bgtu x1, x0, LBB13_2
LBB13_5:                                //  %if.then5
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x12
	add x11, x0, x12
	call $eshift
	add x1, x0, x0
	beq x10, x1, LBB13_7
LBB13_6:                                //  %if.then5
	slti x1, x0, 1
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
LBB13_7:                                //  %if.then5
	add x12, x0, x8
LBB13_8:                                //  %if.end10
	lw x13, 20 ( x2 )               //  4-byte Folded Reload
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB13_46
LBB13_9:                                //  %if.end13
	lw x1, 4 ( x13 )
	lw x3, 0 ( x13 )
	nop
	beq x1, x3, LBB13_25
LBB13_10:                               //  %if.then15
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	lui x3, 32767 >> 12 & 0xfffff
	srli x28, x28, 20
	addi x5, x0, 55
	sh x0, 26 ( x13 )
	sh x0, 28 ( x13 )
	sh x0, 30 ( x13 )
	sh x0, 32 ( x13 )
	sh x0, 34 ( x13 )
	sh x0, 36 ( x13 )
	sh x0, 38 ( x13 )
	sh x0, 40 ( x13 )
	sh x0, 42 ( x13 )
	sh x0, 44 ( x13 )
	sh x0, 46 ( x13 )
	sh x0, 48 ( x13 )
	sh x0, 50 ( x13 )
	or x4, x3, x28
	bgt x1, x5, LBB13_14
LBB13_11:                               //  %if.then15
	xori x3, x1, 24
	beqz x3, LBB13_22
LBB13_12:                               //  %if.then15
	xori x3, x1, 53
	beqz x3, LBB13_21
LBB13_13:                               //  %sw.bb
	addi x9, x0, 11
	slti x3, x0, 1
	lui x5, 32768>>12 
	lui x4, 65535 >> 12 & 0xfffff
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x4, x28
	addi x7, x0, 12
	jalr x0, LBB13_24 ( x0 )
LBB13_14:                               //  %if.then15
	xori x3, x1, 56
	beqz x3, LBB13_19
LBB13_15:                               //  %if.then15
	xori x3, x1, 64
	beqz x3, LBB13_18
LBB13_16:                               //  %if.then15
	xori x3, x1, 113
	bgtu x3, x0, LBB13_13
LBB13_17:
	lui x3, 32768>>12 
	lui x5, 16384>>12 
	addi x7, x0, 10
	jalr x0, LBB13_23 ( x0 )
LBB13_18:                               //  %sw.bb26
	addi x9, x0, 6
	slti x3, x0, 1
	lui x5, 32768>>12 
	lui x4, 65535 >> 12 & 0xfffff
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x4, x28
	addi x7, x0, 7
	jalr x0, LBB13_24 ( x0 )
LBB13_19:                               //  %sw.bb34
	addi x3, x0, 256
	addi x5, x0, 128
	addi x4, x0, 255
	addi x7, x0, 6
	jalr x0, LBB13_23 ( x0 )
LBB13_21:                               //  %sw.bb41
	lui x3, 2048 >> 12 & 0xfffff
	ori x28, x0, 2048 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	addi x5, x0, 1024
	addi x4, x0, 2047
	addi x7, x0, 6
	jalr x0, LBB13_23 ( x0 )
LBB13_22:                               //  %sw.bb48
	addi x3, x0, 256
	addi x5, x0, 128
	addi x4, x0, 255
	addi x7, x0, 4
LBB13_23:                               //  %sw.epilog
	add x9, x0, x7
LBB13_24:                               //  %sw.epilog
	slli x11, x9, 1
	add x11, x11, x13
	sw x7, 8 ( x13 )
	sh x4, 20 ( x13 )
	sh x5, 22 ( x13 )
	sh x3, 24 ( x13 )
	sw x9, 12 ( x13 )
	sh x3, 26 ( x11 )
	sw x1, 0 ( x13 )
LBB13_25:                               //  %if.end60
	bgt x12, x0, LBB13_29
LBB13_26:                               //  %land.lhs.true62
	xori x1, x1, 144
	bgtu x1, x0, LBB13_28
LBB13_27:
	addi x1, x0, 144
	jalr x0, LBB13_29 ( x0 )
LBB13_28:                               //  %if.then65
	lhu x1, 24 ( x10 )
	nop
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x12
	call $eshdn1
	lw x13, 20 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x8
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, 1
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	nop
	or x3, x3, x1
	sw x3, 12 ( x2 )                //  4-byte Folded Spill
	lw x1, 4 ( x13 )
LBB13_29:                               //  %if.end67
	lw x9, 8 ( x13 )
	lh x5, 20 ( x13 )
	addi x11, x0, 143
	slli x3, x9, 1
	add x4, x3, x10
	lh x7, 0 ( x4 )
	nop
	and x3, x7, x5
	bgt x1, x11, LBB13_34
LBB13_30:                               //  %while.cond.preheader
	addi x1, x9, 1
	addi x11, x0, 12
	bgt x1, x11, LBB13_34
LBB13_31:                               //  %while.body.preheader
	slli x1, x1, 1
	add x1, x1, x10
	sub x5, x11, x9
LBB13_32:                               //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	lhu x7, 0 ( x1 )
	addi x5, x5, -1
	sh x0, 0 ( x1 )
	addi x1, x1, 2
	sltu x7, x0, x7
	andi x7, x7, 1
	or x3, x3, x7
	bgtu x5, x0, LBB13_32
LBB13_33:                               //  %if.end90.loopexit
	lh x7, 0 ( x4 )
	lh x5, 20 ( x13 )
	nop
LBB13_34:                               //  %if.end90
	not x1, x5
	and x1, x1, x7
	sh x1, 0 ( x4 )
	lh x1, 22 ( x13 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lui x8, 65535 >> 12 & 0xfffff
	srli x28, x28, 20
	and x4, x3, x1
	or x5, x8, x28
	and x4, x5, x4
	beqz x4, LBB13_40
LBB13_35:                               //  %if.then104
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x8, x28
	and x1, x4, x1
	and x3, x4, x3
	bne x3, x1, LBB13_39
LBB13_36:                               //  %if.then110
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB13_38
LBB13_37:                               //  %if.then113
	lw x1, 12 ( x13 )
	lh x3, 24 ( x13 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	slli x1, x1, 1
	add x1, x1, x10
	lh x1, 0 ( x1 )
	srli x28, x28, 20
	or x4, x8, x28
	and x1, x1, x3
	and x1, x4, x1
	bgtu x1, x0, LBB13_39
	jalr x0, LBB13_40 ( x0 )
LBB13_38:                               //  %if.else124
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB13_40
LBB13_39:                               //  %if.end130
	addi x10, x13, 26
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	sw x12, 16 ( x2 )               //  4-byte Folded Spill
	call $eaddm
	lw x13, 20 ( x2 )               //  4-byte Folded Reload
	lw x12, 16 ( x2 )               //  4-byte Folded Reload
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
LBB13_40:                               //  %mddone
	bgt x12, x0, LBB13_44
LBB13_41:                               //  %land.lhs.true136
	lw x1, 4 ( x13 )
	nop
	xori x1, x1, 144
	beqz x1, LBB13_44
LBB13_42:                               //  %if.then140
	add x3, x0, x0
	addi x1, x0, 24
LBB13_43:                               //  %for.body.i
                                        //  =>This Inner Loop Header: Depth=1
	add x4, x1, x10
	lhu x5, 0 ( x4 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	srli x7, x5, 15
	or x3, x3, x7
	or x7, x8, x28
	and x3, x7, x3
	srli x7, x3, 1
	addi x1, x1, -2
	slli x5, x5, 1
	andi x7, x7, 1
	or x5, x5, x7
	xori x7, x1, 2
	sh x5, 0 ( x4 )
	slli x3, x3, 1
	bgtu x7, x0, LBB13_43
LBB13_44:                               //  %if.end141
	lhu x1, 4 ( x10 )
	nop
	beqz x1, LBB13_46
LBB13_45:                               //  %if.then146
	add x8, x0, x12
	call $eshdn1
	add x12, x0, x8
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	addi x12, x12, 1
LBB13_46:                               //  %mdfin
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	lui x1, 32767 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x1, x28
	sh x0, 24 ( x10 )
	bgt x3, x12, LBB13_48
LBB13_47:                               //  %if.then152
	ori x28, x0, 32767 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	sh x1, 2 ( x10 )
	sh x0, 4 ( x10 )
	sh x0, 6 ( x10 )
	sh x0, 8 ( x10 )
	sh x0, 10 ( x10 )
	sh x0, 12 ( x10 )
	sh x0, 14 ( x10 )
	sh x0, 16 ( x10 )
	sh x0, 18 ( x10 )
	sh x0, 20 ( x10 )
	add x12, x0, x0
	addi x1, x0, 11
	jalr x0, LBB13_51 ( x0 )
LBB13_48:                               //  %if.end158
	add x1, x0, x0
	bgt x12, x1, LBB13_50
LBB13_49:                               //  %if.end158
	add x12, x0, x1
LBB13_50:                               //  %if.end158
	slti x1, x0, 1
LBB13_51:                               //  %cleanup
	slli x1, x1, 1
	add x1, x1, x10
	sh x12, 0 ( x1 )
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	lw x1, 36 ( x2 )
$cfi73:
	.cfi_same_value 1
	addi x2, x2, 40
$cfi74:
	.cfi_adjust_cfa_offset -40
$cfi75:
	.cfi_def_cfa 2, 0
	ret
$func_end13:
	.size	$emdnorm, ($func_end13)-($emdnorm)
	.cfi_endproc

	.address_space	0	
	.type	$.str,@object           //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str:
	.asciz	" NaN "
	.size	$.str, 6

	.address_space	0	
	.type	$etens,@object          //  @etens
	.section	.rodata,"a",@progbits
	.p2align	1
$etens:
	.short	25974                   //  0x6576
	.short	19090                   //  0x4a92
	.short	32842                   //  0x804a
	.short	5439                    //  0x153f
	.short	51532                   //  0xc94c
	.short	38810                   //  0x979a
	.short	35360                   //  0x8a20
	.short	20994                   //  0x5202
	.short	50272                   //  0xc460
	.short	29989                   //  0x7525
	.short	27186                   //  0x6a32
	.short	52818                   //  0xce52
	.short	12954                   //  0x329a
	.short	10446                   //  0x28ce
	.short	42829                   //  0xa74d
	.short	24036                   //  0x5de4
	.short	50493                   //  0xc53d
	.short	15197                   //  0x3b5d
	.short	40587                   //  0x9e8b
	.short	23186                   //  0x5a92
	.short	21100                   //  0x526c
	.short	20686                   //  0x50ce
	.short	61835                   //  0xf18b
	.short	15656                   //  0x3d28
	.short	25869                   //  0x650d
	.short	3095                    //  0xc17
	.short	33141                   //  0x8175
	.short	30086                   //  0x7586
	.short	51574                   //  0xc976
	.short	19784                   //  0x4d48
	.short	40038                   //  0x9c66
	.short	22776                   //  0x58f8
	.short	48208                   //  0xbc50
	.short	23636                   //  0x5c54
	.short	52325                   //  0xcc65
	.short	37318                   //  0x91c6
	.short	42510                   //  0xa60e
	.short	41134                   //  0xa0ae
	.short	58137                   //  0xe319
	.short	18083                   //  0x46a3
	.short	34078                   //  0x851e
	.short	60087                   //  0xeab7
	.short	39166                   //  0x98fe
	.short	36891                   //  0x901b
	.short	56763                   //  0xddbb
	.short	56973                   //  0xde8d
	.short	40441                   //  0x9df9
	.short	60411                   //  0xebfb
	.short	43646                   //  0xaa7e
	.short	17233                   //  0x4351
	.short	565                     //  0x235
	.short	311                     //  0x137
	.short	14001                   //  0x36b1
	.short	13164                   //  0x336c
	.short	50799                   //  0xc66f
	.short	36063                   //  0x8cdf
	.short	33001                   //  0x80e9
	.short	18377                   //  0x47c9
	.short	37818                   //  0x93ba
	.short	16808                   //  0x41a8
	.short	20728                   //  0x50f8
	.short	9723                    //  0x25fb
	.short	51051                   //  0xc76b
	.short	27505                   //  0x6b71
	.short	15551                   //  0x3cbf
	.short	42709                   //  0xa6d5
	.short	65487                   //  0xffcf
	.short	8009                    //  0x1f49
	.short	49784                   //  0xc278
	.short	16595                   //  0x40d3
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	61472                   //  0xf020
	.short	46493                   //  0xb59d
	.short	11120                   //  0x2b70
	.short	44456                   //  0xada8
	.short	40389                   //  0x9dc5
	.short	16489                   //  0x4069
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	1024                    //  0x400
	.short	51647                   //  0xc9bf
	.short	36379                   //  0x8e1b
	.short	16436                   //  0x4034
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	8192                    //  0x2000
	.short	48828                   //  0xbebc
	.short	16409                   //  0x4019
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	40000                   //  0x9c40
	.short	16396                   //  0x400c
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	51200                   //  0xc800
	.short	16389                   //  0x4005
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	40960                   //  0xa000
	.short	16386                   //  0x4002
	.size	$etens, 260

	.address_space	0	
	.type	$eone,@object           //  @eone
	.p2align	1
$eone:
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	0                       //  0x0
	.short	32768                   //  0x8000
	.short	16383                   //  0x3fff
	.size	$eone, 20

	.address_space	0	
	.type	$.str.1,@object         //  @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str.1:
	.asciz	" -Infinity "
	.size	$.str.1, 12

	.address_space	0	
	.type	$.str.2,@object         //  @.str.2
$.str.2:
	.asciz	" Infinity "
	.size	$.str.2, 11

	.address_space	0	
	.type	$.str.3,@object         //  @.str.3
$.str.3:
	.asciz	"NaN"
	.size	$.str.3, 4

	.address_space	0	
	.type	$emtens,@object         //  @emtens
	.section	.rodata,"a",@progbits
	.p2align	1
$emtens:
	.short	8240                    //  0x2030
	.short	53244                   //  0xcffc
	.short	41411                   //  0xa1c3
	.short	33059                   //  0x8123
	.short	11747                   //  0x2de3
	.short	40926                   //  0x9fde
	.short	53966                   //  0xd2ce
	.short	1224                    //  0x4c8
	.short	42717                   //  0xa6dd
	.short	2776                    //  0xad8
	.short	33380                   //  0x8264
	.short	53963                   //  0xd2cb
	.short	62186                   //  0xf2ea
	.short	4820                    //  0x12d4
	.short	18725                   //  0x4925
	.short	11748                   //  0x2de4
	.short	13366                   //  0x3436
	.short	21327                   //  0x534f
	.short	52910                   //  0xceae
	.short	9579                    //  0x256b
	.short	62783                   //  0xf53f
	.short	63128                   //  0xf698
	.short	27603                   //  0x6bd3
	.short	344                     //  0x158
	.short	34726                   //  0x87a6
	.short	49341                   //  0xc0bd
	.short	55895                   //  0xda57
	.short	33445                   //  0x82a5
	.short	41638                   //  0xa2a6
	.short	12981                   //  0x32b5
	.short	59185                   //  0xe731
	.short	1236                    //  0x4d4
	.short	58354                   //  0xe3f2
	.short	54066                   //  0xd332
	.short	28978                   //  0x7132
	.short	53788                   //  0xd21c
	.short	56099                   //  0xdb23
	.short	60978                   //  0xee32
	.short	36937                   //  0x9049
	.short	14682                   //  0x395a
	.short	41534                   //  0xa23e
	.short	21256                   //  0x5308
	.short	65275                   //  0xfefb
	.short	4437                    //  0x1155
	.short	64145                   //  0xfa91
	.short	6457                    //  0x1939
	.short	25466                   //  0x637a
	.short	17189                   //  0x4325
	.short	49201                   //  0xc031
	.short	15532                   //  0x3cac
	.short	57965                   //  0xe26d
	.short	56286                   //  0xdbde
	.short	53341                   //  0xd05d
	.short	46070                   //  0xb3f6
	.short	44156                   //  0xac7c
	.short	58528                   //  0xe4a0
	.short	25788                   //  0x64bc
	.short	18044                   //  0x467c
	.short	56784                   //  0xddd0
	.short	15957                   //  0x3e55
	.short	10784                   //  0x2a20
	.short	25124                   //  0x6224
	.short	18355                   //  0x47b3
	.short	39127                   //  0x98d7
	.short	16163                   //  0x3f23
	.short	59813                   //  0xe9a5
	.short	42297                   //  0xa539
	.short	59943                   //  0xea27
	.short	43135                   //  0xa87f
	.short	16170                   //  0x3f2a
	.short	2907                    //  0xb5b
	.short	19186                   //  0x4af2
	.short	42369                   //  0xa581
	.short	6381                    //  0x18ed
	.short	26590                   //  0x67de
	.short	38074                   //  0x94ba
	.short	17721                   //  0x4539
	.short	7853                    //  0x1ead
	.short	53169                   //  0xcfb1
	.short	16276                   //  0x3f94
	.short	49009                   //  0xbf71
	.short	43443                   //  0xa9b3
	.short	31113                   //  0x7989
	.short	48744                   //  0xbe68
	.short	19502                   //  0x4c2e
	.short	57691                   //  0xe15b
	.short	50253                   //  0xc44d
	.short	38078                   //  0x94be
	.short	59029                   //  0xe695
	.short	16329                   //  0x3fc9
	.short	15693                   //  0x3d4d
	.short	31805                   //  0x7c3d
	.short	14010                   //  0x36ba
	.short	3371                    //  0xd2b
	.short	64962                   //  0xfdc2
	.short	52988                   //  0xcefc
	.short	33889                   //  0x8461
	.short	30481                   //  0x7711
	.short	43980                   //  0xabcc
	.short	16356                   //  0x3fe4
	.short	49493                   //  0xc155
	.short	42152                   //  0xa4a8
	.short	16462                   //  0x404e
	.short	24851                   //  0x6113
	.short	54211                   //  0xd3c3
	.short	25899                   //  0x652b
	.short	57881                   //  0xe219
	.short	5976                    //  0x1758
	.short	53687                   //  0xd1b7
	.short	16369                   //  0x3ff1
	.short	55050                   //  0xd70a
	.short	28835                   //  0x70a3
	.short	2621                    //  0xa3d
	.short	41943                   //  0xa3d7
	.short	15728                   //  0x3d70
	.short	55050                   //  0xd70a
	.short	28835                   //  0x70a3
	.short	2621                    //  0xa3d
	.short	41943                   //  0xa3d7
	.short	16376                   //  0x3ff8
	.short	52429                   //  0xcccd
	.short	52428                   //  0xcccc
	.short	52428                   //  0xcccc
	.short	52428                   //  0xcccc
	.short	52428                   //  0xcccc
	.short	52428                   //  0xcccc
	.short	52428                   //  0xcccc
	.short	52428                   //  0xcccc
	.short	52428                   //  0xcccc
	.short	16379                   //  0x3ffb
	.size	$emtens, 260

	.address_space	0	
	.type	$ezero,@object          //  @ezero
	.p2align	1
$ezero:
	.zero	20
	.size	$ezero, 20

	.address_space	0	
	.type	$.str.4,@object         //  @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str.4:
	.asciz	"E%d"
	.size	$.str.4, 4

	.address_space	0	
	.type	$bmask,@object          //  @bmask
	.section	.rodata.str2.2,"aMS",@progbits,2
	.p2align	1
$bmask:
	.short	65535                   //  0xffff
	.short	65534                   //  0xfffe
	.short	65532                   //  0xfffc
	.short	65528                   //  0xfff8
	.short	65520                   //  0xfff0
	.short	65504                   //  0xffe0
	.short	65472                   //  0xffc0
	.short	65408                   //  0xff80
	.short	65280                   //  0xff00
	.short	65024                   //  0xfe00
	.short	64512                   //  0xfc00
	.short	63488                   //  0xf800
	.short	61440                   //  0xf000
	.short	57344                   //  0xe000
	.short	49152                   //  0xc000
	.short	32768                   //  0x8000
	.short	0                       //  0x0
	.size	$bmask, 34


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
