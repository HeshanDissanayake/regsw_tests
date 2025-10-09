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
	addi	sp, sp, -928
	sd	ra, 920(sp)                     # 8-byte Folded Spill
	sd	s0, 912(sp)                     # 8-byte Folded Spill
	sd	s1, 904(sp)                     # 8-byte Folded Spill
	sd	s2, 896(sp)                     # 8-byte Folded Spill
	sd	s3, 888(sp)                     # 8-byte Folded Spill
	sd	s4, 880(sp)                     # 8-byte Folded Spill
	sd	s5, 872(sp)                     # 8-byte Folded Spill
	sd	s6, 864(sp)                     # 8-byte Folded Spill
	sd	s7, 856(sp)                     # 8-byte Folded Spill
	sd	s8, 848(sp)                     # 8-byte Folded Spill
	sd	s9, 840(sp)                     # 8-byte Folded Spill
	sd	s10, 832(sp)                    # 8-byte Folded Spill
	sd	s11, 824(sp)                    # 8-byte Folded Spill
	lui	t0, %hi(height2)
	lw	t0, %lo(height2)(t0)
	sd	a7, 288(sp)                     # 8-byte Folded Spill
	sd	a6, 280(sp)                     # 8-byte Folded Spill
	sd	a5, 112(sp)                     # 8-byte Folded Spill
	sd	a3, 312(sp)                     # 8-byte Folded Spill
	sd	a1, 232(sp)                     # 8-byte Folded Spill
	bgtz	t0, .LBB0_1
	j	.LBB0_276
.LBB0_1:
	mv	t2, a2
	mv	s0, a0
	sd	zero, 256(sp)                   # 8-byte Folded Spill
	sd	zero, 464(sp)                   # 8-byte Folded Spill
	ld	a0, 960(sp)
	sd	a0, 200(sp)                     # 8-byte Folded Spill
	ld	a0, 952(sp)
	sd	a0, 120(sp)                     # 8-byte Folded Spill
	ld	t3, 944(sp)
	ld	a0, 936(sp)
	sd	a0, 224(sp)                     # 8-byte Folded Spill
	ld	a0, 928(sp)
	sd	a0, 216(sp)                     # 8-byte Folded Spill
	lui	a0, %hi(width)
	lw	n3, %lo(width)(a0)
	addi	a0, a2, 16
	sd	a0, 408(sp)                     # 8-byte Folded Spill
	addi	a0, a4, 15
	sd	a0, 96(sp)                      # 8-byte Folded Spill
	addi	a0, a4, 7
	sd	a0, 88(sp)                      # 8-byte Folded Spill
	li	s10, 2
	li	t4, 1
	li	s9, 8
	lui	a0, 524288
	addi	a0, a0, -1
	sd	a0, 440(sp)                     # 8-byte Folded Spill
	lui	a0, 699051
	addi	a0, a0, -1365
	slli	a0, a0, 32
	sd	a0, 432(sp)                     # 8-byte Folded Spill
	li	a0, 9
	slli	a0, a0, 8
	sd	a0, 264(sp)                     # 8-byte Folded Spill
	sd	a4, 296(sp)                     # 8-byte Folded Spill
	sd	a2, 536(sp)                     # 8-byte Folded Spill
	sd	s0, 248(sp)                     # 8-byte Folded Spill
	j	.LBB0_4
.LBB0_2:                                #   in Loop: Header=BB0_4 Depth=1
	lui	a0, %hi(quiet)
	lw	a0, %lo(quiet)(a0)
	bnez	a0, .LBB0_3
	j	.LBB0_275
.LBB0_3:                                #   in Loop: Header=BB0_4 Depth=1
	lui	a0, %hi(height2)
	lw	a0, %lo(height2)(a0)
	ld	a2, 464(sp)                     # 8-byte Folded Reload
	addiw	a2, a2, 16
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	addi	a1, a1, 32
	sd	a1, 256(sp)                     # 8-byte Folded Spill
	sd	a2, 464(sp)                     # 8-byte Folded Spill
	blt	a2, a0, .LBB0_4
	j	.LBB0_276
.LBB0_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
                                        #       Child Loop BB0_16 Depth 3
                                        #       Child Loop BB0_20 Depth 3
                                        #         Child Loop BB0_21 Depth 4
                                        #       Child Loop BB0_24 Depth 3
                                        #         Child Loop BB0_25 Depth 4
                                        #       Child Loop BB0_28 Depth 3
                                        #         Child Loop BB0_29 Depth 4
                                        #       Child Loop BB0_74 Depth 3
                                        #         Child Loop BB0_75 Depth 4
                                        #       Child Loop BB0_78 Depth 3
                                        #         Child Loop BB0_79 Depth 4
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
                                        #       Child Loop BB0_52 Depth 3
                                        #         Child Loop BB0_53 Depth 4
                                        #       Child Loop BB0_165 Depth 3
                                        #         Child Loop BB0_166 Depth 4
                                        #       Child Loop BB0_169 Depth 3
                                        #         Child Loop BB0_170 Depth 4
                                        #       Child Loop BB0_173 Depth 3
                                        #         Child Loop BB0_174 Depth 4
                                        #       Child Loop BB0_210 Depth 3
                                        #         Child Loop BB0_211 Depth 4
                                        #       Child Loop BB0_214 Depth 3
                                        #         Child Loop BB0_215 Depth 4
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
                                        #       Child Loop BB0_195 Depth 3
                                        #         Child Loop BB0_196 Depth 4
                                        #       Child Loop BB0_199 Depth 3
                                        #         Child Loop BB0_200 Depth 4
                                        #       Child Loop BB0_63 Depth 3
	blez	n3, .LBB0_2
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	sd	zero, 424(sp)                   # 8-byte Folded Spill
	li	a5, 0
	ld	a0, 464(sp)                     # 8-byte Folded Reload
	slli	a1, a0, 1
	sd	a1, 208(sp)                     # 8-byte Folded Spill
	ori	a1, a1, 16
	sd	a1, 104(sp)                     # 8-byte Folded Spill
	addi	a1, a0, -1
	sd	a1, 400(sp)                     # 8-byte Folded Spill
	ori	a0, a0, 1
	sd	a0, 392(sp)                     # 8-byte Folded Spill
	li	a0, -1
	sd	a0, 416(sp)                     # 8-byte Folded Spill
	li	t5, 1
	ld	t6, 88(sp)                      # 8-byte Folded Reload
	mv	n1, t2
	ld	n2, 96(sp)                      # 8-byte Folded Reload
	sd	a4, 376(sp)                     # 8-byte Folded Spill
	j	.LBB0_9
.LBB0_6:                                #   in Loop: Header=BB0_9 Depth=2
	sw	t4, 0(t3)
	ld	a6, 368(sp)                     # 8-byte Folded Reload
.LBB0_7:                                #   in Loop: Header=BB0_9 Depth=2
	sw	a3, 88(t3)
.LBB0_8:                                #   in Loop: Header=BB0_9 Depth=2
	addi	t3, t3, 96
	addiw	a0, a6, 16
	addi	a5, a6, 16
	lui	a2, %hi(width)
	lw	n3, %lo(width)(a2)
	ld	a2, 416(sp)                     # 8-byte Folded Reload
	addi	a2, a2, 32
	sd	a2, 416(sp)                     # 8-byte Folded Spill
	ld	a2, 376(sp)                     # 8-byte Folded Reload
	addi	a2, a2, 16
	sd	a2, 376(sp)                     # 8-byte Folded Spill
	ld	a2, 424(sp)                     # 8-byte Folded Reload
	addi	a2, a2, 32
	sd	a2, 424(sp)                     # 8-byte Folded Spill
	addi	t5, t5, 32
	addi	n2, n2, 16
	addi	n1, n1, 16
	addi	t6, t6, 16
	bge	a0, n3, .LBB0_2
.LBB0_9:                                #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_16 Depth 3
                                        #       Child Loop BB0_20 Depth 3
                                        #         Child Loop BB0_21 Depth 4
                                        #       Child Loop BB0_24 Depth 3
                                        #         Child Loop BB0_25 Depth 4
                                        #       Child Loop BB0_28 Depth 3
                                        #         Child Loop BB0_29 Depth 4
                                        #       Child Loop BB0_74 Depth 3
                                        #         Child Loop BB0_75 Depth 4
                                        #       Child Loop BB0_78 Depth 3
                                        #         Child Loop BB0_79 Depth 4
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
                                        #       Child Loop BB0_52 Depth 3
                                        #         Child Loop BB0_53 Depth 4
                                        #       Child Loop BB0_165 Depth 3
                                        #         Child Loop BB0_166 Depth 4
                                        #       Child Loop BB0_169 Depth 3
                                        #         Child Loop BB0_170 Depth 4
                                        #       Child Loop BB0_173 Depth 3
                                        #         Child Loop BB0_174 Depth 4
                                        #       Child Loop BB0_210 Depth 3
                                        #         Child Loop BB0_211 Depth 4
                                        #       Child Loop BB0_214 Depth 3
                                        #         Child Loop BB0_215 Depth 4
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
                                        #       Child Loop BB0_195 Depth 3
                                        #         Child Loop BB0_196 Depth 4
                                        #       Child Loop BB0_199 Depth 3
                                        #         Child Loop BB0_200 Depth 4
                                        #       Child Loop BB0_63 Depth 3
	lui	a0, %hi(pict_struct)
	lw	s1, %lo(pict_struct)(a0)
	li	a0, 3
	sd	a5, 368(sp)                     # 8-byte Folded Spill
	bne	s1, a0, .LBB0_15
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=2
	li	t0, 0
	li	a3, 0
	add	a0, a4, a5
	ld	a1, 464(sp)                     # 8-byte Folded Reload
	mulw	n4, n3, a1
	add	a2, a0, n4
	li	a0, 16
	mv	a1, n2
.LBB0_11:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add	t1, a1, n4
	lbu	a5, -15(t1)
	add	a3, a3, a5
	lbu	a6, -14(t1)
	lbu	a7, -13(t1)
	mul	a5, a5, a5
	add	t0, a5, t0
	mul	a5, a6, a6
	add	a6, a6, a7
	add	a3, a3, a6
	mul	a6, a7, a7
	lbu	a7, -12(t1)
	add	a5, a5, a6
	lbu	a6, -11(t1)
	add	n5, t0, a5
	mul	a5, a7, a7
	lbu	t0, -10(t1)
	add	a7, a7, a6
	mul	a6, a6, a6
	add	a5, a5, a6
	add	a7, a7, t0
	add	a3, a3, a7
	mul	a6, t0, t0
	lbu	a7, -9(t1)
	lbu	t0, -8(t1)
	add	a5, a5, a6
	add	n5, n5, a5
	mul	a5, a7, a7
	add	a7, a7, t0
	lbu	a6, -7(t1)
	mul	t0, t0, t0
	add	a5, a5, t0
	lbu	t0, -6(t1)
	add	a7, a7, a6
	mul	a6, a6, a6
	add	a5, a5, a6
	add	a7, a7, t0
	add	a3, a3, a7
	mul	a6, t0, t0
	lbu	a7, -5(t1)
	add	a5, a5, a6
	lbu	a6, -4(t1)
	add	n5, n5, a5
	mul	a5, a7, a7
	lbu	t0, -3(t1)
	add	a7, a7, a6
	mul	a6, a6, a6
	add	a5, a5, a6
	add	a7, a7, t0
	lbu	a6, -2(t1)
	mul	t0, t0, t0
	add	a5, a5, t0
	lbu	t0, -1(t1)
	add	a7, a7, a6
	mul	a6, a6, a6
	add	a5, a5, a6
	add	a7, a7, t0
	add	a3, a3, a7
	lbu	a7, 0(t1)
	mul	a6, t0, t0
	add	a5, a5, a6
	add	t0, n5, a5
	add	a3, a3, a7
	mul	a5, a7, a7
	add	t0, t0, a5
	addiw	a0, a0, -1
	add	a1, a1, n3
	bnez	a0, .LBB0_11
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=2
	sd	n4, 304(sp)                     # 8-byte Folded Spill
	lui	a0, %hi(pict_type)
	lw	a0, %lo(pict_type)(a0)
	mul	a1, a3, a3
	srliw	a1, a1, 8
	subw	s3, t0, a1
	beq	a0, s10, .LBB0_41
# %bb.13:                               #   in Loop: Header=BB0_9 Depth=2
	bne	a0, t4, .LBB0_50
# %bb.14:                               #   in Loop: Header=BB0_9 Depth=2
	sw	t4, 0(t3)
	sw	s3, 88(t3)
	ld	a6, 368(sp)                     # 8-byte Folded Reload
	j	.LBB0_8
.LBB0_15:                               #   in Loop: Header=BB0_9 Depth=2
	li	a2, 0
	li	a3, 0
	slliw	s11, n3, 1
	add	a0, a4, a5
	ld	a1, 464(sp)                     # 8-byte Folded Reload
	mulw	n4, s11, a1
	add	a0, a0, n4
	addi	a1, s1, -2
	snez	a1, a1
	addi	a1, a1, -1
	and	s4, a1, n3
	add	s7, a0, s4
	ld	a0, 256(sp)                     # 8-byte Folded Reload
	mulw	s6, a0, n3
	add	a0, a5, s6
	add	a0, s4, a0
	li	a1, 16
.LBB0_16:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add	t1, a4, a0
	lbu	a5, 0(t1)
	add	a3, a3, a5
	lbu	a6, 1(t1)
	lbu	a7, 2(t1)
	mul	a5, a5, a5
	add	a2, a5, a2
	mul	a5, a6, a6
	add	a6, a6, a7
	add	a3, a3, a6
	mul	a6, a7, a7
	lbu	a7, 3(t1)
	add	a5, a5, a6
	lbu	a6, 4(t1)
	add	a2, a2, a5
	mul	a5, a7, a7
	lbu	t0, 5(t1)
	add	a7, a7, a6
	mul	a6, a6, a6
	add	a5, a5, a6
	add	a7, a7, t0
	add	a3, a3, a7
	mul	a6, t0, t0
	lbu	a7, 6(t1)
	lbu	t0, 7(t1)
	add	a5, a5, a6
	add	a2, a2, a5
	mul	a5, a7, a7
	add	a7, a7, t0
	lbu	a6, 8(t1)
	mul	t0, t0, t0
	add	a5, a5, t0
	lbu	t0, 9(t1)
	add	a7, a7, a6
	mul	a6, a6, a6
	add	a5, a5, a6
	add	a7, a7, t0
	add	a3, a3, a7
	mul	a6, t0, t0
	lbu	a7, 10(t1)
	add	a5, a5, a6
	lbu	a6, 11(t1)
	add	a2, a2, a5
	mul	a5, a7, a7
	lbu	t0, 12(t1)
	add	a7, a7, a6
	mul	a6, a6, a6
	add	a5, a5, a6
	add	a7, a7, t0
	lbu	a6, 13(t1)
	mul	t0, t0, t0
	add	a5, a5, t0
	lbu	t0, 14(t1)
	add	a7, a7, a6
	mul	a6, a6, a6
	add	a5, a5, a6
	add	a7, a7, t0
	add	a3, a3, a7
	lbu	a7, 15(t1)
	mul	a6, t0, t0
	add	a5, a5, a6
	add	a2, a2, a5
	add	a3, a3, a7
	mul	a5, a7, a7
	add	a2, a2, a5
	addiw	a1, a1, -1
	add	a0, a0, s11
	bnez	a1, .LBB0_16
# %bb.17:                               #   in Loop: Header=BB0_9 Depth=2
	lui	a0, %hi(pict_type)
	lw	a0, %lo(pict_type)(a0)
	mul	a1, a3, a3
	srliw	a1, a1, 8
	subw	a3, a2, a1
	beq	a0, s10, .LBB0_47
# %bb.18:                               #   in Loop: Header=BB0_9 Depth=2
	beq	a0, t4, .LBB0_6
# %bb.19:                               #   in Loop: Header=BB0_9 Depth=2
	sd	a3, 656(sp)                     # 8-byte Folded Spill
	sd	n2, 320(sp)                     # 8-byte Folded Spill
	sd	n1, 336(sp)                     # 8-byte Folded Spill
	sd	t6, 328(sp)                     # 8-byte Folded Spill
	sd	t5, 344(sp)                     # 8-byte Folded Spill
	sd	t3, 352(sp)                     # 8-byte Folded Spill
	add	a2, s0, n3
	add	a3, t2, n3
	sd	s7, 664(sp)                     # 8-byte Folded Spill
	addi	s7, sp, 732
	sd	s7, 80(sp)
	addi	s5, sp, 736
	sd	s5, 72(sp)
	addi	s8, sp, 740
	sd	s8, 64(sp)
	addi	a0, sp, 788
	sd	a0, 56(sp)
	addi	a0, sp, 792
	sd	a0, 48(sp)
	addi	a0, sp, 796
	sd	a0, 40(sp)
	addi	a0, sp, 800
	sd	a0, 32(sp)
	addi	a0, sp, 804
	sd	a0, 24(sp)
	addi	a0, sp, 808
	sd	a0, 16(sp)
	addi	a0, sp, 812
	sd	a0, 8(sp)
	mv	a0, s0
	lw	s0, 368(sp)                     # 8-byte Folded Reload
	addi	t4, sp, 688
	addi	t5, sp, 672
	addi	t6, sp, 820
	addi	a1, sp, 816
	sd	a1, 0(sp)
	mv	a1, t2
	ld	a4, 664(sp)                     # 8-byte Folded Reload
	mv	a5, s0
	ld	s3, 464(sp)                     # 8-byte Folded Reload
	mv	a6, s3
	ld	a7, 280(sp)                     # 8-byte Folded Reload
	mv	s2, t2
	ld	t2, 288(sp)                     # 8-byte Folded Reload
	li	t3, 0
	mv	s10, n3
	call	field_estimate
	ld	a0, 232(sp)                     # 8-byte Folded Reload
	add	a2, a0, s10
	ld	s1, 312(sp)                     # 8-byte Folded Reload
	add	a3, s1, s10
	sd	s7, 80(sp)
	ld	s7, 664(sp)                     # 8-byte Folded Reload
	sd	s5, 72(sp)
	sd	s8, 64(sp)
	addi	a1, sp, 744
	sd	a1, 56(sp)
	addi	a1, sp, 748
	sd	a1, 48(sp)
	addi	a1, sp, 752
	sd	a1, 40(sp)
	addi	a1, sp, 756
	sd	a1, 32(sp)
	addi	a1, sp, 760
	sd	a1, 24(sp)
	addi	a1, sp, 764
	sd	a1, 16(sp)
	addi	a1, sp, 768
	sd	a1, 8(sp)
	addi	t4, sp, 784
	addi	t5, sp, 780
	addi	t6, sp, 776
	addi	a1, sp, 772
	sd	a1, 0(sp)
	mv	a1, s1
	mv	a4, s7
	mv	a5, s0
	mv	a6, s3
	ld	a7, 216(sp)                     # 8-byte Folded Reload
	ld	t2, 224(sp)                     # 8-byte Folded Reload
	li	t3, 0
	call	field_estimate
	mv	n4, s10
	lw	a1, 796(sp)
	li	t0, 0
	li	a0, 0
	li	t1, 0
	sd	a1, 544(sp)                     # 8-byte Folded Spill
	seqz	a1, a1
	lwu	a5, 688(sp)
	lw	a4, 672(sp)
	sd	a1, 648(sp)                     # 8-byte Folded Spill
	addiw	a1, a1, -1
	and	a1, a1, s10
	sraiw	a6, a5, 1
	srli	a2, a4, 1
	mulw	a2, a2, s11
	lw	a3, 752(sp)
	sd	a6, 640(sp)                     # 8-byte Folded Spill
	sd	a2, 632(sp)                     # 8-byte Folded Spill
	add	a2, a6, a2
	add	n12, a1, a2
	add	t2, n12, s2
	sd	a3, 528(sp)                     # 8-byte Folded Spill
	seqz	a1, a3
	lwu	a3, 784(sp)
	lw	a7, 780(sp)
	sd	a1, 624(sp)                     # 8-byte Folded Spill
	addiw	a1, a1, -1
	and	a1, a1, s10
	sraiw	a6, a3, 1
	srli	a2, a7, 1
	mulw	a2, a2, s11
	sd	a6, 616(sp)                     # 8-byte Folded Spill
	sd	a2, 608(sp)                     # 8-byte Folded Spill
	add	a2, a6, a2
	add	a2, a1, a2
	add	t3, a2, s1
	sd	a5, 512(sp)                     # 8-byte Folded Spill
	andi	a6, a5, 1
	sd	a4, 520(sp)                     # 8-byte Folded Spill
	andi	a4, a4, 1
	sd	a3, 496(sp)                     # 8-byte Folded Spill
	andi	a3, a3, 1
	sd	a7, 504(sp)                     # 8-byte Folded Spill
	andi	a1, a7, 1
	sd	a1, 144(sp)                     # 8-byte Folded Spill
	mulw	a5, a1, s11
	sd	a4, 176(sp)                     # 8-byte Folded Spill
	mulw	n9, a4, s11
	addiw	a1, s11, -16
	addi	s8, a1, 16
	sd	a5, 592(sp)                     # 8-byte Folded Spill
	add	a2, a2, a5
	add	n5, s1, a3
	add	n5, n5, a2
	add	n6, s1, a2
	add	n7, t3, a3
	sd	n9, 600(sp)                     # 8-byte Folded Spill
	add	n9, n12, n9
	add	n8, s2, a6
	add	n8, n8, n9
	add	n9, s2, n9
	add	n10, t2, a6
	add	a2, s4, s6
	ld	n11, 376(sp)                    # 8-byte Folded Reload
	add	n11, n11, a2
	ld	a1, 408(sp)                     # 8-byte Folded Reload
	add	n12, a1, n12
.LBB0_20:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_21 Depth 4
	mv	n13, n11
	mv	n1, t3
	mv	a7, n10
	mv	n14, n9
	mv	t4, n8
	mv	t5, n7
	mv	t6, n6
	mv	a5, n5
	mv	n2, t2
.LBB0_21:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_20 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add	n3, n2, t0
	add	n15, a5, t0
	add	n16, t6, t0
	add	n17, t5, t0
	add	n18, t4, t0
	add	n19, n14, t0
	add	n20, a7, t0
	lbu	n3, 0(n3)
	lbu	n20, 0(n20)
	lbu	n19, 0(n19)
	lbu	n18, 0(n18)
	add	n21, n1, t0
	add	n22, n13, t0
	add	n3, n3, n20
	add	n18, n19, n18
	add	n3, n3, n18
	lbu	n18, 0(n21)
	lbu	n17, 0(n17)
	lbu	n16, 0(n16)
	lbu	n15, 0(n15)
	addi	n3, n3, 2
	srli	n3, n3, 2
	add	n17, n18, n17
	add	n15, n16, n15
	add	n15, n17, n15
	addi	n15, n15, 2
	srli	n15, n15, 2
	lbu	n16, 0(n22)
	add	n3, n3, n15
	addi	n3, n3, 1
	srli	n3, n3, 1
	sub	n3, n3, n16
	sraiw	n15, n3, 31
	xor	n3, n3, n15
	subw	a0, n15, a0
	subw	a0, n3, a0
	addi	n2, n2, 1
	addi	a5, a5, 1
	addi	t6, t6, 1
	addi	t5, t5, 1
	addi	t4, t4, 1
	addi	n14, n14, 1
	addi	a7, a7, 1
	addi	n1, n1, 1
	addi	n13, n13, 1
	bne	n2, n12, .LBB0_21
# %bb.22:                               #   in Loop: Header=BB0_20 Depth=3
	addiw	t1, t1, 1
	add	t0, t0, s8
	li	a1, 16
	bne	t1, a1, .LBB0_20
# %bb.23:                               #   in Loop: Header=BB0_9 Depth=2
	lw	a1, 792(sp)
	li	n15, 0
	li	n16, 0
	li	n17, 0
	sd	a1, 488(sp)                     # 8-byte Folded Spill
	seqz	n9, a1
	lwu	t2, 820(sp)
	lw	t1, 816(sp)
	sd	n9, 160(sp)                     # 8-byte Folded Spill
	addiw	n9, n9, -1
	and	a5, n9, n4
	sraiw	a4, t2, 1
	srli	a7, t1, 1
	mulw	n6, a7, s11
	lw	a1, 748(sp)
	sd	a4, 584(sp)                     # 8-byte Folded Spill
	add	a7, a4, n6
	add	a5, a5, a7
	ld	a4, 536(sp)                     # 8-byte Folded Reload
	add	n18, a5, a4
	sd	a1, 480(sp)                     # 8-byte Folded Spill
	seqz	n11, a1
	lwu	t3, 776(sp)
	lw	a1, 772(sp)
	sd	n11, 128(sp)                    # 8-byte Folded Spill
	addiw	n11, n11, -1
	and	a7, n11, n4
	sraiw	t4, t3, 1
	srli	t0, a1, 1
	mulw	n8, t0, s11
	sd	t4, 568(sp)                     # 8-byte Folded Spill
	add	t0, t4, n8
	add	a7, a7, t0
	ld	n21, 312(sp)                    # 8-byte Folded Reload
	add	n19, a7, n21
	sd	t2, 456(sp)                     # 8-byte Folded Spill
	andi	t0, t2, 1
	sd	t1, 472(sp)                     # 8-byte Folded Spill
	andi	t2, t1, 1
	sd	t3, 384(sp)                     # 8-byte Folded Spill
	andi	t1, t3, 1
	sd	a1, 448(sp)                     # 8-byte Folded Spill
	andi	a1, a1, 1
	sd	a1, 136(sp)                     # 8-byte Folded Spill
	mulw	n13, a1, s11
	sd	t2, 152(sp)                     # 8-byte Folded Spill
	mulw	n12, t2, s11
	add	a7, a7, n13
	add	n20, n21, t1
	add	n20, n20, a7
	add	n21, n21, a7
	add	n22, n19, t1
	add	n24, a5, n12
	add	n23, a4, t0
	add	n23, n23, n24
	add	n24, a4, n24
	add	n25, n18, t0
	ld	n26, 376(sp)                    # 8-byte Folded Reload
	add	n26, n26, a2
	ld	n27, 408(sp)                    # 8-byte Folded Reload
	add	n27, n27, a5
.LBB0_24:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_25 Depth 4
	mv	n28, n26
	mv	n1, n19
	mv	a7, n25
	mv	n29, n24
	mv	t4, n23
	mv	t5, n22
	mv	t6, n21
	mv	a5, n20
	mv	n2, n18
.LBB0_25:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_24 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add	n3, n2, n15
	add	n30, a5, n15
	add	n31, t6, n15
	add	s0, t5, n15
	add	s1, t4, n15
	add	s2, n29, n15
	add	s3, a7, n15
	lbu	n3, 0(n3)
	lbu	s3, 0(s3)
	lbu	s2, 0(s2)
	lbu	s1, 0(s1)
	add	s4, n1, n15
	add	s5, n28, n15
	add	n3, n3, s3
	add	s1, s2, s1
	add	n3, n3, s1
	lbu	s1, 0(s4)
	lbu	s0, 0(s0)
	lbu	n31, 0(n31)
	lbu	n30, 0(n30)
	addi	n3, n3, 2
	srli	n3, n3, 2
	add	s0, s1, s0
	add	n30, n31, n30
	add	n30, s0, n30
	addi	n30, n30, 2
	srli	n30, n30, 2
	lbu	n31, 0(s5)
	add	n3, n3, n30
	addi	n3, n3, 1
	srli	n3, n3, 1
	sub	n3, n3, n31
	sraiw	n30, n3, 31
	xor	n3, n3, n30
	subw	n16, n30, n16
	subw	n16, n3, n16
	addi	n2, n2, 1
	addi	a5, a5, 1
	addi	t6, t6, 1
	addi	t5, t5, 1
	addi	t4, t4, 1
	addi	n29, n29, 1
	addi	a7, a7, 1
	addi	n1, n1, 1
	addi	n28, n28, 1
	bne	n2, n27, .LBB0_25
# %bb.26:                               #   in Loop: Header=BB0_24 Depth=3
	addiw	n17, n17, 1
	add	n15, n15, s8
	bne	n17, s9, .LBB0_24
# %bb.27:                               #   in Loop: Header=BB0_9 Depth=2
	lw	a1, 788(sp)
	li	t3, 0
	li	n21, 0
	li	n23, 0
	sd	a1, 360(sp)                     # 8-byte Folded Spill
	seqz	s4, a1
	lwu	s0, 812(sp)
	lw	t2, 808(sp)
	addiw	n15, s4, -1
	and	a5, n15, n4
	sraiw	t4, s0, 1
	srli	a7, t2, 1
	mulw	s6, a7, s11
	lw	a1, 744(sp)
	sd	t4, 576(sp)                     # 8-byte Folded Spill
	add	a7, t4, s6
	add	ra, a5, a7
	add	n3, ra, a4
	sd	a1, 304(sp)                     # 8-byte Folded Spill
	seqz	s5, a1
	lwu	t4, 768(sp)
	lw	s1, 764(sp)
	addiw	n17, s5, -1
	and	a5, n17, n4
	sraiw	a1, t4, 1
	srli	a7, s1, 1
	mulw	a7, a7, s11
	sd	a1, 560(sp)                     # 8-byte Folded Spill
	sd	a7, 552(sp)                     # 8-byte Folded Spill
	add	a7, a1, a7
	add	a5, a5, a7
	ld	a1, 312(sp)                     # 8-byte Folded Reload
	add	t6, a5, a1
	slliw	n1, n4, 4
	add	s7, s7, n1
	sd	s7, 168(sp)                     # 8-byte Folded Spill
	sd	s0, 240(sp)                     # 8-byte Folded Spill
	andi	s0, s0, 1
	sd	t2, 272(sp)                     # 8-byte Folded Spill
	andi	s7, t2, 1
	sd	t4, 184(sp)                     # 8-byte Folded Spill
	andi	s2, t4, 1
	sd	s1, 192(sp)                     # 8-byte Folded Spill
	andi	s1, s1, 1
	mulw	n19, s1, s11
	mulw	n18, s7, s11
	add	a5, a5, n19
	add	n2, a1, s2
	add	n2, n2, a5
	add	a5, a1, a5
	add	a7, t6, s2
	add	t4, ra, n18
	add	t5, a4, s0
	add	t5, t5, t4
	add	t4, a4, t4
	add	n31, n3, s0
	add	n1, a2, n1
	ld	n20, 376(sp)                    # 8-byte Folded Reload
	add	n20, n20, n1
	ld	a1, 408(sp)                     # 8-byte Folded Reload
	add	ra, a1, ra
.LBB0_28:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_29 Depth 4
	mv	s10, n20
	mv	n25, t6
	mv	s3, n31
	mv	n30, t4
	mv	n29, t5
	mv	n28, a7
	mv	n27, a5
	mv	n26, n2
	mv	n24, n3
.LBB0_29:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_28 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add	n22, n24, t3
	add	n7, n26, t3
	add	n10, n27, t3
	add	n14, n28, t3
	add	a1, n29, t3
	add	a4, n30, t3
	add	n4, s3, t3
	lbu	n22, 0(n22)
	lbu	n4, 0(n4)
	lbu	a4, 0(a4)
	lbu	a1, 0(a1)
	add	t2, n25, t3
	add	n5, s10, t3
	add	n4, n22, n4
	add	a1, a4, a1
	add	a1, n4, a1
	lbu	a4, 0(t2)
	lbu	t2, 0(n14)
	lbu	n4, 0(n10)
	lbu	n7, 0(n7)
	addi	a1, a1, 2
	srli	a1, a1, 2
	add	a4, a4, t2
	add	n4, n4, n7
	add	a4, a4, n4
	addi	a4, a4, 2
	srli	a4, a4, 2
	lbu	t2, 0(n5)
	add	a1, a1, a4
	addi	a1, a1, 1
	srli	a1, a1, 1
	sub	a1, a1, t2
	sraiw	a4, a1, 31
	xor	a1, a1, a4
	subw	a4, a4, n21
	subw	n21, a1, a4
	addi	n24, n24, 1
	addi	n26, n26, 1
	addi	n27, n27, 1
	addi	n28, n28, 1
	addi	n29, n29, 1
	addi	n30, n30, 1
	addi	s3, s3, 1
	addi	n25, n25, 1
	addi	s10, s10, 1
	bne	n24, ra, .LBB0_29
# %bb.30:                               #   in Loop: Header=BB0_28 Depth=3
	addiw	n23, n23, 1
	add	t3, t3, s8
	bne	n23, s9, .LBB0_28
# %bb.31:                               #   in Loop: Header=BB0_9 Depth=2
	lw	t5, 804(sp)
	lw	t4, 800(sp)
	lw	a5, 760(sp)
	lw	a7, 756(sp)
	addw	t6, n21, n16
	bge	a0, t6, .LBB0_69
# %bb.32:                               #   in Loop: Header=BB0_9 Depth=2
	bge	a0, t5, .LBB0_69
# %bb.33:                               #   in Loop: Header=BB0_9 Depth=2
	bge	a0, t4, .LBB0_69
# %bb.34:                               #   in Loop: Header=BB0_9 Depth=2
	bge	a0, a5, .LBB0_69
# %bb.35:                               #   in Loop: Header=BB0_9 Depth=2
	bge	a0, a7, .LBB0_69
# %bb.36:                               #   in Loop: Header=BB0_9 Depth=2
	li	a0, 1
	slli	a0, a0, 32
	addi	a0, a0, 12
	ld	a1, 352(sp)                     # 8-byte Folded Reload
	sd	a0, 0(a1)
	lui	a0, %hi(width)
	lw	a1, %lo(width)(a0)
	li	a4, 0
	li	a0, 0
	li	a7, 0
	ld	a5, 648(sp)                     # 8-byte Folded Reload
	addi	a5, a5, -1
	and	a5, a5, a1
	ld	t0, 640(sp)                     # 8-byte Folded Reload
	ld	t1, 632(sp)                     # 8-byte Folded Reload
	add	t0, t0, t1
	add	t5, a5, t0
	ld	t6, 536(sp)                     # 8-byte Folded Reload
	add	t0, t5, t6
	ld	a5, 624(sp)                     # 8-byte Folded Reload
	addi	a5, a5, -1
	and	a1, a5, a1
	ld	a5, 616(sp)                     # 8-byte Folded Reload
	ld	t1, 608(sp)                     # 8-byte Folded Reload
	add	a5, a5, t1
	add	a1, a1, a5
	ld	t2, 312(sp)                     # 8-byte Folded Reload
	add	a5, a1, t2
	ld	t1, 592(sp)                     # 8-byte Folded Reload
	add	a1, a1, t1
	add	t1, t2, a3
	add	t1, t1, a1
	add	t2, t2, a1
	add	a3, a5, a3
	ld	t4, 600(sp)                     # 8-byte Folded Reload
	add	t4, t5, t4
	add	t3, t6, a6
	add	t3, t3, t4
	add	t4, t6, t4
	add	a6, t0, a6
	ld	a1, 376(sp)                     # 8-byte Folded Reload
	add	a2, a1, a2
	ld	a1, 408(sp)                     # 8-byte Folded Reload
	add	t5, a1, t5
	ld	s0, 248(sp)                     # 8-byte Folded Reload
	li	s10, 2
.LBB0_37:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_38 Depth 4
	mv	t6, a2
	mv	n1, a5
	mv	n2, a6
	mv	n3, t4
	mv	n4, t3
	mv	n5, a3
	mv	n6, t2
	mv	n7, t1
	mv	n8, t0
.LBB0_38:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_37 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add	a1, n8, a4
	add	n9, n7, a4
	add	n10, n6, a4
	add	n11, n5, a4
	add	n12, n4, a4
	add	n13, n3, a4
	add	n14, n2, a4
	lbu	a1, 0(a1)
	lbu	n14, 0(n14)
	lbu	n13, 0(n13)
	lbu	n12, 0(n12)
	add	n15, n1, a4
	add	n16, t6, a4
	add	a1, a1, n14
	add	n12, n13, n12
	add	a1, a1, n12
	lbu	n12, 0(n15)
	lbu	n11, 0(n11)
	lbu	n10, 0(n10)
	lbu	n9, 0(n9)
	addi	a1, a1, 2
	srli	a1, a1, 2
	add	n11, n12, n11
	add	n9, n10, n9
	add	n9, n11, n9
	addi	n9, n9, 2
	srli	n9, n9, 2
	lbu	n10, 0(n16)
	add	a1, a1, n9
	addi	a1, a1, 1
	srli	a1, a1, 1
	subw	a1, a1, n10
	mul	a1, a1, a1
	addw	a0, a1, a0
	addi	n8, n8, 1
	addi	n7, n7, 1
	addi	n6, n6, 1
	addi	n5, n5, 1
	addi	n4, n4, 1
	addi	n3, n3, 1
	addi	n2, n2, 1
	addi	n1, n1, 1
	addi	t6, t6, 1
	bne	n8, t5, .LBB0_38
# %bb.39:                               #   in Loop: Header=BB0_37 Depth=3
	addiw	a7, a7, 1
	add	a4, a4, s8
	li	a1, 16
	bne	a7, a1, .LBB0_37
# %bb.40:                               #   in Loop: Header=BB0_9 Depth=2
	li	s1, 1
	j	.LBB0_257
.LBB0_41:                               #   in Loop: Header=BB0_9 Depth=2
	sd	n2, 320(sp)                     # 8-byte Folded Spill
	sd	n1, 336(sp)                     # 8-byte Folded Spill
	sd	t6, 328(sp)                     # 8-byte Folded Spill
	sd	t5, 344(sp)                     # 8-byte Folded Spill
	sd	t3, 352(sp)                     # 8-byte Folded Spill
	lui	a0, %hi(frame_pred_dct)
	lw	a0, %lo(frame_pred_dct)(a0)
	sd	n3, 272(sp)                     # 8-byte Folded Spill
	beqz	a0, .LBB0_82
# %bb.42:                               #   in Loop: Header=BB0_9 Depth=2
	lui	a0, %hi(height)
	lw	t4, %lo(height)(a0)
	lw	a4, 368(sp)                     # 8-byte Folded Reload
	li	t2, 16
	addi	t5, sp, 820
	addi	t6, sp, 816
	mv	a0, s0
	ld	s0, 536(sp)                     # 8-byte Folded Reload
	mv	a1, s0
	mv	a3, n3
	ld	a5, 464(sp)                     # 8-byte Folded Reload
	ld	a6, 280(sp)                     # 8-byte Folded Reload
	ld	a7, 288(sp)                     # 8-byte Folded Reload
	mv	t3, n3
	mv	s1, n3
	mv	s2, a2
	call	fullsearch
	lw	a3, 820(sp)
	lw	a4, 816(sp)
	srai	a0, a3, 1
	add	a0, s0, a0
	srli	a1, a4, 1
	mulw	a1, a1, s1
	add	a0, a0, a1
	andi	a3, a3, 1
	andi	a4, a4, 1
	li	a5, 16
	mv	a1, s2
	mv	a2, s1
	call	dist2
	mv	n28, a0
	li	s2, 2
	ld	t3, 352(sp)                     # 8-byte Folded Reload
	sw	s2, 4(t3)
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
.LBB0_43:                               #   in Loop: Header=BB0_9 Depth=2
	li	t4, 1
.LBB0_44:                               #   in Loop: Header=BB0_9 Depth=2
	ld	t5, 344(sp)                     # 8-byte Folded Reload
	ld	t6, 328(sp)                     # 8-byte Folded Reload
	ld	n1, 336(sp)                     # 8-byte Folded Reload
	ld	n2, 320(sp)                     # 8-byte Folded Reload
	bge	s3, n28, .LBB0_62
# %bb.45:                               #   in Loop: Header=BB0_9 Depth=2
	ld	a0, 264(sp)                     # 8-byte Folded Reload
	blt	n28, a0, .LBB0_62
# %bb.46:                               #   in Loop: Header=BB0_9 Depth=2
	sw	t4, 0(t3)
	sw	s3, 88(t3)
	ld	a4, 296(sp)                     # 8-byte Folded Reload
	ld	t2, 536(sp)                     # 8-byte Folded Reload
	ld	s0, 248(sp)                     # 8-byte Folded Reload
	ld	a6, 368(sp)                     # 8-byte Folded Reload
	j	.LBB0_8
.LBB0_47:                               #   in Loop: Header=BB0_9 Depth=2
	add	a2, s0, n3
	add	a0, t2, n3
	sd	a0, 648(sp)                     # 8-byte Folded Spill
	ld	a0, 120(sp)                     # 8-byte Folded Reload
	sd	t3, 352(sp)                     # 8-byte Folded Spill
	sd	t5, 344(sp)                     # 8-byte Folded Spill
	sd	t6, 328(sp)                     # 8-byte Folded Spill
	sd	n1, 336(sp)                     # 8-byte Folded Spill
	sd	n2, 320(sp)                     # 8-byte Folded Spill
	sd	a3, 656(sp)                     # 8-byte Folded Spill
	sd	n4, 624(sp)                     # 8-byte Folded Spill
	beqz	a0, .LBB0_121
# %bb.48:                               #   in Loop: Header=BB0_9 Depth=2
	ld	a3, 112(sp)                     # 8-byte Folded Reload
	mv	a0, a4
	ld	a5, 368(sp)                     # 8-byte Folded Reload
	bne	s1, t4, .LBB0_122
# %bb.49:                               #   in Loop: Header=BB0_9 Depth=2
	add	a2, a4, n3
	ld	a0, 112(sp)                     # 8-byte Folded Reload
	add	a0, a0, n3
	sd	a0, 648(sp)                     # 8-byte Folded Spill
	mv	a3, t2
	mv	a0, s0
	j	.LBB0_122
.LBB0_50:                               #   in Loop: Header=BB0_9 Depth=2
	sd	s3, 240(sp)                     # 8-byte Folded Spill
	sd	n2, 320(sp)                     # 8-byte Folded Spill
	sd	n1, 336(sp)                     # 8-byte Folded Spill
	sd	t6, 328(sp)                     # 8-byte Folded Spill
	sd	t5, 344(sp)                     # 8-byte Folded Spill
	sd	t3, 352(sp)                     # 8-byte Folded Spill
	lui	a0, %hi(frame_pred_dct)
	lw	a0, %lo(frame_pred_dct)(a0)
	ld	s1, 368(sp)                     # 8-byte Folded Reload
	bnez	a0, .LBB0_51
	j	.LBB0_164
.LBB0_51:                               #   in Loop: Header=BB0_9 Depth=2
	lui	a0, %hi(height)
	lw	s6, %lo(height)(a0)
	sext.w	s7, s1
	li	t2, 16
	addi	t5, sp, 812
	addi	t6, sp, 808
	mv	a0, s0
	ld	s1, 536(sp)                     # 8-byte Folded Reload
	mv	a1, s1
	mv	a3, n3
	mv	a4, s7
	ld	s3, 464(sp)                     # 8-byte Folded Reload
	mv	a5, s3
	ld	a6, 280(sp)                     # 8-byte Folded Reload
	ld	a7, 288(sp)                     # 8-byte Folded Reload
	mv	t3, n3
	mv	t4, s6
	mv	s5, n3
	mv	s8, a2
	call	fullsearch
	lwu	a2, 812(sp)
	lw	a3, 808(sp)
	sraiw	a0, a2, 1
	srli	a1, a3, 1
	mulw	a1, a1, s5
	add	s0, a0, a1
	add	s1, s0, s1
	sd	a3, 656(sp)                     # 8-byte Folded Spill
	andi	a4, a3, 1
	sd	a4, 624(sp)                     # 8-byte Folded Spill
	sd	a2, 664(sp)                     # 8-byte Folded Spill
	andi	s11, a2, 1
	li	a5, 16
	mv	a0, s1
	mv	a1, s8
	mv	a2, s5
	mv	a3, s11
	call	dist2
	sd	a0, 632(sp)                     # 8-byte Folded Spill
	li	t2, 16
	addi	t5, sp, 804
	addi	t6, sp, 800
	ld	a0, 232(sp)                     # 8-byte Folded Reload
	ld	s2, 312(sp)                     # 8-byte Folded Reload
	mv	a1, s2
	mv	a2, s8
	mv	a3, s5
	mv	a4, s7
	mv	a5, s3
	ld	a6, 216(sp)                     # 8-byte Folded Reload
	ld	a7, 224(sp)                     # 8-byte Folded Reload
	mv	t3, s5
	mv	t4, s6
	call	fullsearch
	lwu	a2, 804(sp)
	lw	a3, 800(sp)
	sraiw	a0, a2, 1
	add	a0, s2, a0
	srli	a1, a3, 1
	mulw	s6, a1, s5
	add	s6, a0, s6
	sd	a3, 640(sp)                     # 8-byte Folded Spill
	andi	s7, a3, 1
	sd	a2, 648(sp)                     # 8-byte Folded Spill
	andi	s4, a2, 1
	li	a5, 16
	mv	a0, s6
	mv	a1, s8
	mv	a2, s5
	mv	a3, s4
	mv	a4, s7
	call	dist2
	mv	a1, a0
	li	a3, 0
	li	a2, 0
	li	a4, 0
	mulw	a5, s7, s5
	add	a5, s6, a5
	add	a6, a5, s4
	add	s4, s6, s4
	ld	a7, 624(sp)                     # 8-byte Folded Reload
	mulw	a7, a7, s5
	add	a7, s1, a7
	add	t0, a7, s11
	add	s11, s1, s11
	addiw	t1, s5, -16
	addi	t1, t1, 16
	ld	t2, 376(sp)                     # 8-byte Folded Reload
	ld	t3, 304(sp)                     # 8-byte Folded Reload
	add	t2, t2, t3
	ld	t3, 408(sp)                     # 8-byte Folded Reload
	add	t3, t3, s0
.LBB0_52:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_53 Depth 4
	mv	t4, t2
	mv	t5, s6
	mv	t6, s11
	mv	n1, a7
	mv	n2, t0
	mv	n3, s4
	mv	n4, a5
	mv	n5, a6
	mv	n6, s1
.LBB0_53:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add	n7, n6, a3
	add	n8, n5, a3
	add	n9, n4, a3
	add	n10, n3, a3
	add	n11, n2, a3
	add	n12, n1, a3
	add	n13, t6, a3
	lbu	n7, 0(n7)
	lbu	n13, 0(n13)
	lbu	n12, 0(n12)
	lbu	n11, 0(n11)
	add	n14, t5, a3
	add	n15, t4, a3
	add	n7, n7, n13
	add	n11, n12, n11
	add	n7, n7, n11
	lbu	n11, 0(n14)
	lbu	n10, 0(n10)
	lbu	n9, 0(n9)
	lbu	n8, 0(n8)
	addi	n7, n7, 2
	srli	n7, n7, 2
	add	n10, n11, n10
	add	n8, n9, n8
	add	n8, n10, n8
	addi	n8, n8, 2
	srli	n8, n8, 2
	lbu	n9, 0(n15)
	add	n7, n7, n8
	addi	n7, n7, 1
	srli	n7, n7, 1
	subw	n7, n7, n9
	mul	n7, n7, n7
	addw	a2, n7, a2
	addi	n6, n6, 1
	addi	n5, n5, 1
	addi	n4, n4, 1
	addi	n3, n3, 1
	addi	n2, n2, 1
	addi	n1, n1, 1
	addi	t6, t6, 1
	addi	t5, t5, 1
	addi	t4, t4, 1
	bne	n6, t3, .LBB0_53
# %bb.54:                               #   in Loop: Header=BB0_52 Depth=3
	addiw	a4, a4, 1
	add	a3, a3, t1
	li	t4, 16
	bne	a4, t4, .LBB0_52
# %bb.55:                               #   in Loop: Header=BB0_9 Depth=2
	li	a3, 12
	blt	a2, a0, .LBB0_57
# %bb.56:                               #   in Loop: Header=BB0_9 Depth=2
	li	a3, 4
.LBB0_57:                               #   in Loop: Header=BB0_9 Depth=2
	ld	a4, 296(sp)                     # 8-byte Folded Reload
	ld	t2, 536(sp)                     # 8-byte Folded Reload
	ld	t3, 352(sp)                     # 8-byte Folded Reload
	ld	t5, 344(sp)                     # 8-byte Folded Reload
	ld	t6, 328(sp)                     # 8-byte Folded Reload
	ld	n1, 336(sp)                     # 8-byte Folded Reload
	ld	n2, 320(sp)                     # 8-byte Folded Reload
	ld	a6, 368(sp)                     # 8-byte Folded Reload
	ld	s3, 240(sp)                     # 8-byte Folded Reload
	ld	a5, 632(sp)                     # 8-byte Folded Reload
	blt	a0, a2, .LBB0_59
# %bb.58:                               #   in Loop: Header=BB0_9 Depth=2
	mv	a0, a2
.LBB0_59:                               #   in Loop: Header=BB0_9 Depth=2
	slt	a1, a1, a5
	slt	a2, a2, a5
	or	a1, a1, a2
	bnez	a1, .LBB0_61
# %bb.60:                               #   in Loop: Header=BB0_9 Depth=2
	li	a3, 8
	mv	a0, a5
.LBB0_61:                               #   in Loop: Header=BB0_9 Depth=2
	sw	a3, 0(t3)
	sw	s10, 4(t3)
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
	bge	s3, a0, .LBB0_279
	j	.LBB0_269
.LBB0_279:                              #   in Loop: Header=BB0_9 Depth=2
	j	.LBB0_271
.LBB0_62:                               #   in Loop: Header=BB0_9 Depth=2
	li	a4, 0
	li	a1, 16
	mv	a2, t6
	mv	a3, n1
	ld	n3, 272(sp)                     # 8-byte Folded Reload
	ld	n4, 304(sp)                     # 8-byte Folded Reload
.LBB0_63:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add	a0, a3, n4
	add	a5, a2, n4
	lbu	a6, 0(a0)
	lbu	a7, -7(a5)
	subw	a6, a6, a7
	mul	a6, a6, a6
	lbu	a7, 1(a0)
	lbu	t0, -6(a5)
	lbu	t1, 2(a0)
	lbu	t2, -5(a5)
	add	a4, a6, a4
	subw	a6, a7, t0
	mul	a6, a6, a6
	subw	a7, t1, t2
	lbu	t0, 3(a0)
	lbu	t1, -4(a5)
	mul	a7, a7, a7
	add	a6, a6, a7
	add	a4, a4, a6
	subw	a6, t0, t1
	lbu	a7, 4(a0)
	lbu	t0, -3(a5)
	mul	a6, a6, a6
	lbu	t1, 5(a0)
	lbu	t2, -2(a5)
	subw	a7, a7, t0
	mul	a7, a7, a7
	add	a6, a6, a7
	subw	a7, t1, t2
	mul	a7, a7, a7
	add	a6, a6, a7
	lbu	a7, 6(a0)
	lbu	t0, -1(a5)
	lbu	t1, 7(a0)
	lbu	t2, 0(a5)
	add	a4, a4, a6
	subw	a6, a7, t0
	mul	a6, a6, a6
	subw	a7, t1, t2
	mul	a7, a7, a7
	lbu	t0, 8(a0)
	lbu	t1, 1(a5)
	add	a6, a6, a7
	lbu	a7, 9(a0)
	lbu	t2, 2(a5)
	subw	t0, t0, t1
	mul	t0, t0, t0
	add	a6, a6, t0
	subw	a7, a7, t2
	lbu	t0, 10(a0)
	lbu	t1, 3(a5)
	mul	a7, a7, a7
	add	a6, a6, a7
	add	a4, a4, a6
	subw	a6, t0, t1
	lbu	a7, 11(a0)
	lbu	t0, 4(a5)
	mul	a6, a6, a6
	lbu	t1, 12(a0)
	lbu	t2, 5(a5)
	subw	a7, a7, t0
	mul	a7, a7, a7
	add	a6, a6, a7
	subw	a7, t1, t2
	mul	a7, a7, a7
	lbu	t0, 13(a0)
	lbu	t1, 6(a5)
	add	a6, a6, a7
	lbu	a7, 14(a0)
	lbu	t2, 7(a5)
	subw	t0, t0, t1
	mul	t0, t0, t0
	add	a6, a6, t0
	subw	a7, a7, t2
	lbu	a0, 15(a0)
	lbu	a5, 8(a5)
	mul	a7, a7, a7
	add	a6, a6, a7
	add	a4, a4, a6
	subw	a0, a0, a5
	mul	a0, a0, a0
	addw	a4, a4, a0
	addiw	a1, a1, -1
	add	a3, a3, n3
	add	a2, a2, n3
	bnez	a1, .LBB0_63
# %bb.64:                               #   in Loop: Header=BB0_9 Depth=2
	ld	t2, 536(sp)                     # 8-byte Folded Reload
	ld	s0, 248(sp)                     # 8-byte Folded Reload
	ld	a0, 264(sp)                     # 8-byte Folded Reload
	ld	a6, 368(sp)                     # 8-byte Folded Reload
	bge	a4, a0, .LBB0_65
	j	.LBB0_186
.LBB0_65:                               #   in Loop: Header=BB0_9 Depth=2
	slliw	a0, a4, 2
	slli	a1, n28, 2
	addw	a1, a1, n28
	blt	a1, a0, .LBB0_66
	j	.LBB0_186
.LBB0_66:                               #   in Loop: Header=BB0_9 Depth=2
	sw	s9, 0(t3)
	ld	a4, 296(sp)                     # 8-byte Folded Reload
	li	a0, 3
	bne	s2, a0, .LBB0_67
	j	.LBB0_245
.LBB0_67:                               #   in Loop: Header=BB0_9 Depth=2
	beq	s2, s10, .LBB0_68
	j	.LBB0_246
.LBB0_68:                               #   in Loop: Header=BB0_9 Depth=2
	lw	a0, 820(sp)
	lw	a1, 816(sp)
	slli	a2, a6, 1
	subw	a0, a0, a2
	sw	a0, 24(t3)
	ld	a0, 208(sp)                     # 8-byte Folded Reload
	subw	a0, a1, a0
	sw	a0, 28(t3)
	sw	n28, 88(t3)
	j	.LBB0_8
.LBB0_69:                               #   in Loop: Header=BB0_9 Depth=2
	ld	t2, 536(sp)                     # 8-byte Folded Reload
	li	s10, 2
	blt	t6, t5, .LBB0_70
	j	.LBB0_187
.LBB0_70:                               #   in Loop: Header=BB0_9 Depth=2
	blt	t6, t4, .LBB0_71
	j	.LBB0_187
.LBB0_71:                               #   in Loop: Header=BB0_9 Depth=2
	blt	t6, a5, .LBB0_72
	j	.LBB0_187
.LBB0_72:                               #   in Loop: Header=BB0_9 Depth=2
	blt	t6, a7, .LBB0_73
	j	.LBB0_187
.LBB0_73:                               #   in Loop: Header=BB0_9 Depth=2
	li	a0, 1
	slli	a0, a0, 33
	addi	a0, a0, 12
	ld	a1, 352(sp)                     # 8-byte Folded Reload
	sd	a0, 0(a1)
	lui	a0, %hi(width)
	lw	a3, %lo(width)(a0)
	li	a4, 0
	li	a0, 0
	li	a5, 0
	and	a1, n9, a3
	ld	a6, 584(sp)                     # 8-byte Folded Reload
	add	n6, a6, n6
	add	a1, a1, n6
	add	a6, a1, t2
	and	a7, n11, a3
	ld	t3, 568(sp)                     # 8-byte Folded Reload
	add	n8, t3, n8
	add	n8, a7, n8
	ld	t4, 312(sp)                     # 8-byte Folded Reload
	add	a7, n8, t4
	add	t3, n8, n13
	mv	t6, t2
	add	t2, t4, t1
	add	t2, t2, t3
	add	t3, t4, t3
	add	t1, a7, t1
	add	t5, a1, n12
	add	t4, t6, t0
	add	t4, t4, t5
	add	t5, t6, t5
	add	t0, a6, t0
	ld	t6, 376(sp)                     # 8-byte Folded Reload
	add	a2, t6, a2
	ld	t6, 408(sp)                     # 8-byte Folded Reload
	add	t6, t6, a1
.LBB0_74:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_75 Depth 4
	mv	n2, a2
	mv	n3, a7
	mv	n4, t0
	mv	n5, t5
	mv	n6, t4
	mv	n7, t1
	mv	n8, t3
	mv	n9, t2
	mv	n10, a6
.LBB0_75:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_74 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add	a1, n10, a4
	add	n11, n9, a4
	add	n12, n8, a4
	add	n13, n7, a4
	add	n14, n6, a4
	add	n16, n5, a4
	add	n20, n4, a4
	lbu	a1, 0(a1)
	lbu	n20, 0(n20)
	lbu	n16, 0(n16)
	lbu	n14, 0(n14)
	add	n21, n3, a4
	add	n22, n2, a4
	add	a1, a1, n20
	add	n14, n16, n14
	add	a1, a1, n14
	lbu	n14, 0(n21)
	lbu	n13, 0(n13)
	lbu	n12, 0(n12)
	lbu	n11, 0(n11)
	addi	a1, a1, 2
	srli	a1, a1, 2
	add	n13, n14, n13
	add	n11, n12, n11
	add	n11, n13, n11
	addi	n11, n11, 2
	srli	n11, n11, 2
	lbu	n12, 0(n22)
	add	a1, a1, n11
	addi	a1, a1, 1
	srli	a1, a1, 1
	subw	a1, a1, n12
	mul	a1, a1, a1
	add	a0, a1, a0
	addi	n10, n10, 1
	addi	n9, n9, 1
	addi	n8, n8, 1
	addi	n7, n7, 1
	addi	n6, n6, 1
	addi	n5, n5, 1
	addi	n4, n4, 1
	addi	n3, n3, 1
	addi	n2, n2, 1
	bne	n10, t6, .LBB0_75
# %bb.76:                               #   in Loop: Header=BB0_74 Depth=3
	addiw	a5, a5, 1
	add	a4, a4, s8
	bne	a5, s9, .LBB0_74
# %bb.77:                               #   in Loop: Header=BB0_9 Depth=2
	li	a4, 0
	li	a2, 0
	li	a5, 0
	and	a1, n15, a3
	ld	a6, 576(sp)                     # 8-byte Folded Reload
	add	s6, a6, s6
	add	a1, a1, s6
	ld	t3, 536(sp)                     # 8-byte Folded Reload
	add	a6, a1, t3
	and	a3, n17, a3
	ld	a7, 560(sp)                     # 8-byte Folded Reload
	ld	t0, 552(sp)                     # 8-byte Folded Reload
	add	a7, a7, t0
	add	a7, a3, a7
	ld	t1, 312(sp)                     # 8-byte Folded Reload
	add	a3, a7, t1
	add	t0, a7, n19
	add	a7, t1, s2
	add	a7, a7, t0
	add	t0, t1, t0
	add	s2, a3, s2
	add	t2, a1, n18
	add	t1, t3, s0
	add	t1, t1, t2
	add	t2, t3, t2
	add	s0, a6, s0
	ld	n20, 376(sp)                    # 8-byte Folded Reload
	add	n20, n20, n1
	ld	t3, 408(sp)                     # 8-byte Folded Reload
	add	t3, t3, a1
.LBB0_78:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_79 Depth 4
	mv	t4, n20
	mv	t5, a3
	mv	t6, s0
	mv	n1, t2
	mv	n2, t1
	mv	n3, s2
	mv	n4, t0
	mv	n5, a7
	mv	n6, a6
.LBB0_79:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_78 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add	a1, n6, a4
	add	n7, n5, a4
	add	n8, n4, a4
	add	n9, n3, a4
	add	n10, n2, a4
	add	n11, n1, a4
	add	n12, t6, a4
	lbu	a1, 0(a1)
	lbu	n12, 0(n12)
	lbu	n11, 0(n11)
	lbu	n10, 0(n10)
	add	n13, t5, a4
	add	n14, t4, a4
	add	a1, a1, n12
	add	n10, n11, n10
	add	a1, a1, n10
	lbu	n10, 0(n13)
	lbu	n9, 0(n9)
	lbu	n8, 0(n8)
	lbu	n7, 0(n7)
	addi	a1, a1, 2
	srli	a1, a1, 2
	add	n9, n10, n9
	add	n7, n8, n7
	add	n7, n9, n7
	addi	n7, n7, 2
	srli	n7, n7, 2
	lbu	n8, 0(n14)
	add	a1, a1, n7
	addi	a1, a1, 1
	srli	a1, a1, 1
	subw	a1, a1, n8
	mul	a1, a1, a1
	add	a2, a1, a2
	addi	n6, n6, 1
	addi	n5, n5, 1
	addi	n4, n4, 1
	addi	n3, n3, 1
	addi	n2, n2, 1
	addi	n1, n1, 1
	addi	t6, t6, 1
	addi	t5, t5, 1
	addi	t4, t4, 1
	bne	n6, t3, .LBB0_79
# %bb.80:                               #   in Loop: Header=BB0_78 Depth=3
	addiw	a5, a5, 1
	add	a4, a4, s8
	bne	a5, s9, .LBB0_78
# %bb.81:                               #   in Loop: Header=BB0_9 Depth=2
	li	s1, 0
	addw	a0, a2, a0
	j	.LBB0_256
.LBB0_82:                               #   in Loop: Header=BB0_9 Depth=2
	addi	a0, sp, 672
	sd	a0, 40(sp)
	addi	a0, sp, 688
	sd	a0, 32(sp)
	addi	a0, sp, 720
	sd	a0, 24(sp)
	addi	a0, sp, 724
	sd	a0, 16(sp)
	addi	a0, sp, 736
	sd	a0, 8(sp)
	ld	s1, 368(sp)                     # 8-byte Folded Reload
	sext.w	a3, s1
	addi	a7, sp, 820
	addi	t2, sp, 816
	addi	t3, sp, 796
	addi	t4, sp, 792
	addi	t5, sp, 788
	addi	t6, sp, 784
	addi	a0, sp, 748
	sd	a0, 0(sp)
	mv	a0, s0
	ld	s0, 536(sp)                     # 8-byte Folded Reload
	mv	a1, s0
	sd	a2, 192(sp)                     # 8-byte Folded Spill
	ld	a4, 464(sp)                     # 8-byte Folded Reload
	ld	a5, 280(sp)                     # 8-byte Folded Reload
	ld	a6, 288(sp)                     # 8-byte Folded Reload
	call	frame_estimate
	lui	a0, %hi(M)
	lw	a0, %lo(M)(a0)
	li	a1, 1
	beq	a0, a1, .LBB0_83
	j	.LBB0_191
.LBB0_83:                               #   in Loop: Header=BB0_9 Depth=2
	sd	s3, 240(sp)                     # 8-byte Folded Spill
	sd	zero, 448(sp)                   # 8-byte Folded Spill
	lui	a0, %hi(height)
	lw	a0, %lo(height)(a0)
	lui	a1, %hi(topfirst)
	lwu	a1, %lo(topfirst)(a1)
	sd	a1, 456(sp)                     # 8-byte Folded Spill
	ld	a1, 272(sp)                     # 8-byte Folded Reload
	slliw	t2, a1, 1
	addiw	a2, t2, -32
	addiw	t0, a0, -16
	add	s0, s0, a1
	sd	s0, 520(sp)                     # 8-byte Folded Spill
	sd	t2, 528(sp)                     # 8-byte Folded Spill
	addiw	t2, t2, -16
	slli	s1, s1, 1
	sd	s1, 472(sp)                     # 8-byte Folded Spill
	addi	t2, t2, 16
	ld	n1, 376(sp)                     # 8-byte Folded Reload
	ld	a0, 304(sp)                     # 8-byte Folded Reload
	add	s3, n1, a0
	add	a0, a1, a0
	sd	a0, 184(sp)                     # 8-byte Folded Spill
	add	n1, n1, a0
	ld	a0, 408(sp)                     # 8-byte Folded Reload
	add	a0, a0, a1
	sd	a0, 384(sp)                     # 8-byte Folded Spill
	lui	n28, 262144
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
	sd	t0, 552(sp)                     # 8-byte Folded Spill
	j	.LBB0_85
.LBB0_84:                               #   in Loop: Header=BB0_85 Depth=3
	ld	a0, 360(sp)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	li	a1, 1
	sd	a1, 448(sp)                     # 8-byte Folded Spill
	li	a1, 0
	bnez	a0, .LBB0_85
	j	.LBB0_194
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
	sd	a1, 360(sp)                     # 8-byte Folded Spill
	li	a5, 0
	li	a4, 1
	li	t3, 1
	j	.LBB0_87
.LBB0_86:                               #   in Loop: Header=BB0_87 Depth=4
	ld	a0, 480(sp)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	li	a5, 1
	ld	a4, 440(sp)                     # 8-byte Folded Reload
	li	t3, 0
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
	ld	a6, 448(sp)                     # 8-byte Folded Reload
	slli	a1, a6, 3
	addi	a3, sp, 688
	add	a3, a3, a1
	slli	a7, a5, 2
	add	a3, a3, a7
	lw	a3, 0(a3)
	addi	a0, sp, 672
	add	a1, a0, a1
	add	a1, a1, a7
	lw	a7, 0(a1)
	ld	a0, 472(sp)                     # 8-byte Folded Reload
	subw	a1, a3, a0
	ld	a0, 464(sp)                     # 8-byte Folded Reload
	subw	a3, a7, a0
	sd	t3, 480(sp)                     # 8-byte Folded Spill
	beq	a6, a5, .LBB0_92
# %bb.88:                               #   in Loop: Header=BB0_87 Depth=4
	ld	a0, 456(sp)                     # 8-byte Folded Reload
	bne	a5, a0, .LBB0_86
# %bb.89:                               #   in Loop: Header=BB0_87 Depth=4
	slliw	a1, a1, 1
	bltz	a1, .LBB0_94
# %bb.90:                               #   in Loop: Header=BB0_87 Depth=4
	ori	a1, a1, 1
	slli	a1, a1, 32
	ld	a0, 432(sp)                     # 8-byte Folded Reload
	mulhu	a1, a1, a0
	srli	a1, a1, 33
	add	a3, a3, a4
	slliw	a3, a3, 1
	bltz	a3, .LBB0_95
.LBB0_91:                               #   in Loop: Header=BB0_87 Depth=4
	ori	a3, a3, 1
	slli	a3, a3, 32
	ld	a0, 432(sp)                     # 8-byte Folded Reload
	mulhu	a3, a3, a0
	srli	a3, a3, 33
.LBB0_92:                               #   in Loop: Header=BB0_87 Depth=4
	ld	a0, 456(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB0_96
.LBB0_93:                               #   in Loop: Header=BB0_87 Depth=4
	sgtz	a4, a1
	addw	a4, a1, a4
	sgtz	a5, a3
	addw	a7, a3, a5
	slli	a5, a1, 1
	addw	a5, a4, a5
	slli	t1, a3, 1
	addw	t1, a7, t1
	ld	a0, 472(sp)                     # 8-byte Folded Reload
	addw	a6, a1, a0
	bgez	a6, .LBB0_97
	j	.LBB0_86
.LBB0_94:                               #   in Loop: Header=BB0_87 Depth=4
	li	a0, 1
	subw	a1, a0, a1
	slli	a1, a1, 32
	ld	a0, 432(sp)                     # 8-byte Folded Reload
	mulhu	a1, a1, a0
	srli	a1, a1, 33
	neg	a1, a1
	add	a3, a3, a4
	slliw	a3, a3, 1
	bgez	a3, .LBB0_91
.LBB0_95:                               #   in Loop: Header=BB0_87 Depth=4
	li	a0, 1
	subw	a3, a0, a3
	slli	a3, a3, 32
	ld	a0, 432(sp)                     # 8-byte Folded Reload
	mulhu	a3, a3, a0
	srli	a3, a3, 33
	neg	a3, a3
	ld	a0, 456(sp)                     # 8-byte Folded Reload
	bnez	a0, .LBB0_93
.LBB0_96:                               #   in Loop: Header=BB0_87 Depth=4
	slli	a4, a1, 1
	sgtz	a5, a1
	addw	a5, a1, a5
	addw	a4, a5, a4
	slli	a7, a3, 1
	sgtz	t1, a3
	addw	t1, a3, t1
	addw	a7, t1, a7
	ld	a0, 472(sp)                     # 8-byte Folded Reload
	addw	a6, a1, a0
	bltz	a6, .LBB0_86
.LBB0_97:                               #   in Loop: Header=BB0_87 Depth=4
	blt	a2, a6, .LBB0_86
# %bb.98:                               #   in Loop: Header=BB0_87 Depth=4
	ld	a0, 464(sp)                     # 8-byte Folded Reload
	addw	t4, a3, a0
	bltz	t4, .LBB0_86
# %bb.99:                               #   in Loop: Header=BB0_87 Depth=4
	blt	t0, t4, .LBB0_86
# %bb.100:                              #   in Loop: Header=BB0_87 Depth=4
	srai	n19, t1, 1
	srai	a5, a5, 1
	srai	a7, a7, 1
	srai	a4, a4, 1
	ld	a0, 472(sp)                     # 8-byte Folded Reload
	add	n7, a4, a0
	add	a0, a5, a0
	sd	a0, 664(sp)                     # 8-byte Folded Spill
	ld	a0, 400(sp)                     # 8-byte Folded Reload
	add	a0, a0, a7
	sd	a0, 560(sp)                     # 8-byte Folded Spill
	ld	a0, 392(sp)                     # 8-byte Folded Reload
	add	a0, a0, n19
	sd	a0, 544(sp)                     # 8-byte Folded Spill
	sd	a6, 648(sp)                     # 8-byte Folded Spill
	srliw	a7, a6, 1
	sd	t4, 640(sp)                     # 8-byte Folded Spill
	srliw	t1, t4, 1
	ld	a0, 528(sp)                     # 8-byte Folded Reload
	mulw	t1, t1, a0
	slli	a3, a3, 63
	srai	a3, a3, 63
	and	a3, a3, a0
	andi	t3, a1, 1
	ld	a0, 424(sp)                     # 8-byte Folded Reload
	add	a1, a0, a1
	srliw	a1, a1, 1
	add	n18, a1, t1
	ld	s2, 536(sp)                     # 8-byte Folded Reload
	add	n9, s2, n18
	ld	a6, 416(sp)                     # 8-byte Folded Reload
	add	a0, a6, a4
	sd	a0, 512(sp)                     # 8-byte Folded Spill
	addi	a4, a4, 1
	sd	a4, 504(sp)                     # 8-byte Folded Spill
	add	a1, a3, a1
	add	a1, a1, t1
	add	n22, a1, t3
	add	s7, s2, n22
	add	s6, s2, a1
	add	t3, n18, t3
	add	s2, s2, t3
	add	a7, a7, t1
	ld	n17, 408(sp)                    # 8-byte Folded Reload
	add	n17, n17, a7
	ld	n24, 520(sp)                    # 8-byte Folded Reload
	add	n18, n24, n18
	ld	a0, 464(sp)                     # 8-byte Folded Reload
	add	n19, a0, n19
	add	a6, a6, a5
	sd	a6, 496(sp)                     # 8-byte Folded Spill
	addi	a5, a5, 1
	sd	a5, 488(sp)                     # 8-byte Folded Spill
	add	n22, n24, n22
	add	n23, n24, a1
	add	n24, n24, t3
	ld	n25, 384(sp)                    # 8-byte Folded Reload
	add	n25, n25, a7
	li	n26, -1
	j	.LBB0_102
.LBB0_101:                              #   in Loop: Header=BB0_102 Depth=5
	addiw	n26, n26, 1
	ld	n19, 568(sp)                    # 8-byte Folded Reload
	addi	n19, n19, 1
	ld	t0, 552(sp)                     # 8-byte Folded Reload
	beq	n26, s10, .LBB0_86
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
	ld	a0, 560(sp)                     # 8-byte Folded Reload
	addw	n27, a0, n26
	sd	n19, 568(sp)                    # 8-byte Folded Spill
	bltz	n27, .LBB0_101
# %bb.103:                              #   in Loop: Header=BB0_102 Depth=5
	blt	t0, n27, .LBB0_101
# %bb.104:                              #   in Loop: Header=BB0_102 Depth=5
	ld	a0, 544(sp)                     # 8-byte Folded Reload
	addw	a4, a0, n26
	slti	a1, a4, 0
	slt	a3, t0, a4
	or	a1, a1, a3
	bnez	a1, .LBB0_101
# %bb.105:                              # %.preheader
                                        #   in Loop: Header=BB0_102 Depth=5
	srliw	a1, n19, 1
	ld	a0, 528(sp)                     # 8-byte Folded Reload
	mulw	t5, a0, a1
	srliw	a1, n27, 1
	mulw	s11, a1, a0
	slli	a1, n27, 63
	srai	a1, a1, 63
	and	a1, a1, a0
	sd	a4, 656(sp)                     # 8-byte Folded Spill
	slli	a3, a4, 63
	srai	a3, a3, 63
	and	t1, a3, a0
	add	a1, a1, s11
	ld	a0, 520(sp)                     # 8-byte Folded Reload
	add	t3, a0, a1
	add	s11, a0, s11
	ld	a0, 536(sp)                     # 8-byte Folded Reload
	add	a1, a0, t5
	add	t1, a1, t1
	add	t5, a0, t5
	li	ra, -1
	ld	n21, 488(sp)                    # 8-byte Folded Reload
	ld	n20, 496(sp)                    # 8-byte Folded Reload
	ld	n13, 504(sp)                    # 8-byte Folded Reload
	ld	n12, 512(sp)                    # 8-byte Folded Reload
	j	.LBB0_107
.LBB0_106:                              #   in Loop: Header=BB0_107 Depth=6
	addiw	ra, ra, 1
	addi	n12, n12, 1
	addi	n13, n13, 1
	addi	n20, n20, 1
	addi	n21, n21, 1
	beq	ra, s10, .LBB0_101
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
	addw	a7, n7, ra
	bltz	a7, .LBB0_106
# %bb.108:                              #   in Loop: Header=BB0_107 Depth=6
	blt	a2, a7, .LBB0_106
# %bb.109:                              #   in Loop: Header=BB0_107 Depth=6
	ld	a0, 664(sp)                     # 8-byte Folded Reload
	addw	a5, a0, ra
	bltz	a5, .LBB0_106
# %bb.110:                              #   in Loop: Header=BB0_107 Depth=6
	bltu	a2, a5, .LBB0_106
# %bb.111:                              #   in Loop: Header=BB0_107 Depth=6
	mv	n19, n28
	li	a6, 0
	li	n2, 0
	li	s10, 0
	srliw	t4, n20, 1
	andi	a3, n21, 1
	add	a3, t4, a3
	add	n31, t1, a3
	add	s5, t1, t4
	add	s4, t5, a3
	add	t4, t5, t4
	srliw	n4, n12, 1
	andi	a3, n13, 1
	add	a3, n4, a3
	add	s1, t3, a3
	add	n3, t3, n4
	add	n10, s11, a3
	add	n4, s11, n4
.LBB0_112:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_85 Depth=3
                                        #         Parent Loop BB0_87 Depth=4
                                        #           Parent Loop BB0_102 Depth=5
                                        #             Parent Loop BB0_107 Depth=6
                                        # =>            This Loop Header: Depth=7
                                        #                 Child Loop BB0_113 Depth 8
	mv	t6, s3
	mv	a3, n4
	mv	n16, s2
	mv	n15, s6
	mv	n14, s7
	mv	n30, n10
	mv	a4, n3
	mv	n29, s1
	mv	n11, n9
.LBB0_113:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_85 Depth=3
                                        #         Parent Loop BB0_87 Depth=4
                                        #           Parent Loop BB0_102 Depth=5
                                        #             Parent Loop BB0_107 Depth=6
                                        #               Parent Loop BB0_112 Depth=7
                                        # =>              This Inner Loop Header: Depth=8
	add	s8, n11, a6
	add	n28, n29, a6
	add	s0, a4, a6
	add	t0, n30, a6
	add	n6, n14, a6
	add	n5, n15, a6
	add	a1, n16, a6
	lbu	s8, 0(s8)
	lbu	a1, 0(a1)
	lbu	n5, 0(n5)
	lbu	n6, 0(n6)
	add	a0, a3, a6
	add	n8, t6, a6
	add	a1, s8, a1
	add	n5, n5, n6
	add	a1, a1, n5
	lbu	a0, 0(a0)
	lbu	t0, 0(t0)
	lbu	n5, 0(s0)
	lbu	n6, 0(n28)
	addi	a1, a1, 2
	srli	a1, a1, 2
	add	a0, a0, t0
	add	n5, n5, n6
	add	a0, a0, n5
	addi	a0, a0, 2
	srli	a0, a0, 2
	lbu	t0, 0(n8)
	add	a0, a1, a0
	addi	a0, a0, 1
	srli	a0, a0, 1
	subw	a0, a0, t0
	mul	a0, a0, a0
	add	n2, a0, n2
	addi	n11, n11, 1
	addi	n29, n29, 1
	addi	a4, a4, 1
	addi	n30, n30, 1
	addi	n14, n14, 1
	addi	n15, n15, 1
	addi	n16, n16, 1
	addi	a3, a3, 1
	addi	t6, t6, 1
	bne	n11, n17, .LBB0_113
# %bb.114:                              #   in Loop: Header=BB0_112 Depth=7
	addiw	s10, s10, 1
	add	a6, a6, t2
	bne	s10, s9, .LBB0_112
# %bb.115:                              #   in Loop: Header=BB0_107 Depth=6
	li	a4, 0
	li	a1, 0
	li	a3, 0
	li	s10, 2
.LBB0_116:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_85 Depth=3
                                        #         Parent Loop BB0_87 Depth=4
                                        #           Parent Loop BB0_102 Depth=5
                                        #             Parent Loop BB0_107 Depth=6
                                        # =>            This Loop Header: Depth=7
                                        #                 Child Loop BB0_117 Depth 8
	mv	t6, n1
	mv	n4, t4
	mv	n16, n24
	mv	n15, n23
	mv	n14, n22
	mv	n10, s4
	mv	n3, s5
	mv	n29, n31
	mv	n11, n18
.LBB0_117:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_85 Depth=3
                                        #         Parent Loop BB0_87 Depth=4
                                        #           Parent Loop BB0_102 Depth=5
                                        #             Parent Loop BB0_107 Depth=6
                                        #               Parent Loop BB0_116 Depth=7
                                        # =>              This Inner Loop Header: Depth=8
	add	a0, n11, a4
	add	a6, n29, a4
	add	t0, n3, a4
	add	n5, n10, a4
	add	n6, n14, a4
	add	n8, n15, a4
	add	n28, n16, a4
	lbu	a0, 0(a0)
	lbu	n28, 0(n28)
	lbu	n8, 0(n8)
	lbu	n6, 0(n6)
	add	n30, n4, a4
	add	s0, t6, a4
	add	a0, a0, n28
	add	n6, n8, n6
	add	a0, a0, n6
	lbu	n6, 0(n30)
	lbu	n5, 0(n5)
	lbu	t0, 0(t0)
	lbu	a6, 0(a6)
	addi	a0, a0, 2
	srli	a0, a0, 2
	add	n5, n6, n5
	add	a6, t0, a6
	add	a6, n5, a6
	addi	a6, a6, 2
	srli	a6, a6, 2
	lbu	t0, 0(s0)
	add	a0, a0, a6
	addi	a0, a0, 1
	srli	a0, a0, 1
	subw	a0, a0, t0
	mul	a0, a0, a0
	add	a1, a0, a1
	addi	n11, n11, 1
	addi	n29, n29, 1
	addi	n3, n3, 1
	addi	n10, n10, 1
	addi	n14, n14, 1
	addi	n15, n15, 1
	addi	n16, n16, 1
	addi	n4, n4, 1
	addi	t6, t6, 1
	bne	n11, n25, .LBB0_117
# %bb.118:                              #   in Loop: Header=BB0_116 Depth=7
	addiw	a3, a3, 1
	add	a4, a4, t2
	bne	a3, s9, .LBB0_116
# %bb.119:                              #   in Loop: Header=BB0_107 Depth=6
	addw	a1, a1, n2
	mv	n28, n19
	bge	a1, n19, .LBB0_106
# %bb.120:                              #   in Loop: Header=BB0_107 Depth=6
	ld	a0, 648(sp)                     # 8-byte Folded Reload
	sd	a0, 624(sp)                     # 8-byte Folded Spill
	ld	a0, 640(sp)                     # 8-byte Folded Reload
	sd	a0, 632(sp)                     # 8-byte Folded Spill
	sd	a7, 600(sp)                     # 8-byte Folded Spill
	sd	n27, 592(sp)                    # 8-byte Folded Spill
	sd	a5, 616(sp)                     # 8-byte Folded Spill
	ld	a0, 656(sp)                     # 8-byte Folded Reload
	sd	a0, 608(sp)                     # 8-byte Folded Spill
	sd	ra, 576(sp)                     # 8-byte Folded Spill
	sd	n26, 584(sp)                    # 8-byte Folded Spill
	mv	n28, a1
	j	.LBB0_106
.LBB0_121:                              #   in Loop: Header=BB0_9 Depth=2
	mv	a3, t2
	mv	a0, s0
	ld	a5, 368(sp)                     # 8-byte Folded Reload
.LBB0_122:                              #   in Loop: Header=BB0_9 Depth=2
	sd	n3, 272(sp)                     # 8-byte Folded Spill
	addi	a1, sp, 732
	sd	a1, 80(sp)
	addi	a1, sp, 736
	sd	a1, 72(sp)
	addi	a1, sp, 740
	sd	a1, 64(sp)
	addi	a1, sp, 788
	sd	a1, 56(sp)
	addi	a1, sp, 792
	sd	a1, 48(sp)
	addi	a1, sp, 796
	sd	a1, 40(sp)
	addi	a1, sp, 800
	sd	a1, 32(sp)
	addi	a1, sp, 804
	sd	a1, 24(sp)
	addi	a1, sp, 808
	sd	a1, 16(sp)
	addi	a1, sp, 812
	sd	a1, 8(sp)
	sext.w	a5, a5
	addi	t4, sp, 688
	addi	t5, sp, 672
	addi	t6, sp, 820
	addi	a1, sp, 816
	sd	a1, 0(sp)
	sd	a3, 640(sp)                     # 8-byte Folded Spill
	mv	a1, a3
	ld	a3, 648(sp)                     # 8-byte Folded Reload
	mv	a4, s7
	ld	a6, 464(sp)                     # 8-byte Folded Reload
	ld	a7, 280(sp)                     # 8-byte Folded Reload
	ld	t2, 288(sp)                     # 8-byte Folded Reload
	ld	s2, 200(sp)                     # 8-byte Folded Reload
	mv	t3, s2
	call	field_estimate
	li	a1, 1
	sd	s7, 664(sp)                     # 8-byte Folded Spill
	bnez	s2, .LBB0_151
# %bb.123:                              #   in Loop: Header=BB0_9 Depth=2
	lui	a0, %hi(M)
	lw	a0, %lo(M)(a0)
	bne	a0, a1, .LBB0_151
# %bb.124:                              #   in Loop: Header=BB0_9 Depth=2
	ld	a6, 648(sp)                     # 8-byte Folded Reload
	ld	a0, 640(sp)                     # 8-byte Folded Reload
	mv	t4, a0
	beq	s1, a1, .LBB0_126
# %bb.125:                              #   in Loop: Header=BB0_9 Depth=2
	mv	a6, a0
	ld	t4, 648(sp)                     # 8-byte Folded Reload
.LBB0_126:                              #   in Loop: Header=BB0_9 Depth=2
	lwu	a2, 740(sp)
	lw	a1, 736(sp)
	addi	a0, s1, -1
	snez	a0, a0
	ld	a3, 368(sp)                     # 8-byte Folded Reload
	slli	a3, a3, 1
	subw	a4, a2, a3
	ld	a5, 208(sp)                     # 8-byte Folded Reload
	subw	a7, a1, a5
	sgtz	t0, a4
	add	a4, a4, t0
	sraiw	n7, a4, 1
	sgtz	a4, a7
	add	a4, a7, a4
	sraiw	n3, a4, 1
	addi	a0, a0, -1
	lui	a4, %hi(height2)
	lw	a4, %lo(height2)(a4)
	ori	t3, a0, 1
	addw	t1, n7, a3
	addiw	n2, s11, -32
	slli	a4, a4, 1
	lui	a0, %hi(width2)
	lw	t0, %lo(width2)(a0)
	addiw	t2, a4, -32
	sraiw	a7, a2, 1
	srli	a0, a1, 1
	mulw	a0, t0, a0
	add	a0, a7, a0
	sd	t4, 616(sp)                     # 8-byte Folded Spill
	sd	a0, 608(sp)                     # 8-byte Folded Spill
	add	s0, t4, a0
	slli	a1, a1, 63
	srai	a1, a1, 63
	and	a1, a1, t0
	add	a1, s0, a1
	andi	a3, a2, 1
	add	a2, a1, a3
	add	a0, s0, a3
	addiw	a4, t0, -16
	addiw	t4, t1, -1
	sgtz	t5, t1
	slt	t6, n2, t4
	xori	t6, t6, 1
	and	t5, t5, t6
	andi	n12, t4, 1
	slti	t6, t1, 0
	slt	n1, n2, t1
	or	t6, t6, n1
	xori	t6, t6, 1
	andi	n9, n7, 1
	addi	a3, t1, 1
	sd	a3, 632(sp)                     # 8-byte Folded Spill
	slti	n4, t1, -1
	not	n4, n4
	slt	n2, t1, n2
	and	n2, n4, n2
	add	t3, t3, a5
	add	n3, t3, n3
	addi	a4, a4, 16
	ld	t3, 416(sp)                     # 8-byte Folded Reload
	add	t3, n7, t3
	srliw	n5, t3, 1
	add	n4, a6, n5
	add	n4, n4, n12
	add	n5, a6, n5
	add	s4, s4, s6
	ld	n6, 376(sp)                     # 8-byte Folded Reload
	sd	s4, 600(sp)                     # 8-byte Folded Spill
	add	n6, n6, s4
	addi	n8, s0, 16
	ld	n10, 424(sp)                    # 8-byte Folded Reload
	add	n10, n7, n10
	srliw	n11, n10, 1
	add	n9, a6, n9
	add	n9, n9, n11
	add	n11, a6, n11
	ld	a3, 344(sp)                     # 8-byte Folded Reload
	add	n7, n7, a3
	srliw	n13, n7, 1
	add	n7, a6, n13
	add	n12, n7, n12
	add	n13, a6, n13
	li	n14, -1
	lui	s7, 262144
                                        # implicit-def: $x22
                                        # implicit-def: $x20
                                        # implicit-def: $x41
                                        # implicit-def: $x38
	j	.LBB0_128
.LBB0_127:                              #   in Loop: Header=BB0_128 Depth=3
	addiw	n14, n14, 1
	beq	n14, s10, .LBB0_157
.LBB0_128:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_132 Depth 4
                                        #           Child Loop BB0_133 Depth 5
                                        #         Child Loop BB0_139 Depth 4
                                        #           Child Loop BB0_140 Depth 5
                                        #         Child Loop BB0_146 Depth 4
                                        #           Child Loop BB0_147 Depth 5
	addw	n15, n3, n14
	bltz	n15, .LBB0_127
# %bb.129:                              #   in Loop: Header=BB0_128 Depth=3
	blt	t2, n15, .LBB0_127
# %bb.130:                              #   in Loop: Header=BB0_128 Depth=3
	srliw	n16, n15, 1
	mulw	n16, n16, t0
	slli	n17, n15, 63
	srai	n17, n17, 63
	and	n17, n17, t0
	add	n17, n17, n16
	beqz	t5, .LBB0_137
# %bb.131:                              #   in Loop: Header=BB0_128 Depth=3
	li	n19, 0
	li	n18, 0
	li	n20, 0
	add	n21, n4, n17
	add	n22, n5, n17
	add	n23, n4, n16
	add	n24, n5, n16
.LBB0_132:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_128 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_133 Depth 5
	mv	n25, n6
	mv	n26, n24
	mv	a3, a0
	mv	n28, a1
	mv	n29, a2
	mv	n30, n23
	mv	n31, n22
	mv	s2, n21
	mv	s3, s0
.LBB0_133:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_128 Depth=3
                                        #         Parent Loop BB0_132 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	add	s5, s3, n19
	add	s8, s2, n19
	add	s10, n31, n19
	add	ra, n30, n19
	add	a7, n29, n19
	add	t3, n28, n19
	add	n27, a3, n19
	lbu	s5, 0(s5)
	lbu	n27, 0(n27)
	lbu	t3, 0(t3)
	lbu	a7, 0(a7)
	add	a5, n26, n19
	add	n1, n25, n19
	add	n27, s5, n27
	add	a7, t3, a7
	add	a7, n27, a7
	lbu	a5, 0(a5)
	lbu	t3, 0(ra)
	lbu	n27, 0(s10)
	lbu	s5, 0(s8)
	addi	a7, a7, 2
	srli	a7, a7, 2
	add	a5, a5, t3
	add	n27, n27, s5
	add	a5, a5, n27
	addi	a5, a5, 2
	srli	a5, a5, 2
	lbu	t3, 0(n1)
	add	a5, a7, a5
	addi	a5, a5, 1
	srli	a5, a5, 1
	subw	a5, a5, t3
	mul	a5, a5, a5
	addw	n18, a5, n18
	addi	s3, s3, 1
	addi	s2, s2, 1
	addi	n31, n31, 1
	addi	n30, n30, 1
	addi	n29, n29, 1
	addi	n28, n28, 1
	addi	a3, a3, 1
	addi	n26, n26, 1
	addi	n25, n25, 1
	bne	s3, n8, .LBB0_133
# %bb.134:                              #   in Loop: Header=BB0_132 Depth=4
	addiw	n20, n20, 1
	add	n19, n19, a4
	li	a3, 16
	bne	n20, a3, .LBB0_132
# %bb.135:                              #   in Loop: Header=BB0_128 Depth=3
	li	s10, 2
	bge	n18, s7, .LBB0_137
# %bb.136:                              #   in Loop: Header=BB0_128 Depth=3
	li	s4, -1
	mv	n7, t4
	mv	n10, n15
	mv	s6, n14
	mv	s7, n18
.LBB0_137:                              #   in Loop: Header=BB0_128 Depth=3
	beqz	t6, .LBB0_144
# %bb.138:                              #   in Loop: Header=BB0_128 Depth=3
	li	n19, 0
	li	n18, 0
	li	n20, 0
	add	n21, n9, n17
	add	n22, n11, n17
	add	n23, n9, n16
	add	n24, n11, n16
.LBB0_139:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_128 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_140 Depth 5
	mv	n25, n6
	mv	n26, n24
	mv	n27, a0
	mv	n28, a1
	mv	n29, a2
	mv	n30, n23
	mv	n31, n22
	mv	s2, n21
	mv	s3, s0
.LBB0_140:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_128 Depth=3
                                        #         Parent Loop BB0_139 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	add	a3, s3, n19
	add	a5, s2, n19
	add	a7, n31, n19
	add	t3, n30, n19
	add	n1, n29, n19
	add	s5, n28, n19
	add	s8, n27, n19
	lbu	a3, 0(a3)
	lbu	s8, 0(s8)
	lbu	s5, 0(s5)
	lbu	n1, 0(n1)
	add	s10, n26, n19
	add	ra, n25, n19
	add	a3, a3, s8
	add	n1, s5, n1
	add	a3, a3, n1
	lbu	n1, 0(s10)
	lbu	t3, 0(t3)
	lbu	a7, 0(a7)
	lbu	a5, 0(a5)
	addi	a3, a3, 2
	srli	a3, a3, 2
	add	t3, n1, t3
	add	a5, a7, a5
	add	a5, t3, a5
	addi	a5, a5, 2
	srli	a5, a5, 2
	lbu	a7, 0(ra)
	add	a3, a3, a5
	addi	a3, a3, 1
	srli	a3, a3, 1
	subw	a3, a3, a7
	mul	a3, a3, a3
	addw	n18, a3, n18
	addi	s3, s3, 1
	addi	s2, s2, 1
	addi	n31, n31, 1
	addi	n30, n30, 1
	addi	n29, n29, 1
	addi	n28, n28, 1
	addi	n27, n27, 1
	addi	n26, n26, 1
	addi	n25, n25, 1
	bne	s3, n8, .LBB0_140
# %bb.141:                              #   in Loop: Header=BB0_139 Depth=4
	addiw	n20, n20, 1
	add	n19, n19, a4
	li	a3, 16
	bne	n20, a3, .LBB0_139
# %bb.142:                              #   in Loop: Header=BB0_128 Depth=3
	li	s10, 2
	bge	n18, s7, .LBB0_144
# %bb.143:                              #   in Loop: Header=BB0_128 Depth=3
	li	s4, 0
	mv	n7, t1
	mv	n10, n15
	mv	s6, n14
	mv	s7, n18
.LBB0_144:                              #   in Loop: Header=BB0_128 Depth=3
	beqz	n2, .LBB0_127
# %bb.145:                              #   in Loop: Header=BB0_128 Depth=3
	li	n19, 0
	li	n18, 0
	li	n20, 0
	add	n21, n12, n17
	add	n17, n13, n17
	add	n22, n12, n16
	add	n16, n13, n16
.LBB0_146:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_128 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_147 Depth 5
	mv	n23, n6
	mv	n24, n16
	mv	n25, a0
	mv	n26, a1
	mv	n27, a2
	mv	n28, n22
	mv	n29, n17
	mv	n30, n21
	mv	n31, s0
.LBB0_147:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_128 Depth=3
                                        #         Parent Loop BB0_146 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	add	a3, n31, n19
	add	a5, n30, n19
	add	a7, n29, n19
	add	t3, n28, n19
	add	n1, n27, n19
	add	s2, n26, n19
	add	s3, n25, n19
	lbu	a3, 0(a3)
	lbu	s3, 0(s3)
	lbu	s2, 0(s2)
	lbu	n1, 0(n1)
	add	s5, n24, n19
	add	s8, n23, n19
	add	a3, a3, s3
	add	n1, s2, n1
	add	a3, a3, n1
	lbu	n1, 0(s5)
	lbu	t3, 0(t3)
	lbu	a7, 0(a7)
	lbu	a5, 0(a5)
	addi	a3, a3, 2
	srli	a3, a3, 2
	add	t3, n1, t3
	add	a5, a7, a5
	add	a5, t3, a5
	addi	a5, a5, 2
	srli	a5, a5, 2
	lbu	a7, 0(s8)
	add	a3, a3, a5
	addi	a3, a3, 1
	srli	a3, a3, 1
	subw	a3, a3, a7
	mul	a3, a3, a3
	addw	n18, a3, n18
	addi	n31, n31, 1
	addi	n30, n30, 1
	addi	n29, n29, 1
	addi	n28, n28, 1
	addi	n27, n27, 1
	addi	n26, n26, 1
	addi	n25, n25, 1
	addi	n24, n24, 1
	addi	n23, n23, 1
	bne	n31, n8, .LBB0_147
# %bb.148:                              #   in Loop: Header=BB0_146 Depth=4
	addiw	n20, n20, 1
	add	n19, n19, a4
	li	a3, 16
	bne	n20, a3, .LBB0_146
# %bb.149:                              #   in Loop: Header=BB0_128 Depth=3
	bge	n18, s7, .LBB0_127
# %bb.150:                              #   in Loop: Header=BB0_128 Depth=3
	li	s4, 1
	ld	n7, 632(sp)                     # 8-byte Folded Reload
	mv	n10, n15
	mv	s6, n14
	mv	s7, n18
	j	.LBB0_127
.LBB0_151:                              #   in Loop: Header=BB0_9 Depth=2
	lw	a0, 800(sp)
	lw	a1, 804(sp)
                                        # implicit-def: $x22
                                        # implicit-def: $x12
                                        # kill: killed $x12
	ld	t3, 352(sp)                     # 8-byte Folded Reload
	ld	t5, 344(sp)                     # 8-byte Folded Reload
	ld	t6, 328(sp)                     # 8-byte Folded Reload
	ld	n1, 336(sp)                     # 8-byte Folded Reload
	ld	n2, 320(sp)                     # 8-byte Folded Reload
	ld	a2, 640(sp)                     # 8-byte Folded Reload
	mv	s4, s0
	blt	a0, a1, .LBB0_152
	j	.LBB0_222
.LBB0_152:                              #   in Loop: Header=BB0_9 Depth=2
	mv	s0, n2
	mv	s8, t6
	mv	s5, t5
	lw	a1, 792(sp)
	li	s2, 2
	mv	s3, t3
	sw	s2, 4(t3)
	mv	a0, a2
	beqz	a1, .LBB0_154
# %bb.153:                              #   in Loop: Header=BB0_9 Depth=2
	ld	a0, 648(sp)                     # 8-byte Folded Reload
.LBB0_154:                              #   in Loop: Header=BB0_9 Depth=2
	lw	a3, 820(sp)
	lw	a4, 816(sp)
	srai	a1, a3, 1
	add	a0, a0, a1
	srli	a1, a4, 1
	mulw	a1, a1, s11
	add	a0, a0, a1
	andi	a3, a3, 1
	andi	a4, a4, 1
	li	a5, 8
	mv	a1, s7
	mv	a2, s11
	call	dist2
	lw	a1, 788(sp)
	mv	s7, a0
	ld	a0, 640(sp)                     # 8-byte Folded Reload
	beqz	a1, .LBB0_156
# %bb.155:                              #   in Loop: Header=BB0_9 Depth=2
	ld	a0, 648(sp)                     # 8-byte Folded Reload
.LBB0_156:                              #   in Loop: Header=BB0_9 Depth=2
	lw	a3, 812(sp)
	lw	a4, 808(sp)
	srai	a1, a3, 1
	add	a0, a0, a1
	srli	a1, a4, 1
	mulw	a1, a1, s11
	add	a0, a0, a1
	ld	a1, 272(sp)                     # 8-byte Folded Reload
	slliw	a1, a1, 4
	ld	a2, 664(sp)                     # 8-byte Folded Reload
	add	a1, a2, a1
	andi	a3, a3, 1
	andi	a4, a4, 1
	li	a5, 8
	mv	a2, s11
	call	dist2
	addw	s7, a0, s7
	ld	t2, 536(sp)                     # 8-byte Folded Reload
	mv	t3, s3
	li	t4, 1
	mv	t5, s5
	mv	t6, s8
	ld	n1, 336(sp)                     # 8-byte Folded Reload
	mv	n2, s0
	ld	a6, 368(sp)                     # 8-byte Folded Reload
	mv	s0, s4
	ld	s4, 632(sp)                     # 8-byte Folded Reload
	ld	a4, 296(sp)                     # 8-byte Folded Reload
	ld	a3, 656(sp)                     # 8-byte Folded Reload
	bge	a3, s7, .LBB0_280
	j	.LBB0_225
.LBB0_280:                              #   in Loop: Header=BB0_9 Depth=2
	j	.LBB0_227
.LBB0_157:                              #   in Loop: Header=BB0_9 Depth=2
	li	t2, 0
	li	t1, 0
	li	t4, 0
	sraiw	a3, n7, 1
	add	a3, a6, a3
	sraiw	a5, n10, 1
	mulw	a6, a5, t0
	add	a6, a3, a6
	slli	n10, n10, 63
	srai	a3, n10, 63
	and	t0, a3, t0
	add	t0, a6, t0
	andi	t6, n7, 1
	add	t5, t0, t6
	add	t6, a6, t6
	ld	t3, 376(sp)                     # 8-byte Folded Reload
	ld	a3, 600(sp)                     # 8-byte Folded Reload
	add	t3, t3, a3
	ld	a5, 616(sp)                     # 8-byte Folded Reload
	ld	a3, 608(sp)                     # 8-byte Folded Reload
	add	a5, a5, a3
	addi	a5, a5, 16
.LBB0_158:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_159 Depth 4
	mv	a7, t3
	mv	n1, a6
	mv	n2, a0
	mv	n3, a1
	mv	n4, a2
	mv	n5, t6
	mv	n6, t0
	mv	n7, t5
	mv	n8, s0
.LBB0_159:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_158 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add	a3, n8, t2
	add	n9, n7, t2
	add	n10, n6, t2
	add	n11, n5, t2
	add	n12, n4, t2
	add	n13, n3, t2
	add	n14, n2, t2
	lbu	a3, 0(a3)
	lbu	n14, 0(n14)
	lbu	n13, 0(n13)
	lbu	n12, 0(n12)
	add	n15, n1, t2
	add	n16, a7, t2
	add	a3, a3, n14
	add	n12, n13, n12
	add	a3, a3, n12
	lbu	n12, 0(n15)
	lbu	n11, 0(n11)
	lbu	n10, 0(n10)
	lbu	n9, 0(n9)
	addi	a3, a3, 2
	srli	a3, a3, 2
	add	n11, n12, n11
	add	n9, n10, n9
	add	n9, n11, n9
	addi	n9, n9, 2
	srli	n9, n9, 2
	lbu	n10, 0(n16)
	add	a3, a3, n9
	addi	a3, a3, 1
	srli	a3, a3, 1
	sub	a3, a3, n10
	sraiw	n9, a3, 31
	xor	a3, a3, n9
	subw	t1, n9, t1
	subw	t1, a3, t1
	addi	n8, n8, 1
	addi	n7, n7, 1
	addi	n6, n6, 1
	addi	n5, n5, 1
	addi	n4, n4, 1
	addi	n3, n3, 1
	addi	n2, n2, 1
	addi	n1, n1, 1
	addi	a7, a7, 1
	bne	n8, a5, .LBB0_159
# %bb.160:                              #   in Loop: Header=BB0_158 Depth=3
	addiw	t4, t4, 1
	add	t2, t2, a4
	li	a3, 16
	bne	t4, a3, .LBB0_158
# %bb.161:                              #   in Loop: Header=BB0_9 Depth=2
	lw	a0, 800(sp)
	lw	a1, 804(sp)
	blt	t1, a0, .LBB0_162
	j	.LBB0_219
.LBB0_162:                              #   in Loop: Header=BB0_9 Depth=2
	ld	t2, 536(sp)                     # 8-byte Folded Reload
	ld	s0, 248(sp)                     # 8-byte Folded Reload
	ld	t3, 352(sp)                     # 8-byte Folded Reload
	li	t4, 1
	ld	t5, 344(sp)                     # 8-byte Folded Reload
	ld	t6, 328(sp)                     # 8-byte Folded Reload
	ld	n1, 336(sp)                     # 8-byte Folded Reload
	ld	n2, 320(sp)                     # 8-byte Folded Reload
	ld	a6, 368(sp)                     # 8-byte Folded Reload
	blt	t1, a1, .LBB0_163
	j	.LBB0_220
.LBB0_163:                              #   in Loop: Header=BB0_9 Depth=2
	li	s2, 3
	sw	s2, 4(t3)
	ld	a4, 296(sp)                     # 8-byte Folded Reload
	ld	a3, 656(sp)                     # 8-byte Folded Reload
	bge	a3, s7, .LBB0_281
	j	.LBB0_225
.LBB0_281:                              #   in Loop: Header=BB0_9 Depth=2
	j	.LBB0_227
.LBB0_164:                              #   in Loop: Header=BB0_9 Depth=2
	addi	s4, sp, 672
	sd	s4, 40(sp)
	addi	s5, sp, 688
	sd	s5, 32(sp)
	addi	a0, sp, 712
	sd	a0, 24(sp)
	addi	a0, sp, 716
	sd	a0, 16(sp)
	addi	a0, sp, 732
	sd	a0, 8(sp)
	sext.w	s1, s1
	addi	a7, sp, 812
	addi	t2, sp, 808
	addi	t3, sp, 780
	addi	t4, sp, 776
	addi	t5, sp, 772
	addi	t6, sp, 768
	addi	a0, sp, 744
	sd	a0, 0(sp)
	mv	a0, s0
	ld	s2, 536(sp)                     # 8-byte Folded Reload
	mv	a1, s2
	mv	a3, s1
	ld	s3, 464(sp)                     # 8-byte Folded Reload
	mv	a4, s3
	ld	a5, 280(sp)                     # 8-byte Folded Reload
	ld	a6, 288(sp)                     # 8-byte Folded Reload
	mv	s6, n3
	mv	s7, a2
	call	frame_estimate
	sd	s4, 40(sp)
	sd	s5, 32(sp)
	addi	a0, sp, 704
	sd	a0, 24(sp)
	addi	a0, sp, 708
	sd	a0, 16(sp)
	addi	a0, sp, 728
	sd	a0, 8(sp)
	addi	a7, sp, 804
	addi	t2, sp, 800
	addi	t3, sp, 764
	addi	t4, sp, 760
	addi	t5, sp, 756
	addi	t6, sp, 752
	addi	a0, sp, 740
	sd	a0, 0(sp)
	ld	a0, 232(sp)                     # 8-byte Folded Reload
	ld	s0, 312(sp)                     # 8-byte Folded Reload
	mv	a1, s0
	sd	s7, 192(sp)                     # 8-byte Folded Spill
	mv	a2, s7
	mv	a3, s1
	mv	a4, s3
	ld	a5, 216(sp)                     # 8-byte Folded Reload
	ld	a6, 224(sp)                     # 8-byte Folded Reload
	call	frame_estimate
	lwu	a1, 812(sp)
	lw	a3, 808(sp)
	li	t0, 0
	li	a0, 0
	li	t1, 0
	sraiw	a2, a1, 1
	add	t2, s2, a2
	srai	t5, a3, 1
	lwu	a4, 804(sp)
	mulw	n7, t5, s6
	lw	a5, 800(sp)
	sd	t2, 520(sp)                     # 8-byte Folded Spill
	add	t2, t2, n7
	sraiw	t6, a4, 1
	add	t3, s0, t6
	srai	a6, a5, 1
	sd	a6, 496(sp)                     # 8-byte Folded Spill
	mulw	n6, a6, s6
	sd	t3, 504(sp)                     # 8-byte Folded Spill
	add	t3, t3, n6
	sd	a1, 664(sp)                     # 8-byte Folded Spill
	andi	a6, a1, 1
	sd	a3, 656(sp)                     # 8-byte Folded Spill
	andi	a1, a3, 1
	sd	a4, 648(sp)                     # 8-byte Folded Spill
	andi	a3, a4, 1
	sd	a5, 640(sp)                     # 8-byte Folded Spill
	andi	a5, a5, 1
	sd	a5, 512(sp)                     # 8-byte Folded Spill
	mulw	n8, a5, s6
	add	n1, t3, n8
	add	n2, t3, a3
	sd	a1, 528(sp)                     # 8-byte Folded Spill
	mulw	n9, a1, s6
	add	n3, t2, n9
	add	n4, t2, a6
	mv	t4, s6
	addiw	n5, s6, -16
	addi	n5, n5, 16
	add	n6, t6, n6
	add	n8, n8, a3
	add	n6, n6, n8
	add	n6, s0, n6
	add	n10, a2, n7
	add	n9, n9, a6
	add	n7, n10, n9
	add	n7, s2, n7
	ld	n8, 376(sp)                     # 8-byte Folded Reload
	ld	a7, 304(sp)                     # 8-byte Folded Reload
	add	n8, n8, a7
	ld	n9, 408(sp)                     # 8-byte Folded Reload
	add	n9, n9, n10
.LBB0_165:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_166 Depth 4
	mv	n10, n8
	mv	n11, t3
	mv	n12, n4
	mv	n13, n3
	mv	n14, n7
	mv	n15, n2
	mv	n16, n1
	mv	n17, n6
	mv	n18, t2
.LBB0_166:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_165 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add	n19, n18, t0
	add	n20, n17, t0
	add	n21, n16, t0
	add	n22, n15, t0
	add	n23, n14, t0
	add	n24, n13, t0
	add	n25, n12, t0
	lbu	n19, 0(n19)
	lbu	n25, 0(n25)
	lbu	n24, 0(n24)
	lbu	n23, 0(n23)
	add	n26, n11, t0
	add	n27, n10, t0
	add	n19, n19, n25
	add	n23, n24, n23
	add	n19, n19, n23
	lbu	n23, 0(n26)
	lbu	n22, 0(n22)
	lbu	n21, 0(n21)
	lbu	n20, 0(n20)
	addi	n19, n19, 2
	srli	n19, n19, 2
	add	n22, n23, n22
	add	n20, n21, n20
	add	n20, n22, n20
	addi	n20, n20, 2
	srli	n20, n20, 2
	lbu	n21, 0(n27)
	add	n19, n19, n20
	addi	n19, n19, 1
	srli	n19, n19, 1
	sub	n19, n19, n21
	sraiw	n20, n19, 31
	xor	n19, n19, n20
	subw	a0, n20, a0
	subw	a0, n19, a0
	addi	n18, n18, 1
	addi	n17, n17, 1
	addi	n16, n16, 1
	addi	n15, n15, 1
	addi	n14, n14, 1
	addi	n13, n13, 1
	addi	n12, n12, 1
	addi	n11, n11, 1
	addi	n10, n10, 1
	bne	n18, n9, .LBB0_166
# %bb.167:                              #   in Loop: Header=BB0_165 Depth=3
	addiw	t1, t1, 1
	add	t0, t0, n5
	li	a1, 16
	bne	t1, a1, .LBB0_165
# %bb.168:                              #   in Loop: Header=BB0_9 Depth=2
	lwu	t1, 780(sp)
	lw	a1, 716(sp)
	li	n9, 0
	li	n11, 0
	li	n10, 0
	sraiw	n1, t1, 1
	ld	a4, 536(sp)                     # 8-byte Folded Reload
	add	n7, a4, n1
	sd	a1, 632(sp)                     # 8-byte Folded Spill
	seqz	n5, a1
	lw	t2, 776(sp)
	addiw	t0, n5, -1
	and	n19, t0, t4
	slli	n13, t4, 1
	srai	n2, t2, 1
	mulw	n20, n2, n13
	lwu	t3, 764(sp)
	add	n14, n7, n20
	add	n14, n14, n19
	lw	t0, 708(sp)
	sraiw	n4, t3, 1
	ld	a1, 312(sp)                     # 8-byte Folded Reload
	add	n8, a1, n4
	lw	n12, 760(sp)
	sd	t0, 616(sp)                     # 8-byte Folded Spill
	seqz	n6, t0
	addiw	t0, n6, -1
	and	n16, t0, t4
	srai	n3, n12, 1
	mulw	n17, n3, n13
	add	n15, n8, n17
	add	n15, n15, n16
	sd	t1, 624(sp)                     # 8-byte Folded Spill
	andi	t0, t1, 1
	sd	t2, 592(sp)                     # 8-byte Folded Spill
	andi	t2, t2, 1
	sd	t3, 608(sp)                     # 8-byte Folded Spill
	andi	t1, t3, 1
	sd	n12, 600(sp)                    # 8-byte Folded Spill
	andi	t3, n12, 1
	mulw	n18, t3, n13
	mulw	n21, t2, n13
	addiw	n12, n13, -16
	addi	a5, n12, 16
	add	n17, n4, n17
	add	n22, n16, n17
	add	n17, n22, n18
	add	n16, a1, t1
	add	n16, n16, n17
	add	n17, a1, n17
	add	n18, a1, t1
	add	n18, n18, n22
	add	n20, n1, n20
	add	n23, n19, n20
	add	n20, n23, n21
	add	n19, a4, t0
	add	n19, n19, n20
	add	n20, a4, n20
	add	n21, a4, t0
	add	n21, n21, n23
	ld	n22, 376(sp)                    # 8-byte Folded Reload
	add	n22, n22, a7
	ld	a1, 408(sp)                     # 8-byte Folded Reload
	add	n23, a1, n23
.LBB0_169:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_170 Depth 4
	mv	n24, n22
	mv	n25, n15
	mv	n26, n21
	mv	n27, n20
	mv	n28, n19
	mv	n29, n18
	mv	n30, n17
	mv	n31, n16
	mv	s0, n14
.LBB0_170:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_169 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add	s1, s0, n9
	add	s2, n31, n9
	add	s3, n30, n9
	add	s4, n29, n9
	add	s5, n28, n9
	add	s6, n27, n9
	add	s7, n26, n9
	lbu	s1, 0(s1)
	lbu	s7, 0(s7)
	lbu	s6, 0(s6)
	lbu	s5, 0(s5)
	add	s8, n25, n9
	add	s10, n24, n9
	add	s1, s1, s7
	add	s5, s6, s5
	add	s1, s1, s5
	lbu	s5, 0(s8)
	lbu	s4, 0(s4)
	lbu	s3, 0(s3)
	lbu	s2, 0(s2)
	addi	s1, s1, 2
	srli	s1, s1, 2
	add	s4, s5, s4
	add	s2, s3, s2
	add	s2, s4, s2
	addi	s2, s2, 2
	srli	s2, s2, 2
	lbu	s3, 0(s10)
	add	s1, s1, s2
	addi	s1, s1, 1
	srli	s1, s1, 1
	sub	s1, s1, s3
	sraiw	s2, s1, 31
	xor	s1, s1, s2
	subw	n11, s2, n11
	subw	n11, s1, n11
	addi	s0, s0, 1
	addi	n31, n31, 1
	addi	n30, n30, 1
	addi	n29, n29, 1
	addi	n28, n28, 1
	addi	n27, n27, 1
	addi	n26, n26, 1
	addi	n25, n25, 1
	addi	n24, n24, 1
	bne	s0, n23, .LBB0_170
# %bb.171:                              #   in Loop: Header=BB0_169 Depth=3
	addiw	n10, n10, 1
	add	n9, n9, a5
	bne	n10, s9, .LBB0_169
# %bb.172:                              #   in Loop: Header=BB0_9 Depth=2
	lwu	n12, 772(sp)
	li	a4, 0
	li	n14, 0
	li	n16, 0
	lw	a1, 712(sp)
	sraiw	s11, n12, 1
	ld	a7, 536(sp)                     # 8-byte Folded Reload
	add	n9, a7, s11
	lw	n24, 768(sp)
	sd	a1, 560(sp)                     # 8-byte Folded Spill
	seqz	n10, a1
	sd	n10, 488(sp)                    # 8-byte Folded Spill
	addiw	n10, n10, -1
	and	n21, n10, t4
	srai	a1, n24, 1
	sd	a1, 480(sp)                     # 8-byte Folded Spill
	mulw	n22, a1, n13
	lwu	s1, 756(sp)
	add	n17, n9, n22
	add	n17, n17, n21
	lw	n15, 704(sp)
	sraiw	s4, s1, 1
	ld	a1, 312(sp)                     # 8-byte Folded Reload
	add	n10, a1, s4
	lw	n23, 752(sp)
	sd	n15, 576(sp)                    # 8-byte Folded Spill
	seqz	n18, n15
	sd	n18, 456(sp)                    # 8-byte Folded Spill
	addiw	n18, n18, -1
	and	n19, n18, t4
	srai	n15, n23, 1
	sd	n15, 448(sp)                    # 8-byte Folded Spill
	mulw	n20, n15, n13
	add	n18, n10, n20
	add	n18, n18, n19
	sd	n12, 584(sp)                    # 8-byte Folded Spill
	andi	s7, n12, 1
	sd	n24, 544(sp)                    # 8-byte Folded Spill
	andi	s6, n24, 1
	sd	s1, 568(sp)                     # 8-byte Folded Spill
	andi	s1, s1, 1
	sd	n23, 552(sp)                    # 8-byte Folded Spill
	andi	n12, n23, 1
	sd	n12, 472(sp)                    # 8-byte Folded Spill
	mulw	n23, n12, n13
	mulw	n24, s6, n13
	add	n20, s4, n20
	add	n20, n19, n20
	add	n19, n20, n23
	add	n13, a1, s1
	add	n13, n13, n19
	add	n19, a1, n19
	add	n23, a1, s1
	add	n20, n23, n20
	add	n22, s11, n22
	add	n25, n21, n22
	add	n22, n25, n24
	add	n21, a7, s7
	add	n21, n21, n22
	add	n22, a7, n22
	add	n23, a7, s7
	add	n23, n23, n25
	ld	n24, 304(sp)                    # 8-byte Folded Reload
	add	n24, t4, n24
	ld	a1, 376(sp)                     # 8-byte Folded Reload
	add	n24, a1, n24
	ld	a1, 408(sp)                     # 8-byte Folded Reload
	add	n25, a1, n25
.LBB0_173:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_174 Depth 4
	mv	n26, n24
	mv	n27, n18
	mv	n28, n23
	mv	n29, n22
	mv	n30, n21
	mv	n31, n20
	mv	s0, n19
	mv	s2, n13
	mv	s3, n17
.LBB0_174:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_173 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add	s5, s3, a4
	add	s8, s2, a4
	add	s10, s0, a4
	add	ra, n31, a4
	add	n15, n30, a4
	add	n12, n29, a4
	add	a1, n28, a4
	lbu	s5, 0(s5)
	lbu	a1, 0(a1)
	lbu	n12, 0(n12)
	lbu	n15, 0(n15)
	add	t4, n27, a4
	add	a7, n26, a4
	add	a1, s5, a1
	add	n12, n12, n15
	add	a1, a1, n12
	lbu	t4, 0(t4)
	lbu	n12, 0(ra)
	lbu	n15, 0(s10)
	lbu	s5, 0(s8)
	addi	a1, a1, 2
	srli	a1, a1, 2
	add	t4, t4, n12
	add	n15, n15, s5
	add	t4, t4, n15
	addi	t4, t4, 2
	srli	t4, t4, 2
	lbu	a7, 0(a7)
	add	a1, a1, t4
	addi	a1, a1, 1
	srli	a1, a1, 1
	sub	a1, a1, a7
	sraiw	a7, a1, 31
	xor	a1, a1, a7
	subw	a7, a7, n14
	subw	n14, a1, a7
	addi	s3, s3, 1
	addi	s2, s2, 1
	addi	s0, s0, 1
	addi	n31, n31, 1
	addi	n30, n30, 1
	addi	n29, n29, 1
	addi	n28, n28, 1
	addi	n27, n27, 1
	addi	n26, n26, 1
	bne	s3, n25, .LBB0_174
# %bb.175:                              #   in Loop: Header=BB0_173 Depth=3
	addiw	n16, n16, 1
	add	a4, a4, a5
	bne	n16, s9, .LBB0_173
# %bb.176:                              #   in Loop: Header=BB0_9 Depth=2
	lw	n16, 744(sp)
	lw	n15, 732(sp)
	lw	n12, 740(sp)
	lw	n13, 728(sp)
	addw	n11, n14, n11
	bge	a0, n11, .LBB0_205
# %bb.177:                              #   in Loop: Header=BB0_9 Depth=2
	bge	a0, n16, .LBB0_205
# %bb.178:                              #   in Loop: Header=BB0_9 Depth=2
	bge	a0, n15, .LBB0_205
# %bb.179:                              #   in Loop: Header=BB0_9 Depth=2
	bge	a0, n12, .LBB0_205
# %bb.180:                              #   in Loop: Header=BB0_9 Depth=2
	bge	a0, n13, .LBB0_205
# %bb.181:                              #   in Loop: Header=BB0_9 Depth=2
	li	a0, 1
	slli	a0, a0, 33
	addi	a0, a0, 12
	ld	a1, 352(sp)                     # 8-byte Folded Reload
	sd	a0, 0(a1)
	lui	a0, %hi(width)
	lw	t4, %lo(width)(a0)
	li	t0, 0
	li	a0, 0
	li	t1, 0
	mulw	t5, t4, t5
	ld	a5, 520(sp)                     # 8-byte Folded Reload
	add	a5, a5, t5
	ld	a1, 496(sp)                     # 8-byte Folded Reload
	mulw	n1, t4, a1
	ld	a1, 504(sp)                     # 8-byte Folded Reload
	add	a1, a1, n1
	ld	a4, 512(sp)                     # 8-byte Folded Reload
	mulw	n2, t4, a4
	add	a4, a1, n2
	add	t2, a1, a3
	ld	a7, 528(sp)                     # 8-byte Folded Reload
	mulw	n3, t4, a7
	add	a7, a5, n3
	add	t3, a5, a6
	addiw	t4, t4, -16
	addi	t4, t4, 16
	add	t6, t6, n1
	add	a3, n2, a3
	add	a3, t6, a3
	ld	t6, 312(sp)                     # 8-byte Folded Reload
	add	a3, t6, a3
	add	t5, a2, t5
	add	a6, n3, a6
	add	a2, t5, a6
	ld	a6, 536(sp)                     # 8-byte Folded Reload
	add	a2, a6, a2
	ld	a6, 376(sp)                     # 8-byte Folded Reload
	ld	t6, 304(sp)                     # 8-byte Folded Reload
	add	a6, a6, t6
	ld	t6, 408(sp)                     # 8-byte Folded Reload
	add	t5, t6, t5
	li	s10, 2
	ld	s3, 240(sp)                     # 8-byte Folded Reload
.LBB0_182:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_183 Depth 4
	mv	t6, a6
	mv	n1, a1
	mv	n2, t3
	mv	n3, a7
	mv	n4, a2
	mv	n5, t2
	mv	n6, a4
	mv	n7, a3
	mv	n8, a5
.LBB0_183:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_182 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add	n9, n8, t0
	add	n10, n7, t0
	add	n11, n6, t0
	add	n12, n5, t0
	add	n13, n4, t0
	add	n14, n3, t0
	add	n15, n2, t0
	lbu	n9, 0(n9)
	lbu	n15, 0(n15)
	lbu	n14, 0(n14)
	lbu	n13, 0(n13)
	add	n16, n1, t0
	add	n17, t6, t0
	add	n9, n9, n15
	add	n13, n14, n13
	add	n9, n9, n13
	lbu	n13, 0(n16)
	lbu	n12, 0(n12)
	lbu	n11, 0(n11)
	lbu	n10, 0(n10)
	addi	n9, n9, 2
	srli	n9, n9, 2
	add	n12, n13, n12
	add	n10, n11, n10
	add	n10, n12, n10
	addi	n10, n10, 2
	srli	n10, n10, 2
	lbu	n11, 0(n17)
	add	n9, n9, n10
	addi	n9, n9, 1
	srli	n9, n9, 1
	subw	n9, n9, n11
	mul	n9, n9, n9
	addw	a0, n9, a0
	addi	n8, n8, 1
	addi	n7, n7, 1
	addi	n6, n6, 1
	addi	n5, n5, 1
	addi	n4, n4, 1
	addi	n3, n3, 1
	addi	n2, n2, 1
	addi	n1, n1, 1
	addi	t6, t6, 1
	bne	n8, t5, .LBB0_183
# %bb.184:                              #   in Loop: Header=BB0_182 Depth=3
	addiw	t1, t1, 1
	add	t0, t0, t4
	li	t6, 16
	bne	t1, t6, .LBB0_182
# %bb.185:                              #   in Loop: Header=BB0_9 Depth=2
	li	s0, 1
	j	.LBB0_218
.LBB0_186:                              #   in Loop: Header=BB0_9 Depth=2
	slli	a0, t4, 33
	sd	a0, 0(t3)
	sd	zero, 24(t3)
	sw	a4, 88(t3)
	ld	a4, 296(sp)                     # 8-byte Folded Reload
	j	.LBB0_8
.LBB0_187:                              #   in Loop: Header=BB0_9 Depth=2
	bge	t5, t4, .LBB0_237
# %bb.188:                              #   in Loop: Header=BB0_9 Depth=2
	bge	t5, a5, .LBB0_237
# %bb.189:                              #   in Loop: Header=BB0_9 Depth=2
	bge	t5, a7, .LBB0_237
# %bb.190:                              #   in Loop: Header=BB0_9 Depth=2
	li	s1, 1
	slli	a0, s1, 32
	addi	a0, a0, 8
	ld	a1, 352(sp)                     # 8-byte Folded Reload
	sd	a0, 0(a1)
	lui	a0, %hi(width)
	lw	a0, %lo(width)(a0)
	ld	a1, 648(sp)                     # 8-byte Folded Reload
	addi	a1, a1, -1
	and	a0, a1, a0
	ld	a1, 640(sp)                     # 8-byte Folded Reload
	add	a1, t2, a1
	ld	a2, 632(sp)                     # 8-byte Folded Reload
	add	a1, a1, a2
	add	a0, a1, a0
	li	a5, 16
	ld	a1, 664(sp)                     # 8-byte Folded Reload
	mv	a2, s11
	mv	a3, a6
	ld	a4, 176(sp)                     # 8-byte Folded Reload
	call	dist2
	j	.LBB0_256
.LBB0_191:                              #   in Loop: Header=BB0_9 Depth=2
	lw	a2, 748(sp)
	lw	a4, 736(sp)
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
.LBB0_192:                              #   in Loop: Header=BB0_9 Depth=2
	ld	t3, 352(sp)                     # 8-byte Folded Reload
	ld	a6, 272(sp)                     # 8-byte Folded Reload
	ld	a1, 192(sp)                     # 8-byte Folded Reload
	bge	a4, a2, .LBB0_251
.LBB0_193:                              #   in Loop: Header=BB0_9 Depth=2
	lw	a0, 724(sp)
	li	s2, 1
	sw	s2, 4(t3)
	seqz	a0, a0
	lw	a3, 796(sp)
	addiw	a0, a0, -1
	and	a0, a0, a6
	lw	a4, 792(sp)
	srai	a2, a3, 1
	add	a5, s0, a2
	slliw	s4, a6, 1
	srliw	a2, a4, 1
	mulw	a2, a2, s4
	add	a2, a5, a2
	add	a0, a2, a0
	andi	a3, a3, 1
	andi	a4, a4, 1
	li	a5, 8
	mv	a2, s4
	mv	s1, a6
	mv	s5, a1
	call	dist2
	lw	a1, 720(sp)
	mv	s6, a0
	seqz	a0, a1
	lw	a3, 788(sp)
	addiw	a0, a0, -1
	lw	a4, 784(sp)
	and	a0, a0, s1
	srai	a1, a3, 1
	add	a1, s0, a1
	srliw	a2, a4, 1
	mulw	a2, a2, s4
	add	a1, a1, a2
	add	a0, a1, a0
	add	a1, s5, s1
	andi	a3, a3, 1
	andi	a4, a4, 1
	li	a5, 8
	mv	a2, s4
	call	dist2
	ld	t3, 352(sp)                     # 8-byte Folded Reload
	addw	n28, a0, s6
	j	.LBB0_43
.LBB0_194:                              #   in Loop: Header=BB0_9 Depth=2
	li	a1, 0
	li	a3, 0
	li	t3, 0
	ld	t1, 624(sp)                     # 8-byte Folded Reload
	sraiw	a5, t1, 1
	ld	t0, 632(sp)                     # 8-byte Folded Reload
	sraiw	a0, t0, 1
	ld	n2, 528(sp)                     # 8-byte Folded Reload
	mulw	a7, a0, n2
	add	n3, a5, a7
	ld	n5, 536(sp)                     # 8-byte Folded Reload
	add	t4, n3, n5
	ld	n1, 600(sp)                     # 8-byte Folded Reload
	sraiw	a0, n1, 1
	ld	t5, 520(sp)                     # 8-byte Folded Reload
	add	t5, t5, a0
	ld	a6, 592(sp)                     # 8-byte Folded Reload
	sraiw	a2, a6, 1
	mulw	a4, a2, n2
	add	t5, t5, a4
	slli	a2, a6, 63
	srai	a2, a2, 63
	and	a6, a2, n2
	add	t6, t5, a6
	andi	n4, n1, 1
	add	n1, t5, n4
	slli	a2, t0, 63
	srai	a2, a2, 63
	and	t0, a2, n2
	add	a2, t4, t0
	andi	t1, t1, 1
	ld	n2, 272(sp)                     # 8-byte Folded Reload
	add	a0, n2, a0
	add	a0, a0, a4
	add	n2, a2, t1
	add	a0, a6, a0
	add	a4, t4, t1
	add	n4, n5, n4
	add	n4, n4, a0
	ld	n5, 376(sp)                     # 8-byte Folded Reload
	ld	a0, 304(sp)                     # 8-byte Folded Reload
	add	n5, n5, a0
	ld	a0, 408(sp)                     # 8-byte Folded Reload
	add	n3, a0, n3
	ld	s3, 240(sp)                     # 8-byte Folded Reload
.LBB0_195:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_196 Depth 4
	mv	n6, n5
	mv	n7, t5
	mv	n8, a4
	mv	n9, a2
	mv	n10, n2
	mv	n11, n1
	mv	n12, t6
	mv	n13, n4
	mv	n14, t4
.LBB0_196:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_195 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add	a0, n14, a1
	add	a6, n13, a1
	add	n15, n12, a1
	add	n16, n11, a1
	add	n17, n10, a1
	add	n18, n9, a1
	add	n19, n8, a1
	lbu	a0, 0(a0)
	lbu	n19, 0(n19)
	lbu	n18, 0(n18)
	lbu	n17, 0(n17)
	add	n20, n7, a1
	add	n21, n6, a1
	add	a0, a0, n19
	add	n17, n18, n17
	add	a0, a0, n17
	lbu	n17, 0(n20)
	lbu	n16, 0(n16)
	lbu	n15, 0(n15)
	lbu	a6, 0(a6)
	addi	a0, a0, 2
	srli	a0, a0, 2
	add	n16, n17, n16
	add	a6, n15, a6
	add	a6, n16, a6
	addi	a6, a6, 2
	srli	a6, a6, 2
	lbu	n15, 0(n21)
	add	a0, a0, a6
	addi	a0, a0, 1
	srli	a0, a0, 1
	sub	a0, a0, n15
	sraiw	a6, a0, 31
	xor	a0, a0, a6
	subw	a3, a6, a3
	subw	a3, a0, a3
	addi	n14, n14, 1
	addi	n13, n13, 1
	addi	n12, n12, 1
	addi	n11, n11, 1
	addi	n10, n10, 1
	addi	n9, n9, 1
	addi	n8, n8, 1
	addi	n7, n7, 1
	addi	n6, n6, 1
	bne	n14, n3, .LBB0_196
# %bb.197:                              #   in Loop: Header=BB0_195 Depth=3
	addiw	t3, t3, 1
	add	a1, a1, t2
	bne	t3, s9, .LBB0_195
# %bb.198:                              #   in Loop: Header=BB0_9 Depth=2
	li	t3, 0
	li	a1, 0
	li	t4, 0
	ld	a4, 520(sp)                     # 8-byte Folded Reload
	add	a4, a4, a5
	add	a4, a4, a7
	ld	t6, 616(sp)                     # 8-byte Folded Reload
	sraiw	a0, t6, 1
	ld	a2, 536(sp)                     # 8-byte Folded Reload
	add	a0, a2, a0
	ld	n1, 608(sp)                     # 8-byte Folded Reload
	sraiw	a2, n1, 1
	ld	a6, 528(sp)                     # 8-byte Folded Reload
	mulw	t5, a2, a6
	add	t5, a0, t5
	slli	a0, n1, 63
	srai	a0, a0, 63
	and	a2, a0, a6
	add	a2, t5, a2
	andi	t6, t6, 1
	add	a6, a2, t6
	add	t6, t5, t6
	add	t0, a4, t0
	add	n1, t0, t1
	add	t1, a4, t1
	ld	n2, 376(sp)                     # 8-byte Folded Reload
	ld	a0, 184(sp)                     # 8-byte Folded Reload
	add	n2, n2, a0
	ld	a0, 272(sp)                     # 8-byte Folded Reload
	add	a5, a0, a5
	add	a5, a5, a7
	ld	a0, 408(sp)                     # 8-byte Folded Reload
	add	a5, a0, a5
.LBB0_199:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_200 Depth 4
	mv	a7, n2
	mv	n3, t5
	mv	n4, t1
	mv	n5, t0
	mv	n6, n1
	mv	n7, t6
	mv	n8, a2
	mv	n9, a6
	mv	n10, a4
.LBB0_200:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_199 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add	a0, n10, t3
	add	n11, n9, t3
	add	n12, n8, t3
	add	n13, n7, t3
	add	n14, n6, t3
	add	n15, n5, t3
	add	n16, n4, t3
	lbu	a0, 0(a0)
	lbu	n16, 0(n16)
	lbu	n15, 0(n15)
	lbu	n14, 0(n14)
	add	n17, n3, t3
	add	n18, a7, t3
	add	a0, a0, n16
	add	n14, n15, n14
	add	a0, a0, n14
	lbu	n14, 0(n17)
	lbu	n13, 0(n13)
	lbu	n12, 0(n12)
	lbu	n11, 0(n11)
	addi	a0, a0, 2
	srli	a0, a0, 2
	add	n13, n14, n13
	add	n11, n12, n11
	add	n11, n13, n11
	addi	n11, n11, 2
	srli	n11, n11, 2
	lbu	n12, 0(n18)
	add	a0, a0, n11
	addi	a0, a0, 1
	srli	a0, a0, 1
	sub	a0, a0, n12
	sraiw	n11, a0, 31
	xor	a0, a0, n11
	subw	a1, n11, a1
	subw	a1, a0, a1
	addi	n10, n10, 1
	addi	n9, n9, 1
	addi	n8, n8, 1
	addi	n7, n7, 1
	addi	n6, n6, 1
	addi	n5, n5, 1
	addi	n4, n4, 1
	addi	n3, n3, 1
	addi	a7, a7, 1
	bne	n10, a5, .LBB0_200
# %bb.201:                              #   in Loop: Header=BB0_199 Depth=3
	addiw	t4, t4, 1
	add	t3, t3, t2
	bne	t4, s9, .LBB0_199
# %bb.202:                              #   in Loop: Header=BB0_9 Depth=2
	lw	a2, 748(sp)
	lw	a4, 736(sp)
	addw	a3, a1, a3
	bge	a3, a2, .LBB0_249
# %bb.203:                              #   in Loop: Header=BB0_9 Depth=2
	ld	t3, 352(sp)                     # 8-byte Folded Reload
	li	t4, 1
	ld	a1, 192(sp)                     # 8-byte Folded Reload
	bge	a3, a4, .LBB0_250
# %bb.204:                              #   in Loop: Header=BB0_9 Depth=2
	li	s2, 3
	sw	s2, 4(t3)
	j	.LBB0_44
.LBB0_205:                              #   in Loop: Header=BB0_9 Depth=2
	li	s10, 2
	ld	s3, 240(sp)                     # 8-byte Folded Reload
	bge	n11, n16, .LBB0_240
# %bb.206:                              #   in Loop: Header=BB0_9 Depth=2
	bge	n11, n15, .LBB0_240
# %bb.207:                              #   in Loop: Header=BB0_9 Depth=2
	bge	n11, n12, .LBB0_240
# %bb.208:                              #   in Loop: Header=BB0_9 Depth=2
	bge	n11, n13, .LBB0_240
# %bb.209:                              #   in Loop: Header=BB0_9 Depth=2
	li	a0, 1
	slli	a0, a0, 32
	addi	a0, a0, 12
	ld	a1, 352(sp)                     # 8-byte Folded Reload
	sd	a0, 0(a1)
	lui	a0, %hi(width)
	lw	a2, %lo(width)(a0)
	li	a4, 0
	li	a0, 0
	li	a5, 0
	addi	n5, n5, -1
	and	t4, n5, a2
	add	a6, n7, t4
	addi	n6, n6, -1
	and	a1, n6, a2
	add	a7, n8, a1
	add	a1, a1, n4
	slli	a3, a2, 1
	mulw	t5, a3, n2
	add	a6, a6, t5
	mulw	t6, a3, n3
	add	a7, a7, t6
	mulw	t3, a3, t3
	mulw	n2, a3, t2
	add	a1, a1, t6
	add	t3, a1, t3
	ld	t6, 312(sp)                     # 8-byte Folded Reload
	add	t2, t6, t1
	add	t2, t2, a1
	addiw	a1, a3, -16
	addi	a1, a1, 16
	add	t1, t6, t1
	add	t1, t1, t3
	add	t3, t6, t3
	add	t4, t4, n1
	add	n1, t4, t5
	add	t5, n1, n2
	ld	t6, 536(sp)                     # 8-byte Folded Reload
	add	t4, t6, t0
	add	t4, t4, t5
	add	t5, t6, t5
	add	t0, t6, t0
	add	t0, t0, n1
	ld	t6, 376(sp)                     # 8-byte Folded Reload
	ld	n2, 304(sp)                     # 8-byte Folded Reload
	add	t6, t6, n2
	ld	n2, 408(sp)                     # 8-byte Folded Reload
	add	n1, n2, n1
.LBB0_210:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_211 Depth 4
	mv	n2, t6
	mv	n3, a7
	mv	n4, t0
	mv	n5, t5
	mv	n6, t4
	mv	n7, t2
	mv	n8, t3
	mv	n11, t1
	mv	n12, a6
.LBB0_211:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_210 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add	n13, n12, a4
	add	n14, n11, a4
	add	n15, n8, a4
	add	n16, n7, a4
	add	n17, n6, a4
	add	n18, n5, a4
	add	n19, n4, a4
	lbu	n13, 0(n13)
	lbu	n19, 0(n19)
	lbu	n18, 0(n18)
	lbu	n17, 0(n17)
	add	n20, n3, a4
	add	n21, n2, a4
	add	n13, n13, n19
	add	n17, n18, n17
	add	n13, n13, n17
	lbu	n17, 0(n20)
	lbu	n16, 0(n16)
	lbu	n15, 0(n15)
	lbu	n14, 0(n14)
	addi	n13, n13, 2
	srli	n13, n13, 2
	add	n16, n17, n16
	add	n14, n15, n14
	add	n14, n16, n14
	addi	n14, n14, 2
	srli	n14, n14, 2
	lbu	n15, 0(n21)
	add	n13, n13, n14
	addi	n13, n13, 1
	srli	n13, n13, 1
	subw	n13, n13, n15
	mul	n13, n13, n13
	add	a0, n13, a0
	addi	n12, n12, 1
	addi	n11, n11, 1
	addi	n8, n8, 1
	addi	n7, n7, 1
	addi	n6, n6, 1
	addi	n5, n5, 1
	addi	n4, n4, 1
	addi	n3, n3, 1
	addi	n2, n2, 1
	bne	n12, n1, .LBB0_211
# %bb.212:                              #   in Loop: Header=BB0_210 Depth=3
	addiw	a5, a5, 1
	add	a4, a4, a1
	bne	a5, s9, .LBB0_210
# %bb.213:                              #   in Loop: Header=BB0_9 Depth=2
	li	a5, 0
	li	a4, 0
	li	a6, 0
	ld	a7, 480(sp)                     # 8-byte Folded Reload
	mulw	t3, a3, a7
	ld	a7, 448(sp)                     # 8-byte Folded Reload
	mulw	a7, a3, a7
	ld	t0, 472(sp)                     # 8-byte Folded Reload
	mulw	t0, a3, t0
	mulw	t4, a3, s6
	add	a3, n10, a7
	add	a7, s4, a7
	ld	t1, 456(sp)                     # 8-byte Folded Reload
	addi	t1, t1, -1
	and	t1, t1, a2
	add	a3, a3, t1
	add	a7, t1, a7
	add	t2, a7, t0
	ld	t6, 312(sp)                     # 8-byte Folded Reload
	add	t0, t6, s1
	add	a7, t0, a7
	ld	t0, 488(sp)                     # 8-byte Folded Reload
	addi	t0, t0, -1
	and	t5, t0, a2
	add	t0, n9, t3
	add	t0, t0, t5
	add	t1, t6, s1
	add	t1, t1, t2
	add	t2, t6, t2
	add	t3, s11, t3
	add	t6, t5, t3
	add	t4, t6, t4
	ld	t5, 536(sp)                     # 8-byte Folded Reload
	add	t3, t5, s7
	add	t3, t3, t4
	add	t4, t5, t4
	add	t5, t5, s7
	add	t5, t5, t6
	ld	n1, 304(sp)                     # 8-byte Folded Reload
	add	a2, a2, n1
	ld	n1, 376(sp)                     # 8-byte Folded Reload
	add	a2, n1, a2
	ld	n1, 408(sp)                     # 8-byte Folded Reload
	add	t6, n1, t6
.LBB0_214:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_215 Depth 4
	mv	n1, a2
	mv	n2, a3
	mv	n3, t5
	mv	n4, t4
	mv	n5, t3
	mv	n6, a7
	mv	n7, t2
	mv	n8, t1
	mv	n9, t0
.LBB0_215:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_214 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add	n10, n9, a5
	add	n11, n8, a5
	add	n12, n7, a5
	add	n13, n6, a5
	add	n14, n5, a5
	add	n15, n4, a5
	add	n16, n3, a5
	lbu	n10, 0(n10)
	lbu	n16, 0(n16)
	lbu	n15, 0(n15)
	lbu	n14, 0(n14)
	add	n17, n2, a5
	add	n18, n1, a5
	add	n10, n10, n16
	add	n14, n15, n14
	add	n10, n10, n14
	lbu	n14, 0(n17)
	lbu	n13, 0(n13)
	lbu	n12, 0(n12)
	lbu	n11, 0(n11)
	addi	n10, n10, 2
	srli	n10, n10, 2
	add	n13, n14, n13
	add	n11, n12, n11
	add	n11, n13, n11
	addi	n11, n11, 2
	srli	n11, n11, 2
	lbu	n12, 0(n18)
	add	n10, n10, n11
	addi	n10, n10, 1
	srli	n10, n10, 1
	subw	n10, n10, n12
	mul	n10, n10, n10
	add	a4, n10, a4
	addi	n9, n9, 1
	addi	n8, n8, 1
	addi	n7, n7, 1
	addi	n6, n6, 1
	addi	n5, n5, 1
	addi	n4, n4, 1
	addi	n3, n3, 1
	addi	n2, n2, 1
	addi	n1, n1, 1
	bne	n9, t6, .LBB0_215
# %bb.216:                              #   in Loop: Header=BB0_214 Depth=3
	addiw	a6, a6, 1
	add	a5, a5, a1
	bne	a6, s9, .LBB0_214
# %bb.217:                              #   in Loop: Header=BB0_9 Depth=2
	li	s0, 0
	addw	a0, a4, a0
.LBB0_218:                              #   in Loop: Header=BB0_9 Depth=2
	ld	a4, 296(sp)                     # 8-byte Folded Reload
	ld	t2, 536(sp)                     # 8-byte Folded Reload
	ld	t3, 352(sp)                     # 8-byte Folded Reload
	j	.LBB0_268
.LBB0_219:                              #   in Loop: Header=BB0_9 Depth=2
	sd	s4, 632(sp)                     # 8-byte Folded Spill
	ld	s0, 248(sp)                     # 8-byte Folded Reload
	ld	t3, 352(sp)                     # 8-byte Folded Reload
	ld	t5, 344(sp)                     # 8-byte Folded Reload
	ld	t6, 328(sp)                     # 8-byte Folded Reload
	ld	n1, 336(sp)                     # 8-byte Folded Reload
	ld	n2, 320(sp)                     # 8-byte Folded Reload
	j	.LBB0_221
.LBB0_220:                              #   in Loop: Header=BB0_9 Depth=2
	sd	s4, 632(sp)                     # 8-byte Folded Spill
.LBB0_221:                              #   in Loop: Header=BB0_9 Depth=2
	ld	s7, 664(sp)                     # 8-byte Folded Reload
	ld	a2, 640(sp)                     # 8-byte Folded Reload
	mv	s4, s0
	bge	a0, a1, .LBB0_222
	j	.LBB0_152
.LBB0_222:                              #   in Loop: Header=BB0_9 Depth=2
	sd	s6, 616(sp)                     # 8-byte Folded Spill
	mv	s6, n2
	mv	s0, n1
	mv	s8, t6
	mv	s5, t5
	lw	a1, 796(sp)
	li	s2, 1
	mv	s3, t3
	sw	s2, 4(t3)
	mv	a0, a2
	beqz	a1, .LBB0_224
# %bb.223:                              #   in Loop: Header=BB0_9 Depth=2
	ld	a0, 648(sp)                     # 8-byte Folded Reload
.LBB0_224:                              #   in Loop: Header=BB0_9 Depth=2
	lw	a3, 688(sp)
	lw	a4, 672(sp)
	srai	a1, a3, 1
	add	a0, a0, a1
	srli	a1, a4, 1
	mulw	a1, a1, s11
	add	a0, a0, a1
	andi	a3, a3, 1
	andi	a4, a4, 1
	li	a5, 16
	mv	a1, s7
	mv	a2, s11
	call	dist2
	mv	s7, a0
	ld	t2, 536(sp)                     # 8-byte Folded Reload
	mv	t3, s3
	li	t4, 1
	mv	t5, s5
	mv	t6, s8
	mv	n1, s0
	mv	n2, s6
	ld	a6, 368(sp)                     # 8-byte Folded Reload
	mv	s0, s4
	ld	s4, 632(sp)                     # 8-byte Folded Reload
	ld	s6, 616(sp)                     # 8-byte Folded Reload
	ld	a4, 296(sp)                     # 8-byte Folded Reload
	ld	a3, 656(sp)                     # 8-byte Folded Reload
	bge	a3, a0, .LBB0_227
.LBB0_225:                              #   in Loop: Header=BB0_9 Depth=2
	ld	a0, 264(sp)                     # 8-byte Folded Reload
	blt	s7, a0, .LBB0_227
# %bb.226:                              #   in Loop: Header=BB0_9 Depth=2
	sw	t4, 0(t3)
	j	.LBB0_7
.LBB0_227:                              #   in Loop: Header=BB0_9 Depth=2
	ld	a0, 200(sp)                     # 8-byte Folded Reload
	bnez	a0, .LBB0_232
# %bb.228:                              #   in Loop: Header=BB0_9 Depth=2
	sd	s6, 616(sp)                     # 8-byte Folded Spill
	sd	s4, 632(sp)                     # 8-byte Folded Spill
	mv	s4, s0
	mv	s6, n2
	mv	s0, n1
	mv	s8, t6
	mv	s5, t5
	mv	s3, t3
	beq	s1, s10, .LBB0_230
# %bb.229:                              #   in Loop: Header=BB0_9 Depth=2
	ld	a0, 640(sp)                     # 8-byte Folded Reload
	sd	a0, 648(sp)                     # 8-byte Folded Spill
.LBB0_230:                              #   in Loop: Header=BB0_9 Depth=2
	ld	a0, 648(sp)                     # 8-byte Folded Reload
	add	a0, a0, a6
	ld	a1, 624(sp)                     # 8-byte Folded Reload
	add	a0, a0, a1
	li	a5, 16
	ld	a1, 664(sp)                     # 8-byte Folded Reload
	mv	a2, s11
	li	a3, 0
	li	a4, 0
	call	dist2
	ld	a6, 368(sp)                     # 8-byte Folded Reload
	mv	a3, a0
	ld	a4, 296(sp)                     # 8-byte Folded Reload
	ld	t2, 536(sp)                     # 8-byte Folded Reload
	mv	t3, s3
	li	t4, 1
	ld	a0, 264(sp)                     # 8-byte Folded Reload
	mv	t5, s5
	mv	t6, s8
	mv	n1, s0
	mv	n2, s6
	mv	s0, s4
	ld	s4, 632(sp)                     # 8-byte Folded Reload
	ld	s6, 616(sp)                     # 8-byte Folded Reload
	blt	a3, a0, .LBB0_244
# %bb.231:                              #   in Loop: Header=BB0_9 Depth=2
	slliw	a0, a3, 2
	slli	a1, s7, 2
	addw	a1, a1, s7
	bge	a1, a0, .LBB0_244
.LBB0_232:                              #   in Loop: Header=BB0_9 Depth=2
	sw	s9, 0(t3)
	slli	a0, a6, 1
	li	a1, 3
	beq	s2, a1, .LBB0_235
# %bb.233:                              #   in Loop: Header=BB0_9 Depth=2
	bne	s2, t4, .LBB0_236
# %bb.234:                              #   in Loop: Header=BB0_9 Depth=2
	lw	a1, 688(sp)
	lw	a2, 672(sp)
	subw	a1, a1, a0
	lw	a0, 796(sp)
	sw	a1, 24(t3)
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	subw	a1, a2, a1
	sw	a1, 28(t3)
	sw	a0, 56(t3)
	mv	a3, s7
	j	.LBB0_7
.LBB0_235:                              #   in Loop: Header=BB0_9 Depth=2
	lw	a1, 740(sp)
	lw	a2, 736(sp)
	subw	a1, a1, a0
	sw	a1, 24(t3)
	ld	a0, 208(sp)                     # 8-byte Folded Reload
	subw	a0, a2, a0
	sw	a0, 28(t3)
	sw	s4, 72(t3)
	sw	s6, 76(t3)
	mv	a3, s7
	j	.LBB0_7
.LBB0_236:                              #   in Loop: Header=BB0_9 Depth=2
	lw	a1, 820(sp)
	lw	a2, 816(sp)
	subw	a1, a1, a0
	sw	a1, 24(t3)
	lw	a1, 812(sp)
	ld	a5, 208(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a5
	lw	a3, 808(sp)
	sw	a2, 28(t3)
	subw	a1, a1, a0
	sw	a1, 40(t3)
	subw	a0, a3, a5
	lw	a1, 792(sp)
	lw	a2, 788(sp)
	addi	a0, a0, -16
	sw	a0, 44(t3)
	sw	a1, 56(t3)
	sw	a2, 64(t3)
	mv	a3, s7
	j	.LBB0_7
.LBB0_237:                              #   in Loop: Header=BB0_9 Depth=2
	bge	t4, a5, .LBB0_247
# %bb.238:                              #   in Loop: Header=BB0_9 Depth=2
	bge	t4, a7, .LBB0_247
# %bb.239:                              #   in Loop: Header=BB0_9 Depth=2
	li	a0, 1
	slli	a0, a0, 33
	addi	a0, a0, 8
	ld	a1, 352(sp)                     # 8-byte Folded Reload
	sd	a0, 0(a1)
	lui	a0, %hi(width)
	lw	s1, %lo(width)(a0)
	ld	a0, 160(sp)                     # 8-byte Folded Reload
	addi	a0, a0, -1
	and	a0, a0, s1
	ld	a1, 584(sp)                     # 8-byte Folded Reload
	add	a1, t2, a1
	add	a1, a1, n6
	add	a0, a1, a0
	li	a5, 8
	ld	a1, 664(sp)                     # 8-byte Folded Reload
	mv	a2, s11
	mv	a3, t0
	ld	a4, 152(sp)                     # 8-byte Folded Reload
	mv	s3, t2
	call	dist2
	mv	s2, a0
	addi	s4, s4, -1
	and	a0, s4, s1
	ld	a1, 576(sp)                     # 8-byte Folded Reload
	add	a1, s3, a1
	add	a1, a1, s6
	add	a0, a1, a0
	li	a5, 8
	ld	a1, 168(sp)                     # 8-byte Folded Reload
	mv	a2, s11
	mv	a3, s0
	mv	a4, s7
	call	dist2
	li	s1, 0
	addw	a0, a0, s2
	j	.LBB0_256
.LBB0_240:                              #   in Loop: Header=BB0_9 Depth=2
	bge	n16, n15, .LBB0_252
# %bb.241:                              #   in Loop: Header=BB0_9 Depth=2
	bge	n16, n12, .LBB0_252
# %bb.242:                              #   in Loop: Header=BB0_9 Depth=2
	bge	n16, n13, .LBB0_252
# %bb.243:                              #   in Loop: Header=BB0_9 Depth=2
	li	s0, 1
	slli	a0, s0, 33
	addi	a0, a0, 8
	ld	s1, 352(sp)                     # 8-byte Folded Reload
	sd	a0, 0(s1)
	lui	a0, %hi(width)
	lw	a2, %lo(width)(a0)
	mulw	a0, a2, t5
	ld	a1, 520(sp)                     # 8-byte Folded Reload
	add	a0, a1, a0
	li	a5, 16
	ld	a1, 192(sp)                     # 8-byte Folded Reload
	mv	a3, a6
	ld	a4, 528(sp)                     # 8-byte Folded Reload
	call	dist2
	mv	t3, s1
	j	.LBB0_267
.LBB0_244:                              #   in Loop: Header=BB0_9 Depth=2
	slli	a0, t4, 32
	sd	a0, 0(t3)
	lui	a0, %hi(pict_struct)
	lw	a0, %lo(pict_struct)(a0)
	sd	zero, 24(t3)
	addi	a0, a0, -2
	seqz	a0, a0
	sw	a0, 56(t3)
	j	.LBB0_7
.LBB0_245:                              #   in Loop: Header=BB0_9 Depth=2
	slli	a0, a6, 1
	ld	a1, 624(sp)                     # 8-byte Folded Reload
	subw	a0, a1, a0
	sw	a0, 24(t3)
	ld	a0, 464(sp)                     # 8-byte Folded Reload
	ld	a1, 632(sp)                     # 8-byte Folded Reload
	subw	a0, a1, a0
	slli	a0, a0, 1
	sw	a0, 28(t3)
	ld	a0, 576(sp)                     # 8-byte Folded Reload
	sw	a0, 72(t3)
	ld	a0, 584(sp)                     # 8-byte Folded Reload
	sw	a0, 76(t3)
	sw	n28, 88(t3)
	j	.LBB0_8
.LBB0_246:                              #   in Loop: Header=BB0_9 Depth=2
	lw	a0, 796(sp)
	lw	a1, 792(sp)
	slli	a2, a6, 1
	subw	a0, a0, a2
	sw	a0, 24(t3)
	ld	a5, 464(sp)                     # 8-byte Folded Reload
	subw	a0, a1, a5
	lw	a1, 788(sp)
	slli	a0, a0, 1
	lw	a3, 784(sp)
	sw	a0, 28(t3)
	subw	a1, a1, a2
	sw	a1, 40(t3)
	subw	a0, a3, a5
	lw	a1, 724(sp)
	lw	a2, 720(sp)
	slli	a0, a0, 1
	sw	a0, 44(t3)
	sw	a1, 56(t3)
	sw	a2, 64(t3)
	sw	n28, 88(t3)
	j	.LBB0_8
.LBB0_247:                              #   in Loop: Header=BB0_9 Depth=2
	ld	a1, 352(sp)                     # 8-byte Folded Reload
	li	a0, 4
	sw	a0, 0(a1)
	lui	a0, %hi(width)
	bge	a5, a7, .LBB0_255
# %bb.248:                              #   in Loop: Header=BB0_9 Depth=2
	lw	a0, %lo(width)(a0)
	li	s1, 1
	sw	s1, 4(a1)
	ld	a1, 624(sp)                     # 8-byte Folded Reload
	addi	a1, a1, -1
	and	a0, a1, a0
	ld	a1, 312(sp)                     # 8-byte Folded Reload
	ld	a2, 616(sp)                     # 8-byte Folded Reload
	add	a1, a1, a2
	ld	a2, 608(sp)                     # 8-byte Folded Reload
	add	a1, a1, a2
	add	a0, a1, a0
	li	a5, 16
	ld	a1, 664(sp)                     # 8-byte Folded Reload
	mv	a2, s11
	ld	a4, 144(sp)                     # 8-byte Folded Reload
	call	dist2
	j	.LBB0_256
.LBB0_249:                              #   in Loop: Header=BB0_9 Depth=2
	ld	s0, 536(sp)                     # 8-byte Folded Reload
	j	.LBB0_192
.LBB0_250:                              #   in Loop: Header=BB0_9 Depth=2
	ld	s0, 536(sp)                     # 8-byte Folded Reload
	ld	a6, 272(sp)                     # 8-byte Folded Reload
	blt	a4, a2, .LBB0_193
.LBB0_251:                              #   in Loop: Header=BB0_9 Depth=2
	lw	a3, 820(sp)
	li	s2, 2
	lw	a4, 816(sp)
	sw	s2, 4(t3)
	srai	a0, a3, 1
	add	a0, s0, a0
	srli	a2, a4, 1
	mulw	a2, a2, a6
	add	a0, a0, a2
	andi	a3, a3, 1
	andi	a4, a4, 1
	li	a5, 16
	mv	a2, a6
	call	dist2
	ld	t3, 352(sp)                     # 8-byte Folded Reload
	mv	n28, a0
	j	.LBB0_43
.LBB0_252:                              #   in Loop: Header=BB0_9 Depth=2
	bge	n15, n12, .LBB0_264
# %bb.253:                              #   in Loop: Header=BB0_9 Depth=2
	bge	n15, n13, .LBB0_264
# %bb.254:                              #   in Loop: Header=BB0_9 Depth=2
	li	a0, 1
	slli	a0, a0, 32
	addi	a0, a0, 8
	ld	s4, 352(sp)                     # 8-byte Folded Reload
	sd	a0, 0(s4)
	lui	a0, %hi(width)
	lw	s0, %lo(width)(a0)
	addi	n5, n5, -1
	and	a0, n5, s0
	ld	s3, 536(sp)                     # 8-byte Folded Reload
	add	n1, s3, n1
	add	a0, n1, a0
	slliw	s1, s0, 1
	mulw	a1, s1, n2
	add	a0, a0, a1
	li	a5, 8
	ld	s5, 192(sp)                     # 8-byte Folded Reload
	mv	a1, s5
	mv	a2, s1
	mv	a3, t0
	mv	a4, t2
	call	dist2
	mv	s2, a0
	ld	a0, 488(sp)                     # 8-byte Folded Reload
	addi	a0, a0, -1
	and	a0, a0, s0
	add	s11, s3, s11
	add	a0, s11, a0
	ld	a1, 480(sp)                     # 8-byte Folded Reload
	mulw	a1, s1, a1
	add	a0, a0, a1
	add	a1, s5, s0
	li	a5, 8
	mv	a2, s1
	mv	a3, s7
	mv	a4, s6
	call	dist2
	mv	t3, s4
	mv	t2, s3
	ld	s3, 240(sp)                     # 8-byte Folded Reload
	li	s0, 0
	addw	a0, a0, s2
	ld	a4, 296(sp)                     # 8-byte Folded Reload
	j	.LBB0_268
.LBB0_255:                              #   in Loop: Header=BB0_9 Depth=2
	lw	s3, %lo(width)(a0)
	sw	s10, 4(a1)
	ld	a0, 128(sp)                     # 8-byte Folded Reload
	addi	a0, a0, -1
	and	a0, a0, s3
	ld	s4, 312(sp)                     # 8-byte Folded Reload
	ld	a1, 568(sp)                     # 8-byte Folded Reload
	add	a1, s4, a1
	add	a1, a1, n8
	add	a0, a1, a0
	li	a5, 8
	ld	a1, 664(sp)                     # 8-byte Folded Reload
	mv	a2, s11
	mv	a3, t1
	ld	a4, 136(sp)                     # 8-byte Folded Reload
	call	dist2
	mv	s0, a0
	addi	s5, s5, -1
	and	a0, s5, s3
	ld	a1, 560(sp)                     # 8-byte Folded Reload
	add	a1, s4, a1
	ld	a2, 552(sp)                     # 8-byte Folded Reload
	add	a1, a1, a2
	add	a0, a1, a0
	li	a5, 8
	ld	a1, 168(sp)                     # 8-byte Folded Reload
	mv	a2, s11
	mv	a3, s2
	mv	a4, s1
	call	dist2
	li	s1, 0
	addw	a0, a0, s0
.LBB0_256:                              #   in Loop: Header=BB0_9 Depth=2
	ld	s0, 248(sp)                     # 8-byte Folded Reload
.LBB0_257:                              #   in Loop: Header=BB0_9 Depth=2
	ld	a4, 296(sp)                     # 8-byte Folded Reload
	ld	t2, 536(sp)                     # 8-byte Folded Reload
	li	t4, 1
	ld	t5, 344(sp)                     # 8-byte Folded Reload
	ld	t6, 328(sp)                     # 8-byte Folded Reload
	ld	n1, 336(sp)                     # 8-byte Folded Reload
	ld	n2, 320(sp)                     # 8-byte Folded Reload
	ld	a6, 368(sp)                     # 8-byte Folded Reload
	ld	a3, 656(sp)                     # 8-byte Folded Reload
	bge	a3, a0, .LBB0_260
# %bb.258:                              #   in Loop: Header=BB0_9 Depth=2
	ld	a1, 264(sp)                     # 8-byte Folded Reload
	blt	a0, a1, .LBB0_260
# %bb.259:                              #   in Loop: Header=BB0_9 Depth=2
	ld	t3, 352(sp)                     # 8-byte Folded Reload
	sw	t4, 0(t3)
	j	.LBB0_7
.LBB0_260:                              #   in Loop: Header=BB0_9 Depth=2
	slli	a1, a6, 1
	ld	t3, 352(sp)                     # 8-byte Folded Reload
	beqz	s1, .LBB0_262
# %bb.261:                              #   in Loop: Header=BB0_9 Depth=2
	ld	a2, 512(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a1
	sw	a2, 24(t3)
	ld	a3, 208(sp)                     # 8-byte Folded Reload
	ld	a2, 520(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	sw	a2, 28(t3)
	ld	a2, 544(sp)                     # 8-byte Folded Reload
	sw	a2, 56(t3)
	ld	a2, 496(sp)                     # 8-byte Folded Reload
	subw	a1, a2, a1
	sw	a1, 32(t3)
	ld	a1, 504(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a3
	sw	a1, 36(t3)
	ld	a1, 528(sp)                     # 8-byte Folded Reload
	sw	a1, 60(t3)
	j	.LBB0_263
.LBB0_262:                              #   in Loop: Header=BB0_9 Depth=2
	ld	a2, 456(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a1
	sw	a2, 24(t3)
	ld	a3, 208(sp)                     # 8-byte Folded Reload
	ld	a2, 472(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	sw	a2, 28(t3)
	ld	a2, 488(sp)                     # 8-byte Folded Reload
	sw	a2, 56(t3)
	ld	a2, 240(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a1
	sw	a2, 40(t3)
	ld	a5, 104(sp)                     # 8-byte Folded Reload
	ld	a2, 272(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a5
	sw	a2, 44(t3)
	ld	a2, 360(sp)                     # 8-byte Folded Reload
	sw	a2, 64(t3)
	ld	a2, 384(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a1
	sw	a2, 32(t3)
	ld	a2, 448(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	sw	a2, 36(t3)
	ld	a2, 480(sp)                     # 8-byte Folded Reload
	sw	a2, 60(t3)
	ld	a2, 184(sp)                     # 8-byte Folded Reload
	subw	a1, a2, a1
	sw	a1, 48(t3)
	ld	a1, 192(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a5
	sw	a1, 52(t3)
	ld	a1, 304(sp)                     # 8-byte Folded Reload
	sw	a1, 68(t3)
.LBB0_263:                              #   in Loop: Header=BB0_9 Depth=2
	mv	a3, a0
	j	.LBB0_7
.LBB0_264:                              #   in Loop: Header=BB0_9 Depth=2
	ld	a0, 352(sp)                     # 8-byte Folded Reload
	li	a1, 4
	sw	a1, 0(a0)
	lui	a1, %hi(width)
	bge	n12, n13, .LBB0_266
# %bb.265:                              #   in Loop: Header=BB0_9 Depth=2
	lw	a2, %lo(width)(a1)
	sw	s10, 4(a0)
	ld	a0, 496(sp)                     # 8-byte Folded Reload
	mulw	a0, a2, a0
	ld	a1, 504(sp)                     # 8-byte Folded Reload
	add	a0, a1, a0
	li	a5, 16
	ld	a1, 192(sp)                     # 8-byte Folded Reload
	ld	a4, 512(sp)                     # 8-byte Folded Reload
	call	dist2
	ld	t3, 352(sp)                     # 8-byte Folded Reload
	li	s0, 1
	j	.LBB0_267
.LBB0_266:                              #   in Loop: Header=BB0_9 Depth=2
	lw	s3, %lo(width)(a1)
	li	a1, 1
	sw	a1, 4(a0)
	addi	n6, n6, -1
	and	a0, n6, s3
	ld	s5, 312(sp)                     # 8-byte Folded Reload
	add	n4, s5, n4
	add	a0, n4, a0
	slliw	s0, s3, 1
	mulw	a1, s0, n3
	add	a0, a0, a1
	li	a5, 8
	ld	s6, 192(sp)                     # 8-byte Folded Reload
	mv	a1, s6
	mv	a2, s0
	mv	a3, t1
	mv	a4, t3
	call	dist2
	mv	s2, a0
	ld	a0, 456(sp)                     # 8-byte Folded Reload
	addi	a0, a0, -1
	and	a0, a0, s3
	add	s4, s5, s4
	add	a0, s4, a0
	ld	a1, 448(sp)                     # 8-byte Folded Reload
	mulw	a1, s0, a1
	add	a0, a0, a1
	add	a1, s6, s3
	ld	s3, 240(sp)                     # 8-byte Folded Reload
	li	a5, 8
	mv	a2, s0
	mv	a3, s1
	ld	a4, 472(sp)                     # 8-byte Folded Reload
	call	dist2
	ld	t3, 352(sp)                     # 8-byte Folded Reload
	li	s0, 0
	addw	a0, a0, s2
.LBB0_267:                              #   in Loop: Header=BB0_9 Depth=2
	ld	a4, 296(sp)                     # 8-byte Folded Reload
	ld	t2, 536(sp)                     # 8-byte Folded Reload
.LBB0_268:                              #   in Loop: Header=BB0_9 Depth=2
	ld	t5, 344(sp)                     # 8-byte Folded Reload
	ld	t6, 328(sp)                     # 8-byte Folded Reload
	ld	n1, 336(sp)                     # 8-byte Folded Reload
	ld	n2, 320(sp)                     # 8-byte Folded Reload
	ld	a6, 368(sp)                     # 8-byte Folded Reload
	bge	s3, a0, .LBB0_271
.LBB0_269:                              #   in Loop: Header=BB0_9 Depth=2
	ld	a1, 264(sp)                     # 8-byte Folded Reload
	blt	a0, a1, .LBB0_271
# %bb.270:                              #   in Loop: Header=BB0_9 Depth=2
	li	t4, 1
	sw	t4, 0(t3)
	sw	s3, 88(t3)
	ld	s0, 248(sp)                     # 8-byte Folded Reload
	j	.LBB0_8
.LBB0_271:                              #   in Loop: Header=BB0_9 Depth=2
	slli	a1, a6, 1
	li	t4, 1
	beqz	s0, .LBB0_273
# %bb.272:                              #   in Loop: Header=BB0_9 Depth=2
	ld	a2, 664(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a1
	sw	a2, 24(t3)
	ld	a3, 208(sp)                     # 8-byte Folded Reload
	ld	a2, 656(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	sw	a2, 28(t3)
	ld	a2, 648(sp)                     # 8-byte Folded Reload
	subw	a1, a2, a1
	sw	a1, 32(t3)
	ld	a1, 640(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a3
	sw	a1, 36(t3)
	j	.LBB0_274
.LBB0_273:                              #   in Loop: Header=BB0_9 Depth=2
	ld	a2, 624(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a1
	sw	a2, 24(t3)
	ld	a3, 464(sp)                     # 8-byte Folded Reload
	ld	a2, 592(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 1
	sw	a2, 28(t3)
	ld	a2, 584(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a1
	sw	a2, 40(t3)
	ld	a2, 544(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 1
	sw	a2, 44(t3)
	ld	a2, 632(sp)                     # 8-byte Folded Reload
	sw	a2, 56(t3)
	ld	a2, 560(sp)                     # 8-byte Folded Reload
	sw	a2, 64(t3)
	ld	a2, 608(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a1
	sw	a2, 32(t3)
	ld	a2, 600(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 1
	sw	a2, 36(t3)
	ld	a2, 568(sp)                     # 8-byte Folded Reload
	subw	a1, a2, a1
	sw	a1, 48(t3)
	ld	a1, 552(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a3
	slli	a1, a1, 1
	sw	a1, 52(t3)
	ld	a1, 616(sp)                     # 8-byte Folded Reload
	sw	a1, 60(t3)
	ld	a1, 576(sp)                     # 8-byte Folded Reload
	sw	a1, 68(t3)
.LBB0_274:                              #   in Loop: Header=BB0_9 Depth=2
	sw	a0, 88(t3)
	ld	s0, 248(sp)                     # 8-byte Folded Reload
	j	.LBB0_8
.LBB0_275:                              #   in Loop: Header=BB0_4 Depth=1
	lui	s2, %hi(stderr)
	ld	a1, %lo(stderr)(s2)
	li	a0, 46
	mv	s1, t3
	call	putc
	ld	a0, %lo(stderr)(s2)
	call	fflush
	li	t4, 1
	mv	t3, s1
	ld	t2, 536(sp)                     # 8-byte Folded Reload
	ld	a4, 296(sp)                     # 8-byte Folded Reload
	lui	a0, %hi(width)
	lw	n3, %lo(width)(a0)
	j	.LBB0_3
.LBB0_276:
	lui	a0, %hi(quiet)
	lw	a0, %lo(quiet)(a0)
	beqz	a0, .LBB0_278
# %bb.277:
	ld	ra, 920(sp)                     # 8-byte Folded Reload
	ld	s0, 912(sp)                     # 8-byte Folded Reload
	ld	s1, 904(sp)                     # 8-byte Folded Reload
	ld	s2, 896(sp)                     # 8-byte Folded Reload
	ld	s3, 888(sp)                     # 8-byte Folded Reload
	ld	s4, 880(sp)                     # 8-byte Folded Reload
	ld	s5, 872(sp)                     # 8-byte Folded Reload
	ld	s6, 864(sp)                     # 8-byte Folded Reload
	ld	s7, 856(sp)                     # 8-byte Folded Reload
	ld	s8, 848(sp)                     # 8-byte Folded Reload
	ld	s9, 840(sp)                     # 8-byte Folded Reload
	ld	s10, 832(sp)                    # 8-byte Folded Reload
	ld	s11, 824(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 928
	ret
.LBB0_278:
	lui	a0, %hi(stderr)
	ld	a1, %lo(stderr)(a0)
	li	a0, 10
	ld	ra, 920(sp)                     # 8-byte Folded Reload
	ld	s0, 912(sp)                     # 8-byte Folded Reload
	ld	s1, 904(sp)                     # 8-byte Folded Reload
	ld	s2, 896(sp)                     # 8-byte Folded Reload
	ld	s3, 888(sp)                     # 8-byte Folded Reload
	ld	s4, 880(sp)                     # 8-byte Folded Reload
	ld	s5, 872(sp)                     # 8-byte Folded Reload
	ld	s6, 864(sp)                     # 8-byte Folded Reload
	ld	s7, 856(sp)                     # 8-byte Folded Reload
	ld	s8, 848(sp)                     # 8-byte Folded Reload
	ld	s9, 840(sp)                     # 8-byte Folded Reload
	ld	s10, 832(sp)                    # 8-byte Folded Reload
	ld	s11, 824(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 928
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
	addi	sp, sp, -144
	sd	ra, 136(sp)                     # 8-byte Folded Spill
	sd	s0, 128(sp)                     # 8-byte Folded Spill
	sd	s1, 120(sp)                     # 8-byte Folded Spill
	sd	s2, 112(sp)                     # 8-byte Folded Spill
	sd	s3, 104(sp)                     # 8-byte Folded Spill
	sd	s4, 96(sp)                      # 8-byte Folded Spill
	sd	s5, 88(sp)                      # 8-byte Folded Spill
	sd	s6, 80(sp)                      # 8-byte Folded Spill
	sd	s7, 72(sp)                      # 8-byte Folded Spill
	sd	s8, 64(sp)                      # 8-byte Folded Spill
	sd	s9, 56(sp)                      # 8-byte Folded Spill
	sd	s10, 48(sp)                     # 8-byte Folded Spill
	sd	s11, 40(sp)                     # 8-byte Folded Spill
	mv	s8, a6
	mv	s6, a4
	addw	s11, a6, a4
	addiw	t3, t3, -16
	mv	s5, t6
	sd	t5, 8(sp)                       # 8-byte Folded Spill
	mv	s2, t2
	mv	s10, a7
	mv	s7, a5
	mv	s3, a3
	mv	s4, a2
	sd	a1, 32(sp)                      # 8-byte Folded Spill
	mv	s9, a0
	blt	s11, t3, .LBB1_2
# %bb.1:
	mv	s11, t3
.LBB1_2:
	sd	t3, 0(sp)                       # 8-byte Folded Spill
	addw	s1, s10, s7
	subw	s0, t4, s2
	blt	s1, s0, .LBB1_4
# %bb.3:
	mv	s1, s0
.LBB1_4:
	add	a0, s9, s6
	mulw	a1, s7, s3
	add	a0, a0, a1
	lui	a6, 16
	mv	a1, s4
	mv	a2, s3
	li	a3, 0
	li	a4, 0
	mv	a5, s2
	call	dist1
	mv	a1, s8
	blt	s10, s8, .LBB1_6
# %bb.5:
	mv	a1, s10
.LBB1_6:
	sd	s5, 16(sp)                      # 8-byte Folded Spill
	blez	a1, .LBB1_27
# %bb.7:
	subw	a2, s6, s8
	subw	a3, s7, s10
	sgtz	a4, a2
	sgtz	a5, a3
	negw	a4, a4
	negw	a5, a5
	and	a2, a4, a2
	and	a3, a5, a3
	blez	s2, .LBB1_37
# %bb.8:                                # %.preheader
	addi	s9, s9, 7
	addi	a6, s4, 7
	li	t3, 1
	li	a7, 8
	li	t0, 6
	mv	a4, s7
	mv	a5, s6
	j	.LBB1_10
.LBB1_9:                                #   in Loop: Header=BB1_10 Depth=1
	addiw	t3, t1, 1
	addiw	a7, a7, 8
	beq	t1, a1, .LBB1_28
.LBB1_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_13 Depth 2
                                        #       Child Loop BB1_18 Depth 3
	li	t2, 0
	mv	t1, t3
	seqz	t3, a7
	addw	t3, a7, t3
	subw	t4, s6, t1
	subw	t5, s7, t1
	slliw	t6, t1, 1
	slliw	n1, t1, 2
	mulw	n2, t1, t0
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
	li	n6, 0
	mulw	n3, t5, s3
	add	n3, t4, n3
	add	n3, s9, n3
	mv	n4, a6
	mv	n5, s2
.LBB1_18:                               #   Parent Loop BB1_10 Depth=1
                                        #     Parent Loop BB1_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lbu	n7, -7(n3)
	lbu	n8, -7(n4)
	sub	n7, n7, n8
	sraiw	n8, n7, 31
	lbu	n9, -6(n3)
	lbu	n10, -6(n4)
	xor	n7, n7, n8
	subw	n6, n8, n6
	subw	n6, n7, n6
	sub	n7, n9, n10
	sraiw	n8, n7, 31
	lbu	n9, -5(n3)
	lbu	n10, -5(n4)
	xor	n7, n7, n8
	subw	n7, n7, n8
	add	n6, n6, n7
	sub	n7, n9, n10
	lbu	n8, -4(n3)
	lbu	n9, -4(n4)
	sraiw	n10, n7, 31
	xor	n7, n7, n10
	subw	n7, n7, n10
	sub	n8, n8, n9
	sraiw	n9, n8, 31
	xor	n8, n8, n9
	lbu	n10, -3(n3)
	lbu	n11, -3(n4)
	subw	n8, n8, n9
	add	n7, n7, n8
	add	n6, n6, n7
	sub	n7, n10, n11
	lbu	n8, -2(n3)
	lbu	n9, -2(n4)
	sraiw	n10, n7, 31
	xor	n7, n7, n10
	subw	n7, n7, n10
	sub	n8, n8, n9
	sraiw	n9, n8, 31
	lbu	n10, -1(n3)
	lbu	n11, -1(n4)
	xor	n8, n8, n9
	subw	n8, n8, n9
	add	n7, n7, n8
	sub	n8, n10, n11
	sraiw	n9, n8, 31
	xor	n8, n8, n9
	lbu	n10, 0(n3)
	lbu	n11, 0(n4)
	subw	n8, n8, n9
	add	n7, n7, n8
	add	n6, n6, n7
	sub	n7, n10, n11
	lbu	n8, 1(n3)
	lbu	n9, 1(n4)
	sraiw	n10, n7, 31
	xor	n7, n7, n10
	subw	n7, n7, n10
	sub	n8, n8, n9
	sraiw	n9, n8, 31
	lbu	n10, 2(n3)
	lbu	n11, 2(n4)
	xor	n8, n8, n9
	subw	n8, n8, n9
	add	n7, n7, n8
	sub	n8, n10, n11
	sraiw	n9, n8, 31
	lbu	n10, 3(n3)
	lbu	n11, 3(n4)
	xor	n8, n8, n9
	subw	n8, n8, n9
	add	n7, n7, n8
	sub	n8, n10, n11
	sraiw	n9, n8, 31
	xor	n8, n8, n9
	lbu	n10, 4(n3)
	lbu	n11, 4(n4)
	subw	n8, n8, n9
	add	n7, n7, n8
	add	n6, n6, n7
	sub	n7, n10, n11
	lbu	n8, 5(n3)
	lbu	n9, 5(n4)
	sraiw	n10, n7, 31
	xor	n7, n7, n10
	subw	n7, n7, n10
	sub	n8, n8, n9
	sraiw	n9, n8, 31
	lbu	n10, 6(n3)
	lbu	n11, 6(n4)
	xor	n8, n8, n9
	subw	n8, n8, n9
	add	n7, n7, n8
	sub	n8, n10, n11
	sraiw	n9, n8, 31
	lbu	n10, 7(n3)
	lbu	n11, 7(n4)
	xor	n8, n8, n9
	subw	n8, n8, n9
	add	n7, n7, n8
	sub	n8, n10, n11
	sraiw	n9, n8, 31
	lbu	n10, 8(n3)
	lbu	n11, 8(n4)
	xor	n8, n8, n9
	subw	n8, n8, n9
	add	n7, n7, n8
	sub	n8, n10, n11
	sraiw	n9, n8, 31
	xor	n8, n8, n9
	subw	n8, n8, n9
	add	n7, n7, n8
	addw	n6, n6, n7
	bge	n6, a0, .LBB1_21
# %bb.19:                               #   in Loop: Header=BB1_18 Depth=3
	addiw	n5, n5, -1
	add	n3, n3, s3
	add	n4, n4, s3
	bnez	n5, .LBB1_18
# %bb.20:                               #   in Loop: Header=BB1_13 Depth=2
	mv	a5, t4
	mv	a4, t5
	mv	a0, n6
.LBB1_21:                               #   in Loop: Header=BB1_13 Depth=2
	bltu	t2, t6, .LBB1_11
# %bb.22:                               #   in Loop: Header=BB1_13 Depth=2
	bgeu	t2, n1, .LBB1_24
# %bb.23:                               #   in Loop: Header=BB1_13 Depth=2
	addiw	t5, t5, 1
	j	.LBB1_12
.LBB1_24:                               #   in Loop: Header=BB1_13 Depth=2
	bgeu	t2, n2, .LBB1_26
# %bb.25:                               #   in Loop: Header=BB1_13 Depth=2
	addiw	t4, t4, -1
	j	.LBB1_12
.LBB1_26:                               #   in Loop: Header=BB1_13 Depth=2
	addiw	t5, t5, -1
	j	.LBB1_12
.LBB1_27:
	mv	a5, s6
	mv	a4, s7
.LBB1_28:
	slliw	a1, a5, 1
	slliw	a2, a4, 1
	sgtz	a0, a2
	subw	a3, a2, a0
	slliw	a0, s0, 1
	slt	a0, a2, a0
	or	a4, a2, a0
	lui	a0, 16
	sd	a4, 24(sp)                      # 8-byte Folded Spill
	blt	a4, a3, .LBB1_36
# %bb.29:
	sgtz	a4, a1
	subw	s1, a1, a4
	ld	a4, 0(sp)                       # 8-byte Folded Reload
	slliw	a4, a4, 1
	slt	a4, a1, a4
	or	a5, a1, a4
	blt	a5, s1, .LBB1_36
# %bb.30:
	add	a4, a1, a4
	addiw	s8, a4, 1
	j	.LBB1_32
.LBB1_31:                               #   in Loop: Header=BB1_32 Depth=1
	addiw	a3, s9, 1
	ld	a4, 24(sp)                      # 8-byte Folded Reload
	beq	s9, a4, .LBB1_36
.LBB1_32:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_34 Depth 2
	mv	s9, a3
	sraiw	a3, a3, 1
	mulw	s10, a3, s3
	ld	a3, 32(sp)                      # 8-byte Folded Reload
	add	s10, a3, s10
	andi	s6, s9, 1
	mv	s11, s1
	mv	s7, a0
	mv	s5, a2
	mv	s0, a1
	j	.LBB1_34
.LBB1_33:                               #   in Loop: Header=BB1_34 Depth=2
	addiw	s11, s11, 1
	mv	s7, a0
	mv	s5, a2
	mv	s0, a1
	beq	s11, s8, .LBB1_31
.LBB1_34:                               #   Parent Loop BB1_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sraiw	a0, s11, 1
	add	a0, s10, a0
	andi	a3, s11, 1
	mv	a1, s4
	mv	a2, s3
	mv	a4, s6
	mv	a5, s2
	mv	a6, s7
	call	dist1
	mv	a1, s11
	mv	a2, s9
	blt	a0, s7, .LBB1_33
# %bb.35:                               #   in Loop: Header=BB1_34 Depth=2
	mv	a1, s0
	mv	a2, s5
	mv	a0, s7
	j	.LBB1_33
.LBB1_36:
	ld	a3, 8(sp)                       # 8-byte Folded Reload
	sw	a1, 0(a3)
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	sw	a2, 0(a1)
	ld	ra, 136(sp)                     # 8-byte Folded Reload
	ld	s0, 128(sp)                     # 8-byte Folded Reload
	ld	s1, 120(sp)                     # 8-byte Folded Reload
	ld	s2, 112(sp)                     # 8-byte Folded Reload
	ld	s3, 104(sp)                     # 8-byte Folded Reload
	ld	s4, 96(sp)                      # 8-byte Folded Reload
	ld	s5, 88(sp)                      # 8-byte Folded Reload
	ld	s6, 80(sp)                      # 8-byte Folded Reload
	ld	s7, 72(sp)                      # 8-byte Folded Reload
	ld	s8, 64(sp)                      # 8-byte Folded Reload
	ld	s9, 56(sp)                      # 8-byte Folded Reload
	ld	s10, 48(sp)                     # 8-byte Folded Reload
	ld	s11, 40(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 144
	ret
.LBB1_37:                               # %.preheader5
	li	t2, 1
	li	a6, 8
	li	a7, 6
	mv	a4, s7
	mv	a5, s6
	j	.LBB1_39
.LBB1_38:                               #   in Loop: Header=BB1_39 Depth=1
	addiw	t2, t0, 1
	addiw	a6, a6, 8
	beq	t0, a1, .LBB1_28
.LBB1_39:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_42 Depth 2
	li	t1, 0
	mv	t0, t2
	seqz	t2, a6
	addw	t2, a6, t2
	subw	t3, s6, t0
	subw	t4, s7, t0
	slliw	t5, t0, 1
	slliw	t6, t0, 2
	mulw	n1, t0, a7
	j	.LBB1_42
.LBB1_40:                               #   in Loop: Header=BB1_42 Depth=2
	addiw	t3, t3, 1
.LBB1_41:                               #   in Loop: Header=BB1_42 Depth=2
	addiw	n2, n2, -1
	addiw	t1, t1, 1
	and	a0, n2, a0
	beq	t2, t1, .LBB1_38
.LBB1_42:                               #   Parent Loop BB1_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slt	n2, t3, a2
	not	n2, n2
	slt	n3, s11, t3
	not	n3, n3
	slt	n4, t4, a3
	not	n4, n4
	and	n2, n2, n4
	slt	n4, s1, t4
	not	n4, n4
	and	n3, n3, n4
	and	n2, n2, n3
	sgtz	n3, a0
	and	n2, n2, n3
	mv	n3, t3
	mv	n4, t4
	bnez	n2, .LBB1_44
# %bb.43:                               #   in Loop: Header=BB1_42 Depth=2
	mv	n3, a5
	mv	n4, a4
.LBB1_44:                               #   in Loop: Header=BB1_42 Depth=2
	mv	a4, n4
	mv	a5, n3
	bltu	t1, t5, .LBB1_40
# %bb.45:                               #   in Loop: Header=BB1_42 Depth=2
	bgeu	t1, t6, .LBB1_47
# %bb.46:                               #   in Loop: Header=BB1_42 Depth=2
	addiw	t4, t4, 1
	j	.LBB1_41
.LBB1_47:                               #   in Loop: Header=BB1_42 Depth=2
	bgeu	t1, n1, .LBB1_49
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
	or	a6, a4, a3
	beqz	a6, .LBB2_6
# %bb.1:
	beqz	a3, .LBB2_9
# %bb.2:
	bnez	a4, .LBB2_9
# %bb.3:
	blez	a5, .LBB2_18
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
	j	.LBB2_17
.LBB2_6:
	li	a3, 0
	blez	a5, .LBB2_17
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
	j	.LBB2_17
.LBB2_9:
	bnez	a3, .LBB2_14
# %bb.10:
	beqz	a4, .LBB2_14
# %bb.11:
	blez	a5, .LBB2_18
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
	j	.LBB2_17
.LBB2_14:
	blez	a5, .LBB2_18
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
	lbu	n1, 0(t0)
	add	t5, t5, t6
	addi	t5, t5, 2
	srliw	t5, t5, 2
	subw	t5, t5, n1
	lbu	t6, 2(t2)
	lbu	n1, 2(t1)
	mul	t5, t5, t5
	add	a3, t5, a3
	add	t3, t3, t6
	add	t4, t4, n1
	add	t3, t3, t4
	addi	t3, t3, 2
	lbu	t4, 1(t0)
	srli	t3, t3, 2
	lbu	t5, 3(t2)
	lbu	n2, 3(t1)
	subw	t3, t3, t4
	mul	t3, t3, t3
	add	t6, t6, t5
	add	n1, n1, n2
	lbu	t4, 2(t0)
	add	t6, t6, n1
	addi	t6, t6, 2
	srli	t6, t6, 2
	subw	t6, t6, t4
	mul	t4, t6, t6
	lbu	t6, 4(t2)
	lbu	n1, 4(t1)
	add	t3, t4, t3
	add	a3, t3, a3
	add	t5, t5, t6
	add	n2, n2, n1
	add	t5, t5, n2
	addi	t5, t5, 2
	lbu	t3, 3(t0)
	srli	t5, t5, 2
	lbu	t4, 5(t2)
	lbu	n2, 5(t1)
	subw	t5, t5, t3
	mul	t3, t5, t5
	add	t6, t6, t4
	add	n1, n1, n2
	lbu	t5, 4(t0)
	add	t6, t6, n1
	addi	t6, t6, 2
	srli	t6, t6, 2
	subw	t6, t6, t5
	lbu	t5, 6(t2)
	lbu	n1, 6(t1)
	mul	t6, t6, t6
	add	t3, t6, t3
	add	t4, t4, t5
	add	n2, n2, n1
	lbu	t6, 5(t0)
	add	t4, t4, n2
	addi	t4, t4, 2
	srli	t4, t4, 2
	subw	t4, t4, t6
	mul	t4, t4, t4
	lbu	t6, 7(t2)
	lbu	n2, 7(t1)
	add	t3, t4, t3
	add	a3, t3, a3
	add	t5, t5, t6
	add	n1, n1, n2
	add	t5, t5, n1
	addi	t5, t5, 2
	lbu	t3, 6(t0)
	srli	t5, t5, 2
	lbu	t4, 8(t2)
	lbu	n1, 8(t1)
	subw	t5, t5, t3
	mul	t3, t5, t5
	add	t6, t6, t4
	add	n2, n2, n1
	lbu	t5, 7(t0)
	add	t6, t6, n2
	addi	t6, t6, 2
	srli	t6, t6, 2
	subw	t6, t6, t5
	lbu	t5, 9(t2)
	lbu	n2, 9(t1)
	mul	t6, t6, t6
	add	t3, t6, t3
	add	t4, t4, t5
	add	n1, n1, n2
	lbu	t6, 8(t0)
	add	t4, t4, n1
	addi	t4, t4, 2
	srli	t4, t4, 2
	subw	t4, t4, t6
	lbu	t6, 10(t2)
	lbu	n1, 10(t1)
	mul	t4, t4, t4
	add	t3, t4, t3
	add	t5, t5, t6
	add	n2, n2, n1
	lbu	t4, 9(t0)
	add	t5, t5, n2
	addi	t5, t5, 2
	srli	t5, t5, 2
	subw	t5, t5, t4
	mul	t4, t5, t5
	lbu	t5, 11(t2)
	lbu	n2, 11(t1)
	add	t3, t4, t3
	add	a3, t3, a3
	add	t6, t6, t5
	add	n1, n1, n2
	add	t6, t6, n1
	addi	t6, t6, 2
	lbu	t3, 10(t0)
	srli	t6, t6, 2
	lbu	t4, 12(t2)
	lbu	n1, 12(t1)
	subw	t6, t6, t3
	mul	t3, t6, t6
	add	t5, t5, t4
	add	n2, n2, n1
	lbu	t6, 11(t0)
	add	t5, t5, n2
	addi	t5, t5, 2
	srli	t5, t5, 2
	subw	t5, t5, t6
	lbu	t6, 13(t2)
	lbu	n2, 13(t1)
	mul	t5, t5, t5
	add	t3, t5, t3
	add	t4, t4, t6
	add	n1, n1, n2
	lbu	t5, 12(t0)
	add	t4, t4, n1
	addi	t4, t4, 2
	srli	t4, t4, 2
	subw	t4, t4, t5
	lbu	t5, 14(t2)
	lbu	n1, 14(t1)
	mul	t4, t4, t4
	add	t3, t4, t3
	add	t6, t6, t5
	add	n2, n2, n1
	lbu	t4, 13(t0)
	add	t6, t6, n2
	addi	t6, t6, 2
	srli	t6, t6, 2
	subw	t6, t6, t4
	lbu	t4, 15(t2)
	lbu	n2, 15(t1)
	mul	t6, t6, t6
	add	t3, t6, t3
	add	t5, t5, t4
	add	n1, n1, n2
	lbu	t6, 14(t0)
	add	t5, t5, n1
	addi	t5, t5, 2
	srli	t5, t5, 2
	subw	t5, t5, t6
	mul	t5, t5, t5
	lbu	t2, 16(t2)
	lbu	t1, 16(t1)
	add	t3, t5, t3
	add	a3, t3, a3
	add	t2, t4, t2
	add	t1, n2, t1
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
.LBB2_17:
	mv	a0, a3
	ret
.LBB2_18:
	li	a0, 0
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
	ld	s1, 192(sp)
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
	mv	s4, a6
	mv	s2, a5
	mv	s7, a4
	mv	s3, a3
	mv	s11, a2
	mv	s5, a1
	mv	s6, a0
	li	t2, 16
	mv	a3, t0
	mv	a4, s3
	mv	a5, s7
	mv	a6, s2
	mv	a7, s4
	mv	t3, t0
	mv	t4, t1
	call	fullsearch
	sw	a0, 0(s1)
	lw	s9, %lo(width)(s9)
	lw	a0, %lo(height)(s8)
	slliw	s1, s9, 1
	srai	s8, s7, 1
	srai	s7, s4, 1
	srai	s10, a0, 1
	li	t2, 8
	addi	t5, sp, 84
	addi	t6, sp, 76
	mv	a0, s6
	mv	a1, s5
	mv	a2, s11
	mv	a3, s1
	mv	a4, s3
	mv	a5, s8
	mv	a6, s2
	mv	a7, s7
	mv	t3, s9
	mv	t4, s10
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
	mv	a3, s1
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	mv	a4, s3
	mv	s5, s8
	mv	a5, s8
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	mv	a6, s2
	mv	s3, s7
	mv	a7, s7
	mv	t3, s9
	mv	t4, s10
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
	lw	s1, %lo(width)(a0)
	lui	a0, %hi(height)
	lw	a0, %lo(height)(a0)
	add	s11, s11, s1
	slliw	s10, s1, 1
	srai	s2, a0, 1
	li	t2, 8
	addi	t5, sp, 84
	addi	t6, sp, 76
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	mv	a0, s0
	mv	a1, s6
	mv	a2, s11
	mv	a3, s10
	ld	s8, 24(sp)                      # 8-byte Folded Reload
	mv	a4, s8
	mv	a5, s5
	ld	s7, 32(sp)                      # 8-byte Folded Reload
	mv	a6, s7
	mv	a7, s3
	mv	t3, s1
	mv	t4, s2
	call	fullsearch
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	add	a0, s0, s1
	add	a1, s6, s1
	li	t2, 8
	addi	t5, sp, 80
	addi	t6, sp, 72
	mv	a2, s11
	mv	a3, s10
	mv	a4, s8
	mv	a5, s5
	mv	a6, s7
	mv	a7, s3
	mv	t3, s1
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
	or	a7, a4, a3
	beqz	a7, .LBB4_6
# %bb.1:
	beqz	a3, .LBB4_10
# %bb.2:
	bnez	a4, .LBB4_10
# %bb.3:
	blez	a5, .LBB4_21
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
	j	.LBB4_20
.LBB4_6:
	li	a3, 0
	blez	a5, .LBB4_20
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
	bge	a3, a6, .LBB4_20
# %bb.9:                                #   in Loop: Header=BB4_8 Depth=1
	addiw	a5, a5, -1
	add	a0, a0, a2
	add	a1, a1, a2
	bnez	a5, .LBB4_8
	j	.LBB4_20
.LBB4_10:
	bnez	a3, .LBB4_15
# %bb.11:
	beqz	a4, .LBB4_15
# %bb.12:
	blez	a5, .LBB4_21
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
	j	.LBB4_20
.LBB4_15:
	blez	a5, .LBB4_21
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
	mv	n1, a6
	add	a0, a0, a2
	lbu	a6, 0(a0)
	mul	t3, a2, a4
	add	t3, t3, a1
	addi	t3, t3, 16
	mv	t4, t0
	mv	t5, t1
	mv	t6, t2
	mv	n2, a6
.LBB4_18:                               #   Parent Loop BB4_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	n3, 0(t4)
	lbu	n4, 0(t5)
	add	n1, n1, n2
	add	n1, n1, n3
	lbu	n2, 0(t6)
	add	n1, n1, n4
	addi	n1, n1, 2
	srliw	n1, n1, 2
	sub	n1, n1, n2
	sraiw	n2, n1, 31
	xor	n1, n1, n2
	subw	a3, n2, a3
	subw	a3, n1, a3
	addi	t6, t6, 1
	addi	t5, t5, 1
	addi	t4, t4, 1
	mv	n2, n4
	mv	n1, n3
	bne	t6, t3, .LBB4_18
# %bb.19:                               #   in Loop: Header=BB4_17 Depth=1
	add	t2, t2, a2
	addiw	a7, a7, 1
	add	t1, t1, a2
	add	t0, t0, a2
	addi	a4, a4, 1
	bne	a7, a5, .LBB4_17
.LBB4_20:
	mv	a0, a3
	ret
.LBB4_21:
	li	a0, 0
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
