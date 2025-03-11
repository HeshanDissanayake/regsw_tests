	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0_zmmul1p0_zaamo1p0_zalrsc1p0"
	.file	"sha.c"
	.option	push
	.option	arch, +zifencei
	.text
	.globl	sha_init                        # -- Begin function sha_init
	.p2align	2
	.type	sha_init,@function
sha_init:                               # @sha_init
.Lsha_init$local:
	.type	.Lsha_init$local,@function
# %bb.0:
	lui	a2, 422994
	lui	a3, 240
	lui	a4, 312791
	lui	a5, 66341
	lui	a6, 401047
	addi	a1, a0, 40
	addiw	a2, a2, 769
	addiw	a3, a3, -805
	slli	a4, a4, 1
	addiw	a5, a5, 1142
	slli	a3, a3, 12
	addi	a4, a4, -770
	addi	a3, a3, -1143
	sd	a2, 0(a0)
	sd	a3, 8(a0)
	sd	a4, 16(a0)
	sd	a5, 24(a0)
	li	a2, 144
	slli	a6, a6, 1
	addi	a3, a6, 496
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
	.option	arch, +zifencei
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
	ld	a0, 48(a0)
	ld	a1, 40(s0)
	slli	a3, a2, 3
	srli	a4, a2, 29
	add	a0, a0, a4
	not	a4, a1
	add	a1, a1, a3
	sltu	a3, a4, a3
	li	a4, 128
	add	a0, a0, a3
	sd	a1, 40(s0)
	sd	a0, 48(s0)
	blt	a2, a4, .LBB1_3
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
	.option	arch, +zifencei
	.p2align	2                               # -- Begin function sha_transform
	.type	sha_transform,@function
sha_transform:                          # @sha_transform
# %bb.0:
	addi	sp, sp, -672
	sd	ra, 664(sp)                     # 8-byte Folded Spill
	sd	s0, 656(sp)                     # 8-byte Folded Spill
	sd	s1, 648(sp)                     # 8-byte Folded Spill
	mv	s0, a0
	addi	a1, a0, 56
	addi	a0, sp, 8
	li	a2, 128
	call	memcpy
	addi	a0, sp, 72
	addi	a1, sp, 584
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	ld	a2, -48(a0)
	ld	a3, 0(a0)
	ld	a4, 40(a0)
	ld	a5, -64(a0)
	xor	a3, a3, a4
	xor	a2, a2, a5
	xor	a2, a3, a2
	sd	a2, 64(a0)
	addi	a0, a0, 8
	bne	a0, a1, .LBB2_1
# %bb.2:
	ld	a4, 0(s0)
	ld	a3, 8(s0)
	ld	a2, 16(s0)
	ld	a1, 24(s0)
	ld	a0, 32(s0)
	addi	a6, sp, 8
	addi	a5, sp, 168
	lui	a7, 370728
	addiw	t2, a7, -1639
	mv	t4, a0
	mv	s1, a1
	mv	a7, a2
	mv	t6, a3
	mv	t0, a4
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	mv	t3, t0
	mv	t5, a7
	mv	t1, s1
	slli	a7, t0, 5
	srli	t0, t0, 27
	and	s1, t5, t6
	or	a7, a7, t0
	not	t0, t6
	and	t0, t1, t0
	or	t0, t0, s1
	ld	s1, 0(a6)
	add	a7, a7, t4
	slli	t4, t6, 30
	srli	t6, t6, 2
	addi	a6, a6, 8
	add	a7, a7, t0
	add	a7, a7, s1
	add	t0, a7, t2
	or	a7, t4, t6
	mv	t4, t1
	mv	s1, t5
	mv	t6, t3
	bne	a6, a5, .LBB2_3
# %bb.4:                                # %.preheader2
	addi	a6, sp, 328
	lui	t2, 454047
	addiw	s1, t2, -1119
.LBB2_5:                                # =>This Inner Loop Header: Depth=1
	mv	t2, t0
	mv	t6, a7
	mv	t4, t5
	slli	a7, t0, 5
	srli	t0, t0, 27
	xor	t5, t6, t3
	or	a7, a7, t0
	ld	t0, 0(a5)
	xor	t5, t5, t4
	add	a7, a7, t5
	slli	t5, t3, 30
	srli	t3, t3, 2
	addi	a5, a5, 8
	add	a7, a7, t1
	add	a7, a7, t0
	add	t0, a7, s1
	or	a7, t5, t3
	mv	t1, t4
	mv	t5, t6
	mv	t3, t2
	bne	a5, a6, .LBB2_5
# %bb.6:                                # %.preheader1
	addi	a5, sp, 488
	lui	t1, 146543
	slli	t1, t1, 2
	addi	s1, t1, -804
.LBB2_7:                                # =>This Inner Loop Header: Depth=1
	mv	t3, t0
	mv	t5, a7
	mv	t1, t6
	slli	a7, t0, 5
	srli	t0, t0, 27
	or	t6, t6, t5
	or	a7, a7, t0
	and	t0, t1, t5
	and	t6, t6, t2
	or	t0, t6, t0
	ld	t6, 0(a6)
	add	a7, a7, t4
	slli	t4, t2, 30
	srli	t2, t2, 2
	addi	a6, a6, 8
	add	a7, a7, t0
	add	a7, a7, t6
	add	t0, a7, s1
	or	a7, t4, t2
	mv	t4, t1
	mv	t6, t5
	mv	t2, t3
	bne	a6, a5, .LBB2_7
# %bb.8:                                # %.preheader
	addi	a6, sp, 648
	lui	t2, 207243
	slli	t2, t2, 2
	addi	t2, t2, 470
.LBB2_9:                                # =>This Inner Loop Header: Depth=1
	mv	s1, t0
	mv	t6, a7
	mv	t4, t5
	slli	a7, t0, 5
	srli	t0, t0, 27
	xor	t5, t6, t3
	or	a7, a7, t0
	ld	t0, 0(a5)
	xor	t5, t5, t4
	add	a7, a7, t5
	slli	t5, t3, 30
	srli	t3, t3, 2
	addi	a5, a5, 8
	add	a7, a7, t1
	add	a7, a7, t0
	add	t0, a7, t2
	or	a7, t5, t3
	mv	t1, t4
	mv	t5, t6
	mv	t3, s1
	bne	a5, a6, .LBB2_9
# %bb.10:
	add	a4, t0, a4
	add	a3, s1, a3
	add	a2, a7, a2
	add	a1, t6, a1
	add	a0, t4, a0
	sd	a4, 0(s0)
	sd	a3, 8(s0)
	sd	a2, 16(s0)
	sd	a1, 24(s0)
	sd	a0, 32(s0)
	ld	ra, 664(sp)                     # 8-byte Folded Reload
	ld	s0, 656(sp)                     # 8-byte Folded Reload
	ld	s1, 648(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 672
	ret
.Lfunc_end2:
	.size	sha_transform, .Lfunc_end2-sha_transform
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +zifencei
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
	addi	s3, a0, 56
	li	a0, 128
	slli	a1, s1, 55
	srli	a1, a1, 58
	add	a2, s3, a1
	sb	a0, 0(a2)
	li	a3, 56
	addi	a0, a2, 1
	bltu	a1, a3, .LBB3_2
# %bb.1:
	xori	a2, a1, 63
	li	a1, 0
	call	memset
	mv	a0, s0
	call	sha_transform
	sd	zero, 32(s3)
	sd	zero, 40(s3)
	sd	zero, 48(s3)
	sd	zero, 0(s3)
	sd	zero, 8(s3)
	sd	zero, 16(s3)
	sd	zero, 24(s3)
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
	.option	arch, +zifencei
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
	mv	s0, a0
	mv	a0, a1
	call	strlen
	sd	a0, 64(sp)                      # 8-byte Folded Spill
	sext.w	s1, a0
	lui	a0, 422994
	lui	a1, 240
	lui	a2, 312791
	lui	a3, 401047
	slli	a3, a3, 1
	addi	a3, a3, 496
	sd	a3, 32(s0)
	lui	a3, 66341
	addiw	a0, a0, 769
	addiw	a1, a1, -805
	slli	a2, a2, 1
	addiw	a3, a3, 1142
	slli	a1, a1, 12
	addi	a2, a2, -770
	addi	a1, a1, -1143
	sd	a0, 0(s0)
	sd	a1, 8(s0)
	sd	a2, 16(s0)
	sd	a3, 24(s0)
	addi	a0, s0, 40
	li	a2, 144
	li	a1, 0
	call	memset
	sd	s1, 56(sp)                      # 8-byte Folded Spill
	blez	s1, .LBB4_19
# %bb.1:
	li	s4, 0
	addi	a0, s0, 56
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	addi	s6, sp, 648
	addi	s7, sp, 232
	addi	s8, sp, 392
	addi	s9, sp, 552
	addi	s10, sp, 712
	li	a5, 128
	lui	a0, 370728
	lui	a1, 454047
	lui	a2, 146543
	lui	a3, 207243
	addiw	s5, a0, -1639
	addiw	s2, a1, -1119
	slli	a2, a2, 2
	slli	a3, a3, 2
	addi	s3, a2, -804
	addi	s1, a3, 470
	j	.LBB4_3
.LBB4_2:                                #   in Loop: Header=BB4_3 Depth=1
	li	a0, 10
	call	putchar
	addw	s4, s11, s4
	ld	a0, 56(sp)                      # 8-byte Folded Reload
	li	a5, 128
	bge	s4, a0, .LBB4_17
.LBB4_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_7 Depth 2
                                        #     Child Loop BB4_9 Depth 2
                                        #     Child Loop BB4_11 Depth 2
                                        #     Child Loop BB4_13 Depth 2
                                        #     Child Loop BB4_15 Depth 2
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	subw	a0, a0, s4
	mv	s11, a0
	blt	a0, a5, .LBB4_5
# %bb.4:                                #   in Loop: Header=BB4_3 Depth=1
	li	s11, 128
.LBB4_5:                                #   in Loop: Header=BB4_3 Depth=1
	ld	a1, 48(s0)
	ld	a2, 40(s0)
	slli	a3, s11, 3
	srli	a4, s11, 29
	add	a1, a1, a4
	not	a4, a2
	add	a2, a2, a3
	sltu	a3, a4, a3
	add	a1, a1, a3
	sd	a2, 40(s0)
	sd	a1, 48(s0)
	blt	a0, a5, .LBB4_2
# %bb.6:                                #   in Loop: Header=BB4_3 Depth=1
	sd	s11, 40(sp)                     # 8-byte Folded Spill
	ld	a0, 0(s0)
	sd	a0, 48(sp)                      # 8-byte Folded Spill
	ld	a0, 8(s0)
	sd	a0, 32(sp)                      # 8-byte Folded Spill
	ld	a0, 16(s0)
	sd	a0, 24(sp)                      # 8-byte Folded Spill
	ld	a0, 24(s0)
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	ld	s11, 32(s0)
	addi	a0, sp, 72
	li	a2, 128
	ld	a1, 8(sp)                       # 8-byte Folded Reload
	call	memcpy
	addi	a0, sp, 136
.LBB4_7:                                #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a1, -48(a0)
	ld	a2, 0(a0)
	ld	a3, 40(a0)
	ld	a4, -64(a0)
	xor	a2, a2, a3
	xor	a1, a1, a4
	xor	a1, a2, a1
	sd	a1, 64(a0)
	addi	a0, a0, 8
	bne	a0, s6, .LBB4_7
# %bb.8:                                # %.preheader3
                                        #   in Loop: Header=BB4_3 Depth=1
	addi	a2, sp, 72
	mv	t5, s11
	mv	a4, s11
	ld	t4, 16(sp)                      # 8-byte Folded Reload
	mv	t0, t4
	ld	t3, 24(sp)                      # 8-byte Folded Reload
	mv	a0, t3
	ld	t2, 32(sp)                      # 8-byte Folded Reload
	mv	a7, t2
	ld	t1, 48(sp)                      # 8-byte Folded Reload
	mv	a1, t1
.LBB4_9:                                #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mv	a3, a1
	mv	a6, a0
	mv	a5, t0
	slli	a0, a1, 5
	srli	a1, a1, 27
	and	t0, a7, a6
	or	a0, a0, a1
	not	a1, a7
	and	a1, a5, a1
	or	a1, a1, t0
	ld	t0, 0(a2)
	add	a1, a4, a1
	slli	a4, a7, 30
	srli	a7, a7, 2
	addi	a2, a2, 8
	add	a0, a0, s5
	add	a1, a1, t0
	add	a1, a1, a0
	or	a0, a4, a7
	mv	a4, a5
	mv	t0, a6
	mv	a7, a3
	bne	a2, s7, .LBB4_9
# %bb.10:                               # %.preheader2
                                        #   in Loop: Header=BB4_3 Depth=1
	mv	t0, s7
	ld	s11, 40(sp)                     # 8-byte Folded Reload
.LBB4_11:                               #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mv	a2, a1
	mv	a7, a0
	mv	a4, a6
	slli	a0, a1, 5
	srli	a1, a1, 27
	xor	a6, a7, a6
	or	a0, a0, a1
	ld	a1, 0(t0)
	xor	a6, a6, a3
	add	a5, a5, a6
	slli	a6, a3, 30
	srli	a3, a3, 2
	addi	t0, t0, 8
	add	a0, a5, a0
	add	a0, a0, a1
	add	a1, a0, s2
	or	a0, a6, a3
	mv	a5, a4
	mv	a6, a7
	mv	a3, a2
	bne	t0, s8, .LBB4_11
# %bb.12:                               # %.preheader1
                                        #   in Loop: Header=BB4_3 Depth=1
	mv	t0, s8
.LBB4_13:                               #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mv	a3, a1
	mv	a6, a0
	mv	a5, a7
	slli	a0, a1, 5
	srli	a1, a1, 27
	or	a7, a6, a7
	or	a0, a0, a1
	and	a1, a6, a5
	and	a7, a7, a2
	or	a1, a7, a1
	ld	a7, 0(t0)
	add	a1, a4, a1
	slli	a4, a2, 30
	srli	a2, a2, 2
	addi	t0, t0, 8
	add	a0, a0, s3
	add	a1, a1, a7
	add	a1, a1, a0
	or	a0, a4, a2
	mv	a4, a5
	mv	a7, a6
	mv	a2, a3
	bne	t0, s9, .LBB4_13
# %bb.14:                               # %.preheader
                                        #   in Loop: Header=BB4_3 Depth=1
	mv	a2, s9
.LBB4_15:                               #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mv	t0, a1
	mv	a7, a0
	mv	a4, a6
	slli	a0, a1, 5
	srli	a1, a1, 27
	xor	a6, a7, a6
	or	a0, a0, a1
	ld	a1, 0(a2)
	xor	a6, a6, a3
	add	a5, a5, a6
	slli	a6, a3, 30
	srli	a3, a3, 2
	addi	a2, a2, 8
	add	a0, a5, a0
	add	a0, a0, a1
	add	a1, a0, s1
	or	a0, a6, a3
	mv	a5, a4
	mv	a6, a7
	mv	a3, t0
	bne	a2, s10, .LBB4_15
# %bb.16:                               #   in Loop: Header=BB4_3 Depth=1
	add	a1, a1, t1
	add	t0, t0, t2
	add	a0, a0, t3
	add	a7, a7, t4
	add	a4, a4, t5
	sd	a1, 0(s0)
	sd	t0, 8(s0)
	sd	a0, 16(s0)
	sd	a7, 24(s0)
	sd	a4, 32(s0)
	j	.LBB4_2
.LBB4_17:
	ld	s1, 40(s0)
	ld	s2, 48(s0)
	li	a0, 128
	slli	a1, s1, 55
	srli	a1, a1, 58
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	add	a2, s3, a1
	sb	a0, 0(a2)
	li	a3, 56
	addi	a0, a2, 1
	bltu	a1, a3, .LBB4_20
# %bb.18:
	xori	a2, a1, 63
	li	a1, 0
	call	memset
	mv	a0, s0
	call	sha_transform
	sd	zero, 32(s3)
	sd	zero, 40(s3)
	sd	zero, 48(s3)
	sd	zero, 0(s3)
	sd	zero, 8(s3)
	sd	zero, 16(s3)
	sd	zero, 24(s3)
	j	.LBB4_21
.LBB4_19:
	li	a1, 0
	li	s1, 0
	li	s2, 0
	li	a0, 128
	sb	a0, 56(s0)
	addi	a0, s0, 57
.LBB4_20:
	li	a2, 55
	sub	a2, a2, a1
	li	a1, 0
	call	memset
.LBB4_21:
	sd	s2, 168(s0)
	sd	s1, 176(s0)
	mv	a0, s0
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
	.option	arch, +zifencei
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
