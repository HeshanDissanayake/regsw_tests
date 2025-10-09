	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"putmpg.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	putintrablk                     # -- Begin function putintrablk
	.p2align	2
	.type	putintrablk,@function
putintrablk:                            # @putintrablk
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	sd	s5, 8(sp)                       # 8-byte Folded Spill
	sd	s6, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	lh	a2, 0(a0)
	slli	a0, a1, 2
	lui	a3, %hi(dc_dct_pred)
	addi	a3, a3, %lo(dc_dct_pred)
	add	a3, a3, a0
	lw	a0, 0(a3)
	subw	a0, a2, a0
	sw	a2, 0(a3)
	beqz	a1, .LBB0_2
# %bb.1:
	call	putDCchrom
	j	.LBB0_3
.LBB0_2:
	call	putDClum
.LBB0_3:
	li	a0, 0
	lui	s1, %hi(altscan)
	lw	a1, %lo(altscan)(s1)
	li	s2, 1
	lui	s3, %hi(alternate_scan)
	addi	s3, s3, %lo(alternate_scan)
	lui	s4, %hi(zig_zag_scan)
	addi	s4, s4, %lo(zig_zag_scan)
	li	s5, 64
	lui	s6, %hi(intravlc)
	j	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=1
	addiw	a0, a0, 1
	addi	s2, s2, 1
	beq	s2, s5, .LBB0_9
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	mv	a2, s4
	beqz	a1, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	mv	a2, s3
.LBB0_7:                                #   in Loop: Header=BB0_5 Depth=1
	add	a2, a2, s2
	lbu	a2, 0(a2)
	slli	a2, a2, 1
	add	a2, s0, a2
	lhu	a3, 0(a2)
	beqz	a3, .LBB0_4
# %bb.8:                                #   in Loop: Header=BB0_5 Depth=1
	lw	a2, %lo(intravlc)(s6)
	slli	a1, a3, 48
	srai	a1, a1, 48
	call	putAC
	lw	a1, %lo(altscan)(s1)
	li	a0, 0
	addi	s2, s2, 1
	bne	s2, s5, .LBB0_5
.LBB0_9:
	lui	a0, %hi(intravlc)
	lw	a0, %lo(intravlc)(a0)
	beqz	a0, .LBB0_11
# %bb.10:
	li	a0, 6
	li	a1, 4
	j	.LBB0_12
.LBB0_11:
	li	a0, 2
	li	a1, 2
.LBB0_12:
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	ld	s6, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	tail	putbits
.Lfunc_end0:
	.size	putintrablk, .Lfunc_end0-putintrablk
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	putnonintrablk                  # -- Begin function putnonintrablk
	.p2align	2
	.type	putnonintrablk,@function
putnonintrablk:                         # @putnonintrablk
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	sd	s5, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	li	s1, 0
	li	a0, 0
	li	a2, 1
	lui	s2, %hi(altscan)
	lui	s3, %hi(alternate_scan)
	addi	s3, s3, %lo(alternate_scan)
	lui	s4, %hi(zig_zag_scan)
	addi	s4, s4, %lo(zig_zag_scan)
	li	s5, 64
	j	.LBB1_2
.LBB1_1:                                #   in Loop: Header=BB1_2 Depth=1
	addiw	a0, a0, 1
	addi	s1, s1, 1
	beq	s1, s5, .LBB1_9
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	lw	a3, %lo(altscan)(s2)
	mv	a1, s4
	beqz	a3, .LBB1_4
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	mv	a1, s3
.LBB1_4:                                #   in Loop: Header=BB1_2 Depth=1
	add	a1, a1, s1
	lbu	a1, 0(a1)
	slli	a1, a1, 1
	add	a1, s0, a1
	lh	a1, 0(a1)
	beqz	a1, .LBB1_1
# %bb.5:                                #   in Loop: Header=BB1_2 Depth=1
	bnez	a2, .LBB1_7
# %bb.6:                                #   in Loop: Header=BB1_2 Depth=1
	call	putAC
	j	.LBB1_8
.LBB1_7:                                #   in Loop: Header=BB1_2 Depth=1
	call	putACfirst
.LBB1_8:                                #   in Loop: Header=BB1_2 Depth=1
	li	a0, 0
	li	a2, 0
	addi	s1, s1, 1
	bne	s1, s5, .LBB1_2
.LBB1_9:
	li	a0, 2
	li	a1, 2
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	tail	putbits
.Lfunc_end1:
	.size	putnonintrablk, .Lfunc_end1-putnonintrablk
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	putmv                           # -- Begin function putmv
	.p2align	2
	.type	putmv,@function
putmv:                                  # @putmv
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	addiw	s0, a1, -1
	li	a1, -16
	sllw	a2, a1, s0
	li	a1, 16
	sllw	a1, a1, s0
	li	a3, 32
	sllw	a3, a3, s0
	blt	a0, a1, .LBB2_2
# %bb.1:
	neg	s1, a3
	addw	s1, s1, a0
	bge	s1, a2, .LBB2_3
	j	.LBB2_4
.LBB2_2:
	slt	a4, a0, a2
	neg	s1, a4
	and	s1, s1, a3
	addw	s1, s1, a0
	blt	s1, a2, .LBB2_4
.LBB2_3:
	blt	s1, a1, .LBB2_5
.LBB2_4:
	lui	a0, %hi(quiet)
	lw	a0, %lo(quiet)(a0)
	beqz	a0, .LBB2_11
.LBB2_5:
	sraiw	a0, s1, 31
	xor	a1, s1, a0
	li	a2, -1
	sllw	a2, a2, s0
	not	s2, a2
	subw	a0, a0, s2
	subw	s3, a1, a0
	sraw	s4, s3, s0
	bltz	s1, .LBB2_7
# %bb.6:
	mv	a0, s4
	call	putmotioncode
	bnez	s0, .LBB2_8
	j	.LBB2_10
.LBB2_7:
	negw	a0, s4
	call	putmotioncode
	beqz	s0, .LBB2_10
.LBB2_8:
	beqz	s4, .LBB2_10
# %bb.9:
	and	a0, s3, s2
	mv	a1, s0
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	tail	putbits
.LBB2_10:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.LBB2_11:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	li	a1, 22
	li	a2, 1
	call	fwrite
	j	.LBB2_5
.Lfunc_end2:
	.size	putmv, .Lfunc_end2-putmv
                                        # -- End function
	.option	pop
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"invalid motion vector\n"
	.size	.L.str, 23

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
