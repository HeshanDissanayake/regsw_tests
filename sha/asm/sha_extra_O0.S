	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"sha.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	sha256_transform                # -- Begin function sha256_transform
	.p2align	2
	.type	sha256_transform,@function
sha256_transform:                       # @sha256_transform
.Lsha256_transform$local:
	.type	.Lsha256_transform$local,@function
# %bb.0:
	addi	sp, sp, -352
	sd	ra, 344(sp)                     # 8-byte Folded Spill
	sd	s0, 336(sp)                     # 8-byte Folded Spill
	addi	s0, sp, 352
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	li	a0, 0
	sw	a0, -68(s0)
	sw	a0, -72(s0)
	j	.LBB0_1
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lw	a1, -68(s0)
	li	a0, 15
	bltu	a0, a1, .LBB0_4
	j	.LBB0_2
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	ld	a1, -32(s0)
	lwu	a2, -72(s0)
	add	a0, a1, a2
	lbu	a0, 0(a0)
	slliw	a0, a0, 24
	addiw	a3, a2, 1
	slli	a3, a3, 32
	srli	a3, a3, 32
	add	a3, a1, a3
	lbu	a3, 0(a3)
	slliw	a3, a3, 16
	or	a0, a0, a3
	addiw	a3, a2, 2
	slli	a3, a3, 32
	srli	a3, a3, 32
	add	a3, a1, a3
	lbu	a3, 0(a3)
	slliw	a3, a3, 8
	or	a0, a0, a3
	addiw	a2, a2, 3
	slli	a2, a2, 32
	srli	a2, a2, 32
	add	a1, a1, a2
	lbu	a1, 0(a1)
	or	a0, a0, a1
	lwu	a1, -68(s0)
	slli	a2, a1, 2
	addi	a1, s0, -336
	add	a1, a1, a2
	sw	a0, 0(a1)
	j	.LBB0_3
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -68(s0)
	addiw	a0, a0, 1
	sw	a0, -68(s0)
	lw	a0, -72(s0)
	addiw	a0, a0, 4
	sw	a0, -72(s0)
	j	.LBB0_1
.LBB0_4:
	j	.LBB0_5
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	lw	a1, -68(s0)
	li	a0, 63
	bltu	a0, a1, .LBB0_8
	j	.LBB0_6
.LBB0_6:                                #   in Loop: Header=BB0_5 Depth=1
	lwu	a2, -68(s0)
	addiw	a0, a2, -2
	slli	a0, a0, 32
	srli	a0, a0, 30
	addi	a1, s0, -336
	add	a0, a1, a0
	lw	a3, 0(a0)
	srliw	a4, a3, 17
	slliw	a0, a3, 15
	or	a0, a0, a4
	srliw	a5, a3, 19
	slliw	a4, a3, 13
	or	a4, a4, a5
	xor	a0, a0, a4
	srliw	a3, a3, 10
	xor	a0, a0, a3
	addiw	a3, a2, -7
	slli	a3, a3, 32
	srli	a3, a3, 30
	add	a3, a1, a3
	lw	a3, 0(a3)
	addw	a0, a0, a3
	addiw	a3, a2, -15
	slli	a3, a3, 32
	srli	a3, a3, 30
	add	a3, a1, a3
	lw	a4, 0(a3)
	srliw	a5, a4, 7
	slliw	a3, a4, 25
	or	a3, a3, a5
	srliw	a6, a4, 18
	slliw	a5, a4, 14
	or	a5, a5, a6
	xor	a3, a3, a5
	srliw	a4, a4, 3
	xor	a3, a3, a4
	addw	a0, a0, a3
	addiw	a3, a2, -16
	slli	a3, a3, 32
	srli	a3, a3, 30
	add	a3, a1, a3
	lw	a3, 0(a3)
	addw	a0, a0, a3
	slli	a2, a2, 2
	add	a1, a1, a2
	sw	a0, 0(a1)
	j	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_5 Depth=1
	lw	a0, -68(s0)
	addiw	a0, a0, 1
	sw	a0, -68(s0)
	j	.LBB0_5
.LBB0_8:
	ld	a0, -24(s0)
	lw	a0, 80(a0)
	sw	a0, -36(s0)
	ld	a0, -24(s0)
	lw	a0, 84(a0)
	sw	a0, -40(s0)
	ld	a0, -24(s0)
	lw	a0, 88(a0)
	sw	a0, -44(s0)
	ld	a0, -24(s0)
	lw	a0, 92(a0)
	sw	a0, -48(s0)
	ld	a0, -24(s0)
	lw	a0, 96(a0)
	sw	a0, -52(s0)
	ld	a0, -24(s0)
	lw	a0, 100(a0)
	sw	a0, -56(s0)
	ld	a0, -24(s0)
	lw	a0, 104(a0)
	sw	a0, -60(s0)
	ld	a0, -24(s0)
	lw	a0, 108(a0)
	sw	a0, -64(s0)
	li	a0, 0
	sw	a0, -68(s0)
	j	.LBB0_9
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	lw	a1, -68(s0)
	li	a0, 63
	bltu	a0, a1, .LBB0_12
	j	.LBB0_10
.LBB0_10:                               #   in Loop: Header=BB0_9 Depth=1
	lw	a0, -64(s0)
	lw	a2, -52(s0)
	sd	a2, -352(s0)                    # 8-byte Folded Spill
	srliw	a3, a2, 6
	slliw	a1, a2, 26
	or	a1, a1, a3
	srliw	a4, a2, 11
	slliw	a3, a2, 21
	or	a3, a3, a4
	xor	a1, a1, a3
	srliw	a4, a2, 25
	slliw	a3, a2, 7
	or	a3, a3, a4
	xor	a1, a1, a3
	addw	a0, a0, a1
	lw	a1, -56(s0)
	and	a1, a2, a1
	not	a2, a2
	lw	a3, -60(s0)
	and	a2, a2, a3
	or	a1, a1, a2
	addw	a0, a0, a1
	lwu	a1, -68(s0)
	slli	a2, a1, 2
.Lpcrel_hi0:
	auipc	a1, %pcrel_hi(k)
	addi	a1, a1, %pcrel_lo(.Lpcrel_hi0)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addw	a0, a0, a1
	addi	a1, s0, -336
	add	a1, a1, a2
	lw	a1, 0(a1)
	addw	a0, a0, a1
	sw	a0, -76(s0)
	lw	a4, -36(s0)
	sd	a4, -344(s0)                    # 8-byte Folded Spill
	srliw	a1, a4, 2
	slliw	a0, a4, 30
	or	a0, a0, a1
	srliw	a2, a4, 13
	slliw	a1, a4, 19
	or	a1, a1, a2
	xor	a0, a0, a1
	srliw	a2, a4, 22
	slliw	a1, a4, 10
	or	a1, a1, a2
	xor	a0, a0, a1
	lw	a2, -40(s0)
	and	a1, a4, a2
	lw	a3, -44(s0)
	and	a4, a4, a3
	xor	a1, a1, a4
	and	a2, a2, a3
	xor	a1, a1, a2
	addw	a0, a0, a1
	sw	a0, -80(s0)
	lw	a0, -60(s0)
	sw	a0, -64(s0)
	lw	a0, -56(s0)
	sw	a0, -60(s0)
	lw	a0, -52(s0)
	sw	a0, -56(s0)
	lw	a0, -48(s0)
	lw	a1, -76(s0)
	addw	a0, a0, a1
	sw	a0, -52(s0)
	lw	a0, -44(s0)
	sw	a0, -48(s0)
	lw	a0, -40(s0)
	sw	a0, -44(s0)
	lw	a0, -36(s0)
	sw	a0, -40(s0)
	lw	a0, -76(s0)
	lw	a1, -80(s0)
	addw	a0, a0, a1
	sw	a0, -36(s0)
	j	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	lw	a0, -68(s0)
	addiw	a0, a0, 1
	sw	a0, -68(s0)
	j	.LBB0_9
.LBB0_12:
	lw	a2, -36(s0)
	ld	a1, -24(s0)
	lw	a0, 80(a1)
	addw	a0, a0, a2
	sw	a0, 80(a1)
	lw	a2, -40(s0)
	ld	a1, -24(s0)
	lw	a0, 84(a1)
	addw	a0, a0, a2
	sw	a0, 84(a1)
	lw	a2, -44(s0)
	ld	a1, -24(s0)
	lw	a0, 88(a1)
	addw	a0, a0, a2
	sw	a0, 88(a1)
	lw	a2, -48(s0)
	ld	a1, -24(s0)
	lw	a0, 92(a1)
	addw	a0, a0, a2
	sw	a0, 92(a1)
	lw	a2, -52(s0)
	ld	a1, -24(s0)
	lw	a0, 96(a1)
	addw	a0, a0, a2
	sw	a0, 96(a1)
	lw	a2, -56(s0)
	ld	a1, -24(s0)
	lw	a0, 100(a1)
	addw	a0, a0, a2
	sw	a0, 100(a1)
	lw	a2, -60(s0)
	ld	a1, -24(s0)
	lw	a0, 104(a1)
	addw	a0, a0, a2
	sw	a0, 104(a1)
	lw	a2, -64(s0)
	ld	a1, -24(s0)
	lw	a0, 108(a1)
	addw	a0, a0, a2
	sw	a0, 108(a1)
	ld	ra, 344(sp)                     # 8-byte Folded Reload
	ld	s0, 336(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 352
	ret
.Lfunc_end0:
	.size	sha256_transform, .Lfunc_end0-sha256_transform
	.size	.Lsha256_transform$local, .Lfunc_end0-sha256_transform
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	sha256_init                     # -- Begin function sha256_init
	.p2align	2
	.type	sha256_init,@function
sha256_init:                            # @sha256_init
.Lsha256_init$local:
	.type	.Lsha256_init$local,@function
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
	sd	a0, -24(s0)
	ld	a1, -24(s0)
	li	a0, 0
	sw	a0, 64(a1)
	ld	a1, -24(s0)
	sd	a0, 72(a1)
	ld	a1, -24(s0)
	lui	a0, 434334
	addiw	a0, a0, 1639
	sw	a0, 80(a1)
	ld	a1, -24(s0)
	lui	a0, 767611
	addiw	a0, a0, -379
	sw	a0, 84(a1)
	ld	a1, -24(s0)
	lui	a0, 247535
	addiw	a0, a0, 882
	sw	a0, 88(a1)
	ld	a1, -24(s0)
	lui	a0, 677119
	addiw	a0, a0, 1338
	sw	a0, 92(a1)
	ld	a1, -24(s0)
	lui	a0, 332005
	addiw	a0, a0, 639
	sw	a0, 96(a1)
	ld	a1, -24(s0)
	lui	a0, 634967
	addiw	a0, a0, -1908
	sw	a0, 100(a1)
	ld	a1, -24(s0)
	lui	a0, 129086
	addiw	a0, a0, -1621
	sw	a0, 104(a1)
	ld	a1, -24(s0)
	lui	a0, 376333
	addiw	a0, a0, -743
	sw	a0, 108(a1)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end1:
	.size	sha256_init, .Lfunc_end1-sha256_init
	.size	.Lsha256_init$local, .Lfunc_end1-sha256_init
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	sha256_update                   # -- Begin function sha256_update
	.p2align	2
	.type	sha256_update,@function
sha256_update:                          # @sha256_update
.Lsha256_update$local:
	.type	.Lsha256_update$local,@function
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	li	a0, 0
	sw	a0, -44(s0)
	j	.LBB2_1
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	lwu	a0, -44(s0)
	ld	a1, -40(s0)
	bgeu	a0, a1, .LBB2_6
	j	.LBB2_2
.LBB2_2:                                #   in Loop: Header=BB2_1 Depth=1
	ld	a0, -32(s0)
	lwu	a1, -44(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	ld	a1, -24(s0)
	lwu	a2, 64(a1)
	add	a1, a1, a2
	sb	a0, 0(a1)
	ld	a1, -24(s0)
	lw	a0, 64(a1)
	addiw	a0, a0, 1
	sw	a0, 64(a1)
	ld	a0, -24(s0)
	lw	a0, 64(a0)
	li	a1, 64
	bne	a0, a1, .LBB2_4
	j	.LBB2_3
.LBB2_3:                                #   in Loop: Header=BB2_1 Depth=1
	ld	a1, -24(s0)
	mv	a0, a1
	call	.Lsha256_transform$local
	ld	a1, -24(s0)
	ld	a0, 72(a1)
	addi	a0, a0, 512
	sd	a0, 72(a1)
	ld	a1, -24(s0)
	li	a0, 0
	sw	a0, 64(a1)
	j	.LBB2_4
.LBB2_4:                                #   in Loop: Header=BB2_1 Depth=1
	j	.LBB2_5
.LBB2_5:                                #   in Loop: Header=BB2_1 Depth=1
	lw	a0, -44(s0)
	addiw	a0, a0, 1
	sw	a0, -44(s0)
	j	.LBB2_1
.LBB2_6:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end2:
	.size	sha256_update, .Lfunc_end2-sha256_update
	.size	.Lsha256_update$local, .Lfunc_end2-sha256_update
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	sha256_final                    # -- Begin function sha256_final
	.p2align	2
	.type	sha256_final,@function
sha256_final:                           # @sha256_final
.Lsha256_final$local:
	.type	.Lsha256_final$local,@function
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	ld	a0, -24(s0)
	lw	a0, 64(a0)
	sw	a0, -36(s0)
	ld	a0, -24(s0)
	lw	a1, 64(a0)
	li	a0, 55
	bltu	a0, a1, .LBB3_5
	j	.LBB3_1
.LBB3_1:
	ld	a0, -24(s0)
	lwu	a1, -36(s0)
	addiw	a2, a1, 1
	sw	a2, -36(s0)
	add	a1, a0, a1
	li	a0, 128
	sb	a0, 0(a1)
	j	.LBB3_2
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	lw	a1, -36(s0)
	li	a0, 55
	bltu	a0, a1, .LBB3_4
	j	.LBB3_3
.LBB3_3:                                #   in Loop: Header=BB3_2 Depth=1
	ld	a0, -24(s0)
	lwu	a1, -36(s0)
	addiw	a2, a1, 1
	sw	a2, -36(s0)
	add	a1, a0, a1
	li	a0, 0
	sb	a0, 0(a1)
	j	.LBB3_2
.LBB3_4:
	j	.LBB3_9
.LBB3_5:
	ld	a0, -24(s0)
	lwu	a1, -36(s0)
	addiw	a2, a1, 1
	sw	a2, -36(s0)
	add	a1, a0, a1
	li	a0, 128
	sb	a0, 0(a1)
	j	.LBB3_6
.LBB3_6:                                # =>This Inner Loop Header: Depth=1
	lw	a1, -36(s0)
	li	a0, 63
	bltu	a0, a1, .LBB3_8
	j	.LBB3_7
.LBB3_7:                                #   in Loop: Header=BB3_6 Depth=1
	ld	a0, -24(s0)
	lwu	a1, -36(s0)
	addiw	a2, a1, 1
	sw	a2, -36(s0)
	add	a1, a0, a1
	li	a0, 0
	sb	a0, 0(a1)
	j	.LBB3_6
.LBB3_8:
	ld	a1, -24(s0)
	mv	a0, a1
	call	.Lsha256_transform$local
	ld	a1, -24(s0)
	li	a0, 0
	sd	a0, 48(a1)
	sd	a0, 40(a1)
	sd	a0, 32(a1)
	sd	a0, 24(a1)
	sd	a0, 16(a1)
	sd	a0, 8(a1)
	sd	a0, 0(a1)
	j	.LBB3_9
.LBB3_9:
	ld	a1, -24(s0)
	lw	a0, 64(a1)
	slli	a0, a0, 35
	srli	a2, a0, 32
	ld	a0, 72(a1)
	add	a0, a0, a2
	sd	a0, 72(a1)
	ld	a1, -24(s0)
	ld	a0, 72(a1)
	sb	a0, 63(a1)
	ld	a1, -24(s0)
	ld	a0, 72(a1)
	srli	a0, a0, 8
	sb	a0, 62(a1)
	ld	a1, -24(s0)
	ld	a0, 72(a1)
	srli	a0, a0, 16
	sb	a0, 61(a1)
	ld	a1, -24(s0)
	ld	a0, 72(a1)
	srli	a0, a0, 24
	sb	a0, 60(a1)
	ld	a1, -24(s0)
	lwu	a0, 76(a1)
	sb	a0, 59(a1)
	ld	a1, -24(s0)
	ld	a0, 72(a1)
	srli	a0, a0, 40
	sb	a0, 58(a1)
	ld	a1, -24(s0)
	lhu	a0, 78(a1)
	sb	a0, 57(a1)
	ld	a1, -24(s0)
	lbu	a0, 79(a1)
	sb	a0, 56(a1)
	ld	a1, -24(s0)
	mv	a0, a1
	call	.Lsha256_transform$local
	li	a0, 0
	sw	a0, -36(s0)
	j	.LBB3_10
.LBB3_10:                               # =>This Inner Loop Header: Depth=1
	lw	a1, -36(s0)
	li	a0, 3
	bltu	a0, a1, .LBB3_13
	j	.LBB3_11
.LBB3_11:                               #   in Loop: Header=BB3_10 Depth=1
	ld	a0, -24(s0)
	lw	a0, 80(a0)
	lwu	a3, -36(s0)
	slliw	a2, a3, 3
	li	a1, 24
	sd	a1, -48(s0)                     # 8-byte Folded Spill
	subw	a2, a1, a2
	srlw	a0, a0, a2
	ld	a2, -32(s0)
	add	a2, a2, a3
	sb	a0, 0(a2)
	ld	a0, -24(s0)
	lw	a0, 84(a0)
	lw	a3, -36(s0)
	slliw	a2, a3, 3
	subw	a2, a1, a2
	srlw	a0, a0, a2
	ld	a2, -32(s0)
	addiw	a3, a3, 4
	slli	a3, a3, 32
	srli	a3, a3, 32
	add	a2, a2, a3
	sb	a0, 0(a2)
	ld	a0, -24(s0)
	lw	a0, 88(a0)
	lw	a3, -36(s0)
	slliw	a2, a3, 3
	subw	a2, a1, a2
	srlw	a0, a0, a2
	ld	a2, -32(s0)
	addiw	a3, a3, 8
	slli	a3, a3, 32
	srli	a3, a3, 32
	add	a2, a2, a3
	sb	a0, 0(a2)
	ld	a0, -24(s0)
	lw	a0, 92(a0)
	lw	a3, -36(s0)
	slliw	a2, a3, 3
	subw	a2, a1, a2
	srlw	a0, a0, a2
	ld	a2, -32(s0)
	addiw	a3, a3, 12
	slli	a3, a3, 32
	srli	a3, a3, 32
	add	a2, a2, a3
	sb	a0, 0(a2)
	ld	a0, -24(s0)
	lw	a0, 96(a0)
	lw	a3, -36(s0)
	slliw	a2, a3, 3
	subw	a2, a1, a2
	srlw	a0, a0, a2
	ld	a2, -32(s0)
	addiw	a3, a3, 16
	slli	a3, a3, 32
	srli	a3, a3, 32
	add	a2, a2, a3
	sb	a0, 0(a2)
	ld	a0, -24(s0)
	lw	a0, 100(a0)
	lw	a3, -36(s0)
	slliw	a2, a3, 3
	subw	a2, a1, a2
	srlw	a0, a0, a2
	ld	a2, -32(s0)
	addiw	a3, a3, 20
	slli	a3, a3, 32
	srli	a3, a3, 32
	add	a2, a2, a3
	sb	a0, 0(a2)
	ld	a0, -24(s0)
	lw	a0, 104(a0)
	lw	a3, -36(s0)
	slliw	a2, a3, 3
	subw	a2, a1, a2
	srlw	a0, a0, a2
	ld	a2, -32(s0)
	addiw	a3, a3, 24
	slli	a3, a3, 32
	srli	a3, a3, 32
	add	a2, a2, a3
	sb	a0, 0(a2)
	ld	a0, -24(s0)
	lw	a0, 108(a0)
	lw	a2, -36(s0)
	slliw	a3, a2, 3
	subw	a1, a1, a3
	srlw	a0, a0, a1
	ld	a1, -32(s0)
	addiw	a2, a2, 28
	slli	a2, a2, 32
	srli	a2, a2, 32
	add	a1, a1, a2
	sb	a0, 0(a1)
	j	.LBB3_12
.LBB3_12:                               #   in Loop: Header=BB3_10 Depth=1
	lw	a0, -36(s0)
	addiw	a0, a0, 1
	sw	a0, -36(s0)
	j	.LBB3_10
.LBB3_13:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end3:
	.size	sha256_final, .Lfunc_end3-sha256_final
	.size	.Lsha256_final$local, .Lfunc_end3-sha256_final
                                        # -- End function
	.option	pop
	.type	k,@object                       # @k
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
k:
	.word	1116352408                      # 0x428a2f98
	.word	1899447441                      # 0x71374491
	.word	3049323471                      # 0xb5c0fbcf
	.word	3921009573                      # 0xe9b5dba5
	.word	961987163                       # 0x3956c25b
	.word	1508970993                      # 0x59f111f1
	.word	2453635748                      # 0x923f82a4
	.word	2870763221                      # 0xab1c5ed5
	.word	3624381080                      # 0xd807aa98
	.word	310598401                       # 0x12835b01
	.word	607225278                       # 0x243185be
	.word	1426881987                      # 0x550c7dc3
	.word	1925078388                      # 0x72be5d74
	.word	2162078206                      # 0x80deb1fe
	.word	2614888103                      # 0x9bdc06a7
	.word	3248222580                      # 0xc19bf174
	.word	3835390401                      # 0xe49b69c1
	.word	4022224774                      # 0xefbe4786
	.word	264347078                       # 0xfc19dc6
	.word	604807628                       # 0x240ca1cc
	.word	770255983                       # 0x2de92c6f
	.word	1249150122                      # 0x4a7484aa
	.word	1555081692                      # 0x5cb0a9dc
	.word	1996064986                      # 0x76f988da
	.word	2554220882                      # 0x983e5152
	.word	2821834349                      # 0xa831c66d
	.word	2952996808                      # 0xb00327c8
	.word	3210313671                      # 0xbf597fc7
	.word	3336571891                      # 0xc6e00bf3
	.word	3584528711                      # 0xd5a79147
	.word	113926993                       # 0x6ca6351
	.word	338241895                       # 0x14292967
	.word	666307205                       # 0x27b70a85
	.word	773529912                       # 0x2e1b2138
	.word	1294757372                      # 0x4d2c6dfc
	.word	1396182291                      # 0x53380d13
	.word	1695183700                      # 0x650a7354
	.word	1986661051                      # 0x766a0abb
	.word	2177026350                      # 0x81c2c92e
	.word	2456956037                      # 0x92722c85
	.word	2730485921                      # 0xa2bfe8a1
	.word	2820302411                      # 0xa81a664b
	.word	3259730800                      # 0xc24b8b70
	.word	3345764771                      # 0xc76c51a3
	.word	3516065817                      # 0xd192e819
	.word	3600352804                      # 0xd6990624
	.word	4094571909                      # 0xf40e3585
	.word	275423344                       # 0x106aa070
	.word	430227734                       # 0x19a4c116
	.word	506948616                       # 0x1e376c08
	.word	659060556                       # 0x2748774c
	.word	883997877                       # 0x34b0bcb5
	.word	958139571                       # 0x391c0cb3
	.word	1322822218                      # 0x4ed8aa4a
	.word	1537002063                      # 0x5b9cca4f
	.word	1747873779                      # 0x682e6ff3
	.word	1955562222                      # 0x748f82ee
	.word	2024104815                      # 0x78a5636f
	.word	2227730452                      # 0x84c87814
	.word	2361852424                      # 0x8cc70208
	.word	2428436474                      # 0x90befffa
	.word	2756734187                      # 0xa4506ceb
	.word	3204031479                      # 0xbef9a3f7
	.word	3329325298                      # 0xc67178f2
	.size	k, 256

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
