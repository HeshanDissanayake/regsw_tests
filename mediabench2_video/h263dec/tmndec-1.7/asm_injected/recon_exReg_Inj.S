	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"recon.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	reconstruct                     # -- Begin function reconstruct
	.p2align	2
	.type	reconstruct,@function
reconstruct:                            # @reconstruct
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
	mv	s2, a1
	mv	s3, a0
	slli	a0, a0, 1
	srli	a0, a0, 60
	add	a0, s3, a0
	sraiw	a6, a0, 4
	addi	a6, a6, 1
	slli	a0, a1, 1
	srli	a0, a0, 60
	lui	a1, %hi(coded_picture_width)
	lui	a5, %hi(mv_outside_frame)
	lw	a7, %lo(mv_outside_frame)(a5)
	lw	s5, %lo(coded_picture_width)(a1)
	add	a0, s2, a0
	sraiw	a5, a0, 4
	addi	t1, a5, 1
	beqz	a7, .LBB0_2
# %bb.1:
	addiw	s4, s5, 64
	lui	a1, %hi(edgeframe)
	addi	a1, a1, %lo(edgeframe)
	j	.LBB0_3
.LBB0_2:
	lui	a1, %hi(oldrefframe)
	addi	a1, a1, %lo(oldrefframe)
	mv	s4, s5
.LBB0_3:
	ld	a0, 0(a1)
	ld	a5, 8(a1)
	sd	a5, 80(sp)                      # 8-byte Folded Spill
	ld	s1, 16(a1)
	li	a1, 360
	mul	a1, t1, a1
	lui	t0, %hi(modemap)
	addi	t0, t0, %lo(modemap)
	add	a1, t0, a1
	slli	t2, a6, 2
	add	a1, a1, t2
	lw	a6, 0(a1)
	lui	a1, %hi(adv_pred_mode)
	lw	a7, %lo(adv_pred_mode)(a1)
	bnez	a2, .LBB0_4
	j	.LBB0_106
.LBB0_4:
	sd	s1, 32(sp)                      # 8-byte Folded Spill
	lui	a1, %hi(MV)
	addi	a1, a1, %lo(MV)
	bnez	a7, .LBB0_5
	j	.LBB0_113
.LBB0_5:
	sd	a6, 8(sp)                       # 8-byte Folded Spill
	sd	t2, 16(sp)                      # 8-byte Folded Spill
	sd	t1, 24(sp)                      # 8-byte Folded Spill
	li	a2, 0
	li	a3, 0
	li	a4, 0
	addi	t1, sp, 216
	slliw	t2, s4, 2
	add	a7, s3, a0
	addi	t3, a7, 4
	addi	t4, sp, 344
	addi	t5, a7, 8
	addi	t6, a7, 7
	regsw_c	x0, 0x434(x17)		# 100010000010000110100
	add	x3, a7, t2
	addi	a5, x3, 4
	sd	a5, 72(sp)                      # 8-byte Folded Spill
	addi	a5, x3, 8
	sd	a5, 64(sp)                      # 8-byte Folded Spill
	addi	x3, x3, 7
	addi	x4, sp, 116
	regsw_c	x4, 0x180(x18)		# 100100010000110000000
	addi	x5, sp, 372
	add	x10, a7, s4
	addi	a5, x10, 8
	sd	a5, 56(sp)                      # 8-byte Folded Spill
	addi	x7, x10, 7
	addi	a7, a7, 2
	sd	a7, 48(sp)                      # 8-byte Folded Spill
	regsw_c	x13, 0x124(x8)		# 010000110100100100100
	addi	a5, x10, 2
	sd	a5, 40(sp)                      # 8-byte Folded Spill
	addi	x10, x10, 3
	lui	x11, %hi(newframe)
	li	x12, 360
	lui	x13, %hi(pb_frame)
	li	x14, 1
	regsw_c	x8, 0x12c(x16)		# 100000100000100101100
	lui	x17, %hi(mb_width)
	lui	a7, 6
	addiw	x18, a7, 1704
	lui	a7, 32
	addiw	x19, a7, 328
	add	x19, a1, x19
	lui	x20, %hi(OM)
	regsw_c	x9, 0x0(x26)		# 110100100100000000000
	addi	x20, x20, %lo(OM)
	li	x21, 4
	lui	x22, %hi(OM)
	li	x23, 2
	j	.LBB0_8
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	lbu	a5, 0(a7)
	regsw_c	x0, 0x402(x10)		# 010100000010000000010
	lw	a6, 1024(x20)
	lw	x1, 88(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 88(sp)
	lbu	a5, 1(a7)
	lw	a6, 1028(x20)
	regsw_c	x4, 0x14(x16)		# 100000010000000010100
	lw	x1, 92(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 92(sp)
	lbu	a5, 2(a7)
	lw	a6, 1032(x20)
	lw	x1, 96(sp)
	mul	a5, a6, a5
	regsw_c	x0, 0x502(x8)		# 010000000010100000010
	add	a5, x1, a5
	sw	a5, 96(sp)
	lbu	a5, 3(a7)
	lw	a6, 1036(x20)
	lw	x1, 100(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 100(sp)
	add	a7, a7, s4
	lbu	a5, 0(a7)
	regsw_c	x0, 0x402(x10)		# 010100000010000000010
	lw	a6, 1056(x20)
	lw	x1, 120(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 120(sp)
	lbu	a5, 1(a7)
	lw	a6, 1060(x20)
	regsw_c	x4, 0x14(x16)		# 100000010000000010100
	lw	x1, 124(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 124(sp)
	lbu	a5, 2(a7)
	lw	a6, 1064(x20)
	lw	x1, 128(sp)
	mul	a5, a6, a5
	regsw_c	x0, 0x502(x8)		# 010000000010100000010
	add	a5, x1, a5
	sw	a5, 128(sp)
	lbu	a5, 3(a7)
	lw	a6, 1068(x20)
	lw	x1, 132(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 132(sp)
	add	a7, a7, s4
	lbu	a5, 0(a7)
	regsw_c	x0, 0x402(x10)		# 010100000010000000010
	lw	a6, 1088(x20)
	lw	x1, 152(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 152(sp)
	lbu	a5, 1(a7)
	lw	a6, 1092(x20)
	regsw_c	x4, 0x14(x16)		# 100000010000000010100
	lw	x1, 156(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 156(sp)
	lbu	a5, 2(a7)
	lw	a6, 1096(x20)
	lw	x1, 160(sp)
	mul	a5, a6, a5
	regsw_c	x0, 0x502(x8)		# 010000000010100000010
	add	a5, x1, a5
	sw	a5, 160(sp)
	lbu	a5, 3(a7)
	lw	a6, 1100(x20)
	lw	x1, 164(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 164(sp)
	add	a7, a7, s4
	lbu	a5, 0(a7)
	regsw_c	x0, 0x402(x10)		# 010100000010000000010
	lw	a6, 1120(x20)
	lw	x1, 184(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 184(sp)
	lbu	a5, 1(a7)
	lw	a6, 1124(x20)
	regsw_c	x4, 0x14(x16)		# 100000010000000010100
	lw	x1, 188(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 188(sp)
	lbu	a5, 2(a7)
	lw	a6, 1128(x20)
	lw	x1, 192(sp)
	mul	a5, a6, a5
	regsw_c	x0, 0x502(x8)		# 010000000010100000010
	add	a5, x1, a5
	sw	a5, 192(sp)
	lbu	a5, 3(a7)
	lw	a6, 1132(x20)
	lw	x1, 196(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 196(sp)
	add	a7, a7, s4
	lbu	a5, 0(a7)
	regsw_c	x0, 0x402(x10)		# 010100000010000000010
	lw	a6, 1152(x20)
	lw	x1, 216(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 216(sp)
	lbu	a5, 1(a7)
	lw	a6, 1156(x20)
	regsw_c	x4, 0x14(x16)		# 100000010000000010100
	lw	x1, 220(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 220(sp)
	lbu	a5, 2(a7)
	lw	a6, 1160(x20)
	lw	x1, 224(sp)
	mul	a5, a6, a5
	regsw_c	x0, 0x502(x8)		# 010000000010100000010
	add	a5, x1, a5
	sw	a5, 224(sp)
	lbu	a5, 3(a7)
	lw	a6, 1164(x20)
	lw	x1, 228(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 228(sp)
	add	a7, a7, s4
	lbu	a5, 0(a7)
	regsw_c	x0, 0x402(x10)		# 010100000010000000010
	lw	a6, 1184(x20)
	lw	x1, 248(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 248(sp)
	lbu	a5, 1(a7)
	lw	a6, 1188(x20)
	regsw_c	x4, 0x14(x16)		# 100000010000000010100
	lw	x1, 252(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 252(sp)
	lbu	a5, 2(a7)
	lw	a6, 1192(x20)
	lw	x1, 256(sp)
	mul	a5, a6, a5
	regsw_c	x0, 0x502(x8)		# 010000000010100000010
	add	a5, x1, a5
	sw	a5, 256(sp)
	lbu	a5, 3(a7)
	lw	a6, 1196(x20)
	lw	x1, 260(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 260(sp)
	add	a7, a7, s4
	lbu	a5, 0(a7)
	regsw_c	x0, 0x402(x10)		# 010100000010000000010
	lw	a6, 1216(x20)
	lw	x1, 280(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 280(sp)
	lbu	a5, 1(a7)
	lw	a6, 1220(x20)
	regsw_c	x4, 0x14(x16)		# 100000010000000010100
	lw	x1, 284(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 284(sp)
	lbu	a5, 2(a7)
	lw	a6, 1224(x20)
	lw	x1, 288(sp)
	mul	a5, a6, a5
	regsw_c	x0, 0x502(x8)		# 010000000010100000010
	add	a5, x1, a5
	sw	a5, 288(sp)
	lbu	a5, 3(a7)
	lw	a6, 1228(x20)
	lw	x1, 292(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 292(sp)
	add	a7, a7, s4
	lbu	a5, 0(a7)
	regsw_c	x0, 0x402(x10)		# 010100000010000000010
	lw	a6, 1248(x20)
	lw	x1, 312(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 312(sp)
	lbu	a5, 1(a7)
	lw	a6, 1252(x20)
	regsw_c	x4, 0x14(x16)		# 100000010000000010100
	lw	x1, 316(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 316(sp)
	lbu	a5, 2(a7)
	lw	a6, 1256(x20)
	lw	x1, 320(sp)
	mul	a5, a6, a5
	regsw_c	x0, 0x400(x8)		# 010000000010000000000
	add	a5, x1, a5
	sw	a5, 320(sp)
	lbu	a5, 3(a7)
	lw	a6, 1260(x20)
	lw	a7, 324(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 324(sp)
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	lw	a5, 88(sp)
	regsw_c	x2, 0x0(x9)		# 010010001000000000000
	mulw	a6, x26, s5
	add	a6, x27, a6
	add	a6, a6, x25
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 0(a6)
	lw	a5, 92(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 1(a6)
	lw	a5, 96(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 2(a6)
	lw	a5, 100(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 3(a6)
	lw	a5, 104(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 4(a6)
	lw	a5, 108(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 5(a6)
	lw	a5, 112(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 6(a6)
	lw	a5, 116(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 7(a6)
	lw	a5, 120(sp)
	add	a6, a6, s5
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 0(a6)
	lw	a5, 124(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 1(a6)
	lw	a5, 128(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 2(a6)
	lw	a5, 132(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 3(a6)
	lw	a5, 136(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 4(a6)
	lw	a5, 140(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 5(a6)
	lw	a5, 144(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 6(a6)
	lw	a5, 148(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 7(a6)
	lw	a5, 152(sp)
	add	a6, a6, s5
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 0(a6)
	lw	a5, 156(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 1(a6)
	lw	a5, 160(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 2(a6)
	lw	a5, 164(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 3(a6)
	lw	a5, 168(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 4(a6)
	lw	a5, 172(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 5(a6)
	lw	a5, 176(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 6(a6)
	lw	a5, 180(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 7(a6)
	lw	a5, 184(sp)
	add	a6, a6, s5
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 0(a6)
	lw	a5, 188(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 1(a6)
	lw	a5, 192(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 2(a6)
	lw	a5, 196(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 3(a6)
	lw	a5, 200(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 4(a6)
	lw	a5, 204(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 5(a6)
	lw	a5, 208(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 6(a6)
	lw	a5, 212(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 7(a6)
	lw	a5, 216(sp)
	add	a6, a6, s5
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 0(a6)
	lw	a5, 220(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 1(a6)
	lw	a5, 224(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 2(a6)
	lw	a5, 228(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 3(a6)
	lw	a5, 232(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 4(a6)
	lw	a5, 236(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 5(a6)
	lw	a5, 240(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 6(a6)
	lw	a5, 244(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 7(a6)
	lw	a5, 248(sp)
	add	a6, a6, s5
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 0(a6)
	lw	a5, 252(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 1(a6)
	lw	a5, 256(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 2(a6)
	lw	a5, 260(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 3(a6)
	lw	a5, 264(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 4(a6)
	lw	a5, 268(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 5(a6)
	lw	a5, 272(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 6(a6)
	lw	a5, 276(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 7(a6)
	lw	a5, 280(sp)
	add	a6, a6, s5
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 0(a6)
	lw	a5, 284(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 1(a6)
	lw	a5, 288(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 2(a6)
	lw	a5, 292(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 3(a6)
	lw	a5, 296(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 4(a6)
	lw	a5, 300(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 5(a6)
	lw	a5, 304(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 6(a6)
	lw	a5, 308(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 7(a6)
	lw	a5, 312(sp)
	add	a6, a6, s5
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 0(a6)
	lw	a5, 316(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 1(a6)
	lw	a5, 320(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 2(a6)
	lw	a5, 324(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 3(a6)
	lw	a5, 328(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 4(a6)
	lw	a5, 332(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 5(a6)
	lw	a5, 336(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 6(a6)
	lw	a5, 340(sp)
	addi	a5, a5, 4
	srli	a5, a5, 3
	sb	a5, 7(a6)
	addi	a3, a3, 1
	addi	a2, a2, 4
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	bne	a4, x21, .LBB0_8
	j	.LBB0_101
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_74 Depth 2
                                        #     Child Loop BB0_92 Depth 2
                                        #     Child Loop BB0_46 Depth 2
                                        #     Child Loop BB0_78 Depth 2
                                        #     Child Loop BB0_94 Depth 2
                                        #     Child Loop BB0_52 Depth 2
                                        #     Child Loop BB0_82 Depth 2
                                        #     Child Loop BB0_96 Depth 2
                                        #     Child Loop BB0_58 Depth 2
                                        #     Child Loop BB0_86 Depth 2
                                        #     Child Loop BB0_98 Depth 2
                                        #     Child Loop BB0_64 Depth 2
                                        #     Child Loop BB0_90 Depth 2
                                        #     Child Loop BB0_100 Depth 2
                                        #     Child Loop BB0_70 Depth 2
	slli	a7, a4, 3
	andi	a7, a7, 8
	regsw_c	x1, 0x1b6(x16)		# 100000000100110110110
	addw	x25, a7, s3
	slli	a7, a4, 2
	andi	a7, a7, 8
	addw	x26, a7, s2
	sraiw	x6, x25, 4
	addi	x29, x6, 1
	sraiw	x9, x26, 4
	regsw_c	x27, 0x4e6(x27)		# 110111101110011100110
	slli	x30, x29, 2
	mul	x8, x9, x12
	add	x8, t0, x8
	addi	x2, x8, 360
	add	a7, x2, x30
	lw	x31, 0(a7)
	ld	x27, %lo(newframe)(x11)
	regsw_c	x5, 0x5f6(x11)		# 010110010110111110110
	addi	a7, x9, 1
	addi	x31, x31, -2
	seqz	s6, x31
	slli	x1, x6, 2
	add	x1, x2, x1
	lw	x28, 0(x1)
	addi	x1, x6, 2
	regsw_c	x29, 0x496(x27)		# 110111110110010010110
	slli	x24, x1, 2
	add	x2, x2, x24
	lw	x2, 0(x2)
	addiw	x24, x28, -3
	lw	s0, %lo(pb_frame)(x13)
	sltiu	s1, x24, 2
	addiw	x24, x2, -3
	regsw_c	x1, 0x280(x24)		# 110000000101010000000
	sltiu	x24, x24, 2
	seqz	s0, s0
	and	s1, s0, s1
	and	x24, s0, x24
	blt	x14, a4, .LBB0_20
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x4, 0x0(x31)		# 111110010000000000000
	add	x8, x8, x30
	lw	x8, 0(x8)
	addiw	s7, x8, -3
	sltiu	s7, s7, 2
	and	s0, s0, s7
	beqz	a4, .LBB0_25
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	beq	a4, x14, .LBB0_11
	j	.LBB0_130
.LBB0_11:                               #   in Loop: Header=BB0_8 Depth=1
	mv	s7, a7
	bnez	s0, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	mv	s7, x9
.LBB0_13:                               #   in Loop: Header=BB0_8 Depth=1
	li	a5, 16
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bgeu	x26, a5, .LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_8 Depth=1
	li	s7, 1
.LBB0_15:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x13, 0x410(x25)		# 110010110110000010000
	seqz	x6, x31
	slli	s8, x6, 1
	sltiu	x9, x26, 16
	or	x9, x9, s0
	mv	s9, s8
	bnez	x9, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x0, 0x0(x25)		# 110010000000000000000
	addi	x8, x8, -2
	seqz	s9, x8
	slli	s9, s9, 2
.LBB0_17:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x29, 0x690(x27)		# 110111110111010010000
	lw	x8, %lo(mb_width)(x17)
	xor	x8, x29, x8
	seqz	x8, x8
	or	x8, x8, x24
	mv	s1, x29
	bnez	x8, .LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x4, 0x0(x25)		# 110010010000000000000
	addi	x2, x2, -2
	seqz	s8, x2
	mv	s1, x1
.LBB0_19:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	slli	s0, x6, 2
	j	.LBB0_42
.LBB0_20:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	beq	a4, x23, .LBB0_29
# %bb.21:                               #   in Loop: Header=BB0_8 Depth=1
	li	a5, 3
	beq	a4, a5, .LBB0_22
	j	.LBB0_130
.LBB0_22:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x5, 0x7ba(x27)		# 110110010111110111010
	lw	x8, %lo(mb_width)(x17)
	seqz	x6, x31
	slli	s0, x6, 2
	xor	x8, x29, x8
	seqz	x8, x8
	or	x8, x8, x24
	mv	s1, x29
	mv	s8, s0
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bnez	x8, .LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x28, 0x480(x26)		# 110101110010010000000
	addi	x2, x2, -2
	snez	x2, x2
	addi	x2, x2, -1
	andi	s8, x2, 3
	mv	s1, x1
.LBB0_24:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x4, 0x0(x11)		# 010110010000000000000
	slli	s9, x6, 1
	negw	x1, x6
	andi	s6, x1, 3
	mv	s7, a7
	j	.LBB0_42
.LBB0_25:                               #   in Loop: Header=BB0_8 Depth=1
	mv	s7, a7
	bnez	s0, .LBB0_33
# %bb.26:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x8, 0x0(x11)		# 010110100000000000000
	mv	s7, x9
	mv	x2, x29
	mv	x1, s6
	beqz	s1, .LBB0_34
.LBB0_27:                               #   in Loop: Header=BB0_8 Depth=1
	li	a5, 16
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bgeu	x26, a5, .LBB0_35
.LBB0_28:                               #   in Loop: Header=BB0_8 Depth=1
	li	s7, 1
	regsw_c	x0, 0x400(x27)		# 110110000010000000000
	sltiu	x6, x26, 16
	or	x6, x6, s0
	mv	s9, s6
	beqz	x6, .LBB0_36
	j	.LBB0_37
.LBB0_29:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x1, 0x500(x8)		# 010000000110100000000
	seqz	s8, x31
	negw	s0, s8
	andi	s0, s0, 3
	mv	x2, x29
	mv	x1, s0
	bnez	s1, .LBB0_31
# %bb.30:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x13, 0x400(x27)		# 110110110110000000000
	addi	x28, x28, -2
	seqz	x1, x28
	slli	x1, x1, 2
	mv	x2, x6
.LBB0_31:                               #   in Loop: Header=BB0_8 Depth=1
	slli	s8, s8, 2
	li	a5, 15
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	bltu	a5, x25, .LBB0_39
# %bb.32:                               #   in Loop: Header=BB0_8 Depth=1
	li	s1, 1
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	li	x29, 1
	mv	s7, a7
	mv	s9, s6
	mv	s6, s0
	j	.LBB0_42
.LBB0_33:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x0, 0x0(x26)		# 110100000000000000000
	mv	x2, x29
	mv	x1, s6
	bnez	s1, .LBB0_27
.LBB0_34:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x13, 0x410(x27)		# 110110110110000010000
	addi	x28, x28, -2
	seqz	x1, x28
	slli	x1, x1, 1
	mv	x2, x6
	li	a5, 16
	bltu	x26, a5, .LBB0_28
.LBB0_35:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x0, 0x400(x27)		# 110110000010000000000
	sltiu	x6, x26, 16
	or	x6, x6, s0
	mv	s9, s6
	bnez	x6, .LBB0_37
.LBB0_36:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x28, 0x400(x26)		# 110101110010000000000
	addi	x8, x8, -2
	snez	x6, x8
	addi	x6, x6, -1
	andi	s9, x6, 3
.LBB0_37:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x0, 0x8(x8)		# 010000000000000001000
	seqz	s8, x31
	negw	s0, s8
	andi	s0, s0, 3
	slli	s8, s8, 1
	li	a5, 15
	bltu	a5, x25, .LBB0_40
# %bb.38:                               #   in Loop: Header=BB0_8 Depth=1
	li	s1, 1
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	li	x29, 1
	j	.LBB0_42
.LBB0_39:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x0, 0x0(x11)		# 010110000000000000000
	mv	s1, x29
	mv	x29, x2
	mv	s7, a7
	mv	s9, s6
	j	.LBB0_41
.LBB0_40:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x0, 0x0(x11)		# 010110000000000000000
	mv	s1, x29
	mv	x29, x2
.LBB0_41:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	mv	s6, x1
.LBB0_42:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x1, 0x3b1(x19)		# 100110000101110110001
	slli	x1, a3, 3
	andi	x28, x1, 8
	addiw	a4, a4, 1
	snez	x1, x31
	addi	x1, x1, -1
	and	x1, x1, a4
	mul	a7, a7, x12
	regsw_c	x15, 0x7b7(x30)		# 111100111111110110111
	mul	x1, x1, x18
	add	x2, a1, a7
	add	x2, x2, x30
	add	x2, x2, x1
	lw	x2, 0(x2)
	add	x6, x19, a7
	add	x6, x6, x30
	regsw_c	x11, 0x37f(x31)		# 111110101101101111111
	add	x1, x6, x1
	lw	x1, 0(x1)
	mul	x6, s7, x12
	mul	x8, s9, x18
	add	x9, a1, x6
	add	x9, x9, x30
	add	x9, x9, x8
	regsw_c	x31, 0x6ac(x11)		# 010111111111010101100
	lw	s11, 0(x9)
	add	x6, x19, x6
	add	x6, x6, x30
	add	x6, x6, x8
	lw	ra, 0(x6)
	mul	x6, s0, x18
	add	x8, a1, a7
	regsw_c	x21, 0x5fa(x31)		# 111111010110111111010
	add	x8, x8, x30
	add	x8, x8, x6
	lw	s9, 0(x8)
	add	x8, x19, a7
	add	x8, x8, x30
	add	x6, x8, x6
	lw	s10, 0(x6)
	regsw_c	x1, 0x5d6(x22)		# 101100000110111010110
	mul	x6, s8, x18
	add	x8, a1, a7
	slli	s1, s1, 2
	add	x8, x8, s1
	add	x8, x8, x6
	lw	s7, 0(x8)
	add	x8, x19, a7
	regsw_c	x21, 0x337(x27)		# 110111010101100110111
	add	x8, x8, s1
	add	x6, x8, x6
	lw	s8, 0(x6)
	mul	x6, s6, x18
	add	x8, a1, a7
	slli	x29, x29, 2
	add	x8, x8, x29
	regsw_c	x4, 0x245(x31)		# 111110010001001000101
	add	x8, x8, x6
	lw	x30, 0(x8)
	add	a7, x19, a7
	add	a7, a7, x29
	add	a7, a7, x6
	lw	s6, 0(a7)
	add	x31, a0, x25
	regsw_c	x5, 0x556(x11)		# 010110010110101010110
	srai	a7, x2, 1
	andi	x2, x2, 1
	srai	s1, x1, 1
	andi	x1, x1, 1
	add	x6, s1, x26
	mulw	s0, x6, s4
	add	x6, x31, a7
	regsw_c	x24, 0x400(x11)		# 010111100010000000000
	add	s0, x6, s0
	or	x6, x2, x1
	andi	x29, a2, -8
	beqz	x6, .LBB0_47
# %bb.43:                               #   in Loop: Header=BB0_8 Depth=1
	add	s1, s2, s1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	beqz	x2, .LBB0_44
	j	.LBB0_71
.LBB0_44:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bnez	x1, .LBB0_45
	j	.LBB0_71
.LBB0_45:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x9, 0x122(x18)		# 100100100100100100010
	lbu	x9, 1(s0)
	lbu	x8, 2(s0)
	lbu	x6, 3(s0)
	lbu	x2, 4(s0)
	lbu	x1, 5(s0)
	lbu	x24, 6(s0)
	add	a7, x28, a7
	regsw_c	x0, 0x10(x4)		# 001000000000000010000
	add	s1, s1, x29
	mulw	s1, s4, s1
	add	a7, t6, a7
	add	a5, a7, s1
	addi	a7, sp, 88
	mv	s0, x20
.LBB0_46:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	s1, a5, s4
	lbu	a6, -7(a5)
	regsw_c	x2, 0x8(x18)		# 100100001000000001000
	lbu	x15, -7(s1)
	lw	x16, 0(s0)
	add	a6, a6, x15
	addi	a6, a6, 1
	srli	a6, a6, 1
	mul	a6, a6, x16
	sw	a6, 0(a7)
	lbu	a6, -6(s1)
	regsw_c	x13, 0x5cc(x19)		# 100110110110111001100
	lw	x15, 4(s0)
	add	x9, x9, a6
	addi	x9, x9, 1
	srliw	x9, x9, 1
	mul	x9, x9, x15
	sw	x9, 4(a7)
	lbu	x9, -5(s1)
	regsw_c	x29, 0x5cc(x19)		# 100111110110111001100
	lw	x15, 8(s0)
	add	x8, x8, x9
	addi	x8, x8, 1
	srliw	x8, x8, 1
	mul	x8, x8, x15
	sw	x8, 8(a7)
	lbu	x8, -4(s1)
	regsw_c	x29, 0x5cc(x19)		# 100111110110111001100
	lw	x15, 12(s0)
	add	x6, x6, x8
	addi	x6, x6, 1
	srliw	x6, x6, 1
	mul	x6, x6, x15
	sw	x6, 12(a7)
	lbu	x6, -3(s1)
	regsw_c	x29, 0x5cc(x19)		# 100111110110111001100
	lw	x15, 16(s0)
	add	x2, x2, x6
	addi	x2, x2, 1
	srliw	x2, x2, 1
	mul	x2, x2, x15
	sw	x2, 16(a7)
	lbu	x2, -2(s1)
	regsw_c	x29, 0x5cc(x19)		# 100111110110111001100
	lw	x15, 20(s0)
	add	x1, x1, x2
	addi	x1, x1, 1
	srliw	x1, x1, 1
	mul	x1, x1, x15
	sw	x1, 20(a7)
	lbu	x1, -1(s1)
	regsw_c	x29, 0x5c8(x19)		# 100111110110111001000
	lw	x15, 24(s0)
	add	x24, x24, x1
	addi	x24, x24, 1
	srliw	x16, x24, 1
	mul	x15, x16, x15
	sw	x15, 24(a7)
	lbu	a5, 0(a5)
	regsw_c	x2, 0x8(x18)		# 100100001000000001000
	lbu	x15, 0(s1)
	lw	x16, 28(s0)
	add	a5, a5, x15
	addi	a5, a5, 1
	srli	a5, a5, 1
	mul	a5, a5, x16
	sw	a5, 28(a7)
	addi	a7, a7, 32
	addi	s0, s0, 32
	mv	a5, s1
	regsw_c	x13, 0x5a0(x27)		# 110110110110110100000
	mv	x24, x1
	mv	x1, x2
	mv	x2, x6
	mv	x6, x8
	mv	x8, x9
	mv	x9, a6
	bne	a7, t4, .LBB0_46
	j	.LBB0_48
.LBB0_47:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x5, 0x664(x19)		# 100110010111001100100
	lbu	x1, 0(s0)
	lw	x2, %lo(OM)(x22)
	addi	a7, x22, %lo(OM)
	mul	x1, x2, x1
	sw	x1, 88(sp)
	lbu	x1, 1(s0)
	lw	x2, 4(a7)
	regsw_c	x25, 0x1cc(x28)		# 111001100100111001100
	mul	x1, x2, x1
	sw	x1, 92(sp)
	lbu	x1, 2(s0)
	lw	x2, 8(a7)
	mul	x1, x2, x1
	sw	x1, 96(sp)
	lbu	x1, 3(s0)
	regsw_c	x19, 0x139(x19)		# 100111001100100111001
	lw	x2, 12(a7)
	mul	x1, x2, x1
	sw	x1, 100(sp)
	lbu	x1, 4(s0)
	lw	x2, 16(a7)
	mul	x1, x2, x1
	sw	x1, 104(sp)
	regsw_c	x14, 0x327(x18)		# 100100111001100100111
	lbu	x1, 5(s0)
	lw	x2, 20(a7)
	mul	x1, x2, x1
	sw	x1, 108(sp)
	lbu	x1, 6(s0)
	lw	x2, 24(a7)
	mul	x1, x2, x1
	regsw_c	x9, 0x644(x6)		# 001100100111001000100
	sw	x1, 112(sp)
	lbu	x1, 7(s0)
	lw	x2, 28(a7)
	mul	x1, x2, x1
	sw	x1, 116(sp)
	add	s0, s0, s4
	lbu	x1, 0(s0)
	regsw_c	x19, 0x139(x19)		# 100111001100100111001
	lw	x2, 32(a7)
	mul	x1, x2, x1
	sw	x1, 120(sp)
	lbu	x1, 1(s0)
	lw	x2, 36(a7)
	mul	x1, x2, x1
	sw	x1, 124(sp)
	regsw_c	x14, 0x327(x18)		# 100100111001100100111
	lbu	x1, 2(s0)
	lw	x2, 40(a7)
	mul	x1, x2, x1
	sw	x1, 128(sp)
	lbu	x1, 3(s0)
	lw	x2, 44(a7)
	mul	x1, x2, x1
	regsw_c	x9, 0x664(x6)		# 001100100111001100100
	sw	x1, 132(sp)
	lbu	x1, 4(s0)
	lw	x2, 48(a7)
	mul	x1, x2, x1
	sw	x1, 136(sp)
	lbu	x1, 5(s0)
	lw	x2, 52(a7)
	regsw_c	x25, 0x1cc(x28)		# 111001100100111001100
	mul	x1, x2, x1
	sw	x1, 140(sp)
	lbu	x1, 6(s0)
	lw	x2, 56(a7)
	mul	x1, x2, x1
	sw	x1, 144(sp)
	lbu	x1, 7(s0)
	regsw_c	x18, 0x127(x19)		# 100111001000100100111
	lw	x2, 60(a7)
	mul	x1, x2, x1
	sw	x1, 148(sp)
	add	s0, s0, s4
	lbu	x1, 0(s0)
	lw	x2, 64(a7)
	mul	x1, x2, x1
	regsw_c	x9, 0x664(x6)		# 001100100111001100100
	sw	x1, 152(sp)
	lbu	x1, 1(s0)
	lw	x2, 68(a7)
	mul	x1, x2, x1
	sw	x1, 156(sp)
	lbu	x1, 2(s0)
	lw	x2, 72(a7)
	regsw_c	x25, 0x1cc(x28)		# 111001100100111001100
	mul	x1, x2, x1
	sw	x1, 160(sp)
	lbu	x1, 3(s0)
	lw	x2, 76(a7)
	mul	x1, x2, x1
	sw	x1, 164(sp)
	lbu	x1, 4(s0)
	regsw_c	x19, 0x139(x19)		# 100111001100100111001
	lw	x2, 80(a7)
	mul	x1, x2, x1
	sw	x1, 168(sp)
	lbu	x1, 5(s0)
	lw	x2, 84(a7)
	mul	x1, x2, x1
	sw	x1, 172(sp)
	regsw_c	x14, 0x327(x18)		# 100100111001100100111
	lbu	x1, 6(s0)
	lw	x2, 88(a7)
	mul	x1, x2, x1
	sw	x1, 176(sp)
	lbu	x1, 7(s0)
	lw	x2, 92(a7)
	mul	x1, x2, x1
	regsw_c	x9, 0x1cc(x4)		# 001000100100111001100
	sw	x1, 180(sp)
	add	s0, s0, s4
	lbu	x1, 0(s0)
	lw	x2, 96(a7)
	mul	x1, x2, x1
	sw	x1, 184(sp)
	lbu	x1, 1(s0)
	regsw_c	x19, 0x139(x19)		# 100111001100100111001
	lw	x2, 100(a7)
	mul	x1, x2, x1
	sw	x1, 188(sp)
	lbu	x1, 2(s0)
	lw	x2, 104(a7)
	mul	x1, x2, x1
	sw	x1, 192(sp)
	regsw_c	x14, 0x327(x18)		# 100100111001100100111
	lbu	x1, 3(s0)
	lw	x2, 108(a7)
	mul	x1, x2, x1
	sw	x1, 196(sp)
	lbu	x1, 4(s0)
	lw	x2, 112(a7)
	mul	x1, x2, x1
	regsw_c	x9, 0x664(x6)		# 001100100111001100100
	sw	x1, 200(sp)
	lbu	x1, 5(s0)
	lw	x2, 116(a7)
	mul	x1, x2, x1
	sw	x1, 204(sp)
	lbu	x1, 6(s0)
	lw	x2, 120(a7)
	regsw_c	x25, 0x1c8(x28)		# 111001100100111001000
	mul	x1, x2, x1
	sw	x1, 208(sp)
	lbu	x1, 7(s0)
	lw	x2, 124(a7)
	mul	x1, x2, x1
	sw	x1, 212(sp)
	add	s0, s0, s4
	regsw_c	x14, 0x327(x18)		# 100100111001100100111
	lbu	x1, 0(s0)
	lw	x2, 128(a7)
	mul	x1, x2, x1
	sw	x1, 216(sp)
	lbu	x1, 1(s0)
	lw	x2, 132(a7)
	mul	x1, x2, x1
	regsw_c	x9, 0x664(x6)		# 001100100111001100100
	sw	x1, 220(sp)
	lbu	x1, 2(s0)
	lw	x2, 136(a7)
	mul	x1, x2, x1
	sw	x1, 224(sp)
	lbu	x1, 3(s0)
	lw	x2, 140(a7)
	regsw_c	x25, 0x1cc(x28)		# 111001100100111001100
	mul	x1, x2, x1
	sw	x1, 228(sp)
	lbu	x1, 4(s0)
	lw	x2, 144(a7)
	mul	x1, x2, x1
	sw	x1, 232(sp)
	lbu	x1, 5(s0)
	regsw_c	x19, 0x139(x19)		# 100111001100100111001
	lw	x2, 148(a7)
	mul	x1, x2, x1
	sw	x1, 236(sp)
	lbu	x1, 6(s0)
	lw	x2, 152(a7)
	mul	x1, x2, x1
	sw	x1, 240(sp)
	regsw_c	x14, 0x224(x18)		# 100100111001000100100
	lbu	x1, 7(s0)
	lw	x2, 156(a7)
	mul	x1, x2, x1
	sw	x1, 244(sp)
	add	s0, s0, s4
	lbu	x1, 0(s0)
	lw	x2, 160(a7)
	regsw_c	x25, 0x1cc(x28)		# 111001100100111001100
	mul	x1, x2, x1
	sw	x1, 248(sp)
	lbu	x1, 1(s0)
	lw	x2, 164(a7)
	mul	x1, x2, x1
	sw	x1, 252(sp)
	lbu	x1, 2(s0)
	regsw_c	x19, 0x139(x19)		# 100111001100100111001
	lw	x2, 168(a7)
	mul	x1, x2, x1
	sw	x1, 256(sp)
	lbu	x1, 3(s0)
	lw	x2, 172(a7)
	mul	x1, x2, x1
	sw	x1, 260(sp)
	regsw_c	x14, 0x327(x18)		# 100100111001100100111
	lbu	x1, 4(s0)
	lw	x2, 176(a7)
	mul	x1, x2, x1
	sw	x1, 264(sp)
	lbu	x1, 5(s0)
	lw	x2, 180(a7)
	mul	x1, x2, x1
	regsw_c	x9, 0x664(x6)		# 001100100111001100100
	sw	x1, 268(sp)
	lbu	x1, 6(s0)
	lw	x2, 184(a7)
	mul	x1, x2, x1
	sw	x1, 272(sp)
	lbu	x1, 7(s0)
	lw	x2, 188(a7)
	regsw_c	x17, 0x139(x28)		# 111001000100100111001
	mul	x1, x2, x1
	sw	x1, 276(sp)
	add	s0, s0, s4
	lbu	x1, 0(s0)
	lw	x2, 192(a7)
	mul	x1, x2, x1
	sw	x1, 280(sp)
	regsw_c	x14, 0x327(x18)		# 100100111001100100111
	lbu	x1, 1(s0)
	lw	x2, 196(a7)
	mul	x1, x2, x1
	sw	x1, 284(sp)
	lbu	x1, 2(s0)
	lw	x2, 200(a7)
	mul	x1, x2, x1
	regsw_c	x9, 0x664(x6)		# 001100100111001100100
	sw	x1, 288(sp)
	lbu	x1, 3(s0)
	lw	x2, 204(a7)
	mul	x1, x2, x1
	sw	x1, 292(sp)
	lbu	x1, 4(s0)
	lw	x2, 208(a7)
	regsw_c	x25, 0x1cc(x28)		# 111001100100111001100
	mul	x1, x2, x1
	sw	x1, 296(sp)
	lbu	x1, 5(s0)
	lw	x2, 212(a7)
	mul	x1, x2, x1
	sw	x1, 300(sp)
	lbu	x1, 6(s0)
	regsw_c	x19, 0x139(x19)		# 100111001100100111001
	lw	x2, 216(a7)
	mul	x1, x2, x1
	sw	x1, 304(sp)
	lbu	x1, 7(s0)
	lw	x2, 220(a7)
	mul	x1, x2, x1
	sw	x1, 308(sp)
	add	s0, s0, s4
	regsw_c	x14, 0x327(x18)		# 100100111001100100111
	lbu	x1, 0(s0)
	lw	x2, 224(a7)
	mul	x1, x2, x1
	sw	x1, 312(sp)
	lbu	x1, 1(s0)
	lw	x2, 228(a7)
	mul	x1, x2, x1
	regsw_c	x9, 0x664(x6)		# 001100100111001100100
	sw	x1, 316(sp)
	lbu	x1, 2(s0)
	lw	x2, 232(a7)
	mul	x1, x2, x1
	sw	x1, 320(sp)
	lbu	x1, 3(s0)
	lw	x2, 236(a7)
	regsw_c	x25, 0x1cc(x28)		# 111001100100111001100
	mul	x1, x2, x1
	sw	x1, 324(sp)
	lbu	x1, 4(s0)
	lw	x2, 240(a7)
	mul	x1, x2, x1
	sw	x1, 328(sp)
	lbu	x1, 5(s0)
	regsw_c	x19, 0x139(x19)		# 100111001100100111001
	lw	x2, 244(a7)
	mul	x1, x2, x1
	sw	x1, 332(sp)
	lbu	x1, 6(s0)
	lw	x2, 248(a7)
	mul	x1, x2, x1
	sw	x1, 336(sp)
	regsw_c	x2, 0x0(x16)		# 100000001000000000000
	lbu	x1, 7(s0)
	lw	a7, 252(a7)
	mul	a7, a7, x1
	sw	a7, 340(sp)
.LBB0_48:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x9, 0xc2(x18)		# 100100100100011000010
	srai	x8, s11, 1
	andi	x2, s11, 1
	srai	x9, ra, 1
	andi	x1, ra, 1
	add	a5, x9, x26
	mulw	a5, a5, s4
	add	a5, x31, a5
	regsw_c	x16, 0x0(x12)		# 011001000000000000000
	or	a6, x2, x1
	add	a7, a5, x8
	beqz	a6, .LBB0_53
# %bb.49:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x0, 0x0(x21)		# 101010000000000000000
	add	x9, s2, x9
	bnez	x2, .LBB0_75
# %bb.50:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	beqz	x1, .LBB0_75
# %bb.51:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x9, 0x3f(x18)		# 100100100100000111111
	lbu	x6, 2(a7)
	lbu	x2, 3(a7)
	lbu	x1, 4(a7)
	lbu	x24, 5(a7)
	lbu	s11, 6(a7)
	add	x8, x28, x8
	add	x9, x9, x29
	regsw_c	x20, 0x400(x6)		# 001101010010000000000
	mulw	s1, s4, x9
	add	x8, t6, x8
	add	s1, x8, s1
	addi	a7, x20, 256
	addi	s0, sp, 88
.LBB0_52:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	a5, s1, s4
	lbu	a6, -7(s1)
	regsw_c	x25, 0x1(x16)		# 100001100100000000001
	lbu	x8, -7(a5)
	add	a6, a6, x8
	lw	x8, 0(a7)
	lw	x9, 0(s0)
	addi	a6, a6, 1
	srli	a6, a6, 1
	mul	a6, a6, x8
	regsw_c	x1, 0x64(x4)		# 001000000100001100100
	add	a6, a6, x9
	sw	a6, 0(s0)
	lbu	a6, -6(s1)
	lbu	x8, -6(a5)
	add	a6, a6, x8
	lw	x8, 4(a7)
	lw	x9, 4(s0)
	addi	a6, a6, 1
	srli	a6, a6, 1
	regsw_c	x16, 0x1a4(x4)		# 001001000000110100100
	mul	a6, a6, x8
	add	a6, a6, x9
	sw	a6, 4(s0)
	lbu	a6, -5(a5)
	add	x6, x6, a6
	lw	x8, 8(a7)
	lw	x9, 8(s0)
	regsw_c	x15, 0x667(x27)		# 110110111111001100111
	addi	x6, x6, 1
	srliw	x6, x6, 1
	mul	x6, x6, x8
	add	x6, x6, x9
	sw	x6, 8(s0)
	lbu	x6, -4(a5)
	add	x2, x2, x6
	regsw_c	x13, 0x5f9(x18)		# 100100110110111111001
	lw	x8, 12(a7)
	lw	x9, 12(s0)
	addi	x2, x2, 1
	srliw	x2, x2, 1
	mul	x2, x2, x8
	add	x2, x2, x9
	sw	x2, 12(s0)
	regsw_c	x25, 0x1b7(x19)		# 100111100100110110111
	lbu	x2, -3(a5)
	add	x1, x1, x2
	lw	x8, 16(a7)
	lw	x9, 16(s0)
	addi	x1, x1, 1
	srliw	x1, x1, 1
	mul	x1, x1, x8
	regsw_c	x25, 0x726(x28)		# 111001100111100100110
	add	x1, x1, x9
	sw	x1, 16(s0)
	lbu	x1, -2(a5)
	add	x24, x24, x1
	lw	x8, 20(a7)
	lw	x9, 20(s0)
	addi	x24, x24, 1
	regsw_c	x30, 0x30c(x27)		# 110111111001100001100
	srliw	x15, x24, 1
	mul	x8, x15, x8
	add	x8, x8, x9
	sw	x8, 20(s0)
	lbu	x8, -1(a5)
	add	s11, s11, x8
	lw	x9, 24(a7)
	regsw_c	x9, 0x7cc(x16)		# 100000100111111001100
	lw	x15, 24(s0)
	addi	s11, s11, 1
	srliw	x16, s11, 1
	mul	x9, x16, x9
	add	x9, x9, x15
	sw	x9, 24(s0)
	lbu	x9, 0(s1)
	regsw_c	x25, 0x1b7(x19)		# 100111100100110110111
	lbu	x15, 0(a5)
	add	x9, x9, x15
	lw	x15, 28(a7)
	lw	x16, 28(s0)
	addi	x9, x9, 1
	srli	x9, x9, 1
	mul	x9, x9, x15
	regsw_c	x16, 0x16(x28)		# 111001000000000010110
	add	x9, x9, x16
	sw	x9, 28(s0)
	addi	s0, s0, 32
	addi	a7, a7, 32
	mv	s1, a5
	mv	s11, x8
	mv	x24, x1
	regsw_c	x8, 0x0(x27)		# 110110100000000000000
	mv	x1, x2
	mv	x2, x6
	mv	x6, a6
	bne	s0, t1, .LBB0_52
	j	.LBB0_54
.LBB0_53:                               #   in Loop: Header=BB0_8 Depth=1
	lbu	a5, 0(a7)
	regsw_c	x0, 0x402(x10)		# 010100000010000000010
	lw	a6, 256(x20)
	lw	x1, 88(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 88(sp)
	lbu	a5, 1(a7)
	lw	a6, 260(x20)
	regsw_c	x4, 0x14(x16)		# 100000010000000010100
	lw	x1, 92(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 92(sp)
	lbu	a5, 2(a7)
	lw	a6, 264(x20)
	lw	x1, 96(sp)
	mul	a5, a6, a5
	regsw_c	x0, 0x502(x8)		# 010000000010100000010
	add	a5, x1, a5
	sw	a5, 96(sp)
	lbu	a5, 3(a7)
	lw	a6, 268(x20)
	lw	x1, 100(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 100(sp)
	lbu	a5, 4(a7)
	regsw_c	x0, 0x402(x10)		# 010100000010000000010
	lw	a6, 272(x20)
	lw	x1, 104(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 104(sp)
	lbu	a5, 5(a7)
	lw	a6, 276(x20)
	regsw_c	x4, 0x14(x16)		# 100000010000000010100
	lw	x1, 108(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 108(sp)
	lbu	a5, 6(a7)
	lw	a6, 280(x20)
	lw	x1, 112(sp)
	mul	a5, a6, a5
	regsw_c	x0, 0x502(x8)		# 010000000010100000010
	add	a5, x1, a5
	sw	a5, 112(sp)
	lbu	a5, 7(a7)
	lw	a6, 284(x20)
	lw	x1, 116(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 116(sp)
	add	a7, a7, s4
	lbu	a5, 0(a7)
	regsw_c	x0, 0x402(x10)		# 010100000010000000010
	lw	a6, 288(x20)
	lw	x1, 120(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 120(sp)
	lbu	a5, 1(a7)
	lw	a6, 292(x20)
	regsw_c	x4, 0x14(x16)		# 100000010000000010100
	lw	x1, 124(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 124(sp)
	lbu	a5, 2(a7)
	lw	a6, 296(x20)
	lw	x1, 128(sp)
	mul	a5, a6, a5
	regsw_c	x0, 0x502(x8)		# 010000000010100000010
	add	a5, x1, a5
	sw	a5, 128(sp)
	lbu	a5, 3(a7)
	lw	a6, 300(x20)
	lw	x1, 132(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 132(sp)
	lbu	a5, 4(a7)
	regsw_c	x0, 0x402(x10)		# 010100000010000000010
	lw	a6, 304(x20)
	lw	x1, 136(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 136(sp)
	lbu	a5, 5(a7)
	lw	a6, 308(x20)
	regsw_c	x4, 0x14(x16)		# 100000010000000010100
	lw	x1, 140(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 140(sp)
	lbu	a5, 6(a7)
	lw	a6, 312(x20)
	lw	x1, 144(sp)
	mul	a5, a6, a5
	regsw_c	x0, 0x502(x8)		# 010000000010100000010
	add	a5, x1, a5
	sw	a5, 144(sp)
	lbu	a5, 7(a7)
	lw	a6, 316(x20)
	lw	x1, 148(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 148(sp)
	add	a7, a7, s4
	lbu	a5, 0(a7)
	regsw_c	x0, 0x402(x10)		# 010100000010000000010
	lw	a6, 320(x20)
	lw	x1, 152(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 152(sp)
	lbu	a5, 1(a7)
	lw	a6, 324(x20)
	regsw_c	x4, 0x14(x16)		# 100000010000000010100
	lw	x1, 156(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 156(sp)
	lbu	a5, 2(a7)
	lw	a6, 328(x20)
	lw	x1, 160(sp)
	mul	a5, a6, a5
	regsw_c	x0, 0x502(x8)		# 010000000010100000010
	add	a5, x1, a5
	sw	a5, 160(sp)
	lbu	a5, 3(a7)
	lw	a6, 332(x20)
	lw	x1, 164(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 164(sp)
	lbu	a5, 4(a7)
	regsw_c	x0, 0x402(x10)		# 010100000010000000010
	lw	a6, 336(x20)
	lw	x1, 168(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 168(sp)
	lbu	a5, 5(a7)
	lw	a6, 340(x20)
	regsw_c	x4, 0x14(x16)		# 100000010000000010100
	lw	x1, 172(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 172(sp)
	lbu	a5, 6(a7)
	lw	a6, 344(x20)
	lw	x1, 176(sp)
	mul	a5, a6, a5
	regsw_c	x0, 0x502(x8)		# 010000000010100000010
	add	a5, x1, a5
	sw	a5, 176(sp)
	lbu	a5, 7(a7)
	lw	a6, 348(x20)
	lw	x1, 180(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 180(sp)
	add	a7, a7, s4
	lbu	a5, 0(a7)
	regsw_c	x0, 0x402(x10)		# 010100000010000000010
	lw	a6, 352(x20)
	lw	x1, 184(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 184(sp)
	lbu	a5, 1(a7)
	lw	a6, 356(x20)
	regsw_c	x4, 0x14(x16)		# 100000010000000010100
	lw	x1, 188(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 188(sp)
	lbu	a5, 2(a7)
	lw	a6, 360(x20)
	lw	x1, 192(sp)
	mul	a5, a6, a5
	regsw_c	x0, 0x502(x8)		# 010000000010100000010
	add	a5, x1, a5
	sw	a5, 192(sp)
	lbu	a5, 3(a7)
	lw	a6, 364(x20)
	lw	x1, 196(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 196(sp)
	lbu	a5, 4(a7)
	regsw_c	x0, 0x402(x10)		# 010100000010000000010
	lw	a6, 368(x20)
	lw	x1, 200(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 200(sp)
	lbu	a5, 5(a7)
	lw	a6, 372(x20)
	regsw_c	x4, 0x14(x16)		# 100000010000000010100
	lw	x1, 204(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 204(sp)
	lbu	a5, 6(a7)
	lw	a6, 376(x20)
	lw	x1, 208(sp)
	mul	a5, a6, a5
	regsw_c	x0, 0x400(x8)		# 010000000010000000000
	add	a5, x1, a5
	sw	a5, 208(sp)
	lbu	a5, 7(a7)
	lw	a6, 380(x20)
	lw	a7, 212(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 212(sp)
.LBB0_54:                               #   in Loop: Header=BB0_8 Depth=1
	srai	a7, s9, 1
	regsw_c	x8, 0x613(x18)		# 100100100011000010011
	andi	x6, s9, 1
	srai	x8, s10, 1
	andi	x1, s10, 1
	add	a5, x8, x26
	mulw	a5, a5, s4
	add	a5, x31, a5
	or	a6, x6, x1
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	add	x2, a5, a7
	beqz	a6, .LBB0_59
# %bb.55:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x0, 0x0(x21)		# 101010000000000000000
	add	x8, s2, x8
	bnez	x6, .LBB0_79
# %bb.56:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	beqz	x1, .LBB0_79
# %bb.57:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x9, 0x102(x10)		# 010100100100100000010
	add	a5, x2, t2
	lbu	x6, 2(a5)
	lbu	x2, 3(a5)
	lbu	x1, 4(a5)
	lbu	x24, 5(a5)
	lbu	s9, 6(a5)
	add	a7, x28, a7
	regsw_c	x20, 0x80(x28)		# 111001010000010000000
	add	x8, x8, x29
	mulw	s1, s4, x8
	add	a7, x3, a7
	add	s1, a7, s1
	addi	a7, x20, 640
	mv	s0, t1
.LBB0_58:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	a5, s1, s4
	lbu	a6, -7(s1)
	regsw_c	x25, 0x1(x16)		# 100001100100000000001
	lbu	x8, -7(a5)
	add	a6, a6, x8
	lw	x8, 0(a7)
	lw	x9, 0(s0)
	addi	a6, a6, 1
	srli	a6, a6, 1
	mul	a6, a6, x8
	regsw_c	x1, 0x64(x4)		# 001000000100001100100
	add	a6, a6, x9
	sw	a6, 0(s0)
	lbu	a6, -6(s1)
	lbu	x8, -6(a5)
	add	a6, a6, x8
	lw	x8, 4(a7)
	lw	x9, 4(s0)
	addi	a6, a6, 1
	srli	a6, a6, 1
	regsw_c	x16, 0x1a4(x4)		# 001001000000110100100
	mul	a6, a6, x8
	add	a6, a6, x9
	sw	a6, 4(s0)
	lbu	a6, -5(a5)
	add	x6, x6, a6
	lw	x8, 8(a7)
	lw	x9, 8(s0)
	regsw_c	x15, 0x667(x27)		# 110110111111001100111
	addi	x6, x6, 1
	srliw	x6, x6, 1
	mul	x6, x6, x8
	add	x6, x6, x9
	sw	x6, 8(s0)
	lbu	x6, -4(a5)
	add	x2, x2, x6
	regsw_c	x13, 0x5f9(x18)		# 100100110110111111001
	lw	x8, 12(a7)
	lw	x9, 12(s0)
	addi	x2, x2, 1
	srliw	x2, x2, 1
	mul	x2, x2, x8
	add	x2, x2, x9
	sw	x2, 12(s0)
	regsw_c	x25, 0x1b7(x19)		# 100111100100110110111
	lbu	x2, -3(a5)
	add	x1, x1, x2
	lw	x8, 16(a7)
	lw	x9, 16(s0)
	addi	x1, x1, 1
	srliw	x1, x1, 1
	mul	x1, x1, x8
	regsw_c	x25, 0x726(x28)		# 111001100111100100110
	add	x1, x1, x9
	sw	x1, 16(s0)
	lbu	x1, -2(a5)
	add	x24, x24, x1
	lw	x8, 20(a7)
	lw	x9, 20(s0)
	addi	x24, x24, 1
	regsw_c	x30, 0x30c(x27)		# 110111111001100001100
	srliw	x15, x24, 1
	mul	x8, x15, x8
	add	x8, x8, x9
	sw	x8, 20(s0)
	lbu	x8, -1(a5)
	add	s9, s9, x8
	lw	x9, 24(a7)
	regsw_c	x9, 0x7cc(x16)		# 100000100111111001100
	lw	x15, 24(s0)
	addi	s9, s9, 1
	srliw	x16, s9, 1
	mul	x9, x16, x9
	add	x9, x9, x15
	sw	x9, 24(s0)
	lbu	x9, 0(s1)
	regsw_c	x25, 0x1b7(x19)		# 100111100100110110111
	lbu	x15, 0(a5)
	add	x9, x9, x15
	lw	x15, 28(a7)
	lw	x16, 28(s0)
	addi	x9, x9, 1
	srli	x9, x9, 1
	mul	x9, x9, x15
	regsw_c	x16, 0x16(x28)		# 111001000000000010110
	add	x9, x9, x16
	sw	x9, 28(s0)
	addi	s0, s0, 32
	addi	a7, a7, 32
	mv	s1, a5
	mv	s9, x8
	mv	x24, x1
	regsw_c	x8, 0x0(x27)		# 110110100000000000000
	mv	x1, x2
	mv	x2, x6
	mv	x6, a6
	bne	s0, t4, .LBB0_58
	j	.LBB0_60
.LBB0_59:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x4, 0x0(x25)		# 110010010000000000000
	add	x2, x2, t2
	lbu	a5, 0(x2)
	lw	a6, 640(x20)
	lw	a7, 216(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 216(sp)
	regsw_c	x0, 0x2(x9)		# 010010000000000000010
	lbu	a5, 1(x2)
	lw	a6, 644(x20)
	lw	a7, 220(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 220(sp)
	lbu	a5, 2(x2)
	regsw_c	x0, 0x12(x8)		# 010000000000000010010
	lw	a6, 648(x20)
	lw	a7, 224(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 224(sp)
	lbu	a5, 3(x2)
	lw	a6, 652(x20)
	lw	a7, 228(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 228(sp)
	regsw_c	x0, 0x2(x9)		# 010010000000000000010
	lbu	a5, 4(x2)
	lw	a6, 656(x20)
	lw	a7, 232(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 232(sp)
	lbu	a5, 5(x2)
	regsw_c	x0, 0x12(x8)		# 010000000000000010010
	lw	a6, 660(x20)
	lw	a7, 236(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 236(sp)
	lbu	a5, 6(x2)
	lw	a6, 664(x20)
	lw	a7, 240(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 240(sp)
	regsw_c	x0, 0x6(x9)		# 010010000000000000110
	lbu	a5, 7(x2)
	lw	a6, 668(x20)
	lw	a7, 244(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 244(sp)
	add	x2, x2, s4
	regsw_c	x0, 0x2(x9)		# 010010000000000000010
	lbu	a5, 0(x2)
	lw	a6, 672(x20)
	lw	a7, 248(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 248(sp)
	lbu	a5, 1(x2)
	regsw_c	x0, 0x12(x8)		# 010000000000000010010
	lw	a6, 676(x20)
	lw	a7, 252(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 252(sp)
	lbu	a5, 2(x2)
	lw	a6, 680(x20)
	lw	a7, 256(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 256(sp)
	regsw_c	x0, 0x2(x9)		# 010010000000000000010
	lbu	a5, 3(x2)
	lw	a6, 684(x20)
	lw	a7, 260(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 260(sp)
	lbu	a5, 4(x2)
	regsw_c	x0, 0x12(x8)		# 010000000000000010010
	lw	a6, 688(x20)
	lw	a7, 264(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 264(sp)
	lbu	a5, 5(x2)
	lw	a6, 692(x20)
	lw	a7, 268(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 268(sp)
	regsw_c	x0, 0x2(x9)		# 010010000000000000010
	lbu	a5, 6(x2)
	lw	a6, 696(x20)
	lw	a7, 272(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 272(sp)
	lbu	a5, 7(x2)
	regsw_c	x0, 0x32(x8)		# 010000000000000110010
	lw	a6, 700(x20)
	lw	a7, 276(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 276(sp)
	add	x2, x2, s4
	lbu	a5, 0(x2)
	regsw_c	x0, 0x12(x8)		# 010000000000000010010
	lw	a6, 704(x20)
	lw	a7, 280(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 280(sp)
	lbu	a5, 1(x2)
	lw	a6, 708(x20)
	lw	a7, 284(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 284(sp)
	regsw_c	x0, 0x2(x9)		# 010010000000000000010
	lbu	a5, 2(x2)
	lw	a6, 712(x20)
	lw	a7, 288(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 288(sp)
	lbu	a5, 3(x2)
	regsw_c	x0, 0x12(x8)		# 010000000000000010010
	lw	a6, 716(x20)
	lw	a7, 292(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 292(sp)
	lbu	a5, 4(x2)
	lw	a6, 720(x20)
	lw	a7, 296(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 296(sp)
	regsw_c	x0, 0x2(x9)		# 010010000000000000010
	lbu	a5, 5(x2)
	lw	a6, 724(x20)
	lw	a7, 300(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 300(sp)
	lbu	a5, 6(x2)
	regsw_c	x0, 0x12(x8)		# 010000000000000010010
	lw	a6, 728(x20)
	lw	a7, 304(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 304(sp)
	lbu	a5, 7(x2)
	lw	a6, 732(x20)
	lw	a7, 308(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 308(sp)
	regsw_c	x4, 0x0(x25)		# 110010010000000000000
	add	x2, x2, s4
	lbu	a5, 0(x2)
	lw	a6, 736(x20)
	lw	a7, 312(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 312(sp)
	regsw_c	x0, 0x2(x9)		# 010010000000000000010
	lbu	a5, 1(x2)
	lw	a6, 740(x20)
	lw	a7, 316(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 316(sp)
	lbu	a5, 2(x2)
	regsw_c	x0, 0x12(x8)		# 010000000000000010010
	lw	a6, 744(x20)
	lw	a7, 320(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 320(sp)
	lbu	a5, 3(x2)
	lw	a6, 748(x20)
	lw	a7, 324(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 324(sp)
	regsw_c	x0, 0x2(x9)		# 010010000000000000010
	lbu	a5, 4(x2)
	lw	a6, 752(x20)
	lw	a7, 328(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 328(sp)
	lbu	a5, 5(x2)
	regsw_c	x0, 0x12(x8)		# 010000000000000010010
	lw	a6, 756(x20)
	lw	a7, 332(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 332(sp)
	lbu	a5, 6(x2)
	lw	a6, 760(x20)
	lw	a7, 336(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 336(sp)
	regsw_c	x0, 0x0(x9)		# 010010000000000000000
	lbu	a5, 7(x2)
	lw	a6, 764(x20)
	lw	a7, 340(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 340(sp)
.LBB0_60:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x1, 0x42(x18)		# 100100000100001000010
	srai	x1, s7, 1
	andi	x6, s7, 1
	srai	s1, s8, 1
	andi	x2, s8, 1
	add	a5, s1, x26
	mulw	a5, a5, s4
	add	a5, x31, a5
	regsw_c	x16, 0x0(x12)		# 011001000000000000000
	or	a6, x6, x2
	add	a7, a5, x1
	beqz	a6, .LBB0_65
# %bb.61:                               #   in Loop: Header=BB0_8 Depth=1
	add	s1, s2, s1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bnez	x6, .LBB0_83
# %bb.62:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	beqz	x2, .LBB0_83
# %bb.63:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x9, 0x1c8(x18)		# 100100100100111001000
	lbu	x24, 4(a7)
	lbu	x9, 5(a7)
	lbu	x8, 6(a7)
	lbu	x6, 7(a7)
	add	x1, x28, x1
	add	s1, s1, x29
	mulw	a7, s4, s1
	regsw_c	x13, 0x400(x29)		# 111010110110000000000
	add	x1, x7, x1
	add	a7, x1, a7
	addi	x1, x20, 796
	mv	x2, x4
.LBB0_64:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	a5, -3(a7)
	regsw_c	x13, 0x591(x25)		# 110010110110110010001
	add	x24, x24, a5
	lw	a6, -12(x1)
	lw	x15, -12(x2)
	addi	x24, x24, 1
	srliw	x16, x24, 1
	mul	a6, x16, a6
	add	a6, a6, x15
	regsw_c	x13, 0x5b6(x8)		# 010000110110110110110
	sw	a6, -12(x2)
	lbu	a6, -2(a7)
	add	x9, x9, a6
	lw	x15, -8(x1)
	lw	x16, -8(x2)
	addi	x9, x9, 1
	srliw	x9, x9, 1
	regsw_c	x23, 0x1f6(x31)		# 111111011100111110110
	mul	x9, x9, x15
	add	x9, x9, x16
	sw	x9, -8(x2)
	lbu	x9, -1(a7)
	add	x8, x8, x9
	lw	x15, -4(x1)
	lw	x16, -4(x2)
	regsw_c	x15, 0x6e7(x27)		# 110110111111011100111
	addi	x8, x8, 1
	srliw	x8, x8, 1
	mul	x8, x8, x15
	add	x8, x8, x16
	sw	x8, -4(x2)
	lbu	x8, 0(a7)
	add	x6, x6, x8
	regsw_c	x13, 0x5fb(x27)		# 110110110110111111011
	lw	x15, 0(x1)
	lw	x16, 0(x2)
	addi	x6, x6, 1
	srliw	x6, x6, 1
	mul	x6, x6, x15
	add	x6, x6, x16
	sw	x6, 0(x2)
	regsw_c	x1, 0x5a4(x27)		# 110110000110110100100
	addi	x2, x2, 32
	addi	x1, x1, 32
	add	a7, a7, s4
	mv	x6, x8
	mv	x8, x9
	mv	x9, a6
	mv	x24, a5
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bne	x2, x5, .LBB0_64
	j	.LBB0_66
.LBB0_65:                               #   in Loop: Header=BB0_8 Depth=1
	lbu	a5, 4(a7)
	regsw_c	x0, 0x402(x10)		# 010100000010000000010
	lw	a6, 784(x20)
	lw	x1, 104(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 104(sp)
	lbu	a5, 5(a7)
	lw	a6, 788(x20)
	regsw_c	x4, 0x14(x16)		# 100000010000000010100
	lw	x1, 108(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 108(sp)
	lbu	a5, 6(a7)
	lw	a6, 792(x20)
	lw	x1, 112(sp)
	mul	a5, a6, a5
	regsw_c	x0, 0x502(x8)		# 010000000010100000010
	add	a5, x1, a5
	sw	a5, 112(sp)
	lbu	a5, 7(a7)
	lw	a6, 796(x20)
	lw	x1, 116(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 116(sp)
	add	a7, a7, s4
	lbu	a5, 4(a7)
	regsw_c	x0, 0x402(x10)		# 010100000010000000010
	lw	a6, 816(x20)
	lw	x1, 136(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 136(sp)
	lbu	a5, 5(a7)
	lw	a6, 820(x20)
	regsw_c	x4, 0x14(x16)		# 100000010000000010100
	lw	x1, 140(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 140(sp)
	lbu	a5, 6(a7)
	lw	a6, 824(x20)
	lw	x1, 144(sp)
	mul	a5, a6, a5
	regsw_c	x0, 0x502(x8)		# 010000000010100000010
	add	a5, x1, a5
	sw	a5, 144(sp)
	lbu	a5, 7(a7)
	lw	a6, 828(x20)
	lw	x1, 148(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 148(sp)
	add	a7, a7, s4
	lbu	a5, 4(a7)
	regsw_c	x0, 0x402(x10)		# 010100000010000000010
	lw	a6, 848(x20)
	lw	x1, 168(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 168(sp)
	lbu	a5, 5(a7)
	lw	a6, 852(x20)
	regsw_c	x4, 0x14(x16)		# 100000010000000010100
	lw	x1, 172(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 172(sp)
	lbu	a5, 6(a7)
	lw	a6, 856(x20)
	lw	x1, 176(sp)
	mul	a5, a6, a5
	regsw_c	x0, 0x502(x8)		# 010000000010100000010
	add	a5, x1, a5
	sw	a5, 176(sp)
	lbu	a5, 7(a7)
	lw	a6, 860(x20)
	lw	x1, 180(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 180(sp)
	add	a7, a7, s4
	lbu	a5, 4(a7)
	regsw_c	x0, 0x402(x10)		# 010100000010000000010
	lw	a6, 880(x20)
	lw	x1, 200(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 200(sp)
	lbu	a5, 5(a7)
	lw	a6, 884(x20)
	regsw_c	x4, 0x14(x16)		# 100000010000000010100
	lw	x1, 204(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 204(sp)
	lbu	a5, 6(a7)
	lw	a6, 888(x20)
	lw	x1, 208(sp)
	mul	a5, a6, a5
	regsw_c	x0, 0x502(x8)		# 010000000010100000010
	add	a5, x1, a5
	sw	a5, 208(sp)
	lbu	a5, 7(a7)
	lw	a6, 892(x20)
	lw	x1, 212(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 212(sp)
	add	a7, a7, s4
	lbu	a5, 4(a7)
	regsw_c	x0, 0x402(x10)		# 010100000010000000010
	lw	a6, 912(x20)
	lw	x1, 232(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 232(sp)
	lbu	a5, 5(a7)
	lw	a6, 916(x20)
	regsw_c	x4, 0x14(x16)		# 100000010000000010100
	lw	x1, 236(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 236(sp)
	lbu	a5, 6(a7)
	lw	a6, 920(x20)
	lw	x1, 240(sp)
	mul	a5, a6, a5
	regsw_c	x0, 0x502(x8)		# 010000000010100000010
	add	a5, x1, a5
	sw	a5, 240(sp)
	lbu	a5, 7(a7)
	lw	a6, 924(x20)
	lw	x1, 244(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 244(sp)
	add	a7, a7, s4
	lbu	a5, 4(a7)
	regsw_c	x0, 0x402(x10)		# 010100000010000000010
	lw	a6, 944(x20)
	lw	x1, 264(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 264(sp)
	lbu	a5, 5(a7)
	lw	a6, 948(x20)
	regsw_c	x4, 0x14(x16)		# 100000010000000010100
	lw	x1, 268(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 268(sp)
	lbu	a5, 6(a7)
	lw	a6, 952(x20)
	lw	x1, 272(sp)
	mul	a5, a6, a5
	regsw_c	x0, 0x502(x8)		# 010000000010100000010
	add	a5, x1, a5
	sw	a5, 272(sp)
	lbu	a5, 7(a7)
	lw	a6, 956(x20)
	lw	x1, 276(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 276(sp)
	add	a7, a7, s4
	lbu	a5, 4(a7)
	regsw_c	x0, 0x402(x10)		# 010100000010000000010
	lw	a6, 976(x20)
	lw	x1, 296(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 296(sp)
	lbu	a5, 5(a7)
	lw	a6, 980(x20)
	regsw_c	x4, 0x14(x16)		# 100000010000000010100
	lw	x1, 300(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 300(sp)
	lbu	a5, 6(a7)
	lw	a6, 984(x20)
	lw	x1, 304(sp)
	mul	a5, a6, a5
	regsw_c	x0, 0x502(x8)		# 010000000010100000010
	add	a5, x1, a5
	sw	a5, 304(sp)
	lbu	a5, 7(a7)
	lw	a6, 988(x20)
	lw	x1, 308(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 308(sp)
	add	a7, a7, s4
	lbu	a5, 4(a7)
	regsw_c	x0, 0x402(x10)		# 010100000010000000010
	lw	a6, 1008(x20)
	lw	x1, 328(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 328(sp)
	lbu	a5, 5(a7)
	lw	a6, 1012(x20)
	regsw_c	x4, 0x14(x16)		# 100000010000000010100
	lw	x1, 332(sp)
	mul	a5, a6, a5
	add	a5, x1, a5
	sw	a5, 332(sp)
	lbu	a5, 6(a7)
	lw	a6, 1016(x20)
	lw	x1, 336(sp)
	mul	a5, a6, a5
	regsw_c	x0, 0x400(x8)		# 010000000010000000000
	add	a5, x1, a5
	sw	a5, 336(sp)
	lbu	a5, 7(a7)
	lw	a6, 1020(x20)
	lw	a7, 340(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 340(sp)
.LBB0_66:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x9, 0xc2(x27)		# 110110100100011000010
	srai	x24, x30, 1
	andi	x2, x30, 1
	srai	x6, s6, 1
	andi	x1, s6, 1
	add	a5, x6, x26
	mulw	a5, a5, s4
	add	a5, x31, a5
	regsw_c	x16, 0x0(x12)		# 011001000000000000000
	or	a6, x2, x1
	add	a7, a5, x24
	bnez	a6, .LBB0_67
	j	.LBB0_6
.LBB0_67:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x0, 0x0(x21)		# 101010000000000000000
	add	x31, s2, x6
	bnez	x2, .LBB0_87
# %bb.68:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	beqz	x1, .LBB0_87
# %bb.69:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x9, 0x1f9(x18)		# 100100100100111111001
	lbu	x30, 0(a7)
	lbu	x9, 1(a7)
	lbu	x8, 2(a7)
	lbu	x6, 3(a7)
	add	x24, x28, x24
	add	x29, x31, x29
	mulw	a7, s4, x29
	regsw_c	x13, 0x0(x29)		# 111010110100000000000
	add	x24, x10, x24
	add	a7, x24, a7
	addi	x1, x20, 1024
	addi	x2, sp, 88
.LBB0_70:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	a5, -3(a7)
	regsw_c	x13, 0x591(x25)		# 110010110110110010001
	add	x30, x30, a5
	lw	a6, 0(x1)
	lw	x15, 0(x2)
	addi	x30, x30, 1
	srliw	x16, x30, 1
	mul	a6, x16, a6
	add	a6, a6, x15
	regsw_c	x13, 0x5b6(x8)		# 010000110110110110110
	sw	a6, 0(x2)
	lbu	a6, -2(a7)
	add	x9, x9, a6
	lw	x15, 4(x1)
	lw	x16, 4(x2)
	addi	x9, x9, 1
	srliw	x9, x9, 1
	regsw_c	x23, 0x1f6(x31)		# 111111011100111110110
	mul	x9, x9, x15
	add	x9, x9, x16
	sw	x9, 4(x2)
	lbu	x9, -1(a7)
	add	x8, x8, x9
	lw	x15, 8(x1)
	lw	x16, 8(x2)
	regsw_c	x15, 0x6e7(x27)		# 110110111111011100111
	addi	x8, x8, 1
	srliw	x8, x8, 1
	mul	x8, x8, x15
	add	x8, x8, x16
	sw	x8, 8(x2)
	lbu	x8, 0(a7)
	add	x6, x6, x8
	regsw_c	x13, 0x5fb(x27)		# 110110110110111111011
	lw	x15, 12(x1)
	lw	x16, 12(x2)
	addi	x6, x6, 1
	srliw	x6, x6, 1
	mul	x6, x6, x15
	add	x6, x6, x16
	sw	x6, 12(x2)
	regsw_c	x1, 0x5a4(x27)		# 110110000110110100100
	addi	x2, x2, 32
	addi	x1, x1, 32
	add	a7, a7, s4
	mv	x6, x8
	mv	x8, x9
	mv	x9, a6
	mv	x30, a5
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bne	x2, t4, .LBB0_70
	j	.LBB0_7
.LBB0_71:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	beqz	x2, .LBB0_91
# %bb.72:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bnez	x1, .LBB0_91
# %bb.73:                               # %.preheader17
                                        #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x16, 0x22(x8)		# 010001000000000100010
	add	a7, x28, a7
	add	s1, s1, x29
	mulw	a5, s4, s1
	add	a7, t3, a7
	add	a7, a7, a5
	addi	x24, sp, 88
	mv	s0, x20
.LBB0_74:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	a5, -3(a7)
	lbu	a6, -4(a7)
	regsw_c	x0, 0x50(x16)		# 100000000000001010000
	lw	x1, 0(s0)
	addi	a5, a5, 1
	add	a6, a5, a6
	srli	a6, a6, 1
	mul	a6, a6, x1
	sw	a6, 0(x24)
	lbu	a6, -2(a7)
	regsw_c	x0, 0x284(x16)		# 100000000001010000100
	lw	x1, 4(s0)
	add	a5, a5, a6
	srli	a5, a5, 1
	mul	a5, a5, x1
	sw	a5, 4(x24)
	lbu	a5, -1(a7)
	lw	x1, 8(s0)
	add	a6, a6, a5
	addi	a6, a6, 1
	srli	a6, a6, 1
	regsw_c	x1, 0x0(x5)		# 001010000100000000000
	mul	a6, a6, x1
	sw	a6, 8(x24)
	lbu	a6, 0(a7)
	lw	x1, 12(s0)
	add	a5, a5, a6
	addi	a5, a5, 1
	srli	a5, a5, 1
	regsw_c	x1, 0x0(x5)		# 001010000100000000000
	mul	a5, a5, x1
	sw	a5, 12(x24)
	lbu	a5, 1(a7)
	lw	x1, 16(s0)
	add	a6, a6, a5
	addi	a6, a6, 1
	srli	a6, a6, 1
	regsw_c	x1, 0x0(x5)		# 001010000100000000000
	mul	a6, a6, x1
	sw	a6, 16(x24)
	lbu	a6, 2(a7)
	lw	x1, 20(s0)
	add	a5, a5, a6
	addi	a5, a5, 1
	srli	a5, a5, 1
	regsw_c	x1, 0x0(x5)		# 001010000100000000000
	mul	a5, a5, x1
	sw	a5, 20(x24)
	lbu	a5, 3(a7)
	lw	x1, 24(s0)
	add	a6, a6, a5
	addi	a6, a6, 1
	srli	a6, a6, 1
	regsw_c	x1, 0x0(x5)		# 001010000100000000000
	mul	a6, a6, x1
	sw	a6, 24(x24)
	lbu	a6, 4(a7)
	lw	x1, 28(s0)
	add	a5, a5, a6
	addi	a5, a5, 1
	srli	a5, a5, 1
	regsw_c	x12, 0x10(x5)		# 001010110000000010000
	mul	a5, a5, x1
	sw	a5, 28(x24)
	addi	x24, x24, 32
	addi	s0, s0, 32
	add	a7, a7, s4
	bne	x24, t4, .LBB0_74
	j	.LBB0_48
.LBB0_75:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	beqz	x2, .LBB0_93
# %bb.76:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bnez	x1, .LBB0_93
# %bb.77:                               # %.preheader13
                                        #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x19, 0x290(x31)		# 111111001101010010000
	add	x8, x28, x8
	add	x9, x9, x29
	mulw	a7, s4, x9
	add	x8, t3, x8
	add	a7, x8, a7
	addi	s0, x20, 284
	addi	s1, sp, 88
.LBB0_78:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	a5, -3(a7)
	lbu	a6, -4(a7)
	addi	a5, a5, 1
	regsw_c	x0, 0x48(x18)		# 100100000000001001000
	lw	x1, -28(s0)
	lw	x2, 0(s1)
	add	a6, a5, a6
	srli	a6, a6, 1
	mul	a6, a6, x1
	add	a6, a6, x2
	sw	a6, 0(s1)
	lbu	a6, -2(a7)
	regsw_c	x0, 0x48(x18)		# 100100000000001001000
	lw	x1, -24(s0)
	lw	x2, 4(s1)
	add	a5, a5, a6
	srli	a5, a5, 1
	mul	a5, a5, x1
	add	a5, a5, x2
	sw	a5, 4(s1)
	lbu	a5, -1(a7)
	add	a6, a6, a5
	regsw_c	x0, 0x48(x18)		# 100100000000001001000
	lw	x1, -20(s0)
	lw	x2, 8(s1)
	addi	a6, a6, 1
	srli	a6, a6, 1
	mul	a6, a6, x1
	add	a6, a6, x2
	sw	a6, 8(s1)
	lbu	a6, 0(a7)
	add	a5, a5, a6
	regsw_c	x0, 0x48(x18)		# 100100000000001001000
	lw	x1, -16(s0)
	lw	x2, 12(s1)
	addi	a5, a5, 1
	srli	a5, a5, 1
	mul	a5, a5, x1
	add	a5, a5, x2
	sw	a5, 12(s1)
	lbu	a5, 1(a7)
	add	a6, a6, a5
	regsw_c	x0, 0x48(x18)		# 100100000000001001000
	lw	x1, -12(s0)
	lw	x2, 16(s1)
	addi	a6, a6, 1
	srli	a6, a6, 1
	mul	a6, a6, x1
	add	a6, a6, x2
	sw	a6, 16(s1)
	lbu	a6, 2(a7)
	add	a5, a5, a6
	regsw_c	x0, 0x48(x18)		# 100100000000001001000
	lw	x1, -8(s0)
	lw	x2, 20(s1)
	addi	a5, a5, 1
	srli	a5, a5, 1
	mul	a5, a5, x1
	add	a5, a5, x2
	sw	a5, 20(s1)
	lbu	a5, 3(a7)
	add	a6, a6, a5
	regsw_c	x0, 0x48(x18)		# 100100000000001001000
	lw	x1, -4(s0)
	lw	x2, 24(s1)
	addi	a6, a6, 1
	srli	a6, a6, 1
	mul	a6, a6, x1
	add	a6, a6, x2
	sw	a6, 24(s1)
	lbu	a6, 4(a7)
	add	a5, a5, a6
	lw	a6, 0(s0)
	regsw_c	x0, 0x40(x16)		# 100000000000001000000
	lw	x1, 28(s1)
	addi	a5, a5, 1
	srli	a5, a5, 1
	mul	a5, a5, a6
	add	a5, a5, x1
	sw	a5, 28(s1)
	addi	s1, s1, 32
	add	a7, a7, s4
	addi	s0, s0, 32
	bne	s1, t1, .LBB0_78
	j	.LBB0_54
.LBB0_79:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	beqz	x6, .LBB0_95
# %bb.80:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bnez	x1, .LBB0_95
# %bb.81:                               # %.preheader9
                                        #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x18, 0x2(x11)		# 010111001000000000010
	add	a7, x28, a7
	add	x8, x8, x29
	mulw	a5, s4, x8
	ld	a6, 72(sp)                      # 8-byte Folded Reload
	add	a7, a6, a7
	add	a7, a7, a5
	addi	s0, x20, 668
	mv	s1, t1
.LBB0_82:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	a5, -3(a7)
	lbu	a6, -4(a7)
	addi	a5, a5, 1
	regsw_c	x0, 0x48(x18)		# 100100000000001001000
	lw	x1, -28(s0)
	lw	x2, 0(s1)
	add	a6, a5, a6
	srli	a6, a6, 1
	mul	a6, a6, x1
	add	a6, a6, x2
	sw	a6, 0(s1)
	lbu	a6, -2(a7)
	regsw_c	x0, 0x48(x18)		# 100100000000001001000
	lw	x1, -24(s0)
	lw	x2, 4(s1)
	add	a5, a5, a6
	srli	a5, a5, 1
	mul	a5, a5, x1
	add	a5, a5, x2
	sw	a5, 4(s1)
	lbu	a5, -1(a7)
	add	a6, a6, a5
	regsw_c	x0, 0x48(x18)		# 100100000000001001000
	lw	x1, -20(s0)
	lw	x2, 8(s1)
	addi	a6, a6, 1
	srli	a6, a6, 1
	mul	a6, a6, x1
	add	a6, a6, x2
	sw	a6, 8(s1)
	lbu	a6, 0(a7)
	add	a5, a5, a6
	regsw_c	x0, 0x48(x18)		# 100100000000001001000
	lw	x1, -16(s0)
	lw	x2, 12(s1)
	addi	a5, a5, 1
	srli	a5, a5, 1
	mul	a5, a5, x1
	add	a5, a5, x2
	sw	a5, 12(s1)
	lbu	a5, 1(a7)
	add	a6, a6, a5
	regsw_c	x0, 0x48(x18)		# 100100000000001001000
	lw	x1, -12(s0)
	lw	x2, 16(s1)
	addi	a6, a6, 1
	srli	a6, a6, 1
	mul	a6, a6, x1
	add	a6, a6, x2
	sw	a6, 16(s1)
	lbu	a6, 2(a7)
	add	a5, a5, a6
	regsw_c	x0, 0x48(x18)		# 100100000000001001000
	lw	x1, -8(s0)
	lw	x2, 20(s1)
	addi	a5, a5, 1
	srli	a5, a5, 1
	mul	a5, a5, x1
	add	a5, a5, x2
	sw	a5, 20(s1)
	lbu	a5, 3(a7)
	add	a6, a6, a5
	regsw_c	x0, 0x48(x18)		# 100100000000001001000
	lw	x1, -4(s0)
	lw	x2, 24(s1)
	addi	a6, a6, 1
	srli	a6, a6, 1
	mul	a6, a6, x1
	add	a6, a6, x2
	sw	a6, 24(s1)
	lbu	a6, 4(a7)
	add	a5, a5, a6
	lw	a6, 0(s0)
	regsw_c	x0, 0x40(x16)		# 100000000000001000000
	lw	x1, 28(s1)
	addi	a5, a5, 1
	srli	a5, a5, 1
	mul	a5, a5, a6
	add	a5, a5, x1
	sw	a5, 28(s1)
	addi	s1, s1, 32
	add	a7, a7, s4
	addi	s0, s0, 32
	bne	s1, t4, .LBB0_82
	j	.LBB0_60
.LBB0_83:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	beqz	x6, .LBB0_97
# %bb.84:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bnez	x2, .LBB0_97
# %bb.85:                               # %.preheader5
                                        #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x18, 0x176(x11)		# 010111001000101110110
	addi	a7, x20, 796
	add	x1, x28, x1
	add	s1, s1, x29
	mulw	a5, s4, s1
	add	x1, t5, x1
	add	x1, x1, a5
	mv	x2, x4
.LBB0_86:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	regsw_c	x1, 0x180(x9)		# 010010000100110000000
	lbu	a5, -3(x1)
	lbu	a6, -4(x1)
	addi	a5, a5, 1
	lw	x6, -12(a7)
	lw	x8, -12(x2)
	add	a6, a5, a6
	srli	a6, a6, 1
	regsw_c	x20, 0x530(x4)		# 001001010010100110000
	mul	a6, a6, x6
	add	a6, a6, x8
	sw	a6, -12(x2)
	lbu	a6, -2(x1)
	lw	x6, -8(a7)
	lw	x8, -8(x2)
	add	a5, a5, a6
	srli	a5, a5, 1
	regsw_c	x20, 0x426(x4)		# 001001010010000100110
	mul	a5, a5, x6
	add	a5, a5, x8
	sw	a5, -8(x2)
	lbu	a5, -1(x1)
	add	a6, a6, a5
	lw	x6, -4(a7)
	lw	x8, -4(x2)
	addi	a6, a6, 1
	srli	a6, a6, 1
	regsw_c	x20, 0x406(x4)		# 001001010010000000110
	mul	a6, a6, x6
	add	a6, a6, x8
	sw	a6, -4(x2)
	lbu	a6, 0(x1)
	add	a5, a5, a6
	lw	a6, 0(a7)
	lw	x6, 0(x2)
	addi	a5, a5, 1
	srli	a5, a5, 1
	mul	a5, a5, a6
	regsw_c	x13, 0x418(x5)		# 001010110110000011000
	add	a5, a5, x6
	sw	a5, 0(x2)
	addi	x2, x2, 32
	add	x1, x1, s4
	addi	a7, a7, 32
	bne	x2, x5, .LBB0_86
	j	.LBB0_66
.LBB0_87:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	beqz	x2, .LBB0_99
# %bb.88:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bnez	x1, .LBB0_99
# %bb.89:                               # %.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x18, 0x156(x31)		# 111111001000101010110
	add	x24, x28, x24
	add	x29, x31, x29
	mulw	a7, s4, x29
	ld	a5, 48(sp)                      # 8-byte Folded Reload
	add	x24, a5, x24
	add	a7, x24, a7
	addi	x1, x20, 1036
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	addi	x2, sp, 88
.LBB0_90:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	a5, -1(a7)
	lbu	a6, -2(a7)
	addi	a5, a5, 1
	regsw_c	x0, 0x4a(x27)		# 110110000000001001010
	lw	x6, -12(x1)
	lw	x8, 0(x2)
	add	a6, a5, a6
	srli	a6, a6, 1
	mul	a6, a6, x6
	add	a6, a6, x8
	sw	a6, 0(x2)
	lbu	a6, 0(a7)
	regsw_c	x0, 0x4a(x27)		# 110110000000001001010
	lw	x6, -8(x1)
	lw	x8, 4(x2)
	add	a5, a5, a6
	srli	a5, a5, 1
	mul	a5, a5, x6
	add	a5, a5, x8
	sw	a5, 4(x2)
	lbu	a5, 1(a7)
	add	a6, a6, a5
	regsw_c	x0, 0x4a(x27)		# 110110000000001001010
	lw	x6, -4(x1)
	lw	x8, 8(x2)
	addi	a6, a6, 1
	srli	a6, a6, 1
	mul	a6, a6, x6
	add	a6, a6, x8
	sw	a6, 8(x2)
	lbu	a6, 2(a7)
	add	a5, a5, a6
	regsw_c	x0, 0xa(x11)		# 010110000000000001010
	lw	a6, 0(x1)
	lw	x6, 12(x2)
	addi	a5, a5, 1
	srli	a5, a5, 1
	mul	a5, a5, a6
	add	a5, a5, x6
	sw	a5, 12(x2)
	regsw_c	x12, 0x400(x24)		# 110000110010000000000
	addi	x2, x2, 32
	add	a7, a7, s4
	addi	x1, x1, 32
	bne	x2, t4, .LBB0_90
	j	.LBB0_7
.LBB0_91:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x9, 0x88(x18)		# 100100100100010001000
	lbu	x1, 4(s0)
	lbu	x2, 5(s0)
	lbu	x24, 6(s0)
	lbu	x6, 3(s0)
	add	a7, x28, a7
	add	s1, s1, x29
	mulw	s1, s4, s1
	add	a7, t5, a7
	add	s1, a7, s1
	addi	a7, sp, 88
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	mv	s0, x20
.LBB0_92:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	a5, s1, s4
	lbu	a6, -7(s1)
	regsw_c	x8, 0x167(x18)		# 100100100000101100111
	lbu	x8, -8(s1)
	lbu	x9, -8(a5)
	lbu	x15, -7(a5)
	addi	a6, a6, 2
	add	x8, a6, x8
	lw	x16, 0(s0)
	add	x9, x9, x15
	regsw_c	x14, 0x321(x31)		# 111110111001100100001
	add	x8, x8, x9
	srli	x8, x8, 2
	mul	x8, x8, x16
	sw	x8, 0(a7)
	lbu	x8, -6(s1)
	lbu	x9, -6(a5)
	add	a6, a6, x15
	regsw_c	x18, 0x46(x19)		# 100111001000001000110
	lw	x15, 4(s0)
	add	x16, x8, x9
	add	a6, a6, x16
	srli	a6, a6, 2
	mul	a6, a6, x15
	sw	a6, 4(a7)
	addi	x6, x6, 2
	lbu	a6, -5(a5)
	regsw_c	x15, 0x5b9(x30)		# 111100111110110111001
	add	x8, x6, x8
	lw	x15, 8(s0)
	add	x8, x8, x9
	add	x8, x8, a6
	srliw	x8, x8, 2
	mul	x8, x8, x15
	sw	x8, 8(a7)
	regsw_c	x25, 0x5f7(x19)		# 100111100110111110111
	lbu	x8, -4(a5)
	add	x6, x6, x1
	lw	x9, 12(s0)
	add	x6, x6, a6
	add	x6, x6, x8
	srliw	x6, x6, 2
	mul	x6, x6, x9
	regsw_c	x9, 0x73f(x7)		# 001110100111100111111
	sw	x6, 12(a7)
	addi	x2, x2, 2
	lbu	x9, -3(a5)
	add	x1, x2, x1
	lw	x6, 16(s0)
	add	x1, x1, x8
	add	x1, x1, x9
	regsw_c	x19, 0x1e7(x27)		# 110111001100111100111
	srliw	x1, x1, 2
	mul	x1, x1, x6
	sw	x1, 16(a7)
	lbu	x1, -2(a5)
	add	x2, x2, x24
	lw	x6, 20(s0)
	add	x2, x2, x9
	regsw_c	x14, 0x324(x31)		# 111110111001100100100
	add	x2, x2, x1
	srliw	x2, x2, 2
	mul	x2, x2, x6
	sw	x2, 20(a7)
	lbu	x2, -2(s1)
	lbu	x6, -1(s1)
	lbu	x15, -1(a5)
	regsw_c	x25, 0x7b7(x31)		# 111111100111110110111
	add	x2, x1, x2
	add	x6, x6, x15
	lw	x15, 24(s0)
	add	x2, x2, x6
	addi	x2, x2, 2
	srli	x2, x2, 2
	mul	x2, x2, x15
	regsw_c	x9, 0x73e(x6)		# 001100100111100111110
	sw	x2, 24(a7)
	lbu	x2, 0(s1)
	lbu	x15, 0(a5)
	add	x2, x2, x15
	lw	x15, 28(s0)
	add	x2, x6, x2
	addi	x2, x2, 2
	regsw_c	x18, 0x4(x27)		# 110111001000000000100
	srli	x2, x2, 2
	mul	x2, x2, x15
	sw	x2, 28(a7)
	addi	a7, a7, 32
	addi	s0, s0, 32
	mv	s1, a5
	mv	x6, a6
	regsw_c	x12, 0x0(x27)		# 110110110000000000000
	mv	x24, x1
	mv	x2, x9
	mv	x1, x8
	bne	a7, t4, .LBB0_92
	j	.LBB0_48
.LBB0_93:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x1, 0x7cd(x18)		# 100100000111111001101
	lbu	x1, 4(a7)
	lbu	x24, 5(a7)
	lbu	s1, 6(a7)
	add	x8, x28, x8
	add	x9, x9, x29
	mulw	ra, s4, x9
	add	x8, t5, x8
	regsw_c	x0, 0x0(x9)		# 010010000000000000000
	add	ra, x8, ra
	addi	a7, x20, 256
	addi	s11, sp, 88
.LBB0_94:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	s0, ra, s4
	lbu	a5, -8(ra)
	lbu	a6, -7(ra)
	regsw_c	x0, 0x1e4(x18)		# 100100000000111100100
	lbu	x2, -8(s0)
	lbu	x6, -7(s0)
	addi	a6, a6, 2
	add	a5, a6, a5
	add	x2, x2, x6
	lw	x8, 0(a7)
	lw	x9, 0(s11)
	regsw_c	x2, 0x204(x4)		# 001000001001000000100
	add	a5, a5, x2
	srli	a5, a5, 2
	mul	a5, a5, x8
	add	a5, a5, x9
	sw	a5, 0(s11)
	lbu	a5, -6(ra)
	lbu	x2, -6(s0)
	regsw_c	x25, 0x1(x4)		# 001001100100000000001
	add	a6, a6, x6
	add	a5, a5, x2
	lw	x2, 4(a7)
	lw	x6, 4(s11)
	add	a6, a5, a6
	srli	a6, a6, 2
	mul	a6, a6, x2
	regsw_c	x1, 0x14c(x4)		# 001000000100101001100
	add	a6, a6, x6
	sw	a6, 4(s11)
	lbu	a6, -5(ra)
	lbu	x2, -5(s0)
	add	x6, a6, x2
	add	a5, a5, x6
	lw	x6, 8(a7)
	regsw_c	x0, 0x242(x16)		# 100000000001001000010
	lw	x8, 8(s11)
	addi	a5, a5, 2
	srli	a5, a5, 2
	mul	a5, a5, x6
	add	a5, a5, x8
	sw	a5, 8(s11)
	add	a6, x1, a6
	lbu	a5, -4(s0)
	regsw_c	x18, 0x120(x27)		# 110111001000100100000
	addi	x24, x24, 2
	add	x1, x24, x1
	add	a6, a6, x2
	add	a6, a6, a5
	lw	x2, 12(a7)
	lw	x6, 12(s11)
	addi	a6, a6, 2
	srliw	a6, a6, 2
	regsw_c	x16, 0x1a4(x4)		# 001001000000110100100
	mul	a6, a6, x2
	add	a6, a6, x6
	sw	a6, 12(s11)
	lbu	a6, -3(s0)
	add	x1, x1, a5
	lw	x2, 16(a7)
	lw	x6, 16(s11)
	regsw_c	x15, 0x670(x27)		# 110110111111001110000
	add	x1, x1, a6
	srliw	x1, x1, 2
	mul	x1, x1, x2
	add	x1, x1, x6
	sw	x1, 16(s11)
	add	x24, x24, s1
	lbu	s1, -2(s0)
	regsw_c	x9, 0x5bf(x26)		# 110100100110110111111
	add	x24, x24, a6
	lw	x1, 20(a7)
	lw	x2, 20(s11)
	add	x24, x24, s1
	srliw	x6, x24, 2
	mul	x1, x6, x1
	add	x1, x1, x2
	regsw_c	x9, 0x17f(x6)		# 001100100100101111111
	sw	x1, 20(s11)
	lbu	x1, -2(ra)
	lbu	x2, -1(ra)
	lbu	x6, -1(s0)
	add	x1, s1, x1
	add	x2, x2, x6
	add	x1, x1, x2
	regsw_c	x13, 0x5f9(x18)		# 100100110110111111001
	lw	x6, 24(a7)
	lw	x8, 24(s11)
	addi	x1, x1, 2
	srli	x1, x1, 2
	mul	x1, x1, x6
	add	x1, x1, x8
	sw	x1, 24(s11)
	regsw_c	x15, 0x726(x18)		# 100100111111100100110
	lbu	x1, 0(ra)
	lbu	x6, 0(s0)
	add	x1, x1, x6
	add	x1, x2, x1
	lw	x2, 28(a7)
	lw	x6, 28(s11)
	addi	x1, x1, 2
	regsw_c	x30, 0x200(x27)		# 110111111001000000000
	srli	x1, x1, 2
	mul	x1, x1, x2
	add	x1, x1, x6
	sw	x1, 28(s11)
	addi	s11, s11, 32
	addi	a7, a7, 32
	mv	ra, s0
	regsw_c	x0, 0x0(x18)		# 100100000000000000000
	mv	x24, a6
	mv	x1, a5
	bne	s11, t1, .LBB0_94
	j	.LBB0_54
.LBB0_95:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x12, 0x4b9(x27)		# 110110110010010111001
	add	x2, x2, t2
	lbu	x1, 4(x2)
	lbu	x24, 5(x2)
	lbu	s1, 6(x2)
	add	a7, x28, a7
	add	x8, x8, x29
	mulw	s10, s4, x8
	ld	a5, 64(sp)                      # 8-byte Folded Reload
	add	a7, a5, a7
	add	s10, a7, s10
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	addi	a7, x20, 640
	mv	s9, t1
.LBB0_96:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	s0, s10, s4
	lbu	a5, -8(s10)
	lbu	a6, -7(s10)
	regsw_c	x0, 0x1e4(x18)		# 100100000000111100100
	lbu	x2, -8(s0)
	lbu	x6, -7(s0)
	addi	a6, a6, 2
	add	a5, a6, a5
	add	x2, x2, x6
	lw	x8, 0(a7)
	lw	x9, 0(s9)
	regsw_c	x2, 0x204(x4)		# 001000001001000000100
	add	a5, a5, x2
	srli	a5, a5, 2
	mul	a5, a5, x8
	add	a5, a5, x9
	sw	a5, 0(s9)
	lbu	a5, -6(s10)
	lbu	x2, -6(s0)
	regsw_c	x25, 0x1(x4)		# 001001100100000000001
	add	a6, a6, x6
	add	a5, a5, x2
	lw	x2, 4(a7)
	lw	x6, 4(s9)
	add	a6, a5, a6
	srli	a6, a6, 2
	mul	a6, a6, x2
	regsw_c	x1, 0x14c(x4)		# 001000000100101001100
	add	a6, a6, x6
	sw	a6, 4(s9)
	lbu	a6, -5(s10)
	lbu	x2, -5(s0)
	add	x6, a6, x2
	add	a5, a5, x6
	lw	x6, 8(a7)
	regsw_c	x0, 0x242(x16)		# 100000000001001000010
	lw	x8, 8(s9)
	addi	a5, a5, 2
	srli	a5, a5, 2
	mul	a5, a5, x6
	add	a5, a5, x8
	sw	a5, 8(s9)
	add	a6, x1, a6
	lbu	a5, -4(s0)
	regsw_c	x18, 0x120(x27)		# 110111001000100100000
	addi	x24, x24, 2
	add	x1, x24, x1
	add	a6, a6, x2
	add	a6, a6, a5
	lw	x2, 12(a7)
	lw	x6, 12(s9)
	addi	a6, a6, 2
	srliw	a6, a6, 2
	regsw_c	x16, 0x1a4(x4)		# 001001000000110100100
	mul	a6, a6, x2
	add	a6, a6, x6
	sw	a6, 12(s9)
	lbu	a6, -3(s0)
	add	x1, x1, a5
	lw	x2, 16(a7)
	lw	x6, 16(s9)
	regsw_c	x15, 0x670(x27)		# 110110111111001110000
	add	x1, x1, a6
	srliw	x1, x1, 2
	mul	x1, x1, x2
	add	x1, x1, x6
	sw	x1, 16(s9)
	add	x24, x24, s1
	lbu	s1, -2(s0)
	regsw_c	x9, 0x5bf(x26)		# 110100100110110111111
	add	x24, x24, a6
	lw	x1, 20(a7)
	lw	x2, 20(s9)
	add	x24, x24, s1
	srliw	x6, x24, 2
	mul	x1, x6, x1
	add	x1, x1, x2
	regsw_c	x9, 0x17f(x6)		# 001100100100101111111
	sw	x1, 20(s9)
	lbu	x1, -2(s10)
	lbu	x2, -1(s10)
	lbu	x6, -1(s0)
	add	x1, s1, x1
	add	x2, x2, x6
	add	x1, x1, x2
	regsw_c	x13, 0x5f9(x18)		# 100100110110111111001
	lw	x6, 24(a7)
	lw	x8, 24(s9)
	addi	x1, x1, 2
	srli	x1, x1, 2
	mul	x1, x1, x6
	add	x1, x1, x8
	sw	x1, 24(s9)
	regsw_c	x15, 0x726(x18)		# 100100111111100100110
	lbu	x1, 0(s10)
	lbu	x6, 0(s0)
	add	x1, x1, x6
	add	x1, x2, x1
	lw	x2, 28(a7)
	lw	x6, 28(s9)
	addi	x1, x1, 2
	regsw_c	x30, 0x200(x27)		# 110111111001000000000
	srli	x1, x1, 2
	mul	x1, x1, x2
	add	x1, x1, x6
	sw	x1, 28(s9)
	addi	s9, s9, 32
	addi	a7, a7, 32
	mv	s10, s0
	regsw_c	x0, 0x0(x18)		# 100100000000000000000
	mv	x24, a6
	mv	x1, a5
	bne	s9, t4, .LBB0_96
	j	.LBB0_60
.LBB0_97:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x9, 0x139(x16)		# 100000100100100111001
	lbu	x9, 4(a7)
	lbu	s0, 5(a7)
	lbu	x6, 6(a7)
	lbu	x8, 7(a7)
	lbu	x2, 8(a7)
	add	x1, x28, x1
	add	s1, s1, x29
	mulw	a7, s4, s1
	ld	a5, 56(sp)                      # 8-byte Folded Reload
	regsw_c	x13, 0x400(x21)		# 101010110110000000000
	add	x1, a5, x1
	add	a7, x1, a7
	addi	x24, x20, 796
	mv	x1, x4
.LBB0_98:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	a5, -4(a7)
	addi	s0, s0, 2
	regsw_c	x13, 0x5b6(x20)		# 101000110110110110110
	add	x9, s0, x9
	lbu	a6, -3(a7)
	add	x9, x9, a5
	lw	x15, -12(x24)
	lw	x16, -12(x1)
	add	x9, x9, a6
	srliw	x9, x9, 2
	regsw_c	x22, 0x3bc(x31)		# 111111011001110111100
	mul	x9, x9, x15
	add	x9, x9, x16
	sw	x9, -12(x1)
	add	s0, s0, x6
	addi	x8, x8, 2
	add	x6, x8, x6
	lbu	x9, -2(a7)
	add	s0, s0, a6
	regsw_c	x2, 0x17b(x27)		# 110110001000101111011
	lw	x15, -8(x24)
	lw	x16, -8(x1)
	add	s0, s0, x9
	srliw	s0, s0, 2
	mul	x15, s0, x15
	add	x15, x15, x16
	sw	x15, -8(x1)
	regsw_c	x28, 0x5f7(x19)		# 100111110010111110111
	lbu	x15, -1(a7)
	add	x6, x6, x9
	lw	x16, -4(x24)
	lw	s0, -4(x1)
	add	x6, x6, x15
	srliw	x6, x6, 2
	mul	x6, x6, x16
	regsw_c	x31, 0x1f6(x25)		# 110011111100111110110
	add	x6, x6, s0
	sw	x6, -4(x1)
	add	x2, x8, x2
	lbu	x6, 0(a7)
	add	x2, x2, x15
	lw	x8, 0(x24)
	lw	x16, 0(x1)
	regsw_c	x15, 0x6f6(x31)		# 111110111111011110110
	add	x2, x2, x6
	srliw	x2, x2, 2
	mul	x2, x2, x8
	add	x2, x2, x16
	sw	x2, 0(x1)
	addi	x1, x1, 32
	addi	x24, x24, 32
	add	a7, a7, s4
	regsw_c	x12, 0x118(x27)		# 110110110000100011000
	mv	x2, x6
	mv	x8, x15
	mv	x6, x9
	mv	s0, a6
	mv	x9, a5
	bne	x1, x5, .LBB0_98
	j	.LBB0_66
.LBB0_99:                               #   in Loop: Header=BB0_8 Depth=1
	regsw_c	x9, 0x13f(x18)		# 100100100100100111111
	lbu	x8, 0(a7)
	lbu	x9, 1(a7)
	lbu	x2, 2(a7)
	lbu	x6, 3(a7)
	lbu	x1, 4(a7)
	add	x24, x28, x24
	add	x29, x31, x29
	regsw_c	x10, 0x5a0(x4)		# 001000101010110100000
	mulw	a7, s4, x29
	ld	a5, 40(sp)                      # 8-byte Folded Reload
	add	x24, a5, x24
	add	a7, x24, a7
	addi	x24, x20, 1024
	addi	x28, sp, 88
.LBB0_100:                              #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	a5, -2(a7)
	regsw_c	x17, 0x5b6(x27)		# 110111000110110110110
	addi	x9, x9, 2
	add	x8, x9, x8
	lbu	a6, -1(a7)
	add	x8, x8, a5
	lw	x15, 0(x24)
	lw	x16, 0(x28)
	add	x8, x8, a6
	regsw_c	x30, 0x7f7(x27)		# 110111111011111110111
	srliw	x8, x8, 2
	mul	x8, x8, x15
	add	x8, x8, x16
	sw	x8, 0(x28)
	add	x9, x9, x2
	addi	x6, x6, 2
	add	x2, x6, x2
	regsw_c	x13, 0x5f7(x19)		# 100110110110111110111
	lbu	x8, 0(a7)
	add	x9, x9, a6
	lw	x15, 4(x24)
	lw	x16, 4(x28)
	add	x9, x9, x8
	srliw	x9, x9, 2
	mul	x9, x9, x15
	regsw_c	x25, 0x7b7(x29)		# 111011100111110110111
	add	x9, x9, x16
	sw	x9, 4(x28)
	lbu	x9, 1(a7)
	add	x2, x2, x8
	lw	x15, 8(x24)
	lw	x16, 8(x28)
	add	x2, x2, x9
	regsw_c	x30, 0x7e7(x27)		# 110111111011111100111
	srliw	x2, x2, 2
	mul	x2, x2, x15
	add	x2, x2, x16
	sw	x2, 8(x28)
	add	x1, x6, x1
	lbu	x2, 2(a7)
	add	x1, x1, x9
	regsw_c	x15, 0x5fb(x27)		# 110110111110111111011
	lw	x6, 12(x24)
	lw	x15, 12(x28)
	add	x1, x1, x2
	srliw	x1, x1, 2
	mul	x1, x1, x6
	add	x1, x1, x15
	sw	x1, 12(x28)
	regsw_c	x1, 0x5b4(x27)		# 110110000110110110100
	addi	x28, x28, 32
	addi	x24, x24, 32
	add	a7, a7, s4
	mv	x1, x2
	mv	x6, x9
	mv	x2, x8
	mv	x9, a6
	regsw_c	x0, 0x0(x17)		# 100010000000000000000
	mv	x8, a5
	bne	x28, t4, .LBB0_100
	j	.LBB0_7
.LBB0_101:
	li	a0, 2
	ld	a2, 8(sp)                       # 8-byte Folded Reload
	bne	a2, a0, .LBB0_114
# %bb.102:
	li	a0, 360
	ld	a2, 24(sp)                      # 8-byte Folded Reload
	mul	a0, a2, a0
	lui	a2, 6
	add	a0, a1, a0
	ld	a6, 16(sp)                      # 8-byte Folded Reload
	add	a6, a0, a6
	add	a2, a6, a2
	lw	a0, 1704(a2)
	lui	a1, 13
	add	a1, a6, a1
	lw	a1, -688(a1)
	lui	a2, 19
	add	a2, a6, a2
	lw	a2, 1016(a2)
	lui	a3, 26
	add	a3, a6, a3
	lw	a3, -1376(a3)
	add	a0, a1, a0
	add	a2, a2, a3
	addw	a2, a0, a2
	sraiw	a0, a2, 31
	xor	a1, a2, a0
	sub	a1, a1, a0
	andi	a0, a1, 15
	slli	a3, a0, 2
	lui	a0, %hi(roundtab)
	addi	a0, a0, %lo(roundtab)
	add	a3, a0, a3
	lw	a3, 0(a3)
	srli	a4, a1, 3
	lui	a1, 65536
	addi	a1, a1, -2
	and	a4, a4, a1
	addw	s6, a4, a3
	bgez	a2, .LBB0_104
# %bb.103:
	negw	s6, s6
.LBB0_104:
	lui	a2, 38
	add	a2, a6, a2
	lw	a2, 2032(a2)
	lui	a3, 45
	add	a3, a6, a3
	lw	a3, -360(a3)
	lui	a4, 51
	add	a4, a6, a4
	lw	a4, 1344(a4)
	lui	a5, 58
	add	a5, a6, a5
	lw	a5, -1048(a5)
	add	a2, a3, a2
	add	a4, a4, a5
	addw	a2, a2, a4
	sraiw	a3, a2, 31
	xor	a4, a2, a3
	sub	a4, a4, a3
	andi	a3, a4, 15
	slli	a3, a3, 2
	add	a0, a0, a3
	lw	a0, 0(a0)
	srli	a4, a4, 3
	and	a1, a4, a1
	addw	s7, a1, a0
	bgez	a2, .LBB0_115
# %bb.105:
	negw	s7, s7
	j	.LBB0_115
.LBB0_106:
	beqz	a7, .LBB0_118
# %bb.107:
	sd	s1, 32(sp)                      # 8-byte Folded Spill
	lui	a1, %hi(trb)
	lw	a2, %lo(trb)(a1)
	lui	s11, %hi(trd)
	lw	a7, %lo(trd)(s11)
	lui	s0, %hi(bframe)
	ld	a1, %lo(bframe)(s0)
	lui	s9, 65536
	li	a5, 2
	addi	s9, s9, -2
	bne	a6, a5, .LBB0_123
# %bb.108:
	li	a5, 360
	mul	a5, t1, a5
	lui	a6, 6
	lui	t0, %hi(MV)
	addi	t0, t0, %lo(MV)
	add	a5, t0, a5
	add	s1, a5, t2
	add	a6, s1, a6
	lw	a5, 1704(a6)
	lui	a6, 38
	add	a6, s1, a6
	lw	a6, 2032(a6)
	mul	a5, a5, a2
	divw	a5, a5, a7
	addw	s7, a5, a3
	mul	a2, a6, a2
	divw	a2, a2, a7
	addw	s8, a2, a4
	mv	s10, a4
	li	a4, 8
	li	a5, 8
	mv	s6, a0
	mv	a2, s5
	sd	s9, 72(sp)                      # 8-byte Folded Spill
	mv	s9, a3
	mv	a3, s4
	mv	a6, s3
	mv	a7, s2
	mv	t2, s7
	mv	t3, s8
	call	recon_comp
	lui	a0, %hi(trb)
	lw	a0, %lo(trb)(a0)
	lui	a1, 13
	add	a1, s1, a1
	lw	a1, -688(a1)
	mul	a1, a1, a0
	lw	a2, %lo(trd)(s11)
	lui	a3, 45
	add	a3, s1, a3
	lw	a3, -360(a3)
	divw	a1, a1, a2
	addw	t2, a1, s9
	add	s7, t2, s7
	mul	a0, a3, a0
	divw	a0, a0, a2
	ld	a1, %lo(bframe)(s0)
	addw	t3, a0, s10
	add	s8, t3, s8
	addiw	s11, s3, 8
	li	a4, 8
	li	a5, 8
	mv	a0, s6
	mv	a2, s5
	mv	a3, s4
	mv	a6, s11
	mv	a7, s2
	call	recon_comp
	lui	a0, %hi(trb)
	lw	a0, %lo(trb)(a0)
	lui	a1, 19
	add	a1, s1, a1
	lw	a1, 1016(a1)
	mul	a1, a1, a0
	lui	a2, %hi(trd)
	lw	a2, %lo(trd)(a2)
	lui	a3, 51
	add	a3, s1, a3
	lw	a3, 1344(a3)
	divw	a1, a1, a2
	addw	t2, a1, s9
	add	s7, t2, s7
	mul	a0, a3, a0
	divw	a0, a0, a2
	ld	a1, %lo(bframe)(s0)
	addw	t3, a0, s10
	add	s0, t3, s8
	addiw	s8, s2, 8
	li	a4, 8
	li	a5, 8
	mv	a0, s6
	mv	a2, s5
	mv	a3, s4
	mv	a6, s3
	mv	a7, s8
	call	recon_comp
	lui	a0, %hi(trb)
	lw	a0, %lo(trb)(a0)
	lui	a1, 26
	add	a1, s1, a1
	lw	a1, -1376(a1)
	mul	a1, a1, a0
	lui	a2, %hi(trd)
	lw	a2, %lo(trd)(a2)
	lui	a3, 58
	add	a3, s1, a3
	lw	a3, -1048(a3)
	divw	a1, a1, a2
	addw	t2, a1, s9
	ld	s9, 72(sp)                      # 8-byte Folded Reload
	addw	s1, t2, s7
	mul	a0, a3, a0
	lui	s7, %hi(bframe)
	lui	a1, %hi(bframe)
	ld	a1, %lo(bframe)(a1)
	divw	a0, a0, a2
	addw	t3, a0, s10
	addw	s0, t3, s0
	li	a4, 8
	li	a5, 8
	mv	a0, s6
	mv	a2, s5
	mv	a3, s4
	mv	a6, s11
	mv	a7, s8
	call	recon_comp
	sraiw	a0, s1, 31
	xor	a1, s1, a0
	sub	a1, a1, a0
	andi	a0, a1, 15
	slli	a2, a0, 2
	lui	a0, %hi(roundtab)
	addi	a0, a0, %lo(roundtab)
	add	a2, a0, a2
	lw	a2, 0(a2)
	srli	a1, a1, 3
	and	a1, a1, s9
	addw	s6, a2, a1
	bgez	s1, .LBB0_110
# %bb.109:
	negw	s6, s6
.LBB0_110:
	sraiw	a1, s0, 31
	xor	a2, s0, a1
	sub	a2, a2, a1
	andi	a1, a2, 15
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	addi	s1, s7, %lo(bframe)
	srli	a2, a2, 3
	and	a1, a2, s9
	addw	s7, a0, a1
	bgez	s0, .LBB0_112
# %bb.111:
	negw	s7, s7
.LBB0_112:
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	srai	s5, s5, 1
	ld	a1, 8(s1)
	srai	s3, s3, 1
	srai	s4, s4, 1
	srai	s2, s2, 1
	li	a4, 8
	li	a5, 8
	mv	a2, s5
	mv	a3, s4
	mv	a6, s3
	mv	a7, s2
	mv	t2, s6
	mv	t3, s7
	call	recon_comp
	ld	a1, 16(s1)
	j	.LBB0_117
.LBB0_113:
	li	a2, 360
	mul	a2, t1, a2
	add	a1, a1, a2
	add	a1, a1, t2
	lw	s6, 0(a1)
	lui	a2, 32
	add	a1, a1, a2
	lw	s7, 328(a1)
	lui	a2, %hi(newframe)
	ld	a1, %lo(newframe)(a2)
	addi	s0, a2, %lo(newframe)
	li	a4, 16
	li	a5, 16
	mv	a2, s5
	mv	a3, s4
	mv	a6, s3
	mv	a7, s2
	mv	t2, s6
	mv	t3, s7
	call	recon_comp
	srai	s5, s5, 1
	srai	s3, s3, 1
	srai	s4, s4, 1
	srai	s2, s2, 1
	andi	a0, s6, 3
	snez	a0, a0
	srai	a1, s6, 1
	or	s6, a1, a0
	andi	a0, s7, 3
	ld	a1, 8(s0)
	snez	a0, a0
	srai	a2, s7, 1
	or	s7, a2, a0
	li	a4, 8
	li	a5, 8
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	j	.LBB0_116
.LBB0_114:
	li	a0, 360
	ld	a2, 24(sp)                      # 8-byte Folded Reload
	mul	a0, a2, a0
	add	a0, a1, a0
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	add	a0, a0, a1
	lw	a1, 0(a0)
	lui	a2, 32
	add	a0, a0, a2
	lw	a0, 328(a0)
	andi	a2, a1, 3
	snez	a2, a2
	srai	a1, a1, 1
	or	s6, a1, a2
	andi	a1, a0, 3
	snez	a1, a1
	srai	a0, a0, 1
	or	s7, a0, a1
.LBB0_115:
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	srai	s5, s5, 1
	lui	s0, %hi(newframe)
	addi	s0, s0, %lo(newframe)
	ld	a1, 8(s0)
	srai	s3, s3, 1
	srai	s4, s4, 1
	srai	s2, s2, 1
	li	a4, 8
	li	a5, 8
.LBB0_116:
	mv	a2, s5
	mv	a3, s4
	mv	a6, s3
	mv	a7, s2
	mv	t2, s6
	mv	t3, s7
	call	recon_comp
	ld	a1, 16(s0)
.LBB0_117:
	li	a4, 8
	li	a5, 8
	ld	a0, 32(sp)                      # 8-byte Folded Reload
	mv	a2, s5
	mv	a3, s4
	mv	a6, s3
	mv	a7, s2
	mv	t2, s6
	mv	t3, s7
	j	.LBB0_129
.LBB0_118:
	lui	a1, %hi(trb)
	lw	a2, %lo(trb)(a1)
	li	a1, 360
	mul	a1, t1, a1
	lui	a5, %hi(MV)
	addi	a5, a5, %lo(MV)
	add	a1, a5, a1
	add	a1, a1, t2
	lw	a5, 0(a1)
	lui	a6, %hi(trd)
	lw	a6, %lo(trd)(a6)
	mul	a5, a5, a2
	divw	a5, a5, a6
	lui	a7, 32
	add	a1, a1, a7
	lw	a7, 328(a1)
	addw	s8, a5, a3
	lui	s0, %hi(bframe)
	ld	a1, %lo(bframe)(s0)
	mul	a2, a7, a2
	divw	a2, a2, a6
	addw	s7, a2, a4
	li	a4, 16
	li	a5, 16
	mv	a2, s5
	mv	a3, s4
	mv	a6, s3
	mv	a7, s2
	mv	t2, s8
	mv	t3, s7
	call	recon_comp
	slliw	a1, s8, 2
	slliw	a0, s7, 2
	sraiw	a2, a1, 31
	xor	a1, a1, a2
	sub	a2, a1, a2
	andi	a1, a2, 12
	slli	a3, a1, 2
	lui	a1, %hi(roundtab)
	addi	a1, a1, %lo(roundtab)
	add	a3, a1, a3
	lw	a3, 0(a3)
	srli	a4, a2, 3
	lui	a2, 65536
	addi	a2, a2, -2
	and	a4, a4, a2
	addw	s6, a3, a4
	bgez	s8, .LBB0_120
# %bb.119:
	negw	s6, s6
.LBB0_120:
	addi	s0, s0, %lo(bframe)
	srai	s5, s5, 1
	srai	s3, s3, 1
	srai	s4, s4, 1
	sraiw	a3, a0, 31
	xor	a0, a0, a3
	sub	a0, a0, a3
	andi	a3, a0, 12
	slli	a3, a3, 2
	add	a1, a1, a3
	lw	a1, 0(a1)
	srai	s2, s2, 1
	srli	a0, a0, 3
	and	a0, a0, a2
	addw	s8, a0, a1
	bgez	s7, .LBB0_122
# %bb.121:
	negw	s8, s8
.LBB0_122:
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	ld	a1, 8(s0)
	li	a4, 8
	li	a5, 8
	mv	a2, s5
	mv	a3, s4
	mv	a6, s3
	mv	a7, s2
	mv	t2, s6
	mv	t3, s8
	call	recon_comp
	ld	a1, 16(s0)
	li	a4, 8
	li	a5, 8
	mv	a0, s1
	j	.LBB0_128
.LBB0_123:
	li	a5, 360
	mul	a5, t1, a5
	lui	a6, %hi(MV)
	addi	a6, a6, %lo(MV)
	add	a5, a6, a5
	add	a5, a5, t2
	lw	a6, 0(a5)
	lui	t0, 32
	add	a5, a5, t0
	lw	a5, 328(a5)
	mul	a6, a6, a2
	divw	a6, a6, a7
	addw	s8, a6, a3
	mul	a2, a5, a2
	divw	a2, a2, a7
	addw	s7, a2, a4
	li	a4, 16
	li	a5, 16
	mv	a2, s5
	mv	a3, s4
	mv	a6, s3
	mv	a7, s2
	mv	t2, s8
	mv	t3, s7
	call	recon_comp
	slliw	a0, s8, 2
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	sub	a2, a0, a1
	andi	a0, a2, 12
	slli	a1, a0, 2
	lui	a0, %hi(roundtab)
	addi	a0, a0, %lo(roundtab)
	add	a1, a0, a1
	lw	a3, 0(a1)
	slliw	a1, s7, 2
	srli	a2, a2, 3
	and	a2, a2, s9
	addw	s6, a3, a2
	bgez	s8, .LBB0_125
# %bb.124:
	negw	s6, s6
.LBB0_125:
	srai	s5, s5, 1
	srai	s3, s3, 1
	srai	s4, s4, 1
	sraiw	a2, a1, 31
	xor	a1, a1, a2
	sub	a1, a1, a2
	andi	a2, a1, 12
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	srai	s2, s2, 1
	srli	a1, a1, 3
	and	a1, a1, s9
	addw	s8, a1, a0
	bgez	s7, .LBB0_127
# %bb.126:
	negw	s8, s8
.LBB0_127:
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	lui	s0, %hi(bframe)
	addi	s0, s0, %lo(bframe)
	ld	a1, 8(s0)
	li	a4, 8
	li	a5, 8
	mv	a2, s5
	mv	a3, s4
	mv	a6, s3
	mv	a7, s2
	mv	t2, s6
	mv	t3, s8
	call	recon_comp
	ld	a1, 16(s0)
	li	a4, 8
	li	a5, 8
	ld	a0, 32(sp)                      # 8-byte Folded Reload
.LBB0_128:
	mv	a2, s5
	mv	a3, s4
	mv	a6, s3
	mv	a7, s2
	mv	t2, s6
	mv	t3, s8
.LBB0_129:
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
	addi	sp, sp, 448
	tail	recon_comp
.LBB0_130:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	li	a1, 50
	li	a2, 1
	call	fwrite
	li	a0, 1
	call	exit
.Lfunc_end0:
	.size	reconstruct, .Lfunc_end0-reconstruct
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function recon_comp
	.type	recon_comp,@function
recon_comp:                             # @recon_comp
# %bb.0:
	srai	t1, t2, 1
	srli	t0, t3, 1
	add	t0, t0, a7
	mulw	t0, t0, a3
	or	t4, t3, t2
	andi	t4, t4, 1
	mulw	a7, a7, a2
	bnez	t4, .LBB1_5
# %bb.1:
	li	t2, 8
	bne	a4, t2, .LBB1_17
# %bb.2:
	blez	a5, .LBB1_33
# %bb.3:
	add	a7, a6, a7
	add	a1, a7, a1
	addi	a1, a1, 3
	add	a6, t1, a6
	add	a0, a6, a0
	add	a0, a0, t0
	addi	a0, a0, 3
.LBB1_4:                                # =>This Inner Loop Header: Depth=1
	lbu	a4, -3(a0)
	sb	a4, -3(a1)
	lbu	a4, -2(a0)
	sb	a4, -2(a1)
	lbu	a4, -1(a0)
	sb	a4, -1(a1)
	lbu	a4, 0(a0)
	sb	a4, 0(a1)
	lbu	a4, 1(a0)
	sb	a4, 1(a1)
	lbu	a4, 2(a0)
	sb	a4, 2(a1)
	lbu	a4, 3(a0)
	sb	a4, 3(a1)
	lbu	a4, 4(a0)
	sb	a4, 4(a1)
	addiw	a5, a5, -1
	add	a1, a1, a2
	add	a0, a0, a3
	bnez	a5, .LBB1_4
	j	.LBB1_33
.LBB1_5:
	andi	t2, t2, 1
	andi	t3, t3, 1
	bnez	t2, .LBB1_11
# %bb.6:
	beqz	t3, .LBB1_11
# %bb.7:
	li	t2, 8
	bne	a4, t2, .LBB1_24
# %bb.8:
	blez	a5, .LBB1_33
# %bb.9:
	add	a1, a1, a7
	addi	a1, a1, 7
	add	t4, t1, t0
	add	a4, a3, a0
	add	t5, t4, a4
	addi	a4, t5, 1
	addi	a7, t5, 2
	addi	t0, t5, 3
	addi	t1, t5, 4
	addi	t2, t5, 5
	addi	t3, t5, 6
	add	a0, a0, t4
	addi	t4, t5, 7
.LBB1_10:                               # =>This Inner Loop Header: Depth=1
	add	t5, a0, a6
	add	t6, t4, a6
	regsw_c	x9, 0x7b3(x18)		# 100100100111110110011
	lbu	x1, 0(t5)
	lbu	x2, -7(t6)
	add	x3, a1, a6
	add	x1, x1, x2
	addi	x1, x1, 1
	srli	x1, x1, 1
	sb	x1, -7(x3)
	regsw_c	x13, 0x7b3(x18)		# 100100110111110110011
	lbu	x1, 1(t5)
	add	x2, a4, a6
	lbu	x2, 0(x2)
	add	x1, x1, x2
	addi	x1, x1, 1
	srli	x1, x1, 1
	sb	x1, -6(x3)
	regsw_c	x13, 0x7b3(x18)		# 100100110111110110011
	lbu	x1, 2(t5)
	add	x2, a7, a6
	lbu	x2, 0(x2)
	add	x1, x1, x2
	addi	x1, x1, 1
	srli	x1, x1, 1
	sb	x1, -5(x3)
	regsw_c	x13, 0x7b3(x18)		# 100100110111110110011
	lbu	x1, 3(t5)
	add	x2, t0, a6
	lbu	x2, 0(x2)
	add	x1, x1, x2
	addi	x1, x1, 1
	srli	x1, x1, 1
	sb	x1, -4(x3)
	regsw_c	x13, 0x7b3(x18)		# 100100110111110110011
	lbu	x1, 4(t5)
	add	x2, t1, a6
	lbu	x2, 0(x2)
	add	x1, x1, x2
	addi	x1, x1, 1
	srli	x1, x1, 1
	sb	x1, -3(x3)
	regsw_c	x13, 0x7b3(x18)		# 100100110111110110011
	lbu	x1, 5(t5)
	add	x2, t2, a6
	lbu	x2, 0(x2)
	add	x1, x1, x2
	addi	x1, x1, 1
	srli	x1, x1, 1
	sb	x1, -2(x3)
	regsw_c	x13, 0x7b3(x18)		# 100100110111110110011
	lbu	x1, 6(t5)
	add	x2, t3, a6
	lbu	x2, 0(x2)
	add	x1, x1, x2
	addi	x1, x1, 1
	srli	x1, x1, 1
	sb	x1, -1(x3)
	lbu	t5, 7(t5)
	lbu	t6, 0(t6)
	add	t5, t5, t6
	addi	t5, t5, 1
	srli	t5, t5, 1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	sb	t5, 0(x3)
	addiw	a5, a5, -1
	add	a1, a1, a2
	add	a4, a4, a3
	add	a7, a7, a3
	add	t0, t0, a3
	add	t1, t1, a3
	add	t2, t2, a3
	add	t3, t3, a3
	add	a0, a0, a3
	add	t4, t4, a3
	bnez	a5, .LBB1_10
	j	.LBB1_33
.LBB1_11:
	beqz	t2, .LBB1_20
# %bb.12:
	bnez	t3, .LBB1_20
# %bb.13:
	li	t2, 8
	bne	a4, t2, .LBB1_30
# %bb.14:
	blez	a5, .LBB1_33
# %bb.15:
	add	t1, t1, a6
	add	a0, t1, a0
	add	a0, a0, t0
	addi	a0, a0, 4
	add	a6, a6, a7
	add	a1, a6, a1
	addi	a1, a1, 4
.LBB1_16:                               # =>This Inner Loop Header: Depth=1
	lbu	a4, -3(a0)
	lbu	a6, -4(a0)
	addi	a4, a4, 1
	add	a6, a4, a6
	srli	a6, a6, 1
	sb	a6, -4(a1)
	lbu	a6, -2(a0)
	add	a4, a4, a6
	srli	a4, a4, 1
	sb	a4, -3(a1)
	lbu	a4, -1(a0)
	addi	a4, a4, 1
	add	a6, a4, a6
	srli	a6, a6, 1
	sb	a6, -2(a1)
	lbu	a6, 0(a0)
	add	a4, a4, a6
	srli	a4, a4, 1
	sb	a4, -1(a1)
	lbu	a4, 1(a0)
	add	a6, a6, a4
	addi	a6, a6, 1
	srli	a6, a6, 1
	sb	a6, 0(a1)
	lbu	a6, 2(a0)
	add	a4, a4, a6
	addi	a4, a4, 1
	srli	a4, a4, 1
	sb	a4, 1(a1)
	lbu	a4, 3(a0)
	add	a6, a6, a4
	addi	a6, a6, 1
	srli	a6, a6, 1
	sb	a6, 2(a1)
	lbu	a6, 4(a0)
	add	a4, a4, a6
	addi	a4, a4, 1
	srli	a4, a4, 1
	sb	a4, 3(a1)
	addiw	a5, a5, -1
	add	a0, a0, a3
	add	a1, a1, a2
	bnez	a5, .LBB1_16
	j	.LBB1_33
.LBB1_17:
	blez	a5, .LBB1_33
# %bb.18:
	add	a7, a6, a7
	add	a1, a7, a1
	addi	a1, a1, 7
	add	a6, t1, a6
	add	a0, a6, a0
	add	a0, a0, t0
	addi	a0, a0, 7
.LBB1_19:                               # =>This Inner Loop Header: Depth=1
	lbu	a4, -7(a0)
	sb	a4, -7(a1)
	lbu	a4, -6(a0)
	sb	a4, -6(a1)
	lbu	a4, -5(a0)
	sb	a4, -5(a1)
	lbu	a4, -4(a0)
	sb	a4, -4(a1)
	lbu	a4, -3(a0)
	sb	a4, -3(a1)
	lbu	a4, -2(a0)
	sb	a4, -2(a1)
	lbu	a4, -1(a0)
	sb	a4, -1(a1)
	lbu	a4, 0(a0)
	sb	a4, 0(a1)
	lbu	a4, 1(a0)
	sb	a4, 1(a1)
	lbu	a4, 2(a0)
	sb	a4, 2(a1)
	lbu	a4, 3(a0)
	sb	a4, 3(a1)
	lbu	a4, 4(a0)
	sb	a4, 4(a1)
	lbu	a4, 5(a0)
	sb	a4, 5(a1)
	lbu	a4, 6(a0)
	sb	a4, 6(a1)
	lbu	a4, 7(a0)
	sb	a4, 7(a1)
	lbu	a4, 8(a0)
	sb	a4, 8(a1)
	addiw	a5, a5, -1
	add	a1, a1, a2
	add	a0, a0, a3
	bnez	a5, .LBB1_19
	j	.LBB1_33
.LBB1_20:
	li	t2, 8
	add	a1, a1, a7
	bne	a4, t2, .LBB1_27
# %bb.21:
	blez	a5, .LBB1_33
# %bb.22:
	add	t0, t1, t0
	add	t5, t0, a0
	add	t4, t5, a3
	addi	a0, t4, 1
	addi	a4, t4, 2
	addi	a7, t4, 3
	addi	t0, t4, 4
	addi	t1, t4, 5
	addi	t2, t4, 6
	addi	t3, t4, 7
	addi	t4, t4, 8
	addi	t5, t5, 4
.LBB1_23:                               # =>This Inner Loop Header: Depth=1
	add	t6, t5, a6
	regsw_c	x9, 0x534(x18)		# 100100100110100110100
	add	x1, t4, a6
	lbu	x2, -3(t6)
	add	x3, a0, a6
	lbu	x3, 0(x3)
	lbu	x4, -4(t6)
	lbu	x5, -8(x1)
	add	x6, a1, a6
	regsw_c	x15, 0x79c(x31)		# 111110111111110011100
	add	x2, x2, x3
	addi	x2, x2, 2
	add	x4, x4, x5
	add	x4, x2, x4
	srli	x3, x4, 2
	sb	x3, 0(x6)
	lbu	x3, -2(t6)
	regsw_c	x15, 0x79c(x19)		# 100110111111110011100
	add	x4, a4, a6
	lbu	x4, 0(x4)
	add	x5, x3, x4
	add	x2, x2, x5
	srli	x2, x2, 2
	sb	x2, 1(x6)
	lbu	x2, -1(t6)
	regsw_c	x15, 0x7f6(x19)		# 100110111111111110110
	add	x5, a7, a6
	lbu	x5, 0(x5)
	add	x3, x4, x3
	add	x2, x2, x5
	add	x3, x3, x2
	addi	x3, x3, 2
	srli	x3, x3, 2
	regsw_c	x9, 0x5fe(x14)		# 011100100110111111110
	sb	x3, 2(x6)
	lbu	x3, 0(t6)
	add	x4, t0, a6
	lbu	x4, 0(x4)
	add	x3, x3, x4
	add	x2, x2, x3
	addi	x2, x2, 2
	regsw_c	x25, 0x1bf(x25)		# 110011100100110111111
	srli	x2, x2, 2
	sb	x2, 3(x6)
	lbu	x2, 1(t6)
	add	x4, t1, a6
	lbu	x4, 0(x4)
	add	x2, x2, x4
	add	x3, x3, x2
	regsw_c	x7, 0x137(x27)		# 110110011100100110111
	addi	x3, x3, 2
	srli	x3, x3, 2
	sb	x3, 4(x6)
	lbu	x3, 2(t6)
	add	x4, t2, a6
	lbu	x4, 0(x4)
	add	x3, x3, x4
	regsw_c	x12, 0x726(x31)		# 111110110011100100110
	add	x2, x2, x3
	addi	x2, x2, 2
	srli	x2, x2, 2
	sb	x2, 5(x6)
	lbu	x2, 3(t6)
	add	x4, t3, a6
	lbu	x4, 0(x4)
	regsw_c	x29, 0x4c6(x31)		# 111111110110011000110
	add	x2, x2, x4
	add	x3, x3, x2
	addi	x3, x3, 2
	srli	x3, x3, 2
	sb	x3, 6(x6)
	lbu	t6, 4(t6)
	lbu	x1, 0(x1)
	regsw_c	x0, 0x80(x5)		# 001010000000010000000
	add	t6, t6, x1
	add	t6, x2, t6
	addi	t6, t6, 2
	srli	t6, t6, 2
	sb	t6, 7(x6)
	addiw	a5, a5, -1
	add	a0, a0, a3
	add	a4, a4, a3
	add	a7, a7, a3
	add	t0, t0, a3
	add	t1, t1, a3
	add	t2, t2, a3
	add	a1, a1, a2
	add	t3, t3, a3
	add	t4, t4, a3
	add	t5, t5, a3
	bnez	a5, .LBB1_23
	j	.LBB1_33
.LBB1_24:
	blez	a5, .LBB1_33
# %bb.25:
	add	a1, a1, a7
	addi	a1, a1, 15
	add	t0, t1, t0
	add	a4, a0, a3
	add	a4, a4, t0
	add	a0, a0, t0
.LBB1_26:                               # =>This Inner Loop Header: Depth=1
	add	a7, a0, a6
	add	t0, a4, a6
	lbu	t1, 0(a7)
	lbu	t2, 0(t0)
	add	t3, a1, a6
	add	t1, t1, t2
	addi	t1, t1, 1
	srli	t1, t1, 1
	sb	t1, -15(t3)
	lbu	t1, 1(a7)
	lbu	t2, 1(t0)
	add	t1, t1, t2
	addi	t1, t1, 1
	srli	t1, t1, 1
	sb	t1, -14(t3)
	lbu	t1, 2(a7)
	lbu	t2, 2(t0)
	add	t1, t1, t2
	addi	t1, t1, 1
	srli	t1, t1, 1
	sb	t1, -13(t3)
	lbu	t1, 3(a7)
	lbu	t2, 3(t0)
	add	t1, t1, t2
	addi	t1, t1, 1
	srli	t1, t1, 1
	sb	t1, -12(t3)
	lbu	t1, 4(a7)
	lbu	t2, 4(t0)
	add	t1, t1, t2
	addi	t1, t1, 1
	srli	t1, t1, 1
	sb	t1, -11(t3)
	lbu	t1, 5(a7)
	lbu	t2, 5(t0)
	add	t1, t1, t2
	addi	t1, t1, 1
	srli	t1, t1, 1
	sb	t1, -10(t3)
	lbu	t1, 6(a7)
	lbu	t2, 6(t0)
	add	t1, t1, t2
	addi	t1, t1, 1
	srli	t1, t1, 1
	sb	t1, -9(t3)
	lbu	t1, 7(a7)
	lbu	t2, 7(t0)
	add	t1, t1, t2
	addi	t1, t1, 1
	srli	t1, t1, 1
	sb	t1, -8(t3)
	lbu	t1, 8(a7)
	lbu	t2, 8(t0)
	add	t1, t1, t2
	addi	t1, t1, 1
	srli	t1, t1, 1
	sb	t1, -7(t3)
	lbu	t1, 9(a7)
	lbu	t2, 9(t0)
	add	t1, t1, t2
	addi	t1, t1, 1
	srli	t1, t1, 1
	sb	t1, -6(t3)
	lbu	t1, 10(a7)
	lbu	t2, 10(t0)
	add	t1, t1, t2
	addi	t1, t1, 1
	srli	t1, t1, 1
	sb	t1, -5(t3)
	lbu	t1, 11(a7)
	lbu	t2, 11(t0)
	add	t1, t1, t2
	addi	t1, t1, 1
	srli	t1, t1, 1
	sb	t1, -4(t3)
	lbu	t1, 12(a7)
	lbu	t2, 12(t0)
	add	t1, t1, t2
	addi	t1, t1, 1
	srli	t1, t1, 1
	sb	t1, -3(t3)
	lbu	t1, 13(a7)
	lbu	t2, 13(t0)
	add	t1, t1, t2
	addi	t1, t1, 1
	srli	t1, t1, 1
	sb	t1, -2(t3)
	lbu	t1, 14(a7)
	lbu	t2, 14(t0)
	add	t1, t1, t2
	addi	t1, t1, 1
	srli	t1, t1, 1
	sb	t1, -1(t3)
	lbu	a7, 15(a7)
	lbu	t0, 15(t0)
	add	a7, a7, t0
	addi	a7, a7, 1
	srli	a7, a7, 1
	sb	a7, 0(t3)
	addiw	a5, a5, -1
	add	a1, a1, a2
	add	a4, a4, a3
	add	a0, a0, a3
	bnez	a5, .LBB1_26
	j	.LBB1_33
.LBB1_27:
	blez	a5, .LBB1_33
# %bb.28:
	add	t0, t1, t0
	add	a4, t0, a0
	add	a0, a4, a3
	addi	a4, a4, 8
.LBB1_29:                               # =>This Inner Loop Header: Depth=1
	add	a7, a4, a6
	add	t0, a0, a6
	lbu	t1, -7(a7)
	lbu	t2, 1(t0)
	lbu	t3, -8(a7)
	lbu	t4, 0(t0)
	add	t5, a1, a6
	add	t1, t1, t2
	addi	t1, t1, 2
	add	t3, t3, t4
	add	t3, t1, t3
	srli	t3, t3, 2
	sb	t3, 0(t5)
	lbu	t2, -6(a7)
	lbu	t3, 2(t0)
	add	t4, t2, t3
	add	t1, t1, t4
	srli	t1, t1, 2
	sb	t1, 1(t5)
	lbu	t1, -5(a7)
	lbu	t4, 3(t0)
	add	t2, t3, t2
	add	t1, t1, t4
	add	t2, t2, t1
	addi	t2, t2, 2
	srli	t2, t2, 2
	sb	t2, 2(t5)
	lbu	t2, -4(a7)
	lbu	t3, 4(t0)
	add	t2, t2, t3
	add	t1, t1, t2
	addi	t1, t1, 2
	srli	t1, t1, 2
	sb	t1, 3(t5)
	lbu	t1, -3(a7)
	lbu	t3, 5(t0)
	add	t1, t1, t3
	add	t2, t2, t1
	addi	t2, t2, 2
	srli	t2, t2, 2
	sb	t2, 4(t5)
	lbu	t2, -2(a7)
	lbu	t3, 6(t0)
	add	t2, t2, t3
	add	t1, t1, t2
	addi	t1, t1, 2
	srli	t1, t1, 2
	sb	t1, 5(t5)
	lbu	t1, -1(a7)
	lbu	t3, 7(t0)
	add	t1, t1, t3
	add	t2, t2, t1
	addi	t2, t2, 2
	srli	t2, t2, 2
	sb	t2, 6(t5)
	lbu	t2, 0(a7)
	lbu	t3, 8(t0)
	add	t2, t2, t3
	add	t1, t1, t2
	addi	t1, t1, 2
	srli	t1, t1, 2
	sb	t1, 7(t5)
	lbu	t1, 1(a7)
	lbu	t3, 9(t0)
	add	t1, t1, t3
	add	t2, t2, t1
	addi	t2, t2, 2
	srli	t2, t2, 2
	sb	t2, 8(t5)
	lbu	t2, 2(a7)
	lbu	t3, 10(t0)
	add	t2, t2, t3
	add	t1, t1, t2
	addi	t1, t1, 2
	srli	t1, t1, 2
	sb	t1, 9(t5)
	lbu	t1, 3(a7)
	lbu	t3, 11(t0)
	add	t1, t1, t3
	add	t2, t2, t1
	addi	t2, t2, 2
	srli	t2, t2, 2
	sb	t2, 10(t5)
	lbu	t2, 4(a7)
	lbu	t3, 12(t0)
	add	t2, t2, t3
	add	t1, t1, t2
	addi	t1, t1, 2
	srli	t1, t1, 2
	sb	t1, 11(t5)
	lbu	t1, 5(a7)
	lbu	t3, 13(t0)
	add	t1, t1, t3
	add	t2, t2, t1
	addi	t2, t2, 2
	srli	t2, t2, 2
	sb	t2, 12(t5)
	lbu	t2, 6(a7)
	lbu	t3, 14(t0)
	add	t2, t2, t3
	add	t1, t1, t2
	addi	t1, t1, 2
	srli	t1, t1, 2
	sb	t1, 13(t5)
	lbu	t1, 7(a7)
	lbu	t3, 15(t0)
	add	t1, t1, t3
	add	t2, t2, t1
	addi	t2, t2, 2
	srli	t2, t2, 2
	sb	t2, 14(t5)
	lbu	a7, 8(a7)
	lbu	t0, 16(t0)
	add	a7, a7, t0
	add	a7, t1, a7
	addi	a7, a7, 2
	srli	a7, a7, 2
	sb	a7, 15(t5)
	addiw	a5, a5, -1
	add	a0, a0, a3
	add	a1, a1, a2
	add	a4, a4, a3
	bnez	a5, .LBB1_29
	j	.LBB1_33
.LBB1_30:
	blez	a5, .LBB1_33
# %bb.31:
	add	t0, t1, t0
	add	a0, t0, a0
	addi	a0, a0, 16
	add	t1, a1, a7
	addi	a1, t1, 8
	addi	a4, t1, 12
	addi	a7, t1, 11
	addi	t0, t1, 10
	addi	t1, t1, 9
.LBB1_32:                               # =>This Inner Loop Header: Depth=1
	add	t2, a0, a6
	lbu	t3, -15(t2)
	lbu	t4, -16(t2)
	add	t5, a1, a6
	addi	t3, t3, 1
	add	t4, t3, t4
	srli	t4, t4, 1
	sb	t4, -8(t5)
	lbu	t4, -14(t2)
	add	t3, t3, t4
	srli	t3, t3, 1
	sb	t3, -7(t5)
	lbu	t3, -13(t2)
	addi	t3, t3, 1
	add	t4, t3, t4
	srli	t4, t4, 1
	sb	t4, -6(t5)
	lbu	t4, -12(t2)
	add	t3, t3, t4
	srli	t3, t3, 1
	sb	t3, -5(t5)
	lbu	t3, -11(t2)
	add	t4, t4, t3
	addi	t4, t4, 1
	srli	t4, t4, 1
	sb	t4, -4(t5)
	lbu	t4, -10(t2)
	add	t3, t3, t4
	addi	t3, t3, 1
	srli	t3, t3, 1
	sb	t3, -3(t5)
	lbu	t3, -9(t2)
	add	t4, t4, t3
	addi	t4, t4, 1
	srli	t4, t4, 1
	sb	t4, -2(t5)
	lbu	t4, -8(t2)
	add	t3, t3, t4
	addi	t3, t3, 1
	srli	t3, t3, 1
	sb	t3, -1(t5)
	lbu	t3, -7(t2)
	add	t4, t4, t3
	addi	t4, t4, 1
	srli	t4, t4, 1
	sb	t4, 0(t5)
	lbu	t4, -6(t2)
	add	t3, t3, t4
	addi	t3, t3, 1
	srli	t3, t3, 1
	add	t6, t1, a6
	sb	t3, 0(t6)
	lbu	t3, -5(t2)
	add	t4, t4, t3
	addi	t4, t4, 1
	srli	t4, t4, 1
	add	t6, t0, a6
	sb	t4, 0(t6)
	lbu	t4, -4(t2)
	add	t3, t3, t4
	addi	t3, t3, 1
	srli	t3, t3, 1
	add	t6, a7, a6
	sb	t3, 0(t6)
	lbu	t3, -3(t2)
	add	t4, t4, t3
	addi	t4, t4, 1
	srli	t4, t4, 1
	add	t6, a4, a6
	sb	t4, 0(t6)
	lbu	t4, -2(t2)
	add	t3, t3, t4
	addi	t3, t3, 1
	srli	t3, t3, 1
	sb	t3, 5(t5)
	lbu	t3, -1(t2)
	add	t4, t4, t3
	addi	t4, t4, 1
	srli	t4, t4, 1
	sb	t4, 6(t5)
	lbu	t2, 0(t2)
	add	t2, t3, t2
	addi	t2, t2, 1
	srli	t2, t2, 1
	sb	t2, 7(t5)
	addiw	a5, a5, -1
	add	a0, a0, a3
	add	a1, a1, a2
	add	a4, a4, a2
	add	a7, a7, a2
	add	t0, t0, a2
	add	t1, t1, a2
	bnez	a5, .LBB1_32
.LBB1_33:
	ret
.Lfunc_end1:
	.size	recon_comp, .Lfunc_end1-recon_comp
                                        # -- End function
	.option	pop
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Illegal block number in recon_comp_obmc (recon.c)\n"
	.size	.L.str, 51

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
