	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"getbits.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	initbits                        # -- Begin function initbits
	.p2align	2
	.type	initbits,@function
initbits:                               # @initbits
# %bb.0:
	lui	a0, %hi(ld)
	ld	a0, %lo(ld)(a0)
	addi	a0, a0, 2047
	sd	zero, 33(a0)
	addi	a1, a0, 5
	sd	a1, 9(a0)
	ret
.Lfunc_end0:
	.size	initbits, .Lfunc_end0-initbits
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	fillbfr                         # -- Begin function fillbfr
	.p2align	2
	.type	fillbfr,@function
fillbfr:                                # @fillbfr
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	lui	s0, %hi(ld)
	ld	a2, %lo(ld)(s0)
	addi	a0, a2, 2047
	lw	a3, 25(a0)
	ld	a1, 9(a0)
	addi	a4, a0, 5
	sw	a3, 17(a0)
	bltu	a1, a4, .LBB1_5
# %bb.1:
	lw	a0, 0(a2)
	addi	a1, a2, 4
	li	a2, 1
	slli	a2, a2, 11
	call	read
	ld	a2, %lo(ld)(s0)
	addi	a1, a2, 4
	addi	a3, a2, 2047
	li	a4, 2047
	sd	a1, 9(a3)
	blt	a4, a0, .LBB1_5
# %bb.2:
	sgtz	a1, a0
	neg	a3, a1
	and	a3, a3, a0
	lui	a0, %hi(ld)
	li	a1, -4
	li	a2, 2045
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	ld	a4, %lo(ld)(a0)
	mv	a5, a3
	add	a4, a4, a3
	sb	zero, 4(a4)
	ld	a3, %lo(ld)(a0)
	add	a3, a3, a5
	sb	zero, 5(a3)
	ld	a4, %lo(ld)(a0)
	addi	a3, a5, 3
	add	a4, a4, a5
	sb	a1, 6(a4)
	bltu	a5, a2, .LBB1_3
# %bb.4:
	lui	a0, %hi(ld)
	ld	a2, %lo(ld)(a0)
	addi	a0, a2, 2047
	ld	a1, 9(a0)
.LBB1_5:
	lbu	a0, 0(a1)
	addi	a2, a2, 2047
	sb	a0, 21(a2)
	lbu	a0, 1(a1)
	sb	a0, 22(a2)
	lbu	a0, 2(a1)
	sb	a0, 23(a2)
	lbu	a0, 3(a1)
	sb	a0, 24(a2)
	lbu	a0, 4(a1)
	sb	a0, 25(a2)
	lbu	a0, 5(a1)
	sb	a0, 26(a2)
	lbu	a0, 6(a1)
	sb	a0, 27(a2)
	lbu	a0, 7(a1)
	lw	a3, 33(a2)
	sb	a0, 28(a2)
	addi	a1, a1, 8
	sd	a1, 9(a2)
	addi	a0, a3, 64
	sw	a0, 33(a2)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end1:
	.size	fillbfr, .Lfunc_end1-fillbfr
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	showbits                        # -- Begin function showbits
	.p2align	2
	.type	showbits,@function
showbits:                               # @showbits
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	lui	s1, %hi(ld)
	ld	a2, %lo(ld)(s1)
	addi	a1, a2, 2047
	lw	a1, 33(a1)
	mv	s0, a0
	bge	a1, a0, .LBB2_2
# %bb.1:
	call	fillbfr
	ld	a2, %lo(ld)(s1)
	addi	a0, a2, 2047
	lw	a1, 33(a0)
.LBB2_2:
	li	a0, 96
	subw	a0, a0, a1
	sraiw	a0, a0, 3
	add	a0, a2, a0
	addi	a0, a0, 2047
	lbu	a2, 17(a0)
	lbu	a3, 18(a0)
	slli	a2, a2, 24
	lbu	a4, 19(a0)
	lbu	a0, 20(a0)
	slli	a3, a3, 16
	or	a2, a3, a2
	slli	a4, a4, 8
	or	a0, a4, a0
	or	a0, a2, a0
	addi	a1, a1, -1
	andi	a1, a1, 7
	slli	a2, s0, 2
	lui	a3, %hi(msk)
	addi	a3, a3, %lo(msk)
	add	a2, a3, a2
	lw	a2, 0(a2)
	subw	a1, a1, s0
	addi	a1, a1, 25
	srlw	a0, a0, a1
	and	a0, a0, a2
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end2:
	.size	showbits, .Lfunc_end2-showbits
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	getbits1                        # -- Begin function getbits1
	.p2align	2
	.type	getbits1,@function
getbits1:                               # @getbits1
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	lui	s0, %hi(ld)
	ld	a1, %lo(ld)(s0)
	addi	a0, a1, 2047
	lw	a0, 33(a0)
	bgtz	a0, .LBB3_2
# %bb.1:
	call	fillbfr
	ld	a1, %lo(ld)(s0)
	addi	a0, a1, 2047
	lw	a0, 33(a0)
.LBB3_2:
	addi	a2, a1, 2047
	li	a3, 96
	subw	a3, a3, a0
	sraiw	a3, a3, 3
	add	a1, a1, a3
	addi	a1, a1, 2047
	lbu	s0, 17(a1)
	lw	a3, 37(a2)
	lbu	s4, 18(a1)
	lbu	s1, 19(a1)
	lbu	s2, 20(a1)
	addi	a3, a3, 1
	sw	a3, 37(a2)
	addi	s3, a0, -1
	sw	s3, 33(a2)
	bgtz	a0, .LBB3_4
# %bb.3:
	call	fillbfr
.LBB3_4:
	slli	s4, s4, 16
	slli	s0, s0, 24
	or	a0, s4, s0
	slli	s1, s1, 8
	or	a1, s1, s2
	or	a0, a0, a1
	ori	a1, s3, 24
	srlw	a0, a0, a1
	andi	a0, a0, 1
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end3:
	.size	getbits1, .Lfunc_end3-getbits1
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	getbits                         # -- Begin function getbits
	.p2align	2
	.type	getbits,@function
getbits:                                # @getbits
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	sd	s5, 8(sp)                       # 8-byte Folded Spill
	sd	s6, 0(sp)                       # 8-byte Folded Spill
	lui	s2, %hi(ld)
	ld	a1, %lo(ld)(s2)
	addi	a2, a1, 2047
	lw	s1, 33(a2)
	mv	s0, a0
	bge	s1, a0, .LBB4_2
# %bb.1:
	call	fillbfr
	ld	a1, %lo(ld)(s2)
	addi	a0, a1, 2047
	lw	s1, 33(a0)
.LBB4_2:
	addi	a0, a1, 2047
	li	a2, 96
	subw	a2, a2, s1
	sraiw	a2, a2, 3
	add	a1, a1, a2
	addi	a1, a1, 2047
	lbu	s2, 17(a1)
	lbu	s6, 18(a1)
	lbu	s3, 19(a1)
	lbu	s4, 20(a1)
	slli	a1, s0, 2
	lw	a2, 37(a0)
	lui	a3, %hi(msk)
	addi	a3, a3, %lo(msk)
	add	a1, a3, a1
	lw	s5, 0(a1)
	add	a2, a2, s0
	sw	a2, 37(a0)
	subw	a1, s1, s0
	sw	a1, 33(a0)
	bgez	a1, .LBB4_4
# %bb.3:
	call	fillbfr
.LBB4_4:
	slli	s6, s6, 16
	slli	s2, s2, 24
	or	a0, s6, s2
	slli	s3, s3, 8
	or	a1, s3, s4
	or	a0, a0, a1
	addi	s1, s1, -1
	andi	s1, s1, 7
	subw	s1, s1, s0
	addi	s1, s1, 25
	srlw	a0, a0, s1
	and	a0, a0, s5
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	ld	s6, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end4:
	.size	getbits, .Lfunc_end4-getbits
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	flushbits                       # -- Begin function flushbits
	.p2align	2
	.type	flushbits,@function
flushbits:                              # @flushbits
# %bb.0:
	lui	a1, %hi(ld)
	ld	a1, %lo(ld)(a1)
	addi	a1, a1, 2047
	lw	a2, 37(a1)
	lw	a3, 33(a1)
	add	a2, a2, a0
	sw	a2, 37(a1)
	subw	a3, a3, a0
	sw	a3, 33(a1)
	bltz	a3, .LBB5_2
# %bb.1:
	ret
.LBB5_2:
	tail	fillbfr
.Lfunc_end5:
	.size	flushbits, .Lfunc_end5-flushbits
                                        # -- End function
	.option	pop
	.type	msk,@object                     # @msk
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
msk:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	7                               # 0x7
	.word	15                              # 0xf
	.word	31                              # 0x1f
	.word	63                              # 0x3f
	.word	127                             # 0x7f
	.word	255                             # 0xff
	.word	511                             # 0x1ff
	.word	1023                            # 0x3ff
	.word	2047                            # 0x7ff
	.word	4095                            # 0xfff
	.word	8191                            # 0x1fff
	.word	16383                           # 0x3fff
	.word	32767                           # 0x7fff
	.word	65535                           # 0xffff
	.word	131071                          # 0x1ffff
	.word	262143                          # 0x3ffff
	.word	524287                          # 0x7ffff
	.word	1048575                         # 0xfffff
	.word	2097151                         # 0x1fffff
	.word	4194303                         # 0x3fffff
	.word	8388607                         # 0x7fffff
	.word	16777215                        # 0xffffff
	.word	33554431                        # 0x1ffffff
	.word	67108863                        # 0x3ffffff
	.word	134217727                       # 0x7ffffff
	.word	268435455                       # 0xfffffff
	.word	536870911                       # 0x1fffffff
	.word	1073741823                      # 0x3fffffff
	.word	2147483647                      # 0x7fffffff
	.word	4294967295                      # 0xffffffff
	.size	msk, 132

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
