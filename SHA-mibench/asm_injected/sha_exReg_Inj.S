	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"sha.c"
	.option	push
	.option	arch, +a, +m, +zifencei
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
	addi	a3, a1, 496
	addi	a1, a0, 40
	li	a2, 144
	sd	a3, 32(a0)
	mv	a0, a1
	li	a1, 0
	tail	memset
.Lfunc_end0:
	.size	sha_init, .Lfunc_end0-sha_init
	.size	.Lsha_init$local, .Lfunc_end0-sha_init
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	sha_update                      # -- Begin function sha_update
	.p2align	2
	.type	sha_update,@function
sha_update:                             # @sha_update
.Lsha_update$local:
	.type	.Lsha_update$local,@function
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	a0, 40(a0)
	slli	a1, a2, 3
	not	a3, a0
	sltu	a3, a3, a1
	ld	a4, 48(s0)
	add	a0, a0, a1
	sd	a0, 40(s0)
	srli	a0, a2, 29
	add	a0, a4, a0
	add	a0, a0, a3
	li	a1, 128
	sd	a0, 48(s0)
	blt	a2, a1, .LBB1_3
# %bb.1:                                # %.preheader
	addi	s1, a2, 128
	li	s2, 255
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	mv	a0, s0
	call	sha_transform
	addiw	s1, s1, -128
	bltu	s2, s1, .LBB1_2
.LBB1_3:
	li	a0, 10
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	tail	putchar
.Lfunc_end1:
	.size	sha_update, .Lfunc_end1-sha_update
	.size	.Lsha_update$local, .Lfunc_end1-sha_update
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
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
	addi	a0, sp, 64
	addi	a1, sp, 576
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	ld	a2, 40(a0)
	ld	a3, 0(a0)
	ld	a4, -48(a0)
	ld	a5, -64(a0)
	xor	a2, a3, a2
	xor	a4, a4, a5
	xor	a2, a2, a4
	sd	a2, 64(a0)
	addi	a0, a0, 8
	bne	a0, a1, .LBB2_1
# %bb.2:
	ld	a4, 0(s0)
	ld	a3, 8(s0)
	ld	a2, 16(s0)
	ld	a1, 24(s0)
	ld	a0, 32(s0)
	mv	t0, sp
	addi	a7, sp, 160
	lui	a5, 370728
	addiw	t1, a5, -1639
	mv	t4, a0
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x1, a1
	mv	a6, a2
	mv	t6, a3
	mv	a5, a4
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	mv	t2, a5
	mv	t5, a6
	regsw_c	x0, 0x25(x8)		# 010000000000000100101
	mv	t3, x1
	slli	a5, a5, 5
	srli	a6, t2, 27
	or	a5, a5, a6
	and	a6, t5, t6
	not	x1, t6
	and	x1, t3, x1
	regsw_c	x0, 0x40(x17)		# 100010000000001000000
	ld	x2, 0(t0)
	or	a6, x1, a6
	add	a5, a5, t4
	add	a5, a5, a6
	add	a5, a5, x2
	add	a5, a5, t1
	slli	a6, t6, 30
	srli	t6, t6, 2
	addi	t0, t0, 8
	or	a6, a6, t6
	mv	t4, t3
	regsw_c	x0, 0x20(x16)		# 100000000000000100000
	mv	x1, t5
	mv	t6, t2
	bne	t0, a7, .LBB2_3
# %bb.4:                                # %.preheader2
	addi	t0, sp, 320
	lui	t1, 454047
	addiw	x1, t1, -1119
.LBB2_5:                                # =>This Inner Loop Header: Depth=1
	mv	t1, a5
	mv	t6, a6
	mv	t4, t5
	slli	a5, a5, 5
	srli	a6, t1, 27
	or	a5, a5, a6
	xor	a6, t6, t2
	ld	t5, 0(a7)
	xor	a6, a6, t4
	add	a5, a5, a6
	add	a5, a5, t3
	add	a5, a5, t5
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	add	a5, a5, x1
	slli	a6, t2, 30
	srli	t2, t2, 2
	addi	a7, a7, 8
	or	a6, a6, t2
	mv	t3, t4
	mv	t5, t6
	mv	t2, t1
	bne	a7, t0, .LBB2_5
# %bb.6:                                # %.preheader1
	addi	a7, sp, 480
	lui	t2, 146543
	slli	t2, t2, 2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	addi	x1, t2, -804
.LBB2_7:                                # =>This Inner Loop Header: Depth=1
	mv	t2, a5
	mv	t5, a6
	mv	t3, t6
	slli	a5, a5, 5
	srli	a6, t2, 27
	or	a5, a5, a6
	or	a6, t6, t5
	and	a6, a6, t1
	and	t6, t6, t5
	regsw_c	x0, 0x48(x16)		# 100000000000001001000
	ld	x2, 0(t0)
	or	a6, a6, t6
	add	a5, a5, t4
	add	a5, a5, a6
	add	a5, a5, x2
	add	a5, a5, x1
	slli	a6, t1, 30
	srli	t1, t1, 2
	addi	t0, t0, 8
	or	a6, a6, t1
	mv	t4, t3
	mv	t6, t5
	mv	t1, t2
	bne	t0, a7, .LBB2_7
# %bb.8:                                # %.preheader
	addi	t0, sp, 640
	lui	t1, 207243
	slli	t1, t1, 2
	addi	t1, t1, 470
.LBB2_9:                                # =>This Inner Loop Header: Depth=1
	regsw_c	x0, 0x80(x16)		# 100000000000010000000
	mv	x1, a5
	mv	t6, a6
	mv	t4, t5
	slli	a5, a5, 5
	srli	a6, x1, 27
	or	a5, a5, a6
	xor	a6, t6, t2
	ld	t5, 0(a7)
	xor	a6, a6, t4
	add	a5, a5, a6
	add	a5, a5, t3
	add	a5, a5, t5
	add	a5, a5, t1
	slli	a6, t2, 30
	srli	t2, t2, 2
	addi	a7, a7, 8
	or	a6, a6, t2
	mv	t3, t4
	mv	t5, t6
	regsw_c	x0, 0x80(x8)		# 010000000000010000000
	mv	t2, x1
	bne	a7, t0, .LBB2_9
# %bb.10:
	add	a4, a5, a4
	sd	a4, 0(s0)
	add	a3, x1, a3
	sd	a3, 8(s0)
	add	a2, a6, a2
	sd	a2, 16(s0)
	add	a1, t6, a1
	sd	a1, 24(s0)
	add	a0, t4, a0
	sd	a0, 32(s0)
	ld	ra, 648(sp)                     # 8-byte Folded Reload
	ld	s0, 640(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 656
	ret
.Lfunc_end2:
	.size	sha_transform, .Lfunc_end2-sha_transform
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	sha_final                       # -- Begin function sha_final
	.p2align	2
	.type	sha_final,@function
sha_final:                              # @sha_final
.Lsha_final$local:
	.type	.Lsha_final$local,@function
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
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
	mv	a0, s0
	call	sha_transform
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
	sub	a2, a2, a1
	li	a1, 0
	call	memset
.LBB3_3:
	sd	s2, 168(s0)
	sd	s1, 176(s0)
	mv	a0, s0
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	tail	sha_transform
.Lfunc_end3:
	.size	sha_final, .Lfunc_end3-sha_final
	.size	.Lsha_final$local, .Lfunc_end3-sha_final
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	sha_stream                      # -- Begin function sha_stream
	.p2align	2
	.type	sha_stream,@function
sha_stream:                             # @sha_stream
.Lsha_stream$local:
	.type	.Lsha_stream$local,@function
# %bb.0:
	addi	sp, sp, -816
	sd	ra, 808(sp)                     # 8-byte Folded Spill
	sd	s0, 800(sp)                     # 8-byte Folded Spill
	sd	s1, 792(sp)                     # 8-byte Folded Spill
	sd	s2, 784(sp)                     # 8-byte Folded Spill
	sd	s3, 776(sp)                     # 8-byte Folded Spill
	sd	s4, 768(sp)                     # 8-byte Folded Spill
	sd	s5, 760(sp)                     # 8-byte Folded Spill
	sd	s6, 752(sp)                     # 8-byte Folded Spill
	sd	s7, 744(sp)                     # 8-byte Folded Spill
	sd	s8, 736(sp)                     # 8-byte Folded Spill
	sd	s9, 728(sp)                     # 8-byte Folded Spill
	sd	s10, 720(sp)                    # 8-byte Folded Spill
	sd	s11, 712(sp)                    # 8-byte Folded Spill
	mv	s5, a0
	mv	a0, a1
	call	strlen
	mv	s2, a0
	sext.w	s4, a0
	lui	a0, 422994
	addiw	a0, a0, 769
	sd	a0, 0(s5)
	lui	a0, 240
	addiw	a0, a0, -805
	slli	a0, a0, 12
	addi	a0, a0, -1143
	sd	a0, 8(s5)
	lui	a0, 312791
	slli	a0, a0, 1
	addi	a0, a0, -770
	sd	a0, 16(s5)
	lui	a0, 66341
	addiw	a0, a0, 1142
	sd	a0, 24(s5)
	lui	a0, 401047
	slli	a0, a0, 1
	addi	a0, a0, 496
	sd	a0, 32(s5)
	addi	a0, s5, 40
	li	a2, 144
	li	a1, 0
	call	memset
	li	a1, 0
	blez	s4, .LBB4_21
# %bb.1:
	addi	a0, s5, 56
	sd	a0, 40(sp)                      # 8-byte Folded Spill
	addi	s6, sp, 648
	addi	s7, sp, 232
	addi	s8, sp, 392
	addi	s9, sp, 552
	addi	s10, sp, 712
	lui	a0, 370728
	addiw	s11, a0, -1639
	lui	a0, 454047
	addiw	s3, a0, -1119
	lui	a0, 146543
	slli	a0, a0, 2
	addi	s1, a0, -804
	lui	a0, 207243
	slli	a0, a0, 2
	addi	s0, a0, 470
	sd	s5, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	j	.LBB4_3
.LBB4_2:                                #   in Loop: Header=BB4_3 Depth=1
	li	a0, 10
	mv	s5, s4
	mv	s4, s2
	mv	s2, a5
	call	putchar
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	addw	a1, s2, a1
	mv	s2, s4
	mv	s4, s5
	ld	s5, 24(sp)                      # 8-byte Folded Reload
	bge	a1, s4, .LBB4_19
.LBB4_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_7 Depth 2
                                        #       Child Loop BB4_8 Depth 3
                                        #       Child Loop BB4_10 Depth 3
                                        #       Child Loop BB4_12 Depth 3
                                        #       Child Loop BB4_14 Depth 3
                                        #       Child Loop BB4_16 Depth 3
	sd	a1, 32(sp)                      # 8-byte Folded Spill
	subw	a0, s2, a1
	lui	a1, 2
	mv	a5, a0
	blt	a0, a1, .LBB4_5
# %bb.4:                                #   in Loop: Header=BB4_3 Depth=1
	lui	a5, 2
.LBB4_5:                                #   in Loop: Header=BB4_3 Depth=1
	ld	a1, 40(s5)
	slli	a2, a5, 3
	not	a3, a1
	sltu	a3, a3, a2
	ld	a4, 48(s5)
	add	a1, a1, a2
	sd	a1, 40(s5)
	srli	a1, a5, 29
	add	a1, a4, a1
	add	a1, a1, a3
	sd	a1, 48(s5)
	li	a1, 128
	blt	a0, a1, .LBB4_2
# %bb.6:                                #   in Loop: Header=BB4_3 Depth=1
	ld	t6, 0(s5)
	ld	t2, 8(s5)
	ld	s4, 16(s5)
	ld	t4, 24(s5)
	ld	s2, 32(s5)
	sd	a5, 16(sp)                      # 8-byte Folded Spill
	mv	a0, a5
.LBB4_7:                                #   Parent Loop BB4_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_8 Depth 3
                                        #       Child Loop BB4_10 Depth 3
                                        #       Child Loop BB4_12 Depth 3
                                        #       Child Loop BB4_14 Depth 3
                                        #       Child Loop BB4_16 Depth 3
	sd	t6, 56(sp)                      # 8-byte Folded Spill
	sd	t2, 64(sp)                      # 8-byte Folded Spill
	mv	s5, t4
	sd	a0, 48(sp)                      # 8-byte Folded Spill
	addi	a0, sp, 72
	li	a2, 128
	ld	a1, 40(sp)                      # 8-byte Folded Reload
	call	memcpy
	addi	a0, sp, 136
.LBB4_8:                                #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a1, 40(a0)
	ld	a2, 0(a0)
	ld	a3, -48(a0)
	ld	a4, -64(a0)
	xor	a1, a2, a1
	xor	a3, a3, a4
	xor	a1, a1, a3
	sd	a1, 64(a0)
	addi	a0, a0, 8
	bne	a0, s6, .LBB4_8
# %bb.9:                                # %.preheader3
                                        #   in Loop: Header=BB4_7 Depth=2
	addi	a3, sp, 72
	mv	a5, s2
	mv	t4, s5
	mv	t0, s5
	mv	a1, s4
	ld	t2, 64(sp)                      # 8-byte Folded Reload
	mv	a7, t2
	ld	t6, 56(sp)                      # 8-byte Folded Reload
	mv	a0, t6
.LBB4_10:                               #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	mv	a2, a0
	mv	a6, a1
	mv	a4, t0
	slli	a0, a0, 5
	srli	a1, a2, 27
	or	a0, a0, a1
	and	a1, a7, a6
	not	t0, a7
	ld	t1, 0(a3)
	and	t0, a4, t0
	or	a1, t0, a1
	add	a1, a5, a1
	add	a1, a1, t1
	add	a0, a0, s11
	add	a0, a1, a0
	slli	a1, a7, 30
	srli	a5, a7, 2
	addi	a3, a3, 8
	or	a1, a1, a5
	mv	a5, a4
	mv	t0, a6
	mv	a7, a2
	bne	a3, s7, .LBB4_10
# %bb.11:                               # %.preheader2
                                        #   in Loop: Header=BB4_7 Depth=2
	mv	t0, s7
.LBB4_12:                               #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	mv	a3, a0
	mv	a7, a1
	mv	a5, a6
	slli	a0, a0, 5
	srli	a1, a3, 27
	or	a0, a0, a1
	xor	a1, a7, a6
	ld	a6, 0(t0)
	xor	a1, a1, a2
	add	a1, a4, a1
	add	a0, a1, a0
	add	a0, a0, a6
	add	a0, a0, s3
	slli	a1, a2, 30
	srli	a2, a2, 2
	addi	t0, t0, 8
	or	a1, a1, a2
	mv	a4, a5
	mv	a6, a7
	mv	a2, a3
	bne	t0, s8, .LBB4_12
# %bb.13:                               # %.preheader1
                                        #   in Loop: Header=BB4_7 Depth=2
	mv	t0, s8
.LBB4_14:                               #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	mv	a2, a0
	mv	a6, a1
	mv	a4, a7
	slli	a0, a0, 5
	srli	a1, a2, 27
	or	a0, a0, a1
	or	a1, a6, a7
	and	a1, a1, a3
	ld	a7, 0(t0)
	and	t1, a6, a4
	or	a1, a1, t1
	add	a1, a5, a1
	add	a1, a1, a7
	add	a0, a0, s1
	add	a0, a1, a0
	slli	a1, a3, 30
	srli	a3, a3, 2
	addi	t0, t0, 8
	or	a1, a1, a3
	mv	a5, a4
	mv	a7, a6
	mv	a3, a2
	bne	t0, s9, .LBB4_14
# %bb.15:                               # %.preheader
                                        #   in Loop: Header=BB4_7 Depth=2
	mv	a3, s9
.LBB4_16:                               #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	mv	t0, a0
	mv	a7, a1
	mv	a5, a6
	slli	a0, a0, 5
	srli	a1, t0, 27
	or	a0, a0, a1
	xor	a1, a7, a6
	ld	a6, 0(a3)
	xor	a1, a1, a2
	add	a1, a4, a1
	add	a0, a1, a0
	add	a0, a0, a6
	add	a0, a0, s0
	slli	a1, a2, 30
	srli	a2, a2, 2
	addi	a3, a3, 8
	or	a1, a1, a2
	mv	a4, a5
	mv	a6, a7
	mv	a2, t0
	bne	a3, s10, .LBB4_16
# %bb.17:                               #   in Loop: Header=BB4_7 Depth=2
	add	t6, a0, t6
	add	t2, t0, t2
	add	s4, a1, s4
	add	t4, a7, t4
	add	s2, a5, s2
	ld	a2, 48(sp)                      # 8-byte Folded Reload
	addiw	a0, a2, -128
	li	a1, 255
	bltu	a1, a2, .LBB4_7
# %bb.18:                               #   in Loop: Header=BB4_3 Depth=1
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	sd	t6, 0(a0)
	sd	t2, 8(a0)
	sd	s4, 16(a0)
	sd	t4, 24(a0)
	sd	s2, 32(a0)
	ld	s2, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	ld	a5, 16(sp)                      # 8-byte Folded Reload
	j	.LBB4_2
.LBB4_19:
	ld	s0, 40(s5)
	ld	s1, 48(s5)
	slli	a1, s0, 55
	srli	a1, a1, 58
	ld	s2, 40(sp)                      # 8-byte Folded Reload
	add	a0, s2, a1
	li	a2, 128
	sb	a2, 0(a0)
	li	a2, 56
	addi	a0, a0, 1
	bltu	a1, a2, .LBB4_22
# %bb.20:
	xori	a2, a1, 63
	li	a1, 0
	call	memset
	mv	a0, s5
	call	sha_transform
	sd	zero, 48(s2)
	sd	zero, 40(s2)
	sd	zero, 32(s2)
	sd	zero, 24(s2)
	sd	zero, 16(s2)
	sd	zero, 8(s2)
	sd	zero, 0(s2)
	j	.LBB4_23
.LBB4_21:
	li	s0, 0
	li	s1, 0
	li	a0, 128
	sb	a0, 56(s5)
	addi	a0, s5, 57
.LBB4_22:
	li	a2, 55
	sub	a2, a2, a1
	li	a1, 0
	call	memset
.LBB4_23:
	sd	s1, 168(s5)
	sd	s0, 176(s5)
	mv	a0, s5
	ld	ra, 808(sp)                     # 8-byte Folded Reload
	ld	s0, 800(sp)                     # 8-byte Folded Reload
	ld	s1, 792(sp)                     # 8-byte Folded Reload
	ld	s2, 784(sp)                     # 8-byte Folded Reload
	ld	s3, 776(sp)                     # 8-byte Folded Reload
	ld	s4, 768(sp)                     # 8-byte Folded Reload
	ld	s5, 760(sp)                     # 8-byte Folded Reload
	ld	s6, 752(sp)                     # 8-byte Folded Reload
	ld	s7, 744(sp)                     # 8-byte Folded Reload
	ld	s8, 736(sp)                     # 8-byte Folded Reload
	ld	s9, 728(sp)                     # 8-byte Folded Reload
	ld	s10, 720(sp)                    # 8-byte Folded Reload
	ld	s11, 712(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 816
	tail	sha_transform
.Lfunc_end4:
	.size	sha_stream, .Lfunc_end4-sha_stream
	.size	.Lsha_stream$local, .Lfunc_end4-sha_stream
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
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
	auipc	a0, %pcrel_hi(.L.str.1)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi0)
	tail	printf
.Lfunc_end5:
	.size	sha_print, .Lfunc_end5-sha_print
	.size	.Lsha_print$local, .Lfunc_end5-sha_print
                                        # -- End function
	.option	pop
	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"%08lx %08lx %08lx %08lx %08lx\n"
	.size	.L.str.1, 31

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
