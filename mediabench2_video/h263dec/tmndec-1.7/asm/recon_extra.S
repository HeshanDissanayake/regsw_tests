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
	add	n3, a7, t2
	addi	a5, n3, 4
	sd	a5, 72(sp)                      # 8-byte Folded Spill
	addi	a5, n3, 8
	sd	a5, 64(sp)                      # 8-byte Folded Spill
	addi	n3, n3, 7
	addi	n4, sp, 116
	addi	n5, sp, 372
	add	n10, a7, s4
	addi	a5, n10, 8
	sd	a5, 56(sp)                      # 8-byte Folded Spill
	addi	n7, n10, 7
	addi	a7, a7, 2
	sd	a7, 48(sp)                      # 8-byte Folded Spill
	addi	a5, n10, 2
	sd	a5, 40(sp)                      # 8-byte Folded Spill
	addi	n10, n10, 3
	lui	n11, %hi(newframe)
	li	n12, 360
	lui	n13, %hi(pb_frame)
	li	n14, 1
	lui	n17, %hi(mb_width)
	lui	a7, 6
	addiw	n18, a7, 1704
	lui	a7, 32
	addiw	n19, a7, 328
	add	n19, a1, n19
	lui	n20, %hi(OM)
	addi	n20, n20, %lo(OM)
	li	n21, 4
	lui	n22, %hi(OM)
	li	n23, 2
	j	.LBB0_8
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	lbu	a5, 0(a7)
	lw	a6, 1024(n20)
	lw	n1, 88(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 88(sp)
	lbu	a5, 1(a7)
	lw	a6, 1028(n20)
	lw	n1, 92(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 92(sp)
	lbu	a5, 2(a7)
	lw	a6, 1032(n20)
	lw	n1, 96(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 96(sp)
	lbu	a5, 3(a7)
	lw	a6, 1036(n20)
	lw	n1, 100(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 100(sp)
	add	a7, a7, s4
	lbu	a5, 0(a7)
	lw	a6, 1056(n20)
	lw	n1, 120(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 120(sp)
	lbu	a5, 1(a7)
	lw	a6, 1060(n20)
	lw	n1, 124(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 124(sp)
	lbu	a5, 2(a7)
	lw	a6, 1064(n20)
	lw	n1, 128(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 128(sp)
	lbu	a5, 3(a7)
	lw	a6, 1068(n20)
	lw	n1, 132(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 132(sp)
	add	a7, a7, s4
	lbu	a5, 0(a7)
	lw	a6, 1088(n20)
	lw	n1, 152(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 152(sp)
	lbu	a5, 1(a7)
	lw	a6, 1092(n20)
	lw	n1, 156(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 156(sp)
	lbu	a5, 2(a7)
	lw	a6, 1096(n20)
	lw	n1, 160(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 160(sp)
	lbu	a5, 3(a7)
	lw	a6, 1100(n20)
	lw	n1, 164(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 164(sp)
	add	a7, a7, s4
	lbu	a5, 0(a7)
	lw	a6, 1120(n20)
	lw	n1, 184(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 184(sp)
	lbu	a5, 1(a7)
	lw	a6, 1124(n20)
	lw	n1, 188(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 188(sp)
	lbu	a5, 2(a7)
	lw	a6, 1128(n20)
	lw	n1, 192(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 192(sp)
	lbu	a5, 3(a7)
	lw	a6, 1132(n20)
	lw	n1, 196(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 196(sp)
	add	a7, a7, s4
	lbu	a5, 0(a7)
	lw	a6, 1152(n20)
	lw	n1, 216(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 216(sp)
	lbu	a5, 1(a7)
	lw	a6, 1156(n20)
	lw	n1, 220(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 220(sp)
	lbu	a5, 2(a7)
	lw	a6, 1160(n20)
	lw	n1, 224(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 224(sp)
	lbu	a5, 3(a7)
	lw	a6, 1164(n20)
	lw	n1, 228(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 228(sp)
	add	a7, a7, s4
	lbu	a5, 0(a7)
	lw	a6, 1184(n20)
	lw	n1, 248(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 248(sp)
	lbu	a5, 1(a7)
	lw	a6, 1188(n20)
	lw	n1, 252(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 252(sp)
	lbu	a5, 2(a7)
	lw	a6, 1192(n20)
	lw	n1, 256(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 256(sp)
	lbu	a5, 3(a7)
	lw	a6, 1196(n20)
	lw	n1, 260(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 260(sp)
	add	a7, a7, s4
	lbu	a5, 0(a7)
	lw	a6, 1216(n20)
	lw	n1, 280(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 280(sp)
	lbu	a5, 1(a7)
	lw	a6, 1220(n20)
	lw	n1, 284(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 284(sp)
	lbu	a5, 2(a7)
	lw	a6, 1224(n20)
	lw	n1, 288(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 288(sp)
	lbu	a5, 3(a7)
	lw	a6, 1228(n20)
	lw	n1, 292(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 292(sp)
	add	a7, a7, s4
	lbu	a5, 0(a7)
	lw	a6, 1248(n20)
	lw	n1, 312(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 312(sp)
	lbu	a5, 1(a7)
	lw	a6, 1252(n20)
	lw	n1, 316(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 316(sp)
	lbu	a5, 2(a7)
	lw	a6, 1256(n20)
	lw	n1, 320(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 320(sp)
	lbu	a5, 3(a7)
	lw	a6, 1260(n20)
	lw	a7, 324(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 324(sp)
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	lw	a5, 88(sp)
	mulw	a6, n26, s5
	add	a6, n27, a6
	add	a6, a6, n25
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
	bne	a4, n21, .LBB0_8
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
	addw	n25, a7, s3
	slli	a7, a4, 2
	andi	a7, a7, 8
	addw	n26, a7, s2
	sraiw	n6, n25, 4
	addi	n29, n6, 1
	sraiw	n9, n26, 4
	slli	n30, n29, 2
	mul	n8, n9, n12
	add	n8, t0, n8
	addi	n2, n8, 360
	add	a7, n2, n30
	lw	n31, 0(a7)
	ld	n27, %lo(newframe)(n11)
	addi	a7, n9, 1
	addi	n31, n31, -2
	seqz	s6, n31
	slli	n1, n6, 2
	add	n1, n2, n1
	lw	n28, 0(n1)
	addi	n1, n6, 2
	slli	n24, n1, 2
	add	n2, n2, n24
	lw	n2, 0(n2)
	addiw	n24, n28, -3
	lw	s0, %lo(pb_frame)(n13)
	sltiu	s1, n24, 2
	addiw	n24, n2, -3
	sltiu	n24, n24, 2
	seqz	s0, s0
	and	s1, s0, s1
	and	n24, s0, n24
	blt	n14, a4, .LBB0_20
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	add	n8, n8, n30
	lw	n8, 0(n8)
	addiw	s7, n8, -3
	sltiu	s7, s7, 2
	and	s0, s0, s7
	beqz	a4, .LBB0_25
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=1
	beq	a4, n14, .LBB0_11
	j	.LBB0_130
.LBB0_11:                               #   in Loop: Header=BB0_8 Depth=1
	mv	s7, a7
	bnez	s0, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_8 Depth=1
	mv	s7, n9
.LBB0_13:                               #   in Loop: Header=BB0_8 Depth=1
	li	a5, 16
	bgeu	n26, a5, .LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_8 Depth=1
	li	s7, 1
.LBB0_15:                               #   in Loop: Header=BB0_8 Depth=1
	seqz	n6, n31
	slli	s8, n6, 1
	sltiu	n9, n26, 16
	or	n9, n9, s0
	mv	s9, s8
	bnez	n9, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_8 Depth=1
	addi	n8, n8, -2
	seqz	s9, n8
	slli	s9, s9, 2
.LBB0_17:                               #   in Loop: Header=BB0_8 Depth=1
	lw	n8, %lo(mb_width)(n17)
	xor	n8, n29, n8
	seqz	n8, n8
	or	n8, n8, n24
	mv	s1, n29
	bnez	n8, .LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_8 Depth=1
	addi	n2, n2, -2
	seqz	s8, n2
	mv	s1, n1
.LBB0_19:                               #   in Loop: Header=BB0_8 Depth=1
	slli	s0, n6, 2
	j	.LBB0_42
.LBB0_20:                               #   in Loop: Header=BB0_8 Depth=1
	beq	a4, n23, .LBB0_29
# %bb.21:                               #   in Loop: Header=BB0_8 Depth=1
	li	a5, 3
	beq	a4, a5, .LBB0_22
	j	.LBB0_130
.LBB0_22:                               #   in Loop: Header=BB0_8 Depth=1
	lw	n8, %lo(mb_width)(n17)
	seqz	n6, n31
	slli	s0, n6, 2
	xor	n8, n29, n8
	seqz	n8, n8
	or	n8, n8, n24
	mv	s1, n29
	mv	s8, s0
	bnez	n8, .LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_8 Depth=1
	addi	n2, n2, -2
	snez	n2, n2
	addi	n2, n2, -1
	andi	s8, n2, 3
	mv	s1, n1
.LBB0_24:                               #   in Loop: Header=BB0_8 Depth=1
	slli	s9, n6, 1
	negw	n1, n6
	andi	s6, n1, 3
	mv	s7, a7
	j	.LBB0_42
.LBB0_25:                               #   in Loop: Header=BB0_8 Depth=1
	mv	s7, a7
	bnez	s0, .LBB0_33
# %bb.26:                               #   in Loop: Header=BB0_8 Depth=1
	mv	s7, n9
	mv	n2, n29
	mv	n1, s6
	beqz	s1, .LBB0_34
.LBB0_27:                               #   in Loop: Header=BB0_8 Depth=1
	li	a5, 16
	bgeu	n26, a5, .LBB0_35
.LBB0_28:                               #   in Loop: Header=BB0_8 Depth=1
	li	s7, 1
	sltiu	n6, n26, 16
	or	n6, n6, s0
	mv	s9, s6
	beqz	n6, .LBB0_36
	j	.LBB0_37
.LBB0_29:                               #   in Loop: Header=BB0_8 Depth=1
	seqz	s8, n31
	negw	s0, s8
	andi	s0, s0, 3
	mv	n2, n29
	mv	n1, s0
	bnez	s1, .LBB0_31
# %bb.30:                               #   in Loop: Header=BB0_8 Depth=1
	addi	n28, n28, -2
	seqz	n1, n28
	slli	n1, n1, 2
	mv	n2, n6
.LBB0_31:                               #   in Loop: Header=BB0_8 Depth=1
	slli	s8, s8, 2
	li	a5, 15
	bltu	a5, n25, .LBB0_39
# %bb.32:                               #   in Loop: Header=BB0_8 Depth=1
	li	s1, 1
	li	n29, 1
	mv	s7, a7
	mv	s9, s6
	mv	s6, s0
	j	.LBB0_42
.LBB0_33:                               #   in Loop: Header=BB0_8 Depth=1
	mv	n2, n29
	mv	n1, s6
	bnez	s1, .LBB0_27
.LBB0_34:                               #   in Loop: Header=BB0_8 Depth=1
	addi	n28, n28, -2
	seqz	n1, n28
	slli	n1, n1, 1
	mv	n2, n6
	li	a5, 16
	bltu	n26, a5, .LBB0_28
.LBB0_35:                               #   in Loop: Header=BB0_8 Depth=1
	sltiu	n6, n26, 16
	or	n6, n6, s0
	mv	s9, s6
	bnez	n6, .LBB0_37
.LBB0_36:                               #   in Loop: Header=BB0_8 Depth=1
	addi	n8, n8, -2
	snez	n6, n8
	addi	n6, n6, -1
	andi	s9, n6, 3
.LBB0_37:                               #   in Loop: Header=BB0_8 Depth=1
	seqz	s8, n31
	negw	s0, s8
	andi	s0, s0, 3
	slli	s8, s8, 1
	li	a5, 15
	bltu	a5, n25, .LBB0_40
# %bb.38:                               #   in Loop: Header=BB0_8 Depth=1
	li	s1, 1
	li	n29, 1
	j	.LBB0_42
.LBB0_39:                               #   in Loop: Header=BB0_8 Depth=1
	mv	s1, n29
	mv	n29, n2
	mv	s7, a7
	mv	s9, s6
	j	.LBB0_41
.LBB0_40:                               #   in Loop: Header=BB0_8 Depth=1
	mv	s1, n29
	mv	n29, n2
.LBB0_41:                               #   in Loop: Header=BB0_8 Depth=1
	mv	s6, n1
.LBB0_42:                               #   in Loop: Header=BB0_8 Depth=1
	slli	n1, a3, 3
	andi	n28, n1, 8
	addiw	a4, a4, 1
	snez	n1, n31
	addi	n1, n1, -1
	and	n1, n1, a4
	mul	a7, a7, n12
	mul	n1, n1, n18
	add	n2, a1, a7
	add	n2, n2, n30
	add	n2, n2, n1
	lw	n2, 0(n2)
	add	n6, n19, a7
	add	n6, n6, n30
	add	n1, n6, n1
	lw	n1, 0(n1)
	mul	n6, s7, n12
	mul	n8, s9, n18
	add	n9, a1, n6
	add	n9, n9, n30
	add	n9, n9, n8
	lw	s11, 0(n9)
	add	n6, n19, n6
	add	n6, n6, n30
	add	n6, n6, n8
	lw	ra, 0(n6)
	mul	n6, s0, n18
	add	n8, a1, a7
	add	n8, n8, n30
	add	n8, n8, n6
	lw	s9, 0(n8)
	add	n8, n19, a7
	add	n8, n8, n30
	add	n6, n8, n6
	lw	s10, 0(n6)
	mul	n6, s8, n18
	add	n8, a1, a7
	slli	s1, s1, 2
	add	n8, n8, s1
	add	n8, n8, n6
	lw	s7, 0(n8)
	add	n8, n19, a7
	add	n8, n8, s1
	add	n6, n8, n6
	lw	s8, 0(n6)
	mul	n6, s6, n18
	add	n8, a1, a7
	slli	n29, n29, 2
	add	n8, n8, n29
	add	n8, n8, n6
	lw	n30, 0(n8)
	add	a7, n19, a7
	add	a7, a7, n29
	add	a7, a7, n6
	lw	s6, 0(a7)
	add	n31, a0, n25
	srai	a7, n2, 1
	andi	n2, n2, 1
	srai	s1, n1, 1
	andi	n1, n1, 1
	add	n6, s1, n26
	mulw	s0, n6, s4
	add	n6, n31, a7
	add	s0, n6, s0
	or	n6, n2, n1
	andi	n29, a2, -8
	beqz	n6, .LBB0_47
# %bb.43:                               #   in Loop: Header=BB0_8 Depth=1
	add	s1, s2, s1
	beqz	n2, .LBB0_44
	j	.LBB0_71
.LBB0_44:                               #   in Loop: Header=BB0_8 Depth=1
	bnez	n1, .LBB0_45
	j	.LBB0_71
.LBB0_45:                               #   in Loop: Header=BB0_8 Depth=1
	lbu	n9, 1(s0)
	lbu	n8, 2(s0)
	lbu	n6, 3(s0)
	lbu	n2, 4(s0)
	lbu	n1, 5(s0)
	lbu	n24, 6(s0)
	add	a7, n28, a7
	add	s1, s1, n29
	mulw	s1, s4, s1
	add	a7, t6, a7
	add	a5, a7, s1
	addi	a7, sp, 88
	mv	s0, n20
.LBB0_46:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	s1, a5, s4
	lbu	a6, -7(a5)
	lbu	n15, -7(s1)
	lw	n16, 0(s0)
	add	a6, a6, n15
	addi	a6, a6, 1
	srli	a6, a6, 1
	mul	a6, a6, n16
	sw	a6, 0(a7)
	lbu	a6, -6(s1)
	lw	n15, 4(s0)
	add	n9, n9, a6
	addi	n9, n9, 1
	srliw	n9, n9, 1
	mul	n9, n9, n15
	sw	n9, 4(a7)
	lbu	n9, -5(s1)
	lw	n15, 8(s0)
	add	n8, n8, n9
	addi	n8, n8, 1
	srliw	n8, n8, 1
	mul	n8, n8, n15
	sw	n8, 8(a7)
	lbu	n8, -4(s1)
	lw	n15, 12(s0)
	add	n6, n6, n8
	addi	n6, n6, 1
	srliw	n6, n6, 1
	mul	n6, n6, n15
	sw	n6, 12(a7)
	lbu	n6, -3(s1)
	lw	n15, 16(s0)
	add	n2, n2, n6
	addi	n2, n2, 1
	srliw	n2, n2, 1
	mul	n2, n2, n15
	sw	n2, 16(a7)
	lbu	n2, -2(s1)
	lw	n15, 20(s0)
	add	n1, n1, n2
	addi	n1, n1, 1
	srliw	n1, n1, 1
	mul	n1, n1, n15
	sw	n1, 20(a7)
	lbu	n1, -1(s1)
	lw	n15, 24(s0)
	add	n24, n24, n1
	addi	n24, n24, 1
	srliw	n16, n24, 1
	mul	n15, n16, n15
	sw	n15, 24(a7)
	lbu	a5, 0(a5)
	lbu	n15, 0(s1)
	lw	n16, 28(s0)
	add	a5, a5, n15
	addi	a5, a5, 1
	srli	a5, a5, 1
	mul	a5, a5, n16
	sw	a5, 28(a7)
	addi	a7, a7, 32
	addi	s0, s0, 32
	mv	a5, s1
	mv	n24, n1
	mv	n1, n2
	mv	n2, n6
	mv	n6, n8
	mv	n8, n9
	mv	n9, a6
	bne	a7, t4, .LBB0_46
	j	.LBB0_48
.LBB0_47:                               #   in Loop: Header=BB0_8 Depth=1
	lbu	n1, 0(s0)
	lw	n2, %lo(OM)(n22)
	addi	a7, n22, %lo(OM)
	mul	n1, n2, n1
	sw	n1, 88(sp)
	lbu	n1, 1(s0)
	lw	n2, 4(a7)
	mul	n1, n2, n1
	sw	n1, 92(sp)
	lbu	n1, 2(s0)
	lw	n2, 8(a7)
	mul	n1, n2, n1
	sw	n1, 96(sp)
	lbu	n1, 3(s0)
	lw	n2, 12(a7)
	mul	n1, n2, n1
	sw	n1, 100(sp)
	lbu	n1, 4(s0)
	lw	n2, 16(a7)
	mul	n1, n2, n1
	sw	n1, 104(sp)
	lbu	n1, 5(s0)
	lw	n2, 20(a7)
	mul	n1, n2, n1
	sw	n1, 108(sp)
	lbu	n1, 6(s0)
	lw	n2, 24(a7)
	mul	n1, n2, n1
	sw	n1, 112(sp)
	lbu	n1, 7(s0)
	lw	n2, 28(a7)
	mul	n1, n2, n1
	sw	n1, 116(sp)
	add	s0, s0, s4
	lbu	n1, 0(s0)
	lw	n2, 32(a7)
	mul	n1, n2, n1
	sw	n1, 120(sp)
	lbu	n1, 1(s0)
	lw	n2, 36(a7)
	mul	n1, n2, n1
	sw	n1, 124(sp)
	lbu	n1, 2(s0)
	lw	n2, 40(a7)
	mul	n1, n2, n1
	sw	n1, 128(sp)
	lbu	n1, 3(s0)
	lw	n2, 44(a7)
	mul	n1, n2, n1
	sw	n1, 132(sp)
	lbu	n1, 4(s0)
	lw	n2, 48(a7)
	mul	n1, n2, n1
	sw	n1, 136(sp)
	lbu	n1, 5(s0)
	lw	n2, 52(a7)
	mul	n1, n2, n1
	sw	n1, 140(sp)
	lbu	n1, 6(s0)
	lw	n2, 56(a7)
	mul	n1, n2, n1
	sw	n1, 144(sp)
	lbu	n1, 7(s0)
	lw	n2, 60(a7)
	mul	n1, n2, n1
	sw	n1, 148(sp)
	add	s0, s0, s4
	lbu	n1, 0(s0)
	lw	n2, 64(a7)
	mul	n1, n2, n1
	sw	n1, 152(sp)
	lbu	n1, 1(s0)
	lw	n2, 68(a7)
	mul	n1, n2, n1
	sw	n1, 156(sp)
	lbu	n1, 2(s0)
	lw	n2, 72(a7)
	mul	n1, n2, n1
	sw	n1, 160(sp)
	lbu	n1, 3(s0)
	lw	n2, 76(a7)
	mul	n1, n2, n1
	sw	n1, 164(sp)
	lbu	n1, 4(s0)
	lw	n2, 80(a7)
	mul	n1, n2, n1
	sw	n1, 168(sp)
	lbu	n1, 5(s0)
	lw	n2, 84(a7)
	mul	n1, n2, n1
	sw	n1, 172(sp)
	lbu	n1, 6(s0)
	lw	n2, 88(a7)
	mul	n1, n2, n1
	sw	n1, 176(sp)
	lbu	n1, 7(s0)
	lw	n2, 92(a7)
	mul	n1, n2, n1
	sw	n1, 180(sp)
	add	s0, s0, s4
	lbu	n1, 0(s0)
	lw	n2, 96(a7)
	mul	n1, n2, n1
	sw	n1, 184(sp)
	lbu	n1, 1(s0)
	lw	n2, 100(a7)
	mul	n1, n2, n1
	sw	n1, 188(sp)
	lbu	n1, 2(s0)
	lw	n2, 104(a7)
	mul	n1, n2, n1
	sw	n1, 192(sp)
	lbu	n1, 3(s0)
	lw	n2, 108(a7)
	mul	n1, n2, n1
	sw	n1, 196(sp)
	lbu	n1, 4(s0)
	lw	n2, 112(a7)
	mul	n1, n2, n1
	sw	n1, 200(sp)
	lbu	n1, 5(s0)
	lw	n2, 116(a7)
	mul	n1, n2, n1
	sw	n1, 204(sp)
	lbu	n1, 6(s0)
	lw	n2, 120(a7)
	mul	n1, n2, n1
	sw	n1, 208(sp)
	lbu	n1, 7(s0)
	lw	n2, 124(a7)
	mul	n1, n2, n1
	sw	n1, 212(sp)
	add	s0, s0, s4
	lbu	n1, 0(s0)
	lw	n2, 128(a7)
	mul	n1, n2, n1
	sw	n1, 216(sp)
	lbu	n1, 1(s0)
	lw	n2, 132(a7)
	mul	n1, n2, n1
	sw	n1, 220(sp)
	lbu	n1, 2(s0)
	lw	n2, 136(a7)
	mul	n1, n2, n1
	sw	n1, 224(sp)
	lbu	n1, 3(s0)
	lw	n2, 140(a7)
	mul	n1, n2, n1
	sw	n1, 228(sp)
	lbu	n1, 4(s0)
	lw	n2, 144(a7)
	mul	n1, n2, n1
	sw	n1, 232(sp)
	lbu	n1, 5(s0)
	lw	n2, 148(a7)
	mul	n1, n2, n1
	sw	n1, 236(sp)
	lbu	n1, 6(s0)
	lw	n2, 152(a7)
	mul	n1, n2, n1
	sw	n1, 240(sp)
	lbu	n1, 7(s0)
	lw	n2, 156(a7)
	mul	n1, n2, n1
	sw	n1, 244(sp)
	add	s0, s0, s4
	lbu	n1, 0(s0)
	lw	n2, 160(a7)
	mul	n1, n2, n1
	sw	n1, 248(sp)
	lbu	n1, 1(s0)
	lw	n2, 164(a7)
	mul	n1, n2, n1
	sw	n1, 252(sp)
	lbu	n1, 2(s0)
	lw	n2, 168(a7)
	mul	n1, n2, n1
	sw	n1, 256(sp)
	lbu	n1, 3(s0)
	lw	n2, 172(a7)
	mul	n1, n2, n1
	sw	n1, 260(sp)
	lbu	n1, 4(s0)
	lw	n2, 176(a7)
	mul	n1, n2, n1
	sw	n1, 264(sp)
	lbu	n1, 5(s0)
	lw	n2, 180(a7)
	mul	n1, n2, n1
	sw	n1, 268(sp)
	lbu	n1, 6(s0)
	lw	n2, 184(a7)
	mul	n1, n2, n1
	sw	n1, 272(sp)
	lbu	n1, 7(s0)
	lw	n2, 188(a7)
	mul	n1, n2, n1
	sw	n1, 276(sp)
	add	s0, s0, s4
	lbu	n1, 0(s0)
	lw	n2, 192(a7)
	mul	n1, n2, n1
	sw	n1, 280(sp)
	lbu	n1, 1(s0)
	lw	n2, 196(a7)
	mul	n1, n2, n1
	sw	n1, 284(sp)
	lbu	n1, 2(s0)
	lw	n2, 200(a7)
	mul	n1, n2, n1
	sw	n1, 288(sp)
	lbu	n1, 3(s0)
	lw	n2, 204(a7)
	mul	n1, n2, n1
	sw	n1, 292(sp)
	lbu	n1, 4(s0)
	lw	n2, 208(a7)
	mul	n1, n2, n1
	sw	n1, 296(sp)
	lbu	n1, 5(s0)
	lw	n2, 212(a7)
	mul	n1, n2, n1
	sw	n1, 300(sp)
	lbu	n1, 6(s0)
	lw	n2, 216(a7)
	mul	n1, n2, n1
	sw	n1, 304(sp)
	lbu	n1, 7(s0)
	lw	n2, 220(a7)
	mul	n1, n2, n1
	sw	n1, 308(sp)
	add	s0, s0, s4
	lbu	n1, 0(s0)
	lw	n2, 224(a7)
	mul	n1, n2, n1
	sw	n1, 312(sp)
	lbu	n1, 1(s0)
	lw	n2, 228(a7)
	mul	n1, n2, n1
	sw	n1, 316(sp)
	lbu	n1, 2(s0)
	lw	n2, 232(a7)
	mul	n1, n2, n1
	sw	n1, 320(sp)
	lbu	n1, 3(s0)
	lw	n2, 236(a7)
	mul	n1, n2, n1
	sw	n1, 324(sp)
	lbu	n1, 4(s0)
	lw	n2, 240(a7)
	mul	n1, n2, n1
	sw	n1, 328(sp)
	lbu	n1, 5(s0)
	lw	n2, 244(a7)
	mul	n1, n2, n1
	sw	n1, 332(sp)
	lbu	n1, 6(s0)
	lw	n2, 248(a7)
	mul	n1, n2, n1
	sw	n1, 336(sp)
	lbu	n1, 7(s0)
	lw	a7, 252(a7)
	mul	a7, a7, n1
	sw	a7, 340(sp)
.LBB0_48:                               #   in Loop: Header=BB0_8 Depth=1
	srai	n8, s11, 1
	andi	n2, s11, 1
	srai	n9, ra, 1
	andi	n1, ra, 1
	add	a5, n9, n26
	mulw	a5, a5, s4
	add	a5, n31, a5
	or	a6, n2, n1
	add	a7, a5, n8
	beqz	a6, .LBB0_53
# %bb.49:                               #   in Loop: Header=BB0_8 Depth=1
	add	n9, s2, n9
	bnez	n2, .LBB0_75
# %bb.50:                               #   in Loop: Header=BB0_8 Depth=1
	beqz	n1, .LBB0_75
# %bb.51:                               #   in Loop: Header=BB0_8 Depth=1
	lbu	n6, 2(a7)
	lbu	n2, 3(a7)
	lbu	n1, 4(a7)
	lbu	n24, 5(a7)
	lbu	s11, 6(a7)
	add	n8, n28, n8
	add	n9, n9, n29
	mulw	s1, s4, n9
	add	n8, t6, n8
	add	s1, n8, s1
	addi	a7, n20, 256
	addi	s0, sp, 88
.LBB0_52:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	a5, s1, s4
	lbu	a6, -7(s1)
	lbu	n8, -7(a5)
	add	a6, a6, n8
	lw	n8, 0(a7)
	lw	n9, 0(s0)
	addi	a6, a6, 1
	srli	a6, a6, 1
	mul	a6, a6, n8
	add	a6, a6, n9
	sw	a6, 0(s0)
	lbu	a6, -6(s1)
	lbu	n8, -6(a5)
	add	a6, a6, n8
	lw	n8, 4(a7)
	lw	n9, 4(s0)
	addi	a6, a6, 1
	srli	a6, a6, 1
	mul	a6, a6, n8
	add	a6, a6, n9
	sw	a6, 4(s0)
	lbu	a6, -5(a5)
	add	n6, n6, a6
	lw	n8, 8(a7)
	lw	n9, 8(s0)
	addi	n6, n6, 1
	srliw	n6, n6, 1
	mul	n6, n6, n8
	add	n6, n6, n9
	sw	n6, 8(s0)
	lbu	n6, -4(a5)
	add	n2, n2, n6
	lw	n8, 12(a7)
	lw	n9, 12(s0)
	addi	n2, n2, 1
	srliw	n2, n2, 1
	mul	n2, n2, n8
	add	n2, n2, n9
	sw	n2, 12(s0)
	lbu	n2, -3(a5)
	add	n1, n1, n2
	lw	n8, 16(a7)
	lw	n9, 16(s0)
	addi	n1, n1, 1
	srliw	n1, n1, 1
	mul	n1, n1, n8
	add	n1, n1, n9
	sw	n1, 16(s0)
	lbu	n1, -2(a5)
	add	n24, n24, n1
	lw	n8, 20(a7)
	lw	n9, 20(s0)
	addi	n24, n24, 1
	srliw	n15, n24, 1
	mul	n8, n15, n8
	add	n8, n8, n9
	sw	n8, 20(s0)
	lbu	n8, -1(a5)
	add	s11, s11, n8
	lw	n9, 24(a7)
	lw	n15, 24(s0)
	addi	s11, s11, 1
	srliw	n16, s11, 1
	mul	n9, n16, n9
	add	n9, n9, n15
	sw	n9, 24(s0)
	lbu	n9, 0(s1)
	lbu	n15, 0(a5)
	add	n9, n9, n15
	lw	n15, 28(a7)
	lw	n16, 28(s0)
	addi	n9, n9, 1
	srli	n9, n9, 1
	mul	n9, n9, n15
	add	n9, n9, n16
	sw	n9, 28(s0)
	addi	s0, s0, 32
	addi	a7, a7, 32
	mv	s1, a5
	mv	s11, n8
	mv	n24, n1
	mv	n1, n2
	mv	n2, n6
	mv	n6, a6
	bne	s0, t1, .LBB0_52
	j	.LBB0_54
.LBB0_53:                               #   in Loop: Header=BB0_8 Depth=1
	lbu	a5, 0(a7)
	lw	a6, 256(n20)
	lw	n1, 88(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 88(sp)
	lbu	a5, 1(a7)
	lw	a6, 260(n20)
	lw	n1, 92(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 92(sp)
	lbu	a5, 2(a7)
	lw	a6, 264(n20)
	lw	n1, 96(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 96(sp)
	lbu	a5, 3(a7)
	lw	a6, 268(n20)
	lw	n1, 100(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 100(sp)
	lbu	a5, 4(a7)
	lw	a6, 272(n20)
	lw	n1, 104(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 104(sp)
	lbu	a5, 5(a7)
	lw	a6, 276(n20)
	lw	n1, 108(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 108(sp)
	lbu	a5, 6(a7)
	lw	a6, 280(n20)
	lw	n1, 112(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 112(sp)
	lbu	a5, 7(a7)
	lw	a6, 284(n20)
	lw	n1, 116(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 116(sp)
	add	a7, a7, s4
	lbu	a5, 0(a7)
	lw	a6, 288(n20)
	lw	n1, 120(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 120(sp)
	lbu	a5, 1(a7)
	lw	a6, 292(n20)
	lw	n1, 124(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 124(sp)
	lbu	a5, 2(a7)
	lw	a6, 296(n20)
	lw	n1, 128(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 128(sp)
	lbu	a5, 3(a7)
	lw	a6, 300(n20)
	lw	n1, 132(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 132(sp)
	lbu	a5, 4(a7)
	lw	a6, 304(n20)
	lw	n1, 136(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 136(sp)
	lbu	a5, 5(a7)
	lw	a6, 308(n20)
	lw	n1, 140(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 140(sp)
	lbu	a5, 6(a7)
	lw	a6, 312(n20)
	lw	n1, 144(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 144(sp)
	lbu	a5, 7(a7)
	lw	a6, 316(n20)
	lw	n1, 148(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 148(sp)
	add	a7, a7, s4
	lbu	a5, 0(a7)
	lw	a6, 320(n20)
	lw	n1, 152(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 152(sp)
	lbu	a5, 1(a7)
	lw	a6, 324(n20)
	lw	n1, 156(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 156(sp)
	lbu	a5, 2(a7)
	lw	a6, 328(n20)
	lw	n1, 160(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 160(sp)
	lbu	a5, 3(a7)
	lw	a6, 332(n20)
	lw	n1, 164(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 164(sp)
	lbu	a5, 4(a7)
	lw	a6, 336(n20)
	lw	n1, 168(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 168(sp)
	lbu	a5, 5(a7)
	lw	a6, 340(n20)
	lw	n1, 172(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 172(sp)
	lbu	a5, 6(a7)
	lw	a6, 344(n20)
	lw	n1, 176(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 176(sp)
	lbu	a5, 7(a7)
	lw	a6, 348(n20)
	lw	n1, 180(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 180(sp)
	add	a7, a7, s4
	lbu	a5, 0(a7)
	lw	a6, 352(n20)
	lw	n1, 184(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 184(sp)
	lbu	a5, 1(a7)
	lw	a6, 356(n20)
	lw	n1, 188(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 188(sp)
	lbu	a5, 2(a7)
	lw	a6, 360(n20)
	lw	n1, 192(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 192(sp)
	lbu	a5, 3(a7)
	lw	a6, 364(n20)
	lw	n1, 196(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 196(sp)
	lbu	a5, 4(a7)
	lw	a6, 368(n20)
	lw	n1, 200(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 200(sp)
	lbu	a5, 5(a7)
	lw	a6, 372(n20)
	lw	n1, 204(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 204(sp)
	lbu	a5, 6(a7)
	lw	a6, 376(n20)
	lw	n1, 208(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 208(sp)
	lbu	a5, 7(a7)
	lw	a6, 380(n20)
	lw	a7, 212(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 212(sp)
.LBB0_54:                               #   in Loop: Header=BB0_8 Depth=1
	srai	a7, s9, 1
	andi	n6, s9, 1
	srai	n8, s10, 1
	andi	n1, s10, 1
	add	a5, n8, n26
	mulw	a5, a5, s4
	add	a5, n31, a5
	or	a6, n6, n1
	add	n2, a5, a7
	beqz	a6, .LBB0_59
# %bb.55:                               #   in Loop: Header=BB0_8 Depth=1
	add	n8, s2, n8
	bnez	n6, .LBB0_79
# %bb.56:                               #   in Loop: Header=BB0_8 Depth=1
	beqz	n1, .LBB0_79
# %bb.57:                               #   in Loop: Header=BB0_8 Depth=1
	add	a5, n2, t2
	lbu	n6, 2(a5)
	lbu	n2, 3(a5)
	lbu	n1, 4(a5)
	lbu	n24, 5(a5)
	lbu	s9, 6(a5)
	add	a7, n28, a7
	add	n8, n8, n29
	mulw	s1, s4, n8
	add	a7, n3, a7
	add	s1, a7, s1
	addi	a7, n20, 640
	mv	s0, t1
.LBB0_58:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	a5, s1, s4
	lbu	a6, -7(s1)
	lbu	n8, -7(a5)
	add	a6, a6, n8
	lw	n8, 0(a7)
	lw	n9, 0(s0)
	addi	a6, a6, 1
	srli	a6, a6, 1
	mul	a6, a6, n8
	add	a6, a6, n9
	sw	a6, 0(s0)
	lbu	a6, -6(s1)
	lbu	n8, -6(a5)
	add	a6, a6, n8
	lw	n8, 4(a7)
	lw	n9, 4(s0)
	addi	a6, a6, 1
	srli	a6, a6, 1
	mul	a6, a6, n8
	add	a6, a6, n9
	sw	a6, 4(s0)
	lbu	a6, -5(a5)
	add	n6, n6, a6
	lw	n8, 8(a7)
	lw	n9, 8(s0)
	addi	n6, n6, 1
	srliw	n6, n6, 1
	mul	n6, n6, n8
	add	n6, n6, n9
	sw	n6, 8(s0)
	lbu	n6, -4(a5)
	add	n2, n2, n6
	lw	n8, 12(a7)
	lw	n9, 12(s0)
	addi	n2, n2, 1
	srliw	n2, n2, 1
	mul	n2, n2, n8
	add	n2, n2, n9
	sw	n2, 12(s0)
	lbu	n2, -3(a5)
	add	n1, n1, n2
	lw	n8, 16(a7)
	lw	n9, 16(s0)
	addi	n1, n1, 1
	srliw	n1, n1, 1
	mul	n1, n1, n8
	add	n1, n1, n9
	sw	n1, 16(s0)
	lbu	n1, -2(a5)
	add	n24, n24, n1
	lw	n8, 20(a7)
	lw	n9, 20(s0)
	addi	n24, n24, 1
	srliw	n15, n24, 1
	mul	n8, n15, n8
	add	n8, n8, n9
	sw	n8, 20(s0)
	lbu	n8, -1(a5)
	add	s9, s9, n8
	lw	n9, 24(a7)
	lw	n15, 24(s0)
	addi	s9, s9, 1
	srliw	n16, s9, 1
	mul	n9, n16, n9
	add	n9, n9, n15
	sw	n9, 24(s0)
	lbu	n9, 0(s1)
	lbu	n15, 0(a5)
	add	n9, n9, n15
	lw	n15, 28(a7)
	lw	n16, 28(s0)
	addi	n9, n9, 1
	srli	n9, n9, 1
	mul	n9, n9, n15
	add	n9, n9, n16
	sw	n9, 28(s0)
	addi	s0, s0, 32
	addi	a7, a7, 32
	mv	s1, a5
	mv	s9, n8
	mv	n24, n1
	mv	n1, n2
	mv	n2, n6
	mv	n6, a6
	bne	s0, t4, .LBB0_58
	j	.LBB0_60
.LBB0_59:                               #   in Loop: Header=BB0_8 Depth=1
	add	n2, n2, t2
	lbu	a5, 0(n2)
	lw	a6, 640(n20)
	lw	a7, 216(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 216(sp)
	lbu	a5, 1(n2)
	lw	a6, 644(n20)
	lw	a7, 220(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 220(sp)
	lbu	a5, 2(n2)
	lw	a6, 648(n20)
	lw	a7, 224(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 224(sp)
	lbu	a5, 3(n2)
	lw	a6, 652(n20)
	lw	a7, 228(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 228(sp)
	lbu	a5, 4(n2)
	lw	a6, 656(n20)
	lw	a7, 232(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 232(sp)
	lbu	a5, 5(n2)
	lw	a6, 660(n20)
	lw	a7, 236(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 236(sp)
	lbu	a5, 6(n2)
	lw	a6, 664(n20)
	lw	a7, 240(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 240(sp)
	lbu	a5, 7(n2)
	lw	a6, 668(n20)
	lw	a7, 244(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 244(sp)
	add	n2, n2, s4
	lbu	a5, 0(n2)
	lw	a6, 672(n20)
	lw	a7, 248(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 248(sp)
	lbu	a5, 1(n2)
	lw	a6, 676(n20)
	lw	a7, 252(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 252(sp)
	lbu	a5, 2(n2)
	lw	a6, 680(n20)
	lw	a7, 256(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 256(sp)
	lbu	a5, 3(n2)
	lw	a6, 684(n20)
	lw	a7, 260(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 260(sp)
	lbu	a5, 4(n2)
	lw	a6, 688(n20)
	lw	a7, 264(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 264(sp)
	lbu	a5, 5(n2)
	lw	a6, 692(n20)
	lw	a7, 268(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 268(sp)
	lbu	a5, 6(n2)
	lw	a6, 696(n20)
	lw	a7, 272(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 272(sp)
	lbu	a5, 7(n2)
	lw	a6, 700(n20)
	lw	a7, 276(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 276(sp)
	add	n2, n2, s4
	lbu	a5, 0(n2)
	lw	a6, 704(n20)
	lw	a7, 280(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 280(sp)
	lbu	a5, 1(n2)
	lw	a6, 708(n20)
	lw	a7, 284(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 284(sp)
	lbu	a5, 2(n2)
	lw	a6, 712(n20)
	lw	a7, 288(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 288(sp)
	lbu	a5, 3(n2)
	lw	a6, 716(n20)
	lw	a7, 292(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 292(sp)
	lbu	a5, 4(n2)
	lw	a6, 720(n20)
	lw	a7, 296(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 296(sp)
	lbu	a5, 5(n2)
	lw	a6, 724(n20)
	lw	a7, 300(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 300(sp)
	lbu	a5, 6(n2)
	lw	a6, 728(n20)
	lw	a7, 304(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 304(sp)
	lbu	a5, 7(n2)
	lw	a6, 732(n20)
	lw	a7, 308(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 308(sp)
	add	n2, n2, s4
	lbu	a5, 0(n2)
	lw	a6, 736(n20)
	lw	a7, 312(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 312(sp)
	lbu	a5, 1(n2)
	lw	a6, 740(n20)
	lw	a7, 316(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 316(sp)
	lbu	a5, 2(n2)
	lw	a6, 744(n20)
	lw	a7, 320(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 320(sp)
	lbu	a5, 3(n2)
	lw	a6, 748(n20)
	lw	a7, 324(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 324(sp)
	lbu	a5, 4(n2)
	lw	a6, 752(n20)
	lw	a7, 328(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 328(sp)
	lbu	a5, 5(n2)
	lw	a6, 756(n20)
	lw	a7, 332(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 332(sp)
	lbu	a5, 6(n2)
	lw	a6, 760(n20)
	lw	a7, 336(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 336(sp)
	lbu	a5, 7(n2)
	lw	a6, 764(n20)
	lw	a7, 340(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 340(sp)
.LBB0_60:                               #   in Loop: Header=BB0_8 Depth=1
	srai	n1, s7, 1
	andi	n6, s7, 1
	srai	s1, s8, 1
	andi	n2, s8, 1
	add	a5, s1, n26
	mulw	a5, a5, s4
	add	a5, n31, a5
	or	a6, n6, n2
	add	a7, a5, n1
	beqz	a6, .LBB0_65
# %bb.61:                               #   in Loop: Header=BB0_8 Depth=1
	add	s1, s2, s1
	bnez	n6, .LBB0_83
# %bb.62:                               #   in Loop: Header=BB0_8 Depth=1
	beqz	n2, .LBB0_83
# %bb.63:                               #   in Loop: Header=BB0_8 Depth=1
	lbu	n24, 4(a7)
	lbu	n9, 5(a7)
	lbu	n8, 6(a7)
	lbu	n6, 7(a7)
	add	n1, n28, n1
	add	s1, s1, n29
	mulw	a7, s4, s1
	add	n1, n7, n1
	add	a7, n1, a7
	addi	n1, n20, 796
	mv	n2, n4
.LBB0_64:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	a5, -3(a7)
	add	n24, n24, a5
	lw	a6, -12(n1)
	lw	n15, -12(n2)
	addi	n24, n24, 1
	srliw	n16, n24, 1
	mul	a6, n16, a6
	add	a6, a6, n15
	sw	a6, -12(n2)
	lbu	a6, -2(a7)
	add	n9, n9, a6
	lw	n15, -8(n1)
	lw	n16, -8(n2)
	addi	n9, n9, 1
	srliw	n9, n9, 1
	mul	n9, n9, n15
	add	n9, n9, n16
	sw	n9, -8(n2)
	lbu	n9, -1(a7)
	add	n8, n8, n9
	lw	n15, -4(n1)
	lw	n16, -4(n2)
	addi	n8, n8, 1
	srliw	n8, n8, 1
	mul	n8, n8, n15
	add	n8, n8, n16
	sw	n8, -4(n2)
	lbu	n8, 0(a7)
	add	n6, n6, n8
	lw	n15, 0(n1)
	lw	n16, 0(n2)
	addi	n6, n6, 1
	srliw	n6, n6, 1
	mul	n6, n6, n15
	add	n6, n6, n16
	sw	n6, 0(n2)
	addi	n2, n2, 32
	addi	n1, n1, 32
	add	a7, a7, s4
	mv	n6, n8
	mv	n8, n9
	mv	n9, a6
	mv	n24, a5
	bne	n2, n5, .LBB0_64
	j	.LBB0_66
.LBB0_65:                               #   in Loop: Header=BB0_8 Depth=1
	lbu	a5, 4(a7)
	lw	a6, 784(n20)
	lw	n1, 104(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 104(sp)
	lbu	a5, 5(a7)
	lw	a6, 788(n20)
	lw	n1, 108(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 108(sp)
	lbu	a5, 6(a7)
	lw	a6, 792(n20)
	lw	n1, 112(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 112(sp)
	lbu	a5, 7(a7)
	lw	a6, 796(n20)
	lw	n1, 116(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 116(sp)
	add	a7, a7, s4
	lbu	a5, 4(a7)
	lw	a6, 816(n20)
	lw	n1, 136(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 136(sp)
	lbu	a5, 5(a7)
	lw	a6, 820(n20)
	lw	n1, 140(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 140(sp)
	lbu	a5, 6(a7)
	lw	a6, 824(n20)
	lw	n1, 144(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 144(sp)
	lbu	a5, 7(a7)
	lw	a6, 828(n20)
	lw	n1, 148(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 148(sp)
	add	a7, a7, s4
	lbu	a5, 4(a7)
	lw	a6, 848(n20)
	lw	n1, 168(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 168(sp)
	lbu	a5, 5(a7)
	lw	a6, 852(n20)
	lw	n1, 172(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 172(sp)
	lbu	a5, 6(a7)
	lw	a6, 856(n20)
	lw	n1, 176(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 176(sp)
	lbu	a5, 7(a7)
	lw	a6, 860(n20)
	lw	n1, 180(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 180(sp)
	add	a7, a7, s4
	lbu	a5, 4(a7)
	lw	a6, 880(n20)
	lw	n1, 200(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 200(sp)
	lbu	a5, 5(a7)
	lw	a6, 884(n20)
	lw	n1, 204(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 204(sp)
	lbu	a5, 6(a7)
	lw	a6, 888(n20)
	lw	n1, 208(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 208(sp)
	lbu	a5, 7(a7)
	lw	a6, 892(n20)
	lw	n1, 212(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 212(sp)
	add	a7, a7, s4
	lbu	a5, 4(a7)
	lw	a6, 912(n20)
	lw	n1, 232(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 232(sp)
	lbu	a5, 5(a7)
	lw	a6, 916(n20)
	lw	n1, 236(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 236(sp)
	lbu	a5, 6(a7)
	lw	a6, 920(n20)
	lw	n1, 240(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 240(sp)
	lbu	a5, 7(a7)
	lw	a6, 924(n20)
	lw	n1, 244(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 244(sp)
	add	a7, a7, s4
	lbu	a5, 4(a7)
	lw	a6, 944(n20)
	lw	n1, 264(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 264(sp)
	lbu	a5, 5(a7)
	lw	a6, 948(n20)
	lw	n1, 268(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 268(sp)
	lbu	a5, 6(a7)
	lw	a6, 952(n20)
	lw	n1, 272(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 272(sp)
	lbu	a5, 7(a7)
	lw	a6, 956(n20)
	lw	n1, 276(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 276(sp)
	add	a7, a7, s4
	lbu	a5, 4(a7)
	lw	a6, 976(n20)
	lw	n1, 296(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 296(sp)
	lbu	a5, 5(a7)
	lw	a6, 980(n20)
	lw	n1, 300(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 300(sp)
	lbu	a5, 6(a7)
	lw	a6, 984(n20)
	lw	n1, 304(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 304(sp)
	lbu	a5, 7(a7)
	lw	a6, 988(n20)
	lw	n1, 308(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 308(sp)
	add	a7, a7, s4
	lbu	a5, 4(a7)
	lw	a6, 1008(n20)
	lw	n1, 328(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 328(sp)
	lbu	a5, 5(a7)
	lw	a6, 1012(n20)
	lw	n1, 332(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 332(sp)
	lbu	a5, 6(a7)
	lw	a6, 1016(n20)
	lw	n1, 336(sp)
	mul	a5, a6, a5
	add	a5, n1, a5
	sw	a5, 336(sp)
	lbu	a5, 7(a7)
	lw	a6, 1020(n20)
	lw	a7, 340(sp)
	mul	a5, a6, a5
	add	a5, a7, a5
	sw	a5, 340(sp)
.LBB0_66:                               #   in Loop: Header=BB0_8 Depth=1
	srai	n24, n30, 1
	andi	n2, n30, 1
	srai	n6, s6, 1
	andi	n1, s6, 1
	add	a5, n6, n26
	mulw	a5, a5, s4
	add	a5, n31, a5
	or	a6, n2, n1
	add	a7, a5, n24
	bnez	a6, .LBB0_67
	j	.LBB0_6
.LBB0_67:                               #   in Loop: Header=BB0_8 Depth=1
	add	n31, s2, n6
	bnez	n2, .LBB0_87
# %bb.68:                               #   in Loop: Header=BB0_8 Depth=1
	beqz	n1, .LBB0_87
# %bb.69:                               #   in Loop: Header=BB0_8 Depth=1
	lbu	n30, 0(a7)
	lbu	n9, 1(a7)
	lbu	n8, 2(a7)
	lbu	n6, 3(a7)
	add	n24, n28, n24
	add	n29, n31, n29
	mulw	a7, s4, n29
	add	n24, n10, n24
	add	a7, n24, a7
	addi	n1, n20, 1024
	addi	n2, sp, 88
.LBB0_70:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	a5, -3(a7)
	add	n30, n30, a5
	lw	a6, 0(n1)
	lw	n15, 0(n2)
	addi	n30, n30, 1
	srliw	n16, n30, 1
	mul	a6, n16, a6
	add	a6, a6, n15
	sw	a6, 0(n2)
	lbu	a6, -2(a7)
	add	n9, n9, a6
	lw	n15, 4(n1)
	lw	n16, 4(n2)
	addi	n9, n9, 1
	srliw	n9, n9, 1
	mul	n9, n9, n15
	add	n9, n9, n16
	sw	n9, 4(n2)
	lbu	n9, -1(a7)
	add	n8, n8, n9
	lw	n15, 8(n1)
	lw	n16, 8(n2)
	addi	n8, n8, 1
	srliw	n8, n8, 1
	mul	n8, n8, n15
	add	n8, n8, n16
	sw	n8, 8(n2)
	lbu	n8, 0(a7)
	add	n6, n6, n8
	lw	n15, 12(n1)
	lw	n16, 12(n2)
	addi	n6, n6, 1
	srliw	n6, n6, 1
	mul	n6, n6, n15
	add	n6, n6, n16
	sw	n6, 12(n2)
	addi	n2, n2, 32
	addi	n1, n1, 32
	add	a7, a7, s4
	mv	n6, n8
	mv	n8, n9
	mv	n9, a6
	mv	n30, a5
	bne	n2, t4, .LBB0_70
	j	.LBB0_7
.LBB0_71:                               #   in Loop: Header=BB0_8 Depth=1
	beqz	n2, .LBB0_91
# %bb.72:                               #   in Loop: Header=BB0_8 Depth=1
	bnez	n1, .LBB0_91
# %bb.73:                               # %.preheader17
                                        #   in Loop: Header=BB0_8 Depth=1
	add	a7, n28, a7
	add	s1, s1, n29
	mulw	a5, s4, s1
	add	a7, t3, a7
	add	a7, a7, a5
	addi	n24, sp, 88
	mv	s0, n20
.LBB0_74:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	a5, -3(a7)
	lbu	a6, -4(a7)
	lw	n1, 0(s0)
	addi	a5, a5, 1
	add	a6, a5, a6
	srli	a6, a6, 1
	mul	a6, a6, n1
	sw	a6, 0(n24)
	lbu	a6, -2(a7)
	lw	n1, 4(s0)
	add	a5, a5, a6
	srli	a5, a5, 1
	mul	a5, a5, n1
	sw	a5, 4(n24)
	lbu	a5, -1(a7)
	lw	n1, 8(s0)
	add	a6, a6, a5
	addi	a6, a6, 1
	srli	a6, a6, 1
	mul	a6, a6, n1
	sw	a6, 8(n24)
	lbu	a6, 0(a7)
	lw	n1, 12(s0)
	add	a5, a5, a6
	addi	a5, a5, 1
	srli	a5, a5, 1
	mul	a5, a5, n1
	sw	a5, 12(n24)
	lbu	a5, 1(a7)
	lw	n1, 16(s0)
	add	a6, a6, a5
	addi	a6, a6, 1
	srli	a6, a6, 1
	mul	a6, a6, n1
	sw	a6, 16(n24)
	lbu	a6, 2(a7)
	lw	n1, 20(s0)
	add	a5, a5, a6
	addi	a5, a5, 1
	srli	a5, a5, 1
	mul	a5, a5, n1
	sw	a5, 20(n24)
	lbu	a5, 3(a7)
	lw	n1, 24(s0)
	add	a6, a6, a5
	addi	a6, a6, 1
	srli	a6, a6, 1
	mul	a6, a6, n1
	sw	a6, 24(n24)
	lbu	a6, 4(a7)
	lw	n1, 28(s0)
	add	a5, a5, a6
	addi	a5, a5, 1
	srli	a5, a5, 1
	mul	a5, a5, n1
	sw	a5, 28(n24)
	addi	n24, n24, 32
	addi	s0, s0, 32
	add	a7, a7, s4
	bne	n24, t4, .LBB0_74
	j	.LBB0_48
.LBB0_75:                               #   in Loop: Header=BB0_8 Depth=1
	beqz	n2, .LBB0_93
# %bb.76:                               #   in Loop: Header=BB0_8 Depth=1
	bnez	n1, .LBB0_93
# %bb.77:                               # %.preheader13
                                        #   in Loop: Header=BB0_8 Depth=1
	add	n8, n28, n8
	add	n9, n9, n29
	mulw	a7, s4, n9
	add	n8, t3, n8
	add	a7, n8, a7
	addi	s0, n20, 284
	addi	s1, sp, 88
.LBB0_78:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	a5, -3(a7)
	lbu	a6, -4(a7)
	addi	a5, a5, 1
	lw	n1, -28(s0)
	lw	n2, 0(s1)
	add	a6, a5, a6
	srli	a6, a6, 1
	mul	a6, a6, n1
	add	a6, a6, n2
	sw	a6, 0(s1)
	lbu	a6, -2(a7)
	lw	n1, -24(s0)
	lw	n2, 4(s1)
	add	a5, a5, a6
	srli	a5, a5, 1
	mul	a5, a5, n1
	add	a5, a5, n2
	sw	a5, 4(s1)
	lbu	a5, -1(a7)
	add	a6, a6, a5
	lw	n1, -20(s0)
	lw	n2, 8(s1)
	addi	a6, a6, 1
	srli	a6, a6, 1
	mul	a6, a6, n1
	add	a6, a6, n2
	sw	a6, 8(s1)
	lbu	a6, 0(a7)
	add	a5, a5, a6
	lw	n1, -16(s0)
	lw	n2, 12(s1)
	addi	a5, a5, 1
	srli	a5, a5, 1
	mul	a5, a5, n1
	add	a5, a5, n2
	sw	a5, 12(s1)
	lbu	a5, 1(a7)
	add	a6, a6, a5
	lw	n1, -12(s0)
	lw	n2, 16(s1)
	addi	a6, a6, 1
	srli	a6, a6, 1
	mul	a6, a6, n1
	add	a6, a6, n2
	sw	a6, 16(s1)
	lbu	a6, 2(a7)
	add	a5, a5, a6
	lw	n1, -8(s0)
	lw	n2, 20(s1)
	addi	a5, a5, 1
	srli	a5, a5, 1
	mul	a5, a5, n1
	add	a5, a5, n2
	sw	a5, 20(s1)
	lbu	a5, 3(a7)
	add	a6, a6, a5
	lw	n1, -4(s0)
	lw	n2, 24(s1)
	addi	a6, a6, 1
	srli	a6, a6, 1
	mul	a6, a6, n1
	add	a6, a6, n2
	sw	a6, 24(s1)
	lbu	a6, 4(a7)
	add	a5, a5, a6
	lw	a6, 0(s0)
	lw	n1, 28(s1)
	addi	a5, a5, 1
	srli	a5, a5, 1
	mul	a5, a5, a6
	add	a5, a5, n1
	sw	a5, 28(s1)
	addi	s1, s1, 32
	add	a7, a7, s4
	addi	s0, s0, 32
	bne	s1, t1, .LBB0_78
	j	.LBB0_54
.LBB0_79:                               #   in Loop: Header=BB0_8 Depth=1
	beqz	n6, .LBB0_95
# %bb.80:                               #   in Loop: Header=BB0_8 Depth=1
	bnez	n1, .LBB0_95
# %bb.81:                               # %.preheader9
                                        #   in Loop: Header=BB0_8 Depth=1
	add	a7, n28, a7
	add	n8, n8, n29
	mulw	a5, s4, n8
	ld	a6, 72(sp)                      # 8-byte Folded Reload
	add	a7, a6, a7
	add	a7, a7, a5
	addi	s0, n20, 668
	mv	s1, t1
.LBB0_82:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	a5, -3(a7)
	lbu	a6, -4(a7)
	addi	a5, a5, 1
	lw	n1, -28(s0)
	lw	n2, 0(s1)
	add	a6, a5, a6
	srli	a6, a6, 1
	mul	a6, a6, n1
	add	a6, a6, n2
	sw	a6, 0(s1)
	lbu	a6, -2(a7)
	lw	n1, -24(s0)
	lw	n2, 4(s1)
	add	a5, a5, a6
	srli	a5, a5, 1
	mul	a5, a5, n1
	add	a5, a5, n2
	sw	a5, 4(s1)
	lbu	a5, -1(a7)
	add	a6, a6, a5
	lw	n1, -20(s0)
	lw	n2, 8(s1)
	addi	a6, a6, 1
	srli	a6, a6, 1
	mul	a6, a6, n1
	add	a6, a6, n2
	sw	a6, 8(s1)
	lbu	a6, 0(a7)
	add	a5, a5, a6
	lw	n1, -16(s0)
	lw	n2, 12(s1)
	addi	a5, a5, 1
	srli	a5, a5, 1
	mul	a5, a5, n1
	add	a5, a5, n2
	sw	a5, 12(s1)
	lbu	a5, 1(a7)
	add	a6, a6, a5
	lw	n1, -12(s0)
	lw	n2, 16(s1)
	addi	a6, a6, 1
	srli	a6, a6, 1
	mul	a6, a6, n1
	add	a6, a6, n2
	sw	a6, 16(s1)
	lbu	a6, 2(a7)
	add	a5, a5, a6
	lw	n1, -8(s0)
	lw	n2, 20(s1)
	addi	a5, a5, 1
	srli	a5, a5, 1
	mul	a5, a5, n1
	add	a5, a5, n2
	sw	a5, 20(s1)
	lbu	a5, 3(a7)
	add	a6, a6, a5
	lw	n1, -4(s0)
	lw	n2, 24(s1)
	addi	a6, a6, 1
	srli	a6, a6, 1
	mul	a6, a6, n1
	add	a6, a6, n2
	sw	a6, 24(s1)
	lbu	a6, 4(a7)
	add	a5, a5, a6
	lw	a6, 0(s0)
	lw	n1, 28(s1)
	addi	a5, a5, 1
	srli	a5, a5, 1
	mul	a5, a5, a6
	add	a5, a5, n1
	sw	a5, 28(s1)
	addi	s1, s1, 32
	add	a7, a7, s4
	addi	s0, s0, 32
	bne	s1, t4, .LBB0_82
	j	.LBB0_60
.LBB0_83:                               #   in Loop: Header=BB0_8 Depth=1
	beqz	n6, .LBB0_97
# %bb.84:                               #   in Loop: Header=BB0_8 Depth=1
	bnez	n2, .LBB0_97
# %bb.85:                               # %.preheader5
                                        #   in Loop: Header=BB0_8 Depth=1
	addi	a7, n20, 796
	add	n1, n28, n1
	add	s1, s1, n29
	mulw	a5, s4, s1
	add	n1, t5, n1
	add	n1, n1, a5
	mv	n2, n4
.LBB0_86:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	a5, -3(n1)
	lbu	a6, -4(n1)
	addi	a5, a5, 1
	lw	n6, -12(a7)
	lw	n8, -12(n2)
	add	a6, a5, a6
	srli	a6, a6, 1
	mul	a6, a6, n6
	add	a6, a6, n8
	sw	a6, -12(n2)
	lbu	a6, -2(n1)
	lw	n6, -8(a7)
	lw	n8, -8(n2)
	add	a5, a5, a6
	srli	a5, a5, 1
	mul	a5, a5, n6
	add	a5, a5, n8
	sw	a5, -8(n2)
	lbu	a5, -1(n1)
	add	a6, a6, a5
	lw	n6, -4(a7)
	lw	n8, -4(n2)
	addi	a6, a6, 1
	srli	a6, a6, 1
	mul	a6, a6, n6
	add	a6, a6, n8
	sw	a6, -4(n2)
	lbu	a6, 0(n1)
	add	a5, a5, a6
	lw	a6, 0(a7)
	lw	n6, 0(n2)
	addi	a5, a5, 1
	srli	a5, a5, 1
	mul	a5, a5, a6
	add	a5, a5, n6
	sw	a5, 0(n2)
	addi	n2, n2, 32
	add	n1, n1, s4
	addi	a7, a7, 32
	bne	n2, n5, .LBB0_86
	j	.LBB0_66
.LBB0_87:                               #   in Loop: Header=BB0_8 Depth=1
	beqz	n2, .LBB0_99
# %bb.88:                               #   in Loop: Header=BB0_8 Depth=1
	bnez	n1, .LBB0_99
# %bb.89:                               # %.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	add	n24, n28, n24
	add	n29, n31, n29
	mulw	a7, s4, n29
	ld	a5, 48(sp)                      # 8-byte Folded Reload
	add	n24, a5, n24
	add	a7, n24, a7
	addi	n1, n20, 1036
	addi	n2, sp, 88
.LBB0_90:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	a5, -1(a7)
	lbu	a6, -2(a7)
	addi	a5, a5, 1
	lw	n6, -12(n1)
	lw	n8, 0(n2)
	add	a6, a5, a6
	srli	a6, a6, 1
	mul	a6, a6, n6
	add	a6, a6, n8
	sw	a6, 0(n2)
	lbu	a6, 0(a7)
	lw	n6, -8(n1)
	lw	n8, 4(n2)
	add	a5, a5, a6
	srli	a5, a5, 1
	mul	a5, a5, n6
	add	a5, a5, n8
	sw	a5, 4(n2)
	lbu	a5, 1(a7)
	add	a6, a6, a5
	lw	n6, -4(n1)
	lw	n8, 8(n2)
	addi	a6, a6, 1
	srli	a6, a6, 1
	mul	a6, a6, n6
	add	a6, a6, n8
	sw	a6, 8(n2)
	lbu	a6, 2(a7)
	add	a5, a5, a6
	lw	a6, 0(n1)
	lw	n6, 12(n2)
	addi	a5, a5, 1
	srli	a5, a5, 1
	mul	a5, a5, a6
	add	a5, a5, n6
	sw	a5, 12(n2)
	addi	n2, n2, 32
	add	a7, a7, s4
	addi	n1, n1, 32
	bne	n2, t4, .LBB0_90
	j	.LBB0_7
.LBB0_91:                               #   in Loop: Header=BB0_8 Depth=1
	lbu	n1, 4(s0)
	lbu	n2, 5(s0)
	lbu	n24, 6(s0)
	lbu	n6, 3(s0)
	add	a7, n28, a7
	add	s1, s1, n29
	mulw	s1, s4, s1
	add	a7, t5, a7
	add	s1, a7, s1
	addi	a7, sp, 88
	mv	s0, n20
.LBB0_92:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	a5, s1, s4
	lbu	a6, -7(s1)
	lbu	n8, -8(s1)
	lbu	n9, -8(a5)
	lbu	n15, -7(a5)
	addi	a6, a6, 2
	add	n8, a6, n8
	lw	n16, 0(s0)
	add	n9, n9, n15
	add	n8, n8, n9
	srli	n8, n8, 2
	mul	n8, n8, n16
	sw	n8, 0(a7)
	lbu	n8, -6(s1)
	lbu	n9, -6(a5)
	add	a6, a6, n15
	lw	n15, 4(s0)
	add	n16, n8, n9
	add	a6, a6, n16
	srli	a6, a6, 2
	mul	a6, a6, n15
	sw	a6, 4(a7)
	addi	n6, n6, 2
	lbu	a6, -5(a5)
	add	n8, n6, n8
	lw	n15, 8(s0)
	add	n8, n8, n9
	add	n8, n8, a6
	srliw	n8, n8, 2
	mul	n8, n8, n15
	sw	n8, 8(a7)
	lbu	n8, -4(a5)
	add	n6, n6, n1
	lw	n9, 12(s0)
	add	n6, n6, a6
	add	n6, n6, n8
	srliw	n6, n6, 2
	mul	n6, n6, n9
	sw	n6, 12(a7)
	addi	n2, n2, 2
	lbu	n9, -3(a5)
	add	n1, n2, n1
	lw	n6, 16(s0)
	add	n1, n1, n8
	add	n1, n1, n9
	srliw	n1, n1, 2
	mul	n1, n1, n6
	sw	n1, 16(a7)
	lbu	n1, -2(a5)
	add	n2, n2, n24
	lw	n6, 20(s0)
	add	n2, n2, n9
	add	n2, n2, n1
	srliw	n2, n2, 2
	mul	n2, n2, n6
	sw	n2, 20(a7)
	lbu	n2, -2(s1)
	lbu	n6, -1(s1)
	lbu	n15, -1(a5)
	add	n2, n1, n2
	add	n6, n6, n15
	lw	n15, 24(s0)
	add	n2, n2, n6
	addi	n2, n2, 2
	srli	n2, n2, 2
	mul	n2, n2, n15
	sw	n2, 24(a7)
	lbu	n2, 0(s1)
	lbu	n15, 0(a5)
	add	n2, n2, n15
	lw	n15, 28(s0)
	add	n2, n6, n2
	addi	n2, n2, 2
	srli	n2, n2, 2
	mul	n2, n2, n15
	sw	n2, 28(a7)
	addi	a7, a7, 32
	addi	s0, s0, 32
	mv	s1, a5
	mv	n6, a6
	mv	n24, n1
	mv	n2, n9
	mv	n1, n8
	bne	a7, t4, .LBB0_92
	j	.LBB0_48
.LBB0_93:                               #   in Loop: Header=BB0_8 Depth=1
	lbu	n1, 4(a7)
	lbu	n24, 5(a7)
	lbu	s1, 6(a7)
	add	n8, n28, n8
	add	n9, n9, n29
	mulw	ra, s4, n9
	add	n8, t5, n8
	add	ra, n8, ra
	addi	a7, n20, 256
	addi	s11, sp, 88
.LBB0_94:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	s0, ra, s4
	lbu	a5, -8(ra)
	lbu	a6, -7(ra)
	lbu	n2, -8(s0)
	lbu	n6, -7(s0)
	addi	a6, a6, 2
	add	a5, a6, a5
	add	n2, n2, n6
	lw	n8, 0(a7)
	lw	n9, 0(s11)
	add	a5, a5, n2
	srli	a5, a5, 2
	mul	a5, a5, n8
	add	a5, a5, n9
	sw	a5, 0(s11)
	lbu	a5, -6(ra)
	lbu	n2, -6(s0)
	add	a6, a6, n6
	add	a5, a5, n2
	lw	n2, 4(a7)
	lw	n6, 4(s11)
	add	a6, a5, a6
	srli	a6, a6, 2
	mul	a6, a6, n2
	add	a6, a6, n6
	sw	a6, 4(s11)
	lbu	a6, -5(ra)
	lbu	n2, -5(s0)
	add	n6, a6, n2
	add	a5, a5, n6
	lw	n6, 8(a7)
	lw	n8, 8(s11)
	addi	a5, a5, 2
	srli	a5, a5, 2
	mul	a5, a5, n6
	add	a5, a5, n8
	sw	a5, 8(s11)
	add	a6, n1, a6
	lbu	a5, -4(s0)
	addi	n24, n24, 2
	add	n1, n24, n1
	add	a6, a6, n2
	add	a6, a6, a5
	lw	n2, 12(a7)
	lw	n6, 12(s11)
	addi	a6, a6, 2
	srliw	a6, a6, 2
	mul	a6, a6, n2
	add	a6, a6, n6
	sw	a6, 12(s11)
	lbu	a6, -3(s0)
	add	n1, n1, a5
	lw	n2, 16(a7)
	lw	n6, 16(s11)
	add	n1, n1, a6
	srliw	n1, n1, 2
	mul	n1, n1, n2
	add	n1, n1, n6
	sw	n1, 16(s11)
	add	n24, n24, s1
	lbu	s1, -2(s0)
	add	n24, n24, a6
	lw	n1, 20(a7)
	lw	n2, 20(s11)
	add	n24, n24, s1
	srliw	n6, n24, 2
	mul	n1, n6, n1
	add	n1, n1, n2
	sw	n1, 20(s11)
	lbu	n1, -2(ra)
	lbu	n2, -1(ra)
	lbu	n6, -1(s0)
	add	n1, s1, n1
	add	n2, n2, n6
	add	n1, n1, n2
	lw	n6, 24(a7)
	lw	n8, 24(s11)
	addi	n1, n1, 2
	srli	n1, n1, 2
	mul	n1, n1, n6
	add	n1, n1, n8
	sw	n1, 24(s11)
	lbu	n1, 0(ra)
	lbu	n6, 0(s0)
	add	n1, n1, n6
	add	n1, n2, n1
	lw	n2, 28(a7)
	lw	n6, 28(s11)
	addi	n1, n1, 2
	srli	n1, n1, 2
	mul	n1, n1, n2
	add	n1, n1, n6
	sw	n1, 28(s11)
	addi	s11, s11, 32
	addi	a7, a7, 32
	mv	ra, s0
	mv	n24, a6
	mv	n1, a5
	bne	s11, t1, .LBB0_94
	j	.LBB0_54
.LBB0_95:                               #   in Loop: Header=BB0_8 Depth=1
	add	n2, n2, t2
	lbu	n1, 4(n2)
	lbu	n24, 5(n2)
	lbu	s1, 6(n2)
	add	a7, n28, a7
	add	n8, n8, n29
	mulw	s10, s4, n8
	ld	a5, 64(sp)                      # 8-byte Folded Reload
	add	a7, a5, a7
	add	s10, a7, s10
	addi	a7, n20, 640
	mv	s9, t1
.LBB0_96:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	s0, s10, s4
	lbu	a5, -8(s10)
	lbu	a6, -7(s10)
	lbu	n2, -8(s0)
	lbu	n6, -7(s0)
	addi	a6, a6, 2
	add	a5, a6, a5
	add	n2, n2, n6
	lw	n8, 0(a7)
	lw	n9, 0(s9)
	add	a5, a5, n2
	srli	a5, a5, 2
	mul	a5, a5, n8
	add	a5, a5, n9
	sw	a5, 0(s9)
	lbu	a5, -6(s10)
	lbu	n2, -6(s0)
	add	a6, a6, n6
	add	a5, a5, n2
	lw	n2, 4(a7)
	lw	n6, 4(s9)
	add	a6, a5, a6
	srli	a6, a6, 2
	mul	a6, a6, n2
	add	a6, a6, n6
	sw	a6, 4(s9)
	lbu	a6, -5(s10)
	lbu	n2, -5(s0)
	add	n6, a6, n2
	add	a5, a5, n6
	lw	n6, 8(a7)
	lw	n8, 8(s9)
	addi	a5, a5, 2
	srli	a5, a5, 2
	mul	a5, a5, n6
	add	a5, a5, n8
	sw	a5, 8(s9)
	add	a6, n1, a6
	lbu	a5, -4(s0)
	addi	n24, n24, 2
	add	n1, n24, n1
	add	a6, a6, n2
	add	a6, a6, a5
	lw	n2, 12(a7)
	lw	n6, 12(s9)
	addi	a6, a6, 2
	srliw	a6, a6, 2
	mul	a6, a6, n2
	add	a6, a6, n6
	sw	a6, 12(s9)
	lbu	a6, -3(s0)
	add	n1, n1, a5
	lw	n2, 16(a7)
	lw	n6, 16(s9)
	add	n1, n1, a6
	srliw	n1, n1, 2
	mul	n1, n1, n2
	add	n1, n1, n6
	sw	n1, 16(s9)
	add	n24, n24, s1
	lbu	s1, -2(s0)
	add	n24, n24, a6
	lw	n1, 20(a7)
	lw	n2, 20(s9)
	add	n24, n24, s1
	srliw	n6, n24, 2
	mul	n1, n6, n1
	add	n1, n1, n2
	sw	n1, 20(s9)
	lbu	n1, -2(s10)
	lbu	n2, -1(s10)
	lbu	n6, -1(s0)
	add	n1, s1, n1
	add	n2, n2, n6
	add	n1, n1, n2
	lw	n6, 24(a7)
	lw	n8, 24(s9)
	addi	n1, n1, 2
	srli	n1, n1, 2
	mul	n1, n1, n6
	add	n1, n1, n8
	sw	n1, 24(s9)
	lbu	n1, 0(s10)
	lbu	n6, 0(s0)
	add	n1, n1, n6
	add	n1, n2, n1
	lw	n2, 28(a7)
	lw	n6, 28(s9)
	addi	n1, n1, 2
	srli	n1, n1, 2
	mul	n1, n1, n2
	add	n1, n1, n6
	sw	n1, 28(s9)
	addi	s9, s9, 32
	addi	a7, a7, 32
	mv	s10, s0
	mv	n24, a6
	mv	n1, a5
	bne	s9, t4, .LBB0_96
	j	.LBB0_60
.LBB0_97:                               #   in Loop: Header=BB0_8 Depth=1
	lbu	n9, 4(a7)
	lbu	s0, 5(a7)
	lbu	n6, 6(a7)
	lbu	n8, 7(a7)
	lbu	n2, 8(a7)
	add	n1, n28, n1
	add	s1, s1, n29
	mulw	a7, s4, s1
	ld	a5, 56(sp)                      # 8-byte Folded Reload
	add	n1, a5, n1
	add	a7, n1, a7
	addi	n24, n20, 796
	mv	n1, n4
.LBB0_98:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	a5, -4(a7)
	addi	s0, s0, 2
	add	n9, s0, n9
	lbu	a6, -3(a7)
	add	n9, n9, a5
	lw	n15, -12(n24)
	lw	n16, -12(n1)
	add	n9, n9, a6
	srliw	n9, n9, 2
	mul	n9, n9, n15
	add	n9, n9, n16
	sw	n9, -12(n1)
	add	s0, s0, n6
	addi	n8, n8, 2
	add	n6, n8, n6
	lbu	n9, -2(a7)
	add	s0, s0, a6
	lw	n15, -8(n24)
	lw	n16, -8(n1)
	add	s0, s0, n9
	srliw	s0, s0, 2
	mul	n15, s0, n15
	add	n15, n15, n16
	sw	n15, -8(n1)
	lbu	n15, -1(a7)
	add	n6, n6, n9
	lw	n16, -4(n24)
	lw	s0, -4(n1)
	add	n6, n6, n15
	srliw	n6, n6, 2
	mul	n6, n6, n16
	add	n6, n6, s0
	sw	n6, -4(n1)
	add	n2, n8, n2
	lbu	n6, 0(a7)
	add	n2, n2, n15
	lw	n8, 0(n24)
	lw	n16, 0(n1)
	add	n2, n2, n6
	srliw	n2, n2, 2
	mul	n2, n2, n8
	add	n2, n2, n16
	sw	n2, 0(n1)
	addi	n1, n1, 32
	addi	n24, n24, 32
	add	a7, a7, s4
	mv	n2, n6
	mv	n8, n15
	mv	n6, n9
	mv	s0, a6
	mv	n9, a5
	bne	n1, n5, .LBB0_98
	j	.LBB0_66
.LBB0_99:                               #   in Loop: Header=BB0_8 Depth=1
	lbu	n8, 0(a7)
	lbu	n9, 1(a7)
	lbu	n2, 2(a7)
	lbu	n6, 3(a7)
	lbu	n1, 4(a7)
	add	n24, n28, n24
	add	n29, n31, n29
	mulw	a7, s4, n29
	ld	a5, 40(sp)                      # 8-byte Folded Reload
	add	n24, a5, n24
	add	a7, n24, a7
	addi	n24, n20, 1024
	addi	n28, sp, 88
.LBB0_100:                              #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	a5, -2(a7)
	addi	n9, n9, 2
	add	n8, n9, n8
	lbu	a6, -1(a7)
	add	n8, n8, a5
	lw	n15, 0(n24)
	lw	n16, 0(n28)
	add	n8, n8, a6
	srliw	n8, n8, 2
	mul	n8, n8, n15
	add	n8, n8, n16
	sw	n8, 0(n28)
	add	n9, n9, n2
	addi	n6, n6, 2
	add	n2, n6, n2
	lbu	n8, 0(a7)
	add	n9, n9, a6
	lw	n15, 4(n24)
	lw	n16, 4(n28)
	add	n9, n9, n8
	srliw	n9, n9, 2
	mul	n9, n9, n15
	add	n9, n9, n16
	sw	n9, 4(n28)
	lbu	n9, 1(a7)
	add	n2, n2, n8
	lw	n15, 8(n24)
	lw	n16, 8(n28)
	add	n2, n2, n9
	srliw	n2, n2, 2
	mul	n2, n2, n15
	add	n2, n2, n16
	sw	n2, 8(n28)
	add	n1, n6, n1
	lbu	n2, 2(a7)
	add	n1, n1, n9
	lw	n6, 12(n24)
	lw	n15, 12(n28)
	add	n1, n1, n2
	srliw	n1, n1, 2
	mul	n1, n1, n6
	add	n1, n1, n15
	sw	n1, 12(n28)
	addi	n28, n28, 32
	addi	n24, n24, 32
	add	a7, a7, s4
	mv	n1, n2
	mv	n6, n9
	mv	n2, n8
	mv	n9, a6
	mv	n8, a5
	bne	n28, t4, .LBB0_100
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
	lbu	n1, 0(t5)
	lbu	n2, -7(t6)
	add	n3, a1, a6
	add	n1, n1, n2
	addi	n1, n1, 1
	srli	n1, n1, 1
	sb	n1, -7(n3)
	lbu	n1, 1(t5)
	add	n2, a4, a6
	lbu	n2, 0(n2)
	add	n1, n1, n2
	addi	n1, n1, 1
	srli	n1, n1, 1
	sb	n1, -6(n3)
	lbu	n1, 2(t5)
	add	n2, a7, a6
	lbu	n2, 0(n2)
	add	n1, n1, n2
	addi	n1, n1, 1
	srli	n1, n1, 1
	sb	n1, -5(n3)
	lbu	n1, 3(t5)
	add	n2, t0, a6
	lbu	n2, 0(n2)
	add	n1, n1, n2
	addi	n1, n1, 1
	srli	n1, n1, 1
	sb	n1, -4(n3)
	lbu	n1, 4(t5)
	add	n2, t1, a6
	lbu	n2, 0(n2)
	add	n1, n1, n2
	addi	n1, n1, 1
	srli	n1, n1, 1
	sb	n1, -3(n3)
	lbu	n1, 5(t5)
	add	n2, t2, a6
	lbu	n2, 0(n2)
	add	n1, n1, n2
	addi	n1, n1, 1
	srli	n1, n1, 1
	sb	n1, -2(n3)
	lbu	n1, 6(t5)
	add	n2, t3, a6
	lbu	n2, 0(n2)
	add	n1, n1, n2
	addi	n1, n1, 1
	srli	n1, n1, 1
	sb	n1, -1(n3)
	lbu	t5, 7(t5)
	lbu	t6, 0(t6)
	add	t5, t5, t6
	addi	t5, t5, 1
	srli	t5, t5, 1
	sb	t5, 0(n3)
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
	add	n1, t4, a6
	lbu	n2, -3(t6)
	add	n3, a0, a6
	lbu	n3, 0(n3)
	lbu	n4, -4(t6)
	lbu	n5, -8(n1)
	add	n6, a1, a6
	add	n2, n2, n3
	addi	n2, n2, 2
	add	n4, n4, n5
	add	n4, n2, n4
	srli	n3, n4, 2
	sb	n3, 0(n6)
	lbu	n3, -2(t6)
	add	n4, a4, a6
	lbu	n4, 0(n4)
	add	n5, n3, n4
	add	n2, n2, n5
	srli	n2, n2, 2
	sb	n2, 1(n6)
	lbu	n2, -1(t6)
	add	n5, a7, a6
	lbu	n5, 0(n5)
	add	n3, n4, n3
	add	n2, n2, n5
	add	n3, n3, n2
	addi	n3, n3, 2
	srli	n3, n3, 2
	sb	n3, 2(n6)
	lbu	n3, 0(t6)
	add	n4, t0, a6
	lbu	n4, 0(n4)
	add	n3, n3, n4
	add	n2, n2, n3
	addi	n2, n2, 2
	srli	n2, n2, 2
	sb	n2, 3(n6)
	lbu	n2, 1(t6)
	add	n4, t1, a6
	lbu	n4, 0(n4)
	add	n2, n2, n4
	add	n3, n3, n2
	addi	n3, n3, 2
	srli	n3, n3, 2
	sb	n3, 4(n6)
	lbu	n3, 2(t6)
	add	n4, t2, a6
	lbu	n4, 0(n4)
	add	n3, n3, n4
	add	n2, n2, n3
	addi	n2, n2, 2
	srli	n2, n2, 2
	sb	n2, 5(n6)
	lbu	n2, 3(t6)
	add	n4, t3, a6
	lbu	n4, 0(n4)
	add	n2, n2, n4
	add	n3, n3, n2
	addi	n3, n3, 2
	srli	n3, n3, 2
	sb	n3, 6(n6)
	lbu	t6, 4(t6)
	lbu	n1, 0(n1)
	add	t6, t6, n1
	add	t6, n2, t6
	addi	t6, t6, 2
	srli	t6, t6, 2
	sb	t6, 7(n6)
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
