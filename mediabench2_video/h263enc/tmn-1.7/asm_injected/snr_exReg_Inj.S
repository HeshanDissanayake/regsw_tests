	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"snr.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function ComputeSNR
.LCPI0_0:
	.word	0x42c7fae1                      # float 99.9899978
.LCPI0_1:
	.word	0x477e0100                      # float 65025
	.text
	.globl	ComputeSNR
	.p2align	2
	.type	ComputeSNR,@function
ComputeSNR:                             # @ComputeSNR
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
	fsd	fs0, 8(sp)                      # 8-byte Folded Spill
	fsd	fs1, 0(sp)                      # 8-byte Folded Spill
	mv	s2, a3
	mv	s3, a2
	mv	s5, a1
	mv	s4, a0
	beqz	a3, .LBB0_2
# %bb.1:
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	call	fopen
	mv	s0, a0
	li	a0, 24
	call	malloc
	lui	a1, %hi(pels)
	lw	s8, %lo(pels)(a1)
	lui	a1, %hi(lines)
	lw	s7, %lo(lines)(a1)
	mv	s1, a0
	mul	s6, s7, s8
	mv	a0, s6
	call	malloc
	sd	a0, 0(s1)
	srli	s6, s6, 2
	mv	a0, s6
	call	malloc
	sd	a0, 8(s1)
	mv	a0, s6
	call	malloc
	sd	a0, 16(s1)
	fmv.w.x	fa5, zero
	bgtz	s7, .LBB0_3
	j	.LBB0_16
.LBB0_2:
	lui	a0, %hi(lines)
	lw	s7, %lo(lines)(a0)
	lui	a0, %hi(pels)
	lw	s8, %lo(pels)(a0)
	li	s1, 0
	li	s0, 0
	fmv.w.x	fa5, zero
	blez	s7, .LBB0_16
.LBB0_3:
	blez	s8, .LBB0_16
# %bb.4:                                # %.preheader3
	li	a1, 0
	li	a0, 0
	li	a2, 2
	li	a3, 10
	lui	a4, %hi(pels)
	lui	a5, %hi(lines)
	j	.LBB0_6
.LBB0_5:                                #   in Loop: Header=BB0_6 Depth=1
	addiw	a1, a1, 1
	bge	a1, s7, .LBB0_17
.LBB0_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
                                        #     Child Loop BB0_15 Depth 2
	blez	s8, .LBB0_5
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	beqz	s2, .LBB0_11
# %bb.8:                                #   in Loop: Header=BB0_6 Depth=1
	ld	a6, 0(s1)
	li	a7, 0
.LBB0_9:                                #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t0, 0(s4)
	mulw	t1, a1, s8
	ld	t2, 0(s5)
	add	t1, a7, t1
	add	t0, t0, t1
	lbu	t0, 0(t0)
	add	t2, t2, t1
	lbu	t2, 0(t2)
	subw	t0, t0, t2
	mul	t2, t0, a3
	xori	t2, t2, 128
	add	t1, a6, t1
	sb	t2, 0(t1)
	lw	s8, %lo(pels)(a4)
	mul	t0, t0, t0
	addi	a7, a7, 1
	add	a0, t0, a0
	blt	a7, s8, .LBB0_9
# %bb.10:                               #   in Loop: Header=BB0_6 Depth=1
	lw	s7, %lo(lines)(a5)
	j	.LBB0_5
.LBB0_11:                               #   in Loop: Header=BB0_6 Depth=1
	mv	a6, s8
	bgtz	s8, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_6 Depth=1
	li	a6, 1
.LBB0_13:                               #   in Loop: Header=BB0_6 Depth=1
	ld	t0, 0(s4)
	ld	t1, 0(s5)
	mulw	a7, s8, a1
	add	t2, t0, a7
	lbu	t2, 0(t2)
	add	a7, t1, a7
	lbu	a7, 0(a7)
	subw	a7, t2, a7
	mul	a7, a7, a7
	add	a0, a7, a0
	blt	s8, a2, .LBB0_5
# %bb.14:                               #   in Loop: Header=BB0_6 Depth=1
	mul	a7, s8, a1
	slli	a7, a7, 32
	srli	t2, a7, 32
	add	a7, t1, t2
	addi	a7, a7, 1
	add	t0, t0, t2
	addi	t0, t0, 1
	add	a6, a6, t2
	add	t1, t1, a6
.LBB0_15:                               #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	a6, 0(t0)
	lbu	t2, 0(a7)
	subw	a6, a6, t2
	mul	a6, a6, a6
	add	a0, a6, a0
	addi	a7, a7, 1
	addi	t0, t0, 1
	bne	a7, t1, .LBB0_15
	j	.LBB0_5
.LBB0_16:
	fmv.s	fa4, fa5
	j	.LBB0_18
.LBB0_17:
	fcvt.s.w	fa4, a0
.LBB0_18:
	mul	a0, s8, s7
	fcvt.s.w	fa3, a0
	fdiv.s	fa4, fa4, fa3
	feq.s	a0, fa4, fa5
	bnez	a0, .LBB0_27
# %bb.19:
	lui	a0, %hi(.LCPI0_1)
	flw	fa5, %lo(.LCPI0_1)(a0)
	fdiv.s	fa5, fa5, fa4
	fcvt.d.s	fa0, fa5
	call	log10
	fcvt.s.d	fa5, fa0
	lui	a0, %hi(lines)
	lw	s7, %lo(lines)(a0)
	lui	a0, 266752
	fmv.w.x	fa4, a0
	fmul.s	fa5, fa5, fa4
	li	a0, 1
	fsw	fa5, 0(s3)
	bge	a0, s7, .LBB0_28
.LBB0_20:
	lui	a2, %hi(pels)
	lwu	a3, %lo(pels)(a2)
	sext.w	a1, a3
	beqz	s2, .LBB0_37
# %bb.21:                               # %.preheader
	li	a3, 0
	li	s6, 0
	li	a0, 0
	li	a4, 2
	li	a5, 10
	lui	a6, %hi(lines)
	j	.LBB0_23
.LBB0_22:                               #   in Loop: Header=BB0_23 Depth=1
	addiw	a3, a3, 1
	srliw	a7, s7, 31
	add	a7, s7, a7
	sraiw	a7, a7, 1
	bge	a3, a7, .LBB0_30
.LBB0_23:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_25 Depth 2
	sext.w	a7, a1
	blt	a7, a4, .LBB0_22
# %bb.24:                               #   in Loop: Header=BB0_23 Depth=1
	ld	a7, 8(s1)
	ld	t0, 16(s1)
	li	t1, 0
.LBB0_25:                               #   Parent Loop BB0_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t2, 8(s4)
	mul	a1, a1, a3
	srliw	t3, a1, 31
	add	a1, a1, t3
	sraiw	a1, a1, 1
	ld	t3, 8(s5)
	add	a1, t1, a1
	add	t2, t2, a1
	lbu	t2, 0(t2)
	add	t3, t3, a1
	lbu	t3, 0(t3)
	ld	t4, 16(s4)
	ld	t5, 16(s5)
	subw	t2, t2, t3
	add	t4, t4, a1
	lbu	t3, 0(t4)
	add	t5, t5, a1
	lbu	t4, 0(t5)
	mul	t5, t2, a5
	xori	t5, t5, 128
	add	a1, a7, a1
	sb	t5, 0(a1)
	lw	a1, %lo(pels)(a2)
	ld	t5, 16(s4)
	mul	a1, a1, a3
	srliw	t6, a1, 31
	add	a1, a1, t6
	sraiw	a1, a1, 1
	ld	t6, 16(s5)
	add	a1, t1, a1
	add	t5, t5, a1
	lbu	t5, 0(t5)
	add	t6, t6, a1
	lbu	t6, 0(t6)
	mul	t2, t2, t2
	add	a0, t2, a0
	subw	t5, t5, t6
	mul	t2, t5, a5
	xori	t2, t2, 128
	add	a1, t0, a1
	sb	t2, 0(a1)
	lwu	a1, %lo(pels)(a2)
	subw	t3, t3, t4
	mul	t2, t3, t3
	addi	t1, t1, 1
	srli	t3, a1, 31
	add	t3, a1, t3
	sraiw	t3, t3, 1
	add	s6, t2, s6
	blt	t1, t3, .LBB0_25
# %bb.26:                               #   in Loop: Header=BB0_23 Depth=1
	lw	s7, %lo(lines)(a6)
	j	.LBB0_22
.LBB0_27:
	lui	a0, %hi(.LCPI0_0)
	flw	fa5, %lo(.LCPI0_0)(a0)
	li	a0, 1
	fsw	fa5, 0(s3)
	blt	a0, s7, .LBB0_20
.LBB0_28:
	lui	a0, %hi(pels)
	lw	a1, %lo(pels)(a0)
.LBB0_29:
	li	a0, 0
	li	s6, 0
.LBB0_30:
	fcvt.s.w	fa4, a0
	mul	a0, a1, s7
	sraiw	a1, a0, 31
	srliw	a1, a1, 30
	add	a0, a0, a1
	sraiw	a0, a0, 2
	fcvt.s.w	fa5, a0
	lui	a0, %hi(.LCPI0_0)
	flw	fs0, %lo(.LCPI0_0)(a0)
	fdiv.s	fa3, fa4, fa5
	fmv.w.x	fs1, zero
	feq.s	a0, fa3, fs1
	fmv.s	fa4, fs0
	bnez	a0, .LBB0_32
# %bb.31:
	lui	a0, %hi(.LCPI0_1)
	flw	fa5, %lo(.LCPI0_1)(a0)
	fdiv.s	fa5, fa5, fa3
	fcvt.d.s	fa0, fa5
	call	log10
	fcvt.s.d	fa5, fa0
	lui	a0, %hi(pels)
	lw	a0, %lo(pels)(a0)
	lui	a1, %hi(lines)
	lw	a1, %lo(lines)(a1)
	lui	a2, 266752
	fmv.w.x	fa4, a2
	fmul.s	fa4, fa5, fa4
	mul	a0, a1, a0
	sraiw	a1, a0, 31
	srliw	a1, a1, 30
	add	a0, a0, a1
	sraiw	a0, a0, 2
	fcvt.s.w	fa5, a0
.LBB0_32:
	fcvt.s.w	fa3, s6
	fdiv.s	fa5, fa3, fa5
	feq.s	a0, fa5, fs1
	fsw	fa4, 4(s3)
	bnez	a0, .LBB0_34
# %bb.33:
	lui	a0, %hi(.LCPI0_1)
	flw	fa4, %lo(.LCPI0_1)(a0)
	fdiv.s	fa5, fa4, fa5
	fcvt.d.s	fa0, fa5
	call	log10
	fcvt.s.d	fa5, fa0
	lui	a0, 266752
	fmv.w.x	fa4, a0
	fmul.s	fs0, fa5, fa4
.LBB0_34:
	fsw	fs0, 8(s3)
	beqz	s2, .LBB0_36
# %bb.35:
	lui	s2, %hi(pels)
	lw	a1, %lo(pels)(s2)
	lui	s3, %hi(lines)
	lw	a2, %lo(lines)(s3)
	ld	a0, 0(s1)
	mulw	a2, a2, a1
	li	a1, 1
	mv	a3, s0
	call	fwrite
	lw	a1, %lo(pels)(s2)
	lw	a2, %lo(lines)(s3)
	ld	a0, 8(s1)
	mul	a1, a2, a1
	sraiw	a2, a1, 31
	srliw	a2, a2, 30
	add	a1, a1, a2
	sraiw	a2, a1, 2
	li	a1, 1
	mv	a3, s0
	call	fwrite
	lw	a1, %lo(pels)(s2)
	lw	a2, %lo(lines)(s3)
	ld	a0, 16(s1)
	mul	a1, a2, a1
	sraiw	a2, a1, 31
	srliw	a2, a2, 30
	add	a1, a1, a2
	sraiw	a2, a1, 2
	li	a1, 1
	mv	a3, s0
	call	fwrite
	ld	a0, 0(s1)
	call	free
	ld	a0, 8(s1)
	call	free
	ld	a0, 16(s1)
	call	free
	mv	a0, s1
	call	free
	mv	a0, s0
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
	fld	fs0, 8(sp)                      # 8-byte Folded Reload
	fld	fs1, 0(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 96
	tail	fclose
.LBB0_36:
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
	fld	fs0, 8(sp)                      # 8-byte Folded Reload
	fld	fs1, 0(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 96
	ret
.LBB0_37:
	li	a0, 2
	blt	a1, a0, .LBB0_29
# %bb.38:
	li	a2, 0
	li	a4, 0
	li	s6, 0
	li	a0, 0
	ld	a5, 8(s4)
	ld	a6, 8(s5)
	ld	a7, 16(s5)
	ld	t0, 16(s4)
	srliw	t2, a1, 1
	srliw	t1, s7, 1
	add	t2, a7, t2
.LBB0_39:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_40 Depth 2
	regsw_c	x18, 0x268(x16)		# 100001001001001101000
	srli	x1, a2, 1
	add	t3, t2, x1
	add	t4, a7, x1
	add	t5, t0, x1
	add	t6, a6, x1
	add	x1, a5, x1
.LBB0_40:                               #   Parent Loop BB0_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	regsw_c	x9, 0x1fa(x26)		# 110100100100111111010
	lbu	x2, 0(x1)
	lbu	x3, 0(t6)
	lbu	x4, 0(t5)
	lbu	x5, 0(t4)
	subw	x2, x2, x3
	mul	x2, x2, x2
	add	a0, x2, a0
	regsw_c	x20, 0x6(x31)		# 111111010000000000110
	subw	x2, x4, x5
	mul	x2, x2, x2
	add	s6, x2, s6
	addi	t4, t4, 1
	addi	t5, t5, 1
	addi	t6, t6, 1
	addi	x1, x1, 1
	bne	t4, t3, .LBB0_40
# %bb.41:                               #   in Loop: Header=BB0_39 Depth=1
	addiw	a4, a4, 1
	add	a2, a2, a3
	bne	a4, t1, .LBB0_39
	j	.LBB0_30
.Lfunc_end0:
	.size	ComputeSNR, .Lfunc_end0-ComputeSNR
                                        # -- End function
	.option	pop
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"./diff.raw"
	.size	.L.str, 11

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"ab"
	.size	.L.str.1, 3

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
