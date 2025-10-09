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
	and	n2, a0, a1
	snez	a0, t2
	and	a4, n2, a0
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
	mv	n1, a0
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
	lhu	n1, 4(a6)
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
	lw	n3, 140(sp)
	add	a6, a6, a7
	slli	t1, t1, 1
	add	t0, t0, t1
	slli	n3, n3, 3
	add	n3, s9, n3
	lw	a7, 136(sp)
	ld	n3, 0(n3)
	lw	n4, 164(sp)
	lhu	t1, 0(a6)
	slli	a7, a7, 1
	add	n3, n3, a7
	slli	n4, n4, 3
	add	n4, s9, n4
	lw	n5, 160(sp)
	ld	n4, 0(n4)
	lhu	a7, 0(t0)
	lhu	a6, 0(n3)
	slli	n5, n5, 1
	add	n4, n4, n5
	lhu	t0, 0(n4)
	beqz	t2, .LBB0_29
.LBB0_27:
	lw	t2, 20(sp)
	slli	t2, t2, 3
	add	t2, s9, t2
	lw	n3, 16(sp)
	ld	t2, 0(t2)
	slli	n3, n3, 1
	add	t2, t2, n3
	lhu	t2, 0(t2)
	lui	n3, %hi(img)
	ld	n3, %lo(img)(n3)
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
	ld	n3, %lo(img)(t2)
	lui	t2, 22
	add	t2, n3, t2
	lw	t2, 416(t2)
.LBB0_30:
	lui	n4, 1
	add	n4, n3, n4
	addi	n5, n3, 2047
	li	n6, -1
	sh	n6, 1720(n3)
	sh	n6, 185(n5)
	sh	n6, 697(n5)
	sh	n6, 1209(n5)
	sh	n6, 1721(n5)
	sh	n6, 184(n4)
	beqz	n2, .LBB0_32
# %bb.31:
	add	n2, a3, a2
	add	n4, a1, a0
	add	n2, n2, n4
	add	n4, t1, a7
	add	n4, n4, a6
	add	n2, n2, n4
	add	n2, n2, t0
	addi	n2, n2, 4
	sraiw	n2, n2, 3
	j	.LBB0_40
.LBB0_32:
	bnez	t3, .LBB0_35
# %bb.33:
	beqz	a5, .LBB0_35
# %bb.34:
	add	n2, t1, a7
	add	n4, a6, t0
	j	.LBB0_38
.LBB0_35:
	beqz	t3, .LBB0_39
# %bb.36:
	bnez	a5, .LBB0_39
# %bb.37:
	add	n2, a3, a2
	add	n4, a1, a0
.LBB0_38:
	add	n2, n2, n4
	addi	n2, n2, 2
	sraiw	n2, n2, 2
	j	.LBB0_40
.LBB0_39:
	lui	n2, 22
	addiw	n2, n2, 416
	add	n2, n3, n2
	lw	n2, 0(n2)
.LBB0_40:
	sh	n2, 1208(n3)
	sh	n2, 1210(n3)
	sh	n2, 1212(n3)
	sh	n2, 1214(n3)
	sh	n2, 1240(n3)
	sh	n2, 1242(n3)
	sh	n2, 1244(n3)
	sh	n2, 1246(n3)
	sh	n2, 1272(n3)
	sh	n2, 1274(n3)
	sh	n2, 1276(n3)
	sh	n2, 1278(n3)
	sh	n2, 1304(n3)
	sh	n2, 1306(n3)
	sh	n2, 1308(n3)
	sh	n2, 1310(n3)
	sh	a3, 280(n3)
	sh	a3, 248(n3)
	sh	a3, 216(n3)
	sh	a3, 184(n3)
	sh	t1, 702(n3)
	sh	t1, 700(n3)
	sh	t1, 698(n3)
	sh	t1, 696(n3)
	sh	a2, 282(n3)
	sh	a2, 250(n3)
	sh	a2, 218(n3)
	sh	a2, 186(n3)
	sh	a7, 734(n3)
	sh	a7, 732(n3)
	sh	a7, 730(n3)
	sh	a7, 728(n3)
	sh	a1, 284(n3)
	sh	a1, 252(n3)
	sh	a1, 220(n3)
	sh	a1, 188(n3)
	sh	a6, 766(n3)
	sh	a6, 764(n3)
	sh	a6, 762(n3)
	sh	a6, 760(n3)
	sh	a0, 286(n3)
	sh	a0, 254(n3)
	sh	a0, 222(n3)
	sh	a0, 190(n3)
	sh	t0, 798(n3)
	sh	t0, 796(n3)
	sh	t0, 794(n3)
	sh	t0, 792(n3)
	beqz	t3, .LBB0_49
# %bb.41:
	beqz	a5, .LBB0_50
.LBB0_42:
	slli	n3, a2, 1
	slli	n2, a1, 1
	beqz	t3, .LBB0_44
.LBB0_43:
	addi	t3, a1, 2
	lui	n4, %hi(img)
	ld	n4, %lo(img)(n4)
	add	n5, t3, a3
	add	n5, n5, n3
	srliw	n5, n5, 2
	addi	n6, n4, 2047
	sh	n5, 1720(n4)
	addi	n7, a0, 2
	add	n8, n7, a2
	add	n8, n8, n2
	srliw	n8, n8, 2
	sh	n8, 1752(n4)
	sh	n8, 1722(n4)
	slli	n8, a0, 1
	add	t3, t3, n8
	add	t3, t3, t5
	srliw	t3, t3, 2
	sh	t3, 1784(n4)
	sh	t3, 1754(n4)
	sh	t3, 1724(n4)
	slli	n8, t5, 1
	add	n8, n7, n8
	add	n8, n8, t4
	srliw	n8, n8, 2
	sh	n8, 1816(n4)
	sh	n8, 1786(n4)
	sh	n8, 1756(n4)
	sh	n8, 1726(n4)
	slli	n9, t4, 1
	add	n10, t5, n1
	add	n9, n10, n9
	addi	n9, n9, 2
	srliw	n9, n9, 2
	sh	n9, 1818(n4)
	sh	n9, 1788(n4)
	sh	n9, 1758(n4)
	slli	n10, n1, 1
	add	n11, t4, t6
	add	n10, n11, n10
	addi	n10, n10, 2
	srliw	n10, n10, 2
	sh	n10, 1820(n4)
	sh	n10, 1790(n4)
	slli	n10, t6, 1
	add	t6, n1, t6
	add	t6, t6, n10
	addi	t6, t6, 2
	srli	t6, t6, 2
	sh	t6, 1822(n4)
	add	t6, a2, a3
	addi	t6, t6, 1
	srli	t6, t6, 1
	sh	t6, 1721(n6)
	addi	t6, a1, 1
	add	n1, t6, a2
	srliw	n1, n1, 1
	sh	n1, 1785(n6)
	sh	n1, 1723(n6)
	add	t6, t6, a0
	srliw	t6, t6, 1
	sh	t6, 1787(n6)
	sh	t6, 1725(n6)
	add	t6, a0, t5
	addi	t6, t6, 1
	srliw	t6, t6, 1
	sh	t6, 1789(n6)
	sh	t6, 1727(n6)
	add	t4, t5, t4
	addi	t4, t4, 1
	srli	t4, t4, 1
	sh	t4, 1791(n6)
	sh	n5, 1753(n6)
	add	n7, n7, n2
	add	n7, n7, a2
	srliw	t4, n7, 2
	sh	t4, 1817(n6)
	sh	t4, 1755(n6)
	sh	t3, 1819(n6)
	sh	t3, 1757(n6)
	sh	n8, 1821(n6)
	sh	n8, 1759(n6)
	sh	n9, 1823(n6)
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
	lui	n1, 1
	addiw	n1, n1, 184
	add	t6, t6, n1
	sh	t5, 0(t6)
	addi	t5, a6, 2
	add	n1, t5, t1
	add	n1, n1, t3
	srli	n1, n1, 2
	sh	n1, 2(t6)
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
	addi	n1, t2, 2
	add	n4, n1, a7
	add	n4, n4, t6
	srliw	n4, n4, 2
	sh	n4, 285(a5)
	sh	n4, 251(a5)
	sh	n4, 217(a5)
	slli	n5, t2, 1
	add	t5, t5, n5
	add	t5, t5, a3
	srliw	t5, t5, 2
	sh	t5, 287(a5)
	sh	t5, 253(a5)
	sh	t5, 219(a5)
	sh	t5, 185(a5)
	slli	n5, a3, 1
	add	n1, n1, n5
	add	n1, n1, a2
	srliw	n1, n1, 2
	sh	n1, 255(a5)
	sh	n1, 221(a5)
	sh	n1, 187(a5)
	add	n3, a3, n3
	add	n3, n3, a1
	addi	n3, n3, 2
	srliw	n3, n3, 2
	sh	n3, 223(a5)
	sh	n3, 189(a5)
	add	n2, a2, n2
	add	n2, n2, a0
	addi	n2, n2, 2
	srliw	n2, n2, 2
	sh	n2, 191(a5)
	addi	n5, t2, 1
	add	n6, n5, a3
	srliw	n6, n6, 1
	sh	n6, 763(a5)
	sh	n6, 697(a5)
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
	sh	n1, 797(a5)
	sh	n1, 731(a5)
	sh	n3, 799(a5)
	sh	n3, 733(a5)
	sh	n2, 735(a5)
	sh	n4, 761(a5)
	sh	t3, 793(a5)
	add	n5, n5, t1
	srliw	a0, n5, 1
	sh	a0, 1245(a5)
	sh	a0, 1209(a5)
	sh	t5, 1247(a5)
	sh	t5, 1211(a5)
	sh	n1, 1213(a5)
	sh	n3, 1215(a5)
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
	lui	n2, %hi(img)
	ld	n2, %lo(img)(n2)
	li	n3, -1
	sh	n3, 184(n2)
	bnez	a5, .LBB0_42
.LBB0_50:
	lui	n2, %hi(img)
	ld	n2, %lo(img)(n2)
	li	n3, -1
	sh	n3, 696(n2)
	slli	n3, a2, 1
	slli	n2, a1, 1
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
	add	n3, a1, a2
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
	ld	a6, 972(n3)
	lw	a4, 272(a3)
	lw	a5, 12(a2)
	ld	a6, 0(a6)
	negw	a2, a4
	li	n14, 0
	bne	a5, a2, .LBB2_7
# %bb.6:
	lw	a2, 332(a3)
	addi	a2, a2, -1
	seqz	n14, a2
.LBB2_7:
	li	a2, 0
	ld	s2, 0(a6)
	ld	a6, 8(a6)
	sd	a6, 144(sp)                     # 8-byte Folded Spill
	lui	a6, 262144
	addiw	n15, a6, -1
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
	add	n1, a7, t1
	add	n1, n1, t2
	sw	t4, 0(n1)
	subw	t5, t5, t6
	sw	t5, -28(a6)
	lhu	t4, 4(t3)
	lhu	t6, -26(a5)
	sw	t5, 4(n1)
	lhu	t5, 6(t3)
	lhu	n2, -24(a5)
	subw	t4, t4, t6
	sw	t4, -24(a6)
	sw	t4, 8(n1)
	subw	t4, t5, n2
	sw	t4, -20(a6)
	lhu	t5, 8(t3)
	lhu	t6, -22(a5)
	sw	t4, 12(n1)
	lhu	t4, 10(t3)
	lhu	n2, -20(a5)
	subw	t5, t5, t6
	sw	t5, -16(a6)
	sw	t5, 64(n1)
	subw	t4, t4, n2
	sw	t4, -12(a6)
	lhu	t5, 12(t3)
	lhu	t6, -18(a5)
	sw	t4, 68(n1)
	lhu	t4, 14(t3)
	lhu	n2, -16(a5)
	subw	t5, t5, t6
	sw	t5, -8(a6)
	sw	t5, 72(n1)
	subw	t4, t4, n2
	sw	t4, -4(a6)
	lhu	t5, 16(t3)
	lhu	t6, -14(a5)
	sw	t4, 76(n1)
	lhu	t4, 18(t3)
	lhu	n2, -12(a5)
	subw	t5, t5, t6
	sw	t5, 0(a6)
	sw	t5, 128(n1)
	subw	t4, t4, n2
	sw	t4, 4(a6)
	lhu	t5, 20(t3)
	lhu	t6, -10(a5)
	sw	t4, 132(n1)
	lhu	t4, 22(t3)
	lhu	n2, -8(a5)
	subw	t5, t5, t6
	sw	t5, 8(a6)
	sw	t5, 136(n1)
	subw	t4, t4, n2
	sw	t4, 12(a6)
	lhu	t5, 24(t3)
	lhu	t6, -6(a5)
	sw	t4, 140(n1)
	lhu	t4, 26(t3)
	lhu	n2, -4(a5)
	subw	t5, t5, t6
	sw	t5, 16(a6)
	sw	t5, 192(n1)
	subw	t4, t4, n2
	sw	t4, 20(a6)
	lhu	t5, 28(t3)
	lhu	t6, -2(a5)
	sw	t4, 196(n1)
	lhu	t3, 30(t3)
	lhu	t4, 0(a5)
	subw	t5, t5, t6
	sw	t5, 24(a6)
	sw	t5, 200(n1)
	sub	t3, t3, t4
.LBB2_9:                                #   in Loop: Header=BB2_10 Depth=1
	sw	t3, 28(a6)
	add	t1, a7, t1
	add	t1, t1, t2
	sw	t3, 204(t1)
	addi	a2, a2, 1
	addi	n3, n3, 64
	addi	a4, a4, 8
	addi	a5, a5, 32
	addi	a6, a6, 64
	beq	a2, t0, .LBB2_12
.LBB2_10:                               # =>This Inner Loop Header: Depth=1
	srli	t1, a2, 2
	andi	t2, a2, 3
	and	t1, t1, n15
	slli	t1, t1, 8
	slli	t2, t2, 4
	beqz	a3, .LBB2_8
# %bb.11:                               #   in Loop: Header=BB2_10 Depth=1
	lw	t3, -60(n3)
	sw	t3, -32(a6)
	add	t4, a7, t1
	add	t4, t4, t2
	sw	t3, 0(t4)
	lw	t3, -56(n3)
	sw	t3, -28(a6)
	sw	t3, 4(t4)
	lw	t3, -52(n3)
	sw	t3, -24(a6)
	sw	t3, 8(t4)
	lw	t3, -48(n3)
	sw	t3, -20(a6)
	sw	t3, 12(t4)
	lw	t3, -44(n3)
	sw	t3, -16(a6)
	sw	t3, 64(t4)
	lw	t3, -40(n3)
	sw	t3, -12(a6)
	sw	t3, 68(t4)
	lw	t3, -36(n3)
	sw	t3, -8(a6)
	sw	t3, 72(t4)
	lw	t3, -32(n3)
	sw	t3, -4(a6)
	sw	t3, 76(t4)
	lw	t3, -28(n3)
	sw	t3, 0(a6)
	sw	t3, 128(t4)
	lw	t3, -24(n3)
	sw	t3, 4(a6)
	sw	t3, 132(t4)
	lw	t3, -20(n3)
	sw	t3, 8(a6)
	sw	t3, 136(t4)
	lw	t3, -16(n3)
	sw	t3, 12(a6)
	sw	t3, 140(t4)
	lw	t3, -12(n3)
	sw	t3, 16(a6)
	sw	t3, 192(t4)
	lw	t3, -8(n3)
	sw	t3, 20(a6)
	sw	t3, 196(t4)
	lw	t3, -4(n3)
	sw	t3, 24(a6)
	sw	t3, 200(t4)
	lw	t3, 0(n3)
	j	.LBB2_9
.LBB2_12:
	bnez	n14, .LBB2_18
# %bb.13:
	li	a4, 0
	addi	n13, sp, 216
	addi	a1, sp, 184
	li	a2, 2
.LBB2_14:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_15 Depth 2
	mv	a3, a4
	slli	a4, a4, 8
	add	a4, a4, a1
	addi	a4, a4, 288
	mv	a5, n13
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
	add	n1, t6, t5
	subw	t5, t5, t6
	subw	t6, t2, t3
	add	t2, n1, t4
	subw	t3, t4, n1
	slli	t4, t6, 1
	add	t4, t5, t4
	lw	n1, 0(a5)
	lw	n2, 12(a5)
	lw	n3, 4(a5)
	lw	n4, 8(a5)
	slli	t5, t5, 1
	subw	t5, t6, t5
	add	n5, n2, n1
	add	n6, n4, n3
	subw	n3, n3, n4
	subw	n4, n1, n2
	add	t6, n6, n5
	subw	n1, n5, n6
	slli	n2, n4, 1
	add	n2, n3, n2
	lw	n5, 16(a5)
	lw	n6, 28(a5)
	lw	n7, 20(a5)
	lw	n8, 24(a5)
	slli	n3, n3, 1
	subw	n3, n4, n3
	add	n9, n6, n5
	add	n10, n8, n7
	subw	n7, n7, n8
	subw	n8, n5, n6
	add	n4, n10, n9
	subw	n5, n9, n10
	slli	n6, n8, 1
	add	n6, n7, n6
	slli	n7, n7, 1
	subw	n7, n8, n7
	add	n8, n4, a6
	add	n9, t6, t2
	subw	n10, t2, t6
	subw	n11, a6, n4
	add	n12, n9, n8
	sw	n12, -32(a5)
	subw	n8, n8, n9
	sw	n8, 0(a5)
	slli	n8, n11, 1
	add	n8, n10, n8
	sw	n8, -16(a5)
	slli	n10, n10, 1
	subw	n8, n11, n10
	sw	n8, 16(a5)
	add	n8, n6, t0
	add	n9, n2, t4
	subw	n10, t4, n2
	subw	n11, t0, n6
	add	n12, n9, n8
	sw	n12, -28(a5)
	subw	n8, n8, n9
	sw	n8, 4(a5)
	slli	n8, n11, 1
	add	n8, n10, n8
	sw	n8, -12(a5)
	slli	n10, n10, 1
	subw	n8, n11, n10
	sw	n8, 20(a5)
	add	n8, n5, a7
	add	n9, n1, t3
	subw	n10, t3, n1
	subw	n11, a7, n5
	add	n12, n9, n8
	sw	n12, -24(a5)
	subw	n8, n8, n9
	sw	n8, 8(a5)
	slli	n8, n11, 1
	add	n8, n10, n8
	sw	n8, -8(a5)
	slli	n10, n10, 1
	subw	n8, n11, n10
	sw	n8, 24(a5)
	add	n8, n7, t1
	add	n9, n3, t5
	subw	n10, t5, n3
	subw	n11, t1, n7
	add	n12, n9, n8
	sw	n12, -20(a5)
	subw	n8, n8, n9
	sw	n8, 12(a5)
	slli	n8, n11, 1
	add	n8, n10, n8
	sw	n8, -4(a5)
	slli	n10, n10, 1
	subw	n8, n11, n10
	sw	n8, 28(a5)
	addi	a5, a5, 64
	bne	a5, a4, .LBB2_15
# %bb.16:                               #   in Loop: Header=BB2_14 Depth=1
	addi	a4, a3, 1
	addi	n13, n13, 256
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
	sw	n1, 1248(sp)
	sw	n2, 1244(sp)
	sw	n3, 1252(sp)
	sw	n4, 1256(sp)
	sw	n5, 1264(sp)
	sw	n6, 1260(sp)
	sw	n7, 1268(sp)
.LBB2_18:
	sd	n15, 24(sp)                     # 8-byte Folded Spill
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
	lw	n1, 1144(sp)
	sw	t2, 1256(sp)
	sw	t5, 1260(sp)
	sw	t6, 1264(sp)
	sw	n1, 1268(sp)
	bnez	n14, .LBB2_20
# %bb.19:
	add	n2, a4, a0
	add	n3, a3, a1
	subw	a1, a1, a3
	subw	a0, a0, a4
	add	a3, n3, n2
	subw	a4, n2, n3
	add	n2, a1, a0
	subw	a0, a0, a1
	add	a1, t0, a2
	add	n3, a7, a5
	subw	a5, a5, a7
	subw	a2, a2, t0
	add	a7, n3, a1
	subw	a1, a1, n3
	add	t0, a5, a2
	subw	a2, a2, a5
	add	a5, t4, a6
	add	n3, t3, t1
	subw	t1, t1, t3
	subw	a6, a6, t4
	add	t3, n3, a5
	subw	a5, a5, n3
	add	t4, t1, a6
	subw	a6, a6, t1
	add	t1, n1, t2
	add	n3, t6, t5
	subw	t5, t5, t6
	subw	t2, t2, n1
	add	t6, n3, t1
	subw	t1, t1, n3
	add	n1, t5, t2
	subw	t2, t2, t5
	add	t5, t6, a3
	add	n3, t3, a7
	subw	a7, a7, t3
	subw	a3, a3, t6
	add	t3, n3, t5
	sraiw	t3, t3, 1
	sw	t3, 1208(sp)
	subw	t3, t5, n3
	sraiw	t3, t3, 1
	sw	t3, 1240(sp)
	add	t3, a7, a3
	sraiw	t3, t3, 1
	sw	t3, 1224(sp)
	subw	a3, a3, a7
	sraiw	a3, a3, 1
	sw	a3, 1256(sp)
	add	a3, n1, n2
	add	a7, t4, t0
	subw	t0, t0, t4
	subw	t3, n2, n1
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
	sd	n14, 176(sp)                    # 8-byte Folded Spill
	j	.LBB2_22
.LBB2_21:                               #   in Loop: Header=BB2_22 Depth=1
	lw	a1, 0(s0)
	addi	s5, s5, 1
	mv	a0, s1
	call	sign
	ld	n14, 176(sp)                    # 8-byte Folded Reload
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
	beqz	n14, .LBB2_28
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
	ld	n14, 176(sp)                    # 8-byte Folded Reload
	slli	a1, s4, 2
	add	a2, s2, a1
	sw	a0, 0(a2)
	ld	a0, 144(sp)                     # 8-byte Folded Reload
	add	a1, a0, a1
	sw	s7, 0(a1)
	addiw	s4, s4, 1
	li	s7, -1
.LBB2_26:                               #   in Loop: Header=BB2_22 Depth=1
	beqz	n14, .LBB2_21
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
	bnez	n14, .LBB2_57
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
	or	a3, n14, a3
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
	bnez	n14, .LBB2_54
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
	ld	n14, 176(sp)                    # 8-byte Folded Reload
	bnez	n14, .LBB2_54
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
	ld	n14, 176(sp)                    # 8-byte Folded Reload
	li	a0, 16
	bne	s1, a0, .LBB2_55
# %bb.68:                               #   in Loop: Header=BB2_53 Depth=2
	slli	s11, s11, 2
	add	s6, s6, s11
	sw	zero, 0(s6)
	bnez	n14, .LBB2_52
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
	lw	n1, 1268(sp)
	add	n2, t4, t2
	subw	t2, t2, t4
	srai	t4, t6, 1
	subw	t4, t4, n1
	srai	n1, n1, 1
	add	t6, n1, t6
	add	n1, t6, n2
	sw	n1, 1256(sp)
	add	n3, t4, t2
	sw	n3, 1260(sp)
	subw	t2, t2, t4
	sw	t2, 1264(sp)
	subw	t4, n2, t6
	sw	t4, 1268(sp)
	add	t6, t3, a3
	subw	a3, a3, t3
	sraiw	t3, a7, 1
	subw	t3, t3, n1
	sraiw	n1, n1, 1
	add	a7, n1, a7
	add	n1, a7, t6
	sw	n1, 0(s7)
	add	n1, t3, a3
	sw	n1, 16(s7)
	subw	a3, a3, t3
	sw	a3, 32(s7)
	subw	a3, t6, a7
	sw	a3, 48(s7)
	add	a3, t5, a5
	subw	a5, a5, t5
	sraiw	a7, t1, 1
	subw	a7, a7, n3
	sraiw	t3, n3, 1
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
	beqz	n14, .LBB2_75
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
	beqz	n14, .LBB2_114
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
	slli	n1, t5, 1
	add	n1, t1, n1
	sh	t6, 0(n1)
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
	slli	n1, t5, 1
	add	n1, t1, n1
	sh	t6, 0(n1)
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
	slli	n1, t5, 1
	add	n1, t1, n1
	sh	t6, 0(n1)
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
	slli	n1, t5, 1
	add	n1, t1, n1
	sh	t6, 0(n1)
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
	slli	n1, t5, 1
	add	n1, t1, n1
	sh	t6, 0(n1)
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
	slli	n1, t5, 1
	add	n1, t1, n1
	sh	t6, 0(n1)
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
	slli	n1, t5, 1
	add	n1, t1, n1
	sh	t6, 0(n1)
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
	slli	n1, t5, 1
	add	n1, t1, n1
	sh	t6, 0(n1)
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
	slli	n1, t5, 1
	add	n1, t1, n1
	sh	t6, 0(n1)
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
	slli	n1, t5, 1
	add	n1, t1, n1
	sh	t6, 0(n1)
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
	slli	n1, t5, 1
	add	n1, t1, n1
	sh	t6, 0(n1)
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
	slli	n1, t5, 1
	add	n1, t1, n1
	sh	t6, 0(n1)
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
	slli	n1, t5, 1
	add	n1, t1, n1
	sh	t6, 0(n1)
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
	slli	n1, t5, 1
	add	n1, t1, n1
	sh	t6, 0(n1)
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
	lw	n1, 196(a0)
	lw	a0, 200(a0)
	slli	t3, t3, 1
	subw	t1, t1, t3
	add	t3, t6, t5
	add	n2, a0, n1
	subw	a0, n1, a0
	subw	t5, t5, t6
	add	t6, n2, t3
	subw	t3, t3, n2
	slli	n1, t5, 1
	add	n1, a0, n1
	slli	a0, a0, 1
	subw	t5, t5, a0
	add	a0, t6, a2
	add	n2, t2, a6
	subw	a6, a6, t2
	subw	a2, a2, t6
	add	t2, n2, a0
	sw	t2, 120(sp)
	subw	a0, a0, n2
	sw	a0, 152(sp)
	slli	a0, a2, 1
	add	a0, a6, a0
	sw	a0, 136(sp)
	slli	a6, a6, 1
	subw	a0, a2, a6
	sw	a0, 168(sp)
	add	a0, n1, a1
	add	a2, t4, t0
	subw	a6, t0, t4
	subw	a1, a1, n1
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
	ld	n3, 56(sp)                      # 8-byte Folded Reload
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
	ld	n3, 56(sp)                      # 8-byte Folded Reload
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
	addiw	a7, n3, 1
	lw	t1, 136(sp)
	addiw	a6, n3, 2
	add	t0, t2, a5
	subw	t2, a5, t2
	srli	t4, t1, 1
	lw	t5, 40(a3)
	subw	t4, t4, t3
	sraiw	a5, t3, 1
	add	t1, a5, t1
	addiw	a5, n3, 3
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
	slli	t3, n3, 5
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
	sgtz	n1, t6
	neg	n1, n1
	and	n1, n1, t6
	blt	n1, t3, .LBB3_37
# %bb.36:
	mv	n1, t3
.LBB3_37:
	slli	t6, a7, 5
	add	t6, t6, t5
	add	t6, a4, t6
	lhu	t6, 0(t6)
	addw	n2, t4, t2
	slli	t6, t6, 6
	add	t6, n2, t6
	addi	t6, t6, 32
	srai	t6, t6, 6
	sgtz	n2, t6
	neg	n2, n2
	and	t6, n2, t6
	sw	n1, 0(a1)
	blt	t6, t3, .LBB3_39
# %bb.38:
	mv	t6, t3
.LBB3_39:
	slli	n1, a6, 5
	add	n1, n1, t5
	add	n1, a4, n1
	lhu	n1, 0(n1)
	subw	t2, t2, t4
	slli	n1, n1, 6
	add	t2, t2, n1
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
	slli	t3, n3, 5
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
	sgtz	n1, t6
	neg	n1, n1
	and	n1, n1, t6
	blt	n1, t3, .LBB3_47
# %bb.46:
	mv	n1, t3
.LBB3_47:
	slli	t6, a7, 5
	add	t6, t6, t5
	add	t6, a4, t6
	lhu	t6, 0(t6)
	addw	n2, t4, t2
	slli	t6, t6, 6
	add	t6, n2, t6
	addi	t6, t6, 32
	srai	t6, t6, 6
	sgtz	n2, t6
	neg	n2, n2
	and	t6, n2, t6
	sw	n1, 4(a1)
	blt	t6, t3, .LBB3_49
# %bb.48:
	mv	t6, t3
.LBB3_49:
	slli	n1, a6, 5
	add	n1, n1, t5
	add	n1, a4, n1
	lhu	n1, 0(n1)
	subw	t2, t2, t4
	slli	n1, n1, 6
	add	t2, t2, n1
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
	slli	t3, n3, 5
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
	sgtz	n1, t6
	neg	n1, n1
	and	n1, n1, t6
	blt	n1, t3, .LBB3_57
# %bb.56:
	mv	n1, t3
.LBB3_57:
	slli	t6, a7, 5
	add	t6, t6, t5
	add	t6, a4, t6
	lhu	t6, 0(t6)
	addw	n2, t4, t2
	slli	t6, t6, 6
	add	t6, n2, t6
	addi	t6, t6, 32
	srai	t6, t6, 6
	sgtz	n2, t6
	neg	n2, n2
	and	t6, n2, t6
	sw	n1, 8(a1)
	blt	t6, t3, .LBB3_59
# %bb.58:
	mv	t6, t3
.LBB3_59:
	slli	n1, a6, 5
	add	n1, n1, t5
	add	n1, a4, n1
	lhu	n1, 0(n1)
	subw	t2, t2, t4
	slli	n1, n1, 6
	add	t2, t2, n1
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
	slli	t3, n3, 5
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
	sgtz	n1, t6
	neg	n1, n1
	and	t6, n1, t6
	blt	t6, t3, .LBB3_67
# %bb.66:
	mv	t6, t3
.LBB3_67:
	slli	a7, a7, 5
	add	a7, a7, t5
	add	a7, a4, a7
	lhu	a7, 0(a7)
	addw	n1, t4, t2
	slli	a7, a7, 6
	add	a7, n1, a7
	addi	a7, a7, 32
	srai	a7, a7, 6
	sgtz	n1, a7
	neg	n1, n1
	and	a7, n1, a7
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
	addw	a6, a3, n3
	lh	a7, 0(a1)
	slli	t0, n3, 5
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
	add	n1, a6, t6
	sh	a7, 0(n1)
	lh	a7, 12(a1)
	addi	n1, t1, 6
	add	t0, t0, n1
	lh	t0, 0(t0)
	add	a7, t0, a7
	addiw	a2, a2, 3
	slli	a2, a2, 1
	add	a6, a6, a2
	sh	a7, 0(a6)
	addi	a6, n3, 1
	addw	a7, a3, a6
	slli	a7, a7, 3
	add	a7, a5, a7
	lh	t0, 64(a1)
	slli	a6, a6, 5
	add	a6, a4, a6
	add	n2, a6, t1
	lh	n2, 0(n2)
	ld	a7, 0(a7)
	add	t0, n2, t0
	add	n2, a7, t2
	sh	t0, 0(n2)
	lh	t0, 68(a1)
	add	n2, a6, t3
	lh	n2, 0(n2)
	add	t0, n2, t0
	add	n2, a7, t4
	sh	t0, 0(n2)
	lh	t0, 72(a1)
	add	n2, a6, t5
	lh	n2, 0(n2)
	add	t0, n2, t0
	add	n2, a7, t6
	sh	t0, 0(n2)
	lh	t0, 76(a1)
	add	a6, a6, n1
	lh	a6, 0(a6)
	add	a6, a6, t0
	add	a7, a7, a2
	sh	a6, 0(a7)
	addi	a6, n3, 2
	addw	a7, a3, a6
	slli	a7, a7, 3
	add	a7, a5, a7
	lh	t0, 128(a1)
	slli	a6, a6, 5
	add	a6, a4, a6
	add	n2, a6, t1
	lh	n2, 0(n2)
	ld	a7, 0(a7)
	add	t0, n2, t0
	add	n2, a7, t2
	sh	t0, 0(n2)
	lh	t0, 132(a1)
	add	n2, a6, t3
	lh	n2, 0(n2)
	add	t0, n2, t0
	add	n2, a7, t4
	sh	t0, 0(n2)
	lh	t0, 136(a1)
	add	n2, a6, t5
	lh	n2, 0(n2)
	add	t0, n2, t0
	add	n2, a7, t6
	sh	t0, 0(n2)
	lh	t0, 140(a1)
	add	a6, a6, n1
	lh	a6, 0(a6)
	add	a6, a6, t0
	add	a7, a7, a2
	sh	a6, 0(a7)
	addi	a6, n3, 3
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
	add	a4, a4, n1
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
	addw	a4, a4, n3
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
	addw	n6, a3, a4
	li	a3, 6
	mul	a3, n6, a3
	subw	a3, a2, a3
	addi	a2, n6, 15
	j	.LBB4_13
.LBB4_12:
	li	n6, 0
	li	a3, 0
	li	a2, 0
.LBB4_13:
	lw	a4, 320(a1)
	lw	n3, 0(a7)
	ld	s0, 0(a5)
	ld	a5, 8(a5)
	sd	a5, 288(sp)                     # 8-byte Folded Spill
	lw	s1, 0(a6)
	ld	n5, 0(t0)
	ld	n4, 0(t1)
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
	lw	n1, -8(t0)
	lw	n2, -4(t0)
	subw	t1, t1, t4
	sw	t1, -64(t0)
	add	t1, t6, t5
	add	t4, n2, n1
	subw	n1, n1, n2
	subw	t5, t5, t6
	add	t6, t4, t1
	sw	t6, -12(t0)
	subw	t1, t1, t4
	sw	t1, -4(t0)
	slli	t1, t5, 1
	add	t1, n1, t1
	sw	t1, -8(t0)
	slli	n1, n1, 1
	lw	t4, -204(t0)
	lw	n2, -140(t0)
	subw	t5, t5, n1
	sw	t5, 0(t0)
	add	t5, t6, t4
	add	n1, t3, n2
	subw	t3, n2, t3
	subw	t4, t4, t6
	add	t6, n1, t5
	sw	t6, -204(t0)
	subw	t5, t5, n1
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
	sd	n3, 184(sp)                     # 8-byte Folded Spill
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
	sd	n5, 216(sp)                     # 8-byte Folded Spill
	sd	a3, 168(sp)                     # 8-byte Folded Spill
	add	a3, n5, a3
	sd	a3, 272(sp)                     # 8-byte Folded Spill
	sd	n6, 176(sp)                     # 8-byte Folded Spill
	slli	a0, n6, 3
	sd	n4, 248(sp)                     # 8-byte Folded Spill
	add	a0, n4, a0
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
	add	a0, n5, a0
	sd	a0, 272(sp)                     # 8-byte Folded Spill
	slli	s1, n3, 3
	add	s1, n4, s1
	sd	s1, 264(sp)                     # 8-byte Folded Spill
	addi	s1, n3, 16
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
	sd	n5, 216(sp)                     # 8-byte Folded Spill
	sd	s1, 272(sp)                     # 8-byte Folded Spill
	add	s4, n5, s1
	slli	s5, n3, 3
	sd	n4, 248(sp)                     # 8-byte Folded Spill
	add	s5, n4, s5
	addi	s6, n3, 16
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
	ld	n3, 184(sp)                     # 8-byte Folded Reload
	ld	s4, 256(sp)                     # 8-byte Folded Reload
	ld	n4, 248(sp)                     # 8-byte Folded Reload
	ld	s1, 240(sp)                     # 8-byte Folded Reload
	ld	n5, 216(sp)                     # 8-byte Folded Reload
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
	ld	n4, 176(sp)                     # 8-byte Folded Reload
	addi	a1, n4, -4
	lui	a3, 3
	addiw	a3, a3, 824
	add	a0, a0, a3
	li	n1, 3
	subw	a3, n1, n4
	ld	a2, 0(a2)
	li	a4, 1
	sllw	a3, a4, a3
	li	a4, 4
	ld	a2, 0(a2)
	subw	a4, a4, n4
	add	n2, t5, t1
	subw	t1, t1, t5
	lw	t3, 0(a2)
	subw	t5, t2, t6
	add	t6, t6, t2
	add	t2, t6, n2
	mul	t4, t3, t2
	add	t3, t5, t1
	subw	t2, t1, t5
	subw	t1, n2, t6
	blt	n1, n4, .LBB4_130
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
	add	a0, n5, a0
	slli	s1, n3, 3
	sd	a0, 272(sp)                     # 8-byte Folded Spill
	ld	a0, 0(a0)
	add	s1, n4, s1
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
	addi	s1, n3, 16
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
	sd	n4, 248(sp)                     # 8-byte Folded Spill
	sd	n5, 216(sp)                     # 8-byte Folded Spill
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
	ld	n3, 184(sp)                     # 8-byte Folded Reload
	addi	a1, n3, -4
	lui	a2, 3
	addiw	a2, a2, 824
	add	a0, a0, a2
	li	t2, 3
	subw	a2, t2, n3
	li	a3, 1
	sllw	a2, a3, a2
	ld	a5, 0(a4)
	li	a3, 4
	lw	t0, 296(sp)
	subw	a3, a3, n3
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
	blt	t2, n3, .LBB4_137
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
	ld	n3, 184(sp)                     # 8-byte Folded Reload
	ld	n4, 248(sp)                     # 8-byte Folded Reload
	ld	n5, 216(sp)                     # 8-byte Folded Reload
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
	bge	n3, a4, .LBB4_135
# %bb.129:
	subw	a4, a4, n3
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
	ld	n3, 184(sp)                     # 8-byte Folded Reload
	ld	s1, 240(sp)                     # 8-byte Folded Reload
	bge	n4, t3, .LBB4_133
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
	ld	n4, 248(sp)                     # 8-byte Folded Reload
	ld	n5, 216(sp)                     # 8-byte Folded Reload
	j	.LBB4_148
.LBB4_135:
	addi	a4, n3, -5
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
	ld	n4, 248(sp)                     # 8-byte Folded Reload
	ld	n5, 216(sp)                     # 8-byte Folded Reload
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
	bge	n3, t5, .LBB4_140
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
	bge	n3, t5, .LBB4_143
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
	bge	n3, t4, .LBB4_146
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
	addi	a3, n3, 15
	addi	a0, s0, 4
	sd	a0, 48(sp)                      # 8-byte Folded Spill
	slli	a0, s1, 3
	add	n5, n5, a0
	sd	n5, 264(sp)                     # 8-byte Folded Spill
	slli	a2, n3, 3
	add	a2, n4, a2
	sd	a2, 192(sp)                     # 8-byte Folded Spill
	li	a2, 1
	sd	a3, 272(sp)                     # 8-byte Folded Spill
	sllw	a3, a2, a3
	sd	a3, 168(sp)                     # 8-byte Folded Spill
	addi	a3, n3, 16
	sd	a3, 160(sp)                     # 8-byte Folded Spill
	add	a0, s4, a0
	sd	a0, 176(sp)                     # 8-byte Folded Spill
	addi	a0, n3, -4
	sd	a0, 152(sp)                     # 8-byte Folded Spill
	li	a0, 3
	subw	a0, a0, n3
	sllw	a0, a2, a0
	sd	a0, 144(sp)                     # 8-byte Folded Spill
	li	a0, 4
	subw	a0, a0, n3
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
	lbu	n1, 2(s10)
	lbu	n2, 3(s10)
	lbu	n3, 4(s10)
	lbu	n4, 5(s10)
	lbu	n5, 6(s10)
	lbu	n6, 7(s10)
	lbu	n7, 8(s10)
	lbu	n8, 9(s10)
	lbu	n9, 10(s10)
	lbu	n10, 11(s10)
	lbu	n11, 12(s10)
	lbu	n12, 13(s10)
	lbu	n13, 14(s10)
	lbu	n14, 15(s10)
	lbu	n15, 18(s10)
	lbu	n16, 19(s10)
	lbu	n17, 20(s10)
	lbu	n18, 21(s10)
	lbu	n19, 22(s10)
	lbu	n20, 23(s10)
	lbu	n21, 24(s10)
	lbu	n22, 25(s10)
	lbu	n23, 26(s10)
	lbu	n24, 27(s10)
	lbu	n25, 28(s10)
	lbu	n26, 29(s10)
	lbu	n27, 30(s10)
	lbu	n28, 31(s10)
	mv	n29, t2
	mv	n30, t1
.LBB4_184:                              #   Parent Loop BB4_182 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	n31, 0(t3)
	ld	n31, 0(n31)
	lbu	s1, 0(n30)
	lbu	s2, 0(n29)
	sw	zero, 0(n31)
	add	s3, n2, s1
	add	s4, n1, s2
	slli	s3, s3, 6
	add	s3, a6, s3
	slli	s4, s4, 2
	add	s3, s3, s4
	sw	zero, 0(s3)
	sw	zero, 4(n31)
	add	s3, n4, s1
	add	s4, n3, s2
	slli	s3, s3, 6
	add	s3, a6, s3
	slli	s4, s4, 2
	add	s3, s3, s4
	sw	zero, 0(s3)
	sw	zero, 8(n31)
	add	s3, n6, s1
	add	s4, n5, s2
	slli	s3, s3, 6
	add	s3, a6, s3
	slli	s4, s4, 2
	add	s3, s3, s4
	sw	zero, 0(s3)
	sw	zero, 12(n31)
	add	s3, n8, s1
	add	s4, n7, s2
	slli	s3, s3, 6
	add	s3, a6, s3
	slli	s4, s4, 2
	add	s3, s3, s4
	sw	zero, 0(s3)
	sw	zero, 16(n31)
	add	s3, n10, s1
	add	s4, n9, s2
	slli	s3, s3, 6
	add	s3, a6, s3
	slli	s4, s4, 2
	add	s3, s3, s4
	sw	zero, 0(s3)
	sw	zero, 20(n31)
	add	s3, n12, s1
	add	s4, n11, s2
	slli	s3, s3, 6
	add	s3, a6, s3
	slli	s4, s4, 2
	add	s3, s3, s4
	sw	zero, 0(s3)
	sw	zero, 24(n31)
	add	s3, n14, s1
	add	s4, n13, s2
	slli	s3, s3, 6
	add	s3, a6, s3
	slli	s4, s4, 2
	add	s3, s3, s4
	sw	zero, 0(s3)
	sw	zero, 28(n31)
	add	s3, t6, s1
	add	s4, t5, s2
	slli	s3, s3, 6
	add	s3, a6, s3
	slli	s4, s4, 2
	add	s3, s3, s4
	sw	zero, 0(s3)
	sw	zero, 32(n31)
	add	s3, n16, s1
	add	s4, n15, s2
	slli	s3, s3, 6
	add	s3, a6, s3
	slli	s4, s4, 2
	add	s3, s3, s4
	sw	zero, 0(s3)
	sw	zero, 36(n31)
	add	s3, n18, s1
	add	s4, n17, s2
	slli	s3, s3, 6
	add	s3, a6, s3
	slli	s4, s4, 2
	add	s3, s3, s4
	sw	zero, 0(s3)
	sw	zero, 40(n31)
	add	s3, n20, s1
	add	s4, n19, s2
	slli	s3, s3, 6
	add	s3, a6, s3
	slli	s4, s4, 2
	add	s3, s3, s4
	sw	zero, 0(s3)
	sw	zero, 44(n31)
	add	s3, n22, s1
	add	s4, n21, s2
	slli	s3, s3, 6
	add	s3, a6, s3
	slli	s4, s4, 2
	add	s3, s3, s4
	sw	zero, 0(s3)
	sw	zero, 48(n31)
	add	s3, n24, s1
	add	s4, n23, s2
	slli	s3, s3, 6
	add	s3, a6, s3
	slli	s4, s4, 2
	add	s3, s3, s4
	sw	zero, 0(s3)
	sw	zero, 52(n31)
	add	s3, n26, s1
	add	s4, n25, s2
	slli	s3, s3, 6
	add	s3, a6, s3
	slli	s4, s4, 2
	add	s3, s3, s4
	sw	zero, 0(s3)
	sw	zero, 56(n31)
	add	s1, n28, s1
	add	s2, n27, s2
	slli	s1, s1, 6
	add	s1, a6, s1
	slli	s2, s2, 2
	add	s1, s1, s2
	sw	zero, 0(s1)
	sw	zero, 60(n31)
	addi	t3, t3, 8
	addi	n30, n30, 1
	addi	n29, n29, 1
	bne	t3, t4, .LBB4_184
	j	.LBB4_181
.LBB4_185:                              #   in Loop: Header=BB4_182 Depth=1
	ld	n29, 0(a7)
	ld	t5, 232(sp)                     # 8-byte Folded Reload
	ld	n30, 368(t5)
	lbu	t5, 16(s10)
	lbu	t6, 17(s10)
	lbu	n1, 2(s10)
	lbu	n2, 3(s10)
	lbu	n3, 4(s10)
	lbu	n4, 5(s10)
	lbu	n5, 6(s10)
	lbu	n6, 7(s10)
	lbu	n7, 8(s10)
	lbu	n8, 9(s10)
	lbu	n9, 10(s10)
	lbu	n10, 11(s10)
	lbu	n11, 12(s10)
	lbu	n12, 13(s10)
	lbu	n13, 14(s10)
	lbu	n14, 15(s10)
	lbu	n15, 18(s10)
	lbu	n16, 19(s10)
	lbu	n17, 20(s10)
	lbu	n18, 21(s10)
	lbu	n19, 22(s10)
	lbu	n20, 23(s10)
	lbu	n21, 24(s10)
	lbu	n22, 25(s10)
	lbu	n23, 26(s10)
	lbu	n24, 27(s10)
	lbu	n25, 28(s10)
	lbu	n26, 29(s10)
	lbu	n27, 30(s10)
	lbu	n28, 31(s10)
	sll	n29, n29, t0
	not	n29, n29
	and	n29, n30, n29
	mv	n30, t2
	mv	n31, t1
.LBB4_186:                              #   Parent Loop BB4_182 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	s1, 0(t3)
	ld	s1, 0(s1)
	lbu	s2, 0(n31)
	lbu	s3, 0(n30)
	ld	s4, 232(sp)                     # 8-byte Folded Reload
	sd	n29, 368(s4)
	sw	zero, 0(s1)
	add	s4, n2, s2
	add	s5, n1, s3
	slli	s4, s4, 6
	add	s4, a6, s4
	slli	s5, s5, 2
	add	s4, s4, s5
	sw	zero, 0(s4)
	sw	zero, 4(s1)
	add	s4, n4, s2
	add	s5, n3, s3
	slli	s4, s4, 6
	add	s4, a6, s4
	slli	s5, s5, 2
	add	s4, s4, s5
	sw	zero, 0(s4)
	sw	zero, 8(s1)
	add	s4, n6, s2
	add	s5, n5, s3
	slli	s4, s4, 6
	add	s4, a6, s4
	slli	s5, s5, 2
	add	s4, s4, s5
	sw	zero, 0(s4)
	sw	zero, 12(s1)
	add	s4, n8, s2
	add	s5, n7, s3
	slli	s4, s4, 6
	add	s4, a6, s4
	slli	s5, s5, 2
	add	s4, s4, s5
	sw	zero, 0(s4)
	sw	zero, 16(s1)
	add	s4, n10, s2
	add	s5, n9, s3
	slli	s4, s4, 6
	add	s4, a6, s4
	slli	s5, s5, 2
	add	s4, s4, s5
	sw	zero, 0(s4)
	sw	zero, 20(s1)
	add	s4, n12, s2
	add	s5, n11, s3
	slli	s4, s4, 6
	add	s4, a6, s4
	slli	s5, s5, 2
	add	s4, s4, s5
	sw	zero, 0(s4)
	sw	zero, 24(s1)
	add	s4, n14, s2
	add	s5, n13, s3
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
	add	s4, n16, s2
	add	s5, n15, s3
	slli	s4, s4, 6
	add	s4, a6, s4
	slli	s5, s5, 2
	add	s4, s4, s5
	sw	zero, 0(s4)
	sw	zero, 36(s1)
	add	s4, n18, s2
	add	s5, n17, s3
	slli	s4, s4, 6
	add	s4, a6, s4
	slli	s5, s5, 2
	add	s4, s4, s5
	sw	zero, 0(s4)
	sw	zero, 40(s1)
	add	s4, n20, s2
	add	s5, n19, s3
	slli	s4, s4, 6
	add	s4, a6, s4
	slli	s5, s5, 2
	add	s4, s4, s5
	sw	zero, 0(s4)
	sw	zero, 44(s1)
	add	s4, n22, s2
	add	s5, n21, s3
	slli	s4, s4, 6
	add	s4, a6, s4
	slli	s5, s5, 2
	add	s4, s4, s5
	sw	zero, 0(s4)
	sw	zero, 48(s1)
	add	s4, n24, s2
	add	s5, n23, s3
	slli	s4, s4, 6
	add	s4, a6, s4
	slli	s5, s5, 2
	add	s4, s4, s5
	sw	zero, 0(s4)
	sw	zero, 52(s1)
	add	s4, n26, s2
	add	s5, n25, s3
	slli	s4, s4, 6
	add	s4, a6, s4
	slli	s5, s5, 2
	add	s4, s4, s5
	sw	zero, 0(s4)
	sw	zero, 56(s1)
	add	s2, n28, s2
	add	s3, n27, s3
	slli	s2, s2, 6
	add	s2, a6, s2
	slli	s3, s3, 2
	add	s2, s2, s3
	sw	zero, 0(s2)
	sw	zero, 60(s1)
	addi	t3, t3, 8
	addi	n31, n31, 1
	addi	n30, n30, 1
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
	mv	n1, a1
.LBB4_195:                              #   Parent Loop BB4_193 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lh	n2, 0(t6)
	lh	n3, 0(n1)
	add	n2, n3, n2
	slli	n3, t5, 48
	srai	n3, n3, 48
	slli	n3, n3, 1
	add	n3, t3, n3
	sh	n2, 0(n3)
	addi	n1, n1, 2
	addi	t6, t6, 4
	addi	t5, t5, 1
	bne	n1, t4, .LBB4_195
	j	.LBB4_192
.LBB4_196:                              #   in Loop: Header=BB4_193 Depth=1
	slli	t4, a2, 6
	add	t4, a6, t4
	add	t4, a0, t4
	mv	t5, a5
	mv	t6, a3
.LBB4_197:                              #   Parent Loop BB4_193 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lh	n1, 0(t6)
	slli	n2, t5, 48
	srai	n2, n2, 48
	slli	n2, n2, 1
	add	n2, t3, n2
	sh	n1, 0(n2)
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
	add	n1, t0, t6
	lw	n2, 0(n1)
	addi	n3, t6, 4
	add	n4, t0, n3
	lw	n5, 0(n4)
	addi	n6, t6, 8
	add	n7, t0, n6
	lw	n8, 0(n7)
	addi	n9, t6, 12
	add	n10, t0, n9
	lw	n11, 0(n10)
	add	n12, n8, n2
	subw	n2, n2, n8
	srli	n8, n5, 1
	subw	n8, n8, n11
	srli	n11, n11, 1
	add	n5, n11, n5
	add	n11, n5, n12
	sw	n11, 0(n1)
	add	n1, n8, n2
	sw	n1, 0(n4)
	subw	n1, n2, n8
	sw	n1, 0(n7)
	subw	n1, n12, n5
	sw	n1, 0(n10)
	add	n1, t1, t6
	lw	n2, 0(n1)
	add	n4, t1, n3
	add	n5, t1, n6
	lw	n7, 0(n5)
	lw	n8, 0(n4)
	add	n10, t1, n9
	lw	n11, 0(n10)
	add	n12, n7, n2
	subw	n2, n2, n7
	srli	n7, n8, 1
	subw	n7, n7, n11
	srli	n11, n11, 1
	add	n8, n11, n8
	add	n11, n8, n12
	sw	n11, 0(n1)
	add	n1, n7, n2
	sw	n1, 0(n4)
	subw	n1, n2, n7
	sw	n1, 0(n5)
	subw	n1, n12, n8
	sw	n1, 0(n10)
	add	n1, t2, t6
	lw	n2, 0(n1)
	add	n4, t2, n3
	add	n5, t2, n6
	lw	n7, 0(n5)
	lw	n8, 0(n4)
	add	n10, t2, n9
	lw	n11, 0(n10)
	add	n12, n7, n2
	subw	n2, n2, n7
	srli	n7, n8, 1
	subw	n7, n7, n11
	srli	n11, n11, 1
	add	n8, n11, n8
	add	n11, n8, n12
	sw	n11, 0(n1)
	add	n1, n7, n2
	sw	n1, 0(n4)
	subw	n1, n2, n7
	sw	n1, 0(n5)
	subw	n1, n12, n8
	sw	n1, 0(n10)
	add	t6, t3, t6
	lw	n1, 0(t6)
	add	n3, t3, n3
	add	n6, t3, n6
	lw	n2, 0(n6)
	lw	n4, 0(n3)
	add	n9, t3, n9
	lw	n5, 0(n9)
	add	n7, n2, n1
	subw	n1, n1, n2
	srli	n2, n4, 1
	subw	n2, n2, n5
	srli	n5, n5, 1
	add	n4, n5, n4
	add	n5, n4, n7
	sw	n5, 0(t6)
	add	t6, n2, n1
	sw	t6, 0(n3)
	subw	t6, n1, n2
	sw	t6, 0(n6)
	subw	t6, n7, n4
	sw	t6, 0(n9)
	li	t6, 4
	mv	n1, t4
	mv	n2, t5
	j	.LBB4_208
.LBB4_206:                              #   in Loop: Header=BB4_208 Depth=3
	addi	n6, n6, 32
	sraiw	n6, n6, 6
	sw	n6, -128(n2)
	addi	n5, n5, 32
	sraiw	n5, n5, 6
	sw	n5, -64(n2)
	addi	n4, n4, 32
	sraiw	n4, n4, 6
	sw	n4, 0(n2)
	addi	n3, n3, 32
	sraiw	n3, n3, 6
.LBB4_207:                              #   in Loop: Header=BB4_208 Depth=3
	sw	n3, 64(n2)
	addi	t6, t6, -1
	addi	n2, n2, 4
	addi	n1, n1, 2
	beqz	t6, .LBB4_204
.LBB4_208:                              #   Parent Loop BB4_202 Depth=1
                                        #     Parent Loop BB4_205 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	n3, -128(n2)
	lw	n4, 0(n2)
	lw	n5, -64(n2)
	lw	n6, 64(n2)
	add	n7, n4, n3
	subw	n3, n3, n4
	srli	n4, n5, 1
	subw	n4, n4, n6
	srli	n6, n6, 1
	add	n8, n6, n5
	lw	n9, 36(a2)
	addw	n6, n8, n7
	addw	n5, n4, n3
	subw	n4, n3, n4
	subw	n3, n7, n8
	bnez	n9, .LBB4_206
# %bb.209:                              #   in Loop: Header=BB4_208 Depth=3
	lhu	n8, -64(n1)
	lw	n7, 0(a2)
	slli	n8, n8, 6
	add	n6, n6, n8
	addi	n6, n6, 32
	srai	n6, n6, 6
	sgtz	n8, n6
	neg	n8, n8
	and	n6, n8, n6
	blt	n6, n7, .LBB4_211
# %bb.210:                              #   in Loop: Header=BB4_208 Depth=3
	mv	n6, n7
.LBB4_211:                              #   in Loop: Header=BB4_208 Depth=3
	lhu	n7, -32(n1)
	sw	n6, -128(n2)
	lw	n6, 0(a2)
	slli	n7, n7, 6
	add	n5, n5, n7
	addi	n5, n5, 32
	srai	n5, n5, 6
	sgtz	n7, n5
	neg	n7, n7
	and	n5, n7, n5
	blt	n5, n6, .LBB4_213
# %bb.212:                              #   in Loop: Header=BB4_208 Depth=3
	mv	n5, n6
.LBB4_213:                              #   in Loop: Header=BB4_208 Depth=3
	lhu	n6, 0(n1)
	sw	n5, -64(n2)
	lw	n5, 0(a2)
	slli	n6, n6, 6
	add	n4, n4, n6
	addi	n4, n4, 32
	srai	n4, n4, 6
	sgtz	n6, n4
	neg	n6, n6
	and	n4, n6, n4
	blt	n4, n5, .LBB4_215
# %bb.214:                              #   in Loop: Header=BB4_208 Depth=3
	mv	n4, n5
.LBB4_215:                              #   in Loop: Header=BB4_208 Depth=3
	lhu	n5, 32(n1)
	sw	n4, 0(n2)
	lw	n4, 0(a2)
	slli	n5, n5, 6
	add	n3, n3, n5
	addi	n3, n3, 32
	srai	n3, n3, 6
	sgtz	n5, n3
	neg	n5, n5
	and	n3, n5, n3
	blt	n3, n4, .LBB4_207
# %bb.216:                              #   in Loop: Header=BB4_208 Depth=3
	mv	n3, n4
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
	ld	n5, 0(a2)
	add	a4, a4, a3
	ld	a2, 0(a4)
	add	a3, a5, a3
	ld	a3, 0(a3)
	slli	a4, s6, 3
	add	a2, a2, a4
	ld	n6, 0(a2)
	add	a1, a3, a1
	ld	a1, 0(a1)
	sd	a1, 32(sp)                      # 8-byte Folded Spill
	addi	n7, s6, 15
	sd	n5, 64(sp)                      # 8-byte Folded Spill
	sd	n6, 56(sp)                      # 8-byte Folded Spill
	sd	n7, 48(sp)                      # 8-byte Folded Spill
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
	lw	n1, 204(a0)
	lw	n2, 196(a0)
	lw	n3, 200(a0)
	subw	t4, a1, t4
	add	a1, n1, t6
	subw	t6, t6, n1
	add	n1, n3, n2
	subw	n2, n2, n3
	add	n3, n1, a1
	subw	n1, a1, n1
	slli	a1, t6, 1
	add	n4, a1, n2
	slli	n2, n2, 1
	subw	t6, t6, n2
	add	n2, n3, a4
	subw	a4, a4, n3
	add	n3, t5, t1
	subw	t1, t1, t5
	addw	a1, n3, n2
	sw	a1, 0(a0)
	subw	t5, n2, n3
	sw	t5, 128(a0)
	slli	t5, a4, 1
	add	t5, t5, t1
	sw	t5, 64(a0)
	slli	t1, t1, 1
	subw	a4, a4, t1
	sw	a4, 192(a0)
	add	a4, n4, a2
	subw	a2, a2, n4
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
	add	a2, n1, a5
	subw	a4, a5, n1
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
	ld	a2, 0(n5)
	ld	a4, 0(n6)
	sw	a3, 204(a0)
	sraiw	a0, a1, 31
	lw	a2, 0(a2)
	lw	a3, 0(a4)
	xor	a4, a1, a0
	subw	a4, a4, a0
	mul	a0, a2, a4
	add	a0, a3, a0
	sraw	s3, a0, n7
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
	lw	n1, 200(a0)
	subw	t2, t2, t3
	lw	t3, 196(a0)
	lw	n2, 204(a0)
	add	n3, n1, t6
	subw	t6, t6, n1
	srai	n1, t3, 1
	subw	n1, n1, n2
	srai	n2, n2, 1
	add	t3, n2, t3
	add	n2, t3, n3
	subw	t3, n3, t3
	add	n3, n1, t6
	subw	t6, t6, n1
	add	n1, t4, a4
	subw	a4, a4, t4
	sraiw	t4, t0, 1
	subw	t4, t4, n2
	sraiw	n2, n2, 1
	add	t0, n2, t0
	addi	n1, n1, 32
	add	n2, n1, t0
	sraiw	n2, n2, 6
	sw	n2, 0(a0)
	subw	t0, n1, t0
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
	subw	t0, t0, n3
	sraiw	t4, n3, 1
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
	add	n2, a0, a4
	addi	a5, n2, 15
	mul	a0, a1, a3
	srli	a4, a0, 63
	srli	a0, a0, 32
	add	n4, a0, a4
	addi	n5, n4, 15
	ld	a4, %lo(img)(s8)
	sd	a5, 136(sp)                     # 8-byte Folded Spill
	sllw	a5, s3, a5
	sllw	a0, s3, n5
	addiw	n3, s9, 824
	add	a6, a4, n3
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
	lw	n1, 68(a6)
	add	t4, t4, t2
	sw	t4, 64(a6)
	sw	t2, 260(sp)
	add	n1, n1, t6
	sw	n1, 68(a6)
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
	lw	n1, 132(a6)
	add	t4, t4, t2
	sw	t4, 128(a6)
	sw	t2, 264(sp)
	add	n1, n1, t6
	sw	n1, 132(a6)
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
	sd	n2, 152(sp)                     # 8-byte Folded Spill
	mul	a6, n2, a4
	subw	s1, a2, a6
	ld	a2, %lo(img)(s8)
	mul	a3, a5, a3
	srli	a5, a3, 63
	srli	a3, a3, 32
	sd	n3, 112(sp)                     # 8-byte Folded Spill
	add	a2, a2, n3
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
	lw	n1, 204(a2)
	lw	n2, 196(a2)
	lw	n3, 200(a2)
	subw	t1, t1, t4
	add	t4, n1, t6
	subw	t6, t6, n1
	add	n1, n3, n2
	subw	n2, n2, n3
	add	n3, n1, t4
	subw	t4, t4, n1
	slli	n1, t6, 1
	add	n1, n1, n2
	slli	n2, n2, 1
	subw	t6, t6, n2
	sd	n4, 128(sp)                     # 8-byte Folded Spill
	mul	a4, n4, a4
	subw	a1, a1, a4
	sd	a1, 96(sp)                      # 8-byte Folded Spill
	add	a1, n3, t0
	subw	a4, t0, n3
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
	add	a1, n1, a3
	subw	a3, a3, n1
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
	lw	n1, 284(sp)
	lw	n2, 300(sp)
	subw	t1, t1, t3
	add	t3, t6, t5
	subw	t5, t5, t6
	add	t6, n2, n1
	subw	n1, n1, n2
	add	n2, t6, t3
	subw	t3, t3, t6
	slli	t6, t5, 1
	add	t6, t6, n1
	slli	n1, n1, 1
	subw	t5, t5, n1
	add	n1, n2, a4
	subw	a4, a4, n2
	add	n2, t4, t0
	subw	t0, t0, t4
	add	t4, n2, n1
	sw	t4, 256(sp)
	subw	t4, n1, n2
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
	sd	n5, 120(sp)                     # 8-byte Folded Spill
	sllw	a0, s0, n5
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
	add	n9, a2, t3
	subw	t3, t3, a2
	sw	t3, 76(a0)
	subw	a2, a7, t0
	lw	t2, 128(a0)
	lw	t3, 136(a0)
	lw	t4, 140(a0)
	lw	n2, 132(a0)
	sw	a2, 72(a0)
	add	a2, t3, t2
	srai	a3, t4, 1
	add	a3, a3, n2
	add	n3, a3, a2
	subw	a2, a2, a3
	lw	t5, 192(a0)
	lw	t6, 200(a0)
	lw	n1, 204(a0)
	lw	n4, 196(a0)
	sw	a2, 140(a0)
	add	a3, t6, t5
	srai	a4, n1, 1
	add	a4, a4, n4
	add	n5, a4, a3
	add	n7, n3, t1
	sraiw	n6, n5, 1
	add	n6, n6, n9
	lw	a2, 0(a1)
	addi	n8, n7, 32
	add	n7, n8, n6
	sraiw	n7, n7, 6
	sgtz	n10, n7
	neg	n10, n10
	and	n7, n10, n7
	sraiw	n10, n9, 1
	mv	n9, a2
	blt	a2, n7, .LBB7_30
# %bb.29:
	mv	n9, n7
.LBB7_30:
	srai	n7, n2, 1
	srai	n4, n4, 1
	subw	n3, t1, n3
	subw	n2, n10, n5
	subw	t1, n8, n6
	sraiw	t1, t1, 6
	sgtz	n5, t1
	neg	n5, n5
	and	t1, n5, t1
	sw	n9, 0(a0)
	mv	n5, a2
	ld	n6, 32(sp)                      # 8-byte Folded Reload
	ld	n8, 24(sp)                      # 8-byte Folded Reload
	blt	a2, t1, .LBB7_32
# %bb.31:
	mv	n5, t1
.LBB7_32:
	subw	t1, t2, t3
	subw	t2, n7, t4
	subw	t3, t5, t6
	subw	t4, n4, n1
	addi	t5, n3, 32
	add	t6, t5, n2
	sraiw	t6, t6, 6
	sgtz	n1, t6
	neg	n1, n1
	and	n1, n1, t6
	sw	n5, 192(a0)
	mv	t6, a2
	blt	a2, n1, .LBB7_34
# %bb.33:
	mv	t6, n1
.LBB7_34:
	add	a5, a6, a5
	add	t0, t0, a7
	add	a6, t2, t1
	add	a7, t4, t3
	subw	t5, t5, n2
	sraiw	t5, t5, 6
	sgtz	n1, t5
	neg	n1, n1
	and	t5, n1, t5
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
	add	n1, t6, t5
	sraiw	n1, n1, 6
	sgtz	n2, n1
	neg	n2, n2
	and	n2, n2, n1
	sraiw	n1, t0, 1
	mv	t0, a2
	blt	a2, n2, .LBB7_38
# %bb.37:
	mv	t0, n2
.LBB7_38:
	subw	a5, a5, a6
	subw	a6, n1, a7
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
	addw	a3, a4, n8
	slli	a4, a3, 3
	add	a4, a2, a4
	ld	a4, 0(a4)
	lh	a5, 0(a1)
	addw	a0, a0, n6
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
	lui	n3, %hi(img)
	ld	n5, %lo(img)(n3)
	add	a0, a2, a0
	lui	n4, 3
	addiw	a3, n4, 312
	add	n5, n5, a3
	lhu	a3, 0(n5)
	lw	a4, 512(n5)
	lbu	a0, 0(a0)
	add	a1, a2, a1
	lbu	a1, 0(a1)
	add	a4, a4, a3
	sw	a4, 512(n5)
	sw	a3, 304(sp)
	lhu	a2, 2(n5)
	lw	a3, 516(n5)
	add	a3, a3, a2
	sw	a3, 516(n5)
	sw	a2, 336(sp)
	lhu	a2, 4(n5)
	lw	a3, 520(n5)
	add	a3, a3, a2
	sw	a3, 520(n5)
	sw	a2, 368(sp)
	lhu	a2, 6(n5)
	lw	a3, 524(n5)
	add	a3, a3, a2
	sw	a3, 524(n5)
	sw	a2, 400(sp)
	lhu	a2, 8(n5)
	lw	a3, 528(n5)
	add	a3, a3, a2
	sw	a3, 528(n5)
	sw	a2, 432(sp)
	lhu	a2, 10(n5)
	lw	a3, 532(n5)
	add	a3, a3, a2
	sw	a3, 532(n5)
	sw	a2, 464(sp)
	lhu	a2, 12(n5)
	lw	a3, 536(n5)
	add	a3, a3, a2
	sw	a3, 536(n5)
	sw	a2, 496(sp)
	lhu	a2, 14(n5)
	lw	a3, 540(n5)
	add	a3, a3, a2
	sw	a3, 540(n5)
	sw	a2, 528(sp)
	lhu	a2, 32(n5)
	lw	a3, 576(n5)
	add	a3, a3, a2
	sw	a3, 576(n5)
	sw	a2, 308(sp)
	lhu	a2, 34(n5)
	lw	a3, 580(n5)
	add	a3, a3, a2
	sw	a3, 580(n5)
	sw	a2, 340(sp)
	lhu	a2, 36(n5)
	lw	a3, 584(n5)
	add	a3, a3, a2
	sw	a3, 584(n5)
	sw	a2, 372(sp)
	lhu	a2, 38(n5)
	lw	a3, 588(n5)
	add	a3, a3, a2
	sw	a3, 588(n5)
	sw	a2, 404(sp)
	lhu	a2, 40(n5)
	lw	a3, 592(n5)
	add	a3, a3, a2
	sw	a3, 592(n5)
	sw	a2, 436(sp)
	lhu	a2, 42(n5)
	lw	a3, 596(n5)
	add	a3, a3, a2
	sw	a3, 596(n5)
	sw	a2, 468(sp)
	lhu	a2, 44(n5)
	lw	a3, 600(n5)
	add	a3, a3, a2
	sw	a3, 600(n5)
	sw	a2, 500(sp)
	lhu	a2, 46(n5)
	lw	a3, 604(n5)
	add	a3, a3, a2
	sw	a3, 604(n5)
	sw	a2, 532(sp)
	lhu	a2, 64(n5)
	lw	a3, 640(n5)
	add	a3, a3, a2
	sw	a3, 640(n5)
	sw	a2, 312(sp)
	lhu	a2, 66(n5)
	lw	a3, 644(n5)
	add	a3, a3, a2
	sw	a3, 644(n5)
	sw	a2, 344(sp)
	lhu	a2, 68(n5)
	lw	a3, 648(n5)
	add	a3, a3, a2
	sw	a3, 648(n5)
	sw	a2, 376(sp)
	lhu	a2, 70(n5)
	lw	a3, 652(n5)
	add	a3, a3, a2
	sw	a3, 652(n5)
	sw	a2, 408(sp)
	lhu	a2, 72(n5)
	lw	a3, 656(n5)
	add	a3, a3, a2
	sw	a3, 656(n5)
	sw	a2, 440(sp)
	lhu	a2, 74(n5)
	lw	a3, 660(n5)
	add	a3, a3, a2
	sw	a3, 660(n5)
	sw	a2, 472(sp)
	lhu	a2, 76(n5)
	lw	a3, 664(n5)
	add	a3, a3, a2
	sw	a3, 664(n5)
	sw	a2, 504(sp)
	lhu	a2, 78(n5)
	lw	a3, 668(n5)
	add	a3, a3, a2
	sw	a3, 668(n5)
	sw	a2, 536(sp)
	lhu	a2, 96(n5)
	lw	a3, 704(n5)
	add	a3, a3, a2
	sw	a3, 704(n5)
	sw	a2, 316(sp)
	lhu	a2, 98(n5)
	lw	a3, 708(n5)
	add	a3, a3, a2
	sw	a3, 708(n5)
	sw	a2, 348(sp)
	lhu	a2, 100(n5)
	lw	a3, 712(n5)
	add	a3, a3, a2
	sw	a3, 712(n5)
	sw	a2, 380(sp)
	lhu	a2, 102(n5)
	lw	a3, 716(n5)
	add	a3, a3, a2
	sw	a3, 716(n5)
	sw	a2, 412(sp)
	lhu	a2, 104(n5)
	lw	a3, 720(n5)
	add	a3, a3, a2
	sw	a3, 720(n5)
	sw	a2, 444(sp)
	lhu	a2, 106(n5)
	lw	a3, 724(n5)
	add	a3, a3, a2
	sw	a3, 724(n5)
	sw	a2, 476(sp)
	lhu	a2, 108(n5)
	lw	a3, 728(n5)
	add	a3, a3, a2
	sw	a3, 728(n5)
	sw	a2, 508(sp)
	lhu	a2, 110(n5)
	lw	a3, 732(n5)
	add	a3, a3, a2
	sw	a3, 732(n5)
	sw	a2, 540(sp)
	lhu	a2, 128(n5)
	lw	a3, 768(n5)
	add	a3, a3, a2
	sw	a3, 768(n5)
	sw	a2, 320(sp)
	lhu	a2, 130(n5)
	lw	a3, 772(n5)
	add	a3, a3, a2
	sw	a3, 772(n5)
	sw	a2, 352(sp)
	lhu	a2, 132(n5)
	lw	a3, 776(n5)
	add	a3, a3, a2
	sw	a3, 776(n5)
	sw	a2, 384(sp)
	lhu	a2, 134(n5)
	lw	a3, 780(n5)
	add	a3, a3, a2
	sw	a3, 780(n5)
	sw	a2, 416(sp)
	lhu	a2, 136(n5)
	lw	a3, 784(n5)
	add	a3, a3, a2
	sw	a3, 784(n5)
	sw	a2, 448(sp)
	lhu	a2, 138(n5)
	lw	a3, 788(n5)
	add	a3, a3, a2
	sw	a3, 788(n5)
	sw	a2, 480(sp)
	lhu	a2, 140(n5)
	lw	a3, 792(n5)
	add	a3, a3, a2
	sw	a3, 792(n5)
	sw	a2, 512(sp)
	lhu	a2, 142(n5)
	lw	a3, 796(n5)
	add	a3, a3, a2
	sw	a3, 796(n5)
	sw	a2, 544(sp)
	lhu	a2, 160(n5)
	lw	a3, 832(n5)
	add	a3, a3, a2
	sw	a3, 832(n5)
	sw	a2, 324(sp)
	lhu	a2, 162(n5)
	lw	a3, 836(n5)
	add	a3, a3, a2
	sw	a3, 836(n5)
	sw	a2, 356(sp)
	lhu	a2, 164(n5)
	lw	a3, 840(n5)
	add	a3, a3, a2
	sw	a3, 840(n5)
	sw	a2, 388(sp)
	lhu	a2, 166(n5)
	lw	a3, 844(n5)
	add	a3, a3, a2
	sw	a3, 844(n5)
	sw	a2, 420(sp)
	lhu	a2, 168(n5)
	lw	a3, 848(n5)
	add	a3, a3, a2
	sw	a3, 848(n5)
	sw	a2, 452(sp)
	lhu	a2, 170(n5)
	lw	a3, 852(n5)
	add	a3, a3, a2
	sw	a3, 852(n5)
	sw	a2, 484(sp)
	lhu	a2, 172(n5)
	lw	a3, 856(n5)
	add	a3, a3, a2
	sw	a3, 856(n5)
	sw	a2, 516(sp)
	lhu	a2, 174(n5)
	lw	a3, 860(n5)
	add	a3, a3, a2
	sw	a3, 860(n5)
	sw	a2, 548(sp)
	lhu	a2, 192(n5)
	lw	a3, 896(n5)
	add	a3, a3, a2
	sw	a3, 896(n5)
	sw	a2, 328(sp)
	lhu	a2, 194(n5)
	lw	a3, 900(n5)
	add	a3, a3, a2
	sw	a3, 900(n5)
	sw	a2, 360(sp)
	lhu	a2, 196(n5)
	lw	a3, 904(n5)
	add	a3, a3, a2
	sw	a3, 904(n5)
	sw	a2, 392(sp)
	lhu	a2, 198(n5)
	lw	a3, 908(n5)
	add	a3, a3, a2
	sw	a3, 908(n5)
	sw	a2, 424(sp)
	lhu	a2, 200(n5)
	lw	a3, 912(n5)
	add	a3, a3, a2
	sw	a3, 912(n5)
	sw	a2, 456(sp)
	lhu	a2, 202(n5)
	lw	a3, 916(n5)
	add	a3, a3, a2
	sw	a3, 916(n5)
	sw	a2, 488(sp)
	lhu	a2, 204(n5)
	lw	a3, 920(n5)
	add	a3, a3, a2
	sw	a3, 920(n5)
	sw	a2, 520(sp)
	lhu	a2, 206(n5)
	lw	a3, 924(n5)
	add	a3, a3, a2
	sw	a3, 924(n5)
	sw	a2, 552(sp)
	lhu	a3, 224(n5)
	lw	a4, 960(n5)
	li	n6, 0
	addi	a2, sp, 320
	addi	t6, sp, 400
	add	a4, a4, a3
	sw	a4, 960(n5)
	sw	a3, 332(sp)
	lhu	a5, 226(n5)
	lw	a6, 964(n5)
	addi	a3, sp, 416
	addi	n2, sp, 336
	addi	a4, sp, 352
	add	a6, a6, a5
	sw	a6, 964(n5)
	sw	a5, 364(sp)
	lhu	a6, 228(n5)
	lw	a7, 968(n5)
	addi	n1, sp, 368
	addi	a5, sp, 384
	addi	t4, sp, 432
	add	a7, a7, a6
	sw	a7, 968(n5)
	sw	a6, 396(sp)
	lhu	t0, 230(n5)
	lw	t2, 972(n5)
	addi	a6, sp, 448
	addi	t1, sp, 528
	addi	a7, sp, 544
	add	t2, t2, t0
	sw	t2, 972(n5)
	sw	t0, 428(sp)
	lhu	t2, 232(n5)
	lw	n7, 976(n5)
	addi	t5, sp, 464
	addi	t0, sp, 480
	addi	t3, sp, 496
	add	n7, n7, t2
	sw	n7, 976(n5)
	sw	t2, 460(sp)
	lhu	t2, 234(n5)
	lw	n7, 980(n5)
	andi	n8, a0, 255
	li	n9, 171
	mul	n8, n8, n9
	add	n7, n7, t2
	sw	n7, 980(n5)
	sw	t2, 492(sp)
	lhu	t2, 236(n5)
	lw	n7, 984(n5)
	srli	n12, n8, 10
	li	n8, 6
	mul	n10, n12, n8
	add	n7, n7, t2
	sw	n7, 984(n5)
	sw	t2, 524(sp)
	lhu	n7, 238(n5)
	lw	n11, 988(n5)
	sub	a0, a0, n10
	addi	t2, sp, 512
	fmul.d	fa5, fa0, fa5
	add	n11, n11, n7
	sw	n11, 988(n5)
	lui	n10, 8
	andi	n5, a1, 255
	mul	n9, n5, n9
	sllw	n5, n10, n12
	srli	n9, n9, 10
	mul	n8, n9, n8
	sub	a1, a1, n8
	sllw	n8, n10, n9
	sd	n8, 256(sp)                     # 8-byte Folded Spill
	sw	n7, 556(sp)
	ld	n3, %lo(img)(n3)
	sd	n12, 208(sp)                    # 8-byte Folded Spill
	addi	n12, n12, 15
	sd	n12, 136(sp)                    # 8-byte Folded Spill
	sd	n9, 184(sp)                     # 8-byte Folded Spill
	addi	n9, n9, 15
	sd	n9, 56(sp)                      # 8-byte Folded Spill
	addiw	n4, n4, 824
	add	n3, n3, n4
	li	n4, 1
.LBB8_9:                                # =>This Inner Loop Header: Depth=1
	slli	n6, n6, 6
	add	n6, n3, n6
	lw	n7, 0(n6)
	lw	n8, 12(n6)
	lw	n9, 4(n6)
	lw	n10, 8(n6)
	add	n11, n8, n7
	subw	n7, n7, n8
	add	n8, n10, n9
	subw	n9, n9, n10
	add	n10, n8, n11
	subw	n8, n11, n8
	sw	n8, 8(n6)
	slli	n8, n7, 1
	add	n8, n8, n9
	slli	n9, n9, 1
	subw	n7, n7, n9
	lw	n9, 64(n6)
	lw	n11, 76(n6)
	lw	n12, 68(n6)
	lw	n13, 72(n6)
	sw	n7, 12(n6)
	add	n7, n11, n9
	subw	n9, n9, n11
	add	n11, n13, n12
	subw	n12, n12, n13
	add	n13, n11, n7
	subw	n7, n7, n11
	slli	n11, n9, 1
	add	n11, n11, n12
	slli	n12, n12, 1
	lw	n14, 128(n6)
	lw	n15, 140(n6)
	lw	n16, 132(n6)
	lw	n17, 136(n6)
	subw	n9, n9, n12
	add	n12, n15, n14
	subw	n14, n14, n15
	add	n15, n17, n16
	subw	n16, n16, n17
	add	n17, n15, n12
	subw	n12, n12, n15
	slli	n15, n14, 1
	add	n15, n15, n16
	slli	n16, n16, 1
	lw	n18, 192(n6)
	lw	n19, 204(n6)
	lw	n20, 196(n6)
	lw	n21, 200(n6)
	subw	n14, n14, n16
	add	n16, n19, n18
	subw	n18, n18, n19
	add	n19, n21, n20
	subw	n20, n20, n21
	add	n21, n19, n16
	subw	n16, n16, n19
	slli	n19, n18, 1
	add	n19, n19, n20
	slli	n20, n20, 1
	subw	n18, n18, n20
	add	n20, n21, n10
	subw	n10, n10, n21
	add	n21, n17, n13
	subw	n13, n13, n17
	add	n17, n21, n20
	sw	n17, 0(n6)
	subw	n17, n20, n21
	sw	n17, 128(n6)
	slli	n17, n10, 1
	add	n17, n17, n13
	sw	n17, 64(n6)
	slli	n13, n13, 1
	subw	n10, n10, n13
	sw	n10, 192(n6)
	add	n10, n19, n8
	subw	n8, n8, n19
	add	n13, n15, n11
	subw	n11, n11, n15
	add	n15, n13, n10
	sw	n15, 4(n6)
	subw	n10, n10, n13
	sw	n10, 132(n6)
	slli	n10, n8, 1
	add	n10, n10, n11
	sw	n10, 68(n6)
	lw	n10, 8(n6)
	slli	n11, n11, 1
	subw	n8, n8, n11
	sw	n8, 196(n6)
	add	n8, n16, n10
	subw	n10, n10, n16
	add	n11, n12, n7
	subw	n7, n7, n12
	add	n12, n11, n8
	sw	n12, 8(n6)
	subw	n8, n8, n11
	sw	n8, 136(n6)
	slli	n8, n10, 1
	add	n8, n8, n7
	sw	n8, 72(n6)
	lw	n8, 12(n6)
	slli	n7, n7, 1
	subw	n7, n10, n7
	sw	n7, 200(n6)
	add	n7, n18, n8
	subw	n8, n8, n18
	add	n10, n14, n9
	subw	n9, n9, n14
	add	n11, n10, n7
	sw	n11, 12(n6)
	subw	n7, n7, n10
	sw	n7, 140(n6)
	slli	n7, n8, 1
	add	n7, n7, n9
	sw	n7, 76(n6)
	slli	n9, n9, 1
	subw	n7, n8, n9
	lw	n8, 16(n6)
	lw	n9, 28(n6)
	lw	n10, 20(n6)
	lw	n11, 24(n6)
	sw	n7, 204(n6)
	add	n7, n9, n8
	subw	n8, n8, n9
	add	n9, n11, n10
	subw	n10, n10, n11
	add	n11, n9, n7
	subw	n7, n7, n9
	sw	n7, 24(n6)
	slli	n7, n8, 1
	add	n7, n7, n10
	slli	n10, n10, 1
	subw	n8, n8, n10
	lw	n9, 80(n6)
	lw	n10, 92(n6)
	lw	n12, 84(n6)
	lw	n13, 88(n6)
	sw	n8, 28(n6)
	add	n8, n10, n9
	subw	n9, n9, n10
	add	n10, n13, n12
	subw	n12, n12, n13
	add	n13, n10, n8
	subw	n8, n8, n10
	slli	n10, n9, 1
	add	n10, n10, n12
	slli	n12, n12, 1
	lw	n14, 144(n6)
	lw	n15, 156(n6)
	lw	n16, 148(n6)
	lw	n17, 152(n6)
	subw	n9, n9, n12
	add	n12, n15, n14
	subw	n14, n14, n15
	add	n15, n17, n16
	subw	n16, n16, n17
	add	n17, n15, n12
	subw	n12, n12, n15
	slli	n15, n14, 1
	add	n15, n15, n16
	slli	n16, n16, 1
	lw	n18, 208(n6)
	lw	n19, 220(n6)
	lw	n20, 212(n6)
	lw	n21, 216(n6)
	subw	n14, n14, n16
	add	n16, n19, n18
	subw	n18, n18, n19
	add	n19, n21, n20
	subw	n20, n20, n21
	add	n21, n19, n16
	subw	n16, n16, n19
	slli	n19, n18, 1
	add	n19, n19, n20
	slli	n20, n20, 1
	subw	n18, n18, n20
	add	n20, n21, n11
	subw	n11, n11, n21
	add	n21, n17, n13
	subw	n13, n13, n17
	add	n17, n21, n20
	sw	n17, 16(n6)
	subw	n17, n20, n21
	sw	n17, 144(n6)
	slli	n17, n11, 1
	add	n17, n17, n13
	sw	n17, 80(n6)
	slli	n13, n13, 1
	subw	n11, n11, n13
	sw	n11, 208(n6)
	add	n11, n19, n7
	subw	n7, n7, n19
	add	n13, n15, n10
	subw	n10, n10, n15
	add	n15, n13, n11
	sw	n15, 20(n6)
	subw	n11, n11, n13
	sw	n11, 148(n6)
	slli	n11, n7, 1
	add	n11, n11, n10
	sw	n11, 84(n6)
	lw	n11, 24(n6)
	slli	n10, n10, 1
	subw	n7, n7, n10
	sw	n7, 212(n6)
	add	n7, n16, n11
	subw	n10, n11, n16
	add	n11, n12, n8
	subw	n8, n8, n12
	add	n12, n11, n7
	sw	n12, 24(n6)
	subw	n7, n7, n11
	sw	n7, 152(n6)
	slli	n7, n10, 1
	add	n7, n7, n8
	sw	n7, 88(n6)
	lw	n7, 28(n6)
	slli	n8, n8, 1
	subw	n8, n10, n8
	sw	n8, 216(n6)
	add	n8, n18, n7
	subw	n7, n7, n18
	add	n10, n14, n9
	subw	n9, n9, n14
	add	n11, n10, n8
	sw	n11, 28(n6)
	subw	n8, n8, n10
	sw	n8, 156(n6)
	slli	n8, n7, 1
	add	n8, n8, n9
	sw	n8, 92(n6)
	slli	n9, n9, 1
	subw	n7, n7, n9
	sw	n7, 220(n6)
	andi	n7, n4, 1
	li	n6, 4
	li	n4, 0
	bnez	n7, .LBB8_9
# %bb.10:
	li	n12, 0
	lui	n3, 174763
	addiw	n3, n3, -1365
	mul	n3, n5, n3
	srli	n4, n3, 63
	srli	n3, n3, 32
	add	n3, n3, n4
	sd	n3, 152(sp)                     # 8-byte Folded Spill
	addi	n3, sp, 304
	li	n11, 1
	addi	n4, sp, 400
	addi	n5, sp, 336
	addi	n6, sp, 368
	addi	n7, sp, 432
	addi	n8, sp, 528
	addi	n9, sp, 464
	addi	n10, sp, 496
	addi	n16, sp, 304
.LBB8_11:                               # =>This Inner Loop Header: Depth=1
	lw	n13, 0(n16)
	lw	n14, 0(t6)
	lw	n15, 0(n2)
	lw	n17, 0(n1)
	slli	n18, n12, 2
	add	n12, n14, n13
	subw	n13, n13, n14
	add	n14, n17, n15
	subw	n17, n15, n17
	add	n19, n14, n12
	subw	n12, n12, n14
	sw	n12, 0(n1)
	slli	n14, n13, 1
	slli	n12, n17, 1
	subw	n12, n13, n12
	sw	n12, 0(t6)
	addi	n12, n18, 4
	add	n20, n3, n12
	lw	n13, 0(n20)
	add	n15, n4, n12
	lw	n21, 0(n15)
	add	n22, n5, n12
	lw	n23, 0(n22)
	add	n24, n6, n12
	lw	n25, 0(n24)
	add	n17, n14, n17
	add	n14, n21, n13
	subw	n21, n13, n21
	add	n13, n25, n23
	subw	n23, n23, n25
	add	n25, n13, n14
	subw	n26, n14, n13
	slli	n13, n21, 1
	add	n27, n13, n23
	slli	n23, n23, 1
	addi	n13, n18, 8
	add	n28, n3, n13
	lw	n14, 0(n28)
	add	n29, n4, n13
	lw	n30, 0(n29)
	add	n31, n5, n13
	lw	s0, 0(n31)
	add	s1, n6, n13
	lw	s2, 0(s1)
	subw	n21, n21, n23
	add	n23, n30, n14
	subw	n30, n14, n30
	add	n14, s2, s0
	subw	s0, s0, s2
	add	s2, n14, n23
	subw	n23, n23, n14
	slli	n14, n30, 1
	add	s3, n14, s0
	slli	s0, s0, 1
	addi	n14, n18, 12
	add	n18, n3, n14
	lw	s4, 0(n18)
	add	s5, n4, n14
	lw	s6, 0(s5)
	add	s7, n5, n14
	lw	s8, 0(s7)
	add	s9, n6, n14
	lw	s10, 0(s9)
	subw	n30, n30, s0
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
	add	s8, s10, n19
	subw	n19, n19, s10
	add	s10, s2, n25
	subw	n25, n25, s2
	add	s2, s10, s8
	sw	s2, 0(n16)
	subw	n16, s8, s10
	sw	n16, 0(n28)
	slli	n16, n19, 1
	add	n16, n16, n25
	sw	n16, 0(n20)
	slli	n25, n25, 1
	subw	n16, n19, n25
	sw	n16, 0(n18)
	add	n16, s6, n17
	subw	n17, n17, s6
	add	n18, s3, n27
	subw	n19, n27, s3
	add	n20, n18, n16
	sw	n20, 0(n2)
	subw	n2, n16, n18
	sw	n2, 0(n31)
	slli	n2, n17, 1
	add	n2, n2, n19
	sw	n2, 0(n22)
	lw	n2, 0(n1)
	slli	n19, n19, 1
	subw	n16, n17, n19
	sw	n16, 0(s7)
	add	n16, s0, n2
	subw	n2, n2, s0
	add	n17, n23, n26
	subw	n18, n26, n23
	add	n19, n17, n16
	sw	n19, 0(n1)
	subw	n1, n16, n17
	sw	n1, 0(s1)
	slli	n1, n2, 1
	add	n1, n1, n18
	sw	n1, 0(n24)
	lw	n1, 0(t6)
	slli	n18, n18, 1
	subw	n2, n2, n18
	sw	n2, 0(s9)
	add	n2, s4, n1
	subw	n1, n1, s4
	add	n16, n30, n21
	subw	n17, n21, n30
	add	n18, n16, n2
	sw	n18, 0(t6)
	subw	t6, n2, n16
	sw	t6, 0(n29)
	slli	t6, n1, 1
	add	t6, t6, n17
	sw	t6, 0(n15)
	slli	n17, n17, 1
	subw	t6, n1, n17
	lw	n1, 0(t4)
	lw	n2, 0(t1)
	lw	n15, 0(t5)
	lw	n16, 0(t3)
	sw	t6, 0(s5)
	add	t6, n2, n1
	subw	n1, n1, n2
	add	n2, n16, n15
	subw	n15, n15, n16
	add	n16, n2, t6
	subw	t6, t6, n2
	sw	t6, 0(t3)
	slli	n2, n1, 1
	slli	t6, n15, 1
	subw	t6, n1, t6
	sw	t6, 0(t1)
	add	n1, n7, n12
	lw	n17, 0(n1)
	add	t6, n8, n12
	lw	n18, 0(t6)
	add	n19, n9, n12
	lw	n20, 0(n19)
	add	n12, n10, n12
	lw	n21, 0(n12)
	add	n2, n2, n15
	add	n15, n18, n17
	subw	n17, n17, n18
	add	n18, n21, n20
	subw	n20, n20, n21
	add	n21, n18, n15
	subw	n15, n15, n18
	slli	n18, n17, 1
	add	n18, n18, n20
	slli	n20, n20, 1
	add	n22, n7, n13
	lw	n23, 0(n22)
	add	n24, n8, n13
	lw	n25, 0(n24)
	add	n26, n9, n13
	lw	n27, 0(n26)
	add	n13, n10, n13
	lw	n28, 0(n13)
	subw	n17, n17, n20
	add	n20, n25, n23
	subw	n23, n23, n25
	add	n25, n28, n27
	subw	n27, n27, n28
	add	n28, n25, n20
	subw	n20, n20, n25
	slli	n25, n23, 1
	add	n25, n25, n27
	slli	n27, n27, 1
	add	n29, n7, n14
	lw	n30, 0(n29)
	add	n31, n8, n14
	lw	s0, 0(n31)
	add	s1, n9, n14
	lw	s2, 0(s1)
	add	n14, n10, n14
	lw	s3, 0(n14)
	subw	n23, n23, n27
	add	n27, s0, n30
	subw	n30, n30, s0
	add	s0, s3, s2
	subw	s2, s2, s3
	add	s3, s0, n27
	subw	n27, n27, s0
	slli	s0, n30, 1
	add	s0, s0, s2
	slli	s2, s2, 1
	subw	n30, n30, s2
	add	s2, s3, n16
	subw	n16, n16, s3
	add	s3, n28, n21
	subw	n21, n21, n28
	add	n28, s3, s2
	sw	n28, 0(t4)
	subw	t4, s2, s3
	sw	t4, 0(n22)
	slli	t4, n16, 1
	add	t4, t4, n21
	sw	t4, 0(n1)
	slli	n21, n21, 1
	subw	t4, n16, n21
	sw	t4, 0(n29)
	add	t4, s0, n2
	subw	n1, n2, s0
	add	n2, n25, n18
	subw	n16, n18, n25
	add	n18, n2, t4
	sw	n18, 0(t5)
	subw	t4, t4, n2
	sw	t4, 0(n26)
	slli	t4, n1, 1
	add	t4, t4, n16
	sw	t4, 0(n19)
	lw	t4, 0(t3)
	slli	n16, n16, 1
	subw	t5, n1, n16
	sw	t5, 0(s1)
	add	t5, n27, t4
	subw	t4, t4, n27
	add	n1, n20, n15
	subw	n2, n15, n20
	add	n15, n1, t5
	sw	n15, 0(t3)
	subw	t3, t5, n1
	sw	t3, 0(n13)
	slli	t3, t4, 1
	add	t3, t3, n2
	sw	t3, 0(n12)
	lw	t3, 0(t1)
	slli	n2, n2, 1
	subw	t4, t4, n2
	sw	t4, 0(n14)
	add	t4, n30, t3
	subw	t3, t3, n30
	add	t5, n23, n17
	subw	n1, n17, n23
	add	n2, t5, t4
	sw	n2, 0(t1)
	subw	t4, t4, t5
	sw	t4, 0(n24)
	slli	t1, t3, 1
	add	t1, t1, n1
	sw	t1, 0(t6)
	slli	n1, n1, 1
	subw	t1, t3, n1
	sw	t1, 0(n31)
	andi	n13, n11, 1
	li	n12, 4
	mv	n16, a2
	mv	t6, a3
	mv	n2, a4
	mv	n1, a5
	mv	t4, a6
	mv	t1, a7
	mv	t5, t0
	mv	t3, t2
	li	n11, 0
	bnez	n13, .LBB8_11
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
	slli	n10, t0, 2
	add	n8, a3, n10
	lw	t0, 0(n8)
	addi	n5, n10, 4
	add	n4, a3, n5
	lw	t2, 0(n4)
	addi	n1, n10, 8
	add	t6, a3, n1
	lw	t3, 0(t6)
	addi	n9, n10, 12
	add	t1, a3, n9
	lw	t4, 0(t1)
	add	t5, t3, t0
	subw	t0, t0, t3
	srli	t3, t2, 1
	subw	t3, t3, t4
	srli	t4, t4, 1
	add	t2, t4, t2
	add	t4, t2, t5
	sw	t4, 0(n8)
	subw	t2, t5, t2
	sw	t2, 0(t1)
	add	t2, t3, t0
	sw	t2, 0(n4)
	subw	t0, t0, t3
	sw	t0, 0(t6)
	add	n6, a4, n10
	lw	t2, 0(n6)
	add	n2, a4, n5
	add	t4, a4, n1
	lw	t3, 0(t4)
	lw	t5, 0(n2)
	add	t0, a4, n9
	lw	n3, 0(t0)
	add	n7, t3, t2
	subw	t2, t2, t3
	srli	t3, t5, 1
	subw	t3, t3, n3
	srli	n3, n3, 1
	add	t5, n3, t5
	add	n3, t5, n7
	sw	n3, 0(n6)
	subw	t5, n7, t5
	sw	t5, 0(t0)
	add	t5, t3, t2
	sw	t5, 0(n2)
	subw	t2, t2, t3
	sw	t2, 0(t4)
	add	n7, a5, n10
	lw	t3, 0(n7)
	add	n3, a5, n5
	add	t5, a5, n1
	lw	n11, 0(t5)
	lw	n12, 0(n3)
	add	t2, a5, n9
	lw	n13, 0(t2)
	add	n14, n11, t3
	subw	t3, t3, n11
	srli	n11, n12, 1
	subw	n15, n11, n13
	srai	n11, n13, 1
	add	n12, n11, n12
	add	n11, n12, n14
	subw	n12, n14, n12
	sw	n12, 0(t2)
	add	n12, n15, t3
	sw	n12, 0(n3)
	subw	t3, t3, n15
	sw	t3, 0(t5)
	add	n10, a6, n10
	lw	n12, 0(n10)
	add	n5, a6, n5
	add	n1, a6, n1
	lw	n13, 0(n1)
	lw	n14, 0(n5)
	add	t3, a6, n9
	lw	n9, 0(t3)
	add	n15, n13, n12
	subw	n16, n12, n13
	srai	n12, n14, 1
	subw	n17, n12, n9
	srai	n9, n9, 1
	add	n9, n9, n14
	add	n12, n9, n15
	subw	n9, n15, n9
	sw	n9, 0(t3)
	lw	n13, 0(n8)
	add	n9, n17, n16
	lw	n14, 0(n6)
	subw	n19, n16, n17
	add	n15, n11, n13
	sraiw	n17, n12, 1
	add	n17, n17, n14
	lw	n16, 0(a1)
	addi	n18, n15, 32
	add	n15, n18, n17
	sraiw	n15, n15, 6
	sgtz	n20, n15
	neg	n20, n20
	and	n15, n20, n15
	sw	n11, 0(n7)
	sw	n9, 0(n5)
	sw	n19, 0(n1)
	blt	n16, n15, .LBB8_76
# %bb.75:                               #   in Loop: Header=BB8_74 Depth=2
	mv	n16, n15
.LBB8_76:                               #   in Loop: Header=BB8_74 Depth=2
	lw	n15, 0(a1)
	subw	n17, n18, n17
	sraiw	n17, n17, 6
	sgtz	n18, n17
	neg	n18, n18
	and	n17, n18, n17
	sw	n16, 0(n8)
	mv	n16, n15
	blt	n15, n17, .LBB8_78
# %bb.77:                               #   in Loop: Header=BB8_74 Depth=2
	mv	n16, n17
.LBB8_78:                               #   in Loop: Header=BB8_74 Depth=2
	subw	n11, n13, n11
	srli	n8, n14, 1
	subw	n8, n8, n12
	addi	n11, n11, 32
	add	n12, n11, n8
	sraiw	n12, n12, 6
	sgtz	n13, n12
	neg	n13, n13
	and	n12, n13, n12
	sw	n16, 0(n10)
	blt	n15, n12, .LBB8_80
# %bb.79:                               #   in Loop: Header=BB8_74 Depth=2
	mv	n15, n12
.LBB8_80:                               #   in Loop: Header=BB8_74 Depth=2
	lw	n12, 0(a1)
	subw	n8, n11, n8
	sraiw	n8, n8, 6
	sgtz	n10, n8
	neg	n10, n10
	and	n8, n10, n8
	sw	n15, 0(n6)
	blt	n12, n8, .LBB8_82
# %bb.81:                               #   in Loop: Header=BB8_74 Depth=2
	mv	n12, n8
.LBB8_82:                               #   in Loop: Header=BB8_74 Depth=2
	lw	n8, 0(n4)
	lw	n11, 0(n3)
	lw	n10, 0(n2)
	add	n6, n11, n8
	sraiw	n14, n9, 1
	add	n14, n14, n10
	lw	n13, 0(a1)
	addi	n15, n6, 32
	add	n6, n15, n14
	sraiw	n6, n6, 6
	sgtz	n16, n6
	neg	n16, n16
	and	n6, n16, n6
	sw	n12, 0(n7)
	blt	n13, n6, .LBB8_84
# %bb.83:                               #   in Loop: Header=BB8_74 Depth=2
	mv	n13, n6
.LBB8_84:                               #   in Loop: Header=BB8_74 Depth=2
	lw	n6, 0(a1)
	subw	n7, n15, n14
	sraiw	n7, n7, 6
	sgtz	n12, n7
	neg	n12, n12
	and	n12, n12, n7
	sw	n13, 0(n4)
	mv	n7, n6
	blt	n6, n12, .LBB8_86
# %bb.85:                               #   in Loop: Header=BB8_74 Depth=2
	mv	n7, n12
.LBB8_86:                               #   in Loop: Header=BB8_74 Depth=2
	subw	n8, n8, n11
	srli	n4, n10, 1
	subw	n4, n4, n9
	addi	n8, n8, 32
	add	n9, n8, n4
	sraiw	n9, n9, 6
	sgtz	n10, n9
	neg	n10, n10
	and	n9, n10, n9
	sw	n7, 0(n5)
	blt	n6, n9, .LBB8_88
# %bb.87:                               #   in Loop: Header=BB8_74 Depth=2
	mv	n6, n9
.LBB8_88:                               #   in Loop: Header=BB8_74 Depth=2
	lw	n7, 0(a1)
	subw	n4, n8, n4
	sraiw	n4, n4, 6
	sgtz	n5, n4
	neg	n5, n5
	and	n4, n5, n4
	sw	n6, 0(n2)
	blt	n7, n4, .LBB8_90
# %bb.89:                               #   in Loop: Header=BB8_74 Depth=2
	mv	n7, n4
.LBB8_90:                               #   in Loop: Header=BB8_74 Depth=2
	lw	n2, 0(t6)
	lw	n5, 0(t5)
	lw	n4, 0(n1)
	lw	n6, 0(t4)
	add	n10, n5, n2
	srli	n9, n4, 1
	add	n9, n9, n6
	lw	n8, 0(a1)
	addi	n10, n10, 32
	add	n11, n10, n9
	sraiw	n11, n11, 6
	sgtz	n12, n11
	neg	n12, n12
	and	n11, n12, n11
	sw	n7, 0(n3)
	blt	n8, n11, .LBB8_92
# %bb.91:                               #   in Loop: Header=BB8_74 Depth=2
	mv	n8, n11
.LBB8_92:                               #   in Loop: Header=BB8_74 Depth=2
	lw	n3, 0(a1)
	subw	n7, n10, n9
	sraiw	n7, n7, 6
	sgtz	n9, n7
	neg	n9, n9
	and	n9, n9, n7
	sw	n8, 0(t6)
	mv	n7, n3
	blt	n3, n9, .LBB8_94
# %bb.93:                               #   in Loop: Header=BB8_74 Depth=2
	mv	n7, n9
.LBB8_94:                               #   in Loop: Header=BB8_74 Depth=2
	subw	n2, n2, n5
	srli	t6, n6, 1
	subw	t6, t6, n4
	addi	n2, n2, 32
	add	n4, n2, t6
	sraiw	n4, n4, 6
	sgtz	n5, n4
	neg	n5, n5
	and	n4, n5, n4
	sw	n7, 0(n1)
	blt	n3, n4, .LBB8_96
# %bb.95:                               #   in Loop: Header=BB8_74 Depth=2
	mv	n3, n4
.LBB8_96:                               #   in Loop: Header=BB8_74 Depth=2
	lw	n4, 0(a1)
	subw	t6, n2, t6
	sraiw	t6, t6, 6
	sgtz	n1, t6
	neg	n1, n1
	and	t6, n1, t6
	sw	n3, 0(t4)
	blt	n4, t6, .LBB8_98
# %bb.97:                               #   in Loop: Header=BB8_74 Depth=2
	mv	n4, t6
.LBB8_98:                               #   in Loop: Header=BB8_74 Depth=2
	lw	t4, 0(t1)
	lw	n1, 0(t2)
	lw	t6, 0(t3)
	lw	n2, 0(t0)
	add	n6, n1, t4
	srli	n5, t6, 1
	add	n5, n5, n2
	lw	n3, 0(a1)
	addi	n6, n6, 32
	add	n7, n6, n5
	sraiw	n7, n7, 6
	sgtz	n8, n7
	neg	n8, n8
	and	n7, n8, n7
	sw	n4, 0(t5)
	blt	n3, n7, .LBB8_100
# %bb.99:                               #   in Loop: Header=BB8_74 Depth=2
	mv	n3, n7
.LBB8_100:                              #   in Loop: Header=BB8_74 Depth=2
	lw	t5, 0(a1)
	subw	n4, n6, n5
	sraiw	n4, n4, 6
	sgtz	n5, n4
	neg	n5, n5
	and	n4, n5, n4
	sw	n3, 0(t1)
	mv	n3, t5
	blt	t5, n4, .LBB8_102
# %bb.101:                              #   in Loop: Header=BB8_74 Depth=2
	mv	n3, n4
.LBB8_102:                              #   in Loop: Header=BB8_74 Depth=2
	subw	t4, t4, n1
	srli	t1, n2, 1
	subw	t1, t1, t6
	addi	t4, t4, 32
	add	t6, t4, t1
	sraiw	t6, t6, 6
	sgtz	n1, t6
	neg	n1, n1
	and	t6, n1, t6
	sw	n3, 0(t3)
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
	sllw	n5, a1, s7
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
	addiw	n1, s4, 376
	add	n1, a1, n1
	add	n2, n1, a4
	lhu	n2, 0(n2)
	add	n3, n1, a6
	lhu	n3, 0(n3)
	addiw	n4, s4, 408
	add	a1, a1, n4
	add	n4, n1, t0
	lhu	n4, 0(n4)
	add	n1, n1, t2
	lhu	n1, 0(n1)
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
	add	t5, n1, n2
	subw	n1, n2, n1
	add	n2, n4, n3
	subw	n3, n3, n4
	add	n4, n2, t5
	subw	t5, t5, n2
	slli	n2, n1, 1
	add	n2, n2, n3
	slli	n3, n3, 1
	subw	n1, n1, n3
	add	n3, a1, a4
	subw	a4, a4, a1
	add	a1, t0, a6
	subw	a6, a6, t0
	add	t0, a1, n3
	subw	a1, n3, a1
	slli	n3, a4, 1
	add	n3, n3, a6
	slli	a6, a6, 1
	subw	a4, a4, a6
	add	a6, t0, t1
	subw	t0, t1, t0
	add	t1, n4, t6
	subw	t6, t6, n4
	add	n4, t1, a6
	sw	n4, 56(sp)
	subw	a6, a6, t1
	sw	a6, 64(sp)
	slli	a6, t0, 1
	add	a6, a6, t6
	sw	a6, 60(sp)
	slli	t6, t6, 1
	subw	a6, t0, t6
	sw	a6, 68(sp)
	add	a6, n3, t2
	subw	t0, t2, n3
	add	t1, n2, t3
	subw	t2, t3, n2
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
	add	a3, n1, t4
	subw	a4, t4, n1
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
	srliw	a1, n5, 31
	add	a1, n5, a1
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
	add	n9, a2, t3
	subw	t3, t3, a2
	sw	t3, 76(a0)
	subw	a2, a7, t0
	lw	t2, 128(a0)
	lw	t3, 136(a0)
	lw	t4, 140(a0)
	lw	n2, 132(a0)
	sw	a2, 72(a0)
	add	a2, t3, t2
	srai	a3, t4, 1
	add	a3, a3, n2
	add	n3, a3, a2
	subw	a2, a2, a3
	lw	t5, 192(a0)
	lw	t6, 200(a0)
	lw	n1, 204(a0)
	lw	n4, 196(a0)
	sw	a2, 140(a0)
	add	a3, t6, t5
	srai	a4, n1, 1
	add	a4, a4, n4
	add	n5, a4, a3
	add	n7, n3, t1
	sraiw	n6, n5, 1
	add	n6, n6, n9
	lw	a2, 0(a1)
	addi	n7, n7, 32
	add	n8, n7, n6
	sraiw	n8, n8, 6
	sgtz	n10, n8
	neg	n10, n10
	and	n8, n10, n8
	sraiw	n10, n9, 1
	mv	n9, a2
	blt	a2, n8, .LBB9_12
# %bb.11:
	mv	n9, n8
.LBB9_12:
	srai	n8, n2, 1
	srai	n4, n4, 1
	subw	n3, t1, n3
	subw	n2, n10, n5
	subw	t1, n7, n6
	sraiw	t1, t1, 6
	sgtz	n5, t1
	neg	n5, n5
	and	t1, n5, t1
	sw	n9, 0(a0)
	mv	n5, a2
	blt	a2, t1, .LBB9_14
# %bb.13:
	mv	n5, t1
.LBB9_14:
	subw	t1, t2, t3
	subw	t2, n8, t4
	subw	t3, t5, t6
	subw	t4, n4, n1
	addi	t5, n3, 32
	add	t6, t5, n2
	sraiw	t6, t6, 6
	sgtz	n1, t6
	neg	n1, n1
	and	n1, n1, t6
	sw	n5, 192(a0)
	mv	t6, a2
	blt	a2, n1, .LBB9_16
# %bb.15:
	mv	t6, n1
.LBB9_16:
	add	a5, a6, a5
	add	t0, t0, a7
	add	a6, t2, t1
	add	a7, t4, t3
	subw	t5, t5, n2
	sraiw	t5, t5, 6
	sgtz	n1, t5
	neg	n1, n1
	and	t5, n1, t5
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
	add	n1, t6, t5
	sraiw	n1, n1, 6
	sgtz	n2, n1
	neg	n2, n2
	and	n2, n2, n1
	sraiw	n1, t0, 1
	mv	t0, a2
	blt	a2, n2, .LBB9_20
# %bb.19:
	mv	t0, n2
.LBB9_20:
	subw	a5, a5, a6
	subw	a6, n1, a7
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
	lui	n11, %hi(img)
	ld	a6, %lo(img)(n11)
	srli	a2, a1, 1
	lui	t6, 3
	addiw	n7, t6, 824
	sd	n7, 120(sp)                     # 8-byte Folded Spill
	add	n7, a6, n7
	ld	a3, 1024(n7)
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
	lw	n6, 44(a6)
	lui	a2, 174763
	addiw	a2, a2, -1365
	lw	t0, 156(a6)
	mul	a2, n6, a2
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
	sw	a4, 0(n7)
	slli	a4, a1, 5
	add	t6, a2, a4
	addi	n10, a0, 1
	addw	a4, n10, t1
	slli	n1, a4, 2
	add	a4, t2, n1
	lw	a5, 0(a4)
	slli	a4, a0, 1
	add	n2, t6, a4
	lhu	n2, 0(n2)
	sw	a5, 4(n7)
	addi	a5, a4, 2
	add	n3, t6, a5
	lhu	n3, 0(n3)
	addi	n9, a0, 2
	addw	n4, n9, t1
	slli	n4, n4, 2
	add	n5, t2, n4
	lw	n5, 0(n5)
	add	n12, t5, t3
	sw	n2, 136(sp)
	sw	n3, 152(sp)
	sw	n5, 8(n7)
	addi	n8, a0, 3
	addw	t1, n8, t1
	slli	t1, t1, 2
	add	t2, t2, t1
	lw	t2, 0(t2)
	addi	t3, a4, 4
	add	t5, t6, t3
	lhu	t5, 0(t5)
	sw	t2, 12(n7)
	addi	t2, a1, 1
	addw	n2, t0, t2
	slli	n2, n2, 3
	add	n2, a3, n2
	ld	n2, 0(n2)
	addi	n3, a4, 6
	add	t6, t6, n3
	lhu	t6, 0(t6)
	add	n5, n2, t4
	lw	n5, 0(n5)
	sw	t5, 168(sp)
	sw	t6, 184(sp)
	ld	t5, 0(a7)
	sd	t5, 72(sp)                      # 8-byte Folded Spill
	sw	n5, 64(n7)
	slli	t2, t2, 5
	add	n1, n2, n1
	lw	t5, 0(n1)
	add	t2, a2, t2
	add	t6, t2, a4
	lhu	t6, 0(t6)
	sw	t5, 68(n7)
	add	t5, t2, a5
	lhu	t5, 0(t5)
	add	n4, n2, n4
	lw	n1, 0(n4)
	ld	a7, 8(a7)
	sd	a7, 56(sp)                      # 8-byte Folded Spill
	sw	t6, 140(sp)
	sw	t5, 156(sp)
	sw	n1, 72(n7)
	add	a7, t2, t3
	lhu	a7, 0(a7)
	add	t1, n2, t1
	lw	t1, 0(t1)
	addi	t5, a1, 2
	addw	t0, t0, t5
	slli	t0, t0, 3
	add	t0, a3, t0
	ld	t0, 0(t0)
	sw	t1, 76(n7)
	add	t2, t2, n3
	lhu	t1, 0(t2)
	add	t0, t0, t4
	lw	t0, 0(t0)
	lw	t2, 156(a6)
	sw	a7, 172(sp)
	sw	t1, 188(sp)
	sw	t0, 128(n7)
	addw	a7, t2, t5
	slli	a7, a7, 3
	lw	a6, 152(a6)
	add	a7, a3, a7
	ld	a7, 0(a7)
	slli	t5, t5, 5
	sd	n10, 8(sp)                      # 8-byte Folded Spill
	addw	t0, n10, a6
	slli	t0, t0, 2
	add	t1, a7, t0
	lw	t1, 0(t1)
	add	t5, a2, t5
	add	t4, t5, a4
	lhu	t4, 0(t4)
	sw	t1, 132(n7)
	sd	n9, 16(sp)                      # 8-byte Folded Spill
	addw	t1, n9, a6
	slli	t1, t1, 2
	add	t6, a7, t1
	lw	t6, 0(t6)
	sw	t4, 144(sp)
	add	t4, t5, a5
	lhu	t4, 0(t4)
	sw	t6, 136(n7)
	sd	n8, 24(sp)                      # 8-byte Folded Spill
	addw	t6, n8, a6
	slli	t6, t6, 2
	add	a7, a7, t6
	lw	a7, 0(a7)
	sd	a1, 40(sp)                      # 8-byte Folded Spill
	addi	n1, a1, 3
	addw	t2, t2, n1
	slli	t2, t2, 3
	add	a3, a3, t2
	add	t2, t5, t3
	lhu	t2, 0(t2)
	ld	a3, 0(a3)
	sw	a7, 140(n7)
	sd	a0, 32(sp)                      # 8-byte Folded Spill
	addw	a6, a6, a0
	slli	a6, a6, 2
	add	a6, a3, a6
	lw	a6, 0(a6)
	sw	t4, 160(sp)
	sw	t2, 176(sp)
	add	t5, t5, n3
	sw	a6, 192(n7)
	add	t0, a3, t0
	lw	a6, 0(t0)
	lhu	a7, 0(t5)
	slli	n1, n1, 5
	add	a2, a2, n1
	sw	a6, 196(n7)
	add	t1, a3, t1
	lw	a6, 0(t1)
	add	a4, a2, a4
	lhu	a4, 0(a4)
	add	a5, a2, a5
	sw	a6, 200(n7)
	add	a3, a3, t6
	lw	a3, 0(a3)
	lhu	a5, 0(a5)
	add	t3, a2, t3
	lhu	a6, 0(t3)
	sw	a3, 204(n7)
	add	a2, a2, n3
	lhu	a0, 0(a2)
	li	a2, 6
	mul	a2, n12, a2
	lw	a3, 136(sp)
	lw	t0, 184(sp)
	lw	t1, 152(sp)
	lw	t2, 168(sp)
	subw	a1, n6, a2
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
	lw	n1, 176(sp)
	subw	t0, t0, t3
	add	t3, t5, a7
	subw	a7, t5, a7
	add	t5, n1, t6
	subw	t6, t6, n1
	add	n1, t5, t3
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
	add	t1, n1, t4
	subw	t4, t4, n1
	add	n1, t1, a5
	sw	n1, 136(sp)
	sd	n12, 112(sp)                    # 8-byte Folded Spill
	addi	n12, n12, 15
	subw	a5, a5, t1
	li	t1, 1
	sw	a5, 144(sp)
	slli	a5, a6, 1
	add	a5, a5, t4
	sw	a5, 140(sp)
	sd	n12, 96(sp)                     # 8-byte Folded Spill
	sllw	a5, t1, n12
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
	ld	a1, %lo(img)(n11)
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
	add	n8, a1, t2
	subw	a1, t2, a1
	sw	a1, 76(a0)
	subw	a4, a7, t0
	lw	t2, 128(a0)
	lw	t3, 136(a0)
	lw	t4, 140(a0)
	lw	n2, 132(a0)
	sw	a4, 72(a0)
	add	a1, t3, t2
	srai	a2, t4, 1
	add	a2, a2, n2
	add	n3, a2, a1
	subw	a1, a1, a2
	lw	t5, 192(a0)
	lw	t6, 200(a0)
	lw	n1, 204(a0)
	lw	n4, 196(a0)
	sw	a1, 140(a0)
	add	a2, t6, t5
	srai	a3, n1, 1
	add	a3, a3, n4
	add	n5, a3, a2
	add	a1, n3, t1
	sraiw	n6, n5, 1
	add	n6, n6, n8
	addi	n7, a1, 32
	add	a1, n7, n6
	sraiw	a1, a1, 6
	sgtz	n9, a1
	neg	n9, n9
	and	n9, n9, a1
	li	a1, 255
	sraiw	n10, n8, 1
	blt	n9, a1, .LBB12_12
# %bb.11:
	li	n9, 255
.LBB12_12:
	srai	n8, n2, 1
	srai	n4, n4, 1
	subw	n3, t1, n3
	subw	n2, n10, n5
	subw	t1, n7, n6
	sraiw	t1, t1, 6
	sgtz	n5, t1
	neg	n5, n5
	and	n5, n5, t1
	sw	n9, 0(a0)
	blt	n5, a1, .LBB12_14
# %bb.13:
	li	n5, 255
.LBB12_14:
	subw	t1, t2, t3
	subw	t2, n8, t4
	subw	t3, t5, t6
	subw	t4, n4, n1
	addi	t5, n3, 32
	add	t6, t5, n2
	sraiw	t6, t6, 6
	sgtz	n1, t6
	neg	n1, n1
	and	t6, n1, t6
	sw	n5, 192(a0)
	blt	t6, a1, .LBB12_16
# %bb.15:
	li	t6, 255
.LBB12_16:
	add	a5, a6, a5
	add	t0, t0, a7
	add	a6, t2, t1
	add	a7, t4, t3
	subw	t5, t5, n2
	sraiw	t5, t5, 6
	sgtz	n1, t5
	neg	n1, n1
	and	t5, n1, t5
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
	add	n1, t6, t5
	sraiw	n1, n1, 6
	sgtz	n2, n1
	neg	n2, n2
	and	n1, n2, n1
	sraiw	t0, t0, 1
	blt	n1, a1, .LBB12_20
# %bb.19:
	li	n1, 255
.LBB12_20:
	subw	a5, a5, a6
	subw	a6, t0, a7
	subw	t6, t6, t5
	sraiw	a7, t6, 6
	sgtz	t0, a7
	neg	t0, t0
	and	t5, t0, a7
	sw	n1, 4(a0)
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
	ld	n5, %lo(img)(a2)
	lui	a2, 3
	addiw	a2, a2, 326
	add	a2, n5, a2
	ld	a3, 1530(a2)
	slli	a4, a0, 3
	sd	a4, 40(sp)                      # 8-byte Folded Spill
	add	a3, a3, a4
	lw	n3, 44(n5)
	ld	a3, 8(a3)
	lui	a6, 8
	add	a6, n5, a6
	bltz	n3, .LBB13_2
# %bb.1:
	lui	a4, %hi(QP_SCALE_CR)
	addi	a4, a4, %lo(QP_SCALE_CR)
	add	a4, a4, n3
	lbu	n3, 0(a4)
	li	a4, 171
	mul	a4, n3, a4
	srli	n8, a4, 10
	j	.LBB13_3
.LBB13_2:
	negw	a4, n3
	slli	a4, a4, 32
	lui	a5, 699051
	addi	a5, a5, -1365
	slli	a5, a5, 32
	mulhu	a4, a4, a5
	srli	a4, a4, 34
	neg	n8, a4
.LBB13_3:
	sd	a1, 8(sp)                       # 8-byte Folded Spill
	li	n6, 0
	addi	t3, sp, 376
	ld	a1, -1192(a6)
	sd	a1, 136(sp)                     # 8-byte Folded Spill
	lw	a1, 12(n5)
	sd	a1, 112(sp)                     # 8-byte Folded Spill
	ld	a1, 0(a3)
	sd	a1, 72(sp)                      # 8-byte Folded Spill
	ld	a1, 8(a3)
	sd	a1, 64(sp)                      # 8-byte Folded Spill
	addi	a3, sp, 168
	addi	n2, sp, 248
	addi	a4, sp, 264
	addi	n13, sp, 184
	addi	a5, sp, 200
	addi	n4, sp, 216
	addi	a6, sp, 232
	addi	n1, sp, 280
	addi	a7, sp, 296
	addi	t0, sp, 392
	addi	t6, sp, 312
	addi	t1, sp, 328
	addi	t5, sp, 344
	addi	t2, sp, 360
	lui	t4, %hi(lrec_uv)
	ld	n7, %lo(lrec_uv)(t4)
	sd	n8, 144(sp)                     # 8-byte Folded Spill
	addi	n8, n8, 15
	li	t4, 1
	sd	n8, 128(sp)                     # 8-byte Folded Spill
	sllw	t4, t4, n8
	ld	a1, 40(sp)                      # 8-byte Folded Reload
	add	n7, n7, a1
	ld	n7, 0(n7)
	addi	n8, sp, 280
	addi	n9, a2, 526
	li	n10, 8
	mv	n11, a2
.LBB13_4:                               # =>This Inner Loop Header: Depth=1
	lhu	n12, -14(n11)
	sw	n12, -128(n8)
	lw	n12, 164(n5)
	add	n12, n6, n12
	slli	n12, n12, 3
	add	n12, n7, n12
	lw	n14, 160(n5)
	ld	n12, 0(n12)
	slli	n14, n14, 2
	add	n12, n12, n14
	lw	n12, 0(n12)
	lhu	n14, -12(n11)
	sw	n12, -28(n9)
	sw	n14, -96(n8)
	lw	n12, 164(n5)
	add	n12, n6, n12
	slli	n12, n12, 3
	add	n12, n7, n12
	lw	n14, 160(n5)
	ld	n12, 0(n12)
	slli	n14, n14, 2
	add	n12, n12, n14
	lw	n12, 4(n12)
	lhu	n14, -10(n11)
	sw	n12, -24(n9)
	sw	n14, -64(n8)
	lw	n12, 164(n5)
	add	n12, n6, n12
	slli	n12, n12, 3
	add	n12, n7, n12
	lw	n14, 160(n5)
	ld	n12, 0(n12)
	slli	n14, n14, 2
	add	n12, n12, n14
	lw	n12, 8(n12)
	lhu	n14, -8(n11)
	sw	n12, -20(n9)
	sw	n14, -32(n8)
	lw	n12, 164(n5)
	add	n12, n6, n12
	slli	n12, n12, 3
	add	n12, n7, n12
	lw	n14, 160(n5)
	ld	n12, 0(n12)
	slli	n14, n14, 2
	add	n12, n12, n14
	lw	n12, 12(n12)
	lhu	n14, -6(n11)
	sw	n12, -16(n9)
	sw	n14, 0(n8)
	lw	n12, 164(n5)
	add	n12, n6, n12
	slli	n12, n12, 3
	add	n12, n7, n12
	lw	n14, 160(n5)
	ld	n12, 0(n12)
	slli	n14, n14, 2
	add	n12, n12, n14
	lw	n12, 16(n12)
	lhu	n14, -4(n11)
	sw	n12, -12(n9)
	sw	n14, 32(n8)
	lw	n12, 164(n5)
	add	n12, n6, n12
	slli	n12, n12, 3
	add	n12, n7, n12
	lw	n14, 160(n5)
	ld	n12, 0(n12)
	slli	n14, n14, 2
	add	n12, n12, n14
	lw	n12, 20(n12)
	lhu	n14, -2(n11)
	sw	n12, -8(n9)
	sw	n14, 64(n8)
	lw	n12, 164(n5)
	add	n12, n6, n12
	slli	n12, n12, 3
	add	n12, n7, n12
	lw	n14, 160(n5)
	ld	n12, 0(n12)
	slli	n14, n14, 2
	add	n12, n12, n14
	lw	n12, 24(n12)
	lhu	n14, 0(n11)
	sw	n12, -4(n9)
	sw	n14, 96(n8)
	lw	n12, 164(n5)
	add	n12, n6, n12
	slli	n12, n12, 3
	add	n12, n7, n12
	lw	n14, 160(n5)
	ld	n12, 0(n12)
	slli	n14, n14, 2
	add	n12, n12, n14
	lw	n12, 28(n12)
	sw	n12, 0(n9)
	addi	n6, n6, 1
	addi	n11, n11, 32
	addi	n8, n8, 4
	addi	n9, n9, 64
	bne	n6, n10, .LBB13_4
# %bb.5:
	li	n15, 0
	lui	n5, 174763
	addiw	n5, n5, -1365
	mul	n5, n3, n5
	srli	n6, n5, 63
	srli	n5, n5, 32
	add	n5, n5, n6
	li	n6, 6
	mul	n5, n5, n6
	subw	n3, n3, n5
	addi	n5, sp, 152
	li	n14, 1
	addi	n6, sp, 248
	addi	n7, sp, 184
	addi	s0, sp, 216
	addi	n9, sp, 280
	addi	n10, sp, 376
	addi	n11, sp, 312
	addi	n12, sp, 344
	addi	n19, sp, 152
.LBB13_6:                               # =>This Inner Loop Header: Depth=1
	lw	n16, 0(n19)
	lw	n17, 0(n2)
	lw	n18, 0(n13)
	lw	n20, 0(n4)
	slli	n21, n15, 2
	add	n15, n17, n16
	subw	n16, n16, n17
	add	n17, n20, n18
	subw	n20, n18, n20
	add	n22, n17, n15
	subw	n15, n15, n17
	sw	n15, 0(n4)
	slli	n17, n16, 1
	slli	n15, n20, 1
	subw	n15, n16, n15
	sw	n15, 0(n2)
	addi	n15, n21, 4
	add	n23, n5, n15
	lw	n16, 0(n23)
	add	n18, n6, n15
	lw	n24, 0(n18)
	add	n25, n7, n15
	lw	n26, 0(n25)
	add	n27, s0, n15
	lw	n28, 0(n27)
	add	n20, n17, n20
	add	n17, n24, n16
	subw	n24, n16, n24
	add	n16, n28, n26
	subw	n26, n26, n28
	add	n28, n16, n17
	subw	n29, n17, n16
	slli	n16, n24, 1
	add	n30, n16, n26
	slli	n26, n26, 1
	addi	n16, n21, 8
	add	n31, n5, n16
	lw	n17, 0(n31)
	add	s1, n6, n16
	lw	s2, 0(s1)
	add	s3, n7, n16
	lw	s4, 0(s3)
	add	s5, s0, n16
	lw	s6, 0(s5)
	subw	n24, n24, n26
	add	n26, s2, n17
	subw	s2, n17, s2
	add	n17, s6, s4
	subw	s4, s4, s6
	add	s6, n17, n26
	subw	n26, n26, n17
	slli	n17, s2, 1
	add	s7, n17, s4
	slli	s4, s4, 1
	addi	n17, n21, 12
	add	n21, n5, n17
	lw	s8, 0(n21)
	add	s9, n6, n17
	lw	s10, 0(s9)
	add	s11, n7, n17
	lw	ra, 0(s11)
	add	n8, s0, n17
	lw	a1, 0(n8)
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
	add	s8, ra, n22
	subw	n22, n22, ra
	add	ra, s6, n28
	subw	n28, n28, s6
	add	s6, ra, s8
	sw	s6, 0(n19)
	subw	n19, s8, ra
	sw	n19, 0(n31)
	slli	n19, n22, 1
	add	n19, n19, n28
	sw	n19, 0(n23)
	slli	n28, n28, 1
	subw	n19, n22, n28
	sw	n19, 0(n21)
	add	n19, s10, n20
	subw	n20, n20, s10
	add	n21, s7, n30
	subw	n22, n30, s7
	add	n23, n21, n19
	sw	n23, 0(n13)
	subw	n13, n19, n21
	sw	n13, 0(s3)
	slli	n13, n20, 1
	add	n13, n13, n22
	sw	n13, 0(n25)
	lw	n13, 0(n4)
	slli	n22, n22, 1
	subw	n19, n20, n22
	sw	n19, 0(s11)
	add	n19, s4, n13
	subw	n13, n13, s4
	add	n20, n26, n29
	subw	n21, n29, n26
	add	n22, n20, n19
	sw	n22, 0(n4)
	subw	n4, n19, n20
	sw	n4, 0(s5)
	slli	n4, n13, 1
	add	n4, n4, n21
	sw	n4, 0(n27)
	lw	n4, 0(n2)
	slli	n21, n21, 1
	subw	n13, n13, n21
	sw	n13, 0(n8)
	add	n8, a1, n4
	subw	a1, n4, a1
	add	n4, s2, n24
	subw	n13, n24, s2
	add	n19, n4, n8
	sw	n19, 0(n2)
	subw	n2, n8, n4
	sw	n2, 0(s1)
	slli	n2, a1, 1
	add	n2, n2, n13
	sw	n2, 0(n18)
	slli	n13, n13, 1
	subw	a1, a1, n13
	lw	n2, 0(n1)
	lw	n4, 0(t3)
	lw	n8, 0(t6)
	lw	n13, 0(t5)
	sw	a1, 0(s9)
	add	a1, n4, n2
	subw	n2, n2, n4
	add	n4, n13, n8
	subw	n8, n8, n13
	add	n13, n4, a1
	subw	a1, a1, n4
	sw	a1, 0(t5)
	slli	a1, n2, 1
	slli	n4, n8, 1
	subw	n2, n2, n4
	sw	n2, 0(t3)
	add	n4, n9, n15
	lw	n18, 0(n4)
	add	n2, n10, n15
	lw	n19, 0(n2)
	add	n20, n11, n15
	lw	n21, 0(n20)
	add	n15, n12, n15
	lw	n22, 0(n15)
	add	a1, a1, n8
	add	n8, n19, n18
	subw	n18, n18, n19
	add	n19, n22, n21
	subw	n21, n21, n22
	add	n22, n19, n8
	subw	n8, n8, n19
	slli	n19, n18, 1
	add	n19, n19, n21
	slli	n21, n21, 1
	add	n23, n9, n16
	lw	n24, 0(n23)
	add	n25, n10, n16
	lw	n26, 0(n25)
	add	n27, n11, n16
	lw	n28, 0(n27)
	add	n16, n12, n16
	lw	n29, 0(n16)
	subw	n18, n18, n21
	add	n21, n26, n24
	subw	n24, n24, n26
	add	n26, n29, n28
	subw	n28, n28, n29
	add	n29, n26, n21
	subw	n21, n21, n26
	slli	n26, n24, 1
	add	n26, n26, n28
	slli	n28, n28, 1
	add	n30, n9, n17
	lw	n31, 0(n30)
	add	s1, n10, n17
	lw	s2, 0(s1)
	add	s3, n11, n17
	lw	s4, 0(s3)
	add	n17, n12, n17
	lw	s5, 0(n17)
	subw	n24, n24, n28
	add	n28, s2, n31
	subw	n31, n31, s2
	add	s2, s5, s4
	subw	s4, s4, s5
	add	s5, s2, n28
	subw	n28, n28, s2
	slli	s2, n31, 1
	add	s2, s2, s4
	slli	s4, s4, 1
	subw	n31, n31, s4
	add	s4, s5, n13
	subw	n13, n13, s5
	add	s5, n29, n22
	subw	n22, n22, n29
	add	n29, s5, s4
	sw	n29, 0(n1)
	subw	n1, s4, s5
	sw	n1, 0(n23)
	slli	n1, n13, 1
	add	n1, n1, n22
	sw	n1, 0(n4)
	slli	n22, n22, 1
	subw	n1, n13, n22
	sw	n1, 0(n30)
	add	n1, s2, a1
	subw	a1, a1, s2
	add	n4, n26, n19
	subw	n13, n19, n26
	add	n19, n4, n1
	sw	n19, 0(t6)
	subw	t6, n1, n4
	sw	t6, 0(n27)
	slli	t6, a1, 1
	add	t6, t6, n13
	sw	t6, 0(n20)
	lw	t6, 0(t5)
	slli	n13, n13, 1
	subw	a1, a1, n13
	sw	a1, 0(s3)
	add	a1, n28, t6
	subw	t6, t6, n28
	add	n1, n21, n8
	subw	n4, n8, n21
	add	n8, n1, a1
	sw	n8, 0(t5)
	subw	a1, a1, n1
	sw	a1, 0(n16)
	slli	a1, t6, 1
	add	a1, a1, n4
	sw	a1, 0(n15)
	lw	a1, 0(t3)
	slli	n4, n4, 1
	subw	t5, t6, n4
	sw	t5, 0(n17)
	add	t5, n31, a1
	subw	a1, a1, n31
	add	t6, n24, n18
	subw	n1, n18, n24
	add	n4, t6, t5
	sw	n4, 0(t3)
	subw	t5, t5, t6
	sw	t5, 0(n25)
	slli	t3, a1, 1
	add	t3, t3, n1
	sw	t3, 0(n2)
	slli	n1, n1, 1
	subw	a1, a1, n1
	sw	a1, 0(s1)
	andi	a1, n14, 1
	li	n15, 4
	mv	n19, a3
	mv	n2, a4
	mv	n13, a5
	mv	n4, a6
	mv	n1, a7
	mv	t3, t0
	mv	t6, t1
	mv	t5, t2
	li	n14, 0
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
	slli	n3, n3, 6
	lui	a1, %hi(quant_coef)
	addi	a1, a1, %lo(quant_coef)
	add	a1, a1, n3
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
	add	a0, a0, n3
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
	ld	n20, 64(sp)                     # 8-byte Folded Reload
	add	n20, a1, n20
	add	s7, n20, s7
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
	add	n12, n20, a7
	add	n10, n12, a2
	lw	a7, 0(n10)
	addi	n6, n12, 64
	add	n4, n6, a2
	lw	t1, 0(n4)
	addi	n1, n12, 128
	add	t5, n1, a2
	lw	t2, 0(t5)
	addi	t6, n12, 192
	add	t0, t6, a2
	lw	t3, 0(t0)
	add	t4, t2, a7
	subw	a7, a7, t2
	srli	t2, t1, 1
	subw	t2, t2, t3
	srli	t3, t3, 1
	add	t1, t3, t1
	add	t3, t1, t4
	sw	t3, 0(n10)
	subw	t1, t4, t1
	sw	t1, 0(t0)
	add	t1, t2, a7
	sw	t1, 0(n4)
	subw	a7, a7, t2
	sw	a7, 0(t5)
	add	n7, n12, a3
	lw	t1, 0(n7)
	add	n2, n6, a3
	add	t3, n1, a3
	lw	t2, 0(t3)
	lw	t4, 0(n2)
	add	a7, t6, a3
	lw	n3, 0(a7)
	add	n5, t2, t1
	subw	t1, t1, t2
	srli	t2, t4, 1
	subw	t2, t2, n3
	srli	n3, n3, 1
	add	t4, n3, t4
	add	n3, t4, n5
	sw	n3, 0(n7)
	subw	t4, n5, t4
	sw	t4, 0(a7)
	add	t4, t2, t1
	sw	t4, 0(n2)
	subw	t1, t1, t2
	sw	t1, 0(t3)
	add	n9, n12, a4
	lw	t2, 0(n9)
	add	n3, n6, a4
	add	t4, n1, a4
	lw	n5, 0(t4)
	lw	n8, 0(n3)
	add	t1, t6, a4
	lw	n11, 0(t1)
	add	n14, n5, t2
	subw	t2, t2, n5
	srai	n5, n8, 1
	subw	n5, n5, n11
	srai	n11, n11, 1
	add	n8, n11, n8
	add	n13, n8, n14
	sw	n13, 0(n9)
	subw	n8, n14, n8
	sw	n8, 0(t1)
	add	n8, n5, t2
	sw	n8, 0(n3)
	subw	t2, t2, n5
	sw	t2, 0(t4)
	add	n12, n12, a5
	lw	n5, 0(n12)
	add	n6, n6, a5
	add	n1, n1, a5
	lw	n11, 0(n1)
	lw	n14, 0(n6)
	add	t2, t6, a5
	lw	t6, 0(t2)
	add	n15, n11, n5
	subw	n5, n5, n11
	srai	n11, n14, 1
	subw	n17, n11, t6
	srai	t6, t6, 1
	add	t6, t6, n14
	add	n14, t6, n15
	subw	t6, n15, t6
	sw	t6, 0(t2)
	add	n11, n17, n5
	lw	n15, 0(n10)
	sw	n11, 0(n6)
	lw	n16, 0(n7)
	subw	n5, n5, n17
	add	t6, n13, n15
	sraiw	n17, n14, 1
	add	n17, n17, n16
	addi	n18, t6, 32
	add	t6, n18, n17
	sraiw	t6, t6, 6
	sgtz	n19, t6
	neg	n19, n19
	and	n19, n19, t6
	li	t6, 255
	sw	n5, 0(n1)
	blt	n19, t6, .LBB13_51
# %bb.50:                               #   in Loop: Header=BB13_49 Depth=2
	li	n19, 255
.LBB13_51:                              #   in Loop: Header=BB13_49 Depth=2
	subw	n17, n18, n17
	sraiw	n17, n17, 6
	sgtz	n18, n17
	neg	n18, n18
	and	n17, n18, n17
	sw	n19, 0(n10)
	blt	n17, t6, .LBB13_53
# %bb.52:                               #   in Loop: Header=BB13_49 Depth=2
	li	n17, 255
.LBB13_53:                              #   in Loop: Header=BB13_49 Depth=2
	subw	n13, n15, n13
	srli	n10, n16, 1
	subw	n10, n10, n14
	addi	n13, n13, 32
	add	n14, n13, n10
	sraiw	n14, n14, 6
	sgtz	n15, n14
	neg	n15, n15
	and	n14, n15, n14
	sw	n17, 0(n12)
	blt	n14, t6, .LBB13_55
# %bb.54:                               #   in Loop: Header=BB13_49 Depth=2
	li	n14, 255
.LBB13_55:                              #   in Loop: Header=BB13_49 Depth=2
	subw	n10, n13, n10
	sraiw	n10, n10, 6
	sgtz	n12, n10
	neg	n12, n12
	and	n12, n12, n10
	sw	n14, 0(n7)
	blt	n12, t6, .LBB13_57
# %bb.56:                               #   in Loop: Header=BB13_49 Depth=2
	li	n12, 255
.LBB13_57:                              #   in Loop: Header=BB13_49 Depth=2
	lw	n7, 0(n4)
	lw	n10, 0(n2)
	add	n14, n8, n7
	sraiw	n13, n11, 1
	add	n13, n13, n10
	addi	n14, n14, 32
	add	n15, n14, n13
	sraiw	n15, n15, 6
	sgtz	n16, n15
	neg	n16, n16
	and	n15, n16, n15
	sw	n12, 0(n9)
	blt	n15, t6, .LBB13_59
# %bb.58:                               #   in Loop: Header=BB13_49 Depth=2
	li	n15, 255
.LBB13_59:                              #   in Loop: Header=BB13_49 Depth=2
	subw	n9, n14, n13
	sraiw	n9, n9, 6
	sgtz	n12, n9
	neg	n12, n12
	and	n9, n12, n9
	sw	n15, 0(n4)
	blt	n9, t6, .LBB13_61
# %bb.60:                               #   in Loop: Header=BB13_49 Depth=2
	li	n9, 255
.LBB13_61:                              #   in Loop: Header=BB13_49 Depth=2
	subw	n7, n7, n8
	srli	n4, n10, 1
	subw	n4, n4, n11
	addi	n7, n7, 32
	add	n8, n7, n4
	sraiw	n8, n8, 6
	sgtz	n10, n8
	neg	n10, n10
	and	n8, n10, n8
	sw	n9, 0(n6)
	blt	n8, t6, .LBB13_63
# %bb.62:                               #   in Loop: Header=BB13_49 Depth=2
	li	n8, 255
.LBB13_63:                              #   in Loop: Header=BB13_49 Depth=2
	subw	n4, n7, n4
	sraiw	n4, n4, 6
	sgtz	n6, n4
	neg	n6, n6
	and	n7, n6, n4
	sw	n8, 0(n2)
	blt	n7, t6, .LBB13_65
# %bb.64:                               #   in Loop: Header=BB13_49 Depth=2
	li	n7, 255
.LBB13_65:                              #   in Loop: Header=BB13_49 Depth=2
	lw	n2, 0(t5)
	lw	n6, 0(t4)
	lw	n4, 0(t3)
	add	n9, n6, n2
	sraiw	n8, n5, 1
	add	n8, n8, n4
	addi	n9, n9, 32
	add	n10, n9, n8
	sraiw	n10, n10, 6
	sgtz	n11, n10
	neg	n11, n11
	and	n10, n11, n10
	sw	n7, 0(n3)
	blt	n10, t6, .LBB13_67
# %bb.66:                               #   in Loop: Header=BB13_49 Depth=2
	li	n10, 255
.LBB13_67:                              #   in Loop: Header=BB13_49 Depth=2
	subw	n3, n9, n8
	sraiw	n3, n3, 6
	sgtz	n7, n3
	neg	n7, n7
	and	n3, n7, n3
	sw	n10, 0(t5)
	blt	n3, t6, .LBB13_69
# %bb.68:                               #   in Loop: Header=BB13_49 Depth=2
	li	n3, 255
.LBB13_69:                              #   in Loop: Header=BB13_49 Depth=2
	subw	n2, n2, n6
	srli	t5, n4, 1
	subw	t5, t5, n5
	addi	n2, n2, 32
	add	n4, n2, t5
	sraiw	n4, n4, 6
	sgtz	n5, n4
	neg	n5, n5
	and	n4, n5, n4
	sw	n3, 0(n1)
	blt	n4, t6, .LBB13_71
# %bb.70:                               #   in Loop: Header=BB13_49 Depth=2
	li	n4, 255
.LBB13_71:                              #   in Loop: Header=BB13_49 Depth=2
	subw	t5, n2, t5
	sraiw	t5, t5, 6
	sgtz	n1, t5
	neg	n1, n1
	and	n3, n1, t5
	sw	n4, 0(t3)
	blt	n3, t6, .LBB13_73
# %bb.72:                               #   in Loop: Header=BB13_49 Depth=2
	li	n3, 255
.LBB13_73:                              #   in Loop: Header=BB13_49 Depth=2
	lw	t3, 0(t0)
	lw	n1, 0(t1)
	lw	t5, 0(t2)
	lw	n2, 0(a7)
	add	n5, n1, t3
	srli	n4, t5, 1
	add	n4, n4, n2
	addi	n5, n5, 32
	add	n6, n5, n4
	sraiw	n6, n6, 6
	sgtz	n7, n6
	neg	n7, n7
	and	n6, n7, n6
	sw	n3, 0(t4)
	blt	n6, t6, .LBB13_75
# %bb.74:                               #   in Loop: Header=BB13_49 Depth=2
	li	n6, 255
.LBB13_75:                              #   in Loop: Header=BB13_49 Depth=2
	subw	t4, n5, n4
	sraiw	t4, t4, 6
	sgtz	n3, t4
	neg	n3, n3
	and	t4, n3, t4
	sw	n6, 0(t0)
	blt	t4, t6, .LBB13_77
# %bb.76:                               #   in Loop: Header=BB13_49 Depth=2
	li	t4, 255
.LBB13_77:                              #   in Loop: Header=BB13_49 Depth=2
	subw	t3, t3, n1
	srli	t0, n2, 1
	subw	t0, t0, t5
	addi	t3, t3, 32
	add	t5, t3, t0
	sraiw	t5, t5, 6
	sgtz	n1, t5
	neg	n1, n1
	and	t5, n1, t5
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
	add	n1, a1, a2
	lw	a1, 160(a1)
	slli	a2, a3, 3
	add	a2, a4, a2
	ld	a3, 0(a2)
	lh	a4, 0(n1)
	slli	a1, a1, 1
	lh	a5, 256(n1)
	add	a6, a3, a1
	ld	a7, 32(a2)
	sh	a4, 0(a6)
	sh	a5, 8(a6)
	lh	a4, 16(n1)
	add	a5, a7, a1
	lh	a6, 272(n1)
	ld	t0, 8(a2)
	sh	a4, 0(a5)
	lh	a4, 64(n1)
	sh	a6, 8(a5)
	add	a5, t0, a1
	lh	a6, 320(n1)
	sh	a4, 0(a5)
	ld	a4, 40(a2)
	lh	t1, 80(n1)
	sh	a6, 8(a5)
	lh	a5, 336(n1)
	add	a6, a4, a1
	sh	t1, 0(a6)
	ld	t1, 16(a2)
	sh	a5, 8(a6)
	lh	a5, 128(n1)
	lh	a6, 384(n1)
	add	t2, t1, a1
	ld	t3, 48(a2)
	sh	a5, 0(t2)
	sh	a6, 8(t2)
	lh	a5, 144(n1)
	add	a6, t3, a1
	lh	t2, 400(n1)
	ld	t4, 24(a2)
	lh	t5, 192(n1)
	sh	a5, 0(a6)
	sh	t2, 8(a6)
	add	a5, t4, a1
	sh	t5, 0(a5)
	lh	a6, 448(n1)
	ld	t2, 56(a2)
	lh	t5, 208(n1)
	lh	t6, 464(n1)
	sh	a6, 8(a5)
	add	a5, t2, a1
	sh	t5, 0(a5)
	sh	t6, 8(a5)
	lh	a5, 4(n1)
	addi	a6, a1, 2
	lh	t5, 260(n1)
	add	a3, a3, a6
	sh	a5, 0(a3)
	lh	a5, 20(n1)
	sh	t5, 8(a3)
	lh	a3, 276(n1)
	add	a7, a7, a6
	sh	a5, 0(a7)
	lh	a5, 68(n1)
	sh	a3, 8(a7)
	lh	a3, 324(n1)
	add	t0, t0, a6
	sh	a5, 0(t0)
	lh	a5, 84(n1)
	sh	a3, 8(t0)
	lh	a3, 340(n1)
	add	a4, a4, a6
	sh	a5, 0(a4)
	lh	a5, 132(n1)
	sh	a3, 8(a4)
	lh	a3, 388(n1)
	add	t1, t1, a6
	sh	a5, 0(t1)
	lh	a4, 148(n1)
	sh	a3, 8(t1)
	lh	a3, 404(n1)
	add	t3, t3, a6
	sh	a4, 0(t3)
	lh	a4, 196(n1)
	sh	a3, 8(t3)
	add	t4, t4, a6
	lh	a3, 452(n1)
	sh	a4, 0(t4)
	lh	a4, 212(n1)
	lh	a5, 468(n1)
	sh	a3, 8(t4)
	add	a6, t2, a6
	sh	a4, 0(a6)
	sh	a5, 8(a6)
	ld	a3, 0(a2)
	lh	a4, 8(n1)
	addi	a5, a1, 4
	lh	a6, 264(n1)
	add	a7, a3, a5
	ld	t0, 32(a2)
	sh	a4, 0(a7)
	sh	a6, 8(a7)
	lh	a4, 24(n1)
	add	a6, t0, a5
	lh	a7, 280(n1)
	ld	t1, 8(a2)
	sh	a4, 0(a6)
	lh	a4, 72(n1)
	sh	a7, 8(a6)
	add	a6, t1, a5
	lh	a7, 328(n1)
	sh	a4, 0(a6)
	ld	a4, 40(a2)
	lh	t2, 88(n1)
	sh	a7, 8(a6)
	lh	a6, 344(n1)
	add	a7, a4, a5
	sh	t2, 0(a7)
	ld	t2, 16(a2)
	sh	a6, 8(a7)
	lh	a6, 136(n1)
	lh	a7, 392(n1)
	add	t3, t2, a5
	ld	t4, 48(a2)
	sh	a6, 0(t3)
	sh	a7, 8(t3)
	lh	a6, 152(n1)
	add	a7, t4, a5
	lh	t3, 408(n1)
	ld	t5, 24(a2)
	lh	t6, 200(n1)
	sh	a6, 0(a7)
	sh	t3, 8(a7)
	add	a6, t5, a5
	sh	t6, 0(a6)
	lh	a7, 456(n1)
	ld	a2, 56(a2)
	lh	t3, 216(n1)
	lh	t6, 472(n1)
	sh	a7, 8(a6)
	add	a5, a2, a5
	sh	t3, 0(a5)
	sh	t6, 8(a5)
	lh	a5, 12(n1)
	addi	a1, a1, 6
	lh	a6, 268(n1)
	add	a3, a3, a1
	sh	a5, 0(a3)
	lh	a5, 28(n1)
	sh	a6, 8(a3)
	lh	a3, 284(n1)
	add	t0, t0, a1
	sh	a5, 0(t0)
	lh	a5, 76(n1)
	sh	a3, 8(t0)
	lh	a3, 332(n1)
	add	t1, t1, a1
	sh	a5, 0(t1)
	lh	a5, 92(n1)
	sh	a3, 8(t1)
	lh	a3, 348(n1)
	add	a4, a4, a1
	sh	a5, 0(a4)
	lh	a5, 140(n1)
	sh	a3, 8(a4)
	lh	a3, 396(n1)
	add	t2, t2, a1
	sh	a5, 0(t2)
	lh	a4, 156(n1)
	sh	a3, 8(t2)
	lh	a3, 412(n1)
	add	t4, t4, a1
	sh	a4, 0(t4)
	lh	a4, 204(n1)
	sh	a3, 8(t4)
	lh	a3, 460(n1)
	add	t5, t5, a1
	sh	a4, 0(t5)
	lh	a4, 220(n1)
	sh	a3, 8(t5)
	lh	a3, 476(n1)
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
