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
	addi	sp, sp, -608
	sd	ra, 600(sp)                     # 8-byte Folded Spill
	sd	s0, 592(sp)                     # 8-byte Folded Spill
	sd	s1, 584(sp)                     # 8-byte Folded Spill
	sd	s2, 576(sp)                     # 8-byte Folded Spill
	sd	s3, 568(sp)                     # 8-byte Folded Spill
	sd	s4, 560(sp)                     # 8-byte Folded Spill
	sd	s5, 552(sp)                     # 8-byte Folded Spill
	sd	s6, 544(sp)                     # 8-byte Folded Spill
	sd	s7, 536(sp)                     # 8-byte Folded Spill
	sd	s8, 528(sp)                     # 8-byte Folded Spill
	sd	s9, 520(sp)                     # 8-byte Folded Spill
	sd	s10, 512(sp)                    # 8-byte Folded Spill
	sd	s11, 504(sp)                    # 8-byte Folded Spill
	mv	s11, a1
	slli	a1, a0, 1
	srli	a1, a1, 60
	sd	a0, 168(sp)                     # 8-byte Folded Spill
	add	a0, a0, a1
	sraiw	a0, a0, 4
	addi	a0, a0, 1
	slli	a1, s11, 1
	srli	a1, a1, 60
	lui	a5, %hi(coded_picture_width)
	lui	a6, %hi(mv_outside_frame)
	lw	a6, %lo(mv_outside_frame)(a6)
	lw	s5, %lo(coded_picture_width)(a5)
	add	a1, s11, a1
	sraiw	a1, a1, 4
	addi	a7, a1, 1
	beqz	a6, .LBB0_2
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
	ld	a5, 0(a1)
	sd	a5, 160(sp)                     # 8-byte Folded Spill
	ld	s10, 8(a1)
	ld	s1, 16(a1)
	li	a1, 360
	mul	a1, a7, a1
	lui	a5, %hi(modemap)
	addi	a5, a5, %lo(modemap)
	add	a1, a5, a1
	slli	t0, a0, 2
	add	a1, a1, t0
	lw	a6, 0(a1)
	lui	a0, %hi(adv_pred_mode)
	lw	a0, %lo(adv_pred_mode)(a0)
	sd	s11, 176(sp)                    # 8-byte Folded Spill
	bnez	a2, .LBB0_4
	j	.LBB0_105
.LBB0_4:
	lui	s8, %hi(MV)
	addi	s8, s8, %lo(MV)
	bnez	a0, .LBB0_5
	j	.LBB0_112
.LBB0_5:
	sd	a6, 8(sp)                       # 8-byte Folded Spill
	sd	t0, 16(sp)                      # 8-byte Folded Spill
	sd	a7, 24(sp)                      # 8-byte Folded Spill
	sd	s10, 32(sp)                     # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	li	a2, 0
	li	a3, 0
	li	a4, 0
	addi	t1, sp, 376
	slliw	a5, s4, 2
	ld	a0, 160(sp)                     # 8-byte Folded Reload
	ld	a1, 168(sp)                     # 8-byte Folded Reload
	add	a0, a1, a0
	addi	a1, a0, 4
	sd	a1, 112(sp)                     # 8-byte Folded Spill
	addi	t4, sp, 504
	addi	a1, a0, 8
	sd	a1, 120(sp)                     # 8-byte Folded Spill
	addi	a1, a0, 7
	sd	a1, 128(sp)                     # 8-byte Folded Spill
	sd	a5, 136(sp)                     # 8-byte Folded Spill
	add	a1, a0, a5
	addi	a5, a1, 4
	sd	a5, 80(sp)                      # 8-byte Folded Spill
	addi	a5, a1, 8
	sd	a5, 72(sp)                      # 8-byte Folded Spill
	addi	a1, a1, 7
	sd	a1, 104(sp)                     # 8-byte Folded Spill
	addi	s10, sp, 532
	add	a1, a0, s4
	addi	a5, a1, 8
	sd	a5, 64(sp)                      # 8-byte Folded Spill
	addi	a5, a1, 7
	sd	a5, 96(sp)                      # 8-byte Folded Spill
	addi	a0, a0, 2
	sd	a0, 56(sp)                      # 8-byte Folded Spill
	addi	a0, a1, 2
	sd	a0, 48(sp)                      # 8-byte Folded Spill
	addi	a1, a1, 3
	sd	a1, 88(sp)                      # 8-byte Folded Spill
	li	s9, 360
	lui	a0, 6
	addiw	a0, a0, 1704
	sd	a0, 152(sp)                     # 8-byte Folded Spill
	lui	a0, 32
	addiw	a0, a0, 328
	add	a0, s8, a0
	sd	a0, 144(sp)                     # 8-byte Folded Spill
	lui	a6, %hi(OM)
	addi	a6, a6, %lo(OM)
	j	.LBB0_8
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	lbu	a1, 0(a0)
	lw	a5, 1024(a6)
	lw	a7, 248(sp)
	mul	a1, a5, a1
	add	a1, a7, a1
	sw	a1, 248(sp)
	lbu	a1, 1(a0)
	lw	a5, 1028(a6)
	lw	a7, 252(sp)
	mul	a1, a5, a1
	add	a1, a7, a1
	sw	a1, 252(sp)
	lbu	a1, 2(a0)
	lw	a5, 1032(a6)
	lw	a7, 256(sp)
	mul	a1, a5, a1
	add	a1, a7, a1
	sw	a1, 256(sp)
	lbu	a1, 3(a0)
	lw	a5, 1036(a6)
	lw	a7, 260(sp)
	mul	a1, a5, a1
	add	a1, a7, a1
	sw	a1, 260(sp)
	add	a0, a0, s4
	lbu	a1, 0(a0)
	lw	a5, 1056(a6)
	lw	a7, 280(sp)
	mul	a1, a5, a1
	add	a1, a7, a1
	sw	a1, 280(sp)
	lbu	a1, 1(a0)
	lw	a5, 1060(a6)
	lw	a7, 284(sp)
	mul	a1, a5, a1
	add	a1, a7, a1
	sw	a1, 284(sp)
	lbu	a1, 2(a0)
	lw	a5, 1064(a6)
	lw	a7, 288(sp)
	mul	a1, a5, a1
	add	a1, a7, a1
	sw	a1, 288(sp)
	lbu	a1, 3(a0)
	lw	a5, 1068(a6)
	lw	a7, 292(sp)
	mul	a1, a5, a1
	add	a1, a7, a1
	sw	a1, 292(sp)
	add	a0, a0, s4
	lbu	a1, 0(a0)
	lw	a5, 1088(a6)
	lw	a7, 312(sp)
	mul	a1, a5, a1
	add	a1, a7, a1
	sw	a1, 312(sp)
	lbu	a1, 1(a0)
	lw	a5, 1092(a6)
	lw	a7, 316(sp)
	mul	a1, a5, a1
	add	a1, a7, a1
	sw	a1, 316(sp)
	lbu	a1, 2(a0)
	lw	a5, 1096(a6)
	lw	a7, 320(sp)
	mul	a1, a5, a1
	add	a1, a7, a1
	sw	a1, 320(sp)
	lbu	a1, 3(a0)
	lw	a5, 1100(a6)
	lw	a7, 324(sp)
	mul	a1, a5, a1
	add	a1, a7, a1
	sw	a1, 324(sp)
	add	a0, a0, s4
	lbu	a1, 0(a0)
	lw	a5, 1120(a6)
	lw	a7, 344(sp)
	mul	a1, a5, a1
	add	a1, a7, a1
	sw	a1, 344(sp)
	lbu	a1, 1(a0)
	lw	a5, 1124(a6)
	lw	a7, 348(sp)
	mul	a1, a5, a1
	add	a1, a7, a1
	sw	a1, 348(sp)
	lbu	a1, 2(a0)
	lw	a5, 1128(a6)
	lw	a7, 352(sp)
	mul	a1, a5, a1
	add	a1, a7, a1
	sw	a1, 352(sp)
	lbu	a1, 3(a0)
	lw	a5, 1132(a6)
	lw	a7, 356(sp)
	mul	a1, a5, a1
	add	a1, a7, a1
	sw	a1, 356(sp)
	add	a0, a0, s4
	lbu	a1, 0(a0)
	lw	a5, 1152(a6)
	lw	a7, 376(sp)
	mul	a1, a5, a1
	add	a1, a7, a1
	sw	a1, 376(sp)
	lbu	a1, 1(a0)
	lw	a5, 1156(a6)
	lw	a7, 380(sp)
	mul	a1, a5, a1
	add	a1, a7, a1
	sw	a1, 380(sp)
	lbu	a1, 2(a0)
	lw	a5, 1160(a6)
	lw	a7, 384(sp)
	mul	a1, a5, a1
	add	a1, a7, a1
	sw	a1, 384(sp)
	lbu	a1, 3(a0)
	lw	a5, 1164(a6)
	lw	a7, 388(sp)
	mul	a1, a5, a1
	add	a1, a7, a1
	sw	a1, 388(sp)
	add	a0, a0, s4
	lbu	a1, 0(a0)
	lw	a5, 1184(a6)
	lw	a7, 408(sp)
	mul	a1, a5, a1
	add	a1, a7, a1
	sw	a1, 408(sp)
	lbu	a1, 1(a0)
	lw	a5, 1188(a6)
	lw	a7, 412(sp)
	mul	a1, a5, a1
	add	a1, a7, a1
	sw	a1, 412(sp)
	lbu	a1, 2(a0)
	lw	a5, 1192(a6)
	lw	a7, 416(sp)
	mul	a1, a5, a1
	add	a1, a7, a1
	sw	a1, 416(sp)
	lbu	a1, 3(a0)
	lw	a5, 1196(a6)
	lw	a7, 420(sp)
	mul	a1, a5, a1
	add	a1, a7, a1
	sw	a1, 420(sp)
	add	a0, a0, s4
	lbu	a1, 0(a0)
	lw	a5, 1216(a6)
	lw	a7, 440(sp)
	mul	a1, a5, a1
	add	a1, a7, a1
	sw	a1, 440(sp)
	lbu	a1, 1(a0)
	lw	a5, 1220(a6)
	lw	a7, 444(sp)
	mul	a1, a5, a1
	add	a1, a7, a1
	sw	a1, 444(sp)
	lbu	a1, 2(a0)
	lw	a5, 1224(a6)
	lw	a7, 448(sp)
	mul	a1, a5, a1
	add	a1, a7, a1
	sw	a1, 448(sp)
	lbu	a1, 3(a0)
	lw	a5, 1228(a6)
	lw	a7, 452(sp)
	mul	a1, a5, a1
	add	a1, a7, a1
	sw	a1, 452(sp)
	add	a0, a0, s4
	lbu	a1, 0(a0)
	lw	a5, 1248(a6)
	lw	a7, 472(sp)
	mul	a1, a5, a1
	add	a1, a7, a1
	sw	a1, 472(sp)
	lbu	a1, 1(a0)
	lw	a5, 1252(a6)
	lw	a7, 476(sp)
	mul	a1, a5, a1
	add	a1, a7, a1
	sw	a1, 476(sp)
	lbu	a1, 2(a0)
	lw	a5, 1256(a6)
	lw	a7, 480(sp)
	mul	a1, a5, a1
	add	a1, a7, a1
	sw	a1, 480(sp)
	lbu	a0, 3(a0)
	lw	a1, 1260(a6)
	lw	a5, 484(sp)
	mul	a0, a1, a0
	add	a0, a5, a0
	sw	a0, 484(sp)
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	lw	a0, 248(sp)
	mulw	a1, ra, s5
	ld	a5, 216(sp)                     # 8-byte Folded Reload
	add	a1, a5, a1
	ld	a5, 232(sp)                     # 8-byte Folded Reload
	add	a1, a1, a5
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 0(a1)
	lw	a0, 252(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 1(a1)
	lw	a0, 256(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 2(a1)
	lw	a0, 260(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 3(a1)
	lw	a0, 264(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 4(a1)
	lw	a0, 268(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 5(a1)
	lw	a0, 272(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 6(a1)
	lw	a0, 276(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 7(a1)
	lw	a0, 280(sp)
	add	a1, a1, s5
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 0(a1)
	lw	a0, 284(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 1(a1)
	lw	a0, 288(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 2(a1)
	lw	a0, 292(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 3(a1)
	lw	a0, 296(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 4(a1)
	lw	a0, 300(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 5(a1)
	lw	a0, 304(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 6(a1)
	lw	a0, 308(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 7(a1)
	lw	a0, 312(sp)
	add	a1, a1, s5
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 0(a1)
	lw	a0, 316(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 1(a1)
	lw	a0, 320(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 2(a1)
	lw	a0, 324(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 3(a1)
	lw	a0, 328(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 4(a1)
	lw	a0, 332(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 5(a1)
	lw	a0, 336(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 6(a1)
	lw	a0, 340(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 7(a1)
	lw	a0, 344(sp)
	add	a1, a1, s5
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 0(a1)
	lw	a0, 348(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 1(a1)
	lw	a0, 352(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 2(a1)
	lw	a0, 356(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 3(a1)
	lw	a0, 360(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 4(a1)
	lw	a0, 364(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 5(a1)
	lw	a0, 368(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 6(a1)
	lw	a0, 372(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 7(a1)
	lw	a0, 376(sp)
	add	a1, a1, s5
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 0(a1)
	lw	a0, 380(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 1(a1)
	lw	a0, 384(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 2(a1)
	lw	a0, 388(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 3(a1)
	lw	a0, 392(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 4(a1)
	lw	a0, 396(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 5(a1)
	lw	a0, 400(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 6(a1)
	lw	a0, 404(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 7(a1)
	lw	a0, 408(sp)
	add	a1, a1, s5
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 0(a1)
	lw	a0, 412(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 1(a1)
	lw	a0, 416(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 2(a1)
	lw	a0, 420(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 3(a1)
	lw	a0, 424(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 4(a1)
	lw	a0, 428(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 5(a1)
	lw	a0, 432(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 6(a1)
	lw	a0, 436(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 7(a1)
	lw	a0, 440(sp)
	add	a1, a1, s5
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 0(a1)
	lw	a0, 444(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 1(a1)
	lw	a0, 448(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 2(a1)
	lw	a0, 452(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 3(a1)
	lw	a0, 456(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 4(a1)
	lw	a0, 460(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 5(a1)
	lw	a0, 464(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 6(a1)
	lw	a0, 468(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 7(a1)
	lw	a0, 472(sp)
	add	a1, a1, s5
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 0(a1)
	lw	a0, 476(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 1(a1)
	lw	a0, 480(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 2(a1)
	lw	a0, 484(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 3(a1)
	lw	a0, 488(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 4(a1)
	lw	a0, 492(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 5(a1)
	lw	a0, 496(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 6(a1)
	lw	a0, 500(sp)
	addi	a0, a0, 4
	srli	a0, a0, 3
	sb	a0, 7(a1)
	addi	a3, a3, 1
	addi	a2, a2, 4
	li	a0, 4
	bne	a4, a0, .LBB0_8
	j	.LBB0_100
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_73 Depth 2
                                        #     Child Loop BB0_91 Depth 2
                                        #     Child Loop BB0_45 Depth 2
                                        #     Child Loop BB0_77 Depth 2
                                        #     Child Loop BB0_93 Depth 2
                                        #     Child Loop BB0_51 Depth 2
                                        #     Child Loop BB0_81 Depth 2
                                        #     Child Loop BB0_95 Depth 2
                                        #     Child Loop BB0_57 Depth 2
                                        #     Child Loop BB0_85 Depth 2
                                        #     Child Loop BB0_97 Depth 2
                                        #     Child Loop BB0_63 Depth 2
                                        #     Child Loop BB0_89 Depth 2
                                        #     Child Loop BB0_99 Depth 2
                                        #     Child Loop BB0_69 Depth 2
	slli	a0, a4, 3
	andi	a0, a0, 8
	ld	a1, 168(sp)                     # 8-byte Folded Reload
	addw	a1, a0, a1
	slli	a0, a4, 2
	andi	a0, a0, 8
	addw	ra, a0, s11
	sd	a1, 232(sp)                     # 8-byte Folded Spill
	sraiw	a5, a1, 4
	addi	a0, a5, 1
	sraiw	s1, ra, 4
	slli	t0, a0, 2
	mul	a1, s1, s9
	lui	a7, %hi(modemap)
	addi	a7, a7, %lo(modemap)
	add	a1, a7, a1
	addi	t6, a1, 360
	add	a7, t6, t0
	lw	t2, 0(a7)
	lui	a7, %hi(newframe)
	ld	a7, %lo(newframe)(a7)
	sd	a7, 216(sp)                     # 8-byte Folded Spill
	addi	a7, s1, 1
	addi	t2, t2, -2
	seqz	t3, t2
	slli	t5, a5, 2
	add	t5, t6, t5
	lw	s3, 0(t5)
	addi	t5, a5, 2
	slli	s0, t5, 2
	add	t6, t6, s0
	lw	s2, 0(t6)
	addiw	t6, s3, -3
	lui	s0, %hi(pb_frame)
	lw	s0, %lo(pb_frame)(s0)
	sltiu	s6, t6, 2
	addiw	t6, s2, -3
	sltiu	s7, t6, 2
	seqz	t6, s0
	and	s6, t6, s6
	and	s0, t6, s7
	li	s7, 1
	blt	s7, a4, .LBB0_20
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	add	a1, a1, t0
	lw	a1, 0(a1)
	addiw	s7, a1, -3
	sltiu	s7, s7, 2
	and	s7, t6, s7
	beqz	a4, .LBB0_25
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=1
	li	a5, 1
	beq	a4, a5, .LBB0_11
	j	.LBB0_128
.LBB0_11:                               #   in Loop: Header=BB0_8 Depth=1
	mv	t6, a7
	bnez	s7, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_8 Depth=1
	mv	t6, s1
.LBB0_13:                               #   in Loop: Header=BB0_8 Depth=1
	li	a5, 16
	bgeu	ra, a5, .LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_8 Depth=1
	li	t6, 1
.LBB0_15:                               #   in Loop: Header=BB0_8 Depth=1
	seqz	s1, t2
	slli	s6, s1, 1
	sltiu	a5, ra, 16
	or	a5, a5, s7
	mv	s3, s6
	bnez	a5, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_8 Depth=1
	addi	a1, a1, -2
	seqz	s3, a1
	slli	s3, s3, 2
.LBB0_17:                               #   in Loop: Header=BB0_8 Depth=1
	lui	a1, %hi(mb_width)
	lw	a1, %lo(mb_width)(a1)
	xor	a1, a0, a1
	seqz	a1, a1
	or	a1, a1, s0
	mv	a5, a0
	bnez	a1, .LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_8 Depth=1
	addi	s2, s2, -2
	seqz	s6, s2
	mv	a5, t5
.LBB0_19:                               #   in Loop: Header=BB0_8 Depth=1
	slli	s1, s1, 2
	j	.LBB0_41
.LBB0_20:                               #   in Loop: Header=BB0_8 Depth=1
	li	a1, 2
	beq	a4, a1, .LBB0_32
# %bb.21:                               #   in Loop: Header=BB0_8 Depth=1
	li	a1, 3
	beq	a4, a1, .LBB0_22
	j	.LBB0_128
.LBB0_22:                               #   in Loop: Header=BB0_8 Depth=1
	lui	a1, %hi(mb_width)
	lw	a5, %lo(mb_width)(a1)
	seqz	a1, t2
	slli	s1, a1, 2
	xor	a5, a0, a5
	seqz	a5, a5
	or	s0, a5, s0
	mv	a5, a0
	mv	s6, s1
	bnez	s0, .LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_8 Depth=1
	addi	s2, s2, -2
	snez	a5, s2
	addi	a5, a5, -1
	andi	s6, a5, 3
	mv	a5, t5
.LBB0_24:                               #   in Loop: Header=BB0_8 Depth=1
	slli	s3, a1, 1
	negw	t3, a1
	andi	t3, t3, 3
	mv	t6, a7
	j	.LBB0_41
.LBB0_25:                               #   in Loop: Header=BB0_8 Depth=1
	mv	t6, a7
	beqz	s7, .LBB0_36
# %bb.26:                               #   in Loop: Header=BB0_8 Depth=1
	mv	s0, a0
	mv	t5, t3
	beqz	s6, .LBB0_37
.LBB0_27:                               #   in Loop: Header=BB0_8 Depth=1
	li	a5, 16
	bltu	ra, a5, .LBB0_38
.LBB0_28:                               #   in Loop: Header=BB0_8 Depth=1
	sltiu	a5, ra, 16
	or	a5, a5, s7
	mv	s3, t3
	bnez	a5, .LBB0_30
.LBB0_29:                               #   in Loop: Header=BB0_8 Depth=1
	addi	a1, a1, -2
	snez	a1, a1
	addi	a1, a1, -1
	andi	s3, a1, 3
.LBB0_30:                               #   in Loop: Header=BB0_8 Depth=1
	seqz	s6, t2
	negw	s1, s6
	andi	s1, s1, 3
	slli	s6, s6, 1
	li	a1, 15
	ld	a5, 232(sp)                     # 8-byte Folded Reload
	bltu	a1, a5, .LBB0_39
# %bb.31:                               #   in Loop: Header=BB0_8 Depth=1
	li	a5, 1
	li	a0, 1
	j	.LBB0_41
.LBB0_32:                               #   in Loop: Header=BB0_8 Depth=1
	seqz	t5, t2
	negw	s1, t5
	andi	s1, s1, 3
	mv	t6, a0
	mv	a1, s1
	bnez	s6, .LBB0_34
# %bb.33:                               #   in Loop: Header=BB0_8 Depth=1
	addi	s3, s3, -2
	seqz	a1, s3
	slli	a1, a1, 2
	mv	t6, a5
.LBB0_34:                               #   in Loop: Header=BB0_8 Depth=1
	slli	s6, t5, 2
	li	a5, 15
	ld	t5, 232(sp)                     # 8-byte Folded Reload
	bltu	a5, t5, .LBB0_40
# %bb.35:                               #   in Loop: Header=BB0_8 Depth=1
	li	a5, 1
	li	a0, 1
	mv	t6, a7
	mv	s3, t3
	mv	t3, s1
	j	.LBB0_41
.LBB0_36:                               #   in Loop: Header=BB0_8 Depth=1
	mv	t6, s1
	mv	s0, a0
	mv	t5, t3
	bnez	s6, .LBB0_27
.LBB0_37:                               #   in Loop: Header=BB0_8 Depth=1
	addi	s3, s3, -2
	seqz	t5, s3
	slli	t5, t5, 1
	mv	s0, a5
	li	a5, 16
	bgeu	ra, a5, .LBB0_28
.LBB0_38:                               #   in Loop: Header=BB0_8 Depth=1
	li	t6, 1
	sltiu	a5, ra, 16
	or	a5, a5, s7
	mv	s3, t3
	beqz	a5, .LBB0_29
	j	.LBB0_30
.LBB0_39:                               #   in Loop: Header=BB0_8 Depth=1
	mv	a5, a0
	mv	a0, s0
	mv	t3, t5
	j	.LBB0_41
.LBB0_40:                               #   in Loop: Header=BB0_8 Depth=1
	mv	a5, a0
	mv	a0, t6
	mv	t6, a7
	mv	s3, t3
	mv	t3, a1
.LBB0_41:                               #   in Loop: Header=BB0_8 Depth=1
	slli	a1, a3, 3
	andi	a1, a1, 8
	sd	a1, 240(sp)                     # 8-byte Folded Spill
	addiw	a4, a4, 1
	snez	a1, t2
	addi	a1, a1, -1
	and	a1, a1, a4
	mul	t5, a7, s9
	ld	s2, 152(sp)                     # 8-byte Folded Reload
	mul	a1, a1, s2
	add	a7, s8, t5
	add	a7, a7, t0
	add	a7, a7, a1
	lw	s0, 0(a7)
	ld	s7, 144(sp)                     # 8-byte Folded Reload
	add	a7, s7, t5
	add	a7, a7, t0
	add	a1, a7, a1
	lw	a1, 0(a1)
	mul	a7, t6, s9
	mul	t2, s3, s2
	add	t6, s8, a7
	add	t6, t6, t0
	add	t6, t6, t2
	lw	s9, 0(t6)
	add	a7, s7, a7
	add	a7, a7, t0
	add	a7, a7, t2
	lw	s3, 0(a7)
	mul	t2, s1, s2
	add	a7, s8, t5
	add	a7, a7, t0
	add	a7, a7, t2
	lw	a7, 0(a7)
	add	t6, s7, t5
	add	t0, t6, t0
	add	t0, t0, t2
	lw	t2, 0(t0)
	mul	t0, s6, s2
	add	t6, s8, t5
	slli	a5, a5, 2
	add	t6, t6, a5
	add	t6, t6, t0
	lw	t6, 0(t6)
	sd	t6, 192(sp)                     # 8-byte Folded Spill
	add	s1, s7, t5
	add	a5, s1, a5
	add	a5, a5, t0
	lw	a5, 0(a5)
	sd	a5, 184(sp)                     # 8-byte Folded Spill
	mul	a5, t3, s2
	add	t3, s8, t5
	slli	a0, a0, 2
	add	t3, t3, a0
	add	t3, t3, a5
	lw	t0, 0(t3)
	sd	t0, 208(sp)                     # 8-byte Folded Spill
	add	t5, s7, t5
	add	a0, t5, a0
	add	a0, a0, a5
	lw	a0, 0(a0)
	sd	a0, 200(sp)                     # 8-byte Folded Spill
	ld	a0, 160(sp)                     # 8-byte Folded Reload
	ld	a5, 232(sp)                     # 8-byte Folded Reload
	add	a0, a0, a5
	srai	s1, s0, 1
	andi	t3, s0, 1
	srai	s2, a1, 1
	andi	a1, a1, 1
	add	a5, s2, ra
	mulw	a5, a5, s4
	add	t5, a0, s1
	add	a5, t5, a5
	or	t5, t3, a1
	andi	t0, a2, -8
	sd	t0, 224(sp)                     # 8-byte Folded Spill
	beqz	t5, .LBB0_46
# %bb.42:                               #   in Loop: Header=BB0_8 Depth=1
	add	s2, s11, s2
	beqz	t3, .LBB0_43
	j	.LBB0_70
.LBB0_43:                               #   in Loop: Header=BB0_8 Depth=1
	bnez	a1, .LBB0_44
	j	.LBB0_70
.LBB0_44:                               #   in Loop: Header=BB0_8 Depth=1
	lbu	a1, 1(a5)
	lbu	s0, 2(a5)
	lbu	s6, 3(a5)
	lbu	t5, 4(a5)
	lbu	s11, 5(a5)
	lbu	s7, 6(a5)
	ld	a5, 240(sp)                     # 8-byte Folded Reload
	add	s1, a5, s1
	add	s2, s2, t0
	mulw	s2, s4, s2
	ld	a5, 128(sp)                     # 8-byte Folded Reload
	add	s1, a5, s1
	add	s2, s1, s2
	addi	a5, sp, 248
	mv	s1, a6
.LBB0_45:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	t3, s2, s4
	lbu	s8, -7(s2)
	lbu	t6, -7(t3)
	lw	t0, 0(s1)
	add	t6, s8, t6
	addi	t6, t6, 1
	srli	t6, t6, 1
	mul	t0, t6, t0
	sw	t0, 0(a5)
	lbu	s8, -6(t3)
	lw	t0, 4(s1)
	add	a1, a1, s8
	addi	a1, a1, 1
	srliw	a1, a1, 1
	mul	a1, a1, t0
	sw	a1, 4(a5)
	lbu	a1, -5(t3)
	lw	t0, 8(s1)
	add	s0, s0, a1
	addi	s0, s0, 1
	srliw	t6, s0, 1
	mul	t0, t6, t0
	sw	t0, 8(a5)
	lbu	s0, -4(t3)
	lw	t0, 12(s1)
	add	s6, s6, s0
	addi	s6, s6, 1
	srliw	t6, s6, 1
	mul	t0, t6, t0
	sw	t0, 12(a5)
	lbu	t0, -3(t3)
	lw	t6, 16(s1)
	add	t5, t5, t0
	addi	t5, t5, 1
	srliw	t5, t5, 1
	mul	t5, t5, t6
	sw	t5, 16(a5)
	lbu	t5, -2(t3)
	lw	t6, 20(s1)
	add	s11, s11, t5
	addi	s11, s11, 1
	srliw	s6, s11, 1
	mul	t6, s6, t6
	sw	t6, 20(a5)
	lbu	t6, -1(t3)
	lw	s6, 24(s1)
	add	s7, s7, t6
	addi	s7, s7, 1
	srliw	s7, s7, 1
	mul	s6, s7, s6
	sw	s6, 24(a5)
	lbu	s2, 0(s2)
	lbu	s6, 0(t3)
	lw	s7, 28(s1)
	add	s2, s2, s6
	addi	s2, s2, 1
	srli	s2, s2, 1
	mul	s2, s2, s7
	sw	s2, 28(a5)
	addi	a5, a5, 32
	addi	s1, s1, 32
	mv	s2, t3
	mv	s7, t6
	mv	s11, t5
	mv	t5, t0
	mv	s6, s0
	mv	s0, a1
	mv	a1, s8
	bne	a5, t4, .LBB0_45
	j	.LBB0_47
.LBB0_46:                               #   in Loop: Header=BB0_8 Depth=1
	lbu	a1, 0(a5)
	lui	t0, %hi(OM)
	lw	t3, %lo(OM)(t0)
	addi	s7, t0, %lo(OM)
	mul	a1, t3, a1
	sw	a1, 248(sp)
	lbu	a1, 1(a5)
	lw	t3, 4(s7)
	mul	a1, t3, a1
	sw	a1, 252(sp)
	lbu	a1, 2(a5)
	lw	t3, 8(s7)
	mul	a1, t3, a1
	sw	a1, 256(sp)
	lbu	a1, 3(a5)
	lw	t3, 12(s7)
	mul	a1, t3, a1
	sw	a1, 260(sp)
	lbu	a1, 4(a5)
	lw	t3, 16(s7)
	mul	a1, t3, a1
	sw	a1, 264(sp)
	lbu	a1, 5(a5)
	lw	t3, 20(s7)
	mul	a1, t3, a1
	sw	a1, 268(sp)
	lbu	a1, 6(a5)
	lw	t3, 24(s7)
	mul	a1, t3, a1
	sw	a1, 272(sp)
	lbu	a1, 7(a5)
	lw	t3, 28(s7)
	mul	a1, t3, a1
	sw	a1, 276(sp)
	add	a5, a5, s4
	lbu	a1, 0(a5)
	lw	t3, 32(s7)
	mul	a1, t3, a1
	sw	a1, 280(sp)
	lbu	a1, 1(a5)
	lw	t3, 36(s7)
	mul	a1, t3, a1
	sw	a1, 284(sp)
	lbu	a1, 2(a5)
	lw	t3, 40(s7)
	mul	a1, t3, a1
	sw	a1, 288(sp)
	lbu	a1, 3(a5)
	lw	t3, 44(s7)
	mul	a1, t3, a1
	sw	a1, 292(sp)
	lbu	a1, 4(a5)
	lw	t3, 48(s7)
	mul	a1, t3, a1
	sw	a1, 296(sp)
	lbu	a1, 5(a5)
	lw	t3, 52(s7)
	mul	a1, t3, a1
	sw	a1, 300(sp)
	lbu	a1, 6(a5)
	lw	t3, 56(s7)
	mul	a1, t3, a1
	sw	a1, 304(sp)
	lbu	a1, 7(a5)
	lw	t3, 60(s7)
	mul	a1, t3, a1
	sw	a1, 308(sp)
	add	a5, a5, s4
	lbu	a1, 0(a5)
	lw	t3, 64(s7)
	mul	a1, t3, a1
	sw	a1, 312(sp)
	lbu	a1, 1(a5)
	lw	t3, 68(s7)
	mul	a1, t3, a1
	sw	a1, 316(sp)
	lbu	a1, 2(a5)
	lw	t3, 72(s7)
	mul	a1, t3, a1
	sw	a1, 320(sp)
	lbu	a1, 3(a5)
	lw	t3, 76(s7)
	mul	a1, t3, a1
	sw	a1, 324(sp)
	lbu	a1, 4(a5)
	lw	t3, 80(s7)
	mul	a1, t3, a1
	sw	a1, 328(sp)
	lbu	a1, 5(a5)
	lw	t3, 84(s7)
	mul	a1, t3, a1
	sw	a1, 332(sp)
	lbu	a1, 6(a5)
	lw	t3, 88(s7)
	mul	a1, t3, a1
	sw	a1, 336(sp)
	lbu	a1, 7(a5)
	lw	t3, 92(s7)
	mul	a1, t3, a1
	sw	a1, 340(sp)
	add	a5, a5, s4
	lbu	a1, 0(a5)
	lw	t3, 96(s7)
	mul	a1, t3, a1
	sw	a1, 344(sp)
	lbu	a1, 1(a5)
	lw	t3, 100(s7)
	mul	a1, t3, a1
	sw	a1, 348(sp)
	lbu	a1, 2(a5)
	lw	t3, 104(s7)
	mul	a1, t3, a1
	sw	a1, 352(sp)
	lbu	a1, 3(a5)
	lw	t3, 108(s7)
	mul	a1, t3, a1
	sw	a1, 356(sp)
	lbu	a1, 4(a5)
	lw	t3, 112(s7)
	mul	a1, t3, a1
	sw	a1, 360(sp)
	lbu	a1, 5(a5)
	lw	t3, 116(s7)
	mul	a1, t3, a1
	sw	a1, 364(sp)
	lbu	a1, 6(a5)
	lw	t3, 120(s7)
	mul	a1, t3, a1
	sw	a1, 368(sp)
	lbu	a1, 7(a5)
	lw	t3, 124(s7)
	mul	a1, t3, a1
	sw	a1, 372(sp)
	add	a5, a5, s4
	lbu	a1, 0(a5)
	lw	t3, 128(s7)
	mul	a1, t3, a1
	sw	a1, 376(sp)
	lbu	a1, 1(a5)
	lw	t3, 132(s7)
	mul	a1, t3, a1
	sw	a1, 380(sp)
	lbu	a1, 2(a5)
	lw	t3, 136(s7)
	mul	a1, t3, a1
	sw	a1, 384(sp)
	lbu	a1, 3(a5)
	lw	t3, 140(s7)
	mul	a1, t3, a1
	sw	a1, 388(sp)
	lbu	a1, 4(a5)
	lw	t3, 144(s7)
	mul	a1, t3, a1
	sw	a1, 392(sp)
	lbu	a1, 5(a5)
	lw	t3, 148(s7)
	mul	a1, t3, a1
	sw	a1, 396(sp)
	lbu	a1, 6(a5)
	lw	t3, 152(s7)
	mul	a1, t3, a1
	sw	a1, 400(sp)
	lbu	a1, 7(a5)
	lw	t3, 156(s7)
	mul	a1, t3, a1
	sw	a1, 404(sp)
	add	a5, a5, s4
	lbu	a1, 0(a5)
	lw	t3, 160(s7)
	mul	a1, t3, a1
	sw	a1, 408(sp)
	lbu	a1, 1(a5)
	lw	t3, 164(s7)
	mul	a1, t3, a1
	sw	a1, 412(sp)
	lbu	a1, 2(a5)
	lw	t3, 168(s7)
	mul	a1, t3, a1
	sw	a1, 416(sp)
	lbu	a1, 3(a5)
	lw	t3, 172(s7)
	mul	a1, t3, a1
	sw	a1, 420(sp)
	lbu	a1, 4(a5)
	lw	t3, 176(s7)
	mul	a1, t3, a1
	sw	a1, 424(sp)
	lbu	a1, 5(a5)
	lw	t3, 180(s7)
	mul	a1, t3, a1
	sw	a1, 428(sp)
	lbu	a1, 6(a5)
	lw	t3, 184(s7)
	mul	a1, t3, a1
	sw	a1, 432(sp)
	lbu	a1, 7(a5)
	lw	t3, 188(s7)
	mul	a1, t3, a1
	sw	a1, 436(sp)
	add	a5, a5, s4
	lbu	a1, 0(a5)
	lw	t3, 192(s7)
	mul	a1, t3, a1
	sw	a1, 440(sp)
	lbu	a1, 1(a5)
	lw	t3, 196(s7)
	mul	a1, t3, a1
	sw	a1, 444(sp)
	lbu	a1, 2(a5)
	lw	t3, 200(s7)
	mul	a1, t3, a1
	sw	a1, 448(sp)
	lbu	a1, 3(a5)
	lw	t3, 204(s7)
	mul	a1, t3, a1
	sw	a1, 452(sp)
	lbu	a1, 4(a5)
	lw	t3, 208(s7)
	mul	a1, t3, a1
	sw	a1, 456(sp)
	lbu	a1, 5(a5)
	lw	t3, 212(s7)
	mul	a1, t3, a1
	sw	a1, 460(sp)
	lbu	a1, 6(a5)
	lw	t3, 216(s7)
	mul	a1, t3, a1
	sw	a1, 464(sp)
	lbu	a1, 7(a5)
	lw	t3, 220(s7)
	mul	a1, t3, a1
	sw	a1, 468(sp)
	add	a5, a5, s4
	lbu	a1, 0(a5)
	lw	t3, 224(s7)
	mul	a1, t3, a1
	sw	a1, 472(sp)
	lbu	a1, 1(a5)
	lw	t3, 228(s7)
	mul	a1, t3, a1
	sw	a1, 476(sp)
	lbu	a1, 2(a5)
	lw	t3, 232(s7)
	mul	a1, t3, a1
	sw	a1, 480(sp)
	lbu	a1, 3(a5)
	lw	t3, 236(s7)
	mul	a1, t3, a1
	sw	a1, 484(sp)
	lbu	a1, 4(a5)
	lw	t3, 240(s7)
	mul	a1, t3, a1
	sw	a1, 488(sp)
	lbu	a1, 5(a5)
	lw	t3, 244(s7)
	mul	a1, t3, a1
	sw	a1, 492(sp)
	lbu	a1, 6(a5)
	lw	t3, 248(s7)
	mul	a1, t3, a1
	sw	a1, 496(sp)
	lbu	a1, 7(a5)
	lw	a5, 252(s7)
	mul	a1, a5, a1
	sw	a1, 500(sp)
.LBB0_47:                               #   in Loop: Header=BB0_8 Depth=1
	srai	t5, s9, 1
	andi	t3, s9, 1
	srai	s0, s3, 1
	andi	a1, s3, 1
	add	a5, s0, ra
	mulw	a5, a5, s4
	add	a5, a0, a5
	or	t0, t3, a1
	add	a5, a5, t5
	beqz	t0, .LBB0_52
# %bb.48:                               #   in Loop: Header=BB0_8 Depth=1
	ld	t0, 176(sp)                     # 8-byte Folded Reload
	add	s0, t0, s0
	beqz	t3, .LBB0_49
	j	.LBB0_74
.LBB0_49:                               #   in Loop: Header=BB0_8 Depth=1
	bnez	a1, .LBB0_50
	j	.LBB0_74
.LBB0_50:                               #   in Loop: Header=BB0_8 Depth=1
	lbu	a1, 2(a5)
	lbu	s8, 3(a5)
	lbu	t3, 4(a5)
	lbu	s9, 5(a5)
	lbu	s1, 6(a5)
	ld	a5, 240(sp)                     # 8-byte Folded Reload
	add	t5, a5, t5
	ld	a5, 224(sp)                     # 8-byte Folded Reload
	add	s0, s0, a5
	mulw	a5, s4, s0
	ld	t0, 128(sp)                     # 8-byte Folded Reload
	add	t5, t0, t5
	add	a5, t5, a5
	addi	s3, a6, 256
	addi	s7, sp, 248
.LBB0_51:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	s2, a5, s4
	lbu	t0, -7(a5)
	lbu	t5, -7(s2)
	add	t0, t0, t5
	lw	t5, 0(s3)
	lw	t6, 0(s7)
	addi	t0, t0, 1
	srli	t0, t0, 1
	mul	t0, t0, t5
	add	t0, t0, t6
	sw	t0, 0(s7)
	lbu	t0, -6(a5)
	lbu	t5, -6(s2)
	add	t0, t0, t5
	lw	t5, 4(s3)
	lw	t6, 4(s7)
	addi	t0, t0, 1
	srli	t0, t0, 1
	mul	t0, t0, t5
	add	t0, t0, t6
	sw	t0, 4(s7)
	lbu	t5, -5(s2)
	add	a1, a1, t5
	lw	t0, 8(s3)
	lw	t6, 8(s7)
	addi	a1, a1, 1
	srliw	a1, a1, 1
	mul	a1, a1, t0
	add	a1, a1, t6
	sw	a1, 8(s7)
	lbu	s0, -4(s2)
	add	s8, s8, s0
	lw	a1, 12(s3)
	lw	t0, 12(s7)
	addi	s8, s8, 1
	srliw	t6, s8, 1
	mul	a1, t6, a1
	add	a1, a1, t0
	sw	a1, 12(s7)
	lbu	a1, -3(s2)
	add	t3, t3, a1
	lw	t0, 16(s3)
	lw	t6, 16(s7)
	addi	t3, t3, 1
	srliw	t3, t3, 1
	mul	t0, t3, t0
	add	t0, t0, t6
	sw	t0, 16(s7)
	lbu	t0, -2(s2)
	add	s9, s9, t0
	lw	t3, 20(s3)
	lw	t6, 20(s7)
	addi	s9, s9, 1
	srliw	s6, s9, 1
	mul	t3, s6, t3
	add	t3, t3, t6
	sw	t3, 20(s7)
	lbu	t3, -1(s2)
	add	s1, s1, t3
	lw	t6, 24(s3)
	lw	s6, 24(s7)
	addi	s1, s1, 1
	srliw	s1, s1, 1
	mul	t6, s1, t6
	add	t6, t6, s6
	sw	t6, 24(s7)
	lbu	a5, 0(a5)
	lbu	t6, 0(s2)
	add	a5, a5, t6
	lw	t6, 28(s3)
	lw	s1, 28(s7)
	addi	a5, a5, 1
	srli	a5, a5, 1
	mul	a5, a5, t6
	add	a5, a5, s1
	sw	a5, 28(s7)
	addi	s7, s7, 32
	addi	s3, s3, 32
	mv	a5, s2
	mv	s1, t3
	mv	s9, t0
	mv	t3, a1
	mv	s8, s0
	mv	a1, t5
	bne	s7, t1, .LBB0_51
	j	.LBB0_53
.LBB0_52:                               #   in Loop: Header=BB0_8 Depth=1
	lbu	a1, 0(a5)
	lw	t0, 256(a6)
	lw	t3, 248(sp)
	mul	a1, t0, a1
	add	a1, t3, a1
	sw	a1, 248(sp)
	lbu	a1, 1(a5)
	lw	t0, 260(a6)
	lw	t3, 252(sp)
	mul	a1, t0, a1
	add	a1, t3, a1
	sw	a1, 252(sp)
	lbu	a1, 2(a5)
	lw	t0, 264(a6)
	lw	t3, 256(sp)
	mul	a1, t0, a1
	add	a1, t3, a1
	sw	a1, 256(sp)
	lbu	a1, 3(a5)
	lw	t0, 268(a6)
	lw	t3, 260(sp)
	mul	a1, t0, a1
	add	a1, t3, a1
	sw	a1, 260(sp)
	lbu	a1, 4(a5)
	lw	t0, 272(a6)
	lw	t3, 264(sp)
	mul	a1, t0, a1
	add	a1, t3, a1
	sw	a1, 264(sp)
	lbu	a1, 5(a5)
	lw	t0, 276(a6)
	lw	t3, 268(sp)
	mul	a1, t0, a1
	add	a1, t3, a1
	sw	a1, 268(sp)
	lbu	a1, 6(a5)
	lw	t0, 280(a6)
	lw	t3, 272(sp)
	mul	a1, t0, a1
	add	a1, t3, a1
	sw	a1, 272(sp)
	lbu	a1, 7(a5)
	lw	t0, 284(a6)
	lw	t3, 276(sp)
	mul	a1, t0, a1
	add	a1, t3, a1
	sw	a1, 276(sp)
	add	a5, a5, s4
	lbu	a1, 0(a5)
	lw	t0, 288(a6)
	lw	t3, 280(sp)
	mul	a1, t0, a1
	add	a1, t3, a1
	sw	a1, 280(sp)
	lbu	a1, 1(a5)
	lw	t0, 292(a6)
	lw	t3, 284(sp)
	mul	a1, t0, a1
	add	a1, t3, a1
	sw	a1, 284(sp)
	lbu	a1, 2(a5)
	lw	t0, 296(a6)
	lw	t3, 288(sp)
	mul	a1, t0, a1
	add	a1, t3, a1
	sw	a1, 288(sp)
	lbu	a1, 3(a5)
	lw	t0, 300(a6)
	lw	t3, 292(sp)
	mul	a1, t0, a1
	add	a1, t3, a1
	sw	a1, 292(sp)
	lbu	a1, 4(a5)
	lw	t0, 304(a6)
	lw	t3, 296(sp)
	mul	a1, t0, a1
	add	a1, t3, a1
	sw	a1, 296(sp)
	lbu	a1, 5(a5)
	lw	t0, 308(a6)
	lw	t3, 300(sp)
	mul	a1, t0, a1
	add	a1, t3, a1
	sw	a1, 300(sp)
	lbu	a1, 6(a5)
	lw	t0, 312(a6)
	lw	t3, 304(sp)
	mul	a1, t0, a1
	add	a1, t3, a1
	sw	a1, 304(sp)
	lbu	a1, 7(a5)
	lw	t0, 316(a6)
	lw	t3, 308(sp)
	mul	a1, t0, a1
	add	a1, t3, a1
	sw	a1, 308(sp)
	add	a5, a5, s4
	lbu	a1, 0(a5)
	lw	t0, 320(a6)
	lw	t3, 312(sp)
	mul	a1, t0, a1
	add	a1, t3, a1
	sw	a1, 312(sp)
	lbu	a1, 1(a5)
	lw	t0, 324(a6)
	lw	t3, 316(sp)
	mul	a1, t0, a1
	add	a1, t3, a1
	sw	a1, 316(sp)
	lbu	a1, 2(a5)
	lw	t0, 328(a6)
	lw	t3, 320(sp)
	mul	a1, t0, a1
	add	a1, t3, a1
	sw	a1, 320(sp)
	lbu	a1, 3(a5)
	lw	t0, 332(a6)
	lw	t3, 324(sp)
	mul	a1, t0, a1
	add	a1, t3, a1
	sw	a1, 324(sp)
	lbu	a1, 4(a5)
	lw	t0, 336(a6)
	lw	t3, 328(sp)
	mul	a1, t0, a1
	add	a1, t3, a1
	sw	a1, 328(sp)
	lbu	a1, 5(a5)
	lw	t0, 340(a6)
	lw	t3, 332(sp)
	mul	a1, t0, a1
	add	a1, t3, a1
	sw	a1, 332(sp)
	lbu	a1, 6(a5)
	lw	t0, 344(a6)
	lw	t3, 336(sp)
	mul	a1, t0, a1
	add	a1, t3, a1
	sw	a1, 336(sp)
	lbu	a1, 7(a5)
	lw	t0, 348(a6)
	lw	t3, 340(sp)
	mul	a1, t0, a1
	add	a1, t3, a1
	sw	a1, 340(sp)
	add	a5, a5, s4
	lbu	a1, 0(a5)
	lw	t0, 352(a6)
	lw	t3, 344(sp)
	mul	a1, t0, a1
	add	a1, t3, a1
	sw	a1, 344(sp)
	lbu	a1, 1(a5)
	lw	t0, 356(a6)
	lw	t3, 348(sp)
	mul	a1, t0, a1
	add	a1, t3, a1
	sw	a1, 348(sp)
	lbu	a1, 2(a5)
	lw	t0, 360(a6)
	lw	t3, 352(sp)
	mul	a1, t0, a1
	add	a1, t3, a1
	sw	a1, 352(sp)
	lbu	a1, 3(a5)
	lw	t0, 364(a6)
	lw	t3, 356(sp)
	mul	a1, t0, a1
	add	a1, t3, a1
	sw	a1, 356(sp)
	lbu	a1, 4(a5)
	lw	t0, 368(a6)
	lw	t3, 360(sp)
	mul	a1, t0, a1
	add	a1, t3, a1
	sw	a1, 360(sp)
	lbu	a1, 5(a5)
	lw	t0, 372(a6)
	lw	t3, 364(sp)
	mul	a1, t0, a1
	add	a1, t3, a1
	sw	a1, 364(sp)
	lbu	a1, 6(a5)
	lw	t0, 376(a6)
	lw	t3, 368(sp)
	mul	a1, t0, a1
	add	a1, t3, a1
	sw	a1, 368(sp)
	lbu	a1, 7(a5)
	lw	a5, 380(a6)
	lw	t0, 372(sp)
	mul	a1, a5, a1
	add	a1, t0, a1
	sw	a1, 372(sp)
.LBB0_53:                               #   in Loop: Header=BB0_8 Depth=1
	srai	t5, a7, 1
	andi	t3, a7, 1
	srai	a7, t2, 1
	andi	a1, t2, 1
	add	a5, a7, ra
	mulw	a5, a5, s4
	add	a5, a0, a5
	or	t0, t3, a1
	add	a5, a5, t5
	beqz	t0, .LBB0_58
# %bb.54:                               #   in Loop: Header=BB0_8 Depth=1
	ld	s11, 176(sp)                    # 8-byte Folded Reload
	add	a7, s11, a7
	lui	s8, %hi(MV)
	addi	s8, s8, %lo(MV)
	li	s9, 360
	ld	s7, 224(sp)                     # 8-byte Folded Reload
	bnez	t3, .LBB0_78
# %bb.55:                               #   in Loop: Header=BB0_8 Depth=1
	beqz	a1, .LBB0_78
# %bb.56:                               #   in Loop: Header=BB0_8 Depth=1
	ld	a1, 136(sp)                     # 8-byte Folded Reload
	add	a5, a5, a1
	lbu	a1, 2(a5)
	lbu	s6, 3(a5)
	lbu	t3, 4(a5)
	lbu	s3, 5(a5)
	lbu	s1, 6(a5)
	ld	a5, 240(sp)                     # 8-byte Folded Reload
	add	t5, a5, t5
	add	a7, a7, s7
	mulw	a5, s4, a7
	ld	a7, 104(sp)                     # 8-byte Folded Reload
	add	t5, a7, t5
	add	a5, t5, a5
	addi	a7, a6, 640
	mv	t2, t1
.LBB0_57:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	s2, a5, s4
	lbu	t0, -7(a5)
	lbu	t5, -7(s2)
	add	t0, t0, t5
	lw	t5, 0(a7)
	lw	t6, 0(t2)
	addi	t0, t0, 1
	srli	t0, t0, 1
	mul	t0, t0, t5
	add	t0, t0, t6
	sw	t0, 0(t2)
	lbu	t0, -6(a5)
	lbu	t5, -6(s2)
	add	t0, t0, t5
	lw	t5, 4(a7)
	lw	t6, 4(t2)
	addi	t0, t0, 1
	srli	t0, t0, 1
	mul	t0, t0, t5
	add	t0, t0, t6
	sw	t0, 4(t2)
	lbu	t5, -5(s2)
	add	a1, a1, t5
	lw	t0, 8(a7)
	lw	t6, 8(t2)
	addi	a1, a1, 1
	srliw	a1, a1, 1
	mul	a1, a1, t0
	add	a1, a1, t6
	sw	a1, 8(t2)
	lbu	s0, -4(s2)
	add	s6, s6, s0
	lw	a1, 12(a7)
	lw	t0, 12(t2)
	addi	s6, s6, 1
	srliw	t6, s6, 1
	mul	a1, t6, a1
	add	a1, a1, t0
	sw	a1, 12(t2)
	lbu	a1, -3(s2)
	add	t3, t3, a1
	lw	t0, 16(a7)
	lw	t6, 16(t2)
	addi	t3, t3, 1
	srliw	t3, t3, 1
	mul	t0, t3, t0
	add	t0, t0, t6
	sw	t0, 16(t2)
	lbu	t0, -2(s2)
	add	s3, s3, t0
	lw	t3, 20(a7)
	lw	t6, 20(t2)
	addi	s3, s3, 1
	srliw	s3, s3, 1
	mul	t3, s3, t3
	add	t3, t3, t6
	sw	t3, 20(t2)
	lbu	t3, -1(s2)
	add	s1, s1, t3
	lw	t6, 24(a7)
	lw	s3, 24(t2)
	addi	s1, s1, 1
	srliw	s1, s1, 1
	mul	t6, s1, t6
	add	t6, t6, s3
	sw	t6, 24(t2)
	lbu	a5, 0(a5)
	lbu	t6, 0(s2)
	add	a5, a5, t6
	lw	t6, 28(a7)
	lw	s1, 28(t2)
	addi	a5, a5, 1
	srli	a5, a5, 1
	mul	a5, a5, t6
	add	a5, a5, s1
	sw	a5, 28(t2)
	addi	t2, t2, 32
	addi	a7, a7, 32
	mv	a5, s2
	mv	s1, t3
	mv	s3, t0
	mv	t3, a1
	mv	s6, s0
	mv	a1, t5
	bne	t2, t4, .LBB0_57
	j	.LBB0_59
.LBB0_58:                               #   in Loop: Header=BB0_8 Depth=1
	ld	a1, 136(sp)                     # 8-byte Folded Reload
	add	a1, a5, a1
	lbu	a5, 0(a1)
	lw	a7, 640(a6)
	lw	t0, 376(sp)
	mul	a5, a7, a5
	add	a5, t0, a5
	sw	a5, 376(sp)
	lbu	a5, 1(a1)
	lw	a7, 644(a6)
	lw	t0, 380(sp)
	mul	a5, a7, a5
	add	a5, t0, a5
	sw	a5, 380(sp)
	lbu	a5, 2(a1)
	lw	a7, 648(a6)
	lw	t0, 384(sp)
	mul	a5, a7, a5
	add	a5, t0, a5
	sw	a5, 384(sp)
	lbu	a5, 3(a1)
	lw	a7, 652(a6)
	lw	t0, 388(sp)
	mul	a5, a7, a5
	add	a5, t0, a5
	sw	a5, 388(sp)
	lbu	a5, 4(a1)
	lw	a7, 656(a6)
	lw	t0, 392(sp)
	mul	a5, a7, a5
	add	a5, t0, a5
	sw	a5, 392(sp)
	lbu	a5, 5(a1)
	lw	a7, 660(a6)
	lw	t0, 396(sp)
	mul	a5, a7, a5
	add	a5, t0, a5
	sw	a5, 396(sp)
	lbu	a5, 6(a1)
	lw	a7, 664(a6)
	lw	t0, 400(sp)
	mul	a5, a7, a5
	add	a5, t0, a5
	sw	a5, 400(sp)
	lbu	a5, 7(a1)
	lw	a7, 668(a6)
	lw	t0, 404(sp)
	mul	a5, a7, a5
	add	a5, t0, a5
	sw	a5, 404(sp)
	add	a1, a1, s4
	lbu	a5, 0(a1)
	lw	a7, 672(a6)
	lw	t0, 408(sp)
	mul	a5, a7, a5
	add	a5, t0, a5
	sw	a5, 408(sp)
	lbu	a5, 1(a1)
	lw	a7, 676(a6)
	lw	t0, 412(sp)
	mul	a5, a7, a5
	add	a5, t0, a5
	sw	a5, 412(sp)
	lbu	a5, 2(a1)
	lw	a7, 680(a6)
	lw	t0, 416(sp)
	mul	a5, a7, a5
	add	a5, t0, a5
	sw	a5, 416(sp)
	lbu	a5, 3(a1)
	lw	a7, 684(a6)
	lw	t0, 420(sp)
	mul	a5, a7, a5
	add	a5, t0, a5
	sw	a5, 420(sp)
	lbu	a5, 4(a1)
	lw	a7, 688(a6)
	lw	t0, 424(sp)
	mul	a5, a7, a5
	add	a5, t0, a5
	sw	a5, 424(sp)
	lbu	a5, 5(a1)
	lw	a7, 692(a6)
	lw	t0, 428(sp)
	mul	a5, a7, a5
	add	a5, t0, a5
	sw	a5, 428(sp)
	lbu	a5, 6(a1)
	lw	a7, 696(a6)
	lw	t0, 432(sp)
	mul	a5, a7, a5
	add	a5, t0, a5
	sw	a5, 432(sp)
	lbu	a5, 7(a1)
	lw	a7, 700(a6)
	lw	t0, 436(sp)
	mul	a5, a7, a5
	add	a5, t0, a5
	sw	a5, 436(sp)
	add	a1, a1, s4
	lbu	a5, 0(a1)
	lw	a7, 704(a6)
	lw	t0, 440(sp)
	mul	a5, a7, a5
	add	a5, t0, a5
	sw	a5, 440(sp)
	lbu	a5, 1(a1)
	lw	a7, 708(a6)
	lw	t0, 444(sp)
	mul	a5, a7, a5
	add	a5, t0, a5
	sw	a5, 444(sp)
	lbu	a5, 2(a1)
	lw	a7, 712(a6)
	lw	t0, 448(sp)
	mul	a5, a7, a5
	add	a5, t0, a5
	sw	a5, 448(sp)
	lbu	a5, 3(a1)
	lw	a7, 716(a6)
	lw	t0, 452(sp)
	mul	a5, a7, a5
	add	a5, t0, a5
	sw	a5, 452(sp)
	lbu	a5, 4(a1)
	lw	a7, 720(a6)
	lw	t0, 456(sp)
	mul	a5, a7, a5
	add	a5, t0, a5
	sw	a5, 456(sp)
	lbu	a5, 5(a1)
	lw	a7, 724(a6)
	lw	t0, 460(sp)
	mul	a5, a7, a5
	add	a5, t0, a5
	sw	a5, 460(sp)
	lbu	a5, 6(a1)
	lw	a7, 728(a6)
	lw	t0, 464(sp)
	mul	a5, a7, a5
	add	a5, t0, a5
	sw	a5, 464(sp)
	lbu	a5, 7(a1)
	lw	a7, 732(a6)
	lw	t0, 468(sp)
	mul	a5, a7, a5
	add	a5, t0, a5
	sw	a5, 468(sp)
	add	a1, a1, s4
	lbu	a5, 0(a1)
	lw	a7, 736(a6)
	lw	t0, 472(sp)
	mul	a5, a7, a5
	add	a5, t0, a5
	sw	a5, 472(sp)
	lbu	a5, 1(a1)
	lw	a7, 740(a6)
	lw	t0, 476(sp)
	mul	a5, a7, a5
	add	a5, t0, a5
	sw	a5, 476(sp)
	lbu	a5, 2(a1)
	lw	a7, 744(a6)
	lw	t0, 480(sp)
	mul	a5, a7, a5
	add	a5, t0, a5
	sw	a5, 480(sp)
	lbu	a5, 3(a1)
	lw	a7, 748(a6)
	lw	t0, 484(sp)
	mul	a5, a7, a5
	add	a5, t0, a5
	sw	a5, 484(sp)
	lbu	a5, 4(a1)
	lw	a7, 752(a6)
	lw	t0, 488(sp)
	mul	a5, a7, a5
	add	a5, t0, a5
	sw	a5, 488(sp)
	lbu	a5, 5(a1)
	lw	a7, 756(a6)
	lw	t0, 492(sp)
	mul	a5, a7, a5
	add	a5, t0, a5
	sw	a5, 492(sp)
	lbu	a5, 6(a1)
	lw	a7, 760(a6)
	lw	t0, 496(sp)
	mul	a5, a7, a5
	add	a5, t0, a5
	sw	a5, 496(sp)
	lbu	a1, 7(a1)
	lw	a5, 764(a6)
	lw	a7, 500(sp)
	mul	a1, a5, a1
	add	a1, a7, a1
	sw	a1, 500(sp)
	ld	s11, 176(sp)                    # 8-byte Folded Reload
	lui	s8, %hi(MV)
	addi	s8, s8, %lo(MV)
	li	s9, 360
	ld	s7, 224(sp)                     # 8-byte Folded Reload
.LBB0_59:                               #   in Loop: Header=BB0_8 Depth=1
	ld	t6, 192(sp)                     # 8-byte Folded Reload
	srai	a7, t6, 1
	andi	t6, t6, 1
	ld	a1, 184(sp)                     # 8-byte Folded Reload
	srai	t2, a1, 1
	andi	a1, a1, 1
	add	a5, t2, ra
	mulw	a5, a5, s4
	add	a5, a0, a5
	or	t0, t6, a1
	add	a5, a5, a7
	beqz	t0, .LBB0_64
# %bb.60:                               #   in Loop: Header=BB0_8 Depth=1
	add	t0, s11, t2
	bnez	t6, .LBB0_82
# %bb.61:                               #   in Loop: Header=BB0_8 Depth=1
	beqz	a1, .LBB0_82
# %bb.62:                               #   in Loop: Header=BB0_8 Depth=1
	lbu	t6, 4(a5)
	lbu	t5, 5(a5)
	lbu	t3, 6(a5)
	lbu	t2, 7(a5)
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	add	a7, a1, a7
	add	t0, t0, s7
	mulw	a5, s4, t0
	ld	a1, 96(sp)                      # 8-byte Folded Reload
	add	a7, a1, a7
	add	a5, a7, a5
	addi	a7, a6, 796
	addi	t0, sp, 276
.LBB0_63:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	a1, -3(a5)
	add	t6, t6, a1
	lw	s0, -12(a7)
	lw	s1, -12(t0)
	addi	t6, t6, 1
	srliw	t6, t6, 1
	mul	t6, t6, s0
	add	t6, t6, s1
	sw	t6, -12(t0)
	lbu	t6, -2(a5)
	add	t5, t5, t6
	lw	s0, -8(a7)
	lw	s1, -8(t0)
	addi	t5, t5, 1
	srliw	t5, t5, 1
	mul	t5, t5, s0
	add	t5, t5, s1
	sw	t5, -8(t0)
	lbu	t5, -1(a5)
	add	t3, t3, t5
	lw	s0, -4(a7)
	lw	s1, -4(t0)
	addi	t3, t3, 1
	srliw	t3, t3, 1
	mul	t3, t3, s0
	add	t3, t3, s1
	sw	t3, -4(t0)
	lbu	t3, 0(a5)
	add	t2, t2, t3
	lw	s0, 0(a7)
	lw	s1, 0(t0)
	addi	t2, t2, 1
	srliw	t2, t2, 1
	mul	t2, t2, s0
	add	t2, t2, s1
	sw	t2, 0(t0)
	addi	t0, t0, 32
	addi	a7, a7, 32
	add	a5, a5, s4
	mv	t2, t3
	mv	t3, t5
	mv	t5, t6
	mv	t6, a1
	bne	t0, s10, .LBB0_63
	j	.LBB0_65
.LBB0_64:                               #   in Loop: Header=BB0_8 Depth=1
	lbu	a1, 4(a5)
	lw	a7, 784(a6)
	lw	t0, 264(sp)
	mul	a1, a7, a1
	add	a1, t0, a1
	sw	a1, 264(sp)
	lbu	a1, 5(a5)
	lw	a7, 788(a6)
	lw	t0, 268(sp)
	mul	a1, a7, a1
	add	a1, t0, a1
	sw	a1, 268(sp)
	lbu	a1, 6(a5)
	lw	a7, 792(a6)
	lw	t0, 272(sp)
	mul	a1, a7, a1
	add	a1, t0, a1
	sw	a1, 272(sp)
	lbu	a1, 7(a5)
	lw	a7, 796(a6)
	lw	t0, 276(sp)
	mul	a1, a7, a1
	add	a1, t0, a1
	sw	a1, 276(sp)
	add	a5, a5, s4
	lbu	a1, 4(a5)
	lw	a7, 816(a6)
	lw	t0, 296(sp)
	mul	a1, a7, a1
	add	a1, t0, a1
	sw	a1, 296(sp)
	lbu	a1, 5(a5)
	lw	a7, 820(a6)
	lw	t0, 300(sp)
	mul	a1, a7, a1
	add	a1, t0, a1
	sw	a1, 300(sp)
	lbu	a1, 6(a5)
	lw	a7, 824(a6)
	lw	t0, 304(sp)
	mul	a1, a7, a1
	add	a1, t0, a1
	sw	a1, 304(sp)
	lbu	a1, 7(a5)
	lw	a7, 828(a6)
	lw	t0, 308(sp)
	mul	a1, a7, a1
	add	a1, t0, a1
	sw	a1, 308(sp)
	add	a5, a5, s4
	lbu	a1, 4(a5)
	lw	a7, 848(a6)
	lw	t0, 328(sp)
	mul	a1, a7, a1
	add	a1, t0, a1
	sw	a1, 328(sp)
	lbu	a1, 5(a5)
	lw	a7, 852(a6)
	lw	t0, 332(sp)
	mul	a1, a7, a1
	add	a1, t0, a1
	sw	a1, 332(sp)
	lbu	a1, 6(a5)
	lw	a7, 856(a6)
	lw	t0, 336(sp)
	mul	a1, a7, a1
	add	a1, t0, a1
	sw	a1, 336(sp)
	lbu	a1, 7(a5)
	lw	a7, 860(a6)
	lw	t0, 340(sp)
	mul	a1, a7, a1
	add	a1, t0, a1
	sw	a1, 340(sp)
	add	a5, a5, s4
	lbu	a1, 4(a5)
	lw	a7, 880(a6)
	lw	t0, 360(sp)
	mul	a1, a7, a1
	add	a1, t0, a1
	sw	a1, 360(sp)
	lbu	a1, 5(a5)
	lw	a7, 884(a6)
	lw	t0, 364(sp)
	mul	a1, a7, a1
	add	a1, t0, a1
	sw	a1, 364(sp)
	lbu	a1, 6(a5)
	lw	a7, 888(a6)
	lw	t0, 368(sp)
	mul	a1, a7, a1
	add	a1, t0, a1
	sw	a1, 368(sp)
	lbu	a1, 7(a5)
	lw	a7, 892(a6)
	lw	t0, 372(sp)
	mul	a1, a7, a1
	add	a1, t0, a1
	sw	a1, 372(sp)
	add	a5, a5, s4
	lbu	a1, 4(a5)
	lw	a7, 912(a6)
	lw	t0, 392(sp)
	mul	a1, a7, a1
	add	a1, t0, a1
	sw	a1, 392(sp)
	lbu	a1, 5(a5)
	lw	a7, 916(a6)
	lw	t0, 396(sp)
	mul	a1, a7, a1
	add	a1, t0, a1
	sw	a1, 396(sp)
	lbu	a1, 6(a5)
	lw	a7, 920(a6)
	lw	t0, 400(sp)
	mul	a1, a7, a1
	add	a1, t0, a1
	sw	a1, 400(sp)
	lbu	a1, 7(a5)
	lw	a7, 924(a6)
	lw	t0, 404(sp)
	mul	a1, a7, a1
	add	a1, t0, a1
	sw	a1, 404(sp)
	add	a5, a5, s4
	lbu	a1, 4(a5)
	lw	a7, 944(a6)
	lw	t0, 424(sp)
	mul	a1, a7, a1
	add	a1, t0, a1
	sw	a1, 424(sp)
	lbu	a1, 5(a5)
	lw	a7, 948(a6)
	lw	t0, 428(sp)
	mul	a1, a7, a1
	add	a1, t0, a1
	sw	a1, 428(sp)
	lbu	a1, 6(a5)
	lw	a7, 952(a6)
	lw	t0, 432(sp)
	mul	a1, a7, a1
	add	a1, t0, a1
	sw	a1, 432(sp)
	lbu	a1, 7(a5)
	lw	a7, 956(a6)
	lw	t0, 436(sp)
	mul	a1, a7, a1
	add	a1, t0, a1
	sw	a1, 436(sp)
	add	a5, a5, s4
	lbu	a1, 4(a5)
	lw	a7, 976(a6)
	lw	t0, 456(sp)
	mul	a1, a7, a1
	add	a1, t0, a1
	sw	a1, 456(sp)
	lbu	a1, 5(a5)
	lw	a7, 980(a6)
	lw	t0, 460(sp)
	mul	a1, a7, a1
	add	a1, t0, a1
	sw	a1, 460(sp)
	lbu	a1, 6(a5)
	lw	a7, 984(a6)
	lw	t0, 464(sp)
	mul	a1, a7, a1
	add	a1, t0, a1
	sw	a1, 464(sp)
	lbu	a1, 7(a5)
	lw	a7, 988(a6)
	lw	t0, 468(sp)
	mul	a1, a7, a1
	add	a1, t0, a1
	sw	a1, 468(sp)
	add	a5, a5, s4
	lbu	a1, 4(a5)
	lw	a7, 1008(a6)
	lw	t0, 488(sp)
	mul	a1, a7, a1
	add	a1, t0, a1
	sw	a1, 488(sp)
	lbu	a1, 5(a5)
	lw	a7, 1012(a6)
	lw	t0, 492(sp)
	mul	a1, a7, a1
	add	a1, t0, a1
	sw	a1, 492(sp)
	lbu	a1, 6(a5)
	lw	a7, 1016(a6)
	lw	t0, 496(sp)
	mul	a1, a7, a1
	add	a1, t0, a1
	sw	a1, 496(sp)
	lbu	a1, 7(a5)
	lw	a5, 1020(a6)
	lw	a7, 500(sp)
	mul	a1, a5, a1
	add	a1, a7, a1
	sw	a1, 500(sp)
.LBB0_65:                               #   in Loop: Header=BB0_8 Depth=1
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	srai	a5, a1, 1
	andi	t0, a1, 1
	ld	a1, 200(sp)                     # 8-byte Folded Reload
	srai	a7, a1, 1
	andi	a1, a1, 1
	add	t2, a7, ra
	mulw	t2, t2, s4
	add	a0, a0, t2
	or	t2, t0, a1
	add	a0, a0, a5
	bnez	t2, .LBB0_66
	j	.LBB0_6
.LBB0_66:                               #   in Loop: Header=BB0_8 Depth=1
	add	a7, s11, a7
	bnez	t0, .LBB0_86
# %bb.67:                               #   in Loop: Header=BB0_8 Depth=1
	beqz	a1, .LBB0_86
# %bb.68:                               #   in Loop: Header=BB0_8 Depth=1
	lbu	t3, 0(a0)
	lbu	t2, 1(a0)
	lbu	a1, 2(a0)
	lbu	t0, 3(a0)
	ld	a0, 240(sp)                     # 8-byte Folded Reload
	add	a5, a0, a5
	add	a7, a7, s7
	mulw	a0, s4, a7
	ld	a7, 88(sp)                      # 8-byte Folded Reload
	add	a5, a7, a5
	add	a0, a5, a0
	addi	a5, a6, 1024
	addi	a7, sp, 248
.LBB0_69:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	t5, -3(a0)
	add	t3, t3, t5
	lw	t6, 0(a5)
	lw	s0, 0(a7)
	addi	t3, t3, 1
	srliw	t3, t3, 1
	mul	t3, t3, t6
	add	t3, t3, s0
	sw	t3, 0(a7)
	lbu	t3, -2(a0)
	add	t2, t2, t3
	lw	t6, 4(a5)
	lw	s0, 4(a7)
	addi	t2, t2, 1
	srliw	t2, t2, 1
	mul	t2, t2, t6
	add	t2, t2, s0
	sw	t2, 4(a7)
	lbu	t2, -1(a0)
	add	a1, a1, t2
	lw	t6, 8(a5)
	lw	s0, 8(a7)
	addi	a1, a1, 1
	srliw	a1, a1, 1
	mul	a1, a1, t6
	add	a1, a1, s0
	sw	a1, 8(a7)
	lbu	a1, 0(a0)
	add	t0, t0, a1
	lw	t6, 12(a5)
	lw	s0, 12(a7)
	addi	t0, t0, 1
	srliw	t0, t0, 1
	mul	t0, t0, t6
	add	t0, t0, s0
	sw	t0, 12(a7)
	addi	a7, a7, 32
	addi	a5, a5, 32
	add	a0, a0, s4
	mv	t0, a1
	mv	a1, t2
	mv	t2, t3
	mv	t3, t5
	bne	a7, t4, .LBB0_69
	j	.LBB0_7
.LBB0_70:                               #   in Loop: Header=BB0_8 Depth=1
	beqz	t3, .LBB0_90
# %bb.71:                               #   in Loop: Header=BB0_8 Depth=1
	bnez	a1, .LBB0_90
# %bb.72:                               # %.preheader17
                                        #   in Loop: Header=BB0_8 Depth=1
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	add	s1, a1, s1
	add	s2, s2, t0
	mulw	a5, s4, s2
	ld	a1, 112(sp)                     # 8-byte Folded Reload
	add	s1, a1, s1
	add	a5, s1, a5
	addi	s1, sp, 248
	mv	s2, a6
.LBB0_73:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	a1, -3(a5)
	lbu	t0, -4(a5)
	lw	t3, 0(s2)
	addi	a1, a1, 1
	add	t0, a1, t0
	srli	t0, t0, 1
	mul	t0, t0, t3
	sw	t0, 0(s1)
	lbu	t0, -2(a5)
	lw	t3, 4(s2)
	add	a1, a1, t0
	srli	a1, a1, 1
	mul	a1, a1, t3
	sw	a1, 4(s1)
	lbu	a1, -1(a5)
	lw	t3, 8(s2)
	add	t0, t0, a1
	addi	t0, t0, 1
	srli	t0, t0, 1
	mul	t0, t0, t3
	sw	t0, 8(s1)
	lbu	t0, 0(a5)
	lw	t3, 12(s2)
	add	a1, a1, t0
	addi	a1, a1, 1
	srli	a1, a1, 1
	mul	a1, a1, t3
	sw	a1, 12(s1)
	lbu	a1, 1(a5)
	lw	t3, 16(s2)
	add	t0, t0, a1
	addi	t0, t0, 1
	srli	t0, t0, 1
	mul	t0, t0, t3
	sw	t0, 16(s1)
	lbu	t0, 2(a5)
	lw	t3, 20(s2)
	add	a1, a1, t0
	addi	a1, a1, 1
	srli	a1, a1, 1
	mul	a1, a1, t3
	sw	a1, 20(s1)
	lbu	a1, 3(a5)
	lw	t3, 24(s2)
	add	t0, t0, a1
	addi	t0, t0, 1
	srli	t0, t0, 1
	mul	t0, t0, t3
	sw	t0, 24(s1)
	lbu	t0, 4(a5)
	lw	t3, 28(s2)
	add	a1, a1, t0
	addi	a1, a1, 1
	srli	a1, a1, 1
	mul	a1, a1, t3
	sw	a1, 28(s1)
	addi	s1, s1, 32
	addi	s2, s2, 32
	add	a5, a5, s4
	bne	s1, t4, .LBB0_73
	j	.LBB0_47
.LBB0_74:                               #   in Loop: Header=BB0_8 Depth=1
	ld	t0, 224(sp)                     # 8-byte Folded Reload
	beqz	t3, .LBB0_92
# %bb.75:                               #   in Loop: Header=BB0_8 Depth=1
	bnez	a1, .LBB0_92
# %bb.76:                               # %.preheader13
                                        #   in Loop: Header=BB0_8 Depth=1
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	add	t5, a1, t5
	add	s0, s0, t0
	mulw	a5, s4, s0
	ld	a1, 112(sp)                     # 8-byte Folded Reload
	add	t5, a1, t5
	add	a5, t5, a5
	addi	s1, a6, 284
	addi	s3, sp, 248
.LBB0_77:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	a1, -3(a5)
	lbu	t0, -4(a5)
	addi	a1, a1, 1
	lw	t3, -28(s1)
	lw	t5, 0(s3)
	add	t0, a1, t0
	srli	t0, t0, 1
	mul	t0, t0, t3
	add	t0, t0, t5
	sw	t0, 0(s3)
	lbu	t0, -2(a5)
	lw	t3, -24(s1)
	lw	t5, 4(s3)
	add	a1, a1, t0
	srli	a1, a1, 1
	mul	a1, a1, t3
	add	a1, a1, t5
	sw	a1, 4(s3)
	lbu	a1, -1(a5)
	add	t0, t0, a1
	lw	t3, -20(s1)
	lw	t5, 8(s3)
	addi	t0, t0, 1
	srli	t0, t0, 1
	mul	t0, t0, t3
	add	t0, t0, t5
	sw	t0, 8(s3)
	lbu	t0, 0(a5)
	add	a1, a1, t0
	lw	t3, -16(s1)
	lw	t5, 12(s3)
	addi	a1, a1, 1
	srli	a1, a1, 1
	mul	a1, a1, t3
	add	a1, a1, t5
	sw	a1, 12(s3)
	lbu	a1, 1(a5)
	add	t0, t0, a1
	lw	t3, -12(s1)
	lw	t5, 16(s3)
	addi	t0, t0, 1
	srli	t0, t0, 1
	mul	t0, t0, t3
	add	t0, t0, t5
	sw	t0, 16(s3)
	lbu	t0, 2(a5)
	add	a1, a1, t0
	lw	t3, -8(s1)
	lw	t5, 20(s3)
	addi	a1, a1, 1
	srli	a1, a1, 1
	mul	a1, a1, t3
	add	a1, a1, t5
	sw	a1, 20(s3)
	lbu	a1, 3(a5)
	add	t0, t0, a1
	lw	t3, -4(s1)
	lw	t5, 24(s3)
	addi	t0, t0, 1
	srli	t0, t0, 1
	mul	t0, t0, t3
	add	t0, t0, t5
	sw	t0, 24(s3)
	lbu	t0, 4(a5)
	add	a1, a1, t0
	lw	t0, 0(s1)
	lw	t3, 28(s3)
	addi	a1, a1, 1
	srli	a1, a1, 1
	mul	a1, a1, t0
	add	a1, a1, t3
	sw	a1, 28(s3)
	addi	s3, s3, 32
	add	a5, a5, s4
	addi	s1, s1, 32
	bne	s3, t1, .LBB0_77
	j	.LBB0_53
.LBB0_78:                               #   in Loop: Header=BB0_8 Depth=1
	beqz	t3, .LBB0_94
# %bb.79:                               #   in Loop: Header=BB0_8 Depth=1
	bnez	a1, .LBB0_94
# %bb.80:                               # %.preheader9
                                        #   in Loop: Header=BB0_8 Depth=1
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	add	t5, a1, t5
	add	a7, a7, s7
	mulw	a5, s4, a7
	ld	a1, 80(sp)                      # 8-byte Folded Reload
	add	t5, a1, t5
	add	a5, t5, a5
	addi	a7, a6, 668
	mv	t2, t1
.LBB0_81:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	a1, -3(a5)
	lbu	t0, -4(a5)
	addi	a1, a1, 1
	lw	t3, -28(a7)
	lw	t5, 0(t2)
	add	t0, a1, t0
	srli	t0, t0, 1
	mul	t0, t0, t3
	add	t0, t0, t5
	sw	t0, 0(t2)
	lbu	t0, -2(a5)
	lw	t3, -24(a7)
	lw	t5, 4(t2)
	add	a1, a1, t0
	srli	a1, a1, 1
	mul	a1, a1, t3
	add	a1, a1, t5
	sw	a1, 4(t2)
	lbu	a1, -1(a5)
	add	t0, t0, a1
	lw	t3, -20(a7)
	lw	t5, 8(t2)
	addi	t0, t0, 1
	srli	t0, t0, 1
	mul	t0, t0, t3
	add	t0, t0, t5
	sw	t0, 8(t2)
	lbu	t0, 0(a5)
	add	a1, a1, t0
	lw	t3, -16(a7)
	lw	t5, 12(t2)
	addi	a1, a1, 1
	srli	a1, a1, 1
	mul	a1, a1, t3
	add	a1, a1, t5
	sw	a1, 12(t2)
	lbu	a1, 1(a5)
	add	t0, t0, a1
	lw	t3, -12(a7)
	lw	t5, 16(t2)
	addi	t0, t0, 1
	srli	t0, t0, 1
	mul	t0, t0, t3
	add	t0, t0, t5
	sw	t0, 16(t2)
	lbu	t0, 2(a5)
	add	a1, a1, t0
	lw	t3, -8(a7)
	lw	t5, 20(t2)
	addi	a1, a1, 1
	srli	a1, a1, 1
	mul	a1, a1, t3
	add	a1, a1, t5
	sw	a1, 20(t2)
	lbu	a1, 3(a5)
	add	t0, t0, a1
	lw	t3, -4(a7)
	lw	t5, 24(t2)
	addi	t0, t0, 1
	srli	t0, t0, 1
	mul	t0, t0, t3
	add	t0, t0, t5
	sw	t0, 24(t2)
	lbu	t0, 4(a5)
	add	a1, a1, t0
	lw	t0, 0(a7)
	lw	t3, 28(t2)
	addi	a1, a1, 1
	srli	a1, a1, 1
	mul	a1, a1, t0
	add	a1, a1, t3
	sw	a1, 28(t2)
	addi	t2, t2, 32
	add	a5, a5, s4
	addi	a7, a7, 32
	bne	t2, t4, .LBB0_81
	j	.LBB0_59
.LBB0_82:                               #   in Loop: Header=BB0_8 Depth=1
	beqz	t6, .LBB0_96
# %bb.83:                               #   in Loop: Header=BB0_8 Depth=1
	bnez	a1, .LBB0_96
# %bb.84:                               # %.preheader5
                                        #   in Loop: Header=BB0_8 Depth=1
	addi	a5, a6, 796
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	add	a7, a1, a7
	add	t0, t0, s7
	mulw	a1, s4, t0
	ld	t0, 120(sp)                     # 8-byte Folded Reload
	add	a7, t0, a7
	add	a7, a7, a1
	addi	a1, sp, 276
.LBB0_85:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	t0, -3(a7)
	lbu	t2, -4(a7)
	addi	t0, t0, 1
	lw	t3, -12(a5)
	lw	t5, -12(a1)
	add	t2, t0, t2
	srli	t2, t2, 1
	mul	t2, t2, t3
	add	t2, t2, t5
	sw	t2, -12(a1)
	lbu	t2, -2(a7)
	lw	t3, -8(a5)
	lw	t5, -8(a1)
	add	t0, t0, t2
	srli	t0, t0, 1
	mul	t0, t0, t3
	add	t0, t0, t5
	sw	t0, -8(a1)
	lbu	t0, -1(a7)
	add	t2, t2, t0
	lw	t3, -4(a5)
	lw	t5, -4(a1)
	addi	t2, t2, 1
	srli	t2, t2, 1
	mul	t2, t2, t3
	add	t2, t2, t5
	sw	t2, -4(a1)
	lbu	t2, 0(a7)
	add	t0, t0, t2
	lw	t2, 0(a5)
	lw	t3, 0(a1)
	addi	t0, t0, 1
	srli	t0, t0, 1
	mul	t0, t0, t2
	add	t0, t0, t3
	sw	t0, 0(a1)
	addi	a1, a1, 32
	add	a7, a7, s4
	addi	a5, a5, 32
	bne	a1, s10, .LBB0_85
	j	.LBB0_65
.LBB0_86:                               #   in Loop: Header=BB0_8 Depth=1
	beqz	t0, .LBB0_98
# %bb.87:                               #   in Loop: Header=BB0_8 Depth=1
	bnez	a1, .LBB0_98
# %bb.88:                               # %.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	ld	a0, 240(sp)                     # 8-byte Folded Reload
	add	a5, a0, a5
	add	a7, a7, s7
	mulw	a0, s4, a7
	ld	a1, 56(sp)                      # 8-byte Folded Reload
	add	a5, a1, a5
	add	a0, a5, a0
	addi	a5, a6, 1036
	addi	a7, sp, 248
.LBB0_89:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	a1, -1(a0)
	lbu	t0, -2(a0)
	addi	a1, a1, 1
	lw	t2, -12(a5)
	lw	t3, 0(a7)
	add	t0, a1, t0
	srli	t0, t0, 1
	mul	t0, t0, t2
	add	t0, t0, t3
	sw	t0, 0(a7)
	lbu	t0, 0(a0)
	lw	t2, -8(a5)
	lw	t3, 4(a7)
	add	a1, a1, t0
	srli	a1, a1, 1
	mul	a1, a1, t2
	add	a1, a1, t3
	sw	a1, 4(a7)
	lbu	a1, 1(a0)
	add	t0, t0, a1
	lw	t2, -4(a5)
	lw	t3, 8(a7)
	addi	t0, t0, 1
	srli	t0, t0, 1
	mul	t0, t0, t2
	add	t0, t0, t3
	sw	t0, 8(a7)
	lbu	t0, 2(a0)
	add	a1, a1, t0
	lw	t0, 0(a5)
	lw	t2, 12(a7)
	addi	a1, a1, 1
	srli	a1, a1, 1
	mul	a1, a1, t0
	add	a1, a1, t2
	sw	a1, 12(a7)
	addi	a7, a7, 32
	add	a0, a0, s4
	addi	a5, a5, 32
	bne	a7, t4, .LBB0_89
	j	.LBB0_7
.LBB0_90:                               #   in Loop: Header=BB0_8 Depth=1
	lbu	t3, 4(a5)
	lbu	t5, 5(a5)
	lbu	s11, 6(a5)
	lbu	s8, 3(a5)
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	add	s1, a1, s1
	add	s2, s2, t0
	mulw	s2, s4, s2
	ld	a1, 120(sp)                     # 8-byte Folded Reload
	add	s1, a1, s1
	add	s2, s1, s2
	addi	s7, sp, 248
	mv	s1, a6
.LBB0_91:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	a5, s2, s4
	lbu	a1, -7(s2)
	lbu	t0, -8(s2)
	lbu	t6, -8(a5)
	lbu	s0, -7(a5)
	addi	a1, a1, 2
	add	t0, a1, t0
	lw	s6, 0(s1)
	add	t6, t6, s0
	add	t0, t0, t6
	srli	t0, t0, 2
	mul	t0, t0, s6
	sw	t0, 0(s7)
	lbu	t0, -6(s2)
	lbu	t6, -6(a5)
	add	a1, a1, s0
	lw	s0, 4(s1)
	add	s6, t0, t6
	add	a1, a1, s6
	srli	a1, a1, 2
	mul	a1, a1, s0
	sw	a1, 4(s7)
	addi	a1, s8, 2
	lbu	s8, -5(a5)
	add	t0, a1, t0
	lw	s0, 8(s1)
	add	t0, t0, t6
	add	t0, t0, s8
	srliw	t0, t0, 2
	mul	t0, t0, s0
	sw	t0, 8(s7)
	lbu	s0, -4(a5)
	add	a1, a1, t3
	lw	t0, 12(s1)
	add	a1, a1, s8
	add	a1, a1, s0
	srliw	a1, a1, 2
	mul	a1, a1, t0
	sw	a1, 12(s7)
	addi	t5, t5, 2
	lbu	a1, -3(a5)
	add	t3, t5, t3
	lw	t0, 16(s1)
	add	t3, t3, s0
	add	t3, t3, a1
	srliw	t3, t3, 2
	mul	t0, t3, t0
	sw	t0, 16(s7)
	lbu	t0, -2(a5)
	add	t5, t5, s11
	lw	t3, 20(s1)
	add	t5, t5, a1
	add	t5, t5, t0
	srliw	t5, t5, 2
	mul	t3, t5, t3
	sw	t3, 20(s7)
	lbu	t3, -2(s2)
	lbu	t5, -1(s2)
	lbu	t6, -1(a5)
	add	t3, t0, t3
	add	t5, t5, t6
	lw	t6, 24(s1)
	add	t3, t3, t5
	addi	t3, t3, 2
	srli	t3, t3, 2
	mul	t3, t3, t6
	sw	t3, 24(s7)
	lbu	t3, 0(s2)
	lbu	t6, 0(a5)
	add	t3, t3, t6
	lw	t6, 28(s1)
	add	t3, t5, t3
	addi	t3, t3, 2
	srli	t3, t3, 2
	mul	t3, t3, t6
	sw	t3, 28(s7)
	addi	s7, s7, 32
	addi	s1, s1, 32
	mv	s2, a5
	mv	s11, t0
	mv	t5, a1
	mv	t3, s0
	bne	s7, t4, .LBB0_91
	j	.LBB0_47
.LBB0_92:                               #   in Loop: Header=BB0_8 Depth=1
	lbu	s2, 4(a5)
	lbu	s11, 5(a5)
	lbu	a5, 6(a5)
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	add	t5, a1, t5
	add	s0, s0, t0
	mulw	s1, s4, s0
	ld	a1, 120(sp)                     # 8-byte Folded Reload
	add	t5, a1, t5
	add	s1, t5, s1
	addi	s3, a6, 256
	addi	s7, sp, 248
.LBB0_93:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	s9, s1, s4
	lbu	a1, -8(s1)
	lbu	t0, -7(s1)
	lbu	t3, -8(s9)
	lbu	t5, -7(s9)
	addi	t0, t0, 2
	add	a1, t0, a1
	add	t3, t3, t5
	lw	t6, 0(s3)
	lw	s0, 0(s7)
	add	a1, a1, t3
	srli	a1, a1, 2
	mul	a1, a1, t6
	add	a1, a1, s0
	sw	a1, 0(s7)
	lbu	a1, -6(s1)
	lbu	t3, -6(s9)
	add	t0, t0, t5
	add	a1, a1, t3
	lw	t3, 4(s3)
	lw	t5, 4(s7)
	add	t0, a1, t0
	srli	t0, t0, 2
	mul	t0, t0, t3
	add	t0, t0, t5
	sw	t0, 4(s7)
	lbu	t0, -5(s1)
	lbu	t5, -5(s9)
	add	t3, t0, t5
	add	a1, a1, t3
	lw	t3, 8(s3)
	lw	t6, 8(s7)
	addi	a1, a1, 2
	srli	a1, a1, 2
	mul	a1, a1, t3
	add	a1, a1, t6
	sw	a1, 8(s7)
	add	t0, s2, t0
	lbu	t3, -4(s9)
	addi	a1, s11, 2
	add	s2, a1, s2
	add	t0, t0, t5
	add	t0, t0, t3
	lw	t5, 12(s3)
	lw	t6, 12(s7)
	addi	t0, t0, 2
	srliw	t0, t0, 2
	mul	t0, t0, t5
	add	t0, t0, t6
	sw	t0, 12(s7)
	lbu	s11, -3(s9)
	add	s2, s2, t3
	lw	t0, 16(s3)
	lw	t5, 16(s7)
	add	s2, s2, s11
	srliw	t6, s2, 2
	mul	t0, t6, t0
	add	t0, t0, t5
	sw	t0, 16(s7)
	add	a1, a1, a5
	lbu	a5, -2(s9)
	add	a1, a1, s11
	lw	t0, 20(s3)
	lw	t5, 20(s7)
	add	a1, a1, a5
	srliw	a1, a1, 2
	mul	a1, a1, t0
	add	a1, a1, t5
	sw	a1, 20(s7)
	lbu	a1, -2(s1)
	lbu	t0, -1(s1)
	lbu	t5, -1(s9)
	add	a1, a5, a1
	add	t0, t0, t5
	add	a1, a1, t0
	lw	t5, 24(s3)
	lw	t6, 24(s7)
	addi	a1, a1, 2
	srli	a1, a1, 2
	mul	a1, a1, t5
	add	a1, a1, t6
	sw	a1, 24(s7)
	lbu	a1, 0(s1)
	lbu	t5, 0(s9)
	add	a1, a1, t5
	add	a1, t0, a1
	lw	t0, 28(s3)
	lw	t5, 28(s7)
	addi	a1, a1, 2
	srli	a1, a1, 2
	mul	a1, a1, t0
	add	a1, a1, t5
	sw	a1, 28(s7)
	addi	s7, s7, 32
	addi	s3, s3, 32
	mv	s1, s9
	mv	s2, t3
	bne	s7, t1, .LBB0_93
	j	.LBB0_53
.LBB0_94:                               #   in Loop: Header=BB0_8 Depth=1
	ld	a1, 136(sp)                     # 8-byte Folded Reload
	add	a5, a5, a1
	lbu	s2, 4(a5)
	lbu	t3, 5(a5)
	lbu	a5, 6(a5)
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	add	t5, a1, t5
	add	a7, a7, s7
	mulw	s3, s4, a7
	ld	a1, 72(sp)                      # 8-byte Folded Reload
	add	t5, a1, t5
	add	s3, t5, s3
	addi	a7, a6, 640
	mv	t2, t1
.LBB0_95:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	s1, s3, s4
	lbu	a1, -8(s3)
	lbu	t0, -7(s3)
	lbu	t5, -8(s1)
	lbu	t6, -7(s1)
	addi	t0, t0, 2
	add	a1, t0, a1
	add	t5, t5, t6
	lw	s0, 0(a7)
	lw	s6, 0(t2)
	add	a1, a1, t5
	srli	a1, a1, 2
	mul	a1, a1, s0
	add	a1, a1, s6
	sw	a1, 0(t2)
	lbu	a1, -6(s3)
	lbu	t5, -6(s1)
	add	t0, t0, t6
	add	a1, a1, t5
	lw	t5, 4(a7)
	lw	t6, 4(t2)
	add	t0, a1, t0
	srli	t0, t0, 2
	mul	t0, t0, t5
	add	t0, t0, t6
	sw	t0, 4(t2)
	lbu	t0, -5(s3)
	lbu	t6, -5(s1)
	add	t5, t0, t6
	add	a1, a1, t5
	lw	t5, 8(a7)
	lw	s0, 8(t2)
	addi	a1, a1, 2
	srli	a1, a1, 2
	mul	a1, a1, t5
	add	a1, a1, s0
	sw	a1, 8(t2)
	add	t0, s2, t0
	lbu	t5, -4(s1)
	addi	a1, t3, 2
	add	s2, a1, s2
	add	t0, t0, t6
	add	t0, t0, t5
	lw	t3, 12(a7)
	lw	t6, 12(t2)
	addi	t0, t0, 2
	srliw	t0, t0, 2
	mul	t0, t0, t3
	add	t0, t0, t6
	sw	t0, 12(t2)
	lbu	t3, -3(s1)
	add	s2, s2, t5
	lw	t0, 16(a7)
	lw	t6, 16(t2)
	add	s2, s2, t3
	srliw	s0, s2, 2
	mul	t0, s0, t0
	add	t0, t0, t6
	sw	t0, 16(t2)
	add	a1, a1, a5
	lbu	a5, -2(s1)
	add	a1, a1, t3
	lw	t0, 20(a7)
	lw	t6, 20(t2)
	add	a1, a1, a5
	srliw	a1, a1, 2
	mul	a1, a1, t0
	add	a1, a1, t6
	sw	a1, 20(t2)
	lbu	a1, -2(s3)
	lbu	t0, -1(s3)
	lbu	t6, -1(s1)
	add	a1, a5, a1
	add	t0, t0, t6
	add	a1, a1, t0
	lw	t6, 24(a7)
	lw	s0, 24(t2)
	addi	a1, a1, 2
	srli	a1, a1, 2
	mul	a1, a1, t6
	add	a1, a1, s0
	sw	a1, 24(t2)
	lbu	a1, 0(s3)
	lbu	t6, 0(s1)
	add	a1, a1, t6
	add	a1, t0, a1
	lw	t0, 28(a7)
	lw	t6, 28(t2)
	addi	a1, a1, 2
	srli	a1, a1, 2
	mul	a1, a1, t0
	add	a1, a1, t6
	sw	a1, 28(t2)
	addi	t2, t2, 32
	addi	a7, a7, 32
	mv	s3, s1
	mv	s2, t5
	bne	t2, t4, .LBB0_95
	j	.LBB0_59
.LBB0_96:                               #   in Loop: Header=BB0_8 Depth=1
	lbu	t5, 4(a5)
	lbu	s0, 5(a5)
	lbu	a1, 6(a5)
	lbu	t6, 7(a5)
	lbu	t2, 8(a5)
	ld	a5, 240(sp)                     # 8-byte Folded Reload
	add	a7, a5, a7
	add	t0, t0, s7
	mulw	a5, s4, t0
	ld	t0, 64(sp)                      # 8-byte Folded Reload
	add	a7, t0, a7
	add	a5, a7, a5
	addi	a7, a6, 796
	addi	t0, sp, 276
.LBB0_97:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	t3, -4(a5)
	addi	s0, s0, 2
	add	s1, s0, t5
	lbu	t5, -3(a5)
	add	s1, s1, t3
	lw	s2, -12(a7)
	lw	s3, -12(t0)
	add	s1, s1, t5
	srliw	s1, s1, 2
	mul	s1, s1, s2
	add	s1, s1, s3
	sw	s1, -12(t0)
	add	s0, s0, a1
	addi	t6, t6, 2
	add	a1, t6, a1
	lbu	s1, -2(a5)
	add	s0, s0, t5
	lw	s2, -8(a7)
	lw	s3, -8(t0)
	add	s0, s0, s1
	srliw	s0, s0, 2
	mul	s0, s0, s2
	add	s0, s0, s3
	sw	s0, -8(t0)
	lbu	s0, -1(a5)
	add	a1, a1, s1
	lw	s2, -4(a7)
	lw	s3, -4(t0)
	add	a1, a1, s0
	srliw	a1, a1, 2
	mul	a1, a1, s2
	add	a1, a1, s3
	sw	a1, -4(t0)
	add	t2, t6, t2
	lbu	a1, 0(a5)
	add	t2, t2, s0
	lw	t6, 0(a7)
	lw	s2, 0(t0)
	add	t2, t2, a1
	srliw	t2, t2, 2
	mul	t2, t2, t6
	add	t2, t2, s2
	sw	t2, 0(t0)
	addi	t0, t0, 32
	addi	a7, a7, 32
	add	a5, a5, s4
	mv	t2, a1
	mv	t6, s0
	mv	a1, s1
	mv	s0, t5
	mv	t5, t3
	bne	t0, s10, .LBB0_97
	j	.LBB0_65
.LBB0_98:                               #   in Loop: Header=BB0_8 Depth=1
	lbu	t3, 0(a0)
	lbu	t6, 1(a0)
	lbu	a1, 2(a0)
	lbu	t5, 3(a0)
	lbu	t0, 4(a0)
	ld	a0, 240(sp)                     # 8-byte Folded Reload
	add	a5, a0, a5
	add	a7, a7, s7
	mulw	a0, s4, a7
	ld	a7, 48(sp)                      # 8-byte Folded Reload
	add	a5, a7, a5
	add	a0, a5, a0
	addi	a5, a6, 1024
	addi	a7, sp, 248
.LBB0_99:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	t2, -2(a0)
	addi	t6, t6, 2
	add	s0, t6, t3
	lbu	t3, -1(a0)
	add	s0, s0, t2
	lw	s1, 0(a5)
	lw	s2, 0(a7)
	add	s0, s0, t3
	srliw	s0, s0, 2
	mul	s0, s0, s1
	add	s0, s0, s2
	sw	s0, 0(a7)
	add	t6, t6, a1
	addi	t5, t5, 2
	add	a1, t5, a1
	lbu	s0, 0(a0)
	add	t6, t6, t3
	lw	s1, 4(a5)
	lw	s2, 4(a7)
	add	t6, t6, s0
	srliw	t6, t6, 2
	mul	t6, t6, s1
	add	t6, t6, s2
	sw	t6, 4(a7)
	lbu	t6, 1(a0)
	add	a1, a1, s0
	lw	s1, 8(a5)
	lw	s2, 8(a7)
	add	a1, a1, t6
	srliw	a1, a1, 2
	mul	a1, a1, s1
	add	a1, a1, s2
	sw	a1, 8(a7)
	add	t0, t5, t0
	lbu	a1, 2(a0)
	add	t0, t0, t6
	lw	t5, 12(a5)
	lw	s1, 12(a7)
	add	t0, t0, a1
	srliw	t0, t0, 2
	mul	t0, t0, t5
	add	t0, t0, s1
	sw	t0, 12(a7)
	addi	a7, a7, 32
	addi	a5, a5, 32
	add	a0, a0, s4
	mv	t0, a1
	mv	t5, t6
	mv	a1, s0
	mv	t6, t3
	mv	t3, t2
	bne	a7, t4, .LBB0_99
	j	.LBB0_7
.LBB0_100:
	li	a0, 2
	ld	a1, 8(sp)                       # 8-byte Folded Reload
	bne	a1, a0, .LBB0_113
# %bb.101:
	li	a0, 360
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	mul	a0, a1, a0
	lui	a1, 6
	add	a0, s8, a0
	ld	a7, 16(sp)                      # 8-byte Folded Reload
	add	a7, a0, a7
	add	a1, a7, a1
	lw	a1, 1704(a1)
	lui	a2, 13
	add	a2, a7, a2
	lw	a2, -688(a2)
	lui	a3, 19
	add	a3, a7, a3
	lw	a3, 1016(a3)
	lui	a4, 26
	add	a4, a7, a4
	lw	a4, -1376(a4)
	add	a1, a2, a1
	add	a3, a3, a4
	addw	a3, a1, a3
	sraiw	a1, a3, 31
	xor	a2, a3, a1
	sub	a2, a2, a1
	andi	a1, a2, 15
	slli	a4, a1, 2
	lui	a1, %hi(roundtab)
	addi	a1, a1, %lo(roundtab)
	add	a4, a1, a4
	lw	a4, 0(a4)
	srli	a5, a2, 3
	lui	a2, 65536
	addi	a2, a2, -2
	and	a5, a5, a2
	addw	s6, a5, a4
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	a0, 32(sp)                      # 8-byte Folded Reload
	bgez	a3, .LBB0_103
# %bb.102:
	negw	s6, s6
.LBB0_103:
	lui	a3, 38
	add	a3, a7, a3
	lui	a4, 45
	add	a4, a7, a4
	lui	a5, 51
	add	a5, a7, a5
	lui	a6, 58
	add	a6, a7, a6
	lw	a3, 2032(a3)
	lw	a4, -360(a4)
	lw	a5, 1344(a5)
	lw	a6, -1048(a6)
	add	a3, a4, a3
	add	a5, a5, a6
	addw	a5, a3, a5
	sraiw	a3, a5, 31
	xor	a4, a5, a3
	sub	a4, a4, a3
	andi	a3, a4, 15
	slli	a3, a3, 2
	add	a1, a1, a3
	lw	a1, 0(a1)
	srli	a4, a4, 3
	and	a2, a4, a2
	addw	s7, a2, a1
	bgez	a5, .LBB0_114
# %bb.104:
	negw	s7, s7
	j	.LBB0_114
.LBB0_105:
	beqz	a0, .LBB0_117
# %bb.106:
	lui	a0, %hi(trb)
	lw	a0, %lo(trb)(a0)
	lui	a1, %hi(trd)
	lw	a2, %lo(trd)(a1)
	lui	a1, %hi(bframe)
	ld	a1, %lo(bframe)(a1)
	lui	s0, 65536
	li	a5, 2
	addi	s0, s0, -2
	bne	a6, a5, .LBB0_121
# %bb.107:
	sd	s10, 32(sp)                     # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	li	a5, 360
	mul	a5, a7, a5
	lui	a6, 6
	lui	a7, %hi(MV)
	addi	a7, a7, %lo(MV)
	add	a5, a7, a5
	add	s10, a5, t0
	add	a6, s10, a6
	lw	a5, 1704(a6)
	lui	a6, 38
	add	a6, s10, a6
	lw	a6, 2032(a6)
	mul	a5, a5, a0
	divw	a5, a5, a2
	addw	s7, a5, a3
	mul	a0, a6, a0
	divw	a0, a0, a2
	addw	s8, a0, a4
	sd	s0, 240(sp)                     # 8-byte Folded Spill
	mv	s9, a4
	li	a4, 8
	li	a5, 8
	ld	s6, 160(sp)                     # 8-byte Folded Reload
	mv	a0, s6
	mv	a2, s5
	mv	s2, a3
	mv	a3, s4
	ld	s1, 168(sp)                     # 8-byte Folded Reload
	mv	a6, s1
	mv	a7, s11
	mv	t2, s7
	mv	t3, s8
	lui	s3, %hi(trd)
	lui	s0, %hi(trb)
	call	recon_comp
	lw	a0, %lo(trb)(s0)
	lui	s0, %hi(trb)
	lui	a1, 13
	add	a1, s10, a1
	lw	a1, -688(a1)
	mul	a1, a1, a0
	lw	a2, %lo(trd)(s3)
	lui	a3, 45
	add	a3, s10, a3
	lw	a3, -360(a3)
	divw	a1, a1, a2
	addw	t2, a1, s2
	add	s7, t2, s7
	mul	a0, a3, a0
	divw	a0, a0, a2
	lui	a1, %hi(bframe)
	ld	a1, %lo(bframe)(a1)
	addw	t3, a0, s9
	add	s8, t3, s8
	addiw	a6, s1, 8
	sd	a6, 232(sp)                     # 8-byte Folded Spill
	li	a4, 8
	li	a5, 8
	mv	a0, s6
	mv	a2, s5
	mv	a3, s4
	mv	a7, s11
	call	recon_comp
	lw	a0, %lo(trb)(s0)
	lui	s3, %hi(trb)
	lui	a1, 19
	add	a1, s10, a1
	lw	a1, 1016(a1)
	mul	a1, a1, a0
	lui	a2, %hi(trd)
	lw	a2, %lo(trd)(a2)
	lui	a3, 51
	add	a3, s10, a3
	lw	a3, 1344(a3)
	divw	a1, a1, a2
	addw	t2, a1, s2
	add	s7, t2, s7
	mul	a0, a3, a0
	divw	a0, a0, a2
	lui	a1, %hi(bframe)
	ld	a1, %lo(bframe)(a1)
	addw	t3, a0, s9
	add	s0, t3, s8
	addiw	s8, s11, 8
	li	a4, 8
	li	a5, 8
	mv	a0, s6
	mv	a2, s5
	mv	a3, s4
	mv	a6, s1
	mv	a7, s8
	call	recon_comp
	lw	a0, %lo(trb)(s3)
	lui	a1, 26
	add	a1, s10, a1
	lw	a1, -1376(a1)
	lui	a2, %hi(trd)
	lw	a2, %lo(trd)(a2)
	lui	a3, 58
	add	a3, s10, a3
	mul	a1, a1, a0
	lw	a3, -1048(a3)
	divw	a1, a1, a2
	addw	t2, a1, s2
	addw	s3, t2, s7
	lui	s1, %hi(bframe)
	mul	a0, a3, a0
	ld	a1, %lo(bframe)(s1)
	divw	a0, a0, a2
	addw	t3, a0, s9
	addw	s2, t3, s0
	ld	s0, 240(sp)                     # 8-byte Folded Reload
	li	a4, 8
	li	a5, 8
	mv	a0, s6
	mv	a2, s5
	mv	a3, s4
	ld	a6, 232(sp)                     # 8-byte Folded Reload
	mv	a7, s8
	call	recon_comp
	sraiw	a0, s3, 31
	xor	a1, s3, a0
	sub	a1, a1, a0
	andi	a0, a1, 15
	slli	a2, a0, 2
	lui	a3, %hi(roundtab)
	addi	a3, a3, %lo(roundtab)
	add	a2, a3, a2
	lw	a2, 0(a2)
	srli	a1, a1, 3
	and	a1, a1, s0
	addw	s6, a2, a1
	bgez	s3, .LBB0_109
# %bb.108:
	negw	s6, s6
.LBB0_109:
	ld	a0, 32(sp)                      # 8-byte Folded Reload
	sraiw	a1, s2, 31
	xor	a2, s2, a1
	sub	a2, a2, a1
	andi	a1, a2, 15
	slli	a1, a1, 2
	add	a1, a3, a1
	lw	a3, 0(a1)
	addi	s1, s1, %lo(bframe)
	srli	a2, a2, 3
	and	a1, a2, s0
	addw	s7, a3, a1
	ld	a2, 176(sp)                     # 8-byte Folded Reload
	bgez	s2, .LBB0_111
# %bb.110:
	negw	s7, s7
.LBB0_111:
	srai	s5, s5, 1
	ld	a1, 8(s1)
	ld	a3, 168(sp)                     # 8-byte Folded Reload
	srai	s3, a3, 1
	srai	s4, s4, 1
	srai	s2, a2, 1
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
	li	a4, 8
	li	a5, 8
	ld	a0, 40(sp)                      # 8-byte Folded Reload
	j	.LBB0_116
.LBB0_112:
	li	a0, 360
	mul	a0, a7, a0
	add	a0, s8, a0
	add	a0, a0, t0
	lw	s6, 0(a0)
	lui	a1, 32
	add	a0, a0, a1
	lw	s7, 328(a0)
	lui	a0, %hi(newframe)
	ld	a1, %lo(newframe)(a0)
	addi	s0, a0, %lo(newframe)
	li	a4, 16
	li	a5, 16
	ld	a0, 160(sp)                     # 8-byte Folded Reload
	mv	a2, s5
	mv	a3, s4
	ld	s2, 168(sp)                     # 8-byte Folded Reload
	mv	a6, s2
	mv	a7, s11
	mv	t2, s6
	mv	t3, s7
	call	recon_comp
	srai	s5, s5, 1
	srai	s3, s2, 1
	srai	s4, s4, 1
	srai	s2, s11, 1
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
	mv	a0, s10
	j	.LBB0_115
.LBB0_113:
	li	a0, 360
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	mul	a0, a1, a0
	add	a0, s8, a0
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
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	a0, 32(sp)                      # 8-byte Folded Reload
.LBB0_114:
	srai	s5, s5, 1
	lui	s0, %hi(newframe)
	addi	s0, s0, %lo(newframe)
	ld	a1, 8(s0)
	ld	a2, 168(sp)                     # 8-byte Folded Reload
	srai	s3, a2, 1
	srai	s4, s4, 1
	srai	s2, s11, 1
	li	a4, 8
	li	a5, 8
.LBB0_115:
	mv	a2, s5
	mv	a3, s4
	mv	a6, s3
	mv	a7, s2
	mv	t2, s6
	mv	t3, s7
	call	recon_comp
	ld	a1, 16(s0)
	li	a4, 8
	li	a5, 8
	mv	a0, s1
.LBB0_116:
	mv	a2, s5
	mv	a3, s4
	mv	a6, s3
	mv	a7, s2
	mv	t2, s6
	mv	t3, s7
	j	.LBB0_127
.LBB0_117:
	lui	a0, %hi(trb)
	lw	a0, %lo(trb)(a0)
	li	a1, 360
	mul	a1, a7, a1
	lui	a2, %hi(MV)
	addi	a2, a2, %lo(MV)
	add	a1, a2, a1
	add	a1, a1, t0
	lw	a2, 0(a1)
	lui	a5, %hi(trd)
	lw	a5, %lo(trd)(a5)
	mul	a2, a2, a0
	divw	a2, a2, a5
	lui	a6, 32
	add	a1, a1, a6
	lw	a6, 328(a1)
	addw	s8, a2, a3
	lui	s0, %hi(bframe)
	ld	a1, %lo(bframe)(s0)
	mul	a0, a6, a0
	divw	a0, a0, a5
	addw	s7, a0, a4
	li	a4, 16
	li	a5, 16
	ld	a0, 160(sp)                     # 8-byte Folded Reload
	mv	a2, s5
	mv	a3, s4
	ld	a6, 168(sp)                     # 8-byte Folded Reload
	mv	a7, s11
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
	bgez	s8, .LBB0_119
# %bb.118:
	negw	s6, s6
.LBB0_119:
	addi	s0, s0, %lo(bframe)
	srai	s5, s5, 1
	ld	a3, 168(sp)                     # 8-byte Folded Reload
	srai	s3, a3, 1
	srai	s4, s4, 1
	sraiw	a3, a0, 31
	xor	a0, a0, a3
	sub	a0, a0, a3
	andi	a3, a0, 12
	slli	a3, a3, 2
	add	a1, a1, a3
	lw	a1, 0(a1)
	srai	s2, s11, 1
	srli	a0, a0, 3
	and	a0, a0, a2
	addw	s8, a0, a1
	bgez	s7, .LBB0_126
# %bb.120:
	negw	s8, s8
	j	.LBB0_126
.LBB0_121:
	li	a5, 360
	mul	a5, a7, a5
	lui	a6, %hi(MV)
	addi	a6, a6, %lo(MV)
	add	a5, a6, a5
	add	a5, a5, t0
	lw	a6, 0(a5)
	lui	a7, 32
	add	a5, a5, a7
	lw	a5, 328(a5)
	mul	a6, a6, a0
	divw	a6, a6, a2
	addw	s8, a6, a3
	mul	a0, a5, a0
	divw	a0, a0, a2
	addw	s7, a0, a4
	li	a4, 16
	li	a5, 16
	ld	a0, 160(sp)                     # 8-byte Folded Reload
	mv	a2, s5
	mv	a3, s4
	ld	a6, 168(sp)                     # 8-byte Folded Reload
	mv	a7, s11
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
	and	a2, a2, s0
	addw	s6, a3, a2
	bgez	s8, .LBB0_123
# %bb.122:
	negw	s6, s6
.LBB0_123:
	srai	s5, s5, 1
	ld	a2, 168(sp)                     # 8-byte Folded Reload
	srai	s3, a2, 1
	srai	s4, s4, 1
	sraiw	a2, a1, 31
	xor	a1, a1, a2
	sub	a1, a1, a2
	andi	a2, a1, 12
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	srai	s2, s11, 1
	srli	a1, a1, 3
	and	a1, a1, s0
	addw	s8, a1, a0
	bgez	s7, .LBB0_125
# %bb.124:
	negw	s8, s8
.LBB0_125:
	lui	s0, %hi(bframe)
	addi	s0, s0, %lo(bframe)
.LBB0_126:
	ld	a1, 8(s0)
	li	a4, 8
	li	a5, 8
	mv	a0, s10
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
	mv	a2, s5
	mv	a3, s4
	mv	a6, s3
	mv	a7, s2
	mv	t2, s6
	mv	t3, s8
.LBB0_127:
	ld	ra, 600(sp)                     # 8-byte Folded Reload
	ld	s0, 592(sp)                     # 8-byte Folded Reload
	ld	s1, 584(sp)                     # 8-byte Folded Reload
	ld	s2, 576(sp)                     # 8-byte Folded Reload
	ld	s3, 568(sp)                     # 8-byte Folded Reload
	ld	s4, 560(sp)                     # 8-byte Folded Reload
	ld	s5, 552(sp)                     # 8-byte Folded Reload
	ld	s6, 544(sp)                     # 8-byte Folded Reload
	ld	s7, 536(sp)                     # 8-byte Folded Reload
	ld	s8, 528(sp)                     # 8-byte Folded Reload
	ld	s9, 520(sp)                     # 8-byte Folded Reload
	ld	s10, 512(sp)                    # 8-byte Folded Reload
	ld	s11, 504(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 608
	tail	recon_comp
.LBB0_128:
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
	addi	sp, sp, -48
	sd	s0, 40(sp)                      # 8-byte Folded Spill
	sd	s1, 32(sp)                      # 8-byte Folded Spill
	sd	s2, 24(sp)                      # 8-byte Folded Spill
	sd	s3, 16(sp)                      # 8-byte Folded Spill
	sd	s4, 8(sp)                       # 8-byte Folded Spill
	sd	s5, 0(sp)                       # 8-byte Folded Spill
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
	lbu	s0, 0(t5)
	lbu	s1, -7(t6)
	add	s2, a1, a6
	add	s0, s0, s1
	addi	s0, s0, 1
	srli	s0, s0, 1
	sb	s0, -7(s2)
	lbu	s0, 1(t5)
	add	s1, a4, a6
	lbu	s1, 0(s1)
	add	s0, s0, s1
	addi	s0, s0, 1
	srli	s0, s0, 1
	sb	s0, -6(s2)
	lbu	s0, 2(t5)
	add	s1, a7, a6
	lbu	s1, 0(s1)
	add	s0, s0, s1
	addi	s0, s0, 1
	srli	s0, s0, 1
	sb	s0, -5(s2)
	lbu	s0, 3(t5)
	add	s1, t0, a6
	lbu	s1, 0(s1)
	add	s0, s0, s1
	addi	s0, s0, 1
	srli	s0, s0, 1
	sb	s0, -4(s2)
	lbu	s0, 4(t5)
	add	s1, t1, a6
	lbu	s1, 0(s1)
	add	s0, s0, s1
	addi	s0, s0, 1
	srli	s0, s0, 1
	sb	s0, -3(s2)
	lbu	s0, 5(t5)
	add	s1, t2, a6
	lbu	s1, 0(s1)
	add	s0, s0, s1
	addi	s0, s0, 1
	srli	s0, s0, 1
	sb	s0, -2(s2)
	lbu	s0, 6(t5)
	add	s1, t3, a6
	lbu	s1, 0(s1)
	add	s0, s0, s1
	addi	s0, s0, 1
	srli	s0, s0, 1
	sb	s0, -1(s2)
	lbu	t5, 7(t5)
	lbu	t6, 0(t6)
	add	t5, t5, t6
	addi	t5, t5, 1
	srli	t5, t5, 1
	sb	t5, 0(s2)
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
	add	s0, t4, a6
	lbu	s2, -3(t6)
	add	s1, a0, a6
	lbu	s3, 0(s1)
	lbu	s4, -4(t6)
	lbu	s5, -8(s0)
	add	s1, a1, a6
	add	s2, s2, s3
	addi	s2, s2, 2
	add	s4, s4, s5
	add	s4, s2, s4
	srli	s3, s4, 2
	sb	s3, 0(s1)
	lbu	s3, -2(t6)
	add	s4, a4, a6
	lbu	s4, 0(s4)
	add	s5, s3, s4
	add	s2, s2, s5
	srli	s2, s2, 2
	sb	s2, 1(s1)
	lbu	s2, -1(t6)
	add	s5, a7, a6
	lbu	s5, 0(s5)
	add	s3, s4, s3
	add	s2, s2, s5
	add	s3, s3, s2
	addi	s3, s3, 2
	srli	s3, s3, 2
	sb	s3, 2(s1)
	lbu	s3, 0(t6)
	add	s4, t0, a6
	lbu	s4, 0(s4)
	add	s3, s3, s4
	add	s2, s2, s3
	addi	s2, s2, 2
	srli	s2, s2, 2
	sb	s2, 3(s1)
	lbu	s2, 1(t6)
	add	s4, t1, a6
	lbu	s4, 0(s4)
	add	s2, s2, s4
	add	s3, s3, s2
	addi	s3, s3, 2
	srli	s3, s3, 2
	sb	s3, 4(s1)
	lbu	s3, 2(t6)
	add	s4, t2, a6
	lbu	s4, 0(s4)
	add	s3, s3, s4
	add	s2, s2, s3
	addi	s2, s2, 2
	srli	s2, s2, 2
	sb	s2, 5(s1)
	lbu	s2, 3(t6)
	add	s4, t3, a6
	lbu	s4, 0(s4)
	add	s2, s2, s4
	add	s3, s3, s2
	addi	s3, s3, 2
	srli	s3, s3, 2
	sb	s3, 6(s1)
	lbu	t6, 4(t6)
	lbu	s0, 0(s0)
	add	t6, t6, s0
	add	t6, s2, t6
	addi	t6, t6, 2
	srli	t6, t6, 2
	sb	t6, 7(s1)
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
	add	t0, a0, a6
	add	t1, a4, a6
	lbu	t2, 0(t0)
	lbu	t3, 0(t1)
	add	a7, a1, a6
	add	t2, t2, t3
	addi	t2, t2, 1
	srli	t2, t2, 1
	sb	t2, -15(a7)
	lbu	t2, 1(t0)
	lbu	t3, 1(t1)
	add	t2, t2, t3
	addi	t2, t2, 1
	srli	t2, t2, 1
	sb	t2, -14(a7)
	lbu	t2, 2(t0)
	lbu	t3, 2(t1)
	add	t2, t2, t3
	addi	t2, t2, 1
	srli	t2, t2, 1
	sb	t2, -13(a7)
	lbu	t2, 3(t0)
	lbu	t3, 3(t1)
	add	t2, t2, t3
	addi	t2, t2, 1
	srli	t2, t2, 1
	sb	t2, -12(a7)
	lbu	t2, 4(t0)
	lbu	t3, 4(t1)
	add	t2, t2, t3
	addi	t2, t2, 1
	srli	t2, t2, 1
	sb	t2, -11(a7)
	lbu	t2, 5(t0)
	lbu	t3, 5(t1)
	add	t2, t2, t3
	addi	t2, t2, 1
	srli	t2, t2, 1
	sb	t2, -10(a7)
	lbu	t2, 6(t0)
	lbu	t3, 6(t1)
	add	t2, t2, t3
	addi	t2, t2, 1
	srli	t2, t2, 1
	sb	t2, -9(a7)
	lbu	t2, 7(t0)
	lbu	t3, 7(t1)
	add	t2, t2, t3
	addi	t2, t2, 1
	srli	t2, t2, 1
	sb	t2, -8(a7)
	lbu	t2, 8(t0)
	lbu	t3, 8(t1)
	add	t2, t2, t3
	addi	t2, t2, 1
	srli	t2, t2, 1
	sb	t2, -7(a7)
	lbu	t2, 9(t0)
	lbu	t3, 9(t1)
	add	t2, t2, t3
	addi	t2, t2, 1
	srli	t2, t2, 1
	sb	t2, -6(a7)
	lbu	t2, 10(t0)
	lbu	t3, 10(t1)
	add	t2, t2, t3
	addi	t2, t2, 1
	srli	t2, t2, 1
	sb	t2, -5(a7)
	lbu	t2, 11(t0)
	lbu	t3, 11(t1)
	add	t2, t2, t3
	addi	t2, t2, 1
	srli	t2, t2, 1
	sb	t2, -4(a7)
	lbu	t2, 12(t0)
	lbu	t3, 12(t1)
	add	t2, t2, t3
	addi	t2, t2, 1
	srli	t2, t2, 1
	sb	t2, -3(a7)
	lbu	t2, 13(t0)
	lbu	t3, 13(t1)
	add	t2, t2, t3
	addi	t2, t2, 1
	srli	t2, t2, 1
	sb	t2, -2(a7)
	lbu	t2, 14(t0)
	lbu	t3, 14(t1)
	add	t2, t2, t3
	addi	t2, t2, 1
	srli	t2, t2, 1
	sb	t2, -1(a7)
	lbu	t0, 15(t0)
	lbu	t1, 15(t1)
	add	t0, t0, t1
	addi	t0, t0, 1
	srli	t0, t0, 1
	sb	t0, 0(a7)
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
	lbu	t2, -7(a7)
	lbu	t3, 1(t0)
	lbu	t4, -8(a7)
	lbu	t5, 0(t0)
	add	t1, a1, a6
	add	t2, t2, t3
	addi	t2, t2, 2
	add	t4, t4, t5
	add	t4, t2, t4
	srli	t4, t4, 2
	sb	t4, 0(t1)
	lbu	t3, -6(a7)
	lbu	t4, 2(t0)
	add	t5, t3, t4
	add	t2, t2, t5
	srli	t2, t2, 2
	sb	t2, 1(t1)
	lbu	t2, -5(a7)
	lbu	t5, 3(t0)
	add	t3, t4, t3
	add	t2, t2, t5
	add	t3, t3, t2
	addi	t3, t3, 2
	srli	t3, t3, 2
	sb	t3, 2(t1)
	lbu	t3, -4(a7)
	lbu	t4, 4(t0)
	add	t3, t3, t4
	add	t2, t2, t3
	addi	t2, t2, 2
	srli	t2, t2, 2
	sb	t2, 3(t1)
	lbu	t2, -3(a7)
	lbu	t4, 5(t0)
	add	t2, t2, t4
	add	t3, t3, t2
	addi	t3, t3, 2
	srli	t3, t3, 2
	sb	t3, 4(t1)
	lbu	t3, -2(a7)
	lbu	t4, 6(t0)
	add	t3, t3, t4
	add	t2, t2, t3
	addi	t2, t2, 2
	srli	t2, t2, 2
	sb	t2, 5(t1)
	lbu	t2, -1(a7)
	lbu	t4, 7(t0)
	add	t2, t2, t4
	add	t3, t3, t2
	addi	t3, t3, 2
	srli	t3, t3, 2
	sb	t3, 6(t1)
	lbu	t3, 0(a7)
	lbu	t4, 8(t0)
	add	t3, t3, t4
	add	t2, t2, t3
	addi	t2, t2, 2
	srli	t2, t2, 2
	sb	t2, 7(t1)
	lbu	t2, 1(a7)
	lbu	t4, 9(t0)
	add	t2, t2, t4
	add	t3, t3, t2
	addi	t3, t3, 2
	srli	t3, t3, 2
	sb	t3, 8(t1)
	lbu	t3, 2(a7)
	lbu	t4, 10(t0)
	add	t3, t3, t4
	add	t2, t2, t3
	addi	t2, t2, 2
	srli	t2, t2, 2
	sb	t2, 9(t1)
	lbu	t2, 3(a7)
	lbu	t4, 11(t0)
	add	t2, t2, t4
	add	t3, t3, t2
	addi	t3, t3, 2
	srli	t3, t3, 2
	sb	t3, 10(t1)
	lbu	t3, 4(a7)
	lbu	t4, 12(t0)
	add	t3, t3, t4
	add	t2, t2, t3
	addi	t2, t2, 2
	srli	t2, t2, 2
	sb	t2, 11(t1)
	lbu	t2, 5(a7)
	lbu	t4, 13(t0)
	add	t2, t2, t4
	add	t3, t3, t2
	addi	t3, t3, 2
	srli	t3, t3, 2
	sb	t3, 12(t1)
	lbu	t3, 6(a7)
	lbu	t4, 14(t0)
	add	t3, t3, t4
	add	t2, t2, t3
	addi	t2, t2, 2
	srli	t2, t2, 2
	sb	t2, 13(t1)
	lbu	t2, 7(a7)
	lbu	t4, 15(t0)
	add	t2, t2, t4
	add	t3, t3, t2
	addi	t3, t3, 2
	srli	t3, t3, 2
	sb	t3, 14(t1)
	lbu	a7, 8(a7)
	lbu	t0, 16(t0)
	add	a7, a7, t0
	add	a7, t2, a7
	addi	a7, a7, 2
	srli	a7, a7, 2
	sb	a7, 15(t1)
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
	lbu	t4, -15(t2)
	lbu	t5, -16(t2)
	add	t3, a1, a6
	addi	t4, t4, 1
	add	t5, t4, t5
	srli	t5, t5, 1
	sb	t5, -8(t3)
	lbu	t5, -14(t2)
	add	t4, t4, t5
	srli	t4, t4, 1
	sb	t4, -7(t3)
	lbu	t4, -13(t2)
	addi	t4, t4, 1
	add	t5, t4, t5
	srli	t5, t5, 1
	sb	t5, -6(t3)
	lbu	t5, -12(t2)
	add	t4, t4, t5
	srli	t4, t4, 1
	sb	t4, -5(t3)
	lbu	t4, -11(t2)
	add	t5, t5, t4
	addi	t5, t5, 1
	srli	t5, t5, 1
	sb	t5, -4(t3)
	lbu	t5, -10(t2)
	add	t4, t4, t5
	addi	t4, t4, 1
	srli	t4, t4, 1
	sb	t4, -3(t3)
	lbu	t4, -9(t2)
	add	t5, t5, t4
	addi	t5, t5, 1
	srli	t5, t5, 1
	sb	t5, -2(t3)
	lbu	t5, -8(t2)
	add	t4, t4, t5
	addi	t4, t4, 1
	srli	t4, t4, 1
	sb	t4, -1(t3)
	lbu	t4, -7(t2)
	add	t5, t5, t4
	addi	t5, t5, 1
	srli	t5, t5, 1
	sb	t5, 0(t3)
	lbu	t5, -6(t2)
	add	t4, t4, t5
	addi	t4, t4, 1
	srli	t4, t4, 1
	add	t6, t1, a6
	sb	t4, 0(t6)
	lbu	t4, -5(t2)
	add	t5, t5, t4
	addi	t5, t5, 1
	srli	t5, t5, 1
	add	t6, t0, a6
	sb	t5, 0(t6)
	lbu	t5, -4(t2)
	add	t4, t4, t5
	addi	t4, t4, 1
	srli	t4, t4, 1
	add	t6, a7, a6
	sb	t4, 0(t6)
	lbu	t4, -3(t2)
	add	t5, t5, t4
	addi	t5, t5, 1
	srli	t5, t5, 1
	add	t6, a4, a6
	sb	t5, 0(t6)
	lbu	t5, -2(t2)
	add	t4, t4, t5
	addi	t4, t4, 1
	srli	t4, t4, 1
	sb	t4, 5(t3)
	lbu	t4, -1(t2)
	add	t5, t5, t4
	addi	t5, t5, 1
	srli	t5, t5, 1
	sb	t5, 6(t3)
	lbu	t2, 0(t2)
	add	t2, t4, t2
	addi	t2, t2, 1
	srli	t2, t2, 1
	sb	t2, 7(t3)
	addiw	a5, a5, -1
	add	a0, a0, a3
	add	a1, a1, a2
	add	a4, a4, a2
	add	a7, a7, a2
	add	t0, t0, a2
	add	t1, t1, a2
	bnez	a5, .LBB1_32
.LBB1_33:
	ld	s0, 40(sp)                      # 8-byte Folded Reload
	ld	s1, 32(sp)                      # 8-byte Folded Reload
	ld	s2, 24(sp)                      # 8-byte Folded Reload
	ld	s3, 16(sp)                      # 8-byte Folded Reload
	ld	s4, 8(sp)                       # 8-byte Folded Reload
	ld	s5, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
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
