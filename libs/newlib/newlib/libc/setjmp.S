    .text
$setjmp:
    .global $setjmp
    sw x1, 4(x2)
    sw x2, 8(x2)
    sw x3, 12(x2)
    sw x4, 16(x2)
    sw x5, 20(x2)
	sw x6, 24(x2)
	sw x7, 28(x2)
	sw x8, 32(x2)
	sw x9, 36(x2)
	sw x10, 40(x2)
	sw x11, 44(x2)
	sw x12, 48(x2)
	sw x13, 52(x2)
	sw x14, 56(x2)
	sw x15, 60(x2)
	sw x16, 64(x2)
	sw x17, 68(x2)
	sw x18, 72(x2)
	sw x19, 76(x2)
	sw x20, 80(x2)
	sw x21, 84(x2)
	sw x22, 88(x2)
	sw x23, 92(x2)
	sw x24, 96(x2)
	sw x25, 100(x2)
	sw x26, 104(x2)
	sw x27, 108(x2)
	sw x28, 112(x2)
	sw x29, 116(x2)
	sw x30, 120(x2)
	sw x31, 124(x2)


    // Return 0 to caller.
    addi x2, x0, 0

    jr x3

$longjmp:
   .global $longjmp
   lw x31, 124(x2)
   lw x30, 120(x2)
   lw x29, 116(x2)
   lw x28, 112(x2)
   lw x27, 108(x2)
   lw x26, 104(x2)
   lw x25, 100(x2)
   lw x24, 96(x2)
   lw x23, 92(x2)
   lw x22, 88(x2)
   lw x21, 84(x2)
   lw x20, 80(x2)
   lw x19, 76(x2)
   lw x18, 72(x2)
   lw x17, 68(x2)
   lw x16, 64(x2)
   lw x15, 60(x2)
   lw x14, 56(x2)
   lw x13, 52(x2)
   lw x12, 48(x2)
   lw x11, 44(x2)
   lw x10, 40(x2)
   lw x9, 36(x2)
   lw x8, 32(x2)
   lw x7, 28(x2)
   lw x6, 24(x2)
   lw x5, 20(x2)
   lw x4, 16(x2)
   lw x2, 8(x2)
   lw x1, 4(x2)
   lw x3, 12(x2)
   
   jr x3
   
