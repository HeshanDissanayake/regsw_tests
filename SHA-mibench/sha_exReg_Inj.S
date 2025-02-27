	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_f2p2_d2p2_zicsr2p0"
	.file	"sha.c"
	.option	push
	.option	arch, +a, +m
	.globl	sha_init                        # -- Begin function sha_init
	.p2align	2
	.type	sha_init,@function
sha_init:                               # @sha_init
.Lsha_init$local:
	.type	.Lsha_init$local,@function
# %bb.0:
	lui	a1, 422994
	addiw	a1, a1, 769
	sd	a1, 0(a0)
	lui	a1, 240
	addiw	a1, a1, -805
	slli	a1, a1, 12
	addi	a1, a1, -1143
	sd	a1, 8(a0)
	lui	a1, 312791
	slli	a1, a1, 1
	addi	a1, a1, -770
	sd	a1, 16(a0)
	lui	a1, 66341
	addiw	a1, a1, 1142
	sd	a1, 24(a0)
	lui	a1, 401047
	slli	a1, a1, 1
	addi	a1, a1, 496
	sd	a1, 32(a0)
	sd	zero, 40(a0)
	sd	zero, 48(a0)
	ret
.Lfunc_end0:
	.size	sha_init, .Lfunc_end0-sha_init
	.size	.Lsha_init$local, .Lfunc_end0-sha_init
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m
	.globl	sha_update                      # -- Begin function sha_update
	.p2align	2
	.type	sha_update,@function
sha_update:                             # @sha_update
.Lsha_update$local:
	.type	.Lsha_update$local,@function
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	mv	s1, a0
	ld	a0, 40(a0)
	mv	s0, a1
	slli	a1, a2, 3
	not	a3, a0
	sltu	a3, a3, a1
	ld	a4, 48(s1)
	add	a0, a0, a1
	sd	a0, 40(s1)
	srli	a0, a2, 29
	add	a0, a4, a0
	add	a0, a0, a3
	sd	a0, 48(s1)
	li	a0, 64
	addi	s2, s1, 56
	blt	a2, a0, .LBB1_4
# %bb.1:
	addi	a0, a2, -64
	srliw	a1, a0, 6
	slli	a1, a1, 6
	andi	s3, a0, 63
	add	a1, a1, s0
	addi	s4, a1, 64
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	li	a2, 64
	mv	a0, s2
	mv	a1, s0
	call	memcpy
	lbu	a0, 3(s2)
	lbu	a1, 2(s2)
	lbu	a2, 1(s2)
	lbu	a3, 0(s2)
	sb	a0, 0(s2)
	sb	a1, 1(s2)
	sb	a2, 2(s2)
	sb	a3, 3(s2)
	lbu	a0, 67(s1)
	lbu	a1, 66(s1)
	lbu	a2, 65(s1)
	lbu	a3, 64(s1)
	sb	a0, 64(s1)
	sb	a1, 65(s1)
	sb	a2, 66(s1)
	sb	a3, 67(s1)
	lbu	a0, 75(s1)
	lbu	a1, 74(s1)
	lbu	a2, 73(s1)
	lbu	a3, 72(s1)
	sb	a0, 72(s1)
	sb	a1, 73(s1)
	sb	a2, 74(s1)
	sb	a3, 75(s1)
	lbu	a0, 83(s1)
	lbu	a1, 82(s1)
	lbu	a2, 81(s1)
	lbu	a3, 80(s1)
	sb	a0, 80(s1)
	sb	a1, 81(s1)
	sb	a2, 82(s1)
	sb	a3, 83(s1)
	lbu	a0, 91(s1)
	lbu	a1, 90(s1)
	lbu	a2, 89(s1)
	lbu	a3, 88(s1)
	sb	a0, 88(s1)
	sb	a1, 89(s1)
	sb	a2, 90(s1)
	sb	a3, 91(s1)
	lbu	a0, 99(s1)
	lbu	a1, 98(s1)
	lbu	a2, 97(s1)
	lbu	a3, 96(s1)
	sb	a0, 96(s1)
	sb	a1, 97(s1)
	sb	a2, 98(s1)
	sb	a3, 99(s1)
	lbu	a0, 107(s1)
	lbu	a1, 106(s1)
	lbu	a2, 105(s1)
	lbu	a3, 104(s1)
	sb	a0, 104(s1)
	sb	a1, 105(s1)
	sb	a2, 106(s1)
	sb	a3, 107(s1)
	lbu	a0, 115(s1)
	lbu	a1, 114(s1)
	lbu	a2, 113(s1)
	lbu	a3, 112(s1)
	sb	a0, 112(s1)
	sb	a1, 113(s1)
	sb	a2, 114(s1)
	sb	a3, 115(s1)
	mv	a0, s1
	call	sha_transform
	addi	s0, s0, 64
	bne	s0, s4, .LBB1_2
# %bb.3:
	mv	a2, s3
.LBB1_4:
	mv	a0, s2
	mv	a1, s0
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	tail	memcpy
.Lfunc_end1:
	.size	sha_update, .Lfunc_end1-sha_update
	.size	.Lsha_update$local, .Lfunc_end1-sha_update
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m
	.p2align	2                               # -- Begin function sha_transform
	.type	sha_transform,@function
sha_transform:                          # @sha_transform
# %bb.0:
	addi	sp, sp, -656
	sd	ra, 648(sp)                     # 8-byte Folded Spill
	sd	s0, 640(sp)                     # 8-byte Folded Spill
	mv	s0, a0
	addi	a1, a0, 56
	mv	a0, sp
	li	a2, 128
	call	memcpy
	addi	a1, sp, 128
	addi	a0, sp, 640
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	ld	a2, -24(a1)
	ld	a3, -64(a1)
	ld	a4, -112(a1)
	ld	a5, -128(a1)
	xor	a2, a3, a2
	xor	a4, a4, a5
	xor	a2, a2, a4
	sd	a2, 0(a1)
	addi	a1, a1, 8
	bne	a1, a0, .LBB2_1
# %bb.2:
	ld	a5, 0(s0)
	ld	a4, 8(s0)
	ld	a3, 16(s0)
	ld	a2, 24(s0)
	ld	a1, 32(s0)
	mv	t0, sp
	addi	t1, sp, 160
	lui	a6, 370728
	addiw	t2, a6, -1639
	mv	t4, a1
	regsw_c	x8, 0x0(x16)		# 100000100000000000000
	mv	x2, a2
	mv	a7, a3
	mv	x1, a4
	mv	a6, a5
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	mv	t3, a6
	mv	t6, a7
	regsw_c	x0, 0x75(x8)		# 010000000000001110101
	mv	t5, x2
	slli	a6, a6, 5
	srli	a7, t3, 27
	or	a6, a6, a7
	and	a7, t6, x1
	not	x2, x1
	and	x2, t5, x2
	regsw_c	x4, 0x42(x16)		# 100000010000001000010
	ld	x3, 0(t0)
	add	a6, a6, a7
	add	t4, x2, t4
	add	a6, a6, t4
	add	a6, a6, x3
	add	a6, a6, t2
	slli	a7, x1, 30
	regsw_c	x0, 0x120(x8)		# 010000000000100100000
	srli	t4, x1, 2
	addi	t0, t0, 8
	or	a7, a7, t4
	mv	t4, t5
	mv	x2, t6
	mv	x1, t3
	bne	t0, t1, .LBB2_3
# %bb.4:                                # %.preheader2
	addi	t0, sp, 320
	lui	t2, 454047
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	addiw	x2, t2, -1119
.LBB2_5:                                # =>This Inner Loop Header: Depth=1
	mv	t2, a6
	regsw_c	x0, 0x10(x16)		# 100000000000000010000
	mv	x1, a7
	mv	t4, t6
	slli	a6, a6, 5
	srli	a7, t2, 27
	or	a6, a6, a7
	xor	a7, x1, t3
	ld	t6, 0(t1)
	xor	a7, a7, t4
	add	a6, a6, a7
	add	a6, a6, t5
	add	a6, a6, t6
	regsw_c	x0, 0x2(x4)		# 001000000000000000010
	add	a6, a6, x2
	slli	a7, t3, 30
	srli	t3, t3, 2
	addi	t1, t1, 8
	or	a7, a7, t3
	mv	t5, t4
	mv	t6, x1
	mv	t3, t2
	bne	t1, t0, .LBB2_5
# %bb.6:                                # %.preheader1
	addi	t1, sp, 480
	lui	t3, 146543
	slli	t3, t3, 2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	addi	x2, t3, -804
.LBB2_7:                                # =>This Inner Loop Header: Depth=1
	mv	t3, a6
	mv	t6, a7
	regsw_c	x0, 0x86(x8)		# 010000000000010000110
	mv	t5, x1
	slli	a6, a6, 5
	srli	a7, t3, 27
	or	a6, a6, a7
	or	a7, x1, t6
	and	a7, a7, t2
	and	x1, x1, t6
	regsw_c	x16, 0x48(x16)		# 100001000000001001000
	ld	x3, 0(t0)
	or	a7, a7, x1
	add	a6, a6, t4
	add	a6, a6, a7
	add	a6, a6, x3
	add	a6, a6, x2
	slli	a7, t2, 30
	srli	t2, t2, 2
	addi	t0, t0, 8
	or	a7, a7, t2
	mv	t4, t5
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x1, t6
	mv	t2, t3
	bne	t0, t1, .LBB2_7
# %bb.8:                                # %.preheader
	lui	t0, 207243
	slli	t0, t0, 2
	addi	t0, t0, 470
.LBB2_9:                                # =>This Inner Loop Header: Depth=1
	regsw_c	x0, 0x80(x16)		# 100000000000010000000
	mv	x1, a6
	mv	t4, a7
	mv	t2, t6
	slli	a6, a6, 5
	srli	a7, x1, 27
	or	a6, a6, a7
	xor	a7, t4, t3
	ld	t6, 0(t1)
	xor	a7, a7, t2
	add	a6, a6, a7
	add	a6, a6, t5
	add	a6, a6, t6
	add	a6, a6, t0
	slli	a7, t3, 30
	srli	t3, t3, 2
	addi	t1, t1, 8
	or	a7, a7, t3
	mv	t5, t2
	mv	t6, t4
	regsw_c	x0, 0x80(x8)		# 010000000000010000000
	mv	t3, x1
	bne	t1, a0, .LBB2_9
# %bb.10:
	add	a5, a6, a5
	sd	a5, 0(s0)
	add	a4, x1, a4
	sd	a4, 8(s0)
	add	a3, a7, a3
	sd	a3, 16(s0)
	add	a2, t4, a2
	sd	a2, 24(s0)
	add	a1, t2, a1
	sd	a1, 32(s0)
	ld	ra, 648(sp)                     # 8-byte Folded Reload
	ld	s0, 640(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 656
	ret
.Lfunc_end2:
	.size	sha_transform, .Lfunc_end2-sha_transform
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m
	.globl	sha_final                       # -- Begin function sha_final
	.p2align	2
	.type	sha_final,@function
sha_final:                              # @sha_final
.Lsha_final$local:
	.type	.Lsha_final$local,@function
# %bb.0:
	addi	sp, sp, -96
	sd	ra, 88(sp)                      # 8-byte Folded Spill
	sd	s0, 80(sp)                      # 8-byte Folded Spill
	sd	s1, 72(sp)                      # 8-byte Folded Spill
	sd	s2, 64(sp)                      # 8-byte Folded Spill
	sd	s3, 56(sp)                      # 8-byte Folded Spill
	sd	s4, 48(sp)                      # 8-byte Folded Spill
	sd	s5, 40(sp)                      # 8-byte Folded Spill
	sd	s6, 32(sp)                      # 8-byte Folded Spill
	sd	s7, 24(sp)                      # 8-byte Folded Spill
	sd	s8, 16(sp)                      # 8-byte Folded Spill
	sd	s9, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	s1, 40(a0)
	ld	s2, 48(a0)
	slli	a1, s1, 55
	srli	a1, a1, 58
	addi	s3, a0, 56
	add	a0, s3, a1
	li	a2, 128
	sb	a2, 0(a0)
	li	a2, 56
	addi	a0, a0, 1
	bltu	a1, a2, .LBB3_2
# %bb.1:
	xori	a2, a1, 63
	li	a1, 0
	call	memset
	lbu	a0, 3(s3)
	lbu	a1, 2(s3)
	lbu	a2, 1(s3)
	lbu	a3, 0(s3)
	sb	a0, 0(s3)
	sb	a1, 1(s3)
	sb	a2, 2(s3)
	sb	a3, 3(s3)
	addi	s4, s0, 64
	lbu	a0, 67(s0)
	lbu	a1, 66(s0)
	lbu	a2, 65(s0)
	lbu	a3, 64(s0)
	sb	a0, 64(s0)
	sb	a1, 65(s0)
	sb	a2, 66(s0)
	sb	a3, 67(s0)
	addi	s5, s0, 72
	lbu	a0, 75(s0)
	lbu	a1, 74(s0)
	lbu	a2, 73(s0)
	lbu	a3, 72(s0)
	sb	a0, 72(s0)
	sb	a1, 73(s0)
	sb	a2, 74(s0)
	sb	a3, 75(s0)
	addi	s6, s0, 80
	lbu	a0, 83(s0)
	lbu	a1, 82(s0)
	lbu	a2, 81(s0)
	lbu	a3, 80(s0)
	sb	a0, 80(s0)
	sb	a1, 81(s0)
	sb	a2, 82(s0)
	sb	a3, 83(s0)
	addi	s7, s0, 88
	lbu	a0, 91(s0)
	lbu	a1, 90(s0)
	lbu	a2, 89(s0)
	lbu	a3, 88(s0)
	sb	a0, 88(s0)
	sb	a1, 89(s0)
	sb	a2, 90(s0)
	sb	a3, 91(s0)
	addi	s8, s0, 96
	lbu	a0, 99(s0)
	lbu	a1, 98(s0)
	lbu	a2, 97(s0)
	lbu	a3, 96(s0)
	sb	a0, 96(s0)
	sb	a1, 97(s0)
	sb	a2, 98(s0)
	sb	a3, 99(s0)
	addi	s9, s0, 104
	lbu	a0, 107(s0)
	lbu	a1, 106(s0)
	lbu	a2, 105(s0)
	lbu	a3, 104(s0)
	sb	a0, 104(s0)
	sb	a1, 105(s0)
	sb	a2, 106(s0)
	sb	a3, 107(s0)
	lbu	a0, 115(s0)
	lbu	a1, 114(s0)
	lbu	a2, 113(s0)
	lbu	a3, 112(s0)
	sb	a0, 112(s0)
	sb	a1, 113(s0)
	sb	a2, 114(s0)
	sb	a3, 115(s0)
	mv	a0, s0
	call	sha_transform
	li	a3, 0
	li	a2, 0
	li	a1, 0
	li	a0, 0
	li	a7, 0
	li	a6, 0
	li	a5, 0
	li	a4, 0
	li	t3, 0
	li	t2, 0
	li	t1, 0
	li	t0, 0
	regsw_c	x0, 0x124(x16)		# 100000000000100100100
	li	x1, 0
	li	t6, 0
	li	t5, 0
	li	t4, 0
	li	x5, 0
	li	x4, 0
	li	x3, 0
	regsw_c	x9, 0x124(x18)		# 100100100100100100100
	li	x2, 0
	li	x9, 0
	li	x8, 0
	li	x7, 0
	li	x6, 0
	li	x13, 0
	li	x12, 0
	regsw_c	x0, 0x0(x18)		# 100100000000000000000
	li	x11, 0
	li	x10, 0
	sd	zero, 48(s3)
	sd	zero, 40(s3)
	sd	zero, 32(s3)
	sd	zero, 24(s3)
	sd	zero, 16(s3)
	sd	zero, 8(s3)
	sd	zero, 0(s3)
	j	.LBB3_3
.LBB3_2:
	li	a2, 55
	subw	a2, a2, a1
	slli	a2, a2, 32
	srli	a2, a2, 32
	li	a1, 0
	call	memset
	regsw_c	x9, 0x24(x18)		# 100100100100000100100
	lbu	x10, 0(s3)
	lbu	x11, 1(s3)
	lbu	x12, 2(s3)
	lbu	x13, 3(s3)
	addi	s4, s0, 64
	lbu	x6, 64(s0)
	lbu	x7, 65(s0)
	regsw_c	x1, 0x124(x18)		# 100100000100100100100
	lbu	x8, 66(s0)
	lbu	x9, 67(s0)
	addi	s5, s0, 72
	lbu	x2, 72(s0)
	lbu	x3, 73(s0)
	lbu	x4, 74(s0)
	lbu	x5, 75(s0)
	addi	s6, s0, 80
	lbu	t4, 80(s0)
	lbu	t5, 81(s0)
	lbu	t6, 82(s0)
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	lbu	x1, 83(s0)
	lbu	t0, 88(s0)
	lbu	t1, 89(s0)
	lbu	t2, 90(s0)
	lbu	t3, 91(s0)
	lbu	a4, 96(s0)
	lbu	a5, 97(s0)
	lbu	a6, 98(s0)
	lbu	a7, 99(s0)
	lbu	a0, 104(s0)
	lbu	a1, 105(s0)
	lbu	a2, 106(s0)
	lbu	a3, 107(s0)
	addi	s7, s0, 88
	addi	s8, s0, 96
	addi	s9, s0, 104
.LBB3_3:
	regsw_c	x18, 0x249(x4)		# 001001001001001001001
	sb	x13, 0(s3)
	sb	x12, 1(s3)
	sb	x11, 2(s3)
	sb	x10, 3(s3)
	sb	x9, 0(s4)
	sb	x8, 1(s4)
	sb	x7, 2(s4)
	regsw_c	x18, 0x248(x4)		# 001001001001001001000
	sb	x6, 3(s4)
	sb	x5, 0(s5)
	sb	x4, 1(s5)
	sb	x3, 2(s5)
	sb	x2, 3(s5)
	sb	x1, 0(s6)
	sb	t6, 1(s6)
	sb	t5, 2(s6)
	sb	t4, 3(s6)
	sb	t3, 0(s7)
	sb	t2, 1(s7)
	sb	t1, 2(s7)
	sb	t0, 3(s7)
	sb	a7, 0(s8)
	sb	a6, 1(s8)
	sb	a5, 2(s8)
	sb	a4, 3(s8)
	sb	a3, 0(s9)
	sb	a2, 1(s9)
	sb	a1, 2(s9)
	sb	a0, 3(s9)
	lbu	a0, 115(s0)
	lbu	a1, 114(s0)
	lbu	a2, 113(s0)
	lbu	a3, 112(s0)
	sb	a0, 112(s0)
	sb	a1, 113(s0)
	sb	a2, 114(s0)
	sb	a3, 115(s0)
	sd	s2, 168(s0)
	sd	s1, 176(s0)
	mv	a0, s0
	ld	ra, 88(sp)                      # 8-byte Folded Reload
	ld	s0, 80(sp)                      # 8-byte Folded Reload
	ld	s1, 72(sp)                      # 8-byte Folded Reload
	ld	s2, 64(sp)                      # 8-byte Folded Reload
	ld	s3, 56(sp)                      # 8-byte Folded Reload
	ld	s4, 48(sp)                      # 8-byte Folded Reload
	ld	s5, 40(sp)                      # 8-byte Folded Reload
	ld	s6, 32(sp)                      # 8-byte Folded Reload
	ld	s7, 24(sp)                      # 8-byte Folded Reload
	ld	s8, 16(sp)                      # 8-byte Folded Reload
	ld	s9, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 96
	tail	sha_transform
.Lfunc_end3:
	.size	sha_final, .Lfunc_end3-sha_final
	.size	.Lsha_final$local, .Lfunc_end3-sha_final
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m
	.globl	sha_stream                      # -- Begin function sha_stream
	.p2align	2
	.type	sha_stream,@function
sha_stream:                             # @sha_stream
.Lsha_stream$local:
	.type	.Lsha_stream$local,@function
# %bb.0:
	addi	sp, sp, -2032
	sd	ra, 2024(sp)                    # 8-byte Folded Spill
	sd	s0, 2016(sp)                    # 8-byte Folded Spill
	sd	s1, 2008(sp)                    # 8-byte Folded Spill
	lui	a2, 2
	addiw	a2, a2, -2000
	sub	sp, sp, a2
	mv	s1, a1
	mv	s0, a0
	lui	a0, 422994
	addiw	a0, a0, 769
	sd	a0, 0(s0)
	lui	a0, 240
	addiw	a0, a0, -805
	slli	a0, a0, 12
	addi	a0, a0, -1143
	sd	a0, 8(s0)
	lui	a0, 312791
	slli	a0, a0, 1
	addi	a0, a0, -770
	sd	a0, 16(s0)
	lui	a0, 66341
	addiw	a0, a0, 1142
	sd	a0, 24(s0)
	lui	a0, 401047
	slli	a0, a0, 1
	addi	a0, a0, 496
	sd	a0, 32(s0)
	sd	zero, 40(s0)
	sd	zero, 48(s0)
	addi	a0, sp, 8
	li	a1, 1
	lui	a2, 2
	mv	a3, s1
	call	fread
	sext.w	a1, a0
	blez	a1, .LBB4_2
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	sext.w	a2, a0
	addi	a1, sp, 8
	mv	a0, s0
	call	.Lsha_update$local
	addi	a0, sp, 8
	li	a1, 1
	lui	a2, 2
	mv	a3, s1
	call	fread
	sext.w	a0, a0
	bgtz	a0, .LBB4_1
.LBB4_2:
	mv	a0, s0
	lui	a1, 2
	addiw	a1, a1, -2000
	add	sp, sp, a1
	ld	ra, 2024(sp)                    # 8-byte Folded Reload
	ld	s0, 2016(sp)                    # 8-byte Folded Reload
	ld	s1, 2008(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 2032
	tail	.Lsha_final$local
.Lfunc_end4:
	.size	sha_stream, .Lfunc_end4-sha_stream
	.size	.Lsha_stream$local, .Lfunc_end4-sha_stream
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m
	.globl	sha_print                       # -- Begin function sha_print
	.p2align	2
	.type	sha_print,@function
sha_print:                              # @sha_print
.Lsha_print$local:
	.type	.Lsha_print$local,@function
# %bb.0:
	ld	a1, 0(a0)
	ld	a2, 8(a0)
	ld	a3, 16(a0)
	ld	a4, 24(a0)
	ld	a5, 32(a0)
.Lpcrel_hi0:
	auipc	a0, %pcrel_hi(.L.str)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi0)
	tail	printf
.Lfunc_end5:
	.size	sha_print, .Lfunc_end5-sha_print
	.size	.Lsha_print$local, .Lfunc_end5-sha_print
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m
	.globl	main                            # -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   # @main
.Lmain$local:
	.type	.Lmain$local,@function
# %bb.0:
	addi	sp, sp, -2032
	sd	ra, 2024(sp)                    # 8-byte Folded Spill
	sd	s0, 2016(sp)                    # 8-byte Folded Spill
	sd	s1, 2008(sp)                    # 8-byte Folded Spill
	sd	s2, 2000(sp)                    # 8-byte Folded Spill
	sd	s3, 1992(sp)                    # 8-byte Folded Spill
	sd	s4, 1984(sp)                    # 8-byte Folded Spill
	sd	s5, 1976(sp)                    # 8-byte Folded Spill
	sd	s6, 1968(sp)                    # 8-byte Folded Spill
	sd	s7, 1960(sp)                    # 8-byte Folded Spill
	sd	s8, 1952(sp)                    # 8-byte Folded Spill
	sd	s9, 1944(sp)                    # 8-byte Folded Spill
	sd	s10, 1936(sp)                   # 8-byte Folded Spill
	sd	s11, 1928(sp)                   # 8-byte Folded Spill
	lui	a2, 2
	addiw	a2, a2, -976
	sub	sp, sp, a2
	li	a2, 2
	bge	a0, a2, .LBB6_4
# %bb.1:
.Lpcrel_hi3:
	auipc	a0, %pcrel_hi(stdin)
	ld	s0, %pcrel_lo(.Lpcrel_hi3)(a0)
	lui	a0, 422994
	addiw	a0, a0, 769
	sd	a0, 128(sp)
	lui	a0, 240
	addiw	a0, a0, -805
	slli	a0, a0, 12
	addi	a0, a0, -1143
	sd	a0, 136(sp)
	lui	a0, 312791
	slli	a0, a0, 1
	addi	a0, a0, -770
	sd	a0, 144(sp)
	lui	a0, 66341
	addiw	a0, a0, 1142
	sd	a0, 152(sp)
	lui	a0, 401047
	slli	a0, a0, 1
	addi	a0, a0, 496
	sd	a0, 160(sp)
	sd	zero, 168(sp)
	sd	zero, 176(sp)
	addi	a0, sp, 312
	li	a1, 1
	lui	a2, 2
	mv	a3, s0
	call	fread
	sext.w	a1, a0
	blez	a1, .LBB6_3
.LBB6_2:                                # =>This Inner Loop Header: Depth=1
	sext.w	a2, a0
	addi	a0, sp, 128
	addi	a1, sp, 312
	call	.Lsha_update$local
	addi	a0, sp, 312
	li	a1, 1
	lui	a2, 2
	mv	a3, s0
	call	fread
	sext.w	a0, a0
	bgtz	a0, .LBB6_2
.LBB6_3:
	addi	a0, sp, 128
	call	.Lsha_final$local
	ld	a1, 128(sp)
	ld	a2, 136(sp)
	ld	a3, 144(sp)
	ld	a4, 152(sp)
	ld	a5, 160(sp)
.Lpcrel_hi4:
	auipc	a0, %pcrel_hi(.L.str)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi4)
	call	printf
	j	.LBB6_26
.LBB6_4:
	addi	a2, a0, -1
	lui	a0, 2
	addiw	a0, a0, 952
	add	s4, sp, a0
	lui	a0, 2
	addiw	a0, a0, 472
	add	s7, sp, a0
	lui	a0, 2
	addiw	a0, a0, 632
	add	s9, sp, a0
	lui	a0, 2
	addiw	a0, a0, 792
	add	s10, sp, a0
.Lpcrel_hi1:
	auipc	a0, %pcrel_hi(.L.str.1)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1)
	sd	a0, 64(sp)                      # 8-byte Folded Spill
.Lpcrel_hi2:
	auipc	a0, %pcrel_hi(.L.str.2)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi2)
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	lui	a0, 422994
	addiw	a0, a0, 769
	sd	a0, 56(sp)                      # 8-byte Folded Spill
	lui	a0, 240
	addiw	a0, a0, -805
	slli	a0, a0, 12
	addi	a0, a0, -1143
	sd	a0, 48(sp)                      # 8-byte Folded Spill
	lui	a0, 312791
	slli	a0, a0, 1
	addi	a0, a0, -770
	sd	a0, 40(sp)                      # 8-byte Folded Spill
	lui	a0, 66341
	addiw	a0, a0, 1142
	sd	a0, 32(sp)                      # 8-byte Folded Spill
	lui	a0, 401047
	slli	a0, a0, 1
	addi	a0, a0, 496
	sd	a0, 24(sp)                      # 8-byte Folded Spill
	li	s1, 64
	lui	a0, 370728
	addiw	s11, a0, -1639
	lui	a0, 454047
	addiw	s3, a0, -1119
	lui	a0, 146543
	slli	a0, a0, 2
	addi	s8, a0, -804
	lui	a0, 207243
	slli	a0, a0, 2
	addi	s2, a0, 470
	j	.LBB6_6
.LBB6_5:                                #   in Loop: Header=BB6_6 Depth=1
	addi	a0, sp, 128
	call	.Lsha_final$local
	ld	a1, 128(sp)
	ld	a2, 136(sp)
	ld	a3, 144(sp)
	ld	a4, 152(sp)
	ld	a5, 160(sp)
.Lpcrel_hi5:
	auipc	a0, %pcrel_hi(.L.str)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi5)
	call	printf
	mv	a0, s5
	call	fclose
	ld	a2, 72(sp)                      # 8-byte Folded Reload
	addiw	a2, a2, -1
	ld	a1, 80(sp)                      # 8-byte Folded Reload
	beqz	a2, .LBB6_26
.LBB6_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_11 Depth 2
                                        #       Child Loop BB6_13 Depth 3
                                        #         Child Loop BB6_14 Depth 4
                                        #         Child Loop BB6_16 Depth 4
                                        #         Child Loop BB6_18 Depth 4
                                        #         Child Loop BB6_20 Depth 4
                                        #         Child Loop BB6_22 Depth 4
	sd	a2, 72(sp)                      # 8-byte Folded Spill
	ld	a0, 8(a1)
	addi	s0, a1, 8
	ld	a1, 64(sp)                      # 8-byte Folded Reload
	call	fopen
	sd	s0, 80(sp)                      # 8-byte Folded Spill
	beqz	a0, .LBB6_25
# %bb.7:                                #   in Loop: Header=BB6_6 Depth=1
	mv	s5, a0
	ld	a0, 56(sp)                      # 8-byte Folded Reload
	sd	a0, 128(sp)
	ld	a0, 48(sp)                      # 8-byte Folded Reload
	sd	a0, 136(sp)
	ld	a0, 40(sp)                      # 8-byte Folded Reload
	sd	a0, 144(sp)
	ld	a0, 32(sp)                      # 8-byte Folded Reload
	sd	a0, 152(sp)
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	sd	a0, 160(sp)
	addi	a0, sp, 168
	sd	zero, 0(a0)
	sd	zero, 8(a0)
	addi	a0, sp, 312
	li	a1, 1
	lui	a2, 2
	mv	a3, s5
	call	fread
	sext.w	a1, a0
	blez	a1, .LBB6_5
# %bb.8:                                # %.preheader5
                                        #   in Loop: Header=BB6_6 Depth=1
	sd	s5, 88(sp)                      # 8-byte Folded Spill
	j	.LBB6_11
.LBB6_9:                                #   in Loop: Header=BB6_11 Depth=2
	addi	a1, sp, 312
	srli	a2, a2, 32
.LBB6_10:                               #   in Loop: Header=BB6_11 Depth=2
	addi	a0, sp, 184
	call	memcpy
	addi	a0, sp, 312
	li	a1, 1
	lui	a2, 2
	mv	a3, s5
	call	fread
	sext.w	a0, a0
	blez	a0, .LBB6_5
.LBB6_11:                               #   Parent Loop BB6_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_13 Depth 3
                                        #         Child Loop BB6_14 Depth 4
                                        #         Child Loop BB6_16 Depth 4
                                        #         Child Loop BB6_18 Depth 4
                                        #         Child Loop BB6_20 Depth 4
                                        #         Child Loop BB6_22 Depth 4
	ld	a6, 168(sp)
	slli	a2, a0, 32
	sext.w	a1, a0
	srli	a3, a2, 29
	not	a4, a6
	sltu	a4, a4, a3
	ld	a5, 176(sp)
	add	a3, a3, a6
	sd	a3, 168(sp)
	srliw	a3, a0, 29
	add	a3, a3, a5
	add	a3, a3, a4
	sd	a3, 176(sp)
	bltu	a1, s1, .LBB6_9
# %bb.12:                               #   in Loop: Header=BB6_11 Depth=2
	ld	t3, 128(sp)
	ld	s6, 136(sp)
	ld	s5, 144(sp)
	ld	s1, 152(sp)
	ld	t2, 160(sp)
	addi	a1, sp, 312
.LBB6_13:                               #   Parent Loop BB6_6 Depth=1
                                        #     Parent Loop BB6_11 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB6_14 Depth 4
                                        #         Child Loop BB6_16 Depth 4
                                        #         Child Loop BB6_18 Depth 4
                                        #         Child Loop BB6_20 Depth 4
                                        #         Child Loop BB6_22 Depth 4
	sd	t3, 96(sp)                      # 8-byte Folded Spill
	sd	t2, 104(sp)                     # 8-byte Folded Spill
	sd	a0, 120(sp)                     # 8-byte Folded Spill
	li	a2, 64
	addi	s0, sp, 184
	mv	a0, s0
	sd	a1, 112(sp)                     # 8-byte Folded Spill
	call	memcpy
	lbu	a0, 3(s0)
	lbu	a1, 2(s0)
	lbu	a2, 1(s0)
	lbu	a3, 0(s0)
	sb	a0, 0(s0)
	sb	a1, 1(s0)
	sb	a2, 2(s0)
	sb	a3, 3(s0)
	addi	a4, sp, 192
	lbu	a0, 3(a4)
	lbu	a1, 2(a4)
	lbu	a2, 1(a4)
	lbu	a3, 0(a4)
	sb	a0, 0(a4)
	sb	a1, 1(a4)
	sb	a2, 2(a4)
	sb	a3, 3(a4)
	addi	a4, sp, 200
	lbu	a0, 3(a4)
	lbu	a1, 2(a4)
	lbu	a2, 1(a4)
	lbu	a3, 0(a4)
	sb	a0, 0(a4)
	sb	a1, 1(a4)
	sb	a2, 2(a4)
	sb	a3, 3(a4)
	addi	a4, sp, 208
	lbu	a0, 3(a4)
	lbu	a1, 2(a4)
	lbu	a2, 1(a4)
	lbu	a3, 0(a4)
	sb	a0, 0(a4)
	sb	a1, 1(a4)
	sb	a2, 2(a4)
	sb	a3, 3(a4)
	addi	a4, sp, 216
	lbu	a0, 3(a4)
	lbu	a1, 2(a4)
	lbu	a2, 1(a4)
	lbu	a3, 0(a4)
	sb	a0, 0(a4)
	sb	a1, 1(a4)
	sb	a2, 2(a4)
	sb	a3, 3(a4)
	addi	a4, sp, 224
	lbu	a0, 3(a4)
	lbu	a1, 2(a4)
	lbu	a2, 1(a4)
	lbu	a3, 0(a4)
	sb	a0, 0(a4)
	sb	a1, 1(a4)
	sb	a2, 2(a4)
	sb	a3, 3(a4)
	addi	a4, sp, 232
	lbu	a0, 3(a4)
	lbu	a1, 2(a4)
	lbu	a2, 1(a4)
	lbu	a3, 0(a4)
	sb	a0, 0(a4)
	sb	a1, 1(a4)
	sb	a2, 2(a4)
	sb	a3, 3(a4)
	addi	a4, sp, 240
	lbu	a0, 3(a4)
	lbu	a1, 2(a4)
	lbu	a2, 1(a4)
	lbu	a3, 0(a4)
	sb	a0, 0(a4)
	sb	a1, 1(a4)
	sb	a2, 2(a4)
	sb	a3, 3(a4)
	lui	a0, 2
	addiw	a0, a0, 312
	add	a0, sp, a0
	li	a2, 128
	mv	a1, s0
	call	memcpy
	lui	a0, 2
	addiw	a0, a0, 440
	add	a0, sp, a0
.LBB6_14:                               #   Parent Loop BB6_6 Depth=1
                                        #     Parent Loop BB6_11 Depth=2
                                        #       Parent Loop BB6_13 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld	a1, -24(a0)
	ld	a2, -64(a0)
	ld	a3, -112(a0)
	ld	a4, -128(a0)
	xor	a1, a2, a1
	xor	a3, a3, a4
	xor	a1, a1, a3
	sd	a1, 0(a0)
	addi	a0, a0, 8
	bne	a0, s4, .LBB6_14
# %bb.15:                               # %.preheader4
                                        #   in Loop: Header=BB6_13 Depth=3
	lui	a0, 2
	addiw	a0, a0, 312
	add	a2, sp, a0
	ld	t2, 104(sp)                     # 8-byte Folded Reload
	mv	a4, t2
	mv	t0, s1
	mv	a1, s5
	mv	a7, s6
	ld	t3, 96(sp)                      # 8-byte Folded Reload
	mv	a0, t3
.LBB6_16:                               #   Parent Loop BB6_6 Depth=1
                                        #     Parent Loop BB6_11 Depth=2
                                        #       Parent Loop BB6_13 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	mv	a3, a0
	mv	a6, a1
	mv	a5, t0
	slli	a0, a0, 5
	srli	a1, a3, 27
	or	a0, a0, a1
	and	a1, a7, a6
	not	t0, a7
	and	t0, a5, t0
	ld	t1, 0(a2)
	add	a1, a4, a1
	add	a1, a1, t0
	add	a0, a1, a0
	add	a0, a0, t1
	add	a0, a0, s11
	slli	a1, a7, 30
	srli	a4, a7, 2
	addi	a2, a2, 8
	or	a1, a1, a4
	mv	a4, a5
	mv	t0, a6
	mv	a7, a3
	bne	a2, s7, .LBB6_16
# %bb.17:                               # %.preheader3
                                        #   in Loop: Header=BB6_13 Depth=3
	mv	t0, s7
.LBB6_18:                               #   Parent Loop BB6_6 Depth=1
                                        #     Parent Loop BB6_11 Depth=2
                                        #       Parent Loop BB6_13 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	mv	a2, a0
	mv	a7, a1
	mv	a4, a6
	slli	a0, a0, 5
	srli	a1, a2, 27
	or	a0, a0, a1
	xor	a1, a7, a6
	ld	a6, 0(t0)
	xor	a1, a1, a3
	add	a1, a5, a1
	add	a0, a1, a0
	add	a0, a0, a6
	add	a0, a0, s3
	slli	a1, a3, 30
	srli	a3, a3, 2
	addi	t0, t0, 8
	or	a1, a1, a3
	mv	a5, a4
	mv	a6, a7
	mv	a3, a2
	bne	t0, s9, .LBB6_18
# %bb.19:                               # %.preheader2
                                        #   in Loop: Header=BB6_13 Depth=3
	mv	t0, s9
.LBB6_20:                               #   Parent Loop BB6_6 Depth=1
                                        #     Parent Loop BB6_11 Depth=2
                                        #       Parent Loop BB6_13 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	mv	a3, a0
	mv	a6, a1
	mv	a5, a7
	slli	a0, a0, 5
	srli	a1, a3, 27
	or	a0, a0, a1
	or	a1, a6, a7
	and	a1, a1, a2
	ld	a7, 0(t0)
	and	t1, a6, a5
	or	a1, a1, t1
	add	a1, a4, a1
	add	a1, a1, a7
	add	a0, a0, s8
	add	a0, a1, a0
	slli	a1, a2, 30
	srli	a2, a2, 2
	addi	t0, t0, 8
	or	a1, a1, a2
	mv	a4, a5
	mv	a7, a6
	mv	a2, a3
	bne	t0, s10, .LBB6_20
# %bb.21:                               # %.preheader1
                                        #   in Loop: Header=BB6_13 Depth=3
	mv	a2, s10
.LBB6_22:                               #   Parent Loop BB6_6 Depth=1
                                        #     Parent Loop BB6_11 Depth=2
                                        #       Parent Loop BB6_13 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	mv	t0, a0
	mv	a7, a1
	mv	a4, a6
	slli	a0, a0, 5
	srli	a1, t0, 27
	or	a0, a0, a1
	xor	a1, a7, a6
	ld	a6, 0(a2)
	xor	a1, a1, a3
	add	a1, a5, a1
	add	a0, a1, a0
	add	a0, a0, a6
	add	a0, a0, s2
	slli	a1, a3, 30
	srli	a3, a3, 2
	addi	a2, a2, 8
	or	a1, a1, a3
	mv	a5, a4
	mv	a6, a7
	mv	a3, t0
	bne	a2, s4, .LBB6_22
# %bb.23:                               #   in Loop: Header=BB6_13 Depth=3
	add	t3, a0, t3
	add	s6, t0, s6
	add	s5, a1, s5
	add	s1, a7, s1
	add	t2, a4, t2
	ld	a1, 120(sp)                     # 8-byte Folded Reload
	addi	a3, a1, -64
	sext.w	a4, a1
	ld	a1, 112(sp)                     # 8-byte Folded Reload
	addi	a1, a1, 64
	mv	a0, a3
	li	a2, 127
	bltu	a2, a4, .LBB6_13
# %bb.24:                               #   in Loop: Header=BB6_11 Depth=2
	sd	t3, 128(sp)
	sd	s6, 136(sp)
	sd	s5, 144(sp)
	sd	s1, 152(sp)
	sd	t2, 160(sp)
	slli	a0, a3, 32
	srli	a2, a0, 32
	li	s1, 64
	ld	s5, 88(sp)                      # 8-byte Folded Reload
	j	.LBB6_10
.LBB6_25:                               #   in Loop: Header=BB6_6 Depth=1
	ld	a1, 0(s0)
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	call	printf
	ld	a2, 72(sp)                      # 8-byte Folded Reload
	addiw	a2, a2, -1
	ld	a1, 80(sp)                      # 8-byte Folded Reload
	bnez	a2, .LBB6_6
.LBB6_26:
	li	a0, 0
	lui	a1, 2
	addiw	a1, a1, -976
	add	sp, sp, a1
	ld	ra, 2024(sp)                    # 8-byte Folded Reload
	ld	s0, 2016(sp)                    # 8-byte Folded Reload
	ld	s1, 2008(sp)                    # 8-byte Folded Reload
	ld	s2, 2000(sp)                    # 8-byte Folded Reload
	ld	s3, 1992(sp)                    # 8-byte Folded Reload
	ld	s4, 1984(sp)                    # 8-byte Folded Reload
	ld	s5, 1976(sp)                    # 8-byte Folded Reload
	ld	s6, 1968(sp)                    # 8-byte Folded Reload
	ld	s7, 1960(sp)                    # 8-byte Folded Reload
	ld	s8, 1952(sp)                    # 8-byte Folded Reload
	ld	s9, 1944(sp)                    # 8-byte Folded Reload
	ld	s10, 1936(sp)                   # 8-byte Folded Reload
	ld	s11, 1928(sp)                   # 8-byte Folded Reload
	addi	sp, sp, 2032
	ret
.Lfunc_end6:
	.size	main, .Lfunc_end6-main
	.size	.Lmain$local, .Lfunc_end6-main
                                        # -- End function
	.option	pop
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%08lx %08lx %08lx %08lx %08lx\n"
	.size	.L.str, 31

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"rb"
	.size	.L.str.1, 3

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"error opening %s for reading\n"
	.size	.L.str.2, 30

	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
