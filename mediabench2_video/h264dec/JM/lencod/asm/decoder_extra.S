	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"decoder.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	decode_one_b8block              # -- Begin function decode_one_b8block
	.p2align	2
	.type	decode_one_b8block,@function
decode_one_b8block:                     # @decode_one_b8block
# %bb.0:
	addi	sp, sp, -1312
	sd	ra, 1304(sp)                    # 8-byte Folded Spill
	sd	s0, 1296(sp)                    # 8-byte Folded Spill
	sd	s1, 1288(sp)                    # 8-byte Folded Spill
	sd	s2, 1280(sp)                    # 8-byte Folded Spill
	sd	s3, 1272(sp)                    # 8-byte Folded Spill
	sd	s4, 1264(sp)                    # 8-byte Folded Spill
	sd	s5, 1256(sp)                    # 8-byte Folded Spill
	sd	s6, 1248(sp)                    # 8-byte Folded Spill
	sd	s7, 1240(sp)                    # 8-byte Folded Spill
	sd	s8, 1232(sp)                    # 8-byte Folded Spill
	sd	s9, 1224(sp)                    # 8-byte Folded Spill
	sd	s10, 1216(sp)                   # 8-byte Folded Spill
	sd	s11, 1208(sp)                   # 8-byte Folded Spill
	sd	a4, 48(sp)                      # 8-byte Folded Spill
	lui	a4, %hi(img)
	ld	t0, %lo(img)(a4)
	srliw	a4, a2, 31
	add	a4, a2, a4
	sraiw	t4, a4, 1
	andi	a4, a4, -2
	subw	a4, a2, a4
	slliw	a5, a4, 3
	lw	t1, 24(t0)
	addiw	a6, a5, 8
	slliw	a7, t4, 3
	li	t2, 2
	addiw	a2, a7, 8
	bne	t1, t2, .LBB0_5
# %bb.1:
	lui	a1, %hi(enc_picture)
	ld	a1, %lo(enc_picture)(a1)
	lui	a3, %hi(decs)
	ld	a3, %lo(decs)(a3)
	lui	a4, 2
	add	a1, a1, a4
	ld	n4, -1768(a1)
	ld	a1, 8(a3)
	lw	a3, 156(t0)
	lw	n6, 152(t0)
	slli	a0, a0, 3
	add	a0, a1, a0
	ld	n5, 0(a0)
	add	a0, a3, a7
	slli	n7, a0, 3
	add	a0, n4, n7
	ld	a0, 0(a0)
	add	a1, n5, n7
	ld	a1, 0(a1)
	addi	a7, a7, 1
	add	a3, a7, a3
	slli	a4, a3, 3
	add	a3, n4, a4
	add	a4, n5, a4
	addi	t1, n7, 16
	add	t0, n4, t1
	add	t1, n5, t1
	addi	t3, n7, 24
	add	t2, n4, t3
	add	t3, n5, t3
	addi	t5, n7, 32
	add	t4, n4, t5
	add	t5, n5, t5
	addi	n1, n7, 40
	add	t6, n4, n1
	add	n1, n5, n1
	addi	n3, n7, 48
	add	n2, n4, n3
	add	n3, n5, n3
	addi	n7, n7, 56
	add	n4, n4, n7
	add	n5, n5, n7
	add	a5, n6, a5
	slli	a5, a5, 1
	add	a6, n6, a6
	slli	a6, a6, 1
	j	.LBB0_3
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	addi	a5, a5, 2
	beq	a5, a6, .LBB0_36
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	add	n6, a0, a5
	lh	n6, 0(n6)
	add	n7, a1, a5
	sh	n6, 0(n7)
	bge	a7, a2, .LBB0_2
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	ld	n6, 0(a3)
	add	n6, n6, a5
	ld	n7, 0(a4)
	lh	n6, 0(n6)
	ld	n8, 0(t0)
	add	n7, n7, a5
	sh	n6, 0(n7)
	add	n8, n8, a5
	ld	n6, 0(t1)
	lh	n7, 0(n8)
	ld	n8, 0(t2)
	add	n6, n6, a5
	sh	n7, 0(n6)
	add	n8, n8, a5
	ld	n6, 0(t3)
	lh	n7, 0(n8)
	ld	n8, 0(t4)
	add	n6, n6, a5
	sh	n7, 0(n6)
	add	n8, n8, a5
	ld	n6, 0(t5)
	lh	n7, 0(n8)
	ld	n8, 0(t6)
	add	n6, n6, a5
	sh	n7, 0(n6)
	add	n8, n8, a5
	ld	n6, 0(n1)
	lh	n7, 0(n8)
	ld	n8, 0(n2)
	add	n6, n6, a5
	sh	n7, 0(n6)
	add	n8, n8, a5
	ld	n6, 0(n3)
	lh	n7, 0(n8)
	ld	n8, 0(n4)
	add	n6, n6, a5
	sh	n7, 0(n6)
	add	n8, n8, a5
	ld	n6, 0(n5)
	lh	n7, 0(n8)
	add	n6, n6, a5
	sh	n7, 0(n6)
	j	.LBB0_2
.LBB0_5:
	lui	t2, 22
	addiw	n1, t2, -776
	add	n1, t0, n1
	lw	t3, 0(t0)
	lui	t2, %hi(start_frame_no_in_this_IGOP)
	lw	t6, %lo(start_frame_no_in_this_IGOP)(t2)
	lw	t5, 32(t0)
	slliw	t2, a4, 1
	addi	a4, a7, 1
	slli	t4, t4, 35
	sd	t2, 24(sp)                      # 8-byte Folded Spill
	slli	t2, t2, 2
	beqz	a1, .LBB0_15
.LBB0_6:
	addiw	n2, a3, -1
	li	n3, 7
	bgeu	n2, n3, .LBB0_8
# %bb.7:
	ld	n3, 0(n1)
	srai	n4, t4, 34
	slli	n5, n4, 3
	add	n5, n3, n5
	ld	n5, 0(n5)
	ld	n11, 24(sp)                     # 8-byte Folded Reload
	slli	n6, n11, 3
	add	n7, n5, n6
	ld	n7, 0(n7)
	ld	n7, 0(n7)
	ld	n8, 48(sp)                      # 8-byte Folded Reload
	slli	n8, n8, 3
	add	n7, n7, n8
	ld	n7, 0(n7)
	slli	a3, a3, 3
	add	n7, n7, a3
	ld	n7, 0(n7)
	lh	n9, 0(n7)
	slli	n10, n4, 4
	addi	n11, n11, 1
	slli	n12, n11, 3
	add	n5, n5, n12
	ld	n5, 0(n5)
	addi	n13, sp, 1080
	add	n14, n13, n10
	add	n15, n14, t2
	ld	n5, 0(n5)
	sw	n9, 0(n15)
	addi	n9, sp, 1144
	lh	n7, 2(n7)
	add	n5, n5, n8
	ld	n5, 0(n5)
	addi	n4, n4, 1
	slli	n15, n4, 3
	add	n3, n3, n15
	ld	n3, 0(n3)
	add	n10, n9, n10
	add	n5, n5, a3
	ld	n5, 0(n5)
	add	n6, n3, n6
	ld	n6, 0(n6)
	add	n15, n10, t2
	sw	n7, 0(n15)
	lh	n7, 0(n5)
	ld	n6, 0(n6)
	slli	n11, n11, 2
	add	n14, n14, n11
	sw	n7, 0(n14)
	add	n6, n6, n8
	ld	n6, 0(n6)
	lh	n5, 2(n5)
	add	n3, n3, n12
	ld	n3, 0(n3)
	add	n6, n6, a3
	ld	n6, 0(n6)
	add	n10, n10, n11
	ld	n3, 0(n3)
	sw	n5, 0(n10)
	lh	n5, 0(n6)
	slli	n4, n4, 4
	add	n3, n3, n8
	ld	n3, 0(n3)
	add	n13, n13, n4
	add	n7, n13, t2
	sw	n5, 0(n7)
	add	a3, n3, a3
	ld	a3, 0(a3)
	lh	n3, 2(n6)
	add	n4, n9, n4
	add	n5, n4, t2
	lh	n6, 0(a3)
	sw	n3, 0(n5)
	lh	a3, 2(a3)
	add	n13, n13, n11
	sw	n6, 0(n13)
	add	n4, n4, n11
	sw	a3, 0(n4)
	j	.LBB0_9
.LBB0_8:
	addi	a3, sp, 1144
	srai	n3, t4, 34
	slli	n3, n3, 4
	add	n4, a3, n3
	add	n5, n4, t2
	sw	zero, 0(n5)
	addi	n5, sp, 1080
	add	n6, n5, n3
	add	n7, n6, t2
	sw	zero, 0(n7)
	addi	n7, t2, 4
	add	n4, n4, n7
	sw	zero, 0(n4)
	add	n6, n6, n7
	sw	zero, 0(n6)
	addi	n3, n3, 16
	add	a3, a3, n3
	add	n4, a3, t2
	sw	zero, 0(n4)
	add	n3, n5, n3
	add	n4, n3, t2
	sw	zero, 0(n4)
	add	a3, a3, n7
	sw	zero, 0(a3)
	add	n3, n3, n7
	sw	zero, 0(n3)
.LBB0_9:
	lui	a3, %hi(decs)
	ld	a3, %lo(decs)(a3)
	ld	n4, 0(a3)
	slli	a3, a7, 3
	add	a3, n4, a3
	ld	n3, 0(a3)
	slli	n5, a4, 3
	add	n4, n4, n5
	slli	n5, a5, 2
	slli	n6, a7, 6
	addi	n7, sp, 56
	add	n6, n6, n7
	addi	n6, n6, 256
	slli	n7, a6, 2
	j	.LBB0_11
.LBB0_10:                               #   in Loop: Header=BB0_11 Depth=1
	addi	n5, n5, 4
	beq	n5, n7, .LBB0_13
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	add	n8, n3, n5
	lw	n9, 0(n8)
	add	n8, n6, n5
	sw	n9, -256(n8)
	bge	a4, a2, .LBB0_10
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=1
	ld	n9, 0(n4)
	add	n9, n9, n5
	lw	n9, 0(n9)
	ld	n10, 16(a3)
	sw	n9, -192(n8)
	add	n10, n10, n5
	lw	n9, 0(n10)
	ld	n10, 24(a3)
	sw	n9, -128(n8)
	add	n10, n10, n5
	lw	n9, 0(n10)
	ld	n10, 32(a3)
	sw	n9, -64(n8)
	add	n10, n10, n5
	lw	n9, 0(n10)
	ld	n10, 40(a3)
	sw	n9, 0(n8)
	add	n10, n10, n5
	lw	n9, 0(n10)
	ld	n10, 48(a3)
	sw	n9, 64(n8)
	add	n10, n10, n5
	lw	n9, 0(n10)
	ld	n10, 56(a3)
	sw	n9, 128(n8)
	add	n10, n10, n5
	lw	n9, 0(n10)
	sw	n9, 192(n8)
	j	.LBB0_10
.LBB0_13:
	li	a3, 7
	bltu	n2, a3, .LBB0_25
# %bb.14:
	bnez	a1, .LBB0_32
	j	.LBB0_22
.LBB0_15:
	beqz	t1, .LBB0_18
# %bb.16:
	li	n2, 1
	bne	t1, n2, .LBB0_6
# %bb.17:
	lw	n2, 980(n1)
	blez	n2, .LBB0_6
.LBB0_18:
	slli	a1, a7, 6
	addi	n10, sp, 56
	add	a1, n10, a1
	slli	n9, a5, 2
	add	n2, a1, n9
	sw	zero, 0(n2)
	bge	a4, a2, .LBB0_20
# %bb.19:
	slli	n3, a4, 6
	add	n3, n10, n3
	add	n2, n3, n9
	sw	zero, 0(n2)
	addi	n4, a1, 128
	add	n2, n4, n9
	sw	zero, 0(n2)
	addi	n5, a1, 192
	add	n2, n5, n9
	sw	zero, 0(n2)
	addi	n6, a1, 256
	add	n2, n6, n9
	sw	zero, 0(n2)
	addi	n7, a1, 320
	add	n2, n7, n9
	sw	zero, 0(n2)
	addi	n8, a1, 384
	add	n2, n8, n9
	sw	zero, 0(n2)
	addi	n2, a7, 7
	slli	n11, n2, 6
	add	n10, n10, n11
	add	n11, n10, n9
	sw	zero, 0(n11)
	addi	n11, n9, 4
	add	n12, a1, n11
	sw	zero, 0(n12)
	add	n12, n3, n11
	sw	zero, 0(n12)
	add	n12, n4, n11
	sw	zero, 0(n12)
	add	n12, n5, n11
	sw	zero, 0(n12)
	add	n12, n6, n11
	sw	zero, 0(n12)
	add	n12, n7, n11
	sw	zero, 0(n12)
	add	n12, n8, n11
	sw	zero, 0(n12)
	add	n11, n10, n11
	sw	zero, 0(n11)
	addi	n11, n9, 8
	add	n12, a1, n11
	sw	zero, 0(n12)
	add	n12, n3, n11
	sw	zero, 0(n12)
	add	n12, n4, n11
	sw	zero, 0(n12)
	add	n12, n5, n11
	sw	zero, 0(n12)
	add	n12, n6, n11
	sw	zero, 0(n12)
	add	n12, n7, n11
	sw	zero, 0(n12)
	add	n12, n8, n11
	sw	zero, 0(n12)
	add	n11, n10, n11
	sw	zero, 0(n11)
	addi	n11, n9, 12
	add	n12, a1, n11
	sw	zero, 0(n12)
	add	n12, n3, n11
	sw	zero, 0(n12)
	add	n12, n4, n11
	sw	zero, 0(n12)
	add	n12, n5, n11
	sw	zero, 0(n12)
	add	n12, n6, n11
	sw	zero, 0(n12)
	add	n12, n7, n11
	sw	zero, 0(n12)
	add	n12, n8, n11
	sw	zero, 0(n12)
	add	n11, n10, n11
	sw	zero, 0(n11)
	addi	n11, n9, 16
	add	n12, a1, n11
	sw	zero, 0(n12)
	add	n12, n3, n11
	sw	zero, 0(n12)
	add	n12, n4, n11
	sw	zero, 0(n12)
	add	n12, n5, n11
	sw	zero, 0(n12)
	add	n12, n6, n11
	sw	zero, 0(n12)
	add	n12, n7, n11
	sw	zero, 0(n12)
	add	n12, n8, n11
	sw	zero, 0(n12)
	add	n11, n10, n11
	sw	zero, 0(n11)
	addi	n11, n9, 20
	add	n12, a1, n11
	sw	zero, 0(n12)
	add	n12, n3, n11
	sw	zero, 0(n12)
	add	n12, n4, n11
	sw	zero, 0(n12)
	add	n12, n5, n11
	sw	zero, 0(n12)
	add	n12, n6, n11
	sw	zero, 0(n12)
	add	n12, n7, n11
	sw	zero, 0(n12)
	add	n12, n8, n11
	sw	zero, 0(n12)
	add	n11, n10, n11
	sw	zero, 0(n11)
	addi	n9, n9, 24
	add	n11, a1, n9
	sw	zero, 0(n11)
	add	n11, n3, n9
	sw	zero, 0(n11)
	add	n11, n4, n9
	sw	zero, 0(n11)
	add	n11, n5, n9
	sw	zero, 0(n11)
	add	n11, n6, n9
	sw	zero, 0(n11)
	add	n11, n7, n9
	sw	zero, 0(n11)
	add	n11, n8, n9
	sw	zero, 0(n11)
	add	n9, n10, n9
	sw	zero, 0(n9)
	addi	n9, a5, 7
	slli	n10, n9, 2
	add	a1, a1, n10
	sw	zero, 0(a1)
	add	n3, n3, n10
	sw	zero, 0(n3)
	add	n4, n4, n10
	sw	zero, 0(n4)
	add	n5, n5, n10
	sw	zero, 0(n5)
	add	n6, n6, n10
	sw	zero, 0(n6)
	add	n7, n7, n10
	sw	zero, 0(n7)
	add	n8, n8, n10
	sw	zero, 0(n8)
	j	.LBB0_21
.LBB0_20:
	sw	zero, 4(n2)
	sw	zero, 8(n2)
	sw	zero, 12(n2)
	sw	zero, 16(n2)
	sw	zero, 20(n2)
	sw	zero, 24(n2)
	addi	n9, a5, 7
	mv	n2, a7
.LBB0_21:
	slli	n2, n2, 6
	addi	a1, sp, 56
	add	a1, a1, n2
	slli	n9, n9, 2
	add	a1, a1, n9
	sw	zero, 0(a1)
	addi	a1, sp, 1144
	srai	n2, t4, 34
	slli	n2, n2, 4
	add	n3, a1, n2
	add	n4, n3, t2
	sw	zero, 0(n4)
	addi	n4, sp, 1080
	add	n5, n4, n2
	add	n6, n5, t2
	sw	zero, 0(n6)
	addi	n6, t2, 4
	add	n3, n3, n6
	sw	zero, 0(n3)
	add	n5, n5, n6
	sw	zero, 0(n5)
	addi	n2, n2, 16
	add	a1, a1, n2
	add	n3, a1, t2
	sw	zero, 0(n3)
	add	n2, n4, n2
	add	n3, n2, t2
	sw	zero, 0(n3)
	add	a1, a1, n6
	sw	zero, 0(a1)
	add	n2, n2, n6
	addiw	a3, a3, -1
	li	a1, 7
	sw	zero, 0(n2)
	bltu	a3, a1, .LBB0_25
.LBB0_22:
	beqz	t1, .LBB0_25
# %bb.23:
	li	a1, 1
	bne	t1, a1, .LBB0_32
# %bb.24:
	lw	a1, 980(n1)
	blez	a1, .LBB0_32
.LBB0_25:
	not	a1, t6
	add	a1, t3, a1
	remw	s8, a1, t5
	ld	a3, 24(sp)                      # 8-byte Folded Reload
	addiw	a1, a3, 2
	sraiw	a2, a7, 2
	addi	a2, a2, 2
	sd	a2, 16(sp)                      # 8-byte Folded Spill
	srai	s5, t4, 34
	sub	a1, a1, a3
	sd	a1, 8(sp)                       # 8-byte Folded Spill
	slli	a1, s5, 4
	add	a1, a1, t2
	addi	a2, sp, 1080
	add	a1, a1, a2
	addi	s7, a1, 64
	slli	a1, s5, 8
	slli	a2, a3, 4
	addi	a3, sp, 56
	add	a2, a2, a3
	add	a1, a1, a2
	addi	s9, a1, 128
	lui	s10, %hi(img)
	li	s11, 1
	lui	s0, %hi(decs)
	slli	s6, a0, 3
	j	.LBB0_27
.LBB0_26:                               #   in Loop: Header=BB0_27 Depth=1
	addi	s5, s5, 1
	ld	s7, 40(sp)                      # 8-byte Folded Reload
	addi	s7, s7, 16
	ld	s9, 32(sp)                      # 8-byte Folded Reload
	addi	s9, s9, 256
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	beq	s5, a0, .LBB0_36
.LBB0_27:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_29 Depth 2
	sd	s9, 32(sp)                      # 8-byte Folded Spill
	sd	s7, 40(sp)                      # 8-byte Folded Spill
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 8(sp)                       # 8-byte Folded Reload
	j	.LBB0_29
.LBB0_28:                               #   in Loop: Header=BB0_29 Depth=2
	ld	a1, %lo(decs)(s0)
	ld	a2, 16(a1)
	add	a2, a2, s6
	ld	a2, 0(a2)
	lw	a6, 144(a0)
	lw	a7, 148(a0)
	slli	a0, s8, 3
	add	a0, a2, a0
	ld	a0, 0(a0)
	lw	a3, -64(s7)
	lw	a4, 0(s7)
	ld	a5, 32(a1)
	addw	s1, s3, a6
	addw	s2, a7, s5
	mv	a1, s2
	mv	a2, s1
	call	Get_Reference_Block
	ld	a0, %lo(decs)(s0)
	ld	a1, 8(a0)
	ld	a0, 32(a0)
	add	a1, a1, s6
	ld	a1, 0(a1)
	ld	a2, 0(a0)
	slliw	a3, s2, 2
	slli	a3, a3, 3
	lh	a4, -128(s9)
	lh	a5, 0(a2)
	add	a1, a1, a3
	ld	a3, 0(a1)
	slliw	a6, s1, 2
	add	a4, a5, a4
	slli	a6, a6, 1
	add	a5, a3, a6
	sh	a4, 0(a5)
	lh	a4, -124(s9)
	lh	a5, 2(a2)
	add	a4, a5, a4
	addi	a5, a6, 2
	add	a7, a3, a5
	sh	a4, 0(a7)
	lh	a4, -120(s9)
	lh	a7, 4(a2)
	add	a4, a7, a4
	addi	a7, a6, 4
	add	t0, a3, a7
	sh	a4, 0(t0)
	lh	a4, -116(s9)
	lh	a2, 6(a2)
	add	a2, a2, a4
	addi	a4, a6, 6
	ld	t0, 8(a0)
	add	a3, a3, a4
	sh	a2, 0(a3)
	lh	a2, -64(s9)
	lh	a3, 0(t0)
	ld	t1, 8(a1)
	add	a2, a3, a2
	add	a3, t1, a6
	sh	a2, 0(a3)
	lh	a2, -60(s9)
	lh	a3, 2(t0)
	add	a2, a3, a2
	add	a3, t1, a5
	sh	a2, 0(a3)
	lh	a2, -56(s9)
	lh	a3, 4(t0)
	add	a2, a3, a2
	add	a3, t1, a7
	sh	a2, 0(a3)
	lh	a2, -52(s9)
	lh	a3, 6(t0)
	add	a2, a3, a2
	ld	a3, 16(a0)
	add	t1, t1, a4
	sh	a2, 0(t1)
	lh	a2, 0(s9)
	lh	t0, 0(a3)
	ld	t1, 16(a1)
	add	a2, t0, a2
	add	t0, t1, a6
	sh	a2, 0(t0)
	lh	a2, 4(s9)
	lh	t0, 2(a3)
	add	a2, t0, a2
	add	t0, t1, a5
	sh	a2, 0(t0)
	lh	a2, 8(s9)
	lh	t0, 4(a3)
	add	a2, t0, a2
	add	t0, t1, a7
	sh	a2, 0(t0)
	lh	a2, 12(s9)
	lh	a3, 6(a3)
	add	a2, a3, a2
	ld	a0, 24(a0)
	add	t1, t1, a4
	sh	a2, 0(t1)
	lh	a2, 64(s9)
	lh	a3, 0(a0)
	ld	a1, 24(a1)
	add	a2, a3, a2
	add	a6, a1, a6
	sh	a2, 0(a6)
	lh	a2, 68(s9)
	lh	a3, 2(a0)
	add	a2, a3, a2
	add	a5, a1, a5
	sh	a2, 0(a5)
	lh	a2, 72(s9)
	lh	a3, 4(a0)
	add	a2, a3, a2
	add	a7, a1, a7
	sh	a2, 0(a7)
	lh	a2, 76(s9)
	lh	a0, 6(a0)
	add	a0, a0, a2
	add	a1, a1, a4
	sh	a0, 0(a1)
	addi	s4, s4, -1
	addi	s3, s3, 1
	addi	s7, s7, 4
	addi	s9, s9, 16
	beqz	s4, .LBB0_26
.LBB0_29:                               #   Parent Loop BB0_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, %lo(img)(s10)
	lw	a1, 24(a0)
	bne	a1, s11, .LBB0_28
# %bb.30:                               #   in Loop: Header=BB0_29 Depth=2
	lui	a1, %hi(enc_picture)
	ld	a1, %lo(enc_picture)(a1)
	lui	a2, %hi(enc_frame_picture)
	ld	a2, %lo(enc_frame_picture)(a2)
	beq	a1, a2, .LBB0_28
# %bb.31:                               #   in Loop: Header=BB0_29 Depth=2
	lui	a1, %hi(start_frame_no_in_this_IGOP)
	lw	a1, %lo(start_frame_no_in_this_IGOP)(a1)
	lw	a2, 0(a0)
	lw	a3, 32(a0)
	ld	a4, 48(sp)                      # 8-byte Folded Reload
	add	a1, a1, a4
	subw	a2, a2, a1
	addi	a2, a2, -2
	remw	s8, a2, a3
	j	.LBB0_28
.LBB0_32:
	lui	a1, %hi(enc_picture)
	ld	a1, %lo(enc_picture)(a1)
	lui	a3, %hi(decs)
	ld	a3, %lo(decs)(a3)
	lui	t1, 2
	add	a1, a1, t1
	ld	n4, -1768(a1)
	ld	a1, 8(a3)
	lw	a3, 156(t0)
	lw	n6, 152(t0)
	slli	a0, a0, 3
	add	a0, a1, a0
	ld	n5, 0(a0)
	add	a7, a3, a7
	slli	n7, a7, 3
	add	a0, n4, n7
	ld	a0, 0(a0)
	add	a1, n5, n7
	ld	a1, 0(a1)
	add	a3, a4, a3
	slli	a7, a3, 3
	add	a3, n4, a7
	add	a7, n5, a7
	addi	t1, n7, 16
	add	t0, n4, t1
	add	t1, n5, t1
	addi	t3, n7, 24
	add	t2, n4, t3
	add	t3, n5, t3
	addi	t5, n7, 32
	add	t4, n4, t5
	add	t5, n5, t5
	addi	n1, n7, 40
	add	t6, n4, n1
	add	n1, n5, n1
	addi	n3, n7, 48
	add	n2, n4, n3
	add	n3, n5, n3
	addi	n7, n7, 56
	add	n4, n4, n7
	add	n5, n5, n7
	add	a5, n6, a5
	slli	a5, a5, 1
	add	a6, n6, a6
	slli	a6, a6, 1
	j	.LBB0_34
.LBB0_33:                               #   in Loop: Header=BB0_34 Depth=1
	addi	a5, a5, 2
	beq	a5, a6, .LBB0_36
.LBB0_34:                               # =>This Inner Loop Header: Depth=1
	add	n6, a0, a5
	lh	n6, 0(n6)
	add	n7, a1, a5
	sh	n6, 0(n7)
	bge	a4, a2, .LBB0_33
# %bb.35:                               #   in Loop: Header=BB0_34 Depth=1
	ld	n6, 0(a3)
	add	n6, n6, a5
	ld	n7, 0(a7)
	lh	n6, 0(n6)
	ld	n8, 0(t0)
	add	n7, n7, a5
	sh	n6, 0(n7)
	add	n8, n8, a5
	ld	n6, 0(t1)
	lh	n7, 0(n8)
	ld	n8, 0(t2)
	add	n6, n6, a5
	sh	n7, 0(n6)
	add	n8, n8, a5
	ld	n6, 0(t3)
	lh	n7, 0(n8)
	ld	n8, 0(t4)
	add	n6, n6, a5
	sh	n7, 0(n6)
	add	n8, n8, a5
	ld	n6, 0(t5)
	lh	n7, 0(n8)
	ld	n8, 0(t6)
	add	n6, n6, a5
	sh	n7, 0(n6)
	add	n8, n8, a5
	ld	n6, 0(n1)
	lh	n7, 0(n8)
	ld	n8, 0(n2)
	add	n6, n6, a5
	sh	n7, 0(n6)
	add	n8, n8, a5
	ld	n6, 0(n3)
	lh	n7, 0(n8)
	ld	n8, 0(n4)
	add	n6, n6, a5
	sh	n7, 0(n6)
	add	n8, n8, a5
	ld	n6, 0(n5)
	lh	n7, 0(n8)
	add	n6, n6, a5
	sh	n7, 0(n6)
	j	.LBB0_33
.LBB0_36:
	ld	ra, 1304(sp)                    # 8-byte Folded Reload
	ld	s0, 1296(sp)                    # 8-byte Folded Reload
	ld	s1, 1288(sp)                    # 8-byte Folded Reload
	ld	s2, 1280(sp)                    # 8-byte Folded Reload
	ld	s3, 1272(sp)                    # 8-byte Folded Reload
	ld	s4, 1264(sp)                    # 8-byte Folded Reload
	ld	s5, 1256(sp)                    # 8-byte Folded Reload
	ld	s6, 1248(sp)                    # 8-byte Folded Reload
	ld	s7, 1240(sp)                    # 8-byte Folded Reload
	ld	s8, 1232(sp)                    # 8-byte Folded Reload
	ld	s9, 1224(sp)                    # 8-byte Folded Reload
	ld	s10, 1216(sp)                   # 8-byte Folded Reload
	ld	s11, 1208(sp)                   # 8-byte Folded Reload
	addi	sp, sp, 1312
	ret
.Lfunc_end0:
	.size	decode_one_b8block, .Lfunc_end0-decode_one_b8block
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Get_Reference_Block             # -- Begin function Get_Reference_Block
	.p2align	2
	.type	Get_Reference_Block,@function
Get_Reference_Block:                    # @Get_Reference_Block
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
	mv	s1, a5
	mv	s0, a0
	slli	a1, a1, 4
	ld	s7, 0(a5)
	addw	s2, a1, a4
	slli	a2, a2, 4
	addw	s3, a2, a3
	mv	a1, s2
	mv	a2, s3
	call	Get_Reference_Pixel
	sh	a0, 0(s7)
	addiw	s4, s3, 4
	mv	a0, s0
	mv	a1, s2
	mv	a2, s4
	call	Get_Reference_Pixel
	sh	a0, 2(s7)
	addiw	s5, s3, 8
	mv	a0, s0
	mv	a1, s2
	mv	a2, s5
	call	Get_Reference_Pixel
	sh	a0, 4(s7)
	addiw	s6, s3, 12
	mv	a0, s0
	mv	a1, s2
	mv	a2, s6
	call	Get_Reference_Pixel
	ld	s8, 8(s1)
	sh	a0, 6(s7)
	addiw	s7, s2, 4
	mv	a0, s0
	mv	a1, s7
	mv	a2, s3
	call	Get_Reference_Pixel
	sh	a0, 0(s8)
	mv	a0, s0
	mv	a1, s7
	mv	a2, s4
	call	Get_Reference_Pixel
	sh	a0, 2(s8)
	mv	a0, s0
	mv	a1, s7
	mv	a2, s5
	call	Get_Reference_Pixel
	sh	a0, 4(s8)
	mv	a0, s0
	mv	a1, s7
	mv	a2, s6
	call	Get_Reference_Pixel
	ld	s9, 16(s1)
	sh	a0, 6(s8)
	addiw	s7, s2, 8
	mv	a0, s0
	mv	a1, s7
	mv	a2, s3
	call	Get_Reference_Pixel
	sh	a0, 0(s9)
	mv	a0, s0
	mv	a1, s7
	mv	a2, s4
	call	Get_Reference_Pixel
	sh	a0, 2(s9)
	mv	a0, s0
	mv	a1, s7
	mv	a2, s5
	call	Get_Reference_Pixel
	sh	a0, 4(s9)
	mv	a0, s0
	mv	a1, s7
	mv	a2, s6
	call	Get_Reference_Pixel
	ld	s1, 24(s1)
	sh	a0, 6(s9)
	addiw	s2, s2, 12
	mv	a0, s0
	mv	a1, s2
	mv	a2, s3
	call	Get_Reference_Pixel
	sh	a0, 0(s1)
	mv	a0, s0
	mv	a1, s2
	mv	a2, s4
	call	Get_Reference_Pixel
	sh	a0, 2(s1)
	mv	a0, s0
	mv	a1, s2
	mv	a2, s5
	call	Get_Reference_Pixel
	sh	a0, 4(s1)
	mv	a0, s0
	mv	a1, s2
	mv	a2, s6
	call	Get_Reference_Pixel
	sh	a0, 6(s1)
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
	ret
.Lfunc_end1:
	.size	Get_Reference_Block, .Lfunc_end1-Get_Reference_Block
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	decode_one_mb                   # -- Begin function decode_one_mb
	.p2align	2
	.type	decode_one_mb,@function
decode_one_mb:                          # @decode_one_mb
# %bb.0:
	ret
.Lfunc_end2:
	.size	decode_one_mb, .Lfunc_end2-decode_one_mb
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Get_Reference_Pixel             # -- Begin function Get_Reference_Pixel
	.p2align	2
	.type	Get_Reference_Pixel,@function
Get_Reference_Pixel:                    # @Get_Reference_Pixel
# %bb.0:
	lui	a3, %hi(img)
	ld	a3, %lo(img)(a3)
	lw	a6, 52(a3)
	srai	a7, a2, 2
	srai	a5, a1, 2
	lw	a4, 60(a3)
	addiw	a6, a6, -1
	or	t0, a2, a1
	andi	t0, t0, 3
	addiw	a4, a4, -1
	beqz	t0, .LBB3_35
# %bb.1:
	andi	a1, a1, 3
	andi	a2, a2, 3
	beqz	a1, .LBB3_40
# %bb.2:
	beqz	a2, .LBB3_59
# %bb.3:
	li	t0, 2
	bne	a2, t0, .LBB3_78
# %bb.4:
	addi	t0, a7, -2
	mv	a2, a6
	blt	a6, t0, .LBB3_6
# %bb.5:
	mv	a2, t0
.LBB3_6:
	addi	t2, a5, -2
	sgtz	t0, a2
	mv	t1, a4
	blt	a4, t2, .LBB3_8
# %bb.7:
	mv	t1, t2
.LBB3_8:
	sgtz	t2, t1
	neg	t2, t2
	and	t1, t2, t1
	slli	t1, t1, 3
	add	t1, a0, t1
	ld	t5, 0(t1)
	addi	t2, a7, -1
	neg	t0, t0
	mv	t1, a6
	blt	a6, t2, .LBB3_10
# %bb.9:
	mv	t1, t2
.LBB3_10:
	and	t0, t0, a2
	sgtz	a2, t1
	neg	a2, a2
	and	a2, a2, t1
	slli	a2, a2, 1
	add	t1, t5, a2
	mv	t2, a6
	blt	a6, a7, .LBB3_12
# %bb.11:
	mv	t2, a7
.LBB3_12:
	slli	t0, t0, 1
	lhu	t1, 0(t1)
	sgtz	t3, t2
	neg	t3, t3
	and	t2, t3, t2
	addi	t4, a7, 1
	slli	t2, t2, 1
	mv	t3, a6
	blt	a6, t4, .LBB3_14
# %bb.13:
	mv	t3, t4
.LBB3_14:
	add	t4, t5, t0
	slli	n1, t1, 2
	add	n2, t5, t2
	sgtz	t6, t3
	neg	t6, t6
	and	t3, t6, t3
	addi	t6, a7, 2
	slli	t3, t3, 1
	mv	n4, a6
	blt	a6, t6, .LBB3_16
# %bb.15:
	mv	n4, t6
.LBB3_16:
	lhu	t6, 0(t4)
	add	n1, n1, t1
	lhu	n2, 0(n2)
	li	t1, 20
	add	n3, t5, t3
	sgtz	t4, n4
	neg	t4, t4
	and	t4, t4, n4
	slli	t4, t4, 1
	addi	n4, a7, 3
	add	a7, t5, t4
	blt	a6, n4, .LBB3_18
# %bb.17:
	mv	a6, n4
.LBB3_18:
	subw	t6, t6, n1
	mul	n1, n2, t1
	lhu	n3, 0(n3)
	lhu	a7, 0(a7)
	sgtz	n2, a6
	neg	n2, n2
	addi	n4, a5, -1
	and	a6, n2, a6
	mv	n2, a4
	blt	a4, n4, .LBB3_20
# %bb.19:
	mv	n2, n4
.LBB3_20:
	sgtz	n4, n2
	neg	n4, n4
	and	n2, n4, n2
	slli	n2, n2, 3
	add	n2, a0, n2
	ld	n2, 0(n2)
	add	t6, n1, t6
	mul	n1, n3, t1
	add	n3, n2, t0
	add	n4, n2, a2
	lhu	n4, 0(n4)
	lhu	n5, 0(n3)
	slli	n3, a7, 2
	slli	a6, a6, 1
	slli	n6, n4, 2
	subw	n4, n5, n4
	subw	n6, n4, n6
	add	n4, n2, t2
	lhu	n5, 0(n4)
	add	n4, n2, t3
	lhu	n7, 0(n4)
	add	n4, n2, t4
	lhu	n4, 0(n4)
	mul	n5, n5, t1
	add	n6, n5, n6
	mul	n7, n7, t1
	slli	n5, n4, 2
	mv	n8, a4
	blt	a4, a5, .LBB3_22
# %bb.21:
	mv	n8, a5
.LBB3_22:
	add	t6, n1, t6
	sgtz	n1, n8
	neg	n1, n1
	and	n1, n1, n8
	slli	n1, n1, 3
	add	n1, a0, n1
	ld	n9, 0(n1)
	add	n3, n3, a7
	add	t5, t5, a6
	add	n1, n7, n6
	add	a7, n9, t0
	add	n6, n9, a2
	lhu	n6, 0(n6)
	lhu	n7, 0(a7)
	add	n4, n5, n4
	add	a7, n2, a6
	slli	n2, n6, 2
	subw	n5, n7, n6
	add	n6, n9, t2
	lhu	n6, 0(n6)
	subw	n2, n5, n2
	add	n5, n9, t3
	lhu	n5, 0(n5)
	mul	n6, n6, t1
	add	n7, n9, t4
	lhu	n7, 0(n7)
	mul	n5, n5, t1
	add	n5, n5, n6
	add	n2, n5, n2
	slli	n6, n7, 2
	add	n6, n6, n7
	addi	n8, a5, 1
	add	n5, n9, a6
	mv	n7, a4
	blt	a4, n8, .LBB3_24
# %bb.23:
	mv	n7, n8
.LBB3_24:
	sgtz	n8, n7
	neg	n8, n8
	and	n7, n8, n7
	slli	n7, n7, 3
	add	n7, a0, n7
	ld	n7, 0(n7)
	subw	t6, t6, n3
	add	n3, n7, t0
	add	n8, n7, a2
	lhu	n8, 0(n8)
	lhu	n3, 0(n3)
	subw	n1, n1, n4
	subw	n2, n2, n6
	slli	n4, n8, 2
	subw	n3, n3, n8
	add	n6, n7, t2
	lhu	n6, 0(n6)
	add	n8, n7, t3
	lhu	n8, 0(n8)
	subw	n4, n3, n4
	lhu	t5, 0(t5)
	mul	n3, n6, t1
	mul	n6, n8, t1
	add	n6, n6, n3
	add	n3, n7, t4
	lhu	n8, 0(n3)
	lhu	a7, 0(a7)
	lhu	n3, 0(n5)
	add	n6, n6, n4
	slli	n5, n8, 2
	add	n7, n7, a6
	lhu	n4, 0(n7)
	add	n5, n5, n8
	addi	n7, a5, 2
	subw	n5, n6, n5
	mv	n6, a4
	blt	a4, n7, .LBB3_26
# %bb.25:
	mv	n6, n7
.LBB3_26:
	sgtz	n7, n6
	neg	n7, n7
	and	n6, n7, n6
	slli	n6, n6, 3
	add	n6, a0, n6
	ld	n6, 0(n6)
	add	t6, t6, t5
	add	t5, n6, t0
	lhu	n7, 0(t5)
	add	t5, n6, a2
	lhu	n8, 0(t5)
	add	n1, n1, a7
	add	t5, n2, n3
	add	a7, n5, n4
	subw	n2, n7, n8
	add	n3, n6, t2
	lhu	n3, 0(n3)
	add	n4, n6, t3
	lhu	n4, 0(n4)
	slli	n8, n8, 2
	subw	n2, n2, n8
	mul	n3, n3, t1
	mul	n4, n4, t1
	add	n3, n4, n3
	add	n4, n6, t4
	lhu	n4, 0(n4)
	add	n6, n6, a6
	lhu	n5, 0(n6)
	add	n3, n3, n2
	slli	n2, n4, 2
	add	n2, n2, n4
	subw	n4, n2, n5
	addi	n2, a5, 3
	subw	a5, n3, n4
	blt	a4, n2, .LBB3_28
# %bb.27:
	mv	a4, n2
.LBB3_28:
	sgtz	n2, a4
	neg	n2, n2
	and	a4, n2, a4
	slli	a4, a4, 3
	add	a0, a0, a4
	ld	a0, 0(a0)
	add	a2, a0, a2
	lhu	a2, 0(a2)
	add	t0, a0, t0
	lhu	a4, 0(t0)
	slli	t0, a2, 2
	add	t2, a0, t2
	lhu	t2, 0(t2)
	add	t3, a0, t3
	lhu	t3, 0(t3)
	subw	a4, a4, a2
	subw	a2, a4, t0
	mul	a4, t2, t1
	mul	t0, t3, t1
	add	a4, t0, a4
	add	t4, a0, t4
	lhu	t0, 0(t4)
	add	a0, a0, a6
	lhu	a0, 0(a0)
	add	a2, a4, a2
	slli	a4, t0, 2
	add	a4, a4, t0
	subw	a4, a4, a0
	subw	a2, a2, a4
	slli	a0, n1, 2
	add	a0, a0, n1
	mul	a4, t5, t1
	add	a4, a4, t6
	subw	a4, a4, a0
	mul	a0, a7, t1
	slli	a6, a5, 2
	add	a5, a6, a5
	subw	a0, a0, a5
	add	a0, a0, a4
	add	a2, a2, a0
	lui	a0, 22
	add	a0, a3, a0
	lw	a0, 420(a0)
	addi	a2, a2, 512
	sraiw	a3, a2, 31
	srliw	a3, a3, 22
	add	a2, a2, a3
	sraiw	a3, a2, 10
	mv	a2, a0
	blt	a0, a3, .LBB3_30
# %bb.29:
	mv	a2, a3
.LBB3_30:
	sgtz	a3, a2
	neg	a3, a3
	li	a4, 1
	and	a3, a3, a2
	beq	a1, a4, .LBB3_144
# %bb.31:
	li	a2, 3
	bne	a1, a2, .LBB3_143
# %bb.32:
	addi	a7, a7, 16
	sraiw	a1, a7, 31
	srliw	a1, a1, 27
	add	a1, a7, a1
	sraiw	a1, a1, 5
	blt	a0, a1, .LBB3_34
.LBB3_33:
	mv	a0, a1
.LBB3_34:
	sgtz	a1, a0
	negw	a1, a1
	and	a0, a1, a0
	add	a0, a0, a3
	srliw	a3, a0, 1
	andi	a0, a3, 255
	ret
.LBB3_35:
	blt	a4, a5, .LBB3_37
# %bb.36:
	mv	a4, a5
.LBB3_37:
	sgtz	a1, a4
	neg	a1, a1
	and	a1, a1, a4
	slli	a1, a1, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	blt	a6, a7, .LBB3_39
# %bb.38:
	mv	a6, a7
.LBB3_39:
	sgtz	a1, a6
	neg	a1, a1
	and	a1, a1, a6
	slli	a1, a1, 1
	add	a0, a0, a1
	lhu	a3, 0(a0)
	andi	a0, a3, 255
	ret
.LBB3_40:
	blt	a4, a5, .LBB3_42
# %bb.41:
	mv	a4, a5
.LBB3_42:
	sgtz	a1, a4
	neg	a1, a1
	and	a1, a1, a4
	slli	a1, a1, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	addi	a4, a7, -2
	mv	a1, a6
	blt	a6, a4, .LBB3_44
# %bb.43:
	mv	a1, a4
.LBB3_44:
	sgtz	a4, a1
	neg	a4, a4
	and	a1, a4, a1
	slli	a1, a1, 1
	add	a1, a0, a1
	lhu	a1, 0(a1)
	addi	a5, a7, -1
	mv	a4, a6
	blt	a6, a5, .LBB3_46
# %bb.45:
	mv	a4, a5
.LBB3_46:
	sgtz	a5, a4
	neg	a5, a5
	and	a4, a5, a4
	slli	a4, a4, 1
	add	a4, a0, a4
	lhu	a4, 0(a4)
	slli	a5, a4, 2
	subw	a1, a1, a4
	subw	a4, a1, a5
	mv	a1, a6
	blt	a6, a7, .LBB3_48
# %bb.47:
	mv	a1, a7
.LBB3_48:
	sgtz	a5, a1
	neg	a5, a5
	and	a1, a5, a1
	slli	a1, a1, 1
	add	a1, a0, a1
	lhu	a1, 0(a1)
	li	a5, 20
	mul	t0, a1, a5
	addi	t1, a7, 1
	add	a4, t0, a4
	mv	t0, a6
	blt	a6, t1, .LBB3_50
# %bb.49:
	mv	t0, t1
.LBB3_50:
	sgtz	t1, t0
	neg	t1, t1
	and	t0, t1, t0
	slli	t0, t0, 1
	add	t0, a0, t0
	lhu	t0, 0(t0)
	mul	a5, t0, a5
	addi	t0, a7, 2
	add	a4, a5, a4
	mv	a5, a6
	blt	a6, t0, .LBB3_52
# %bb.51:
	mv	a5, t0
.LBB3_52:
	sgtz	t0, a5
	neg	t0, t0
	and	a5, t0, a5
	slli	a5, a5, 1
	add	a5, a0, a5
	lhu	a5, 0(a5)
	slli	t0, a5, 2
	add	a5, t0, a5
	addi	t0, a7, 3
	subw	a4, a4, a5
	mv	a5, a6
	blt	a6, t0, .LBB3_54
# %bb.53:
	mv	a5, t0
.LBB3_54:
	sgtz	t0, a5
	neg	t0, t0
	and	a5, t0, a5
	slli	a5, a5, 1
	add	a5, a0, a5
	lhu	a5, 0(a5)
	add	a4, a4, a5
	lui	a5, 22
	add	a3, a3, a5
	lw	a3, 420(a3)
	addi	a4, a4, 16
	sraiw	a5, a4, 31
	srliw	a5, a5, 27
	add	a4, a4, a5
	sraiw	a4, a4, 5
	blt	a3, a4, .LBB3_56
# %bb.55:
	mv	a3, a4
.LBB3_56:
	sgtz	a4, a3
	neg	a4, a4
	li	a5, 3
	and	a3, a4, a3
	beq	a2, a5, .LBB3_107
# %bb.57:
	li	a0, 1
	bne	a2, a0, .LBB3_143
# %bb.58:
	add	a1, a3, a1
	srliw	a3, a1, 1
	andi	a0, a3, 255
	ret
.LBB3_59:
	blt	a6, a7, .LBB3_61
# %bb.60:
	mv	a6, a7
.LBB3_61:
	sgtz	a2, a6
	neg	a2, a2
	addi	a7, a5, -2
	and	a2, a2, a6
	mv	a6, a4
	blt	a4, a7, .LBB3_63
# %bb.62:
	mv	a6, a7
.LBB3_63:
	sgtz	a7, a6
	neg	a7, a7
	and	a6, a7, a6
	slli	a6, a6, 3
	add	a6, a0, a6
	ld	a6, 0(a6)
	slli	a2, a2, 1
	add	a6, a6, a2
	lhu	a6, 0(a6)
	addi	t0, a5, -1
	mv	a7, a4
	blt	a4, t0, .LBB3_65
# %bb.64:
	mv	a7, t0
.LBB3_65:
	sgtz	t0, a7
	neg	t0, t0
	and	a7, t0, a7
	slli	a7, a7, 3
	add	a7, a0, a7
	ld	a7, 0(a7)
	add	a7, a7, a2
	lhu	a7, 0(a7)
	slli	t0, a7, 2
	subw	a6, a6, a7
	subw	a7, a6, t0
	mv	a6, a4
	blt	a4, a5, .LBB3_67
# %bb.66:
	mv	a6, a5
.LBB3_67:
	sgtz	t0, a6
	neg	t0, t0
	and	a6, t0, a6
	slli	a6, a6, 3
	add	a6, a0, a6
	ld	a6, 0(a6)
	add	a6, a6, a2
	lhu	a6, 0(a6)
	li	t0, 20
	mul	t1, a6, t0
	addi	t2, a5, 1
	add	a7, t1, a7
	mv	t1, a4
	blt	a4, t2, .LBB3_69
# %bb.68:
	mv	t1, t2
.LBB3_69:
	sgtz	t2, t1
	neg	t2, t2
	and	t1, t2, t1
	slli	t1, t1, 3
	add	t1, a0, t1
	ld	t1, 0(t1)
	add	t1, t1, a2
	lhu	t1, 0(t1)
	mul	t0, t1, t0
	addi	t1, a5, 2
	add	a7, t0, a7
	mv	t0, a4
	blt	a4, t1, .LBB3_71
# %bb.70:
	mv	t0, t1
.LBB3_71:
	sgtz	t1, t0
	neg	t1, t1
	and	t0, t1, t0
	slli	t0, t0, 3
	add	t0, a0, t0
	ld	t0, 0(t0)
	add	t0, t0, a2
	lhu	t0, 0(t0)
	slli	t1, t0, 2
	add	t0, t1, t0
	addi	t1, a5, 3
	subw	a7, a7, t0
	mv	t0, a4
	blt	a4, t1, .LBB3_73
# %bb.72:
	mv	t0, t1
.LBB3_73:
	sgtz	t1, t0
	neg	t1, t1
	and	t0, t1, t0
	slli	t0, t0, 3
	add	t0, a0, t0
	ld	t0, 0(t0)
	add	t0, t0, a2
	lhu	t0, 0(t0)
	add	a7, a7, t0
	lui	t0, 22
	add	a3, a3, t0
	lw	a3, 420(a3)
	addi	a7, a7, 16
	sraiw	t0, a7, 31
	srliw	t0, t0, 27
	add	a7, a7, t0
	sraiw	a7, a7, 5
	blt	a3, a7, .LBB3_75
# %bb.74:
	mv	a3, a7
.LBB3_75:
	sgtz	a7, a3
	neg	a7, a7
	li	t0, 3
	and	a3, a7, a3
	beq	a1, t0, .LBB3_145
# %bb.76:
	li	a0, 1
	bne	a1, a0, .LBB3_143
# %bb.77:
	add	a3, a3, a6
	srliw	a3, a3, 1
	andi	a0, a3, 255
	ret
.LBB3_78:
	bne	a1, t0, .LBB3_110
# %bb.79:
	addi	t0, a5, -2
	mv	a1, a4
	blt	a4, t0, .LBB3_81
# %bb.80:
	mv	a1, t0
.LBB3_81:
	sgtz	t0, a1
	neg	t0, t0
	addi	t1, a7, -2
	and	t0, t0, a1
	mv	a1, a6
	blt	a6, t1, .LBB3_83
# %bb.82:
	mv	a1, t1
.LBB3_83:
	slli	t0, t0, 3
	sgtz	t1, a1
	neg	t1, t1
	and	t5, t1, a1
	addi	t1, a5, -1
	slli	t5, t5, 1
	mv	a1, a4
	blt	a4, t1, .LBB3_85
# %bb.84:
	mv	a1, t1
.LBB3_85:
	sgtz	t1, a1
	neg	t1, t1
	and	a1, t1, a1
	slli	a1, a1, 3
	add	a1, a0, a1
	ld	a1, 0(a1)
	add	t0, a0, t0
	add	t2, a1, t5
	mv	t1, a4
	blt	a4, a5, .LBB3_87
# %bb.86:
	mv	t1, a5
.LBB3_87:
	ld	t0, 0(t0)
	lhu	t2, 0(t2)
	sgtz	t3, t1
	neg	t3, t3
	and	t1, t3, t1
	slli	t1, t1, 3
	add	t1, a0, t1
	ld	t1, 0(t1)
	addi	t4, a5, 1
	mv	t3, a4
	blt	a4, t4, .LBB3_89
# %bb.88:
	mv	t3, t4
.LBB3_89:
	add	t4, t0, t5
	sgtz	t6, t3
	neg	t6, t6
	and	t3, t6, t3
	slli	t3, t3, 3
	add	t3, a0, t3
	ld	t3, 0(t3)
	slli	n1, t2, 2
	addi	t6, a5, 2
	add	n2, t1, t5
	mv	n3, a4
	blt	a4, t6, .LBB3_91
# %bb.90:
	mv	n3, t6
.LBB3_91:
	lhu	t6, 0(t4)
	add	n1, n1, t2
	lhu	n2, 0(n2)
	sgtz	t2, n3
	neg	t2, t2
	and	t2, t2, n3
	slli	t2, t2, 3
	add	t2, a0, t2
	ld	t4, 0(t2)
	li	t2, 20
	add	n3, t3, t5
	addi	n4, a5, 3
	add	a5, t4, t5
	blt	a4, n4, .LBB3_93
# %bb.92:
	mv	a4, n4
.LBB3_93:
	subw	t6, t6, n1
	mul	n1, n2, t2
	lhu	n2, 0(n3)
	lhu	a5, 0(a5)
	sgtz	n3, a4
	neg	n3, n3
	and	a4, n3, a4
	slli	a4, a4, 3
	addi	n3, a7, -1
	add	a0, a0, a4
	mv	a4, a6
	blt	a6, n3, .LBB3_95
# %bb.94:
	mv	a4, n3
.LBB3_95:
	add	t6, n1, t6
	mul	n1, n2, t2
	sgtz	n2, a4
	neg	n2, n2
	and	a4, n2, a4
	slli	a4, a4, 1
	add	n2, t0, a4
	add	n3, a1, a4
	lhu	n3, 0(n3)
	lhu	n4, 0(n2)
	slli	n2, a5, 2
	ld	a0, 0(a0)
	slli	n5, n3, 2
	subw	n3, n4, n3
	subw	n6, n3, n5
	add	n3, t1, a4
	lhu	n4, 0(n3)
	add	n3, t3, a4
	lhu	n5, 0(n3)
	add	n3, t4, a4
	lhu	n3, 0(n3)
	mul	n4, n4, t2
	add	n6, n4, n6
	mul	n7, n5, t2
	slli	n4, n3, 2
	mv	n5, a6
	blt	a6, a7, .LBB3_97
# %bb.96:
	mv	n5, a7
.LBB3_97:
	add	t6, n1, t6
	add	n2, n2, a5
	add	t5, a0, t5
	add	a5, n7, n6
	sgtz	n1, n5
	neg	n1, n1
	and	n1, n1, n5
	slli	n6, n1, 1
	add	n1, t0, n6
	add	n5, a1, n6
	lhu	n5, 0(n5)
	lhu	n7, 0(n1)
	add	n1, n4, n3
	add	a4, a0, a4
	slli	n3, n5, 2
	subw	n4, n7, n5
	add	n5, t1, n6
	lhu	n5, 0(n5)
	subw	n4, n4, n3
	add	n3, t3, n6
	lhu	n3, 0(n3)
	mul	n5, n5, t2
	add	n7, t4, n6
	lhu	n7, 0(n7)
	mul	n3, n3, t2
	add	n3, n3, n5
	add	n4, n3, n4
	slli	n5, n7, 2
	add	n5, n5, n7
	addi	n7, a7, 1
	add	n3, a0, n6
	mv	n6, a6
	blt	a6, n7, .LBB3_99
# %bb.98:
	mv	n6, n7
.LBB3_99:
	subw	t6, t6, n2
	sgtz	n2, n6
	neg	n2, n2
	and	n2, n2, n6
	slli	n6, n2, 1
	add	n2, t0, n6
	add	n7, a1, n6
	lhu	n7, 0(n7)
	lhu	n2, 0(n2)
	subw	a5, a5, n1
	subw	n1, n4, n5
	slli	n4, n7, 2
	subw	n2, n2, n7
	add	n5, t1, n6
	lhu	n5, 0(n5)
	add	n7, t3, n6
	lhu	n7, 0(n7)
	subw	n4, n2, n4
	lhu	t5, 0(t5)
	mul	n2, n5, t2
	mul	n5, n7, t2
	add	n5, n5, n2
	add	n2, t4, n6
	lhu	n7, 0(n2)
	lhu	a4, 0(a4)
	lhu	n2, 0(n3)
	add	n4, n5, n4
	slli	n5, n7, 2
	add	n6, a0, n6
	lhu	n3, 0(n6)
	add	n5, n5, n7
	addi	n6, a7, 2
	subw	n4, n4, n5
	mv	n5, a6
	blt	a6, n6, .LBB3_101
# %bb.100:
	mv	n5, n6
.LBB3_101:
	add	t5, t6, t5
	sgtz	t6, n5
	neg	t6, t6
	and	t6, t6, n5
	slli	n5, t6, 1
	add	t6, t0, n5
	lhu	n6, 0(t6)
	add	t6, a1, n5
	lhu	n7, 0(t6)
	add	t6, a5, a4
	add	a4, n1, n2
	add	a5, n4, n3
	subw	n1, n6, n7
	add	n2, t1, n5
	lhu	n2, 0(n2)
	add	n3, t3, n5
	lhu	n3, 0(n3)
	slli	n7, n7, 2
	subw	n1, n1, n7
	mul	n2, n2, t2
	mul	n3, n3, t2
	add	n2, n3, n2
	add	n3, t4, n5
	lhu	n3, 0(n3)
	add	n5, a0, n5
	lhu	n4, 0(n5)
	add	n2, n2, n1
	slli	n1, n3, 2
	add	n1, n1, n3
	subw	n3, n1, n4
	addi	n1, a7, 3
	subw	a7, n2, n3
	blt	a6, n1, .LBB3_103
# %bb.102:
	mv	a6, n1
.LBB3_103:
	sgtz	n1, a6
	neg	n1, n1
	and	a6, n1, a6
	slli	a6, a6, 1
	add	a1, a1, a6
	lhu	a1, 0(a1)
	add	t0, t0, a6
	lhu	t0, 0(t0)
	slli	n1, a1, 2
	add	t1, t1, a6
	lhu	t1, 0(t1)
	add	t3, t3, a6
	lhu	t3, 0(t3)
	subw	a1, t0, a1
	subw	a1, a1, n1
	mul	t0, t1, t2
	mul	t1, t3, t2
	add	t0, t1, t0
	add	t4, t4, a6
	lhu	t1, 0(t4)
	add	a0, a0, a6
	lhu	a0, 0(a0)
	add	a1, t0, a1
	slli	a6, t1, 2
	add	a6, a6, t1
	subw	a0, a6, a0
	subw	a1, a1, a0
	slli	a0, t6, 2
	add	a0, a0, t6
	mul	a6, a4, t2
	add	a6, a6, t5
	subw	a0, a6, a0
	mul	a6, a5, t2
	slli	t0, a7, 2
	add	a7, t0, a7
	subw	a6, a6, a7
	add	a0, a6, a0
	add	a1, a1, a0
	lui	a0, 22
	add	a0, a3, a0
	lw	a0, 420(a0)
	addi	a1, a1, 512
	sraiw	a3, a1, 31
	srliw	a3, a3, 22
	add	a1, a1, a3
	sraiw	a3, a1, 10
	mv	a1, a0
	blt	a0, a3, .LBB3_105
# %bb.104:
	mv	a1, a3
.LBB3_105:
	sgtz	a3, a1
	neg	a3, a3
	li	a6, 1
	and	a1, a3, a1
	bne	a2, a6, .LBB3_149
# %bb.106:
	addi	a4, a4, 16
	sraiw	a2, a4, 31
	srliw	a2, a2, 27
	add	a2, a4, a2
	j	.LBB3_150
.LBB3_107:
	addi	a7, a7, 1
	blt	a6, a7, .LBB3_109
# %bb.108:
	mv	a6, a7
.LBB3_109:
	sgtz	a1, a6
	neg	a1, a1
	and	a1, a1, a6
	slli	a1, a1, 1
	add	a0, a0, a1
	j	.LBB3_148
.LBB3_110:
	addi	a1, a1, -1
	snez	t0, a1
	add	t0, a5, t0
	mv	a1, a4
	blt	a4, t0, .LBB3_112
# %bb.111:
	mv	a1, t0
.LBB3_112:
	sgtz	t0, a1
	neg	t0, t0
	and	a1, t0, a1
	slli	a1, a1, 3
	add	a1, a0, a1
	ld	a1, 0(a1)
	addi	t1, a7, -2
	mv	t0, a6
	blt	a6, t1, .LBB3_114
# %bb.113:
	mv	t0, t1
.LBB3_114:
	sgtz	t1, t0
	neg	t1, t1
	and	t0, t1, t0
	slli	t0, t0, 1
	add	t0, a1, t0
	lhu	t0, 0(t0)
	addi	t2, a7, -1
	mv	t1, a6
	blt	a6, t2, .LBB3_116
# %bb.115:
	mv	t1, t2
.LBB3_116:
	sgtz	t2, t1
	neg	t2, t2
	and	t1, t2, t1
	slli	t1, t1, 1
	add	t1, a1, t1
	lhu	t1, 0(t1)
	slli	t2, t1, 2
	subw	t0, t0, t1
	subw	t1, t0, t2
	mv	t0, a6
	blt	a6, a7, .LBB3_118
# %bb.117:
	mv	t0, a7
.LBB3_118:
	sgtz	t2, t0
	neg	t2, t2
	and	t0, t2, t0
	slli	t0, t0, 1
	add	t0, a1, t0
	lhu	t2, 0(t0)
	li	t0, 20
	mul	t2, t2, t0
	addi	t3, a7, 1
	add	t1, t2, t1
	mv	t2, a6
	blt	a6, t3, .LBB3_120
# %bb.119:
	mv	t2, t3
.LBB3_120:
	sgtz	t3, t2
	neg	t3, t3
	and	t2, t3, t2
	slli	t2, t2, 1
	add	t2, a1, t2
	lhu	t2, 0(t2)
	mul	t2, t2, t0
	addi	t3, a7, 2
	add	t1, t2, t1
	mv	t2, a6
	blt	a6, t3, .LBB3_122
# %bb.121:
	mv	t2, t3
.LBB3_122:
	sgtz	t3, t2
	neg	t3, t3
	and	t2, t3, t2
	slli	t2, t2, 1
	add	t2, a1, t2
	lhu	t2, 0(t2)
	slli	t3, t2, 2
	add	t2, t3, t2
	addi	t3, a7, 3
	subw	t1, t1, t2
	mv	t2, a6
	blt	a6, t3, .LBB3_124
# %bb.123:
	mv	t2, t3
.LBB3_124:
	sgtz	t3, t2
	neg	t3, t3
	and	t2, t3, t2
	slli	t2, t2, 1
	add	a1, a1, t2
	lhu	a1, 0(a1)
	add	t1, t1, a1
	lui	a1, 22
	add	a1, a3, a1
	lw	a1, 420(a1)
	addi	t1, t1, 16
	sraiw	a3, t1, 31
	srliw	a3, a3, 27
	add	a3, t1, a3
	sraiw	t1, a3, 5
	mv	a3, a1
	blt	a1, t1, .LBB3_126
# %bb.125:
	mv	a3, t1
.LBB3_126:
	addi	a2, a2, -1
	snez	a2, a2
	add	a7, a7, a2
	blt	a6, a7, .LBB3_128
# %bb.127:
	mv	a6, a7
.LBB3_128:
	sgtz	a2, a6
	neg	a2, a2
	addi	a7, a5, -2
	and	a2, a2, a6
	mv	a6, a4
	blt	a4, a7, .LBB3_130
# %bb.129:
	mv	a6, a7
.LBB3_130:
	sgtz	a7, a6
	neg	a7, a7
	and	a6, a7, a6
	slli	a6, a6, 3
	add	a6, a0, a6
	ld	a6, 0(a6)
	slli	a2, a2, 1
	add	a6, a6, a2
	lhu	a6, 0(a6)
	addi	t1, a5, -1
	mv	a7, a4
	blt	a4, t1, .LBB3_132
# %bb.131:
	mv	a7, t1
.LBB3_132:
	sgtz	t1, a7
	neg	t1, t1
	and	a7, t1, a7
	slli	a7, a7, 3
	add	a7, a0, a7
	ld	a7, 0(a7)
	add	a7, a7, a2
	lhu	a7, 0(a7)
	slli	t1, a7, 2
	subw	a6, a6, a7
	subw	a6, a6, t1
	mv	a7, a4
	blt	a4, a5, .LBB3_134
# %bb.133:
	mv	a7, a5
.LBB3_134:
	sgtz	t1, a7
	neg	t1, t1
	and	a7, t1, a7
	slli	a7, a7, 3
	add	a7, a0, a7
	ld	a7, 0(a7)
	add	a7, a7, a2
	lhu	a7, 0(a7)
	mul	a7, a7, t0
	addi	t1, a5, 1
	add	a6, a7, a6
	mv	a7, a4
	blt	a4, t1, .LBB3_136
# %bb.135:
	mv	a7, t1
.LBB3_136:
	sgtz	t1, a7
	neg	t1, t1
	and	a7, t1, a7
	slli	a7, a7, 3
	add	a7, a0, a7
	ld	a7, 0(a7)
	add	a7, a7, a2
	lhu	a7, 0(a7)
	mul	a7, a7, t0
	addi	t0, a5, 2
	add	a6, a7, a6
	mv	a7, a4
	blt	a4, t0, .LBB3_138
# %bb.137:
	mv	a7, t0
.LBB3_138:
	sgtz	t0, a7
	neg	t0, t0
	and	a7, t0, a7
	slli	a7, a7, 3
	add	a7, a0, a7
	ld	a7, 0(a7)
	add	a7, a7, a2
	lhu	a7, 0(a7)
	slli	t0, a7, 2
	add	t0, t0, a7
	addi	a7, a5, 3
	subw	a5, a6, t0
	blt	a4, a7, .LBB3_140
# %bb.139:
	mv	a4, a7
.LBB3_140:
	sgtz	a6, a4
	neg	a6, a6
	and	a4, a6, a4
	slli	a4, a4, 3
	add	a0, a0, a4
	ld	a0, 0(a0)
	add	a0, a0, a2
	lhu	a0, 0(a0)
	add	a0, a5, a0
	sgtz	a2, a3
	neg	a4, a2
	addi	a0, a0, 16
	sraiw	a2, a0, 31
	srliw	a2, a2, 27
	add	a0, a0, a2
	sraiw	a2, a0, 5
	and	a0, a4, a3
	blt	a1, a2, .LBB3_142
# %bb.141:
	mv	a1, a2
.LBB3_142:
	sgtz	a2, a1
	neg	a2, a2
	and	a1, a2, a1
	add	a0, a1, a0
	srli	a3, a0, 1
.LBB3_143:
	andi	a0, a3, 255
	ret
.LBB3_144:
	addi	t5, t5, 16
	sraiw	a1, t5, 31
	srliw	a1, a1, 27
	add	a1, t5, a1
	sraiw	a1, a1, 5
	bge	a0, a1, .LBB3_33
	j	.LBB3_34
.LBB3_145:
	addi	a5, a5, 1
	blt	a4, a5, .LBB3_147
# %bb.146:
	mv	a4, a5
.LBB3_147:
	sgtz	a1, a4
	neg	a1, a1
	and	a1, a1, a4
	slli	a1, a1, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	add	a0, a0, a2
.LBB3_148:
	lhu	a0, 0(a0)
	add	a0, a3, a0
	srliw	a3, a0, 1
	andi	a0, a3, 255
	ret
.LBB3_149:
	addi	a5, a5, 16
	sraiw	a2, a5, 31
	srliw	a2, a2, 27
	add	a2, a5, a2
.LBB3_150:
	sraiw	a2, a2, 5
	blt	a0, a2, .LBB3_152
# %bb.151:
	mv	a0, a2
.LBB3_152:
	sgtz	a2, a0
	negw	a2, a2
	and	a0, a2, a0
	add	a0, a0, a1
	srliw	a3, a0, 1
	andi	a0, a3, 255
	ret
.Lfunc_end3:
	.size	Get_Reference_Pixel, .Lfunc_end3-Get_Reference_Pixel
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	UpdateDecoders                  # -- Begin function UpdateDecoders
	.p2align	2
	.type	UpdateDecoders,@function
UpdateDecoders:                         # @UpdateDecoders
# %bb.0:
	addi	sp, sp, -112
	sd	ra, 104(sp)                     # 8-byte Folded Spill
	sd	s0, 96(sp)                      # 8-byte Folded Spill
	sd	s1, 88(sp)                      # 8-byte Folded Spill
	sd	s2, 80(sp)                      # 8-byte Folded Spill
	sd	s3, 72(sp)                      # 8-byte Folded Spill
	sd	s4, 64(sp)                      # 8-byte Folded Spill
	sd	s5, 56(sp)                      # 8-byte Folded Spill
	sd	s6, 48(sp)                      # 8-byte Folded Spill
	sd	s7, 40(sp)                      # 8-byte Folded Spill
	sd	s8, 32(sp)                      # 8-byte Folded Spill
	sd	s9, 24(sp)                      # 8-byte Folded Spill
	sd	s10, 16(sp)                     # 8-byte Folded Spill
	sd	s11, 8(sp)                      # 8-byte Folded Spill
	lui	s4, %hi(input)
	ld	a0, %lo(input)(s4)
	addi	a0, a0, 2047
	lw	a0, 1529(a0)
	blez	a0, .LBB4_15
# %bb.1:                                # %.preheader
	li	s6, 0
	lui	s5, %hi(decs)
	lui	s8, %hi(img)
	li	s7, 16
	j	.LBB4_3
.LBB4_2:                                #   in Loop: Header=BB4_3 Depth=1
	ld	a0, %lo(input)(s4)
	addi	a0, a0, 2047
	lw	a0, 1529(a0)
	addi	s6, s6, 1
	bge	s6, a0, .LBB4_15
.LBB4_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_7 Depth 2
                                        #       Child Loop BB4_9 Depth 3
                                        #     Child Loop BB4_14 Depth 2
	ld	a0, %lo(decs)(s5)
	ld	a0, 40(a0)
	call	Build_Status_Map
	ld	a0, %lo(decs)(s5)
	ld	a2, 24(a0)
	ld	a1, %lo(img)(s8)
	slli	a5, s6, 3
	add	a3, a2, a5
	lw	a2, 60(a1)
	ld	s0, 0(a3)
	blt	a2, s7, .LBB4_12
# %bb.4:                                #   in Loop: Header=BB4_3 Depth=1
	lw	a3, 52(a1)
	blt	a3, s7, .LBB4_12
# %bb.5:                                #   in Loop: Header=BB4_3 Depth=1
	ld	a1, 16(a0)
	ld	s10, 40(a0)
	sd	a5, 0(sp)                       # 8-byte Folded Spill
	add	a1, a1, a5
	ld	s2, 0(a1)
	li	s11, 0
	srliw	s5, a3, 4
	srliw	s9, a2, 4
	j	.LBB4_7
.LBB4_6:                                #   in Loop: Header=BB4_7 Depth=2
	addi	s11, s11, 1
	beq	s11, s9, .LBB4_11
.LBB4_7:                                #   Parent Loop BB4_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_9 Depth 3
	li	s3, 0
	li	s7, 0
	slli	s1, s11, 3
	add	s1, s10, s1
	sext.w	s4, s11
	j	.LBB4_9
.LBB4_8:                                #   in Loop: Header=BB4_9 Depth=3
	addi	s7, s7, 1
	addiw	s3, s3, 1
	beq	s5, s7, .LBB4_6
.LBB4_9:                                #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a0, 0(s1)
	add	a0, a0, s7
	lbu	a0, 0(a0)
	beqz	a0, .LBB4_8
# %bb.10:                               #   in Loop: Header=BB4_9 Depth=3
	mv	a0, s0
	mv	a1, s4
	mv	a2, s3
	mv	a3, s2
	mv	a4, s10
	call	Conceal_Error
	j	.LBB4_8
.LBB4_11:                               #   in Loop: Header=BB4_3 Depth=1
	lui	s5, %hi(decs)
	ld	a0, %lo(decs)(s5)
	ld	a2, 24(a0)
	ld	a1, %lo(img)(s8)
	ld	a5, 0(sp)                       # 8-byte Folded Reload
	add	a2, a2, a5
	ld	s0, 0(a2)
	lw	a2, 60(a1)
	lui	s4, %hi(input)
	li	s7, 16
.LBB4_12:                               #   in Loop: Header=BB4_3 Depth=1
	blez	a2, .LBB4_2
# %bb.13:                               #   in Loop: Header=BB4_3 Depth=1
	li	s1, 0
	li	s2, 0
	ld	a0, 16(a0)
	lw	a2, 0(a1)
	lui	a3, %hi(start_frame_no_in_this_IGOP)
	lw	a3, %lo(start_frame_no_in_this_IGOP)(a3)
	lui	a4, 22
	add	a4, a1, a4
	lw	a4, 80(a4)
	add	a0, a0, a5
	ld	s3, 0(a0)
	subw	a2, a2, a3
	remw	a0, a2, a4
	slli	a0, a0, 3
	add	s3, s3, a0
.LBB4_14:                               #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, 0(s3)
	add	a0, a0, s1
	ld	a0, 0(a0)
	add	a2, s0, s1
	lw	a3, 52(a1)
	ld	a1, 0(a2)
	slli	a2, a3, 1
	call	memcpy
	ld	a1, %lo(img)(s8)
	lw	a0, 60(a1)
	addi	s2, s2, 1
	addi	s1, s1, 8
	blt	s2, a0, .LBB4_14
	j	.LBB4_2
.LBB4_15:
	ld	ra, 104(sp)                     # 8-byte Folded Reload
	ld	s0, 96(sp)                      # 8-byte Folded Reload
	ld	s1, 88(sp)                      # 8-byte Folded Reload
	ld	s2, 80(sp)                      # 8-byte Folded Reload
	ld	s3, 72(sp)                      # 8-byte Folded Reload
	ld	s4, 64(sp)                      # 8-byte Folded Reload
	ld	s5, 56(sp)                      # 8-byte Folded Reload
	ld	s6, 48(sp)                      # 8-byte Folded Reload
	ld	s7, 40(sp)                      # 8-byte Folded Reload
	ld	s8, 32(sp)                      # 8-byte Folded Reload
	ld	s9, 24(sp)                      # 8-byte Folded Reload
	ld	s10, 16(sp)                     # 8-byte Folded Reload
	ld	s11, 8(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 112
	ret
.Lfunc_end4:
	.size	UpdateDecoders, .Lfunc_end4-UpdateDecoders
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function Build_Status_Map
.LCPI5_0:
	.quad	0x41dfffffffc00000              # double 2147483647
.LCPI5_1:
	.quad	0x4059000000000000              # double 100
	.text
	.globl	Build_Status_Map
	.p2align	2
	.type	Build_Status_Map,@function
Build_Status_Map:                       # @Build_Status_Map
# %bb.0:
	addi	sp, sp, -160
	sd	ra, 152(sp)                     # 8-byte Folded Spill
	sd	s0, 144(sp)                     # 8-byte Folded Spill
	sd	s1, 136(sp)                     # 8-byte Folded Spill
	sd	s2, 128(sp)                     # 8-byte Folded Spill
	sd	s3, 120(sp)                     # 8-byte Folded Spill
	sd	s4, 112(sp)                     # 8-byte Folded Spill
	sd	s5, 104(sp)                     # 8-byte Folded Spill
	sd	s6, 96(sp)                      # 8-byte Folded Spill
	sd	s7, 88(sp)                      # 8-byte Folded Spill
	sd	s8, 80(sp)                      # 8-byte Folded Spill
	sd	s9, 72(sp)                      # 8-byte Folded Spill
	sd	s10, 64(sp)                     # 8-byte Folded Spill
	sd	s11, 56(sp)                     # 8-byte Folded Spill
	fsd	fs0, 48(sp)                     # 8-byte Folded Spill
	fsd	fs1, 40(sp)                     # 8-byte Folded Spill
	lui	a1, %hi(img)
	ld	a2, %lo(img)(a1)
	lw	a1, 60(a2)
	li	a3, 16
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	blt	a1, a3, .LBB5_15
# %bb.1:
	lw	a2, 52(a2)
	blt	a2, a3, .LBB5_15
# %bb.2:
	li	a3, 0
	li	a0, 0
	li	a4, 0
	srliw	s5, a2, 4
	srliw	a1, a1, 4
	sd	a1, 8(sp)                       # 8-byte Folded Spill
	addi	a1, s5, -1
	slli	a1, a1, 32
	srli	a1, a1, 32
	addi	a1, a1, 1
	sd	a1, 0(sp)                       # 8-byte Folded Spill
	li	s8, -1
	lui	a1, %hi(.LCPI5_0)
	fld	fs0, %lo(.LCPI5_0)(a1)
	lui	a1, %hi(.LCPI5_1)
	fld	fs1, %lo(.LCPI5_1)(a1)
	lui	s10, %hi(input)
	lui	s11, %hi(img)
	lui	s9, 8
	j	.LBB5_4
.LBB5_3:                                #   in Loop: Header=BB5_4 Depth=1
	ld	a3, 32(sp)                      # 8-byte Folded Reload
	addi	a3, a3, 1
	ld	a4, 24(sp)                      # 8-byte Folded Reload
	ld	a1, 0(sp)                       # 8-byte Folded Reload
	addw	a4, a1, a4
	ld	a1, 8(sp)                       # 8-byte Folded Reload
	beq	a3, a1, .LBB5_15
.LBB5_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_8 Depth 2
	li	s0, 0
	sd	a3, 32(sp)                      # 8-byte Folded Spill
	slli	s6, a3, 3
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	add	s6, a1, s6
	sd	a4, 24(sp)                      # 8-byte Folded Spill
	li	a1, 528
	mul	s7, a4, a1
	addi	s7, s7, 4
	j	.LBB5_8
.LBB5_5:                                #   in Loop: Header=BB5_8 Depth=2
	li	a1, 0
.LBB5_6:                                #   in Loop: Header=BB5_8 Depth=2
	ld	a2, 0(s6)
	add	a2, a2, s0
	sb	a1, 0(a2)
.LBB5_7:                                #   in Loop: Header=BB5_8 Depth=2
	addi	s0, s0, 1
	addi	s7, s7, 528
	beq	s5, s0, .LBB5_3
.LBB5_8:                                #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a1, %lo(input)(s10)
	lw	a1, 212(a1)
	beqz	a1, .LBB5_10
# %bb.9:                                #   in Loop: Header=BB5_8 Depth=2
	ld	a1, %lo(img)(s11)
	add	a1, a1, s9
	ld	a1, -1192(a1)
	add	a1, a1, s7
	lw	a1, 0(a1)
	beq	a1, s8, .LBB5_12
.LBB5_10:                               #   in Loop: Header=BB5_8 Depth=2
	call	rand
	ld	a1, %lo(input)(s10)
	addi	a1, a1, 2047
	lw	s4, 1525(a1)
	mv	s1, a0
	call	rand
	ld	a1, %lo(input)(s10)
	addi	a1, a1, 2047
	lw	s3, 1521(a1)
	mv	s2, a0
	call	rand
	ld	a1, %lo(input)(s10)
	addi	a1, a1, 2047
	lw	a1, 1517(a1)
	fcvt.d.w	fa5, a0
	fdiv.d	fa5, fa5, fs0
	fmul.d	fa5, fa5, fs1
	fcvt.d.w	fa4, a1
	flt.d	a1, fa5, fa4
	addiw	s8, s8, 1
	li	a0, 1
	bnez	a1, .LBB5_13
# %bb.11:                               #   in Loop: Header=BB5_8 Depth=2
	fcvt.d.w	fa5, s1
	fdiv.d	fa5, fa5, fs0
	fmul.d	fa5, fa5, fs1
	fcvt.d.w	fa4, s4
	flt.d	a0, fa5, fa4
	negw	a0, a0
	andi	a0, a0, 3
	fcvt.d.w	fa5, s2
	fdiv.d	fa5, fa5, fs0
	fmul.d	fa5, fa5, fs1
	fcvt.d.w	fa4, s3
	flt.d	a1, fa5, fa4
	slli	a1, a1, 1
	addw	a0, a0, a1
.LBB5_12:                               #   in Loop: Header=BB5_8 Depth=2
	beqz	a0, .LBB5_5
.LBB5_13:                               #   in Loop: Header=BB5_8 Depth=2
	ld	a1, 0(s6)
	add	a1, a1, s0
	sb	a0, 0(a1)
	ld	a1, %lo(input)(s10)
	addi	a1, a1, 2047
	lw	a1, 945(a1)
	bnez	a1, .LBB5_7
# %bb.14:                               #   in Loop: Header=BB5_8 Depth=2
	li	a1, 1
	j	.LBB5_6
.LBB5_15:
	ld	ra, 152(sp)                     # 8-byte Folded Reload
	ld	s0, 144(sp)                     # 8-byte Folded Reload
	ld	s1, 136(sp)                     # 8-byte Folded Reload
	ld	s2, 128(sp)                     # 8-byte Folded Reload
	ld	s3, 120(sp)                     # 8-byte Folded Reload
	ld	s4, 112(sp)                     # 8-byte Folded Reload
	ld	s5, 104(sp)                     # 8-byte Folded Reload
	ld	s6, 96(sp)                      # 8-byte Folded Reload
	ld	s7, 88(sp)                      # 8-byte Folded Reload
	ld	s8, 80(sp)                      # 8-byte Folded Reload
	ld	s9, 72(sp)                      # 8-byte Folded Reload
	ld	s10, 64(sp)                     # 8-byte Folded Reload
	ld	s11, 56(sp)                     # 8-byte Folded Reload
	fld	fs0, 48(sp)                     # 8-byte Folded Reload
	fld	fs1, 40(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 160
	ret
.Lfunc_end5:
	.size	Build_Status_Map, .Lfunc_end5-Build_Status_Map
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Error_Concealment               # -- Begin function Error_Concealment
	.p2align	2
	.type	Error_Concealment,@function
Error_Concealment:                      # @Error_Concealment
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
	lui	a3, %hi(img)
	ld	a4, %lo(img)(a3)
	lw	a3, 60(a4)
	li	a5, 16
	blt	a3, a5, .LBB6_8
# %bb.1:
	mv	s2, a0
	lw	a0, 52(a4)
	blt	a0, a5, .LBB6_8
# %bb.2:
	mv	s0, a2
	mv	s1, a1
	li	s5, 0
	srliw	s6, a0, 4
	srliw	s7, a3, 4
	j	.LBB6_4
.LBB6_3:                                #   in Loop: Header=BB6_4 Depth=1
	addi	s5, s5, 1
	beq	s5, s7, .LBB6_8
.LBB6_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_6 Depth 2
	li	s3, 0
	li	s8, 0
	slli	s9, s5, 3
	add	s9, s1, s9
	sext.w	s4, s5
	j	.LBB6_6
.LBB6_5:                                #   in Loop: Header=BB6_6 Depth=2
	addi	s8, s8, 1
	addiw	s3, s3, 1
	beq	s6, s8, .LBB6_3
.LBB6_6:                                #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, 0(s9)
	add	a0, a0, s8
	lbu	a0, 0(a0)
	beqz	a0, .LBB6_5
# %bb.7:                                #   in Loop: Header=BB6_6 Depth=2
	mv	a0, s2
	mv	a1, s4
	mv	a2, s3
	mv	a3, s0
	mv	a4, s1
	call	Conceal_Error
	j	.LBB6_5
.LBB6_8:
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
	ret
.Lfunc_end6:
	.size	Error_Concealment, .Lfunc_end6-Error_Concealment
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	DecOneForthPix                  # -- Begin function DecOneForthPix
	.p2align	2
	.type	DecOneForthPix,@function
DecOneForthPix:                         # @DecOneForthPix
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	lui	s1, %hi(img)
	ld	a2, %lo(img)(s1)
	lw	a3, 60(a2)
	blez	a3, .LBB7_3
# %bb.1:
	mv	s0, a0
	lw	a0, 0(a2)
	lui	a3, %hi(start_frame_no_in_this_IGOP)
	lw	a3, %lo(start_frame_no_in_this_IGOP)(a3)
	lui	a4, 22
	add	a4, a2, a4
	lw	a4, 80(a4)
	li	s2, 0
	li	s3, 0
	subw	a0, a0, a3
	remw	a0, a0, a4
	slli	a0, a0, 3
	add	s4, a1, a0
.LBB7_2:                                # =>This Inner Loop Header: Depth=1
	ld	a0, 0(s4)
	add	a0, a0, s2
	ld	a0, 0(a0)
	add	a1, s0, s2
	lw	a2, 52(a2)
	ld	a1, 0(a1)
	slli	a2, a2, 1
	call	memcpy
	ld	a2, %lo(img)(s1)
	lw	a0, 60(a2)
	addi	s3, s3, 1
	addi	s2, s2, 8
	blt	s3, a0, .LBB7_2
.LBB7_3:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end7:
	.size	DecOneForthPix, .Lfunc_end7-DecOneForthPix
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	compute_residue_b8block         # -- Begin function compute_residue_b8block
	.p2align	2
	.type	compute_residue_b8block,@function
compute_residue_b8block:                # @compute_residue_b8block
# %bb.0:
	srliw	a2, a0, 31
	add	a2, a0, a2
	lui	a3, 131072
	addi	a3, a3, -2
	and	a3, a2, a3
	subw	a0, a0, a3
	lui	a3, %hi(enc_picture)
	ld	a3, %lo(enc_picture)(a3)
	slliw	n8, a0, 3
	addiw	n9, n8, 8
	lui	a0, 2
	add	a0, a3, a0
	ld	n4, -1768(a0)
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	slliw	a2, a2, 2
	andi	n7, a2, -8
	addiw	a2, n7, 8
	bltz	a1, .LBB8_5
# %bb.1:
	lui	a3, %hi(decs)
	ld	a3, %lo(decs)(a3)
	ld	n5, 0(a3)
	li	a3, 0
	slli	n6, n7, 3
	add	a4, n4, n6
	add	n10, n5, n6
	addi	a5, n7, 1
	slli	a7, a5, 3
	add	a6, n4, a7
	add	a7, n5, a7
	addi	t1, n6, 16
	add	t0, n4, t1
	add	t1, n5, t1
	addi	t3, n6, 24
	add	t2, n4, t3
	add	t3, n5, t3
	addi	t5, n6, 32
	add	t4, n4, t5
	add	t5, n5, t5
	addi	n1, n6, 40
	add	t6, n4, n1
	add	n1, n5, n1
	addi	n3, n6, 48
	add	n2, n4, n3
	add	n3, n5, n3
	addi	n6, n6, 56
	add	n4, n4, n6
	add	n5, n5, n6
	ld	n6, 0(n10)
	slli	a1, a1, 9
	slli	n7, n7, 5
	add	a1, a1, n7
	lui	n7, 1
	addiw	n7, n7, 824
	add	n7, a0, n7
	add	a1, a1, n7
	slli	n7, n8, 2
	slli	n8, n8, 1
	slli	n9, n9, 2
	j	.LBB8_3
.LBB8_2:                                #   in Loop: Header=BB8_3 Depth=1
	addi	n7, n7, 4
	addi	a3, a3, 2
	addi	a1, a1, 2
	beq	n7, n9, .LBB8_9
.LBB8_3:                                # =>This Inner Loop Header: Depth=1
	lw	n10, 156(a0)
	lw	n11, 152(a0)
	slli	n10, n10, 3
	add	n10, a4, n10
	ld	n10, 0(n10)
	slli	n11, n11, 1
	add	n11, n11, n8
	add	n11, n11, a3
	add	n10, n10, n11
	lhu	n11, 0(n10)
	add	n10, a1, n8
	lhu	n12, -128(n10)
	subw	n11, n11, n12
	add	n12, n6, n7
	sw	n11, 0(n12)
	bge	a5, a2, .LBB8_2
# %bb.4:                                #   in Loop: Header=BB8_3 Depth=1
	lw	n11, 156(a0)
	lw	n12, 152(a0)
	slli	n11, n11, 3
	add	n11, a6, n11
	ld	n11, 0(n11)
	slli	n12, n12, 1
	add	n12, n12, n8
	add	n12, n12, a3
	add	n11, n11, n12
	lhu	n11, 0(n11)
	lhu	n12, -96(n10)
	ld	n13, 0(a7)
	subw	n11, n11, n12
	add	n13, n13, n7
	sw	n11, 0(n13)
	lw	n11, 156(a0)
	lw	n12, 152(a0)
	slli	n11, n11, 3
	add	n11, t0, n11
	ld	n11, 0(n11)
	slli	n12, n12, 1
	add	n12, n12, n8
	add	n12, n12, a3
	add	n11, n11, n12
	lhu	n11, 0(n11)
	lhu	n12, -64(n10)
	ld	n13, 0(t1)
	subw	n11, n11, n12
	add	n13, n13, n7
	sw	n11, 0(n13)
	lw	n11, 156(a0)
	lw	n12, 152(a0)
	slli	n11, n11, 3
	add	n11, t2, n11
	ld	n11, 0(n11)
	slli	n12, n12, 1
	add	n12, n12, n8
	add	n12, n12, a3
	add	n11, n11, n12
	lhu	n11, 0(n11)
	lhu	n12, -32(n10)
	ld	n13, 0(t3)
	subw	n11, n11, n12
	add	n13, n13, n7
	sw	n11, 0(n13)
	lw	n11, 156(a0)
	lw	n12, 152(a0)
	slli	n11, n11, 3
	add	n11, t4, n11
	ld	n11, 0(n11)
	slli	n12, n12, 1
	add	n12, n12, n8
	add	n12, n12, a3
	add	n11, n11, n12
	lhu	n11, 0(n11)
	lhu	n12, 0(n10)
	ld	n13, 0(t5)
	subw	n11, n11, n12
	add	n13, n13, n7
	sw	n11, 0(n13)
	lw	n11, 156(a0)
	lw	n12, 152(a0)
	slli	n11, n11, 3
	add	n11, t6, n11
	ld	n11, 0(n11)
	slli	n12, n12, 1
	add	n12, n12, n8
	add	n12, n12, a3
	add	n11, n11, n12
	lhu	n11, 0(n11)
	lhu	n12, 32(n10)
	ld	n13, 0(n1)
	subw	n11, n11, n12
	add	n13, n13, n7
	sw	n11, 0(n13)
	lw	n11, 156(a0)
	lw	n12, 152(a0)
	slli	n11, n11, 3
	add	n11, n2, n11
	ld	n11, 0(n11)
	slli	n12, n12, 1
	add	n12, n12, n8
	add	n12, n12, a3
	add	n11, n11, n12
	lhu	n11, 0(n11)
	lhu	n12, 64(n10)
	ld	n13, 0(n3)
	subw	n11, n11, n12
	add	n13, n13, n7
	sw	n11, 0(n13)
	lw	n11, 156(a0)
	lw	n12, 152(a0)
	slli	n11, n11, 3
	add	n11, n4, n11
	ld	n11, 0(n11)
	slli	n12, n12, 1
	add	n12, n12, n8
	add	n12, n12, a3
	add	n11, n11, n12
	lhu	n11, 0(n11)
	lhu	n10, 96(n10)
	ld	n12, 0(n5)
	subw	n10, n11, n10
	add	n12, n12, n7
	sw	n10, 0(n12)
	j	.LBB8_2
.LBB8_5:
	lui	a1, %hi(decs)
	ld	a1, %lo(decs)(a1)
	ld	n5, 0(a1)
	slli	n3, n7, 3
	add	a1, n4, n3
	add	a3, n5, n3
	ld	a3, 0(a3)
	addi	a4, n7, 1
	slli	a6, a4, 3
	add	a5, n4, a6
	add	a6, n5, a6
	addi	t0, n3, 16
	add	a7, n4, t0
	add	t0, n5, t0
	addi	t2, n3, 24
	add	t1, n4, t2
	add	t2, n5, t2
	addi	t4, n3, 32
	add	t3, n4, t4
	add	t4, n5, t4
	addi	t6, n3, 40
	add	t5, n4, t6
	add	t6, n5, t6
	addi	n2, n3, 48
	add	n1, n4, n2
	add	n2, n5, n2
	addi	n6, n3, 56
	add	n3, n4, n6
	add	n4, n5, n6
	slli	n5, n8, 2
	slli	n6, n8, 1
	slli	n7, n7, 5
	add	n7, n7, a0
	lui	n8, 3
	addiw	n8, n8, 440
	add	n7, n7, n8
	slli	n8, n9, 2
	j	.LBB8_7
.LBB8_6:                                #   in Loop: Header=BB8_7 Depth=1
	addi	n5, n5, 4
	addi	n6, n6, 2
	beq	n5, n8, .LBB8_9
.LBB8_7:                                # =>This Inner Loop Header: Depth=1
	lw	n9, 156(a0)
	slli	n9, n9, 3
	lw	n10, 152(a0)
	add	n9, a1, n9
	ld	n9, 0(n9)
	slli	n10, n10, 1
	add	n10, n10, n6
	add	n9, n9, n10
	lhu	n10, 0(n9)
	add	n9, n7, n6
	lhu	n11, -128(n9)
	subw	n10, n10, n11
	add	n11, a3, n5
	sw	n10, 0(n11)
	bge	a4, a2, .LBB8_6
# %bb.8:                                #   in Loop: Header=BB8_7 Depth=1
	lw	n10, 156(a0)
	slli	n10, n10, 3
	lw	n11, 152(a0)
	add	n10, a5, n10
	ld	n10, 0(n10)
	slli	n11, n11, 1
	add	n11, n11, n6
	add	n10, n10, n11
	lhu	n10, 0(n10)
	lhu	n11, -96(n9)
	ld	n12, 0(a6)
	subw	n10, n10, n11
	add	n12, n12, n5
	sw	n10, 0(n12)
	lw	n10, 156(a0)
	slli	n10, n10, 3
	lw	n11, 152(a0)
	add	n10, a7, n10
	ld	n10, 0(n10)
	slli	n11, n11, 1
	add	n11, n11, n6
	add	n10, n10, n11
	lhu	n10, 0(n10)
	lhu	n11, -64(n9)
	ld	n12, 0(t0)
	subw	n10, n10, n11
	add	n12, n12, n5
	sw	n10, 0(n12)
	lw	n10, 156(a0)
	slli	n10, n10, 3
	lw	n11, 152(a0)
	add	n10, t1, n10
	ld	n10, 0(n10)
	slli	n11, n11, 1
	add	n11, n11, n6
	add	n10, n10, n11
	lhu	n10, 0(n10)
	lhu	n11, -32(n9)
	ld	n12, 0(t2)
	subw	n10, n10, n11
	add	n12, n12, n5
	sw	n10, 0(n12)
	lw	n10, 156(a0)
	slli	n10, n10, 3
	lw	n11, 152(a0)
	add	n10, t3, n10
	ld	n10, 0(n10)
	slli	n11, n11, 1
	add	n11, n11, n6
	add	n10, n10, n11
	lhu	n10, 0(n10)
	lhu	n11, 0(n9)
	ld	n12, 0(t4)
	subw	n10, n10, n11
	add	n12, n12, n5
	sw	n10, 0(n12)
	lw	n10, 156(a0)
	slli	n10, n10, 3
	lw	n11, 152(a0)
	add	n10, t5, n10
	ld	n10, 0(n10)
	slli	n11, n11, 1
	add	n11, n11, n6
	add	n10, n10, n11
	lhu	n10, 0(n10)
	lhu	n11, 32(n9)
	ld	n12, 0(t6)
	subw	n10, n10, n11
	add	n12, n12, n5
	sw	n10, 0(n12)
	lw	n10, 156(a0)
	slli	n10, n10, 3
	lw	n11, 152(a0)
	add	n10, n1, n10
	ld	n10, 0(n10)
	slli	n11, n11, 1
	add	n11, n11, n6
	add	n10, n10, n11
	lhu	n10, 0(n10)
	lhu	n11, 64(n9)
	ld	n12, 0(n2)
	subw	n10, n10, n11
	add	n12, n12, n5
	sw	n10, 0(n12)
	lw	n10, 156(a0)
	slli	n10, n10, 3
	lw	n11, 152(a0)
	add	n10, n3, n10
	ld	n10, 0(n10)
	slli	n11, n11, 1
	add	n11, n11, n6
	add	n10, n10, n11
	lhu	n10, 0(n10)
	lhu	n9, 96(n9)
	ld	n11, 0(n4)
	subw	n9, n10, n9
	add	n11, n11, n5
	sw	n9, 0(n11)
	j	.LBB8_6
.LBB8_9:
	ret
.Lfunc_end8:
	.size	compute_residue_b8block, .Lfunc_end8-compute_residue_b8block
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	compute_residue_mb              # -- Begin function compute_residue_mb
	.p2align	2
	.type	compute_residue_mb,@function
compute_residue_mb:                     # @compute_residue_mb
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	li	a0, 0
	mv	a1, s0
	call	compute_residue_b8block
	li	a0, 1
	mv	a1, s0
	call	compute_residue_b8block
	li	a0, 2
	mv	a1, s0
	call	compute_residue_b8block
	li	a0, 3
	mv	a1, s0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	tail	compute_residue_b8block
.Lfunc_end9:
	.size	compute_residue_mb, .Lfunc_end9-compute_residue_mb
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Conceal_Error                   # -- Begin function Conceal_Error
	.p2align	2
	.type	Conceal_Error,@function
Conceal_Error:                          # @Conceal_Error
# %bb.0:
	addi	sp, sp, -256
	sd	ra, 248(sp)                     # 8-byte Folded Spill
	sd	s0, 240(sp)                     # 8-byte Folded Spill
	sd	s1, 232(sp)                     # 8-byte Folded Spill
	sd	s2, 224(sp)                     # 8-byte Folded Spill
	sd	s3, 216(sp)                     # 8-byte Folded Spill
	sd	s4, 208(sp)                     # 8-byte Folded Spill
	sd	s5, 200(sp)                     # 8-byte Folded Spill
	sd	s6, 192(sp)                     # 8-byte Folded Spill
	sd	s7, 184(sp)                     # 8-byte Folded Spill
	sd	s8, 176(sp)                     # 8-byte Folded Spill
	sd	s9, 168(sp)                     # 8-byte Folded Spill
	sd	s10, 160(sp)                    # 8-byte Folded Spill
	sd	s11, 152(sp)                    # 8-byte Folded Spill
	lui	a5, %hi(decs)
	ld	a5, %lo(decs)(a5)
	ld	a5, 48(a5)
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	lui	a0, %hi(img)
	slli	a6, a2, 3
	add	a5, a5, a6
	ld	a5, 0(a5)
	ld	t0, %lo(img)(a0)
	lui	a0, %hi(start_frame_no_in_this_IGOP)
	lw	a0, %lo(start_frame_no_in_this_IGOP)(a0)
	add	a5, a5, a1
	lbu	a5, 0(a5)
	lw	a6, 0(t0)
	not	a7, a0
	lw	a0, 32(t0)
	addi	t1, a5, -1
	li	t2, 3
	add	a6, a6, a7
	bltu	t1, t2, .LBB10_6
# %bb.1:
	li	a7, 8
	beq	a5, a7, .LBB10_6
# %bb.2:
	bnez	a5, .LBB10_9
# %bb.3:
	lw	a5, 24(t0)
	beqz	a5, .LBB10_38
# %bb.4:
	li	a7, 1
	bne	a5, a7, .LBB10_9
# %bb.5:
	lui	a5, 22
	add	a5, t0, a5
	lw	a7, 204(a5)
	li	a5, 0
	sgtz	a7, a7
	j	.LBB10_11
.LBB10_6:
	lw	a5, 24(t0)
	beqz	a5, .LBB10_10
# %bb.7:
	li	a7, 1
	bne	a5, a7, .LBB10_9
# %bb.8:
	lui	a5, 22
	add	a5, t0, a5
	lw	a5, 204(a5)
	li	a7, 0
	sgtz	a5, a5
	j	.LBB10_11
.LBB10_9:
	li	a7, 0
	li	a5, 0
	j	.LBB10_11
.LBB10_10:
	li	a7, 0
	li	a5, 1
.LBB10_11:
	slli	t1, a1, 3
	add	a4, a4, t1
	ld	a4, 0(a4)
	add	a4, a4, a2
	lbu	t1, 0(a4)
	remw	a6, a6, a0
	slliw	a4, a1, 4
	li	t2, 2
	slliw	a0, a2, 4
	blt	t2, t1, .LBB10_17
# %bb.12:
	li	a1, 1
	beq	t1, a1, .LBB10_22
# %bb.13:
	li	a1, 2
	bne	t1, a1, .LBB10_37
# %bb.14:
	lw	a2, 24(t0)
	bne	a2, a1, .LBB10_29
# %bb.15:
	addi	a5, a0, 1
	addi	a6, a0, 2
	addi	a7, a0, 3
	addi	t0, a0, 4
	addi	t1, a0, 5
	addi	t2, a0, 6
	addi	t3, a0, 7
	addi	t4, a0, 8
	addi	t5, a0, 9
	addi	t6, a0, 10
	addi	n1, a0, 11
	addi	n2, a0, 12
	addi	n3, a0, 13
	addi	n4, a0, 14
	addi	n5, a0, 15
	slli	a1, a4, 3
	ld	a2, 16(sp)                      # 8-byte Folded Reload
	add	a1, a2, a1
	addi	a2, a1, 128
	slli	a0, a0, 1
	li	a3, 127
	slli	a4, a5, 1
	slli	a5, a6, 1
	slli	a6, a7, 1
	slli	a7, t0, 1
	slli	t0, t1, 1
	slli	t1, t2, 1
	slli	t2, t3, 1
	slli	t3, t4, 1
	slli	t4, t5, 1
	slli	t5, t6, 1
	slli	t6, n1, 1
	slli	n1, n2, 1
	slli	n2, n3, 1
	slli	n3, n4, 1
	slli	n4, n5, 1
.LBB10_16:                              # =>This Inner Loop Header: Depth=1
	ld	n5, 0(a1)
	add	n6, n5, a0
	sh	a3, 0(n6)
	add	n6, n5, a4
	sh	a3, 0(n6)
	add	n6, n5, a5
	sh	a3, 0(n6)
	add	n6, n5, a6
	sh	a3, 0(n6)
	add	n6, n5, a7
	sh	a3, 0(n6)
	add	n6, n5, t0
	sh	a3, 0(n6)
	add	n6, n5, t1
	sh	a3, 0(n6)
	add	n6, n5, t2
	sh	a3, 0(n6)
	add	n6, n5, t3
	sh	a3, 0(n6)
	add	n6, n5, t4
	sh	a3, 0(n6)
	add	n6, n5, t5
	sh	a3, 0(n6)
	add	n6, n5, t6
	sh	a3, 0(n6)
	add	n6, n5, n1
	sh	a3, 0(n6)
	add	n6, n5, n2
	sh	a3, 0(n6)
	add	n6, n5, n3
	sh	a3, 0(n6)
	add	n5, n5, n4
	addi	a1, a1, 8
	sh	a3, 0(n5)
	bne	a1, a2, .LBB10_16
	j	.LBB10_37
.LBB10_17:
	lui	t2, %hi(enc_picture)
	ld	t2, %lo(enc_picture)(t2)
	lui	t3, 2
	add	t2, t2, t3
	ld	t2, -1688(t2)
	ld	t2, 0(t2)
	li	t3, 3
	beq	t1, t3, .LBB10_25
# %bb.18:
	li	t3, 5
	bne	t1, t3, .LBB10_37
# %bb.19:
	slliw	s4, a1, 2
	slli	a1, s4, 3
	add	t2, t2, a1
	ld	a1, 0(t2)
	slliw	s3, a2, 2
	addi	a2, a1, 32
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	slli	s3, s3, 3
	add	a1, a2, s3
	ld	a1, 0(a1)
	lh	t1, 0(a1)
	addi	t3, s3, 8
	add	t4, a2, t3
	ld	t4, 0(t4)
	sw	t1, 24(sp)
	lh	t1, 2(a1)
	lh	t5, 0(t4)
	lh	t4, 2(t4)
	addi	a1, s3, 16
	add	t6, a2, a1
	ld	t6, 0(t6)
	sw	t1, 88(sp)
	sw	t5, 28(sp)
	sw	t4, 92(sp)
	lh	t1, 0(t6)
	ld	t4, 8(t2)
	addi	t5, s3, 24
	add	a2, a2, t5
	ld	a2, 0(a2)
	addi	t4, t4, 32
	add	n1, t4, s3
	ld	n1, 0(n1)
	sw	t1, 32(sp)
	lh	t1, 2(t6)
	lh	t6, 2(a2)
	lh	n2, 2(n1)
	add	n3, t4, t3
	ld	n3, 0(n3)
	sw	t1, 96(sp)
	sw	t6, 100(sp)
	sw	n2, 104(sp)
	lh	t1, 2(n3)
	add	t6, t4, a1
	ld	t6, 0(t6)
	add	t4, t4, t5
	ld	t4, 0(t4)
	sw	t1, 108(sp)
	lh	t1, 0(t6)
	lh	t6, 2(t6)
	lh	n2, 0(t4)
	ld	n4, 16(t2)
	sw	t1, 48(sp)
	sw	t6, 112(sp)
	sw	n2, 52(sp)
	addi	t1, n4, 32
	add	t6, t1, s3
	ld	t6, 0(t6)
	add	n2, t1, t3
	ld	n2, 0(n2)
	lh	t4, 2(t4)
	lh	n4, 0(t6)
	lh	t6, 2(t6)
	lh	n5, 0(n2)
	sw	t4, 116(sp)
	sw	n4, 56(sp)
	sw	t6, 120(sp)
	sw	n5, 60(sp)
	lh	t4, 2(n2)
	add	t6, t1, a1
	ld	t6, 0(t6)
	add	t1, t1, t5
	ld	t1, 0(t1)
	sw	t4, 124(sp)
	lh	t4, 0(t6)
	lh	t6, 2(t6)
	lh	n2, 0(t1)
	ld	t2, 24(t2)
	sw	t4, 64(sp)
	sw	t6, 128(sp)
	sw	n2, 68(sp)
	addi	t2, t2, 32
	add	t4, t2, s3
	ld	t4, 0(t4)
	add	t3, t2, t3
	ld	t3, 0(t3)
	lh	t1, 2(t1)
	lh	t6, 0(t4)
	lh	t4, 2(t4)
	lh	n2, 0(t3)
	sw	t1, 132(sp)
	sw	t6, 72(sp)
	sw	t4, 136(sp)
	sw	n2, 76(sp)
	lh	a2, 0(a2)
	lh	t1, 0(n1)
	lh	t4, 0(n3)
	lh	t3, 2(t3)
	add	a1, t2, a1
	ld	a1, 0(a1)
	add	t2, t2, t5
	ld	t2, 0(t2)
	sw	t3, 140(sp)
	lh	t3, 0(a1)
	lh	a1, 2(a1)
	lh	t5, 0(t2)
	lh	t2, 2(t2)
	sw	t3, 80(sp)
	sw	a1, 144(sp)
	sw	t5, 84(sp)
	sw	t2, 148(sp)
	lw	a1, 24(t0)
	sw	a2, 36(sp)
	sw	t1, 40(sp)
	li	a2, 2
	sw	t4, 44(sp)
	bne	a1, a2, .LBB10_32
# %bb.20:
	addi	a5, a0, 1
	addi	a6, a0, 2
	addi	a7, a0, 3
	addi	t0, a0, 4
	addi	t1, a0, 5
	addi	t2, a0, 6
	addi	t3, a0, 7
	addi	t4, a0, 8
	addi	t5, a0, 9
	addi	t6, a0, 10
	addi	n1, a0, 11
	addi	n2, a0, 12
	addi	n3, a0, 13
	addi	n4, a0, 14
	addi	n5, a0, 15
	slli	a1, a4, 3
	ld	a2, 16(sp)                      # 8-byte Folded Reload
	add	a1, a2, a1
	addi	a2, a1, 128
	slli	a0, a0, 1
	li	a3, 127
	slli	a4, a5, 1
	slli	a5, a6, 1
	slli	a6, a7, 1
	slli	a7, t0, 1
	slli	t0, t1, 1
	slli	t1, t2, 1
	slli	t2, t3, 1
	slli	t3, t4, 1
	slli	t4, t5, 1
	slli	t5, t6, 1
	slli	t6, n1, 1
	slli	n1, n2, 1
	slli	n2, n3, 1
	slli	n3, n4, 1
	slli	n4, n5, 1
.LBB10_21:                              # =>This Inner Loop Header: Depth=1
	ld	n5, 0(a1)
	add	n6, n5, a0
	sh	a3, 0(n6)
	add	n6, n5, a4
	sh	a3, 0(n6)
	add	n6, n5, a5
	sh	a3, 0(n6)
	add	n6, n5, a6
	sh	a3, 0(n6)
	add	n6, n5, a7
	sh	a3, 0(n6)
	add	n6, n5, t0
	sh	a3, 0(n6)
	add	n6, n5, t1
	sh	a3, 0(n6)
	add	n6, n5, t2
	sh	a3, 0(n6)
	add	n6, n5, t3
	sh	a3, 0(n6)
	add	n6, n5, t4
	sh	a3, 0(n6)
	add	n6, n5, t5
	sh	a3, 0(n6)
	add	n6, n5, t6
	sh	a3, 0(n6)
	add	n6, n5, n1
	sh	a3, 0(n6)
	add	n6, n5, n2
	sh	a3, 0(n6)
	add	n6, n5, n3
	sh	a3, 0(n6)
	add	n5, n5, n4
	addi	a1, a1, 8
	sh	a3, 0(n5)
	bne	a1, a2, .LBB10_21
	j	.LBB10_37
.LBB10_22:
	lw	a1, 24(t0)
	li	a2, 2
	bne	a1, a2, .LBB10_35
# %bb.23:
	addi	a5, a0, 1
	addi	a6, a0, 2
	addi	a7, a0, 3
	addi	t0, a0, 4
	addi	t1, a0, 5
	addi	t2, a0, 6
	addi	t3, a0, 7
	addi	t4, a0, 8
	addi	t5, a0, 9
	addi	t6, a0, 10
	addi	n1, a0, 11
	addi	n2, a0, 12
	addi	n3, a0, 13
	addi	n4, a0, 14
	addi	n5, a0, 15
	slli	a1, a4, 3
	ld	a2, 16(sp)                      # 8-byte Folded Reload
	add	a1, a2, a1
	addi	a2, a1, 128
	slli	a0, a0, 1
	li	a3, 127
	slli	a4, a5, 1
	slli	a5, a6, 1
	slli	a6, a7, 1
	slli	a7, t0, 1
	slli	t0, t1, 1
	slli	t1, t2, 1
	slli	t2, t3, 1
	slli	t3, t4, 1
	slli	t4, t5, 1
	slli	t5, t6, 1
	slli	t6, n1, 1
	slli	n1, n2, 1
	slli	n2, n3, 1
	slli	n3, n4, 1
	slli	n4, n5, 1
.LBB10_24:                              # =>This Inner Loop Header: Depth=1
	ld	n5, 0(a1)
	add	n6, n5, a0
	sh	a3, 0(n6)
	add	n6, n5, a4
	sh	a3, 0(n6)
	add	n6, n5, a5
	sh	a3, 0(n6)
	add	n6, n5, a6
	sh	a3, 0(n6)
	add	n6, n5, a7
	sh	a3, 0(n6)
	add	n6, n5, t0
	sh	a3, 0(n6)
	add	n6, n5, t1
	sh	a3, 0(n6)
	add	n6, n5, t2
	sh	a3, 0(n6)
	add	n6, n5, t3
	sh	a3, 0(n6)
	add	n6, n5, t4
	sh	a3, 0(n6)
	add	n6, n5, t5
	sh	a3, 0(n6)
	add	n6, n5, t6
	sh	a3, 0(n6)
	add	n6, n5, n1
	sh	a3, 0(n6)
	add	n6, n5, n2
	sh	a3, 0(n6)
	add	n6, n5, n3
	sh	a3, 0(n6)
	add	n5, n5, n4
	addi	a1, a1, 8
	sh	a3, 0(n5)
	bne	a1, a2, .LBB10_24
	j	.LBB10_37
.LBB10_25:
	lw	t0, 24(t0)
	li	t1, 2
	beq	t0, t1, .LBB10_37
# %bb.26:
	slliw	s4, a1, 2
	slli	a1, s4, 3
	add	a1, t2, a1
	ld	t0, 0(a1)
	slliw	t1, a2, 2
	addi	a2, t0, 32
	sd	t1, 8(sp)                       # 8-byte Folded Spill
	slli	n2, t1, 3
	add	t0, a2, n2
	ld	t0, 0(t0)
	addi	t1, n2, 8
	add	t2, a2, t1
	ld	t2, 0(t2)
	lh	t3, 0(t0)
	lh	t0, 2(t0)
	lh	t4, 0(t2)
	sw	t3, 24(sp)
	sw	t0, 88(sp)
	sw	t4, 28(sp)
	lh	t0, 2(t2)
	addi	t2, n2, 16
	add	t3, a2, t2
	ld	t3, 0(t3)
	addi	t4, n2, 24
	add	a2, a2, t4
	ld	a2, 0(a2)
	sw	t0, 92(sp)
	lh	t0, 0(t3)
	lh	t3, 2(t3)
	lh	t5, 0(a2)
	ld	t6, 8(a1)
	sw	t0, 32(sp)
	sw	t3, 96(sp)
	sw	t5, 36(sp)
	addi	t0, t6, 32
	add	t3, t0, n2
	ld	t3, 0(t3)
	add	t5, t0, t1
	ld	t5, 0(t5)
	lh	a2, 2(a2)
	lh	t6, 0(t3)
	lh	t3, 2(t3)
	lh	n1, 0(t5)
	sw	a2, 100(sp)
	sw	t6, 40(sp)
	sw	t3, 104(sp)
	sw	n1, 44(sp)
	lh	a2, 2(t5)
	add	t3, t0, t2
	ld	t3, 0(t3)
	add	t0, t0, t4
	ld	t0, 0(t0)
	sw	a2, 108(sp)
	lh	a2, 0(t3)
	lh	t3, 2(t3)
	lh	t5, 0(t0)
	ld	t6, 16(a1)
	sw	a2, 48(sp)
	sw	t3, 112(sp)
	sw	t5, 52(sp)
	addi	a2, t6, 32
	add	t3, a2, n2
	ld	t3, 0(t3)
	add	t5, a2, t1
	ld	t5, 0(t5)
	lh	t0, 2(t0)
	lh	t6, 0(t3)
	lh	t3, 2(t3)
	lh	n1, 0(t5)
	sw	t0, 116(sp)
	sw	t6, 56(sp)
	sw	t3, 120(sp)
	sw	n1, 60(sp)
	lh	t0, 2(t5)
	add	t3, a2, t2
	ld	t3, 0(t3)
	add	a2, a2, t4
	ld	a2, 0(a2)
	sw	t0, 124(sp)
	lh	t0, 0(t3)
	lh	t3, 2(t3)
	lh	t5, 0(a2)
	ld	a1, 24(a1)
	sw	t0, 64(sp)
	sw	t3, 128(sp)
	sw	t5, 68(sp)
	addi	a1, a1, 32
	sd	n2, 0(sp)                       # 8-byte Folded Spill
	add	t0, a1, n2
	ld	t0, 0(t0)
	add	t1, a1, t1
	ld	t1, 0(t1)
	lh	a2, 2(a2)
	lh	t3, 0(t0)
	lh	t0, 2(t0)
	lh	t5, 0(t1)
	sw	a2, 132(sp)
	sw	t3, 72(sp)
	sw	t0, 136(sp)
	sw	t5, 76(sp)
	lh	a2, 2(t1)
	add	t2, a1, t2
	ld	t0, 0(t2)
	add	a1, a1, t4
	ld	a1, 0(a1)
	sw	a2, 140(sp)
	lh	a2, 0(t0)
	lh	t0, 2(t0)
	lh	t1, 0(a1)
	lh	a1, 2(a1)
	sw	a2, 80(sp)
	sw	t0, 144(sp)
	sw	t1, 84(sp)
	sw	a1, 148(sp)
	beqz	a7, .LBB10_44
# %bb.27:
	slli	a6, a6, 3
	add	a3, a3, a6
	ld	a1, 0(a3)
	addi	a3, a0, 1
	addi	a5, a0, 2
	addi	a6, a0, 3
	addi	a7, a0, 4
	addi	t0, a0, 5
	addi	t1, a0, 6
	addi	t2, a0, 7
	addi	t3, a0, 8
	addi	t4, a0, 9
	addi	t5, a0, 10
	addi	t6, a0, 11
	addi	n1, a0, 12
	addi	n2, a0, 13
	addi	n3, a0, 14
	addi	n4, a0, 15
	slli	a4, a4, 3
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	add	s0, s0, a4
	add	a1, a1, a4
	addi	a2, s0, 128
	slli	a0, a0, 1
	slli	a3, a3, 1
	slli	a4, a5, 1
	slli	a5, a6, 1
	slli	a6, a7, 1
	slli	a7, t0, 1
	slli	t0, t1, 1
	slli	t1, t2, 1
	slli	t2, t3, 1
	slli	t3, t4, 1
	slli	t4, t5, 1
	slli	t5, t6, 1
	slli	t6, n1, 1
	slli	n1, n2, 1
	slli	n2, n3, 1
	slli	n3, n4, 1
.LBB10_28:                              # =>This Inner Loop Header: Depth=1
	ld	n4, 0(a1)
	ld	n5, 0(s0)
	add	n6, n4, a0
	lh	n6, 0(n6)
	add	n7, n5, a0
	sh	n6, 0(n7)
	add	n6, n4, a3
	lh	n6, 0(n6)
	add	n7, n5, a3
	sh	n6, 0(n7)
	add	n6, n4, a4
	lh	n6, 0(n6)
	add	n7, n5, a4
	sh	n6, 0(n7)
	add	n6, n4, a5
	lh	n6, 0(n6)
	add	n7, n5, a5
	sh	n6, 0(n7)
	add	n6, n4, a6
	lh	n6, 0(n6)
	add	n7, n5, a6
	sh	n6, 0(n7)
	add	n6, n4, a7
	lh	n6, 0(n6)
	add	n7, n5, a7
	sh	n6, 0(n7)
	add	n6, n4, t0
	lh	n6, 0(n6)
	add	n7, n5, t0
	sh	n6, 0(n7)
	add	n6, n4, t1
	lh	n6, 0(n6)
	add	n7, n5, t1
	sh	n6, 0(n7)
	add	n6, n4, t2
	lh	n6, 0(n6)
	add	n7, n5, t2
	sh	n6, 0(n7)
	add	n6, n4, t3
	lh	n6, 0(n6)
	add	n7, n5, t3
	sh	n6, 0(n7)
	add	n6, n4, t4
	lh	n6, 0(n6)
	add	n7, n5, t4
	sh	n6, 0(n7)
	add	n6, n4, t5
	lh	n6, 0(n6)
	add	n7, n5, t5
	sh	n6, 0(n7)
	add	n6, n4, t6
	lh	n6, 0(n6)
	add	n7, n5, t6
	sh	n6, 0(n7)
	add	n6, n4, n1
	lh	n6, 0(n6)
	add	n7, n5, n1
	sh	n6, 0(n7)
	add	n6, n4, n2
	lh	n6, 0(n6)
	add	n7, n5, n2
	sh	n6, 0(n7)
	add	n4, n4, n3
	lh	n4, 0(n4)
	add	n5, n5, n3
	sh	n4, 0(n5)
	addi	s0, s0, 8
	addi	a1, a1, 8
	bne	s0, a2, .LBB10_28
	j	.LBB10_37
.LBB10_29:
	bnez	a5, .LBB10_37
# %bb.30:
	slli	a6, a6, 3
	add	a3, a3, a6
	ld	a1, 0(a3)
	addi	a3, a0, 1
	addi	a5, a0, 2
	addi	a6, a0, 3
	addi	a7, a0, 4
	addi	t0, a0, 5
	addi	t1, a0, 6
	addi	t2, a0, 7
	addi	t3, a0, 8
	addi	t4, a0, 9
	addi	t5, a0, 10
	addi	t6, a0, 11
	addi	n1, a0, 12
	addi	n2, a0, 13
	addi	n3, a0, 14
	addi	n4, a0, 15
	slli	a4, a4, 3
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	add	s0, s0, a4
	add	a1, a1, a4
	addi	a2, s0, 128
	slli	a0, a0, 1
	slli	a3, a3, 1
	slli	a4, a5, 1
	slli	a5, a6, 1
	slli	a6, a7, 1
	slli	a7, t0, 1
	slli	t0, t1, 1
	slli	t1, t2, 1
	slli	t2, t3, 1
	slli	t3, t4, 1
	slli	t4, t5, 1
	slli	t5, t6, 1
	slli	t6, n1, 1
	slli	n1, n2, 1
	slli	n2, n3, 1
	slli	n3, n4, 1
.LBB10_31:                              # =>This Inner Loop Header: Depth=1
	ld	n4, 0(a1)
	ld	n5, 0(s0)
	add	n6, n4, a0
	lh	n6, 0(n6)
	add	n7, n5, a0
	sh	n6, 0(n7)
	add	n6, n4, a3
	lh	n6, 0(n6)
	add	n7, n5, a3
	sh	n6, 0(n7)
	add	n6, n4, a4
	lh	n6, 0(n6)
	add	n7, n5, a4
	sh	n6, 0(n7)
	add	n6, n4, a5
	lh	n6, 0(n6)
	add	n7, n5, a5
	sh	n6, 0(n7)
	add	n6, n4, a6
	lh	n6, 0(n6)
	add	n7, n5, a6
	sh	n6, 0(n7)
	add	n6, n4, a7
	lh	n6, 0(n6)
	add	n7, n5, a7
	sh	n6, 0(n7)
	add	n6, n4, t0
	lh	n6, 0(n6)
	add	n7, n5, t0
	sh	n6, 0(n7)
	add	n6, n4, t1
	lh	n6, 0(n6)
	add	n7, n5, t1
	sh	n6, 0(n7)
	add	n6, n4, t2
	lh	n6, 0(n6)
	add	n7, n5, t2
	sh	n6, 0(n7)
	add	n6, n4, t3
	lh	n6, 0(n6)
	add	n7, n5, t3
	sh	n6, 0(n7)
	add	n6, n4, t4
	lh	n6, 0(n6)
	add	n7, n5, t4
	sh	n6, 0(n7)
	add	n6, n4, t5
	lh	n6, 0(n6)
	add	n7, n5, t5
	sh	n6, 0(n7)
	add	n6, n4, t6
	lh	n6, 0(n6)
	add	n7, n5, t6
	sh	n6, 0(n7)
	add	n6, n4, n1
	lh	n6, 0(n6)
	add	n7, n5, n1
	sh	n6, 0(n7)
	add	n6, n4, n2
	lh	n6, 0(n6)
	add	n7, n5, n2
	sh	n6, 0(n7)
	add	n4, n4, n3
	lh	n4, 0(n4)
	add	n5, n5, n3
	sh	n4, 0(n5)
	addi	s0, s0, 8
	addi	a1, a1, 8
	bne	s0, a2, .LBB10_31
	j	.LBB10_37
.LBB10_32:
	slli	a6, a6, 3
	add	s6, a3, a6
	beqz	a7, .LBB10_39
# %bb.33:
	ld	a1, 0(s6)
	addi	a3, a0, 1
	addi	a5, a0, 2
	addi	a6, a0, 3
	addi	a7, a0, 4
	addi	t0, a0, 5
	addi	t1, a0, 6
	addi	t2, a0, 7
	addi	t3, a0, 8
	addi	t4, a0, 9
	addi	t5, a0, 10
	addi	t6, a0, 11
	addi	n1, a0, 12
	addi	n2, a0, 13
	addi	n3, a0, 14
	addi	n4, a0, 15
	slli	a4, a4, 3
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	add	s0, s0, a4
	add	a1, a1, a4
	addi	a2, s0, 128
	slli	a0, a0, 1
	slli	a3, a3, 1
	slli	a4, a5, 1
	slli	a5, a6, 1
	slli	a6, a7, 1
	slli	a7, t0, 1
	slli	t0, t1, 1
	slli	t1, t2, 1
	slli	t2, t3, 1
	slli	t3, t4, 1
	slli	t4, t5, 1
	slli	t5, t6, 1
	slli	t6, n1, 1
	slli	n1, n2, 1
	slli	n2, n3, 1
	slli	n3, n4, 1
.LBB10_34:                              # =>This Inner Loop Header: Depth=1
	ld	n4, 0(a1)
	ld	n5, 0(s0)
	add	n6, n4, a0
	lh	n6, 0(n6)
	add	n7, n5, a0
	sh	n6, 0(n7)
	add	n6, n4, a3
	lh	n6, 0(n6)
	add	n7, n5, a3
	sh	n6, 0(n7)
	add	n6, n4, a4
	lh	n6, 0(n6)
	add	n7, n5, a4
	sh	n6, 0(n7)
	add	n6, n4, a5
	lh	n6, 0(n6)
	add	n7, n5, a5
	sh	n6, 0(n7)
	add	n6, n4, a6
	lh	n6, 0(n6)
	add	n7, n5, a6
	sh	n6, 0(n7)
	add	n6, n4, a7
	lh	n6, 0(n6)
	add	n7, n5, a7
	sh	n6, 0(n7)
	add	n6, n4, t0
	lh	n6, 0(n6)
	add	n7, n5, t0
	sh	n6, 0(n7)
	add	n6, n4, t1
	lh	n6, 0(n6)
	add	n7, n5, t1
	sh	n6, 0(n7)
	add	n6, n4, t2
	lh	n6, 0(n6)
	add	n7, n5, t2
	sh	n6, 0(n7)
	add	n6, n4, t3
	lh	n6, 0(n6)
	add	n7, n5, t3
	sh	n6, 0(n7)
	add	n6, n4, t4
	lh	n6, 0(n6)
	add	n7, n5, t4
	sh	n6, 0(n7)
	add	n6, n4, t5
	lh	n6, 0(n6)
	add	n7, n5, t5
	sh	n6, 0(n7)
	add	n6, n4, t6
	lh	n6, 0(n6)
	add	n7, n5, t6
	sh	n6, 0(n7)
	add	n6, n4, n1
	lh	n6, 0(n6)
	add	n7, n5, n1
	sh	n6, 0(n7)
	add	n6, n4, n2
	lh	n6, 0(n6)
	add	n7, n5, n2
	sh	n6, 0(n7)
	add	n4, n4, n3
	lh	n4, 0(n4)
	add	n5, n5, n3
	sh	n4, 0(n5)
	addi	s0, s0, 8
	addi	a1, a1, 8
	bne	s0, a2, .LBB10_34
	j	.LBB10_37
.LBB10_35:
	slli	a6, a6, 3
	add	a3, a3, a6
	ld	a1, 0(a3)
	addi	a3, a0, 1
	addi	a5, a0, 2
	addi	a6, a0, 3
	addi	a7, a0, 4
	addi	t0, a0, 5
	addi	t1, a0, 6
	addi	t2, a0, 7
	addi	t3, a0, 8
	addi	t4, a0, 9
	addi	t5, a0, 10
	addi	t6, a0, 11
	addi	n1, a0, 12
	addi	n2, a0, 13
	addi	n3, a0, 14
	addi	n4, a0, 15
	slli	a4, a4, 3
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	add	s0, s0, a4
	add	a1, a1, a4
	addi	a2, s0, 128
	slli	a0, a0, 1
	slli	a3, a3, 1
	slli	a4, a5, 1
	slli	a5, a6, 1
	slli	a6, a7, 1
	slli	a7, t0, 1
	slli	t0, t1, 1
	slli	t1, t2, 1
	slli	t2, t3, 1
	slli	t3, t4, 1
	slli	t4, t5, 1
	slli	t5, t6, 1
	slli	t6, n1, 1
	slli	n1, n2, 1
	slli	n2, n3, 1
	slli	n3, n4, 1
.LBB10_36:                              # =>This Inner Loop Header: Depth=1
	ld	n4, 0(a1)
	ld	n5, 0(s0)
	add	n6, n4, a0
	lh	n6, 0(n6)
	add	n7, n5, a0
	sh	n6, 0(n7)
	add	n6, n4, a3
	lh	n6, 0(n6)
	add	n7, n5, a3
	sh	n6, 0(n7)
	add	n6, n4, a4
	lh	n6, 0(n6)
	add	n7, n5, a4
	sh	n6, 0(n7)
	add	n6, n4, a5
	lh	n6, 0(n6)
	add	n7, n5, a5
	sh	n6, 0(n7)
	add	n6, n4, a6
	lh	n6, 0(n6)
	add	n7, n5, a6
	sh	n6, 0(n7)
	add	n6, n4, a7
	lh	n6, 0(n6)
	add	n7, n5, a7
	sh	n6, 0(n7)
	add	n6, n4, t0
	lh	n6, 0(n6)
	add	n7, n5, t0
	sh	n6, 0(n7)
	add	n6, n4, t1
	lh	n6, 0(n6)
	add	n7, n5, t1
	sh	n6, 0(n7)
	add	n6, n4, t2
	lh	n6, 0(n6)
	add	n7, n5, t2
	sh	n6, 0(n7)
	add	n6, n4, t3
	lh	n6, 0(n6)
	add	n7, n5, t3
	sh	n6, 0(n7)
	add	n6, n4, t4
	lh	n6, 0(n6)
	add	n7, n5, t4
	sh	n6, 0(n7)
	add	n6, n4, t5
	lh	n6, 0(n6)
	add	n7, n5, t5
	sh	n6, 0(n7)
	add	n6, n4, t6
	lh	n6, 0(n6)
	add	n7, n5, t6
	sh	n6, 0(n7)
	add	n6, n4, n1
	lh	n6, 0(n6)
	add	n7, n5, n1
	sh	n6, 0(n7)
	add	n6, n4, n2
	lh	n6, 0(n6)
	add	n7, n5, n2
	sh	n6, 0(n7)
	add	n4, n4, n3
	lh	n4, 0(n4)
	add	n5, n5, n3
	sh	n4, 0(n5)
	addi	s0, s0, 8
	addi	a1, a1, 8
	bne	s0, a2, .LBB10_36
.LBB10_37:
	ld	ra, 248(sp)                     # 8-byte Folded Reload
	ld	s0, 240(sp)                     # 8-byte Folded Reload
	ld	s1, 232(sp)                     # 8-byte Folded Reload
	ld	s2, 224(sp)                     # 8-byte Folded Reload
	ld	s3, 216(sp)                     # 8-byte Folded Reload
	ld	s4, 208(sp)                     # 8-byte Folded Reload
	ld	s5, 200(sp)                     # 8-byte Folded Reload
	ld	s6, 192(sp)                     # 8-byte Folded Reload
	ld	s7, 184(sp)                     # 8-byte Folded Reload
	ld	s8, 176(sp)                     # 8-byte Folded Reload
	ld	s9, 168(sp)                     # 8-byte Folded Reload
	ld	s10, 160(sp)                    # 8-byte Folded Reload
	ld	s11, 152(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 256
	ret
.LBB10_38:
	li	a7, 1
	j	.LBB10_11
.LBB10_39:
	beqz	a5, .LBB10_49
# %bb.40:
	lui	s7, %hi(decs)
	ld	a0, %lo(decs)(s7)
	li	s8, 0
	ld	a5, 32(a0)
	addi	s10, sp, 88
	addiw	a0, s4, 4
	sd	a0, 0(sp)                       # 8-byte Folded Spill
.LBB10_41:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_42 Depth 2
	slli	a0, s8, 4
	addi	a1, sp, 24
	add	a0, a0, a1
	addi	s11, a0, 80
	slli	s0, s4, 5
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	add	s0, a0, s0
	sext.w	s1, s4
	mv	s5, s3
	ld	s2, 8(sp)                       # 8-byte Folded Reload
	mv	s9, s10
.LBB10_42:                              #   Parent Loop BB10_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, 0(s6)
	lw	a3, -64(s9)
	lw	a4, 0(s9)
	mv	a1, s1
	mv	a2, s2
	call	Get_Reference_Block
	ld	a0, %lo(decs)(s7)
	ld	a5, 32(a0)
	ld	a0, 0(a5)
	ld	a1, 0(s0)
	lh	a2, 0(a0)
	add	a1, a1, s5
	sh	a2, 0(a1)
	lh	a2, 2(a0)
	sh	a2, 2(a1)
	lh	a2, 4(a0)
	sh	a2, 4(a1)
	lh	a0, 6(a0)
	ld	a2, 8(a5)
	sh	a0, 6(a1)
	ld	a0, 8(s0)
	lh	a1, 0(a2)
	add	a0, a0, s5
	sh	a1, 0(a0)
	lh	a1, 2(a2)
	sh	a1, 2(a0)
	lh	a1, 4(a2)
	sh	a1, 4(a0)
	lh	a1, 6(a2)
	ld	a2, 16(a5)
	sh	a1, 6(a0)
	ld	a0, 16(s0)
	lh	a1, 0(a2)
	add	a0, a0, s5
	sh	a1, 0(a0)
	lh	a1, 2(a2)
	sh	a1, 2(a0)
	lh	a1, 4(a2)
	sh	a1, 4(a0)
	lh	a1, 6(a2)
	ld	a2, 24(a5)
	sh	a1, 6(a0)
	ld	a0, 24(s0)
	lh	a1, 0(a2)
	add	a0, a0, s5
	sh	a1, 0(a0)
	lh	a1, 2(a2)
	sh	a1, 2(a0)
	lh	a1, 4(a2)
	sh	a1, 4(a0)
	lh	a1, 6(a2)
	sh	a1, 6(a0)
	addi	s9, s9, 4
	addiw	s2, s2, 1
	addi	s5, s5, 8
	bne	s9, s11, .LBB10_42
# %bb.43:                               #   in Loop: Header=BB10_41 Depth=1
	addiw	a0, s4, 1
	addi	s4, s4, 1
	addi	s10, s10, 16
	addi	s8, s8, 1
	ld	a1, 0(sp)                       # 8-byte Folded Reload
	bne	a1, a0, .LBB10_41
	j	.LBB10_37
.LBB10_44:
	beqz	a5, .LBB10_37
# %bb.45:
	lui	s6, %hi(decs)
	ld	a0, %lo(decs)(s6)
	li	s7, 0
	addi	s3, sp, 88
	slli	a6, a6, 3
	ld	a5, 32(a0)
	add	s9, a3, a6
	addiw	s10, s4, 4
.LBB10_46:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_47 Depth 2
	slli	a0, s7, 4
	addi	a1, sp, 24
	add	a0, a0, a1
	addi	s11, a0, 80
	slli	s0, s4, 5
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	add	s0, a0, s0
	sext.w	s1, s4
	ld	s5, 0(sp)                       # 8-byte Folded Reload
	ld	s2, 8(sp)                       # 8-byte Folded Reload
	mv	s8, s3
.LBB10_47:                              #   Parent Loop BB10_46 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, 0(s9)
	lw	a3, -64(s8)
	lw	a4, 0(s8)
	mv	a1, s1
	mv	a2, s2
	call	Get_Reference_Block
	ld	a0, %lo(decs)(s6)
	ld	a5, 32(a0)
	ld	a0, 0(a5)
	ld	a1, 0(s0)
	lh	a2, 0(a0)
	add	a1, a1, s5
	sh	a2, 0(a1)
	lh	a2, 2(a0)
	sh	a2, 2(a1)
	lh	a2, 4(a0)
	sh	a2, 4(a1)
	lh	a0, 6(a0)
	ld	a2, 8(a5)
	sh	a0, 6(a1)
	ld	a0, 8(s0)
	lh	a1, 0(a2)
	add	a0, a0, s5
	sh	a1, 0(a0)
	lh	a1, 2(a2)
	sh	a1, 2(a0)
	lh	a1, 4(a2)
	sh	a1, 4(a0)
	lh	a1, 6(a2)
	ld	a2, 16(a5)
	sh	a1, 6(a0)
	ld	a0, 16(s0)
	lh	a1, 0(a2)
	add	a0, a0, s5
	sh	a1, 0(a0)
	lh	a1, 2(a2)
	sh	a1, 2(a0)
	lh	a1, 4(a2)
	sh	a1, 4(a0)
	lh	a1, 6(a2)
	ld	a2, 24(a5)
	sh	a1, 6(a0)
	ld	a0, 24(s0)
	lh	a1, 0(a2)
	add	a0, a0, s5
	sh	a1, 0(a0)
	lh	a1, 2(a2)
	sh	a1, 2(a0)
	lh	a1, 4(a2)
	sh	a1, 4(a0)
	lh	a1, 6(a2)
	sh	a1, 6(a0)
	addi	s8, s8, 4
	addiw	s2, s2, 1
	addi	s5, s5, 8
	bne	s8, s11, .LBB10_47
# %bb.48:                               #   in Loop: Header=BB10_46 Depth=1
	addiw	a0, s4, 1
	addi	s4, s4, 1
	addi	s3, s3, 16
	addi	s7, s7, 1
	bne	s10, a0, .LBB10_46
	j	.LBB10_37
.LBB10_49:
	ld	a1, 0(s6)
	addi	a3, a0, 1
	addi	a5, a0, 2
	addi	a6, a0, 3
	addi	a7, a0, 4
	addi	t0, a0, 5
	addi	t1, a0, 6
	addi	t2, a0, 7
	addi	t3, a0, 8
	addi	t4, a0, 9
	addi	t5, a0, 10
	addi	t6, a0, 11
	addi	n1, a0, 12
	addi	n2, a0, 13
	addi	n3, a0, 14
	addi	n4, a0, 15
	slli	a4, a4, 3
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	add	s0, s0, a4
	add	a1, a1, a4
	addi	a2, s0, 128
	slli	a0, a0, 1
	slli	a3, a3, 1
	slli	a4, a5, 1
	slli	a5, a6, 1
	slli	a6, a7, 1
	slli	a7, t0, 1
	slli	t0, t1, 1
	slli	t1, t2, 1
	slli	t2, t3, 1
	slli	t3, t4, 1
	slli	t4, t5, 1
	slli	t5, t6, 1
	slli	t6, n1, 1
	slli	n1, n2, 1
	slli	n2, n3, 1
	slli	n3, n4, 1
.LBB10_50:                              # =>This Inner Loop Header: Depth=1
	ld	n4, 0(a1)
	ld	n5, 0(s0)
	add	n6, n4, a0
	lh	n6, 0(n6)
	add	n7, n5, a0
	sh	n6, 0(n7)
	add	n6, n4, a3
	lh	n6, 0(n6)
	add	n7, n5, a3
	sh	n6, 0(n7)
	add	n6, n4, a4
	lh	n6, 0(n6)
	add	n7, n5, a4
	sh	n6, 0(n7)
	add	n6, n4, a5
	lh	n6, 0(n6)
	add	n7, n5, a5
	sh	n6, 0(n7)
	add	n6, n4, a6
	lh	n6, 0(n6)
	add	n7, n5, a6
	sh	n6, 0(n7)
	add	n6, n4, a7
	lh	n6, 0(n6)
	add	n7, n5, a7
	sh	n6, 0(n7)
	add	n6, n4, t0
	lh	n6, 0(n6)
	add	n7, n5, t0
	sh	n6, 0(n7)
	add	n6, n4, t1
	lh	n6, 0(n6)
	add	n7, n5, t1
	sh	n6, 0(n7)
	add	n6, n4, t2
	lh	n6, 0(n6)
	add	n7, n5, t2
	sh	n6, 0(n7)
	add	n6, n4, t3
	lh	n6, 0(n6)
	add	n7, n5, t3
	sh	n6, 0(n7)
	add	n6, n4, t4
	lh	n6, 0(n6)
	add	n7, n5, t4
	sh	n6, 0(n7)
	add	n6, n4, t5
	lh	n6, 0(n6)
	add	n7, n5, t5
	sh	n6, 0(n7)
	add	n6, n4, t6
	lh	n6, 0(n6)
	add	n7, n5, t6
	sh	n6, 0(n7)
	add	n6, n4, n1
	lh	n6, 0(n6)
	add	n7, n5, n1
	sh	n6, 0(n7)
	add	n6, n4, n2
	lh	n6, 0(n6)
	add	n7, n5, n2
	sh	n6, 0(n7)
	add	n4, n4, n3
	lh	n4, 0(n4)
	add	n5, n5, n3
	sh	n4, 0(n5)
	addi	s0, s0, 8
	addi	a1, a1, 8
	bne	s0, a2, .LBB10_50
	j	.LBB10_37
.Lfunc_end10:
	.size	Conceal_Error, .Lfunc_end10-Conceal_Error
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
