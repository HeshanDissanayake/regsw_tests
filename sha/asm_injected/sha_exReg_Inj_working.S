	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_f2p2_d2p2_zicsr2p0"
	.file	"sha.c"
	.globl	sha256_transform                # -- Begin function sha256_transform
	.p2align	2
	.type	sha256_transform,@function
sha256_transform:                       # @sha256_transform
.Lsha256_transform$local:
	.type	.Lsha256_transform$local,@function
# %bb.0:
	addi	sp, sp, -576
	sd	a1, 288(sp)                     # 8-byte Folded Spill
	sd	a0, 296(sp)                     # 8-byte Folded Spill
	li	a0, 0
	mv	a1, a0
	sd	a1, 304(sp)                     # 8-byte Folded Spill
	sd	a0, 312(sp)                     # 8-byte Folded Spill
	j	.LBB0_2
.LBB0_1:
	li	a0, 16
	lw	a1, 320(sp)
	sd	a1, 272(sp)                     # 8-byte Folded Spill
	sd	a0, 280(sp)                     # 8-byte Folded Spill
	j	.LBB0_3
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	ld	a1, 312(sp)                     # 8-byte Folded Reload
	ld	a0, 304(sp)                     # 8-byte Folded Reload
	ld	a2, 288(sp)                     # 8-byte Folded Reload
	add	a3, a2, a1
	lbu	a2, 0(a3)
	slliw	a4, a2, 24
	lbu	a2, 1(a3)
	slliw	a2, a2, 16
	or	a2, a2, a4
	lbu	a4, 2(a3)
	slliw	a4, a4, 8
	or	a2, a2, a4
	lbu	a3, 3(a3)
	or	a2, a2, a3
	slli	a4, a0, 2
	addi	a3, sp, 320
	add	a3, a3, a4
	sw	a2, 0(a3)
	addi	a0, a0, 1
	addi	a2, a1, 4
	li	a1, 16
	mv	a3, a0
	sd	a3, 304(sp)                     # 8-byte Folded Spill
	sd	a2, 312(sp)                     # 8-byte Folded Spill
	beq	a0, a1, .LBB0_1
	j	.LBB0_2
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	ld	a0, 280(sp)                     # 8-byte Folded Reload
	ld	a5, 272(sp)                     # 8-byte Folded Reload
	slli	a2, a0, 2
	addi	a1, sp, 320
	add	a3, a1, a2
	lw	a2, -8(a3)
	srliw	a4, a2, 17
	slliw	a1, a2, 15
	or	a1, a1, a4
	srliw	a6, a2, 19
	slliw	a4, a2, 13
	or	a4, a4, a6
	xor	a1, a1, a4
	srliw	a2, a2, 10
	xor	a1, a1, a2
	lw	a2, -28(a3)
	addw	a1, a1, a2
	lwu	a2, -60(a3)
	srli	a6, a2, 7
	slliw	a4, a2, 25
	or	a4, a4, a6
	srli	a7, a2, 18
	slliw	a6, a2, 14
	or	a6, a6, a7
	xor	a4, a4, a6
	srli	a6, a2, 3
	xor	a4, a4, a6
	addw	a1, a1, a5
	addw	a1, a1, a4
	sw	a1, 0(a3)
	addi	a0, a0, 1
	li	a1, 64
	sd	a2, 272(sp)                     # 8-byte Folded Spill
	mv	a2, a0
	sd	a2, 280(sp)                     # 8-byte Folded Spill
	bne	a0, a1, .LBB0_3
	j	.LBB0_4
.LBB0_4:
	ld	a5, 296(sp)                     # 8-byte Folded Reload
	addi	a0, a5, 80
	sd	a0, 72(sp)                      # 8-byte Folded Spill
	lw	a7, 80(a5)
	sd	a7, 80(sp)                      # 8-byte Folded Spill
	addi	a0, a5, 84
	sd	a0, 88(sp)                      # 8-byte Folded Spill
	lw	a6, 84(a5)
	sd	a6, 96(sp)                      # 8-byte Folded Spill
	addi	a0, a5, 88
	sd	a0, 104(sp)                     # 8-byte Folded Spill
	lw	a0, 88(a5)
	sd	a0, 112(sp)                     # 8-byte Folded Spill
	addi	a1, a5, 92
	sd	a1, 120(sp)                     # 8-byte Folded Spill
	lw	a1, 92(a5)
	sd	a1, 128(sp)                     # 8-byte Folded Spill
	addi	a2, a5, 96
	sd	a2, 136(sp)                     # 8-byte Folded Spill
	lw	a2, 96(a5)
	sd	a2, 144(sp)                     # 8-byte Folded Spill
	regsw_c	x0, 0x0(x0)		# 000000000000000000000
	addi	a3, a5, 100
	sd	a3, 152(sp)                     # 8-byte Folded Spill
	lw	a3, 100(a5)
	sd	a3, 160(sp)                     # 8-byte Folded Spill
	addi	a4, a5, 104
	sd	a4, 168(sp)                     # 8-byte Folded Spill
	lw	a4, 104(a5)
	sd	a4, 176(sp)                     # 8-byte Folded Spill
	addi	t0, a5, 108
	sd	t0, 184(sp)                     # 8-byte Folded Spill
	lw	a5, 108(a5)
	sd	a5, 192(sp)                     # 8-byte Folded Spill
	li	t0, 0
	sd	t0, 200(sp)                     # 8-byte Folded Spill
	sd	a7, 208(sp)                     # 8-byte Folded Spill
	sd	a6, 216(sp)                     # 8-byte Folded Spill
	sd	a5, 224(sp)                     # 8-byte Folded Spill
	sd	a4, 232(sp)                     # 8-byte Folded Spill
	sd	a3, 240(sp)                     # 8-byte Folded Spill
	sd	a2, 248(sp)                     # 8-byte Folded Spill
	sd	a1, 256(sp)                     # 8-byte Folded Spill
	sd	a0, 264(sp)                     # 8-byte Folded Spill
	j	.LBB0_5
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	ld	a3, 264(sp)                     # 8-byte Folded Reload
	ld	a4, 256(sp)                     # 8-byte Folded Reload
	ld	a5, 248(sp)                     # 8-byte Folded Reload
	ld	a6, 240(sp)                     # 8-byte Folded Reload
	ld	a7, 232(sp)                     # 8-byte Folded Reload
	ld	t4, 224(sp)                     # 8-byte Folded Reload
	ld	a2, 216(sp)                     # 8-byte Folded Reload
	ld	t0, 208(sp)                     # 8-byte Folded Reload
	ld	a0, 200(sp)                     # 8-byte Folded Reload
	sd	a3, 8(sp)                       # 8-byte Folded Spill
	sd	a5, 16(sp)                      # 8-byte Folded Spill
	sd	a6, 24(sp)                      # 8-byte Folded Spill
	sd	a7, 32(sp)                      # 8-byte Folded Spill
	sd	a2, 40(sp)                      # 8-byte Folded Spill
	sd	t0, 48(sp)                      # 8-byte Folded Spill
	srliw	t1, a5, 6
	slliw	a1, a5, 26
	or	a1, a1, t1
	srliw	t2, a5, 11
	slliw	t1, a5, 21
	or	t1, t1, t2
	xor	a1, a1, t1
	srliw	t2, a5, 25
	slliw	t1, a5, 7
	or	t1, t1, t2
	xor	a1, a1, t1
	and	t5, a6, a5
	not	t1, a5
	and	t3, a7, t1
	slli	t6, a0, 2
.Lpcrel_hi0:
	auipc	t1, %pcrel_hi(k)
	addi	t1, t1, %pcrel_lo(.Lpcrel_hi0)
	add	t1, t1, t6
	lw	t2, 0(t1)
	addi	t1, sp, 320
	add	t1, t1, t6
	lw	t1, 0(t1)
	addw	a1, a1, t5
	addw	a1, a1, t4
	addw	a1, a1, t3
	addw	a1, a1, t2
	addw	t1, a1, t1
	srliw	t2, t0, 2
	slliw	a1, t0, 30
	or	a1, a1, t2
	srliw	t3, t0, 13
	slliw	t2, t0, 19
	or	t2, t2, t3
	xor	a1, a1, t2
	srliw	t3, t0, 22
	slliw	t2, t0, 10
	or	t2, t2, t3
	xor	a1, a1, t2
	xor	t2, a2, a3
	and	t2, t0, t2
	and	t3, a2, a3
	xor	t2, t2, t3
	addw	a1, a1, t2
	addw	a4, t1, a4
	sd	a4, 56(sp)                      # 8-byte Folded Spill
	addw	t1, a1, t1
	sd	t1, 64(sp)                      # 8-byte Folded Spill
	addi	a0, a0, 1
	li	a1, 64
	mv	t2, a0
	sd	t2, 200(sp)                     # 8-byte Folded Spill
	sd	t1, 208(sp)                     # 8-byte Folded Spill
	sd	t0, 216(sp)                     # 8-byte Folded Spill
	sd	a7, 224(sp)                     # 8-byte Folded Spill
	sd	a6, 232(sp)                     # 8-byte Folded Spill
	sd	a5, 240(sp)                     # 8-byte Folded Spill
	sd	a4, 248(sp)                     # 8-byte Folded Spill
	sd	a3, 256(sp)                     # 8-byte Folded Spill
	sd	a2, 264(sp)                     # 8-byte Folded Spill
	bne	a0, a1, .LBB0_5
	j	.LBB0_6
.LBB0_6:
	ld	a1, 184(sp)                     # 8-byte Folded Reload
	ld	a0, 32(sp)                      # 8-byte Folded Reload
	ld	a2, 192(sp)                     # 8-byte Folded Reload
	ld	a4, 168(sp)                     # 8-byte Folded Reload
	ld	a3, 24(sp)                      # 8-byte Folded Reload
	ld	a5, 176(sp)                     # 8-byte Folded Reload
	ld	a7, 152(sp)                     # 8-byte Folded Reload
	ld	a6, 16(sp)                      # 8-byte Folded Reload
	ld	t0, 160(sp)                     # 8-byte Folded Reload
	ld	t2, 136(sp)                     # 8-byte Folded Reload
	ld	t1, 56(sp)                      # 8-byte Folded Reload
	ld	t3, 144(sp)                     # 8-byte Folded Reload
	ld	t5, 120(sp)                     # 8-byte Folded Reload
	ld	t4, 8(sp)                       # 8-byte Folded Reload
	ld	t6, 128(sp)                     # 8-byte Folded Reload
	regsw_c	x9, 0x124(x18)		# 100100100100100100100
	ld	x2, 104(sp)                     # 8-byte Folded Reload
	ld	x1, 40(sp)                      # 8-byte Folded Reload
	ld	x3, 112(sp)                     # 8-byte Folded Reload
	ld	x5, 88(sp)                      # 8-byte Folded Reload
	ld	x4, 48(sp)                      # 8-byte Folded Reload
	ld	x6, 96(sp)                      # 8-byte Folded Reload
	ld	x8, 72(sp)                      # 8-byte Folded Reload
	regsw_c	x14, 0x7df(x18)		# 100100111011111011111
	ld	x7, 64(sp)                      # 8-byte Folded Reload
	ld	x9, 80(sp)                      # 8-byte Folded Reload
	addw	x7, x7, x9
	sw	x7, 0(x8)
	addw	x4, x4, x6
	sw	x4, 0(x5)
	addw	x1, x1, x3
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	sw	x1, 0(x2)
	addw	t4, t4, t6
	sw	t4, 0(t5)
	addw	t1, t1, t3
	sw	t1, 0(t2)
	addw	a6, a6, t0
	sw	a6, 0(a7)
	addw	a3, a3, a5
	sw	a3, 0(a4)
	addw	a0, a0, a2
	sw	a0, 0(a1)
	addi	sp, sp, 576
	ret
.Lfunc_end0:
	.size	sha256_transform, .Lfunc_end0-sha256_transform
	.size	.Lsha256_transform$local, .Lfunc_end0-sha256_transform
                                        # -- End function
	.globl	sha256_init                     # -- Begin function sha256_init
	.p2align	2
	.type	sha256_init,@function
sha256_init:                            # @sha256_init
.Lsha256_init$local:
	.type	.Lsha256_init$local,@function
# %bb.0:
	mv	a1, a0
	li	a0, 0
	sw	a0, 64(a1)
	sd	a0, 72(a1)
	lui	a0, 434334
	addiw	a0, a0, 1639
	sw	a0, 80(a1)
	lui	a0, 767611
	addiw	a0, a0, -379
	sw	a0, 84(a1)
	lui	a0, 247535
	addiw	a0, a0, 882
	sw	a0, 88(a1)
	lui	a0, 677119
	addiw	a0, a0, 1338
	sw	a0, 92(a1)
	lui	a0, 332005
	addiw	a0, a0, 639
	sw	a0, 96(a1)
	lui	a0, 634967
	addiw	a0, a0, -1908
	regsw_c	x0, 0x0(x0)		# 000000000000000000000
	sw	a0, 100(a1)
	lui	a0, 129086
	addiw	a0, a0, -1621
	sw	a0, 104(a1)
	lui	a0, 376333
	addiw	a0, a0, -743
	sw	a0, 108(a1)
	ret
.Lfunc_end1:
	.size	sha256_init, .Lfunc_end1-sha256_init
	.size	.Lsha256_init$local, .Lfunc_end1-sha256_init
                                        # -- End function
	.globl	sha256_update                   # -- Begin function sha256_update
	.p2align	2
	.type	sha256_update,@function
sha256_update:                          # @sha256_update
.Lsha256_update$local:
	.type	.Lsha256_update$local,@function
# %bb.0:
	addi	sp, sp, -96
	sd	ra, 88(sp)                      # 8-byte Folded Spill
	sd	a2, 64(sp)                      # 8-byte Folded Spill
	sd	a1, 72(sp)                      # 8-byte Folded Spill
	sd	a0, 80(sp)                      # 8-byte Folded Spill
	beqz	a2, .LBB2_5
	j	.LBB2_1
.LBB2_1:
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	addi	a1, a0, 64
	sd	a1, 24(sp)                      # 8-byte Folded Spill
	addi	a1, a0, 72
	sd	a1, 32(sp)                      # 8-byte Folded Spill
	lw	a2, 64(a0)
	li	a1, 0
	mv	a0, a1
	sd	a2, 40(sp)                      # 8-byte Folded Spill
	sd	a1, 48(sp)                      # 8-byte Folded Spill
	sd	a0, 56(sp)                      # 8-byte Folded Spill
	j	.LBB2_2
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	ld	a2, 80(sp)                      # 8-byte Folded Reload
	ld	a0, 72(sp)                      # 8-byte Folded Reload
	ld	a3, 40(sp)                      # 8-byte Folded Reload
	ld	a4, 48(sp)                      # 8-byte Folded Reload
	ld	a5, 56(sp)                      # 8-byte Folded Reload
	sd	a5, 8(sp)                       # 8-byte Folded Spill
	add	a0, a0, a4
	lbu	a0, 0(a0)
	slli	a3, a3, 32
	srli	a3, a3, 32
	add	a2, a2, a3
	sb	a0, 0(a2)
	lw	a0, 0(a1)
	addiw	a0, a0, 1
	sw	a0, 0(a1)
	li	a1, 64
	mv	a2, a0
	sd	a2, 16(sp)                      # 8-byte Folded Spill
	bne	a0, a1, .LBB2_4
	j	.LBB2_3
.LBB2_3:                                #   in Loop: Header=BB2_2 Depth=1
	ld	a1, 80(sp)                      # 8-byte Folded Reload
	mv	a0, a1
	call	.Lsha256_transform$local
	ld	a2, 32(sp)                      # 8-byte Folded Reload
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	ld	a0, 0(a2)
	addi	a0, a0, 512
	sd	a0, 0(a2)
	li	a0, 0
	sw	a0, 0(a1)
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	j	.LBB2_4
.LBB2_4:                                #   in Loop: Header=BB2_2 Depth=1
	ld	a1, 64(sp)                      # 8-byte Folded Reload
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	ld	a3, 16(sp)                      # 8-byte Folded Reload
	addiw	a2, a0, 1
	slli	a0, a2, 32
	srli	a0, a0, 32
	sd	a3, 40(sp)                      # 8-byte Folded Spill
	mv	a3, a0
	sd	a3, 48(sp)                      # 8-byte Folded Spill
	sd	a2, 56(sp)                      # 8-byte Folded Spill
	bltu	a0, a1, .LBB2_2
	j	.LBB2_5
.LBB2_5:
	ld	ra, 88(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 96
	ret
.Lfunc_end2:
	.size	sha256_update, .Lfunc_end2-sha256_update
	.size	.Lsha256_update$local, .Lfunc_end2-sha256_update
                                        # -- End function
	.globl	sha256_final                    # -- Begin function sha256_final
	.p2align	2
	.type	sha256_final,@function
sha256_final:                           # @sha256_final
.Lsha256_final$local:
	.type	.Lsha256_final$local,@function
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	a1, 16(sp)                      # 8-byte Folded Spill
	sd	a0, 24(sp)                      # 8-byte Folded Spill
	addi	a1, a0, 64
	sd	a1, 32(sp)                      # 8-byte Folded Spill
	lwu	a1, 64(a0)
	sd	a1, 40(sp)                      # 8-byte Folded Spill
	mv	a2, a1
	sd	a2, 48(sp)                      # 8-byte Folded Spill
	add	a2, a0, a1
	li	a0, 128
	sb	a0, 0(a2)
	li	a0, 55
	bltu	a0, a1, .LBB3_3
	j	.LBB3_1
.LBB3_1:
	ld	a0, 40(sp)                      # 8-byte Folded Reload
	sext.w	a0, a0
	li	a1, 55
	beq	a0, a1, .LBB3_6
	j	.LBB3_2
.LBB3_2:
	ld	a2, 40(sp)                      # 8-byte Folded Reload
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	ld	a1, 48(sp)                      # 8-byte Folded Reload
	add	a0, a0, a1
	addi	a0, a0, 1
	li	a1, 55
	subw	a2, a1, a2
	li	a1, 0
	call	memset
	j	.LBB3_6
.LBB3_3:
	ld	a0, 40(sp)                      # 8-byte Folded Reload
	addiw	a1, a0, 1
	sd	a1, 8(sp)                       # 8-byte Folded Spill
	li	a0, 63
	bltu	a0, a1, .LBB3_5
	j	.LBB3_4
.LBB3_4:
	ld	a2, 40(sp)                      # 8-byte Folded Reload
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	ld	a1, 8(sp)                       # 8-byte Folded Reload
	sext.w	a1, a1
	add	a0, a0, a1
	li	a1, 62
	subw	a1, a1, a2
	addi	a2, a1, 1
	li	a1, 0
	call	memset
	j	.LBB3_5
.LBB3_5:
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	mv	a0, a1
	call	.Lsha256_transform$local
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	li	a0, 0
	sd	a0, 48(a1)
	sd	a0, 40(a1)
	sd	a0, 32(a1)
	sd	a0, 24(a1)
	sd	a0, 16(a1)
	sd	a0, 8(a1)
	sd	a0, 0(a1)
	j	.LBB3_6
.LBB3_6:
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	ld	a0, 32(sp)                      # 8-byte Folded Reload
	lw	a0, 0(a0)
	slli	a0, a0, 35
	srli	a2, a0, 32
	ld	a0, 72(a1)
	add	a0, a0, a2
	sd	a0, 72(a1)
	sb	a0, 63(a1)
	srli	a2, a0, 8
	sb	a2, 62(a1)
	srli	a2, a0, 16
	sb	a2, 61(a1)
	srli	a2, a0, 24
	sb	a2, 60(a1)
	srli	a2, a0, 32
	sb	a2, 59(a1)
	srli	a2, a0, 40
	sb	a2, 58(a1)
	srli	a2, a0, 48
	sb	a2, 57(a1)
	srli	a0, a0, 56
	sb	a0, 56(a1)
	mv	a0, a1
	call	.Lsha256_transform$local
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	lbu	a2, 83(a0)
	sb	a2, 0(a1)
	lbu	a2, 87(a0)
	sb	a2, 4(a1)
	lbu	a2, 91(a0)
	sb	a2, 8(a1)
	lbu	a2, 95(a0)
	sb	a2, 12(a1)
	lbu	a2, 99(a0)
	sb	a2, 16(a1)
	lbu	a2, 103(a0)
	sb	a2, 20(a1)
	lbu	a2, 107(a0)
	sb	a2, 24(a1)
	lbu	a2, 111(a0)
	sb	a2, 28(a1)
	lbu	a2, 82(a0)
	sb	a2, 1(a1)
	lbu	a2, 86(a0)
	sb	a2, 5(a1)
	lbu	a2, 90(a0)
	sb	a2, 9(a1)
	lbu	a2, 94(a0)
	sb	a2, 13(a1)
	lbu	a2, 98(a0)
	sb	a2, 17(a1)
	lbu	a2, 102(a0)
	sb	a2, 21(a1)
	lbu	a2, 106(a0)
	sb	a2, 25(a1)
	lbu	a2, 110(a0)
	sb	a2, 29(a1)
	lbu	a2, 81(a0)
	sb	a2, 2(a1)
	lbu	a2, 85(a0)
	sb	a2, 6(a1)
	lbu	a2, 89(a0)
	sb	a2, 10(a1)
	lbu	a2, 93(a0)
	sb	a2, 14(a1)
	lbu	a2, 97(a0)
	sb	a2, 18(a1)
	lbu	a2, 101(a0)
	sb	a2, 22(a1)
	lbu	a2, 105(a0)
	sb	a2, 26(a1)
	lbu	a2, 109(a0)
	sb	a2, 30(a1)
	lbu	a2, 80(a0)
	sb	a2, 3(a1)
	lbu	a2, 84(a0)
	sb	a2, 7(a1)
	lbu	a2, 88(a0)
	sb	a2, 11(a1)
	lbu	a2, 92(a0)
	sb	a2, 15(a1)
	lbu	a2, 96(a0)
	sb	a2, 19(a1)
	regsw_c	x0, 0x0(x0)		# 000000000000000000000
	lbu	a2, 100(a0)
	sb	a2, 23(a1)
	lbu	a2, 104(a0)
	sb	a2, 27(a1)
	lbu	a0, 108(a0)
	sb	a0, 31(a1)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end3:
	.size	sha256_final, .Lfunc_end3-sha256_final
	.size	.Lsha256_final$local, .Lfunc_end3-sha256_final
                                        # -- End function
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
