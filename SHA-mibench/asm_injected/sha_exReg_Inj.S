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
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
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
	addi	a0, a0, 40
	li	a2, 144
	li	a1, 0
	call	memset
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
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
# %bb.1:
	addi	s1, s0, 56
	addi	s2, a2, 128
	li	s3, 255
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	mv	a0, s1
	call	byte_reverse
	mv	a0, s0
	call	sha_transform
	addiw	s2, s2, -128
	bltu	s3, s2, .LBB1_2
.LBB1_3:
	li	a0, 10
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	tail	putchar
.Lfunc_end1:
	.size	sha_update, .Lfunc_end1-sha_update
	.size	.Lsha_update$local, .Lfunc_end1-sha_update
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m
	.p2align	2                               # -- Begin function byte_reverse
	.type	byte_reverse,@function
byte_reverse:                           # @byte_reverse
# %bb.0:
	lbu	a1, 3(a0)
	lbu	a2, 2(a0)
	lbu	a3, 1(a0)
	lbu	a4, 0(a0)
	sb	a1, 0(a0)
	sb	a2, 1(a0)
	sb	a3, 2(a0)
	sb	a4, 3(a0)
	lbu	a1, 11(a0)
	lbu	a2, 10(a0)
	lbu	a3, 9(a0)
	lbu	a4, 8(a0)
	sb	a1, 8(a0)
	sb	a2, 9(a0)
	sb	a3, 10(a0)
	sb	a4, 11(a0)
	lbu	a1, 19(a0)
	lbu	a2, 18(a0)
	lbu	a3, 17(a0)
	lbu	a4, 16(a0)
	sb	a1, 16(a0)
	sb	a2, 17(a0)
	sb	a3, 18(a0)
	sb	a4, 19(a0)
	lbu	a1, 27(a0)
	lbu	a2, 26(a0)
	lbu	a3, 25(a0)
	lbu	a4, 24(a0)
	sb	a1, 24(a0)
	sb	a2, 25(a0)
	sb	a3, 26(a0)
	sb	a4, 27(a0)
	lbu	a1, 35(a0)
	lbu	a2, 34(a0)
	lbu	a3, 33(a0)
	lbu	a4, 32(a0)
	sb	a1, 32(a0)
	sb	a2, 33(a0)
	sb	a3, 34(a0)
	sb	a4, 35(a0)
	lbu	a1, 43(a0)
	lbu	a2, 42(a0)
	lbu	a3, 41(a0)
	lbu	a4, 40(a0)
	sb	a1, 40(a0)
	sb	a2, 41(a0)
	sb	a3, 42(a0)
	sb	a4, 43(a0)
	lbu	a1, 51(a0)
	lbu	a2, 50(a0)
	lbu	a3, 49(a0)
	lbu	a4, 48(a0)
	sb	a1, 48(a0)
	sb	a2, 49(a0)
	sb	a3, 50(a0)
	sb	a4, 51(a0)
	lbu	a1, 59(a0)
	lbu	a2, 58(a0)
	lbu	a3, 57(a0)
	lbu	a4, 56(a0)
	sb	a1, 56(a0)
	sb	a2, 57(a0)
	sb	a3, 58(a0)
	sb	a4, 59(a0)
	lbu	a1, 67(a0)
	lbu	a2, 66(a0)
	lbu	a3, 65(a0)
	lbu	a4, 64(a0)
	sb	a1, 64(a0)
	sb	a2, 65(a0)
	sb	a3, 66(a0)
	sb	a4, 67(a0)
	lbu	a1, 75(a0)
	lbu	a2, 74(a0)
	lbu	a3, 73(a0)
	lbu	a4, 72(a0)
	sb	a1, 72(a0)
	sb	a2, 73(a0)
	sb	a3, 74(a0)
	sb	a4, 75(a0)
	lbu	a1, 83(a0)
	lbu	a2, 82(a0)
	lbu	a3, 81(a0)
	lbu	a4, 80(a0)
	sb	a1, 80(a0)
	sb	a2, 81(a0)
	sb	a3, 82(a0)
	sb	a4, 83(a0)
	lbu	a1, 91(a0)
	lbu	a2, 90(a0)
	lbu	a3, 89(a0)
	lbu	a4, 88(a0)
	sb	a1, 88(a0)
	sb	a2, 89(a0)
	sb	a3, 90(a0)
	sb	a4, 91(a0)
	lbu	a1, 99(a0)
	lbu	a2, 98(a0)
	lbu	a3, 97(a0)
	lbu	a4, 96(a0)
	sb	a1, 96(a0)
	sb	a2, 97(a0)
	sb	a3, 98(a0)
	sb	a4, 99(a0)
	lbu	a1, 107(a0)
	lbu	a2, 106(a0)
	lbu	a3, 105(a0)
	lbu	a4, 104(a0)
	sb	a1, 104(a0)
	sb	a2, 105(a0)
	sb	a3, 106(a0)
	sb	a4, 107(a0)
	lbu	a1, 115(a0)
	lbu	a2, 114(a0)
	lbu	a3, 113(a0)
	lbu	a4, 112(a0)
	sb	a1, 112(a0)
	sb	a2, 113(a0)
	sb	a3, 114(a0)
	sb	a4, 115(a0)
	lbu	a1, 123(a0)
	lbu	a2, 122(a0)
	lbu	a3, 121(a0)
	lbu	a4, 120(a0)
	sb	a1, 120(a0)
	sb	a2, 121(a0)
	sb	a3, 122(a0)
	sb	a4, 123(a0)
	ret
.Lfunc_end2:
	.size	byte_reverse, .Lfunc_end2-byte_reverse
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
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	ld	a2, -24(a1)
	ld	a3, -64(a1)
	ld	a4, -112(a1)
	ld	a5, -128(a1)
	xor	a2, a3, a2
	xor	a4, a4, a5
	xor	a2, a2, a4
	sd	a2, 0(a1)
	addi	a1, a1, 8
	bne	a1, a0, .LBB3_1
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
.LBB3_3:                                # =>This Inner Loop Header: Depth=1
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
	bne	t0, t1, .LBB3_3
# %bb.4:                                # %.preheader2
	addi	t0, sp, 320
	lui	t2, 454047
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	addiw	x2, t2, -1119
.LBB3_5:                                # =>This Inner Loop Header: Depth=1
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
	bne	t1, t0, .LBB3_5
# %bb.6:                                # %.preheader1
	addi	t1, sp, 480
	lui	t3, 146543
	slli	t3, t3, 2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	addi	x2, t3, -804
.LBB3_7:                                # =>This Inner Loop Header: Depth=1
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
	bne	t0, t1, .LBB3_7
# %bb.8:                                # %.preheader
	lui	t0, 207243
	slli	t0, t0, 2
	addi	t0, t0, 470
.LBB3_9:                                # =>This Inner Loop Header: Depth=1
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
	bne	t1, a0, .LBB3_9
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
.Lfunc_end3:
	.size	sha_transform, .Lfunc_end3-sha_transform
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
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	s2, 40(a0)
	ld	s3, 48(a0)
	slli	a1, s2, 55
	srli	a1, a1, 58
	addi	s1, a0, 56
	add	a0, s1, a1
	li	a2, 128
	sb	a2, 0(a0)
	li	a2, 56
	addi	a0, a0, 1
	bltu	a1, a2, .LBB4_2
# %bb.1:
	xori	a2, a1, 63
	li	a1, 0
	call	memset
	mv	a0, s1
	call	byte_reverse
	mv	a0, s0
	call	sha_transform
	sd	zero, 48(s1)
	sd	zero, 40(s1)
	sd	zero, 32(s1)
	sd	zero, 24(s1)
	sd	zero, 16(s1)
	sd	zero, 8(s1)
	sd	zero, 0(s1)
	j	.LBB4_3
.LBB4_2:
	li	a2, 55
	subw	a2, a2, a1
	slli	a2, a2, 32
	srli	a2, a2, 32
	li	a1, 0
	call	memset
.LBB4_3:
	mv	a0, s1
	call	byte_reverse
	sd	s3, 168(s0)
	sd	s2, 176(s0)
	mv	a0, s0
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	tail	sha_transform
.Lfunc_end4:
	.size	sha_final, .Lfunc_end4-sha_final
	.size	.Lsha_final$local, .Lfunc_end4-sha_final
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
	addi	sp, sp, -800
	sd	ra, 792(sp)                     # 8-byte Folded Spill
	sd	s0, 784(sp)                     # 8-byte Folded Spill
	sd	s1, 776(sp)                     # 8-byte Folded Spill
	sd	s2, 768(sp)                     # 8-byte Folded Spill
	sd	s3, 760(sp)                     # 8-byte Folded Spill
	sd	s4, 752(sp)                     # 8-byte Folded Spill
	sd	s5, 744(sp)                     # 8-byte Folded Spill
	sd	s6, 736(sp)                     # 8-byte Folded Spill
	sd	s7, 728(sp)                     # 8-byte Folded Spill
	sd	s8, 720(sp)                     # 8-byte Folded Spill
	sd	s9, 712(sp)                     # 8-byte Folded Spill
	sd	s10, 704(sp)                    # 8-byte Folded Spill
	sd	s11, 696(sp)                    # 8-byte Folded Spill
	mv	s0, a0
	mv	a0, a1
	call	strlen
	sd	a0, 40(sp)                      # 8-byte Folded Spill
	sext.w	s1, a0
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
	addi	a0, s0, 40
	li	a2, 144
	li	a1, 0
	call	memset
	addi	a0, s0, 56
	sd	a0, 0(sp)                       # 8-byte Folded Spill
	sd	s1, 32(sp)                      # 8-byte Folded Spill
	blez	s1, .LBB5_17
# %bb.1:
	li	s1, 0
	li	s10, 0
	li	s4, 0
	addi	s6, sp, 696
	addi	s7, sp, 216
	addi	s8, sp, 376
	addi	s9, sp, 536
	li	a2, 128
	lui	a0, 370728
	addiw	s11, a0, -1639
	lui	a0, 454047
	addiw	s5, a0, -1119
	lui	a0, 146543
	slli	a0, a0, 2
	addi	s3, a0, -804
	lui	a0, 207243
	slli	a0, a0, 2
	addi	s2, a0, 470
	j	.LBB5_3
.LBB5_2:                                #   in Loop: Header=BB5_3 Depth=1
	li	a0, 10
	call	putchar
	ld	s10, 40(s0)
	ld	s1, 48(s0)
	ld	a0, 48(sp)                      # 8-byte Folded Reload
	addw	s4, a0, s4
	ld	a0, 32(sp)                      # 8-byte Folded Reload
	li	a2, 128
	bge	s4, a0, .LBB5_18
.LBB5_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_7 Depth 2
                                        #     Child Loop BB5_9 Depth 2
                                        #     Child Loop BB5_11 Depth 2
                                        #     Child Loop BB5_13 Depth 2
                                        #     Child Loop BB5_15 Depth 2
	ld	a0, 40(sp)                      # 8-byte Folded Reload
	subw	a3, a0, s4
	blt	a3, a2, .LBB5_5
# %bb.4:                                #   in Loop: Header=BB5_3 Depth=1
	li	a3, 128
.LBB5_5:                                #   in Loop: Header=BB5_3 Depth=1
	slli	a0, a3, 3
	not	a1, s10
	sltu	a1, a1, a0
	add	a0, s10, a0
	sd	a0, 40(s0)
	srli	a0, a3, 29
	add	a0, s1, a0
	add	a0, a0, a1
	sd	a0, 48(s0)
	sd	a3, 48(sp)                      # 8-byte Folded Spill
	blt	a3, a2, .LBB5_2
# %bb.6:                                #   in Loop: Header=BB5_3 Depth=1
	ld	a0, 0(s0)
	sd	a0, 24(sp)                      # 8-byte Folded Spill
	ld	a0, 8(s0)
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	ld	a0, 16(s0)
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	ld	s10, 24(s0)
	ld	s1, 32(s0)
	ld	a4, 0(sp)                       # 8-byte Folded Reload
	lbu	a0, 3(a4)
	lbu	a1, 2(a4)
	lbu	a2, 1(a4)
	lbu	a3, 0(a4)
	sb	a0, 0(a4)
	sb	a1, 1(a4)
	sb	a2, 2(a4)
	sb	a3, 3(a4)
	lbu	a0, 67(s0)
	lbu	a1, 66(s0)
	lbu	a2, 65(s0)
	lbu	a3, 64(s0)
	sb	a0, 64(s0)
	sb	a1, 65(s0)
	sb	a2, 66(s0)
	sb	a3, 67(s0)
	lbu	a0, 75(s0)
	lbu	a1, 74(s0)
	lbu	a2, 73(s0)
	lbu	a3, 72(s0)
	sb	a0, 72(s0)
	sb	a1, 73(s0)
	sb	a2, 74(s0)
	sb	a3, 75(s0)
	lbu	a0, 83(s0)
	lbu	a1, 82(s0)
	lbu	a2, 81(s0)
	lbu	a3, 80(s0)
	sb	a0, 80(s0)
	sb	a1, 81(s0)
	sb	a2, 82(s0)
	sb	a3, 83(s0)
	lbu	a0, 91(s0)
	lbu	a1, 90(s0)
	lbu	a2, 89(s0)
	lbu	a3, 88(s0)
	sb	a0, 88(s0)
	sb	a1, 89(s0)
	sb	a2, 90(s0)
	sb	a3, 91(s0)
	lbu	a0, 99(s0)
	lbu	a1, 98(s0)
	lbu	a2, 97(s0)
	lbu	a3, 96(s0)
	sb	a0, 96(s0)
	sb	a1, 97(s0)
	sb	a2, 98(s0)
	sb	a3, 99(s0)
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
	lbu	a0, 123(s0)
	lbu	a1, 122(s0)
	lbu	a2, 121(s0)
	lbu	a3, 120(s0)
	sb	a0, 120(s0)
	sb	a1, 121(s0)
	sb	a2, 122(s0)
	sb	a3, 123(s0)
	lbu	a0, 131(s0)
	lbu	a1, 130(s0)
	lbu	a2, 129(s0)
	lbu	a3, 128(s0)
	sb	a0, 128(s0)
	sb	a1, 129(s0)
	sb	a2, 130(s0)
	sb	a3, 131(s0)
	lbu	a0, 139(s0)
	lbu	a1, 138(s0)
	lbu	a2, 137(s0)
	lbu	a3, 136(s0)
	sb	a0, 136(s0)
	sb	a1, 137(s0)
	sb	a2, 138(s0)
	sb	a3, 139(s0)
	lbu	a0, 147(s0)
	lbu	a1, 146(s0)
	lbu	a2, 145(s0)
	lbu	a3, 144(s0)
	sb	a0, 144(s0)
	sb	a1, 145(s0)
	sb	a2, 146(s0)
	sb	a3, 147(s0)
	lbu	a0, 155(s0)
	lbu	a1, 154(s0)
	lbu	a2, 153(s0)
	lbu	a3, 152(s0)
	sb	a0, 152(s0)
	sb	a1, 153(s0)
	sb	a2, 154(s0)
	sb	a3, 155(s0)
	lbu	a0, 163(s0)
	lbu	a1, 162(s0)
	lbu	a2, 161(s0)
	lbu	a3, 160(s0)
	sb	a0, 160(s0)
	sb	a1, 161(s0)
	sb	a2, 162(s0)
	sb	a3, 163(s0)
	lbu	a0, 171(s0)
	lbu	a1, 170(s0)
	lbu	a2, 169(s0)
	lbu	a3, 168(s0)
	sb	a0, 168(s0)
	sb	a1, 169(s0)
	sb	a2, 170(s0)
	sb	a3, 171(s0)
	lbu	a0, 179(s0)
	lbu	a1, 178(s0)
	lbu	a2, 177(s0)
	lbu	a3, 176(s0)
	sb	a0, 176(s0)
	sb	a1, 177(s0)
	sb	a2, 178(s0)
	sb	a3, 179(s0)
	addi	a0, sp, 56
	li	a2, 128
	mv	a1, a4
	call	memcpy
	addi	a0, sp, 184
.LBB5_7:                                #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a1, -24(a0)
	ld	a2, -64(a0)
	ld	a3, -112(a0)
	ld	a4, -128(a0)
	xor	a1, a2, a1
	xor	a3, a3, a4
	xor	a1, a1, a3
	sd	a1, 0(a0)
	addi	a0, a0, 8
	bne	a0, s6, .LBB5_7
# %bb.8:                                # %.preheader3
                                        #   in Loop: Header=BB5_3 Depth=1
	addi	a2, sp, 56
	mv	a4, s1
	mv	t0, s10
	ld	t2, 8(sp)                       # 8-byte Folded Reload
	mv	a1, t2
	ld	t4, 16(sp)                      # 8-byte Folded Reload
	mv	a7, t4
	ld	t3, 24(sp)                      # 8-byte Folded Reload
	mv	a0, t3
.LBB5_9:                                #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
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
	bne	a2, s7, .LBB5_9
# %bb.10:                               # %.preheader2
                                        #   in Loop: Header=BB5_3 Depth=1
	mv	t0, s7
.LBB5_11:                               #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
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
	add	a0, a0, s5
	slli	a1, a3, 30
	srli	a3, a3, 2
	addi	t0, t0, 8
	or	a1, a1, a3
	mv	a5, a4
	mv	a6, a7
	mv	a3, a2
	bne	t0, s8, .LBB5_11
# %bb.12:                               # %.preheader1
                                        #   in Loop: Header=BB5_3 Depth=1
	mv	t0, s8
.LBB5_13:                               #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
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
	add	a0, a0, s3
	add	a0, a1, a0
	slli	a1, a2, 30
	srli	a2, a2, 2
	addi	t0, t0, 8
	or	a1, a1, a2
	mv	a4, a5
	mv	a7, a6
	mv	a2, a3
	bne	t0, s9, .LBB5_13
# %bb.14:                               # %.preheader
                                        #   in Loop: Header=BB5_3 Depth=1
	mv	a2, s9
.LBB5_15:                               #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
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
	bne	a2, s6, .LBB5_15
# %bb.16:                               #   in Loop: Header=BB5_3 Depth=1
	add	a0, a0, t3
	add	t0, t0, t4
	add	a1, a1, t2
	add	a7, a7, s10
	add	a4, a4, s1
	sd	a0, 0(s0)
	sd	t0, 8(s0)
	sd	a1, 16(s0)
	sd	a7, 24(s0)
	sd	a4, 32(s0)
	j	.LBB5_2
.LBB5_17:
	li	s1, 0
	li	s10, 0
.LBB5_18:
	slli	a1, s10, 55
	srli	a1, a1, 58
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	add	a0, s2, a1
	li	a2, 128
	sb	a2, 0(a0)
	li	a2, 56
	addi	a0, a0, 1
	bltu	a1, a2, .LBB5_20
# %bb.19:
	xori	a2, a1, 63
	li	a1, 0
	call	memset
	mv	a0, s2
	call	byte_reverse
	mv	a0, s0
	call	sha_transform
	sd	zero, 48(s2)
	sd	zero, 40(s2)
	sd	zero, 32(s2)
	sd	zero, 24(s2)
	sd	zero, 16(s2)
	sd	zero, 8(s2)
	sd	zero, 0(s2)
	j	.LBB5_21
.LBB5_20:
	li	a2, 55
	subw	a2, a2, a1
	slli	a2, a2, 32
	srli	a2, a2, 32
	li	a1, 0
	call	memset
.LBB5_21:
	mv	a0, s2
	call	byte_reverse
	sd	s1, 168(s0)
	sd	s10, 176(s0)
	mv	a0, s0
	ld	ra, 792(sp)                     # 8-byte Folded Reload
	ld	s0, 784(sp)                     # 8-byte Folded Reload
	ld	s1, 776(sp)                     # 8-byte Folded Reload
	ld	s2, 768(sp)                     # 8-byte Folded Reload
	ld	s3, 760(sp)                     # 8-byte Folded Reload
	ld	s4, 752(sp)                     # 8-byte Folded Reload
	ld	s5, 744(sp)                     # 8-byte Folded Reload
	ld	s6, 736(sp)                     # 8-byte Folded Reload
	ld	s7, 728(sp)                     # 8-byte Folded Reload
	ld	s8, 720(sp)                     # 8-byte Folded Reload
	ld	s9, 712(sp)                     # 8-byte Folded Reload
	ld	s10, 704(sp)                    # 8-byte Folded Reload
	ld	s11, 696(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 800
	tail	sha_transform
.Lfunc_end5:
	.size	sha_stream, .Lfunc_end5-sha_stream
	.size	.Lsha_stream$local, .Lfunc_end5-sha_stream
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
	auipc	a0, %pcrel_hi(.L.str.1)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi0)
	tail	printf
.Lfunc_end6:
	.size	sha_print, .Lfunc_end6-sha_print
	.size	.Lsha_print$local, .Lfunc_end6-sha_print
                                        # -- End function
	.option	pop
	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"%08lx %08lx %08lx %08lx %08lx\n"
	.size	.L.str.1, 31

	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
