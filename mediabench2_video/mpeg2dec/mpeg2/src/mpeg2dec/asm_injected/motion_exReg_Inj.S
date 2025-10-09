	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"motion.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	motion_vectors                  # -- Begin function motion_vectors
	.p2align	2
	.type	motion_vectors,@function
motion_vectors:                         # @motion_vectors
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
	ld	s0, 88(sp)
	ld	s1, 80(sp)
	li	t0, 1
	mv	s2, a7
	mv	s3, a6
	mv	s4, a3
	mv	s6, a2
	mv	s5, a0
	bne	a4, t0, .LBB0_4
# %bb.1:
	or	a5, s1, a5
	bnez	a5, .LBB0_3
# %bb.2:
	li	a0, 1
	mv	s7, a1
	call	Get_Bits
	mv	a1, s7
	slli	a2, s4, 2
	add	a2, s6, a2
	sw	a0, 0(a2)
	sw	a0, 8(a2)
.LBB0_3:
	slli	s4, s4, 3
	add	s5, s5, s4
	mv	a0, s5
	mv	a2, s3
	mv	a3, s2
	mv	a4, s1
	mv	a5, s0
	li	a6, 0
	call	motion_vector
	lw	a0, 0(s5)
	lw	a1, 4(s5)
	sw	a0, 16(s5)
	sw	a1, 20(s5)
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
.LBB0_4:
	li	a0, 1
	mv	s7, a1
	call	Get_Bits
	slli	a1, s4, 2
	add	s6, s6, a1
	sw	a0, 0(s6)
	slli	s4, s4, 3
	add	s5, s5, s4
	mv	a0, s5
	mv	a1, s7
	mv	a2, s3
	mv	a3, s2
	mv	a4, s1
	mv	a5, s0
	li	a6, 0
	call	motion_vector
	li	a0, 1
	call	Get_Bits
	addi	s5, s5, 16
	sw	a0, 8(s6)
	mv	a0, s5
	mv	a1, s7
	mv	a2, s3
	mv	a3, s2
	mv	a4, s1
	mv	a5, s0
	li	a6, 0
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
	tail	motion_vector
.Lfunc_end0:
	.size	motion_vectors, .Lfunc_end0-motion_vectors
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	motion_vector                   # -- Begin function motion_vector
	.p2align	2
	.type	motion_vector,@function
motion_vector:                          # @motion_vector
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
	mv	s6, a6
	mv	s4, a5
	mv	s1, a4
	mv	s3, a3
	mv	s5, a2
	mv	s0, a1
	mv	s2, a0
	call	Get_motion_code
	mv	s7, a0
	li	a0, 0
	beqz	s5, .LBB1_3
# %bb.1:
	beqz	s7, .LBB1_3
# %bb.2:
	mv	a0, s5
	call	Get_Bits
.LBB1_3:
	lw	a1, 0(s2)
	li	a2, 16
	sllw	a2, a2, s5
	snez	s6, s6
	sraw	a1, a1, s6
	blez	s7, .LBB1_7
# %bb.4:
	addi	s7, s7, -1
	sllw	a3, s7, s5
	add	a0, a3, a0
	add	a0, a0, a1
	addiw	a1, a0, 1
	blt	a1, a2, .LBB1_10
# %bb.5:
	li	a0, -32
.LBB1_6:
	sllw	a0, a0, s5
	add	a1, a1, a0
	j	.LBB1_10
.LBB1_7:
	bgez	s7, .LBB1_10
# %bb.8:
	not	a3, s7
	sllw	a3, a3, s5
	add	a0, a0, a3
	not	a0, a0
	addw	a1, a1, a0
	negw	a0, a2
	bge	a1, a0, .LBB1_10
# %bb.9:
	li	a0, 32
	j	.LBB1_6
.LBB1_10:
	sllw	a0, a1, s6
	sw	a0, 0(s2)
	beqz	s1, .LBB1_12
# %bb.11:
	call	Get_dmvector
	sw	a0, 0(s0)
.LBB1_12:
	call	Get_motion_code
	mv	s5, a0
	li	a0, 0
	beqz	s3, .LBB1_15
# %bb.13:
	beqz	s5, .LBB1_15
# %bb.14:
	mv	a0, s3
	call	Get_Bits
.LBB1_15:
	lw	a2, 4(s2)
	snez	a1, s4
	sraw	a2, a2, a1
	li	a3, 16
	sllw	a3, a3, s3
	sraw	a2, a2, s6
	blez	s5, .LBB1_19
# %bb.16:
	addi	s5, s5, -1
	sllw	a4, s5, s3
	add	a0, a4, a0
	add	a0, a0, a2
	addiw	a2, a0, 1
	blt	a2, a3, .LBB1_22
# %bb.17:
	li	a0, -32
.LBB1_18:
	sllw	a0, a0, s3
	add	a2, a2, a0
	j	.LBB1_22
.LBB1_19:
	bgez	s5, .LBB1_22
# %bb.20:
	not	a4, s5
	sllw	a4, a4, s3
	add	a0, a0, a4
	not	a0, a0
	addw	a2, a2, a0
	negw	a0, a3
	bge	a2, a0, .LBB1_22
# %bb.21:
	li	a0, 32
	j	.LBB1_18
.LBB1_22:
	sllw	a0, a2, s6
	sllw	a0, a0, a1
	sw	a0, 4(s2)
	beqz	s1, .LBB1_24
# %bb.23:
	call	Get_dmvector
	sw	a0, 4(s0)
.LBB1_24:
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
.Lfunc_end1:
	.size	motion_vector, .Lfunc_end1-motion_vector
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Dual_Prime_Arithmetic           # -- Begin function Dual_Prime_Arithmetic
	.p2align	2
	.type	Dual_Prime_Arithmetic,@function
Dual_Prime_Arithmetic:                  # @Dual_Prime_Arithmetic
# %bb.0:
	lui	a4, %hi(picture_structure)
	lw	a5, %lo(picture_structure)(a4)
	li	a6, 3
	bne	a5, a6, .LBB2_3
# %bb.1:
	lui	a4, %hi(top_field_first)
	lw	a4, %lo(top_field_first)(a4)
	beqz	a4, .LBB2_6
# %bb.2:
	lw	a4, 0(a1)
	sgtz	a5, a2
	add	a6, a5, a2
	sraiw	a6, a6, 1
	add	a4, a4, a6
	sw	a4, 0(a0)
	lw	a4, 4(a1)
	sgtz	a6, a3
	add	a7, a6, a3
	sraiw	a7, a7, 1
	add	a4, a7, a4
	addi	a4, a4, -1
	sw	a4, 4(a0)
	slli	a4, a2, 1
	lw	a7, 0(a1)
	add	a2, a4, a2
	add	a2, a2, a5
	sraiw	a2, a2, 1
	add	a2, a7, a2
	sw	a2, 8(a0)
	slli	a2, a3, 1
	lw	a1, 4(a1)
	add	a2, a2, a3
	add	a2, a2, a6
	sraiw	a2, a2, 1
	add	a1, a2, a1
	addi	a1, a1, 1
	sw	a1, 12(a0)
	ret
.LBB2_3:
	lw	a5, 0(a1)
	sgtz	a6, a2
	add	a2, a6, a2
	sraiw	a2, a2, 1
	add	a2, a5, a2
	sw	a2, 0(a0)
	sgtz	a2, a3
	lw	a1, 4(a1)
	lw	a4, %lo(picture_structure)(a4)
	add	a2, a2, a3
	sraiw	a2, a2, 1
	li	a3, 1
	add	a1, a1, a2
	bne	a4, a3, .LBB2_5
# %bb.4:
	addi	a1, a1, -1
	sw	a1, 4(a0)
	ret
.LBB2_5:
	addi	a1, a1, 1
	sw	a1, 4(a0)
	ret
.LBB2_6:
	slli	a4, a2, 1
	add	a4, a4, a2
	lw	a5, 0(a1)
	sgtz	a6, a2
	add	a4, a4, a6
	sraiw	a4, a4, 1
	add	a4, a5, a4
	sw	a4, 0(a0)
	slli	a4, a3, 1
	add	a4, a4, a3
	lw	a5, 4(a1)
	sgtz	a7, a3
	add	a4, a4, a7
	sraiw	a4, a4, 1
	add	a4, a4, a5
	addi	a4, a4, -1
	sw	a4, 4(a0)
	lw	a4, 0(a1)
	add	a2, a6, a2
	sraiw	a2, a2, 1
	add	a2, a4, a2
	sw	a2, 8(a0)
	lw	a1, 4(a1)
	add	a3, a7, a3
	sraiw	a2, a3, 1
	add	a1, a2, a1
	addi	a1, a1, 1
	sw	a1, 12(a0)
	ret
.Lfunc_end2:
	.size	Dual_Prime_Arithmetic, .Lfunc_end2-Dual_Prime_Arithmetic
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
