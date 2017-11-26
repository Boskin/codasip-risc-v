	.text
	.file	"open_memstream.bc"
	.globl	$_open_memstream_r
	.type	$_open_memstream_r,@function
$_open_memstream_r:                     //  @_open_memstream_r
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	not x13, x0
	j $internal_open_memstream_r
$func_end0:
	.size	$_open_memstream_r, ($func_end0)-($_open_memstream_r)
	.cfi_endproc

	.type	$internal_open_memstream_r,@function
$internal_open_memstream_r:             //  @internal_open_memstream_r
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi2:
	.cfi_def_cfa 2, 0
$cfi3:
	.cfi_val_offset 2, 0
	addi x2, x2, -40
$cfi4:
	.cfi_adjust_cfa_offset 40
	sw x1, 36 ( x2 )
$cfi5:
	.cfi_offset 1, -4
	sw x8, 28 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x10
	beqz x11, LBB1_2
LBB1_1:                                 //  %entry
	bgtu x12, x0, LBB1_3
LBB1_2:                                 //  %if.then
	addi x1, x0, 22
	sw x1, 0 ( x8 )
	add x10, x0, x0
	jalr x0, LBB1_21 ( x0 )
LBB1_3:                                 //  %if.end
	sw x11, 16 ( x2 )               //  4-byte Folded Spill
	sw x12, 20 ( x2 )               //  4-byte Folded Spill
	sw x13, 24 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	call $__sfp
	add x1, x0, x0
	bgtu x10, x0, LBB1_5
LBB1_4:
	add x10, x0, x1
	jalr x0, LBB1_21 ( x0 )
LBB1_5:                                 //  %if.end3
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	addi x11, x0, 28
	add x10, x0, x8
	call $_malloc_r
	add x5, x0, x10
	bgtu x5, x0, LBB1_7
LBB1_6:                                 //  %if.then6
	call $__sfp_lock_acquire
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sh x0, 12 ( x1 )
	call $__sfp_lock_release
	add x10, x0, x0
	jalr x0, LBB1_21 ( x0 )
LBB1_7:                                 //  %if.end7
	lw x4, 20 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 0 ( x4 )
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	nop
	xori x7, x3, 1
	seqz x3, x7
	andi x3, x3, 1
	sll x1, x1, x3
	sltiu x3, x1, 64
	sw x1, 20 ( x5 )
	sw x7, 4 ( x2 )                 //  4-byte Folded Spill
	beqz x3, LBB1_9
LBB1_8:
	addi x1, x0, 64
	jalr x0, LBB1_11 ( x0 )
LBB1_9:                                 //  %if.else
	ori x28, x0, 65537 & 0xfff
	slli x28, x28, 20
	lui x3, 65537 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	bgtu x3, x1, LBB1_12
LBB1_10:
	lui x1, 65536>>12 
LBB1_11:                                //  %if.end21.sink.split
	sw x1, 20 ( x5 )
LBB1_12:                                //  %if.end21
	sw x0, 0 ( x4 )
	lw x11, 20 ( x5 )
	add x10, x0, x8
	sw x5, 8 ( x2 )                 //  4-byte Folded Spill
	call $_malloc_r
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	nop
	sw x10, 0 ( x11 )
	bgtu x10, x0, LBB1_14
LBB1_13:                                //  %if.then25
	call $__sfp_lock_acquire
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sh x0, 12 ( x1 )
	call $__sfp_lock_release
	add x10, x0, x8
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $_free_r
	add x10, x0, x0
	jalr x0, LBB1_21 ( x0 )
LBB1_14:                                //  %if.end27
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	lw x12, 24 ( x2 )               //  4-byte Folded Reload
	lw x3, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	bgtu x3, x0, LBB1_16
LBB1_15:                                //  %if.then29
	sh x0, 0 ( x10 )
	jalr x0, LBB1_17 ( x0 )
LBB1_16:                                //  %if.else30
	sb x0, 0 ( x10 )
LBB1_17:                                //  %if.then45
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	lw x9, 20 ( x2 )                //  4-byte Folded Reload
	add x13, x0, x1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lui x1, 65535 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $memwriter & 0xfff
	slli x28, x28, 20
	lui x3, $memwriter >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	ori x28, x0, $memseeker & 0xfff
	slli x28, x28, 20
	lui x4, $memseeker >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	ori x28, x0, $memcloser & 0xfff
	slli x28, x28, 20
	lui x5, $memcloser >> 12 & 0xfffff
	srli x28, x28, 20
	or x5, x5, x28
	ori x28, x0, 8200 & 0xfff
	slli x28, x28, 20
	lui x7, 8200 >> 12 & 0xfffff
	srli x28, x28, 20
	or x7, x7, x28
	ori x28, x0, -8193 & 0xfff
	slli x28, x28, 20
	sw x13, 0 ( x13 )
	sw x11, 4 ( x13 )
	sw x9, 8 ( x13 )
	sw x0, 12 ( x13 )
	sw x0, 16 ( x13 )
	sh x0, 24 ( x13 )
	sb x12, 26 ( x13 )
	lui x9, -8193 >> 12 & 0xfffff
	srli x28, x28, 20
	add x11, x0, x0
	sh x1, 14 ( x10 )
	sw x13, 28 ( x10 )
	sw x0, 32 ( x10 )
	sw x3, 36 ( x10 )
	sw x4, 40 ( x10 )
	sw x5, 44 ( x10 )
	sh x7, 12 ( x10 )
	or x3, x9, x28
	lw x1, 100 ( x10 )
	ble x12, x11, LBB1_19
LBB1_18:
	lui x3, 8192>>12 
	or x1, x3, x1
	jalr x0, LBB1_20 ( x0 )
LBB1_19:                                //  %if.then45
	and x1, x3, x1
LBB1_20:                                //  %if.then45
	sw x1, 100 ( x10 )
LBB1_21:                                //  %cleanup
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	lw x1, 36 ( x2 )
$cfi6:
	.cfi_same_value 1
	addi x2, x2, 40
$cfi7:
	.cfi_adjust_cfa_offset -40
$cfi8:
	.cfi_def_cfa 2, 0
	ret
$func_end1:
	.size	$internal_open_memstream_r, ($func_end1)-($internal_open_memstream_r)
	.cfi_endproc

	.globl	$_open_wmemstream_r
	.type	$_open_wmemstream_r,@function
$_open_wmemstream_r:                    //  @_open_wmemstream_r
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi9:
	.cfi_def_cfa 2, 0
$cfi10:
	.cfi_val_offset 2, 0
	slti x13, x0, 1
	j $internal_open_memstream_r
$func_end2:
	.size	$_open_wmemstream_r, ($func_end2)-($_open_wmemstream_r)
	.cfi_endproc

	.globl	$open_memstream
	.type	$open_memstream,@function
$open_memstream:                        //  @open_memstream
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi11:
	.cfi_def_cfa 2, 0
$cfi12:
	.cfi_val_offset 2, 0
	add x3, x0, x11
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x4, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	lw x4, 0 ( x4 )
	not x13, x0
	add x11, x0, x10
	add x12, x0, x3
	add x10, x0, x4
	j $internal_open_memstream_r
$func_end3:
	.size	$open_memstream, ($func_end3)-($open_memstream)
	.cfi_endproc

	.globl	$open_wmemstream
	.type	$open_wmemstream,@function
$open_wmemstream:                       //  @open_wmemstream
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi13:
	.cfi_def_cfa 2, 0
$cfi14:
	.cfi_val_offset 2, 0
	add x3, x0, x11
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x4, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	lw x4, 0 ( x4 )
	slti x13, x0, 1
	add x11, x0, x10
	add x12, x0, x3
	add x10, x0, x4
	j $internal_open_memstream_r
$func_end4:
	.size	$open_wmemstream, ($func_end4)-($open_wmemstream)
	.cfi_endproc

	.type	$memwriter,@function
$memwriter:                             //  @memwriter
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi15:
	.cfi_def_cfa 2, 0
$cfi16:
	.cfi_val_offset 2, 0
	addi x2, x2, -40
$cfi17:
	.cfi_adjust_cfa_offset 40
	sw x1, 36 ( x2 )
$cfi18:
	.cfi_offset 1, -4
	sw x8, 28 ( x2 )                //  4-byte Folded Spill
	add x5, x0, x10
	lw x1, 12 ( x11 )
	sw x13, 24 ( x2 )               //  4-byte Folded Spill
	add x8, x13, x1
	bgez x8, LBB5_2
LBB5_1:                                 //  %if.then
	addi x1, x0, 27
	sw x1, 0 ( x5 )
	not x10, x0
	jalr x0, LBB5_17 ( x0 )
LBB5_2:                                 //  %if.end
	lw x3, 4 ( x11 )
	lw x10, 20 ( x11 )
	lw x4, 0 ( x3 )
	sw x12, 16 ( x2 )               //  4-byte Folded Spill
	bgtu x10, x8, LBB5_8
LBB5_3:                                 //  %if.then4
	sw x5, 12 ( x2 )                //  4-byte Folded Spill
	sw x4, 20 ( x2 )                //  4-byte Folded Spill
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	addi x11, x0, 3
	call $__mulsi3
	srli x1, x10, 1
	addi x8, x8, 1
	bgtu x8, x1, LBB5_5
LBB5_4:                                 //  %if.then4
	add x8, x0, x1
LBB5_5:                                 //  %if.then4
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x8
	call $_realloc_r
	add x4, x0, x10
	bgtu x4, x0, LBB5_7
LBB5_6:
	not x10, x0
	jalr x0, LBB5_17 ( x0 )
LBB5_7:                                 //  %if.end16
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 4 ( x11 )
	nop
	sw x4, 0 ( x1 )
	sw x8, 20 ( x11 )
	lw x1, 12 ( x11 )
	lw x12, 16 ( x2 )               //  4-byte Folded Reload
LBB5_8:                                 //  %if.end19
	lw x3, 16 ( x11 )
	sw x4, 20 ( x2 )                //  4-byte Folded Spill
	bgtu x1, x3, LBB5_10
LBB5_9:
	add x8, x0, x11
	jalr x0, LBB5_11 ( x0 )
LBB5_10:                                //  %if.then22
	add x10, x3, x4
	sub x12, x1, x3
	add x8, x0, x11
	add x11, x0, x0
	call $memset
	lw x12, 16 ( x2 )               //  4-byte Folded Reload
	lw x4, 20 ( x2 )                //  4-byte Folded Reload
	lw x1, 12 ( x8 )
	nop
LBB5_11:                                //  %if.end27
	add x10, x1, x4
	add x11, x0, x12
	lw x12, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $memcpy
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x1, 12 ( x8 )
	nop
	add x1, x10, x1
	sw x1, 12 ( x8 )
	lw x3, 16 ( x8 )
	nop
	bgeu x3, x1, LBB5_13
LBB5_12:                                //  %if.then36
	sw x1, 16 ( x8 )
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x3
	addi x3, x8, 26
	jalr x0, LBB5_16 ( x0 )
LBB5_13:                                //  %if.else
	lb x4, 26 ( x8 )
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x3
	addi x3, x8, 26
	ble x4, x0, LBB5_15
LBB5_14:                                //  %if.then41
	lh x4, 0 ( x1 )
	nop
	sh x4, 24 ( x8 )
	jalr x0, LBB5_16 ( x0 )
LBB5_15:                                //  %if.else44
	lb x4, 0 ( x1 )
	nop
	sb x4, 24 ( x8 )
LBB5_16:                                //  %if.end49
	sb x0, 0 ( x1 )
	lb x1, 0 ( x3 )
	lw x3, 12 ( x8 )
	lw x4, 8 ( x8 )
	slt x1, x0, x1
	andi x1, x1, 1
	srl x1, x3, x1
	sw x1, 0 ( x4 )
LBB5_17:                                //  %cleanup59
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	lw x1, 36 ( x2 )
$cfi19:
	.cfi_same_value 1
	addi x2, x2, 40
$cfi20:
	.cfi_adjust_cfa_offset -40
$cfi21:
	.cfi_def_cfa 2, 0
	ret
$func_end5:
	.size	$memwriter, ($func_end5)-($memwriter)
	.cfi_endproc

	.type	$memseeker,@function
$memseeker:                             //  @memseeker
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi22:
	.cfi_def_cfa 2, 0
$cfi23:
	.cfi_val_offset 2, 0
	xori x3, x13, 2
	bgtu x3, x0, LBB6_2
LBB6_1:
	addi x3, x0, 16
	jalr x0, LBB6_4 ( x0 )
LBB6_2:                                 //  %entry
	xori x3, x13, 1
	bgtu x3, x0, LBB6_5
LBB6_3:                                 //  %if.then
	addi x3, x0, 12
LBB6_4:                                 //  %if.end5.sink.split
	add x3, x3, x11
	lw x3, 0 ( x3 )
	nop
	add x12, x12, x3
LBB6_5:                                 //  %if.end5
	bgez x12, LBB6_7
LBB6_6:                                 //  %if.then7
	addi x3, x0, 22
	sw x3, 0 ( x10 )
	not x12, x0
	add x10, x0, x12
	ret
LBB6_7:                                 //  %if.else12
	lw x4, 16 ( x11 )
	lw x3, 12 ( x11 )
	nop
	bgeu x3, x4, LBB6_12
LBB6_8:                                 //  %if.then16
	lb x4, 26 ( x11 )
	nop
	ble x4, x0, LBB6_10
LBB6_9:                                 //  %if.then19
	lw x4, 4 ( x11 )
	lh x5, 24 ( x11 )
	lw x4, 0 ( x4 )
	nop
	add x3, x3, x4
	sh x5, 0 ( x3 )
	jalr x0, LBB6_11 ( x0 )
LBB6_10:                                //  %if.else21
	lw x4, 4 ( x11 )
	lb x5, 24 ( x11 )
	lw x4, 0 ( x4 )
	nop
	add x3, x3, x4
	sb x5, 0 ( x3 )
LBB6_11:                                //  %if.end26
	sh x0, 24 ( x11 )
	lw x4, 16 ( x11 )
LBB6_12:                                //  %if.end29
	sw x12, 12 ( x11 )
	lb x5, 26 ( x11 )
	bgeu x12, x4, LBB6_16
LBB6_13:                                //  %if.then35
	lw x3, 4 ( x11 )
	nop
	lw x4, 0 ( x3 )
	nop
	add x4, x12, x4
	ble x5, x0, LBB6_15
LBB6_14:                                //  %if.then40
	lh x5, 0 ( x4 )
	srli x3, x12, 1
	sh x5, 24 ( x11 )
	sh x0, 0 ( x4 )
	jalr x0, LBB6_17 ( x0 )
LBB6_15:                                //  %if.else50
	lb x4, 0 ( x4 )
	nop
	sb x4, 24 ( x11 )
	lw x3, 0 ( x3 )
	nop
	add x3, x12, x3
	sb x0, 0 ( x3 )
	lw x3, 12 ( x11 )
	jalr x0, LBB6_17 ( x0 )
LBB6_16:                                //  %if.else62
	slt x3, x0, x5
	andi x3, x3, 1
	srl x3, x4, x3
LBB6_17:                                //  %if.end75
	lw x4, 8 ( x11 )
	nop
	sw x3, 0 ( x4 )
	add x10, x0, x12
	ret
$func_end6:
	.size	$memseeker, ($func_end6)-($memseeker)
	.cfi_endproc

	.type	$memcloser,@function
$memcloser:                             //  @memcloser
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi24:
	.cfi_def_cfa 2, 0
$cfi25:
	.cfi_val_offset 2, 0
	addi x2, x2, -24
$cfi26:
	.cfi_adjust_cfa_offset 24
	sw x1, 20 ( x2 )
$cfi27:
	.cfi_offset 1, -4
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x11
	lw x1, 8 ( x8 )
	lw x3, 4 ( x8 )
	lb x4, 26 ( x8 )
	lw x1, 0 ( x1 )
	lw x11, 0 ( x3 )
	slt x3, x0, x4
	andi x3, x3, 1
	addi x1, x1, 1
	sll x12, x1, x3
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	call $_realloc_r
	beqz x10, LBB7_2
LBB7_1:                                 //  %if.then
	lw x1, 4 ( x8 )
	nop
	sw x10, 0 ( x1 )
LBB7_2:                                 //  %if.end
	lw x11, 0 ( x8 )
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $_free_r
	add x10, x0, x0
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	lw x1, 20 ( x2 )
$cfi28:
	.cfi_same_value 1
	addi x2, x2, 24
$cfi29:
	.cfi_adjust_cfa_offset -24
$cfi30:
	.cfi_def_cfa 2, 0
	ret
$func_end7:
	.size	$memcloser, ($func_end7)-($memcloser)
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
