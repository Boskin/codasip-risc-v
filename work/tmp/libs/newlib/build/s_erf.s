	.text
	.file	"s_erf.bc"
	.globl	$erf
	.type	$erf,@function
$erf:                                   //  @erf
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10, 11
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
	add x4, x0, x11
	add x3, x0, x10
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	and x8, x1, x4
	lui x1, 2146435072>>12 &0xfffff
	bgtu x1, x8, LBB0_2
LBB0_1:                                 //  %if.then
	add x10, x0, x0
	lui x11, 1072693248>>12 &0xfffff
	add x12, x0, x3
	add x13, x0, x4
	add x8, x0, x4
	call $__divdf3
	sw x10, 80 ( x2 )               //  4-byte Folded Spill
	sw x11, 76 ( x2 )               //  4-byte Folded Spill
	srli x1, x8, 30
	andi x1, x1, 2
	slti x3, x0, 1
	sub x10, x3, x1
	call $__floatsidf
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	lw x11, 76 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	jalr x0, LBB0_24 ( x0 )
LBB0_2:                                 //  %if.end
	ori x28, x0, 1072365567 & 0xfff
	slli x28, x28, 20
	lui x1, 1072365567 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x8, x1, LBB0_8
LBB0_3:                                 //  %if.then3
	ori x28, x0, 1043333119 & 0xfff
	slli x28, x28, 20
	lui x1, 1043333119 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x4, 72 ( x2 )                //  4-byte Folded Spill
	bgtu x8, x1, LBB0_7
LBB0_4:                                 //  %if.then6
	ori x28, x0, 8388607 & 0xfff
	slli x28, x28, 20
	lui x1, 8388607 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x8, x1, LBB0_6
LBB0_5:                                 //  %if.then9
	add x12, x0, x0
	lui x13, 1075838976>>12 &0xfffff
	add x10, x0, x3
	add x11, x0, x4
	add x8, x0, x3
	call $__muldf3
	sw x10, 80 ( x2 )               //  4-byte Folded Spill
	sw x11, 76 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, -2112562327 & 0xfff
	slli x28, x28, 20
	lui x1, -2112562327 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1072721594 & 0xfff
	slli x28, x28, 20
	lui x1, 1072721594 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x10, x0, x8
	lw x11, 72 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	lw x11, 76 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	lui x13, 1069547520>>12 &0xfffff
	add x12, x0, x0
	call $__muldf3
	jalr x0, LBB0_25 ( x0 )
LBB0_6:                                 //  %if.end13
	ori x28, x0, -2112562327 & 0xfff
	slli x28, x28, 20
	lui x1, -2112562327 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1069575866 & 0xfff
	slli x28, x28, 20
	lui x1, 1069575866 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x10, x0, x3
	add x11, x0, x4
	add x8, x0, x3
	call $__muldf3
	add x12, x0, x8
	lw x13, 72 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_24 ( x0 )
LBB0_7:                                 //  %if.end16
	add x10, x0, x3
	add x11, x0, x4
	add x12, x0, x3
	add x13, x0, x4
	sw x3, 76 ( x2 )                //  4-byte Folded Spill
	call $__muldf3
	sw x10, 80 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 301995692 & 0xfff
	slli x28, x28, 20
	lui x1, 301995692 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1090983210 & 0xfff
	slli x28, x28, 20
	lui x1, -1090983210 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x8, x0, x11
	call $__muldf3
	ori x28, x0, 593914084 & 0xfff
	slli x28, x28, 20
	lui x1, 593914084 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1082678639 & 0xfff
	slli x28, x28, 20
	lui x1, -1082678639 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -606660273 & 0xfff
	slli x28, x28, 20
	lui x1, -606660273 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1080219055 & 0xfff
	slli x28, x28, 20
	lui x1, -1080219055 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 1763490067 & 0xfff
	slli x28, x28, 20
	lui x1, 1763490067 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1076572803 & 0xfff
	slli x28, x28, 20
	lui x1, -1076572803 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -2112562328 & 0xfff
	slli x28, x28, 20
	lui x1, -2112562328 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1069575866 & 0xfff
	slli x28, x28, 20
	lui x1, 1069575866 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	sw x10, 64 ( x2 )               //  4-byte Folded Spill
	sw x11, 60 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 1117937952 & 0xfff
	slli x28, x28, 20
	lui x1, 1117937952 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1093624765 & 0xfff
	slli x28, x28, 20
	lui x1, -1093624765 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	sw x8, 68 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x8
	call $__muldf3
	ori x28, x0, 572267024 & 0xfff
	slli x28, x28, 20
	lui x1, 572267024 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1059151305 & 0xfff
	slli x28, x28, 20
	lui x1, 1059151305 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -992777457 & 0xfff
	slli x28, x28, 20
	lui x1, -992777457 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1064620066 & 0xfff
	slli x28, x28, 20
	lui x1, 1064620066 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x8, 80 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 68 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 1429655226 & 0xfff
	slli x28, x28, 20
	lui x1, 1429655226 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1068541260 & 0xfff
	slli x28, x28, 20
	lui x1, 1068541260 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x8, 68 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -841294839 & 0xfff
	slli x28, x28, 20
	lui x1, -841294839 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1071216505 & 0xfff
	slli x28, x28, 20
	lui x1, 1071216505 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x12, x0, x0
	lui x13, 1072693248>>12 &0xfffff
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__divdf3
	lw x12, 76 ( x2 )               //  4-byte Folded Reload
	lw x8, 72 ( x2 )                //  4-byte Folded Reload
	nop
	add x13, x0, x8
	call $__muldf3
	lw x12, 76 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x8
	jalr x0, LBB0_24 ( x0 )
LBB0_8:                                 //  %if.end39
	ori x28, x0, 1072955391 & 0xfff
	slli x28, x28, 20
	lui x1, 1072955391 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x8, x1, LBB0_12
LBB0_9:                                 //  %if.then42
	add x10, x0, x3
	add x11, x0, x4
	sw x4, 72 ( x2 )                //  4-byte Folded Spill
	call $fabs
	ori x28, x0, -1074790400 & 0xfff
	slli x28, x28, 20
	lui x1, -1074790400 >> 12 & 0xfffff
	srli x28, x28, 20
	add x12, x0, x0
	or x13, x1, x28
	call $__adddf3
	sw x10, 80 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 177604415 & 0xfff
	slli x28, x28, 20
	lui x1, 177604415 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1084113096 & 0xfff
	slli x28, x28, 20
	lui x1, -1084113096 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x8, x0, x11
	call $__muldf3
	ori x28, x0, 1503106539 & 0xfff
	slli x28, x28, 20
	lui x1, 1503106539 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1067592246 & 0xfff
	slli x28, x28, 20
	lui x1, 1067592246 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 1027483884 & 0xfff
	slli x28, x28, 20
	lui x1, 1027483884 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1078172776 & 0xfff
	slli x28, x28, 20
	lui x1, -1078172776 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -2142166812 & 0xfff
	slli x28, x28, 20
	lui x1, -2142166812 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1070882762 & 0xfff
	slli x28, x28, 20
	lui x1, 1070882762 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -71777295 & 0xfff
	slli x28, x28, 20
	lui x1, -71777295 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1076374976 & 0xfff
	slli x28, x28, 20
	lui x1, -1076374976 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	sw x8, 76 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -1382894771 & 0xfff
	slli x28, x28, 20
	lui x1, -1382894771 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1071287552 & 0xfff
	slli x28, x28, 20
	lui x1, 1071287552 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -1091078856 & 0xfff
	slli x28, x28, 20
	lui x1, -1091078856 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1084008008 & 0xfff
	slli x28, x28, 20
	lui x1, -1084008008 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	sw x10, 68 ( x2 )               //  4-byte Folded Spill
	sw x11, 64 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 1463096605 & 0xfff
	slli x28, x28, 20
	lui x1, 1463096605 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1065913172 & 0xfff
	slli x28, x28, 20
	lui x1, 1065913172 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	lw x8, 80 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 76 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	ori x28, x0, 1800527132 & 0xfff
	slli x28, x28, 20
	lui x1, 1800527132 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1066134978 & 0xfff
	slli x28, x28, 20
	lui x1, 1066134978 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x8, 76 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -412928737 & 0xfff
	slli x28, x28, 20
	lui x1, -412928737 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1069557344 & 0xfff
	slli x28, x28, 20
	lui x1, 1069557344 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -643831385 & 0xfff
	slli x28, x28, 20
	lui x1, -643831385 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1068655452 & 0xfff
	slli x28, x28, 20
	lui x1, 1068655452 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x8, 80 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 76 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -1830064333 & 0xfff
	slli x28, x28, 20
	lui x1, -1830064333 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1071729392 & 0xfff
	slli x28, x28, 20
	lui x1, 1071729392 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x8, 76 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 418308899 & 0xfff
	slli x28, x28, 20
	lui x1, 418308899 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1069235814 & 0xfff
	slli x28, x28, 20
	lui x1, 1069235814 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lui x13, 1072693248>>12 &0xfffff
	add x12, x0, x0
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 68 ( x2 )               //  4-byte Folded Reload
	lw x11, 64 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__divdf3
	add x3, x0, x10
	add x1, x0, x11
	lw x4, 72 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x0, x4, LBB0_11
LBB0_10:                                //  %if.then70
	ori x28, x0, 1072368321 & 0xfff
	slli x28, x28, 20
	lui x4, 1072368321 >> 12 & 0xfffff
	srli x28, x28, 20
	lui x12, 1610612736>>12 &0xfffff
	jalr x0, LBB0_23 ( x0 )
LBB0_11:                                //  %if.else
	ori x28, x0, -1075115327 & 0xfff
	slli x28, x28, 20
	lui x4, -1075115327 >> 12 & 0xfffff
	srli x28, x28, 20
	lui x10, 1610612736>>12 &0xfffff
	or x11, x4, x28
	jalr x0, LBB0_21 ( x0 )
LBB0_12:                                //  %if.end75
	lui x1, 1075314688>>12 &0xfffff
	bgtu x1, x8, LBB0_16
LBB0_13:                                //  %if.then78
	ori x28, x0, -1074790400 & 0xfff
	slli x28, x28, 20
	lui x1, -1074790400 >> 12 & 0xfffff
	srli x28, x28, 20
	not x3, x0
	or x11, x1, x28
	ble x4, x3, LBB0_15
LBB0_14:
	lui x11, 1072693248>>12 &0xfffff
LBB0_15:                                //  %if.then78
	add x10, x0, x0
	jalr x0, LBB0_25 ( x0 )
LBB0_16:                                //  %if.end83
	add x10, x0, x3
	sw x4, 72 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x4
	call $fabs
	sw x10, 68 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x10
	sw x11, 64 ( x2 )               //  4-byte Folded Spill
	add x13, x0, x11
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x0
	lui x11, 1072693248>>12 &0xfffff
	add x12, x0, x1
	add x13, x0, x3
	call $__divdf3
	sw x10, 80 ( x2 )               //  4-byte Folded Spill
	sw x11, 76 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 1074191213 & 0xfff
	slli x28, x28, 20
	lui x1, 1074191213 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x8, x1, LBB0_18
LBB0_17:                                //  %if.then89
	ori x28, x0, -962936228 & 0xfff
	slli x28, x28, 20
	lui x1, -962936228 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1071406865 & 0xfff
	slli x28, x28, 20
	lui x1, -1071406865 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	lw x8, 76 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	call $__muldf3
	ori x28, x0, 1474614002 & 0xfff
	slli x28, x28, 20
	lui x1, 1474614002 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1068215707 & 0xfff
	slli x28, x28, 20
	lui x1, -1068215707 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -338908238 & 0xfff
	slli x28, x28, 20
	lui x1, -338908238 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1066986660 & 0xfff
	slli x28, x28, 20
	lui x1, -1066986660 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -2077744538 & 0xfff
	slli x28, x28, 20
	lui x1, -2077744538 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1067168591 & 0xfff
	slli x28, x28, 20
	lui x1, -1067168591 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -456416371 & 0xfff
	slli x28, x28, 20
	lui x1, -456416371 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1068552182 & 0xfff
	slli x28, x28, 20
	lui x1, -1068552182 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 1102112550 & 0xfff
	slli x28, x28, 20
	lui x1, 1102112550 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1071309308 & 0xfff
	slli x28, x28, 20
	lui x1, -1071309308 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -457542816 & 0xfff
	slli x28, x28, 20
	lui x1, -457542816 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1075432426 & 0xfff
	slli x28, x28, 20
	lui x1, -1075432426 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 1611490357 & 0xfff
	slli x28, x28, 20
	lui x1, 1611490357 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1081854958 & 0xfff
	slli x28, x28, 20
	lui x1, -1081854958 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	sw x11, 52 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, -294348190 & 0xfff
	slli x28, x28, 20
	lui x1, -294348190 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1079054350 & 0xfff
	slli x28, x28, 20
	lui x1, -1079054350 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $__muldf3
	ori x28, x0, -1907864941 & 0xfff
	slli x28, x28, 20
	lui x1, -1907864941 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1075464175 & 0xfff
	slli x28, x28, 20
	lui x1, 1075464175 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x12, x0, x10
	add x13, x0, x11
	ori x28, x0, 1077126841 & 0xfff
	slli x28, x28, 20
	lui x1, 1077126841 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 60 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, -1116703097 & 0xfff
	slli x28, x28, 20
	lui x1, -1116703097 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 56 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 1080112396 & 0xfff
	slli x28, x28, 20
	lui x1, 1080112396 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 1382737697 & 0xfff
	slli x28, x28, 20
	lui x1, 1382737697 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 1081813261 & 0xfff
	slli x28, x28, 20
	lui x1, 1081813261 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, -712369551 & 0xfff
	slli x28, x28, 20
	lui x1, -712369551 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 1082403609 & 0xfff
	slli x28, x28, 20
	lui x1, 1082403609 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 569124968 & 0xfff
	slli x28, x28, 20
	lui x1, 569124968 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 1081790497 & 0xfff
	slli x28, x28, 20
	lui x1, 1081790497 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 1466958612 & 0xfff
	slli x28, x28, 20
	lui x1, 1466958612 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 1079716003 & 0xfff
	slli x28, x28, 20
	lui x1, 1079716003 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, -297226708 & 0xfff
	slli x28, x28, 20
	lui x1, -297226708 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	jalr x0, LBB0_19 ( x0 )
LBB0_18:                                //  %if.else120
	ori x28, x0, -1680066497 & 0xfff
	slli x28, x28, 20
	lui x1, -1680066497 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1065469874 & 0xfff
	slli x28, x28, 20
	lui x1, -1065469874 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	lw x8, 76 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	call $__muldf3
	ori x28, x0, 1781422482 & 0xfff
	slli x28, x28, 20
	lui x1, 1781422482 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1064303519 & 0xfff
	slli x28, x28, 20
	lui x1, -1064303519 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 326496808 & 0xfff
	slli x28, x28, 20
	lui x1, 326496808 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1065096056 & 0xfff
	slli x28, x28, 20
	lui x1, -1065096056 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 1137044888 & 0xfff
	slli x28, x28, 20
	lui x1, 1137044888 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1067183011 & 0xfff
	slli x28, x28, 20
	lui x1, -1067183011 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 1432328538 & 0xfff
	slli x28, x28, 20
	lui x1, 1432328538 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1070480887 & 0xfff
	slli x28, x28, 20
	lui x1, -1070480887 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 1891796446 & 0xfff
	slli x28, x28, 20
	lui x1, 1891796446 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1075211334 & 0xfff
	slli x28, x28, 20
	lui x1, -1075211334 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 971534154 & 0xfff
	slli x28, x28, 20
	lui x1, 971534154 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1081854958 & 0xfff
	slli x28, x28, 20
	lui x1, -1081854958 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	sw x11, 52 ( x2 )               //  4-byte Folded Spill
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 1077827211 & 0xfff
	slli x28, x28, 20
	lui x1, 1077827211 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 60 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 639455632 & 0xfff
	slli x28, x28, 20
	lui x1, 639455632 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 56 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 1081367726 & 0xfff
	slli x28, x28, 20
	lui x1, 1081367726 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 572235530 & 0xfff
	slli x28, x28, 20
	lui x1, 572235530 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 1083704043 & 0xfff
	slli x28, x28, 20
	lui x1, 1083704043 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 412963096 & 0xfff
	slli x28, x28, 20
	lui x1, 412963096 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 1084817335 & 0xfff
	slli x28, x28, 20
	lui x1, 1084817335 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 1754014826 & 0xfff
	slli x28, x28, 20
	lui x1, 1754014826 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 1084486169 & 0xfff
	slli x28, x28, 20
	lui x1, 1084486169 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, -824230938 & 0xfff
	slli x28, x28, 20
	lui x1, -824230938 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 1081976948 & 0xfff
	slli x28, x28, 20
	lui x1, 1081976948 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, -408950941 & 0xfff
	slli x28, x28, 20
	lui x1, -408950941 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	ori x28, x0, -1070173982 & 0xfff
	slli x28, x28, 20
	lui x1, -1070173982 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	ori x28, x0, 1114713442 & 0xfff
	slli x28, x28, 20
	lui x1, 1114713442 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
LBB0_19:                                //  %if.end147
	lw x8, 80 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 76 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	lw x12, 8 ( x2 )                //  4-byte Folded Reload
	lw x13, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x11, 76 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x11, 76 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x11, 28 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x8, 76 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x8, 80 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 76 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x11, 76 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x8, x0, x0
	lui x13, 1072693248>>12 &0xfffff
	add x12, x0, x8
	call $__adddf3
	sw x10, 80 ( x2 )               //  4-byte Folded Spill
	sw x11, 76 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	lw x12, 68 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x8
	call $__subdf3
	sw x10, 60 ( x2 )               //  4-byte Folded Spill
	sw x11, 56 ( x2 )               //  4-byte Folded Spill
	lw x10, 68 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x0
	add x13, x0, x8
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	sw x10, 60 ( x2 )               //  4-byte Folded Spill
	sw x11, 56 ( x2 )               //  4-byte Folded Spill
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
	lw x12, 80 ( x2 )               //  4-byte Folded Reload
	lw x13, 76 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divdf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	sw x10, 80 ( x2 )               //  4-byte Folded Spill
	sw x11, 76 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x0
	add x11, x0, x8
	add x12, x0, x10
	add x13, x0, x8
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	ori x28, x0, -1075707904 & 0xfff
	slli x28, x28, 20
	lui x4, -1075707904 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x4, x28
	add x10, x0, x0
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	call $__ieee754_exp
	sw x10, 60 ( x2 )               //  4-byte Folded Spill
	sw x11, 56 ( x2 )               //  4-byte Folded Spill
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	lw x11, 76 ( x2 )               //  4-byte Folded Reload
	nop
	call $__ieee754_exp
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lw x12, 68 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x8
	call $__divdf3
	add x3, x0, x10
	add x1, x0, x11
	lw x4, 72 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x0, x4, LBB0_22
LBB0_20:                                //  %if.then167
	add x10, x0, x0
	lui x11, 1072693248>>12 &0xfffff
LBB0_21:                                //  %cleanup
	add x12, x0, x3
	add x13, x0, x1
	call $__subdf3
	jalr x0, LBB0_25 ( x0 )
LBB0_22:                                //  %if.else170
	ori x28, x0, -1074790400 & 0xfff
	slli x28, x28, 20
	lui x4, -1074790400 >> 12 & 0xfffff
	srli x28, x28, 20
	add x12, x0, x0
LBB0_23:                                //  %cleanup
	or x13, x4, x28
	add x10, x0, x3
	add x11, x0, x1
LBB0_24:                                //  %cleanup
	call $__adddf3
LBB0_25:                                //  %cleanup
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
	.size	$erf, ($func_end0)-($erf)
	.cfi_endproc

	.globl	$erfc
	.type	$erfc,@function
$erfc:                                  //  @erfc
	.cfi_startproc
  .codasip_retval_regs 10, 11, 10, 11
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	addi x2, x2, -96
$cfi9:
	.cfi_adjust_cfa_offset 96
	sw x1, 92 ( x2 )
$cfi10:
	.cfi_offset 1, -4
	sw x8, 84 ( x2 )                //  4-byte Folded Spill
	add x3, x0, x11
	add x4, x0, x10
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	and x8, x1, x3
	lui x1, 2146435072>>12 &0xfffff
	bgtu x1, x8, LBB1_2
LBB1_1:                                 //  %if.then
	add x10, x0, x0
	lui x11, 1072693248>>12 &0xfffff
	add x12, x0, x4
	add x13, x0, x3
	add x8, x0, x3
	call $__divdf3
	sw x10, 80 ( x2 )               //  4-byte Folded Spill
	sw x11, 76 ( x2 )               //  4-byte Folded Spill
	srli x1, x8, 30
	andi x10, x1, 2
	call $__floatunsidf
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	lw x11, 76 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	jalr x0, LBB1_28 ( x0 )
LBB1_2:                                 //  %if.end
	ori x28, x0, 1072365567 & 0xfff
	slli x28, x28, 20
	lui x1, 1072365567 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x8, x1, LBB1_10
LBB1_3:                                 //  %if.then3
	ori x28, x0, 1013972991 & 0xfff
	slli x28, x28, 20
	lui x1, 1013972991 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x8, x1, LBB1_5
LBB1_4:                                 //  %if.then6
	add x10, x0, x0
	lui x11, 1072693248>>12 &0xfffff
	add x12, x0, x4
	jalr x0, LBB1_8 ( x0 )
LBB1_5:                                 //  %if.end7
	add x10, x0, x4
	add x11, x0, x3
	add x12, x0, x4
	add x13, x0, x3
	sw x3, 72 ( x2 )                //  4-byte Folded Spill
	sw x4, 68 ( x2 )                //  4-byte Folded Spill
	call $__muldf3
	sw x10, 80 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 301995692 & 0xfff
	slli x28, x28, 20
	lui x1, 301995692 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1090983210 & 0xfff
	slli x28, x28, 20
	lui x1, -1090983210 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x8, x0, x11
	call $__muldf3
	ori x28, x0, 593914084 & 0xfff
	slli x28, x28, 20
	lui x1, 593914084 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1082678639 & 0xfff
	slli x28, x28, 20
	lui x1, -1082678639 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -606660273 & 0xfff
	slli x28, x28, 20
	lui x1, -606660273 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1080219055 & 0xfff
	slli x28, x28, 20
	lui x1, -1080219055 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 1763490067 & 0xfff
	slli x28, x28, 20
	lui x1, 1763490067 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1076572803 & 0xfff
	slli x28, x28, 20
	lui x1, -1076572803 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -2112562328 & 0xfff
	slli x28, x28, 20
	lui x1, -2112562328 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1069575866 & 0xfff
	slli x28, x28, 20
	lui x1, 1069575866 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	sw x10, 64 ( x2 )               //  4-byte Folded Spill
	sw x11, 60 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 1117937952 & 0xfff
	slli x28, x28, 20
	lui x1, 1117937952 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1093624765 & 0xfff
	slli x28, x28, 20
	lui x1, -1093624765 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	sw x8, 76 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x8
	call $__muldf3
	ori x28, x0, 572267024 & 0xfff
	slli x28, x28, 20
	lui x1, 572267024 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1059151305 & 0xfff
	slli x28, x28, 20
	lui x1, 1059151305 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -992777457 & 0xfff
	slli x28, x28, 20
	lui x1, -992777457 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1064620066 & 0xfff
	slli x28, x28, 20
	lui x1, 1064620066 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x8, 80 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 76 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 1429655226 & 0xfff
	slli x28, x28, 20
	lui x1, 1429655226 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1068541260 & 0xfff
	slli x28, x28, 20
	lui x1, 1068541260 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x8, 76 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -841294839 & 0xfff
	slli x28, x28, 20
	lui x1, -841294839 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1071216505 & 0xfff
	slli x28, x28, 20
	lui x1, 1071216505 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x12, x0, x0
	lui x13, 1072693248>>12 &0xfffff
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__divdf3
	lw x12, 68 ( x2 )               //  4-byte Folded Reload
	nop
	add x8, x0, x12
	lw x13, 72 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	lw x3, 72 ( x2 )                //  4-byte Folded Reload
	ori x28, x0, 1070596095 & 0xfff
	slli x28, x28, 20
	lui x1, 1070596095 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgt x3, x1, LBB1_9
LBB1_6:                                 //  %if.then29
	add x12, x0, x8
	add x13, x0, x3
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x0
	lui x11, 1072693248>>12 &0xfffff
LBB1_7:                                 //  %cleanup
	add x12, x0, x1
LBB1_8:                                 //  %cleanup
	add x13, x0, x3
	call $__subdf3
	jalr x0, LBB1_28 ( x0 )
LBB1_9:                                 //  %if.else
	ori x28, x0, -1075838976 & 0xfff
	slli x28, x28, 20
	lui x1, -1075838976 >> 12 & 0xfffff
	srli x28, x28, 20
	add x12, x0, x0
	or x13, x1, x28
	sw x10, 80 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	add x8, x0, x11
	add x11, x0, x3
	call $__adddf3
	lw x12, 80 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x8
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lui x11, 1071644672>>12 &0xfffff
	add x10, x0, x0
	jalr x0, LBB1_7 ( x0 )
LBB1_10:                                //  %if.end37
	ori x28, x0, 1072955391 & 0xfff
	slli x28, x28, 20
	lui x1, 1072955391 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x8, x1, LBB1_14
LBB1_11:                                //  %if.then40
	add x10, x0, x4
	add x11, x0, x3
	sw x3, 72 ( x2 )                //  4-byte Folded Spill
	call $fabs
	ori x28, x0, -1074790400 & 0xfff
	slli x28, x28, 20
	lui x1, -1074790400 >> 12 & 0xfffff
	srli x28, x28, 20
	add x12, x0, x0
	or x13, x1, x28
	call $__adddf3
	sw x10, 80 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 177604415 & 0xfff
	slli x28, x28, 20
	lui x1, 177604415 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1084113096 & 0xfff
	slli x28, x28, 20
	lui x1, -1084113096 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x8, x0, x11
	call $__muldf3
	ori x28, x0, 1503106539 & 0xfff
	slli x28, x28, 20
	lui x1, 1503106539 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1067592246 & 0xfff
	slli x28, x28, 20
	lui x1, 1067592246 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 1027483884 & 0xfff
	slli x28, x28, 20
	lui x1, 1027483884 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1078172776 & 0xfff
	slli x28, x28, 20
	lui x1, -1078172776 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -2142166812 & 0xfff
	slli x28, x28, 20
	lui x1, -2142166812 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1070882762 & 0xfff
	slli x28, x28, 20
	lui x1, 1070882762 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -71777295 & 0xfff
	slli x28, x28, 20
	lui x1, -71777295 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1076374976 & 0xfff
	slli x28, x28, 20
	lui x1, -1076374976 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	sw x8, 76 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -1382894771 & 0xfff
	slli x28, x28, 20
	lui x1, -1382894771 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1071287552 & 0xfff
	slli x28, x28, 20
	lui x1, 1071287552 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -1091078856 & 0xfff
	slli x28, x28, 20
	lui x1, -1091078856 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1084008008 & 0xfff
	slli x28, x28, 20
	lui x1, -1084008008 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	sw x10, 68 ( x2 )               //  4-byte Folded Spill
	sw x11, 64 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 1463096605 & 0xfff
	slli x28, x28, 20
	lui x1, 1463096605 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1065913172 & 0xfff
	slli x28, x28, 20
	lui x1, 1065913172 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	lw x8, 80 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 76 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	ori x28, x0, 1800527132 & 0xfff
	slli x28, x28, 20
	lui x1, 1800527132 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1066134978 & 0xfff
	slli x28, x28, 20
	lui x1, 1066134978 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x8, 76 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -412928737 & 0xfff
	slli x28, x28, 20
	lui x1, -412928737 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1069557344 & 0xfff
	slli x28, x28, 20
	lui x1, 1069557344 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -643831385 & 0xfff
	slli x28, x28, 20
	lui x1, -643831385 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1068655452 & 0xfff
	slli x28, x28, 20
	lui x1, 1068655452 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x8, 80 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 76 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -1830064333 & 0xfff
	slli x28, x28, 20
	lui x1, -1830064333 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1071729392 & 0xfff
	slli x28, x28, 20
	lui x1, 1071729392 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x8, 76 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 418308899 & 0xfff
	slli x28, x28, 20
	lui x1, 418308899 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1069235814 & 0xfff
	slli x28, x28, 20
	lui x1, 1069235814 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lui x13, 1072693248>>12 &0xfffff
	add x12, x0, x0
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 68 ( x2 )               //  4-byte Folded Reload
	lw x11, 64 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__divdf3
	add x3, x0, x10
	add x1, x0, x11
	lw x4, 72 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x0, x4, LBB1_13
LBB1_12:                                //  %if.then68
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x4, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x4, x28
	ori x28, x0, 1069798650 & 0xfff
	slli x28, x28, 20
	lui x4, 1069798650 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x4, x28
	add x12, x0, x3
	add x13, x0, x1
	call $__subdf3
	jalr x0, LBB1_28 ( x0 )
LBB1_13:                                //  %if.else71
	ori x28, x0, 1072368321 & 0xfff
	slli x28, x28, 20
	lui x4, 1072368321 >> 12 & 0xfffff
	srli x28, x28, 20
	lui x12, 1610612736>>12 &0xfffff
	or x13, x4, x28
	add x10, x0, x3
	add x11, x0, x1
	call $__adddf3
	add x12, x0, x0
	lui x13, 1072693248>>12 &0xfffff
	call $__adddf3
	jalr x0, LBB1_28 ( x0 )
LBB1_14:                                //  %if.end75
	ori x28, x0, 1077673983 & 0xfff
	slli x28, x28, 20
	lui x1, 1077673983 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x8, x1, LBB1_26
LBB1_15:                                //  %if.then78
	add x10, x0, x4
	add x11, x0, x3
	sw x3, 72 ( x2 )                //  4-byte Folded Spill
	call $fabs
	sw x10, 68 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x10
	sw x11, 64 ( x2 )               //  4-byte Folded Spill
	add x13, x0, x11
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x0
	lui x11, 1072693248>>12 &0xfffff
	add x12, x0, x1
	add x13, x0, x3
	call $__divdf3
	ori x28, x0, 1074191212 & 0xfff
	slli x28, x28, 20
	lui x1, 1074191212 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x10, 80 ( x2 )               //  4-byte Folded Spill
	sw x11, 76 ( x2 )               //  4-byte Folded Spill
	bgtu x8, x1, LBB1_17
LBB1_16:                                //  %if.then84
	ori x28, x0, -962936228 & 0xfff
	slli x28, x28, 20
	lui x1, -962936228 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1071406865 & 0xfff
	slli x28, x28, 20
	lui x1, -1071406865 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x8, x0, x11
	call $__muldf3
	ori x28, x0, 1474614002 & 0xfff
	slli x28, x28, 20
	lui x1, 1474614002 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1068215707 & 0xfff
	slli x28, x28, 20
	lui x1, -1068215707 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -338908238 & 0xfff
	slli x28, x28, 20
	lui x1, -338908238 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1066986660 & 0xfff
	slli x28, x28, 20
	lui x1, -1066986660 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -2077744538 & 0xfff
	slli x28, x28, 20
	lui x1, -2077744538 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1067168591 & 0xfff
	slli x28, x28, 20
	lui x1, -1067168591 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -456416371 & 0xfff
	slli x28, x28, 20
	lui x1, -456416371 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1068552182 & 0xfff
	slli x28, x28, 20
	lui x1, -1068552182 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 1102112550 & 0xfff
	slli x28, x28, 20
	lui x1, 1102112550 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1071309308 & 0xfff
	slli x28, x28, 20
	lui x1, -1071309308 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -457542816 & 0xfff
	slli x28, x28, 20
	lui x1, -457542816 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1075432426 & 0xfff
	slli x28, x28, 20
	lui x1, -1075432426 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 1611490357 & 0xfff
	slli x28, x28, 20
	lui x1, 1611490357 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1081854958 & 0xfff
	slli x28, x28, 20
	lui x1, -1081854958 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	sw x10, 56 ( x2 )               //  4-byte Folded Spill
	sw x11, 60 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, -294348190 & 0xfff
	slli x28, x28, 20
	lui x1, -294348190 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1079054350 & 0xfff
	slli x28, x28, 20
	lui x1, -1079054350 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $__muldf3
	ori x28, x0, -1907864941 & 0xfff
	slli x28, x28, 20
	lui x1, -1907864941 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1075464175 & 0xfff
	slli x28, x28, 20
	lui x1, 1075464175 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x12, x0, x10
	add x13, x0, x11
	ori x28, x0, 1077126841 & 0xfff
	slli x28, x28, 20
	lui x1, 1077126841 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, -1116703097 & 0xfff
	slli x28, x28, 20
	lui x1, -1116703097 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 1080112396 & 0xfff
	slli x28, x28, 20
	lui x1, 1080112396 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 1382737697 & 0xfff
	slli x28, x28, 20
	lui x1, 1382737697 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 1081813261 & 0xfff
	slli x28, x28, 20
	lui x1, 1081813261 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, -712369551 & 0xfff
	slli x28, x28, 20
	lui x1, -712369551 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 1082403609 & 0xfff
	slli x28, x28, 20
	lui x1, 1082403609 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 569124968 & 0xfff
	slli x28, x28, 20
	lui x1, 569124968 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 1081790497 & 0xfff
	slli x28, x28, 20
	lui x1, 1081790497 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 1466958612 & 0xfff
	slli x28, x28, 20
	lui x1, 1466958612 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 1079716003 & 0xfff
	slli x28, x28, 20
	lui x1, 1079716003 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, -297226708 & 0xfff
	slli x28, x28, 20
	lui x1, -297226708 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	jalr x0, LBB1_21 ( x0 )
LBB1_17:                                //  %if.else115
	lw x3, 72 ( x2 )                //  4-byte Folded Reload
	nop
	bgez x3, LBB1_20
LBB1_18:                                //  %if.else115
	lui x1, 1075314687 >> 12 & 0xfffff
	ori x28, x0, 1075314687 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	bgeu x1, x8, LBB1_20
LBB1_19:
	lui x11, 1073741824>>12 &0xfffff
	add x10, x0, x0
	jalr x0, LBB1_28 ( x0 )
LBB1_20:                                //  %if.end121
	ori x28, x0, -1680066497 & 0xfff
	slli x28, x28, 20
	lui x1, -1680066497 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1065469874 & 0xfff
	slli x28, x28, 20
	lui x1, -1065469874 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x8, x0, x10
	call $__muldf3
	ori x28, x0, 1781422482 & 0xfff
	slli x28, x28, 20
	lui x1, 1781422482 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1064303519 & 0xfff
	slli x28, x28, 20
	lui x1, -1064303519 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x8, 76 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 326496808 & 0xfff
	slli x28, x28, 20
	lui x1, 326496808 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1065096056 & 0xfff
	slli x28, x28, 20
	lui x1, -1065096056 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 1137044888 & 0xfff
	slli x28, x28, 20
	lui x1, 1137044888 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1067183011 & 0xfff
	slli x28, x28, 20
	lui x1, -1067183011 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x8, 80 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 76 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 1432328538 & 0xfff
	slli x28, x28, 20
	lui x1, 1432328538 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1070480887 & 0xfff
	slli x28, x28, 20
	lui x1, -1070480887 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x8, 76 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 1891796446 & 0xfff
	slli x28, x28, 20
	lui x1, 1891796446 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1075211334 & 0xfff
	slli x28, x28, 20
	lui x1, -1075211334 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 971534154 & 0xfff
	slli x28, x28, 20
	lui x1, 971534154 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1081854958 & 0xfff
	slli x28, x28, 20
	lui x1, -1081854958 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	sw x11, 60 ( x2 )               //  4-byte Folded Spill
	sw x10, 56 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 1077827211 & 0xfff
	slli x28, x28, 20
	lui x1, 1077827211 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 639455632 & 0xfff
	slli x28, x28, 20
	lui x1, 639455632 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 1081367726 & 0xfff
	slli x28, x28, 20
	lui x1, 1081367726 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 572235530 & 0xfff
	slli x28, x28, 20
	lui x1, 572235530 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 1083704043 & 0xfff
	slli x28, x28, 20
	lui x1, 1083704043 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 412963096 & 0xfff
	slli x28, x28, 20
	lui x1, 412963096 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 1084817335 & 0xfff
	slli x28, x28, 20
	lui x1, 1084817335 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 1754014826 & 0xfff
	slli x28, x28, 20
	lui x1, 1754014826 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 1084486169 & 0xfff
	slli x28, x28, 20
	lui x1, 1084486169 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, -824230938 & 0xfff
	slli x28, x28, 20
	lui x1, -824230938 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 1081976948 & 0xfff
	slli x28, x28, 20
	lui x1, 1081976948 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, -408950941 & 0xfff
	slli x28, x28, 20
	lui x1, -408950941 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	ori x28, x0, -1070173982 & 0xfff
	slli x28, x28, 20
	lui x1, -1070173982 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	ori x28, x0, 1114713442 & 0xfff
	slli x28, x28, 20
	lui x1, 1114713442 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
LBB1_21:                                //  %if.end148
	lw x8, 80 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 76 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	lw x12, 8 ( x2 )                //  4-byte Folded Reload
	lw x13, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x11, 76 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x11, 76 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x11, 28 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x8, 76 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x8, 80 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 76 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x11, 76 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x8, x0, x0
	lui x13, 1072693248>>12 &0xfffff
	add x12, x0, x8
	call $__adddf3
	sw x10, 80 ( x2 )               //  4-byte Folded Spill
	sw x11, 76 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	lw x12, 68 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x8
	call $__subdf3
	sw x10, 52 ( x2 )               //  4-byte Folded Spill
	sw x11, 48 ( x2 )               //  4-byte Folded Spill
	lw x10, 68 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x0
	add x13, x0, x8
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	sw x10, 52 ( x2 )               //  4-byte Folded Spill
	sw x11, 48 ( x2 )               //  4-byte Folded Spill
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	lw x12, 80 ( x2 )               //  4-byte Folded Reload
	lw x13, 76 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divdf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	sw x10, 80 ( x2 )               //  4-byte Folded Spill
	sw x11, 76 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x0
	add x11, x0, x8
	add x12, x0, x10
	add x8, x0, x10
	add x13, x0, x11
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	ori x28, x0, -1075707904 & 0xfff
	slli x28, x28, 20
	lui x4, -1075707904 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x4, x28
	add x10, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	call $__ieee754_exp
	add x8, x0, x10
	sw x11, 60 ( x2 )               //  4-byte Folded Spill
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	lw x11, 76 ( x2 )               //  4-byte Folded Reload
	nop
	call $__ieee754_exp
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lw x12, 68 ( x2 )               //  4-byte Folded Reload
	lw x13, 64 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divdf3
	add x8, x0, x10
	add x1, x0, x11
	lui x11, 1073741824>>12 &0xfffff
	add x10, x0, x0
	add x12, x0, x8
	sw x1, 80 ( x2 )                //  4-byte Folded Spill
	add x13, x0, x1
	call $__subdf3
	add x3, x0, x0
	lw x1, 72 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x1, x3, LBB1_23
LBB1_22:                                //  %if.end148
	add x8, x0, x10
LBB1_23:                                //  %if.end148
	lw x4, 80 ( x2 )                //  4-byte Folded Reload
	bgt x1, x3, LBB1_25
LBB1_24:                                //  %if.end148
	add x4, x0, x11
LBB1_25:                                //  %if.end148
	add x10, x0, x8
	add x11, x0, x4
	lw x8, 84 ( x2 )                //  4-byte Folded Reload
	lw x1, 92 ( x2 )
$cfi11:
	.cfi_same_value 1
	addi x2, x2, 96
$cfi12:
	.cfi_adjust_cfa_offset -96
$cfi13:
	.cfi_def_cfa 2, 0
	ret
LBB1_26:                                //  %if.else173
	add x10, x0, x0
	add x11, x0, x10
	bgt x3, x10, LBB1_28
LBB1_27:                                //  %if.else173
	lui x11, 1073741824>>12 &0xfffff
LBB1_28:                                //  %cleanup
	lw x8, 84 ( x2 )                //  4-byte Folded Reload
	lw x1, 92 ( x2 )
$cfi14:
	.cfi_same_value 1
	addi x2, x2, 96
$cfi15:
	.cfi_adjust_cfa_offset -96
$cfi16:
	.cfi_def_cfa 2, 0
	ret
$func_end1:
	.size	$erfc, ($func_end1)-($erfc)
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
