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
	addi	sp, sp, -272
	sd	ra, 264(sp)                     # 8-byte Folded Spill
	sd	s0, 256(sp)                     # 8-byte Folded Spill
	sd	s1, 248(sp)                     # 8-byte Folded Spill
	sd	s2, 240(sp)                     # 8-byte Folded Spill
	sd	s3, 232(sp)                     # 8-byte Folded Spill
	sd	s4, 224(sp)                     # 8-byte Folded Spill
	sd	s5, 216(sp)                     # 8-byte Folded Spill
	sd	s6, 208(sp)                     # 8-byte Folded Spill
	sd	s7, 200(sp)                     # 8-byte Folded Spill
	sd	s8, 192(sp)                     # 8-byte Folded Spill
	sd	s9, 184(sp)                     # 8-byte Folded Spill
	sd	s10, 176(sp)                    # 8-byte Folded Spill
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
	andi	s7, s4, 15
	andi	s8, s3, 15
	addi	s6, s7, -1
	li	a3, 1
	addi	a4, sp, 80
	mv	a0, s5
	mv	a1, s6
	mv	a2, s8
	call	getNeighbour
	addi	a2, s8, 1
	addi	a4, sp, 104
	li	a3, 1
	mv	a0, s5
	mv	a1, s6
	call	getNeighbour
	addi	a2, s8, 2
	addi	a4, sp, 128
	li	a3, 1
	mv	a0, s5
	mv	a1, s6
	call	getNeighbour
	addi	a2, s8, 3
	addi	a4, sp, 152
	li	a3, 1
	mv	a0, s5
	mv	a1, s6
	call	getNeighbour
	addi	s8, s8, -1
	li	a3, 1
	addi	a4, sp, 56
	mv	a0, s5
	mv	a1, s7
	mv	a2, s8
	call	getNeighbour
	addi	a1, s7, 4
	li	a3, 1
	addi	a4, sp, 32
	mv	a0, s5
	mv	a2, s8
	call	getNeighbour
	li	a3, 1
	addi	a4, sp, 8
	mv	a0, s5
	mv	a1, s6
	mv	a2, s8
	call	getNeighbour
	lw	a0, 32(sp)
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
	sw	a6, 32(sp)
	beqz	a0, .LBB0_15
# %bb.4:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a1, 80(sp)
	lui	a2, 22
	addiw	a2, a2, -920
	add	a0, a0, a2
	beqz	a1, .LBB0_16
# %bb.5:
	lw	a1, 84(sp)
	ld	a2, 0(a0)
	slli	a1, a1, 2
	add	a1, a2, a1
	lw	a3, 0(a1)
	lw	a1, 104(sp)
	beqz	a1, .LBB0_7
.LBB0_6:
	lw	a1, 108(sp)
	ld	a2, 0(a0)
	slli	a1, a1, 2
	add	a1, a2, a1
	lw	a1, 0(a1)
.LBB0_7:
	lw	a2, 128(sp)
	beqz	a2, .LBB0_9
# %bb.8:
	lw	a2, 132(sp)
	ld	a4, 0(a0)
	slli	a2, a2, 2
	add	a2, a4, a2
	lw	a2, 0(a2)
.LBB0_9:
	lw	a5, 152(sp)
	andi	a4, a3, 1
	beqz	a5, .LBB0_17
# %bb.10:
	lw	a3, 156(sp)
	ld	a5, 0(a0)
	slli	a3, a3, 2
	add	a3, a5, a3
	lw	a3, 0(a3)
	lw	a5, 56(sp)
	and	a1, a1, a4
	beqz	a5, .LBB0_18
.LBB0_11:
	lw	a4, 60(sp)
	ld	a5, 0(a0)
	slli	a4, a4, 2
	add	a4, a5, a4
	lw	t3, 0(a4)
	and	a5, a2, a1
	beqz	a6, .LBB0_13
.LBB0_12:
	lw	a1, 36(sp)
	ld	a2, 0(a0)
	slli	a1, a1, 2
	add	a1, a2, a1
	lw	a6, 0(a1)
.LBB0_13:
	lw	a1, 8(sp)
	and	a5, a3, a5
	beqz	a1, .LBB0_19
# %bb.14:
	lw	a1, 12(sp)
	ld	a0, 0(a0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	t2, 0(a0)
	j	.LBB0_20
.LBB0_15:
	lw	a5, 80(sp)
	lw	t3, 56(sp)
	lw	t2, 8(sp)
	j	.LBB0_20
.LBB0_16:
	li	a3, 0
	lw	a1, 104(sp)
	bnez	a1, .LBB0_6
	j	.LBB0_7
.LBB0_17:
	li	a3, 0
	lw	a5, 56(sp)
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
	snez	s1, a5
	and	s1, a0, s1
	snez	a4, t2
	and	a4, s1, a4
	sw	a4, 0(s0)
	beqz	t3, .LBB0_22
# %bb.21:
	lw	a0, 76(sp)
	slli	a0, a0, 3
	add	a0, s9, a0
	lw	a1, 72(sp)
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
	mv	s0, a0
	mv	t4, a0
	mv	t5, a0
	beqz	a6, .LBB0_25
# %bb.24:
	lw	a6, 52(sp)
	slli	a6, a6, 3
	add	a6, s9, a6
	lw	a7, 48(sp)
	ld	a6, 0(a6)
	slli	a7, a7, 1
	add	a6, a6, a7
	lhu	t5, 0(a6)
	lhu	t4, 2(a6)
	lhu	s0, 4(a6)
	lhu	t6, 6(a6)
.LBB0_25:
	beqz	a5, .LBB0_28
# %bb.26:
	lw	a6, 100(sp)
	slli	a6, a6, 3
	lw	a7, 96(sp)
	lw	t0, 124(sp)
	add	a6, s9, a6
	ld	a6, 0(a6)
	slli	a7, a7, 1
	slli	t0, t0, 3
	add	t0, s9, t0
	lw	t1, 120(sp)
	ld	t0, 0(t0)
	lw	s2, 148(sp)
	add	a6, a6, a7
	slli	t1, t1, 1
	add	t0, t0, t1
	slli	s2, s2, 3
	add	s2, s9, s2
	lw	a7, 144(sp)
	ld	s2, 0(s2)
	lw	s3, 172(sp)
	lhu	t1, 0(a6)
	slli	a7, a7, 1
	add	s2, s2, a7
	slli	s3, s3, 3
	add	s3, s9, s3
	lw	s4, 168(sp)
	ld	s3, 0(s3)
	lhu	a7, 0(t0)
	lhu	a6, 0(s2)
	slli	s4, s4, 1
	add	s3, s3, s4
	lhu	t0, 0(s3)
	beqz	t2, .LBB0_29
.LBB0_27:
	lw	t2, 28(sp)
	slli	t2, t2, 3
	add	t2, s9, t2
	lw	s2, 24(sp)
	ld	t2, 0(t2)
	slli	s2, s2, 1
	add	t2, t2, s2
	lhu	t2, 0(t2)
	lui	s2, %hi(img)
	ld	s2, %lo(img)(s2)
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
	ld	s2, %lo(img)(t2)
	lui	t2, 22
	add	t2, s2, t2
	lw	t2, 416(t2)
.LBB0_30:
	lui	s3, 1
	add	s3, s2, s3
	addi	s4, s2, 2047
	li	s5, -1
	sh	s5, 1720(s2)
	sh	s5, 185(s4)
	sh	s5, 697(s4)
	sh	s5, 1209(s4)
	sh	s5, 1721(s4)
	sh	s5, 184(s3)
	beqz	s1, .LBB0_32
# %bb.31:
	add	s1, a3, a2
	add	s3, a1, a0
	add	s1, s1, s3
	add	s3, t1, a7
	add	s3, s3, a6
	add	s1, s1, s3
	add	s1, s1, t0
	addi	s1, s1, 4
	sraiw	s1, s1, 3
	j	.LBB0_40
.LBB0_32:
	bnez	t3, .LBB0_35
# %bb.33:
	beqz	a5, .LBB0_35
# %bb.34:
	add	s1, t1, a7
	add	s3, a6, t0
	j	.LBB0_38
.LBB0_35:
	beqz	t3, .LBB0_39
# %bb.36:
	bnez	a5, .LBB0_39
# %bb.37:
	add	s1, a3, a2
	add	s3, a1, a0
.LBB0_38:
	add	s1, s1, s3
	addi	s1, s1, 2
	sraiw	s1, s1, 2
	j	.LBB0_40
.LBB0_39:
	lui	s1, 22
	addiw	s1, s1, 416
	add	s1, s2, s1
	lw	s1, 0(s1)
.LBB0_40:
	sh	s1, 1208(s2)
	sh	s1, 1210(s2)
	sh	s1, 1212(s2)
	sh	s1, 1214(s2)
	sh	s1, 1240(s2)
	sh	s1, 1242(s2)
	sh	s1, 1244(s2)
	sh	s1, 1246(s2)
	sh	s1, 1272(s2)
	sh	s1, 1274(s2)
	sh	s1, 1276(s2)
	sh	s1, 1278(s2)
	sh	s1, 1304(s2)
	sh	s1, 1306(s2)
	sh	s1, 1308(s2)
	sh	s1, 1310(s2)
	sh	a3, 280(s2)
	sh	a3, 248(s2)
	sh	a3, 216(s2)
	sh	a3, 184(s2)
	sh	t1, 702(s2)
	sh	t1, 700(s2)
	sh	t1, 698(s2)
	sh	t1, 696(s2)
	sh	a2, 282(s2)
	sh	a2, 250(s2)
	sh	a2, 218(s2)
	sh	a2, 186(s2)
	sh	a7, 734(s2)
	sh	a7, 732(s2)
	sh	a7, 730(s2)
	sh	a7, 728(s2)
	sh	a1, 284(s2)
	sh	a1, 252(s2)
	sh	a1, 220(s2)
	sh	a1, 188(s2)
	sh	a6, 766(s2)
	sh	a6, 764(s2)
	sh	a6, 762(s2)
	sh	a6, 760(s2)
	sh	a0, 286(s2)
	sh	a0, 254(s2)
	sh	a0, 222(s2)
	sh	a0, 190(s2)
	sh	t0, 798(s2)
	sh	t0, 796(s2)
	sh	t0, 794(s2)
	sh	t0, 792(s2)
	beqz	t3, .LBB0_49
# %bb.41:
	beqz	a5, .LBB0_50
.LBB0_42:
	slli	s2, a2, 1
	slli	s1, a1, 1
	beqz	t3, .LBB0_44
.LBB0_43:
	addi	s5, a1, 2
	lui	t3, %hi(img)
	ld	s7, %lo(img)(t3)
	add	t3, s5, a3
	add	t3, t3, s2
	srliw	s3, t3, 2
	addi	t3, s7, 2047
	sh	s3, 1720(s7)
	addi	s4, a0, 2
	add	s6, s4, a2
	add	s6, s6, s1
	srliw	s6, s6, 2
	sh	s6, 1752(s7)
	sh	s6, 1722(s7)
	slli	s6, a0, 1
	add	s5, s5, s6
	add	s5, s5, t5
	srliw	s5, s5, 2
	sh	s5, 1784(s7)
	sh	s5, 1754(s7)
	sh	s5, 1724(s7)
	slli	s6, t5, 1
	add	s6, s4, s6
	add	s6, s6, t4
	srliw	s6, s6, 2
	sh	s6, 1816(s7)
	sh	s6, 1786(s7)
	sh	s6, 1756(s7)
	sh	s6, 1726(s7)
	slli	s8, t4, 1
	add	s9, t5, s0
	add	s8, s9, s8
	addi	s8, s8, 2
	srliw	s8, s8, 2
	sh	s8, 1818(s7)
	sh	s8, 1788(s7)
	sh	s8, 1758(s7)
	slli	s9, s0, 1
	add	s10, t4, t6
	add	s9, s10, s9
	addi	s9, s9, 2
	srliw	s9, s9, 2
	sh	s9, 1820(s7)
	sh	s9, 1790(s7)
	slli	s9, t6, 1
	add	t6, s0, t6
	add	t6, t6, s9
	addi	t6, t6, 2
	srli	t6, t6, 2
	sh	t6, 1822(s7)
	add	t6, a2, a3
	addi	t6, t6, 1
	srli	t6, t6, 1
	sh	t6, 1721(t3)
	addi	t6, a1, 1
	add	s0, t6, a2
	srliw	s0, s0, 1
	sh	s0, 1785(t3)
	sh	s0, 1723(t3)
	add	t6, t6, a0
	srliw	t6, t6, 1
	sh	t6, 1787(t3)
	sh	t6, 1725(t3)
	add	t6, a0, t5
	addi	t6, t6, 1
	srliw	t6, t6, 1
	sh	t6, 1789(t3)
	sh	t6, 1727(t3)
	add	t4, t5, t4
	addi	t4, t4, 1
	srli	t4, t4, 1
	sh	t4, 1791(t3)
	sh	s3, 1753(t3)
	add	s4, s4, s1
	add	s4, s4, a2
	srliw	t4, s4, 2
	sh	t4, 1817(t3)
	sh	t4, 1755(t3)
	sh	s5, 1819(t3)
	sh	s5, 1757(t3)
	sh	s6, 1821(t3)
	sh	s6, 1759(t3)
	sh	s8, 1823(t3)
.LBB0_44:
	slli	t4, a7, 1
	slli	t5, a6, 1
	beqz	a5, .LBB0_46
# %bb.45:
	addi	a5, a7, 1
	add	t3, a5, t1
	lui	t6, %hi(img)
	ld	t6, %lo(img)(t6)
	srli	t3, t3, 1
	lui	s0, 1
	addiw	s0, s0, 184
	add	t6, t6, s0
	sh	t3, 0(t6)
	addi	t3, a6, 2
	add	s0, t3, t1
	add	s0, s0, t4
	srli	s0, s0, 2
	sh	s0, 2(t6)
	add	a5, a5, a6
	srliw	a5, a5, 1
	sh	a5, 32(t6)
	sh	a5, 4(t6)
	add	a5, t0, a7
	add	a5, a5, t5
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
	add	t3, t3, t0
	add	a5, t3, a5
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
	addi	t3, a7, 2
	lui	a4, %hi(img)
	ld	a5, %lo(img)(a4)
	add	a4, t3, t0
	add	a4, a4, t5
	srliw	a4, a4, 2
	addi	a5, a5, 2047
	sh	a4, 281(a5)
	addi	t6, t1, 2
	add	t5, t6, a6
	add	t4, t5, t4
	srliw	t4, t4, 2
	sh	t4, 283(a5)
	sh	t4, 249(a5)
	slli	t5, t1, 1
	addi	s0, t2, 2
	add	s3, s0, a7
	add	s3, s3, t5
	srliw	s3, s3, 2
	sh	s3, 285(a5)
	sh	s3, 251(a5)
	sh	s3, 217(a5)
	slli	s4, t2, 1
	add	t6, t6, s4
	add	t6, t6, a3
	srliw	t6, t6, 2
	sh	t6, 287(a5)
	sh	t6, 253(a5)
	sh	t6, 219(a5)
	sh	t6, 185(a5)
	slli	s4, a3, 1
	add	s0, s0, s4
	add	s0, s0, a2
	srliw	s0, s0, 2
	sh	s0, 255(a5)
	sh	s0, 221(a5)
	sh	s0, 187(a5)
	add	s2, a3, s2
	add	s2, s2, a1
	addi	s2, s2, 2
	srliw	s2, s2, 2
	sh	s2, 223(a5)
	sh	s2, 189(a5)
	add	s1, a2, s1
	add	s1, s1, a0
	addi	s1, s1, 2
	srliw	s1, s1, 2
	sh	s1, 191(a5)
	addi	s4, t2, 1
	add	s5, s4, a3
	srliw	s5, s5, 1
	sh	s5, 763(a5)
	sh	s5, 697(a5)
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
	sh	t6, 795(a5)
	sh	t6, 729(a5)
	sh	s0, 797(a5)
	sh	s0, 731(a5)
	sh	s2, 799(a5)
	sh	s2, 733(a5)
	sh	s1, 735(a5)
	sh	s3, 761(a5)
	sh	t4, 793(a5)
	add	s4, s4, t1
	srliw	a0, s4, 1
	sh	a0, 1245(a5)
	sh	a0, 1209(a5)
	sh	t6, 1247(a5)
	sh	t6, 1211(a5)
	sh	s0, 1213(a5)
	sh	s2, 1215(a5)
	add	t1, a7, t1
	addi	t1, t1, 1
	srliw	a0, t1, 1
	sh	a0, 1277(a5)
	sh	a0, 1241(a5)
	add	t3, t3, t5
	add	t2, t3, t2
	srliw	a0, t2, 2
	sh	a0, 1279(a5)
	sh	a0, 1243(a5)
	addi	a6, a6, 1
	add	a7, a6, a7
	srliw	a0, a7, 1
	sh	a0, 1309(a5)
	sh	a0, 1273(a5)
	sh	t4, 1311(a5)
	sh	t4, 1275(a5)
	add	a6, a6, t0
	srli	a0, a6, 1
	sh	a0, 1305(a5)
	sh	a4, 1307(a5)
.LBB0_48:
	ld	ra, 264(sp)                     # 8-byte Folded Reload
	ld	s0, 256(sp)                     # 8-byte Folded Reload
	ld	s1, 248(sp)                     # 8-byte Folded Reload
	ld	s2, 240(sp)                     # 8-byte Folded Reload
	ld	s3, 232(sp)                     # 8-byte Folded Reload
	ld	s4, 224(sp)                     # 8-byte Folded Reload
	ld	s5, 216(sp)                     # 8-byte Folded Reload
	ld	s6, 208(sp)                     # 8-byte Folded Reload
	ld	s7, 200(sp)                     # 8-byte Folded Reload
	ld	s8, 192(sp)                     # 8-byte Folded Reload
	ld	s9, 184(sp)                     # 8-byte Folded Reload
	ld	s10, 176(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 272
	ret
.LBB0_49:
	lui	s1, %hi(img)
	ld	s1, %lo(img)(s1)
	li	s2, -1
	sh	s2, 184(s1)
	bnez	a5, .LBB0_42
.LBB0_50:
	lui	s1, %hi(img)
	ld	s1, %lo(img)(s1)
	li	s2, -1
	sh	s2, 696(s1)
	slli	s2, a2, 1
	slli	s1, a1, 1
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
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a2, 2
	add	a0, a0, a2
	ld	s3, -1768(a0)
	lw	s0, 12(a1)
	li	s1, -1
	mv	s2, sp
	li	s4, 16
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	li	a1, -1
	li	a3, 1
	mv	a0, s0
	mv	a2, s1
	mv	a4, s2
	call	getNeighbour
	addiw	s1, s1, 1
	addi	s2, s2, 24
	bne	s1, s4, .LBB1_1
# %bb.2:
	li	a2, -1
	li	a3, 1
	addi	a4, sp, 408
	mv	a0, s0
	li	a1, 0
	call	getNeighbour
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a0, 220(a0)
	lw	a1, 408(sp)
	beqz	a0, .LBB1_11
# %bb.3:
	lui	a0, %hi(img)
	ld	a2, %lo(img)(a0)
	beqz	a1, .LBB1_5
# %bb.4:
	lui	a0, 22
	add	a0, a2, a0
	lw	a1, 412(sp)
	ld	a0, -920(a0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a1, 0(a0)
.LBB1_5:
	lui	a0, 22
	addiw	a0, a0, -920
	add	a2, a2, a0
	addi	a3, sp, 28
	li	a0, 1
	addi	a4, sp, 412
	j	.LBB1_7
.LBB1_6:                                #   in Loop: Header=BB1_7 Depth=1
	addi	a3, a3, 24
	and	a0, a5, a0
	beq	a3, a4, .LBB1_9
.LBB1_7:                                # =>This Inner Loop Header: Depth=1
	lw	a5, -4(a3)
	beqz	a5, .LBB1_6
# %bb.8:                                #   in Loop: Header=BB1_7 Depth=1
	lw	a5, 0(a3)
	ld	a6, 0(a2)
	slli	a5, a5, 2
	add	a5, a6, a5
	lw	a5, 0(a5)
	j	.LBB1_6
.LBB1_9:
	lw	a3, 0(sp)
	beqz	a3, .LBB1_15
# %bb.10:
	lw	a3, 4(sp)
	ld	a2, 0(a2)
	slli	a3, a3, 2
	add	a2, a2, a3
	lw	s0, 0(a2)
	bnez	a1, .LBB1_12
	j	.LBB1_16
.LBB1_11:
	lw	a0, 24(sp)
	lw	s0, 0(sp)
	beqz	a1, .LBB1_16
.LBB1_12:
	lw	a2, 428(sp)
	slli	a2, a2, 3
	add	a2, s3, a2
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
	beqz	a0, .LBB1_17
.LBB1_13:
	lw	a3, 44(sp)
	slli	a3, a3, 3
	add	a3, s3, a3
	lw	a4, 40(sp)
	ld	a3, 0(a3)
	lw	a5, 68(sp)
	slli	a4, a4, 1
	add	a3, a3, a4
	slli	a5, a5, 3
	add	a5, s3, a5
	lw	a4, 64(sp)
	ld	a5, 0(a5)
	lhu	a3, 0(a3)
	lw	a6, 92(sp)
	slli	a4, a4, 1
	add	a4, a5, a4
	lhu	a4, 0(a4)
	slli	a6, a6, 3
	add	a6, s3, a6
	lw	a5, 88(sp)
	ld	a6, 0(a6)
	lw	a7, 116(sp)
	add	a3, a3, a4
	slli	a5, a5, 1
	add	a5, a6, a5
	slli	a7, a7, 3
	add	a7, s3, a7
	lw	a4, 112(sp)
	ld	a6, 0(a7)
	lhu	a5, 0(a5)
	lw	a7, 140(sp)
	slli	a4, a4, 1
	add	a4, a6, a4
	lhu	a4, 0(a4)
	slli	a7, a7, 3
	add	a7, s3, a7
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
	add	a5, s3, a5
	ld	a5, 0(a5)
	slli	a7, a7, 1
	slli	t0, t0, 3
	add	t0, s3, t0
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
	add	t0, s3, t0
	lw	a4, 208(sp)
	ld	a6, 0(t0)
	lw	a7, 236(sp)
	add	a3, a3, a5
	slli	a4, a4, 1
	add	a4, a6, a4
	slli	a7, a7, 3
	add	a7, s3, a7
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
	add	a7, s3, a7
	ld	a7, 0(a7)
	slli	a6, a6, 1
	slli	t0, t0, 3
	add	t0, s3, t0
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
	add	t0, s3, t0
	lw	a5, 304(sp)
	ld	a6, 0(t0)
	lw	a7, 332(sp)
	add	a3, a3, a4
	slli	a5, a5, 1
	add	a5, a6, a5
	slli	a7, a7, 3
	lw	a4, 328(sp)
	lw	a6, 356(sp)
	add	a7, s3, a7
	ld	a7, 0(a7)
	slli	a4, a4, 1
	slli	a6, a6, 3
	add	a6, s3, a6
	lw	t0, 352(sp)
	ld	a6, 0(a6)
	lw	t1, 380(sp)
	add	a4, a7, a4
	slli	t0, t0, 1
	add	a6, a6, t0
	slli	t1, t1, 3
	lw	a7, 404(sp)
	add	t1, s3, t1
	ld	t0, 0(t1)
	lw	t1, 376(sp)
	slli	a7, a7, 3
	add	a7, s3, a7
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
	beqz	a1, .LBB1_37
# %bb.14:
	add	a2, a2, a3
	addi	a2, a2, 16
	srliw	s5, a2, 5
	li	s4, 1
	or	a2, a0, a1
	bnez	a2, .LBB1_22
	j	.LBB1_21
.LBB1_15:
	li	s0, 0
	bnez	a1, .LBB1_12
.LBB1_16:
	li	a2, 0
	bnez	a0, .LBB1_13
.LBB1_17:
	li	s4, 0
	li	s5, 0
	bnez	a0, .LBB1_20
# %bb.18:
	beqz	a1, .LBB1_20
# %bb.19:
	li	s4, 0
	addi	a2, a2, 8
	srliw	s5, a2, 4
.LBB1_20:
	or	a2, a0, a1
	bnez	a2, .LBB1_22
.LBB1_21:
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	lui	a3, 22
	add	a2, a2, a3
	lw	s5, 416(a2)
.LBB1_22:
	beqz	a1, .LBB1_24
# %bb.23:
	lw	a1, 428(sp)
	slli	a1, a1, 3
	add	a1, s3, a1
	lw	a2, 424(sp)
	ld	a1, 0(a1)
	slli	a2, a2, 1
	add	a1, a1, a2
	lhu	a2, 2(a1)
	lhu	a3, 0(a1)
	lhu	a4, 4(a1)
	lhu	a5, 6(a1)
	slli	a2, a2, 16
	or	a2, a2, a3
	slli	a4, a4, 32
	slli	a5, a5, 48
	or	a4, a5, a4
	or	a2, a4, a2
	sd	a2, 432(sp)
	lhu	a2, 10(a1)
	lhu	a3, 8(a1)
	lhu	a4, 12(a1)
	lhu	a5, 14(a1)
	slli	a2, a2, 16
	or	a2, a2, a3
	slli	a4, a4, 32
	slli	a5, a5, 48
	or	a4, a5, a4
	or	a2, a4, a2
	sd	a2, 440(sp)
	lhu	a2, 18(a1)
	lhu	a3, 16(a1)
	lhu	a4, 20(a1)
	lhu	a5, 22(a1)
	slli	a2, a2, 16
	or	a2, a2, a3
	slli	a4, a4, 32
	slli	a5, a5, 48
	or	a4, a5, a4
	or	a2, a4, a2
	sd	a2, 448(sp)
	lhu	a2, 26(a1)
	lhu	a3, 24(a1)
	lhu	a4, 28(a1)
	lhu	a1, 30(a1)
	slli	a2, a2, 16
	or	a2, a2, a3
	slli	a4, a4, 32
	slli	a1, a1, 48
	or	a1, a1, a4
	or	a1, a1, a2
	sd	a1, 456(sp)
.LBB1_24:
	beqz	a0, .LBB1_27
# %bb.25:
	addi	a0, sp, 464
	addi	a1, sp, 44
	addi	a2, sp, 496
.LBB1_26:                               # =>This Inner Loop Header: Depth=1
	lw	a3, 0(a1)
	slli	a3, a3, 3
	add	a3, s3, a3
	lw	a4, -4(a1)
	ld	a3, 0(a3)
	slli	a4, a4, 1
	add	a3, a3, a4
	lh	a3, 0(a3)
	sh	a3, 0(a0)
	addi	a0, a0, 2
	addi	a1, a1, 24
	bne	a0, a2, .LBB1_26
.LBB1_27:
	lui	s6, %hi(img)
	ld	a0, %lo(img)(s6)
	li	s7, 32
	lui	a1, 1
	addiw	s8, a1, 1750
	addi	s9, sp, 432
	lui	a1, 22
	addiw	s2, a1, 420
	lui	a1, 2
	addiw	s1, a1, -1864
	li	s10, 64
.LBB1_28:                               # =>This Inner Loop Header: Depth=1
	add	a0, a0, s8
	addi	a0, a0, -1054
	addi	a1, sp, 432
	li	a2, 32
	call	memcpy
	add	a1, s9, s7
	ld	a0, %lo(img)(s6)
	lh	a1, 0(a1)
	add	a2, a0, s8
	sh	a1, -542(a2)
	sh	s5, -30(a2)
	sh	a1, -540(a2)
	sh	s5, -28(a2)
	sh	a1, -538(a2)
	sh	s5, -26(a2)
	sh	a1, -536(a2)
	sh	s5, -24(a2)
	sh	a1, -534(a2)
	sh	s5, -22(a2)
	sh	a1, -532(a2)
	sh	s5, -20(a2)
	sh	a1, -530(a2)
	sh	s5, -18(a2)
	sh	a1, -528(a2)
	sh	s5, -16(a2)
	sh	a1, -526(a2)
	sh	s5, -14(a2)
	sh	a1, -524(a2)
	sh	s5, -12(a2)
	sh	a1, -522(a2)
	sh	s5, -10(a2)
	sh	a1, -520(a2)
	sh	s5, -8(a2)
	sh	a1, -518(a2)
	sh	s5, -6(a2)
	sh	a1, -516(a2)
	sh	s5, -4(a2)
	sh	a1, -514(a2)
	sh	s5, -2(a2)
	sh	a1, -512(a2)
	sh	s5, 0(a2)
	addi	s7, s7, 2
	addi	s8, s8, 32
	bne	s7, s10, .LBB1_28
# %bb.29:
	snez	a1, s0
	and	a1, s4, a1
	beqz	a1, .LBB1_36
# %bb.30:
	lw	a1, 428(sp)
	lw	a2, 424(sp)
	slli	a1, a1, 3
	add	a1, s3, a1
	ld	a1, 0(a1)
	slli	a2, a2, 1
	lw	a5, 236(sp)
	add	a1, a1, a2
	lhu	a3, 16(a1)
	lhu	a4, 12(a1)
	slli	a5, a5, 3
	lw	a2, 232(sp)
	lw	a6, 188(sp)
	add	a5, s3, a5
	ld	a5, 0(a5)
	slli	a2, a2, 1
	slli	a6, a6, 3
	add	a6, s3, a6
	lw	a7, 184(sp)
	ld	a6, 0(a6)
	add	a2, a5, a2
	lhu	a5, 0(a2)
	slli	a7, a7, 1
	add	a6, a6, a7
	lhu	a6, 0(a6)
	li	a2, 0
	subw	a3, a3, a4
	lw	a4, 260(sp)
	subw	a5, a5, a6
	lhu	a6, 18(a1)
	lhu	a7, 10(a1)
	slli	a4, a4, 3
	lw	t0, 256(sp)
	lw	t1, 164(sp)
	add	a4, s3, a4
	ld	a4, 0(a4)
	slli	t0, t0, 1
	slli	t1, t1, 3
	add	t1, s3, t1
	lw	t2, 160(sp)
	ld	t1, 0(t1)
	add	a4, a4, t0
	lhu	a4, 0(a4)
	slli	t2, t2, 1
	add	t1, t1, t2
	lhu	t0, 0(t1)
	subw	a6, a6, a7
	slli	a6, a6, 1
	add	a3, a6, a3
	subw	a4, a4, t0
	lhu	a6, 20(a1)
	lhu	a7, 8(a1)
	lw	t0, 284(sp)
	slli	a4, a4, 1
	add	a4, a4, a5
	subw	a5, a6, a7
	slli	t0, t0, 3
	lw	a6, 280(sp)
	lw	a7, 140(sp)
	add	t0, s3, t0
	ld	t0, 0(t0)
	slli	a6, a6, 1
	slli	a7, a7, 3
	add	a7, s3, a7
	lw	t1, 136(sp)
	ld	a7, 0(a7)
	add	a6, t0, a6
	lhu	a6, 0(a6)
	slli	t1, t1, 1
	add	a7, a7, t1
	lhu	a7, 0(a7)
	slli	t0, a5, 1
	add	a5, t0, a5
	add	a3, a5, a3
	subw	a5, a6, a7
	slli	a6, a5, 1
	add	a5, a6, a5
	lw	a6, 308(sp)
	add	a4, a5, a4
	lhu	a5, 22(a1)
	lhu	a7, 6(a1)
	slli	a6, a6, 3
	lw	t0, 304(sp)
	lw	t1, 116(sp)
	add	a6, s3, a6
	ld	a6, 0(a6)
	slli	t0, t0, 1
	slli	t1, t1, 3
	add	t1, s3, t1
	lw	t2, 112(sp)
	ld	t1, 0(t1)
	add	a6, a6, t0
	lhu	a6, 0(a6)
	slli	t2, t2, 1
	add	t1, t1, t2
	lhu	t0, 0(t1)
	subw	a5, a5, a7
	slli	a5, a5, 2
	add	a3, a5, a3
	subw	a5, a6, t0
	lhu	a6, 24(a1)
	lhu	a7, 4(a1)
	slli	a5, a5, 2
	lw	t0, 332(sp)
	add	a4, a5, a4
	subw	a5, a6, a7
	slli	a6, a5, 2
	slli	t0, t0, 3
	lw	a7, 328(sp)
	lw	t1, 92(sp)
	add	t0, s3, t0
	ld	t0, 0(t0)
	slli	a7, a7, 1
	slli	t1, t1, 3
	add	t1, s3, t1
	lw	t2, 88(sp)
	ld	t1, 0(t1)
	add	a7, t0, a7
	lhu	a7, 0(a7)
	slli	t2, t2, 1
	add	t1, t1, t2
	lhu	t0, 0(t1)
	add	a5, a6, a5
	lhu	a6, 26(a1)
	lhu	t1, 2(a1)
	subw	a7, a7, t0
	slli	t0, a7, 2
	add	a7, t0, a7
	subw	a6, a6, t1
	lw	t0, 356(sp)
	li	t1, 6
	mul	a6, a6, t1
	add	a5, a6, a5
	slli	t0, t0, 3
	lw	a6, 352(sp)
	lw	t2, 68(sp)
	add	t0, s3, t0
	ld	t0, 0(t0)
	slli	a6, a6, 1
	slli	t2, t2, 3
	add	t2, s3, t2
	lw	t3, 64(sp)
	ld	t2, 0(t2)
	add	a6, t0, a6
	add	s2, a0, s2
	slli	t3, t3, 1
	add	t2, t2, t3
	lw	t0, 20(sp)
	add	s1, a0, s1
	lhu	a6, 0(a6)
	lhu	t2, 0(t2)
	slli	t0, t0, 3
	add	t0, s3, t0
	add	a3, a5, a3
	subw	a5, a6, t2
	mul	a5, a5, t1
	lw	a6, 380(sp)
	add	a5, a5, a7
	add	a4, a5, a4
	lhu	a5, 28(a1)
	slli	a6, a6, 3
	lw	a7, 376(sp)
	lw	t1, 44(sp)
	add	a6, s3, a6
	ld	a6, 0(a6)
	slli	a7, a7, 1
	slli	t1, t1, 3
	add	t1, s3, t1
	lw	t2, 40(sp)
	ld	t1, 0(t1)
	add	a6, a6, a7
	lhu	a7, 0(a1)
	slli	t2, t2, 1
	add	t1, t1, t2
	lw	t2, 16(sp)
	lhu	a6, 0(a6)
	lhu	t1, 0(t1)
	subw	a5, a5, a7
	slli	a7, a5, 3
	subw	a5, a7, a5
	subw	a6, a6, t1
	slli	a7, a6, 3
	ld	t0, 0(t0)
	lhu	t1, 30(a1)
	lw	a1, 404(sp)
	slli	t2, t2, 1
	add	t0, t0, t2
	lhu	t0, 0(t0)
	slli	a1, a1, 3
	add	a1, s3, a1
	lw	t2, 400(sp)
	ld	a1, 0(a1)
	subw	a6, a7, a6
	subw	a7, t1, t0
	slli	t2, t2, 1
	add	a1, a1, t2
	lhu	t2, 0(a1)
	slli	a7, a7, 3
	add	a5, a7, a5
	add	a3, a5, a3
	subw	a1, t2, t0
	slli	a1, a1, 3
	add	a1, a1, a6
	add	a4, a1, a4
	slli	a1, a3, 2
	add	a1, a1, a3
	addi	a1, a1, 32
	sraiw	a1, a1, 6
	slli	a3, a4, 2
	add	a3, a3, a4
	addi	a3, a3, 32
	sraiw	a3, a3, 6
	add	t1, t2, t1
	slli	t1, t1, 4
	lw	a4, 0(s2)
	slli	a5, a3, 3
	add	t1, t1, a3
	subw	a5, t1, a5
	slli	a6, a1, 3
	subw	a6, a1, a6
	add	a5, a5, a6
	addi	a5, a5, 16
	lui	a6, 2
	addiw	a6, a6, -1832
	li	a7, 16
	j	.LBB1_32
.LBB1_31:                               #   in Loop: Header=BB1_32 Depth=1
	addi	a2, a2, 1
	addi	s1, s1, 32
	add	a5, a5, a3
	beq	a2, a7, .LBB1_36
.LBB1_32:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_34 Depth 2
	slli	t0, a2, 5
	add	t0, t0, a0
	add	t0, t0, a6
	mv	t1, a5
	mv	t2, s1
	j	.LBB1_34
.LBB1_33:                               #   in Loop: Header=BB1_34 Depth=2
	sgtz	t4, t3
	negw	t4, t4
	and	t3, t4, t3
	sh	t3, 0(t2)
	addi	t2, t2, 2
	add	t1, t1, a1
	beq	t2, t0, .LBB1_31
.LBB1_34:                               #   Parent Loop BB1_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sraiw	t3, t1, 31
	srliw	t3, t3, 27
	add	t3, t1, t3
	sraiw	t4, t3, 5
	mv	t3, a4
	blt	a4, t4, .LBB1_33
# %bb.35:                               #   in Loop: Header=BB1_34 Depth=2
	mv	t3, t4
	j	.LBB1_33
.LBB1_36:
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
.LBB1_37:
	li	s4, 0
	addi	a3, a3, 8
	srliw	s5, a3, 4
	or	a2, a0, a1
	bnez	a2, .LBB1_22
	j	.LBB1_21
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
	addiw	a2, a2, 108
	add	a2, a1, a2
	lui	a4, 8
	lw	a3, 12(a1)
	add	a4, a1, a4
	ld	a4, -1192(a4)
	li	a5, 528
	mul	a3, a3, a5
	lw	a5, 44(a2)
	lui	a6, 3
	addiw	s6, a6, 824
	add	s6, a1, s6
	add	a3, a4, a3
	beqz	a5, .LBB2_2
.LBB2_1:
	lui	a4, %hi(FIELD_SCAN)
	addi	a4, a4, %lo(FIELD_SCAN)
	j	.LBB2_5
.LBB2_2:
	lw	a4, 0(a2)
	beqz	a4, .LBB2_4
# %bb.3:
	lw	a4, 424(a3)
	bnez	a4, .LBB2_1
.LBB2_4:
	lui	a4, %hi(SNGL_SCAN)
	addi	a4, a4, %lo(SNGL_SCAN)
.LBB2_5:
	sd	a4, 176(sp)                     # 8-byte Folded Spill
	ld	a6, 1032(s6)
	lw	a4, 272(a2)
	lw	a5, 12(a3)
	ld	a6, 0(a6)
	negw	a3, a4
	li	s3, 0
	bne	a5, a3, .LBB2_7
# %bb.6:
	lw	a3, 332(a2)
	addi	a3, a3, -1
	seqz	s3, a3
.LBB2_7:
	li	a3, 0
	ld	a7, 0(a6)
	sd	a7, 152(sp)                     # 8-byte Folded Spill
	ld	a6, 8(a6)
	sd	a6, 144(sp)                     # 8-byte Folded Spill
	lui	a6, 262144
	addiw	s7, a6, -1
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
	sd	a4, 168(sp)                     # 8-byte Folded Spill
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
	lw	a2, 352(a2)
	slli	a4, a5, 3
	add	a4, a6, a4
	sd	a0, 24(sp)                      # 8-byte Folded Spill
	slli	a5, a0, 9
	sd	t0, 16(sp)                      # 8-byte Folded Spill
	add	a5, a5, t0
	add	a5, a5, a1
	addi	a6, sp, 1272
	addi	a7, sp, 184
	li	t0, 16
	j	.LBB2_9
.LBB2_8:                                #   in Loop: Header=BB2_9 Depth=1
	addi	a3, a3, 1
	addi	a6, a6, 64
	addi	s6, s6, 64
	addi	a5, a5, 32
	beq	a3, t0, .LBB2_14
.LBB2_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_12 Depth 2
	li	t1, 0
	srli	t2, a3, 2
	andi	t4, a3, 3
	and	t3, t2, s7
	slli	t2, a3, 3
	add	t2, a4, t2
	slli	t3, t3, 8
	add	t3, a7, t3
	slli	t4, t4, 4
	mv	t5, a5
	mv	t6, s6
	mv	s0, a6
	j	.LBB2_12
.LBB2_10:                               #   in Loop: Header=BB2_12 Depth=2
	lw	s1, 0(t6)
.LBB2_11:                               #   in Loop: Header=BB2_12 Depth=2
	sw	s1, 0(s0)
	srli	s2, t1, 2
	and	s2, s2, s7
	andi	s4, t1, 3
	slli	s2, s2, 6
	add	s5, t3, t4
	slli	s4, s4, 2
	add	s4, s5, s4
	add	s2, s4, s2
	sw	s1, 0(s2)
	addi	t1, t1, 1
	addi	s0, s0, 4
	addi	t6, t6, 4
	addi	t5, t5, 2
	beq	t1, t0, .LBB2_8
.LBB2_12:                               #   Parent Loop BB2_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bnez	a2, .LBB2_10
# %bb.13:                               #   in Loop: Header=BB2_12 Depth=2
	lw	s1, 168(a1)
	ld	s2, 0(t2)
	add	s1, t1, s1
	slli	s1, s1, 1
	add	s1, s2, s1
	lhu	s1, 0(s1)
	lhu	s2, 0(t5)
	sub	s1, s1, s2
	j	.LBB2_11
.LBB2_14:
	sd	s7, 32(sp)                      # 8-byte Folded Spill
	bnez	s3, .LBB2_20
# %bb.15:
	li	a4, 0
	addi	a0, sp, 216
	addi	a1, sp, 184
	li	a2, 2
.LBB2_16:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_17 Depth 2
	mv	a3, a4
	slli	a4, a4, 8
	add	a4, a4, a1
	addi	a4, a4, 288
	mv	a5, a0
.LBB2_17:                               #   Parent Loop BB2_16 Depth=1
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
	add	s0, t6, t5
	subw	t5, t5, t6
	subw	t6, t2, t3
	add	t2, s0, t4
	subw	t3, t4, s0
	slli	t4, t6, 1
	add	t4, t5, t4
	lw	s0, 0(a5)
	lw	s1, 12(a5)
	lw	s2, 4(a5)
	lw	s4, 8(a5)
	slli	t5, t5, 1
	subw	t5, t6, t5
	add	s5, s1, s0
	add	s6, s4, s2
	subw	s2, s2, s4
	subw	s4, s0, s1
	add	t6, s6, s5
	subw	s0, s5, s6
	slli	s1, s4, 1
	add	s1, s2, s1
	lw	s5, 16(a5)
	lw	s6, 28(a5)
	lw	s7, 20(a5)
	lw	s8, 24(a5)
	slli	s2, s2, 1
	subw	s4, s4, s2
	add	s2, s6, s5
	add	s9, s8, s7
	subw	s8, s7, s8
	subw	s10, s5, s6
	add	s5, s9, s2
	subw	s6, s2, s9
	slli	s7, s10, 1
	add	s7, s8, s7
	slli	s8, s8, 1
	subw	s2, s10, s8
	add	s8, s5, a6
	add	s9, t6, t2
	subw	s10, t2, t6
	subw	s11, a6, s5
	add	ra, s9, s8
	sw	ra, -32(a5)
	subw	s8, s8, s9
	sw	s8, 0(a5)
	slli	s8, s11, 1
	add	s8, s10, s8
	sw	s8, -16(a5)
	slli	s10, s10, 1
	subw	s8, s11, s10
	sw	s8, 16(a5)
	add	s8, s7, t0
	add	s9, s1, t4
	subw	s10, t4, s1
	subw	s11, t0, s7
	add	ra, s9, s8
	sw	ra, -28(a5)
	subw	s8, s8, s9
	sw	s8, 4(a5)
	slli	s8, s11, 1
	add	s8, s10, s8
	sw	s8, -12(a5)
	slli	s10, s10, 1
	subw	s8, s11, s10
	sw	s8, 20(a5)
	add	s8, s6, a7
	add	s9, s0, t3
	subw	s10, t3, s0
	subw	s11, a7, s6
	add	ra, s9, s8
	sw	ra, -24(a5)
	subw	s8, s8, s9
	sw	s8, 8(a5)
	slli	s8, s11, 1
	add	s8, s10, s8
	sw	s8, -8(a5)
	slli	s10, s10, 1
	subw	s8, s11, s10
	sw	s8, 24(a5)
	add	s8, s2, t1
	add	s9, s4, t5
	subw	s10, t5, s4
	subw	s11, t1, s2
	add	ra, s9, s8
	sw	ra, -20(a5)
	subw	s8, s8, s9
	sw	s8, 12(a5)
	slli	s8, s11, 1
	add	s8, s10, s8
	sw	s8, -4(a5)
	slli	s10, s10, 1
	subw	s8, s11, s10
	sw	s8, 28(a5)
	addi	a5, a5, 64
	bne	a5, a4, .LBB2_17
# %bb.18:                               #   in Loop: Header=BB2_16 Depth=1
	addi	a4, a3, 1
	addi	a0, a0, 256
	bgeu	a2, a3, .LBB2_16
# %bb.19:
	sw	a6, 1208(sp)
	sw	a7, 1216(sp)
	sw	t0, 1212(sp)
	sw	t1, 1220(sp)
	sw	t2, 1224(sp)
	sw	t3, 1232(sp)
	sw	t4, 1228(sp)
	sw	t5, 1236(sp)
	sw	t6, 1240(sp)
	sw	s0, 1248(sp)
	sw	s1, 1244(sp)
	sw	s4, 1252(sp)
	sw	s5, 1256(sp)
	sw	s6, 1264(sp)
	sw	s7, 1260(sp)
	sw	s2, 1268(sp)
.LBB2_20:
	lw	a0, 184(sp)
	lw	a1, 248(sp)
	lw	a2, 312(sp)
	lw	a4, 376(sp)
	sw	a0, 1208(sp)
	sw	a1, 1212(sp)
	sw	a2, 1216(sp)
	sw	a4, 1220(sp)
	lw	a3, 440(sp)
	lw	a5, 504(sp)
	lw	a7, 568(sp)
	lw	t0, 632(sp)
	sw	a3, 1224(sp)
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
	lw	s0, 1144(sp)
	sw	t2, 1256(sp)
	sw	t5, 1260(sp)
	sw	t6, 1264(sp)
	sw	s0, 1268(sp)
	bnez	s3, .LBB2_22
# %bb.21:
	add	s1, a4, a0
	add	s2, a2, a1
	subw	a1, a1, a2
	subw	a0, a0, a4
	add	a4, s2, s1
	subw	a2, s1, s2
	add	s1, a1, a0
	subw	a0, a0, a1
	add	a1, t0, a3
	add	s2, a7, a5
	subw	a5, a5, a7
	subw	a3, a3, t0
	add	a7, s2, a1
	subw	t0, a1, s2
	add	s2, a5, a3
	subw	a1, a3, a5
	add	a3, t4, a6
	add	a5, t3, t1
	subw	t1, t1, t3
	subw	a6, a6, t4
	add	t3, a5, a3
	subw	a5, a3, a5
	add	t4, t1, a6
	subw	a3, a6, t1
	add	a6, s0, t2
	add	t1, t6, t5
	subw	t5, t5, t6
	subw	t2, t2, s0
	add	t6, t1, a6
	subw	a6, a6, t1
	add	t1, t5, t2
	subw	t2, t2, t5
	add	t5, t6, a4
	add	s0, t3, a7
	subw	a7, a7, t3
	subw	a4, a4, t6
	add	t3, s0, t5
	sraiw	t3, t3, 1
	sw	t3, 1208(sp)
	subw	t5, t5, s0
	sraiw	t3, t5, 1
	sw	t3, 1240(sp)
	add	t3, a7, a4
	sraiw	t3, t3, 1
	sw	t3, 1224(sp)
	subw	a4, a4, a7
	sraiw	a4, a4, 1
	sw	a4, 1256(sp)
	add	a4, t1, s1
	add	a7, t4, s2
	subw	t3, s2, t4
	subw	t1, s1, t1
	add	t4, a7, a4
	sraiw	t4, t4, 1
	sw	t4, 1212(sp)
	subw	a4, a4, a7
	sraiw	a4, a4, 1
	sw	a4, 1244(sp)
	add	a4, t3, t1
	sraiw	a4, a4, 1
	sw	a4, 1228(sp)
	subw	a4, t1, t3
	sraiw	a4, a4, 1
	sw	a4, 1260(sp)
	add	a4, a6, a2
	add	a7, a5, t0
	subw	a5, t0, a5
	subw	a2, a2, a6
	add	a6, a7, a4
	sraiw	a6, a6, 1
	sw	a6, 1216(sp)
	subw	a4, a4, a7
	sraiw	a4, a4, 1
	sw	a4, 1248(sp)
	add	a4, a5, a2
	sraiw	a4, a4, 1
	sw	a4, 1232(sp)
	subw	a2, a2, a5
	sraiw	a2, a2, 1
	sw	a2, 1264(sp)
	add	a2, t2, a0
	add	a4, a3, a1
	subw	a1, a1, a3
	subw	a0, a0, t2
	add	a3, a4, a2
	sraiw	a3, a3, 1
	sw	a3, 1220(sp)
	subw	a2, a2, a4
	sraiw	a2, a2, 1
	sw	a2, 1252(sp)
	add	a2, a1, a0
	sraiw	a2, a2, 1
	sw	a2, 1236(sp)
	subw	a0, a0, a1
	sraiw	a0, a0, 1
	sw	a0, 1268(sp)
.LBB2_22:
	li	s5, 0
	li	s0, 0
	ld	a0, 128(sp)                     # 8-byte Folded Reload
	addi	a1, a0, 15
	sd	a1, 160(sp)                     # 8-byte Folded Spill
	addi	a0, a0, 16
	sd	a0, 112(sp)                     # 8-byte Folded Spill
	li	s8, -1
	addi	s6, sp, 1208
	lui	s7, %hi(input)
	lui	s9, %hi(img)
	lui	a0, 1
	addiw	s10, a0, -2033
	li	s11, 10
	li	s4, 16
	j	.LBB2_24
.LBB2_23:                               #   in Loop: Header=BB2_24 Depth=1
	lw	a1, 0(s2)
	addi	s5, s5, 1
	mv	a0, s1
	call	sign
	sw	a0, 0(s2)
	beq	s5, s4, .LBB2_36
.LBB2_24:                               # =>This Inner Loop Header: Depth=1
	slli	a0, s5, 1
	ld	a1, 176(sp)                     # 8-byte Folded Reload
	add	a0, a1, a0
	lbu	a1, 1(a0)
	lbu	a0, 0(a0)
	slli	a1, a1, 4
	add	a1, s6, a1
	slli	a0, a0, 2
	add	s2, a1, a0
	lw	a1, 0(s2)
	sraiw	a0, a1, 31
	xor	s1, a1, a0
	subw	s1, s1, a0
	beqz	s3, .LBB2_30
# %bb.25:                               #   in Loop: Header=BB2_24 Depth=1
	ld	a0, %lo(input)(s7)
	addi	a0, a0, 2047
	lw	a0, 937(a0)
	beqz	a0, .LBB2_31
.LBB2_26:                               #   in Loop: Header=BB2_24 Depth=1
	addi	s8, s8, 1
	beqz	s1, .LBB2_28
.LBB2_27:                               #   in Loop: Header=BB2_24 Depth=1
	mv	a0, s1
	call	sign
	slli	a1, s0, 2
	ld	a2, 152(sp)                     # 8-byte Folded Reload
	add	a2, a2, a1
	sw	a0, 0(a2)
	ld	a0, 144(sp)                     # 8-byte Folded Reload
	add	a1, a0, a1
	sw	s8, 0(a1)
	addiw	s0, s0, 1
	li	s8, -1
.LBB2_28:                               #   in Loop: Header=BB2_24 Depth=1
	beqz	s3, .LBB2_23
# %bb.29:                               #   in Loop: Header=BB2_24 Depth=1
	addi	s5, s5, 1
	bne	s5, s4, .LBB2_24
	j	.LBB2_38
.LBB2_30:                               #   in Loop: Header=BB2_24 Depth=1
	ld	a0, 168(sp)                     # 8-byte Folded Reload
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
	ld	a0, %lo(input)(s7)
	addi	a0, a0, 2047
	lw	a0, 937(a0)
	bnez	a0, .LBB2_26
.LBB2_31:                               #   in Loop: Header=BB2_24 Depth=1
	mv	a0, s1
	blt	s1, s10, .LBB2_33
# %bb.32:                               #   in Loop: Header=BB2_24 Depth=1
	mv	a0, s10
.LBB2_33:                               #   in Loop: Header=BB2_24 Depth=1
	ld	a2, %lo(img)(s9)
	lw	a2, 40(a2)
	blt	a2, s11, .LBB2_35
# %bb.34:                               #   in Loop: Header=BB2_24 Depth=1
	mv	a0, s1
.LBB2_35:                               #   in Loop: Header=BB2_24 Depth=1
	mv	s1, a0
	addi	s8, s8, 1
	bnez	a0, .LBB2_27
	j	.LBB2_28
.LBB2_36:
	slli	s0, s0, 2
	ld	a0, 152(sp)                     # 8-byte Folded Reload
	add	s0, a0, s0
	sw	zero, 0(s0)
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
	bge	t4, t0, .LBB2_39
# %bb.37:
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
	j	.LBB2_40
.LBB2_38:
	slli	s0, s0, 2
	ld	a0, 152(sp)                     # 8-byte Folded Reload
	add	s0, a0, s0
	sw	zero, 0(s0)
	j	.LBB2_50
.LBB2_39:
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
.LBB2_40:
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
	bge	t0, t3, .LBB2_42
# %bb.41:
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
	j	.LBB2_43
.LBB2_42:
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
.LBB2_43:
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
	bge	t0, t3, .LBB2_45
# %bb.44:
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
	j	.LBB2_46
.LBB2_45:
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
.LBB2_46:
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
	bge	t0, t3, .LBB2_48
# %bb.47:
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
	j	.LBB2_49
.LBB2_48:
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
.LBB2_49:
	sw	a0, 1144(sp)
.LBB2_50:
	li	a3, 0
	sd	zero, 152(sp)                   # 8-byte Folded Spill
	li	a0, 1
	ld	a1, 160(sp)                     # 8-byte Folded Reload
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
	j	.LBB2_52
.LBB2_51:                               #   in Loop: Header=BB2_52 Depth=1
	ld	a3, 40(sp)                      # 8-byte Folded Reload
	addi	a3, a3, 1
	li	a0, 4
	beq	a3, a0, .LBB2_71
.LBB2_52:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_55 Depth 2
                                        #       Child Loop BB2_57 Depth 3
	li	a4, 0
	slli	a0, a3, 8
	andi	a1, a3, 2
	sd	a1, 64(sp)                      # 8-byte Folded Spill
	slli	a1, a3, 1
	andi	a1, a1, 2
	sd	a1, 56(sp)                      # 8-byte Folded Spill
	sd	a3, 40(sp)                      # 8-byte Folded Spill
	slli	a3, a3, 2
	sd	a3, 144(sp)                     # 8-byte Folded Spill
	addi	a1, sp, 184
	add	a0, a1, a0
	sd	a0, 48(sp)                      # 8-byte Folded Spill
	j	.LBB2_55
.LBB2_53:                               #   in Loop: Header=BB2_55 Depth=2
	slli	s8, s8, 2
	add	s6, s6, s8
	sw	zero, 0(s6)
.LBB2_54:                               #   in Loop: Header=BB2_55 Depth=2
	ld	a4, 72(sp)                      # 8-byte Folded Reload
	addi	a4, a4, 1
	li	a0, 4
	beq	a4, a0, .LBB2_51
.LBB2_55:                               #   Parent Loop BB2_52 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_57 Depth 3
	slli	s0, a4, 6
	ld	a0, 48(sp)                      # 8-byte Folded Reload
	add	s0, a0, s0
	lwu	a0, 60(s0)
	lwu	a1, 56(s0)
	slli	a0, a0, 32
	lwu	a2, 52(s0)
	or	a0, a0, a1
	lwu	a1, 48(s0)
	sd	a0, 1264(sp)
	slli	a2, a2, 32
	lwu	a0, 44(s0)
	or	a1, a2, a1
	lwu	a2, 40(s0)
	sd	a1, 1256(sp)
	slli	a0, a0, 32
	lwu	a1, 36(s0)
	or	a0, a0, a2
	lwu	a2, 32(s0)
	sd	a0, 1248(sp)
	slli	a1, a1, 32
	lwu	a0, 28(s0)
	or	a1, a1, a2
	lwu	a2, 24(s0)
	sd	a1, 1240(sp)
	slli	a0, a0, 32
	lwu	a1, 20(s0)
	or	a0, a0, a2
	sd	a0, 1232(sp)
	lwu	a0, 16(s0)
	slli	a1, a1, 32
	lwu	a2, 12(s0)
	lwu	a3, 8(s0)
	or	a0, a1, a0
	sd	a0, 1224(sp)
	slli	a2, a2, 32
	or	a2, a2, a3
	lwu	a0, 4(s0)
	lwu	a1, 0(s0)
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
	li	s8, 0
	ld	s6, 0(a0)
	ld	s1, 8(a0)
	sd	a4, 72(sp)                      # 8-byte Folded Spill
	slli	s11, a4, 2
	li	s5, -1
	li	s7, 1
	j	.LBB2_57
.LBB2_56:                               #   in Loop: Header=BB2_57 Depth=3
	addi	s7, s7, 1
	li	a0, 16
	beq	s7, a0, .LBB2_53
.LBB2_57:                               #   Parent Loop BB2_52 Depth=1
                                        #     Parent Loop BB2_55 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli	a0, s7, 1
	ld	a1, 176(sp)                     # 8-byte Folded Reload
	add	a0, a1, a0
	lbu	s10, 1(a0)
	lbu	s4, 0(a0)
	slli	a0, s10, 4
	addi	a1, sp, 1208
	add	a0, a1, a0
	slli	s9, s4, 2
	add	s9, a0, s9
	lw	a1, 0(s9)
	sraiw	a0, a1, 31
	xor	a1, a1, a0
	subw	s2, a1, a0
	bnez	s3, .LBB2_59
# %bb.58:                               #   in Loop: Header=BB2_57 Depth=3
	slli	a2, s4, 3
	ld	a3, 168(sp)                     # 8-byte Folded Reload
	add	a3, a3, a2
	ld	a3, 0(a3)
	ld	a4, 136(sp)                     # 8-byte Folded Reload
	add	a2, a4, a2
	ld	a2, 0(a2)
	slli	a4, s10, 2
	add	a3, a3, a4
	lw	a3, 0(a3)
	add	a2, a2, a4
	lw	a2, 0(a2)
	mul	a3, a3, s2
	add	a2, a2, a3
	ld	a3, 160(sp)                     # 8-byte Folded Reload
	sraw	s2, a2, a3
.LBB2_59:                               #   in Loop: Header=BB2_57 Depth=3
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	lui	a3, 22
	add	a3, a2, a3
	lw	a3, 100(a3)
	addi	s5, s5, 1
	beqz	a3, .LBB2_62
# %bb.60:                               #   in Loop: Header=BB2_57 Depth=3
	seqz	a3, s2
	or	a3, s3, a3
	beqz	a3, .LBB2_64
# %bb.61:                               #   in Loop: Header=BB2_57 Depth=3
	ld	a0, 144(sp)                     # 8-byte Folded Reload
	add	a0, a0, s10
	slli	a0, a0, 6
	add	a0, a2, a0
	add	a1, s11, s4
	slli	a1, a1, 2
	lui	a2, 4
	add	a1, a1, a2
	add	a0, a0, a1
	sw	zero, -184(a0)
.LBB2_62:                               #   in Loop: Header=BB2_57 Depth=3
	bnez	s2, .LBB2_65
# %bb.63:                               #   in Loop: Header=BB2_57 Depth=3
	bnez	s3, .LBB2_56
	j	.LBB2_66
.LBB2_64:                               #   in Loop: Header=BB2_57 Depth=3
	slli	a3, s4, 3
	ld	a4, 168(sp)                     # 8-byte Folded Reload
	add	a3, a4, a3
	ld	a3, 0(a3)
	slli	a4, s10, 2
	add	a3, a3, a4
	lw	a3, 0(a3)
	lui	a4, %hi(AdaptRndWeight)
	lw	a4, %lo(AdaptRndWeight)(a4)
	subw	a1, a1, a0
	mul	a0, a3, a1
	ld	a1, 160(sp)                     # 8-byte Folded Reload
	sllw	a1, s2, a1
	subw	a0, a0, a1
	mul	a0, a0, a4
	ld	a1, 104(sp)                     # 8-byte Folded Reload
	add	a0, a0, a1
	ld	a1, 112(sp)                     # 8-byte Folded Reload
	sraw	a0, a0, a1
	ld	a1, 144(sp)                     # 8-byte Folded Reload
	add	a1, a1, s10
	slli	a1, a1, 6
	add	a1, a2, a1
	add	a2, s11, s4
	slli	a2, a2, 2
	lui	a3, 4
	add	a2, a2, a3
	add	a1, a1, a2
	sw	a0, -184(a1)
.LBB2_65:                               #   in Loop: Header=BB2_57 Depth=3
	lw	a1, 0(s9)
	mv	a0, s2
	call	sign
	slli	a1, s8, 2
	add	a2, s6, a1
	sw	a0, 0(a2)
	add	a1, s1, a1
	sw	s5, 0(a1)
	addiw	s8, s8, 1
	li	a0, 15
	sd	a0, 152(sp)                     # 8-byte Folded Spill
	li	s5, -1
	bnez	s3, .LBB2_56
.LBB2_66:                               #   in Loop: Header=BB2_57 Depth=3
	lw	a1, 0(s9)
	mv	a0, s2
	call	sign
	slli	s4, s4, 3
	ld	a1, 120(sp)                     # 8-byte Folded Reload
	add	s4, a1, s4
	ld	a1, 0(s4)
	slli	s10, s10, 2
	add	a1, a1, s10
	lw	a1, 0(a1)
	mul	a0, a1, a0
	ld	a1, 128(sp)                     # 8-byte Folded Reload
	li	a2, 4
	blt	a1, a2, .LBB2_68
# %bb.67:                               #   in Loop: Header=BB2_57 Depth=3
	ld	a1, 96(sp)                      # 8-byte Folded Reload
	sllw	a0, a0, a1
	addi	s7, s7, 1
	sw	a0, 0(s9)
	li	a0, 16
	bne	s7, a0, .LBB2_57
	j	.LBB2_69
.LBB2_68:                               #   in Loop: Header=BB2_57 Depth=3
	ld	a1, 88(sp)                      # 8-byte Folded Reload
	add	a0, a0, a1
	ld	a1, 80(sp)                      # 8-byte Folded Reload
	sraw	a0, a0, a1
	addi	s7, s7, 1
	sw	a0, 0(s9)
	li	a0, 16
	bne	s7, a0, .LBB2_57
.LBB2_69:                               #   in Loop: Header=BB2_55 Depth=2
	slli	s8, s8, 2
	add	s6, s6, s8
	sw	zero, 0(s6)
	bnez	s3, .LBB2_54
# %bb.70:                               #   in Loop: Header=BB2_55 Depth=2
	lw	a0, 1208(sp)
	lw	a1, 1216(sp)
	lw	a2, 1212(sp)
	lw	a3, 1220(sp)
	add	a4, a1, a0
	subw	a0, a0, a1
	srli	a1, a2, 1
	subw	a1, a1, a3
	srli	a3, a3, 1
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
	sw	a4, 1220(sp)
	lw	a2, 1228(sp)
	lw	a3, 1236(sp)
	add	a4, a1, a0
	subw	a0, a0, a1
	srli	a1, a2, 1
	subw	a1, a1, a3
	srli	a3, a3, 1
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
	sw	a4, 1236(sp)
	lw	a2, 1244(sp)
	lw	a3, 1252(sp)
	add	a4, a1, a0
	subw	a0, a0, a1
	srli	a1, a2, 1
	subw	a1, a1, a3
	srai	a3, a3, 1
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
	sw	a4, 1252(sp)
	lw	a2, 1260(sp)
	lw	a4, 1268(sp)
	add	a5, a1, a0
	subw	a0, a0, a1
	srai	a1, a2, 1
	subw	a1, a1, a4
	srai	a4, a4, 1
	add	a2, a4, a2
	add	a4, a2, a5
	sw	a4, 1256(sp)
	add	a6, a1, a0
	sw	a6, 1260(sp)
	subw	a0, a0, a1
	sw	a0, 1264(sp)
	lw	a1, 1208(sp)
	subw	a5, a5, a2
	lw	a2, 1224(sp)
	sw	a5, 1268(sp)
	add	a5, a3, a1
	subw	a1, a1, a3
	srli	a3, a2, 1
	subw	a3, a3, a4
	sraiw	a4, a4, 1
	add	a2, a4, a2
	add	a4, a2, a5
	sw	a4, 0(s0)
	add	a4, a3, a1
	sw	a4, 16(s0)
	subw	a1, a1, a3
	sw	a1, 32(s0)
	lw	a1, 1212(sp)
	lw	a3, 1244(sp)
	subw	a5, a5, a2
	lw	a2, 1228(sp)
	sw	a5, 48(s0)
	add	a4, a3, a1
	subw	a1, a1, a3
	srli	a3, a2, 1
	subw	a3, a3, a6
	sraiw	a5, a6, 1
	add	a2, a5, a2
	add	a5, a2, a4
	sw	a5, 4(s0)
	add	a5, a3, a1
	sw	a5, 20(s0)
	subw	a1, a1, a3
	sw	a1, 36(s0)
	lw	a1, 1216(sp)
	lw	a3, 1248(sp)
	subw	a4, a4, a2
	lw	a2, 1232(sp)
	sw	a4, 52(s0)
	add	a4, a3, a1
	subw	a1, a1, a3
	srli	a3, a2, 1
	subw	a3, a3, a0
	sraiw	a0, a0, 1
	add	a0, a0, a2
	add	a2, a0, a4
	sw	a2, 8(s0)
	add	a2, a3, a1
	sw	a2, 24(s0)
	subw	a1, a1, a3
	sw	a1, 40(s0)
	subw	a4, a4, a0
	lw	a0, 1220(sp)
	lw	a1, 1252(sp)
	sw	a4, 56(s0)
	lw	a2, 1236(sp)
	lw	a3, 1268(sp)
	add	a4, a1, a0
	subw	a0, a0, a1
	srli	a1, a2, 1
	subw	a1, a1, a3
	srli	a3, a3, 1
	add	a2, a3, a2
	add	a3, a2, a4
	sw	a3, 12(s0)
	add	a3, a1, a0
	sw	a3, 28(s0)
	subw	a0, a0, a1
	sw	a0, 44(s0)
	subw	a4, a4, a2
	sw	a4, 60(s0)
	j	.LBB2_54
.LBB2_71:
	lui	a0, %hi(img)
	ld	a1, %lo(img)(a0)
	lui	a0, 22
	addiw	a0, a0, 460
	add	a0, a1, a0
	lw	a2, 0(a0)
	beqz	a2, .LBB2_75
# %bb.72:
	lui	a2, 3
	addiw	a2, a2, 824
	add	a2, a1, a2
	li	a3, 0
	beqz	s3, .LBB2_77
# %bb.73:                               # %.preheader4
	addi	a2, a2, 32
	addi	a4, sp, 184
	li	a5, 16
	ld	t0, 32(sp)                      # 8-byte Folded Reload
.LBB2_74:                               # =>This Inner Loop Header: Depth=1
	srli	a6, a3, 2
	andi	a7, a3, 3
	and	a6, a6, t0
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
	bne	a3, a5, .LBB2_74
	j	.LBB2_81
.LBB2_75:                               # %.preheader2
	addi	a2, sp, 1400
	addi	a3, sp, 312
	addi	a4, sp, 2047
	addi	a4, a4, 377
.LBB2_76:                               # =>This Inner Loop Header: Depth=1
	lw	a5, -116(a3)
	lw	a6, -120(a3)
	lw	a7, -124(a3)
	lw	t0, -128(a3)
	sw	a5, -116(a2)
	sw	a6, -120(a2)
	sw	a7, -124(a2)
	sw	t0, -128(a2)
	lw	a5, -112(a3)
	lw	a6, -108(a3)
	lw	a7, -104(a3)
	lw	t0, -100(a3)
	sw	a5, -64(a2)
	sw	a6, -60(a2)
	sw	a7, -56(a2)
	sw	t0, -52(a2)
	lw	a5, -96(a3)
	lw	a6, -92(a3)
	lw	a7, -88(a3)
	lw	t0, -84(a3)
	sw	a5, 0(a2)
	sw	a6, 4(a2)
	sw	a7, 8(a2)
	sw	t0, 12(a2)
	lw	a5, -68(a3)
	lw	a6, -72(a3)
	lw	a7, -76(a3)
	lw	t0, -80(a3)
	sw	a5, 76(a2)
	sw	a6, 72(a2)
	sw	a7, 68(a2)
	sw	t0, 64(a2)
	lw	a5, -64(a3)
	lw	a6, -60(a3)
	lw	a7, -56(a3)
	lw	t0, -52(a3)
	sw	a5, -112(a2)
	sw	a6, -108(a2)
	sw	a7, -104(a2)
	sw	t0, -100(a2)
	lw	a5, -48(a3)
	lw	a6, -44(a3)
	lw	a7, -40(a3)
	lw	t0, -36(a3)
	sw	a5, -48(a2)
	sw	a6, -44(a2)
	sw	a7, -40(a2)
	sw	t0, -36(a2)
	lw	a5, -20(a3)
	lw	a6, -24(a3)
	lw	a7, -28(a3)
	lw	t0, -32(a3)
	sw	a5, 28(a2)
	sw	a6, 24(a2)
	sw	a7, 20(a2)
	sw	t0, 16(a2)
	lw	a5, -4(a3)
	lw	a6, -8(a3)
	lw	a7, -12(a3)
	lw	t0, -16(a3)
	sw	a5, 92(a2)
	sw	a6, 88(a2)
	sw	a7, 84(a2)
	sw	t0, 80(a2)
	lw	a5, 12(a3)
	lw	a6, 8(a3)
	lw	a7, 4(a3)
	lw	t0, 0(a3)
	sw	a5, -84(a2)
	sw	a6, -88(a2)
	sw	a7, -92(a2)
	sw	t0, -96(a2)
	lw	a5, 28(a3)
	lw	a6, 24(a3)
	lw	a7, 20(a3)
	lw	t0, 16(a3)
	sw	a5, -20(a2)
	sw	a6, -24(a2)
	sw	a7, -28(a2)
	sw	t0, -32(a2)
	lw	a5, 44(a3)
	lw	a6, 40(a3)
	lw	a7, 36(a3)
	lw	t0, 32(a3)
	sw	a5, 44(a2)
	sw	a6, 40(a2)
	sw	a7, 36(a2)
	sw	t0, 32(a2)
	lw	a5, 60(a3)
	lw	a6, 56(a3)
	lw	a7, 52(a3)
	lw	t0, 48(a3)
	sw	a5, 108(a2)
	sw	a6, 104(a2)
	sw	a7, 100(a2)
	sw	t0, 96(a2)
	lw	a5, 76(a3)
	lw	a6, 72(a3)
	lw	a7, 68(a3)
	lw	t0, 64(a3)
	sw	a5, -68(a2)
	sw	a6, -72(a2)
	sw	a7, -76(a2)
	sw	t0, -80(a2)
	lw	a5, 92(a3)
	lw	a6, 88(a3)
	lw	a7, 84(a3)
	lw	t0, 80(a3)
	sw	a5, -4(a2)
	sw	a6, -8(a2)
	sw	a7, -12(a2)
	sw	t0, -16(a2)
	lw	a5, 108(a3)
	lw	a6, 104(a3)
	lw	a7, 100(a3)
	lw	t0, 96(a3)
	sw	a5, 60(a2)
	sw	a6, 56(a2)
	sw	a7, 52(a2)
	sw	t0, 48(a2)
	lw	a5, 124(a3)
	lw	a6, 120(a3)
	lw	a7, 116(a3)
	lw	t0, 112(a3)
	sw	a5, 124(a2)
	sw	a6, 120(a2)
	sw	a7, 116(a2)
	sw	t0, 112(a2)
	addi	a2, a2, 256
	addi	a3, a3, 256
	bne	a2, a4, .LBB2_76
	j	.LBB2_81
.LBB2_77:                               # %.preheader6
	addi	a4, sp, 184
	li	a5, 16
	ld	t5, 32(sp)                      # 8-byte Folded Reload
.LBB2_78:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_79 Depth 2
	li	a6, 0
	srli	a7, a3, 2
	andi	t0, a3, 3
	and	a7, a7, t5
	slli	a7, a7, 8
	add	a7, a4, a7
	slli	t0, t0, 4
	mv	t1, a2
.LBB2_79:                               #   Parent Loop BB2_78 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srli	t2, a6, 2
	and	t2, t2, t5
	andi	t3, a6, 3
	slli	t2, t2, 6
	add	t4, a7, t0
	slli	t3, t3, 2
	add	t3, t4, t3
	add	t2, t3, t2
	lw	t2, 0(t2)
	addi	t2, t2, 32
	sraiw	t2, t2, 6
	sw	t2, 0(t1)
	addi	a6, a6, 1
	addi	t1, t1, 4
	bne	a6, a5, .LBB2_79
# %bb.80:                               #   in Loop: Header=BB2_78 Depth=1
	addi	a3, a3, 1
	addi	a2, a2, 64
	bne	a3, a5, .LBB2_78
.LBB2_81:
	lw	a0, 0(a0)
	beqz	a0, .LBB2_83
.LBB2_82:
	ld	a0, 152(sp)                     # 8-byte Folded Reload
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
.LBB2_83:
	beqz	s3, .LBB2_90
# %bb.84:
	lui	a0, %hi(enc_picture)
	ld	a2, %lo(enc_picture)(a0)
	li	a0, 0
	lui	a3, 2
	add	a2, a2, a3
	ld	a2, -1768(a2)
	ld	a3, 24(sp)                      # 8-byte Folded Reload
	slli	a3, a3, 9
	ld	a4, 16(sp)                      # 8-byte Folded Reload
	add	a3, a3, a4
	add	a3, a1, a3
	addi	a4, sp, 1272
	lui	a5, %hi(lrec)
	li	a6, 3
	li	a7, -16
	li	t0, 16
	j	.LBB2_86
.LBB2_85:                               #   in Loop: Header=BB2_86 Depth=1
	addi	a0, a0, 1
	addi	a3, a3, 32
	addi	a4, a4, 64
	beq	a0, t0, .LBB2_82
.LBB2_86:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_88 Depth 2
	lw	t1, 156(a1)
	addw	t1, t1, a0
	slli	t3, t1, 3
	add	t1, a2, t3
	ld	t4, %lo(lrec)(a5)
	ld	t1, 0(t1)
	li	t2, 0
	add	t3, t4, t3
	mv	t4, a4
	mv	t5, a3
	j	.LBB2_88
.LBB2_87:                               #   in Loop: Header=BB2_88 Depth=2
	addi	t2, t2, 1
	addi	t5, t5, 2
	addi	t4, t4, 4
	beq	t2, t0, .LBB2_85
.LBB2_88:                               #   Parent Loop BB2_86 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lh	t6, 0(t4)
	lh	s0, 0(t5)
	lw	s1, 152(a1)
	add	s0, s0, t6
	lw	s2, 24(a1)
	add	t6, t2, s1
	slli	s1, t6, 1
	add	s1, t1, s1
	sh	s0, 0(s1)
	bne	s2, a6, .LBB2_87
# %bb.89:                               #   in Loop: Header=BB2_88 Depth=2
	ld	s0, 0(t3)
	slli	t6, t6, 2
	add	t6, s0, t6
	sw	a7, 0(t6)
	j	.LBB2_87
.LBB2_90:                               # %.preheader
	li	s0, 0
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	slli	a0, a0, 9
	ld	a2, 16(sp)                      # 8-byte Folded Reload
	add	s1, a0, a2
	addi	s2, sp, 1272
	lui	s3, %hi(enc_picture)
	lui	s4, 2
	lui	s5, %hi(img)
	li	s6, 3
	lui	s7, %hi(lrec)
	li	s8, -16
	li	s9, 16
	j	.LBB2_92
.LBB2_91:                               #   in Loop: Header=BB2_92 Depth=1
	addi	s0, s0, 1
	ld	s1, 176(sp)                     # 8-byte Folded Reload
	addi	s1, s1, 32
	ld	s2, 168(sp)                     # 8-byte Folded Reload
	addi	s2, s2, 64
	beq	s0, s9, .LBB2_82
.LBB2_92:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_94 Depth 2
	lw	a0, 156(a1)
	li	s10, 0
	addw	a0, a0, s0
	slli	s11, a0, 3
	sd	s2, 168(sp)                     # 8-byte Folded Spill
	sd	s1, 176(sp)                     # 8-byte Folded Spill
	j	.LBB2_94
.LBB2_93:                               #   in Loop: Header=BB2_94 Depth=2
	addi	s10, s10, 1
	addi	s1, s1, 2
	addi	s2, s2, 4
	beq	s10, s9, .LBB2_91
.LBB2_94:                               #   Parent Loop BB2_92 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	a1, a1, s1
	lhu	a0, 0(a1)
	lw	a1, 0(s2)
	slli	a0, a0, 6
	add	a0, a1, a0
	addi	a0, a0, 32
	srai	a0, a0, 6
	call	clip1a
	ld	a1, %lo(enc_picture)(s3)
	add	a2, a1, s4
	ld	a1, %lo(img)(s5)
	ld	a2, -1768(a2)
	lw	a3, 152(a1)
	add	a2, a2, s11
	ld	a4, 0(a2)
	lw	a5, 24(a1)
	add	a2, s10, a3
	slli	a3, a2, 1
	add	a3, a4, a3
	sh	a0, 0(a3)
	bne	a5, s6, .LBB2_93
# %bb.95:                               #   in Loop: Header=BB2_94 Depth=2
	ld	a0, %lo(lrec)(s7)
	add	a0, a0, s11
	ld	a0, 0(a0)
	slli	a2, a2, 2
	add	a0, a0, a2
	sw	s8, 0(a0)
	j	.LBB2_93
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
	sd	a3, 48(sp)                      # 8-byte Folded Spill
	sd	a2, 80(sp)                      # 8-byte Folded Spill
	srli	a2, a1, 2
	andi	a3, a2, -2
	srli	a2, a0, 3
	add	a2, a3, a2
	sd	a1, 64(sp)                      # 8-byte Folded Spill
	srli	a1, a1, 1
	andi	a4, a1, 2
	sd	a0, 56(sp)                      # 8-byte Folded Spill
	slli	a1, a0, 61
	srli	a1, a1, 63
	lui	a3, %hi(img)
	ld	a3, %lo(img)(a3)
	or	a4, a4, a1
	lui	a0, 22
	addiw	a1, a0, 108
	add	a1, a3, a1
	lui	a0, 3
	addiw	a0, a0, 824
	add	a0, a3, a0
	ld	a5, 1024(a0)
	lui	a6, 8
	add	a6, a3, a6
	slli	a2, a2, 3
	add	a2, a5, a2
	ld	a2, 0(a2)
	slli	a4, a4, 3
	ld	a5, -1192(a6)
	lw	a3, 12(a3)
	lw	a6, 44(a1)
	add	a2, a2, a4
	li	a4, 528
	mul	a3, a3, a4
	add	a3, a5, a3
	beqz	a6, .LBB3_2
.LBB3_1:
	lui	a4, %hi(FIELD_SCAN)
	addi	a4, a4, %lo(FIELD_SCAN)
	j	.LBB3_5
.LBB3_2:
	lw	a4, 0(a1)
	beqz	a4, .LBB3_4
# %bb.3:
	lw	a4, 424(a3)
	bnez	a4, .LBB3_1
.LBB3_4:
	lui	a4, %hi(SNGL_SCAN)
	addi	a4, a4, %lo(SNGL_SCAN)
.LBB3_5:
	sd	a4, 112(sp)                     # 8-byte Folded Spill
	lw	a4, 272(a1)
	lw	a3, 12(a3)
	ld	a2, 0(a2)
	negw	a5, a4
	li	s5, 0
	bne	a3, a5, .LBB3_7
# %bb.6:
	lw	a1, 332(a1)
	addi	a1, a1, -1
	seqz	s5, a1
.LBB3_7:
	ld	a1, 0(a2)
	sd	a1, 88(sp)                      # 8-byte Folded Spill
	ld	a1, 8(a2)
	sd	a1, 72(sp)                      # 8-byte Folded Spill
	addw	a3, a4, a3
	lui	a1, 174763
	addiw	a1, a1, -1365
	mul	a1, a3, a1
	srli	a2, a1, 63
	srli	a1, a1, 32
	lui	a4, %hi(LevelScale4x4Luma)
	ld	a4, %lo(LevelScale4x4Luma)(a4)
	addw	a6, a1, a2
	li	a1, 6
	ld	a2, 48(sp)                      # 8-byte Folded Reload
	slli	a2, a2, 3
	add	a4, a4, a2
	ld	a4, 0(a4)
	mul	a1, a6, a1
	subw	a3, a3, a1
	slli	a3, a3, 3
	add	a4, a4, a3
	lui	a1, %hi(LevelOffset4x4Luma)
	ld	a1, %lo(LevelOffset4x4Luma)(a1)
	lui	a5, %hi(InvLevelScale4x4Luma)
	ld	a5, %lo(InvLevelScale4x4Luma)(a5)
	ld	a4, 0(a4)
	sd	a4, 96(sp)                      # 8-byte Folded Spill
	add	a1, a1, a2
	ld	a1, 0(a1)
	add	a2, a5, a2
	ld	a2, 0(a2)
	slli	a4, a6, 3
	add	a1, a1, a4
	ld	a1, 0(a1)
	sd	a1, 40(sp)                      # 8-byte Folded Spill
	add	a2, a2, a3
	ld	a1, 0(a2)
	sd	a1, 24(sp)                      # 8-byte Folded Spill
	sd	a6, 32(sp)                      # 8-byte Folded Spill
	addi	a6, a6, 15
	sd	a6, 104(sp)                     # 8-byte Folded Spill
	bnez	s5, .LBB3_9
# %bb.8:
	lw	a1, 0(a0)
	lw	a2, 12(a0)
	lw	a3, 4(a0)
	lw	a4, 8(a0)
	add	a5, a2, a1
	add	a6, a4, a3
	subw	a4, a3, a4
	subw	a1, a1, a2
	add	a3, a6, a5
	subw	a2, a5, a6
	sw	a2, 128(sp)
	slli	a2, a4, 1
	subw	a2, a1, a2
	sw	a2, 132(sp)
	lw	a2, 64(a0)
	lw	a5, 76(a0)
	lw	a6, 68(a0)
	lw	a7, 72(a0)
	slli	a1, a1, 1
	add	a4, a4, a1
	add	a1, a5, a2
	add	t0, a7, a6
	subw	a6, a6, a7
	subw	a5, a2, a5
	add	a7, t0, a1
	subw	a2, a1, t0
	slli	a1, a5, 1
	add	t0, a6, a1
	lw	t1, 128(a0)
	lw	t2, 140(a0)
	lw	t3, 132(a0)
	lw	t4, 136(a0)
	slli	a6, a6, 1
	subw	a1, a5, a6
	add	a5, t2, t1
	add	a6, t4, t3
	subw	t3, t3, t4
	subw	t1, t1, t2
	add	t2, a6, a5
	subw	a5, a5, a6
	slli	a6, t1, 1
	add	a6, t3, a6
	lw	t4, 192(a0)
	lw	t5, 204(a0)
	lw	t6, 196(a0)
	lw	s0, 200(a0)
	slli	t3, t3, 1
	subw	a0, t1, t3
	add	t1, t5, t4
	add	t3, s0, t6
	subw	t6, t6, s0
	subw	t4, t4, t5
	add	t5, t3, t1
	subw	t1, t1, t3
	slli	t3, t4, 1
	add	t3, t6, t3
	slli	t6, t6, 1
	subw	t4, t4, t6
	add	t6, t5, a3
	add	s0, t2, a7
	subw	a7, a7, t2
	subw	a3, a3, t5
	add	t2, s0, t6
	sw	t2, 120(sp)
	subw	t6, t6, s0
	sw	t6, 152(sp)
	slli	t2, a3, 1
	add	t2, a7, t2
	sw	t2, 136(sp)
	slli	a7, a7, 1
	subw	a3, a3, a7
	sw	a3, 168(sp)
	add	a3, t3, a4
	add	a7, a6, t0
	subw	a6, t0, a6
	subw	a4, a4, t3
	add	t0, a7, a3
	sw	t0, 124(sp)
	subw	a3, a3, a7
	sw	a3, 156(sp)
	slli	a3, a4, 1
	add	a3, a6, a3
	sw	a3, 140(sp)
	lw	a3, 128(sp)
	slli	a6, a6, 1
	subw	a4, a4, a6
	sw	a4, 172(sp)
	add	a4, t1, a3
	add	a6, a5, a2
	subw	a2, a2, a5
	subw	a3, a3, t1
	add	a5, a6, a4
	sw	a5, 128(sp)
	subw	a4, a4, a6
	sw	a4, 160(sp)
	slli	a4, a3, 1
	add	a4, a2, a4
	sw	a4, 144(sp)
	lw	a4, 132(sp)
	slli	a2, a2, 1
	subw	a3, a3, a2
	sw	a3, 176(sp)
	add	a2, t4, a4
	add	a3, a0, a1
	subw	a1, a1, a0
	subw	a4, a4, t4
	add	a0, a3, a2
	sw	a0, 132(sp)
	subw	a2, a2, a3
	sw	a2, 164(sp)
	slli	a0, a4, 1
	add	a0, a1, a0
	sw	a0, 148(sp)
	slli	a1, a1, 1
	subw	a4, a4, a1
	sw	a4, 180(sp)
.LBB3_9:
	li	s0, 0
	li	s1, 0
	li	a0, 0
	li	a1, 1
	ld	a2, 104(sp)                     # 8-byte Folded Reload
	sllw	a1, a1, a2
	sd	a1, 16(sp)                      # 8-byte Folded Spill
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	addi	a1, a1, 16
	sd	a1, 8(sp)                       # 8-byte Folded Spill
	li	s7, -1
	lui	t0, 3
	addi	s11, sp, 120
	lui	a1, 244
	addi	s8, a1, 575
	j	.LBB3_12
.LBB3_10:                               #   in Loop: Header=BB3_12 Depth=1
	slli	s9, s9, 3
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	add	s9, a1, s9
	ld	a1, 0(s9)
	slli	s10, s10, 2
	add	a1, a1, s10
	lw	a1, 0(a1)
	mul	a0, a1, a0
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	sllw	a0, a0, a1
	addi	a0, a0, 8
	sraiw	a1, a0, 4
	li	a0, 1
	li	s7, -1
	lui	t0, 3
.LBB3_11:                               #   in Loop: Header=BB3_12 Depth=1
	addi	s0, s0, 1
	add	s6, s11, s6
	add	s2, s6, s2
	sw	a1, 0(s2)
	li	a1, 16
	beq	s0, a1, .LBB3_32
.LBB3_12:                               # =>This Inner Loop Header: Depth=1
	slli	a1, s0, 1
	ld	a2, 112(sp)                     # 8-byte Folded Reload
	add	a1, a2, a1
	lbu	s9, 0(a1)
	lbu	s10, 1(a1)
	beqz	s5, .LBB3_14
# %bb.13:                               #   in Loop: Header=BB3_12 Depth=1
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	slli	a2, s10, 6
	add	a2, a1, a2
	slli	a3, s9, 2
	add	a3, a3, t0
	add	a2, a2, a3
	lw	a2, 824(a2)
	sraiw	a3, a2, 31
	xor	a2, a2, a3
	subw	s4, a2, a3
	j	.LBB3_15
.LBB3_14:                               #   in Loop: Header=BB3_12 Depth=1
	slli	a1, s10, 4
	add	a1, s11, a1
	slli	a2, s9, 2
	add	a1, a1, a2
	slli	a2, s9, 3
	ld	a3, 96(sp)                      # 8-byte Folded Reload
	add	a3, a3, a2
	ld	a3, 0(a3)
	ld	a4, 40(sp)                      # 8-byte Folded Reload
	add	a2, a4, a2
	ld	a2, 0(a2)
	lw	a1, 0(a1)
	slli	a4, s10, 2
	add	a3, a3, a4
	add	a2, a2, a4
	sraiw	a4, a1, 31
	xor	a1, a1, a4
	lw	a3, 0(a3)
	lw	a2, 0(a2)
	subw	a4, a1, a4
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	mul	a3, a3, a4
	add	a2, a2, a3
	ld	a3, 104(sp)                     # 8-byte Folded Reload
	sraw	s4, a2, a3
.LBB3_15:                               #   in Loop: Header=BB3_12 Depth=1
	lui	a2, 22
	add	a2, a1, a2
	lw	a2, 100(a2)
	addiw	s7, s7, 1
	slli	s6, s10, 4
	slli	s2, s9, 2
	beqz	a2, .LBB3_18
# %bb.16:                               #   in Loop: Header=BB3_12 Depth=1
	seqz	a2, s4
	or	a5, s5, a2
	ld	a4, 48(sp)                      # 8-byte Folded Reload
	slli	a4, a4, 10
	ld	a2, 64(sp)                      # 8-byte Folded Reload
	addw	a3, s10, a2
	ld	a2, 56(sp)                      # 8-byte Folded Reload
	addw	a2, s9, a2
	beqz	a5, .LBB3_21
# %bb.17:                               #   in Loop: Header=BB3_12 Depth=1
	add	a4, a1, a4
	slli	a3, a3, 6
	add	a3, a4, a3
	slli	a2, a2, 2
	add	a2, a2, t0
	add	a2, a3, a2
	sw	zero, 1864(a2)
.LBB3_18:                               #   in Loop: Header=BB3_12 Depth=1
	bnez	s4, .LBB3_22
# %bb.19:                               #   in Loop: Header=BB3_12 Depth=1
	bnez	s5, .LBB3_29
# %bb.20:                               #   in Loop: Header=BB3_12 Depth=1
	li	a1, 0
	j	.LBB3_11
.LBB3_21:                               #   in Loop: Header=BB3_12 Depth=1
	lui	a0, %hi(AdaptRndWeight)
	lw	a0, %lo(AdaptRndWeight)(a0)
	add	a5, s11, s6
	slli	a6, s9, 3
	ld	a7, 96(sp)                      # 8-byte Folded Reload
	add	a6, a7, a6
	ld	a6, 0(a6)
	add	a5, a5, s2
	lw	a5, 0(a5)
	slli	a7, s10, 2
	add	a6, a6, a7
	lw	a6, 0(a6)
	sraiw	a7, a5, 31
	xor	a5, a5, a7
	subw	a5, a5, a7
	mul	a5, a6, a5
	ld	a6, 104(sp)                     # 8-byte Folded Reload
	sllw	a6, s4, a6
	subw	a5, a5, a6
	mul	a0, a5, a0
	ld	a5, 16(sp)                      # 8-byte Folded Reload
	add	a0, a0, a5
	ld	a5, 8(sp)                       # 8-byte Folded Reload
	sraw	a0, a0, a5
	add	a4, a1, a4
	slli	a3, a3, 6
	add	a3, a4, a3
	slli	a2, a2, 2
	add	a2, a2, t0
	add	a2, a3, a2
	sw	a0, 1864(a2)
.LBB3_22:                               #   in Loop: Header=BB3_12 Depth=1
	slti	a0, s4, 2
	xori	a0, a0, 1
	or	a2, s5, a0
	mv	a0, s8
	bnez	a2, .LBB3_24
# %bb.23:                               #   in Loop: Header=BB3_12 Depth=1
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1093(a0)
	slli	a0, a0, 4
	lui	a2, %hi(COEFF_COST)
	addi	a2, a2, %lo(COEFF_COST)
	add	a2, a2, s7
	add	a0, a2, a0
	lbu	a0, 0(a0)
.LBB3_24:                               #   in Loop: Header=BB3_12 Depth=1
	ld	a3, 80(sp)                      # 8-byte Folded Reload
	lw	a2, 0(a3)
	add	a0, a2, a0
	sw	a0, 0(a3)
	add	s3, s11, s6
	add	s3, s3, s2
	bnez	s5, .LBB3_26
# %bb.25:                               #   in Loop: Header=BB3_12 Depth=1
	mv	a0, s3
	j	.LBB3_27
.LBB3_26:                               #   in Loop: Header=BB3_12 Depth=1
	slli	a0, s10, 6
	add	a0, a1, a0
	addiw	a1, t0, 824
	add	a1, s2, a1
	add	a0, a0, a1
.LBB3_27:                               #   in Loop: Header=BB3_12 Depth=1
	lw	a1, 0(a0)
	mv	a0, s4
	call	sign
	slli	a1, s1, 2
	ld	a2, 88(sp)                      # 8-byte Folded Reload
	add	a2, a2, a1
	sw	a0, 0(a2)
	ld	a0, 72(sp)                      # 8-byte Folded Reload
	add	a1, a0, a1
	sw	s7, 0(a1)
	lw	a1, 0(s3)
	addiw	s1, s1, 1
	mv	a0, s4
	call	sign
	beqz	s5, .LBB3_10
# %bb.28:                               #   in Loop: Header=BB3_12 Depth=1
	li	a0, 1
	li	s7, -1
	lui	t0, 3
.LBB3_29:                               #   in Loop: Header=BB3_12 Depth=1
	addi	s0, s0, 1
	li	a1, 16
	bne	s0, a1, .LBB3_12
# %bb.30:
	lui	a1, %hi(img)
	ld	a2, %lo(img)(a1)
	slli	s1, s1, 2
	ld	a1, 88(sp)                      # 8-byte Folded Reload
	add	s1, a1, s1
	sw	zero, 0(s1)
	beqz	s5, .LBB3_33
# %bb.31:
	lui	a1, 22
	add	a1, a2, a1
	lw	a1, 460(a1)
	bnez	a1, .LBB3_50
	j	.LBB3_47
.LBB3_32:
	lui	a1, %hi(img)
	ld	a2, %lo(img)(a1)
	slli	s1, s1, 2
	ld	a1, 88(sp)                      # 8-byte Folded Reload
	add	s1, a1, s1
	sw	zero, 0(s1)
.LBB3_33:
	lui	a1, 22
	addiw	a3, a1, 420
	add	a3, a2, a3
	lui	a7, 3
	addiw	a4, a7, 824
	lw	a5, 120(sp)
	lw	a6, 128(sp)
	add	a1, a2, a4
	lw	t0, 124(sp)
	lw	t1, 132(sp)
	add	t2, a6, a5
	subw	a5, a5, a6
	srli	a6, t0, 1
	subw	a6, a6, t1
	srli	t1, t1, 1
	add	t0, t1, t0
	add	t1, t0, t2
	sw	t1, 120(sp)
	add	t1, a6, a5
	sw	t1, 124(sp)
	subw	a5, a5, a6
	sw	a5, 128(sp)
	subw	a5, t2, t0
	lw	a6, 136(sp)
	lw	t0, 144(sp)
	sw	a5, 132(sp)
	lw	a5, 140(sp)
	lw	t1, 148(sp)
	add	t2, t0, a6
	subw	a6, a6, t0
	srli	t0, a5, 1
	subw	t0, t0, t1
	srli	t1, t1, 1
	add	a5, t1, a5
	add	t1, a5, t2
	sw	t1, 136(sp)
	add	t1, t0, a6
	sw	t1, 140(sp)
	subw	a6, a6, t0
	sw	a6, 144(sp)
	subw	a5, t2, a5
	sw	a5, 148(sp)
	lw	a6, 152(sp)
	lw	t0, 160(sp)
	addi	a5, sp, 152
	lw	t1, 156(sp)
	lw	t2, 164(sp)
	add	t3, t0, a6
	subw	a6, a6, t0
	srli	t0, t1, 1
	subw	t0, t0, t2
	srli	t2, t2, 1
	add	t1, t2, t1
	add	t2, t1, t3
	sw	t2, 152(sp)
	add	t2, t0, a6
	sw	t2, 156(sp)
	subw	a6, a6, t0
	sw	a6, 160(sp)
	subw	a6, t3, t1
	sw	a6, 164(sp)
	lw	t0, 168(sp)
	lw	t1, 176(sp)
	addi	a6, sp, 168
	lw	t2, 172(sp)
	lw	t3, 180(sp)
	add	t4, t1, t0
	subw	t0, t0, t1
	srli	t1, t2, 1
	subw	t1, t1, t3
	srli	t3, t3, 1
	add	t2, t3, t2
	add	t3, t2, t4
	sw	t3, 168(sp)
	add	t3, t1, t0
	sw	t3, 172(sp)
	subw	t0, t0, t1
	sw	t0, 176(sp)
	subw	t0, t4, t2
	sw	t0, 180(sp)
	ld	t3, 64(sp)                      # 8-byte Folded Reload
	addiw	t2, t3, 1
	addiw	t1, t3, 2
	addiw	t0, t3, 3
	slli	t3, t3, 5
	ld	t4, 56(sp)                      # 8-byte Folded Reload
	slli	t4, t4, 1
	add	t3, t3, t4
	addiw	t5, a7, 312
	add	a7, t3, t5
	slli	t0, t0, 5
	add	t0, t0, t4
	add	t0, t0, t5
	slli	t1, t1, 5
	add	t1, t1, t4
	add	t1, t1, t5
	slli	t2, t2, 5
	add	t2, t2, t4
	add	t2, t2, t5
	j	.LBB3_36
.LBB3_34:                               #   in Loop: Header=BB3_36 Depth=1
	addi	s0, s0, 32
	sraiw	s0, s0, 6
	sw	s0, 0(t3)
	addi	t6, t6, 32
	sraiw	t6, t6, 6
	sw	t6, 64(t3)
	addi	t5, t5, 32
	sraiw	t5, t5, 6
	sw	t5, 128(t3)
	addi	t4, t4, 32
	sraiw	t4, t4, 6
.LBB3_35:                               #   in Loop: Header=BB3_36 Depth=1
	sw	t4, 192(t3)
	addi	a5, a5, 4
	addi	a7, a7, 2
	addi	a4, a4, 4
	addi	t0, t0, 2
	addi	t1, t1, 2
	addi	t2, t2, 2
	beq	a5, a6, .LBB3_45
.LBB3_36:                               # =>This Inner Loop Header: Depth=1
	lw	t3, -32(a5)
	lw	t4, 0(a5)
	lw	t5, -16(a5)
	lw	t6, 16(a5)
	add	s1, t4, t3
	subw	t4, t3, t4
	srli	t3, t5, 1
	subw	s2, t3, t6
	srli	t6, t6, 1
	add	s3, t6, t5
	lw	s4, 40(a3)
	add	t3, a2, a4
	addw	s0, s3, s1
	addw	t6, s2, t4
	subw	t5, t4, s2
	subw	t4, s1, s3
	bnez	s4, .LBB3_34
# %bb.37:                               #   in Loop: Header=BB3_36 Depth=1
	add	s1, a2, a7
	lhu	s2, 0(s1)
	lw	s1, 0(a3)
	slli	s2, s2, 6
	add	s0, s0, s2
	addi	s0, s0, 32
	srai	s0, s0, 6
	sgtz	s2, s0
	neg	s2, s2
	and	s0, s2, s0
	blt	s0, s1, .LBB3_39
# %bb.38:                               #   in Loop: Header=BB3_36 Depth=1
	mv	s0, s1
.LBB3_39:                               #   in Loop: Header=BB3_36 Depth=1
	add	s1, a2, t2
	lhu	s1, 0(s1)
	sw	s0, 0(t3)
	lw	s0, 0(a3)
	slli	s1, s1, 6
	add	t6, t6, s1
	addi	t6, t6, 32
	srai	t6, t6, 6
	sgtz	s1, t6
	neg	s1, s1
	and	t6, s1, t6
	blt	t6, s0, .LBB3_41
# %bb.40:                               #   in Loop: Header=BB3_36 Depth=1
	mv	t6, s0
.LBB3_41:                               #   in Loop: Header=BB3_36 Depth=1
	add	s0, a2, t1
	lhu	s0, 0(s0)
	sw	t6, 64(t3)
	lw	t6, 0(a3)
	slli	s0, s0, 6
	add	t5, t5, s0
	addi	t5, t5, 32
	srai	t5, t5, 6
	sgtz	s0, t5
	neg	s0, s0
	and	t5, s0, t5
	blt	t5, t6, .LBB3_43
# %bb.42:                               #   in Loop: Header=BB3_36 Depth=1
	mv	t5, t6
.LBB3_43:                               #   in Loop: Header=BB3_36 Depth=1
	add	t6, a2, t0
	lhu	t6, 0(t6)
	sw	t5, 128(t3)
	lw	t5, 0(a3)
	slli	t6, t6, 6
	add	t4, t4, t6
	addi	t4, t4, 32
	srai	t4, t4, 6
	sgtz	t6, t4
	neg	t6, t6
	and	t4, t6, t4
	blt	t4, t5, .LBB3_35
# %bb.44:                               #   in Loop: Header=BB3_36 Depth=1
	mv	t4, t5
	j	.LBB3_35
.LBB3_45:
	lw	a3, 40(a3)
	bnez	a3, .LBB3_50
# %bb.46:
	beqz	s5, .LBB3_48
.LBB3_47:
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
	lw	a6, 152(a2)
	ld	s2, 64(sp)                      # 8-byte Folded Reload
	addw	a7, a3, s2
	lh	t0, 0(a1)
	slli	a2, s2, 5
	add	t4, a4, a2
	ld	t2, 56(sp)                      # 8-byte Folded Reload
	slli	a2, t2, 1
	add	t1, t4, a2
	lh	t1, 0(t1)
	slli	a7, a7, 3
	add	a7, a5, a7
	ld	t5, 0(a7)
	add	t0, t1, t0
	addw	t6, a6, t2
	slli	a6, t6, 1
	add	a7, t5, a6
	sh	t0, 0(a7)
	lh	t0, 4(a1)
	addi	a7, a2, 2
	add	t1, t4, a7
	lh	t1, 0(t1)
	add	t1, t1, t0
	addiw	t0, t6, 1
	slli	t0, t0, 1
	add	t2, t5, t0
	sh	t1, 0(t2)
	lh	t2, 8(a1)
	addi	t1, a2, 4
	add	t3, t4, t1
	lh	t3, 0(t3)
	add	t3, t3, t2
	addiw	t2, t6, 2
	slli	t2, t2, 1
	add	s0, t5, t2
	sh	t3, 0(s0)
	lh	s0, 12(a1)
	addi	t3, a2, 6
	add	t4, t4, t3
	lh	t4, 0(t4)
	add	s0, t4, s0
	addiw	t4, t6, 3
	slli	t4, t4, 1
	add	t5, t5, t4
	sh	s0, 0(t5)
	addi	t5, s2, 1
	addw	t6, a3, t5
	slli	t6, t6, 3
	add	t6, a5, t6
	lh	s0, 64(a1)
	slli	t5, t5, 5
	add	t5, a4, t5
	add	s1, t5, a2
	lh	s1, 0(s1)
	ld	t6, 0(t6)
	add	s0, s1, s0
	add	s1, t6, a6
	sh	s0, 0(s1)
	lh	s0, 68(a1)
	add	s1, t5, a7
	lh	s1, 0(s1)
	add	s0, s1, s0
	add	s1, t6, t0
	sh	s0, 0(s1)
	lh	s0, 72(a1)
	add	s1, t5, t1
	lh	s1, 0(s1)
	add	s0, s1, s0
	add	s1, t6, t2
	sh	s0, 0(s1)
	lh	s0, 76(a1)
	add	t5, t5, t3
	lh	t5, 0(t5)
	add	t5, t5, s0
	add	t6, t6, t4
	sh	t5, 0(t6)
	addi	t5, s2, 2
	addw	t6, a3, t5
	slli	t6, t6, 3
	add	t6, a5, t6
	lh	s0, 128(a1)
	slli	t5, t5, 5
	add	t5, a4, t5
	add	s1, t5, a2
	lh	s1, 0(s1)
	ld	t6, 0(t6)
	add	s0, s1, s0
	add	s1, t6, a6
	sh	s0, 0(s1)
	lh	s0, 132(a1)
	add	s1, t5, a7
	lh	s1, 0(s1)
	add	s0, s1, s0
	add	s1, t6, t0
	sh	s0, 0(s1)
	lh	s0, 136(a1)
	add	s1, t5, t1
	lh	s1, 0(s1)
	add	s0, s1, s0
	add	s1, t6, t2
	sh	s0, 0(s1)
	lh	s0, 140(a1)
	add	t5, t5, t3
	lh	t5, 0(t5)
	add	t5, t5, s0
	add	t6, t6, t4
	sh	t5, 0(t6)
	addi	t5, s2, 3
	addw	a3, a3, t5
	slli	a3, a3, 3
	add	a3, a5, a3
	lh	a5, 192(a1)
	slli	t5, t5, 5
	add	a4, a4, t5
	add	a2, a4, a2
	lh	a2, 0(a2)
	ld	a3, 0(a3)
	add	a2, a2, a5
	add	a6, a3, a6
	sh	a2, 0(a6)
	lh	a2, 196(a1)
	add	a7, a4, a7
	lh	a5, 0(a7)
	add	a2, a5, a2
	add	t0, a3, t0
	sh	a2, 0(t0)
	lh	a2, 200(a1)
	add	t1, a4, t1
	lh	a5, 0(t1)
	add	a2, a5, a2
	add	t2, a3, t2
	sh	a2, 0(t2)
	lh	a1, 204(a1)
	add	a4, a4, t3
	lh	a2, 0(a4)
	add	a1, a2, a1
	add	a3, a3, t4
	j	.LBB3_49
.LBB3_48:
	lui	a3, %hi(enc_picture)
	ld	a3, %lo(enc_picture)(a3)
	lw	a4, 156(a2)
	lui	a5, 2
	add	a3, a3, a5
	ld	a3, -1768(a3)
	lw	a2, 152(a2)
	ld	a5, 64(sp)                      # 8-byte Folded Reload
	addw	a7, a4, a5
	slli	a4, a7, 3
	add	a4, a3, a4
	ld	t0, 0(a4)
	lh	a5, 0(a1)
	ld	a4, 56(sp)                      # 8-byte Folded Reload
	addw	a4, a2, a4
	slli	a4, a4, 1
	add	a2, t0, a4
	sh	a5, 0(a2)
	lh	a2, 4(a1)
	addi	a5, a4, 2
	add	a6, t0, a5
	lh	t1, 8(a1)
	sh	a2, 0(a6)
	addi	a2, a4, 4
	add	a6, t0, a2
	sh	t1, 0(a6)
	lh	t1, 12(a1)
	addi	a6, a4, 6
	addiw	t2, a7, 1
	slli	t2, t2, 3
	add	t2, a3, t2
	ld	t2, 0(t2)
	add	t0, t0, a6
	lh	t3, 64(a1)
	sh	t1, 0(t0)
	add	t0, t2, a4
	lh	t1, 68(a1)
	sh	t3, 0(t0)
	lh	t0, 72(a1)
	add	t3, t2, a5
	sh	t1, 0(t3)
	add	t1, t2, a2
	sh	t0, 0(t1)
	lh	t0, 76(a1)
	addiw	t1, a7, 2
	slli	t1, t1, 3
	add	t1, a3, t1
	ld	t1, 0(t1)
	add	t2, t2, a6
	lh	t3, 128(a1)
	sh	t0, 0(t2)
	add	t0, t1, a4
	lh	t2, 132(a1)
	sh	t3, 0(t0)
	lh	t0, 136(a1)
	add	t3, t1, a5
	sh	t2, 0(t3)
	add	t2, t1, a2
	sh	t0, 0(t2)
	lh	t0, 140(a1)
	addiw	a7, a7, 3
	slli	a7, a7, 3
	add	a3, a3, a7
	ld	a3, 0(a3)
	add	t1, t1, a6
	lh	a7, 192(a1)
	sh	t0, 0(t1)
	add	a4, a3, a4
	lh	t0, 196(a1)
	sh	a7, 0(a4)
	add	a5, a3, a5
	lh	a4, 200(a1)
	sh	t0, 0(a5)
	lh	a1, 204(a1)
	add	a2, a3, a2
	sh	a4, 0(a2)
	add	a3, a3, a6
.LBB3_49:
	sh	a1, 0(a3)
.LBB3_50:
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
	ld	a2, %lo(img)(a2)
	sd	a1, 56(sp)                      # 8-byte Folded Spill
	sd	a0, 192(sp)                     # 8-byte Folded Spill
	lui	a0, 22
	addiw	a0, a0, 108
	add	a0, a2, a0
	lui	a1, 8
	add	a1, a2, a1
	lw	a3, 12(a2)
	ld	a4, -1192(a1)
	lw	a5, 44(a0)
	li	a1, 528
	mul	a3, a3, a1
	lui	a1, 3
	add	a3, a4, a3
	sd	a3, 216(sp)                     # 8-byte Folded Spill
	beqz	a5, .LBB4_32
.LBB4_1:
	lui	a3, %hi(FIELD_SCAN)
	addi	a3, a3, %lo(FIELD_SCAN)
	sd	a3, 0(sp)                       # 8-byte Folded Spill
.LBB4_2:
	lw	a4, 272(a0)
	ld	a3, 216(sp)                     # 8-byte Folded Reload
	lw	a3, 12(a3)
	li	ra, 0
	negw	a4, a4
	addiw	a1, a1, 824
	bne	a3, a4, .LBB4_4
# %bb.3:
	lw	a4, 332(a0)
	addi	a4, a4, -1
	seqz	ra, a4
.LBB4_4:
	ld	a4, 192(sp)                     # 8-byte Folded Reload
	slli	a4, a4, 2
	lui	a5, 22
	add	a4, a4, a5
	add	a4, a2, a4
	lw	a4, 452(a4)
	add	a1, a2, a1
	lw	a2, 276(a0)
	ld	a5, 216(sp)                     # 8-byte Folded Reload
	lw	a5, 72(a5)
	addw	a4, a4, a3
	li	a6, 51
	negw	a3, a2
	mv	a7, a4
	blt	a4, a6, .LBB4_6
# %bb.5:
	li	a7, 51
.LBB4_6:
	ld	a6, 1032(a1)
	ld	t0, 192(sp)                     # 8-byte Folded Reload
	slli	t0, t0, 3
	sd	t0, 16(sp)                      # 8-byte Folded Spill
	addiw	t0, a5, -9
	blt	a4, a3, .LBB4_8
# %bb.7:
	mv	a3, a7
.LBB4_8:
	lw	s3, 328(a0)
	ld	a5, 16(sp)                      # 8-byte Folded Reload
	add	a5, a6, a5
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
	ld	t3, 16(sp)                      # 8-byte Folded Reload
	add	a3, a3, t3
	ld	t0, 0(a3)
	lui	a3, %hi(LevelOffset4x4Chroma)
	ld	a3, %lo(LevelOffset4x4Chroma)(a3)
	lui	a4, %hi(InvLevelScale4x4Chroma)
	ld	a4, %lo(InvLevelScale4x4Chroma)(a4)
	sd	t2, 184(sp)                     # 8-byte Folded Spill
	slli	t2, t2, 3
	add	a3, a3, t3
	ld	t1, 0(a3)
	add	a4, a4, t3
	ld	a3, 0(a4)
	add	t0, t0, t2
	add	t1, t1, t2
	li	a4, 2
	add	t2, a3, t2
	bne	s3, a4, .LBB4_12
# %bb.11:
	addiw	a2, a2, 3
	lui	a3, 174763
	addiw	a3, a3, -1365
	mul	a3, a2, a3
	srli	a4, a3, 63
	srli	a3, a3, 32
	addw	s2, a3, a4
	li	a3, 6
	mul	a3, s2, a3
	subw	a3, a2, a3
	addi	a2, s2, 15
	j	.LBB4_13
.LBB4_12:
	li	s2, 0
	li	a3, 0
	li	a2, 0
.LBB4_13:
	lw	a4, 320(a0)
	lw	s6, 0(a7)
	ld	a7, 0(a5)
	sd	a7, 272(sp)                     # 8-byte Folded Spill
	ld	a5, 8(a5)
	sd	a5, 264(sp)                     # 8-byte Folded Spill
	lw	s5, 0(a6)
	ld	s8, 0(t0)
	ld	s7, 0(t1)
	lw	a7, 340(a0)
	ld	s4, 0(t2)
	blez	a7, .LBB4_22
# %bb.14:
	lw	t1, 336(a0)
	li	a5, 0
	addi	a6, a1, 204
	j	.LBB4_17
.LBB4_15:                               #   in Loop: Header=BB4_17 Depth=1
	lw	a7, 340(a0)
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
	lw	t1, 336(a0)
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
	lw	s0, -8(t0)
	lw	s1, -4(t0)
	subw	t1, t1, t4
	sw	t1, -64(t0)
	add	t1, t6, t5
	add	t4, s1, s0
	subw	s0, s0, s1
	subw	t5, t5, t6
	add	t6, t4, t1
	sw	t6, -12(t0)
	subw	t1, t1, t4
	sw	t1, -4(t0)
	slli	t1, t5, 1
	add	t1, s0, t1
	sw	t1, -8(t0)
	slli	s0, s0, 1
	lw	t4, -204(t0)
	lw	s1, -140(t0)
	subw	t5, t5, s0
	sw	t5, 0(t0)
	add	t5, t6, t4
	add	s0, t3, s1
	subw	s1, s1, t3
	subw	t4, t4, t6
	add	t3, s0, t5
	sw	t3, -204(t0)
	subw	t5, t5, s0
	sw	t5, -76(t0)
	slli	t3, t4, 1
	add	t3, s1, t3
	sw	t3, -140(t0)
	slli	s1, s1, 1
	lw	t3, -200(t0)
	lw	t5, -136(t0)
	subw	t4, t4, s1
	sw	t4, -12(t0)
	add	t4, t1, t3
	add	t6, t2, t5
	subw	t2, t5, t2
	subw	t1, t3, t1
	add	t3, t6, t4
	sw	t3, -200(t0)
	subw	t4, t4, t6
	sw	t4, -72(t0)
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
	srli	t5, a4, 1
	sd	ra, 208(sp)                     # 8-byte Folded Spill
	sd	s6, 168(sp)                     # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	beq	s3, a5, .LBB4_52
# %bb.23:
	li	a4, 2
	beq	s3, a4, .LBB4_34
# %bb.24:
	li	a2, 3
	bne	s3, a2, .LBB4_54
# %bb.25:
	blez	a7, .LBB4_55
# %bb.26:
	lw	a2, 336(a0)
	li	a3, 0
	addi	a4, sp, 280
	j	.LBB4_28
.LBB4_27:                               #   in Loop: Header=BB4_28 Depth=1
	addi	a3, a3, 4
	addi	a4, a4, 4
	addi	a1, a1, 256
	bge	a3, a7, .LBB4_55
.LBB4_28:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_30 Depth 2
	blez	a2, .LBB4_27
# %bb.29:                               #   in Loop: Header=BB4_28 Depth=1
	lw	a2, 336(a0)
	li	a5, 0
	mv	a6, a1
	mv	a7, a4
.LBB4_30:                               #   Parent Loop BB4_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	t0, 0(a6)
	sw	t0, 0(a7)
	addi	a5, a5, 4
	addi	a7, a7, 16
	addi	a6, a6, 16
	blt	a5, a2, .LBB4_30
# %bb.31:                               #   in Loop: Header=BB4_28 Depth=1
	lw	a7, 340(a0)
	j	.LBB4_27
.LBB4_32:
	lw	a3, 0(a0)
	lui	a4, %hi(SNGL_SCAN)
	addi	a4, a4, %lo(SNGL_SCAN)
	sd	a4, 0(sp)                       # 8-byte Folded Spill
	beqz	a3, .LBB4_2
# %bb.33:
	ld	a3, 216(sp)                     # 8-byte Folded Reload
	lw	a3, 424(a3)
	bnez	a3, .LBB4_1
	j	.LBB4_2
.LBB4_34:
	sd	s5, 224(sp)                     # 8-byte Folded Spill
	blez	a7, .LBB4_40
# %bb.35:
	lw	a0, 336(a0)
	li	a4, 0
	slli	a5, a0, 2
	addi	a5, a5, -4
	andi	a5, a5, -16
	addi	a5, a5, 16
	addi	a6, sp, 344
	addi	t0, sp, 344
	j	.LBB4_37
.LBB4_36:                               #   in Loop: Header=BB4_37 Depth=1
	addi	a4, a4, 4
	addi	t0, t0, 4
	addi	a1, a1, 256
	bgeu	a4, a7, .LBB4_40
.LBB4_37:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_39 Depth 2
	blez	a0, .LBB4_36
# %bb.38:                               #   in Loop: Header=BB4_37 Depth=1
	add	t1, a5, a4
	add	t1, a6, t1
	mv	t2, a1
	mv	t3, t0
.LBB4_39:                               #   Parent Loop BB4_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	t4, 0(t2)
	sw	t4, 0(t3)
	addi	t3, t3, 16
	addi	t2, t2, 16
	bne	t3, t1, .LBB4_39
	j	.LBB4_36
.LBB4_40:
	sd	t5, 176(sp)                     # 8-byte Folded Spill
	sd	s4, 240(sp)                     # 8-byte Folded Spill
	bnez	ra, .LBB4_42
# %bb.41:
	lw	a0, 344(sp)
	lw	a1, 360(sp)
	lw	a4, 348(sp)
	lw	a5, 364(sp)
	lw	a6, 352(sp)
	lw	a7, 368(sp)
	lw	t0, 356(sp)
	lw	t1, 372(sp)
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
	sw	t1, 280(sp)
	subw	a6, a6, a7
	sw	a6, 288(sp)
	add	a6, t3, t0
	sw	a6, 284(sp)
	subw	a6, t0, t3
	sw	a6, 292(sp)
	add	a6, a5, a0
	add	a7, a1, a4
	subw	a4, a4, a1
	subw	a0, a0, a5
	add	a1, a7, a6
	sw	a1, 296(sp)
	subw	a1, a6, a7
	sw	a1, 304(sp)
	add	a1, a4, a0
	sw	a1, 300(sp)
	subw	a0, a0, a4
	sw	a0, 308(sp)
.LBB4_42:
	li	s4, 0
	li	s1, 0
	sd	zero, 48(sp)                    # 8-byte Folded Spill
	slli	a3, a3, 3
	sd	s8, 200(sp)                     # 8-byte Folded Spill
	sd	a3, 152(sp)                     # 8-byte Folded Spill
	add	a3, s8, a3
	sd	a3, 256(sp)                     # 8-byte Folded Spill
	sd	s2, 160(sp)                     # 8-byte Folded Spill
	slli	a0, s2, 3
	sd	s7, 232(sp)                     # 8-byte Folded Spill
	add	a0, s7, a0
	sd	a0, 248(sp)                     # 8-byte Folded Spill
	addi	s7, a2, 1
	ld	a0, 192(sp)                     # 8-byte Folded Reload
	slli	a0, a0, 3
	lui	a1, 4080
	sllw	s9, a1, a0
	li	s8, -1
	lui	s10, %hi(SCAN_YUV422)
	addi	s10, s10, %lo(SCAN_YUV422)
	addi	s0, sp, 344
	addi	s3, sp, 280
	li	s11, 8
	j	.LBB4_44
.LBB4_43:                               #   in Loop: Header=BB4_44 Depth=1
	add	a0, s3, s5
	add	a0, a0, s6
	lw	a1, 0(a0)
	addi	s4, s4, 1
	mv	a0, s2
	call	sign
	ld	ra, 208(sp)                     # 8-byte Folded Reload
	add	s5, s0, s5
	add	s5, s5, s6
	sw	a0, 0(s5)
	beq	s4, s11, .LBB4_67
.LBB4_44:                               # =>This Inner Loop Header: Depth=1
	slli	a0, s4, 1
	add	a0, s10, a0
	lbu	s5, 0(a0)
	lbu	s6, 1(a0)
	slli	s5, s5, 4
	slli	s6, s6, 2
	beqz	ra, .LBB4_46
# %bb.45:                               #   in Loop: Header=BB4_44 Depth=1
	add	a0, s0, s5
	add	a0, a0, s6
	lw	a1, 0(a0)
	sraiw	a0, a1, 31
	xor	a2, a1, a0
	subw	s2, a2, a0
	add	a0, s3, s5
	add	a0, a0, s6
	sw	a1, 0(a0)
	addi	s8, s8, 1
	bnez	s2, .LBB4_47
	j	.LBB4_50
.LBB4_46:                               #   in Loop: Header=BB4_44 Depth=1
	add	a0, s3, s5
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	ld	a2, 0(a1)
	ld	a1, 248(sp)                     # 8-byte Folded Reload
	ld	a3, 0(a1)
	add	a0, a0, s6
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
	sraw	s2, a0, s7
	addi	s8, s8, 1
	beqz	s2, .LBB4_50
.LBB4_47:                               #   in Loop: Header=BB4_44 Depth=1
	ld	a2, 216(sp)                     # 8-byte Folded Reload
	ld	a0, 368(a2)
	or	a0, a0, s9
	sd	a0, 368(a2)
	li	a0, 1
	sd	a0, 48(sp)                      # 8-byte Folded Spill
	ld	a0, 56(sp)                      # 8-byte Folded Reload
	bgtz	a0, .LBB4_49
# %bb.48:                               #   in Loop: Header=BB4_44 Depth=1
	li	a0, 1
	sd	a0, 56(sp)                      # 8-byte Folded Spill
.LBB4_49:                               #   in Loop: Header=BB4_44 Depth=1
	mv	a0, s2
	call	sign
	slli	a1, s1, 2
	ld	a2, 272(sp)                     # 8-byte Folded Reload
	add	a2, a2, a1
	sw	a0, 0(a2)
	ld	a0, 264(sp)                     # 8-byte Folded Reload
	add	a1, a0, a1
	sw	s8, 0(a1)
	addiw	s1, s1, 1
	li	s8, -1
	ld	ra, 208(sp)                     # 8-byte Folded Reload
.LBB4_50:                               #   in Loop: Header=BB4_44 Depth=1
	beqz	ra, .LBB4_43
# %bb.51:                               #   in Loop: Header=BB4_44 Depth=1
	addi	s4, s4, 1
	bne	s4, s11, .LBB4_44
	j	.LBB4_86
.LBB4_52:
	lw	a2, 0(a1)
	lw	a0, 16(a1)
	sd	s4, 240(sp)                     # 8-byte Folded Spill
	sd	t5, 176(sp)                     # 8-byte Folded Spill
	beqz	ra, .LBB4_69
# %bb.53:
	lw	a3, 256(a1)
	lw	a1, 272(a1)
	j	.LBB4_70
.LBB4_54:
	sd	zero, 48(sp)                    # 8-byte Folded Spill
	j	.LBB4_88
.LBB4_55:
	sd	t5, 176(sp)                     # 8-byte Folded Spill
	sd	s4, 240(sp)                     # 8-byte Folded Spill
	bnez	ra, .LBB4_57
# %bb.56:
	lw	a0, 280(sp)
	lw	a1, 328(sp)
	lw	a2, 296(sp)
	lw	a3, 312(sp)
	add	a4, a1, a0
	add	a5, a3, a2
	subw	a2, a2, a3
	subw	a0, a0, a1
	add	a1, a5, a4
	sw	a1, 280(sp)
	subw	a4, a4, a5
	sw	a4, 312(sp)
	add	a1, a2, a0
	sw	a1, 296(sp)
	lw	a1, 284(sp)
	lw	a3, 332(sp)
	lw	a4, 300(sp)
	lw	a5, 316(sp)
	subw	a0, a0, a2
	sw	a0, 328(sp)
	add	a0, a3, a1
	add	a2, a5, a4
	subw	a4, a4, a5
	subw	a1, a1, a3
	add	a3, a2, a0
	sw	a3, 284(sp)
	subw	a0, a0, a2
	sw	a0, 316(sp)
	add	a0, a4, a1
	sw	a0, 300(sp)
	lw	a0, 288(sp)
	lw	a2, 336(sp)
	lw	a3, 304(sp)
	lw	a5, 320(sp)
	subw	a1, a1, a4
	sw	a1, 332(sp)
	add	a1, a2, a0
	add	a4, a5, a3
	subw	a3, a3, a5
	subw	a0, a0, a2
	add	a2, a4, a1
	sw	a2, 288(sp)
	subw	a1, a1, a4
	sw	a1, 320(sp)
	add	a1, a3, a0
	sw	a1, 304(sp)
	lw	a4, 292(sp)
	lw	a5, 340(sp)
	lw	a6, 308(sp)
	lw	a7, 324(sp)
	subw	a0, a0, a3
	sw	a0, 336(sp)
	add	a0, a5, a4
	add	a3, a7, a6
	subw	a6, a6, a7
	subw	a4, a4, a5
	add	a5, a3, a0
	sw	a5, 292(sp)
	subw	a0, a0, a3
	sw	a0, 324(sp)
	add	a0, a6, a4
	sw	a0, 308(sp)
	lw	a3, 280(sp)
	lw	a7, 284(sp)
	subw	a4, a4, a6
	sw	a4, 340(sp)
	add	a4, a5, a3
	add	a6, a2, a7
	subw	a2, a7, a2
	subw	a3, a3, a5
	add	a5, a6, a4
	sraiw	a5, a5, 1
	sw	a5, 280(sp)
	subw	a4, a4, a6
	sraiw	a4, a4, 1
	sw	a4, 288(sp)
	add	a4, a2, a3
	sraiw	a4, a4, 1
	sw	a4, 284(sp)
	subw	a3, a3, a2
	lw	a2, 296(sp)
	lw	a4, 300(sp)
	sraiw	a3, a3, 1
	sw	a3, 292(sp)
	add	a3, a0, a2
	add	a5, a1, a4
	subw	a4, a4, a1
	subw	a2, a2, a0
	add	a0, a5, a3
	sraiw	a0, a0, 1
	sw	a0, 296(sp)
	subw	a3, a3, a5
	sraiw	a0, a3, 1
	sw	a0, 304(sp)
	add	a0, a4, a2
	sraiw	a0, a0, 1
	sw	a0, 300(sp)
	subw	a2, a2, a4
	lw	a0, 312(sp)
	lw	a1, 324(sp)
	lw	a3, 316(sp)
	lw	a4, 320(sp)
	sraiw	a2, a2, 1
	sw	a2, 308(sp)
	add	a2, a1, a0
	add	a5, a4, a3
	subw	a3, a3, a4
	subw	a0, a0, a1
	add	a1, a5, a2
	sraiw	a1, a1, 1
	sw	a1, 312(sp)
	subw	a2, a2, a5
	sraiw	a1, a2, 1
	sw	a1, 320(sp)
	add	a1, a3, a0
	sraiw	a1, a1, 1
	sw	a1, 316(sp)
	subw	a0, a0, a3
	lw	a1, 328(sp)
	lw	a2, 340(sp)
	lw	a3, 332(sp)
	lw	a4, 336(sp)
	sraiw	a0, a0, 1
	sw	a0, 324(sp)
	add	a0, a2, a1
	add	a5, a4, a3
	subw	a3, a3, a4
	subw	a1, a1, a2
	add	a2, a5, a0
	sraiw	a2, a2, 1
	sw	a2, 328(sp)
	subw	a0, a0, a5
	sraiw	a0, a0, 1
	sw	a0, 336(sp)
	add	a0, a3, a1
	sraiw	a0, a0, 1
	sw	a0, 332(sp)
	subw	a1, a1, a3
	sraiw	a0, a1, 1
	sw	a0, 340(sp)
.LBB4_57:
	li	s3, 0
	li	s1, 0
	sd	zero, 48(sp)                    # 8-byte Folded Spill
	sd	s5, 224(sp)                     # 8-byte Folded Spill
	slli	s4, s5, 3
	sd	s8, 200(sp)                     # 8-byte Folded Spill
	sd	s4, 256(sp)                     # 8-byte Folded Spill
	add	s4, s8, s4
	slli	s5, s6, 3
	sd	s7, 232(sp)                     # 8-byte Folded Spill
	add	s5, s7, s5
	addi	s6, s6, 16
	ld	a0, 192(sp)                     # 8-byte Folded Reload
	slli	a0, a0, 4
	lui	a1, 65535
	slli	a1, a1, 4
	sll	s7, a1, a0
	li	s10, -1
	lui	s8, %hi(SNGL_SCAN)
	addi	s8, s8, %lo(SNGL_SCAN)
	addi	s9, sp, 280
	li	s11, 16
	j	.LBB4_59
.LBB4_58:                               #   in Loop: Header=BB4_59 Depth=1
	lw	a1, 0(s0)
	addi	s3, s3, 1
	mv	a0, s2
	call	sign
	ld	ra, 208(sp)                     # 8-byte Folded Reload
	sw	a0, 0(s0)
	bne	s3, s11, .LBB4_59
	j	.LBB4_169
.LBB4_59:                               # =>This Inner Loop Header: Depth=1
	slli	a0, s3, 1
	add	a0, s8, a0
	lbu	a1, 0(a0)
	lbu	a0, 1(a0)
	slli	a1, a1, 4
	add	a1, s9, a1
	slli	a0, a0, 2
	add	s0, a1, a0
	lw	a1, 0(s0)
	sraiw	a0, a1, 31
	xor	a2, a1, a0
	subw	s2, a2, a0
	bnez	ra, .LBB4_61
# %bb.60:                               #   in Loop: Header=BB4_59 Depth=1
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
.LBB4_61:                               #   in Loop: Header=BB4_59 Depth=1
	addi	s10, s10, 1
	beqz	s2, .LBB4_65
# %bb.62:                               #   in Loop: Header=BB4_59 Depth=1
	ld	a2, 216(sp)                     # 8-byte Folded Reload
	ld	a0, 368(a2)
	or	a0, a0, s7
	sd	a0, 368(a2)
	li	a0, 1
	sd	a0, 48(sp)                      # 8-byte Folded Spill
	ld	a0, 56(sp)                      # 8-byte Folded Reload
	bgtz	a0, .LBB4_64
# %bb.63:                               #   in Loop: Header=BB4_59 Depth=1
	li	a0, 1
	sd	a0, 56(sp)                      # 8-byte Folded Spill
.LBB4_64:                               #   in Loop: Header=BB4_59 Depth=1
	mv	a0, s2
	call	sign
	slli	a1, s1, 2
	ld	a2, 272(sp)                     # 8-byte Folded Reload
	add	a2, a2, a1
	sw	a0, 0(a2)
	ld	a0, 264(sp)                     # 8-byte Folded Reload
	add	a1, a0, a1
	sw	s10, 0(a1)
	addiw	s1, s1, 1
	li	s10, -1
	ld	ra, 208(sp)                     # 8-byte Folded Reload
.LBB4_65:                               #   in Loop: Header=BB4_59 Depth=1
	beqz	ra, .LBB4_58
# %bb.66:                               #   in Loop: Header=BB4_59 Depth=1
	addi	s3, s3, 1
	bne	s3, s11, .LBB4_59
	j	.LBB4_86
.LBB4_67:
	slli	s1, s1, 2
	ld	a0, 272(sp)                     # 8-byte Folded Reload
	add	s1, a0, s1
	sw	zero, 0(s1)
	lw	a0, 344(sp)
	lw	a1, 360(sp)
	lw	a2, 348(sp)
	lw	a3, 364(sp)
	add	t1, a1, a0
	sw	t1, 280(sp)
	add	t2, a3, a2
	lw	a4, 352(sp)
	lw	a7, 368(sp)
	lw	t3, 356(sp)
	lw	t4, 372(sp)
	sw	t2, 284(sp)
	add	t5, a7, a4
	sw	t5, 288(sp)
	add	t6, t4, t3
	sw	t6, 292(sp)
	subw	a6, a0, a1
	sw	a6, 296(sp)
	subw	a5, a2, a3
	sw	a5, 300(sp)
	subw	t0, a4, a7
	sw	t0, 304(sp)
	subw	a7, t3, t4
	sw	a7, 308(sp)
	ld	s4, 240(sp)                     # 8-byte Folded Reload
	ld	a2, 152(sp)                     # 8-byte Folded Reload
	add	a2, s4, a2
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	ld	s2, 160(sp)                     # 8-byte Folded Reload
	addi	a1, s2, -4
	lui	a3, 3
	addiw	a3, a3, 824
	add	a0, a0, a3
	li	s0, 3
	subw	a3, s0, s2
	ld	a2, 0(a2)
	li	a4, 1
	sllw	a3, a4, a3
	li	a4, 4
	ld	a2, 0(a2)
	subw	a4, a4, s2
	add	s1, t5, t1
	subw	t1, t1, t5
	lw	t3, 0(a2)
	subw	t5, t2, t6
	add	t6, t6, t2
	add	t2, t6, s1
	mul	t4, t3, t2
	add	t3, t5, t1
	subw	t2, t1, t5
	subw	t1, s1, t6
	bge	s0, s2, .LBB4_68
	j	.LBB4_174
.LBB4_68:
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
	j	.LBB4_175
.LBB4_69:
	lw	a3, 256(a1)
	lw	a1, 272(a1)
	add	a4, a0, a2
	add	a5, a1, a3
	add	a6, a2, a3
	add	a2, a2, a1
	add	a7, a5, a4
	add	a1, a0, a1
	add	a0, a0, a3
	subw	a6, a6, a1
	subw	a3, a4, a5
	subw	a1, a2, a0
	mv	a2, a7
	mv	a0, a6
.LBB4_70:
	li	s4, 0
	li	s1, 0
	sd	zero, 48(sp)                    # 8-byte Folded Spill
	sw	a2, 344(sp)
	sw	a0, 348(sp)
	sw	a3, 352(sp)
	sw	a1, 356(sp)
	sd	s5, 224(sp)                     # 8-byte Folded Spill
	slli	s5, s5, 3
	sd	s8, 200(sp)                     # 8-byte Folded Spill
	sd	s5, 160(sp)                     # 8-byte Folded Spill
	add	s5, s8, s5
	sd	s5, 256(sp)                     # 8-byte Folded Spill
	slli	a0, s6, 3
	sd	s7, 232(sp)                     # 8-byte Folded Spill
	add	a0, s7, a0
	sd	a0, 248(sp)                     # 8-byte Folded Spill
	addi	s7, s6, 16
	ld	a0, 192(sp)                     # 8-byte Folded Reload
	slli	a0, a0, 2
	lui	a1, 240
	sllw	s9, a1, a0
	li	s5, -1
	addi	s6, sp, 344
	lui	s0, %hi(input)
	lui	a0, 1
	addiw	s8, a0, -2033
	li	s11, 4
	j	.LBB4_72
.LBB4_71:                               #   in Loop: Header=BB4_72 Depth=1
	sw	a0, 0(s10)
	beq	s4, s11, .LBB4_167
.LBB4_72:                               # =>This Inner Loop Header: Depth=1
	slli	s10, s4, 2
	add	s10, s6, s10
	lw	s2, 0(s10)
	sraiw	a0, s2, 31
	xor	a1, s2, a0
	subw	s3, a1, a0
	beqz	ra, .LBB4_78
# %bb.73:                               #   in Loop: Header=BB4_72 Depth=1
	ld	a0, %lo(input)(s0)
	addi	a0, a0, 2047
	lw	a0, 937(a0)
	beqz	a0, .LBB4_79
.LBB4_74:                               #   in Loop: Header=BB4_72 Depth=1
	addi	s5, s5, 1
	beqz	s3, .LBB4_84
.LBB4_75:                               #   in Loop: Header=BB4_72 Depth=1
	ld	a1, 216(sp)                     # 8-byte Folded Reload
	ld	a0, 368(a1)
	or	a0, a0, s9
	sd	a0, 368(a1)
	li	a0, 1
	sd	a0, 48(sp)                      # 8-byte Folded Spill
	ld	a0, 56(sp)                      # 8-byte Folded Reload
	bgtz	a0, .LBB4_77
# %bb.76:                               #   in Loop: Header=BB4_72 Depth=1
	li	a0, 1
	sd	a0, 56(sp)                      # 8-byte Folded Spill
.LBB4_77:                               #   in Loop: Header=BB4_72 Depth=1
	mv	a0, s3
	mv	a1, s2
	call	sign
	slli	a1, s1, 2
	ld	a2, 272(sp)                     # 8-byte Folded Reload
	add	a2, a2, a1
	sw	a0, 0(a2)
	ld	a0, 264(sp)                     # 8-byte Folded Reload
	add	a1, a0, a1
	sw	s5, 0(a1)
	addiw	s1, s1, 1
	mv	a0, s3
	mv	a1, s2
	call	sign
	li	s5, -1
	ld	ra, 208(sp)                     # 8-byte Folded Reload
	addi	s4, s4, 1
	beqz	ra, .LBB4_71
	j	.LBB4_85
.LBB4_78:                               #   in Loop: Header=BB4_72 Depth=1
	ld	a0, 256(sp)                     # 8-byte Folded Reload
	ld	a0, 0(a0)
	ld	a1, 248(sp)                     # 8-byte Folded Reload
	ld	a1, 0(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	lw	a0, 0(a0)
	lw	a1, 0(a1)
	mul	a0, a0, s3
	slli	a1, a1, 1
	add	a0, a1, a0
	sraw	s3, a0, s7
	ld	a0, %lo(input)(s0)
	addi	a0, a0, 2047
	lw	a0, 937(a0)
	bnez	a0, .LBB4_74
.LBB4_79:                               #   in Loop: Header=BB4_72 Depth=1
	mv	a0, s3
	blt	s3, s8, .LBB4_81
# %bb.80:                               #   in Loop: Header=BB4_72 Depth=1
	mv	a0, s8
.LBB4_81:                               #   in Loop: Header=BB4_72 Depth=1
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lw	a1, 40(a1)
	blt	a1, s11, .LBB4_83
# %bb.82:                               #   in Loop: Header=BB4_72 Depth=1
	mv	a0, s3
.LBB4_83:                               #   in Loop: Header=BB4_72 Depth=1
	mv	s3, a0
	addi	s5, s5, 1
	bnez	a0, .LBB4_75
.LBB4_84:                               #   in Loop: Header=BB4_72 Depth=1
	li	a0, 0
	addi	s4, s4, 1
	beqz	ra, .LBB4_71
.LBB4_85:                               #   in Loop: Header=BB4_72 Depth=1
	bne	s4, s11, .LBB4_72
.LBB4_86:
	slli	s1, s1, 2
	ld	a0, 272(sp)                     # 8-byte Folded Reload
	add	s1, a0, s1
	sw	zero, 0(s1)
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s6, 168(sp)                     # 8-byte Folded Reload
	ld	s4, 240(sp)                     # 8-byte Folded Reload
	ld	s7, 232(sp)                     # 8-byte Folded Reload
	ld	s5, 224(sp)                     # 8-byte Folded Reload
	ld	s8, 200(sp)                     # 8-byte Folded Reload
.LBB4_87:
	ld	t5, 176(sp)                     # 8-byte Folded Reload
.LBB4_88:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 22
	addiw	a3, a1, 428
	sd	a3, 40(sp)                      # 8-byte Folded Spill
	add	a3, a0, a3
	lw	a1, 0(a3)
	li	a2, 2
	ld	a4, 192(sp)                     # 8-byte Folded Reload
	mulw	a7, t5, a4
	blt	a1, a2, .LBB4_113
# %bb.89:
	li	a5, 0
	li	s0, 0
	li	a1, 0
	addi	a3, s6, 15
	addi	a0, a7, 4
	sd	a0, 24(sp)                      # 8-byte Folded Spill
	slli	a0, s5, 3
	add	s8, s8, a0
	sd	s8, 248(sp)                     # 8-byte Folded Spill
	slli	a2, s6, 3
	add	a2, s7, a2
	sd	a2, 176(sp)                     # 8-byte Folded Spill
	li	a2, 1
	sd	a3, 256(sp)                     # 8-byte Folded Spill
	sllw	a3, a2, a3
	sd	a3, 152(sp)                     # 8-byte Folded Spill
	addi	a3, s6, 16
	sd	a3, 144(sp)                     # 8-byte Folded Spill
	add	a0, s4, a0
	sd	a0, 160(sp)                     # 8-byte Folded Spill
	addi	a0, s6, -4
	sd	a0, 136(sp)                     # 8-byte Folded Spill
	li	a0, 3
	subw	a0, a0, s6
	sllw	a0, a2, a0
	sd	a0, 128(sp)                     # 8-byte Folded Spill
	li	a0, 4
	subw	a0, a0, s6
	sd	a0, 120(sp)                     # 8-byte Folded Spill
	ld	a0, 0(sp)                       # 8-byte Folded Reload
	addi	a2, a0, 3
	sd	a2, 80(sp)                      # 8-byte Folded Spill
	addi	a0, a0, 33
	sd	a0, 264(sp)                     # 8-byte Folded Spill
	slli	a0, s3, 4
	lui	a2, %hi(hor_offset)
	addi	a2, a2, %lo(hor_offset)
	add	a2, a2, a0
	sd	a2, 72(sp)                      # 8-byte Folded Spill
	lui	a2, %hi(ver_offset)
	addi	a2, a2, %lo(ver_offset)
	add	a0, a2, a0
	sd	a0, 64(sp)                      # 8-byte Folded Spill
	lui	a0, 244
	addi	a0, a0, 575
	sd	a0, 200(sp)                     # 8-byte Folded Spill
	sd	a7, 32(sp)                      # 8-byte Folded Spill
	j	.LBB4_91
.LBB4_90:                               #   in Loop: Header=BB4_91 Depth=1
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	ld	a3, 40(sp)                      # 8-byte Folded Reload
	add	a3, a0, a3
	lw	a2, 0(a3)
	addi	a5, a5, 1
	srai	a4, a2, 1
	ld	a7, 32(sp)                      # 8-byte Folded Reload
	bge	a5, a4, .LBB4_114
.LBB4_91:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_93 Depth 2
                                        #       Child Loop BB4_96 Depth 3
	li	a4, 0
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	addw	a0, a0, a5
	add	a2, a5, a7
	slli	a0, a0, 3
	sd	a0, 96(sp)                      # 8-byte Folded Spill
	slli	a2, a2, 2
	lui	a0, %hi(cbp_blk_chroma)
	addi	a0, a0, %lo(cbp_blk_chroma)
	add	a0, a0, a2
	sd	a0, 88(sp)                      # 8-byte Folded Spill
	sd	a5, 104(sp)                     # 8-byte Folded Spill
	j	.LBB4_93
.LBB4_92:                               #   in Loop: Header=BB4_93 Depth=2
	slli	s5, s5, 2
	ld	a0, 240(sp)                     # 8-byte Folded Reload
	add	s5, a0, s5
	ld	a4, 112(sp)                     # 8-byte Folded Reload
	addi	a4, a4, 1
	sw	zero, 0(s5)
	ld	a5, 104(sp)                     # 8-byte Folded Reload
	li	a0, 4
	beq	a4, a0, .LBB4_90
.LBB4_93:                               #   Parent Loop BB4_91 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_96 Depth 3
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a2, 3
	add	a0, a0, a2
	ld	a0, 1848(a0)
	slli	a2, a5, 2
	ld	a3, 72(sp)                      # 8-byte Folded Reload
	add	a3, a3, a2
	ld	a5, 96(sp)                      # 8-byte Folded Reload
	add	a0, a0, a5
	ld	a0, 0(a0)
	add	a3, a3, a4
	lbu	a3, 0(a3)
	sd	a3, 272(sp)                     # 8-byte Folded Spill
	slli	a3, a4, 3
	add	a0, a0, a3
	ld	a0, 0(a0)
	ld	a3, 64(sp)                      # 8-byte Folded Reload
	add	a2, a3, a2
	add	a2, a2, a4
	lbu	s9, 0(a2)
	ld	a2, 0(a0)
	sd	a2, 240(sp)                     # 8-byte Folded Spill
	ld	a0, 8(a0)
	sd	a0, 232(sp)                     # 8-byte Folded Spill
	li	s5, 0
	sd	a4, 112(sp)                     # 8-byte Folded Spill
	ld	a0, 88(sp)                      # 8-byte Folded Reload
	add	a0, a0, a4
	sd	a0, 224(sp)                     # 8-byte Folded Spill
	li	s11, -1
	ld	s3, 80(sp)                      # 8-byte Folded Reload
	j	.LBB4_96
.LBB4_94:                               #   in Loop: Header=BB4_96 Depth=3
	li	a1, 2
	li	s11, -1
.LBB4_95:                               #   in Loop: Header=BB4_96 Depth=3
	addi	s3, s3, 2
	ld	a0, 264(sp)                     # 8-byte Folded Reload
	beq	s3, a0, .LBB4_92
.LBB4_96:                               #   Parent Loop BB4_91 Depth=1
                                        #     Parent Loop BB4_93 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lbu	s4, 0(s3)
	lui	a0, %hi(img)
	ld	a2, %lo(img)(a0)
	lbu	s6, -1(s3)
	add	s10, s4, s9
	slli	s7, s10, 6
	add	a0, a2, s7
	ld	s8, 272(sp)                     # 8-byte Folded Reload
	add	s8, s6, s8
	slli	s1, s8, 2
	lui	a3, 3
	add	a3, s1, a3
	add	a0, a0, a3
	lw	a3, 824(a0)
	sraiw	a4, a3, 31
	xor	a3, a3, a4
	subw	s2, a3, a4
	bnez	ra, .LBB4_98
# %bb.97:                               #   in Loop: Header=BB4_96 Depth=3
	ld	a3, 248(sp)                     # 8-byte Folded Reload
	ld	a3, 0(a3)
	ld	a4, 176(sp)                     # 8-byte Folded Reload
	ld	a4, 0(a4)
	slli	a5, s6, 3
	add	a3, a3, a5
	ld	a3, 0(a3)
	add	a4, a4, a5
	ld	a4, 0(a4)
	slli	a5, s4, 2
	add	a3, a3, a5
	lw	a3, 0(a3)
	add	a4, a4, a5
	lw	a4, 0(a4)
	mul	a3, a3, s2
	add	a3, a4, a3
	ld	a4, 256(sp)                     # 8-byte Folded Reload
	sraw	s2, a3, a4
.LBB4_98:                               #   in Loop: Header=BB4_96 Depth=3
	lui	a3, 22
	add	a3, a2, a3
	lw	a3, 100(a3)
	addiw	s11, s11, 1
	beqz	a3, .LBB4_101
# %bb.99:                               #   in Loop: Header=BB4_96 Depth=3
	seqz	a3, s2
	or	a5, ra, a3
	ld	a4, 184(sp)                     # 8-byte Folded Reload
	slli	a4, a4, 11
	ld	a3, 192(sp)                     # 8-byte Folded Reload
	slli	a3, a3, 10
	beqz	a5, .LBB4_104
# %bb.100:                              #   in Loop: Header=BB4_96 Depth=3
	add	a2, a2, a4
	add	a2, a2, a3
	add	a2, a2, s7
	lui	a3, 5
	add	a3, s1, a3
	add	a2, a2, a3
	sw	zero, 840(a2)
.LBB4_101:                              #   in Loop: Header=BB4_96 Depth=3
	bnez	s2, .LBB4_105
# %bb.102:                              #   in Loop: Header=BB4_96 Depth=3
	bnez	ra, .LBB4_95
# %bb.103:                              #   in Loop: Header=BB4_96 Depth=3
	li	a0, 0
	j	.LBB4_112
.LBB4_104:                              #   in Loop: Header=BB4_96 Depth=3
	ld	a1, 248(sp)                     # 8-byte Folded Reload
	ld	a1, 0(a1)
	slli	a5, s6, 3
	add	a1, a1, a5
	ld	a1, 0(a1)
	lui	a5, %hi(AdaptRndWeight)
	lw	a5, %lo(AdaptRndWeight)(a5)
	lw	a6, 824(a0)
	slli	a7, s4, 2
	add	a1, a1, a7
	lw	a1, 0(a1)
	sraiw	a7, a6, 31
	xor	a6, a6, a7
	subw	a6, a6, a7
	mul	a1, a1, a6
	ld	a6, 256(sp)                     # 8-byte Folded Reload
	sllw	a6, s2, a6
	subw	a1, a1, a6
	mul	a1, a1, a5
	ld	a5, 152(sp)                     # 8-byte Folded Reload
	add	a1, a1, a5
	ld	a5, 144(sp)                     # 8-byte Folded Reload
	sraw	a1, a1, a5
	add	a2, a2, a4
	add	a2, a2, a3
	add	a2, a2, s7
	lui	a3, 5
	add	a3, s1, a3
	add	a2, a2, a3
	sw	a1, 840(a2)
.LBB4_105:                              #   in Loop: Header=BB4_96 Depth=3
	ld	a1, 224(sp)                     # 8-byte Folded Reload
	lbu	a1, 0(a1)
	ld	a4, 216(sp)                     # 8-byte Folded Reload
	ld	a2, 368(a4)
	li	a3, 1
	sll	a1, a3, a1
	or	a1, a1, a2
	slti	a2, s2, 2
	xori	a2, a2, 1
	or	a3, a2, ra
	sd	a1, 368(a4)
	ld	a2, 200(sp)                     # 8-byte Folded Reload
	bnez	a3, .LBB4_107
# %bb.106:                              #   in Loop: Header=BB4_96 Depth=3
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	addi	a1, a1, 2047
	lw	a1, 1093(a1)
	slli	a1, a1, 4
	lui	a2, %hi(COEFF_COST)
	addi	a2, a2, %lo(COEFF_COST)
	add	a2, a2, s11
	add	a1, a2, a1
	lbu	a2, 0(a1)
.LBB4_107:                              #   in Loop: Header=BB4_96 Depth=3
	lw	a1, 824(a0)
	addw	s0, s0, a2
	mv	a0, s2
	call	sign
	slli	a1, s5, 2
	ld	a2, 240(sp)                     # 8-byte Folded Reload
	add	a2, a2, a1
	sw	a0, 0(a2)
	ld	a0, 232(sp)                     # 8-byte Folded Reload
	add	a1, a0, a1
	sw	s11, 0(a1)
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	add	a0, a0, s7
	lui	a1, 3
	add	s1, s1, a1
	add	a0, a0, s1
	lw	a1, 824(a0)
	addiw	s5, s5, 1
	mv	a0, s2
	call	sign
	ld	ra, 208(sp)                     # 8-byte Folded Reload
	bnez	ra, .LBB4_94
# %bb.108:                              #   in Loop: Header=BB4_96 Depth=3
	ld	a1, 160(sp)                     # 8-byte Folded Reload
	ld	a1, 0(a1)
	slli	s6, s6, 3
	add	a1, a1, s6
	ld	a1, 0(a1)
	slli	s4, s4, 2
	add	a1, a1, s4
	lw	a1, 0(a1)
	mul	a0, a1, a0
	ld	a1, 168(sp)                     # 8-byte Folded Reload
	li	a2, 3
	blt	a2, a1, .LBB4_110
# %bb.109:                              #   in Loop: Header=BB4_96 Depth=3
	ld	a1, 128(sp)                     # 8-byte Folded Reload
	add	a0, a0, a1
	ld	a1, 120(sp)                     # 8-byte Folded Reload
	sraw	a0, a0, a1
	j	.LBB4_111
.LBB4_110:                              #   in Loop: Header=BB4_96 Depth=3
	ld	a1, 136(sp)                     # 8-byte Folded Reload
	sllw	a0, a0, a1
.LBB4_111:                              #   in Loop: Header=BB4_96 Depth=3
	li	a1, 2
	li	s11, -1
.LBB4_112:                              #   in Loop: Header=BB4_96 Depth=3
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	slli	s10, s10, 6
	add	a2, a2, s10
	slli	s8, s8, 2
	lui	a3, 3
	add	s8, s8, a3
	add	a2, a2, s8
	sw	a0, 824(a2)
	j	.LBB4_95
.LBB4_113:
	li	a4, 0
	li	a5, 0
	mv	a6, ra
	j	.LBB4_115
.LBB4_114:
	slti	a4, s0, 4
	xori	a4, a4, 1
	or	a6, a4, ra
	slti	a2, a2, 2
	xori	a4, a2, 1
	addi	a1, a1, -2
	seqz	a5, a1
	ld	s3, 8(sp)                       # 8-byte Folded Reload
.LBB4_115:
	lui	a1, 22
	addiw	a2, a1, 424
	add	a2, a0, a2
	lui	a1, 3
	addiw	a1, a1, 312
	add	a1, a0, a1
	ld	s8, 48(sp)                      # 8-byte Folded Reload
	beqz	a6, .LBB4_119
# %bb.116:
	li	a3, 2
	bnez	a5, .LBB4_118
# %bb.117:
	ld	a3, 56(sp)                      # 8-byte Folded Reload
.LBB4_118:
	sd	a3, 56(sp)                      # 8-byte Folded Spill
	j	.LBB4_138
.LBB4_119:
	beqz	a4, .LBB4_138
# %bb.120:
	li	a4, 0
	ld	a5, 1536(a1)
	addi	a6, a7, 4
	slli	a7, s3, 3
	lui	t0, %hi(.L__const.dct_chroma.cbpblk_pattern)
	addi	t0, t0, %lo(.L__const.dct_chroma.cbpblk_pattern)
	add	a7, t0, a7
	addi	t0, s3, 1
	ld	t1, 192(sp)                     # 8-byte Folded Reload
	sllw	t0, t1, t0
	slli	t2, s3, 4
	lui	t1, %hi(hor_offset)
	addi	t1, t1, %lo(hor_offset)
	add	t1, t1, t2
	lui	t3, %hi(ver_offset)
	addi	t3, t3, %lo(ver_offset)
	add	t2, t3, t2
	lui	t3, 3
	addiw	t3, t3, 824
	add	t3, a0, t3
	ld	t4, 0(sp)                       # 8-byte Folded Reload
	addi	t4, t4, 3
.LBB4_121:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_124 Depth 2
                                        #     Child Loop BB4_128 Depth 2
                                        #     Child Loop BB4_132 Depth 2
                                        #     Child Loop BB4_136 Depth 2
	addw	t5, a6, a4
	slli	t5, t5, 3
	add	t5, a5, t5
	ld	t5, 0(t5)
	slli	s0, a4, 2
	add	t6, t1, s0
	ld	s3, 0(t5)
	lbu	s1, 0(t6)
	add	s0, t2, s0
	lbu	s2, 0(s0)
	ld	s4, 0(s3)
	bnez	s8, .LBB4_123
# %bb.122:                              #   in Loop: Header=BB4_121 Depth=1
	ld	s3, 0(a7)
	ld	s6, 216(sp)                     # 8-byte Folded Reload
	ld	s5, 368(s6)
	sll	s3, s3, t0
	not	s3, s3
	and	s3, s5, s3
	sd	s3, 368(s6)
.LBB4_123:                              #   in Loop: Header=BB4_121 Depth=1
	sw	zero, 0(s4)
	addi	s3, s4, 4
	addi	s4, s4, 64
	mv	s5, t4
.LBB4_124:                              #   Parent Loop BB4_121 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	s6, 0(s5)
	lbu	s7, -1(s5)
	add	s6, s6, s2
	add	s7, s7, s1
	slli	s6, s6, 6
	add	s6, t3, s6
	slli	s7, s7, 2
	add	s6, s6, s7
	sw	zero, 0(s6)
	sw	zero, 0(s3)
	addi	s3, s3, 4
	addi	s5, s5, 2
	bne	s3, s4, .LBB4_124
# %bb.125:                              #   in Loop: Header=BB4_121 Depth=1
	ld	s3, 8(t5)
	lbu	s1, 1(t6)
	lbu	s2, 1(s0)
	ld	s4, 0(s3)
	bnez	s8, .LBB4_127
# %bb.126:                              #   in Loop: Header=BB4_121 Depth=1
	ld	s3, 0(a7)
	ld	s6, 216(sp)                     # 8-byte Folded Reload
	ld	s5, 368(s6)
	sll	s3, s3, t0
	not	s3, s3
	and	s3, s5, s3
	sd	s3, 368(s6)
.LBB4_127:                              #   in Loop: Header=BB4_121 Depth=1
	sw	zero, 0(s4)
	addi	s3, s4, 4
	addi	s4, s4, 64
	mv	s5, t4
.LBB4_128:                              #   Parent Loop BB4_121 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	s6, 0(s5)
	lbu	s7, -1(s5)
	add	s6, s6, s2
	add	s7, s7, s1
	slli	s6, s6, 6
	add	s6, t3, s6
	slli	s7, s7, 2
	add	s6, s6, s7
	sw	zero, 0(s6)
	sw	zero, 0(s3)
	addi	s3, s3, 4
	addi	s5, s5, 2
	bne	s3, s4, .LBB4_128
# %bb.129:                              #   in Loop: Header=BB4_121 Depth=1
	ld	s3, 16(t5)
	lbu	s1, 2(t6)
	lbu	s2, 2(s0)
	ld	s4, 0(s3)
	bnez	s8, .LBB4_131
# %bb.130:                              #   in Loop: Header=BB4_121 Depth=1
	ld	s3, 0(a7)
	ld	s6, 216(sp)                     # 8-byte Folded Reload
	ld	s5, 368(s6)
	sll	s3, s3, t0
	not	s3, s3
	and	s3, s5, s3
	sd	s3, 368(s6)
.LBB4_131:                              #   in Loop: Header=BB4_121 Depth=1
	sw	zero, 0(s4)
	addi	s3, s4, 4
	addi	s4, s4, 64
	mv	s5, t4
.LBB4_132:                              #   Parent Loop BB4_121 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	s6, 0(s5)
	lbu	s7, -1(s5)
	add	s6, s6, s2
	add	s7, s7, s1
	slli	s6, s6, 6
	add	s6, t3, s6
	slli	s7, s7, 2
	add	s6, s6, s7
	sw	zero, 0(s6)
	sw	zero, 0(s3)
	addi	s3, s3, 4
	addi	s5, s5, 2
	bne	s3, s4, .LBB4_132
# %bb.133:                              #   in Loop: Header=BB4_121 Depth=1
	ld	s1, 24(t5)
	lbu	t5, 3(t6)
	lbu	t6, 3(s0)
	ld	s1, 0(s1)
	bnez	s8, .LBB4_135
# %bb.134:                              #   in Loop: Header=BB4_121 Depth=1
	ld	s0, 0(a7)
	ld	s3, 216(sp)                     # 8-byte Folded Reload
	ld	s2, 368(s3)
	sll	s0, s0, t0
	not	s0, s0
	and	s0, s2, s0
	sd	s0, 368(s3)
.LBB4_135:                              #   in Loop: Header=BB4_121 Depth=1
	sw	zero, 0(s1)
	addi	s0, s1, 4
	addi	s1, s1, 64
	mv	s2, t4
.LBB4_136:                              #   Parent Loop BB4_121 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	s3, 0(s2)
	lbu	s4, -1(s2)
	add	s3, s3, t6
	add	s4, s4, t5
	slli	s3, s3, 6
	add	s3, t3, s3
	slli	s4, s4, 2
	add	s3, s3, s4
	sw	zero, 0(s3)
	sw	zero, 0(s0)
	addi	s0, s0, 4
	addi	s2, s2, 2
	bne	s0, s1, .LBB4_136
# %bb.137:                              #   in Loop: Header=BB4_121 Depth=1
	lw	t5, 0(a3)
	addi	a4, a4, 1
	srai	t5, t5, 1
	blt	a4, t5, .LBB4_121
.LBB4_138:
	lw	a7, 24(a2)
	slti	a3, a7, 1
	or	a3, a3, ra
	beqz	a3, .LBB4_149
.LBB4_139:
	lw	a3, 36(a2)
	bnez	a3, .LBB4_148
# %bb.140:
	blez	a7, .LBB4_148
# %bb.141:
	lwu	a6, 20(a2)
	li	a2, 0
	lw	a3, 164(a0)
	sext.w	a4, a6
	addi	a5, a1, 512
	slli	a6, a6, 2
	lui	t0, 3
	addiw	t0, t0, 824
	add	a6, a6, t0
	lui	t0, %hi(enc_picture)
	lui	t1, 2
	j	.LBB4_143
.LBB4_142:                              #   in Loop: Header=BB4_143 Depth=1
	addi	a2, a2, 1
	addi	a1, a1, 32
	addi	a5, a5, 64
	beq	a2, a7, .LBB4_148
.LBB4_143:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_146 Depth 2
	blez	a4, .LBB4_142
# %bb.144:                              #   in Loop: Header=BB4_143 Depth=1
	ld	t2, %lo(enc_picture)(t0)
	add	t2, t2, t1
	ld	t3, -1728(t2)
	add	t4, a3, a2
	lw	t2, 160(a0)
	ld	t5, 16(sp)                      # 8-byte Folded Reload
	add	t3, t3, t5
	ld	t3, 0(t3)
	slli	t4, t4, 48
	srai	t4, t4, 48
	slli	t4, t4, 3
	add	t3, t3, t4
	ld	t3, 0(t3)
	slli	t4, a2, 6
	add	t4, a6, t4
	add	t4, a0, t4
	mv	t5, a5
	mv	t6, a1
	j	.LBB4_146
.LBB4_145:                              #   in Loop: Header=BB4_146 Depth=2
	slli	s1, t2, 32
	srli	s1, s1, 32
	slli	s1, s1, 48
	srai	s1, s1, 48
	slli	s1, s1, 1
	add	s1, t3, s1
	sh	s0, 0(s1)
	addi	t6, t6, 2
	addi	t5, t5, 4
	addi	t2, t2, 1
	beq	t5, t4, .LBB4_142
.LBB4_146:                              #   Parent Loop BB4_143 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	s0, 0(t5)
	beqz	ra, .LBB4_145
# %bb.147:                              #   in Loop: Header=BB4_146 Depth=2
	lh	s1, 0(t6)
	add	s0, s1, s0
	j	.LBB4_145
.LBB4_148:
	ld	a0, 56(sp)                      # 8-byte Folded Reload
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
.LBB4_149:
	lui	a4, 3
	addiw	a4, a4, 824
	lw	t6, 20(a2)
	add	a4, a0, a4
	addi	a5, a1, 640
	addi	a6, a1, 64
	j	.LBB4_152
.LBB4_150:                              #   in Loop: Header=BB4_152 Depth=1
	lw	a7, 24(a2)
.LBB4_151:                              #   in Loop: Header=BB4_152 Depth=1
	addi	a3, a3, 4
	addi	a5, a5, 256
	addi	a6, a6, 128
	bge	a3, a7, .LBB4_139
.LBB4_152:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_155 Depth 2
                                        #       Child Loop BB4_158 Depth 3
	blez	t6, .LBB4_151
# %bb.153:                              #   in Loop: Header=BB4_152 Depth=1
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
	j	.LBB4_155
.LBB4_154:                              #   in Loop: Header=BB4_155 Depth=2
	lw	t6, 20(a2)
	addi	a7, a7, 4
	addi	t5, t5, 16
	addi	t4, t4, 8
	bge	a7, t6, .LBB4_150
.LBB4_155:                              #   Parent Loop BB4_152 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_158 Depth 3
	slli	t6, a7, 2
	add	s3, t0, t6
	lw	s4, 0(s3)
	addi	s0, t6, 4
	add	s5, t0, s0
	lw	s6, 0(s5)
	addi	s1, t6, 8
	add	s7, t0, s1
	lw	s8, 0(s7)
	addi	s2, t6, 12
	add	s9, t0, s2
	lw	s10, 0(s9)
	add	s11, s8, s4
	subw	s4, s4, s8
	srli	s8, s6, 1
	subw	s8, s8, s10
	srli	s10, s10, 1
	add	s6, s10, s6
	add	s10, s6, s11
	sw	s10, 0(s3)
	add	s3, s8, s4
	sw	s3, 0(s5)
	subw	s3, s4, s8
	sw	s3, 0(s7)
	subw	s3, s11, s6
	sw	s3, 0(s9)
	add	s3, t1, t6
	lw	s4, 0(s3)
	add	s5, t1, s0
	add	s6, t1, s1
	lw	s7, 0(s6)
	lw	s8, 0(s5)
	add	s9, t1, s2
	lw	s10, 0(s9)
	add	s11, s7, s4
	subw	s4, s4, s7
	srli	s7, s8, 1
	subw	s7, s7, s10
	srli	s10, s10, 1
	add	s8, s10, s8
	add	s10, s8, s11
	sw	s10, 0(s3)
	add	s3, s7, s4
	sw	s3, 0(s5)
	subw	s3, s4, s7
	sw	s3, 0(s6)
	subw	s3, s11, s8
	sw	s3, 0(s9)
	add	s3, t2, t6
	lw	s4, 0(s3)
	add	s5, t2, s0
	add	s6, t2, s1
	lw	s7, 0(s6)
	lw	s8, 0(s5)
	add	s9, t2, s2
	lw	s10, 0(s9)
	add	s11, s7, s4
	subw	s4, s4, s7
	srli	s7, s8, 1
	subw	s7, s7, s10
	srli	s10, s10, 1
	add	s8, s10, s8
	add	s10, s8, s11
	sw	s10, 0(s3)
	add	s3, s7, s4
	sw	s3, 0(s5)
	subw	s3, s4, s7
	sw	s3, 0(s6)
	subw	s3, s11, s8
	sw	s3, 0(s9)
	add	t6, t3, t6
	lw	s3, 0(t6)
	add	s0, t3, s0
	add	s1, t3, s1
	lw	s4, 0(s1)
	lw	s5, 0(s0)
	add	s2, t3, s2
	lw	s6, 0(s2)
	add	s7, s4, s3
	subw	s3, s3, s4
	srli	s4, s5, 1
	subw	s4, s4, s6
	srli	s6, s6, 1
	add	s5, s6, s5
	add	s6, s5, s7
	sw	s6, 0(t6)
	add	t6, s4, s3
	sw	t6, 0(s0)
	subw	t6, s3, s4
	sw	t6, 0(s1)
	subw	t6, s7, s5
	sw	t6, 0(s2)
	li	t6, 4
	mv	s0, t4
	mv	s1, t5
	j	.LBB4_158
.LBB4_156:                              #   in Loop: Header=BB4_158 Depth=3
	addi	s5, s5, 32
	sraiw	s5, s5, 6
	sw	s5, -128(s1)
	addi	s4, s4, 32
	sraiw	s4, s4, 6
	sw	s4, -64(s1)
	addi	s3, s3, 32
	sraiw	s3, s3, 6
	sw	s3, 0(s1)
	addi	s2, s2, 32
	sraiw	s2, s2, 6
.LBB4_157:                              #   in Loop: Header=BB4_158 Depth=3
	sw	s2, 64(s1)
	addi	t6, t6, -1
	addi	s1, s1, 4
	addi	s0, s0, 2
	beqz	t6, .LBB4_154
.LBB4_158:                              #   Parent Loop BB4_152 Depth=1
                                        #     Parent Loop BB4_155 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	s2, -128(s1)
	lw	s3, 0(s1)
	lw	s4, -64(s1)
	lw	s5, 64(s1)
	add	s6, s3, s2
	subw	s2, s2, s3
	srli	s3, s4, 1
	subw	s3, s3, s5
	srli	s5, s5, 1
	add	s7, s5, s4
	lw	s8, 36(a2)
	addw	s5, s7, s6
	addw	s4, s3, s2
	subw	s3, s2, s3
	subw	s2, s6, s7
	bnez	s8, .LBB4_156
# %bb.159:                              #   in Loop: Header=BB4_158 Depth=3
	lhu	s7, -64(s0)
	lw	s6, 0(a2)
	slli	s7, s7, 6
	add	s5, s5, s7
	addi	s5, s5, 32
	srai	s5, s5, 6
	sgtz	s7, s5
	neg	s7, s7
	and	s5, s7, s5
	blt	s5, s6, .LBB4_161
# %bb.160:                              #   in Loop: Header=BB4_158 Depth=3
	mv	s5, s6
.LBB4_161:                              #   in Loop: Header=BB4_158 Depth=3
	sw	s5, -128(s1)
	lhu	s6, -32(s0)
	lw	s5, 0(a2)
	slli	s6, s6, 6
	add	s4, s4, s6
	addi	s4, s4, 32
	srai	s4, s4, 6
	sgtz	s6, s4
	neg	s6, s6
	and	s4, s6, s4
	blt	s4, s5, .LBB4_163
# %bb.162:                              #   in Loop: Header=BB4_158 Depth=3
	mv	s4, s5
.LBB4_163:                              #   in Loop: Header=BB4_158 Depth=3
	sw	s4, -64(s1)
	lhu	s5, 0(s0)
	lw	s4, 0(a2)
	slli	s5, s5, 6
	add	s3, s3, s5
	addi	s3, s3, 32
	srai	s3, s3, 6
	sgtz	s5, s3
	neg	s5, s5
	and	s3, s5, s3
	blt	s3, s4, .LBB4_165
# %bb.164:                              #   in Loop: Header=BB4_158 Depth=3
	mv	s3, s4
.LBB4_165:                              #   in Loop: Header=BB4_158 Depth=3
	sw	s3, 0(s1)
	lhu	s4, 32(s0)
	lw	s3, 0(a2)
	slli	s4, s4, 6
	add	s2, s2, s4
	addi	s2, s2, 32
	srai	s2, s2, 6
	sgtz	s4, s2
	neg	s4, s4
	and	s2, s4, s2
	blt	s2, s3, .LBB4_157
# %bb.166:                              #   in Loop: Header=BB4_158 Depth=3
	mv	s2, s3
	j	.LBB4_157
.LBB4_167:
	slli	s1, s1, 2
	ld	a0, 272(sp)                     # 8-byte Folded Reload
	add	s1, a0, s1
	sw	zero, 0(s1)
	lw	a0, 344(sp)
	lw	a1, 348(sp)
	lw	a2, 352(sp)
	lw	a3, 356(sp)
	add	a4, a1, a0
	ld	s4, 240(sp)                     # 8-byte Folded Reload
	ld	a5, 160(sp)                     # 8-byte Folded Reload
	add	a5, s4, a5
	ld	a5, 0(a5)
	add	a6, a3, a2
	add	a7, a6, a4
	add	t0, a0, a2
	ld	a5, 0(a5)
	add	t1, a1, a3
	subw	t0, t0, t1
	subw	a4, a4, a6
	lw	a5, 0(a5)
	add	a1, a1, a2
	add	a0, a0, a3
	subw	a3, a0, a1
	mul	a0, a5, a7
	mul	a1, a5, t0
	mul	a2, a5, a4
	li	a4, 5
	mul	a3, a5, a3
	ld	s6, 168(sp)                     # 8-byte Folded Reload
	bge	s6, a4, .LBB4_179
# %bb.168:
	subw	a4, a4, s6
	sraw	a0, a0, a4
	sw	a0, 344(sp)
	sraw	a1, a1, a4
	sw	a1, 348(sp)
	sraw	a2, a2, a4
	sw	a2, 352(sp)
	sraw	a3, a3, a4
	j	.LBB4_180
.LBB4_169:
	slli	s1, s1, 2
	ld	a0, 272(sp)                     # 8-byte Folded Reload
	add	s1, a0, s1
	sw	zero, 0(s1)
	lw	a2, 280(sp)
	lw	a3, 312(sp)
	lw	a4, 296(sp)
	lw	a5, 328(sp)
	li	a0, 0
	li	a1, 0
	add	a6, a3, a2
	subw	a2, a2, a3
	subw	a3, a4, a5
	add	a4, a5, a4
	add	a5, a4, a6
	sw	a5, 280(sp)
	add	a5, a3, a2
	sw	a5, 296(sp)
	subw	a2, a2, a3
	sw	a2, 312(sp)
	subw	a2, a6, a4
	lw	a3, 284(sp)
	lw	a4, 316(sp)
	lw	a5, 300(sp)
	lw	a6, 332(sp)
	sw	a2, 328(sp)
	add	a2, a4, a3
	subw	a3, a3, a4
	subw	a4, a5, a6
	add	a5, a6, a5
	add	a6, a5, a2
	sw	a6, 284(sp)
	add	a6, a4, a3
	sw	a6, 300(sp)
	subw	a3, a3, a4
	sw	a3, 316(sp)
	subw	a2, a2, a5
	sw	a2, 332(sp)
	lw	a3, 288(sp)
	lw	a4, 320(sp)
	lw	a5, 304(sp)
	lw	a6, 336(sp)
	addi	a2, sp, 288
	add	a7, a4, a3
	subw	a3, a3, a4
	subw	a4, a5, a6
	add	a5, a6, a5
	add	a6, a5, a7
	sw	a6, 288(sp)
	add	a6, a4, a3
	sw	a6, 304(sp)
	subw	a3, a3, a4
	sw	a3, 320(sp)
	subw	a3, a7, a5
	lw	a4, 292(sp)
	lw	a5, 324(sp)
	lw	a6, 308(sp)
	lw	a7, 340(sp)
	sw	a3, 336(sp)
	add	a3, a5, a4
	subw	a4, a4, a5
	subw	a5, a6, a7
	add	a6, a7, a6
	add	a7, a6, a3
	sw	a7, 292(sp)
	add	a7, a5, a4
	sw	a7, 308(sp)
	subw	a4, a4, a5
	sw	a4, 324(sp)
	subw	a3, a3, a6
	sw	a3, 340(sp)
	ld	s4, 240(sp)                     # 8-byte Folded Reload
	ld	a7, 256(sp)                     # 8-byte Folded Reload
	add	a7, s4, a7
	lui	a3, %hi(img)
	ld	a5, %lo(img)(a3)
	ld	s6, 168(sp)                     # 8-byte Folded Reload
	addi	a3, s6, -4
	lui	a6, 3
	addiw	a4, a6, 1336
	add	a4, a5, a4
	addiw	a6, a6, 1592
	add	a5, a5, a6
	li	a6, 3
	ld	t0, 0(a7)
	subw	a7, a6, s6
	li	t1, 1
	sllw	a7, t1, a7
	ld	t0, 0(t0)
	li	t1, 4
	subw	t1, t1, s6
	addi	t2, sp, 352
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s7, 232(sp)                     # 8-byte Folded Reload
	ld	s5, 224(sp)                     # 8-byte Folded Reload
	ld	s8, 200(sp)                     # 8-byte Folded Reload
	j	.LBB4_172
.LBB4_170:                              #   in Loop: Header=BB4_172 Depth=1
	sllw	t6, t6, a3
	addi	t6, t6, 2
	sraiw	t6, t6, 2
	sw	t6, -512(a4)
	lw	t6, 0(t0)
	mul	t5, t6, t5
	sllw	t5, t5, a3
	addi	t5, t5, 2
	sraiw	t5, t5, 2
	sw	t5, -256(a4)
	lw	t5, 0(t0)
	mul	t4, t5, t4
	sllw	t4, t4, a3
	addi	t4, t4, 2
	sraiw	t4, t4, 2
	sw	t4, 0(a4)
	lw	t4, 0(t0)
	mul	t3, t4, t3
	sllw	t3, t3, a3
	mv	t4, a0
.LBB4_171:                              #   in Loop: Header=BB4_172 Depth=1
	addi	t3, t3, 2
	sraiw	t3, t3, 2
	slli	t4, t4, 2
	add	t4, a5, t4
	sw	t3, 0(t4)
	addi	a1, a1, 1
	addi	a0, a0, 4
	addi	a2, a2, 16
	addi	a4, a4, 16
	beq	a2, t2, .LBB4_87
.LBB4_172:                              # =>This Inner Loop Header: Depth=1
	lw	t3, -8(a2)
	lw	t4, 0(a2)
	lw	t5, -4(a2)
	lw	t6, 4(a2)
	add	s0, t4, t3
	subw	t3, t3, t4
	lw	t4, 0(t0)
	subw	s1, t5, t6
	add	s2, t6, t5
	add	t5, s2, s0
	mul	t6, t4, t5
	add	t5, s1, t3
	subw	t4, t3, s1
	subw	t3, s0, s2
	blt	a6, s6, .LBB4_170
# %bb.173:                              #   in Loop: Header=BB4_172 Depth=1
	add	t6, t6, a7
	sraw	t6, t6, t1
	addi	t6, t6, 2
	sraiw	t6, t6, 2
	sw	t6, -512(a4)
	lw	t6, 0(t0)
	mul	t5, t6, t5
	add	t5, t5, a7
	sraw	t5, t5, t1
	addi	t5, t5, 2
	sraiw	t5, t5, 2
	sw	t5, -256(a4)
	lw	t5, 0(t0)
	mul	t4, t5, t4
	add	t4, t4, a7
	sraw	t4, t4, t1
	addi	t4, t4, 2
	sraiw	t4, t4, 2
	sw	t4, 0(a4)
	lw	t5, 0(t0)
	slli	t4, a1, 2
	mul	t3, t5, t3
	add	t3, t3, a7
	sraw	t3, t3, t1
	j	.LBB4_171
.LBB4_174:
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
.LBB4_175:
	ld	s7, 232(sp)                     # 8-byte Folded Reload
	ld	s8, 200(sp)                     # 8-byte Folded Reload
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
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s6, 168(sp)                     # 8-byte Folded Reload
	ld	s5, 224(sp)                     # 8-byte Folded Reload
	ld	t5, 176(sp)                     # 8-byte Folded Reload
	bge	s2, t3, .LBB4_177
# %bb.176:
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
	j	.LBB4_178
.LBB4_177:
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
.LBB4_178:
	addi	a1, a1, 2
	sraiw	a1, a1, 2
	sw	a1, 784(a0)
	j	.LBB4_88
.LBB4_179:
	addi	a4, s6, -5
	sllw	a0, a0, a4
	sw	a0, 344(sp)
	sllw	a1, a1, a4
	sw	a1, 348(sp)
	sllw	a2, a2, a4
	sw	a2, 352(sp)
	sllw	a3, a3, a4
.LBB4_180:
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s7, 232(sp)                     # 8-byte Folded Reload
	ld	s5, 224(sp)                     # 8-byte Folded Reload
	ld	s8, 200(sp)                     # 8-byte Folded Reload
	ld	t5, 176(sp)                     # 8-byte Folded Reload
	lui	a4, %hi(img)
	ld	a4, %lo(img)(a4)
	sw	a3, 356(sp)
	lui	a5, 3
	addiw	a5, a5, 824
	add	a4, a4, a5
	sw	a0, 0(a4)
	sw	a1, 16(a4)
	sw	a2, 256(a4)
	sw	a3, 272(a4)
	j	.LBB4_88
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
	lw	s8, 0(a4)
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
	ld	s9, 0(a2)
	add	a4, a4, a3
	ld	a2, 0(a4)
	add	a3, a5, a3
	ld	a3, 0(a3)
	slli	a4, s8, 3
	add	a2, a2, a4
	ld	s10, 0(a2)
	add	a1, a3, a1
	ld	a1, 0(a1)
	sd	a1, 32(sp)                      # 8-byte Folded Spill
	addi	s11, s8, 15
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
	subw	a2, a1, a2
	add	a6, a4, a3
	subw	a4, a3, a4
	add	a1, a6, a5
	subw	a3, a5, a6
	slli	a6, a2, 1
	add	a6, a6, a4
	slli	a4, a4, 1
	lw	a5, 64(a0)
	lw	a7, 76(a0)
	lw	t0, 68(a0)
	lw	t1, 72(a0)
	subw	a2, a2, a4
	add	a4, a7, a5
	subw	a7, a5, a7
	add	a5, t1, t0
	subw	t0, t0, t1
	add	t1, a5, a4
	subw	a5, a4, a5
	slli	a4, a7, 1
	add	t2, a4, t0
	slli	t0, t0, 1
	lw	t3, 128(a0)
	lw	t4, 140(a0)
	lw	t5, 132(a0)
	lw	t6, 136(a0)
	subw	a4, a7, t0
	add	a7, t4, t3
	subw	t3, t3, t4
	add	t0, t6, t5
	subw	t5, t5, t6
	add	t4, t0, a7
	subw	a7, a7, t0
	slli	t0, t3, 1
	add	t0, t0, t5
	slli	t5, t5, 1
	lw	t6, 192(a0)
	lw	s3, 204(a0)
	lw	s5, 196(a0)
	lw	s6, 200(a0)
	subw	t3, t3, t5
	add	t5, s3, t6
	subw	t6, t6, s3
	add	s3, s6, s5
	subw	s5, s5, s6
	add	s6, s3, t5
	subw	t5, t5, s3
	slli	s3, t6, 1
	add	s3, s3, s5
	slli	s5, s5, 1
	subw	t6, t6, s5
	add	s5, s6, a1
	subw	s6, a1, s6
	add	s7, t4, t1
	subw	t1, t1, t4
	addw	a1, s7, s5
	sw	a1, 0(a0)
	subw	t4, s5, s7
	sw	t4, 128(a0)
	slli	t4, s6, 1
	add	t4, t4, t1
	sw	t4, 64(a0)
	slli	t1, t1, 1
	subw	t1, s6, t1
	sw	t1, 192(a0)
	add	t1, s3, a6
	subw	a6, a6, s3
	add	t4, t0, t2
	subw	t0, t2, t0
	add	t2, t4, t1
	sw	t2, 4(a0)
	subw	t1, t1, t4
	sw	t1, 132(a0)
	slli	t1, a6, 1
	add	t1, t1, t0
	sw	t1, 68(a0)
	slli	t0, t0, 1
	subw	a6, a6, t0
	sw	a6, 196(a0)
	add	a6, t5, a3
	subw	a3, a3, t5
	add	t0, a7, a5
	subw	a5, a5, a7
	add	a7, t0, a6
	sw	a7, 8(a0)
	subw	a6, a6, t0
	sw	a6, 136(a0)
	slli	a6, a3, 1
	add	a6, a6, a5
	sw	a6, 72(a0)
	slli	a5, a5, 1
	subw	a3, a3, a5
	sw	a3, 200(a0)
	add	a3, t6, a2
	subw	a2, a2, t6
	add	a5, t3, a4
	subw	a4, a4, t3
	add	a6, a5, a3
	sw	a6, 12(a0)
	subw	a3, a3, a5
	sw	a3, 140(a0)
	slli	a3, a2, 1
	add	a3, a3, a4
	sw	a3, 76(a0)
	slli	a4, a4, 1
	subw	a2, a2, a4
	ld	a3, 0(s9)
	ld	a4, 0(s10)
	sw	a2, 204(a0)
	sraiw	a0, a1, 31
	lw	a2, 0(a3)
	lw	a3, 0(a4)
	xor	a4, a1, a0
	subw	a4, a4, a0
	mul	a0, a2, a4
	add	a0, a3, a0
	sraw	s3, a0, s11
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
	addi	a0, s8, -4
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	sd	s9, 64(sp)                      # 8-byte Folded Spill
	sd	s10, 56(sp)                     # 8-byte Folded Spill
	sd	s11, 48(sp)                     # 8-byte Folded Spill
	bnez	s4, .LBB5_11
# %bb.8:
	ld	a0, 32(sp)                      # 8-byte Folded Reload
	ld	a0, 0(a0)
	lw	a0, 0(a0)
	li	a1, 3
	mul	a0, a0, s3
	blt	a1, s8, .LBB5_10
# %bb.9:
	subw	a1, a1, s8
	li	a2, 1
	sllw	a1, a2, a1
	add	a0, a0, a1
	li	a1, 4
	subw	a1, a1, s8
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
	subw	a0, a0, s8
	li	s0, 1
	sllw	a0, s0, a0
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	li	a0, 4
	sd	s8, 24(sp)                      # 8-byte Folded Spill
	subw	a0, a0, s8
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
	subw	a2, a1, a2
	srai	a1, a3, 1
	subw	a7, a1, a4
	srai	a4, a4, 1
	add	a3, a4, a3
	add	t1, a3, a5
	subw	a1, a5, a3
	add	a6, a7, a2
	lw	a4, 64(a0)
	lw	a5, 72(a0)
	subw	a3, a2, a7
	lw	a2, 68(a0)
	lw	a7, 76(a0)
	add	t0, a5, a4
	subw	a4, a4, a5
	srli	a5, a2, 1
	subw	a5, a5, a7
	srli	a7, a7, 1
	add	a2, a7, a2
	add	t2, a2, t0
	subw	a2, t0, a2
	add	t0, a5, a4
	lw	a7, 128(a0)
	lw	t3, 136(a0)
	subw	a5, a4, a5
	lw	a4, 132(a0)
	lw	t4, 140(a0)
	add	t5, t3, a7
	subw	a7, a7, t3
	srai	t3, a4, 1
	subw	t3, t3, t4
	srai	t4, t4, 1
	add	a4, t4, a4
	add	t4, a4, t5
	subw	a4, t5, a4
	add	t5, t3, a7
	lw	t6, 192(a0)
	lw	s0, 200(a0)
	subw	t3, a7, t3
	lw	a7, 196(a0)
	lw	s1, 204(a0)
	add	s2, s0, t6
	subw	t6, t6, s0
	srai	s0, a7, 1
	subw	s0, s0, s1
	srai	s1, s1, 1
	add	a7, s1, a7
	add	s1, a7, s2
	subw	a7, s2, a7
	add	s2, s0, t6
	subw	t6, t6, s0
	add	s0, t4, t1
	subw	t1, t1, t4
	sraiw	t4, t2, 1
	subw	t4, t4, s1
	sraiw	s1, s1, 1
	add	t2, s1, t2
	addi	s0, s0, 32
	add	s1, s0, t2
	sraiw	s1, s1, 6
	sw	s1, 0(a0)
	subw	t2, s0, t2
	sraiw	t2, t2, 6
	sw	t2, 192(a0)
	addi	t1, t1, 32
	add	t2, t1, t4
	sraiw	t2, t2, 6
	sw	t2, 64(a0)
	subw	t1, t1, t4
	sraiw	t1, t1, 6
	sw	t1, 128(a0)
	add	t1, t5, a6
	subw	a6, a6, t5
	sraiw	t2, t0, 1
	subw	t2, t2, s2
	sraiw	t4, s2, 1
	add	t0, t4, t0
	addi	t1, t1, 32
	add	t4, t1, t0
	sraiw	t4, t4, 6
	sw	t4, 4(a0)
	subw	t0, t1, t0
	sraiw	t0, t0, 6
	sw	t0, 196(a0)
	addi	a6, a6, 32
	add	t0, a6, t2
	sraiw	t0, t0, 6
	sw	t0, 68(a0)
	subw	a6, a6, t2
	sraiw	a6, a6, 6
	sw	a6, 132(a0)
	add	a6, t3, a3
	subw	a3, a3, t3
	sraiw	t0, a5, 1
	subw	t0, t0, t6
	sraiw	t1, t6, 1
	add	a5, t1, a5
	addi	a6, a6, 32
	add	t1, a6, a5
	sraiw	t1, t1, 6
	sw	t1, 8(a0)
	subw	a5, a6, a5
	sraiw	a5, a5, 6
	sw	a5, 200(a0)
	addi	a3, a3, 32
	add	a5, a3, t0
	sraiw	a5, a5, 6
	sw	a5, 72(a0)
	subw	a3, a3, t0
	sraiw	a3, a3, 6
	sw	a3, 136(a0)
	add	a3, a4, a1
	subw	a1, a1, a4
	sraiw	a4, a2, 1
	subw	a4, a4, a7
	sraiw	a5, a7, 1
	add	a2, a5, a2
	addi	a3, a3, 32
	add	a5, a3, a2
	sraiw	a5, a5, 6
	sw	a5, 12(a0)
	subw	a3, a3, a2
	sraiw	a2, a3, 6
	sw	a2, 204(a0)
	addi	a1, a1, 32
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
	slli	a0, a0, 6
	lui	s5, %hi(dc_level)
	addi	s5, s5, %lo(dc_level)
	add	s5, s5, a0
	li	s7, -1
	addi	s6, a1, 33
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
	sw	s7, 0(a1)
	addiw	s2, s2, 1
	li	s7, -1
.LBB6_2:                                #   in Loop: Header=BB6_3 Depth=1
	addi	s4, s4, 2
	beq	s4, s6, .LBB6_6
.LBB6_3:                                # =>This Inner Loop Header: Depth=1
	lbu	a0, -1(s4)
	lbu	a1, 0(s4)
	slli	a0, a0, 4
	add	a0, s5, a0
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a1, 0(a0)
	addi	s7, s7, 1
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
	sd	a2, 48(sp)                      # 8-byte Folded Spill
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
	sd	a1, 64(sp)                      # 8-byte Folded Spill
	lw	a1, 12(s0)
	lui	a2, %hi(.LCPI7_0)
	fld	fa5, %lo(.LCPI7_0)(a2)
	ld	a0, 8(a0)
	sd	a0, 40(sp)                      # 8-byte Folded Spill
	addi	a1, a1, -12
	fcvt.d.w	fa4, a1
	fdiv.d	fa0, fa4, fa5
	call	exp2
	lui	a0, %hi(.LCPI7_1)
	fld	fa5, %lo(.LCPI7_1)(a0)
	sd	zero, 176(sp)                   # 8-byte Folded Spill
	sd	zero, 56(sp)                    # 8-byte Folded Spill
	lw	a2, 12(s0)
	fmul.d	fa5, fa0, fa5
	lui	a0, 174763
	addiw	a3, a0, -1365
	mul	a0, a2, a3
	srli	a4, a0, 63
	lw	a1, 16(s0)
	srli	a0, a0, 32
	add	s4, a0, a4
	addi	a5, s4, 15
	mul	a0, a1, a3
	srli	a4, a0, 63
	srli	a0, a0, 32
	add	s6, a0, a4
	addi	s7, s6, 15
	ld	a6, %lo(img)(s8)
	sd	a5, 136(sp)                     # 8-byte Folded Spill
	sllw	a4, s3, a5
	sllw	a0, s3, s7
	addiw	s3, s9, 824
	add	a5, a6, s3
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	slli	a7, s2, 5
	add	a6, a6, a7
	addiw	a7, s9, 312
	add	t3, a6, a7
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	slli	a7, s1, 1
	add	t0, t3, a7
	lhu	t1, 0(t0)
	lw	t2, 0(a5)
	addi	t0, a7, 2
	add	t4, t3, t0
	lhu	t4, 0(t4)
	lw	t5, 4(a5)
	add	t2, t2, t1
	sw	t2, 0(a5)
	sw	t1, 256(sp)
	add	t5, t5, t4
	sw	t5, 4(a5)
	sw	t4, 272(sp)
	addi	t1, a7, 4
	add	t2, t3, t1
	lhu	t4, 0(t2)
	lw	t5, 8(a5)
	addi	t2, a7, 6
	add	t3, t3, t2
	lhu	t3, 0(t3)
	lw	t6, 12(a5)
	add	t5, t5, t4
	sw	t5, 8(a5)
	sw	t4, 288(sp)
	add	t6, t6, t3
	sw	t6, 12(a5)
	sw	t3, 304(sp)
	addiw	t3, s9, 344
	add	t3, a6, t3
	add	t4, t3, a7
	lhu	t4, 0(t4)
	lw	t5, 64(a5)
	add	t6, t3, t0
	lhu	t6, 0(t6)
	lw	s0, 68(a5)
	add	t5, t5, t4
	sw	t5, 64(a5)
	sw	t4, 260(sp)
	add	s0, s0, t6
	sw	s0, 68(a5)
	sw	t6, 276(sp)
	add	t4, t3, t1
	lhu	t4, 0(t4)
	lw	t5, 72(a5)
	add	t3, t3, t2
	lhu	t3, 0(t3)
	lw	t6, 76(a5)
	add	t5, t5, t4
	sw	t5, 72(a5)
	sw	t4, 292(sp)
	add	t6, t6, t3
	sw	t6, 76(a5)
	sw	t3, 308(sp)
	addiw	t3, s9, 376
	add	t3, a6, t3
	add	t4, t3, a7
	lhu	t4, 0(t4)
	lw	t5, 128(a5)
	add	t6, t3, t0
	lhu	t6, 0(t6)
	lw	s0, 132(a5)
	add	t5, t5, t4
	sw	t5, 128(a5)
	sw	t4, 264(sp)
	add	s0, s0, t6
	sw	s0, 132(a5)
	sw	t6, 280(sp)
	add	t4, t3, t1
	lhu	t4, 0(t4)
	lw	t5, 136(a5)
	add	t3, t3, t2
	lhu	t3, 0(t3)
	lw	t6, 140(a5)
	add	t5, t5, t4
	sw	t5, 136(a5)
	sw	t4, 296(sp)
	add	t6, t6, t3
	sw	t6, 140(a5)
	sw	t3, 312(sp)
	addiw	t3, s9, 408
	add	a6, a6, t3
	add	a7, a6, a7
	lhu	a7, 0(a7)
	lw	t3, 192(a5)
	add	t0, a6, t0
	lhu	t0, 0(t0)
	lw	t4, 196(a5)
	add	t3, t3, a7
	sw	t3, 192(a5)
	sw	a7, 268(sp)
	add	t4, t4, t0
	sw	t4, 196(a5)
	sw	t0, 284(sp)
	add	t1, a6, t1
	lhu	a7, 0(t1)
	lw	t0, 200(a5)
	add	a6, a6, t2
	lhu	a6, 0(a6)
	lw	t1, 204(a5)
	add	t0, t0, a7
	sw	t0, 200(a5)
	sw	a7, 300(sp)
	add	t1, t1, a6
	sw	t1, 204(a5)
	sw	a6, 316(sp)
	li	a5, 6
	sd	s4, 152(sp)                     # 8-byte Folded Spill
	mul	a6, s4, a5
	subw	a2, a2, a6
	sd	a2, 104(sp)                     # 8-byte Folded Spill
	ld	a2, %lo(img)(s8)
	mul	a3, a4, a3
	srli	a4, a3, 63
	srli	a3, a3, 32
	sd	s3, 112(sp)                     # 8-byte Folded Spill
	add	a2, a2, s3
	lw	a6, 0(a2)
	lw	a7, 12(a2)
	lw	t0, 4(a2)
	lw	t1, 8(a2)
	add	a3, a3, a4
	sd	a3, 96(sp)                      # 8-byte Folded Spill
	add	a3, a7, a6
	subw	a6, a6, a7
	add	a4, t1, t0
	subw	a7, t0, t1
	add	t0, a4, a3
	subw	a3, a3, a4
	sw	a3, 8(a2)
	slli	a4, a6, 1
	add	a4, a4, a7
	slli	a7, a7, 1
	subw	a3, a6, a7
	lw	a6, 64(a2)
	lw	a7, 76(a2)
	lw	t1, 68(a2)
	lw	t2, 72(a2)
	sw	a3, 12(a2)
	add	a3, a7, a6
	subw	a6, a6, a7
	add	a7, t2, t1
	subw	t1, t1, t2
	add	t2, a7, a3
	subw	a3, a3, a7
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
	subw	t3, a6, t3
	slli	a6, t1, 1
	add	t6, a6, t4
	slli	t4, t4, 1
	lw	s0, 192(a2)
	lw	s1, 204(a2)
	lw	s2, 196(a2)
	lw	s3, 200(a2)
	subw	a6, t1, t4
	add	t1, s1, s0
	subw	s0, s0, s1
	add	t4, s3, s2
	subw	s1, s2, s3
	add	s2, t4, t1
	subw	t1, t1, t4
	slli	t4, s0, 1
	add	t4, t4, s1
	slli	s1, s1, 1
	subw	s0, s0, s1
	sd	s6, 128(sp)                     # 8-byte Folded Spill
	mul	a5, s6, a5
	subw	a1, a1, a5
	sd	a1, 88(sp)                      # 8-byte Folded Spill
	add	a1, s2, t0
	subw	a5, t0, s2
	add	t0, t5, t2
	subw	t2, t2, t5
	add	t5, t0, a1
	sw	t5, 0(a2)
	subw	a1, a1, t0
	sw	a1, 128(a2)
	slli	a1, a5, 1
	add	a1, a1, t2
	sw	a1, 64(a2)
	slli	t2, t2, 1
	subw	a1, a5, t2
	sw	a1, 192(a2)
	add	a1, t4, a4
	subw	a4, a4, t4
	add	a5, t6, a7
	subw	a7, a7, t6
	add	t0, a5, a1
	sw	t0, 4(a2)
	subw	a1, a1, a5
	sw	a1, 132(a2)
	slli	a1, a4, 1
	add	a1, a1, a7
	sw	a1, 68(a2)
	lw	a1, 8(a2)
	slli	a7, a7, 1
	subw	a4, a4, a7
	sw	a4, 196(a2)
	add	a4, t1, a1
	subw	a1, a1, t1
	add	a5, t3, a3
	subw	a3, a3, t3
	add	a7, a5, a4
	sw	a7, 8(a2)
	subw	a4, a4, a5
	sw	a4, 136(a2)
	slli	a4, a1, 1
	add	a4, a4, a3
	sw	a4, 72(a2)
	slli	a3, a3, 1
	lw	a4, 12(a2)
	subw	a1, a1, a3
	lw	a3, 76(a2)
	sw	a1, 200(a2)
	add	a1, s0, a4
	subw	a4, a4, s0
	add	a5, a6, a3
	subw	a3, a3, a6
	add	a6, a5, a1
	sw	a6, 12(a2)
	subw	a1, a1, a5
	sw	a1, 140(a2)
	slli	a1, a4, 1
	add	a1, a1, a3
	sw	a1, 76(a2)
	slli	a3, a3, 1
	subw	a4, a4, a3
	sw	a4, 204(a2)
	lui	a1, %hi(.LCPI7_2)
	fld	fa4, %lo(.LCPI7_2)(a1)
	lw	a1, 256(sp)
	lw	a2, 304(sp)
	lw	a3, 272(sp)
	lw	a4, 288(sp)
	fmul.d	fs0, fa5, fa4
	add	a5, a2, a1
	subw	a2, a1, a2
	add	a1, a4, a3
	subw	a3, a3, a4
	add	a6, a1, a5
	subw	a1, a5, a1
	slli	a4, a2, 1
	add	a4, a4, a3
	slli	a3, a3, 1
	subw	a2, a2, a3
	lw	a3, 260(sp)
	lw	a5, 308(sp)
	lw	a7, 276(sp)
	lw	t0, 292(sp)
	sw	a2, 304(sp)
	add	a2, a5, a3
	subw	a5, a3, a5
	add	a3, t0, a7
	subw	a7, a7, t0
	add	t0, a3, a2
	subw	a3, a2, a3
	slli	a2, a5, 1
	add	t1, a2, a7
	slli	a7, a7, 1
	lw	t2, 264(sp)
	lw	t3, 312(sp)
	lw	t4, 280(sp)
	lw	t5, 296(sp)
	subw	a2, a5, a7
	add	a5, t3, t2
	subw	a7, t2, t3
	add	t2, t5, t4
	subw	t4, t4, t5
	add	t3, t2, a5
	subw	t2, a5, t2
	slli	a5, a7, 1
	add	t5, a5, t4
	slli	t4, t4, 1
	lw	t6, 268(sp)
	lw	s0, 316(sp)
	lw	s1, 284(sp)
	lw	s2, 300(sp)
	subw	a5, a7, t4
	add	a7, s0, t6
	subw	t6, t6, s0
	add	t4, s2, s1
	subw	s0, s1, s2
	add	s1, t4, a7
	subw	a7, a7, t4
	slli	t4, t6, 1
	add	t4, t4, s0
	slli	s0, s0, 1
	subw	t6, t6, s0
	add	s0, s1, a6
	subw	a6, a6, s1
	add	s1, t3, t0
	subw	t0, t0, t3
	add	t3, s1, s0
	sw	t3, 256(sp)
	subw	s0, s0, s1
	sw	s0, 264(sp)
	slli	t3, a6, 1
	add	t3, t3, t0
	sw	t3, 260(sp)
	slli	t0, t0, 1
	subw	a6, a6, t0
	sw	a6, 268(sp)
	add	a6, t4, a4
	subw	a4, a4, t4
	add	t0, t5, t1
	subw	t1, t1, t5
	add	t3, t0, a6
	sw	t3, 272(sp)
	subw	a6, a6, t0
	sw	a6, 280(sp)
	slli	a6, a4, 1
	add	a6, a6, t1
	sw	a6, 276(sp)
	slli	t1, t1, 1
	subw	a4, a4, t1
	sw	a4, 284(sp)
	add	a4, a7, a1
	subw	a1, a1, a7
	add	a6, t2, a3
	subw	a3, a3, t2
	add	a7, a6, a4
	sw	a7, 288(sp)
	subw	a4, a4, a6
	sw	a4, 296(sp)
	slli	a4, a1, 1
	add	a4, a4, a3
	sw	a4, 292(sp)
	lw	a4, 304(sp)
	slli	a3, a3, 1
	subw	a1, a1, a3
	sw	a1, 300(sp)
	add	a1, t6, a4
	subw	a4, a4, t6
	add	a3, a5, a2
	subw	a2, a2, a5
	add	a5, a3, a1
	sw	a5, 304(sp)
	subw	a1, a1, a3
	sw	a1, 312(sp)
	slli	a1, a4, 1
	add	a1, a1, a2
	sw	a1, 308(sp)
	slli	a2, a2, 1
	subw	a4, a4, a2
	sw	a4, 316(sp)
	srliw	a1, a0, 31
	add	a0, a0, a1
	sraiw	s10, a0, 1
	li	a0, -1
	sd	s7, 120(sp)                     # 8-byte Folded Spill
	sllw	a0, a0, s7
	li	s0, -1
	sd	a0, 72(sp)                      # 8-byte Folded Spill
	ld	a1, %lo(img)(s8)
	li	s7, 16
	lui	s4, %hi(SNGL_SCAN)
	addi	s4, s4, %lo(SNGL_SCAN)
	lui	s1, %hi(FIELD_SCAN)
	addi	s1, s1, %lo(FIELD_SCAN)
	lui	a0, 244
	addi	a0, a0, 575
	sd	a0, 32(sp)                      # 8-byte Folded Spill
	addiw	a0, s5, 420
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	sd	s10, 80(sp)                     # 8-byte Folded Spill
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
	ld	a1, %lo(img)(s3)
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
	addi	s7, s7, -1
	addi	s4, s4, 2
	addi	s1, s1, 2
	beqz	s7, .LBB7_28
.LBB7_6:                                # =>This Inner Loop Header: Depth=1
	sd	s7, 208(sp)                     # 8-byte Folded Spill
	mv	a0, s1
	ld	a2, 144(sp)                     # 8-byte Folded Reload
	bnez	a2, .LBB7_8
# %bb.7:                                #   in Loop: Header=BB7_6 Depth=1
	mv	a0, s4
.LBB7_8:                                #   in Loop: Header=BB7_6 Depth=1
	sd	s4, 216(sp)                     # 8-byte Folded Spill
	lbu	a3, 0(a0)
	lbu	s9, 1(a0)
	addiw	s0, s0, 1
	sd	s0, 240(sp)                     # 8-byte Folded Spill
	slli	s11, a3, 4
	addi	a0, sp, 256
	add	a0, a0, s11
	slli	s2, s9, 2
	add	a0, a0, s2
	lw	s5, 0(a0)
	ld	s0, 88(sp)                      # 8-byte Folded Reload
	slli	s0, s0, 6
	lui	s6, %hi(quant_coef)
	addi	s6, s6, %lo(quant_coef)
	add	a0, s6, s0
	add	a0, a0, s11
	add	a0, a0, s2
	lw	a4, 0(a0)
	sraiw	a0, s5, 31
	xor	a2, s5, a0
	subw	a2, a2, a0
	mul	a0, a2, a4
	sd	s9, 160(sp)                     # 8-byte Folded Spill
	slli	s9, s9, 6
	add	a1, a1, s9
	sd	a3, 168(sp)                     # 8-byte Folded Spill
	slli	s3, a3, 2
	lui	s8, 3
	add	a2, s3, s8
	add	a1, a1, a2
	lw	s4, 824(a1)
	add	a0, a0, s10
	ld	a1, 72(sp)                      # 8-byte Folded Reload
	and	a0, a0, a1
	sd	a4, 192(sp)                     # 8-byte Folded Spill
	divw	a0, a0, a4
	mv	a1, s5
	call	sign
	subw	s7, s4, a0
	sraiw	a0, s7, 31
	xor	a1, s7, a0
	ld	a2, 104(sp)                     # 8-byte Folded Reload
	slli	s4, a2, 6
	add	a2, s6, s4
	lui	a3, %hi(img)
	ld	a3, %lo(img)(a3)
	add	a2, a2, s11
	add	a2, a2, s2
	lw	a2, 0(a2)
	sd	s9, 232(sp)                     # 8-byte Folded Spill
	add	a3, a3, s9
	sd	s3, 224(sp)                     # 8-byte Folded Spill
	add	a4, s3, s8
	add	a3, a3, a4
	lw	s10, 824(a3)
	subw	a1, a1, a0
	mul	a0, a1, a2
	ld	a4, 96(sp)                      # 8-byte Folded Reload
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
	sd	s0, 200(sp)                     # 8-byte Folded Spill
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
	ld	s3, 152(sp)                     # 8-byte Folded Reload
	sllw	a0, a0, s3
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
	sllw	a0, a0, s3
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
	bnez	a0, .LBB7_14
.LBB7_13:                               #   in Loop: Header=BB7_6 Depth=1
	mv	s10, s8
.LBB7_14:                               #   in Loop: Header=BB7_6 Depth=1
	beq	s10, s9, .LBB7_16
# %bb.15:                               #   in Loop: Header=BB7_6 Depth=1
	mv	s7, s6
.LBB7_16:                               #   in Loop: Header=BB7_6 Depth=1
	mv	s6, s7
	ld	s0, 240(sp)                     # 8-byte Folded Reload
	ld	s7, 208(sp)                     # 8-byte Folded Reload
	j	.LBB7_21
.LBB7_17:                               #   in Loop: Header=BB7_6 Depth=1
	bne	s9, s8, .LBB7_19
# %bb.18:                               #   in Loop: Header=BB7_6 Depth=1
	mv	s6, s7
	mv	s8, s9
	ld	s4, 216(sp)                     # 8-byte Folded Reload
	ld	s0, 240(sp)                     # 8-byte Folded Reload
	ld	s7, 208(sp)                     # 8-byte Folded Reload
	j	.LBB7_20
.LBB7_19:                               #   in Loop: Header=BB7_6 Depth=1
	ld	s4, 216(sp)                     # 8-byte Folded Reload
	ld	s0, 240(sp)                     # 8-byte Folded Reload
	ld	s7, 208(sp)                     # 8-byte Folded Reload
	beqz	s9, .LBB7_24
.LBB7_20:                               #   in Loop: Header=BB7_6 Depth=1
	mv	s10, s8
	beqz	s8, .LBB7_24
.LBB7_21:                               #   in Loop: Header=BB7_6 Depth=1
	ld	a0, 32(sp)                      # 8-byte Folded Reload
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
	add	a1, a1, s0
	add	a0, a1, a0
	lbu	a0, 0(a0)
.LBB7_23:                               #   in Loop: Header=BB7_6 Depth=1
	ld	a2, 48(sp)                      # 8-byte Folded Reload
	lw	a1, 0(a2)
	add	a0, a1, a0
	sw	a0, 0(a2)
	mv	a0, s10
	mv	a1, s6
	call	sign
	ld	a3, 176(sp)                     # 8-byte Folded Reload
	slli	a1, a3, 2
	ld	a2, 64(sp)                      # 8-byte Folded Reload
	add	a2, a2, a1
	sw	a0, 0(a2)
	ld	a0, 40(sp)                      # 8-byte Folded Reload
	add	a1, a0, a1
	sw	s0, 0(a1)
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
	sd	a1, 56(sp)                      # 8-byte Folded Spill
	j	.LBB7_25
.LBB7_24:                               #   in Loop: Header=BB7_6 Depth=1
	li	a0, 0
.LBB7_25:                               #   in Loop: Header=BB7_6 Depth=1
	lui	s3, %hi(img)
	ld	a3, 192(sp)                     # 8-byte Folded Reload
	lui	a1, %hi(si_frame_indicator)
	lw	a1, %lo(si_frame_indicator)(a1)
	lui	a2, %hi(sp2_frame_indicator)
	lw	a2, %lo(sp2_frame_indicator)(a2)
	addw	s5, a0, s5
	or	a1, a1, a2
	sraiw	a0, s5, 31
	xor	a2, s5, a0
	subw	a2, a2, a0
	mul	a0, a2, a3
	ld	s10, 80(sp)                     # 8-byte Folded Reload
	add	a0, a0, s10
	ld	a2, 120(sp)                     # 8-byte Folded Reload
	sraw	s6, a0, a2
	bnez	a1, .LBB7_5
# %bb.26:                               #   in Loop: Header=BB7_6 Depth=1
	mv	a0, s6
	mv	a1, s5
	call	sign
	ld	a1, %lo(img)(s3)
	lw	a2, 156(a1)
	lui	a3, %hi(lrec)
	ld	a3, %lo(lrec)(a3)
	ld	a4, 16(sp)                      # 8-byte Folded Reload
	ld	a5, 160(sp)                     # 8-byte Folded Reload
	add	a4, a5, a4
	addw	a2, a4, a2
	slli	a2, a2, 3
	lw	a1, 152(a1)
	add	a2, a3, a2
	ld	a2, 0(a2)
	ld	a3, 24(sp)                      # 8-byte Folded Reload
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
	beqz	a0, .LBB7_13
	j	.LBB7_14
.LBB7_28:
	ld	a2, 176(sp)                     # 8-byte Folded Reload
	slli	a2, a2, 2
	ld	a3, 64(sp)                      # 8-byte Folded Reload
	add	a2, a3, a2
	sw	zero, 0(a2)
	lw	a3, 0(a0)
	lw	a4, 8(a0)
	ld	a2, 8(sp)                       # 8-byte Folded Reload
	add	a2, a1, a2
	lw	a5, 4(a0)
	lw	a6, 12(a0)
	add	a7, a4, a3
	subw	a3, a3, a4
	srli	a4, a5, 1
	subw	a4, a4, a6
	srli	a6, a6, 1
	add	a5, a6, a5
	add	a6, a5, a7
	sw	a6, 0(a0)
	subw	a5, a7, a5
	sw	a5, 12(a0)
	add	a5, a4, a3
	sw	a5, 4(a0)
	subw	a3, a3, a4
	lw	a4, 64(a0)
	lw	a5, 72(a0)
	sw	a3, 8(a0)
	lw	a3, 68(a0)
	lw	a6, 76(a0)
	add	a7, a5, a4
	subw	a4, a4, a5
	srli	a5, a3, 1
	subw	a5, a5, a6
	srli	a6, a6, 1
	add	a3, a6, a3
	add	a6, a3, a7
	sw	a6, 64(a0)
	subw	a3, a7, a3
	sw	a3, 76(a0)
	add	a3, a5, a4
	sw	a3, 68(a0)
	subw	a4, a4, a5
	lw	a3, 128(a0)
	lw	a5, 136(a0)
	sw	a4, 72(a0)
	lw	a4, 132(a0)
	lw	a6, 140(a0)
	add	a7, a5, a3
	subw	a3, a3, a5
	srli	a5, a4, 1
	subw	a5, a5, a6
	srli	a6, a6, 1
	add	a4, a6, a4
	add	a6, a4, a7
	sw	a6, 128(a0)
	subw	a4, a7, a4
	sw	a4, 140(a0)
	add	a4, a5, a3
	sw	a4, 132(a0)
	subw	a3, a3, a5
	sw	a3, 136(a0)
	lw	a4, 192(a0)
	lw	a5, 200(a0)
	addi	a3, a0, 192
	lw	a6, 196(a0)
	lw	a7, 204(a0)
	add	t0, a5, a4
	subw	a4, a4, a5
	srli	a5, a6, 1
	subw	a5, a5, a7
	srli	a7, a7, 1
	add	a6, a7, a6
	add	a7, a6, t0
	sw	a7, 192(a0)
	subw	a6, t0, a6
	sw	a6, 204(a0)
	add	a6, a5, a4
	sw	a6, 196(a0)
	subw	a4, a4, a5
	sw	a4, 200(a0)
	lui	a4, 3
	addiw	a4, a4, 1032
	add	a4, a1, a4
	ld	t6, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	j	.LBB7_30
.LBB7_29:                               #   in Loop: Header=BB7_30 Depth=1
	sw	a7, -64(a3)
	addi	a3, a3, 4
	beq	a3, a4, .LBB7_38
.LBB7_30:                               # =>This Inner Loop Header: Depth=1
	lw	a5, -192(a3)
	lw	a7, -64(a3)
	lw	a6, 0(a3)
	lw	t0, -128(a3)
	add	t2, a7, a5
	srli	t1, a6, 1
	add	t1, t1, t0
	lw	t3, 0(a2)
	addi	t2, t2, 32
	add	t4, t2, t1
	sraiw	t4, t4, 6
	sgtz	t5, t4
	neg	t5, t5
	and	t4, t5, t4
	blt	t3, t4, .LBB7_32
# %bb.31:                               #   in Loop: Header=BB7_30 Depth=1
	mv	t3, t4
.LBB7_32:                               #   in Loop: Header=BB7_30 Depth=1
	sw	t3, -192(a3)
	lw	t3, 0(a2)
	subw	t1, t2, t1
	sraiw	t1, t1, 6
	sgtz	t2, t1
	neg	t2, t2
	and	t1, t2, t1
	blt	t3, t1, .LBB7_34
# %bb.33:                               #   in Loop: Header=BB7_30 Depth=1
	mv	t3, t1
.LBB7_34:                               #   in Loop: Header=BB7_30 Depth=1
	subw	t1, a5, a7
	srli	a5, t0, 1
	subw	a5, a5, a6
	sw	t3, 0(a3)
	lw	a7, 0(a2)
	addi	a6, t1, 32
	add	t0, a6, a5
	sraiw	t0, t0, 6
	sgtz	t1, t0
	neg	t1, t1
	and	t0, t1, t0
	blt	a7, t0, .LBB7_36
# %bb.35:                               #   in Loop: Header=BB7_30 Depth=1
	mv	a7, t0
.LBB7_36:                               #   in Loop: Header=BB7_30 Depth=1
	sw	a7, -128(a3)
	lw	a7, 0(a2)
	subw	a5, a6, a5
	sraiw	a5, a5, 6
	sgtz	a6, a5
	neg	a6, a6
	and	a5, a6, a5
	blt	a7, a5, .LBB7_29
# %bb.37:                               #   in Loop: Header=BB7_30 Depth=1
	mv	a7, a5
	j	.LBB7_29
.LBB7_38:
	lui	a2, %hi(enc_picture)
	ld	a2, %lo(enc_picture)(a2)
	lui	a3, 2
	lw	a4, 156(a1)
	add	a2, a2, a3
	ld	a2, -1768(a2)
	lw	a1, 152(a1)
	addw	a4, a4, s0
	slli	a3, a4, 3
	add	a3, a2, a3
	ld	a7, 0(a3)
	lh	a5, 0(a0)
	addw	a6, a1, t6
	slli	a3, a6, 1
	add	a1, a7, a3
	sh	a5, 0(a1)
	lh	a1, 4(a0)
	addiw	a5, a6, 1
	slli	a5, a5, 1
	add	t0, a7, a5
	sh	a1, 0(t0)
	lh	t0, 8(a0)
	addiw	a1, a6, 2
	slli	a1, a1, 1
	add	t1, a7, a1
	sh	t0, 0(t1)
	lh	t0, 12(a0)
	addiw	a6, a6, 3
	slli	a6, a6, 1
	addiw	t1, a4, 1
	slli	t1, t1, 3
	add	t1, a2, t1
	ld	t1, 0(t1)
	add	a7, a7, a6
	lh	t2, 64(a0)
	sh	t0, 0(a7)
	add	a7, t1, a3
	lh	t0, 68(a0)
	sh	t2, 0(a7)
	lh	a7, 72(a0)
	add	t2, t1, a5
	sh	t0, 0(t2)
	add	t0, t1, a1
	sh	a7, 0(t0)
	lh	a7, 76(a0)
	addiw	t0, a4, 2
	slli	t0, t0, 3
	add	t0, a2, t0
	ld	t0, 0(t0)
	add	t1, t1, a6
	lh	t2, 128(a0)
	sh	a7, 0(t1)
	add	a7, t0, a3
	lh	t1, 132(a0)
	sh	t2, 0(a7)
	lh	a7, 136(a0)
	add	t2, t0, a5
	sh	t1, 0(t2)
	add	t1, t0, a1
	sh	a7, 0(t1)
	lh	a7, 140(a0)
	addiw	a4, a4, 3
	slli	a4, a4, 3
	add	a2, a2, a4
	ld	a2, 0(a2)
	add	t0, t0, a6
	lh	a4, 192(a0)
	sh	a7, 0(t0)
	add	a3, a2, a3
	lh	a7, 196(a0)
	sh	a4, 0(a3)
	add	a5, a2, a5
	lh	a3, 200(a0)
	sh	a7, 0(a5)
	lh	a0, 204(a0)
	add	a1, a2, a1
	sh	a3, 0(a1)
	add	a2, a2, a6
	sh	a0, 0(a2)
	ld	a0, 56(sp)                      # 8-byte Folded Reload
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
	addi	sp, sp, -752
	sd	ra, 744(sp)                     # 8-byte Folded Spill
	sd	s0, 736(sp)                     # 8-byte Folded Spill
	sd	s1, 728(sp)                     # 8-byte Folded Spill
	sd	s2, 720(sp)                     # 8-byte Folded Spill
	sd	s3, 712(sp)                     # 8-byte Folded Spill
	sd	s4, 704(sp)                     # 8-byte Folded Spill
	sd	s5, 696(sp)                     # 8-byte Folded Spill
	sd	s6, 688(sp)                     # 8-byte Folded Spill
	sd	s7, 680(sp)                     # 8-byte Folded Spill
	sd	s8, 672(sp)                     # 8-byte Folded Spill
	sd	s9, 664(sp)                     # 8-byte Folded Spill
	sd	s10, 656(sp)                    # 8-byte Folded Spill
	sd	s11, 648(sp)                    # 8-byte Folded Spill
	fsd	fs0, 640(sp)                    # 8-byte Folded Spill
	fsd	fs1, 632(sp)                    # 8-byte Folded Spill
	fsd	fs2, 624(sp)                    # 8-byte Folded Spill
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	sd	a1, 40(sp)                      # 8-byte Folded Spill
	mv	s1, a0
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
	add	s0, a3, a2
	li	a2, 1
	sd	a2, 184(sp)                     # 8-byte Folded Spill
	bnez	a4, .LBB8_4
# %bb.1:
	lw	a1, 0(a1)
	beqz	a1, .LBB8_3
# %bb.2:
	lw	a1, 424(s0)
	snez	a1, a1
	sd	a1, 184(sp)                     # 8-byte Folded Spill
	j	.LBB8_4
.LBB8_3:
	sd	zero, 184(sp)                   # 8-byte Folded Spill
.LBB8_4:
	ld	a0, 0(a0)
	slli	a1, s1, 3
	add	a0, a0, a1
	ld	a0, 8(a0)
	ld	a1, 0(a0)
	sd	a1, 48(sp)                      # 8-byte Folded Spill
	lw	a1, 12(s0)
	lui	a2, %hi(.LCPI8_0)
	fld	fa5, %lo(.LCPI8_0)(a2)
	ld	a0, 8(a0)
	sd	a0, 32(sp)                      # 8-byte Folded Spill
	addi	a1, a1, -12
	fcvt.d.w	fa4, a1
	fdiv.d	fa0, fa4, fa5
	call	exp2
	lui	a0, %hi(active_pps)
	ld	a0, %lo(active_pps)(a0)
	lw	a2, 12(s0)
	lw	a0, 208(a0)
	addw	a2, a0, a2
	li	a1, 51
	lui	a3, %hi(.LCPI8_1)
	blt	a2, a1, .LBB8_6
# %bb.5:
	li	a2, 51
.LBB8_6:
	lw	a4, 16(s0)
	fld	fa5, %lo(.LCPI8_1)(a3)
	sgtz	a3, a2
	neg	a3, a3
	addw	a0, a4, a0
	and	a2, a3, a2
	blt	a0, a1, .LBB8_8
# %bb.7:
	li	a0, 51
.LBB8_8:
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 112(sp)                     # 8-byte Folded Spill
	fmul.d	fa5, fa0, fa5
	lui	a1, %hi(QP_SCALE_CR)
	addi	a1, a1, %lo(QP_SCALE_CR)
	add	a2, a1, a2
	lbu	a2, 0(a2)
	sgtz	a3, a0
	neg	a3, a3
	and	a0, a3, a0
	andi	a3, a2, 255
	li	a4, 171
	mul	a3, a3, a4
	srli	a6, a3, 10
	li	a3, 6
	mul	a5, a6, a3
	add	a0, a1, a0
	lbu	a0, 0(a0)
	sub	a2, a2, a5
	sd	a2, 16(sp)                      # 8-byte Folded Spill
	lui	a1, 8
	sd	a6, 248(sp)                     # 8-byte Folded Spill
	sllw	a2, a1, a6
	sd	a2, 0(sp)                       # 8-byte Folded Spill
	andi	a2, a0, 255
	mul	a2, a2, a4
	srli	a4, a2, 10
	mul	a2, a4, a3
	sub	a0, a0, a2
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	lui	a0, %hi(img)
	ld	a3, %lo(img)(a0)
	sd	a4, 224(sp)                     # 8-byte Folded Spill
	sllw	a0, a1, a4
	sd	a0, 56(sp)                      # 8-byte Folded Spill
	lui	a4, 3
	addiw	a0, a4, 326
	add	a0, a3, a0
	addiw	a1, a4, 824
	add	a1, a3, a1
	sd	a1, 64(sp)                      # 8-byte Folded Spill
	addiw	a1, a4, 852
	add	a1, a3, a1
	addi	a2, sp, 480
	addiw	a4, a4, 1364
	add	a3, a3, a4
.LBB8_9:                                # =>This Inner Loop Header: Depth=1
	lhu	a4, -14(a0)
	lw	a5, -28(a1)
	lhu	a6, -12(a0)
	lw	a7, -24(a1)
	add	a5, a5, a4
	sw	a5, -28(a1)
	sw	a4, -128(a2)
	add	a7, a7, a6
	sw	a7, -24(a1)
	lhu	a4, -10(a0)
	lw	a5, -20(a1)
	sw	a6, -96(a2)
	lhu	a6, -8(a0)
	lw	a7, -16(a1)
	add	a5, a5, a4
	sw	a5, -20(a1)
	sw	a4, -64(a2)
	add	a7, a7, a6
	sw	a7, -16(a1)
	lhu	a4, -6(a0)
	lw	a5, -12(a1)
	sw	a6, -32(a2)
	lhu	a6, -4(a0)
	lw	a7, -8(a1)
	add	a5, a5, a4
	sw	a5, -12(a1)
	sw	a4, 0(a2)
	add	a7, a7, a6
	sw	a7, -8(a1)
	lhu	a4, -2(a0)
	lw	a5, -4(a1)
	sw	a6, 32(a2)
	lhu	a6, 0(a0)
	lw	a7, 0(a1)
	add	a5, a5, a4
	sw	a5, -4(a1)
	sw	a4, 64(a2)
	add	a7, a7, a6
	sw	a7, 0(a1)
	sw	a6, 96(a2)
	addi	a1, a1, 64
	addi	a0, a0, 32
	addi	a2, a2, 4
	bne	a1, a3, .LBB8_9
# %bb.10:
	li	a0, 0
	ld	a1, 248(sp)                     # 8-byte Folded Reload
	addi	a1, a1, 15
	sd	a1, 176(sp)                     # 8-byte Folded Spill
	ld	a1, 224(sp)                     # 8-byte Folded Reload
	addi	a1, a1, 15
	sd	a1, 96(sp)                      # 8-byte Folded Spill
	li	a2, 1
.LBB8_11:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_12 Depth 2
	sd	a2, 72(sp)                      # 8-byte Folded Spill
	li	a1, 0
	addi	a2, a0, 2
	addi	a3, a0, 1
	addi	a4, a0, 3
	slli	a0, a0, 6
	ld	a5, 64(sp)                      # 8-byte Folded Reload
	add	a0, a5, a0
	sd	a0, 120(sp)                     # 8-byte Folded Spill
	slli	a3, a3, 6
	add	a3, a5, a3
	sd	a3, 104(sp)                     # 8-byte Folded Spill
	slli	a2, a2, 6
	add	a2, a5, a2
	sd	a2, 88(sp)                      # 8-byte Folded Spill
	slli	a4, a4, 6
	add	a4, a5, a4
	sd	a4, 80(sp)                      # 8-byte Folded Spill
	li	a2, 1
.LBB8_12:                               #   Parent Loop BB8_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sd	a2, 304(sp)                     # 8-byte Folded Spill
	slli	a1, a1, 2
	ld	s6, 120(sp)                     # 8-byte Folded Reload
	add	a0, s6, a1
	sd	a0, 216(sp)                     # 8-byte Folded Spill
	lw	a2, 0(a0)
	sd	a2, 208(sp)                     # 8-byte Folded Spill
	addi	t6, a1, 12
	add	a0, s6, t6
	sd	a0, 312(sp)                     # 8-byte Folded Spill
	lw	a3, 0(a0)
	sd	a3, 200(sp)                     # 8-byte Folded Spill
	addi	t0, a1, 4
	add	a0, s6, t0
	sd	a0, 272(sp)                     # 8-byte Folded Spill
	lw	a4, 0(a0)
	sd	a4, 192(sp)                     # 8-byte Folded Spill
	addi	s4, a1, 8
	add	s6, s6, s4
	sd	s6, 144(sp)                     # 8-byte Folded Spill
	lw	a5, 0(s6)
	sd	a5, 168(sp)                     # 8-byte Folded Spill
	add	a0, a3, a2
	sd	a0, 280(sp)                     # 8-byte Folded Spill
	add	a2, a5, a4
	sd	a2, 288(sp)                     # 8-byte Folded Spill
	add	t3, a2, a0
	ld	a0, 104(sp)                     # 8-byte Folded Reload
	add	a2, a0, a1
	sd	a2, 152(sp)                     # 8-byte Folded Spill
	lw	s8, 0(a2)
	add	a3, a0, t6
	sd	a3, 320(sp)                     # 8-byte Folded Spill
	lw	s10, 0(a3)
	add	a2, a0, t0
	sd	a2, 240(sp)                     # 8-byte Folded Spill
	lw	s9, 0(a2)
	add	a0, a0, s4
	sd	a0, 296(sp)                     # 8-byte Folded Spill
	lw	s11, 0(a0)
	ld	a2, 88(sp)                      # 8-byte Folded Reload
	add	s0, a2, a1
	add	a3, a2, t6
	sd	a3, 264(sp)                     # 8-byte Folded Spill
	add	a0, a2, t0
	sd	a0, 128(sp)                     # 8-byte Folded Spill
	add	t2, a2, s4
	sd	t2, 160(sp)                     # 8-byte Folded Spill
	ld	a2, 80(sp)                      # 8-byte Folded Reload
	add	a1, a2, a1
	add	t6, a2, t6
	sd	t6, 256(sp)                     # 8-byte Folded Spill
	add	t4, a2, t0
	sd	t4, 136(sp)                     # 8-byte Folded Spill
	add	a7, a2, s4
	sd	a7, 232(sp)                     # 8-byte Folded Spill
	lw	a4, 0(s0)
	lw	a5, 0(a3)
	add	s6, s10, s8
	add	s7, s11, s9
	add	s3, s7, s6
	add	s5, a5, a4
	lw	t1, 0(a0)
	lw	a6, 0(t2)
	lw	a3, 0(a1)
	lw	t0, 0(t6)
	lw	a2, 0(t4)
	lw	t2, 0(a7)
	add	s4, a6, t1
	add	s1, s4, s5
	add	s2, t0, a3
	add	t6, t2, a2
	add	t4, t6, s2
	mv	a0, t3
	add	t3, t4, t3
	add	t5, s1, s3
	add	a7, t5, t3
	ld	ra, 216(sp)                     # 8-byte Folded Reload
	sw	a7, 0(ra)
	subw	t3, t3, t5
	sw	t3, 0(s0)
	subw	a0, a0, t4
	subw	a7, s3, s1
	slli	t3, a0, 1
	add	t3, t3, a7
	ld	t4, 152(sp)                     # 8-byte Folded Reload
	sw	t3, 0(t4)
	slli	a7, a7, 1
	subw	a0, a0, a7
	sw	a0, 0(a1)
	ld	a0, 208(sp)                     # 8-byte Folded Reload
	ld	a1, 200(sp)                     # 8-byte Folded Reload
	subw	a0, a0, a1
	ld	a1, 192(sp)                     # 8-byte Folded Reload
	ld	a7, 168(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a7
	subw	a7, s8, s10
	subw	t3, s9, s11
	subw	a4, a4, a5
	subw	a5, t1, a6
	subw	a3, a3, t0
	subw	a2, a2, t2
	slli	a6, a0, 1
	add	a6, a6, a1
	slli	t0, a7, 1
	add	t0, t0, t3
	slli	t1, a4, 1
	add	t1, t1, a5
	slli	t2, a3, 1
	add	t2, t2, a2
	add	t4, t2, a6
	add	t5, t1, t0
	add	s1, t5, t4
	ld	s3, 272(sp)                     # 8-byte Folded Reload
	sw	s1, 0(s3)
	subw	t4, t4, t5
	ld	t5, 128(sp)                     # 8-byte Folded Reload
	sw	t4, 0(t5)
	subw	a6, a6, t2
	subw	t0, t0, t1
	slli	t1, a6, 1
	add	t1, t1, t0
	ld	t2, 240(sp)                     # 8-byte Folded Reload
	sw	t1, 0(t2)
	ld	t1, 288(sp)                     # 8-byte Folded Reload
	ld	t2, 280(sp)                     # 8-byte Folded Reload
	subw	t1, t2, t1
	ld	t5, 144(sp)                     # 8-byte Folded Reload
	sw	t1, 0(t5)
	subw	t1, s6, s7
	subw	t2, s5, s4
	subw	s0, s2, t6
	lw	t4, 0(t5)
	mv	t6, t5
	slli	t0, t0, 1
	subw	a6, a6, t0
	ld	t0, 136(sp)                     # 8-byte Folded Reload
	sw	a6, 0(t0)
	add	a6, s0, t4
	add	t0, t2, t1
	add	t5, t0, a6
	sw	t5, 0(t6)
	subw	a6, a6, t0
	ld	t0, 160(sp)                     # 8-byte Folded Reload
	sw	a6, 0(t0)
	subw	t4, t4, s0
	subw	a6, t1, t2
	slli	t0, t4, 1
	add	t0, t0, a6
	ld	t1, 296(sp)                     # 8-byte Folded Reload
	sw	t0, 0(t1)
	slli	a1, a1, 1
	subw	a0, a0, a1
	ld	t0, 312(sp)                     # 8-byte Folded Reload
	sw	a0, 0(t0)
	slli	t3, t3, 1
	subw	a0, a7, t3
	slli	a5, a5, 1
	subw	a4, a4, a5
	slli	a2, a2, 1
	subw	a3, a3, a2
	lw	a1, 0(t0)
	slli	a6, a6, 1
	subw	a2, t4, a6
	ld	a5, 232(sp)                     # 8-byte Folded Reload
	sw	a2, 0(a5)
	add	a2, a3, a1
	add	a5, a4, a0
	add	a6, a5, a2
	sw	a6, 0(t0)
	subw	a2, a2, a5
	ld	a5, 264(sp)                     # 8-byte Folded Reload
	sw	a2, 0(a5)
	subw	a1, a1, a3
	subw	a0, a0, a4
	slli	a2, a1, 1
	add	a2, a2, a0
	ld	a3, 320(sp)                     # 8-byte Folded Reload
	sw	a2, 0(a3)
	slli	a0, a0, 1
	subw	a1, a1, a0
	ld	a0, 256(sp)                     # 8-byte Folded Reload
	sw	a1, 0(a0)
	ld	a0, 304(sp)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	li	a1, 4
	li	a2, 0
	bnez	a0, .LBB8_12
# %bb.13:                               #   in Loop: Header=BB8_11 Depth=1
	ld	a1, 72(sp)                      # 8-byte Folded Reload
	andi	a1, a1, 1
	li	a0, 4
	li	a2, 0
	bnez	a1, .LBB8_11
# %bb.14:
	li	a0, 0
	lui	a1, 174763
	addiw	a1, a1, -1365
	ld	a2, 0(sp)                       # 8-byte Folded Reload
	mul	a1, a2, a1
	srli	a2, a1, 63
	srli	a1, a1, 32
	add	a1, a1, a2
	sd	a1, 192(sp)                     # 8-byte Folded Spill
	li	a2, 1
	addi	a5, sp, 352
.LBB8_15:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_16 Depth 2
	sd	a2, 64(sp)                      # 8-byte Folded Spill
	li	a1, 0
	addi	a2, a0, 2
	addi	a3, a0, 1
	addi	a4, a0, 3
	slli	a0, a0, 2
	sd	a0, 104(sp)                     # 8-byte Folded Spill
	slli	a3, a3, 2
	sd	a3, 88(sp)                      # 8-byte Folded Spill
	slli	a2, a2, 2
	sd	a2, 80(sp)                      # 8-byte Folded Spill
	slli	a4, a4, 2
	sd	a4, 72(sp)                      # 8-byte Folded Spill
	li	a2, 1
.LBB8_16:                               #   Parent Loop BB8_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sd	a2, 304(sp)                     # 8-byte Folded Spill
	slli	a1, a1, 5
	add	a1, a5, a1
	ld	s5, 104(sp)                     # 8-byte Folded Reload
	add	a0, a1, s5
	sd	a0, 216(sp)                     # 8-byte Folded Spill
	lw	a2, 0(a0)
	sd	a2, 208(sp)                     # 8-byte Folded Spill
	addi	t5, a1, 96
	add	a0, t5, s5
	sd	a0, 312(sp)                     # 8-byte Folded Spill
	lw	a3, 0(a0)
	sd	a3, 200(sp)                     # 8-byte Folded Spill
	addi	a7, a1, 32
	add	a0, a7, s5
	sd	a0, 272(sp)                     # 8-byte Folded Spill
	lw	a4, 0(a0)
	sd	a4, 168(sp)                     # 8-byte Folded Spill
	addi	s3, a1, 64
	add	s5, s3, s5
	sd	s5, 136(sp)                     # 8-byte Folded Spill
	lw	a5, 0(s5)
	sd	a5, 160(sp)                     # 8-byte Folded Spill
	add	a0, a3, a2
	sd	a0, 280(sp)                     # 8-byte Folded Spill
	add	a2, a5, a4
	sd	a2, 288(sp)                     # 8-byte Folded Spill
	add	t3, a2, a0
	ld	a0, 88(sp)                      # 8-byte Folded Reload
	add	a2, a1, a0
	sd	a2, 144(sp)                     # 8-byte Folded Spill
	lw	s7, 0(a2)
	add	a3, t5, a0
	sd	a3, 320(sp)                     # 8-byte Folded Spill
	lw	s9, 0(a3)
	add	a2, a7, a0
	sd	a2, 240(sp)                     # 8-byte Folded Spill
	lw	s8, 0(a2)
	add	a0, s3, a0
	sd	a0, 296(sp)                     # 8-byte Folded Spill
	lw	s11, 0(a0)
	ld	a2, 80(sp)                      # 8-byte Folded Reload
	add	s0, a1, a2
	add	a3, t5, a2
	sd	a3, 264(sp)                     # 8-byte Folded Spill
	add	a0, a7, a2
	sd	a0, 120(sp)                     # 8-byte Folded Spill
	add	t2, s3, a2
	sd	t2, 152(sp)                     # 8-byte Folded Spill
	ld	a2, 72(sp)                      # 8-byte Folded Reload
	add	a1, a1, a2
	add	t5, t5, a2
	sd	t5, 256(sp)                     # 8-byte Folded Spill
	add	t4, a7, a2
	sd	t4, 128(sp)                     # 8-byte Folded Spill
	add	t1, s3, a2
	sd	t1, 232(sp)                     # 8-byte Folded Spill
	lw	a4, 0(s0)
	lw	a5, 0(a3)
	add	s10, s9, s7
	add	s6, s11, s8
	add	s4, s6, s10
	add	s5, a5, a4
	lw	t0, 0(a0)
	lw	a6, 0(t2)
	lw	a3, 0(a1)
	lw	a7, 0(t5)
	lw	a2, 0(t4)
	lw	t2, 0(t1)
	add	s3, a6, t0
	add	s1, s3, s5
	add	s2, a7, a3
	add	t6, t2, a2
	add	t4, t6, s2
	mv	a0, t3
	add	t3, t4, t3
	add	t5, s1, s4
	add	t1, t5, t3
	ld	ra, 216(sp)                     # 8-byte Folded Reload
	sw	t1, 0(ra)
	subw	t3, t3, t5
	sw	t3, 0(s0)
	subw	a0, a0, t4
	subw	t1, s4, s1
	slli	t3, a0, 1
	add	t3, t3, t1
	ld	t4, 144(sp)                     # 8-byte Folded Reload
	sw	t3, 0(t4)
	slli	t1, t1, 1
	subw	a0, a0, t1
	sw	a0, 0(a1)
	ld	a0, 208(sp)                     # 8-byte Folded Reload
	ld	a1, 200(sp)                     # 8-byte Folded Reload
	subw	a0, a0, a1
	ld	a1, 168(sp)                     # 8-byte Folded Reload
	ld	t1, 160(sp)                     # 8-byte Folded Reload
	subw	a1, a1, t1
	subw	t1, s7, s9
	subw	t3, s8, s11
	subw	a4, a4, a5
	subw	a5, t0, a6
	subw	a3, a3, a7
	subw	a2, a2, t2
	slli	a6, a0, 1
	add	a6, a6, a1
	slli	a7, t1, 1
	add	a7, a7, t3
	slli	t0, a4, 1
	add	t0, t0, a5
	slli	t2, a3, 1
	add	t2, t2, a2
	add	t4, t2, a6
	add	t5, t0, a7
	add	s1, t5, t4
	ld	s4, 272(sp)                     # 8-byte Folded Reload
	sw	s1, 0(s4)
	subw	t4, t4, t5
	ld	t5, 120(sp)                     # 8-byte Folded Reload
	sw	t4, 0(t5)
	subw	a6, a6, t2
	subw	a7, a7, t0
	slli	t0, a6, 1
	add	t0, t0, a7
	ld	t2, 240(sp)                     # 8-byte Folded Reload
	sw	t0, 0(t2)
	ld	t0, 288(sp)                     # 8-byte Folded Reload
	ld	t2, 280(sp)                     # 8-byte Folded Reload
	subw	t0, t2, t0
	ld	t5, 136(sp)                     # 8-byte Folded Reload
	sw	t0, 0(t5)
	subw	t0, s10, s6
	subw	t2, s5, s3
	subw	s0, s2, t6
	lw	t4, 0(t5)
	mv	t6, t5
	slli	a7, a7, 1
	subw	a6, a6, a7
	ld	a7, 128(sp)                     # 8-byte Folded Reload
	sw	a6, 0(a7)
	add	a6, s0, t4
	add	a7, t2, t0
	add	t5, a7, a6
	sw	t5, 0(t6)
	subw	a6, a6, a7
	ld	a7, 152(sp)                     # 8-byte Folded Reload
	sw	a6, 0(a7)
	subw	t4, t4, s0
	subw	a6, t0, t2
	slli	a7, t4, 1
	add	a7, a7, a6
	ld	t0, 296(sp)                     # 8-byte Folded Reload
	sw	a7, 0(t0)
	slli	a1, a1, 1
	subw	a0, a0, a1
	ld	a7, 312(sp)                     # 8-byte Folded Reload
	sw	a0, 0(a7)
	slli	t3, t3, 1
	subw	a0, t1, t3
	slli	a5, a5, 1
	subw	a4, a4, a5
	slli	a2, a2, 1
	subw	a3, a3, a2
	lw	a1, 0(a7)
	slli	a6, a6, 1
	subw	a2, t4, a6
	ld	a5, 232(sp)                     # 8-byte Folded Reload
	sw	a2, 0(a5)
	add	a2, a3, a1
	add	a5, a4, a0
	add	a6, a5, a2
	sw	a6, 0(a7)
	subw	a2, a2, a5
	addi	a5, sp, 352
	ld	a6, 264(sp)                     # 8-byte Folded Reload
	sw	a2, 0(a6)
	subw	a1, a1, a3
	subw	a0, a0, a4
	slli	a2, a1, 1
	add	a2, a2, a0
	ld	a3, 320(sp)                     # 8-byte Folded Reload
	sw	a2, 0(a3)
	slli	a0, a0, 1
	subw	a1, a1, a0
	ld	a0, 256(sp)                     # 8-byte Folded Reload
	sw	a1, 0(a0)
	ld	a0, 304(sp)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	li	a1, 4
	li	a2, 0
	bnez	a0, .LBB8_16
# %bb.17:                               #   in Loop: Header=BB8_15 Depth=1
	ld	a1, 64(sp)                      # 8-byte Folded Reload
	andi	a1, a1, 1
	li	a0, 4
	li	a2, 0
	bnez	a1, .LBB8_15
# %bb.18:
	lui	a0, %hi(.LCPI8_2)
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	fld	fa4, %lo(.LCPI8_2)(a0)
	lui	a0, 3
	addiw	a0, a0, 824
	add	a1, a1, a0
	lw	a2, 0(a1)
	lw	a3, 16(a1)
	lw	a0, 256(a1)
	lw	a4, 272(a1)
	li	s8, 0
	li	s10, 0
	sd	zero, 312(sp)                   # 8-byte Folded Spill
	fmul.d	fs0, fa5, fa4
	add	a1, a3, a2
	add	a5, a4, a0
	add	a6, a5, a1
	sw	a6, 608(sp)
	add	a6, a2, a0
	add	a7, a3, a4
	subw	a6, a6, a7
	sw	a6, 612(sp)
	subw	a1, a1, a5
	sw	a1, 616(sp)
	add	a0, a3, a0
	add	a2, a2, a4
	lw	a1, 352(sp)
	lw	a3, 480(sp)
	lw	a4, 368(sp)
	lw	a5, 496(sp)
	subw	a2, a2, a0
	sw	a2, 620(sp)
	add	a0, a3, a1
	add	a2, a5, a4
	add	a6, a2, a0
	sw	a6, 336(sp)
	add	a6, a1, a4
	add	a7, a3, a5
	subw	a6, a6, a7
	sw	a6, 340(sp)
	subw	a0, a0, a2
	sw	a0, 344(sp)
	add	a3, a3, a4
	add	a1, a1, a5
	subw	a1, a1, a3
	sw	a1, 348(sp)
	lbu	a0, 8(sp)                       # 8-byte Folded Reload
	slli	a0, a0, 6
	lui	a1, %hi(quant_coef)
	addi	a1, a1, %lo(quant_coef)
	add	a2, a1, a0
	sd	a2, 168(sp)                     # 8-byte Folded Spill
	lw	s5, 0(a2)
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	addi	a2, a3, 16
	sd	a2, 296(sp)                     # 8-byte Folded Spill
	lui	a2, 1048560
	sllw	a2, a2, a3
	sd	a2, 288(sp)                     # 8-byte Folded Spill
	lbu	a2, 16(sp)                      # 8-byte Folded Reload
	slli	a2, a2, 6
	add	a1, a1, a2
	sd	a1, 216(sp)                     # 8-byte Folded Spill
	ld	a1, 192(sp)                     # 8-byte Folded Reload
	slli	a1, a1, 1
	sd	a1, 280(sp)                     # 8-byte Folded Spill
	ld	a1, 248(sp)                     # 8-byte Folded Reload
	addi	a1, a1, 16
	sd	a1, 272(sp)                     # 8-byte Folded Spill
	lui	a1, %hi(dequant_coef)
	addi	a1, a1, %lo(dequant_coef)
	add	a2, a1, a2
	sd	a2, 240(sp)                     # 8-byte Folded Spill
	ld	s2, 24(sp)                      # 8-byte Folded Reload
	slli	a3, s2, 2
	lui	a2, 240
	sd	a3, 200(sp)                     # 8-byte Folded Spill
	sllw	a2, a2, a3
	sd	a2, 256(sp)                     # 8-byte Folded Spill
	add	a0, a1, a0
	sd	a0, 208(sp)                     # 8-byte Folded Spill
	li	s7, -1
	addi	s0, sp, 608
	addi	s9, sp, 336
	lui	a0, 1
	addiw	a0, a0, -2033
	sd	a0, 232(sp)                     # 8-byte Folded Spill
	ld	s11, 112(sp)                    # 8-byte Folded Reload
	ld	s1, 56(sp)                      # 8-byte Folded Reload
	sd	s5, 304(sp)                     # 8-byte Folded Spill
	j	.LBB8_20
.LBB8_19:                               #   in Loop: Header=BB8_20 Depth=1
	addi	s10, s10, 2
	addi	s8, s8, 4
	addi	s0, s0, 4
	addi	s9, s9, 4
	addi	a0, sp, 624
	beq	s0, a0, .LBB8_48
.LBB8_20:                               # =>This Inner Loop Header: Depth=1
	lw	s3, 0(s9)
	addiw	s7, s7, 1
	sd	s7, 320(sp)                     # 8-byte Folded Spill
	sraiw	a0, s3, 31
	xor	a1, s3, a0
	subw	a1, a1, a0
	mul	a0, a1, s5
	lw	s6, 0(s0)
	add	a0, a0, s1
	ld	a1, 288(sp)                     # 8-byte Folded Reload
	and	a0, a0, a1
	divw	a0, a0, s5
	mv	a1, s3
	call	sign
	subw	s4, s6, a0
	ld	a0, 216(sp)                     # 8-byte Folded Reload
	lw	a0, 0(a0)
	sraiw	a1, s4, 31
	xor	a2, s4, a1
	subw	a2, a2, a1
	mul	a1, a2, a0
	ld	a4, 280(sp)                     # 8-byte Folded Reload
	add	a1, a1, a4
	subw	s5, s6, s3
	sraiw	a2, s5, 31
	xor	a3, s5, a2
	subw	a3, a3, a2
	mul	a0, a3, a0
	add	a0, a0, a4
	ld	a2, 272(sp)                     # 8-byte Folded Reload
	sraw	s7, a0, a2
	sraw	s1, a1, a2
	beqz	s7, .LBB8_25
# %bb.21:                               #   in Loop: Header=BB8_20 Depth=1
	beq	s1, s7, .LBB8_25
# %bb.22:                               #   in Loop: Header=BB8_20 Depth=1
	beqz	s1, .LBB8_25
# %bb.23:                               #   in Loop: Header=BB8_20 Depth=1
	sd	s8, 264(sp)                     # 8-byte Folded Spill
	mv	a0, s1
	mv	a1, s4
	call	sign
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	lw	s11, 0(a1)
	mul	a0, a0, s11
	slli	a0, a0, 4
	ld	s2, 248(sp)                     # 8-byte Folded Reload
	sllw	a0, a0, s2
	srli	a0, a0, 5
	subw	a1, s6, s3
	subw	a1, a1, a0
	fcvt.d.w	fs1, a1
	addi	a2, sp, 332
	addi	a3, sp, 328
	mv	a0, s1
	ld	s8, 320(sp)                     # 8-byte Folded Reload
	mv	a1, s8
	call	levrun_linfo_c2x2
	lw	a0, 332(sp)
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
	addi	a2, sp, 332
	addi	a3, sp, 328
	mv	a0, s7
	mv	a1, s8
	call	levrun_linfo_c2x2
	lw	a0, 332(sp)
	fcvt.d.w	fa5, a0
	fmul.d	fa5, fs0, fa5
	fmadd.d	fa5, fs2, fs2, fa5
	feq.d	a0, fs1, fa5
	beqz	a0, .LBB8_30
# %bb.24:                               #   in Loop: Header=BB8_20 Depth=1
	sraiw	a0, s1, 31
	xor	a1, s1, a0
	subw	a1, a1, a0
	sraiw	a0, s7, 31
	xor	a2, s7, a0
	subw	a2, a2, a0
	sltu	a0, a1, a2
	j	.LBB8_31
.LBB8_25:                               #   in Loop: Header=BB8_20 Depth=1
	bne	s1, s7, .LBB8_27
# %bb.26:                               #   in Loop: Header=BB8_20 Depth=1
	mv	s6, s1
	j	.LBB8_35
.LBB8_27:                               #   in Loop: Header=BB8_20 Depth=1
	beqz	s1, .LBB8_29
# %bb.28:                               #   in Loop: Header=BB8_20 Depth=1
	mv	s4, s5
.LBB8_29:                               #   in Loop: Header=BB8_20 Depth=1
	seqz	a0, s1
	addiw	a0, a0, -1
	and	s6, a0, s7
	j	.LBB8_35
.LBB8_30:                               #   in Loop: Header=BB8_20 Depth=1
	flt.d	a0, fs1, fa5
.LBB8_31:                               #   in Loop: Header=BB8_20 Depth=1
	mv	s6, s1
	ld	s11, 112(sp)                    # 8-byte Folded Reload
	ld	s2, 24(sp)                      # 8-byte Folded Reload
	ld	s8, 264(sp)                     # 8-byte Folded Reload
	bnez	a0, .LBB8_33
# %bb.32:                               #   in Loop: Header=BB8_20 Depth=1
	mv	s6, s7
.LBB8_33:                               #   in Loop: Header=BB8_20 Depth=1
	beq	s6, s1, .LBB8_35
# %bb.34:                               #   in Loop: Header=BB8_20 Depth=1
	mv	s4, s5
.LBB8_35:                               #   in Loop: Header=BB8_20 Depth=1
	ld	s1, 56(sp)                      # 8-byte Folded Reload
	ld	s5, 304(sp)                     # 8-byte Folded Reload
	ld	s7, 320(sp)                     # 8-byte Folded Reload
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 937(a0)
	beqz	a0, .LBB8_40
# %bb.36:                               #   in Loop: Header=BB8_20 Depth=1
	beqz	s6, .LBB8_45
.LBB8_37:                               #   in Loop: Header=BB8_20 Depth=1
	ld	a0, 368(s11)
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	or	a0, a0, a1
	sd	a0, 368(s11)
	ld	a0, 40(sp)                      # 8-byte Folded Reload
	bgtz	a0, .LBB8_39
# %bb.38:                               #   in Loop: Header=BB8_20 Depth=1
	li	a0, 1
	sd	a0, 40(sp)                      # 8-byte Folded Spill
.LBB8_39:                               #   in Loop: Header=BB8_20 Depth=1
	mv	a0, s6
	mv	a1, s4
	call	sign
	ld	a3, 312(sp)                     # 8-byte Folded Reload
	slli	a1, a3, 2
	ld	a2, 48(sp)                      # 8-byte Folded Reload
	add	a2, a2, a1
	sw	a0, 0(a2)
	ld	a0, 32(sp)                      # 8-byte Folded Reload
	add	a1, a0, a1
	sw	s7, 0(a1)
	addiw	a3, a3, 1
	sd	a3, 312(sp)                     # 8-byte Folded Spill
	mv	a0, s6
	mv	a1, s4
	call	sign
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	lw	a1, 0(a1)
	mul	a0, a0, a1
	slli	a0, a0, 4
	ld	a1, 248(sp)                     # 8-byte Folded Reload
	sllw	a0, a0, a1
	srai	a0, a0, 5
	li	s7, -1
	j	.LBB8_46
.LBB8_40:                               #   in Loop: Header=BB8_20 Depth=1
	mv	a0, s6
	ld	a1, 232(sp)                     # 8-byte Folded Reload
	blt	s6, a1, .LBB8_42
# %bb.41:                               #   in Loop: Header=BB8_20 Depth=1
	ld	a0, 232(sp)                     # 8-byte Folded Reload
.LBB8_42:                               #   in Loop: Header=BB8_20 Depth=1
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lw	a1, 40(a1)
	li	a2, 4
	blt	a1, a2, .LBB8_44
# %bb.43:                               #   in Loop: Header=BB8_20 Depth=1
	mv	a0, s6
.LBB8_44:                               #   in Loop: Header=BB8_20 Depth=1
	mv	s6, a0
	bnez	a0, .LBB8_37
.LBB8_45:                               #   in Loop: Header=BB8_20 Depth=1
	li	a0, 0
.LBB8_46:                               #   in Loop: Header=BB8_20 Depth=1
	addw	s3, a0, s3
	sraiw	a0, s3, 31
	xor	a1, s3, a0
	subw	a1, a1, a0
	mul	a0, a1, s5
	add	a0, a0, s1
	ld	a1, 296(sp)                     # 8-byte Folded Reload
	sraw	s4, a0, a1
	mv	a0, s4
	mv	a1, s3
	call	sign
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	lw	a1, 0(a1)
	lui	a2, %hi(si_frame_indicator)
	lw	a2, %lo(si_frame_indicator)(a2)
	lui	a3, %hi(sp2_frame_indicator)
	lw	a3, %lo(sp2_frame_indicator)(a3)
	mul	a0, a1, a0
	ld	a1, 224(sp)                     # 8-byte Folded Reload
	sllw	a0, a0, a1
	sw	a0, 0(s0)
	or	a2, a2, a3
	slli	a0, s2, 3
	sd	a0, 88(sp)                      # 8-byte Folded Spill
	bnez	a2, .LBB8_19
# %bb.47:                               #   in Loop: Header=BB8_20 Depth=1
	mv	a0, s4
	mv	a1, s3
	call	sign
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a2, %hi(lrec_uv)
	ld	a2, %lo(lrec_uv)(a2)
	lw	a3, 164(a1)
	ld	a4, 88(sp)                      # 8-byte Folded Reload
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
	j	.LBB8_19
.LBB8_48:
	ld	a0, 312(sp)                     # 8-byte Folded Reload
	slli	a0, a0, 2
	ld	a1, 48(sp)                      # 8-byte Folded Reload
	add	a0, a1, a0
	sw	zero, 0(a0)
	lw	a0, 608(sp)
	lw	a2, 612(sp)
	lw	a3, 616(sp)
	lw	a4, 620(sp)
	li	s3, 0
	sd	zero, 104(sp)                   # 8-byte Folded Spill
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
	sd	t0, 152(sp)                     # 8-byte Folded Spill
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
	ld	a2, 224(sp)                     # 8-byte Folded Reload
	sllw	a0, a0, a2
	sd	a0, 144(sp)                     # 8-byte Folded Spill
	ld	a0, 200(sp)                     # 8-byte Folded Reload
	addi	a0, a0, 16
	slli	a0, a0, 32
	srli	a0, a0, 32
	sd	a0, 48(sp)                      # 8-byte Folded Spill
	lui	a0, 22
	addiw	a0, a0, 424
	sd	a0, 32(sp)                      # 8-byte Folded Spill
	li	a3, 1
	ld	s10, 96(sp)                     # 8-byte Folded Reload
	sd	s4, 160(sp)                     # 8-byte Folded Spill
	j	.LBB8_50
.LBB8_49:                               #   in Loop: Header=BB8_50 Depth=1
	ld	a2, 56(sp)                      # 8-byte Folded Reload
	andi	a2, a2, 1
	li	s3, 4
	li	a3, 0
	beqz	a2, .LBB8_75
.LBB8_50:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_52 Depth 2
                                        #       Child Loop BB8_54 Depth 3
	sd	a3, 56(sp)                      # 8-byte Folded Spill
	li	s1, 0
	srli	a2, s3, 1
	ld	a0, 48(sp)                      # 8-byte Folded Reload
	sd	a2, 72(sp)                      # 8-byte Folded Spill
	or	a0, a2, a0
	sd	a0, 64(sp)                      # 8-byte Folded Spill
	li	a3, 1
	sd	s3, 200(sp)                     # 8-byte Folded Spill
	j	.LBB8_52
.LBB8_51:                               #   in Loop: Header=BB8_52 Depth=2
	ld	a2, 256(sp)                     # 8-byte Folded Reload
	slli	a2, a2, 2
	ld	a3, 136(sp)                     # 8-byte Folded Reload
	add	a2, a3, a2
	sw	zero, 0(a2)
	ld	a2, 80(sp)                      # 8-byte Folded Reload
	andi	a2, a2, 1
	li	s1, 4
	li	a3, 0
	beqz	a2, .LBB8_49
.LBB8_52:                               #   Parent Loop BB8_50 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_54 Depth 3
	sd	a3, 80(sp)                      # 8-byte Folded Spill
	lui	a0, 3
	add	a0, a1, a0
	ld	a0, 1848(a0)
	ld	a2, 88(sp)                      # 8-byte Folded Reload
	add	a0, a0, a2
	ld	a0, 32(a0)
	srli	a2, s1, 2
	ld	a3, 72(sp)                      # 8-byte Folded Reload
	or	a3, a2, a3
	slli	a3, a3, 3
	add	a0, a0, a3
	ld	a0, 0(a0)
	sd	zero, 256(sp)                   # 8-byte Folded Spill
	ld	a3, 0(a0)
	sd	a3, 136(sp)                     # 8-byte Folded Spill
	ld	a0, 8(a0)
	sd	a0, 128(sp)                     # 8-byte Folded Spill
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	or	a0, a2, a0
	li	a2, 1
	sllw	a0, a2, a0
	sd	a0, 120(sp)                     # 8-byte Folded Spill
	li	s0, -1
	li	s6, 15
	lui	s11, %hi(FIELD_SCAN+2)
	addi	s11, s11, %lo(FIELD_SCAN+2)
	lui	s5, %hi(SNGL_SCAN+2)
	addi	s5, s5, %lo(SNGL_SCAN+2)
	sd	s1, 232(sp)                     # 8-byte Folded Spill
	j	.LBB8_54
.LBB8_53:                               #   in Loop: Header=BB8_54 Depth=3
	sraiw	a0, a1, 31
	xor	a2, a1, a0
	subw	a2, a2, a0
	mul	a0, a2, s7
	add	a0, a0, s4
	sraw	a0, a0, s10
	call	sign
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	add	s9, a1, s9
	add	s8, s9, s8
	lw	a2, 0(s8)
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	mul	a0, a2, a0
	ld	a2, 224(sp)                     # 8-byte Folded Reload
	sllw	a2, a0, a2
	ld	a0, 152(sp)                     # 8-byte Folded Reload
	add	a0, a1, a0
	ld	a3, 312(sp)                     # 8-byte Folded Reload
	add	a3, a0, a3
	ld	a4, 304(sp)                     # 8-byte Folded Reload
	add	a3, a3, a4
	sw	a2, 0(a3)
	addi	s6, s6, -1
	addi	s5, s5, 2
	addi	s11, s11, 2
	beqz	s6, .LBB8_51
.LBB8_54:                               #   Parent Loop BB8_50 Depth=1
                                        #     Parent Loop BB8_52 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	sd	s6, 288(sp)                     # 8-byte Folded Spill
	mv	a0, s11
	ld	a2, 184(sp)                     # 8-byte Folded Reload
	bnez	a2, .LBB8_56
# %bb.55:                               #   in Loop: Header=BB8_54 Depth=3
	mv	a0, s5
.LBB8_56:                               #   in Loop: Header=BB8_54 Depth=3
	sd	s5, 296(sp)                     # 8-byte Folded Spill
	lbu	s9, 0(a0)
	lbu	s8, 1(a0)
	addiw	s0, s0, 1
	sd	s0, 320(sp)                     # 8-byte Folded Spill
	add	s1, s1, s9
	addw	a0, s3, s8
	slli	a2, s1, 5
	addi	a3, sp, 352
	add	a2, a3, a2
	slli	a3, a0, 2
	add	a2, a2, a3
	lw	s2, 0(a2)
	sd	s9, 272(sp)                     # 8-byte Folded Spill
	slli	s9, s9, 4
	ld	a2, 168(sp)                     # 8-byte Folded Reload
	add	a2, a2, s9
	sd	s8, 264(sp)                     # 8-byte Folded Spill
	slli	s8, s8, 2
	add	a2, a2, s8
	lw	a4, 0(a2)
	sraiw	a2, s2, 31
	xor	a3, s2, a2
	subw	a3, a3, a2
	mul	a2, a3, a4
	slli	s0, a0, 6
	add	a1, a1, s0
	slli	s5, s1, 2
	lui	s1, 3
	add	a0, s5, s1
	add	a0, a1, a0
	lw	s3, 824(a0)
	add	a2, a2, s4
	ld	a0, 144(sp)                     # 8-byte Folded Reload
	and	a0, a2, a0
	sd	a4, 280(sp)                     # 8-byte Folded Spill
	divw	a0, a0, a4
	mv	a1, s2
	call	sign
	subw	s4, s3, a0
	sraiw	a0, s4, 31
	xor	a1, s4, a0
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	ld	a3, 216(sp)                     # 8-byte Folded Reload
	add	a3, a3, s9
	add	a3, a3, s8
	lw	a3, 0(a3)
	sd	s0, 312(sp)                     # 8-byte Folded Spill
	add	a2, a2, s0
	sd	s5, 304(sp)                     # 8-byte Folded Spill
	add	a4, s5, s1
	add	a2, a2, a4
	lw	s7, 824(a2)
	subw	a1, a1, a0
	mul	a0, a1, a3
	ld	a4, 192(sp)                     # 8-byte Folded Reload
	add	a0, a0, a4
	subw	s3, s7, s2
	sraiw	a1, s3, 31
	xor	a2, s3, a1
	subw	a2, a2, a1
	mul	a1, a2, a3
	add	a1, a1, a4
	ld	a2, 176(sp)                     # 8-byte Folded Reload
	sraw	s5, a1, a2
	sraw	s6, a0, a2
	beqz	s5, .LBB8_65
# %bb.57:                               #   in Loop: Header=BB8_54 Depth=3
	beqz	s6, .LBB8_65
# %bb.58:                               #   in Loop: Header=BB8_54 Depth=3
	beq	s6, s5, .LBB8_65
# %bb.59:                               #   in Loop: Header=BB8_54 Depth=3
	mv	a0, s6
	mv	a1, s4
	call	sign
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	add	a1, a1, s9
	add	a1, a1, s8
	lw	a1, 0(a1)
	lui	a2, %hi(A)
	addi	a2, a2, %lo(A)
	add	a2, a2, s9
	add	a2, a2, s8
	lw	a2, 0(a2)
	mul	s1, a2, a1
	mul	a0, s1, a0
	ld	s10, 248(sp)                    # 8-byte Folded Reload
	sllw	a0, a0, s10
	srli	a0, a0, 6
	subw	a1, s7, s2
	subw	a1, a1, a0
	fcvt.d.w	fs1, a1
	addi	a2, sp, 332
	addi	a3, sp, 328
	mv	a0, s6
	ld	s0, 320(sp)                     # 8-byte Folded Reload
	mv	a1, s0
	call	levrun_linfo_inter
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a1, 332(sp)
	ld	a2, 312(sp)                     # 8-byte Folded Reload
	add	a0, a0, a2
	lui	a2, 3
	ld	a3, 304(sp)                     # 8-byte Folded Reload
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
	addi	a2, sp, 332
	addi	a3, sp, 328
	mv	a0, s5
	mv	a1, s0
	call	levrun_linfo_inter
	lw	a0, 332(sp)
	fcvt.d.w	fa5, a0
	fmul.d	fa5, fs0, fa5
	fmadd.d	fa5, fs2, fs2, fa5
	feq.d	a0, fs1, fa5
	beqz	a0, .LBB8_74
# %bb.60:                               #   in Loop: Header=BB8_54 Depth=3
	sraiw	a0, s6, 31
	xor	a1, s6, a0
	subw	a1, a1, a0
	sraiw	a0, s5, 31
	xor	a2, s5, a0
	subw	a2, a2, a0
	sltu	a0, a1, a2
	ld	s1, 232(sp)                     # 8-byte Folded Reload
	mv	s7, s6
	ld	s10, 96(sp)                     # 8-byte Folded Reload
	bnez	a0, .LBB8_62
.LBB8_61:                               #   in Loop: Header=BB8_54 Depth=3
	mv	s7, s5
.LBB8_62:                               #   in Loop: Header=BB8_54 Depth=3
	beq	s7, s6, .LBB8_64
# %bb.63:                               #   in Loop: Header=BB8_54 Depth=3
	mv	s4, s3
.LBB8_64:                               #   in Loop: Header=BB8_54 Depth=3
	mv	s3, s4
	ld	s4, 160(sp)                     # 8-byte Folded Reload
	j	.LBB8_69
.LBB8_65:                               #   in Loop: Header=BB8_54 Depth=3
	bne	s6, s5, .LBB8_67
# %bb.66:                               #   in Loop: Header=BB8_54 Depth=3
	mv	s5, s6
	mv	s3, s4
	ld	s4, 160(sp)                     # 8-byte Folded Reload
	ld	s1, 232(sp)                     # 8-byte Folded Reload
	j	.LBB8_68
.LBB8_67:                               #   in Loop: Header=BB8_54 Depth=3
	ld	s4, 160(sp)                     # 8-byte Folded Reload
	ld	s1, 232(sp)                     # 8-byte Folded Reload
	beqz	s6, .LBB8_70
.LBB8_68:                               #   in Loop: Header=BB8_54 Depth=3
	mv	s7, s5
	beqz	s5, .LBB8_70
.LBB8_69:                               #   in Loop: Header=BB8_54 Depth=3
	ld	a1, 112(sp)                     # 8-byte Folded Reload
	ld	a0, 368(a1)
	ld	a2, 120(sp)                     # 8-byte Folded Reload
	or	a0, a0, a2
	sd	a0, 368(a1)
	mv	a0, s7
	mv	a1, s3
	call	sign
	ld	a3, 256(sp)                     # 8-byte Folded Reload
	slli	a1, a3, 2
	ld	a2, 136(sp)                     # 8-byte Folded Reload
	add	a2, a2, a1
	sw	a0, 0(a2)
	ld	a0, 128(sp)                     # 8-byte Folded Reload
	add	a1, a0, a1
	ld	a0, 320(sp)                     # 8-byte Folded Reload
	sw	a0, 0(a1)
	addiw	a3, a3, 1
	sd	a3, 256(sp)                     # 8-byte Folded Spill
	mv	a0, s7
	mv	a1, s3
	call	sign
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	add	a1, a1, s9
	add	a1, a1, s8
	lw	a1, 0(a1)
	lui	a2, %hi(A)
	addi	a2, a2, %lo(A)
	add	a2, a2, s9
	add	a2, a2, s8
	lw	a2, 0(a2)
	mul	a1, a1, a2
	mul	a0, a1, a0
	ld	a1, 248(sp)                     # 8-byte Folded Reload
	sllw	a0, a0, a1
	srai	a0, a0, 6
	li	s0, -1
	li	a1, 2
	sd	a1, 104(sp)                     # 8-byte Folded Spill
	ld	s3, 200(sp)                     # 8-byte Folded Reload
	ld	s5, 296(sp)                     # 8-byte Folded Reload
	j	.LBB8_71
.LBB8_70:                               #   in Loop: Header=BB8_54 Depth=3
	li	a0, 0
	ld	s3, 200(sp)                     # 8-byte Folded Reload
	ld	s5, 296(sp)                     # 8-byte Folded Reload
	ld	s0, 320(sp)                     # 8-byte Folded Reload
.LBB8_71:                               #   in Loop: Header=BB8_54 Depth=3
	ld	s6, 288(sp)                     # 8-byte Folded Reload
	lui	a1, %hi(si_frame_indicator)
	lw	a1, %lo(si_frame_indicator)(a1)
	lui	a2, %hi(sp2_frame_indicator)
	lw	a2, %lo(sp2_frame_indicator)(a2)
	or	a2, a1, a2
	addw	a1, a0, s2
	ld	s7, 280(sp)                     # 8-byte Folded Reload
	bnez	a2, .LBB8_53
# %bb.72:                               #   in Loop: Header=BB8_54 Depth=3
	ld	a0, 272(sp)                     # 8-byte Folded Reload
	ld	a2, 264(sp)                     # 8-byte Folded Reload
	or	a0, a2, a0
	andi	a0, a0, 3
	beqz	a0, .LBB8_53
# %bb.73:                               #   in Loop: Header=BB8_54 Depth=3
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
	ld	a5, 88(sp)                      # 8-byte Folded Reload
	add	a3, a3, a5
	ld	a3, 0(a3)
	ld	a5, 264(sp)                     # 8-byte Folded Reload
	add	a5, s1, a5
	addw	a4, a5, a4
	slli	a4, a4, 3
	lw	a2, 160(a2)
	add	a3, a3, a4
	ld	a3, 0(a3)
	ld	a4, 272(sp)                     # 8-byte Folded Reload
	add	a4, s3, a4
	addw	a2, a4, a2
	slli	a2, a2, 2
	add	a2, a3, a2
	sw	a0, 0(a2)
	j	.LBB8_53
.LBB8_74:                               #   in Loop: Header=BB8_54 Depth=3
	flt.d	a0, fs1, fa5
	ld	s1, 232(sp)                     # 8-byte Folded Reload
	mv	s7, s6
	ld	s10, 96(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB8_61
	j	.LBB8_62
.LBB8_75:
	li	a6, 0
	ld	a2, 32(sp)                      # 8-byte Folded Reload
	add	a2, a1, a2
	lui	a4, 3
	addiw	a3, a4, 952
	add	a3, a1, a3
	addiw	a4, a4, 968
	add	a4, a1, a4
	li	a5, 1
	j	.LBB8_77
.LBB8_76:                               #   in Loop: Header=BB8_77 Depth=1
	andi	a7, a5, 1
	li	a6, 4
	li	a5, 0
	beqz	a7, .LBB8_89
.LBB8_77:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_79 Depth 2
                                        #       Child Loop BB8_81 Depth 3
	li	t5, 0
	addi	t1, a6, 1
	addi	t2, a6, 2
	addi	t3, a6, 3
	slli	t0, a6, 6
	add	a6, a3, t0
	add	a7, a4, t0
	add	t0, a0, t0
	slli	t1, t1, 6
	add	t1, a0, t1
	slli	t2, t2, 6
	add	t2, a0, t2
	slli	t3, t3, 6
	add	t3, a0, t3
	li	t4, 1
	j	.LBB8_79
.LBB8_78:                               #   in Loop: Header=BB8_79 Depth=2
	andi	t6, t4, 1
	li	t5, 4
	li	t4, 0
	beqz	t6, .LBB8_76
.LBB8_79:                               #   Parent Loop BB8_77 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_81 Depth 3
	slli	t5, t5, 2
	add	s2, t0, t5
	lw	s3, 0(s2)
	addi	t6, t5, 4
	add	s4, t0, t6
	lw	s5, 0(s4)
	addi	s0, t5, 8
	add	s6, t0, s0
	lw	s7, 0(s6)
	addi	s1, t5, 12
	add	s8, t0, s1
	lw	s9, 0(s8)
	add	s10, s7, s3
	subw	s3, s3, s7
	srli	s7, s5, 1
	subw	s7, s7, s9
	srli	s9, s9, 1
	add	s5, s9, s5
	add	s9, s5, s10
	sw	s9, 0(s2)
	subw	s2, s10, s5
	sw	s2, 0(s8)
	add	s2, s7, s3
	sw	s2, 0(s4)
	subw	s2, s3, s7
	sw	s2, 0(s6)
	add	s2, t1, t5
	lw	s3, 0(s2)
	add	s4, t1, t6
	add	s5, t1, s0
	lw	s6, 0(s5)
	lw	s7, 0(s4)
	add	s8, t1, s1
	lw	s9, 0(s8)
	add	s10, s6, s3
	subw	s3, s3, s6
	srli	s6, s7, 1
	subw	s6, s6, s9
	srli	s9, s9, 1
	add	s7, s9, s7
	add	s9, s7, s10
	sw	s9, 0(s2)
	subw	s2, s10, s7
	sw	s2, 0(s8)
	add	s2, s6, s3
	sw	s2, 0(s4)
	subw	s2, s3, s6
	sw	s2, 0(s5)
	add	s2, t2, t5
	lw	s3, 0(s2)
	add	s4, t2, t6
	add	s5, t2, s0
	lw	s6, 0(s5)
	lw	s7, 0(s4)
	add	s8, t2, s1
	lw	s9, 0(s8)
	add	s10, s6, s3
	subw	s3, s3, s6
	srli	s6, s7, 1
	subw	s6, s6, s9
	srli	s9, s9, 1
	add	s7, s9, s7
	add	s9, s7, s10
	sw	s9, 0(s2)
	subw	s2, s10, s7
	sw	s2, 0(s8)
	add	s2, s6, s3
	sw	s2, 0(s4)
	subw	s2, s3, s6
	sw	s2, 0(s5)
	add	s2, t3, t5
	lw	s3, 0(s2)
	add	t6, t3, t6
	add	s0, t3, s0
	lw	s4, 0(s0)
	lw	s5, 0(t6)
	add	s1, t3, s1
	lw	s6, 0(s1)
	add	s7, s4, s3
	subw	s3, s3, s4
	srli	s4, s5, 1
	subw	s4, s4, s6
	srli	s6, s6, 1
	add	s5, s6, s5
	add	s6, s5, s7
	sw	s6, 0(s2)
	subw	s2, s7, s5
	sw	s2, 0(s1)
	add	s1, s4, s3
	sw	s1, 0(t6)
	subw	t6, s3, s4
	sw	t6, 0(s0)
	add	t6, a6, t5
	add	t5, a7, t5
	j	.LBB8_81
.LBB8_80:                               #   in Loop: Header=BB8_81 Depth=3
	sw	s2, 0(t6)
	addi	t6, t6, 4
	beq	t6, t5, .LBB8_78
.LBB8_81:                               #   Parent Loop BB8_77 Depth=1
                                        #     Parent Loop BB8_79 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	s0, -128(t6)
	lw	s2, 0(t6)
	lw	s1, 64(t6)
	lw	s3, -64(t6)
	add	s5, s2, s0
	srli	s4, s1, 1
	add	s4, s4, s3
	lw	s6, 0(a2)
	addi	s5, s5, 32
	add	s7, s5, s4
	sraiw	s7, s7, 6
	sgtz	s8, s7
	neg	s8, s8
	and	s7, s8, s7
	blt	s6, s7, .LBB8_83
# %bb.82:                               #   in Loop: Header=BB8_81 Depth=3
	mv	s6, s7
.LBB8_83:                               #   in Loop: Header=BB8_81 Depth=3
	sw	s6, -128(t6)
	lw	s6, 0(a2)
	subw	s4, s5, s4
	sraiw	s4, s4, 6
	sgtz	s5, s4
	neg	s5, s5
	and	s4, s5, s4
	blt	s6, s4, .LBB8_85
# %bb.84:                               #   in Loop: Header=BB8_81 Depth=3
	mv	s6, s4
.LBB8_85:                               #   in Loop: Header=BB8_81 Depth=3
	subw	s4, s0, s2
	srli	s0, s3, 1
	subw	s0, s0, s1
	sw	s6, 64(t6)
	lw	s2, 0(a2)
	addi	s1, s4, 32
	add	s3, s1, s0
	sraiw	s3, s3, 6
	sgtz	s4, s3
	neg	s4, s4
	and	s3, s4, s3
	blt	s2, s3, .LBB8_87
# %bb.86:                               #   in Loop: Header=BB8_81 Depth=3
	mv	s2, s3
.LBB8_87:                               #   in Loop: Header=BB8_81 Depth=3
	sw	s2, -64(t6)
	lw	s2, 0(a2)
	subw	s1, s1, s0
	sraiw	s0, s1, 6
	sgtz	s1, s0
	neg	s1, s1
	and	s0, s1, s0
	blt	s2, s0, .LBB8_80
# %bb.88:                               #   in Loop: Header=BB8_81 Depth=3
	mv	s2, s0
	j	.LBB8_80
.LBB8_89:
	lui	a2, %hi(enc_picture)
	ld	a2, %lo(enc_picture)(a2)
	lui	a3, 2
	add	a2, a2, a3
	ld	a2, -1728(a2)
	ld	a3, 88(sp)                      # 8-byte Folded Reload
	add	a2, a2, a3
	lw	a3, 164(a1)
	ld	a2, 0(a2)
	lw	a1, 160(a1)
	slli	a3, a3, 3
	add	a3, a2, a3
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
	ld	a0, 104(sp)                     # 8-byte Folded Reload
	bne	a0, a1, .LBB8_91
# %bb.90:
	li	a0, 2
	sd	a0, 40(sp)                      # 8-byte Folded Spill
.LBB8_91:
	ld	a0, 40(sp)                      # 8-byte Folded Reload
	ld	ra, 744(sp)                     # 8-byte Folded Reload
	ld	s0, 736(sp)                     # 8-byte Folded Reload
	ld	s1, 728(sp)                     # 8-byte Folded Reload
	ld	s2, 720(sp)                     # 8-byte Folded Reload
	ld	s3, 712(sp)                     # 8-byte Folded Reload
	ld	s4, 704(sp)                     # 8-byte Folded Reload
	ld	s5, 696(sp)                     # 8-byte Folded Reload
	ld	s6, 688(sp)                     # 8-byte Folded Reload
	ld	s7, 680(sp)                     # 8-byte Folded Reload
	ld	s8, 672(sp)                     # 8-byte Folded Reload
	ld	s9, 664(sp)                     # 8-byte Folded Reload
	ld	s10, 656(sp)                    # 8-byte Folded Reload
	ld	s11, 648(sp)                    # 8-byte Folded Reload
	fld	fs0, 640(sp)                    # 8-byte Folded Reload
	fld	fs1, 632(sp)                    # 8-byte Folded Reload
	fld	fs2, 624(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 752
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
	addi	sp, sp, -240
	sd	ra, 232(sp)                     # 8-byte Folded Spill
	sd	s0, 224(sp)                     # 8-byte Folded Spill
	sd	s1, 216(sp)                     # 8-byte Folded Spill
	sd	s2, 208(sp)                     # 8-byte Folded Spill
	sd	s3, 200(sp)                     # 8-byte Folded Spill
	sd	s4, 192(sp)                     # 8-byte Folded Spill
	sd	s5, 184(sp)                     # 8-byte Folded Spill
	sd	s6, 176(sp)                     # 8-byte Folded Spill
	sd	s7, 168(sp)                     # 8-byte Folded Spill
	sd	s8, 160(sp)                     # 8-byte Folded Spill
	sd	s9, 152(sp)                     # 8-byte Folded Spill
	sd	s10, 144(sp)                    # 8-byte Folded Spill
	sd	s11, 136(sp)                    # 8-byte Folded Spill
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
	mv	a4, a0
	li	s6, 0
	lui	a0, 174763
	addiw	a0, a0, -1365
	mul	a0, a2, a0
	srli	a5, a0, 63
	srli	a0, a0, 32
	add	s5, a0, a5
	addi	a5, s5, 15
	li	a0, 1
	sd	a5, 64(sp)                      # 8-byte Folded Spill
	sllw	a0, a0, a5
	sd	a1, 8(sp)                       # 8-byte Folded Spill
	slli	a1, a1, 5
	add	a1, a3, a1
	lui	s7, 3
	addiw	a3, s7, 312
	add	a3, a1, a3
	sd	a4, 16(sp)                      # 8-byte Folded Spill
	slli	a4, a4, 1
	add	a5, a3, a4
	lhu	a5, 0(a5)
	addi	a6, a4, 2
	add	a7, a3, a6
	lhu	a7, 0(a7)
	addi	t0, a4, 4
	add	t1, a3, t0
	lhu	t1, 0(t1)
	addi	t2, a4, 6
	add	a3, a3, t2
	lhu	a3, 0(a3)
	addiw	t3, s7, 344
	add	t3, a1, t3
	add	t4, t3, a4
	lhu	t4, 0(t4)
	add	t5, t3, a6
	lhu	t5, 0(t5)
	add	t6, t3, t0
	lhu	t6, 0(t6)
	add	t3, t3, t2
	lhu	t3, 0(t3)
	addiw	s0, s7, 376
	add	s0, a1, s0
	add	s1, s0, a4
	lhu	s1, 0(s1)
	add	s2, s0, a6
	lhu	s2, 0(s2)
	addiw	s3, s7, 408
	add	a1, a1, s3
	add	s3, s0, t0
	lhu	s3, 0(s3)
	add	s0, s0, t2
	lhu	s0, 0(s0)
	add	a4, a1, a4
	lhu	s4, 0(a4)
	add	a6, a1, a6
	lhu	a6, 0(a6)
	add	t0, a1, t0
	lhu	t0, 0(t0)
	add	a1, a1, t2
	lhu	t2, 0(a1)
	li	a1, 6
	mv	s8, s5
	mul	a1, s5, a1
	subw	a1, a2, a1
	add	a2, a3, a5
	subw	a5, a5, a3
	add	a3, t1, a7
	subw	a7, a7, t1
	add	t1, a3, a2
	subw	a4, a2, a3
	slli	a2, a5, 1
	add	s5, a2, a7
	slli	a7, a7, 1
	subw	a2, a5, a7
	add	a3, t3, t4
	subw	t4, t4, t3
	add	a5, t6, t5
	subw	t5, t5, t6
	add	a7, a5, a3
	subw	a5, a3, a5
	slli	a3, t4, 1
	add	t3, a3, t5
	slli	t5, t5, 1
	subw	a3, t4, t5
	add	t4, s0, s1
	subw	s1, s1, s0
	add	t5, s3, s2
	subw	t6, s2, s3
	add	s0, t5, t4
	subw	t4, t4, t5
	slli	t5, s1, 1
	add	t5, t5, t6
	slli	t6, t6, 1
	subw	s1, s1, t6
	add	t6, t2, s4
	subw	t2, s4, t2
	add	s2, t0, a6
	subw	a6, a6, t0
	add	t0, s2, t6
	subw	t6, t6, s2
	slli	s2, t2, 1
	add	s2, s2, a6
	slli	a6, a6, 1
	subw	a6, t2, a6
	add	t2, t0, t1
	subw	t0, t1, t0
	add	t1, s0, a7
	subw	a7, a7, s0
	add	s0, t1, t2
	sw	s0, 72(sp)
	subw	t1, t2, t1
	sw	t1, 80(sp)
	slli	t1, t0, 1
	add	t1, t1, a7
	sw	t1, 76(sp)
	slli	a7, a7, 1
	subw	a7, t0, a7
	sw	a7, 84(sp)
	add	a7, s2, s5
	subw	t0, s5, s2
	add	t1, t5, t3
	subw	t3, t3, t5
	add	t2, t1, a7
	sw	t2, 88(sp)
	subw	a7, a7, t1
	sw	a7, 96(sp)
	slli	a7, t0, 1
	add	a7, a7, t3
	sw	a7, 92(sp)
	slli	t3, t3, 1
	subw	a7, t0, t3
	sw	a7, 100(sp)
	add	a7, t6, a4
	subw	a4, a4, t6
	add	t0, t4, a5
	subw	a5, a5, t4
	add	t1, t0, a7
	sw	t1, 104(sp)
	subw	a7, a7, t0
	sw	a7, 112(sp)
	slli	a7, a4, 1
	add	a7, a7, a5
	sw	a7, 108(sp)
	slli	a5, a5, 1
	subw	a4, a4, a5
	sw	a4, 116(sp)
	add	a4, a6, a2
	subw	a2, a2, a6
	add	a5, s1, a3
	subw	a3, a3, s1
	add	a6, a5, a4
	sw	a6, 120(sp)
	subw	a4, a4, a5
	sw	a4, 128(sp)
	slli	a4, a2, 1
	add	a4, a4, a3
	sw	a4, 124(sp)
	slli	a3, a3, 1
	subw	a2, a2, a3
	sw	a2, 132(sp)
	srliw	a2, a0, 31
	add	a0, a0, a2
	sraiw	s9, a0, 1
	slli	a1, a1, 6
	lui	a0, %hi(dequant_coef)
	addi	a0, a0, %lo(dequant_coef)
	add	s4, a0, a1
	lui	a0, %hi(quant_coef)
	addi	a0, a0, %lo(quant_coef)
	add	s1, a0, a1
	addi	s0, sp, 72
	addiw	a2, s7, 824
	lui	s5, %hi(sp2_frame_indicator)
	lui	a0, 22
	addiw	a0, a0, 420
	sd	a0, 0(sp)                       # 8-byte Folded Spill
	j	.LBB9_2
.LBB9_1:                                #   in Loop: Header=BB9_2 Depth=1
	ld	s6, 56(sp)                      # 8-byte Folded Reload
	addi	s6, s6, 1
	ld	a2, 24(sp)                      # 8-byte Folded Reload
	addi	a2, a2, 64
	ld	s4, 48(sp)                      # 8-byte Folded Reload
	addi	s4, s4, 4
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	addi	s1, s1, 4
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	s0, s0, 4
	li	a0, 4
	beq	s6, a0, .LBB9_6
.LBB9_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_4 Depth 2
	slli	s10, s6, 6
	lui	a0, 3
	addiw	a0, a0, 840
	add	s10, s10, a0
	ld	s11, 8(sp)                      # 8-byte Folded Reload
	sd	s6, 56(sp)                      # 8-byte Folded Spill
	add	s11, s6, s11
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s4, 48(sp)                      # 8-byte Folded Spill
	sd	a2, 24(sp)                      # 8-byte Folded Spill
	mv	s6, a2
	ld	s7, 16(sp)                      # 8-byte Folded Reload
	j	.LBB9_4
.LBB9_3:                                #   in Loop: Header=BB9_4 Depth=2
	addi	s7, s7, 1
	addi	s6, s6, 4
	addi	s4, s4, 16
	addi	s1, s1, 16
	addi	s0, s0, 16
	beq	s6, s10, .LBB9_1
.LBB9_4:                                #   Parent Loop BB9_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	s2, 0(s0)
	lw	a0, 0(s1)
	sraiw	a1, s2, 31
	xor	a2, s2, a1
	subw	a2, a2, a1
	mul	a0, a2, a0
	add	a0, a0, s9
	ld	a1, 64(sp)                      # 8-byte Folded Reload
	sraw	s3, a0, a1
	mv	a0, s3
	mv	a1, s2
	call	sign
	lw	a2, 0(s4)
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	mul	a0, a2, a0
	sllw	a0, a0, s8
	add	a2, a1, s6
	sw	a0, 0(a2)
	lui	a0, %hi(si_frame_indicator)
	lw	a0, %lo(si_frame_indicator)(a0)
	lw	a2, %lo(sp2_frame_indicator)(s5)
	or	a0, a0, a2
	bnez	a0, .LBB9_3
# %bb.5:                                #   in Loop: Header=BB9_4 Depth=2
	mv	a0, s3
	mv	a1, s2
	call	sign
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lw	a2, 156(a1)
	lui	a3, %hi(lrec)
	ld	a3, %lo(lrec)(a3)
	addw	a2, s11, a2
	slli	a2, a2, 3
	lw	a4, 152(a1)
	add	a2, a3, a2
	ld	a2, 0(a2)
	addw	a3, s7, a4
	slli	a3, a3, 2
	add	a2, a2, a3
	sw	a0, 0(a2)
	j	.LBB9_3
.LBB9_6:
	lui	a0, 3
	addiw	a0, a0, 824
	add	a0, a1, a0
	lw	a3, 0(a0)
	lw	a4, 8(a0)
	ld	a2, 0(sp)                       # 8-byte Folded Reload
	add	a2, a1, a2
	lw	a5, 4(a0)
	lw	a6, 12(a0)
	add	a7, a4, a3
	subw	a3, a3, a4
	srli	a4, a5, 1
	subw	a4, a4, a6
	srli	a6, a6, 1
	add	a5, a6, a5
	add	a6, a5, a7
	sw	a6, 0(a0)
	subw	a5, a7, a5
	sw	a5, 12(a0)
	add	a5, a4, a3
	sw	a5, 4(a0)
	subw	a3, a3, a4
	lw	a4, 64(a0)
	lw	a5, 72(a0)
	sw	a3, 8(a0)
	lw	a3, 68(a0)
	lw	a6, 76(a0)
	add	a7, a5, a4
	subw	a4, a4, a5
	srli	a5, a3, 1
	subw	a5, a5, a6
	srli	a6, a6, 1
	add	a3, a6, a3
	add	a6, a3, a7
	sw	a6, 64(a0)
	subw	a3, a7, a3
	sw	a3, 76(a0)
	add	a3, a5, a4
	sw	a3, 68(a0)
	subw	a4, a4, a5
	lw	a3, 128(a0)
	lw	a5, 136(a0)
	sw	a4, 72(a0)
	lw	a4, 132(a0)
	lw	a6, 140(a0)
	add	a7, a5, a3
	subw	a3, a3, a5
	srli	a5, a4, 1
	subw	a5, a5, a6
	srli	a6, a6, 1
	add	a4, a6, a4
	add	a6, a4, a7
	sw	a6, 128(a0)
	subw	a4, a7, a4
	sw	a4, 140(a0)
	add	a4, a5, a3
	sw	a4, 132(a0)
	subw	a3, a3, a5
	sw	a3, 136(a0)
	lw	a4, 192(a0)
	lw	a5, 200(a0)
	addi	a3, a0, 192
	lw	a6, 196(a0)
	lw	a7, 204(a0)
	add	t0, a5, a4
	subw	a4, a4, a5
	srli	a5, a6, 1
	subw	a5, a5, a7
	srli	a7, a7, 1
	add	a6, a7, a6
	add	a7, a6, t0
	sw	a7, 192(a0)
	subw	a6, t0, a6
	sw	a6, 204(a0)
	add	a6, a5, a4
	sw	a6, 196(a0)
	subw	a4, a4, a5
	sw	a4, 200(a0)
	lui	a4, 3
	addiw	a4, a4, 1032
	add	a4, a1, a4
	j	.LBB9_8
.LBB9_7:                                #   in Loop: Header=BB9_8 Depth=1
	sw	a7, -64(a3)
	addi	a3, a3, 4
	beq	a3, a4, .LBB9_16
.LBB9_8:                                # =>This Inner Loop Header: Depth=1
	lw	a5, -192(a3)
	lw	a7, -64(a3)
	lw	a6, 0(a3)
	lw	t0, -128(a3)
	add	t2, a7, a5
	srli	t1, a6, 1
	add	t1, t1, t0
	lw	t3, 0(a2)
	addi	t2, t2, 32
	add	t4, t2, t1
	sraiw	t4, t4, 6
	sgtz	t5, t4
	neg	t5, t5
	and	t4, t5, t4
	blt	t3, t4, .LBB9_10
# %bb.9:                                #   in Loop: Header=BB9_8 Depth=1
	mv	t3, t4
.LBB9_10:                               #   in Loop: Header=BB9_8 Depth=1
	sw	t3, -192(a3)
	lw	t3, 0(a2)
	subw	t1, t2, t1
	sraiw	t1, t1, 6
	sgtz	t2, t1
	neg	t2, t2
	and	t1, t2, t1
	blt	t3, t1, .LBB9_12
# %bb.11:                               #   in Loop: Header=BB9_8 Depth=1
	mv	t3, t1
.LBB9_12:                               #   in Loop: Header=BB9_8 Depth=1
	subw	t1, a5, a7
	srli	a5, t0, 1
	subw	a5, a5, a6
	sw	t3, 0(a3)
	lw	a7, 0(a2)
	addi	a6, t1, 32
	add	t0, a6, a5
	sraiw	t0, t0, 6
	sgtz	t1, t0
	neg	t1, t1
	and	t0, t1, t0
	blt	a7, t0, .LBB9_14
# %bb.13:                               #   in Loop: Header=BB9_8 Depth=1
	mv	a7, t0
.LBB9_14:                               #   in Loop: Header=BB9_8 Depth=1
	sw	a7, -128(a3)
	lw	a7, 0(a2)
	subw	a5, a6, a5
	sraiw	a5, a5, 6
	sgtz	a6, a5
	neg	a6, a6
	and	a5, a6, a5
	blt	a7, a5, .LBB9_7
# %bb.15:                               #   in Loop: Header=BB9_8 Depth=1
	mv	a7, a5
	j	.LBB9_7
.LBB9_16:
	lui	a2, %hi(enc_picture)
	ld	a2, %lo(enc_picture)(a2)
	lui	a3, 2
	lw	a4, 156(a1)
	add	a2, a2, a3
	ld	a2, -1768(a2)
	lw	a1, 152(a1)
	ld	a3, 8(sp)                       # 8-byte Folded Reload
	addw	a4, a4, a3
	slli	a3, a4, 3
	add	a3, a2, a3
	ld	a7, 0(a3)
	lh	a5, 0(a0)
	ld	a3, 16(sp)                      # 8-byte Folded Reload
	addw	a6, a1, a3
	slli	a3, a6, 1
	add	a1, a7, a3
	sh	a5, 0(a1)
	lh	a1, 4(a0)
	addiw	a5, a6, 1
	slli	a5, a5, 1
	add	t0, a7, a5
	sh	a1, 0(t0)
	lh	t0, 8(a0)
	addiw	a1, a6, 2
	slli	a1, a1, 1
	add	t1, a7, a1
	sh	t0, 0(t1)
	lh	t0, 12(a0)
	addiw	a6, a6, 3
	slli	a6, a6, 1
	addiw	t1, a4, 1
	slli	t1, t1, 3
	add	t1, a2, t1
	ld	t1, 0(t1)
	add	a7, a7, a6
	lh	t2, 64(a0)
	sh	t0, 0(a7)
	add	a7, t1, a3
	lh	t0, 68(a0)
	sh	t2, 0(a7)
	lh	a7, 72(a0)
	add	t2, t1, a5
	sh	t0, 0(t2)
	add	t0, t1, a1
	sh	a7, 0(t0)
	lh	a7, 76(a0)
	addiw	t0, a4, 2
	slli	t0, t0, 3
	add	t0, a2, t0
	ld	t0, 0(t0)
	add	t1, t1, a6
	lh	t2, 128(a0)
	sh	a7, 0(t1)
	add	a7, t0, a3
	lh	t1, 132(a0)
	sh	t2, 0(a7)
	lh	a7, 136(a0)
	add	t2, t0, a5
	sh	t1, 0(t2)
	add	t1, t0, a1
	sh	a7, 0(t1)
	lh	a7, 140(a0)
	addiw	a4, a4, 3
	slli	a4, a4, 3
	add	a2, a2, a4
	ld	a2, 0(a2)
	add	t0, t0, a6
	lh	a4, 192(a0)
	sh	a7, 0(t0)
	add	a3, a2, a3
	lh	a7, 196(a0)
	sh	a4, 0(a3)
	add	a5, a2, a5
	lh	a3, 200(a0)
	sh	a7, 0(a5)
	lh	a0, 204(a0)
	add	a1, a2, a1
	sh	a3, 0(a1)
	add	a2, a2, a6
	sh	a0, 0(a2)
	ld	ra, 232(sp)                     # 8-byte Folded Reload
	ld	s0, 224(sp)                     # 8-byte Folded Reload
	ld	s1, 216(sp)                     # 8-byte Folded Reload
	ld	s2, 208(sp)                     # 8-byte Folded Reload
	ld	s3, 200(sp)                     # 8-byte Folded Reload
	ld	s4, 192(sp)                     # 8-byte Folded Reload
	ld	s5, 184(sp)                     # 8-byte Folded Reload
	ld	s6, 176(sp)                     # 8-byte Folded Reload
	ld	s7, 168(sp)                     # 8-byte Folded Reload
	ld	s8, 160(sp)                     # 8-byte Folded Reload
	ld	s9, 152(sp)                     # 8-byte Folded Reload
	ld	s10, 144(sp)                    # 8-byte Folded Reload
	ld	s11, 136(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 240
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
	lui	s3, %hi(img)
	ld	a0, %lo(img)(s3)
	lui	s4, 22
	add	a1, a0, s4
	lw	a1, 448(a1)
	blez	a1, .LBB10_16
# %bb.5:                                # %.preheader3
	li	s5, 0
	lui	s6, %hi(enc_picture)
	lui	s7, 2
	j	.LBB10_7
.LBB10_6:                               #   in Loop: Header=BB10_7 Depth=1
	add	a1, a0, s4
	lw	a1, 448(a1)
	addiw	s5, s5, 1
	bge	s5, a1, .LBB10_10
.LBB10_7:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_9 Depth 2
	add	a1, a0, s4
	lw	a1, 444(a1)
	blez	a1, .LBB10_6
# %bb.8:                                #   in Loop: Header=BB10_7 Depth=1
	lw	a1, 164(a0)
	li	s8, 0
	li	s9, 0
	addw	s10, a1, s5
	slli	s10, s10, 3
.LBB10_9:                               #   Parent Loop BB10_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a1, %lo(enc_picture)(s6)
	add	a1, a1, s7
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
	ld	a0, %lo(img)(s3)
	add	a1, a0, s4
	lw	a1, 444(a1)
	addiw	s9, s9, 1
	addi	s8, s8, 1
	blt	s9, a1, .LBB10_9
	j	.LBB10_6
.LBB10_10:
	blez	a1, .LBB10_16
# %bb.11:                               # %.preheader
	li	s3, 0
	lui	s4, 22
	lui	s5, %hi(enc_picture)
	lui	s6, 2
	lui	s7, %hi(img)
	j	.LBB10_13
.LBB10_12:                              #   in Loop: Header=BB10_13 Depth=1
	add	a1, a0, s4
	lw	a1, 448(a1)
	addiw	s3, s3, 1
	bge	s3, a1, .LBB10_16
.LBB10_13:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_15 Depth 2
	add	a1, a0, s4
	lw	a1, 444(a1)
	blez	a1, .LBB10_12
# %bb.14:                               #   in Loop: Header=BB10_13 Depth=1
	lw	a1, 164(a0)
	li	s8, 0
	li	s9, 0
	addw	s10, a1, s3
	slli	s10, s10, 3
.LBB10_15:                              #   Parent Loop BB10_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a1, %lo(enc_picture)(s5)
	add	a1, a1, s6
	ld	a1, -1728(a1)
	ld	a1, 8(a1)
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
	blt	s9, a1, .LBB10_15
	j	.LBB10_12
.LBB10_16:
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
	lui	a3, %hi(stats)
	lw	a1, 24(a1)
	ld	a3, %lo(stats)(a3)
	lbu	a4, 8(a0)
	slli	a1, a1, 2
	add	a3, a3, a1
	lw	a5, 1336(a3)
	li	a6, 8
	subw	a1, a6, a2
	sllw	a4, a4, a2
	add	a2, a5, a2
	li	a5, 255
	srlw	a5, a5, a1
	sw	a2, 1336(a3)
	lw	a2, 0(a0)
	or	a4, a4, a5
	ld	a3, 32(a0)
	sb	a4, 8(a0)
	addi	a5, a2, 1
	sw	a5, 0(a0)
	add	a2, a3, a2
	sb	a4, 0(a2)
	sw	a6, 4(a0)
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
	andi	a3, a2, -2
	srli	a2, a0, 3
	add	a5, a3, a2
	srli	a2, a1, 1
	andi	a2, a2, 2
	lui	s8, %hi(img)
	ld	t1, %lo(img)(s8)
	slli	a3, a0, 61
	lui	s1, 3
	addiw	s6, s1, 824
	sd	s6, 120(sp)                     # 8-byte Folded Spill
	add	s6, t1, s6
	ld	a4, 1024(s6)
	srli	a3, a3, 63
	or	a2, a2, a3
	slli	a5, a5, 3
	add	a4, a4, a5
	ld	s7, 0(a4)
	lw	a7, 156(t1)
	lui	a3, %hi(lrec)
	ld	t0, %lo(lrec)(a3)
	lw	a5, 152(t1)
	addw	a3, a7, a1
	slli	a3, a3, 3
	add	t2, t0, a3
	ld	a4, 0(t2)
	slli	a2, a2, 3
	addw	a6, a5, a0
	slli	a6, a6, 2
	add	a3, a4, a6
	lw	a3, 0(a3)
	add	s7, s7, a2
	addi	a2, a0, 1
	sd	a2, 8(sp)                       # 8-byte Folded Spill
	addw	a2, a2, a5
	sw	a3, 0(s6)
	slli	a3, a2, 2
	add	a4, a4, a3
	lw	a2, 0(a4)
	addi	a4, a0, 2
	ld	t3, 0(t2)
	sd	a4, 16(sp)                      # 8-byte Folded Spill
	addw	a4, a4, a5
	sw	a2, 4(s6)
	slli	a4, a4, 2
	add	t3, t3, a4
	lw	a2, 0(t3)
	addi	t3, a0, 3
	ld	t2, 0(t2)
	sd	t3, 24(sp)                      # 8-byte Folded Spill
	addw	a5, t3, a5
	sw	a2, 8(s6)
	slli	a5, a5, 2
	add	t2, t2, a5
	lw	t2, 0(t2)
	addi	t6, a1, 1
	addw	a2, a7, t6
	slli	a2, a2, 3
	add	t3, t0, a2
	ld	t4, 0(t3)
	lw	a2, 44(t1)
	lui	t5, 174763
	sw	t2, 12(s6)
	add	t4, t4, a6
	lw	t2, 0(t4)
	ld	t4, 0(t3)
	addiw	t5, t5, -1365
	mul	t5, a2, t5
	sw	t2, 64(s6)
	add	t4, t4, a3
	lw	t2, 0(t4)
	ld	t4, 0(t3)
	srli	s0, t5, 63
	srli	t5, t5, 32
	sw	t2, 68(s6)
	add	t4, t4, a4
	lw	t2, 0(t4)
	ld	t3, 0(t3)
	addiw	t4, s1, 312
	add	t1, t1, t4
	sw	t2, 72(s6)
	add	t3, t3, a5
	lw	t3, 0(t3)
	slli	t2, a1, 5
	add	s1, t1, t2
	sd	a0, 32(sp)                      # 8-byte Folded Spill
	slli	t2, a0, 1
	sw	t3, 76(s6)
	add	t3, s1, t2
	lhu	t4, 0(t3)
	addi	s2, a1, 2
	addw	t3, a7, s2
	slli	t3, t3, 3
	add	s3, t0, t3
	ld	s4, 0(s3)
	addi	t3, t2, 2
	add	s5, s1, t3
	lhu	s5, 0(s5)
	add	s4, s4, a6
	lw	s4, 0(s4)
	add	s9, t5, s0
	sw	t4, 136(sp)
	sw	s5, 152(sp)
	sw	s4, 128(s6)
	addi	t4, t2, 4
	add	t5, s1, t4
	lhu	s0, 0(t5)
	addi	t5, t2, 6
	add	s1, s1, t5
	lhu	s1, 0(s1)
	slli	t6, t6, 5
	ld	s4, 0(s3)
	add	t6, t1, t6
	add	s5, t6, t2
	lhu	s5, 0(s5)
	add	s4, s4, a3
	lw	s4, 0(s4)
	sw	s0, 168(sp)
	sw	s1, 184(sp)
	sw	s5, 140(sp)
	sw	s4, 132(s6)
	add	s0, t6, t3
	lhu	s0, 0(s0)
	add	s1, t6, t4
	ld	s4, 0(s3)
	lhu	s1, 0(s1)
	add	t6, t6, t5
	lhu	t6, 0(t6)
	add	s4, s4, a4
	lw	s4, 0(s4)
	sw	s0, 156(sp)
	sw	s1, 172(sp)
	sw	t6, 188(sp)
	sw	s4, 136(s6)
	sd	a1, 40(sp)                      # 8-byte Folded Spill
	addi	t6, a1, 3
	addw	a7, a7, t6
	slli	a7, a7, 3
	add	a7, t0, a7
	slli	s2, s2, 5
	add	s2, t1, s2
	ld	t0, 0(s3)
	add	s0, s2, t2
	lhu	s0, 0(s0)
	add	s1, s2, t3
	lhu	s1, 0(s1)
	add	t0, t0, a5
	lw	t0, 0(t0)
	ld	s3, 0(a7)
	sw	s0, 144(sp)
	sw	s1, 160(sp)
	sw	t0, 140(s6)
	add	a6, s3, a6
	add	t0, s2, t4
	lhu	t0, 0(t0)
	add	s2, s2, t5
	lhu	s0, 0(s2)
	lw	a6, 0(a6)
	ld	s1, 0(a7)
	sw	t0, 176(sp)
	sw	s0, 192(sp)
	sw	a6, 192(s6)
	add	a3, s1, a3
	lw	a3, 0(a3)
	ld	a6, 0(a7)
	slli	t6, t6, 5
	add	t1, t1, t6
	sw	a3, 196(s6)
	add	a4, a6, a4
	lw	a3, 0(a4)
	ld	a4, 0(a7)
	add	t2, t1, t2
	lhu	a6, 0(t2)
	sw	a3, 200(s6)
	add	a4, a4, a5
	lw	a3, 0(a4)
	sw	a6, 148(sp)
	add	t3, t1, t3
	add	t4, t1, t4
	sw	a3, 204(s6)
	add	t1, t1, t5
	li	a1, 6
	mul	a1, s9, a1
	lw	a3, 136(sp)
	lw	a4, 184(sp)
	lw	a5, 152(sp)
	lw	a6, 168(sp)
	subw	a2, a2, a1
	sd	a2, 104(sp)                     # 8-byte Folded Spill
	add	a1, a4, a3
	subw	a3, a3, a4
	add	a2, a6, a5
	subw	a5, a5, a6
	add	a6, a2, a1
	subw	a1, a1, a2
	sw	a1, 168(sp)
	slli	a4, a3, 1
	add	a4, a4, a5
	slli	a5, a5, 1
	subw	a3, a3, a5
	lw	a1, 140(sp)
	lw	a2, 188(sp)
	lw	a5, 156(sp)
	lw	a7, 172(sp)
	sw	a3, 184(sp)
	add	a3, a2, a1
	subw	a1, a1, a2
	add	a2, a7, a5
	subw	a5, a5, a7
	add	a7, a2, a3
	subw	a2, a3, a2
	slli	a3, a1, 1
	add	t0, a3, a5
	slli	a5, a5, 1
	lw	a3, 144(sp)
	lw	t2, 192(sp)
	lw	t5, 160(sp)
	lw	t6, 176(sp)
	subw	a1, a1, a5
	add	a5, t2, a3
	subw	a3, a3, t2
	add	t2, t6, t5
	subw	t5, t5, t6
	add	t6, t2, a5
	subw	a5, a5, t2
	slli	t2, a3, 1
	add	t2, t2, t5
	slli	t5, t5, 1
	subw	a3, a3, t5
	lhu	t1, 0(t1)
	lw	t5, 148(sp)
	lhu	t3, 0(t3)
	lhu	t4, 0(t4)
	sw	t1, 196(sp)
	add	s0, t1, t5
	subw	t1, t5, t1
	sw	t3, 164(sp)
	sw	t4, 180(sp)
	add	t5, t4, t3
	subw	t3, t3, t4
	add	t4, t5, s0
	subw	s0, s0, t5
	slli	t5, t1, 1
	add	t5, t5, t3
	slli	t3, t3, 1
	subw	t1, t1, t3
	add	t3, t4, a6
	subw	a6, a6, t4
	add	t4, t6, a7
	subw	a7, a7, t6
	add	t6, t4, t3
	sw	t6, 136(sp)
	subw	t3, t3, t4
	ld	a0, 0(s7)
	sw	t3, 144(sp)
	slli	t3, a6, 1
	add	t3, t3, a7
	sw	t3, 140(sp)
	ld	t3, 0(a0)
	sd	t3, 72(sp)                      # 8-byte Folded Spill
	ld	a0, 8(a0)
	sd	a0, 56(sp)                      # 8-byte Folded Spill
	slli	a7, a7, 1
	subw	a0, a6, a7
	sd	s9, 112(sp)                     # 8-byte Folded Spill
	addi	s9, s9, 15
	sw	a0, 148(sp)
	add	a0, t5, a4
	subw	a4, a4, t5
	add	a6, t2, t0
	subw	a7, t0, t2
	add	t0, a6, a0
	sw	t0, 152(sp)
	li	t0, 1
	subw	a0, a0, a6
	sd	s9, 96(sp)                      # 8-byte Folded Spill
	sllw	a6, t0, s9
	sw	a0, 160(sp)
	slli	a0, a4, 1
	add	a0, a0, a7
	sw	a0, 156(sp)
	lw	a0, 168(sp)
	slli	a7, a7, 1
	subw	a4, a4, a7
	sw	a4, 164(sp)
	add	a4, s0, a0
	subw	a0, a0, s0
	add	a7, a5, a2
	subw	a2, a2, a5
	add	a5, a7, a4
	sw	a5, 168(sp)
	subw	a4, a4, a7
	sw	a4, 176(sp)
	slli	a4, a0, 1
	add	a4, a4, a2
	sw	a4, 172(sp)
	lw	a4, 184(sp)
	slli	a2, a2, 1
	subw	a0, a0, a2
	sw	a0, 180(sp)
	add	a0, t1, a4
	subw	a2, a4, t1
	add	a4, a3, a1
	subw	a1, a1, a3
	add	a3, a4, a0
	sw	a3, 184(sp)
	subw	a0, a0, a4
	sw	a0, 192(sp)
	slli	a0, a2, 1
	add	a0, a0, a1
	sw	a0, 188(sp)
	slli	a1, a1, 1
	subw	a2, a2, a1
	sw	a2, 196(sp)
	srliw	a0, a6, 31
	add	a0, a6, a0
	sraiw	a0, a0, 1
	sd	a0, 88(sp)                      # 8-byte Folded Spill
	ld	a1, %lo(img)(s8)
	li	s7, -1
	lui	a0, 22
	addiw	s9, a0, -696
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
	sw	s7, 0(a1)
	addiw	a3, a3, 1
	sd	a3, 128(sp)                     # 8-byte Folded Spill
	li	s7, -1
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
	add	s1, a0, s1
	add	s1, s1, s2
	addi	s10, s10, 2
	sw	a2, 0(s1)
	li	a2, 32
	beq	s10, a2, .LBB12_10
.LBB12_3:                               # =>This Inner Loop Header: Depth=1
	add	a0, a1, s9
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
	lbu	s2, 0(a2)
	lbu	s1, 1(a2)
	slli	s8, s2, 4
	addi	a0, sp, 136
	add	a0, a0, s8
	slli	s11, s1, 2
	add	a0, a0, s11
	lw	s4, 0(a0)
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
	slli	s1, s1, 6
	add	a1, a1, s1
	slli	s2, s2, 2
	lui	a3, 3
	add	a3, s2, a3
	add	a1, a1, a3
	addiw	s7, s7, 1
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
	add	a2, a2, s7
	add	a1, a2, a1
	lbu	a1, 0(a1)
	j	.LBB12_1
.LBB12_10:
	ld	a2, 128(sp)                     # 8-byte Folded Reload
	slli	a2, a2, 2
	ld	a3, 72(sp)                      # 8-byte Folded Reload
	add	a2, a3, a2
	sw	zero, 0(a2)
	lw	a2, 0(a0)
	lw	a3, 8(a0)
	lw	a4, 4(a0)
	lw	a5, 12(a0)
	add	a6, a3, a2
	subw	a2, a2, a3
	srli	a3, a4, 1
	subw	a3, a3, a5
	srli	a5, a5, 1
	add	a4, a5, a4
	add	a5, a4, a6
	sw	a5, 0(a0)
	subw	a4, a6, a4
	sw	a4, 12(a0)
	add	a4, a3, a2
	sw	a4, 4(a0)
	subw	a2, a2, a3
	lw	a3, 64(a0)
	lw	a4, 72(a0)
	sw	a2, 8(a0)
	lw	a2, 68(a0)
	lw	a5, 76(a0)
	add	a6, a4, a3
	subw	a3, a3, a4
	srli	a4, a2, 1
	subw	a4, a4, a5
	srli	a5, a5, 1
	add	a2, a5, a2
	add	a5, a2, a6
	sw	a5, 64(a0)
	subw	a2, a6, a2
	sw	a2, 76(a0)
	add	a2, a4, a3
	sw	a2, 68(a0)
	subw	a3, a3, a4
	lw	a2, 128(a0)
	lw	a4, 136(a0)
	sw	a3, 72(a0)
	lw	a3, 132(a0)
	lw	a5, 140(a0)
	add	a7, a4, a2
	subw	a2, a2, a4
	srai	a4, a3, 1
	subw	t0, a4, a5
	srai	a5, a5, 1
	add	a3, a5, a3
	add	a6, a3, a7
	sw	a6, 128(a0)
	subw	a3, a7, a3
	sw	a3, 140(a0)
	add	a4, t0, a2
	sw	a4, 132(a0)
	subw	a2, a2, t0
	lw	a3, 192(a0)
	lw	a5, 200(a0)
	sw	a2, 136(a0)
	lw	a2, 196(a0)
	lw	a7, 204(a0)
	add	t0, a5, a3
	subw	a3, a3, a5
	srai	a5, a2, 1
	subw	t1, a5, a7
	srai	a5, a7, 1
	add	a2, a5, a2
	add	a7, a2, t0
	sw	a7, 192(a0)
	subw	a2, t0, a2
	sw	a2, 204(a0)
	add	a5, t1, a3
	sw	a5, 196(a0)
	lw	t0, 0(a0)
	subw	a3, a3, t1
	lw	t4, 64(a0)
	sw	a3, 200(a0)
	add	a2, a6, t0
	sraiw	t1, a7, 1
	add	t1, t1, t4
	addi	t2, a2, 32
	add	a2, t2, t1
	sraiw	a2, a2, 6
	sgtz	t3, a2
	neg	t3, t3
	and	t3, t3, a2
	li	a2, 255
	srli	t4, t4, 1
	blt	t3, a2, .LBB12_12
# %bb.11:
	li	t3, 255
.LBB12_12:
	subw	t0, t0, a6
	subw	a6, t4, a7
	subw	a7, t2, t1
	sraiw	a7, a7, 6
	sgtz	t1, a7
	neg	t1, t1
	and	t1, t1, a7
	sw	t3, 0(a0)
	blt	t1, a2, .LBB12_14
# %bb.13:
	li	t1, 255
.LBB12_14:
	addi	a7, t0, 32
	add	t0, a7, a6
	sraiw	t0, t0, 6
	sgtz	t2, t0
	neg	t2, t2
	and	t0, t2, t0
	sw	t1, 192(a0)
	blt	t0, a2, .LBB12_16
# %bb.15:
	li	t0, 255
.LBB12_16:
	subw	a6, a7, a6
	sraiw	a6, a6, 6
	sgtz	a7, a6
	neg	a7, a7
	and	a7, a7, a6
	sw	t0, 64(a0)
	blt	a7, a2, .LBB12_18
# %bb.17:
	li	a7, 255
.LBB12_18:
	lw	a6, 4(a0)
	lw	t2, 68(a0)
	sw	a7, 128(a0)
	add	t0, a4, a6
	sraiw	a7, a5, 1
	add	a7, a7, t2
	addi	t0, t0, 32
	add	t1, t0, a7
	sraiw	t1, t1, 6
	sgtz	t3, t1
	neg	t3, t3
	and	t1, t3, t1
	srli	t2, t2, 1
	blt	t1, a2, .LBB12_20
# %bb.19:
	li	t1, 255
.LBB12_20:
	subw	a6, a6, a4
	subw	a4, t2, a5
	subw	a5, t0, a7
	sraiw	a5, a5, 6
	sgtz	a7, a5
	neg	a7, a7
	and	a7, a7, a5
	sw	t1, 4(a0)
	blt	a7, a2, .LBB12_22
# %bb.21:
	li	a7, 255
.LBB12_22:
	addi	a5, a6, 32
	add	a6, a5, a4
	sraiw	a6, a6, 6
	sgtz	t0, a6
	neg	t0, t0
	and	a6, t0, a6
	sw	a7, 196(a0)
	blt	a6, a2, .LBB12_24
# %bb.23:
	li	a6, 255
.LBB12_24:
	subw	a5, a5, a4
	sraiw	a4, a5, 6
	sgtz	a5, a4
	neg	a5, a5
	and	a7, a5, a4
	sw	a6, 68(a0)
	blt	a7, a2, .LBB12_26
# %bb.25:
	li	a7, 255
.LBB12_26:
	lw	a4, 8(a0)
	lw	a5, 136(a0)
	lw	t1, 72(a0)
	sw	a7, 132(a0)
	add	a7, a5, a4
	sraiw	a6, a3, 1
	add	a6, a6, t1
	addi	a7, a7, 32
	add	t0, a7, a6
	sraiw	t0, t0, 6
	sgtz	t2, t0
	neg	t2, t2
	and	t0, t2, t0
	srli	t1, t1, 1
	blt	t0, a2, .LBB12_28
# %bb.27:
	li	t0, 255
.LBB12_28:
	subw	a4, a4, a5
	subw	a3, t1, a3
	subw	a5, a7, a6
	sraiw	a5, a5, 6
	sgtz	a6, a5
	neg	a6, a6
	and	a5, a6, a5
	sw	t0, 8(a0)
	blt	a5, a2, .LBB12_30
# %bb.29:
	li	a5, 255
.LBB12_30:
	addi	a4, a4, 32
	add	a6, a4, a3
	sraiw	a6, a6, 6
	sgtz	a7, a6
	neg	a7, a7
	and	a6, a7, a6
	sw	a5, 200(a0)
	blt	a6, a2, .LBB12_32
# %bb.31:
	li	a6, 255
.LBB12_32:
	subw	a4, a4, a3
	sraiw	a3, a4, 6
	sgtz	a4, a3
	neg	a4, a4
	and	a7, a4, a3
	sw	a6, 72(a0)
	blt	a7, a2, .LBB12_34
# %bb.33:
	li	a7, 255
.LBB12_34:
	lw	a3, 12(a0)
	lw	a4, 140(a0)
	lw	a5, 204(a0)
	lw	t1, 76(a0)
	sw	a7, 136(a0)
	add	a7, a4, a3
	srli	a6, a5, 1
	add	a6, a6, t1
	addi	a7, a7, 32
	add	t0, a7, a6
	sraiw	t0, t0, 6
	sgtz	t2, t0
	neg	t2, t2
	and	t0, t2, t0
	srli	t1, t1, 1
	blt	t0, a2, .LBB12_36
# %bb.35:
	li	t0, 255
.LBB12_36:
	subw	a4, a3, a4
	subw	a3, t1, a5
	subw	a5, a7, a6
	sraiw	a5, a5, 6
	sgtz	a6, a5
	neg	a6, a6
	and	a5, a6, a5
	sw	t0, 12(a0)
	blt	a5, a2, .LBB12_38
# %bb.37:
	li	a5, 255
.LBB12_38:
	addi	a4, a4, 32
	add	a6, a4, a3
	sraiw	a6, a6, 6
	sgtz	a7, a6
	neg	a7, a7
	and	a6, a7, a6
	sw	a5, 204(a0)
	blt	a6, a2, .LBB12_40
# %bb.39:
	li	a6, 255
.LBB12_40:
	subw	a4, a4, a3
	sraiw	a3, a4, 6
	sgtz	a4, a3
	neg	a4, a4
	and	a3, a4, a3
	sw	a6, 76(a0)
	blt	a3, a2, .LBB12_42
# %bb.41:
	li	a3, 255
.LBB12_42:
	lui	a2, %hi(enc_picture)
	ld	a4, %lo(enc_picture)(a2)
	sw	a3, 140(a0)
	lui	a3, 2
	lw	a2, 152(a1)
	add	a3, a4, a3
	lw	a1, 156(a1)
	ld	a5, -1768(a3)
	ld	a3, 32(sp)                      # 8-byte Folded Reload
	addw	a3, a2, a3
	lh	a4, 0(a0)
	ld	a6, 40(sp)                      # 8-byte Folded Reload
	addw	a6, a1, a6
	slli	a1, a6, 3
	add	a1, a5, a1
	ld	a1, 0(a1)
	slli	a7, a3, 1
	addiw	a3, a6, 1
	slli	a3, a3, 3
	add	a3, a5, a3
	ld	a3, 0(a3)
	lh	t0, 64(a0)
	add	t1, a1, a7
	sh	a4, 0(t1)
	add	a4, a3, a7
	sh	t0, 0(a4)
	lh	t0, 128(a0)
	addiw	a4, a6, 2
	slli	a4, a4, 3
	add	a4, a5, a4
	ld	a4, 0(a4)
	addiw	a6, a6, 3
	slli	a6, a6, 3
	add	a5, a5, a6
	ld	a5, 0(a5)
	lh	a6, 192(a0)
	add	t1, a4, a7
	sh	t0, 0(t1)
	add	a7, a5, a7
	sh	a6, 0(a7)
	ld	a6, 8(sp)                       # 8-byte Folded Reload
	addw	a6, a6, a2
	lh	a7, 4(a0)
	slli	a6, a6, 1
	add	t0, a1, a6
	lh	t1, 68(a0)
	sh	a7, 0(t0)
	add	a7, a3, a6
	lh	t0, 132(a0)
	sh	t1, 0(a7)
	lh	a7, 196(a0)
	add	t1, a4, a6
	sh	t0, 0(t1)
	add	a6, a5, a6
	sh	a7, 0(a6)
	ld	a6, 16(sp)                      # 8-byte Folded Reload
	addw	a6, a6, a2
	lh	a7, 8(a0)
	slli	a6, a6, 1
	add	t0, a1, a6
	lh	t1, 72(a0)
	sh	a7, 0(t0)
	add	a7, a3, a6
	lh	t0, 136(a0)
	sh	t1, 0(a7)
	lh	a7, 200(a0)
	add	t1, a4, a6
	sh	t0, 0(t1)
	add	a6, a5, a6
	sh	a7, 0(a6)
	ld	a6, 24(sp)                      # 8-byte Folded Reload
	addw	a2, a6, a2
	lh	a6, 12(a0)
	slli	a2, a2, 1
	add	a1, a1, a2
	lh	a7, 76(a0)
	sh	a6, 0(a1)
	add	a3, a3, a2
	lh	a1, 140(a0)
	sh	a7, 0(a3)
	lh	a0, 204(a0)
	add	a4, a4, a2
	sh	a1, 0(a4)
	add	a2, a5, a2
	sh	a0, 0(a2)
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
	lui	a2, %hi(img)
	ld	a6, %lo(img)(a2)
	lui	a2, 3
	addiw	a2, a2, 326
	add	t4, a6, a2
	ld	a2, 1530(t4)
	sd	a0, 48(sp)                      # 8-byte Folded Spill
	slli	a0, a0, 3
	sd	a0, 88(sp)                      # 8-byte Folded Spill
	add	a2, a2, a0
	lw	a5, 44(a6)
	ld	a0, 8(a2)
	sd	a1, 72(sp)                      # 8-byte Folded Spill
	lui	a1, 8
	add	a1, a6, a1
	bltz	a5, .LBB13_2
# %bb.1:
	lui	a2, %hi(QP_SCALE_CR)
	addi	a2, a2, %lo(QP_SCALE_CR)
	add	a2, a2, a5
	lbu	a5, 0(a2)
	li	a2, 171
	mul	a2, a5, a2
	srli	a2, a2, 10
	j	.LBB13_3
.LBB13_2:
	negw	a2, a5
	slli	a2, a2, 32
	lui	a3, 699051
	addi	a3, a3, -1365
	slli	a3, a3, 32
	mulhu	a2, a2, a3
	srli	a2, a2, 34
	neg	a2, a2
.LBB13_3:
	li	a7, 0
	ld	a1, -1192(a1)
	sd	a1, 32(sp)                      # 8-byte Folded Spill
	lw	a1, 12(a6)
	sd	a1, 24(sp)                      # 8-byte Folded Spill
	ld	a1, 0(a0)
	sd	a1, 64(sp)                      # 8-byte Folded Spill
	ld	a0, 8(a0)
	sd	a0, 56(sp)                      # 8-byte Folded Spill
	lui	a0, %hi(lrec_uv)
	ld	a0, %lo(lrec_uv)(a0)
	sd	a2, 288(sp)                     # 8-byte Folded Spill
	addi	a2, a2, 15
	li	a1, 1
	sd	a2, 272(sp)                     # 8-byte Folded Spill
	sllw	a1, a1, a2
	sd	a1, 16(sp)                      # 8-byte Folded Spill
	ld	a1, 88(sp)                      # 8-byte Folded Reload
	add	a0, a0, a1
	ld	t0, 0(a0)
	addi	t1, sp, 456
	addi	t2, t4, 526
	li	t3, 8
	sd	t4, 40(sp)                      # 8-byte Folded Spill
.LBB13_4:                               # =>This Inner Loop Header: Depth=1
	lw	a0, 164(a6)
	add	a0, a7, a0
	slli	a0, a0, 3
	add	a0, t0, a0
	lw	a1, 160(a6)
	ld	a0, 0(a0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	sw	a0, -28(t2)
	lw	a0, 164(a6)
	add	a0, a7, a0
	slli	a0, a0, 3
	add	a0, t0, a0
	lw	a1, 160(a6)
	ld	a0, 0(a0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 4(a0)
	sw	a0, -24(t2)
	lw	a0, 164(a6)
	add	a0, a7, a0
	slli	a0, a0, 3
	add	a0, t0, a0
	lw	a1, 160(a6)
	ld	a0, 0(a0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 8(a0)
	sw	a0, -20(t2)
	lw	a0, 164(a6)
	add	a0, a7, a0
	slli	a0, a0, 3
	add	a0, t0, a0
	lw	a1, 160(a6)
	ld	a0, 0(a0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 12(a0)
	sw	a0, -16(t2)
	lw	a0, 164(a6)
	add	a0, a7, a0
	slli	a0, a0, 3
	add	a0, t0, a0
	lw	a1, 160(a6)
	ld	a0, 0(a0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 16(a0)
	sw	a0, -12(t2)
	lw	a0, 164(a6)
	add	a0, a7, a0
	slli	a0, a0, 3
	add	a0, t0, a0
	lw	a1, 160(a6)
	ld	a0, 0(a0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 20(a0)
	sw	a0, -8(t2)
	lw	a0, 164(a6)
	lhu	a1, -14(t4)
	lhu	a2, -12(t4)
	add	a0, a7, a0
	slli	a0, a0, 3
	add	a0, t0, a0
	lw	a3, 160(a6)
	ld	a0, 0(a0)
	sw	a1, -128(t1)
	sw	a2, -96(t1)
	slli	a3, a3, 2
	add	a0, a0, a3
	lw	a0, 24(a0)
	lhu	a1, -10(t4)
	lhu	a2, -8(t4)
	lhu	a3, -6(t4)
	sw	a0, -4(t2)
	lw	a0, 164(a6)
	sw	a1, -64(t1)
	sw	a2, -32(t1)
	sw	a3, 0(t1)
	add	a0, a7, a0
	slli	a0, a0, 3
	add	a0, t0, a0
	lw	a1, 160(a6)
	ld	a0, 0(a0)
	lhu	a2, -4(t4)
	lhu	a3, -2(t4)
	slli	a1, a1, 2
	add	a0, a0, a1
	lhu	a1, 0(t4)
	lw	a0, 28(a0)
	sw	a2, 32(t1)
	sw	a3, 64(t1)
	sw	a1, 96(t1)
	sw	a0, 0(t2)
	addi	a7, a7, 1
	addi	t4, t4, 32
	addi	t1, t1, 4
	addi	t2, t2, 64
	bne	a7, t3, .LBB13_4
# %bb.5:
	li	a0, 0
	lui	a1, 174763
	addiw	a1, a1, -1365
	mul	a1, a5, a1
	srli	a2, a1, 63
	srli	a1, a1, 32
	add	a1, a1, a2
	li	a2, 6
	mul	a1, a1, a2
	subw	a5, a5, a1
	sd	a5, 8(sp)                       # 8-byte Folded Spill
	li	a2, 1
	addi	a5, sp, 328
.LBB13_6:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_7 Depth 2
	sd	a2, 80(sp)                      # 8-byte Folded Spill
	li	a1, 0
	addi	a2, a0, 2
	addi	a3, a0, 1
	addi	a4, a0, 3
	slli	a0, a0, 2
	sd	a0, 120(sp)                     # 8-byte Folded Spill
	slli	a3, a3, 2
	sd	a3, 112(sp)                     # 8-byte Folded Spill
	slli	a2, a2, 2
	sd	a2, 104(sp)                     # 8-byte Folded Spill
	slli	a4, a4, 2
	sd	a4, 96(sp)                      # 8-byte Folded Spill
	li	a2, 1
.LBB13_7:                               #   Parent Loop BB13_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sd	a2, 256(sp)                     # 8-byte Folded Spill
	slli	a1, a1, 5
	add	a4, a5, a1
	ld	s6, 120(sp)                     # 8-byte Folded Reload
	add	a0, a4, s6
	sd	a0, 208(sp)                     # 8-byte Folded Spill
	lw	a1, 0(a0)
	sd	a1, 192(sp)                     # 8-byte Folded Spill
	addi	s2, a4, 96
	add	a0, s2, s6
	sd	a0, 296(sp)                     # 8-byte Folded Spill
	lw	a2, 0(a0)
	sd	a2, 184(sp)                     # 8-byte Folded Spill
	addi	t3, a4, 32
	add	a0, t3, s6
	sd	a0, 240(sp)                     # 8-byte Folded Spill
	lw	a3, 0(a0)
	sd	a3, 176(sp)                     # 8-byte Folded Spill
	addi	s9, a4, 64
	add	s6, s9, s6
	sd	s6, 144(sp)                     # 8-byte Folded Spill
	lw	a5, 0(s6)
	sd	a5, 168(sp)                     # 8-byte Folded Spill
	add	a0, a2, a1
	sd	a0, 248(sp)                     # 8-byte Folded Spill
	add	a1, a5, a3
	sd	a1, 264(sp)                     # 8-byte Folded Spill
	add	t2, a1, a0
	ld	a0, 112(sp)                     # 8-byte Folded Reload
	add	a1, a4, a0
	sd	a1, 152(sp)                     # 8-byte Folded Spill
	lw	s6, 0(a1)
	add	a1, s2, a0
	sd	a1, 304(sp)                     # 8-byte Folded Spill
	lw	s11, 0(a1)
	add	a1, t3, a0
	sd	a1, 216(sp)                     # 8-byte Folded Spill
	lw	s8, 0(a1)
	add	a0, s9, a0
	sd	a0, 280(sp)                     # 8-byte Folded Spill
	lw	ra, 0(a0)
	ld	a1, 104(sp)                     # 8-byte Folded Reload
	add	s0, a4, a1
	add	a2, s2, a1
	sd	a2, 232(sp)                     # 8-byte Folded Spill
	add	a0, t3, a1
	sd	a0, 128(sp)                     # 8-byte Folded Spill
	add	a6, s9, a1
	sd	a6, 160(sp)                     # 8-byte Folded Spill
	ld	a1, 96(sp)                      # 8-byte Folded Reload
	add	a4, a4, a1
	add	s2, s2, a1
	sd	s2, 224(sp)                     # 8-byte Folded Spill
	add	t3, t3, a1
	sd	t3, 136(sp)                     # 8-byte Folded Spill
	add	s9, s9, a1
	sd	s9, 200(sp)                     # 8-byte Folded Spill
	lw	a7, 0(s0)
	lw	a3, 0(a2)
	add	s7, s11, s6
	add	s10, ra, s8
	add	s4, s10, s7
	add	s5, a3, a7
	lw	t4, 0(a0)
	lw	a5, 0(a6)
	lw	a2, 0(a4)
	lw	t0, 0(s2)
	lw	a1, 0(t3)
	lw	t1, 0(s9)
	add	s3, a5, t4
	add	s1, s3, s5
	add	s2, t0, a2
	add	t6, t1, a1
	add	t3, t6, s2
	mv	a0, t2
	add	t2, t3, t2
	add	t5, s1, s4
	add	a6, t5, t2
	ld	s9, 208(sp)                     # 8-byte Folded Reload
	sw	a6, 0(s9)
	subw	a6, t2, t5
	sw	a6, 0(s0)
	subw	a0, a0, t3
	subw	a6, s4, s1
	slli	t2, a0, 1
	add	t2, t2, a6
	ld	t3, 152(sp)                     # 8-byte Folded Reload
	sw	t2, 0(t3)
	slli	a6, a6, 1
	subw	a0, a0, a6
	sw	a0, 0(a4)
	ld	a0, 192(sp)                     # 8-byte Folded Reload
	ld	a4, 184(sp)                     # 8-byte Folded Reload
	subw	a0, a0, a4
	ld	a4, 176(sp)                     # 8-byte Folded Reload
	ld	a6, 168(sp)                     # 8-byte Folded Reload
	subw	a4, a4, a6
	subw	a6, s6, s11
	subw	t2, s8, ra
	subw	a3, a7, a3
	subw	t4, t4, a5
	subw	a2, a2, t0
	subw	a1, a1, t1
	slli	a5, a0, 1
	add	a5, a5, a4
	slli	a7, a6, 1
	add	a7, a7, t2
	slli	t0, a3, 1
	add	t0, t0, t4
	slli	t1, a2, 1
	add	t1, t1, a1
	add	t3, t1, a5
	add	t5, t0, a7
	add	s1, t5, t3
	ld	s4, 240(sp)                     # 8-byte Folded Reload
	sw	s1, 0(s4)
	subw	t3, t3, t5
	ld	t5, 128(sp)                     # 8-byte Folded Reload
	sw	t3, 0(t5)
	subw	a5, a5, t1
	subw	a7, a7, t0
	slli	t0, a5, 1
	add	t0, t0, a7
	ld	t1, 216(sp)                     # 8-byte Folded Reload
	sw	t0, 0(t1)
	ld	t0, 264(sp)                     # 8-byte Folded Reload
	ld	t1, 248(sp)                     # 8-byte Folded Reload
	subw	t0, t1, t0
	ld	t5, 144(sp)                     # 8-byte Folded Reload
	sw	t0, 0(t5)
	subw	t0, s7, s10
	subw	t1, s5, s3
	subw	s0, s2, t6
	lw	t3, 0(t5)
	mv	t6, t5
	slli	a7, a7, 1
	subw	a5, a5, a7
	ld	a7, 136(sp)                     # 8-byte Folded Reload
	sw	a5, 0(a7)
	add	a5, s0, t3
	add	a7, t1, t0
	add	t5, a7, a5
	sw	t5, 0(t6)
	subw	a5, a5, a7
	ld	a7, 160(sp)                     # 8-byte Folded Reload
	sw	a5, 0(a7)
	subw	t3, t3, s0
	subw	a5, t0, t1
	slli	a7, t3, 1
	add	a7, a7, a5
	ld	t0, 280(sp)                     # 8-byte Folded Reload
	sw	a7, 0(t0)
	slli	a4, a4, 1
	subw	a0, a0, a4
	ld	a4, 296(sp)                     # 8-byte Folded Reload
	sw	a0, 0(a4)
	slli	t2, t2, 1
	subw	a0, a6, t2
	slli	t4, t4, 1
	subw	a3, a3, t4
	slli	a1, a1, 1
	subw	a2, a2, a1
	lw	a1, 0(a4)
	mv	a7, a4
	slli	a5, a5, 1
	subw	t3, t3, a5
	ld	a4, 200(sp)                     # 8-byte Folded Reload
	sw	t3, 0(a4)
	add	a4, a2, a1
	add	a5, a3, a0
	add	a6, a5, a4
	sw	a6, 0(a7)
	subw	a4, a4, a5
	addi	a5, sp, 328
	ld	a6, 232(sp)                     # 8-byte Folded Reload
	sw	a4, 0(a6)
	subw	a1, a1, a2
	subw	a0, a0, a3
	slli	a2, a1, 1
	add	a2, a2, a0
	ld	a3, 304(sp)                     # 8-byte Folded Reload
	sw	a2, 0(a3)
	slli	a0, a0, 1
	subw	a1, a1, a0
	ld	a0, 224(sp)                     # 8-byte Folded Reload
	sw	a1, 0(a0)
	ld	a0, 256(sp)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	li	a1, 4
	li	a2, 0
	bnez	a0, .LBB13_7
# %bb.8:                                #   in Loop: Header=BB13_6 Depth=1
	ld	a1, 80(sp)                      # 8-byte Folded Reload
	andi	a1, a1, 1
	li	a0, 4
	li	a2, 0
	bnez	a1, .LBB13_6
# %bb.9:
	ld	a2, 40(sp)                      # 8-byte Folded Reload
	lw	a0, 498(a2)
	sw	a0, 584(sp)
	lw	a0, 754(a2)
	sw	a0, 588(sp)
	lw	a0, 514(a2)
	li	s0, 0
	ld	a6, 16(sp)                      # 8-byte Folded Reload
	srliw	a1, a6, 31
	sw	a0, 592(sp)
	lw	a0, 770(a2)
	lw	a2, 328(sp)
	lw	a3, 456(sp)
	lw	a4, 344(sp)
	lw	a5, 472(sp)
	add	a1, a6, a1
	sw	a0, 596(sp)
	add	a0, a3, a2
	add	a6, a5, a4
	add	a7, a6, a0
	sw	a7, 312(sp)
	add	a7, a2, a4
	add	t0, a3, a5
	subw	a7, a7, t0
	sraiw	t0, a1, 1
	sd	t0, 264(sp)                     # 8-byte Folded Spill
	sw	a7, 316(sp)
	subw	a0, a0, a6
	sw	a0, 320(sp)
	add	a3, a3, a4
	add	a2, a2, a5
	subw	a2, a2, a3
	sw	a2, 324(sp)
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	slli	a0, a0, 6
	lui	a2, %hi(quant_coef)
	addi	a2, a2, %lo(quant_coef)
	add	a2, a2, a0
	sd	a2, 256(sp)                     # 8-byte Folded Spill
	lw	s5, 0(a2)
	andi	s6, a1, -2
	ld	s9, 288(sp)                     # 8-byte Folded Reload
	addi	s9, s9, 16
	ld	a1, 48(sp)                      # 8-byte Folded Reload
	slli	a2, a1, 2
	lui	a1, 240
	sd	a2, 296(sp)                     # 8-byte Folded Spill
	sllw	a1, a1, a2
	sd	a1, 304(sp)                     # 8-byte Folded Spill
	li	a1, 528
	ld	a2, 24(sp)                      # 8-byte Folded Reload
	mul	a1, a2, a1
	ld	a2, 32(sp)                      # 8-byte Folded Reload
	add	a1, a2, a1
	sd	a1, 208(sp)                     # 8-byte Folded Spill
	lui	a1, %hi(dequant_coef)
	addi	a1, a1, %lo(dequant_coef)
	add	a0, a1, a0
	sd	a0, 280(sp)                     # 8-byte Folded Spill
	li	s8, -1
	addi	s11, sp, 584
	addi	s4, sp, 312
	addi	s7, sp, 600
	j	.LBB13_12
.LBB13_10:                              #   in Loop: Header=BB13_12 Depth=1
	sraiw	a0, s2, 31
	xor	a1, s2, a0
	subw	a0, a1, a0
	mv	a1, s2
	call	sign
	slli	a1, s0, 2
	ld	a2, 64(sp)                      # 8-byte Folded Reload
	add	a2, a2, a1
	sw	a0, 0(a2)
	ld	a0, 56(sp)                      # 8-byte Folded Reload
	add	a1, a0, a1
	sw	s8, 0(a1)
	addiw	s0, s0, 1
	li	s8, -1
.LBB13_11:                              #   in Loop: Header=BB13_12 Depth=1
	mv	a0, s3
	mv	a1, s1
	call	sign
	ld	a1, 280(sp)                     # 8-byte Folded Reload
	lw	a1, 0(a1)
	add	a0, a0, s2
	mul	a0, a0, a1
	ld	a1, 288(sp)                     # 8-byte Folded Reload
	sllw	a0, a0, a1
	sw	a0, 0(s11)
	addi	s11, s11, 4
	addi	s4, s4, 4
	beq	s11, s7, .LBB13_15
.LBB13_12:                              # =>This Inner Loop Header: Depth=1
	lw	s1, 0(s4)
	addi	s8, s8, 1
	sraiw	a0, s1, 31
	xor	a1, s1, a0
	subw	a1, a1, a0
	lw	s10, 0(s11)
	mul	a0, a1, s5
	add	a0, a0, s6
	sraw	s3, a0, s9
	mv	a0, s3
	mv	a1, s1
	call	sign
	subw	s2, s10, a0
	beq	s10, a0, .LBB13_11
# %bb.13:                               #   in Loop: Header=BB13_12 Depth=1
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	ld	a0, 368(a1)
	ld	a2, 304(sp)                     # 8-byte Folded Reload
	or	a0, a0, a2
	sd	a0, 368(a1)
	ld	a0, 72(sp)                      # 8-byte Folded Reload
	bgtz	a0, .LBB13_10
# %bb.14:                               #   in Loop: Header=BB13_12 Depth=1
	li	a0, 1
	sd	a0, 72(sp)                      # 8-byte Folded Spill
	j	.LBB13_10
.LBB13_15:
	slli	s0, s0, 2
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	add	s0, a0, s0
	sw	zero, 0(s0)
	lw	a0, 584(sp)
	lw	a2, 588(sp)
	lw	a3, 592(sp)
	lw	a4, 596(sp)
	li	t2, 0
	sd	zero, 200(sp)                   # 8-byte Folded Spill
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
	sd	t0, 248(sp)                     # 8-byte Folded Spill
	add	t0, a1, t0
	sw	a7, 0(t0)
	add	a7, a0, a3
	add	t1, a2, a4
	subw	a7, a7, t1
	srliw	t1, a7, 31
	add	a7, a7, t1
	sraiw	a7, a7, 1
	sw	a7, 256(t0)
	subw	a5, a5, a6
	srliw	a6, a5, 31
	add	a5, a5, a6
	sraiw	a5, a5, 1
	sw	a5, 16(t0)
	add	a2, a2, a3
	add	a0, a0, a4
	subw	a0, a0, a2
	srliw	a2, a0, 31
	add	a0, a0, a2
	sraiw	a0, a0, 1
	sw	a0, 272(t0)
	ld	a0, 296(sp)                     # 8-byte Folded Reload
	addi	a0, a0, 16
	sd	a0, 176(sp)                     # 8-byte Folded Spill
	lui	a0, 22
	addiw	a0, a0, -696
	sd	a0, 240(sp)                     # 8-byte Folded Spill
	li	a3, 1
	j	.LBB13_17
.LBB13_16:                              #   in Loop: Header=BB13_17 Depth=1
	ld	a2, 168(sp)                     # 8-byte Folded Reload
	andi	a2, a2, 1
	li	t2, 4
	li	a3, 0
	beqz	a2, .LBB13_27
.LBB13_17:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_19 Depth 2
                                        #       Child Loop BB13_21 Depth 3
	sd	a3, 168(sp)                     # 8-byte Folded Spill
	li	a6, 0
	srli	a0, t2, 1
	sd	a0, 184(sp)                     # 8-byte Folded Spill
	li	a3, 1
	j	.LBB13_19
.LBB13_18:                              #   in Loop: Header=BB13_19 Depth=2
	ld	a2, 304(sp)                     # 8-byte Folded Reload
	slli	a2, a2, 2
	ld	a3, 232(sp)                     # 8-byte Folded Reload
	add	a2, a3, a2
	sw	zero, 0(a2)
	ld	a2, 192(sp)                     # 8-byte Folded Reload
	andi	a2, a2, 1
	li	a6, 4
	li	a3, 0
	beqz	a2, .LBB13_16
.LBB13_19:                              #   Parent Loop BB13_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_21 Depth 3
	sd	a3, 192(sp)                     # 8-byte Folded Spill
	lui	a0, 3
	add	a0, a1, a0
	ld	a0, 1848(a0)
	ld	a2, 88(sp)                      # 8-byte Folded Reload
	add	a0, a0, a2
	ld	a0, 32(a0)
	srli	a2, a6, 2
	ld	a3, 184(sp)                     # 8-byte Folded Reload
	or	a2, a2, a3
	slli	a3, a2, 3
	add	a0, a0, a3
	ld	a0, 0(a0)
	sd	zero, 304(sp)                   # 8-byte Folded Spill
	ld	a3, 0(a0)
	sd	a3, 232(sp)                     # 8-byte Folded Spill
	ld	a0, 8(a0)
	sd	a0, 224(sp)                     # 8-byte Folded Spill
	ld	a0, 176(sp)                     # 8-byte Folded Reload
	or	a0, a0, a2
	li	a2, 1
	sllw	a0, a2, a0
	sd	a0, 216(sp)                     # 8-byte Folded Spill
	li	s0, -1
	li	s4, 2
	li	s11, 3
	sd	a6, 296(sp)                     # 8-byte Folded Spill
	j	.LBB13_21
.LBB13_20:                              #   in Loop: Header=BB13_21 Depth=3
	mv	a0, s3
	mv	a1, s1
	call	sign
	ld	a1, 280(sp)                     # 8-byte Folded Reload
	add	s5, a1, s5
	add	s5, s5, s8
	lw	a2, 0(s5)
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	add	a0, a0, s2
	mul	a0, a0, a2
	ld	a2, 288(sp)                     # 8-byte Folded Reload
	sllw	a2, a0, a2
	ld	a0, 248(sp)                     # 8-byte Folded Reload
	add	a0, a1, a0
	add	s9, a0, s9
	add	s6, s9, s6
	sw	a2, 0(s6)
	addi	s4, s4, 2
	addi	s11, s11, 2
	mv	t2, s7
	li	a2, 32
	ld	a6, 296(sp)                     # 8-byte Folded Reload
	beq	s4, a2, .LBB13_18
.LBB13_21:                              #   Parent Loop BB13_17 Depth=1
                                        #     Parent Loop BB13_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a0, 240(sp)                     # 8-byte Folded Reload
	add	a0, a1, a0
	lw	a3, 848(a0)
	lui	a2, %hi(FIELD_SCAN)
	addi	a2, a2, %lo(FIELD_SCAN)
	bnez	a3, .LBB13_25
# %bb.22:                               #   in Loop: Header=BB13_21 Depth=3
	lui	a2, %hi(mb_adaptive)
	lw	a2, %lo(mb_adaptive)(a2)
	beqz	a2, .LBB13_24
# %bb.23:                               #   in Loop: Header=BB13_21 Depth=3
	lw	a0, 0(a0)
	lui	a2, %hi(FIELD_SCAN)
	addi	a2, a2, %lo(FIELD_SCAN)
	bnez	a0, .LBB13_25
.LBB13_24:                              #   in Loop: Header=BB13_21 Depth=3
	lui	a2, %hi(SNGL_SCAN)
	addi	a2, a2, %lo(SNGL_SCAN)
.LBB13_25:                              #   in Loop: Header=BB13_21 Depth=3
	add	a0, a2, s4
	add	a2, a2, s11
	lbu	a0, 0(a0)
	lbu	a2, 0(a2)
	add	a3, a6, a0
	add	a4, t2, a2
	slli	a3, a3, 5
	addi	a5, sp, 328
	add	a3, a5, a3
	slli	a4, a4, 2
	add	a3, a3, a4
	lw	s1, 0(a3)
	sraiw	a3, s1, 31
	xor	a4, s1, a3
	subw	a4, a4, a3
	slli	s5, a2, 4
	ld	a3, 256(sp)                     # 8-byte Folded Reload
	add	a3, a3, s5
	slli	s8, a0, 2
	add	a3, a3, s8
	lw	a3, 0(a3)
	add	a2, a6, a2
	slli	s9, a2, 6
	add	a1, a1, s9
	mv	s7, t2
	add	a0, t2, a0
	slli	s6, a0, 2
	lui	a0, 3
	add	a0, s6, a0
	add	a0, a1, a0
	addi	s0, s0, 1
	lw	s10, 824(a0)
	mul	a0, a4, a3
	ld	a1, 264(sp)                     # 8-byte Folded Reload
	add	a0, a0, a1
	ld	a1, 272(sp)                     # 8-byte Folded Reload
	sraw	s3, a0, a1
	mv	a0, s3
	mv	a1, s1
	call	sign
	subw	s2, s10, a0
	beq	s10, a0, .LBB13_20
# %bb.26:                               #   in Loop: Header=BB13_21 Depth=3
	ld	a3, 208(sp)                     # 8-byte Folded Reload
	ld	a1, 368(a3)
	sraiw	a0, s2, 31
	xor	a2, s2, a0
	subw	a0, a2, a0
	ld	a2, 216(sp)                     # 8-byte Folded Reload
	or	a1, a1, a2
	sd	a1, 368(a3)
	mv	a1, s2
	call	sign
	ld	a3, 304(sp)                     # 8-byte Folded Reload
	slli	a1, a3, 2
	ld	a2, 232(sp)                     # 8-byte Folded Reload
	add	a2, a2, a1
	sw	a0, 0(a2)
	ld	a0, 224(sp)                     # 8-byte Folded Reload
	add	a1, a0, a1
	sw	s0, 0(a1)
	addiw	a3, a3, 1
	sd	a3, 304(sp)                     # 8-byte Folded Spill
	li	s0, -1
	li	a0, 2
	sd	a0, 200(sp)                     # 8-byte Folded Spill
	j	.LBB13_20
.LBB13_27:                              # %.preheader
	li	a5, 0
	lui	a3, 3
	addiw	a2, a3, 832
	add	a2, a1, a2
	addiw	a3, a3, 1088
	add	a3, a1, a3
	li	a4, 1
	j	.LBB13_29
.LBB13_28:                              #   in Loop: Header=BB13_29 Depth=1
	andi	a6, a4, 1
	li	a5, 4
	li	a4, 0
	beqz	a6, .LBB13_41
.LBB13_29:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_31 Depth 2
                                        #       Child Loop BB13_33 Depth 3
	li	t4, 0
	addi	t0, a5, 1
	addi	t1, a5, 2
	addi	t2, a5, 3
	slli	a5, a5, 2
	add	a6, a2, a5
	add	a7, a3, a5
	slli	t0, t0, 2
	slli	t1, t1, 2
	slli	t2, t2, 2
	li	t3, 1
	j	.LBB13_31
.LBB13_30:                              #   in Loop: Header=BB13_31 Depth=2
	andi	t5, t3, 1
	li	t4, 4
	li	t3, 0
	beqz	t5, .LBB13_28
.LBB13_31:                              #   Parent Loop BB13_29 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_33 Depth 3
	slli	t4, t4, 6
	add	t5, a0, t4
	add	s2, t5, a5
	lw	s3, 0(s2)
	addi	t6, t5, 64
	add	s4, t6, a5
	lw	s5, 0(s4)
	addi	s0, t5, 128
	add	s6, s0, a5
	lw	s7, 0(s6)
	addi	s1, t5, 192
	add	s8, s1, a5
	lw	s9, 0(s8)
	add	s10, s7, s3
	subw	s3, s3, s7
	srli	s7, s5, 1
	subw	s7, s7, s9
	srli	s9, s9, 1
	add	s5, s9, s5
	add	s9, s5, s10
	sw	s9, 0(s2)
	subw	s2, s10, s5
	sw	s2, 0(s8)
	add	s2, s7, s3
	sw	s2, 0(s4)
	subw	s2, s3, s7
	sw	s2, 0(s6)
	add	s2, t5, t0
	lw	s3, 0(s2)
	add	s4, t6, t0
	add	s5, s0, t0
	lw	s6, 0(s5)
	lw	s7, 0(s4)
	add	s8, s1, t0
	lw	s9, 0(s8)
	add	s10, s6, s3
	subw	s3, s3, s6
	srli	s6, s7, 1
	subw	s6, s6, s9
	srli	s9, s9, 1
	add	s7, s9, s7
	add	s9, s7, s10
	sw	s9, 0(s2)
	subw	s2, s10, s7
	sw	s2, 0(s8)
	add	s2, s6, s3
	sw	s2, 0(s4)
	subw	s2, s3, s6
	sw	s2, 0(s5)
	add	s2, t5, t1
	lw	s3, 0(s2)
	add	s4, t6, t1
	add	s5, s0, t1
	lw	s6, 0(s5)
	lw	s7, 0(s4)
	add	s8, s1, t1
	lw	s9, 0(s8)
	add	s10, s6, s3
	subw	s3, s3, s6
	srli	s6, s7, 1
	subw	s6, s6, s9
	srli	s9, s9, 1
	add	s7, s9, s7
	add	s9, s7, s10
	sw	s9, 0(s2)
	subw	s2, s10, s7
	sw	s2, 0(s8)
	add	s2, s6, s3
	sw	s2, 0(s4)
	subw	s2, s3, s6
	sw	s2, 0(s5)
	add	t5, t5, t2
	lw	s2, 0(t5)
	add	t6, t6, t2
	add	s0, s0, t2
	lw	s3, 0(s0)
	lw	s4, 0(t6)
	add	s1, s1, t2
	lw	s5, 0(s1)
	add	s6, s3, s2
	subw	s2, s2, s3
	srli	s3, s4, 1
	subw	s3, s3, s5
	srli	s5, s5, 1
	add	s4, s5, s4
	add	s5, s4, s6
	sw	s5, 0(t5)
	subw	t5, s6, s4
	sw	t5, 0(s1)
	add	t5, s3, s2
	sw	t5, 0(t6)
	subw	t5, s2, s3
	sw	t5, 0(s0)
	add	t5, a6, t4
	add	t4, a7, t4
	j	.LBB13_33
.LBB13_32:                              #   in Loop: Header=BB13_33 Depth=3
	sw	s0, 0(t5)
	addi	t5, t5, 64
	beq	t5, t4, .LBB13_30
.LBB13_33:                              #   Parent Loop BB13_29 Depth=1
                                        #     Parent Loop BB13_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	s0, -8(t5)
	lw	s2, 0(t5)
	lw	s1, 4(t5)
	lw	s3, -4(t5)
	add	t6, s2, s0
	srli	s4, s1, 1
	add	s4, s4, s3
	addi	s5, t6, 32
	add	t6, s5, s4
	sraiw	t6, t6, 6
	sgtz	s6, t6
	neg	s6, s6
	and	s6, s6, t6
	li	t6, 255
	blt	s6, t6, .LBB13_35
# %bb.34:                               #   in Loop: Header=BB13_33 Depth=3
	li	s6, 255
.LBB13_35:                              #   in Loop: Header=BB13_33 Depth=3
	subw	s4, s5, s4
	sraiw	s4, s4, 6
	sgtz	s5, s4
	neg	s5, s5
	and	s4, s5, s4
	sw	s6, -8(t5)
	blt	s4, t6, .LBB13_37
# %bb.36:                               #   in Loop: Header=BB13_33 Depth=3
	li	s4, 255
.LBB13_37:                              #   in Loop: Header=BB13_33 Depth=3
	subw	s2, s0, s2
	srli	s0, s3, 1
	subw	s0, s0, s1
	addi	s1, s2, 32
	add	s2, s1, s0
	sraiw	s2, s2, 6
	sgtz	s3, s2
	neg	s3, s3
	and	s2, s3, s2
	sw	s4, 4(t5)
	blt	s2, t6, .LBB13_39
# %bb.38:                               #   in Loop: Header=BB13_33 Depth=3
	li	s2, 255
.LBB13_39:                              #   in Loop: Header=BB13_33 Depth=3
	subw	s1, s1, s0
	sraiw	s0, s1, 6
	sgtz	s1, s0
	neg	s1, s1
	and	s0, s1, s0
	sw	s2, -4(t5)
	blt	s0, t6, .LBB13_32
# %bb.40:                               #   in Loop: Header=BB13_33 Depth=3
	li	s0, 255
	j	.LBB13_32
.LBB13_41:
	lui	a2, %hi(enc_picture)
	ld	a2, %lo(enc_picture)(a2)
	lui	a3, 2
	add	a2, a2, a3
	ld	a2, -1728(a2)
	ld	a3, 88(sp)                      # 8-byte Folded Reload
	add	a2, a2, a3
	lw	a3, 164(a1)
	ld	a2, 0(a2)
	lw	a1, 160(a1)
	slli	a3, a3, 3
	add	a2, a2, a3
	ld	a3, 0(a2)
	lh	a5, 0(a0)
	slli	a1, a1, 1
	lh	a6, 256(a0)
	add	a7, a3, a1
	ld	a4, 32(a2)
	sh	a5, 0(a7)
	sh	a6, 8(a7)
	lh	a6, 16(a0)
	add	a7, a4, a1
	lh	t0, 272(a0)
	ld	a5, 8(a2)
	sh	a6, 0(a7)
	lh	a6, 64(a0)
	sh	t0, 8(a7)
	add	a7, a5, a1
	lh	t0, 320(a0)
	sh	a6, 0(a7)
	ld	a6, 40(a2)
	lh	t1, 80(a0)
	sh	t0, 8(a7)
	lh	t0, 336(a0)
	add	t2, a6, a1
	sh	t1, 0(t2)
	ld	a7, 16(a2)
	sh	t0, 8(t2)
	lh	t1, 128(a0)
	lh	t2, 384(a0)
	add	t3, a7, a1
	ld	t0, 48(a2)
	sh	t1, 0(t3)
	sh	t2, 8(t3)
	lh	t1, 144(a0)
	add	t3, t0, a1
	lh	t4, 400(a0)
	ld	t2, 24(a2)
	lh	t5, 192(a0)
	sh	t1, 0(t3)
	sh	t4, 8(t3)
	add	t3, t2, a1
	sh	t5, 0(t3)
	lh	t4, 448(a0)
	ld	t1, 56(a2)
	lh	t5, 208(a0)
	lh	t6, 464(a0)
	sh	t4, 8(t3)
	add	t3, t1, a1
	sh	t5, 0(t3)
	sh	t6, 8(t3)
	lh	t4, 4(a0)
	addi	t3, a1, 2
	lh	t5, 260(a0)
	add	a3, a3, t3
	sh	t4, 0(a3)
	lh	t4, 20(a0)
	sh	t5, 8(a3)
	lh	a3, 276(a0)
	add	a4, a4, t3
	sh	t4, 0(a4)
	lh	t4, 68(a0)
	sh	a3, 8(a4)
	lh	a3, 324(a0)
	add	a5, a5, t3
	sh	t4, 0(a5)
	lh	a4, 84(a0)
	sh	a3, 8(a5)
	lh	a3, 340(a0)
	add	a6, a6, t3
	sh	a4, 0(a6)
	lh	a4, 132(a0)
	sh	a3, 8(a6)
	lh	a3, 388(a0)
	add	a7, a7, t3
	sh	a4, 0(a7)
	lh	a4, 148(a0)
	sh	a3, 8(a7)
	lh	a3, 404(a0)
	add	t0, t0, t3
	sh	a4, 0(t0)
	lh	a4, 196(a0)
	sh	a3, 8(t0)
	add	t2, t2, t3
	lh	a3, 452(a0)
	sh	a4, 0(t2)
	lh	a4, 212(a0)
	lh	a5, 468(a0)
	sh	a3, 8(t2)
	add	t1, t1, t3
	sh	a4, 0(t1)
	sh	a5, 8(t1)
	ld	a3, 0(a2)
	lh	a5, 8(a0)
	addi	t2, a1, 4
	lh	a6, 264(a0)
	add	a7, a3, t2
	ld	a4, 32(a2)
	sh	a5, 0(a7)
	sh	a6, 8(a7)
	lh	a6, 24(a0)
	add	a7, a4, t2
	lh	t0, 280(a0)
	ld	a5, 8(a2)
	sh	a6, 0(a7)
	lh	a6, 72(a0)
	sh	t0, 8(a7)
	add	a7, a5, t2
	lh	t0, 328(a0)
	sh	a6, 0(a7)
	ld	a6, 40(a2)
	lh	t1, 88(a0)
	sh	t0, 8(a7)
	lh	t0, 344(a0)
	add	t3, a6, t2
	sh	t1, 0(t3)
	ld	a7, 16(a2)
	sh	t0, 8(t3)
	lh	t1, 136(a0)
	lh	t3, 392(a0)
	add	t4, a7, t2
	ld	t0, 48(a2)
	sh	t1, 0(t4)
	sh	t3, 8(t4)
	lh	t3, 152(a0)
	add	t4, t0, t2
	lh	t5, 408(a0)
	ld	t1, 24(a2)
	lh	t6, 200(a0)
	sh	t3, 0(t4)
	sh	t5, 8(t4)
	add	t3, t1, t2
	sh	t6, 0(t3)
	lh	t4, 456(a0)
	ld	a2, 56(a2)
	lh	t5, 216(a0)
	lh	t6, 472(a0)
	sh	t4, 8(t3)
	add	t2, a2, t2
	sh	t5, 0(t2)
	sh	t6, 8(t2)
	lh	t2, 12(a0)
	addi	a1, a1, 6
	lh	t3, 268(a0)
	add	a3, a3, a1
	sh	t2, 0(a3)
	lh	t2, 28(a0)
	sh	t3, 8(a3)
	lh	a3, 284(a0)
	add	a4, a4, a1
	sh	t2, 0(a4)
	lh	t2, 76(a0)
	sh	a3, 8(a4)
	lh	a3, 332(a0)
	add	a5, a5, a1
	sh	t2, 0(a5)
	lh	a4, 92(a0)
	sh	a3, 8(a5)
	lh	a3, 348(a0)
	add	a6, a6, a1
	sh	a4, 0(a6)
	lh	a4, 140(a0)
	sh	a3, 8(a6)
	lh	a3, 396(a0)
	add	a7, a7, a1
	sh	a4, 0(a7)
	lh	a4, 156(a0)
	sh	a3, 8(a7)
	lh	a3, 412(a0)
	add	t0, t0, a1
	sh	a4, 0(t0)
	lh	a4, 204(a0)
	sh	a3, 8(t0)
	lh	a3, 460(a0)
	add	t1, t1, a1
	sh	a4, 0(t1)
	lh	a4, 220(a0)
	sh	a3, 8(t1)
	lh	a0, 476(a0)
	add	a1, a2, a1
	sh	a4, 0(a1)
	li	a2, 2
	sh	a0, 8(a1)
	ld	a0, 200(sp)                     # 8-byte Folded Reload
	bne	a0, a2, .LBB13_43
# %bb.42:
	li	a0, 2
	sd	a0, 72(sp)                      # 8-byte Folded Spill
.LBB13_43:
	ld	a0, 72(sp)                      # 8-byte Folded Reload
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
	addi	sp, sp, 704
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
