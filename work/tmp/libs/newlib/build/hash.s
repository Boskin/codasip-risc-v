	.text
	.file	"hash.bc"
	.globl	$__hash_open
	.type	$__hash_open,@function
$__hash_open:                           //  @__hash_open
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -336
$cfi2:
	.cfi_adjust_cfa_offset 336
	sw x1, 332 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 324 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x11
	sw x10, 196 ( x2 )              //  4-byte Folded Spill
	andi x1, x8, 3
	xori x1, x1, 1
	bgtu x1, x0, LBB0_3
LBB0_1:                                 //  %if.then
	call $__errno
	addi x1, x0, 22
	sw x1, 0 ( x10 )
	add x12, x0, x0
	jalr x0, LBB0_70 ( x0 )
LBB0_3:                                 //  %if.end
	sw x12, 188 ( x2 )              //  4-byte Folded Spill
	sw x14, 192 ( x2 )              //  4-byte Folded Spill
	slti x10, x0, 1
	addi x11, x0, 476
	call $calloc
	add x12, x0, x0
	beqz x10, LBB0_70
LBB0_4:                                 //  %if.end3
	not x1, x0
	sw x1, 276 ( x10 )
	sw x10, 200 ( x2 )              //  4-byte Folded Spill
	sw x8, 272 ( x10 )
	lw x1, 196 ( x2 )               //  4-byte Folded Reload
	nop
	beqz x1, LBB0_8
LBB0_5:                                 //  %if.end3
	andi x1, x8, 1024
	bgtu x1, x0, LBB0_8
LBB0_6:                                 //  %lor.lhs.false8
	addi x11, x2, 204
	lw x10, 196 ( x2 )              //  4-byte Folded Reload
	nop
	call $stat
	add x1, x0, x0
	sw x1, 184 ( x2 )               //  4-byte Folded Spill
	beqz x10, LBB0_11
LBB0_7:                                 //  %land.lhs.true
	call $__errno
	lw x1, 0 ( x10 )
	nop
	xori x1, x1, 2
	bgtu x1, x0, LBB0_11
LBB0_8:                                 //  %if.then13
	call $__errno
	lw x1, 0 ( x10 )
	nop
	xori x1, x1, 2
	bgtu x1, x0, LBB0_10
LBB0_9:                                 //  %if.then16
	call $__errno
	sw x0, 0 ( x10 )
LBB0_10:                                //  %if.end19
	slti x1, x0, 1
	sw x1, 184 ( x2 )               //  4-byte Folded Spill
LBB0_11:                                //  %if.end19
	lw x1, 196 ( x2 )               //  4-byte Folded Reload
	nop
	beqz x1, LBB0_28
LBB0_12:                                //  %if.then21
	lw x1, 188 ( x2 )               //  4-byte Folded Reload
	nop
	sw x1, 8 ( x2 )
	sw x8, 4 ( x2 )
	lw x1, 196 ( x2 )               //  4-byte Folded Reload
	nop
	sw x1, 0 ( x2 )
	call $open
	xori x1, x10, -1
	lw x3, 200 ( x2 )               //  4-byte Folded Reload
	nop
	sw x10, 276 ( x3 )
	bgtu x1, x0, LBB0_14
LBB0_13:                                //  %if.then25
	call $__errno
	lw x8, 0 ( x10 )
	lw x10, 200 ( x2 )              //  4-byte Folded Reload
	jalr x0, LBB0_38 ( x0 )
LBB0_14:                                //  %if.end27
	andi x1, x8, 512
	beqz x1, LBB0_28
LBB0_15:                                //  %land.lhs.true30
	addi x11, x2, 204
	call $fstat
	bgtu x10, x0, LBB0_28
LBB0_16:                                //  %land.lhs.true34
	lw x1, 184 ( x2 )               //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB0_29
LBB0_17:                                //  %land.lhs.true34
	lw x1, 220 ( x2 )
	nop
	beqz x1, LBB0_29
LBB0_18:                                //  %if.else
	lw x11, 200 ( x2 )              //  4-byte Folded Reload
	lw x1, 192 ( x2 )               //  4-byte Folded Reload
	nop
	beqz x1, LBB0_20
LBB0_19:                                //  %land.lhs.true47
	lw x1, 16 ( x1 )
	nop
	bgtu x1, x0, LBB0_21
LBB0_20:                                //  %if.else52
	ori x28, x0, $__default_hash & 0xfff
	slli x28, x28, 20
	lui x1, $__default_hash >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x1, 0 ( x1 )
	nop
LBB0_21:                                //  %if.end54
	sw x1, 268 ( x11 )
	lw x10, 276 ( x11 )
	addi x12, x0, 260
	call $read
	sw x10, 188 ( x2 )              //  4-byte Folded Spill
	lw x1, 200 ( x2 )               //  4-byte Folded Reload
	nop
	lw x21, 0 ( x1 )
	lw x20, 4 ( x1 )
	lw x19, 8 ( x1 )
	lw x18, 12 ( x1 )
	lw x17, 16 ( x1 )
	lw x16, 20 ( x1 )
	lw x15, 24 ( x1 )
	lw x14, 28 ( x1 )
	lw x13, 32 ( x1 )
	lw x12, 36 ( x1 )
	lw x11, 40 ( x1 )
	lw x9, 44 ( x1 )
	lw x7, 48 ( x1 )
	lw x5, 52 ( x1 )
	lw x4, 56 ( x1 )
	lw x3, 60 ( x1 )
	lw x1, 64 ( x1 )
	srli x10, x21, 24
	srli x22, x21, 16
	srli x23, x21, 8
	srli x24, x20, 24
	srli x25, x20, 16
	srli x26, x20, 8
	srli x27, x19, 24
	srli x29, x19, 16
	srli x30, x19, 8
	srli x31, x18, 24
	sw x31, 24 ( x2 )               //  4-byte Folded Spill
	srli x8, x18, 16
	srli x31, x18, 8
	sw x31, 20 ( x2 )               //  4-byte Folded Spill
	srli x31, x17, 24
	sw x31, 36 ( x2 )               //  4-byte Folded Spill
	srli x31, x17, 16
	sw x31, 32 ( x2 )               //  4-byte Folded Spill
	srli x31, x17, 8
	sw x31, 28 ( x2 )               //  4-byte Folded Spill
	srli x31, x16, 24
	sw x31, 48 ( x2 )               //  4-byte Folded Spill
	srli x31, x16, 16
	sw x31, 44 ( x2 )               //  4-byte Folded Spill
	srli x31, x16, 8
	sw x31, 40 ( x2 )               //  4-byte Folded Spill
	srli x31, x15, 24
	sw x31, 60 ( x2 )               //  4-byte Folded Spill
	srli x31, x15, 16
	sw x31, 56 ( x2 )               //  4-byte Folded Spill
	srli x31, x15, 8
	sw x31, 52 ( x2 )               //  4-byte Folded Spill
	srli x31, x14, 24
	sw x31, 72 ( x2 )               //  4-byte Folded Spill
	srli x31, x14, 16
	sw x31, 68 ( x2 )               //  4-byte Folded Spill
	srli x31, x14, 8
	sw x31, 64 ( x2 )               //  4-byte Folded Spill
	srli x31, x13, 24
	sw x31, 84 ( x2 )               //  4-byte Folded Spill
	srli x31, x13, 16
	sw x31, 80 ( x2 )               //  4-byte Folded Spill
	srli x31, x13, 8
	sw x31, 76 ( x2 )               //  4-byte Folded Spill
	srli x31, x12, 24
	sw x31, 96 ( x2 )               //  4-byte Folded Spill
	srli x31, x12, 16
	sw x31, 92 ( x2 )               //  4-byte Folded Spill
	srli x31, x12, 8
	sw x31, 88 ( x2 )               //  4-byte Folded Spill
	srli x31, x11, 24
	sw x31, 108 ( x2 )              //  4-byte Folded Spill
	srli x31, x11, 16
	sw x31, 104 ( x2 )              //  4-byte Folded Spill
	srli x31, x11, 8
	sw x31, 100 ( x2 )              //  4-byte Folded Spill
	srli x31, x9, 24
	sw x31, 120 ( x2 )              //  4-byte Folded Spill
	srli x31, x9, 16
	sw x31, 116 ( x2 )              //  4-byte Folded Spill
	srli x31, x9, 8
	sw x31, 112 ( x2 )              //  4-byte Folded Spill
	srli x31, x7, 24
	sw x31, 132 ( x2 )              //  4-byte Folded Spill
	srli x31, x7, 16
	sw x31, 128 ( x2 )              //  4-byte Folded Spill
	srli x31, x7, 8
	sw x31, 124 ( x2 )              //  4-byte Folded Spill
	srli x31, x5, 24
	sw x31, 144 ( x2 )              //  4-byte Folded Spill
	srli x31, x5, 16
	sw x31, 140 ( x2 )              //  4-byte Folded Spill
	srli x31, x5, 8
	sw x31, 136 ( x2 )              //  4-byte Folded Spill
	srli x31, x4, 24
	sw x31, 156 ( x2 )              //  4-byte Folded Spill
	srli x31, x4, 16
	sw x31, 152 ( x2 )              //  4-byte Folded Spill
	srli x31, x4, 8
	sw x31, 148 ( x2 )              //  4-byte Folded Spill
	srli x31, x3, 24
	sw x31, 168 ( x2 )              //  4-byte Folded Spill
	srli x31, x3, 16
	sw x31, 164 ( x2 )              //  4-byte Folded Spill
	srli x31, x3, 8
	sw x31, 160 ( x2 )              //  4-byte Folded Spill
	srli x31, x1, 24
	sw x31, 180 ( x2 )              //  4-byte Folded Spill
	srli x31, x1, 16
	sw x31, 176 ( x2 )              //  4-byte Folded Spill
	srli x31, x1, 8
	sw x31, 172 ( x2 )              //  4-byte Folded Spill
	lw x31, 200 ( x2 )              //  4-byte Folded Reload
	nop
	sb x10, 0 ( x31 )
	lw x10, 200 ( x2 )              //  4-byte Folded Reload
	nop
	sb x22, 1 ( x10 )
	lw x10, 200 ( x2 )              //  4-byte Folded Reload
	nop
	sb x23, 2 ( x10 )
	lw x10, 200 ( x2 )              //  4-byte Folded Reload
	nop
	sb x21, 3 ( x10 )
	lw x10, 200 ( x2 )              //  4-byte Folded Reload
	nop
	sb x24, 4 ( x10 )
	lw x10, 200 ( x2 )              //  4-byte Folded Reload
	nop
	sb x25, 5 ( x10 )
	lw x10, 200 ( x2 )              //  4-byte Folded Reload
	nop
	sb x26, 6 ( x10 )
	lw x10, 200 ( x2 )              //  4-byte Folded Reload
	nop
	sb x20, 7 ( x10 )
	lw x10, 200 ( x2 )              //  4-byte Folded Reload
	nop
	sb x27, 8 ( x10 )
	lw x10, 200 ( x2 )              //  4-byte Folded Reload
	nop
	sb x29, 9 ( x10 )
	lw x10, 200 ( x2 )              //  4-byte Folded Reload
	nop
	sb x30, 10 ( x10 )
	lw x10, 200 ( x2 )              //  4-byte Folded Reload
	nop
	sb x19, 11 ( x10 )
	lw x10, 200 ( x2 )              //  4-byte Folded Reload
	lw x19, 24 ( x2 )               //  4-byte Folded Reload
	nop
	sb x19, 12 ( x10 )
	lw x10, 200 ( x2 )              //  4-byte Folded Reload
	nop
	sb x8, 13 ( x10 )
	lw x10, 200 ( x2 )              //  4-byte Folded Reload
	lw x19, 20 ( x2 )               //  4-byte Folded Reload
	nop
	sb x19, 14 ( x10 )
	lw x10, 200 ( x2 )              //  4-byte Folded Reload
	nop
	sb x18, 15 ( x10 )
	lw x10, 200 ( x2 )              //  4-byte Folded Reload
	lw x18, 36 ( x2 )               //  4-byte Folded Reload
	nop
	sb x18, 16 ( x10 )
	lw x10, 200 ( x2 )              //  4-byte Folded Reload
	lw x18, 32 ( x2 )               //  4-byte Folded Reload
	nop
	sb x18, 17 ( x10 )
	lw x10, 200 ( x2 )              //  4-byte Folded Reload
	lw x18, 28 ( x2 )               //  4-byte Folded Reload
	nop
	sb x18, 18 ( x10 )
	lw x10, 200 ( x2 )              //  4-byte Folded Reload
	nop
	sb x17, 19 ( x10 )
	lw x10, 200 ( x2 )              //  4-byte Folded Reload
	lw x17, 48 ( x2 )               //  4-byte Folded Reload
	nop
	sb x17, 20 ( x10 )
	lw x10, 200 ( x2 )              //  4-byte Folded Reload
	lw x17, 44 ( x2 )               //  4-byte Folded Reload
	nop
	sb x17, 21 ( x10 )
	lw x10, 200 ( x2 )              //  4-byte Folded Reload
	lw x17, 40 ( x2 )               //  4-byte Folded Reload
	nop
	sb x17, 22 ( x10 )
	lw x10, 200 ( x2 )              //  4-byte Folded Reload
	nop
	sb x16, 23 ( x10 )
	lw x10, 200 ( x2 )              //  4-byte Folded Reload
	lw x16, 60 ( x2 )               //  4-byte Folded Reload
	nop
	sb x16, 24 ( x10 )
	lw x10, 200 ( x2 )              //  4-byte Folded Reload
	lw x16, 56 ( x2 )               //  4-byte Folded Reload
	nop
	sb x16, 25 ( x10 )
	lw x10, 200 ( x2 )              //  4-byte Folded Reload
	lw x16, 52 ( x2 )               //  4-byte Folded Reload
	nop
	sb x16, 26 ( x10 )
	lw x10, 200 ( x2 )              //  4-byte Folded Reload
	nop
	sb x15, 27 ( x10 )
	lw x10, 200 ( x2 )              //  4-byte Folded Reload
	lw x15, 72 ( x2 )               //  4-byte Folded Reload
	nop
	sb x15, 28 ( x10 )
	lw x10, 200 ( x2 )              //  4-byte Folded Reload
	lw x15, 68 ( x2 )               //  4-byte Folded Reload
	nop
	sb x15, 29 ( x10 )
	lw x10, 200 ( x2 )              //  4-byte Folded Reload
	lw x15, 64 ( x2 )               //  4-byte Folded Reload
	nop
	sb x15, 30 ( x10 )
	lw x10, 200 ( x2 )              //  4-byte Folded Reload
	nop
	sb x14, 31 ( x10 )
	lw x10, 200 ( x2 )              //  4-byte Folded Reload
	lw x14, 84 ( x2 )               //  4-byte Folded Reload
	nop
	sb x14, 32 ( x10 )
	lw x10, 200 ( x2 )              //  4-byte Folded Reload
	lw x14, 80 ( x2 )               //  4-byte Folded Reload
	nop
	sb x14, 33 ( x10 )
	lw x10, 200 ( x2 )              //  4-byte Folded Reload
	lw x14, 76 ( x2 )               //  4-byte Folded Reload
	nop
	sb x14, 34 ( x10 )
	lw x10, 200 ( x2 )              //  4-byte Folded Reload
	nop
	sb x13, 35 ( x10 )
	lw x13, 200 ( x2 )              //  4-byte Folded Reload
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	nop
	sb x10, 36 ( x13 )
	lw x10, 92 ( x2 )               //  4-byte Folded Reload
	nop
	sb x10, 37 ( x13 )
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	nop
	sb x10, 38 ( x13 )
	sb x12, 39 ( x13 )
	lw x10, 108 ( x2 )              //  4-byte Folded Reload
	nop
	sb x10, 40 ( x13 )
	lw x10, 104 ( x2 )              //  4-byte Folded Reload
	nop
	sb x10, 41 ( x13 )
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	nop
	sb x10, 42 ( x13 )
	sb x11, 43 ( x13 )
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	nop
	sb x10, 44 ( x13 )
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	nop
	sb x10, 45 ( x13 )
	lw x10, 112 ( x2 )              //  4-byte Folded Reload
	nop
	sb x10, 46 ( x13 )
	sb x9, 47 ( x13 )
	lw x9, 132 ( x2 )               //  4-byte Folded Reload
	nop
	sb x9, 48 ( x13 )
	lw x9, 128 ( x2 )               //  4-byte Folded Reload
	nop
	sb x9, 49 ( x13 )
	lw x9, 124 ( x2 )               //  4-byte Folded Reload
	nop
	sb x9, 50 ( x13 )
	sb x7, 51 ( x13 )
	lw x7, 144 ( x2 )               //  4-byte Folded Reload
	nop
	sb x7, 52 ( x13 )
	lw x7, 140 ( x2 )               //  4-byte Folded Reload
	nop
	sb x7, 53 ( x13 )
	lw x7, 136 ( x2 )               //  4-byte Folded Reload
	nop
	sb x7, 54 ( x13 )
	sb x5, 55 ( x13 )
	lw x5, 156 ( x2 )               //  4-byte Folded Reload
	nop
	sb x5, 56 ( x13 )
	lw x5, 152 ( x2 )               //  4-byte Folded Reload
	nop
	sb x5, 57 ( x13 )
	lw x5, 148 ( x2 )               //  4-byte Folded Reload
	nop
	sb x5, 58 ( x13 )
	sb x4, 59 ( x13 )
	lw x4, 168 ( x2 )               //  4-byte Folded Reload
	nop
	sb x4, 60 ( x13 )
	lw x4, 164 ( x2 )               //  4-byte Folded Reload
	nop
	sb x4, 61 ( x13 )
	lw x4, 160 ( x2 )               //  4-byte Folded Reload
	nop
	sb x4, 62 ( x13 )
	sb x3, 63 ( x13 )
	lw x3, 180 ( x2 )               //  4-byte Folded Reload
	nop
	sb x3, 64 ( x13 )
	lw x3, 176 ( x2 )               //  4-byte Folded Reload
	nop
	sb x3, 65 ( x13 )
	lw x3, 172 ( x2 )               //  4-byte Folded Reload
	nop
	sb x3, 66 ( x13 )
	sb x1, 67 ( x13 )
	add x1, x0, x0
	add x3, x0, x1
LBB0_22:                                //  %for.body.i
                                        //  =>This Inner Loop Header: Depth=1
	add x4, x1, x13
	lw x5, 68 ( x4 )
	add x7, x3, x13
	addi x1, x1, 4
	xori x9, x1, 128
	srli x10, x5, 24
	srli x11, x5, 16
	srli x12, x5, 8
	sb x10, 68 ( x4 )
	sb x11, 69 ( x4 )
	sb x12, 70 ( x4 )
	sb x5, 71 ( x4 )
	lh x4, 196 ( x7 )
	addi x3, x3, 2
	srli x5, x4, 8
	sb x5, 196 ( x7 )
	sb x4, 197 ( x7 )
	bgtu x9, x0, LBB0_22
LBB0_23:                                //  %swap_header.exit
	lw x3, 188 ( x2 )               //  4-byte Folded Reload
	nop
	xori x1, x3, 260
	addi x8, x0, 79
	beqz x1, LBB0_56
LBB0_24:                                //  %swap_header.exit
	xori x1, x3, -1
	bgtu x1, x0, LBB0_26
LBB0_25:                                //  %if.then58
	call $__errno
	lw x13, 200 ( x2 )              //  4-byte Folded Reload
	lw x8, 0 ( x10 )
LBB0_26:                                //  %if.then121
	lw x10, 276 ( x13 )
	nop
	call $close
	lw x10, 200 ( x2 )              //  4-byte Folded Reload
	jalr x0, LBB0_38 ( x0 )
LBB0_28:                                //  %if.end38
	lw x1, 184 ( x2 )               //  4-byte Folded Reload
	nop
	beqz x1, LBB0_18
LBB0_29:                                //  %if.then40
	ori x28, x0, $__default_hash & 0xfff
	slli x28, x28, 20
	lui x1, $__default_hash >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	addi x3, x0, 256
	addi x4, x0, 1234
	lui x5, 4096>>12 
	addi x7, x0, 12
	addi x9, x0, 8
	lui x10, 65536>>12 
	lw x1, 0 ( x1 )
	lw x8, 200 ( x2 )               //  4-byte Folded Reload
	nop
	sw x0, 56 ( x8 )
	sw x4, 8 ( x8 )
	sw x5, 12 ( x8 )
	sw x7, 16 ( x8 )
	sw x3, 24 ( x8 )
	sw x9, 28 ( x8 )
	sw x3, 20 ( x8 )
	sw x10, 52 ( x8 )
	sw x1, 268 ( x8 )
	addi x10, x8, 68
	add x11, x0, x0
	addi x12, x0, 128
	sw x10, 188 ( x2 )              //  4-byte Folded Spill
	call $memset
	addi x10, x8, 196
	addi x12, x0, 64
	add x11, x0, x0
	call $memset
	lw x1, 196 ( x2 )               //  4-byte Folded Reload
	nop
	beqz x1, LBB0_32
LBB0_30:                                //  %if.then.i
	addi x11, x2, 264
	lw x10, 196 ( x2 )              //  4-byte Folded Reload
	nop
	call $stat
	bgtu x10, x0, LBB0_37
LBB0_31:                                //  %if.end.i
	lw x10, 308 ( x2 )
	lw x8, 200 ( x2 )               //  4-byte Folded Reload
	nop
	sw x10, 12 ( x8 )
	call $__log2
	sw x10, 16 ( x8 )
LBB0_32:                                //  %if.end21.i
	lw x7, 192 ( x2 )               //  4-byte Folded Reload
	nop
	bgtu x7, x0, LBB0_34
LBB0_33:
	slti x1, x0, 1
	lw x5, 200 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_50 ( x0 )
LBB0_34:                                //  %if.then23.i
	lw x10, 0 ( x7 )
	nop
	beqz x10, LBB0_40
LBB0_35:                                //  %if.then26.i
	call $__log2
	lw x7, 192 ( x2 )               //  4-byte Folded Reload
	ori x28, x0, 65537 & 0xfff
	slli x28, x28, 20
	slti x1, x0, 1
	lui x3, 65537 >> 12 & 0xfffff
	srli x28, x28, 20
	sll x1, x1, x10
	or x3, x3, x28
	lw x4, 200 ( x2 )               //  4-byte Folded Reload
	nop
	sw x10, 16 ( x4 )
	sw x1, 12 ( x4 )
	bgt x3, x1, LBB0_40
LBB0_36:                                //  %if.then38.i
	call $__errno
	addi x1, x0, 22
	sw x1, 0 ( x10 )
LBB0_37:                                //  %error1
	call $__errno
	lw x8, 0 ( x10 )
	add x10, x0, x0
LBB0_38:                                //  %error0
	call $free
	call $__errno
	sw x8, 0 ( x10 )
LBB0_39:                                //  %cleanup
	add x12, x0, x0
	jalr x0, LBB0_70 ( x0 )
LBB0_40:                                //  %if.end41.i
	lw x1, 4 ( x7 )
	lw x5, 200 ( x2 )               //  4-byte Folded Reload
	beqz x1, LBB0_42
LBB0_41:                                //  %if.then44.i
	sw x1, 52 ( x5 )
LBB0_42:                                //  %if.end48.i
	lw x1, 16 ( x7 )
	nop
	beqz x1, LBB0_44
LBB0_43:                                //  %if.then51.i
	sw x1, 268 ( x5 )
LBB0_44:                                //  %if.end54.i
	lw x1, 8 ( x7 )
	add x3, x0, x0
	bne x1, x3, LBB0_46
LBB0_45:
	slti x1, x0, 1
LBB0_46:                                //  %if.end54.i
	lw x3, 20 ( x7 )
	nop
	beqz x3, LBB0_50
LBB0_47:                                //  %if.end54.i
	xori x4, x3, 1234
	beqz x4, LBB0_49
LBB0_48:                                //  %if.end54.i
	lui x4, 4321 >> 12 & 0xfffff
	ori x28, x0, 4321 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x4, x28
	bne x3, x4, LBB0_36
LBB0_49:                                //  %if.end69.i
	sw x3, 8 ( x5 )
LBB0_50:                                //  %if.end74.i
	lw x11, 52 ( x5 )
	addi x10, x1, -1
	call $__divsi3
	addi x10, x10, 1
	addi x1, x0, 2
	bgt x10, x1, LBB0_52
LBB0_51:                                //  %if.end74.i
	add x10, x0, x1
LBB0_52:                                //  %if.end74.i
	call $__log2
	add x8, x0, x10
	slli x1, x8, 2
	lw x3, 188 ( x2 )               //  4-byte Folded Reload
	nop
	add x1, x1, x3
	addi x12, x8, 1
	sw x12, 0 ( x1 )
	slli x1, x12, 2
	add x1, x1, x3
	sw x12, 0 ( x1 )
	lw x10, 200 ( x2 )              //  4-byte Folded Reload
	nop
	sw x8, 32 ( x10 )
	addi x1, x0, 2
	sw x1, 36 ( x10 )
	slli x1, x8, 11
	ori x11, x1, 1
	add x13, x0, x0
	call $__ibitmap
	bgtu x10, x0, LBB0_37
LBB0_53:                                //  %if.end.i.i
	slti x1, x0, 1
	sll x1, x1, x8
	slli x3, x1, 1
	addi x10, x1, -1
	addi x1, x3, -1
	lw x8, 200 ( x2 )               //  4-byte Folded Reload
	nop
	sw x10, 48 ( x8 )
	sw x10, 40 ( x8 )
	sw x1, 44 ( x8 )
	lw x1, 16 ( x8 )
	addi x3, x0, 511
	srl x1, x3, x1
	addi x1, x1, 1
	sw x1, 60 ( x8 )
	lw x11, 24 ( x8 )
	nop
	call $__divsi3
	addi x10, x10, 1
	call $__log2
	add x3, x0, x8
	lw x1, 20 ( x3 )
	slti x4, x0, 1
	sw x4, 184 ( x2 )               //  4-byte Folded Spill
	sll x11, x4, x10
	ble x11, x1, LBB0_55
LBB0_54:                                //  %if.then31.i.i
	sw x11, 20 ( x3 )
LBB0_55:                                //  %if.end34.i.i
	add x10, x0, x3
	call $alloc_segs
	bgtu x10, x0, LBB0_37
	jalr x0, LBB0_61 ( x0 )
LBB0_56:                                //  %if.end63
	ori x28, x0, 398689 & 0xfff
	lw x1, 0 ( x13 )
	slli x28, x28, 20
	lui x3, 398689 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	bne x1, x3, LBB0_26
LBB0_57:                                //  %if.end67
	lw x1, 4 ( x13 )
	slti x3, x0, 1
	addi x1, x1, -1
	bgtu x1, x3, LBB0_26
LBB0_58:                                //  %if.end75
	lw x1, 268 ( x13 )
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x3, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x3, x28
	addi x11, x0, 12
	call_reg x1
	lw x13, 200 ( x2 )              //  4-byte Folded Reload
	nop
	lw x1, 64 ( x13 )
	nop
	bne x10, x1, LBB0_26
LBB0_59:                                //  %if.end81
	lw x11, 24 ( x13 )
	lw x1, 40 ( x13 )
	sw x0, 260 ( x13 )
	add x10, x1, x11
	add x8, x0, x13
	call $__divsi3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $alloc_segs
	bgtu x10, x0, LBB0_39
LBB0_60:                                //  %if.end91
	lw x1, 32 ( x8 )
	lw x3, 12 ( x8 )
	lw x4, 16 ( x8 )
	addi x10, x8, 312
	slli x1, x1, 2
	add x1, x1, x8
	lw x1, 68 ( x1 )
	slli x3, x3, 3
	addi x4, x4, 3
	add x1, x3, x1
	addi x1, x1, -1
	sra x1, x1, x4
	slli x12, x1, 2
	sw x1, 440 ( x8 )
	add x11, x0, x0
	call $memset
LBB0_61:                                //  %if.end101
	lw x1, 192 ( x2 )               //  4-byte Folded Reload
	nop
	beqz x1, LBB0_63
LBB0_62:                                //  %land.lhs.true103
	lw x11, 12 ( x1 )
	nop
	bgtu x11, x0, LBB0_64
LBB0_63:                                //  %if.else107
	lui x11, 65536>>12 
LBB0_64:                                //  %if.end108
	lw x8, 200 ( x2 )               //  4-byte Folded Reload
	nop
	add x10, x0, x8
	call $__buf_init
	lw x1, 184 ( x2 )               //  4-byte Folded Reload
	nop
	sw x1, 304 ( x8 )
	lw x1, 196 ( x2 )               //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB0_66
LBB0_65:
	add x1, x0, x0
	jalr x0, LBB0_67 ( x0 )
LBB0_66:                                //  %land.rhs
	lbu x1, 272 ( x8 )
	nop
	andi x1, x1, 2
	srli x1, x1, 1
LBB0_67:                                //  %land.end
	sw x1, 308 ( x8 )
	not x1, x0
	sw x1, 292 ( x8 )
	addi x10, x0, 36
	call $malloc
	add x12, x0, x10
	bgtu x12, x0, LBB0_69
LBB0_68:                                //  %if.then115
	call $__errno
	lw x1, 0 ( x10 )
	nop
	sw x1, 196 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	call $hdestroy
	call $__errno
	lw x1, 196 ( x2 )               //  4-byte Folded Reload
	nop
	sw x1, 0 ( x10 )
	add x12, x0, x0
	jalr x0, LBB0_70 ( x0 )
LBB0_69:                                //  %if.end119
	ori x28, x0, $hash_close & 0xfff
	slli x28, x28, 20
	lui x1, $hash_close >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $hash_delete & 0xfff
	slli x28, x28, 20
	lui x3, $hash_delete >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	ori x28, x0, $hash_fd & 0xfff
	slli x28, x28, 20
	lui x4, $hash_fd >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	ori x28, x0, $hash_get & 0xfff
	slli x28, x28, 20
	lui x5, $hash_get >> 12 & 0xfffff
	srli x28, x28, 20
	or x5, x5, x28
	ori x28, x0, $hash_put & 0xfff
	slli x28, x28, 20
	lui x7, $hash_put >> 12 & 0xfffff
	srli x28, x28, 20
	or x7, x7, x28
	ori x28, x0, $hash_seq & 0xfff
	slli x28, x28, 20
	lui x9, $hash_seq >> 12 & 0xfffff
	srli x28, x28, 20
	or x9, x9, x28
	ori x28, x0, $hash_sync & 0xfff
	slli x28, x28, 20
	lui x10, $hash_sync >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x10, x28
	slti x11, x0, 1
	sw x8, 28 ( x12 )
	sw x1, 4 ( x12 )
	sw x3, 8 ( x12 )
	sw x4, 32 ( x12 )
	sw x5, 12 ( x12 )
	sw x7, 16 ( x12 )
	sw x9, 20 ( x12 )
	sw x10, 24 ( x12 )
	sw x11, 0 ( x12 )
LBB0_70:                                //  %cleanup
	add x10, x0, x12
	lw x8, 324 ( x2 )               //  4-byte Folded Reload
	lw x1, 332 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 336
$cfi5:
	.cfi_adjust_cfa_offset -336
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$__hash_open, ($func_end0)-($__hash_open)
	.cfi_endproc

	.type	$alloc_segs,@function
$alloc_segs:                            //  @alloc_segs
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	addi x2, x2, -24
$cfi9:
	.cfi_adjust_cfa_offset 24
	sw x1, 20 ( x2 )
$cfi10:
	.cfi_offset 1, -4
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x10
	lw x10, 20 ( x8 )
	addi x11, x0, 4
	call $calloc
	sw x10, 472 ( x8 )
	bgtu x10, x0, LBB1_2
LBB1_1:                                 //  %if.then
	call $__errno
	lw x1, 0 ( x10 )
	add x10, x0, x8
	add x8, x0, x1
	call $hdestroy
	call $__errno
	sw x8, 0 ( x10 )
	not x10, x0
	jalr x0, LBB1_8 ( x0 )
LBB1_2:                                 //  %if.end
	lw x1, 28 ( x8 )
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sll x10, x3, x1
	addi x11, x0, 4
	call $calloc
	beqz x10, LBB1_1
LBB1_3:                                 //  %for.cond.preheader
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	nop
	ble x11, x0, LBB1_7
LBB1_4:                                 //  %for.body.lr.ph
	add x3, x0, x0
	lw x1, 260 ( x8 )
	lw x4, 28 ( x8 )
	add x5, x0, x3
LBB1_5:                                 //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x7, 472 ( x8 )
	sll x9, x5, x4
	slli x9, x9, 2
	add x9, x9, x10
	add x7, x3, x7
	addi x5, x5, 1
	sw x9, 0 ( x7 )
	addi x3, x3, 4
	bne x11, x5, LBB1_5
LBB1_6:                                 //  %for.cond.cleanup.loopexit_crit_edge
	add x1, x11, x1
	sw x1, 260 ( x8 )
LBB1_7:                                 //  %cleanup
	add x10, x0, x0
LBB1_8:                                 //  %cleanup
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	lw x1, 20 ( x2 )
$cfi11:
	.cfi_same_value 1
	addi x2, x2, 24
$cfi12:
	.cfi_adjust_cfa_offset -24
$cfi13:
	.cfi_def_cfa 2, 0
	ret
$func_end1:
	.size	$alloc_segs, ($func_end1)-($alloc_segs)
	.cfi_endproc

	.type	$hdestroy,@function
$hdestroy:                              //  @hdestroy
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi14:
	.cfi_def_cfa 2, 0
$cfi15:
	.cfi_val_offset 2, 0
	addi x2, x2, -32
$cfi16:
	.cfi_adjust_cfa_offset 32
	sw x1, 28 ( x2 )
$cfi17:
	.cfi_offset 1, -4
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x10
	lw x12, 308 ( x8 )
	slti x11, x0, 1
	call $__buf_free
	bgtu x10, x0, LBB2_2
LBB2_1:
	add x1, x0, x0
	jalr x0, LBB2_3 ( x0 )
LBB2_2:                                 //  %if.then
	call $__errno
	lw x1, 0 ( x10 )
	nop
LBB2_3:                                 //  %if.end
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	lw x1, 472 ( x8 )
	nop
	bgtu x1, x0, LBB2_5
	jalr x0, LBB2_7 ( x0 )
LBB2_4:                                 //  %while.body
                                        //    in Loop: Header=BB2_5 Depth=1
	lw x1, 260 ( x8 )
	nop
	addi x1, x1, -1
	slli x3, x1, 2
	sw x1, 260 ( x8 )
	add x1, x3, x10
LBB2_5:                                 //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, 0 ( x1 )
	nop
	call $free
	lw x1, 264 ( x8 )
	nop
	addi x3, x1, -1
	sw x3, 264 ( x8 )
	lw x10, 472 ( x8 )
	bgtu x1, x0, LBB2_4
LBB2_6:                                 //  %while.end
	call $free
LBB2_7:                                 //  %if.end9
	add x10, x0, x8
	call $flush_meta
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB2_10
LBB2_8:                                 //  %if.end9
	beqz x10, LBB2_10
LBB2_9:                                 //  %if.then13
	call $__errno
	lw x1, 0 ( x10 )
	nop
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
LBB2_10:                                //  %if.end15
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	lw x1, 440 ( x8 )
	nop
	ble x1, x0, LBB2_15
LBB2_11:                                //  %for.body.preheader
	add x4, x0, x0
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	nop
	addi x8, x3, 312
LBB2_12:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x10, 0 ( x8 )
	nop
	beqz x10, LBB2_14
LBB2_13:                                //  %if.then18
                                        //    in Loop: Header=BB2_12 Depth=1
	sw x4, 16 ( x2 )                //  4-byte Folded Spill
	call $free
	lw x4, 16 ( x2 )                //  4-byte Folded Reload
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 440 ( x1 )
LBB2_14:                                //  %for.inc
                                        //    in Loop: Header=BB2_12 Depth=1
	addi x4, x4, 1
	addi x8, x8, 4
	bgt x1, x4, LBB2_12
LBB2_15:                                //  %for.end
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	nop
	lw x10, 276 ( x8 )
	nop
	xori x1, x10, -1
	beqz x1, LBB2_17
LBB2_16:                                //  %if.then23
	call $close
LBB2_17:                                //  %if.end26
	add x10, x0, x8
	call $free
	lw x8, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	bgtu x8, x0, LBB2_19
LBB2_18:
	add x10, x0, x0
	jalr x0, LBB2_20 ( x0 )
LBB2_19:                                //  %if.then28
	call $__errno
	sw x8, 0 ( x10 )
	not x10, x0
LBB2_20:                                //  %cleanup
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	lw x1, 28 ( x2 )
$cfi18:
	.cfi_same_value 1
	addi x2, x2, 32
$cfi19:
	.cfi_adjust_cfa_offset -32
$cfi20:
	.cfi_def_cfa 2, 0
	ret
$func_end2:
	.size	$hdestroy, ($func_end2)-($hdestroy)
	.cfi_endproc

	.type	$hash_close,@function
$hash_close:                            //  @hash_close
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi21:
	.cfi_def_cfa 2, 0
$cfi22:
	.cfi_val_offset 2, 0
	addi x2, x2, -24
$cfi23:
	.cfi_adjust_cfa_offset 24
	sw x1, 20 ( x2 )
$cfi24:
	.cfi_offset 1, -4
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x10
	bgtu x8, x0, LBB3_2
LBB3_1:
	not x10, x0
	jalr x0, LBB3_3 ( x0 )
LBB3_2:                                 //  %if.end
	lw x10, 28 ( x8 )
	nop
	call $hdestroy
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	call $free
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
LBB3_3:                                 //  %cleanup
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	lw x1, 20 ( x2 )
$cfi25:
	.cfi_same_value 1
	addi x2, x2, 24
$cfi26:
	.cfi_adjust_cfa_offset -24
$cfi27:
	.cfi_def_cfa 2, 0
	ret
$func_end3:
	.size	$hash_close, ($func_end3)-($hash_close)
	.cfi_endproc

	.type	$hash_delete,@function
$hash_delete:                           //  @hash_delete
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi28:
	.cfi_def_cfa 2, 0
$cfi29:
	.cfi_val_offset 2, 0
	addi x2, x2, -16
$cfi30:
	.cfi_adjust_cfa_offset 16
	sw x1, 12 ( x2 )
$cfi31:
	.cfi_offset 1, -4
	sw x8, 4 ( x2 )                 //  4-byte Folded Spill
	add x1, x0, x11
	sltiu x3, x12, 2
	lw x8, 28 ( x10 )
	bgtu x3, x0, LBB4_3
LBB4_1:                                 //  %if.then
	call $__errno
	addi x1, x0, 22
LBB4_2:                                 //  %cleanup
	sw x1, 0 ( x10 )
	sw x1, 300 ( x8 )
	not x10, x0
	jalr x0, LBB4_6 ( x0 )
LBB4_3:                                 //  %if.end
	lbu x3, 272 ( x8 )
	nop
	andi x3, x3, 3
	bgtu x3, x0, LBB4_5
LBB4_4:                                 //  %if.then2
	call $__errno
	slti x1, x0, 1
	jalr x0, LBB4_2 ( x0 )
LBB4_5:                                 //  %if.end5
	addi x11, x0, 3
	add x13, x0, x0
	add x10, x0, x8
	add x12, x0, x1
	call $hash_access
LBB4_6:                                 //  %cleanup
	lw x8, 4 ( x2 )                 //  4-byte Folded Reload
	lw x1, 12 ( x2 )
$cfi32:
	.cfi_same_value 1
	addi x2, x2, 16
$cfi33:
	.cfi_adjust_cfa_offset -16
$cfi34:
	.cfi_def_cfa 2, 0
	ret
$func_end4:
	.size	$hash_delete, ($func_end4)-($hash_delete)
	.cfi_endproc

	.type	$hash_fd,@function
$hash_fd:                               //  @hash_fd
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi35:
	.cfi_def_cfa 2, 0
$cfi36:
	.cfi_val_offset 2, 0
	addi x2, x2, -16
$cfi37:
	.cfi_adjust_cfa_offset 16
	sw x1, 12 ( x2 )
$cfi38:
	.cfi_offset 1, -4
	sw x8, 4 ( x2 )                 //  4-byte Folded Spill
	not x8, x0
	beqz x10, LBB5_3
LBB5_1:                                 //  %if.end
	lw x1, 28 ( x10 )
	nop
	lw x10, 276 ( x1 )
	nop
	xori x1, x10, -1
	bgtu x1, x0, LBB5_4
LBB5_2:                                 //  %if.then1
	call $__errno
	addi x1, x0, 2
	sw x1, 0 ( x10 )
LBB5_3:                                 //  %cleanup
	add x10, x0, x8
LBB5_4:                                 //  %cleanup
	lw x8, 4 ( x2 )                 //  4-byte Folded Reload
	lw x1, 12 ( x2 )
$cfi39:
	.cfi_same_value 1
	addi x2, x2, 16
$cfi40:
	.cfi_adjust_cfa_offset -16
$cfi41:
	.cfi_def_cfa 2, 0
	ret
$func_end5:
	.size	$hash_fd, ($func_end5)-($hash_fd)
	.cfi_endproc

	.type	$hash_get,@function
$hash_get:                              //  @hash_get
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi42:
	.cfi_def_cfa 2, 0
$cfi43:
	.cfi_val_offset 2, 0
	addi x2, x2, -16
$cfi44:
	.cfi_adjust_cfa_offset 16
	sw x1, 12 ( x2 )
$cfi45:
	.cfi_offset 1, -4
	sw x8, 4 ( x2 )                 //  4-byte Folded Spill
	add x1, x0, x12
	add x3, x0, x11
	lw x8, 28 ( x10 )
	beqz x13, LBB6_2
LBB6_1:                                 //  %if.then
	call $__errno
	addi x1, x0, 22
	sw x1, 0 ( x10 )
	sw x1, 300 ( x8 )
	not x10, x0
	jalr x0, LBB6_3 ( x0 )
LBB6_2:                                 //  %if.end
	add x11, x0, x0
	add x10, x0, x8
	add x12, x0, x3
	add x13, x0, x1
	call $hash_access
LBB6_3:                                 //  %cleanup
	lw x8, 4 ( x2 )                 //  4-byte Folded Reload
	lw x1, 12 ( x2 )
$cfi46:
	.cfi_same_value 1
	addi x2, x2, 16
$cfi47:
	.cfi_adjust_cfa_offset -16
$cfi48:
	.cfi_def_cfa 2, 0
	ret
$func_end6:
	.size	$hash_get, ($func_end6)-($hash_get)
	.cfi_endproc

	.type	$hash_put,@function
$hash_put:                              //  @hash_put
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi49:
	.cfi_def_cfa 2, 0
$cfi50:
	.cfi_val_offset 2, 0
	addi x2, x2, -16
$cfi51:
	.cfi_adjust_cfa_offset 16
	sw x1, 12 ( x2 )
$cfi52:
	.cfi_offset 1, -4
	sw x8, 4 ( x2 )                 //  4-byte Folded Spill
	add x1, x0, x12
	add x3, x0, x11
	ori x4, x13, 8
	xori x4, x4, 8
	lw x8, 28 ( x10 )
	beqz x4, LBB7_2
LBB7_1:                                 //  %if.then
	addi x1, x0, 22
	sw x1, 300 ( x8 )
	add x8, x0, x1
	call $__errno
	sw x8, 0 ( x10 )
	not x10, x0
	jalr x0, LBB7_8 ( x0 )
LBB7_2:                                 //  %if.end
	lbu x4, 272 ( x8 )
	nop
	andi x4, x4, 3
	bgtu x4, x0, LBB7_4
LBB7_3:                                 //  %if.then2
	call $__errno
	slti x1, x0, 1
	sw x1, 0 ( x10 )
	sw x1, 300 ( x8 )
	not x10, x0
	jalr x0, LBB7_8 ( x0 )
LBB7_4:                                 //  %if.end5
	addi x4, x0, 8
	bne x13, x4, LBB7_6
LBB7_5:
	addi x11, x0, 2
	jalr x0, LBB7_7 ( x0 )
LBB7_6:                                 //  %if.end5
	slti x11, x0, 1
LBB7_7:                                 //  %if.end5
	add x10, x0, x8
	add x12, x0, x3
	add x13, x0, x1
	call $hash_access
LBB7_8:                                 //  %cleanup
	lw x8, 4 ( x2 )                 //  4-byte Folded Reload
	lw x1, 12 ( x2 )
$cfi53:
	.cfi_same_value 1
	addi x2, x2, 16
$cfi54:
	.cfi_adjust_cfa_offset -16
$cfi55:
	.cfi_def_cfa 2, 0
	ret
$func_end7:
	.size	$hash_put, ($func_end7)-($hash_put)
	.cfi_endproc

	.type	$hash_seq,@function
$hash_seq:                              //  @hash_seq
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi56:
	.cfi_def_cfa 2, 0
$cfi57:
	.cfi_val_offset 2, 0
	addi x2, x2, -40
$cfi58:
	.cfi_adjust_cfa_offset 40
	sw x1, 36 ( x2 )
$cfi59:
	.cfi_offset 1, -4
	sw x8, 28 ( x2 )                //  4-byte Folded Spill
	addi x1, x0, 7
	lw x8, 28 ( x10 )
	bgtu x13, x1, LBB8_2
LBB8_1:                                 //  %entry
	slti x1, x0, 1
	sll x1, x1, x13
	andi x1, x1, 137
	bgtu x1, x0, LBB8_3
LBB8_2:                                 //  %if.then
	call $__errno
	addi x1, x0, 22
	sw x1, 0 ( x10 )
	sw x1, 300 ( x8 )
	not x1, x0
	jalr x0, LBB8_39 ( x0 )
LBB8_3:                                 //  %if.end
	xori x1, x13, 3
	sw x12, 8 ( x2 )                //  4-byte Folded Spill
	sw x11, 12 ( x2 )               //  4-byte Folded Spill
	beqz x1, LBB8_6
LBB8_4:                                 //  %if.end
	lw x1, 292 ( x8 )
	nop
	bgt x0, x1, LBB8_6
LBB8_5:                                 //  %if.end.for.cond.preheader_crit_edge
	addi x14, x8, 296
	addi x1, x8, 288
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB8_7 ( x0 )
LBB8_6:                                 //  %if.then5
	slti x1, x0, 1
	sw x0, 292 ( x8 )
	sw x1, 296 ( x8 )
	addi x1, x8, 288
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	sw x0, 288 ( x8 )
	addi x14, x8, 296
LBB8_7:                                 //  %for.cond.preheader
	add x3, x0, x0
                                        //  implicit-def: %rf_xpr_1
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	sw x14, 24 ( x2 )               //  4-byte Folded Spill
LBB8_8:                                 //  %for.cond
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB8_14 Depth 2
                                        //      Child Loop BB8_25 Depth 2
	beqz x3, LBB8_10
LBB8_9:                                 //  %lor.rhs
                                        //    in Loop: Header=BB8_8 Depth=1
	lhu x4, 0 ( x3 )
	nop
	bgtu x4, x0, LBB8_30
LBB8_10:                                //  %for.body
                                        //    in Loop: Header=BB8_8 Depth=1
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 0 ( x1 )
	nop
	bgtu x1, x0, LBB8_21
LBB8_11:                                //  %if.then12
                                        //    in Loop: Header=BB8_8 Depth=1
	lw x4, 40 ( x8 )
	lw x8, 292 ( x8 )
	nop
	bgeu x4, x8, LBB8_13
LBB8_12:                                //    in Loop: Header=BB8_8 Depth=1
	add x1, x0, x0
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB8_19 ( x0 )
LBB8_13:                                //  %for.body16.preheader
                                        //    in Loop: Header=BB8_8 Depth=1
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
LBB8_14:                                //  %for.body16
                                        //    Parent Loop BB8_8 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x11, x0, x8
	add x12, x0, x0
	add x13, x0, x12
	call $__get_buf
	add x1, x0, x10
	bgtu x1, x0, LBB8_16
LBB8_15:
	not x1, x0
	jalr x0, LBB8_39 ( x0 )
LBB8_16:                                //  %if.end20
                                        //    in Loop: Header=BB8_14 Depth=2
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x3 )
	lw x3, 16 ( x1 )
	nop
	lhu x4, 0 ( x3 )
	nop
	beqz x4, LBB8_18
LBB8_17:                                //  %if.end20.for.end.loopexit_crit_edge
                                        //    in Loop: Header=BB8_8 Depth=1
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	nop
	lw x4, 40 ( x10 )
	jalr x0, LBB8_19 ( x0 )
LBB8_18:                                //  %for.inc
                                        //    in Loop: Header=BB8_14 Depth=2
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	slti x4, x0, 1
	sw x4, 296 ( x10 )
	lw x4, 40 ( x10 )
	addi x8, x8, 1
	bgeu x4, x8, LBB8_14
LBB8_19:                                //  %for.end
                                        //    in Loop: Header=BB8_8 Depth=1
	sw x8, 292 ( x10 )
	lw x14, 24 ( x2 )               //  4-byte Folded Reload
	ble x8, x4, LBB8_22
LBB8_20:                                //  %if.then32
	not x1, x0
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 292 ( x3 )
	slti x1, x0, 1
	jalr x0, LBB8_39 ( x0 )
LBB8_21:                                //  %if.else
                                        //    in Loop: Header=BB8_8 Depth=1
	lw x3, 16 ( x1 )
LBB8_22:                                //  %while.cond.preheader
                                        //    in Loop: Header=BB8_8 Depth=1
	lw x4, 0 ( x14 )
	nop
	slli x5, x4, 1
	add x5, x5, x3
	lhu x5, 2 ( x5 )
	nop
	beqz x5, LBB8_24
LBB8_23:                                //    in Loop: Header=BB8_8 Depth=1
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB8_28 ( x0 )
LBB8_24:                                //  %while.body.preheader
                                        //    in Loop: Header=BB8_8 Depth=1
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
LBB8_25:                                //  %while.body
                                        //    Parent Loop BB8_8 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	slli x4, x4, 1
	add x3, x4, x3
	lhu x11, 0 ( x3 )
	add x10, x0, x8
	add x12, x0, x1
	add x13, x0, x0
	call $__get_buf
	add x1, x0, x10
	sw x1, 288 ( x8 )
	bgtu x1, x0, LBB8_27
LBB8_26:
	not x1, x0
	jalr x0, LBB8_39 ( x0 )
LBB8_27:                                //  %if.end49
                                        //    in Loop: Header=BB8_25 Depth=2
	lw x3, 16 ( x1 )
	lw x14, 24 ( x2 )               //  4-byte Folded Reload
	slti x4, x0, 1
	sw x4, 0 ( x14 )
	lhu x5, 4 ( x3 )
	nop
	beqz x5, LBB8_25
LBB8_28:                                //  %while.end
                                        //    in Loop: Header=BB8_8 Depth=1
	lhu x4, 0 ( x3 )
	nop
	bgtu x4, x0, LBB8_8
LBB8_29:                                //  %if.then54
                                        //    in Loop: Header=BB8_8 Depth=1
	sw x0, 288 ( x8 )
	lw x4, 292 ( x8 )
	nop
	addi x4, x4, 1
	sw x4, 292 ( x8 )
	jalr x0, LBB8_8 ( x0 )
LBB8_30:                                //  %for.end59
	ori x28, x0, 65535 & 0xfff
	lw x5, 0 ( x14 )
	slli x28, x28, 20
	lui x7, 65535 >> 12 & 0xfffff
	srli x28, x28, 20
	or x9, x7, x28
	and x9, x9, x5
	slli x10, x9, 1
	add x10, x10, x3
	lhu x3, 2 ( x10 )
	addi x11, x0, 3
	bgtu x3, x11, LBB8_32
LBB8_31:                                //  %if.then68
	slti x14, x0, 1
	add x10, x0, x8
	add x11, x0, x1
	lw x12, 12 ( x2 )               //  4-byte Folded Reload
	lw x13, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $__big_keydata
	not x1, x0
	beqz x10, LBB8_38
	jalr x0, LBB8_39 ( x0 )
LBB8_32:                                //  %if.else73
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	lw x11, 0 ( x1 )
	lhu x1, 0 ( x10 )
	sltiu x12, x9, 2
	lw x9, 16 ( x11 )
	nop
	add x11, x1, x9
	lw x13, 12 ( x2 )               //  4-byte Folded Reload
	nop
	sw x11, 0 ( x13 )
	bgtu x12, x0, LBB8_34
LBB8_33:                                //  %cond.true
	lhu x10, -2 ( x10 )
	jalr x0, LBB8_35 ( x0 )
LBB8_34:                                //  %cond.false
	lw x10, 12 ( x8 )
LBB8_35:                                //  %cond.end
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	addi x5, x5, 2
	or x7, x7, x28
	sub x10, x10, x1
	add x9, x3, x9
	sub x3, x1, x3
	and x1, x7, x5
	lw x5, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sw x10, 4 ( x5 )
	lw x5, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x9, 0 ( x5 )
	sw x3, 4 ( x5 )
	bgeu x4, x1, LBB8_37
LBB8_36:                                //  %if.then115
	sw x0, 288 ( x8 )
	lw x1, 292 ( x8 )
	nop
	addi x1, x1, 1
	sw x1, 292 ( x8 )
	slti x1, x0, 1
LBB8_37:                                //  %if.end123
	sw x1, 0 ( x14 )
LBB8_38:                                //  %if.end124
	add x1, x0, x0
LBB8_39:                                //  %cleanup
	add x10, x0, x1
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	lw x1, 36 ( x2 )
$cfi60:
	.cfi_same_value 1
	addi x2, x2, 40
$cfi61:
	.cfi_adjust_cfa_offset -40
$cfi62:
	.cfi_def_cfa 2, 0
	ret
$func_end8:
	.size	$hash_seq, ($func_end8)-($hash_seq)
	.cfi_endproc

	.type	$hash_sync,@function
$hash_sync:                             //  @hash_sync
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi63:
	.cfi_def_cfa 2, 0
$cfi64:
	.cfi_val_offset 2, 0
	addi x2, x2, -24
$cfi65:
	.cfi_adjust_cfa_offset 24
	sw x1, 20 ( x2 )
$cfi66:
	.cfi_offset 1, -4
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	beqz x11, LBB9_2
LBB9_1:                                 //  %if.then
	call $__errno
	addi x1, x0, 22
	sw x1, 0 ( x10 )
	not x8, x0
	jalr x0, LBB9_8 ( x0 )
LBB9_2:                                 //  %if.end
	not x8, x0
	beqz x10, LBB9_8
LBB9_3:                                 //  %if.end2
	lw x3, 28 ( x10 )
	nop
	lw x1, 308 ( x3 )
	nop
	beqz x1, LBB9_7
LBB9_4:                                 //  %if.end5
	add x11, x0, x0
	slti x12, x0, 1
	sw x3, 8 ( x2 )                 //  4-byte Folded Spill
	add x10, x0, x3
	call $__buf_free
	bgtu x10, x0, LBB9_8
LBB9_5:                                 //  %lor.lhs.false
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $flush_meta
	bgtu x10, x0, LBB9_8
LBB9_6:                                 //  %if.end11
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x0, 304 ( x1 )
LBB9_7:                                 //  %cleanup
	add x8, x0, x0
LBB9_8:                                 //  %cleanup
	add x10, x0, x8
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	lw x1, 20 ( x2 )
$cfi67:
	.cfi_same_value 1
	addi x2, x2, 24
$cfi68:
	.cfi_adjust_cfa_offset -24
$cfi69:
	.cfi_def_cfa 2, 0
	ret
$func_end9:
	.size	$hash_sync, ($func_end9)-($hash_sync)
	.cfi_endproc

	.globl	$__expand_table
	.type	$__expand_table,@function
$__expand_table:                        //  @__expand_table
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi70:
	.cfi_def_cfa 2, 0
$cfi71:
	.cfi_val_offset 2, 0
	addi x2, x2, -40
$cfi72:
	.cfi_adjust_cfa_offset 40
	sw x1, 36 ( x2 )
$cfi73:
	.cfi_offset 1, -4
	sw x8, 28 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x10
	lw x1, 40 ( x8 )
	lw x3, 28 ( x8 )
	lw x4, 260 ( x8 )
	lw x5, 48 ( x8 )
	nop
	sw x5, 20 ( x2 )                //  4-byte Folded Spill
	addi x1, x1, 1
	srl x3, x1, x3
	sw x1, 40 ( x8 )
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
	bgt x4, x3, LBB10_8
LBB10_1:                                //  %if.then
	lw x1, 20 ( x8 )
	sw x3, 16 ( x2 )                //  4-byte Folded Spill
	bgt x1, x3, LBB10_5
LBB10_2:                                //  %if.then7
	sw x1, 4 ( x2 )                 //  4-byte Folded Spill
	slli x10, x1, 3
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	call $malloc
	bgtu x10, x0, LBB10_4
LBB10_3:
	not x10, x0
	jalr x0, LBB10_13 ( x0 )
LBB10_4:                                //  %if.end
	lw x11, 472 ( x8 )
	lw x1, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	slli x12, x1, 2
	sw x12, 4 ( x2 )                //  4-byte Folded Spill
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	call $memmove
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	lw x12, 4 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x12, x1
	add x11, x0, x0
	call $memset
	lw x10, 472 ( x8 )
	nop
	call $free
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 472 ( x8 )
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x1, 20 ( x8 )
LBB10_5:                                //  %if.end14
	lw x10, 24 ( x8 )
	addi x11, x0, 4
	call $calloc
	lw x1, 472 ( x8 )
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	nop
	slli x3, x3, 2
	add x1, x3, x1
	sw x10, 0 ( x1 )
	bgtu x10, x0, LBB10_7
LBB10_6:
	not x10, x0
	jalr x0, LBB10_13 ( x0 )
LBB10_7:                                //  %if.end20
	lw x1, 264 ( x8 )
	nop
	addi x1, x1, 1
	sw x1, 264 ( x8 )
	lw x1, 260 ( x8 )
	nop
	addi x1, x1, 1
	sw x1, 260 ( x8 )
	lw x1, 40 ( x8 )
	nop
LBB10_8:                                //  %if.end24
	addi x10, x1, 1
	call $__log2
	lw x1, 32 ( x8 )
	nop
	ble x10, x1, LBB10_10
LBB10_9:                                //  %if.then30
	addi x3, x8, 68
	slli x1, x1, 2
	add x1, x1, x3
	lw x1, 0 ( x1 )
	slli x4, x10, 2
	add x3, x4, x3
	sw x1, 0 ( x3 )
	sw x10, 32 ( x8 )
LBB10_10:                               //  %if.end40
	lw x1, 44 ( x8 )
	lw x12, 24 ( x2 )               //  4-byte Folded Reload
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
	and x11, x12, x3
	bgeu x1, x12, LBB10_12
LBB10_11:                               //  %if.then43
	or x3, x12, x1
	sw x1, 48 ( x8 )
	sw x3, 44 ( x8 )
LBB10_12:                               //  %if.end52
	add x10, x0, x8
	call $__split_page
LBB10_13:                               //  %cleanup
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	lw x1, 36 ( x2 )
$cfi74:
	.cfi_same_value 1
	addi x2, x2, 40
$cfi75:
	.cfi_adjust_cfa_offset -40
$cfi76:
	.cfi_def_cfa 2, 0
	ret
$func_end10:
	.size	$__expand_table, ($func_end10)-($__expand_table)
	.cfi_endproc

	.globl	$__call_hash
	.type	$__call_hash,@function
$__call_hash:                           //  @__call_hash
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi77:
	.cfi_def_cfa 2, 0
$cfi78:
	.cfi_val_offset 2, 0
	addi x2, x2, -16
$cfi79:
	.cfi_adjust_cfa_offset 16
	sw x1, 12 ( x2 )
$cfi80:
	.cfi_offset 1, -4
	sw x8, 4 ( x2 )                 //  4-byte Folded Spill
	add x8, x0, x10
	lw x1, 268 ( x8 )
	add x10, x0, x11
	add x11, x0, x12
	call_reg x1
	lw x1, 44 ( x8 )
	lw x3, 40 ( x8 )
	and x10, x10, x1
	ble x10, x3, LBB11_2
LBB11_1:                                //  %if.then
	lw x1, 48 ( x8 )
	nop
	and x10, x10, x1
LBB11_2:                                //  %if.end
	lw x8, 4 ( x2 )                 //  4-byte Folded Reload
	lw x1, 12 ( x2 )
$cfi81:
	.cfi_same_value 1
	addi x2, x2, 16
$cfi82:
	.cfi_adjust_cfa_offset -16
$cfi83:
	.cfi_def_cfa 2, 0
	ret
$func_end11:
	.size	$__call_hash, ($func_end11)-($__call_hash)
	.cfi_endproc

	.type	$flush_meta,@function
$flush_meta:                            //  @flush_meta
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi84:
	.cfi_def_cfa 2, 0
$cfi85:
	.cfi_val_offset 2, 0
	addi x2, x2, -464
$cfi86:
	.cfi_adjust_cfa_offset 464
	sw x1, 460 ( x2 )
$cfi87:
	.cfi_offset 1, -4
	sw x8, 452 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x10
	lw x1, 308 ( x8 )
	nop
	beqz x1, LBB12_12
LBB12_1:                                //  %if.end
	ori x28, x0, 398689 & 0xfff
	slli x28, x28, 20
	lui x1, 398689 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	addi x3, x0, 2
	sw x1, 0 ( x8 )
	sw x3, 4 ( x8 )
	lw x1, 268 ( x8 )
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x3, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x3, x28
	addi x11, x0, 12
	call_reg x1
	sw x10, 64 ( x8 )
	lb x1, 3 ( x8 )
	nop
	sw x1, 180 ( x2 )               //  4-byte Folded Spill
	lb x1, 6 ( x8 )
	nop
	sw x1, 184 ( x2 )               //  4-byte Folded Spill
	lb x9, 2 ( x8 )
	lb x10, 1 ( x8 )
	lb x11, 0 ( x8 )
	lb x7, 7 ( x8 )
	lb x1, 5 ( x8 )
	nop
	sw x1, 176 ( x2 )               //  4-byte Folded Spill
	lb x1, 4 ( x8 )
	nop
	sw x1, 172 ( x2 )               //  4-byte Folded Spill
	lb x1, 11 ( x8 )
	nop
	sw x1, 168 ( x2 )               //  4-byte Folded Spill
	lb x1, 10 ( x8 )
	nop
	sw x1, 164 ( x2 )               //  4-byte Folded Spill
	lb x1, 9 ( x8 )
	nop
	sw x1, 160 ( x2 )               //  4-byte Folded Spill
	lb x1, 8 ( x8 )
	nop
	sw x1, 156 ( x2 )               //  4-byte Folded Spill
	lb x13, 15 ( x8 )
	lb x14, 14 ( x8 )
	lb x15, 13 ( x8 )
	lb x16, 12 ( x8 )
	lb x17, 19 ( x8 )
	lb x18, 18 ( x8 )
	lb x19, 17 ( x8 )
	lb x20, 16 ( x8 )
	lb x21, 23 ( x8 )
	lb x22, 22 ( x8 )
	lb x23, 21 ( x8 )
	lb x24, 20 ( x8 )
	lb x25, 27 ( x8 )
	lb x26, 26 ( x8 )
	lb x27, 25 ( x8 )
	lb x29, 24 ( x8 )
	lb x30, 31 ( x8 )
	lb x31, 30 ( x8 )
	lb x1, 29 ( x8 )
	nop
	sw x1, 152 ( x2 )               //  4-byte Folded Spill
	lb x1, 28 ( x8 )
	nop
	sw x1, 148 ( x2 )               //  4-byte Folded Spill
	lb x1, 35 ( x8 )
	nop
	sw x1, 144 ( x2 )               //  4-byte Folded Spill
	lb x1, 34 ( x8 )
	nop
	sw x1, 140 ( x2 )               //  4-byte Folded Spill
	lb x1, 33 ( x8 )
	nop
	sw x1, 136 ( x2 )               //  4-byte Folded Spill
	lb x1, 32 ( x8 )
	nop
	sw x1, 132 ( x2 )               //  4-byte Folded Spill
	lb x1, 39 ( x8 )
	nop
	sw x1, 128 ( x2 )               //  4-byte Folded Spill
	lb x1, 38 ( x8 )
	nop
	sw x1, 124 ( x2 )               //  4-byte Folded Spill
	lb x1, 37 ( x8 )
	nop
	sw x1, 120 ( x2 )               //  4-byte Folded Spill
	lb x1, 36 ( x8 )
	nop
	sw x1, 116 ( x2 )               //  4-byte Folded Spill
	lb x1, 43 ( x8 )
	nop
	sw x1, 112 ( x2 )               //  4-byte Folded Spill
	lb x1, 42 ( x8 )
	nop
	sw x1, 108 ( x2 )               //  4-byte Folded Spill
	lb x1, 41 ( x8 )
	nop
	sw x1, 104 ( x2 )               //  4-byte Folded Spill
	lb x1, 40 ( x8 )
	nop
	sw x1, 100 ( x2 )               //  4-byte Folded Spill
	lb x1, 47 ( x8 )
	nop
	sw x1, 96 ( x2 )                //  4-byte Folded Spill
	lb x1, 46 ( x8 )
	nop
	sw x1, 92 ( x2 )                //  4-byte Folded Spill
	lb x1, 45 ( x8 )
	nop
	sw x1, 88 ( x2 )                //  4-byte Folded Spill
	lb x1, 44 ( x8 )
	nop
	sw x1, 84 ( x2 )                //  4-byte Folded Spill
	lb x1, 51 ( x8 )
	nop
	sw x1, 80 ( x2 )                //  4-byte Folded Spill
	lb x1, 50 ( x8 )
	nop
	sw x1, 76 ( x2 )                //  4-byte Folded Spill
	lb x1, 49 ( x8 )
	nop
	sw x1, 72 ( x2 )                //  4-byte Folded Spill
	lb x1, 48 ( x8 )
	nop
	sw x1, 68 ( x2 )                //  4-byte Folded Spill
	lb x1, 55 ( x8 )
	nop
	sw x1, 64 ( x2 )                //  4-byte Folded Spill
	lb x1, 54 ( x8 )
	nop
	sw x1, 60 ( x2 )                //  4-byte Folded Spill
	lb x1, 53 ( x8 )
	nop
	sw x1, 56 ( x2 )                //  4-byte Folded Spill
	lb x1, 52 ( x8 )
	nop
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
	lb x1, 59 ( x8 )
	nop
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	lb x1, 58 ( x8 )
	nop
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
	lb x1, 57 ( x8 )
	nop
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	lb x1, 56 ( x8 )
	nop
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	lb x1, 63 ( x8 )
	nop
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	lb x1, 62 ( x8 )
	nop
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	lb x1, 61 ( x8 )
	nop
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
	lb x1, 60 ( x8 )
	nop
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	lb x1, 67 ( x8 )
	nop
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	lb x1, 66 ( x8 )
	nop
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
	lb x1, 65 ( x8 )
	nop
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	lb x1, 64 ( x8 )
	nop
	sw x1, 4 ( x2 )                 //  4-byte Folded Spill
	addi x1, x2, 192
	ori x3, x1, 1
	ori x4, x1, 2
	ori x5, x1, 3
	lw x12, 276 ( x8 )
	nop
	sw x12, 188 ( x2 )              //  4-byte Folded Spill
	lw x12, 180 ( x2 )              //  4-byte Folded Reload
	nop
	sb x12, 192 ( x2 )
	sb x9, 0 ( x3 )
	sb x10, 0 ( x4 )
	sb x11, 0 ( x5 )
	sb x7, 4 ( x1 )
	lw x3, 184 ( x2 )               //  4-byte Folded Reload
	nop
	sb x3, 197 ( x2 )
	lw x3, 176 ( x2 )               //  4-byte Folded Reload
	nop
	sb x3, 6 ( x1 )
	lw x3, 172 ( x2 )               //  4-byte Folded Reload
	nop
	sb x3, 7 ( x1 )
	lw x3, 168 ( x2 )               //  4-byte Folded Reload
	nop
	sb x3, 8 ( x1 )
	lw x3, 164 ( x2 )               //  4-byte Folded Reload
	nop
	sb x3, 9 ( x1 )
	lw x3, 160 ( x2 )               //  4-byte Folded Reload
	nop
	sb x3, 10 ( x1 )
	lw x3, 156 ( x2 )               //  4-byte Folded Reload
	nop
	sb x3, 11 ( x1 )
	sb x13, 12 ( x1 )
	sb x14, 13 ( x1 )
	sb x15, 14 ( x1 )
	sb x16, 15 ( x1 )
	sb x17, 16 ( x1 )
	sb x18, 17 ( x1 )
	sb x19, 18 ( x1 )
	sb x20, 19 ( x1 )
	sb x21, 20 ( x1 )
	sb x22, 21 ( x1 )
	sb x23, 22 ( x1 )
	sb x24, 23 ( x1 )
	sb x25, 24 ( x1 )
	sb x26, 25 ( x1 )
	sb x27, 26 ( x1 )
	sb x29, 27 ( x1 )
	sb x30, 28 ( x1 )
	sb x31, 29 ( x1 )
	lw x3, 152 ( x2 )               //  4-byte Folded Reload
	nop
	sb x3, 30 ( x1 )
	lw x3, 148 ( x2 )               //  4-byte Folded Reload
	nop
	sb x3, 31 ( x1 )
	lw x3, 144 ( x2 )               //  4-byte Folded Reload
	nop
	sb x3, 32 ( x1 )
	lw x3, 140 ( x2 )               //  4-byte Folded Reload
	nop
	sb x3, 33 ( x1 )
	lw x3, 136 ( x2 )               //  4-byte Folded Reload
	nop
	sb x3, 34 ( x1 )
	lw x3, 132 ( x2 )               //  4-byte Folded Reload
	nop
	sb x3, 35 ( x1 )
	lw x3, 128 ( x2 )               //  4-byte Folded Reload
	nop
	sb x3, 36 ( x1 )
	lw x3, 124 ( x2 )               //  4-byte Folded Reload
	nop
	sb x3, 37 ( x1 )
	lw x3, 120 ( x2 )               //  4-byte Folded Reload
	nop
	sb x3, 38 ( x1 )
	lw x3, 116 ( x2 )               //  4-byte Folded Reload
	nop
	sb x3, 39 ( x1 )
	lw x3, 112 ( x2 )               //  4-byte Folded Reload
	nop
	sb x3, 40 ( x1 )
	lw x3, 108 ( x2 )               //  4-byte Folded Reload
	nop
	sb x3, 41 ( x1 )
	lw x3, 104 ( x2 )               //  4-byte Folded Reload
	nop
	sb x3, 42 ( x1 )
	lw x3, 100 ( x2 )               //  4-byte Folded Reload
	nop
	sb x3, 43 ( x1 )
	lw x3, 96 ( x2 )                //  4-byte Folded Reload
	nop
	sb x3, 44 ( x1 )
	lw x3, 92 ( x2 )                //  4-byte Folded Reload
	nop
	sb x3, 45 ( x1 )
	lw x3, 88 ( x2 )                //  4-byte Folded Reload
	nop
	sb x3, 46 ( x1 )
	lw x3, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sb x3, 47 ( x1 )
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	nop
	sb x3, 48 ( x1 )
	lw x3, 76 ( x2 )                //  4-byte Folded Reload
	nop
	sb x3, 49 ( x1 )
	lw x3, 72 ( x2 )                //  4-byte Folded Reload
	nop
	sb x3, 50 ( x1 )
	lw x3, 68 ( x2 )                //  4-byte Folded Reload
	nop
	sb x3, 51 ( x1 )
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	nop
	sb x3, 52 ( x1 )
	lw x3, 60 ( x2 )                //  4-byte Folded Reload
	nop
	sb x3, 53 ( x1 )
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	nop
	sb x3, 54 ( x1 )
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	nop
	sb x3, 55 ( x1 )
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sb x3, 56 ( x1 )
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	sb x3, 57 ( x1 )
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	sb x3, 58 ( x1 )
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	nop
	sb x3, 59 ( x1 )
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sb x3, 60 ( x1 )
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	nop
	sb x3, 61 ( x1 )
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	nop
	sb x3, 62 ( x1 )
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
	sb x3, 63 ( x1 )
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sb x3, 64 ( x1 )
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sb x3, 65 ( x1 )
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sb x3, 66 ( x1 )
	lw x3, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	sb x3, 67 ( x1 )
	addi x3, x0, 197
	addi x4, x0, 71
LBB12_2:                                //  %for.body.i
                                        //  =>This Inner Loop Header: Depth=1
	add x5, x4, x8
	add x7, x3, x8
	lb x9, 0 ( x5 )
	lb x10, -1 ( x5 )
	lb x11, -2 ( x5 )
	lb x5, -3 ( x5 )
	lb x12, 0 ( x7 )
	lb x7, -1 ( x7 )
	addi x13, x4, 4
	add x4, x4, x1
	add x14, x3, x1
	xori x15, x13, 199
	sb x9, -3 ( x4 )
	sb x10, -2 ( x4 )
	sb x11, -1 ( x4 )
	sb x5, 0 ( x4 )
	sb x12, -1 ( x14 )
	sb x7, 0 ( x14 )
	addi x3, x3, 2
	add x4, x0, x13
	bgtu x15, x0, LBB12_2
LBB12_3:                                //  %swap_header_copy.exit
	add x11, x0, x0
	lw x10, 188 ( x2 )              //  4-byte Folded Reload
	add x12, x0, x11
	call $lseek
	xori x1, x10, -1
	not x10, x0
	beqz x1, LBB12_13
LBB12_4:                                //  %lor.lhs.false
	addi x11, x2, 192
	addi x12, x0, 260
	lw x10, 188 ( x2 )              //  4-byte Folded Reload
	nop
	call $write
	xori x1, x10, -1
	bgtu x1, x0, LBB12_6
LBB12_5:
	not x10, x0
	jalr x0, LBB12_13 ( x0 )
LBB12_6:                                //  %lor.lhs.false
	xori x1, x10, 260
	bgtu x1, x0, LBB12_14
LBB12_7:                                //  %for.body.preheader
	addi x3, x0, 312
	addi x4, x0, 196
	add x1, x0, x0
	add x5, x0, x1
LBB12_8:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	add x1, x3, x8
	lw x11, 0 ( x1 )
	nop
	beqz x11, LBB12_11
LBB12_9:                                //  %if.then18
                                        //    in Loop: Header=BB12_8 Depth=1
	add x1, x4, x8
	lhu x12, 0 ( x1 )
	add x10, x0, x8
	add x13, x0, x0
	slti x14, x0, 1
	sw x3, 188 ( x2 )               //  4-byte Folded Spill
	sw x4, 184 ( x2 )               //  4-byte Folded Spill
	sw x5, 180 ( x2 )               //  4-byte Folded Spill
	call $__put_page
	lw x5, 180 ( x2 )               //  4-byte Folded Reload
	lw x4, 184 ( x2 )               //  4-byte Folded Reload
	lw x3, 188 ( x2 )               //  4-byte Folded Reload
	beqz x10, LBB12_11
LBB12_10:
	not x10, x0
	jalr x0, LBB12_13 ( x0 )
LBB12_11:                               //  %for.inc
                                        //    in Loop: Header=BB12_8 Depth=1
	addi x5, x5, 1
	slti x1, x5, 32
	addi x4, x4, 2
	addi x3, x3, 4
	bgtu x1, x0, LBB12_8
LBB12_12:
	add x10, x0, x0
LBB12_13:                               //  %cleanup
	lw x8, 452 ( x2 )               //  4-byte Folded Reload
	lw x1, 460 ( x2 )
$cfi88:
	.cfi_same_value 1
	addi x2, x2, 464
$cfi89:
	.cfi_adjust_cfa_offset -464
$cfi90:
	.cfi_def_cfa 2, 0
	ret
LBB12_14:                               //  %if.then11
	call $__errno
	addi x1, x0, 79
	sw x1, 0 ( x10 )
	call $__errno
	lw x1, 0 ( x10 )
	nop
	sw x1, 300 ( x8 )
	not x10, x0
	jalr x0, LBB12_13 ( x0 )
$func_end12:
	.size	$flush_meta, ($func_end12)-($flush_meta)
	.cfi_endproc

	.type	$hash_access,@function
$hash_access:                           //  @hash_access
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi91:
	.cfi_def_cfa 2, 0
$cfi92:
	.cfi_val_offset 2, 0
	addi x2, x2, -64
$cfi93:
	.cfi_adjust_cfa_offset 64
	sw x1, 60 ( x2 )
$cfi94:
	.cfi_offset 1, -4
	sw x8, 52 ( x2 )                //  4-byte Folded Spill
	sw x13, 16 ( x2 )               //  4-byte Folded Spill
	sw x11, 20 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x10
	lw x10, 0 ( x12 )
	sw x12, 12 ( x2 )               //  4-byte Folded Spill
	lw x11, 4 ( x12 )
	lw x1, 268 ( x8 )
	lw x3, 12 ( x8 )
	nop
	sw x3, 44 ( x2 )                //  4-byte Folded Spill
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	sw x11, 40 ( x2 )               //  4-byte Folded Spill
	call_reg x1
	lw x1, 44 ( x8 )
	lw x3, 40 ( x8 )
	and x11, x10, x1
	ble x11, x3, LBB13_2
LBB13_1:                                //  %if.then.i
	lw x1, 48 ( x8 )
	nop
	and x11, x11, x1
LBB13_2:                                //  %__call_hash.exit
	add x12, x0, x0
	sw x8, 24 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	add x13, x0, x12
	call $__get_buf
	add x8, x0, x10
	not x3, x0
	beqz x8, LBB13_40
LBB13_3:                                //  %if.end
	lb x3, 20 ( x8 )
	lw x1, 16 ( x8 )
	ori x3, x3, 8
	sb x3, 20 ( x8 )
	lhu x9, 0 ( x1 )
	nop
	sltiu x3, x9, 2
	add x7, x0, x8
	lw x4, 44 ( x2 )                //  4-byte Folded Reload
	bgtu x3, x0, LBB13_24
LBB13_4:                                //  %for.body.lr.ph.preheader
	slti x3, x0, 1
	add x7, x0, x8
	sw x8, 8 ( x2 )                 //  4-byte Folded Spill
LBB13_5:                                //  %for.body.lr.ph
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB13_6 Depth 2
	addi x8, x1, 4
	add x12, x0, x3
	lw x5, 40 ( x2 )                //  4-byte Folded Reload
	sw x7, 32 ( x2 )                //  4-byte Folded Spill
	sw x9, 28 ( x2 )                //  4-byte Folded Spill
LBB13_6:                                //  %for.body
                                        //    Parent Loop BB13_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lhu x1, 0 ( x8 )
	nop
	sltiu x3, x1, 4
	bgtu x3, x0, LBB13_15
LBB13_7:                                //  %if.then9
                                        //    in Loop: Header=BB13_6 Depth=2
	lhu x3, -2 ( x8 )
	nop
	sub x4, x4, x3
	bne x5, x4, LBB13_13
LBB13_8:                                //  %land.lhs.true
                                        //    in Loop: Header=BB13_6 Depth=2
	sw x12, 44 ( x2 )               //  4-byte Folded Spill
	lw x1, 16 ( x7 )
	nop
	add x11, x3, x1
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x5
	call $memcmp
	bgtu x10, x0, LBB13_12
LBB13_9:
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	nop
LBB13_10:                               //  %found
	add x8, x0, x10
	addi x1, x0, 3
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	nop
	bgtu x10, x1, LBB13_37
LBB13_11:                               //  %found
	addi x11, x0, 4
	call $__mulsi3
	lui x1, JTI13_0 >> 12 & 0xfffff
	ori x28, x0, JTI13_0 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	nop
	jr x1
LBB13_12:                               //  %land.lhs.true.if.end19_crit_edge
                                        //    in Loop: Header=BB13_6 Depth=2
	lh x1, 0 ( x8 )
	lw x5, 40 ( x2 )                //  4-byte Folded Reload
	lw x7, 32 ( x2 )                //  4-byte Folded Reload
	lw x12, 44 ( x2 )               //  4-byte Folded Reload
	lw x9, 28 ( x2 )                //  4-byte Folded Reload
LBB13_13:                               //  %if.end19
                                        //    in Loop: Header=BB13_6 Depth=2
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, 65535 >> 12 & 0xfffff
	or x3, x3, x28
	addi x12, x12, 2
	and x4, x3, x1
	addi x8, x8, 4
	bgt x9, x12, LBB13_6
LBB13_14:
	lw x8, 8 ( x2 )                 //  4-byte Folded Reload
	jalr x0, LBB13_24 ( x0 )
LBB13_15:                               //  %if.else
                                        //    in Loop: Header=BB13_5 Depth=1
	bgtu x1, x0, LBB13_18
LBB13_16:                               //  %if.then27
                                        //    in Loop: Header=BB13_5 Depth=1
	lhu x11, -2 ( x8 )
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x7
	add x13, x0, x0
	call $__get_buf
	add x7, x0, x10
	lw x8, 8 ( x2 )                 //  4-byte Folded Reload
	bgtu x7, x0, LBB13_23
LBB13_17:                               //  %if.then31
	lbu x1, 20 ( x8 )
	nop
	andi x1, x1, 247
	sb x1, 20 ( x8 )
	not x3, x0
	jalr x0, LBB13_40 ( x0 )
LBB13_18:                               //  %if.then46
                                        //    in Loop: Header=BB13_5 Depth=1
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x7
	lw x13, 36 ( x2 )               //  4-byte Folded Reload
	add x14, x0, x5
	call $__find_bigpair
	bgt x10, x0, LBB13_10
LBB13_19:                               //  %if.end51
                                        //    in Loop: Header=BB13_5 Depth=1
	xori x1, x10, -2
	lw x8, 8 ( x2 )                 //  4-byte Folded Reload
	bgtu x1, x0, LBB13_17
LBB13_20:                               //  %if.then54
                                        //    in Loop: Header=BB13_5 Depth=1
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 48 ( x2 )
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	addi x11, x2, 48
	call $__find_last_page
	add x1, x0, x10
	bgtu x1, x0, LBB13_22
LBB13_21:                               //  %if.then57
	lw x7, 48 ( x2 )
	jalr x0, LBB13_24 ( x0 )
LBB13_22:                               //  %if.end58
                                        //    in Loop: Header=BB13_5 Depth=1
	lw x12, 48 ( x2 )
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	add x13, x0, x0
	call $__get_buf
	add x7, x0, x10
	beqz x7, LBB13_17
LBB13_23:                               //  %for.cond.outer.backedge
                                        //    in Loop: Header=BB13_5 Depth=1
	lw x1, 16 ( x7 )
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	nop
	lw x4, 12 ( x3 )
	lhu x9, 0 ( x1 )
	slti x3, x0, 1
	bgtu x9, x3, LBB13_5
LBB13_24:                               //  %for.end
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, -1
	slti x3, x0, 1
	bgtu x1, x3, LBB13_28
LBB13_25:                               //  %sw.bb
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x7
	lw x12, 12 ( x2 )               //  4-byte Folded Reload
	lw x13, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__addel
	lbu x1, 20 ( x8 )
	nop
	andi x1, x1, 247
	sb x1, 20 ( x8 )
	add x1, x0, x0
	beq x10, x1, LBB13_27
LBB13_26:
	not x3, x0
	jalr x0, LBB13_40 ( x0 )
LBB13_27:                               //  %sw.bb
	add x3, x0, x1
	jalr x0, LBB13_40 ( x0 )
LBB13_28:                               //  %sw.default
	lbu x1, 20 ( x8 )
	nop
	andi x1, x1, 247
	sb x1, 20 ( x8 )
	jalr x0, LBB13_40 ( x0 )
LBB13_29:                               //  %sw.bb99
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	lbu x1, 20 ( x3 )
	slti x4, x0, 1
	andi x1, x1, 247
	sb x1, 20 ( x3 )
	add x3, x0, x4
	jalr x0, LBB13_40 ( x0 )
LBB13_30:                               //  %sw.bb104
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	nop
	lw x1, 16 ( x11 )
	slli x3, x8, 1
	add x4, x3, x1
	lhu x3, 2 ( x4 )
	addi x5, x0, 3
	bgtu x3, x5, LBB13_38
LBB13_31:                               //  %if.then111
	add x14, x0, x0
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x8
	lw x13, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__big_return
	jalr x0, LBB13_36 ( x0 )
LBB13_32:                               //  %sw.bb131
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x8
	call $__delpair
	bgtu x10, x0, LBB13_34
LBB13_33:                               //  %lor.lhs.false
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	lw x12, 12 ( x2 )               //  4-byte Folded Reload
	lw x13, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__addel
	beqz x10, LBB13_39
LBB13_34:                               //  %if.then136
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	lbu x1, 20 ( x3 )
	nop
	andi x1, x1, 247
	sb x1, 20 ( x3 )
	not x3, x0
	jalr x0, LBB13_40 ( x0 )
LBB13_35:                               //  %sw.bb142
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x8
	call $__delpair
LBB13_36:                               //  %sw.bb142
	not x3, x0
	beqz x10, LBB13_39
	jalr x0, LBB13_40 ( x0 )
LBB13_37:                               //  %sw.default147
	call $abort
LBB13_38:                               //  %if.else116
	add x1, x3, x1
	lw x5, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x5 )
	lhu x1, 0 ( x4 )
	nop
	sub x1, x1, x3
	sw x1, 4 ( x5 )
LBB13_39:                               //  %sw.epilog
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	lbu x1, 20 ( x3 )
	nop
	andi x1, x1, 247
	sb x1, 20 ( x3 )
	add x3, x0, x0
LBB13_40:                               //  %cleanup
	add x10, x0, x3
	lw x8, 52 ( x2 )                //  4-byte Folded Reload
	lw x1, 60 ( x2 )
$cfi95:
	.cfi_same_value 1
	addi x2, x2, 64
$cfi96:
	.cfi_adjust_cfa_offset -64
$cfi97:
	.cfi_def_cfa 2, 0
	ret
$func_end13:
	.size	$hash_access, ($func_end13)-($hash_access)
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI13_0:
	.long	LBB13_30
	.long	LBB13_32
	.long	LBB13_29
	.long	LBB13_35

	.address_space	0	
	.address_space	0	
	.type	$.str,@object           //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str:
	.asciz	"%$sniglet^&"
	.size	$.str, 12


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
