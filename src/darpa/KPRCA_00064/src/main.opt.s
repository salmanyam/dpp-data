	.text
	.file	"llvm-link"
	.file	1 "/home/salman/DPP/data/KPRCA_00064/src/./sc.h"
	.file	2 "/usr/lib/llvm-10/lib/clang/10.0.0/include/stddef.h"
	.file	3 "/home/salman/DPP/data/KPRCA_00064/src/main.c"
	.globl	bit_new                         // -- Begin function bit_new
	.p2align	2
	.type	bit_new,@function
bit_new:                                // @bit_new
.Lfunc_begin0:
	.file	4 "/home/salman/DPP/data/KPRCA_00064/src/sc.c"
	.loc	4 31 0                          // sc.c:31:0
	.cfi_startproc
// %bb.0:
	//DEBUG_VALUE: bit_new:data <- $x0
	stp	x30, x19, [sp, #-16]!           // 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	.cfi_offset w19, -8
	.cfi_offset w30, -16
	mov	x19, x0
.Ltmp0:
	//DEBUG_VALUE: bit_new:data <- $x19
	.loc	4 32 28 prologue_end            // sc.c:32:28
	mov	w0, #16
	bl	malloc
.Ltmp1:
	//DEBUG_VALUE: bit_new:bio <- $x0
	.loc	4 33 15                         // sc.c:33:15
	stp	x19, xzr, [x0]
	.loc	4 37 5                          // sc.c:37:5
	ldp	x30, x19, [sp], #16             // 16-byte Folded Reload
.Ltmp2:
	//DEBUG_VALUE: bit_new:data <- [DW_OP_LLVM_entry_value 1] $x0
	ret
.Ltmp3:
.Lfunc_end0:
	.size	bit_new, .Lfunc_end0-bit_new
	.cfi_endproc
                                        // -- End function
	.globl	bit_read                        // -- Begin function bit_read
	.p2align	2
	.type	bit_read,@function
bit_read:                               // @bit_read
.Lfunc_begin1:
	.loc	4 41 0                          // sc.c:41:0
	.cfi_startproc
// %bb.0:
	//DEBUG_VALUE: bit_read:bio <- $x0
	//DEBUG_VALUE: bit_read:bio <- $x0
	//DEBUG_VALUE: bit_read:n <- $x1
	//DEBUG_VALUE: bit_read:n <- $x1
	//DEBUG_VALUE: bit_read:b <- undef
	//DEBUG_VALUE: bit_read:ret <- 0
	//DEBUG_VALUE: bit_read:i <- 0
	.loc	4 44 5 prologue_end             // sc.c:44:5
	cbz	x1, .LBB1_6
.Ltmp4:
// %bb.1:
	//DEBUG_VALUE: bit_read:n <- $x1
	//DEBUG_VALUE: bit_read:bio <- $x0
	//DEBUG_VALUE: bit_read:i <- 0
	//DEBUG_VALUE: bit_read:ret <- 0
	.loc	4 0 5 is_stmt 0                 // sc.c:0:5
	mov	x9, xzr
	mov	w8, wzr
	ldr	x10, [x0]
	.loc	4 43 38 is_stmt 1               // sc.c:43:38
	ldr	w11, [x0, #8]
	.loc	4 43 23 is_stmt 0               // sc.c:43:23
	ldrb	w11, [x10, x11]
.Ltmp5:
	//DEBUG_VALUE: bit_read:b <- undef
	.loc	4 0 23                          // sc.c:0:23
	mov	w12, #7
	mov	w13, #1
	b	.LBB1_3
.Ltmp6:
.LBB1_2:                                //   in Loop: Header=BB1_3 Depth=1
	//DEBUG_VALUE: bit_read:i <- $x9
	//DEBUG_VALUE: bit_read:n <- $x1
	//DEBUG_VALUE: bit_read:bio <- $x0
	//DEBUG_VALUE: bit_read:ret <- $w8
	//DEBUG_VALUE: bit_read:b <- $w11
	.loc	4 51 48 is_stmt 1               // sc.c:51:48
	ldr	w14, [x0, #12]
	.loc	4 52 29                         // sc.c:52:29
	mvn	w15, w9
.Ltmp7:
	.loc	4 44 24                         // sc.c:44:24
	add	x9, x9, #1                      // =1
.Ltmp8:
	//DEBUG_VALUE: bit_read:i <- $x9
	.loc	4 52 29                         // sc.c:52:29
	add	w15, w15, w1
.Ltmp9:
	.loc	4 44 5                          // sc.c:44:5
	cmp	x1, x9
.Ltmp10:
	.loc	4 51 53                         // sc.c:51:53
	sub	w16, w12, w14
	.loc	4 53 18                         // sc.c:53:18
	add	w14, w14, #1                    // =1
	.loc	4 51 35                         // sc.c:51:35
	lsl	w17, w13, w16
	.loc	4 51 28 is_stmt 0               // sc.c:51:28
	and	w17, w11, w17
	.loc	4 51 30                         // sc.c:51:30
	and	w17, w17, #0xff
	.loc	4 51 60                         // sc.c:51:60
	lsr	w16, w17, w16
.Ltmp11:
	//DEBUG_VALUE: c <- $w16
	.loc	4 52 19 is_stmt 1               // sc.c:52:19
	lsl	w15, w16, w15
	.loc	4 52 13 is_stmt 0               // sc.c:52:13
	orr	w8, w8, w15
.Ltmp12:
	//DEBUG_VALUE: bit_read:ret <- undef
	.loc	4 53 18 is_stmt 1               // sc.c:53:18
	str	w14, [x0, #12]
.Ltmp13:
	.loc	4 44 5                          // sc.c:44:5
	b.eq	.LBB1_5
.Ltmp14:
.LBB1_3:                                // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: bit_read:n <- $x1
	//DEBUG_VALUE: bit_read:bio <- $x0
	//DEBUG_VALUE: bit_read:b <- $w11
	//DEBUG_VALUE: bit_read:ret <- $w8
	//DEBUG_VALUE: bit_read:i <- $x9
	.loc	4 46 18                         // sc.c:46:18
	ldr	w14, [x0, #12]
.Ltmp15:
	.loc	4 46 13 is_stmt 0               // sc.c:46:13
	cmp	w14, #8                         // =8
	b.ne	.LBB1_2
.Ltmp16:
// %bb.4:                               //   in Loop: Header=BB1_3 Depth=1
	//DEBUG_VALUE: bit_read:i <- $x9
	//DEBUG_VALUE: bit_read:n <- $x1
	//DEBUG_VALUE: bit_read:bio <- $x0
	//DEBUG_VALUE: bit_read:b <- $w11
	//DEBUG_VALUE: bit_read:ret <- $w8
	.loc	4 48 27 is_stmt 1               // sc.c:48:27
	ldr	w11, [x0, #8]
.Ltmp17:
	add	w11, w11, #1                    // =1
	str	w11, [x0, #8]
	.loc	4 48 17 is_stmt 0               // sc.c:48:17
	ldrb	w11, [x10, w11, uxtw]
.Ltmp18:
	//DEBUG_VALUE: bit_read:b <- undef
	.loc	4 49 23 is_stmt 1               // sc.c:49:23
	str	wzr, [x0, #12]
	b	.LBB1_2
.Ltmp19:
.LBB1_5:
	//DEBUG_VALUE: bit_read:i <- $x9
	//DEBUG_VALUE: bit_read:n <- $x1
	//DEBUG_VALUE: bit_read:bio <- $x0
	//DEBUG_VALUE: bit_read:b <- $w11
	//DEBUG_VALUE: bit_read:ret <- $w8
	.loc	4 55 5                          // sc.c:55:5
	and	w0, w8, #0xff
.Ltmp20:
	//DEBUG_VALUE: bit_read:bio <- [DW_OP_LLVM_entry_value 1] $x0
	ret
.Ltmp21:
.LBB1_6:
	//DEBUG_VALUE: bit_read:n <- $x1
	//DEBUG_VALUE: bit_read:bio <- $x0
	//DEBUG_VALUE: bit_read:i <- 0
	//DEBUG_VALUE: bit_read:ret <- 0
	//DEBUG_VALUE: bit_read:ret <- $wzr
	and	w0, wzr, #0xff
.Ltmp22:
	//DEBUG_VALUE: bit_read:bio <- [DW_OP_LLVM_entry_value 1] $x0
	ret
.Ltmp23:
.Lfunc_end1:
	.size	bit_read, .Lfunc_end1-bit_read
	.cfi_endproc
                                        // -- End function
	.globl	bit_write                       // -- Begin function bit_write
	.p2align	2
	.type	bit_write,@function
bit_write:                              // @bit_write
.Lfunc_begin2:
	.loc	4 59 0                          // sc.c:59:0
	.cfi_startproc
// %bb.0:
	//DEBUG_VALUE: bit_write:bio <- $x0
	//DEBUG_VALUE: bit_write:bio <- $x0
	//DEBUG_VALUE: bit_write:data <- $w1
	//DEBUG_VALUE: bit_write:data <- undef
	//DEBUG_VALUE: bit_write:n <- $x2
	//DEBUG_VALUE: bit_write:n <- $x2
	.loc	4 61 28 prologue_end            // sc.c:61:28
	ldr	x8, [x0]
	.loc	4 61 38 is_stmt 0               // sc.c:61:38
	ldr	w9, [x0, #8]
	.loc	4 61 23                         // sc.c:61:23
	ldrb	w8, [x8, x9]
.Ltmp24:
	//DEBUG_VALUE: bit_write:i <- 0
	//DEBUG_VALUE: bit_write:b <- undef
	//DEBUG_VALUE: bit_write:data <- $w1
	.loc	4 62 5 is_stmt 1                // sc.c:62:5
	cbz	x2, .LBB2_5
.Ltmp25:
// %bb.1:
	//DEBUG_VALUE: bit_write:n <- $x2
	//DEBUG_VALUE: bit_write:bio <- $x0
	//DEBUG_VALUE: bit_write:data <- $w1
	//DEBUG_VALUE: bit_write:i <- 0
	//DEBUG_VALUE: bit_write:data <- $w1
	.loc	4 0 5 is_stmt 0                 // sc.c:0:5
	mov	x9, xzr
	.loc	4 62 5                          // sc.c:62:5
	neg	x10, x2
	mov	w11, #1
	mov	w12, #7
	b	.LBB2_3
.Ltmp26:
.LBB2_2:                                //   in Loop: Header=BB2_3 Depth=1
	//DEBUG_VALUE: bit_write:n <- $x2
	//DEBUG_VALUE: bit_write:bio <- $x0
	//DEBUG_VALUE: bit_write:data <- $w1
	//DEBUG_VALUE: bit_write:b <- $w8
	.loc	4 70 38 is_stmt 1               // sc.c:70:38
	add	w13, w9, #7                     // =7
	.loc	4 71 30                         // sc.c:71:30
	ldr	w14, [x0, #12]
.Ltmp27:
	.loc	4 62 19                         // sc.c:62:19
	sub	x9, x9, #1                      // =1
.Ltmp28:
	.loc	4 70 38                         // sc.c:70:38
	lsl	w15, w11, w13
.Ltmp29:
	.loc	4 62 5                          // sc.c:62:5
	cmp	x10, x9
.Ltmp30:
	.loc	4 70 33                         // sc.c:70:33
	and	w15, w15, w1
	.loc	4 70 55 is_stmt 0               // sc.c:70:55
	lsr	w13, w15, w13
.Ltmp31:
	//DEBUG_VALUE: c <- $w13
	.loc	4 71 35 is_stmt 1               // sc.c:71:35
	sub	w15, w12, w14
	.loc	4 72 18                         // sc.c:72:18
	add	w14, w14, #1                    // =1
	.loc	4 71 17                         // sc.c:71:17
	lsl	w13, w13, w15
.Ltmp32:
	.loc	4 71 11 is_stmt 0               // sc.c:71:11
	orr	w8, w8, w13
.Ltmp33:
	//DEBUG_VALUE: bit_write:b <- undef
	.loc	4 72 18 is_stmt 1               // sc.c:72:18
	str	w14, [x0, #12]
.Ltmp34:
	//DEBUG_VALUE: bit_write:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] undef
	.loc	4 62 5                          // sc.c:62:5
	b.eq	.LBB2_5
.Ltmp35:
.LBB2_3:                                // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: bit_write:n <- $x2
	//DEBUG_VALUE: bit_write:bio <- $x0
	//DEBUG_VALUE: bit_write:data <- $w1
	//DEBUG_VALUE: bit_write:b <- $w8
	//DEBUG_VALUE: bit_write:i <- undef
	.loc	4 64 18                         // sc.c:64:18
	ldr	w13, [x0, #12]
.Ltmp36:
	.loc	4 64 13 is_stmt 0               // sc.c:64:13
	cmp	w13, #8                         // =8
	b.ne	.LBB2_2
.Ltmp37:
// %bb.4:                               //   in Loop: Header=BB2_3 Depth=1
	//DEBUG_VALUE: bit_write:n <- $x2
	//DEBUG_VALUE: bit_write:bio <- $x0
	//DEBUG_VALUE: bit_write:b <- $w8
	//DEBUG_VALUE: bit_write:data <- $w1
	.loc	4 66 18 is_stmt 1               // sc.c:66:18
	ldr	x13, [x0]
	.loc	4 66 28 is_stmt 0               // sc.c:66:28
	ldr	w14, [x0, #8]
	.loc	4 66 34                         // sc.c:66:34
	strb	w8, [x13, x14]
	.loc	4 67 27 is_stmt 1               // sc.c:67:27
	ldr	w8, [x0, #8]
.Ltmp38:
	.loc	4 67 22 is_stmt 0               // sc.c:67:22
	ldr	x13, [x0]
	.loc	4 67 27                         // sc.c:67:27
	add	w8, w8, #1                      // =1
	str	w8, [x0, #8]
	.loc	4 67 17                         // sc.c:67:17
	ldrb	w8, [x13, w8, uxtw]
.Ltmp39:
	//DEBUG_VALUE: bit_write:b <- undef
	.loc	4 68 23 is_stmt 1               // sc.c:68:23
	str	wzr, [x0, #12]
	b	.LBB2_2
.Ltmp40:
.LBB2_5:
	//DEBUG_VALUE: bit_write:n <- $x2
	//DEBUG_VALUE: bit_write:bio <- $x0
	//DEBUG_VALUE: bit_write:data <- $w1
	//DEBUG_VALUE: bit_write:b <- $w8
	.loc	4 74 10                         // sc.c:74:10
	ldr	x9, [x0]
	.loc	4 74 20 is_stmt 0               // sc.c:74:20
	ldr	w10, [x0, #8]
	.loc	4 74 26                         // sc.c:74:26
	strb	w8, [x9, x10]
	.loc	4 75 1 is_stmt 1                // sc.c:75:1
	ret
.Ltmp41:
.Lfunc_end2:
	.size	bit_write, .Lfunc_end2-bit_write
	.cfi_endproc
                                        // -- End function
	.globl	_find_char                      // -- Begin function _find_char
	.p2align	2
	.type	_find_char,@function
_find_char:                             // @_find_char
.Lfunc_begin3:
	.loc	4 78 0                          // sc.c:78:0
	.cfi_startproc
// %bb.0:
	//DEBUG_VALUE: _find_char:s <- $x0
	//DEBUG_VALUE: _find_char:s <- $x0
	//DEBUG_VALUE: _find_char:c <- $w1
	//DEBUG_VALUE: _find_char:c <- $w1
	//DEBUG_VALUE: _find_char:n <- $x2
	//DEBUG_VALUE: _find_char:n <- $x2
	//DEBUG_VALUE: _find_char:p <- $x0
	//DEBUG_VALUE: _find_char:p <- $x0
	//DEBUG_VALUE: _find_char:i <- 0
	.loc	4 81 5 prologue_end             // sc.c:81:5
	cbz	x2, .LBB3_3
.Ltmp42:
.LBB3_1:                                // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: _find_char:c <- $w1
	//DEBUG_VALUE: _find_char:i <- undef
	.loc	4 82 13                         // sc.c:82:13
	ldrb	w8, [x0]
.Ltmp43:
	//DEBUG_VALUE: _find_char:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] undef
	.loc	4 82 13 is_stmt 0               // sc.c:82:13
	cmp	w8, w1
	b.eq	.LBB3_4
.Ltmp44:
// %bb.2:                               //   in Loop: Header=BB3_1 Depth=1
	//DEBUG_VALUE: _find_char:c <- $w1
	//DEBUG_VALUE: _find_char:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] undef
	.loc	4 81 19 is_stmt 1               // sc.c:81:19
	subs	x2, x2, #1                      // =1
.Ltmp45:
	//DEBUG_VALUE: _find_char:n <- [DW_OP_LLVM_entry_value 1] $x2
	add	x0, x0, #1                      // =1
.Ltmp46:
	//DEBUG_VALUE: _find_char:s <- [DW_OP_LLVM_entry_value 1] $x0
	.loc	4 81 5 is_stmt 0                // sc.c:81:5
	b.ne	.LBB3_1
.Ltmp47:
.LBB3_3:
	//DEBUG_VALUE: _find_char:c <- $w1
	.loc	4 0 0                           // sc.c:0:0
	mov	x0, xzr
.Ltmp48:
.LBB3_4:
	//DEBUG_VALUE: _find_char:c <- $w1
	.loc	4 85 1 is_stmt 1                // sc.c:85:1
	ret
.Ltmp49:
.Lfunc_end3:
	.size	_find_char, .Lfunc_end3-_find_char
	.cfi_endproc
                                        // -- End function
	.globl	_sc_compare                     // -- Begin function _sc_compare
	.p2align	2
	.type	_sc_compare,@function
_sc_compare:                            // @_sc_compare
.Lfunc_begin4:
	.loc	4 88 0                          // sc.c:88:0
	.cfi_startproc
// %bb.0:
	//DEBUG_VALUE: _sc_compare:order <- $x0
	//DEBUG_VALUE: _sc_compare:s1 <- $x1
	//DEBUG_VALUE: _sc_compare:s2 <- $x2
	//DEBUG_VALUE: _sc_compare:n <- $x3
	//DEBUG_VALUE: _sc_compare:n <- $x3
	//DEBUG_VALUE: _sc_compare:s2 <- $x2
	//DEBUG_VALUE: _sc_compare:s1 <- $x1
	//DEBUG_VALUE: _sc_compare:order <- $x0
	stp	x30, x23, [sp, #-48]!           // 16-byte Folded Spill
	stp	x22, x21, [sp, #16]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             // 16-byte Folded Spill
	.cfi_def_cfa_offset 48
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w30, -48
.Ltmp50:
	//DEBUG_VALUE: _sc_compare:i <- 0
	.loc	4 91 5 prologue_end             // sc.c:91:5
	cbz	x3, .LBB4_4
.Ltmp51:
// %bb.1:                               // %.preheader
	//DEBUG_VALUE: _sc_compare:n <- $x3
	//DEBUG_VALUE: _sc_compare:s2 <- $x2
	//DEBUG_VALUE: _sc_compare:s1 <- $x1
	//DEBUG_VALUE: _sc_compare:order <- $x0
	//DEBUG_VALUE: _sc_compare:i <- 0
	.loc	4 0 5 is_stmt 0                 // sc.c:0:5
	mov	x20, x3
.Ltmp52:
	//DEBUG_VALUE: _sc_compare:n <- $x20
	mov	x21, x0
.Ltmp53:
	//DEBUG_VALUE: _sc_compare:order <- $x21
	mov	x9, xzr
.Ltmp54:
.LBB4_2:                                // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: _sc_compare:order <- $x21
	//DEBUG_VALUE: _sc_compare:n <- $x20
	//DEBUG_VALUE: _sc_compare:s2 <- $x2
	//DEBUG_VALUE: _sc_compare:s1 <- $x1
	//DEBUG_VALUE: _sc_compare:i <- $x9
	.loc	4 93 13 is_stmt 1               // sc.c:93:13
	ldrb	w8, [x1, x9]
	.loc	4 93 22 is_stmt 0               // sc.c:93:22
	ldrb	w23, [x2, x9]
.Ltmp55:
	//DEBUG_VALUE: _sc_compare:i <- undef
	.loc	4 93 13                         // sc.c:93:13
	subs	w19, w8, w23
	b.ne	.LBB4_5
.Ltmp56:
// %bb.3:                               //   in Loop: Header=BB4_2 Depth=1
	//DEBUG_VALUE: _sc_compare:order <- $x21
	//DEBUG_VALUE: _sc_compare:n <- $x20
	//DEBUG_VALUE: _sc_compare:s2 <- $x2
	//DEBUG_VALUE: _sc_compare:s1 <- $x1
	.loc	4 0 0                           // sc.c:0:0
	add	x9, x9, #1                      // =1
.Ltmp57:
	//DEBUG_VALUE: _sc_compare:i <- $x9
	.loc	4 91 5 is_stmt 1                // sc.c:91:5
	cmp	x20, x9
	b.ne	.LBB4_2
.Ltmp58:
.LBB4_4:
	//DEBUG_VALUE: _sc_compare:s2 <- $x2
	//DEBUG_VALUE: _sc_compare:s1 <- $x1
	.loc	4 0 0 is_stmt 0                 // sc.c:0:0
	mov	w19, wzr
	b	.LBB4_8
.Ltmp59:
.LBB4_5:
	//DEBUG_VALUE: _sc_compare:order <- $x21
	//DEBUG_VALUE: _sc_compare:n <- $x20
	//DEBUG_VALUE: _sc_compare:s2 <- $x2
	//DEBUG_VALUE: _sc_compare:s1 <- $x1
	.loc	4 95 18 is_stmt 1               // sc.c:95:18
	mov	x0, x21
	mov	w1, w8
.Ltmp60:
	//DEBUG_VALUE: _sc_compare:s1 <- [DW_OP_LLVM_entry_value 1] $x1
	mov	x2, x20
.Ltmp61:
	//DEBUG_VALUE: _sc_compare:s2 <- [DW_OP_LLVM_entry_value 1] $x2
	bl	_find_char
.Ltmp62:
	mov	x22, x0
.Ltmp63:
	//DEBUG_VALUE: _sc_compare:p1 <- $x22
	.loc	4 96 18                         // sc.c:96:18
	mov	x0, x21
	mov	w1, w23
	mov	x2, x20
	bl	_find_char
.Ltmp64:
	//DEBUG_VALUE: _sc_compare:p2 <- $x0
	.loc	4 97 28                         // sc.c:97:28
	cbz	x22, .LBB4_8
.Ltmp65:
// %bb.6:
	//DEBUG_VALUE: _sc_compare:p1 <- $x22
	//DEBUG_VALUE: _sc_compare:order <- $x21
	//DEBUG_VALUE: _sc_compare:n <- $x20
	//DEBUG_VALUE: _sc_compare:p2 <- $x0
	//DEBUG_VALUE: _sc_compare:s2 <- [DW_OP_LLVM_entry_value 1] $x2
	//DEBUG_VALUE: _sc_compare:s1 <- [DW_OP_LLVM_entry_value 1] $x1
	cbz	x0, .LBB4_8
.Ltmp66:
// %bb.7:
	//DEBUG_VALUE: _sc_compare:p1 <- $x22
	//DEBUG_VALUE: _sc_compare:order <- $x21
	//DEBUG_VALUE: _sc_compare:n <- $x20
	//DEBUG_VALUE: _sc_compare:p2 <- $x0
	//DEBUG_VALUE: _sc_compare:s2 <- [DW_OP_LLVM_entry_value 1] $x2
	//DEBUG_VALUE: _sc_compare:s1 <- [DW_OP_LLVM_entry_value 1] $x1
	.loc	4 99 23                         // sc.c:99:23
	sub	w19, w22, w0
.Ltmp67:
.LBB4_8:
	.loc	4 103 1                         // sc.c:103:1
	mov	w0, w19
	ldp	x20, x19, [sp, #32]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             // 16-byte Folded Reload
	ldp	x30, x23, [sp], #48             // 16-byte Folded Reload
	ret
.Ltmp68:
.Lfunc_end4:
	.size	_sc_compare, .Lfunc_end4-_sc_compare
	.cfi_endproc
                                        // -- End function
	.globl	sc_new                          // -- Begin function sc_new
	.p2align	2
	.type	sc_new,@function
sc_new:                                 // @sc_new
.Lfunc_begin5:
	.loc	4 106 0                         // sc.c:106:0
	.cfi_startproc
// %bb.0:
	//DEBUG_VALUE: sc_new:key <- $x0
	stp	x30, x19, [sp, #-16]!           // 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	.cfi_offset w19, -8
	.cfi_offset w30, -16
	mov	x19, x0
.Ltmp69:
	//DEBUG_VALUE: sc_new:key <- $x19
	.loc	4 107 33 prologue_end           // sc.c:107:33
	mov	w0, #120
	bl	malloc
.Ltmp70:
	//DEBUG_VALUE: sc_new:sc <- $x0
	.loc	4 109 5                         // sc.c:109:5
	stur	xzr, [x0, #95]
	stur	xzr, [x0, #103]
	stur	xzr, [x0, #111]
	strb	wzr, [x0, #119]
	ldp	x8, x9, [x19, #64]
	ldr	x10, [x19, #80]
	ldur	x11, [x19, #87]
	stp	x8, x9, [x0, #64]
	str	x10, [x0, #80]
	stur	x11, [x0, #87]
	ldp	x8, x9, [x19, #32]
	ldp	x10, x11, [x19, #48]
	stp	x8, x9, [x0, #32]
	stp	x10, x11, [x0, #48]
	ldp	x9, x8, [x19]
	ldp	x11, x10, [x19, #16]
	.loc	4 110 13                        // sc.c:110:13
	adrp	x12, _sc_compare
	add	x12, x12, :lo12:_sc_compare
	.loc	4 109 5                         // sc.c:109:5
	stp	x9, x8, [x0]
	stp	x11, x10, [x0, #16]
	.loc	4 110 13                        // sc.c:110:13
	str	x12, [x0, #112]
	.loc	4 111 5                         // sc.c:111:5
	ldp	x30, x19, [sp], #16             // 16-byte Folded Reload
.Ltmp71:
	//DEBUG_VALUE: sc_new:key <- [DW_OP_LLVM_entry_value 1] $x0
	ret
.Ltmp72:
.Lfunc_end5:
	.size	sc_new, .Lfunc_end5-sc_new
	.cfi_endproc
                                        // -- End function
	.globl	sc_scompress                    // -- Begin function sc_scompress
	.p2align	2
	.type	sc_scompress,@function
sc_scompress:                           // @sc_scompress
.Lfunc_begin6:
	.loc	4 115 0                         // sc.c:115:0
	.cfi_startproc
// %bb.0:
	//DEBUG_VALUE: sc_scompress:sc <- $x0
	//DEBUG_VALUE: sc_scompress:out <- $x1
	//DEBUG_VALUE: sc_scompress:outlen <- $x2
	str	x30, [sp, #-64]!                // 8-byte Folded Spill
	stp	x24, x23, [sp, #16]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             // 16-byte Folded Spill
	.cfi_def_cfa_offset 64
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w24, -48
	.cfi_offset w30, -64
	mov	x20, x0
	mov	w0, #-1
.Ltmp73:
	//DEBUG_VALUE: sc_scompress:sc <- [DW_OP_LLVM_entry_value 1] $x0
	//DEBUG_VALUE: sc_scompress:outlen <- $x2
	//DEBUG_VALUE: sc_scompress:out <- $x1
	//DEBUG_VALUE: sc_scompress:sc <- $x20
	.loc	4 116 13 prologue_end           // sc.c:116:13
	cbz	x20, .LBB6_6
.Ltmp74:
// %bb.1:
	//DEBUG_VALUE: sc_scompress:sc <- $x20
	//DEBUG_VALUE: sc_scompress:outlen <- $x2
	//DEBUG_VALUE: sc_scompress:out <- $x1
	//DEBUG_VALUE: sc_scompress:outlen <- $x2
	.loc	4 0 13 is_stmt 0                // sc.c:0:13
	mov	x19, x1
.Ltmp75:
	//DEBUG_VALUE: sc_scompress:out <- $x19
	.loc	4 116 13                        // sc.c:116:13
	cbz	x1, .LBB6_6
.Ltmp76:
// %bb.2:
	//DEBUG_VALUE: sc_scompress:sc <- $x20
	//DEBUG_VALUE: sc_scompress:out <- $x19
	//DEBUG_VALUE: sc_scompress:outlen <- $x2
	.loc	4 0 13                          // sc.c:0:13
	mov	x21, x2
.Ltmp77:
	//DEBUG_VALUE: sc_scompress:outlen <- $x21
	.loc	4 116 13                        // sc.c:116:13
	cbz	x2, .LBB6_6
.Ltmp78:
// %bb.3:
	//DEBUG_VALUE: sc_scompress:outlen <- $x21
	//DEBUG_VALUE: sc_scompress:sc <- $x20
	//DEBUG_VALUE: sc_scompress:out <- $x19
	.loc	4 119 26 is_stmt 1              // sc.c:119:26
	ldp	x24, x23, [x20, #96]
.Ltmp79:
	//DEBUG_VALUE: sc_scompress:buf <- 0
	//DEBUG_VALUE: sc_scompress:old_len <- $x23
	//DEBUG_VALUE: sc_scompress:old <- undef
	.loc	4 121 11                        // sc.c:121:11
	mov	x0, x20
	mov	w1, wzr
	mov	x2, x21
	bl	sc_bwt
.Ltmp80:
	//DEBUG_VALUE: sc_scompress:buf <- $x0
	.loc	4 122 9                         // sc.c:122:9
	cbz	x0, .LBB6_5
.Ltmp81:
// %bb.4:
	//DEBUG_VALUE: sc_scompress:old_len <- $x23
	//DEBUG_VALUE: sc_scompress:outlen <- $x21
	//DEBUG_VALUE: sc_scompress:sc <- $x20
	//DEBUG_VALUE: sc_scompress:out <- $x19
	//DEBUG_VALUE: sc_scompress:buf <- $x0
	.loc	4 0 0 is_stmt 0                 // sc.c:0:0
	mov	x22, x0
.Ltmp82:
	//DEBUG_VALUE: sc_scompress:buf <- $x22
	.loc	4 124 14 is_stmt 1              // sc.c:124:14
	str	x0, [x20, #96]
	.loc	4 125 20                        // sc.c:125:20
	ldr	x8, [x21]
	.loc	4 125 18 is_stmt 0              // sc.c:125:18
	str	x8, [x20, #104]
	.loc	4 126 12 is_stmt 1              // sc.c:126:12
	mov	x0, x20
	mov	w1, wzr
	mov	x2, x21
	bl	sc_mtf
.Ltmp83:
	.loc	4 126 10 is_stmt 0              // sc.c:126:10
	str	x0, [x19]
	.loc	4 127 5 is_stmt 1               // sc.c:127:5
	mov	x0, x22
	bl	free
.Ltmp84:
	.loc	4 128 14                        // sc.c:128:14
	stp	x24, x23, [x20, #96]
.Ltmp85:
	.loc	4 130 10                        // sc.c:130:10
	ldr	x8, [x19]
.Ltmp86:
	.loc	4 0 0 is_stmt 0                 // sc.c:0:0
	cmp	x8, #0                          // =0
	csetm	w0, eq
	b	.LBB6_6
.Ltmp87:
.LBB6_5:
	//DEBUG_VALUE: sc_scompress:old_len <- $x23
	//DEBUG_VALUE: sc_scompress:outlen <- $x21
	//DEBUG_VALUE: sc_scompress:sc <- $x20
	//DEBUG_VALUE: sc_scompress:out <- $x19
	//DEBUG_VALUE: sc_scompress:buf <- $x0
	mov	w0, #-1
.Ltmp88:
.LBB6_6:
	//DEBUG_VALUE: sc_scompress:sc <- $x20
	.loc	4 133 1 is_stmt 1               // sc.c:133:1
	ldp	x20, x19, [sp, #48]             // 16-byte Folded Reload
.Ltmp89:
	ldp	x22, x21, [sp, #32]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             // 16-byte Folded Reload
	ldr	x30, [sp], #64                  // 8-byte Folded Reload
	ret
.Ltmp90:
.Lfunc_end6:
	.size	sc_scompress, .Lfunc_end6-sc_scompress
	.cfi_endproc
	.file	5 "/usr/include/stdlib.h"
                                        // -- End function
	.globl	sc_bwt                          // -- Begin function sc_bwt
	.p2align	2
	.type	sc_bwt,@function
sc_bwt:                                 // @sc_bwt
.Lfunc_begin7:
	.loc	4 237 0                         // sc.c:237:0
	.cfi_startproc
// %bb.0:
	//DEBUG_VALUE: sc_bwt:sc <- $x0
	//DEBUG_VALUE: sc_bwt:op <- $w1
	//DEBUG_VALUE: sc_bwt:outlen <- $x2
	//DEBUG_VALUE: sc_bwt:outlen <- $x2
	//DEBUG_VALUE: sc_bwt:sc <- $x0
	stp	x29, x30, [sp, #-96]!           // 16-byte Folded Spill
	stp	x28, x27, [sp, #16]             // 16-byte Folded Spill
	stp	x26, x25, [sp, #32]             // 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             // 16-byte Folded Spill
	sub	sp, sp, #544                    // =544
	.cfi_def_cfa_offset 640
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w24, -48
	.cfi_offset w25, -56
	.cfi_offset w26, -64
	.cfi_offset w27, -72
	.cfi_offset w28, -80
	.cfi_offset w30, -88
	.cfi_offset w29, -96
.Ltmp91:
	.loc	4 238 13 prologue_end           // sc.c:238:13
	ldr	x8, [x0, #104]
.Ltmp92:
	.loc	4 238 9 is_stmt 0               // sc.c:238:9
	cmp	x8, #1, lsl #12                 // =4096
	//DEBUG_VALUE: sc_bwt:op <- $w1
	b.ls	.LBB7_2
.Ltmp93:
// %bb.1:
	//DEBUG_VALUE: sc_bwt:outlen <- $x2
	//DEBUG_VALUE: sc_bwt:sc <- $x0
	//DEBUG_VALUE: sc_bwt:op <- $w1
	.loc	4 0 0                           // sc.c:0:0
	mov	x29, xzr
	b	.LBB7_36
.Ltmp94:
.LBB7_2:
	//DEBUG_VALUE: sc_bwt:outlen <- $x2
	//DEBUG_VALUE: sc_bwt:sc <- $x0
	//DEBUG_VALUE: sc_bwt:op <- $w1
	mov	x22, x2
.Ltmp95:
	//DEBUG_VALUE: sc_bwt:outlen <- $x22
	mov	x21, x0
.Ltmp96:
	//DEBUG_VALUE: sc_bwt:sc <- $x21
	mov	w23, w1
.Ltmp97:
	//DEBUG_VALUE: sc_bwt:op <- $w23
	//DEBUG_VALUE: sc_bwt:size <- 0
	//DEBUG_VALUE: sc_bwt:to_copy <- 0
	//DEBUG_VALUE: sc_bwt:num_blocks <- 0
	.loc	4 245 32 is_stmt 1              // sc.c:245:32
	lsr	x9, x8, #9
	.loc	4 245 49 is_stmt 0              // sc.c:245:49
	tst	x8, #0x1ff
	.loc	4 245 46                        // sc.c:245:46
	cinc	x9, x9, ne
.Ltmp98:
	//DEBUG_VALUE: sc_bwt:num_blocks <- $x9
	.loc	4 246 42 is_stmt 1              // sc.c:246:42
	add	x24, x8, x9, lsl #1
	.loc	4 246 13 is_stmt 0              // sc.c:246:13
	str	x24, [x2]
.Ltmp99:
	//DEBUG_VALUE: sc_bwt:num_blocks <- 0
	.loc	4 248 33 is_stmt 1              // sc.c:248:33
	mov	w0, #4096
	bl	malloc
.Ltmp100:
	mov	x20, x0
.Ltmp101:
	//DEBUG_VALUE: sc_bwt:rot_table <- $x20
	.loc	4 249 26                        // sc.c:249:26
	mov	x0, x24
	bl	malloc
.Ltmp102:
	mov	x29, x0
.Ltmp103:
	//DEBUG_VALUE: sc_bwt:out <- $fp
	.loc	4 250 5                         // sc.c:250:5
	mov	w1, wzr
	mov	x2, x24
	bl	memset
.Ltmp104:
	//DEBUG_VALUE: sc_bwt:i <- 0
	.loc	4 0 5 is_stmt 0                 // sc.c:0:5
	mov	x19, xzr
.Ltmp105:
.LBB7_3:                                // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: sc_bwt:outlen <- $x22
	//DEBUG_VALUE: sc_bwt:sc <- $x21
	//DEBUG_VALUE: sc_bwt:rot_table <- $x20
	//DEBUG_VALUE: sc_bwt:op <- $w23
	//DEBUG_VALUE: sc_bwt:out <- $fp
	//DEBUG_VALUE: sc_bwt:num_blocks <- 0
	//DEBUG_VALUE: sc_bwt:to_copy <- 0
	//DEBUG_VALUE: sc_bwt:size <- 0
	//DEBUG_VALUE: sc_bwt:i <- undef
	.loc	4 254 24 is_stmt 1              // sc.c:254:24
	mov	w0, #512
	bl	malloc
.Ltmp106:
	.loc	4 254 22 is_stmt 0              // sc.c:254:22
	str	x0, [x20, x19]
	.loc	4 255 9 is_stmt 1               // sc.c:255:9
	mov	w2, #512
	mov	w1, wzr
	bl	memset
.Ltmp107:
	//DEBUG_VALUE: sc_bwt:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] undef
	.loc	4 252 19                        // sc.c:252:19
	add	x19, x19, #8                    // =8
.Ltmp108:
	.loc	4 252 5 is_stmt 0               // sc.c:252:5
	cmp	x19, #1, lsl #12                // =4096
	b.ne	.LBB7_3
.Ltmp109:
// %bb.4:
	//DEBUG_VALUE: sc_bwt:outlen <- $x22
	//DEBUG_VALUE: sc_bwt:sc <- $x21
	//DEBUG_VALUE: sc_bwt:rot_table <- $x20
	//DEBUG_VALUE: sc_bwt:op <- $w23
	//DEBUG_VALUE: sc_bwt:out <- $fp
	//DEBUG_VALUE: sc_bwt:num_blocks <- 0
	//DEBUG_VALUE: sc_bwt:to_copy <- 0
	//DEBUG_VALUE: sc_bwt:size <- 0
	.loc	4 258 9 is_stmt 1               // sc.c:258:9
	cbz	w23, .LBB7_18
.Ltmp110:
// %bb.5:
	//DEBUG_VALUE: sc_bwt:outlen <- $x22
	//DEBUG_VALUE: sc_bwt:sc <- $x21
	//DEBUG_VALUE: sc_bwt:rot_table <- $x20
	//DEBUG_VALUE: sc_bwt:op <- $w23
	//DEBUG_VALUE: sc_bwt:out <- $fp
	//DEBUG_VALUE: sc_bwt:num_blocks <- 0
	//DEBUG_VALUE: sc_bwt:to_copy <- 0
	//DEBUG_VALUE: sc_bwt:size <- 0
	.loc	4 0 9 is_stmt 0                 // sc.c:0:9
	str	x22, [sp, #16]                  // 8-byte Folded Spill
.Ltmp111:
	//DEBUG_VALUE: sc_bwt:outlen <- [DW_OP_plus_uconst 16] [$sp+0]
	.loc	4 289 17 is_stmt 1              // sc.c:289:17
	str	xzr, [x22]
	//DEBUG_VALUE: sc_bwt:num_blocks <- 0
	//DEBUG_VALUE: sc_bwt:size <- 0
.Ltmp112:
	.loc	4 292 29                        // sc.c:292:29
	ldr	x8, [x21, #104]
.Ltmp113:
	.loc	4 292 17 is_stmt 0              // sc.c:292:17
	cbz	x8, .LBB7_33
.Ltmp114:
// %bb.6:
	//DEBUG_VALUE: sc_bwt:outlen <- [DW_OP_plus_uconst 16] [$sp+0]
	//DEBUG_VALUE: sc_bwt:sc <- $x21
	//DEBUG_VALUE: sc_bwt:rot_table <- $x20
	//DEBUG_VALUE: sc_bwt:op <- $w23
	//DEBUG_VALUE: sc_bwt:out <- $fp
	//DEBUG_VALUE: sc_bwt:num_blocks <- 0
	//DEBUG_VALUE: sc_bwt:to_copy <- 0
	//DEBUG_VALUE: sc_bwt:size <- 0
	.loc	4 0 17                          // sc.c:0:17
	mov	x25, xzr
	mov	x28, xzr
	add	x27, sp, #32                    // =32
	b	.LBB7_8
.Ltmp115:
.LBB7_7:                                //   in Loop: Header=BB7_8 Depth=1
	//DEBUG_VALUE: sc_bwt:outlen <- [DW_OP_plus_uconst 16] [$sp+0]
	//DEBUG_VALUE: sc_bwt:to_copy <- $x22
	//DEBUG_VALUE: sc_bwt:sc <- $x21
	//DEBUG_VALUE: sc_bwt:rot_table <- $x20
	//DEBUG_VALUE: sc_bwt:size <- $fp
	.loc	4 292 29                        // sc.c:292:29
	ldr	x8, [x21, #104]
.Ltmp116:
	.loc	4 319 18 is_stmt 1              // sc.c:319:18
	add	x28, x22, x29
.Ltmp117:
	//DEBUG_VALUE: sc_bwt:num_blocks <- $x25
	//DEBUG_VALUE: sc_bwt:size <- $x28
	.loc	4 292 17                        // sc.c:292:17
	cmp	x28, x8
	.loc	4 0 0 is_stmt 0                 // sc.c:0:0
	add	x25, x25, #1                    // =1
.Ltmp118:
	//DEBUG_VALUE: sc_bwt:num_blocks <- $x25
	mov	x29, x19
	.loc	4 292 17                        // sc.c:292:17
	b.hs	.LBB7_33
.Ltmp119:
.LBB7_8:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB7_9 Depth 2
                                        //     Child Loop BB7_13 Depth 2
                                        //       Child Loop BB7_15 Depth 3
	//DEBUG_VALUE: sc_bwt:outlen <- [DW_OP_plus_uconst 16] [$sp+0]
	//DEBUG_VALUE: sc_bwt:sc <- $x21
	//DEBUG_VALUE: sc_bwt:rot_table <- $x20
	//DEBUG_VALUE: sc_bwt:size <- $x28
	//DEBUG_VALUE: sc_bwt:num_blocks <- $x25
	.loc	4 0 17                          // sc.c:0:17
	mov	x19, x29
	.loc	4 295 44 is_stmt 1              // sc.c:295:44
	sub	x9, x29, x25, lsl #1
	str	x9, [sp, #24]                   // 8-byte Folded Spill
	ldr	x9, [x21, #96]
	.loc	4 296 18                        // sc.c:296:18
	add	x29, x28, #2                    // =2
.Ltmp120:
	//DEBUG_VALUE: sc_bwt:size <- $fp
	.loc	4 0 18 is_stmt 0                // sc.c:0:18
	ldr	x11, [sp, #16]                  // 8-byte Folded Reload
	.loc	4 298 21 is_stmt 1              // sc.c:298:21
	ldr	x10, [x11]
	.loc	4 297 36                        // sc.c:297:36
	sub	x8, x8, x29
	.loc	4 297 23 is_stmt 0              // sc.c:297:23
	cmp	x8, #512                        // =512
	mov	w12, #512
	csel	x22, x8, x12, lo
.Ltmp121:
	//DEBUG_VALUE: sc_bwt:to_copy <- $x22
	.loc	4 295 20 is_stmt 1              // sc.c:295:20
	ldrh	w26, [x9, x28]
.Ltmp122:
	//DEBUG_VALUE: sc_bwt:oidx <- undef
	.loc	4 298 21                        // sc.c:298:21
	add	x8, x10, x22
	.loc	4 304 28                        // sc.c:304:28
	add	x24, x9, x29
	.loc	4 304 13 is_stmt 0              // sc.c:304:13
	sub	x9, x12, x22
	.loc	4 298 21 is_stmt 1              // sc.c:298:21
	str	x8, [x11]
	.loc	4 304 13                        // sc.c:304:13
	cmp	x22, #511                       // =511
	csel	x2, xzr, x9, hi
	add	x0, x27, x22
	mov	w1, wzr
	bl	memset
.Ltmp123:
	add	x0, sp, #32                     // =32
	mov	x1, x24
	mov	x2, x22
	bl	memcpy
.Ltmp124:
	//DEBUG_VALUE: sc_bwt:i <- 0
	.loc	4 0 13 is_stmt 0                // sc.c:0:13
	mov	x23, xzr
.Ltmp125:
	//DEBUG_VALUE: sc_bwt:op <- [DW_OP_LLVM_entry_value 1] $w1
.LBB7_9:                                //   Parent Loop BB7_8 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	//DEBUG_VALUE: sc_bwt:outlen <- [DW_OP_plus_uconst 16] [$sp+0]
	//DEBUG_VALUE: sc_bwt:num_blocks <- $x25
	//DEBUG_VALUE: sc_bwt:to_copy <- $x22
	//DEBUG_VALUE: sc_bwt:sc <- $x21
	//DEBUG_VALUE: sc_bwt:rot_table <- $x20
	//DEBUG_VALUE: sc_bwt:size <- $fp
	//DEBUG_VALUE: sc_bwt:i <- undef
	.loc	4 306 24 is_stmt 1              // sc.c:306:24
	ldr	x0, [x20, x23]
	.loc	4 306 17 is_stmt 0              // sc.c:306:17
	mov	w2, #512
	mov	w1, wzr
	bl	memset
.Ltmp126:
	//DEBUG_VALUE: sc_bwt:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] undef
	.loc	4 305 27 is_stmt 1              // sc.c:305:27
	add	x23, x23, #8                    // =8
.Ltmp127:
	.loc	4 305 13 is_stmt 0              // sc.c:305:13
	cmp	x23, #1, lsl #12                // =4096
	b.ne	.LBB7_9
.Ltmp128:
// %bb.10:                              //   in Loop: Header=BB7_8 Depth=1
	//DEBUG_VALUE: sc_bwt:outlen <- [DW_OP_plus_uconst 16] [$sp+0]
	//DEBUG_VALUE: sc_bwt:num_blocks <- $x25
	//DEBUG_VALUE: sc_bwt:to_copy <- $x22
	//DEBUG_VALUE: sc_bwt:sc <- $x21
	//DEBUG_VALUE: sc_bwt:rot_table <- $x20
	//DEBUG_VALUE: sc_bwt:size <- $fp
	//DEBUG_VALUE: sc_bwt:i <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $w22
	.loc	4 308 13 is_stmt 1              // sc.c:308:13
	cbz	w22, .LBB7_16
.Ltmp129:
// %bb.11:                              //   in Loop: Header=BB7_8 Depth=1
	//DEBUG_VALUE: sc_bwt:outlen <- [DW_OP_plus_uconst 16] [$sp+0]
	//DEBUG_VALUE: sc_bwt:num_blocks <- $x25
	//DEBUG_VALUE: sc_bwt:to_copy <- $x22
	//DEBUG_VALUE: sc_bwt:sc <- $x21
	//DEBUG_VALUE: sc_bwt:rot_table <- $x20
	//DEBUG_VALUE: sc_bwt:i <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $w22
	//DEBUG_VALUE: sc_bwt:size <- $fp
	.loc	4 0 0 is_stmt 0                 // sc.c:0:0
	sub	w24, w22, #1                    // =1
.Ltmp130:
	//DEBUG_VALUE: sc_bwt:i <- $w24
	mov	x23, x22
	b	.LBB7_13
.Ltmp131:
.LBB7_12:                               //   in Loop: Header=BB7_13 Depth=2
	//DEBUG_VALUE: sc_bwt:outlen <- [DW_OP_plus_uconst 16] [$sp+0]
	//DEBUG_VALUE: sc_bwt:num_blocks <- $x25
	//DEBUG_VALUE: sc_bwt:to_copy <- $x22
	//DEBUG_VALUE: sc_bwt:sc <- $x21
	//DEBUG_VALUE: sc_bwt:rot_table <- $x20
	//DEBUG_VALUE: sc_bwt:i <- $w24
	//DEBUG_VALUE: sc_bwt:size <- $fp
	.loc	4 313 17 is_stmt 1              // sc.c:313:17
	mov	x0, x20
	mov	w1, w22
	mov	x2, x21
	bl	_sort
.Ltmp132:
	//DEBUG_VALUE: sc_bwt:i <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $x23
	.loc	4 0 0 is_stmt 0                 // sc.c:0:0
	subs	w24, w24, #1                    // =1
.Ltmp133:
	//DEBUG_VALUE: sc_bwt:i <- $w24
	.loc	4 308 13 is_stmt 1              // sc.c:308:13
	b.mi	.LBB7_16
.Ltmp134:
.LBB7_13:                               //   Parent Loop BB7_8 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB7_15 Depth 3
	//DEBUG_VALUE: sc_bwt:outlen <- [DW_OP_plus_uconst 16] [$sp+0]
	//DEBUG_VALUE: sc_bwt:num_blocks <- $x25
	//DEBUG_VALUE: sc_bwt:to_copy <- $x22
	//DEBUG_VALUE: sc_bwt:sc <- $x21
	//DEBUG_VALUE: sc_bwt:rot_table <- $x20
	//DEBUG_VALUE: sc_bwt:i <- $w24
	//DEBUG_VALUE: sc_bwt:size <- $fp
	.loc	4 0 0 is_stmt 0                 // sc.c:0:0
	sub	x23, x23, #1                    // =1
.Ltmp135:
	//DEBUG_VALUE: sc_bwt:j <- 0
	.loc	4 310 17 is_stmt 1              // sc.c:310:17
	cbz	x22, .LBB7_12
.Ltmp136:
// %bb.14:                              // %.preheader5
                                        //   in Loop: Header=BB7_13 Depth=2
	//DEBUG_VALUE: sc_bwt:outlen <- [DW_OP_plus_uconst 16] [$sp+0]
	//DEBUG_VALUE: sc_bwt:num_blocks <- $x25
	//DEBUG_VALUE: sc_bwt:to_copy <- $x22
	//DEBUG_VALUE: sc_bwt:sc <- $x21
	//DEBUG_VALUE: sc_bwt:rot_table <- $x20
	//DEBUG_VALUE: sc_bwt:i <- $w24
	//DEBUG_VALUE: sc_bwt:size <- $fp
	//DEBUG_VALUE: sc_bwt:j <- 0
	.loc	4 0 17 is_stmt 0                // sc.c:0:17
	mov	x8, xzr
.Ltmp137:
.LBB7_15:                               //   Parent Loop BB7_8 Depth=1
                                        //     Parent Loop BB7_13 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	//DEBUG_VALUE: sc_bwt:outlen <- [DW_OP_plus_uconst 16] [$sp+0]
	//DEBUG_VALUE: sc_bwt:num_blocks <- $x25
	//DEBUG_VALUE: sc_bwt:to_copy <- $x22
	//DEBUG_VALUE: sc_bwt:sc <- $x21
	//DEBUG_VALUE: sc_bwt:rot_table <- $x20
	//DEBUG_VALUE: sc_bwt:i <- $w24
	//DEBUG_VALUE: sc_bwt:size <- $fp
	//DEBUG_VALUE: sc_bwt:j <- $x8
	.loc	4 311 39 is_stmt 1              // sc.c:311:39
	ldrb	w9, [x27, x8]
	.loc	4 311 21 is_stmt 0              // sc.c:311:21
	ldr	x10, [x20, x8, lsl #3]
	.loc	4 310 42 is_stmt 1              // sc.c:310:42
	add	x8, x8, #1                      // =1
.Ltmp138:
	//DEBUG_VALUE: sc_bwt:j <- $x8
	.loc	4 310 17 is_stmt 0              // sc.c:310:17
	cmp	x22, x8
.Ltmp139:
	.loc	4 311 37 is_stmt 1              // sc.c:311:37
	strb	w9, [x10, x23]
.Ltmp140:
	.loc	4 310 17                        // sc.c:310:17
	b.hi	.LBB7_15
	b	.LBB7_12
.Ltmp141:
.LBB7_16:                               //   in Loop: Header=BB7_8 Depth=1
	//DEBUG_VALUE: sc_bwt:outlen <- [DW_OP_plus_uconst 16] [$sp+0]
	//DEBUG_VALUE: sc_bwt:num_blocks <- $x25
	//DEBUG_VALUE: sc_bwt:to_copy <- $x22
	//DEBUG_VALUE: sc_bwt:sc <- $x21
	//DEBUG_VALUE: sc_bwt:rot_table <- $x20
	//DEBUG_VALUE: sc_bwt:size <- $fp
	//DEBUG_VALUE: sc_bwt:num_blocks <- undef
	//DEBUG_VALUE: sc_bwt:i <- 0
	.loc	4 317 13                        // sc.c:317:13
	cbz	x22, .LBB7_7
.Ltmp142:
// %bb.17:                              //   in Loop: Header=BB7_8 Depth=1
	//DEBUG_VALUE: sc_bwt:outlen <- [DW_OP_plus_uconst 16] [$sp+0]
	//DEBUG_VALUE: sc_bwt:to_copy <- $x22
	//DEBUG_VALUE: sc_bwt:sc <- $x21
	//DEBUG_VALUE: sc_bwt:rot_table <- $x20
	//DEBUG_VALUE: sc_bwt:size <- $fp
	//DEBUG_VALUE: sc_bwt:i <- 0
	.loc	4 0 0 is_stmt 0                 // sc.c:0:0
	ldr	x1, [x20, x26, lsl #3]
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
.Ltmp143:
	.loc	4 317 13                        // sc.c:317:13
	add	x0, x8, x28
.Ltmp144:
	.loc	4 318 60 is_stmt 1              // sc.c:318:60
	mov	x2, x22
	bl	memcpy
.Ltmp145:
	//DEBUG_VALUE: sc_bwt:i <- undef
	.loc	4 0 60 is_stmt 0                // sc.c:0:60
	b	.LBB7_7
.Ltmp146:
.LBB7_18:
	//DEBUG_VALUE: sc_bwt:outlen <- $x22
	//DEBUG_VALUE: sc_bwt:sc <- $x21
	//DEBUG_VALUE: sc_bwt:rot_table <- $x20
	//DEBUG_VALUE: sc_bwt:op <- $w23
	//DEBUG_VALUE: sc_bwt:out <- $fp
	//DEBUG_VALUE: sc_bwt:num_blocks <- 0
	//DEBUG_VALUE: sc_bwt:to_copy <- 0
	//DEBUG_VALUE: sc_bwt:size <- 0
	//DEBUG_VALUE: sc_bwt:size <- 0
	//DEBUG_VALUE: sc_bwt:num_blocks <- 0
	.loc	4 263 29 is_stmt 1              // sc.c:263:29
	ldr	x8, [x21, #104]
.Ltmp147:
	.loc	4 263 17 is_stmt 0              // sc.c:263:17
	cbz	x8, .LBB7_33
.Ltmp148:
// %bb.19:
	//DEBUG_VALUE: sc_bwt:outlen <- $x22
	//DEBUG_VALUE: sc_bwt:sc <- $x21
	//DEBUG_VALUE: sc_bwt:rot_table <- $x20
	//DEBUG_VALUE: sc_bwt:op <- $w23
	//DEBUG_VALUE: sc_bwt:out <- $fp
	//DEBUG_VALUE: sc_bwt:num_blocks <- 0
	//DEBUG_VALUE: sc_bwt:to_copy <- 0
	//DEBUG_VALUE: sc_bwt:size <- 0
	.loc	4 0 17                          // sc.c:0:17
	mov	x24, xzr
	mov	x25, xzr
	.loc	4 263 17                        // sc.c:263:17
	add	x26, x29, #2                    // =2
	mov	w27, #512
	b	.LBB7_21
.Ltmp149:
.LBB7_20:                               //   in Loop: Header=BB7_21 Depth=1
	//DEBUG_VALUE: sc_bwt:size <- $x25
	//DEBUG_VALUE: sc_bwt:to_copy <- $x22
	//DEBUG_VALUE: sc_bwt:sc <- $x21
	//DEBUG_VALUE: sc_bwt:rot_table <- $x20
	//DEBUG_VALUE: sc_bwt:oidx <- $w19
	//DEBUG_VALUE: sc_bwt:out <- $fp
	.loc	4 263 29                        // sc.c:263:29
	ldr	x8, [x21, #104]
.Ltmp150:
	.loc	4 0 0                           // sc.c:0:0
	add	x24, x24, #1                    // =1
.Ltmp151:
	//DEBUG_VALUE: sc_bwt:num_blocks <- $x24
	.loc	4 283 18 is_stmt 1              // sc.c:283:18
	add	x25, x22, x25
.Ltmp152:
	//DEBUG_VALUE: sc_bwt:size <- $x25
	.loc	4 263 17                        // sc.c:263:17
	cmp	x8, x25
	add	x26, x26, #2                    // =2
	b.ls	.LBB7_33
.Ltmp153:
.LBB7_21:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB7_23 Depth 2
                                        //     Child Loop BB7_26 Depth 2
                                        //     Child Loop BB7_32 Depth 2
	//DEBUG_VALUE: sc_bwt:sc <- $x21
	//DEBUG_VALUE: sc_bwt:rot_table <- $x20
	//DEBUG_VALUE: sc_bwt:out <- $fp
	//DEBUG_VALUE: sc_bwt:size <- $x25
	//DEBUG_VALUE: sc_bwt:num_blocks <- $x24
	.loc	4 265 36                        // sc.c:265:36
	sub	x8, x8, x25
	.loc	4 265 23 is_stmt 0              // sc.c:265:23
	cmp	x8, #512                        // =512
	csel	x22, x8, x27, lo
.Ltmp154:
	//DEBUG_VALUE: sc_bwt:outlen <- [DW_OP_LLVM_entry_value 1] $x2
	//DEBUG_VALUE: sc_bwt:to_copy <- $x22
	.loc	4 266 13 is_stmt 1              // sc.c:266:13
	add	x0, sp, #32                     // =32
	mov	w2, #512
	mov	w1, wzr
	bl	memset
.Ltmp155:
	.loc	4 267 32                        // sc.c:267:32
	ldr	x8, [x21, #96]
	.loc	4 267 28 is_stmt 0              // sc.c:267:28
	add	x1, x8, x25
	.loc	4 267 13                        // sc.c:267:13
	add	x0, sp, #32                     // =32
	mov	x2, x22
	bl	memcpy
.Ltmp156:
	//DEBUG_VALUE: sc_bwt:i <- 0
	.loc	4 269 13 is_stmt 1              // sc.c:269:13
	cbz	x22, .LBB7_24
.Ltmp157:
// %bb.22:                              // %.preheader3
                                        //   in Loop: Header=BB7_21 Depth=1
	//DEBUG_VALUE: sc_bwt:size <- $x25
	//DEBUG_VALUE: sc_bwt:num_blocks <- $x24
	//DEBUG_VALUE: sc_bwt:to_copy <- $x22
	//DEBUG_VALUE: sc_bwt:sc <- $x21
	//DEBUG_VALUE: sc_bwt:rot_table <- $x20
	//DEBUG_VALUE: sc_bwt:out <- $fp
	//DEBUG_VALUE: sc_bwt:i <- 0
	.loc	4 0 13 is_stmt 0                // sc.c:0:13
	mov	x23, xzr
.Ltmp158:
	//DEBUG_VALUE: sc_bwt:op <- [DW_OP_LLVM_entry_value 1] $w1
.LBB7_23:                               //   Parent Loop BB7_21 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	//DEBUG_VALUE: sc_bwt:size <- $x25
	//DEBUG_VALUE: sc_bwt:num_blocks <- $x24
	//DEBUG_VALUE: sc_bwt:to_copy <- $x22
	//DEBUG_VALUE: sc_bwt:sc <- $x21
	//DEBUG_VALUE: sc_bwt:rot_table <- $x20
	//DEBUG_VALUE: sc_bwt:out <- $fp
	//DEBUG_VALUE: sc_bwt:i <- $x23
	.loc	4 271 24 is_stmt 1              // sc.c:271:24
	lsl	x19, x23, #3
	ldr	x0, [x20, x19]
	.loc	4 271 17 is_stmt 0              // sc.c:271:17
	add	x1, sp, #32                     // =32
	mov	x2, x22
	bl	memcpy
.Ltmp159:
	.loc	4 272 27 is_stmt 1              // sc.c:272:27
	ldr	x0, [x20, x19]
	.loc	4 272 17 is_stmt 0              // sc.c:272:17
	mov	x1, x22
	mov	x2, x23
	bl	_rot_left
.Ltmp160:
	.loc	4 269 38 is_stmt 1              // sc.c:269:38
	add	x23, x23, #1                    // =1
.Ltmp161:
	//DEBUG_VALUE: sc_bwt:i <- $x23
	.loc	4 269 13 is_stmt 0              // sc.c:269:13
	cmp	x22, x23
	b.hi	.LBB7_23
.Ltmp162:
.LBB7_24:                               //   in Loop: Header=BB7_21 Depth=1
	//DEBUG_VALUE: sc_bwt:size <- $x25
	//DEBUG_VALUE: sc_bwt:num_blocks <- $x24
	//DEBUG_VALUE: sc_bwt:to_copy <- $x22
	//DEBUG_VALUE: sc_bwt:sc <- $x21
	//DEBUG_VALUE: sc_bwt:rot_table <- $x20
	//DEBUG_VALUE: sc_bwt:out <- $fp
	.loc	4 274 13 is_stmt 1              // sc.c:274:13
	mov	x0, x20
	mov	w1, w22
	mov	x2, x21
	bl	_sort
.Ltmp163:
	//DEBUG_VALUE: sc_bwt:oidx <- 0
	.loc	4 275 13                        // sc.c:275:13
	cbz	x22, .LBB7_29
.Ltmp164:
// %bb.25:                              // %.preheader1
                                        //   in Loop: Header=BB7_21 Depth=1
	//DEBUG_VALUE: sc_bwt:size <- $x25
	//DEBUG_VALUE: sc_bwt:num_blocks <- $x24
	//DEBUG_VALUE: sc_bwt:to_copy <- $x22
	//DEBUG_VALUE: sc_bwt:sc <- $x21
	//DEBUG_VALUE: sc_bwt:rot_table <- $x20
	//DEBUG_VALUE: sc_bwt:out <- $fp
	//DEBUG_VALUE: sc_bwt:oidx <- 0
	.loc	4 0 13 is_stmt 0                // sc.c:0:13
	mov	x19, xzr
.Ltmp165:
.LBB7_26:                               //   Parent Loop BB7_21 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	//DEBUG_VALUE: sc_bwt:size <- $x25
	//DEBUG_VALUE: sc_bwt:num_blocks <- $x24
	//DEBUG_VALUE: sc_bwt:to_copy <- $x22
	//DEBUG_VALUE: sc_bwt:sc <- $x21
	//DEBUG_VALUE: sc_bwt:rot_table <- $x20
	//DEBUG_VALUE: sc_bwt:out <- $fp
	//DEBUG_VALUE: sc_bwt:oidx <- undef
	.loc	4 276 28 is_stmt 1              // sc.c:276:28
	ldr	x0, [x20, x19, lsl #3]
	.loc	4 276 21 is_stmt 0              // sc.c:276:21
	add	x1, sp, #32                     // =32
	mov	x2, x22
	bl	bcmp
.Ltmp166:
	.loc	4 276 21                        // sc.c:276:21
	cbz	w0, .LBB7_30
.Ltmp167:
// %bb.27:                              //   in Loop: Header=BB7_26 Depth=2
	//DEBUG_VALUE: sc_bwt:size <- $x25
	//DEBUG_VALUE: sc_bwt:num_blocks <- $x24
	//DEBUG_VALUE: sc_bwt:to_copy <- $x22
	//DEBUG_VALUE: sc_bwt:sc <- $x21
	//DEBUG_VALUE: sc_bwt:rot_table <- $x20
	//DEBUG_VALUE: sc_bwt:out <- $fp
	.loc	4 275 44 is_stmt 1              // sc.c:275:44
	add	w8, w19, #1                     // =1
.Ltmp168:
	//DEBUG_VALUE: sc_bwt:oidx <- $w8
	.loc	4 275 28 is_stmt 0              // sc.c:275:28
	and	x19, x8, #0xffff
.Ltmp169:
	.loc	4 275 13                        // sc.c:275:13
	cmp	x22, x19
	b.hi	.LBB7_26
.Ltmp170:
// %bb.28:                              //   in Loop: Header=BB7_21 Depth=1
	//DEBUG_VALUE: sc_bwt:size <- $x25
	//DEBUG_VALUE: sc_bwt:num_blocks <- $x24
	//DEBUG_VALUE: sc_bwt:to_copy <- $x22
	//DEBUG_VALUE: sc_bwt:sc <- $x21
	//DEBUG_VALUE: sc_bwt:rot_table <- $x20
	//DEBUG_VALUE: sc_bwt:oidx <- $w8
	//DEBUG_VALUE: sc_bwt:out <- $fp
	.loc	4 0 0                           // sc.c:0:0
	mov	w19, w8
	b	.LBB7_30
.Ltmp171:
.LBB7_29:                               //   in Loop: Header=BB7_21 Depth=1
	//DEBUG_VALUE: sc_bwt:size <- $x25
	//DEBUG_VALUE: sc_bwt:num_blocks <- $x24
	//DEBUG_VALUE: sc_bwt:to_copy <- $x22
	//DEBUG_VALUE: sc_bwt:sc <- $x21
	//DEBUG_VALUE: sc_bwt:rot_table <- $x20
	//DEBUG_VALUE: sc_bwt:out <- $fp
	//DEBUG_VALUE: sc_bwt:oidx <- 0
	mov	w19, wzr
.Ltmp172:
.LBB7_30:                               //   in Loop: Header=BB7_21 Depth=1
	//DEBUG_VALUE: sc_bwt:size <- $x25
	//DEBUG_VALUE: sc_bwt:num_blocks <- $x24
	//DEBUG_VALUE: sc_bwt:to_copy <- $x22
	//DEBUG_VALUE: sc_bwt:sc <- $x21
	//DEBUG_VALUE: sc_bwt:rot_table <- $x20
	//DEBUG_VALUE: sc_bwt:out <- $fp
	//DEBUG_VALUE: sc_bwt:oidx <- $w19
	.loc	4 279 42 is_stmt 1              // sc.c:279:42
	add	x8, x25, x24, lsl #1
	.loc	4 279 72 is_stmt 0              // sc.c:279:72
	strh	w19, [x29, x8]
.Ltmp173:
	//DEBUG_VALUE: sc_bwt:i <- 0
	//DEBUG_VALUE: sc_bwt:num_blocks <- undef
	.loc	4 281 13 is_stmt 1              // sc.c:281:13
	cbz	x22, .LBB7_20
.Ltmp174:
// %bb.31:                              //   in Loop: Header=BB7_21 Depth=1
	//DEBUG_VALUE: sc_bwt:size <- $x25
	//DEBUG_VALUE: sc_bwt:to_copy <- $x22
	//DEBUG_VALUE: sc_bwt:sc <- $x21
	//DEBUG_VALUE: sc_bwt:rot_table <- $x20
	//DEBUG_VALUE: sc_bwt:oidx <- $w19
	//DEBUG_VALUE: sc_bwt:out <- $fp
	//DEBUG_VALUE: sc_bwt:i <- 0
	.loc	4 0 13 is_stmt 0                // sc.c:0:13
	mov	x8, xzr
.Ltmp175:
	sub	x9, x22, #1                     // =1
.Ltmp176:
	.loc	4 281 13                        // sc.c:281:13
	add	x10, x26, x25
.Ltmp177:
.LBB7_32:                               //   Parent Loop BB7_21 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	//DEBUG_VALUE: sc_bwt:size <- $x25
	//DEBUG_VALUE: sc_bwt:to_copy <- $x22
	//DEBUG_VALUE: sc_bwt:sc <- $x21
	//DEBUG_VALUE: sc_bwt:rot_table <- $x20
	//DEBUG_VALUE: sc_bwt:oidx <- $w19
	//DEBUG_VALUE: sc_bwt:out <- $fp
	//DEBUG_VALUE: sc_bwt:i <- $x8
	.loc	4 282 62 is_stmt 1              // sc.c:282:62
	ldr	x11, [x20, x8, lsl #3]
	ldrb	w11, [x11, x9]
	.loc	4 282 60 is_stmt 0              // sc.c:282:60
	strb	w11, [x10, x8]
	.loc	4 281 38 is_stmt 1              // sc.c:281:38
	add	x8, x8, #1                      // =1
.Ltmp178:
	//DEBUG_VALUE: sc_bwt:i <- $x8
	.loc	4 281 13 is_stmt 0              // sc.c:281:13
	cmp	x22, x8
	b.hi	.LBB7_32
	b	.LBB7_20
.Ltmp179:
.LBB7_33:                               // %.preheader
	//DEBUG_VALUE: sc_bwt:sc <- $x21
	//DEBUG_VALUE: sc_bwt:rot_table <- $x20
	.loc	4 0 13                          // sc.c:0:13
	mov	x19, xzr
.Ltmp180:
.LBB7_34:                               // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: sc_bwt:sc <- $x21
	//DEBUG_VALUE: sc_bwt:rot_table <- $x20
	//DEBUG_VALUE: sc_bwt:i <- undef
	.loc	4 329 14 is_stmt 1              // sc.c:329:14
	ldr	x0, [x20, x19]
	.loc	4 329 9 is_stmt 0               // sc.c:329:9
	bl	free
.Ltmp181:
	//DEBUG_VALUE: sc_bwt:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] undef
	.loc	4 328 19 is_stmt 1              // sc.c:328:19
	add	x19, x19, #8                    // =8
.Ltmp182:
	.loc	4 328 5 is_stmt 0               // sc.c:328:5
	cmp	x19, #1, lsl #12                // =4096
	b.ne	.LBB7_34
.Ltmp183:
// %bb.35:
	//DEBUG_VALUE: sc_bwt:sc <- $x21
	//DEBUG_VALUE: sc_bwt:rot_table <- $x20
	.loc	4 330 5 is_stmt 1               // sc.c:330:5
	mov	x0, x20
	bl	free
.Ltmp184:
.LBB7_36:
	.loc	4 333 1                         // sc.c:333:1
	mov	x0, x29
	add	sp, sp, #544                    // =544
	ldp	x20, x19, [sp, #80]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             // 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             // 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #96             // 16-byte Folded Reload
	ret
.Ltmp185:
.Lfunc_end7:
	.size	sc_bwt, .Lfunc_end7-sc_bwt
	.cfi_endproc
                                        // -- End function
	.globl	sc_mtf                          // -- Begin function sc_mtf
	.p2align	2
	.type	sc_mtf,@function
sc_mtf:                                 // @sc_mtf
.Lfunc_begin8:
	.loc	4 336 0                         // sc.c:336:0
	.cfi_startproc
// %bb.0:
	stp	x29, x30, [sp, #-96]!           // 16-byte Folded Spill
	stp	x28, x27, [sp, #16]             // 16-byte Folded Spill
	stp	x26, x25, [sp, #32]             // 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             // 16-byte Folded Spill
	sub	sp, sp, #2304                   // =2304
	.cfi_def_cfa_offset 2400
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w24, -48
	.cfi_offset w25, -56
	.cfi_offset w26, -64
	.cfi_offset w27, -72
	.cfi_offset w28, -80
	.cfi_offset w30, -88
	.cfi_offset w29, -96
	mov	x19, x2
	mov	x21, x0
.Ltmp186:
	//DEBUG_VALUE: sc_mtf:sc <- $x21
	//DEBUG_VALUE: sc_mtf:op <- $w1
	//DEBUG_VALUE: sc_mtf:outlen <- $x19
	.loc	4 0 0 prologue_end              // sc.c:0:0
	add	x25, sp, #2048                  // =2048
.Ltmp187:
	//DEBUG_VALUE: sc_mtf:sc <- $x0
	//DEBUG_VALUE: sc_mtf:op <- $w1
	//DEBUG_VALUE: sc_mtf:outlen <- $x2
	.loc	4 340 9                         // sc.c:340:9
	cbz	w1, .LBB8_3
.Ltmp188:
// %bb.1:
	//DEBUG_VALUE: sc_mtf:outlen <- $x2
	//DEBUG_VALUE: sc_mtf:sc <- $x0
	//DEBUG_VALUE: sc_mtf:op <- $w1
	.loc	4 398 36                        // sc.c:398:36
	ldr	x8, [x21, #96]
	.loc	4 398 21 is_stmt 0              // sc.c:398:21
	ldr	x22, [x8]
.Ltmp189:
	//DEBUG_VALUE: sz <- $x22
	.loc	4 399 13 is_stmt 1              // sc.c:399:13
	cmp	x22, #1, lsl #12                // =4096
	b.ls	.LBB8_21
.Ltmp190:
// %bb.2:
	//DEBUG_VALUE: sz <- $x22
	//DEBUG_VALUE: sc_mtf:outlen <- $x2
	//DEBUG_VALUE: sc_mtf:sc <- $x0
	//DEBUG_VALUE: sc_mtf:op <- $w1
	.loc	4 0 0 is_stmt 0                 // sc.c:0:0
	mov	x20, xzr
	b	.LBB8_33
.Ltmp191:
.LBB8_3:
	//DEBUG_VALUE: sc_mtf:outlen <- $x2
	//DEBUG_VALUE: sc_mtf:sc <- $x0
	//DEBUG_VALUE: sc_mtf:op <- $w1
	.loc	4 343 41 is_stmt 1              // sc.c:343:41
	ldr	x23, [x21, #104]
	.loc	4 343 30 is_stmt 0              // sc.c:343:30
	mov	x0, x23
.Ltmp192:
	//DEBUG_VALUE: sc_mtf:sc <- [DW_OP_LLVM_entry_value 1] $x0
	bl	malloc
.Ltmp193:
	//DEBUG_VALUE: sc_mtf:op <- [DW_OP_LLVM_entry_value 1] $w1
	mov	x22, x0
.Ltmp194:
	//DEBUG_VALUE: out <- $x22
	.loc	4 344 52 is_stmt 1              // sc.c:344:52
	lsl	x24, x23, #1
	.loc	4 344 56 is_stmt 0              // sc.c:344:56
	add	x0, x24, #4                     // =4
	.loc	4 344 32                        // sc.c:344:32
	bl	malloc
.Ltmp195:
	mov	x20, x0
.Ltmp196:
	//DEBUG_VALUE: out_c <- $x20
	.loc	4 345 26 is_stmt 1              // sc.c:345:26
	str	x23, [x0]
	.loc	4 346 9                         // sc.c:346:9
	mov	x0, x22
	mov	w1, wzr
	mov	x2, x23
	bl	memset
.Ltmp197:
	//DEBUG_VALUE: sc_mtf:i <- 0
	.loc	4 0 9 is_stmt 0                 // sc.c:0:9
	mov	x8, xzr
.Ltmp198:
.LBB8_4:                                // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: out <- $x22
	//DEBUG_VALUE: out_c <- $x20
	//DEBUG_VALUE: sc_mtf:op <- [DW_OP_LLVM_entry_value 1] $w1
	//DEBUG_VALUE: sc_mtf:sc <- [DW_OP_LLVM_entry_value 1] $x0
	//DEBUG_VALUE: sc_mtf:i <- $x8
	.loc	4 349 21 is_stmt 1              // sc.c:349:21
	strb	w8, [x25, x8]
	.loc	4 348 29                        // sc.c:348:29
	add	x8, x8, #1                      // =1
.Ltmp199:
	//DEBUG_VALUE: sc_mtf:i <- $x8
	.loc	4 348 9 is_stmt 0               // sc.c:348:9
	cmp	x8, #32                         // =32
	b.ne	.LBB8_4
.Ltmp200:
// %bb.5:
	//DEBUG_VALUE: out <- $x22
	//DEBUG_VALUE: out_c <- $x20
	//DEBUG_VALUE: sc_mtf:i <- $x8
	//DEBUG_VALUE: sc_mtf:op <- [DW_OP_LLVM_entry_value 1] $w1
	//DEBUG_VALUE: sc_mtf:sc <- [DW_OP_LLVM_entry_value 1] $x0
	.loc	4 350 9 is_stmt 1               // sc.c:350:9
	ldp	x9, x8, [x21, #16]
.Ltmp201:
	ldp	x11, x10, [x21]
	str	x8, [sp, #2104]
	str	x9, [sp, #2096]
	str	x10, [sp, #2088]
	str	x11, [sp, #2080]
	ldp	x9, x8, [x21, #48]
	ldp	x11, x10, [x21, #32]
	str	x8, [sp, #2136]
	str	x9, [sp, #2128]
	str	x10, [sp, #2120]
	str	x11, [sp, #2112]
	ldur	x8, [x21, #87]
	ldp	x11, x9, [x21, #72]
	ldr	x10, [x21, #64]
	stur	x8, [x25, #119]
	mov	w8, #127
.Ltmp202:
	//DEBUG_VALUE: sc_mtf:i <- 127
	str	x9, [sp, #2160]
	str	x11, [sp, #2152]
	str	x10, [sp, #2144]
	add	x9, sp, #2048                   // =2048
.Ltmp203:
.LBB8_6:                                // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: out <- $x22
	//DEBUG_VALUE: out_c <- $x20
	//DEBUG_VALUE: sc_mtf:op <- [DW_OP_LLVM_entry_value 1] $w1
	//DEBUG_VALUE: sc_mtf:sc <- [DW_OP_LLVM_entry_value 1] $x0
	//DEBUG_VALUE: sc_mtf:i <- $x8
	.loc	4 352 21                        // sc.c:352:21
	strb	w8, [x9, x8]
	.loc	4 351 41                        // sc.c:351:41
	add	x8, x8, #1                      // =1
.Ltmp204:
	//DEBUG_VALUE: sc_mtf:i <- $x8
	.loc	4 351 9 is_stmt 0               // sc.c:351:9
	cmp	x8, #256                        // =256
	b.ne	.LBB8_6
.Ltmp205:
// %bb.7:
	//DEBUG_VALUE: out <- $x22
	//DEBUG_VALUE: out_c <- $x20
	//DEBUG_VALUE: sc_mtf:i <- $x8
	//DEBUG_VALUE: sc_mtf:op <- [DW_OP_LLVM_entry_value 1] $w1
	//DEBUG_VALUE: sc_mtf:sc <- [DW_OP_LLVM_entry_value 1] $x0
	//DEBUG_VALUE: sc_mtf:i <- 0
	.loc	4 354 9 is_stmt 1               // sc.c:354:9
	cbz	x23, .LBB8_14
.Ltmp206:
// %bb.8:
	//DEBUG_VALUE: out <- $x22
	//DEBUG_VALUE: out_c <- $x20
	//DEBUG_VALUE: sc_mtf:i <- 0
	//DEBUG_VALUE: sc_mtf:op <- [DW_OP_LLVM_entry_value 1] $w1
	//DEBUG_VALUE: sc_mtf:sc <- [DW_OP_LLVM_entry_value 1] $x0
	.loc	4 0 9 is_stmt 0                 // sc.c:0:9
	mov	x26, xzr
.Ltmp207:
	ldr	x27, [x21, #96]
	add	x28, sp, #2048                  // =2048
.Ltmp208:
	orr	x25, x28, #0x1
	b	.LBB8_11
.Ltmp209:
.LBB8_9:                                //   in Loop: Header=BB8_11 Depth=1
	//DEBUG_VALUE: sc_mtf:i <- $x26
	//DEBUG_VALUE: out <- $x22
	//DEBUG_VALUE: out_c <- $x20
	//DEBUG_VALUE: sc_mtf:j <- $x2
	//DEBUG_VALUE: sc_mtf:op <- [DW_OP_LLVM_entry_value 1] $w1
	//DEBUG_VALUE: sc_mtf:sc <- [DW_OP_LLVM_entry_value 1] $x0
	//DEBUG_VALUE: sc_mtf:j <- [DW_OP_LLVM_convert 8 5, DW_OP_LLVM_convert 32 5, DW_OP_stack_value] undef
	.loc	4 360 28 is_stmt 1              // sc.c:360:28
	strb	w2, [x22, x26]
.Ltmp210:
.LBB8_10:                               //   in Loop: Header=BB8_11 Depth=1
	//DEBUG_VALUE: sc_mtf:i <- $x26
	//DEBUG_VALUE: out <- $x22
	//DEBUG_VALUE: out_c <- $x20
	//DEBUG_VALUE: sc_mtf:op <- [DW_OP_LLVM_entry_value 1] $w1
	//DEBUG_VALUE: sc_mtf:sc <- [DW_OP_LLVM_entry_value 1] $x0
	.loc	4 364 13                        // sc.c:364:13
	add	x1, sp, #2048                   // =2048
	mov	x0, x25
	bl	memmove
.Ltmp211:
	.loc	4 365 21                        // sc.c:365:21
	ldrb	w8, [x27, x26]
.Ltmp212:
	.loc	4 354 39                        // sc.c:354:39
	add	x26, x26, #1                    // =1
.Ltmp213:
	//DEBUG_VALUE: sc_mtf:i <- $x26
	.loc	4 354 9 is_stmt 0               // sc.c:354:9
	cmp	x26, x23
.Ltmp214:
	.loc	4 365 19 is_stmt 1              // sc.c:365:19
	strb	w8, [sp, #2048]
.Ltmp215:
	.loc	4 354 9                         // sc.c:354:9
	b.eq	.LBB8_14
.Ltmp216:
.LBB8_11:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB8_12 Depth 2
	//DEBUG_VALUE: out <- $x22
	//DEBUG_VALUE: out_c <- $x20
	//DEBUG_VALUE: sc_mtf:op <- [DW_OP_LLVM_entry_value 1] $w1
	//DEBUG_VALUE: sc_mtf:sc <- [DW_OP_LLVM_entry_value 1] $x0
	//DEBUG_VALUE: sc_mtf:i <- $x26
	//DEBUG_VALUE: sc_mtf:j <- 0
	.loc	4 0 0 is_stmt 0                 // sc.c:0:0
	ldrb	w8, [x27, x26]
	mov	x2, xzr
.Ltmp217:
.LBB8_12:                               //   Parent Loop BB8_11 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	//DEBUG_VALUE: sc_mtf:i <- $x26
	//DEBUG_VALUE: out <- $x22
	//DEBUG_VALUE: out_c <- $x20
	//DEBUG_VALUE: sc_mtf:op <- [DW_OP_LLVM_entry_value 1] $w1
	//DEBUG_VALUE: sc_mtf:sc <- [DW_OP_LLVM_entry_value 1] $x0
	//DEBUG_VALUE: sc_mtf:j <- $x2
	.loc	4 358 36 is_stmt 1              // sc.c:358:36
	ldrb	w9, [x28, x2]
.Ltmp218:
	.loc	4 358 21 is_stmt 0              // sc.c:358:21
	cmp	w8, w9
	b.eq	.LBB8_9
.Ltmp219:
// %bb.13:                              //   in Loop: Header=BB8_12 Depth=2
	//DEBUG_VALUE: sc_mtf:i <- $x26
	//DEBUG_VALUE: out <- $x22
	//DEBUG_VALUE: out_c <- $x20
	//DEBUG_VALUE: sc_mtf:j <- $x2
	//DEBUG_VALUE: sc_mtf:op <- [DW_OP_LLVM_entry_value 1] $w1
	//DEBUG_VALUE: sc_mtf:sc <- [DW_OP_LLVM_entry_value 1] $x0
	.loc	4 356 43 is_stmt 1              // sc.c:356:43
	add	x2, x2, #1                      // =1
.Ltmp220:
	//DEBUG_VALUE: sc_mtf:j <- $x2
	.loc	4 356 13 is_stmt 0              // sc.c:356:13
	cmp	x2, #256                        // =256
	b.ne	.LBB8_12
	b	.LBB8_10
.Ltmp221:
.LBB8_14:
	//DEBUG_VALUE: out <- $x22
	//DEBUG_VALUE: out_c <- $x20
	//DEBUG_VALUE: sc_mtf:op <- [DW_OP_LLVM_entry_value 1] $w1
	//DEBUG_VALUE: sc_mtf:sc <- [DW_OP_LLVM_entry_value 1] $x0
	.loc	4 367 22 is_stmt 1              // sc.c:367:22
	add	x23, x20, #4                    // =4
	.loc	4 367 9 is_stmt 0               // sc.c:367:9
	mov	x0, x23
	mov	w1, wzr
	mov	x2, x24
	bl	memset
.Ltmp222:
	.loc	4 368 22 is_stmt 1              // sc.c:368:22
	mov	x0, x23
	bl	bit_new
.Ltmp223:
	.loc	4 369 29                        // sc.c:369:29
	ldr	x8, [x21, #104]
.Ltmp224:
	.loc	4 368 22                        // sc.c:368:22
	mov	x23, x0
.Ltmp225:
	//DEBUG_VALUE: bio <- $x23
	//DEBUG_VALUE: sc_mtf:i <- 0
	.loc	4 369 9                         // sc.c:369:9
	cbz	x8, .LBB8_20
.Ltmp226:
// %bb.15:                              // %.preheader
	//DEBUG_VALUE: bio <- $x23
	//DEBUG_VALUE: out <- $x22
	//DEBUG_VALUE: out_c <- $x20
	//DEBUG_VALUE: sc_mtf:i <- 0
	//DEBUG_VALUE: sc_mtf:op <- [DW_OP_LLVM_entry_value 1] $w1
	//DEBUG_VALUE: sc_mtf:sc <- [DW_OP_LLVM_entry_value 1] $x0
	.loc	4 0 9 is_stmt 0                 // sc.c:0:9
	mov	x25, xzr
	b	.LBB8_18
.Ltmp227:
.LBB8_16:                               //   in Loop: Header=BB8_18 Depth=1
	//DEBUG_VALUE: sc_mtf:i <- $x25
	//DEBUG_VALUE: bio <- $x23
	//DEBUG_VALUE: out <- $x22
	//DEBUG_VALUE: out_c <- $x20
	//DEBUG_VALUE: sc_mtf:op <- [DW_OP_LLVM_entry_value 1] $w1
	//DEBUG_VALUE: sc_mtf:sc <- [DW_OP_LLVM_entry_value 1] $x0
	.loc	4 378 17 is_stmt 1              // sc.c:378:17
	mov	w1, #128
	mov	w2, #1
	mov	x0, x23
	bl	bit_write
.Ltmp228:
	.loc	4 379 17                        // sc.c:379:17
	ubfiz	w1, w24, #4, #4
	mov	w2, #4
	mov	x0, x23
.Ltmp229:
.LBB8_17:                               //   in Loop: Header=BB8_18 Depth=1
	//DEBUG_VALUE: sc_mtf:i <- $x25
	//DEBUG_VALUE: bio <- $x23
	//DEBUG_VALUE: out <- $x22
	//DEBUG_VALUE: out_c <- $x20
	//DEBUG_VALUE: sc_mtf:op <- [DW_OP_LLVM_entry_value 1] $w1
	//DEBUG_VALUE: sc_mtf:sc <- [DW_OP_LLVM_entry_value 1] $x0
	.loc	4 0 0 is_stmt 0                 // sc.c:0:0
	bl	bit_write
.Ltmp230:
	.loc	4 369 29 is_stmt 1              // sc.c:369:29
	ldr	x8, [x21, #104]
	.loc	4 369 39 is_stmt 0              // sc.c:369:39
	add	x25, x25, #1                    // =1
.Ltmp231:
	//DEBUG_VALUE: sc_mtf:i <- $x25
	.loc	4 369 9                         // sc.c:369:9
	cmp	x8, x25
	b.ls	.LBB8_20
.Ltmp232:
.LBB8_18:                               // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: bio <- $x23
	//DEBUG_VALUE: out <- $x22
	//DEBUG_VALUE: out_c <- $x20
	//DEBUG_VALUE: sc_mtf:op <- [DW_OP_LLVM_entry_value 1] $w1
	//DEBUG_VALUE: sc_mtf:sc <- [DW_OP_LLVM_entry_value 1] $x0
	//DEBUG_VALUE: sc_mtf:i <- $x25
	.loc	4 371 17 is_stmt 1              // sc.c:371:17
	ldrb	w24, [x22, x25]
.Ltmp233:
	.loc	4 371 17 is_stmt 0              // sc.c:371:17
	cmp	w24, #16                        // =16
	b.lo	.LBB8_16
.Ltmp234:
// %bb.19:                              //   in Loop: Header=BB8_18 Depth=1
	//DEBUG_VALUE: sc_mtf:i <- $x25
	//DEBUG_VALUE: bio <- $x23
	//DEBUG_VALUE: out <- $x22
	//DEBUG_VALUE: out_c <- $x20
	//DEBUG_VALUE: sc_mtf:op <- [DW_OP_LLVM_entry_value 1] $w1
	//DEBUG_VALUE: sc_mtf:sc <- [DW_OP_LLVM_entry_value 1] $x0
	.loc	4 373 17 is_stmt 1              // sc.c:373:17
	mov	w2, #1
	mov	x0, x23
	mov	w1, wzr
	bl	bit_write
.Ltmp235:
	.loc	4 374 17                        // sc.c:374:17
	mov	w2, #8
	mov	x0, x23
	mov	w1, w24
	b	.LBB8_17
.Ltmp236:
.LBB8_20:
	//DEBUG_VALUE: bio <- $x23
	//DEBUG_VALUE: out <- $x22
	//DEBUG_VALUE: out_c <- $x20
	//DEBUG_VALUE: sc_mtf:op <- [DW_OP_LLVM_entry_value 1] $w1
	//DEBUG_VALUE: sc_mtf:sc <- [DW_OP_LLVM_entry_value 1] $x0
	.loc	4 382 41                        // sc.c:382:41
	ldp	w9, w8, [x23, #8]
	.loc	4 382 46 is_stmt 0              // sc.c:382:46
	cmp	w8, #0                          // =0
	.loc	4 382 29                        // sc.c:382:29
	cinc	w8, w9, ne
	.loc	4 382 33                        // sc.c:382:33
	add	w8, w8, #4                      // =4
	.loc	4 382 17                        // sc.c:382:17
	str	x8, [x19]
	.loc	4 384 9 is_stmt 1               // sc.c:384:9
	mov	x0, x23
	bl	free
.Ltmp237:
	.loc	4 385 9                         // sc.c:385:9
	mov	x0, x22
	b	.LBB8_32
.Ltmp238:
.LBB8_21:
	//DEBUG_VALUE: sz <- $x22
	//DEBUG_VALUE: sc_mtf:outlen <- $x2
	//DEBUG_VALUE: sc_mtf:sc <- $x0
	//DEBUG_VALUE: sc_mtf:op <- $w1
	.loc	4 401 32                        // sc.c:401:32
	mov	x0, x22
.Ltmp239:
	//DEBUG_VALUE: sc_mtf:sc <- [DW_OP_LLVM_entry_value 1] $x0
	bl	malloc
.Ltmp240:
	//DEBUG_VALUE: sc_mtf:op <- [DW_OP_LLVM_entry_value 1] $w1
	mov	x20, x0
.Ltmp241:
	//DEBUG_VALUE: out_d <- $x20
	.loc	4 402 9                         // sc.c:402:9
	mov	x0, sp
	mov	w2, #2048
	mov	w1, wzr
	bl	memset
.Ltmp242:
	.loc	4 404 34                        // sc.c:404:34
	ldr	x8, [x21, #96]
	.loc	4 404 39 is_stmt 0              // sc.c:404:39
	add	x0, x8, #4                      // =4
	.loc	4 404 22                        // sc.c:404:22
	bl	bit_new
.Ltmp243:
	mov	x23, x0
.Ltmp244:
	//DEBUG_VALUE: bio <- $x23
	//DEBUG_VALUE: sc_mtf:i <- 0
	.loc	4 405 9 is_stmt 1               // sc.c:405:9
	cbz	x22, .LBB8_24
.Ltmp245:
// %bb.22:                              // %.preheader5
	//DEBUG_VALUE: bio <- $x23
	//DEBUG_VALUE: sz <- $x22
	//DEBUG_VALUE: out_d <- $x20
	//DEBUG_VALUE: sc_mtf:i <- 0
	//DEBUG_VALUE: sc_mtf:op <- [DW_OP_LLVM_entry_value 1] $w1
	//DEBUG_VALUE: sc_mtf:sc <- [DW_OP_LLVM_entry_value 1] $x0
	.loc	4 0 9 is_stmt 0                 // sc.c:0:9
	mov	x24, sp
	mov	w26, #4
	mov	w27, #8
	mov	x28, x22
.Ltmp246:
.LBB8_23:                               // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: bio <- $x23
	//DEBUG_VALUE: sz <- $x22
	//DEBUG_VALUE: out_d <- $x20
	//DEBUG_VALUE: sc_mtf:op <- [DW_OP_LLVM_entry_value 1] $w1
	//DEBUG_VALUE: sc_mtf:sc <- [DW_OP_LLVM_entry_value 1] $x0
	//DEBUG_VALUE: sc_mtf:i <- undef
	.loc	4 407 17 is_stmt 1              // sc.c:407:17
	mov	w1, #1
	mov	x0, x23
	bl	bit_read
.Ltmp247:
	.loc	4 407 17 is_stmt 0              // sc.c:407:17
	cmp	w0, #0                          // =0
	csel	x1, x27, x26, eq
.Ltmp248:
	.loc	4 0 0                           // sc.c:0:0
	mov	x0, x23
	bl	bit_read
.Ltmp249:
	.loc	4 405 23 is_stmt 1              // sc.c:405:23
	subs	x28, x28, #1                    // =1
.Ltmp250:
	.loc	4 0 0 is_stmt 0                 // sc.c:0:0
	strb	w0, [x24], #1
.Ltmp251:
	//DEBUG_VALUE: sc_mtf:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] undef
	.loc	4 405 9                         // sc.c:405:9
	b.ne	.LBB8_23
.Ltmp252:
.LBB8_24:                               // %.preheader4
	//DEBUG_VALUE: bio <- $x23
	//DEBUG_VALUE: sz <- $x22
	//DEBUG_VALUE: out_d <- $x20
	//DEBUG_VALUE: sc_mtf:op <- [DW_OP_LLVM_entry_value 1] $w1
	//DEBUG_VALUE: sc_mtf:sc <- [DW_OP_LLVM_entry_value 1] $x0
	.loc	4 0 9                           // sc.c:0:9
	mov	x8, xzr
	add	x9, sp, #2048                   // =2048
.Ltmp253:
.LBB8_25:                               // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: bio <- $x23
	//DEBUG_VALUE: sz <- $x22
	//DEBUG_VALUE: out_d <- $x20
	//DEBUG_VALUE: sc_mtf:op <- [DW_OP_LLVM_entry_value 1] $w1
	//DEBUG_VALUE: sc_mtf:sc <- [DW_OP_LLVM_entry_value 1] $x0
	//DEBUG_VALUE: sc_mtf:i <- $x8
	.loc	4 414 21 is_stmt 1              // sc.c:414:21
	strb	w8, [x9, x8]
	.loc	4 413 29                        // sc.c:413:29
	add	x8, x8, #1                      // =1
.Ltmp254:
	//DEBUG_VALUE: sc_mtf:i <- $x8
	.loc	4 413 9 is_stmt 0               // sc.c:413:9
	cmp	x8, #32                         // =32
	b.ne	.LBB8_25
.Ltmp255:
// %bb.26:
	//DEBUG_VALUE: bio <- $x23
	//DEBUG_VALUE: sz <- $x22
	//DEBUG_VALUE: out_d <- $x20
	//DEBUG_VALUE: sc_mtf:i <- $x8
	//DEBUG_VALUE: sc_mtf:op <- [DW_OP_LLVM_entry_value 1] $w1
	//DEBUG_VALUE: sc_mtf:sc <- [DW_OP_LLVM_entry_value 1] $x0
	.loc	4 415 9 is_stmt 1               // sc.c:415:9
	ldp	x9, x8, [x21, #16]
.Ltmp256:
	ldp	x11, x10, [x21]
	str	x8, [sp, #2104]
	str	x9, [sp, #2096]
	str	x10, [sp, #2088]
	str	x11, [sp, #2080]
	ldp	x9, x8, [x21, #48]
	ldp	x11, x10, [x21, #32]
	str	x8, [sp, #2136]
	str	x9, [sp, #2128]
	str	x10, [sp, #2120]
	str	x11, [sp, #2112]
	ldp	x12, x9, [x21, #72]
	ldur	x10, [x21, #87]
	ldr	x11, [x21, #64]
	mov	w8, #127
.Ltmp257:
	//DEBUG_VALUE: sc_mtf:i <- 127
	stur	x10, [x25, #119]
	str	x9, [sp, #2160]
	str	x12, [sp, #2152]
	str	x11, [sp, #2144]
	add	x9, sp, #2048                   // =2048
.Ltmp258:
.LBB8_27:                               // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: bio <- $x23
	//DEBUG_VALUE: sz <- $x22
	//DEBUG_VALUE: out_d <- $x20
	//DEBUG_VALUE: sc_mtf:op <- [DW_OP_LLVM_entry_value 1] $w1
	//DEBUG_VALUE: sc_mtf:sc <- [DW_OP_LLVM_entry_value 1] $x0
	//DEBUG_VALUE: sc_mtf:i <- $x8
	.loc	4 417 21                        // sc.c:417:21
	strb	w8, [x9, x8]
	.loc	4 416 41                        // sc.c:416:41
	add	x8, x8, #1                      // =1
.Ltmp259:
	//DEBUG_VALUE: sc_mtf:i <- $x8
	.loc	4 416 9 is_stmt 0               // sc.c:416:9
	cmp	x8, #256                        // =256
	b.ne	.LBB8_27
.Ltmp260:
// %bb.28:
	//DEBUG_VALUE: bio <- $x23
	//DEBUG_VALUE: sz <- $x22
	//DEBUG_VALUE: out_d <- $x20
	//DEBUG_VALUE: sc_mtf:i <- $x8
	//DEBUG_VALUE: sc_mtf:op <- [DW_OP_LLVM_entry_value 1] $w1
	//DEBUG_VALUE: sc_mtf:sc <- [DW_OP_LLVM_entry_value 1] $x0
	//DEBUG_VALUE: sc_mtf:i <- 0
	.loc	4 419 9 is_stmt 1               // sc.c:419:9
	cbz	x22, .LBB8_31
.Ltmp261:
// %bb.29:
	//DEBUG_VALUE: bio <- $x23
	//DEBUG_VALUE: sz <- $x22
	//DEBUG_VALUE: out_d <- $x20
	//DEBUG_VALUE: sc_mtf:i <- 0
	//DEBUG_VALUE: sc_mtf:op <- [DW_OP_LLVM_entry_value 1] $w1
	//DEBUG_VALUE: sc_mtf:sc <- [DW_OP_LLVM_entry_value 1] $x0
	.loc	4 0 9 is_stmt 0                 // sc.c:0:9
	add	x24, sp, #2048                  // =2048
.Ltmp262:
	orr	x21, x24, #0x1
	mov	x25, sp
	mov	x26, x20
	mov	x27, x22
.Ltmp263:
.LBB8_30:                               // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: bio <- $x23
	//DEBUG_VALUE: sz <- $x22
	//DEBUG_VALUE: out_d <- $x20
	//DEBUG_VALUE: sc_mtf:op <- [DW_OP_LLVM_entry_value 1] $w1
	//DEBUG_VALUE: sc_mtf:sc <- [DW_OP_LLVM_entry_value 1] $x0
	//DEBUG_VALUE: sc_mtf:i <- undef
	.loc	4 421 29 is_stmt 1              // sc.c:421:29
	ldrb	w2, [x25], #1
	.loc	4 421 24 is_stmt 0              // sc.c:421:24
	ldrb	w28, [x24, x2]
	.loc	4 421 22                        // sc.c:421:22
	strb	w28, [x26], #1
	.loc	4 422 13 is_stmt 1              // sc.c:422:13
	add	x1, sp, #2048                   // =2048
	mov	x0, x21
	bl	memmove
.Ltmp264:
	.loc	4 419 23                        // sc.c:419:23
	subs	x27, x27, #1                    // =1
.Ltmp265:
	.loc	4 423 19                        // sc.c:423:19
	strb	w28, [sp, #2048]
.Ltmp266:
	//DEBUG_VALUE: sc_mtf:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] undef
	.loc	4 419 9                         // sc.c:419:9
	b.ne	.LBB8_30
.Ltmp267:
.LBB8_31:
	//DEBUG_VALUE: bio <- $x23
	//DEBUG_VALUE: sz <- $x22
	//DEBUG_VALUE: out_d <- $x20
	//DEBUG_VALUE: sc_mtf:op <- [DW_OP_LLVM_entry_value 1] $w1
	//DEBUG_VALUE: sc_mtf:sc <- [DW_OP_LLVM_entry_value 1] $x0
	.loc	4 425 17                        // sc.c:425:17
	str	x22, [x19]
	.loc	4 426 9                         // sc.c:426:9
	mov	x0, x23
.Ltmp268:
.LBB8_32:
	//DEBUG_VALUE: sc_mtf:op <- [DW_OP_LLVM_entry_value 1] $w1
	//DEBUG_VALUE: sc_mtf:sc <- [DW_OP_LLVM_entry_value 1] $x0
	.loc	4 0 0 is_stmt 0                 // sc.c:0:0
	bl	free
.Ltmp269:
	//DEBUG_VALUE: bio <- 0
.LBB8_33:
	.loc	4 430 1 is_stmt 1               // sc.c:430:1
	mov	x0, x20
	add	sp, sp, #2304                   // =2304
	ldp	x20, x19, [sp, #80]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             // 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             // 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #96             // 16-byte Folded Reload
	ret
.Ltmp270:
.Lfunc_end8:
	.size	sc_mtf, .Lfunc_end8-sc_mtf
	.cfi_endproc
                                        // -- End function
	.globl	_rot_left                       // -- Begin function _rot_left
	.p2align	2
	.type	_rot_left,@function
_rot_left:                              // @_rot_left
.Lfunc_begin9:
	.loc	4 177 0                         // sc.c:177:0
	.cfi_startproc
// %bb.0:
	//DEBUG_VALUE: _rot_left:data <- $x0
	//DEBUG_VALUE: _rot_left:sz <- $x1
	//DEBUG_VALUE: _rot_left:rot <- $x2
	stp	x30, x21, [sp, #-32]!           // 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             // 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w30, -32
	mov	x19, x2
	mov	x20, x1
	mov	x21, x0
.Ltmp271:
	//DEBUG_VALUE: _rot_left:i <- 0
	//DEBUG_VALUE: _rot_left:rot <- $x19
	//DEBUG_VALUE: _rot_left:sz <- $x20
	//DEBUG_VALUE: _rot_left:data <- $x21
	.loc	4 181 21 prologue_end           // sc.c:181:21
	mov	w0, w19
	bl	_gcd
.Ltmp272:
	.loc	4 181 5 is_stmt 0               // sc.c:181:5
	cmp	w0, #1                          // =1
	b.lt	.LBB9_6
.Ltmp273:
// %bb.1:
	//DEBUG_VALUE: _rot_left:data <- $x21
	//DEBUG_VALUE: _rot_left:sz <- $x20
	//DEBUG_VALUE: _rot_left:rot <- $x19
	//DEBUG_VALUE: _rot_left:i <- 0
	.loc	4 0 5                           // sc.c:0:5
	mov	x8, xzr
.Ltmp274:
	.loc	4 181 19                        // sc.c:181:19
	mov	w9, w0
	b	.LBB9_3
.Ltmp275:
.LBB9_2:                                //   in Loop: Header=BB9_3 Depth=1
	//DEBUG_VALUE: _rot_left:data <- $x21
	//DEBUG_VALUE: _rot_left:sz <- $x20
	//DEBUG_VALUE: _rot_left:rot <- $x19
	//DEBUG_VALUE: _rot_left:i <- $x8
	//DEBUG_VALUE: _rot_left:k <- $w13
	.loc	4 181 36                        // sc.c:181:36
	add	x8, x8, #1                      // =1
.Ltmp276:
	//DEBUG_VALUE: _rot_left:i <- $x8
	.loc	4 181 5                         // sc.c:181:5
	cmp	x8, x9
.Ltmp277:
	.loc	4 195 17 is_stmt 1              // sc.c:195:17
	strb	w10, [x21, x11]
.Ltmp278:
	.loc	4 181 5                         // sc.c:181:5
	b.eq	.LBB9_6
.Ltmp279:
.LBB9_3:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB9_5 Depth 2
	//DEBUG_VALUE: _rot_left:data <- $x21
	//DEBUG_VALUE: _rot_left:sz <- $x20
	//DEBUG_VALUE: _rot_left:rot <- $x19
	//DEBUG_VALUE: _rot_left:i <- $x8
	//DEBUG_VALUE: _rot_left:j <- $x8
	.loc	4 184 15                        // sc.c:184:15
	ldrb	w10, [x21, x8]
.Ltmp280:
	//DEBUG_VALUE: _rot_left:tmp <- undef
	.loc	4 187 17                        // sc.c:187:17
	add	w11, w8, w19
.Ltmp281:
	//DEBUG_VALUE: _rot_left:k <- $w11
	.loc	4 188 17                        // sc.c:188:17
	sxtw	x12, w11
.Ltmp282:
	.loc	4 188 17 is_stmt 0              // sc.c:188:17
	cmp	x12, x20
	csel	w12, wzr, w20, lo
	sub	w13, w11, w12
.Ltmp283:
	//DEBUG_VALUE: _rot_left:k <- $w13
	.loc	4 190 17 is_stmt 1              // sc.c:190:17
	cmp	x8, x13
	.loc	4 187 17                        // sc.c:187:17
	mov	x11, x8
	.loc	4 190 17                        // sc.c:190:17
	b.eq	.LBB9_2
.Ltmp284:
// %bb.4:                               // %.preheader
                                        //   in Loop: Header=BB9_3 Depth=1
	//DEBUG_VALUE: _rot_left:data <- $x21
	//DEBUG_VALUE: _rot_left:sz <- $x20
	//DEBUG_VALUE: _rot_left:rot <- $x19
	//DEBUG_VALUE: _rot_left:j <- $x8
	//DEBUG_VALUE: _rot_left:i <- $x8
	//DEBUG_VALUE: _rot_left:k <- $w13
                                        // kill: def $w13 killed $w13 killed $x13 def $x13
	.loc	4 0 17 is_stmt 0                // sc.c:0:17
	mov	x12, x8
.Ltmp285:
.LBB9_5:                                //   Parent Loop BB9_3 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	//DEBUG_VALUE: _rot_left:data <- $x21
	//DEBUG_VALUE: _rot_left:sz <- $x20
	//DEBUG_VALUE: _rot_left:rot <- $x19
	//DEBUG_VALUE: _rot_left:i <- $x8
	//DEBUG_VALUE: _rot_left:k <- $w13
	.loc	4 192 23 is_stmt 1              // sc.c:192:23
	sxtw	x11, w13
	.loc	4 187 17                        // sc.c:187:17
	add	w13, w13, w19
.Ltmp286:
	//DEBUG_VALUE: _rot_left:k <- $w13
	.loc	4 192 23                        // sc.c:192:23
	ldrb	w14, [x21, x11]
.Ltmp287:
	.loc	4 188 17                        // sc.c:188:17
	sxtw	x15, w13
.Ltmp288:
	.loc	4 188 17 is_stmt 0              // sc.c:188:17
	cmp	x15, x20
	csel	w15, wzr, w20, lo
	sub	w13, w13, w15
.Ltmp289:
	//DEBUG_VALUE: _rot_left:k <- $w13
	.loc	4 190 17 is_stmt 1              // sc.c:190:17
	cmp	x8, x13
	.loc	4 192 21                        // sc.c:192:21
	strb	w14, [x21, x12]
.Ltmp290:
	//DEBUG_VALUE: _rot_left:j <- undef
                                        // kill: def $w13 killed $w13 killed $x13 def $x13
	.loc	4 0 21 is_stmt 0                // sc.c:0:21
	mov	x12, x11
	.loc	4 190 17 is_stmt 1              // sc.c:190:17
	b.ne	.LBB9_5
	b	.LBB9_2
.Ltmp291:
.LBB9_6:
	//DEBUG_VALUE: _rot_left:data <- $x21
	//DEBUG_VALUE: _rot_left:sz <- $x20
	//DEBUG_VALUE: _rot_left:rot <- $x19
	.loc	4 197 1                         // sc.c:197:1
	ldp	x20, x19, [sp, #16]             // 16-byte Folded Reload
.Ltmp292:
	ldp	x30, x21, [sp], #32             // 16-byte Folded Reload
.Ltmp293:
	ret
.Ltmp294:
.Lfunc_end9:
	.size	_rot_left, .Lfunc_end9-_rot_left
	.cfi_endproc
                                        // -- End function
	.globl	_sort                           // -- Begin function _sort
	.p2align	2
	.type	_sort,@function
_sort:                                  // @_sort
.Lfunc_begin10:
	.loc	4 229 0                         // sc.c:229:0
	.cfi_startproc
// %bb.0:
	//DEBUG_VALUE: _sort:xs <- $x0
	//DEBUG_VALUE: _sort:len <- $w1
	//DEBUG_VALUE: _sort:sc <- $x2
	str	x30, [sp, #-48]!                // 8-byte Folded Spill
	stp	x22, x21, [sp, #16]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             // 16-byte Folded Spill
	.cfi_def_cfa_offset 48
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w30, -48
	mov	x19, x2
	mov	w20, w1
	mov	x21, x0
.Ltmp295:
	//DEBUG_VALUE: _sort:sc <- $x19
	//DEBUG_VALUE: _sort:len <- $w20
	//DEBUG_VALUE: _sort:xs <- $x21
	.loc	4 230 57 prologue_end           // sc.c:230:57
	sbfiz	x0, x20, #3, #32
	.loc	4 230 26 is_stmt 0              // sc.c:230:26
	bl	malloc
.Ltmp296:
	mov	x22, x0
.Ltmp297:
	//DEBUG_VALUE: _sort:ys <- $x22
	.loc	4 231 5 is_stmt 1               // sc.c:231:5
	mov	x0, x21
.Ltmp298:
	//DEBUG_VALUE: _sort:xs <- $x0
	mov	x1, x22
	mov	w2, wzr
	mov	w3, w20
	mov	x4, x19
.Ltmp299:
	//DEBUG_VALUE: _sort:sc <- $x4
	bl	_msort
.Ltmp300:
	.loc	4 232 5                         // sc.c:232:5
	mov	x0, x22
	bl	free
.Ltmp301:
	.loc	4 233 1                         // sc.c:233:1
	ldp	x20, x19, [sp, #32]             // 16-byte Folded Reload
.Ltmp302:
	ldp	x22, x21, [sp, #16]             // 16-byte Folded Reload
.Ltmp303:
	ldr	x30, [sp], #48                  // 8-byte Folded Reload
	ret
.Ltmp304:
.Lfunc_end10:
	.size	_sort, .Lfunc_end10-_sort
	.cfi_endproc
                                        // -- End function
	.globl	_msort                          // -- Begin function _msort
	.p2align	2
	.type	_msort,@function
_msort:                                 // @_msort
.Lfunc_begin11:
	.loc	4 217 0                         // sc.c:217:0
	.cfi_startproc
// %bb.0:
	//DEBUG_VALUE: _msort:xs <- $x0
	//DEBUG_VALUE: _msort:ys <- $x1
	//DEBUG_VALUE: _msort:lo <- $w2
	//DEBUG_VALUE: _msort:hi <- $w3
	//DEBUG_VALUE: _msort:sc <- $x4
	//DEBUG_VALUE: _msort:sc <- $x4
	//DEBUG_VALUE: _msort:hi <- $w3
	//DEBUG_VALUE: _msort:lo <- $w2
	//DEBUG_VALUE: _msort:ys <- $x1
	.loc	4 219 12 prologue_end           // sc.c:219:12
	sub	w8, w3, w2
.Ltmp305:
	.loc	4 219 9 is_stmt 0               // sc.c:219:9
	cmp	w8, #2                          // =2
	//DEBUG_VALUE: _msort:xs <- $x0
	b.lt	.LBB11_2
.Ltmp306:
// %bb.1:
	//DEBUG_VALUE: _msort:sc <- $x4
	//DEBUG_VALUE: _msort:ys <- $x1
	//DEBUG_VALUE: _msort:xs <- $x0
	//DEBUG_VALUE: _msort:hi <- $w3
	//DEBUG_VALUE: _msort:lo <- $w2
	str	x30, [sp, #-64]!                // 8-byte Folded Spill
	stp	x24, x23, [sp, #16]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             // 16-byte Folded Spill
	.cfi_def_cfa_offset 64
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w24, -48
	.cfi_offset w30, -64
	mov	x19, x4
.Ltmp307:
	//DEBUG_VALUE: _msort:sc <- $x19
	.loc	4 0 9                           // sc.c:0:9
	mov	w20, w3
.Ltmp308:
	//DEBUG_VALUE: _msort:hi <- $w20
	mov	w21, w2
.Ltmp309:
	//DEBUG_VALUE: _msort:lo <- $w21
	mov	x22, x1
.Ltmp310:
	//DEBUG_VALUE: _msort:ys <- $x22
	mov	x23, x0
.Ltmp311:
	//DEBUG_VALUE: _msort:xs <- $x23
	.loc	4 221 31 is_stmt 1              // sc.c:221:31
	cmp	w8, #0                          // =0
	cinc	w8, w8, lt
	.loc	4 221 18 is_stmt 0              // sc.c:221:18
	add	w24, w2, w8, asr #1
.Ltmp312:
	//DEBUG_VALUE: _msort:mid <- $w24
	.loc	4 222 9 is_stmt 1               // sc.c:222:9
	mov	w3, w24
	bl	_msort
.Ltmp313:
	.loc	4 223 9                         // sc.c:223:9
	mov	x0, x23
	mov	x1, x22
	mov	w2, w24
	mov	w3, w20
	mov	x4, x19
	bl	_msort
.Ltmp314:
	.loc	4 224 9                         // sc.c:224:9
	mov	x0, x23
	mov	x1, x22
	mov	w2, w21
	mov	w3, w24
	mov	w4, w20
	mov	x5, x19
	bl	_merge
.Ltmp315:
	.loc	4 0 9 is_stmt 0                 // sc.c:0:9
	ldp	x20, x19, [sp, #48]             // 16-byte Folded Reload
.Ltmp316:
	//DEBUG_VALUE: _msort:sc <- [DW_OP_LLVM_entry_value 1] $x4
	//DEBUG_VALUE: _msort:hi <- [DW_OP_LLVM_entry_value 1] $w3
	ldp	x22, x21, [sp, #32]             // 16-byte Folded Reload
.Ltmp317:
	//DEBUG_VALUE: _msort:ys <- [DW_OP_LLVM_entry_value 1] $x1
	//DEBUG_VALUE: _msort:lo <- [DW_OP_LLVM_entry_value 1] $w2
	ldp	x24, x23, [sp, #16]             // 16-byte Folded Reload
.Ltmp318:
	//DEBUG_VALUE: _msort:xs <- [DW_OP_LLVM_entry_value 1] $x0
	ldr	x30, [sp], #64                  // 8-byte Folded Reload
.Ltmp319:
.LBB11_2:
	.loc	4 226 1 is_stmt 1               // sc.c:226:1
	ret
.Ltmp320:
.Lfunc_end11:
	.size	_msort, .Lfunc_end11-_msort
	.cfi_endproc
                                        // -- End function
	.globl	_merge                          // -- Begin function _merge
	.p2align	2
	.type	_merge,@function
_merge:                                 // @_merge
.Lfunc_begin12:
	.loc	4 200 0                         // sc.c:200:0
	.cfi_startproc
// %bb.0:
	//DEBUG_VALUE: _merge:xs <- $x0
	//DEBUG_VALUE: _merge:ys <- $x1
	//DEBUG_VALUE: _merge:lo <- $w2
	//DEBUG_VALUE: _merge:mid <- $w3
	//DEBUG_VALUE: _merge:hi <- $w4
	//DEBUG_VALUE: _merge:sc <- $x5
	sub	sp, sp, #112                    // =112
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	stp	x28, x27, [sp, #32]             // 16-byte Folded Spill
	stp	x26, x25, [sp, #48]             // 16-byte Folded Spill
	stp	x24, x23, [sp, #64]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #80]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #96]             // 16-byte Folded Spill
	.cfi_def_cfa_offset 112
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w24, -48
	.cfi_offset w25, -56
	.cfi_offset w26, -64
	.cfi_offset w27, -72
	.cfi_offset w28, -80
	.cfi_offset w30, -88
	.cfi_offset w29, -96
.Ltmp321:
	//DEBUG_VALUE: _merge:i <- $w2
	//DEBUG_VALUE: _merge:j <- $w3
	//DEBUG_VALUE: _merge:k <- $w2
	mov	w19, w4
	mov	w23, w3
	mov	w20, w2
	str	x1, [sp, #8]                    // 8-byte Folded Spill
	mov	x22, x0
.Ltmp322:
	//DEBUG_VALUE: _merge:k <- $w20
	//DEBUG_VALUE: _merge:j <- $w23
	//DEBUG_VALUE: _merge:i <- $w20
	//DEBUG_VALUE: _merge:sc <- $x5
	//DEBUG_VALUE: _merge:hi <- $w19
	//DEBUG_VALUE: _merge:mid <- $w23
	//DEBUG_VALUE: _merge:lo <- $w20
	//DEBUG_VALUE: _merge:ys <- [DW_OP_plus_uconst 8] [$sp+0]
	//DEBUG_VALUE: _merge:xs <- $x22
	.loc	4 202 5 prologue_end            // sc.c:202:5
	cmp	w2, w3
	.loc	4 0 0 is_stmt 0                 // sc.c:0:0
	mov	w27, w2
	.loc	4 202 20                        // sc.c:202:20
	mov	w26, w3
	.loc	4 0 0                           // sc.c:0:0
	mov	w25, w2
	.loc	4 202 5                         // sc.c:202:5
	b.ge	.LBB12_5
.Ltmp323:
// %bb.1:
	//DEBUG_VALUE: _merge:xs <- $x22
	//DEBUG_VALUE: _merge:sc <- $x5
	//DEBUG_VALUE: _merge:mid <- $w23
	//DEBUG_VALUE: _merge:j <- $w23
	//DEBUG_VALUE: _merge:lo <- $w20
	//DEBUG_VALUE: _merge:i <- $w20
	//DEBUG_VALUE: _merge:k <- $w20
	//DEBUG_VALUE: _merge:hi <- $w19
	//DEBUG_VALUE: _merge:ys <- [DW_OP_plus_uconst 8] [$sp+0]
	//DEBUG_VALUE: _merge:sc <- $x5
	cmp	w23, w19
	.loc	4 0 0                           // sc.c:0:0
	mov	w27, w20
	.loc	4 202 20                        // sc.c:202:20
	mov	w26, w23
	.loc	4 0 0                           // sc.c:0:0
	mov	w25, w20
	.loc	4 202 5                         // sc.c:202:5
	b.ge	.LBB12_5
.Ltmp324:
// %bb.2:
	//DEBUG_VALUE: _merge:xs <- $x22
	//DEBUG_VALUE: _merge:sc <- $x5
	//DEBUG_VALUE: _merge:mid <- $w23
	//DEBUG_VALUE: _merge:j <- $w23
	//DEBUG_VALUE: _merge:lo <- $w20
	//DEBUG_VALUE: _merge:i <- $w20
	//DEBUG_VALUE: _merge:k <- $w20
	//DEBUG_VALUE: _merge:hi <- $w19
	//DEBUG_VALUE: _merge:ys <- [DW_OP_plus_uconst 8] [$sp+0]
	.loc	4 0 5                           // sc.c:0:5
	mov	x24, x5
.Ltmp325:
	//DEBUG_VALUE: _merge:sc <- $x24
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	.loc	4 202 5                         // sc.c:202:5
	add	x28, x8, w20, sxtw #3
	mov	w25, w20
	mov	w26, w23
	mov	w27, w20
.Ltmp326:
.LBB12_3:                               // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: _merge:sc <- $x24
	//DEBUG_VALUE: _merge:xs <- $x22
	//DEBUG_VALUE: _merge:mid <- $w23
	//DEBUG_VALUE: _merge:lo <- $w20
	//DEBUG_VALUE: _merge:hi <- $w19
	//DEBUG_VALUE: _merge:ys <- [DW_OP_plus_uconst 8] [$sp+0]
	//DEBUG_VALUE: _merge:i <- $w27
	//DEBUG_VALUE: _merge:j <- $w26
	//DEBUG_VALUE: _merge:k <- undef
	.loc	4 204 17 is_stmt 1              // sc.c:204:17
	ldr	x8, [x24, #112]
	.loc	4 204 32 is_stmt 0              // sc.c:204:32
	add	x29, x22, w27, sxtw #3
	.loc	4 204 39                        // sc.c:204:39
	add	x21, x22, w26, sxtw #3
	.loc	4 204 32                        // sc.c:204:32
	ldr	x1, [x29]
	.loc	4 204 39                        // sc.c:204:39
	ldr	x2, [x21]
	.loc	4 204 13                        // sc.c:204:13
	mov	w3, #512
	mov	x0, x24
	blr	x8
.Ltmp327:
	.loc	4 204 13                        // sc.c:204:13
	cmp	w0, #0                          // =0
	add	w27, w27, w0, lsr #31
.Ltmp328:
	csel	x8, x29, x21, lt
.Ltmp329:
	.loc	4 0 0                           // sc.c:0:0
	ldr	x8, [x8]
.Ltmp330:
	.loc	4 204 13                        // sc.c:204:13
	mvn	w9, w0
	add	w26, w26, w9, lsr #31
.Ltmp331:
	.loc	4 202 5 is_stmt 1               // sc.c:202:5
	cmp	w27, w23
.Ltmp332:
	.loc	4 0 0 is_stmt 0                 // sc.c:0:0
	str	x8, [x28], #8
.Ltmp333:
	//DEBUG_VALUE: _merge:k <- [DW_OP_plus_uconst 1, DW_OP_stack_value] undef
	//DEBUG_VALUE: _merge:j <- $w26
	//DEBUG_VALUE: _merge:i <- $w27
	.loc	4 202 5                         // sc.c:202:5
	add	w25, w25, #1                    // =1
	b.ge	.LBB12_5
.Ltmp334:
// %bb.4:                               //   in Loop: Header=BB12_3 Depth=1
	//DEBUG_VALUE: _merge:sc <- $x24
	//DEBUG_VALUE: _merge:xs <- $x22
	//DEBUG_VALUE: _merge:i <- $w27
	//DEBUG_VALUE: _merge:j <- $w26
	//DEBUG_VALUE: _merge:mid <- $w23
	//DEBUG_VALUE: _merge:lo <- $w20
	//DEBUG_VALUE: _merge:hi <- $w19
	//DEBUG_VALUE: _merge:ys <- [DW_OP_plus_uconst 8] [$sp+0]
	cmp	w26, w19
	b.lt	.LBB12_3
.Ltmp335:
.LBB12_5:
	//DEBUG_VALUE: _merge:xs <- $x22
	//DEBUG_VALUE: _merge:mid <- $w23
	//DEBUG_VALUE: _merge:lo <- $w20
	//DEBUG_VALUE: _merge:hi <- $w19
	//DEBUG_VALUE: _merge:ys <- [DW_OP_plus_uconst 8] [$sp+0]
	//DEBUG_VALUE: _merge:i <- $w27
	//DEBUG_VALUE: _merge:j <- $w26
	//DEBUG_VALUE: _merge:k <- $w25
	.loc	4 209 5 is_stmt 1               // sc.c:209:5
	cmp	w27, w23
	b.ge	.LBB12_9
.Ltmp336:
// %bb.6:
	//DEBUG_VALUE: _merge:xs <- $x22
	//DEBUG_VALUE: _merge:i <- $w27
	//DEBUG_VALUE: _merge:j <- $w26
	//DEBUG_VALUE: _merge:k <- $w25
	//DEBUG_VALUE: _merge:mid <- $w23
	//DEBUG_VALUE: _merge:lo <- $w20
	//DEBUG_VALUE: _merge:hi <- $w19
	//DEBUG_VALUE: _merge:ys <- [DW_OP_plus_uconst 8] [$sp+0]
	.loc	4 209 14 is_stmt 0              // sc.c:209:14
	sxtw	x9, w23
.Ltmp337:
	.loc	4 209 5                         // sc.c:209:5
	add	x8, x22, w27, sxtw #3
	sub	x9, x9, w27, sxtw
	ldr	x12, [sp, #8]                   // 8-byte Folded Reload
	add	x10, x12, w25, sxtw #3
.Ltmp338:
.LBB12_7:                               // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: _merge:xs <- $x22
	//DEBUG_VALUE: _merge:j <- $w26
	//DEBUG_VALUE: _merge:mid <- $w23
	//DEBUG_VALUE: _merge:lo <- $w20
	//DEBUG_VALUE: _merge:hi <- $w19
	//DEBUG_VALUE: _merge:ys <- [DW_OP_plus_uconst 8] [$sp+0]
	//DEBUG_VALUE: _merge:i <- undef
	//DEBUG_VALUE: _merge:k <- undef
	.loc	4 210 17 is_stmt 1              // sc.c:210:17
	ldr	x11, [x8], #8
	.loc	4 209 14                        // sc.c:209:14
	subs	x9, x9, #1                      // =1
	.loc	4 210 15                        // sc.c:210:15
	str	x11, [x10], #8
.Ltmp339:
	//DEBUG_VALUE: _merge:k <- [DW_OP_plus_uconst 1, DW_OP_stack_value] undef
	//DEBUG_VALUE: _merge:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] undef
	.loc	4 209 14                        // sc.c:209:14
	add	w25, w25, #1                    // =1
.Ltmp340:
	.loc	4 209 5 is_stmt 0               // sc.c:209:5
	b.ne	.LBB12_7
.Ltmp341:
// %bb.8:
	//DEBUG_VALUE: _merge:xs <- $x22
	//DEBUG_VALUE: _merge:j <- $w26
	//DEBUG_VALUE: _merge:mid <- $w23
	//DEBUG_VALUE: _merge:lo <- $w20
	//DEBUG_VALUE: _merge:hi <- $w19
	//DEBUG_VALUE: _merge:ys <- [DW_OP_plus_uconst 8] [$sp+0]
	//DEBUG_VALUE: _merge:j <- $w26
	//DEBUG_VALUE: _merge:k <- $w25
	.loc	4 211 5 is_stmt 1               // sc.c:211:5
	cmp	w26, w19
	b.lt	.LBB12_10
	b	.LBB12_12
.Ltmp342:
.LBB12_9:
	//DEBUG_VALUE: _merge:xs <- $x22
	//DEBUG_VALUE: _merge:i <- $w27
	//DEBUG_VALUE: _merge:j <- $w26
	//DEBUG_VALUE: _merge:k <- $w25
	//DEBUG_VALUE: _merge:mid <- $w23
	//DEBUG_VALUE: _merge:lo <- $w20
	//DEBUG_VALUE: _merge:hi <- $w19
	//DEBUG_VALUE: _merge:ys <- [DW_OP_plus_uconst 8] [$sp+0]
	.loc	4 0 5 is_stmt 0                 // sc.c:0:5
	ldr	x12, [sp, #8]                   // 8-byte Folded Reload
	//DEBUG_VALUE: _merge:j <- $w26
	//DEBUG_VALUE: _merge:k <- $w25
	.loc	4 211 5                         // sc.c:211:5
	cmp	w26, w19
	b.ge	.LBB12_12
.Ltmp343:
.LBB12_10:
	//DEBUG_VALUE: _merge:xs <- $x22
	//DEBUG_VALUE: _merge:j <- $w26
	//DEBUG_VALUE: _merge:k <- $w25
	//DEBUG_VALUE: _merge:mid <- $w23
	//DEBUG_VALUE: _merge:lo <- $w20
	//DEBUG_VALUE: _merge:hi <- $w19
	//DEBUG_VALUE: _merge:ys <- [DW_OP_plus_uconst 8] [$sp+0]
	.loc	4 211 14                        // sc.c:211:14
	sxtw	x9, w19
.Ltmp344:
	.loc	4 211 5                         // sc.c:211:5
	add	x8, x22, w26, sxtw #3
	sub	x9, x9, w26, sxtw
	add	x10, x12, w25, sxtw #3
.Ltmp345:
.LBB12_11:                              // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: _merge:xs <- $x22
	//DEBUG_VALUE: _merge:mid <- $w23
	//DEBUG_VALUE: _merge:lo <- $w20
	//DEBUG_VALUE: _merge:hi <- $w19
	//DEBUG_VALUE: _merge:ys <- [DW_OP_plus_uconst 8] [$sp+0]
	//DEBUG_VALUE: _merge:j <- undef
	//DEBUG_VALUE: _merge:k <- undef
	.loc	4 212 17 is_stmt 1              // sc.c:212:17
	ldr	x11, [x8], #8
	.loc	4 211 14                        // sc.c:211:14
	subs	x9, x9, #1                      // =1
	.loc	4 212 15                        // sc.c:212:15
	str	x11, [x10], #8
.Ltmp346:
	//DEBUG_VALUE: _merge:k <- [DW_OP_plus_uconst 1, DW_OP_stack_value] undef
	//DEBUG_VALUE: _merge:j <- [DW_OP_plus_uconst 1, DW_OP_stack_value] undef
	.loc	4 211 5                         // sc.c:211:5
	b.ne	.LBB12_11
.Ltmp347:
.LBB12_12:
	//DEBUG_VALUE: _merge:xs <- $x22
	//DEBUG_VALUE: _merge:mid <- $w23
	//DEBUG_VALUE: _merge:lo <- $w20
	//DEBUG_VALUE: _merge:hi <- $w19
	//DEBUG_VALUE: _merge:ys <- [DW_OP_plus_uconst 8] [$sp+0]
	.loc	4 213 13                        // sc.c:213:13
	sbfiz	x8, x20, #3, #32
	.loc	4 213 34 is_stmt 0              // sc.c:213:34
	sub	w9, w19, w20
	.loc	4 213 13                        // sc.c:213:13
	add	x0, x22, x8
	.loc	4 213 22                        // sc.c:213:22
	add	x1, x12, x8
	.loc	4 213 40                        // sc.c:213:40
	sbfiz	x2, x9, #3, #32
	.loc	4 213 5                         // sc.c:213:5
	bl	memcpy
.Ltmp348:
	.loc	4 214 1 is_stmt 1               // sc.c:214:1
	ldp	x20, x19, [sp, #96]             // 16-byte Folded Reload
.Ltmp349:
	ldp	x22, x21, [sp, #80]             // 16-byte Folded Reload
.Ltmp350:
	ldp	x24, x23, [sp, #64]             // 16-byte Folded Reload
.Ltmp351:
	ldp	x26, x25, [sp, #48]             // 16-byte Folded Reload
	ldp	x28, x27, [sp, #32]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #112                    // =112
	ret
.Ltmp352:
.Lfunc_end12:
	.size	_merge, .Lfunc_end12-_merge
	.cfi_endproc
                                        // -- End function
	.globl	_gcd                            // -- Begin function _gcd
	.p2align	2
	.type	_gcd,@function
_gcd:                                   // @_gcd
.Lfunc_begin13:
	.loc	4 170 0                         // sc.c:170:0
	.cfi_startproc
// %bb.0:
	//DEBUG_VALUE: _gcd:a <- $w0
	//DEBUG_VALUE: _gcd:a <- $w0
	//DEBUG_VALUE: _gcd:b <- $w1
	//DEBUG_VALUE: _gcd:b <- $w1
	.loc	4 171 9 prologue_end            // sc.c:171:9
	cbz	w1, .LBB13_2
.Ltmp353:
// %bb.1:
	//DEBUG_VALUE: _gcd:b <- $w1
	//DEBUG_VALUE: _gcd:a <- $w0
	str	x30, [sp, #-16]!                // 8-byte Folded Spill
	.cfi_def_cfa_offset 16
	.cfi_offset w30, -16
	.loc	4 173 22                        // sc.c:173:22
	sdiv	w8, w0, w1
	msub	w8, w8, w1, w0
	.loc	4 173 12 is_stmt 0              // sc.c:173:12
	mov	w0, w1
.Ltmp354:
	//DEBUG_VALUE: _gcd:a <- [DW_OP_LLVM_entry_value 1] $w0
	mov	w1, w8
.Ltmp355:
	//DEBUG_VALUE: _gcd:b <- [DW_OP_LLVM_entry_value 1] $w1
	bl	_gcd
.Ltmp356:
	.loc	4 0 12                          // sc.c:0:12
	ldr	x30, [sp], #16                  // 8-byte Folded Reload
.Ltmp357:
.LBB13_2:
	.loc	4 174 1 is_stmt 1               // sc.c:174:1
	ret
.Ltmp358:
.Lfunc_end13:
	.size	_gcd, .Lfunc_end13-_gcd
	.cfi_endproc
                                        // -- End function
	.globl	sc_sdecompress                  // -- Begin function sc_sdecompress
	.p2align	2
	.type	sc_sdecompress,@function
sc_sdecompress:                         // @sc_sdecompress
.Lfunc_begin14:
	.loc	4 136 0                         // sc.c:136:0
	.cfi_startproc
// %bb.0:
	//DEBUG_VALUE: sc_sdecompress:sc <- $x0
	//DEBUG_VALUE: sc_sdecompress:out <- $x1
	//DEBUG_VALUE: sc_sdecompress:outlen <- $x2
	str	x30, [sp, #-64]!                // 8-byte Folded Spill
	stp	x24, x23, [sp, #16]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             // 16-byte Folded Spill
	.cfi_def_cfa_offset 64
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w24, -48
	.cfi_offset w30, -64
	mov	x20, x0
	mov	w0, #-1
.Ltmp359:
	//DEBUG_VALUE: sc_sdecompress:sc <- [DW_OP_LLVM_entry_value 1] $x0
	//DEBUG_VALUE: sc_sdecompress:outlen <- $x2
	//DEBUG_VALUE: sc_sdecompress:out <- $x1
	//DEBUG_VALUE: sc_sdecompress:sc <- $x20
	.loc	4 137 13 prologue_end           // sc.c:137:13
	cbz	x20, .LBB14_6
.Ltmp360:
// %bb.1:
	//DEBUG_VALUE: sc_sdecompress:sc <- $x20
	//DEBUG_VALUE: sc_sdecompress:outlen <- $x2
	//DEBUG_VALUE: sc_sdecompress:out <- $x1
	//DEBUG_VALUE: sc_sdecompress:outlen <- $x2
	.loc	4 0 13 is_stmt 0                // sc.c:0:13
	mov	x19, x1
.Ltmp361:
	//DEBUG_VALUE: sc_sdecompress:out <- $x19
	.loc	4 137 13                        // sc.c:137:13
	cbz	x1, .LBB14_6
.Ltmp362:
// %bb.2:
	//DEBUG_VALUE: sc_sdecompress:sc <- $x20
	//DEBUG_VALUE: sc_sdecompress:out <- $x19
	//DEBUG_VALUE: sc_sdecompress:outlen <- $x2
	.loc	4 0 13                          // sc.c:0:13
	mov	x21, x2
.Ltmp363:
	//DEBUG_VALUE: sc_sdecompress:outlen <- $x21
	.loc	4 137 13                        // sc.c:137:13
	cbz	x2, .LBB14_6
.Ltmp364:
// %bb.3:
	//DEBUG_VALUE: sc_sdecompress:outlen <- $x21
	//DEBUG_VALUE: sc_sdecompress:sc <- $x20
	//DEBUG_VALUE: sc_sdecompress:out <- $x19
	.loc	4 141 26 is_stmt 1              // sc.c:141:26
	ldp	x24, x23, [x20, #96]
.Ltmp365:
	//DEBUG_VALUE: sc_sdecompress:buf <- 0
	//DEBUG_VALUE: sc_sdecompress:old_len <- $x23
	//DEBUG_VALUE: sc_sdecompress:old <- undef
	.loc	4 143 11                        // sc.c:143:11
	mov	w1, #1
	mov	x0, x20
	mov	x2, x21
	bl	sc_mtf
.Ltmp366:
	//DEBUG_VALUE: sc_sdecompress:buf <- $x0
	.loc	4 144 9                         // sc.c:144:9
	cbz	x0, .LBB14_5
.Ltmp367:
// %bb.4:
	//DEBUG_VALUE: sc_sdecompress:old_len <- $x23
	//DEBUG_VALUE: sc_sdecompress:outlen <- $x21
	//DEBUG_VALUE: sc_sdecompress:sc <- $x20
	//DEBUG_VALUE: sc_sdecompress:out <- $x19
	//DEBUG_VALUE: sc_sdecompress:buf <- $x0
	.loc	4 0 0 is_stmt 0                 // sc.c:0:0
	mov	x22, x0
.Ltmp368:
	//DEBUG_VALUE: sc_sdecompress:buf <- $x22
	.loc	4 146 14 is_stmt 1              // sc.c:146:14
	str	x0, [x20, #96]
	.loc	4 147 20                        // sc.c:147:20
	ldr	x8, [x21]
	.loc	4 147 18 is_stmt 0              // sc.c:147:18
	str	x8, [x20, #104]
	.loc	4 148 12 is_stmt 1              // sc.c:148:12
	mov	w1, #1
	mov	x0, x20
	mov	x2, x21
	bl	sc_bwt
.Ltmp369:
	.loc	4 148 10 is_stmt 0              // sc.c:148:10
	str	x0, [x19]
	.loc	4 149 5 is_stmt 1               // sc.c:149:5
	mov	x0, x22
	bl	free
.Ltmp370:
	.loc	4 150 14                        // sc.c:150:14
	stp	x24, x23, [x20, #96]
.Ltmp371:
	.loc	4 152 10                        // sc.c:152:10
	ldr	x8, [x19]
.Ltmp372:
	.loc	4 0 0 is_stmt 0                 // sc.c:0:0
	cmp	x8, #0                          // =0
	csetm	w0, eq
	b	.LBB14_6
.Ltmp373:
.LBB14_5:
	//DEBUG_VALUE: sc_sdecompress:old_len <- $x23
	//DEBUG_VALUE: sc_sdecompress:outlen <- $x21
	//DEBUG_VALUE: sc_sdecompress:sc <- $x20
	//DEBUG_VALUE: sc_sdecompress:out <- $x19
	//DEBUG_VALUE: sc_sdecompress:buf <- $x0
	mov	w0, #-1
.Ltmp374:
.LBB14_6:
	//DEBUG_VALUE: sc_sdecompress:sc <- $x20
	.loc	4 155 1 is_stmt 1               // sc.c:155:1
	ldp	x20, x19, [sp, #48]             // 16-byte Folded Reload
.Ltmp375:
	ldp	x22, x21, [sp, #32]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             // 16-byte Folded Reload
	ldr	x30, [sp], #64                  // 8-byte Folded Reload
	ret
.Ltmp376:
.Lfunc_end14:
	.size	sc_sdecompress, .Lfunc_end14-sc_sdecompress
	.cfi_endproc
                                        // -- End function
	.globl	sc_set_data                     // -- Begin function sc_set_data
	.p2align	2
	.type	sc_set_data,@function
sc_set_data:                            // @sc_set_data
.Lfunc_begin15:
	.loc	4 158 0                         // sc.c:158:0
	.cfi_startproc
// %bb.0:
	//DEBUG_VALUE: sc_set_data:sc <- $x0
	//DEBUG_VALUE: sc_set_data:data <- $x1
	//DEBUG_VALUE: sc_set_data:data_len <- $x2
	//DEBUG_VALUE: sc_set_data:data_len <- $x2
	//DEBUG_VALUE: sc_set_data:data <- $x1
	//DEBUG_VALUE: sc_set_data:sc <- $x0
	.loc	4 159 9 prologue_end            // sc.c:159:9
	cbz	x0, .LBB15_4
.Ltmp377:
// %bb.1:
	//DEBUG_VALUE: sc_set_data:data_len <- $x2
	//DEBUG_VALUE: sc_set_data:data <- $x1
	//DEBUG_VALUE: sc_set_data:sc <- $x0
	stp	x30, x21, [sp, #-32]!           // 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             // 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w30, -32
	mov	x19, x2
.Ltmp378:
	//DEBUG_VALUE: sc_set_data:data_len <- $x19
	.loc	4 0 9 is_stmt 0                 // sc.c:0:9
	mov	x21, x1
.Ltmp379:
	//DEBUG_VALUE: sc_set_data:data <- $x21
	mov	x20, x0
.Ltmp380:
	//DEBUG_VALUE: sc_set_data:sc <- $x20
	.loc	4 161 13 is_stmt 1              // sc.c:161:13
	ldr	x0, [x0, #96]
.Ltmp381:
	.loc	4 161 9 is_stmt 0               // sc.c:161:9
	cbz	x0, .LBB15_3
.Ltmp382:
// %bb.2:
	//DEBUG_VALUE: sc_set_data:data <- $x21
	//DEBUG_VALUE: sc_set_data:sc <- $x20
	//DEBUG_VALUE: sc_set_data:data_len <- $x19
	.loc	4 162 9 is_stmt 1               // sc.c:162:9
	bl	free
.Ltmp383:
.LBB15_3:
	//DEBUG_VALUE: sc_set_data:data <- $x21
	//DEBUG_VALUE: sc_set_data:sc <- $x20
	//DEBUG_VALUE: sc_set_data:data_len <- $x19
	.loc	4 163 16                        // sc.c:163:16
	mov	x0, x19
	bl	malloc
.Ltmp384:
	.loc	4 163 14 is_stmt 0              // sc.c:163:14
	str	x0, [x20, #96]
	.loc	4 164 5 is_stmt 1               // sc.c:164:5
	mov	x1, x21
	mov	x2, x19
	bl	memcpy
.Ltmp385:
	.loc	4 0 0 is_stmt 0                 // sc.c:0:0
	mov	w0, wzr
	.loc	4 165 18 is_stmt 1              // sc.c:165:18
	str	x19, [x20, #104]
	ldp	x20, x19, [sp, #16]             // 16-byte Folded Reload
.Ltmp386:
	//DEBUG_VALUE: sc_set_data:sc <- [DW_OP_LLVM_entry_value 1] $x0
	//DEBUG_VALUE: sc_set_data:data_len <- [DW_OP_LLVM_entry_value 1] $x2
	.loc	4 0 18 is_stmt 0                // sc.c:0:18
	ldp	x30, x21, [sp], #32             // 16-byte Folded Reload
.Ltmp387:
	//DEBUG_VALUE: sc_set_data:data <- [DW_OP_LLVM_entry_value 1] $x1
	.loc	4 167 1 is_stmt 1               // sc.c:167:1
	ret
.Ltmp388:
.LBB15_4:
	//DEBUG_VALUE: sc_set_data:data_len <- $x2
	//DEBUG_VALUE: sc_set_data:data <- $x1
	//DEBUG_VALUE: sc_set_data:sc <- $x0
	.loc	4 0 1 is_stmt 0                 // sc.c:0:1
	mov	w0, #-1
.Ltmp389:
	//DEBUG_VALUE: sc_set_data:sc <- [DW_OP_LLVM_entry_value 1] $x0
	.loc	4 167 1                         // sc.c:167:1
	ret
.Ltmp390:
.Lfunc_end15:
	.size	sc_set_data, .Lfunc_end15-sc_set_data
	.cfi_endproc
                                        // -- End function
	.globl	print_menu                      // -- Begin function print_menu
	.p2align	2
	.type	print_menu,@function
print_menu:                             // @print_menu
.Lfunc_begin16:
	.loc	3 33 0 is_stmt 1                // main.c:33:0
	.cfi_startproc
// %bb.0:
	str	x30, [sp, #-16]!                // 8-byte Folded Spill
	.cfi_def_cfa_offset 16
	.cfi_offset w30, -16
.Ltmp391:
	.loc	3 34 5 prologue_end             // main.c:34:5
	adrp	x0, .Lstr
	add	x0, x0, :lo12:.Lstr
	bl	puts
.Ltmp392:
	.loc	3 35 5                          // main.c:35:5
	adrp	x0, .Lstr.16
	add	x0, x0, :lo12:.Lstr.16
	bl	puts
.Ltmp393:
	.loc	3 36 5                          // main.c:36:5
	adrp	x0, .Lstr.17
	add	x0, x0, :lo12:.Lstr.17
	bl	puts
.Ltmp394:
	.loc	3 37 1                          // main.c:37:1
	ldr	x30, [sp], #16                  // 8-byte Folded Reload
	ret
.Ltmp395:
.Lfunc_end16:
	.size	print_menu, .Lfunc_end16-print_menu
	.cfi_endproc
                                        // -- End function
	.globl	handle_compress                 // -- Begin function handle_compress
	.p2align	2
	.type	handle_compress,@function
handle_compress:                        // @handle_compress
.Lfunc_begin17:
	.loc	3 40 0                          // main.c:40:0
	.cfi_startproc
// %bb.0:
	str	x29, [sp, #-48]!                // 8-byte Folded Spill
	stp	x30, x21, [sp, #16]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             // 16-byte Folded Spill
	sub	sp, sp, #1, lsl #12             // =4096
	sub	sp, sp, #112                    // =112
	.cfi_def_cfa_offset 4256
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w30, -32
	.cfi_offset w29, -48
.Ltmp396:
	//DEBUG_VALUE: handle_compress:out <- 0
	.loc	3 42 29 prologue_end            // main.c:42:29
	str	xzr, [sp, #4216]
.Ltmp397:
	//DEBUG_VALUE: handle_compress:outlen <- 0
	.loc	3 44 12                         // main.c:44:12
	str	xzr, [sp, #8]
.Ltmp398:
	//DEBUG_VALUE: handle_compress:sc <- 0
	.loc	3 47 5                          // main.c:47:5
	adrp	x0, .Lstr.18
	add	x0, x0, :lo12:.Lstr.18
	bl	puts
.Ltmp399:
	.loc	3 48 33                         // main.c:48:33
	adrp	x8, stdin
	ldr	x20, [x8, :lo12:stdin]
	.loc	3 48 9 is_stmt 0                // main.c:48:9
	add	x0, sp, #1, lsl #12             // =4096
	add	x0, x0, #16                     // =16
	mov	w1, #95
	add	x21, sp, #1, lsl #12            // =4096
	add	x21, x21, #16                   // =16
	mov	x2, x20
	bl	fread
.Ltmp400:
	.loc	3 48 9                          // main.c:48:9
	cmp	x0, #95                         // =95
	.loc	3 0 0                           // main.c:0:0
	mov	x19, xzr
	.loc	3 48 9                          // main.c:48:9
	b.ne	.LBB17_13
.Ltmp401:
// %bb.1:
	//DEBUG_VALUE: handle_compress:sc <- 0
	//DEBUG_VALUE: handle_compress:outlen <- 0
	//DEBUG_VALUE: handle_compress:out <- 0
	.loc	3 51 5 is_stmt 1                // main.c:51:5
	add	x0, sp, #16                     // =16
	mov	w2, #4096
	add	x19, sp, #16                    // =16
	mov	w1, wzr
	bl	memset
.Ltmp402:
	//DEBUG_VALUE: handle_compress:i <- 0
	.loc	3 0 5 is_stmt 0                 // main.c:0:5
	mov	x8, xzr
.Ltmp403:
.LBB17_2:                               // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: handle_compress:sc <- 0
	//DEBUG_VALUE: handle_compress:outlen <- 0
	//DEBUG_VALUE: handle_compress:out <- 0
	//DEBUG_VALUE: handle_compress:i <- $x8
	.loc	3 54 13 is_stmt 1               // main.c:54:13
	ldrb	w9, [x21, x8]
	.loc	3 54 25 is_stmt 0               // main.c:54:25
	sub	w10, w9, #32                    // =32
	and	w10, w10, #0xff
	cmp	w10, #94                        // =94
	b.hi	.LBB17_12
.Ltmp404:
// %bb.3:                               //   in Loop: Header=BB17_2 Depth=1
	//DEBUG_VALUE: handle_compress:i <- $x8
	//DEBUG_VALUE: handle_compress:sc <- 0
	//DEBUG_VALUE: handle_compress:outlen <- 0
	//DEBUG_VALUE: handle_compress:out <- 0
	.loc	3 56 25 is_stmt 1               // main.c:56:25
	ldrb	w10, [x19, x9]
	add	w11, w10, #1                    // =1
	strb	w11, [x19, x9]
.Ltmp405:
	//DEBUG_VALUE: handle_compress:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $x8
	.loc	3 56 13 is_stmt 0               // main.c:56:13
	cbnz	w10, .LBB17_12
.Ltmp406:
// %bb.4:                               //   in Loop: Header=BB17_2 Depth=1
	//DEBUG_VALUE: handle_compress:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $x8
	//DEBUG_VALUE: handle_compress:sc <- 0
	//DEBUG_VALUE: handle_compress:outlen <- 0
	//DEBUG_VALUE: handle_compress:out <- 0
	.loc	3 52 34 is_stmt 1               // main.c:52:34
	add	x8, x8, #1                      // =1
.Ltmp407:
	//DEBUG_VALUE: handle_compress:i <- $x8
	.loc	3 52 5 is_stmt 0                // main.c:52:5
	cmp	x8, #95                         // =95
	b.ne	.LBB17_2
.Ltmp408:
// %bb.5:
	//DEBUG_VALUE: handle_compress:i <- $x8
	//DEBUG_VALUE: handle_compress:sc <- 0
	//DEBUG_VALUE: handle_compress:outlen <- 0
	//DEBUG_VALUE: handle_compress:out <- 0
	.loc	3 60 5 is_stmt 1                // main.c:60:5
	adrp	x0, .Lstr.19
	add	x0, x0, :lo12:.Lstr.19
	bl	puts
.Ltmp409:
	.loc	3 61 5                          // main.c:61:5
	add	x0, sp, #16                     // =16
	mov	w2, #4096
	add	x21, sp, #16                    // =16
	mov	w1, wzr
	bl	memset
.Ltmp410:
	.loc	3 62 12                         // main.c:62:12
	adrp	x8, stdout
	ldr	x0, [x8, :lo12:stdout]
	.loc	3 62 5 is_stmt 0                // main.c:62:5
	bl	fflush
.Ltmp411:
	.loc	3 63 9 is_stmt 1                // main.c:63:9
	add	x0, sp, #16                     // =16
	mov	w1, #4096
	mov	w2, wzr
	mov	x3, x20
	bl	freaduntil
.Ltmp412:
	.loc	3 63 9 is_stmt 0                // main.c:63:9
	tbnz	x0, #63, .LBB17_12
.Ltmp413:
// %bb.6:
	//DEBUG_VALUE: handle_compress:sc <- 0
	//DEBUG_VALUE: handle_compress:outlen <- 0
	//DEBUG_VALUE: handle_compress:out <- 0
	.loc	3 66 10 is_stmt 1               // main.c:66:10
	add	x0, sp, #1, lsl #12             // =4096
	add	x0, x0, #16                     // =16
	bl	sc_new
.Ltmp414:
	mov	x19, x0
.Ltmp415:
	//DEBUG_VALUE: handle_compress:sc <- $x19
	.loc	3 67 14                         // main.c:67:14
	str	x21, [x0, #96]
	.loc	3 68 20                         // main.c:68:20
	add	x0, sp, #16                     // =16
	bl	strlen
.Ltmp416:
	.loc	3 68 18 is_stmt 0               // main.c:68:18
	str	x0, [x19, #104]
.Ltmp417:
	//DEBUG_VALUE: handle_compress:outlen <- [DW_OP_plus_uconst 8, DW_OP_deref] $sp
	//DEBUG_VALUE: handle_compress:out <- [DW_OP_plus_uconst 4216, DW_OP_deref] $sp
	.loc	3 69 9 is_stmt 1                // main.c:69:9
	add	x1, sp, #1, lsl #12             // =4096
	add	x1, x1, #120                    // =120
	add	x2, sp, #8                      // =8
	mov	x0, x19
	bl	sc_scompress
.Ltmp418:
	.loc	3 69 9 is_stmt 0                // main.c:69:9
	tbnz	w0, #31, .LBB17_13
.Ltmp419:
// %bb.7:
	//DEBUG_VALUE: handle_compress:sc <- $x19
	//DEBUG_VALUE: handle_compress:out <- [DW_OP_plus_uconst 4216, DW_OP_deref] $sp
	//DEBUG_VALUE: handle_compress:outlen <- [DW_OP_plus_uconst 8, DW_OP_deref] $sp
	.loc	3 71 39 is_stmt 1               // main.c:71:39
	ldr	x1, [x19, #104]
	.loc	3 71 5 is_stmt 0                // main.c:71:5
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	bl	printf
.Ltmp420:
	.loc	3 72 44 is_stmt 1               // main.c:72:44
	ldr	x20, [sp, #8]
.Ltmp421:
	//DEBUG_VALUE: handle_compress:outlen <- $x20
	.loc	3 72 61 is_stmt 0               // main.c:72:61
	mov	x0, x20
	bl	__floatundidf
.Ltmp422:
	.loc	3 72 75                         // main.c:72:75
	ldr	x8, [x19, #104]
	.loc	3 72 61                         // main.c:72:61
	mov	x21, x0
	.loc	3 72 71                         // main.c:72:71
	mov	x0, x8
	bl	__floatundidf
.Ltmp423:
	mov	x1, x0
	.loc	3 72 68                         // main.c:72:68
	mov	x0, x21
	bl	__divdf3
.Ltmp424:
	.loc	3 72 92                         // main.c:72:92
	mov	x1, #4636737291354636288
	bl	__muldf3
.Ltmp425:
	.loc	3 72 53                         // main.c:72:53
	bl	__fixdfsi
.Ltmp426:
	mov	w2, w0
	.loc	3 72 5                          // main.c:72:5
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	mov	x1, x20
	bl	printf
.Ltmp427:
	.loc	3 73 5 is_stmt 1                // main.c:73:5
	adrp	x0, .L.str.7
	add	x0, x0, :lo12:.L.str.7
	bl	printf
.Ltmp428:
	//DEBUG_VALUE: handle_compress:i <- 0
	.loc	3 74 21                         // main.c:74:21
	ldr	x8, [sp, #8]
.Ltmp429:
	//DEBUG_VALUE: handle_compress:outlen <- $x8
	.loc	3 74 5 is_stmt 0                // main.c:74:5
	cbz	x8, .LBB17_11
.Ltmp430:
// %bb.8:                               // %.preheader
	//DEBUG_VALUE: handle_compress:sc <- $x19
	//DEBUG_VALUE: handle_compress:outlen <- $x8
	//DEBUG_VALUE: handle_compress:out <- [DW_OP_plus_uconst 4216, DW_OP_deref] $sp
	//DEBUG_VALUE: handle_compress:i <- 0
	.loc	3 0 5                           // main.c:0:5
	mov	x21, xzr
	adrp	x20, .L.str.8
	add	x20, x20, :lo12:.L.str.8
.Ltmp431:
.LBB17_9:                               // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: handle_compress:sc <- $x19
	//DEBUG_VALUE: handle_compress:outlen <- $x8
	//DEBUG_VALUE: handle_compress:i <- $x21
	.loc	3 75 24 is_stmt 1               // main.c:75:24
	ldr	x8, [sp, #4216]
.Ltmp432:
	//DEBUG_VALUE: handle_compress:out <- $x8
	ldrb	w1, [x8, x21]
	.loc	3 75 9 is_stmt 0                // main.c:75:9
	mov	x0, x20
	bl	printf
.Ltmp433:
	//DEBUG_VALUE: handle_compress:i <- undef
	//DEBUG_VALUE: handle_compress:outlen <- undef
	.loc	3 74 5 is_stmt 1                // main.c:74:5
	cmp	x21, #30                        // =30
	b.hi	.LBB17_11
.Ltmp434:
// %bb.10:                              //   in Loop: Header=BB17_9 Depth=1
	//DEBUG_VALUE: handle_compress:sc <- $x19
	.loc	3 0 0 is_stmt 0                 // main.c:0:0
	ldr	x8, [sp, #8]
.Ltmp435:
	//DEBUG_VALUE: handle_compress:outlen <- $x8
	add	x21, x21, #1                    // =1
.Ltmp436:
	//DEBUG_VALUE: handle_compress:i <- $x21
	.loc	3 74 5                          // main.c:74:5
	cmp	x8, x21
	b.hi	.LBB17_9
.Ltmp437:
.LBB17_11:
	//DEBUG_VALUE: handle_compress:sc <- $x19
	.loc	3 76 5 is_stmt 1                // main.c:76:5
	mov	w0, #10
	bl	putchar
.Ltmp438:
	.loc	3 0 5 is_stmt 0                 // main.c:0:5
	b	.LBB17_14
.Ltmp439:
.LBB17_12:
	//DEBUG_VALUE: handle_compress:sc <- 0
	//DEBUG_VALUE: handle_compress:outlen <- 0
	//DEBUG_VALUE: handle_compress:out <- 0
	mov	x19, xzr
.Ltmp440:
.LBB17_13:
	//DEBUG_VALUE: handle_compress:sc <- $x19
	//DEBUG_LABEL: handle_compress:fail
	.loc	3 81 5 is_stmt 1                // main.c:81:5
	adrp	x0, .Lstr.20
	add	x0, x0, :lo12:.Lstr.20
	bl	puts
.Ltmp441:
.LBB17_14:
	//DEBUG_VALUE: handle_compress:sc <- $x19
	//DEBUG_VALUE: handle_compress:sc <- $x19
	//DEBUG_LABEL: handle_compress:done
	.loc	3 83 9                          // main.c:83:9
	cbz	x19, .LBB17_16
.Ltmp442:
// %bb.15:
	//DEBUG_VALUE: handle_compress:sc <- $x19
	.loc	3 84 9                          // main.c:84:9
	mov	x0, x19
	bl	free
.Ltmp443:
.LBB17_16:
	//DEBUG_VALUE: handle_compress:sc <- $x19
	.loc	3 85 9                          // main.c:85:9
	ldr	x0, [sp, #4216]
.Ltmp444:
	//DEBUG_VALUE: handle_compress:out <- $x0
	.loc	3 85 9 is_stmt 0                // main.c:85:9
	cbz	x0, .LBB17_18
.Ltmp445:
// %bb.17:
	//DEBUG_VALUE: handle_compress:sc <- $x19
	//DEBUG_VALUE: handle_compress:out <- $x0
	.loc	3 86 9 is_stmt 1                // main.c:86:9
	bl	free
.Ltmp446:
.LBB17_18:
	//DEBUG_VALUE: handle_compress:sc <- $x19
	.loc	3 87 1                          // main.c:87:1
	add	sp, sp, #1, lsl #12             // =4096
	add	sp, sp, #112                    // =112
	ldp	x20, x19, [sp, #32]             // 16-byte Folded Reload
.Ltmp447:
	ldp	x30, x21, [sp, #16]             // 16-byte Folded Reload
	ldr	x29, [sp], #48                  // 8-byte Folded Reload
	ret
.Ltmp448:
.Lfunc_end17:
	.size	handle_compress, .Lfunc_end17-handle_compress
	.cfi_endproc
	.file	6 "/home/salman/DPP/data/KPRCA_00064/src/./stdio.h"
                                        // -- End function
	.globl	handle_decompress               // -- Begin function handle_decompress
	.p2align	2
	.type	handle_decompress,@function
handle_decompress:                      // @handle_decompress
.Lfunc_begin18:
	.loc	3 90 0                          // main.c:90:0
	.cfi_startproc
// %bb.0:
	str	x29, [sp, #-64]!                // 8-byte Folded Spill
	stp	x30, x23, [sp, #16]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             // 16-byte Folded Spill
	sub	sp, sp, #1, lsl #12             // =4096
	sub	sp, sp, #112                    // =112
	.cfi_def_cfa_offset 4272
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w30, -48
	.cfi_offset w29, -64
.Ltmp449:
	//DEBUG_VALUE: handle_decompress:out <- 0
	.loc	3 92 29 prologue_end            // main.c:92:29
	str	xzr, [sp, #4216]
.Ltmp450:
	//DEBUG_VALUE: handle_decompress:outlen <- 0
	.loc	3 94 12                         // main.c:94:12
	str	xzr, [sp, #8]
.Ltmp451:
	//DEBUG_VALUE: handle_decompress:sc <- 0
	//DEBUG_VALUE: handle_decompress:len <- 0
	.loc	3 97 5                          // main.c:97:5
	adrp	x0, .Lstr.21
	add	x0, x0, :lo12:.Lstr.21
	bl	puts
.Ltmp452:
	.loc	3 98 33                         // main.c:98:33
	adrp	x8, stdin
	ldr	x19, [x8, :lo12:stdin]
	.loc	3 98 9 is_stmt 0                // main.c:98:9
	add	x0, sp, #1, lsl #12             // =4096
	add	x0, x0, #16                     // =16
	mov	w1, #95
	add	x20, sp, #1, lsl #12            // =4096
	add	x20, x20, #16                   // =16
	mov	x2, x19
	bl	fread
.Ltmp453:
	.loc	3 98 9                          // main.c:98:9
	cmp	x0, #95                         // =95
	.loc	3 0 0                           // main.c:0:0
	mov	x21, xzr
	.loc	3 98 9                          // main.c:98:9
	b.ne	.LBB18_11
.Ltmp454:
// %bb.1:
	//DEBUG_VALUE: handle_decompress:len <- 0
	//DEBUG_VALUE: handle_decompress:sc <- 0
	//DEBUG_VALUE: handle_decompress:outlen <- 0
	//DEBUG_VALUE: handle_decompress:out <- 0
	.loc	3 101 5 is_stmt 1               // main.c:101:5
	add	x0, sp, #16                     // =16
	mov	w2, #4096
	add	x21, sp, #16                    // =16
	mov	w1, wzr
	bl	memset
.Ltmp455:
	//DEBUG_VALUE: handle_decompress:i <- 0
	.loc	3 0 5 is_stmt 0                 // main.c:0:5
	mov	x8, xzr
.Ltmp456:
.LBB18_2:                               // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: handle_decompress:len <- 0
	//DEBUG_VALUE: handle_decompress:sc <- 0
	//DEBUG_VALUE: handle_decompress:outlen <- 0
	//DEBUG_VALUE: handle_decompress:out <- 0
	//DEBUG_VALUE: handle_decompress:i <- $x8
	.loc	3 104 13 is_stmt 1              // main.c:104:13
	ldrb	w9, [x20, x8]
	.loc	3 104 25 is_stmt 0              // main.c:104:25
	sub	w10, w9, #32                    // =32
	and	w10, w10, #0xff
	cmp	w10, #94                        // =94
	b.hi	.LBB18_10
.Ltmp457:
// %bb.3:                               //   in Loop: Header=BB18_2 Depth=1
	//DEBUG_VALUE: handle_decompress:i <- $x8
	//DEBUG_VALUE: handle_decompress:len <- 0
	//DEBUG_VALUE: handle_decompress:sc <- 0
	//DEBUG_VALUE: handle_decompress:outlen <- 0
	//DEBUG_VALUE: handle_decompress:out <- 0
	.loc	3 106 25 is_stmt 1              // main.c:106:25
	ldrb	w10, [x21, x9]
	add	w11, w10, #1                    // =1
	strb	w11, [x21, x9]
.Ltmp458:
	//DEBUG_VALUE: handle_decompress:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $x8
	.loc	3 106 13 is_stmt 0              // main.c:106:13
	cbnz	w10, .LBB18_10
.Ltmp459:
// %bb.4:                               //   in Loop: Header=BB18_2 Depth=1
	//DEBUG_VALUE: handle_decompress:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $x8
	//DEBUG_VALUE: handle_decompress:len <- 0
	//DEBUG_VALUE: handle_decompress:sc <- 0
	//DEBUG_VALUE: handle_decompress:outlen <- 0
	//DEBUG_VALUE: handle_decompress:out <- 0
	.loc	3 102 34 is_stmt 1              // main.c:102:34
	add	x8, x8, #1                      // =1
.Ltmp460:
	//DEBUG_VALUE: handle_decompress:i <- $x8
	.loc	3 102 5 is_stmt 0               // main.c:102:5
	cmp	x8, #95                         // =95
	b.ne	.LBB18_2
.Ltmp461:
// %bb.5:
	//DEBUG_VALUE: handle_decompress:i <- $x8
	//DEBUG_VALUE: handle_decompress:len <- 0
	//DEBUG_VALUE: handle_decompress:sc <- 0
	//DEBUG_VALUE: handle_decompress:outlen <- 0
	//DEBUG_VALUE: handle_decompress:out <- 0
	.loc	3 110 5 is_stmt 1               // main.c:110:5
	adrp	x0, .Lstr.22
	add	x0, x0, :lo12:.Lstr.22
	bl	puts
.Ltmp462:
	.loc	3 111 5                         // main.c:111:5
	add	x0, sp, #16                     // =16
	mov	w2, #4096
	mov	w1, wzr
	bl	memset
.Ltmp463:
	.loc	3 112 12                        // main.c:112:12
	adrp	x8, stdout
	ldr	x20, [x8, :lo12:stdout]
	.loc	3 112 5 is_stmt 0               // main.c:112:5
	mov	x0, x20
	bl	fflush
.Ltmp464:
	.loc	3 113 9 is_stmt 1               // main.c:113:9
	add	x0, sp, #16                     // =16
	mov	w1, #4096
	mov	w2, #10
	mov	x3, x19
	bl	freaduntil
.Ltmp465:
	.loc	3 113 9 is_stmt 0               // main.c:113:9
	tbnz	x0, #63, .LBB18_10
.Ltmp466:
// %bb.6:
	//DEBUG_VALUE: handle_decompress:len <- 0
	//DEBUG_VALUE: handle_decompress:sc <- 0
	//DEBUG_VALUE: handle_decompress:outlen <- 0
	//DEBUG_VALUE: handle_decompress:out <- 0
	.loc	3 115 11 is_stmt 1              // main.c:115:11
	add	x0, sp, #16                     // =16
	mov	w2, #10
	mov	x1, xzr
	bl	strtoul
.Ltmp467:
	//DEBUG_VALUE: handle_decompress:len <- $x0
	.loc	3 116 9                         // main.c:116:9
	cmp	x0, #1, lsl #12                 // =4096
	.loc	3 0 0 is_stmt 0                 // main.c:0:0
	mov	x21, xzr
	.loc	3 116 9                         // main.c:116:9
	b.hi	.LBB18_11
.Ltmp468:
// %bb.7:
	//DEBUG_VALUE: handle_decompress:len <- $x0
	//DEBUG_VALUE: handle_decompress:sc <- 0
	//DEBUG_VALUE: handle_decompress:outlen <- 0
	//DEBUG_VALUE: handle_decompress:out <- 0
	.loc	3 0 0                           // main.c:0:0
	mov	x22, x0
.Ltmp469:
	//DEBUG_VALUE: handle_decompress:len <- $x22
	.loc	3 119 5 is_stmt 1               // main.c:119:5
	adrp	x0, .Lstr.23
	add	x0, x0, :lo12:.Lstr.23
	bl	puts
.Ltmp470:
	.loc	3 120 5                         // main.c:120:5
	add	x0, sp, #16                     // =16
	mov	w2, #4096
	add	x23, sp, #16                    // =16
	mov	w1, wzr
	bl	memset
.Ltmp471:
	.loc	3 121 9                         // main.c:121:9
	add	x0, sp, #16                     // =16
	mov	x1, x22
	mov	x2, x19
	bl	fread
.Ltmp472:
	.loc	3 121 9 is_stmt 0               // main.c:121:9
	tbnz	x0, #63, .LBB18_10
.Ltmp473:
// %bb.8:
	//DEBUG_VALUE: handle_decompress:len <- $x22
	//DEBUG_VALUE: handle_decompress:sc <- 0
	//DEBUG_VALUE: handle_decompress:outlen <- 0
	//DEBUG_VALUE: handle_decompress:out <- 0
	.loc	3 124 10 is_stmt 1              // main.c:124:10
	add	x0, sp, #1, lsl #12             // =4096
	add	x0, x0, #16                     // =16
	bl	sc_new
.Ltmp474:
	mov	x21, x0
.Ltmp475:
	//DEBUG_VALUE: handle_decompress:sc <- $x21
	.loc	3 125 14                        // main.c:125:14
	stp	x23, x22, [x0, #96]
.Ltmp476:
	//DEBUG_VALUE: handle_decompress:outlen <- [DW_OP_plus_uconst 8, DW_OP_deref] $sp
	//DEBUG_VALUE: handle_decompress:out <- [DW_OP_plus_uconst 4216, DW_OP_deref] $sp
	.loc	3 127 9                         // main.c:127:9
	add	x1, sp, #1, lsl #12             // =4096
	add	x1, x1, #120                    // =120
	add	x2, sp, #8                      // =8
	bl	sc_sdecompress
.Ltmp477:
	.loc	3 127 9 is_stmt 0               // main.c:127:9
	tbnz	w0, #31, .LBB18_11
.Ltmp478:
// %bb.9:
	//DEBUG_VALUE: handle_decompress:len <- $x22
	//DEBUG_VALUE: handle_decompress:sc <- $x21
	//DEBUG_VALUE: handle_decompress:out <- [DW_OP_plus_uconst 4216, DW_OP_deref] $sp
	//DEBUG_VALUE: handle_decompress:outlen <- [DW_OP_plus_uconst 8, DW_OP_deref] $sp
	.loc	3 129 41 is_stmt 1              // main.c:129:41
	ldr	x1, [x21, #104]
	.loc	3 129 5 is_stmt 0               // main.c:129:5
	adrp	x0, .L.str.12
	add	x0, x0, :lo12:.L.str.12
	bl	printf
.Ltmp479:
	.loc	3 130 51 is_stmt 1              // main.c:130:51
	ldr	x0, [sp, #4216]
.Ltmp480:
	//DEBUG_VALUE: handle_decompress:out <- $x0
	.loc	3 130 35 is_stmt 0              // main.c:130:35
	bl	strlen
.Ltmp481:
	mov	x1, x0
	.loc	3 130 5                         // main.c:130:5
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	bl	printf
.Ltmp482:
	.loc	3 131 5 is_stmt 1               // main.c:131:5
	adrp	x0, .L.str.13
	add	x0, x0, :lo12:.L.str.13
	bl	printf
.Ltmp483:
	.loc	3 132 12                        // main.c:132:12
	ldr	x0, [sp, #4216]
.Ltmp484:
	//DEBUG_VALUE: handle_decompress:out <- $x0
	.loc	3 132 17 is_stmt 0              // main.c:132:17
	ldr	x1, [sp, #8]
.Ltmp485:
	//DEBUG_VALUE: handle_decompress:outlen <- $x1
	.loc	3 132 5                         // main.c:132:5
	mov	x2, x20
	bl	fwrite
.Ltmp486:
	.loc	3 133 5 is_stmt 1               // main.c:133:5
	adrp	x0, .L.str.9
	add	x0, x0, :lo12:.L.str.9
	mov	w1, #1
	mov	x2, x20
	bl	fwrite
.Ltmp487:
	.loc	3 0 5 is_stmt 0                 // main.c:0:5
	b	.LBB18_12
.Ltmp488:
.LBB18_10:
	//DEBUG_VALUE: handle_decompress:sc <- 0
	//DEBUG_VALUE: handle_decompress:outlen <- 0
	//DEBUG_VALUE: handle_decompress:out <- 0
	mov	x21, xzr
.Ltmp489:
.LBB18_11:
	//DEBUG_VALUE: handle_decompress:sc <- $x21
	//DEBUG_LABEL: handle_decompress:fail
	.loc	3 137 5 is_stmt 1               // main.c:137:5
	adrp	x0, .Lstr.24
	add	x0, x0, :lo12:.Lstr.24
	bl	puts
.Ltmp490:
.LBB18_12:
	//DEBUG_VALUE: handle_decompress:sc <- $x21
	//DEBUG_VALUE: handle_decompress:sc <- $x21
	//DEBUG_LABEL: handle_decompress:done
	.loc	3 139 9                         // main.c:139:9
	cbz	x21, .LBB18_14
.Ltmp491:
// %bb.13:
	//DEBUG_VALUE: handle_decompress:sc <- $x21
	.loc	3 140 9                         // main.c:140:9
	mov	x0, x21
	bl	free
.Ltmp492:
.LBB18_14:
	//DEBUG_VALUE: handle_decompress:sc <- $x21
	.loc	3 141 9                         // main.c:141:9
	ldr	x0, [sp, #4216]
.Ltmp493:
	//DEBUG_VALUE: handle_decompress:out <- $x0
	.loc	3 141 9 is_stmt 0               // main.c:141:9
	cbz	x0, .LBB18_16
.Ltmp494:
// %bb.15:
	//DEBUG_VALUE: handle_decompress:sc <- $x21
	//DEBUG_VALUE: handle_decompress:out <- $x0
	.loc	3 142 9 is_stmt 1               // main.c:142:9
	bl	free
.Ltmp495:
.LBB18_16:
	//DEBUG_VALUE: handle_decompress:sc <- $x21
	.loc	3 143 1                         // main.c:143:1
	add	sp, sp, #1, lsl #12             // =4096
	add	sp, sp, #112                    // =112
	ldp	x20, x19, [sp, #48]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             // 16-byte Folded Reload
.Ltmp496:
	ldp	x30, x23, [sp, #16]             // 16-byte Folded Reload
	ldr	x29, [sp], #64                  // 8-byte Folded Reload
	ret
.Ltmp497:
.Lfunc_end18:
	.size	handle_decompress, .Lfunc_end18-handle_decompress
	.cfi_endproc
                                        // -- End function
	.globl	main                            // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
.Lfunc_begin19:
	.loc	3 146 0                         // main.c:146:0
	.cfi_startproc
// %bb.0:
	str	x30, [sp, #-48]!                // 8-byte Folded Spill
	stp	x22, x21, [sp, #16]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             // 16-byte Folded Spill
	.cfi_def_cfa_offset 48
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w30, -48
.Ltmp498:
	.loc	3 149 15 prologue_end           // main.c:149:15
	adrp	x8, stdin
	ldr	x19, [x8, :lo12:stdin]
	.loc	3 149 5 is_stmt 0               // main.c:149:5
	mov	w1, #1
	mov	x0, x19
	bl	fbuffered
.Ltmp499:
	//DEBUG_VALUE: main:i <- 0
	.loc	3 0 5                           // main.c:0:5
	mov	x21, xzr
	adrp	x22, secret
	adrp	x20, .L.str.8
	add	x20, x20, :lo12:.L.str.8
.Ltmp500:
.LBB19_1:                               // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: main:i <- $x21
	.loc	3 151 24 is_stmt 1              // main.c:151:24
	ldr	x8, [x22, :lo12:secret]
	ldrb	w1, [x8, x21]
	.loc	3 151 9 is_stmt 0               // main.c:151:9
	mov	x0, x20
	bl	printf
.Ltmp501:
	.loc	3 150 5 is_stmt 1               // main.c:150:5
	cmp	x21, #6                         // =6
.Ltmp502:
	.loc	3 150 26 is_stmt 0              // main.c:150:26
	add	x21, x21, #2                    // =2
.Ltmp503:
	//DEBUG_VALUE: main:i <- $x21
	//DEBUG_VALUE: main:i <- $x21
	.loc	3 150 5                         // main.c:150:5
	b.lo	.LBB19_1
.Ltmp504:
// %bb.2:
	//DEBUG_VALUE: main:i <- $x21
	.loc	3 152 5 is_stmt 1               // main.c:152:5
	mov	w0, #10
	bl	putchar
.Ltmp505:
	.loc	3 155 9                         // main.c:155:9
	bl	print_menu
.Ltmp506:
	.loc	3 156 16                        // main.c:156:16
	adrp	x8, stdout
	ldr	x20, [x8, :lo12:stdout]
	.loc	3 156 9 is_stmt 0               // main.c:156:9
	mov	x0, x20
	bl	fflush
.Ltmp507:
	.loc	3 157 13 is_stmt 1              // main.c:157:13
	add	x0, sp, #8                      // =8
	mov	w1, #8
	mov	w2, #10
	mov	x3, x19
	bl	freaduntil
.Ltmp508:
	.loc	3 157 13 is_stmt 0              // main.c:157:13
	tbnz	x0, #63, .LBB19_11
.Ltmp509:
// %bb.3:
	//DEBUG_VALUE: main:i <- $x21
	.loc	3 0 13                          // main.c:0:13
	adrp	x21, .Lstr.26
.Ltmp510:
	add	x21, x21, :lo12:.Lstr.26
	b	.LBB19_6
.LBB19_4:                               //   in Loop: Header=BB19_6 Depth=1
.Ltmp511:
	.loc	3 165 17 is_stmt 1              // main.c:165:17
	bl	handle_decompress
.Ltmp512:
.LBB19_5:                               //   in Loop: Header=BB19_6 Depth=1
	.loc	3 155 9                         // main.c:155:9
	bl	print_menu
.Ltmp513:
	.loc	3 156 9                         // main.c:156:9
	mov	x0, x20
	bl	fflush
.Ltmp514:
	.loc	3 157 13                        // main.c:157:13
	add	x0, sp, #8                      // =8
	mov	w1, #8
	mov	w2, #10
	mov	x3, x19
	bl	freaduntil
.Ltmp515:
	.loc	3 157 13 is_stmt 0              // main.c:157:13
	tbnz	x0, #63, .LBB19_11
.LBB19_6:                               // =>This Inner Loop Header: Depth=1
	.loc	3 159 16 is_stmt 1              // main.c:159:16
	add	x0, sp, #8                      // =8
	mov	w2, #10
	mov	x1, xzr
	bl	strtoul
.Ltmp516:
	.loc	3 159 9 is_stmt 0               // main.c:159:9
	cmp	x0, #1                          // =1
	b.eq	.LBB19_10
// %bb.7:                               //   in Loop: Header=BB19_6 Depth=1
	cmp	x0, #2                          // =2
	b.eq	.LBB19_4
// %bb.8:                               //   in Loop: Header=BB19_6 Depth=1
	cmp	x0, #3                          // =3
	b.eq	.LBB19_12
// %bb.9:                               //   in Loop: Header=BB19_6 Depth=1
.Ltmp517:
	.loc	3 173 17 is_stmt 1              // main.c:173:17
	mov	x0, x21
	bl	puts
.Ltmp518:
	.loc	3 0 17 is_stmt 0                // main.c:0:17
	b	.LBB19_5
.LBB19_10:                              //   in Loop: Header=BB19_6 Depth=1
	.loc	3 162 17 is_stmt 1              // main.c:162:17
	bl	handle_compress
.Ltmp519:
	.loc	3 0 17 is_stmt 0                // main.c:0:17
	b	.LBB19_5
.Ltmp520:
.LBB19_11:
	.loc	3 158 13 is_stmt 1              // main.c:158:13
	mov	w0, #-1
	ldp	x20, x19, [sp, #32]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             // 16-byte Folded Reload
	ldr	x30, [sp], #48                  // 8-byte Folded Reload
	ret
.Ltmp521:
.LBB19_12:
	.loc	3 168 17                        // main.c:168:17
	adrp	x0, .Lstr.25
	add	x0, x0, :lo12:.Lstr.25
	bl	puts
.Ltmp522:
	.loc	3 169 17                        // main.c:169:17
	mov	x0, x20
	bl	fflush
.Ltmp523:
	.loc	3 170 17                        // main.c:170:17
	mov	w0, wzr
	bl	exit
.Ltmp524:
.Lfunc_end19:
	.size	main, .Lfunc_end19-main
	.cfi_endproc
                                        // -- End function
	.type	secret,@object                  // @secret
	.data
	.globl	secret
	.p2align	3
secret:
	.xword	1128775680
	.size	secret, 8

	.type	.Lstr,@object                   // @str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	"1. Compress"
	.size	.Lstr, 12

	.type	.Lstr.16,@object                // @str.16
.Lstr.16:
	.asciz	"2. Decompress"
	.size	.Lstr.16, 14

	.type	.Lstr.17,@object                // @str.17
.Lstr.17:
	.asciz	"3. Quit"
	.size	.Lstr.17, 8

	.type	.Lstr.18,@object                // @str.18
.Lstr.18:
	.asciz	"Key?"
	.size	.Lstr.18, 5

	.type	.Lstr.19,@object                // @str.19
.Lstr.19:
	.asciz	"Data?"
	.size	.Lstr.19, 6

	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"Original Size: %d\n"
	.size	.L.str.5, 19

	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"Compressed Size: %d (%d%%)\n"
	.size	.L.str.6, 28

	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"Compressed Data: "
	.size	.L.str.7, 18

	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"%02X"
	.size	.L.str.8, 5

	.type	.Lstr.20,@object                // @str.20
.Lstr.20:
	.asciz	"error."
	.size	.Lstr.20, 7

	.type	.Lstr.21,@object                // @str.21
.Lstr.21:
	.asciz	"Key?"
	.size	.Lstr.21, 5

	.type	.Lstr.22,@object                // @str.22
.Lstr.22:
	.asciz	"Length?"
	.size	.Lstr.22, 8

	.type	.Lstr.23,@object                // @str.23
.Lstr.23:
	.asciz	"Data?"
	.size	.Lstr.23, 6

	.type	.L.str.12,@object               // @.str.12
.L.str.12:
	.asciz	"Compressed Size: %d\n"
	.size	.L.str.12, 21

	.type	.L.str.13,@object               // @.str.13
.L.str.13:
	.asciz	"Original Data: "
	.size	.L.str.13, 16

	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	"\n"
	.size	.L.str.9, 2

	.type	.Lstr.24,@object                // @str.24
.Lstr.24:
	.asciz	"error."
	.size	.Lstr.24, 7

	.type	.Lstr.25,@object                // @str.25
.Lstr.25:
	.asciz	"Bye."
	.size	.Lstr.25, 5

	.type	.Lstr.26,@object                // @str.26
.Lstr.26:
	.asciz	"Invalid menu."
	.size	.Lstr.26, 14

	.file	7 "/home/salman/DPP/data/KPRCA_00064/src/./libcgc.h"
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
	.xword	.Lfunc_begin0-.Lfunc_begin0
	.xword	.Ltmp0-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.xword	.Ltmp0-.Lfunc_begin0
	.xword	.Ltmp2-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	99                              // DW_OP_reg19
	.xword	.Ltmp2-.Lfunc_begin0
	.xword	.Lfunc_end0-.Lfunc_begin0
	.hword	4                               // Loc expr size
	.byte	243                             // DW_OP_GNU_entry_value
	.byte	1                               // 1
	.byte	80                              // DW_OP_reg0
	.byte	159                             // DW_OP_stack_value
	.xword	0
	.xword	0
.Ldebug_loc1:
	.xword	.Ltmp1-.Lfunc_begin0
	.xword	.Lfunc_end0-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.xword	0
	.xword	0
.Ldebug_loc2:
	.xword	.Lfunc_begin1-.Lfunc_begin0
	.xword	.Ltmp20-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.xword	.Ltmp20-.Lfunc_begin0
	.xword	.Ltmp21-.Lfunc_begin0
	.hword	4                               // Loc expr size
	.byte	243                             // DW_OP_GNU_entry_value
	.byte	1                               // 1
	.byte	80                              // DW_OP_reg0
	.byte	159                             // DW_OP_stack_value
	.xword	.Ltmp21-.Lfunc_begin0
	.xword	.Ltmp22-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.xword	.Ltmp22-.Lfunc_begin0
	.xword	.Lfunc_end1-.Lfunc_begin0
	.hword	4                               // Loc expr size
	.byte	243                             // DW_OP_GNU_entry_value
	.byte	1                               // 1
	.byte	80                              // DW_OP_reg0
	.byte	159                             // DW_OP_stack_value
	.xword	0
	.xword	0
.Ldebug_loc3:
	.xword	.Ltmp6-.Lfunc_begin0
	.xword	.Ltmp17-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	91                              // DW_OP_reg11
	.xword	.Ltmp19-.Lfunc_begin0
	.xword	.Ltmp21-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	91                              // DW_OP_reg11
	.xword	0
	.xword	0
.Ldebug_loc4:
	.xword	.Lfunc_begin1-.Lfunc_begin0
	.xword	.Ltmp6-.Lfunc_begin0
	.hword	2                               // Loc expr size
	.byte	48                              // DW_OP_lit0
	.byte	159                             // DW_OP_stack_value
	.xword	.Ltmp6-.Lfunc_begin0
	.xword	.Ltmp12-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	88                              // DW_OP_reg8
	.xword	.Ltmp14-.Lfunc_begin0
	.xword	.Ltmp21-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	88                              // DW_OP_reg8
	.xword	.Ltmp21-.Lfunc_begin0
	.xword	.Lfunc_end1-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	111                             // DW_OP_reg31
	.xword	0
	.xword	0
.Ldebug_loc5:
	.xword	.Lfunc_begin1-.Lfunc_begin0
	.xword	.Ltmp6-.Lfunc_begin0
	.hword	2                               // Loc expr size
	.byte	48                              // DW_OP_lit0
	.byte	159                             // DW_OP_stack_value
	.xword	.Ltmp6-.Lfunc_begin0
	.xword	.Ltmp21-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	89                              // DW_OP_reg9
	.xword	.Ltmp21-.Lfunc_begin0
	.xword	.Lfunc_end1-.Lfunc_begin0
	.hword	2                               // Loc expr size
	.byte	48                              // DW_OP_lit0
	.byte	159                             // DW_OP_stack_value
	.xword	0
	.xword	0
.Ldebug_loc6:
	.xword	.Ltmp11-.Lfunc_begin0
	.xword	.Ltmp14-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	96                              // DW_OP_reg16
	.xword	0
	.xword	0
.Ldebug_loc7:
	.xword	.Ltmp24-.Lfunc_begin0
	.xword	.Lfunc_end2-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	81                              // DW_OP_reg1
	.xword	0
	.xword	0
.Ldebug_loc8:
	.xword	.Ltmp24-.Lfunc_begin0
	.xword	.Ltmp26-.Lfunc_begin0
	.hword	2                               // Loc expr size
	.byte	48                              // DW_OP_lit0
	.byte	159                             // DW_OP_stack_value
	.xword	0
	.xword	0
.Ldebug_loc9:
	.xword	.Ltmp26-.Lfunc_begin0
	.xword	.Ltmp33-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	88                              // DW_OP_reg8
	.xword	.Ltmp35-.Lfunc_begin0
	.xword	.Ltmp38-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	88                              // DW_OP_reg8
	.xword	.Ltmp40-.Lfunc_begin0
	.xword	.Lfunc_end2-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	88                              // DW_OP_reg8
	.xword	0
	.xword	0
.Ldebug_loc10:
	.xword	.Ltmp31-.Lfunc_begin0
	.xword	.Ltmp32-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	93                              // DW_OP_reg13
	.xword	0
	.xword	0
.Ldebug_loc11:
	.xword	.Lfunc_begin3-.Lfunc_begin0
	.xword	.Ltmp42-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.xword	.Ltmp46-.Lfunc_begin0
	.xword	.Ltmp47-.Lfunc_begin0
	.hword	4                               // Loc expr size
	.byte	243                             // DW_OP_GNU_entry_value
	.byte	1                               // 1
	.byte	80                              // DW_OP_reg0
	.byte	159                             // DW_OP_stack_value
	.xword	0
	.xword	0
.Ldebug_loc12:
	.xword	.Lfunc_begin3-.Lfunc_begin0
	.xword	.Ltmp42-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	82                              // DW_OP_reg2
	.xword	.Ltmp45-.Lfunc_begin0
	.xword	.Ltmp47-.Lfunc_begin0
	.hword	4                               // Loc expr size
	.byte	243                             // DW_OP_GNU_entry_value
	.byte	1                               // 1
	.byte	82                              // DW_OP_reg2
	.byte	159                             // DW_OP_stack_value
	.xword	0
	.xword	0
.Ldebug_loc13:
	.xword	.Lfunc_begin3-.Lfunc_begin0
	.xword	.Ltmp42-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.xword	0
	.xword	0
.Ldebug_loc14:
	.xword	.Lfunc_begin3-.Lfunc_begin0
	.xword	.Ltmp42-.Lfunc_begin0
	.hword	2                               // Loc expr size
	.byte	48                              // DW_OP_lit0
	.byte	159                             // DW_OP_stack_value
	.xword	0
	.xword	0
.Ldebug_loc15:
	.xword	.Lfunc_begin4-.Lfunc_begin0
	.xword	.Ltmp53-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.xword	.Ltmp53-.Lfunc_begin0
	.xword	.Ltmp58-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	101                             // DW_OP_reg21
	.xword	.Ltmp59-.Lfunc_begin0
	.xword	.Ltmp67-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	101                             // DW_OP_reg21
	.xword	0
	.xword	0
.Ldebug_loc16:
	.xword	.Lfunc_begin4-.Lfunc_begin0
	.xword	.Ltmp60-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	81                              // DW_OP_reg1
	.xword	.Ltmp60-.Lfunc_begin0
	.xword	.Ltmp67-.Lfunc_begin0
	.hword	4                               // Loc expr size
	.byte	243                             // DW_OP_GNU_entry_value
	.byte	1                               // 1
	.byte	81                              // DW_OP_reg1
	.byte	159                             // DW_OP_stack_value
	.xword	0
	.xword	0
.Ldebug_loc17:
	.xword	.Lfunc_begin4-.Lfunc_begin0
	.xword	.Ltmp61-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	82                              // DW_OP_reg2
	.xword	.Ltmp61-.Lfunc_begin0
	.xword	.Ltmp67-.Lfunc_begin0
	.hword	4                               // Loc expr size
	.byte	243                             // DW_OP_GNU_entry_value
	.byte	1                               // 1
	.byte	82                              // DW_OP_reg2
	.byte	159                             // DW_OP_stack_value
	.xword	0
	.xword	0
.Ldebug_loc18:
	.xword	.Lfunc_begin4-.Lfunc_begin0
	.xword	.Ltmp52-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	83                              // DW_OP_reg3
	.xword	.Ltmp52-.Lfunc_begin0
	.xword	.Ltmp58-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	100                             // DW_OP_reg20
	.xword	.Ltmp59-.Lfunc_begin0
	.xword	.Ltmp67-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	100                             // DW_OP_reg20
	.xword	0
	.xword	0
.Ldebug_loc19:
	.xword	.Ltmp50-.Lfunc_begin0
	.xword	.Ltmp54-.Lfunc_begin0
	.hword	2                               // Loc expr size
	.byte	48                              // DW_OP_lit0
	.byte	159                             // DW_OP_stack_value
	.xword	.Ltmp54-.Lfunc_begin0
	.xword	.Ltmp55-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	89                              // DW_OP_reg9
	.xword	.Ltmp57-.Lfunc_begin0
	.xword	.Ltmp58-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	89                              // DW_OP_reg9
	.xword	0
	.xword	0
.Ldebug_loc20:
	.xword	.Ltmp63-.Lfunc_begin0
	.xword	.Ltmp67-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	102                             // DW_OP_reg22
	.xword	0
	.xword	0
.Ldebug_loc21:
	.xword	.Ltmp64-.Lfunc_begin0
	.xword	.Ltmp67-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.xword	0
	.xword	0
.Ldebug_loc22:
	.xword	.Lfunc_begin5-.Lfunc_begin0
	.xword	.Ltmp69-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.xword	.Ltmp69-.Lfunc_begin0
	.xword	.Ltmp71-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	99                              // DW_OP_reg19
	.xword	.Ltmp71-.Lfunc_begin0
	.xword	.Lfunc_end5-.Lfunc_begin0
	.hword	4                               // Loc expr size
	.byte	243                             // DW_OP_GNU_entry_value
	.byte	1                               // 1
	.byte	80                              // DW_OP_reg0
	.byte	159                             // DW_OP_stack_value
	.xword	0
	.xword	0
.Ldebug_loc23:
	.xword	.Ltmp70-.Lfunc_begin0
	.xword	.Lfunc_end5-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.xword	0
	.xword	0
.Ldebug_loc24:
	.xword	.Lfunc_begin6-.Lfunc_begin0
	.xword	.Ltmp73-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.xword	.Ltmp73-.Lfunc_begin0
	.xword	.Ltmp89-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	100                             // DW_OP_reg20
	.xword	0
	.xword	0
.Ldebug_loc25:
	.xword	.Lfunc_begin6-.Lfunc_begin0
	.xword	.Ltmp75-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	81                              // DW_OP_reg1
	.xword	.Ltmp75-.Lfunc_begin0
	.xword	.Ltmp88-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	99                              // DW_OP_reg19
	.xword	0
	.xword	0
.Ldebug_loc26:
	.xword	.Lfunc_begin6-.Lfunc_begin0
	.xword	.Ltmp77-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	82                              // DW_OP_reg2
	.xword	.Ltmp77-.Lfunc_begin0
	.xword	.Ltmp88-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	101                             // DW_OP_reg21
	.xword	0
	.xword	0
.Ldebug_loc27:
	.xword	.Ltmp79-.Lfunc_begin0
	.xword	.Ltmp80-.Lfunc_begin0
	.hword	2                               // Loc expr size
	.byte	48                              // DW_OP_lit0
	.byte	159                             // DW_OP_stack_value
	.xword	.Ltmp80-.Lfunc_begin0
	.xword	.Ltmp82-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.xword	.Ltmp82-.Lfunc_begin0
	.xword	.Ltmp87-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	102                             // DW_OP_reg22
	.xword	.Ltmp87-.Lfunc_begin0
	.xword	.Ltmp88-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.xword	0
	.xword	0
.Ldebug_loc28:
	.xword	.Ltmp79-.Lfunc_begin0
	.xword	.Ltmp88-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	103                             // DW_OP_reg23
	.xword	0
	.xword	0
.Ldebug_loc29:
	.xword	.Lfunc_begin7-.Lfunc_begin0
	.xword	.Ltmp96-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.xword	.Ltmp96-.Lfunc_begin0
	.xword	.Ltmp184-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	101                             // DW_OP_reg21
	.xword	0
	.xword	0
.Ldebug_loc30:
	.xword	.Lfunc_begin7-.Lfunc_begin0
	.xword	.Ltmp97-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	81                              // DW_OP_reg1
	.xword	.Ltmp97-.Lfunc_begin0
	.xword	.Ltmp115-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	103                             // DW_OP_reg23
	.xword	.Ltmp146-.Lfunc_begin0
	.xword	.Ltmp149-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	103                             // DW_OP_reg23
	.xword	0
	.xword	0
.Ldebug_loc31:
	.xword	.Lfunc_begin7-.Lfunc_begin0
	.xword	.Ltmp95-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	82                              // DW_OP_reg2
	.xword	.Ltmp95-.Lfunc_begin0
	.xword	.Ltmp111-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	102                             // DW_OP_reg22
	.xword	.Ltmp111-.Lfunc_begin0
	.xword	.Ltmp146-.Lfunc_begin0
	.hword	2                               // Loc expr size
	.byte	143                             // DW_OP_breg31
	.byte	16                              // 16
	.xword	.Ltmp146-.Lfunc_begin0
	.xword	.Ltmp149-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	102                             // DW_OP_reg22
	.xword	.Ltmp154-.Lfunc_begin0
	.xword	.Ltmp157-.Lfunc_begin0
	.hword	4                               // Loc expr size
	.byte	243                             // DW_OP_GNU_entry_value
	.byte	1                               // 1
	.byte	82                              // DW_OP_reg2
	.byte	159                             // DW_OP_stack_value
	.xword	0
	.xword	0
.Ldebug_loc32:
	.xword	.Ltmp97-.Lfunc_begin0
	.xword	.Ltmp115-.Lfunc_begin0
	.hword	2                               // Loc expr size
	.byte	48                              // DW_OP_lit0
	.byte	159                             // DW_OP_stack_value
	.xword	.Ltmp115-.Lfunc_begin0
	.xword	.Ltmp117-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	109                             // DW_OP_reg29
	.xword	.Ltmp117-.Lfunc_begin0
	.xword	.Ltmp120-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	108                             // DW_OP_reg28
	.xword	.Ltmp120-.Lfunc_begin0
	.xword	.Ltmp146-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	109                             // DW_OP_reg29
	.xword	.Ltmp146-.Lfunc_begin0
	.xword	.Ltmp149-.Lfunc_begin0
	.hword	2                               // Loc expr size
	.byte	48                              // DW_OP_lit0
	.byte	159                             // DW_OP_stack_value
	.xword	.Ltmp149-.Lfunc_begin0
	.xword	.Ltmp179-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	105                             // DW_OP_reg25
	.xword	0
	.xword	0
.Ldebug_loc33:
	.xword	.Ltmp97-.Lfunc_begin0
	.xword	.Ltmp115-.Lfunc_begin0
	.hword	2                               // Loc expr size
	.byte	48                              // DW_OP_lit0
	.byte	159                             // DW_OP_stack_value
	.xword	.Ltmp115-.Lfunc_begin0
	.xword	.Ltmp119-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	102                             // DW_OP_reg22
	.xword	.Ltmp121-.Lfunc_begin0
	.xword	.Ltmp146-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	102                             // DW_OP_reg22
	.xword	.Ltmp146-.Lfunc_begin0
	.xword	.Ltmp149-.Lfunc_begin0
	.hword	2                               // Loc expr size
	.byte	48                              // DW_OP_lit0
	.byte	159                             // DW_OP_stack_value
	.xword	.Ltmp149-.Lfunc_begin0
	.xword	.Ltmp153-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	102                             // DW_OP_reg22
	.xword	.Ltmp154-.Lfunc_begin0
	.xword	.Ltmp179-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	102                             // DW_OP_reg22
	.xword	0
	.xword	0
.Ldebug_loc34:
	.xword	.Ltmp97-.Lfunc_begin0
	.xword	.Ltmp98-.Lfunc_begin0
	.hword	2                               // Loc expr size
	.byte	48                              // DW_OP_lit0
	.byte	159                             // DW_OP_stack_value
	.xword	.Ltmp98-.Lfunc_begin0
	.xword	.Ltmp99-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	89                              // DW_OP_reg9
	.xword	.Ltmp99-.Lfunc_begin0
	.xword	.Ltmp115-.Lfunc_begin0
	.hword	2                               // Loc expr size
	.byte	48                              // DW_OP_lit0
	.byte	159                             // DW_OP_stack_value
	.xword	.Ltmp117-.Lfunc_begin0
	.xword	.Ltmp141-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	105                             // DW_OP_reg25
	.xword	.Ltmp146-.Lfunc_begin0
	.xword	.Ltmp149-.Lfunc_begin0
	.hword	2                               // Loc expr size
	.byte	48                              // DW_OP_lit0
	.byte	159                             // DW_OP_stack_value
	.xword	.Ltmp151-.Lfunc_begin0
	.xword	.Ltmp173-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	104                             // DW_OP_reg24
	.xword	0
	.xword	0
.Ldebug_loc35:
	.xword	.Ltmp101-.Lfunc_begin0
	.xword	.Ltmp184-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	100                             // DW_OP_reg20
	.xword	0
	.xword	0
.Ldebug_loc36:
	.xword	.Ltmp103-.Lfunc_begin0
	.xword	.Ltmp115-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	109                             // DW_OP_reg29
	.xword	.Ltmp146-.Lfunc_begin0
	.xword	.Ltmp179-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	109                             // DW_OP_reg29
	.xword	0
	.xword	0
.Ldebug_loc37:
	.xword	.Ltmp104-.Lfunc_begin0
	.xword	.Ltmp105-.Lfunc_begin0
	.hword	3                               // Loc expr size
	.byte	17                              // DW_OP_consts
	.byte	0                               // 0
	.byte	159                             // DW_OP_stack_value
	.xword	.Ltmp124-.Lfunc_begin0
	.xword	.Ltmp125-.Lfunc_begin0
	.hword	3                               // Loc expr size
	.byte	17                              // DW_OP_consts
	.byte	0                               // 0
	.byte	159                             // DW_OP_stack_value
	.xword	.Ltmp128-.Lfunc_begin0
	.xword	.Ltmp130-.Lfunc_begin0
	.hword	3                               // Loc expr size
	.byte	134                             // DW_OP_breg22
	.byte	127                             // -1
	.byte	159                             // DW_OP_stack_value
	.xword	.Ltmp130-.Lfunc_begin0
	.xword	.Ltmp132-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	104                             // DW_OP_reg24
	.xword	.Ltmp132-.Lfunc_begin0
	.xword	.Ltmp133-.Lfunc_begin0
	.hword	3                               // Loc expr size
	.byte	135                             // DW_OP_breg23
	.byte	127                             // -1
	.byte	159                             // DW_OP_stack_value
	.xword	.Ltmp133-.Lfunc_begin0
	.xword	.Ltmp141-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	104                             // DW_OP_reg24
	.xword	.Ltmp141-.Lfunc_begin0
	.xword	.Ltmp145-.Lfunc_begin0
	.hword	3                               // Loc expr size
	.byte	17                              // DW_OP_consts
	.byte	0                               // 0
	.byte	159                             // DW_OP_stack_value
	.xword	.Ltmp156-.Lfunc_begin0
	.xword	.Ltmp158-.Lfunc_begin0
	.hword	3                               // Loc expr size
	.byte	17                              // DW_OP_consts
	.byte	0                               // 0
	.byte	159                             // DW_OP_stack_value
	.xword	.Ltmp158-.Lfunc_begin0
	.xword	.Ltmp162-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	103                             // DW_OP_reg23
	.xword	.Ltmp173-.Lfunc_begin0
	.xword	.Ltmp177-.Lfunc_begin0
	.hword	3                               // Loc expr size
	.byte	17                              // DW_OP_consts
	.byte	0                               // 0
	.byte	159                             // DW_OP_stack_value
	.xword	.Ltmp177-.Lfunc_begin0
	.xword	.Ltmp179-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	88                              // DW_OP_reg8
	.xword	0
	.xword	0
.Ldebug_loc38:
	.xword	.Ltmp149-.Lfunc_begin0
	.xword	.Ltmp153-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	99                              // DW_OP_reg19
	.xword	.Ltmp163-.Lfunc_begin0
	.xword	.Ltmp165-.Lfunc_begin0
	.hword	2                               // Loc expr size
	.byte	48                              // DW_OP_lit0
	.byte	159                             // DW_OP_stack_value
	.xword	.Ltmp168-.Lfunc_begin0
	.xword	.Ltmp171-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	88                              // DW_OP_reg8
	.xword	.Ltmp171-.Lfunc_begin0
	.xword	.Ltmp172-.Lfunc_begin0
	.hword	2                               // Loc expr size
	.byte	48                              // DW_OP_lit0
	.byte	159                             // DW_OP_stack_value
	.xword	.Ltmp172-.Lfunc_begin0
	.xword	.Ltmp179-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	99                              // DW_OP_reg19
	.xword	0
	.xword	0
.Ldebug_loc39:
	.xword	.Ltmp135-.Lfunc_begin0
	.xword	.Ltmp137-.Lfunc_begin0
	.hword	3                               // Loc expr size
	.byte	17                              // DW_OP_consts
	.byte	0                               // 0
	.byte	159                             // DW_OP_stack_value
	.xword	.Ltmp137-.Lfunc_begin0
	.xword	.Ltmp141-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	88                              // DW_OP_reg8
	.xword	0
	.xword	0
.Ldebug_loc40:
	.xword	.Ltmp186-.Lfunc_begin0
	.xword	.Ltmp187-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	101                             // DW_OP_reg21
	.xword	.Ltmp187-.Lfunc_begin0
	.xword	.Ltmp192-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.xword	.Ltmp192-.Lfunc_begin0
	.xword	.Ltmp238-.Lfunc_begin0
	.hword	4                               // Loc expr size
	.byte	243                             // DW_OP_GNU_entry_value
	.byte	1                               // 1
	.byte	80                              // DW_OP_reg0
	.byte	159                             // DW_OP_stack_value
	.xword	.Ltmp238-.Lfunc_begin0
	.xword	.Ltmp239-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.xword	.Ltmp239-.Lfunc_begin0
	.xword	.Ltmp269-.Lfunc_begin0
	.hword	4                               // Loc expr size
	.byte	243                             // DW_OP_GNU_entry_value
	.byte	1                               // 1
	.byte	80                              // DW_OP_reg0
	.byte	159                             // DW_OP_stack_value
	.xword	0
	.xword	0
.Ldebug_loc41:
	.xword	.Ltmp186-.Lfunc_begin0
	.xword	.Ltmp193-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	81                              // DW_OP_reg1
	.xword	.Ltmp193-.Lfunc_begin0
	.xword	.Ltmp238-.Lfunc_begin0
	.hword	4                               // Loc expr size
	.byte	243                             // DW_OP_GNU_entry_value
	.byte	1                               // 1
	.byte	81                              // DW_OP_reg1
	.byte	159                             // DW_OP_stack_value
	.xword	.Ltmp238-.Lfunc_begin0
	.xword	.Ltmp240-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	81                              // DW_OP_reg1
	.xword	.Ltmp240-.Lfunc_begin0
	.xword	.Ltmp269-.Lfunc_begin0
	.hword	4                               // Loc expr size
	.byte	243                             // DW_OP_GNU_entry_value
	.byte	1                               // 1
	.byte	81                              // DW_OP_reg1
	.byte	159                             // DW_OP_stack_value
	.xword	0
	.xword	0
.Ldebug_loc42:
	.xword	.Ltmp186-.Lfunc_begin0
	.xword	.Ltmp187-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	99                              // DW_OP_reg19
	.xword	.Ltmp187-.Lfunc_begin0
	.xword	.Ltmp193-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	82                              // DW_OP_reg2
	.xword	.Ltmp238-.Lfunc_begin0
	.xword	.Ltmp240-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	82                              // DW_OP_reg2
	.xword	0
	.xword	0
.Ldebug_loc43:
	.xword	.Ltmp189-.Lfunc_begin0
	.xword	.Ltmp191-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	102                             // DW_OP_reg22
	.xword	.Ltmp238-.Lfunc_begin0
	.xword	.Ltmp268-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	102                             // DW_OP_reg22
	.xword	0
	.xword	0
.Ldebug_loc44:
	.xword	.Ltmp194-.Lfunc_begin0
	.xword	.Ltmp238-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	102                             // DW_OP_reg22
	.xword	0
	.xword	0
.Ldebug_loc45:
	.xword	.Ltmp196-.Lfunc_begin0
	.xword	.Ltmp238-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	100                             // DW_OP_reg20
	.xword	0
	.xword	0
.Ldebug_loc46:
	.xword	.Ltmp197-.Lfunc_begin0
	.xword	.Ltmp198-.Lfunc_begin0
	.hword	3                               // Loc expr size
	.byte	17                              // DW_OP_consts
	.byte	0                               // 0
	.byte	159                             // DW_OP_stack_value
	.xword	.Ltmp198-.Lfunc_begin0
	.xword	.Ltmp201-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	88                              // DW_OP_reg8
	.xword	.Ltmp202-.Lfunc_begin0
	.xword	.Ltmp203-.Lfunc_begin0
	.hword	4                               // Loc expr size
	.byte	17                              // DW_OP_consts
	.byte	255                             // 127
	.byte	0                               // 
	.byte	159                             // DW_OP_stack_value
	.xword	.Ltmp203-.Lfunc_begin0
	.xword	.Ltmp205-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	88                              // DW_OP_reg8
	.xword	.Ltmp205-.Lfunc_begin0
	.xword	.Ltmp209-.Lfunc_begin0
	.hword	3                               // Loc expr size
	.byte	17                              // DW_OP_consts
	.byte	0                               // 0
	.byte	159                             // DW_OP_stack_value
	.xword	.Ltmp209-.Lfunc_begin0
	.xword	.Ltmp221-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	106                             // DW_OP_reg26
	.xword	.Ltmp225-.Lfunc_begin0
	.xword	.Ltmp227-.Lfunc_begin0
	.hword	3                               // Loc expr size
	.byte	17                              // DW_OP_consts
	.byte	0                               // 0
	.byte	159                             // DW_OP_stack_value
	.xword	.Ltmp227-.Lfunc_begin0
	.xword	.Ltmp236-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	105                             // DW_OP_reg25
	.xword	.Ltmp244-.Lfunc_begin0
	.xword	.Ltmp246-.Lfunc_begin0
	.hword	3                               // Loc expr size
	.byte	17                              // DW_OP_consts
	.byte	0                               // 0
	.byte	159                             // DW_OP_stack_value
	.xword	.Ltmp253-.Lfunc_begin0
	.xword	.Ltmp256-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	88                              // DW_OP_reg8
	.xword	.Ltmp257-.Lfunc_begin0
	.xword	.Ltmp258-.Lfunc_begin0
	.hword	4                               // Loc expr size
	.byte	17                              // DW_OP_consts
	.byte	255                             // 127
	.byte	0                               // 
	.byte	159                             // DW_OP_stack_value
	.xword	.Ltmp258-.Lfunc_begin0
	.xword	.Ltmp260-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	88                              // DW_OP_reg8
	.xword	.Ltmp260-.Lfunc_begin0
	.xword	.Ltmp263-.Lfunc_begin0
	.hword	3                               // Loc expr size
	.byte	17                              // DW_OP_consts
	.byte	0                               // 0
	.byte	159                             // DW_OP_stack_value
	.xword	0
	.xword	0
.Ldebug_loc47:
	.xword	.Ltmp216-.Lfunc_begin0
	.xword	.Ltmp217-.Lfunc_begin0
	.hword	3                               // Loc expr size
	.byte	17                              // DW_OP_consts
	.byte	0                               // 0
	.byte	159                             // DW_OP_stack_value
	.xword	.Ltmp217-.Lfunc_begin0
	.xword	.Ltmp221-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	82                              // DW_OP_reg2
	.xword	0
	.xword	0
.Ldebug_loc48:
	.xword	.Ltmp225-.Lfunc_begin0
	.xword	.Ltmp238-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	103                             // DW_OP_reg23
	.xword	0
	.xword	0
.Ldebug_loc49:
	.xword	.Ltmp241-.Lfunc_begin0
	.xword	.Ltmp268-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	100                             // DW_OP_reg20
	.xword	0
	.xword	0
.Ldebug_loc50:
	.xword	.Ltmp244-.Lfunc_begin0
	.xword	.Ltmp268-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	103                             // DW_OP_reg23
	.xword	0
	.xword	0
.Ldebug_loc51:
	.xword	.Lfunc_begin9-.Lfunc_begin0
	.xword	.Ltmp271-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.xword	.Ltmp271-.Lfunc_begin0
	.xword	.Ltmp293-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	101                             // DW_OP_reg21
	.xword	0
	.xword	0
.Ldebug_loc52:
	.xword	.Lfunc_begin9-.Lfunc_begin0
	.xword	.Ltmp271-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	81                              // DW_OP_reg1
	.xword	.Ltmp271-.Lfunc_begin0
	.xword	.Ltmp292-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	100                             // DW_OP_reg20
	.xword	0
	.xword	0
.Ldebug_loc53:
	.xword	.Lfunc_begin9-.Lfunc_begin0
	.xword	.Ltmp271-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	82                              // DW_OP_reg2
	.xword	.Ltmp271-.Lfunc_begin0
	.xword	.Ltmp292-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	99                              // DW_OP_reg19
	.xword	0
	.xword	0
.Ldebug_loc54:
	.xword	.Ltmp271-.Lfunc_begin0
	.xword	.Ltmp275-.Lfunc_begin0
	.hword	3                               // Loc expr size
	.byte	17                              // DW_OP_consts
	.byte	0                               // 0
	.byte	159                             // DW_OP_stack_value
	.xword	.Ltmp275-.Lfunc_begin0
	.xword	.Ltmp291-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	88                              // DW_OP_reg8
	.xword	0
	.xword	0
.Ldebug_loc55:
	.xword	.Ltmp275-.Lfunc_begin0
	.xword	.Ltmp279-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	93                              // DW_OP_reg13
	.xword	.Ltmp281-.Lfunc_begin0
	.xword	.Ltmp283-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	91                              // DW_OP_reg11
	.xword	.Ltmp283-.Lfunc_begin0
	.xword	.Ltmp291-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	93                              // DW_OP_reg13
	.xword	0
	.xword	0
.Ldebug_loc56:
	.xword	.Ltmp279-.Lfunc_begin0
	.xword	.Ltmp285-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	88                              // DW_OP_reg8
	.xword	0
	.xword	0
.Ldebug_loc57:
	.xword	.Lfunc_begin10-.Lfunc_begin0
	.xword	.Ltmp295-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.xword	.Ltmp295-.Lfunc_begin0
	.xword	.Ltmp298-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	101                             // DW_OP_reg21
	.xword	.Ltmp298-.Lfunc_begin0
	.xword	.Ltmp300-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.xword	0
	.xword	0
.Ldebug_loc58:
	.xword	.Lfunc_begin10-.Lfunc_begin0
	.xword	.Ltmp295-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	81                              // DW_OP_reg1
	.xword	.Ltmp295-.Lfunc_begin0
	.xword	.Ltmp302-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	100                             // DW_OP_reg20
	.xword	0
	.xword	0
.Ldebug_loc59:
	.xword	.Lfunc_begin10-.Lfunc_begin0
	.xword	.Ltmp295-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	82                              // DW_OP_reg2
	.xword	.Ltmp295-.Lfunc_begin0
	.xword	.Ltmp299-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	99                              // DW_OP_reg19
	.xword	.Ltmp299-.Lfunc_begin0
	.xword	.Ltmp300-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	84                              // DW_OP_reg4
	.xword	0
	.xword	0
.Ldebug_loc60:
	.xword	.Ltmp297-.Lfunc_begin0
	.xword	.Ltmp303-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	102                             // DW_OP_reg22
	.xword	0
	.xword	0
.Ldebug_loc61:
	.xword	.Lfunc_begin11-.Lfunc_begin0
	.xword	.Ltmp311-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.xword	.Ltmp311-.Lfunc_begin0
	.xword	.Ltmp318-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	103                             // DW_OP_reg23
	.xword	.Ltmp318-.Lfunc_begin0
	.xword	.Ltmp319-.Lfunc_begin0
	.hword	4                               // Loc expr size
	.byte	243                             // DW_OP_GNU_entry_value
	.byte	1                               // 1
	.byte	80                              // DW_OP_reg0
	.byte	159                             // DW_OP_stack_value
	.xword	0
	.xword	0
.Ldebug_loc62:
	.xword	.Lfunc_begin11-.Lfunc_begin0
	.xword	.Ltmp310-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	81                              // DW_OP_reg1
	.xword	.Ltmp310-.Lfunc_begin0
	.xword	.Ltmp317-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	102                             // DW_OP_reg22
	.xword	.Ltmp317-.Lfunc_begin0
	.xword	.Ltmp319-.Lfunc_begin0
	.hword	4                               // Loc expr size
	.byte	243                             // DW_OP_GNU_entry_value
	.byte	1                               // 1
	.byte	81                              // DW_OP_reg1
	.byte	159                             // DW_OP_stack_value
	.xword	0
	.xword	0
.Ldebug_loc63:
	.xword	.Lfunc_begin11-.Lfunc_begin0
	.xword	.Ltmp309-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	82                              // DW_OP_reg2
	.xword	.Ltmp309-.Lfunc_begin0
	.xword	.Ltmp317-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	101                             // DW_OP_reg21
	.xword	.Ltmp317-.Lfunc_begin0
	.xword	.Ltmp319-.Lfunc_begin0
	.hword	4                               // Loc expr size
	.byte	243                             // DW_OP_GNU_entry_value
	.byte	1                               // 1
	.byte	82                              // DW_OP_reg2
	.byte	159                             // DW_OP_stack_value
	.xword	0
	.xword	0
.Ldebug_loc64:
	.xword	.Lfunc_begin11-.Lfunc_begin0
	.xword	.Ltmp308-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	83                              // DW_OP_reg3
	.xword	.Ltmp308-.Lfunc_begin0
	.xword	.Ltmp316-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	100                             // DW_OP_reg20
	.xword	.Ltmp316-.Lfunc_begin0
	.xword	.Ltmp319-.Lfunc_begin0
	.hword	4                               // Loc expr size
	.byte	243                             // DW_OP_GNU_entry_value
	.byte	1                               // 1
	.byte	83                              // DW_OP_reg3
	.byte	159                             // DW_OP_stack_value
	.xword	0
	.xword	0
.Ldebug_loc65:
	.xword	.Lfunc_begin11-.Lfunc_begin0
	.xword	.Ltmp307-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	84                              // DW_OP_reg4
	.xword	.Ltmp307-.Lfunc_begin0
	.xword	.Ltmp316-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	99                              // DW_OP_reg19
	.xword	.Ltmp316-.Lfunc_begin0
	.xword	.Ltmp319-.Lfunc_begin0
	.hword	4                               // Loc expr size
	.byte	243                             // DW_OP_GNU_entry_value
	.byte	1                               // 1
	.byte	84                              // DW_OP_reg4
	.byte	159                             // DW_OP_stack_value
	.xword	0
	.xword	0
.Ldebug_loc66:
	.xword	.Ltmp312-.Lfunc_begin0
	.xword	.Ltmp318-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	104                             // DW_OP_reg24
	.xword	0
	.xword	0
.Ldebug_loc67:
	.xword	.Lfunc_begin12-.Lfunc_begin0
	.xword	.Ltmp322-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.xword	.Ltmp322-.Lfunc_begin0
	.xword	.Ltmp350-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	102                             // DW_OP_reg22
	.xword	0
	.xword	0
.Ldebug_loc68:
	.xword	.Lfunc_begin12-.Lfunc_begin0
	.xword	.Ltmp322-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	81                              // DW_OP_reg1
	.xword	.Ltmp322-.Lfunc_begin0
	.xword	.Lfunc_end12-.Lfunc_begin0
	.hword	2                               // Loc expr size
	.byte	143                             // DW_OP_breg31
	.byte	8                               // 8
	.xword	0
	.xword	0
.Ldebug_loc69:
	.xword	.Lfunc_begin12-.Lfunc_begin0
	.xword	.Ltmp322-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	82                              // DW_OP_reg2
	.xword	.Ltmp322-.Lfunc_begin0
	.xword	.Ltmp349-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	100                             // DW_OP_reg20
	.xword	0
	.xword	0
.Ldebug_loc70:
	.xword	.Lfunc_begin12-.Lfunc_begin0
	.xword	.Ltmp322-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	83                              // DW_OP_reg3
	.xword	.Ltmp322-.Lfunc_begin0
	.xword	.Ltmp351-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	103                             // DW_OP_reg23
	.xword	0
	.xword	0
.Ldebug_loc71:
	.xword	.Lfunc_begin12-.Lfunc_begin0
	.xword	.Ltmp322-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	84                              // DW_OP_reg4
	.xword	.Ltmp322-.Lfunc_begin0
	.xword	.Ltmp349-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	99                              // DW_OP_reg19
	.xword	0
	.xword	0
.Ldebug_loc72:
	.xword	.Lfunc_begin12-.Lfunc_begin0
	.xword	.Ltmp325-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	85                              // DW_OP_reg5
	.xword	.Ltmp325-.Lfunc_begin0
	.xword	.Ltmp335-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	104                             // DW_OP_reg24
	.xword	0
	.xword	0
.Ldebug_loc73:
	.xword	.Ltmp321-.Lfunc_begin0
	.xword	.Ltmp322-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	82                              // DW_OP_reg2
	.xword	.Ltmp322-.Lfunc_begin0
	.xword	.Ltmp326-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	100                             // DW_OP_reg20
	.xword	.Ltmp326-.Lfunc_begin0
	.xword	.Ltmp328-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	107                             // DW_OP_reg27
	.xword	.Ltmp333-.Lfunc_begin0
	.xword	.Ltmp338-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	107                             // DW_OP_reg27
	.xword	.Ltmp342-.Lfunc_begin0
	.xword	.Ltmp343-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	107                             // DW_OP_reg27
	.xword	0
	.xword	0
.Ldebug_loc74:
	.xword	.Ltmp321-.Lfunc_begin0
	.xword	.Ltmp322-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	83                              // DW_OP_reg3
	.xword	.Ltmp322-.Lfunc_begin0
	.xword	.Ltmp326-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	103                             // DW_OP_reg23
	.xword	.Ltmp326-.Lfunc_begin0
	.xword	.Ltmp331-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	106                             // DW_OP_reg26
	.xword	.Ltmp333-.Lfunc_begin0
	.xword	.Ltmp345-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	106                             // DW_OP_reg26
	.xword	0
	.xword	0
.Ldebug_loc75:
	.xword	.Ltmp321-.Lfunc_begin0
	.xword	.Ltmp322-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	82                              // DW_OP_reg2
	.xword	.Ltmp322-.Lfunc_begin0
	.xword	.Ltmp326-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	100                             // DW_OP_reg20
	.xword	.Ltmp335-.Lfunc_begin0
	.xword	.Ltmp338-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	105                             // DW_OP_reg25
	.xword	.Ltmp341-.Lfunc_begin0
	.xword	.Ltmp345-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	105                             // DW_OP_reg25
	.xword	0
	.xword	0
.Ldebug_loc76:
	.xword	.Lfunc_begin13-.Lfunc_begin0
	.xword	.Ltmp354-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.xword	.Ltmp354-.Lfunc_begin0
	.xword	.Ltmp357-.Lfunc_begin0
	.hword	4                               // Loc expr size
	.byte	243                             // DW_OP_GNU_entry_value
	.byte	1                               // 1
	.byte	80                              // DW_OP_reg0
	.byte	159                             // DW_OP_stack_value
	.xword	0
	.xword	0
.Ldebug_loc77:
	.xword	.Lfunc_begin13-.Lfunc_begin0
	.xword	.Ltmp355-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	81                              // DW_OP_reg1
	.xword	.Ltmp355-.Lfunc_begin0
	.xword	.Ltmp357-.Lfunc_begin0
	.hword	4                               // Loc expr size
	.byte	243                             // DW_OP_GNU_entry_value
	.byte	1                               // 1
	.byte	81                              // DW_OP_reg1
	.byte	159                             // DW_OP_stack_value
	.xword	0
	.xword	0
.Ldebug_loc78:
	.xword	.Lfunc_begin14-.Lfunc_begin0
	.xword	.Ltmp359-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.xword	.Ltmp359-.Lfunc_begin0
	.xword	.Ltmp375-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	100                             // DW_OP_reg20
	.xword	0
	.xword	0
.Ldebug_loc79:
	.xword	.Lfunc_begin14-.Lfunc_begin0
	.xword	.Ltmp361-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	81                              // DW_OP_reg1
	.xword	.Ltmp361-.Lfunc_begin0
	.xword	.Ltmp374-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	99                              // DW_OP_reg19
	.xword	0
	.xword	0
.Ldebug_loc80:
	.xword	.Lfunc_begin14-.Lfunc_begin0
	.xword	.Ltmp363-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	82                              // DW_OP_reg2
	.xword	.Ltmp363-.Lfunc_begin0
	.xword	.Ltmp374-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	101                             // DW_OP_reg21
	.xword	0
	.xword	0
.Ldebug_loc81:
	.xword	.Ltmp365-.Lfunc_begin0
	.xword	.Ltmp366-.Lfunc_begin0
	.hword	2                               // Loc expr size
	.byte	48                              // DW_OP_lit0
	.byte	159                             // DW_OP_stack_value
	.xword	.Ltmp366-.Lfunc_begin0
	.xword	.Ltmp368-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.xword	.Ltmp368-.Lfunc_begin0
	.xword	.Ltmp373-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	102                             // DW_OP_reg22
	.xword	.Ltmp373-.Lfunc_begin0
	.xword	.Ltmp374-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.xword	0
	.xword	0
.Ldebug_loc82:
	.xword	.Ltmp365-.Lfunc_begin0
	.xword	.Ltmp374-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	103                             // DW_OP_reg23
	.xword	0
	.xword	0
.Ldebug_loc83:
	.xword	.Lfunc_begin15-.Lfunc_begin0
	.xword	.Ltmp380-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.xword	.Ltmp380-.Lfunc_begin0
	.xword	.Ltmp386-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	100                             // DW_OP_reg20
	.xword	.Ltmp386-.Lfunc_begin0
	.xword	.Ltmp388-.Lfunc_begin0
	.hword	4                               // Loc expr size
	.byte	243                             // DW_OP_GNU_entry_value
	.byte	1                               // 1
	.byte	80                              // DW_OP_reg0
	.byte	159                             // DW_OP_stack_value
	.xword	.Ltmp388-.Lfunc_begin0
	.xword	.Ltmp389-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.xword	.Ltmp389-.Lfunc_begin0
	.xword	.Lfunc_end15-.Lfunc_begin0
	.hword	4                               // Loc expr size
	.byte	243                             // DW_OP_GNU_entry_value
	.byte	1                               // 1
	.byte	80                              // DW_OP_reg0
	.byte	159                             // DW_OP_stack_value
	.xword	0
	.xword	0
.Ldebug_loc84:
	.xword	.Lfunc_begin15-.Lfunc_begin0
	.xword	.Ltmp379-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	81                              // DW_OP_reg1
	.xword	.Ltmp379-.Lfunc_begin0
	.xword	.Ltmp387-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	101                             // DW_OP_reg21
	.xword	.Ltmp387-.Lfunc_begin0
	.xword	.Ltmp388-.Lfunc_begin0
	.hword	4                               // Loc expr size
	.byte	243                             // DW_OP_GNU_entry_value
	.byte	1                               // 1
	.byte	81                              // DW_OP_reg1
	.byte	159                             // DW_OP_stack_value
	.xword	.Ltmp388-.Lfunc_begin0
	.xword	.Lfunc_end15-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	81                              // DW_OP_reg1
	.xword	0
	.xword	0
.Ldebug_loc85:
	.xword	.Lfunc_begin15-.Lfunc_begin0
	.xword	.Ltmp378-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	82                              // DW_OP_reg2
	.xword	.Ltmp378-.Lfunc_begin0
	.xword	.Ltmp386-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	99                              // DW_OP_reg19
	.xword	.Ltmp386-.Lfunc_begin0
	.xword	.Ltmp388-.Lfunc_begin0
	.hword	4                               // Loc expr size
	.byte	243                             // DW_OP_GNU_entry_value
	.byte	1                               // 1
	.byte	82                              // DW_OP_reg2
	.byte	159                             // DW_OP_stack_value
	.xword	.Ltmp388-.Lfunc_begin0
	.xword	.Lfunc_end15-.Lfunc_begin0
	.hword	1                               // Loc expr size
	.byte	82                              // DW_OP_reg2
	.xword	0
	.xword	0
.Ldebug_loc86:
	.xword	.Ltmp396-.Lfunc_begin16
	.xword	.Ltmp417-.Lfunc_begin16
	.hword	2                               // Loc expr size
	.byte	48                              // DW_OP_lit0
	.byte	159                             // DW_OP_stack_value
	.xword	.Ltmp417-.Lfunc_begin16
	.xword	.Ltmp431-.Lfunc_begin16
	.hword	3                               // Loc expr size
	.byte	143                             // DW_OP_breg31
	.byte	248                             // 4216
	.byte	32                              // 
	.xword	.Ltmp432-.Lfunc_begin16
	.xword	.Ltmp433-.Lfunc_begin16
	.hword	1                               // Loc expr size
	.byte	88                              // DW_OP_reg8
	.xword	.Ltmp439-.Lfunc_begin16
	.xword	.Ltmp440-.Lfunc_begin16
	.hword	2                               // Loc expr size
	.byte	48                              // DW_OP_lit0
	.byte	159                             // DW_OP_stack_value
	.xword	.Ltmp444-.Lfunc_begin16
	.xword	.Ltmp446-.Lfunc_begin16
	.hword	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.xword	0
	.xword	0
.Ldebug_loc87:
	.xword	.Ltmp397-.Lfunc_begin16
	.xword	.Ltmp417-.Lfunc_begin16
	.hword	2                               // Loc expr size
	.byte	48                              // DW_OP_lit0
	.byte	159                             // DW_OP_stack_value
	.xword	.Ltmp417-.Lfunc_begin16
	.xword	.Ltmp421-.Lfunc_begin16
	.hword	2                               // Loc expr size
	.byte	143                             // DW_OP_breg31
	.byte	8                               // 8
	.xword	.Ltmp421-.Lfunc_begin16
	.xword	.Ltmp429-.Lfunc_begin16
	.hword	1                               // Loc expr size
	.byte	100                             // DW_OP_reg20
	.xword	.Ltmp429-.Lfunc_begin16
	.xword	.Ltmp432-.Lfunc_begin16
	.hword	1                               // Loc expr size
	.byte	88                              // DW_OP_reg8
	.xword	.Ltmp435-.Lfunc_begin16
	.xword	.Ltmp437-.Lfunc_begin16
	.hword	1                               // Loc expr size
	.byte	88                              // DW_OP_reg8
	.xword	.Ltmp439-.Lfunc_begin16
	.xword	.Ltmp440-.Lfunc_begin16
	.hword	2                               // Loc expr size
	.byte	48                              // DW_OP_lit0
	.byte	159                             // DW_OP_stack_value
	.xword	0
	.xword	0
.Ldebug_loc88:
	.xword	.Ltmp398-.Lfunc_begin16
	.xword	.Ltmp415-.Lfunc_begin16
	.hword	2                               // Loc expr size
	.byte	48                              // DW_OP_lit0
	.byte	159                             // DW_OP_stack_value
	.xword	.Ltmp415-.Lfunc_begin16
	.xword	.Ltmp439-.Lfunc_begin16
	.hword	1                               // Loc expr size
	.byte	99                              // DW_OP_reg19
	.xword	.Ltmp439-.Lfunc_begin16
	.xword	.Ltmp440-.Lfunc_begin16
	.hword	2                               // Loc expr size
	.byte	48                              // DW_OP_lit0
	.byte	159                             // DW_OP_stack_value
	.xword	.Ltmp440-.Lfunc_begin16
	.xword	.Ltmp447-.Lfunc_begin16
	.hword	1                               // Loc expr size
	.byte	99                              // DW_OP_reg19
	.xword	0
	.xword	0
.Ldebug_loc89:
	.xword	.Ltmp402-.Lfunc_begin16
	.xword	.Ltmp403-.Lfunc_begin16
	.hword	3                               // Loc expr size
	.byte	17                              // DW_OP_consts
	.byte	0                               // 0
	.byte	159                             // DW_OP_stack_value
	.xword	.Ltmp403-.Lfunc_begin16
	.xword	.Ltmp405-.Lfunc_begin16
	.hword	1                               // Loc expr size
	.byte	88                              // DW_OP_reg8
	.xword	.Ltmp405-.Lfunc_begin16
	.xword	.Ltmp407-.Lfunc_begin16
	.hword	3                               // Loc expr size
	.byte	120                             // DW_OP_breg8
	.byte	1                               // 1
	.byte	159                             // DW_OP_stack_value
	.xword	.Ltmp407-.Lfunc_begin16
	.xword	.Ltmp409-.Lfunc_begin16
	.hword	1                               // Loc expr size
	.byte	88                              // DW_OP_reg8
	.xword	.Ltmp428-.Lfunc_begin16
	.xword	.Ltmp431-.Lfunc_begin16
	.hword	3                               // Loc expr size
	.byte	17                              // DW_OP_consts
	.byte	0                               // 0
	.byte	159                             // DW_OP_stack_value
	.xword	.Ltmp431-.Lfunc_begin16
	.xword	.Ltmp433-.Lfunc_begin16
	.hword	1                               // Loc expr size
	.byte	101                             // DW_OP_reg21
	.xword	.Ltmp436-.Lfunc_begin16
	.xword	.Ltmp437-.Lfunc_begin16
	.hword	1                               // Loc expr size
	.byte	101                             // DW_OP_reg21
	.xword	0
	.xword	0
.Ldebug_loc90:
	.xword	.Ltmp449-.Lfunc_begin16
	.xword	.Ltmp476-.Lfunc_begin16
	.hword	2                               // Loc expr size
	.byte	48                              // DW_OP_lit0
	.byte	159                             // DW_OP_stack_value
	.xword	.Ltmp476-.Lfunc_begin16
	.xword	.Ltmp480-.Lfunc_begin16
	.hword	3                               // Loc expr size
	.byte	143                             // DW_OP_breg31
	.byte	248                             // 4216
	.byte	32                              // 
	.xword	.Ltmp480-.Lfunc_begin16
	.xword	.Ltmp481-.Lfunc_begin16
	.hword	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.xword	.Ltmp484-.Lfunc_begin16
	.xword	.Ltmp486-.Lfunc_begin16
	.hword	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.xword	.Ltmp488-.Lfunc_begin16
	.xword	.Ltmp489-.Lfunc_begin16
	.hword	2                               // Loc expr size
	.byte	48                              // DW_OP_lit0
	.byte	159                             // DW_OP_stack_value
	.xword	.Ltmp493-.Lfunc_begin16
	.xword	.Ltmp495-.Lfunc_begin16
	.hword	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.xword	0
	.xword	0
.Ldebug_loc91:
	.xword	.Ltmp450-.Lfunc_begin16
	.xword	.Ltmp476-.Lfunc_begin16
	.hword	2                               // Loc expr size
	.byte	48                              // DW_OP_lit0
	.byte	159                             // DW_OP_stack_value
	.xword	.Ltmp476-.Lfunc_begin16
	.xword	.Ltmp485-.Lfunc_begin16
	.hword	2                               // Loc expr size
	.byte	143                             // DW_OP_breg31
	.byte	8                               // 8
	.xword	.Ltmp485-.Lfunc_begin16
	.xword	.Ltmp486-.Lfunc_begin16
	.hword	1                               // Loc expr size
	.byte	81                              // DW_OP_reg1
	.xword	.Ltmp488-.Lfunc_begin16
	.xword	.Ltmp489-.Lfunc_begin16
	.hword	2                               // Loc expr size
	.byte	48                              // DW_OP_lit0
	.byte	159                             // DW_OP_stack_value
	.xword	0
	.xword	0
.Ldebug_loc92:
	.xword	.Ltmp451-.Lfunc_begin16
	.xword	.Ltmp475-.Lfunc_begin16
	.hword	2                               // Loc expr size
	.byte	48                              // DW_OP_lit0
	.byte	159                             // DW_OP_stack_value
	.xword	.Ltmp475-.Lfunc_begin16
	.xword	.Ltmp488-.Lfunc_begin16
	.hword	1                               // Loc expr size
	.byte	101                             // DW_OP_reg21
	.xword	.Ltmp488-.Lfunc_begin16
	.xword	.Ltmp489-.Lfunc_begin16
	.hword	2                               // Loc expr size
	.byte	48                              // DW_OP_lit0
	.byte	159                             // DW_OP_stack_value
	.xword	.Ltmp489-.Lfunc_begin16
	.xword	.Ltmp496-.Lfunc_begin16
	.hword	1                               // Loc expr size
	.byte	101                             // DW_OP_reg21
	.xword	0
	.xword	0
.Ldebug_loc93:
	.xword	.Ltmp451-.Lfunc_begin16
	.xword	.Ltmp467-.Lfunc_begin16
	.hword	2                               // Loc expr size
	.byte	48                              // DW_OP_lit0
	.byte	159                             // DW_OP_stack_value
	.xword	.Ltmp467-.Lfunc_begin16
	.xword	.Ltmp469-.Lfunc_begin16
	.hword	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.xword	.Ltmp469-.Lfunc_begin16
	.xword	.Ltmp488-.Lfunc_begin16
	.hword	1                               // Loc expr size
	.byte	102                             // DW_OP_reg22
	.xword	0
	.xword	0
.Ldebug_loc94:
	.xword	.Ltmp455-.Lfunc_begin16
	.xword	.Ltmp456-.Lfunc_begin16
	.hword	3                               // Loc expr size
	.byte	17                              // DW_OP_consts
	.byte	0                               // 0
	.byte	159                             // DW_OP_stack_value
	.xword	.Ltmp456-.Lfunc_begin16
	.xword	.Ltmp458-.Lfunc_begin16
	.hword	1                               // Loc expr size
	.byte	88                              // DW_OP_reg8
	.xword	.Ltmp458-.Lfunc_begin16
	.xword	.Ltmp460-.Lfunc_begin16
	.hword	3                               // Loc expr size
	.byte	120                             // DW_OP_breg8
	.byte	1                               // 1
	.byte	159                             // DW_OP_stack_value
	.xword	.Ltmp460-.Lfunc_begin16
	.xword	.Ltmp462-.Lfunc_begin16
	.hword	1                               // Loc expr size
	.byte	88                              // DW_OP_reg8
	.xword	0
	.xword	0
.Ldebug_loc95:
	.xword	.Ltmp499-.Lfunc_begin16
	.xword	.Ltmp500-.Lfunc_begin16
	.hword	3                               // Loc expr size
	.byte	17                              // DW_OP_consts
	.byte	0                               // 0
	.byte	159                             // DW_OP_stack_value
	.xword	.Ltmp500-.Lfunc_begin16
	.xword	.Ltmp510-.Lfunc_begin16
	.hword	1                               // Loc expr size
	.byte	101                             // DW_OP_reg21
	.xword	0
	.xword	0
	.section	.debug_abbrev,"",@progbits
	.byte	1                               // Abbreviation Code
	.byte	17                              // DW_TAG_compile_unit
	.byte	1                               // DW_CHILDREN_yes
	.byte	37                              // DW_AT_producer
	.byte	14                              // DW_FORM_strp
	.byte	19                              // DW_AT_language
	.byte	5                               // DW_FORM_data2
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	16                              // DW_AT_stmt_list
	.byte	23                              // DW_FORM_sec_offset
	.byte	27                              // DW_AT_comp_dir
	.byte	14                              // DW_FORM_strp
	.byte	17                              // DW_AT_low_pc
	.byte	1                               // DW_FORM_addr
	.byte	18                              // DW_AT_high_pc
	.byte	6                               // DW_FORM_data4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	2                               // Abbreviation Code
	.byte	15                              // DW_TAG_pointer_type
	.byte	0                               // DW_CHILDREN_no
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	3                               // Abbreviation Code
	.byte	22                              // DW_TAG_typedef
	.byte	0                               // DW_CHILDREN_no
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	4                               // Abbreviation Code
	.byte	19                              // DW_TAG_structure_type
	.byte	1                               // DW_CHILDREN_yes
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	11                              // DW_AT_byte_size
	.byte	11                              // DW_FORM_data1
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	5                               // Abbreviation Code
	.byte	13                              // DW_TAG_member
	.byte	0                               // DW_CHILDREN_no
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	56                              // DW_AT_data_member_location
	.byte	11                              // DW_FORM_data1
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	6                               // Abbreviation Code
	.byte	36                              // DW_TAG_base_type
	.byte	0                               // DW_CHILDREN_no
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	62                              // DW_AT_encoding
	.byte	11                              // DW_FORM_data1
	.byte	11                              // DW_AT_byte_size
	.byte	11                              // DW_FORM_data1
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	7                               // Abbreviation Code
	.byte	15                              // DW_TAG_pointer_type
	.byte	0                               // DW_CHILDREN_no
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	8                               // Abbreviation Code
	.byte	1                               // DW_TAG_array_type
	.byte	1                               // DW_CHILDREN_yes
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	9                               // Abbreviation Code
	.byte	33                              // DW_TAG_subrange_type
	.byte	0                               // DW_CHILDREN_no
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	55                              // DW_AT_count
	.byte	11                              // DW_FORM_data1
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	10                              // Abbreviation Code
	.byte	36                              // DW_TAG_base_type
	.byte	0                               // DW_CHILDREN_no
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	11                              // DW_AT_byte_size
	.byte	11                              // DW_FORM_data1
	.byte	62                              // DW_AT_encoding
	.byte	11                              // DW_FORM_data1
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	11                              // Abbreviation Code
	.byte	21                              // DW_TAG_subroutine_type
	.byte	1                               // DW_CHILDREN_yes
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	39                              // DW_AT_prototyped
	.byte	25                              // DW_FORM_flag_present
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	12                              // Abbreviation Code
	.byte	5                               // DW_TAG_formal_parameter
	.byte	0                               // DW_CHILDREN_no
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	13                              // Abbreviation Code
	.byte	46                              // DW_TAG_subprogram
	.byte	1                               // DW_CHILDREN_yes
	.byte	17                              // DW_AT_low_pc
	.byte	1                               // DW_FORM_addr
	.byte	18                              // DW_AT_high_pc
	.byte	6                               // DW_FORM_data4
	.byte	64                              // DW_AT_frame_base
	.byte	24                              // DW_FORM_exprloc
	.ascii	"\227B"                         // DW_AT_GNU_all_call_sites
	.byte	25                              // DW_FORM_flag_present
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	39                              // DW_AT_prototyped
	.byte	25                              // DW_FORM_flag_present
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	63                              // DW_AT_external
	.byte	25                              // DW_FORM_flag_present
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	14                              // Abbreviation Code
	.byte	5                               // DW_TAG_formal_parameter
	.byte	0                               // DW_CHILDREN_no
	.byte	2                               // DW_AT_location
	.byte	23                              // DW_FORM_sec_offset
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	15                              // Abbreviation Code
	.byte	52                              // DW_TAG_variable
	.byte	0                               // DW_CHILDREN_no
	.byte	2                               // DW_AT_location
	.byte	23                              // DW_FORM_sec_offset
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	16                              // Abbreviation Code
	.byte	5                               // DW_TAG_formal_parameter
	.byte	0                               // DW_CHILDREN_no
	.byte	2                               // DW_AT_location
	.byte	24                              // DW_FORM_exprloc
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	17                              // Abbreviation Code
	.byte	11                              // DW_TAG_lexical_block
	.byte	1                               // DW_CHILDREN_yes
	.byte	85                              // DW_AT_ranges
	.byte	23                              // DW_FORM_sec_offset
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	18                              // Abbreviation Code
	.byte	46                              // DW_TAG_subprogram
	.byte	1                               // DW_CHILDREN_yes
	.byte	17                              // DW_AT_low_pc
	.byte	1                               // DW_FORM_addr
	.byte	18                              // DW_AT_high_pc
	.byte	6                               // DW_FORM_data4
	.byte	64                              // DW_AT_frame_base
	.byte	24                              // DW_FORM_exprloc
	.ascii	"\227B"                         // DW_AT_GNU_all_call_sites
	.byte	25                              // DW_FORM_flag_present
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	39                              // DW_AT_prototyped
	.byte	25                              // DW_FORM_flag_present
	.byte	63                              // DW_AT_external
	.byte	25                              // DW_FORM_flag_present
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	19                              // Abbreviation Code
	.ascii	"\211\202\001"                  // DW_TAG_GNU_call_site
	.byte	0                               // DW_CHILDREN_no
	.byte	49                              // DW_AT_abstract_origin
	.byte	19                              // DW_FORM_ref4
	.byte	17                              // DW_AT_low_pc
	.byte	1                               // DW_FORM_addr
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	20                              // Abbreviation Code
	.byte	52                              // DW_TAG_variable
	.byte	0                               // DW_CHILDREN_no
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	21                              // Abbreviation Code
	.byte	52                              // DW_TAG_variable
	.byte	0                               // DW_CHILDREN_no
	.byte	2                               // DW_AT_location
	.byte	24                              // DW_FORM_exprloc
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	22                              // Abbreviation Code
	.byte	10                              // DW_TAG_label
	.byte	0                               // DW_CHILDREN_no
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	5                               // DW_FORM_data2
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	23                              // Abbreviation Code
	.byte	46                              // DW_TAG_subprogram
	.byte	1                               // DW_CHILDREN_yes
	.byte	17                              // DW_AT_low_pc
	.byte	1                               // DW_FORM_addr
	.byte	18                              // DW_AT_high_pc
	.byte	6                               // DW_FORM_data4
	.byte	64                              // DW_AT_frame_base
	.byte	24                              // DW_FORM_exprloc
	.ascii	"\227B"                         // DW_AT_GNU_all_call_sites
	.byte	25                              // DW_FORM_flag_present
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	5                               // DW_FORM_data2
	.byte	39                              // DW_AT_prototyped
	.byte	25                              // DW_FORM_flag_present
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	63                              // DW_AT_external
	.byte	25                              // DW_FORM_flag_present
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	24                              // Abbreviation Code
	.byte	5                               // DW_TAG_formal_parameter
	.byte	0                               // DW_CHILDREN_no
	.byte	2                               // DW_AT_location
	.byte	23                              // DW_FORM_sec_offset
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	5                               // DW_FORM_data2
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	25                              // Abbreviation Code
	.byte	52                              // DW_TAG_variable
	.byte	0                               // DW_CHILDREN_no
	.byte	2                               // DW_AT_location
	.byte	24                              // DW_FORM_exprloc
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	5                               // DW_FORM_data2
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	26                              // Abbreviation Code
	.byte	52                              // DW_TAG_variable
	.byte	0                               // DW_CHILDREN_no
	.byte	2                               // DW_AT_location
	.byte	23                              // DW_FORM_sec_offset
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	5                               // DW_FORM_data2
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	27                              // Abbreviation Code
	.byte	52                              // DW_TAG_variable
	.byte	0                               // DW_CHILDREN_no
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	5                               // DW_FORM_data2
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	28                              // Abbreviation Code
	.byte	11                              // DW_TAG_lexical_block
	.byte	1                               // DW_CHILDREN_yes
	.byte	17                              // DW_AT_low_pc
	.byte	1                               // DW_FORM_addr
	.byte	18                              // DW_AT_high_pc
	.byte	6                               // DW_FORM_data4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	29                              // Abbreviation Code
	.byte	46                              // DW_TAG_subprogram
	.byte	1                               // DW_CHILDREN_yes
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	5                               // DW_FORM_data2
	.byte	39                              // DW_AT_prototyped
	.byte	25                              // DW_FORM_flag_present
	.byte	60                              // DW_AT_declaration
	.byte	25                              // DW_FORM_flag_present
	.byte	63                              // DW_AT_external
	.byte	25                              // DW_FORM_flag_present
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	30                              // Abbreviation Code
	.byte	52                              // DW_TAG_variable
	.byte	0                               // DW_CHILDREN_no
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	73                              // DW_AT_type
	.byte	16                              // DW_FORM_ref_addr
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	31                              // Abbreviation Code
	.ascii	"\211\202\001"                  // DW_TAG_GNU_call_site
	.byte	0                               // DW_CHILDREN_no
	.ascii	"\223B"                         // DW_AT_GNU_call_site_target
	.byte	24                              // DW_FORM_exprloc
	.byte	17                              // DW_AT_low_pc
	.byte	1                               // DW_FORM_addr
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	32                              // Abbreviation Code
	.byte	33                              // DW_TAG_subrange_type
	.byte	0                               // DW_CHILDREN_no
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	55                              // DW_AT_count
	.byte	5                               // DW_FORM_data2
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	33                              // Abbreviation Code
	.byte	52                              // DW_TAG_variable
	.byte	0                               // DW_CHILDREN_no
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	63                              // DW_AT_external
	.byte	25                              // DW_FORM_flag_present
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	2                               // DW_AT_location
	.byte	24                              // DW_FORM_exprloc
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	34                              // Abbreviation Code
	.byte	38                              // DW_TAG_const_type
	.byte	0                               // DW_CHILDREN_no
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	35                              // Abbreviation Code
	.byte	46                              // DW_TAG_subprogram
	.byte	0                               // DW_CHILDREN_no
	.byte	17                              // DW_AT_low_pc
	.byte	1                               // DW_FORM_addr
	.byte	18                              // DW_AT_high_pc
	.byte	6                               // DW_FORM_data4
	.byte	64                              // DW_AT_frame_base
	.byte	24                              // DW_FORM_exprloc
	.ascii	"\227B"                         // DW_AT_GNU_all_call_sites
	.byte	25                              // DW_FORM_flag_present
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	63                              // DW_AT_external
	.byte	25                              // DW_FORM_flag_present
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	36                              // Abbreviation Code
	.byte	46                              // DW_TAG_subprogram
	.byte	1                               // DW_CHILDREN_yes
	.byte	17                              // DW_AT_low_pc
	.byte	1                               // DW_FORM_addr
	.byte	18                              // DW_AT_high_pc
	.byte	6                               // DW_FORM_data4
	.byte	64                              // DW_AT_frame_base
	.byte	24                              // DW_FORM_exprloc
	.ascii	"\227B"                         // DW_AT_GNU_all_call_sites
	.byte	25                              // DW_FORM_flag_present
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	63                              // DW_AT_external
	.byte	25                              // DW_FORM_flag_present
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	37                              // Abbreviation Code
	.byte	52                              // DW_TAG_variable
	.byte	0                               // DW_CHILDREN_no
	.byte	2                               // DW_AT_location
	.byte	24                              // DW_FORM_exprloc
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	73                              // DW_AT_type
	.byte	16                              // DW_FORM_ref_addr
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	38                              // Abbreviation Code
	.byte	52                              // DW_TAG_variable
	.byte	0                               // DW_CHILDREN_no
	.byte	2                               // DW_AT_location
	.byte	23                              // DW_FORM_sec_offset
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	73                              // DW_AT_type
	.byte	16                              // DW_FORM_ref_addr
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	39                              // Abbreviation Code
	.byte	10                              // DW_TAG_label
	.byte	0                               // DW_CHILDREN_no
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	17                              // DW_AT_low_pc
	.byte	1                               // DW_FORM_addr
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	40                              // Abbreviation Code
	.ascii	"\211\202\001"                  // DW_TAG_GNU_call_site
	.byte	0                               // DW_CHILDREN_no
	.byte	49                              // DW_AT_abstract_origin
	.byte	16                              // DW_FORM_ref_addr
	.byte	17                              // DW_AT_low_pc
	.byte	1                               // DW_FORM_addr
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	41                              // Abbreviation Code
	.byte	46                              // DW_TAG_subprogram
	.byte	1                               // DW_CHILDREN_yes
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	39                              // DW_AT_prototyped
	.byte	25                              // DW_FORM_flag_present
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	60                              // DW_AT_declaration
	.byte	25                              // DW_FORM_flag_present
	.byte	63                              // DW_AT_external
	.byte	25                              // DW_FORM_flag_present
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	42                              // Abbreviation Code
	.byte	5                               // DW_TAG_formal_parameter
	.byte	0                               // DW_CHILDREN_no
	.byte	73                              // DW_AT_type
	.byte	16                              // DW_FORM_ref_addr
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	43                              // Abbreviation Code
	.byte	19                              // DW_TAG_structure_type
	.byte	0                               // DW_CHILDREN_no
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	60                              // DW_AT_declaration
	.byte	25                              // DW_FORM_flag_present
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	44                              // Abbreviation Code
	.byte	46                              // DW_TAG_subprogram
	.byte	1                               // DW_CHILDREN_yes
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	39                              // DW_AT_prototyped
	.byte	25                              // DW_FORM_flag_present
	.byte	73                              // DW_AT_type
	.byte	16                              // DW_FORM_ref_addr
	.byte	60                              // DW_AT_declaration
	.byte	25                              // DW_FORM_flag_present
	.byte	63                              // DW_AT_external
	.byte	25                              // DW_FORM_flag_present
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	45                              // Abbreviation Code
	.byte	38                              // DW_TAG_const_type
	.byte	0                               // DW_CHILDREN_no
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	46                              // Abbreviation Code
	.byte	46                              // DW_TAG_subprogram
	.byte	1                               // DW_CHILDREN_yes
	.byte	17                              // DW_AT_low_pc
	.byte	1                               // DW_FORM_addr
	.byte	18                              // DW_AT_high_pc
	.byte	6                               // DW_FORM_data4
	.byte	64                              // DW_AT_frame_base
	.byte	24                              // DW_FORM_exprloc
	.ascii	"\227B"                         // DW_AT_GNU_all_call_sites
	.byte	25                              // DW_FORM_flag_present
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	73                              // DW_AT_type
	.byte	16                              // DW_FORM_ref_addr
	.byte	63                              // DW_AT_external
	.byte	25                              // DW_FORM_flag_present
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	47                              // Abbreviation Code
	.byte	46                              // DW_TAG_subprogram
	.byte	1                               // DW_CHILDREN_yes
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	39                              // DW_AT_prototyped
	.byte	25                              // DW_FORM_flag_present
	.byte	60                              // DW_AT_declaration
	.byte	25                              // DW_FORM_flag_present
	.byte	63                              // DW_AT_external
	.byte	25                              // DW_FORM_flag_present
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	48                              // Abbreviation Code
	.byte	1                               // DW_TAG_array_type
	.byte	1                               // DW_CHILDREN_yes
	.byte	73                              // DW_AT_type
	.byte	16                              // DW_FORM_ref_addr
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	49                              // Abbreviation Code
	.byte	22                              // DW_TAG_typedef
	.byte	0                               // DW_CHILDREN_no
	.byte	73                              // DW_AT_type
	.byte	16                              // DW_FORM_ref_addr
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	50                              // Abbreviation Code
	.byte	13                              // DW_TAG_member
	.byte	0                               // DW_CHILDREN_no
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	73                              // DW_AT_type
	.byte	16                              // DW_FORM_ref_addr
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	56                              // DW_AT_data_member_location
	.byte	11                              // DW_FORM_data1
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	51                              // Abbreviation Code
	.byte	21                              // DW_TAG_subroutine_type
	.byte	1                               // DW_CHILDREN_yes
	.byte	73                              // DW_AT_type
	.byte	16                              // DW_FORM_ref_addr
	.byte	39                              // DW_AT_prototyped
	.byte	25                              // DW_FORM_flag_present
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	0                               // EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.word	.Ldebug_info_end0-.Ldebug_info_start0 // Length of Unit
.Ldebug_info_start0:
	.hword	4                               // DWARF version number
	.word	.debug_abbrev                   // Offset Into Abbrev. Section
	.byte	8                               // Address Size (in bytes)
	.byte	1                               // Abbrev [1] 0xb:0xa6d DW_TAG_compile_unit
	.word	.Linfo_string0                  // DW_AT_producer
	.hword	12                              // DW_AT_language
	.word	.Linfo_string1                  // DW_AT_name
	.word	.Lline_table_start0             // DW_AT_stmt_list
	.word	.Linfo_string2                  // DW_AT_comp_dir
	.xword	.Lfunc_begin0                   // DW_AT_low_pc
	.word	.Lfunc_end15-.Lfunc_begin0      // DW_AT_high_pc
	.byte	2                               // Abbrev [2] 0x2a:0x5 DW_TAG_pointer_type
	.word	47                              // DW_AT_type
	.byte	3                               // Abbrev [3] 0x2f:0xb DW_TAG_typedef
	.word	58                              // DW_AT_type
	.word	.Linfo_string9                  // DW_AT_name
	.byte	1                               // DW_AT_decl_file
	.byte	34                              // DW_AT_decl_line
	.byte	4                               // Abbrev [4] 0x3a:0x2d DW_TAG_structure_type
	.word	.Linfo_string8                  // DW_AT_name
	.byte	16                              // DW_AT_byte_size
	.byte	1                               // DW_AT_decl_file
	.byte	30                              // DW_AT_decl_line
	.byte	5                               // Abbrev [5] 0x42:0xc DW_TAG_member
	.word	.Linfo_string3                  // DW_AT_name
	.word	103                             // DW_AT_type
	.byte	1                               // DW_AT_decl_file
	.byte	31                              // DW_AT_decl_line
	.byte	0                               // DW_AT_data_member_location
	.byte	5                               // Abbrev [5] 0x4e:0xc DW_TAG_member
	.word	.Linfo_string5                  // DW_AT_name
	.word	115                             // DW_AT_type
	.byte	1                               // DW_AT_decl_file
	.byte	32                              // DW_AT_decl_line
	.byte	8                               // DW_AT_data_member_location
	.byte	5                               // Abbrev [5] 0x5a:0xc DW_TAG_member
	.word	.Linfo_string7                  // DW_AT_name
	.word	115                             // DW_AT_type
	.byte	1                               // DW_AT_decl_file
	.byte	33                              // DW_AT_decl_line
	.byte	12                              // DW_AT_data_member_location
	.byte	0                               // End Of Children Mark
	.byte	2                               // Abbrev [2] 0x67:0x5 DW_TAG_pointer_type
	.word	108                             // DW_AT_type
	.byte	6                               // Abbrev [6] 0x6c:0x7 DW_TAG_base_type
	.word	.Linfo_string4                  // DW_AT_name
	.byte	8                               // DW_AT_encoding
	.byte	1                               // DW_AT_byte_size
	.byte	6                               // Abbrev [6] 0x73:0x7 DW_TAG_base_type
	.word	.Linfo_string6                  // DW_AT_name
	.byte	7                               // DW_AT_encoding
	.byte	4                               // DW_AT_byte_size
	.byte	7                               // Abbrev [7] 0x7a:0x1 DW_TAG_pointer_type
	.byte	2                               // Abbrev [2] 0x7b:0x5 DW_TAG_pointer_type
	.word	128                             // DW_AT_type
	.byte	3                               // Abbrev [3] 0x80:0xb DW_TAG_typedef
	.word	139                             // DW_AT_type
	.word	.Linfo_string18                 // DW_AT_name
	.byte	1                               // DW_AT_decl_file
	.byte	45                              // DW_AT_decl_line
	.byte	4                               // Abbrev [4] 0x8b:0x39 DW_TAG_structure_type
	.word	.Linfo_string17                 // DW_AT_name
	.byte	120                             // DW_AT_byte_size
	.byte	1                               // DW_AT_decl_file
	.byte	40                              // DW_AT_decl_line
	.byte	5                               // Abbrev [5] 0x93:0xc DW_TAG_member
	.word	.Linfo_string10                 // DW_AT_name
	.word	196                             // DW_AT_type
	.byte	1                               // DW_AT_decl_file
	.byte	41                              // DW_AT_decl_line
	.byte	0                               // DW_AT_data_member_location
	.byte	5                               // Abbrev [5] 0x9f:0xc DW_TAG_member
	.word	.Linfo_string3                  // DW_AT_name
	.word	103                             // DW_AT_type
	.byte	1                               // DW_AT_decl_file
	.byte	42                              // DW_AT_decl_line
	.byte	96                              // DW_AT_data_member_location
	.byte	5                               // Abbrev [5] 0xab:0xc DW_TAG_member
	.word	.Linfo_string12                 // DW_AT_name
	.word	215                             // DW_AT_type
	.byte	1                               // DW_AT_decl_file
	.byte	43                              // DW_AT_decl_line
	.byte	104                             // DW_AT_data_member_location
	.byte	5                               // Abbrev [5] 0xb7:0xc DW_TAG_member
	.word	.Linfo_string15                 // DW_AT_name
	.word	233                             // DW_AT_type
	.byte	1                               // DW_AT_decl_file
	.byte	44                              // DW_AT_decl_line
	.byte	112                             // DW_AT_data_member_location
	.byte	0                               // End Of Children Mark
	.byte	8                               // Abbrev [8] 0xc4:0xc DW_TAG_array_type
	.word	108                             // DW_AT_type
	.byte	9                               // Abbrev [9] 0xc9:0x6 DW_TAG_subrange_type
	.word	208                             // DW_AT_type
	.byte	95                              // DW_AT_count
	.byte	0                               // End Of Children Mark
	.byte	10                              // Abbrev [10] 0xd0:0x7 DW_TAG_base_type
	.word	.Linfo_string11                 // DW_AT_name
	.byte	8                               // DW_AT_byte_size
	.byte	7                               // DW_AT_encoding
	.byte	3                               // Abbrev [3] 0xd7:0xb DW_TAG_typedef
	.word	226                             // DW_AT_type
	.word	.Linfo_string14                 // DW_AT_name
	.byte	2                               // DW_AT_decl_file
	.byte	46                              // DW_AT_decl_line
	.byte	6                               // Abbrev [6] 0xe2:0x7 DW_TAG_base_type
	.word	.Linfo_string13                 // DW_AT_name
	.byte	7                               // DW_AT_encoding
	.byte	8                               // DW_AT_byte_size
	.byte	2                               // Abbrev [2] 0xe9:0x5 DW_TAG_pointer_type
	.word	238                             // DW_AT_type
	.byte	11                              // Abbrev [11] 0xee:0x1a DW_TAG_subroutine_type
	.word	264                             // DW_AT_type
                                        // DW_AT_prototyped
	.byte	12                              // Abbrev [12] 0xf3:0x5 DW_TAG_formal_parameter
	.word	103                             // DW_AT_type
	.byte	12                              // Abbrev [12] 0xf8:0x5 DW_TAG_formal_parameter
	.word	103                             // DW_AT_type
	.byte	12                              // Abbrev [12] 0xfd:0x5 DW_TAG_formal_parameter
	.word	103                             // DW_AT_type
	.byte	12                              // Abbrev [12] 0x102:0x5 DW_TAG_formal_parameter
	.word	215                             // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	6                               // Abbrev [6] 0x108:0x7 DW_TAG_base_type
	.word	.Linfo_string16                 // DW_AT_name
	.byte	5                               // DW_AT_encoding
	.byte	4                               // DW_AT_byte_size
	.byte	2                               // Abbrev [2] 0x10f:0x5 DW_TAG_pointer_type
	.word	276                             // DW_AT_type
	.byte	6                               // Abbrev [6] 0x114:0x7 DW_TAG_base_type
	.word	.Linfo_string19                 // DW_AT_name
	.byte	7                               // DW_AT_encoding
	.byte	2                               // DW_AT_byte_size
	.byte	2                               // Abbrev [2] 0x11b:0x5 DW_TAG_pointer_type
	.word	215                             // DW_AT_type
	.byte	13                              // Abbrev [13] 0x120:0x38 DW_TAG_subprogram
	.xword	.Lfunc_begin0                   // DW_AT_low_pc
	.word	.Lfunc_end0-.Lfunc_begin0       // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	111
                                        // DW_AT_GNU_all_call_sites
	.word	.Linfo_string31                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	30                              // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	42                              // DW_AT_type
                                        // DW_AT_external
	.byte	14                              // Abbrev [14] 0x139:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc0                    // DW_AT_location
	.word	.Linfo_string3                  // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	30                              // DW_AT_decl_line
	.word	103                             // DW_AT_type
	.byte	15                              // Abbrev [15] 0x148:0xf DW_TAG_variable
	.word	.Ldebug_loc1                    // DW_AT_location
	.word	.Linfo_string51                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	32                              // DW_AT_decl_line
	.word	42                              // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	13                              // Abbrev [13] 0x158:0x78 DW_TAG_subprogram
	.xword	.Lfunc_begin1                   // DW_AT_low_pc
	.word	.Lfunc_end1-.Lfunc_begin1       // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	111
                                        // DW_AT_GNU_all_call_sites
	.word	.Linfo_string32                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	40                              // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	108                             // DW_AT_type
                                        // DW_AT_external
	.byte	14                              // Abbrev [14] 0x171:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc2                    // DW_AT_location
	.word	.Linfo_string51                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	40                              // DW_AT_decl_line
	.word	42                              // DW_AT_type
	.byte	16                              // Abbrev [16] 0x180:0xd DW_TAG_formal_parameter
	.byte	1                               // DW_AT_location
	.byte	81
	.word	.Linfo_string52                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	40                              // DW_AT_decl_line
	.word	215                             // DW_AT_type
	.byte	15                              // Abbrev [15] 0x18d:0xf DW_TAG_variable
	.word	.Ldebug_loc3                    // DW_AT_location
	.word	.Linfo_string53                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	43                              // DW_AT_decl_line
	.word	108                             // DW_AT_type
	.byte	15                              // Abbrev [15] 0x19c:0xf DW_TAG_variable
	.word	.Ldebug_loc4                    // DW_AT_location
	.word	.Linfo_string54                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	43                              // DW_AT_decl_line
	.word	108                             // DW_AT_type
	.byte	15                              // Abbrev [15] 0x1ab:0xf DW_TAG_variable
	.word	.Ldebug_loc5                    // DW_AT_location
	.word	.Linfo_string55                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	42                              // DW_AT_decl_line
	.word	215                             // DW_AT_type
	.byte	17                              // Abbrev [17] 0x1ba:0x15 DW_TAG_lexical_block
	.word	.Ldebug_ranges0                 // DW_AT_ranges
	.byte	15                              // Abbrev [15] 0x1bf:0xf DW_TAG_variable
	.word	.Ldebug_loc6                    // DW_AT_location
	.word	.Linfo_string56                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	51                              // DW_AT_decl_line
	.word	108                             // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	0                               // End Of Children Mark
	.byte	18                              // Abbrev [18] 0x1d0:0x72 DW_TAG_subprogram
	.xword	.Lfunc_begin2                   // DW_AT_low_pc
	.word	.Lfunc_end2-.Lfunc_begin2       // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	111
                                        // DW_AT_GNU_all_call_sites
	.word	.Linfo_string33                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	58                              // DW_AT_decl_line
                                        // DW_AT_prototyped
                                        // DW_AT_external
	.byte	16                              // Abbrev [16] 0x1e5:0xd DW_TAG_formal_parameter
	.byte	1                               // DW_AT_location
	.byte	80
	.word	.Linfo_string51                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	58                              // DW_AT_decl_line
	.word	42                              // DW_AT_type
	.byte	14                              // Abbrev [14] 0x1f2:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc7                    // DW_AT_location
	.word	.Linfo_string3                  // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	58                              // DW_AT_decl_line
	.word	108                             // DW_AT_type
	.byte	16                              // Abbrev [16] 0x201:0xd DW_TAG_formal_parameter
	.byte	1                               // DW_AT_location
	.byte	82
	.word	.Linfo_string52                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	58                              // DW_AT_decl_line
	.word	215                             // DW_AT_type
	.byte	15                              // Abbrev [15] 0x20e:0xf DW_TAG_variable
	.word	.Ldebug_loc8                    // DW_AT_location
	.word	.Linfo_string55                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	60                              // DW_AT_decl_line
	.word	215                             // DW_AT_type
	.byte	15                              // Abbrev [15] 0x21d:0xf DW_TAG_variable
	.word	.Ldebug_loc9                    // DW_AT_location
	.word	.Linfo_string53                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	61                              // DW_AT_decl_line
	.word	108                             // DW_AT_type
	.byte	17                              // Abbrev [17] 0x22c:0x15 DW_TAG_lexical_block
	.word	.Ldebug_ranges1                 // DW_AT_ranges
	.byte	15                              // Abbrev [15] 0x231:0xf DW_TAG_variable
	.word	.Ldebug_loc10                   // DW_AT_location
	.word	.Linfo_string56                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	70                              // DW_AT_decl_line
	.word	108                             // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	0                               // End Of Children Mark
	.byte	13                              // Abbrev [13] 0x242:0x63 DW_TAG_subprogram
	.xword	.Lfunc_begin3                   // DW_AT_low_pc
	.word	.Lfunc_end3-.Lfunc_begin3       // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	111
                                        // DW_AT_GNU_all_call_sites
	.word	.Linfo_string34                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	77                              // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	103                             // DW_AT_type
                                        // DW_AT_external
	.byte	14                              // Abbrev [14] 0x25b:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc11                   // DW_AT_location
	.word	.Linfo_string57                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	77                              // DW_AT_decl_line
	.word	103                             // DW_AT_type
	.byte	16                              // Abbrev [16] 0x26a:0xd DW_TAG_formal_parameter
	.byte	1                               // DW_AT_location
	.byte	81
	.word	.Linfo_string56                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	77                              // DW_AT_decl_line
	.word	108                             // DW_AT_type
	.byte	14                              // Abbrev [14] 0x277:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc12                   // DW_AT_location
	.word	.Linfo_string52                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	77                              // DW_AT_decl_line
	.word	215                             // DW_AT_type
	.byte	15                              // Abbrev [15] 0x286:0xf DW_TAG_variable
	.word	.Ldebug_loc13                   // DW_AT_location
	.word	.Linfo_string58                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	80                              // DW_AT_decl_line
	.word	103                             // DW_AT_type
	.byte	15                              // Abbrev [15] 0x295:0xf DW_TAG_variable
	.word	.Ldebug_loc14                   // DW_AT_location
	.word	.Linfo_string55                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	79                              // DW_AT_decl_line
	.word	215                             // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	13                              // Abbrev [13] 0x2a5:0x9d DW_TAG_subprogram
	.xword	.Lfunc_begin4                   // DW_AT_low_pc
	.word	.Lfunc_end4-.Lfunc_begin4       // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	111
                                        // DW_AT_GNU_all_call_sites
	.word	.Linfo_string35                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	87                              // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	264                             // DW_AT_type
                                        // DW_AT_external
	.byte	14                              // Abbrev [14] 0x2be:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc15                   // DW_AT_location
	.word	.Linfo_string10                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	87                              // DW_AT_decl_line
	.word	103                             // DW_AT_type
	.byte	14                              // Abbrev [14] 0x2cd:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc16                   // DW_AT_location
	.word	.Linfo_string59                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	87                              // DW_AT_decl_line
	.word	103                             // DW_AT_type
	.byte	14                              // Abbrev [14] 0x2dc:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc17                   // DW_AT_location
	.word	.Linfo_string60                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	87                              // DW_AT_decl_line
	.word	103                             // DW_AT_type
	.byte	14                              // Abbrev [14] 0x2eb:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc18                   // DW_AT_location
	.word	.Linfo_string52                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	87                              // DW_AT_decl_line
	.word	215                             // DW_AT_type
	.byte	15                              // Abbrev [15] 0x2fa:0xf DW_TAG_variable
	.word	.Ldebug_loc19                   // DW_AT_location
	.word	.Linfo_string55                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	89                              // DW_AT_decl_line
	.word	215                             // DW_AT_type
	.byte	15                              // Abbrev [15] 0x309:0xf DW_TAG_variable
	.word	.Ldebug_loc20                   // DW_AT_location
	.word	.Linfo_string61                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	90                              // DW_AT_decl_line
	.word	103                             // DW_AT_type
	.byte	15                              // Abbrev [15] 0x318:0xf DW_TAG_variable
	.word	.Ldebug_loc21                   // DW_AT_location
	.word	.Linfo_string62                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	90                              // DW_AT_decl_line
	.word	103                             // DW_AT_type
	.byte	19                              // Abbrev [19] 0x327:0xd DW_TAG_GNU_call_site
	.word	578                             // DW_AT_abstract_origin
	.xword	.Ltmp62                         // DW_AT_low_pc
	.byte	19                              // Abbrev [19] 0x334:0xd DW_TAG_GNU_call_site
	.word	578                             // DW_AT_abstract_origin
	.xword	.Ltmp64                         // DW_AT_low_pc
	.byte	0                               // End Of Children Mark
	.byte	13                              // Abbrev [13] 0x342:0x38 DW_TAG_subprogram
	.xword	.Lfunc_begin5                   // DW_AT_low_pc
	.word	.Lfunc_end5-.Lfunc_begin5       // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	111
                                        // DW_AT_GNU_all_call_sites
	.word	.Linfo_string36                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	105                             // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	123                             // DW_AT_type
                                        // DW_AT_external
	.byte	14                              // Abbrev [14] 0x35b:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc22                   // DW_AT_location
	.word	.Linfo_string63                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	105                             // DW_AT_decl_line
	.word	103                             // DW_AT_type
	.byte	15                              // Abbrev [15] 0x36a:0xf DW_TAG_variable
	.word	.Ldebug_loc23                   // DW_AT_location
	.word	.Linfo_string64                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	107                             // DW_AT_decl_line
	.word	123                             // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	13                              // Abbrev [13] 0x37a:0x97 DW_TAG_subprogram
	.xword	.Lfunc_begin6                   // DW_AT_low_pc
	.word	.Lfunc_end6-.Lfunc_begin6       // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	111
                                        // DW_AT_GNU_all_call_sites
	.word	.Linfo_string37                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	114                             // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	264                             // DW_AT_type
                                        // DW_AT_external
	.byte	14                              // Abbrev [14] 0x393:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc24                   // DW_AT_location
	.word	.Linfo_string64                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	114                             // DW_AT_decl_line
	.word	123                             // DW_AT_type
	.byte	14                              // Abbrev [14] 0x3a2:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc25                   // DW_AT_location
	.word	.Linfo_string65                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	114                             // DW_AT_decl_line
	.word	2635                            // DW_AT_type
	.byte	14                              // Abbrev [14] 0x3b1:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc26                   // DW_AT_location
	.word	.Linfo_string66                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	114                             // DW_AT_decl_line
	.word	283                             // DW_AT_type
	.byte	15                              // Abbrev [15] 0x3c0:0xf DW_TAG_variable
	.word	.Ldebug_loc27                   // DW_AT_location
	.word	.Linfo_string67                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	120                             // DW_AT_decl_line
	.word	103                             // DW_AT_type
	.byte	15                              // Abbrev [15] 0x3cf:0xf DW_TAG_variable
	.word	.Ldebug_loc28                   // DW_AT_location
	.word	.Linfo_string68                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	119                             // DW_AT_decl_line
	.word	215                             // DW_AT_type
	.byte	20                              // Abbrev [20] 0x3de:0xb DW_TAG_variable
	.word	.Linfo_string69                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	120                             // DW_AT_decl_line
	.word	103                             // DW_AT_type
	.byte	19                              // Abbrev [19] 0x3e9:0xd DW_TAG_GNU_call_site
	.word	1041                            // DW_AT_abstract_origin
	.xword	.Ltmp80                         // DW_AT_low_pc
	.byte	19                              // Abbrev [19] 0x3f6:0xd DW_TAG_GNU_call_site
	.word	1349                            // DW_AT_abstract_origin
	.xword	.Ltmp83                         // DW_AT_low_pc
	.byte	19                              // Abbrev [19] 0x403:0xd DW_TAG_GNU_call_site
	.word	1732                            // DW_AT_abstract_origin
	.xword	.Ltmp84                         // DW_AT_low_pc
	.byte	0                               // End Of Children Mark
	.byte	13                              // Abbrev [13] 0x411:0x134 DW_TAG_subprogram
	.xword	.Lfunc_begin7                   // DW_AT_low_pc
	.word	.Lfunc_end7-.Lfunc_begin7       // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	111
                                        // DW_AT_GNU_all_call_sites
	.word	.Linfo_string38                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	236                             // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	103                             // DW_AT_type
                                        // DW_AT_external
	.byte	14                              // Abbrev [14] 0x42a:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc29                   // DW_AT_location
	.word	.Linfo_string64                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	236                             // DW_AT_decl_line
	.word	123                             // DW_AT_type
	.byte	14                              // Abbrev [14] 0x439:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc30                   // DW_AT_location
	.word	.Linfo_string71                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	236                             // DW_AT_decl_line
	.word	264                             // DW_AT_type
	.byte	14                              // Abbrev [14] 0x448:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc31                   // DW_AT_location
	.word	.Linfo_string66                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	236                             // DW_AT_decl_line
	.word	283                             // DW_AT_type
	.byte	21                              // Abbrev [21] 0x457:0xe DW_TAG_variable
	.byte	2                               // DW_AT_location
	.byte	145
	.byte	32
	.word	.Linfo_string70                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	244                             // DW_AT_decl_line
	.word	2640                            // DW_AT_type
	.byte	15                              // Abbrev [15] 0x465:0xf DW_TAG_variable
	.word	.Ldebug_loc32                   // DW_AT_location
	.word	.Linfo_string72                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	243                             // DW_AT_decl_line
	.word	215                             // DW_AT_type
	.byte	15                              // Abbrev [15] 0x474:0xf DW_TAG_variable
	.word	.Ldebug_loc33                   // DW_AT_location
	.word	.Linfo_string73                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	243                             // DW_AT_decl_line
	.word	215                             // DW_AT_type
	.byte	15                              // Abbrev [15] 0x483:0xf DW_TAG_variable
	.word	.Ldebug_loc34                   // DW_AT_location
	.word	.Linfo_string74                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	243                             // DW_AT_decl_line
	.word	215                             // DW_AT_type
	.byte	15                              // Abbrev [15] 0x492:0xf DW_TAG_variable
	.word	.Ldebug_loc35                   // DW_AT_location
	.word	.Linfo_string75                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	248                             // DW_AT_decl_line
	.word	2635                            // DW_AT_type
	.byte	15                              // Abbrev [15] 0x4a1:0xf DW_TAG_variable
	.word	.Ldebug_loc36                   // DW_AT_location
	.word	.Linfo_string65                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	249                             // DW_AT_decl_line
	.word	103                             // DW_AT_type
	.byte	15                              // Abbrev [15] 0x4b0:0xf DW_TAG_variable
	.word	.Ldebug_loc37                   // DW_AT_location
	.word	.Linfo_string55                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	241                             // DW_AT_decl_line
	.word	264                             // DW_AT_type
	.byte	15                              // Abbrev [15] 0x4bf:0xf DW_TAG_variable
	.word	.Ldebug_loc38                   // DW_AT_location
	.word	.Linfo_string76                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	242                             // DW_AT_decl_line
	.word	276                             // DW_AT_type
	.byte	15                              // Abbrev [15] 0x4ce:0xf DW_TAG_variable
	.word	.Ldebug_loc39                   // DW_AT_location
	.word	.Linfo_string77                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	241                             // DW_AT_decl_line
	.word	264                             // DW_AT_type
	.byte	20                              // Abbrev [20] 0x4dd:0xb DW_TAG_variable
	.word	.Linfo_string78                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	241                             // DW_AT_decl_line
	.word	264                             // DW_AT_type
	.byte	20                              // Abbrev [20] 0x4e8:0xb DW_TAG_variable
	.word	.Linfo_string79                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	244                             // DW_AT_decl_line
	.word	2640                            // DW_AT_type
	.byte	22                              // Abbrev [22] 0x4f3:0x8 DW_TAG_label
	.word	.Linfo_string80                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.hword	324                             // DW_AT_decl_line
	.byte	22                              // Abbrev [22] 0x4fb:0x8 DW_TAG_label
	.word	.Linfo_string81                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.hword	327                             // DW_AT_decl_line
	.byte	19                              // Abbrev [19] 0x503:0xd DW_TAG_GNU_call_site
	.word	1746                            // DW_AT_abstract_origin
	.xword	.Ltmp132                        // DW_AT_low_pc
	.byte	19                              // Abbrev [19] 0x510:0xd DW_TAG_GNU_call_site
	.word	1854                            // DW_AT_abstract_origin
	.xword	.Ltmp160                        // DW_AT_low_pc
	.byte	19                              // Abbrev [19] 0x51d:0xd DW_TAG_GNU_call_site
	.word	1746                            // DW_AT_abstract_origin
	.xword	.Ltmp163                        // DW_AT_low_pc
	.byte	19                              // Abbrev [19] 0x52a:0xd DW_TAG_GNU_call_site
	.word	1732                            // DW_AT_abstract_origin
	.xword	.Ltmp181                        // DW_AT_low_pc
	.byte	19                              // Abbrev [19] 0x537:0xd DW_TAG_GNU_call_site
	.word	1732                            // DW_AT_abstract_origin
	.xword	.Ltmp184                        // DW_AT_low_pc
	.byte	0                               // End Of Children Mark
	.byte	23                              // Abbrev [23] 0x545:0x17f DW_TAG_subprogram
	.xword	.Lfunc_begin8                   // DW_AT_low_pc
	.word	.Lfunc_end8-.Lfunc_begin8       // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	111
                                        // DW_AT_GNU_all_call_sites
	.word	.Linfo_string39                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.hword	335                             // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	103                             // DW_AT_type
                                        // DW_AT_external
	.byte	24                              // Abbrev [24] 0x55f:0x10 DW_TAG_formal_parameter
	.word	.Ldebug_loc40                   // DW_AT_location
	.word	.Linfo_string64                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.hword	335                             // DW_AT_decl_line
	.word	123                             // DW_AT_type
	.byte	24                              // Abbrev [24] 0x56f:0x10 DW_TAG_formal_parameter
	.word	.Ldebug_loc41                   // DW_AT_location
	.word	.Linfo_string71                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.hword	335                             // DW_AT_decl_line
	.word	264                             // DW_AT_type
	.byte	24                              // Abbrev [24] 0x57f:0x10 DW_TAG_formal_parameter
	.word	.Ldebug_loc42                   // DW_AT_location
	.word	.Linfo_string66                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.hword	335                             // DW_AT_decl_line
	.word	283                             // DW_AT_type
	.byte	25                              // Abbrev [25] 0x58f:0x10 DW_TAG_variable
	.byte	3                               // DW_AT_location
	.byte	145
	.ascii	"\200\020"
	.word	.Linfo_string82                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.hword	338                             // DW_AT_decl_line
	.word	2653                            // DW_AT_type
	.byte	26                              // Abbrev [26] 0x59f:0x10 DW_TAG_variable
	.word	.Ldebug_loc46                   // DW_AT_location
	.word	.Linfo_string55                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.hword	337                             // DW_AT_decl_line
	.word	264                             // DW_AT_type
	.byte	26                              // Abbrev [26] 0x5af:0x10 DW_TAG_variable
	.word	.Ldebug_loc47                   // DW_AT_location
	.word	.Linfo_string77                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.hword	337                             // DW_AT_decl_line
	.word	264                             // DW_AT_type
	.byte	27                              // Abbrev [27] 0x5bf:0xc DW_TAG_variable
	.word	.Linfo_string78                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.hword	337                             // DW_AT_decl_line
	.word	264                             // DW_AT_type
	.byte	17                              // Abbrev [17] 0x5cb:0x45 DW_TAG_lexical_block
	.word	.Ldebug_ranges2                 // DW_AT_ranges
	.byte	25                              // Abbrev [25] 0x5d0:0xf DW_TAG_variable
	.byte	2                               // DW_AT_location
	.byte	145
	.byte	0
	.word	.Linfo_string65                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.hword	396                             // DW_AT_decl_line
	.word	2666                            // DW_AT_type
	.byte	26                              // Abbrev [26] 0x5df:0x10 DW_TAG_variable
	.word	.Ldebug_loc43                   // DW_AT_location
	.word	.Linfo_string83                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.hword	398                             // DW_AT_decl_line
	.word	215                             // DW_AT_type
	.byte	26                              // Abbrev [26] 0x5ef:0x10 DW_TAG_variable
	.word	.Ldebug_loc49                   // DW_AT_location
	.word	.Linfo_string85                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.hword	401                             // DW_AT_decl_line
	.word	103                             // DW_AT_type
	.byte	26                              // Abbrev [26] 0x5ff:0x10 DW_TAG_variable
	.word	.Ldebug_loc50                   // DW_AT_location
	.word	.Linfo_string51                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.hword	404                             // DW_AT_decl_line
	.word	42                              // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	28                              // Abbrev [28] 0x610:0x3e DW_TAG_lexical_block
	.xword	.Ltmp191                        // DW_AT_low_pc
	.word	.Ltmp238-.Ltmp191               // DW_AT_high_pc
	.byte	26                              // Abbrev [26] 0x61d:0x10 DW_TAG_variable
	.word	.Ldebug_loc44                   // DW_AT_location
	.word	.Linfo_string65                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.hword	343                             // DW_AT_decl_line
	.word	103                             // DW_AT_type
	.byte	26                              // Abbrev [26] 0x62d:0x10 DW_TAG_variable
	.word	.Ldebug_loc45                   // DW_AT_location
	.word	.Linfo_string84                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.hword	344                             // DW_AT_decl_line
	.word	103                             // DW_AT_type
	.byte	26                              // Abbrev [26] 0x63d:0x10 DW_TAG_variable
	.word	.Ldebug_loc48                   // DW_AT_location
	.word	.Linfo_string51                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.hword	368                             // DW_AT_decl_line
	.word	42                              // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	19                              // Abbrev [19] 0x64e:0xd DW_TAG_GNU_call_site
	.word	288                             // DW_AT_abstract_origin
	.xword	.Ltmp223                        // DW_AT_low_pc
	.byte	19                              // Abbrev [19] 0x65b:0xd DW_TAG_GNU_call_site
	.word	464                             // DW_AT_abstract_origin
	.xword	.Ltmp228                        // DW_AT_low_pc
	.byte	19                              // Abbrev [19] 0x668:0xd DW_TAG_GNU_call_site
	.word	464                             // DW_AT_abstract_origin
	.xword	.Ltmp230                        // DW_AT_low_pc
	.byte	19                              // Abbrev [19] 0x675:0xd DW_TAG_GNU_call_site
	.word	464                             // DW_AT_abstract_origin
	.xword	.Ltmp235                        // DW_AT_low_pc
	.byte	19                              // Abbrev [19] 0x682:0xd DW_TAG_GNU_call_site
	.word	1732                            // DW_AT_abstract_origin
	.xword	.Ltmp237                        // DW_AT_low_pc
	.byte	19                              // Abbrev [19] 0x68f:0xd DW_TAG_GNU_call_site
	.word	288                             // DW_AT_abstract_origin
	.xword	.Ltmp243                        // DW_AT_low_pc
	.byte	19                              // Abbrev [19] 0x69c:0xd DW_TAG_GNU_call_site
	.word	344                             // DW_AT_abstract_origin
	.xword	.Ltmp247                        // DW_AT_low_pc
	.byte	19                              // Abbrev [19] 0x6a9:0xd DW_TAG_GNU_call_site
	.word	344                             // DW_AT_abstract_origin
	.xword	.Ltmp249                        // DW_AT_low_pc
	.byte	19                              // Abbrev [19] 0x6b6:0xd DW_TAG_GNU_call_site
	.word	1732                            // DW_AT_abstract_origin
	.xword	.Ltmp269                        // DW_AT_low_pc
	.byte	0                               // End Of Children Mark
	.byte	29                              // Abbrev [29] 0x6c4:0xe DW_TAG_subprogram
	.word	.Linfo_string23                 // DW_AT_name
	.byte	5                               // DW_AT_decl_file
	.hword	565                             // DW_AT_decl_line
                                        // DW_AT_prototyped
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	12                              // Abbrev [12] 0x6cc:0x5 DW_TAG_formal_parameter
	.word	122                             // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	18                              // Abbrev [18] 0x6d2:0x6c DW_TAG_subprogram
	.xword	.Lfunc_begin10                  // DW_AT_low_pc
	.word	.Lfunc_end10-.Lfunc_begin10     // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	111
                                        // DW_AT_GNU_all_call_sites
	.word	.Linfo_string41                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	228                             // DW_AT_decl_line
                                        // DW_AT_prototyped
                                        // DW_AT_external
	.byte	14                              // Abbrev [14] 0x6e7:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc57                   // DW_AT_location
	.word	.Linfo_string87                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	228                             // DW_AT_decl_line
	.word	2635                            // DW_AT_type
	.byte	14                              // Abbrev [14] 0x6f6:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc58                   // DW_AT_location
	.word	.Linfo_string88                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	228                             // DW_AT_decl_line
	.word	264                             // DW_AT_type
	.byte	14                              // Abbrev [14] 0x705:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc59                   // DW_AT_location
	.word	.Linfo_string64                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	228                             // DW_AT_decl_line
	.word	123                             // DW_AT_type
	.byte	15                              // Abbrev [15] 0x714:0xf DW_TAG_variable
	.word	.Ldebug_loc60                   // DW_AT_location
	.word	.Linfo_string89                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	230                             // DW_AT_decl_line
	.word	2635                            // DW_AT_type
	.byte	19                              // Abbrev [19] 0x723:0xd DW_TAG_GNU_call_site
	.word	2070                            // DW_AT_abstract_origin
	.xword	.Ltmp300                        // DW_AT_low_pc
	.byte	19                              // Abbrev [19] 0x730:0xd DW_TAG_GNU_call_site
	.word	1732                            // DW_AT_abstract_origin
	.xword	.Ltmp301                        // DW_AT_low_pc
	.byte	0                               // End Of Children Mark
	.byte	18                              // Abbrev [18] 0x73e:0x93 DW_TAG_subprogram
	.xword	.Lfunc_begin9                   // DW_AT_low_pc
	.word	.Lfunc_end9-.Lfunc_begin9       // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	111
                                        // DW_AT_GNU_all_call_sites
	.word	.Linfo_string40                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	176                             // DW_AT_decl_line
                                        // DW_AT_prototyped
                                        // DW_AT_external
	.byte	14                              // Abbrev [14] 0x753:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc51                   // DW_AT_location
	.word	.Linfo_string3                  // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	176                             // DW_AT_decl_line
	.word	103                             // DW_AT_type
	.byte	14                              // Abbrev [14] 0x762:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc52                   // DW_AT_location
	.word	.Linfo_string83                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	176                             // DW_AT_decl_line
	.word	215                             // DW_AT_type
	.byte	14                              // Abbrev [14] 0x771:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc53                   // DW_AT_location
	.word	.Linfo_string86                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	176                             // DW_AT_decl_line
	.word	215                             // DW_AT_type
	.byte	15                              // Abbrev [15] 0x780:0xf DW_TAG_variable
	.word	.Ldebug_loc54                   // DW_AT_location
	.word	.Linfo_string55                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	178                             // DW_AT_decl_line
	.word	264                             // DW_AT_type
	.byte	15                              // Abbrev [15] 0x78f:0xf DW_TAG_variable
	.word	.Ldebug_loc55                   // DW_AT_location
	.word	.Linfo_string78                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	178                             // DW_AT_decl_line
	.word	264                             // DW_AT_type
	.byte	15                              // Abbrev [15] 0x79e:0xf DW_TAG_variable
	.word	.Ldebug_loc56                   // DW_AT_location
	.word	.Linfo_string77                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	178                             // DW_AT_decl_line
	.word	264                             // DW_AT_type
	.byte	30                              // Abbrev [30] 0x7ad:0xb DW_TAG_variable
	.word	.Linfo_string79                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	179                             // DW_AT_decl_line
	.word	.debug_info+2753                // DW_AT_type
	.byte	30                              // Abbrev [30] 0x7b8:0xb DW_TAG_variable
	.word	.Linfo_string56                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	179                             // DW_AT_decl_line
	.word	.debug_info+2753                // DW_AT_type
	.byte	19                              // Abbrev [19] 0x7c3:0xd DW_TAG_GNU_call_site
	.word	2001                            // DW_AT_abstract_origin
	.xword	.Ltmp272                        // DW_AT_low_pc
	.byte	0                               // End Of Children Mark
	.byte	13                              // Abbrev [13] 0x7d1:0x45 DW_TAG_subprogram
	.xword	.Lfunc_begin13                  // DW_AT_low_pc
	.word	.Lfunc_end13-.Lfunc_begin13     // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	111
                                        // DW_AT_GNU_all_call_sites
	.word	.Linfo_string44                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	169                             // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	264                             // DW_AT_type
                                        // DW_AT_external
	.byte	14                              // Abbrev [14] 0x7ea:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc76                   // DW_AT_location
	.word	.Linfo_string93                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	169                             // DW_AT_decl_line
	.word	264                             // DW_AT_type
	.byte	14                              // Abbrev [14] 0x7f9:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc77                   // DW_AT_location
	.word	.Linfo_string53                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	169                             // DW_AT_decl_line
	.word	264                             // DW_AT_type
	.byte	19                              // Abbrev [19] 0x808:0xd DW_TAG_GNU_call_site
	.word	2001                            // DW_AT_abstract_origin
	.xword	.Ltmp356                        // DW_AT_low_pc
	.byte	0                               // End Of Children Mark
	.byte	18                              // Abbrev [18] 0x816:0x97 DW_TAG_subprogram
	.xword	.Lfunc_begin11                  // DW_AT_low_pc
	.word	.Lfunc_end11-.Lfunc_begin11     // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	111
                                        // DW_AT_GNU_all_call_sites
	.word	.Linfo_string42                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	216                             // DW_AT_decl_line
                                        // DW_AT_prototyped
                                        // DW_AT_external
	.byte	14                              // Abbrev [14] 0x82b:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc61                   // DW_AT_location
	.word	.Linfo_string87                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	216                             // DW_AT_decl_line
	.word	2635                            // DW_AT_type
	.byte	14                              // Abbrev [14] 0x83a:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc62                   // DW_AT_location
	.word	.Linfo_string89                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	216                             // DW_AT_decl_line
	.word	2635                            // DW_AT_type
	.byte	14                              // Abbrev [14] 0x849:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc63                   // DW_AT_location
	.word	.Linfo_string90                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	216                             // DW_AT_decl_line
	.word	264                             // DW_AT_type
	.byte	14                              // Abbrev [14] 0x858:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc64                   // DW_AT_location
	.word	.Linfo_string91                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	216                             // DW_AT_decl_line
	.word	264                             // DW_AT_type
	.byte	14                              // Abbrev [14] 0x867:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc65                   // DW_AT_location
	.word	.Linfo_string64                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	216                             // DW_AT_decl_line
	.word	123                             // DW_AT_type
	.byte	15                              // Abbrev [15] 0x876:0xf DW_TAG_variable
	.word	.Ldebug_loc66                   // DW_AT_location
	.word	.Linfo_string92                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	218                             // DW_AT_decl_line
	.word	264                             // DW_AT_type
	.byte	19                              // Abbrev [19] 0x885:0xd DW_TAG_GNU_call_site
	.word	2070                            // DW_AT_abstract_origin
	.xword	.Ltmp313                        // DW_AT_low_pc
	.byte	19                              // Abbrev [19] 0x892:0xd DW_TAG_GNU_call_site
	.word	2070                            // DW_AT_abstract_origin
	.xword	.Ltmp314                        // DW_AT_low_pc
	.byte	19                              // Abbrev [19] 0x89f:0xd DW_TAG_GNU_call_site
	.word	2221                            // DW_AT_abstract_origin
	.xword	.Ltmp315                        // DW_AT_low_pc
	.byte	0                               // End Of Children Mark
	.byte	18                              // Abbrev [18] 0x8ad:0xa8 DW_TAG_subprogram
	.xword	.Lfunc_begin12                  // DW_AT_low_pc
	.word	.Lfunc_end12-.Lfunc_begin12     // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	111
                                        // DW_AT_GNU_all_call_sites
	.word	.Linfo_string43                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	199                             // DW_AT_decl_line
                                        // DW_AT_prototyped
                                        // DW_AT_external
	.byte	14                              // Abbrev [14] 0x8c2:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc67                   // DW_AT_location
	.word	.Linfo_string87                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	199                             // DW_AT_decl_line
	.word	2635                            // DW_AT_type
	.byte	14                              // Abbrev [14] 0x8d1:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc68                   // DW_AT_location
	.word	.Linfo_string89                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	199                             // DW_AT_decl_line
	.word	2635                            // DW_AT_type
	.byte	14                              // Abbrev [14] 0x8e0:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc69                   // DW_AT_location
	.word	.Linfo_string90                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	199                             // DW_AT_decl_line
	.word	264                             // DW_AT_type
	.byte	14                              // Abbrev [14] 0x8ef:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc70                   // DW_AT_location
	.word	.Linfo_string92                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	199                             // DW_AT_decl_line
	.word	264                             // DW_AT_type
	.byte	14                              // Abbrev [14] 0x8fe:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc71                   // DW_AT_location
	.word	.Linfo_string91                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	199                             // DW_AT_decl_line
	.word	264                             // DW_AT_type
	.byte	14                              // Abbrev [14] 0x90d:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc72                   // DW_AT_location
	.word	.Linfo_string64                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	199                             // DW_AT_decl_line
	.word	123                             // DW_AT_type
	.byte	15                              // Abbrev [15] 0x91c:0xf DW_TAG_variable
	.word	.Ldebug_loc73                   // DW_AT_location
	.word	.Linfo_string55                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	201                             // DW_AT_decl_line
	.word	264                             // DW_AT_type
	.byte	15                              // Abbrev [15] 0x92b:0xf DW_TAG_variable
	.word	.Ldebug_loc74                   // DW_AT_location
	.word	.Linfo_string77                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	201                             // DW_AT_decl_line
	.word	264                             // DW_AT_type
	.byte	15                              // Abbrev [15] 0x93a:0xf DW_TAG_variable
	.word	.Ldebug_loc75                   // DW_AT_location
	.word	.Linfo_string78                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	201                             // DW_AT_decl_line
	.word	264                             // DW_AT_type
	.byte	31                              // Abbrev [31] 0x949:0xb DW_TAG_GNU_call_site
	.byte	1                               // DW_AT_GNU_call_site_target
	.byte	88
	.xword	.Ltmp327                        // DW_AT_low_pc
	.byte	0                               // End Of Children Mark
	.byte	13                              // Abbrev [13] 0x955:0xa2 DW_TAG_subprogram
	.xword	.Lfunc_begin14                  // DW_AT_low_pc
	.word	.Lfunc_end14-.Lfunc_begin14     // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	111
                                        // DW_AT_GNU_all_call_sites
	.word	.Linfo_string45                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	135                             // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	264                             // DW_AT_type
                                        // DW_AT_external
	.byte	14                              // Abbrev [14] 0x96e:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc78                   // DW_AT_location
	.word	.Linfo_string64                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	135                             // DW_AT_decl_line
	.word	123                             // DW_AT_type
	.byte	14                              // Abbrev [14] 0x97d:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc79                   // DW_AT_location
	.word	.Linfo_string65                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	135                             // DW_AT_decl_line
	.word	2635                            // DW_AT_type
	.byte	14                              // Abbrev [14] 0x98c:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc80                   // DW_AT_location
	.word	.Linfo_string66                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	135                             // DW_AT_decl_line
	.word	283                             // DW_AT_type
	.byte	15                              // Abbrev [15] 0x99b:0xf DW_TAG_variable
	.word	.Ldebug_loc81                   // DW_AT_location
	.word	.Linfo_string67                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	142                             // DW_AT_decl_line
	.word	103                             // DW_AT_type
	.byte	15                              // Abbrev [15] 0x9aa:0xf DW_TAG_variable
	.word	.Ldebug_loc82                   // DW_AT_location
	.word	.Linfo_string68                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	141                             // DW_AT_decl_line
	.word	215                             // DW_AT_type
	.byte	20                              // Abbrev [20] 0x9b9:0xb DW_TAG_variable
	.word	.Linfo_string69                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	142                             // DW_AT_decl_line
	.word	103                             // DW_AT_type
	.byte	20                              // Abbrev [20] 0x9c4:0xb DW_TAG_variable
	.word	.Linfo_string94                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	140                             // DW_AT_decl_line
	.word	264                             // DW_AT_type
	.byte	19                              // Abbrev [19] 0x9cf:0xd DW_TAG_GNU_call_site
	.word	1349                            // DW_AT_abstract_origin
	.xword	.Ltmp366                        // DW_AT_low_pc
	.byte	19                              // Abbrev [19] 0x9dc:0xd DW_TAG_GNU_call_site
	.word	1041                            // DW_AT_abstract_origin
	.xword	.Ltmp369                        // DW_AT_low_pc
	.byte	19                              // Abbrev [19] 0x9e9:0xd DW_TAG_GNU_call_site
	.word	1732                            // DW_AT_abstract_origin
	.xword	.Ltmp370                        // DW_AT_low_pc
	.byte	0                               // End Of Children Mark
	.byte	13                              // Abbrev [13] 0x9f7:0x54 DW_TAG_subprogram
	.xword	.Lfunc_begin15                  // DW_AT_low_pc
	.word	.Lfunc_end15-.Lfunc_begin15     // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	111
                                        // DW_AT_GNU_all_call_sites
	.word	.Linfo_string46                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	157                             // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	264                             // DW_AT_type
                                        // DW_AT_external
	.byte	14                              // Abbrev [14] 0xa10:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc83                   // DW_AT_location
	.word	.Linfo_string64                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	157                             // DW_AT_decl_line
	.word	123                             // DW_AT_type
	.byte	14                              // Abbrev [14] 0xa1f:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc84                   // DW_AT_location
	.word	.Linfo_string3                  // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	157                             // DW_AT_decl_line
	.word	103                             // DW_AT_type
	.byte	14                              // Abbrev [14] 0xa2e:0xf DW_TAG_formal_parameter
	.word	.Ldebug_loc85                   // DW_AT_location
	.word	.Linfo_string12                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	157                             // DW_AT_decl_line
	.word	215                             // DW_AT_type
	.byte	19                              // Abbrev [19] 0xa3d:0xd DW_TAG_GNU_call_site
	.word	1732                            // DW_AT_abstract_origin
	.xword	.Ltmp383                        // DW_AT_low_pc
	.byte	0                               // End Of Children Mark
	.byte	2                               // Abbrev [2] 0xa4b:0x5 DW_TAG_pointer_type
	.word	103                             // DW_AT_type
	.byte	8                               // Abbrev [8] 0xa50:0xd DW_TAG_array_type
	.word	108                             // DW_AT_type
	.byte	32                              // Abbrev [32] 0xa55:0x7 DW_TAG_subrange_type
	.word	208                             // DW_AT_type
	.hword	512                             // DW_AT_count
	.byte	0                               // End Of Children Mark
	.byte	8                               // Abbrev [8] 0xa5d:0xd DW_TAG_array_type
	.word	108                             // DW_AT_type
	.byte	32                              // Abbrev [32] 0xa62:0x7 DW_TAG_subrange_type
	.word	208                             // DW_AT_type
	.hword	256                             // DW_AT_count
	.byte	0                               // End Of Children Mark
	.byte	8                               // Abbrev [8] 0xa6a:0xd DW_TAG_array_type
	.word	108                             // DW_AT_type
	.byte	32                              // Abbrev [32] 0xa6f:0x7 DW_TAG_subrange_type
	.word	208                             // DW_AT_type
	.hword	2048                            // DW_AT_count
	.byte	0                               // End Of Children Mark
	.byte	0                               // End Of Children Mark
.Ldebug_info_end0:
.Lcu_begin1:
	.word	.Ldebug_info_end1-.Ldebug_info_start1 // Length of Unit
.Ldebug_info_start1:
	.hword	4                               // DWARF version number
	.word	.debug_abbrev                   // Offset Into Abbrev. Section
	.byte	8                               // Address Size (in bytes)
	.byte	1                               // Abbrev [1] 0xb:0x442 DW_TAG_compile_unit
	.word	.Linfo_string0                  // DW_AT_producer
	.hword	12                              // DW_AT_language
	.word	.Linfo_string20                 // DW_AT_name
	.word	.Lline_table_start0             // DW_AT_stmt_list
	.word	.Linfo_string2                  // DW_AT_comp_dir
	.xword	.Lfunc_begin16                  // DW_AT_low_pc
	.word	.Lfunc_end19-.Lfunc_begin16     // DW_AT_high_pc
	.byte	33                              // Abbrev [33] 0x2a:0x15 DW_TAG_variable
	.word	.Linfo_string21                 // DW_AT_name
	.word	63                              // DW_AT_type
                                        // DW_AT_external
	.byte	3                               // DW_AT_decl_file
	.byte	30                              // DW_AT_decl_line
	.byte	9                               // DW_AT_location
	.byte	3
	.xword	secret
	.byte	2                               // Abbrev [2] 0x3f:0x5 DW_TAG_pointer_type
	.word	68                              // DW_AT_type
	.byte	34                              // Abbrev [34] 0x44:0x5 DW_TAG_const_type
	.word	73                              // DW_AT_type
	.byte	6                               // Abbrev [6] 0x49:0x7 DW_TAG_base_type
	.word	.Linfo_string22                 // DW_AT_name
	.byte	6                               // DW_AT_encoding
	.byte	1                               // DW_AT_byte_size
	.byte	2                               // Abbrev [2] 0x50:0x5 DW_TAG_pointer_type
	.word	73                              // DW_AT_type
	.byte	35                              // Abbrev [35] 0x55:0x15 DW_TAG_subprogram
	.xword	.Lfunc_begin16                  // DW_AT_low_pc
	.word	.Lfunc_end16-.Lfunc_begin16     // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	111
                                        // DW_AT_GNU_all_call_sites
	.word	.Linfo_string47                 // DW_AT_name
	.byte	3                               // DW_AT_decl_file
	.byte	32                              // DW_AT_decl_line
                                        // DW_AT_external
	.byte	36                              // Abbrev [36] 0x6a:0xe8 DW_TAG_subprogram
	.xword	.Lfunc_begin17                  // DW_AT_low_pc
	.word	.Lfunc_end17-.Lfunc_begin17     // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	111
                                        // DW_AT_GNU_all_call_sites
	.word	.Linfo_string48                 // DW_AT_name
	.byte	3                               // DW_AT_decl_file
	.byte	39                              // DW_AT_decl_line
                                        // DW_AT_external
	.byte	37                              // Abbrev [37] 0x7f:0xf DW_TAG_variable
	.byte	3                               // DW_AT_location
	.byte	145
	.ascii	"\220 "
	.word	.Linfo_string67                 // DW_AT_name
	.byte	3                               // DW_AT_decl_file
	.byte	42                              // DW_AT_decl_line
	.word	.debug_info+196                 // DW_AT_type
	.byte	21                              // Abbrev [21] 0x8e:0xe DW_TAG_variable
	.byte	2                               // DW_AT_location
	.byte	145
	.byte	16
	.word	.Linfo_string3                  // DW_AT_name
	.byte	3                               // DW_AT_decl_file
	.byte	43                              // DW_AT_decl_line
	.word	953                             // DW_AT_type
	.byte	38                              // Abbrev [38] 0x9c:0xf DW_TAG_variable
	.word	.Ldebug_loc86                   // DW_AT_location
	.word	.Linfo_string65                 // DW_AT_name
	.byte	3                               // DW_AT_decl_file
	.byte	42                              // DW_AT_decl_line
	.word	.debug_info+103                 // DW_AT_type
	.byte	15                              // Abbrev [15] 0xab:0xf DW_TAG_variable
	.word	.Ldebug_loc87                   // DW_AT_location
	.word	.Linfo_string66                 // DW_AT_name
	.byte	3                               // DW_AT_decl_file
	.byte	44                              // DW_AT_decl_line
	.word	973                             // DW_AT_type
	.byte	15                              // Abbrev [15] 0xba:0xf DW_TAG_variable
	.word	.Ldebug_loc88                   // DW_AT_location
	.word	.Linfo_string64                 // DW_AT_name
	.byte	3                               // DW_AT_decl_file
	.byte	45                              // DW_AT_decl_line
	.word	984                             // DW_AT_type
	.byte	38                              // Abbrev [38] 0xc9:0xf DW_TAG_variable
	.word	.Ldebug_loc89                   // DW_AT_location
	.word	.Linfo_string55                 // DW_AT_name
	.byte	3                               // DW_AT_decl_file
	.byte	41                              // DW_AT_decl_line
	.word	.debug_info+264                 // DW_AT_type
	.byte	39                              // Abbrev [39] 0xd8:0xf DW_TAG_label
	.word	.Linfo_string80                 // DW_AT_name
	.byte	3                               // DW_AT_decl_file
	.byte	80                              // DW_AT_decl_line
	.xword	.Ltmp440                        // DW_AT_low_pc
	.byte	39                              // Abbrev [39] 0xe7:0xf DW_TAG_label
	.word	.Linfo_string95                 // DW_AT_name
	.byte	3                               // DW_AT_decl_file
	.byte	82                              // DW_AT_decl_line
	.xword	.Ltmp441                        // DW_AT_low_pc
	.byte	19                              // Abbrev [19] 0xf6:0xd DW_TAG_GNU_call_site
	.word	338                             // DW_AT_abstract_origin
	.xword	.Ltmp400                        // DW_AT_low_pc
	.byte	19                              // Abbrev [19] 0x103:0xd DW_TAG_GNU_call_site
	.word	382                             // DW_AT_abstract_origin
	.xword	.Ltmp411                        // DW_AT_low_pc
	.byte	19                              // Abbrev [19] 0x110:0xd DW_TAG_GNU_call_site
	.word	399                             // DW_AT_abstract_origin
	.xword	.Ltmp412                        // DW_AT_low_pc
	.byte	40                              // Abbrev [40] 0x11d:0xd DW_TAG_GNU_call_site
	.word	.debug_info+834                 // DW_AT_abstract_origin
	.xword	.Ltmp414                        // DW_AT_low_pc
	.byte	40                              // Abbrev [40] 0x12a:0xd DW_TAG_GNU_call_site
	.word	.debug_info+890                 // DW_AT_abstract_origin
	.xword	.Ltmp418                        // DW_AT_low_pc
	.byte	40                              // Abbrev [40] 0x137:0xd DW_TAG_GNU_call_site
	.word	.debug_info+1732                // DW_AT_abstract_origin
	.xword	.Ltmp443                        // DW_AT_low_pc
	.byte	40                              // Abbrev [40] 0x144:0xd DW_TAG_GNU_call_site
	.word	.debug_info+1732                // DW_AT_abstract_origin
	.xword	.Ltmp446                        // DW_AT_low_pc
	.byte	0                               // End Of Children Mark
	.byte	41                              // Abbrev [41] 0x152:0x1b DW_TAG_subprogram
	.word	.Linfo_string24                 // DW_AT_name
	.byte	6                               // DW_AT_decl_file
	.byte	43                              // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	365                             // DW_AT_type
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	42                              // Abbrev [42] 0x15d:0x5 DW_TAG_formal_parameter
	.word	.debug_info+122                 // DW_AT_type
	.byte	42                              // Abbrev [42] 0x162:0x5 DW_TAG_formal_parameter
	.word	.debug_info+226                 // DW_AT_type
	.byte	12                              // Abbrev [12] 0x167:0x5 DW_TAG_formal_parameter
	.word	372                             // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	6                               // Abbrev [6] 0x16d:0x7 DW_TAG_base_type
	.word	.Linfo_string25                 // DW_AT_name
	.byte	5                               // DW_AT_encoding
	.byte	8                               // DW_AT_byte_size
	.byte	2                               // Abbrev [2] 0x174:0x5 DW_TAG_pointer_type
	.word	377                             // DW_AT_type
	.byte	43                              // Abbrev [43] 0x179:0x5 DW_TAG_structure_type
	.word	.Linfo_string26                 // DW_AT_name
                                        // DW_AT_declaration
	.byte	44                              // Abbrev [44] 0x17e:0x11 DW_TAG_subprogram
	.word	.Linfo_string27                 // DW_AT_name
	.byte	6                               // DW_AT_decl_file
	.byte	46                              // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	.debug_info+264                 // DW_AT_type
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	12                              // Abbrev [12] 0x189:0x5 DW_TAG_formal_parameter
	.word	372                             // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	41                              // Abbrev [41] 0x18f:0x20 DW_TAG_subprogram
	.word	.Linfo_string28                 // DW_AT_name
	.byte	6                               // DW_AT_decl_file
	.byte	44                              // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	365                             // DW_AT_type
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	12                              // Abbrev [12] 0x19a:0x5 DW_TAG_formal_parameter
	.word	80                              // DW_AT_type
	.byte	42                              // Abbrev [42] 0x19f:0x5 DW_TAG_formal_parameter
	.word	.debug_info+226                 // DW_AT_type
	.byte	12                              // Abbrev [12] 0x1a4:0x5 DW_TAG_formal_parameter
	.word	73                              // DW_AT_type
	.byte	12                              // Abbrev [12] 0x1a9:0x5 DW_TAG_formal_parameter
	.word	372                             // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	36                              // Abbrev [36] 0x1af:0x11e DW_TAG_subprogram
	.xword	.Lfunc_begin18                  // DW_AT_low_pc
	.word	.Lfunc_end18-.Lfunc_begin18     // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	111
                                        // DW_AT_GNU_all_call_sites
	.word	.Linfo_string49                 // DW_AT_name
	.byte	3                               // DW_AT_decl_file
	.byte	89                              // DW_AT_decl_line
                                        // DW_AT_external
	.byte	37                              // Abbrev [37] 0x1c4:0xf DW_TAG_variable
	.byte	3                               // DW_AT_location
	.byte	145
	.ascii	"\220 "
	.word	.Linfo_string67                 // DW_AT_name
	.byte	3                               // DW_AT_decl_file
	.byte	92                              // DW_AT_decl_line
	.word	.debug_info+196                 // DW_AT_type
	.byte	21                              // Abbrev [21] 0x1d3:0xe DW_TAG_variable
	.byte	2                               // DW_AT_location
	.byte	145
	.byte	16
	.word	.Linfo_string3                  // DW_AT_name
	.byte	3                               // DW_AT_decl_file
	.byte	93                              // DW_AT_decl_line
	.word	953                             // DW_AT_type
	.byte	38                              // Abbrev [38] 0x1e1:0xf DW_TAG_variable
	.word	.Ldebug_loc90                   // DW_AT_location
	.word	.Linfo_string65                 // DW_AT_name
	.byte	3                               // DW_AT_decl_file
	.byte	92                              // DW_AT_decl_line
	.word	.debug_info+103                 // DW_AT_type
	.byte	15                              // Abbrev [15] 0x1f0:0xf DW_TAG_variable
	.word	.Ldebug_loc91                   // DW_AT_location
	.word	.Linfo_string66                 // DW_AT_name
	.byte	3                               // DW_AT_decl_file
	.byte	94                              // DW_AT_decl_line
	.word	973                             // DW_AT_type
	.byte	15                              // Abbrev [15] 0x1ff:0xf DW_TAG_variable
	.word	.Ldebug_loc92                   // DW_AT_location
	.word	.Linfo_string64                 // DW_AT_name
	.byte	3                               // DW_AT_decl_file
	.byte	95                              // DW_AT_decl_line
	.word	984                             // DW_AT_type
	.byte	15                              // Abbrev [15] 0x20e:0xf DW_TAG_variable
	.word	.Ldebug_loc93                   // DW_AT_location
	.word	.Linfo_string88                 // DW_AT_name
	.byte	3                               // DW_AT_decl_file
	.byte	94                              // DW_AT_decl_line
	.word	973                             // DW_AT_type
	.byte	38                              // Abbrev [38] 0x21d:0xf DW_TAG_variable
	.word	.Ldebug_loc94                   // DW_AT_location
	.word	.Linfo_string55                 // DW_AT_name
	.byte	3                               // DW_AT_decl_file
	.byte	91                              // DW_AT_decl_line
	.word	.debug_info+264                 // DW_AT_type
	.byte	39                              // Abbrev [39] 0x22c:0xf DW_TAG_label
	.word	.Linfo_string80                 // DW_AT_name
	.byte	3                               // DW_AT_decl_file
	.byte	136                             // DW_AT_decl_line
	.xword	.Ltmp489                        // DW_AT_low_pc
	.byte	39                              // Abbrev [39] 0x23b:0xf DW_TAG_label
	.word	.Linfo_string95                 // DW_AT_name
	.byte	3                               // DW_AT_decl_file
	.byte	138                             // DW_AT_decl_line
	.xword	.Ltmp490                        // DW_AT_low_pc
	.byte	19                              // Abbrev [19] 0x24a:0xd DW_TAG_GNU_call_site
	.word	338                             // DW_AT_abstract_origin
	.xword	.Ltmp453                        // DW_AT_low_pc
	.byte	19                              // Abbrev [19] 0x257:0xd DW_TAG_GNU_call_site
	.word	382                             // DW_AT_abstract_origin
	.xword	.Ltmp464                        // DW_AT_low_pc
	.byte	19                              // Abbrev [19] 0x264:0xd DW_TAG_GNU_call_site
	.word	399                             // DW_AT_abstract_origin
	.xword	.Ltmp465                        // DW_AT_low_pc
	.byte	19                              // Abbrev [19] 0x271:0xd DW_TAG_GNU_call_site
	.word	338                             // DW_AT_abstract_origin
	.xword	.Ltmp472                        // DW_AT_low_pc
	.byte	40                              // Abbrev [40] 0x27e:0xd DW_TAG_GNU_call_site
	.word	.debug_info+834                 // DW_AT_abstract_origin
	.xword	.Ltmp474                        // DW_AT_low_pc
	.byte	40                              // Abbrev [40] 0x28b:0xd DW_TAG_GNU_call_site
	.word	.debug_info+2389                // DW_AT_abstract_origin
	.xword	.Ltmp477                        // DW_AT_low_pc
	.byte	19                              // Abbrev [19] 0x298:0xd DW_TAG_GNU_call_site
	.word	717                             // DW_AT_abstract_origin
	.xword	.Ltmp486                        // DW_AT_low_pc
	.byte	19                              // Abbrev [19] 0x2a5:0xd DW_TAG_GNU_call_site
	.word	717                             // DW_AT_abstract_origin
	.xword	.Ltmp487                        // DW_AT_low_pc
	.byte	40                              // Abbrev [40] 0x2b2:0xd DW_TAG_GNU_call_site
	.word	.debug_info+1732                // DW_AT_abstract_origin
	.xword	.Ltmp492                        // DW_AT_low_pc
	.byte	40                              // Abbrev [40] 0x2bf:0xd DW_TAG_GNU_call_site
	.word	.debug_info+1732                // DW_AT_abstract_origin
	.xword	.Ltmp495                        // DW_AT_low_pc
	.byte	0                               // End Of Children Mark
	.byte	41                              // Abbrev [41] 0x2cd:0x1b DW_TAG_subprogram
	.word	.Linfo_string29                 // DW_AT_name
	.byte	6                               // DW_AT_decl_file
	.byte	45                              // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	365                             // DW_AT_type
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	12                              // Abbrev [12] 0x2d8:0x5 DW_TAG_formal_parameter
	.word	744                             // DW_AT_type
	.byte	42                              // Abbrev [42] 0x2dd:0x5 DW_TAG_formal_parameter
	.word	.debug_info+226                 // DW_AT_type
	.byte	12                              // Abbrev [12] 0x2e2:0x5 DW_TAG_formal_parameter
	.word	372                             // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	2                               // Abbrev [2] 0x2e8:0x5 DW_TAG_pointer_type
	.word	749                             // DW_AT_type
	.byte	45                              // Abbrev [45] 0x2ed:0x1 DW_TAG_const_type
	.byte	46                              // Abbrev [46] 0x2ee:0xb9 DW_TAG_subprogram
	.xword	.Lfunc_begin19                  // DW_AT_low_pc
	.word	.Lfunc_end19-.Lfunc_begin19     // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	111
                                        // DW_AT_GNU_all_call_sites
	.word	.Linfo_string50                 // DW_AT_name
	.byte	3                               // DW_AT_decl_file
	.byte	145                             // DW_AT_decl_line
	.word	.debug_info+264                 // DW_AT_type
                                        // DW_AT_external
	.byte	21                              // Abbrev [21] 0x307:0xe DW_TAG_variable
	.byte	2                               // DW_AT_location
	.byte	145
	.byte	8
	.word	.Linfo_string67                 // DW_AT_name
	.byte	3                               // DW_AT_decl_file
	.byte	147                             // DW_AT_decl_line
	.word	1088                            // DW_AT_type
	.byte	38                              // Abbrev [38] 0x315:0xf DW_TAG_variable
	.word	.Ldebug_loc95                   // DW_AT_location
	.word	.Linfo_string55                 // DW_AT_name
	.byte	3                               // DW_AT_decl_file
	.byte	148                             // DW_AT_decl_line
	.word	.debug_info+264                 // DW_AT_type
	.byte	19                              // Abbrev [19] 0x324:0xd DW_TAG_GNU_call_site
	.word	935                             // DW_AT_abstract_origin
	.xword	.Ltmp499                        // DW_AT_low_pc
	.byte	19                              // Abbrev [19] 0x331:0xd DW_TAG_GNU_call_site
	.word	85                              // DW_AT_abstract_origin
	.xword	.Ltmp506                        // DW_AT_low_pc
	.byte	19                              // Abbrev [19] 0x33e:0xd DW_TAG_GNU_call_site
	.word	382                             // DW_AT_abstract_origin
	.xword	.Ltmp507                        // DW_AT_low_pc
	.byte	19                              // Abbrev [19] 0x34b:0xd DW_TAG_GNU_call_site
	.word	399                             // DW_AT_abstract_origin
	.xword	.Ltmp508                        // DW_AT_low_pc
	.byte	19                              // Abbrev [19] 0x358:0xd DW_TAG_GNU_call_site
	.word	431                             // DW_AT_abstract_origin
	.xword	.Ltmp512                        // DW_AT_low_pc
	.byte	19                              // Abbrev [19] 0x365:0xd DW_TAG_GNU_call_site
	.word	85                              // DW_AT_abstract_origin
	.xword	.Ltmp513                        // DW_AT_low_pc
	.byte	19                              // Abbrev [19] 0x372:0xd DW_TAG_GNU_call_site
	.word	382                             // DW_AT_abstract_origin
	.xword	.Ltmp514                        // DW_AT_low_pc
	.byte	19                              // Abbrev [19] 0x37f:0xd DW_TAG_GNU_call_site
	.word	399                             // DW_AT_abstract_origin
	.xword	.Ltmp515                        // DW_AT_low_pc
	.byte	19                              // Abbrev [19] 0x38c:0xd DW_TAG_GNU_call_site
	.word	106                             // DW_AT_abstract_origin
	.xword	.Ltmp519                        // DW_AT_low_pc
	.byte	19                              // Abbrev [19] 0x399:0xd DW_TAG_GNU_call_site
	.word	382                             // DW_AT_abstract_origin
	.xword	.Ltmp523                        // DW_AT_low_pc
	.byte	0                               // End Of Children Mark
	.byte	47                              // Abbrev [47] 0x3a7:0x12 DW_TAG_subprogram
	.word	.Linfo_string30                 // DW_AT_name
	.byte	6                               // DW_AT_decl_file
	.byte	47                              // DW_AT_decl_line
                                        // DW_AT_prototyped
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	12                              // Abbrev [12] 0x3ae:0x5 DW_TAG_formal_parameter
	.word	372                             // DW_AT_type
	.byte	42                              // Abbrev [42] 0x3b3:0x5 DW_TAG_formal_parameter
	.word	.debug_info+264                 // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	48                              // Abbrev [48] 0x3b9:0xd DW_TAG_array_type
	.word	.debug_info+108                 // DW_AT_type
	.byte	32                              // Abbrev [32] 0x3be:0x7 DW_TAG_subrange_type
	.word	966                             // DW_AT_type
	.hword	4096                            // DW_AT_count
	.byte	0                               // End Of Children Mark
	.byte	10                              // Abbrev [10] 0x3c6:0x7 DW_TAG_base_type
	.word	.Linfo_string11                 // DW_AT_name
	.byte	8                               // DW_AT_byte_size
	.byte	7                               // DW_AT_encoding
	.byte	49                              // Abbrev [49] 0x3cd:0xb DW_TAG_typedef
	.word	.debug_info+226                 // DW_AT_type
	.word	.Linfo_string14                 // DW_AT_name
	.byte	7                               // DW_AT_decl_file
	.byte	13                              // DW_AT_decl_line
	.byte	2                               // Abbrev [2] 0x3d8:0x5 DW_TAG_pointer_type
	.word	989                             // DW_AT_type
	.byte	3                               // Abbrev [3] 0x3dd:0xb DW_TAG_typedef
	.word	1000                            // DW_AT_type
	.word	.Linfo_string18                 // DW_AT_name
	.byte	1                               // DW_AT_decl_file
	.byte	45                              // DW_AT_decl_line
	.byte	4                               // Abbrev [4] 0x3e8:0x39 DW_TAG_structure_type
	.word	.Linfo_string17                 // DW_AT_name
	.byte	120                             // DW_AT_byte_size
	.byte	1                               // DW_AT_decl_file
	.byte	40                              // DW_AT_decl_line
	.byte	50                              // Abbrev [50] 0x3f0:0xc DW_TAG_member
	.word	.Linfo_string10                 // DW_AT_name
	.word	.debug_info+196                 // DW_AT_type
	.byte	1                               // DW_AT_decl_file
	.byte	41                              // DW_AT_decl_line
	.byte	0                               // DW_AT_data_member_location
	.byte	50                              // Abbrev [50] 0x3fc:0xc DW_TAG_member
	.word	.Linfo_string3                  // DW_AT_name
	.word	.debug_info+103                 // DW_AT_type
	.byte	1                               // DW_AT_decl_file
	.byte	42                              // DW_AT_decl_line
	.byte	96                              // DW_AT_data_member_location
	.byte	5                               // Abbrev [5] 0x408:0xc DW_TAG_member
	.word	.Linfo_string12                 // DW_AT_name
	.word	973                             // DW_AT_type
	.byte	1                               // DW_AT_decl_file
	.byte	43                              // DW_AT_decl_line
	.byte	104                             // DW_AT_data_member_location
	.byte	5                               // Abbrev [5] 0x414:0xc DW_TAG_member
	.word	.Linfo_string15                 // DW_AT_name
	.word	1057                            // DW_AT_type
	.byte	1                               // DW_AT_decl_file
	.byte	44                              // DW_AT_decl_line
	.byte	112                             // DW_AT_data_member_location
	.byte	0                               // End Of Children Mark
	.byte	2                               // Abbrev [2] 0x421:0x5 DW_TAG_pointer_type
	.word	1062                            // DW_AT_type
	.byte	51                              // Abbrev [51] 0x426:0x1a DW_TAG_subroutine_type
	.word	.debug_info+264                 // DW_AT_type
                                        // DW_AT_prototyped
	.byte	42                              // Abbrev [42] 0x42b:0x5 DW_TAG_formal_parameter
	.word	.debug_info+103                 // DW_AT_type
	.byte	42                              // Abbrev [42] 0x430:0x5 DW_TAG_formal_parameter
	.word	.debug_info+103                 // DW_AT_type
	.byte	42                              // Abbrev [42] 0x435:0x5 DW_TAG_formal_parameter
	.word	.debug_info+103                 // DW_AT_type
	.byte	12                              // Abbrev [12] 0x43a:0x5 DW_TAG_formal_parameter
	.word	973                             // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	8                               // Abbrev [8] 0x440:0xc DW_TAG_array_type
	.word	73                              // DW_AT_type
	.byte	9                               // Abbrev [9] 0x445:0x6 DW_TAG_subrange_type
	.word	966                             // DW_AT_type
	.byte	8                               // DW_AT_count
	.byte	0                               // End Of Children Mark
	.byte	0                               // End Of Children Mark
.Ldebug_info_end1:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.xword	.Ltmp6-.Lfunc_begin0
	.xword	.Ltmp7-.Lfunc_begin0
	.xword	.Ltmp8-.Lfunc_begin0
	.xword	.Ltmp9-.Lfunc_begin0
	.xword	.Ltmp10-.Lfunc_begin0
	.xword	.Ltmp13-.Lfunc_begin0
	.xword	.Ltmp14-.Lfunc_begin0
	.xword	.Ltmp19-.Lfunc_begin0
	.xword	0
	.xword	0
.Ldebug_ranges1:
	.xword	.Ltmp26-.Lfunc_begin0
	.xword	.Ltmp27-.Lfunc_begin0
	.xword	.Ltmp28-.Lfunc_begin0
	.xword	.Ltmp29-.Lfunc_begin0
	.xword	.Ltmp30-.Lfunc_begin0
	.xword	.Ltmp34-.Lfunc_begin0
	.xword	.Ltmp35-.Lfunc_begin0
	.xword	.Ltmp40-.Lfunc_begin0
	.xword	0
	.xword	0
.Ldebug_ranges2:
	.xword	.Ltmp188-.Lfunc_begin0
	.xword	.Ltmp191-.Lfunc_begin0
	.xword	.Ltmp238-.Lfunc_begin0
	.xword	.Ltmp268-.Lfunc_begin0
	.xword	0
	.xword	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 10.0.0-4ubuntu1 " // string offset=0
.Linfo_string1:
	.asciz	"sc.c"                          // string offset=31
.Linfo_string2:
	.asciz	"/home/salman/DPP/data/KPRCA_00064/src" // string offset=36
.Linfo_string3:
	.asciz	"data"                          // string offset=74
.Linfo_string4:
	.asciz	"unsigned char"                 // string offset=79
.Linfo_string5:
	.asciz	"didx"                          // string offset=93
.Linfo_string6:
	.asciz	"unsigned int"                  // string offset=98
.Linfo_string7:
	.asciz	"bidx"                          // string offset=111
.Linfo_string8:
	.asciz	"bit_io"                        // string offset=116
.Linfo_string9:
	.asciz	"bio_t"                         // string offset=123
.Linfo_string10:
	.asciz	"order"                         // string offset=129
.Linfo_string11:
	.asciz	"__ARRAY_SIZE_TYPE__"           // string offset=135
.Linfo_string12:
	.asciz	"data_len"                      // string offset=155
.Linfo_string13:
	.asciz	"long unsigned int"             // string offset=164
.Linfo_string14:
	.asciz	"size_t"                        // string offset=182
.Linfo_string15:
	.asciz	"cmp"                           // string offset=189
.Linfo_string16:
	.asciz	"int"                           // string offset=193
.Linfo_string17:
	.asciz	"sc_obj"                        // string offset=197
.Linfo_string18:
	.asciz	"sc_obj_t"                      // string offset=204
.Linfo_string19:
	.asciz	"unsigned short"                // string offset=213
.Linfo_string20:
	.asciz	"main.c"                        // string offset=228
.Linfo_string21:
	.asciz	"secret"                        // string offset=235
.Linfo_string22:
	.asciz	"char"                          // string offset=242
.Linfo_string23:
	.asciz	"free"                          // string offset=247
.Linfo_string24:
	.asciz	"fread"                         // string offset=252
.Linfo_string25:
	.asciz	"long int"                      // string offset=258
.Linfo_string26:
	.asciz	"FILE"                          // string offset=267
.Linfo_string27:
	.asciz	"fflush"                        // string offset=272
.Linfo_string28:
	.asciz	"freaduntil"                    // string offset=279
.Linfo_string29:
	.asciz	"fwrite"                        // string offset=290
.Linfo_string30:
	.asciz	"fbuffered"                     // string offset=297
.Linfo_string31:
	.asciz	"bit_new"                       // string offset=307
.Linfo_string32:
	.asciz	"bit_read"                      // string offset=315
.Linfo_string33:
	.asciz	"bit_write"                     // string offset=324
.Linfo_string34:
	.asciz	"_find_char"                    // string offset=334
.Linfo_string35:
	.asciz	"_sc_compare"                   // string offset=345
.Linfo_string36:
	.asciz	"sc_new"                        // string offset=357
.Linfo_string37:
	.asciz	"sc_scompress"                  // string offset=364
.Linfo_string38:
	.asciz	"sc_bwt"                        // string offset=377
.Linfo_string39:
	.asciz	"sc_mtf"                        // string offset=384
.Linfo_string40:
	.asciz	"_rot_left"                     // string offset=391
.Linfo_string41:
	.asciz	"_sort"                         // string offset=401
.Linfo_string42:
	.asciz	"_msort"                        // string offset=407
.Linfo_string43:
	.asciz	"_merge"                        // string offset=414
.Linfo_string44:
	.asciz	"_gcd"                          // string offset=421
.Linfo_string45:
	.asciz	"sc_sdecompress"                // string offset=426
.Linfo_string46:
	.asciz	"sc_set_data"                   // string offset=441
.Linfo_string47:
	.asciz	"print_menu"                    // string offset=453
.Linfo_string48:
	.asciz	"handle_compress"               // string offset=464
.Linfo_string49:
	.asciz	"handle_decompress"             // string offset=480
.Linfo_string50:
	.asciz	"main"                          // string offset=498
.Linfo_string51:
	.asciz	"bio"                           // string offset=503
.Linfo_string52:
	.asciz	"n"                             // string offset=507
.Linfo_string53:
	.asciz	"b"                             // string offset=509
.Linfo_string54:
	.asciz	"ret"                           // string offset=511
.Linfo_string55:
	.asciz	"i"                             // string offset=515
.Linfo_string56:
	.asciz	"c"                             // string offset=517
.Linfo_string57:
	.asciz	"s"                             // string offset=519
.Linfo_string58:
	.asciz	"p"                             // string offset=521
.Linfo_string59:
	.asciz	"s1"                            // string offset=523
.Linfo_string60:
	.asciz	"s2"                            // string offset=526
.Linfo_string61:
	.asciz	"p1"                            // string offset=529
.Linfo_string62:
	.asciz	"p2"                            // string offset=532
.Linfo_string63:
	.asciz	"key"                           // string offset=535
.Linfo_string64:
	.asciz	"sc"                            // string offset=539
.Linfo_string65:
	.asciz	"out"                           // string offset=542
.Linfo_string66:
	.asciz	"outlen"                        // string offset=546
.Linfo_string67:
	.asciz	"buf"                           // string offset=553
.Linfo_string68:
	.asciz	"old_len"                       // string offset=557
.Linfo_string69:
	.asciz	"old"                           // string offset=565
.Linfo_string70:
	.asciz	"block"                         // string offset=569
.Linfo_string71:
	.asciz	"op"                            // string offset=575
.Linfo_string72:
	.asciz	"size"                          // string offset=578
.Linfo_string73:
	.asciz	"to_copy"                       // string offset=583
.Linfo_string74:
	.asciz	"num_blocks"                    // string offset=591
.Linfo_string75:
	.asciz	"rot_table"                     // string offset=602
.Linfo_string76:
	.asciz	"oidx"                          // string offset=612
.Linfo_string77:
	.asciz	"j"                             // string offset=617
.Linfo_string78:
	.asciz	"k"                             // string offset=619
.Linfo_string79:
	.asciz	"tmp"                           // string offset=621
.Linfo_string80:
	.asciz	"fail"                          // string offset=625
.Linfo_string81:
	.asciz	"cleanup"                       // string offset=630
.Linfo_string82:
	.asciz	"list"                          // string offset=638
.Linfo_string83:
	.asciz	"sz"                            // string offset=643
.Linfo_string84:
	.asciz	"out_c"                         // string offset=646
.Linfo_string85:
	.asciz	"out_d"                         // string offset=652
.Linfo_string86:
	.asciz	"rot"                           // string offset=658
.Linfo_string87:
	.asciz	"xs"                            // string offset=662
.Linfo_string88:
	.asciz	"len"                           // string offset=665
.Linfo_string89:
	.asciz	"ys"                            // string offset=669
.Linfo_string90:
	.asciz	"lo"                            // string offset=672
.Linfo_string91:
	.asciz	"hi"                            // string offset=675
.Linfo_string92:
	.asciz	"mid"                           // string offset=678
.Linfo_string93:
	.asciz	"a"                             // string offset=682
.Linfo_string94:
	.asciz	"l"                             // string offset=684
.Linfo_string95:
	.asciz	"done"                          // string offset=686
	.ident	"clang version 10.0.0-4ubuntu1 "
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
