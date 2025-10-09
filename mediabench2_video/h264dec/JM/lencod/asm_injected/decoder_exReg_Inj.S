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
	regsw_c	x1, 0x4(x16)		# 100000000100000000100
	ld	x4, -1768(a1)
	ld	a1, 8(a3)
	lw	a3, 156(t0)
	lw	x6, 152(t0)
	slli	a0, a0, 3
	add	a0, a1, a0
	ld	x5, 0(a0)
	add	a0, a3, a7
	regsw_c	x16, 0x600(x17)		# 100011000011000000000
	slli	x7, a0, 3
	add	a0, x4, x7
	ld	a0, 0(a0)
	add	a1, x5, x7
	ld	a1, 0(a1)
	addi	a7, a7, 1
	add	a3, a7, a3
	slli	a4, a3, 3
	regsw_c	x4, 0x492(x9)		# 010010010010010010010
	add	a3, x4, a4
	add	a4, x5, a4
	addi	t1, x7, 16
	add	t0, x4, t1
	add	t1, x5, t1
	addi	t3, x7, 24
	add	t2, x4, t3
	regsw_c	x4, 0x59f(x9)		# 010010010010110011111
	add	t3, x5, t3
	addi	t5, x7, 32
	add	t4, x4, t5
	add	t5, x5, t5
	addi	x1, x7, 40
	add	t6, x4, x1
	add	x1, x5, x1
	regsw_c	x31, 0x5fa(x27)		# 110111111110111111010
	addi	x3, x7, 48
	add	x2, x4, x3
	add	x3, x5, x3
	addi	x7, x7, 56
	add	x4, x4, x7
	add	x5, x5, x7
	add	a5, x6, a5
	slli	a5, a5, 1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	add	a6, x6, a6
	slli	a6, a6, 1
	j	.LBB0_3
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	addi	a5, a5, 2
	beq	a5, a6, .LBB0_36
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	regsw_c	x8, 0x600(x19)		# 100110100011000000000
	add	x6, a0, a5
	lh	x6, 0(x6)
	add	x7, a1, a5
	sh	x6, 0(x7)
	bge	a7, a2, .LBB0_2
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	regsw_c	x9, 0x533(x19)		# 100110100110100110011
	ld	x6, 0(a3)
	add	x6, x6, a5
	ld	x7, 0(a4)
	lh	x6, 0(x6)
	ld	x8, 0(t0)
	add	x7, x7, a5
	sh	x6, 0(x7)
	regsw_c	x13, 0x19e(x26)		# 110100110100110011110
	add	x8, x8, a5
	ld	x6, 0(t1)
	lh	x7, 0(x8)
	ld	x8, 0(t2)
	add	x6, x6, a5
	sh	x7, 0(x6)
	add	x8, x8, a5
	regsw_c	x9, 0x4f4(x19)		# 100110100110011110100
	ld	x6, 0(t3)
	lh	x7, 0(x8)
	ld	x8, 0(t4)
	add	x6, x6, a5
	sh	x7, 0(x6)
	add	x8, x8, a5
	ld	x6, 0(t5)
	regsw_c	x12, 0x7b6(x26)		# 110100110011110110110
	lh	x7, 0(x8)
	ld	x8, 0(t6)
	add	x6, x6, a5
	sh	x7, 0(x6)
	add	x8, x8, a5
	ld	x6, 0(x1)
	lh	x7, 0(x8)
	regsw_c	x7, 0x5b6(x27)		# 110110011110110110110
	ld	x8, 0(x2)
	add	x6, x6, a5
	sh	x7, 0(x6)
	add	x8, x8, a5
	ld	x6, 0(x3)
	lh	x7, 0(x8)
	ld	x8, 0(x4)
	regsw_c	x29, 0x5b3(x25)		# 110011110110110110011
	add	x6, x6, a5
	sh	x7, 0(x6)
	add	x8, x8, a5
	ld	x6, 0(x5)
	lh	x7, 0(x8)
	add	x6, x6, a5
	sh	x7, 0(x6)
	j	.LBB0_2
.LBB0_5:
	lui	t2, 22
	regsw_c	x16, 0x0(x18)		# 100101000000000000000
	addiw	x1, t2, -776
	add	x1, t0, x1
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
	regsw_c	x6, 0x0(x18)		# 100100011000000000000
	addiw	x2, a3, -1
	li	x3, 7
	bgeu	x2, x3, .LBB0_8
# %bb.7:
	regsw_c	x13, 0x7a6(x26)		# 110100110111110100110
	ld	x3, 0(x1)
	srai	x4, t4, 34
	slli	x5, x4, 3
	add	x5, x3, x5
	ld	x5, 0(x5)
	ld	x11, 24(sp)                     # 8-byte Folded Reload
	slli	x6, x11, 3
	regsw_c	x13, 0x1be(x31)		# 111110110100110111110
	add	x7, x5, x6
	ld	x7, 0(x7)
	ld	x7, 0(x7)
	ld	x8, 48(sp)                      # 8-byte Folded Reload
	slli	x8, x8, 3
	add	x7, x7, x8
	ld	x7, 0(x7)
	slli	a3, a3, 3
	regsw_c	x13, 0x5b7(x27)		# 110110110110110110111
	add	x7, x7, a3
	ld	x7, 0(x7)
	lh	x9, 0(x7)
	slli	x10, x4, 4
	addi	x11, x11, 1
	slli	x12, x11, 3
	add	x5, x5, x12
	regsw_c	x15, 0x59c(x26)		# 110100111110110011100
	ld	x5, 0(x5)
	addi	x13, sp, 1080
	add	x14, x13, x10
	add	x15, x14, t2
	ld	x5, 0(x5)
	sw	x9, 0(x15)
	addi	x9, sp, 1144
	regsw_c	x29, 0x5be(x27)		# 110111110110110111110
	lh	x7, 2(x7)
	add	x5, x5, x8
	ld	x5, 0(x5)
	addi	x4, x4, 1
	slli	x15, x4, 3
	add	x3, x3, x15
	ld	x3, 0(x3)
	regsw_c	x13, 0x7b3(x31)		# 111110110111110110011
	add	x10, x9, x10
	add	x5, x5, a3
	ld	x5, 0(x5)
	add	x6, x3, x6
	ld	x6, 0(x6)
	add	x15, x10, t2
	sw	x7, 0(x15)
	regsw_c	x13, 0x6fe(x27)		# 110110110111011111110
	lh	x7, 0(x5)
	ld	x6, 0(x6)
	slli	x11, x11, 2
	add	x14, x14, x11
	sw	x7, 0(x14)
	add	x6, x6, x8
	ld	x6, 0(x6)
	regsw_c	x29, 0x5be(x27)		# 110111110110110111110
	lh	x5, 2(x5)
	add	x3, x3, x12
	ld	x3, 0(x3)
	add	x6, x6, a3
	ld	x6, 0(x6)
	add	x10, x10, x11
	ld	x3, 0(x3)
	regsw_c	x13, 0x7be(x15)		# 011110110111110111110
	sw	x5, 0(x10)
	lh	x5, 0(x6)
	slli	x4, x4, 4
	add	x3, x3, x8
	ld	x3, 0(x3)
	add	x13, x13, x4
	add	x7, x13, t2
	regsw_c	x1, 0x5f4(x13)		# 011010000110111110100
	sw	x5, 0(x7)
	add	a3, x3, a3
	ld	a3, 0(a3)
	lh	x3, 2(x6)
	add	x4, x9, x4
	add	x5, x4, t2
	lh	x6, 0(a3)
	regsw_c	x14, 0x7d0(x12)		# 011000111011111010000
	sw	x3, 0(x5)
	lh	a3, 2(a3)
	add	x13, x13, x11
	sw	x6, 0(x13)
	add	x4, x4, x11
	sw	a3, 0(x4)
	j	.LBB0_9
.LBB0_8:
	addi	a3, sp, 1144
	regsw_c	x11, 0x4a7(x19)		# 100110101110010100111
	srai	x3, t4, 34
	slli	x3, x3, 4
	add	x4, a3, x3
	add	x5, x4, t2
	sw	zero, 0(x5)
	addi	x5, sp, 1080
	add	x6, x5, x3
	regsw_c	x9, 0x6ba(x25)		# 110010100111010111010
	add	x7, x6, t2
	sw	zero, 0(x7)
	addi	x7, t2, 4
	add	x4, x4, x7
	sw	zero, 0(x4)
	add	x6, x6, x7
	sw	zero, 0(x6)
	regsw_c	x24, 0x5f2(x24)		# 110001100010111110010
	addi	x3, x3, 16
	add	a3, a3, x3
	add	x4, a3, t2
	sw	zero, 0(x4)
	add	x3, x5, x3
	add	x4, x3, t2
	sw	zero, 0(x4)
	regsw_c	x14, 0x400(x4)		# 001000111010000000000
	add	a3, a3, x7
	sw	zero, 0(a3)
	add	x3, x3, x7
	sw	zero, 0(x3)
.LBB0_9:
	lui	a3, %hi(decs)
	ld	a3, %lo(decs)(a3)
	regsw_c	x5, 0x13c(x16)		# 100000010100100111100
	ld	x4, 0(a3)
	slli	a3, a7, 3
	add	a3, x4, a3
	ld	x3, 0(a3)
	slli	x5, a4, 3
	add	x4, x4, x5
	slli	x5, a5, 2
	regsw_c	x15, 0x500(x18)		# 100100111110100000000
	slli	x6, a7, 6
	addi	x7, sp, 56
	add	x6, x6, x7
	addi	x6, x6, 256
	slli	x7, a6, 2
	j	.LBB0_11
.LBB0_10:                               #   in Loop: Header=BB0_11 Depth=1
	regsw_c	x16, 0x0(x25)		# 110011000000000000000
	addi	x5, x5, 4
	beq	x5, x7, .LBB0_13
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	regsw_c	x14, 0x600(x31)		# 111110111011000000000
	add	x8, x3, x5
	lw	x9, 0(x8)
	add	x8, x6, x5
	sw	x9, -256(x8)
	bge	a4, a2, .LBB0_10
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=1
	regsw_c	x29, 0xfe(x27)		# 110111110100011111110
	ld	x9, 0(x4)
	add	x9, x9, x5
	lw	x9, 0(x9)
	ld	x10, 16(a3)
	sw	x9, -192(x8)
	add	x10, x10, x5
	lw	x9, 0(x10)
	regsw_c	x31, 0x51f(x17)		# 100011111110100011111
	ld	x10, 24(a3)
	sw	x9, -128(x8)
	add	x10, x10, x5
	lw	x9, 0(x10)
	ld	x10, 32(a3)
	sw	x9, -64(x8)
	add	x10, x10, x5
	regsw_c	x7, 0x7a3(x26)		# 110100011111110100011
	lw	x9, 0(x10)
	ld	x10, 40(a3)
	sw	x9, 0(x8)
	add	x10, x10, x5
	lw	x9, 0(x10)
	ld	x10, 48(a3)
	sw	x9, 64(x8)
	regsw_c	x8, 0x7f3(x31)		# 111110100011111110011
	add	x10, x10, x5
	lw	x9, 0(x10)
	ld	x10, 56(a3)
	sw	x9, 128(x8)
	add	x10, x10, x5
	lw	x9, 0(x10)
	sw	x9, 192(x8)
	j	.LBB0_10
.LBB0_13:
	li	a3, 7
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bltu	x2, a3, .LBB0_25
# %bb.14:
	bnez	a1, .LBB0_32
	j	.LBB0_22
.LBB0_15:
	beqz	t1, .LBB0_18
# %bb.16:
	regsw_c	x16, 0x0(x16)		# 100001000000000000000
	li	x2, 1
	bne	t1, x2, .LBB0_6
# %bb.17:
	regsw_c	x16, 0x0(x24)		# 110001000000000000000
	lw	x2, 980(x1)
	blez	x2, .LBB0_6
.LBB0_18:
	slli	a1, a7, 6
	regsw_c	x9, 0x280(x17)		# 100010100101010000000
	addi	x10, sp, 56
	add	a1, x10, a1
	slli	x9, a5, 2
	add	x2, a1, x9
	sw	zero, 0(x2)
	bge	a4, a2, .LBB0_20
# %bb.19:
	regsw_c	x30, 0x53a(x19)		# 100111111010100111010
	slli	x3, a4, 6
	add	x3, x10, x3
	add	x2, x3, x9
	sw	zero, 0(x2)
	addi	x4, a1, 128
	add	x2, x4, x9
	sw	zero, 0(x2)
	regsw_c	x21, 0x1d4(x19)		# 100111010100111010100
	addi	x5, a1, 192
	add	x2, x5, x9
	sw	zero, 0(x2)
	addi	x6, a1, 256
	add	x2, x6, x9
	sw	zero, 0(x2)
	addi	x7, a1, 320
	regsw_c	x9, 0x6a6(x29)		# 111010100111010100110
	add	x2, x7, x9
	sw	zero, 0(x2)
	addi	x8, a1, 384
	add	x2, x8, x9
	sw	zero, 0(x2)
	addi	x2, a7, 7
	slli	x11, x2, 6
	regsw_c	x21, 0x557(x31)		# 111111010110101010111
	add	x10, x10, x11
	add	x11, x10, x9
	sw	zero, 0(x11)
	addi	x11, x9, 4
	add	x12, a1, x11
	sw	zero, 0(x12)
	add	x12, x3, x11
	regsw_c	x21, 0x6ba(x11)		# 010111010111010111010
	sw	zero, 0(x12)
	add	x12, x4, x11
	sw	zero, 0(x12)
	add	x12, x5, x11
	sw	zero, 0(x12)
	add	x12, x6, x11
	sw	zero, 0(x12)
	regsw_c	x14, 0x5d6(x29)		# 111010111010111010110
	add	x12, x7, x11
	sw	zero, 0(x12)
	add	x12, x8, x11
	sw	zero, 0(x12)
	add	x11, x10, x11
	sw	zero, 0(x11)
	addi	x11, x9, 8
	regsw_c	x14, 0x5d7(x21)		# 101010111010111010111
	add	x12, a1, x11
	sw	zero, 0(x12)
	add	x12, x3, x11
	sw	zero, 0(x12)
	add	x12, x4, x11
	sw	zero, 0(x12)
	add	x12, x5, x11
	regsw_c	x21, 0x6ba(x11)		# 010111010111010111010
	sw	zero, 0(x12)
	add	x12, x6, x11
	sw	zero, 0(x12)
	add	x12, x7, x11
	sw	zero, 0(x12)
	add	x12, x8, x11
	sw	zero, 0(x12)
	regsw_c	x13, 0x2ba(x29)		# 111010110101010111010
	add	x11, x10, x11
	sw	zero, 0(x11)
	addi	x11, x9, 12
	add	x12, a1, x11
	sw	zero, 0(x12)
	add	x12, x3, x11
	sw	zero, 0(x12)
	regsw_c	x14, 0x5d7(x29)		# 111010111010111010111
	add	x12, x4, x11
	sw	zero, 0(x12)
	add	x12, x5, x11
	sw	zero, 0(x12)
	add	x12, x6, x11
	sw	zero, 0(x12)
	add	x12, x7, x11
	regsw_c	x21, 0x6b5(x11)		# 010111010111010110101
	sw	zero, 0(x12)
	add	x12, x8, x11
	sw	zero, 0(x12)
	add	x11, x10, x11
	sw	zero, 0(x11)
	addi	x11, x9, 16
	add	x12, a1, x11
	regsw_c	x21, 0x6ba(x11)		# 010111010111010111010
	sw	zero, 0(x12)
	add	x12, x3, x11
	sw	zero, 0(x12)
	add	x12, x4, x11
	sw	zero, 0(x12)
	add	x12, x5, x11
	sw	zero, 0(x12)
	regsw_c	x14, 0x5d7(x29)		# 111010111010111010111
	add	x12, x6, x11
	sw	zero, 0(x12)
	add	x12, x7, x11
	sw	zero, 0(x12)
	add	x12, x8, x11
	sw	zero, 0(x12)
	add	x11, x10, x11
	regsw_c	x10, 0x5d7(x11)		# 010110101010111010111
	sw	zero, 0(x11)
	addi	x11, x9, 20
	add	x12, a1, x11
	sw	zero, 0(x12)
	add	x12, x3, x11
	sw	zero, 0(x12)
	add	x12, x4, x11
	regsw_c	x21, 0x6ba(x11)		# 010111010111010111010
	sw	zero, 0(x12)
	add	x12, x5, x11
	sw	zero, 0(x12)
	add	x12, x6, x11
	sw	zero, 0(x12)
	add	x12, x7, x11
	sw	zero, 0(x12)
	regsw_c	x14, 0x5aa(x29)		# 111010111010110101010
	add	x12, x8, x11
	sw	zero, 0(x12)
	add	x11, x10, x11
	sw	zero, 0(x11)
	addi	x9, x9, 24
	add	x11, a1, x9
	sw	zero, 0(x11)
	regsw_c	x14, 0x5d7(x29)		# 111010111010111010111
	add	x11, x3, x9
	sw	zero, 0(x11)
	add	x11, x4, x9
	sw	zero, 0(x11)
	add	x11, x5, x9
	sw	zero, 0(x11)
	add	x11, x6, x9
	regsw_c	x21, 0x6ba(x11)		# 010111010111010111010
	sw	zero, 0(x11)
	add	x11, x7, x9
	sw	zero, 0(x11)
	add	x11, x8, x9
	sw	zero, 0(x11)
	add	x9, x10, x9
	sw	zero, 0(x9)
	regsw_c	x2, 0x1d7(x19)		# 100110001000111010111
	addi	x9, a5, 7
	slli	x10, x9, 2
	add	a1, a1, x10
	sw	zero, 0(a1)
	add	x3, x3, x10
	sw	zero, 0(x3)
	add	x4, x4, x10
	regsw_c	x21, 0x6ba(x11)		# 010111010111010111010
	sw	zero, 0(x4)
	add	x5, x5, x10
	sw	zero, 0(x5)
	add	x6, x6, x10
	sw	zero, 0(x6)
	add	x7, x7, x10
	sw	zero, 0(x7)
	regsw_c	x0, 0x0(x29)		# 111010000000000000000
	add	x8, x8, x10
	sw	zero, 0(x8)
	j	.LBB0_21
.LBB0_20:
	regsw_c	x4, 0x494(x9)		# 010010010010010010100
	sw	zero, 4(x2)
	sw	zero, 8(x2)
	sw	zero, 12(x2)
	sw	zero, 16(x2)
	sw	zero, 20(x2)
	sw	zero, 24(x2)
	addi	x9, a5, 7
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x2, a7
.LBB0_21:
	regsw_c	x3, 0x440(x24)		# 110000001110001000000
	slli	x2, x2, 6
	addi	a1, sp, 56
	add	a1, a1, x2
	slli	x9, x9, 2
	add	a1, a1, x9
	sw	zero, 0(a1)
	addi	a1, sp, 1144
	regsw_c	x11, 0x4a7(x19)		# 100110101110010100111
	srai	x2, t4, 34
	slli	x2, x2, 4
	add	x3, a1, x2
	add	x4, x3, t2
	sw	zero, 0(x4)
	addi	x4, sp, 1080
	add	x5, x4, x2
	regsw_c	x9, 0x6ba(x25)		# 110010100111010111010
	add	x6, x5, t2
	sw	zero, 0(x6)
	addi	x6, t2, 4
	add	x3, x3, x6
	sw	zero, 0(x3)
	add	x5, x5, x6
	sw	zero, 0(x5)
	regsw_c	x24, 0x5f2(x24)		# 110001100010111110010
	addi	x2, x2, 16
	add	a1, a1, x2
	add	x3, a1, t2
	sw	zero, 0(x3)
	add	x2, x4, x2
	add	x3, x2, t2
	sw	zero, 0(x3)
	regsw_c	x14, 0x10(x4)		# 001000111000000010000
	add	a1, a1, x6
	sw	zero, 0(a1)
	add	x2, x2, x6
	addiw	a3, a3, -1
	li	a1, 7
	sw	zero, 0(x2)
	bltu	a3, a1, .LBB0_25
.LBB0_22:
	beqz	t1, .LBB0_25
# %bb.23:
	li	a1, 1
	bne	t1, a1, .LBB0_32
# %bb.24:
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	lw	a1, 980(x1)
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
	regsw_c	x1, 0x4(x16)		# 100000000100000000100
	ld	x4, -1768(a1)
	ld	a1, 8(a3)
	lw	a3, 156(t0)
	lw	x6, 152(t0)
	slli	a0, a0, 3
	add	a0, a1, a0
	ld	x5, 0(a0)
	add	a7, a3, a7
	regsw_c	x16, 0x600(x17)		# 100011000011000000000
	slli	x7, a7, 3
	add	a0, x4, x7
	ld	a0, 0(a0)
	add	a1, x5, x7
	ld	a1, 0(a1)
	add	a3, a4, a3
	slli	a7, a3, 3
	regsw_c	x4, 0x492(x9)		# 010010010010010010010
	add	a3, x4, a7
	add	a7, x5, a7
	addi	t1, x7, 16
	add	t0, x4, t1
	add	t1, x5, t1
	addi	t3, x7, 24
	add	t2, x4, t3
	regsw_c	x4, 0x59f(x9)		# 010010010010110011111
	add	t3, x5, t3
	addi	t5, x7, 32
	add	t4, x4, t5
	add	t5, x5, t5
	addi	x1, x7, 40
	add	t6, x4, x1
	add	x1, x5, x1
	regsw_c	x31, 0x5fa(x27)		# 110111111110111111010
	addi	x3, x7, 48
	add	x2, x4, x3
	add	x3, x5, x3
	addi	x7, x7, 56
	add	x4, x4, x7
	add	x5, x5, x7
	add	a5, x6, a5
	slli	a5, a5, 1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	add	a6, x6, a6
	slli	a6, a6, 1
	j	.LBB0_34
.LBB0_33:                               #   in Loop: Header=BB0_34 Depth=1
	addi	a5, a5, 2
	beq	a5, a6, .LBB0_36
.LBB0_34:                               # =>This Inner Loop Header: Depth=1
	regsw_c	x8, 0x600(x19)		# 100110100011000000000
	add	x6, a0, a5
	lh	x6, 0(x6)
	add	x7, a1, a5
	sh	x6, 0(x7)
	bge	a4, a2, .LBB0_33
# %bb.35:                               #   in Loop: Header=BB0_34 Depth=1
	regsw_c	x9, 0x533(x19)		# 100110100110100110011
	ld	x6, 0(a3)
	add	x6, x6, a5
	ld	x7, 0(a7)
	lh	x6, 0(x6)
	ld	x8, 0(t0)
	add	x7, x7, a5
	sh	x6, 0(x7)
	regsw_c	x13, 0x19e(x26)		# 110100110100110011110
	add	x8, x8, a5
	ld	x6, 0(t1)
	lh	x7, 0(x8)
	ld	x8, 0(t2)
	add	x6, x6, a5
	sh	x7, 0(x6)
	add	x8, x8, a5
	regsw_c	x9, 0x4f4(x19)		# 100110100110011110100
	ld	x6, 0(t3)
	lh	x7, 0(x8)
	ld	x8, 0(t4)
	add	x6, x6, a5
	sh	x7, 0(x6)
	add	x8, x8, a5
	ld	x6, 0(t5)
	regsw_c	x12, 0x7b6(x26)		# 110100110011110110110
	lh	x7, 0(x8)
	ld	x8, 0(t6)
	add	x6, x6, a5
	sh	x7, 0(x6)
	add	x8, x8, a5
	ld	x6, 0(x1)
	lh	x7, 0(x8)
	regsw_c	x7, 0x5b6(x27)		# 110110011110110110110
	ld	x8, 0(x2)
	add	x6, x6, a5
	sh	x7, 0(x6)
	add	x8, x8, a5
	ld	x6, 0(x3)
	lh	x7, 0(x8)
	ld	x8, 0(x4)
	regsw_c	x29, 0x5b3(x25)		# 110011110110110110011
	add	x6, x6, a5
	sh	x7, 0(x6)
	add	x8, x8, a5
	ld	x6, 0(x5)
	lh	x7, 0(x8)
	add	x6, x6, a5
	sh	x7, 0(x6)
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
	regsw_c	x0, 0x0(x18)		# 100100000000000000000
	slli	x1, t1, 2
	add	x2, t5, t2
	sgtz	t6, t3
	neg	t6, t6
	and	t3, t6, t3
	addi	t6, a7, 2
	slli	t3, t3, 1
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x4, a6
	blt	a6, t6, .LBB3_16
# %bb.15:
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x4, t6
.LBB3_16:
	lhu	t6, 0(t4)
	regsw_c	x1, 0x41(x27)		# 110110000100001000001
	add	x1, x1, t1
	lhu	x2, 0(x2)
	li	t1, 20
	add	x3, t5, t3
	sgtz	t4, x4
	neg	t4, t4
	and	t4, t4, x4
	slli	t4, t4, 1
	regsw_c	x2, 0x0(x16)		# 100000001000000000000
	addi	x4, a7, 3
	add	a7, t5, t4
	blt	a6, x4, .LBB3_18
# %bb.17:
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	mv	a6, x4
.LBB3_18:
	regsw_c	x12, 0x134(x7)		# 001110110000100110100
	subw	t6, t6, x1
	mul	x1, x2, t1
	lhu	x3, 0(x3)
	lhu	a7, 0(a7)
	sgtz	x2, a6
	neg	x2, x2
	addi	x4, a5, -1
	regsw_c	x2, 0x0(x10)		# 010100001000000000000
	and	a6, x2, a6
	mv	x2, a4
	blt	a4, x4, .LBB3_20
# %bb.19:
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	mv	x2, x4
.LBB3_20:
	regsw_c	x15, 0x572(x23)		# 101110111110101110010
	sgtz	x4, x2
	neg	x4, x4
	and	x2, x4, x2
	slli	x2, x2, 3
	add	x2, a0, x2
	ld	x2, 0(x2)
	add	t6, x1, t6
	regsw_c	x13, 0x5a0(x27)		# 110110110110110100000
	mul	x1, x3, t1
	add	x3, x2, t0
	add	x4, x2, a2
	lhu	x4, 0(x4)
	lhu	x5, 0(x3)
	slli	x3, a7, 2
	slli	a6, a6, 1
	regsw_c	x31, 0x5b6(x27)		# 110111111110110110110
	slli	x6, x4, 2
	subw	x4, x5, x4
	subw	x6, x4, x6
	add	x4, x2, t2
	lhu	x5, 0(x4)
	add	x4, x2, t3
	lhu	x7, 0(x4)
	regsw_c	x13, 0x7b4(x27)		# 110110110111110110100
	add	x4, x2, t4
	lhu	x4, 0(x4)
	mul	x5, x5, t1
	add	x6, x5, x6
	mul	x7, x7, t1
	slli	x5, x4, 2
	mv	x8, a4
	blt	a4, a5, .LBB3_22
# %bb.21:
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x8, a5
.LBB3_22:
	regsw_c	x29, 0x7ae(x10)		# 010101110111110101110
	add	t6, x1, t6
	sgtz	x1, x8
	neg	x1, x1
	and	x1, x1, x8
	slli	x1, x1, 3
	add	x1, a0, x1
	ld	x9, 0(x1)
	regsw_c	x14, 0x5b4(x24)		# 110000111010110110100
	add	x3, x3, a7
	add	t5, t5, a6
	add	x1, x7, x6
	add	a7, x9, t0
	add	x6, x9, a2
	lhu	x6, 0(x6)
	lhu	x7, 0(a7)
	regsw_c	x13, 0x7b7(x29)		# 111010110111110110111
	add	x4, x5, x4
	add	a7, x2, a6
	slli	x2, x6, 2
	subw	x5, x7, x6
	add	x6, x9, t2
	lhu	x6, 0(x6)
	subw	x2, x5, x2
	regsw_c	x13, 0x5b7(x27)		# 110110110110110110111
	add	x5, x9, t3
	lhu	x5, 0(x5)
	mul	x6, x6, t1
	add	x7, x9, t4
	lhu	x7, 0(x7)
	mul	x5, x5, t1
	add	x5, x5, x6
	regsw_c	x15, 0x1a1(x31)		# 111110111100110100001
	add	x2, x5, x2
	slli	x6, x7, 2
	add	x6, x6, x7
	addi	x8, a5, 1
	add	x5, x9, a6
	mv	x7, a4
	blt	a4, x8, .LBB3_24
# %bb.23:
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	mv	x7, x8
.LBB3_24:
	regsw_c	x15, 0x571(x23)		# 101110111110101110001
	sgtz	x8, x7
	neg	x8, x8
	and	x7, x8, x7
	slli	x7, x7, 3
	add	x7, a0, x7
	ld	x7, 0(x7)
	subw	t6, t6, x3
	regsw_c	x13, 0x5fe(x27)		# 110110110110111111110
	add	x3, x7, t0
	add	x8, x7, a2
	lhu	x8, 0(x8)
	lhu	x3, 0(x3)
	subw	x1, x1, x4
	subw	x2, x2, x6
	slli	x4, x8, 2
	regsw_c	x13, 0x5b8(x31)		# 111110110110110111000
	subw	x3, x3, x8
	add	x6, x7, t2
	lhu	x6, 0(x6)
	add	x8, x7, t3
	lhu	x8, 0(x8)
	subw	x4, x3, x4
	lhu	t5, 0(t5)
	regsw_c	x15, 0x586(x27)		# 110110111110110000110
	mul	x3, x6, t1
	mul	x6, x8, t1
	add	x6, x6, x3
	add	x3, x7, t4
	lhu	x8, 0(x3)
	lhu	a7, 0(a7)
	lhu	x3, 0(x5)
	regsw_c	x13, 0x5e7(x31)		# 111110110110111100111
	add	x6, x6, x4
	slli	x5, x8, 2
	add	x7, x7, a6
	lhu	x4, 0(x7)
	add	x5, x5, x8
	addi	x7, a5, 2
	subw	x5, x6, x5
	regsw_c	x16, 0x0(x16)		# 100001000000000000000
	mv	x6, a4
	blt	a4, x7, .LBB3_26
# %bb.25:
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	mv	x6, x7
.LBB3_26:
	regsw_c	x15, 0x570(x23)		# 101110111110101110000
	sgtz	x7, x6
	neg	x7, x7
	and	x6, x7, x6
	slli	x6, x6, 3
	add	x6, a0, x6
	ld	x6, 0(x6)
	add	t6, t6, t5
	regsw_c	x5, 0x19b(x10)		# 010100010100110011011
	add	t5, x6, t0
	lhu	x7, 0(t5)
	add	t5, x6, a2
	lhu	x8, 0(t5)
	add	x1, x1, a7
	add	t5, x2, x3
	add	a7, x5, x4
	regsw_c	x13, 0x5b7(x31)		# 111110110110110110111
	subw	x2, x7, x8
	add	x3, x6, t2
	lhu	x3, 0(x3)
	add	x4, x6, t3
	lhu	x4, 0(x4)
	slli	x8, x8, 2
	subw	x2, x2, x8
	regsw_c	x15, 0x5b6(x27)		# 110110111110110110110
	mul	x3, x3, t1
	mul	x4, x4, t1
	add	x3, x4, x3
	add	x4, x6, t4
	lhu	x4, 0(x4)
	add	x6, x6, a6
	lhu	x5, 0(x6)
	regsw_c	x15, 0x719(x31)		# 111110111111100011001
	add	x3, x3, x2
	slli	x2, x4, 2
	add	x2, x2, x4
	subw	x4, x2, x5
	addi	x2, a5, 3
	subw	a5, x3, x4
	blt	a4, x2, .LBB3_28
# %bb.27:
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	mv	a4, x2
.LBB3_28:
	regsw_c	x4, 0x0(x19)		# 100110010000000000000
	sgtz	x2, a4
	neg	x2, x2
	and	a4, x2, a4
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
	regsw_c	x16, 0x0(x8)		# 010001000000000000000
	slli	a0, x1, 2
	add	a0, a0, x1
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
	regsw_c	x9, 0x0(x16)		# 100000100100000000000
	slli	x1, t2, 2
	addi	t6, a5, 2
	add	x2, t1, t5
	mv	x3, a4
	blt	a4, t6, .LBB3_91
# %bb.90:
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x3, t6
.LBB3_91:
	lhu	t6, 0(t4)
	regsw_c	x2, 0x40(x27)		# 110110001000001000000
	add	x1, x1, t2
	lhu	x2, 0(x2)
	sgtz	t2, x3
	neg	t2, t2
	and	t2, t2, x3
	slli	t2, t2, 3
	add	t2, a0, t2
	ld	t4, 0(t2)
	li	t2, 20
	regsw_c	x0, 0x200(x18)		# 100100000001000000000
	add	x3, t3, t5
	addi	x4, a5, 3
	add	a5, t4, t5
	blt	a4, x4, .LBB3_93
# %bb.92:
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	mv	a4, x4
.LBB3_93:
	regsw_c	x12, 0x132(x7)		# 001110110000100110010
	subw	t6, t6, x1
	mul	x1, x2, t2
	lhu	x2, 0(x3)
	lhu	a5, 0(a5)
	sgtz	x3, a4
	neg	x3, x3
	and	a4, x3, a4
	slli	a4, a4, 3
	regsw_c	x0, 0x200(x16)		# 100000000001000000000
	addi	x3, a7, -1
	add	a0, a0, a4
	mv	a4, a6
	blt	a6, x3, .LBB3_95
# %bb.94:
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	mv	a4, x3
.LBB3_95:
	regsw_c	x9, 0x484(x11)		# 010110100110010000100
	add	t6, x1, t6
	mul	x1, x2, t2
	sgtz	x2, a4
	neg	x2, x2
	and	a4, x2, a4
	slli	a4, a4, 1
	add	x2, t0, a4
	regsw_c	x13, 0x37(x19)		# 100110110100000110111
	add	x3, a1, a4
	lhu	x3, 0(x3)
	lhu	x4, 0(x2)
	slli	x2, a5, 2
	ld	a0, 0(a0)
	slli	x5, x3, 2
	subw	x3, x4, x3
	regsw_c	x13, 0x1a6(x30)		# 111100110100110100110
	subw	x6, x3, x5
	add	x3, t1, a4
	lhu	x4, 0(x3)
	add	x3, t3, a4
	lhu	x5, 0(x3)
	add	x3, t4, a4
	lhu	x3, 0(x3)
	regsw_c	x29, 0x500(x27)		# 110111110110100000000
	mul	x4, x4, t2
	add	x6, x4, x6
	mul	x7, x5, t2
	slli	x4, x3, 2
	mv	x5, a6
	blt	a6, a7, .LBB3_97
# %bb.96:
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x5, a7
.LBB3_97:
	regsw_c	x0, 0x777(x11)		# 010110000011101110111
	add	t6, x1, t6
	add	x2, x2, a5
	add	t5, a0, t5
	add	a5, x7, x6
	sgtz	x1, x5
	neg	x1, x1
	and	x1, x1, x5
	regsw_c	x27, 0x5b8(x26)		# 110101101110110111000
	slli	x6, x1, 1
	add	x1, t0, x6
	add	x5, a1, x6
	lhu	x5, 0(x5)
	lhu	x7, 0(x1)
	add	x1, x4, x3
	add	a4, a0, a4
	regsw_c	x27, 0x5ee(x27)		# 110111101110111101110
	slli	x3, x5, 2
	subw	x4, x7, x5
	add	x5, t1, x6
	lhu	x5, 0(x5)
	subw	x4, x4, x3
	add	x3, t3, x6
	lhu	x3, 0(x3)
	regsw_c	x29, 0x5fe(x26)		# 110101110110111111110
	mul	x5, x5, t2
	add	x7, t4, x6
	lhu	x7, 0(x7)
	mul	x3, x3, t2
	add	x3, x3, x5
	add	x4, x3, x4
	slli	x5, x7, 2
	regsw_c	x11, 0x40(x30)		# 111100101100001000000
	add	x5, x5, x7
	addi	x7, a7, 1
	add	x3, a0, x6
	mv	x6, a6
	blt	a6, x7, .LBB3_99
# %bb.98:
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	mv	x6, x7
.LBB3_99:
	regsw_c	x29, 0x7ad(x6)		# 001101110111110101101
	subw	t6, t6, x2
	sgtz	x2, x6
	neg	x2, x2
	and	x2, x2, x6
	slli	x6, x2, 1
	add	x2, t0, x6
	add	x7, a1, x6
	regsw_c	x3, 0x7bd(x27)		# 110110001111110111101
	lhu	x7, 0(x7)
	lhu	x2, 0(x2)
	subw	a5, a5, x1
	subw	x1, x4, x5
	slli	x4, x7, 2
	subw	x2, x2, x7
	add	x5, t1, x6
	regsw_c	x29, 0x636(x26)		# 110101110111000110110
	lhu	x5, 0(x5)
	add	x7, t3, x6
	lhu	x7, 0(x7)
	subw	x4, x2, x4
	lhu	t5, 0(t5)
	mul	x2, x5, t2
	mul	x5, x7, t2
	regsw_c	x28, 0x1be(x30)		# 111101110000110111110
	add	x5, x5, x2
	add	x2, t4, x6
	lhu	x7, 0(x2)
	lhu	a4, 0(a4)
	lhu	x2, 0(x3)
	add	x4, x5, x4
	slli	x5, x7, 2
	regsw_c	x15, 0x1e1(x23)		# 101110111100111100001
	add	x6, a0, x6
	lhu	x3, 0(x6)
	add	x5, x5, x7
	addi	x6, a7, 2
	subw	x4, x4, x5
	mv	x5, a6
	blt	a6, x6, .LBB3_101
# %bb.100:
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	mv	x5, x6
.LBB3_101:
	add	t5, t6, t5
	regsw_c	x3, 0x61(x4)		# 001000001100001100001
	sgtz	t6, x5
	neg	t6, t6
	and	t6, t6, x5
	slli	x5, t6, 1
	add	t6, t0, x5
	lhu	x6, 0(t6)
	add	t6, a1, x5
	regsw_c	x6, 0x7ee(x16)		# 100000011011111101110
	lhu	x7, 0(t6)
	add	t6, a5, a4
	add	a4, x1, x2
	add	a5, x4, x3
	subw	x1, x6, x7
	add	x2, t1, x5
	lhu	x2, 0(x2)
	regsw_c	x13, 0x7b7(x23)		# 101110110111110110111
	add	x3, t3, x5
	lhu	x3, 0(x3)
	slli	x7, x7, 2
	subw	x1, x1, x7
	mul	x2, x2, t2
	mul	x3, x3, t2
	add	x2, x3, x2
	regsw_c	x11, 0x5f7(x23)		# 101110101110111110111
	add	x3, t4, x5
	lhu	x3, 0(x3)
	add	x5, a0, x5
	lhu	x4, 0(x5)
	add	x2, x2, x1
	slli	x1, x3, 2
	add	x1, x1, x3
	regsw_c	x6, 0x200(x30)		# 111100011001000000000
	subw	x3, x1, x4
	addi	x1, a7, 3
	subw	a7, x2, x3
	blt	a6, x1, .LBB3_103
# %bb.102:
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	mv	a6, x1
.LBB3_103:
	regsw_c	x4, 0x0(x19)		# 100110010000000000000
	sgtz	x1, a6
	neg	x1, x1
	and	a6, x1, a6
	slli	a6, a6, 1
	add	a1, a1, a6
	lhu	a1, 0(a1)
	add	t0, t0, a6
	lhu	t0, 0(t0)
	regsw_c	x0, 0x1(x16)		# 100000000000000000001
	slli	x1, a1, 2
	add	t1, t1, a6
	lhu	t1, 0(t1)
	add	t3, t3, a6
	lhu	t3, 0(t3)
	subw	a1, t0, a1
	subw	a1, a1, x1
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
	regsw_c	x0, 0x100(x19)		# 100110000000100000000
	slliw	x8, a0, 3
	addiw	x9, x8, 8
	lui	a0, 2
	add	a0, a3, a0
	ld	x4, -1768(a0)
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	slliw	a2, a2, 2
	regsw_c	x0, 0x0(x17)		# 100010000000000000000
	andi	x7, a2, -8
	addiw	a2, x7, 8
	bltz	a1, .LBB8_5
# %bb.1:
	lui	a3, %hi(decs)
	ld	a3, %lo(decs)(a3)
	regsw_c	x12, 0x7d0(x16)		# 100000110011111010000
	ld	x5, 0(a3)
	li	a3, 0
	slli	x6, x7, 3
	add	a4, x4, x6
	add	x10, x5, x6
	addi	a5, x7, 1
	slli	a7, a5, 3
	regsw_c	x4, 0x492(x9)		# 010010010010010010010
	add	a6, x4, a7
	add	a7, x5, a7
	addi	t1, x6, 16
	add	t0, x4, t1
	add	t1, x5, t1
	addi	t3, x6, 24
	add	t2, x4, t3
	regsw_c	x4, 0x59f(x9)		# 010010010010110011111
	add	t3, x5, t3
	addi	t5, x6, 32
	add	t4, x4, t5
	add	t5, x5, t5
	addi	x1, x6, 40
	add	t6, x4, x1
	add	x1, x5, x1
	regsw_c	x31, 0x5fe(x27)		# 110111111110111111110
	addi	x3, x6, 48
	add	x2, x4, x3
	add	x3, x5, x3
	addi	x6, x6, 56
	add	x4, x4, x6
	add	x5, x5, x6
	ld	x6, 0(x10)
	slli	a1, a1, 9
	regsw_c	x25, 0x54e(x24)		# 110001100110101001110
	slli	x7, x7, 5
	add	a1, a1, x7
	lui	x7, 1
	addiw	x7, x7, 824
	add	x7, a0, x7
	add	a1, a1, x7
	slli	x7, x8, 2
	regsw_c	x0, 0x0(x27)		# 110110000000000000000
	slli	x8, x8, 1
	slli	x9, x9, 2
	j	.LBB8_3
.LBB8_2:                                #   in Loop: Header=BB8_3 Depth=1
	regsw_c	x0, 0x600(x24)		# 110000000011000000000
	addi	x7, x7, 4
	addi	a3, a3, 2
	addi	a1, a1, 2
	beq	x7, x9, .LBB8_9
.LBB8_3:                                # =>This Inner Loop Header: Depth=1
	regsw_c	x13, 0x3b7(x18)		# 100100110101110110111
	lw	x10, 156(a0)
	lw	x11, 152(a0)
	slli	x10, x10, 3
	add	x10, a4, x10
	ld	x10, 0(x10)
	slli	x11, x11, 1
	add	x11, x11, x8
	regsw_c	x29, 0x3bf(x27)		# 110111110101110111111
	add	x11, x11, a3
	add	x10, x10, x11
	lhu	x11, 0(x10)
	add	x10, a1, x8
	lhu	x12, -128(x10)
	subw	x11, x11, x12
	add	x12, x6, x7
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	sw	x11, 0(x12)
	bge	a5, a2, .LBB8_2
# %bb.4:                                #   in Loop: Header=BB8_3 Depth=1
	regsw_c	x13, 0x3b7(x18)		# 100100110101110110111
	lw	x11, 156(a0)
	lw	x12, 152(a0)
	slli	x11, x11, 3
	add	x11, a6, x11
	ld	x11, 0(x11)
	slli	x12, x12, 1
	add	x12, x12, x8
	regsw_c	x29, 0x53f(x27)		# 110111110110100111111
	add	x12, x12, a3
	add	x11, x11, x12
	lhu	x11, 0(x11)
	lhu	x12, -96(x10)
	ld	x13, 0(a7)
	subw	x11, x11, x12
	add	x13, x13, x7
	regsw_c	x9, 0x576(x14)		# 011100100110101110110
	sw	x11, 0(x13)
	lw	x11, 156(a0)
	lw	x12, 152(a0)
	slli	x11, x11, 3
	add	x11, t0, x11
	ld	x11, 0(x11)
	slli	x12, x12, 1
	regsw_c	x15, 0x5a7(x31)		# 111110111110110100111
	add	x12, x12, x8
	add	x12, x12, a3
	add	x11, x11, x12
	lhu	x11, 0(x11)
	lhu	x12, -64(x10)
	ld	x13, 0(t1)
	subw	x11, x11, x12
	regsw_c	x25, 0x1ae(x29)		# 111011100100110101110
	add	x13, x13, x7
	sw	x11, 0(x13)
	lw	x11, 156(a0)
	lw	x12, 152(a0)
	slli	x11, x11, 3
	add	x11, t2, x11
	ld	x11, 0(x11)
	regsw_c	x29, 0x7b4(x27)		# 110111110111110110100
	slli	x12, x12, 1
	add	x12, x12, x8
	add	x12, x12, a3
	add	x11, x11, x12
	lhu	x11, 0(x11)
	lhu	x12, -32(x10)
	ld	x13, 0(t3)
	regsw_c	x23, 0x135(x31)		# 111111011100100110101
	subw	x11, x11, x12
	add	x13, x13, x7
	sw	x11, 0(x13)
	lw	x11, 156(a0)
	lw	x12, 152(a0)
	slli	x11, x11, 3
	add	x11, t4, x11
	regsw_c	x15, 0x5f6(x27)		# 110110111110111110110
	ld	x11, 0(x11)
	slli	x12, x12, 1
	add	x12, x12, x8
	add	x12, x12, a3
	add	x11, x11, x12
	lhu	x11, 0(x11)
	lhu	x12, 0(x10)
	regsw_c	x30, 0x726(x19)		# 100111111011100100110
	ld	x13, 0(t5)
	subw	x11, x11, x12
	add	x13, x13, x7
	sw	x11, 0(x13)
	lw	x11, 156(a0)
	lw	x12, 152(a0)
	slli	x11, x11, 3
	regsw_c	x13, 0x7be(x23)		# 101110110111110111110
	add	x11, t6, x11
	ld	x11, 0(x11)
	slli	x12, x12, 1
	add	x12, x12, x8
	add	x12, x12, a3
	add	x11, x11, x12
	lhu	x11, 0(x11)
	regsw_c	x15, 0x6e4(x27)		# 110110111111011100100
	lhu	x12, 32(x10)
	ld	x13, 0(x1)
	subw	x11, x11, x12
	add	x13, x13, x7
	sw	x11, 0(x13)
	lw	x11, 156(a0)
	lw	x12, 152(a0)
	regsw_c	x29, 0x5f7(x27)		# 110111110110111110111
	slli	x11, x11, 3
	add	x11, x2, x11
	ld	x11, 0(x11)
	slli	x12, x12, 1
	add	x12, x12, x8
	add	x12, x12, a3
	add	x11, x11, x12
	regsw_c	x13, 0x7dc(x27)		# 110110110111111011100
	lhu	x11, 0(x11)
	lhu	x12, 64(x10)
	ld	x13, 0(x3)
	subw	x11, x11, x12
	add	x13, x13, x7
	sw	x11, 0(x13)
	lw	x11, 156(a0)
	regsw_c	x15, 0x5be(x19)		# 100110111110110111110
	lw	x12, 152(a0)
	slli	x11, x11, 3
	add	x11, x4, x11
	ld	x11, 0(x11)
	slli	x12, x12, 1
	add	x12, x12, x8
	add	x12, x12, a3
	regsw_c	x13, 0x5fb(x31)		# 111110110110111111011
	add	x11, x11, x12
	lhu	x11, 0(x11)
	lhu	x10, 96(x10)
	ld	x12, 0(x5)
	subw	x10, x11, x10
	add	x12, x12, x7
	sw	x10, 0(x12)
	j	.LBB8_2
.LBB8_5:
	lui	a1, %hi(decs)
	ld	a1, %lo(decs)(a1)
	regsw_c	x6, 0x610(x19)		# 100110011011000010000
	ld	x5, 0(a1)
	slli	x3, x7, 3
	add	a1, x4, x3
	add	a3, x5, x3
	ld	a3, 0(a3)
	addi	a4, x7, 1
	slli	a6, a4, 3
	regsw_c	x4, 0x492(x9)		# 010010010010010010010
	add	a5, x4, a6
	add	a6, x5, a6
	addi	t0, x3, 16
	add	a7, x4, t0
	add	t0, x5, t0
	addi	t2, x3, 24
	add	t1, x4, t2
	regsw_c	x4, 0x492(x9)		# 010010010010010010010
	add	t2, x5, t2
	addi	t4, x3, 32
	add	t3, x4, t4
	add	t4, x5, t4
	addi	t6, x3, 40
	add	t5, x4, t6
	add	t6, x5, t6
	regsw_c	x31, 0x5fe(x27)		# 110111111110111111110
	addi	x2, x3, 48
	add	x1, x4, x2
	add	x2, x5, x2
	addi	x6, x3, 56
	add	x3, x4, x6
	add	x4, x5, x6
	slli	x5, x8, 2
	regsw_c	x13, 0x1be(x27)		# 110110110100110111110
	slli	x6, x8, 1
	slli	x7, x7, 5
	add	x7, x7, a0
	lui	x8, 3
	addiw	x8, x8, 440
	add	x7, x7, x8
	slli	x8, x9, 2
	j	.LBB8_7
.LBB8_6:                                #   in Loop: Header=BB8_7 Depth=1
	regsw_c	x6, 0x0(x27)		# 110110011000000000000
	addi	x5, x5, 4
	addi	x6, x6, 2
	beq	x5, x8, .LBB8_9
.LBB8_7:                                # =>This Inner Loop Header: Depth=1
	regsw_c	x9, 0x3b7(x19)		# 100110100101110110111
	lw	x9, 156(a0)
	slli	x9, x9, 3
	lw	x10, 152(a0)
	add	x9, a1, x9
	ld	x9, 0(x9)
	slli	x10, x10, 1
	add	x10, x10, x6
	regsw_c	x15, 0x5eb(x31)		# 111110111110111101011
	add	x9, x9, x10
	lhu	x10, 0(x9)
	add	x9, x7, x6
	lhu	x11, -128(x9)
	subw	x10, x10, x11
	add	x11, a3, x5
	sw	x10, 0(x11)
	bge	a4, a2, .LBB8_6
# %bb.8:                                #   in Loop: Header=BB8_7 Depth=1
	regsw_c	x9, 0x3b7(x19)		# 100110100101110110111
	lw	x10, 156(a0)
	slli	x10, x10, 3
	lw	x11, 152(a0)
	add	x10, a5, x10
	ld	x10, 0(x10)
	slli	x11, x11, 1
	add	x11, x11, x6
	regsw_c	x13, 0x1fb(x31)		# 111110110100111111011
	add	x10, x10, x11
	lhu	x10, 0(x10)
	lhu	x11, -96(x9)
	ld	x12, 0(a6)
	subw	x10, x10, x11
	add	x12, x12, x5
	sw	x10, 0(x12)
	regsw_c	x9, 0x3b7(x19)		# 100110100101110110111
	lw	x10, 156(a0)
	slli	x10, x10, 3
	lw	x11, 152(a0)
	add	x10, a7, x10
	ld	x10, 0(x10)
	slli	x11, x11, 1
	add	x11, x11, x6
	regsw_c	x13, 0x1fb(x31)		# 111110110100111111011
	add	x10, x10, x11
	lhu	x10, 0(x10)
	lhu	x11, -64(x9)
	ld	x12, 0(t0)
	subw	x10, x10, x11
	add	x12, x12, x5
	sw	x10, 0(x12)
	regsw_c	x9, 0x3b7(x19)		# 100110100101110110111
	lw	x10, 156(a0)
	slli	x10, x10, 3
	lw	x11, 152(a0)
	add	x10, t1, x10
	ld	x10, 0(x10)
	slli	x11, x11, 1
	add	x11, x11, x6
	regsw_c	x13, 0x1fb(x31)		# 111110110100111111011
	add	x10, x10, x11
	lhu	x10, 0(x10)
	lhu	x11, -32(x9)
	ld	x12, 0(t2)
	subw	x10, x10, x11
	add	x12, x12, x5
	sw	x10, 0(x12)
	regsw_c	x9, 0x3b7(x19)		# 100110100101110110111
	lw	x10, 156(a0)
	slli	x10, x10, 3
	lw	x11, 152(a0)
	add	x10, t3, x10
	ld	x10, 0(x10)
	slli	x11, x11, 1
	add	x11, x11, x6
	regsw_c	x13, 0x1fb(x31)		# 111110110100111111011
	add	x10, x10, x11
	lhu	x10, 0(x10)
	lhu	x11, 0(x9)
	ld	x12, 0(t4)
	subw	x10, x10, x11
	add	x12, x12, x5
	sw	x10, 0(x12)
	regsw_c	x9, 0x3b7(x19)		# 100110100101110110111
	lw	x10, 156(a0)
	slli	x10, x10, 3
	lw	x11, 152(a0)
	add	x10, t5, x10
	ld	x10, 0(x10)
	slli	x11, x11, 1
	add	x11, x11, x6
	regsw_c	x13, 0x1fb(x31)		# 111110110100111111011
	add	x10, x10, x11
	lhu	x10, 0(x10)
	lhu	x11, 32(x9)
	ld	x12, 0(t6)
	subw	x10, x10, x11
	add	x12, x12, x5
	sw	x10, 0(x12)
	regsw_c	x9, 0x7b7(x19)		# 100110100111110110111
	lw	x10, 156(a0)
	slli	x10, x10, 3
	lw	x11, 152(a0)
	add	x10, x1, x10
	ld	x10, 0(x10)
	slli	x11, x11, 1
	add	x11, x11, x6
	regsw_c	x13, 0x5fb(x31)		# 111110110110111111011
	add	x10, x10, x11
	lhu	x10, 0(x10)
	lhu	x11, 64(x9)
	ld	x12, 0(x2)
	subw	x10, x10, x11
	add	x12, x12, x5
	sw	x10, 0(x12)
	regsw_c	x9, 0x7b7(x19)		# 100110100111110110111
	lw	x10, 156(a0)
	slli	x10, x10, 3
	lw	x11, 152(a0)
	add	x10, x3, x10
	ld	x10, 0(x10)
	slli	x11, x11, 1
	add	x11, x11, x6
	regsw_c	x13, 0x5fb(x31)		# 111110110110111111011
	add	x10, x10, x11
	lhu	x10, 0(x10)
	lhu	x9, 96(x9)
	ld	x11, 0(x4)
	subw	x9, x10, x9
	add	x11, x11, x5
	sw	x9, 0(x11)
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
	regsw_c	x9, 0x100(x18)		# 100100100100100000000
	addi	x1, a0, 11
	addi	x2, a0, 12
	addi	x3, a0, 13
	addi	x4, a0, 14
	addi	x5, a0, 15
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
	regsw_c	x13, 0x580(x11)		# 010110110110110000000
	slli	t6, x1, 1
	slli	x1, x2, 1
	slli	x2, x3, 1
	slli	x3, x4, 1
	slli	x4, x5, 1
.LBB10_16:                              # =>This Inner Loop Header: Depth=1
	regsw_c	x5, 0x4b2(x19)		# 100110010110010110010
	ld	x5, 0(a1)
	add	x6, x5, a0
	sh	a3, 0(x6)
	add	x6, x5, a4
	sh	a3, 0(x6)
	add	x6, x5, a5
	sh	a3, 0(x6)
	regsw_c	x12, 0x596(x25)		# 110010110010110010110
	add	x6, x5, a6
	sh	a3, 0(x6)
	add	x6, x5, a7
	sh	a3, 0(x6)
	add	x6, x5, t0
	sh	a3, 0(x6)
	add	x6, x5, t1
	regsw_c	x5, 0x4b2(x11)		# 010110010110010110010
	sh	a3, 0(x6)
	add	x6, x5, t2
	sh	a3, 0(x6)
	add	x6, x5, t3
	sh	a3, 0(x6)
	add	x6, x5, t4
	sh	a3, 0(x6)
	regsw_c	x12, 0x5d7(x25)		# 110010110010111010111
	add	x6, x5, t5
	sh	a3, 0(x6)
	add	x6, x5, t6
	sh	a3, 0(x6)
	add	x6, x5, x1
	sh	a3, 0(x6)
	add	x6, x5, x2
	regsw_c	x21, 0x610(x11)		# 010111010111000010000
	sh	a3, 0(x6)
	add	x6, x5, x3
	sh	a3, 0(x6)
	add	x5, x5, x4
	addi	a1, a1, 8
	sh	a3, 0(x5)
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
	regsw_c	x0, 0x34(x19)		# 100110000000000110100
	add	x1, t4, s3
	ld	x1, 0(x1)
	sw	t1, 32(sp)
	lh	t1, 2(t6)
	lh	t6, 2(a2)
	lh	x2, 2(x1)
	add	x3, t4, t3
	regsw_c	x0, 0x280(x24)		# 110000000001010000000
	ld	x3, 0(x3)
	sw	t1, 96(sp)
	sw	t6, 100(sp)
	sw	x2, 104(sp)
	lh	t1, 2(x3)
	add	t6, t4, a1
	ld	t6, 0(t6)
	add	t4, t4, t5
	ld	t4, 0(t4)
	sw	t1, 108(sp)
	lh	t1, 0(t6)
	lh	t6, 2(t6)
	regsw_c	x0, 0x50(x18)		# 100100000000001010000
	lh	x2, 0(t4)
	ld	x4, 16(t2)
	sw	t1, 48(sp)
	sw	t6, 112(sp)
	sw	x2, 52(sp)
	addi	t1, x4, 32
	add	t6, t1, s3
	ld	t6, 0(t6)
	regsw_c	x1, 0x30(x19)		# 100110000100000110000
	add	x2, t1, t3
	ld	x2, 0(x2)
	lh	t4, 2(t4)
	lh	x4, 0(t6)
	lh	t6, 2(t6)
	lh	x5, 0(x2)
	sw	t4, 116(sp)
	regsw_c	x2, 0x400(x4)		# 001000001010000000000
	sw	x4, 56(sp)
	sw	t6, 120(sp)
	sw	x5, 60(sp)
	lh	t4, 2(x2)
	add	t6, t1, a1
	ld	t6, 0(t6)
	add	t1, t1, t5
	ld	t1, 0(t1)
	sw	t4, 124(sp)
	lh	t4, 0(t6)
	lh	t6, 2(t6)
	regsw_c	x0, 0x40(x16)		# 100000000000001000000
	lh	x2, 0(t1)
	ld	t2, 24(t2)
	sw	t4, 64(sp)
	sw	t6, 128(sp)
	sw	x2, 68(sp)
	addi	t2, t2, 32
	add	t4, t2, s3
	ld	t4, 0(t4)
	add	t3, t2, t3
	ld	t3, 0(t3)
	lh	t1, 2(t1)
	lh	t6, 0(t4)
	lh	t4, 2(t4)
	regsw_c	x0, 0x42(x16)		# 100000000000001000010
	lh	x2, 0(t3)
	sw	t1, 132(sp)
	sw	t6, 72(sp)
	sw	t4, 136(sp)
	sw	x2, 76(sp)
	lh	a2, 0(a2)
	lh	t1, 0(x1)
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	lh	t4, 0(x3)
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
	regsw_c	x9, 0x100(x18)		# 100100100100100000000
	addi	x1, a0, 11
	addi	x2, a0, 12
	addi	x3, a0, 13
	addi	x4, a0, 14
	addi	x5, a0, 15
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
	regsw_c	x13, 0x580(x11)		# 010110110110110000000
	slli	t6, x1, 1
	slli	x1, x2, 1
	slli	x2, x3, 1
	slli	x3, x4, 1
	slli	x4, x5, 1
.LBB10_21:                              # =>This Inner Loop Header: Depth=1
	regsw_c	x5, 0x4b2(x19)		# 100110010110010110010
	ld	x5, 0(a1)
	add	x6, x5, a0
	sh	a3, 0(x6)
	add	x6, x5, a4
	sh	a3, 0(x6)
	add	x6, x5, a5
	sh	a3, 0(x6)
	regsw_c	x12, 0x596(x25)		# 110010110010110010110
	add	x6, x5, a6
	sh	a3, 0(x6)
	add	x6, x5, a7
	sh	a3, 0(x6)
	add	x6, x5, t0
	sh	a3, 0(x6)
	add	x6, x5, t1
	regsw_c	x5, 0x4b2(x11)		# 010110010110010110010
	sh	a3, 0(x6)
	add	x6, x5, t2
	sh	a3, 0(x6)
	add	x6, x5, t3
	sh	a3, 0(x6)
	add	x6, x5, t4
	sh	a3, 0(x6)
	regsw_c	x12, 0x5d7(x25)		# 110010110010111010111
	add	x6, x5, t5
	sh	a3, 0(x6)
	add	x6, x5, t6
	sh	a3, 0(x6)
	add	x6, x5, x1
	sh	a3, 0(x6)
	add	x6, x5, x2
	regsw_c	x21, 0x610(x11)		# 010111010111000010000
	sh	a3, 0(x6)
	add	x6, x5, x3
	sh	a3, 0(x6)
	add	x5, x5, x4
	addi	a1, a1, 8
	sh	a3, 0(x5)
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
	regsw_c	x9, 0x100(x18)		# 100100100100100000000
	addi	x1, a0, 11
	addi	x2, a0, 12
	addi	x3, a0, 13
	addi	x4, a0, 14
	addi	x5, a0, 15
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
	regsw_c	x13, 0x580(x11)		# 010110110110110000000
	slli	t6, x1, 1
	slli	x1, x2, 1
	slli	x2, x3, 1
	slli	x3, x4, 1
	slli	x4, x5, 1
.LBB10_24:                              # =>This Inner Loop Header: Depth=1
	regsw_c	x5, 0x4b2(x19)		# 100110010110010110010
	ld	x5, 0(a1)
	add	x6, x5, a0
	sh	a3, 0(x6)
	add	x6, x5, a4
	sh	a3, 0(x6)
	add	x6, x5, a5
	sh	a3, 0(x6)
	regsw_c	x12, 0x596(x25)		# 110010110010110010110
	add	x6, x5, a6
	sh	a3, 0(x6)
	add	x6, x5, a7
	sh	a3, 0(x6)
	add	x6, x5, t0
	sh	a3, 0(x6)
	add	x6, x5, t1
	regsw_c	x5, 0x4b2(x11)		# 010110010110010110010
	sh	a3, 0(x6)
	add	x6, x5, t2
	sh	a3, 0(x6)
	add	x6, x5, t3
	sh	a3, 0(x6)
	add	x6, x5, t4
	sh	a3, 0(x6)
	regsw_c	x12, 0x5d7(x25)		# 110010110010111010111
	add	x6, x5, t5
	sh	a3, 0(x6)
	add	x6, x5, t6
	sh	a3, 0(x6)
	add	x6, x5, x1
	sh	a3, 0(x6)
	add	x6, x5, x2
	regsw_c	x21, 0x610(x11)		# 010111010111000010000
	sh	a3, 0(x6)
	add	x6, x5, x3
	sh	a3, 0(x6)
	add	x5, x5, x4
	addi	a1, a1, 8
	sh	a3, 0(x5)
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
	regsw_c	x16, 0x400(x16)		# 100001000010000000000
	slli	x2, t1, 3
	add	t0, a2, x2
	ld	t0, 0(t0)
	addi	t1, x2, 8
	add	t2, a2, t1
	ld	t2, 0(t2)
	lh	t3, 0(t0)
	lh	t0, 2(t0)
	lh	t4, 0(t2)
	sw	t3, 24(sp)
	sw	t0, 88(sp)
	sw	t4, 28(sp)
	lh	t0, 2(t2)
	regsw_c	x0, 0x400(x8)		# 010000000010000000000
	addi	t2, x2, 16
	add	t3, a2, t2
	ld	t3, 0(t3)
	addi	t4, x2, 24
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
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	add	t3, t0, x2
	ld	t3, 0(t3)
	add	t5, t0, t1
	ld	t5, 0(t5)
	lh	a2, 2(a2)
	lh	t6, 0(t3)
	lh	t3, 2(t3)
	regsw_c	x0, 0x40(x16)		# 100000000000001000000
	lh	x1, 0(t5)
	sw	a2, 100(sp)
	sw	t6, 40(sp)
	sw	t3, 104(sp)
	sw	x1, 44(sp)
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
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	add	t3, a2, x2
	ld	t3, 0(t3)
	add	t5, a2, t1
	ld	t5, 0(t5)
	lh	t0, 2(t0)
	lh	t6, 0(t3)
	lh	t3, 2(t3)
	regsw_c	x0, 0x40(x16)		# 100000000000001000000
	lh	x1, 0(t5)
	sw	t0, 116(sp)
	sw	t6, 56(sp)
	sw	t3, 120(sp)
	sw	x1, 60(sp)
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
	regsw_c	x16, 0x0(x4)		# 001001000000000000000
	sd	x2, 0(sp)                       # 8-byte Folded Spill
	add	t0, a1, x2
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
	regsw_c	x9, 0x0(x18)		# 100100100100000000000
	addi	x1, a0, 12
	addi	x2, a0, 13
	addi	x3, a0, 14
	addi	x4, a0, 15
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
	regsw_c	x13, 0x400(x11)		# 010110110110000000000
	slli	t6, x1, 1
	slli	x1, x2, 1
	slli	x2, x3, 1
	slli	x3, x4, 1
.LBB10_28:                              # =>This Inner Loop Header: Depth=1
	regsw_c	x13, 0x59e(x18)		# 100100110110110011110
	ld	x4, 0(a1)
	ld	x5, 0(s0)
	add	x6, x4, a0
	lh	x6, 0(x6)
	add	x7, x5, a0
	sh	x6, 0(x7)
	add	x6, x4, a3
	regsw_c	x7, 0x5b3(x27)		# 110110011110110110011
	lh	x6, 0(x6)
	add	x7, x5, a3
	sh	x6, 0(x7)
	add	x6, x4, a4
	lh	x6, 0(x6)
	add	x7, x5, a4
	sh	x6, 0(x7)
	regsw_c	x12, 0x7b6(x27)		# 110110110011110110110
	add	x6, x4, a5
	lh	x6, 0(x6)
	add	x7, x5, a5
	sh	x6, 0(x7)
	add	x6, x4, a6
	lh	x6, 0(x6)
	add	x7, x5, a6
	regsw_c	x13, 0x4f6(x15)		# 011110110110011110110
	sh	x6, 0(x7)
	add	x6, x4, a7
	lh	x6, 0(x6)
	add	x7, x5, a7
	sh	x6, 0(x7)
	add	x6, x4, t0
	lh	x6, 0(x6)
	regsw_c	x29, 0x59e(x25)		# 110011110110110011110
	add	x7, x5, t0
	sh	x6, 0(x7)
	add	x6, x4, t1
	lh	x6, 0(x6)
	add	x7, x5, t1
	sh	x6, 0(x7)
	add	x6, x4, t2
	regsw_c	x7, 0x5b3(x27)		# 110110011110110110011
	lh	x6, 0(x6)
	add	x7, x5, t2
	sh	x6, 0(x7)
	add	x6, x4, t3
	lh	x6, 0(x6)
	add	x7, x5, t3
	sh	x6, 0(x7)
	regsw_c	x12, 0x7b6(x27)		# 110110110011110110110
	add	x6, x4, t4
	lh	x6, 0(x6)
	add	x7, x5, t4
	sh	x6, 0(x7)
	add	x6, x4, t5
	lh	x6, 0(x6)
	add	x7, x5, t5
	regsw_c	x13, 0x4fe(x15)		# 011110110110011111110
	sh	x6, 0(x7)
	add	x6, x4, t6
	lh	x6, 0(x6)
	add	x7, x5, t6
	sh	x6, 0(x7)
	add	x6, x4, x1
	lh	x6, 0(x6)
	regsw_c	x31, 0x5df(x29)		# 111011111110111011111
	add	x7, x5, x1
	sh	x6, 0(x7)
	add	x6, x4, x2
	lh	x6, 0(x6)
	add	x7, x5, x2
	sh	x6, 0(x7)
	add	x4, x4, x3
	regsw_c	x22, 0x0(x27)		# 110111011000000000000
	lh	x4, 0(x4)
	add	x5, x5, x3
	sh	x4, 0(x5)
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
	regsw_c	x9, 0x0(x18)		# 100100100100000000000
	addi	x1, a0, 12
	addi	x2, a0, 13
	addi	x3, a0, 14
	addi	x4, a0, 15
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
	regsw_c	x13, 0x400(x11)		# 010110110110000000000
	slli	t6, x1, 1
	slli	x1, x2, 1
	slli	x2, x3, 1
	slli	x3, x4, 1
.LBB10_31:                              # =>This Inner Loop Header: Depth=1
	regsw_c	x13, 0x59e(x18)		# 100100110110110011110
	ld	x4, 0(a1)
	ld	x5, 0(s0)
	add	x6, x4, a0
	lh	x6, 0(x6)
	add	x7, x5, a0
	sh	x6, 0(x7)
	add	x6, x4, a3
	regsw_c	x7, 0x5b3(x27)		# 110110011110110110011
	lh	x6, 0(x6)
	add	x7, x5, a3
	sh	x6, 0(x7)
	add	x6, x4, a4
	lh	x6, 0(x6)
	add	x7, x5, a4
	sh	x6, 0(x7)
	regsw_c	x12, 0x7b6(x27)		# 110110110011110110110
	add	x6, x4, a5
	lh	x6, 0(x6)
	add	x7, x5, a5
	sh	x6, 0(x7)
	add	x6, x4, a6
	lh	x6, 0(x6)
	add	x7, x5, a6
	regsw_c	x13, 0x4f6(x15)		# 011110110110011110110
	sh	x6, 0(x7)
	add	x6, x4, a7
	lh	x6, 0(x6)
	add	x7, x5, a7
	sh	x6, 0(x7)
	add	x6, x4, t0
	lh	x6, 0(x6)
	regsw_c	x29, 0x59e(x25)		# 110011110110110011110
	add	x7, x5, t0
	sh	x6, 0(x7)
	add	x6, x4, t1
	lh	x6, 0(x6)
	add	x7, x5, t1
	sh	x6, 0(x7)
	add	x6, x4, t2
	regsw_c	x7, 0x5b3(x27)		# 110110011110110110011
	lh	x6, 0(x6)
	add	x7, x5, t2
	sh	x6, 0(x7)
	add	x6, x4, t3
	lh	x6, 0(x6)
	add	x7, x5, t3
	sh	x6, 0(x7)
	regsw_c	x12, 0x7b6(x27)		# 110110110011110110110
	add	x6, x4, t4
	lh	x6, 0(x6)
	add	x7, x5, t4
	sh	x6, 0(x7)
	add	x6, x4, t5
	lh	x6, 0(x6)
	add	x7, x5, t5
	regsw_c	x13, 0x4fe(x15)		# 011110110110011111110
	sh	x6, 0(x7)
	add	x6, x4, t6
	lh	x6, 0(x6)
	add	x7, x5, t6
	sh	x6, 0(x7)
	add	x6, x4, x1
	lh	x6, 0(x6)
	regsw_c	x31, 0x5df(x29)		# 111011111110111011111
	add	x7, x5, x1
	sh	x6, 0(x7)
	add	x6, x4, x2
	lh	x6, 0(x6)
	add	x7, x5, x2
	sh	x6, 0(x7)
	add	x4, x4, x3
	regsw_c	x22, 0x0(x27)		# 110111011000000000000
	lh	x4, 0(x4)
	add	x5, x5, x3
	sh	x4, 0(x5)
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
	regsw_c	x9, 0x0(x18)		# 100100100100000000000
	addi	x1, a0, 12
	addi	x2, a0, 13
	addi	x3, a0, 14
	addi	x4, a0, 15
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
	regsw_c	x13, 0x400(x11)		# 010110110110000000000
	slli	t6, x1, 1
	slli	x1, x2, 1
	slli	x2, x3, 1
	slli	x3, x4, 1
.LBB10_34:                              # =>This Inner Loop Header: Depth=1
	regsw_c	x13, 0x59e(x18)		# 100100110110110011110
	ld	x4, 0(a1)
	ld	x5, 0(s0)
	add	x6, x4, a0
	lh	x6, 0(x6)
	add	x7, x5, a0
	sh	x6, 0(x7)
	add	x6, x4, a3
	regsw_c	x7, 0x5b3(x27)		# 110110011110110110011
	lh	x6, 0(x6)
	add	x7, x5, a3
	sh	x6, 0(x7)
	add	x6, x4, a4
	lh	x6, 0(x6)
	add	x7, x5, a4
	sh	x6, 0(x7)
	regsw_c	x12, 0x7b6(x27)		# 110110110011110110110
	add	x6, x4, a5
	lh	x6, 0(x6)
	add	x7, x5, a5
	sh	x6, 0(x7)
	add	x6, x4, a6
	lh	x6, 0(x6)
	add	x7, x5, a6
	regsw_c	x13, 0x4f6(x15)		# 011110110110011110110
	sh	x6, 0(x7)
	add	x6, x4, a7
	lh	x6, 0(x6)
	add	x7, x5, a7
	sh	x6, 0(x7)
	add	x6, x4, t0
	lh	x6, 0(x6)
	regsw_c	x29, 0x59e(x25)		# 110011110110110011110
	add	x7, x5, t0
	sh	x6, 0(x7)
	add	x6, x4, t1
	lh	x6, 0(x6)
	add	x7, x5, t1
	sh	x6, 0(x7)
	add	x6, x4, t2
	regsw_c	x7, 0x5b3(x27)		# 110110011110110110011
	lh	x6, 0(x6)
	add	x7, x5, t2
	sh	x6, 0(x7)
	add	x6, x4, t3
	lh	x6, 0(x6)
	add	x7, x5, t3
	sh	x6, 0(x7)
	regsw_c	x12, 0x7b6(x27)		# 110110110011110110110
	add	x6, x4, t4
	lh	x6, 0(x6)
	add	x7, x5, t4
	sh	x6, 0(x7)
	add	x6, x4, t5
	lh	x6, 0(x6)
	add	x7, x5, t5
	regsw_c	x13, 0x4fe(x15)		# 011110110110011111110
	sh	x6, 0(x7)
	add	x6, x4, t6
	lh	x6, 0(x6)
	add	x7, x5, t6
	sh	x6, 0(x7)
	add	x6, x4, x1
	lh	x6, 0(x6)
	regsw_c	x31, 0x5df(x29)		# 111011111110111011111
	add	x7, x5, x1
	sh	x6, 0(x7)
	add	x6, x4, x2
	lh	x6, 0(x6)
	add	x7, x5, x2
	sh	x6, 0(x7)
	add	x4, x4, x3
	regsw_c	x22, 0x0(x27)		# 110111011000000000000
	lh	x4, 0(x4)
	add	x5, x5, x3
	sh	x4, 0(x5)
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
	regsw_c	x9, 0x0(x18)		# 100100100100000000000
	addi	x1, a0, 12
	addi	x2, a0, 13
	addi	x3, a0, 14
	addi	x4, a0, 15
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
	regsw_c	x13, 0x400(x11)		# 010110110110000000000
	slli	t6, x1, 1
	slli	x1, x2, 1
	slli	x2, x3, 1
	slli	x3, x4, 1
.LBB10_36:                              # =>This Inner Loop Header: Depth=1
	regsw_c	x13, 0x59e(x18)		# 100100110110110011110
	ld	x4, 0(a1)
	ld	x5, 0(s0)
	add	x6, x4, a0
	lh	x6, 0(x6)
	add	x7, x5, a0
	sh	x6, 0(x7)
	add	x6, x4, a3
	regsw_c	x7, 0x5b3(x27)		# 110110011110110110011
	lh	x6, 0(x6)
	add	x7, x5, a3
	sh	x6, 0(x7)
	add	x6, x4, a4
	lh	x6, 0(x6)
	add	x7, x5, a4
	sh	x6, 0(x7)
	regsw_c	x12, 0x7b6(x27)		# 110110110011110110110
	add	x6, x4, a5
	lh	x6, 0(x6)
	add	x7, x5, a5
	sh	x6, 0(x7)
	add	x6, x4, a6
	lh	x6, 0(x6)
	add	x7, x5, a6
	regsw_c	x13, 0x4f6(x15)		# 011110110110011110110
	sh	x6, 0(x7)
	add	x6, x4, a7
	lh	x6, 0(x6)
	add	x7, x5, a7
	sh	x6, 0(x7)
	add	x6, x4, t0
	lh	x6, 0(x6)
	regsw_c	x29, 0x59e(x25)		# 110011110110110011110
	add	x7, x5, t0
	sh	x6, 0(x7)
	add	x6, x4, t1
	lh	x6, 0(x6)
	add	x7, x5, t1
	sh	x6, 0(x7)
	add	x6, x4, t2
	regsw_c	x7, 0x5b3(x27)		# 110110011110110110011
	lh	x6, 0(x6)
	add	x7, x5, t2
	sh	x6, 0(x7)
	add	x6, x4, t3
	lh	x6, 0(x6)
	add	x7, x5, t3
	sh	x6, 0(x7)
	regsw_c	x12, 0x7b6(x27)		# 110110110011110110110
	add	x6, x4, t4
	lh	x6, 0(x6)
	add	x7, x5, t4
	sh	x6, 0(x7)
	add	x6, x4, t5
	lh	x6, 0(x6)
	add	x7, x5, t5
	regsw_c	x13, 0x4fe(x15)		# 011110110110011111110
	sh	x6, 0(x7)
	add	x6, x4, t6
	lh	x6, 0(x6)
	add	x7, x5, t6
	sh	x6, 0(x7)
	add	x6, x4, x1
	lh	x6, 0(x6)
	regsw_c	x31, 0x5df(x29)		# 111011111110111011111
	add	x7, x5, x1
	sh	x6, 0(x7)
	add	x6, x4, x2
	lh	x6, 0(x6)
	add	x7, x5, x2
	sh	x6, 0(x7)
	add	x4, x4, x3
	regsw_c	x22, 0x0(x27)		# 110111011000000000000
	lh	x4, 0(x4)
	add	x5, x5, x3
	sh	x4, 0(x5)
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
	regsw_c	x9, 0x0(x18)		# 100100100100000000000
	addi	x1, a0, 12
	addi	x2, a0, 13
	addi	x3, a0, 14
	addi	x4, a0, 15
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
	regsw_c	x13, 0x400(x11)		# 010110110110000000000
	slli	t6, x1, 1
	slli	x1, x2, 1
	slli	x2, x3, 1
	slli	x3, x4, 1
.LBB10_50:                              # =>This Inner Loop Header: Depth=1
	regsw_c	x13, 0x59e(x18)		# 100100110110110011110
	ld	x4, 0(a1)
	ld	x5, 0(s0)
	add	x6, x4, a0
	lh	x6, 0(x6)
	add	x7, x5, a0
	sh	x6, 0(x7)
	add	x6, x4, a3
	regsw_c	x7, 0x5b3(x27)		# 110110011110110110011
	lh	x6, 0(x6)
	add	x7, x5, a3
	sh	x6, 0(x7)
	add	x6, x4, a4
	lh	x6, 0(x6)
	add	x7, x5, a4
	sh	x6, 0(x7)
	regsw_c	x12, 0x7b6(x27)		# 110110110011110110110
	add	x6, x4, a5
	lh	x6, 0(x6)
	add	x7, x5, a5
	sh	x6, 0(x7)
	add	x6, x4, a6
	lh	x6, 0(x6)
	add	x7, x5, a6
	regsw_c	x13, 0x4f6(x15)		# 011110110110011110110
	sh	x6, 0(x7)
	add	x6, x4, a7
	lh	x6, 0(x6)
	add	x7, x5, a7
	sh	x6, 0(x7)
	add	x6, x4, t0
	lh	x6, 0(x6)
	regsw_c	x29, 0x59e(x25)		# 110011110110110011110
	add	x7, x5, t0
	sh	x6, 0(x7)
	add	x6, x4, t1
	lh	x6, 0(x6)
	add	x7, x5, t1
	sh	x6, 0(x7)
	add	x6, x4, t2
	regsw_c	x7, 0x5b3(x27)		# 110110011110110110011
	lh	x6, 0(x6)
	add	x7, x5, t2
	sh	x6, 0(x7)
	add	x6, x4, t3
	lh	x6, 0(x6)
	add	x7, x5, t3
	sh	x6, 0(x7)
	regsw_c	x12, 0x7b6(x27)		# 110110110011110110110
	add	x6, x4, t4
	lh	x6, 0(x6)
	add	x7, x5, t4
	sh	x6, 0(x7)
	add	x6, x4, t5
	lh	x6, 0(x6)
	add	x7, x5, t5
	regsw_c	x13, 0x4fe(x15)		# 011110110110011111110
	sh	x6, 0(x7)
	add	x6, x4, t6
	lh	x6, 0(x6)
	add	x7, x5, t6
	sh	x6, 0(x7)
	add	x6, x4, x1
	lh	x6, 0(x6)
	regsw_c	x31, 0x5df(x29)		# 111011111110111011111
	add	x7, x5, x1
	sh	x6, 0(x7)
	add	x6, x4, x2
	lh	x6, 0(x6)
	add	x7, x5, x2
	sh	x6, 0(x7)
	add	x4, x4, x3
	regsw_c	x22, 0x0(x27)		# 110111011000000000000
	lh	x4, 0(x4)
	add	x5, x5, x3
	sh	x4, 0(x5)
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
