	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"block.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	intrapred_luma                  # -- Begin function intrapred_luma
	.p2align	2
	.type	intrapred_luma,@function
intrapred_luma:                         # @intrapred_luma
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
	mv	s0, a4
	mv	s1, a3
	mv	s2, a2
	mv	s3, a1
	mv	s4, a0
	lui	a0, %hi(enc_picture)
	ld	a0, %lo(enc_picture)(a0)
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a2, 2
	add	a0, a0, a2
	ld	s9, -1768(a0)
	lw	s5, 12(a1)
	andi	s6, s4, 15
	andi	s7, s3, 15
	addi	s8, s6, -1
	li	a3, 1
	addi	a4, sp, 72
	mv	a0, s5
	mv	a1, s8
	mv	a2, s7
	call	getNeighbour
	addi	a2, s7, 1
	addi	a4, sp, 96
	li	a3, 1
	mv	a0, s5
	mv	a1, s8
	call	getNeighbour
	addi	a2, s7, 2
	addi	a4, sp, 120
	li	a3, 1
	mv	a0, s5
	mv	a1, s8
	call	getNeighbour
	addi	a2, s7, 3
	addi	a4, sp, 144
	li	a3, 1
	mv	a0, s5
	mv	a1, s8
	call	getNeighbour
	addi	s7, s7, -1
	li	a3, 1
	addi	a4, sp, 48
	mv	a0, s5
	mv	a1, s6
	mv	a2, s7
	call	getNeighbour
	addi	a1, s6, 4
	li	a3, 1
	addi	a4, sp, 24
	mv	a0, s5
	mv	a2, s7
	call	getNeighbour
	li	a3, 1
	mv	a4, sp
	mv	a0, s5
	mv	a1, s8
	mv	a2, s7
	call	getNeighbour
	lw	a0, 24(sp)
	beqz	a0, .LBB0_2
# %bb.1:
	andi	a0, s4, 7
	xori	a0, a0, 4
	andi	a1, s3, 7
	xori	a1, a1, 4
	or	a0, a0, a1
	snez	a6, a0
	j	.LBB0_3
.LBB0_2:
	li	a6, 0
.LBB0_3:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a0, 220(a0)
	sw	a6, 24(sp)
	beqz	a0, .LBB0_15
# %bb.4:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a1, 72(sp)
	lui	a2, 22
	addiw	a2, a2, -920
	add	a0, a0, a2
	beqz	a1, .LBB0_16
# %bb.5:
	lw	a1, 76(sp)
	ld	a2, 0(a0)
	slli	a1, a1, 2
	add	a1, a2, a1
	lw	a3, 0(a1)
	lw	a1, 96(sp)
	beqz	a1, .LBB0_7
.LBB0_6:
	lw	a1, 100(sp)
	ld	a2, 0(a0)
	slli	a1, a1, 2
	add	a1, a2, a1
	lw	a1, 0(a1)
.LBB0_7:
	lw	a2, 120(sp)
	beqz	a2, .LBB0_9
# %bb.8:
	lw	a2, 124(sp)
	ld	a4, 0(a0)
	slli	a2, a2, 2
	add	a2, a4, a2
	lw	a2, 0(a2)
.LBB0_9:
	lw	a5, 144(sp)
	andi	a4, a3, 1
	beqz	a5, .LBB0_17
# %bb.10:
	lw	a3, 148(sp)
	ld	a5, 0(a0)
	slli	a3, a3, 2
	add	a3, a5, a3
	lw	a3, 0(a3)
	lw	a5, 48(sp)
	and	a1, a1, a4
	beqz	a5, .LBB0_18
.LBB0_11:
	lw	a4, 52(sp)
	ld	a5, 0(a0)
	slli	a4, a4, 2
	add	a4, a5, a4
	lw	t3, 0(a4)
	and	a5, a2, a1
	beqz	a6, .LBB0_13
.LBB0_12:
	lw	a1, 28(sp)
	ld	a2, 0(a0)
	slli	a1, a1, 2
	add	a1, a2, a1
	lw	a6, 0(a1)
.LBB0_13:
	lw	a1, 0(sp)
	and	a5, a3, a5
	beqz	a1, .LBB0_19
# %bb.14:
	lw	a1, 4(sp)
	ld	a0, 0(a0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	t2, 0(a0)
	j	.LBB0_20
.LBB0_15:
	lw	a5, 72(sp)
	lw	t3, 48(sp)
	lw	t2, 0(sp)
	j	.LBB0_20
.LBB0_16:
	li	a3, 0
	lw	a1, 96(sp)
	bnez	a1, .LBB0_6
	j	.LBB0_7
.LBB0_17:
	li	a3, 0
	lw	a5, 48(sp)
	and	a1, a1, a4
	bnez	a5, .LBB0_11
.LBB0_18:
	li	t3, 0
	and	a5, a2, a1
	bnez	a6, .LBB0_12
	j	.LBB0_13
.LBB0_19:
	li	t2, 0
.LBB0_20:
	sw	a5, 0(s2)
	sw	t3, 0(s1)
	snez	a0, t3
	snez	a1, a5
	regsw_c	x4, 0x0(x16)		# 100000010000000000000
	and	x2, a0, a1
	snez	a0, t2
	and	a4, x2, a0
	sw	a4, 0(s0)
	beqz	t3, .LBB0_22
# %bb.21:
	lw	a0, 68(sp)
	slli	a0, a0, 3
	add	a0, s9, a0
	lw	a1, 64(sp)
	ld	a0, 0(a0)
	slli	a1, a1, 1
	add	a0, a0, a1
	lhu	a3, 0(a0)
	lhu	a2, 2(a0)
	lhu	a1, 4(a0)
	lhu	a0, 6(a0)
	j	.LBB0_23
.LBB0_22:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 22
	add	a0, a0, a1
	lw	a0, 416(a0)
	mv	a1, a0
	mv	a2, a0
	mv	a3, a0
.LBB0_23:
	mv	t6, a0
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x1, a0
	mv	t4, a0
	mv	t5, a0
	beqz	a6, .LBB0_25
# %bb.24:
	lw	a6, 44(sp)
	slli	a6, a6, 3
	add	a6, s9, a6
	lw	a7, 40(sp)
	ld	a6, 0(a6)
	slli	a7, a7, 1
	add	a6, a6, a7
	lhu	t5, 0(a6)
	lhu	t4, 2(a6)
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	lhu	x1, 4(a6)
	lhu	t6, 6(a6)
.LBB0_25:
	beqz	a5, .LBB0_28
# %bb.26:
	lw	a6, 92(sp)
	slli	a6, a6, 3
	lw	a7, 88(sp)
	lw	t0, 116(sp)
	add	a6, s9, a6
	ld	a6, 0(a6)
	slli	a7, a7, 1
	slli	t0, t0, 3
	add	t0, s9, t0
	lw	t1, 112(sp)
	ld	t0, 0(t0)
	regsw_c	x0, 0x1a8(x16)		# 100000000000110101000
	lw	x3, 140(sp)
	add	a6, a6, a7
	slli	t1, t1, 1
	add	t0, t0, t1
	slli	x3, x3, 3
	add	x3, s9, x3
	lw	a7, 136(sp)
	regsw_c	x0, 0x1b5(x26)		# 110100000000110110101
	ld	x3, 0(x3)
	lw	x4, 164(sp)
	lhu	t1, 0(a6)
	slli	a7, a7, 1
	add	x3, x3, a7
	slli	x4, x4, 3
	add	x4, s9, x4
	regsw_c	x0, 0x5ba(x19)		# 100110000010110111010
	lw	x5, 160(sp)
	ld	x4, 0(x4)
	lhu	a7, 0(t0)
	lhu	a6, 0(x3)
	slli	x5, x5, 1
	add	x4, x4, x5
	lhu	t0, 0(x4)
	beqz	t2, .LBB0_29
.LBB0_27:
	lw	t2, 20(sp)
	slli	t2, t2, 3
	add	t2, s9, t2
	regsw_c	x12, 0x226(x16)		# 100000110001000100110
	lw	x3, 16(sp)
	ld	t2, 0(t2)
	slli	x3, x3, 1
	add	t2, t2, x3
	lhu	t2, 0(t2)
	lui	x3, %hi(img)
	ld	x3, %lo(img)(x3)
	j	.LBB0_30
.LBB0_28:
	lui	a6, %hi(img)
	ld	a6, %lo(img)(a6)
	lui	a7, 22
	add	a6, a6, a7
	lw	a6, 416(a6)
	mv	a7, a6
	mv	t1, a6
	mv	t0, a6
	bnez	t2, .LBB0_27
.LBB0_29:
	lui	t2, %hi(img)
	regsw_c	x4, 0x0(x16)		# 100000010000000000000
	ld	x3, %lo(img)(t2)
	lui	t2, 22
	add	t2, x3, t2
	lw	t2, 416(t2)
.LBB0_30:
	regsw_c	x29, 0xdb(x19)		# 100111110100011011011
	lui	x4, 1
	add	x4, x3, x4
	addi	x5, x3, 2047
	li	x6, -1
	sh	x6, 1720(x3)
	sh	x6, 185(x5)
	sh	x6, 697(x5)
	regsw_c	x22, 0x400(x13)		# 011011011010000000000
	sh	x6, 1209(x5)
	sh	x6, 1721(x5)
	sh	x6, 184(x4)
	beqz	x2, .LBB0_32
# %bb.31:
	regsw_c	x15, 0x1be(x18)		# 100100111100110111110
	add	x2, a3, a2
	add	x4, a1, a0
	add	x2, x2, x4
	add	x4, t1, a7
	add	x4, x4, a6
	add	x2, x2, x4
	add	x2, x2, t0
	regsw_c	x0, 0x0(x27)		# 110110000000000000000
	addi	x2, x2, 4
	sraiw	x2, x2, 3
	j	.LBB0_40
.LBB0_32:
	bnez	t3, .LBB0_35
# %bb.33:
	beqz	a5, .LBB0_35
# %bb.34:
	regsw_c	x0, 0x0(x18)		# 100100000000000000000
	add	x2, t1, a7
	add	x4, a6, t0
	j	.LBB0_38
.LBB0_35:
	beqz	t3, .LBB0_39
# %bb.36:
	bnez	a5, .LBB0_39
# %bb.37:
	regsw_c	x0, 0x0(x18)		# 100100000000000000000
	add	x2, a3, a2
	add	x4, a1, a0
.LBB0_38:
	regsw_c	x12, 0x0(x31)		# 111110110000000000000
	add	x2, x2, x4
	addi	x2, x2, 2
	sraiw	x2, x2, 2
	j	.LBB0_40
.LBB0_39:
	regsw_c	x15, 0x400(x19)		# 100110111110000000000
	lui	x2, 22
	addiw	x2, x2, 416
	add	x2, x3, x2
	lw	x2, 0(x2)
.LBB0_40:
	regsw_c	x22, 0x6db(x13)		# 011011011011011011011
	sh	x2, 1208(x3)
	sh	x2, 1210(x3)
	sh	x2, 1212(x3)
	sh	x2, 1214(x3)
	sh	x2, 1240(x3)
	sh	x2, 1242(x3)
	sh	x2, 1244(x3)
	regsw_c	x22, 0x6db(x13)		# 011011011011011011011
	sh	x2, 1246(x3)
	sh	x2, 1272(x3)
	sh	x2, 1274(x3)
	sh	x2, 1276(x3)
	sh	x2, 1278(x3)
	sh	x2, 1304(x3)
	sh	x2, 1306(x3)
	regsw_c	x20, 0x492(x13)		# 011011010010010010010
	sh	x2, 1308(x3)
	sh	x2, 1310(x3)
	sh	a3, 280(x3)
	sh	a3, 248(x3)
	sh	a3, 216(x3)
	sh	a3, 184(x3)
	sh	t1, 702(x3)
	regsw_c	x4, 0x492(x9)		# 010010010010010010010
	sh	t1, 700(x3)
	sh	t1, 698(x3)
	sh	t1, 696(x3)
	sh	a2, 282(x3)
	sh	a2, 250(x3)
	sh	a2, 218(x3)
	sh	a2, 186(x3)
	regsw_c	x4, 0x492(x9)		# 010010010010010010010
	sh	a7, 734(x3)
	sh	a7, 732(x3)
	sh	a7, 730(x3)
	sh	a7, 728(x3)
	sh	a1, 284(x3)
	sh	a1, 252(x3)
	sh	a1, 220(x3)
	regsw_c	x4, 0x492(x9)		# 010010010010010010010
	sh	a1, 188(x3)
	sh	a6, 766(x3)
	sh	a6, 764(x3)
	sh	a6, 762(x3)
	sh	a6, 760(x3)
	sh	a0, 286(x3)
	sh	a0, 254(x3)
	regsw_c	x4, 0x490(x9)		# 010010010010010010000
	sh	a0, 222(x3)
	sh	a0, 190(x3)
	sh	t0, 798(x3)
	sh	t0, 796(x3)
	sh	t0, 794(x3)
	sh	t0, 792(x3)
	beqz	t3, .LBB0_49
# %bb.41:
	beqz	a5, .LBB0_50
.LBB0_42:
	regsw_c	x0, 0x0(x18)		# 100100000000000000000
	slli	x3, a2, 1
	slli	x2, a1, 1
	beqz	t3, .LBB0_44
.LBB0_43:
	addi	t3, a1, 2
	regsw_c	x9, 0x7b3(x19)		# 100110100111110110011
	lui	x4, %hi(img)
	ld	x4, %lo(img)(x4)
	add	x5, t3, a3
	add	x5, x5, x3
	srliw	x5, x5, 2
	addi	x6, x4, 2047
	sh	x5, 1720(x4)
	regsw_c	x15, 0x4dc(x19)		# 100110111110011011100
	addi	x7, a0, 2
	add	x8, x7, a2
	add	x8, x8, x2
	srliw	x8, x8, 2
	sh	x8, 1752(x4)
	sh	x8, 1722(x4)
	slli	x8, a0, 1
	regsw_c	x0, 0x494(x4)		# 001000000010010010100
	add	t3, t3, x8
	add	t3, t3, t5
	srliw	t3, t3, 2
	sh	t3, 1784(x4)
	sh	t3, 1754(x4)
	sh	t3, 1724(x4)
	slli	x8, t5, 1
	regsw_c	x12, 0x6db(x31)		# 111110110011011011011
	add	x8, x7, x8
	add	x8, x8, t4
	srliw	x8, x8, 2
	sh	x8, 1816(x4)
	sh	x8, 1786(x4)
	sh	x8, 1756(x4)
	sh	x8, 1726(x4)
	regsw_c	x31, 0x59b(x18)		# 100101111110110011011
	slli	x9, t4, 1
	add	x10, t5, x1
	add	x9, x10, x9
	addi	x9, x9, 2
	srliw	x9, x9, 2
	sh	x9, 1818(x4)
	sh	x9, 1788(x4)
	regsw_c	x9, 0x7b3(x15)		# 011110100111110110011
	sh	x9, 1758(x4)
	slli	x10, x1, 1
	add	x11, t4, t6
	add	x10, x11, x10
	addi	x10, x10, 2
	srliw	x10, x10, 2
	sh	x10, 1820(x4)
	regsw_c	x4, 0x202(x14)		# 011100010001000000010
	sh	x10, 1790(x4)
	slli	x10, t6, 1
	add	t6, x1, t6
	add	t6, t6, x10
	addi	t6, t6, 2
	srli	t6, t6, 2
	sh	t6, 1822(x4)
	add	t6, a2, a3
	addi	t6, t6, 1
	srli	t6, t6, 1
	regsw_c	x9, 0x4d8(x8)		# 010000100110011011000
	sh	t6, 1721(x6)
	addi	t6, a1, 1
	add	x1, t6, a2
	srliw	x1, x1, 1
	sh	x1, 1785(x6)
	sh	x1, 1723(x6)
	add	t6, t6, a0
	srliw	t6, t6, 1
	regsw_c	x0, 0x12(x9)		# 010010000000000010010
	sh	t6, 1787(x6)
	sh	t6, 1725(x6)
	add	t6, a0, t5
	addi	t6, t6, 1
	srliw	t6, t6, 1
	sh	t6, 1789(x6)
	sh	t6, 1727(x6)
	add	t4, t5, t4
	addi	t4, t4, 1
	srli	t4, t4, 1
	regsw_c	x31, 0x492(x9)		# 010011111110010010010
	sh	t4, 1791(x6)
	sh	x5, 1753(x6)
	add	x7, x7, x2
	add	x7, x7, a2
	srliw	t4, x7, 2
	sh	t4, 1817(x6)
	sh	t4, 1755(x6)
	regsw_c	x6, 0x6c0(x9)		# 010010011011011000000
	sh	t3, 1819(x6)
	sh	t3, 1757(x6)
	sh	x8, 1821(x6)
	sh	x8, 1759(x6)
	sh	x9, 1823(x6)
.LBB0_44:
	slli	t3, a7, 1
	slli	t4, a6, 1
	beqz	a5, .LBB0_46
# %bb.45:
	addi	a5, a7, 1
	add	t5, a5, t1
	lui	t6, %hi(img)
	ld	t6, %lo(img)(t6)
	srli	t5, t5, 1
	regsw_c	x2, 0x26(x19)		# 100110001000000100110
	lui	x1, 1
	addiw	x1, x1, 184
	add	t6, t6, x1
	sh	t5, 0(t6)
	addi	t5, a6, 2
	add	x1, t5, t1
	add	x1, x1, t3
	regsw_c	x16, 0x0(x24)		# 110001000000000000000
	srli	x1, x1, 2
	sh	x1, 2(t6)
	add	a5, a5, a6
	srliw	a5, a5, 1
	sh	a5, 32(t6)
	sh	a5, 4(t6)
	add	a5, t0, a7
	add	a5, a5, t4
	addi	a5, a5, 2
	srliw	a5, a5, 2
	sh	a5, 34(t6)
	sh	a5, 6(t6)
	add	a5, a6, t0
	addi	a5, a5, 1
	srliw	a5, a5, 1
	sh	a5, 64(t6)
	sh	a5, 36(t6)
	slli	a5, t0, 1
	add	t5, t5, t0
	add	a5, t5, a5
	srliw	a5, a5, 2
	sh	a5, 66(t6)
	sh	a5, 38(t6)
	sh	t0, 102(t6)
	sh	t0, 100(t6)
	sh	t0, 98(t6)
	sh	t0, 70(t6)
	sh	t0, 68(t6)
	sh	t0, 96(t6)
.LBB0_46:
	beqz	a4, .LBB0_48
# %bb.47:
	addi	a4, a7, 2
	lui	a5, %hi(img)
	ld	a5, %lo(img)(a5)
	add	t5, a4, t0
	add	t4, t5, t4
	srliw	t4, t4, 2
	addi	a5, a5, 2047
	sh	t4, 281(a5)
	addi	t5, t1, 2
	add	t6, t5, a6
	add	t3, t6, t3
	srliw	t3, t3, 2
	sh	t3, 283(a5)
	sh	t3, 249(a5)
	slli	t6, t1, 1
	regsw_c	x13, 0x449(x19)		# 100110110110001001001
	addi	x1, t2, 2
	add	x4, x1, a7
	add	x4, x4, t6
	srliw	x4, x4, 2
	sh	x4, 285(a5)
	sh	x4, 251(a5)
	sh	x4, 217(a5)
	regsw_c	x16, 0x0(x16)		# 100001000000000000000
	slli	x5, t2, 1
	add	t5, t5, x5
	add	t5, t5, a3
	srliw	t5, t5, 2
	sh	t5, 287(a5)
	sh	t5, 253(a5)
	sh	t5, 219(a5)
	sh	t5, 185(a5)
	regsw_c	x29, 0x449(x19)		# 100111110110001001001
	slli	x5, a3, 1
	add	x1, x1, x5
	add	x1, x1, a2
	srliw	x1, x1, 2
	sh	x1, 255(a5)
	sh	x1, 221(a5)
	sh	x1, 187(a5)
	regsw_c	x13, 0x44d(x23)		# 101110110110001001101
	add	x3, a3, x3
	add	x3, x3, a1
	addi	x3, x3, 2
	srliw	x3, x3, 2
	sh	x3, 223(a5)
	sh	x3, 189(a5)
	add	x2, a2, x2
	regsw_c	x12, 0x336(x27)		# 110110110001100110110
	add	x2, x2, a0
	addi	x2, x2, 2
	srliw	x2, x2, 2
	sh	x2, 191(a5)
	addi	x5, t2, 1
	add	x6, x5, a3
	srliw	x6, x6, 1
	regsw_c	x16, 0x0(x4)		# 001001000000000000000
	sh	x6, 763(a5)
	sh	x6, 697(a5)
	add	a3, a3, a2
	addi	a3, a3, 1
	srliw	a3, a3, 1
	sh	a3, 765(a5)
	sh	a3, 699(a5)
	add	a2, a2, a1
	addi	a2, a2, 1
	srliw	a2, a2, 1
	sh	a2, 767(a5)
	sh	a2, 701(a5)
	add	a0, a1, a0
	addi	a0, a0, 1
	srli	a0, a0, 1
	sh	a0, 703(a5)
	sh	t5, 795(a5)
	sh	t5, 729(a5)
	regsw_c	x18, 0x248(x4)		# 001001001001001001000
	sh	x1, 797(a5)
	sh	x1, 731(a5)
	sh	x3, 799(a5)
	sh	x3, 733(a5)
	sh	x2, 735(a5)
	sh	x4, 761(a5)
	sh	t3, 793(a5)
	regsw_c	x0, 0x1(x25)		# 110010000000000000001
	add	x5, x5, t1
	srliw	a0, x5, 1
	sh	a0, 1245(a5)
	sh	a0, 1209(a5)
	sh	t5, 1247(a5)
	sh	t5, 1211(a5)
	sh	x1, 1213(a5)
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	sh	x3, 1215(a5)
	add	t1, a7, t1
	addi	t1, t1, 1
	srliw	a0, t1, 1
	sh	a0, 1277(a5)
	sh	a0, 1241(a5)
	add	a4, a4, t6
	add	a4, a4, t2
	srliw	a0, a4, 2
	sh	a0, 1279(a5)
	sh	a0, 1243(a5)
	addi	a6, a6, 1
	add	a7, a6, a7
	srliw	a0, a7, 1
	sh	a0, 1309(a5)
	sh	a0, 1273(a5)
	sh	t3, 1311(a5)
	sh	t3, 1275(a5)
	add	a6, a6, t0
	srli	a0, a6, 1
	sh	a0, 1305(a5)
	sh	t4, 1307(a5)
.LBB0_48:
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
	addi	sp, sp, 256
	ret
.LBB0_49:
	regsw_c	x8, 0x600(x19)		# 100110100011000000000
	lui	x2, %hi(img)
	ld	x2, %lo(img)(x2)
	li	x3, -1
	sh	x3, 184(x2)
	bnez	a5, .LBB0_42
.LBB0_50:
	regsw_c	x8, 0x720(x19)		# 100110100011100100000
	lui	x2, %hi(img)
	ld	x2, %lo(img)(x2)
	li	x3, -1
	sh	x3, 696(x2)
	slli	x3, a2, 1
	slli	x2, a1, 1
	bnez	t3, .LBB0_43
	j	.LBB0_44
.Lfunc_end0:
	.size	intrapred_luma, .Lfunc_end0-intrapred_luma
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	intrapred_luma_16x16            # -- Begin function intrapred_luma_16x16
	.p2align	2
	.type	intrapred_luma_16x16,@function
intrapred_luma_16x16:                   # @intrapred_luma_16x16
# %bb.0:
	addi	sp, sp, -592
	sd	ra, 584(sp)                     # 8-byte Folded Spill
	sd	s0, 576(sp)                     # 8-byte Folded Spill
	sd	s1, 568(sp)                     # 8-byte Folded Spill
	sd	s2, 560(sp)                     # 8-byte Folded Spill
	sd	s3, 552(sp)                     # 8-byte Folded Spill
	sd	s4, 544(sp)                     # 8-byte Folded Spill
	sd	s5, 536(sp)                     # 8-byte Folded Spill
	sd	s6, 528(sp)                     # 8-byte Folded Spill
	sd	s7, 520(sp)                     # 8-byte Folded Spill
	sd	s8, 512(sp)                     # 8-byte Folded Spill
	sd	s9, 504(sp)                     # 8-byte Folded Spill
	sd	s10, 496(sp)                    # 8-byte Folded Spill
	lui	a0, %hi(enc_picture)
	ld	a0, %lo(enc_picture)(a0)
	lui	s2, %hi(img)
	ld	a1, %lo(img)(s2)
	lui	a2, 2
	add	a0, a0, a2
	ld	s1, -1768(a0)
	lw	s0, 12(a1)
	li	a1, -1
	li	a2, -1
	li	a3, 1
	mv	a4, sp
	mv	a0, s0
	call	getNeighbour
	addi	a4, sp, 24
	li	a1, -1
	li	a3, 1
	mv	a0, s0
	li	a2, 0
	call	getNeighbour
	addi	a4, sp, 48
	li	a1, -1
	li	a2, 1
	li	a3, 1
	mv	a0, s0
	call	getNeighbour
	addi	a4, sp, 72
	li	a1, -1
	li	a2, 2
	li	a3, 1
	mv	a0, s0
	call	getNeighbour
	addi	a4, sp, 96
	li	a1, -1
	li	a2, 3
	li	a3, 1
	mv	a0, s0
	call	getNeighbour
	addi	a4, sp, 120
	li	a1, -1
	li	a2, 4
	li	a3, 1
	mv	a0, s0
	call	getNeighbour
	addi	a4, sp, 144
	li	a1, -1
	li	a2, 5
	li	a3, 1
	mv	a0, s0
	call	getNeighbour
	addi	a4, sp, 168
	li	a1, -1
	li	a2, 6
	li	a3, 1
	mv	a0, s0
	call	getNeighbour
	addi	a4, sp, 192
	li	a1, -1
	li	a2, 7
	li	a3, 1
	mv	a0, s0
	call	getNeighbour
	addi	a4, sp, 216
	li	a1, -1
	li	a2, 8
	li	a3, 1
	mv	a0, s0
	call	getNeighbour
	addi	a4, sp, 240
	li	a1, -1
	li	a2, 9
	li	a3, 1
	mv	a0, s0
	call	getNeighbour
	addi	a4, sp, 264
	li	a1, -1
	li	a2, 10
	li	a3, 1
	mv	a0, s0
	call	getNeighbour
	addi	a4, sp, 288
	li	a1, -1
	li	a2, 11
	li	a3, 1
	mv	a0, s0
	call	getNeighbour
	addi	a4, sp, 312
	li	a1, -1
	li	a2, 12
	li	a3, 1
	mv	a0, s0
	call	getNeighbour
	addi	a4, sp, 336
	li	a1, -1
	li	a2, 13
	li	a3, 1
	mv	a0, s0
	call	getNeighbour
	addi	a4, sp, 360
	li	a1, -1
	li	a2, 14
	li	a3, 1
	mv	a0, s0
	call	getNeighbour
	addi	a4, sp, 384
	li	a1, -1
	li	a2, 15
	li	a3, 1
	mv	a0, s0
	call	getNeighbour
	li	a2, -1
	li	a3, 1
	addi	a4, sp, 408
	mv	a0, s0
	li	a1, 0
	call	getNeighbour
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a1, 220(a0)
	lw	a0, 408(sp)
	beqz	a1, .LBB1_23
# %bb.1:
	ld	a2, %lo(img)(s2)
	beqz	a0, .LBB1_3
# %bb.2:
	lui	a0, 22
	add	a0, a2, a0
	lw	a1, 412(sp)
	ld	a0, -920(a0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
.LBB1_3:
	lw	a1, 24(sp)
	lui	a3, 22
	addiw	a3, a3, -920
	add	a2, a2, a3
	beqz	a1, .LBB1_5
# %bb.4:
	lw	a1, 28(sp)
	ld	a3, 0(a2)
	slli	a1, a1, 2
	add	a1, a3, a1
	lw	a1, 0(a1)
.LBB1_5:
	lw	a3, 48(sp)
	andi	a1, a1, 1
	beqz	a3, .LBB1_7
# %bb.6:
	lw	a3, 52(sp)
	ld	a4, 0(a2)
	slli	a3, a3, 2
	add	a3, a4, a3
	lw	a3, 0(a3)
.LBB1_7:
	lw	a4, 72(sp)
	and	a1, a3, a1
	beqz	a4, .LBB1_27
# %bb.8:
	lw	a3, 76(sp)
	ld	a4, 0(a2)
	slli	a3, a3, 2
	add	a3, a4, a3
	lw	a3, 0(a3)
	lw	a4, 96(sp)
	and	a1, a3, a1
	beqz	a4, .LBB1_28
.LBB1_9:
	lw	a3, 100(sp)
	ld	a4, 0(a2)
	slli	a3, a3, 2
	add	a3, a4, a3
	lw	a3, 0(a3)
	lw	a4, 120(sp)
	and	a1, a3, a1
	beqz	a4, .LBB1_29
.LBB1_10:
	lw	a3, 124(sp)
	ld	a4, 0(a2)
	slli	a3, a3, 2
	add	a3, a4, a3
	lw	a3, 0(a3)
	lw	a4, 144(sp)
	and	a1, a3, a1
	beqz	a4, .LBB1_30
.LBB1_11:
	lw	a3, 148(sp)
	ld	a4, 0(a2)
	slli	a3, a3, 2
	add	a3, a4, a3
	lw	a3, 0(a3)
	lw	a4, 168(sp)
	and	a1, a3, a1
	beqz	a4, .LBB1_31
.LBB1_12:
	lw	a3, 172(sp)
	ld	a4, 0(a2)
	slli	a3, a3, 2
	add	a3, a4, a3
	lw	a3, 0(a3)
	lw	a4, 192(sp)
	and	a1, a3, a1
	beqz	a4, .LBB1_32
.LBB1_13:
	lw	a3, 196(sp)
	ld	a4, 0(a2)
	slli	a3, a3, 2
	add	a3, a4, a3
	lw	a3, 0(a3)
	lw	a4, 216(sp)
	and	a1, a3, a1
	beqz	a4, .LBB1_33
.LBB1_14:
	lw	a3, 220(sp)
	ld	a4, 0(a2)
	slli	a3, a3, 2
	add	a3, a4, a3
	lw	a3, 0(a3)
	lw	a4, 240(sp)
	and	a1, a3, a1
	beqz	a4, .LBB1_34
.LBB1_15:
	lw	a3, 244(sp)
	ld	a4, 0(a2)
	slli	a3, a3, 2
	add	a3, a4, a3
	lw	a3, 0(a3)
	lw	a4, 264(sp)
	and	a1, a3, a1
	beqz	a4, .LBB1_35
.LBB1_16:
	lw	a3, 268(sp)
	ld	a4, 0(a2)
	slli	a3, a3, 2
	add	a3, a4, a3
	lw	a3, 0(a3)
	lw	a4, 288(sp)
	and	a1, a3, a1
	beqz	a4, .LBB1_36
.LBB1_17:
	lw	a3, 292(sp)
	ld	a4, 0(a2)
	slli	a3, a3, 2
	add	a3, a4, a3
	lw	a3, 0(a3)
	lw	a4, 312(sp)
	and	a1, a3, a1
	beqz	a4, .LBB1_37
.LBB1_18:
	lw	a3, 316(sp)
	ld	a4, 0(a2)
	slli	a3, a3, 2
	add	a3, a4, a3
	lw	a3, 0(a3)
	lw	a4, 336(sp)
	and	a1, a3, a1
	beqz	a4, .LBB1_38
.LBB1_19:
	lw	a3, 340(sp)
	ld	a4, 0(a2)
	slli	a3, a3, 2
	add	a3, a4, a3
	lw	a3, 0(a3)
	lw	a4, 360(sp)
	and	a1, a3, a1
	beqz	a4, .LBB1_39
.LBB1_20:
	lw	a3, 364(sp)
	ld	a4, 0(a2)
	slli	a3, a3, 2
	add	a3, a4, a3
	lw	a3, 0(a3)
	lw	a4, 384(sp)
	and	a1, a3, a1
	beqz	a4, .LBB1_40
.LBB1_21:
	lw	a3, 388(sp)
	ld	a4, 0(a2)
	slli	a3, a3, 2
	add	a3, a4, a3
	lw	a3, 0(a3)
	lw	a4, 0(sp)
	and	a1, a3, a1
	beqz	a4, .LBB1_41
.LBB1_22:
	lw	a3, 4(sp)
	ld	a2, 0(a2)
	slli	a3, a3, 2
	add	a2, a2, a3
	lw	s0, 0(a2)
	bnez	a0, .LBB1_24
	j	.LBB1_42
.LBB1_23:
	lw	a1, 24(sp)
	lw	s0, 0(sp)
	beqz	a0, .LBB1_42
.LBB1_24:
	lw	a2, 428(sp)
	slli	a2, a2, 3
	add	a2, s1, a2
	lw	a3, 424(sp)
	ld	a2, 0(a2)
	slli	a3, a3, 1
	add	a2, a2, a3
	lhu	a3, 0(a2)
	lhu	a4, 2(a2)
	add	a3, a3, a4
	lhu	a4, 4(a2)
	lhu	a5, 6(a2)
	lhu	a6, 8(a2)
	lhu	a7, 10(a2)
	lhu	t0, 12(a2)
	add	a4, a4, a5
	add	a3, a3, a4
	add	a6, a6, a7
	add	a6, a6, t0
	lhu	a4, 14(a2)
	lhu	a5, 16(a2)
	lhu	a7, 18(a2)
	lhu	t0, 20(a2)
	add	a3, a3, a6
	add	a4, a4, a5
	add	a4, a4, a7
	add	a4, a4, t0
	add	a3, a3, a4
	lhu	a4, 22(a2)
	lhu	a5, 24(a2)
	lhu	a6, 26(a2)
	lhu	a7, 28(a2)
	lhu	a2, 30(a2)
	add	a4, a4, a5
	add	a4, a4, a6
	add	a4, a4, a7
	add	a2, a4, a2
	add	a2, a3, a2
	beqz	a1, .LBB1_43
.LBB1_25:
	lw	a3, 44(sp)
	slli	a3, a3, 3
	add	a3, s1, a3
	lw	a4, 40(sp)
	ld	a3, 0(a3)
	lw	a5, 68(sp)
	slli	a4, a4, 1
	add	a3, a3, a4
	slli	a5, a5, 3
	add	a5, s1, a5
	lw	a4, 64(sp)
	ld	a5, 0(a5)
	lhu	a3, 0(a3)
	lw	a6, 92(sp)
	slli	a4, a4, 1
	add	a4, a5, a4
	lhu	a4, 0(a4)
	slli	a6, a6, 3
	add	a6, s1, a6
	lw	a5, 88(sp)
	ld	a6, 0(a6)
	lw	a7, 116(sp)
	add	a3, a3, a4
	slli	a5, a5, 1
	add	a5, a6, a5
	slli	a7, a7, 3
	add	a7, s1, a7
	lw	a4, 112(sp)
	ld	a6, 0(a7)
	lhu	a5, 0(a5)
	lw	a7, 140(sp)
	slli	a4, a4, 1
	add	a4, a6, a4
	lhu	a4, 0(a4)
	slli	a7, a7, 3
	add	a7, s1, a7
	lw	a6, 136(sp)
	ld	a7, 0(a7)
	add	a4, a5, a4
	lw	a5, 164(sp)
	slli	a6, a6, 1
	add	a6, a7, a6
	lhu	a6, 0(a6)
	slli	a5, a5, 3
	lw	a7, 160(sp)
	lw	t0, 188(sp)
	add	a5, s1, a5
	ld	a5, 0(a5)
	slli	a7, a7, 1
	slli	t0, t0, 3
	add	t0, s1, t0
	lw	t1, 184(sp)
	ld	t0, 0(t0)
	add	a5, a5, a7
	lhu	a5, 0(a5)
	slli	t1, t1, 1
	add	t0, t0, t1
	lhu	a7, 0(t0)
	lw	t0, 212(sp)
	add	a3, a3, a4
	add	a5, a6, a5
	add	a5, a5, a7
	slli	t0, t0, 3
	add	t0, s1, t0
	lw	a4, 208(sp)
	ld	a6, 0(t0)
	lw	a7, 236(sp)
	add	a3, a3, a5
	slli	a4, a4, 1
	add	a4, a6, a4
	slli	a7, a7, 3
	add	a7, s1, a7
	lw	a5, 232(sp)
	ld	a6, 0(a7)
	lhu	a4, 0(a4)
	lw	a7, 260(sp)
	slli	a5, a5, 1
	add	a5, a6, a5
	lhu	a5, 0(a5)
	slli	a7, a7, 3
	lw	a6, 256(sp)
	lw	t0, 284(sp)
	add	a7, s1, a7
	ld	a7, 0(a7)
	slli	a6, a6, 1
	slli	t0, t0, 3
	add	t0, s1, t0
	lw	t1, 280(sp)
	ld	t0, 0(t0)
	add	a6, a7, a6
	lhu	a6, 0(a6)
	slli	t1, t1, 1
	add	t0, t0, t1
	lhu	a7, 0(t0)
	lw	t0, 308(sp)
	add	a4, a4, a5
	add	a4, a4, a6
	add	a4, a4, a7
	slli	t0, t0, 3
	add	t0, s1, t0
	lw	a5, 304(sp)
	ld	a6, 0(t0)
	lw	a7, 332(sp)
	add	a3, a3, a4
	slli	a5, a5, 1
	add	a5, a6, a5
	slli	a7, a7, 3
	lw	a4, 328(sp)
	lw	a6, 356(sp)
	add	a7, s1, a7
	ld	a7, 0(a7)
	slli	a4, a4, 1
	slli	a6, a6, 3
	add	a6, s1, a6
	lw	t0, 352(sp)
	ld	a6, 0(a6)
	lw	t1, 380(sp)
	add	a4, a7, a4
	slli	t0, t0, 1
	add	a6, a6, t0
	slli	t1, t1, 3
	lw	a7, 404(sp)
	add	t1, s1, t1
	ld	t0, 0(t1)
	lw	t1, 376(sp)
	slli	a7, a7, 3
	add	a7, s1, a7
	lw	t2, 400(sp)
	ld	a7, 0(a7)
	slli	t1, t1, 1
	add	t0, t0, t1
	slli	t2, t2, 1
	add	a7, a7, t2
	lhu	a5, 0(a5)
	lhu	a4, 0(a4)
	lhu	a6, 0(a6)
	lhu	t0, 0(t0)
	lhu	a7, 0(a7)
	add	a4, a5, a4
	add	a4, a4, a6
	add	a4, a4, t0
	add	a4, a4, a7
	add	a3, a3, a4
	beqz	a0, .LBB1_90
# %bb.26:
	add	a2, a2, a3
	addi	a2, a2, 16
	srliw	s3, a2, 5
	li	s2, 1
	or	a2, a1, a0
	bnez	a2, .LBB1_48
	j	.LBB1_47
.LBB1_27:
	lw	a4, 96(sp)
	and	a1, zero, a1
	bnez	a4, .LBB1_9
.LBB1_28:
	lw	a4, 120(sp)
	and	a1, zero, a1
	bnez	a4, .LBB1_10
.LBB1_29:
	lw	a4, 144(sp)
	and	a1, zero, a1
	bnez	a4, .LBB1_11
.LBB1_30:
	lw	a4, 168(sp)
	and	a1, zero, a1
	bnez	a4, .LBB1_12
.LBB1_31:
	lw	a4, 192(sp)
	and	a1, zero, a1
	bnez	a4, .LBB1_13
.LBB1_32:
	lw	a4, 216(sp)
	and	a1, zero, a1
	bnez	a4, .LBB1_14
.LBB1_33:
	lw	a4, 240(sp)
	and	a1, zero, a1
	bnez	a4, .LBB1_15
.LBB1_34:
	lw	a4, 264(sp)
	and	a1, zero, a1
	bnez	a4, .LBB1_16
.LBB1_35:
	lw	a4, 288(sp)
	and	a1, zero, a1
	bnez	a4, .LBB1_17
.LBB1_36:
	lw	a4, 312(sp)
	and	a1, zero, a1
	bnez	a4, .LBB1_18
.LBB1_37:
	lw	a4, 336(sp)
	and	a1, zero, a1
	bnez	a4, .LBB1_19
.LBB1_38:
	lw	a4, 360(sp)
	and	a1, zero, a1
	bnez	a4, .LBB1_20
.LBB1_39:
	lw	a4, 384(sp)
	and	a1, zero, a1
	bnez	a4, .LBB1_21
.LBB1_40:
	lw	a4, 0(sp)
	and	a1, zero, a1
	bnez	a4, .LBB1_22
.LBB1_41:
	li	s0, 0
	bnez	a0, .LBB1_24
.LBB1_42:
	li	a2, 0
	bnez	a1, .LBB1_25
.LBB1_43:
	li	s2, 0
	li	s3, 0
	bnez	a1, .LBB1_46
# %bb.44:
	beqz	a0, .LBB1_46
# %bb.45:
	li	s2, 0
	addi	a2, a2, 8
	srliw	s3, a2, 4
.LBB1_46:
	or	a2, a1, a0
	bnez	a2, .LBB1_48
.LBB1_47:
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	lui	a3, 22
	add	a2, a2, a3
	lw	s3, 416(a2)
.LBB1_48:
	beqz	a0, .LBB1_50
# %bb.49:
	lw	a0, 428(sp)
	slli	a0, a0, 3
	add	a0, s1, a0
	lw	a2, 424(sp)
	ld	a0, 0(a0)
	slli	a2, a2, 1
	add	a0, a0, a2
	lhu	a2, 2(a0)
	lhu	a3, 0(a0)
	lhu	a4, 4(a0)
	lhu	a5, 6(a0)
	slli	a2, a2, 16
	or	a2, a2, a3
	slli	a4, a4, 32
	slli	a5, a5, 48
	or	a4, a5, a4
	or	a2, a4, a2
	sd	a2, 432(sp)
	lhu	a2, 10(a0)
	lhu	a3, 8(a0)
	lhu	a4, 12(a0)
	lhu	a5, 14(a0)
	slli	a2, a2, 16
	or	a2, a2, a3
	slli	a4, a4, 32
	slli	a5, a5, 48
	or	a4, a5, a4
	or	a2, a4, a2
	sd	a2, 440(sp)
	lhu	a2, 18(a0)
	lhu	a3, 16(a0)
	lhu	a4, 20(a0)
	lhu	a5, 22(a0)
	slli	a2, a2, 16
	or	a2, a2, a3
	slli	a4, a4, 32
	slli	a5, a5, 48
	or	a4, a5, a4
	or	a2, a4, a2
	sd	a2, 448(sp)
	lhu	a2, 26(a0)
	lhu	a3, 24(a0)
	lhu	a4, 28(a0)
	lhu	a0, 30(a0)
	slli	a2, a2, 16
	or	a2, a2, a3
	slli	a4, a4, 32
	slli	a0, a0, 48
	or	a0, a0, a4
	or	a0, a0, a2
	sd	a0, 456(sp)
.LBB1_50:
	beqz	a1, .LBB1_52
# %bb.51:
	lw	a0, 44(sp)
	slli	a0, a0, 3
	add	a0, s1, a0
	lw	a1, 40(sp)
	ld	a0, 0(a0)
	lw	a2, 68(sp)
	slli	a1, a1, 1
	add	a0, a0, a1
	lh	a0, 0(a0)
	slli	a2, a2, 3
	add	a2, s1, a2
	lw	a1, 64(sp)
	ld	a2, 0(a2)
	sh	a0, 464(sp)
	lw	a0, 92(sp)
	slli	a1, a1, 1
	add	a1, a2, a1
	lh	a1, 0(a1)
	slli	a0, a0, 3
	add	a0, s1, a0
	lw	a2, 88(sp)
	ld	a0, 0(a0)
	sh	a1, 466(sp)
	lw	a1, 116(sp)
	slli	a2, a2, 1
	add	a0, a0, a2
	lh	a0, 0(a0)
	slli	a1, a1, 3
	add	a1, s1, a1
	lw	a2, 112(sp)
	ld	a1, 0(a1)
	sh	a0, 468(sp)
	lw	a0, 140(sp)
	slli	a2, a2, 1
	add	a1, a1, a2
	lh	a1, 0(a1)
	slli	a0, a0, 3
	add	a0, s1, a0
	lw	a2, 136(sp)
	ld	a0, 0(a0)
	sh	a1, 470(sp)
	lw	a1, 164(sp)
	slli	a2, a2, 1
	add	a0, a0, a2
	lh	a0, 0(a0)
	slli	a1, a1, 3
	add	a1, s1, a1
	lw	a2, 160(sp)
	ld	a1, 0(a1)
	sh	a0, 472(sp)
	lw	a0, 188(sp)
	slli	a2, a2, 1
	add	a1, a1, a2
	lh	a1, 0(a1)
	slli	a0, a0, 3
	add	a0, s1, a0
	lw	a2, 184(sp)
	ld	a0, 0(a0)
	sh	a1, 474(sp)
	lw	a1, 212(sp)
	slli	a2, a2, 1
	add	a0, a0, a2
	lh	a0, 0(a0)
	slli	a1, a1, 3
	add	a1, s1, a1
	lw	a2, 208(sp)
	ld	a1, 0(a1)
	sh	a0, 476(sp)
	lw	a0, 236(sp)
	slli	a2, a2, 1
	add	a1, a1, a2
	lh	a1, 0(a1)
	slli	a0, a0, 3
	add	a0, s1, a0
	lw	a2, 232(sp)
	ld	a0, 0(a0)
	sh	a1, 478(sp)
	lw	a1, 260(sp)
	slli	a2, a2, 1
	add	a0, a0, a2
	lh	a0, 0(a0)
	slli	a1, a1, 3
	add	a1, s1, a1
	lw	a2, 256(sp)
	ld	a1, 0(a1)
	sh	a0, 480(sp)
	lw	a0, 284(sp)
	slli	a2, a2, 1
	add	a1, a1, a2
	lh	a1, 0(a1)
	slli	a0, a0, 3
	lw	a2, 280(sp)
	lw	a3, 308(sp)
	add	a0, s1, a0
	ld	a0, 0(a0)
	slli	a2, a2, 1
	slli	a3, a3, 3
	add	a3, s1, a3
	lw	a4, 304(sp)
	ld	a3, 0(a3)
	add	a0, a0, a2
	lh	a0, 0(a0)
	slli	a4, a4, 1
	add	a3, a3, a4
	lh	a2, 0(a3)
	lw	a3, 332(sp)
	sh	a1, 482(sp)
	sh	a0, 484(sp)
	sh	a2, 486(sp)
	slli	a3, a3, 3
	lw	a0, 328(sp)
	lw	a1, 356(sp)
	add	a3, s1, a3
	ld	a2, 0(a3)
	slli	a0, a0, 1
	slli	a1, a1, 3
	add	a1, s1, a1
	lw	a3, 352(sp)
	ld	a1, 0(a1)
	lw	a4, 380(sp)
	add	a0, a2, a0
	slli	a3, a3, 1
	add	a1, a1, a3
	slli	a4, a4, 3
	lw	a2, 404(sp)
	add	a4, s1, a4
	ld	a3, 0(a4)
	lw	a4, 376(sp)
	slli	a2, a2, 3
	add	a2, s1, a2
	lw	a5, 400(sp)
	ld	a2, 0(a2)
	slli	a4, a4, 1
	add	a3, a3, a4
	slli	a5, a5, 1
	add	a2, a2, a5
	lh	a0, 0(a0)
	lh	a1, 0(a1)
	lh	a3, 0(a3)
	lh	a2, 0(a2)
	sh	a0, 488(sp)
	sh	a1, 490(sp)
	sh	a3, 492(sp)
	sh	a2, 494(sp)
.LBB1_52:
	lui	s6, %hi(img)
	ld	a1, %lo(img)(s6)
	li	s7, 32
	lui	a0, 1
	addiw	s8, a0, 1750
	addi	s9, sp, 432
	lui	a0, 22
	addiw	s5, a0, 420
	lui	a0, 2
	addiw	s4, a0, -1848
	li	s10, 64
.LBB1_53:                               # =>This Inner Loop Header: Depth=1
	add	a1, a1, s8
	addi	a0, a1, -1054
	addi	a1, sp, 432
	li	a2, 32
	call	memcpy
	add	a0, s9, s7
	ld	a1, %lo(img)(s6)
	lh	a0, 0(a0)
	add	a2, a1, s8
	sh	a0, -542(a2)
	sh	s3, -30(a2)
	sh	a0, -540(a2)
	sh	s3, -28(a2)
	sh	a0, -538(a2)
	sh	s3, -26(a2)
	sh	a0, -536(a2)
	sh	s3, -24(a2)
	sh	a0, -534(a2)
	sh	s3, -22(a2)
	sh	a0, -532(a2)
	sh	s3, -20(a2)
	sh	a0, -530(a2)
	sh	s3, -18(a2)
	sh	a0, -528(a2)
	sh	s3, -16(a2)
	sh	a0, -526(a2)
	sh	s3, -14(a2)
	sh	a0, -524(a2)
	sh	s3, -12(a2)
	sh	a0, -522(a2)
	sh	s3, -10(a2)
	sh	a0, -520(a2)
	sh	s3, -8(a2)
	sh	a0, -518(a2)
	sh	s3, -6(a2)
	sh	a0, -516(a2)
	sh	s3, -4(a2)
	sh	a0, -514(a2)
	sh	s3, -2(a2)
	sh	a0, -512(a2)
	sh	s3, 0(a2)
	addi	s7, s7, 2
	addi	s8, s8, 32
	bne	s7, s10, .LBB1_53
# %bb.54:
	snez	a0, s0
	and	a0, s2, a0
	beqz	a0, .LBB1_89
# %bb.55:
	lw	a0, 428(sp)
	lw	a3, 424(sp)
	slli	a0, a0, 3
	add	a0, s1, a0
	ld	a0, 0(a0)
	add	a2, a1, s5
	slli	a3, a3, 1
	lw	a4, 236(sp)
	add	a3, a0, a3
	lhu	a5, 16(a3)
	lhu	a6, 12(a3)
	slli	a4, a4, 3
	lw	a0, 232(sp)
	lw	a7, 188(sp)
	add	a4, s1, a4
	ld	a4, 0(a4)
	slli	a0, a0, 1
	slli	a7, a7, 3
	add	a7, s1, a7
	lw	t0, 184(sp)
	ld	a7, 0(a7)
	add	a0, a4, a0
	lhu	a4, 0(a0)
	slli	t0, t0, 1
	add	a7, a7, t0
	lhu	a7, 0(a7)
	add	a0, a1, s4
	subw	a5, a5, a6
	lw	a6, 260(sp)
	subw	a4, a4, a7
	lhu	a7, 18(a3)
	lhu	t0, 10(a3)
	slli	a6, a6, 3
	lw	t1, 256(sp)
	lw	t2, 164(sp)
	add	a6, s1, a6
	ld	a6, 0(a6)
	slli	t1, t1, 1
	slli	t2, t2, 3
	add	t2, s1, t2
	lw	t3, 160(sp)
	ld	t2, 0(t2)
	add	a6, a6, t1
	lhu	a6, 0(a6)
	slli	t3, t3, 1
	add	t2, t2, t3
	lhu	t1, 0(t2)
	subw	a7, a7, t0
	slli	a7, a7, 1
	add	a5, a7, a5
	subw	a6, a6, t1
	lhu	a7, 20(a3)
	lhu	t0, 8(a3)
	lw	t1, 284(sp)
	slli	a6, a6, 1
	add	a4, a6, a4
	subw	a6, a7, t0
	slli	t1, t1, 3
	lw	a7, 280(sp)
	lw	t0, 140(sp)
	add	t1, s1, t1
	ld	t1, 0(t1)
	slli	a7, a7, 1
	slli	t0, t0, 3
	add	t0, s1, t0
	lw	t2, 136(sp)
	ld	t0, 0(t0)
	add	a7, t1, a7
	lhu	a7, 0(a7)
	slli	t2, t2, 1
	add	t0, t0, t2
	lhu	t0, 0(t0)
	slli	t1, a6, 1
	add	a6, t1, a6
	add	a5, a6, a5
	subw	a6, a7, t0
	slli	a7, a6, 1
	add	a6, a7, a6
	lw	a7, 308(sp)
	add	a4, a6, a4
	lhu	a6, 22(a3)
	lhu	t0, 6(a3)
	slli	a7, a7, 3
	lw	t1, 304(sp)
	lw	t2, 116(sp)
	add	a7, s1, a7
	ld	a7, 0(a7)
	slli	t1, t1, 1
	slli	t2, t2, 3
	add	t2, s1, t2
	lw	t3, 112(sp)
	ld	t2, 0(t2)
	add	a7, a7, t1
	lhu	a7, 0(a7)
	slli	t3, t3, 1
	add	t2, t2, t3
	lhu	t1, 0(t2)
	subw	a6, a6, t0
	slli	a6, a6, 2
	add	a5, a6, a5
	subw	a6, a7, t1
	slli	a6, a6, 2
	lw	a7, 332(sp)
	add	a4, a6, a4
	lhu	a6, 24(a3)
	lhu	t0, 4(a3)
	slli	a7, a7, 3
	lw	t1, 328(sp)
	lw	t2, 92(sp)
	add	a7, s1, a7
	ld	a7, 0(a7)
	slli	t1, t1, 1
	slli	t2, t2, 3
	add	t2, s1, t2
	lw	t3, 88(sp)
	ld	t2, 0(t2)
	add	a7, a7, t1
	lhu	a7, 0(a7)
	slli	t3, t3, 1
	add	t2, t2, t3
	lhu	t1, 0(t2)
	subw	a6, a6, t0
	slli	t0, a6, 2
	add	a6, t0, a6
	subw	a7, a7, t1
	lhu	t0, 26(a3)
	lhu	t1, 2(a3)
	lw	t2, 356(sp)
	slli	t3, a7, 2
	add	a7, t3, a7
	subw	t0, t0, t1
	slli	t2, t2, 3
	add	t2, s1, t2
	lw	t1, 352(sp)
	ld	t2, 0(t2)
	lw	t3, 68(sp)
	lw	t4, 20(sp)
	slli	t1, t1, 1
	add	t1, t2, t1
	slli	t3, t3, 3
	add	t3, s1, t3
	lw	t2, 64(sp)
	ld	t3, 0(t3)
	slli	t4, t4, 3
	add	t4, s1, t4
	slli	t2, t2, 1
	add	t2, t3, t2
	li	t3, 6
	mul	t0, t0, t3
	lhu	t1, 0(t1)
	lhu	t2, 0(t2)
	add	a6, t0, a6
	lw	t0, 16(sp)
	add	a5, a6, a5
	subw	a6, t1, t2
	lw	t1, 380(sp)
	mul	a6, a6, t3
	add	a6, a6, a7
	add	a4, a6, a4
	slli	t1, t1, 3
	add	t1, s1, t1
	lw	a6, 376(sp)
	ld	a7, 0(t1)
	lw	t1, 44(sp)
	lhu	t2, 28(a3)
	slli	a6, a6, 1
	add	a6, a7, a6
	slli	t1, t1, 3
	add	t1, s1, t1
	lw	a7, 40(sp)
	ld	t1, 0(t1)
	lhu	t3, 0(a3)
	lhu	a6, 0(a6)
	slli	a7, a7, 1
	add	a7, t1, a7
	lhu	a7, 0(a7)
	subw	t1, t2, t3
	slli	t2, t1, 3
	subw	t1, t2, t1
	subw	a6, a6, a7
	slli	a7, a6, 3
	ld	t2, 0(t4)
	lhu	t3, 30(a3)
	lw	a3, 404(sp)
	slli	t0, t0, 1
	add	t0, t2, t0
	lhu	t0, 0(t0)
	slli	a3, a3, 3
	add	a3, s1, a3
	lw	t2, 400(sp)
	ld	a3, 0(a3)
	subw	a6, a7, a6
	subw	a7, t3, t0
	slli	t2, t2, 1
	add	a3, a3, t2
	lhu	t2, 0(a3)
	slli	a7, a7, 3
	add	a7, a7, t1
	add	a5, a7, a5
	subw	a3, t2, t0
	slli	a3, a3, 3
	add	a3, a3, a6
	add	a4, a3, a4
	slli	a3, a5, 2
	add	a3, a3, a5
	addi	a3, a3, 32
	sraiw	a3, a3, 6
	slli	a5, a4, 2
	add	a4, a5, a4
	addi	a4, a4, 32
	sraiw	a4, a4, 6
	add	t2, t2, t3
	slli	t2, t2, 4
	lw	a2, 0(a2)
	slli	a5, a3, 1
	slli	a6, a3, 3
	slli	a7, a4, 3
	sub	a7, a7, a4
	subw	t0, t2, a7
	subw	a6, a3, a6
	add	a6, t0, a6
	addi	a6, a6, 16
	add	t2, a3, t2
	sub	a7, t2, a7
	addi	a7, a7, 16
	lui	t0, 2
	addiw	t0, t0, -1336
	add	a1, a1, t0
	j	.LBB1_57
.LBB1_56:                               #   in Loop: Header=BB1_57 Depth=1
	sgtz	t1, t0
	negw	t1, t1
	and	t0, t1, t0
	sh	t0, 14(a0)
	add	a6, a6, a4
	addi	a0, a0, 32
	add	a7, a7, a4
	beq	a0, a1, .LBB1_89
.LBB1_57:                               # =>This Inner Loop Header: Depth=1
	sraiw	t0, a6, 31
	srliw	t0, t0, 27
	add	t0, a6, t0
	sraiw	t1, t0, 5
	mv	t0, a2
	blt	a2, t1, .LBB1_59
# %bb.58:                               #   in Loop: Header=BB1_57 Depth=1
	mv	t0, t1
.LBB1_59:                               #   in Loop: Header=BB1_57 Depth=1
	sgtz	t1, t0
	negw	t1, t1
	and	t1, t1, t0
	add	t0, a3, a6
	sraiw	t2, t0, 31
	srliw	t2, t2, 27
	add	t2, t0, t2
	sraiw	t2, t2, 5
	sh	t1, -16(a0)
	mv	t1, a2
	blt	a2, t2, .LBB1_61
# %bb.60:                               #   in Loop: Header=BB1_57 Depth=1
	mv	t1, t2
.LBB1_61:                               #   in Loop: Header=BB1_57 Depth=1
	sgtz	t2, t1
	negw	t2, t2
	and	t1, t2, t1
	add	t0, a3, t0
	sraiw	t2, t0, 31
	srliw	t2, t2, 27
	add	t2, t0, t2
	sraiw	t2, t2, 5
	sh	t1, -14(a0)
	mv	t1, a2
	blt	a2, t2, .LBB1_63
# %bb.62:                               #   in Loop: Header=BB1_57 Depth=1
	mv	t1, t2
.LBB1_63:                               #   in Loop: Header=BB1_57 Depth=1
	sgtz	t2, t1
	negw	t2, t2
	and	t1, t2, t1
	add	t0, a3, t0
	sraiw	t2, t0, 31
	srliw	t2, t2, 27
	add	t2, t0, t2
	sraiw	t2, t2, 5
	sh	t1, -12(a0)
	mv	t1, a2
	blt	a2, t2, .LBB1_65
# %bb.64:                               #   in Loop: Header=BB1_57 Depth=1
	mv	t1, t2
.LBB1_65:                               #   in Loop: Header=BB1_57 Depth=1
	sgtz	t2, t1
	negw	t2, t2
	and	t1, t2, t1
	add	t0, a3, t0
	sraiw	t2, t0, 31
	srliw	t2, t2, 27
	add	t2, t0, t2
	sraiw	t2, t2, 5
	sh	t1, -10(a0)
	mv	t1, a2
	blt	a2, t2, .LBB1_67
# %bb.66:                               #   in Loop: Header=BB1_57 Depth=1
	mv	t1, t2
.LBB1_67:                               #   in Loop: Header=BB1_57 Depth=1
	sgtz	t2, t1
	negw	t2, t2
	and	t1, t2, t1
	add	t0, a3, t0
	sraiw	t2, t0, 31
	srliw	t2, t2, 27
	add	t2, t0, t2
	sraiw	t2, t2, 5
	sh	t1, -8(a0)
	mv	t1, a2
	blt	a2, t2, .LBB1_69
# %bb.68:                               #   in Loop: Header=BB1_57 Depth=1
	mv	t1, t2
.LBB1_69:                               #   in Loop: Header=BB1_57 Depth=1
	sgtz	t2, t1
	negw	t2, t2
	and	t1, t2, t1
	add	t0, a3, t0
	sraiw	t2, t0, 31
	srliw	t2, t2, 27
	add	t2, t0, t2
	sraiw	t2, t2, 5
	sh	t1, -6(a0)
	mv	t1, a2
	blt	a2, t2, .LBB1_71
# %bb.70:                               #   in Loop: Header=BB1_57 Depth=1
	mv	t1, t2
.LBB1_71:                               #   in Loop: Header=BB1_57 Depth=1
	sgtz	t2, t1
	negw	t2, t2
	and	t1, t2, t1
	add	t0, a3, t0
	sraiw	t2, t0, 31
	srliw	t2, t2, 27
	add	t2, t0, t2
	sraiw	t2, t2, 5
	sh	t1, -4(a0)
	mv	t1, a2
	blt	a2, t2, .LBB1_73
# %bb.72:                               #   in Loop: Header=BB1_57 Depth=1
	mv	t1, t2
.LBB1_73:                               #   in Loop: Header=BB1_57 Depth=1
	sgtz	t2, t1
	negw	t2, t2
	and	t1, t2, t1
	sraiw	t2, a7, 31
	srliw	t2, t2, 27
	add	t2, a7, t2
	sraiw	t2, t2, 5
	sh	t1, -2(a0)
	mv	t1, a2
	blt	a2, t2, .LBB1_75
# %bb.74:                               #   in Loop: Header=BB1_57 Depth=1
	mv	t1, t2
.LBB1_75:                               #   in Loop: Header=BB1_57 Depth=1
	sgtz	t2, t1
	negw	t2, t2
	and	t1, t2, t1
	add	t0, a5, t0
	sraiw	t2, t0, 31
	srliw	t2, t2, 27
	add	t2, t0, t2
	sraiw	t2, t2, 5
	sh	t1, 0(a0)
	mv	t1, a2
	blt	a2, t2, .LBB1_77
# %bb.76:                               #   in Loop: Header=BB1_57 Depth=1
	mv	t1, t2
.LBB1_77:                               #   in Loop: Header=BB1_57 Depth=1
	sgtz	t2, t1
	negw	t2, t2
	and	t1, t2, t1
	add	t0, a3, t0
	sraiw	t2, t0, 31
	srliw	t2, t2, 27
	add	t2, t0, t2
	sraiw	t2, t2, 5
	sh	t1, 2(a0)
	mv	t1, a2
	blt	a2, t2, .LBB1_79
# %bb.78:                               #   in Loop: Header=BB1_57 Depth=1
	mv	t1, t2
.LBB1_79:                               #   in Loop: Header=BB1_57 Depth=1
	sgtz	t2, t1
	negw	t2, t2
	and	t1, t2, t1
	add	t0, a3, t0
	sraiw	t2, t0, 31
	srliw	t2, t2, 27
	add	t2, t0, t2
	sraiw	t2, t2, 5
	sh	t1, 4(a0)
	mv	t1, a2
	blt	a2, t2, .LBB1_81
# %bb.80:                               #   in Loop: Header=BB1_57 Depth=1
	mv	t1, t2
.LBB1_81:                               #   in Loop: Header=BB1_57 Depth=1
	sgtz	t2, t1
	negw	t2, t2
	and	t1, t2, t1
	add	t0, a3, t0
	sraiw	t2, t0, 31
	srliw	t2, t2, 27
	add	t2, t0, t2
	sraiw	t2, t2, 5
	sh	t1, 6(a0)
	mv	t1, a2
	blt	a2, t2, .LBB1_83
# %bb.82:                               #   in Loop: Header=BB1_57 Depth=1
	mv	t1, t2
.LBB1_83:                               #   in Loop: Header=BB1_57 Depth=1
	sgtz	t2, t1
	negw	t2, t2
	and	t1, t2, t1
	add	t0, a3, t0
	sraiw	t2, t0, 31
	srliw	t2, t2, 27
	add	t2, t0, t2
	sraiw	t2, t2, 5
	sh	t1, 8(a0)
	mv	t1, a2
	blt	a2, t2, .LBB1_85
# %bb.84:                               #   in Loop: Header=BB1_57 Depth=1
	mv	t1, t2
.LBB1_85:                               #   in Loop: Header=BB1_57 Depth=1
	sgtz	t2, t1
	negw	t2, t2
	and	t1, t2, t1
	add	t0, a3, t0
	sraiw	t2, t0, 31
	srliw	t2, t2, 27
	add	t2, t0, t2
	sraiw	t2, t2, 5
	sh	t1, 10(a0)
	mv	t1, a2
	blt	a2, t2, .LBB1_87
# %bb.86:                               #   in Loop: Header=BB1_57 Depth=1
	mv	t1, t2
.LBB1_87:                               #   in Loop: Header=BB1_57 Depth=1
	sgtz	t2, t1
	negw	t2, t2
	and	t2, t2, t1
	add	t0, a3, t0
	sraiw	t1, t0, 31
	srliw	t1, t1, 27
	add	t0, t0, t1
	sraiw	t1, t0, 5
	sh	t2, 12(a0)
	mv	t0, a2
	blt	a2, t1, .LBB1_56
# %bb.88:                               #   in Loop: Header=BB1_57 Depth=1
	mv	t0, t1
	j	.LBB1_56
.LBB1_89:
	ld	ra, 584(sp)                     # 8-byte Folded Reload
	ld	s0, 576(sp)                     # 8-byte Folded Reload
	ld	s1, 568(sp)                     # 8-byte Folded Reload
	ld	s2, 560(sp)                     # 8-byte Folded Reload
	ld	s3, 552(sp)                     # 8-byte Folded Reload
	ld	s4, 544(sp)                     # 8-byte Folded Reload
	ld	s5, 536(sp)                     # 8-byte Folded Reload
	ld	s6, 528(sp)                     # 8-byte Folded Reload
	ld	s7, 520(sp)                     # 8-byte Folded Reload
	ld	s8, 512(sp)                     # 8-byte Folded Reload
	ld	s9, 504(sp)                     # 8-byte Folded Reload
	ld	s10, 496(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 592
	ret
.LBB1_90:
	li	s2, 0
	addi	a3, a3, 8
	srliw	s3, a3, 4
	or	a2, a1, a0
	bnez	a2, .LBB1_48
	j	.LBB1_47
.Lfunc_end1:
	.size	intrapred_luma_16x16, .Lfunc_end1-intrapred_luma_16x16
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	dct_luma_16x16                  # -- Begin function dct_luma_16x16
	.p2align	2
	.type	dct_luma_16x16,@function
dct_luma_16x16:                         # @dct_luma_16x16
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
	addi	sp, sp, -368
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a2, 22
	addiw	a3, a2, 108
	add	a3, a1, a3
	lui	a2, 8
	add	a4, a1, a2
	lui	a2, 3
	addiw	a2, a2, 884
	ld	a4, -1192(a4)
	lw	a5, 12(a1)
	lw	a6, 44(a3)
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	add	x3, a1, a2
	li	a2, 528
	mul	a2, a5, a2
	add	a2, a4, a2
	beqz	a6, .LBB2_2
.LBB2_1:
	lui	a4, %hi(FIELD_SCAN)
	addi	a4, a4, %lo(FIELD_SCAN)
	j	.LBB2_5
.LBB2_2:
	lw	a4, 0(a3)
	beqz	a4, .LBB2_4
# %bb.3:
	lw	a4, 424(a2)
	bnez	a4, .LBB2_1
.LBB2_4:
	lui	a4, %hi(SNGL_SCAN)
	addi	a4, a4, %lo(SNGL_SCAN)
.LBB2_5:
	sd	a4, 168(sp)                     # 8-byte Folded Spill
	regsw_c	x0, 0x20(x8)		# 010000000000000100000
	ld	a6, 972(x3)
	lw	a4, 272(a3)
	lw	a5, 12(a2)
	ld	a6, 0(a6)
	negw	a2, a4
	li	x14, 0
	bne	a5, a2, .LBB2_7
# %bb.6:
	lw	a2, 332(a3)
	addi	a2, a2, -1
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	seqz	x14, a2
.LBB2_7:
	li	a2, 0
	ld	s2, 0(a6)
	ld	a6, 8(a6)
	sd	a6, 144(sp)                     # 8-byte Folded Spill
	lui	a6, 262144
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	addiw	x15, a6, -1
	lui	a6, 1
	addiw	t0, a6, 696
	lui	a6, %hi(qp_per_matrix)
	lui	a7, %hi(qp_rem_matrix)
	ld	a7, %lo(qp_rem_matrix)(a7)
	ld	a6, %lo(qp_per_matrix)(a6)
	addw	a4, a4, a5
	slli	a4, a4, 2
	add	a7, a7, a4
	lui	a5, %hi(LevelScale4x4Luma)
	ld	a5, %lo(LevelScale4x4Luma)(a5)
	lw	a7, 0(a7)
	add	a4, a6, a4
	lw	t1, 0(a4)
	ld	a4, 8(a5)
	slli	a7, a7, 3
	lui	a5, %hi(LevelOffset4x4Luma)
	ld	a5, %lo(LevelOffset4x4Luma)(a5)
	lui	a6, %hi(InvLevelScale4x4Luma)
	ld	a6, %lo(InvLevelScale4x4Luma)(a6)
	add	a4, a4, a7
	ld	a5, 8(a5)
	ld	a4, 0(a4)
	sd	a4, 160(sp)                     # 8-byte Folded Spill
	ld	a4, 8(a6)
	sd	t1, 128(sp)                     # 8-byte Folded Spill
	slli	a6, t1, 3
	add	a5, a5, a6
	ld	a5, 0(a5)
	sd	a5, 136(sp)                     # 8-byte Folded Spill
	add	a4, a4, a7
	lw	a5, 172(a1)
	lui	a6, %hi(imgY_org)
	ld	a6, %lo(imgY_org)(a6)
	ld	a4, 0(a4)
	sd	a4, 120(sp)                     # 8-byte Folded Spill
	lw	a3, 352(a3)
	slli	a4, a5, 3
	add	a4, a6, a4
	slli	a5, a0, 9
	sd	t0, 16(sp)                      # 8-byte Folded Spill
	add	a5, a5, t0
	add	a5, a5, a1
	addi	a5, a5, 30
	addi	a6, sp, 1304
	addi	a7, sp, 184
	li	t0, 16
	j	.LBB2_10
.LBB2_8:                                #   in Loop: Header=BB2_10 Depth=1
	lw	t3, 168(a1)
	ld	t4, 0(a4)
	slli	t3, t3, 1
	add	t3, t4, t3
	lhu	t4, 0(t3)
	lhu	t5, -30(a5)
	subw	t4, t4, t5
	sw	t4, -32(a6)
	lhu	t5, 2(t3)
	lhu	t6, -28(a5)
	regsw_c	x4, 0x0(x19)		# 100110010000000000000
	add	x1, a7, t1
	add	x1, x1, t2
	sw	t4, 0(x1)
	subw	t5, t5, t6
	sw	t5, -28(a6)
	lhu	t4, 4(t3)
	lhu	t6, -26(a5)
	regsw_c	x8, 0x11(x8)		# 010000100000000010001
	sw	t5, 4(x1)
	lhu	t5, 6(t3)
	lhu	x2, -24(a5)
	subw	t4, t4, t6
	sw	t4, -24(a6)
	sw	t4, 8(x1)
	subw	t4, t5, x2
	sw	t4, -20(a6)
	lhu	t5, 8(t3)
	lhu	t6, -22(a5)
	regsw_c	x8, 0x11(x8)		# 010000100000000010001
	sw	t4, 12(x1)
	lhu	t4, 10(t3)
	lhu	x2, -20(a5)
	subw	t5, t5, t6
	sw	t5, -16(a6)
	sw	t5, 64(x1)
	subw	t4, t4, x2
	sw	t4, -12(a6)
	lhu	t5, 12(t3)
	lhu	t6, -18(a5)
	regsw_c	x8, 0x11(x8)		# 010000100000000010001
	sw	t4, 68(x1)
	lhu	t4, 14(t3)
	lhu	x2, -16(a5)
	subw	t5, t5, t6
	sw	t5, -8(a6)
	sw	t5, 72(x1)
	subw	t4, t4, x2
	sw	t4, -4(a6)
	lhu	t5, 16(t3)
	lhu	t6, -14(a5)
	regsw_c	x8, 0x11(x8)		# 010000100000000010001
	sw	t4, 76(x1)
	lhu	t4, 18(t3)
	lhu	x2, -12(a5)
	subw	t5, t5, t6
	sw	t5, 0(a6)
	sw	t5, 128(x1)
	subw	t4, t4, x2
	sw	t4, 4(a6)
	lhu	t5, 20(t3)
	lhu	t6, -10(a5)
	regsw_c	x8, 0x11(x8)		# 010000100000000010001
	sw	t4, 132(x1)
	lhu	t4, 22(t3)
	lhu	x2, -8(a5)
	subw	t5, t5, t6
	sw	t5, 8(a6)
	sw	t5, 136(x1)
	subw	t4, t4, x2
	sw	t4, 12(a6)
	lhu	t5, 24(t3)
	lhu	t6, -6(a5)
	regsw_c	x8, 0x11(x8)		# 010000100000000010001
	sw	t4, 140(x1)
	lhu	t4, 26(t3)
	lhu	x2, -4(a5)
	subw	t5, t5, t6
	sw	t5, 16(a6)
	sw	t5, 192(x1)
	subw	t4, t4, x2
	sw	t4, 20(a6)
	lhu	t5, 28(t3)
	lhu	t6, -2(a5)
	regsw_c	x0, 0x10(x8)		# 010000000000000010000
	sw	t4, 196(x1)
	lhu	t3, 30(t3)
	lhu	t4, 0(a5)
	subw	t5, t5, t6
	sw	t5, 24(a6)
	sw	t5, 200(x1)
	sub	t3, t3, t4
.LBB2_9:                                #   in Loop: Header=BB2_10 Depth=1
	sw	t3, 28(a6)
	add	t1, a7, t1
	add	t1, t1, t2
	sw	t3, 204(t1)
	addi	a2, a2, 1
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	addi	x3, x3, 64
	addi	a4, a4, 8
	addi	a5, a5, 32
	addi	a6, a6, 64
	beq	a2, t0, .LBB2_12
.LBB2_10:                               # =>This Inner Loop Header: Depth=1
	srli	t1, a2, 2
	andi	t2, a2, 3
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	and	t1, t1, x15
	slli	t1, t1, 8
	slli	t2, t2, 4
	beqz	a3, .LBB2_8
# %bb.11:                               #   in Loop: Header=BB2_10 Depth=1
	regsw_c	x0, 0x10(x8)		# 010000000000000010000
	lw	t3, -60(x3)
	sw	t3, -32(a6)
	add	t4, a7, t1
	add	t4, t4, t2
	sw	t3, 0(t4)
	lw	t3, -56(x3)
	sw	t3, -28(a6)
	sw	t3, 4(t4)
	regsw_c	x0, 0x402(x8)		# 010000000010000000010
	lw	t3, -52(x3)
	sw	t3, -24(a6)
	sw	t3, 8(t4)
	lw	t3, -48(x3)
	sw	t3, -20(a6)
	sw	t3, 12(t4)
	lw	t3, -44(x3)
	sw	t3, -16(a6)
	sw	t3, 64(t4)
	regsw_c	x0, 0x402(x8)		# 010000000010000000010
	lw	t3, -40(x3)
	sw	t3, -12(a6)
	sw	t3, 68(t4)
	lw	t3, -36(x3)
	sw	t3, -8(a6)
	sw	t3, 72(t4)
	lw	t3, -32(x3)
	sw	t3, -4(a6)
	sw	t3, 76(t4)
	regsw_c	x0, 0x402(x8)		# 010000000010000000010
	lw	t3, -28(x3)
	sw	t3, 0(a6)
	sw	t3, 128(t4)
	lw	t3, -24(x3)
	sw	t3, 4(a6)
	sw	t3, 132(t4)
	lw	t3, -20(x3)
	sw	t3, 8(a6)
	sw	t3, 136(t4)
	regsw_c	x0, 0x402(x8)		# 010000000010000000010
	lw	t3, -16(x3)
	sw	t3, 12(a6)
	sw	t3, 140(t4)
	lw	t3, -12(x3)
	sw	t3, 16(a6)
	sw	t3, 192(t4)
	lw	t3, -8(x3)
	sw	t3, 20(a6)
	sw	t3, 196(t4)
	regsw_c	x0, 0x400(x8)		# 010000000010000000000
	lw	t3, -4(x3)
	sw	t3, 24(a6)
	sw	t3, 200(t4)
	lw	t3, 0(x3)
	j	.LBB2_9
.LBB2_12:
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bnez	x14, .LBB2_18
# %bb.13:
	li	a4, 0
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	addi	x13, sp, 216
	addi	a1, sp, 184
	li	a2, 2
.LBB2_14:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_15 Depth 2
	mv	a3, a4
	slli	a4, a4, 8
	add	a4, a4, a1
	addi	a4, a4, 288
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	mv	a5, x13
.LBB2_15:                               #   Parent Loop BB2_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a6, -32(a5)
	lw	a7, -20(a5)
	lw	t0, -28(a5)
	lw	t1, -24(a5)
	add	t2, a7, a6
	add	t3, t1, t0
	subw	t1, t0, t1
	subw	t4, a6, a7
	add	a6, t3, t2
	subw	a7, t2, t3
	slli	t0, t4, 1
	add	t0, t1, t0
	lw	t2, -16(a5)
	lw	t3, -4(a5)
	lw	t5, -12(a5)
	lw	t6, -8(a5)
	slli	t1, t1, 1
	subw	t1, t4, t1
	add	t4, t3, t2
	regsw_c	x0, 0x440(x16)		# 100000000010001000000
	add	x1, t6, t5
	subw	t5, t5, t6
	subw	t6, t2, t3
	add	t2, x1, t4
	subw	t3, t4, x1
	slli	t4, t6, 1
	add	t4, t5, t4
	regsw_c	x9, 0x7(x18)		# 100100100100000000111
	lw	x1, 0(a5)
	lw	x2, 12(a5)
	lw	x3, 4(a5)
	lw	x4, 8(a5)
	slli	t5, t5, 1
	subw	t5, t6, t5
	add	x5, x2, x1
	regsw_c	x30, 0x7f7(x31)		# 111111111011111110111
	add	x6, x4, x3
	subw	x3, x3, x4
	subw	x4, x1, x2
	add	t6, x6, x5
	subw	x1, x5, x6
	slli	x2, x4, 1
	add	x2, x3, x2
	regsw_c	x9, 0x1bf(x18)		# 100100100100110111111
	lw	x5, 16(a5)
	lw	x6, 28(a5)
	lw	x7, 20(a5)
	lw	x8, 24(a5)
	slli	x3, x3, 1
	subw	x3, x4, x3
	add	x9, x6, x5
	regsw_c	x31, 0x7f7(x31)		# 111111111111111110111
	add	x10, x8, x7
	subw	x7, x7, x8
	subw	x8, x5, x6
	add	x4, x10, x9
	subw	x5, x9, x10
	slli	x6, x8, 1
	add	x6, x7, x6
	regsw_c	x29, 0x12f(x27)		# 110111110100100101111
	slli	x7, x7, 1
	subw	x7, x8, x7
	add	x8, x4, a6
	add	x9, t6, t2
	subw	x10, t2, t6
	subw	x11, a6, x4
	add	x12, x9, x8
	regsw_c	x19, 0x5ce(x7)		# 001111001110111001110
	sw	x12, -32(a5)
	subw	x8, x8, x9
	sw	x8, 0(a5)
	slli	x8, x11, 1
	add	x8, x10, x8
	sw	x8, -16(a5)
	slli	x10, x10, 1
	regsw_c	x29, 0x56f(x28)		# 111001110110101101111
	subw	x8, x11, x10
	sw	x8, 16(a5)
	add	x8, x6, t0
	add	x9, x2, t4
	subw	x10, t4, x2
	subw	x11, t0, x6
	add	x12, x9, x8
	regsw_c	x19, 0x5ce(x7)		# 001111001110111001110
	sw	x12, -28(a5)
	subw	x8, x8, x9
	sw	x8, 4(a5)
	slli	x8, x11, 1
	add	x8, x10, x8
	sw	x8, -12(a5)
	slli	x10, x10, 1
	regsw_c	x29, 0x56f(x28)		# 111001110110101101111
	subw	x8, x11, x10
	sw	x8, 20(a5)
	add	x8, x5, a7
	add	x9, x1, t3
	subw	x10, t3, x1
	subw	x11, a7, x5
	add	x12, x9, x8
	regsw_c	x19, 0x5ce(x7)		# 001111001110111001110
	sw	x12, -24(a5)
	subw	x8, x8, x9
	sw	x8, 8(a5)
	slli	x8, x11, 1
	add	x8, x10, x8
	sw	x8, -8(a5)
	slli	x10, x10, 1
	regsw_c	x29, 0x56f(x28)		# 111001110110101101111
	subw	x8, x11, x10
	sw	x8, 24(a5)
	add	x8, x7, t1
	add	x9, x3, t5
	subw	x10, t5, x3
	subw	x11, t1, x7
	add	x12, x9, x8
	regsw_c	x19, 0x5ce(x7)		# 001111001110111001110
	sw	x12, -20(a5)
	subw	x8, x8, x9
	sw	x8, 12(a5)
	slli	x8, x11, 1
	add	x8, x10, x8
	sw	x8, -4(a5)
	slli	x10, x10, 1
	regsw_c	x16, 0x0(x28)		# 111001000000000000000
	subw	x8, x11, x10
	sw	x8, 28(a5)
	addi	a5, a5, 64
	bne	a5, a4, .LBB2_15
# %bb.16:                               #   in Loop: Header=BB2_14 Depth=1
	addi	a4, a3, 1
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	addi	x13, x13, 256
	bgeu	a2, a3, .LBB2_14
# %bb.17:
	sw	a6, 1208(sp)
	sw	a7, 1216(sp)
	sw	t0, 1212(sp)
	sw	t1, 1220(sp)
	sw	t2, 1224(sp)
	sw	t3, 1232(sp)
	sw	t4, 1228(sp)
	sw	t5, 1236(sp)
	sw	t6, 1240(sp)
	regsw_c	x18, 0x249(x4)		# 001001001001001001001
	sw	x1, 1248(sp)
	sw	x2, 1244(sp)
	sw	x3, 1252(sp)
	sw	x4, 1256(sp)
	sw	x5, 1264(sp)
	sw	x6, 1260(sp)
	sw	x7, 1268(sp)
.LBB2_18:
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	sd	x15, 24(sp)                     # 8-byte Folded Spill
	sd	a0, 32(sp)                      # 8-byte Folded Spill
	lw	a0, 184(sp)
	lw	a1, 248(sp)
	lw	a3, 312(sp)
	lw	a4, 376(sp)
	sw	a0, 1208(sp)
	sw	a1, 1212(sp)
	sw	a3, 1216(sp)
	sw	a4, 1220(sp)
	lw	a2, 440(sp)
	lw	a5, 504(sp)
	lw	a7, 568(sp)
	lw	t0, 632(sp)
	sw	a2, 1224(sp)
	sw	a5, 1228(sp)
	sw	a7, 1232(sp)
	sw	t0, 1236(sp)
	lw	a6, 696(sp)
	lw	t1, 760(sp)
	lw	t3, 824(sp)
	lw	t4, 888(sp)
	sw	a6, 1240(sp)
	sw	t1, 1244(sp)
	sw	t3, 1248(sp)
	sw	t4, 1252(sp)
	lw	t2, 952(sp)
	lw	t5, 1016(sp)
	lw	t6, 1080(sp)
	regsw_c	x0, 0x50(x16)		# 100000000000001010000
	lw	x1, 1144(sp)
	sw	t2, 1256(sp)
	sw	t5, 1260(sp)
	sw	t6, 1264(sp)
	sw	x1, 1268(sp)
	bnez	x14, .LBB2_20
# %bb.19:
	regsw_c	x0, 0xdc(x18)		# 100100000000011011100
	add	x2, a4, a0
	add	x3, a3, a1
	subw	a1, a1, a3
	subw	a0, a0, a4
	add	a3, x3, x2
	subw	a4, x2, x3
	add	x2, a1, a0
	subw	a0, a0, a1
	add	a1, t0, a2
	regsw_c	x0, 0x440(x16)		# 100000000010001000000
	add	x3, a7, a5
	subw	a5, a5, a7
	subw	a2, a2, t0
	add	a7, x3, a1
	subw	a1, a1, x3
	add	t0, a5, a2
	subw	a2, a2, a5
	add	a5, t4, a6
	regsw_c	x0, 0x440(x16)		# 100000000010001000000
	add	x3, t3, t1
	subw	t1, t1, t3
	subw	a6, a6, t4
	add	t3, x3, a5
	subw	a5, a5, x3
	add	t4, t1, a6
	subw	a6, a6, t1
	regsw_c	x0, 0x28c(x10)		# 010100000001010001100
	add	t1, x1, t2
	add	x3, t6, t5
	subw	t5, t5, t6
	subw	t2, t2, x1
	add	t6, x3, t1
	subw	t1, t1, x3
	add	x1, t5, t2
	subw	t2, t2, t5
	add	t5, t6, a3
	regsw_c	x0, 0x401(x16)		# 100000000010000000001
	add	x3, t3, a7
	subw	a7, a7, t3
	subw	a3, a3, t6
	add	t3, x3, t5
	sraiw	t3, t3, 1
	sw	t3, 1208(sp)
	subw	t3, t5, x3
	sraiw	t3, t3, 1
	sw	t3, 1240(sp)
	add	t3, a7, a3
	sraiw	t3, t3, 1
	sw	t3, 1224(sp)
	subw	a3, a3, a7
	sraiw	a3, a3, 1
	sw	a3, 1256(sp)
	regsw_c	x0, 0x600(x12)		# 011000000011000000000
	add	a3, x1, x2
	add	a7, t4, t0
	subw	t0, t0, t4
	subw	t3, x2, x1
	add	t4, a7, a3
	sraiw	t4, t4, 1
	sw	t4, 1212(sp)
	subw	a3, a3, a7
	sraiw	a3, a3, 1
	sw	a3, 1244(sp)
	add	a3, t0, t3
	sraiw	a3, a3, 1
	sw	a3, 1228(sp)
	subw	a3, t3, t0
	sraiw	a3, a3, 1
	sw	a3, 1260(sp)
	add	a3, t1, a4
	add	a7, a5, a1
	subw	a1, a1, a5
	subw	a4, a4, t1
	add	a5, a7, a3
	sraiw	a5, a5, 1
	sw	a5, 1216(sp)
	subw	a3, a3, a7
	sraiw	a3, a3, 1
	sw	a3, 1248(sp)
	add	a3, a1, a4
	sraiw	a3, a3, 1
	sw	a3, 1232(sp)
	subw	a4, a4, a1
	sraiw	a1, a4, 1
	sw	a1, 1264(sp)
	add	a1, t2, a0
	add	a3, a6, a2
	subw	a2, a2, a6
	subw	a0, a0, t2
	add	a4, a3, a1
	sraiw	a4, a4, 1
	sw	a4, 1220(sp)
	subw	a1, a1, a3
	sraiw	a1, a1, 1
	sw	a1, 1252(sp)
	add	a1, a2, a0
	sraiw	a1, a1, 1
	sw	a1, 1236(sp)
	subw	a0, a0, a2
	sraiw	a0, a0, 1
	sw	a0, 1268(sp)
.LBB2_20:
	li	s5, 0
	li	s4, 0
	ld	a0, 128(sp)                     # 8-byte Folded Reload
	addi	a1, a0, 15
	sd	a1, 152(sp)                     # 8-byte Folded Spill
	addi	a0, a0, 16
	sd	a0, 112(sp)                     # 8-byte Folded Spill
	li	s7, -1
	addi	s3, sp, 1208
	lui	s6, %hi(input)
	lui	s8, %hi(img)
	lui	a0, 1
	addiw	s9, a0, -2033
	li	s10, 10
	li	s11, 16
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	sd	x14, 176(sp)                    # 8-byte Folded Spill
	j	.LBB2_22
.LBB2_21:                               #   in Loop: Header=BB2_22 Depth=1
	lw	a1, 0(s0)
	addi	s5, s5, 1
	mv	a0, s1
	call	sign
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	ld	x14, 176(sp)                    # 8-byte Folded Reload
	sw	a0, 0(s0)
	beq	s5, s11, .LBB2_34
.LBB2_22:                               # =>This Inner Loop Header: Depth=1
	slli	a0, s5, 1
	ld	a1, 168(sp)                     # 8-byte Folded Reload
	add	a0, a1, a0
	lbu	a1, 1(a0)
	lbu	a0, 0(a0)
	slli	a1, a1, 4
	add	a1, s3, a1
	slli	a0, a0, 2
	add	s0, a1, a0
	lw	a1, 0(s0)
	sraiw	a0, a1, 31
	xor	s1, a1, a0
	subw	s1, s1, a0
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	beqz	x14, .LBB2_28
# %bb.23:                               #   in Loop: Header=BB2_22 Depth=1
	ld	a0, %lo(input)(s6)
	addi	a0, a0, 2047
	lw	a0, 937(a0)
	beqz	a0, .LBB2_29
.LBB2_24:                               #   in Loop: Header=BB2_22 Depth=1
	addi	s7, s7, 1
	beqz	s1, .LBB2_26
.LBB2_25:                               #   in Loop: Header=BB2_22 Depth=1
	mv	a0, s1
	call	sign
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	ld	x14, 176(sp)                    # 8-byte Folded Reload
	slli	a1, s4, 2
	add	a2, s2, a1
	sw	a0, 0(a2)
	ld	a0, 144(sp)                     # 8-byte Folded Reload
	add	a1, a0, a1
	sw	s7, 0(a1)
	addiw	s4, s4, 1
	li	s7, -1
.LBB2_26:                               #   in Loop: Header=BB2_22 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	beqz	x14, .LBB2_21
# %bb.27:                               #   in Loop: Header=BB2_22 Depth=1
	addi	s5, s5, 1
	bne	s5, s11, .LBB2_22
	j	.LBB2_36
.LBB2_28:                               #   in Loop: Header=BB2_22 Depth=1
	ld	a0, 160(sp)                     # 8-byte Folded Reload
	ld	a0, 0(a0)
	ld	a2, 136(sp)                     # 8-byte Folded Reload
	ld	a2, 0(a2)
	lw	a0, 0(a0)
	lw	a2, 0(a2)
	mul	a0, a0, s1
	slli	a2, a2, 1
	add	a0, a2, a0
	ld	a2, 112(sp)                     # 8-byte Folded Reload
	sraw	s1, a0, a2
	ld	a0, %lo(input)(s6)
	addi	a0, a0, 2047
	lw	a0, 937(a0)
	bnez	a0, .LBB2_24
.LBB2_29:                               #   in Loop: Header=BB2_22 Depth=1
	mv	a0, s1
	blt	s1, s9, .LBB2_31
# %bb.30:                               #   in Loop: Header=BB2_22 Depth=1
	mv	a0, s9
.LBB2_31:                               #   in Loop: Header=BB2_22 Depth=1
	ld	a2, %lo(img)(s8)
	lw	a2, 40(a2)
	blt	a2, s10, .LBB2_33
# %bb.32:                               #   in Loop: Header=BB2_22 Depth=1
	mv	a0, s1
.LBB2_33:                               #   in Loop: Header=BB2_22 Depth=1
	mv	s1, a0
	addi	s7, s7, 1
	bnez	a0, .LBB2_25
	j	.LBB2_26
.LBB2_34:
	slli	s4, s4, 2
	add	s2, s2, s4
	sw	zero, 0(s2)
	lw	a0, 1208(sp)
	lw	a1, 1216(sp)
	lw	a2, 1212(sp)
	lw	a3, 1220(sp)
	add	a4, a1, a0
	subw	a0, a0, a1
	subw	a1, a2, a3
	add	a2, a3, a2
	add	a3, a2, a4
	sw	a3, 1208(sp)
	add	a3, a1, a0
	sw	a3, 1212(sp)
	subw	a0, a0, a1
	sw	a0, 1216(sp)
	subw	a4, a4, a2
	lw	a0, 1224(sp)
	lw	a1, 1232(sp)
	lw	a2, 1228(sp)
	lw	a3, 1236(sp)
	sw	a4, 1220(sp)
	add	a4, a1, a0
	subw	a0, a0, a1
	subw	a1, a2, a3
	add	a2, a3, a2
	add	a3, a2, a4
	sw	a3, 1224(sp)
	add	a3, a1, a0
	sw	a3, 1228(sp)
	subw	a0, a0, a1
	sw	a0, 1232(sp)
	subw	a4, a4, a2
	lw	a0, 1240(sp)
	lw	a1, 1248(sp)
	lw	a2, 1244(sp)
	lw	a3, 1252(sp)
	sw	a4, 1236(sp)
	add	a4, a1, a0
	subw	a0, a0, a1
	subw	a1, a2, a3
	add	a2, a3, a2
	add	a3, a2, a4
	sw	a3, 1240(sp)
	add	a5, a1, a0
	sw	a5, 1244(sp)
	subw	a0, a0, a1
	sw	a0, 1248(sp)
	subw	a4, a4, a2
	lw	a0, 1256(sp)
	lw	a1, 1264(sp)
	lw	a2, 1260(sp)
	lw	a5, 1268(sp)
	sw	a4, 1252(sp)
	add	a4, a1, a0
	subw	a0, a0, a1
	subw	a1, a2, a5
	add	a2, a5, a2
	add	a5, a2, a4
	sw	a5, 1256(sp)
	add	a6, a1, a0
	sw	a6, 1260(sp)
	subw	a0, a0, a1
	sw	a0, 1264(sp)
	subw	a4, a4, a2
	sw	a4, 1268(sp)
	ld	t4, 128(sp)                     # 8-byte Folded Reload
	addi	a0, t4, -6
	li	a1, 5
	subw	a1, a1, t4
	li	a2, 1
	sllw	a1, a2, a1
	li	t0, 6
	lw	a4, 1208(sp)
	subw	a2, t0, t4
	ld	a6, 120(sp)                     # 8-byte Folded Reload
	ld	a6, 0(a6)
	lw	a7, 1224(sp)
	add	t1, a3, a4
	subw	a4, a4, a3
	lw	a3, 0(a6)
	subw	t2, a7, a5
	add	t3, a5, a7
	add	a5, t3, t1
	mul	a7, a3, a5
	add	a6, t2, a4
	subw	a5, a4, t2
	subw	a4, t1, t3
	bge	t4, t0, .LBB2_37
# %bb.35:
	add	a7, a7, a1
	sraw	a7, a7, a2
	sw	a7, 184(sp)
	mul	a6, a3, a6
	add	a6, a6, a1
	sraw	a6, a6, a2
	sw	a6, 440(sp)
	mul	a5, a3, a5
	add	a5, a5, a1
	sraw	a5, a5, a2
	sw	a5, 696(sp)
	mul	a3, a3, a4
	add	a3, a3, a1
	sraw	a3, a3, a2
	j	.LBB2_38
.LBB2_36:
	slli	s4, s4, 2
	add	s2, s2, s4
	sw	zero, 0(s2)
	j	.LBB2_48
.LBB2_37:
	sllw	a7, a7, a0
	sw	a7, 184(sp)
	mul	a6, a3, a6
	sllw	a6, a6, a0
	sw	a6, 440(sp)
	mul	a5, a3, a5
	sllw	a5, a5, a0
	sw	a5, 696(sp)
	mul	a3, a3, a4
	sllw	a3, a3, a0
.LBB2_38:
	sw	a3, 952(sp)
	lw	a3, 1212(sp)
	lw	a4, 1244(sp)
	lw	a5, 1228(sp)
	ld	a6, 120(sp)                     # 8-byte Folded Reload
	ld	a6, 0(a6)
	lw	a7, 1260(sp)
	add	t0, a4, a3
	subw	a4, a3, a4
	lw	a3, 0(a6)
	subw	t1, a5, a7
	add	t2, a7, a5
	add	a5, t2, t0
	mul	a7, a3, a5
	li	t3, 6
	add	a6, t1, a4
	subw	a5, a4, t1
	subw	a4, t0, t2
	ld	t0, 128(sp)                     # 8-byte Folded Reload
	bge	t0, t3, .LBB2_40
# %bb.39:
	add	a7, a7, a1
	sraw	a7, a7, a2
	sw	a7, 248(sp)
	mul	a6, a3, a6
	add	a6, a6, a1
	sraw	a6, a6, a2
	sw	a6, 504(sp)
	mul	a5, a3, a5
	add	a5, a5, a1
	sraw	a5, a5, a2
	sw	a5, 760(sp)
	mul	a3, a3, a4
	add	a3, a3, a1
	sraw	a3, a3, a2
	j	.LBB2_41
.LBB2_40:
	sllw	a7, a7, a0
	sw	a7, 248(sp)
	mul	a6, a3, a6
	sllw	a6, a6, a0
	sw	a6, 504(sp)
	mul	a5, a3, a5
	sllw	a5, a5, a0
	sw	a5, 760(sp)
	mul	a3, a3, a4
	sllw	a3, a3, a0
.LBB2_41:
	sw	a3, 1016(sp)
	lw	a3, 1216(sp)
	lw	a4, 1248(sp)
	lw	a5, 1232(sp)
	ld	a6, 120(sp)                     # 8-byte Folded Reload
	ld	a6, 0(a6)
	lw	a7, 1264(sp)
	add	t0, a4, a3
	subw	a4, a3, a4
	lw	a3, 0(a6)
	subw	t1, a5, a7
	add	t2, a7, a5
	add	a5, t2, t0
	mul	a7, a3, a5
	li	t3, 6
	add	a6, t1, a4
	subw	a5, a4, t1
	subw	a4, t0, t2
	ld	t0, 128(sp)                     # 8-byte Folded Reload
	bge	t0, t3, .LBB2_43
# %bb.42:
	add	a7, a7, a1
	sraw	a7, a7, a2
	sw	a7, 312(sp)
	mul	a6, a3, a6
	add	a6, a6, a1
	sraw	a6, a6, a2
	sw	a6, 568(sp)
	mul	a5, a3, a5
	add	a5, a5, a1
	sraw	a5, a5, a2
	sw	a5, 824(sp)
	mul	a3, a3, a4
	add	a3, a3, a1
	sraw	a3, a3, a2
	j	.LBB2_44
.LBB2_43:
	sllw	a7, a7, a0
	sw	a7, 312(sp)
	mul	a6, a3, a6
	sllw	a6, a6, a0
	sw	a6, 568(sp)
	mul	a5, a3, a5
	sllw	a5, a5, a0
	sw	a5, 824(sp)
	mul	a3, a3, a4
	sllw	a3, a3, a0
.LBB2_44:
	sw	a3, 1080(sp)
	lw	a3, 1220(sp)
	lw	a4, 1252(sp)
	lw	a5, 1236(sp)
	ld	a6, 120(sp)                     # 8-byte Folded Reload
	ld	a6, 0(a6)
	lw	a7, 1268(sp)
	add	t0, a4, a3
	subw	a4, a3, a4
	lw	a3, 0(a6)
	subw	t1, a5, a7
	add	t2, a7, a5
	add	a5, t2, t0
	mul	a7, a3, a5
	li	t3, 6
	add	a6, t1, a4
	subw	a5, a4, t1
	subw	a4, t0, t2
	ld	t0, 128(sp)                     # 8-byte Folded Reload
	bge	t0, t3, .LBB2_46
# %bb.45:
	add	a7, a7, a1
	sraw	a0, a7, a2
	sw	a0, 376(sp)
	mul	a0, a3, a6
	add	a0, a0, a1
	sraw	a0, a0, a2
	sw	a0, 632(sp)
	mul	a0, a3, a5
	add	a0, a0, a1
	sraw	a0, a0, a2
	sw	a0, 888(sp)
	mul	a0, a3, a4
	add	a0, a0, a1
	sraw	a0, a0, a2
	j	.LBB2_47
.LBB2_46:
	sllw	a1, a7, a0
	sw	a1, 376(sp)
	mul	a1, a3, a6
	sllw	a1, a1, a0
	sw	a1, 632(sp)
	mul	a1, a3, a5
	sllw	a1, a1, a0
	sw	a1, 888(sp)
	mul	a1, a3, a4
	sllw	a0, a1, a0
.LBB2_47:
	sw	a0, 1144(sp)
.LBB2_48:
	li	a3, 0
	sd	zero, 144(sp)                   # 8-byte Folded Spill
	li	a0, 1
	ld	a1, 152(sp)                     # 8-byte Folded Reload
	sllw	a1, a0, a1
	sd	a1, 104(sp)                     # 8-byte Folded Spill
	ld	a2, 128(sp)                     # 8-byte Folded Reload
	addi	a1, a2, -4
	sd	a1, 96(sp)                      # 8-byte Folded Spill
	li	a1, 3
	subw	a1, a1, a2
	sllw	a0, a0, a1
	sd	a0, 88(sp)                      # 8-byte Folded Spill
	li	a0, 4
	subw	a0, a0, a2
	sd	a0, 80(sp)                      # 8-byte Folded Spill
	j	.LBB2_50
.LBB2_49:                               #   in Loop: Header=BB2_50 Depth=1
	ld	a3, 40(sp)                      # 8-byte Folded Reload
	addi	a3, a3, 1
	li	a0, 4
	beq	a3, a0, .LBB2_70
.LBB2_50:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_53 Depth 2
                                        #       Child Loop BB2_55 Depth 3
	li	a4, 0
	slli	a0, a3, 8
	andi	a1, a3, 2
	sd	a1, 64(sp)                      # 8-byte Folded Spill
	slli	a1, a3, 1
	andi	a1, a1, 2
	sd	a1, 56(sp)                      # 8-byte Folded Spill
	sd	a3, 40(sp)                      # 8-byte Folded Spill
	slli	s9, a3, 2
	addi	a1, sp, 184
	add	a0, a1, a0
	sd	a0, 48(sp)                      # 8-byte Folded Spill
	j	.LBB2_53
.LBB2_51:                               #   in Loop: Header=BB2_53 Depth=2
	slli	s11, s11, 2
	add	s6, s6, s11
	sw	zero, 0(s6)
.LBB2_52:                               #   in Loop: Header=BB2_53 Depth=2
	ld	a4, 72(sp)                      # 8-byte Folded Reload
	addi	a4, a4, 1
	li	a0, 4
	beq	a4, a0, .LBB2_49
.LBB2_53:                               #   Parent Loop BB2_50 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_55 Depth 3
	slli	s7, a4, 6
	ld	a0, 48(sp)                      # 8-byte Folded Reload
	add	s7, a0, s7
	lwu	a0, 60(s7)
	lwu	a1, 56(s7)
	slli	a0, a0, 32
	lwu	a2, 52(s7)
	or	a0, a0, a1
	lwu	a1, 48(s7)
	sd	a0, 1264(sp)
	slli	a2, a2, 32
	lwu	a0, 44(s7)
	or	a1, a2, a1
	lwu	a2, 40(s7)
	sd	a1, 1256(sp)
	slli	a0, a0, 32
	lwu	a1, 36(s7)
	or	a0, a0, a2
	lwu	a2, 32(s7)
	sd	a0, 1248(sp)
	slli	a1, a1, 32
	lwu	a0, 28(s7)
	or	a1, a1, a2
	lwu	a2, 24(s7)
	sd	a1, 1240(sp)
	slli	a0, a0, 32
	lwu	a1, 20(s7)
	or	a0, a0, a2
	sd	a0, 1232(sp)
	lwu	a0, 16(s7)
	slli	a1, a1, 32
	lwu	a2, 12(s7)
	lwu	a3, 8(s7)
	or	a0, a1, a0
	sd	a0, 1224(sp)
	slli	a2, a2, 32
	or	a2, a2, a3
	lwu	a0, 4(s7)
	lwu	a1, 0(s7)
	sd	a2, 1216(sp)
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	slli	a0, a0, 32
	or	a0, a0, a1
	sd	a0, 1208(sp)
	lui	a0, 3
	add	a2, a2, a0
	ld	a0, 1848(a2)
	srliw	a1, a4, 1
	ld	a2, 64(sp)                      # 8-byte Folded Reload
	or	a1, a1, a2
	slli	a1, a1, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	andi	a1, a4, 1
	ld	a2, 56(sp)                      # 8-byte Folded Reload
	or	a1, a1, a2
	slli	a1, a1, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	li	s11, 0
	ld	s6, 0(a0)
	ld	s8, 8(a0)
	sd	a4, 72(sp)                      # 8-byte Folded Spill
	slli	s10, a4, 2
	li	s0, -1
	li	s1, 1
	j	.LBB2_55
.LBB2_54:                               #   in Loop: Header=BB2_55 Depth=3
	addi	s1, s1, 1
	li	a0, 16
	beq	s1, a0, .LBB2_51
.LBB2_55:                               #   Parent Loop BB2_50 Depth=1
                                        #     Parent Loop BB2_53 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli	a0, s1, 1
	ld	a1, 168(sp)                     # 8-byte Folded Reload
	add	a0, a1, a0
	lbu	s3, 1(a0)
	lbu	s4, 0(a0)
	slli	a0, s3, 4
	addi	a1, sp, 1208
	add	a0, a1, a0
	slli	s5, s4, 2
	add	s5, a0, s5
	lw	a1, 0(s5)
	sraiw	a0, a1, 31
	xor	a1, a1, a0
	subw	s2, a1, a0
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bnez	x14, .LBB2_57
# %bb.56:                               #   in Loop: Header=BB2_55 Depth=3
	slli	a2, s4, 3
	ld	a3, 160(sp)                     # 8-byte Folded Reload
	add	a3, a3, a2
	ld	a3, 0(a3)
	ld	a4, 136(sp)                     # 8-byte Folded Reload
	add	a2, a4, a2
	ld	a2, 0(a2)
	slli	a4, s3, 2
	add	a3, a3, a4
	lw	a3, 0(a3)
	add	a2, a2, a4
	lw	a2, 0(a2)
	mul	a3, a3, s2
	add	a2, a2, a3
	ld	a3, 152(sp)                     # 8-byte Folded Reload
	sraw	s2, a2, a3
.LBB2_57:                               #   in Loop: Header=BB2_55 Depth=3
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	lui	a3, 22
	add	a3, a2, a3
	lw	a3, 100(a3)
	addi	s0, s0, 1
	beqz	a3, .LBB2_60
# %bb.58:                               #   in Loop: Header=BB2_55 Depth=3
	seqz	a3, s2
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	or	a3, x14, a3
	beqz	a3, .LBB2_62
# %bb.59:                               #   in Loop: Header=BB2_55 Depth=3
	add	a0, s9, s3
	slli	a0, a0, 6
	add	a0, a2, a0
	add	a1, s10, s4
	slli	a1, a1, 2
	lui	a2, 4
	add	a1, a1, a2
	add	a0, a0, a1
	sw	zero, -184(a0)
.LBB2_60:                               #   in Loop: Header=BB2_55 Depth=3
	bnez	s2, .LBB2_63
# %bb.61:                               #   in Loop: Header=BB2_55 Depth=3
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bnez	x14, .LBB2_54
	j	.LBB2_64
.LBB2_62:                               #   in Loop: Header=BB2_55 Depth=3
	slli	a3, s4, 3
	ld	a4, 160(sp)                     # 8-byte Folded Reload
	add	a3, a4, a3
	ld	a3, 0(a3)
	slli	a4, s3, 2
	add	a3, a3, a4
	lw	a3, 0(a3)
	lui	a4, %hi(AdaptRndWeight)
	lw	a4, %lo(AdaptRndWeight)(a4)
	subw	a1, a1, a0
	mul	a0, a3, a1
	ld	a1, 152(sp)                     # 8-byte Folded Reload
	sllw	a1, s2, a1
	subw	a0, a0, a1
	mul	a0, a0, a4
	ld	a1, 104(sp)                     # 8-byte Folded Reload
	add	a0, a0, a1
	ld	a1, 112(sp)                     # 8-byte Folded Reload
	sraw	a0, a0, a1
	add	a1, s9, s3
	slli	a1, a1, 6
	add	a1, a2, a1
	add	a2, s10, s4
	slli	a2, a2, 2
	lui	a3, 4
	add	a2, a2, a3
	add	a1, a1, a2
	sw	a0, -184(a1)
.LBB2_63:                               #   in Loop: Header=BB2_55 Depth=3
	lw	a1, 0(s5)
	mv	a0, s2
	call	sign
	slli	a1, s11, 2
	add	a2, s6, a1
	sw	a0, 0(a2)
	add	a1, s8, a1
	sw	s0, 0(a1)
	addiw	s11, s11, 1
	li	a0, 15
	sd	a0, 144(sp)                     # 8-byte Folded Spill
	li	s0, -1
	regsw_c	x0, 0x0(x17)		# 100010000000000000000
	ld	x14, 176(sp)                    # 8-byte Folded Reload
	bnez	x14, .LBB2_54
.LBB2_64:                               #   in Loop: Header=BB2_55 Depth=3
	lw	a1, 0(s5)
	mv	a0, s2
	call	sign
	slli	s4, s4, 3
	ld	a1, 120(sp)                     # 8-byte Folded Reload
	add	s4, a1, s4
	ld	a1, 0(s4)
	slli	s3, s3, 2
	add	a1, a1, s3
	lw	a1, 0(a1)
	mul	a0, a1, a0
	ld	a1, 128(sp)                     # 8-byte Folded Reload
	li	a2, 4
	blt	a1, a2, .LBB2_66
# %bb.65:                               #   in Loop: Header=BB2_55 Depth=3
	ld	a1, 96(sp)                      # 8-byte Folded Reload
	sllw	a0, a0, a1
	j	.LBB2_67
.LBB2_66:                               #   in Loop: Header=BB2_55 Depth=3
	ld	a1, 88(sp)                      # 8-byte Folded Reload
	add	a0, a0, a1
	ld	a1, 80(sp)                      # 8-byte Folded Reload
	sraw	a0, a0, a1
.LBB2_67:                               #   in Loop: Header=BB2_55 Depth=3
	addi	s1, s1, 1
	sw	a0, 0(s5)
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	ld	x14, 176(sp)                    # 8-byte Folded Reload
	li	a0, 16
	bne	s1, a0, .LBB2_55
# %bb.68:                               #   in Loop: Header=BB2_53 Depth=2
	slli	s11, s11, 2
	add	s6, s6, s11
	sw	zero, 0(s6)
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bnez	x14, .LBB2_52
# %bb.69:                               #   in Loop: Header=BB2_53 Depth=2
	lw	a0, 1208(sp)
	lw	a1, 1216(sp)
	lw	a2, 1212(sp)
	lw	a3, 1220(sp)
	add	a4, a1, a0
	subw	a0, a0, a1
	srai	a1, a2, 1
	subw	a1, a1, a3
	srai	a3, a3, 1
	add	a2, a3, a2
	add	a3, a2, a4
	sw	a3, 1208(sp)
	add	a5, a1, a0
	sw	a5, 1212(sp)
	subw	a0, a0, a1
	sw	a0, 1216(sp)
	subw	a4, a4, a2
	lw	a1, 1224(sp)
	lw	a2, 1232(sp)
	sw	a4, 1220(sp)
	lw	a6, 1228(sp)
	lw	a7, 1236(sp)
	add	t0, a2, a1
	subw	a1, a1, a2
	srai	a2, a6, 1
	subw	a2, a2, a7
	srai	a7, a7, 1
	add	a6, a7, a6
	add	a7, a6, t0
	sw	a7, 1224(sp)
	add	t1, a2, a1
	sw	t1, 1228(sp)
	subw	a1, a1, a2
	sw	a1, 1232(sp)
	subw	a2, t0, a6
	lw	a6, 1240(sp)
	lw	t0, 1248(sp)
	sw	a2, 1236(sp)
	lw	t2, 1244(sp)
	lw	t3, 1252(sp)
	add	t4, t0, a6
	subw	a6, a6, t0
	srai	t0, t2, 1
	subw	t0, t0, t3
	srai	t3, t3, 1
	add	t2, t3, t2
	add	t3, t2, t4
	sw	t3, 1240(sp)
	add	t5, t0, a6
	sw	t5, 1244(sp)
	subw	a6, a6, t0
	sw	a6, 1248(sp)
	subw	t0, t4, t2
	lw	t2, 1256(sp)
	lw	t4, 1264(sp)
	sw	t0, 1252(sp)
	lw	t6, 1260(sp)
	regsw_c	x0, 0x72(x18)		# 100100000000001110010
	lw	x1, 1268(sp)
	add	x2, t4, t2
	subw	t2, t2, t4
	srai	t4, t6, 1
	subw	t4, t4, x1
	srai	x1, x1, 1
	add	t6, x1, t6
	regsw_c	x24, 0x202(x20)		# 101001100001000000010
	add	x1, t6, x2
	sw	x1, 1256(sp)
	add	x3, t4, t2
	sw	x3, 1260(sp)
	subw	t2, t2, t4
	sw	t2, 1264(sp)
	subw	t4, x2, t6
	sw	t4, 1268(sp)
	add	t6, t3, a3
	subw	a3, a3, t3
	sraiw	t3, a7, 1
	regsw_c	x5, 0x61(x7)		# 001110010100001100001
	subw	t3, t3, x1
	sraiw	x1, x1, 1
	add	a7, x1, a7
	add	x1, a7, t6
	sw	x1, 0(s7)
	add	x1, t3, a3
	sw	x1, 16(s7)
	subw	a3, a3, t3
	sw	a3, 32(s7)
	subw	a3, t6, a7
	sw	a3, 48(s7)
	add	a3, t5, a5
	subw	a5, a5, t5
	sraiw	a7, t1, 1
	regsw_c	x0, 0x0(x5)		# 001010000000000000000
	subw	a7, a7, x3
	sraiw	t3, x3, 1
	add	t1, t3, t1
	add	t3, t1, a3
	sw	t3, 4(s7)
	add	t3, a7, a5
	sw	t3, 20(s7)
	subw	a5, a5, a7
	sw	a5, 36(s7)
	subw	a3, a3, t1
	sw	a3, 52(s7)
	add	a3, a6, a0
	subw	a0, a0, a6
	sraiw	a5, a1, 1
	subw	a5, a5, t2
	sraiw	a6, t2, 1
	add	a1, a6, a1
	add	a6, a1, a3
	sw	a6, 8(s7)
	add	a6, a5, a0
	sw	a6, 24(s7)
	subw	a0, a0, a5
	sw	a0, 40(s7)
	subw	a3, a3, a1
	sw	a3, 56(s7)
	add	a0, t0, a4
	subw	a1, a4, t0
	sraiw	a3, a2, 1
	subw	a3, a3, t4
	sraiw	a4, t4, 1
	add	a2, a4, a2
	add	a4, a2, a0
	sw	a4, 12(s7)
	add	a4, a3, a1
	sw	a4, 28(s7)
	subw	a1, a1, a3
	sw	a1, 44(s7)
	subw	a0, a0, a2
	sw	a0, 60(s7)
	j	.LBB2_52
.LBB2_70:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 22
	addiw	a1, a1, 460
	add	a1, a0, a1
	lw	a2, 0(a1)
	beqz	a2, .LBB2_74
# %bb.71:
	lui	a2, 3
	addiw	a2, a2, 856
	add	a2, a0, a2
	ld	t0, 32(sp)                      # 8-byte Folded Reload
	li	a3, 0
	addi	a4, sp, 184
	li	a5, 16
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	beqz	x14, .LBB2_75
# %bb.72:                               # %.preheader
	ld	t1, 24(sp)                      # 8-byte Folded Reload
.LBB2_73:                               # =>This Inner Loop Header: Depth=1
	srli	a6, a3, 2
	andi	a7, a3, 3
	and	a6, a6, t1
	slli	a6, a6, 8
	slli	a7, a7, 4
	add	a7, a4, a7
	add	a6, a7, a6
	lw	a7, 0(a6)
	sw	a7, -32(a2)
	lw	a7, 4(a6)
	sw	a7, -28(a2)
	lw	a7, 8(a6)
	sw	a7, -24(a2)
	lw	a7, 12(a6)
	sw	a7, -20(a2)
	lw	a7, 64(a6)
	sw	a7, -16(a2)
	lw	a7, 68(a6)
	sw	a7, -12(a2)
	lw	a7, 72(a6)
	sw	a7, -8(a2)
	lw	a7, 76(a6)
	sw	a7, -4(a2)
	lw	a7, 128(a6)
	sw	a7, 0(a2)
	lw	a7, 132(a6)
	sw	a7, 4(a2)
	lw	a7, 136(a6)
	sw	a7, 8(a2)
	lw	a7, 140(a6)
	sw	a7, 12(a2)
	lw	a7, 192(a6)
	sw	a7, 16(a2)
	lw	a7, 196(a6)
	sw	a7, 20(a2)
	lw	a7, 200(a6)
	sw	a7, 24(a2)
	lw	a6, 204(a6)
	sw	a6, 28(a2)
	addi	a3, a3, 1
	addi	a2, a2, 64
	bne	a3, a5, .LBB2_73
	j	.LBB2_77
.LBB2_74:
	lwu	a2, 196(sp)
	lwu	a3, 192(sp)
	slli	a2, a2, 32
	lwu	a4, 188(sp)
	lwu	a5, 184(sp)
	or	a2, a2, a3
	sd	a2, 1280(sp)
	slli	a4, a4, 32
	or	a4, a4, a5
	sd	a4, 1272(sp)
	lw	a2, 200(sp)
	lw	a3, 204(sp)
	lw	a4, 208(sp)
	lw	a5, 212(sp)
	sw	a2, 1336(sp)
	sw	a3, 1340(sp)
	sw	a4, 1344(sp)
	sw	a5, 1348(sp)
	lw	a2, 216(sp)
	lw	a3, 220(sp)
	lw	a4, 224(sp)
	lw	a5, 228(sp)
	sw	a2, 1400(sp)
	sw	a3, 1404(sp)
	sw	a4, 1408(sp)
	sw	a5, 1412(sp)
	lw	a2, 244(sp)
	lw	a3, 240(sp)
	lw	a4, 236(sp)
	lw	a5, 232(sp)
	sw	a2, 1476(sp)
	sw	a3, 1472(sp)
	sw	a4, 1468(sp)
	sw	a5, 1464(sp)
	addi	a5, sp, 248
	lw	a2, 12(a5)
	lw	a3, 8(a5)
	lw	a4, 4(a5)
	lw	a5, 0(a5)
	sw	a2, 1300(sp)
	sw	a3, 1296(sp)
	sw	a4, 1292(sp)
	sw	a5, 1288(sp)
	lw	a2, 276(sp)
	lw	a3, 272(sp)
	lw	a4, 268(sp)
	lw	a5, 264(sp)
	sw	a2, 1364(sp)
	sw	a3, 1360(sp)
	sw	a4, 1356(sp)
	sw	a5, 1352(sp)
	lw	a2, 292(sp)
	lw	a3, 288(sp)
	lw	a4, 284(sp)
	lw	a5, 280(sp)
	sw	a2, 1428(sp)
	sw	a3, 1424(sp)
	sw	a4, 1420(sp)
	sw	a5, 1416(sp)
	lw	a2, 308(sp)
	lw	a3, 304(sp)
	lw	a4, 300(sp)
	lw	a5, 296(sp)
	sw	a2, 1492(sp)
	sw	a3, 1488(sp)
	sw	a4, 1484(sp)
	sw	a5, 1480(sp)
	addi	a5, sp, 312
	lw	a2, 12(a5)
	lw	a3, 8(a5)
	lw	a4, 4(a5)
	lw	a5, 0(a5)
	sw	a2, 1316(sp)
	sw	a3, 1312(sp)
	sw	a4, 1308(sp)
	sw	a5, 1304(sp)
	lw	a2, 340(sp)
	lw	a3, 336(sp)
	lw	a4, 332(sp)
	lw	a5, 328(sp)
	sw	a2, 1380(sp)
	sw	a3, 1376(sp)
	sw	a4, 1372(sp)
	sw	a5, 1368(sp)
	lw	a2, 356(sp)
	lw	a3, 352(sp)
	lw	a4, 348(sp)
	lw	a5, 344(sp)
	sw	a2, 1444(sp)
	sw	a3, 1440(sp)
	sw	a4, 1436(sp)
	sw	a5, 1432(sp)
	lw	a2, 372(sp)
	lw	a3, 368(sp)
	lw	a4, 364(sp)
	lw	a5, 360(sp)
	sw	a2, 1508(sp)
	sw	a3, 1504(sp)
	sw	a4, 1500(sp)
	sw	a5, 1496(sp)
	addi	a5, sp, 376
	lw	a2, 12(a5)
	lw	a3, 8(a5)
	lw	a4, 4(a5)
	lw	a5, 0(a5)
	sw	a2, 1332(sp)
	sw	a3, 1328(sp)
	sw	a4, 1324(sp)
	sw	a5, 1320(sp)
	lw	a2, 404(sp)
	lw	a3, 400(sp)
	lw	a4, 396(sp)
	lw	a5, 392(sp)
	sw	a2, 1396(sp)
	sw	a3, 1392(sp)
	sw	a4, 1388(sp)
	sw	a5, 1384(sp)
	lw	a2, 420(sp)
	lw	a3, 416(sp)
	lw	a4, 412(sp)
	lw	a5, 408(sp)
	sw	a2, 1460(sp)
	sw	a3, 1456(sp)
	sw	a4, 1452(sp)
	sw	a5, 1448(sp)
	lw	a2, 436(sp)
	lw	a3, 432(sp)
	lw	a4, 428(sp)
	lw	a5, 424(sp)
	sw	a2, 1524(sp)
	sw	a3, 1520(sp)
	sw	a4, 1516(sp)
	sw	a5, 1512(sp)
	addi	a5, sp, 440
	lw	a2, 12(a5)
	lw	a3, 8(a5)
	lw	a4, 4(a5)
	lw	a5, 0(a5)
	sw	a2, 1540(sp)
	sw	a3, 1536(sp)
	sw	a4, 1532(sp)
	sw	a5, 1528(sp)
	lw	a2, 468(sp)
	lw	a3, 464(sp)
	lw	a4, 460(sp)
	lw	a5, 456(sp)
	sw	a2, 1604(sp)
	sw	a3, 1600(sp)
	sw	a4, 1596(sp)
	sw	a5, 1592(sp)
	lw	a2, 484(sp)
	lw	a3, 480(sp)
	lw	a4, 476(sp)
	lw	a5, 472(sp)
	sw	a2, 1668(sp)
	sw	a3, 1664(sp)
	sw	a4, 1660(sp)
	sw	a5, 1656(sp)
	lw	a2, 500(sp)
	lw	a3, 496(sp)
	lw	a4, 492(sp)
	lw	a5, 488(sp)
	sw	a2, 1732(sp)
	sw	a3, 1728(sp)
	sw	a4, 1724(sp)
	sw	a5, 1720(sp)
	addi	a5, sp, 504
	lw	a2, 12(a5)
	lw	a3, 8(a5)
	lw	a4, 4(a5)
	lw	a5, 0(a5)
	sw	a2, 1556(sp)
	sw	a3, 1552(sp)
	sw	a4, 1548(sp)
	sw	a5, 1544(sp)
	lw	a2, 532(sp)
	lw	a3, 528(sp)
	lw	a4, 524(sp)
	lw	a5, 520(sp)
	sw	a2, 1620(sp)
	sw	a3, 1616(sp)
	sw	a4, 1612(sp)
	sw	a5, 1608(sp)
	lw	a2, 548(sp)
	lw	a3, 544(sp)
	lw	a4, 540(sp)
	lw	a5, 536(sp)
	sw	a2, 1684(sp)
	sw	a3, 1680(sp)
	sw	a4, 1676(sp)
	sw	a5, 1672(sp)
	lw	a2, 564(sp)
	lw	a3, 560(sp)
	lw	a4, 556(sp)
	lw	a5, 552(sp)
	sw	a2, 1748(sp)
	sw	a3, 1744(sp)
	sw	a4, 1740(sp)
	sw	a5, 1736(sp)
	addi	a5, sp, 568
	lw	a2, 12(a5)
	lw	a3, 8(a5)
	lw	a4, 4(a5)
	lw	a5, 0(a5)
	sw	a2, 1572(sp)
	sw	a3, 1568(sp)
	sw	a4, 1564(sp)
	sw	a5, 1560(sp)
	lw	a2, 596(sp)
	lw	a3, 592(sp)
	lw	a4, 588(sp)
	lw	a5, 584(sp)
	sw	a2, 1636(sp)
	sw	a3, 1632(sp)
	sw	a4, 1628(sp)
	sw	a5, 1624(sp)
	lw	a2, 612(sp)
	lw	a3, 608(sp)
	lw	a4, 604(sp)
	lw	a5, 600(sp)
	sw	a2, 1700(sp)
	sw	a3, 1696(sp)
	sw	a4, 1692(sp)
	sw	a5, 1688(sp)
	lw	a2, 628(sp)
	lw	a3, 624(sp)
	lw	a4, 620(sp)
	lw	a5, 616(sp)
	sw	a2, 1764(sp)
	sw	a3, 1760(sp)
	sw	a4, 1756(sp)
	sw	a5, 1752(sp)
	addi	a5, sp, 632
	lw	a2, 12(a5)
	lw	a3, 8(a5)
	lw	a4, 4(a5)
	lw	a5, 0(a5)
	sw	a2, 1588(sp)
	sw	a3, 1584(sp)
	sw	a4, 1580(sp)
	sw	a5, 1576(sp)
	lw	a2, 660(sp)
	lw	a3, 656(sp)
	lw	a4, 652(sp)
	lw	a5, 648(sp)
	sw	a2, 1652(sp)
	sw	a3, 1648(sp)
	sw	a4, 1644(sp)
	sw	a5, 1640(sp)
	lw	a2, 676(sp)
	lw	a3, 672(sp)
	lw	a4, 668(sp)
	lw	a5, 664(sp)
	sw	a2, 1716(sp)
	sw	a3, 1712(sp)
	sw	a4, 1708(sp)
	sw	a5, 1704(sp)
	lw	a2, 692(sp)
	lw	a3, 688(sp)
	lw	a4, 684(sp)
	lw	a5, 680(sp)
	sw	a2, 1780(sp)
	sw	a3, 1776(sp)
	sw	a4, 1772(sp)
	sw	a5, 1768(sp)
	addi	a5, sp, 696
	lw	a2, 12(a5)
	lw	a3, 8(a5)
	lw	a4, 4(a5)
	lw	a5, 0(a5)
	sw	a2, 1796(sp)
	sw	a3, 1792(sp)
	sw	a4, 1788(sp)
	sw	a5, 1784(sp)
	lw	a2, 724(sp)
	lw	a3, 720(sp)
	lw	a4, 716(sp)
	lw	a5, 712(sp)
	sw	a2, 1860(sp)
	sw	a3, 1856(sp)
	sw	a4, 1852(sp)
	sw	a5, 1848(sp)
	lw	a2, 740(sp)
	lw	a3, 736(sp)
	lw	a4, 732(sp)
	lw	a5, 728(sp)
	sw	a2, 1924(sp)
	sw	a3, 1920(sp)
	sw	a4, 1916(sp)
	sw	a5, 1912(sp)
	lw	a2, 756(sp)
	lw	a3, 752(sp)
	lw	a4, 748(sp)
	lw	a5, 744(sp)
	sw	a2, 1988(sp)
	sw	a3, 1984(sp)
	sw	a4, 1980(sp)
	sw	a5, 1976(sp)
	addi	a5, sp, 760
	lw	a2, 12(a5)
	lw	a3, 8(a5)
	lw	a4, 4(a5)
	lw	a5, 0(a5)
	sw	a2, 1812(sp)
	sw	a3, 1808(sp)
	sw	a4, 1804(sp)
	sw	a5, 1800(sp)
	lw	a2, 788(sp)
	lw	a3, 784(sp)
	lw	a4, 780(sp)
	lw	a5, 776(sp)
	sw	a2, 1876(sp)
	sw	a3, 1872(sp)
	sw	a4, 1868(sp)
	sw	a5, 1864(sp)
	lw	a2, 804(sp)
	lw	a3, 800(sp)
	lw	a4, 796(sp)
	lw	a5, 792(sp)
	sw	a2, 1940(sp)
	sw	a3, 1936(sp)
	sw	a4, 1932(sp)
	sw	a5, 1928(sp)
	lw	a2, 820(sp)
	lw	a3, 816(sp)
	lw	a4, 812(sp)
	lw	a5, 808(sp)
	sw	a2, 2004(sp)
	sw	a3, 2000(sp)
	sw	a4, 1996(sp)
	sw	a5, 1992(sp)
	addi	a5, sp, 824
	lw	a2, 12(a5)
	lw	a3, 8(a5)
	lw	a4, 4(a5)
	lw	a5, 0(a5)
	sw	a2, 1828(sp)
	sw	a3, 1824(sp)
	sw	a4, 1820(sp)
	sw	a5, 1816(sp)
	lw	a2, 852(sp)
	lw	a3, 848(sp)
	lw	a4, 844(sp)
	lw	a5, 840(sp)
	sw	a2, 1892(sp)
	sw	a3, 1888(sp)
	sw	a4, 1884(sp)
	sw	a5, 1880(sp)
	lw	a2, 868(sp)
	lw	a3, 864(sp)
	lw	a4, 860(sp)
	lw	a5, 856(sp)
	sw	a2, 1956(sp)
	sw	a3, 1952(sp)
	sw	a4, 1948(sp)
	sw	a5, 1944(sp)
	lw	a2, 884(sp)
	lw	a3, 880(sp)
	lw	a4, 876(sp)
	lw	a5, 872(sp)
	sw	a2, 2020(sp)
	sw	a3, 2016(sp)
	sw	a4, 2012(sp)
	sw	a5, 2008(sp)
	addi	a5, sp, 888
	lw	a2, 12(a5)
	lw	a3, 8(a5)
	lw	a4, 4(a5)
	lw	a5, 0(a5)
	sw	a2, 1844(sp)
	sw	a3, 1840(sp)
	sw	a4, 1836(sp)
	sw	a5, 1832(sp)
	lw	a2, 916(sp)
	lw	a3, 912(sp)
	lw	a4, 908(sp)
	lw	a5, 904(sp)
	sw	a2, 1908(sp)
	sw	a3, 1904(sp)
	sw	a4, 1900(sp)
	sw	a5, 1896(sp)
	lw	a2, 932(sp)
	lw	a3, 928(sp)
	lw	a4, 924(sp)
	lw	a5, 920(sp)
	sw	a2, 1972(sp)
	sw	a3, 1968(sp)
	sw	a4, 1964(sp)
	sw	a5, 1960(sp)
	lw	a2, 948(sp)
	lw	a3, 944(sp)
	lw	a4, 940(sp)
	lw	a5, 936(sp)
	sw	a2, 2036(sp)
	sw	a3, 2032(sp)
	sw	a4, 2028(sp)
	sw	a5, 2024(sp)
	addi	a5, sp, 952
	lw	a2, 12(a5)
	lw	a3, 8(a5)
	lw	a4, 4(a5)
	lw	a5, 0(a5)
	lui	a6, 1
	add	a6, sp, a6
	sw	a2, -2044(a6)
	lui	a2, 1
	add	a2, sp, a2
	sw	a3, -2048(a2)
	sw	a4, 2044(sp)
	sw	a5, 2040(sp)
	lw	a2, 980(sp)
	lw	a3, 976(sp)
	lw	a4, 972(sp)
	lw	a5, 968(sp)
	addi	a6, sp, 2047
	addi	a6, a6, 69
	sw	a2, 0(a6)
	sw	a3, -4(a6)
	sw	a4, -8(a6)
	sw	a5, -12(a6)
	lw	a2, 996(sp)
	lw	a3, 992(sp)
	lw	a4, 988(sp)
	lw	a5, 984(sp)
	sw	a2, 64(a6)
	sw	a3, 60(a6)
	sw	a4, 56(a6)
	sw	a5, 52(a6)
	lw	a2, 1012(sp)
	lw	a3, 1008(sp)
	lw	a4, 1004(sp)
	lw	a5, 1000(sp)
	sw	a2, 128(a6)
	sw	a3, 124(a6)
	sw	a4, 120(a6)
	sw	a5, 116(a6)
	addi	a5, sp, 1016
	lw	a2, 12(a5)
	lw	a3, 8(a5)
	lw	a4, 4(a5)
	lw	a5, 0(a5)
	lui	a7, 1
	add	a7, sp, a7
	sw	a2, -2028(a7)
	lui	a2, 1
	add	a2, sp, a2
	sw	a3, -2032(a2)
	lui	a2, 1
	add	a2, sp, a2
	sw	a4, -2036(a2)
	lui	a2, 1
	add	a2, sp, a2
	sw	a5, -2040(a2)
	lw	a2, 1044(sp)
	lw	a3, 1040(sp)
	lw	a4, 1036(sp)
	lw	a5, 1032(sp)
	sw	a2, 16(a6)
	sw	a3, 12(a6)
	sw	a4, 8(a6)
	sw	a5, 4(a6)
	lw	a2, 1060(sp)
	lw	a3, 1056(sp)
	lw	a4, 1052(sp)
	lw	a5, 1048(sp)
	sw	a2, 80(a6)
	sw	a3, 76(a6)
	sw	a4, 72(a6)
	sw	a5, 68(a6)
	lw	a2, 1076(sp)
	lw	a3, 1072(sp)
	lw	a4, 1068(sp)
	lw	a5, 1064(sp)
	sw	a2, 144(a6)
	sw	a3, 140(a6)
	sw	a4, 136(a6)
	sw	a5, 132(a6)
	addi	a5, sp, 1080
	lw	a2, 12(a5)
	lw	a3, 8(a5)
	lw	a4, 4(a5)
	lw	a5, 0(a5)
	lui	a7, 1
	add	a7, sp, a7
	sw	a2, -2012(a7)
	lui	a2, 1
	add	a2, sp, a2
	sw	a3, -2016(a2)
	lui	a2, 1
	add	a2, sp, a2
	sw	a4, -2020(a2)
	lui	a2, 1
	add	a2, sp, a2
	sw	a5, -2024(a2)
	lw	a2, 1108(sp)
	lw	a3, 1104(sp)
	lw	a4, 1100(sp)
	lw	a5, 1096(sp)
	sw	a2, 32(a6)
	sw	a3, 28(a6)
	sw	a4, 24(a6)
	sw	a5, 20(a6)
	lw	a2, 1124(sp)
	lw	a3, 1120(sp)
	lw	a4, 1116(sp)
	lw	a5, 1112(sp)
	sw	a2, 96(a6)
	sw	a3, 92(a6)
	sw	a4, 88(a6)
	sw	a5, 84(a6)
	lw	a2, 1140(sp)
	lw	a3, 1136(sp)
	lw	a4, 1132(sp)
	lw	a5, 1128(sp)
	sw	a2, 160(a6)
	sw	a3, 156(a6)
	sw	a4, 152(a6)
	sw	a5, 148(a6)
	addi	a5, sp, 1144
	lw	a2, 12(a5)
	lw	a3, 8(a5)
	lw	a4, 4(a5)
	lw	a5, 0(a5)
	lui	a7, 1
	add	a7, sp, a7
	sw	a2, -1996(a7)
	lui	a2, 1
	add	a2, sp, a2
	sw	a3, -2000(a2)
	lui	a2, 1
	add	a2, sp, a2
	sw	a4, -2004(a2)
	lui	a2, 1
	add	a2, sp, a2
	sw	a5, -2008(a2)
	lw	a2, 1172(sp)
	lw	a3, 1168(sp)
	lw	a4, 1164(sp)
	lw	a5, 1160(sp)
	sw	a2, 48(a6)
	sw	a3, 44(a6)
	sw	a4, 40(a6)
	sw	a5, 36(a6)
	lw	a2, 1188(sp)
	lw	a3, 1184(sp)
	lw	a4, 1180(sp)
	lw	a5, 1176(sp)
	sw	a2, 112(a6)
	sw	a3, 108(a6)
	sw	a4, 104(a6)
	sw	a5, 100(a6)
	lw	a2, 1204(sp)
	lw	a3, 1200(sp)
	lw	a4, 1196(sp)
	lw	a5, 1192(sp)
	sw	a2, 176(a6)
	sw	a3, 172(a6)
	sw	a4, 168(a6)
	sw	a5, 164(a6)
	ld	t0, 32(sp)                      # 8-byte Folded Reload
	j	.LBB2_77
.LBB2_75:                               # %.preheader3
	ld	t1, 24(sp)                      # 8-byte Folded Reload
.LBB2_76:                               # =>This Inner Loop Header: Depth=1
	srli	a6, a3, 2
	andi	a7, a3, 3
	and	a6, a6, t1
	slli	a6, a6, 8
	slli	a7, a7, 4
	add	a7, a4, a7
	add	a6, a7, a6
	lw	a7, 0(a6)
	addi	a7, a7, 32
	sraiw	a7, a7, 6
	sw	a7, -32(a2)
	lw	a7, 4(a6)
	addi	a7, a7, 32
	sraiw	a7, a7, 6
	sw	a7, -28(a2)
	lw	a7, 8(a6)
	addi	a7, a7, 32
	sraiw	a7, a7, 6
	sw	a7, -24(a2)
	lw	a7, 12(a6)
	addi	a7, a7, 32
	sraiw	a7, a7, 6
	sw	a7, -20(a2)
	lw	a7, 64(a6)
	addi	a7, a7, 32
	sraiw	a7, a7, 6
	sw	a7, -16(a2)
	lw	a7, 68(a6)
	addi	a7, a7, 32
	sraiw	a7, a7, 6
	sw	a7, -12(a2)
	lw	a7, 72(a6)
	addi	a7, a7, 32
	sraiw	a7, a7, 6
	sw	a7, -8(a2)
	lw	a7, 76(a6)
	addi	a7, a7, 32
	sraiw	a7, a7, 6
	sw	a7, -4(a2)
	lw	a7, 128(a6)
	addi	a7, a7, 32
	sraiw	a7, a7, 6
	sw	a7, 0(a2)
	lw	a7, 132(a6)
	addi	a7, a7, 32
	sraiw	a7, a7, 6
	sw	a7, 4(a2)
	lw	a7, 136(a6)
	addi	a7, a7, 32
	sraiw	a7, a7, 6
	sw	a7, 8(a2)
	lw	a7, 140(a6)
	addi	a7, a7, 32
	sraiw	a7, a7, 6
	sw	a7, 12(a2)
	lw	a7, 192(a6)
	addi	a7, a7, 32
	sraiw	a7, a7, 6
	sw	a7, 16(a2)
	lw	a7, 196(a6)
	addi	a7, a7, 32
	sraiw	a7, a7, 6
	sw	a7, 20(a2)
	lw	a7, 200(a6)
	addi	a7, a7, 32
	sraiw	a7, a7, 6
	sw	a7, 24(a2)
	lw	a6, 204(a6)
	addi	a6, a6, 32
	sraiw	a6, a6, 6
	sw	a6, 28(a2)
	addi	a3, a3, 1
	addi	a2, a2, 64
	bne	a3, a5, .LBB2_76
.LBB2_77:
	lw	a1, 0(a1)
	beqz	a1, .LBB2_79
.LBB2_78:
	ld	a0, 144(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 368
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
.LBB2_79:
	slli	a4, t0, 9
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	beqz	x14, .LBB2_114
# %bb.80:
	lui	a1, %hi(enc_picture)
	ld	a2, %lo(enc_picture)(a1)
	li	a1, 0
	lui	a3, 2
	add	a2, a2, a3
	ld	a2, -1768(a2)
	addi	a3, sp, 1304
	ld	a5, 16(sp)                      # 8-byte Folded Reload
	add	a4, a5, a4
	add	a4, a4, a0
	addi	a4, a4, 16
	lui	a5, %hi(lrec)
	li	a6, 3
	li	a7, -16
	li	t0, 16
	j	.LBB2_83
.LBB2_81:                               #   in Loop: Header=BB2_83 Depth=1
	lh	t2, -32(a3)
	lh	t3, -16(a4)
	lw	t4, 152(a0)
	add	t2, t3, t2
	slli	t4, t4, 1
	add	t1, t1, t4
	sh	t2, 0(t1)
	lh	t2, -28(a3)
	lh	t3, -14(a4)
	add	t2, t3, t2
	sh	t2, 2(t1)
	lh	t2, -24(a3)
	lh	t3, -12(a4)
	add	t2, t3, t2
	sh	t2, 4(t1)
	lh	t2, -20(a3)
	lh	t3, -10(a4)
	add	t2, t3, t2
	sh	t2, 6(t1)
	lh	t2, -16(a3)
	lh	t3, -8(a4)
	add	t2, t3, t2
	sh	t2, 8(t1)
	lh	t2, -12(a3)
	lh	t3, -6(a4)
	add	t2, t3, t2
	sh	t2, 10(t1)
	lh	t2, -8(a3)
	lh	t3, -4(a4)
	add	t2, t3, t2
	sh	t2, 12(t1)
	lh	t2, -4(a3)
	lh	t3, -2(a4)
	add	t2, t3, t2
	sh	t2, 14(t1)
	lh	t2, 0(a3)
	lh	t3, 0(a4)
	add	t2, t3, t2
	sh	t2, 16(t1)
	lh	t2, 4(a3)
	lh	t3, 2(a4)
	add	t2, t3, t2
	sh	t2, 18(t1)
	lh	t2, 8(a3)
	lh	t3, 4(a4)
	add	t2, t3, t2
	sh	t2, 20(t1)
	lh	t2, 12(a3)
	lh	t3, 6(a4)
	add	t2, t3, t2
	sh	t2, 22(t1)
	lh	t2, 16(a3)
	lh	t3, 8(a4)
	add	t2, t3, t2
	sh	t2, 24(t1)
	lh	t2, 20(a3)
	lh	t3, 10(a4)
	add	t2, t3, t2
	sh	t2, 26(t1)
	lh	t2, 24(a3)
	lh	t3, 12(a4)
	add	t2, t3, t2
	sh	t2, 28(t1)
	lh	t2, 28(a3)
	lh	t3, 14(a4)
	add	t2, t3, t2
	sh	t2, 30(t1)
.LBB2_82:                               #   in Loop: Header=BB2_83 Depth=1
	addi	a1, a1, 1
	addi	a3, a3, 64
	addi	a4, a4, 32
	beq	a1, t0, .LBB2_78
.LBB2_83:                               # =>This Inner Loop Header: Depth=1
	lw	t1, 156(a0)
	add	t1, a1, t1
	slli	t2, t1, 3
	add	t1, a2, t2
	lw	t3, 24(a0)
	ld	t1, 0(t1)
	bne	t3, a6, .LBB2_81
# %bb.84:                               #   in Loop: Header=BB2_83 Depth=1
	ld	t3, %lo(lrec)(a5)
	lh	t4, -32(a3)
	lh	t5, -16(a4)
	lw	t6, 152(a0)
	add	t2, t3, t2
	add	t4, t5, t4
	slli	t3, t6, 1
	ld	t5, 0(t2)
	add	t3, t1, t3
	sh	t4, 0(t3)
	slli	t6, t6, 2
	add	t5, t5, t6
	sw	a7, 0(t5)
	lh	t5, -28(a3)
	lh	t6, -14(a4)
	lw	t3, 152(a0)
	lw	t4, 24(a0)
	add	t6, t6, t5
	addiw	t5, t3, 1
	regsw_c	x20, 0x0(x18)		# 100101010000000000000
	slli	x1, t5, 1
	add	x1, t1, x1
	sh	t6, 0(x1)
	bne	t4, a6, .LBB2_86
# %bb.85:                               #   in Loop: Header=BB2_83 Depth=1
	ld	t3, 0(t2)
	slli	t5, t5, 2
	add	t3, t3, t5
	sw	a7, 0(t3)
	lw	t3, 152(a0)
	lw	t4, 24(a0)
.LBB2_86:                               #   in Loop: Header=BB2_83 Depth=1
	lh	t5, -24(a3)
	lh	t6, -12(a4)
	add	t6, t6, t5
	addiw	t5, t3, 2
	regsw_c	x20, 0x0(x18)		# 100101010000000000000
	slli	x1, t5, 1
	add	x1, t1, x1
	sh	t6, 0(x1)
	bne	t4, a6, .LBB2_88
# %bb.87:                               #   in Loop: Header=BB2_83 Depth=1
	ld	t3, 0(t2)
	slli	t5, t5, 2
	add	t3, t3, t5
	sw	a7, 0(t3)
	lw	t3, 152(a0)
	lw	t4, 24(a0)
.LBB2_88:                               #   in Loop: Header=BB2_83 Depth=1
	lh	t5, -20(a3)
	lh	t6, -10(a4)
	add	t6, t6, t5
	addiw	t5, t3, 3
	regsw_c	x20, 0x0(x18)		# 100101010000000000000
	slli	x1, t5, 1
	add	x1, t1, x1
	sh	t6, 0(x1)
	bne	t4, a6, .LBB2_90
# %bb.89:                               #   in Loop: Header=BB2_83 Depth=1
	ld	t3, 0(t2)
	slli	t5, t5, 2
	add	t3, t3, t5
	sw	a7, 0(t3)
	lw	t3, 152(a0)
	lw	t4, 24(a0)
.LBB2_90:                               #   in Loop: Header=BB2_83 Depth=1
	lh	t5, -16(a3)
	lh	t6, -8(a4)
	add	t6, t6, t5
	addiw	t5, t3, 4
	regsw_c	x20, 0x0(x18)		# 100101010000000000000
	slli	x1, t5, 1
	add	x1, t1, x1
	sh	t6, 0(x1)
	bne	t4, a6, .LBB2_92
# %bb.91:                               #   in Loop: Header=BB2_83 Depth=1
	ld	t3, 0(t2)
	slli	t5, t5, 2
	add	t3, t3, t5
	sw	a7, 0(t3)
	lw	t3, 152(a0)
	lw	t4, 24(a0)
.LBB2_92:                               #   in Loop: Header=BB2_83 Depth=1
	lh	t5, -12(a3)
	lh	t6, -6(a4)
	add	t6, t6, t5
	addiw	t5, t3, 5
	regsw_c	x20, 0x0(x18)		# 100101010000000000000
	slli	x1, t5, 1
	add	x1, t1, x1
	sh	t6, 0(x1)
	bne	t4, a6, .LBB2_94
# %bb.93:                               #   in Loop: Header=BB2_83 Depth=1
	ld	t3, 0(t2)
	slli	t5, t5, 2
	add	t3, t3, t5
	sw	a7, 0(t3)
	lw	t3, 152(a0)
	lw	t4, 24(a0)
.LBB2_94:                               #   in Loop: Header=BB2_83 Depth=1
	lh	t5, -8(a3)
	lh	t6, -4(a4)
	add	t6, t6, t5
	addiw	t5, t3, 6
	regsw_c	x20, 0x0(x18)		# 100101010000000000000
	slli	x1, t5, 1
	add	x1, t1, x1
	sh	t6, 0(x1)
	bne	t4, a6, .LBB2_96
# %bb.95:                               #   in Loop: Header=BB2_83 Depth=1
	ld	t3, 0(t2)
	slli	t5, t5, 2
	add	t3, t3, t5
	sw	a7, 0(t3)
	lw	t3, 152(a0)
	lw	t4, 24(a0)
.LBB2_96:                               #   in Loop: Header=BB2_83 Depth=1
	lh	t5, -4(a3)
	lh	t6, -2(a4)
	add	t6, t6, t5
	addiw	t5, t3, 7
	regsw_c	x20, 0x0(x18)		# 100101010000000000000
	slli	x1, t5, 1
	add	x1, t1, x1
	sh	t6, 0(x1)
	bne	t4, a6, .LBB2_98
# %bb.97:                               #   in Loop: Header=BB2_83 Depth=1
	ld	t3, 0(t2)
	slli	t5, t5, 2
	add	t3, t3, t5
	sw	a7, 0(t3)
	lw	t3, 152(a0)
	lw	t4, 24(a0)
.LBB2_98:                               #   in Loop: Header=BB2_83 Depth=1
	lh	t5, 0(a3)
	lh	t6, 0(a4)
	add	t6, t6, t5
	addiw	t5, t3, 8
	regsw_c	x20, 0x0(x18)		# 100101010000000000000
	slli	x1, t5, 1
	add	x1, t1, x1
	sh	t6, 0(x1)
	bne	t4, a6, .LBB2_100
# %bb.99:                               #   in Loop: Header=BB2_83 Depth=1
	ld	t3, 0(t2)
	slli	t5, t5, 2
	add	t3, t3, t5
	sw	a7, 0(t3)
	lw	t3, 152(a0)
	lw	t4, 24(a0)
.LBB2_100:                              #   in Loop: Header=BB2_83 Depth=1
	lh	t5, 4(a3)
	lh	t6, 2(a4)
	add	t6, t6, t5
	addiw	t5, t3, 9
	regsw_c	x20, 0x0(x18)		# 100101010000000000000
	slli	x1, t5, 1
	add	x1, t1, x1
	sh	t6, 0(x1)
	bne	t4, a6, .LBB2_102
# %bb.101:                              #   in Loop: Header=BB2_83 Depth=1
	ld	t3, 0(t2)
	slli	t5, t5, 2
	add	t3, t3, t5
	sw	a7, 0(t3)
	lw	t3, 152(a0)
	lw	t4, 24(a0)
.LBB2_102:                              #   in Loop: Header=BB2_83 Depth=1
	lh	t5, 8(a3)
	lh	t6, 4(a4)
	add	t6, t6, t5
	addiw	t5, t3, 10
	regsw_c	x20, 0x0(x18)		# 100101010000000000000
	slli	x1, t5, 1
	add	x1, t1, x1
	sh	t6, 0(x1)
	bne	t4, a6, .LBB2_104
# %bb.103:                              #   in Loop: Header=BB2_83 Depth=1
	ld	t3, 0(t2)
	slli	t5, t5, 2
	add	t3, t3, t5
	sw	a7, 0(t3)
	lw	t3, 152(a0)
	lw	t4, 24(a0)
.LBB2_104:                              #   in Loop: Header=BB2_83 Depth=1
	lh	t5, 12(a3)
	lh	t6, 6(a4)
	add	t6, t6, t5
	addiw	t5, t3, 11
	regsw_c	x20, 0x0(x18)		# 100101010000000000000
	slli	x1, t5, 1
	add	x1, t1, x1
	sh	t6, 0(x1)
	bne	t4, a6, .LBB2_106
# %bb.105:                              #   in Loop: Header=BB2_83 Depth=1
	ld	t3, 0(t2)
	slli	t5, t5, 2
	add	t3, t3, t5
	sw	a7, 0(t3)
	lw	t3, 152(a0)
	lw	t4, 24(a0)
.LBB2_106:                              #   in Loop: Header=BB2_83 Depth=1
	lh	t5, 16(a3)
	lh	t6, 8(a4)
	add	t6, t6, t5
	addiw	t5, t3, 12
	regsw_c	x20, 0x0(x18)		# 100101010000000000000
	slli	x1, t5, 1
	add	x1, t1, x1
	sh	t6, 0(x1)
	bne	t4, a6, .LBB2_108
# %bb.107:                              #   in Loop: Header=BB2_83 Depth=1
	ld	t3, 0(t2)
	slli	t5, t5, 2
	add	t3, t3, t5
	sw	a7, 0(t3)
	lw	t3, 152(a0)
	lw	t4, 24(a0)
.LBB2_108:                              #   in Loop: Header=BB2_83 Depth=1
	lh	t5, 20(a3)
	lh	t6, 10(a4)
	add	t6, t6, t5
	addiw	t5, t3, 13
	regsw_c	x20, 0x0(x18)		# 100101010000000000000
	slli	x1, t5, 1
	add	x1, t1, x1
	sh	t6, 0(x1)
	bne	t4, a6, .LBB2_110
# %bb.109:                              #   in Loop: Header=BB2_83 Depth=1
	ld	t3, 0(t2)
	slli	t5, t5, 2
	add	t3, t3, t5
	sw	a7, 0(t3)
	lw	t3, 152(a0)
	lw	t4, 24(a0)
.LBB2_110:                              #   in Loop: Header=BB2_83 Depth=1
	lh	t5, 24(a3)
	lh	t6, 12(a4)
	add	t6, t6, t5
	addiw	t5, t3, 14
	regsw_c	x20, 0x0(x18)		# 100101010000000000000
	slli	x1, t5, 1
	add	x1, t1, x1
	sh	t6, 0(x1)
	bne	t4, a6, .LBB2_112
# %bb.111:                              #   in Loop: Header=BB2_83 Depth=1
	ld	t3, 0(t2)
	slli	t5, t5, 2
	add	t3, t3, t5
	sw	a7, 0(t3)
	lw	t3, 152(a0)
	lw	t4, 24(a0)
.LBB2_112:                              #   in Loop: Header=BB2_83 Depth=1
	lh	t5, 28(a3)
	lh	t6, 14(a4)
	add	t5, t6, t5
	addiw	t3, t3, 15
	slli	t6, t3, 1
	add	t1, t1, t6
	sh	t5, 0(t1)
	bne	t4, a6, .LBB2_82
# %bb.113:                              #   in Loop: Header=BB2_83 Depth=1
	ld	t1, 0(t2)
	slli	t3, t3, 2
	add	t1, t1, t3
	sw	a7, 0(t1)
	j	.LBB2_82
.LBB2_114:
	li	s0, 0
	lui	s1, %hi(img)
	ld	a1, %lo(img)(s1)
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	add	s2, a4, a0
	addi	s3, sp, 1272
	lui	s4, %hi(enc_picture)
	lui	s5, 2
	li	s6, 3
	lui	s7, %hi(lrec)
	li	s8, -16
	li	s9, 16
	j	.LBB2_116
.LBB2_115:                              #   in Loop: Header=BB2_116 Depth=1
	addi	s0, s0, 1
	ld	s2, 176(sp)                     # 8-byte Folded Reload
	addi	s2, s2, 32
	ld	s3, 168(sp)                     # 8-byte Folded Reload
	addi	s3, s3, 64
	beq	s0, s9, .LBB2_78
.LBB2_116:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_118 Depth 2
	lw	a0, 156(a1)
	li	s10, 0
	addw	a0, a0, s0
	slli	s11, a0, 3
	sd	s3, 168(sp)                     # 8-byte Folded Spill
	sd	s2, 176(sp)                     # 8-byte Folded Spill
	j	.LBB2_118
.LBB2_117:                              #   in Loop: Header=BB2_118 Depth=2
	addi	s10, s10, 1
	addi	s2, s2, 2
	addi	s3, s3, 4
	beq	s10, s9, .LBB2_115
.LBB2_118:                              #   Parent Loop BB2_116 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	a1, a1, s2
	lhu	a0, 0(a1)
	lw	a1, 0(s3)
	slli	a0, a0, 6
	add	a0, a1, a0
	addi	a0, a0, 32
	srai	a0, a0, 6
	call	clip1a
	ld	a1, %lo(enc_picture)(s4)
	add	a2, a1, s5
	ld	a1, %lo(img)(s1)
	ld	a2, -1768(a2)
	lw	a3, 152(a1)
	add	a2, a2, s11
	ld	a4, 0(a2)
	lw	a5, 24(a1)
	add	a2, s10, a3
	slli	a3, a2, 1
	add	a3, a4, a3
	sh	a0, 0(a3)
	bne	a5, s6, .LBB2_117
# %bb.119:                              #   in Loop: Header=BB2_118 Depth=2
	ld	a0, %lo(lrec)(s7)
	add	a0, a0, s11
	ld	a0, 0(a0)
	slli	a2, a2, 2
	add	a0, a0, a2
	sw	s8, 0(a0)
	j	.LBB2_117
.Lfunc_end2:
	.size	dct_luma_16x16, .Lfunc_end2-dct_luma_16x16
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	dct_luma                        # -- Begin function dct_luma
	.p2align	2
	.type	dct_luma,@function
dct_luma:                               # @dct_luma
# %bb.0:
	addi	sp, sp, -288
	sd	ra, 280(sp)                     # 8-byte Folded Spill
	sd	s0, 272(sp)                     # 8-byte Folded Spill
	sd	s1, 264(sp)                     # 8-byte Folded Spill
	sd	s2, 256(sp)                     # 8-byte Folded Spill
	sd	s3, 248(sp)                     # 8-byte Folded Spill
	sd	s4, 240(sp)                     # 8-byte Folded Spill
	sd	s5, 232(sp)                     # 8-byte Folded Spill
	sd	s6, 224(sp)                     # 8-byte Folded Spill
	sd	s7, 216(sp)                     # 8-byte Folded Spill
	sd	s8, 208(sp)                     # 8-byte Folded Spill
	sd	s9, 200(sp)                     # 8-byte Folded Spill
	sd	s10, 192(sp)                    # 8-byte Folded Spill
	sd	s11, 184(sp)                    # 8-byte Folded Spill
	sd	a2, 80(sp)                      # 8-byte Folded Spill
	mv	a4, a0
	srli	a0, a1, 2
	andi	a0, a0, -2
	srli	a2, a4, 3
	add	a2, a0, a2
	srli	a0, a1, 1
	andi	a0, a0, 2
	sd	a4, 64(sp)                      # 8-byte Folded Spill
	slli	a4, a4, 61
	srli	a5, a4, 63
	lui	a4, %hi(img)
	ld	a4, %lo(img)(a4)
	or	a5, a0, a5
	lui	a0, 22
	addiw	t0, a0, 108
	add	t0, a4, t0
	lui	a0, 3
	addiw	a0, a0, 824
	add	a0, a4, a0
	ld	a6, 1024(a0)
	lui	a7, 8
	add	a7, a4, a7
	slli	a2, a2, 3
	add	a2, a6, a2
	ld	a2, 0(a2)
	slli	a5, a5, 3
	ld	a6, -1192(a7)
	lw	a4, 12(a4)
	lw	a7, 44(t0)
	add	a2, a2, a5
	li	a5, 528
	mul	a4, a4, a5
	add	a4, a6, a4
	beqz	a7, .LBB3_2
.LBB3_1:
	lui	a5, %hi(FIELD_SCAN)
	addi	a5, a5, %lo(FIELD_SCAN)
	j	.LBB3_5
.LBB3_2:
	lw	a5, 0(t0)
	beqz	a5, .LBB3_4
# %bb.3:
	lw	a5, 424(a4)
	bnez	a5, .LBB3_1
.LBB3_4:
	lui	a5, %hi(SNGL_SCAN)
	addi	a5, a5, %lo(SNGL_SCAN)
.LBB3_5:
	sd	a5, 112(sp)                     # 8-byte Folded Spill
	lw	a5, 272(t0)
	lw	a4, 12(a4)
	ld	a2, 0(a2)
	negw	a6, a5
	li	s4, 0
	bne	a4, a6, .LBB3_7
# %bb.6:
	lw	a6, 332(t0)
	addi	a6, a6, -1
	seqz	s4, a6
.LBB3_7:
	sd	a1, 56(sp)                      # 8-byte Folded Spill
	ld	a1, 0(a2)
	sd	a1, 88(sp)                      # 8-byte Folded Spill
	ld	a1, 8(a2)
	sd	a1, 72(sp)                      # 8-byte Folded Spill
	addw	a4, a5, a4
	lui	a1, 174763
	addiw	a1, a1, -1365
	mul	a1, a4, a1
	srli	a2, a1, 63
	srli	a1, a1, 32
	lui	a5, %hi(LevelScale4x4Luma)
	ld	a5, %lo(LevelScale4x4Luma)(a5)
	addw	a7, a1, a2
	li	a1, 6
	slli	a2, a3, 3
	add	a5, a5, a2
	ld	a5, 0(a5)
	mul	a1, a7, a1
	subw	a4, a4, a1
	slli	a4, a4, 3
	add	a5, a5, a4
	lui	a1, %hi(LevelOffset4x4Luma)
	ld	a1, %lo(LevelOffset4x4Luma)(a1)
	lui	a6, %hi(InvLevelScale4x4Luma)
	ld	a6, %lo(InvLevelScale4x4Luma)(a6)
	ld	a5, 0(a5)
	sd	a5, 96(sp)                      # 8-byte Folded Spill
	add	a1, a1, a2
	ld	a1, 0(a1)
	add	a2, a6, a2
	ld	a2, 0(a2)
	slli	a5, a7, 3
	add	a1, a1, a5
	ld	a1, 0(a1)
	sd	a1, 40(sp)                      # 8-byte Folded Spill
	add	a2, a2, a4
	ld	a1, 0(a2)
	sd	a1, 24(sp)                      # 8-byte Folded Spill
	sd	a7, 32(sp)                      # 8-byte Folded Spill
	addi	a7, a7, 15
	sd	a7, 104(sp)                     # 8-byte Folded Spill
	bnez	s4, .LBB3_9
# %bb.8:
	lw	a1, 0(a0)
	lw	a2, 12(a0)
	lw	a4, 4(a0)
	lw	a5, 8(a0)
	add	a6, a2, a1
	add	a7, a5, a4
	subw	a4, a4, a5
	subw	a1, a1, a2
	add	a2, a7, a6
	subw	a5, a6, a7
	sw	a5, 128(sp)
	slli	a5, a4, 1
	subw	a5, a1, a5
	sw	a5, 132(sp)
	lw	a5, 64(a0)
	lw	a6, 76(a0)
	lw	a7, 68(a0)
	lw	t0, 72(a0)
	slli	a1, a1, 1
	add	a1, a4, a1
	add	a4, a6, a5
	add	t1, t0, a7
	subw	a7, a7, t0
	subw	a5, a5, a6
	add	a6, t1, a4
	subw	a4, a4, t1
	slli	t0, a5, 1
	add	t0, a7, t0
	lw	t1, 128(a0)
	lw	t2, 140(a0)
	lw	t3, 132(a0)
	lw	t4, 136(a0)
	slli	a7, a7, 1
	subw	a5, a5, a7
	add	a7, t2, t1
	add	t5, t4, t3
	subw	t3, t3, t4
	subw	t1, t1, t2
	add	t2, t5, a7
	subw	a7, a7, t5
	slli	t4, t1, 1
	add	t4, t3, t4
	lw	t5, 192(a0)
	lw	t6, 204(a0)
	regsw_c	x0, 0x2a(x16)		# 100000000000000101010
	lw	x1, 196(a0)
	lw	a0, 200(a0)
	slli	t3, t3, 1
	subw	t1, t1, t3
	add	t3, t6, t5
	add	x2, a0, x1
	subw	a0, x1, a0
	subw	t5, t5, t6
	regsw_c	x25, 0x200(x8)		# 010001100101000000000
	add	t6, x2, t3
	subw	t3, t3, x2
	slli	x1, t5, 1
	add	x1, a0, x1
	slli	a0, a0, 1
	subw	t5, t5, a0
	add	a0, t6, a2
	regsw_c	x0, 0x408(x16)		# 100000000010000001000
	add	x2, t2, a6
	subw	a6, a6, t2
	subw	a2, a2, t6
	add	t2, x2, a0
	sw	t2, 120(sp)
	subw	a0, a0, x2
	sw	a0, 152(sp)
	slli	a0, a2, 1
	add	a0, a6, a0
	sw	a0, 136(sp)
	slli	a6, a6, 1
	subw	a0, a2, a6
	sw	a0, 168(sp)
	regsw_c	x0, 0x200(x8)		# 010000000001000000000
	add	a0, x1, a1
	add	a2, t4, t0
	subw	a6, t0, t4
	subw	a1, a1, x1
	add	t0, a2, a0
	sw	t0, 124(sp)
	subw	a0, a0, a2
	sw	a0, 156(sp)
	slli	a0, a1, 1
	add	a0, a6, a0
	sw	a0, 140(sp)
	lw	a0, 128(sp)
	slli	a6, a6, 1
	subw	a1, a1, a6
	sw	a1, 172(sp)
	add	a1, t3, a0
	add	a2, a7, a4
	subw	a4, a4, a7
	subw	a0, a0, t3
	add	a6, a2, a1
	sw	a6, 128(sp)
	subw	a1, a1, a2
	sw	a1, 160(sp)
	slli	a1, a0, 1
	add	a1, a4, a1
	sw	a1, 144(sp)
	lw	a1, 132(sp)
	slli	a4, a4, 1
	subw	a0, a0, a4
	sw	a0, 176(sp)
	add	a0, t5, a1
	add	a2, t1, a5
	subw	a4, a5, t1
	subw	a1, a1, t5
	add	a5, a2, a0
	sw	a5, 132(sp)
	subw	a0, a0, a2
	sw	a0, 164(sp)
	slli	a0, a1, 1
	add	a0, a4, a0
	sw	a0, 148(sp)
	slli	a4, a4, 1
	subw	a1, a1, a4
	sw	a1, 180(sp)
.LBB3_9:
	li	s11, 0
	li	s0, 0
	li	a0, 0
	li	a1, 1
	ld	a2, 104(sp)                     # 8-byte Folded Reload
	sllw	a1, a1, a2
	sd	a1, 8(sp)                       # 8-byte Folded Spill
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	addi	a1, a1, 16
	sd	a1, 0(sp)                       # 8-byte Folded Spill
	li	s6, -1
	lui	a2, 3
	addi	s1, sp, 120
	lui	a1, 244
	addi	s9, a1, 575
	addiw	a1, a2, 824
	sd	a1, 16(sp)                      # 8-byte Folded Spill
	slli	a3, a3, 10
	sd	a3, 48(sp)                      # 8-byte Folded Spill
	j	.LBB3_12
.LBB3_10:                               #   in Loop: Header=BB3_12 Depth=1
	slli	s5, s5, 3
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	add	s5, a1, s5
	ld	a1, 0(s5)
	slli	s8, s8, 2
	add	a1, a1, s8
	lw	a1, 0(a1)
	mul	a0, a1, a0
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	sllw	a0, a0, a1
	addi	a0, a0, 8
	sraiw	a1, a0, 4
	li	a0, 1
	li	s6, -1
.LBB3_11:                               #   in Loop: Header=BB3_12 Depth=1
	addi	s11, s11, 1
	add	s10, s1, s10
	add	s2, s10, s2
	sw	a1, 0(s2)
	li	a1, 16
	beq	s11, a1, .LBB3_32
.LBB3_12:                               # =>This Inner Loop Header: Depth=1
	slli	a1, s11, 1
	ld	a2, 112(sp)                     # 8-byte Folded Reload
	add	a1, a2, a1
	lbu	s5, 0(a1)
	lbu	s8, 1(a1)
	beqz	s4, .LBB3_14
# %bb.13:                               #   in Loop: Header=BB3_12 Depth=1
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	slli	a2, s8, 6
	add	a2, a1, a2
	slli	a3, s5, 2
	lui	a4, 3
	add	a3, a3, a4
	add	a2, a2, a3
	lw	a2, 824(a2)
	sraiw	a3, a2, 31
	xor	a2, a2, a3
	subw	s3, a2, a3
	j	.LBB3_15
.LBB3_14:                               #   in Loop: Header=BB3_12 Depth=1
	slli	a1, s8, 4
	add	a1, s1, a1
	slli	a2, s5, 2
	add	a1, a1, a2
	lw	a1, 0(a1)
	sraiw	a2, a1, 31
	xor	a1, a1, a2
	slli	a3, s5, 3
	ld	a4, 96(sp)                      # 8-byte Folded Reload
	add	a4, a4, a3
	ld	a4, 0(a4)
	ld	a5, 40(sp)                      # 8-byte Folded Reload
	add	a3, a5, a3
	ld	a3, 0(a3)
	slli	a5, s8, 2
	add	a4, a4, a5
	lw	a4, 0(a4)
	add	a3, a3, a5
	lw	a3, 0(a3)
	subw	a2, a1, a2
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	mul	a2, a4, a2
	add	a2, a3, a2
	ld	a3, 104(sp)                     # 8-byte Folded Reload
	sraw	s3, a2, a3
.LBB3_15:                               #   in Loop: Header=BB3_12 Depth=1
	lui	a2, 22
	add	a2, a1, a2
	lw	a2, 100(a2)
	addiw	s6, s6, 1
	slli	s10, s8, 4
	slli	s2, s5, 2
	beqz	a2, .LBB3_18
# %bb.16:                               #   in Loop: Header=BB3_12 Depth=1
	seqz	a2, s3
	or	a5, s4, a2
	ld	a2, 48(sp)                      # 8-byte Folded Reload
	add	a2, a1, a2
	ld	a3, 56(sp)                      # 8-byte Folded Reload
	addw	a4, s8, a3
	ld	a3, 64(sp)                      # 8-byte Folded Reload
	addw	a3, s5, a3
	beqz	a5, .LBB3_21
# %bb.17:                               #   in Loop: Header=BB3_12 Depth=1
	slli	a4, a4, 6
	add	a2, a2, a4
	slli	a3, a3, 2
	lui	a4, 3
	add	a3, a3, a4
	add	a2, a2, a3
	sw	zero, 1864(a2)
.LBB3_18:                               #   in Loop: Header=BB3_12 Depth=1
	bnez	s3, .LBB3_22
# %bb.19:                               #   in Loop: Header=BB3_12 Depth=1
	bnez	s4, .LBB3_29
# %bb.20:                               #   in Loop: Header=BB3_12 Depth=1
	li	a1, 0
	j	.LBB3_11
.LBB3_21:                               #   in Loop: Header=BB3_12 Depth=1
	lui	a0, %hi(AdaptRndWeight)
	lw	a0, %lo(AdaptRndWeight)(a0)
	add	a5, s1, s10
	slli	a6, s5, 3
	ld	a7, 96(sp)                      # 8-byte Folded Reload
	add	a6, a7, a6
	ld	a6, 0(a6)
	add	a5, a5, s2
	lw	a5, 0(a5)
	slli	a7, s8, 2
	add	a6, a6, a7
	lw	a6, 0(a6)
	sraiw	a7, a5, 31
	xor	a5, a5, a7
	subw	a5, a5, a7
	mul	a5, a6, a5
	ld	a6, 104(sp)                     # 8-byte Folded Reload
	sllw	a6, s3, a6
	subw	a5, a5, a6
	mul	a0, a5, a0
	ld	a5, 8(sp)                       # 8-byte Folded Reload
	add	a0, a0, a5
	ld	a5, 0(sp)                       # 8-byte Folded Reload
	sraw	a0, a0, a5
	slli	a4, a4, 6
	add	a2, a2, a4
	slli	a3, a3, 2
	lui	a4, 3
	add	a3, a3, a4
	add	a2, a2, a3
	sw	a0, 1864(a2)
.LBB3_22:                               #   in Loop: Header=BB3_12 Depth=1
	slti	a0, s3, 2
	xori	a0, a0, 1
	or	a2, s4, a0
	mv	a0, s9
	bnez	a2, .LBB3_24
# %bb.23:                               #   in Loop: Header=BB3_12 Depth=1
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1093(a0)
	slli	a0, a0, 4
	lui	a2, %hi(COEFF_COST)
	addi	a2, a2, %lo(COEFF_COST)
	add	a2, a2, s6
	add	a0, a2, a0
	lbu	a0, 0(a0)
.LBB3_24:                               #   in Loop: Header=BB3_12 Depth=1
	ld	a3, 80(sp)                      # 8-byte Folded Reload
	lw	a2, 0(a3)
	add	a0, a2, a0
	sw	a0, 0(a3)
	add	s7, s1, s10
	add	s7, s7, s2
	bnez	s4, .LBB3_26
# %bb.25:                               #   in Loop: Header=BB3_12 Depth=1
	mv	a0, s7
	j	.LBB3_27
.LBB3_26:                               #   in Loop: Header=BB3_12 Depth=1
	slli	a0, s8, 6
	add	a0, a1, a0
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	add	a1, s2, a1
	add	a0, a0, a1
.LBB3_27:                               #   in Loop: Header=BB3_12 Depth=1
	lw	a1, 0(a0)
	mv	a0, s3
	call	sign
	slli	a1, s0, 2
	ld	a2, 88(sp)                      # 8-byte Folded Reload
	add	a2, a2, a1
	sw	a0, 0(a2)
	ld	a0, 72(sp)                      # 8-byte Folded Reload
	add	a1, a0, a1
	sw	s6, 0(a1)
	lw	a1, 0(s7)
	addiw	s0, s0, 1
	mv	a0, s3
	call	sign
	beqz	s4, .LBB3_10
# %bb.28:                               #   in Loop: Header=BB3_12 Depth=1
	li	a0, 1
	li	s6, -1
.LBB3_29:                               #   in Loop: Header=BB3_12 Depth=1
	addi	s11, s11, 1
	li	a1, 16
	bne	s11, a1, .LBB3_12
# %bb.30:
	lui	a1, %hi(img)
	ld	a2, %lo(img)(a1)
	slli	s0, s0, 2
	ld	a1, 88(sp)                      # 8-byte Folded Reload
	add	s0, a1, s0
	sw	zero, 0(s0)
	beqz	s4, .LBB3_33
# %bb.31:
	lui	a1, 22
	add	a1, a2, a1
	lw	a1, 460(a1)
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	ld	x3, 56(sp)                      # 8-byte Folded Reload
	bnez	a1, .LBB3_77
	j	.LBB3_75
.LBB3_32:
	lui	a1, %hi(img)
	ld	a2, %lo(img)(a1)
	slli	s0, s0, 2
	ld	a1, 88(sp)                      # 8-byte Folded Reload
	add	s0, a1, s0
	sw	zero, 0(s0)
.LBB3_33:
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	ld	x3, 56(sp)                      # 8-byte Folded Reload
	lui	a1, 22
	addiw	a3, a1, 420
	add	a3, a2, a3
	lui	a4, 3
	addiw	a1, a4, 824
	lw	a5, 120(sp)
	lw	a6, 128(sp)
	add	a1, a2, a1
	lw	a7, 124(sp)
	lw	t0, 132(sp)
	add	t1, a6, a5
	subw	a5, a5, a6
	srli	a6, a7, 1
	subw	a6, a6, t0
	srli	t0, t0, 1
	add	a7, t0, a7
	add	t0, a7, t1
	sw	t0, 120(sp)
	add	t0, a6, a5
	sw	t0, 124(sp)
	subw	a5, a5, a6
	sw	a5, 128(sp)
	subw	a5, t1, a7
	lw	a6, 136(sp)
	lw	a7, 144(sp)
	sw	a5, 132(sp)
	lw	a5, 140(sp)
	lw	t0, 148(sp)
	add	t1, a7, a6
	subw	a6, a6, a7
	srli	a7, a5, 1
	subw	a7, a7, t0
	srli	t0, t0, 1
	add	a5, t0, a5
	add	t0, a5, t1
	sw	t0, 136(sp)
	add	t0, a7, a6
	sw	t0, 140(sp)
	subw	a6, a6, a7
	sw	a6, 144(sp)
	subw	a5, t1, a5
	lw	a6, 152(sp)
	lw	a7, 160(sp)
	sw	a5, 148(sp)
	lw	a5, 156(sp)
	lw	t0, 164(sp)
	add	t1, a7, a6
	subw	a6, a6, a7
	srli	a7, a5, 1
	subw	a7, a7, t0
	srai	t0, t0, 1
	add	a5, t0, a5
	add	t2, a5, t1
	sw	t2, 152(sp)
	add	t0, a7, a6
	sw	t0, 156(sp)
	subw	a6, a6, a7
	sw	a6, 160(sp)
	subw	a5, t1, a5
	lw	a6, 168(sp)
	lw	a7, 176(sp)
	sw	a5, 164(sp)
	lw	a5, 172(sp)
	lw	t0, 180(sp)
	add	t1, a7, a6
	subw	a6, a6, a7
	srli	a7, a5, 1
	subw	a7, a7, t0
	srai	t0, t0, 1
	add	a5, t0, a5
	add	t3, a5, t1
	sw	t3, 168(sp)
	add	t0, a7, a6
	sw	t0, 172(sp)
	subw	a6, a6, a7
	sw	a6, 176(sp)
	subw	a5, t1, a5
	sw	a5, 180(sp)
	addiw	a4, a4, 312
	add	a4, a2, a4
	lw	a5, 120(sp)
	regsw_c	x4, 0x0(x8)		# 010000010000000000000
	addiw	a7, x3, 1
	lw	t1, 136(sp)
	addiw	a6, x3, 2
	add	t0, t2, a5
	subw	t2, a5, t2
	srli	t4, t1, 1
	lw	t5, 40(a3)
	subw	t4, t4, t3
	sraiw	a5, t3, 1
	add	t1, a5, t1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	addiw	a5, x3, 3
	beqz	t5, .LBB3_35
# %bb.34:
	add	t3, t1, t0
	addi	t3, t3, 32
	sraiw	t3, t3, 6
	sw	t3, 0(a1)
	add	t3, t4, t2
	addi	t3, t3, 32
	sraiw	t3, t3, 6
	sw	t3, 64(a1)
	subw	t2, t2, t4
	addi	t2, t2, 32
	sraiw	t2, t2, 6
	sw	t2, 128(a1)
	subw	t0, t0, t1
	addi	t0, t0, 32
	sraiw	t0, t0, 6
	j	.LBB3_43
.LBB3_35:
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	slli	t3, x3, 5
	ld	t5, 64(sp)                      # 8-byte Folded Reload
	slli	t5, t5, 1
	add	t3, t3, t5
	add	t3, a4, t3
	lhu	t3, 0(t3)
	addw	t6, t1, t0
	slli	t3, t3, 6
	add	t3, t6, t3
	addi	t3, t3, 32
	srai	t6, t3, 6
	lw	t3, 0(a3)
	regsw_c	x12, 0x400(x19)		# 100110110010000000000
	sgtz	x1, t6
	neg	x1, x1
	and	x1, x1, t6
	blt	x1, t3, .LBB3_37
# %bb.36:
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x1, t3
.LBB3_37:
	slli	t6, a7, 5
	add	t6, t6, t5
	add	t6, a4, t6
	lhu	t6, 0(t6)
	regsw_c	x4, 0x26(x16)		# 100000010000000100110
	addw	x2, t4, t2
	slli	t6, t6, 6
	add	t6, x2, t6
	addi	t6, t6, 32
	srai	t6, t6, 6
	sgtz	x2, t6
	neg	x2, x2
	regsw_c	x16, 0x0(x8)		# 010001000000000000000
	and	t6, x2, t6
	sw	x1, 0(a1)
	blt	t6, t3, .LBB3_39
# %bb.38:
	mv	t6, t3
.LBB3_39:
	regsw_c	x11, 0x431(x19)		# 100110101110000110001
	slli	x1, a6, 5
	add	x1, x1, t5
	add	x1, a4, x1
	lhu	x1, 0(x1)
	subw	t2, t2, t4
	slli	x1, x1, 6
	add	t2, t2, x1
	addi	t2, t2, 32
	srai	t2, t2, 6
	sgtz	t4, t2
	neg	t4, t4
	and	t2, t4, t2
	sw	t6, 64(a1)
	blt	t2, t3, .LBB3_41
# %bb.40:
	mv	t2, t3
.LBB3_41:
	slli	t4, a5, 5
	add	t4, t4, t5
	add	t4, a4, t4
	lhu	t4, 0(t4)
	subw	t0, t0, t1
	slli	t4, t4, 6
	add	t0, t0, t4
	addi	t0, t0, 32
	srai	t0, t0, 6
	sgtz	t1, t0
	neg	t1, t1
	and	t0, t1, t0
	sw	t2, 128(a1)
	blt	t0, t3, .LBB3_43
# %bb.42:
	mv	t0, t3
.LBB3_43:
	sw	t0, 192(a1)
	lw	t1, 124(sp)
	lw	t2, 156(sp)
	add	t0, t2, t1
	lw	t3, 140(sp)
	lw	t5, 172(sp)
	subw	t2, t1, t2
	lw	t6, 40(a3)
	srli	t4, t3, 1
	subw	t4, t4, t5
	srli	t1, t5, 1
	add	t1, t1, t3
	beqz	t6, .LBB3_45
# %bb.44:
	add	t3, t1, t0
	addi	t3, t3, 32
	sraiw	t3, t3, 6
	sw	t3, 4(a1)
	add	t3, t4, t2
	addi	t3, t3, 32
	sraiw	t3, t3, 6
	sw	t3, 68(a1)
	subw	t2, t2, t4
	addi	t2, t2, 32
	sraiw	t2, t2, 6
	sw	t2, 132(a1)
	subw	t0, t0, t1
	addi	t0, t0, 32
	sraiw	t0, t0, 6
	j	.LBB3_53
.LBB3_45:
	ld	t5, 64(sp)                      # 8-byte Folded Reload
	slli	t5, t5, 1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	slli	t3, x3, 5
	addi	t5, t5, 2
	add	t3, t3, t5
	add	t3, a4, t3
	lhu	t3, 0(t3)
	addw	t6, t1, t0
	slli	t3, t3, 6
	add	t3, t6, t3
	addi	t3, t3, 32
	srai	t6, t3, 6
	lw	t3, 0(a3)
	regsw_c	x12, 0x400(x19)		# 100110110010000000000
	sgtz	x1, t6
	neg	x1, x1
	and	x1, x1, t6
	blt	x1, t3, .LBB3_47
# %bb.46:
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x1, t3
.LBB3_47:
	slli	t6, a7, 5
	add	t6, t6, t5
	add	t6, a4, t6
	lhu	t6, 0(t6)
	regsw_c	x4, 0x26(x16)		# 100000010000000100110
	addw	x2, t4, t2
	slli	t6, t6, 6
	add	t6, x2, t6
	addi	t6, t6, 32
	srai	t6, t6, 6
	sgtz	x2, t6
	neg	x2, x2
	regsw_c	x16, 0x0(x8)		# 010001000000000000000
	and	t6, x2, t6
	sw	x1, 4(a1)
	blt	t6, t3, .LBB3_49
# %bb.48:
	mv	t6, t3
.LBB3_49:
	regsw_c	x11, 0x431(x19)		# 100110101110000110001
	slli	x1, a6, 5
	add	x1, x1, t5
	add	x1, a4, x1
	lhu	x1, 0(x1)
	subw	t2, t2, t4
	slli	x1, x1, 6
	add	t2, t2, x1
	addi	t2, t2, 32
	srai	t2, t2, 6
	sgtz	t4, t2
	neg	t4, t4
	and	t2, t4, t2
	sw	t6, 68(a1)
	blt	t2, t3, .LBB3_51
# %bb.50:
	mv	t2, t3
.LBB3_51:
	slli	t4, a5, 5
	add	t4, t4, t5
	add	t4, a4, t4
	lhu	t4, 0(t4)
	subw	t0, t0, t1
	slli	t4, t4, 6
	add	t0, t0, t4
	addi	t0, t0, 32
	srai	t0, t0, 6
	sgtz	t1, t0
	neg	t1, t1
	and	t0, t1, t0
	sw	t2, 132(a1)
	blt	t0, t3, .LBB3_53
# %bb.52:
	mv	t0, t3
.LBB3_53:
	sw	t0, 196(a1)
	lw	t1, 128(sp)
	lw	t2, 160(sp)
	add	t0, t2, t1
	lw	t3, 144(sp)
	lw	t5, 176(sp)
	subw	t2, t1, t2
	lw	t6, 40(a3)
	srli	t4, t3, 1
	subw	t4, t4, t5
	srli	t1, t5, 1
	add	t1, t1, t3
	beqz	t6, .LBB3_55
# %bb.54:
	add	t3, t1, t0
	addi	t3, t3, 32
	sraiw	t3, t3, 6
	sw	t3, 8(a1)
	add	t3, t4, t2
	addi	t3, t3, 32
	sraiw	t3, t3, 6
	sw	t3, 72(a1)
	subw	t2, t2, t4
	addi	t2, t2, 32
	sraiw	t2, t2, 6
	sw	t2, 136(a1)
	subw	t0, t0, t1
	addi	t0, t0, 32
	sraiw	t0, t0, 6
	j	.LBB3_63
.LBB3_55:
	ld	t5, 64(sp)                      # 8-byte Folded Reload
	slli	t5, t5, 1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	slli	t3, x3, 5
	addi	t5, t5, 4
	add	t3, t3, t5
	add	t3, a4, t3
	lhu	t3, 0(t3)
	addw	t6, t1, t0
	slli	t3, t3, 6
	add	t3, t6, t3
	addi	t3, t3, 32
	srai	t6, t3, 6
	lw	t3, 0(a3)
	regsw_c	x12, 0x400(x19)		# 100110110010000000000
	sgtz	x1, t6
	neg	x1, x1
	and	x1, x1, t6
	blt	x1, t3, .LBB3_57
# %bb.56:
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x1, t3
.LBB3_57:
	slli	t6, a7, 5
	add	t6, t6, t5
	add	t6, a4, t6
	lhu	t6, 0(t6)
	regsw_c	x4, 0x26(x16)		# 100000010000000100110
	addw	x2, t4, t2
	slli	t6, t6, 6
	add	t6, x2, t6
	addi	t6, t6, 32
	srai	t6, t6, 6
	sgtz	x2, t6
	neg	x2, x2
	regsw_c	x16, 0x0(x8)		# 010001000000000000000
	and	t6, x2, t6
	sw	x1, 8(a1)
	blt	t6, t3, .LBB3_59
# %bb.58:
	mv	t6, t3
.LBB3_59:
	regsw_c	x11, 0x431(x19)		# 100110101110000110001
	slli	x1, a6, 5
	add	x1, x1, t5
	add	x1, a4, x1
	lhu	x1, 0(x1)
	subw	t2, t2, t4
	slli	x1, x1, 6
	add	t2, t2, x1
	addi	t2, t2, 32
	srai	t2, t2, 6
	sgtz	t4, t2
	neg	t4, t4
	and	t2, t4, t2
	sw	t6, 72(a1)
	blt	t2, t3, .LBB3_61
# %bb.60:
	mv	t2, t3
.LBB3_61:
	slli	t4, a5, 5
	add	t4, t4, t5
	add	t4, a4, t4
	lhu	t4, 0(t4)
	subw	t0, t0, t1
	slli	t4, t4, 6
	add	t0, t0, t4
	addi	t0, t0, 32
	srai	t0, t0, 6
	sgtz	t1, t0
	neg	t1, t1
	and	t0, t1, t0
	sw	t2, 136(a1)
	blt	t0, t3, .LBB3_63
# %bb.62:
	mv	t0, t3
.LBB3_63:
	sw	t0, 200(a1)
	lw	t1, 132(sp)
	lw	t2, 164(sp)
	add	t0, t2, t1
	lw	t3, 148(sp)
	lw	t5, 180(sp)
	subw	t2, t1, t2
	lw	t6, 40(a3)
	srli	t4, t3, 1
	subw	t4, t4, t5
	srli	t1, t5, 1
	add	t1, t1, t3
	beqz	t6, .LBB3_65
# %bb.64:
	add	a4, t1, t0
	addi	a4, a4, 32
	sraiw	a4, a4, 6
	sw	a4, 12(a1)
	add	a4, t4, t2
	addi	a4, a4, 32
	sraiw	a4, a4, 6
	sw	a4, 76(a1)
	subw	a4, t2, t4
	addi	a4, a4, 32
	sraiw	a4, a4, 6
	sw	a4, 140(a1)
	subw	a4, t0, t1
	addi	a4, a4, 32
	sraiw	a4, a4, 6
	j	.LBB3_73
.LBB3_65:
	ld	t5, 64(sp)                      # 8-byte Folded Reload
	slli	t5, t5, 1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	slli	t3, x3, 5
	addi	t5, t5, 6
	add	t3, t3, t5
	add	t3, a4, t3
	lhu	t3, 0(t3)
	addw	t6, t1, t0
	slli	t3, t3, 6
	add	t3, t6, t3
	addi	t3, t3, 32
	srai	t6, t3, 6
	lw	t3, 0(a3)
	regsw_c	x4, 0x0(x19)		# 100110010000000000000
	sgtz	x1, t6
	neg	x1, x1
	and	t6, x1, t6
	blt	t6, t3, .LBB3_67
# %bb.66:
	mv	t6, t3
.LBB3_67:
	slli	a7, a7, 5
	add	a7, a7, t5
	add	a7, a4, a7
	lhu	a7, 0(a7)
	regsw_c	x4, 0x26(x16)		# 100000010000000100110
	addw	x1, t4, t2
	slli	a7, a7, 6
	add	a7, x1, a7
	addi	a7, a7, 32
	srai	a7, a7, 6
	sgtz	x1, a7
	neg	x1, x1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	and	a7, x1, a7
	sw	t6, 12(a1)
	blt	a7, t3, .LBB3_69
# %bb.68:
	mv	a7, t3
.LBB3_69:
	slli	a6, a6, 5
	add	a6, a6, t5
	add	a6, a4, a6
	lhu	a6, 0(a6)
	subw	t2, t2, t4
	slli	a6, a6, 6
	add	a6, t2, a6
	addi	a6, a6, 32
	srai	a6, a6, 6
	sgtz	t2, a6
	neg	t2, t2
	and	a6, t2, a6
	sw	a7, 76(a1)
	blt	a6, t3, .LBB3_71
# %bb.70:
	mv	a6, t3
.LBB3_71:
	slli	a5, a5, 5
	add	a5, a5, t5
	add	a4, a4, a5
	lhu	a4, 0(a4)
	subw	a5, t0, t1
	slli	a4, a4, 6
	add	a4, a5, a4
	addi	a4, a4, 32
	srai	a4, a4, 6
	sgtz	a5, a4
	neg	a5, a5
	and	a4, a5, a4
	sw	a6, 140(a1)
	blt	a4, t3, .LBB3_73
# %bb.72:
	mv	a4, t3
.LBB3_73:
	lw	a3, 40(a3)
	sw	a4, 204(a1)
	bnez	a3, .LBB3_77
# %bb.74:
	beqz	s4, .LBB3_76
.LBB3_75:
	lui	a4, 3
	addiw	a1, a4, 824
	add	a1, a2, a1
	lw	a3, 156(a2)
	lui	a5, %hi(enc_picture)
	ld	a5, %lo(enc_picture)(a5)
	addiw	a4, a4, 312
	add	a4, a2, a4
	lui	a6, 2
	add	a5, a5, a6
	ld	a5, -1768(a5)
	lw	a2, 152(a2)
	regsw_c	x4, 0x0(x4)		# 001000010000000000000
	addw	a6, a3, x3
	lh	a7, 0(a1)
	slli	t0, x3, 5
	add	t0, a4, t0
	ld	t3, 64(sp)                      # 8-byte Folded Reload
	slli	t1, t3, 1
	add	t2, t0, t1
	lh	t2, 0(t2)
	slli	a6, a6, 3
	add	a6, a5, a6
	ld	a6, 0(a6)
	add	a7, t2, a7
	addw	a2, a2, t3
	slli	t2, a2, 1
	add	t3, a6, t2
	sh	a7, 0(t3)
	lh	a7, 4(a1)
	addi	t3, t1, 2
	add	t4, t0, t3
	lh	t4, 0(t4)
	add	a7, t4, a7
	addiw	t4, a2, 1
	slli	t4, t4, 1
	add	t5, a6, t4
	sh	a7, 0(t5)
	lh	a7, 8(a1)
	addi	t5, t1, 4
	add	t6, t0, t5
	lh	t6, 0(t6)
	add	a7, t6, a7
	addiw	t6, a2, 2
	slli	t6, t6, 1
	regsw_c	x1, 0x40(x17)		# 100010000100001000000
	add	x1, a6, t6
	sh	a7, 0(x1)
	lh	a7, 12(a1)
	addi	x1, t1, 6
	add	t0, t0, x1
	lh	t0, 0(t0)
	add	a7, t0, a7
	addiw	a2, a2, 3
	slli	a2, a2, 1
	add	a6, a6, a2
	sh	a7, 0(a6)
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	addi	a6, x3, 1
	addw	a7, a3, a6
	slli	a7, a7, 3
	add	a7, a5, a7
	lh	t0, 64(a1)
	slli	a6, a6, 5
	add	a6, a4, a6
	regsw_c	x0, 0x510(x19)		# 100110000010100010000
	add	x2, a6, t1
	lh	x2, 0(x2)
	ld	a7, 0(a7)
	add	t0, x2, t0
	add	x2, a7, t2
	sh	t0, 0(x2)
	lh	t0, 68(a1)
	regsw_c	x5, 0x84(x19)		# 100110010100010000100
	add	x2, a6, t3
	lh	x2, 0(x2)
	add	t0, x2, t0
	add	x2, a7, t4
	sh	t0, 0(x2)
	lh	t0, 72(a1)
	add	x2, a6, t5
	regsw_c	x8, 0x408(x25)		# 110010100010000001000
	lh	x2, 0(x2)
	add	t0, x2, t0
	add	x2, a7, t6
	sh	t0, 0(x2)
	lh	t0, 76(a1)
	add	a6, a6, x1
	lh	a6, 0(a6)
	add	a6, a6, t0
	add	a7, a7, a2
	sh	a6, 0(a7)
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	addi	a6, x3, 2
	addw	a7, a3, a6
	slli	a7, a7, 3
	add	a7, a5, a7
	lh	t0, 128(a1)
	slli	a6, a6, 5
	add	a6, a4, a6
	regsw_c	x0, 0x510(x19)		# 100110000010100010000
	add	x2, a6, t1
	lh	x2, 0(x2)
	ld	a7, 0(a7)
	add	t0, x2, t0
	add	x2, a7, t2
	sh	t0, 0(x2)
	lh	t0, 132(a1)
	regsw_c	x5, 0x84(x19)		# 100110010100010000100
	add	x2, a6, t3
	lh	x2, 0(x2)
	add	t0, x2, t0
	add	x2, a7, t4
	sh	t0, 0(x2)
	lh	t0, 136(a1)
	add	x2, a6, t5
	regsw_c	x8, 0x408(x25)		# 110010100010000001000
	lh	x2, 0(x2)
	add	t0, x2, t0
	add	x2, a7, t6
	sh	t0, 0(x2)
	lh	t0, 140(a1)
	add	a6, a6, x1
	lh	a6, 0(a6)
	add	a6, a6, t0
	add	a7, a7, a2
	sh	a6, 0(a7)
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	addi	a6, x3, 3
	addw	a3, a3, a6
	slli	a3, a3, 3
	add	a3, a5, a3
	lh	a5, 192(a1)
	slli	a6, a6, 5
	add	a4, a4, a6
	add	t1, a4, t1
	lh	a6, 0(t1)
	ld	a3, 0(a3)
	add	a5, a6, a5
	add	t2, a3, t2
	sh	a5, 0(t2)
	lh	a5, 196(a1)
	add	t3, a4, t3
	lh	a6, 0(t3)
	add	a5, a6, a5
	add	t4, a3, t4
	sh	a5, 0(t4)
	lh	a5, 200(a1)
	add	t5, a4, t5
	lh	a6, 0(t5)
	add	a5, a6, a5
	add	t6, a3, t6
	sh	a5, 0(t6)
	lh	a1, 204(a1)
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	add	a4, a4, x1
	lh	a4, 0(a4)
	add	a1, a4, a1
	add	a2, a3, a2
	sh	a1, 0(a2)
	j	.LBB3_77
.LBB3_76:
	lui	a3, %hi(enc_picture)
	ld	a3, %lo(enc_picture)(a3)
	lw	a4, 156(a2)
	lui	a5, 2
	add	a3, a3, a5
	ld	a3, -1768(a3)
	lw	a2, 152(a2)
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	addw	a4, a4, x3
	slli	a5, a4, 3
	add	a5, a3, a5
	ld	a5, 0(a5)
	lh	a6, 0(a1)
	ld	a7, 64(sp)                      # 8-byte Folded Reload
	addw	a2, a2, a7
	slli	a2, a2, 1
	add	a7, a5, a2
	sh	a6, 0(a7)
	lh	a6, 4(a1)
	addi	a7, a2, 2
	add	t0, a5, a7
	lh	t1, 8(a1)
	sh	a6, 0(t0)
	addi	a6, a2, 4
	add	t0, a5, a6
	sh	t1, 0(t0)
	lh	t0, 12(a1)
	addi	t1, a2, 6
	addiw	t2, a4, 1
	slli	t2, t2, 3
	add	t2, a3, t2
	ld	t2, 0(t2)
	add	a5, a5, t1
	lh	t3, 64(a1)
	sh	t0, 0(a5)
	add	a5, t2, a2
	lh	t0, 68(a1)
	sh	t3, 0(a5)
	lh	a5, 72(a1)
	add	t3, t2, a7
	sh	t0, 0(t3)
	add	t0, t2, a6
	sh	a5, 0(t0)
	lh	a5, 76(a1)
	addiw	t0, a4, 2
	slli	t0, t0, 3
	add	t0, a3, t0
	ld	t0, 0(t0)
	add	t2, t2, t1
	lh	t3, 128(a1)
	sh	a5, 0(t2)
	add	a5, t0, a2
	lh	t2, 132(a1)
	sh	t3, 0(a5)
	lh	a5, 136(a1)
	add	t3, t0, a7
	sh	t2, 0(t3)
	add	t2, t0, a6
	sh	a5, 0(t2)
	lh	a5, 140(a1)
	addiw	a4, a4, 3
	slli	a4, a4, 3
	add	a3, a3, a4
	ld	a3, 0(a3)
	add	t0, t0, t1
	lh	a4, 192(a1)
	sh	a5, 0(t0)
	add	a2, a3, a2
	lh	a5, 196(a1)
	sh	a4, 0(a2)
	add	a7, a3, a7
	lh	a2, 200(a1)
	sh	a5, 0(a7)
	lh	a1, 204(a1)
	add	a6, a3, a6
	sh	a2, 0(a6)
	add	a3, a3, t1
	sh	a1, 0(a3)
.LBB3_77:
	ld	ra, 280(sp)                     # 8-byte Folded Reload
	ld	s0, 272(sp)                     # 8-byte Folded Reload
	ld	s1, 264(sp)                     # 8-byte Folded Reload
	ld	s2, 256(sp)                     # 8-byte Folded Reload
	ld	s3, 248(sp)                     # 8-byte Folded Reload
	ld	s4, 240(sp)                     # 8-byte Folded Reload
	ld	s5, 232(sp)                     # 8-byte Folded Reload
	ld	s6, 224(sp)                     # 8-byte Folded Reload
	ld	s7, 216(sp)                     # 8-byte Folded Reload
	ld	s8, 208(sp)                     # 8-byte Folded Reload
	ld	s9, 200(sp)                     # 8-byte Folded Reload
	ld	s10, 192(sp)                    # 8-byte Folded Reload
	ld	s11, 184(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 288
	ret
.Lfunc_end3:
	.size	dct_luma, .Lfunc_end3-dct_luma
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	dct_chroma                      # -- Begin function dct_chroma
	.p2align	2
	.type	dct_chroma,@function
dct_chroma:                             # @dct_chroma
# %bb.0:
	addi	sp, sp, -528
	sd	ra, 520(sp)                     # 8-byte Folded Spill
	sd	s0, 512(sp)                     # 8-byte Folded Spill
	sd	s1, 504(sp)                     # 8-byte Folded Spill
	sd	s2, 496(sp)                     # 8-byte Folded Spill
	sd	s3, 488(sp)                     # 8-byte Folded Spill
	sd	s4, 480(sp)                     # 8-byte Folded Spill
	sd	s5, 472(sp)                     # 8-byte Folded Spill
	sd	s6, 464(sp)                     # 8-byte Folded Spill
	sd	s7, 456(sp)                     # 8-byte Folded Spill
	sd	s8, 448(sp)                     # 8-byte Folded Spill
	sd	s9, 440(sp)                     # 8-byte Folded Spill
	sd	s10, 432(sp)                    # 8-byte Folded Spill
	sd	s11, 424(sp)                    # 8-byte Folded Spill
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	sd	a1, 72(sp)                      # 8-byte Folded Spill
	sd	a0, 208(sp)                     # 8-byte Folded Spill
	lui	a0, 22
	addiw	a1, a0, 108
	add	a1, a2, a1
	lui	a0, 8
	add	a0, a2, a0
	ld	a3, -1192(a0)
	lw	a4, 12(a2)
	lw	a5, 44(a1)
	lui	a0, 3
	li	a6, 528
	mul	a4, a4, a6
	add	a3, a3, a4
	sd	a3, 232(sp)                     # 8-byte Folded Spill
	beqz	a5, .LBB4_32
.LBB4_1:
	lui	s10, %hi(FIELD_SCAN)
	addi	s10, s10, %lo(FIELD_SCAN)
.LBB4_2:
	lw	a4, 272(a1)
	ld	a3, 232(sp)                     # 8-byte Folded Reload
	lw	a3, 12(a3)
	li	ra, 0
	negw	a4, a4
	addiw	a0, a0, 824
	bne	a3, a4, .LBB4_4
# %bb.3:
	lw	a4, 332(a1)
	addi	a4, a4, -1
	seqz	ra, a4
.LBB4_4:
	ld	a4, 208(sp)                     # 8-byte Folded Reload
	slli	a4, a4, 2
	lui	a5, 22
	add	a4, a4, a5
	add	a4, a2, a4
	lw	a4, 452(a4)
	add	a0, a2, a0
	lw	a2, 276(a1)
	ld	a5, 232(sp)                     # 8-byte Folded Reload
	lw	a5, 72(a5)
	addw	a4, a4, a3
	li	a6, 51
	negw	a3, a2
	mv	a7, a4
	blt	a4, a6, .LBB4_6
# %bb.5:
	li	a7, 51
.LBB4_6:
	ld	a6, 1032(a0)
	ld	s6, 208(sp)                     # 8-byte Folded Reload
	slli	s6, s6, 3
	addiw	t0, a5, -9
	blt	a4, a3, .LBB4_8
# %bb.7:
	mv	a3, a7
.LBB4_8:
	lw	s11, 328(a1)
	add	a5, a6, s6
	andi	a4, t0, -6
	bltz	a3, .LBB4_10
# %bb.9:
	lui	a6, %hi(QP_SCALE_CR)
	addi	a6, a6, %lo(QP_SCALE_CR)
	add	a3, a6, a3
	lbu	a3, 0(a3)
.LBB4_10:
	ld	a5, 8(a5)
	seqz	t2, a4
	lui	a4, %hi(qp_per_matrix)
	ld	a7, %lo(qp_per_matrix)(a4)
	addw	a2, a3, a2
	lui	a3, %hi(qp_rem_matrix)
	ld	a6, %lo(qp_rem_matrix)(a3)
	lui	a3, %hi(LevelScale4x4Chroma)
	ld	a3, %lo(LevelScale4x4Chroma)(a3)
	slli	a4, a2, 2
	add	a7, a7, a4
	add	a6, a6, a4
	add	a3, a3, s6
	ld	t0, 0(a3)
	lui	a3, %hi(LevelOffset4x4Chroma)
	ld	a3, %lo(LevelOffset4x4Chroma)(a3)
	lui	a4, %hi(InvLevelScale4x4Chroma)
	ld	a4, %lo(InvLevelScale4x4Chroma)(a4)
	sd	t2, 200(sp)                     # 8-byte Folded Spill
	slli	t2, t2, 3
	add	a3, a3, s6
	ld	t1, 0(a3)
	add	a4, a4, s6
	ld	a3, 0(a4)
	add	t0, t0, t2
	add	t1, t1, t2
	li	a4, 2
	add	t2, a3, t2
	bne	s11, a4, .LBB4_12
# %bb.11:
	addiw	a2, a2, 3
	lui	a3, 174763
	addiw	a3, a3, -1365
	mul	a3, a2, a3
	srli	a4, a3, 63
	srli	a3, a3, 32
	regsw_c	x4, 0x80(x16)		# 100000010000010000000
	addw	x6, a3, a4
	li	a3, 6
	mul	a3, x6, a3
	subw	a3, a2, a3
	addi	a2, x6, 15
	j	.LBB4_13
.LBB4_12:
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	li	x6, 0
	li	a3, 0
	li	a2, 0
.LBB4_13:
	lw	a4, 320(a1)
	regsw_c	x0, 0x24(x16)		# 100000000000000100100
	lw	x3, 0(a7)
	ld	s0, 0(a5)
	ld	a5, 8(a5)
	sd	a5, 288(sp)                     # 8-byte Folded Spill
	lw	s1, 0(a6)
	ld	x5, 0(t0)
	ld	x4, 0(t1)
	lw	a7, 340(a1)
	ld	s4, 0(t2)
	blez	a7, .LBB4_22
# %bb.14:
	lw	t1, 336(a1)
	li	a5, 0
	addi	a6, a0, 204
	j	.LBB4_17
.LBB4_15:                               #   in Loop: Header=BB4_17 Depth=1
	lw	a7, 340(a1)
.LBB4_16:                               #   in Loop: Header=BB4_17 Depth=1
	addi	a5, a5, 4
	addi	a6, a6, 256
	bge	a5, a7, .LBB4_22
.LBB4_17:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_20 Depth 2
	blez	t1, .LBB4_16
# %bb.18:                               #   in Loop: Header=BB4_17 Depth=1
	li	a7, 0
	mv	t0, a6
	j	.LBB4_20
.LBB4_19:                               #   in Loop: Header=BB4_20 Depth=2
	lw	t1, 336(a1)
	addi	a7, a7, 4
	addi	t0, t0, 16
	bge	a7, t1, .LBB4_15
.LBB4_20:                               #   Parent Loop BB4_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bnez	ra, .LBB4_19
# %bb.21:                               #   in Loop: Header=BB4_20 Depth=2
	lw	t1, -204(t0)
	lw	t2, -192(t0)
	lw	t3, -200(t0)
	lw	t4, -196(t0)
	add	t5, t2, t1
	add	t6, t4, t3
	subw	t3, t3, t4
	subw	t1, t1, t2
	add	t2, t6, t5
	sw	t2, -204(t0)
	subw	t5, t5, t6
	sw	t5, -196(t0)
	slli	t2, t1, 1
	add	t2, t3, t2
	sw	t2, -200(t0)
	slli	t3, t3, 1
	lw	t2, -140(t0)
	lw	t4, -128(t0)
	lw	t5, -136(t0)
	lw	t6, -132(t0)
	subw	t1, t1, t3
	sw	t1, -192(t0)
	add	t1, t4, t2
	add	t3, t6, t5
	subw	t5, t5, t6
	subw	t2, t2, t4
	add	t4, t3, t1
	sw	t4, -140(t0)
	subw	t1, t1, t3
	sw	t1, -132(t0)
	slli	t1, t2, 1
	add	t1, t5, t1
	sw	t1, -136(t0)
	slli	t5, t5, 1
	lw	t1, -76(t0)
	lw	t3, -64(t0)
	lw	t4, -72(t0)
	lw	t6, -68(t0)
	subw	t2, t2, t5
	sw	t2, -128(t0)
	add	t2, t3, t1
	add	t5, t6, t4
	subw	t4, t4, t6
	subw	t1, t1, t3
	add	t3, t5, t2
	sw	t3, -76(t0)
	subw	t2, t2, t5
	sw	t2, -68(t0)
	slli	t2, t1, 1
	add	t2, t4, t2
	sw	t2, -72(t0)
	slli	t4, t4, 1
	lw	t5, -12(t0)
	lw	t6, 0(t0)
	regsw_c	x0, 0x1f(x18)		# 100100000000000011111
	lw	x1, -8(t0)
	lw	x2, -4(t0)
	subw	t1, t1, t4
	sw	t1, -64(t0)
	add	t1, t6, t5
	add	t4, x2, x1
	subw	x1, x1, x2
	subw	t5, t5, t6
	add	t6, t4, t1
	sw	t6, -12(t0)
	subw	t1, t1, t4
	sw	t1, -4(t0)
	slli	t1, t5, 1
	regsw_c	x12, 0x108(x8)		# 010000110000100001000
	add	t1, x1, t1
	sw	t1, -8(t0)
	slli	x1, x1, 1
	lw	t4, -204(t0)
	lw	x2, -140(t0)
	subw	t5, t5, x1
	sw	t5, 0(t0)
	add	t5, t6, t4
	regsw_c	x0, 0x408(x21)		# 101010000010000001000
	add	x1, t3, x2
	subw	t3, x2, t3
	subw	t4, t4, t6
	add	t6, x1, t5
	sw	t6, -204(t0)
	subw	t5, t5, x1
	sw	t5, -76(t0)
	slli	t5, t4, 1
	add	t5, t3, t5
	sw	t5, -140(t0)
	slli	t3, t3, 1
	lw	t5, -200(t0)
	lw	t6, -136(t0)
	subw	t4, t4, t3
	sw	t4, -12(t0)
	add	t3, t1, t5
	add	t4, t2, t6
	subw	t2, t6, t2
	subw	t1, t5, t1
	add	t5, t4, t3
	sw	t5, -200(t0)
	subw	t3, t3, t4
	sw	t3, -72(t0)
	slli	t3, t1, 1
	add	t3, t2, t3
	sw	t3, -136(t0)
	slli	t2, t2, 1
	lw	t3, -196(t0)
	lw	t4, -4(t0)
	lw	t5, -132(t0)
	lw	t6, -68(t0)
	subw	t1, t1, t2
	sw	t1, -8(t0)
	add	t1, t4, t3
	add	t2, t6, t5
	subw	t5, t5, t6
	subw	t3, t3, t4
	add	t4, t2, t1
	sw	t4, -196(t0)
	subw	t1, t1, t2
	sw	t1, -68(t0)
	slli	t1, t3, 1
	add	t1, t5, t1
	sw	t1, -132(t0)
	slli	t5, t5, 1
	lw	t1, -192(t0)
	lw	t2, 0(t0)
	lw	t4, -128(t0)
	lw	t6, -64(t0)
	subw	t3, t3, t5
	sw	t3, -4(t0)
	add	t3, t2, t1
	add	t5, t6, t4
	subw	t4, t4, t6
	subw	t1, t1, t2
	add	t2, t5, t3
	sw	t2, -192(t0)
	subw	t3, t3, t5
	sw	t3, -64(t0)
	slli	t2, t1, 1
	add	t2, t4, t2
	sw	t2, -128(t0)
	slli	t4, t4, 1
	subw	t1, t1, t4
	sw	t1, 0(t0)
	j	.LBB4_19
.LBB4_22:
	li	a5, 1
	srli	t6, a4, 1
	sd	ra, 224(sp)                     # 8-byte Folded Spill
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	sd	x3, 184(sp)                     # 8-byte Folded Spill
	sd	s6, 16(sp)                      # 8-byte Folded Spill
	sd	s10, 8(sp)                      # 8-byte Folded Spill
	sd	s11, 0(sp)                      # 8-byte Folded Spill
	beq	s11, a5, .LBB4_53
# %bb.23:
	li	a4, 2
	beq	s11, a4, .LBB4_34
# %bb.24:
	li	a2, 3
	bne	s11, a2, .LBB4_55
# %bb.25:
	blez	a7, .LBB4_56
# %bb.26:
	lw	a4, 336(a1)
	li	a2, 0
	addi	a3, sp, 296
	j	.LBB4_28
.LBB4_27:                               #   in Loop: Header=BB4_28 Depth=1
	addi	a2, a2, 4
	addi	a3, a3, 4
	addi	a0, a0, 256
	bge	a2, a7, .LBB4_56
.LBB4_28:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_30 Depth 2
	blez	a4, .LBB4_27
# %bb.29:                               #   in Loop: Header=BB4_28 Depth=1
	li	a5, 0
	mv	a6, a0
	mv	a7, a3
.LBB4_30:                               #   Parent Loop BB4_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a4, 0(a6)
	sw	a4, 0(a7)
	lw	a4, 336(a1)
	addi	a5, a5, 4
	addi	a7, a7, 16
	addi	a6, a6, 16
	blt	a5, a4, .LBB4_30
# %bb.31:                               #   in Loop: Header=BB4_28 Depth=1
	lw	a7, 340(a1)
	j	.LBB4_27
.LBB4_32:
	lw	a3, 0(a1)
	lui	s10, %hi(SNGL_SCAN)
	addi	s10, s10, %lo(SNGL_SCAN)
	beqz	a3, .LBB4_2
# %bb.33:
	ld	a3, 232(sp)                     # 8-byte Folded Reload
	lw	a3, 424(a3)
	bnez	a3, .LBB4_1
	j	.LBB4_2
.LBB4_34:
	blez	a7, .LBB4_40
# %bb.35:
	lw	a4, 336(a1)
	blez	a4, .LBB4_40
# %bb.36:
	li	a1, 0
	slli	a4, a4, 2
	addi	a4, a4, -4
	andi	a4, a4, -16
	addi	a4, a4, 16
	addi	a5, sp, 360
	addi	a6, sp, 360
.LBB4_37:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_38 Depth 2
	add	t0, a4, a1
	add	t0, a5, t0
	mv	t1, a0
	mv	t2, a6
.LBB4_38:                               #   Parent Loop BB4_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	t3, 0(t1)
	sw	t3, 0(t2)
	addi	t2, t2, 16
	addi	t1, t1, 16
	bne	t2, t0, .LBB4_38
# %bb.39:                               #   in Loop: Header=BB4_37 Depth=1
	addi	a1, a1, 4
	addi	a6, a6, 4
	addi	a0, a0, 256
	bltu	a1, a7, .LBB4_37
.LBB4_40:
	sd	s0, 280(sp)                     # 8-byte Folded Spill
	sd	t6, 192(sp)                     # 8-byte Folded Spill
	sd	s1, 240(sp)                     # 8-byte Folded Spill
	sd	s4, 256(sp)                     # 8-byte Folded Spill
	bnez	ra, .LBB4_42
# %bb.41:
	lw	a0, 360(sp)
	lw	a1, 376(sp)
	lw	a4, 364(sp)
	lw	a5, 380(sp)
	lw	a6, 368(sp)
	lw	a7, 384(sp)
	lw	t0, 372(sp)
	lw	t1, 388(sp)
	add	t2, a1, a0
	add	t3, a5, a4
	add	t4, a7, a6
	add	t5, t1, t0
	subw	a0, a0, a1
	subw	a4, a4, a5
	subw	a1, a6, a7
	subw	a5, t0, t1
	add	a6, t5, t2
	add	a7, t4, t3
	subw	t3, t3, t4
	subw	t0, t2, t5
	add	t1, a7, a6
	sw	t1, 296(sp)
	subw	a6, a6, a7
	sw	a6, 304(sp)
	add	a6, t3, t0
	sw	a6, 300(sp)
	subw	a6, t0, t3
	sw	a6, 308(sp)
	add	a6, a5, a0
	add	a7, a1, a4
	subw	a4, a4, a1
	subw	a0, a0, a5
	add	a1, a7, a6
	sw	a1, 312(sp)
	subw	a1, a6, a7
	sw	a1, 320(sp)
	add	a1, a4, a0
	sw	a1, 316(sp)
	subw	a0, a0, a4
	sw	a0, 324(sp)
.LBB4_42:
	li	s4, 0
	li	s3, 0
	sd	zero, 24(sp)                    # 8-byte Folded Spill
	slli	a3, a3, 3
	regsw_c	x4, 0x51(x4)		# 001000010000001010001
	sd	x5, 216(sp)                     # 8-byte Folded Spill
	sd	a3, 168(sp)                     # 8-byte Folded Spill
	add	a3, x5, a3
	sd	a3, 272(sp)                     # 8-byte Folded Spill
	sd	x6, 176(sp)                     # 8-byte Folded Spill
	slli	a0, x6, 3
	sd	x4, 248(sp)                     # 8-byte Folded Spill
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	add	a0, x4, a0
	sd	a0, 264(sp)                     # 8-byte Folded Spill
	addi	s9, a2, 1
	ld	a0, 208(sp)                     # 8-byte Folded Reload
	slli	a0, a0, 3
	lui	a1, 4080
	sllw	s10, a1, a0
	li	s5, -1
	lui	s11, %hi(SCAN_YUV422)
	addi	s11, s11, %lo(SCAN_YUV422)
	addi	s1, sp, 360
	addi	s6, sp, 296
	li	s0, 8
	j	.LBB4_44
.LBB4_43:                               #   in Loop: Header=BB4_44 Depth=1
	add	a0, s6, s7
	add	a0, a0, s8
	lw	a1, 0(a0)
	addi	s4, s4, 1
	mv	a0, s2
	call	sign
	ld	ra, 224(sp)                     # 8-byte Folded Reload
	add	s7, s1, s7
	add	s7, s7, s8
	sw	a0, 0(s7)
	beq	s4, s0, .LBB4_70
.LBB4_44:                               # =>This Inner Loop Header: Depth=1
	slli	a0, s4, 1
	add	a0, s11, a0
	lbu	s7, 0(a0)
	lbu	s8, 1(a0)
	slli	s7, s7, 4
	slli	s8, s8, 2
	beqz	ra, .LBB4_46
# %bb.45:                               #   in Loop: Header=BB4_44 Depth=1
	add	a0, s1, s7
	add	a0, a0, s8
	lw	a1, 0(a0)
	sraiw	a0, a1, 31
	xor	a2, a1, a0
	subw	s2, a2, a0
	add	a0, s6, s7
	add	a0, a0, s8
	sw	a1, 0(a0)
	addi	s5, s5, 1
	bnez	s2, .LBB4_47
	j	.LBB4_50
.LBB4_46:                               #   in Loop: Header=BB4_44 Depth=1
	add	a0, s6, s7
	ld	a1, 272(sp)                     # 8-byte Folded Reload
	ld	a2, 0(a1)
	ld	a1, 264(sp)                     # 8-byte Folded Reload
	ld	a3, 0(a1)
	add	a0, a0, s8
	lw	a1, 0(a0)
	ld	a0, 0(a2)
	ld	a2, 0(a3)
	sraiw	a3, a1, 31
	lw	a0, 0(a0)
	lw	a2, 0(a2)
	xor	a4, a1, a3
	subw	a4, a4, a3
	mul	a0, a0, a4
	slli	a2, a2, 1
	add	a0, a2, a0
	sraw	s2, a0, s9
	addi	s5, s5, 1
	beqz	s2, .LBB4_50
.LBB4_47:                               #   in Loop: Header=BB4_44 Depth=1
	ld	a2, 232(sp)                     # 8-byte Folded Reload
	ld	a0, 368(a2)
	or	a0, a0, s10
	sd	a0, 368(a2)
	li	a0, 1
	sd	a0, 24(sp)                      # 8-byte Folded Spill
	ld	a0, 72(sp)                      # 8-byte Folded Reload
	bgtz	a0, .LBB4_49
# %bb.48:                               #   in Loop: Header=BB4_44 Depth=1
	li	a0, 1
	sd	a0, 72(sp)                      # 8-byte Folded Spill
.LBB4_49:                               #   in Loop: Header=BB4_44 Depth=1
	mv	a0, s2
	call	sign
	slli	a1, s3, 2
	ld	a2, 280(sp)                     # 8-byte Folded Reload
	add	a2, a2, a1
	sw	a0, 0(a2)
	ld	a0, 288(sp)                     # 8-byte Folded Reload
	add	a1, a0, a1
	sw	s5, 0(a1)
	addiw	s3, s3, 1
	li	s5, -1
	ld	ra, 224(sp)                     # 8-byte Folded Reload
.LBB4_50:                               #   in Loop: Header=BB4_44 Depth=1
	beqz	ra, .LBB4_43
# %bb.51:                               #   in Loop: Header=BB4_44 Depth=1
	addi	s4, s4, 1
	bne	s4, s0, .LBB4_44
# %bb.52:
	slli	s3, s3, 2
	ld	a0, 280(sp)                     # 8-byte Folded Reload
	add	s3, a0, s3
	sw	zero, 0(s3)
	j	.LBB4_69
.LBB4_53:
	sd	s4, 256(sp)                     # 8-byte Folded Spill
	sd	t6, 192(sp)                     # 8-byte Folded Spill
	lw	s5, 0(a0)
	lw	s2, 16(a0)
	sd	s1, 240(sp)                     # 8-byte Folded Spill
	beqz	ra, .LBB4_72
# %bb.54:
	lw	s4, 256(a0)
	lw	a0, 272(a0)
	sd	a0, 280(sp)                     # 8-byte Folded Spill
	slli	a0, s1, 3
	regsw_c	x4, 0x410(x8)		# 010000010010000010000
	add	a0, x5, a0
	sd	a0, 272(sp)                     # 8-byte Folded Spill
	slli	s1, x3, 3
	add	s1, x4, s1
	sd	s1, 264(sp)                     # 8-byte Folded Spill
	addi	s1, x3, 16
	sraiw	a0, s5, 31
	xor	a1, s5, a0
	subw	s3, a1, a0
	j	.LBB4_73
.LBB4_55:
	sd	zero, 24(sp)                    # 8-byte Folded Spill
	j	.LBB4_148
.LBB4_56:
	sd	s0, 280(sp)                     # 8-byte Folded Spill
	sd	t6, 192(sp)                     # 8-byte Folded Spill
	sd	s4, 256(sp)                     # 8-byte Folded Spill
	bnez	ra, .LBB4_58
# %bb.57:
	lw	a0, 296(sp)
	lw	a1, 344(sp)
	lw	a2, 312(sp)
	lw	a3, 328(sp)
	add	a4, a1, a0
	add	a5, a3, a2
	subw	a2, a2, a3
	subw	a0, a0, a1
	add	a1, a5, a4
	sw	a1, 296(sp)
	subw	a4, a4, a5
	sw	a4, 328(sp)
	add	a1, a2, a0
	sw	a1, 312(sp)
	lw	a1, 300(sp)
	lw	a3, 348(sp)
	lw	a4, 316(sp)
	lw	a5, 332(sp)
	subw	a0, a0, a2
	sw	a0, 344(sp)
	add	a0, a3, a1
	add	a2, a5, a4
	subw	a4, a4, a5
	subw	a1, a1, a3
	add	a3, a2, a0
	sw	a3, 300(sp)
	subw	a0, a0, a2
	sw	a0, 332(sp)
	add	a0, a4, a1
	sw	a0, 316(sp)
	lw	a0, 304(sp)
	lw	a2, 352(sp)
	lw	a3, 320(sp)
	lw	a5, 336(sp)
	subw	a1, a1, a4
	sw	a1, 348(sp)
	add	a1, a2, a0
	add	a4, a5, a3
	subw	a3, a3, a5
	subw	a0, a0, a2
	add	a2, a4, a1
	sw	a2, 304(sp)
	subw	a1, a1, a4
	sw	a1, 336(sp)
	add	a1, a3, a0
	sw	a1, 320(sp)
	lw	a4, 308(sp)
	lw	a5, 356(sp)
	lw	a6, 324(sp)
	lw	a7, 340(sp)
	subw	a0, a0, a3
	sw	a0, 352(sp)
	add	a0, a5, a4
	add	a3, a7, a6
	subw	a6, a6, a7
	subw	a4, a4, a5
	add	a5, a3, a0
	sw	a5, 308(sp)
	subw	a0, a0, a3
	sw	a0, 340(sp)
	add	a0, a6, a4
	sw	a0, 324(sp)
	lw	a3, 296(sp)
	lw	a7, 300(sp)
	subw	a4, a4, a6
	sw	a4, 356(sp)
	add	a4, a5, a3
	add	a6, a2, a7
	subw	a2, a7, a2
	subw	a3, a3, a5
	add	a5, a6, a4
	sraiw	a5, a5, 1
	sw	a5, 296(sp)
	subw	a4, a4, a6
	sraiw	a4, a4, 1
	sw	a4, 304(sp)
	add	a4, a2, a3
	sraiw	a4, a4, 1
	sw	a4, 300(sp)
	subw	a3, a3, a2
	lw	a2, 312(sp)
	lw	a4, 316(sp)
	sraiw	a3, a3, 1
	sw	a3, 308(sp)
	add	a3, a0, a2
	add	a5, a1, a4
	subw	a4, a4, a1
	subw	a2, a2, a0
	add	a0, a5, a3
	sraiw	a0, a0, 1
	sw	a0, 312(sp)
	subw	a3, a3, a5
	sraiw	a0, a3, 1
	sw	a0, 320(sp)
	add	a0, a4, a2
	sraiw	a0, a0, 1
	sw	a0, 316(sp)
	subw	a2, a2, a4
	lw	a0, 328(sp)
	lw	a1, 340(sp)
	lw	a3, 332(sp)
	lw	a4, 336(sp)
	sraiw	a2, a2, 1
	sw	a2, 324(sp)
	add	a2, a1, a0
	add	a5, a4, a3
	subw	a3, a3, a4
	subw	a0, a0, a1
	add	a1, a5, a2
	sraiw	a1, a1, 1
	sw	a1, 328(sp)
	subw	a2, a2, a5
	sraiw	a1, a2, 1
	sw	a1, 336(sp)
	add	a1, a3, a0
	sraiw	a1, a1, 1
	sw	a1, 332(sp)
	subw	a0, a0, a3
	lw	a1, 344(sp)
	lw	a2, 356(sp)
	lw	a3, 348(sp)
	lw	a4, 352(sp)
	sraiw	a0, a0, 1
	sw	a0, 340(sp)
	add	a0, a2, a1
	add	a5, a4, a3
	subw	a3, a3, a4
	subw	a1, a1, a2
	add	a2, a5, a0
	sraiw	a2, a2, 1
	sw	a2, 344(sp)
	subw	a0, a0, a5
	sraiw	a0, a0, 1
	sw	a0, 352(sp)
	add	a0, a3, a1
	sraiw	a0, a0, 1
	sw	a0, 348(sp)
	subw	a1, a1, a3
	sraiw	a0, a1, 1
	sw	a0, 356(sp)
.LBB4_58:
	li	s3, 0
	li	s0, 0
	sd	zero, 24(sp)                    # 8-byte Folded Spill
	sd	s1, 240(sp)                     # 8-byte Folded Spill
	slli	s1, s1, 3
	regsw_c	x4, 0x452(x4)		# 001000010010001010010
	sd	x5, 216(sp)                     # 8-byte Folded Spill
	sd	s1, 272(sp)                     # 8-byte Folded Spill
	add	s4, x5, s1
	slli	s5, x3, 3
	sd	x4, 248(sp)                     # 8-byte Folded Spill
	add	s5, x4, s5
	addi	s6, x3, 16
	ld	a0, 208(sp)                     # 8-byte Folded Reload
	slli	a0, a0, 4
	lui	a1, 65535
	slli	a1, a1, 4
	sll	s7, a1, a0
	li	s10, -1
	lui	s8, %hi(SNGL_SCAN)
	addi	s8, s8, %lo(SNGL_SCAN)
	addi	s9, sp, 296
	li	s11, 16
	j	.LBB4_60
.LBB4_59:                               #   in Loop: Header=BB4_60 Depth=1
	lw	a1, 0(s1)
	addi	s3, s3, 1
	mv	a0, s2
	call	sign
	ld	ra, 224(sp)                     # 8-byte Folded Reload
	sw	a0, 0(s1)
	beq	s3, s11, .LBB4_79
.LBB4_60:                               # =>This Inner Loop Header: Depth=1
	slli	a0, s3, 1
	add	a0, s8, a0
	lbu	a1, 0(a0)
	lbu	a0, 1(a0)
	slli	a1, a1, 4
	add	a1, s9, a1
	slli	a0, a0, 2
	add	s1, a1, a0
	lw	a1, 0(s1)
	sraiw	a0, a1, 31
	xor	a2, a1, a0
	subw	s2, a2, a0
	bnez	ra, .LBB4_62
# %bb.61:                               #   in Loop: Header=BB4_60 Depth=1
	ld	a0, 0(s4)
	ld	a2, 0(s5)
	ld	a0, 0(a0)
	ld	a2, 0(a2)
	lw	a0, 0(a0)
	lw	a2, 0(a2)
	mul	a0, a0, s2
	slli	a2, a2, 1
	add	a0, a2, a0
	sraw	s2, a0, s6
.LBB4_62:                               #   in Loop: Header=BB4_60 Depth=1
	addi	s10, s10, 1
	beqz	s2, .LBB4_66
# %bb.63:                               #   in Loop: Header=BB4_60 Depth=1
	ld	a2, 232(sp)                     # 8-byte Folded Reload
	ld	a0, 368(a2)
	or	a0, a0, s7
	sd	a0, 368(a2)
	li	a0, 1
	sd	a0, 24(sp)                      # 8-byte Folded Spill
	ld	a0, 72(sp)                      # 8-byte Folded Reload
	bgtz	a0, .LBB4_65
# %bb.64:                               #   in Loop: Header=BB4_60 Depth=1
	li	a0, 1
	sd	a0, 72(sp)                      # 8-byte Folded Spill
.LBB4_65:                               #   in Loop: Header=BB4_60 Depth=1
	mv	a0, s2
	call	sign
	slli	a1, s0, 2
	ld	a2, 280(sp)                     # 8-byte Folded Reload
	add	a2, a2, a1
	sw	a0, 0(a2)
	ld	a0, 288(sp)                     # 8-byte Folded Reload
	add	a1, a0, a1
	sw	s10, 0(a1)
	addiw	s0, s0, 1
	li	s10, -1
	ld	ra, 224(sp)                     # 8-byte Folded Reload
.LBB4_66:                               #   in Loop: Header=BB4_60 Depth=1
	beqz	ra, .LBB4_59
# %bb.67:                               #   in Loop: Header=BB4_60 Depth=1
	addi	s3, s3, 1
	bne	s3, s11, .LBB4_60
# %bb.68:
	slli	s0, s0, 2
	ld	a0, 280(sp)                     # 8-byte Folded Reload
	add	s0, a0, s0
	sw	zero, 0(s0)
.LBB4_69:
	ld	s6, 16(sp)                      # 8-byte Folded Reload
	ld	s10, 8(sp)                      # 8-byte Folded Reload
	ld	s11, 0(sp)                      # 8-byte Folded Reload
	regsw_c	x8, 0x100(x16)		# 100000100000100000000
	ld	x3, 184(sp)                     # 8-byte Folded Reload
	ld	s4, 256(sp)                     # 8-byte Folded Reload
	ld	x4, 248(sp)                     # 8-byte Folded Reload
	ld	s1, 240(sp)                     # 8-byte Folded Reload
	ld	x5, 216(sp)                     # 8-byte Folded Reload
	ld	t6, 192(sp)                     # 8-byte Folded Reload
	j	.LBB4_148
.LBB4_70:
	slli	s3, s3, 2
	ld	a0, 280(sp)                     # 8-byte Folded Reload
	add	s3, a0, s3
	sw	zero, 0(s3)
	lw	a0, 360(sp)
	lw	a1, 376(sp)
	lw	a2, 364(sp)
	lw	a3, 380(sp)
	add	t1, a1, a0
	sw	t1, 296(sp)
	add	t2, a3, a2
	lw	a4, 368(sp)
	lw	a7, 384(sp)
	lw	t3, 372(sp)
	lw	t4, 388(sp)
	sw	t2, 300(sp)
	add	t5, a7, a4
	sw	t5, 304(sp)
	add	t6, t4, t3
	sw	t6, 308(sp)
	subw	a6, a0, a1
	sw	a6, 312(sp)
	subw	a5, a2, a3
	sw	a5, 316(sp)
	subw	t0, a4, a7
	sw	t0, 320(sp)
	subw	a7, t3, t4
	sw	a7, 324(sp)
	ld	s4, 256(sp)                     # 8-byte Folded Reload
	ld	a2, 168(sp)                     # 8-byte Folded Reload
	add	a2, s4, a2
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	regsw_c	x0, 0x23(x17)		# 100010000000000100011
	ld	x4, 176(sp)                     # 8-byte Folded Reload
	addi	a1, x4, -4
	lui	a3, 3
	addiw	a3, a3, 824
	add	a0, a0, a3
	li	x1, 3
	subw	a3, x1, x4
	ld	a2, 0(a2)
	li	a4, 1
	sllw	a3, a4, a3
	li	a4, 4
	ld	a2, 0(a2)
	regsw_c	x0, 0x1(x6)		# 001100000000000000001
	subw	a4, a4, x4
	add	x2, t5, t1
	subw	t1, t1, t5
	lw	t3, 0(a2)
	subw	t5, t2, t6
	add	t6, t6, t2
	add	t2, t6, x2
	mul	t4, t3, t2
	add	t3, t5, t1
	subw	t2, t1, t5
	regsw_c	x16, 0x0(x9)		# 010011000000000000000
	subw	t1, x2, t6
	blt	x1, x4, .LBB4_130
# %bb.71:
	add	t4, t4, a3
	sraw	t4, t4, a4
	addi	t4, t4, 2
	sraiw	t4, t4, 2
	sw	t4, 0(a0)
	lw	t4, 0(a2)
	mul	t3, t4, t3
	add	t3, t3, a3
	sraw	t3, t3, a4
	addi	t3, t3, 2
	sraiw	t3, t3, 2
	sw	t3, 256(a0)
	lw	t3, 0(a2)
	mul	t2, t3, t2
	add	t2, t2, a3
	sraw	t2, t2, a4
	addi	t2, t2, 2
	sraiw	t2, t2, 2
	sw	t2, 512(a0)
	lw	t2, 0(a2)
	mul	t1, t2, t1
	add	t1, t1, a3
	sraw	t1, t1, a4
	j	.LBB4_131
.LBB4_72:
	lw	a1, 256(a0)
	lw	a0, 272(a0)
	add	a2, s2, s5
	add	a3, a0, a1
	add	a4, s5, a1
	add	s5, s5, a0
	addw	a5, a3, a2
	add	a0, s2, a0
	add	a1, s2, a1
	subw	s2, a4, a0
	slli	a0, s1, 3
	regsw_c	x0, 0x80(x9)		# 010010000000010000000
	add	a0, x5, a0
	slli	s1, x3, 3
	sd	a0, 272(sp)                     # 8-byte Folded Spill
	ld	a0, 0(a0)
	add	s1, x4, s1
	sd	s1, 264(sp)                     # 8-byte Folded Spill
	ld	a4, 0(s1)
	subw	s4, a2, a3
	ld	a0, 0(a0)
	subw	a1, s5, a1
	sd	a1, 280(sp)                     # 8-byte Folded Spill
	ld	a1, 0(a4)
	sraiw	a2, a5, 31
	lw	a0, 0(a0)
	xor	a3, a5, a2
	lw	a1, 0(a1)
	subw	a3, a3, a2
	mul	a0, a0, a3
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	addi	s1, x3, 16
	slli	a1, a1, 1
	add	a0, a1, a0
	sraw	s3, a0, s1
	mv	s5, a5
.LBB4_73:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a2, 937(a0)
	ld	a0, 208(sp)                     # 8-byte Folded Reload
	slli	a0, a0, 2
	lui	a1, 240
	regsw_c	x16, 0x0(x4)		# 001001000000000000000
	sd	x4, 248(sp)                     # 8-byte Folded Spill
	sd	x5, 216(sp)                     # 8-byte Folded Spill
	beqz	a2, .LBB4_81
# %bb.74:
	sllw	s7, a1, a0
	beqz	s3, .LBB4_86
.LBB4_75:
	ld	a1, 232(sp)                     # 8-byte Folded Reload
	ld	a0, 368(a1)
	or	a0, a0, s7
	sd	a0, 368(a1)
	li	s9, 1
	ld	a0, 72(sp)                      # 8-byte Folded Reload
	bgtz	a0, .LBB4_77
# %bb.76:
	li	a0, 1
	sd	a0, 72(sp)                      # 8-byte Folded Spill
.LBB4_77:
	mv	a0, s3
	mv	a1, s5
	call	sign
	sw	a0, 0(s0)
	ld	a0, 288(sp)                     # 8-byte Folded Reload
	sw	zero, 0(a0)
	mv	a0, s3
	mv	a1, s5
	call	sign
	sd	a0, 176(sp)                     # 8-byte Folded Spill
	li	s8, 0
	ld	ra, 224(sp)                     # 8-byte Folded Reload
	sraiw	a0, s2, 31
	xor	a1, s2, a0
	subw	s3, a1, a0
	beqz	ra, .LBB4_87
.LBB4_78:
	sd	s5, 176(sp)                     # 8-byte Folded Spill
	j	.LBB4_88
.LBB4_79:
	slli	s0, s0, 2
	ld	a0, 280(sp)                     # 8-byte Folded Reload
	add	s0, a0, s0
	sw	zero, 0(s0)
	lw	a0, 296(sp)
	lw	a1, 328(sp)
	lw	a2, 312(sp)
	lw	a3, 344(sp)
	add	a4, a1, a0
	subw	a0, a0, a1
	subw	a1, a2, a3
	add	a2, a3, a2
	add	a3, a2, a4
	sw	a3, 296(sp)
	add	a3, a1, a0
	sw	a3, 312(sp)
	subw	a0, a0, a1
	sw	a0, 328(sp)
	subw	a4, a4, a2
	lw	a0, 300(sp)
	lw	a1, 332(sp)
	lw	a2, 316(sp)
	lw	a3, 348(sp)
	sw	a4, 344(sp)
	add	a4, a1, a0
	subw	a0, a0, a1
	subw	a1, a2, a3
	add	a2, a3, a2
	add	a3, a2, a4
	sw	a3, 300(sp)
	add	a3, a1, a0
	sw	a3, 316(sp)
	subw	a0, a0, a1
	sw	a0, 332(sp)
	subw	a4, a4, a2
	lw	a0, 304(sp)
	lw	a1, 336(sp)
	lw	a2, 320(sp)
	lw	a3, 352(sp)
	sw	a4, 348(sp)
	add	a4, a1, a0
	subw	a0, a0, a1
	subw	a1, a2, a3
	add	a2, a3, a2
	add	a6, a2, a4
	sw	a6, 304(sp)
	add	a3, a1, a0
	sw	a3, 320(sp)
	subw	a0, a0, a1
	sw	a0, 336(sp)
	subw	a4, a4, a2
	lw	a0, 308(sp)
	lw	a1, 340(sp)
	lw	a2, 324(sp)
	lw	a3, 356(sp)
	sw	a4, 352(sp)
	add	a4, a1, a0
	subw	a0, a0, a1
	subw	a1, a2, a3
	add	a2, a3, a2
	add	a7, a2, a4
	sw	a7, 308(sp)
	add	a3, a1, a0
	sw	a3, 324(sp)
	subw	a0, a0, a1
	sw	a0, 340(sp)
	subw	a4, a4, a2
	sw	a4, 356(sp)
	ld	s4, 256(sp)                     # 8-byte Folded Reload
	ld	a4, 272(sp)                     # 8-byte Folded Reload
	add	a4, s4, a4
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	regsw_c	x0, 0x1(x17)		# 100010000000000000001
	ld	x3, 184(sp)                     # 8-byte Folded Reload
	addi	a1, x3, -4
	lui	a2, 3
	addiw	a2, a2, 824
	add	a0, a0, a2
	li	t2, 3
	subw	a2, t2, x3
	li	a3, 1
	sllw	a2, a3, a2
	ld	a5, 0(a4)
	li	a3, 4
	lw	t0, 296(sp)
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	subw	a3, a3, x3
	ld	a5, 0(a5)
	lw	t1, 300(sp)
	add	t3, a6, t0
	subw	a6, t0, a6
	lw	t0, 0(a5)
	subw	t4, t1, a7
	add	t5, a7, t1
	add	a7, t5, t3
	mul	t1, t0, a7
	add	t0, t4, a6
	subw	a7, a6, t4
	subw	a6, t3, t5
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	blt	t2, x3, .LBB4_137
# %bb.80:
	add	t1, t1, a2
	sraw	t1, t1, a3
	addi	t1, t1, 2
	sraiw	t1, t1, 2
	sw	t1, 0(a0)
	lw	t1, 0(a5)
	mul	t0, t1, t0
	add	t0, t0, a2
	sraw	t0, t0, a3
	addi	t0, t0, 2
	sraiw	t0, t0, 2
	sw	t0, 256(a0)
	lw	t0, 0(a5)
	mul	a7, t0, a7
	add	a7, a7, a2
	sraw	a7, a7, a3
	addi	a7, a7, 2
	sraiw	a7, a7, 2
	sw	a7, 512(a0)
	lw	a5, 0(a5)
	mul	a5, a5, a6
	add	a5, a5, a2
	sraw	a5, a5, a3
	j	.LBB4_138
.LBB4_81:
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	lw	a2, 40(a2)
	lui	a3, 1
	addiw	a4, a3, -2033
	mv	a3, s3
	blt	s3, a4, .LBB4_83
# %bb.82:
	mv	a3, a4
.LBB4_83:
	li	a4, 4
	blt	a2, a4, .LBB4_85
# %bb.84:
	mv	a3, s3
.LBB4_85:
	mv	s3, a3
	sllw	s7, a1, a0
	bnez	a3, .LBB4_75
.LBB4_86:
	li	s9, 0
	sd	zero, 176(sp)                   # 8-byte Folded Spill
	li	s8, 1
	sraiw	a0, s2, 31
	xor	a1, s2, a0
	subw	s3, a1, a0
	bnez	ra, .LBB4_78
.LBB4_87:
	ld	a0, 272(sp)                     # 8-byte Folded Reload
	ld	a0, 0(a0)
	ld	a1, 264(sp)                     # 8-byte Folded Reload
	ld	a1, 0(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	lw	a0, 0(a0)
	lw	a1, 0(a1)
	mul	a0, a0, s3
	slli	a1, a1, 1
	add	a0, a1, a0
	sraw	s3, a0, s1
.LBB4_88:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 937(a0)
	beqz	a0, .LBB4_94
# %bb.89:
	beqz	s3, .LBB4_99
.LBB4_90:
	ld	a1, 232(sp)                     # 8-byte Folded Reload
	ld	a0, 368(a1)
	or	a0, a0, s7
	sd	a0, 368(a1)
	li	a0, 1
	sd	a0, 24(sp)                      # 8-byte Folded Spill
	ld	a0, 72(sp)                      # 8-byte Folded Reload
	bgtz	a0, .LBB4_92
# %bb.91:
	li	a0, 1
	sd	a0, 72(sp)                      # 8-byte Folded Spill
.LBB4_92:
	mv	a0, s3
	mv	a1, s2
	call	sign
	slli	a1, s9, 2
	add	a2, s0, a1
	sw	a0, 0(a2)
	ld	a0, 288(sp)                     # 8-byte Folded Reload
	add	a1, a0, a1
	sw	s8, 0(a1)
	addi	s9, s9, 1
	mv	a0, s3
	mv	a1, s2
	call	sign
	mv	s5, a0
	li	s8, -1
	ld	ra, 224(sp)                     # 8-byte Folded Reload
	sraiw	a0, s4, 31
	xor	a1, s4, a0
	subw	s3, a1, a0
	beqz	ra, .LBB4_100
.LBB4_93:
	mv	s5, s2
	j	.LBB4_101
.LBB4_94:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a0, 40(a0)
	lui	a1, 1
	addiw	a2, a1, -2033
	mv	a1, s3
	blt	s3, a2, .LBB4_96
# %bb.95:
	mv	a1, a2
.LBB4_96:
	li	a2, 4
	blt	a0, a2, .LBB4_98
# %bb.97:
	mv	a1, s3
.LBB4_98:
	mv	s3, a1
	bnez	a1, .LBB4_90
.LBB4_99:
	li	s5, 0
	sd	s9, 24(sp)                      # 8-byte Folded Spill
	sraiw	a0, s4, 31
	xor	a1, s4, a0
	subw	s3, a1, a0
	bnez	ra, .LBB4_93
.LBB4_100:
	ld	a0, 272(sp)                     # 8-byte Folded Reload
	ld	a0, 0(a0)
	ld	a1, 264(sp)                     # 8-byte Folded Reload
	ld	a1, 0(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	lw	a0, 0(a0)
	lw	a1, 0(a1)
	mul	a0, a0, s3
	slli	a1, a1, 1
	add	a0, a1, a0
	sraw	s3, a0, s1
.LBB4_101:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 937(a0)
	beqz	a0, .LBB4_106
# %bb.102:
	addi	s8, s8, 1
	beqz	s3, .LBB4_111
.LBB4_103:
	ld	a1, 232(sp)                     # 8-byte Folded Reload
	ld	a0, 368(a1)
	or	a0, a0, s7
	sd	a0, 368(a1)
	li	a0, 1
	sd	a0, 24(sp)                      # 8-byte Folded Spill
	ld	a0, 72(sp)                      # 8-byte Folded Reload
	bgtz	a0, .LBB4_105
# %bb.104:
	li	a0, 1
	sd	a0, 72(sp)                      # 8-byte Folded Spill
.LBB4_105:
	mv	a0, s3
	mv	a1, s4
	call	sign
	slli	a1, s9, 2
	add	a2, s0, a1
	sw	a0, 0(a2)
	ld	a0, 288(sp)                     # 8-byte Folded Reload
	add	a1, a0, a1
	sw	s8, 0(a1)
	addi	s9, s9, 1
	mv	a0, s3
	mv	a1, s4
	call	sign
	mv	s2, a0
	li	s8, -1
	ld	ra, 224(sp)                     # 8-byte Folded Reload
	j	.LBB4_112
.LBB4_106:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a0, 40(a0)
	lui	a1, 1
	addiw	a2, a1, -2033
	mv	a1, s3
	blt	s3, a2, .LBB4_108
# %bb.107:
	mv	a1, a2
.LBB4_108:
	li	a2, 4
	blt	a0, a2, .LBB4_110
# %bb.109:
	mv	a1, s3
.LBB4_110:
	mv	s3, a1
	addi	s8, s8, 1
	bnez	a1, .LBB4_103
.LBB4_111:
	li	s2, 0
.LBB4_112:
	ld	a1, 280(sp)                     # 8-byte Folded Reload
	sraiw	a0, a1, 31
	xor	a1, a1, a0
	subw	s3, a1, a0
	beqz	ra, .LBB4_114
# %bb.113:
	mv	s2, s4
	j	.LBB4_115
.LBB4_114:
	ld	a0, 272(sp)                     # 8-byte Folded Reload
	ld	a0, 0(a0)
	ld	a1, 264(sp)                     # 8-byte Folded Reload
	ld	a1, 0(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	lw	a0, 0(a0)
	lw	a1, 0(a1)
	mul	a0, a0, s3
	slli	a1, a1, 1
	add	a0, a1, a0
	sraw	s3, a0, s1
.LBB4_115:
	ld	s1, 240(sp)                     # 8-byte Folded Reload
	ld	s4, 256(sp)                     # 8-byte Folded Reload
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 937(a0)
	beqz	a0, .LBB4_120
# %bb.116:
	beqz	s3, .LBB4_125
.LBB4_117:
	ld	a1, 232(sp)                     # 8-byte Folded Reload
	ld	a0, 368(a1)
	addi	s8, s8, 1
	or	a0, a0, s7
	sd	a0, 368(a1)
	li	a0, 1
	sd	a0, 24(sp)                      # 8-byte Folded Spill
	ld	a0, 72(sp)                      # 8-byte Folded Reload
	bgtz	a0, .LBB4_119
# %bb.118:
	li	a0, 1
	sd	a0, 72(sp)                      # 8-byte Folded Spill
.LBB4_119:
	mv	a0, s3
	ld	s7, 280(sp)                     # 8-byte Folded Reload
	mv	a1, s7
	call	sign
	slli	a1, s9, 2
	add	a2, s0, a1
	sw	a0, 0(a2)
	ld	a0, 288(sp)                     # 8-byte Folded Reload
	add	a1, a0, a1
	sw	s8, 0(a1)
	addi	s9, s9, 1
	mv	a0, s3
	mv	a1, s7
	call	sign
	ld	ra, 224(sp)                     # 8-byte Folded Reload
	j	.LBB4_126
.LBB4_120:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a0, 40(a0)
	lui	a1, 1
	addiw	a2, a1, -2033
	mv	a1, s3
	blt	s3, a2, .LBB4_122
# %bb.121:
	mv	a1, a2
.LBB4_122:
	li	a2, 4
	blt	a0, a2, .LBB4_124
# %bb.123:
	mv	a1, s3
.LBB4_124:
	mv	s3, a1
	bnez	a1, .LBB4_117
.LBB4_125:
	li	a0, 0
.LBB4_126:
	regsw_c	x8, 0x0(x18)		# 100100100000000000000
	ld	x3, 184(sp)                     # 8-byte Folded Reload
	ld	x4, 248(sp)                     # 8-byte Folded Reload
	ld	x5, 216(sp)                     # 8-byte Folded Reload
	slli	s9, s9, 2
	add	s9, s0, s9
	sw	zero, 0(s9)
	beqz	ra, .LBB4_128
# %bb.127:
	ld	t6, 192(sp)                     # 8-byte Folded Reload
	j	.LBB4_148
.LBB4_128:
	ld	a7, 176(sp)                     # 8-byte Folded Reload
	add	a1, s5, a7
	slli	a2, s1, 3
	add	a2, s4, a2
	ld	a2, 0(a2)
	add	a3, a0, s2
	add	a4, a3, a1
	add	a5, a7, s2
	ld	a2, 0(a2)
	add	a6, s5, a0
	subw	a5, a5, a6
	subw	a3, a1, a3
	lw	a6, 0(a2)
	add	s2, s5, s2
	add	a0, a7, a0
	subw	a7, a0, s2
	mul	a0, a6, a4
	mul	a1, a6, a5
	mul	a2, a6, a3
	li	a4, 5
	mul	a3, a6, a7
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bge	x3, a4, .LBB4_135
# %bb.129:
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	subw	a4, a4, x3
	sraw	a0, a0, a4
	sraw	a1, a1, a4
	sraw	a2, a2, a4
	sraw	a3, a3, a4
	j	.LBB4_136
.LBB4_130:
	sllw	t4, t4, a1
	addi	t4, t4, 2
	sraiw	t4, t4, 2
	sw	t4, 0(a0)
	lw	t4, 0(a2)
	mul	t3, t4, t3
	sllw	t3, t3, a1
	addi	t3, t3, 2
	sraiw	t3, t3, 2
	sw	t3, 256(a0)
	lw	t3, 0(a2)
	mul	t2, t3, t2
	sllw	t2, t2, a1
	addi	t2, t2, 2
	sraiw	t2, t2, 2
	sw	t2, 512(a0)
	lw	t2, 0(a2)
	mul	t1, t2, t1
	sllw	t1, t1, a1
.LBB4_131:
	ld	s6, 16(sp)                      # 8-byte Folded Reload
	ld	t6, 192(sp)                     # 8-byte Folded Reload
	addi	t1, t1, 2
	sraiw	t1, t1, 2
	sw	t1, 768(a0)
	add	t1, t0, a6
	subw	a6, a6, t0
	lw	t0, 0(a2)
	subw	t2, a5, a7
	add	a5, a7, a5
	add	a7, a5, t1
	mul	t0, t0, a7
	li	t3, 4
	add	a7, t2, a6
	subw	a6, a6, t2
	subw	a5, t1, a5
	ld	s10, 8(sp)                      # 8-byte Folded Reload
	ld	s11, 0(sp)                      # 8-byte Folded Reload
	regsw_c	x4, 0x0(x16)		# 100000010000000000000
	ld	x3, 184(sp)                     # 8-byte Folded Reload
	ld	s1, 240(sp)                     # 8-byte Folded Reload
	bge	x4, t3, .LBB4_133
# %bb.132:
	add	t0, t0, a3
	sraw	a1, t0, a4
	addi	a1, a1, 2
	sraiw	a1, a1, 2
	sw	a1, 16(a0)
	lw	a1, 0(a2)
	mul	a1, a1, a7
	add	a1, a1, a3
	sraw	a1, a1, a4
	addi	a1, a1, 2
	sraiw	a1, a1, 2
	sw	a1, 272(a0)
	lw	a1, 0(a2)
	mul	a1, a1, a6
	add	a1, a1, a3
	sraw	a1, a1, a4
	addi	a1, a1, 2
	sraiw	a1, a1, 2
	sw	a1, 528(a0)
	lw	a1, 0(a2)
	mul	a1, a1, a5
	add	a1, a1, a3
	sraw	a1, a1, a4
	j	.LBB4_134
.LBB4_133:
	sllw	a3, t0, a1
	addi	a3, a3, 2
	sraiw	a3, a3, 2
	sw	a3, 16(a0)
	lw	a3, 0(a2)
	mul	a3, a3, a7
	sllw	a3, a3, a1
	addi	a3, a3, 2
	sraiw	a3, a3, 2
	sw	a3, 272(a0)
	lw	a3, 0(a2)
	mul	a3, a3, a6
	sllw	a3, a3, a1
	addi	a3, a3, 2
	sraiw	a3, a3, 2
	sw	a3, 528(a0)
	lw	a2, 0(a2)
	mul	a2, a2, a5
	sllw	a1, a2, a1
.LBB4_134:
	addi	a1, a1, 2
	sraiw	a1, a1, 2
	sw	a1, 784(a0)
	regsw_c	x0, 0x0(x18)		# 100100000000000000000
	ld	x4, 248(sp)                     # 8-byte Folded Reload
	ld	x5, 216(sp)                     # 8-byte Folded Reload
	j	.LBB4_148
.LBB4_135:
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	addi	a4, x3, -5
	sllw	a0, a0, a4
	sllw	a1, a1, a4
	sllw	a2, a2, a4
	sllw	a3, a3, a4
.LBB4_136:
	ld	t6, 192(sp)                     # 8-byte Folded Reload
	lui	a4, %hi(img)
	ld	a4, %lo(img)(a4)
	lui	a5, 3
	addiw	a5, a5, 824
	add	a4, a4, a5
	sw	a0, 0(a4)
	sw	a1, 16(a4)
	sw	a2, 256(a4)
	sw	a3, 272(a4)
	j	.LBB4_148
.LBB4_137:
	sllw	t1, t1, a1
	addi	t1, t1, 2
	sraiw	t1, t1, 2
	sw	t1, 0(a0)
	lw	t1, 0(a5)
	mul	t0, t1, t0
	sllw	t0, t0, a1
	addi	t0, t0, 2
	sraiw	t0, t0, 2
	sw	t0, 256(a0)
	lw	t0, 0(a5)
	mul	a7, t0, a7
	sllw	a7, a7, a1
	addi	a7, a7, 2
	sraiw	a7, a7, 2
	sw	a7, 512(a0)
	lw	a5, 0(a5)
	mul	a5, a5, a6
	sllw	a5, a5, a1
.LBB4_138:
	regsw_c	x0, 0x0(x18)		# 100100000000000000000
	ld	x4, 248(sp)                     # 8-byte Folded Reload
	ld	x5, 216(sp)                     # 8-byte Folded Reload
	addi	a5, a5, 2
	sraiw	a5, a5, 2
	sw	a5, 768(a0)
	ld	a5, 0(a4)
	lw	a6, 312(sp)
	lw	a7, 320(sp)
	lw	t0, 316(sp)
	ld	a5, 0(a5)
	lw	t1, 324(sp)
	add	t2, a7, a6
	subw	a6, a6, a7
	lw	a7, 0(a5)
	subw	t3, t0, t1
	add	t4, t1, t0
	add	t0, t4, t2
	mul	t1, a7, t0
	li	t5, 4
	add	t0, t3, a6
	subw	a7, a6, t3
	subw	a6, t2, t4
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bge	x3, t5, .LBB4_140
# %bb.139:
	add	t1, t1, a2
	sraw	t1, t1, a3
	addi	t1, t1, 2
	sraiw	t1, t1, 2
	sw	t1, 16(a0)
	lw	t1, 0(a5)
	mul	t0, t1, t0
	add	t0, t0, a2
	sraw	t0, t0, a3
	addi	t0, t0, 2
	sraiw	t0, t0, 2
	sw	t0, 272(a0)
	lw	t0, 0(a5)
	mul	a7, t0, a7
	add	a7, a7, a2
	sraw	a7, a7, a3
	addi	a7, a7, 2
	sraiw	a7, a7, 2
	sw	a7, 528(a0)
	lw	a5, 0(a5)
	mul	a5, a5, a6
	add	a5, a5, a2
	sraw	a5, a5, a3
	j	.LBB4_141
.LBB4_140:
	sllw	t1, t1, a1
	addi	t1, t1, 2
	sraiw	t1, t1, 2
	sw	t1, 16(a0)
	lw	t1, 0(a5)
	mul	t0, t1, t0
	sllw	t0, t0, a1
	addi	t0, t0, 2
	sraiw	t0, t0, 2
	sw	t0, 272(a0)
	lw	t0, 0(a5)
	mul	a7, t0, a7
	sllw	a7, a7, a1
	addi	a7, a7, 2
	sraiw	a7, a7, 2
	sw	a7, 528(a0)
	lw	a5, 0(a5)
	mul	a5, a5, a6
	sllw	a5, a5, a1
.LBB4_141:
	ld	s6, 16(sp)                      # 8-byte Folded Reload
	ld	s10, 8(sp)                      # 8-byte Folded Reload
	ld	s11, 0(sp)                      # 8-byte Folded Reload
	ld	s1, 240(sp)                     # 8-byte Folded Reload
	ld	t6, 192(sp)                     # 8-byte Folded Reload
	addi	a5, a5, 2
	sraiw	a5, a5, 2
	sw	a5, 784(a0)
	ld	a5, 0(a4)
	lw	a6, 328(sp)
	lw	a7, 336(sp)
	lw	t0, 332(sp)
	ld	a5, 0(a5)
	lw	t1, 340(sp)
	add	t2, a7, a6
	subw	a6, a6, a7
	lw	a7, 0(a5)
	subw	t3, t0, t1
	add	t4, t1, t0
	add	t0, t4, t2
	mul	t1, a7, t0
	li	t5, 4
	add	t0, t3, a6
	subw	a7, a6, t3
	subw	a6, t2, t4
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bge	x3, t5, .LBB4_143
# %bb.142:
	add	t1, t1, a2
	sraw	t1, t1, a3
	addi	t1, t1, 2
	sraiw	t1, t1, 2
	sw	t1, 32(a0)
	lw	t1, 0(a5)
	mul	t0, t1, t0
	add	t0, t0, a2
	sraw	t0, t0, a3
	addi	t0, t0, 2
	sraiw	t0, t0, 2
	sw	t0, 288(a0)
	lw	t0, 0(a5)
	mul	a7, t0, a7
	add	a7, a7, a2
	sraw	a7, a7, a3
	addi	a7, a7, 2
	sraiw	a7, a7, 2
	sw	a7, 544(a0)
	lw	a5, 0(a5)
	mul	a5, a5, a6
	add	a5, a5, a2
	sraw	a5, a5, a3
	j	.LBB4_144
.LBB4_143:
	sllw	t1, t1, a1
	addi	t1, t1, 2
	sraiw	t1, t1, 2
	sw	t1, 32(a0)
	lw	t1, 0(a5)
	mul	t0, t1, t0
	sllw	t0, t0, a1
	addi	t0, t0, 2
	sraiw	t0, t0, 2
	sw	t0, 288(a0)
	lw	t0, 0(a5)
	mul	a7, t0, a7
	sllw	a7, a7, a1
	addi	a7, a7, 2
	sraiw	a7, a7, 2
	sw	a7, 544(a0)
	lw	a5, 0(a5)
	mul	a5, a5, a6
	sllw	a5, a5, a1
.LBB4_144:
	addi	a5, a5, 2
	sraiw	a5, a5, 2
	sw	a5, 800(a0)
	ld	a4, 0(a4)
	lw	a5, 344(sp)
	lw	a6, 352(sp)
	lw	a7, 348(sp)
	ld	a4, 0(a4)
	lw	t0, 356(sp)
	add	t1, a6, a5
	subw	a5, a5, a6
	lw	a6, 0(a4)
	subw	t2, a7, t0
	add	t3, t0, a7
	add	a7, t3, t1
	mul	t0, a6, a7
	li	t4, 4
	add	a7, t2, a5
	subw	a6, a5, t2
	subw	a5, t1, t3
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bge	x3, t4, .LBB4_146
# %bb.145:
	add	t0, t0, a2
	sraw	a1, t0, a3
	addi	a1, a1, 2
	sraiw	a1, a1, 2
	sw	a1, 48(a0)
	lw	a1, 0(a4)
	mul	a1, a1, a7
	add	a1, a1, a2
	sraw	a1, a1, a3
	addi	a1, a1, 2
	sraiw	a1, a1, 2
	sw	a1, 304(a0)
	lw	a1, 0(a4)
	mul	a1, a1, a6
	add	a1, a1, a2
	sraw	a1, a1, a3
	addi	a1, a1, 2
	sraiw	a1, a1, 2
	sw	a1, 560(a0)
	lw	a1, 0(a4)
	mul	a1, a1, a5
	add	a1, a1, a2
	sraw	a1, a1, a3
	j	.LBB4_147
.LBB4_146:
	sllw	a2, t0, a1
	addi	a2, a2, 2
	sraiw	a2, a2, 2
	sw	a2, 48(a0)
	lw	a2, 0(a4)
	mul	a2, a2, a7
	sllw	a2, a2, a1
	addi	a2, a2, 2
	sraiw	a2, a2, 2
	sw	a2, 304(a0)
	lw	a2, 0(a4)
	mul	a2, a2, a6
	sllw	a2, a2, a1
	addi	a2, a2, 2
	sraiw	a2, a2, 2
	sw	a2, 560(a0)
	lw	a2, 0(a4)
	mul	a2, a2, a5
	sllw	a1, a2, a1
.LBB4_147:
	addi	a1, a1, 2
	sraiw	a1, a1, 2
	sw	a1, 816(a0)
.LBB4_148:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 22
	addiw	a3, a1, 428
	sd	a3, 64(sp)                      # 8-byte Folded Spill
	add	a3, a0, a3
	lw	a1, 0(a3)
	li	a2, 2
	ld	a4, 208(sp)                     # 8-byte Folded Reload
	mulw	s0, t6, a4
	blt	a1, a2, .LBB4_173
# %bb.149:
	li	a5, 0
	li	s3, 0
	li	a1, 0
	regsw_c	x0, 0x18a(x8)		# 010000000000110001010
	addi	a3, x3, 15
	addi	a0, s0, 4
	sd	a0, 48(sp)                      # 8-byte Folded Spill
	slli	a0, s1, 3
	add	x5, x5, a0
	sd	x5, 264(sp)                     # 8-byte Folded Spill
	slli	a2, x3, 3
	regsw_c	x0, 0x2(x8)		# 010000000000000000010
	add	a2, x4, a2
	sd	a2, 192(sp)                     # 8-byte Folded Spill
	li	a2, 1
	sd	a3, 272(sp)                     # 8-byte Folded Spill
	sllw	a3, a2, a3
	sd	a3, 168(sp)                     # 8-byte Folded Spill
	addi	a3, x3, 16
	sd	a3, 160(sp)                     # 8-byte Folded Spill
	add	a0, s4, a0
	sd	a0, 176(sp)                     # 8-byte Folded Spill
	regsw_c	x0, 0x200(x8)		# 010000000001000000000
	addi	a0, x3, -4
	sd	a0, 152(sp)                     # 8-byte Folded Spill
	li	a0, 3
	subw	a0, a0, x3
	sllw	a0, a2, a0
	sd	a0, 144(sp)                     # 8-byte Folded Spill
	li	a0, 4
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	subw	a0, a0, x3
	sd	a0, 136(sp)                     # 8-byte Folded Spill
	addi	a0, s10, 3
	sd	a0, 88(sp)                      # 8-byte Folded Spill
	addi	a0, s10, 33
	sd	a0, 280(sp)                     # 8-byte Folded Spill
	slli	a0, s11, 4
	lui	a2, %hi(hor_offset)
	addi	a2, a2, %lo(hor_offset)
	add	a2, a2, a0
	sd	a2, 40(sp)                      # 8-byte Folded Spill
	lui	a2, %hi(ver_offset)
	addi	a2, a2, %lo(ver_offset)
	add	a0, a2, a0
	sd	a0, 32(sp)                      # 8-byte Folded Spill
	lui	a0, 244
	addi	a0, a0, 575
	sd	a0, 216(sp)                     # 8-byte Folded Spill
	sd	s0, 56(sp)                      # 8-byte Folded Spill
	j	.LBB4_151
.LBB4_150:                              #   in Loop: Header=BB4_151 Depth=1
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	ld	a3, 64(sp)                      # 8-byte Folded Reload
	add	a3, a0, a3
	lw	a2, 0(a3)
	ld	a5, 80(sp)                      # 8-byte Folded Reload
	addi	a5, a5, 1
	srai	a4, a2, 1
	ld	s0, 56(sp)                      # 8-byte Folded Reload
	bge	a5, a4, .LBB4_174
.LBB4_151:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_153 Depth 2
                                        #       Child Loop BB4_156 Depth 3
	li	a6, 0
	ld	a0, 48(sp)                      # 8-byte Folded Reload
	addw	a0, a0, a5
	add	a2, a5, s0
	sd	a5, 80(sp)                      # 8-byte Folded Spill
	slli	a3, a5, 2
	ld	a4, 40(sp)                      # 8-byte Folded Reload
	add	a4, a4, a3
	sd	a4, 120(sp)                     # 8-byte Folded Spill
	ld	a4, 32(sp)                      # 8-byte Folded Reload
	add	a3, a4, a3
	sd	a3, 112(sp)                     # 8-byte Folded Spill
	slli	a0, a0, 3
	sd	a0, 104(sp)                     # 8-byte Folded Spill
	slli	a2, a2, 2
	lui	a0, %hi(cbp_blk_chroma)
	addi	a0, a0, %lo(cbp_blk_chroma)
	add	a0, a0, a2
	sd	a0, 96(sp)                      # 8-byte Folded Spill
	j	.LBB4_153
.LBB4_152:                              #   in Loop: Header=BB4_153 Depth=2
	slli	s7, s7, 2
	ld	a0, 256(sp)                     # 8-byte Folded Reload
	add	s7, a0, s7
	ld	a6, 128(sp)                     # 8-byte Folded Reload
	addi	a6, a6, 1
	sw	zero, 0(s7)
	li	a0, 4
	beq	a6, a0, .LBB4_150
.LBB4_153:                              #   Parent Loop BB4_151 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_156 Depth 3
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a2, 3
	add	a0, a0, a2
	ld	a0, 1848(a0)
	ld	a2, 104(sp)                     # 8-byte Folded Reload
	add	a0, a0, a2
	ld	a0, 0(a0)
	ld	a2, 120(sp)                     # 8-byte Folded Reload
	add	a2, a2, a6
	slli	a3, a6, 3
	add	a0, a0, a3
	ld	a0, 0(a0)
	lbu	a2, 0(a2)
	sd	a2, 288(sp)                     # 8-byte Folded Spill
	ld	a2, 112(sp)                     # 8-byte Folded Reload
	add	a2, a2, a6
	lbu	s4, 0(a2)
	ld	a2, 0(a0)
	sd	a2, 256(sp)                     # 8-byte Folded Spill
	ld	a0, 8(a0)
	sd	a0, 248(sp)                     # 8-byte Folded Spill
	li	s7, 0
	sd	a6, 128(sp)                     # 8-byte Folded Spill
	ld	a0, 96(sp)                      # 8-byte Folded Reload
	add	a0, a0, a6
	sd	a0, 240(sp)                     # 8-byte Folded Spill
	li	s6, -1
	ld	s11, 88(sp)                     # 8-byte Folded Reload
	j	.LBB4_156
.LBB4_154:                              #   in Loop: Header=BB4_156 Depth=3
	li	a1, 2
	li	s6, -1
.LBB4_155:                              #   in Loop: Header=BB4_156 Depth=3
	addi	s11, s11, 2
	ld	a0, 280(sp)                     # 8-byte Folded Reload
	beq	s11, a0, .LBB4_152
.LBB4_156:                              #   Parent Loop BB4_151 Depth=1
                                        #     Parent Loop BB4_153 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lbu	s5, 0(s11)
	lui	a0, %hi(img)
	ld	a2, %lo(img)(a0)
	lbu	s10, -1(s11)
	add	s9, s5, s4
	slli	s0, s9, 6
	add	a0, a2, s0
	ld	s8, 288(sp)                     # 8-byte Folded Reload
	add	s8, s10, s8
	slli	s1, s8, 2
	lui	a3, 3
	add	a3, s1, a3
	add	a0, a0, a3
	lw	a3, 824(a0)
	sraiw	a4, a3, 31
	xor	a3, a3, a4
	subw	s2, a3, a4
	bnez	ra, .LBB4_158
# %bb.157:                              #   in Loop: Header=BB4_156 Depth=3
	ld	a3, 264(sp)                     # 8-byte Folded Reload
	ld	a3, 0(a3)
	ld	a4, 192(sp)                     # 8-byte Folded Reload
	ld	a4, 0(a4)
	slli	a5, s10, 3
	add	a3, a3, a5
	ld	a3, 0(a3)
	add	a4, a4, a5
	ld	a4, 0(a4)
	slli	a5, s5, 2
	add	a3, a3, a5
	lw	a3, 0(a3)
	add	a4, a4, a5
	lw	a4, 0(a4)
	mul	a3, a3, s2
	add	a3, a4, a3
	ld	a4, 272(sp)                     # 8-byte Folded Reload
	sraw	s2, a3, a4
.LBB4_158:                              #   in Loop: Header=BB4_156 Depth=3
	lui	a3, 22
	add	a3, a2, a3
	lw	a3, 100(a3)
	addiw	s6, s6, 1
	beqz	a3, .LBB4_161
# %bb.159:                              #   in Loop: Header=BB4_156 Depth=3
	seqz	a3, s2
	or	a5, ra, a3
	ld	a4, 200(sp)                     # 8-byte Folded Reload
	slli	a4, a4, 11
	ld	a3, 208(sp)                     # 8-byte Folded Reload
	slli	a3, a3, 10
	beqz	a5, .LBB4_164
# %bb.160:                              #   in Loop: Header=BB4_156 Depth=3
	add	a2, a2, a4
	add	a2, a2, a3
	add	a2, a2, s0
	lui	a3, 5
	add	a3, s1, a3
	add	a2, a2, a3
	sw	zero, 840(a2)
.LBB4_161:                              #   in Loop: Header=BB4_156 Depth=3
	bnez	s2, .LBB4_165
# %bb.162:                              #   in Loop: Header=BB4_156 Depth=3
	bnez	ra, .LBB4_155
# %bb.163:                              #   in Loop: Header=BB4_156 Depth=3
	li	a0, 0
	j	.LBB4_172
.LBB4_164:                              #   in Loop: Header=BB4_156 Depth=3
	ld	a1, 264(sp)                     # 8-byte Folded Reload
	ld	a1, 0(a1)
	slli	a5, s10, 3
	add	a1, a1, a5
	ld	a1, 0(a1)
	lui	a5, %hi(AdaptRndWeight)
	lw	a5, %lo(AdaptRndWeight)(a5)
	lw	a6, 824(a0)
	slli	a7, s5, 2
	add	a1, a1, a7
	lw	a1, 0(a1)
	sraiw	a7, a6, 31
	xor	a6, a6, a7
	subw	a6, a6, a7
	mul	a1, a1, a6
	ld	a6, 272(sp)                     # 8-byte Folded Reload
	sllw	a6, s2, a6
	subw	a1, a1, a6
	mul	a1, a1, a5
	ld	a5, 168(sp)                     # 8-byte Folded Reload
	add	a1, a1, a5
	ld	a5, 160(sp)                     # 8-byte Folded Reload
	sraw	a1, a1, a5
	add	a2, a2, a4
	add	a2, a2, a3
	add	a2, a2, s0
	lui	a3, 5
	add	a3, s1, a3
	add	a2, a2, a3
	sw	a1, 840(a2)
.LBB4_165:                              #   in Loop: Header=BB4_156 Depth=3
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	lbu	a1, 0(a1)
	ld	a4, 232(sp)                     # 8-byte Folded Reload
	ld	a2, 368(a4)
	li	a3, 1
	sll	a1, a3, a1
	or	a1, a1, a2
	slti	a2, s2, 2
	xori	a2, a2, 1
	or	a3, a2, ra
	sd	a1, 368(a4)
	ld	a2, 216(sp)                     # 8-byte Folded Reload
	bnez	a3, .LBB4_167
# %bb.166:                              #   in Loop: Header=BB4_156 Depth=3
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	addi	a1, a1, 2047
	lw	a1, 1093(a1)
	slli	a1, a1, 4
	lui	a2, %hi(COEFF_COST)
	addi	a2, a2, %lo(COEFF_COST)
	add	a2, a2, s6
	add	a1, a2, a1
	lbu	a2, 0(a1)
.LBB4_167:                              #   in Loop: Header=BB4_156 Depth=3
	lw	a1, 824(a0)
	addw	s3, s3, a2
	mv	a0, s2
	call	sign
	slli	a1, s7, 2
	ld	a2, 256(sp)                     # 8-byte Folded Reload
	add	a2, a2, a1
	lui	a3, %hi(img)
	ld	a3, %lo(img)(a3)
	sw	a0, 0(a2)
	ld	a0, 248(sp)                     # 8-byte Folded Reload
	add	a1, a0, a1
	sw	s6, 0(a1)
	add	a3, a3, s0
	lui	a0, 3
	add	s1, s1, a0
	add	a3, a3, s1
	lw	a1, 824(a3)
	addiw	s7, s7, 1
	mv	a0, s2
	call	sign
	ld	ra, 224(sp)                     # 8-byte Folded Reload
	bnez	ra, .LBB4_154
# %bb.168:                              #   in Loop: Header=BB4_156 Depth=3
	ld	a1, 176(sp)                     # 8-byte Folded Reload
	ld	a1, 0(a1)
	slli	s10, s10, 3
	add	a1, a1, s10
	ld	a1, 0(a1)
	slli	s5, s5, 2
	add	a1, a1, s5
	lw	a1, 0(a1)
	mul	a0, a1, a0
	ld	a1, 184(sp)                     # 8-byte Folded Reload
	li	a2, 3
	blt	a2, a1, .LBB4_170
# %bb.169:                              #   in Loop: Header=BB4_156 Depth=3
	ld	a1, 144(sp)                     # 8-byte Folded Reload
	add	a0, a0, a1
	ld	a1, 136(sp)                     # 8-byte Folded Reload
	sraw	a0, a0, a1
	j	.LBB4_171
.LBB4_170:                              #   in Loop: Header=BB4_156 Depth=3
	ld	a1, 152(sp)                     # 8-byte Folded Reload
	sllw	a0, a0, a1
.LBB4_171:                              #   in Loop: Header=BB4_156 Depth=3
	li	a1, 2
	li	s6, -1
.LBB4_172:                              #   in Loop: Header=BB4_156 Depth=3
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	slli	s9, s9, 6
	add	a2, a2, s9
	slli	s8, s8, 2
	lui	a3, 3
	add	s8, s8, a3
	add	a2, a2, s8
	sw	a0, 824(a2)
	j	.LBB4_155
.LBB4_173:
	li	a4, 0
	li	a5, 0
	mv	a6, ra
	j	.LBB4_175
.LBB4_174:
	slti	a4, s3, 4
	xori	a4, a4, 1
	or	a6, a4, ra
	slti	a2, a2, 2
	xori	a4, a2, 1
	addi	a1, a1, -2
	seqz	a5, a1
	ld	s6, 16(sp)                      # 8-byte Folded Reload
	ld	s10, 8(sp)                      # 8-byte Folded Reload
	ld	s11, 0(sp)                      # 8-byte Folded Reload
.LBB4_175:
	lui	a1, 22
	addiw	a2, a1, 424
	add	a2, a0, a2
	lui	a1, 3
	addiw	a1, a1, 312
	add	a1, a0, a1
	beqz	a6, .LBB4_179
# %bb.176:
	li	a3, 2
	bnez	a5, .LBB4_178
# %bb.177:
	ld	a3, 72(sp)                      # 8-byte Folded Reload
.LBB4_178:
	sd	a3, 72(sp)                      # 8-byte Folded Spill
	j	.LBB4_187
.LBB4_179:
	beqz	a4, .LBB4_187
# %bb.180:
	li	a4, 0
	ld	a5, 1536(a1)
	addi	s0, s0, 4
	lui	a6, 3
	addiw	a6, a6, 824
	add	a6, a0, a6
	slli	a7, s11, 3
	lui	t0, %hi(.L__const.dct_chroma.cbpblk_pattern)
	addi	t0, t0, %lo(.L__const.dct_chroma.cbpblk_pattern)
	add	a7, t0, a7
	addi	t0, s11, 1
	ld	t1, 208(sp)                     # 8-byte Folded Reload
	sllw	t0, t1, t0
	slli	t2, s11, 4
	lui	t1, %hi(ver_offset)
	addi	t1, t1, %lo(ver_offset)
	add	t1, t1, t2
	lui	t3, %hi(hor_offset)
	addi	t3, t3, %lo(hor_offset)
	add	t2, t3, t2
	ld	s7, 24(sp)                      # 8-byte Folded Reload
	j	.LBB4_182
.LBB4_181:                              #   in Loop: Header=BB4_182 Depth=1
	lw	t3, 0(a3)
	addi	a4, a4, 1
	srai	t3, t3, 1
	addi	t1, t1, 4
	addi	t2, t2, 4
	bge	a4, t3, .LBB4_187
.LBB4_182:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_184 Depth 2
                                        #     Child Loop BB4_186 Depth 2
	addw	t3, s0, a4
	slli	t3, t3, 3
	add	t3, a5, t3
	ld	t3, 0(t3)
	addi	t4, t3, 32
	beqz	s7, .LBB4_185
# %bb.183:                              #   in Loop: Header=BB4_182 Depth=1
	lbu	t5, 16(s10)
	lbu	t6, 17(s10)
	regsw_c	x9, 0x124(x18)		# 100100100100100100100
	lbu	x1, 2(s10)
	lbu	x2, 3(s10)
	lbu	x3, 4(s10)
	lbu	x4, 5(s10)
	lbu	x5, 6(s10)
	lbu	x6, 7(s10)
	lbu	x7, 8(s10)
	regsw_c	x9, 0x124(x18)		# 100100100100100100100
	lbu	x8, 9(s10)
	lbu	x9, 10(s10)
	lbu	x10, 11(s10)
	lbu	x11, 12(s10)
	lbu	x12, 13(s10)
	lbu	x13, 14(s10)
	lbu	x14, 15(s10)
	regsw_c	x9, 0x124(x18)		# 100100100100100100100
	lbu	x15, 18(s10)
	lbu	x16, 19(s10)
	lbu	x17, 20(s10)
	lbu	x18, 21(s10)
	lbu	x19, 22(s10)
	lbu	x20, 23(s10)
	lbu	x21, 24(s10)
	regsw_c	x9, 0x124(x18)		# 100100100100100100100
	lbu	x22, 25(s10)
	lbu	x23, 26(s10)
	lbu	x24, 27(s10)
	lbu	x25, 28(s10)
	lbu	x26, 29(s10)
	lbu	x27, 30(s10)
	lbu	x28, 31(s10)
	regsw_c	x0, 0x0(x18)		# 100100000000000000000
	mv	x29, t2
	mv	x30, t1
.LBB4_184:                              #   Parent Loop BB4_182 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	regsw_c	x4, 0x492(x19)		# 100110010010010010010
	ld	x31, 0(t3)
	ld	x31, 0(x31)
	lbu	s1, 0(x30)
	lbu	s2, 0(x29)
	sw	zero, 0(x31)
	add	s3, x2, s1
	add	s4, x1, s2
	slli	s3, s3, 6
	add	s3, a6, s3
	slli	s4, s4, 2
	add	s3, s3, s4
	sw	zero, 0(s3)
	regsw_c	x4, 0x0(x9)		# 010010010000000000000
	sw	zero, 4(x31)
	add	s3, x4, s1
	add	s4, x3, s2
	slli	s3, s3, 6
	add	s3, a6, s3
	slli	s4, s4, 2
	add	s3, s3, s4
	sw	zero, 0(s3)
	regsw_c	x4, 0x0(x9)		# 010010010000000000000
	sw	zero, 8(x31)
	add	s3, x6, s1
	add	s4, x5, s2
	slli	s3, s3, 6
	add	s3, a6, s3
	slli	s4, s4, 2
	add	s3, s3, s4
	sw	zero, 0(s3)
	regsw_c	x4, 0x0(x9)		# 010010010000000000000
	sw	zero, 12(x31)
	add	s3, x8, s1
	add	s4, x7, s2
	slli	s3, s3, 6
	add	s3, a6, s3
	slli	s4, s4, 2
	add	s3, s3, s4
	sw	zero, 0(s3)
	regsw_c	x4, 0x0(x9)		# 010010010000000000000
	sw	zero, 16(x31)
	add	s3, x10, s1
	add	s4, x9, s2
	slli	s3, s3, 6
	add	s3, a6, s3
	slli	s4, s4, 2
	add	s3, s3, s4
	sw	zero, 0(s3)
	regsw_c	x4, 0x0(x9)		# 010010010000000000000
	sw	zero, 20(x31)
	add	s3, x12, s1
	add	s4, x11, s2
	slli	s3, s3, 6
	add	s3, a6, s3
	slli	s4, s4, 2
	add	s3, s3, s4
	sw	zero, 0(s3)
	regsw_c	x4, 0x0(x9)		# 010010010000000000000
	sw	zero, 24(x31)
	add	s3, x14, s1
	add	s4, x13, s2
	slli	s3, s3, 6
	add	s3, a6, s3
	slli	s4, s4, 2
	add	s3, s3, s4
	sw	zero, 0(s3)
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	sw	zero, 28(x31)
	add	s3, t6, s1
	add	s4, t5, s2
	slli	s3, s3, 6
	add	s3, a6, s3
	slli	s4, s4, 2
	add	s3, s3, s4
	sw	zero, 0(s3)
	regsw_c	x4, 0x0(x9)		# 010010010000000000000
	sw	zero, 32(x31)
	add	s3, x16, s1
	add	s4, x15, s2
	slli	s3, s3, 6
	add	s3, a6, s3
	slli	s4, s4, 2
	add	s3, s3, s4
	sw	zero, 0(s3)
	regsw_c	x4, 0x0(x9)		# 010010010000000000000
	sw	zero, 36(x31)
	add	s3, x18, s1
	add	s4, x17, s2
	slli	s3, s3, 6
	add	s3, a6, s3
	slli	s4, s4, 2
	add	s3, s3, s4
	sw	zero, 0(s3)
	regsw_c	x4, 0x0(x9)		# 010010010000000000000
	sw	zero, 40(x31)
	add	s3, x20, s1
	add	s4, x19, s2
	slli	s3, s3, 6
	add	s3, a6, s3
	slli	s4, s4, 2
	add	s3, s3, s4
	sw	zero, 0(s3)
	regsw_c	x4, 0x0(x9)		# 010010010000000000000
	sw	zero, 44(x31)
	add	s3, x22, s1
	add	s4, x21, s2
	slli	s3, s3, 6
	add	s3, a6, s3
	slli	s4, s4, 2
	add	s3, s3, s4
	sw	zero, 0(s3)
	regsw_c	x4, 0x0(x9)		# 010010010000000000000
	sw	zero, 48(x31)
	add	s3, x24, s1
	add	s4, x23, s2
	slli	s3, s3, 6
	add	s3, a6, s3
	slli	s4, s4, 2
	add	s3, s3, s4
	sw	zero, 0(s3)
	regsw_c	x4, 0x0(x9)		# 010010010000000000000
	sw	zero, 52(x31)
	add	s3, x26, s1
	add	s4, x25, s2
	slli	s3, s3, 6
	add	s3, a6, s3
	slli	s4, s4, 2
	add	s3, s3, s4
	sw	zero, 0(s3)
	regsw_c	x4, 0x0(x9)		# 010010010000000000000
	sw	zero, 56(x31)
	add	s1, x28, s1
	add	s2, x27, s2
	slli	s1, s1, 6
	add	s1, a6, s1
	slli	s2, s2, 2
	add	s1, s1, s2
	sw	zero, 0(s1)
	regsw_c	x13, 0x400(x8)		# 010000110110000000000
	sw	zero, 60(x31)
	addi	t3, t3, 8
	addi	x30, x30, 1
	addi	x29, x29, 1
	bne	t3, t4, .LBB4_184
	j	.LBB4_181
.LBB4_185:                              #   in Loop: Header=BB4_182 Depth=1
	regsw_c	x8, 0x24(x16)		# 100000100000000100100
	ld	x29, 0(a7)
	ld	t5, 232(sp)                     # 8-byte Folded Reload
	ld	x30, 368(t5)
	lbu	t5, 16(s10)
	lbu	t6, 17(s10)
	lbu	x1, 2(s10)
	lbu	x2, 3(s10)
	regsw_c	x9, 0x124(x18)		# 100100100100100100100
	lbu	x3, 4(s10)
	lbu	x4, 5(s10)
	lbu	x5, 6(s10)
	lbu	x6, 7(s10)
	lbu	x7, 8(s10)
	lbu	x8, 9(s10)
	lbu	x9, 10(s10)
	regsw_c	x9, 0x124(x18)		# 100100100100100100100
	lbu	x10, 11(s10)
	lbu	x11, 12(s10)
	lbu	x12, 13(s10)
	lbu	x13, 14(s10)
	lbu	x14, 15(s10)
	lbu	x15, 18(s10)
	lbu	x16, 19(s10)
	regsw_c	x9, 0x124(x18)		# 100100100100100100100
	lbu	x17, 20(s10)
	lbu	x18, 21(s10)
	lbu	x19, 22(s10)
	lbu	x20, 23(s10)
	lbu	x21, 24(s10)
	lbu	x22, 25(s10)
	lbu	x23, 26(s10)
	regsw_c	x9, 0x136(x18)		# 100100100100100110110
	lbu	x24, 27(s10)
	lbu	x25, 28(s10)
	lbu	x26, 29(s10)
	lbu	x27, 30(s10)
	lbu	x28, 31(s10)
	sll	x29, x29, t0
	not	x29, x29
	regsw_c	x8, 0x0(x30)		# 111100100000000000000
	and	x29, x30, x29
	mv	x30, t2
	mv	x31, t1
.LBB4_186:                              #   Parent Loop BB4_182 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	s1, 0(t3)
	ld	s1, 0(s1)
	regsw_c	x0, 0x212(x9)		# 010010000001000010010
	lbu	s2, 0(x31)
	lbu	s3, 0(x30)
	ld	s4, 232(sp)                     # 8-byte Folded Reload
	sd	x29, 368(s4)
	sw	zero, 0(s1)
	add	s4, x2, s2
	add	s5, x1, s3
	slli	s4, s4, 6
	add	s4, a6, s4
	slli	s5, s5, 2
	add	s4, s4, s5
	sw	zero, 0(s4)
	sw	zero, 4(s1)
	regsw_c	x0, 0x0(x9)		# 010010000000000000000
	add	s4, x4, s2
	add	s5, x3, s3
	slli	s4, s4, 6
	add	s4, a6, s4
	slli	s5, s5, 2
	add	s4, s4, s5
	sw	zero, 0(s4)
	sw	zero, 8(s1)
	regsw_c	x0, 0x0(x9)		# 010010000000000000000
	add	s4, x6, s2
	add	s5, x5, s3
	slli	s4, s4, 6
	add	s4, a6, s4
	slli	s5, s5, 2
	add	s4, s4, s5
	sw	zero, 0(s4)
	sw	zero, 12(s1)
	regsw_c	x0, 0x0(x9)		# 010010000000000000000
	add	s4, x8, s2
	add	s5, x7, s3
	slli	s4, s4, 6
	add	s4, a6, s4
	slli	s5, s5, 2
	add	s4, s4, s5
	sw	zero, 0(s4)
	sw	zero, 16(s1)
	regsw_c	x0, 0x0(x9)		# 010010000000000000000
	add	s4, x10, s2
	add	s5, x9, s3
	slli	s4, s4, 6
	add	s4, a6, s4
	slli	s5, s5, 2
	add	s4, s4, s5
	sw	zero, 0(s4)
	sw	zero, 20(s1)
	regsw_c	x0, 0x0(x9)		# 010010000000000000000
	add	s4, x12, s2
	add	s5, x11, s3
	slli	s4, s4, 6
	add	s4, a6, s4
	slli	s5, s5, 2
	add	s4, s4, s5
	sw	zero, 0(s4)
	sw	zero, 24(s1)
	regsw_c	x0, 0x0(x9)		# 010010000000000000000
	add	s4, x14, s2
	add	s5, x13, s3
	slli	s4, s4, 6
	add	s4, a6, s4
	slli	s5, s5, 2
	add	s4, s4, s5
	sw	zero, 0(s4)
	sw	zero, 28(s1)
	add	s4, t6, s2
	add	s5, t5, s3
	slli	s4, s4, 6
	add	s4, a6, s4
	slli	s5, s5, 2
	add	s4, s4, s5
	sw	zero, 0(s4)
	sw	zero, 32(s1)
	regsw_c	x0, 0x0(x9)		# 010010000000000000000
	add	s4, x16, s2
	add	s5, x15, s3
	slli	s4, s4, 6
	add	s4, a6, s4
	slli	s5, s5, 2
	add	s4, s4, s5
	sw	zero, 0(s4)
	sw	zero, 36(s1)
	regsw_c	x0, 0x0(x9)		# 010010000000000000000
	add	s4, x18, s2
	add	s5, x17, s3
	slli	s4, s4, 6
	add	s4, a6, s4
	slli	s5, s5, 2
	add	s4, s4, s5
	sw	zero, 0(s4)
	sw	zero, 40(s1)
	regsw_c	x0, 0x0(x9)		# 010010000000000000000
	add	s4, x20, s2
	add	s5, x19, s3
	slli	s4, s4, 6
	add	s4, a6, s4
	slli	s5, s5, 2
	add	s4, s4, s5
	sw	zero, 0(s4)
	sw	zero, 44(s1)
	regsw_c	x0, 0x0(x9)		# 010010000000000000000
	add	s4, x22, s2
	add	s5, x21, s3
	slli	s4, s4, 6
	add	s4, a6, s4
	slli	s5, s5, 2
	add	s4, s4, s5
	sw	zero, 0(s4)
	sw	zero, 48(s1)
	regsw_c	x0, 0x0(x9)		# 010010000000000000000
	add	s4, x24, s2
	add	s5, x23, s3
	slli	s4, s4, 6
	add	s4, a6, s4
	slli	s5, s5, 2
	add	s4, s4, s5
	sw	zero, 0(s4)
	sw	zero, 52(s1)
	regsw_c	x0, 0x0(x9)		# 010010000000000000000
	add	s4, x26, s2
	add	s5, x25, s3
	slli	s4, s4, 6
	add	s4, a6, s4
	slli	s5, s5, 2
	add	s4, s4, s5
	sw	zero, 0(s4)
	sw	zero, 56(s1)
	regsw_c	x0, 0x0(x9)		# 010010000000000000000
	add	s2, x28, s2
	add	s3, x27, s3
	slli	s2, s2, 6
	add	s2, a6, s2
	slli	s3, s3, 2
	add	s2, s2, s3
	sw	zero, 0(s2)
	sw	zero, 60(s1)
	addi	t3, t3, 8
	regsw_c	x0, 0x0(x27)		# 110110000000000000000
	addi	x31, x31, 1
	addi	x30, x30, 1
	bne	t3, t4, .LBB4_186
	j	.LBB4_181
.LBB4_187:
	lw	a7, 24(a2)
	slti	a3, a7, 1
	or	a3, a3, ra
	beqz	a3, .LBB4_199
.LBB4_188:
	lw	a3, 36(a2)
	bnez	a3, .LBB4_198
# %bb.189:
	blez	a7, .LBB4_198
# %bb.190:
	lw	t0, 20(a2)
	blez	t0, .LBB4_198
# %bb.191:
	li	a2, 0
	addi	a3, a1, 512
	lw	a4, 164(a0)
	lw	a5, 160(a0)
	slli	a6, t0, 2
	lui	t1, 3
	addiw	t1, t1, 312
	add	a6, a6, t1
	addi	a6, a6, 512
	slli	t0, t0, 1
	add	t0, t0, t1
	lui	t1, %hi(enc_picture)
	lui	t2, 2
	j	.LBB4_193
.LBB4_192:                              #   in Loop: Header=BB4_193 Depth=1
	addi	a2, a2, 1
	addi	a3, a3, 64
	addi	a1, a1, 32
	beq	a2, a7, .LBB4_198
.LBB4_193:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_197 Depth 2
                                        #     Child Loop BB4_195 Depth 2
	ld	t3, %lo(enc_picture)(t1)
	add	t3, t3, t2
	ld	t3, -1728(t3)
	add	t4, a4, a2
	add	t3, t3, s6
	ld	t3, 0(t3)
	slli	t4, t4, 48
	srai	t4, t4, 48
	slli	t4, t4, 3
	add	t3, t3, t4
	ld	t3, 0(t3)
	beqz	ra, .LBB4_196
# %bb.194:                              #   in Loop: Header=BB4_193 Depth=1
	slli	t4, a2, 5
	add	t4, t0, t4
	add	t4, a0, t4
	mv	t5, a5
	mv	t6, a3
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x1, a1
.LBB4_195:                              #   Parent Loop BB4_193 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	regsw_c	x15, 0x1b5(x19)		# 100110111100110110101
	lh	x2, 0(t6)
	lh	x3, 0(x1)
	add	x2, x3, x2
	slli	x3, t5, 48
	srai	x3, x3, 48
	slli	x3, x3, 1
	add	x3, t3, x3
	regsw_c	x0, 0x80(x15)		# 011110000000010000000
	sh	x2, 0(x3)
	addi	x1, x1, 2
	addi	t6, t6, 4
	addi	t5, t5, 1
	bne	x1, t4, .LBB4_195
	j	.LBB4_192
.LBB4_196:                              #   in Loop: Header=BB4_193 Depth=1
	slli	t4, a2, 6
	add	t4, a6, t4
	add	t4, a0, t4
	mv	t5, a5
	mv	t6, a3
.LBB4_197:                              #   Parent Loop BB4_193 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	regsw_c	x13, 0x558(x18)		# 100100110110101011000
	lh	x1, 0(t6)
	slli	x2, t5, 48
	srai	x2, x2, 48
	slli	x2, x2, 1
	add	x2, t3, x2
	sh	x1, 0(x2)
	addi	t6, t6, 4
	addi	t5, t5, 1
	bne	t6, t4, .LBB4_197
	j	.LBB4_192
.LBB4_198:
	ld	a0, 72(sp)                      # 8-byte Folded Reload
	ld	ra, 520(sp)                     # 8-byte Folded Reload
	ld	s0, 512(sp)                     # 8-byte Folded Reload
	ld	s1, 504(sp)                     # 8-byte Folded Reload
	ld	s2, 496(sp)                     # 8-byte Folded Reload
	ld	s3, 488(sp)                     # 8-byte Folded Reload
	ld	s4, 480(sp)                     # 8-byte Folded Reload
	ld	s5, 472(sp)                     # 8-byte Folded Reload
	ld	s6, 464(sp)                     # 8-byte Folded Reload
	ld	s7, 456(sp)                     # 8-byte Folded Reload
	ld	s8, 448(sp)                     # 8-byte Folded Reload
	ld	s9, 440(sp)                     # 8-byte Folded Reload
	ld	s10, 432(sp)                    # 8-byte Folded Reload
	ld	s11, 424(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 528
	ret
.LBB4_199:
	lui	a4, 3
	addiw	a4, a4, 824
	lw	t6, 20(a2)
	add	a4, a0, a4
	addi	a5, a1, 640
	addi	a6, a1, 64
	j	.LBB4_202
.LBB4_200:                              #   in Loop: Header=BB4_202 Depth=1
	lw	a7, 24(a2)
.LBB4_201:                              #   in Loop: Header=BB4_202 Depth=1
	addi	a3, a3, 4
	addi	a5, a5, 256
	addi	a6, a6, 128
	bge	a3, a7, .LBB4_188
.LBB4_202:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_205 Depth 2
                                        #       Child Loop BB4_208 Depth 3
	blez	t6, .LBB4_201
# %bb.203:                              #   in Loop: Header=BB4_202 Depth=1
	li	a7, 0
	addi	t1, a3, 1
	addi	t2, a3, 2
	addi	t3, a3, 3
	slli	t0, a3, 6
	add	t0, a4, t0
	slli	t1, t1, 6
	add	t1, a4, t1
	slli	t2, t2, 6
	add	t2, a4, t2
	slli	t3, t3, 6
	add	t3, a4, t3
	mv	t4, a6
	mv	t5, a5
	j	.LBB4_205
.LBB4_204:                              #   in Loop: Header=BB4_205 Depth=2
	lw	t6, 20(a2)
	addi	a7, a7, 4
	addi	t5, t5, 16
	addi	t4, t4, 8
	bge	a7, t6, .LBB4_200
.LBB4_205:                              #   Parent Loop BB4_202 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_208 Depth 3
	slli	t6, a7, 2
	regsw_c	x9, 0x3a5(x19)		# 100110100101110100101
	add	x1, t0, t6
	lw	x2, 0(x1)
	addi	x3, t6, 4
	add	x4, t0, x3
	lw	x5, 0(x4)
	addi	x6, t6, 8
	add	x7, t0, x6
	regsw_c	x11, 0x5fe(x26)		# 110100101110111111110
	lw	x8, 0(x7)
	addi	x9, t6, 12
	add	x10, t0, x9
	lw	x11, 0(x10)
	add	x12, x8, x2
	subw	x2, x2, x8
	srli	x8, x5, 1
	regsw_c	x15, 0x6fb(x31)		# 111110111111011111011
	subw	x8, x8, x11
	srli	x11, x11, 1
	add	x5, x11, x5
	add	x11, x5, x12
	sw	x11, 0(x1)
	add	x1, x8, x2
	sw	x1, 0(x4)
	regsw_c	x30, 0x735(x29)		# 111011111011100110101
	subw	x1, x2, x8
	sw	x1, 0(x7)
	subw	x1, x12, x5
	sw	x1, 0(x10)
	add	x1, t1, t6
	lw	x2, 0(x1)
	add	x4, t1, x3
	regsw_c	x13, 0x3bf(x23)		# 101110110101110111111
	add	x5, t1, x6
	lw	x7, 0(x5)
	lw	x8, 0(x4)
	add	x10, t1, x9
	lw	x11, 0(x10)
	add	x12, x7, x2
	subw	x2, x2, x7
	regsw_c	x29, 0x7df(x27)		# 110111110111111011111
	srli	x7, x8, 1
	subw	x7, x7, x11
	srli	x11, x11, 1
	add	x8, x11, x8
	add	x11, x8, x12
	sw	x11, 0(x1)
	add	x1, x7, x2
	regsw_c	x23, 0x6e6(x15)		# 011111011111011100110
	sw	x1, 0(x4)
	subw	x1, x2, x7
	sw	x1, 0(x5)
	subw	x1, x12, x8
	sw	x1, 0(x10)
	add	x1, t2, t6
	lw	x2, 0(x1)
	regsw_c	x29, 0x577(x22)		# 101101110110101110111
	add	x4, t2, x3
	add	x5, t2, x6
	lw	x7, 0(x5)
	lw	x8, 0(x4)
	add	x10, t2, x9
	lw	x11, 0(x10)
	add	x12, x7, x2
	regsw_c	x15, 0x5fb(x31)		# 111110111110111111011
	subw	x2, x2, x7
	srli	x7, x8, 1
	subw	x7, x7, x11
	srli	x11, x11, 1
	add	x8, x11, x8
	add	x11, x8, x12
	sw	x11, 0(x1)
	regsw_c	x30, 0x7d8(x29)		# 111011111011111011000
	add	x1, x7, x2
	sw	x1, 0(x4)
	subw	x1, x2, x7
	sw	x1, 0(x5)
	subw	x1, x12, x8
	sw	x1, 0(x10)
	add	t6, t3, t6
	regsw_c	x27, 0x5ae(x18)		# 100101101110110101110
	lw	x1, 0(t6)
	add	x3, t3, x3
	add	x6, t3, x6
	lw	x2, 0(x6)
	lw	x4, 0(x3)
	add	x9, t3, x9
	lw	x5, 0(x9)
	regsw_c	x29, 0x7bf(x31)		# 111111110111110111111
	add	x7, x2, x1
	subw	x1, x1, x2
	srli	x2, x4, 1
	subw	x2, x2, x5
	srli	x5, x5, 1
	add	x4, x5, x4
	add	x5, x4, x7
	regsw_c	x20, 0x69a(x5)		# 001011010011010011010
	sw	x5, 0(t6)
	add	t6, x2, x1
	sw	t6, 0(x3)
	subw	t6, x1, x2
	sw	t6, 0(x6)
	subw	t6, x7, x4
	sw	t6, 0(x9)
	li	t6, 4
	regsw_c	x0, 0x0(x18)		# 100100000000000000000
	mv	x1, t4
	mv	x2, t5
	j	.LBB4_208
.LBB4_206:                              #   in Loop: Header=BB4_208 Depth=3
	regsw_c	x7, 0x59e(x27)		# 110110011110110011110
	addi	x6, x6, 32
	sraiw	x6, x6, 6
	sw	x6, -128(x2)
	addi	x5, x5, 32
	sraiw	x5, x5, 6
	sw	x5, -64(x2)
	addi	x4, x4, 32
	regsw_c	x29, 0x400(x25)		# 110011110110000000000
	sraiw	x4, x4, 6
	sw	x4, 0(x2)
	addi	x3, x3, 32
	sraiw	x3, x3, 6
.LBB4_207:                              #   in Loop: Header=BB4_208 Depth=3
	regsw_c	x13, 0x400(x12)		# 011000110110000000000
	sw	x3, 64(x2)
	addi	t6, t6, -1
	addi	x2, x2, 4
	addi	x1, x1, 2
	beqz	t6, .LBB4_204
.LBB4_208:                              #   Parent Loop BB4_202 Depth=1
                                        #     Parent Loop BB4_205 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	regsw_c	x13, 0x5fe(x27)		# 110110110110111111110
	lw	x3, -128(x2)
	lw	x4, 0(x2)
	lw	x5, -64(x2)
	lw	x6, 64(x2)
	add	x7, x4, x3
	subw	x3, x3, x4
	srli	x4, x5, 1
	regsw_c	x15, 0x1ff(x31)		# 111110111100111111111
	subw	x4, x4, x6
	srli	x6, x6, 1
	add	x8, x6, x5
	lw	x9, 36(a2)
	addw	x6, x8, x7
	addw	x5, x4, x3
	subw	x4, x3, x4
	regsw_c	x0, 0x0(x29)		# 111010000000000000000
	subw	x3, x7, x8
	bnez	x9, .LBB4_206
# %bb.209:                              #   in Loop: Header=BB4_208 Depth=3
	regsw_c	x13, 0x7b5(x26)		# 110100110111110110101
	lhu	x8, -64(x1)
	lw	x7, 0(a2)
	slli	x8, x8, 6
	add	x6, x6, x8
	addi	x6, x6, 32
	srai	x6, x6, 6
	sgtz	x8, x6
	regsw_c	x22, 0x0(x27)		# 110111011000000000000
	neg	x8, x8
	and	x6, x8, x6
	blt	x6, x7, .LBB4_211
# %bb.210:                              #   in Loop: Header=BB4_208 Depth=3
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	mv	x6, x7
.LBB4_211:                              #   in Loop: Header=BB4_208 Depth=3
	regsw_c	x25, 0x5f6(x25)		# 110011100110111110110
	lhu	x7, -32(x1)
	sw	x6, -128(x2)
	lw	x6, 0(a2)
	slli	x7, x7, 6
	add	x5, x5, x7
	addi	x5, x5, 32
	srai	x5, x5, 6
	regsw_c	x14, 0x600(x23)		# 101110111011000000000
	sgtz	x7, x5
	neg	x7, x7
	and	x5, x7, x5
	blt	x5, x6, .LBB4_213
# %bb.212:                              #   in Loop: Header=BB4_208 Depth=3
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	mv	x5, x6
.LBB4_213:                              #   in Loop: Header=BB4_208 Depth=3
	regsw_c	x25, 0x5f6(x25)		# 110011100110111110110
	lhu	x6, 0(x1)
	sw	x5, -64(x2)
	lw	x5, 0(a2)
	slli	x6, x6, 6
	add	x4, x4, x6
	addi	x4, x4, 32
	srai	x4, x4, 6
	regsw_c	x14, 0x600(x23)		# 101110111011000000000
	sgtz	x6, x4
	neg	x6, x6
	and	x4, x6, x4
	blt	x4, x5, .LBB4_215
# %bb.214:                              #   in Loop: Header=BB4_208 Depth=3
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	mv	x4, x5
.LBB4_215:                              #   in Loop: Header=BB4_208 Depth=3
	regsw_c	x25, 0x5f6(x25)		# 110011100110111110110
	lhu	x5, 32(x1)
	sw	x4, 0(x2)
	lw	x4, 0(a2)
	slli	x5, x5, 6
	add	x3, x3, x5
	addi	x3, x3, 32
	srai	x3, x3, 6
	regsw_c	x14, 0x600(x23)		# 101110111011000000000
	sgtz	x5, x3
	neg	x5, x5
	and	x3, x5, x3
	blt	x3, x4, .LBB4_207
# %bb.216:                              #   in Loop: Header=BB4_208 Depth=3
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	mv	x3, x4
	j	.LBB4_207
.Lfunc_end4:
	.size	dct_chroma, .Lfunc_end4-dct_chroma
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	dct_chroma4x4                   # -- Begin function dct_chroma4x4
	.p2align	2
	.type	dct_chroma4x4,@function
dct_chroma4x4:                          # @dct_chroma4x4
# %bb.0:
	addi	sp, sp, -192
	sd	ra, 184(sp)                     # 8-byte Folded Spill
	sd	s0, 176(sp)                     # 8-byte Folded Spill
	sd	s1, 168(sp)                     # 8-byte Folded Spill
	sd	s2, 160(sp)                     # 8-byte Folded Spill
	sd	s3, 152(sp)                     # 8-byte Folded Spill
	sd	s4, 144(sp)                     # 8-byte Folded Spill
	sd	s5, 136(sp)                     # 8-byte Folded Spill
	sd	s6, 128(sp)                     # 8-byte Folded Spill
	sd	s7, 120(sp)                     # 8-byte Folded Spill
	sd	s8, 112(sp)                     # 8-byte Folded Spill
	sd	s9, 104(sp)                     # 8-byte Folded Spill
	sd	s10, 96(sp)                     # 8-byte Folded Spill
	sd	s11, 88(sp)                     # 8-byte Folded Spill
	lui	a3, %hi(img)
	ld	a3, %lo(img)(a3)
	mv	s1, a2
	mv	s2, a1
	mv	s0, a0
	li	s4, 0
	lui	a2, 22
	addiw	a1, a2, 380
	add	a1, a3, a1
	lui	a0, 8
	add	a4, a3, a0
	lui	a0, 3
	addiw	a0, a0, 824
	lw	a5, 12(a3)
	add	a0, a3, a0
	ld	a4, -1192(a4)
	li	a6, 528
	mul	a5, a5, a6
	ld	a6, 1024(a0)
	add	a4, a4, a5
	lw	a5, 72(a4)
	slli	a7, s2, 3
	add	a6, a6, a7
	ld	a6, 0(a6)
	lw	a7, 0(a1)
	lw	t0, 40(a3)
	slli	t1, s1, 3
	add	a6, a6, t1
	negw	a7, a7
	addiw	a5, a5, -9
	bne	t0, a7, .LBB5_2
# %bb.1:
	lw	a7, 60(a1)
	addi	a7, a7, -1
	seqz	s4, a7
.LBB5_2:
	lw	a7, 12(a4)
	slli	a4, s0, 2
	add	a2, a4, a2
	add	a2, a3, a2
	lw	a2, 452(a2)
	ld	a4, 0(a6)
	addw	a2, a2, a7
	andi	a3, a5, -6
	bltz	a2, .LBB5_4
# %bb.3:
	lui	a5, %hi(QP_SCALE_CR)
	addi	a5, a5, %lo(QP_SCALE_CR)
	add	a2, a5, a2
	lbu	a2, 0(a2)
.LBB5_4:
	ld	a5, 0(a4)
	sd	a5, 80(sp)                      # 8-byte Folded Spill
	ld	a4, 8(a4)
	sd	a4, 72(sp)                      # 8-byte Folded Spill
	lw	a1, 4(a1)
	lui	a4, %hi(qp_per_matrix)
	ld	a4, %lo(qp_per_matrix)(a4)
	seqz	a3, a3
	addw	a1, a1, a2
	slli	a1, a1, 2
	add	a4, a4, a1
	lw	s6, 0(a4)
	lui	a2, %hi(LevelScale4x4Chroma)
	ld	a2, %lo(LevelScale4x4Chroma)(a2)
	lui	a4, %hi(qp_rem_matrix)
	ld	a4, %lo(qp_rem_matrix)(a4)
	slli	a5, s0, 3
	add	a2, a2, a5
	ld	a2, 0(a2)
	add	a1, a4, a1
	lw	a1, 0(a1)
	slli	a3, a3, 3
	add	a2, a2, a3
	ld	a2, 0(a2)
	slli	a1, a1, 3
	lui	a4, %hi(LevelOffset4x4Chroma)
	ld	a4, %lo(LevelOffset4x4Chroma)(a4)
	lui	a6, %hi(InvLevelScale4x4Chroma)
	ld	a6, %lo(InvLevelScale4x4Chroma)(a6)
	add	a2, a2, a1
	add	a4, a4, a5
	ld	a4, 0(a4)
	add	a5, a6, a5
	ld	a5, 0(a5)
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	ld	x5, 0(a2)
	add	a4, a4, a3
	ld	a2, 0(a4)
	add	a3, a5, a3
	ld	a3, 0(a3)
	slli	a4, s6, 3
	add	a2, a2, a4
	regsw_c	x0, 0x109(x16)		# 100000000000100001001
	ld	x6, 0(a2)
	add	a1, a3, a1
	ld	a1, 0(a1)
	sd	a1, 32(sp)                      # 8-byte Folded Spill
	addi	x7, s6, 15
	sd	x5, 64(sp)                      # 8-byte Folded Spill
	sd	x6, 56(sp)                      # 8-byte Folded Spill
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	sd	x7, 48(sp)                      # 8-byte Folded Spill
	beqz	s4, .LBB5_6
# %bb.5:
	lw	a1, 0(a0)
	sraiw	a0, a1, 31
	xor	a2, a1, a0
	subw	s3, a2, a0
	j	.LBB5_7
.LBB5_6:
	lw	a1, 0(a0)
	lw	a2, 12(a0)
	lw	a3, 4(a0)
	lw	a4, 8(a0)
	add	a5, a2, a1
	subw	a1, a1, a2
	add	a2, a4, a3
	subw	a3, a3, a4
	add	a4, a2, a5
	subw	a5, a5, a2
	slli	a2, a1, 1
	add	a2, a2, a3
	slli	a3, a3, 1
	lw	a6, 64(a0)
	lw	a7, 76(a0)
	lw	t0, 68(a0)
	lw	t1, 72(a0)
	subw	a3, a1, a3
	add	a1, a7, a6
	subw	a6, a6, a7
	add	a7, t1, t0
	subw	t0, t0, t1
	add	t1, a7, a1
	subw	a7, a1, a7
	slli	a1, a6, 1
	add	t2, a1, t0
	slli	t0, t0, 1
	lw	a1, 128(a0)
	lw	t3, 140(a0)
	lw	t4, 132(a0)
	lw	t5, 136(a0)
	subw	a6, a6, t0
	add	t0, t3, a1
	subw	a1, a1, t3
	add	t3, t5, t4
	subw	t4, t4, t5
	add	t5, t3, t0
	subw	t0, t0, t3
	slli	t3, a1, 1
	add	t3, t3, t4
	slli	t4, t4, 1
	lw	t6, 192(a0)
	regsw_c	x8, 0x8f(x18)		# 100100100000010001111
	lw	x1, 204(a0)
	lw	x2, 196(a0)
	lw	x3, 200(a0)
	subw	t4, a1, t4
	add	a1, x1, t6
	subw	t6, t6, x1
	add	x1, x3, x2
	regsw_c	x10, 0x171(x31)		# 111110101000101110001
	subw	x2, x2, x3
	add	x3, x1, a1
	subw	x1, a1, x1
	slli	a1, t6, 1
	add	x4, a1, x2
	slli	x2, x2, 1
	subw	t6, t6, x2
	regsw_c	x24, 0xc3(x24)		# 110001100000011000011
	add	x2, x3, a4
	subw	a4, a4, x3
	add	x3, t5, t1
	subw	t1, t1, t5
	addw	a1, x3, x2
	sw	a1, 0(a0)
	subw	t5, x2, x3
	sw	t5, 128(a0)
	slli	t5, a4, 1
	add	t5, t5, t1
	sw	t5, 64(a0)
	slli	t1, t1, 1
	subw	a4, a4, t1
	sw	a4, 192(a0)
	regsw_c	x16, 0x0(x8)		# 010001000000000000000
	add	a4, x4, a2
	subw	a2, a2, x4
	add	t1, t3, t2
	subw	t2, t2, t3
	add	t3, t1, a4
	sw	t3, 4(a0)
	subw	a4, a4, t1
	sw	a4, 132(a0)
	slli	a4, a2, 1
	add	a4, a4, t2
	sw	a4, 68(a0)
	slli	t2, t2, 1
	subw	a2, a2, t2
	sw	a2, 196(a0)
	regsw_c	x16, 0x0(x8)		# 010001000000000000000
	add	a2, x1, a5
	subw	a4, a5, x1
	add	a5, t0, a7
	subw	a7, a7, t0
	add	t0, a5, a2
	sw	t0, 8(a0)
	subw	a2, a2, a5
	sw	a2, 136(a0)
	slli	a2, a4, 1
	add	a2, a2, a7
	sw	a2, 72(a0)
	slli	a7, a7, 1
	subw	a2, a4, a7
	sw	a2, 200(a0)
	add	a2, t6, a3
	subw	a3, a3, t6
	add	a4, t4, a6
	subw	a5, a6, t4
	add	a6, a4, a2
	sw	a6, 12(a0)
	subw	a2, a2, a4
	sw	a2, 140(a0)
	slli	a2, a3, 1
	add	a2, a2, a5
	sw	a2, 76(a0)
	slli	a5, a5, 1
	subw	a3, a3, a5
	regsw_c	x0, 0x0(x9)		# 010010000000000000000
	ld	a2, 0(x5)
	ld	a4, 0(x6)
	sw	a3, 204(a0)
	sraiw	a0, a1, 31
	lw	a2, 0(a2)
	lw	a3, 0(a4)
	xor	a4, a1, a0
	subw	a4, a4, a0
	mul	a0, a2, a4
	add	a0, a3, a0
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	sraw	s3, a0, x7
.LBB5_7:
	slli	a0, s0, 2
	subw	s5, s2, a0
	mv	a0, s3
	call	sign
	slli	s2, s2, 1
	andi	a1, s2, 2
	andi	a2, s1, 1
	or	a1, a1, a2
	andi	a2, s5, -2
	srli	s1, s1, 1
	add	a2, a2, s1
	addiw	a2, a2, -4
	slli	s0, s0, 6
	lui	a3, %hi(dc_level_temp)
	addi	a3, a3, %lo(dc_level_temp)
	add	a3, a3, s0
	slli	a1, a1, 4
	add	a1, a3, a1
	slli	a2, a2, 2
	add	a1, a1, a2
	sw	a0, 0(a1)
	addi	a0, s6, -4
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	bnez	s4, .LBB5_11
# %bb.8:
	ld	a0, 32(sp)                      # 8-byte Folded Reload
	ld	a0, 0(a0)
	lw	a0, 0(a0)
	li	a1, 3
	mul	a0, a0, s3
	blt	a1, s6, .LBB5_10
# %bb.9:
	subw	a1, a1, s6
	li	a2, 1
	sllw	a1, a2, a1
	add	a0, a0, a1
	li	a1, 4
	subw	a1, a1, s6
	sraw	s3, a0, a1
	j	.LBB5_11
.LBB5_10:
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	sllw	s3, a0, a1
.LBB5_11:
	lui	s2, %hi(img)
	ld	a0, %lo(img)(s2)
	lui	s10, 3
	add	a0, a0, s10
	lw	a1, 824(a0)
	mv	a0, s3
	call	sign
	ld	a1, %lo(img)(s2)
	li	s3, 0
	sd	zero, 40(sp)                    # 8-byte Folded Spill
	add	a1, a1, s10
	sw	a0, 824(a1)
	li	a0, 3
	subw	a0, a0, s6
	li	s0, 1
	sllw	a0, s0, a0
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	li	a0, 4
	sd	s6, 24(sp)                      # 8-byte Folded Spill
	subw	a0, a0, s6
	sd	a0, 0(sp)                       # 8-byte Folded Spill
	li	s9, -1
	li	s8, 16
	j	.LBB5_13
.LBB5_12:                               #   in Loop: Header=BB5_13 Depth=1
	addi	s0, s0, 1
	beq	s0, s8, .LBB5_26
.LBB5_13:                               # =>This Inner Loop Header: Depth=1
	slli	a0, s0, 1
	lui	a1, %hi(SNGL_SCAN)
	addi	a1, a1, %lo(SNGL_SCAN)
	add	a0, a1, a0
	lbu	s11, 1(a0)
	ld	a1, %lo(img)(s2)
	lbu	s6, 0(a0)
	slli	s5, s11, 6
	add	a1, a1, s5
	slli	s7, s6, 2
	add	a0, s7, s10
	add	a0, a1, a0
	lw	a1, 824(a0)
	addi	s9, s9, 1
	sraiw	a0, a1, 31
	xor	s1, a1, a0
	subw	s1, s1, a0
	beqz	s4, .LBB5_15
# %bb.14:                               #   in Loop: Header=BB5_13 Depth=1
	bnez	a1, .LBB5_16
	j	.LBB5_12
.LBB5_15:                               #   in Loop: Header=BB5_13 Depth=1
	slli	a0, s6, 3
	ld	a2, 64(sp)                      # 8-byte Folded Reload
	add	a2, a2, a0
	ld	a2, 0(a2)
	ld	a3, 56(sp)                      # 8-byte Folded Reload
	add	a0, a3, a0
	ld	a0, 0(a0)
	slli	a3, s11, 2
	add	a2, a2, a3
	lw	a2, 0(a2)
	add	a0, a0, a3
	lw	a0, 0(a0)
	mul	a2, a2, s1
	add	a0, a0, a2
	ld	a2, 48(sp)                      # 8-byte Folded Reload
	sraw	s1, a0, a2
	beqz	s1, .LBB5_21
.LBB5_16:                               #   in Loop: Header=BB5_13 Depth=1
	or	a0, s6, s11
	beqz	a0, .LBB5_18
# %bb.17:                               #   in Loop: Header=BB5_13 Depth=1
	li	a0, 1
	sd	a0, 40(sp)                      # 8-byte Folded Spill
.LBB5_18:                               #   in Loop: Header=BB5_13 Depth=1
	mv	a0, s1
	call	sign
	slli	a1, s3, 2
	ld	a2, 80(sp)                      # 8-byte Folded Reload
	add	a2, a2, a1
	ld	a3, %lo(img)(s2)
	sw	a0, 0(a2)
	ld	a0, 72(sp)                      # 8-byte Folded Reload
	add	a1, a0, a1
	sw	s9, 0(a1)
	add	a3, a3, s5
	add	a0, s7, s10
	add	a0, a3, a0
	lw	a1, 824(a0)
	addiw	s3, s3, 1
	mv	a0, s1
	call	sign
	li	s9, -1
	bnez	s4, .LBB5_12
# %bb.19:                               #   in Loop: Header=BB5_13 Depth=1
	slli	s6, s6, 3
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	add	s6, a1, s6
	ld	a1, 0(s6)
	slli	s11, s11, 2
	add	a1, a1, s11
	lw	a1, 0(a1)
	mul	a0, a1, a0
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	li	a2, 3
	blt	a2, a1, .LBB5_22
# %bb.20:                               #   in Loop: Header=BB5_13 Depth=1
	ld	a1, 8(sp)                       # 8-byte Folded Reload
	add	a0, a0, a1
	ld	a1, 0(sp)                       # 8-byte Folded Reload
	sraw	a0, a0, a1
	j	.LBB5_23
.LBB5_21:                               #   in Loop: Header=BB5_13 Depth=1
	li	a0, 0
	j	.LBB5_24
.LBB5_22:                               #   in Loop: Header=BB5_13 Depth=1
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	sllw	a0, a0, a1
.LBB5_23:                               #   in Loop: Header=BB5_13 Depth=1
	li	s9, -1
.LBB5_24:                               #   in Loop: Header=BB5_13 Depth=1
	ld	a1, %lo(img)(s2)
	addi	s0, s0, 1
	add	a1, a1, s5
	add	s7, s7, s10
	add	a1, a1, s7
	sw	a0, 824(a1)
	bne	s0, s8, .LBB5_13
# %bb.25:
	slli	s3, s3, 2
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	add	s3, a0, s3
	sw	zero, 0(s3)
	j	.LBB5_27
.LBB5_26:
	slli	s3, s3, 2
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	add	s3, a0, s3
	sw	zero, 0(s3)
	bnez	s4, .LBB5_28
.LBB5_27:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 3
	addiw	a1, a1, 824
	add	a0, a0, a1
	lw	a1, 0(a0)
	lw	a2, 8(a0)
	lw	a3, 4(a0)
	lw	a4, 12(a0)
	add	a5, a2, a1
	subw	a1, a1, a2
	srai	a2, a3, 1
	subw	a2, a2, a4
	srai	a4, a4, 1
	add	a3, a4, a3
	add	a4, a3, a5
	subw	a5, a5, a3
	add	a3, a2, a1
	lw	a6, 64(a0)
	lw	a7, 72(a0)
	subw	a1, a1, a2
	lw	a2, 68(a0)
	lw	t0, 76(a0)
	add	t1, a7, a6
	subw	a6, a6, a7
	srli	a7, a2, 1
	subw	a7, a7, t0
	srli	t0, t0, 1
	add	a2, t0, a2
	add	t0, a2, t1
	subw	a2, t1, a2
	add	t1, a7, a6
	lw	t2, 128(a0)
	lw	t3, 136(a0)
	subw	a6, a6, a7
	lw	a7, 132(a0)
	lw	t4, 140(a0)
	add	t5, t3, t2
	subw	t2, t2, t3
	srai	t3, a7, 1
	subw	t3, t3, t4
	srai	t4, t4, 1
	add	a7, t4, a7
	add	t4, a7, t5
	subw	a7, t5, a7
	add	t5, t3, t2
	lw	t6, 192(a0)
	regsw_c	x1, 0x18c(x16)		# 100000000100110001100
	lw	x1, 200(a0)
	subw	t2, t2, t3
	lw	t3, 196(a0)
	lw	x2, 204(a0)
	add	x3, x1, t6
	subw	t6, t6, x1
	srai	x1, t3, 1
	regsw_c	x5, 0x2b1(x31)		# 111110010101010110001
	subw	x1, x1, x2
	srai	x2, x2, 1
	add	t3, x2, t3
	add	x2, t3, x3
	subw	t3, x3, t3
	add	x3, x1, t6
	subw	t6, t6, x1
	regsw_c	x0, 0x396(x16)		# 100000000001110010110
	add	x1, t4, a4
	subw	a4, a4, t4
	sraiw	t4, t0, 1
	subw	t4, t4, x2
	sraiw	x2, x2, 1
	add	t0, x2, t0
	addi	x1, x1, 32
	regsw_c	x2, 0x400(x27)		# 110110001010000000000
	add	x2, x1, t0
	sraiw	x2, x2, 6
	sw	x2, 0(a0)
	subw	t0, x1, t0
	sraiw	t0, t0, 6
	sw	t0, 192(a0)
	addi	a4, a4, 32
	add	t0, a4, t4
	sraiw	t0, t0, 6
	sw	t0, 64(a0)
	subw	a4, a4, t4
	sraiw	a4, a4, 6
	sw	a4, 128(a0)
	add	a4, t5, a3
	subw	a3, a3, t5
	sraiw	t0, t1, 1
	regsw_c	x0, 0x0(x5)		# 001010000000000000000
	subw	t0, t0, x3
	sraiw	t4, x3, 1
	add	t1, t4, t1
	addi	a4, a4, 32
	add	t4, a4, t1
	sraiw	t4, t4, 6
	sw	t4, 4(a0)
	subw	a4, a4, t1
	sraiw	a4, a4, 6
	sw	a4, 196(a0)
	addi	a3, a3, 32
	add	a4, a3, t0
	sraiw	a4, a4, 6
	sw	a4, 68(a0)
	subw	a3, a3, t0
	sraiw	a3, a3, 6
	sw	a3, 132(a0)
	add	a3, t2, a1
	subw	a1, a1, t2
	sraiw	a4, a6, 1
	subw	a4, a4, t6
	sraiw	t0, t6, 1
	add	a6, t0, a6
	addi	a3, a3, 32
	add	t0, a3, a6
	sraiw	t0, t0, 6
	sw	t0, 8(a0)
	subw	a3, a3, a6
	sraiw	a3, a3, 6
	sw	a3, 200(a0)
	addi	a1, a1, 32
	add	a3, a1, a4
	sraiw	a3, a3, 6
	sw	a3, 72(a0)
	subw	a1, a1, a4
	sraiw	a1, a1, 6
	sw	a1, 136(a0)
	add	a1, a7, a5
	subw	a3, a5, a7
	sraiw	a4, a2, 1
	subw	a4, a4, t3
	sraiw	a5, t3, 1
	add	a2, a5, a2
	addi	a1, a1, 32
	add	a5, a1, a2
	sraiw	a5, a5, 6
	sw	a5, 12(a0)
	subw	a1, a1, a2
	sraiw	a1, a1, 6
	sw	a1, 204(a0)
	addi	a1, a3, 32
	add	a2, a1, a4
	sraiw	a2, a2, 6
	sw	a2, 76(a0)
	subw	a1, a1, a4
	sraiw	a1, a1, 6
	sw	a1, 140(a0)
.LBB5_28:
	ld	a0, 40(sp)                      # 8-byte Folded Reload
	ld	ra, 184(sp)                     # 8-byte Folded Reload
	ld	s0, 176(sp)                     # 8-byte Folded Reload
	ld	s1, 168(sp)                     # 8-byte Folded Reload
	ld	s2, 160(sp)                     # 8-byte Folded Reload
	ld	s3, 152(sp)                     # 8-byte Folded Reload
	ld	s4, 144(sp)                     # 8-byte Folded Reload
	ld	s5, 136(sp)                     # 8-byte Folded Reload
	ld	s6, 128(sp)                     # 8-byte Folded Reload
	ld	s7, 120(sp)                     # 8-byte Folded Reload
	ld	s8, 112(sp)                     # 8-byte Folded Reload
	ld	s9, 104(sp)                     # 8-byte Folded Reload
	ld	s10, 96(sp)                     # 8-byte Folded Reload
	ld	s11, 88(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 192
	ret
.Lfunc_end5:
	.size	dct_chroma4x4, .Lfunc_end5-dct_chroma4x4
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	dct_chroma_DC                   # -- Begin function dct_chroma_DC
	.p2align	2
	.type	dct_chroma_DC,@function
dct_chroma_DC:                          # @dct_chroma_DC
# %bb.0:
	addi	sp, sp, -80
	sd	ra, 72(sp)                      # 8-byte Folded Spill
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	sd	s1, 56(sp)                      # 8-byte Folded Spill
	sd	s2, 48(sp)                      # 8-byte Folded Spill
	sd	s3, 40(sp)                      # 8-byte Folded Spill
	sd	s4, 32(sp)                      # 8-byte Folded Spill
	sd	s5, 24(sp)                      # 8-byte Folded Spill
	sd	s6, 16(sp)                      # 8-byte Folded Spill
	sd	s7, 8(sp)                       # 8-byte Folded Spill
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	lui	a3, 3
	add	a2, a2, a3
	ld	a2, 1856(a2)
	slli	a3, a0, 3
	add	a2, a2, a3
	ld	a2, 8(a2)
	mv	s0, a1
	li	s2, 0
	ld	s1, 0(a2)
	ld	s3, 8(a2)
	lui	a1, %hi(SNGL_SCAN)
	addi	a1, a1, %lo(SNGL_SCAN)
	addi	s4, a1, 1
	li	s5, -1
	slli	a0, a0, 6
	lui	s6, %hi(dc_level)
	addi	s6, s6, %lo(dc_level)
	add	s6, s6, a0
	addi	s7, a1, 33
	j	.LBB6_3
.LBB6_1:                                #   in Loop: Header=BB6_3 Depth=1
	sraiw	a0, a1, 31
	xor	a2, a1, a0
	subw	a0, a2, a0
	call	sign
	slli	a1, s2, 2
	add	a2, s1, a1
	sw	a0, 0(a2)
	add	a1, s3, a1
	sw	s5, 0(a1)
	addiw	s2, s2, 1
	li	s5, -1
.LBB6_2:                                #   in Loop: Header=BB6_3 Depth=1
	addi	s4, s4, 2
	beq	s4, s7, .LBB6_6
.LBB6_3:                                # =>This Inner Loop Header: Depth=1
	lbu	a0, -1(s4)
	lbu	a1, 0(s4)
	slli	a0, a0, 4
	add	a0, s6, a0
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a1, 0(a0)
	addi	s5, s5, 1
	beqz	a1, .LBB6_2
# %bb.4:                                #   in Loop: Header=BB6_3 Depth=1
	bgtz	s0, .LBB6_1
# %bb.5:                                #   in Loop: Header=BB6_3 Depth=1
	li	s0, 1
	j	.LBB6_1
.LBB6_6:
	slli	s2, s2, 2
	add	s1, s1, s2
	sw	zero, 0(s1)
	mv	a0, s0
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	ld	s1, 56(sp)                      # 8-byte Folded Reload
	ld	s2, 48(sp)                      # 8-byte Folded Reload
	ld	s3, 40(sp)                      # 8-byte Folded Reload
	ld	s4, 32(sp)                      # 8-byte Folded Reload
	ld	s5, 24(sp)                      # 8-byte Folded Reload
	ld	s6, 16(sp)                      # 8-byte Folded Reload
	ld	s7, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end6:
	.size	dct_chroma_DC, .Lfunc_end6-dct_chroma_DC
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function dct_luma_sp
.LCPI7_0:
	.quad	0x4008000000000000              # double 3
.LCPI7_1:
	.quad	0x3feb333333333333              # double 0.84999999999999998
.LCPI7_2:
	.quad	0x4010000000000000              # double 4
	.text
	.globl	dct_luma_sp
	.p2align	2
	.type	dct_luma_sp,@function
dct_luma_sp:                            # @dct_luma_sp
# %bb.0:
	addi	sp, sp, -448
	sd	ra, 440(sp)                     # 8-byte Folded Spill
	sd	s0, 432(sp)                     # 8-byte Folded Spill
	sd	s1, 424(sp)                     # 8-byte Folded Spill
	sd	s2, 416(sp)                     # 8-byte Folded Spill
	sd	s3, 408(sp)                     # 8-byte Folded Spill
	sd	s4, 400(sp)                     # 8-byte Folded Spill
	sd	s5, 392(sp)                     # 8-byte Folded Spill
	sd	s6, 384(sp)                     # 8-byte Folded Spill
	sd	s7, 376(sp)                     # 8-byte Folded Spill
	sd	s8, 368(sp)                     # 8-byte Folded Spill
	sd	s9, 360(sp)                     # 8-byte Folded Spill
	sd	s10, 352(sp)                    # 8-byte Folded Spill
	sd	s11, 344(sp)                    # 8-byte Folded Spill
	fsd	fs0, 336(sp)                    # 8-byte Folded Spill
	fsd	fs1, 328(sp)                    # 8-byte Folded Spill
	fsd	fs2, 320(sp)                    # 8-byte Folded Spill
	sd	a2, 56(sp)                      # 8-byte Folded Spill
	mv	s2, a1
	mv	s1, a0
	srli	a0, a1, 2
	andi	a0, a0, -2
	srli	a1, s1, 3
	add	a0, a0, a1
	srli	a1, s2, 1
	andi	a1, a1, 2
	slli	a2, s1, 61
	srli	a2, a2, 63
	lui	s8, %hi(img)
	ld	a3, %lo(img)(s8)
	or	a2, a1, a2
	lui	s5, 22
	lui	s9, 3
	add	a1, a3, s9
	ld	a4, 1848(a1)
	addiw	a1, s5, 108
	add	a1, a3, a1
	slli	a0, a0, 3
	add	a0, a4, a0
	ld	a0, 0(a0)
	lui	a4, 8
	add	a4, a3, a4
	slli	a2, a2, 3
	add	a0, a0, a2
	ld	a0, 0(a0)
	lw	a2, 12(a3)
	ld	s0, -1192(a4)
	li	a3, 528
	lw	a4, 44(a1)
	mul	a2, a2, a3
	add	s0, s0, a2
	li	s3, 1
	li	a2, 1
	sd	a2, 144(sp)                     # 8-byte Folded Spill
	bnez	a4, .LBB7_4
# %bb.1:
	lw	a1, 0(a1)
	beqz	a1, .LBB7_3
# %bb.2:
	lw	a1, 424(s0)
	snez	a1, a1
	sd	a1, 144(sp)                     # 8-byte Folded Spill
	j	.LBB7_4
.LBB7_3:
	sd	zero, 144(sp)                   # 8-byte Folded Spill
.LBB7_4:
	ld	a1, 0(a0)
	sd	a1, 72(sp)                      # 8-byte Folded Spill
	lw	a1, 12(s0)
	lui	a2, %hi(.LCPI7_0)
	fld	fa5, %lo(.LCPI7_0)(a2)
	ld	a0, 8(a0)
	sd	a0, 48(sp)                      # 8-byte Folded Spill
	addi	a1, a1, -12
	fcvt.d.w	fa4, a1
	fdiv.d	fa0, fa4, fa5
	call	exp2
	lui	a0, %hi(.LCPI7_1)
	fld	fa5, %lo(.LCPI7_1)(a0)
	sd	zero, 176(sp)                   # 8-byte Folded Spill
	sd	zero, 64(sp)                    # 8-byte Folded Spill
	lw	a2, 12(s0)
	fmul.d	fa5, fa0, fa5
	lui	a0, 174763
	addiw	a3, a0, -1365
	mul	a0, a2, a3
	srli	a4, a0, 63
	lw	a1, 16(s0)
	srli	a0, a0, 32
	regsw_c	x0, 0x26(x17)		# 100010000000000100110
	add	x2, a0, a4
	addi	a5, x2, 15
	mul	a0, a1, a3
	srli	a4, a0, 63
	srli	a0, a0, 32
	add	x4, a0, a4
	addi	x5, x4, 15
	ld	a4, %lo(img)(s8)
	sd	a5, 136(sp)                     # 8-byte Folded Spill
	sllw	a5, s3, a5
	regsw_c	x2, 0x0(x6)		# 001100001000000000000
	sllw	a0, s3, x5
	addiw	x3, s9, 824
	add	a6, a4, x3
	sd	s2, 24(sp)                      # 8-byte Folded Spill
	slli	a7, s2, 5
	add	a4, a4, a7
	addiw	a7, s9, 312
	add	a7, a4, a7
	sd	s1, 32(sp)                      # 8-byte Folded Spill
	slli	t0, s1, 1
	add	t1, a7, t0
	lhu	t1, 0(t1)
	lw	t2, 0(a6)
	addi	t3, t0, 2
	add	t4, a7, t3
	lhu	t4, 0(t4)
	lw	t5, 4(a6)
	add	t2, t2, t1
	sw	t2, 0(a6)
	sw	t1, 256(sp)
	add	t5, t5, t4
	sw	t5, 4(a6)
	sw	t4, 272(sp)
	addi	t1, t0, 4
	add	t2, a7, t1
	lhu	t2, 0(t2)
	lw	t4, 8(a6)
	addi	t5, t0, 6
	add	a7, a7, t5
	lhu	a7, 0(a7)
	lw	t6, 12(a6)
	add	t4, t4, t2
	sw	t4, 8(a6)
	sw	t2, 288(sp)
	add	t6, t6, a7
	sw	t6, 12(a6)
	sw	a7, 304(sp)
	addiw	a7, s9, 344
	add	a7, a4, a7
	add	t2, a7, t0
	lhu	t2, 0(t2)
	lw	t4, 64(a6)
	add	t6, a7, t3
	lhu	t6, 0(t6)
	regsw_c	x0, 0x188(x16)		# 100000000000110001000
	lw	x1, 68(a6)
	add	t4, t4, t2
	sw	t4, 64(a6)
	sw	t2, 260(sp)
	add	x1, x1, t6
	sw	x1, 68(a6)
	sw	t6, 276(sp)
	add	t2, a7, t1
	lhu	t2, 0(t2)
	lw	t4, 72(a6)
	add	a7, a7, t5
	lhu	a7, 0(a7)
	lw	t6, 76(a6)
	add	t4, t4, t2
	sw	t4, 72(a6)
	sw	t2, 292(sp)
	add	t6, t6, a7
	sw	t6, 76(a6)
	sw	a7, 308(sp)
	addiw	a7, s9, 376
	add	a7, a4, a7
	add	t2, a7, t0
	lhu	t2, 0(t2)
	lw	t4, 128(a6)
	add	t6, a7, t3
	lhu	t6, 0(t6)
	regsw_c	x0, 0x188(x16)		# 100000000000110001000
	lw	x1, 132(a6)
	add	t4, t4, t2
	sw	t4, 128(a6)
	sw	t2, 264(sp)
	add	x1, x1, t6
	sw	x1, 132(a6)
	sw	t6, 280(sp)
	add	t2, a7, t1
	lhu	t2, 0(t2)
	lw	t4, 136(a6)
	add	a7, a7, t5
	lhu	a7, 0(a7)
	lw	t6, 140(a6)
	add	t4, t4, t2
	sw	t4, 136(a6)
	sw	t2, 296(sp)
	add	t6, t6, a7
	sw	t6, 140(a6)
	sw	a7, 312(sp)
	addiw	a7, s9, 408
	add	a4, a4, a7
	add	t0, a4, t0
	lhu	a7, 0(t0)
	lw	t0, 192(a6)
	add	t3, a4, t3
	lhu	t2, 0(t3)
	lw	t3, 196(a6)
	add	t0, t0, a7
	sw	t0, 192(a6)
	sw	a7, 268(sp)
	add	t3, t3, t2
	sw	t3, 196(a6)
	sw	t2, 284(sp)
	add	t1, a4, t1
	lhu	a7, 0(t1)
	lw	t0, 200(a6)
	add	a4, a4, t5
	lhu	a4, 0(a4)
	lw	t1, 204(a6)
	add	t0, t0, a7
	sw	t0, 200(a6)
	sw	a7, 300(sp)
	add	t1, t1, a4
	sw	t1, 204(a6)
	sw	a4, 316(sp)
	li	a4, 6
	regsw_c	x0, 0x0(x5)		# 001010000000000000000
	sd	x2, 152(sp)                     # 8-byte Folded Spill
	mul	a6, x2, a4
	subw	s1, a2, a6
	ld	a2, %lo(img)(s8)
	mul	a3, a5, a3
	srli	a5, a3, 63
	srli	a3, a3, 32
	regsw_c	x16, 0x0(x4)		# 001001000000000000000
	sd	x3, 112(sp)                     # 8-byte Folded Spill
	add	a2, a2, x3
	lw	a6, 0(a2)
	lw	a7, 12(a2)
	lw	t0, 4(a2)
	lw	t1, 8(a2)
	add	a3, a3, a5
	sd	a3, 104(sp)                     # 8-byte Folded Spill
	add	a3, a7, a6
	subw	a5, a6, a7
	add	a6, t1, t0
	subw	a7, t0, t1
	add	t0, a6, a3
	subw	a3, a3, a6
	sw	a3, 8(a2)
	slli	a3, a5, 1
	add	a3, a3, a7
	slli	a7, a7, 1
	subw	a5, a5, a7
	lw	a6, 64(a2)
	lw	a7, 76(a2)
	lw	t1, 68(a2)
	lw	t2, 72(a2)
	sw	a5, 12(a2)
	add	a5, a7, a6
	subw	a6, a6, a7
	add	a7, t2, t1
	subw	t1, t1, t2
	add	t2, a7, a5
	subw	a5, a5, a7
	slli	a7, a6, 1
	add	a7, a7, t1
	slli	t1, t1, 1
	subw	a6, a6, t1
	lw	t1, 128(a2)
	lw	t3, 140(a2)
	lw	t4, 132(a2)
	lw	t5, 136(a2)
	sw	a6, 76(a2)
	add	a6, t3, t1
	subw	t1, t1, t3
	add	t3, t5, t4
	subw	t4, t4, t5
	add	t5, t3, a6
	subw	a6, a6, t3
	slli	t3, t1, 1
	add	t3, t3, t4
	slli	t4, t4, 1
	lw	t6, 192(a2)
	regsw_c	x8, 0x8f(x18)		# 100100100000010001111
	lw	x1, 204(a2)
	lw	x2, 196(a2)
	lw	x3, 200(a2)
	subw	t1, t1, t4
	add	t4, x1, t6
	subw	t6, t6, x1
	add	x1, x3, x2
	regsw_c	x3, 0x1f1(x31)		# 111110001100111110001
	subw	x2, x2, x3
	add	x3, x1, t4
	subw	t4, t4, x1
	slli	x1, t6, 1
	add	x1, x1, x2
	slli	x2, x2, 1
	subw	t6, t6, x2
	regsw_c	x0, 0x88(x5)		# 001010000000010001000
	sd	x4, 128(sp)                     # 8-byte Folded Spill
	mul	a4, x4, a4
	subw	a1, a1, a4
	sd	a1, 96(sp)                      # 8-byte Folded Spill
	add	a1, x3, t0
	subw	a4, t0, x3
	add	t0, t5, t2
	subw	t2, t2, t5
	add	t5, t0, a1
	sw	t5, 0(a2)
	subw	a1, a1, t0
	sw	a1, 128(a2)
	slli	a1, a4, 1
	add	a1, a1, t2
	sw	a1, 64(a2)
	slli	t2, t2, 1
	subw	a1, a4, t2
	sw	a1, 192(a2)
	regsw_c	x16, 0x0(x8)		# 010001000000000000000
	add	a1, x1, a3
	subw	a3, a3, x1
	add	a4, t3, a7
	subw	a7, a7, t3
	add	t0, a4, a1
	sw	t0, 4(a2)
	subw	a1, a1, a4
	sw	a1, 132(a2)
	slli	a1, a3, 1
	add	a1, a1, a7
	sw	a1, 68(a2)
	lw	a1, 8(a2)
	slli	a7, a7, 1
	subw	a3, a3, a7
	sw	a3, 196(a2)
	add	a3, t4, a1
	subw	a1, a1, t4
	add	a4, a6, a5
	subw	a5, a5, a6
	add	a6, a4, a3
	sw	a6, 8(a2)
	subw	a3, a3, a4
	sw	a3, 136(a2)
	slli	a3, a1, 1
	add	a3, a3, a5
	sw	a3, 72(a2)
	slli	a5, a5, 1
	lw	a3, 12(a2)
	subw	a1, a1, a5
	lw	a4, 76(a2)
	sw	a1, 200(a2)
	add	a1, t6, a3
	subw	a3, a3, t6
	add	a5, t1, a4
	subw	a4, a4, t1
	add	a6, a5, a1
	sw	a6, 12(a2)
	subw	a1, a1, a5
	sw	a1, 140(a2)
	slli	a1, a3, 1
	add	a1, a1, a4
	sw	a1, 76(a2)
	slli	a4, a4, 1
	subw	a3, a3, a4
	sw	a3, 204(a2)
	lui	a1, %hi(.LCPI7_2)
	fld	fa4, %lo(.LCPI7_2)(a1)
	lw	a1, 256(sp)
	lw	a2, 304(sp)
	lw	a3, 272(sp)
	lw	a4, 288(sp)
	fmul.d	fs0, fa5, fa4
	add	a5, a2, a1
	subw	a1, a1, a2
	add	a2, a4, a3
	subw	a3, a3, a4
	add	a4, a2, a5
	subw	a5, a5, a2
	slli	a2, a1, 1
	add	a2, a2, a3
	slli	a3, a3, 1
	subw	a1, a1, a3
	lw	a3, 260(sp)
	lw	a6, 308(sp)
	lw	a7, 276(sp)
	lw	t0, 292(sp)
	sw	a1, 304(sp)
	add	a1, a6, a3
	subw	a3, a3, a6
	add	a6, t0, a7
	subw	a7, a7, t0
	add	t0, a6, a1
	subw	a1, a1, a6
	slli	a6, a3, 1
	add	a6, a6, a7
	slli	a7, a7, 1
	lw	t1, 264(sp)
	lw	t2, 312(sp)
	lw	t3, 280(sp)
	lw	t4, 296(sp)
	subw	a3, a3, a7
	add	a7, t2, t1
	subw	t1, t1, t2
	add	t2, t4, t3
	subw	t3, t3, t4
	add	t4, t2, a7
	subw	a7, a7, t2
	slli	t2, t1, 1
	add	t2, t2, t3
	slli	t3, t3, 1
	lw	t5, 268(sp)
	lw	t6, 316(sp)
	regsw_c	x0, 0x1f(x18)		# 100100000000000011111
	lw	x1, 284(sp)
	lw	x2, 300(sp)
	subw	t1, t1, t3
	add	t3, t6, t5
	subw	t5, t5, t6
	add	t6, x2, x1
	subw	x1, x1, x2
	regsw_c	x0, 0x38e(x16)		# 100000000001110001110
	add	x2, t6, t3
	subw	t3, t3, t6
	slli	t6, t5, 1
	add	t6, t6, x1
	slli	x1, x1, 1
	subw	t5, t5, x1
	add	x1, x2, a4
	regsw_c	x0, 0x618(x6)		# 001100000011000011000
	subw	a4, a4, x2
	add	x2, t4, t0
	subw	t0, t0, t4
	add	t4, x2, x1
	sw	t4, 256(sp)
	subw	t4, x1, x2
	sw	t4, 264(sp)
	slli	t4, a4, 1
	add	t4, t4, t0
	sw	t4, 260(sp)
	slli	t0, t0, 1
	subw	a4, a4, t0
	sw	a4, 268(sp)
	add	a4, t6, a2
	subw	a2, a2, t6
	add	t0, t2, a6
	subw	a6, a6, t2
	add	t2, t0, a4
	sw	t2, 272(sp)
	subw	a4, a4, t0
	sw	a4, 280(sp)
	slli	a4, a2, 1
	add	a4, a4, a6
	sw	a4, 276(sp)
	slli	a6, a6, 1
	subw	a2, a2, a6
	sw	a2, 284(sp)
	add	a2, t3, a5
	subw	a5, a5, t3
	add	a4, a7, a1
	subw	a1, a1, a7
	add	a6, a4, a2
	sw	a6, 288(sp)
	subw	a2, a2, a4
	sw	a2, 296(sp)
	slli	a2, a5, 1
	add	a2, a2, a1
	sw	a2, 292(sp)
	lw	a2, 304(sp)
	slli	a1, a1, 1
	subw	a5, a5, a1
	sw	a5, 300(sp)
	add	a1, t5, a2
	subw	a2, a2, t5
	add	a4, t1, a3
	subw	a3, a3, t1
	add	a5, a4, a1
	sw	a5, 304(sp)
	subw	a1, a1, a4
	sw	a1, 312(sp)
	slli	a1, a2, 1
	add	a1, a1, a3
	sw	a1, 308(sp)
	slli	a3, a3, 1
	subw	a2, a2, a3
	sw	a2, 316(sp)
	srliw	a1, a0, 31
	add	a0, a0, a1
	sraiw	s7, a0, 1
	li	s0, -1
	regsw_c	x16, 0x0(x4)		# 001001000000000000000
	sd	x5, 120(sp)                     # 8-byte Folded Spill
	sllw	a0, s0, x5
	sd	a0, 80(sp)                      # 8-byte Folded Spill
	ld	a1, %lo(img)(s8)
	li	s10, 16
	lui	s4, %hi(SNGL_SCAN)
	addi	s4, s4, %lo(SNGL_SCAN)
	lui	s3, %hi(FIELD_SCAN)
	addi	s3, s3, %lo(FIELD_SCAN)
	lui	a0, 244
	addi	a0, a0, 575
	sd	a0, 40(sp)                      # 8-byte Folded Spill
	addiw	a0, s5, 420
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	sd	s1, 16(sp)                      # 8-byte Folded Spill
	sd	s7, 88(sp)                      # 8-byte Folded Spill
	j	.LBB7_6
.LBB7_5:                                #   in Loop: Header=BB7_6 Depth=1
	mv	a0, s6
	mv	a1, s5
	call	sign
	lui	a1, %hi(dequant_coef)
	addi	a1, a1, %lo(dequant_coef)
	ld	a2, 200(sp)                     # 8-byte Folded Reload
	add	a1, a1, a2
	add	a1, a1, s11
	add	a1, a1, s2
	lw	a2, 0(a1)
	ld	a1, %lo(img)(s8)
	mul	a0, a2, a0
	ld	a2, 128(sp)                     # 8-byte Folded Reload
	sllw	a2, a0, a2
	ld	a0, 112(sp)                     # 8-byte Folded Reload
	add	a0, a1, a0
	ld	a3, 232(sp)                     # 8-byte Folded Reload
	add	a3, a0, a3
	ld	a4, 224(sp)                     # 8-byte Folded Reload
	add	a3, a3, a4
	sw	a2, 0(a3)
	addi	s10, s10, -1
	addi	s4, s4, 2
	addi	s3, s3, 2
	beqz	s10, .LBB7_28
.LBB7_6:                                # =>This Inner Loop Header: Depth=1
	sd	s10, 208(sp)                    # 8-byte Folded Spill
	mv	a0, s3
	ld	a2, 144(sp)                     # 8-byte Folded Reload
	bnez	a2, .LBB7_8
# %bb.7:                                #   in Loop: Header=BB7_6 Depth=1
	mv	a0, s4
.LBB7_8:                                #   in Loop: Header=BB7_6 Depth=1
	sd	s4, 216(sp)                     # 8-byte Folded Spill
	lbu	a3, 0(a0)
	lbu	a4, 1(a0)
	addiw	s0, s0, 1
	sd	s0, 240(sp)                     # 8-byte Folded Spill
	slli	s11, a3, 4
	addi	a0, sp, 256
	add	a0, a0, s11
	slli	s2, a4, 2
	add	a0, a0, s2
	lw	s5, 0(a0)
	ld	a0, 96(sp)                      # 8-byte Folded Reload
	slli	a2, a0, 6
	lui	s6, %hi(quant_coef)
	addi	s6, s6, %lo(quant_coef)
	sd	a2, 200(sp)                     # 8-byte Folded Spill
	add	a0, s6, a2
	add	a0, a0, s11
	add	a0, a0, s2
	lw	a5, 0(a0)
	sraiw	a0, s5, 31
	xor	a2, s5, a0
	subw	a2, a2, a0
	mul	a0, a2, a5
	sd	a4, 160(sp)                     # 8-byte Folded Spill
	slli	s0, a4, 6
	add	a1, a1, s0
	sd	a3, 168(sp)                     # 8-byte Folded Spill
	slli	s10, a3, 2
	add	a2, s10, s9
	add	a1, a1, a2
	lw	s4, 824(a1)
	add	a0, a0, s7
	ld	a1, 80(sp)                      # 8-byte Folded Reload
	and	a0, a0, a1
	sd	a5, 192(sp)                     # 8-byte Folded Spill
	divw	a0, a0, a5
	mv	a1, s5
	call	sign
	subw	s7, s4, a0
	sraiw	a0, s7, 31
	xor	a1, s7, a0
	slli	s4, s1, 6
	add	a2, s6, s4
	ld	a3, %lo(img)(s8)
	add	a2, a2, s11
	add	a2, a2, s2
	lw	a2, 0(a2)
	sd	s0, 232(sp)                     # 8-byte Folded Spill
	add	a3, a3, s0
	sd	s10, 224(sp)                    # 8-byte Folded Spill
	add	a4, s10, s9
	add	a3, a3, a4
	lw	s10, 824(a3)
	subw	a1, a1, a0
	mul	a0, a1, a2
	ld	a4, 104(sp)                     # 8-byte Folded Reload
	add	a0, a0, a4
	subw	s6, s10, s5
	sraiw	a1, s6, 31
	xor	a3, s6, a1
	subw	a3, a3, a1
	mul	a1, a3, a2
	add	a1, a1, a4
	ld	a2, 136(sp)                     # 8-byte Folded Reload
	sraw	s8, a1, a2
	sraw	s9, a0, a2
	sd	s4, 184(sp)                     # 8-byte Folded Spill
	beqz	s8, .LBB7_17
# %bb.9:                                #   in Loop: Header=BB7_6 Depth=1
	beqz	s9, .LBB7_17
# %bb.10:                               #   in Loop: Header=BB7_6 Depth=1
	beq	s9, s8, .LBB7_17
# %bb.11:                               #   in Loop: Header=BB7_6 Depth=1
	mv	a0, s9
	mv	a1, s7
	call	sign
	lui	a1, %hi(dequant_coef)
	addi	a1, a1, %lo(dequant_coef)
	add	a1, a1, s4
	add	a1, a1, s11
	add	a1, a1, s2
	lw	a1, 0(a1)
	lui	a2, %hi(A)
	addi	a2, a2, %lo(A)
	add	a2, a2, s11
	add	a2, a2, s2
	lw	a2, 0(a2)
	mul	s4, a2, a1
	mul	a0, s4, a0
	ld	s1, 152(sp)                     # 8-byte Folded Reload
	sllw	a0, a0, s1
	srli	a0, a0, 6
	subw	a1, s10, s5
	subw	a1, a1, a0
	fcvt.d.w	fs1, a1
	addi	a2, sp, 252
	addi	a3, sp, 248
	mv	a0, s9
	ld	s0, 240(sp)                     # 8-byte Folded Reload
	mv	a1, s0
	call	levrun_linfo_inter
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a1, 252(sp)
	ld	a2, 232(sp)                     # 8-byte Folded Reload
	add	a0, a0, a2
	lui	a2, 3
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	add	a2, a3, a2
	add	a0, a0, a2
	lw	s10, 824(a0)
	fcvt.d.w	fa5, a1
	fmul.d	fa5, fs0, fa5
	fmadd.d	fs1, fs1, fs1, fa5
	mv	a0, s8
	mv	a1, s6
	call	sign
	mul	a0, s4, a0
	sllw	a0, a0, s1
	srli	a0, a0, 6
	subw	a1, s10, s5
	subw	a1, a1, a0
	fcvt.d.w	fs2, a1
	addi	a2, sp, 252
	addi	a3, sp, 248
	mv	a0, s8
	mv	a1, s0
	call	levrun_linfo_inter
	lw	a0, 252(sp)
	fcvt.d.w	fa5, a0
	fmul.d	fa5, fs0, fa5
	fmadd.d	fa5, fs2, fs2, fa5
	feq.d	a0, fs1, fa5
	beqz	a0, .LBB7_27
# %bb.12:                               #   in Loop: Header=BB7_6 Depth=1
	sraiw	a0, s9, 31
	xor	a1, s9, a0
	subw	a1, a1, a0
	sraiw	a0, s8, 31
	xor	a2, s8, a0
	subw	a2, a2, a0
	sltu	a0, a1, a2
	ld	s4, 216(sp)                     # 8-byte Folded Reload
	mv	s10, s9
	ld	s1, 16(sp)                      # 8-byte Folded Reload
	bnez	a0, .LBB7_14
.LBB7_13:                               #   in Loop: Header=BB7_6 Depth=1
	mv	s10, s8
.LBB7_14:                               #   in Loop: Header=BB7_6 Depth=1
	beq	s10, s9, .LBB7_16
# %bb.15:                               #   in Loop: Header=BB7_6 Depth=1
	mv	s7, s6
.LBB7_16:                               #   in Loop: Header=BB7_6 Depth=1
	mv	s6, s7
	ld	s7, 88(sp)                      # 8-byte Folded Reload
	j	.LBB7_21
.LBB7_17:                               #   in Loop: Header=BB7_6 Depth=1
	bne	s9, s8, .LBB7_19
# %bb.18:                               #   in Loop: Header=BB7_6 Depth=1
	mv	s6, s7
	mv	s8, s9
	ld	s7, 88(sp)                      # 8-byte Folded Reload
	ld	s4, 216(sp)                     # 8-byte Folded Reload
	j	.LBB7_20
.LBB7_19:                               #   in Loop: Header=BB7_6 Depth=1
	ld	s7, 88(sp)                      # 8-byte Folded Reload
	ld	s4, 216(sp)                     # 8-byte Folded Reload
	beqz	s9, .LBB7_24
.LBB7_20:                               #   in Loop: Header=BB7_6 Depth=1
	mv	s10, s8
	beqz	s8, .LBB7_24
.LBB7_21:                               #   in Loop: Header=BB7_6 Depth=1
	ld	a0, 40(sp)                      # 8-byte Folded Reload
	lui	s9, 3
	li	a1, 1
	blt	a1, s10, .LBB7_23
# %bb.22:                               #   in Loop: Header=BB7_6 Depth=1
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1093(a0)
	slli	a0, a0, 4
	lui	a1, %hi(COEFF_COST)
	addi	a1, a1, %lo(COEFF_COST)
	ld	a2, 240(sp)                     # 8-byte Folded Reload
	add	a1, a1, a2
	add	a0, a1, a0
	lbu	a0, 0(a0)
.LBB7_23:                               #   in Loop: Header=BB7_6 Depth=1
	ld	a2, 56(sp)                      # 8-byte Folded Reload
	lw	a1, 0(a2)
	add	a0, a1, a0
	sw	a0, 0(a2)
	mv	a0, s10
	mv	a1, s6
	call	sign
	ld	a3, 176(sp)                     # 8-byte Folded Reload
	slli	a1, a3, 2
	ld	a2, 72(sp)                      # 8-byte Folded Reload
	add	a2, a2, a1
	sw	a0, 0(a2)
	ld	a0, 48(sp)                      # 8-byte Folded Reload
	add	a1, a0, a1
	ld	a0, 240(sp)                     # 8-byte Folded Reload
	sw	a0, 0(a1)
	addiw	a3, a3, 1
	sd	a3, 176(sp)                     # 8-byte Folded Spill
	mv	a0, s10
	mv	a1, s6
	call	sign
	lui	a1, %hi(dequant_coef)
	addi	a1, a1, %lo(dequant_coef)
	ld	a2, 184(sp)                     # 8-byte Folded Reload
	add	a1, a1, a2
	add	a1, a1, s11
	add	a1, a1, s2
	lw	a1, 0(a1)
	lui	a2, %hi(A)
	addi	a2, a2, %lo(A)
	add	a2, a2, s11
	add	a2, a2, s2
	lw	a2, 0(a2)
	mul	a1, a1, a2
	mul	a0, a1, a0
	ld	a1, 152(sp)                     # 8-byte Folded Reload
	sllw	a0, a0, a1
	srai	a0, a0, 6
	li	s0, -1
	li	a1, 1
	sd	a1, 64(sp)                      # 8-byte Folded Spill
	lui	s8, %hi(img)
	j	.LBB7_25
.LBB7_24:                               #   in Loop: Header=BB7_6 Depth=1
	li	a0, 0
	lui	s8, %hi(img)
	lui	s9, 3
	ld	s0, 240(sp)                     # 8-byte Folded Reload
.LBB7_25:                               #   in Loop: Header=BB7_6 Depth=1
	lui	a1, %hi(si_frame_indicator)
	lw	a1, %lo(si_frame_indicator)(a1)
	lui	a2, %hi(sp2_frame_indicator)
	lw	a2, %lo(sp2_frame_indicator)(a2)
	addw	s5, a0, s5
	or	a1, a1, a2
	sraiw	a0, s5, 31
	xor	a2, s5, a0
	subw	a2, a2, a0
	ld	a0, 192(sp)                     # 8-byte Folded Reload
	mul	a0, a2, a0
	add	a0, a0, s7
	ld	a2, 120(sp)                     # 8-byte Folded Reload
	sraw	s6, a0, a2
	ld	s10, 208(sp)                    # 8-byte Folded Reload
	bnez	a1, .LBB7_5
# %bb.26:                               #   in Loop: Header=BB7_6 Depth=1
	mv	a0, s6
	mv	a1, s5
	call	sign
	ld	a1, %lo(img)(s8)
	lw	a2, 156(a1)
	lui	a3, %hi(lrec)
	ld	a3, %lo(lrec)(a3)
	ld	a4, 24(sp)                      # 8-byte Folded Reload
	ld	a5, 160(sp)                     # 8-byte Folded Reload
	add	a4, a5, a4
	addw	a2, a4, a2
	slli	a2, a2, 3
	lw	a1, 152(a1)
	add	a2, a3, a2
	ld	a2, 0(a2)
	ld	a3, 32(sp)                      # 8-byte Folded Reload
	ld	a4, 168(sp)                     # 8-byte Folded Reload
	add	a3, a4, a3
	addw	a1, a3, a1
	slli	a1, a1, 2
	add	a1, a2, a1
	sw	a0, 0(a1)
	j	.LBB7_5
.LBB7_27:                               #   in Loop: Header=BB7_6 Depth=1
	flt.d	a0, fs1, fa5
	ld	s4, 216(sp)                     # 8-byte Folded Reload
	mv	s10, s9
	ld	s1, 16(sp)                      # 8-byte Folded Reload
	beqz	a0, .LBB7_13
	j	.LBB7_14
.LBB7_28:
	ld	a2, 176(sp)                     # 8-byte Folded Reload
	slli	a2, a2, 2
	ld	a3, 72(sp)                      # 8-byte Folded Reload
	add	a2, a3, a2
	sw	zero, 0(a2)
	lw	a2, 0(a0)
	lw	a3, 8(a0)
	ld	a4, 8(sp)                       # 8-byte Folded Reload
	add	a1, a1, a4
	lw	a4, 4(a0)
	lw	a7, 12(a0)
	add	t0, a3, a2
	subw	a5, a2, a3
	srai	a2, a4, 1
	subw	a6, a2, a7
	srai	a2, a7, 1
	add	a2, a2, a4
	add	t1, a2, t0
	subw	a2, t0, a2
	sw	a2, 12(a0)
	subw	a2, a5, a6
	lw	a3, 64(a0)
	lw	a4, 72(a0)
	sw	a2, 8(a0)
	lw	a2, 68(a0)
	lw	t2, 76(a0)
	add	t3, a4, a3
	subw	a7, a3, a4
	srai	a3, a2, 1
	subw	t0, a3, t2
	srai	a3, t2, 1
	add	a2, a3, a2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	add	x9, a2, t3
	subw	t3, t3, a2
	sw	t3, 76(a0)
	subw	a2, a7, t0
	lw	t2, 128(a0)
	lw	t3, 136(a0)
	lw	t4, 140(a0)
	regsw_c	x0, 0x60(x16)		# 100000000000001100000
	lw	x2, 132(a0)
	sw	a2, 72(a0)
	add	a2, t3, t2
	srai	a3, t4, 1
	add	a3, a3, x2
	add	x3, a3, a2
	subw	a2, a2, a3
	lw	t5, 192(a0)
	lw	t6, 200(a0)
	regsw_c	x0, 0x8c(x18)		# 100100000000010001100
	lw	x1, 204(a0)
	lw	x4, 196(a0)
	sw	a2, 140(a0)
	add	a3, t6, t5
	srai	a4, x1, 1
	add	a4, a4, x4
	add	x5, a4, a3
	regsw_c	x14, 0x1be(x27)		# 110110111000110111110
	add	x7, x3, t1
	sraiw	x6, x5, 1
	add	x6, x6, x9
	lw	a2, 0(a1)
	addi	x8, x7, 32
	add	x7, x8, x6
	sraiw	x7, x7, 6
	regsw_c	x15, 0x508(x23)		# 101110111110100001000
	sgtz	x10, x7
	neg	x10, x10
	and	x7, x10, x7
	sraiw	x10, x9, 1
	mv	x9, a2
	blt	a2, x7, .LBB7_30
# %bb.29:
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	mv	x9, x7
.LBB7_30:
	regsw_c	x11, 0x6c4(x27)		# 110110101111011000100
	srai	x7, x2, 1
	srai	x4, x4, 1
	subw	x3, t1, x3
	subw	x2, x10, x5
	subw	t1, x8, x6
	sraiw	t1, t1, 6
	sgtz	x5, t1
	regsw_c	x3, 0x120(x25)		# 110010001100100100000
	neg	x5, x5
	and	t1, x5, t1
	sw	x9, 0(a0)
	mv	x5, a2
	ld	x6, 32(sp)                      # 8-byte Folded Reload
	ld	x8, 24(sp)                      # 8-byte Folded Reload
	blt	a2, t1, .LBB7_32
# %bb.31:
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x5, t1
.LBB7_32:
	subw	t1, t2, t3
	regsw_c	x6, 0x444(x8)		# 010000011010001000100
	subw	t2, x7, t4
	subw	t3, t5, t6
	subw	t4, x4, x1
	addi	t5, x3, 32
	add	t6, t5, x2
	sraiw	t6, t6, 6
	sgtz	x1, t6
	regsw_c	x2, 0x40(x27)		# 110110001000001000000
	neg	x1, x1
	and	x1, x1, t6
	sw	x5, 192(a0)
	mv	t6, a2
	blt	a2, x1, .LBB7_34
# %bb.33:
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	mv	t6, x1
.LBB7_34:
	add	a5, a6, a5
	add	t0, t0, a7
	add	a6, t2, t1
	add	a7, t4, t3
	regsw_c	x9, 0x480(x4)		# 001000100110010000000
	subw	t5, t5, x2
	sraiw	t5, t5, 6
	sgtz	x1, t5
	neg	x1, x1
	and	t5, x1, t5
	sw	t6, 64(a0)
	mv	t6, a2
	blt	a2, t5, .LBB7_36
# %bb.35:
	mv	t6, t5
.LBB7_36:
	sw	t6, 128(a0)
	add	t6, a6, a5
	sraiw	t5, a7, 1
	add	t5, t5, t0
	addi	t6, t6, 32
	regsw_c	x11, 0x5e0(x19)		# 100110101110111100000
	add	x1, t6, t5
	sraiw	x1, x1, 6
	sgtz	x2, x1
	neg	x2, x2
	and	x2, x2, x1
	sraiw	x1, t0, 1
	mv	t0, a2
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	blt	a2, x2, .LBB7_38
# %bb.37:
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	mv	t0, x2
.LBB7_38:
	subw	a5, a5, a6
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	subw	a6, x1, a7
	subw	t6, t6, t5
	sraiw	a7, t6, 6
	sgtz	t5, a7
	neg	t5, t5
	and	a7, t5, a7
	sw	t0, 4(a0)
	mv	t0, a2
	blt	a2, a7, .LBB7_40
# %bb.39:
	mv	t0, a7
.LBB7_40:
	addi	a7, a5, 32
	add	a5, a7, a6
	sraiw	a5, a5, 6
	sgtz	t5, a5
	neg	t5, t5
	and	a5, t5, a5
	sw	t0, 196(a0)
	mv	t0, a2
	blt	a2, a5, .LBB7_42
# %bb.41:
	mv	t0, a5
.LBB7_42:
	subw	a5, t1, t2
	subw	t3, t3, t4
	subw	a6, a7, a6
	sraiw	a6, a6, 6
	sgtz	a7, a6
	neg	a7, a7
	and	a6, a7, a6
	sw	t0, 68(a0)
	mv	a7, a2
	blt	a2, a6, .LBB7_44
# %bb.43:
	mv	a7, a6
.LBB7_44:
	lw	a6, 8(a0)
	lw	t1, 72(a0)
	sw	a7, 132(a0)
	add	t0, a5, a6
	sraiw	a7, t3, 1
	add	a7, a7, t1
	addi	t0, t0, 32
	add	t2, t0, a7
	sraiw	t2, t2, 6
	sgtz	t4, t2
	neg	t4, t4
	and	t4, t4, t2
	srli	t2, t1, 1
	mv	t1, a2
	blt	a2, t4, .LBB7_46
# %bb.45:
	mv	t1, t4
.LBB7_46:
	subw	a6, a6, a5
	subw	a5, t2, t3
	subw	a7, t0, a7
	sraiw	a7, a7, 6
	sgtz	t0, a7
	neg	t0, t0
	and	t0, t0, a7
	sw	t1, 8(a0)
	mv	a7, a2
	blt	a2, t0, .LBB7_48
# %bb.47:
	mv	a7, t0
.LBB7_48:
	addi	a6, a6, 32
	add	t0, a6, a5
	sraiw	t0, t0, 6
	sgtz	t1, t0
	neg	t1, t1
	and	t0, t1, t0
	sw	a7, 200(a0)
	mv	a7, a2
	blt	a2, t0, .LBB7_50
# %bb.49:
	mv	a7, t0
.LBB7_50:
	subw	a3, a3, a4
	subw	a4, a6, a5
	sraiw	a4, a4, 6
	sgtz	a5, a4
	neg	a5, a5
	and	a4, a5, a4
	sw	a7, 72(a0)
	mv	a6, a2
	blt	a2, a4, .LBB7_52
# %bb.51:
	mv	a6, a4
.LBB7_52:
	lw	a4, 12(a0)
	lw	a5, 140(a0)
	lw	t0, 76(a0)
	sw	a6, 136(a0)
	add	a7, a5, a4
	sraiw	a6, a3, 1
	add	a6, a6, t0
	addi	a7, a7, 32
	add	t1, a7, a6
	sraiw	t1, t1, 6
	sgtz	t2, t1
	neg	t2, t2
	and	t2, t2, t1
	srli	t1, t0, 1
	mv	t0, a2
	blt	a2, t2, .LBB7_54
# %bb.53:
	mv	t0, t2
.LBB7_54:
	subw	a4, a4, a5
	subw	a3, t1, a3
	subw	a5, a7, a6
	sraiw	a5, a5, 6
	sgtz	a6, a5
	neg	a6, a6
	and	a5, a6, a5
	sw	t0, 12(a0)
	blt	a2, a5, .LBB7_56
# %bb.55:
	mv	a2, a5
.LBB7_56:
	lw	a1, 0(a1)
	addi	a4, a4, 32
	add	a5, a4, a3
	sraiw	a5, a5, 6
	sgtz	a6, a5
	neg	a6, a6
	and	a5, a6, a5
	sw	a2, 204(a0)
	mv	a2, a1
	blt	a1, a5, .LBB7_58
# %bb.57:
	mv	a2, a5
.LBB7_58:
	subw	a4, a4, a3
	sraiw	a3, a4, 6
	sgtz	a4, a3
	neg	a4, a4
	and	a3, a4, a3
	sw	a2, 76(a0)
	blt	a1, a3, .LBB7_60
# %bb.59:
	mv	a1, a3
.LBB7_60:
	sw	a1, 140(a0)
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 3
	addiw	a1, a1, 824
	lui	a2, %hi(enc_picture)
	ld	a2, %lo(enc_picture)(a2)
	add	a1, a0, a1
	lui	a3, 2
	lw	a4, 156(a0)
	add	a2, a2, a3
	ld	a2, -1768(a2)
	lw	a0, 152(a0)
	regsw_c	x0, 0x8(x4)		# 001000000000000001000
	addw	a3, a4, x8
	slli	a4, a3, 3
	add	a4, a2, a4
	ld	a4, 0(a4)
	lh	a5, 0(a1)
	addw	a0, a0, x6
	slli	a6, a0, 1
	add	a7, a4, a6
	sh	a5, 0(a7)
	lh	a5, 4(a1)
	addiw	a7, a0, 1
	slli	a7, a7, 1
	add	t0, a4, a7
	sh	a5, 0(t0)
	lh	a5, 8(a1)
	addiw	t0, a0, 2
	slli	t0, t0, 1
	add	t1, a4, t0
	sh	a5, 0(t1)
	lh	a5, 12(a1)
	addiw	a0, a0, 3
	slli	a0, a0, 1
	addiw	t1, a3, 1
	slli	t1, t1, 3
	add	t1, a2, t1
	ld	t1, 0(t1)
	add	a4, a4, a0
	lh	t2, 64(a1)
	sh	a5, 0(a4)
	add	a4, t1, a6
	lh	a5, 68(a1)
	sh	t2, 0(a4)
	lh	a4, 72(a1)
	add	t2, t1, a7
	sh	a5, 0(t2)
	add	a5, t1, t0
	sh	a4, 0(a5)
	lh	a4, 76(a1)
	addiw	a5, a3, 2
	slli	a5, a5, 3
	add	a5, a2, a5
	ld	a5, 0(a5)
	add	t1, t1, a0
	lh	t2, 128(a1)
	sh	a4, 0(t1)
	add	a4, a5, a6
	lh	t1, 132(a1)
	sh	t2, 0(a4)
	lh	a4, 136(a1)
	add	t2, a5, a7
	sh	t1, 0(t2)
	add	t1, a5, t0
	sh	a4, 0(t1)
	lh	a4, 140(a1)
	addiw	a3, a3, 3
	slli	a3, a3, 3
	add	a2, a2, a3
	ld	a2, 0(a2)
	add	a5, a5, a0
	lh	a3, 192(a1)
	sh	a4, 0(a5)
	add	a6, a2, a6
	lh	a4, 196(a1)
	sh	a3, 0(a6)
	add	a7, a2, a7
	lh	a3, 200(a1)
	sh	a4, 0(a7)
	lh	a1, 204(a1)
	add	t0, a2, t0
	sh	a3, 0(t0)
	add	a0, a2, a0
	sh	a1, 0(a0)
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	ld	ra, 440(sp)                     # 8-byte Folded Reload
	ld	s0, 432(sp)                     # 8-byte Folded Reload
	ld	s1, 424(sp)                     # 8-byte Folded Reload
	ld	s2, 416(sp)                     # 8-byte Folded Reload
	ld	s3, 408(sp)                     # 8-byte Folded Reload
	ld	s4, 400(sp)                     # 8-byte Folded Reload
	ld	s5, 392(sp)                     # 8-byte Folded Reload
	ld	s6, 384(sp)                     # 8-byte Folded Reload
	ld	s7, 376(sp)                     # 8-byte Folded Reload
	ld	s8, 368(sp)                     # 8-byte Folded Reload
	ld	s9, 360(sp)                     # 8-byte Folded Reload
	ld	s10, 352(sp)                    # 8-byte Folded Reload
	ld	s11, 344(sp)                    # 8-byte Folded Reload
	fld	fs0, 336(sp)                    # 8-byte Folded Reload
	fld	fs1, 328(sp)                    # 8-byte Folded Reload
	fld	fs2, 320(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 448
	ret
.Lfunc_end7:
	.size	dct_luma_sp, .Lfunc_end7-dct_luma_sp
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function dct_chroma_sp
.LCPI8_0:
	.quad	0x4008000000000000              # double 3
.LCPI8_1:
	.quad	0x3feb333333333333              # double 0.84999999999999998
.LCPI8_2:
	.quad	0x4010000000000000              # double 4
	.text
	.globl	dct_chroma_sp
	.p2align	2
	.type	dct_chroma_sp,@function
dct_chroma_sp:                          # @dct_chroma_sp
# %bb.0:
	addi	sp, sp, -704
	sd	ra, 696(sp)                     # 8-byte Folded Spill
	sd	s0, 688(sp)                     # 8-byte Folded Spill
	sd	s1, 680(sp)                     # 8-byte Folded Spill
	sd	s2, 672(sp)                     # 8-byte Folded Spill
	sd	s3, 664(sp)                     # 8-byte Folded Spill
	sd	s4, 656(sp)                     # 8-byte Folded Spill
	sd	s5, 648(sp)                     # 8-byte Folded Spill
	sd	s6, 640(sp)                     # 8-byte Folded Spill
	sd	s7, 632(sp)                     # 8-byte Folded Spill
	sd	s8, 624(sp)                     # 8-byte Folded Spill
	sd	s9, 616(sp)                     # 8-byte Folded Spill
	sd	s10, 608(sp)                    # 8-byte Folded Spill
	sd	s11, 600(sp)                    # 8-byte Folded Spill
	fsd	fs0, 592(sp)                    # 8-byte Folded Spill
	fsd	fs1, 584(sp)                    # 8-byte Folded Spill
	fsd	fs2, 576(sp)                    # 8-byte Folded Spill
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	sd	a1, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	lui	a0, 22
	addiw	a1, a0, 108
	add	a1, a2, a1
	lui	a0, 8
	add	a3, a2, a0
	lui	a0, 3
	addiw	a0, a0, 1856
	add	a0, a2, a0
	lw	a2, 12(a2)
	ld	a3, -1192(a3)
	lw	a4, 44(a1)
	li	a5, 528
	mul	a2, a2, a5
	add	s11, a3, a2
	li	a2, 1
	sd	a2, 144(sp)                     # 8-byte Folded Spill
	bnez	a4, .LBB8_4
# %bb.1:
	lw	a1, 0(a1)
	beqz	a1, .LBB8_3
# %bb.2:
	lw	a1, 424(s11)
	snez	a1, a1
	sd	a1, 144(sp)                     # 8-byte Folded Spill
	j	.LBB8_4
.LBB8_3:
	sd	zero, 144(sp)                   # 8-byte Folded Spill
.LBB8_4:
	ld	a0, 0(a0)
	slli	a1, s0, 3
	add	a0, a0, a1
	ld	a0, 8(a0)
	ld	a1, 0(a0)
	sd	a1, 160(sp)                     # 8-byte Folded Spill
	lw	a1, 12(s11)
	lui	a2, %hi(.LCPI8_0)
	fld	fa5, %lo(.LCPI8_0)(a2)
	ld	a0, 8(a0)
	sd	a0, 120(sp)                     # 8-byte Folded Spill
	addi	a1, a1, -12
	fcvt.d.w	fa4, a1
	fdiv.d	fa0, fa4, fa5
	call	exp2
	lui	a0, %hi(active_pps)
	ld	a0, %lo(active_pps)(a0)
	lw	a3, 12(s11)
	lw	a0, 208(a0)
	addw	a3, a0, a3
	li	a2, 51
	lui	a1, %hi(.LCPI8_1)
	blt	a3, a2, .LBB8_6
# %bb.5:
	li	a3, 51
.LBB8_6:
	lw	a4, 16(s11)
	fld	fa5, %lo(.LCPI8_1)(a1)
	sgtz	a1, a3
	neg	a5, a1
	addw	a1, a4, a0
	and	a0, a5, a3
	blt	a1, a2, .LBB8_8
# %bb.7:
	li	a1, 51
.LBB8_8:
	sd	s0, 96(sp)                      # 8-byte Folded Spill
	sgtz	a2, a1
	neg	a2, a2
	and	a1, a2, a1
	lui	a2, %hi(QP_SCALE_CR)
	addi	a2, a2, %lo(QP_SCALE_CR)
	regsw_c	x1, 0xb2(x19)		# 100110000100010110010
	lui	x3, %hi(img)
	ld	x5, %lo(img)(x3)
	add	a0, a2, a0
	lui	x4, 3
	addiw	a3, x4, 312
	add	x5, x5, a3
	lhu	a3, 0(x5)
	regsw_c	x0, 0x10(x8)		# 010000000000000010000
	lw	a4, 512(x5)
	lbu	a0, 0(a0)
	add	a1, a2, a1
	lbu	a1, 0(a1)
	add	a4, a4, a3
	sw	a4, 512(x5)
	sw	a3, 304(sp)
	regsw_c	x0, 0x412(x9)		# 010010000010000010010
	lhu	a2, 2(x5)
	lw	a3, 516(x5)
	add	a3, a3, a2
	sw	a3, 516(x5)
	sw	a2, 336(sp)
	lhu	a2, 4(x5)
	lw	a3, 520(x5)
	add	a3, a3, a2
	regsw_c	x4, 0x410(x8)		# 010000010010000010000
	sw	a3, 520(x5)
	sw	a2, 368(sp)
	lhu	a2, 6(x5)
	lw	a3, 524(x5)
	add	a3, a3, a2
	sw	a3, 524(x5)
	sw	a2, 400(sp)
	regsw_c	x0, 0x412(x9)		# 010010000010000010010
	lhu	a2, 8(x5)
	lw	a3, 528(x5)
	add	a3, a3, a2
	sw	a3, 528(x5)
	sw	a2, 432(sp)
	lhu	a2, 10(x5)
	lw	a3, 532(x5)
	add	a3, a3, a2
	regsw_c	x4, 0x410(x8)		# 010000010010000010000
	sw	a3, 532(x5)
	sw	a2, 464(sp)
	lhu	a2, 12(x5)
	lw	a3, 536(x5)
	add	a3, a3, a2
	sw	a3, 536(x5)
	sw	a2, 496(sp)
	regsw_c	x0, 0x412(x9)		# 010010000010000010010
	lhu	a2, 14(x5)
	lw	a3, 540(x5)
	add	a3, a3, a2
	sw	a3, 540(x5)
	sw	a2, 528(sp)
	lhu	a2, 32(x5)
	lw	a3, 576(x5)
	add	a3, a3, a2
	regsw_c	x4, 0x410(x8)		# 010000010010000010000
	sw	a3, 576(x5)
	sw	a2, 308(sp)
	lhu	a2, 34(x5)
	lw	a3, 580(x5)
	add	a3, a3, a2
	sw	a3, 580(x5)
	sw	a2, 340(sp)
	regsw_c	x0, 0x412(x9)		# 010010000010000010010
	lhu	a2, 36(x5)
	lw	a3, 584(x5)
	add	a3, a3, a2
	sw	a3, 584(x5)
	sw	a2, 372(sp)
	lhu	a2, 38(x5)
	lw	a3, 588(x5)
	add	a3, a3, a2
	regsw_c	x4, 0x410(x8)		# 010000010010000010000
	sw	a3, 588(x5)
	sw	a2, 404(sp)
	lhu	a2, 40(x5)
	lw	a3, 592(x5)
	add	a3, a3, a2
	sw	a3, 592(x5)
	sw	a2, 436(sp)
	regsw_c	x0, 0x412(x9)		# 010010000010000010010
	lhu	a2, 42(x5)
	lw	a3, 596(x5)
	add	a3, a3, a2
	sw	a3, 596(x5)
	sw	a2, 468(sp)
	lhu	a2, 44(x5)
	lw	a3, 600(x5)
	add	a3, a3, a2
	regsw_c	x4, 0x410(x8)		# 010000010010000010000
	sw	a3, 600(x5)
	sw	a2, 500(sp)
	lhu	a2, 46(x5)
	lw	a3, 604(x5)
	add	a3, a3, a2
	sw	a3, 604(x5)
	sw	a2, 532(sp)
	regsw_c	x0, 0x412(x9)		# 010010000010000010010
	lhu	a2, 64(x5)
	lw	a3, 640(x5)
	add	a3, a3, a2
	sw	a3, 640(x5)
	sw	a2, 312(sp)
	lhu	a2, 66(x5)
	lw	a3, 644(x5)
	add	a3, a3, a2
	regsw_c	x4, 0x410(x8)		# 010000010010000010000
	sw	a3, 644(x5)
	sw	a2, 344(sp)
	lhu	a2, 68(x5)
	lw	a3, 648(x5)
	add	a3, a3, a2
	sw	a3, 648(x5)
	sw	a2, 376(sp)
	regsw_c	x0, 0x412(x9)		# 010010000010000010010
	lhu	a2, 70(x5)
	lw	a3, 652(x5)
	add	a3, a3, a2
	sw	a3, 652(x5)
	sw	a2, 408(sp)
	lhu	a2, 72(x5)
	lw	a3, 656(x5)
	add	a3, a3, a2
	regsw_c	x4, 0x410(x8)		# 010000010010000010000
	sw	a3, 656(x5)
	sw	a2, 440(sp)
	lhu	a2, 74(x5)
	lw	a3, 660(x5)
	add	a3, a3, a2
	sw	a3, 660(x5)
	sw	a2, 472(sp)
	regsw_c	x0, 0x412(x9)		# 010010000010000010010
	lhu	a2, 76(x5)
	lw	a3, 664(x5)
	add	a3, a3, a2
	sw	a3, 664(x5)
	sw	a2, 504(sp)
	lhu	a2, 78(x5)
	lw	a3, 668(x5)
	add	a3, a3, a2
	regsw_c	x4, 0x410(x8)		# 010000010010000010000
	sw	a3, 668(x5)
	sw	a2, 536(sp)
	lhu	a2, 96(x5)
	lw	a3, 704(x5)
	add	a3, a3, a2
	sw	a3, 704(x5)
	sw	a2, 316(sp)
	regsw_c	x0, 0x412(x9)		# 010010000010000010010
	lhu	a2, 98(x5)
	lw	a3, 708(x5)
	add	a3, a3, a2
	sw	a3, 708(x5)
	sw	a2, 348(sp)
	lhu	a2, 100(x5)
	lw	a3, 712(x5)
	add	a3, a3, a2
	regsw_c	x4, 0x410(x8)		# 010000010010000010000
	sw	a3, 712(x5)
	sw	a2, 380(sp)
	lhu	a2, 102(x5)
	lw	a3, 716(x5)
	add	a3, a3, a2
	sw	a3, 716(x5)
	sw	a2, 412(sp)
	regsw_c	x0, 0x412(x9)		# 010010000010000010010
	lhu	a2, 104(x5)
	lw	a3, 720(x5)
	add	a3, a3, a2
	sw	a3, 720(x5)
	sw	a2, 444(sp)
	lhu	a2, 106(x5)
	lw	a3, 724(x5)
	add	a3, a3, a2
	regsw_c	x4, 0x410(x8)		# 010000010010000010000
	sw	a3, 724(x5)
	sw	a2, 476(sp)
	lhu	a2, 108(x5)
	lw	a3, 728(x5)
	add	a3, a3, a2
	sw	a3, 728(x5)
	sw	a2, 508(sp)
	regsw_c	x0, 0x412(x9)		# 010010000010000010010
	lhu	a2, 110(x5)
	lw	a3, 732(x5)
	add	a3, a3, a2
	sw	a3, 732(x5)
	sw	a2, 540(sp)
	lhu	a2, 128(x5)
	lw	a3, 768(x5)
	add	a3, a3, a2
	regsw_c	x4, 0x410(x8)		# 010000010010000010000
	sw	a3, 768(x5)
	sw	a2, 320(sp)
	lhu	a2, 130(x5)
	lw	a3, 772(x5)
	add	a3, a3, a2
	sw	a3, 772(x5)
	sw	a2, 352(sp)
	regsw_c	x0, 0x412(x9)		# 010010000010000010010
	lhu	a2, 132(x5)
	lw	a3, 776(x5)
	add	a3, a3, a2
	sw	a3, 776(x5)
	sw	a2, 384(sp)
	lhu	a2, 134(x5)
	lw	a3, 780(x5)
	add	a3, a3, a2
	regsw_c	x4, 0x410(x8)		# 010000010010000010000
	sw	a3, 780(x5)
	sw	a2, 416(sp)
	lhu	a2, 136(x5)
	lw	a3, 784(x5)
	add	a3, a3, a2
	sw	a3, 784(x5)
	sw	a2, 448(sp)
	regsw_c	x0, 0x412(x9)		# 010010000010000010010
	lhu	a2, 138(x5)
	lw	a3, 788(x5)
	add	a3, a3, a2
	sw	a3, 788(x5)
	sw	a2, 480(sp)
	lhu	a2, 140(x5)
	lw	a3, 792(x5)
	add	a3, a3, a2
	regsw_c	x4, 0x410(x8)		# 010000010010000010000
	sw	a3, 792(x5)
	sw	a2, 512(sp)
	lhu	a2, 142(x5)
	lw	a3, 796(x5)
	add	a3, a3, a2
	sw	a3, 796(x5)
	sw	a2, 544(sp)
	regsw_c	x0, 0x412(x9)		# 010010000010000010010
	lhu	a2, 160(x5)
	lw	a3, 832(x5)
	add	a3, a3, a2
	sw	a3, 832(x5)
	sw	a2, 324(sp)
	lhu	a2, 162(x5)
	lw	a3, 836(x5)
	add	a3, a3, a2
	regsw_c	x4, 0x410(x8)		# 010000010010000010000
	sw	a3, 836(x5)
	sw	a2, 356(sp)
	lhu	a2, 164(x5)
	lw	a3, 840(x5)
	add	a3, a3, a2
	sw	a3, 840(x5)
	sw	a2, 388(sp)
	regsw_c	x0, 0x412(x9)		# 010010000010000010010
	lhu	a2, 166(x5)
	lw	a3, 844(x5)
	add	a3, a3, a2
	sw	a3, 844(x5)
	sw	a2, 420(sp)
	lhu	a2, 168(x5)
	lw	a3, 848(x5)
	add	a3, a3, a2
	regsw_c	x4, 0x410(x8)		# 010000010010000010000
	sw	a3, 848(x5)
	sw	a2, 452(sp)
	lhu	a2, 170(x5)
	lw	a3, 852(x5)
	add	a3, a3, a2
	sw	a3, 852(x5)
	sw	a2, 484(sp)
	regsw_c	x0, 0x412(x9)		# 010010000010000010010
	lhu	a2, 172(x5)
	lw	a3, 856(x5)
	add	a3, a3, a2
	sw	a3, 856(x5)
	sw	a2, 516(sp)
	lhu	a2, 174(x5)
	lw	a3, 860(x5)
	add	a3, a3, a2
	regsw_c	x4, 0x410(x8)		# 010000010010000010000
	sw	a3, 860(x5)
	sw	a2, 548(sp)
	lhu	a2, 192(x5)
	lw	a3, 896(x5)
	add	a3, a3, a2
	sw	a3, 896(x5)
	sw	a2, 328(sp)
	regsw_c	x0, 0x412(x9)		# 010010000010000010010
	lhu	a2, 194(x5)
	lw	a3, 900(x5)
	add	a3, a3, a2
	sw	a3, 900(x5)
	sw	a2, 360(sp)
	lhu	a2, 196(x5)
	lw	a3, 904(x5)
	add	a3, a3, a2
	regsw_c	x4, 0x410(x8)		# 010000010010000010000
	sw	a3, 904(x5)
	sw	a2, 392(sp)
	lhu	a2, 198(x5)
	lw	a3, 908(x5)
	add	a3, a3, a2
	sw	a3, 908(x5)
	sw	a2, 424(sp)
	regsw_c	x0, 0x412(x9)		# 010010000010000010010
	lhu	a2, 200(x5)
	lw	a3, 912(x5)
	add	a3, a3, a2
	sw	a3, 912(x5)
	sw	a2, 456(sp)
	lhu	a2, 202(x5)
	lw	a3, 916(x5)
	add	a3, a3, a2
	regsw_c	x4, 0x410(x8)		# 010000010010000010000
	sw	a3, 916(x5)
	sw	a2, 488(sp)
	lhu	a2, 204(x5)
	lw	a3, 920(x5)
	add	a3, a3, a2
	sw	a3, 920(x5)
	sw	a2, 520(sp)
	regsw_c	x0, 0x412(x9)		# 010010000010000010010
	lhu	a2, 206(x5)
	lw	a3, 924(x5)
	add	a3, a3, a2
	sw	a3, 924(x5)
	sw	a2, 552(sp)
	lhu	a3, 224(x5)
	lw	a4, 960(x5)
	regsw_c	x0, 0x82(x16)		# 100000000000010000010
	li	x6, 0
	addi	a2, sp, 320
	addi	t6, sp, 400
	add	a4, a4, a3
	sw	a4, 960(x5)
	sw	a3, 332(sp)
	lhu	a5, 226(x5)
	regsw_c	x8, 0x10(x8)		# 010000100000000010000
	lw	a6, 964(x5)
	addi	a3, sp, 416
	addi	x2, sp, 336
	addi	a4, sp, 352
	add	a6, a6, a5
	sw	a6, 964(x5)
	sw	a5, 364(sp)
	regsw_c	x8, 0x2(x9)		# 010010100000000000010
	lhu	a6, 228(x5)
	lw	a7, 968(x5)
	addi	x1, sp, 368
	addi	a5, sp, 384
	addi	t4, sp, 432
	add	a7, a7, a6
	sw	a7, 968(x5)
	sw	a6, 396(sp)
	regsw_c	x0, 0x2(x9)		# 010010000000000000010
	lhu	t0, 230(x5)
	lw	t2, 972(x5)
	addi	a6, sp, 448
	addi	t1, sp, 528
	addi	a7, sp, 544
	add	t2, t2, t0
	sw	t2, 972(x5)
	sw	t0, 428(sp)
	regsw_c	x0, 0x33(x11)		# 010110000000000110011
	lhu	t2, 232(x5)
	lw	x7, 976(x5)
	addi	t5, sp, 464
	addi	t0, sp, 480
	addi	t3, sp, 496
	add	x7, x7, t2
	sw	x7, 976(x5)
	sw	t2, 460(sp)
	regsw_c	x9, 0x1f3(x11)		# 010110100100111110011
	lhu	t2, 234(x5)
	lw	x7, 980(x5)
	andi	x8, a0, 255
	li	x9, 171
	mul	x8, x8, x9
	add	x7, x7, t2
	sw	x7, 980(x5)
	sw	t2, 492(sp)
	regsw_c	x13, 0x1f3(x11)		# 010110110100111110011
	lhu	t2, 236(x5)
	lw	x7, 984(x5)
	srli	x12, x8, 10
	li	x8, 6
	mul	x10, x12, x8
	add	x7, x7, t2
	sw	x7, 984(x5)
	sw	t2, 524(sp)
	regsw_c	x2, 0x3b(x27)		# 110110001000000111011
	lhu	x7, 238(x5)
	lw	x11, 988(x5)
	sub	a0, a0, x10
	addi	t2, sp, 512
	fmul.d	fa5, fa0, fa5
	add	x11, x11, x7
	sw	x11, 988(x5)
	regsw_c	x15, 0x7b9(x18)		# 100100111111110111001
	lui	x10, 8
	andi	x5, a1, 255
	mul	x9, x5, x9
	sllw	x5, x10, x12
	srli	x9, x9, 10
	mul	x8, x9, x8
	sub	a1, a1, x8
	regsw_c	x19, 0x471(x28)		# 111001001110001110001
	sllw	x8, x10, x9
	sd	x8, 256(sp)                     # 8-byte Folded Spill
	sw	x7, 556(sp)
	ld	x3, %lo(img)(x3)
	sd	x12, 208(sp)                    # 8-byte Folded Spill
	addi	x12, x12, 15
	sd	x12, 136(sp)                    # 8-byte Folded Spill
	regsw_c	x3, 0x5e0(x7)		# 001110001110111100000
	sd	x9, 184(sp)                     # 8-byte Folded Spill
	addi	x9, x9, 15
	sd	x9, 56(sp)                      # 8-byte Folded Spill
	addiw	x4, x4, 824
	add	x3, x3, x4
	li	x4, 1
.LBB8_9:                                # =>This Inner Loop Header: Depth=1
	regsw_c	x29, 0x5b7(x27)		# 110111110110110110111
	slli	x6, x6, 6
	add	x6, x3, x6
	lw	x7, 0(x6)
	lw	x8, 12(x6)
	lw	x9, 4(x6)
	lw	x10, 8(x6)
	add	x11, x8, x7
	regsw_c	x31, 0x7de(x31)		# 111111111111111011110
	subw	x7, x7, x8
	add	x8, x10, x9
	subw	x9, x9, x10
	add	x10, x8, x11
	subw	x8, x11, x8
	sw	x8, 8(x6)
	slli	x8, x7, 1
	regsw_c	x15, 0x5b6(x31)		# 111110111110110110110
	add	x8, x8, x9
	slli	x9, x9, 1
	subw	x7, x7, x9
	lw	x9, 64(x6)
	lw	x11, 76(x6)
	lw	x12, 68(x6)
	lw	x13, 72(x6)
	regsw_c	x31, 0x7ff(x15)		# 011111111111111111111
	sw	x7, 12(x6)
	add	x7, x11, x9
	subw	x9, x9, x11
	add	x11, x13, x12
	subw	x12, x12, x13
	add	x13, x11, x7
	subw	x7, x7, x11
	regsw_c	x29, 0x5b6(x27)		# 110111110110110110110
	slli	x11, x9, 1
	add	x11, x11, x12
	slli	x12, x12, 1
	lw	x14, 128(x6)
	lw	x15, 140(x6)
	lw	x16, 132(x6)
	lw	x17, 136(x6)
	regsw_c	x31, 0x7ff(x31)		# 111111111111111111111
	subw	x9, x9, x12
	add	x12, x15, x14
	subw	x14, x14, x15
	add	x15, x17, x16
	subw	x16, x16, x17
	add	x17, x15, x12
	subw	x12, x12, x15
	regsw_c	x29, 0x5b6(x27)		# 110111110110110110110
	slli	x15, x14, 1
	add	x15, x15, x16
	slli	x16, x16, 1
	lw	x18, 192(x6)
	lw	x19, 204(x6)
	lw	x20, 196(x6)
	lw	x21, 200(x6)
	regsw_c	x31, 0x7ff(x31)		# 111111111111111111111
	subw	x14, x14, x16
	add	x16, x19, x18
	subw	x18, x18, x19
	add	x19, x21, x20
	subw	x20, x20, x21
	add	x21, x19, x16
	subw	x16, x16, x19
	regsw_c	x29, 0x7ff(x27)		# 110111110111111111111
	slli	x19, x18, 1
	add	x19, x19, x20
	slli	x20, x20, 1
	subw	x18, x18, x20
	add	x20, x21, x10
	subw	x10, x10, x21
	add	x21, x17, x13
	regsw_c	x23, 0x6f7(x31)		# 111111011111011110111
	subw	x13, x13, x17
	add	x17, x21, x20
	sw	x17, 0(x6)
	subw	x17, x20, x21
	sw	x17, 128(x6)
	slli	x17, x10, 1
	add	x17, x17, x13
	regsw_c	x14, 0x7ff(x15)		# 011110111011111111111
	sw	x17, 64(x6)
	slli	x13, x13, 1
	subw	x10, x10, x13
	sw	x10, 192(x6)
	add	x10, x19, x8
	subw	x8, x8, x19
	add	x13, x15, x11
	regsw_c	x23, 0x6f7(x31)		# 111111011111011110111
	subw	x11, x11, x15
	add	x15, x13, x10
	sw	x15, 4(x6)
	subw	x10, x10, x13
	sw	x10, 132(x6)
	slli	x10, x8, 1
	add	x10, x10, x11
	regsw_c	x13, 0x6ff(x15)		# 011110110111011111111
	sw	x10, 68(x6)
	lw	x10, 8(x6)
	slli	x11, x11, 1
	subw	x8, x8, x11
	sw	x8, 196(x6)
	add	x8, x16, x10
	subw	x10, x10, x16
	regsw_c	x30, 0x7de(x31)		# 111111111011111011110
	add	x11, x12, x7
	subw	x7, x7, x12
	add	x12, x11, x8
	sw	x12, 8(x6)
	subw	x8, x8, x11
	sw	x8, 136(x6)
	slli	x8, x10, 1
	regsw_c	x29, 0x5df(x29)		# 111011110110111011111
	add	x8, x8, x7
	sw	x8, 72(x6)
	lw	x8, 12(x6)
	slli	x7, x7, 1
	subw	x7, x10, x7
	sw	x7, 200(x6)
	add	x7, x18, x8
	regsw_c	x31, 0x6fb(x31)		# 111111111111011111011
	subw	x8, x8, x18
	add	x10, x14, x9
	subw	x9, x9, x14
	add	x11, x10, x7
	sw	x11, 12(x6)
	subw	x7, x7, x10
	sw	x7, 140(x6)
	regsw_c	x23, 0x5f6(x27)		# 110111011110111110110
	slli	x7, x8, 1
	add	x7, x7, x9
	sw	x7, 76(x6)
	slli	x9, x9, 1
	subw	x7, x8, x9
	lw	x8, 16(x6)
	lw	x9, 28(x6)
	regsw_c	x7, 0x7ff(x27)		# 110110011111111111111
	lw	x10, 20(x6)
	lw	x11, 24(x6)
	sw	x7, 204(x6)
	add	x7, x9, x8
	subw	x8, x8, x9
	add	x9, x11, x10
	subw	x10, x10, x11
	regsw_c	x23, 0x5f7(x31)		# 111111011110111110111
	add	x11, x9, x7
	subw	x7, x7, x9
	sw	x7, 24(x6)
	slli	x7, x8, 1
	add	x7, x7, x10
	slli	x10, x10, 1
	subw	x8, x8, x10
	regsw_c	x13, 0x4ff(x27)		# 110110110110011111111
	lw	x9, 80(x6)
	lw	x10, 92(x6)
	lw	x12, 84(x6)
	lw	x13, 88(x6)
	sw	x8, 28(x6)
	add	x8, x10, x9
	subw	x9, x9, x10
	regsw_c	x31, 0x7be(x31)		# 111111111111110111110
	add	x10, x13, x12
	subw	x12, x12, x13
	add	x13, x10, x8
	subw	x8, x8, x10
	slli	x10, x9, 1
	add	x10, x10, x12
	slli	x12, x12, 1
	regsw_c	x13, 0x5ff(x27)		# 110110110110111111111
	lw	x14, 144(x6)
	lw	x15, 156(x6)
	lw	x16, 148(x6)
	lw	x17, 152(x6)
	subw	x9, x9, x12
	add	x12, x15, x14
	subw	x14, x14, x15
	regsw_c	x31, 0x7be(x31)		# 111111111111110111110
	add	x15, x17, x16
	subw	x16, x16, x17
	add	x17, x15, x12
	subw	x12, x12, x15
	slli	x15, x14, 1
	add	x15, x15, x16
	slli	x16, x16, 1
	regsw_c	x13, 0x5ff(x27)		# 110110110110111111111
	lw	x18, 208(x6)
	lw	x19, 220(x6)
	lw	x20, 212(x6)
	lw	x21, 216(x6)
	subw	x14, x14, x16
	add	x16, x19, x18
	subw	x18, x18, x19
	regsw_c	x31, 0x7be(x31)		# 111111111111110111110
	add	x19, x21, x20
	subw	x20, x20, x21
	add	x21, x19, x16
	subw	x16, x16, x19
	slli	x19, x18, 1
	add	x19, x19, x20
	slli	x20, x20, 1
	regsw_c	x31, 0x7fb(x31)		# 111111111111111111011
	subw	x18, x18, x20
	add	x20, x21, x11
	subw	x11, x11, x21
	add	x21, x17, x13
	subw	x13, x13, x17
	add	x17, x21, x20
	sw	x17, 16(x6)
	regsw_c	x29, 0x6f7(x29)		# 111011110111011110111
	subw	x17, x20, x21
	sw	x17, 144(x6)
	slli	x17, x11, 1
	add	x17, x17, x13
	sw	x17, 80(x6)
	slli	x13, x13, 1
	subw	x11, x11, x13
	regsw_c	x31, 0x7fb(x15)		# 011111111111111111011
	sw	x11, 208(x6)
	add	x11, x19, x7
	subw	x7, x7, x19
	add	x13, x15, x10
	subw	x10, x10, x15
	add	x15, x13, x11
	sw	x15, 20(x6)
	regsw_c	x29, 0x6f6(x29)		# 111011110111011110110
	subw	x11, x11, x13
	sw	x11, 148(x6)
	slli	x11, x7, 1
	add	x11, x11, x10
	sw	x11, 84(x6)
	lw	x11, 24(x6)
	slli	x10, x10, 1
	regsw_c	x31, 0x7ff(x29)		# 111011111111111111111
	subw	x7, x7, x10
	sw	x7, 212(x6)
	add	x7, x16, x11
	subw	x10, x11, x16
	add	x11, x12, x8
	subw	x8, x8, x12
	add	x12, x11, x7
	regsw_c	x23, 0x5de(x15)		# 011111011110111011110
	sw	x12, 24(x6)
	subw	x7, x7, x11
	sw	x7, 152(x6)
	slli	x7, x10, 1
	add	x7, x7, x8
	sw	x7, 88(x6)
	lw	x7, 28(x6)
	regsw_c	x23, 0x7ff(x27)		# 110111011111111111111
	slli	x8, x8, 1
	subw	x8, x10, x8
	sw	x8, 216(x6)
	add	x8, x18, x7
	subw	x7, x7, x18
	add	x10, x14, x9
	subw	x9, x9, x14
	regsw_c	x30, 0x7bb(x29)		# 111011111011110111011
	add	x11, x10, x8
	sw	x11, 28(x6)
	subw	x8, x8, x10
	sw	x8, 156(x6)
	slli	x8, x7, 1
	add	x8, x8, x9
	sw	x8, 92(x6)
	regsw_c	x23, 0x522(x27)		# 110111011110100100010
	slli	x9, x9, 1
	subw	x7, x7, x9
	sw	x7, 220(x6)
	andi	x7, x4, 1
	li	x6, 4
	li	x4, 0
	bnez	x7, .LBB8_9
# %bb.10:
	regsw_c	x13, 0x7b7(x18)		# 100100110111110110111
	li	x12, 0
	lui	x3, 174763
	addiw	x3, x3, -1365
	mul	x3, x5, x3
	srli	x4, x3, 63
	srli	x3, x3, 32
	add	x3, x3, x4
	regsw_c	x9, 0x124(x6)		# 001100100100100100100
	sd	x3, 152(sp)                     # 8-byte Folded Spill
	addi	x3, sp, 304
	li	x11, 1
	addi	x4, sp, 400
	addi	x5, sp, 336
	addi	x6, sp, 368
	addi	x7, sp, 432
	regsw_c	x9, 0x0(x18)		# 100100100100000000000
	addi	x8, sp, 528
	addi	x9, sp, 464
	addi	x10, sp, 496
	addi	x16, sp, 304
.LBB8_11:                               # =>This Inner Loop Header: Depth=1
	regsw_c	x13, 0x5bf(x26)		# 110100110110110111111
	lw	x13, 0(x16)
	lw	x14, 0(t6)
	lw	x15, 0(x2)
	lw	x17, 0(x1)
	slli	x18, x12, 2
	add	x12, x14, x13
	subw	x13, x13, x14
	regsw_c	x31, 0x6f6(x31)		# 111111111111011110110
	add	x14, x17, x15
	subw	x17, x15, x17
	add	x19, x14, x12
	subw	x12, x12, x14
	sw	x12, 0(x1)
	slli	x14, x13, 1
	slli	x12, x17, 1
	regsw_c	x29, 0x7be(x28)		# 111001110111110111110
	subw	x12, x13, x12
	sw	x12, 0(t6)
	addi	x12, x18, 4
	add	x20, x3, x12
	lw	x13, 0(x20)
	add	x15, x4, x12
	lw	x21, 0(x15)
	regsw_c	x15, 0x5ff(x31)		# 111110111110111111111
	add	x22, x5, x12
	lw	x23, 0(x22)
	add	x24, x6, x12
	lw	x25, 0(x24)
	add	x17, x14, x17
	add	x14, x21, x13
	subw	x21, x13, x21
	regsw_c	x31, 0x7be(x31)		# 111111111111110111110
	add	x13, x25, x23
	subw	x23, x23, x25
	add	x25, x13, x14
	subw	x26, x14, x13
	slli	x13, x21, 1
	add	x27, x13, x23
	slli	x23, x23, 1
	regsw_c	x29, 0x7ba(x27)		# 110111110111110111010
	addi	x13, x18, 8
	add	x28, x3, x13
	lw	x14, 0(x28)
	add	x29, x4, x13
	lw	x30, 0(x29)
	add	x31, x5, x13
	lw	s0, 0(x31)
	regsw_c	x15, 0x7e0(x12)		# 011000111111111100000
	add	s1, x6, x13
	lw	s2, 0(s1)
	subw	x21, x21, x23
	add	x23, x30, x14
	subw	x30, x14, x30
	add	x14, s2, s0
	subw	s0, s0, s2
	regsw_c	x28, 0x437(x15)		# 011111110010000110111
	add	s2, x14, x23
	subw	x23, x23, x14
	slli	x14, x30, 1
	add	s3, x14, s0
	slli	s0, s0, 1
	addi	x14, x18, 12
	add	x18, x3, x14
	regsw_c	x16, 0x618(x9)		# 010011000011000011000
	lw	s4, 0(x18)
	add	s5, x4, x14
	lw	s6, 0(s5)
	add	s7, x5, x14
	lw	s8, 0(s7)
	add	s9, x6, x14
	lw	s10, 0(s9)
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	subw	x30, x30, s0
	add	s0, s6, s4
	subw	s4, s4, s6
	add	s6, s10, s8
	subw	s8, s8, s10
	add	s10, s6, s0
	subw	s0, s0, s6
	slli	s6, s4, 1
	add	s6, s6, s8
	slli	s8, s8, 1
	subw	s4, s4, s8
	regsw_c	x3, 0x414(x7)		# 001110001110000010100
	add	s8, s10, x19
	subw	x19, x19, s10
	add	s10, s2, x25
	subw	x25, x25, s2
	add	s2, s10, s8
	sw	s2, 0(x16)
	subw	x16, s8, s10
	regsw_c	x14, 0x7bb(x15)		# 011110111011110111011
	sw	x16, 0(x28)
	slli	x16, x19, 1
	add	x16, x16, x25
	sw	x16, 0(x20)
	slli	x25, x25, 1
	subw	x16, x19, x25
	sw	x16, 0(x18)
	regsw_c	x11, 0x5df(x23)		# 101110101110111011111
	add	x16, s6, x17
	subw	x17, x17, s6
	add	x18, s3, x27
	subw	x19, x27, s3
	add	x20, x18, x16
	sw	x20, 0(x2)
	subw	x2, x16, x18
	regsw_c	x14, 0x7b7(x15)		# 011110111011110110111
	sw	x2, 0(x31)
	slli	x2, x17, 1
	add	x2, x2, x19
	sw	x2, 0(x22)
	lw	x2, 0(x1)
	slli	x19, x19, 1
	subw	x16, x17, x19
	regsw_c	x29, 0x7fb(x6)		# 001101110111111111011
	sw	x16, 0(s7)
	add	x16, s0, x2
	subw	x2, x2, s0
	add	x17, x23, x26
	subw	x18, x26, x23
	add	x19, x17, x16
	sw	x19, 0(x1)
	regsw_c	x29, 0x6e6(x28)		# 111001110111011100110
	subw	x1, x16, x17
	sw	x1, 0(s1)
	slli	x1, x2, 1
	add	x1, x1, x18
	sw	x1, 0(x24)
	lw	x1, 0(t6)
	slli	x18, x18, 1
	regsw_c	x27, 0x5ff(x28)		# 111001101110111111111
	subw	x2, x2, x18
	sw	x2, 0(s9)
	add	x2, s4, x1
	subw	x1, x1, s4
	add	x16, x30, x21
	subw	x17, x21, x30
	add	x18, x16, x2
	regsw_c	x20, 0x456(x5)		# 001011010010001010110
	sw	x18, 0(t6)
	subw	t6, x2, x16
	sw	t6, 0(x29)
	slli	t6, x1, 1
	add	t6, t6, x17
	sw	t6, 0(x15)
	slli	x17, x17, 1
	regsw_c	x9, 0x103(x14)		# 011100100100100000011
	subw	t6, x1, x17
	lw	x1, 0(t4)
	lw	x2, 0(t1)
	lw	x15, 0(t5)
	lw	x16, 0(t3)
	sw	t6, 0(s5)
	add	t6, x2, x1
	regsw_c	x31, 0x446(x31)		# 111111111110001000110
	subw	x1, x1, x2
	add	x2, x16, x15
	subw	x15, x15, x16
	add	x16, x2, t6
	subw	t6, t6, x2
	sw	t6, 0(t3)
	slli	x2, x1, 1
	regsw_c	x1, 0x79c(x9)		# 010010000111110011100
	slli	t6, x15, 1
	subw	t6, x1, t6
	sw	t6, 0(t1)
	add	x1, x7, x12
	lw	x17, 0(x1)
	add	t6, x8, x12
	lw	x18, 0(t6)
	regsw_c	x15, 0x5ff(x31)		# 111110111110111111111
	add	x19, x9, x12
	lw	x20, 0(x19)
	add	x12, x10, x12
	lw	x21, 0(x12)
	add	x2, x2, x15
	add	x15, x18, x17
	subw	x17, x17, x18
	regsw_c	x31, 0x7be(x31)		# 111111111111110111110
	add	x18, x21, x20
	subw	x20, x20, x21
	add	x21, x18, x15
	subw	x15, x15, x18
	slli	x18, x17, 1
	add	x18, x18, x20
	slli	x20, x20, 1
	regsw_c	x15, 0x5f7(x31)		# 111110111110111110111
	add	x22, x7, x13
	lw	x23, 0(x22)
	add	x24, x8, x13
	lw	x25, 0(x24)
	add	x26, x9, x13
	lw	x27, 0(x26)
	add	x13, x10, x13
	regsw_c	x31, 0x7ff(x27)		# 110111111111111111111
	lw	x28, 0(x13)
	subw	x17, x17, x20
	add	x20, x25, x23
	subw	x23, x23, x25
	add	x25, x28, x27
	subw	x27, x27, x28
	add	x28, x25, x20
	regsw_c	x15, 0x5f7(x31)		# 111110111110111110111
	subw	x20, x20, x25
	slli	x25, x23, 1
	add	x25, x25, x27
	slli	x27, x27, 1
	add	x29, x7, x14
	lw	x30, 0(x29)
	add	x31, x8, x14
	regsw_c	x17, 0x6bd(x9)		# 010011000111010111101
	lw	s0, 0(x31)
	add	s1, x9, x14
	lw	s2, 0(s1)
	add	x14, x10, x14
	lw	s3, 0(x14)
	subw	x23, x23, x27
	add	x27, s0, x30
	regsw_c	x0, 0x390(x24)		# 110000000001110010000
	subw	x30, x30, s0
	add	s0, s3, s2
	subw	s2, s2, s3
	add	s3, s0, x27
	subw	x27, x27, s0
	slli	s0, x30, 1
	add	s0, s0, s2
	slli	s2, s2, 1
	regsw_c	x28, 0x7e1(x24)		# 110001110011111100001
	subw	x30, x30, s2
	add	s2, s3, x16
	subw	x16, x16, s3
	add	s3, x28, x21
	subw	x21, x21, x28
	add	x28, s3, s2
	sw	x28, 0(t4)
	subw	t4, s2, s3
	regsw_c	x2, 0x59a(x9)		# 010010001010110011010
	sw	t4, 0(x22)
	slli	t4, x16, 1
	add	t4, t4, x21
	sw	t4, 0(x1)
	slli	x21, x21, 1
	subw	t4, x16, x21
	sw	t4, 0(x29)
	regsw_c	x15, 0x789(x7)		# 001110111111110001001
	add	t4, s0, x2
	subw	x1, x2, s0
	add	x2, x25, x18
	subw	x16, x18, x25
	add	x18, x2, t4
	sw	x18, 0(t5)
	subw	t4, t4, x2
	regsw_c	x2, 0x433(x9)		# 010010001010000110011
	sw	t4, 0(x26)
	slli	t4, x1, 1
	add	t4, t4, x16
	sw	t4, 0(x19)
	lw	t4, 0(t3)
	slli	x16, x16, 1
	subw	t5, x1, x16
	sw	t5, 0(s1)
	regsw_c	x31, 0x789(x8)		# 010001111111110001001
	add	t5, x27, t4
	subw	t4, t4, x27
	add	x1, x20, x15
	subw	x2, x15, x20
	add	x15, x1, t5
	sw	x15, 0(t3)
	subw	t3, t5, x1
	regsw_c	x2, 0x431(x8)		# 010000001010000110001
	sw	t3, 0(x13)
	slli	t3, t4, 1
	add	t3, t3, x2
	sw	t3, 0(x12)
	lw	t3, 0(t1)
	slli	x2, x2, 1
	subw	t4, t4, x2
	regsw_c	x2, 0x7e1(x9)		# 010010001011111100001
	sw	t4, 0(x14)
	add	t4, x30, t3
	subw	t3, t3, x30
	add	t5, x23, x17
	subw	x1, x17, x23
	add	x2, t5, t4
	sw	x2, 0(t1)
	subw	t4, t4, t5
	regsw_c	x2, 0x18a(x8)		# 010000001000110001010
	sw	t4, 0(x24)
	slli	t1, t3, 1
	add	t1, t1, x1
	sw	t1, 0(t6)
	slli	x1, x1, 1
	subw	t1, t3, x1
	sw	t1, 0(x31)
	regsw_c	x8, 0x120(x26)		# 110100100000100100000
	andi	x13, x11, 1
	li	x12, 4
	mv	x16, a2
	mv	t6, a3
	mv	x2, a4
	mv	x1, a5
	mv	t4, a6
	mv	t1, a7
	mv	t5, t0
	mv	t3, t2
	regsw_c	x0, 0x0(x17)		# 100010000000000000000
	li	x11, 0
	bnez	x13, .LBB8_11
# %bb.12:
	lui	a2, %hi(.LCPI8_2)
	lui	a3, %hi(img)
	ld	a3, %lo(img)(a3)
	fld	fa4, %lo(.LCPI8_2)(a2)
	lui	a2, 3
	addiw	a2, a2, 824
	add	a2, a3, a2
	lw	a3, 0(a2)
	lw	a4, 16(a2)
	lw	a5, 256(a2)
	lw	a2, 272(a2)
	li	s8, 0
	li	s10, 0
	sd	zero, 264(sp)                   # 8-byte Folded Spill
	fmul.d	fs0, fa5, fa4
	add	a6, a4, a3
	add	a7, a2, a5
	add	t0, a7, a6
	sw	t0, 560(sp)
	add	t0, a3, a5
	add	t1, a4, a2
	subw	t0, t0, t1
	sw	t0, 564(sp)
	subw	a6, a6, a7
	sw	a6, 568(sp)
	add	a4, a4, a5
	add	a2, a3, a2
	lw	a3, 304(sp)
	lw	a5, 432(sp)
	lw	a6, 320(sp)
	lw	a7, 448(sp)
	subw	a2, a2, a4
	sw	a2, 572(sp)
	add	a2, a5, a3
	add	a4, a7, a6
	add	t0, a4, a2
	sw	t0, 288(sp)
	add	t0, a3, a6
	add	t1, a5, a7
	subw	t0, t0, t1
	sw	t0, 292(sp)
	subw	a2, a2, a4
	sw	a2, 296(sp)
	add	a5, a5, a6
	add	a3, a3, a7
	subw	a3, a3, a5
	sw	a3, 300(sp)
	andi	a1, a1, 255
	slli	a1, a1, 6
	lui	a2, %hi(quant_coef)
	addi	a2, a2, %lo(quant_coef)
	add	a3, a2, a1
	sd	a3, 128(sp)                     # 8-byte Folded Spill
	lw	s5, 0(a3)
	ld	a4, 184(sp)                     # 8-byte Folded Reload
	addi	a3, a4, 16
	sd	a3, 240(sp)                     # 8-byte Folded Spill
	lui	a3, 1048560
	sllw	a3, a3, a4
	sd	a3, 232(sp)                     # 8-byte Folded Spill
	andi	a0, a0, 255
	slli	a0, a0, 6
	add	a2, a2, a0
	sd	a2, 176(sp)                     # 8-byte Folded Spill
	ld	a2, 152(sp)                     # 8-byte Folded Reload
	slli	a2, a2, 1
	sd	a2, 224(sp)                     # 8-byte Folded Spill
	ld	a2, 208(sp)                     # 8-byte Folded Reload
	addi	a2, a2, 16
	sd	a2, 216(sp)                     # 8-byte Folded Spill
	lui	a2, %hi(dequant_coef)
	addi	a2, a2, %lo(dequant_coef)
	add	a0, a2, a0
	sd	a0, 200(sp)                     # 8-byte Folded Spill
	ld	s2, 96(sp)                      # 8-byte Folded Reload
	slli	a3, s2, 2
	lui	a0, 240
	sd	a3, 88(sp)                      # 8-byte Folded Spill
	sllw	a0, a0, a3
	sd	a0, 112(sp)                     # 8-byte Folded Spill
	add	a1, a2, a1
	sd	a1, 168(sp)                     # 8-byte Folded Spill
	li	s7, -1
	addi	s0, sp, 560
	addi	s9, sp, 288
	lui	a0, 1
	addiw	a0, a0, -2033
	sd	a0, 104(sp)                     # 8-byte Folded Spill
	sd	s11, 64(sp)                     # 8-byte Folded Spill
	ld	s1, 256(sp)                     # 8-byte Folded Reload
	sd	s5, 248(sp)                     # 8-byte Folded Spill
	j	.LBB8_14
.LBB8_13:                               #   in Loop: Header=BB8_14 Depth=1
	addi	s10, s10, 2
	addi	s8, s8, 4
	addi	s0, s0, 4
	addi	s9, s9, 4
	addi	a0, sp, 576
	beq	s0, a0, .LBB8_42
.LBB8_14:                               # =>This Inner Loop Header: Depth=1
	lw	s3, 0(s9)
	addiw	s7, s7, 1
	sd	s7, 272(sp)                     # 8-byte Folded Spill
	sraiw	a0, s3, 31
	xor	a1, s3, a0
	subw	a1, a1, a0
	mul	a0, a1, s5
	lw	s6, 0(s0)
	add	a0, a0, s1
	ld	a1, 232(sp)                     # 8-byte Folded Reload
	and	a0, a0, a1
	divw	a0, a0, s5
	mv	a1, s3
	call	sign
	subw	s4, s6, a0
	ld	a0, 176(sp)                     # 8-byte Folded Reload
	lw	a0, 0(a0)
	sraiw	a1, s4, 31
	xor	a2, s4, a1
	subw	a2, a2, a1
	mul	a1, a2, a0
	ld	a4, 224(sp)                     # 8-byte Folded Reload
	add	a1, a1, a4
	subw	s5, s6, s3
	sraiw	a2, s5, 31
	xor	a3, s5, a2
	subw	a3, a3, a2
	mul	a0, a3, a0
	add	a0, a0, a4
	ld	a2, 216(sp)                     # 8-byte Folded Reload
	sraw	s7, a0, a2
	sraw	s1, a1, a2
	beqz	s7, .LBB8_19
# %bb.15:                               #   in Loop: Header=BB8_14 Depth=1
	beq	s1, s7, .LBB8_19
# %bb.16:                               #   in Loop: Header=BB8_14 Depth=1
	beqz	s1, .LBB8_19
# %bb.17:                               #   in Loop: Header=BB8_14 Depth=1
	sd	s8, 192(sp)                     # 8-byte Folded Spill
	mv	a0, s1
	mv	a1, s4
	call	sign
	ld	a1, 200(sp)                     # 8-byte Folded Reload
	lw	s11, 0(a1)
	mul	a0, a0, s11
	slli	a0, a0, 4
	ld	s2, 208(sp)                     # 8-byte Folded Reload
	sllw	a0, a0, s2
	srli	a0, a0, 5
	subw	a1, s6, s3
	subw	a1, a1, a0
	fcvt.d.w	fs1, a1
	addi	a2, sp, 284
	addi	a3, sp, 280
	mv	a0, s1
	ld	s8, 272(sp)                     # 8-byte Folded Reload
	mv	a1, s8
	call	levrun_linfo_c2x2
	lw	a0, 284(sp)
	fcvt.d.w	fa5, a0
	fmul.d	fa5, fs0, fa5
	fmadd.d	fs1, fs1, fs1, fa5
	mv	a0, s7
	mv	a1, s5
	call	sign
	mul	a0, s11, a0
	slli	a0, a0, 4
	sllw	a0, a0, s2
	srli	a0, a0, 5
	subw	a1, s6, s3
	subw	a1, a1, a0
	fcvt.d.w	fs2, a1
	addi	a2, sp, 284
	addi	a3, sp, 280
	mv	a0, s7
	mv	a1, s8
	call	levrun_linfo_c2x2
	lw	a0, 284(sp)
	fcvt.d.w	fa5, a0
	fmul.d	fa5, fs0, fa5
	fmadd.d	fa5, fs2, fs2, fa5
	feq.d	a0, fs1, fa5
	beqz	a0, .LBB8_24
# %bb.18:                               #   in Loop: Header=BB8_14 Depth=1
	sraiw	a0, s1, 31
	xor	a1, s1, a0
	subw	a1, a1, a0
	sraiw	a0, s7, 31
	xor	a2, s7, a0
	subw	a2, a2, a0
	sltu	a0, a1, a2
	j	.LBB8_25
.LBB8_19:                               #   in Loop: Header=BB8_14 Depth=1
	bne	s1, s7, .LBB8_21
# %bb.20:                               #   in Loop: Header=BB8_14 Depth=1
	mv	s6, s1
	j	.LBB8_29
.LBB8_21:                               #   in Loop: Header=BB8_14 Depth=1
	beqz	s1, .LBB8_23
# %bb.22:                               #   in Loop: Header=BB8_14 Depth=1
	mv	s4, s5
.LBB8_23:                               #   in Loop: Header=BB8_14 Depth=1
	seqz	a0, s1
	addiw	a0, a0, -1
	and	s6, a0, s7
	j	.LBB8_29
.LBB8_24:                               #   in Loop: Header=BB8_14 Depth=1
	flt.d	a0, fs1, fa5
.LBB8_25:                               #   in Loop: Header=BB8_14 Depth=1
	mv	s6, s1
	ld	s11, 64(sp)                     # 8-byte Folded Reload
	ld	s2, 96(sp)                      # 8-byte Folded Reload
	ld	s8, 192(sp)                     # 8-byte Folded Reload
	bnez	a0, .LBB8_27
# %bb.26:                               #   in Loop: Header=BB8_14 Depth=1
	mv	s6, s7
.LBB8_27:                               #   in Loop: Header=BB8_14 Depth=1
	beq	s6, s1, .LBB8_29
# %bb.28:                               #   in Loop: Header=BB8_14 Depth=1
	mv	s4, s5
.LBB8_29:                               #   in Loop: Header=BB8_14 Depth=1
	ld	s1, 256(sp)                     # 8-byte Folded Reload
	ld	s5, 248(sp)                     # 8-byte Folded Reload
	ld	s7, 272(sp)                     # 8-byte Folded Reload
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 937(a0)
	beqz	a0, .LBB8_34
# %bb.30:                               #   in Loop: Header=BB8_14 Depth=1
	beqz	s6, .LBB8_39
.LBB8_31:                               #   in Loop: Header=BB8_14 Depth=1
	ld	a0, 368(s11)
	ld	a1, 112(sp)                     # 8-byte Folded Reload
	or	a0, a0, a1
	sd	a0, 368(s11)
	ld	a0, 0(sp)                       # 8-byte Folded Reload
	bgtz	a0, .LBB8_33
# %bb.32:                               #   in Loop: Header=BB8_14 Depth=1
	li	a0, 1
	sd	a0, 0(sp)                       # 8-byte Folded Spill
.LBB8_33:                               #   in Loop: Header=BB8_14 Depth=1
	mv	a0, s6
	mv	a1, s4
	call	sign
	ld	a3, 264(sp)                     # 8-byte Folded Reload
	slli	a1, a3, 2
	ld	a2, 160(sp)                     # 8-byte Folded Reload
	add	a2, a2, a1
	sw	a0, 0(a2)
	ld	a0, 120(sp)                     # 8-byte Folded Reload
	add	a1, a0, a1
	sw	s7, 0(a1)
	addiw	a3, a3, 1
	sd	a3, 264(sp)                     # 8-byte Folded Spill
	mv	a0, s6
	mv	a1, s4
	call	sign
	ld	a1, 200(sp)                     # 8-byte Folded Reload
	lw	a1, 0(a1)
	mul	a0, a0, a1
	slli	a0, a0, 4
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	sllw	a0, a0, a1
	srai	a0, a0, 5
	li	s7, -1
	j	.LBB8_40
.LBB8_34:                               #   in Loop: Header=BB8_14 Depth=1
	mv	a0, s6
	ld	a1, 104(sp)                     # 8-byte Folded Reload
	blt	s6, a1, .LBB8_36
# %bb.35:                               #   in Loop: Header=BB8_14 Depth=1
	ld	a0, 104(sp)                     # 8-byte Folded Reload
.LBB8_36:                               #   in Loop: Header=BB8_14 Depth=1
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lw	a1, 40(a1)
	li	a2, 4
	blt	a1, a2, .LBB8_38
# %bb.37:                               #   in Loop: Header=BB8_14 Depth=1
	mv	a0, s6
.LBB8_38:                               #   in Loop: Header=BB8_14 Depth=1
	mv	s6, a0
	bnez	a0, .LBB8_31
.LBB8_39:                               #   in Loop: Header=BB8_14 Depth=1
	li	a0, 0
.LBB8_40:                               #   in Loop: Header=BB8_14 Depth=1
	addw	s3, a0, s3
	sraiw	a0, s3, 31
	xor	a1, s3, a0
	subw	a1, a1, a0
	mul	a0, a1, s5
	add	a0, a0, s1
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	sraw	s4, a0, a1
	mv	a0, s4
	mv	a1, s3
	call	sign
	ld	a1, 168(sp)                     # 8-byte Folded Reload
	lw	a1, 0(a1)
	lui	a2, %hi(si_frame_indicator)
	lw	a2, %lo(si_frame_indicator)(a2)
	lui	a3, %hi(sp2_frame_indicator)
	lw	a3, %lo(sp2_frame_indicator)(a3)
	mul	a0, a1, a0
	ld	a1, 184(sp)                     # 8-byte Folded Reload
	sllw	a0, a0, a1
	sw	a0, 0(s0)
	or	a2, a2, a3
	slli	a0, s2, 3
	sd	a0, 48(sp)                      # 8-byte Folded Spill
	bnez	a2, .LBB8_13
# %bb.41:                               #   in Loop: Header=BB8_14 Depth=1
	mv	a0, s4
	mv	a1, s3
	call	sign
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a2, %hi(lrec_uv)
	ld	a2, %lo(lrec_uv)(a2)
	lw	a3, 164(a1)
	ld	a4, 48(sp)                      # 8-byte Folded Reload
	add	a2, a2, a4
	ld	a2, 0(a2)
	andi	a4, s8, 4
	addw	a3, a3, a4
	slli	a3, a3, 3
	lw	a1, 160(a1)
	add	a2, a2, a3
	ld	a2, 0(a2)
	andi	a3, s10, 4
	addw	a1, a1, a3
	slli	a1, a1, 2
	add	a1, a2, a1
	sw	a0, 0(a1)
	j	.LBB8_13
.LBB8_42:
	ld	a0, 264(sp)                     # 8-byte Folded Reload
	slli	a0, a0, 2
	ld	a1, 160(sp)                     # 8-byte Folded Reload
	add	a0, a1, a0
	sw	zero, 0(a0)
	lw	a0, 560(sp)
	lw	a2, 564(sp)
	lw	a3, 568(sp)
	lw	a4, 572(sp)
	li	s3, 0
	sd	zero, 96(sp)                    # 8-byte Folded Spill
	srai	s4, s1, 1
	add	a5, a2, a0
	add	a6, a4, a3
	add	a1, a6, a5
	srliw	a7, a1, 31
	add	a7, a1, a7
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	sraiw	a7, a7, 1
	lui	t0, 3
	addiw	t0, t0, 824
	sd	t0, 112(sp)                     # 8-byte Folded Spill
	add	t0, a1, t0
	sw	a7, 0(t0)
	add	a7, a0, a3
	add	t1, a2, a4
	subw	a7, a7, t1
	srliw	t1, a7, 31
	add	a7, a7, t1
	sraiw	a7, a7, 1
	sw	a7, 16(t0)
	subw	a5, a5, a6
	srliw	a6, a5, 31
	add	a5, a5, a6
	sraiw	a5, a5, 1
	sw	a5, 256(t0)
	add	a2, a2, a3
	add	a0, a0, a4
	subw	a0, a0, a2
	srliw	a2, a0, 31
	add	a0, a0, a2
	sraiw	a0, a0, 1
	sw	a0, 272(t0)
	lui	a0, 1048568
	ld	a2, 184(sp)                     # 8-byte Folded Reload
	sllw	a0, a0, a2
	sd	a0, 104(sp)                     # 8-byte Folded Spill
	ld	a0, 88(sp)                      # 8-byte Folded Reload
	addi	a0, a0, 16
	slli	a0, a0, 32
	srli	a0, a0, 32
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	li	a3, 1
	ld	s10, 56(sp)                     # 8-byte Folded Reload
	sd	s4, 120(sp)                     # 8-byte Folded Spill
	j	.LBB8_44
.LBB8_43:                               #   in Loop: Header=BB8_44 Depth=1
	ld	a2, 16(sp)                      # 8-byte Folded Reload
	andi	a2, a2, 1
	li	s3, 4
	li	a3, 0
	beqz	a2, .LBB8_70
.LBB8_44:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_46 Depth 2
                                        #       Child Loop BB8_48 Depth 3
	sd	a3, 16(sp)                      # 8-byte Folded Spill
	li	s1, 0
	srli	a2, s3, 1
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	sd	a2, 32(sp)                      # 8-byte Folded Spill
	or	a0, a2, a0
	sd	a0, 24(sp)                      # 8-byte Folded Spill
	li	a3, 1
	sd	s3, 160(sp)                     # 8-byte Folded Spill
	j	.LBB8_46
.LBB8_45:                               #   in Loop: Header=BB8_46 Depth=2
	ld	a2, 216(sp)                     # 8-byte Folded Reload
	slli	a2, a2, 2
	ld	a3, 88(sp)                      # 8-byte Folded Reload
	add	a2, a3, a2
	sw	zero, 0(a2)
	ld	a2, 40(sp)                      # 8-byte Folded Reload
	andi	a2, a2, 1
	li	s1, 4
	li	a3, 0
	beqz	a2, .LBB8_43
.LBB8_46:                               #   Parent Loop BB8_44 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_48 Depth 3
	sd	a3, 40(sp)                      # 8-byte Folded Spill
	lui	a0, 3
	add	a0, a1, a0
	ld	a0, 1848(a0)
	ld	a2, 48(sp)                      # 8-byte Folded Reload
	add	a0, a0, a2
	ld	a0, 32(a0)
	srli	a2, s1, 2
	ld	a3, 32(sp)                      # 8-byte Folded Reload
	or	a3, a2, a3
	slli	a3, a3, 3
	add	a0, a0, a3
	ld	a0, 0(a0)
	sd	zero, 216(sp)                   # 8-byte Folded Spill
	ld	a3, 0(a0)
	sd	a3, 88(sp)                      # 8-byte Folded Spill
	ld	a0, 8(a0)
	sd	a0, 80(sp)                      # 8-byte Folded Spill
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	or	a0, a2, a0
	li	a2, 1
	sllw	a0, a2, a0
	sd	a0, 72(sp)                      # 8-byte Folded Spill
	li	s6, -1
	li	s9, 15
	lui	s11, %hi(FIELD_SCAN+2)
	addi	s11, s11, %lo(FIELD_SCAN+2)
	lui	s5, %hi(SNGL_SCAN+2)
	addi	s5, s5, %lo(SNGL_SCAN+2)
	sd	s1, 192(sp)                     # 8-byte Folded Spill
	j	.LBB8_48
.LBB8_47:                               #   in Loop: Header=BB8_48 Depth=3
	sraiw	a0, a1, 31
	xor	a2, a1, a0
	subw	a2, a2, a0
	mul	a0, a2, s7
	add	a0, a0, s4
	sraw	a0, a0, s10
	call	sign
	ld	a1, 168(sp)                     # 8-byte Folded Reload
	add	s0, a1, s0
	add	s0, s0, s8
	lw	a2, 0(s0)
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	mul	a0, a2, a0
	ld	a2, 184(sp)                     # 8-byte Folded Reload
	sllw	a2, a0, a2
	ld	a0, 112(sp)                     # 8-byte Folded Reload
	add	a0, a1, a0
	ld	a3, 264(sp)                     # 8-byte Folded Reload
	add	a3, a0, a3
	ld	a4, 256(sp)                     # 8-byte Folded Reload
	add	a3, a3, a4
	sw	a2, 0(a3)
	addi	s9, s9, -1
	addi	s5, s5, 2
	addi	s11, s11, 2
	beqz	s9, .LBB8_45
.LBB8_48:                               #   Parent Loop BB8_44 Depth=1
                                        #     Parent Loop BB8_46 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	mv	a0, s11
	ld	a2, 144(sp)                     # 8-byte Folded Reload
	bnez	a2, .LBB8_50
# %bb.49:                               #   in Loop: Header=BB8_48 Depth=3
	mv	a0, s5
.LBB8_50:                               #   in Loop: Header=BB8_48 Depth=3
	sd	s5, 248(sp)                     # 8-byte Folded Spill
	lbu	s0, 0(a0)
	lbu	s8, 1(a0)
	addiw	s6, s6, 1
	sd	s6, 272(sp)                     # 8-byte Folded Spill
	add	s1, s1, s0
	addw	a0, s3, s8
	slli	a2, s1, 5
	addi	a3, sp, 304
	add	a2, a3, a2
	slli	a3, a0, 2
	add	a2, a2, a3
	lw	s2, 0(a2)
	sd	s0, 232(sp)                     # 8-byte Folded Spill
	slli	s0, s0, 4
	ld	a2, 128(sp)                     # 8-byte Folded Reload
	add	a2, a2, s0
	sd	s8, 224(sp)                     # 8-byte Folded Spill
	slli	s8, s8, 2
	add	a2, a2, s8
	lw	a4, 0(a2)
	sraiw	a2, s2, 31
	xor	a3, s2, a2
	subw	a3, a3, a2
	mul	a2, a3, a4
	slli	s5, a0, 6
	add	a1, a1, s5
	slli	s6, s1, 2
	lui	s1, 3
	add	a0, s6, s1
	add	a0, a1, a0
	lw	s3, 824(a0)
	add	a2, a2, s4
	ld	a0, 104(sp)                     # 8-byte Folded Reload
	and	a0, a2, a0
	sd	a4, 240(sp)                     # 8-byte Folded Spill
	divw	a0, a0, a4
	mv	a1, s2
	call	sign
	subw	s4, s3, a0
	sraiw	a0, s4, 31
	xor	a1, s4, a0
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	ld	a3, 176(sp)                     # 8-byte Folded Reload
	add	a3, a3, s0
	add	a3, a3, s8
	lw	a3, 0(a3)
	sd	s5, 264(sp)                     # 8-byte Folded Spill
	add	a2, a2, s5
	sd	s6, 256(sp)                     # 8-byte Folded Spill
	add	a4, s6, s1
	add	a2, a2, a4
	lw	s7, 824(a2)
	subw	a1, a1, a0
	mul	a0, a1, a3
	ld	a4, 152(sp)                     # 8-byte Folded Reload
	add	a0, a0, a4
	subw	s3, s7, s2
	sraiw	a1, s3, 31
	xor	a2, s3, a1
	subw	a2, a2, a1
	mul	a1, a2, a3
	add	a1, a1, a4
	ld	a2, 136(sp)                     # 8-byte Folded Reload
	sraw	s5, a1, a2
	sraw	s6, a0, a2
	beqz	s5, .LBB8_55
# %bb.51:                               #   in Loop: Header=BB8_48 Depth=3
	beqz	s6, .LBB8_55
# %bb.52:                               #   in Loop: Header=BB8_48 Depth=3
	beq	s6, s5, .LBB8_55
# %bb.53:                               #   in Loop: Header=BB8_48 Depth=3
	sd	s9, 96(sp)                      # 8-byte Folded Spill
	mv	a0, s6
	mv	a1, s4
	call	sign
	ld	a1, 200(sp)                     # 8-byte Folded Reload
	add	a1, a1, s0
	add	a1, a1, s8
	lw	a1, 0(a1)
	lui	a2, %hi(A)
	addi	a2, a2, %lo(A)
	add	a2, a2, s0
	add	a2, a2, s8
	lw	a2, 0(a2)
	mul	s1, a2, a1
	mul	a0, s1, a0
	ld	s10, 208(sp)                    # 8-byte Folded Reload
	sllw	a0, a0, s10
	srli	a0, a0, 6
	subw	a1, s7, s2
	subw	a1, a1, a0
	fcvt.d.w	fs1, a1
	addi	a2, sp, 284
	addi	a3, sp, 280
	mv	a0, s6
	ld	s9, 272(sp)                     # 8-byte Folded Reload
	mv	a1, s9
	call	levrun_linfo_inter
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a1, 284(sp)
	ld	a2, 264(sp)                     # 8-byte Folded Reload
	add	a0, a0, a2
	lui	a2, 3
	ld	a3, 256(sp)                     # 8-byte Folded Reload
	add	a2, a3, a2
	add	a0, a0, a2
	lw	s7, 824(a0)
	fcvt.d.w	fa5, a1
	fmul.d	fa5, fs0, fa5
	fmadd.d	fs1, fs1, fs1, fa5
	mv	a0, s5
	mv	a1, s3
	call	sign
	mul	a0, s1, a0
	sllw	a0, a0, s10
	srli	a0, a0, 6
	subw	a1, s7, s2
	subw	a1, a1, a0
	fcvt.d.w	fs2, a1
	addi	a2, sp, 284
	addi	a3, sp, 280
	mv	a0, s5
	mv	a1, s9
	call	levrun_linfo_inter
	lw	a0, 284(sp)
	fcvt.d.w	fa5, a0
	fmul.d	fa5, fs0, fa5
	fmadd.d	fa5, fs2, fs2, fa5
	feq.d	a0, fs1, fa5
	beqz	a0, .LBB8_60
# %bb.54:                               #   in Loop: Header=BB8_48 Depth=3
	sraiw	a0, s6, 31
	xor	a1, s6, a0
	subw	a1, a1, a0
	sraiw	a0, s5, 31
	xor	a2, s5, a0
	subw	a2, a2, a0
	sltu	a0, a1, a2
	j	.LBB8_61
.LBB8_55:                               #   in Loop: Header=BB8_48 Depth=3
	bne	s6, s5, .LBB8_57
# %bb.56:                               #   in Loop: Header=BB8_48 Depth=3
	mv	s5, s6
	mv	s3, s4
	ld	s4, 120(sp)                     # 8-byte Folded Reload
	ld	s1, 192(sp)                     # 8-byte Folded Reload
	j	.LBB8_58
.LBB8_57:                               #   in Loop: Header=BB8_48 Depth=3
	ld	s4, 120(sp)                     # 8-byte Folded Reload
	ld	s1, 192(sp)                     # 8-byte Folded Reload
	beqz	s6, .LBB8_59
.LBB8_58:                               #   in Loop: Header=BB8_48 Depth=3
	mv	s7, s5
	bnez	s5, .LBB8_66
.LBB8_59:                               #   in Loop: Header=BB8_48 Depth=3
	li	a0, 0
	ld	s3, 160(sp)                     # 8-byte Folded Reload
	ld	s5, 248(sp)                     # 8-byte Folded Reload
	ld	s6, 272(sp)                     # 8-byte Folded Reload
	j	.LBB8_67
.LBB8_60:                               #   in Loop: Header=BB8_48 Depth=3
	flt.d	a0, fs1, fa5
.LBB8_61:                               #   in Loop: Header=BB8_48 Depth=3
	ld	s1, 192(sp)                     # 8-byte Folded Reload
	mv	s7, s6
	ld	s10, 56(sp)                     # 8-byte Folded Reload
	ld	s9, 96(sp)                      # 8-byte Folded Reload
	bnez	a0, .LBB8_63
# %bb.62:                               #   in Loop: Header=BB8_48 Depth=3
	mv	s7, s5
.LBB8_63:                               #   in Loop: Header=BB8_48 Depth=3
	beq	s7, s6, .LBB8_65
# %bb.64:                               #   in Loop: Header=BB8_48 Depth=3
	mv	s4, s3
.LBB8_65:                               #   in Loop: Header=BB8_48 Depth=3
	mv	s3, s4
	ld	s4, 120(sp)                     # 8-byte Folded Reload
.LBB8_66:                               #   in Loop: Header=BB8_48 Depth=3
	ld	a1, 64(sp)                      # 8-byte Folded Reload
	ld	a0, 368(a1)
	ld	a2, 72(sp)                      # 8-byte Folded Reload
	or	a0, a0, a2
	sd	a0, 368(a1)
	mv	a0, s7
	mv	a1, s3
	call	sign
	ld	a3, 216(sp)                     # 8-byte Folded Reload
	slli	a1, a3, 2
	ld	a2, 88(sp)                      # 8-byte Folded Reload
	add	a2, a2, a1
	sw	a0, 0(a2)
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	add	a1, a0, a1
	ld	a0, 272(sp)                     # 8-byte Folded Reload
	sw	a0, 0(a1)
	addiw	a3, a3, 1
	sd	a3, 216(sp)                     # 8-byte Folded Spill
	mv	a0, s7
	mv	a1, s3
	call	sign
	ld	a1, 200(sp)                     # 8-byte Folded Reload
	add	a1, a1, s0
	add	a1, a1, s8
	lw	a1, 0(a1)
	lui	a2, %hi(A)
	addi	a2, a2, %lo(A)
	add	a2, a2, s0
	add	a2, a2, s8
	lw	a2, 0(a2)
	mul	a1, a1, a2
	mul	a0, a1, a0
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	sllw	a0, a0, a1
	srai	a0, a0, 6
	li	s6, -1
	li	a1, 2
	sd	a1, 96(sp)                      # 8-byte Folded Spill
	ld	s3, 160(sp)                     # 8-byte Folded Reload
	ld	s5, 248(sp)                     # 8-byte Folded Reload
.LBB8_67:                               #   in Loop: Header=BB8_48 Depth=3
	lui	a1, %hi(si_frame_indicator)
	lw	a1, %lo(si_frame_indicator)(a1)
	lui	a2, %hi(sp2_frame_indicator)
	lw	a2, %lo(sp2_frame_indicator)(a2)
	or	a2, a1, a2
	addw	a1, a0, s2
	ld	s7, 240(sp)                     # 8-byte Folded Reload
	bnez	a2, .LBB8_47
# %bb.68:                               #   in Loop: Header=BB8_48 Depth=3
	ld	a0, 232(sp)                     # 8-byte Folded Reload
	ld	a2, 224(sp)                     # 8-byte Folded Reload
	or	a0, a2, a0
	andi	a0, a0, 3
	beqz	a0, .LBB8_47
# %bb.69:                               #   in Loop: Header=BB8_48 Depth=3
	sraiw	a0, a1, 31
	xor	a2, a1, a0
	subw	a2, a2, a0
	mul	a0, a2, s7
	add	a0, a0, s4
	sraw	a0, a0, s10
	mv	s2, a1
	call	sign
	mv	a1, s2
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	lui	a3, %hi(lrec_uv)
	ld	a3, %lo(lrec_uv)(a3)
	lw	a4, 164(a2)
	ld	a5, 48(sp)                      # 8-byte Folded Reload
	add	a3, a3, a5
	ld	a3, 0(a3)
	ld	a5, 224(sp)                     # 8-byte Folded Reload
	add	a5, s1, a5
	addw	a4, a5, a4
	slli	a4, a4, 3
	lw	a2, 160(a2)
	add	a3, a3, a4
	ld	a3, 0(a3)
	ld	a4, 232(sp)                     # 8-byte Folded Reload
	add	a4, s3, a4
	addw	a2, a4, a2
	slli	a2, a2, 2
	add	a2, a3, a2
	sw	a0, 0(a2)
	j	.LBB8_47
.LBB8_70:
	li	a3, 0
	lui	a2, 22
	addiw	a2, a2, 424
	add	a1, a1, a2
	li	a2, 1
	j	.LBB8_72
.LBB8_71:                               #   in Loop: Header=BB8_72 Depth=1
	andi	a4, a2, 1
	li	a3, 4
	li	a2, 0
	beqz	a4, .LBB8_106
.LBB8_72:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_74 Depth 2
	li	t0, 0
	addi	a4, a3, 1
	addi	a5, a3, 2
	addi	a6, a3, 3
	slli	a3, a3, 6
	add	a3, a0, a3
	slli	a4, a4, 6
	add	a4, a0, a4
	slli	a5, a5, 6
	add	a5, a0, a5
	slli	a6, a6, 6
	add	a6, a0, a6
	li	a7, 1
	j	.LBB8_74
.LBB8_73:                               #   in Loop: Header=BB8_74 Depth=2
	sw	t3, 0(t2)
	andi	t1, a7, 1
	li	t0, 4
	li	a7, 0
	beqz	t1, .LBB8_71
.LBB8_74:                               #   Parent Loop BB8_72 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	regsw_c	x21, 0x556(x18)		# 100101010110101010110
	slli	x10, t0, 2
	add	x8, a3, x10
	lw	t0, 0(x8)
	addi	x5, x10, 4
	add	x4, a3, x5
	lw	t2, 0(x4)
	addi	x1, x10, 8
	regsw_c	x12, 0x200(x4)		# 001000110001000000000
	add	t6, a3, x1
	lw	t3, 0(t6)
	addi	x9, x10, 12
	add	t1, a3, x9
	lw	t4, 0(t1)
	add	t5, t3, t0
	subw	t0, t0, t3
	srli	t3, t2, 1
	subw	t3, t3, t4
	srli	t4, t4, 1
	add	t2, t4, t2
	add	t4, t2, t5
	regsw_c	x0, 0x80(x8)		# 010000000000010000000
	sw	t4, 0(x8)
	subw	t2, t5, t2
	sw	t2, 0(t1)
	add	t2, t3, t0
	sw	t2, 0(x4)
	subw	t0, t0, t3
	sw	t0, 0(t6)
	regsw_c	x10, 0x211(x21)		# 101010101001000010001
	add	x6, a4, x10
	lw	t2, 0(x6)
	add	x2, a4, x5
	add	t4, a4, x1
	lw	t3, 0(t4)
	lw	t5, 0(x2)
	add	t0, a4, x9
	regsw_c	x0, 0x72(x18)		# 100100000000001110010
	lw	x3, 0(t0)
	add	x7, t3, t2
	subw	t2, t2, t3
	srli	t3, t5, 1
	subw	t3, t3, x3
	srli	x3, x3, 1
	add	t5, x3, t5
	regsw_c	x20, 0x10(x21)		# 101011010000000010000
	add	x3, t5, x7
	sw	x3, 0(x6)
	subw	t5, x7, t5
	sw	t5, 0(t0)
	add	t5, t3, t2
	sw	t5, 0(x2)
	subw	t2, t2, t3
	sw	t2, 0(t4)
	regsw_c	x10, 0x331(x21)		# 101010101001100110001
	add	x7, a5, x10
	lw	t3, 0(x7)
	add	x3, a5, x5
	add	t5, a5, x1
	lw	x11, 0(t5)
	lw	x12, 0(x3)
	add	t2, a5, x9
	regsw_c	x3, 0x5f7(x19)		# 100110001110111110111
	lw	x13, 0(t2)
	add	x14, x11, t3
	subw	t3, t3, x11
	srli	x11, x12, 1
	subw	x15, x11, x13
	srai	x11, x13, 1
	add	x12, x11, x12
	regsw_c	x19, 0x4c8(x31)		# 111111001110011001000
	add	x11, x12, x14
	subw	x12, x14, x12
	sw	x12, 0(t2)
	add	x12, x15, t3
	sw	x12, 0(x3)
	subw	t3, t3, x15
	sw	t3, 0(t5)
	regsw_c	x11, 0x3b1(x23)		# 101110101101110110001
	add	x10, a6, x10
	lw	x12, 0(x10)
	add	x5, a6, x5
	add	x1, a6, x1
	lw	x13, 0(x1)
	lw	x14, 0(x5)
	add	t3, a6, x9
	regsw_c	x31, 0x5f7(x19)		# 100111111110111110111
	lw	x9, 0(t3)
	add	x15, x13, x12
	subw	x16, x12, x13
	srai	x12, x14, 1
	subw	x17, x12, x9
	srai	x9, x9, 1
	add	x9, x9, x14
	regsw_c	x19, 0x5f7(x31)		# 111111001110111110111
	add	x12, x9, x15
	subw	x9, x15, x9
	sw	x9, 0(t3)
	lw	x13, 0(x8)
	add	x9, x17, x16
	lw	x14, 0(x6)
	subw	x19, x16, x17
	regsw_c	x15, 0x1be(x31)		# 111110111100110111110
	add	x15, x11, x13
	sraiw	x17, x12, 1
	add	x17, x17, x14
	lw	x16, 0(a1)
	addi	x18, x15, 32
	add	x15, x18, x17
	sraiw	x15, x15, 6
	regsw_c	x14, 0x6db(x23)		# 101110111011011011011
	sgtz	x20, x15
	neg	x20, x20
	and	x15, x20, x15
	sw	x11, 0(x7)
	sw	x9, 0(x5)
	sw	x19, 0(x1)
	blt	x16, x15, .LBB8_76
# %bb.75:                               #   in Loop: Header=BB8_74 Depth=2
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	mv	x16, x15
.LBB8_76:                               #   in Loop: Header=BB8_74 Depth=2
	regsw_c	x29, 0x3bb(x19)		# 100111110101110111011
	lw	x15, 0(a1)
	subw	x17, x18, x17
	sraiw	x17, x17, 6
	sgtz	x18, x17
	neg	x18, x18
	and	x17, x18, x17
	sw	x16, 0(x8)
	regsw_c	x16, 0x0(x25)		# 110011000000000000000
	mv	x16, x15
	blt	x15, x17, .LBB8_78
# %bb.77:                               #   in Loop: Header=BB8_74 Depth=2
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	mv	x16, x17
.LBB8_78:                               #   in Loop: Header=BB8_74 Depth=2
	regsw_c	x15, 0x5f5(x31)		# 111110111110111110101
	subw	x11, x13, x11
	srli	x8, x14, 1
	subw	x8, x8, x12
	addi	x11, x11, 32
	add	x12, x11, x8
	sraiw	x12, x12, 6
	sgtz	x13, x12
	regsw_c	x22, 0x600(x27)		# 110111011011000000000
	neg	x13, x13
	and	x12, x13, x12
	sw	x16, 0(x10)
	blt	x15, x12, .LBB8_80
# %bb.79:                               #   in Loop: Header=BB8_74 Depth=2
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	mv	x15, x12
.LBB8_80:                               #   in Loop: Header=BB8_74 Depth=2
	regsw_c	x29, 0x3bb(x19)		# 100111110101110111011
	lw	x12, 0(a1)
	subw	x8, x11, x8
	sraiw	x8, x8, 6
	sgtz	x10, x8
	neg	x10, x10
	and	x8, x10, x8
	sw	x15, 0(x6)
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	blt	x12, x8, .LBB8_82
# %bb.81:                               #   in Loop: Header=BB8_74 Depth=2
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	mv	x12, x8
.LBB8_82:                               #   in Loop: Header=BB8_74 Depth=2
	regsw_c	x13, 0x7bc(x27)		# 110110110111110111100
	lw	x8, 0(x4)
	lw	x11, 0(x3)
	lw	x10, 0(x2)
	add	x6, x11, x8
	sraiw	x14, x9, 1
	add	x14, x14, x10
	lw	x13, 0(a1)
	regsw_c	x29, 0x3bb(x27)		# 110111110101110111011
	addi	x15, x6, 32
	add	x6, x15, x14
	sraiw	x6, x6, 6
	sgtz	x16, x6
	neg	x16, x16
	and	x6, x16, x6
	sw	x12, 0(x7)
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	blt	x13, x6, .LBB8_84
# %bb.83:                               #   in Loop: Header=BB8_74 Depth=2
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	mv	x13, x6
.LBB8_84:                               #   in Loop: Header=BB8_74 Depth=2
	regsw_c	x29, 0x3bb(x19)		# 100111110101110111011
	lw	x6, 0(a1)
	subw	x7, x15, x14
	sraiw	x7, x7, 6
	sgtz	x12, x7
	neg	x12, x12
	and	x12, x12, x7
	sw	x13, 0(x4)
	regsw_c	x16, 0x0(x25)		# 110011000000000000000
	mv	x7, x6
	blt	x6, x12, .LBB8_86
# %bb.85:                               #   in Loop: Header=BB8_74 Depth=2
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	mv	x7, x12
.LBB8_86:                               #   in Loop: Header=BB8_74 Depth=2
	regsw_c	x15, 0x5f5(x31)		# 111110111110111110101
	subw	x8, x8, x11
	srli	x4, x10, 1
	subw	x4, x4, x9
	addi	x8, x8, 32
	add	x9, x8, x4
	sraiw	x9, x9, 6
	sgtz	x10, x9
	regsw_c	x22, 0x600(x27)		# 110111011011000000000
	neg	x10, x10
	and	x9, x10, x9
	sw	x7, 0(x5)
	blt	x6, x9, .LBB8_88
# %bb.87:                               #   in Loop: Header=BB8_74 Depth=2
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	mv	x6, x9
.LBB8_88:                               #   in Loop: Header=BB8_74 Depth=2
	regsw_c	x29, 0x3bb(x19)		# 100111110101110111011
	lw	x7, 0(a1)
	subw	x4, x8, x4
	sraiw	x4, x4, 6
	sgtz	x5, x4
	neg	x5, x5
	and	x4, x5, x4
	sw	x6, 0(x2)
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	blt	x7, x4, .LBB8_90
# %bb.89:                               #   in Loop: Header=BB8_74 Depth=2
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	mv	x7, x4
.LBB8_90:                               #   in Loop: Header=BB8_74 Depth=2
	regsw_c	x13, 0x1f7(x18)		# 100100110100111110111
	lw	x2, 0(t6)
	lw	x5, 0(t5)
	lw	x4, 0(x1)
	lw	x6, 0(t4)
	add	x10, x5, x2
	srli	x9, x4, 1
	add	x9, x9, x6
	regsw_c	x15, 0x577(x19)		# 100110111110101110111
	lw	x8, 0(a1)
	addi	x10, x10, 32
	add	x11, x10, x9
	sraiw	x11, x11, 6
	sgtz	x12, x11
	neg	x12, x12
	and	x11, x12, x11
	regsw_c	x16, 0x0(x13)		# 011011000000000000000
	sw	x7, 0(x3)
	blt	x8, x11, .LBB8_92
# %bb.91:                               #   in Loop: Header=BB8_74 Depth=2
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	mv	x8, x11
.LBB8_92:                               #   in Loop: Header=BB8_74 Depth=2
	regsw_c	x29, 0x3b9(x19)		# 100111110101110111001
	lw	x3, 0(a1)
	subw	x7, x10, x9
	sraiw	x7, x7, 6
	sgtz	x9, x7
	neg	x9, x9
	and	x9, x9, x7
	sw	x8, 0(t6)
	regsw_c	x16, 0x0(x25)		# 110011000000000000000
	mv	x7, x3
	blt	x3, x9, .LBB8_94
# %bb.93:                               #   in Loop: Header=BB8_74 Depth=2
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	mv	x7, x9
.LBB8_94:                               #   in Loop: Header=BB8_74 Depth=2
	regsw_c	x3, 0x5b5(x29)		# 111010001110110110101
	subw	x2, x2, x5
	srli	t6, x6, 1
	subw	t6, t6, x4
	addi	x2, x2, 32
	add	x4, x2, t6
	sraiw	x4, x4, 6
	sgtz	x5, x4
	regsw_c	x22, 0x600(x27)		# 110111011011000000000
	neg	x5, x5
	and	x4, x5, x4
	sw	x7, 0(x1)
	blt	x3, x4, .LBB8_96
# %bb.95:                               #   in Loop: Header=BB8_74 Depth=2
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	mv	x3, x4
.LBB8_96:                               #   in Loop: Header=BB8_74 Depth=2
	regsw_c	x1, 0x191(x17)		# 100010000100110010001
	lw	x4, 0(a1)
	subw	t6, x2, t6
	sraiw	t6, t6, 6
	sgtz	x1, t6
	neg	x1, x1
	and	t6, x1, t6
	sw	x3, 0(t4)
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	blt	x4, t6, .LBB8_98
# %bb.97:                               #   in Loop: Header=BB8_74 Depth=2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x4, t6
.LBB8_98:                               #   in Loop: Header=BB8_74 Depth=2
	lw	t4, 0(t1)
	regsw_c	x9, 0x53c(x16)		# 100000100110100111100
	lw	x1, 0(t2)
	lw	t6, 0(t3)
	lw	x2, 0(t0)
	add	x6, x1, t4
	srli	x5, t6, 1
	add	x5, x5, x2
	lw	x3, 0(a1)
	regsw_c	x29, 0x3b9(x27)		# 110111110101110111001
	addi	x6, x6, 32
	add	x7, x6, x5
	sraiw	x7, x7, 6
	sgtz	x8, x7
	neg	x8, x8
	and	x7, x8, x7
	sw	x4, 0(t5)
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	blt	x3, x7, .LBB8_100
# %bb.99:                               #   in Loop: Header=BB8_74 Depth=2
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	mv	x3, x7
.LBB8_100:                              #   in Loop: Header=BB8_74 Depth=2
	lw	t5, 0(a1)
	regsw_c	x11, 0x5cc(x31)		# 111110101110111001100
	subw	x4, x6, x5
	sraiw	x4, x4, 6
	sgtz	x5, x4
	neg	x5, x5
	and	x4, x5, x4
	sw	x3, 0(t1)
	mv	x3, t5
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	blt	t5, x4, .LBB8_102
# %bb.101:                              #   in Loop: Header=BB8_74 Depth=2
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	mv	x3, x4
.LBB8_102:                              #   in Loop: Header=BB8_74 Depth=2
	regsw_c	x0, 0x4(x5)		# 001010000000000000100
	subw	t4, t4, x1
	srli	t1, x2, 1
	subw	t1, t1, t6
	addi	t4, t4, 32
	add	t6, t4, t1
	sraiw	t6, t6, 6
	sgtz	x1, t6
	regsw_c	x2, 0x0(x25)		# 110010001000000000000
	neg	x1, x1
	and	t6, x1, t6
	sw	x3, 0(t3)
	blt	t5, t6, .LBB8_104
# %bb.103:                              #   in Loop: Header=BB8_74 Depth=2
	mv	t5, t6
.LBB8_104:                              #   in Loop: Header=BB8_74 Depth=2
	lw	t3, 0(a1)
	subw	t1, t4, t1
	sraiw	t1, t1, 6
	sgtz	t4, t1
	neg	t4, t4
	and	t1, t4, t1
	sw	t5, 0(t0)
	blt	t3, t1, .LBB8_73
# %bb.105:                              #   in Loop: Header=BB8_74 Depth=2
	mv	t3, t1
	j	.LBB8_73
.LBB8_106:
	lui	a0, %hi(enc_picture)
	ld	a0, %lo(enc_picture)(a0)
	lui	a1, %hi(img)
	lui	a2, 2
	add	a0, a0, a2
	ld	a0, -1728(a0)
	ld	a1, %lo(img)(a1)
	lui	a2, 3
	addiw	a2, a2, 824
	ld	a3, 48(sp)                      # 8-byte Folded Reload
	add	a0, a0, a3
	lw	a3, 164(a1)
	ld	a4, 0(a0)
	add	a0, a1, a2
	lw	a1, 160(a1)
	slli	a3, a3, 3
	add	a3, a4, a3
	ld	t2, 0(a3)
	lh	a2, 0(a0)
	slli	a1, a1, 1
	add	a4, t2, a1
	sh	a2, 0(a4)
	lh	a4, 4(a0)
	addi	a2, a1, 2
	add	a5, t2, a2
	lh	a6, 8(a0)
	sh	a4, 0(a5)
	addi	a4, a1, 4
	add	a5, t2, a4
	sh	a6, 0(a5)
	lh	a6, 12(a0)
	addi	a5, a1, 6
	add	a7, t2, a5
	lh	t0, 16(a0)
	sh	a6, 0(a7)
	addi	a6, a1, 8
	add	a7, t2, a6
	sh	t0, 0(a7)
	lh	t0, 20(a0)
	addi	a7, a1, 10
	add	t1, t2, a7
	lh	t3, 24(a0)
	sh	t0, 0(t1)
	addi	t0, a1, 12
	add	t1, t2, t0
	sh	t3, 0(t1)
	lh	t3, 28(a0)
	addi	t1, a1, 14
	ld	t4, 8(a3)
	add	t2, t2, t1
	lh	t5, 64(a0)
	sh	t3, 0(t2)
	add	t2, t4, a1
	lh	t3, 68(a0)
	sh	t5, 0(t2)
	add	t2, t4, a2
	lh	t5, 72(a0)
	sh	t3, 0(t2)
	add	t2, t4, a4
	lh	t3, 76(a0)
	sh	t5, 0(t2)
	add	t2, t4, a5
	lh	t5, 80(a0)
	sh	t3, 0(t2)
	add	t2, t4, a6
	lh	t3, 84(a0)
	sh	t5, 0(t2)
	lh	t2, 88(a0)
	add	t5, t4, a7
	sh	t3, 0(t5)
	add	t3, t4, t0
	sh	t2, 0(t3)
	lh	t2, 92(a0)
	ld	t3, 16(a3)
	add	t4, t4, t1
	lh	t5, 128(a0)
	sh	t2, 0(t4)
	add	t2, t3, a1
	lh	t4, 132(a0)
	sh	t5, 0(t2)
	add	t2, t3, a2
	lh	t5, 136(a0)
	sh	t4, 0(t2)
	add	t2, t3, a4
	lh	t4, 140(a0)
	sh	t5, 0(t2)
	add	t2, t3, a5
	lh	t5, 144(a0)
	sh	t4, 0(t2)
	add	t2, t3, a6
	lh	t4, 148(a0)
	sh	t5, 0(t2)
	lh	t2, 152(a0)
	add	t5, t3, a7
	sh	t4, 0(t5)
	add	t4, t3, t0
	sh	t2, 0(t4)
	lh	t2, 156(a0)
	ld	t4, 24(a3)
	add	t3, t3, t1
	lh	t5, 192(a0)
	sh	t2, 0(t3)
	add	t2, t4, a1
	lh	t3, 196(a0)
	sh	t5, 0(t2)
	add	t2, t4, a2
	lh	t5, 200(a0)
	sh	t3, 0(t2)
	add	t2, t4, a4
	lh	t3, 204(a0)
	sh	t5, 0(t2)
	add	t2, t4, a5
	lh	t5, 208(a0)
	sh	t3, 0(t2)
	add	t2, t4, a6
	lh	t3, 212(a0)
	sh	t5, 0(t2)
	lh	t2, 216(a0)
	add	t5, t4, a7
	sh	t3, 0(t5)
	add	t3, t4, t0
	sh	t2, 0(t3)
	lh	t2, 220(a0)
	ld	t3, 32(a3)
	add	t4, t4, t1
	lh	t5, 256(a0)
	sh	t2, 0(t4)
	add	t2, t3, a1
	lh	t4, 260(a0)
	sh	t5, 0(t2)
	add	t2, t3, a2
	lh	t5, 264(a0)
	sh	t4, 0(t2)
	add	t2, t3, a4
	lh	t4, 268(a0)
	sh	t5, 0(t2)
	add	t2, t3, a5
	lh	t5, 272(a0)
	sh	t4, 0(t2)
	add	t2, t3, a6
	lh	t4, 276(a0)
	sh	t5, 0(t2)
	lh	t2, 280(a0)
	add	t5, t3, a7
	sh	t4, 0(t5)
	add	t4, t3, t0
	sh	t2, 0(t4)
	lh	t2, 284(a0)
	ld	t4, 40(a3)
	add	t3, t3, t1
	lh	t5, 320(a0)
	sh	t2, 0(t3)
	add	t2, t4, a1
	lh	t3, 324(a0)
	sh	t5, 0(t2)
	add	t2, t4, a2
	lh	t5, 328(a0)
	sh	t3, 0(t2)
	add	t2, t4, a4
	lh	t3, 332(a0)
	sh	t5, 0(t2)
	add	t2, t4, a5
	lh	t5, 336(a0)
	sh	t3, 0(t2)
	add	t2, t4, a6
	lh	t3, 340(a0)
	sh	t5, 0(t2)
	lh	t2, 344(a0)
	add	t5, t4, a7
	sh	t3, 0(t5)
	add	t3, t4, t0
	sh	t2, 0(t3)
	lh	t2, 348(a0)
	ld	t3, 48(a3)
	add	t4, t4, t1
	lh	t5, 384(a0)
	sh	t2, 0(t4)
	add	t2, t3, a1
	lh	t4, 388(a0)
	sh	t5, 0(t2)
	add	t2, t3, a2
	lh	t5, 392(a0)
	sh	t4, 0(t2)
	add	t2, t3, a4
	lh	t4, 396(a0)
	sh	t5, 0(t2)
	add	t2, t3, a5
	lh	t5, 400(a0)
	sh	t4, 0(t2)
	add	t2, t3, a6
	lh	t4, 404(a0)
	sh	t5, 0(t2)
	lh	t2, 408(a0)
	add	t5, t3, a7
	sh	t4, 0(t5)
	add	t4, t3, t0
	sh	t2, 0(t4)
	lh	t2, 412(a0)
	ld	a3, 56(a3)
	add	t3, t3, t1
	lh	t4, 448(a0)
	sh	t2, 0(t3)
	add	a1, a3, a1
	lh	t2, 452(a0)
	sh	t4, 0(a1)
	add	a2, a3, a2
	lh	a1, 456(a0)
	sh	t2, 0(a2)
	add	a4, a3, a4
	lh	a2, 460(a0)
	sh	a1, 0(a4)
	add	a5, a3, a5
	lh	a1, 464(a0)
	sh	a2, 0(a5)
	add	a6, a3, a6
	lh	a2, 468(a0)
	sh	a1, 0(a6)
	add	a7, a3, a7
	lh	a1, 472(a0)
	sh	a2, 0(a7)
	add	t0, a3, t0
	lh	a0, 476(a0)
	sh	a1, 0(t0)
	add	a3, a3, t1
	li	a1, 2
	sh	a0, 0(a3)
	ld	a0, 96(sp)                      # 8-byte Folded Reload
	bne	a0, a1, .LBB8_108
# %bb.107:
	li	a0, 2
	sd	a0, 0(sp)                       # 8-byte Folded Spill
.LBB8_108:
	ld	a0, 0(sp)                       # 8-byte Folded Reload
	ld	ra, 696(sp)                     # 8-byte Folded Reload
	ld	s0, 688(sp)                     # 8-byte Folded Reload
	ld	s1, 680(sp)                     # 8-byte Folded Reload
	ld	s2, 672(sp)                     # 8-byte Folded Reload
	ld	s3, 664(sp)                     # 8-byte Folded Reload
	ld	s4, 656(sp)                     # 8-byte Folded Reload
	ld	s5, 648(sp)                     # 8-byte Folded Reload
	ld	s6, 640(sp)                     # 8-byte Folded Reload
	ld	s7, 632(sp)                     # 8-byte Folded Reload
	ld	s8, 624(sp)                     # 8-byte Folded Reload
	ld	s9, 616(sp)                     # 8-byte Folded Reload
	ld	s10, 608(sp)                    # 8-byte Folded Reload
	ld	s11, 600(sp)                    # 8-byte Folded Reload
	fld	fs0, 592(sp)                    # 8-byte Folded Reload
	fld	fs1, 584(sp)                    # 8-byte Folded Reload
	fld	fs2, 576(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 704
	ret
.Lfunc_end8:
	.size	dct_chroma_sp, .Lfunc_end8-dct_chroma_sp
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	copyblock_sp                    # -- Begin function copyblock_sp
	.p2align	2
	.type	copyblock_sp,@function
copyblock_sp:                           # @copyblock_sp
# %bb.0:
	addi	sp, sp, -224
	sd	ra, 216(sp)                     # 8-byte Folded Spill
	sd	s0, 208(sp)                     # 8-byte Folded Spill
	sd	s1, 200(sp)                     # 8-byte Folded Spill
	sd	s2, 192(sp)                     # 8-byte Folded Spill
	sd	s3, 184(sp)                     # 8-byte Folded Spill
	sd	s4, 176(sp)                     # 8-byte Folded Spill
	sd	s5, 168(sp)                     # 8-byte Folded Spill
	sd	s6, 160(sp)                     # 8-byte Folded Spill
	sd	s7, 152(sp)                     # 8-byte Folded Spill
	sd	s8, 144(sp)                     # 8-byte Folded Spill
	sd	s9, 136(sp)                     # 8-byte Folded Spill
	sd	s10, 128(sp)                    # 8-byte Folded Spill
	sd	s11, 120(sp)                    # 8-byte Folded Spill
	lui	a2, %hi(img)
	ld	a3, %lo(img)(a2)
	lui	a2, 8
	add	a2, a3, a2
	lw	a4, 12(a3)
	ld	a2, -1192(a2)
	li	a5, 528
	mul	a4, a4, a5
	add	a2, a2, a4
	lw	a2, 16(a2)
	mv	s8, a1
	li	s5, 0
	lui	a1, 174763
	addiw	a1, a1, -1365
	mul	a1, a2, a1
	srli	s6, a1, 63
	srli	a1, a1, 32
	add	s6, a1, s6
	addi	s7, s6, 15
	li	a1, 1
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	sllw	x5, a1, s7
	slli	a1, s8, 5
	add	a1, a3, a1
	lui	s4, 3
	addiw	a3, s4, 312
	add	a3, a1, a3
	slli	a4, a0, 1
	add	a5, a3, a4
	lhu	a5, 0(a5)
	addi	a6, a4, 2
	add	a7, a3, a6
	lhu	a7, 0(a7)
	addi	t0, a4, 4
	add	t1, a3, t0
	lhu	t1, 0(t1)
	addi	s9, sp, 88
	addi	t2, a4, 6
	add	a3, a3, t2
	lhu	a3, 0(a3)
	addiw	t3, s4, 344
	add	t3, a1, t3
	add	t4, t3, a4
	lhu	t4, 0(t4)
	add	t5, t3, a6
	lhu	t5, 0(t5)
	add	t6, t3, t0
	lhu	t6, 0(t6)
	add	t3, t3, t2
	lhu	t3, 0(t3)
	regsw_c	x29, 0x5b4(x18)		# 100101110110110110100
	addiw	x1, s4, 376
	add	x1, a1, x1
	add	x2, x1, a4
	lhu	x2, 0(x2)
	add	x3, x1, a6
	lhu	x3, 0(x3)
	addiw	x4, s4, 408
	regsw_c	x13, 0x580(x7)		# 001110110110110000000
	add	a1, a1, x4
	add	x4, x1, t0
	lhu	x4, 0(x4)
	add	x1, x1, t2
	lhu	x1, 0(x1)
	add	a4, a1, a4
	lhu	a4, 0(a4)
	add	a6, a1, a6
	lhu	a6, 0(a6)
	add	t0, a1, t0
	lhu	t0, 0(t0)
	add	a1, a1, t2
	lhu	a1, 0(a1)
	li	t2, 6
	sd	s6, 48(sp)                      # 8-byte Folded Spill
	mul	t2, s6, t2
	subw	a2, a2, t2
	add	t2, a3, a5
	subw	a5, a5, a3
	add	a3, t1, a7
	subw	a7, a7, t1
	add	t1, a3, t2
	subw	a3, t2, a3
	slli	t2, a5, 1
	add	t2, t2, a7
	slli	a7, a7, 1
	subw	a5, a5, a7
	add	a7, t3, t4
	subw	t4, t4, t3
	add	t3, t6, t5
	subw	t5, t5, t6
	add	t6, t3, a7
	subw	a7, a7, t3
	slli	t3, t4, 1
	add	t3, t3, t5
	slli	t5, t5, 1
	subw	t4, t4, t5
	regsw_c	x31, 0x78e(x15)		# 011111111111110001110
	add	t5, x1, x2
	subw	x1, x2, x1
	add	x2, x4, x3
	subw	x3, x3, x4
	add	x4, x2, t5
	subw	t5, t5, x2
	slli	x2, x1, 1
	regsw_c	x15, 0x0(x31)		# 111110111100000000000
	add	x2, x2, x3
	slli	x3, x3, 1
	subw	x1, x1, x3
	add	x3, a1, a4
	subw	a4, a4, a1
	add	a1, t0, a6
	subw	a6, a6, t0
	regsw_c	x9, 0x400(x5)		# 001010100110000000000
	add	t0, a1, x3
	subw	a1, x3, a1
	slli	x3, a4, 1
	add	x3, x3, a6
	slli	a6, a6, 1
	subw	a4, a4, a6
	add	a6, t0, t1
	subw	t0, t1, t0
	regsw_c	x24, 0x200(x8)		# 010001100001000000000
	add	t1, x4, t6
	subw	t6, t6, x4
	add	x4, t1, a6
	sw	x4, 56(sp)
	subw	a6, a6, t1
	sw	a6, 64(sp)
	slli	a6, t0, 1
	add	a6, a6, t6
	sw	a6, 60(sp)
	slli	t6, t6, 1
	subw	a6, t0, t6
	sw	a6, 68(sp)
	regsw_c	x20, 0x200(x8)		# 010001010001000000000
	add	a6, x3, t2
	subw	t0, t2, x3
	add	t1, x2, t3
	subw	t2, t3, x2
	add	t3, t1, a6
	sw	t3, 72(sp)
	subw	a6, a6, t1
	sw	a6, 80(sp)
	slli	a6, t0, 1
	add	a6, a6, t2
	sw	a6, 76(sp)
	slli	t2, t2, 1
	subw	a6, t0, t2
	sw	a6, 84(sp)
	add	a6, a1, a3
	subw	a3, a3, a1
	add	a1, t5, a7
	subw	a7, a7, t5
	add	t0, a1, a6
	sw	t0, 88(sp)
	subw	a1, a6, a1
	sw	a1, 96(sp)
	slli	a1, a3, 1
	add	a1, a1, a7
	sw	a1, 92(sp)
	slli	a7, a7, 1
	subw	a1, a3, a7
	sw	a1, 100(sp)
	add	a1, a4, a5
	subw	a5, a5, a4
	regsw_c	x16, 0x0(x8)		# 010001000000000000000
	add	a3, x1, t4
	subw	a4, t4, x1
	add	a6, a3, a1
	sw	a6, 104(sp)
	subw	a1, a1, a3
	sw	a1, 112(sp)
	slli	a1, a5, 1
	add	a1, a1, a4
	sw	a1, 108(sp)
	slli	a4, a4, 1
	subw	a5, a5, a4
	sw	a5, 116(sp)
	regsw_c	x0, 0x0(x9)		# 010010000000000000000
	srliw	a1, x5, 31
	add	a1, x5, a1
	sraiw	s10, a1, 1
	addi	a1, a0, 1
	sd	a1, 32(sp)                      # 8-byte Folded Spill
	addi	a1, a0, 2
	sd	a1, 24(sp)                      # 8-byte Folded Spill
	sd	a0, 40(sp)                      # 8-byte Folded Spill
	addi	a0, a0, 3
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	slli	a2, a2, 6
	addi	s0, a2, 32
	lui	s11, %hi(dequant_coef)
	addi	s11, s11, %lo(dequant_coef)
	add	s11, s11, s0
	lui	a0, %hi(quant_coef)
	addi	a0, a0, %lo(quant_coef)
	add	s0, a0, s0
	lui	a0, 22
	addiw	a0, a0, 420
	sd	a0, 0(sp)                       # 8-byte Folded Spill
	sd	s8, 8(sp)                       # 8-byte Folded Spill
	lui	s1, %hi(img)
	j	.LBB9_2
.LBB9_1:                                #   in Loop: Header=BB9_2 Depth=1
	addi	s5, s5, 64
	addi	s8, s8, 1
	addi	s11, s11, 4
	addi	s0, s0, 4
	addi	s9, s9, 4
	lui	s4, 3
	mv	s7, s6
	li	a0, 256
	beq	s5, a0, .LBB9_10
.LBB9_2:                                # =>This Inner Loop Header: Depth=1
	lw	s2, -32(s9)
	lw	a0, -32(s0)
	sraiw	a1, s2, 31
	xor	a2, s2, a1
	subw	a2, a2, a1
	mul	a0, a2, a0
	add	a0, a0, s10
	sraw	s3, a0, s7
	mv	a0, s3
	mv	a1, s2
	call	sign
	lw	a1, -32(s11)
	ld	a2, %lo(img)(s1)
	mul	a0, a1, a0
	ld	a1, 48(sp)                      # 8-byte Folded Reload
	sllw	a0, a0, a1
	add	a1, s5, s4
	add	a1, a2, a1
	sw	a0, 824(a1)
	lui	a0, %hi(si_frame_indicator)
	lw	a0, %lo(si_frame_indicator)(a0)
	lui	a1, %hi(sp2_frame_indicator)
	lw	a1, %lo(sp2_frame_indicator)(a1)
	or	a0, a0, a1
	bnez	a0, .LBB9_4
# %bb.3:                                #   in Loop: Header=BB9_2 Depth=1
	mv	a0, s3
	mv	a1, s2
	call	sign
	ld	a1, %lo(img)(s1)
	lw	a2, 156(a1)
	lui	a3, %hi(lrec)
	ld	a3, %lo(lrec)(a3)
	addw	a2, s8, a2
	slli	a2, a2, 3
	lw	a1, 152(a1)
	add	a2, a3, a2
	ld	a2, 0(a2)
	ld	a3, 40(sp)                      # 8-byte Folded Reload
	addw	a1, a1, a3
	slli	a1, a1, 2
	add	a1, a2, a1
	sw	a0, 0(a1)
.LBB9_4:                                #   in Loop: Header=BB9_2 Depth=1
	lw	s2, -16(s9)
	lw	a0, -16(s0)
	sraiw	a1, s2, 31
	xor	a2, s2, a1
	subw	a2, a2, a1
	mul	a0, a2, a0
	add	a0, a0, s10
	sraw	s3, a0, s7
	mv	a0, s3
	mv	a1, s2
	call	sign
	lw	a1, -16(s11)
	ld	a2, %lo(img)(s1)
	mul	a0, a1, a0
	ld	a1, 48(sp)                      # 8-byte Folded Reload
	sllw	a0, a0, a1
	add	a1, s5, s4
	add	a1, a2, a1
	sw	a0, 828(a1)
	lui	a0, %hi(si_frame_indicator)
	lw	a0, %lo(si_frame_indicator)(a0)
	lui	a1, %hi(sp2_frame_indicator)
	lw	a1, %lo(sp2_frame_indicator)(a1)
	or	a0, a0, a1
	bnez	a0, .LBB9_6
# %bb.5:                                #   in Loop: Header=BB9_2 Depth=1
	mv	a0, s3
	mv	a1, s2
	call	sign
	ld	a1, %lo(img)(s1)
	lw	a2, 156(a1)
	lui	a3, %hi(lrec)
	ld	a3, %lo(lrec)(a3)
	addw	a2, s8, a2
	slli	a2, a2, 3
	lw	a1, 152(a1)
	add	a2, a3, a2
	ld	a2, 0(a2)
	ld	a3, 32(sp)                      # 8-byte Folded Reload
	addw	a1, a3, a1
	slli	a1, a1, 2
	add	a1, a2, a1
	sw	a0, 0(a1)
.LBB9_6:                                #   in Loop: Header=BB9_2 Depth=1
	lw	s2, 0(s9)
	lw	a0, 0(s0)
	sraiw	a1, s2, 31
	xor	a2, s2, a1
	subw	a2, a2, a1
	mul	a0, a2, a0
	add	a0, a0, s10
	mv	s6, s7
	sraw	s3, a0, s7
	mv	a0, s3
	mv	a1, s2
	call	sign
	lw	a1, 0(s11)
	ld	a2, %lo(img)(s1)
	mul	a0, a1, a0
	ld	a1, 48(sp)                      # 8-byte Folded Reload
	sllw	a0, a0, a1
	lui	s7, 3
	add	a1, s5, s4
	add	a1, a2, a1
	sw	a0, 832(a1)
	lui	a0, %hi(si_frame_indicator)
	lw	a0, %lo(si_frame_indicator)(a0)
	lui	a1, %hi(sp2_frame_indicator)
	lw	a1, %lo(sp2_frame_indicator)(a1)
	or	a0, a0, a1
	bnez	a0, .LBB9_8
# %bb.7:                                #   in Loop: Header=BB9_2 Depth=1
	mv	a0, s3
	mv	a1, s2
	call	sign
	ld	a1, %lo(img)(s1)
	lw	a2, 156(a1)
	lui	a3, %hi(lrec)
	ld	a3, %lo(lrec)(a3)
	addw	a2, s8, a2
	slli	a2, a2, 3
	lw	a1, 152(a1)
	add	a2, a3, a2
	ld	a2, 0(a2)
	ld	a3, 24(sp)                      # 8-byte Folded Reload
	addw	a1, a3, a1
	slli	a1, a1, 2
	add	a1, a2, a1
	sw	a0, 0(a1)
.LBB9_8:                                #   in Loop: Header=BB9_2 Depth=1
	lw	s2, 16(s9)
	lw	a0, 16(s0)
	sraiw	a1, s2, 31
	xor	a2, s2, a1
	subw	a2, a2, a1
	mul	a0, a2, a0
	add	a0, a0, s10
	sraw	s3, a0, s6
	mv	a0, s3
	mv	a1, s2
	call	sign
	lw	a2, 16(s11)
	lui	s4, %hi(img)
	ld	a1, %lo(img)(s1)
	mul	a0, a2, a0
	ld	a2, 48(sp)                      # 8-byte Folded Reload
	sllw	a0, a0, a2
	add	a2, s5, s7
	add	a2, a1, a2
	sw	a0, 836(a2)
	lui	a0, %hi(si_frame_indicator)
	lw	a0, %lo(si_frame_indicator)(a0)
	lui	a2, %hi(sp2_frame_indicator)
	lw	a2, %lo(sp2_frame_indicator)(a2)
	or	a0, a0, a2
	bnez	a0, .LBB9_1
# %bb.9:                                #   in Loop: Header=BB9_2 Depth=1
	mv	a0, s3
	mv	a1, s2
	call	sign
	ld	a1, %lo(img)(s4)
	lw	a2, 156(a1)
	lui	a3, %hi(lrec)
	ld	a3, %lo(lrec)(a3)
	addw	a2, s8, a2
	slli	a2, a2, 3
	lw	a4, 152(a1)
	add	a2, a3, a2
	ld	a2, 0(a2)
	ld	a3, 16(sp)                      # 8-byte Folded Reload
	addw	a3, a3, a4
	slli	a3, a3, 2
	add	a2, a2, a3
	sw	a0, 0(a2)
	j	.LBB9_1
.LBB9_10:
	addiw	a0, s4, 824
	add	a0, a1, a0
	lw	a2, 0(a0)
	lw	a3, 8(a0)
	ld	a4, 0(sp)                       # 8-byte Folded Reload
	add	a1, a1, a4
	lw	a4, 4(a0)
	lw	a7, 12(a0)
	add	t0, a3, a2
	subw	a5, a2, a3
	srai	a2, a4, 1
	subw	a6, a2, a7
	srai	a2, a7, 1
	add	a2, a2, a4
	add	t1, a2, t0
	subw	a2, t0, a2
	sw	a2, 12(a0)
	subw	a2, a5, a6
	lw	a3, 64(a0)
	lw	a4, 72(a0)
	sw	a2, 8(a0)
	lw	a2, 68(a0)
	lw	t2, 76(a0)
	add	t3, a4, a3
	subw	a7, a3, a4
	srai	a3, a2, 1
	subw	t0, a3, t2
	srai	a3, t2, 1
	add	a2, a3, a2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	add	x9, a2, t3
	subw	t3, t3, a2
	sw	t3, 76(a0)
	subw	a2, a7, t0
	lw	t2, 128(a0)
	lw	t3, 136(a0)
	lw	t4, 140(a0)
	regsw_c	x0, 0x60(x16)		# 100000000000001100000
	lw	x2, 132(a0)
	sw	a2, 72(a0)
	add	a2, t3, t2
	srai	a3, t4, 1
	add	a3, a3, x2
	add	x3, a3, a2
	subw	a2, a2, a3
	lw	t5, 192(a0)
	lw	t6, 200(a0)
	regsw_c	x0, 0x8c(x18)		# 100100000000010001100
	lw	x1, 204(a0)
	lw	x4, 196(a0)
	sw	a2, 140(a0)
	add	a3, t6, t5
	srai	a4, x1, 1
	add	a4, a4, x4
	add	x5, a4, a3
	regsw_c	x14, 0x1be(x27)		# 110110111000110111110
	add	x7, x3, t1
	sraiw	x6, x5, 1
	add	x6, x6, x9
	lw	a2, 0(a1)
	addi	x7, x7, 32
	add	x8, x7, x6
	sraiw	x8, x8, 6
	regsw_c	x15, 0x508(x23)		# 101110111110100001000
	sgtz	x10, x8
	neg	x10, x10
	and	x8, x10, x8
	sraiw	x10, x9, 1
	mv	x9, a2
	blt	a2, x8, .LBB9_12
# %bb.11:
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	mv	x9, x8
.LBB9_12:
	regsw_c	x11, 0x6c4(x27)		# 110110101111011000100
	srai	x8, x2, 1
	srai	x4, x4, 1
	subw	x3, t1, x3
	subw	x2, x10, x5
	subw	t1, x7, x6
	sraiw	t1, t1, 6
	sgtz	x5, t1
	regsw_c	x3, 0x0(x25)		# 110010001100000000000
	neg	x5, x5
	and	t1, x5, t1
	sw	x9, 0(a0)
	mv	x5, a2
	blt	a2, t1, .LBB9_14
# %bb.13:
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x5, t1
.LBB9_14:
	subw	t1, t2, t3
	regsw_c	x6, 0x444(x8)		# 010000011010001000100
	subw	t2, x8, t4
	subw	t3, t5, t6
	subw	t4, x4, x1
	addi	t5, x3, 32
	add	t6, t5, x2
	sraiw	t6, t6, 6
	sgtz	x1, t6
	regsw_c	x2, 0x40(x27)		# 110110001000001000000
	neg	x1, x1
	and	x1, x1, t6
	sw	x5, 192(a0)
	mv	t6, a2
	blt	a2, x1, .LBB9_16
# %bb.15:
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	mv	t6, x1
.LBB9_16:
	add	a5, a6, a5
	add	t0, t0, a7
	add	a6, t2, t1
	add	a7, t4, t3
	regsw_c	x9, 0x480(x4)		# 001000100110010000000
	subw	t5, t5, x2
	sraiw	t5, t5, 6
	sgtz	x1, t5
	neg	x1, x1
	and	t5, x1, t5
	sw	t6, 64(a0)
	mv	t6, a2
	blt	a2, t5, .LBB9_18
# %bb.17:
	mv	t6, t5
.LBB9_18:
	sw	t6, 128(a0)
	add	t6, a6, a5
	sraiw	t5, a7, 1
	add	t5, t5, t0
	addi	t6, t6, 32
	regsw_c	x11, 0x5e0(x19)		# 100110101110111100000
	add	x1, t6, t5
	sraiw	x1, x1, 6
	sgtz	x2, x1
	neg	x2, x2
	and	x2, x2, x1
	sraiw	x1, t0, 1
	mv	t0, a2
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	blt	a2, x2, .LBB9_20
# %bb.19:
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	mv	t0, x2
.LBB9_20:
	subw	a5, a5, a6
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	subw	a6, x1, a7
	subw	t6, t6, t5
	sraiw	a7, t6, 6
	sgtz	t5, a7
	neg	t5, t5
	and	a7, t5, a7
	sw	t0, 4(a0)
	mv	t0, a2
	blt	a2, a7, .LBB9_22
# %bb.21:
	mv	t0, a7
.LBB9_22:
	addi	a7, a5, 32
	add	a5, a7, a6
	sraiw	a5, a5, 6
	sgtz	t5, a5
	neg	t5, t5
	and	a5, t5, a5
	sw	t0, 196(a0)
	mv	t0, a2
	blt	a2, a5, .LBB9_24
# %bb.23:
	mv	t0, a5
.LBB9_24:
	subw	a5, t1, t2
	subw	t3, t3, t4
	subw	a6, a7, a6
	sraiw	a6, a6, 6
	sgtz	a7, a6
	neg	a7, a7
	and	a6, a7, a6
	sw	t0, 68(a0)
	mv	a7, a2
	blt	a2, a6, .LBB9_26
# %bb.25:
	mv	a7, a6
.LBB9_26:
	lw	a6, 8(a0)
	lw	t1, 72(a0)
	sw	a7, 132(a0)
	add	t0, a5, a6
	sraiw	a7, t3, 1
	add	a7, a7, t1
	addi	t0, t0, 32
	add	t2, t0, a7
	sraiw	t2, t2, 6
	sgtz	t4, t2
	neg	t4, t4
	and	t4, t4, t2
	srli	t2, t1, 1
	mv	t1, a2
	blt	a2, t4, .LBB9_28
# %bb.27:
	mv	t1, t4
.LBB9_28:
	subw	a6, a6, a5
	subw	a5, t2, t3
	subw	a7, t0, a7
	sraiw	a7, a7, 6
	sgtz	t0, a7
	neg	t0, t0
	and	t0, t0, a7
	sw	t1, 8(a0)
	mv	a7, a2
	blt	a2, t0, .LBB9_30
# %bb.29:
	mv	a7, t0
.LBB9_30:
	addi	a6, a6, 32
	add	t0, a6, a5
	sraiw	t0, t0, 6
	sgtz	t1, t0
	neg	t1, t1
	and	t0, t1, t0
	sw	a7, 200(a0)
	mv	a7, a2
	blt	a2, t0, .LBB9_32
# %bb.31:
	mv	a7, t0
.LBB9_32:
	subw	a3, a3, a4
	subw	a4, a6, a5
	sraiw	a4, a4, 6
	sgtz	a5, a4
	neg	a5, a5
	and	a4, a5, a4
	sw	a7, 72(a0)
	mv	a6, a2
	blt	a2, a4, .LBB9_34
# %bb.33:
	mv	a6, a4
.LBB9_34:
	lw	a4, 12(a0)
	lw	a5, 140(a0)
	lw	t0, 76(a0)
	sw	a6, 136(a0)
	add	a7, a5, a4
	sraiw	a6, a3, 1
	add	a6, a6, t0
	addi	a7, a7, 32
	add	t1, a7, a6
	sraiw	t1, t1, 6
	sgtz	t2, t1
	neg	t2, t2
	and	t2, t2, t1
	srli	t1, t0, 1
	mv	t0, a2
	blt	a2, t2, .LBB9_36
# %bb.35:
	mv	t0, t2
.LBB9_36:
	subw	a4, a4, a5
	subw	a3, t1, a3
	subw	a5, a7, a6
	sraiw	a5, a5, 6
	sgtz	a6, a5
	neg	a6, a6
	and	a5, a6, a5
	sw	t0, 12(a0)
	blt	a2, a5, .LBB9_38
# %bb.37:
	mv	a2, a5
.LBB9_38:
	lw	a1, 0(a1)
	addi	a4, a4, 32
	add	a5, a4, a3
	sraiw	a5, a5, 6
	sgtz	a6, a5
	neg	a6, a6
	and	a5, a6, a5
	sw	a2, 204(a0)
	mv	a2, a1
	blt	a1, a5, .LBB9_40
# %bb.39:
	mv	a2, a5
.LBB9_40:
	subw	a4, a4, a3
	sraiw	a3, a4, 6
	sgtz	a4, a3
	neg	a4, a4
	and	a3, a4, a3
	sw	a2, 76(a0)
	blt	a1, a3, .LBB9_42
# %bb.41:
	mv	a1, a3
.LBB9_42:
	sw	a1, 140(a0)
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 3
	addiw	a1, a1, 824
	lui	a2, %hi(enc_picture)
	ld	a2, %lo(enc_picture)(a2)
	add	a1, a0, a1
	lui	a3, 2
	lw	a4, 156(a0)
	add	a2, a2, a3
	ld	a2, -1768(a2)
	lw	a0, 152(a0)
	ld	a3, 8(sp)                       # 8-byte Folded Reload
	addw	a3, a4, a3
	slli	a4, a3, 3
	add	a4, a2, a4
	ld	a4, 0(a4)
	lh	a5, 0(a1)
	ld	a6, 40(sp)                      # 8-byte Folded Reload
	addw	a0, a0, a6
	slli	a6, a0, 1
	add	a7, a4, a6
	sh	a5, 0(a7)
	lh	a5, 4(a1)
	addiw	a7, a0, 1
	slli	a7, a7, 1
	add	t0, a4, a7
	sh	a5, 0(t0)
	lh	a5, 8(a1)
	addiw	t0, a0, 2
	slli	t0, t0, 1
	add	t1, a4, t0
	sh	a5, 0(t1)
	lh	a5, 12(a1)
	addiw	a0, a0, 3
	slli	a0, a0, 1
	addiw	t1, a3, 1
	slli	t1, t1, 3
	add	t1, a2, t1
	ld	t1, 0(t1)
	add	a4, a4, a0
	lh	t2, 64(a1)
	sh	a5, 0(a4)
	add	a4, t1, a6
	lh	a5, 68(a1)
	sh	t2, 0(a4)
	lh	a4, 72(a1)
	add	t2, t1, a7
	sh	a5, 0(t2)
	add	a5, t1, t0
	sh	a4, 0(a5)
	lh	a4, 76(a1)
	addiw	a5, a3, 2
	slli	a5, a5, 3
	add	a5, a2, a5
	ld	a5, 0(a5)
	add	t1, t1, a0
	lh	t2, 128(a1)
	sh	a4, 0(t1)
	add	a4, a5, a6
	lh	t1, 132(a1)
	sh	t2, 0(a4)
	lh	a4, 136(a1)
	add	t2, a5, a7
	sh	t1, 0(t2)
	add	t1, a5, t0
	sh	a4, 0(t1)
	lh	a4, 140(a1)
	addiw	a3, a3, 3
	slli	a3, a3, 3
	add	a2, a2, a3
	ld	a2, 0(a2)
	add	a5, a5, a0
	lh	a3, 192(a1)
	sh	a4, 0(a5)
	add	a6, a2, a6
	lh	a4, 196(a1)
	sh	a3, 0(a6)
	add	a7, a2, a7
	lh	a3, 200(a1)
	sh	a4, 0(a7)
	lh	a1, 204(a1)
	add	t0, a2, t0
	sh	a3, 0(t0)
	add	a0, a2, a0
	sh	a1, 0(a0)
	ld	ra, 216(sp)                     # 8-byte Folded Reload
	ld	s0, 208(sp)                     # 8-byte Folded Reload
	ld	s1, 200(sp)                     # 8-byte Folded Reload
	ld	s2, 192(sp)                     # 8-byte Folded Reload
	ld	s3, 184(sp)                     # 8-byte Folded Reload
	ld	s4, 176(sp)                     # 8-byte Folded Reload
	ld	s5, 168(sp)                     # 8-byte Folded Reload
	ld	s6, 160(sp)                     # 8-byte Folded Reload
	ld	s7, 152(sp)                     # 8-byte Folded Reload
	ld	s8, 144(sp)                     # 8-byte Folded Reload
	ld	s9, 136(sp)                     # 8-byte Folded Reload
	ld	s10, 128(sp)                    # 8-byte Folded Reload
	ld	s11, 120(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 224
	ret
.Lfunc_end9:
	.size	copyblock_sp, .Lfunc_end9-copyblock_sp
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	writeIPCMBytes                  # -- Begin function writeIPCMBytes
	.p2align	2
	.type	writeIPCMBytes,@function
writeIPCMBytes:                         # @writeIPCMBytes
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
	sd	s10, 0(sp)                      # 8-byte Folded Spill
	lui	s3, %hi(img)
	ld	a1, %lo(img)(s3)
	lw	a2, 12(a1)
	lui	a3, 8
	add	a4, a1, a3
	ld	a4, -1192(a4)
	li	a5, 528
	mul	a2, a2, a5
	add	a2, a4, a2
	lw	a2, 0(a2)
	mv	s0, a0
	li	s4, 0
	li	s1, 0
	li	a0, 48
	mul	s2, a2, a0
	addiw	a0, a3, -1184
	add	a0, a1, a0
	add	s2, a0, s2
	lui	s5, 22
	lui	s6, %hi(enc_picture)
	lui	s7, 2
	li	s8, 16
.LBB10_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_2 Depth 2
	ld	a0, %lo(img)(s3)
	lw	a0, 156(a0)
	li	s9, 0
	addw	s10, a0, s4
	slli	s10, s10, 3
.LBB10_2:                               #   Parent Loop BB10_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, %lo(enc_picture)(s6)
	ld	a1, %lo(img)(s3)
	add	a0, a0, s7
	ld	a0, -1768(a0)
	add	a2, a1, s5
	lw	a1, 152(a1)
	add	a0, a0, s10
	ld	a0, 0(a0)
	lw	a2, 372(a2)
	add	a1, s9, a1
	slli	a1, a1, 1
	add	a0, a0, a1
	lhu	a0, 0(a0)
	sw	a2, 12(s2)
	addw	s1, a2, s1
	sw	a0, 20(s2)
	mv	a0, s2
	mv	a1, s0
	call	writeSyntaxElement2Buf_Fixed
	addi	s9, s9, 1
	bne	s9, s8, .LBB10_2
# %bb.3:                                #   in Loop: Header=BB10_1 Depth=1
	addiw	s4, s4, 1
	bne	s4, s8, .LBB10_1
# %bb.4:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 22
	addiw	a1, a1, 444
	add	a1, a0, a1
	lw	a2, 4(a1)
	blez	a2, .LBB10_18
# %bb.5:
	lw	a1, 0(a1)
	blez	a1, .LBB10_12
# %bb.6:                                # %.preheader3
	li	s3, 0
	lui	s4, 22
	lui	s5, %hi(enc_picture)
	lui	s6, 2
	lui	s7, %hi(img)
	j	.LBB10_8
.LBB10_7:                               #   in Loop: Header=BB10_8 Depth=1
	add	a1, a0, s4
	lw	a1, 448(a1)
	addiw	s3, s3, 1
	bge	s3, a1, .LBB10_11
.LBB10_8:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_10 Depth 2
	add	a1, a0, s4
	lw	a1, 444(a1)
	blez	a1, .LBB10_7
# %bb.9:                                #   in Loop: Header=BB10_8 Depth=1
	lw	a1, 164(a0)
	li	s8, 0
	li	s9, 0
	addw	s10, a1, s3
	slli	s10, s10, 3
.LBB10_10:                              #   Parent Loop BB10_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a1, %lo(enc_picture)(s5)
	add	a1, a1, s6
	ld	a1, -1728(a1)
	ld	a1, 0(a1)
	add	a2, a0, s4
	lw	a0, 160(a0)
	add	a1, a1, s10
	ld	a1, 0(a1)
	lw	a2, 376(a2)
	add	a0, s8, a0
	slli	a0, a0, 1
	add	a0, a1, a0
	lhu	a0, 0(a0)
	sw	a2, 12(s2)
	addw	s1, a2, s1
	sw	a0, 20(s2)
	mv	a0, s2
	mv	a1, s0
	call	writeSyntaxElement2Buf_Fixed
	ld	a0, %lo(img)(s7)
	add	a1, a0, s4
	lw	a1, 444(a1)
	addiw	s9, s9, 1
	addi	s8, s8, 1
	blt	s9, a1, .LBB10_10
	j	.LBB10_7
.LBB10_11:
	blez	a1, .LBB10_18
.LBB10_12:
	lui	s3, 22
	add	a1, a0, s3
	lw	a1, 444(a1)
	blez	a1, .LBB10_18
# %bb.13:                               # %.preheader
	li	s4, 0
	lui	s5, %hi(enc_picture)
	lui	s6, 2
	lui	s7, %hi(img)
	j	.LBB10_15
.LBB10_14:                              #   in Loop: Header=BB10_15 Depth=1
	add	a1, a0, s3
	lw	a1, 448(a1)
	addiw	s4, s4, 1
	bge	s4, a1, .LBB10_18
.LBB10_15:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_17 Depth 2
	add	a1, a0, s3
	lw	a1, 444(a1)
	blez	a1, .LBB10_14
# %bb.16:                               #   in Loop: Header=BB10_15 Depth=1
	lw	a1, 164(a0)
	li	s8, 0
	li	s9, 0
	addw	s10, a1, s4
	slli	s10, s10, 3
.LBB10_17:                              #   Parent Loop BB10_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a1, %lo(enc_picture)(s5)
	add	a1, a1, s6
	ld	a1, -1728(a1)
	ld	a1, 8(a1)
	add	a2, a0, s3
	lw	a0, 160(a0)
	add	a1, a1, s10
	ld	a1, 0(a1)
	lw	a2, 376(a2)
	add	a0, s8, a0
	slli	a0, a0, 1
	add	a0, a1, a0
	lhu	a0, 0(a0)
	sw	a2, 12(s2)
	addw	s1, a2, s1
	sw	a0, 20(s2)
	mv	a0, s2
	mv	a1, s0
	call	writeSyntaxElement2Buf_Fixed
	ld	a0, %lo(img)(s7)
	add	a1, a0, s3
	lw	a1, 444(a1)
	addiw	s9, s9, 1
	addi	s8, s8, 1
	blt	s9, a1, .LBB10_17
	j	.LBB10_14
.LBB10_18:
	mv	a0, s1
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
	ld	s10, 0(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 96
	ret
.Lfunc_end10:
	.size	writeIPCMBytes, .Lfunc_end10-writeIPCMBytes
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	writePCMByteAlign               # -- Begin function writePCMByteAlign
	.p2align	2
	.type	writePCMByteAlign,@function
writePCMByteAlign:                      # @writePCMByteAlign
# %bb.0:
	lw	a2, 4(a0)
	li	a1, 7
	blt	a1, a2, .LBB11_2
# %bb.1:
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	li	a3, 8
	lui	a4, %hi(stats)
	lw	a5, 24(a1)
	ld	a4, %lo(stats)(a4)
	subw	a1, a3, a2
	lbu	a6, 8(a0)
	slli	a5, a5, 2
	add	a4, a4, a5
	lw	a5, 1336(a4)
	sllw	a6, a6, a2
	li	a7, 255
	srlw	a7, a7, a1
	add	a2, a5, a2
	sw	a2, 1336(a4)
	lw	a2, 0(a0)
	or	a4, a6, a7
	ld	a5, 32(a0)
	sb	a4, 8(a0)
	addi	a6, a2, 1
	sw	a6, 0(a0)
	add	a2, a5, a2
	sb	a4, 0(a2)
	sw	a3, 4(a0)
	mv	a0, a1
	ret
.LBB11_2:
	li	a0, 0
	ret
.Lfunc_end11:
	.size	writePCMByteAlign, .Lfunc_end11-writePCMByteAlign
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	dct_luma_sp2                    # -- Begin function dct_luma_sp2
	.p2align	2
	.type	dct_luma_sp2,@function
dct_luma_sp2:                           # @dct_luma_sp2
# %bb.0:
	addi	sp, sp, -304
	sd	ra, 296(sp)                     # 8-byte Folded Spill
	sd	s0, 288(sp)                     # 8-byte Folded Spill
	sd	s1, 280(sp)                     # 8-byte Folded Spill
	sd	s2, 272(sp)                     # 8-byte Folded Spill
	sd	s3, 264(sp)                     # 8-byte Folded Spill
	sd	s4, 256(sp)                     # 8-byte Folded Spill
	sd	s5, 248(sp)                     # 8-byte Folded Spill
	sd	s6, 240(sp)                     # 8-byte Folded Spill
	sd	s7, 232(sp)                     # 8-byte Folded Spill
	sd	s8, 224(sp)                     # 8-byte Folded Spill
	sd	s9, 216(sp)                     # 8-byte Folded Spill
	sd	s10, 208(sp)                    # 8-byte Folded Spill
	sd	s11, 200(sp)                    # 8-byte Folded Spill
	sd	a2, 64(sp)                      # 8-byte Folded Spill
	li	s10, 0
	sd	zero, 128(sp)                   # 8-byte Folded Spill
	sd	zero, 80(sp)                    # 8-byte Folded Spill
	srli	a2, a1, 2
	andi	a5, a2, -2
	srli	a2, a0, 3
	add	a5, a5, a2
	regsw_c	x0, 0x10d(x17)		# 100010000000100001101
	lui	x11, %hi(img)
	ld	a6, %lo(img)(x11)
	srli	a2, a1, 1
	lui	t6, 3
	addiw	x7, t6, 824
	sd	x7, 120(sp)                     # 8-byte Folded Spill
	add	x7, a6, x7
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	ld	a3, 1024(x7)
	andi	a2, a2, 2
	slli	a4, a0, 61
	slli	a5, a5, 3
	add	a3, a3, a5
	ld	a3, 0(a3)
	srli	a4, a4, 63
	or	a2, a2, a4
	slli	a2, a2, 3
	add	a2, a3, a2
	ld	a7, 0(a2)
	regsw_c	x0, 0x80(x16)		# 100000000000010000000
	lw	x6, 44(a6)
	lui	a2, 174763
	addiw	a2, a2, -1365
	lw	t0, 156(a6)
	mul	a2, x6, a2
	lui	a3, %hi(lrec)
	ld	a3, %lo(lrec)(a3)
	addw	a4, t0, a1
	slli	a4, a4, 3
	lw	t1, 152(a6)
	add	a4, a3, a4
	ld	t2, 0(a4)
	srli	t3, a2, 63
	addw	a4, t1, a0
	slli	t4, a4, 2
	add	a4, t2, t4
	lw	a4, 0(a4)
	srli	t5, a2, 32
	addiw	a2, t6, 312
	add	a2, a6, a2
	regsw_c	x1, 0xa1(x8)		# 010000000100010100001
	sw	a4, 0(x7)
	slli	a4, a1, 5
	add	t6, a2, a4
	addi	x10, a0, 1
	addw	a4, x10, t1
	slli	x1, a4, 2
	add	a4, t2, x1
	lw	a5, 0(a4)
	slli	a4, a0, 1
	regsw_c	x4, 0x134(x19)		# 100110010000100110100
	add	x2, t6, a4
	lhu	x2, 0(x2)
	sw	a5, 4(x7)
	addi	a5, a4, 2
	add	x3, t6, a5
	lhu	x3, 0(x3)
	addi	x9, a0, 2
	regsw_c	x11, 0x509(x27)		# 110110101110100001001
	addw	x4, x9, t1
	slli	x4, x4, 2
	add	x5, t2, x4
	lw	x5, 0(x5)
	add	x12, t5, t3
	sw	x2, 136(sp)
	sw	x3, 152(sp)
	regsw_c	x4, 0x0(x14)		# 011100010000000000000
	sw	x5, 8(x7)
	addi	x8, a0, 3
	addw	t1, x8, t1
	slli	t1, t1, 2
	add	t2, t2, t1
	lw	t2, 0(t2)
	addi	t3, a4, 4
	add	t5, t6, t3
	lhu	t5, 0(t5)
	regsw_c	x9, 0x574(x8)		# 010000100110101110100
	sw	t2, 12(x7)
	addi	t2, a1, 1
	addw	x2, t0, t2
	slli	x2, x2, 3
	add	x2, a3, x2
	ld	x2, 0(x2)
	addi	x3, a4, 6
	regsw_c	x13, 0x400(x4)		# 001000110110000000000
	add	t6, t6, x3
	lhu	t6, 0(t6)
	add	x5, x2, t4
	lw	x5, 0(x5)
	sw	t5, 168(sp)
	sw	t6, 184(sp)
	ld	t5, 0(a7)
	sd	t5, 72(sp)                      # 8-byte Folded Spill
	regsw_c	x14, 0x400(x12)		# 011000111010000000000
	sw	x5, 64(x7)
	slli	t2, t2, 5
	add	x1, x2, x1
	lw	t5, 0(x1)
	add	t2, a2, t2
	add	t6, t2, a4
	lhu	t6, 0(t6)
	regsw_c	x1, 0x780(x8)		# 010000000111110000000
	sw	t5, 68(x7)
	add	t5, t2, a5
	lhu	t5, 0(t5)
	add	x4, x2, x4
	lw	x1, 0(x4)
	ld	a7, 8(a7)
	sd	a7, 56(sp)                      # 8-byte Folded Spill
	sw	t6, 140(sp)
	sw	t5, 156(sp)
	regsw_c	x0, 0x400(x12)		# 011000000010000000000
	sw	x1, 72(x7)
	add	a7, t2, t3
	lhu	a7, 0(a7)
	add	t1, x2, t1
	lw	t1, 0(t1)
	addi	t5, a1, 2
	addw	t0, t0, t5
	slli	t0, t0, 3
	add	t0, a3, t0
	ld	t0, 0(t0)
	regsw_c	x16, 0x0(x8)		# 010001000000000000000
	sw	t1, 76(x7)
	add	t2, t2, x3
	lhu	t1, 0(t2)
	add	t0, t0, t4
	lw	t0, 0(t0)
	lw	t2, 156(a6)
	sw	a7, 172(sp)
	sw	t1, 188(sp)
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	sw	t0, 128(x7)
	addw	a7, t2, t5
	slli	a7, a7, 3
	lw	a6, 152(a6)
	add	a7, a3, a7
	ld	a7, 0(a7)
	slli	t5, t5, 5
	regsw_c	x0, 0x0(x5)		# 001010000000000000000
	sd	x10, 8(sp)                      # 8-byte Folded Spill
	addw	t0, x10, a6
	slli	t0, t0, 2
	add	t1, a7, t0
	lw	t1, 0(t1)
	add	t5, a2, t5
	add	t4, t5, a4
	lhu	t4, 0(t4)
	regsw_c	x20, 0x0(x8)		# 010001010000000000000
	sw	t1, 132(x7)
	sd	x9, 16(sp)                      # 8-byte Folded Spill
	addw	t1, x9, a6
	slli	t1, t1, 2
	add	t6, a7, t1
	lw	t6, 0(t6)
	sw	t4, 144(sp)
	add	t4, t5, a5
	lhu	t4, 0(t4)
	regsw_c	x20, 0x0(x8)		# 010001010000000000000
	sw	t6, 136(x7)
	sd	x8, 24(sp)                      # 8-byte Folded Spill
	addw	t6, x8, a6
	slli	t6, t6, 2
	add	a7, a7, t6
	lw	a7, 0(a7)
	sd	a1, 40(sp)                      # 8-byte Folded Spill
	regsw_c	x16, 0x0(x16)		# 100001000000000000000
	addi	x1, a1, 3
	addw	t2, t2, x1
	slli	t2, t2, 3
	add	a3, a3, t2
	add	t2, t5, t3
	lhu	t2, 0(t2)
	ld	a3, 0(a3)
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	sw	a7, 140(x7)
	sd	a0, 32(sp)                      # 8-byte Folded Spill
	addw	a6, a6, a0
	slli	a6, a6, 2
	add	a6, a3, a6
	lw	a6, 0(a6)
	sw	t4, 160(sp)
	sw	t2, 176(sp)
	regsw_c	x0, 0x31(x5)		# 001010000000000110001
	add	t5, t5, x3
	sw	a6, 192(x7)
	add	t0, a3, t0
	lw	a6, 0(t0)
	lhu	a7, 0(t5)
	slli	x1, x1, 5
	add	a2, a2, x1
	regsw_c	x0, 0x2(x8)		# 010000000000000000010
	sw	a6, 196(x7)
	add	t1, a3, t1
	lw	a6, 0(t1)
	add	a4, a2, a4
	lhu	a4, 0(a4)
	add	a5, a2, a5
	sw	a6, 200(x7)
	add	a3, a3, t6
	lw	a3, 0(a3)
	lhu	a5, 0(a5)
	add	t3, a2, t3
	lhu	a6, 0(t3)
	regsw_c	x16, 0x80(x8)		# 010001000000010000000
	sw	a3, 204(x7)
	add	a2, a2, x3
	lhu	a0, 0(a2)
	li	a2, 6
	mul	a2, x12, a2
	lw	a3, 136(sp)
	lw	t0, 184(sp)
	lw	t1, 152(sp)
	lw	t2, 168(sp)
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	subw	a1, x6, a2
	sd	a1, 104(sp)                     # 8-byte Folded Spill
	add	a1, t0, a3
	subw	a2, a3, t0
	add	a3, t2, t1
	subw	t0, t1, t2
	add	t1, a3, a1
	subw	a1, a1, a3
	slli	a3, a2, 1
	add	a3, a3, t0
	slli	t0, t0, 1
	subw	a2, a2, t0
	lw	t0, 140(sp)
	lw	t2, 188(sp)
	lw	t3, 156(sp)
	lw	t4, 172(sp)
	sw	a2, 184(sp)
	add	a2, t2, t0
	subw	t0, t0, t2
	add	t2, t4, t3
	subw	t3, t3, t4
	add	t4, t2, a2
	subw	a2, a2, t2
	slli	t2, t0, 1
	add	t2, t2, t3
	slli	t3, t3, 1
	lw	t5, 144(sp)
	lw	t6, 160(sp)
	regsw_c	x0, 0x8c(x16)		# 100000000000010001100
	lw	x1, 176(sp)
	subw	t0, t0, t3
	add	t3, t5, a7
	subw	a7, t5, a7
	add	t5, x1, t6
	subw	t6, t6, x1
	add	x1, t5, t3
	subw	t3, t3, t5
	slli	t5, a7, 1
	add	t5, t5, t6
	slli	t6, t6, 1
	subw	a7, a7, t6
	add	t6, a0, a4
	subw	a4, a4, a0
	add	a0, a6, a5
	subw	a5, a5, a6
	add	a6, a0, t6
	subw	t6, t6, a0
	slli	a0, a4, 1
	add	a0, a0, a5
	slli	a5, a5, 1
	subw	a4, a4, a5
	add	a5, a6, t1
	subw	a6, t1, a6
	regsw_c	x24, 0x270(x8)		# 010001100001001110000
	add	t1, x1, t4
	subw	t4, t4, x1
	add	x1, t1, a5
	sw	x1, 136(sp)
	sd	x12, 112(sp)                    # 8-byte Folded Spill
	addi	x12, x12, 15
	subw	a5, a5, t1
	li	t1, 1
	sw	a5, 144(sp)
	slli	a5, a6, 1
	add	a5, a5, t4
	sw	a5, 140(sp)
	regsw_c	x16, 0x0(x4)		# 001001000000000000000
	sd	x12, 96(sp)                     # 8-byte Folded Spill
	sllw	a5, t1, x12
	slli	t4, t4, 1
	subw	a6, a6, t4
	sw	a6, 148(sp)
	add	a6, a0, a3
	subw	a3, a3, a0
	add	a0, t5, t2
	subw	t1, t2, t5
	add	t2, a0, a6
	sw	t2, 152(sp)
	subw	a0, a6, a0
	sw	a0, 160(sp)
	slli	a0, a3, 1
	add	a0, a0, t1
	sw	a0, 156(sp)
	slli	t1, t1, 1
	subw	a0, a3, t1
	sw	a0, 164(sp)
	add	a0, t6, a1
	subw	a1, a1, t6
	add	a3, t3, a2
	subw	a2, a2, t3
	add	a6, a3, a0
	sw	a6, 168(sp)
	subw	a0, a0, a3
	sw	a0, 176(sp)
	slli	a0, a1, 1
	add	a0, a0, a2
	sw	a0, 172(sp)
	lw	a0, 184(sp)
	slli	a2, a2, 1
	subw	a1, a1, a2
	sw	a1, 180(sp)
	add	a1, a4, a0
	subw	a0, a0, a4
	add	a2, a7, t0
	subw	a3, t0, a7
	add	a4, a2, a1
	sw	a4, 184(sp)
	subw	a1, a1, a2
	sw	a1, 192(sp)
	slli	a1, a0, 1
	add	a1, a1, a3
	sw	a1, 188(sp)
	slli	a3, a3, 1
	subw	a0, a0, a3
	sw	a0, 196(sp)
	srliw	a0, a5, 31
	add	a0, a5, a0
	sraiw	a0, a0, 1
	sd	a0, 88(sp)                      # 8-byte Folded Spill
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	ld	a1, %lo(img)(x11)
	li	s1, -1
	lui	a0, 22
	addiw	s2, a0, -696
	lui	a0, 244
	addi	a0, a0, 575
	sd	a0, 48(sp)                      # 8-byte Folded Spill
	j	.LBB12_3
.LBB12_1:                               #   in Loop: Header=BB12_3 Depth=1
	ld	a3, 64(sp)                      # 8-byte Folded Reload
	lw	a2, 0(a3)
	add	a1, a2, a1
	sw	a1, 0(a3)
	mv	a1, s5
	call	sign
	ld	a3, 128(sp)                     # 8-byte Folded Reload
	slli	a1, a3, 2
	ld	a2, 72(sp)                      # 8-byte Folded Reload
	add	a2, a2, a1
	sw	a0, 0(a2)
	ld	a0, 56(sp)                      # 8-byte Folded Reload
	add	a1, a0, a1
	sw	s1, 0(a1)
	addiw	a3, a3, 1
	sd	a3, 128(sp)                     # 8-byte Folded Spill
	li	s1, -1
	li	a0, 1
	sd	a0, 80(sp)                      # 8-byte Folded Spill
.LBB12_2:                               #   in Loop: Header=BB12_3 Depth=1
	mv	a0, s6
	mv	a1, s4
	call	sign
	lui	a1, %hi(dequant_coef)
	addi	a1, a1, %lo(dequant_coef)
	add	s0, a1, s0
	add	s0, s0, s8
	add	s0, s0, s11
	lw	a2, 0(s0)
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	add	a0, a0, s5
	mul	a0, a0, a2
	ld	a2, 112(sp)                     # 8-byte Folded Reload
	sllw	a2, a0, a2
	ld	a0, 120(sp)                     # 8-byte Folded Reload
	add	a0, a1, a0
	add	s7, a0, s7
	add	s7, s7, s9
	addi	s10, s10, 2
	sw	a2, 0(s7)
	li	a2, 32
	beq	s10, a2, .LBB12_10
.LBB12_3:                               # =>This Inner Loop Header: Depth=1
	add	a0, a1, s2
	lw	a3, 848(a0)
	lui	a2, %hi(FIELD_SCAN)
	addi	a2, a2, %lo(FIELD_SCAN)
	bnez	a3, .LBB12_7
# %bb.4:                                #   in Loop: Header=BB12_3 Depth=1
	lui	a2, %hi(mb_adaptive)
	lw	a2, %lo(mb_adaptive)(a2)
	beqz	a2, .LBB12_6
# %bb.5:                                #   in Loop: Header=BB12_3 Depth=1
	lw	a0, 0(a0)
	lui	a2, %hi(FIELD_SCAN)
	addi	a2, a2, %lo(FIELD_SCAN)
	bnez	a0, .LBB12_7
.LBB12_6:                               #   in Loop: Header=BB12_3 Depth=1
	lui	a2, %hi(SNGL_SCAN)
	addi	a2, a2, %lo(SNGL_SCAN)
.LBB12_7:                               #   in Loop: Header=BB12_3 Depth=1
	add	a2, a2, s10
	lbu	s9, 0(a2)
	lbu	s7, 1(a2)
	slli	s8, s9, 4
	addi	a0, sp, 136
	add	a0, a0, s8
	slli	s11, s7, 2
	add	a0, a0, s11
	lw	s4, 0(a0)
	addiw	s1, s1, 1
	sraiw	a0, s4, 31
	xor	a2, s4, a0
	subw	a2, a2, a0
	ld	s0, 104(sp)                     # 8-byte Folded Reload
	slli	s0, s0, 6
	lui	a0, %hi(quant_coef)
	addi	a0, a0, %lo(quant_coef)
	add	a0, a0, s0
	add	a0, a0, s8
	add	a0, a0, s11
	lw	a0, 0(a0)
	slli	s7, s7, 6
	add	a1, a1, s7
	slli	s9, s9, 2
	lui	a3, 3
	add	a3, s9, a3
	add	a1, a1, a3
	lw	s3, 824(a1)
	mul	a0, a2, a0
	ld	a1, 88(sp)                      # 8-byte Folded Reload
	add	a0, a0, a1
	ld	a1, 96(sp)                      # 8-byte Folded Reload
	sraw	s6, a0, a1
	mv	a0, s6
	mv	a1, s4
	call	sign
	subw	s5, s3, a0
	beq	s3, a0, .LBB12_2
# %bb.8:                                #   in Loop: Header=BB12_3 Depth=1
	sraiw	a0, s5, 31
	xor	a1, s5, a0
	subw	a0, a1, a0
	ld	a1, 48(sp)                      # 8-byte Folded Reload
	li	a2, 1
	bltu	a2, a0, .LBB12_1
# %bb.9:                                #   in Loop: Header=BB12_3 Depth=1
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	addi	a1, a1, 2047
	lw	a1, 1093(a1)
	slli	a1, a1, 4
	lui	a2, %hi(COEFF_COST)
	addi	a2, a2, %lo(COEFF_COST)
	add	a2, a2, s1
	add	a1, a2, a1
	lbu	a1, 0(a1)
	j	.LBB12_1
.LBB12_10:
	ld	a1, 128(sp)                     # 8-byte Folded Reload
	slli	a1, a1, 2
	ld	a2, 72(sp)                      # 8-byte Folded Reload
	add	a1, a2, a1
	sw	zero, 0(a1)
	lw	a1, 0(a0)
	lw	a2, 8(a0)
	lw	a3, 4(a0)
	lw	a4, 12(a0)
	add	a7, a2, a1
	subw	a5, a1, a2
	srai	a1, a3, 1
	subw	a6, a1, a4
	srai	a4, a4, 1
	add	a3, a4, a3
	add	t1, a3, a7
	subw	a1, a7, a3
	sw	a1, 12(a0)
	subw	a1, a5, a6
	lw	a2, 64(a0)
	lw	a3, 72(a0)
	sw	a1, 8(a0)
	lw	a1, 68(a0)
	lw	a4, 76(a0)
	add	t2, a3, a2
	subw	a7, a2, a3
	srli	a2, a1, 1
	subw	t0, a2, a4
	srai	a4, a4, 1
	add	a1, a4, a1
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	add	x8, a1, t2
	subw	a1, t2, a1
	sw	a1, 76(a0)
	subw	a4, a7, t0
	lw	t2, 128(a0)
	lw	t3, 136(a0)
	lw	t4, 140(a0)
	regsw_c	x0, 0x60(x16)		# 100000000000001100000
	lw	x2, 132(a0)
	sw	a4, 72(a0)
	add	a1, t3, t2
	srai	a2, t4, 1
	add	a2, a2, x2
	add	x3, a2, a1
	subw	a1, a1, a2
	lw	t5, 192(a0)
	lw	t6, 200(a0)
	regsw_c	x0, 0x8c(x18)		# 100100000000010001100
	lw	x1, 204(a0)
	lw	x4, 196(a0)
	sw	a1, 140(a0)
	add	a2, t6, t5
	srai	a3, x1, 1
	add	a3, a3, x4
	add	x5, a3, a2
	regsw_c	x15, 0xc4(x11)		# 010110111100011000100
	add	a1, x3, t1
	sraiw	x6, x5, 1
	add	x6, x6, x8
	addi	x7, a1, 32
	add	a1, x7, x6
	sraiw	a1, a1, 6
	sgtz	x9, a1
	regsw_c	x1, 0x480(x27)		# 110110000110010000000
	neg	x9, x9
	and	x9, x9, a1
	li	a1, 255
	sraiw	x10, x8, 1
	blt	x9, a1, .LBB12_12
# %bb.11:
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	li	x9, 255
.LBB12_12:
	regsw_c	x11, 0x6c4(x27)		# 110110101111011000100
	srai	x8, x2, 1
	srai	x4, x4, 1
	subw	x3, t1, x3
	subw	x2, x10, x5
	subw	t1, x7, x6
	sraiw	t1, t1, 6
	sgtz	x5, t1
	regsw_c	x2, 0x400(x27)		# 110110001010000000000
	neg	x5, x5
	and	x5, x5, t1
	sw	x9, 0(a0)
	blt	x5, a1, .LBB12_14
# %bb.13:
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	li	x5, 255
.LBB12_14:
	subw	t1, t2, t3
	regsw_c	x6, 0x444(x8)		# 010000011010001000100
	subw	t2, x8, t4
	subw	t3, t5, t6
	subw	t4, x4, x1
	addi	t5, x3, 32
	add	t6, t5, x2
	sraiw	t6, t6, 6
	sgtz	x1, t6
	regsw_c	x2, 0x0(x25)		# 110010001000000000000
	neg	x1, x1
	and	t6, x1, t6
	sw	x5, 192(a0)
	blt	t6, a1, .LBB12_16
# %bb.15:
	li	t6, 255
.LBB12_16:
	add	a5, a6, a5
	add	t0, t0, a7
	add	a6, t2, t1
	add	a7, t4, t3
	regsw_c	x9, 0x480(x4)		# 001000100110010000000
	subw	t5, t5, x2
	sraiw	t5, t5, 6
	sgtz	x1, t5
	neg	x1, x1
	and	t5, x1, t5
	sw	t6, 64(a0)
	blt	t5, a1, .LBB12_18
# %bb.17:
	li	t5, 255
.LBB12_18:
	sw	t5, 128(a0)
	add	t6, a6, a5
	sraiw	t5, a7, 1
	add	t5, t5, t0
	addi	t6, t6, 32
	regsw_c	x11, 0x5c2(x19)		# 100110101110111000010
	add	x1, t6, t5
	sraiw	x1, x1, 6
	sgtz	x2, x1
	neg	x2, x2
	and	x1, x2, x1
	sraiw	t0, t0, 1
	blt	x1, a1, .LBB12_20
# %bb.19:
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	li	x1, 255
.LBB12_20:
	subw	a5, a5, a6
	subw	a6, t0, a7
	subw	t6, t6, t5
	sraiw	a7, t6, 6
	sgtz	t0, a7
	neg	t0, t0
	and	t5, t0, a7
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	sw	x1, 4(a0)
	blt	t5, a1, .LBB12_22
# %bb.21:
	li	t5, 255
.LBB12_22:
	addi	a7, a5, 32
	add	a5, a7, a6
	sraiw	a5, a5, 6
	sgtz	t0, a5
	neg	t0, t0
	and	t0, t0, a5
	sw	t5, 196(a0)
	blt	t0, a1, .LBB12_24
# %bb.23:
	li	t0, 255
.LBB12_24:
	subw	a5, t1, t2
	subw	t3, t3, t4
	subw	a6, a7, a6
	sraiw	a6, a6, 6
	sgtz	a7, a6
	neg	a7, a7
	and	a7, a7, a6
	sw	t0, 68(a0)
	blt	a7, a1, .LBB12_26
# %bb.25:
	li	a7, 255
.LBB12_26:
	lw	a6, 8(a0)
	sw	a7, 132(a0)
	add	t0, a5, a6
	sraiw	a7, t3, 1
	add	a7, a7, a4
	addi	t0, t0, 32
	add	t1, t0, a7
	sraiw	t1, t1, 6
	sgtz	t2, t1
	neg	t2, t2
	and	t1, t2, t1
	sraiw	a4, a4, 1
	blt	t1, a1, .LBB12_28
# %bb.27:
	li	t1, 255
.LBB12_28:
	subw	a5, a6, a5
	subw	a4, a4, t3
	subw	a6, t0, a7
	sraiw	a6, a6, 6
	sgtz	a7, a6
	neg	a7, a7
	and	a6, a7, a6
	sw	t1, 8(a0)
	blt	a6, a1, .LBB12_30
# %bb.29:
	li	a6, 255
.LBB12_30:
	addi	a5, a5, 32
	add	a7, a5, a4
	sraiw	a7, a7, 6
	sgtz	t0, a7
	neg	t0, t0
	and	a7, t0, a7
	sw	a6, 200(a0)
	blt	a7, a1, .LBB12_32
# %bb.31:
	li	a7, 255
.LBB12_32:
	subw	a2, a2, a3
	subw	a5, a5, a4
	sraiw	a3, a5, 6
	sgtz	a4, a3
	neg	a5, a4
	and	a5, a5, a3
	sw	a7, 72(a0)
	blt	a5, a1, .LBB12_34
# %bb.33:
	li	a5, 255
.LBB12_34:
	lw	a3, 12(a0)
	lw	a4, 140(a0)
	lw	t0, 76(a0)
	sw	a5, 136(a0)
	add	a6, a4, a3
	sraiw	a5, a2, 1
	add	a5, a5, t0
	addi	a6, a6, 32
	add	a7, a6, a5
	sraiw	a7, a7, 6
	sgtz	t1, a7
	neg	t1, t1
	and	a7, t1, a7
	srli	t0, t0, 1
	blt	a7, a1, .LBB12_36
# %bb.35:
	li	a7, 255
.LBB12_36:
	subw	a3, a3, a4
	subw	a2, t0, a2
	subw	a4, a6, a5
	sraiw	a4, a4, 6
	sgtz	a5, a4
	neg	a5, a5
	and	a4, a5, a4
	sw	a7, 12(a0)
	blt	a4, a1, .LBB12_38
# %bb.37:
	li	a4, 255
.LBB12_38:
	addi	a3, a3, 32
	add	a5, a3, a2
	sraiw	a5, a5, 6
	sgtz	a6, a5
	neg	a6, a6
	and	a5, a6, a5
	sw	a4, 204(a0)
	blt	a5, a1, .LBB12_40
# %bb.39:
	li	a5, 255
.LBB12_40:
	subw	a3, a3, a2
	sraiw	a2, a3, 6
	sgtz	a3, a2
	neg	a3, a3
	and	a2, a3, a2
	sw	a5, 76(a0)
	blt	a2, a1, .LBB12_42
# %bb.41:
	li	a2, 255
.LBB12_42:
	sw	a2, 140(a0)
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 3
	addiw	a1, a1, 824
	lui	a2, %hi(enc_picture)
	ld	a2, %lo(enc_picture)(a2)
	add	a1, a0, a1
	lui	a3, 2
	lw	a4, 152(a0)
	add	a2, a2, a3
	lw	a0, 156(a0)
	ld	a2, -1768(a2)
	ld	a3, 32(sp)                      # 8-byte Folded Reload
	addw	a3, a4, a3
	lh	a5, 0(a1)
	ld	a6, 40(sp)                      # 8-byte Folded Reload
	addw	a0, a0, a6
	slli	a6, a0, 3
	add	a6, a2, a6
	ld	a6, 0(a6)
	slli	a3, a3, 1
	addiw	a7, a0, 1
	slli	a7, a7, 3
	add	a7, a2, a7
	ld	a7, 0(a7)
	lh	t0, 64(a1)
	add	t1, a6, a3
	sh	a5, 0(t1)
	add	a5, a7, a3
	sh	t0, 0(a5)
	lh	a5, 128(a1)
	addiw	t0, a0, 2
	slli	t0, t0, 3
	add	t0, a2, t0
	ld	t0, 0(t0)
	addiw	a0, a0, 3
	slli	a0, a0, 3
	add	a0, a2, a0
	ld	a0, 0(a0)
	lh	a2, 192(a1)
	add	t1, t0, a3
	sh	a5, 0(t1)
	add	a3, a0, a3
	sh	a2, 0(a3)
	ld	a2, 8(sp)                       # 8-byte Folded Reload
	addw	a2, a2, a4
	lh	a3, 4(a1)
	slli	a2, a2, 1
	add	a5, a6, a2
	lh	t1, 68(a1)
	sh	a3, 0(a5)
	add	a3, a7, a2
	lh	a5, 132(a1)
	sh	t1, 0(a3)
	lh	a3, 196(a1)
	add	t1, t0, a2
	sh	a5, 0(t1)
	add	a2, a0, a2
	sh	a3, 0(a2)
	ld	a2, 16(sp)                      # 8-byte Folded Reload
	addw	a2, a2, a4
	lh	a3, 8(a1)
	slli	a2, a2, 1
	add	a5, a6, a2
	lh	t1, 72(a1)
	sh	a3, 0(a5)
	add	a3, a7, a2
	lh	a5, 136(a1)
	sh	t1, 0(a3)
	lh	a3, 200(a1)
	add	t1, t0, a2
	sh	a5, 0(t1)
	add	a2, a0, a2
	sh	a3, 0(a2)
	ld	a2, 24(sp)                      # 8-byte Folded Reload
	addw	a2, a2, a4
	lh	a3, 12(a1)
	slli	a2, a2, 1
	add	a6, a6, a2
	lh	a4, 76(a1)
	sh	a3, 0(a6)
	add	a7, a7, a2
	lh	a3, 140(a1)
	sh	a4, 0(a7)
	lh	a1, 204(a1)
	add	t0, t0, a2
	sh	a3, 0(t0)
	add	a0, a0, a2
	sh	a1, 0(a0)
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	ld	ra, 296(sp)                     # 8-byte Folded Reload
	ld	s0, 288(sp)                     # 8-byte Folded Reload
	ld	s1, 280(sp)                     # 8-byte Folded Reload
	ld	s2, 272(sp)                     # 8-byte Folded Reload
	ld	s3, 264(sp)                     # 8-byte Folded Reload
	ld	s4, 256(sp)                     # 8-byte Folded Reload
	ld	s5, 248(sp)                     # 8-byte Folded Reload
	ld	s6, 240(sp)                     # 8-byte Folded Reload
	ld	s7, 232(sp)                     # 8-byte Folded Reload
	ld	s8, 224(sp)                     # 8-byte Folded Reload
	ld	s9, 216(sp)                     # 8-byte Folded Reload
	ld	s10, 208(sp)                    # 8-byte Folded Reload
	ld	s11, 200(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 304
	ret
.Lfunc_end12:
	.size	dct_luma_sp2, .Lfunc_end12-dct_luma_sp2
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	dct_chroma_sp2                  # -- Begin function dct_chroma_sp2
	.p2align	2
	.type	dct_chroma_sp2,@function
dct_chroma_sp2:                         # @dct_chroma_sp2
# %bb.0:
	addi	sp, sp, -512
	sd	ra, 504(sp)                     # 8-byte Folded Spill
	sd	s0, 496(sp)                     # 8-byte Folded Spill
	sd	s1, 488(sp)                     # 8-byte Folded Spill
	sd	s2, 480(sp)                     # 8-byte Folded Spill
	sd	s3, 472(sp)                     # 8-byte Folded Spill
	sd	s4, 464(sp)                     # 8-byte Folded Spill
	sd	s5, 456(sp)                     # 8-byte Folded Spill
	sd	s6, 448(sp)                     # 8-byte Folded Spill
	sd	s7, 440(sp)                     # 8-byte Folded Spill
	sd	s8, 432(sp)                     # 8-byte Folded Spill
	sd	s9, 424(sp)                     # 8-byte Folded Spill
	sd	s10, 416(sp)                    # 8-byte Folded Spill
	sd	s11, 408(sp)                    # 8-byte Folded Spill
	lui	a2, %hi(img)
	regsw_c	x0, 0x400(x16)		# 100000000010000000000
	ld	x5, %lo(img)(a2)
	lui	a2, 3
	addiw	a2, a2, 326
	add	a2, x5, a2
	ld	a3, 1530(a2)
	slli	a4, a0, 3
	sd	a4, 40(sp)                      # 8-byte Folded Spill
	add	a3, a3, a4
	regsw_c	x0, 0x480(x24)		# 110000000010010000000
	lw	x3, 44(x5)
	ld	a3, 8(a3)
	lui	a6, 8
	add	a6, x5, a6
	bltz	x3, .LBB13_2
# %bb.1:
	lui	a4, %hi(QP_SCALE_CR)
	addi	a4, a4, %lo(QP_SCALE_CR)
	regsw_c	x0, 0x500(x6)		# 001100000010100000000
	add	a4, a4, x3
	lbu	x3, 0(a4)
	li	a4, 171
	mul	a4, x3, a4
	srli	x8, a4, 10
	j	.LBB13_3
.LBB13_2:
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	negw	a4, x3
	slli	a4, a4, 32
	lui	a5, 699051
	addi	a5, a5, -1365
	slli	a5, a5, 32
	mulhu	a4, a4, a5
	srli	a4, a4, 34
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	neg	x8, a4
.LBB13_3:
	sd	a1, 8(sp)                       # 8-byte Folded Spill
	regsw_c	x0, 0x80(x16)		# 100000000000010000000
	li	x6, 0
	addi	t3, sp, 376
	ld	a1, -1192(a6)
	sd	a1, 136(sp)                     # 8-byte Folded Spill
	lw	a1, 12(x5)
	sd	a1, 112(sp)                     # 8-byte Folded Spill
	ld	a1, 0(a3)
	sd	a1, 72(sp)                      # 8-byte Folded Spill
	ld	a1, 8(a3)
	sd	a1, 64(sp)                      # 8-byte Folded Spill
	addi	a3, sp, 168
	regsw_c	x8, 0x104(x16)		# 100000100000100000100
	addi	x2, sp, 248
	addi	a4, sp, 264
	addi	x13, sp, 184
	addi	a5, sp, 200
	addi	x4, sp, 216
	addi	a6, sp, 232
	addi	x1, sp, 280
	addi	a7, sp, 296
	addi	t0, sp, 392
	addi	t6, sp, 312
	addi	t1, sp, 328
	addi	t5, sp, 344
	addi	t2, sp, 360
	lui	t4, %hi(lrec_uv)
	regsw_c	x28, 0x48(x16)		# 100001110000001001000
	ld	x7, %lo(lrec_uv)(t4)
	sd	x8, 144(sp)                     # 8-byte Folded Spill
	addi	x8, x8, 15
	li	t4, 1
	sd	x8, 128(sp)                     # 8-byte Folded Spill
	sllw	t4, t4, x8
	ld	a1, 40(sp)                      # 8-byte Folded Reload
	regsw_c	x9, 0x120(x27)		# 110110100100100100000
	add	x7, x7, a1
	ld	x7, 0(x7)
	addi	x8, sp, 280
	addi	x9, a2, 526
	li	x10, 8
	mv	x11, a2
.LBB13_4:                               # =>This Inner Loop Header: Depth=1
	regsw_c	x29, 0x7be(x25)		# 110011110111110111110
	lhu	x12, -14(x11)
	sw	x12, -128(x8)
	lw	x12, 164(x5)
	add	x12, x6, x12
	slli	x12, x12, 3
	add	x12, x7, x12
	lw	x14, 160(x5)
	regsw_c	x15, 0x59b(x27)		# 110110111110110011011
	ld	x12, 0(x12)
	slli	x14, x14, 2
	add	x12, x12, x14
	lw	x12, 0(x12)
	lhu	x14, -12(x11)
	sw	x12, -28(x9)
	sw	x14, -96(x8)
	regsw_c	x29, 0x7b6(x27)		# 110111110111110110110
	lw	x12, 164(x5)
	add	x12, x6, x12
	slli	x12, x12, 3
	add	x12, x7, x12
	lw	x14, 160(x5)
	ld	x12, 0(x12)
	slli	x14, x14, 2
	regsw_c	x12, 0x6f7(x31)		# 111110110011011110111
	add	x12, x12, x14
	lw	x12, 4(x12)
	lhu	x14, -10(x11)
	sw	x12, -24(x9)
	sw	x14, -64(x8)
	lw	x12, 164(x5)
	add	x12, x6, x12
	regsw_c	x29, 0x5be(x27)		# 110111110110110111110
	slli	x12, x12, 3
	add	x12, x7, x12
	lw	x14, 160(x5)
	ld	x12, 0(x12)
	slli	x14, x14, 2
	add	x12, x12, x14
	lw	x12, 8(x12)
	regsw_c	x23, 0x5f7(x25)		# 110011011110111110111
	lhu	x14, -8(x11)
	sw	x12, -20(x9)
	sw	x14, -32(x8)
	lw	x12, 164(x5)
	add	x12, x6, x12
	slli	x12, x12, 3
	add	x12, x7, x12
	regsw_c	x13, 0x7b3(x27)		# 110110110111110110011
	lw	x14, 160(x5)
	ld	x12, 0(x12)
	slli	x14, x14, 2
	add	x12, x12, x14
	lw	x12, 12(x12)
	lhu	x14, -6(x11)
	sw	x12, -16(x9)
	regsw_c	x15, 0x5f6(x15)		# 011110111110111110110
	sw	x14, 0(x8)
	lw	x12, 164(x5)
	add	x12, x6, x12
	slli	x12, x12, 3
	add	x12, x7, x12
	lw	x14, 160(x5)
	ld	x12, 0(x12)
	regsw_c	x29, 0x4de(x27)		# 110111110110011011110
	slli	x14, x14, 2
	add	x12, x12, x14
	lw	x12, 16(x12)
	lhu	x14, -4(x11)
	sw	x12, -12(x9)
	sw	x14, 32(x8)
	lw	x12, 164(x5)
	regsw_c	x15, 0x5b7(x31)		# 111110111110110110111
	add	x12, x6, x12
	slli	x12, x12, 3
	add	x12, x7, x12
	lw	x14, 160(x5)
	ld	x12, 0(x12)
	slli	x14, x14, 2
	add	x12, x12, x14
	regsw_c	x6, 0x7be(x27)		# 110110011011110111110
	lw	x12, 20(x12)
	lhu	x14, -2(x11)
	sw	x12, -8(x9)
	sw	x14, 64(x8)
	lw	x12, 164(x5)
	add	x12, x6, x12
	slli	x12, x12, 3
	regsw_c	x13, 0x5f6(x31)		# 111110110110111110110
	add	x12, x7, x12
	lw	x14, 160(x5)
	ld	x12, 0(x12)
	slli	x14, x14, 2
	add	x12, x12, x14
	lw	x12, 24(x12)
	lhu	x14, 0(x11)
	regsw_c	x29, 0x7be(x13)		# 011011110111110111110
	sw	x12, -4(x9)
	sw	x14, 96(x8)
	lw	x12, 164(x5)
	add	x12, x6, x12
	slli	x12, x12, 3
	add	x12, x7, x12
	lw	x14, 160(x5)
	regsw_c	x15, 0x4f6(x27)		# 110110111110011110110
	ld	x12, 0(x12)
	slli	x14, x14, 2
	add	x12, x12, x14
	lw	x12, 28(x12)
	sw	x12, 0(x9)
	addi	x6, x6, 1
	addi	x11, x11, 32
	regsw_c	x6, 0x0(x27)		# 110110011000000000000
	addi	x8, x8, 4
	addi	x9, x9, 64
	bne	x6, x10, .LBB13_4
# %bb.5:
	regsw_c	x13, 0x7b7(x18)		# 100100110111110110111
	li	x15, 0
	lui	x5, 174763
	addiw	x5, x5, -1365
	mul	x5, x3, x5
	srli	x6, x5, 63
	srli	x5, x5, 32
	add	x5, x5, x6
	regsw_c	x31, 0x124(x19)		# 100111111100100100100
	li	x6, 6
	mul	x5, x5, x6
	subw	x3, x3, x5
	addi	x5, sp, 152
	li	x14, 1
	addi	x6, sp, 248
	addi	x7, sp, 184
	addi	s0, sp, 216
	regsw_c	x9, 0x100(x18)		# 100100100100100000000
	addi	x9, sp, 280
	addi	x10, sp, 376
	addi	x11, sp, 312
	addi	x12, sp, 344
	addi	x19, sp, 152
.LBB13_6:                               # =>This Inner Loop Header: Depth=1
	regsw_c	x13, 0x5bf(x27)		# 110110110110110111111
	lw	x16, 0(x19)
	lw	x17, 0(x2)
	lw	x18, 0(x13)
	lw	x20, 0(x4)
	slli	x21, x15, 2
	add	x15, x17, x16
	subw	x16, x16, x17
	regsw_c	x31, 0x6f6(x31)		# 111111111111011110110
	add	x17, x20, x18
	subw	x20, x18, x20
	add	x22, x17, x15
	subw	x15, x15, x17
	sw	x15, 0(x4)
	slli	x17, x16, 1
	slli	x15, x20, 1
	regsw_c	x29, 0x7be(x29)		# 111011110111110111110
	subw	x15, x16, x15
	sw	x15, 0(x2)
	addi	x15, x21, 4
	add	x23, x5, x15
	lw	x16, 0(x23)
	add	x18, x6, x15
	lw	x24, 0(x18)
	regsw_c	x11, 0x5ff(x31)		# 111110101110111111111
	add	x25, x7, x15
	lw	x26, 0(x25)
	add	x27, s0, x15
	lw	x28, 0(x27)
	add	x20, x17, x20
	add	x17, x24, x16
	subw	x24, x16, x24
	regsw_c	x31, 0x7be(x31)		# 111111111111110111110
	add	x16, x28, x26
	subw	x26, x26, x28
	add	x28, x16, x17
	subw	x29, x17, x16
	slli	x16, x24, 1
	add	x30, x16, x26
	slli	x26, x26, 1
	regsw_c	x28, 0x618(x27)		# 110111110011000011000
	addi	x16, x21, 8
	add	x31, x5, x16
	lw	x17, 0(x31)
	add	s1, x6, x16
	lw	s2, 0(s1)
	add	s3, x7, x16
	lw	s4, 0(s3)
	regsw_c	x15, 0x2a0(x4)		# 001000111101010100000
	add	s5, s0, x16
	lw	s6, 0(s5)
	subw	x24, x24, x26
	add	x26, s2, x17
	subw	s2, x17, s2
	add	x17, s6, s4
	subw	s4, s4, s6
	regsw_c	x24, 0x437(x15)		# 011111100010000110111
	add	s6, x17, x26
	subw	x26, x26, x17
	slli	x17, s2, 1
	add	s7, x17, s4
	slli	s4, s4, 1
	addi	x17, x21, 12
	add	x21, x5, x17
	regsw_c	x16, 0x62a(x9)		# 010011000011000101010
	lw	s8, 0(x21)
	add	s9, x6, x17
	lw	s10, 0(s9)
	add	s11, x7, x17
	lw	ra, 0(s11)
	add	x8, s0, x17
	lw	a1, 0(x8)
	subw	s2, s2, s4
	add	s4, s10, s8
	subw	s8, s8, s10
	add	s10, a1, ra
	subw	a1, ra, a1
	add	ra, s10, s4
	subw	s4, s4, s10
	slli	s10, s8, 1
	add	s10, s10, a1
	slli	a1, a1, 1
	subw	a1, s8, a1
	regsw_c	x3, 0x414(x7)		# 001110001110000010100
	add	s8, ra, x22
	subw	x22, x22, ra
	add	ra, s6, x28
	subw	x28, x28, s6
	add	s6, ra, s8
	sw	s6, 0(x19)
	subw	x19, s8, ra
	regsw_c	x14, 0x7bb(x15)		# 011110111011110111011
	sw	x19, 0(x31)
	slli	x19, x22, 1
	add	x19, x19, x28
	sw	x19, 0(x23)
	slli	x28, x28, 1
	subw	x19, x22, x28
	sw	x19, 0(x21)
	regsw_c	x11, 0x5df(x23)		# 101110101110111011111
	add	x19, s10, x20
	subw	x20, x20, s10
	add	x21, s7, x30
	subw	x22, x30, s7
	add	x23, x21, x19
	sw	x23, 0(x13)
	subw	x13, x19, x21
	regsw_c	x14, 0x7b7(x7)		# 001110111011110110111
	sw	x13, 0(s3)
	slli	x13, x20, 1
	add	x13, x13, x22
	sw	x13, 0(x25)
	lw	x13, 0(x4)
	slli	x22, x22, 1
	subw	x19, x20, x22
	regsw_c	x29, 0x7fb(x6)		# 001101110111111111011
	sw	x19, 0(s11)
	add	x19, s4, x13
	subw	x13, x13, s4
	add	x20, x26, x29
	subw	x21, x29, x26
	add	x22, x20, x19
	sw	x22, 0(x4)
	regsw_c	x29, 0x6f6(x28)		# 111001110111011110110
	subw	x4, x19, x20
	sw	x4, 0(s5)
	slli	x4, x13, 1
	add	x4, x4, x21
	sw	x4, 0(x27)
	lw	x4, 0(x2)
	slli	x21, x21, 1
	regsw_c	x26, 0x577(x29)		# 111011101010101110111
	subw	x13, x13, x21
	sw	x13, 0(x8)
	add	x8, a1, x4
	subw	a1, x4, a1
	add	x4, s2, x24
	subw	x13, x24, s2
	add	x19, x4, x8
	regsw_c	x19, 0x1de(x15)		# 011111001100111011110
	sw	x19, 0(x2)
	subw	x2, x8, x4
	sw	x2, 0(s1)
	slli	x2, a1, 1
	add	x2, x2, x13
	sw	x2, 0(x18)
	slli	x13, x13, 1
	regsw_c	x9, 0x103(x7)		# 001110100100100000011
	subw	a1, a1, x13
	lw	x2, 0(x1)
	lw	x4, 0(t3)
	lw	x8, 0(t6)
	lw	x13, 0(t5)
	sw	a1, 0(s9)
	add	a1, x4, x2
	regsw_c	x31, 0x442(x31)		# 111111111110001000010
	subw	x2, x2, x4
	add	x4, x13, x8
	subw	x8, x8, x13
	add	x13, x4, a1
	subw	a1, a1, x4
	sw	a1, 0(t5)
	slli	a1, x2, 1
	regsw_c	x19, 0x7be(x27)		# 110111001111110111110
	slli	x4, x8, 1
	subw	x2, x2, x4
	sw	x2, 0(t3)
	add	x4, x9, x15
	lw	x18, 0(x4)
	add	x2, x10, x15
	lw	x19, 0(x2)
	regsw_c	x15, 0x47f(x31)		# 111110111110001111111
	add	x20, x11, x15
	lw	x21, 0(x20)
	add	x15, x12, x15
	lw	x22, 0(x15)
	add	a1, a1, x8
	add	x8, x19, x18
	subw	x18, x18, x19
	regsw_c	x31, 0x7be(x31)		# 111111111111110111110
	add	x19, x22, x21
	subw	x21, x21, x22
	add	x22, x19, x8
	subw	x8, x8, x19
	slli	x19, x18, 1
	add	x19, x19, x21
	slli	x21, x21, 1
	regsw_c	x15, 0x5f7(x31)		# 111110111110111110111
	add	x23, x9, x16
	lw	x24, 0(x23)
	add	x25, x10, x16
	lw	x26, 0(x25)
	add	x27, x11, x16
	lw	x28, 0(x27)
	add	x16, x12, x16
	regsw_c	x31, 0x7ff(x27)		# 110111111111111111111
	lw	x29, 0(x16)
	subw	x18, x18, x21
	add	x21, x26, x24
	subw	x24, x24, x26
	add	x26, x29, x28
	subw	x28, x28, x29
	add	x29, x26, x21
	regsw_c	x15, 0x5f3(x31)		# 111110111110111110011
	subw	x21, x21, x26
	slli	x26, x24, 1
	add	x26, x26, x28
	slli	x28, x28, 1
	add	x30, x9, x17
	lw	x31, 0(x30)
	add	s1, x10, x17
	lw	s2, 0(s1)
	regsw_c	x14, 0x5ee(x12)		# 011000111010111101110
	add	s3, x11, x17
	lw	s4, 0(s3)
	add	x17, x12, x17
	lw	s5, 0(x17)
	subw	x24, x24, x28
	add	x28, s2, x31
	subw	x31, x31, s2
	add	s2, s5, s4
	subw	s4, s4, s5
	regsw_c	x4, 0x31(x7)		# 001110010000000110001
	add	s5, s2, x28
	subw	x28, x28, s2
	slli	s2, x31, 1
	add	s2, s2, s4
	slli	s4, s4, 1
	subw	x31, x31, s4
	add	s4, s5, x13
	regsw_c	x31, 0xe3(x25)		# 110011111100011100011
	subw	x13, x13, s5
	add	s5, x29, x22
	subw	x22, x22, x29
	add	x29, s5, s4
	sw	x29, 0(x1)
	subw	x1, s4, s5
	sw	x1, 0(x23)
	regsw_c	x23, 0x5dc(x27)		# 110111011110111011100
	slli	x1, x13, 1
	add	x1, x1, x22
	sw	x1, 0(x4)
	slli	x22, x22, 1
	subw	x1, x13, x22
	sw	x1, 0(x30)
	add	x1, s2, a1
	subw	a1, a1, s2
	regsw_c	x30, 0x2d0(x31)		# 111111111001011010000
	add	x4, x26, x19
	subw	x13, x19, x26
	add	x19, x4, x1
	sw	x19, 0(t6)
	subw	t6, x1, x4
	sw	t6, 0(x27)
	slli	t6, a1, 1
	regsw_c	x1, 0x442(x5)		# 001010000110001000010
	add	t6, t6, x13
	sw	t6, 0(x20)
	lw	t6, 0(t5)
	slli	x13, x13, 1
	subw	a1, a1, x13
	sw	a1, 0(s3)
	add	a1, x28, t6
	regsw_c	x31, 0x44a(x7)		# 001111111110001001010
	subw	t6, t6, x28
	add	x1, x21, x8
	subw	x4, x8, x21
	add	x8, x1, a1
	sw	x8, 0(t5)
	subw	a1, a1, x1
	sw	a1, 0(x16)
	slli	a1, t6, 1
	regsw_c	x1, 0x452(x5)		# 001010000110001010010
	add	a1, a1, x4
	sw	a1, 0(x15)
	lw	a1, 0(t3)
	slli	x4, x4, 1
	subw	t5, t6, x4
	sw	t5, 0(x17)
	add	t5, x31, a1
	regsw_c	x31, 0x42(x5)		# 001011111100001000010
	subw	a1, a1, x31
	add	t6, x24, x18
	subw	x1, x18, x24
	add	x4, t6, t5
	sw	x4, 0(t3)
	subw	t5, t5, t6
	sw	t5, 0(x25)
	slli	t3, a1, 1
	regsw_c	x12, 0x214(x5)		# 001010110001000010100
	add	t3, t3, x1
	sw	t3, 0(x2)
	slli	x1, x1, 1
	subw	a1, a1, x1
	sw	a1, 0(s1)
	andi	a1, x14, 1
	li	x15, 4
	regsw_c	x9, 0x100(x18)		# 100100100100100000000
	mv	x19, a3
	mv	x2, a4
	mv	x13, a5
	mv	x4, a6
	mv	x1, a7
	mv	t3, t0
	mv	t6, t1
	mv	t5, t2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	li	x14, 0
	bnez	a1, .LBB13_6
# %bb.7:
	srliw	a1, t4, 31
	add	t4, t4, a1
	lw	s0, 498(a2)
	lw	s10, 754(a2)
	lw	s2, 152(sp)
	lw	a1, 280(sp)
	lw	a3, 168(sp)
	lw	s7, 296(sp)
	lw	a4, 514(a2)
	sd	a4, 16(sp)                      # 8-byte Folded Spill
	lw	a2, 770(a2)
	sd	a2, 24(sp)                      # 8-byte Folded Spill
	add	s11, a1, s2
	add	s6, s7, a3
	addw	s3, s6, s11
	add	a2, s2, a3
	add	a4, a1, s7
	subw	s1, a2, a4
	add	a1, a1, a3
	sd	a1, 104(sp)                     # 8-byte Folded Spill
	regsw_c	x0, 0x200(x24)		# 110000000001000000000
	slli	x3, x3, 6
	lui	a1, %hi(quant_coef)
	addi	a1, a1, %lo(quant_coef)
	add	a1, a1, x3
	sd	a1, 120(sp)                     # 8-byte Folded Spill
	lw	a2, 0(a1)
	sd	t4, 32(sp)                      # 8-byte Folded Spill
	andi	t4, t4, -2
	ld	a1, 144(sp)                     # 8-byte Folded Reload
	addi	a3, a1, 16
	slli	a1, a0, 2
	lui	a0, 240
	sd	a1, 48(sp)                      # 8-byte Folded Spill
	sllw	s9, a0, a1
	li	a0, 528
	ld	a1, 112(sp)                     # 8-byte Folded Reload
	mul	a0, a1, a0
	ld	s8, 136(sp)                     # 8-byte Folded Reload
	add	s8, s8, a0
	lui	a0, %hi(dequant_coef)
	addi	a0, a0, %lo(dequant_coef)
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	add	a0, a0, x3
	sd	a0, 136(sp)                     # 8-byte Folded Spill
	sraiw	a0, s3, 31
	xor	a1, s3, a0
	subw	a1, a1, a0
	sd	a2, 112(sp)                     # 8-byte Folded Spill
	mul	a0, a1, a2
	sd	t4, 96(sp)                      # 8-byte Folded Spill
	add	a0, a0, t4
	sd	a3, 88(sp)                      # 8-byte Folded Spill
	sraw	s4, a0, a3
	mv	a0, s4
	mv	a1, s3
	call	sign
	subw	s5, s0, a0
	sd	s8, 80(sp)                      # 8-byte Folded Spill
	sd	s9, 56(sp)                      # 8-byte Folded Spill
	bne	s0, a0, .LBB13_9
# %bb.8:
	li	s8, 0
	li	s0, 1
	j	.LBB13_12
.LBB13_9:
	ld	a1, 368(s8)
	sraiw	a0, s5, 31
	xor	a2, s5, a0
	subw	a0, a2, a0
	or	a1, a1, s9
	sd	a1, 368(s8)
	li	s8, 1
	ld	a1, 8(sp)                       # 8-byte Folded Reload
	bgtz	a1, .LBB13_11
# %bb.10:
	li	a1, 1
	sd	a1, 8(sp)                       # 8-byte Folded Spill
.LBB13_11:
	mv	a1, s5
	call	sign
	li	s0, 0
	ld	a1, 72(sp)                      # 8-byte Folded Reload
	sw	a0, 0(a1)
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	sw	zero, 0(a0)
.LBB13_12:
	ld	a0, 104(sp)                     # 8-byte Folded Reload
	subw	s9, s2, a0
	subw	s2, s11, s6
	mv	a0, s4
	mv	a1, s3
	call	sign
	add	s3, a0, s5
	ld	a0, 136(sp)                     # 8-byte Folded Reload
	lw	a0, 0(a0)
	sd	a0, 104(sp)                     # 8-byte Folded Spill
	sraiw	a0, s1, 31
	xor	a1, s1, a0
	subw	a1, a1, a0
	ld	a0, 112(sp)                     # 8-byte Folded Reload
	mul	a0, a1, a0
	ld	a1, 96(sp)                      # 8-byte Folded Reload
	add	a0, a0, a1
	ld	a1, 88(sp)                      # 8-byte Folded Reload
	sraw	s4, a0, a1
	mv	a0, s4
	mv	a1, s1
	call	sign
	subw	s5, s10, a0
	bne	s10, a0, .LBB13_14
# %bb.13:
	ld	s10, 8(sp)                      # 8-byte Folded Reload
	j	.LBB13_17
.LBB13_14:
	ld	a3, 80(sp)                      # 8-byte Folded Reload
	ld	a1, 368(a3)
	sraiw	a0, s5, 31
	xor	a2, s5, a0
	subw	a0, a2, a0
	ld	a2, 56(sp)                      # 8-byte Folded Reload
	or	a1, a1, a2
	sd	a1, 368(a3)
	ld	s10, 8(sp)                      # 8-byte Folded Reload
	bgtz	s10, .LBB13_16
# %bb.15:
	li	s10, 1
.LBB13_16:
	mv	a1, s5
	call	sign
	slli	a1, s8, 2
	ld	a2, 72(sp)                      # 8-byte Folded Reload
	add	a2, a2, a1
	sw	a0, 0(a2)
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	add	a1, a0, a1
	sw	s0, 0(a1)
	addi	s8, s8, 1
	li	s0, -1
.LBB13_17:
	ld	s11, 104(sp)                    # 8-byte Folded Reload
	mul	s6, s3, s11
	addw	s3, s9, s7
	mv	a0, s4
	mv	a1, s1
	call	sign
	add	a0, a0, s5
	mul	s7, a0, s11
	addi	s5, s0, 1
	sraiw	a0, s2, 31
	xor	a1, s2, a0
	subw	a1, a1, a0
	ld	a0, 112(sp)                     # 8-byte Folded Reload
	mul	a0, a1, a0
	ld	a1, 96(sp)                      # 8-byte Folded Reload
	add	a0, a0, a1
	ld	a1, 88(sp)                      # 8-byte Folded Reload
	sraw	s1, a0, a1
	mv	a0, s1
	mv	a1, s2
	call	sign
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	subw	s4, a1, a0
	bne	a1, a0, .LBB13_19
# %bb.18:
	ld	s9, 56(sp)                      # 8-byte Folded Reload
	j	.LBB13_22
.LBB13_19:
	ld	a3, 80(sp)                      # 8-byte Folded Reload
	ld	a1, 368(a3)
	sraiw	a0, s4, 31
	xor	a2, s4, a0
	subw	a0, a2, a0
	ld	s9, 56(sp)                      # 8-byte Folded Reload
	or	a1, a1, s9
	sd	a1, 368(a3)
	bgtz	s10, .LBB13_21
# %bb.20:
	li	s10, 1
.LBB13_21:
	mv	a1, s4
	call	sign
	slli	a1, s8, 2
	ld	a2, 72(sp)                      # 8-byte Folded Reload
	add	a2, a2, a1
	sw	a0, 0(a2)
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	add	a1, a0, a1
	sw	s5, 0(a1)
	addi	s8, s8, 1
	li	s5, -1
.LBB13_22:
	ld	s0, 144(sp)                     # 8-byte Folded Reload
	sllw	s11, s6, s0
	sllw	s6, s7, s0
	mv	a0, s1
	mv	a1, s2
	call	sign
	add	a0, a0, s4
	mv	s4, s0
	ld	a1, 104(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sllw	s0, a0, s0
	sraiw	a0, s3, 31
	xor	a1, s3, a0
	subw	a1, a1, a0
	ld	a0, 112(sp)                     # 8-byte Folded Reload
	mul	a0, a1, a0
	ld	a1, 96(sp)                      # 8-byte Folded Reload
	add	a0, a0, a1
	ld	a1, 88(sp)                      # 8-byte Folded Reload
	sraw	s2, a0, a1
	mv	a0, s2
	mv	a1, s3
	call	sign
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	subw	s1, a1, a0
	bne	a1, a0, .LBB13_24
# %bb.23:
	sd	s10, 8(sp)                      # 8-byte Folded Spill
	ld	s7, 72(sp)                      # 8-byte Folded Reload
	j	.LBB13_27
.LBB13_24:
	addi	s5, s5, 1
	ld	a3, 80(sp)                      # 8-byte Folded Reload
	ld	a1, 368(a3)
	sraiw	a0, s1, 31
	xor	a2, s1, a0
	subw	a0, a2, a0
	or	a1, a1, s9
	sd	a1, 368(a3)
	ld	s7, 72(sp)                      # 8-byte Folded Reload
	bgtz	s10, .LBB13_26
# %bb.25:
	li	s10, 1
.LBB13_26:
	sd	s10, 8(sp)                      # 8-byte Folded Spill
	mv	a1, s1
	call	sign
	slli	a1, s8, 2
	add	a2, s7, a1
	sw	a0, 0(a2)
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	add	a1, a0, a1
	sw	s5, 0(a1)
	addi	s8, s8, 1
.LBB13_27:
	ld	a0, 32(sp)                      # 8-byte Folded Reload
	sraiw	a0, a0, 1
	sd	a0, 112(sp)                     # 8-byte Folded Spill
	mv	a0, s2
	mv	a1, s3
	call	sign
	li	s9, 0
	sd	zero, 72(sp)                    # 8-byte Folded Spill
	add	a0, a0, s1
	ld	a1, 104(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sllw	a0, a0, s4
	slli	s8, s8, 2
	add	s8, s7, s8
	sw	zero, 0(s8)
	add	a2, s6, s11
	add	a3, a0, s0
	add	a1, a3, a2
	srliw	a4, a1, 31
	add	a4, a1, a4
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	sraiw	a4, a4, 1
	lui	a5, 3
	addiw	a5, a5, 824
	sd	a5, 64(sp)                      # 8-byte Folded Spill
	add	a5, a1, a5
	sw	a4, 0(a5)
	add	a4, s11, s0
	add	a6, s6, a0
	subw	a4, a4, a6
	srliw	a6, a4, 31
	add	a4, a4, a6
	sraiw	a4, a4, 1
	sw	a4, 256(a5)
	subw	a2, a2, a3
	srliw	a3, a2, 31
	add	a2, a2, a3
	sraiw	a2, a2, 1
	sw	a2, 16(a5)
	add	s0, s6, s0
	subw	a2, s11, s0
	add	a0, a2, a0
	srliw	a2, a0, 31
	add	a0, a0, a2
	sraiw	a0, a0, 1
	sw	a0, 272(a5)
	ld	a0, 48(sp)                      # 8-byte Folded Reload
	addi	a0, a0, 16
	sd	a0, 32(sp)                      # 8-byte Folded Spill
	lui	a0, 22
	addiw	a0, a0, -696
	sd	a0, 104(sp)                     # 8-byte Folded Spill
	li	a0, 1
	j	.LBB13_29
.LBB13_28:                              #   in Loop: Header=BB13_29 Depth=1
	ld	a2, 88(sp)                      # 8-byte Folded Reload
	slli	a2, a2, 2
	ld	a0, 96(sp)                      # 8-byte Folded Reload
	add	a2, a0, a2
	sw	zero, 0(a2)
	ld	a2, 24(sp)                      # 8-byte Folded Reload
	andi	a2, a2, 1
	li	s9, 4
	li	a0, 0
	beqz	a2, .LBB13_45
.LBB13_29:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_31 Depth 2
                                        #     Child Loop BB13_39 Depth 2
	sd	a0, 24(sp)                      # 8-byte Folded Spill
	lui	a0, 3
	add	a0, a1, a0
	ld	a0, 1848(a0)
	ld	a2, 40(sp)                      # 8-byte Folded Reload
	add	a0, a0, a2
	ld	a0, 32(a0)
	slli	a2, s9, 2
	add	a0, a0, a2
	ld	a0, 0(a0)
	sd	zero, 96(sp)                    # 8-byte Folded Spill
	srli	a3, s9, 1
	ld	a2, 0(a0)
	sd	a2, 56(sp)                      # 8-byte Folded Spill
	ld	a0, 8(a0)
	sd	a0, 88(sp)                      # 8-byte Folded Spill
	ld	a0, 32(sp)                      # 8-byte Folded Reload
	sd	a3, 16(sp)                      # 8-byte Folded Spill
	or	a0, a0, a3
	li	a2, 1
	sllw	a0, a2, a0
	sd	a0, 48(sp)                      # 8-byte Folded Spill
	li	s0, -1
	li	s6, 2
	li	s11, 3
	j	.LBB13_31
.LBB13_30:                              #   in Loop: Header=BB13_31 Depth=2
	mv	a0, s3
	mv	a1, s1
	call	sign
	ld	a1, 136(sp)                     # 8-byte Folded Reload
	add	s4, a1, s4
	add	s4, s4, s8
	lw	a2, 0(s4)
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	add	a0, a0, s2
	mul	a0, a0, a2
	ld	a2, 144(sp)                     # 8-byte Folded Reload
	sllw	a0, a0, a2
	add	s10, a1, s10
	add	s5, s10, s5
	lui	a2, 3
	add	s5, s5, a2
	sw	a0, 824(s5)
	addi	s6, s6, 2
	addi	s11, s11, 2
	li	a0, 32
	beq	s6, a0, .LBB13_37
.LBB13_31:                              #   Parent Loop BB13_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, 104(sp)                     # 8-byte Folded Reload
	add	a0, a1, a0
	lw	a3, 848(a0)
	lui	a2, %hi(FIELD_SCAN)
	addi	a2, a2, %lo(FIELD_SCAN)
	bnez	a3, .LBB13_35
# %bb.32:                               #   in Loop: Header=BB13_31 Depth=2
	lui	a2, %hi(mb_adaptive)
	lw	a2, %lo(mb_adaptive)(a2)
	beqz	a2, .LBB13_34
# %bb.33:                               #   in Loop: Header=BB13_31 Depth=2
	lw	a0, 0(a0)
	lui	a2, %hi(FIELD_SCAN)
	addi	a2, a2, %lo(FIELD_SCAN)
	bnez	a0, .LBB13_35
.LBB13_34:                              #   in Loop: Header=BB13_31 Depth=2
	lui	a2, %hi(SNGL_SCAN)
	addi	a2, a2, %lo(SNGL_SCAN)
.LBB13_35:                              #   in Loop: Header=BB13_31 Depth=2
	add	a0, a2, s6
	add	a2, a2, s11
	lbu	s10, 0(a2)
	lbu	a0, 0(a0)
	add	a2, s9, s10
	slli	a3, a0, 5
	addi	a4, sp, 152
	add	a3, a4, a3
	slli	a2, a2, 2
	add	a2, a3, a2
	lw	s1, 0(a2)
	addi	s0, s0, 1
	sraiw	a2, s1, 31
	xor	a3, s1, a2
	subw	a3, a3, a2
	slli	s4, s10, 4
	ld	a2, 120(sp)                     # 8-byte Folded Reload
	add	a2, a2, s4
	slli	s8, a0, 2
	add	a2, a2, s8
	lw	a2, 0(a2)
	slli	s10, s10, 6
	add	a1, a1, s10
	add	a0, s9, a0
	slli	s5, a0, 2
	add	a1, a1, s5
	lui	a0, 3
	add	a1, a1, a0
	lw	s7, 824(a1)
	mul	a0, a3, a2
	ld	a1, 112(sp)                     # 8-byte Folded Reload
	add	a0, a0, a1
	ld	a1, 128(sp)                     # 8-byte Folded Reload
	sraw	s3, a0, a1
	mv	a0, s3
	mv	a1, s1
	call	sign
	subw	s2, s7, a0
	beq	s7, a0, .LBB13_30
# %bb.36:                               #   in Loop: Header=BB13_31 Depth=2
	ld	a3, 80(sp)                      # 8-byte Folded Reload
	ld	a1, 368(a3)
	sraiw	a0, s2, 31
	xor	a2, s2, a0
	subw	a0, a2, a0
	ld	a2, 48(sp)                      # 8-byte Folded Reload
	or	a1, a1, a2
	sd	a1, 368(a3)
	mv	a1, s2
	call	sign
	ld	a3, 96(sp)                      # 8-byte Folded Reload
	slli	a1, a3, 2
	ld	a2, 56(sp)                      # 8-byte Folded Reload
	add	a2, a2, a1
	sw	a0, 0(a2)
	ld	a0, 88(sp)                      # 8-byte Folded Reload
	add	a1, a0, a1
	sw	s0, 0(a1)
	addiw	a3, a3, 1
	sd	a3, 96(sp)                      # 8-byte Folded Spill
	li	s0, -1
	li	a0, 2
	sd	a0, 72(sp)                      # 8-byte Folded Spill
	j	.LBB13_30
.LBB13_37:                              #   in Loop: Header=BB13_29 Depth=1
	lui	a0, 3
	add	a0, a1, a0
	ld	a0, 1848(a0)
	ld	a2, 40(sp)                      # 8-byte Folded Reload
	add	a0, a0, a2
	ld	a0, 32(a0)
	sd	zero, 88(sp)                    # 8-byte Folded Spill
	ld	a2, 16(sp)                      # 8-byte Folded Reload
	addi	a2, a2, 1
	slli	a3, a2, 3
	add	a0, a0, a3
	ld	a0, 0(a0)
	ld	a3, 96(sp)                      # 8-byte Folded Reload
	slli	a3, a3, 2
	ld	a4, 56(sp)                      # 8-byte Folded Reload
	add	a3, a4, a3
	sw	zero, 0(a3)
	ld	a3, 0(a0)
	sd	a3, 96(sp)                      # 8-byte Folded Spill
	ld	a0, 8(a0)
	sd	a0, 56(sp)                      # 8-byte Folded Spill
	ld	a0, 32(sp)                      # 8-byte Folded Reload
	or	a0, a0, a2
	li	a2, 1
	sllw	a0, a2, a0
	sd	a0, 48(sp)                      # 8-byte Folded Spill
	li	s10, -1
	li	s11, 2
	li	s6, 3
	j	.LBB13_39
.LBB13_38:                              #   in Loop: Header=BB13_39 Depth=2
	mv	a0, s3
	mv	a1, s1
	call	sign
	ld	a1, 136(sp)                     # 8-byte Folded Reload
	add	s4, a1, s4
	add	s4, s4, s8
	lw	a2, 0(s4)
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	add	a0, a0, s2
	mul	a0, a0, a2
	ld	a2, 144(sp)                     # 8-byte Folded Reload
	sllw	a2, a0, a2
	regsw_c	x20, 0x0(x18)		# 100101010000000000000
	ld	x20, 64(sp)                     # 8-byte Folded Reload
	add	x20, a1, x20
	add	s7, x20, s7
	add	s5, s7, s5
	sw	a2, 0(s5)
	addi	s11, s11, 2
	addi	s6, s6, 2
	li	a0, 32
	beq	s11, a0, .LBB13_28
.LBB13_39:                              #   Parent Loop BB13_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, 104(sp)                     # 8-byte Folded Reload
	add	a0, a1, a0
	lw	a3, 848(a0)
	lui	a2, %hi(FIELD_SCAN)
	addi	a2, a2, %lo(FIELD_SCAN)
	bnez	a3, .LBB13_43
# %bb.40:                               #   in Loop: Header=BB13_39 Depth=2
	lui	a2, %hi(mb_adaptive)
	lw	a2, %lo(mb_adaptive)(a2)
	beqz	a2, .LBB13_42
# %bb.41:                               #   in Loop: Header=BB13_39 Depth=2
	lw	a0, 0(a0)
	lui	a2, %hi(FIELD_SCAN)
	addi	a2, a2, %lo(FIELD_SCAN)
	bnez	a0, .LBB13_43
.LBB13_42:                              #   in Loop: Header=BB13_39 Depth=2
	lui	a2, %hi(SNGL_SCAN)
	addi	a2, a2, %lo(SNGL_SCAN)
.LBB13_43:                              #   in Loop: Header=BB13_39 Depth=2
	add	a0, a2, s11
	add	a2, a2, s6
	lbu	a0, 0(a0)
	lbu	a2, 0(a2)
	slli	a3, a0, 5
	add	a4, s9, a2
	addi	a5, sp, 152
	add	a3, a3, a5
	slli	a4, a4, 2
	add	a3, a3, a4
	lw	s1, 128(a3)
	sraiw	a3, s1, 31
	xor	a4, s1, a3
	subw	a4, a4, a3
	slli	s4, a2, 4
	ld	a3, 120(sp)                     # 8-byte Folded Reload
	add	a3, a3, s4
	slli	s8, a0, 2
	add	a3, a3, s8
	lw	a3, 0(a3)
	addi	a2, a2, 4
	slli	s7, a2, 6
	add	a1, a1, s7
	add	a0, s9, a0
	slli	s5, a0, 2
	lui	a0, 3
	add	a0, s5, a0
	add	a0, a1, a0
	addi	s10, s10, 1
	lw	s0, 824(a0)
	mul	a0, a4, a3
	ld	a1, 112(sp)                     # 8-byte Folded Reload
	add	a0, a0, a1
	ld	a1, 128(sp)                     # 8-byte Folded Reload
	sraw	s3, a0, a1
	mv	a0, s3
	mv	a1, s1
	call	sign
	subw	s2, s0, a0
	beq	s0, a0, .LBB13_38
# %bb.44:                               #   in Loop: Header=BB13_39 Depth=2
	ld	a3, 80(sp)                      # 8-byte Folded Reload
	ld	a1, 368(a3)
	sraiw	a0, s2, 31
	xor	a2, s2, a0
	subw	a0, a2, a0
	ld	a2, 48(sp)                      # 8-byte Folded Reload
	or	a1, a1, a2
	sd	a1, 368(a3)
	mv	a1, s2
	call	sign
	ld	a3, 88(sp)                      # 8-byte Folded Reload
	slli	a1, a3, 2
	ld	a2, 96(sp)                      # 8-byte Folded Reload
	add	a2, a2, a1
	sw	a0, 0(a2)
	ld	a0, 56(sp)                      # 8-byte Folded Reload
	add	a1, a0, a1
	sw	s10, 0(a1)
	addiw	a3, a3, 1
	sd	a3, 88(sp)                      # 8-byte Folded Spill
	li	s10, -1
	li	a0, 2
	sd	a0, 72(sp)                      # 8-byte Folded Spill
	j	.LBB13_38
.LBB13_45:                              # %.preheader
	li	a1, 1
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	j	.LBB13_47
.LBB13_46:                              #   in Loop: Header=BB13_47 Depth=1
	andi	a3, a1, 1
	li	a2, 4
	li	a1, 0
	beqz	a3, .LBB13_81
.LBB13_47:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_49 Depth 2
	li	a7, 0
	addi	a3, a2, 1
	addi	a4, a2, 2
	addi	a5, a2, 3
	slli	a2, a2, 2
	slli	a3, a3, 2
	slli	a4, a4, 2
	slli	a5, a5, 2
	li	a6, 1
	j	.LBB13_49
.LBB13_48:                              #   in Loop: Header=BB13_49 Depth=2
	sw	t0, 0(t1)
	andi	t0, a6, 1
	li	a7, 4
	li	a6, 0
	beqz	t0, .LBB13_46
.LBB13_49:                              #   Parent Loop BB13_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli	a7, a7, 6
	regsw_c	x5, 0x596(x27)		# 110110010110110010110
	add	x12, x20, a7
	add	x10, x12, a2
	lw	a7, 0(x10)
	addi	x6, x12, 64
	add	x4, x6, a2
	lw	t1, 0(x4)
	addi	x1, x12, 128
	regsw_c	x4, 0x0(x8)		# 010000010000000000000
	add	t5, x1, a2
	lw	t2, 0(t5)
	addi	t6, x12, 192
	add	t0, t6, a2
	lw	t3, 0(t0)
	add	t4, t2, a7
	subw	a7, a7, t2
	srli	t2, t1, 1
	subw	t2, t2, t3
	srli	t3, t3, 1
	add	t1, t3, t1
	add	t3, t1, t4
	regsw_c	x0, 0x80(x8)		# 010000000000010000000
	sw	t3, 0(x10)
	subw	t1, t4, t1
	sw	t1, 0(t0)
	add	t1, t2, a7
	sw	t1, 0(x4)
	subw	a7, a7, t2
	sw	a7, 0(t5)
	regsw_c	x12, 0x410(x25)		# 110010110010000010000
	add	x7, x12, a3
	lw	t1, 0(x7)
	add	x2, x6, a3
	add	t3, x1, a3
	lw	t2, 0(t3)
	lw	t4, 0(x2)
	add	a7, t6, a3
	regsw_c	x0, 0x72(x18)		# 100100000000001110010
	lw	x3, 0(a7)
	add	x5, t2, t1
	subw	t1, t1, t2
	srli	t2, t4, 1
	subw	t2, t2, x3
	srli	x3, x3, 1
	add	t4, x3, t4
	regsw_c	x20, 0x10(x21)		# 101011010000000010000
	add	x3, t4, x5
	sw	x3, 0(x7)
	subw	t4, x5, t4
	sw	t4, 0(a7)
	add	t4, t2, t1
	sw	t4, 0(x2)
	subw	t1, t1, t2
	sw	t1, 0(t3)
	regsw_c	x12, 0x530(x25)		# 110010110010100110000
	add	x9, x12, a4
	lw	t2, 0(x9)
	add	x3, x6, a4
	add	t4, x1, a4
	lw	x5, 0(t4)
	lw	x8, 0(x3)
	add	t1, t6, a4
	regsw_c	x3, 0x5f7(x19)		# 100110001110111110111
	lw	x11, 0(t1)
	add	x14, x5, t2
	subw	t2, t2, x5
	srai	x5, x8, 1
	subw	x5, x5, x11
	srai	x11, x11, 1
	add	x8, x11, x8
	regsw_c	x30, 0x399(x29)		# 111011111001110011001
	add	x13, x8, x14
	sw	x13, 0(x9)
	subw	x8, x14, x8
	sw	x8, 0(t1)
	add	x8, x5, t2
	sw	x8, 0(x3)
	subw	t2, t2, x5
	sw	t2, 0(t4)
	regsw_c	x13, 0x5b0(x27)		# 110110110110110110000
	add	x12, x12, a5
	lw	x5, 0(x12)
	add	x6, x6, a5
	add	x1, x1, a5
	lw	x11, 0(x1)
	lw	x14, 0(x6)
	add	t2, t6, a5
	lw	t6, 0(t2)
	regsw_c	x29, 0x40d(x31)		# 111111110110000001101
	add	x15, x11, x5
	subw	x5, x5, x11
	srai	x11, x14, 1
	subw	x17, x11, t6
	srai	t6, t6, 1
	add	t6, t6, x14
	add	x14, t6, x15
	regsw_c	x15, 0x4f7(x8)		# 010000111110011110111
	subw	t6, x15, t6
	sw	t6, 0(t2)
	add	x11, x17, x5
	lw	x15, 0(x10)
	sw	x11, 0(x6)
	lw	x16, 0(x7)
	subw	x5, x5, x17
	regsw_c	x15, 0xc4(x15)		# 011110111100011000100
	add	t6, x13, x15
	sraiw	x17, x14, 1
	add	x17, x17, x16
	addi	x18, t6, 32
	add	t6, x18, x17
	sraiw	t6, t6, 6
	sgtz	x19, t6
	regsw_c	x0, 0x680(x27)		# 110110000011010000000
	neg	x19, x19
	and	x19, x19, t6
	li	t6, 255
	sw	x5, 0(x1)
	blt	x19, t6, .LBB13_51
# %bb.50:                               #   in Loop: Header=BB13_49 Depth=2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	li	x19, 255
.LBB13_51:                              #   in Loop: Header=BB13_49 Depth=2
	regsw_c	x11, 0x5da(x31)		# 111110101110111011010
	subw	x17, x18, x17
	sraiw	x17, x17, 6
	sgtz	x18, x17
	neg	x18, x18
	and	x17, x18, x17
	sw	x19, 0(x10)
	blt	x17, t6, .LBB13_53
# %bb.52:                               #   in Loop: Header=BB13_49 Depth=2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	li	x17, 255
.LBB13_53:                              #   in Loop: Header=BB13_49 Depth=2
	regsw_c	x15, 0x5f5(x31)		# 111110111110111110101
	subw	x13, x15, x13
	srli	x10, x16, 1
	subw	x10, x10, x14
	addi	x13, x13, 32
	add	x14, x13, x10
	sraiw	x14, x14, 6
	sgtz	x15, x14
	regsw_c	x22, 0x400(x27)		# 110111011010000000000
	neg	x15, x15
	and	x14, x15, x14
	sw	x17, 0(x12)
	blt	x14, t6, .LBB13_55
# %bb.54:                               #   in Loop: Header=BB13_49 Depth=2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	li	x14, 255
.LBB13_55:                              #   in Loop: Header=BB13_49 Depth=2
	regsw_c	x11, 0x5da(x31)		# 111110101110111011010
	subw	x10, x13, x10
	sraiw	x10, x10, 6
	sgtz	x12, x10
	neg	x12, x12
	and	x12, x12, x10
	sw	x14, 0(x7)
	blt	x12, t6, .LBB13_57
# %bb.56:                               #   in Loop: Header=BB13_49 Depth=2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	li	x12, 255
.LBB13_57:                              #   in Loop: Header=BB13_49 Depth=2
	regsw_c	x15, 0x5f7(x27)		# 110110111110111110111
	lw	x7, 0(x4)
	lw	x10, 0(x2)
	add	x14, x8, x7
	sraiw	x13, x11, 1
	add	x13, x13, x10
	addi	x14, x14, 32
	add	x15, x14, x13
	regsw_c	x29, 0x6d0(x26)		# 110101110111011010000
	sraiw	x15, x15, 6
	sgtz	x16, x15
	neg	x16, x16
	and	x15, x16, x15
	sw	x12, 0(x9)
	blt	x15, t6, .LBB13_59
# %bb.58:                               #   in Loop: Header=BB13_49 Depth=2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	li	x15, 255
.LBB13_59:                              #   in Loop: Header=BB13_49 Depth=2
	regsw_c	x11, 0x5da(x31)		# 111110101110111011010
	subw	x9, x14, x13
	sraiw	x9, x9, 6
	sgtz	x12, x9
	neg	x12, x12
	and	x9, x12, x9
	sw	x15, 0(x4)
	blt	x9, t6, .LBB13_61
# %bb.60:                               #   in Loop: Header=BB13_49 Depth=2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	li	x9, 255
.LBB13_61:                              #   in Loop: Header=BB13_49 Depth=2
	regsw_c	x15, 0x5f5(x31)		# 111110111110111110101
	subw	x7, x7, x8
	srli	x4, x10, 1
	subw	x4, x4, x11
	addi	x7, x7, 32
	add	x8, x7, x4
	sraiw	x8, x8, 6
	sgtz	x10, x8
	regsw_c	x22, 0x400(x27)		# 110111011010000000000
	neg	x10, x10
	and	x8, x10, x8
	sw	x9, 0(x6)
	blt	x8, t6, .LBB13_63
# %bb.62:                               #   in Loop: Header=BB13_49 Depth=2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	li	x8, 255
.LBB13_63:                              #   in Loop: Header=BB13_49 Depth=2
	regsw_c	x11, 0x5da(x31)		# 111110101110111011010
	subw	x4, x7, x4
	sraiw	x4, x4, 6
	sgtz	x6, x4
	neg	x6, x6
	and	x7, x6, x4
	sw	x8, 0(x2)
	blt	x7, t6, .LBB13_65
# %bb.64:                               #   in Loop: Header=BB13_49 Depth=2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	li	x7, 255
.LBB13_65:                              #   in Loop: Header=BB13_49 Depth=2
	regsw_c	x9, 0x7be(x18)		# 100100100111110111110
	lw	x2, 0(t5)
	lw	x6, 0(t4)
	lw	x4, 0(t3)
	add	x9, x6, x2
	sraiw	x8, x5, 1
	add	x8, x8, x4
	addi	x9, x9, 32
	regsw_c	x11, 0x5da(x31)		# 111110101110111011010
	add	x10, x9, x8
	sraiw	x10, x10, 6
	sgtz	x11, x10
	neg	x11, x11
	and	x10, x11, x10
	sw	x7, 0(x3)
	blt	x10, t6, .LBB13_67
# %bb.66:                               #   in Loop: Header=BB13_49 Depth=2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	li	x10, 255
.LBB13_67:                              #   in Loop: Header=BB13_49 Depth=2
	regsw_c	x11, 0x5ca(x31)		# 111110101110111001010
	subw	x3, x9, x8
	sraiw	x3, x3, 6
	sgtz	x7, x3
	neg	x7, x7
	and	x3, x7, x3
	sw	x10, 0(t5)
	blt	x3, t6, .LBB13_69
# %bb.68:                               #   in Loop: Header=BB13_49 Depth=2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	li	x3, 255
.LBB13_69:                              #   in Loop: Header=BB13_49 Depth=2
	regsw_c	x3, 0x5b5(x29)		# 111010001110110110101
	subw	x2, x2, x6
	srli	t5, x4, 1
	subw	t5, t5, x5
	addi	x2, x2, 32
	add	x4, x2, t5
	sraiw	x4, x4, 6
	sgtz	x5, x4
	regsw_c	x22, 0x400(x27)		# 110111011010000000000
	neg	x5, x5
	and	x4, x5, x4
	sw	x3, 0(x1)
	blt	x4, t6, .LBB13_71
# %bb.70:                               #   in Loop: Header=BB13_49 Depth=2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	li	x4, 255
.LBB13_71:                              #   in Loop: Header=BB13_49 Depth=2
	regsw_c	x9, 0x58a(x8)		# 010000100110110001010
	subw	t5, x2, t5
	sraiw	t5, t5, 6
	sgtz	x1, t5
	neg	x1, x1
	and	x3, x1, t5
	sw	x4, 0(t3)
	blt	x3, t6, .LBB13_73
# %bb.72:                               #   in Loop: Header=BB13_49 Depth=2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	li	x3, 255
.LBB13_73:                              #   in Loop: Header=BB13_49 Depth=2
	lw	t3, 0(t0)
	regsw_c	x9, 0x53e(x16)		# 100000100110100111110
	lw	x1, 0(t1)
	lw	t5, 0(t2)
	lw	x2, 0(a7)
	add	x5, x1, t3
	srli	x4, t5, 1
	add	x4, x4, x2
	addi	x5, x5, 32
	regsw_c	x11, 0x5ca(x31)		# 111110101110111001010
	add	x6, x5, x4
	sraiw	x6, x6, 6
	sgtz	x7, x6
	neg	x7, x7
	and	x6, x7, x6
	sw	x3, 0(t4)
	blt	x6, t6, .LBB13_75
# %bb.74:                               #   in Loop: Header=BB13_49 Depth=2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	li	x6, 255
.LBB13_75:                              #   in Loop: Header=BB13_49 Depth=2
	regsw_c	x9, 0x488(x12)		# 011000100110010001000
	subw	t4, x5, x4
	sraiw	t4, t4, 6
	sgtz	x3, t4
	neg	x3, x3
	and	t4, x3, t4
	sw	x6, 0(t0)
	blt	t4, t6, .LBB13_77
# %bb.76:                               #   in Loop: Header=BB13_49 Depth=2
	li	t4, 255
.LBB13_77:                              #   in Loop: Header=BB13_49 Depth=2
	regsw_c	x0, 0x4(x5)		# 001010000000000000100
	subw	t3, t3, x1
	srli	t0, x2, 1
	subw	t0, t0, t5
	addi	t3, t3, 32
	add	t5, t3, t0
	sraiw	t5, t5, 6
	sgtz	x1, t5
	regsw_c	x0, 0x0(x25)		# 110010000000000000000
	neg	x1, x1
	and	t5, x1, t5
	sw	t4, 0(t2)
	blt	t5, t6, .LBB13_79
# %bb.78:                               #   in Loop: Header=BB13_49 Depth=2
	li	t5, 255
.LBB13_79:                              #   in Loop: Header=BB13_49 Depth=2
	subw	t0, t3, t0
	sraiw	t0, t0, 6
	sgtz	t2, t0
	neg	t2, t2
	and	t0, t2, t0
	sw	t5, 0(a7)
	blt	t0, t6, .LBB13_48
# %bb.80:                               #   in Loop: Header=BB13_49 Depth=2
	li	t0, 255
	j	.LBB13_48
.LBB13_81:
	lui	a1, %hi(enc_picture)
	ld	a3, %lo(enc_picture)(a1)
	lui	a1, %hi(img)
	lui	a2, 2
	add	a2, a3, a2
	ld	a3, -1728(a2)
	ld	a1, %lo(img)(a1)
	lui	a2, 3
	addiw	a2, a2, 824
	ld	a4, 40(sp)                      # 8-byte Folded Reload
	add	a4, a3, a4
	lw	a3, 164(a1)
	ld	a4, 0(a4)
	regsw_c	x0, 0x10(x16)		# 100000000000000010000
	add	x1, a1, a2
	lw	a1, 160(a1)
	slli	a2, a3, 3
	add	a2, a4, a2
	ld	a3, 0(a2)
	lh	a4, 0(x1)
	slli	a1, a1, 1
	regsw_c	x0, 0x10(x8)		# 010000000000000010000
	lh	a5, 256(x1)
	add	a6, a3, a1
	ld	a7, 32(a2)
	sh	a4, 0(a6)
	sh	a5, 8(a6)
	lh	a4, 16(x1)
	add	a5, a7, a1
	regsw_c	x0, 0x402(x8)		# 010000000010000000010
	lh	a6, 272(x1)
	ld	t0, 8(a2)
	sh	a4, 0(a5)
	lh	a4, 64(x1)
	sh	a6, 8(a5)
	add	a5, t0, a1
	lh	a6, 320(x1)
	sh	a4, 0(a5)
	ld	a4, 40(a2)
	regsw_c	x4, 0x0(x8)		# 010000010000000000000
	lh	t1, 80(x1)
	sh	a6, 8(a5)
	lh	a5, 336(x1)
	add	a6, a4, a1
	sh	t1, 0(a6)
	ld	t1, 16(a2)
	sh	a5, 8(a6)
	regsw_c	x0, 0x2(x9)		# 010010000000000000010
	lh	a5, 128(x1)
	lh	a6, 384(x1)
	add	t2, t1, a1
	ld	t3, 48(a2)
	sh	a5, 0(t2)
	sh	a6, 8(t2)
	lh	a5, 144(x1)
	add	a6, t3, a1
	regsw_c	x4, 0x0(x8)		# 010000010000000000000
	lh	t2, 400(x1)
	ld	t4, 24(a2)
	lh	t5, 192(x1)
	sh	a5, 0(a6)
	sh	t2, 8(a6)
	add	a5, t4, a1
	sh	t5, 0(a5)
	regsw_c	x4, 0x400(x8)		# 010000010010000000000
	lh	a6, 448(x1)
	ld	t2, 56(a2)
	lh	t5, 208(x1)
	lh	t6, 464(x1)
	sh	a6, 8(a5)
	add	a5, t2, a1
	sh	t5, 0(a5)
	sh	t6, 8(a5)
	regsw_c	x4, 0x10(x8)		# 010000010000000010000
	lh	a5, 4(x1)
	addi	a6, a1, 2
	lh	t5, 260(x1)
	add	a3, a3, a6
	sh	a5, 0(a3)
	lh	a5, 20(x1)
	sh	t5, 8(a3)
	regsw_c	x0, 0x410(x8)		# 010000000010000010000
	lh	a3, 276(x1)
	add	a7, a7, a6
	sh	a5, 0(a7)
	lh	a5, 68(x1)
	sh	a3, 8(a7)
	lh	a3, 324(x1)
	add	t0, t0, a6
	sh	a5, 0(t0)
	regsw_c	x4, 0x10(x8)		# 010000010000000010000
	lh	a5, 84(x1)
	sh	a3, 8(t0)
	lh	a3, 340(x1)
	add	a4, a4, a6
	sh	a5, 0(a4)
	lh	a5, 132(x1)
	sh	a3, 8(a4)
	regsw_c	x0, 0x410(x8)		# 010000000010000010000
	lh	a3, 388(x1)
	add	t1, t1, a6
	sh	a5, 0(t1)
	lh	a4, 148(x1)
	sh	a3, 8(t1)
	lh	a3, 404(x1)
	add	t3, t3, a6
	sh	a4, 0(t3)
	regsw_c	x0, 0x412(x8)		# 010000000010000010010
	lh	a4, 196(x1)
	sh	a3, 8(t3)
	add	t4, t4, a6
	lh	a3, 452(x1)
	sh	a4, 0(t4)
	lh	a4, 212(x1)
	lh	a5, 468(x1)
	sh	a3, 8(t4)
	add	a6, t2, a6
	sh	a4, 0(a6)
	sh	a5, 8(a6)
	ld	a3, 0(a2)
	regsw_c	x4, 0x0(x8)		# 010000010000000000000
	lh	a4, 8(x1)
	addi	a5, a1, 4
	lh	a6, 264(x1)
	add	a7, a3, a5
	ld	t0, 32(a2)
	sh	a4, 0(a7)
	sh	a6, 8(a7)
	regsw_c	x4, 0x10(x8)		# 010000010000000010000
	lh	a4, 24(x1)
	add	a6, t0, a5
	lh	a7, 280(x1)
	ld	t1, 8(a2)
	sh	a4, 0(a6)
	lh	a4, 72(x1)
	sh	a7, 8(a6)
	add	a6, t1, a5
	regsw_c	x0, 0x410(x8)		# 010000000010000010000
	lh	a7, 328(x1)
	sh	a4, 0(a6)
	ld	a4, 40(a2)
	lh	t2, 88(x1)
	sh	a7, 8(a6)
	lh	a6, 344(x1)
	add	a7, a4, a5
	sh	t2, 0(a7)
	ld	t2, 16(a2)
	sh	a6, 8(a7)
	regsw_c	x0, 0x2(x9)		# 010010000000000000010
	lh	a6, 136(x1)
	lh	a7, 392(x1)
	add	t3, t2, a5
	ld	t4, 48(a2)
	sh	a6, 0(t3)
	sh	a7, 8(t3)
	lh	a6, 152(x1)
	add	a7, t4, a5
	regsw_c	x4, 0x0(x8)		# 010000010000000000000
	lh	t3, 408(x1)
	ld	t5, 24(a2)
	lh	t6, 200(x1)
	sh	a6, 0(a7)
	sh	t3, 8(a7)
	add	a6, t5, a5
	sh	t6, 0(a6)
	regsw_c	x4, 0x400(x8)		# 010000010010000000000
	lh	a7, 456(x1)
	ld	a2, 56(a2)
	lh	t3, 216(x1)
	lh	t6, 472(x1)
	sh	a7, 8(a6)
	add	a5, a2, a5
	sh	t3, 0(a5)
	sh	t6, 8(a5)
	regsw_c	x4, 0x10(x8)		# 010000010000000010000
	lh	a5, 12(x1)
	addi	a1, a1, 6
	lh	a6, 268(x1)
	add	a3, a3, a1
	sh	a5, 0(a3)
	lh	a5, 28(x1)
	sh	a6, 8(a3)
	regsw_c	x0, 0x410(x8)		# 010000000010000010000
	lh	a3, 284(x1)
	add	t0, t0, a1
	sh	a5, 0(t0)
	lh	a5, 76(x1)
	sh	a3, 8(t0)
	lh	a3, 332(x1)
	add	t1, t1, a1
	sh	a5, 0(t1)
	regsw_c	x4, 0x10(x8)		# 010000010000000010000
	lh	a5, 92(x1)
	sh	a3, 8(t1)
	lh	a3, 348(x1)
	add	a4, a4, a1
	sh	a5, 0(a4)
	lh	a5, 140(x1)
	sh	a3, 8(a4)
	regsw_c	x0, 0x410(x8)		# 010000000010000010000
	lh	a3, 396(x1)
	add	t2, t2, a1
	sh	a5, 0(t2)
	lh	a4, 156(x1)
	sh	a3, 8(t2)
	lh	a3, 412(x1)
	add	t4, t4, a1
	sh	a4, 0(t4)
	regsw_c	x4, 0x10(x8)		# 010000010000000010000
	lh	a4, 204(x1)
	sh	a3, 8(t4)
	lh	a3, 460(x1)
	add	t5, t5, a1
	sh	a4, 0(t5)
	lh	a4, 220(x1)
	sh	a3, 8(t5)
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	lh	a3, 476(x1)
	add	a1, a2, a1
	sh	a4, 0(a1)
	li	a2, 2
	sh	a3, 8(a1)
	ld	a1, 72(sp)                      # 8-byte Folded Reload
	bne	a1, a2, .LBB13_83
# %bb.82:
	li	a0, 2
.LBB13_83:
	ld	ra, 504(sp)                     # 8-byte Folded Reload
	ld	s0, 496(sp)                     # 8-byte Folded Reload
	ld	s1, 488(sp)                     # 8-byte Folded Reload
	ld	s2, 480(sp)                     # 8-byte Folded Reload
	ld	s3, 472(sp)                     # 8-byte Folded Reload
	ld	s4, 464(sp)                     # 8-byte Folded Reload
	ld	s5, 456(sp)                     # 8-byte Folded Reload
	ld	s6, 448(sp)                     # 8-byte Folded Reload
	ld	s7, 440(sp)                     # 8-byte Folded Reload
	ld	s8, 432(sp)                     # 8-byte Folded Reload
	ld	s9, 424(sp)                     # 8-byte Folded Reload
	ld	s10, 416(sp)                    # 8-byte Folded Reload
	ld	s11, 408(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 512
	ret
.Lfunc_end13:
	.size	dct_chroma_sp2, .Lfunc_end13-dct_chroma_sp2
                                        # -- End function
	.option	pop
	.type	QP_SCALE_CR,@object             # @QP_SCALE_CR
	.section	.rodata,"a",@progbits
	.globl	QP_SCALE_CR
QP_SCALE_CR:
	.ascii	"\000\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017\020\021\022\023\024\025\026\027\030\031\032\033\034\035\035\036\037  !\"\"##$$%%%&&&''''"
	.size	QP_SCALE_CR, 52

	.type	SNGL_SCAN,@object               # @SNGL_SCAN
	.globl	SNGL_SCAN
SNGL_SCAN:
	.zero	2
	.asciz	"\001"
	.ascii	"\000\001"
	.ascii	"\000\002"
	.zero	2,1
	.asciz	"\002"
	.asciz	"\003"
	.ascii	"\002\001"
	.ascii	"\001\002"
	.ascii	"\000\003"
	.ascii	"\001\003"
	.zero	2,2
	.ascii	"\003\001"
	.ascii	"\003\002"
	.ascii	"\002\003"
	.zero	2,3
	.size	SNGL_SCAN, 32

	.type	FIELD_SCAN,@object              # @FIELD_SCAN
	.globl	FIELD_SCAN
FIELD_SCAN:
	.zero	2
	.ascii	"\000\001"
	.asciz	"\001"
	.ascii	"\000\002"
	.ascii	"\000\003"
	.zero	2,1
	.ascii	"\001\002"
	.ascii	"\001\003"
	.asciz	"\002"
	.ascii	"\002\001"
	.zero	2,2
	.ascii	"\002\003"
	.asciz	"\003"
	.ascii	"\003\001"
	.ascii	"\003\002"
	.zero	2,3
	.size	FIELD_SCAN, 32

	.type	COEFF_COST,@object              # @COEFF_COST
	.globl	COEFF_COST
COEFF_COST:
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.zero	10
	.zero	16,9
	.size	COEFF_COST, 32

	.type	COEFF_BIT_COST,@object          # @COEFF_BIT_COST
	.globl	COEFF_BIT_COST
COEFF_BIT_COST:
	.ascii	"\003\005\007\t\t\013\013\013\013\r\r\r\r\r\r\r"
	.ascii	"\005\007\t\t\013\013\013\013\r\r\r\r\r\r\r\r"
	.ascii	"\007\t\t\013\013\013\013\r\r\r\r\r\r\r\r\017"
	.ascii	"\007\t\t\013\013\013\013\r\r\r\r\r\r\r\r\017"
	.ascii	"\007\007\t\t\t\t\013\013\013\013\013\013\013\013\r\r"
	.ascii	"\007\007\t\t\t\t\013\013\013\013\013\013\013\013\r\r"
	.ascii	"\007\007\t\t\t\t\013\013\013\013\013\013\013\013\r\r"
	.ascii	"\007\007\t\t\t\t\013\013\013\013\013\013\013\013\r\r"
	.ascii	"\007\007\t\t\t\t\013\013\013\013\013\013\013\013\r\r"
	.ascii	"\007\007\t\t\t\t\013\013\013\013\013\013\013\013\r\r"
	.ascii	"\007\007\t\t\t\t\013\013\013\013\013\013\013\013\r\r"
	.ascii	"\007\007\t\t\t\t\013\013\013\013\013\013\013\013\r\r"
	.ascii	"\007\007\t\t\t\t\013\013\013\013\013\013\013\013\r\r"
	.ascii	"\007\007\t\t\t\t\013\013\013\013\013\013\013\013\r\r"
	.ascii	"\007\007\t\t\t\t\013\013\013\013\013\013\013\013\r\r"
	.ascii	"\007\007\t\t\t\t\013\013\013\013\013\013\013\013\r\r"
	.ascii	"\003\005\007\007\007\t\t\t\t\013\013\r\r\r\r\017"
	.ascii	"\005\t\t\013\013\r\r\r\r\017\017\017\017\017\017\017"
	.ascii	"\007\013\013\r\r\r\r\017\017\017\017\017\017\017\017\021"
	.ascii	"\t\013\013\r\r\r\r\017\017\017\017\017\017\017\017\021"
	.ascii	"\t\013\013\r\r\r\r\017\017\017\017\017\017\017\017\021"
	.ascii	"\013\013\r\r\r\r\017\017\017\017\017\017\017\017\021\021"
	.ascii	"\013\013\r\r\r\r\017\017\017\017\017\017\017\017\021\021"
	.ascii	"\013\013\r\r\r\r\017\017\017\017\017\017\017\017\021\021"
	.ascii	"\013\013\r\r\r\r\017\017\017\017\017\017\017\017\021\021"
	.ascii	"\013\013\r\r\r\r\017\017\017\017\017\017\017\017\021\021"
	.ascii	"\013\013\r\r\r\r\017\017\017\017\017\017\017\017\021\021"
	.ascii	"\013\013\r\r\r\r\017\017\017\017\017\017\017\017\021\021"
	.ascii	"\013\013\r\r\r\r\017\017\017\017\017\017\017\017\021\021"
	.ascii	"\013\013\r\r\r\r\017\017\017\017\017\017\017\017\021\021"
	.zero	16
	.zero	16
	.ascii	"\003\007\t\t\013\r\r\017\017\017\017\021\021\021\021\021"
	.ascii	"\005\t\013\r\r\017\017\017\017\021\021\021\021\021\021\021"
	.ascii	"\005\t\013\r\r\017\017\017\017\021\021\021\021\021\021\021"
	.ascii	"\007\013\r\r\017\017\017\017\021\021\021\021\021\021\021\021"
	.ascii	"\007\013\r\r\017\017\017\017\021\021\021\021\021\021\021\021"
	.ascii	"\007\013\r\r\017\017\017\017\021\021\021\021\021\021\021\021"
	.ascii	"\t\013\r\r\017\017\017\017\021\021\021\021\021\021\021\021"
	.ascii	"\t\013\r\r\017\017\017\017\021\021\021\021\021\021\021\021"
	.ascii	"\t\013\r\r\017\017\017\017\021\021\021\021\021\021\021\021"
	.ascii	"\t\013\r\r\017\017\017\017\021\021\021\021\021\021\021\021"
	.ascii	"\013\r\r\017\017\017\017\021\021\021\021\021\021\021\021\023"
	.ascii	"\013\r\r\017\017\017\017\021\021\021\021\021\021\021\021\023"
	.ascii	"\013\r\r\017\017\017\017\021\021\021\021\021\021\021\021\023"
	.ascii	"\013\r\r\017\017\017\017\021\021\021\021\021\021\021\021\023"
	.ascii	"\013\r\r\017\017\017\017\021\021\021\021\021\021\021\021\023"
	.ascii	"\013\r\r\017\017\017\017\021\021\021\021\021\021\021\021\023"
	.size	COEFF_BIT_COST, 768

	.type	SCAN_YUV422,@object             # @SCAN_YUV422
	.globl	SCAN_YUV422
SCAN_YUV422:
	.zero	2
	.ascii	"\000\001"
	.asciz	"\001"
	.ascii	"\000\002"
	.ascii	"\000\003"
	.zero	2,1
	.ascii	"\001\002"
	.ascii	"\001\003"
	.size	SCAN_YUV422, 16

	.type	hor_offset,@object              # @hor_offset
	.globl	hor_offset
hor_offset:
	.zero	16
	.ascii	"\000\004\000\004"
	.zero	4
	.zero	4
	.zero	4
	.ascii	"\000\004\000\004"
	.ascii	"\000\004\000\004"
	.zero	4
	.zero	4
	.ascii	"\000\004\000\004"
	.ascii	"\b\f\b\f"
	.ascii	"\000\004\000\004"
	.ascii	"\b\f\b\f"
	.size	hor_offset, 64

	.type	ver_offset,@object              # @ver_offset
	.globl	ver_offset
ver_offset:
	.zero	16
	.ascii	"\000\000\004\004"
	.zero	4
	.zero	4
	.zero	4
	.ascii	"\000\000\004\004"
	.ascii	"\b\b\f\f"
	.zero	4
	.zero	4
	.ascii	"\000\000\004\004"
	.ascii	"\000\000\004\004"
	.ascii	"\b\b\f\f"
	.ascii	"\b\b\f\f"
	.size	ver_offset, 64

	.type	quant_coef,@object              # @quant_coef
	.globl	quant_coef
	.p2align	2, 0x0
quant_coef:
	.word	13107                           # 0x3333
	.word	8066                            # 0x1f82
	.word	13107                           # 0x3333
	.word	8066                            # 0x1f82
	.word	8066                            # 0x1f82
	.word	5243                            # 0x147b
	.word	8066                            # 0x1f82
	.word	5243                            # 0x147b
	.word	13107                           # 0x3333
	.word	8066                            # 0x1f82
	.word	13107                           # 0x3333
	.word	8066                            # 0x1f82
	.word	8066                            # 0x1f82
	.word	5243                            # 0x147b
	.word	8066                            # 0x1f82
	.word	5243                            # 0x147b
	.word	11916                           # 0x2e8c
	.word	7490                            # 0x1d42
	.word	11916                           # 0x2e8c
	.word	7490                            # 0x1d42
	.word	7490                            # 0x1d42
	.word	4660                            # 0x1234
	.word	7490                            # 0x1d42
	.word	4660                            # 0x1234
	.word	11916                           # 0x2e8c
	.word	7490                            # 0x1d42
	.word	11916                           # 0x2e8c
	.word	7490                            # 0x1d42
	.word	7490                            # 0x1d42
	.word	4660                            # 0x1234
	.word	7490                            # 0x1d42
	.word	4660                            # 0x1234
	.word	10082                           # 0x2762
	.word	6554                            # 0x199a
	.word	10082                           # 0x2762
	.word	6554                            # 0x199a
	.word	6554                            # 0x199a
	.word	4194                            # 0x1062
	.word	6554                            # 0x199a
	.word	4194                            # 0x1062
	.word	10082                           # 0x2762
	.word	6554                            # 0x199a
	.word	10082                           # 0x2762
	.word	6554                            # 0x199a
	.word	6554                            # 0x199a
	.word	4194                            # 0x1062
	.word	6554                            # 0x199a
	.word	4194                            # 0x1062
	.word	9362                            # 0x2492
	.word	5825                            # 0x16c1
	.word	9362                            # 0x2492
	.word	5825                            # 0x16c1
	.word	5825                            # 0x16c1
	.word	3647                            # 0xe3f
	.word	5825                            # 0x16c1
	.word	3647                            # 0xe3f
	.word	9362                            # 0x2492
	.word	5825                            # 0x16c1
	.word	9362                            # 0x2492
	.word	5825                            # 0x16c1
	.word	5825                            # 0x16c1
	.word	3647                            # 0xe3f
	.word	5825                            # 0x16c1
	.word	3647                            # 0xe3f
	.word	8192                            # 0x2000
	.word	5243                            # 0x147b
	.word	8192                            # 0x2000
	.word	5243                            # 0x147b
	.word	5243                            # 0x147b
	.word	3355                            # 0xd1b
	.word	5243                            # 0x147b
	.word	3355                            # 0xd1b
	.word	8192                            # 0x2000
	.word	5243                            # 0x147b
	.word	8192                            # 0x2000
	.word	5243                            # 0x147b
	.word	5243                            # 0x147b
	.word	3355                            # 0xd1b
	.word	5243                            # 0x147b
	.word	3355                            # 0xd1b
	.word	7282                            # 0x1c72
	.word	4559                            # 0x11cf
	.word	7282                            # 0x1c72
	.word	4559                            # 0x11cf
	.word	4559                            # 0x11cf
	.word	2893                            # 0xb4d
	.word	4559                            # 0x11cf
	.word	2893                            # 0xb4d
	.word	7282                            # 0x1c72
	.word	4559                            # 0x11cf
	.word	7282                            # 0x1c72
	.word	4559                            # 0x11cf
	.word	4559                            # 0x11cf
	.word	2893                            # 0xb4d
	.word	4559                            # 0x11cf
	.word	2893                            # 0xb4d
	.size	quant_coef, 384

	.type	dequant_coef,@object            # @dequant_coef
	.globl	dequant_coef
	.p2align	2, 0x0
dequant_coef:
	.word	10                              # 0xa
	.word	13                              # 0xd
	.word	10                              # 0xa
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	16                              # 0x10
	.word	13                              # 0xd
	.word	16                              # 0x10
	.word	10                              # 0xa
	.word	13                              # 0xd
	.word	10                              # 0xa
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	16                              # 0x10
	.word	13                              # 0xd
	.word	16                              # 0x10
	.word	11                              # 0xb
	.word	14                              # 0xe
	.word	11                              # 0xb
	.word	14                              # 0xe
	.word	14                              # 0xe
	.word	18                              # 0x12
	.word	14                              # 0xe
	.word	18                              # 0x12
	.word	11                              # 0xb
	.word	14                              # 0xe
	.word	11                              # 0xb
	.word	14                              # 0xe
	.word	14                              # 0xe
	.word	18                              # 0x12
	.word	14                              # 0xe
	.word	18                              # 0x12
	.word	13                              # 0xd
	.word	16                              # 0x10
	.word	13                              # 0xd
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	13                              # 0xd
	.word	16                              # 0x10
	.word	13                              # 0xd
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	14                              # 0xe
	.word	18                              # 0x12
	.word	14                              # 0xe
	.word	18                              # 0x12
	.word	18                              # 0x12
	.word	23                              # 0x17
	.word	18                              # 0x12
	.word	23                              # 0x17
	.word	14                              # 0xe
	.word	18                              # 0x12
	.word	14                              # 0xe
	.word	18                              # 0x12
	.word	18                              # 0x12
	.word	23                              # 0x17
	.word	18                              # 0x12
	.word	23                              # 0x17
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	20                              # 0x14
	.word	25                              # 0x19
	.word	20                              # 0x14
	.word	25                              # 0x19
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	20                              # 0x14
	.word	25                              # 0x19
	.word	20                              # 0x14
	.word	25                              # 0x19
	.word	18                              # 0x12
	.word	23                              # 0x17
	.word	18                              # 0x12
	.word	23                              # 0x17
	.word	23                              # 0x17
	.word	29                              # 0x1d
	.word	23                              # 0x17
	.word	29                              # 0x1d
	.word	18                              # 0x12
	.word	23                              # 0x17
	.word	18                              # 0x12
	.word	23                              # 0x17
	.word	23                              # 0x17
	.word	29                              # 0x1d
	.word	23                              # 0x17
	.word	29                              # 0x1d
	.size	dequant_coef, 384

	.type	.L__const.dct_chroma.cbpblk_pattern,@object # @__const.dct_chroma.cbpblk_pattern
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	3, 0x0
.L__const.dct_chroma.cbpblk_pattern:
	.quad	0                               # 0x0
	.quad	983040                          # 0xf0000
	.quad	16711680                        # 0xff0000
	.quad	4294901760                      # 0xffff0000
	.size	.L__const.dct_chroma.cbpblk_pattern, 32

	.type	cbp_blk_chroma,@object          # @cbp_blk_chroma
cbp_blk_chroma:
	.ascii	"\020\021\022\023"
	.ascii	"\024\025\026\027"
	.ascii	"\030\031\032\033"
	.ascii	"\034\035\036\037"
	.ascii	" !\"#"
	.ascii	"$%&'"
	.ascii	"()*+"
	.ascii	",-./"
	.size	cbp_blk_chroma, 32

	.type	A,@object                       # @A
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
A:
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	20                              # 0x14
	.word	25                              # 0x19
	.word	20                              # 0x14
	.word	25                              # 0x19
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	20                              # 0x14
	.word	25                              # 0x19
	.word	20                              # 0x14
	.word	25                              # 0x19
	.size	A, 64

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
