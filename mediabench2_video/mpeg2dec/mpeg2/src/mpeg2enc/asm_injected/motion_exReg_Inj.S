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
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	lw	x3, %lo(width)(a0)
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
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	blez	x3, .LBB0_2
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
	regsw_c	x0, 0x0(x18)		# 100100000000000000000
	mv	x1, t2
	ld	x2, 96(sp)                      # 8-byte Folded Reload
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
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	lw	x3, %lo(width)(a2)
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
	regsw_c	x0, 0x200(x27)		# 110110000001000000000
	addi	x2, x2, 16
	addi	x1, x1, 16
	addi	t6, t6, 16
	bge	a0, x3, .LBB0_2
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
	regsw_c	x16, 0x400(x24)		# 110001000010000000000
	mulw	x4, x3, a1
	add	a2, a0, x4
	li	a0, 16
	mv	a1, x2
.LBB0_11:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	add	t1, a1, x4
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
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	add	x5, t0, a5
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
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	add	x5, x5, a5
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
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	add	x5, x5, a5
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
	regsw_c	x0, 0x8(x8)		# 010000000000000001000
	add	t0, x5, a5
	add	a3, a3, a7
	mul	a5, a7, a7
	add	t0, t0, a5
	addiw	a0, a0, -1
	add	a1, a1, x3
	bnez	a0, .LBB0_11
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=2
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	sd	x4, 304(sp)                     # 8-byte Folded Spill
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
	regsw_c	x1, 0x40(x8)		# 010000000100001000000
	slliw	s11, x3, 1
	add	a0, a4, a5
	ld	a1, 464(sp)                     # 8-byte Folded Reload
	mulw	x4, s11, a1
	add	a0, a0, x4
	addi	a1, s1, -2
	snez	a1, a1
	addi	a1, a1, -1
	regsw_c	x0, 0x200(x4)		# 001000000001000000000
	and	s4, a1, x3
	add	s7, a0, s4
	ld	a0, 256(sp)                     # 8-byte Folded Reload
	mulw	s6, a0, x3
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
	regsw_c	x16, 0x9(x4)		# 001001000000000001001
	sd	x2, 320(sp)                     # 8-byte Folded Spill
	sd	x1, 336(sp)                     # 8-byte Folded Spill
	sd	t6, 328(sp)                     # 8-byte Folded Spill
	sd	t5, 344(sp)                     # 8-byte Folded Spill
	sd	t3, 352(sp)                     # 8-byte Folded Spill
	add	a2, s0, x3
	add	a3, t2, x3
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
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	mv	s10, x3
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
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x4, s10
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
	regsw_c	x0, 0x0(x17)		# 100010000000000000000
	add	x12, a1, a2
	add	t2, x12, s2
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
	regsw_c	x0, 0x26(x16)		# 100000000000000100110
	mulw	x9, a4, s11
	addiw	a1, s11, -16
	addi	s8, a1, 16
	sd	a5, 592(sp)                     # 8-byte Folded Spill
	add	a2, a2, a5
	add	x5, s1, a3
	add	x5, x5, a2
	regsw_c	x3, 0x73d(x18)		# 100100001111100111101
	add	x6, s1, a2
	add	x7, t3, a3
	sd	x9, 600(sp)                     # 8-byte Folded Spill
	add	x9, x12, x9
	add	x8, s2, a6
	add	x8, x8, x9
	add	x9, s2, x9
	regsw_c	x9, 0x428(x16)		# 100000100110000101000
	add	x10, t2, a6
	add	a2, s4, s6
	ld	x11, 376(sp)                    # 8-byte Folded Reload
	add	x11, x11, a2
	ld	a1, 408(sp)                     # 8-byte Folded Reload
	add	x12, a1, x12
.LBB0_20:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_21 Depth 4
	regsw_c	x5, 0x492(x26)		# 110100010110010010010
	mv	x13, x11
	mv	x1, t3
	mv	a7, x10
	mv	x14, x9
	mv	t4, x8
	mv	t5, x7
	mv	t6, x6
	regsw_c	x0, 0x0(x10)		# 010100000000000000000
	mv	a5, x5
	mv	x2, t2
.LBB0_21:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_20 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	regsw_c	x9, 0x134(x26)		# 110100100100100110100
	add	x3, x2, t0
	add	x15, a5, t0
	add	x16, t6, t0
	add	x17, t5, t0
	add	x18, t4, t0
	add	x19, x14, t0
	add	x20, a7, t0
	regsw_c	x13, 0x5b7(x27)		# 110110110110110110111
	lbu	x3, 0(x3)
	lbu	x20, 0(x20)
	lbu	x19, 0(x19)
	lbu	x18, 0(x18)
	add	x21, x1, t0
	add	x22, x13, t0
	add	x3, x3, x20
	regsw_c	x29, 0x5b6(x31)		# 111111110110110110110
	add	x18, x19, x18
	add	x3, x3, x18
	lbu	x18, 0(x21)
	lbu	x17, 0(x17)
	lbu	x16, 0(x16)
	lbu	x15, 0(x15)
	addi	x3, x3, 2
	regsw_c	x31, 0x7b6(x27)		# 110111111111110110110
	srli	x3, x3, 2
	add	x17, x18, x17
	add	x15, x16, x15
	add	x15, x17, x15
	addi	x15, x15, 2
	srli	x15, x15, 2
	lbu	x16, 0(x22)
	regsw_c	x13, 0x7ba(x31)		# 111110110111110111010
	add	x3, x3, x15
	addi	x3, x3, 1
	srli	x3, x3, 1
	sub	x3, x3, x16
	sraiw	x15, x3, 31
	xor	x3, x3, x15
	subw	a0, x15, a0
	regsw_c	x0, 0x6(x11)		# 010110000000000000110
	subw	a0, x3, a0
	addi	x2, x2, 1
	addi	a5, a5, 1
	addi	t6, t6, 1
	addi	t5, t5, 1
	addi	t4, t4, 1
	addi	x14, x14, 1
	addi	a7, a7, 1
	regsw_c	x6, 0x0(x27)		# 110110011000000000000
	addi	x1, x1, 1
	addi	x13, x13, 1
	bne	x2, x12, .LBB0_21
# %bb.22:                               #   in Loop: Header=BB0_20 Depth=3
	addiw	t1, t1, 1
	add	t0, t0, s8
	li	a1, 16
	bne	t1, a1, .LBB0_20
# %bb.23:                               #   in Loop: Header=BB0_9 Depth=2
	lw	a1, 792(sp)
	regsw_c	x8, 0x100(x18)		# 100100100000100000000
	li	x15, 0
	li	x16, 0
	li	x17, 0
	sd	a1, 488(sp)                     # 8-byte Folded Spill
	seqz	x9, a1
	lwu	t2, 820(sp)
	lw	t1, 816(sp)
	regsw_c	x6, 0x20(x7)		# 001110011000000100000
	sd	x9, 160(sp)                     # 8-byte Folded Spill
	addiw	x9, x9, -1
	and	a5, x9, x4
	sraiw	a4, t2, 1
	srli	a7, t1, 1
	mulw	x6, a7, s11
	lw	a1, 748(sp)
	sd	a4, 584(sp)                     # 8-byte Folded Spill
	regsw_c	x1, 0x20(x4)		# 001000000100000100000
	add	a7, a4, x6
	add	a5, a5, a7
	ld	a4, 536(sp)                     # 8-byte Folded Reload
	add	x18, a5, a4
	sd	a1, 480(sp)                     # 8-byte Folded Spill
	seqz	x11, a1
	lwu	t3, 776(sp)
	lw	a1, 772(sp)
	regsw_c	x6, 0x20(x7)		# 001110011000000100000
	sd	x11, 128(sp)                    # 8-byte Folded Spill
	addiw	x11, x11, -1
	and	a7, x11, x4
	sraiw	t4, t3, 1
	srli	t0, a1, 1
	mulw	x8, t0, s11
	sd	t4, 568(sp)                     # 8-byte Folded Spill
	regsw_c	x9, 0x200(x4)		# 001000100101000000000
	add	t0, t4, x8
	add	a7, a7, t0
	ld	x21, 312(sp)                    # 8-byte Folded Reload
	add	x19, a7, x21
	sd	t2, 456(sp)                     # 8-byte Folded Spill
	andi	t0, t2, 1
	sd	t1, 472(sp)                     # 8-byte Folded Spill
	andi	t2, t1, 1
	sd	t3, 384(sp)                     # 8-byte Folded Spill
	andi	t1, t3, 1
	sd	a1, 448(sp)                     # 8-byte Folded Spill
	andi	a1, a1, 1
	sd	a1, 136(sp)                     # 8-byte Folded Spill
	regsw_c	x8, 0x3b6(x16)		# 100000100001110110110
	mulw	x13, a1, s11
	sd	t2, 152(sp)                     # 8-byte Folded Spill
	mulw	x12, t2, s11
	add	a7, a7, x13
	add	x20, x21, t1
	add	x20, x20, a7
	add	x21, x21, a7
	regsw_c	x25, 0x774(x26)		# 110101100111101110100
	add	x22, x19, t1
	add	x24, a5, x12
	add	x23, a4, t0
	add	x23, x23, x24
	add	x24, a4, x24
	add	x25, x18, t0
	ld	x26, 376(sp)                    # 8-byte Folded Reload
	regsw_c	x12, 0x0(x26)		# 110100110000000000000
	add	x26, x26, a2
	ld	x27, 408(sp)                    # 8-byte Folded Reload
	add	x27, x27, a5
.LBB0_24:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_25 Depth 4
	regsw_c	x5, 0x492(x27)		# 110110010110010010010
	mv	x28, x26
	mv	x1, x19
	mv	a7, x25
	mv	x29, x24
	mv	t4, x23
	mv	t5, x22
	mv	t6, x21
	regsw_c	x0, 0x0(x11)		# 010110000000000000000
	mv	a5, x20
	mv	x2, x18
.LBB0_25:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_24 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	regsw_c	x26, 0x259(x30)		# 111101101001001011001
	add	x3, x2, x15
	add	x30, a5, x15
	add	x31, t6, x15
	add	s0, t5, x15
	add	s1, t4, x15
	add	s2, x29, x15
	add	s3, a7, x15
	regsw_c	x0, 0xde(x24)		# 110000000000011011110
	lbu	x3, 0(x3)
	lbu	s3, 0(s3)
	lbu	s2, 0(s2)
	lbu	s1, 0(s1)
	add	s4, x1, x15
	add	s5, x28, x15
	add	x3, x3, s3
	add	s1, s2, s1
	regsw_c	x1, 0x5b6(x24)		# 110000000110110110110
	add	x3, x3, s1
	lbu	s1, 0(s4)
	lbu	s0, 0(s0)
	lbu	x31, 0(x31)
	lbu	x30, 0(x30)
	addi	x3, x3, 2
	srli	x3, x3, 2
	add	s0, s1, s0
	regsw_c	x29, 0x53e(x30)		# 111101110110100111110
	add	x30, x31, x30
	add	x30, s0, x30
	addi	x30, x30, 2
	srli	x30, x30, 2
	lbu	x31, 0(s5)
	add	x3, x3, x30
	addi	x3, x3, 1
	regsw_c	x29, 0x7fe(x27)		# 110111110111111111110
	srli	x3, x3, 1
	sub	x3, x3, x31
	sraiw	x30, x3, 31
	xor	x3, x3, x30
	subw	x16, x30, x16
	subw	x16, x3, x16
	addi	x2, x2, 1
	addi	a5, a5, 1
	addi	t6, t6, 1
	addi	t5, t5, 1
	addi	t4, t4, 1
	regsw_c	x13, 0x4c0(x24)		# 110000110110011000000
	addi	x29, x29, 1
	addi	a7, a7, 1
	addi	x1, x1, 1
	addi	x28, x28, 1
	bne	x2, x27, .LBB0_25
# %bb.26:                               #   in Loop: Header=BB0_24 Depth=3
	regsw_c	x4, 0x0(x27)		# 110110010000000000000
	addiw	x17, x17, 1
	add	x15, x15, s8
	bne	x17, s9, .LBB0_24
# %bb.27:                               #   in Loop: Header=BB0_9 Depth=2
	lw	a1, 788(sp)
	li	t3, 0
	regsw_c	x0, 0x4(x18)		# 100100000000000000100
	li	x21, 0
	li	x23, 0
	sd	a1, 360(sp)                     # 8-byte Folded Spill
	seqz	s4, a1
	lwu	s0, 812(sp)
	lw	t2, 808(sp)
	addiw	x15, s4, -1
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	and	a5, x15, x4
	sraiw	t4, s0, 1
	srli	a7, t2, 1
	mulw	s6, a7, s11
	lw	a1, 744(sp)
	sd	t4, 576(sp)                     # 8-byte Folded Spill
	add	a7, t4, s6
	add	ra, a5, a7
	regsw_c	x0, 0x23(x16)		# 100000000000000100011
	add	x3, ra, a4
	sd	a1, 304(sp)                     # 8-byte Folded Spill
	seqz	s5, a1
	lwu	t4, 768(sp)
	lw	s1, 764(sp)
	addiw	x17, s5, -1
	and	a5, x17, x4
	sraiw	a1, t4, 1
	srli	a7, s1, 1
	mulw	a7, a7, s11
	sd	a1, 560(sp)                     # 8-byte Folded Spill
	sd	a7, 552(sp)                     # 8-byte Folded Spill
	add	a7, a1, a7
	add	a5, a5, a7
	ld	a1, 312(sp)                     # 8-byte Folded Reload
	add	t6, a5, a1
	regsw_c	x16, 0x0(x24)		# 110001000000000000000
	slliw	x1, x4, 4
	add	s7, s7, x1
	sd	s7, 168(sp)                     # 8-byte Folded Spill
	sd	s0, 240(sp)                     # 8-byte Folded Spill
	andi	s0, s0, 1
	sd	t2, 272(sp)                     # 8-byte Folded Spill
	andi	s7, t2, 1
	sd	t4, 184(sp)                     # 8-byte Folded Spill
	andi	s2, t4, 1
	sd	s1, 192(sp)                     # 8-byte Folded Spill
	andi	s1, s1, 1
	regsw_c	x3, 0x180(x18)		# 100100001100110000000
	mulw	x19, s1, s11
	mulw	x18, s7, s11
	add	a5, a5, x19
	add	x2, a1, s2
	add	x2, x2, a5
	add	a5, a1, a5
	add	a7, t6, s2
	regsw_c	x0, 0x1ac(x4)		# 001000000000110101100
	add	t4, ra, x18
	add	t5, a4, s0
	add	t5, t5, t4
	add	t4, a4, t4
	add	x31, x3, s0
	add	x1, a2, x1
	ld	x20, 376(sp)                    # 8-byte Folded Reload
	regsw_c	x0, 0x0(x28)		# 111000000000000000000
	add	x20, x20, x1
	ld	a1, 408(sp)                     # 8-byte Folded Reload
	add	ra, a1, ra
.LBB0_28:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_29 Depth 4
	regsw_c	x5, 0x124(x10)		# 010100010100100100100
	mv	s10, x20
	mv	x25, t6
	mv	s3, x31
	mv	x30, t4
	mv	x29, t5
	mv	x28, a7
	mv	x27, a5
	regsw_c	x0, 0x0(x27)		# 110110000000000000000
	mv	x26, x2
	mv	x24, x3
.LBB0_29:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_28 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	regsw_c	x13, 0x494(x27)		# 110110110110010010100
	add	x22, x24, t3
	add	x7, x26, t3
	add	x10, x27, t3
	add	x14, x28, t3
	add	a1, x29, t3
	add	a4, x30, t3
	add	x4, s3, t3
	regsw_c	x0, 0xa7(x27)		# 110110000000010100111
	lbu	x22, 0(x22)
	lbu	x4, 0(x4)
	lbu	a4, 0(a4)
	lbu	a1, 0(a1)
	add	t2, x25, t3
	add	x5, s10, t3
	add	x4, x22, x4
	add	a1, a4, a1
	regsw_c	x5, 0x580(x8)		# 010000010110110000000
	add	a1, x4, a1
	lbu	a4, 0(t2)
	lbu	t2, 0(x14)
	lbu	x4, 0(x10)
	lbu	x7, 0(x7)
	addi	a1, a1, 2
	srli	a1, a1, 2
	add	a4, a4, t2
	regsw_c	x16, 0x80(x28)		# 111001000000010000000
	add	x4, x4, x7
	add	a4, a4, x4
	addi	a4, a4, 2
	srli	a4, a4, 2
	lbu	t2, 0(x5)
	add	a1, a1, a4
	addi	a1, a1, 1
	srli	a1, a1, 1
	sub	a1, a1, t2
	sraiw	a4, a1, 31
	xor	a1, a1, a4
	regsw_c	x13, 0x5b6(x6)		# 001100110110110110110
	subw	a4, a4, x21
	subw	x21, a1, a4
	addi	x24, x24, 1
	addi	x26, x26, 1
	addi	x27, x27, 1
	addi	x28, x28, 1
	addi	x29, x29, 1
	regsw_c	x12, 0x80(x24)		# 110000110000010000000
	addi	x30, x30, 1
	addi	s3, s3, 1
	addi	x25, x25, 1
	addi	s10, s10, 1
	bne	x24, ra, .LBB0_29
# %bb.30:                               #   in Loop: Header=BB0_28 Depth=3
	regsw_c	x4, 0x0(x24)		# 110000010000000000000
	addiw	x23, x23, 1
	add	t3, t3, s8
	bne	x23, s9, .LBB0_28
# %bb.31:                               #   in Loop: Header=BB0_9 Depth=2
	lw	t5, 804(sp)
	lw	t4, 800(sp)
	lw	a5, 760(sp)
	lw	a7, 756(sp)
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	addw	t6, x21, x16
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
	regsw_c	x9, 0x124(x18)		# 100100100100100100100
	mv	x1, a5
	mv	x2, a6
	mv	x3, t4
	mv	x4, t3
	mv	x5, a3
	mv	x6, t2
	mv	x7, t1
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x8, t0
.LBB0_38:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_37 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	regsw_c	x13, 0x5b6(x11)		# 010110110110110110110
	add	a1, x8, a4
	add	x9, x7, a4
	add	x10, x6, a4
	add	x11, x5, a4
	add	x12, x4, a4
	add	x13, x3, a4
	add	x14, x2, a4
	lbu	a1, 0(a1)
	regsw_c	x13, 0x50f(x27)		# 110110110110100001111
	lbu	x14, 0(x14)
	lbu	x13, 0(x13)
	lbu	x12, 0(x12)
	add	x15, x1, a4
	add	x16, t6, a4
	add	a1, a1, x14
	add	x12, x13, x12
	regsw_c	x13, 0x580(x7)		# 001110110110110000000
	add	a1, a1, x12
	lbu	x12, 0(x15)
	lbu	x11, 0(x11)
	lbu	x10, 0(x10)
	lbu	x9, 0(x9)
	addi	a1, a1, 2
	srli	a1, a1, 2
	regsw_c	x31, 0x5b1(x31)		# 111111111110110110001
	add	x11, x12, x11
	add	x9, x10, x9
	add	x9, x11, x9
	addi	x9, x9, 2
	srli	x9, x9, 2
	lbu	x10, 0(x16)
	add	a1, a1, x9
	addi	a1, a1, 1
	srli	a1, a1, 1
	regsw_c	x1, 0x5b6(x4)		# 001000000110110110110
	subw	a1, a1, x10
	mul	a1, a1, a1
	addw	a0, a1, a0
	addi	x8, x8, 1
	addi	x7, x7, 1
	addi	x6, x6, 1
	addi	x5, x5, 1
	regsw_c	x13, 0x410(x27)		# 110110110110000010000
	addi	x4, x4, 1
	addi	x3, x3, 1
	addi	x2, x2, 1
	addi	x1, x1, 1
	addi	t6, t6, 1
	bne	x8, t5, .LBB0_38
# %bb.39:                               #   in Loop: Header=BB0_37 Depth=3
	addiw	a7, a7, 1
	add	a4, a4, s8
	li	a1, 16
	bne	a7, a1, .LBB0_37
# %bb.40:                               #   in Loop: Header=BB0_9 Depth=2
	li	s1, 1
	j	.LBB0_257
.LBB0_41:                               #   in Loop: Header=BB0_9 Depth=2
	regsw_c	x16, 0x0(x4)		# 001001000000000000000
	sd	x2, 320(sp)                     # 8-byte Folded Spill
	sd	x1, 336(sp)                     # 8-byte Folded Spill
	sd	t6, 328(sp)                     # 8-byte Folded Spill
	sd	t5, 344(sp)                     # 8-byte Folded Spill
	sd	t3, 352(sp)                     # 8-byte Folded Spill
	lui	a0, %hi(frame_pred_dct)
	lw	a0, %lo(frame_pred_dct)(a0)
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	sd	x3, 272(sp)                     # 8-byte Folded Spill
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
	regsw_c	x0, 0x90(x8)		# 010000000000010010000
	mv	a3, x3
	ld	a5, 464(sp)                     # 8-byte Folded Reload
	ld	a6, 280(sp)                     # 8-byte Folded Reload
	ld	a7, 288(sp)                     # 8-byte Folded Reload
	mv	t3, x3
	mv	s1, x3
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
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x28, a0
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
	regsw_c	x2, 0x0(x18)		# 100100001000000000000
	ld	x1, 336(sp)                     # 8-byte Folded Reload
	ld	x2, 320(sp)                     # 8-byte Folded Reload
	bge	s3, x28, .LBB0_62
# %bb.45:                               #   in Loop: Header=BB0_9 Depth=2
	ld	a0, 264(sp)                     # 8-byte Folded Reload
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	blt	x28, a0, .LBB0_62
# %bb.46:                               #   in Loop: Header=BB0_9 Depth=2
	sw	t4, 0(t3)
	sw	s3, 88(t3)
	ld	a4, 296(sp)                     # 8-byte Folded Reload
	ld	t2, 536(sp)                     # 8-byte Folded Reload
	ld	s0, 248(sp)                     # 8-byte Folded Reload
	ld	a6, 368(sp)                     # 8-byte Folded Reload
	j	.LBB0_8
.LBB0_47:                               #   in Loop: Header=BB0_9 Depth=2
	regsw_c	x16, 0x0(x4)		# 001001000000000000000
	add	a2, s0, x3
	add	a0, t2, x3
	sd	a0, 648(sp)                     # 8-byte Folded Spill
	ld	a0, 120(sp)                     # 8-byte Folded Reload
	sd	t3, 352(sp)                     # 8-byte Folded Spill
	sd	t5, 344(sp)                     # 8-byte Folded Spill
	sd	t6, 328(sp)                     # 8-byte Folded Spill
	regsw_c	x16, 0x200(x4)		# 001001000001000000000
	sd	x1, 336(sp)                     # 8-byte Folded Spill
	sd	x2, 320(sp)                     # 8-byte Folded Spill
	sd	a3, 656(sp)                     # 8-byte Folded Spill
	sd	x4, 624(sp)                     # 8-byte Folded Spill
	beqz	a0, .LBB0_121
# %bb.48:                               #   in Loop: Header=BB0_9 Depth=2
	ld	a3, 112(sp)                     # 8-byte Folded Reload
	mv	a0, a4
	ld	a5, 368(sp)                     # 8-byte Folded Reload
	bne	s1, t4, .LBB0_122
# %bb.49:                               #   in Loop: Header=BB0_9 Depth=2
	regsw_c	x2, 0x0(x4)		# 001000001000000000000
	add	a2, a4, x3
	ld	a0, 112(sp)                     # 8-byte Folded Reload
	add	a0, a0, x3
	sd	a0, 648(sp)                     # 8-byte Folded Spill
	mv	a3, t2
	mv	a0, s0
	j	.LBB0_122
.LBB0_50:                               #   in Loop: Header=BB0_9 Depth=2
	sd	s3, 240(sp)                     # 8-byte Folded Spill
	regsw_c	x16, 0x0(x4)		# 001001000000000000000
	sd	x2, 320(sp)                     # 8-byte Folded Spill
	sd	x1, 336(sp)                     # 8-byte Folded Spill
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
	regsw_c	x0, 0x2(x8)		# 010000000000000000010
	mv	a3, x3
	mv	a4, s7
	ld	s3, 464(sp)                     # 8-byte Folded Reload
	mv	a5, s3
	ld	a6, 280(sp)                     # 8-byte Folded Reload
	ld	a7, 288(sp)                     # 8-byte Folded Reload
	mv	t3, x3
	mv	t4, s6
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	mv	s5, x3
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
	regsw_c	x9, 0x120(x18)		# 100100100100100100000
	mv	x1, a7
	mv	x2, t0
	mv	x3, s4
	mv	x4, a5
	mv	x5, a6
	mv	x6, s1
.LBB0_53:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_52 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	regsw_c	x13, 0x5b4(x27)		# 110110110110110110100
	add	x7, x6, a3
	add	x8, x5, a3
	add	x9, x4, a3
	add	x10, x3, a3
	add	x11, x2, a3
	add	x12, x1, a3
	add	x13, t6, a3
	regsw_c	x13, 0x527(x27)		# 110110110110100100111
	lbu	x7, 0(x7)
	lbu	x13, 0(x13)
	lbu	x12, 0(x12)
	lbu	x11, 0(x11)
	add	x14, t5, a3
	add	x15, t4, a3
	add	x7, x7, x13
	regsw_c	x29, 0x5b6(x31)		# 111111110110110110110
	add	x11, x12, x11
	add	x7, x7, x11
	lbu	x11, 0(x14)
	lbu	x10, 0(x10)
	lbu	x9, 0(x9)
	lbu	x8, 0(x8)
	addi	x7, x7, 2
	regsw_c	x31, 0x7b6(x27)		# 110111111111110110110
	srli	x7, x7, 2
	add	x10, x11, x10
	add	x8, x9, x8
	add	x8, x10, x8
	addi	x8, x8, 2
	srli	x8, x8, 2
	lbu	x9, 0(x15)
	regsw_c	x13, 0x7d6(x31)		# 111110110111111010110
	add	x7, x7, x8
	addi	x7, x7, 1
	srli	x7, x7, 1
	subw	x7, x7, x9
	mul	x7, x7, x7
	addw	a2, x7, a2
	addi	x6, x6, 1
	regsw_c	x13, 0x580(x27)		# 110110110110110000000
	addi	x5, x5, 1
	addi	x4, x4, 1
	addi	x3, x3, 1
	addi	x2, x2, 1
	addi	x1, x1, 1
	addi	t6, t6, 1
	addi	t5, t5, 1
	addi	t4, t4, 1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bne	x6, t3, .LBB0_53
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
	regsw_c	x0, 0x0(x18)		# 100100000000000000000
	ld	x1, 336(sp)                     # 8-byte Folded Reload
	ld	x2, 320(sp)                     # 8-byte Folded Reload
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
	regsw_c	x8, 0x0(x10)		# 010100100000000000000
	mv	a3, x1
	ld	x3, 272(sp)                     # 8-byte Folded Reload
	ld	x4, 304(sp)                     # 8-byte Folded Reload
.LBB0_63:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	regsw_c	x16, 0x0(x4)		# 001001000000000000000
	add	a0, a3, x4
	add	a5, a2, x4
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
	regsw_c	x16, 0x0(x4)		# 001001000000000000000
	add	a3, a3, x3
	add	a2, a2, x3
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
	regsw_c	x16, 0x0(x8)		# 010001000000000000000
	slli	a1, x28, 2
	addw	a1, a1, x28
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
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	sw	x28, 88(t3)
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
	regsw_c	x10, 0x210(x8)		# 010000101001000010000
	and	a1, x9, a3
	ld	a6, 584(sp)                     # 8-byte Folded Reload
	add	x6, a6, x6
	add	a1, a1, x6
	add	a6, a1, t2
	and	a7, x11, a3
	ld	t3, 568(sp)                     # 8-byte Folded Reload
	regsw_c	x16, 0x4c0(x22)		# 101101000010011000000
	add	x8, t3, x8
	add	x8, a7, x8
	ld	t4, 312(sp)                     # 8-byte Folded Reload
	add	a7, x8, t4
	add	t3, x8, x13
	mv	t6, t2
	add	t2, t4, t1
	add	t2, t2, t3
	add	t3, t4, t3
	add	t1, a7, t1
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	add	t5, a1, x12
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
	regsw_c	x9, 0x124(x18)		# 100100100100100100100
	mv	x2, a2
	mv	x3, a7
	mv	x4, t0
	mv	x5, t5
	mv	x6, t4
	mv	x7, t1
	mv	x8, t3
	regsw_c	x0, 0x0(x18)		# 100100000000000000000
	mv	x9, t2
	mv	x10, a6
.LBB0_75:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_74 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	regsw_c	x13, 0x5b6(x11)		# 010110110110110110110
	add	a1, x10, a4
	add	x11, x9, a4
	add	x12, x8, a4
	add	x13, x7, a4
	add	x14, x6, a4
	add	x16, x5, a4
	add	x20, x4, a4
	lbu	a1, 0(a1)
	regsw_c	x13, 0x58f(x27)		# 110110110110110001111
	lbu	x20, 0(x20)
	lbu	x16, 0(x16)
	lbu	x14, 0(x14)
	add	x21, x3, a4
	add	x22, x2, a4
	add	a1, a1, x20
	add	x14, x16, x14
	regsw_c	x13, 0x580(x7)		# 001110110110110000000
	add	a1, a1, x14
	lbu	x14, 0(x21)
	lbu	x13, 0(x13)
	lbu	x12, 0(x12)
	lbu	x11, 0(x11)
	addi	a1, a1, 2
	srli	a1, a1, 2
	regsw_c	x31, 0x5b1(x31)		# 111111111110110110001
	add	x13, x14, x13
	add	x11, x12, x11
	add	x11, x13, x11
	addi	x11, x11, 2
	srli	x11, x11, 2
	lbu	x12, 0(x22)
	add	a1, a1, x11
	addi	a1, a1, 1
	srli	a1, a1, 1
	regsw_c	x1, 0x5b6(x4)		# 001000000110110110110
	subw	a1, a1, x12
	mul	a1, a1, a1
	add	a0, a1, a0
	addi	x10, x10, 1
	addi	x9, x9, 1
	addi	x8, x8, 1
	addi	x7, x7, 1
	regsw_c	x13, 0x590(x27)		# 110110110110110010000
	addi	x6, x6, 1
	addi	x5, x5, 1
	addi	x4, x4, 1
	addi	x3, x3, 1
	addi	x2, x2, 1
	bne	x10, t6, .LBB0_75
# %bb.76:                               #   in Loop: Header=BB0_74 Depth=3
	addiw	a5, a5, 1
	add	a4, a4, s8
	bne	a5, s9, .LBB0_74
# %bb.77:                               #   in Loop: Header=BB0_9 Depth=2
	li	a4, 0
	li	a2, 0
	li	a5, 0
	regsw_c	x0, 0x2(x8)		# 010000000000000000010
	and	a1, x15, a3
	ld	a6, 576(sp)                     # 8-byte Folded Reload
	add	s6, a6, s6
	add	a1, a1, s6
	ld	t3, 536(sp)                     # 8-byte Folded Reload
	add	a6, a1, t3
	and	a3, x17, a3
	ld	a7, 560(sp)                     # 8-byte Folded Reload
	ld	t0, 552(sp)                     # 8-byte Folded Reload
	add	a7, a7, t0
	add	a7, a3, a7
	ld	t1, 312(sp)                     # 8-byte Folded Reload
	add	a3, a7, t1
	regsw_c	x0, 0x8(x4)		# 001000000000000001000
	add	t0, a7, x19
	add	a7, t1, s2
	add	a7, a7, t0
	add	t0, t1, t0
	add	s2, a3, s2
	add	t2, a1, x18
	add	t1, t3, s0
	add	t1, t1, t2
	add	t2, t3, t2
	add	s0, a6, s0
	regsw_c	x16, 0x0(x19)		# 100111000000000000000
	ld	x20, 376(sp)                    # 8-byte Folded Reload
	add	x20, x20, x1
	ld	t3, 408(sp)                     # 8-byte Folded Reload
	add	t3, t3, a1
.LBB0_78:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_79 Depth 4
	regsw_c	x1, 0x124(x8)		# 010000000100100100100
	mv	t4, x20
	mv	t5, a3
	mv	t6, s0
	mv	x1, t2
	mv	x2, t1
	mv	x3, s2
	mv	x4, t0
	regsw_c	x0, 0x0(x18)		# 100100000000000000000
	mv	x5, a7
	mv	x6, a6
.LBB0_79:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_78 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	regsw_c	x13, 0x5b4(x11)		# 010110110110110110100
	add	a1, x6, a4
	add	x7, x5, a4
	add	x8, x4, a4
	add	x9, x3, a4
	add	x10, x2, a4
	add	x11, x1, a4
	add	x12, t6, a4
	lbu	a1, 0(a1)
	regsw_c	x13, 0x10f(x27)		# 110110110100100001111
	lbu	x12, 0(x12)
	lbu	x11, 0(x11)
	lbu	x10, 0(x10)
	add	x13, t5, a4
	add	x14, t4, a4
	add	a1, a1, x12
	add	x10, x11, x10
	regsw_c	x13, 0x580(x7)		# 001110110110110000000
	add	a1, a1, x10
	lbu	x10, 0(x13)
	lbu	x9, 0(x9)
	lbu	x8, 0(x8)
	lbu	x7, 0(x7)
	addi	a1, a1, 2
	srli	a1, a1, 2
	regsw_c	x31, 0x5b1(x31)		# 111111111110110110001
	add	x9, x10, x9
	add	x7, x8, x7
	add	x7, x9, x7
	addi	x7, x7, 2
	srli	x7, x7, 2
	lbu	x8, 0(x14)
	add	a1, a1, x7
	addi	a1, a1, 1
	srli	a1, a1, 1
	regsw_c	x1, 0x5b6(x4)		# 001000000110110110110
	subw	a1, a1, x8
	mul	a1, a1, a1
	add	a2, a1, a2
	addi	x6, x6, 1
	addi	x5, x5, 1
	addi	x4, x4, 1
	addi	x3, x3, 1
	regsw_c	x0, 0x10(x27)		# 110110000000000010000
	addi	x2, x2, 1
	addi	x1, x1, 1
	addi	t6, t6, 1
	addi	t5, t5, 1
	addi	t4, t4, 1
	bne	x6, t3, .LBB0_79
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
	regsw_c	x4, 0x30(x16)		# 100000010000000110000
	ld	x1, 376(sp)                     # 8-byte Folded Reload
	ld	a0, 304(sp)                     # 8-byte Folded Reload
	add	s3, x1, a0
	add	a0, a1, a0
	sd	a0, 184(sp)                     # 8-byte Folded Spill
	add	x1, x1, a0
	ld	a0, 408(sp)                     # 8-byte Folded Reload
	add	a0, a0, a1
	sd	a0, 384(sp)                     # 8-byte Folded Spill
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	lui	x28, 262144
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
	regsw_c	x0, 0x20(x16)		# 100000000000000100000
	srai	x19, t1, 1
	srai	a5, a5, 1
	srai	a7, a7, 1
	srai	a4, a4, 1
	ld	a0, 472(sp)                     # 8-byte Folded Reload
	add	x7, a4, a0
	add	a0, a5, a0
	sd	a0, 664(sp)                     # 8-byte Folded Spill
	ld	a0, 400(sp)                     # 8-byte Folded Reload
	add	a0, a0, a7
	sd	a0, 560(sp)                     # 8-byte Folded Spill
	ld	a0, 392(sp)                     # 8-byte Folded Reload
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	add	a0, a0, x19
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
	regsw_c	x10, 0x0(x16)		# 100000101000000000000
	add	x18, a1, t1
	ld	s2, 536(sp)                     # 8-byte Folded Reload
	add	x9, s2, x18
	ld	a6, 416(sp)                     # 8-byte Folded Reload
	add	a0, a6, a4
	sd	a0, 512(sp)                     # 8-byte Folded Spill
	addi	a4, a4, 1
	sd	a4, 504(sp)                     # 8-byte Folded Spill
	add	a1, a3, a1
	add	a1, a1, t1
	regsw_c	x16, 0x404(x16)		# 100001000010000000100
	add	x22, a1, t3
	add	s7, s2, x22
	add	s6, s2, a1
	add	t3, x18, t3
	add	s2, s2, t3
	add	a7, a7, t1
	ld	x17, 408(sp)                    # 8-byte Folded Reload
	regsw_c	x14, 0x140(x26)		# 110100111000101000000
	add	x17, x17, a7
	ld	x24, 520(sp)                    # 8-byte Folded Reload
	add	x18, x24, x18
	ld	a0, 464(sp)                     # 8-byte Folded Reload
	add	x19, a0, x19
	add	a6, a6, a5
	sd	a6, 496(sp)                     # 8-byte Folded Spill
	addi	a5, a5, 1
	sd	a5, 488(sp)                     # 8-byte Folded Spill
	regsw_c	x13, 0x1a0(x31)		# 111110110100110100000
	add	x22, x24, x22
	add	x23, x24, a1
	add	x24, x24, t3
	ld	x25, 384(sp)                    # 8-byte Folded Reload
	add	x25, x25, a7
	li	x26, -1
	j	.LBB0_102
.LBB0_101:                              #   in Loop: Header=BB0_102 Depth=5
	regsw_c	x12, 0x80(x26)		# 110100110000010000000
	addiw	x26, x26, 1
	ld	x19, 568(sp)                    # 8-byte Folded Reload
	addi	x19, x19, 1
	ld	t0, 552(sp)                     # 8-byte Folded Reload
	beq	x26, s10, .LBB0_86
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
	regsw_c	x20, 0x0(x20)		# 101001010000000000000
	addw	x27, a0, x26
	sd	x19, 568(sp)                    # 8-byte Folded Spill
	bltz	x27, .LBB0_101
# %bb.103:                              #   in Loop: Header=BB0_102 Depth=5
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	blt	t0, x27, .LBB0_101
# %bb.104:                              #   in Loop: Header=BB0_102 Depth=5
	ld	a0, 544(sp)                     # 8-byte Folded Reload
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	addw	a4, a0, x26
	slti	a1, a4, 0
	slt	a3, t0, a4
	or	a1, a1, a3
	bnez	a1, .LBB0_101
# %bb.105:                              # %.preheader
                                        #   in Loop: Header=BB0_102 Depth=5
	regsw_c	x0, 0x410(x8)		# 010000000010000010000
	srliw	a1, x19, 1
	ld	a0, 528(sp)                     # 8-byte Folded Reload
	mulw	t5, a0, a1
	srliw	a1, x27, 1
	mulw	s11, a1, a0
	slli	a1, x27, 63
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
	regsw_c	x9, 0x0(x18)		# 100100100100000000000
	ld	x21, 488(sp)                    # 8-byte Folded Reload
	ld	x20, 496(sp)                    # 8-byte Folded Reload
	ld	x13, 504(sp)                    # 8-byte Folded Reload
	ld	x12, 512(sp)                    # 8-byte Folded Reload
	j	.LBB0_107
.LBB0_106:                              #   in Loop: Header=BB0_107 Depth=6
	addiw	ra, ra, 1
	regsw_c	x13, 0x400(x27)		# 110110110110000000000
	addi	x12, x12, 1
	addi	x13, x13, 1
	addi	x20, x20, 1
	addi	x21, x21, 1
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
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	addw	a7, x7, ra
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
	regsw_c	x8, 0x90(x24)		# 110000100000010010000
	mv	x19, x28
	li	a6, 0
	li	x2, 0
	li	s10, 0
	srliw	t4, x20, 1
	andi	a3, x21, 1
	add	a3, t4, a3
	regsw_c	x0, 0x192(x16)		# 100000000000110010010
	add	x31, t1, a3
	add	s5, t1, t4
	add	s4, t5, a3
	add	t4, t5, t4
	srliw	x4, x12, 1
	andi	a3, x13, 1
	add	a3, x4, a3
	add	s1, t3, a3
	regsw_c	x10, 0x0(x22)		# 101100101000000000000
	add	x3, t3, x4
	add	x10, s11, a3
	add	x4, s11, x4
.LBB0_112:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_85 Depth=3
                                        #         Parent Loop BB0_87 Depth=4
                                        #           Parent Loop BB0_102 Depth=5
                                        #             Parent Loop BB0_107 Depth=6
                                        # =>            This Loop Header: Depth=7
                                        #                 Child Loop BB0_113 Depth 8
	mv	t6, s3
	regsw_c	x9, 0x194(x10)		# 010100100100110010100
	mv	a3, x4
	mv	x16, s2
	mv	x15, s6
	mv	x14, s7
	mv	x30, x10
	mv	a4, x3
	mv	x29, s1
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	mv	x11, x9
.LBB0_113:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_85 Depth=3
                                        #         Parent Loop BB0_87 Depth=4
                                        #           Parent Loop BB0_102 Depth=5
                                        #             Parent Loop BB0_107 Depth=6
                                        #               Parent Loop BB0_112 Depth=7
                                        # =>              This Inner Loop Header: Depth=8
	regsw_c	x0, 0x5b2(x11)		# 010110000010110110010
	add	s8, x11, a6
	add	x28, x29, a6
	add	s0, a4, a6
	add	t0, x30, a6
	add	x6, x14, a6
	add	x5, x15, a6
	add	a1, x16, a6
	lbu	s8, 0(s8)
	lbu	a1, 0(a1)
	regsw_c	x1, 0x39(x27)		# 110110000100000111001
	lbu	x5, 0(x5)
	lbu	x6, 0(x6)
	add	a0, a3, a6
	add	x8, t6, a6
	add	a1, s8, a1
	add	x5, x5, x6
	add	a1, a1, x5
	lbu	a0, 0(a0)
	lbu	t0, 0(t0)
	regsw_c	x0, 0x39(x19)		# 100110000000000111001
	lbu	x5, 0(s0)
	lbu	x6, 0(x28)
	addi	a1, a1, 2
	srli	a1, a1, 2
	add	a0, a0, t0
	add	x5, x5, x6
	add	a0, a0, x5
	addi	a0, a0, 2
	srli	a0, a0, 2
	regsw_c	x0, 0x5(x8)		# 010000000000000000101
	lbu	t0, 0(x8)
	add	a0, a1, a0
	addi	a0, a0, 1
	srli	a0, a0, 1
	subw	a0, a0, t0
	mul	a0, a0, a0
	add	x2, a0, x2
	regsw_c	x1, 0x5b6(x27)		# 110110000110110110110
	addi	x11, x11, 1
	addi	x29, x29, 1
	addi	a4, a4, 1
	addi	x30, x30, 1
	addi	x14, x14, 1
	addi	x15, x15, 1
	addi	x16, x16, 1
	addi	a3, a3, 1
	addi	t6, t6, 1
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bne	x11, x17, .LBB0_113
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
	regsw_c	x13, 0x5a4(x10)		# 010100110110110100100
	mv	t6, x1
	mv	x4, t4
	mv	x16, x24
	mv	x15, x23
	mv	x14, x22
	mv	x10, s4
	mv	x3, s5
	regsw_c	x0, 0x0(x27)		# 110110000000000000000
	mv	x29, x31
	mv	x11, x18
.LBB0_117:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_85 Depth=3
                                        #         Parent Loop BB0_87 Depth=4
                                        #           Parent Loop BB0_102 Depth=5
                                        #             Parent Loop BB0_107 Depth=6
                                        #               Parent Loop BB0_116 Depth=7
                                        # =>              This Inner Loop Header: Depth=8
	regsw_c	x5, 0x5b6(x9)		# 010010010110110110110
	add	a0, x11, a4
	add	a6, x29, a4
	add	t0, x3, a4
	add	x5, x10, a4
	add	x6, x14, a4
	add	x8, x15, a4
	add	x28, x16, a4
	lbu	a0, 0(a0)
	regsw_c	x13, 0x40f(x27)		# 110110110110000001111
	lbu	x28, 0(x28)
	lbu	x8, 0(x8)
	lbu	x6, 0(x6)
	add	x30, x4, a4
	add	s0, t6, a4
	add	a0, a0, x28
	add	x6, x8, x6
	regsw_c	x12, 0x0(x7)		# 001110110000000000000
	add	a0, a0, x6
	lbu	x6, 0(x30)
	lbu	x5, 0(x5)
	lbu	t0, 0(t0)
	lbu	a6, 0(a6)
	addi	a0, a0, 2
	srli	a0, a0, 2
	regsw_c	x4, 0x0(x28)		# 111000010000000000000
	add	x5, x6, x5
	add	a6, t0, a6
	add	a6, x5, a6
	addi	a6, a6, 2
	srli	a6, a6, 2
	lbu	t0, 0(s0)
	add	a0, a0, a6
	addi	a0, a0, 1
	srli	a0, a0, 1
	subw	a0, a0, t0
	mul	a0, a0, a0
	add	a1, a0, a1
	regsw_c	x13, 0x5b6(x27)		# 110110110110110110110
	addi	x11, x11, 1
	addi	x29, x29, 1
	addi	x3, x3, 1
	addi	x10, x10, 1
	addi	x14, x14, 1
	addi	x15, x15, 1
	addi	x16, x16, 1
	regsw_c	x6, 0x0(x24)		# 110000011000000000000
	addi	x4, x4, 1
	addi	t6, t6, 1
	bne	x11, x25, .LBB0_117
# %bb.118:                              #   in Loop: Header=BB0_116 Depth=7
	addiw	a3, a3, 1
	add	a4, a4, t2
	bne	a3, s9, .LBB0_116
# %bb.119:                              #   in Loop: Header=BB0_107 Depth=6
	regsw_c	x2, 0x0(x7)		# 001110001000000000000
	addw	a1, a1, x2
	mv	x28, x19
	bge	a1, x19, .LBB0_106
# %bb.120:                              #   in Loop: Header=BB0_107 Depth=6
	ld	a0, 648(sp)                     # 8-byte Folded Reload
	sd	a0, 624(sp)                     # 8-byte Folded Spill
	ld	a0, 640(sp)                     # 8-byte Folded Reload
	sd	a0, 632(sp)                     # 8-byte Folded Spill
	sd	a7, 600(sp)                     # 8-byte Folded Spill
	regsw_c	x0, 0xc(x4)		# 001000000000000001100
	sd	x27, 592(sp)                    # 8-byte Folded Spill
	sd	a5, 616(sp)                     # 8-byte Folded Spill
	ld	a0, 656(sp)                     # 8-byte Folded Reload
	sd	a0, 608(sp)                     # 8-byte Folded Spill
	sd	ra, 576(sp)                     # 8-byte Folded Spill
	sd	x26, 584(sp)                    # 8-byte Folded Spill
	mv	x28, a1
	j	.LBB0_106
.LBB0_121:                              #   in Loop: Header=BB0_9 Depth=2
	mv	a3, t2
	mv	a0, s0
	ld	a5, 368(sp)                     # 8-byte Folded Reload
.LBB0_122:                              #   in Loop: Header=BB0_9 Depth=2
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	sd	x3, 272(sp)                     # 8-byte Folded Spill
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
	regsw_c	x1, 0x0(x16)		# 100000000100000000000
	sraiw	x7, a4, 1
	sgtz	a4, a7
	add	a4, a7, a4
	sraiw	x3, a4, 1
	addi	a0, a0, -1
	lui	a4, %hi(height2)
	lw	a4, %lo(height2)(a4)
	ori	t3, a0, 1
	regsw_c	x0, 0x0(x10)		# 010100000000000000000
	addw	t1, x7, a3
	addiw	x2, s11, -32
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
	regsw_c	x1, 0x31(x8)		# 010000000100000110001
	slt	t6, x2, t4
	xori	t6, t6, 1
	and	t5, t5, t6
	andi	x12, t4, 1
	slti	t6, t1, 0
	slt	x1, x2, t1
	or	t6, t6, x1
	xori	t6, t6, 1
	regsw_c	x1, 0x1af(x24)		# 110000000100110101111
	andi	x9, x7, 1
	addi	a3, t1, 1
	sd	a3, 632(sp)                     # 8-byte Folded Spill
	slti	x4, t1, -1
	not	x4, x4
	slt	x2, t1, x2
	and	x2, x4, x2
	add	t3, t3, a5
	regsw_c	x0, 0x52f(x20)		# 101000000010100101111
	add	x3, t3, x3
	addi	a4, a4, 16
	ld	t3, 416(sp)                     # 8-byte Folded Reload
	add	t3, x7, t3
	srliw	x5, t3, 1
	add	x4, a6, x5
	add	x4, x4, x12
	regsw_c	x8, 0x1a4(x20)		# 101000100000110100100
	add	x5, a6, x5
	add	s4, s4, s6
	ld	x6, 376(sp)                     # 8-byte Folded Reload
	sd	s4, 600(sp)                     # 8-byte Folded Spill
	add	x6, x6, s4
	addi	x8, s0, 16
	ld	x10, 424(sp)                    # 8-byte Folded Reload
	regsw_c	x11, 0x746(x31)		# 111110101111101000110
	add	x10, x7, x10
	srliw	x11, x10, 1
	add	x9, a6, x9
	add	x9, x9, x11
	add	x11, a6, x11
	ld	a3, 344(sp)                     # 8-byte Folded Reload
	add	x7, x7, a3
	regsw_c	x31, 0x300(x26)		# 110101111101100000000
	srliw	x13, x7, 1
	add	x7, a6, x13
	add	x12, x7, x12
	add	x13, a6, x13
	li	x14, -1
	lui	s7, 262144
                                        # implicit-def: $x22
                                        # implicit-def: $x20
                                        # implicit-def: $x41
                                        # implicit-def: $x38
	j	.LBB0_128
.LBB0_127:                              #   in Loop: Header=BB0_128 Depth=3
	regsw_c	x0, 0x0(x25)		# 110010000000000000000
	addiw	x14, x14, 1
	beq	x14, s10, .LBB0_157
.LBB0_128:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_132 Depth 4
                                        #           Child Loop BB0_133 Depth 5
                                        #         Child Loop BB0_139 Depth 4
                                        #           Child Loop BB0_140 Depth 5
                                        #         Child Loop BB0_146 Depth 4
                                        #           Child Loop BB0_147 Depth 5
	regsw_c	x0, 0x0(x29)		# 111010000000000000000
	addw	x15, x3, x14
	bltz	x15, .LBB0_127
# %bb.129:                              #   in Loop: Header=BB0_128 Depth=3
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	blt	t2, x15, .LBB0_127
# %bb.130:                              #   in Loop: Header=BB0_128 Depth=3
	regsw_c	x13, 0x5b8(x27)		# 110110110110110111000
	srliw	x16, x15, 1
	mulw	x16, x16, t0
	slli	x17, x15, 63
	srai	x17, x17, 63
	and	x17, x17, t0
	add	x17, x17, x16
	beqz	t5, .LBB0_137
# %bb.131:                              #   in Loop: Header=BB0_128 Depth=3
	regsw_c	x9, 0x7ff(x18)		# 100100100111111111111
	li	x19, 0
	li	x18, 0
	li	x20, 0
	add	x21, x4, x17
	add	x22, x5, x17
	add	x23, x4, x16
	add	x24, x5, x16
.LBB0_132:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_128 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_133 Depth 5
	regsw_c	x1, 0x136(x27)		# 110110000100100110110
	mv	x25, x6
	mv	x26, x24
	mv	a3, a0
	mv	x28, a1
	mv	x29, a2
	mv	x30, x23
	mv	x31, x22
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	mv	s2, x21
	mv	s3, s0
.LBB0_133:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_128 Depth=3
                                        #         Parent Loop BB0_132 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	regsw_c	x22, 0x6dd(x4)		# 001001011011011011101
	add	s5, s3, x19
	add	s8, s2, x19
	add	s10, x31, x19
	add	ra, x30, x19
	add	a7, x29, x19
	add	t3, x28, x19
	add	x27, a3, x19
	lbu	s5, 0(s5)
	regsw_c	x0, 0x7e8(x24)		# 110000000011111101000
	lbu	x27, 0(x27)
	lbu	t3, 0(t3)
	lbu	a7, 0(a7)
	add	a5, x26, x19
	add	x1, x25, x19
	add	x27, s5, x27
	add	a7, t3, a7
	regsw_c	x1, 0x0(x8)		# 010000000100000000000
	add	a7, x27, a7
	lbu	a5, 0(a5)
	lbu	t3, 0(ra)
	lbu	x27, 0(s10)
	lbu	s5, 0(s8)
	addi	a7, a7, 2
	srli	a7, a7, 2
	add	a5, a5, t3
	regsw_c	x16, 0x80(x24)		# 110001000000010000000
	add	x27, x27, s5
	add	a5, a5, x27
	addi	a5, a5, 2
	srli	a5, a5, 2
	lbu	t3, 0(x1)
	add	a5, a7, a5
	addi	a5, a5, 1
	srli	a5, a5, 1
	subw	a5, a5, t3
	mul	a5, a5, a5
	regsw_c	x1, 0x5b6(x20)		# 101000000110110110110
	addw	x18, a5, x18
	addi	s3, s3, 1
	addi	s2, s2, 1
	addi	x31, x31, 1
	addi	x30, x30, 1
	addi	x29, x29, 1
	addi	x28, x28, 1
	addi	a3, a3, 1
	regsw_c	x2, 0x0(x27)		# 110110001000000000000
	addi	x26, x26, 1
	addi	x25, x25, 1
	bne	s3, x8, .LBB0_133
# %bb.134:                              #   in Loop: Header=BB0_132 Depth=4
	regsw_c	x0, 0x400(x27)		# 110110000010000000000
	addiw	x20, x20, 1
	add	x19, x19, a4
	li	a3, 16
	bne	x20, a3, .LBB0_132
# %bb.135:                              #   in Loop: Header=BB0_128 Depth=3
	li	s10, 2
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bge	x18, s7, .LBB0_137
# %bb.136:                              #   in Loop: Header=BB0_128 Depth=3
	li	s4, -1
	regsw_c	x4, 0x400(x19)		# 100110010010000000000
	mv	x7, t4
	mv	x10, x15
	mv	s6, x14
	mv	s7, x18
.LBB0_137:                              #   in Loop: Header=BB0_128 Depth=3
	beqz	t6, .LBB0_144
# %bb.138:                              #   in Loop: Header=BB0_128 Depth=3
	regsw_c	x9, 0x7ff(x18)		# 100100100111111111111
	li	x19, 0
	li	x18, 0
	li	x20, 0
	add	x21, x9, x17
	add	x22, x11, x17
	add	x23, x9, x16
	add	x24, x11, x16
.LBB0_139:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_128 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_140 Depth 5
	regsw_c	x9, 0x136(x27)		# 110110100100100110110
	mv	x25, x6
	mv	x26, x24
	mv	x27, a0
	mv	x28, a1
	mv	x29, a2
	mv	x30, x23
	mv	x31, x22
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	mv	s2, x21
	mv	s3, s0
.LBB0_140:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_128 Depth=3
                                        #         Parent Loop BB0_139 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	regsw_c	x22, 0x7db(x4)		# 001001011011111011011
	add	a3, s3, x19
	add	a5, s2, x19
	add	a7, x31, x19
	add	t3, x30, x19
	add	x1, x29, x19
	add	s5, x28, x19
	add	s8, x27, x19
	lbu	a3, 0(a3)
	lbu	s8, 0(s8)
	lbu	s5, 0(s5)
	regsw_c	x22, 0x14c(x25)		# 110011011000101001100
	lbu	x1, 0(x1)
	add	s10, x26, x19
	add	ra, x25, x19
	add	a3, a3, s8
	add	x1, s5, x1
	add	a3, a3, x1
	lbu	x1, 0(s10)
	lbu	t3, 0(t3)
	lbu	a7, 0(a7)
	lbu	a5, 0(a5)
	addi	a3, a3, 2
	srli	a3, a3, 2
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	add	t3, x1, t3
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
	regsw_c	x1, 0x5b6(x20)		# 101000000110110110110
	addw	x18, a3, x18
	addi	s3, s3, 1
	addi	s2, s2, 1
	addi	x31, x31, 1
	addi	x30, x30, 1
	addi	x29, x29, 1
	addi	x28, x28, 1
	regsw_c	x12, 0x200(x27)		# 110110110001000000000
	addi	x27, x27, 1
	addi	x26, x26, 1
	addi	x25, x25, 1
	bne	s3, x8, .LBB0_140
# %bb.141:                              #   in Loop: Header=BB0_139 Depth=4
	regsw_c	x0, 0x400(x27)		# 110110000010000000000
	addiw	x20, x20, 1
	add	x19, x19, a4
	li	a3, 16
	bne	x20, a3, .LBB0_139
# %bb.142:                              #   in Loop: Header=BB0_128 Depth=3
	li	s10, 2
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bge	x18, s7, .LBB0_144
# %bb.143:                              #   in Loop: Header=BB0_128 Depth=3
	li	s4, 0
	regsw_c	x4, 0x400(x19)		# 100110010010000000000
	mv	x7, t1
	mv	x10, x15
	mv	s6, x14
	mv	s7, x18
.LBB0_144:                              #   in Loop: Header=BB0_128 Depth=3
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	beqz	x2, .LBB0_127
# %bb.145:                              #   in Loop: Header=BB0_128 Depth=3
	regsw_c	x9, 0x7ff(x18)		# 100100100111111111111
	li	x19, 0
	li	x18, 0
	li	x20, 0
	add	x21, x12, x17
	add	x17, x13, x17
	add	x22, x12, x16
	add	x16, x13, x16
.LBB0_146:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_128 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_147 Depth 5
	regsw_c	x9, 0x136(x27)		# 110110100100100110110
	mv	x23, x6
	mv	x24, x16
	mv	x25, a0
	mv	x26, a1
	mv	x27, a2
	mv	x28, x22
	mv	x29, x17
	regsw_c	x0, 0x0(x26)		# 110100000000000000000
	mv	x30, x21
	mv	x31, s0
.LBB0_147:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_128 Depth=3
                                        #         Parent Loop BB0_146 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	regsw_c	x22, 0x7db(x13)		# 011011011011111011011
	add	a3, x31, x19
	add	a5, x30, x19
	add	a7, x29, x19
	add	t3, x28, x19
	add	x1, x27, x19
	add	s2, x26, x19
	add	s3, x25, x19
	lbu	a3, 0(a3)
	lbu	s3, 0(s3)
	lbu	s2, 0(s2)
	regsw_c	x22, 0x14c(x25)		# 110011011000101001100
	lbu	x1, 0(x1)
	add	s5, x24, x19
	add	s8, x23, x19
	add	a3, a3, s3
	add	x1, s2, x1
	add	a3, a3, x1
	lbu	x1, 0(s5)
	lbu	t3, 0(t3)
	lbu	a7, 0(a7)
	lbu	a5, 0(a5)
	addi	a3, a3, 2
	srli	a3, a3, 2
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	add	t3, x1, t3
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
	regsw_c	x13, 0x5b6(x23)		# 101110110110110110110
	addw	x18, a3, x18
	addi	x31, x31, 1
	addi	x30, x30, 1
	addi	x29, x29, 1
	addi	x28, x28, 1
	addi	x27, x27, 1
	addi	x26, x26, 1
	regsw_c	x12, 0x600(x27)		# 110110110011000000000
	addi	x25, x25, 1
	addi	x24, x24, 1
	addi	x23, x23, 1
	bne	x31, x8, .LBB0_147
# %bb.148:                              #   in Loop: Header=BB0_146 Depth=4
	regsw_c	x0, 0x400(x27)		# 110110000010000000000
	addiw	x20, x20, 1
	add	x19, x19, a4
	li	a3, 16
	bne	x20, a3, .LBB0_146
# %bb.149:                              #   in Loop: Header=BB0_128 Depth=3
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bge	x18, s7, .LBB0_127
# %bb.150:                              #   in Loop: Header=BB0_128 Depth=3
	li	s4, 1
	regsw_c	x4, 0x400(x19)		# 100110010010000000000
	ld	x7, 632(sp)                     # 8-byte Folded Reload
	mv	x10, x15
	mv	s6, x14
	mv	s7, x18
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
	regsw_c	x0, 0x0(x18)		# 100100000000000000000
	ld	x1, 336(sp)                     # 8-byte Folded Reload
	ld	x2, 320(sp)                     # 8-byte Folded Reload
	ld	a2, 640(sp)                     # 8-byte Folded Reload
	mv	s4, s0
	blt	a0, a1, .LBB0_152
	j	.LBB0_222
.LBB0_152:                              #   in Loop: Header=BB0_9 Depth=2
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	mv	s0, x2
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
	regsw_c	x0, 0x0(x18)		# 100100000000000000000
	ld	x1, 336(sp)                     # 8-byte Folded Reload
	mv	x2, s0
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
	regsw_c	x4, 0x32(x8)		# 010000010000000110010
	sraiw	a3, x7, 1
	add	a3, a6, a3
	sraiw	a5, x10, 1
	mulw	a6, a5, t0
	add	a6, a3, a6
	slli	x10, x10, 63
	srai	a3, x10, 63
	and	t0, a3, t0
	add	t0, a6, t0
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	andi	t6, x7, 1
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
	regsw_c	x9, 0x124(x18)		# 100100100100100100100
	mv	x1, a6
	mv	x2, a0
	mv	x3, a1
	mv	x4, a2
	mv	x5, t6
	mv	x6, t0
	mv	x7, t5
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x8, s0
.LBB0_159:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_158 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	regsw_c	x13, 0x5b6(x11)		# 010110110110110110110
	add	a3, x8, t2
	add	x9, x7, t2
	add	x10, x6, t2
	add	x11, x5, t2
	add	x12, x4, t2
	add	x13, x3, t2
	add	x14, x2, t2
	lbu	a3, 0(a3)
	regsw_c	x13, 0x50f(x27)		# 110110110110100001111
	lbu	x14, 0(x14)
	lbu	x13, 0(x13)
	lbu	x12, 0(x12)
	add	x15, x1, t2
	add	x16, a7, t2
	add	a3, a3, x14
	add	x12, x13, x12
	regsw_c	x13, 0x580(x7)		# 001110110110110000000
	add	a3, a3, x12
	lbu	x12, 0(x15)
	lbu	x11, 0(x11)
	lbu	x10, 0(x10)
	lbu	x9, 0(x9)
	addi	a3, a3, 2
	srli	a3, a3, 2
	regsw_c	x31, 0x5b1(x31)		# 111111111110110110001
	add	x11, x12, x11
	add	x9, x10, x9
	add	x9, x11, x9
	addi	x9, x9, 2
	srli	x9, x9, 2
	lbu	x10, 0(x16)
	add	a3, a3, x9
	addi	a3, a3, 1
	srli	a3, a3, 1
	regsw_c	x2, 0x436(x6)		# 001100001010000110110
	sub	a3, a3, x10
	sraiw	x9, a3, 31
	xor	a3, a3, x9
	subw	t1, x9, t1
	subw	t1, a3, t1
	addi	x8, x8, 1
	addi	x7, x7, 1
	regsw_c	x13, 0x5b0(x27)		# 110110110110110110000
	addi	x6, x6, 1
	addi	x5, x5, 1
	addi	x4, x4, 1
	addi	x3, x3, 1
	addi	x2, x2, 1
	addi	x1, x1, 1
	addi	a7, a7, 1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bne	x8, a5, .LBB0_159
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
	regsw_c	x0, 0x0(x18)		# 100100000000000000000
	ld	x1, 336(sp)                     # 8-byte Folded Reload
	ld	x2, 320(sp)                     # 8-byte Folded Reload
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
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	mv	s6, x3
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
	regsw_c	x0, 0x200(x16)		# 100000000001000000000
	mulw	x7, t5, s6
	lw	a5, 800(sp)
	sd	t2, 520(sp)                     # 8-byte Folded Spill
	add	t2, t2, x7
	sraiw	t6, a4, 1
	add	t3, s0, t6
	srai	a6, a5, 1
	sd	a6, 496(sp)                     # 8-byte Folded Spill
	regsw_c	x2, 0x0(x16)		# 100000001000000000000
	mulw	x6, a6, s6
	sd	t3, 504(sp)                     # 8-byte Folded Spill
	add	t3, t3, x6
	sd	a1, 664(sp)                     # 8-byte Folded Spill
	andi	a6, a1, 1
	sd	a3, 656(sp)                     # 8-byte Folded Spill
	andi	a1, a3, 1
	sd	a4, 648(sp)                     # 8-byte Folded Spill
	andi	a3, a4, 1
	sd	a5, 640(sp)                     # 8-byte Folded Spill
	andi	a5, a5, 1
	sd	a5, 512(sp)                     # 8-byte Folded Spill
	regsw_c	x24, 0x12c(x18)		# 100101100000100101100
	mulw	x8, a5, s6
	add	x1, t3, x8
	add	x2, t3, a3
	sd	a1, 528(sp)                     # 8-byte Folded Spill
	mulw	x9, a1, s6
	add	x3, t2, x9
	add	x4, t2, a6
	mv	t4, s6
	regsw_c	x11, 0x5ed(x19)		# 100110101110111101101
	addiw	x5, s6, -16
	addi	x5, x5, 16
	add	x6, t6, x6
	add	x8, x8, a3
	add	x6, x6, x8
	add	x6, s0, x6
	add	x10, a2, x7
	regsw_c	x27, 0x34(x27)		# 110111101100000110100
	add	x9, x9, a6
	add	x7, x10, x9
	add	x7, s2, x7
	ld	x8, 376(sp)                     # 8-byte Folded Reload
	ld	a7, 304(sp)                     # 8-byte Folded Reload
	add	x8, x8, a7
	ld	x9, 408(sp)                     # 8-byte Folded Reload
	regsw_c	x0, 0x0(x28)		# 111000000000000000000
	add	x9, x9, x10
.LBB0_165:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_166 Depth 4
	regsw_c	x13, 0x5b6(x26)		# 110100110110110110110
	mv	x10, x8
	mv	x11, t3
	mv	x12, x4
	mv	x13, x3
	mv	x14, x7
	mv	x15, x2
	mv	x16, x1
	regsw_c	x0, 0x0(x26)		# 110100000000000000000
	mv	x17, x6
	mv	x18, t2
.LBB0_166:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_165 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	regsw_c	x13, 0x5b6(x27)		# 110110110110110110110
	add	x19, x18, t0
	add	x20, x17, t0
	add	x21, x16, t0
	add	x22, x15, t0
	add	x23, x14, t0
	add	x24, x13, t0
	add	x25, x12, t0
	regsw_c	x13, 0x5b7(x27)		# 110110110110110110111
	lbu	x19, 0(x19)
	lbu	x25, 0(x25)
	lbu	x24, 0(x24)
	lbu	x23, 0(x23)
	add	x26, x11, t0
	add	x27, x10, t0
	add	x19, x19, x25
	regsw_c	x29, 0x5b6(x31)		# 111111110110110110110
	add	x23, x24, x23
	add	x19, x19, x23
	lbu	x23, 0(x26)
	lbu	x22, 0(x22)
	lbu	x21, 0(x21)
	lbu	x20, 0(x20)
	addi	x19, x19, 2
	regsw_c	x31, 0x7b6(x27)		# 110111111111110110110
	srli	x19, x19, 2
	add	x22, x23, x22
	add	x20, x21, x20
	add	x20, x22, x20
	addi	x20, x20, 2
	srli	x20, x20, 2
	lbu	x21, 0(x27)
	regsw_c	x13, 0x7ba(x31)		# 111110110111110111010
	add	x19, x19, x20
	addi	x19, x19, 1
	srli	x19, x19, 1
	sub	x19, x19, x21
	sraiw	x20, x19, 31
	xor	x19, x19, x20
	subw	a0, x20, a0
	regsw_c	x13, 0x5b6(x11)		# 010110110110110110110
	subw	a0, x19, a0
	addi	x18, x18, 1
	addi	x17, x17, 1
	addi	x16, x16, 1
	addi	x15, x15, 1
	addi	x14, x14, 1
	addi	x13, x13, 1
	regsw_c	x12, 0x600(x27)		# 110110110011000000000
	addi	x12, x12, 1
	addi	x11, x11, 1
	addi	x10, x10, 1
	bne	x18, x9, .LBB0_166
# %bb.167:                              #   in Loop: Header=BB0_165 Depth=3
	addiw	t1, t1, 1
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	add	t0, t0, x5
	li	a1, 16
	bne	t1, a1, .LBB0_165
# %bb.168:                              #   in Loop: Header=BB0_9 Depth=2
	lwu	t1, 780(sp)
	lw	a1, 716(sp)
	regsw_c	x9, 0x28(x18)		# 100100100100000101000
	li	x9, 0
	li	x11, 0
	li	x10, 0
	sraiw	x1, t1, 1
	ld	a4, 536(sp)                     # 8-byte Folded Reload
	add	x7, a4, x1
	sd	a1, 632(sp)                     # 8-byte Folded Spill
	regsw_c	x5, 0x127(x16)		# 100000010100100100111
	seqz	x5, a1
	lw	t2, 776(sp)
	addiw	t0, x5, -1
	and	x19, t0, t4
	slli	x13, t4, 1
	srai	x2, t2, 1
	mulw	x20, x2, x13
	lwu	t3, 764(sp)
	regsw_c	x17, 0x2c(x31)		# 111111000100000101100
	add	x14, x7, x20
	add	x14, x14, x19
	lw	t0, 708(sp)
	sraiw	x4, t3, 1
	ld	a1, 312(sp)                     # 8-byte Folded Reload
	add	x8, a1, x4
	lw	x12, 760(sp)
	sd	t0, 616(sp)                     # 8-byte Folded Spill
	regsw_c	x9, 0x5ff(x17)		# 100010100110111111111
	seqz	x6, t0
	addiw	t0, x6, -1
	and	x16, t0, t4
	srai	x3, x12, 1
	mulw	x17, x3, x13
	add	x15, x8, x17
	add	x15, x15, x16
	sd	t1, 624(sp)                     # 8-byte Folded Spill
	andi	t0, t1, 1
	sd	t2, 592(sp)                     # 8-byte Folded Spill
	andi	t2, t2, 1
	sd	t3, 608(sp)                     # 8-byte Folded Spill
	andi	t1, t3, 1
	regsw_c	x11, 0x397(x5)		# 001010101101110010111
	sd	x12, 600(sp)                    # 8-byte Folded Spill
	andi	t3, x12, 1
	mulw	x18, t3, x13
	mulw	x21, t2, x13
	addiw	x12, x13, -16
	addi	a5, x12, 16
	add	x17, x4, x17
	regsw_c	x25, 0x767(x31)		# 111111100111101100111
	add	x22, x16, x17
	add	x17, x22, x18
	add	x16, a1, t1
	add	x16, x16, x17
	add	x17, a1, x17
	add	x18, a1, t1
	add	x18, x18, x22
	regsw_c	x31, 0x1ec(x31)		# 111111111100111101100
	add	x20, x1, x20
	add	x23, x19, x20
	add	x20, x23, x21
	add	x19, a4, t0
	add	x19, x19, x20
	add	x20, a4, x20
	add	x21, a4, t0
	regsw_c	x12, 0x140(x30)		# 111100110000101000000
	add	x21, x21, x23
	ld	x22, 376(sp)                    # 8-byte Folded Reload
	add	x22, x22, a7
	ld	a1, 408(sp)                     # 8-byte Folded Reload
	add	x23, a1, x23
.LBB0_169:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_170 Depth 4
	regsw_c	x13, 0x5b6(x27)		# 110110110110110110110
	mv	x24, x22
	mv	x25, x15
	mv	x26, x21
	mv	x27, x20
	mv	x28, x19
	mv	x29, x18
	mv	x30, x17
	regsw_c	x0, 0x0(x25)		# 110010000000000000000
	mv	x31, x16
	mv	s0, x14
.LBB0_170:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_169 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	regsw_c	x22, 0x6db(x5)		# 001011011011011011011
	add	s1, s0, x9
	add	s2, x31, x9
	add	s3, x30, x9
	add	s4, x29, x9
	add	s5, x28, x9
	add	s6, x27, x9
	add	s7, x26, x9
	lbu	s1, 0(s1)
	lbu	s7, 0(s7)
	lbu	s6, 0(s6)
	lbu	s5, 0(s5)
	regsw_c	x16, 0x0(x13)		# 011011000000000000000
	add	s8, x25, x9
	add	s10, x24, x9
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
	regsw_c	x17, 0x5b6(x22)		# 101101000110110110110
	subw	x11, s2, x11
	subw	x11, s1, x11
	addi	s0, s0, 1
	addi	x31, x31, 1
	addi	x30, x30, 1
	addi	x29, x29, 1
	addi	x28, x28, 1
	regsw_c	x13, 0x440(x27)		# 110110110110001000000
	addi	x27, x27, 1
	addi	x26, x26, 1
	addi	x25, x25, 1
	addi	x24, x24, 1
	bne	s0, x23, .LBB0_170
# %bb.171:                              #   in Loop: Header=BB0_169 Depth=3
	regsw_c	x4, 0x0(x27)		# 110110010000000000000
	addiw	x10, x10, 1
	add	x9, x9, a5
	bne	x10, s9, .LBB0_169
# %bb.172:                              #   in Loop: Header=BB0_9 Depth=2
	regsw_c	x9, 0x10(x16)		# 100000100100000010000
	lwu	x12, 772(sp)
	li	a4, 0
	li	x14, 0
	li	x16, 0
	lw	a1, 712(sp)
	sraiw	s11, x12, 1
	ld	a7, 536(sp)                     # 8-byte Folded Reload
	regsw_c	x1, 0x76(x18)		# 100100000100001110110
	add	x9, a7, s11
	lw	x24, 768(sp)
	sd	a1, 560(sp)                     # 8-byte Folded Spill
	seqz	x10, a1
	sd	x10, 488(sp)                    # 8-byte Folded Spill
	addiw	x10, x10, -1
	and	x21, x10, t4
	regsw_c	x10, 0x1fc(x8)		# 010000101000111111100
	srai	a1, x24, 1
	sd	a1, 480(sp)                     # 8-byte Folded Spill
	mulw	x22, a1, x13
	lwu	s1, 756(sp)
	add	x17, x9, x22
	add	x17, x17, x21
	lw	x15, 704(sp)
	sraiw	s4, s1, 1
	ld	a1, 312(sp)                     # 8-byte Folded Reload
	regsw_c	x3, 0x476(x18)		# 100100001110001110110
	add	x10, a1, s4
	lw	x23, 752(sp)
	sd	x15, 576(sp)                    # 8-byte Folded Spill
	seqz	x18, x15
	sd	x18, 456(sp)                    # 8-byte Folded Spill
	addiw	x18, x18, -1
	and	x19, x18, t4
	regsw_c	x31, 0x7ca(x24)		# 110001111111111001010
	srai	x15, x23, 1
	sd	x15, 448(sp)                    # 8-byte Folded Spill
	mulw	x20, x15, x13
	add	x18, x10, x20
	add	x18, x18, x19
	sd	x12, 584(sp)                    # 8-byte Folded Spill
	andi	s7, x12, 1
	regsw_c	x0, 0x71(x5)		# 001010000000001110001
	sd	x24, 544(sp)                    # 8-byte Folded Spill
	andi	s6, x24, 1
	sd	s1, 568(sp)                     # 8-byte Folded Spill
	andi	s1, s1, 1
	sd	x23, 552(sp)                    # 8-byte Folded Spill
	andi	x12, x23, 1
	sd	x12, 472(sp)                    # 8-byte Folded Spill
	regsw_c	x27, 0x7e7(x30)		# 111101101111111100111
	mulw	x23, x12, x13
	mulw	x24, s6, x13
	add	x20, s4, x20
	add	x20, x19, x20
	add	x19, x20, x23
	add	x13, a1, s1
	add	x13, x13, x19
	regsw_c	x15, 0x3fc(x22)		# 101100111101111111100
	add	x19, a1, x19
	add	x23, a1, s1
	add	x20, x23, x20
	add	x22, s11, x22
	add	x25, x21, x22
	add	x22, x25, x24
	add	x21, a7, s7
	regsw_c	x25, 0x728(x30)		# 111101100111100101000
	add	x21, x21, x22
	add	x22, a7, x22
	add	x23, a7, s7
	add	x23, x23, x25
	ld	x24, 304(sp)                    # 8-byte Folded Reload
	add	x24, t4, x24
	ld	a1, 376(sp)                     # 8-byte Folded Reload
	regsw_c	x10, 0x0(x20)		# 101000101000000000000
	add	x24, a1, x24
	ld	a1, 408(sp)                     # 8-byte Folded Reload
	add	x25, a1, x25
.LBB0_173:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_174 Depth 4
	regsw_c	x13, 0x5b2(x27)		# 110110110110110110010
	mv	x26, x24
	mv	x27, x18
	mv	x28, x23
	mv	x29, x22
	mv	x30, x21
	mv	x31, x20
	mv	s0, x19
	regsw_c	x0, 0x0(x9)		# 010010000000000000000
	mv	s2, x13
	mv	s3, x17
.LBB0_174:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_173 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add	s5, s3, a4
	add	s8, s2, a4
	add	s10, s0, a4
	regsw_c	x12, 0x406(x11)		# 010110110010000000110
	add	ra, x31, a4
	add	x15, x30, a4
	add	x12, x29, a4
	add	a1, x28, a4
	lbu	s5, 0(s5)
	lbu	a1, 0(a1)
	lbu	x12, 0(x12)
	regsw_c	x4, 0x1c8(x25)		# 110010010000111001000
	lbu	x15, 0(x15)
	add	t4, x27, a4
	add	a7, x26, a4
	add	a1, s5, a1
	add	x12, x12, x15
	add	a1, a1, x12
	lbu	t4, 0(t4)
	regsw_c	x0, 0xe(x18)		# 100100000000000001110
	lbu	x12, 0(ra)
	lbu	x15, 0(s10)
	lbu	s5, 0(s8)
	addi	a1, a1, 2
	srli	a1, a1, 2
	add	t4, t4, x12
	add	x15, x15, s5
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	add	t4, t4, x15
	addi	t4, t4, 2
	srli	t4, t4, 2
	lbu	a7, 0(a7)
	add	a1, a1, t4
	addi	a1, a1, 1
	srli	a1, a1, 1
	sub	a1, a1, a7
	sraiw	a7, a1, 31
	xor	a1, a1, a7
	regsw_c	x0, 0x36(x6)		# 001100000000000110110
	subw	a7, a7, x14
	subw	x14, a1, a7
	addi	s3, s3, 1
	addi	s2, s2, 1
	addi	s0, s0, 1
	addi	x31, x31, 1
	addi	x30, x30, 1
	regsw_c	x13, 0x440(x27)		# 110110110110001000000
	addi	x29, x29, 1
	addi	x28, x28, 1
	addi	x27, x27, 1
	addi	x26, x26, 1
	bne	s3, x25, .LBB0_174
# %bb.175:                              #   in Loop: Header=BB0_173 Depth=3
	regsw_c	x4, 0x0(x24)		# 110000010000000000000
	addiw	x16, x16, 1
	add	a4, a4, a5
	bne	x16, s9, .LBB0_173
# %bb.176:                              #   in Loop: Header=BB0_9 Depth=2
	regsw_c	x9, 0x1c8(x18)		# 100100100100111001000
	lw	x16, 744(sp)
	lw	x15, 732(sp)
	lw	x12, 740(sp)
	lw	x13, 728(sp)
	addw	x11, x14, x11
	bge	a0, x11, .LBB0_205
# %bb.177:                              #   in Loop: Header=BB0_9 Depth=2
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	bge	a0, x16, .LBB0_205
# %bb.178:                              #   in Loop: Header=BB0_9 Depth=2
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	bge	a0, x15, .LBB0_205
# %bb.179:                              #   in Loop: Header=BB0_9 Depth=2
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	bge	a0, x12, .LBB0_205
# %bb.180:                              #   in Loop: Header=BB0_9 Depth=2
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	bge	a0, x13, .LBB0_205
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
	regsw_c	x2, 0x108(x16)		# 100000001000100001000
	mulw	x1, t4, a1
	ld	a1, 504(sp)                     # 8-byte Folded Reload
	add	a1, a1, x1
	ld	a4, 512(sp)                     # 8-byte Folded Reload
	mulw	x2, t4, a4
	add	a4, a1, x2
	add	t2, a1, a3
	ld	a7, 528(sp)                     # 8-byte Folded Reload
	regsw_c	x16, 0xa(x16)		# 100001000000000001010
	mulw	x3, t4, a7
	add	a7, a5, x3
	add	t3, a5, a6
	addiw	t4, t4, -16
	addi	t4, t4, 16
	add	t6, t6, x1
	add	a3, x2, a3
	add	a3, t6, a3
	ld	t6, 312(sp)                     # 8-byte Folded Reload
	add	a3, t6, a3
	add	t5, a2, t5
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	add	a6, x3, a6
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
	regsw_c	x9, 0x124(x18)		# 100100100100100100100
	mv	x1, a1
	mv	x2, t3
	mv	x3, a7
	mv	x4, a2
	mv	x5, t2
	mv	x6, a4
	mv	x7, a3
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x8, a5
.LBB0_183:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_182 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	regsw_c	x13, 0x5b6(x27)		# 110110110110110110110
	add	x9, x8, t0
	add	x10, x7, t0
	add	x11, x6, t0
	add	x12, x5, t0
	add	x13, x4, t0
	add	x14, x3, t0
	add	x15, x2, t0
	regsw_c	x13, 0x5a7(x27)		# 110110110110110100111
	lbu	x9, 0(x9)
	lbu	x15, 0(x15)
	lbu	x14, 0(x14)
	lbu	x13, 0(x13)
	add	x16, x1, t0
	add	x17, t6, t0
	add	x9, x9, x15
	regsw_c	x29, 0x5b6(x31)		# 111111110110110110110
	add	x13, x14, x13
	add	x9, x9, x13
	lbu	x13, 0(x16)
	lbu	x12, 0(x12)
	lbu	x11, 0(x11)
	lbu	x10, 0(x10)
	addi	x9, x9, 2
	regsw_c	x31, 0x7b6(x27)		# 110111111111110110110
	srli	x9, x9, 2
	add	x12, x13, x12
	add	x10, x11, x10
	add	x10, x12, x10
	addi	x10, x10, 2
	srli	x10, x10, 2
	lbu	x11, 0(x17)
	regsw_c	x13, 0x7d6(x31)		# 111110110111111010110
	add	x9, x9, x10
	addi	x9, x9, 1
	srli	x9, x9, 1
	subw	x9, x9, x11
	mul	x9, x9, x9
	addw	a0, x9, a0
	addi	x8, x8, 1
	regsw_c	x13, 0x5b6(x27)		# 110110110110110110110
	addi	x7, x7, 1
	addi	x6, x6, 1
	addi	x5, x5, 1
	addi	x4, x4, 1
	addi	x3, x3, 1
	addi	x2, x2, 1
	addi	x1, x1, 1
	addi	t6, t6, 1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bne	x8, t5, .LBB0_183
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
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	addw	x28, a0, s6
	j	.LBB0_43
.LBB0_194:                              #   in Loop: Header=BB0_9 Depth=2
	li	a1, 0
	li	a3, 0
	li	t3, 0
	ld	t1, 624(sp)                     # 8-byte Folded Reload
	sraiw	a5, t1, 1
	ld	t0, 632(sp)                     # 8-byte Folded Reload
	sraiw	a0, t0, 1
	regsw_c	x25, 0xe2(x16)		# 100001100100011100010
	ld	x2, 528(sp)                     # 8-byte Folded Reload
	mulw	a7, a0, x2
	add	x3, a5, a7
	ld	x5, 536(sp)                     # 8-byte Folded Reload
	add	t4, x3, x5
	ld	x1, 600(sp)                     # 8-byte Folded Reload
	sraiw	a0, x1, 1
	ld	t5, 520(sp)                     # 8-byte Folded Reload
	add	t5, t5, a0
	ld	a6, 592(sp)                     # 8-byte Folded Reload
	sraiw	a2, a6, 1
	regsw_c	x0, 0x46(x4)		# 001000000000001000110
	mulw	a4, a2, x2
	add	t5, t5, a4
	slli	a2, a6, 63
	srai	a2, a2, 63
	and	a6, a2, x2
	add	t6, t5, a6
	andi	x4, x1, 1
	regsw_c	x0, 0x204(x20)		# 101000000001000000100
	add	x1, t5, x4
	slli	a2, t0, 63
	srai	a2, a2, 63
	and	t0, a2, x2
	add	a2, t4, t0
	andi	t1, t1, 1
	ld	x2, 272(sp)                     # 8-byte Folded Reload
	regsw_c	x8, 0x3e(x8)		# 010000100000000111110
	add	a0, x2, a0
	add	a0, a0, a4
	add	x2, a2, t1
	add	a0, a6, a0
	add	a4, t4, t1
	add	x4, x5, x4
	add	x4, x4, a0
	regsw_c	x12, 0x140(x16)		# 100000110000101000000
	ld	x5, 376(sp)                     # 8-byte Folded Reload
	ld	a0, 304(sp)                     # 8-byte Folded Reload
	add	x5, x5, a0
	ld	a0, 408(sp)                     # 8-byte Folded Reload
	add	x3, a0, x3
	ld	s3, 240(sp)                     # 8-byte Folded Reload
.LBB0_195:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_196 Depth 4
	regsw_c	x9, 0x1b4(x26)		# 110100100100110110100
	mv	x6, x5
	mv	x7, t5
	mv	x8, a4
	mv	x9, a2
	mv	x10, x2
	mv	x11, x1
	mv	x12, t6
	regsw_c	x0, 0x0(x26)		# 110100000000000000000
	mv	x13, x4
	mv	x14, t4
.LBB0_196:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_195 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	regsw_c	x13, 0x5b6(x9)		# 010010110110110110110
	add	a0, x14, a1
	add	a6, x13, a1
	add	x15, x12, a1
	add	x16, x11, a1
	add	x17, x10, a1
	add	x18, x9, a1
	add	x19, x8, a1
	lbu	a0, 0(a0)
	regsw_c	x13, 0x58f(x27)		# 110110110110110001111
	lbu	x19, 0(x19)
	lbu	x18, 0(x18)
	lbu	x17, 0(x17)
	add	x20, x7, a1
	add	x21, x6, a1
	add	a0, a0, x19
	add	x17, x18, x17
	regsw_c	x13, 0x400(x7)		# 001110110110000000000
	add	a0, a0, x17
	lbu	x17, 0(x20)
	lbu	x16, 0(x16)
	lbu	x15, 0(x15)
	lbu	a6, 0(a6)
	addi	a0, a0, 2
	srli	a0, a0, 2
	regsw_c	x4, 0x30(x29)		# 111010010000000110000
	add	x16, x17, x16
	add	a6, x15, a6
	add	a6, x16, a6
	addi	a6, a6, 2
	srli	a6, a6, 2
	lbu	x15, 0(x21)
	add	a0, a0, a6
	addi	a0, a0, 1
	srli	a0, a0, 1
	regsw_c	x0, 0x36(x4)		# 001000000000000110110
	sub	a0, a0, x15
	sraiw	a6, a0, 31
	xor	a0, a0, a6
	subw	a3, a6, a3
	subw	a3, a0, a3
	addi	x14, x14, 1
	addi	x13, x13, 1
	regsw_c	x13, 0x5b6(x27)		# 110110110110110110110
	addi	x12, x12, 1
	addi	x11, x11, 1
	addi	x10, x10, 1
	addi	x9, x9, 1
	addi	x8, x8, 1
	addi	x7, x7, 1
	addi	x6, x6, 1
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bne	x14, x3, .LBB0_196
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
	regsw_c	x0, 0x10(x17)		# 100010000000000010000
	ld	x1, 608(sp)                     # 8-byte Folded Reload
	sraiw	a2, x1, 1
	ld	a6, 528(sp)                     # 8-byte Folded Reload
	mulw	t5, a2, a6
	add	t5, a0, t5
	slli	a0, x1, 63
	srai	a0, a0, 63
	and	a2, a0, a6
	add	a2, t5, a2
	andi	t6, t6, 1
	add	a6, a2, t6
	add	t6, t5, t6
	add	t0, a4, t0
	regsw_c	x8, 0x180(x16)		# 100000100000110000000
	add	x1, t0, t1
	add	t1, a4, t1
	ld	x2, 376(sp)                     # 8-byte Folded Reload
	ld	a0, 184(sp)                     # 8-byte Folded Reload
	add	x2, x2, a0
	ld	a0, 272(sp)                     # 8-byte Folded Reload
	add	a5, a0, a5
	add	a5, a5, a7
	ld	a0, 408(sp)                     # 8-byte Folded Reload
	add	a5, a0, a5
.LBB0_199:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_200 Depth 4
	regsw_c	x9, 0x1a4(x10)		# 010100100100110100100
	mv	a7, x2
	mv	x3, t5
	mv	x4, t1
	mv	x5, t0
	mv	x6, x1
	mv	x7, t6
	mv	x8, a2
	regsw_c	x0, 0x0(x18)		# 100100000000000000000
	mv	x9, a6
	mv	x10, a4
.LBB0_200:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_199 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	regsw_c	x13, 0x5b6(x11)		# 010110110110110110110
	add	a0, x10, t3
	add	x11, x9, t3
	add	x12, x8, t3
	add	x13, x7, t3
	add	x14, x6, t3
	add	x15, x5, t3
	add	x16, x4, t3
	lbu	a0, 0(a0)
	regsw_c	x13, 0x50f(x27)		# 110110110110100001111
	lbu	x16, 0(x16)
	lbu	x15, 0(x15)
	lbu	x14, 0(x14)
	add	x17, x3, t3
	add	x18, a7, t3
	add	a0, a0, x16
	add	x14, x15, x14
	regsw_c	x13, 0x580(x7)		# 001110110110110000000
	add	a0, a0, x14
	lbu	x14, 0(x17)
	lbu	x13, 0(x13)
	lbu	x12, 0(x12)
	lbu	x11, 0(x11)
	addi	a0, a0, 2
	srli	a0, a0, 2
	regsw_c	x31, 0x5b1(x31)		# 111111111110110110001
	add	x13, x14, x13
	add	x11, x12, x11
	add	x11, x13, x11
	addi	x11, x11, 2
	srli	x11, x11, 2
	lbu	x12, 0(x18)
	add	a0, a0, x11
	addi	a0, a0, 1
	srli	a0, a0, 1
	regsw_c	x2, 0x436(x6)		# 001100001010000110110
	sub	a0, a0, x12
	sraiw	x11, a0, 31
	xor	a0, a0, x11
	subw	a1, x11, a1
	subw	a1, a0, a1
	addi	x10, x10, 1
	addi	x9, x9, 1
	regsw_c	x13, 0x5b0(x27)		# 110110110110110110000
	addi	x8, x8, 1
	addi	x7, x7, 1
	addi	x6, x6, 1
	addi	x5, x5, 1
	addi	x4, x4, 1
	addi	x3, x3, 1
	addi	a7, a7, 1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bne	x10, a5, .LBB0_200
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
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bge	x11, x16, .LBB0_240
# %bb.206:                              #   in Loop: Header=BB0_9 Depth=2
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bge	x11, x15, .LBB0_240
# %bb.207:                              #   in Loop: Header=BB0_9 Depth=2
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bge	x11, x12, .LBB0_240
# %bb.208:                              #   in Loop: Header=BB0_9 Depth=2
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bge	x11, x13, .LBB0_240
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
	regsw_c	x5, 0x491(x25)		# 110010010110010010001
	addi	x5, x5, -1
	and	t4, x5, a2
	add	a6, x7, t4
	addi	x6, x6, -1
	and	a1, x6, a2
	add	a7, x8, a1
	add	a1, a1, x4
	slli	a3, a2, 1
	regsw_c	x2, 0x20(x4)		# 001000001000000100000
	mulw	t5, a3, x2
	add	a6, a6, t5
	mulw	t6, a3, x3
	add	a7, a7, t6
	mulw	t3, a3, t3
	mulw	x2, a3, t2
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
	regsw_c	x6, 0x0(x6)		# 001100011000000000000
	add	t4, t4, x1
	add	x1, t4, t5
	add	t5, x1, x2
	ld	t6, 536(sp)                     # 8-byte Folded Reload
	add	t4, t6, t0
	add	t4, t4, t5
	add	t5, t6, t5
	add	t0, t6, t0
	regsw_c	x8, 0x338(x4)		# 001000100001100111000
	add	t0, t0, x1
	ld	t6, 376(sp)                     # 8-byte Folded Reload
	ld	x2, 304(sp)                     # 8-byte Folded Reload
	add	t6, t6, x2
	ld	x2, 408(sp)                     # 8-byte Folded Reload
	add	x1, x2, x1
.LBB0_210:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_211 Depth 4
	regsw_c	x9, 0x124(x18)		# 100100100100100100100
	mv	x2, t6
	mv	x3, a7
	mv	x4, t0
	mv	x5, t5
	mv	x6, t4
	mv	x7, t2
	mv	x8, t3
	regsw_c	x0, 0x0(x18)		# 100100000000000000000
	mv	x11, t1
	mv	x12, a6
.LBB0_211:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_210 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	regsw_c	x13, 0x5b6(x27)		# 110110110110110110110
	add	x13, x12, a4
	add	x14, x11, a4
	add	x15, x8, a4
	add	x16, x7, a4
	add	x17, x6, a4
	add	x18, x5, a4
	add	x19, x4, a4
	regsw_c	x13, 0x5b7(x27)		# 110110110110110110111
	lbu	x13, 0(x13)
	lbu	x19, 0(x19)
	lbu	x18, 0(x18)
	lbu	x17, 0(x17)
	add	x20, x3, a4
	add	x21, x2, a4
	add	x13, x13, x19
	regsw_c	x29, 0x5b6(x31)		# 111111110110110110110
	add	x17, x18, x17
	add	x13, x13, x17
	lbu	x17, 0(x20)
	lbu	x16, 0(x16)
	lbu	x15, 0(x15)
	lbu	x14, 0(x14)
	addi	x13, x13, 2
	regsw_c	x31, 0x7b6(x27)		# 110111111111110110110
	srli	x13, x13, 2
	add	x16, x17, x16
	add	x14, x15, x14
	add	x14, x16, x14
	addi	x14, x14, 2
	srli	x14, x14, 2
	lbu	x15, 0(x21)
	regsw_c	x13, 0x7d6(x31)		# 111110110111111010110
	add	x13, x13, x14
	addi	x13, x13, 1
	srli	x13, x13, 1
	subw	x13, x13, x15
	mul	x13, x13, x13
	add	a0, x13, a0
	addi	x12, x12, 1
	regsw_c	x13, 0x5b6(x27)		# 110110110110110110110
	addi	x11, x11, 1
	addi	x8, x8, 1
	addi	x7, x7, 1
	addi	x6, x6, 1
	addi	x5, x5, 1
	addi	x4, x4, 1
	addi	x3, x3, 1
	regsw_c	x16, 0x0(x25)		# 110011000000000000000
	addi	x2, x2, 1
	bne	x12, x1, .LBB0_211
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
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	add	a3, x10, a7
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
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	add	t0, x9, t3
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
	regsw_c	x24, 0x510(x16)		# 100001100010100010000
	ld	x1, 304(sp)                     # 8-byte Folded Reload
	add	a2, a2, x1
	ld	x1, 376(sp)                     # 8-byte Folded Reload
	add	a2, x1, a2
	ld	x1, 408(sp)                     # 8-byte Folded Reload
	add	t6, x1, t6
.LBB0_214:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_215 Depth 4
	regsw_c	x9, 0x124(x18)		# 100100100100100100100
	mv	x1, a2
	mv	x2, a3
	mv	x3, t5
	mv	x4, t4
	mv	x5, t3
	mv	x6, a7
	mv	x7, t2
	regsw_c	x0, 0x0(x18)		# 100100000000000000000
	mv	x8, t1
	mv	x9, t0
.LBB0_215:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_214 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	regsw_c	x13, 0x5b6(x27)		# 110110110110110110110
	add	x10, x9, a5
	add	x11, x8, a5
	add	x12, x7, a5
	add	x13, x6, a5
	add	x14, x5, a5
	add	x15, x4, a5
	add	x16, x3, a5
	regsw_c	x13, 0x5b7(x27)		# 110110110110110110111
	lbu	x10, 0(x10)
	lbu	x16, 0(x16)
	lbu	x15, 0(x15)
	lbu	x14, 0(x14)
	add	x17, x2, a5
	add	x18, x1, a5
	add	x10, x10, x16
	regsw_c	x29, 0x5b6(x31)		# 111111110110110110110
	add	x14, x15, x14
	add	x10, x10, x14
	lbu	x14, 0(x17)
	lbu	x13, 0(x13)
	lbu	x12, 0(x12)
	lbu	x11, 0(x11)
	addi	x10, x10, 2
	regsw_c	x31, 0x7b6(x27)		# 110111111111110110110
	srli	x10, x10, 2
	add	x13, x14, x13
	add	x11, x12, x11
	add	x11, x13, x11
	addi	x11, x11, 2
	srli	x11, x11, 2
	lbu	x12, 0(x18)
	regsw_c	x13, 0x7d6(x31)		# 111110110111111010110
	add	x10, x10, x11
	addi	x10, x10, 1
	srli	x10, x10, 1
	subw	x10, x10, x12
	mul	x10, x10, x10
	add	a4, x10, a4
	addi	x9, x9, 1
	regsw_c	x13, 0x5b6(x27)		# 110110110110110110110
	addi	x8, x8, 1
	addi	x7, x7, 1
	addi	x6, x6, 1
	addi	x5, x5, 1
	addi	x4, x4, 1
	addi	x3, x3, 1
	addi	x2, x2, 1
	regsw_c	x0, 0x0(x25)		# 110010000000000000000
	addi	x1, x1, 1
	bne	x9, t6, .LBB0_215
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
	regsw_c	x0, 0x0(x18)		# 100100000000000000000
	ld	x1, 336(sp)                     # 8-byte Folded Reload
	ld	x2, 320(sp)                     # 8-byte Folded Reload
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
	regsw_c	x0, 0x0(x9)		# 010010000000000000000
	mv	s6, x2
	mv	s0, x1
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
	regsw_c	x0, 0x0(x18)		# 100100000000000000000
	mv	x1, s0
	mv	x2, s6
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
	regsw_c	x0, 0x0(x9)		# 010010000000000000000
	mv	s6, x2
	mv	s0, x1
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
	regsw_c	x0, 0x0(x18)		# 100100000000000000000
	mv	x1, s0
	mv	x2, s6
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
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	add	a1, a1, x6
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
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bge	x16, x15, .LBB0_252
# %bb.241:                              #   in Loop: Header=BB0_9 Depth=2
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bge	x16, x12, .LBB0_252
# %bb.242:                              #   in Loop: Header=BB0_9 Depth=2
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bge	x16, x13, .LBB0_252
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
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	sw	x28, 88(t3)
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
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	sw	x28, 88(t3)
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
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x28, a0
	j	.LBB0_43
.LBB0_252:                              #   in Loop: Header=BB0_9 Depth=2
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bge	x15, x12, .LBB0_264
# %bb.253:                              #   in Loop: Header=BB0_9 Depth=2
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bge	x15, x13, .LBB0_264
# %bb.254:                              #   in Loop: Header=BB0_9 Depth=2
	li	a0, 1
	slli	a0, a0, 32
	addi	a0, a0, 8
	ld	s4, 352(sp)                     # 8-byte Folded Reload
	sd	a0, 0(s4)
	lui	a0, %hi(width)
	lw	s0, %lo(width)(a0)
	regsw_c	x1, 0x281(x25)		# 110010000101010000001
	addi	x5, x5, -1
	and	a0, x5, s0
	ld	s3, 536(sp)                     # 8-byte Folded Reload
	add	x1, s3, x1
	add	a0, x1, a0
	slliw	s1, s0, 1
	mulw	a1, s1, x2
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
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	add	a1, a1, x8
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
	regsw_c	x0, 0x0(x18)		# 100100000000000000000
	ld	x1, 336(sp)                     # 8-byte Folded Reload
	ld	x2, 320(sp)                     # 8-byte Folded Reload
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
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bge	x12, x13, .LBB0_266
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
	regsw_c	x1, 0x281(x25)		# 110010000101010000001
	addi	x6, x6, -1
	and	a0, x6, s3
	ld	s5, 312(sp)                     # 8-byte Folded Reload
	add	x4, s5, x4
	add	a0, x4, a0
	slliw	s0, s3, 1
	mulw	a1, s0, x3
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
	regsw_c	x0, 0x0(x18)		# 100100000000000000000
	ld	x1, 336(sp)                     # 8-byte Folded Reload
	ld	x2, 320(sp)                     # 8-byte Folded Reload
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
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	lw	x3, %lo(width)(a0)
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
	regsw_c	x0, 0x0(x18)		# 100100000000000000000
	slliw	x1, t1, 2
	mulw	x2, t1, t0
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
	regsw_c	x11, 0x320(x18)		# 100100101101100100000
	li	x6, 0
	mulw	x3, t5, s3
	add	x3, t4, x3
	add	x3, s9, x3
	mv	x4, a6
	mv	x5, s2
.LBB1_18:                               #   Parent Loop BB1_10 Depth=1
                                        #     Parent Loop BB1_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	regsw_c	x15, 0x5b7(x27)		# 110110111110110110111
	lbu	x7, -7(x3)
	lbu	x8, -7(x4)
	sub	x7, x7, x8
	sraiw	x8, x7, 31
	lbu	x9, -6(x3)
	lbu	x10, -6(x4)
	xor	x7, x7, x8
	regsw_c	x31, 0x5b7(x31)		# 111111111110110110111
	subw	x6, x8, x6
	subw	x6, x7, x6
	sub	x7, x9, x10
	sraiw	x8, x7, 31
	lbu	x9, -5(x3)
	lbu	x10, -5(x4)
	xor	x7, x7, x8
	regsw_c	x31, 0x5b7(x31)		# 111111111110110110111
	subw	x7, x7, x8
	add	x6, x6, x7
	sub	x7, x9, x10
	lbu	x8, -4(x3)
	lbu	x9, -4(x4)
	sraiw	x10, x7, 31
	xor	x7, x7, x10
	regsw_c	x29, 0x7b7(x31)		# 111111110111110110111
	subw	x7, x7, x10
	sub	x8, x8, x9
	sraiw	x9, x8, 31
	xor	x8, x8, x9
	lbu	x10, -3(x3)
	lbu	x11, -3(x4)
	subw	x8, x8, x9
	regsw_c	x31, 0x5b7(x31)		# 111111111110110110111
	add	x7, x7, x8
	add	x6, x6, x7
	sub	x7, x10, x11
	lbu	x8, -2(x3)
	lbu	x9, -2(x4)
	sraiw	x10, x7, 31
	xor	x7, x7, x10
	regsw_c	x29, 0x5bf(x31)		# 111111110110110111111
	subw	x7, x7, x10
	sub	x8, x8, x9
	sraiw	x9, x8, 31
	lbu	x10, -1(x3)
	lbu	x11, -1(x4)
	xor	x8, x8, x9
	subw	x8, x8, x9
	regsw_c	x29, 0x7b7(x31)		# 111111110111110110111
	add	x7, x7, x8
	sub	x8, x10, x11
	sraiw	x9, x8, 31
	xor	x8, x8, x9
	lbu	x10, 0(x3)
	lbu	x11, 0(x4)
	subw	x8, x8, x9
	regsw_c	x31, 0x5b7(x31)		# 111111111110110110111
	add	x7, x7, x8
	add	x6, x6, x7
	sub	x7, x10, x11
	lbu	x8, 1(x3)
	lbu	x9, 1(x4)
	sraiw	x10, x7, 31
	xor	x7, x7, x10
	regsw_c	x29, 0x5bf(x31)		# 111111110110110111111
	subw	x7, x7, x10
	sub	x8, x8, x9
	sraiw	x9, x8, 31
	lbu	x10, 2(x3)
	lbu	x11, 2(x4)
	xor	x8, x8, x9
	subw	x8, x8, x9
	regsw_c	x29, 0x5bf(x31)		# 111111110110110111111
	add	x7, x7, x8
	sub	x8, x10, x11
	sraiw	x9, x8, 31
	lbu	x10, 3(x3)
	lbu	x11, 3(x4)
	xor	x8, x8, x9
	subw	x8, x8, x9
	regsw_c	x29, 0x7b7(x31)		# 111111110111110110111
	add	x7, x7, x8
	sub	x8, x10, x11
	sraiw	x9, x8, 31
	xor	x8, x8, x9
	lbu	x10, 4(x3)
	lbu	x11, 4(x4)
	subw	x8, x8, x9
	regsw_c	x31, 0x5b7(x31)		# 111111111110110110111
	add	x7, x7, x8
	add	x6, x6, x7
	sub	x7, x10, x11
	lbu	x8, 5(x3)
	lbu	x9, 5(x4)
	sraiw	x10, x7, 31
	xor	x7, x7, x10
	regsw_c	x29, 0x5bf(x31)		# 111111110110110111111
	subw	x7, x7, x10
	sub	x8, x8, x9
	sraiw	x9, x8, 31
	lbu	x10, 6(x3)
	lbu	x11, 6(x4)
	xor	x8, x8, x9
	subw	x8, x8, x9
	regsw_c	x29, 0x5bf(x31)		# 111111110110110111111
	add	x7, x7, x8
	sub	x8, x10, x11
	sraiw	x9, x8, 31
	lbu	x10, 7(x3)
	lbu	x11, 7(x4)
	xor	x8, x8, x9
	subw	x8, x8, x9
	regsw_c	x29, 0x5bf(x31)		# 111111110110110111111
	add	x7, x7, x8
	sub	x8, x10, x11
	sraiw	x9, x8, 31
	lbu	x10, 8(x3)
	lbu	x11, 8(x4)
	xor	x8, x8, x9
	subw	x8, x8, x9
	regsw_c	x29, 0x7ff(x31)		# 111111110111111111111
	add	x7, x7, x8
	sub	x8, x10, x11
	sraiw	x9, x8, 31
	xor	x8, x8, x9
	subw	x8, x8, x9
	add	x7, x7, x8
	addw	x6, x6, x7
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bge	x6, a0, .LBB1_21
# %bb.19:                               #   in Loop: Header=BB1_18 Depth=3
	regsw_c	x12, 0x400(x27)		# 110110110010000000000
	addiw	x5, x5, -1
	add	x3, x3, s3
	add	x4, x4, s3
	bnez	x5, .LBB1_18
# %bb.20:                               #   in Loop: Header=BB1_13 Depth=2
	mv	a5, t4
	mv	a4, t5
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	mv	a0, x6
.LBB1_21:                               #   in Loop: Header=BB1_13 Depth=2
	bltu	t2, t6, .LBB1_11
# %bb.22:                               #   in Loop: Header=BB1_13 Depth=2
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	bgeu	t2, x1, .LBB1_24
# %bb.23:                               #   in Loop: Header=BB1_13 Depth=2
	addiw	t5, t5, 1
	j	.LBB1_12
.LBB1_24:                               #   in Loop: Header=BB1_13 Depth=2
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	bgeu	t2, x2, .LBB1_26
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
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mulw	x1, t0, a7
	j	.LBB1_42
.LBB1_40:                               #   in Loop: Header=BB1_42 Depth=2
	addiw	t3, t3, 1
.LBB1_41:                               #   in Loop: Header=BB1_42 Depth=2
	regsw_c	x4, 0x0(x24)		# 110000010000000000000
	addiw	x2, x2, -1
	addiw	t1, t1, 1
	and	a0, x2, a0
	beq	t2, t1, .LBB1_38
.LBB1_42:                               #   Parent Loop BB1_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	regsw_c	x9, 0x537(x19)		# 100110100110100110111
	slt	x2, t3, a2
	not	x2, x2
	slt	x3, s11, t3
	not	x3, x3
	slt	x4, t4, a3
	not	x4, x4
	and	x2, x2, x4
	regsw_c	x15, 0x73c(x19)		# 100110111111100111100
	slt	x4, s1, t4
	not	x4, x4
	and	x3, x3, x4
	and	x2, x2, x3
	sgtz	x3, a0
	and	x2, x2, x3
	mv	x3, t3
	regsw_c	x0, 0x0(x17)		# 100010000000000000000
	mv	x4, t4
	bnez	x2, .LBB1_44
# %bb.43:                               #   in Loop: Header=BB1_42 Depth=2
	regsw_c	x0, 0x0(x18)		# 100100000000000000000
	mv	x3, a5
	mv	x4, a4
.LBB1_44:                               #   in Loop: Header=BB1_42 Depth=2
	regsw_c	x0, 0x0(x9)		# 010010000000000000000
	mv	a4, x4
	mv	a5, x3
	bltu	t1, t5, .LBB1_40
# %bb.45:                               #   in Loop: Header=BB1_42 Depth=2
	bgeu	t1, t6, .LBB1_47
# %bb.46:                               #   in Loop: Header=BB1_42 Depth=2
	addiw	t4, t4, 1
	j	.LBB1_41
.LBB1_47:                               #   in Loop: Header=BB1_42 Depth=2
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	bgeu	t1, x1, .LBB1_49
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
	regsw_c	x0, 0x44(x16)		# 100000000000001000100
	lbu	x1, 0(t0)
	add	t5, t5, t6
	addi	t5, t5, 2
	srliw	t5, t5, 2
	subw	t5, t5, x1
	lbu	t6, 2(t2)
	lbu	x1, 2(t1)
	mul	t5, t5, t5
	add	a3, t5, a3
	add	t3, t3, t6
	regsw_c	x0, 0x4(x4)		# 001000000000000000100
	add	t4, t4, x1
	add	t3, t3, t4
	addi	t3, t3, 2
	lbu	t4, 1(t0)
	srli	t3, t3, 2
	lbu	t5, 3(t2)
	lbu	x2, 3(t1)
	subw	t3, t3, t4
	mul	t3, t3, t3
	add	t6, t6, t5
	regsw_c	x2, 0x0(x28)		# 111000001000000000000
	add	x1, x1, x2
	lbu	t4, 2(t0)
	add	t6, t6, x1
	addi	t6, t6, 2
	srli	t6, t6, 2
	subw	t6, t6, t4
	mul	t4, t6, t6
	lbu	t6, 4(t2)
	regsw_c	x0, 0x1c8(x16)		# 100000000000111001000
	lbu	x1, 4(t1)
	add	t3, t4, t3
	add	a3, t3, a3
	add	t5, t5, t6
	add	x2, x2, x1
	add	t5, t5, x2
	addi	t5, t5, 2
	lbu	t3, 3(t0)
	srli	t5, t5, 2
	lbu	t4, 5(t2)
	regsw_c	x0, 0x1c1(x16)		# 100000000000111000001
	lbu	x2, 5(t1)
	subw	t5, t5, t3
	mul	t3, t5, t5
	add	t6, t6, t4
	add	x1, x1, x2
	lbu	t5, 4(t0)
	add	t6, t6, x1
	addi	t6, t6, 2
	srli	t6, t6, 2
	subw	t6, t6, t5
	lbu	t5, 6(t2)
	regsw_c	x0, 0x1c1(x16)		# 100000000000111000001
	lbu	x1, 6(t1)
	mul	t6, t6, t6
	add	t3, t6, t3
	add	t4, t4, t5
	add	x2, x2, x1
	lbu	t6, 5(t0)
	add	t4, t4, x2
	addi	t4, t4, 2
	srli	t4, t4, 2
	subw	t4, t4, t6
	mul	t4, t4, t4
	lbu	t6, 7(t2)
	regsw_c	x0, 0x1c8(x16)		# 100000000000111001000
	lbu	x2, 7(t1)
	add	t3, t4, t3
	add	a3, t3, a3
	add	t5, t5, t6
	add	x1, x1, x2
	add	t5, t5, x1
	addi	t5, t5, 2
	lbu	t3, 6(t0)
	srli	t5, t5, 2
	lbu	t4, 8(t2)
	regsw_c	x0, 0x1c1(x16)		# 100000000000111000001
	lbu	x1, 8(t1)
	subw	t5, t5, t3
	mul	t3, t5, t5
	add	t6, t6, t4
	add	x2, x2, x1
	lbu	t5, 7(t0)
	add	t6, t6, x2
	addi	t6, t6, 2
	srli	t6, t6, 2
	subw	t6, t6, t5
	lbu	t5, 9(t2)
	regsw_c	x0, 0x1c1(x16)		# 100000000000111000001
	lbu	x2, 9(t1)
	mul	t6, t6, t6
	add	t3, t6, t3
	add	t4, t4, t5
	add	x1, x1, x2
	lbu	t6, 8(t0)
	add	t4, t4, x1
	addi	t4, t4, 2
	srli	t4, t4, 2
	subw	t4, t4, t6
	lbu	t6, 10(t2)
	regsw_c	x0, 0x1c1(x16)		# 100000000000111000001
	lbu	x1, 10(t1)
	mul	t4, t4, t4
	add	t3, t4, t3
	add	t5, t5, t6
	add	x2, x2, x1
	lbu	t4, 9(t0)
	add	t5, t5, x2
	addi	t5, t5, 2
	srli	t5, t5, 2
	subw	t5, t5, t4
	mul	t4, t5, t5
	lbu	t5, 11(t2)
	regsw_c	x0, 0x1c8(x16)		# 100000000000111001000
	lbu	x2, 11(t1)
	add	t3, t4, t3
	add	a3, t3, a3
	add	t6, t6, t5
	add	x1, x1, x2
	add	t6, t6, x1
	addi	t6, t6, 2
	lbu	t3, 10(t0)
	srli	t6, t6, 2
	lbu	t4, 12(t2)
	regsw_c	x0, 0x1c1(x16)		# 100000000000111000001
	lbu	x1, 12(t1)
	subw	t6, t6, t3
	mul	t3, t6, t6
	add	t5, t5, t4
	add	x2, x2, x1
	lbu	t6, 11(t0)
	add	t5, t5, x2
	addi	t5, t5, 2
	srli	t5, t5, 2
	subw	t5, t5, t6
	lbu	t6, 13(t2)
	regsw_c	x0, 0x1c1(x16)		# 100000000000111000001
	lbu	x2, 13(t1)
	mul	t5, t5, t5
	add	t3, t5, t3
	add	t4, t4, t6
	add	x1, x1, x2
	lbu	t5, 12(t0)
	add	t4, t4, x1
	addi	t4, t4, 2
	srli	t4, t4, 2
	subw	t4, t4, t5
	lbu	t5, 14(t2)
	regsw_c	x0, 0x1c1(x16)		# 100000000000111000001
	lbu	x1, 14(t1)
	mul	t4, t4, t4
	add	t3, t4, t3
	add	t6, t6, t5
	add	x2, x2, x1
	lbu	t4, 13(t0)
	add	t6, t6, x2
	addi	t6, t6, 2
	srli	t6, t6, 2
	subw	t6, t6, t4
	lbu	t4, 15(t2)
	regsw_c	x0, 0x1c1(x16)		# 100000000000111000001
	lbu	x2, 15(t1)
	mul	t6, t6, t6
	add	t3, t6, t3
	add	t5, t5, t4
	add	x1, x1, x2
	lbu	t6, 14(t0)
	add	t5, t5, x1
	addi	t5, t5, 2
	srli	t5, t5, 2
	subw	t5, t5, t6
	mul	t5, t5, t5
	lbu	t2, 16(t2)
	lbu	t1, 16(t1)
	add	t3, t5, t3
	add	a3, t3, a3
	add	t2, t4, t2
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	add	t1, x2, t1
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
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x1, a6
	add	a0, a0, a2
	lbu	a6, 0(a0)
	mul	t3, a2, a4
	add	t3, t3, a1
	addi	t3, t3, 16
	mv	t4, t0
	mv	t5, t1
	mv	t6, t2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x2, a6
.LBB4_18:                               #   Parent Loop BB4_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	regsw_c	x15, 0x73e(x18)		# 100100111111100111110
	lbu	x3, 0(t4)
	lbu	x4, 0(t5)
	add	x1, x1, x2
	add	x1, x1, x3
	lbu	x2, 0(t6)
	add	x1, x1, x4
	addi	x1, x1, 2
	regsw_c	x29, 0x690(x27)		# 110111110111010010000
	srliw	x1, x1, 2
	sub	x1, x1, x2
	sraiw	x2, x1, 31
	xor	x1, x1, x2
	subw	a3, x2, a3
	subw	a3, x1, a3
	addi	t6, t6, 1
	addi	t5, t5, 1
	addi	t4, t4, 1
	regsw_c	x0, 0x0(x27)		# 110110000000000000000
	mv	x2, x4
	mv	x1, x3
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
