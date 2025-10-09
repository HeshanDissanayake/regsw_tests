	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"motion.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	motion_estimation               # -- Begin function motion_estimation
	.p2align	2
	.type	motion_estimation,@function
motion_estimation:                      # @motion_estimation
# %bb.0:
	addi	sp, sp, -1184
	sd	ra, 1176(sp)                    # 8-byte Folded Spill
	sd	s0, 1168(sp)                    # 8-byte Folded Spill
	sd	s1, 1160(sp)                    # 8-byte Folded Spill
	sd	s2, 1152(sp)                    # 8-byte Folded Spill
	sd	s3, 1144(sp)                    # 8-byte Folded Spill
	sd	s4, 1136(sp)                    # 8-byte Folded Spill
	sd	s5, 1128(sp)                    # 8-byte Folded Spill
	sd	s6, 1120(sp)                    # 8-byte Folded Spill
	sd	s7, 1112(sp)                    # 8-byte Folded Spill
	sd	s8, 1104(sp)                    # 8-byte Folded Spill
	sd	s9, 1096(sp)                    # 8-byte Folded Spill
	sd	s10, 1088(sp)                   # 8-byte Folded Spill
	sd	s11, 1080(sp)                   # 8-byte Folded Spill
	lui	t0, %hi(height2)
	lw	t0, %lo(height2)(t0)
	sd	a7, 304(sp)                     # 8-byte Folded Spill
	sd	a6, 296(sp)                     # 8-byte Folded Spill
	sd	a5, 128(sp)                     # 8-byte Folded Spill
	sd	a3, 320(sp)                     # 8-byte Folded Spill
	sd	a1, 248(sp)                     # 8-byte Folded Spill
	sd	a0, 288(sp)                     # 8-byte Folded Spill
	bgtz	t0, .LBB0_1
	j	.LBB0_279
.LBB0_1:
	mv	t1, a4
	mv	a4, a2
	sd	zero, 264(sp)                   # 8-byte Folded Spill
	sd	zero, 480(sp)                   # 8-byte Folded Spill
	ld	a0, 1216(sp)
	sd	a0, 216(sp)                     # 8-byte Folded Spill
	ld	a0, 1208(sp)
	sd	a0, 136(sp)                     # 8-byte Folded Spill
	ld	t3, 1200(sp)
	ld	a0, 1192(sp)
	sd	a0, 240(sp)                     # 8-byte Folded Spill
	ld	a0, 1184(sp)
	sd	a0, 232(sp)                     # 8-byte Folded Spill
	lui	a0, %hi(width)
	lw	s9, %lo(width)(a0)
	addi	a0, a2, 16
	sd	a0, 424(sp)                     # 8-byte Folded Spill
	addi	a0, t1, 15
	sd	a0, 112(sp)                     # 8-byte Folded Spill
	addi	a0, t1, 7
	sd	a0, 104(sp)                     # 8-byte Folded Spill
	li	s5, 2
	lui	a0, 524288
	addi	a0, a0, -1
	sd	a0, 456(sp)                     # 8-byte Folded Spill
	lui	a0, 699051
	addi	a0, a0, -1365
	slli	a0, a0, 32
	sd	a0, 448(sp)                     # 8-byte Folded Spill
	li	a0, 9
	slli	a0, a0, 8
	sd	a0, 272(sp)                     # 8-byte Folded Spill
	sd	t1, 312(sp)                     # 8-byte Folded Spill
	sd	a2, 552(sp)                     # 8-byte Folded Spill
	j	.LBB0_4
.LBB0_2:                                #   in Loop: Header=BB0_4 Depth=1
	lui	a0, %hi(quiet)
	lw	a0, %lo(quiet)(a0)
	bnez	a0, .LBB0_3
	j	.LBB0_278
.LBB0_3:                                #   in Loop: Header=BB0_4 Depth=1
	lui	a0, %hi(height2)
	lw	a0, %lo(height2)(a0)
	ld	a3, 480(sp)                     # 8-byte Folded Reload
	addiw	a3, a3, 16
	ld	a1, 264(sp)                     # 8-byte Folded Reload
	addi	a1, a1, 32
	sd	a1, 264(sp)                     # 8-byte Folded Spill
	sd	a3, 480(sp)                     # 8-byte Folded Spill
	blt	a3, a0, .LBB0_4
	j	.LBB0_279
.LBB0_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
                                        #       Child Loop BB0_16 Depth 3
                                        #       Child Loop BB0_20 Depth 3
                                        #         Child Loop BB0_21 Depth 4
                                        #       Child Loop BB0_24 Depth 3
                                        #         Child Loop BB0_25 Depth 4
                                        #       Child Loop BB0_28 Depth 3
                                        #         Child Loop BB0_29 Depth 4
                                        #       Child Loop BB0_73 Depth 3
                                        #         Child Loop BB0_74 Depth 4
                                        #       Child Loop BB0_77 Depth 3
                                        #         Child Loop BB0_78 Depth 4
                                        #       Child Loop BB0_37 Depth 3
                                        #         Child Loop BB0_38 Depth 4
                                        #       Child Loop BB0_128 Depth 3
                                        #         Child Loop BB0_132 Depth 4
                                        #           Child Loop BB0_133 Depth 5
                                        #         Child Loop BB0_139 Depth 4
                                        #           Child Loop BB0_140 Depth 5
                                        #         Child Loop BB0_146 Depth 4
                                        #           Child Loop BB0_147 Depth 5
                                        #       Child Loop BB0_158 Depth 3
                                        #         Child Loop BB0_159 Depth 4
                                        #       Child Loop BB0_11 Depth 3
                                        #       Child Loop BB0_51 Depth 3
                                        #         Child Loop BB0_52 Depth 4
                                        #       Child Loop BB0_165 Depth 3
                                        #         Child Loop BB0_166 Depth 4
                                        #       Child Loop BB0_169 Depth 3
                                        #         Child Loop BB0_170 Depth 4
                                        #       Child Loop BB0_173 Depth 3
                                        #         Child Loop BB0_174 Depth 4
                                        #       Child Loop BB0_211 Depth 3
                                        #         Child Loop BB0_212 Depth 4
                                        #       Child Loop BB0_215 Depth 3
                                        #         Child Loop BB0_216 Depth 4
                                        #       Child Loop BB0_182 Depth 3
                                        #         Child Loop BB0_183 Depth 4
                                        #       Child Loop BB0_85 Depth 3
                                        #         Child Loop BB0_87 Depth 4
                                        #           Child Loop BB0_102 Depth 5
                                        #             Child Loop BB0_107 Depth 6
                                        #               Child Loop BB0_112 Depth 7
                                        #                 Child Loop BB0_113 Depth 8
                                        #               Child Loop BB0_116 Depth 7
                                        #                 Child Loop BB0_117 Depth 8
                                        #       Child Loop BB0_196 Depth 3
                                        #         Child Loop BB0_197 Depth 4
                                        #       Child Loop BB0_200 Depth 3
                                        #         Child Loop BB0_201 Depth 4
                                        #       Child Loop BB0_62 Depth 3
	blez	s9, .LBB0_2
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	sd	zero, 440(sp)                   # 8-byte Folded Spill
	li	a5, 0
	ld	a0, 480(sp)                     # 8-byte Folded Reload
	slli	a1, a0, 1
	sd	a1, 224(sp)                     # 8-byte Folded Spill
	ori	a1, a1, 16
	sd	a1, 120(sp)                     # 8-byte Folded Spill
	addi	a1, a0, -1
	sd	a1, 416(sp)                     # 8-byte Folded Spill
	ori	a0, a0, 1
	sd	a0, 408(sp)                     # 8-byte Folded Spill
	li	a0, -1
	sd	a0, 432(sp)                     # 8-byte Folded Spill
	li	a0, 1
	sd	a0, 376(sp)                     # 8-byte Folded Spill
	ld	t2, 104(sp)                     # 8-byte Folded Reload
	mv	t4, a4
	ld	t5, 112(sp)                     # 8-byte Folded Reload
	sd	t1, 392(sp)                     # 8-byte Folded Spill
	j	.LBB0_9
.LBB0_6:                                #   in Loop: Header=BB0_9 Depth=2
	sw	a1, 0(t3)
	ld	a4, 552(sp)                     # 8-byte Folded Reload
	ld	a5, 384(sp)                     # 8-byte Folded Reload
.LBB0_7:                                #   in Loop: Header=BB0_9 Depth=2
	sw	s6, 88(t3)
.LBB0_8:                                #   in Loop: Header=BB0_9 Depth=2
	addi	t3, t3, 96
	addiw	a0, a5, 16
	addi	a5, a5, 16
	lui	a3, %hi(width)
	lw	s9, %lo(width)(a3)
	ld	a3, 432(sp)                     # 8-byte Folded Reload
	addi	a3, a3, 32
	sd	a3, 432(sp)                     # 8-byte Folded Spill
	ld	a3, 392(sp)                     # 8-byte Folded Reload
	addi	a3, a3, 16
	sd	a3, 392(sp)                     # 8-byte Folded Spill
	ld	a3, 440(sp)                     # 8-byte Folded Reload
	addi	a3, a3, 32
	sd	a3, 440(sp)                     # 8-byte Folded Spill
	ld	a3, 376(sp)                     # 8-byte Folded Reload
	addi	a3, a3, 32
	sd	a3, 376(sp)                     # 8-byte Folded Spill
	addi	t5, t5, 16
	addi	t4, t4, 16
	addi	t2, t2, 16
	bge	a0, s9, .LBB0_2
.LBB0_9:                                #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_16 Depth 3
                                        #       Child Loop BB0_20 Depth 3
                                        #         Child Loop BB0_21 Depth 4
                                        #       Child Loop BB0_24 Depth 3
                                        #         Child Loop BB0_25 Depth 4
                                        #       Child Loop BB0_28 Depth 3
                                        #         Child Loop BB0_29 Depth 4
                                        #       Child Loop BB0_73 Depth 3
                                        #         Child Loop BB0_74 Depth 4
                                        #       Child Loop BB0_77 Depth 3
                                        #         Child Loop BB0_78 Depth 4
                                        #       Child Loop BB0_37 Depth 3
                                        #         Child Loop BB0_38 Depth 4
                                        #       Child Loop BB0_128 Depth 3
                                        #         Child Loop BB0_132 Depth 4
                                        #           Child Loop BB0_133 Depth 5
                                        #         Child Loop BB0_139 Depth 4
                                        #           Child Loop BB0_140 Depth 5
                                        #         Child Loop BB0_146 Depth 4
                                        #           Child Loop BB0_147 Depth 5
                                        #       Child Loop BB0_158 Depth 3
                                        #         Child Loop BB0_159 Depth 4
                                        #       Child Loop BB0_11 Depth 3
                                        #       Child Loop BB0_51 Depth 3
                                        #         Child Loop BB0_52 Depth 4
                                        #       Child Loop BB0_165 Depth 3
                                        #         Child Loop BB0_166 Depth 4
                                        #       Child Loop BB0_169 Depth 3
                                        #         Child Loop BB0_170 Depth 4
                                        #       Child Loop BB0_173 Depth 3
                                        #         Child Loop BB0_174 Depth 4
                                        #       Child Loop BB0_211 Depth 3
                                        #         Child Loop BB0_212 Depth 4
                                        #       Child Loop BB0_215 Depth 3
                                        #         Child Loop BB0_216 Depth 4
                                        #       Child Loop BB0_182 Depth 3
                                        #         Child Loop BB0_183 Depth 4
                                        #       Child Loop BB0_85 Depth 3
                                        #         Child Loop BB0_87 Depth 4
                                        #           Child Loop BB0_102 Depth 5
                                        #             Child Loop BB0_107 Depth 6
                                        #               Child Loop BB0_112 Depth 7
                                        #                 Child Loop BB0_113 Depth 8
                                        #               Child Loop BB0_116 Depth 7
                                        #                 Child Loop BB0_117 Depth 8
                                        #       Child Loop BB0_196 Depth 3
                                        #         Child Loop BB0_197 Depth 4
                                        #       Child Loop BB0_200 Depth 3
                                        #         Child Loop BB0_201 Depth 4
                                        #       Child Loop BB0_62 Depth 3
	lui	a0, %hi(pict_struct)
	lw	s1, %lo(pict_struct)(a0)
	li	a0, 3
	sd	a5, 384(sp)                     # 8-byte Folded Spill
	li	a3, 0
	li	a4, 0
	bne	s1, a0, .LBB0_15
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=2
	add	a0, t1, a5
	ld	a1, 480(sp)                     # 8-byte Folded Reload
	mulw	s2, s9, a1
	add	a2, a0, s2
	li	a0, 16
	mv	a1, t5
.LBB0_11:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add	t6, a1, s2
	lbu	a5, -15(t6)
	add	a4, a4, a5
	lbu	a6, -14(t6)
	lbu	a7, -13(t6)
	mul	a5, a5, a5
	add	a3, a5, a3
	mul	a5, a6, a6
	add	a6, a6, a7
	add	a4, a4, a6
	mul	a6, a7, a7
	lbu	a7, -12(t6)
	add	a5, a5, a6
	lbu	a6, -11(t6)
	add	a3, a3, a5
	mul	a5, a7, a7
	lbu	t0, -10(t6)
	add	a7, a7, a6
	mul	a6, a6, a6
	add	a5, a5, a6
	add	a7, a7, t0
	add	a4, a4, a7
	mul	a6, t0, t0
	lbu	a7, -9(t6)
	lbu	t0, -8(t6)
	add	a5, a5, a6
	add	a3, a3, a5
	mul	a5, a7, a7
	add	a7, a7, t0
	lbu	a6, -7(t6)
	mul	t0, t0, t0
	add	a5, a5, t0
	lbu	t0, -6(t6)
	add	a7, a7, a6
	mul	a6, a6, a6
	add	a5, a5, a6
	add	a7, a7, t0
	add	a4, a4, a7
	mul	a6, t0, t0
	lbu	a7, -5(t6)
	add	a5, a5, a6
	lbu	a6, -4(t6)
	add	a3, a3, a5
	mul	a5, a7, a7
	lbu	t0, -3(t6)
	add	a7, a7, a6
	mul	a6, a6, a6
	add	a5, a5, a6
	add	a7, a7, t0
	lbu	a6, -2(t6)
	mul	t0, t0, t0
	add	a5, a5, t0
	lbu	t0, -1(t6)
	add	a7, a7, a6
	mul	a6, a6, a6
	add	a5, a5, a6
	add	a7, a7, t0
	add	a4, a4, a7
	lbu	a7, 0(t6)
	mul	a6, t0, t0
	add	a5, a5, a6
	add	a3, a3, a5
	add	a4, a4, a7
	mul	a5, a7, a7
	add	a3, a3, a5
	addiw	a0, a0, -1
	add	a1, a1, s9
	bnez	a0, .LBB0_11
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=2
	lui	a0, %hi(pict_type)
	lw	a0, %lo(pict_type)(a0)
	mul	a1, a4, a4
	srliw	a1, a1, 8
	subw	s1, a3, a1
	beq	a0, s5, .LBB0_41
# %bb.13:                               #   in Loop: Header=BB0_9 Depth=2
	ld	a4, 552(sp)                     # 8-byte Folded Reload
	li	a1, 1
	bne	a0, a1, .LBB0_49
# %bb.14:                               #   in Loop: Header=BB0_9 Depth=2
	sw	a1, 0(t3)
	sw	s1, 88(t3)
	ld	a5, 384(sp)                     # 8-byte Folded Reload
	j	.LBB0_8
.LBB0_15:                               #   in Loop: Header=BB0_9 Depth=2
	slliw	s10, s9, 1
	add	a0, t1, a5
	ld	a1, 480(sp)                     # 8-byte Folded Reload
	mulw	t6, s10, a1
	add	a0, a0, t6
	addi	a1, s1, -2
	snez	a1, a1
	addi	a1, a1, -1
	and	s3, a1, s9
	add	s11, a0, s3
	ld	a0, 264(sp)                     # 8-byte Folded Reload
	mulw	s2, a0, s9
	add	a0, a5, s2
	add	a0, s3, a0
	li	a1, 16
.LBB0_16:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add	a2, t1, a0
	lbu	a5, 0(a2)
	add	a4, a4, a5
	lbu	a6, 1(a2)
	lbu	a7, 2(a2)
	mul	a5, a5, a5
	add	a3, a5, a3
	mul	a5, a6, a6
	add	a6, a6, a7
	add	a4, a4, a6
	mul	a6, a7, a7
	lbu	a7, 3(a2)
	add	a5, a5, a6
	lbu	a6, 4(a2)
	add	a3, a3, a5
	mul	a5, a7, a7
	lbu	t0, 5(a2)
	add	a7, a7, a6
	mul	a6, a6, a6
	add	a5, a5, a6
	add	a7, a7, t0
	add	a4, a4, a7
	mul	a6, t0, t0
	lbu	a7, 6(a2)
	lbu	t0, 7(a2)
	add	a5, a5, a6
	add	a3, a3, a5
	mul	a5, a7, a7
	add	a7, a7, t0
	lbu	a6, 8(a2)
	mul	t0, t0, t0
	add	a5, a5, t0
	lbu	t0, 9(a2)
	add	a7, a7, a6
	mul	a6, a6, a6
	add	a5, a5, a6
	add	a7, a7, t0
	add	a4, a4, a7
	mul	a6, t0, t0
	lbu	a7, 10(a2)
	add	a5, a5, a6
	lbu	a6, 11(a2)
	add	a3, a3, a5
	mul	a5, a7, a7
	lbu	t0, 12(a2)
	add	a7, a7, a6
	mul	a6, a6, a6
	add	a5, a5, a6
	add	a7, a7, t0
	lbu	a6, 13(a2)
	mul	t0, t0, t0
	add	a5, a5, t0
	lbu	t0, 14(a2)
	add	a7, a7, a6
	mul	a6, a6, a6
	add	a5, a5, a6
	add	a7, a7, t0
	add	a4, a4, a7
	lbu	a2, 15(a2)
	mul	a6, t0, t0
	add	a5, a5, a6
	add	a3, a3, a5
	add	a4, a4, a2
	mul	a2, a2, a2
	add	a3, a3, a2
	addiw	a1, a1, -1
	add	a0, a0, s10
	bnez	a1, .LBB0_16
# %bb.17:                               #   in Loop: Header=BB0_9 Depth=2
	lui	a0, %hi(pict_type)
	lw	a0, %lo(pict_type)(a0)
	mul	a1, a4, a4
	srliw	a1, a1, 8
	subw	s6, a3, a1
	beq	a0, s5, .LBB0_46
# %bb.18:                               #   in Loop: Header=BB0_9 Depth=2
	li	a1, 1
	beq	a0, a1, .LBB0_6
# %bb.19:                               #   in Loop: Header=BB0_9 Depth=2
	sd	s6, 696(sp)                     # 8-byte Folded Spill
	sd	t5, 336(sp)                     # 8-byte Folded Spill
	sd	t4, 344(sp)                     # 8-byte Folded Spill
	sd	t2, 352(sp)                     # 8-byte Folded Spill
	sd	t3, 360(sp)                     # 8-byte Folded Spill
	ld	a0, 288(sp)                     # 8-byte Folded Reload
	add	a2, a0, s9
	ld	s4, 552(sp)                     # 8-byte Folded Reload
	add	a3, s4, s9
	addi	s7, sp, 988
	sd	s7, 80(sp)
	addi	s6, sp, 992
	sd	s6, 72(sp)
	addi	s8, sp, 996
	sd	s8, 64(sp)
	addi	a1, sp, 1044
	sd	a1, 56(sp)
	addi	a1, sp, 1048
	sd	a1, 48(sp)
	addi	a1, sp, 1052
	sd	a1, 40(sp)
	addi	a1, sp, 1056
	sd	a1, 32(sp)
	addi	a1, sp, 1060
	sd	a1, 24(sp)
	addi	a1, sp, 1064
	sd	a1, 16(sp)
	addi	a1, sp, 1068
	sd	a1, 8(sp)
	lw	s0, 384(sp)                     # 8-byte Folded Reload
	addi	t4, sp, 944
	addi	t5, sp, 928
	addi	t6, sp, 1076
	addi	a1, sp, 1072
	sd	a1, 0(sp)
	mv	a1, s4
	mv	a4, s11
	mv	a5, s0
	ld	s5, 480(sp)                     # 8-byte Folded Reload
	mv	a6, s5
	ld	a7, 296(sp)                     # 8-byte Folded Reload
	ld	t2, 304(sp)                     # 8-byte Folded Reload
	li	t3, 0
	call	field_estimate
	ld	a0, 248(sp)                     # 8-byte Folded Reload
	add	a2, a0, s9
	ld	s1, 320(sp)                     # 8-byte Folded Reload
	add	a3, s1, s9
	sd	s7, 80(sp)
	sd	s6, 72(sp)
	sd	s8, 64(sp)
	addi	a1, sp, 1000
	sd	a1, 56(sp)
	addi	a1, sp, 1004
	sd	a1, 48(sp)
	addi	a1, sp, 1008
	sd	a1, 40(sp)
	addi	a1, sp, 1012
	sd	a1, 32(sp)
	addi	a1, sp, 1016
	sd	a1, 24(sp)
	addi	a1, sp, 1020
	sd	a1, 16(sp)
	addi	a1, sp, 1024
	sd	a1, 8(sp)
	addi	t4, sp, 1040
	addi	t5, sp, 1036
	addi	t6, sp, 1032
	addi	a1, sp, 1028
	sd	a1, 0(sp)
	mv	a1, s1
	sd	s11, 704(sp)                    # 8-byte Folded Spill
	mv	a4, s11
	mv	a5, s0
	mv	a6, s5
	ld	a7, 232(sp)                     # 8-byte Folded Reload
	ld	t2, 240(sp)                     # 8-byte Folded Reload
	li	t3, 0
	call	field_estimate
	lw	a2, 1052(sp)
	mv	t4, s10
	li	s10, 0
	li	a0, 0
	li	a1, 0
	sd	a2, 664(sp)                     # 8-byte Folded Spill
	seqz	a2, a2
	lwu	a7, 944(sp)
	lw	a6, 928(sp)
	sd	a2, 856(sp)                     # 8-byte Folded Spill
	addiw	a2, a2, -1
	and	a2, a2, s9
	sraiw	a5, a7, 1
	srli	a3, a6, 1
	lw	a4, 1008(sp)
	mulw	a3, a3, t4
	sd	a5, 848(sp)                     # 8-byte Folded Spill
	sd	a3, 840(sp)                     # 8-byte Folded Spill
	add	a3, a5, a3
	add	a2, a2, a3
	sd	a4, 656(sp)                     # 8-byte Folded Spill
	seqz	a3, a4
	lwu	t0, 1040(sp)
	lw	a4, 1036(sp)
	sd	a3, 816(sp)                     # 8-byte Folded Spill
	addiw	a3, a3, -1
	sd	s9, 328(sp)                     # 8-byte Folded Spill
	and	a3, a3, s9
	sraiw	t1, t0, 1
	srli	a5, a4, 1
	mulw	a5, a5, t4
	sd	t1, 824(sp)                     # 8-byte Folded Spill
	sd	a5, 808(sp)                     # 8-byte Folded Spill
	add	a5, t1, a5
	add	a3, a3, a5
	add	s0, a3, s1
	sd	a7, 640(sp)                     # 8-byte Folded Spill
	andi	a5, a7, 1
	sd	a6, 648(sp)                     # 8-byte Folded Spill
	andi	a6, a6, 1
	sd	t0, 624(sp)                     # 8-byte Folded Spill
	andi	t6, t0, 1
	sd	a4, 632(sp)                     # 8-byte Folded Spill
	andi	a4, a4, 1
	sd	a4, 176(sp)                     # 8-byte Folded Spill
	mulw	a4, a4, t4
	sd	a6, 280(sp)                     # 8-byte Folded Spill
	mulw	t2, a6, t4
	sd	t4, 720(sp)                     # 8-byte Folded Spill
	addiw	t4, t4, -16
	addi	t4, t4, 16
	sd	t4, 920(sp)                     # 8-byte Folded Spill
	sd	a4, 792(sp)                     # 8-byte Folded Spill
	add	a3, a3, a4
	add	a7, s1, t6
	add	a7, a7, a3
	sd	a7, 912(sp)                     # 8-byte Folded Spill
	add	a3, s1, a3
	sd	a3, 904(sp)                     # 8-byte Folded Spill
	add	s2, s3, s2
	sd	t2, 800(sp)                     # 8-byte Folded Spill
	add	t2, a2, t2
	add	t1, s4, a5
	add	t1, t1, t2
	sd	t1, 896(sp)                     # 8-byte Folded Spill
	add	t2, s4, t2
	add	t3, a2, s4
	ld	t5, 424(sp)                     # 8-byte Folded Reload
	add	t5, t5, a2
	sd	t6, 832(sp)                     # 8-byte Folded Spill
	mv	t1, s0
	add	t6, s0, t6
	sd	a5, 864(sp)                     # 8-byte Folded Spill
	add	a5, t3, a5
	ld	s1, 392(sp)                     # 8-byte Folded Reload
	sd	s2, 872(sp)                     # 8-byte Folded Spill
	add	s1, s1, s2
.LBB0_20:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_21 Depth 4
	mv	s2, s1
	mv	s3, t1
	mv	s0, a5
	mv	a2, t2
	ld	a3, 896(sp)                     # 8-byte Folded Reload
	mv	s4, t6
	ld	s5, 904(sp)                     # 8-byte Folded Reload
	ld	s6, 912(sp)                     # 8-byte Folded Reload
	mv	s7, t3
.LBB0_21:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_20 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add	s8, s7, s10
	add	t4, s6, s10
	add	a7, s5, s10
	add	s11, s4, s10
	add	ra, a3, s10
	add	a4, a2, s10
	add	a6, s0, s10
	lbu	s8, 0(s8)
	lbu	a6, 0(a6)
	lbu	a4, 0(a4)
	lbu	ra, 0(ra)
	add	s9, s3, s10
	add	t0, s2, s10
	add	a6, s8, a6
	add	a4, a4, ra
	add	a4, a6, a4
	lbu	a6, 0(s9)
	lbu	s8, 0(s11)
	lbu	a7, 0(a7)
	lbu	t4, 0(t4)
	addi	a4, a4, 2
	srli	a4, a4, 2
	add	a6, a6, s8
	add	a7, a7, t4
	add	a6, a6, a7
	addi	a6, a6, 2
	srli	a6, a6, 2
	lbu	a7, 0(t0)
	add	a4, a4, a6
	addi	a4, a4, 1
	srli	a4, a4, 1
	sub	a4, a4, a7
	sraiw	a6, a4, 31
	xor	a4, a4, a6
	subw	a0, a6, a0
	subw	a0, a4, a0
	addi	s7, s7, 1
	addi	s6, s6, 1
	addi	s5, s5, 1
	addi	s4, s4, 1
	addi	a3, a3, 1
	addi	a2, a2, 1
	addi	s0, s0, 1
	addi	s3, s3, 1
	addi	s2, s2, 1
	bne	s7, t5, .LBB0_21
# %bb.22:                               #   in Loop: Header=BB0_20 Depth=3
	addiw	a1, a1, 1
	ld	a2, 920(sp)                     # 8-byte Folded Reload
	add	s10, s10, a2
	li	a2, 16
	bne	a1, a2, .LBB0_20
# %bb.23:                               #   in Loop: Header=BB0_9 Depth=2
	lw	a1, 1048(sp)
	li	ra, 0
	li	t2, 0
	li	a4, 0
	sd	a1, 616(sp)                     # 8-byte Folded Spill
	seqz	a2, a1
	lwu	t1, 1076(sp)
	lw	t0, 1072(sp)
	sd	a2, 208(sp)                     # 8-byte Folded Spill
	addiw	a2, a2, -1
	ld	a1, 328(sp)                     # 8-byte Folded Reload
	sd	a2, 512(sp)                     # 8-byte Folded Spill
	and	a2, a2, a1
	sraiw	a6, t1, 1
	srli	a3, t0, 1
	lw	a5, 1004(sp)
	ld	a7, 720(sp)                     # 8-byte Folded Reload
	mulw	a3, a3, a7
	sd	a6, 776(sp)                     # 8-byte Folded Spill
	sd	a3, 768(sp)                     # 8-byte Folded Spill
	add	a3, a6, a3
	add	a2, a2, a3
	sd	a5, 608(sp)                     # 8-byte Folded Spill
	seqz	a3, a5
	lwu	t4, 1032(sp)
	lw	t3, 1028(sp)
	sd	a3, 160(sp)                     # 8-byte Folded Spill
	addiw	a3, a3, -1
	sd	a3, 504(sp)                     # 8-byte Folded Spill
	and	a3, a3, a1
	sraiw	a1, t4, 1
	srli	a5, t3, 1
	mulw	a5, a5, a7
	sd	a1, 728(sp)                     # 8-byte Folded Spill
	sd	a5, 712(sp)                     # 8-byte Folded Spill
	add	a5, a1, a5
	add	a6, a3, a5
	ld	a1, 320(sp)                     # 8-byte Folded Reload
	add	s2, a6, a1
	sd	t1, 592(sp)                     # 8-byte Folded Spill
	andi	a3, t1, 1
	sd	t0, 600(sp)                     # 8-byte Folded Spill
	andi	a5, t0, 1
	sd	t4, 576(sp)                     # 8-byte Folded Spill
	andi	t4, t4, 1
	sd	t3, 584(sp)                     # 8-byte Folded Spill
	andi	t3, t3, 1
	sd	t3, 168(sp)                     # 8-byte Folded Spill
	mulw	t0, t3, a7
	sd	a5, 200(sp)                     # 8-byte Folded Spill
	mulw	t6, a5, a7
	sd	t0, 488(sp)                     # 8-byte Folded Spill
	add	a6, a6, t0
	add	a7, a1, t4
	add	a7, a7, a6
	sd	a7, 912(sp)                     # 8-byte Folded Spill
	add	a1, a1, a6
	sd	a1, 904(sp)                     # 8-byte Folded Spill
	sd	t6, 496(sp)                     # 8-byte Folded Spill
	add	t6, a2, t6
	ld	s0, 552(sp)                     # 8-byte Folded Reload
	add	t5, s0, a3
	add	t5, t5, t6
	sd	t5, 896(sp)                     # 8-byte Folded Spill
	add	t6, s0, t6
	sd	t6, 888(sp)                     # 8-byte Folded Spill
	add	s0, a2, s0
	ld	s1, 424(sp)                     # 8-byte Folded Reload
	add	s1, s1, a2
	sd	t4, 736(sp)                     # 8-byte Folded Spill
	mv	t6, s2
	add	s2, s2, t4
	sd	a3, 784(sp)                     # 8-byte Folded Spill
	add	a7, s0, a3
	ld	s4, 392(sp)                     # 8-byte Folded Reload
	ld	a1, 872(sp)                     # 8-byte Folded Reload
	add	s4, s4, a1
.LBB0_24:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_25 Depth 4
	mv	s5, s4
	mv	s6, t6
	mv	s3, a7
	ld	a2, 888(sp)                     # 8-byte Folded Reload
	ld	t0, 896(sp)                     # 8-byte Folded Reload
	mv	t1, s2
	ld	s7, 904(sp)                     # 8-byte Folded Reload
	ld	s8, 912(sp)                     # 8-byte Folded Reload
	mv	s9, s0
.LBB0_25:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_24 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add	t4, s9, ra
	add	a5, s8, ra
	add	a3, s7, ra
	add	t3, t1, ra
	add	a1, t0, ra
	add	s10, a2, ra
	add	a6, s3, ra
	lbu	t4, 0(t4)
	lbu	a6, 0(a6)
	lbu	s10, 0(s10)
	lbu	a1, 0(a1)
	add	s11, s6, ra
	add	t5, s5, ra
	add	a6, t4, a6
	add	a1, s10, a1
	add	a1, a6, a1
	lbu	a6, 0(s11)
	lbu	t3, 0(t3)
	lbu	a3, 0(a3)
	lbu	a5, 0(a5)
	addi	a1, a1, 2
	srli	a1, a1, 2
	add	a6, a6, t3
	add	a3, a3, a5
	add	a3, a6, a3
	addi	a3, a3, 2
	srli	a3, a3, 2
	lbu	a5, 0(t5)
	add	a1, a1, a3
	addi	a1, a1, 1
	srli	a1, a1, 1
	sub	a1, a1, a5
	sraiw	a3, a1, 31
	xor	a1, a1, a3
	subw	a3, a3, t2
	subw	t2, a1, a3
	addi	s9, s9, 1
	addi	s8, s8, 1
	addi	s7, s7, 1
	addi	t1, t1, 1
	addi	t0, t0, 1
	addi	a2, a2, 1
	addi	s3, s3, 1
	addi	s6, s6, 1
	addi	s5, s5, 1
	bne	s9, s1, .LBB0_25
# %bb.26:                               #   in Loop: Header=BB0_24 Depth=3
	addiw	a4, a4, 1
	ld	a1, 920(sp)                     # 8-byte Folded Reload
	add	ra, ra, a1
	li	a1, 8
	bne	a4, a1, .LBB0_24
# %bb.27:                               #   in Loop: Header=BB0_9 Depth=2
	lw	a1, 1044(sp)
	li	s2, 0
	li	s7, 0
	li	ra, 0
	sd	a1, 568(sp)                     # 8-byte Folded Spill
	seqz	a2, a1
	lwu	t0, 1068(sp)
	lw	a7, 1064(sp)
	sd	a2, 192(sp)                     # 8-byte Folded Spill
	addiw	a2, a2, -1
	ld	a5, 328(sp)                     # 8-byte Folded Reload
	sd	a2, 472(sp)                     # 8-byte Folded Spill
	and	a2, a2, a5
	sraiw	a4, t0, 1
	srli	a3, a7, 1
	lw	a1, 1000(sp)
	ld	a6, 720(sp)                     # 8-byte Folded Reload
	mulw	a3, a3, a6
	sd	a4, 752(sp)                     # 8-byte Folded Spill
	sd	a3, 744(sp)                     # 8-byte Folded Spill
	add	a3, a4, a3
	add	a3, a2, a3
	sd	a1, 560(sp)                     # 8-byte Folded Spill
	seqz	a2, a1
	lwu	t3, 1024(sp)
	lw	t1, 1020(sp)
	sd	a2, 144(sp)                     # 8-byte Folded Spill
	addiw	a2, a2, -1
	sd	a2, 464(sp)                     # 8-byte Folded Spill
	and	a2, a2, a5
	sraiw	a1, t3, 1
	srli	a4, t1, 1
	mulw	a4, a4, a6
	sd	a1, 680(sp)                     # 8-byte Folded Spill
	sd	a4, 672(sp)                     # 8-byte Folded Spill
	add	a4, a1, a4
	add	a2, a2, a4
	ld	a1, 320(sp)                     # 8-byte Folded Reload
	add	t4, a2, a1
	slliw	a4, a5, 4
	sd	t0, 536(sp)                     # 8-byte Folded Spill
	andi	s5, t0, 1
	sd	a7, 544(sp)                     # 8-byte Folded Spill
	andi	t0, a7, 1
	sd	t3, 520(sp)                     # 8-byte Folded Spill
	andi	a5, t3, 1
	sd	t1, 528(sp)                     # 8-byte Folded Spill
	andi	a7, t1, 1
	sd	a7, 152(sp)                     # 8-byte Folded Spill
	mulw	a7, a7, a6
	sd	t0, 184(sp)                     # 8-byte Folded Spill
	mulw	t0, t0, a6
	sd	a7, 368(sp)                     # 8-byte Folded Spill
	add	a2, a2, a7
	add	s10, a1, a5
	add	s10, s10, a2
	sd	s10, 904(sp)                    # 8-byte Folded Spill
	add	a1, a1, a2
	sd	a1, 896(sp)                     # 8-byte Folded Spill
	sd	t0, 400(sp)                     # 8-byte Folded Spill
	add	t0, a3, t0
	ld	a2, 552(sp)                     # 8-byte Folded Reload
	add	t1, a2, s5
	add	t1, t1, t0
	sd	t1, 888(sp)                     # 8-byte Folded Spill
	add	t0, a2, t0
	sd	t0, 880(sp)                     # 8-byte Folded Spill
	ld	a1, 704(sp)                     # 8-byte Folded Reload
	add	a1, a1, a4
	sd	a1, 256(sp)                     # 8-byte Folded Spill
	ld	a1, 872(sp)                     # 8-byte Folded Reload
	add	a1, a1, a4
	add	a2, a3, a2
	ld	t3, 424(sp)                     # 8-byte Folded Reload
	add	t3, t3, a3
	sd	a5, 688(sp)                     # 8-byte Folded Spill
	sd	t4, 912(sp)                     # 8-byte Folded Spill
	add	a6, t4, a5
	sd	s5, 760(sp)                     # 8-byte Folded Spill
	add	s5, a2, s5
	ld	t5, 392(sp)                     # 8-byte Folded Reload
	sd	a1, 328(sp)                     # 8-byte Folded Spill
	add	t5, t5, a1
.LBB0_28:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_29 Depth 4
	mv	a7, t5
	ld	t6, 912(sp)                     # 8-byte Folded Reload
	mv	s6, s5
	ld	s8, 880(sp)                     # 8-byte Folded Reload
	ld	s4, 888(sp)                     # 8-byte Folded Reload
	mv	a5, a6
	ld	s3, 896(sp)                     # 8-byte Folded Reload
	ld	s9, 904(sp)                     # 8-byte Folded Reload
	mv	a4, a2
.LBB0_29:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_28 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add	a3, a4, s2
	add	t1, s9, s2
	add	s11, s3, s2
	add	s10, a5, s2
	add	a1, s4, s2
	add	t4, s8, s2
	add	s0, s6, s2
	lbu	a3, 0(a3)
	lbu	s0, 0(s0)
	lbu	t4, 0(t4)
	lbu	a1, 0(a1)
	add	s1, t6, s2
	add	t0, a7, s2
	add	a3, a3, s0
	add	a1, t4, a1
	add	a1, a3, a1
	lbu	a3, 0(s1)
	lbu	t4, 0(s10)
	lbu	s0, 0(s11)
	lbu	t1, 0(t1)
	addi	a1, a1, 2
	srli	a1, a1, 2
	add	a3, a3, t4
	add	t1, s0, t1
	add	a3, a3, t1
	addi	a3, a3, 2
	srli	a3, a3, 2
	lbu	t0, 0(t0)
	add	a1, a1, a3
	addi	a1, a1, 1
	srli	a1, a1, 1
	sub	a1, a1, t0
	sraiw	a3, a1, 31
	xor	a1, a1, a3
	subw	a3, a3, s7
	subw	s7, a1, a3
	addi	a4, a4, 1
	addi	s9, s9, 1
	addi	s3, s3, 1
	addi	a5, a5, 1
	addi	s4, s4, 1
	addi	s8, s8, 1
	addi	s6, s6, 1
	addi	t6, t6, 1
	addi	a7, a7, 1
	bne	a4, t3, .LBB0_29
# %bb.30:                               #   in Loop: Header=BB0_28 Depth=3
	addiw	ra, ra, 1
	ld	a1, 920(sp)                     # 8-byte Folded Reload
	add	s2, s2, a1
	li	a1, 8
	bne	ra, a1, .LBB0_28
# %bb.31:                               #   in Loop: Header=BB0_9 Depth=2
	lw	a5, 1060(sp)
	lw	a4, 1056(sp)
	lw	a1, 1016(sp)
	lw	a2, 1012(sp)
	addw	a6, s7, t2
	bge	a0, a6, .LBB0_68
# %bb.32:                               #   in Loop: Header=BB0_9 Depth=2
	bge	a0, a5, .LBB0_68
# %bb.33:                               #   in Loop: Header=BB0_9 Depth=2
	bge	a0, a4, .LBB0_68
# %bb.34:                               #   in Loop: Header=BB0_9 Depth=2
	bge	a0, a1, .LBB0_68
# %bb.35:                               #   in Loop: Header=BB0_9 Depth=2
	bge	a0, a2, .LBB0_68
# %bb.36:                               #   in Loop: Header=BB0_9 Depth=2
	li	a0, 1
	slli	a0, a0, 32
	addi	a0, a0, 12
	ld	a1, 360(sp)                     # 8-byte Folded Reload
	sd	a0, 0(a1)
	lui	a0, %hi(width)
	lw	a2, %lo(width)(a0)
	li	t4, 0
	li	a0, 0
	li	a4, 0
	ld	a3, 848(sp)                     # 8-byte Folded Reload
	ld	a1, 840(sp)                     # 8-byte Folded Reload
	add	a3, a3, a1
	ld	a5, 856(sp)                     # 8-byte Folded Reload
	addi	a5, a5, -1
	and	a5, a5, a2
	add	t5, a5, a3
	ld	a3, 816(sp)                     # 8-byte Folded Reload
	addi	a3, a3, -1
	and	a2, a3, a2
	ld	a1, 552(sp)                     # 8-byte Folded Reload
	add	a7, t5, a1
	ld	a3, 824(sp)                     # 8-byte Folded Reload
	ld	a5, 808(sp)                     # 8-byte Folded Reload
	add	a3, a3, a5
	add	a2, a2, a3
	ld	t1, 320(sp)                     # 8-byte Folded Reload
	add	a5, a2, t1
	ld	a3, 792(sp)                     # 8-byte Folded Reload
	add	a2, a2, a3
	ld	a3, 832(sp)                     # 8-byte Folded Reload
	add	t0, t1, a3
	add	t0, t0, a2
	sd	t0, 904(sp)                     # 8-byte Folded Spill
	add	a2, t1, a2
	sd	a2, 896(sp)                     # 8-byte Folded Spill
	sd	a5, 912(sp)                     # 8-byte Folded Spill
	add	a3, a5, a3
	ld	t3, 800(sp)                     # 8-byte Folded Reload
	add	t3, t5, t3
	ld	a6, 864(sp)                     # 8-byte Folded Reload
	add	t2, a1, a6
	add	t2, t2, t3
	add	t3, a1, t3
	mv	t1, a7
	add	a6, a7, a6
	ld	a2, 392(sp)                     # 8-byte Folded Reload
	ld	a1, 872(sp)                     # 8-byte Folded Reload
	add	a2, a2, a1
	ld	a1, 424(sp)                     # 8-byte Folded Reload
	add	t5, a1, t5
.LBB0_37:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_38 Depth 4
	mv	t6, a2
	ld	s0, 912(sp)                     # 8-byte Folded Reload
	mv	s1, a6
	mv	s2, t3
	mv	s3, t2
	mv	s4, a3
	ld	s5, 896(sp)                     # 8-byte Folded Reload
	ld	s6, 904(sp)                     # 8-byte Folded Reload
	mv	s7, t1
.LBB0_38:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_37 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add	a5, s7, t4
	add	s8, s6, t4
	add	s9, s5, t4
	add	s10, s4, t4
	add	s11, s3, t4
	add	ra, s2, t4
	add	a1, s1, t4
	lbu	a5, 0(a5)
	lbu	a1, 0(a1)
	lbu	ra, 0(ra)
	lbu	s11, 0(s11)
	add	t0, s0, t4
	add	a7, t6, t4
	add	a1, a5, a1
	add	s11, ra, s11
	add	a1, a1, s11
	lbu	a5, 0(t0)
	lbu	t0, 0(s10)
	lbu	s9, 0(s9)
	lbu	s8, 0(s8)
	addi	a1, a1, 2
	srli	a1, a1, 2
	add	a5, a5, t0
	add	s8, s9, s8
	add	a5, a5, s8
	addi	a5, a5, 2
	srli	a5, a5, 2
	lbu	a7, 0(a7)
	add	a1, a1, a5
	addi	a1, a1, 1
	srli	a1, a1, 1
	subw	a1, a1, a7
	mul	a1, a1, a1
	addw	a0, a1, a0
	addi	s7, s7, 1
	addi	s6, s6, 1
	addi	s5, s5, 1
	addi	s4, s4, 1
	addi	s3, s3, 1
	addi	s2, s2, 1
	addi	s1, s1, 1
	addi	s0, s0, 1
	addi	t6, t6, 1
	bne	s7, t5, .LBB0_38
# %bb.39:                               #   in Loop: Header=BB0_37 Depth=3
	addiw	a4, a4, 1
	ld	a1, 920(sp)                     # 8-byte Folded Reload
	add	t4, t4, a1
	li	a1, 16
	bne	a4, a1, .LBB0_37
# %bb.40:                               #   in Loop: Header=BB0_9 Depth=2
	li	s1, 1
	j	.LBB0_81
.LBB0_41:                               #   in Loop: Header=BB0_9 Depth=2
	sd	t5, 336(sp)                     # 8-byte Folded Spill
	sd	t4, 344(sp)                     # 8-byte Folded Spill
	sd	t2, 352(sp)                     # 8-byte Folded Spill
	sd	t3, 360(sp)                     # 8-byte Folded Spill
	lui	a0, %hi(frame_pred_dct)
	lw	a0, %lo(frame_pred_dct)(a0)
	ld	a1, 552(sp)                     # 8-byte Folded Reload
	sd	s9, 328(sp)                     # 8-byte Folded Spill
	beqz	a0, .LBB0_82
# %bb.42:                               #   in Loop: Header=BB0_9 Depth=2
	lui	a0, %hi(height)
	lw	t4, %lo(height)(a0)
	lw	a4, 384(sp)                     # 8-byte Folded Reload
	li	t2, 16
	addi	t5, sp, 1076
	addi	t6, sp, 1072
	ld	a0, 288(sp)                     # 8-byte Folded Reload
	mv	s0, a1
	mv	a3, s9
	ld	a5, 480(sp)                     # 8-byte Folded Reload
	ld	a6, 296(sp)                     # 8-byte Folded Reload
	ld	a7, 304(sp)                     # 8-byte Folded Reload
	mv	t3, s9
	mv	s3, a2
	call	fullsearch
	lw	a3, 1076(sp)
	lw	a4, 1072(sp)
	srai	a0, a3, 1
	add	a0, s0, a0
	srli	a1, a4, 1
	mulw	a1, a1, s9
	add	a0, a0, a1
	andi	a3, a3, 1
	andi	a4, a4, 1
	li	a5, 16
	mv	a1, s3
	mv	a2, s9
	call	dist2
	mv	t5, a0
	li	s0, 2
	ld	t3, 360(sp)                     # 8-byte Folded Reload
	sw	s0, 4(t3)
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x23
                                        # implicit-def: $x22
.LBB0_43:                               #   in Loop: Header=BB0_9 Depth=2
	bge	s1, t5, .LBB0_61
# %bb.44:                               #   in Loop: Header=BB0_9 Depth=2
	ld	a0, 272(sp)                     # 8-byte Folded Reload
	blt	t5, a0, .LBB0_61
# %bb.45:                               #   in Loop: Header=BB0_9 Depth=2
	li	a0, 1
	sw	a0, 0(t3)
	sw	s1, 88(t3)
	ld	t1, 312(sp)                     # 8-byte Folded Reload
	ld	a4, 552(sp)                     # 8-byte Folded Reload
	j	.LBB0_187
.LBB0_46:                               #   in Loop: Header=BB0_9 Depth=2
	ld	a1, 288(sp)                     # 8-byte Folded Reload
	add	a2, a1, s9
	ld	a6, 552(sp)                     # 8-byte Folded Reload
	add	a3, a6, s9
	sd	a3, 712(sp)                     # 8-byte Folded Spill
	ld	a3, 136(sp)                     # 8-byte Folded Reload
	sd	t3, 360(sp)                     # 8-byte Folded Spill
	sd	t2, 352(sp)                     # 8-byte Folded Spill
	sd	t4, 344(sp)                     # 8-byte Folded Spill
	sd	t5, 336(sp)                     # 8-byte Folded Spill
	sd	t6, 656(sp)                     # 8-byte Folded Spill
	bnez	a3, .LBB0_47
	j	.LBB0_121
.LBB0_47:                               #   in Loop: Header=BB0_9 Depth=2
	ld	a6, 128(sp)                     # 8-byte Folded Reload
	mv	a0, t1
	li	a3, 1
	ld	a4, 384(sp)                     # 8-byte Folded Reload
	beq	s1, a3, .LBB0_48
	j	.LBB0_122
.LBB0_48:                               #   in Loop: Header=BB0_9 Depth=2
	add	a2, t1, s9
	ld	a0, 128(sp)                     # 8-byte Folded Reload
	add	a0, a0, s9
	sd	a0, 712(sp)                     # 8-byte Folded Spill
	ld	a6, 552(sp)                     # 8-byte Folded Reload
	mv	a0, a1
	j	.LBB0_122
.LBB0_49:                               #   in Loop: Header=BB0_9 Depth=2
	sd	s2, 280(sp)                     # 8-byte Folded Spill
	sd	s1, 256(sp)                     # 8-byte Folded Spill
	sd	t5, 336(sp)                     # 8-byte Folded Spill
	sd	t4, 344(sp)                     # 8-byte Folded Spill
	sd	t2, 352(sp)                     # 8-byte Folded Spill
	sd	t3, 360(sp)                     # 8-byte Folded Spill
	lui	a0, %hi(frame_pred_dct)
	lw	a1, %lo(frame_pred_dct)(a0)
	ld	a0, 288(sp)                     # 8-byte Folded Reload
	ld	s1, 384(sp)                     # 8-byte Folded Reload
	bnez	a1, .LBB0_50
	j	.LBB0_164
.LBB0_50:                               #   in Loop: Header=BB0_9 Depth=2
	lui	a1, %hi(height)
	lw	s6, %lo(height)(a1)
	sext.w	s11, s1
	li	t2, 16
	addi	t5, sp, 1068
	addi	t6, sp, 1064
	mv	a1, a4
	mv	s1, a4
	mv	a3, s9
	mv	a4, s11
	ld	s2, 480(sp)                     # 8-byte Folded Reload
	mv	a5, s2
	ld	a6, 296(sp)                     # 8-byte Folded Reload
	ld	a7, 304(sp)                     # 8-byte Folded Reload
	mv	t3, s9
	mv	t4, s6
	mv	s3, a2
	call	fullsearch
	lwu	a1, 1068(sp)
	lw	a2, 1064(sp)
	sraiw	s0, a1, 1
	srli	a0, a2, 1
	mulw	a0, a0, s9
	add	s0, s0, a0
	add	s5, s0, s1
	sd	a2, 864(sp)                     # 8-byte Folded Spill
	andi	s8, a2, 1
	sd	a1, 872(sp)                     # 8-byte Folded Spill
	andi	s7, a1, 1
	li	a5, 16
	mv	a0, s5
	mv	a1, s3
	mv	a2, s9
	mv	a3, s7
	mv	a4, s8
	call	dist2
	sd	a0, 880(sp)                     # 8-byte Folded Spill
	li	t2, 16
	addi	t5, sp, 1060
	addi	t6, sp, 1056
	ld	a0, 248(sp)                     # 8-byte Folded Reload
	ld	s1, 320(sp)                     # 8-byte Folded Reload
	mv	a1, s1
	mv	a2, s3
	mv	a3, s9
	mv	a4, s11
	mv	a5, s2
	ld	a6, 232(sp)                     # 8-byte Folded Reload
	ld	a7, 240(sp)                     # 8-byte Folded Reload
	mv	t3, s9
	mv	t4, s6
	call	fullsearch
	lwu	a2, 1060(sp)
	lw	a3, 1056(sp)
	sraiw	a0, a2, 1
	add	a0, s1, a0
	srli	a1, a3, 1
	mulw	s6, a1, s9
	add	s6, a0, s6
	sd	a3, 848(sp)                     # 8-byte Folded Spill
	andi	s11, a3, 1
	sd	a2, 856(sp)                     # 8-byte Folded Spill
	andi	s4, a2, 1
	li	a5, 16
	mv	a0, s6
	mv	a1, s3
	mv	a2, s9
	mv	a3, s4
	mv	a4, s11
	call	dist2
	li	a1, 0
	li	a2, 0
	li	a4, 0
	sd	a0, 840(sp)                     # 8-byte Folded Spill
	mulw	a5, s11, s9
	add	a5, s6, a5
	sd	a5, 912(sp)                     # 8-byte Folded Spill
	add	a5, a5, s4
	sd	a5, 904(sp)                     # 8-byte Folded Spill
	sd	s6, 920(sp)                     # 8-byte Folded Spill
	add	s4, s6, s4
	sd	s4, 896(sp)                     # 8-byte Folded Spill
	mulw	a7, s8, s9
	add	a7, s5, a7
	add	a3, a7, s7
	sd	a3, 888(sp)                     # 8-byte Folded Spill
	mv	t0, s5
	add	t1, s5, s7
	addiw	t2, s9, -16
	addi	t2, t2, 16
	ld	t3, 392(sp)                     # 8-byte Folded Reload
	ld	a3, 280(sp)                     # 8-byte Folded Reload
	add	t3, t3, a3
	ld	a3, 424(sp)                     # 8-byte Folded Reload
	add	s0, a3, s0
.LBB0_51:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_52 Depth 4
	mv	t4, t3
	ld	t5, 920(sp)                     # 8-byte Folded Reload
	mv	t6, t1
	mv	s2, a7
	ld	s3, 888(sp)                     # 8-byte Folded Reload
	ld	s5, 896(sp)                     # 8-byte Folded Reload
	ld	s7, 912(sp)                     # 8-byte Folded Reload
	ld	s8, 904(sp)                     # 8-byte Folded Reload
	mv	s9, t0
.LBB0_52:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_51 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add	s10, s9, a1
	add	s11, s8, a1
	add	ra, s7, a1
	add	a6, s5, a1
	add	s1, s3, a1
	add	s6, s2, a1
	add	a3, t6, a1
	lbu	s10, 0(s10)
	lbu	a3, 0(a3)
	lbu	s6, 0(s6)
	lbu	s1, 0(s1)
	add	s4, t5, a1
	add	a5, t4, a1
	add	a3, s10, a3
	add	s1, s6, s1
	add	a3, a3, s1
	lbu	s1, 0(s4)
	lbu	a6, 0(a6)
	lbu	s4, 0(ra)
	lbu	s6, 0(s11)
	addi	a3, a3, 2
	srli	a3, a3, 2
	add	a6, s1, a6
	add	s4, s4, s6
	add	a6, a6, s4
	addi	a6, a6, 2
	srli	a6, a6, 2
	lbu	a5, 0(a5)
	add	a3, a3, a6
	addi	a3, a3, 1
	srli	a3, a3, 1
	subw	a3, a3, a5
	mul	a3, a3, a3
	addw	a2, a3, a2
	addi	s9, s9, 1
	addi	s8, s8, 1
	addi	s7, s7, 1
	addi	s5, s5, 1
	addi	s3, s3, 1
	addi	s2, s2, 1
	addi	t6, t6, 1
	addi	t5, t5, 1
	addi	t4, t4, 1
	bne	s9, s0, .LBB0_52
# %bb.53:                               #   in Loop: Header=BB0_51 Depth=3
	addiw	a4, a4, 1
	add	a1, a1, t2
	li	a3, 16
	bne	a4, a3, .LBB0_51
# %bb.54:                               #   in Loop: Header=BB0_9 Depth=2
	li	a3, 12
	blt	a2, a0, .LBB0_56
# %bb.55:                               #   in Loop: Header=BB0_9 Depth=2
	li	a3, 4
.LBB0_56:                               #   in Loop: Header=BB0_9 Depth=2
	ld	t1, 312(sp)                     # 8-byte Folded Reload
	ld	t3, 360(sp)                     # 8-byte Folded Reload
	li	s5, 2
	ld	a5, 384(sp)                     # 8-byte Folded Reload
	ld	a4, 256(sp)                     # 8-byte Folded Reload
	ld	a6, 880(sp)                     # 8-byte Folded Reload
	blt	a0, a2, .LBB0_58
# %bb.57:                               #   in Loop: Header=BB0_9 Depth=2
	mv	a0, a2
.LBB0_58:                               #   in Loop: Header=BB0_9 Depth=2
	ld	a1, 840(sp)                     # 8-byte Folded Reload
	slt	a1, a1, a6
	slt	a2, a2, a6
	or	a1, a1, a2
	bnez	a1, .LBB0_60
# %bb.59:                               #   in Loop: Header=BB0_9 Depth=2
	li	a3, 8
	mv	a0, a6
.LBB0_60:                               #   in Loop: Header=BB0_9 Depth=2
	sw	a3, 0(t3)
	sw	s5, 4(t3)
	li	s0, 1
                                        # implicit-def: $x11
                                        # kill: killed $x11
                                        # implicit-def: $x11
                                        # kill: killed $x11
                                        # implicit-def: $x11
                                        # kill: killed $x11
                                        # implicit-def: $x11
                                        # kill: killed $x11
                                        # implicit-def: $x11
                                        # kill: killed $x11
                                        # implicit-def: $x11
                                        # kill: killed $x11
                                        # implicit-def: $x11
                                        # kill: killed $x11
                                        # implicit-def: $x11
                                        # kill: killed $x11
                                        # implicit-def: $x11
                                        # kill: killed $x11
                                        # implicit-def: $x11
                                        # kill: killed $x11
                                        # implicit-def: $x11
                                        # kill: killed $x11
                                        # implicit-def: $x11
                                        # kill: killed $x11
	bge	a4, a0, .LBB0_282
	j	.LBB0_270
.LBB0_282:                              #   in Loop: Header=BB0_9 Depth=2
	j	.LBB0_272
.LBB0_61:                               #   in Loop: Header=BB0_9 Depth=2
	li	a5, 0
	li	a0, 16
	ld	a1, 352(sp)                     # 8-byte Folded Reload
	ld	a2, 344(sp)                     # 8-byte Folded Reload
	ld	t4, 328(sp)                     # 8-byte Folded Reload
.LBB0_62:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add	a3, a2, s2
	add	a4, a1, s2
	lbu	a6, 0(a3)
	lbu	a7, -7(a4)
	subw	a6, a6, a7
	mul	a6, a6, a6
	lbu	a7, 1(a3)
	lbu	t0, -6(a4)
	lbu	t1, 2(a3)
	lbu	t2, -5(a4)
	add	a5, a6, a5
	subw	a6, a7, t0
	mul	a6, a6, a6
	subw	a7, t1, t2
	lbu	t0, 3(a3)
	lbu	t1, -4(a4)
	mul	a7, a7, a7
	add	a6, a6, a7
	add	a5, a5, a6
	subw	a6, t0, t1
	lbu	a7, 4(a3)
	lbu	t0, -3(a4)
	mul	a6, a6, a6
	lbu	t1, 5(a3)
	lbu	t2, -2(a4)
	subw	a7, a7, t0
	mul	a7, a7, a7
	add	a6, a6, a7
	subw	a7, t1, t2
	mul	a7, a7, a7
	add	a6, a6, a7
	lbu	a7, 6(a3)
	lbu	t0, -1(a4)
	lbu	t1, 7(a3)
	lbu	t2, 0(a4)
	add	a5, a5, a6
	subw	a6, a7, t0
	mul	a6, a6, a6
	subw	a7, t1, t2
	mul	a7, a7, a7
	lbu	t0, 8(a3)
	lbu	t1, 1(a4)
	add	a6, a6, a7
	lbu	a7, 9(a3)
	lbu	t2, 2(a4)
	subw	t0, t0, t1
	mul	t0, t0, t0
	add	a6, a6, t0
	subw	a7, a7, t2
	lbu	t0, 10(a3)
	lbu	t1, 3(a4)
	mul	a7, a7, a7
	add	a6, a6, a7
	add	a5, a5, a6
	subw	a6, t0, t1
	lbu	a7, 11(a3)
	lbu	t0, 4(a4)
	mul	a6, a6, a6
	lbu	t1, 12(a3)
	lbu	t2, 5(a4)
	subw	a7, a7, t0
	mul	a7, a7, a7
	add	a6, a6, a7
	subw	a7, t1, t2
	mul	a7, a7, a7
	lbu	t0, 13(a3)
	lbu	t1, 6(a4)
	add	a6, a6, a7
	lbu	a7, 14(a3)
	lbu	t2, 7(a4)
	subw	t0, t0, t1
	mul	t0, t0, t0
	add	a6, a6, t0
	subw	a7, a7, t2
	lbu	a3, 15(a3)
	lbu	a4, 8(a4)
	mul	a7, a7, a7
	add	a6, a6, a7
	add	a5, a5, a6
	subw	a3, a3, a4
	mul	a3, a3, a3
	addw	a5, a5, a3
	addiw	a0, a0, -1
	add	a2, a2, t4
	add	a1, a1, t4
	bnez	a0, .LBB0_62
# %bb.63:                               #   in Loop: Header=BB0_9 Depth=2
	ld	a4, 552(sp)                     # 8-byte Folded Reload
	ld	a0, 272(sp)                     # 8-byte Folded Reload
	bge	a5, a0, .LBB0_64
	j	.LBB0_186
.LBB0_64:                               #   in Loop: Header=BB0_9 Depth=2
	slliw	a0, a5, 2
	slli	a1, t5, 2
	addw	a1, a1, t5
	blt	a1, a0, .LBB0_65
	j	.LBB0_186
.LBB0_65:                               #   in Loop: Header=BB0_9 Depth=2
	li	a0, 8
	sw	a0, 0(t3)
	ld	t1, 312(sp)                     # 8-byte Folded Reload
	li	a0, 3
	bne	s0, a0, .LBB0_66
	j	.LBB0_247
.LBB0_66:                               #   in Loop: Header=BB0_9 Depth=2
	ld	a5, 384(sp)                     # 8-byte Folded Reload
	beq	s0, s5, .LBB0_67
	j	.LBB0_248
.LBB0_67:                               #   in Loop: Header=BB0_9 Depth=2
	lw	a0, 1076(sp)
	lw	a1, 1072(sp)
	slli	a2, a5, 1
	subw	a0, a0, a2
	sw	a0, 24(t3)
	ld	a0, 224(sp)                     # 8-byte Folded Reload
	subw	a0, a1, a0
	sw	a0, 28(t3)
	j	.LBB0_249
.LBB0_68:                               #   in Loop: Header=BB0_9 Depth=2
	ld	a3, 360(sp)                     # 8-byte Folded Reload
	blt	a6, a5, .LBB0_69
	j	.LBB0_188
.LBB0_69:                               #   in Loop: Header=BB0_9 Depth=2
	blt	a6, a4, .LBB0_70
	j	.LBB0_188
.LBB0_70:                               #   in Loop: Header=BB0_9 Depth=2
	blt	a6, a1, .LBB0_71
	j	.LBB0_188
.LBB0_71:                               #   in Loop: Header=BB0_9 Depth=2
	blt	a6, a2, .LBB0_72
	j	.LBB0_188
.LBB0_72:                               #   in Loop: Header=BB0_9 Depth=2
	li	a0, 1
	slli	a0, a0, 33
	addi	a0, a0, 12
	sd	a0, 0(a3)
	lui	a0, %hi(width)
	lw	a4, %lo(width)(a0)
	li	t6, 0
	li	a0, 0
	li	a5, 0
	ld	a2, 776(sp)                     # 8-byte Folded Reload
	ld	a1, 768(sp)                     # 8-byte Folded Reload
	add	a2, a2, a1
	ld	a1, 512(sp)                     # 8-byte Folded Reload
	and	a3, a1, a4
	add	a3, a3, a2
	ld	a1, 552(sp)                     # 8-byte Folded Reload
	add	a7, a3, a1
	ld	a2, 504(sp)                     # 8-byte Folded Reload
	sd	a4, 888(sp)                     # 8-byte Folded Spill
	and	a2, a2, a4
	ld	a4, 728(sp)                     # 8-byte Folded Reload
	ld	a6, 712(sp)                     # 8-byte Folded Reload
	add	a4, a4, a6
	add	a2, a2, a4
	ld	s3, 320(sp)                     # 8-byte Folded Reload
	add	a6, a2, s3
	ld	a4, 488(sp)                     # 8-byte Folded Reload
	add	a2, a2, a4
	ld	t1, 736(sp)                     # 8-byte Folded Reload
	add	s1, s3, t1
	add	s1, s1, a2
	sd	s1, 904(sp)                     # 8-byte Folded Spill
	add	a2, s3, a2
	sd	a2, 896(sp)                     # 8-byte Folded Spill
	sd	a6, 912(sp)                     # 8-byte Folded Spill
	add	t1, a6, t1
	ld	t3, 496(sp)                     # 8-byte Folded Reload
	add	t3, a3, t3
	ld	t0, 784(sp)                     # 8-byte Folded Reload
	add	a4, a1, t0
	add	a4, a4, t3
	add	t3, a1, t3
	mv	s3, a7
	add	t0, a7, t0
	ld	a2, 392(sp)                     # 8-byte Folded Reload
	ld	a1, 872(sp)                     # 8-byte Folded Reload
	add	a2, a2, a1
	ld	a7, 424(sp)                     # 8-byte Folded Reload
	add	a7, a7, a3
.LBB0_73:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_74 Depth 4
	mv	t5, a2
	ld	a3, 912(sp)                     # 8-byte Folded Reload
	mv	s0, t0
	mv	s2, t3
	mv	s4, a4
	mv	s5, t1
	ld	s6, 896(sp)                     # 8-byte Folded Reload
	ld	s7, 904(sp)                     # 8-byte Folded Reload
	mv	s8, s3
.LBB0_74:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_73 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add	a6, s8, t6
	add	s9, s7, t6
	add	s10, s6, t6
	add	s11, s5, t6
	add	ra, s4, t6
	add	a1, s2, t6
	add	t4, s0, t6
	lbu	a6, 0(a6)
	lbu	t4, 0(t4)
	lbu	a1, 0(a1)
	lbu	ra, 0(ra)
	add	s1, a3, t6
	add	t2, t5, t6
	add	a6, a6, t4
	add	a1, a1, ra
	add	a1, a6, a1
	lbu	a6, 0(s1)
	lbu	t4, 0(s11)
	lbu	s1, 0(s10)
	lbu	s9, 0(s9)
	addi	a1, a1, 2
	srli	a1, a1, 2
	add	a6, a6, t4
	add	s1, s1, s9
	add	a6, a6, s1
	addi	a6, a6, 2
	srli	a6, a6, 2
	lbu	t2, 0(t2)
	add	a1, a1, a6
	addi	a1, a1, 1
	srli	a1, a1, 1
	subw	a1, a1, t2
	mul	a1, a1, a1
	add	a0, a1, a0
	addi	s8, s8, 1
	addi	s7, s7, 1
	addi	s6, s6, 1
	addi	s5, s5, 1
	addi	s4, s4, 1
	addi	s2, s2, 1
	addi	s0, s0, 1
	addi	a3, a3, 1
	addi	t5, t5, 1
	bne	s8, a7, .LBB0_74
# %bb.75:                               #   in Loop: Header=BB0_73 Depth=3
	addiw	a5, a5, 1
	ld	a1, 920(sp)                     # 8-byte Folded Reload
	add	t6, t6, a1
	li	a1, 8
	bne	a5, a1, .LBB0_73
# %bb.76:                               #   in Loop: Header=BB0_9 Depth=2
	li	a3, 0
	li	a1, 0
	li	a5, 0
	ld	t3, 752(sp)                     # 8-byte Folded Reload
	ld	a2, 744(sp)                     # 8-byte Folded Reload
	add	t3, t3, a2
	ld	a2, 472(sp)                     # 8-byte Folded Reload
	ld	a6, 888(sp)                     # 8-byte Folded Reload
	and	a4, a2, a6
	add	t3, a4, t3
	ld	a2, 464(sp)                     # 8-byte Folded Reload
	and	a4, a2, a6
	ld	a7, 552(sp)                     # 8-byte Folded Reload
	add	t4, t3, a7
	ld	a6, 680(sp)                     # 8-byte Folded Reload
	ld	a2, 672(sp)                     # 8-byte Folded Reload
	add	a6, a6, a2
	add	a6, a4, a6
	ld	a2, 320(sp)                     # 8-byte Folded Reload
	add	a4, a6, a2
	ld	t0, 368(sp)                     # 8-byte Folded Reload
	add	t0, a6, t0
	ld	s2, 688(sp)                     # 8-byte Folded Reload
	add	a6, a2, s2
	add	a6, a6, t0
	sd	a6, 904(sp)                     # 8-byte Folded Spill
	add	a2, a2, t0
	sd	a2, 896(sp)                     # 8-byte Folded Spill
	sd	a4, 912(sp)                     # 8-byte Folded Spill
	add	a4, a4, s2
	sd	a4, 888(sp)                     # 8-byte Folded Spill
	ld	t2, 400(sp)                     # 8-byte Folded Reload
	add	t2, t3, t2
	ld	a2, 760(sp)                     # 8-byte Folded Reload
	add	t1, a7, a2
	add	t1, t1, t2
	add	t2, a7, t2
	mv	s2, t4
	add	a7, t4, a2
	ld	t5, 392(sp)                     # 8-byte Folded Reload
	ld	a2, 328(sp)                     # 8-byte Folded Reload
	add	t5, t5, a2
	ld	a2, 424(sp)                     # 8-byte Folded Reload
	add	t3, a2, t3
.LBB0_77:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_78 Depth 4
	mv	t6, t5
	ld	s0, 912(sp)                     # 8-byte Folded Reload
	mv	s1, a7
	mv	s3, t2
	mv	s4, t1
	ld	s5, 888(sp)                     # 8-byte Folded Reload
	ld	s6, 896(sp)                     # 8-byte Folded Reload
	ld	s7, 904(sp)                     # 8-byte Folded Reload
	mv	s8, s2
.LBB0_78:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_77 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add	a6, s8, a3
	add	s9, s7, a3
	add	s10, s6, a3
	add	s11, s5, a3
	add	ra, s4, a3
	add	a2, s3, a3
	add	t4, s1, a3
	lbu	a6, 0(a6)
	lbu	t4, 0(t4)
	lbu	a2, 0(a2)
	lbu	ra, 0(ra)
	add	a4, s0, a3
	add	t0, t6, a3
	add	a6, a6, t4
	add	a2, a2, ra
	add	a2, a6, a2
	lbu	a4, 0(a4)
	lbu	a6, 0(s11)
	lbu	t4, 0(s10)
	lbu	s9, 0(s9)
	addi	a2, a2, 2
	srli	a2, a2, 2
	add	a4, a4, a6
	add	t4, t4, s9
	add	a4, a4, t4
	addi	a4, a4, 2
	srli	a4, a4, 2
	lbu	a6, 0(t0)
	add	a2, a2, a4
	addi	a2, a2, 1
	srli	a2, a2, 1
	subw	a2, a2, a6
	mul	a2, a2, a2
	add	a1, a2, a1
	addi	s8, s8, 1
	addi	s7, s7, 1
	addi	s6, s6, 1
	addi	s5, s5, 1
	addi	s4, s4, 1
	addi	s3, s3, 1
	addi	s1, s1, 1
	addi	s0, s0, 1
	addi	t6, t6, 1
	bne	s8, t3, .LBB0_78
# %bb.79:                               #   in Loop: Header=BB0_77 Depth=3
	addiw	a5, a5, 1
	ld	a2, 920(sp)                     # 8-byte Folded Reload
	add	a3, a3, a2
	li	a2, 8
	bne	a5, a2, .LBB0_77
# %bb.80:                               #   in Loop: Header=BB0_9 Depth=2
	li	s1, 0
	addw	a0, a1, a0
.LBB0_81:                               #   in Loop: Header=BB0_9 Depth=2
	li	s5, 2
	ld	t2, 352(sp)                     # 8-byte Folded Reload
	ld	t4, 344(sp)                     # 8-byte Folded Reload
	ld	t5, 336(sp)                     # 8-byte Folded Reload
	ld	s6, 696(sp)                     # 8-byte Folded Reload
	ld	t1, 312(sp)                     # 8-byte Folded Reload
	ld	a5, 384(sp)                     # 8-byte Folded Reload
	bge	s6, a0, .LBB0_283
	j	.LBB0_260
.LBB0_283:                              #   in Loop: Header=BB0_9 Depth=2
	j	.LBB0_262
.LBB0_82:                               #   in Loop: Header=BB0_9 Depth=2
	sd	s1, 256(sp)                     # 8-byte Folded Spill
	addi	a0, sp, 928
	sd	a0, 40(sp)
	addi	a0, sp, 944
	sd	a0, 32(sp)
	addi	a0, sp, 976
	sd	a0, 24(sp)
	addi	a0, sp, 980
	sd	a0, 16(sp)
	addi	a0, sp, 992
	sd	a0, 8(sp)
	ld	s1, 384(sp)                     # 8-byte Folded Reload
	sext.w	a3, s1
	addi	a7, sp, 1076
	addi	t2, sp, 1072
	addi	t3, sp, 1052
	addi	t4, sp, 1048
	addi	t5, sp, 1044
	addi	t6, sp, 1040
	addi	a0, sp, 1004
	sd	a0, 0(sp)
	ld	a0, 288(sp)                     # 8-byte Folded Reload
	mv	s0, a1
	sd	a2, 208(sp)                     # 8-byte Folded Spill
	ld	a4, 480(sp)                     # 8-byte Folded Reload
	ld	a5, 296(sp)                     # 8-byte Folded Reload
	ld	a6, 304(sp)                     # 8-byte Folded Reload
	call	frame_estimate
	lui	a0, %hi(M)
	lw	a0, %lo(M)(a0)
	li	a1, 1
	beq	a0, a1, .LBB0_83
	j	.LBB0_192
.LBB0_83:                               #   in Loop: Header=BB0_9 Depth=2
	sd	zero, 464(sp)                   # 8-byte Folded Spill
	lui	a0, %hi(height)
	lw	a0, %lo(height)(a0)
	lui	a1, %hi(topfirst)
	lwu	a1, %lo(topfirst)(a1)
	sd	a1, 472(sp)                     # 8-byte Folded Spill
	ld	a1, 328(sp)                     # 8-byte Folded Reload
	slliw	a2, a1, 1
	addiw	t3, a2, -32
	addiw	a7, a0, -16
	add	s0, s0, a1
	sd	s0, 536(sp)                     # 8-byte Folded Spill
	sd	a2, 544(sp)                     # 8-byte Folded Spill
	addiw	a0, a2, -16
	slli	s1, s1, 1
	sd	s1, 488(sp)                     # 8-byte Folded Spill
	addi	a0, a0, 16
	sd	a0, 920(sp)                     # 8-byte Folded Spill
	ld	a0, 392(sp)                     # 8-byte Folded Reload
	add	a2, a0, s2
	sd	a2, 840(sp)                     # 8-byte Folded Spill
	sd	s2, 280(sp)                     # 8-byte Folded Spill
	add	s2, a1, s2
	sd	s2, 200(sp)                     # 8-byte Folded Spill
	add	s10, a0, s2
	ld	a0, 424(sp)                     # 8-byte Folded Reload
	add	a0, a0, a1
	sd	a0, 400(sp)                     # 8-byte Folded Spill
	lui	t2, 262144
	li	a1, 1
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
	sd	a7, 568(sp)                     # 8-byte Folded Spill
	sd	t3, 688(sp)                     # 8-byte Folded Spill
	sd	s10, 680(sp)                    # 8-byte Folded Spill
	j	.LBB0_85
.LBB0_84:                               #   in Loop: Header=BB0_85 Depth=3
	ld	a0, 368(sp)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	li	a1, 1
	sd	a1, 464(sp)                     # 8-byte Folded Spill
	li	a1, 0
	bnez	a0, .LBB0_85
	j	.LBB0_195
.LBB0_85:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_87 Depth 4
                                        #           Child Loop BB0_102 Depth 5
                                        #             Child Loop BB0_107 Depth 6
                                        #               Child Loop BB0_112 Depth 7
                                        #                 Child Loop BB0_113 Depth 8
                                        #               Child Loop BB0_116 Depth 7
                                        #                 Child Loop BB0_117 Depth 8
	sd	a1, 368(sp)                     # 8-byte Folded Spill
	li	a3, 0
	li	a2, 1
	li	a0, 1
	sd	a0, 496(sp)                     # 8-byte Folded Spill
	j	.LBB0_87
.LBB0_86:                               #   in Loop: Header=BB0_87 Depth=4
	ld	a0, 496(sp)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	li	a3, 1
	ld	a2, 456(sp)                     # 8-byte Folded Reload
	sd	zero, 496(sp)                   # 8-byte Folded Spill
	ld	a7, 568(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB0_84
.LBB0_87:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_85 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_102 Depth 5
                                        #             Child Loop BB0_107 Depth 6
                                        #               Child Loop BB0_112 Depth 7
                                        #                 Child Loop BB0_113 Depth 8
                                        #               Child Loop BB0_116 Depth 7
                                        #                 Child Loop BB0_117 Depth 8
	ld	a6, 464(sp)                     # 8-byte Folded Reload
	slli	a0, a6, 3
	addi	a1, sp, 944
	add	a1, a1, a0
	slli	a4, a3, 2
	add	a1, a1, a4
	lw	a1, 0(a1)
	addi	a5, sp, 928
	add	a0, a5, a0
	add	a0, a0, a4
	lw	a4, 0(a0)
	ld	a0, 488(sp)                     # 8-byte Folded Reload
	subw	a0, a1, a0
	ld	a1, 480(sp)                     # 8-byte Folded Reload
	subw	a1, a4, a1
	beq	a6, a3, .LBB0_92
# %bb.88:                               #   in Loop: Header=BB0_87 Depth=4
	ld	a4, 472(sp)                     # 8-byte Folded Reload
	bne	a3, a4, .LBB0_86
# %bb.89:                               #   in Loop: Header=BB0_87 Depth=4
	slliw	a0, a0, 1
	bltz	a0, .LBB0_94
# %bb.90:                               #   in Loop: Header=BB0_87 Depth=4
	ori	a0, a0, 1
	slli	a0, a0, 32
	ld	a3, 448(sp)                     # 8-byte Folded Reload
	mulhu	a0, a0, a3
	srli	a0, a0, 33
	add	a1, a1, a2
	slliw	a1, a1, 1
	bltz	a1, .LBB0_95
.LBB0_91:                               #   in Loop: Header=BB0_87 Depth=4
	ori	a1, a1, 1
	slli	a1, a1, 32
	ld	a2, 448(sp)                     # 8-byte Folded Reload
	mulhu	a1, a1, a2
	srli	a1, a1, 33
.LBB0_92:                               #   in Loop: Header=BB0_87 Depth=4
	ld	a2, 472(sp)                     # 8-byte Folded Reload
	beqz	a2, .LBB0_96
.LBB0_93:                               #   in Loop: Header=BB0_87 Depth=4
	sgtz	a2, a0
	addw	a2, a0, a2
	sgtz	a4, a1
	addw	a4, a1, a4
	slli	a3, a0, 1
	addw	a3, a2, a3
	slli	a5, a1, 1
	addw	a5, a4, a5
	ld	a6, 488(sp)                     # 8-byte Folded Reload
	addw	t0, a0, a6
	bgez	t0, .LBB0_97
	j	.LBB0_86
.LBB0_94:                               #   in Loop: Header=BB0_87 Depth=4
	li	a3, 1
	subw	a0, a3, a0
	slli	a0, a0, 32
	ld	a3, 448(sp)                     # 8-byte Folded Reload
	mulhu	a0, a0, a3
	srli	a0, a0, 33
	neg	a0, a0
	add	a1, a1, a2
	slliw	a1, a1, 1
	bgez	a1, .LBB0_91
.LBB0_95:                               #   in Loop: Header=BB0_87 Depth=4
	li	a2, 1
	subw	a1, a2, a1
	slli	a1, a1, 32
	ld	a2, 448(sp)                     # 8-byte Folded Reload
	mulhu	a1, a1, a2
	srli	a1, a1, 33
	neg	a1, a1
	ld	a2, 472(sp)                     # 8-byte Folded Reload
	bnez	a2, .LBB0_93
.LBB0_96:                               #   in Loop: Header=BB0_87 Depth=4
	slli	a2, a0, 1
	sgtz	a3, a0
	addw	a3, a0, a3
	addw	a2, a3, a2
	slli	a4, a1, 1
	sgtz	a5, a1
	addw	a5, a1, a5
	addw	a4, a5, a4
	ld	a6, 488(sp)                     # 8-byte Folded Reload
	addw	t0, a0, a6
	bltz	t0, .LBB0_86
.LBB0_97:                               #   in Loop: Header=BB0_87 Depth=4
	blt	t3, t0, .LBB0_86
# %bb.98:                               #   in Loop: Header=BB0_87 Depth=4
	ld	a6, 480(sp)                     # 8-byte Folded Reload
	addw	t1, a1, a6
	bltz	t1, .LBB0_86
# %bb.99:                               #   in Loop: Header=BB0_87 Depth=4
	blt	a7, t1, .LBB0_86
# %bb.100:                              #   in Loop: Header=BB0_87 Depth=4
	srai	a5, a5, 1
	srai	a3, a3, 1
	srai	a4, a4, 1
	srai	a2, a2, 1
	ld	a6, 488(sp)                     # 8-byte Folded Reload
	add	t4, a2, a6
	add	a6, a3, a6
	sd	a6, 784(sp)                     # 8-byte Folded Spill
	ld	a6, 416(sp)                     # 8-byte Folded Reload
	add	a4, a6, a4
	sd	a4, 576(sp)                     # 8-byte Folded Spill
	ld	a4, 408(sp)                     # 8-byte Folded Reload
	add	a4, a4, a5
	sd	a4, 560(sp)                     # 8-byte Folded Spill
	sd	t0, 656(sp)                     # 8-byte Folded Spill
	srliw	a4, t0, 1
	sd	t1, 648(sp)                     # 8-byte Folded Spill
	srliw	a6, t1, 1
	ld	a7, 544(sp)                     # 8-byte Folded Reload
	mulw	a6, a6, a7
	slli	a1, a1, 63
	srai	a1, a1, 63
	and	a1, a1, a7
	andi	a7, a0, 1
	ld	t0, 440(sp)                     # 8-byte Folded Reload
	add	a0, t0, a0
	srliw	a0, a0, 1
	add	s3, a0, a6
	ld	t0, 552(sp)                     # 8-byte Folded Reload
	add	t1, t0, s3
	sd	t1, 888(sp)                     # 8-byte Folded Spill
	ld	t1, 432(sp)                     # 8-byte Folded Reload
	add	t5, t1, a2
	sd	t5, 528(sp)                     # 8-byte Folded Spill
	addi	a2, a2, 1
	sd	a2, 520(sp)                     # 8-byte Folded Spill
	add	a0, a1, a0
	add	a0, a0, a6
	add	a1, a0, a7
	add	a2, t0, a1
	sd	a2, 880(sp)                     # 8-byte Folded Spill
	add	a2, t0, a0
	sd	a2, 872(sp)                     # 8-byte Folded Spill
	add	a7, s3, a7
	add	t0, t0, a7
	sd	t0, 864(sp)                     # 8-byte Folded Spill
	add	a4, a4, a6
	ld	a2, 424(sp)                     # 8-byte Folded Reload
	add	a2, a2, a4
	ld	t0, 536(sp)                     # 8-byte Folded Reload
	add	s11, t0, s3
	ld	a6, 480(sp)                     # 8-byte Folded Reload
	add	a5, a6, a5
	sd	a5, 664(sp)                     # 8-byte Folded Spill
	add	t1, t1, a3
	sd	t1, 512(sp)                     # 8-byte Folded Spill
	addi	a3, a3, 1
	sd	a3, 504(sp)                     # 8-byte Folded Spill
	add	ra, t0, a1
	add	a0, t0, a0
	sd	a0, 856(sp)                     # 8-byte Folded Spill
	add	a7, t0, a7
	sd	a7, 848(sp)                     # 8-byte Folded Spill
	ld	s9, 400(sp)                     # 8-byte Folded Reload
	add	s9, s9, a4
	li	a6, -1
	sd	t4, 712(sp)                     # 8-byte Folded Spill
	sd	s11, 704(sp)                    # 8-byte Folded Spill
	sd	ra, 696(sp)                     # 8-byte Folded Spill
	j	.LBB0_102
.LBB0_101:                              #   in Loop: Header=BB0_102 Depth=5
	addiw	a6, a6, 1
	ld	a0, 664(sp)                     # 8-byte Folded Reload
	addi	a0, a0, 1
	sd	a0, 664(sp)                     # 8-byte Folded Spill
	beq	a6, s5, .LBB0_86
.LBB0_102:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_85 Depth=3
                                        #         Parent Loop BB0_87 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB0_107 Depth 6
                                        #               Child Loop BB0_112 Depth 7
                                        #                 Child Loop BB0_113 Depth 8
                                        #               Child Loop BB0_116 Depth 7
                                        #                 Child Loop BB0_117 Depth 8
	ld	a0, 576(sp)                     # 8-byte Folded Reload
	addw	a0, a0, a6
	bltz	a0, .LBB0_101
# %bb.103:                              #   in Loop: Header=BB0_102 Depth=5
	ld	a1, 568(sp)                     # 8-byte Folded Reload
	blt	a1, a0, .LBB0_101
# %bb.104:                              #   in Loop: Header=BB0_102 Depth=5
	sd	a0, 672(sp)                     # 8-byte Folded Spill
	ld	a0, 560(sp)                     # 8-byte Folded Reload
	addw	a7, a0, a6
	slti	a0, a7, 0
	slt	a1, a1, a7
	or	a0, a0, a1
	bnez	a0, .LBB0_101
# %bb.105:                              # %.preheader
                                        #   in Loop: Header=BB0_102 Depth=5
	ld	a0, 664(sp)                     # 8-byte Folded Reload
	srliw	a0, a0, 1
	ld	a3, 544(sp)                     # 8-byte Folded Reload
	mulw	a0, a3, a0
	ld	a4, 672(sp)                     # 8-byte Folded Reload
	srliw	a1, a4, 1
	mulw	a1, a1, a3
	slli	a4, a4, 63
	srai	a4, a4, 63
	and	a4, a4, a3
	slli	a5, a7, 63
	srai	a5, a5, 63
	and	a5, a5, a3
	add	a4, a4, a1
	ld	a3, 536(sp)                     # 8-byte Folded Reload
	add	a4, a3, a4
	sd	a4, 744(sp)                     # 8-byte Folded Spill
	add	a1, a3, a1
	sd	a1, 736(sp)                     # 8-byte Folded Spill
	ld	a3, 552(sp)                     # 8-byte Folded Reload
	add	a1, a3, a0
	add	a1, a1, a5
	sd	a1, 728(sp)                     # 8-byte Folded Spill
	add	a0, a3, a0
	sd	a0, 720(sp)                     # 8-byte Folded Spill
	li	a3, -1
	ld	a4, 504(sp)                     # 8-byte Folded Reload
	ld	a5, 512(sp)                     # 8-byte Folded Reload
	ld	t0, 520(sp)                     # 8-byte Folded Reload
	ld	t1, 528(sp)                     # 8-byte Folded Reload
	sd	a6, 760(sp)                     # 8-byte Folded Spill
	sd	a7, 752(sp)                     # 8-byte Folded Spill
	j	.LBB0_107
.LBB0_106:                              #   in Loop: Header=BB0_107 Depth=6
	addiw	a3, a3, 1
	addi	t1, t1, 1
	addi	t0, t0, 1
	addi	a5, a5, 1
	addi	a4, a4, 1
	beq	a3, s5, .LBB0_101
.LBB0_107:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_85 Depth=3
                                        #         Parent Loop BB0_87 Depth=4
                                        #           Parent Loop BB0_102 Depth=5
                                        # =>          This Loop Header: Depth=6
                                        #               Child Loop BB0_112 Depth 7
                                        #                 Child Loop BB0_113 Depth 8
                                        #               Child Loop BB0_116 Depth 7
                                        #                 Child Loop BB0_117 Depth 8
	addw	a1, t4, a3
	bltz	a1, .LBB0_106
# %bb.108:                              #   in Loop: Header=BB0_107 Depth=6
	blt	t3, a1, .LBB0_106
# %bb.109:                              #   in Loop: Header=BB0_107 Depth=6
	ld	a0, 784(sp)                     # 8-byte Folded Reload
	addw	a0, a0, a3
	bltz	a0, .LBB0_106
# %bb.110:                              #   in Loop: Header=BB0_107 Depth=6
	bltu	t3, a0, .LBB0_106
# %bb.111:                              #   in Loop: Header=BB0_107 Depth=6
	sd	a0, 768(sp)                     # 8-byte Folded Spill
	sd	a1, 776(sp)                     # 8-byte Folded Spill
	sd	a3, 824(sp)                     # 8-byte Folded Spill
	sd	t2, 832(sp)                     # 8-byte Folded Spill
	li	a3, 0
	li	t2, 0
	li	s10, 0
	sd	a5, 808(sp)                     # 8-byte Folded Spill
	srliw	a5, a5, 1
	sd	a4, 816(sp)                     # 8-byte Folded Spill
	andi	a0, a4, 1
	add	a0, a5, a0
	ld	a1, 728(sp)                     # 8-byte Folded Reload
	add	a4, a1, a0
	sd	a4, 912(sp)                     # 8-byte Folded Spill
	add	a1, a1, a5
	sd	a1, 904(sp)                     # 8-byte Folded Spill
	ld	a1, 720(sp)                     # 8-byte Folded Reload
	add	a0, a1, a0
	sd	a0, 896(sp)                     # 8-byte Folded Spill
	add	a5, a1, a5
	sd	t1, 792(sp)                     # 8-byte Folded Spill
	srliw	a0, t1, 1
	sd	t0, 800(sp)                     # 8-byte Folded Spill
	andi	a4, t0, 1
	add	a4, a0, a4
	ld	a6, 744(sp)                     # 8-byte Folded Reload
	add	t1, a6, a4
	add	a6, a6, a0
	ld	a1, 736(sp)                     # 8-byte Folded Reload
	add	s1, a1, a4
	add	a0, a1, a0
.LBB0_112:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_85 Depth=3
                                        #         Parent Loop BB0_87 Depth=4
                                        #           Parent Loop BB0_102 Depth=5
                                        #             Parent Loop BB0_107 Depth=6
                                        # =>            This Loop Header: Depth=7
                                        #                 Child Loop BB0_113 Depth 8
	ld	t6, 840(sp)                     # 8-byte Folded Reload
	mv	s4, a0
	ld	a4, 864(sp)                     # 8-byte Folded Reload
	ld	s8, 872(sp)                     # 8-byte Folded Reload
	ld	t4, 880(sp)                     # 8-byte Folded Reload
	mv	t5, s1
	mv	t0, a6
	mv	s2, t1
	ld	ra, 888(sp)                     # 8-byte Folded Reload
.LBB0_113:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_85 Depth=3
                                        #         Parent Loop BB0_87 Depth=4
                                        #           Parent Loop BB0_102 Depth=5
                                        #             Parent Loop BB0_107 Depth=6
                                        #               Parent Loop BB0_112 Depth=7
                                        # =>              This Inner Loop Header: Depth=8
	add	s7, ra, a3
	add	s0, s2, a3
	add	s3, t0, a3
	add	a7, t5, a3
	add	s6, t4, a3
	add	s11, s8, a3
	add	a1, a4, a3
	lbu	s7, 0(s7)
	lbu	a1, 0(a1)
	lbu	s11, 0(s11)
	lbu	s6, 0(s6)
	add	s5, s4, a3
	add	t3, t6, a3
	add	a1, s7, a1
	add	s6, s11, s6
	add	a1, a1, s6
	lbu	s5, 0(s5)
	lbu	a7, 0(a7)
	lbu	s3, 0(s3)
	lbu	s0, 0(s0)
	addi	a1, a1, 2
	srli	a1, a1, 2
	add	a7, s5, a7
	add	s0, s3, s0
	add	a7, a7, s0
	addi	a7, a7, 2
	srli	a7, a7, 2
	lbu	t3, 0(t3)
	add	a1, a1, a7
	addi	a1, a1, 1
	srli	a1, a1, 1
	subw	a1, a1, t3
	mul	a1, a1, a1
	add	t2, a1, t2
	addi	ra, ra, 1
	addi	s2, s2, 1
	addi	t0, t0, 1
	addi	t5, t5, 1
	addi	t4, t4, 1
	addi	s8, s8, 1
	addi	a4, a4, 1
	addi	s4, s4, 1
	addi	t6, t6, 1
	bne	ra, a2, .LBB0_113
# %bb.114:                              #   in Loop: Header=BB0_112 Depth=7
	addiw	s10, s10, 1
	ld	a1, 920(sp)                     # 8-byte Folded Reload
	add	a3, a3, a1
	li	a1, 8
	bne	s10, a1, .LBB0_112
# %bb.115:                              #   in Loop: Header=BB0_107 Depth=6
	li	t0, 0
	li	a1, 0
	li	t5, 0
	ld	s10, 680(sp)                    # 8-byte Folded Reload
	ld	s11, 704(sp)                    # 8-byte Folded Reload
	ld	ra, 696(sp)                     # 8-byte Folded Reload
.LBB0_116:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_85 Depth=3
                                        #         Parent Loop BB0_87 Depth=4
                                        #           Parent Loop BB0_102 Depth=5
                                        #             Parent Loop BB0_107 Depth=6
                                        # =>            This Loop Header: Depth=7
                                        #                 Child Loop BB0_117 Depth 8
	mv	t6, s10
	mv	a0, a5
	ld	a4, 848(sp)                     # 8-byte Folded Reload
	ld	s2, 856(sp)                     # 8-byte Folded Reload
	mv	t4, ra
	ld	s1, 896(sp)                     # 8-byte Folded Reload
	ld	a6, 904(sp)                     # 8-byte Folded Reload
	ld	t1, 912(sp)                     # 8-byte Folded Reload
	mv	s4, s11
.LBB0_117:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_85 Depth=3
                                        #         Parent Loop BB0_87 Depth=4
                                        #           Parent Loop BB0_102 Depth=5
                                        #             Parent Loop BB0_107 Depth=6
                                        #               Parent Loop BB0_116 Depth=7
                                        # =>              This Inner Loop Header: Depth=8
	add	a3, s4, t0
	add	a7, t1, t0
	add	t3, a6, t0
	add	s0, s1, t0
	add	s3, t4, t0
	add	s5, s2, t0
	add	s6, a4, t0
	lbu	a3, 0(a3)
	lbu	s6, 0(s6)
	lbu	s5, 0(s5)
	lbu	s3, 0(s3)
	add	s7, a0, t0
	add	s8, t6, t0
	add	a3, a3, s6
	add	s3, s5, s3
	add	a3, a3, s3
	lbu	s3, 0(s7)
	lbu	s0, 0(s0)
	lbu	t3, 0(t3)
	lbu	a7, 0(a7)
	addi	a3, a3, 2
	srli	a3, a3, 2
	add	s0, s3, s0
	add	a7, t3, a7
	add	a7, s0, a7
	addi	a7, a7, 2
	srli	a7, a7, 2
	lbu	t3, 0(s8)
	add	a3, a3, a7
	addi	a3, a3, 1
	srli	a3, a3, 1
	subw	a3, a3, t3
	mul	a3, a3, a3
	add	a1, a3, a1
	addi	s4, s4, 1
	addi	t1, t1, 1
	addi	a6, a6, 1
	addi	s1, s1, 1
	addi	t4, t4, 1
	addi	s2, s2, 1
	addi	a4, a4, 1
	addi	a0, a0, 1
	addi	t6, t6, 1
	bne	s4, s9, .LBB0_117
# %bb.118:                              #   in Loop: Header=BB0_116 Depth=7
	addiw	t5, t5, 1
	ld	a0, 920(sp)                     # 8-byte Folded Reload
	add	t0, t0, a0
	li	a0, 8
	bne	t5, a0, .LBB0_116
# %bb.119:                              #   in Loop: Header=BB0_107 Depth=6
	addw	a0, a1, t2
	li	s5, 2
	ld	t2, 832(sp)                     # 8-byte Folded Reload
	ld	t3, 688(sp)                     # 8-byte Folded Reload
	ld	t4, 712(sp)                     # 8-byte Folded Reload
	ld	a6, 760(sp)                     # 8-byte Folded Reload
	ld	a7, 752(sp)                     # 8-byte Folded Reload
	ld	a3, 824(sp)                     # 8-byte Folded Reload
	ld	a4, 816(sp)                     # 8-byte Folded Reload
	ld	a5, 808(sp)                     # 8-byte Folded Reload
	ld	t0, 800(sp)                     # 8-byte Folded Reload
	ld	t1, 792(sp)                     # 8-byte Folded Reload
	bge	a0, t2, .LBB0_106
# %bb.120:                              #   in Loop: Header=BB0_107 Depth=6
	ld	a1, 656(sp)                     # 8-byte Folded Reload
	sd	a1, 632(sp)                     # 8-byte Folded Spill
	ld	a1, 648(sp)                     # 8-byte Folded Reload
	sd	a1, 640(sp)                     # 8-byte Folded Spill
	ld	a1, 776(sp)                     # 8-byte Folded Reload
	sd	a1, 592(sp)                     # 8-byte Folded Spill
	ld	a1, 672(sp)                     # 8-byte Folded Reload
	sd	a1, 584(sp)                     # 8-byte Folded Spill
	ld	a1, 768(sp)                     # 8-byte Folded Reload
	sd	a1, 608(sp)                     # 8-byte Folded Spill
	sd	a7, 600(sp)                     # 8-byte Folded Spill
	sd	a3, 616(sp)                     # 8-byte Folded Spill
	sd	a6, 624(sp)                     # 8-byte Folded Spill
	mv	t2, a0
	j	.LBB0_106
.LBB0_121:                              #   in Loop: Header=BB0_9 Depth=2
	mv	a0, a1
	ld	a4, 384(sp)                     # 8-byte Folded Reload
.LBB0_122:                              #   in Loop: Header=BB0_9 Depth=2
	sd	s9, 328(sp)                     # 8-byte Folded Spill
	addi	a1, sp, 988
	sd	a1, 80(sp)
	addi	a1, sp, 992
	sd	a1, 72(sp)
	addi	a1, sp, 996
	sd	a1, 64(sp)
	addi	a1, sp, 1044
	sd	a1, 56(sp)
	addi	a1, sp, 1048
	sd	a1, 48(sp)
	addi	a1, sp, 1052
	sd	a1, 40(sp)
	addi	a1, sp, 1056
	sd	a1, 32(sp)
	addi	a1, sp, 1060
	sd	a1, 24(sp)
	addi	a1, sp, 1064
	sd	a1, 16(sp)
	addi	a1, sp, 1068
	sd	a1, 8(sp)
	sext.w	a5, a4
	addi	t4, sp, 944
	addi	t5, sp, 928
	addi	t6, sp, 1076
	addi	a1, sp, 1072
	sd	a1, 0(sp)
	sd	a6, 688(sp)                     # 8-byte Folded Spill
	mv	a1, a6
	ld	a3, 712(sp)                     # 8-byte Folded Reload
	mv	a4, s11
	ld	a6, 480(sp)                     # 8-byte Folded Reload
	ld	a7, 296(sp)                     # 8-byte Folded Reload
	ld	t2, 304(sp)                     # 8-byte Folded Reload
	ld	s0, 216(sp)                     # 8-byte Folded Reload
	mv	t3, s0
	call	field_estimate
	li	a1, 1
	bnez	s0, .LBB0_151
# %bb.123:                              #   in Loop: Header=BB0_9 Depth=2
	lui	a0, %hi(M)
	lw	a0, %lo(M)(a0)
	bne	a0, a1, .LBB0_151
# %bb.124:                              #   in Loop: Header=BB0_9 Depth=2
	sd	s11, 704(sp)                    # 8-byte Folded Spill
	sd	s6, 696(sp)                     # 8-byte Folded Spill
	ld	t3, 712(sp)                     # 8-byte Folded Reload
	ld	a0, 688(sp)                     # 8-byte Folded Reload
	mv	t2, a0
	beq	s1, a1, .LBB0_126
# %bb.125:                              #   in Loop: Header=BB0_9 Depth=2
	mv	t3, a0
	ld	t2, 712(sp)                     # 8-byte Folded Reload
.LBB0_126:                              #   in Loop: Header=BB0_9 Depth=2
	lwu	a0, 996(sp)
	lw	a2, 992(sp)
	sd	s1, 648(sp)                     # 8-byte Folded Spill
	addi	a1, s1, -1
	snez	a3, a1
	ld	a4, 384(sp)                     # 8-byte Folded Reload
	slli	a4, a4, 1
	subw	a1, a0, a4
	ld	t1, 224(sp)                     # 8-byte Folded Reload
	subw	a5, a2, t1
	sgtz	a6, a1
	add	a1, a1, a6
	sraiw	a1, a1, 1
	sgtz	a6, a5
	add	a5, a5, a6
	sraiw	a6, a5, 1
	addi	a3, a3, -1
	lui	a5, %hi(height2)
	lw	a5, %lo(height2)(a5)
	ori	a3, a3, 1
	addw	t4, a1, a4
	sd	s10, 720(sp)                    # 8-byte Folded Spill
	addiw	a4, s10, -32
	slli	a5, a5, 1
	lui	a7, %hi(width2)
	lw	s4, %lo(width2)(a7)
	addiw	a5, a5, -32
	sd	a5, 840(sp)                     # 8-byte Folded Spill
	sraiw	a5, a0, 1
	srli	t0, a2, 1
	mulw	t0, s4, t0
	add	a5, a5, t0
	sd	t2, 640(sp)                     # 8-byte Folded Spill
	sd	a5, 624(sp)                     # 8-byte Folded Spill
	add	a5, t2, a5
	slli	a2, a2, 63
	srai	a2, a2, 63
	and	s1, a2, s4
	add	s1, a5, s1
	andi	a0, a0, 1
	sd	s1, 920(sp)                     # 8-byte Folded Spill
	add	s1, s1, a0
	sd	s1, 912(sp)                     # 8-byte Folded Spill
	add	a0, a5, a0
	sd	a0, 904(sp)                     # 8-byte Folded Spill
	sd	s4, 832(sp)                     # 8-byte Folded Spill
	addiw	s4, s4, -16
	addiw	a7, t4, -1
	sgtz	a0, t4
	slt	a2, a4, a7
	xori	a2, a2, 1
	and	a0, a0, a2
	sd	a0, 824(sp)                     # 8-byte Folded Spill
	sd	a7, 672(sp)                     # 8-byte Folded Spill
	andi	a2, a7, 1
	slti	a0, t4, 0
	slt	t0, a4, t4
	or	a0, a0, t0
	xori	a0, a0, 1
	sd	a0, 816(sp)                     # 8-byte Folded Spill
	andi	t0, a1, 1
	addi	a0, t4, 1
	sd	a0, 664(sp)                     # 8-byte Folded Spill
	slti	a0, t4, -1
	not	a0, a0
	sd	t4, 680(sp)                     # 8-byte Folded Spill
	slt	a4, t4, a4
	and	a0, a0, a4
	sd	a0, 808(sp)                     # 8-byte Folded Spill
	add	a3, a3, t1
	add	a3, a3, a6
	sd	a3, 872(sp)                     # 8-byte Folded Spill
	addi	s4, s4, 16
	sd	s4, 896(sp)                     # 8-byte Folded Spill
	ld	a0, 432(sp)                     # 8-byte Folded Reload
	add	a0, a1, a0
	srliw	a0, a0, 1
	add	a3, t3, a0
	add	a3, a3, a2
	sd	a3, 768(sp)                     # 8-byte Folded Spill
	add	a0, t3, a0
	sd	a0, 760(sp)                     # 8-byte Folded Spill
	add	s2, s3, s2
	ld	s10, 392(sp)                    # 8-byte Folded Reload
	sd	s2, 616(sp)                     # 8-byte Folded Spill
	add	s10, s10, s2
	mv	s4, a5
	addi	a0, a5, 16
	ld	a3, 440(sp)                     # 8-byte Folded Reload
	add	a3, a1, a3
	srliw	a3, a3, 1
	add	t0, t3, t0
	add	t0, t0, a3
	sd	t0, 752(sp)                     # 8-byte Folded Spill
	add	a3, t3, a3
	sd	a3, 744(sp)                     # 8-byte Folded Spill
	ld	a3, 376(sp)                     # 8-byte Folded Reload
	add	a1, a1, a3
	srliw	a1, a1, 1
	add	a3, t3, a1
	add	a2, a3, a2
	sd	a2, 736(sp)                     # 8-byte Folded Spill
	sd	t3, 632(sp)                     # 8-byte Folded Spill
	add	a1, t3, a1
	sd	a1, 728(sp)                     # 8-byte Folded Spill
	li	a4, -1
	lui	a2, 262144
                                        # implicit-def: $x11
                                        # kill: killed $x11
                                        # implicit-def: $x11
                                        # kill: killed $x11
                                        # implicit-def: $x11
                                        # kill: killed $x11
                                        # implicit-def: $x11
                                        # kill: killed $x11
	j	.LBB0_128
.LBB0_127:                              #   in Loop: Header=BB0_128 Depth=3
	addiw	a4, a4, 1
	beq	a4, s5, .LBB0_157
.LBB0_128:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_132 Depth 4
                                        #           Child Loop BB0_133 Depth 5
                                        #         Child Loop BB0_139 Depth 4
                                        #           Child Loop BB0_140 Depth 5
                                        #         Child Loop BB0_146 Depth 4
                                        #           Child Loop BB0_147 Depth 5
	ld	a1, 872(sp)                     # 8-byte Folded Reload
	addw	a5, a1, a4
	bltz	a5, .LBB0_127
# %bb.129:                              #   in Loop: Header=BB0_128 Depth=3
	ld	a1, 840(sp)                     # 8-byte Folded Reload
	blt	a1, a5, .LBB0_127
# %bb.130:                              #   in Loop: Header=BB0_128 Depth=3
	srliw	a1, a5, 1
	ld	a3, 832(sp)                     # 8-byte Folded Reload
	mulw	a6, a1, a3
	sd	a5, 848(sp)                     # 8-byte Folded Spill
	slli	a1, a5, 63
	srai	a1, a1, 63
	and	t0, a1, a3
	add	t0, t0, a6
	ld	a1, 824(sp)                     # 8-byte Folded Reload
	sd	a4, 880(sp)                     # 8-byte Folded Spill
	sd	a6, 864(sp)                     # 8-byte Folded Spill
	sd	t0, 856(sp)                     # 8-byte Folded Spill
	beqz	a1, .LBB0_137
# %bb.131:                              #   in Loop: Header=BB0_128 Depth=3
	sd	a2, 888(sp)                     # 8-byte Folded Spill
	li	a4, 0
	li	s7, 0
	li	s0, 0
	ld	t3, 768(sp)                     # 8-byte Folded Reload
	add	t2, t3, t0
	ld	s9, 760(sp)                     # 8-byte Folded Reload
	add	t6, s9, t0
	add	t3, t3, a6
	add	s9, s9, a6
.LBB0_132:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_128 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_133 Depth 5
	mv	ra, s10
	mv	s5, s9
	ld	a5, 904(sp)                     # 8-byte Folded Reload
	ld	a1, 920(sp)                     # 8-byte Folded Reload
	ld	a2, 912(sp)                     # 8-byte Folded Reload
	mv	t4, t3
	mv	t5, t6
	mv	t1, t2
	mv	s8, s4
.LBB0_133:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_128 Depth=3
                                        #         Parent Loop BB0_132 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	add	a7, s8, a4
	add	t0, t1, a4
	add	a6, t5, a4
	add	s3, t4, a4
	add	s2, a2, a4
	add	s11, a1, a4
	add	a3, a5, a4
	lbu	a7, 0(a7)
	lbu	a3, 0(a3)
	lbu	s11, 0(s11)
	lbu	s2, 0(s2)
	add	s6, s5, a4
	add	s1, ra, a4
	add	a3, a7, a3
	add	s2, s11, s2
	add	a3, a3, s2
	lbu	a7, 0(s6)
	lbu	s2, 0(s3)
	lbu	a6, 0(a6)
	lbu	t0, 0(t0)
	addi	a3, a3, 2
	srli	a3, a3, 2
	add	a7, a7, s2
	add	a6, a6, t0
	add	a6, a7, a6
	addi	a6, a6, 2
	srli	a6, a6, 2
	lbu	a7, 0(s1)
	add	a3, a3, a6
	addi	a3, a3, 1
	srli	a3, a3, 1
	subw	a3, a3, a7
	mul	a3, a3, a3
	addw	s7, a3, s7
	addi	s8, s8, 1
	addi	t1, t1, 1
	addi	t5, t5, 1
	addi	t4, t4, 1
	addi	a2, a2, 1
	addi	a1, a1, 1
	addi	a5, a5, 1
	addi	s5, s5, 1
	addi	ra, ra, 1
	bne	s8, a0, .LBB0_133
# %bb.134:                              #   in Loop: Header=BB0_132 Depth=4
	addiw	s0, s0, 1
	ld	a1, 896(sp)                     # 8-byte Folded Reload
	add	a4, a4, a1
	li	a1, 16
	bne	s0, a1, .LBB0_132
# %bb.135:                              #   in Loop: Header=BB0_128 Depth=3
	li	s5, 2
	ld	a2, 888(sp)                     # 8-byte Folded Reload
	ld	a4, 880(sp)                     # 8-byte Folded Reload
	ld	a6, 864(sp)                     # 8-byte Folded Reload
	ld	t0, 856(sp)                     # 8-byte Folded Reload
	bge	s7, a2, .LBB0_137
# %bb.136:                              #   in Loop: Header=BB0_128 Depth=3
	li	a1, -1
	sd	a1, 800(sp)                     # 8-byte Folded Spill
	ld	a1, 672(sp)                     # 8-byte Folded Reload
	sd	a1, 792(sp)                     # 8-byte Folded Spill
	ld	a1, 848(sp)                     # 8-byte Folded Reload
	sd	a1, 784(sp)                     # 8-byte Folded Spill
	sd	a4, 776(sp)                     # 8-byte Folded Spill
	mv	a2, s7
.LBB0_137:                              #   in Loop: Header=BB0_128 Depth=3
	ld	a1, 816(sp)                     # 8-byte Folded Reload
	beqz	a1, .LBB0_144
# %bb.138:                              #   in Loop: Header=BB0_128 Depth=3
	sd	a2, 888(sp)                     # 8-byte Folded Spill
	li	a4, 0
	li	s7, 0
	li	s0, 0
	ld	t4, 752(sp)                     # 8-byte Folded Reload
	add	t1, t4, t0
	ld	s5, 744(sp)                     # 8-byte Folded Reload
	add	t5, s5, t0
	add	t4, t4, a6
	add	s5, s5, a6
.LBB0_139:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_128 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_140 Depth 5
	mv	ra, s10
	mv	s9, s5
	ld	a3, 904(sp)                     # 8-byte Folded Reload
	ld	a1, 920(sp)                     # 8-byte Folded Reload
	ld	a2, 912(sp)                     # 8-byte Folded Reload
	mv	t3, t4
	mv	t6, t5
	mv	t2, t1
	mv	s8, s4
.LBB0_140:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_128 Depth=3
                                        #         Parent Loop BB0_139 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	add	a5, s8, a4
	add	a6, t2, a4
	add	a7, t6, a4
	add	t0, t3, a4
	add	s1, a2, a4
	add	s2, a1, a4
	add	s3, a3, a4
	lbu	a5, 0(a5)
	lbu	s3, 0(s3)
	lbu	s2, 0(s2)
	lbu	s1, 0(s1)
	add	s6, s9, a4
	add	s11, ra, a4
	add	a5, a5, s3
	add	s1, s2, s1
	add	a5, a5, s1
	lbu	s1, 0(s6)
	lbu	t0, 0(t0)
	lbu	a7, 0(a7)
	lbu	a6, 0(a6)
	addi	a5, a5, 2
	srli	a5, a5, 2
	add	t0, s1, t0
	add	a6, a7, a6
	add	a6, t0, a6
	addi	a6, a6, 2
	srli	a6, a6, 2
	lbu	a7, 0(s11)
	add	a5, a5, a6
	addi	a5, a5, 1
	srli	a5, a5, 1
	subw	a5, a5, a7
	mul	a5, a5, a5
	addw	s7, a5, s7
	addi	s8, s8, 1
	addi	t2, t2, 1
	addi	t6, t6, 1
	addi	t3, t3, 1
	addi	a2, a2, 1
	addi	a1, a1, 1
	addi	a3, a3, 1
	addi	s9, s9, 1
	addi	ra, ra, 1
	bne	s8, a0, .LBB0_140
# %bb.141:                              #   in Loop: Header=BB0_139 Depth=4
	addiw	s0, s0, 1
	ld	a1, 896(sp)                     # 8-byte Folded Reload
	add	a4, a4, a1
	li	a1, 16
	bne	s0, a1, .LBB0_139
# %bb.142:                              #   in Loop: Header=BB0_128 Depth=3
	li	s5, 2
	ld	a2, 888(sp)                     # 8-byte Folded Reload
	ld	a4, 880(sp)                     # 8-byte Folded Reload
	ld	a6, 864(sp)                     # 8-byte Folded Reload
	ld	t0, 856(sp)                     # 8-byte Folded Reload
	bge	s7, a2, .LBB0_144
# %bb.143:                              #   in Loop: Header=BB0_128 Depth=3
	sd	zero, 800(sp)                   # 8-byte Folded Spill
	ld	a1, 680(sp)                     # 8-byte Folded Reload
	sd	a1, 792(sp)                     # 8-byte Folded Spill
	ld	a1, 848(sp)                     # 8-byte Folded Reload
	sd	a1, 784(sp)                     # 8-byte Folded Spill
	sd	a4, 776(sp)                     # 8-byte Folded Spill
	mv	a2, s7
.LBB0_144:                              #   in Loop: Header=BB0_128 Depth=3
	ld	a1, 808(sp)                     # 8-byte Folded Reload
	beqz	a1, .LBB0_127
# %bb.145:                              #   in Loop: Header=BB0_128 Depth=3
	sd	a2, 888(sp)                     # 8-byte Folded Spill
	li	a4, 0
	li	s7, 0
	li	s0, 0
	ld	t4, 736(sp)                     # 8-byte Folded Reload
	add	t1, t4, t0
	ld	s9, 728(sp)                     # 8-byte Folded Reload
	add	t6, s9, t0
	add	t4, t4, a6
	add	s9, s9, a6
.LBB0_146:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_128 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_147 Depth 5
	mv	t5, s10
	mv	t3, s9
	ld	a3, 904(sp)                     # 8-byte Folded Reload
	ld	a1, 920(sp)                     # 8-byte Folded Reload
	ld	a2, 912(sp)                     # 8-byte Folded Reload
	mv	a6, t4
	mv	t2, t6
	mv	t0, t1
	mv	s5, s4
.LBB0_147:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_128 Depth=3
                                        #         Parent Loop BB0_146 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	add	a5, s5, a4
	add	a7, t0, a4
	add	s1, t2, a4
	add	s2, a6, a4
	add	s3, a2, a4
	add	s6, a1, a4
	add	s8, a3, a4
	lbu	a5, 0(a5)
	lbu	s8, 0(s8)
	lbu	s6, 0(s6)
	lbu	s3, 0(s3)
	add	s11, t3, a4
	add	ra, t5, a4
	add	a5, a5, s8
	add	s3, s6, s3
	add	a5, a5, s3
	lbu	s3, 0(s11)
	lbu	s2, 0(s2)
	lbu	s1, 0(s1)
	lbu	a7, 0(a7)
	addi	a5, a5, 2
	srli	a5, a5, 2
	add	s2, s3, s2
	add	a7, s1, a7
	add	a7, s2, a7
	addi	a7, a7, 2
	srli	a7, a7, 2
	lbu	s1, 0(ra)
	add	a5, a5, a7
	addi	a5, a5, 1
	srli	a5, a5, 1
	subw	a5, a5, s1
	mul	a5, a5, a5
	addw	s7, a5, s7
	addi	s5, s5, 1
	addi	t0, t0, 1
	addi	t2, t2, 1
	addi	a6, a6, 1
	addi	a2, a2, 1
	addi	a1, a1, 1
	addi	a3, a3, 1
	addi	t3, t3, 1
	addi	t5, t5, 1
	bne	s5, a0, .LBB0_147
# %bb.148:                              #   in Loop: Header=BB0_146 Depth=4
	addiw	s0, s0, 1
	ld	a1, 896(sp)                     # 8-byte Folded Reload
	add	a4, a4, a1
	li	a1, 16
	bne	s0, a1, .LBB0_146
# %bb.149:                              #   in Loop: Header=BB0_128 Depth=3
	li	s5, 2
	ld	a2, 888(sp)                     # 8-byte Folded Reload
	ld	a4, 880(sp)                     # 8-byte Folded Reload
	bge	s7, a2, .LBB0_127
# %bb.150:                              #   in Loop: Header=BB0_128 Depth=3
	li	a1, 1
	sd	a1, 800(sp)                     # 8-byte Folded Spill
	ld	a1, 664(sp)                     # 8-byte Folded Reload
	sd	a1, 792(sp)                     # 8-byte Folded Spill
	ld	a1, 848(sp)                     # 8-byte Folded Reload
	sd	a1, 784(sp)                     # 8-byte Folded Spill
	sd	a4, 776(sp)                     # 8-byte Folded Spill
	mv	a2, s7
	j	.LBB0_127
.LBB0_151:                              #   in Loop: Header=BB0_9 Depth=2
	lw	a1, 1056(sp)
	lw	a2, 1060(sp)
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x23
	ld	t3, 360(sp)                     # 8-byte Folded Reload
	ld	a0, 688(sp)                     # 8-byte Folded Reload
	blt	a1, a2, .LBB0_152
	j	.LBB0_222
.LBB0_152:                              #   in Loop: Header=BB0_9 Depth=2
	mv	s3, s1
	lw	a1, 1048(sp)
	li	s2, 2
	mv	s0, t3
	sw	s2, 4(t3)
	beqz	a1, .LBB0_154
# %bb.153:                              #   in Loop: Header=BB0_9 Depth=2
	ld	a0, 712(sp)                     # 8-byte Folded Reload
.LBB0_154:                              #   in Loop: Header=BB0_9 Depth=2
	lw	a3, 1076(sp)
	lw	a4, 1072(sp)
	srai	a1, a3, 1
	add	a0, a0, a1
	srli	a1, a4, 1
	mulw	a1, a1, s10
	add	a0, a0, a1
	andi	a3, a3, 1
	andi	a4, a4, 1
	li	a5, 8
	mv	a1, s11
	mv	a2, s10
	call	dist2
	lw	a1, 1044(sp)
	mv	s1, a0
	ld	a0, 688(sp)                     # 8-byte Folded Reload
	beqz	a1, .LBB0_156
# %bb.155:                              #   in Loop: Header=BB0_9 Depth=2
	ld	a0, 712(sp)                     # 8-byte Folded Reload
.LBB0_156:                              #   in Loop: Header=BB0_9 Depth=2
	lw	a3, 1068(sp)
	lw	a4, 1064(sp)
	srai	a1, a3, 1
	add	a0, a0, a1
	srli	a1, a4, 1
	mulw	a1, a1, s10
	add	a0, a0, a1
	ld	a1, 328(sp)                     # 8-byte Folded Reload
	slliw	a1, a1, 4
	add	a1, s11, a1
	andi	a3, a3, 1
	andi	a4, a4, 1
	li	a5, 8
	mv	a2, s10
	call	dist2
	addw	s8, a0, s1
	ld	t1, 312(sp)                     # 8-byte Folded Reload
	mv	t3, s0
	li	a3, 1
	ld	a5, 384(sp)                     # 8-byte Folded Reload
	mv	s1, s3
	j	.LBB0_225
.LBB0_157:                              #   in Loop: Header=BB0_9 Depth=2
	sd	a2, 888(sp)                     # 8-byte Folded Spill
	li	a6, 0
	li	a0, 0
	li	t0, 0
	ld	a4, 792(sp)                     # 8-byte Folded Reload
	sraiw	a1, a4, 1
	ld	a2, 632(sp)                     # 8-byte Folded Reload
	add	a1, a2, a1
	ld	a5, 784(sp)                     # 8-byte Folded Reload
	sraiw	a2, a5, 1
	ld	a3, 832(sp)                     # 8-byte Folded Reload
	mulw	t1, a2, a3
	add	t1, a1, t1
	slli	a1, a5, 63
	srai	a1, a1, 63
	and	a7, a1, a3
	add	a7, t1, a7
	andi	t2, a4, 1
	ld	t4, 640(sp)                     # 8-byte Folded Reload
	ld	a1, 624(sp)                     # 8-byte Folded Reload
	add	t4, t4, a1
	add	a4, a7, t2
	add	t2, t1, t2
	ld	t3, 392(sp)                     # 8-byte Folded Reload
	ld	a1, 616(sp)                     # 8-byte Folded Reload
	add	t3, t3, a1
	addi	t4, t4, 16
.LBB0_158:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_159 Depth 4
	mv	t5, t3
	mv	t6, t1
	ld	s0, 904(sp)                     # 8-byte Folded Reload
	ld	s2, 920(sp)                     # 8-byte Folded Reload
	ld	a3, 912(sp)                     # 8-byte Folded Reload
	mv	a1, t2
	mv	a2, a7
	mv	s3, a4
	mv	s5, s4
.LBB0_159:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_158 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add	a5, s5, a6
	add	s1, s3, a6
	add	s6, a2, a6
	add	s7, a1, a6
	add	s8, a3, a6
	add	s9, s2, a6
	add	s10, s0, a6
	lbu	a5, 0(a5)
	lbu	s10, 0(s10)
	lbu	s9, 0(s9)
	lbu	s8, 0(s8)
	add	s11, t6, a6
	add	ra, t5, a6
	add	a5, a5, s10
	add	s8, s9, s8
	add	a5, a5, s8
	lbu	s8, 0(s11)
	lbu	s7, 0(s7)
	lbu	s6, 0(s6)
	lbu	s1, 0(s1)
	addi	a5, a5, 2
	srli	a5, a5, 2
	add	s7, s8, s7
	add	s1, s6, s1
	add	s1, s7, s1
	addi	s1, s1, 2
	srli	s1, s1, 2
	lbu	s6, 0(ra)
	add	a5, a5, s1
	addi	a5, a5, 1
	srli	a5, a5, 1
	sub	a5, a5, s6
	sraiw	s1, a5, 31
	xor	a5, a5, s1
	subw	s1, s1, a0
	subw	a0, a5, s1
	addi	s5, s5, 1
	addi	s3, s3, 1
	addi	a2, a2, 1
	addi	a1, a1, 1
	addi	a3, a3, 1
	addi	s2, s2, 1
	addi	s0, s0, 1
	addi	t6, t6, 1
	addi	t5, t5, 1
	bne	s5, t4, .LBB0_159
# %bb.160:                              #   in Loop: Header=BB0_158 Depth=3
	addiw	t0, t0, 1
	ld	a1, 896(sp)                     # 8-byte Folded Reload
	add	a6, a6, a1
	li	a1, 16
	bne	t0, a1, .LBB0_158
# %bb.161:                              #   in Loop: Header=BB0_9 Depth=2
	lw	a1, 1056(sp)
	lw	a2, 1060(sp)
	blt	a0, a1, .LBB0_162
	j	.LBB0_221
.LBB0_162:                              #   in Loop: Header=BB0_9 Depth=2
	ld	t1, 312(sp)                     # 8-byte Folded Reload
	ld	t3, 360(sp)                     # 8-byte Folded Reload
	li	a3, 1
	ld	a5, 384(sp)                     # 8-byte Folded Reload
	ld	s6, 696(sp)                     # 8-byte Folded Reload
	ld	s10, 720(sp)                    # 8-byte Folded Reload
	ld	s11, 704(sp)                    # 8-byte Folded Reload
	ld	s1, 648(sp)                     # 8-byte Folded Reload
	ld	s7, 800(sp)                     # 8-byte Folded Reload
	blt	a0, a2, .LBB0_163
	j	.LBB0_238
.LBB0_163:                              #   in Loop: Header=BB0_9 Depth=2
	li	s2, 3
	sw	s2, 4(t3)
	li	s5, 2
	ld	s8, 888(sp)                     # 8-byte Folded Reload
	j	.LBB0_225
.LBB0_164:                              #   in Loop: Header=BB0_9 Depth=2
	addi	s0, sp, 928
	sd	s0, 40(sp)
	addi	s4, sp, 944
	sd	s4, 32(sp)
	addi	a1, sp, 968
	sd	a1, 24(sp)
	addi	a1, sp, 972
	sd	a1, 16(sp)
	addi	a1, sp, 988
	sd	a1, 8(sp)
	sext.w	s1, s1
	addi	a7, sp, 1068
	addi	t2, sp, 1064
	addi	t3, sp, 1036
	addi	t4, sp, 1032
	addi	t5, sp, 1028
	addi	t6, sp, 1024
	addi	a1, sp, 1000
	sd	a1, 0(sp)
	mv	a1, a4
	mv	s2, a4
	mv	a3, s1
	ld	s3, 480(sp)                     # 8-byte Folded Reload
	mv	a4, s3
	ld	a5, 296(sp)                     # 8-byte Folded Reload
	ld	a6, 304(sp)                     # 8-byte Folded Reload
	mv	s5, a2
	call	frame_estimate
	sd	s0, 40(sp)
	sd	s4, 32(sp)
	addi	a0, sp, 960
	sd	a0, 24(sp)
	addi	a0, sp, 964
	sd	a0, 16(sp)
	addi	a0, sp, 984
	sd	a0, 8(sp)
	addi	a7, sp, 1060
	addi	t2, sp, 1056
	addi	t3, sp, 1020
	addi	t4, sp, 1016
	addi	t5, sp, 1012
	addi	t6, sp, 1008
	addi	a0, sp, 996
	sd	a0, 0(sp)
	ld	a0, 248(sp)                     # 8-byte Folded Reload
	ld	s0, 320(sp)                     # 8-byte Folded Reload
	mv	a1, s0
	sd	s5, 208(sp)                     # 8-byte Folded Spill
	mv	a2, s5
	mv	a3, s1
	mv	a4, s3
	ld	a5, 232(sp)                     # 8-byte Folded Reload
	ld	a6, 240(sp)                     # 8-byte Folded Reload
	call	frame_estimate
	lwu	a1, 1068(sp)
	lw	a6, 1064(sp)
	li	a5, 0
	li	a0, 0
	li	a4, 0
	sraiw	t3, a1, 1
	add	a3, s2, t3
	srai	a2, a6, 1
	lwu	a7, 1060(sp)
	sd	a2, 720(sp)                     # 8-byte Folded Spill
	mulw	a2, a2, s9
	lw	t0, 1056(sp)
	sd	a3, 728(sp)                     # 8-byte Folded Spill
	add	t4, a3, a2
	sraiw	t5, a7, 1
	add	t1, s0, t5
	srai	a3, t0, 1
	sd	a3, 688(sp)                     # 8-byte Folded Spill
	mulw	a3, a3, s9
	sd	t1, 696(sp)                     # 8-byte Folded Spill
	add	t2, t1, a3
	sd	a1, 872(sp)                     # 8-byte Folded Spill
	andi	a1, a1, 1
	sd	a6, 864(sp)                     # 8-byte Folded Spill
	andi	t1, a6, 1
	sd	a7, 856(sp)                     # 8-byte Folded Spill
	andi	a7, a7, 1
	sd	t0, 848(sp)                     # 8-byte Folded Spill
	andi	a6, t0, 1
	sd	a6, 704(sp)                     # 8-byte Folded Spill
	mulw	a6, a6, s9
	add	t0, t2, a6
	sd	t0, 912(sp)                     # 8-byte Folded Spill
	sd	t2, 920(sp)                     # 8-byte Folded Spill
	add	t2, t2, a7
	sd	t2, 904(sp)                     # 8-byte Folded Spill
	sd	t1, 736(sp)                     # 8-byte Folded Spill
	mulw	t6, t1, s9
	add	t0, t4, t6
	sd	t0, 896(sp)                     # 8-byte Folded Spill
	mv	t2, t4
	add	t0, t4, a1
	sd	s9, 328(sp)                     # 8-byte Folded Spill
	addiw	t4, s9, -16
	addi	t4, t4, 16
	sd	t5, 672(sp)                     # 8-byte Folded Spill
	add	a3, t5, a3
	sd	a7, 712(sp)                     # 8-byte Folded Spill
	add	a6, a6, a7
	add	a3, a3, a6
	add	t5, s0, a3
	sd	t3, 680(sp)                     # 8-byte Folded Spill
	add	a2, t3, a2
	sd	a1, 744(sp)                     # 8-byte Folded Spill
	add	t6, t6, a1
	add	t6, a2, t6
	add	s0, s2, t6
	ld	s1, 392(sp)                     # 8-byte Folded Reload
	ld	a1, 280(sp)                     # 8-byte Folded Reload
	add	s1, s1, a1
	ld	s2, 424(sp)                     # 8-byte Folded Reload
	add	s2, s2, a2
.LBB0_165:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_166 Depth 4
	mv	a2, s1
	ld	s3, 920(sp)                     # 8-byte Folded Reload
	mv	t3, t0
	ld	a6, 896(sp)                     # 8-byte Folded Reload
	mv	s4, s0
	ld	s5, 904(sp)                     # 8-byte Folded Reload
	ld	a3, 912(sp)                     # 8-byte Folded Reload
	mv	s6, t5
	mv	s7, t2
.LBB0_166:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_165 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add	s8, s7, a5
	add	t1, s6, a5
	add	s10, a3, a5
	add	s11, s5, a5
	add	ra, s4, a5
	add	a1, a6, a5
	add	t6, t3, a5
	lbu	s8, 0(s8)
	lbu	t6, 0(t6)
	lbu	a1, 0(a1)
	lbu	ra, 0(ra)
	add	s9, s3, a5
	add	a7, a2, a5
	add	t6, s8, t6
	add	a1, a1, ra
	add	a1, t6, a1
	lbu	t6, 0(s9)
	lbu	s8, 0(s11)
	lbu	s9, 0(s10)
	lbu	t1, 0(t1)
	addi	a1, a1, 2
	srli	a1, a1, 2
	add	t6, t6, s8
	add	t1, s9, t1
	add	t1, t6, t1
	addi	t1, t1, 2
	srli	t1, t1, 2
	lbu	a7, 0(a7)
	add	a1, a1, t1
	addi	a1, a1, 1
	srli	a1, a1, 1
	sub	a1, a1, a7
	sraiw	a7, a1, 31
	xor	a1, a1, a7
	subw	a0, a7, a0
	subw	a0, a1, a0
	addi	s7, s7, 1
	addi	s6, s6, 1
	addi	a3, a3, 1
	addi	s5, s5, 1
	addi	s4, s4, 1
	addi	a6, a6, 1
	addi	t3, t3, 1
	addi	s3, s3, 1
	addi	a2, a2, 1
	bne	s7, s2, .LBB0_166
# %bb.167:                              #   in Loop: Header=BB0_165 Depth=3
	addiw	a4, a4, 1
	add	a5, a5, t4
	li	a1, 16
	bne	a4, a1, .LBB0_165
# %bb.168:                              #   in Loop: Header=BB0_9 Depth=2
	lwu	t0, 1036(sp)
	lw	a2, 972(sp)
	li	ra, 0
	li	a1, 0
	li	t4, 0
	sraiw	t2, t0, 1
	ld	s5, 552(sp)                     # 8-byte Folded Reload
	add	a7, s5, t2
	sd	a2, 840(sp)                     # 8-byte Folded Spill
	seqz	a2, a2
	lw	t1, 1032(sp)
	sd	a2, 624(sp)                     # 8-byte Folded Spill
	addiw	a2, a2, -1
	ld	a5, 328(sp)                     # 8-byte Folded Reload
	and	a2, a2, a5
	slli	s0, a5, 1
	srai	a3, t1, 1
	sd	a3, 640(sp)                     # 8-byte Folded Spill
	mulw	a3, a3, s0
	lwu	a6, 1020(sp)
	sd	a7, 496(sp)                     # 8-byte Folded Spill
	add	a7, a7, a3
	add	a7, a7, a2
	sd	a7, 912(sp)                     # 8-byte Folded Spill
	lw	a4, 964(sp)
	sraiw	t6, a6, 1
	ld	s3, 320(sp)                     # 8-byte Folded Reload
	add	t5, s3, t6
	lw	a7, 1016(sp)
	sd	a4, 824(sp)                     # 8-byte Folded Spill
	seqz	a4, a4
	sd	a4, 536(sp)                     # 8-byte Folded Spill
	addiw	a4, a4, -1
	and	a4, a4, a5
	srai	a5, a7, 1
	sd	a5, 560(sp)                     # 8-byte Folded Spill
	mulw	a5, a5, s0
	sd	t5, 488(sp)                     # 8-byte Folded Spill
	add	t5, t5, a5
	add	t5, t5, a4
	sd	t5, 904(sp)                     # 8-byte Folded Spill
	sd	t1, 800(sp)                     # 8-byte Folded Spill
	andi	t3, t1, 1
	sd	a6, 816(sp)                     # 8-byte Folded Spill
	andi	s2, a6, 1
	sd	a7, 808(sp)                     # 8-byte Folded Spill
	andi	a6, a7, 1
	sd	a6, 576(sp)                     # 8-byte Folded Spill
	mulw	a6, a6, s0
	sd	t6, 544(sp)                     # 8-byte Folded Spill
	add	a5, t6, a5
	add	a4, a4, a5
	add	a6, a4, a6
	add	a5, s3, s2
	add	a4, a5, a4
	sd	a4, 896(sp)                     # 8-byte Folded Spill
	addiw	t1, s0, -16
	addi	t1, t1, 16
	sd	t1, 920(sp)                     # 8-byte Folded Spill
	sd	t2, 664(sp)                     # 8-byte Folded Spill
	add	a3, t2, a3
	add	a2, a2, a3
	sd	s2, 584(sp)                     # 8-byte Folded Spill
	add	s2, s3, s2
	add	s2, s2, a6
	sd	s2, 888(sp)                     # 8-byte Folded Spill
	add	s3, s3, a6
	sd	t3, 656(sp)                     # 8-byte Folded Spill
	sd	s0, 880(sp)                     # 8-byte Folded Spill
	mulw	a3, t3, s0
	add	a3, a2, a3
	sd	t0, 832(sp)                     # 8-byte Folded Spill
	andi	a4, t0, 1
	add	a5, s5, a4
	add	a5, a5, a3
	add	s4, s5, a3
	sd	a4, 632(sp)                     # 8-byte Folded Spill
	add	s5, s5, a4
	add	t5, s5, a2
	ld	s6, 424(sp)                     # 8-byte Folded Reload
	add	s6, s6, a2
	ld	s7, 392(sp)                     # 8-byte Folded Reload
	ld	a2, 280(sp)                     # 8-byte Folded Reload
	add	s7, s7, a2
.LBB0_169:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_170 Depth 4
	mv	a2, s7
	ld	s9, 904(sp)                     # 8-byte Folded Reload
	mv	s5, t5
	mv	a6, s4
	mv	s0, a5
	ld	s10, 896(sp)                    # 8-byte Folded Reload
	mv	s8, s3
	ld	a3, 888(sp)                     # 8-byte Folded Reload
	ld	s11, 912(sp)                    # 8-byte Folded Reload
.LBB0_170:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_169 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add	t0, s11, ra
	add	a4, a3, ra
	add	t1, s8, ra
	add	a7, s10, ra
	add	t2, s0, ra
	add	t3, a6, ra
	add	t6, s5, ra
	lbu	t0, 0(t0)
	lbu	t6, 0(t6)
	lbu	t3, 0(t3)
	lbu	t2, 0(t2)
	add	s1, s9, ra
	add	s2, a2, ra
	add	t0, t0, t6
	add	t2, t3, t2
	add	t0, t0, t2
	lbu	t2, 0(s1)
	lbu	a7, 0(a7)
	lbu	t1, 0(t1)
	lbu	a4, 0(a4)
	addi	t0, t0, 2
	srli	t0, t0, 2
	add	a7, t2, a7
	add	a4, t1, a4
	add	a4, a7, a4
	addi	a4, a4, 2
	srli	a4, a4, 2
	lbu	a7, 0(s2)
	add	a4, t0, a4
	addi	a4, a4, 1
	srli	a4, a4, 1
	sub	a4, a4, a7
	sraiw	a7, a4, 31
	xor	a4, a4, a7
	subw	a1, a7, a1
	subw	a1, a4, a1
	addi	s11, s11, 1
	addi	a3, a3, 1
	addi	s8, s8, 1
	addi	s10, s10, 1
	addi	s0, s0, 1
	addi	a6, a6, 1
	addi	s5, s5, 1
	addi	s9, s9, 1
	addi	a2, a2, 1
	bne	s11, s6, .LBB0_170
# %bb.171:                              #   in Loop: Header=BB0_169 Depth=3
	addiw	t4, t4, 1
	ld	a2, 920(sp)                     # 8-byte Folded Reload
	add	ra, ra, a2
	li	a2, 8
	bne	t4, a2, .LBB0_169
# %bb.172:                              #   in Loop: Header=BB0_9 Depth=2
	lwu	t3, 1028(sp)
	li	s0, 0
	li	s7, 0
	li	a7, 0
	lw	a2, 968(sp)
	sraiw	s1, t3, 1
	ld	t1, 552(sp)                     # 8-byte Folded Reload
	add	t0, t1, s1
	lw	t5, 1024(sp)
	sd	a2, 768(sp)                     # 8-byte Folded Spill
	seqz	a2, a2
	sd	a2, 616(sp)                     # 8-byte Folded Spill
	addiw	a2, a2, -1
	ld	t2, 328(sp)                     # 8-byte Folded Reload
	and	a2, a2, t2
	srai	a3, t5, 1
	sd	a3, 600(sp)                     # 8-byte Folded Spill
	ld	s3, 880(sp)                     # 8-byte Folded Reload
	mulw	a3, a3, s3
	lwu	a6, 1012(sp)
	sd	t0, 472(sp)                     # 8-byte Folded Spill
	add	t0, t0, a3
	add	t0, t0, a2
	sd	t0, 912(sp)                     # 8-byte Folded Spill
	lw	a4, 960(sp)
	sraiw	s2, a6, 1
	ld	t0, 320(sp)                     # 8-byte Folded Reload
	add	t6, t0, s2
	lw	t4, 1008(sp)
	sd	a4, 784(sp)                     # 8-byte Folded Spill
	seqz	a4, a4
	sd	a4, 512(sp)                     # 8-byte Folded Spill
	addiw	a4, a4, -1
	and	a4, a4, t2
	srai	a5, t4, 1
	sd	a5, 504(sp)                     # 8-byte Folded Spill
	mulw	a5, a5, s3
	sd	t6, 464(sp)                     # 8-byte Folded Spill
	add	t6, t6, a5
	add	t6, t6, a4
	sd	t6, 904(sp)                     # 8-byte Folded Spill
	sd	a6, 776(sp)                     # 8-byte Folded Spill
	andi	s5, a6, 1
	sd	t4, 760(sp)                     # 8-byte Folded Spill
	andi	t4, t4, 1
	sd	t4, 528(sp)                     # 8-byte Folded Spill
	mulw	a6, t4, s3
	sd	s2, 520(sp)                     # 8-byte Folded Spill
	add	a5, s2, a5
	add	a4, a4, a5
	add	a6, a4, a6
	add	s8, t0, s5
	add	a4, s8, a4
	sd	a4, 896(sp)                     # 8-byte Folded Spill
	sd	t5, 752(sp)                     # 8-byte Folded Spill
	andi	t5, t5, 1
	sd	t5, 592(sp)                     # 8-byte Folded Spill
	mulw	a4, t5, s3
	sd	s1, 648(sp)                     # 8-byte Folded Spill
	add	a3, s1, a3
	add	a2, a2, a3
	sd	s5, 568(sp)                     # 8-byte Folded Spill
	add	s5, t0, s5
	add	s5, s5, a6
	sd	s5, 888(sp)                     # 8-byte Folded Spill
	add	a6, t0, a6
	sd	a6, 880(sp)                     # 8-byte Folded Spill
	add	a4, a2, a4
	sd	t3, 792(sp)                     # 8-byte Folded Spill
	andi	a6, t3, 1
	add	s3, t1, a6
	add	s3, s3, a4
	add	s5, t1, a4
	sd	a6, 608(sp)                     # 8-byte Folded Spill
	add	a6, t1, a6
	add	a6, a6, a2
	ld	a3, 280(sp)                     # 8-byte Folded Reload
	add	t2, t2, a3
	ld	a3, 392(sp)                     # 8-byte Folded Reload
	add	t2, a3, t2
	ld	a3, 424(sp)                     # 8-byte Folded Reload
	add	a2, a3, a2
.LBB0_173:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_174 Depth 4
	mv	t5, t2
	ld	a4, 904(sp)                     # 8-byte Folded Reload
	mv	s4, a6
	mv	s10, s5
	mv	s2, s3
	ld	s6, 896(sp)                     # 8-byte Folded Reload
	ld	a5, 880(sp)                     # 8-byte Folded Reload
	ld	s9, 888(sp)                     # 8-byte Folded Reload
	ld	ra, 912(sp)                     # 8-byte Folded Reload
.LBB0_174:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_173 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add	t1, ra, s0
	add	t0, s9, s0
	add	s8, a5, s0
	add	t6, s6, s0
	add	t4, s2, s0
	add	t3, s10, s0
	add	s1, s4, s0
	lbu	t1, 0(t1)
	lbu	s1, 0(s1)
	lbu	t3, 0(t3)
	lbu	t4, 0(t4)
	add	s11, a4, s0
	add	a3, t5, s0
	add	t1, t1, s1
	add	t3, t3, t4
	add	t1, t1, t3
	lbu	t3, 0(s11)
	lbu	t4, 0(t6)
	lbu	t6, 0(s8)
	lbu	t0, 0(t0)
	addi	t1, t1, 2
	srli	t1, t1, 2
	add	t3, t3, t4
	add	t0, t6, t0
	add	t0, t3, t0
	addi	t0, t0, 2
	srli	t0, t0, 2
	lbu	a3, 0(a3)
	add	t0, t1, t0
	addi	t0, t0, 1
	srli	t0, t0, 1
	sub	a3, t0, a3
	sraiw	t0, a3, 31
	xor	a3, a3, t0
	subw	t0, t0, s7
	subw	s7, a3, t0
	addi	ra, ra, 1
	addi	s9, s9, 1
	addi	a5, a5, 1
	addi	s6, s6, 1
	addi	s2, s2, 1
	addi	s10, s10, 1
	addi	s4, s4, 1
	addi	a4, a4, 1
	addi	t5, t5, 1
	bne	ra, a2, .LBB0_174
# %bb.175:                              #   in Loop: Header=BB0_173 Depth=3
	addiw	a7, a7, 1
	ld	a3, 920(sp)                     # 8-byte Folded Reload
	add	s0, s0, a3
	li	a3, 8
	bne	a7, a3, .LBB0_173
# %bb.176:                              #   in Loop: Header=BB0_9 Depth=2
	lw	a5, 1000(sp)
	lw	a4, 988(sp)
	lw	a2, 996(sp)
	lw	a3, 984(sp)
	addw	a1, s7, a1
	bge	a0, a1, .LBB0_206
# %bb.177:                              #   in Loop: Header=BB0_9 Depth=2
	bge	a0, a5, .LBB0_206
# %bb.178:                              #   in Loop: Header=BB0_9 Depth=2
	bge	a0, a4, .LBB0_206
# %bb.179:                              #   in Loop: Header=BB0_9 Depth=2
	bge	a0, a2, .LBB0_206
# %bb.180:                              #   in Loop: Header=BB0_9 Depth=2
	bge	a0, a3, .LBB0_206
# %bb.181:                              #   in Loop: Header=BB0_9 Depth=2
	li	a0, 1
	slli	a0, a0, 33
	addi	a0, a0, 12
	ld	a1, 360(sp)                     # 8-byte Folded Reload
	sd	a0, 0(a1)
	lui	a0, %hi(width)
	lw	a2, %lo(width)(a0)
	li	t0, 0
	li	a0, 0
	li	a4, 0
	ld	a1, 720(sp)                     # 8-byte Folded Reload
	mulw	a3, a2, a1
	ld	a1, 728(sp)                     # 8-byte Folded Reload
	add	t1, a1, a3
	ld	a1, 688(sp)                     # 8-byte Folded Reload
	mulw	a6, a2, a1
	ld	a7, 696(sp)                     # 8-byte Folded Reload
	add	a7, a7, a6
	ld	a1, 704(sp)                     # 8-byte Folded Reload
	mulw	t2, a2, a1
	add	a1, a7, t2
	sd	a1, 912(sp)                     # 8-byte Folded Spill
	ld	t4, 672(sp)                     # 8-byte Folded Reload
	add	t4, t4, a6
	ld	a1, 712(sp)                     # 8-byte Folded Reload
	sd	a7, 920(sp)                     # 8-byte Folded Spill
	add	a7, a7, a1
	sd	a7, 904(sp)                     # 8-byte Folded Spill
	ld	a5, 736(sp)                     # 8-byte Folded Reload
	mulw	t5, a2, a5
	add	t2, t2, a1
	add	a1, t1, t5
	sd	a1, 896(sp)                     # 8-byte Folded Spill
	add	t4, t4, t2
	ld	a5, 744(sp)                     # 8-byte Folded Reload
	mv	a7, t1
	add	t2, t1, a5
	addiw	a2, a2, -16
	addi	t1, a2, 16
	ld	a1, 320(sp)                     # 8-byte Folded Reload
	add	t4, a1, t4
	ld	t6, 680(sp)                     # 8-byte Folded Reload
	add	t6, t6, a3
	add	t5, t5, a5
	add	a2, t6, t5
	ld	a1, 552(sp)                     # 8-byte Folded Reload
	add	a2, a1, a2
	ld	a3, 392(sp)                     # 8-byte Folded Reload
	ld	a1, 280(sp)                     # 8-byte Folded Reload
	add	a3, a3, a1
	ld	t5, 424(sp)                     # 8-byte Folded Reload
	add	t5, t5, t6
.LBB0_182:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_183 Depth 4
	mv	t6, a3
	ld	s0, 920(sp)                     # 8-byte Folded Reload
	mv	s1, t2
	ld	s2, 896(sp)                     # 8-byte Folded Reload
	mv	s3, a2
	ld	s4, 904(sp)                     # 8-byte Folded Reload
	ld	s5, 912(sp)                     # 8-byte Folded Reload
	mv	s6, t4
	mv	s7, a7
.LBB0_183:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_182 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add	s8, s7, t0
	add	s9, s6, t0
	add	s10, s5, t0
	add	s11, s4, t0
	add	ra, s3, t0
	add	a1, s2, t0
	add	t3, s1, t0
	lbu	s8, 0(s8)
	lbu	t3, 0(t3)
	lbu	a1, 0(a1)
	lbu	ra, 0(ra)
	add	a5, s0, t0
	add	a6, t6, t0
	add	t3, s8, t3
	add	a1, a1, ra
	add	a1, t3, a1
	lbu	a5, 0(a5)
	lbu	t3, 0(s11)
	lbu	s8, 0(s10)
	lbu	s9, 0(s9)
	addi	a1, a1, 2
	srli	a1, a1, 2
	add	a5, a5, t3
	add	s8, s8, s9
	add	a5, a5, s8
	addi	a5, a5, 2
	srli	a5, a5, 2
	lbu	a6, 0(a6)
	add	a1, a1, a5
	addi	a1, a1, 1
	srli	a1, a1, 1
	subw	a1, a1, a6
	mul	a1, a1, a1
	addw	a0, a1, a0
	addi	s7, s7, 1
	addi	s6, s6, 1
	addi	s5, s5, 1
	addi	s4, s4, 1
	addi	s3, s3, 1
	addi	s2, s2, 1
	addi	s1, s1, 1
	addi	s0, s0, 1
	addi	t6, t6, 1
	bne	s7, t5, .LBB0_183
# %bb.184:                              #   in Loop: Header=BB0_182 Depth=3
	addiw	a4, a4, 1
	add	t0, t0, t1
	li	a1, 16
	bne	a4, a1, .LBB0_182
# %bb.185:                              #   in Loop: Header=BB0_9 Depth=2
	li	s0, 1
	j	.LBB0_219
.LBB0_186:                              #   in Loop: Header=BB0_9 Depth=2
	li	a0, 1
	slli	a0, a0, 33
	sd	a0, 0(t3)
	sd	zero, 24(t3)
	sw	a5, 88(t3)
	ld	t1, 312(sp)                     # 8-byte Folded Reload
.LBB0_187:                              #   in Loop: Header=BB0_9 Depth=2
	ld	t2, 352(sp)                     # 8-byte Folded Reload
	ld	t4, 344(sp)                     # 8-byte Folded Reload
	ld	t5, 336(sp)                     # 8-byte Folded Reload
	ld	a5, 384(sp)                     # 8-byte Folded Reload
	j	.LBB0_8
.LBB0_188:                              #   in Loop: Header=BB0_9 Depth=2
	ld	s6, 696(sp)                     # 8-byte Folded Reload
	bge	a5, a4, .LBB0_239
# %bb.189:                              #   in Loop: Header=BB0_9 Depth=2
	bge	a5, a1, .LBB0_239
# %bb.190:                              #   in Loop: Header=BB0_9 Depth=2
	bge	a5, a2, .LBB0_239
# %bb.191:                              #   in Loop: Header=BB0_9 Depth=2
	li	s1, 1
	slli	a0, s1, 32
	addi	a0, a0, 8
	sd	a0, 0(a3)
	lui	a0, %hi(width)
	lw	a0, %lo(width)(a0)
	ld	a1, 856(sp)                     # 8-byte Folded Reload
	addi	a1, a1, -1
	and	a0, a1, a0
	ld	a1, 552(sp)                     # 8-byte Folded Reload
	ld	a2, 848(sp)                     # 8-byte Folded Reload
	add	a1, a1, a2
	ld	a2, 840(sp)                     # 8-byte Folded Reload
	add	a1, a1, a2
	add	a0, a1, a0
	li	a5, 16
	ld	a1, 704(sp)                     # 8-byte Folded Reload
	ld	a2, 720(sp)                     # 8-byte Folded Reload
	ld	a3, 864(sp)                     # 8-byte Folded Reload
	ld	a4, 280(sp)                     # 8-byte Folded Reload
	call	dist2
	li	s5, 2
	j	.LBB0_259
.LBB0_192:                              #   in Loop: Header=BB0_9 Depth=2
	lw	a2, 1004(sp)
	lw	a3, 992(sp)
                                        # implicit-def: $x22
                                        # implicit-def: $x23
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
	ld	t3, 360(sp)                     # 8-byte Folded Reload
	ld	a6, 328(sp)                     # 8-byte Folded Reload
	ld	s1, 256(sp)                     # 8-byte Folded Reload
	ld	a7, 208(sp)                     # 8-byte Folded Reload
.LBB0_193:                              #   in Loop: Header=BB0_9 Depth=2
	bge	a3, a2, .LBB0_220
# %bb.194:                              #   in Loop: Header=BB0_9 Depth=2
	lw	a0, 980(sp)
	li	s0, 1
	sw	s0, 4(t3)
	seqz	a0, a0
	lw	a3, 1052(sp)
	addiw	a0, a0, -1
	and	a0, a0, a6
	lw	a4, 1048(sp)
	srai	a1, a3, 1
	ld	s1, 552(sp)                     # 8-byte Folded Reload
	add	a1, s1, a1
	slliw	s8, a6, 1
	srliw	a2, a4, 1
	mulw	a2, a2, s8
	add	a1, a1, a2
	add	a0, a1, a0
	andi	a3, a3, 1
	andi	a4, a4, 1
	li	a5, 8
	mv	a1, a7
	mv	a2, s8
	mv	s3, s2
	mv	s2, a6
	mv	s4, a7
	call	dist2
	lw	a1, 976(sp)
	mv	s9, a0
	seqz	a0, a1
	lw	a3, 1044(sp)
	addiw	a0, a0, -1
	lw	a4, 1040(sp)
	and	a0, a0, s2
	srai	a1, a3, 1
	add	a1, s1, a1
	ld	s1, 256(sp)                     # 8-byte Folded Reload
	srliw	a2, a4, 1
	mulw	a2, a2, s8
	add	a1, a1, a2
	add	a0, a1, a0
	add	a1, s4, s2
	mv	s2, s3
	andi	a3, a3, 1
	andi	a4, a4, 1
	li	a5, 8
	mv	a2, s8
	call	dist2
	ld	t3, 360(sp)                     # 8-byte Folded Reload
	addw	t5, a0, s9
	j	.LBB0_43
.LBB0_195:                              #   in Loop: Header=BB0_9 Depth=2
	sd	t2, 832(sp)                     # 8-byte Folded Spill
	li	ra, 0
	li	a7, 0
	ld	a5, 632(sp)                     # 8-byte Folded Reload
	sraiw	s2, a5, 1
	ld	a2, 640(sp)                     # 8-byte Folded Reload
	sraiw	a3, a2, 1
	ld	t0, 544(sp)                     # 8-byte Folded Reload
	mulw	a1, a3, t0
	sd	s2, 880(sp)                     # 8-byte Folded Spill
	sd	a1, 872(sp)                     # 8-byte Folded Spill
	add	s2, s2, a1
	ld	a1, 552(sp)                     # 8-byte Folded Reload
	add	t2, s2, a1
	ld	s0, 592(sp)                     # 8-byte Folded Reload
	sraiw	a6, s0, 1
	ld	t1, 536(sp)                     # 8-byte Folded Reload
	add	t1, t1, a6
	ld	a3, 584(sp)                     # 8-byte Folded Reload
	sraiw	a4, a3, 1
	mulw	t5, a4, t0
	add	t1, t1, t5
	slli	a4, a3, 63
	srai	a4, a4, 63
	and	t6, a4, t0
	add	a3, t1, t6
	sd	a3, 904(sp)                     # 8-byte Folded Spill
	andi	s0, s0, 1
	sd	t1, 912(sp)                     # 8-byte Folded Spill
	add	t1, t1, s0
	sd	t1, 896(sp)                     # 8-byte Folded Spill
	slli	a4, a2, 63
	srai	a4, a4, 63
	and	t4, a4, t0
	sd	t4, 856(sp)                     # 8-byte Folded Spill
	add	t4, t2, t4
	andi	a5, a5, 1
	ld	a2, 328(sp)                     # 8-byte Folded Reload
	add	a6, a2, a6
	add	a6, a6, t5
	add	t5, t4, a5
	add	a6, t6, a6
	sd	a5, 864(sp)                     # 8-byte Folded Spill
	mv	t1, t2
	add	t6, t2, a5
	add	s0, a1, s0
	add	s0, s0, a6
	ld	s1, 392(sp)                     # 8-byte Folded Reload
	ld	a1, 280(sp)                     # 8-byte Folded Reload
	add	s1, s1, a1
	ld	a1, 424(sp)                     # 8-byte Folded Reload
	add	s2, a1, s2
.LBB0_196:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_197 Depth 4
	mv	s3, s1
	ld	s4, 912(sp)                     # 8-byte Folded Reload
	mv	s5, t6
	mv	s6, t4
	mv	s7, t5
	ld	s8, 896(sp)                     # 8-byte Folded Reload
	ld	s9, 904(sp)                     # 8-byte Folded Reload
	mv	s10, s0
	mv	a6, t1
.LBB0_197:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_196 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add	t0, a6, ra
	add	t2, s10, ra
	add	a4, s9, ra
	add	a3, s8, ra
	add	a1, s7, ra
	add	a2, s6, ra
	add	a5, s5, ra
	lbu	t0, 0(t0)
	lbu	a5, 0(a5)
	lbu	a2, 0(a2)
	lbu	a1, 0(a1)
	add	s11, s4, ra
	add	t3, s3, ra
	add	a5, t0, a5
	add	a1, a2, a1
	add	a1, a5, a1
	lbu	a2, 0(s11)
	lbu	a3, 0(a3)
	lbu	a4, 0(a4)
	lbu	a5, 0(t2)
	addi	a1, a1, 2
	srli	a1, a1, 2
	add	a2, a2, a3
	add	a4, a4, a5
	add	a2, a2, a4
	addi	a2, a2, 2
	srli	a2, a2, 2
	lbu	a3, 0(t3)
	add	a1, a1, a2
	addi	a1, a1, 1
	srli	a1, a1, 1
	sub	a1, a1, a3
	sraiw	a2, a1, 31
	xor	a1, a1, a2
	subw	a2, a2, a0
	subw	a0, a1, a2
	addi	a6, a6, 1
	addi	s10, s10, 1
	addi	s9, s9, 1
	addi	s8, s8, 1
	addi	s7, s7, 1
	addi	s6, s6, 1
	addi	s5, s5, 1
	addi	s4, s4, 1
	addi	s3, s3, 1
	bne	a6, s2, .LBB0_197
# %bb.198:                              #   in Loop: Header=BB0_196 Depth=3
	addiw	a7, a7, 1
	ld	a1, 920(sp)                     # 8-byte Folded Reload
	add	ra, ra, a1
	li	a1, 8
	bne	a7, a1, .LBB0_196
# %bb.199:                              #   in Loop: Header=BB0_9 Depth=2
	li	s8, 0
	li	a1, 0
	li	t0, 0
	ld	t5, 608(sp)                     # 8-byte Folded Reload
	sraiw	a2, t5, 1
	ld	a3, 552(sp)                     # 8-byte Folded Reload
	add	a2, a3, a2
	ld	a4, 600(sp)                     # 8-byte Folded Reload
	sraiw	a3, a4, 1
	ld	t3, 544(sp)                     # 8-byte Folded Reload
	mulw	t1, a3, t3
	add	t1, a2, t1
	ld	t2, 536(sp)                     # 8-byte Folded Reload
	ld	a3, 880(sp)                     # 8-byte Folded Reload
	add	t2, t2, a3
	ld	t6, 872(sp)                     # 8-byte Folded Reload
	add	a6, t2, t6
	slli	a2, a4, 63
	srai	a2, a2, 63
	and	t3, a2, t3
	add	t3, t1, t3
	andi	t5, t5, 1
	sd	t3, 904(sp)                     # 8-byte Folded Spill
	add	t3, t3, t5
	sd	t3, 896(sp)                     # 8-byte Folded Spill
	sd	t1, 912(sp)                     # 8-byte Folded Spill
	add	t1, t1, t5
	sd	t1, 888(sp)                     # 8-byte Folded Spill
	ld	a5, 856(sp)                     # 8-byte Folded Reload
	add	a5, a6, a5
	ld	a2, 328(sp)                     # 8-byte Folded Reload
	add	a2, a2, a3
	add	t6, a2, t6
	ld	t2, 864(sp)                     # 8-byte Folded Reload
	add	a2, a5, t2
	mv	t3, a6
	add	t2, a6, t2
	ld	a3, 392(sp)                     # 8-byte Folded Reload
	ld	a4, 200(sp)                     # 8-byte Folded Reload
	add	a3, a3, a4
	ld	a4, 424(sp)                     # 8-byte Folded Reload
	add	t6, a4, t6
.LBB0_200:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_201 Depth 4
	mv	s0, a3
	ld	s1, 912(sp)                     # 8-byte Folded Reload
	mv	a4, t2
	mv	s3, a5
	mv	s4, a2
	ld	s5, 888(sp)                     # 8-byte Folded Reload
	ld	s6, 904(sp)                     # 8-byte Folded Reload
	ld	s7, 896(sp)                     # 8-byte Folded Reload
	mv	a6, t3
.LBB0_201:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_200 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add	t1, a6, s8
	add	s9, s7, s8
	add	s10, s6, s8
	add	s11, s5, s8
	add	ra, s4, s8
	add	a7, s3, s8
	add	s2, a4, s8
	lbu	t1, 0(t1)
	lbu	s2, 0(s2)
	lbu	a7, 0(a7)
	lbu	ra, 0(ra)
	add	t5, s1, s8
	add	t4, s0, s8
	add	t1, t1, s2
	add	a7, a7, ra
	add	a7, t1, a7
	lbu	t1, 0(t5)
	lbu	t5, 0(s11)
	lbu	s2, 0(s10)
	lbu	s9, 0(s9)
	addi	a7, a7, 2
	srli	a7, a7, 2
	add	t1, t1, t5
	add	s2, s2, s9
	add	t1, t1, s2
	addi	t1, t1, 2
	srli	t1, t1, 2
	lbu	t4, 0(t4)
	add	a7, a7, t1
	addi	a7, a7, 1
	srli	a7, a7, 1
	sub	a7, a7, t4
	sraiw	t1, a7, 31
	xor	a7, a7, t1
	subw	a1, t1, a1
	subw	a1, a7, a1
	addi	a6, a6, 1
	addi	s7, s7, 1
	addi	s6, s6, 1
	addi	s5, s5, 1
	addi	s4, s4, 1
	addi	s3, s3, 1
	addi	a4, a4, 1
	addi	s1, s1, 1
	addi	s0, s0, 1
	bne	a6, t6, .LBB0_201
# %bb.202:                              #   in Loop: Header=BB0_200 Depth=3
	addiw	t0, t0, 1
	ld	a4, 920(sp)                     # 8-byte Folded Reload
	add	s8, s8, a4
	li	a4, 8
	bne	t0, a4, .LBB0_200
# %bb.203:                              #   in Loop: Header=BB0_9 Depth=2
	lw	a2, 1004(sp)
	lw	a3, 992(sp)
	addw	a0, a1, a0
	bge	a0, a2, .LBB0_252
# %bb.204:                              #   in Loop: Header=BB0_9 Depth=2
	ld	t3, 360(sp)                     # 8-byte Folded Reload
	li	s5, 2
	ld	s1, 256(sp)                     # 8-byte Folded Reload
	ld	s2, 280(sp)                     # 8-byte Folded Reload
	ld	a7, 208(sp)                     # 8-byte Folded Reload
	ld	s6, 624(sp)                     # 8-byte Folded Reload
	ld	s7, 616(sp)                     # 8-byte Folded Reload
	bge	a0, a3, .LBB0_253
# %bb.205:                              #   in Loop: Header=BB0_9 Depth=2
	li	s0, 3
	sw	s0, 4(t3)
	ld	t5, 832(sp)                     # 8-byte Folded Reload
	j	.LBB0_43
.LBB0_206:                              #   in Loop: Header=BB0_9 Depth=2
	ld	a6, 360(sp)                     # 8-byte Folded Reload
	ld	s1, 280(sp)                     # 8-byte Folded Reload
	bge	a1, a5, .LBB0_242
# %bb.207:                              #   in Loop: Header=BB0_9 Depth=2
	bge	a1, a4, .LBB0_242
# %bb.208:                              #   in Loop: Header=BB0_9 Depth=2
	bge	a1, a2, .LBB0_242
# %bb.209:                              #   in Loop: Header=BB0_9 Depth=2
	bge	a1, a3, .LBB0_242
# %bb.210:                              #   in Loop: Header=BB0_9 Depth=2
	li	a0, 1
	slli	a0, a0, 32
	addi	a0, a0, 12
	sd	a0, 0(a6)
	lui	a0, %hi(width)
	lw	a3, %lo(width)(a0)
	li	s11, 0
	li	a0, 0
	li	a7, 0
	ld	a1, 624(sp)                     # 8-byte Folded Reload
	addi	a1, a1, -1
	and	t2, a1, a3
	ld	a4, 496(sp)                     # 8-byte Folded Reload
	add	a4, a4, t2
	ld	a1, 536(sp)                     # 8-byte Folded Reload
	addi	a1, a1, -1
	and	a1, a1, a3
	ld	a5, 488(sp)                     # 8-byte Folded Reload
	add	a5, a5, a1
	ld	a2, 544(sp)                     # 8-byte Folded Reload
	add	a1, a1, a2
	sd	a3, 880(sp)                     # 8-byte Folded Spill
	slli	a3, a3, 1
	ld	a2, 640(sp)                     # 8-byte Folded Reload
	mulw	t3, a3, a2
	add	a4, a4, t3
	sd	a4, 912(sp)                     # 8-byte Folded Spill
	ld	a2, 560(sp)                     # 8-byte Folded Reload
	mulw	t0, a3, a2
	add	a5, a5, t0
	sd	a5, 904(sp)                     # 8-byte Folded Spill
	ld	a2, 576(sp)                     # 8-byte Folded Reload
	mulw	t1, a3, a2
	ld	a2, 656(sp)                     # 8-byte Folded Reload
	mulw	t5, a3, a2
	add	a1, a1, t0
	add	t4, a1, t1
	ld	a2, 320(sp)                     # 8-byte Folded Reload
	ld	t0, 584(sp)                     # 8-byte Folded Reload
	add	t1, a2, t0
	add	a1, t1, a1
	sd	a1, 896(sp)                     # 8-byte Folded Spill
	sd	a3, 888(sp)                     # 8-byte Folded Spill
	addiw	a1, a3, -16
	addi	a1, a1, 16
	sd	a1, 920(sp)                     # 8-byte Folded Spill
	add	t0, a2, t0
	add	t0, t0, t4
	add	t4, a2, t4
	ld	a1, 664(sp)                     # 8-byte Folded Reload
	add	t2, t2, a1
	add	t2, t2, t3
	add	t5, t2, t5
	ld	t3, 552(sp)                     # 8-byte Folded Reload
	ld	a1, 632(sp)                     # 8-byte Folded Reload
	add	t6, t3, a1
	add	t6, t6, t5
	add	s0, t3, t5
	add	t3, t3, a1
	add	t3, t3, t2
	ld	t5, 392(sp)                     # 8-byte Folded Reload
	add	t5, t5, s1
	ld	s2, 424(sp)                     # 8-byte Folded Reload
	add	s2, s2, t2
.LBB0_211:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_212 Depth 4
	mv	t2, t5
	ld	s4, 904(sp)                     # 8-byte Folded Reload
	mv	s3, t3
	mv	s6, s0
	mv	s7, t6
	ld	s5, 896(sp)                     # 8-byte Folded Reload
	mv	s8, t4
	mv	s9, t0
	ld	s10, 912(sp)                    # 8-byte Folded Reload
.LBB0_212:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_211 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add	a4, s10, s11
	add	a5, s9, s11
	add	ra, s8, s11
	add	a1, s5, s11
	add	a6, s7, s11
	add	a2, s6, s11
	add	a3, s3, s11
	lbu	a4, 0(a4)
	lbu	a3, 0(a3)
	lbu	a2, 0(a2)
	lbu	a6, 0(a6)
	add	s1, s4, s11
	add	t1, t2, s11
	add	a3, a4, a3
	add	a2, a2, a6
	add	a2, a3, a2
	lbu	a3, 0(s1)
	lbu	a1, 0(a1)
	lbu	a4, 0(ra)
	lbu	a5, 0(a5)
	addi	a2, a2, 2
	srli	a2, a2, 2
	add	a1, a3, a1
	add	a4, a4, a5
	add	a1, a1, a4
	addi	a1, a1, 2
	srli	a1, a1, 2
	lbu	a3, 0(t1)
	add	a1, a2, a1
	addi	a1, a1, 1
	srli	a1, a1, 1
	subw	a1, a1, a3
	mul	a1, a1, a1
	add	a0, a1, a0
	addi	s10, s10, 1
	addi	s9, s9, 1
	addi	s8, s8, 1
	addi	s5, s5, 1
	addi	s7, s7, 1
	addi	s6, s6, 1
	addi	s3, s3, 1
	addi	s4, s4, 1
	addi	t2, t2, 1
	bne	s10, s2, .LBB0_212
# %bb.213:                              #   in Loop: Header=BB0_211 Depth=3
	addiw	a7, a7, 1
	ld	a1, 920(sp)                     # 8-byte Folded Reload
	add	s11, s11, a1
	li	a1, 8
	bne	a7, a1, .LBB0_211
# %bb.214:                              #   in Loop: Header=BB0_9 Depth=2
	li	a3, 0
	li	a4, 0
	li	a6, 0
	ld	a1, 600(sp)                     # 8-byte Folded Reload
	ld	t0, 888(sp)                     # 8-byte Folded Reload
	mulw	a1, t0, a1
	ld	a2, 504(sp)                     # 8-byte Folded Reload
	mulw	a2, t0, a2
	ld	a5, 528(sp)                     # 8-byte Folded Reload
	mulw	a7, t0, a5
	ld	a5, 592(sp)                     # 8-byte Folded Reload
	mulw	t3, t0, a5
	ld	a5, 464(sp)                     # 8-byte Folded Reload
	add	a5, a5, a2
	ld	t0, 520(sp)                     # 8-byte Folded Reload
	add	a2, t0, a2
	ld	t0, 512(sp)                     # 8-byte Folded Reload
	addi	t0, t0, -1
	ld	t6, 880(sp)                     # 8-byte Folded Reload
	and	t0, t0, t6
	add	a5, a5, t0
	sd	a5, 912(sp)                     # 8-byte Folded Spill
	add	a2, t0, a2
	add	t2, a2, a7
	ld	a5, 320(sp)                     # 8-byte Folded Reload
	ld	t1, 568(sp)                     # 8-byte Folded Reload
	add	a7, a5, t1
	add	a2, a7, a2
	sd	a2, 904(sp)                     # 8-byte Folded Spill
	ld	a2, 616(sp)                     # 8-byte Folded Reload
	addi	a2, a2, -1
	and	a2, a2, t6
	ld	t0, 472(sp)                     # 8-byte Folded Reload
	add	t0, t0, a1
	add	t0, t0, a2
	sd	t0, 896(sp)                     # 8-byte Folded Spill
	add	t1, a5, t1
	add	t1, t1, t2
	sd	t1, 888(sp)                     # 8-byte Folded Spill
	add	t2, a5, t2
	ld	a5, 648(sp)                     # 8-byte Folded Reload
	add	a1, a5, a1
	add	a1, a2, a1
	add	t4, a1, t3
	ld	t5, 552(sp)                     # 8-byte Folded Reload
	ld	a2, 608(sp)                     # 8-byte Folded Reload
	add	t3, t5, a2
	add	t3, t3, t4
	add	t4, t5, t4
	add	t5, t5, a2
	add	a7, t5, a1
	ld	a2, 280(sp)                     # 8-byte Folded Reload
	add	a2, t6, a2
	ld	a5, 392(sp)                     # 8-byte Folded Reload
	add	a2, a5, a2
	ld	t6, 424(sp)                     # 8-byte Folded Reload
	add	t6, t6, a1
.LBB0_215:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_216 Depth 4
	mv	s0, a2
	ld	s1, 912(sp)                     # 8-byte Folded Reload
	mv	t5, a7
	mv	s3, t4
	mv	s4, t3
	ld	s5, 904(sp)                     # 8-byte Folded Reload
	mv	s6, t2
	ld	s7, 888(sp)                     # 8-byte Folded Reload
	ld	s8, 896(sp)                     # 8-byte Folded Reload
.LBB0_216:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_215 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add	a1, s8, a3
	add	t0, s7, a3
	add	s10, s6, a3
	add	s11, s5, a3
	add	ra, s4, a3
	add	a5, s3, a3
	add	s2, t5, a3
	lbu	a1, 0(a1)
	lbu	s2, 0(s2)
	lbu	a5, 0(a5)
	lbu	ra, 0(ra)
	add	s9, s1, a3
	add	t1, s0, a3
	add	a1, a1, s2
	add	a5, a5, ra
	add	a1, a1, a5
	lbu	a5, 0(s9)
	lbu	s2, 0(s11)
	lbu	s9, 0(s10)
	lbu	t0, 0(t0)
	addi	a1, a1, 2
	srli	a1, a1, 2
	add	a5, a5, s2
	add	t0, s9, t0
	add	a5, a5, t0
	addi	a5, a5, 2
	srli	a5, a5, 2
	lbu	t0, 0(t1)
	add	a1, a1, a5
	addi	a1, a1, 1
	srli	a1, a1, 1
	subw	a1, a1, t0
	mul	a1, a1, a1
	add	a4, a1, a4
	addi	s8, s8, 1
	addi	s7, s7, 1
	addi	s6, s6, 1
	addi	s5, s5, 1
	addi	s4, s4, 1
	addi	s3, s3, 1
	addi	t5, t5, 1
	addi	s1, s1, 1
	addi	s0, s0, 1
	bne	s8, t6, .LBB0_216
# %bb.217:                              #   in Loop: Header=BB0_215 Depth=3
	addiw	a6, a6, 1
	ld	a1, 920(sp)                     # 8-byte Folded Reload
	add	a3, a3, a1
	li	a1, 8
	bne	a6, a1, .LBB0_215
# %bb.218:                              #   in Loop: Header=BB0_9 Depth=2
	li	s0, 0
	addw	a0, a4, a0
.LBB0_219:                              #   in Loop: Header=BB0_9 Depth=2
	ld	t1, 312(sp)                     # 8-byte Folded Reload
	ld	t3, 360(sp)                     # 8-byte Folded Reload
	li	s5, 2
	ld	a5, 384(sp)                     # 8-byte Folded Reload
	ld	a4, 256(sp)                     # 8-byte Folded Reload
	blt	a4, a0, .LBB0_270
	j	.LBB0_272
.LBB0_220:                              #   in Loop: Header=BB0_9 Depth=2
	lw	a3, 1076(sp)
	li	s0, 2
	lw	a4, 1072(sp)
	sw	s0, 4(t3)
	srai	a0, a3, 1
	ld	a1, 552(sp)                     # 8-byte Folded Reload
	add	a0, a1, a0
	srli	a1, a4, 1
	mulw	a1, a1, a6
	add	a0, a0, a1
	andi	a3, a3, 1
	andi	a4, a4, 1
	li	a5, 16
	mv	a1, a7
	mv	a2, a6
	call	dist2
	ld	t3, 360(sp)                     # 8-byte Folded Reload
	mv	t5, a0
	j	.LBB0_43
.LBB0_221:                              #   in Loop: Header=BB0_9 Depth=2
	ld	t3, 360(sp)                     # 8-byte Folded Reload
	li	s5, 2
	ld	s6, 696(sp)                     # 8-byte Folded Reload
	ld	s10, 720(sp)                    # 8-byte Folded Reload
	ld	s11, 704(sp)                    # 8-byte Folded Reload
	ld	s1, 648(sp)                     # 8-byte Folded Reload
	ld	a0, 688(sp)                     # 8-byte Folded Reload
	ld	s7, 800(sp)                     # 8-byte Folded Reload
	bge	a1, a2, .LBB0_222
	j	.LBB0_152
.LBB0_222:                              #   in Loop: Header=BB0_9 Depth=2
	lw	a1, 1052(sp)
	li	s2, 1
	mv	s0, t3
	sw	s2, 4(t3)
	beqz	a1, .LBB0_224
# %bb.223:                              #   in Loop: Header=BB0_9 Depth=2
	ld	a0, 712(sp)                     # 8-byte Folded Reload
.LBB0_224:                              #   in Loop: Header=BB0_9 Depth=2
	lw	a3, 944(sp)
	lw	a4, 928(sp)
	srai	a1, a3, 1
	add	a0, a0, a1
	srli	a1, a4, 1
	mulw	a1, a1, s10
	add	a0, a0, a1
	andi	a3, a3, 1
	andi	a4, a4, 1
	li	a5, 16
	mv	a1, s11
	mv	a2, s10
	call	dist2
	mv	s8, a0
	ld	t1, 312(sp)                     # 8-byte Folded Reload
	mv	t3, s0
	li	a3, 1
	ld	a5, 384(sp)                     # 8-byte Folded Reload
.LBB0_225:                              #   in Loop: Header=BB0_9 Depth=2
	ld	a4, 552(sp)                     # 8-byte Folded Reload
	ld	t2, 352(sp)                     # 8-byte Folded Reload
	ld	t4, 344(sp)                     # 8-byte Folded Reload
	ld	t5, 336(sp)                     # 8-byte Folded Reload
	bge	s6, s8, .LBB0_228
# %bb.226:                              #   in Loop: Header=BB0_9 Depth=2
	ld	a0, 272(sp)                     # 8-byte Folded Reload
	blt	s8, a0, .LBB0_228
# %bb.227:                              #   in Loop: Header=BB0_9 Depth=2
	sw	a3, 0(t3)
	j	.LBB0_7
.LBB0_228:                              #   in Loop: Header=BB0_9 Depth=2
	ld	a0, 216(sp)                     # 8-byte Folded Reload
	bnez	a0, .LBB0_233
# %bb.229:                              #   in Loop: Header=BB0_9 Depth=2
	mv	s4, t5
	mv	s3, t4
	mv	a0, s1
	mv	s1, t2
	mv	s0, t3
	beq	a0, s5, .LBB0_231
# %bb.230:                              #   in Loop: Header=BB0_9 Depth=2
	ld	a0, 688(sp)                     # 8-byte Folded Reload
	sd	a0, 712(sp)                     # 8-byte Folded Spill
.LBB0_231:                              #   in Loop: Header=BB0_9 Depth=2
	ld	a0, 712(sp)                     # 8-byte Folded Reload
	add	a0, a0, a5
	ld	a2, 656(sp)                     # 8-byte Folded Reload
	add	a0, a0, a2
	li	a5, 16
	mv	a1, s11
	mv	a2, s10
	li	a3, 0
	li	a4, 0
	call	dist2
	ld	a5, 384(sp)                     # 8-byte Folded Reload
	mv	s6, a0
	ld	t1, 312(sp)                     # 8-byte Folded Reload
	ld	a4, 552(sp)                     # 8-byte Folded Reload
	mv	t3, s0
	ld	a0, 272(sp)                     # 8-byte Folded Reload
	li	a3, 1
	mv	t2, s1
	mv	t4, s3
	mv	t5, s4
	blt	s6, a0, .LBB0_246
# %bb.232:                              #   in Loop: Header=BB0_9 Depth=2
	slliw	a0, s6, 2
	slli	a1, s8, 2
	addw	a1, a1, s8
	bge	a1, a0, .LBB0_246
.LBB0_233:                              #   in Loop: Header=BB0_9 Depth=2
	li	a0, 8
	sw	a0, 0(t3)
	slli	a0, a5, 1
	li	a1, 3
	beq	s2, a1, .LBB0_236
# %bb.234:                              #   in Loop: Header=BB0_9 Depth=2
	bne	s2, a3, .LBB0_237
# %bb.235:                              #   in Loop: Header=BB0_9 Depth=2
	lw	a1, 944(sp)
	lw	a2, 928(sp)
	subw	a1, a1, a0
	lw	a0, 1052(sp)
	sw	a1, 24(t3)
	ld	a1, 224(sp)                     # 8-byte Folded Reload
	subw	a1, a2, a1
	sw	a1, 28(t3)
	sw	a0, 56(t3)
	mv	s6, s8
	j	.LBB0_266
.LBB0_236:                              #   in Loop: Header=BB0_9 Depth=2
	lw	a1, 996(sp)
	lw	a2, 992(sp)
	subw	a1, a1, a0
	sw	a1, 24(t3)
	ld	a0, 224(sp)                     # 8-byte Folded Reload
	subw	a0, a2, a0
	ld	a4, 552(sp)                     # 8-byte Folded Reload
	sw	a0, 28(t3)
	sw	s7, 72(t3)
	ld	a0, 776(sp)                     # 8-byte Folded Reload
	sw	a0, 76(t3)
	mv	s6, s8
	j	.LBB0_7
.LBB0_237:                              #   in Loop: Header=BB0_9 Depth=2
	lw	a1, 1076(sp)
	lw	a2, 1072(sp)
	subw	a1, a1, a0
	sw	a1, 24(t3)
	lw	a1, 1068(sp)
	ld	a4, 224(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a4
	lw	a3, 1064(sp)
	sw	a2, 28(t3)
	subw	a1, a1, a0
	sw	a1, 40(t3)
	subw	a0, a3, a4
	lw	a1, 1048(sp)
	lw	a2, 1044(sp)
	addi	a0, a0, -16
	sw	a0, 44(t3)
	sw	a1, 56(t3)
	sw	a2, 64(t3)
	mv	s6, s8
	j	.LBB0_266
.LBB0_238:                              #   in Loop: Header=BB0_9 Depth=2
	li	s5, 2
	ld	a0, 688(sp)                     # 8-byte Folded Reload
	bge	a1, a2, .LBB0_222
	j	.LBB0_152
.LBB0_239:                              #   in Loop: Header=BB0_9 Depth=2
	li	s5, 2
	ld	s3, 720(sp)                     # 8-byte Folded Reload
	ld	a6, 704(sp)                     # 8-byte Folded Reload
	bge	a4, a1, .LBB0_250
# %bb.240:                              #   in Loop: Header=BB0_9 Depth=2
	bge	a4, a2, .LBB0_250
# %bb.241:                              #   in Loop: Header=BB0_9 Depth=2
	li	a0, 1
	slli	a0, a0, 33
	addi	a0, a0, 8
	sd	a0, 0(a3)
	lui	a0, %hi(width)
	lw	s0, %lo(width)(a0)
	ld	a0, 208(sp)                     # 8-byte Folded Reload
	addi	a0, a0, -1
	and	a0, a0, s0
	ld	s1, 552(sp)                     # 8-byte Folded Reload
	ld	a1, 776(sp)                     # 8-byte Folded Reload
	add	a1, s1, a1
	ld	a2, 768(sp)                     # 8-byte Folded Reload
	add	a1, a1, a2
	add	a0, a1, a0
	li	a5, 8
	mv	a1, a6
	mv	a2, s3
	ld	a3, 784(sp)                     # 8-byte Folded Reload
	ld	a4, 200(sp)                     # 8-byte Folded Reload
	call	dist2
	mv	s2, a0
	ld	a0, 192(sp)                     # 8-byte Folded Reload
	addi	a0, a0, -1
	and	a0, a0, s0
	ld	a1, 752(sp)                     # 8-byte Folded Reload
	add	a1, s1, a1
	ld	a2, 744(sp)                     # 8-byte Folded Reload
	add	a1, a1, a2
	add	a0, a1, a0
	li	a5, 8
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	mv	a2, s3
	ld	a3, 760(sp)                     # 8-byte Folded Reload
	ld	a4, 184(sp)                     # 8-byte Folded Reload
	call	dist2
	li	s1, 0
	addw	a0, a0, s2
	j	.LBB0_259
.LBB0_242:                              #   in Loop: Header=BB0_9 Depth=2
	bge	a5, a4, .LBB0_254
# %bb.243:                              #   in Loop: Header=BB0_9 Depth=2
	bge	a5, a2, .LBB0_254
# %bb.244:                              #   in Loop: Header=BB0_9 Depth=2
	bge	a5, a3, .LBB0_254
# %bb.245:                              #   in Loop: Header=BB0_9 Depth=2
	li	s0, 1
	slli	a0, s0, 33
	addi	a0, a0, 8
	sd	a0, 0(a6)
	lui	a0, %hi(width)
	lw	a2, %lo(width)(a0)
	ld	a0, 720(sp)                     # 8-byte Folded Reload
	mulw	a0, a2, a0
	ld	a1, 728(sp)                     # 8-byte Folded Reload
	add	a0, a1, a0
	li	a5, 16
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	ld	a3, 744(sp)                     # 8-byte Folded Reload
	ld	a4, 736(sp)                     # 8-byte Folded Reload
	call	dist2
	ld	t3, 360(sp)                     # 8-byte Folded Reload
	j	.LBB0_257
.LBB0_246:                              #   in Loop: Header=BB0_9 Depth=2
	slli	a0, a3, 32
	sd	a0, 0(t3)
	lui	a0, %hi(pict_struct)
	lw	a0, %lo(pict_struct)(a0)
	sd	zero, 24(t3)
	addi	a0, a0, -2
	seqz	a0, a0
	sw	a0, 56(t3)
	j	.LBB0_7
.LBB0_247:                              #   in Loop: Header=BB0_9 Depth=2
	ld	a5, 384(sp)                     # 8-byte Folded Reload
	slli	a0, a5, 1
	ld	a1, 632(sp)                     # 8-byte Folded Reload
	subw	a0, a1, a0
	sw	a0, 24(t3)
	ld	a0, 480(sp)                     # 8-byte Folded Reload
	ld	a1, 640(sp)                     # 8-byte Folded Reload
	subw	a0, a1, a0
	slli	a0, a0, 1
	sw	a0, 28(t3)
	sw	s7, 72(t3)
	sw	s6, 76(t3)
	sw	t5, 88(t3)
	j	.LBB0_277
.LBB0_248:                              #   in Loop: Header=BB0_9 Depth=2
	lw	a0, 1052(sp)
	lw	a1, 1048(sp)
	slli	a2, a5, 1
	subw	a0, a0, a2
	sw	a0, 24(t3)
	ld	a4, 480(sp)                     # 8-byte Folded Reload
	subw	a0, a1, a4
	lw	a1, 1044(sp)
	slli	a0, a0, 1
	lw	a3, 1040(sp)
	sw	a0, 28(t3)
	subw	a1, a1, a2
	sw	a1, 40(t3)
	subw	a0, a3, a4
	lw	a1, 980(sp)
	lw	a2, 976(sp)
	slli	a0, a0, 1
	sw	a0, 44(t3)
	sw	a1, 56(t3)
	sw	a2, 64(t3)
.LBB0_249:                              #   in Loop: Header=BB0_9 Depth=2
	sw	t5, 88(t3)
	j	.LBB0_276
.LBB0_250:                              #   in Loop: Header=BB0_9 Depth=2
	li	a0, 4
	sw	a0, 0(a3)
	lui	a0, %hi(width)
	bge	a1, a2, .LBB0_258
# %bb.251:                              #   in Loop: Header=BB0_9 Depth=2
	lw	a0, %lo(width)(a0)
	li	s1, 1
	sw	s1, 4(a3)
	ld	a1, 816(sp)                     # 8-byte Folded Reload
	addi	a1, a1, -1
	and	a0, a1, a0
	ld	a1, 320(sp)                     # 8-byte Folded Reload
	ld	a2, 824(sp)                     # 8-byte Folded Reload
	add	a1, a1, a2
	ld	a2, 808(sp)                     # 8-byte Folded Reload
	add	a1, a1, a2
	add	a0, a1, a0
	li	a5, 16
	mv	a1, a6
	mv	a2, s3
	ld	a3, 832(sp)                     # 8-byte Folded Reload
	ld	a4, 176(sp)                     # 8-byte Folded Reload
	call	dist2
	j	.LBB0_259
.LBB0_252:                              #   in Loop: Header=BB0_9 Depth=2
	ld	t3, 360(sp)                     # 8-byte Folded Reload
	li	s5, 2
	ld	a6, 328(sp)                     # 8-byte Folded Reload
	ld	s1, 256(sp)                     # 8-byte Folded Reload
	ld	s2, 280(sp)                     # 8-byte Folded Reload
	ld	a7, 208(sp)                     # 8-byte Folded Reload
	ld	s6, 624(sp)                     # 8-byte Folded Reload
	ld	s7, 616(sp)                     # 8-byte Folded Reload
	j	.LBB0_193
.LBB0_253:                              #   in Loop: Header=BB0_9 Depth=2
	ld	a6, 328(sp)                     # 8-byte Folded Reload
	j	.LBB0_193
.LBB0_254:                              #   in Loop: Header=BB0_9 Depth=2
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	bge	a4, a2, .LBB0_267
# %bb.255:                              #   in Loop: Header=BB0_9 Depth=2
	bge	a4, a3, .LBB0_267
# %bb.256:                              #   in Loop: Header=BB0_9 Depth=2
	li	a0, 1
	slli	a0, a0, 32
	addi	a0, a0, 8
	sd	a0, 0(a6)
	lui	a0, %hi(width)
	lw	s1, %lo(width)(a0)
	ld	a0, 624(sp)                     # 8-byte Folded Reload
	addi	a0, a0, -1
	and	a0, a0, s1
	ld	s2, 552(sp)                     # 8-byte Folded Reload
	ld	a2, 664(sp)                     # 8-byte Folded Reload
	add	a2, s2, a2
	add	a0, a2, a0
	slliw	s0, s1, 1
	ld	a2, 640(sp)                     # 8-byte Folded Reload
	mulw	a2, s0, a2
	add	a0, a0, a2
	li	a5, 8
	mv	a2, s0
	ld	a3, 632(sp)                     # 8-byte Folded Reload
	ld	a4, 656(sp)                     # 8-byte Folded Reload
	mv	s3, a1
	call	dist2
	mv	s5, a0
	ld	a0, 616(sp)                     # 8-byte Folded Reload
	addi	a0, a0, -1
	and	a0, a0, s1
	ld	a1, 648(sp)                     # 8-byte Folded Reload
	add	a1, s2, a1
	add	a0, a1, a0
	ld	a1, 600(sp)                     # 8-byte Folded Reload
	mulw	a1, s0, a1
	add	a0, a0, a1
	add	a1, s3, s1
	li	a5, 8
	mv	a2, s0
	ld	a3, 608(sp)                     # 8-byte Folded Reload
	ld	a4, 592(sp)                     # 8-byte Folded Reload
	call	dist2
	ld	t3, 360(sp)                     # 8-byte Folded Reload
	li	s0, 0
	addw	a0, a0, s5
.LBB0_257:                              #   in Loop: Header=BB0_9 Depth=2
	ld	t1, 312(sp)                     # 8-byte Folded Reload
	li	s5, 2
	ld	a5, 384(sp)                     # 8-byte Folded Reload
	ld	a4, 256(sp)                     # 8-byte Folded Reload
	blt	a4, a0, .LBB0_270
	j	.LBB0_272
.LBB0_258:                              #   in Loop: Header=BB0_9 Depth=2
	lw	s1, %lo(width)(a0)
	sw	s5, 4(a3)
	ld	a0, 160(sp)                     # 8-byte Folded Reload
	addi	a0, a0, -1
	and	a0, a0, s1
	ld	s2, 320(sp)                     # 8-byte Folded Reload
	ld	a1, 728(sp)                     # 8-byte Folded Reload
	add	a1, s2, a1
	ld	a2, 712(sp)                     # 8-byte Folded Reload
	add	a1, a1, a2
	add	a0, a1, a0
	li	a5, 8
	mv	a1, a6
	mv	a2, s3
	ld	a3, 736(sp)                     # 8-byte Folded Reload
	ld	a4, 168(sp)                     # 8-byte Folded Reload
	call	dist2
	mv	s0, a0
	ld	a0, 144(sp)                     # 8-byte Folded Reload
	addi	a0, a0, -1
	and	a0, a0, s1
	ld	a1, 680(sp)                     # 8-byte Folded Reload
	add	a1, s2, a1
	ld	a2, 672(sp)                     # 8-byte Folded Reload
	add	a1, a1, a2
	add	a0, a1, a0
	li	a5, 8
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	mv	a2, s3
	ld	a3, 688(sp)                     # 8-byte Folded Reload
	ld	a4, 152(sp)                     # 8-byte Folded Reload
	call	dist2
	li	s1, 0
	addw	a0, a0, s0
.LBB0_259:                              #   in Loop: Header=BB0_9 Depth=2
	ld	t2, 352(sp)                     # 8-byte Folded Reload
	ld	t4, 344(sp)                     # 8-byte Folded Reload
	ld	t5, 336(sp)                     # 8-byte Folded Reload
	ld	t1, 312(sp)                     # 8-byte Folded Reload
	ld	a5, 384(sp)                     # 8-byte Folded Reload
	bge	s6, a0, .LBB0_262
.LBB0_260:                              #   in Loop: Header=BB0_9 Depth=2
	ld	a1, 272(sp)                     # 8-byte Folded Reload
	blt	a0, a1, .LBB0_262
# %bb.261:                              #   in Loop: Header=BB0_9 Depth=2
	ld	t3, 360(sp)                     # 8-byte Folded Reload
	li	a0, 1
	sw	a0, 0(t3)
	j	.LBB0_266
.LBB0_262:                              #   in Loop: Header=BB0_9 Depth=2
	slli	a1, a5, 1
	ld	t3, 360(sp)                     # 8-byte Folded Reload
	beqz	s1, .LBB0_264
# %bb.263:                              #   in Loop: Header=BB0_9 Depth=2
	ld	a2, 640(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a1
	sw	a2, 24(t3)
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	ld	a2, 648(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	sw	a2, 28(t3)
	ld	a2, 664(sp)                     # 8-byte Folded Reload
	sw	a2, 56(t3)
	ld	a2, 624(sp)                     # 8-byte Folded Reload
	subw	a1, a2, a1
	sw	a1, 32(t3)
	ld	a1, 632(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a3
	sw	a1, 36(t3)
	ld	a1, 656(sp)                     # 8-byte Folded Reload
	sw	a1, 60(t3)
	j	.LBB0_265
.LBB0_264:                              #   in Loop: Header=BB0_9 Depth=2
	ld	a2, 592(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a1
	sw	a2, 24(t3)
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	ld	a2, 600(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	sw	a2, 28(t3)
	ld	a2, 616(sp)                     # 8-byte Folded Reload
	sw	a2, 56(t3)
	ld	a2, 536(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a1
	sw	a2, 40(t3)
	ld	a4, 120(sp)                     # 8-byte Folded Reload
	ld	a2, 544(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a4
	sw	a2, 44(t3)
	ld	a2, 568(sp)                     # 8-byte Folded Reload
	sw	a2, 64(t3)
	ld	a2, 576(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a1
	sw	a2, 32(t3)
	ld	a2, 584(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	sw	a2, 36(t3)
	ld	a2, 608(sp)                     # 8-byte Folded Reload
	sw	a2, 60(t3)
	ld	a2, 520(sp)                     # 8-byte Folded Reload
	subw	a1, a2, a1
	sw	a1, 48(t3)
	ld	a1, 528(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a4
	sw	a1, 52(t3)
	ld	a1, 560(sp)                     # 8-byte Folded Reload
	sw	a1, 68(t3)
.LBB0_265:                              #   in Loop: Header=BB0_9 Depth=2
	mv	s6, a0
.LBB0_266:                              #   in Loop: Header=BB0_9 Depth=2
	ld	a4, 552(sp)                     # 8-byte Folded Reload
	j	.LBB0_7
.LBB0_267:                              #   in Loop: Header=BB0_9 Depth=2
	li	a0, 4
	sw	a0, 0(a6)
	li	s5, 2
	lui	a0, %hi(width)
	bge	a2, a3, .LBB0_269
# %bb.268:                              #   in Loop: Header=BB0_9 Depth=2
	lw	a2, %lo(width)(a0)
	sw	s5, 4(a6)
	ld	a0, 688(sp)                     # 8-byte Folded Reload
	mulw	a0, a2, a0
	ld	a3, 696(sp)                     # 8-byte Folded Reload
	add	a0, a3, a0
	li	a5, 16
	ld	a3, 712(sp)                     # 8-byte Folded Reload
	ld	a4, 704(sp)                     # 8-byte Folded Reload
	call	dist2
	ld	t3, 360(sp)                     # 8-byte Folded Reload
	li	s0, 1
	ld	t1, 312(sp)                     # 8-byte Folded Reload
	ld	a5, 384(sp)                     # 8-byte Folded Reload
	ld	a4, 256(sp)                     # 8-byte Folded Reload
	blt	a4, a0, .LBB0_270
	j	.LBB0_272
.LBB0_269:                              #   in Loop: Header=BB0_9 Depth=2
	lw	s0, %lo(width)(a0)
	li	a0, 1
	sw	a0, 4(a6)
	ld	a0, 536(sp)                     # 8-byte Folded Reload
	addi	a0, a0, -1
	and	a0, a0, s0
	ld	s3, 320(sp)                     # 8-byte Folded Reload
	ld	a2, 544(sp)                     # 8-byte Folded Reload
	add	a2, s3, a2
	add	a0, a2, a0
	slliw	s1, s0, 1
	ld	a2, 560(sp)                     # 8-byte Folded Reload
	mulw	a2, s1, a2
	add	a0, a0, a2
	li	a5, 8
	mv	a2, s1
	ld	a3, 584(sp)                     # 8-byte Folded Reload
	ld	a4, 576(sp)                     # 8-byte Folded Reload
	mv	s4, a1
	call	dist2
	mv	s2, a0
	ld	a0, 512(sp)                     # 8-byte Folded Reload
	addi	a0, a0, -1
	and	a0, a0, s0
	ld	a1, 520(sp)                     # 8-byte Folded Reload
	add	a1, s3, a1
	add	a0, a1, a0
	ld	a1, 504(sp)                     # 8-byte Folded Reload
	mulw	a1, s1, a1
	add	a0, a0, a1
	add	a1, s4, s0
	li	a5, 8
	mv	a2, s1
	ld	a3, 568(sp)                     # 8-byte Folded Reload
	ld	a4, 528(sp)                     # 8-byte Folded Reload
	call	dist2
	ld	t3, 360(sp)                     # 8-byte Folded Reload
	li	s0, 0
	addw	a0, a0, s2
	ld	t1, 312(sp)                     # 8-byte Folded Reload
	ld	a5, 384(sp)                     # 8-byte Folded Reload
	ld	a4, 256(sp)                     # 8-byte Folded Reload
	bge	a4, a0, .LBB0_272
.LBB0_270:                              #   in Loop: Header=BB0_9 Depth=2
	ld	a1, 272(sp)                     # 8-byte Folded Reload
	blt	a0, a1, .LBB0_272
# %bb.271:                              #   in Loop: Header=BB0_9 Depth=2
	li	a0, 1
	sw	a0, 0(t3)
	sw	a4, 88(t3)
	j	.LBB0_276
.LBB0_272:                              #   in Loop: Header=BB0_9 Depth=2
	slli	a1, a5, 1
	beqz	s0, .LBB0_274
# %bb.273:                              #   in Loop: Header=BB0_9 Depth=2
	ld	a2, 872(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a1
	sw	a2, 24(t3)
	ld	a3, 224(sp)                     # 8-byte Folded Reload
	ld	a2, 864(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	sw	a2, 28(t3)
	ld	a2, 856(sp)                     # 8-byte Folded Reload
	subw	a1, a2, a1
	sw	a1, 32(t3)
	ld	a1, 848(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a3
	sw	a1, 36(t3)
	j	.LBB0_275
.LBB0_274:                              #   in Loop: Header=BB0_9 Depth=2
	ld	a2, 832(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a1
	sw	a2, 24(t3)
	ld	a3, 480(sp)                     # 8-byte Folded Reload
	ld	a2, 800(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 1
	sw	a2, 28(t3)
	ld	a2, 792(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a1
	sw	a2, 40(t3)
	ld	a2, 752(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 1
	sw	a2, 44(t3)
	ld	a2, 840(sp)                     # 8-byte Folded Reload
	sw	a2, 56(t3)
	ld	a2, 768(sp)                     # 8-byte Folded Reload
	sw	a2, 64(t3)
	ld	a2, 816(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a1
	sw	a2, 32(t3)
	ld	a2, 808(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 1
	sw	a2, 36(t3)
	ld	a2, 776(sp)                     # 8-byte Folded Reload
	subw	a1, a2, a1
	sw	a1, 48(t3)
	ld	a1, 760(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a3
	slli	a1, a1, 1
	sw	a1, 52(t3)
	ld	a1, 824(sp)                     # 8-byte Folded Reload
	sw	a1, 60(t3)
	ld	a1, 784(sp)                     # 8-byte Folded Reload
	sw	a1, 68(t3)
.LBB0_275:                              #   in Loop: Header=BB0_9 Depth=2
	sw	a0, 88(t3)
.LBB0_276:                              #   in Loop: Header=BB0_9 Depth=2
	ld	a4, 552(sp)                     # 8-byte Folded Reload
.LBB0_277:                              #   in Loop: Header=BB0_9 Depth=2
	ld	t2, 352(sp)                     # 8-byte Folded Reload
	ld	t4, 344(sp)                     # 8-byte Folded Reload
	ld	t5, 336(sp)                     # 8-byte Folded Reload
	j	.LBB0_8
.LBB0_278:                              #   in Loop: Header=BB0_4 Depth=1
	lui	s1, %hi(stderr)
	ld	a1, %lo(stderr)(s1)
	li	a0, 46
	mv	s0, t3
	call	putc
	ld	a0, %lo(stderr)(s1)
	call	fflush
	mv	t3, s0
	ld	a4, 552(sp)                     # 8-byte Folded Reload
	ld	t1, 312(sp)                     # 8-byte Folded Reload
	lui	a0, %hi(width)
	lw	s9, %lo(width)(a0)
	j	.LBB0_3
.LBB0_279:
	lui	a0, %hi(quiet)
	lw	a0, %lo(quiet)(a0)
	beqz	a0, .LBB0_281
# %bb.280:
	ld	ra, 1176(sp)                    # 8-byte Folded Reload
	ld	s0, 1168(sp)                    # 8-byte Folded Reload
	ld	s1, 1160(sp)                    # 8-byte Folded Reload
	ld	s2, 1152(sp)                    # 8-byte Folded Reload
	ld	s3, 1144(sp)                    # 8-byte Folded Reload
	ld	s4, 1136(sp)                    # 8-byte Folded Reload
	ld	s5, 1128(sp)                    # 8-byte Folded Reload
	ld	s6, 1120(sp)                    # 8-byte Folded Reload
	ld	s7, 1112(sp)                    # 8-byte Folded Reload
	ld	s8, 1104(sp)                    # 8-byte Folded Reload
	ld	s9, 1096(sp)                    # 8-byte Folded Reload
	ld	s10, 1088(sp)                   # 8-byte Folded Reload
	ld	s11, 1080(sp)                   # 8-byte Folded Reload
	addi	sp, sp, 1184
	ret
.LBB0_281:
	lui	a0, %hi(stderr)
	ld	a1, %lo(stderr)(a0)
	li	a0, 10
	ld	ra, 1176(sp)                    # 8-byte Folded Reload
	ld	s0, 1168(sp)                    # 8-byte Folded Reload
	ld	s1, 1160(sp)                    # 8-byte Folded Reload
	ld	s2, 1152(sp)                    # 8-byte Folded Reload
	ld	s3, 1144(sp)                    # 8-byte Folded Reload
	ld	s4, 1136(sp)                    # 8-byte Folded Reload
	ld	s5, 1128(sp)                    # 8-byte Folded Reload
	ld	s6, 1120(sp)                    # 8-byte Folded Reload
	ld	s7, 1112(sp)                    # 8-byte Folded Reload
	ld	s8, 1104(sp)                    # 8-byte Folded Reload
	ld	s9, 1096(sp)                    # 8-byte Folded Reload
	ld	s10, 1088(sp)                   # 8-byte Folded Reload
	ld	s11, 1080(sp)                   # 8-byte Folded Reload
	addi	sp, sp, 1184
	tail	putc
.Lfunc_end0:
	.size	motion_estimation, .Lfunc_end0-motion_estimation
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function fullsearch
	.type	fullsearch,@function
fullsearch:                             # @fullsearch
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
	mv	s8, a6
	sd	a4, 40(sp)                      # 8-byte Folded Spill
	addw	s11, a6, a4
	addiw	t3, t3, -16
	mv	s0, t6
	mv	s2, t5
	mv	s5, t2
	mv	s10, a7
	sd	a5, 48(sp)                      # 8-byte Folded Spill
	mv	s3, a3
	mv	s4, a2
	sd	a1, 56(sp)                      # 8-byte Folded Spill
	mv	s9, a0
	blt	s11, t3, .LBB1_2
# %bb.1:
	mv	s11, t3
.LBB1_2:
	sd	t3, 8(sp)                       # 8-byte Folded Spill
	ld	a0, 48(sp)                      # 8-byte Folded Reload
	addw	s1, s10, a0
	subw	a0, t4, s5
	blt	s1, a0, .LBB1_4
# %bb.3:
	mv	s1, a0
.LBB1_4:
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	ld	a0, 40(sp)                      # 8-byte Folded Reload
	add	a0, s9, a0
	ld	a1, 48(sp)                      # 8-byte Folded Reload
	mulw	a1, a1, s3
	add	a0, a0, a1
	lui	a6, 16
	mv	a1, s4
	mv	a2, s3
	li	a3, 0
	li	a4, 0
	mv	a5, s5
	call	dist1
	mv	s6, a0
	mv	a5, s8
	blt	s10, s8, .LBB1_6
# %bb.5:
	mv	a5, s10
.LBB1_6:
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s2, 24(sp)                      # 8-byte Folded Spill
	blez	a5, .LBB1_27
# %bb.7:
	ld	a1, 40(sp)                      # 8-byte Folded Reload
	subw	a0, a1, s8
	ld	a2, 48(sp)                      # 8-byte Folded Reload
	subw	a3, a2, s10
	mv	s10, a2
	sgtz	a2, a0
	sgtz	a4, a3
	negw	a2, a2
	negw	a4, a4
	and	a2, a2, a0
	and	a3, a4, a3
	sd	a5, 64(sp)                      # 8-byte Folded Spill
	blez	s5, .LBB1_37
# %bb.8:                                # %.preheader
	addi	s9, s9, 7
	addi	s0, s4, 7
	li	a6, 1
	li	a7, 8
	mv	a4, s10
	mv	a5, a1
	j	.LBB1_10
.LBB1_9:                                #   in Loop: Header=BB1_10 Depth=1
	ld	t0, 72(sp)                      # 8-byte Folded Reload
	addiw	a6, t0, 1
	ld	a7, 80(sp)                      # 8-byte Folded Reload
	addiw	a7, a7, 8
	ld	a1, 40(sp)                      # 8-byte Folded Reload
	ld	s10, 48(sp)                     # 8-byte Folded Reload
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	beq	t0, a0, .LBB1_28
.LBB1_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_13 Depth 2
                                        #       Child Loop BB1_18 Depth 3
	li	t2, 0
	seqz	a0, a7
	sd	a7, 80(sp)                      # 8-byte Folded Spill
	addw	t3, a7, a0
	subw	t4, a1, a6
	subw	t5, s10, a6
	slliw	t6, a6, 1
	slliw	s8, a6, 2
	li	a0, 6
	sd	a6, 72(sp)                      # 8-byte Folded Spill
	mulw	s10, a6, a0
	j	.LBB1_13
.LBB1_11:                               #   in Loop: Header=BB1_13 Depth=2
	addiw	t4, t4, 1
.LBB1_12:                               #   in Loop: Header=BB1_13 Depth=2
	addiw	t2, t2, 1
	beq	t2, t3, .LBB1_9
.LBB1_13:                               #   Parent Loop BB1_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_18 Depth 3
	blt	t4, a2, .LBB1_21
# %bb.14:                               #   in Loop: Header=BB1_13 Depth=2
	blt	s11, t4, .LBB1_21
# %bb.15:                               #   in Loop: Header=BB1_13 Depth=2
	blt	t5, a3, .LBB1_21
# %bb.16:                               #   in Loop: Header=BB1_13 Depth=2
	blt	s1, t5, .LBB1_21
# %bb.17:                               #   in Loop: Header=BB1_13 Depth=2
	li	a0, 0
	mulw	a6, t5, s3
	add	a6, t4, a6
	add	ra, s9, a6
	mv	a6, s0
	mv	s2, s5
.LBB1_18:                               #   Parent Loop BB1_10 Depth=1
                                        #     Parent Loop BB1_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lbu	t0, -7(ra)
	lbu	a1, -7(a6)
	sub	a1, t0, a1
	sraiw	t0, a1, 31
	lbu	s7, -6(ra)
	lbu	a7, -6(a6)
	xor	a1, a1, t0
	subw	a0, t0, a0
	subw	a1, a1, a0
	sub	a0, s7, a7
	sraiw	a7, a0, 31
	lbu	t0, -5(ra)
	lbu	s7, -5(a6)
	xor	a0, a0, a7
	subw	a0, a0, a7
	add	a0, a1, a0
	sub	a1, t0, s7
	lbu	a7, -4(ra)
	lbu	t0, -4(a6)
	sraiw	s7, a1, 31
	xor	a1, a1, s7
	subw	a1, a1, s7
	sub	a7, a7, t0
	sraiw	t0, a7, 31
	xor	a7, a7, t0
	lbu	s7, -3(ra)
	lbu	t1, -3(a6)
	subw	a7, a7, t0
	add	a1, a1, a7
	add	a0, a0, a1
	sub	a1, s7, t1
	lbu	a7, -2(ra)
	lbu	t0, -2(a6)
	sraiw	t1, a1, 31
	xor	a1, a1, t1
	subw	a1, a1, t1
	sub	a7, a7, t0
	sraiw	t0, a7, 31
	lbu	t1, -1(ra)
	lbu	s7, -1(a6)
	xor	a7, a7, t0
	subw	a7, a7, t0
	add	a1, a1, a7
	sub	a7, t1, s7
	sraiw	t0, a7, 31
	xor	a7, a7, t0
	lbu	t1, 0(ra)
	lbu	s7, 0(a6)
	subw	a7, a7, t0
	add	a1, a1, a7
	add	a0, a0, a1
	sub	a1, t1, s7
	lbu	a7, 1(ra)
	lbu	t0, 1(a6)
	sraiw	t1, a1, 31
	xor	a1, a1, t1
	subw	a1, a1, t1
	sub	a7, a7, t0
	sraiw	t0, a7, 31
	lbu	t1, 2(ra)
	lbu	s7, 2(a6)
	xor	a7, a7, t0
	subw	a7, a7, t0
	add	a1, a1, a7
	sub	a7, t1, s7
	sraiw	t0, a7, 31
	lbu	t1, 3(ra)
	lbu	s7, 3(a6)
	xor	a7, a7, t0
	subw	a7, a7, t0
	add	a1, a1, a7
	sub	a7, t1, s7
	sraiw	t0, a7, 31
	xor	a7, a7, t0
	lbu	t1, 4(ra)
	lbu	s7, 4(a6)
	subw	a7, a7, t0
	add	a1, a1, a7
	add	a0, a0, a1
	sub	a1, t1, s7
	lbu	a7, 5(ra)
	lbu	t0, 5(a6)
	sraiw	t1, a1, 31
	xor	a1, a1, t1
	subw	a1, a1, t1
	sub	a7, a7, t0
	sraiw	t0, a7, 31
	lbu	t1, 6(ra)
	lbu	s7, 6(a6)
	xor	a7, a7, t0
	subw	a7, a7, t0
	add	a1, a1, a7
	sub	a7, t1, s7
	sraiw	t0, a7, 31
	lbu	t1, 7(ra)
	lbu	s7, 7(a6)
	xor	a7, a7, t0
	subw	a7, a7, t0
	add	a1, a1, a7
	sub	a7, t1, s7
	sraiw	t0, a7, 31
	lbu	t1, 8(ra)
	lbu	s7, 8(a6)
	xor	a7, a7, t0
	subw	a7, a7, t0
	add	a1, a1, a7
	sub	a7, t1, s7
	sraiw	t0, a7, 31
	xor	a7, a7, t0
	subw	a7, a7, t0
	add	a1, a1, a7
	addw	a0, a0, a1
	bge	a0, s6, .LBB1_21
# %bb.19:                               #   in Loop: Header=BB1_18 Depth=3
	addiw	s2, s2, -1
	add	ra, ra, s3
	add	a6, a6, s3
	bnez	s2, .LBB1_18
# %bb.20:                               #   in Loop: Header=BB1_13 Depth=2
	mv	a5, t4
	mv	a4, t5
	mv	s6, a0
.LBB1_21:                               #   in Loop: Header=BB1_13 Depth=2
	bltu	t2, t6, .LBB1_11
# %bb.22:                               #   in Loop: Header=BB1_13 Depth=2
	bgeu	t2, s8, .LBB1_24
# %bb.23:                               #   in Loop: Header=BB1_13 Depth=2
	addiw	t5, t5, 1
	j	.LBB1_12
.LBB1_24:                               #   in Loop: Header=BB1_13 Depth=2
	bgeu	t2, s10, .LBB1_26
# %bb.25:                               #   in Loop: Header=BB1_13 Depth=2
	addiw	t4, t4, -1
	j	.LBB1_12
.LBB1_26:                               #   in Loop: Header=BB1_13 Depth=2
	addiw	t5, t5, -1
	j	.LBB1_12
.LBB1_27:
	ld	a5, 40(sp)                      # 8-byte Folded Reload
	ld	a4, 48(sp)                      # 8-byte Folded Reload
.LBB1_28:
	slliw	a1, a5, 1
	slliw	a2, a4, 1
	sgtz	a0, a2
	subw	a3, a2, a0
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	slliw	a0, a0, 1
	slt	a0, a2, a0
	or	a4, a2, a0
	lui	a0, 16
	sd	a4, 80(sp)                      # 8-byte Folded Spill
	blt	a4, a3, .LBB1_36
# %bb.29:
	sgtz	a4, a1
	subw	s1, a1, a4
	ld	a4, 8(sp)                       # 8-byte Folded Reload
	slliw	a4, a4, 1
	slt	a4, a1, a4
	or	a5, a1, a4
	blt	a5, s1, .LBB1_36
# %bb.30:
	add	a4, a1, a4
	addiw	s2, a4, 1
	j	.LBB1_32
.LBB1_31:                               #   in Loop: Header=BB1_32 Depth=1
	addiw	a3, s8, 1
	ld	a4, 80(sp)                      # 8-byte Folded Reload
	beq	s8, a4, .LBB1_36
.LBB1_32:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_34 Depth 2
	mv	s8, a3
	sraiw	a3, a3, 1
	mulw	s9, a3, s3
	ld	a3, 56(sp)                      # 8-byte Folded Reload
	add	s9, a3, s9
	andi	s6, s8, 1
	mv	s10, s1
	mv	s7, a0
	mv	s11, a2
	mv	s0, a1
	j	.LBB1_34
.LBB1_33:                               #   in Loop: Header=BB1_34 Depth=2
	addiw	s10, s10, 1
	mv	s7, a0
	mv	s11, a2
	mv	s0, a1
	beq	s10, s2, .LBB1_31
.LBB1_34:                               #   Parent Loop BB1_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sraiw	a0, s10, 1
	add	a0, s9, a0
	andi	a3, s10, 1
	mv	a1, s4
	mv	a2, s3
	mv	a4, s6
	mv	a5, s5
	mv	a6, s7
	call	dist1
	mv	a1, s10
	mv	a2, s8
	blt	a0, s7, .LBB1_33
# %bb.35:                               #   in Loop: Header=BB1_34 Depth=2
	mv	a1, s0
	mv	a2, s11
	mv	a0, s7
	j	.LBB1_33
.LBB1_36:
	ld	a3, 24(sp)                      # 8-byte Folded Reload
	sw	a1, 0(a3)
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	sw	a2, 0(a1)
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
.LBB1_37:                               # %.preheader5
	li	t2, 1
	li	a6, 8
	li	a7, 6
	mv	a4, s10
	mv	a5, a1
	mv	s7, a1
	j	.LBB1_39
.LBB1_38:                               #   in Loop: Header=BB1_39 Depth=1
	addiw	t2, t0, 1
	addiw	a6, a6, 8
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	beq	t0, a0, .LBB1_28
.LBB1_39:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_42 Depth 2
	li	t1, 0
	mv	t0, t2
	seqz	a0, a6
	addw	t2, a6, a0
	subw	t3, s7, t0
	subw	t4, s10, t0
	slliw	t5, t0, 1
	slliw	t6, t0, 2
	mulw	s0, t0, a7
	j	.LBB1_42
.LBB1_40:                               #   in Loop: Header=BB1_42 Depth=2
	addiw	t3, t3, 1
.LBB1_41:                               #   in Loop: Header=BB1_42 Depth=2
	addiw	s2, s2, -1
	addiw	t1, t1, 1
	and	s6, s2, s6
	beq	t2, t1, .LBB1_38
.LBB1_42:                               #   Parent Loop BB1_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slt	a0, t3, a2
	not	a0, a0
	slt	a1, s11, t3
	not	a1, a1
	slt	s2, t4, a3
	not	s2, s2
	and	a0, a0, s2
	slt	s2, s1, t4
	not	s2, s2
	and	a1, a1, s2
	and	a0, a0, a1
	sgtz	a1, s6
	and	s2, a0, a1
	mv	a0, t3
	mv	s8, t4
	bnez	s2, .LBB1_44
# %bb.43:                               #   in Loop: Header=BB1_42 Depth=2
	mv	a0, a5
	mv	s8, a4
.LBB1_44:                               #   in Loop: Header=BB1_42 Depth=2
	mv	a4, s8
	mv	a5, a0
	bltu	t1, t5, .LBB1_40
# %bb.45:                               #   in Loop: Header=BB1_42 Depth=2
	bgeu	t1, t6, .LBB1_47
# %bb.46:                               #   in Loop: Header=BB1_42 Depth=2
	addiw	t4, t4, 1
	j	.LBB1_41
.LBB1_47:                               #   in Loop: Header=BB1_42 Depth=2
	bgeu	t1, s0, .LBB1_49
# %bb.48:                               #   in Loop: Header=BB1_42 Depth=2
	addiw	t3, t3, -1
	j	.LBB1_41
.LBB1_49:                               #   in Loop: Header=BB1_42 Depth=2
	addiw	t4, t4, -1
	j	.LBB1_41
.Lfunc_end1:
	.size	fullsearch, .Lfunc_end1-fullsearch
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function dist2
	.type	dist2,@function
dist2:                                  # @dist2
# %bb.0:
	addi	sp, sp, -16
	sd	s0, 8(sp)                       # 8-byte Folded Spill
	sd	s1, 0(sp)                       # 8-byte Folded Spill
	or	a6, a4, a3
	beqz	a6, .LBB2_6
# %bb.1:
	beqz	a3, .LBB2_9
# %bb.2:
	bnez	a4, .LBB2_9
# %bb.3:
	blez	a5, .LBB2_17
# %bb.4:
	li	a4, 0
	li	a3, 0
	addi	a0, a0, 16
.LBB2_5:                                # =>This Inner Loop Header: Depth=1
	add	a7, a0, a4
	lbu	t0, -16(a7)
	lbu	t1, -15(a7)
	add	a6, a1, a4
	add	t0, t0, t1
	lbu	t2, 0(a6)
	addi	t0, t0, 1
	srli	t0, t0, 1
	lbu	t3, -14(a7)
	subw	t0, t0, t2
	mul	t0, t0, t0
	add	a3, t0, a3
	add	t1, t1, t3
	lbu	t0, 1(a6)
	addi	t1, t1, 1
	srli	t1, t1, 1
	lbu	t2, -13(a7)
	subw	t0, t1, t0
	mul	t0, t0, t0
	lbu	t1, 2(a6)
	add	t3, t3, t2
	addi	t3, t3, 1
	srli	t3, t3, 1
	subw	t1, t3, t1
	lbu	t3, -12(a7)
	mul	t1, t1, t1
	add	t0, t1, t0
	add	a3, t0, a3
	add	t2, t2, t3
	lbu	t0, 3(a6)
	addi	t2, t2, 1
	srli	t1, t2, 1
	lbu	t2, -11(a7)
	subw	t0, t1, t0
	mul	t0, t0, t0
	lbu	t1, 4(a6)
	add	t3, t3, t2
	addi	t3, t3, 1
	srli	t3, t3, 1
	subw	t1, t3, t1
	lbu	t3, -10(a7)
	mul	t1, t1, t1
	add	t0, t1, t0
	lbu	t1, 5(a6)
	add	t2, t2, t3
	addi	t2, t2, 1
	srli	t2, t2, 1
	subw	t1, t2, t1
	lbu	t2, -9(a7)
	mul	t1, t1, t1
	add	t0, t1, t0
	add	a3, t0, a3
	add	t3, t3, t2
	lbu	t0, 6(a6)
	addi	t3, t3, 1
	srli	t3, t3, 1
	lbu	t1, -8(a7)
	subw	t0, t3, t0
	mul	t0, t0, t0
	lbu	t3, 7(a6)
	add	t2, t2, t1
	addi	t2, t2, 1
	srli	t2, t2, 1
	subw	t2, t2, t3
	lbu	t3, -7(a7)
	mul	t2, t2, t2
	add	t0, t2, t0
	lbu	t2, 8(a6)
	add	t1, t1, t3
	addi	t1, t1, 1
	srli	t1, t1, 1
	subw	t1, t1, t2
	lbu	t2, -6(a7)
	mul	t1, t1, t1
	add	t0, t1, t0
	lbu	t1, 9(a6)
	add	t3, t3, t2
	addi	t3, t3, 1
	srli	t3, t3, 1
	subw	t1, t3, t1
	lbu	t3, -5(a7)
	mul	t1, t1, t1
	add	t0, t1, t0
	add	a3, t0, a3
	add	t2, t2, t3
	lbu	t0, 10(a6)
	addi	t2, t2, 1
	srli	t1, t2, 1
	lbu	t2, -4(a7)
	subw	t0, t1, t0
	mul	t0, t0, t0
	lbu	t1, 11(a6)
	add	t3, t3, t2
	addi	t3, t3, 1
	srli	t3, t3, 1
	subw	t1, t3, t1
	lbu	t3, -3(a7)
	mul	t1, t1, t1
	add	t0, t1, t0
	lbu	t1, 12(a6)
	add	t2, t2, t3
	addi	t2, t2, 1
	srli	t2, t2, 1
	subw	t1, t2, t1
	lbu	t2, -2(a7)
	mul	t1, t1, t1
	add	t0, t1, t0
	lbu	t1, 13(a6)
	add	t3, t3, t2
	addi	t3, t3, 1
	srli	t3, t3, 1
	subw	t1, t3, t1
	lbu	t3, -1(a7)
	mul	t1, t1, t1
	add	t0, t1, t0
	lbu	t1, 14(a6)
	add	t2, t2, t3
	addi	t2, t2, 1
	srli	t2, t2, 1
	subw	t1, t2, t1
	mul	t1, t1, t1
	lbu	a7, 0(a7)
	add	t0, t1, t0
	add	a3, t0, a3
	lbu	a6, 15(a6)
	add	a7, t3, a7
	addi	a7, a7, 1
	srli	a7, a7, 1
	subw	a6, a7, a6
	mul	a6, a6, a6
	addw	a3, a6, a3
	addiw	a5, a5, -1
	add	a4, a4, a2
	bnez	a5, .LBB2_5
	j	.LBB2_18
.LBB2_6:
	li	a3, 0
	blez	a5, .LBB2_18
# %bb.7:
	addi	a0, a0, 7
	addi	a1, a1, 7
.LBB2_8:                                # =>This Inner Loop Header: Depth=1
	lbu	a4, -7(a0)
	lbu	a6, -7(a1)
	subw	a4, a4, a6
	mul	a4, a4, a4
	lbu	a6, -6(a0)
	lbu	a7, -6(a1)
	lbu	t0, -5(a0)
	lbu	t1, -5(a1)
	add	a3, a4, a3
	subw	a4, a6, a7
	mul	a4, a4, a4
	subw	a6, t0, t1
	lbu	a7, -4(a0)
	lbu	t0, -4(a1)
	mul	a6, a6, a6
	add	a4, a6, a4
	add	a3, a4, a3
	subw	a4, a7, t0
	lbu	a6, -3(a0)
	lbu	a7, -3(a1)
	mul	a4, a4, a4
	lbu	t0, -2(a0)
	lbu	t1, -2(a1)
	subw	a6, a6, a7
	mul	a6, a6, a6
	add	a4, a6, a4
	subw	a6, t0, t1
	mul	a6, a6, a6
	add	a4, a6, a4
	lbu	a6, -1(a0)
	lbu	a7, -1(a1)
	lbu	t0, 0(a0)
	lbu	t1, 0(a1)
	add	a3, a4, a3
	subw	a4, a6, a7
	mul	a4, a4, a4
	subw	a6, t0, t1
	mul	a6, a6, a6
	lbu	a7, 1(a0)
	lbu	t0, 1(a1)
	add	a4, a6, a4
	lbu	a6, 2(a0)
	lbu	t1, 2(a1)
	subw	a7, a7, t0
	mul	a7, a7, a7
	add	a4, a7, a4
	subw	a6, a6, t1
	lbu	a7, 3(a0)
	lbu	t0, 3(a1)
	mul	a6, a6, a6
	add	a4, a6, a4
	add	a3, a4, a3
	subw	a4, a7, t0
	lbu	a6, 4(a0)
	lbu	a7, 4(a1)
	mul	a4, a4, a4
	lbu	t0, 5(a0)
	lbu	t1, 5(a1)
	subw	a6, a6, a7
	mul	a6, a6, a6
	add	a4, a6, a4
	subw	a6, t0, t1
	mul	a6, a6, a6
	lbu	a7, 6(a0)
	lbu	t0, 6(a1)
	add	a4, a6, a4
	lbu	a6, 7(a0)
	lbu	t1, 7(a1)
	subw	a7, a7, t0
	mul	a7, a7, a7
	add	a4, a7, a4
	subw	a6, a6, t1
	lbu	a7, 8(a0)
	lbu	t0, 8(a1)
	mul	a6, a6, a6
	add	a4, a6, a4
	add	a3, a4, a3
	subw	a4, a7, t0
	mul	a4, a4, a4
	addw	a3, a4, a3
	addiw	a5, a5, -1
	add	a0, a0, a2
	add	a1, a1, a2
	bnez	a5, .LBB2_8
	j	.LBB2_18
.LBB2_9:
	bnez	a3, .LBB2_14
# %bb.10:
	beqz	a4, .LBB2_14
# %bb.11:
	blez	a5, .LBB2_17
# %bb.12:                               # %.preheader
	li	a4, 0
	li	a3, 0
	add	a6, a0, a2
.LBB2_13:                               # =>This Inner Loop Header: Depth=1
	add	t0, a0, a4
	add	t1, a6, a4
	lbu	t2, 0(t0)
	lbu	t3, 0(t1)
	add	a7, a1, a4
	add	t2, t2, t3
	addi	t2, t2, 1
	lbu	t3, 0(a7)
	srli	t2, t2, 1
	lbu	t4, 1(t0)
	lbu	t5, 1(t1)
	subw	t2, t2, t3
	mul	t2, t2, t2
	add	a3, t2, a3
	add	t4, t4, t5
	addi	t4, t4, 1
	lbu	t2, 1(a7)
	srli	t4, t4, 1
	lbu	t3, 2(t0)
	lbu	t5, 2(t1)
	subw	t2, t4, t2
	mul	t2, t2, t2
	lbu	t4, 2(a7)
	add	t3, t3, t5
	addi	t3, t3, 1
	srli	t3, t3, 1
	subw	t3, t3, t4
	lbu	t4, 3(t0)
	lbu	t5, 3(t1)
	mul	t3, t3, t3
	add	t2, t3, t2
	add	a3, t2, a3
	add	t4, t4, t5
	addi	t4, t4, 1
	lbu	t2, 3(a7)
	srli	t4, t4, 1
	lbu	t3, 4(t0)
	lbu	t5, 4(t1)
	subw	t2, t4, t2
	mul	t2, t2, t2
	lbu	t4, 4(a7)
	add	t3, t3, t5
	addi	t3, t3, 1
	srli	t3, t3, 1
	subw	t3, t3, t4
	lbu	t4, 5(t0)
	lbu	t5, 5(t1)
	mul	t3, t3, t3
	add	t2, t3, t2
	lbu	t3, 5(a7)
	add	t4, t4, t5
	addi	t4, t4, 1
	srli	t4, t4, 1
	subw	t4, t4, t3
	lbu	t3, 6(t0)
	lbu	t5, 6(t1)
	mul	t4, t4, t4
	add	t2, t4, t2
	add	a3, t2, a3
	add	t3, t3, t5
	addi	t3, t3, 1
	lbu	t2, 6(a7)
	srli	t3, t3, 1
	lbu	t4, 7(t0)
	lbu	t5, 7(t1)
	subw	t2, t3, t2
	mul	t2, t2, t2
	lbu	t3, 7(a7)
	add	t4, t4, t5
	addi	t4, t4, 1
	srli	t4, t4, 1
	subw	t4, t4, t3
	lbu	t3, 8(t0)
	lbu	t5, 8(t1)
	mul	t4, t4, t4
	add	t2, t4, t2
	lbu	t4, 8(a7)
	add	t3, t3, t5
	addi	t3, t3, 1
	srli	t3, t3, 1
	subw	t3, t3, t4
	lbu	t4, 9(t0)
	lbu	t5, 9(t1)
	mul	t3, t3, t3
	add	t2, t3, t2
	lbu	t3, 9(a7)
	add	t4, t4, t5
	addi	t4, t4, 1
	srli	t4, t4, 1
	subw	t4, t4, t3
	lbu	t3, 10(t0)
	lbu	t5, 10(t1)
	mul	t4, t4, t4
	add	t2, t4, t2
	add	a3, t2, a3
	add	t3, t3, t5
	addi	t3, t3, 1
	lbu	t2, 10(a7)
	srli	t3, t3, 1
	lbu	t4, 11(t0)
	lbu	t5, 11(t1)
	subw	t2, t3, t2
	mul	t2, t2, t2
	lbu	t3, 11(a7)
	add	t4, t4, t5
	addi	t4, t4, 1
	srli	t4, t4, 1
	subw	t4, t4, t3
	lbu	t3, 12(t0)
	lbu	t5, 12(t1)
	mul	t4, t4, t4
	add	t2, t4, t2
	lbu	t4, 12(a7)
	add	t3, t3, t5
	addi	t3, t3, 1
	srli	t3, t3, 1
	subw	t3, t3, t4
	lbu	t4, 13(t0)
	lbu	t5, 13(t1)
	mul	t3, t3, t3
	add	t2, t3, t2
	lbu	t3, 13(a7)
	add	t4, t4, t5
	addi	t4, t4, 1
	srli	t4, t4, 1
	subw	t4, t4, t3
	lbu	t3, 14(t0)
	lbu	t5, 14(t1)
	mul	t4, t4, t4
	add	t2, t4, t2
	lbu	t4, 14(a7)
	add	t3, t3, t5
	addi	t3, t3, 1
	srli	t3, t3, 1
	subw	t3, t3, t4
	mul	t3, t3, t3
	lbu	t0, 15(t0)
	lbu	t1, 15(t1)
	add	t2, t3, t2
	add	a3, t2, a3
	lbu	a7, 15(a7)
	add	t0, t0, t1
	addi	t0, t0, 1
	srli	t0, t0, 1
	subw	a7, t0, a7
	mul	a7, a7, a7
	addw	a3, a7, a3
	addiw	a5, a5, -1
	add	a4, a4, a2
	bnez	a5, .LBB2_13
	j	.LBB2_18
.LBB2_14:
	blez	a5, .LBB2_17
# %bb.15:
	lbu	t0, 0(a0)
	li	a4, 0
	li	a3, 0
	add	a6, a0, a2
.LBB2_16:                               # =>This Inner Loop Header: Depth=1
	add	t1, a6, a4
	add	t2, a0, a4
	lbu	t3, 1(t2)
	lbu	a7, 0(t1)
	lbu	t4, 1(t1)
	add	t5, t0, t3
	add	t0, a1, a4
	add	t6, a7, t4
	lbu	s0, 0(t0)
	add	t5, t5, t6
	addi	t5, t5, 2
	srliw	t5, t5, 2
	subw	t5, t5, s0
	lbu	t6, 2(t2)
	lbu	s0, 2(t1)
	mul	t5, t5, t5
	add	a3, t5, a3
	add	t3, t3, t6
	add	t4, t4, s0
	add	t3, t3, t4
	addi	t3, t3, 2
	lbu	t4, 1(t0)
	srli	t3, t3, 2
	lbu	t5, 3(t2)
	lbu	s1, 3(t1)
	subw	t3, t3, t4
	mul	t3, t3, t3
	add	t6, t6, t5
	add	s0, s0, s1
	lbu	t4, 2(t0)
	add	t6, t6, s0
	addi	t6, t6, 2
	srli	t6, t6, 2
	subw	t6, t6, t4
	mul	t4, t6, t6
	lbu	t6, 4(t2)
	lbu	s0, 4(t1)
	add	t3, t4, t3
	add	a3, t3, a3
	add	t5, t5, t6
	add	s1, s1, s0
	add	t5, t5, s1
	addi	t5, t5, 2
	lbu	t3, 3(t0)
	srli	t5, t5, 2
	lbu	t4, 5(t2)
	lbu	s1, 5(t1)
	subw	t5, t5, t3
	mul	t3, t5, t5
	add	t6, t6, t4
	add	s0, s0, s1
	lbu	t5, 4(t0)
	add	t6, t6, s0
	addi	t6, t6, 2
	srli	t6, t6, 2
	subw	t6, t6, t5
	lbu	t5, 6(t2)
	lbu	s0, 6(t1)
	mul	t6, t6, t6
	add	t3, t6, t3
	add	t4, t4, t5
	add	s1, s1, s0
	lbu	t6, 5(t0)
	add	t4, t4, s1
	addi	t4, t4, 2
	srli	t4, t4, 2
	subw	t4, t4, t6
	mul	t4, t4, t4
	lbu	t6, 7(t2)
	lbu	s1, 7(t1)
	add	t3, t4, t3
	add	a3, t3, a3
	add	t5, t5, t6
	add	s0, s0, s1
	add	t5, t5, s0
	addi	t5, t5, 2
	lbu	t3, 6(t0)
	srli	t5, t5, 2
	lbu	t4, 8(t2)
	lbu	s0, 8(t1)
	subw	t5, t5, t3
	mul	t3, t5, t5
	add	t6, t6, t4
	add	s1, s1, s0
	lbu	t5, 7(t0)
	add	t6, t6, s1
	addi	t6, t6, 2
	srli	t6, t6, 2
	subw	t6, t6, t5
	lbu	t5, 9(t2)
	lbu	s1, 9(t1)
	mul	t6, t6, t6
	add	t3, t6, t3
	add	t4, t4, t5
	add	s0, s0, s1
	lbu	t6, 8(t0)
	add	t4, t4, s0
	addi	t4, t4, 2
	srli	t4, t4, 2
	subw	t4, t4, t6
	lbu	t6, 10(t2)
	lbu	s0, 10(t1)
	mul	t4, t4, t4
	add	t3, t4, t3
	add	t5, t5, t6
	add	s1, s1, s0
	lbu	t4, 9(t0)
	add	t5, t5, s1
	addi	t5, t5, 2
	srli	t5, t5, 2
	subw	t5, t5, t4
	mul	t4, t5, t5
	lbu	t5, 11(t2)
	lbu	s1, 11(t1)
	add	t3, t4, t3
	add	a3, t3, a3
	add	t6, t6, t5
	add	s0, s0, s1
	add	t6, t6, s0
	addi	t6, t6, 2
	lbu	t3, 10(t0)
	srli	t6, t6, 2
	lbu	t4, 12(t2)
	lbu	s0, 12(t1)
	subw	t6, t6, t3
	mul	t3, t6, t6
	add	t5, t5, t4
	add	s1, s1, s0
	lbu	t6, 11(t0)
	add	t5, t5, s1
	addi	t5, t5, 2
	srli	t5, t5, 2
	subw	t5, t5, t6
	lbu	t6, 13(t2)
	lbu	s1, 13(t1)
	mul	t5, t5, t5
	add	t3, t5, t3
	add	t4, t4, t6
	add	s0, s0, s1
	lbu	t5, 12(t0)
	add	t4, t4, s0
	addi	t4, t4, 2
	srli	t4, t4, 2
	subw	t4, t4, t5
	lbu	t5, 14(t2)
	lbu	s0, 14(t1)
	mul	t4, t4, t4
	add	t3, t4, t3
	add	t6, t6, t5
	add	s1, s1, s0
	lbu	t4, 13(t0)
	add	t6, t6, s1
	addi	t6, t6, 2
	srli	t6, t6, 2
	subw	t6, t6, t4
	lbu	t4, 15(t2)
	lbu	s1, 15(t1)
	mul	t6, t6, t6
	add	t3, t6, t3
	add	t5, t5, t4
	add	s0, s0, s1
	lbu	t6, 14(t0)
	add	t5, t5, s0
	addi	t5, t5, 2
	srli	t5, t5, 2
	subw	t5, t5, t6
	mul	t5, t5, t5
	lbu	t2, 16(t2)
	lbu	t1, 16(t1)
	add	t3, t5, t3
	add	a3, t3, a3
	add	t2, t4, t2
	add	t1, s1, t1
	lbu	t0, 15(t0)
	add	t1, t2, t1
	addi	t1, t1, 2
	srli	t1, t1, 2
	subw	t0, t1, t0
	mul	t0, t0, t0
	addw	a3, t0, a3
	addiw	a5, a5, -1
	add	a4, a4, a2
	mv	t0, a7
	bnez	a5, .LBB2_16
	j	.LBB2_18
.LBB2_17:
	li	a3, 0
.LBB2_18:
	mv	a0, a3
	ld	s0, 8(sp)                       # 8-byte Folded Reload
	ld	s1, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end2:
	.size	dist2, .Lfunc_end2-dist2
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function frame_estimate
	.type	frame_estimate,@function
frame_estimate:                         # @frame_estimate
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
	ld	t0, 232(sp)
	sd	t0, 64(sp)                      # 8-byte Folded Spill
	ld	s0, 224(sp)
	ld	s7, 192(sp)
	lui	s9, %hi(width)
	lw	t0, %lo(width)(s9)
	lui	s8, %hi(height)
	lw	t1, %lo(height)(s8)
	sd	t6, 56(sp)                      # 8-byte Folded Spill
	sd	t5, 48(sp)                      # 8-byte Folded Spill
	sd	t4, 8(sp)                       # 8-byte Folded Spill
	sd	t3, 0(sp)                       # 8-byte Folded Spill
	mv	t6, t2
	mv	t5, a7
	mv	s1, a6
	mv	s2, a5
	mv	s4, a4
	mv	s3, a3
	mv	s11, a2
	mv	s5, a1
	mv	s6, a0
	li	t2, 16
	mv	a3, t0
	mv	a4, s3
	mv	a5, s4
	mv	a6, s2
	mv	a7, s1
	mv	t3, t0
	mv	t4, t1
	call	fullsearch
	sw	a0, 0(s7)
	lw	s9, %lo(width)(s9)
	lw	a0, %lo(height)(s8)
	slliw	s10, s9, 1
	srai	s8, s4, 1
	srai	s1, s1, 1
	srai	s7, a0, 1
	li	t2, 8
	addi	t5, sp, 84
	addi	t6, sp, 76
	mv	a0, s6
	mv	a1, s5
	mv	a2, s11
	mv	a3, s10
	mv	a4, s3
	mv	a5, s8
	mv	a6, s2
	mv	a7, s1
	mv	t3, s9
	mv	t4, s7
	call	fullsearch
	mv	s4, a0
	sd	s6, 16(sp)                      # 8-byte Folded Spill
	add	a0, s6, s9
	mv	s6, s5
	add	a1, s5, s9
	li	t2, 8
	addi	t5, sp, 80
	addi	t6, sp, 72
	mv	a2, s11
	mv	a3, s10
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	mv	a4, s3
	mv	s5, s8
	mv	a5, s8
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	mv	a6, s2
	mv	s3, s1
	mv	a7, s1
	mv	t3, s9
	mv	t4, s7
	call	fullsearch
	mv	s9, a0
	lw	a2, 84(sp)
	lw	a0, 76(sp)
	lw	a3, 80(sp)
	lw	a1, 72(sp)
	sw	a2, 0(s0)
	ld	a4, 64(sp)                      # 8-byte Folded Reload
	sw	a0, 0(a4)
	sd	s0, 40(sp)                      # 8-byte Folded Spill
	sw	a3, 8(s0)
	sw	a1, 8(a4)
	blt	s9, s4, .LBB3_2
# %bb.1:
	mv	a3, a2
.LBB3_2:
	ld	a2, 208(sp)
	slt	a4, s9, s4
	ld	a5, 0(sp)                       # 8-byte Folded Reload
	sw	a3, 0(a5)
	blt	s9, s4, .LBB3_4
# %bb.3:
	mv	a1, a0
.LBB3_4:
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	sw	a1, 0(a0)
	sw	a4, 0(a2)
	lui	a0, %hi(width)
	lw	s0, %lo(width)(a0)
	lui	a0, %hi(height)
	lw	a0, %lo(height)(a0)
	add	s11, s11, s0
	slliw	s10, s0, 1
	srai	s2, a0, 1
	li	t2, 8
	addi	t5, sp, 84
	addi	t6, sp, 76
	ld	s1, 16(sp)                      # 8-byte Folded Reload
	mv	a0, s1
	mv	a1, s6
	mv	a2, s11
	mv	a3, s10
	ld	s8, 24(sp)                      # 8-byte Folded Reload
	mv	a4, s8
	mv	a5, s5
	ld	s7, 32(sp)                      # 8-byte Folded Reload
	mv	a6, s7
	mv	a7, s3
	mv	t3, s0
	mv	t4, s2
	call	fullsearch
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	add	a0, s1, s0
	add	a1, s6, s0
	li	t2, 8
	addi	t5, sp, 80
	addi	t6, sp, 72
	mv	a2, s11
	mv	a3, s10
	mv	a4, s8
	mv	a5, s5
	mv	a6, s7
	mv	a7, s3
	mv	t3, s0
	mv	t4, s2
	call	fullsearch
	lw	a4, 84(sp)
	lw	a5, 76(sp)
	lw	a2, 80(sp)
	lw	a1, 72(sp)
	ld	a6, 40(sp)                      # 8-byte Folded Reload
	sw	a4, 4(a6)
	ld	a3, 64(sp)                      # 8-byte Folded Reload
	sw	a5, 4(a3)
	sw	a2, 12(a6)
	ld	a6, 8(sp)                       # 8-byte Folded Reload
	sw	a1, 12(a3)
	bge	a6, a0, .LBB3_6
# %bb.5:
	li	a3, 0
	mv	a1, a5
	mv	a2, a4
	mv	a0, a6
	ld	a5, 216(sp)
	ld	a4, 200(sp)
	bge	s4, s9, .LBB3_7
	j	.LBB3_8
.LBB3_6:
	li	a3, 1
	ld	a5, 216(sp)
	ld	a4, 200(sp)
	blt	s4, s9, .LBB3_8
.LBB3_7:
	mv	s4, s9
.LBB3_8:
	ld	a6, 48(sp)                      # 8-byte Folded Reload
	sw	a2, 0(a6)
	ld	a2, 56(sp)                      # 8-byte Folded Reload
	sw	a1, 0(a2)
	sw	a3, 0(a5)
	add	a0, a0, s4
	sw	a0, 0(a4)
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
.Lfunc_end3:
	.size	frame_estimate, .Lfunc_end3-frame_estimate
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function dist1
	.type	dist1,@function
dist1:                                  # @dist1
# %bb.0:
	addi	sp, sp, -32
	sd	s0, 24(sp)                      # 8-byte Folded Spill
	sd	s1, 16(sp)                      # 8-byte Folded Spill
	sd	s2, 8(sp)                       # 8-byte Folded Spill
	sd	s3, 0(sp)                       # 8-byte Folded Spill
	or	a7, a4, a3
	beqz	a7, .LBB4_6
# %bb.1:
	beqz	a3, .LBB4_10
# %bb.2:
	bnez	a4, .LBB4_10
# %bb.3:
	blez	a5, .LBB4_20
# %bb.4:
	li	a4, 0
	li	a3, 0
	addi	a0, a0, 16
.LBB4_5:                                # =>This Inner Loop Header: Depth=1
	add	a7, a0, a4
	lbu	t0, -16(a7)
	lbu	t1, -15(a7)
	add	a6, a1, a4
	lbu	t2, 0(a6)
	add	t0, t0, t1
	addi	t0, t0, 1
	srli	t0, t0, 1
	sub	t0, t0, t2
	sraiw	t2, t0, 31
	xor	t0, t0, t2
	lbu	t3, -14(a7)
	subw	a3, t2, a3
	subw	a3, t0, a3
	lbu	t0, 1(a6)
	add	t1, t1, t3
	addi	t1, t1, 1
	srli	t1, t1, 1
	sub	t0, t1, t0
	sraiw	t1, t0, 31
	xor	t0, t0, t1
	lbu	t2, -13(a7)
	subw	t0, t0, t1
	add	a3, t0, a3
	lbu	t0, 2(a6)
	add	t3, t3, t2
	addi	t3, t3, 1
	srli	t3, t3, 1
	sub	t0, t3, t0
	sraiw	t1, t0, 31
	xor	t0, t0, t1
	lbu	t3, -12(a7)
	subw	t0, t0, t1
	add	a3, t0, a3
	lbu	t0, 3(a6)
	add	t2, t2, t3
	addi	t2, t2, 1
	srli	t1, t2, 1
	sub	t0, t1, t0
	sraiw	t1, t0, 31
	xor	t0, t0, t1
	lbu	t2, -11(a7)
	subw	t0, t0, t1
	add	a3, t0, a3
	lbu	t0, 4(a6)
	add	t3, t3, t2
	addi	t3, t3, 1
	srli	t3, t3, 1
	sub	t0, t3, t0
	sraiw	t1, t0, 31
	xor	t0, t0, t1
	lbu	t3, -10(a7)
	subw	t0, t0, t1
	add	a3, t0, a3
	lbu	t0, 5(a6)
	add	t2, t2, t3
	addi	t2, t2, 1
	srli	t1, t2, 1
	sub	t0, t1, t0
	sraiw	t1, t0, 31
	xor	t0, t0, t1
	lbu	t2, -9(a7)
	subw	t0, t0, t1
	add	a3, t0, a3
	lbu	t0, 6(a6)
	add	t3, t3, t2
	addi	t3, t3, 1
	srli	t3, t3, 1
	sub	t0, t3, t0
	sraiw	t1, t0, 31
	xor	t0, t0, t1
	lbu	t3, -8(a7)
	subw	t0, t0, t1
	add	a3, t0, a3
	lbu	t0, 7(a6)
	add	t2, t2, t3
	addi	t2, t2, 1
	srli	t1, t2, 1
	sub	t0, t1, t0
	sraiw	t1, t0, 31
	xor	t0, t0, t1
	lbu	t2, -7(a7)
	subw	t0, t0, t1
	add	a3, t0, a3
	lbu	t0, 8(a6)
	add	t3, t3, t2
	addi	t3, t3, 1
	srli	t3, t3, 1
	sub	t0, t3, t0
	sraiw	t1, t0, 31
	xor	t0, t0, t1
	lbu	t3, -6(a7)
	subw	t0, t0, t1
	add	a3, t0, a3
	lbu	t0, 9(a6)
	add	t2, t2, t3
	addi	t2, t2, 1
	srli	t1, t2, 1
	sub	t0, t1, t0
	sraiw	t1, t0, 31
	xor	t0, t0, t1
	lbu	t2, -5(a7)
	subw	t0, t0, t1
	add	a3, t0, a3
	lbu	t0, 10(a6)
	add	t3, t3, t2
	addi	t3, t3, 1
	srli	t3, t3, 1
	sub	t0, t3, t0
	sraiw	t1, t0, 31
	xor	t0, t0, t1
	lbu	t3, -4(a7)
	subw	t0, t0, t1
	add	a3, t0, a3
	lbu	t0, 11(a6)
	add	t2, t2, t3
	addi	t2, t2, 1
	srli	t1, t2, 1
	sub	t0, t1, t0
	sraiw	t1, t0, 31
	xor	t0, t0, t1
	lbu	t2, -3(a7)
	subw	t0, t0, t1
	add	a3, t0, a3
	lbu	t0, 12(a6)
	add	t3, t3, t2
	addi	t3, t3, 1
	srli	t3, t3, 1
	sub	t0, t3, t0
	sraiw	t1, t0, 31
	xor	t0, t0, t1
	lbu	t3, -2(a7)
	subw	t0, t0, t1
	add	a3, t0, a3
	lbu	t0, 13(a6)
	add	t2, t2, t3
	addi	t2, t2, 1
	srli	t1, t2, 1
	sub	t0, t1, t0
	sraiw	t1, t0, 31
	xor	t0, t0, t1
	lbu	t2, -1(a7)
	subw	t0, t0, t1
	add	a3, t0, a3
	lbu	t0, 14(a6)
	add	t3, t3, t2
	addi	t3, t3, 1
	srli	t3, t3, 1
	sub	t0, t3, t0
	sraiw	t1, t0, 31
	xor	t0, t0, t1
	lbu	a7, 0(a7)
	subw	t0, t0, t1
	add	a3, t0, a3
	lbu	a6, 15(a6)
	add	a7, t2, a7
	addi	a7, a7, 1
	srli	a7, a7, 1
	sub	a6, a7, a6
	sraiw	a7, a6, 31
	xor	a6, a6, a7
	subw	a6, a6, a7
	addw	a3, a6, a3
	addiw	a5, a5, -1
	add	a4, a4, a2
	bnez	a5, .LBB4_5
	j	.LBB4_21
.LBB4_6:
	li	a3, 0
	blez	a5, .LBB4_21
# %bb.7:
	addi	a0, a0, 7
	addi	a1, a1, 7
.LBB4_8:                                # =>This Inner Loop Header: Depth=1
	lbu	a4, -7(a0)
	lbu	a7, -7(a1)
	sub	a4, a4, a7
	sraiw	a7, a4, 31
	lbu	t0, -6(a0)
	lbu	t1, -6(a1)
	xor	a4, a4, a7
	subw	a3, a7, a3
	subw	a4, a4, a3
	sub	a3, t0, t1
	sraiw	a7, a3, 31
	lbu	t0, -5(a0)
	lbu	t1, -5(a1)
	xor	a3, a3, a7
	subw	a3, a3, a7
	add	a3, a4, a3
	sub	a4, t0, t1
	lbu	a7, -4(a0)
	lbu	t0, -4(a1)
	sraiw	t1, a4, 31
	xor	a4, a4, t1
	subw	a4, a4, t1
	sub	a7, a7, t0
	sraiw	t0, a7, 31
	xor	a7, a7, t0
	lbu	t1, -3(a0)
	lbu	t2, -3(a1)
	subw	a7, a7, t0
	add	a4, a4, a7
	add	a3, a3, a4
	sub	a4, t1, t2
	lbu	a7, -2(a0)
	lbu	t0, -2(a1)
	sraiw	t1, a4, 31
	xor	a4, a4, t1
	subw	a4, a4, t1
	sub	a7, a7, t0
	sraiw	t0, a7, 31
	lbu	t1, -1(a0)
	lbu	t2, -1(a1)
	xor	a7, a7, t0
	subw	a7, a7, t0
	add	a4, a4, a7
	sub	a7, t1, t2
	sraiw	t0, a7, 31
	xor	a7, a7, t0
	lbu	t1, 0(a0)
	lbu	t2, 0(a1)
	subw	a7, a7, t0
	add	a4, a4, a7
	add	a3, a3, a4
	sub	a4, t1, t2
	lbu	a7, 1(a0)
	lbu	t0, 1(a1)
	sraiw	t1, a4, 31
	xor	a4, a4, t1
	subw	a4, a4, t1
	sub	a7, a7, t0
	sraiw	t0, a7, 31
	lbu	t1, 2(a0)
	lbu	t2, 2(a1)
	xor	a7, a7, t0
	subw	a7, a7, t0
	add	a4, a4, a7
	sub	a7, t1, t2
	sraiw	t0, a7, 31
	lbu	t1, 3(a0)
	lbu	t2, 3(a1)
	xor	a7, a7, t0
	subw	a7, a7, t0
	add	a4, a4, a7
	sub	a7, t1, t2
	sraiw	t0, a7, 31
	xor	a7, a7, t0
	lbu	t1, 4(a0)
	lbu	t2, 4(a1)
	subw	a7, a7, t0
	add	a4, a4, a7
	add	a3, a3, a4
	sub	a4, t1, t2
	lbu	a7, 5(a0)
	lbu	t0, 5(a1)
	sraiw	t1, a4, 31
	xor	a4, a4, t1
	subw	a4, a4, t1
	sub	a7, a7, t0
	sraiw	t0, a7, 31
	lbu	t1, 6(a0)
	lbu	t2, 6(a1)
	xor	a7, a7, t0
	subw	a7, a7, t0
	add	a4, a4, a7
	sub	a7, t1, t2
	sraiw	t0, a7, 31
	lbu	t1, 7(a0)
	lbu	t2, 7(a1)
	xor	a7, a7, t0
	subw	a7, a7, t0
	add	a4, a4, a7
	sub	a7, t1, t2
	sraiw	t0, a7, 31
	lbu	t1, 8(a0)
	lbu	t2, 8(a1)
	xor	a7, a7, t0
	subw	a7, a7, t0
	add	a4, a4, a7
	sub	a7, t1, t2
	sraiw	t0, a7, 31
	xor	a7, a7, t0
	subw	a7, a7, t0
	add	a4, a4, a7
	addw	a3, a3, a4
	bge	a3, a6, .LBB4_21
# %bb.9:                                #   in Loop: Header=BB4_8 Depth=1
	addiw	a5, a5, -1
	add	a0, a0, a2
	add	a1, a1, a2
	bnez	a5, .LBB4_8
	j	.LBB4_21
.LBB4_10:
	bnez	a3, .LBB4_15
# %bb.11:
	beqz	a4, .LBB4_15
# %bb.12:
	blez	a5, .LBB4_20
# %bb.13:                               # %.preheader
	li	a4, 0
	li	a3, 0
	add	a6, a0, a2
.LBB4_14:                               # =>This Inner Loop Header: Depth=1
	add	t0, a0, a4
	add	t1, a6, a4
	lbu	t2, 0(t0)
	lbu	t3, 0(t1)
	add	a7, a1, a4
	lbu	t4, 0(a7)
	add	t2, t2, t3
	addi	t2, t2, 1
	srli	t2, t2, 1
	sub	t2, t2, t4
	sraiw	t3, t2, 31
	xor	t2, t2, t3
	lbu	t4, 1(t0)
	lbu	t5, 1(t1)
	subw	t3, t3, a3
	subw	a3, t2, t3
	lbu	t2, 1(a7)
	add	t4, t4, t5
	addi	t4, t4, 1
	srli	t4, t4, 1
	sub	t2, t4, t2
	sraiw	t3, t2, 31
	xor	t2, t2, t3
	lbu	t4, 2(t0)
	lbu	t5, 2(t1)
	subw	t2, t2, t3
	add	a3, t2, a3
	lbu	t2, 2(a7)
	add	t4, t4, t5
	addi	t4, t4, 1
	srli	t4, t4, 1
	sub	t2, t4, t2
	sraiw	t3, t2, 31
	xor	t2, t2, t3
	lbu	t4, 3(t0)
	lbu	t5, 3(t1)
	subw	t2, t2, t3
	add	a3, t2, a3
	lbu	t2, 3(a7)
	add	t4, t4, t5
	addi	t4, t4, 1
	srli	t4, t4, 1
	sub	t2, t4, t2
	sraiw	t3, t2, 31
	xor	t2, t2, t3
	lbu	t4, 4(t0)
	lbu	t5, 4(t1)
	subw	t2, t2, t3
	add	a3, t2, a3
	lbu	t2, 4(a7)
	add	t4, t4, t5
	addi	t4, t4, 1
	srli	t4, t4, 1
	sub	t2, t4, t2
	sraiw	t3, t2, 31
	xor	t2, t2, t3
	lbu	t4, 5(t0)
	lbu	t5, 5(t1)
	subw	t2, t2, t3
	add	a3, t2, a3
	lbu	t2, 5(a7)
	add	t4, t4, t5
	addi	t4, t4, 1
	srli	t4, t4, 1
	sub	t2, t4, t2
	sraiw	t3, t2, 31
	xor	t2, t2, t3
	lbu	t4, 6(t0)
	lbu	t5, 6(t1)
	subw	t2, t2, t3
	add	a3, t2, a3
	lbu	t2, 6(a7)
	add	t4, t4, t5
	addi	t4, t4, 1
	srli	t4, t4, 1
	sub	t2, t4, t2
	sraiw	t3, t2, 31
	xor	t2, t2, t3
	lbu	t4, 7(t0)
	lbu	t5, 7(t1)
	subw	t2, t2, t3
	add	a3, t2, a3
	lbu	t2, 7(a7)
	add	t4, t4, t5
	addi	t4, t4, 1
	srli	t4, t4, 1
	sub	t2, t4, t2
	sraiw	t3, t2, 31
	xor	t2, t2, t3
	lbu	t4, 8(t0)
	lbu	t5, 8(t1)
	subw	t2, t2, t3
	add	a3, t2, a3
	lbu	t2, 8(a7)
	add	t4, t4, t5
	addi	t4, t4, 1
	srli	t4, t4, 1
	sub	t2, t4, t2
	sraiw	t3, t2, 31
	xor	t2, t2, t3
	lbu	t4, 9(t0)
	lbu	t5, 9(t1)
	subw	t2, t2, t3
	add	a3, t2, a3
	lbu	t2, 9(a7)
	add	t4, t4, t5
	addi	t4, t4, 1
	srli	t4, t4, 1
	sub	t2, t4, t2
	sraiw	t3, t2, 31
	xor	t2, t2, t3
	lbu	t4, 10(t0)
	lbu	t5, 10(t1)
	subw	t2, t2, t3
	add	a3, t2, a3
	lbu	t2, 10(a7)
	add	t4, t4, t5
	addi	t4, t4, 1
	srli	t4, t4, 1
	sub	t2, t4, t2
	sraiw	t3, t2, 31
	xor	t2, t2, t3
	lbu	t4, 11(t0)
	lbu	t5, 11(t1)
	subw	t2, t2, t3
	add	a3, t2, a3
	lbu	t2, 11(a7)
	add	t4, t4, t5
	addi	t4, t4, 1
	srli	t4, t4, 1
	sub	t2, t4, t2
	sraiw	t3, t2, 31
	xor	t2, t2, t3
	lbu	t4, 12(t0)
	lbu	t5, 12(t1)
	subw	t2, t2, t3
	add	a3, t2, a3
	lbu	t2, 12(a7)
	add	t4, t4, t5
	addi	t4, t4, 1
	srli	t4, t4, 1
	sub	t2, t4, t2
	sraiw	t3, t2, 31
	xor	t2, t2, t3
	lbu	t4, 13(t0)
	lbu	t5, 13(t1)
	subw	t2, t2, t3
	add	a3, t2, a3
	lbu	t2, 13(a7)
	add	t4, t4, t5
	addi	t4, t4, 1
	srli	t4, t4, 1
	sub	t2, t4, t2
	sraiw	t3, t2, 31
	xor	t2, t2, t3
	lbu	t4, 14(t0)
	lbu	t5, 14(t1)
	subw	t2, t2, t3
	add	a3, t2, a3
	lbu	t2, 14(a7)
	add	t4, t4, t5
	addi	t4, t4, 1
	srli	t4, t4, 1
	sub	t2, t4, t2
	sraiw	t3, t2, 31
	xor	t2, t2, t3
	lbu	t0, 15(t0)
	lbu	t1, 15(t1)
	subw	t2, t2, t3
	add	a3, t2, a3
	lbu	a7, 15(a7)
	add	t0, t0, t1
	addi	t0, t0, 1
	srli	t0, t0, 1
	sub	a7, t0, a7
	sraiw	t0, a7, 31
	xor	a7, a7, t0
	subw	a7, a7, t0
	addw	a3, a7, a3
	addiw	a5, a5, -1
	add	a4, a4, a2
	bnez	a5, .LBB4_14
	j	.LBB4_21
.LBB4_15:
	blez	a5, .LBB4_20
# %bb.16:
	lbu	a6, 0(a0)
	li	a4, 0
	li	a3, 0
	li	a7, 0
	addi	t0, a0, 1
	add	t1, t0, a2
	mv	t2, a1
.LBB4_17:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_18 Depth 2
	mv	s0, a6
	add	a0, a0, a2
	lbu	a6, 0(a0)
	mul	t3, a2, a4
	add	t3, t3, a1
	addi	t3, t3, 16
	mv	t4, t0
	mv	t5, t1
	mv	t6, t2
	mv	s1, a6
.LBB4_18:                               #   Parent Loop BB4_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	s2, 0(t4)
	lbu	s3, 0(t5)
	add	s0, s0, s1
	add	s0, s0, s2
	lbu	s1, 0(t6)
	add	s0, s0, s3
	addi	s0, s0, 2
	srliw	s0, s0, 2
	sub	s0, s0, s1
	sraiw	s1, s0, 31
	xor	s0, s0, s1
	subw	s1, s1, a3
	subw	a3, s0, s1
	addi	t6, t6, 1
	addi	t5, t5, 1
	addi	t4, t4, 1
	mv	s1, s3
	mv	s0, s2
	bne	t6, t3, .LBB4_18
# %bb.19:                               #   in Loop: Header=BB4_17 Depth=1
	add	t2, t2, a2
	addiw	a7, a7, 1
	add	t1, t1, a2
	add	t0, t0, a2
	addi	a4, a4, 1
	bne	a7, a5, .LBB4_17
	j	.LBB4_21
.LBB4_20:
	li	a3, 0
.LBB4_21:
	mv	a0, a3
	ld	s0, 24(sp)                      # 8-byte Folded Reload
	ld	s1, 16(sp)                      # 8-byte Folded Reload
	ld	s2, 8(sp)                       # 8-byte Folded Reload
	ld	s3, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end4:
	.size	dist1, .Lfunc_end4-dist1
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function field_estimate
	.type	field_estimate,@function
field_estimate:                         # @field_estimate
# %bb.0:
	addi	sp, sp, -176
	sd	ra, 168(sp)                     # 8-byte Folded Spill
	sd	s0, 160(sp)                     # 8-byte Folded Spill
	sd	s1, 152(sp)                     # 8-byte Folded Spill
	sd	s2, 144(sp)                     # 8-byte Folded Spill
	sd	s3, 136(sp)                     # 8-byte Folded Spill
	sd	s4, 128(sp)                     # 8-byte Folded Spill
	sd	s5, 120(sp)                     # 8-byte Folded Spill
	sd	s6, 112(sp)                     # 8-byte Folded Spill
	sd	s7, 104(sp)                     # 8-byte Folded Spill
	sd	s8, 96(sp)                      # 8-byte Folded Spill
	sd	s9, 88(sp)                      # 8-byte Folded Spill
	sd	s10, 80(sp)                     # 8-byte Folded Spill
	sd	s11, 72(sp)                     # 8-byte Folded Spill
	lui	t0, %hi(pict_struct)
	lw	s1, %lo(pict_struct)(t0)
	sd	t6, 0(sp)                       # 8-byte Folded Spill
	mv	s10, t5
	mv	s11, t4
	sd	a7, 48(sp)                      # 8-byte Folded Spill
	mv	s8, a6
	sd	a5, 40(sp)                      # 8-byte Folded Spill
	mv	s5, a4
	sd	a3, 32(sp)                      # 8-byte Folded Spill
	sd	a2, 24(sp)                      # 8-byte Folded Spill
	sd	a1, 16(sp)                      # 8-byte Folded Spill
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	snez	a0, t3
	addi	a1, s1, -1
	seqz	a1, a1
	and	s6, a0, a1
	addi	a1, s1, -2
	seqz	a1, a1
	and	s9, a0, a1
	lui	s3, 16
	srai	s4, t2, 1
	lui	s2, 16
	beqz	s6, .LBB5_9
# %bb.1:
                                        # implicit-def: $x23
                                        # implicit-def: $x8
	beqz	s9, .LBB5_10
.LBB5_2:
	li	a3, 1
	mv	a2, s2
	bne	s1, a3, .LBB5_11
.LBB5_3:
	lw	a0, 68(sp)
	ld	a4, 240(sp)
	mv	a7, a0
	beq	s1, a3, .LBB5_5
.LBB5_4:
	mv	a7, s0
.LBB5_5:
	ld	a5, 256(sp)
	lw	a1, 64(sp)
	ld	a6, 248(sp)
	sw	a7, 0(a4)
	mv	a7, a1
	beq	s1, a3, .LBB5_7
# %bb.6:
	mv	a7, s7
.LBB5_7:
	ld	a3, 216(sp)
	ld	a4, 200(sp)
	sw	a7, 0(a6)
	sw	a2, 0(a5)
	bge	s3, s2, .LBB5_12
# %bb.8:
	li	a2, 1
	mv	a1, s7
	mv	a0, s0
	mv	s2, s3
	j	.LBB5_13
.LBB5_9:
	lui	a0, %hi(width)
	lw	t3, %lo(width)(a0)
	lui	a0, %hi(height)
	lw	t4, %lo(height)(a0)
	slliw	a3, t3, 1
	srai	t4, t4, 1
	li	t2, 16
	addi	t5, sp, 68
	addi	t6, sp, 64
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	mv	a2, s5
	ld	a4, 40(sp)                      # 8-byte Folded Reload
	mv	a5, s8
	ld	a6, 48(sp)                      # 8-byte Folded Reload
	mv	a7, s4
	call	fullsearch
	mv	s2, a0
                                        # implicit-def: $x23
                                        # implicit-def: $x8
	bnez	s9, .LBB5_2
.LBB5_10:
	lui	a0, %hi(width)
	lw	t3, %lo(width)(a0)
	lui	a0, %hi(height)
	lw	t4, %lo(height)(a0)
	slliw	a3, t3, 1
	srai	t4, t4, 1
	li	t2, 16
	addi	t5, sp, 60
	addi	t6, sp, 56
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	mv	a2, s5
	ld	a4, 40(sp)                      # 8-byte Folded Reload
	mv	a5, s8
	ld	a6, 48(sp)                      # 8-byte Folded Reload
	mv	a7, s4
	call	fullsearch
	lw	s0, 60(sp)
	lw	s7, 56(sp)
	mv	s3, a0
	li	a3, 1
	mv	a2, s2
	beq	s1, a3, .LBB5_3
.LBB5_11:
	mv	a2, s3
	lw	a0, 68(sp)
	ld	a4, 240(sp)
	mv	a7, a0
	bne	s1, a3, .LBB5_4
	j	.LBB5_5
.LBB5_12:
	li	a2, 0
.LBB5_13:
	sw	s2, 0(a4)
	sw	a0, 0(s11)
	sw	a1, 0(s10)
	sw	a2, 0(a3)
	lui	s3, 16
	lui	s2, 16
	beqz	s6, .LBB5_29
# %bb.14:
	beqz	s9, .LBB5_30
.LBB5_15:
	ld	s1, 208(sp)
	mv	a0, s2
	bge	s2, s3, .LBB5_31
.LBB5_16:
	sw	a0, 0(s1)
	blt	s3, s2, .LBB5_18
.LBB5_17:
	lw	s0, 68(sp)
.LBB5_18:
	ld	a0, 224(sp)
	ld	a1, 176(sp)
	slt	a2, s3, s2
	ld	a3, 0(sp)                       # 8-byte Folded Reload
	sw	s0, 0(a3)
	blt	s3, s2, .LBB5_20
# %bb.19:
	lw	s7, 64(sp)
.LBB5_20:
	sw	s7, 0(a1)
	sw	a2, 0(a0)
	lui	s2, 16
	addiw	s8, s8, 8
	lui	s3, 16
	beqz	s6, .LBB5_32
# %bb.21:
	beqz	s9, .LBB5_33
.LBB5_22:
	lw	a1, 0(s1)
	mv	a2, s3
	blt	s3, s2, .LBB5_24
.LBB5_23:
	mv	a2, s2
.LBB5_24:
	ld	a0, 184(sp)
	add	a1, a1, a2
	sw	a1, 0(s1)
	addi	a1, sp, 60
	blt	s2, s3, .LBB5_26
# %bb.25:
	addi	a1, sp, 68
.LBB5_26:
	lw	a4, 0(a1)
	ld	a1, 232(sp)
	ld	a2, 192(sp)
	slt	a3, s2, s3
	sw	a4, 0(a0)
	addi	a0, sp, 56
	blt	s2, s3, .LBB5_28
# %bb.27:
	addi	a0, sp, 64
.LBB5_28:
	lw	a0, 0(a0)
	sw	a0, 0(a2)
	sw	a3, 0(a1)
	ld	ra, 168(sp)                     # 8-byte Folded Reload
	ld	s0, 160(sp)                     # 8-byte Folded Reload
	ld	s1, 152(sp)                     # 8-byte Folded Reload
	ld	s2, 144(sp)                     # 8-byte Folded Reload
	ld	s3, 136(sp)                     # 8-byte Folded Reload
	ld	s4, 128(sp)                     # 8-byte Folded Reload
	ld	s5, 120(sp)                     # 8-byte Folded Reload
	ld	s6, 112(sp)                     # 8-byte Folded Reload
	ld	s7, 104(sp)                     # 8-byte Folded Reload
	ld	s8, 96(sp)                      # 8-byte Folded Reload
	ld	s9, 88(sp)                      # 8-byte Folded Reload
	ld	s10, 80(sp)                     # 8-byte Folded Reload
	ld	s11, 72(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 176
	ret
.LBB5_29:
	lui	a0, %hi(width)
	lw	t3, %lo(width)(a0)
	lui	a0, %hi(height)
	lw	t4, %lo(height)(a0)
	slliw	a3, t3, 1
	srai	t4, t4, 1
	li	t2, 8
	addi	t5, sp, 68
	addi	t6, sp, 64
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	mv	a2, s5
	ld	a4, 40(sp)                      # 8-byte Folded Reload
	mv	a5, s8
	ld	a6, 48(sp)                      # 8-byte Folded Reload
	mv	a7, s4
	call	fullsearch
	mv	s2, a0
	bnez	s9, .LBB5_15
.LBB5_30:
	lui	a0, %hi(width)
	lw	t3, %lo(width)(a0)
	lui	a0, %hi(height)
	lw	t4, %lo(height)(a0)
	slliw	a3, t3, 1
	srai	t4, t4, 1
	li	t2, 8
	addi	t5, sp, 60
	addi	t6, sp, 56
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	mv	a2, s5
	ld	a4, 40(sp)                      # 8-byte Folded Reload
	mv	a5, s8
	ld	a6, 48(sp)                      # 8-byte Folded Reload
	mv	a7, s4
	call	fullsearch
	lw	s0, 60(sp)
	lw	s7, 56(sp)
	mv	s3, a0
	ld	s1, 208(sp)
	mv	a0, s2
	blt	s2, s3, .LBB5_16
.LBB5_31:
	sw	s3, 0(s1)
	bge	s3, s2, .LBB5_17
	j	.LBB5_18
.LBB5_32:
	lui	a0, %hi(width)
	lw	t3, %lo(width)(a0)
	lui	a0, %hi(height)
	lw	t4, %lo(height)(a0)
	slliw	a2, t3, 4
	add	a2, s5, a2
	slliw	a3, t3, 1
	srai	t4, t4, 1
	li	t2, 8
	addi	t5, sp, 68
	addi	t6, sp, 64
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	ld	a4, 40(sp)                      # 8-byte Folded Reload
	mv	a5, s8
	ld	a6, 48(sp)                      # 8-byte Folded Reload
	mv	a7, s4
	call	fullsearch
	mv	s3, a0
	bnez	s9, .LBB5_22
.LBB5_33:
	lui	a0, %hi(width)
	lw	t3, %lo(width)(a0)
	lui	a0, %hi(height)
	lw	t4, %lo(height)(a0)
	slliw	a2, t3, 4
	add	a2, s5, a2
	slliw	a3, t3, 1
	srai	t4, t4, 1
	li	t2, 8
	addi	t5, sp, 60
	addi	t6, sp, 56
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	ld	a4, 40(sp)                      # 8-byte Folded Reload
	mv	a5, s8
	ld	a6, 48(sp)                      # 8-byte Folded Reload
	mv	a7, s4
	call	fullsearch
	mv	s2, a0
	lw	a1, 0(s1)
	mv	a2, s3
	bge	s3, a0, .LBB5_23
	j	.LBB5_24
.Lfunc_end5:
	.size	field_estimate, .Lfunc_end5-field_estimate
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
