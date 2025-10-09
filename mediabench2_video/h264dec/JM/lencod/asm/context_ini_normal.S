	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"context_ini.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function create_context_memory
.LCPI0_0:
	.quad	0x3ff0000000000000              # double 1
.LCPI0_1:
	.quad	0x3fd34413509f79ff              # double 0.3010299956639812
	.text
	.globl	create_context_memory
	.p2align	2
	.type	create_context_memory,@function
create_context_memory:                  # @create_context_memory
# %bb.0:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, %hi(input)
	ld	a2, %lo(input)(a1)
	lui	a1, 22
	add	a0, a0, a1
	lw	a0, 196(a0)
	lw	a3, 212(a2)
	li	a4, 1
	mv	a1, a0
	bne	a3, a4, .LBB0_2
# %bb.1:
	lw	a1, 216(a2)
.LBB0_2:
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
	fsd	fs0, 16(sp)                     # 8-byte Folded Spill
	fsd	fs1, 8(sp)                      # 8-byte Folded Spill
	lui	a2, %hi(num_mb_per_slice)
	sw	a1, %lo(num_mb_per_slice)(a2)
	add	a0, a0, a1
	addi	a0, a0, -1
	divw	a0, a0, a1
	lui	a1, %hi(number_of_slices)
	sw	a0, %lo(number_of_slices)(a1)
	li	a0, 24
	call	malloc
	lui	a1, %hi(initialized)
	sd	a0, %lo(initialized)(a1)
	bnez	a0, .LBB0_4
# %bb.3:
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	call	no_mem_exit
.LBB0_4:
	li	a0, 24
	li	s3, 24
	call	malloc
	lui	s4, %hi(model_number)
	sd	a0, %lo(model_number)(s4)
	bnez	a0, .LBB0_6
# %bb.5:
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	call	no_mem_exit
.LBB0_6:
	li	s5, 0
	lui	s6, %hi(initialized)
	lui	s0, %hi(.L.str)
	addi	s0, s0, %lo(.L.str)
	lui	s1, %hi(.L.str.1)
	addi	s1, s1, %lo(.L.str.1)
	lui	s7, %hi(number_of_slices)
	j	.LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	addi	s5, s5, 8
	beq	s5, s3, .LBB0_28
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	li	a0, 32
	call	malloc
	ld	a1, %lo(initialized)(s6)
	add	a1, a1, s5
	sd	a0, 0(a1)
	bnez	a0, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	mv	a0, s0
	call	no_mem_exit
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	li	a0, 32
	call	malloc
	ld	a1, %lo(model_number)(s4)
	add	a1, a1, s5
	sd	a0, 0(a1)
	bnez	a0, .LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	mv	a0, s1
	call	no_mem_exit
.LBB0_12:                               #   in Loop: Header=BB0_8 Depth=1
	lw	s2, %lo(number_of_slices)(s7)
	slli	s2, s2, 2
	mv	a0, s2
	call	malloc
	ld	a1, %lo(initialized)(s6)
	add	a1, a1, s5
	ld	a1, 0(a1)
	sd	a0, 0(a1)
	bnez	a0, .LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_8 Depth=1
	mv	a0, s0
	call	no_mem_exit
	lw	s2, %lo(number_of_slices)(s7)
	slli	s2, s2, 2
.LBB0_14:                               #   in Loop: Header=BB0_8 Depth=1
	mv	a0, s2
	call	malloc
	ld	a1, %lo(model_number)(s4)
	add	a1, a1, s5
	ld	a1, 0(a1)
	sd	a0, 0(a1)
	bnez	a0, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_8 Depth=1
	mv	a0, s1
	call	no_mem_exit
	lw	s2, %lo(number_of_slices)(s7)
	slli	s2, s2, 2
.LBB0_16:                               #   in Loop: Header=BB0_8 Depth=1
	mv	a0, s2
	call	malloc
	ld	a1, %lo(initialized)(s6)
	add	a1, a1, s5
	ld	a1, 0(a1)
	sd	a0, 8(a1)
	bnez	a0, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_8 Depth=1
	mv	a0, s0
	call	no_mem_exit
	lw	s2, %lo(number_of_slices)(s7)
	slli	s2, s2, 2
.LBB0_18:                               #   in Loop: Header=BB0_8 Depth=1
	mv	a0, s2
	call	malloc
	ld	a1, %lo(model_number)(s4)
	add	a1, a1, s5
	ld	a1, 0(a1)
	sd	a0, 8(a1)
	bnez	a0, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_8 Depth=1
	mv	a0, s1
	call	no_mem_exit
	lw	s2, %lo(number_of_slices)(s7)
	slli	s2, s2, 2
.LBB0_20:                               #   in Loop: Header=BB0_8 Depth=1
	mv	a0, s2
	call	malloc
	ld	a1, %lo(initialized)(s6)
	add	a1, a1, s5
	ld	a1, 0(a1)
	sd	a0, 16(a1)
	bnez	a0, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_8 Depth=1
	mv	a0, s0
	call	no_mem_exit
	lw	s2, %lo(number_of_slices)(s7)
	slli	s2, s2, 2
.LBB0_22:                               #   in Loop: Header=BB0_8 Depth=1
	mv	a0, s2
	call	malloc
	ld	a1, %lo(model_number)(s4)
	add	a1, a1, s5
	ld	a1, 0(a1)
	sd	a0, 16(a1)
	bnez	a0, .LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_8 Depth=1
	mv	a0, s1
	call	no_mem_exit
	lw	s2, %lo(number_of_slices)(s7)
	slli	s2, s2, 2
.LBB0_24:                               #   in Loop: Header=BB0_8 Depth=1
	mv	a0, s2
	call	malloc
	ld	a1, %lo(initialized)(s6)
	add	a1, a1, s5
	ld	a1, 0(a1)
	sd	a0, 24(a1)
	bnez	a0, .LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_8 Depth=1
	mv	a0, s0
	call	no_mem_exit
	lw	s2, %lo(number_of_slices)(s7)
	slli	s2, s2, 2
.LBB0_26:                               #   in Loop: Header=BB0_8 Depth=1
	mv	a0, s2
	call	malloc
	ld	a1, %lo(model_number)(s4)
	add	a1, a1, s5
	ld	a1, 0(a1)
	sd	a0, 24(a1)
	bnez	a0, .LBB0_7
# %bb.27:                               #   in Loop: Header=BB0_8 Depth=1
	mv	a0, s1
	call	no_mem_exit
	j	.LBB0_7
.LBB0_28:
	lui	a2, %hi(number_of_slices)
	lw	a1, %lo(number_of_slices)(a2)
	lui	a0, %hi(initialized)
	blez	a1, .LBB0_41
# %bb.29:
	ld	a1, %lo(initialized)(a0)
	ld	a3, 0(a1)
	ld	a3, 0(a3)
	li	a4, 0
.LBB0_30:                               # =>This Inner Loop Header: Depth=1
	sw	zero, 0(a3)
	lw	a5, %lo(number_of_slices)(a2)
	addi	a4, a4, 1
	addi	a3, a3, 4
	blt	a4, a5, .LBB0_30
# %bb.31:
	blez	a5, .LBB0_41
# %bb.32:
	ld	a2, 0(a1)
	ld	a2, 8(a2)
	li	a3, 0
	lui	a4, %hi(number_of_slices)
.LBB0_33:                               # =>This Inner Loop Header: Depth=1
	sw	zero, 0(a2)
	lw	a5, %lo(number_of_slices)(a4)
	addi	a3, a3, 1
	addi	a2, a2, 4
	blt	a3, a5, .LBB0_33
# %bb.34:
	blez	a5, .LBB0_41
# %bb.35:
	ld	a2, 0(a1)
	ld	a2, 16(a2)
	li	a3, 0
	lui	a4, %hi(number_of_slices)
.LBB0_36:                               # =>This Inner Loop Header: Depth=1
	sw	zero, 0(a2)
	lw	a5, %lo(number_of_slices)(a4)
	addi	a3, a3, 1
	addi	a2, a2, 4
	blt	a3, a5, .LBB0_36
# %bb.37:
	blez	a5, .LBB0_41
# %bb.38:
	ld	a1, 0(a1)
	ld	a1, 24(a1)
	li	a2, 0
	lui	a3, %hi(number_of_slices)
.LBB0_39:                               # =>This Inner Loop Header: Depth=1
	sw	zero, 0(a1)
	lw	a4, %lo(number_of_slices)(a3)
	addi	a2, a2, 1
	addi	a1, a1, 4
	blt	a2, a4, .LBB0_39
# %bb.40:
	sgtz	a1, a4
	bnez	a1, .LBB0_42
	j	.LBB0_54
.LBB0_41:
	beqz	zero, .LBB0_54
.LBB0_42:
	ld	a0, %lo(initialized)(a0)
	ld	a1, 8(a0)
	ld	a1, 0(a1)
	li	a2, 0
	lui	a3, %hi(number_of_slices)
.LBB0_43:                               # =>This Inner Loop Header: Depth=1
	sw	zero, 0(a1)
	lw	a4, %lo(number_of_slices)(a3)
	addi	a2, a2, 1
	addi	a1, a1, 4
	blt	a2, a4, .LBB0_43
# %bb.44:
	blez	a4, .LBB0_54
# %bb.45:
	ld	a1, 8(a0)
	ld	a1, 8(a1)
	li	a2, 0
	lui	a3, %hi(number_of_slices)
.LBB0_46:                               # =>This Inner Loop Header: Depth=1
	sw	zero, 0(a1)
	lw	a4, %lo(number_of_slices)(a3)
	addi	a2, a2, 1
	addi	a1, a1, 4
	blt	a2, a4, .LBB0_46
# %bb.47:
	blez	a4, .LBB0_54
# %bb.48:
	ld	a1, 8(a0)
	ld	a1, 16(a1)
	li	a2, 0
	lui	a3, %hi(number_of_slices)
.LBB0_49:                               # =>This Inner Loop Header: Depth=1
	sw	zero, 0(a1)
	lw	a4, %lo(number_of_slices)(a3)
	addi	a2, a2, 1
	addi	a1, a1, 4
	blt	a2, a4, .LBB0_49
# %bb.50:
	blez	a4, .LBB0_54
# %bb.51:
	ld	a0, 8(a0)
	ld	a0, 24(a0)
	li	a1, 0
	lui	a2, %hi(number_of_slices)
.LBB0_52:                               # =>This Inner Loop Header: Depth=1
	sw	zero, 0(a0)
	lw	a3, %lo(number_of_slices)(a2)
	addi	a1, a1, 1
	addi	a0, a0, 4
	blt	a1, a3, .LBB0_52
# %bb.53:
	sgtz	a0, a3
	beqz	a0, .LBB0_66
	j	.LBB0_55
.LBB0_54:
	beqz	zero, .LBB0_66
.LBB0_55:
	lui	a0, %hi(initialized)
	ld	a0, %lo(initialized)(a0)
	ld	a1, 16(a0)
	ld	a1, 0(a1)
	li	a2, 0
	lui	a3, %hi(number_of_slices)
.LBB0_56:                               # =>This Inner Loop Header: Depth=1
	sw	zero, 0(a1)
	lw	a4, %lo(number_of_slices)(a3)
	addi	a2, a2, 1
	addi	a1, a1, 4
	blt	a2, a4, .LBB0_56
# %bb.57:
	blez	a4, .LBB0_66
# %bb.58:
	ld	a1, 16(a0)
	ld	a1, 8(a1)
	li	a2, 0
	lui	a3, %hi(number_of_slices)
.LBB0_59:                               # =>This Inner Loop Header: Depth=1
	sw	zero, 0(a1)
	lw	a4, %lo(number_of_slices)(a3)
	addi	a2, a2, 1
	addi	a1, a1, 4
	blt	a2, a4, .LBB0_59
# %bb.60:
	blez	a4, .LBB0_66
# %bb.61:
	ld	a1, 16(a0)
	ld	a1, 16(a1)
	li	a2, 0
	lui	a3, %hi(number_of_slices)
.LBB0_62:                               # =>This Inner Loop Header: Depth=1
	sw	zero, 0(a1)
	lw	a4, %lo(number_of_slices)(a3)
	addi	a2, a2, 1
	addi	a1, a1, 4
	blt	a2, a4, .LBB0_62
# %bb.63:
	blez	a4, .LBB0_66
# %bb.64:
	ld	a0, 16(a0)
	ld	a0, 24(a0)
	li	a1, 0
	lui	a2, %hi(number_of_slices)
.LBB0_65:                               # =>This Inner Loop Header: Depth=1
	sw	zero, 0(a0)
	lw	a3, %lo(number_of_slices)(a2)
	addi	a1, a1, 1
	addi	a0, a0, 4
	blt	a1, a3, .LBB0_65
.LBB0_66:
	lui	s0, %hi(entropy)
	addi	s0, s0, %lo(entropy)
	addi	s1, s0, 1016
	lui	a0, %hi(.LCPI0_0)
	fld	fs0, %lo(.LCPI0_0)(a0)
	lui	a0, %hi(.LCPI0_1)
	fld	fs1, %lo(.LCPI0_1)(a0)
	lui	s2, %hi(probability)
	addi	s2, s2, %lo(probability)
	addi	s3, s2, 1016
	addi	s4, s0, 512
.LBB0_67:                               # =>This Inner Loop Header: Depth=1
	fld	fa5, 0(s3)
	fsub.d	fa0, fs0, fa5
	fsd	fa0, 0(s2)
	call	log10
	fld	fa5, 0(s3)
	fdiv.d	fa4, fa0, fs1
	fsd	fa4, 0(s0)
	fmv.d	fa0, fa5
	call	log10
	fdiv.d	fa5, fa0, fs1
	fsd	fa5, 0(s1)
	addi	s0, s0, 8
	addi	s2, s2, 8
	addi	s1, s1, -8
	addi	s3, s3, -8
	bne	s0, s4, .LBB0_67
# %bb.68:
	ld	ra, 88(sp)                      # 8-byte Folded Reload
	ld	s0, 80(sp)                      # 8-byte Folded Reload
	ld	s1, 72(sp)                      # 8-byte Folded Reload
	ld	s2, 64(sp)                      # 8-byte Folded Reload
	ld	s3, 56(sp)                      # 8-byte Folded Reload
	ld	s4, 48(sp)                      # 8-byte Folded Reload
	ld	s5, 40(sp)                      # 8-byte Folded Reload
	ld	s6, 32(sp)                      # 8-byte Folded Reload
	ld	s7, 24(sp)                      # 8-byte Folded Reload
	fld	fs0, 16(sp)                     # 8-byte Folded Reload
	fld	fs1, 8(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 96
	ret
.Lfunc_end0:
	.size	create_context_memory, .Lfunc_end0-create_context_memory
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	free_context_memory             # -- Begin function free_context_memory
	.p2align	2
	.type	free_context_memory,@function
free_context_memory:                    # @free_context_memory
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	li	s0, 0
	lui	s1, %hi(initialized)
	lui	s2, %hi(model_number)
	li	s3, 24
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	ld	a0, %lo(initialized)(s1)
	add	a0, a0, s0
	ld	a0, 0(a0)
	ld	a0, 0(a0)
	call	free
	ld	a0, %lo(model_number)(s2)
	add	a0, a0, s0
	ld	a0, 0(a0)
	ld	a0, 0(a0)
	call	free
	ld	a0, %lo(initialized)(s1)
	add	a0, a0, s0
	ld	a0, 0(a0)
	ld	a0, 8(a0)
	call	free
	ld	a0, %lo(model_number)(s2)
	add	a0, a0, s0
	ld	a0, 0(a0)
	ld	a0, 8(a0)
	call	free
	ld	a0, %lo(initialized)(s1)
	add	a0, a0, s0
	ld	a0, 0(a0)
	ld	a0, 16(a0)
	call	free
	ld	a0, %lo(model_number)(s2)
	add	a0, a0, s0
	ld	a0, 0(a0)
	ld	a0, 16(a0)
	call	free
	ld	a0, %lo(initialized)(s1)
	add	a0, a0, s0
	ld	a0, 0(a0)
	ld	a0, 24(a0)
	call	free
	ld	a0, %lo(model_number)(s2)
	add	a0, a0, s0
	ld	a0, 0(a0)
	ld	a0, 24(a0)
	call	free
	ld	a0, %lo(initialized)(s1)
	add	a0, a0, s0
	ld	a0, 0(a0)
	call	free
	ld	a0, %lo(model_number)(s2)
	add	a0, a0, s0
	ld	a0, 0(a0)
	call	free
	addi	s0, s0, 8
	bne	s0, s3, .LBB1_1
# %bb.2:
	lui	a0, %hi(initialized)
	ld	a0, %lo(initialized)(a0)
	call	free
	lui	a0, %hi(model_number)
	ld	a0, %lo(model_number)(a0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	tail	free
.Lfunc_end1:
	.size	free_context_memory, .Lfunc_end1-free_context_memory
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	SetCtxModelNumber               # -- Begin function SetCtxModelNumber
	.p2align	2
	.type	SetCtxModelNumber,@function
SetCtxModelNumber:                      # @SetCtxModelNumber
# %bb.0:
	lui	a0, %hi(img)
	ld	a2, %lo(img)(a0)
	lw	a1, 24(a2)
	lui	a0, 22
	addiw	a0, a0, 152
	li	a3, 2
	add	a0, a2, a0
	bne	a1, a3, .LBB2_2
.LBB2_1:
	sw	zero, 80(a0)
	ret
.LBB2_2:
	lui	a3, %hi(input)
	ld	a3, %lo(input)(a3)
	addi	a3, a3, 2047
	lw	a4, 1837(a3)
	beqz	a4, .LBB2_5
# %bb.3:
	lui	a3, 8
	add	a2, a2, a3
	lw	a3, 0(a0)
	ld	a2, -1200(a2)
	lui	a4, %hi(initialized)
	ld	a4, %lo(initialized)(a4)
	lw	a5, 12(a2)
	slli	a2, a3, 3
	add	a4, a4, a2
	ld	a3, 0(a4)
	lui	a4, %hi(num_mb_per_slice)
	lw	a4, %lo(num_mb_per_slice)(a4)
	slli	a1, a1, 3
	add	a3, a3, a1
	ld	a3, 0(a3)
	divw	a5, a5, a4
	slli	a4, a5, 2
	add	a6, a3, a4
	lw	a6, 0(a6)
	beqz	a6, .LBB2_6
.LBB2_4:
	lui	a3, %hi(model_number)
	ld	a3, %lo(model_number)(a3)
	add	a2, a3, a2
	ld	a2, 0(a2)
	add	a1, a2, a1
	ld	a1, 0(a1)
	add	a1, a1, a4
	lw	a1, 0(a1)
	sw	a1, 80(a0)
	ret
.LBB2_5:
	lw	a1, 1841(a3)
	sw	a1, 80(a0)
	ret
.LBB2_6:
	beqz	a5, .LBB2_1
# %bb.7:
	addiw	a4, a5, -1
	slli	a4, a4, 2
	add	a3, a3, a4
	lw	a3, 0(a3)
	bnez	a3, .LBB2_4
	j	.LBB2_1
.Lfunc_end2:
	.size	SetCtxModelNumber, .Lfunc_end2-SetCtxModelNumber
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	init_contexts                   # -- Begin function init_contexts
	.p2align	2
	.type	init_contexts,@function
init_contexts:                          # @init_contexts
# %bb.0:
	addi	sp, sp, -128
	sd	ra, 120(sp)                     # 8-byte Folded Spill
	sd	s0, 112(sp)                     # 8-byte Folded Spill
	sd	s1, 104(sp)                     # 8-byte Folded Spill
	sd	s2, 96(sp)                      # 8-byte Folded Spill
	sd	s3, 88(sp)                      # 8-byte Folded Spill
	sd	s4, 80(sp)                      # 8-byte Folded Spill
	sd	s5, 72(sp)                      # 8-byte Folded Spill
	sd	s6, 64(sp)                      # 8-byte Folded Spill
	sd	s7, 56(sp)                      # 8-byte Folded Spill
	sd	s8, 48(sp)                      # 8-byte Folded Spill
	sd	s9, 40(sp)                      # 8-byte Folded Spill
	sd	s10, 32(sp)                     # 8-byte Folded Spill
	sd	s11, 24(sp)                     # 8-byte Folded Spill
	lui	s2, %hi(img)
	ld	a1, %lo(img)(s2)
	lui	a0, 8
	add	a0, a1, a0
	ld	a0, -1200(a0)
	lui	s3, 22
	add	a2, a1, s3
	lw	a2, 232(a2)
	ld	s1, 32(a0)
	lw	a3, 24(a1)
	li	s6, 264
	mul	a1, a2, s6
	lui	s5, %hi(INIT_MB_TYPE_I)
	addi	s5, s5, %lo(INIT_MB_TYPE_I)
	li	s4, 2
	lui	s7, %hi(INIT_MB_TYPE_P)
	addi	s7, s7, %lo(INIT_MB_TYPE_P)
	mv	a2, s5
	beq	a3, s4, .LBB3_2
# %bb.1:
	mv	a2, s7
.LBB3_2:
	ld	a0, 40(a0)
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	add	a1, a2, a1
	mv	a0, s1
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 16
	mul	a1, a1, s6
	mv	a2, s5
	beq	a3, s4, .LBB3_4
# %bb.3:
	mv	a2, s7
.LBB3_4:
	add	a1, a2, a1
	addi	a1, a1, 8
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 32
	mul	a1, a1, s6
	mv	a2, s5
	beq	a3, s4, .LBB3_6
# %bb.5:
	mv	a2, s7
.LBB3_6:
	add	a1, a2, a1
	addi	a1, a1, 16
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 48
	mul	a1, a1, s6
	mv	a2, s5
	beq	a3, s4, .LBB3_8
# %bb.7:
	mv	a2, s7
.LBB3_8:
	add	a1, a2, a1
	addi	a1, a1, 24
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 64
	mul	a1, a1, s6
	mv	a2, s5
	beq	a3, s4, .LBB3_10
# %bb.9:
	mv	a2, s7
.LBB3_10:
	add	a1, a2, a1
	addi	a1, a1, 32
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 80
	mul	a1, a1, s6
	mv	a2, s5
	beq	a3, s4, .LBB3_12
# %bb.11:
	mv	a2, s7
.LBB3_12:
	add	a1, a2, a1
	addi	a1, a1, 40
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 96
	mul	a1, a1, s6
	mv	a2, s5
	beq	a3, s4, .LBB3_14
# %bb.13:
	mv	a2, s7
.LBB3_14:
	add	a1, a2, a1
	addi	a1, a1, 48
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 112
	mul	a1, a1, s6
	mv	a2, s5
	beq	a3, s4, .LBB3_16
# %bb.15:
	mv	a2, s7
.LBB3_16:
	add	a1, a2, a1
	addi	a1, a1, 56
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 128
	mul	a1, a1, s6
	mv	a2, s5
	beq	a3, s4, .LBB3_18
# %bb.17:
	mv	a2, s7
.LBB3_18:
	add	a1, a2, a1
	addi	a1, a1, 64
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 144
	mul	a1, a1, s6
	mv	a2, s5
	beq	a3, s4, .LBB3_20
# %bb.19:
	mv	a2, s7
.LBB3_20:
	add	a1, a2, a1
	addi	a1, a1, 72
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 160
	mul	a1, a1, s6
	mv	a2, s5
	beq	a3, s4, .LBB3_22
# %bb.21:
	mv	a2, s7
.LBB3_22:
	add	a1, a2, a1
	addi	a1, a1, 80
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 176
	mul	a1, a1, s6
	mv	a2, s5
	beq	a3, s4, .LBB3_24
# %bb.23:
	mv	a2, s7
.LBB3_24:
	add	a1, a2, a1
	addi	a1, a1, 88
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 192
	mul	a1, a1, s6
	mv	a2, s5
	beq	a3, s4, .LBB3_26
# %bb.25:
	mv	a2, s7
.LBB3_26:
	add	a1, a2, a1
	addi	a1, a1, 96
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 208
	mul	a1, a1, s6
	mv	a2, s5
	beq	a3, s4, .LBB3_28
# %bb.27:
	mv	a2, s7
.LBB3_28:
	add	a1, a2, a1
	addi	a1, a1, 104
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 224
	mul	a1, a1, s6
	mv	a2, s5
	beq	a3, s4, .LBB3_30
# %bb.29:
	mv	a2, s7
.LBB3_30:
	add	a1, a2, a1
	addi	a1, a1, 112
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 240
	mul	a1, a1, s6
	mv	a2, s5
	beq	a3, s4, .LBB3_32
# %bb.31:
	mv	a2, s7
.LBB3_32:
	add	a1, a2, a1
	addi	a1, a1, 120
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 256
	mul	a1, a1, s6
	mv	a2, s5
	beq	a3, s4, .LBB3_34
# %bb.33:
	mv	a2, s7
.LBB3_34:
	add	a1, a2, a1
	addi	a1, a1, 128
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 272
	mul	a1, a1, s6
	mv	a2, s5
	beq	a3, s4, .LBB3_36
# %bb.35:
	mv	a2, s7
.LBB3_36:
	add	a1, a2, a1
	addi	a1, a1, 136
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 288
	mul	a1, a1, s6
	mv	a2, s5
	beq	a3, s4, .LBB3_38
# %bb.37:
	mv	a2, s7
.LBB3_38:
	add	a1, a2, a1
	addi	a1, a1, 144
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 304
	mul	a1, a1, s6
	mv	a2, s5
	beq	a3, s4, .LBB3_40
# %bb.39:
	mv	a2, s7
.LBB3_40:
	add	a1, a2, a1
	addi	a1, a1, 152
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 320
	mul	a1, a1, s6
	mv	a2, s5
	beq	a3, s4, .LBB3_42
# %bb.41:
	mv	a2, s7
.LBB3_42:
	add	a1, a2, a1
	addi	a1, a1, 160
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 336
	mul	a1, a1, s6
	mv	a2, s5
	beq	a3, s4, .LBB3_44
# %bb.43:
	mv	a2, s7
.LBB3_44:
	add	a1, a2, a1
	addi	a1, a1, 168
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 352
	mul	a1, a1, s6
	mv	a2, s5
	beq	a3, s4, .LBB3_46
# %bb.45:
	mv	a2, s7
.LBB3_46:
	add	a1, a2, a1
	addi	a1, a1, 176
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 368
	mul	a1, a1, s6
	mv	a2, s5
	beq	a3, s4, .LBB3_48
# %bb.47:
	mv	a2, s7
.LBB3_48:
	add	a1, a2, a1
	addi	a1, a1, 184
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 384
	mul	a1, a1, s6
	mv	a2, s5
	beq	a3, s4, .LBB3_50
# %bb.49:
	mv	a2, s7
.LBB3_50:
	add	a1, a2, a1
	addi	a1, a1, 192
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 400
	mul	a1, a1, s6
	mv	a2, s5
	beq	a3, s4, .LBB3_52
# %bb.51:
	mv	a2, s7
.LBB3_52:
	add	a1, a2, a1
	addi	a1, a1, 200
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 416
	mul	a1, a1, s6
	mv	a2, s5
	beq	a3, s4, .LBB3_54
# %bb.53:
	mv	a2, s7
.LBB3_54:
	add	a1, a2, a1
	addi	a1, a1, 208
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 432
	mul	a1, a1, s6
	mv	a2, s5
	beq	a3, s4, .LBB3_56
# %bb.55:
	mv	a2, s7
.LBB3_56:
	add	a1, a2, a1
	addi	a1, a1, 216
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 448
	mul	a1, a1, s6
	mv	a2, s5
	beq	a3, s4, .LBB3_58
# %bb.57:
	mv	a2, s7
.LBB3_58:
	add	a1, a2, a1
	addi	a1, a1, 224
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 464
	mul	a1, a1, s6
	mv	a2, s5
	beq	a3, s4, .LBB3_60
# %bb.59:
	mv	a2, s7
.LBB3_60:
	add	a1, a2, a1
	addi	a1, a1, 232
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 480
	mul	a1, a1, s6
	mv	a2, s5
	beq	a3, s4, .LBB3_62
# %bb.61:
	mv	a2, s7
.LBB3_62:
	add	a1, a2, a1
	addi	a1, a1, 240
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 496
	mul	a1, a1, s6
	mv	a2, s5
	beq	a3, s4, .LBB3_64
# %bb.63:
	mv	a2, s7
.LBB3_64:
	add	a1, a2, a1
	addi	a1, a1, 248
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a2, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 512
	mul	a1, a1, s6
	beq	a2, s4, .LBB3_66
# %bb.65:
	mv	s5, s7
.LBB3_66:
	add	a1, s5, a1
	addi	a1, a1, 256
	call	biari_init_context
	ld	a1, %lo(img)(s2)
	add	a0, a1, s3
	lw	a2, 232(a0)
	addi	a0, s1, 528
	lw	a3, 24(a1)
	li	s7, 144
	mul	a1, a2, s7
	lui	s5, %hi(INIT_B8_TYPE_I)
	addi	s5, s5, %lo(INIT_B8_TYPE_I)
	lui	s6, %hi(INIT_B8_TYPE_P)
	addi	s6, s6, %lo(INIT_B8_TYPE_P)
	mv	a2, s5
	beq	a3, s4, .LBB3_68
# %bb.67:
	mv	a2, s6
.LBB3_68:
	add	a1, a2, a1
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 544
	mul	a1, a1, s7
	mv	a2, s5
	beq	a3, s4, .LBB3_70
# %bb.69:
	mv	a2, s6
.LBB3_70:
	add	a1, a2, a1
	addi	a1, a1, 8
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 560
	mul	a1, a1, s7
	mv	a2, s5
	beq	a3, s4, .LBB3_72
# %bb.71:
	mv	a2, s6
.LBB3_72:
	add	a1, a2, a1
	addi	a1, a1, 16
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 576
	mul	a1, a1, s7
	mv	a2, s5
	beq	a3, s4, .LBB3_74
# %bb.73:
	mv	a2, s6
.LBB3_74:
	add	a1, a2, a1
	addi	a1, a1, 24
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 592
	mul	a1, a1, s7
	mv	a2, s5
	beq	a3, s4, .LBB3_76
# %bb.75:
	mv	a2, s6
.LBB3_76:
	add	a1, a2, a1
	addi	a1, a1, 32
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 608
	mul	a1, a1, s7
	mv	a2, s5
	beq	a3, s4, .LBB3_78
# %bb.77:
	mv	a2, s6
.LBB3_78:
	add	a1, a2, a1
	addi	a1, a1, 40
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 624
	mul	a1, a1, s7
	mv	a2, s5
	beq	a3, s4, .LBB3_80
# %bb.79:
	mv	a2, s6
.LBB3_80:
	add	a1, a2, a1
	addi	a1, a1, 48
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 640
	mul	a1, a1, s7
	mv	a2, s5
	beq	a3, s4, .LBB3_82
# %bb.81:
	mv	a2, s6
.LBB3_82:
	add	a1, a2, a1
	addi	a1, a1, 56
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 656
	mul	a1, a1, s7
	mv	a2, s5
	beq	a3, s4, .LBB3_84
# %bb.83:
	mv	a2, s6
.LBB3_84:
	add	a1, a2, a1
	addi	a1, a1, 64
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 672
	mul	a1, a1, s7
	mv	a2, s5
	beq	a3, s4, .LBB3_86
# %bb.85:
	mv	a2, s6
.LBB3_86:
	add	a1, a2, a1
	addi	a1, a1, 72
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 688
	mul	a1, a1, s7
	mv	a2, s5
	beq	a3, s4, .LBB3_88
# %bb.87:
	mv	a2, s6
.LBB3_88:
	add	a1, a2, a1
	addi	a1, a1, 80
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 704
	mul	a1, a1, s7
	mv	a2, s5
	beq	a3, s4, .LBB3_90
# %bb.89:
	mv	a2, s6
.LBB3_90:
	add	a1, a2, a1
	addi	a1, a1, 88
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 720
	mul	a1, a1, s7
	mv	a2, s5
	beq	a3, s4, .LBB3_92
# %bb.91:
	mv	a2, s6
.LBB3_92:
	add	a1, a2, a1
	addi	a1, a1, 96
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 736
	mul	a1, a1, s7
	mv	a2, s5
	beq	a3, s4, .LBB3_94
# %bb.93:
	mv	a2, s6
.LBB3_94:
	add	a1, a2, a1
	addi	a1, a1, 104
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 752
	mul	a1, a1, s7
	mv	a2, s5
	beq	a3, s4, .LBB3_96
# %bb.95:
	mv	a2, s6
.LBB3_96:
	add	a1, a2, a1
	addi	a1, a1, 112
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 768
	mul	a1, a1, s7
	mv	a2, s5
	beq	a3, s4, .LBB3_98
# %bb.97:
	mv	a2, s6
.LBB3_98:
	add	a1, a2, a1
	addi	a1, a1, 120
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 784
	mul	a1, a1, s7
	mv	a2, s5
	beq	a3, s4, .LBB3_100
# %bb.99:
	mv	a2, s6
.LBB3_100:
	add	a1, a2, a1
	addi	a1, a1, 128
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a2, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 800
	mul	a1, a1, s7
	beq	a2, s4, .LBB3_102
# %bb.101:
	mv	s5, s6
.LBB3_102:
	add	a1, s5, a1
	addi	a1, a1, 136
	call	biari_init_context
	ld	a1, %lo(img)(s2)
	add	a0, a1, s3
	lw	a2, 232(a0)
	addi	a0, s1, 816
	lw	a3, 24(a1)
	li	s7, 160
	mul	a1, a2, s7
	lui	s5, %hi(INIT_MV_RES_I)
	addi	s5, s5, %lo(INIT_MV_RES_I)
	lui	s6, %hi(INIT_MV_RES_P)
	addi	s6, s6, %lo(INIT_MV_RES_P)
	mv	a2, s5
	beq	a3, s4, .LBB3_104
# %bb.103:
	mv	a2, s6
.LBB3_104:
	add	a1, a2, a1
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 832
	mul	a1, a1, s7
	mv	a2, s5
	beq	a3, s4, .LBB3_106
# %bb.105:
	mv	a2, s6
.LBB3_106:
	add	a1, a2, a1
	addi	a1, a1, 8
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 848
	mul	a1, a1, s7
	mv	a2, s5
	beq	a3, s4, .LBB3_108
# %bb.107:
	mv	a2, s6
.LBB3_108:
	add	a1, a2, a1
	addi	a1, a1, 16
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 864
	mul	a1, a1, s7
	mv	a2, s5
	beq	a3, s4, .LBB3_110
# %bb.109:
	mv	a2, s6
.LBB3_110:
	add	a1, a2, a1
	addi	a1, a1, 24
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 880
	mul	a1, a1, s7
	mv	a2, s5
	beq	a3, s4, .LBB3_112
# %bb.111:
	mv	a2, s6
.LBB3_112:
	add	a1, a2, a1
	addi	a1, a1, 32
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 896
	mul	a1, a1, s7
	mv	a2, s5
	beq	a3, s4, .LBB3_114
# %bb.113:
	mv	a2, s6
.LBB3_114:
	add	a1, a2, a1
	addi	a1, a1, 40
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 912
	mul	a1, a1, s7
	mv	a2, s5
	beq	a3, s4, .LBB3_116
# %bb.115:
	mv	a2, s6
.LBB3_116:
	add	a1, a2, a1
	addi	a1, a1, 48
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 928
	mul	a1, a1, s7
	mv	a2, s5
	beq	a3, s4, .LBB3_118
# %bb.117:
	mv	a2, s6
.LBB3_118:
	add	a1, a2, a1
	addi	a1, a1, 56
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 944
	mul	a1, a1, s7
	mv	a2, s5
	beq	a3, s4, .LBB3_120
# %bb.119:
	mv	a2, s6
.LBB3_120:
	add	a1, a2, a1
	addi	a1, a1, 64
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 960
	mul	a1, a1, s7
	mv	a2, s5
	beq	a3, s4, .LBB3_122
# %bb.121:
	mv	a2, s6
.LBB3_122:
	add	a1, a2, a1
	addi	a1, a1, 72
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 976
	mul	a1, a1, s7
	mv	a2, s5
	beq	a3, s4, .LBB3_124
# %bb.123:
	mv	a2, s6
.LBB3_124:
	add	a1, a2, a1
	addi	a1, a1, 80
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 992
	mul	a1, a1, s7
	mv	a2, s5
	beq	a3, s4, .LBB3_126
# %bb.125:
	mv	a2, s6
.LBB3_126:
	add	a1, a2, a1
	addi	a1, a1, 88
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 1008
	mul	a1, a1, s7
	mv	a2, s5
	beq	a3, s4, .LBB3_128
# %bb.127:
	mv	a2, s6
.LBB3_128:
	add	a1, a2, a1
	addi	a1, a1, 96
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 1024
	mul	a1, a1, s7
	mv	a2, s5
	beq	a3, s4, .LBB3_130
# %bb.129:
	mv	a2, s6
.LBB3_130:
	add	a1, a2, a1
	addi	a1, a1, 104
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 1040
	mul	a1, a1, s7
	mv	a2, s5
	beq	a3, s4, .LBB3_132
# %bb.131:
	mv	a2, s6
.LBB3_132:
	add	a1, a2, a1
	addi	a1, a1, 112
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 1056
	mul	a1, a1, s7
	mv	a2, s5
	beq	a3, s4, .LBB3_134
# %bb.133:
	mv	a2, s6
.LBB3_134:
	add	a1, a2, a1
	addi	a1, a1, 120
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 1072
	mul	a1, a1, s7
	mv	a2, s5
	beq	a3, s4, .LBB3_136
# %bb.135:
	mv	a2, s6
.LBB3_136:
	add	a1, a2, a1
	addi	a1, a1, 128
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 1088
	mul	a1, a1, s7
	mv	a2, s5
	beq	a3, s4, .LBB3_138
# %bb.137:
	mv	a2, s6
.LBB3_138:
	add	a1, a2, a1
	addi	a1, a1, 136
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 1104
	mul	a1, a1, s7
	mv	a2, s5
	beq	a3, s4, .LBB3_140
# %bb.139:
	mv	a2, s6
.LBB3_140:
	add	a1, a2, a1
	addi	a1, a1, 144
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a2, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 1120
	mul	a1, a1, s7
	beq	a2, s4, .LBB3_142
# %bb.141:
	mv	s5, s6
.LBB3_142:
	add	a1, s5, a1
	addi	a1, a1, 152
	call	biari_init_context
	ld	a1, %lo(img)(s2)
	add	a0, a1, s3
	lw	a2, 232(a0)
	addi	a0, s1, 1136
	lw	a3, 24(a1)
	li	s5, 96
	mul	a1, a2, s5
	lui	s6, %hi(INIT_REF_NO_I)
	addi	s6, s6, %lo(INIT_REF_NO_I)
	lui	s7, %hi(INIT_REF_NO_P)
	addi	s7, s7, %lo(INIT_REF_NO_P)
	mv	a2, s6
	beq	a3, s4, .LBB3_144
# %bb.143:
	mv	a2, s7
.LBB3_144:
	add	a1, a2, a1
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 1152
	mul	a1, a1, s5
	mv	a2, s6
	beq	a3, s4, .LBB3_146
# %bb.145:
	mv	a2, s7
.LBB3_146:
	add	a1, a2, a1
	addi	a1, a1, 8
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 1168
	mul	a1, a1, s5
	mv	a2, s6
	beq	a3, s4, .LBB3_148
# %bb.147:
	mv	a2, s7
.LBB3_148:
	add	a1, a2, a1
	addi	a1, a1, 16
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 1184
	mul	a1, a1, s5
	mv	a2, s6
	beq	a3, s4, .LBB3_150
# %bb.149:
	mv	a2, s7
.LBB3_150:
	add	a1, a2, a1
	addi	a1, a1, 24
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 1200
	mul	a1, a1, s5
	mv	a2, s6
	beq	a3, s4, .LBB3_152
# %bb.151:
	mv	a2, s7
.LBB3_152:
	add	a1, a2, a1
	addi	a1, a1, 32
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 1216
	mul	a1, a1, s5
	mv	a2, s6
	beq	a3, s4, .LBB3_154
# %bb.153:
	mv	a2, s7
.LBB3_154:
	add	a1, a2, a1
	addi	a1, a1, 40
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 1232
	mul	a1, a1, s5
	mv	a2, s6
	beq	a3, s4, .LBB3_156
# %bb.155:
	mv	a2, s7
.LBB3_156:
	add	a1, a2, a1
	addi	a1, a1, 48
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 1248
	mul	a1, a1, s5
	mv	a2, s6
	beq	a3, s4, .LBB3_158
# %bb.157:
	mv	a2, s7
.LBB3_158:
	add	a1, a2, a1
	addi	a1, a1, 56
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 1264
	mul	a1, a1, s5
	mv	a2, s6
	beq	a3, s4, .LBB3_160
# %bb.159:
	mv	a2, s7
.LBB3_160:
	add	a1, a2, a1
	addi	a1, a1, 64
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 1280
	mul	a1, a1, s5
	mv	a2, s6
	beq	a3, s4, .LBB3_162
# %bb.161:
	mv	a2, s7
.LBB3_162:
	add	a1, a2, a1
	addi	a1, a1, 72
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 1296
	mul	a1, a1, s5
	mv	a2, s6
	beq	a3, s4, .LBB3_164
# %bb.163:
	mv	a2, s7
.LBB3_164:
	add	a1, a2, a1
	addi	a1, a1, 80
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a2, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 1312
	mul	a1, a1, s5
	beq	a2, s4, .LBB3_166
# %bb.165:
	mv	s6, s7
.LBB3_166:
	add	a1, s6, a1
	addi	a1, a1, 88
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	add	a1, a0, s3
	lw	a1, 232(a1)
	lw	a3, 24(a0)
	addi	a0, s1, 1328
	slli	a1, a1, 5
	lui	s6, %hi(INIT_DELTA_QP_I)
	addi	s6, s6, %lo(INIT_DELTA_QP_I)
	lui	s7, %hi(INIT_DELTA_QP_P)
	addi	s7, s7, %lo(INIT_DELTA_QP_P)
	mv	a2, s6
	beq	a3, s4, .LBB3_168
# %bb.167:
	mv	a2, s7
.LBB3_168:
	add	a1, a2, a1
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 1344
	slli	a1, a1, 5
	mv	a2, s6
	beq	a3, s4, .LBB3_170
# %bb.169:
	mv	a2, s7
.LBB3_170:
	add	a1, a2, a1
	addi	a1, a1, 8
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 1360
	slli	a1, a1, 5
	mv	a2, s6
	beq	a3, s4, .LBB3_172
# %bb.171:
	mv	a2, s7
.LBB3_172:
	add	a1, a2, a1
	addi	a1, a1, 16
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a2, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 1376
	slli	a1, a1, 5
	beq	a2, s4, .LBB3_174
# %bb.173:
	mv	s6, s7
.LBB3_174:
	add	a1, s6, a1
	addi	a1, a1, 24
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	add	a1, a0, s3
	lw	a1, 232(a1)
	lw	a3, 24(a0)
	addi	a0, s1, 1392
	slli	a1, a1, 5
	lui	s6, %hi(INIT_MB_AFF_I)
	addi	s6, s6, %lo(INIT_MB_AFF_I)
	lui	s7, %hi(INIT_MB_AFF_P)
	addi	s7, s7, %lo(INIT_MB_AFF_P)
	mv	a2, s6
	beq	a3, s4, .LBB3_176
# %bb.175:
	mv	a2, s7
.LBB3_176:
	add	a1, a2, a1
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 1408
	slli	a1, a1, 5
	mv	a2, s6
	beq	a3, s4, .LBB3_178
# %bb.177:
	mv	a2, s7
.LBB3_178:
	add	a1, a2, a1
	addi	a1, a1, 8
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 1424
	slli	a1, a1, 5
	mv	a2, s6
	beq	a3, s4, .LBB3_180
# %bb.179:
	mv	a2, s7
.LBB3_180:
	add	a1, a2, a1
	addi	a1, a1, 16
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a2, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 1440
	slli	a1, a1, 5
	beq	a2, s4, .LBB3_182
# %bb.181:
	mv	s6, s7
.LBB3_182:
	add	a1, s6, a1
	addi	a1, a1, 24
	call	biari_init_context
	ld	a1, %lo(img)(s2)
	add	a0, a1, s3
	lw	a2, 232(a0)
	addi	a0, s1, 1456
	lw	a3, 24(a1)
	li	s7, 24
	mul	a1, a2, s7
	lui	s0, %hi(INIT_TRANSFORM_SIZE_I)
	addi	s0, s0, %lo(INIT_TRANSFORM_SIZE_I)
	lui	s6, %hi(INIT_TRANSFORM_SIZE_P)
	addi	s6, s6, %lo(INIT_TRANSFORM_SIZE_P)
	mv	a2, s0
	beq	a3, s4, .LBB3_184
# %bb.183:
	mv	a2, s6
.LBB3_184:
	add	a1, a2, a1
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 1472
	mul	a1, a1, s7
	mv	a2, s0
	beq	a3, s4, .LBB3_186
# %bb.185:
	mv	a2, s6
.LBB3_186:
	add	a1, a2, a1
	addi	a1, a1, 8
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a2, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s1, 1488
	mul	a1, a1, s7
	beq	a2, s4, .LBB3_188
# %bb.187:
	mv	s0, s6
.LBB3_188:
	add	a1, s0, a1
	addi	a1, a1, 16
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	add	a1, a0, s3
	lw	a1, 232(a1)
	lw	a2, 24(a0)
	slli	a1, a1, 4
	lui	s0, %hi(INIT_IPR_I)
	addi	s0, s0, %lo(INIT_IPR_I)
	lui	s1, %hi(INIT_IPR_P)
	addi	s1, s1, %lo(INIT_IPR_P)
	mv	a0, s0
	beq	a2, s4, .LBB3_190
# %bb.189:
	mv	a0, s1
.LBB3_190:
	add	a1, a0, a1
	ld	s6, 16(sp)                      # 8-byte Folded Reload
	mv	a0, s6
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a2, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	addi	a0, s6, 16
	slli	a1, a1, 4
	beq	a2, s4, .LBB3_192
# %bb.191:
	mv	s0, s1
.LBB3_192:
	add	a1, s0, a1
	addi	a1, a1, 8
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	add	a1, a0, s3
	lw	a1, 232(a1)
	lw	a3, 24(a0)
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	addi	a0, a0, 32
	slli	a1, a1, 5
	lui	s1, %hi(INIT_CIPR_I)
	addi	s1, s1, %lo(INIT_CIPR_I)
	lui	s6, %hi(INIT_CIPR_P)
	addi	s6, s6, %lo(INIT_CIPR_P)
	mv	a2, s1
	beq	a3, s4, .LBB3_194
# %bb.193:
	mv	a2, s6
.LBB3_194:
	add	a1, a2, a1
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	addi	a0, a0, 48
	slli	a1, a1, 5
	mv	a2, s1
	beq	a3, s4, .LBB3_196
# %bb.195:
	mv	a2, s6
.LBB3_196:
	add	a1, a2, a1
	addi	a1, a1, 8
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	addi	a0, a0, 64
	slli	a1, a1, 5
	mv	a2, s1
	beq	a3, s4, .LBB3_198
# %bb.197:
	mv	a2, s6
.LBB3_198:
	add	a1, a2, a1
	addi	a1, a1, 16
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a2, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	addi	a0, a0, 80
	slli	a1, a1, 5
	beq	a2, s4, .LBB3_200
# %bb.199:
	mv	s1, s6
.LBB3_200:
	add	a1, s1, a1
	addi	a1, a1, 24
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	add	a1, a0, s3
	lw	a1, 232(a1)
	lw	a3, 24(a0)
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	addi	a0, a0, 96
	mul	a1, a1, s5
	lui	s1, %hi(INIT_CBP_I)
	addi	s1, s1, %lo(INIT_CBP_I)
	lui	s6, %hi(INIT_CBP_P)
	addi	s6, s6, %lo(INIT_CBP_P)
	mv	a2, s1
	beq	a3, s4, .LBB3_202
# %bb.201:
	mv	a2, s6
.LBB3_202:
	add	a1, a2, a1
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	addi	a0, a0, 112
	mul	a1, a1, s5
	mv	a2, s1
	beq	a3, s4, .LBB3_204
# %bb.203:
	mv	a2, s6
.LBB3_204:
	add	a1, a2, a1
	addi	a1, a1, 8
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	addi	a0, a0, 128
	mul	a1, a1, s5
	mv	a2, s1
	beq	a3, s4, .LBB3_206
# %bb.205:
	mv	a2, s6
.LBB3_206:
	add	a1, a2, a1
	addi	a1, a1, 16
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	addi	a0, a0, 144
	mul	a1, a1, s5
	mv	a2, s1
	beq	a3, s4, .LBB3_208
# %bb.207:
	mv	a2, s6
.LBB3_208:
	add	a1, a2, a1
	addi	a1, a1, 24
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	addi	a0, a0, 160
	mul	a1, a1, s5
	mv	a2, s1
	beq	a3, s4, .LBB3_210
# %bb.209:
	mv	a2, s6
.LBB3_210:
	add	a1, a2, a1
	addi	a1, a1, 32
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	addi	a0, a0, 176
	mul	a1, a1, s5
	mv	a2, s1
	beq	a3, s4, .LBB3_212
# %bb.211:
	mv	a2, s6
.LBB3_212:
	add	a1, a2, a1
	addi	a1, a1, 40
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	addi	a0, a0, 192
	mul	a1, a1, s5
	mv	a2, s1
	beq	a3, s4, .LBB3_214
# %bb.213:
	mv	a2, s6
.LBB3_214:
	add	a1, a2, a1
	addi	a1, a1, 48
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	addi	a0, a0, 208
	mul	a1, a1, s5
	mv	a2, s1
	beq	a3, s4, .LBB3_216
# %bb.215:
	mv	a2, s6
.LBB3_216:
	add	a1, a2, a1
	addi	a1, a1, 56
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	addi	a0, a0, 224
	mul	a1, a1, s5
	mv	a2, s1
	beq	a3, s4, .LBB3_218
# %bb.217:
	mv	a2, s6
.LBB3_218:
	add	a1, a2, a1
	addi	a1, a1, 64
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	addi	a0, a0, 240
	mul	a1, a1, s5
	mv	a2, s1
	beq	a3, s4, .LBB3_220
# %bb.219:
	mv	a2, s6
.LBB3_220:
	add	a1, a2, a1
	addi	a1, a1, 72
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	addi	a0, a0, 256
	mul	a1, a1, s5
	mv	a2, s1
	beq	a3, s4, .LBB3_222
# %bb.221:
	mv	a2, s6
.LBB3_222:
	add	a1, a2, a1
	addi	a1, a1, 80
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a2, 24(a0)
	add	a0, a0, s3
	lw	a1, 232(a0)
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	addi	a0, a0, 272
	mul	a1, a1, s5
	beq	a2, s4, .LBB3_224
# %bb.223:
	mv	s1, s6
.LBB3_224:
	add	a1, s1, a1
	addi	a1, a1, 88
	call	biari_init_context
	li	s2, 0
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	addi	s1, a0, 336
	lui	s3, %hi(img)
	lui	s4, 22
	lui	s5, %hi(INIT_BCBP_I)
	addi	s5, s5, %lo(INIT_BCBP_I)
	lui	s6, %hi(INIT_BCBP_P)
	addi	s6, s6, %lo(INIT_BCBP_P)
	li	s7, 2
	li	s8, 320
	j	.LBB3_226
.LBB3_225:                              #   in Loop: Header=BB3_226 Depth=1
	slli	a0, a0, 8
	add	a1, a1, s2
	add	a0, a1, a0
	addi	a1, a0, 24
	mv	a0, s1
	call	biari_init_context
	addi	s2, s2, 32
	addi	s1, s1, 64
	beq	s2, s8, .LBB3_234
.LBB3_226:                              # =>This Inner Loop Header: Depth=1
	ld	a0, %lo(img)(s3)
	lw	a2, 24(a0)
	mv	a1, s5
	beq	a2, s7, .LBB3_228
# %bb.227:                              #   in Loop: Header=BB3_226 Depth=1
	mv	a1, s6
.LBB3_228:                              #   in Loop: Header=BB3_226 Depth=1
	add	a0, a0, s4
	lw	a2, 232(a0)
	addi	a0, s1, -48
	slli	a2, a2, 8
	add	a1, a1, s2
	add	a1, a1, a2
	call	biari_init_context
	ld	a0, %lo(img)(s3)
	lw	a2, 24(a0)
	mv	a1, s5
	beq	a2, s7, .LBB3_230
# %bb.229:                              #   in Loop: Header=BB3_226 Depth=1
	mv	a1, s6
.LBB3_230:                              #   in Loop: Header=BB3_226 Depth=1
	add	a0, a0, s4
	lw	a2, 232(a0)
	addi	a0, s1, -32
	slli	a2, a2, 8
	add	a1, a1, s2
	add	a1, a1, a2
	addi	a1, a1, 8
	call	biari_init_context
	ld	a0, %lo(img)(s3)
	lw	a3, 24(a0)
	add	a0, a0, s4
	lw	a1, 232(a0)
	mv	a2, s5
	beq	a3, s7, .LBB3_232
# %bb.231:                              #   in Loop: Header=BB3_226 Depth=1
	mv	a2, s6
.LBB3_232:                              #   in Loop: Header=BB3_226 Depth=1
	addi	a0, s1, -16
	slli	a1, a1, 8
	add	a2, a2, s2
	add	a1, a2, a1
	addi	a1, a1, 16
	call	biari_init_context
	ld	a0, %lo(img)(s3)
	lw	a2, 24(a0)
	add	a0, a0, s4
	lw	a0, 232(a0)
	mv	a1, s5
	beq	a2, s7, .LBB3_225
# %bb.233:                              #   in Loop: Header=BB3_226 Depth=1
	mv	a1, s6
	j	.LBB3_225
.LBB3_234:
	li	s2, 0
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	addi	s3, a0, 928
	lui	s11, %hi(INIT_MAP_P)
	addi	s11, s11, %lo(INIT_MAP_P)
	lui	s6, %hi(INIT_MAP_I)
	addi	s6, s6, %lo(INIT_MAP_I)
	lui	s7, %hi(img)
	lui	s8, 22
	li	s9, 960
	li	s10, 2
	j	.LBB3_236
.LBB3_235:                              #   in Loop: Header=BB3_236 Depth=1
	addi	s2, s2, 1
	addi	s11, s11, 120
	addi	s6, s6, 120
	addi	s3, s3, 240
	li	a0, 10
	beq	s2, a0, .LBB3_240
.LBB3_236:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_238 Depth 2
	li	a0, 240
	mul	a0, s2, a0
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	add	a0, a0, a1
	addi	s0, a0, 1168
	mv	s1, s3
	mv	s5, s6
	mv	s4, s11
	j	.LBB3_238
.LBB3_237:                              #   in Loop: Header=BB3_238 Depth=2
	add	a0, a0, s8
	lw	a0, 232(a0)
	mul	a0, a0, s9
	add	a1, a1, a0
	mv	a0, s1
	call	biari_init_context
	addi	s4, s4, 8
	addi	s1, s1, 16
	addi	s5, s5, 8
	beq	s1, s0, .LBB3_235
.LBB3_238:                              #   Parent Loop BB3_236 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, %lo(img)(s7)
	lw	a2, 24(a0)
	mv	a1, s5
	beq	a2, s10, .LBB3_237
# %bb.239:                              #   in Loop: Header=BB3_238 Depth=2
	mv	a1, s4
	j	.LBB3_237
.LBB3_240:
	li	s2, 0
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	addi	a0, a0, 2047
	addi	s3, a0, 1281
	lui	s11, %hi(INIT_LAST_P)
	addi	s11, s11, %lo(INIT_LAST_P)
	lui	s6, %hi(INIT_LAST_I)
	addi	s6, s6, %lo(INIT_LAST_I)
	lui	s7, %hi(img)
	lui	s8, 22
	li	s9, 960
	li	s10, 2
	j	.LBB3_242
.LBB3_241:                              #   in Loop: Header=BB3_242 Depth=1
	addi	s2, s2, 1
	addi	s11, s11, 120
	addi	s6, s6, 120
	addi	s3, s3, 240
	li	a0, 10
	beq	s2, a0, .LBB3_246
.LBB3_242:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_244 Depth 2
	li	a0, 240
	mul	a0, s2, a0
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	add	a0, a0, a1
	addi	a0, a0, 2047
	addi	s0, a0, 1521
	mv	s1, s3
	mv	s5, s6
	mv	s4, s11
	j	.LBB3_244
.LBB3_243:                              #   in Loop: Header=BB3_244 Depth=2
	add	a0, a0, s8
	lw	a0, 232(a0)
	mul	a0, a0, s9
	add	a1, a1, a0
	mv	a0, s1
	call	biari_init_context
	addi	s4, s4, 8
	addi	s1, s1, 16
	addi	s5, s5, 8
	beq	s1, s0, .LBB3_241
.LBB3_244:                              #   Parent Loop BB3_242 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, %lo(img)(s7)
	lw	a2, 24(a0)
	mv	a1, s5
	beq	a2, s10, .LBB3_243
# %bb.245:                              #   in Loop: Header=BB3_244 Depth=2
	mv	a1, s4
	j	.LBB3_243
.LBB3_246:
	li	s2, 0
	lui	a0, 1
	addiw	s1, a0, 1696
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	add	s1, a0, s1
	lui	s3, %hi(img)
	lui	s4, 22
	li	s5, 320
	lui	s6, %hi(INIT_ONE_I)
	addi	s6, s6, %lo(INIT_ONE_I)
	lui	s7, %hi(INIT_ONE_P)
	addi	s7, s7, %lo(INIT_ONE_P)
	li	s8, 2
	li	s9, 400
	j	.LBB3_248
.LBB3_247:                              #   in Loop: Header=BB3_248 Depth=1
	mul	a0, a0, s5
	add	a1, a1, s2
	add	a0, a1, a0
	addi	a1, a0, 32
	mv	a0, s1
	call	biari_init_context
	addi	s2, s2, 40
	addi	s1, s1, 80
	beq	s2, s9, .LBB3_258
.LBB3_248:                              # =>This Inner Loop Header: Depth=1
	ld	a0, %lo(img)(s3)
	lw	a2, 24(a0)
	mv	a1, s6
	beq	a2, s8, .LBB3_250
# %bb.249:                              #   in Loop: Header=BB3_248 Depth=1
	mv	a1, s7
.LBB3_250:                              #   in Loop: Header=BB3_248 Depth=1
	add	a0, a0, s4
	lw	a2, 232(a0)
	addi	a0, s1, -64
	mul	a2, a2, s5
	add	a1, a1, s2
	add	a1, a1, a2
	call	biari_init_context
	ld	a0, %lo(img)(s3)
	lw	a2, 24(a0)
	mv	a1, s6
	beq	a2, s8, .LBB3_252
# %bb.251:                              #   in Loop: Header=BB3_248 Depth=1
	mv	a1, s7
.LBB3_252:                              #   in Loop: Header=BB3_248 Depth=1
	add	a0, a0, s4
	lw	a2, 232(a0)
	addi	a0, s1, -48
	mul	a2, a2, s5
	add	a1, a1, s2
	add	a1, a1, a2
	addi	a1, a1, 8
	call	biari_init_context
	ld	a0, %lo(img)(s3)
	lw	a3, 24(a0)
	add	a0, a0, s4
	lw	a1, 232(a0)
	mv	a2, s6
	beq	a3, s8, .LBB3_254
# %bb.253:                              #   in Loop: Header=BB3_248 Depth=1
	mv	a2, s7
.LBB3_254:                              #   in Loop: Header=BB3_248 Depth=1
	addi	a0, s1, -32
	mul	a1, a1, s5
	add	a2, a2, s2
	add	a1, a2, a1
	addi	a1, a1, 16
	call	biari_init_context
	ld	a0, %lo(img)(s3)
	lw	a3, 24(a0)
	add	a0, a0, s4
	lw	a1, 232(a0)
	mv	a2, s6
	beq	a3, s8, .LBB3_256
# %bb.255:                              #   in Loop: Header=BB3_248 Depth=1
	mv	a2, s7
.LBB3_256:                              #   in Loop: Header=BB3_248 Depth=1
	addi	a0, s1, -16
	mul	a1, a1, s5
	add	a2, a2, s2
	add	a1, a2, a1
	addi	a1, a1, 24
	call	biari_init_context
	ld	a0, %lo(img)(s3)
	lw	a2, 24(a0)
	add	a0, a0, s4
	lw	a0, 232(a0)
	mv	a1, s6
	beq	a2, s8, .LBB3_247
# %bb.257:                              #   in Loop: Header=BB3_248 Depth=1
	mv	a1, s7
	j	.LBB3_247
.LBB3_258:
	li	s2, 0
	lui	a0, 2
	addiw	s1, a0, -1600
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	add	s1, a0, s1
	lui	s3, %hi(img)
	lui	s4, 22
	li	s5, 320
	lui	s6, %hi(INIT_ABS_I)
	addi	s6, s6, %lo(INIT_ABS_I)
	lui	s7, %hi(INIT_ABS_P)
	addi	s7, s7, %lo(INIT_ABS_P)
	li	s8, 2
	li	s9, 400
	j	.LBB3_260
.LBB3_259:                              #   in Loop: Header=BB3_260 Depth=1
	mul	a0, a0, s5
	add	a1, a1, s2
	add	a0, a1, a0
	addi	a1, a0, 32
	mv	a0, s1
	call	biari_init_context
	addi	s2, s2, 40
	addi	s1, s1, 80
	beq	s2, s9, .LBB3_270
.LBB3_260:                              # =>This Inner Loop Header: Depth=1
	ld	a0, %lo(img)(s3)
	lw	a2, 24(a0)
	mv	a1, s6
	beq	a2, s8, .LBB3_262
# %bb.261:                              #   in Loop: Header=BB3_260 Depth=1
	mv	a1, s7
.LBB3_262:                              #   in Loop: Header=BB3_260 Depth=1
	add	a0, a0, s4
	lw	a2, 232(a0)
	addi	a0, s1, -64
	mul	a2, a2, s5
	add	a1, a1, s2
	add	a1, a1, a2
	call	biari_init_context
	ld	a0, %lo(img)(s3)
	lw	a2, 24(a0)
	mv	a1, s6
	beq	a2, s8, .LBB3_264
# %bb.263:                              #   in Loop: Header=BB3_260 Depth=1
	mv	a1, s7
.LBB3_264:                              #   in Loop: Header=BB3_260 Depth=1
	add	a0, a0, s4
	lw	a2, 232(a0)
	addi	a0, s1, -48
	mul	a2, a2, s5
	add	a1, a1, s2
	add	a1, a1, a2
	addi	a1, a1, 8
	call	biari_init_context
	ld	a0, %lo(img)(s3)
	lw	a3, 24(a0)
	add	a0, a0, s4
	lw	a1, 232(a0)
	mv	a2, s6
	beq	a3, s8, .LBB3_266
# %bb.265:                              #   in Loop: Header=BB3_260 Depth=1
	mv	a2, s7
.LBB3_266:                              #   in Loop: Header=BB3_260 Depth=1
	addi	a0, s1, -32
	mul	a1, a1, s5
	add	a2, a2, s2
	add	a1, a2, a1
	addi	a1, a1, 16
	call	biari_init_context
	ld	a0, %lo(img)(s3)
	lw	a3, 24(a0)
	add	a0, a0, s4
	lw	a1, 232(a0)
	mv	a2, s6
	beq	a3, s8, .LBB3_268
# %bb.267:                              #   in Loop: Header=BB3_260 Depth=1
	mv	a2, s7
.LBB3_268:                              #   in Loop: Header=BB3_260 Depth=1
	addi	a0, s1, -16
	mul	a1, a1, s5
	add	a2, a2, s2
	add	a1, a2, a1
	addi	a1, a1, 24
	call	biari_init_context
	ld	a0, %lo(img)(s3)
	lw	a2, 24(a0)
	add	a0, a0, s4
	lw	a0, 232(a0)
	mv	a1, s6
	beq	a2, s8, .LBB3_259
# %bb.269:                              #   in Loop: Header=BB3_260 Depth=1
	mv	a1, s7
	j	.LBB3_259
.LBB3_270:
	li	s2, 0
	lui	a0, 2
	addiw	s3, a0, -864
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	add	s3, a1, s3
	lui	s6, %hi(INIT_FLD_MAP_P)
	addi	s6, s6, %lo(INIT_FLD_MAP_P)
	lui	s0, %hi(INIT_FLD_MAP_I)
	addi	s0, s0, %lo(INIT_FLD_MAP_I)
	addiw	a0, a0, -624
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	lui	s8, %hi(img)
	lui	s9, 22
	li	s10, 960
	li	s11, 2
	j	.LBB3_272
.LBB3_271:                              #   in Loop: Header=BB3_272 Depth=1
	addi	s2, s2, 1
	addi	s6, s6, 120
	addi	s0, s0, 120
	addi	s3, s3, 240
	li	a0, 10
	beq	s2, a0, .LBB3_276
.LBB3_272:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_274 Depth 2
	li	a0, 240
	mul	a0, s2, a0
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	add	a0, a0, a1
	ld	s7, 8(sp)                       # 8-byte Folded Reload
	add	s7, a0, s7
	mv	s1, s3
	mv	s5, s0
	mv	s4, s6
	j	.LBB3_274
.LBB3_273:                              #   in Loop: Header=BB3_274 Depth=2
	add	a0, a0, s9
	lw	a0, 232(a0)
	mul	a0, a0, s10
	add	a1, a1, a0
	mv	a0, s1
	call	biari_init_context
	addi	s4, s4, 8
	addi	s1, s1, 16
	addi	s5, s5, 8
	beq	s1, s7, .LBB3_271
.LBB3_274:                              #   Parent Loop BB3_272 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, %lo(img)(s8)
	lw	a2, 24(a0)
	mv	a1, s5
	beq	a2, s11, .LBB3_273
# %bb.275:                              #   in Loop: Header=BB3_274 Depth=2
	mv	a1, s4
	j	.LBB3_273
.LBB3_276:
	li	s2, 0
	li	a0, 19
	slli	a0, a0, 9
	ld	s3, 16(sp)                      # 8-byte Folded Reload
	add	s3, s3, a0
	lui	s6, %hi(INIT_FLD_LAST_P)
	addi	s6, s6, %lo(INIT_FLD_LAST_P)
	lui	s0, %hi(INIT_FLD_LAST_I)
	addi	s0, s0, %lo(INIT_FLD_LAST_I)
	lui	a0, 2
	addiw	a0, a0, 1776
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	lui	s8, %hi(img)
	lui	s9, 22
	li	s10, 960
	li	s11, 2
	j	.LBB3_278
.LBB3_277:                              #   in Loop: Header=BB3_278 Depth=1
	addi	s2, s2, 1
	addi	s6, s6, 120
	addi	s0, s0, 120
	addi	s3, s3, 240
	li	a0, 10
	beq	s2, a0, .LBB3_282
.LBB3_278:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_280 Depth 2
	li	a0, 240
	mul	a0, s2, a0
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	add	a0, a0, a1
	ld	s7, 8(sp)                       # 8-byte Folded Reload
	add	s7, a0, s7
	mv	s1, s3
	mv	s5, s0
	mv	s4, s6
	j	.LBB3_280
.LBB3_279:                              #   in Loop: Header=BB3_280 Depth=2
	add	a0, a0, s9
	lw	a0, 232(a0)
	mul	a0, a0, s10
	add	a1, a1, a0
	mv	a0, s1
	call	biari_init_context
	addi	s4, s4, 8
	addi	s1, s1, 16
	addi	s5, s5, 8
	beq	s1, s7, .LBB3_277
.LBB3_280:                              #   Parent Loop BB3_278 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, %lo(img)(s8)
	lw	a2, 24(a0)
	mv	a1, s5
	beq	a2, s11, .LBB3_279
# %bb.281:                              #   in Loop: Header=BB3_280 Depth=2
	mv	a1, s4
	j	.LBB3_279
.LBB3_282:
	ld	ra, 120(sp)                     # 8-byte Folded Reload
	ld	s0, 112(sp)                     # 8-byte Folded Reload
	ld	s1, 104(sp)                     # 8-byte Folded Reload
	ld	s2, 96(sp)                      # 8-byte Folded Reload
	ld	s3, 88(sp)                      # 8-byte Folded Reload
	ld	s4, 80(sp)                      # 8-byte Folded Reload
	ld	s5, 72(sp)                      # 8-byte Folded Reload
	ld	s6, 64(sp)                      # 8-byte Folded Reload
	ld	s7, 56(sp)                      # 8-byte Folded Reload
	ld	s8, 48(sp)                      # 8-byte Folded Reload
	ld	s9, 40(sp)                      # 8-byte Folded Reload
	ld	s10, 32(sp)                     # 8-byte Folded Reload
	ld	s11, 24(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 128
	ret
.Lfunc_end3:
	.size	init_contexts, .Lfunc_end3-init_contexts
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function XRate
.LCPI4_0:
	.quad	0x3fa0000000000000              # double 0.03125
.LCPI4_1:
	.quad	0x3ff0000000000000              # double 1
.LCPI4_2:
	.quad	0xbff0000000000000              # double -1
	.text
	.globl	XRate
	.p2align	2
	.type	XRate,@function
XRate:                                  # @XRate
# %bb.0:
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	lw	a2, 40(a2)
	ld	a4, 8(a0)
	lw	a3, 0(a1)
	lw	a1, 4(a1)
	lbu	a5, 2(a0)
	lhu	a0, 0(a0)
	beqz	a5, .LBB4_2
# %bb.1:
	addi	a0, a0, 64
	j	.LBB4_3
.LBB4_2:
	li	a5, 63
	sub	a0, a5, a0
.LBB4_3:
	lui	a5, %hi(.LCPI4_0)
	fld	fa5, %lo(.LCPI4_0)(a5)
	fcvt.d.lu	fa4, a4
	fmul.d	fa5, fa4, fa5
	lui	a4, %hi(.LCPI4_1)
	fld	fa4, %lo(.LCPI4_1)(a4)
	sgtz	a4, a2
	negw	a4, a4
	and	a2, a4, a2
	mul	a2, a3, a2
	sraiw	a2, a2, 4
	addw	a1, a2, a1
	sgtz	a2, a1
	neg	a2, a2
	and	a1, a2, a1
	li	a2, 127
	flt.d	a5, fa4, fa5
	blt	a1, a2, .LBB4_5
# %bb.4:
	li	a1, 127
.LBB4_5:
	slli	a4, a0, 3
	lui	a3, %hi(probability)
	addi	a3, a3, %lo(probability)
	add	a4, a3, a4
	fld	fa3, 0(a4)
	slli	a6, a1, 3
	lui	a4, %hi(entropy)
	addi	a4, a4, %lo(entropy)
	add	a6, a4, a6
	fld	fa4, 0(a6)
	bnez	a5, .LBB4_7
# %bb.6:
	fneg.d	fa5, fa5
	j	.LBB4_8
.LBB4_7:
	lui	a5, %hi(.LCPI4_2)
	fld	fa5, %lo(.LCPI4_2)(a5)
.LBB4_8:
	fmul.d	fa3, fa5, fa3
	sub	a2, a2, a0
	slli	a2, a2, 3
	add	a2, a3, a2
	fld	fa2, 0(a2)
	xori	a0, a1, 127
	slli	a0, a0, 3
	add	a0, a4, a0
	fld	fa1, 0(a0)
	fmv.d.x	fa0, zero
	fmadd.d	fa4, fa3, fa4, fa0
	fmul.d	fa5, fa5, fa2
	fmadd.d	fa0, fa5, fa1, fa4
	ret
.Lfunc_end4:
	.size	XRate, .Lfunc_end4-XRate
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function GetCtxModelNumber
.LCPI5_0:
	.quad	0x3fa0000000000000              # double 0.03125
.LCPI5_1:
	.quad	0x3ff0000000000000              # double 1
.LCPI5_2:
	.quad	0xbff0000000000000              # double -1
.LCPI5_3:
	.quad	0x46293e5939a08cea              # double 1.0E+30
	.text
	.globl	GetCtxModelNumber
	.p2align	2
	.type	GetCtxModelNumber,@function
GetCtxModelNumber:                      # @GetCtxModelNumber
# %bb.0:
	addi	sp, sp, -816
	sd	ra, 808(sp)                     # 8-byte Folded Spill
	sd	s0, 800(sp)                     # 8-byte Folded Spill
	sd	s1, 792(sp)                     # 8-byte Folded Spill
	sd	s2, 784(sp)                     # 8-byte Folded Spill
	sd	s3, 776(sp)                     # 8-byte Folded Spill
	sd	s4, 768(sp)                     # 8-byte Folded Spill
	sd	s5, 760(sp)                     # 8-byte Folded Spill
	sd	s6, 752(sp)                     # 8-byte Folded Spill
	sd	s7, 744(sp)                     # 8-byte Folded Spill
	sd	s8, 736(sp)                     # 8-byte Folded Spill
	sd	s9, 728(sp)                     # 8-byte Folded Spill
	sd	s10, 720(sp)                    # 8-byte Folded Spill
	sd	s11, 712(sp)                    # 8-byte Folded Spill
	fsd	fs0, 704(sp)                    # 8-byte Folded Spill
	fsd	fs1, 696(sp)                    # 8-byte Folded Spill
	fsd	fs2, 688(sp)                    # 8-byte Folded Spill
	fsd	fs3, 680(sp)                    # 8-byte Folded Spill
	fsd	fs4, 672(sp)                    # 8-byte Folded Spill
	fsd	fs5, 664(sp)                    # 8-byte Folded Spill
	fsd	fs6, 656(sp)                    # 8-byte Folded Spill
	fsd	fs7, 648(sp)                    # 8-byte Folded Spill
	fsd	fs8, 640(sp)                    # 8-byte Folded Spill
	fsd	fs9, 632(sp)                    # 8-byte Folded Spill
	fsd	fs10, 624(sp)                   # 8-byte Folded Spill
	fsd	fs11, 616(sp)                   # 8-byte Folded Spill
	sd	a1, 416(sp)                     # 8-byte Folded Spill
	ld	a1, 1336(a1)
	lui	a3, %hi(.LCPI5_0)
	fld	ft2, %lo(.LCPI5_0)(a3)
	lui	a3, %hi(.LCPI5_1)
	fld	ft3, %lo(.LCPI5_1)(a3)
	lui	a3, %hi(.LCPI5_2)
	fld	fa4, %lo(.LCPI5_2)(a3)
	fcvt.d.lu	fa5, a1
	fmul.d	fa5, fa5, ft2
	flt.d	a1, ft3, fa5
	sd	a0, 0(sp)                       # 8-byte Folded Spill
	fmv.d	fa3, fa4
	bnez	a1, .LBB5_2
# %bb.1:
	fneg.d	fa3, fa5
.LBB5_2:
	ld	a0, 416(sp)                     # 8-byte Folded Reload
	lbu	a1, 1330(a0)
	lhu	a0, 1328(a0)
	li	s5, 63
	beqz	a1, .LBB5_4
# %bb.3:
	addi	a6, a0, 64
	j	.LBB5_5
.LBB5_4:
	sub	a6, s5, a0
.LBB5_5:
	ld	a0, 416(sp)                     # 8-byte Folded Reload
	ld	a0, 1352(a0)
	fcvt.d.lu	fa5, a0
	fmul.d	fa5, fa5, ft2
	flt.d	a0, ft3, fa5
	fmv.d	fa2, fa4
	bnez	a0, .LBB5_7
# %bb.6:
	fneg.d	fa2, fa5
.LBB5_7:
	ld	a0, 416(sp)                     # 8-byte Folded Reload
	lbu	a1, 1346(a0)
	lhu	a0, 1344(a0)
	beqz	a1, .LBB5_9
# %bb.8:
	addi	a7, a0, 64
	j	.LBB5_10
.LBB5_9:
	sub	a7, s5, a0
.LBB5_10:
	ld	a0, 416(sp)                     # 8-byte Folded Reload
	ld	a0, 1368(a0)
	fcvt.d.lu	fa5, a0
	fmul.d	fa5, fa5, ft2
	flt.d	a0, ft3, fa5
	fmv.d	fa1, fa4
	bnez	a0, .LBB5_12
# %bb.11:
	fneg.d	fa1, fa5
.LBB5_12:
	ld	a0, 416(sp)                     # 8-byte Folded Reload
	lbu	a1, 1362(a0)
	lhu	a0, 1360(a0)
	beqz	a1, .LBB5_14
# %bb.13:
	addi	t0, a0, 64
	j	.LBB5_15
.LBB5_14:
	sub	t0, s5, a0
.LBB5_15:
	ld	a0, 416(sp)                     # 8-byte Folded Reload
	ld	a0, 1384(a0)
	fcvt.d.lu	fa5, a0
	fmul.d	fa5, fa5, ft2
	flt.d	a0, ft3, fa5
	fmv.d	fa0, fa4
	bnez	a0, .LBB5_17
# %bb.16:
	fneg.d	fa0, fa5
.LBB5_17:
	ld	a0, 416(sp)                     # 8-byte Folded Reload
	lbu	a1, 1378(a0)
	lhu	a0, 1376(a0)
	beqz	a1, .LBB5_19
# %bb.18:
	addi	t1, a0, 64
	j	.LBB5_20
.LBB5_19:
	sub	t1, s5, a0
.LBB5_20:
	ld	a0, 416(sp)                     # 8-byte Folded Reload
	ld	a0, 1400(a0)
	fcvt.d.lu	fa5, a0
	fmul.d	fa5, fa5, ft2
	flt.d	a0, ft3, fa5
	fmv.d	ft0, fa4
	bnez	a0, .LBB5_22
# %bb.21:
	fneg.d	ft0, fa5
.LBB5_22:
	ld	a0, 416(sp)                     # 8-byte Folded Reload
	lbu	a1, 1394(a0)
	lhu	a0, 1392(a0)
	beqz	a1, .LBB5_24
# %bb.23:
	addi	t4, a0, 64
	j	.LBB5_25
.LBB5_24:
	sub	t4, s5, a0
.LBB5_25:
	ld	a0, 416(sp)                     # 8-byte Folded Reload
	ld	a0, 1416(a0)
	fcvt.d.lu	fa5, a0
	fmul.d	fa5, fa5, ft2
	flt.d	a0, ft3, fa5
	fmv.d	ft1, fa4
	bnez	a0, .LBB5_27
# %bb.26:
	fneg.d	ft1, fa5
.LBB5_27:
	ld	a0, 416(sp)                     # 8-byte Folded Reload
	lbu	a1, 1410(a0)
	lhu	a0, 1408(a0)
	beqz	a1, .LBB5_29
# %bb.28:
	addi	s6, a0, 64
	j	.LBB5_30
.LBB5_29:
	sub	s6, s5, a0
.LBB5_30:
	ld	a0, 416(sp)                     # 8-byte Folded Reload
	ld	a0, 1432(a0)
	fcvt.d.lu	fa5, a0
	fmul.d	fa5, fa5, ft2
	flt.d	a0, ft3, fa5
	fmv.d	ft4, fa4
	bnez	a0, .LBB5_32
# %bb.31:
	fneg.d	ft4, fa5
.LBB5_32:
	ld	a0, 416(sp)                     # 8-byte Folded Reload
	lbu	a1, 1426(a0)
	lhu	a0, 1424(a0)
	beqz	a1, .LBB5_34
# %bb.33:
	addi	s7, a0, 64
	j	.LBB5_35
.LBB5_34:
	sub	s7, s5, a0
.LBB5_35:
	ld	a0, 416(sp)                     # 8-byte Folded Reload
	ld	a0, 1448(a0)
	fcvt.d.lu	fa5, a0
	fmul.d	fa5, fa5, ft2
	flt.d	a0, ft3, fa5
	fmv.d	ft5, fa4
	bnez	a0, .LBB5_37
# %bb.36:
	fneg.d	ft5, fa5
.LBB5_37:
	ld	a0, 416(sp)                     # 8-byte Folded Reload
	lbu	a1, 1442(a0)
	lhu	a0, 1440(a0)
	beqz	a1, .LBB5_39
# %bb.38:
	addi	s9, a0, 64
	j	.LBB5_40
.LBB5_39:
	sub	s9, s5, a0
.LBB5_40:
	ld	a0, 416(sp)                     # 8-byte Folded Reload
	ld	a0, 1464(a0)
	fcvt.d.lu	fa5, a0
	fmul.d	fa5, fa5, ft2
	flt.d	a0, ft3, fa5
	fmv.d	ft6, fa4
	bnez	a0, .LBB5_42
# %bb.41:
	fneg.d	ft6, fa5
.LBB5_42:
	ld	a0, 416(sp)                     # 8-byte Folded Reload
	lbu	a1, 1458(a0)
	lhu	a0, 1456(a0)
	beqz	a1, .LBB5_44
# %bb.43:
	addi	s8, a0, 64
	j	.LBB5_45
.LBB5_44:
	sub	s8, s5, a0
.LBB5_45:
	ld	a0, 416(sp)                     # 8-byte Folded Reload
	ld	a0, 1480(a0)
	fcvt.d.lu	fa5, a0
	fmul.d	fa5, fa5, ft2
	flt.d	a0, ft3, fa5
	fmv.d	ft7, fa4
	bnez	a0, .LBB5_47
# %bb.46:
	fneg.d	ft7, fa5
.LBB5_47:
	ld	a0, 416(sp)                     # 8-byte Folded Reload
	lbu	a1, 1474(a0)
	lhu	a0, 1472(a0)
	beqz	a1, .LBB5_49
# %bb.48:
	addi	a4, a0, 64
	j	.LBB5_50
.LBB5_49:
	sub	a4, s5, a0
.LBB5_50:
	ld	a0, 416(sp)                     # 8-byte Folded Reload
	ld	a0, 1496(a0)
	fcvt.d.lu	fa5, a0
	fmul.d	fa5, fa5, ft2
	flt.d	a0, ft3, fa5
	fmv.d	fa6, fa4
	bnez	a0, .LBB5_52
# %bb.51:
	fneg.d	fa6, fa5
.LBB5_52:
	ld	a0, 416(sp)                     # 8-byte Folded Reload
	lbu	a1, 1490(a0)
	lhu	a0, 1488(a0)
	beqz	a1, .LBB5_54
# %bb.53:
	addi	ra, a0, 64
	j	.LBB5_55
.LBB5_54:
	sub	ra, s5, a0
.LBB5_55:
	ld	a0, 8(a2)
	fcvt.d.lu	fa5, a0
	fmul.d	fa5, fa5, ft2
	flt.d	a0, ft3, fa5
	fmv.d	fa7, fa4
	bnez	a0, .LBB5_57
# %bb.56:
	fneg.d	fa7, fa5
.LBB5_57:
	lbu	a1, 2(a2)
	lhu	a0, 0(a2)
	beqz	a1, .LBB5_59
# %bb.58:
	addi	a0, a0, 64
	j	.LBB5_60
.LBB5_59:
	sub	a0, s5, a0
.LBB5_60:
	sd	a0, 608(sp)                     # 8-byte Folded Spill
	ld	a0, 24(a2)
	fcvt.d.lu	fa5, a0
	fmul.d	fa5, fa5, ft2
	flt.d	a0, ft3, fa5
	fmv.d	ft8, fa4
	bnez	a0, .LBB5_62
# %bb.61:
	fneg.d	ft8, fa5
.LBB5_62:
	lbu	a1, 18(a2)
	lhu	a0, 16(a2)
	beqz	a1, .LBB5_64
# %bb.63:
	addi	a0, a0, 64
	j	.LBB5_65
.LBB5_64:
	sub	a0, s5, a0
.LBB5_65:
	sd	a0, 600(sp)                     # 8-byte Folded Spill
	ld	a0, 40(a2)
	lbu	a3, 34(a2)
	lhu	a1, 32(a2)
	beqz	a3, .LBB5_67
# %bb.66:
	addi	a1, a1, 64
	j	.LBB5_68
.LBB5_67:
	sub	a1, s5, a1
.LBB5_68:
	sd	a1, 592(sp)                     # 8-byte Folded Spill
	fcvt.d.lu	fa5, a0
	fmul.d	fa5, fa5, ft2
	flt.d	a0, ft3, fa5
	fmv.d	ft9, fa4
	bnez	a0, .LBB5_70
# %bb.69:
	fneg.d	ft9, fa5
.LBB5_70:
	ld	a0, 56(a2)
	lbu	a3, 50(a2)
	lhu	a1, 48(a2)
	beqz	a3, .LBB5_72
# %bb.71:
	addi	a3, a1, 64
	j	.LBB5_73
.LBB5_72:
	sub	a3, s5, a1
.LBB5_73:
	fcvt.d.lu	fa5, a0
	fmul.d	fa5, fa5, ft2
	flt.d	a0, ft3, fa5
	li	t5, 127
	fmv.d	ft10, fa4
	bnez	a0, .LBB5_75
# %bb.74:
	fneg.d	ft10, fa5
.LBB5_75:
	mv	a5, a6
	sub	a0, t5, a6
	mv	s2, a7
	sub	a7, t5, a7
	mv	s0, t0
	sub	a6, t5, t0
	mv	s3, t1
	sub	t6, t5, t1
	mv	t3, t4
	sub	s1, t5, t4
	mv	t2, s6
	sub	a1, t5, s6
	mv	s4, s7
	sub	s11, t5, s7
	mv	s6, s9
	sub	s10, t5, s9
	mv	t4, s8
	sub	s8, t5, s8
	sd	a4, 464(sp)                     # 8-byte Folded Spill
	sub	a4, t5, a4
	sd	a4, 440(sp)                     # 8-byte Folded Spill
	sd	ra, 472(sp)                     # 8-byte Folded Spill
	sub	a4, t5, ra
	sd	a4, 448(sp)                     # 8-byte Folded Spill
	ld	a4, 608(sp)                     # 8-byte Folded Reload
	sub	a4, t5, a4
	sd	a4, 456(sp)                     # 8-byte Folded Spill
	ld	s9, 72(a2)
	lbu	t1, 66(a2)
	lhu	t0, 64(a2)
	ld	ra, 600(sp)                     # 8-byte Folded Reload
	sub	ra, t5, ra
	ld	s7, 592(sp)                     # 8-byte Folded Reload
	sub	a4, t5, s7
	sd	a4, 424(sp)                     # 8-byte Folded Spill
	sub	t5, t5, a3
	sd	t5, 432(sp)                     # 8-byte Folded Spill
	fsd	fa6, 512(sp)                    # 8-byte Folded Spill
	beqz	t1, .LBB5_77
# %bb.76:
	addi	a4, t0, 64
	j	.LBB5_78
.LBB5_77:
	sub	a4, s5, t0
.LBB5_78:
	fcvt.d.lu	fa5, s9
	slli	a0, a0, 3
	sd	a0, 408(sp)                     # 8-byte Folded Spill
	slli	a5, a5, 3
	sd	a5, 400(sp)                     # 8-byte Folded Spill
	slli	a7, a7, 3
	slli	s2, s2, 3
	slli	a6, a6, 3
	slli	t5, s0, 3
	slli	t6, t6, 3
	sd	t6, 392(sp)                     # 8-byte Folded Spill
	slli	s0, s3, 3
	slli	s1, s1, 3
	slli	s3, t3, 3
	slli	a1, a1, 3
	sd	a1, 384(sp)                     # 8-byte Folded Spill
	slli	s5, t2, 3
	slli	s11, s11, 3
	slli	s7, s4, 3
	slli	s10, s10, 3
	slli	s9, s6, 3
	slli	s8, s8, 3
	slli	t1, t4, 3
	ld	s6, 440(sp)                     # 8-byte Folded Reload
	slli	s6, s6, 3
	ld	t0, 464(sp)                     # 8-byte Folded Reload
	slli	t0, t0, 3
	ld	t4, 448(sp)                     # 8-byte Folded Reload
	slli	t4, t4, 3
	ld	t2, 472(sp)                     # 8-byte Folded Reload
	slli	t2, t2, 3
	ld	t3, 456(sp)                     # 8-byte Folded Reload
	slli	t3, t3, 3
	ld	t6, 608(sp)                     # 8-byte Folded Reload
	slli	t6, t6, 3
	slli	ra, ra, 3
	ld	s4, 600(sp)                     # 8-byte Folded Reload
	slli	s4, s4, 3
	ld	a0, 592(sp)                     # 8-byte Folded Reload
	slli	a0, a0, 3
	sd	a0, 608(sp)                     # 8-byte Folded Spill
	ld	a0, 424(sp)                     # 8-byte Folded Reload
	slli	a0, a0, 3
	sd	a0, 376(sp)                     # 8-byte Folded Spill
	slli	a3, a3, 3
	sd	a3, 368(sp)                     # 8-byte Folded Spill
	ld	a0, 432(sp)                     # 8-byte Folded Reload
	slli	a0, a0, 3
	sd	a0, 360(sp)                     # 8-byte Folded Spill
	fmul.d	fa5, fa5, ft2
	fmv.d	fa6, fa4
	lui	a3, %hi(probability)
	addi	a3, a3, %lo(probability)
	flt.d	a1, ft3, fa5
	mv	a5, a4
	slli	a0, a4, 3
	bnez	a1, .LBB5_80
# %bb.79:
	fneg.d	fa6, fa5
.LBB5_80:
	ld	a1, 408(sp)                     # 8-byte Folded Reload
	add	a1, a3, a1
	sd	a1, 592(sp)                     # 8-byte Folded Spill
	ld	a1, 400(sp)                     # 8-byte Folded Reload
	add	a1, a3, a1
	sd	a1, 472(sp)                     # 8-byte Folded Spill
	add	a7, a3, a7
	sd	a7, 464(sp)                     # 8-byte Folded Spill
	add	s2, a3, s2
	sd	s2, 456(sp)                     # 8-byte Folded Spill
	add	a6, a3, a6
	sd	a6, 448(sp)                     # 8-byte Folded Spill
	add	t5, a3, t5
	ld	a1, 392(sp)                     # 8-byte Folded Reload
	add	a1, a3, a1
	sd	a1, 440(sp)                     # 8-byte Folded Spill
	add	s0, a3, s0
	add	s1, a3, s1
	add	s3, a3, s3
	ld	a1, 384(sp)                     # 8-byte Folded Reload
	add	a1, a3, a1
	sd	a1, 432(sp)                     # 8-byte Folded Spill
	add	s5, a3, s5
	add	s11, a3, s11
	sd	s11, 600(sp)                    # 8-byte Folded Spill
	add	s7, a3, s7
	add	a1, a3, s10
	add	s9, a3, s9
	add	s10, a3, s8
	add	s11, a3, t1
	add	s6, a3, s6
	add	s8, a3, t0
	add	t1, a3, t4
	add	s2, a3, t2
	add	a4, a3, t3
	add	a6, a3, t6
	add	a7, a3, ra
	add	t0, a3, s4
	ld	t2, 608(sp)                     # 8-byte Folded Reload
	add	t2, a3, t2
	sd	t2, 424(sp)                     # 8-byte Folded Spill
	ld	t2, 376(sp)                     # 8-byte Folded Reload
	add	t2, a3, t2
	sd	t2, 408(sp)                     # 8-byte Folded Spill
	ld	t2, 368(sp)                     # 8-byte Folded Reload
	add	t2, a3, t2
	sd	t2, 392(sp)                     # 8-byte Folded Spill
	ld	s4, 360(sp)                     # 8-byte Folded Reload
	add	s4, a3, s4
	add	t4, a3, a0
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	sd	a0, 400(sp)                     # 8-byte Folded Spill
	li	t3, 127
	sub	a0, t3, a5
	slli	a0, a0, 3
	add	t6, a3, a0
	ld	a0, 88(a2)
	sd	a0, 384(sp)                     # 8-byte Folded Spill
	lbu	t2, 82(a2)
	lhu	a0, 80(a2)
	li	a5, 19
	lui	ra, 2
	fsd	fa3, 584(sp)                    # 8-byte Folded Spill
	fsd	fa2, 576(sp)                    # 8-byte Folded Spill
	fsd	fa0, 568(sp)                    # 8-byte Folded Spill
	fsd	ft0, 560(sp)                    # 8-byte Folded Spill
	fsd	ft1, 552(sp)                    # 8-byte Folded Spill
	fsd	ft4, 544(sp)                    # 8-byte Folded Spill
	fsd	ft5, 536(sp)                    # 8-byte Folded Spill
	fsd	ft6, 528(sp)                    # 8-byte Folded Spill
	fsd	ft7, 520(sp)                    # 8-byte Folded Spill
	fsd	fa7, 504(sp)                    # 8-byte Folded Spill
	fsd	ft8, 496(sp)                    # 8-byte Folded Spill
	fsd	ft9, 488(sp)                    # 8-byte Folded Spill
	fsd	ft10, 480(sp)                   # 8-byte Folded Spill
	beqz	t2, .LBB5_82
# %bb.81:
	addi	t2, a0, 64
	j	.LBB5_83
.LBB5_82:
	li	t2, 63
	sub	t2, t2, a0
.LBB5_83:
	fsd	fa1, 608(sp)                    # 8-byte Folded Spill
	ld	a0, 592(sp)                     # 8-byte Folded Reload
	fld	ft8, 0(a0)
	ld	a0, 472(sp)                     # 8-byte Folded Reload
	fld	ft10, 0(a0)
	ld	a0, 464(sp)                     # 8-byte Folded Reload
	fld	fs0, 0(a0)
	ld	a0, 456(sp)                     # 8-byte Folded Reload
	fld	fs2, 0(a0)
	ld	a0, 448(sp)                     # 8-byte Folded Reload
	fld	fs3, 0(a0)
	fld	fs4, 0(t5)
	ld	a0, 440(sp)                     # 8-byte Folded Reload
	fld	fs5, 0(a0)
	fld	fs6, 0(s0)
	fld	fs7, 0(s1)
	fld	fs8, 0(s3)
	ld	a0, 432(sp)                     # 8-byte Folded Reload
	fld	fs9, 0(a0)
	fld	fs10, 0(s5)
	ld	a0, 600(sp)                     # 8-byte Folded Reload
	fld	fs11, 0(a0)
	fld	fa5, 0(s7)
	fsd	fa5, 600(sp)                    # 8-byte Folded Spill
	fld	fa5, 0(a1)
	fsd	fa5, 592(sp)                    # 8-byte Folded Spill
	fld	fa5, 0(s9)
	fsd	fa5, 472(sp)                    # 8-byte Folded Spill
	fld	fa5, 0(s10)
	fsd	fa5, 464(sp)                    # 8-byte Folded Spill
	fld	fa0, 0(s11)
	fld	ft0, 0(s6)
	fld	ft1, 0(s8)
	fld	fa7, 0(t1)
	fld	ft9, 0(s2)
	fld	ft11, 0(a4)
	fld	fs1, 0(a6)
	fld	ft4, 0(a7)
	fld	ft5, 0(t0)
	ld	a0, 424(sp)                     # 8-byte Folded Reload
	fld	ft6, 0(a0)
	ld	a0, 408(sp)                     # 8-byte Folded Reload
	fld	ft7, 0(a0)
	ld	a0, 392(sp)                     # 8-byte Folded Reload
	fld	fa5, 0(a0)
	fsd	fa5, 456(sp)                    # 8-byte Folded Spill
	slli	a1, a5, 9
	lui	a0, 1
	addiw	a5, a0, 1632
	ld	a0, 384(sp)                     # 8-byte Folded Reload
	fcvt.d.lu	fa5, a0
	fmul.d	fa2, fa5, ft2
	fld	fa5, 0(s4)
	flt.d	a0, ft3, fa2
	fld	ft2, 0(t4)
	ld	a4, 400(sp)                     # 8-byte Folded Reload
	lw	a4, 24(a4)
	sd	a4, 392(sp)                     # 8-byte Folded Spill
	slli	a4, t2, 3
	add	a4, a3, a4
	fld	ft3, 0(t6)
	fld	fa3, 0(a4)
	addi	t0, a2, 2047
	addiw	a6, ra, -1664
	addiw	a7, ra, -864
	bnez	a0, .LBB5_85
# %bb.84:
	fneg.d	fa4, fa2
.LBB5_85:
	li	s11, 0
	fld	fa1, 584(sp)                    # 8-byte Folded Reload
	fmul.d	fa2, fa1, ft8
	fsd	fa2, 384(sp)                    # 8-byte Folded Spill
	fmul.d	fa2, fa1, ft10
	fsd	fa2, 376(sp)                    # 8-byte Folded Spill
	fld	fa1, 576(sp)                    # 8-byte Folded Reload
	fmul.d	fa2, fa1, fs0
	fsd	fa2, 368(sp)                    # 8-byte Folded Spill
	fmul.d	fa2, fa1, fs2
	fsd	fa2, 360(sp)                    # 8-byte Folded Spill
	fld	fa1, 608(sp)                    # 8-byte Folded Reload
	fmul.d	fa2, fa1, fs3
	fsd	fa2, 352(sp)                    # 8-byte Folded Spill
	fmul.d	fa2, fa1, fs4
	fsd	fa2, 344(sp)                    # 8-byte Folded Spill
	fld	fa1, 568(sp)                    # 8-byte Folded Reload
	fmul.d	fa2, fa1, fs5
	fsd	fa2, 336(sp)                    # 8-byte Folded Spill
	fmul.d	fa2, fa1, fs6
	fsd	fa2, 328(sp)                    # 8-byte Folded Spill
	fld	fa1, 560(sp)                    # 8-byte Folded Reload
	fmul.d	fa2, fa1, fs7
	fsd	fa2, 320(sp)                    # 8-byte Folded Spill
	fmul.d	fa2, fa1, fs8
	fsd	fa2, 312(sp)                    # 8-byte Folded Spill
	fld	fa1, 552(sp)                    # 8-byte Folded Reload
	fmul.d	fa2, fa1, fs9
	fsd	fa2, 304(sp)                    # 8-byte Folded Spill
	fmul.d	fa2, fa1, fs10
	fsd	fa2, 296(sp)                    # 8-byte Folded Spill
	fld	fa1, 544(sp)                    # 8-byte Folded Reload
	fmul.d	fa2, fa1, fs11
	fsd	fa2, 288(sp)                    # 8-byte Folded Spill
	fld	fa2, 600(sp)                    # 8-byte Folded Reload
	fmul.d	fa2, fa1, fa2
	fsd	fa2, 280(sp)                    # 8-byte Folded Spill
	fld	fa1, 536(sp)                    # 8-byte Folded Reload
	fld	fa2, 592(sp)                    # 8-byte Folded Reload
	fmul.d	fa2, fa1, fa2
	fsd	fa2, 272(sp)                    # 8-byte Folded Spill
	fld	fa2, 472(sp)                    # 8-byte Folded Reload
	fmul.d	fa2, fa1, fa2
	fsd	fa2, 264(sp)                    # 8-byte Folded Spill
	fld	fa1, 528(sp)                    # 8-byte Folded Reload
	fld	fa2, 464(sp)                    # 8-byte Folded Reload
	fmul.d	fa2, fa1, fa2
	fsd	fa2, 256(sp)                    # 8-byte Folded Spill
	fmul.d	fa2, fa1, fa0
	fsd	fa2, 248(sp)                    # 8-byte Folded Spill
	fld	fa1, 520(sp)                    # 8-byte Folded Reload
	fmul.d	fa2, fa1, ft0
	fsd	fa2, 240(sp)                    # 8-byte Folded Spill
	fmul.d	fa2, fa1, ft1
	fsd	fa2, 232(sp)                    # 8-byte Folded Spill
	fld	fa1, 512(sp)                    # 8-byte Folded Reload
	fmul.d	fa2, fa1, fa7
	fsd	fa2, 224(sp)                    # 8-byte Folded Spill
	fmul.d	fa2, fa1, ft9
	fsd	fa2, 216(sp)                    # 8-byte Folded Spill
	fld	fa1, 504(sp)                    # 8-byte Folded Reload
	fmul.d	fa2, fa1, ft11
	fsd	fa2, 208(sp)                    # 8-byte Folded Spill
	fmul.d	fa2, fa1, fs1
	fsd	fa2, 200(sp)                    # 8-byte Folded Spill
	fld	fa1, 496(sp)                    # 8-byte Folded Reload
	fmul.d	fa2, fa1, ft4
	fsd	fa2, 192(sp)                    # 8-byte Folded Spill
	fmul.d	fa2, fa1, ft5
	fsd	fa2, 184(sp)                    # 8-byte Folded Spill
	fld	fa1, 488(sp)                    # 8-byte Folded Reload
	fmul.d	fa2, fa1, ft6
	fsd	fa2, 176(sp)                    # 8-byte Folded Spill
	fmul.d	fa2, fa1, ft7
	fsd	fa2, 168(sp)                    # 8-byte Folded Spill
	fld	fa1, 480(sp)                    # 8-byte Folded Reload
	fld	fa2, 456(sp)                    # 8-byte Folded Reload
	fmul.d	fa2, fa1, fa2
	fsd	fa2, 160(sp)                    # 8-byte Folded Spill
	fmul.d	fa5, fa1, fa5
	fsd	fa5, 152(sp)                    # 8-byte Folded Spill
	sub	a0, t3, t2
	slli	a0, a0, 3
	add	a0, a3, a0
	fld	fa5, 0(a0)
	fmul.d	fa2, fa6, ft2
	fsd	fa2, 144(sp)                    # 8-byte Folded Spill
	fmul.d	fa2, fa6, ft3
	fsd	fa2, 136(sp)                    # 8-byte Folded Spill
	fmul.d	fa3, fa4, fa3
	fsd	fa3, 128(sp)                    # 8-byte Folded Spill
	fmul.d	fa5, fa4, fa5
	fsd	fa5, 120(sp)                    # 8-byte Folded Spill
	add	a1, a2, a1
	sd	a1, 112(sp)                     # 8-byte Folded Spill
	add	a5, a2, a5
	sd	a5, 104(sp)                     # 8-byte Folded Spill
	addi	a0, t0, 1281
	sd	a0, 96(sp)                      # 8-byte Folded Spill
	addi	a0, a2, 96
	sd	a0, 88(sp)                      # 8-byte Folded Spill
	addi	a0, a2, 288
	sd	a0, 80(sp)                      # 8-byte Folded Spill
	addi	a0, a2, 928
	sd	a0, 72(sp)                      # 8-byte Folded Spill
	add	a6, a2, a6
	sd	a6, 64(sp)                      # 8-byte Folded Spill
	add	a2, a2, a7
	sd	a2, 56(sp)                      # 8-byte Folded Spill
	ld	a1, 416(sp)                     # 8-byte Folded Reload
	addi	a0, a1, 536
	sd	a0, 48(sp)                      # 8-byte Folded Spill
	addi	a0, a1, 680
	sd	a0, 40(sp)                      # 8-byte Folded Spill
	addi	a0, a1, 824
	sd	a0, 32(sp)                      # 8-byte Folded Spill
	addi	a0, a1, 984
	sd	a0, 24(sp)                      # 8-byte Folded Spill
	addi	a0, a1, 1144
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	lui	a0, %hi(INIT_B8_TYPE_P)
	addi	a0, a0, %lo(INIT_B8_TYPE_P)
	addi	a2, a0, 4
	sd	a2, 600(sp)                     # 8-byte Folded Spill
	addi	a0, a0, 76
	sd	a0, 592(sp)                     # 8-byte Folded Spill
	lui	a0, %hi(INIT_MV_RES_P)
	addi	a0, a0, %lo(INIT_MV_RES_P)
	addi	a2, a0, 4
	sd	a2, 584(sp)                     # 8-byte Folded Spill
	addi	a0, a0, 84
	sd	a0, 576(sp)                     # 8-byte Folded Spill
	lui	a0, %hi(INIT_REF_NO_P)
	addi	a0, a0, %lo(INIT_REF_NO_P)
	addi	a2, a0, 4
	sd	a2, 568(sp)                     # 8-byte Folded Spill
	addi	a0, a0, 52
	sd	a0, 560(sp)                     # 8-byte Folded Spill
	addi	a0, a1, 1240
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	lui	t0, %hi(INIT_MB_TYPE_P)
	addi	t0, t0, %lo(INIT_MB_TYPE_P)
	lui	s1, %hi(INIT_CBP_P)
	addi	s1, s1, %lo(INIT_CBP_P)
	lui	a0, %hi(INIT_BCBP_P)
	addi	a0, a0, %lo(INIT_BCBP_P)
	sd	a0, 552(sp)                     # 8-byte Folded Spill
	lui	a0, %hi(INIT_MAP_P)
	addi	a0, a0, %lo(INIT_MAP_P)
	sd	a0, 544(sp)                     # 8-byte Folded Spill
	lui	a0, %hi(INIT_LAST_P)
	addi	a0, a0, %lo(INIT_LAST_P)
	sd	a0, 536(sp)                     # 8-byte Folded Spill
	lui	a0, %hi(INIT_ONE_P)
	addi	a0, a0, %lo(INIT_ONE_P)
	sd	a0, 528(sp)                     # 8-byte Folded Spill
	lui	a0, %hi(INIT_ABS_P)
	addi	a0, a0, %lo(INIT_ABS_P)
	sd	a0, 520(sp)                     # 8-byte Folded Spill
	lui	a0, %hi(INIT_FLD_MAP_P)
	addi	a0, a0, %lo(INIT_FLD_MAP_P)
	sd	a0, 512(sp)                     # 8-byte Folded Spill
	lui	a0, %hi(INIT_FLD_LAST_P)
	addi	a0, a0, %lo(INIT_FLD_LAST_P)
	sd	a0, 504(sp)                     # 8-byte Folded Spill
	lui	a0, %hi(.LCPI5_3)
	li	t2, 63
	lui	a1, %hi(.LCPI5_0)
	lui	a4, %hi(.LCPI5_1)
	lui	t3, %hi(.LCPI5_2)
	li	t4, 2
	lui	a2, %hi(entropy)
	addi	a2, a2, %lo(entropy)
	li	t5, 88
	li	s0, 127
	li	s2, 32
	lui	s9, %hi(INIT_BCBP_I)
	addi	s9, s9, %lo(INIT_BCBP_I)
	li	s3, 120
	lui	s4, %hi(INIT_LAST_I)
	addi	s4, s4, %lo(INIT_LAST_I)
	li	s6, 40
	lui	s7, %hi(INIT_ABS_I)
	addi	s7, s7, %lo(INIT_ABS_I)
	fld	fa5, %lo(.LCPI5_3)(a0)
	fsd	fa5, 408(sp)                    # 8-byte Folded Spill
	fld	fa3, %lo(.LCPI5_0)(a1)
	fld	fa2, %lo(.LCPI5_1)(a4)
	fld	fa0, %lo(.LCPI5_2)(t3)
	lui	s8, %hi(INIT_FLD_MAP_I)
	addi	s8, s8, %lo(INIT_FLD_MAP_I)
	lui	s10, %hi(INIT_FLD_LAST_I)
	addi	s10, s10, %lo(INIT_FLD_LAST_I)
	fmv.d.x	ft1, zero
.LBB5_86:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_88 Depth 2
                                        #       Child Loop BB5_90 Depth 3
                                        #     Child Loop BB5_102 Depth 2
                                        #     Child Loop BB5_120 Depth 2
                                        #     Child Loop BB5_138 Depth 2
                                        #     Child Loop BB5_156 Depth 2
                                        #     Child Loop BB5_175 Depth 2
                                        #     Child Loop BB5_194 Depth 2
                                        #     Child Loop BB5_260 Depth 2
                                        #       Child Loop BB5_262 Depth 3
                                        #     Child Loop BB5_275 Depth 2
                                        #       Child Loop BB5_277 Depth 3
                                        #     Child Loop BB5_290 Depth 2
                                        #       Child Loop BB5_292 Depth 3
                                        #     Child Loop BB5_305 Depth 2
                                        #       Child Loop BB5_307 Depth 3
                                        #     Child Loop BB5_320 Depth 2
                                        #       Child Loop BB5_322 Depth 3
                                        #     Child Loop BB5_335 Depth 2
                                        #       Child Loop BB5_337 Depth 3
                                        #     Child Loop BB5_350 Depth 2
                                        #       Child Loop BB5_352 Depth 3
                                        #     Child Loop BB5_365 Depth 2
                                        #       Child Loop BB5_367 Depth 3
	ld	a1, 400(sp)                     # 8-byte Folded Reload
	lw	a4, 40(a1)
	li	a0, 0
	sd	s11, 496(sp)                    # 8-byte Folded Spill
	lw	s11, 24(a1)
	sgtz	a1, a4
	neg	a1, a1
	sd	a4, 608(sp)                     # 8-byte Folded Spill
	and	a1, a1, a4
	ld	a5, 416(sp)                     # 8-byte Folded Reload
	lui	a6, %hi(INIT_MB_TYPE_I)
	addi	a6, a6, %lo(INIT_MB_TYPE_I)
	sd	t0, 488(sp)                     # 8-byte Folded Spill
	fmv.d	ft0, ft1
	j	.LBB5_88
.LBB5_87:                               #   in Loop: Header=BB5_88 Depth=2
	addi	a0, a0, 1
	addi	t0, t0, 88
	addi	a6, a6, 88
	addi	a5, a5, 176
	li	a4, 3
	beq	a0, a4, .LBB5_99
.LBB5_88:                               #   Parent Loop BB5_86 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_90 Depth 3
	li	a7, 0
	mv	t1, a5
	j	.LBB5_90
.LBB5_89:                               #   in Loop: Header=BB5_90 Depth=3
	slli	a4, s5, 3
	add	a4, a3, a4
	fld	fa4, 0(a4)
	sub	a4, ra, s5
	slli	a4, a4, 3
	add	a4, a3, a4
	fld	fa1, 0(a4)
	slli	a4, t6, 3
	add	a4, a2, a4
	fld	ft2, 0(a4)
	xori	a4, t6, 127
	slli	a4, a4, 3
	add	a4, a2, a4
	fld	ft3, 0(a4)
	fmul.d	fa4, fa5, fa4
	fmul.d	fa5, fa5, fa1
	fmadd.d	fa4, fa4, ft2, ft1
	fmadd.d	fa5, fa5, ft3, fa4
	fadd.d	ft0, ft0, fa5
	addi	a7, a7, 8
	addi	t1, t1, 16
	beq	a7, t5, .LBB5_87
.LBB5_90:                               #   Parent Loop BB5_86 Depth=1
                                        #     Parent Loop BB5_88 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lbu	t6, 2(t1)
	lhu	a4, 0(t1)
	beqz	t6, .LBB5_92
# %bb.91:                               #   in Loop: Header=BB5_90 Depth=3
	addi	s5, a4, 64
	j	.LBB5_93
.LBB5_92:                               #   in Loop: Header=BB5_90 Depth=3
	sub	s5, t2, a4
.LBB5_93:                               #   in Loop: Header=BB5_90 Depth=3
	ld	a4, 8(t1)
	fcvt.d.lu	fa5, a4
	fmul.d	fa4, fa5, fa3
	flt.d	a4, fa2, fa4
	fmv.d	fa5, fa0
	bnez	a4, .LBB5_95
# %bb.94:                               #   in Loop: Header=BB5_90 Depth=3
	fneg.d	fa5, fa4
.LBB5_95:                               #   in Loop: Header=BB5_90 Depth=3
	mv	a4, a6
	beq	s11, t4, .LBB5_97
# %bb.96:                               #   in Loop: Header=BB5_90 Depth=3
	mv	a4, t0
.LBB5_97:                               #   in Loop: Header=BB5_90 Depth=3
	add	a4, a4, a7
	lw	t6, 0(a4)
	lw	a4, 4(a4)
	li	ra, 127
	mul	t6, t6, a1
	sraiw	t6, t6, 4
	addw	a4, t6, a4
	sgtz	t6, a4
	neg	t6, t6
	and	t6, t6, a4
	blt	t6, ra, .LBB5_89
# %bb.98:                               #   in Loop: Header=BB5_90 Depth=3
	li	t6, 127
	j	.LBB5_89
.LBB5_99:                               #   in Loop: Header=BB5_86 Depth=1
	fld	ft2, 512(a2)
	fld	ft3, 504(a2)
	ld	a1, 608(sp)                     # 8-byte Folded Reload
	sgtz	a0, a1
	neg	a0, a0
	and	a0, a0, a1
	li	a1, 9
	ld	a5, 600(sp)                     # 8-byte Folded Reload
	ld	a6, 48(sp)                      # 8-byte Folded Reload
	ld	t6, 496(sp)                     # 8-byte Folded Reload
	j	.LBB5_102
.LBB5_100:                              #   in Loop: Header=BB5_102 Depth=2
	slli	a4, a7, 3
	add	a4, a3, a4
	fld	fa4, 0(a4)
	sub	a4, s0, a7
	slli	a4, a4, 3
	add	a4, a3, a4
	fld	fa1, 0(a4)
	fmul.d	fa4, fa4, fa5
	fmadd.d	fa4, fa4, ft2, ft1
	fmul.d	fa5, fa5, fa1
	fmadd.d	fa5, fa5, ft3, fa4
.LBB5_101:                              #   in Loop: Header=BB5_102 Depth=2
	fadd.d	ft0, ft0, fa5
	addi	a1, a1, -1
	addi	a6, a6, 16
	addi	a5, a5, 8
	beqz	a1, .LBB5_117
.LBB5_102:                              #   Parent Loop BB5_86 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bne	s11, t4, .LBB5_105
# %bb.103:                              #   in Loop: Header=BB5_102 Depth=2
	lbu	a7, -6(a6)
	lhu	a4, -8(a6)
	beqz	a7, .LBB5_107
# %bb.104:                              #   in Loop: Header=BB5_102 Depth=2
	addi	a7, a4, 64
	j	.LBB5_108
.LBB5_105:                              #   in Loop: Header=BB5_102 Depth=2
	lbu	a7, -6(a6)
	lhu	a4, -8(a6)
	beqz	a7, .LBB5_110
# %bb.106:                              #   in Loop: Header=BB5_102 Depth=2
	addi	a7, a4, 64
	j	.LBB5_111
.LBB5_107:                              #   in Loop: Header=BB5_102 Depth=2
	sub	a7, t2, a4
.LBB5_108:                              #   in Loop: Header=BB5_102 Depth=2
	ld	a4, 0(a6)
	fcvt.d.lu	fa5, a4
	fmul.d	fa4, fa5, fa3
	flt.d	a4, fa2, fa4
	fmv.d	fa5, fa0
	bnez	a4, .LBB5_100
# %bb.109:                              #   in Loop: Header=BB5_102 Depth=2
	fneg.d	fa5, fa4
	j	.LBB5_100
.LBB5_110:                              #   in Loop: Header=BB5_102 Depth=2
	sub	a7, t2, a4
.LBB5_111:                              #   in Loop: Header=BB5_102 Depth=2
	lw	a4, -4(a5)
	lw	t0, 0(a5)
	mul	a4, a4, a0
	sraiw	a4, a4, 4
	addw	a4, a4, t0
	sgtz	t0, a4
	neg	t0, t0
	and	t0, t0, a4
	li	t1, 127
	blt	t0, t1, .LBB5_113
# %bb.112:                              #   in Loop: Header=BB5_102 Depth=2
	li	t0, 127
.LBB5_113:                              #   in Loop: Header=BB5_102 Depth=2
	ld	a4, 0(a6)
	fcvt.d.lu	fa5, a4
	fmul.d	fa5, fa5, fa3
	flt.d	a4, fa2, fa5
	bnez	a4, .LBB5_115
# %bb.114:                              #   in Loop: Header=BB5_102 Depth=2
	fneg.d	fa5, fa5
	j	.LBB5_116
.LBB5_115:                              #   in Loop: Header=BB5_102 Depth=2
	fld	fa5, %lo(.LCPI5_2)(t3)
.LBB5_116:                              #   in Loop: Header=BB5_102 Depth=2
	slli	a4, a7, 3
	add	a4, a3, a4
	fld	fa4, 0(a4)
	slli	a4, t0, 3
	add	a4, a2, a4
	fld	fa1, 0(a4)
	fmul.d	fa4, fa5, fa4
	sub	a4, t1, a7
	slli	a4, a4, 3
	add	a4, a3, a4
	fld	ft4, 0(a4)
	xori	a4, t0, 127
	slli	a4, a4, 3
	add	a4, a2, a4
	fld	ft5, 0(a4)
	fmv.d.x	ft6, zero
	fmadd.d	fa4, fa4, fa1, ft6
	fmul.d	fa5, fa5, ft4
	fmadd.d	fa5, fa5, ft5, fa4
	j	.LBB5_101
.LBB5_117:                              # %.preheader2
                                        #   in Loop: Header=BB5_86 Depth=1
	li	a1, 9
	ld	a5, 592(sp)                     # 8-byte Folded Reload
	ld	a6, 40(sp)                      # 8-byte Folded Reload
	j	.LBB5_120
.LBB5_118:                              #   in Loop: Header=BB5_120 Depth=2
	slli	a4, a7, 3
	add	a4, a3, a4
	fld	fa4, 0(a4)
	sub	a4, s0, a7
	slli	a4, a4, 3
	add	a4, a3, a4
	fld	fa1, 0(a4)
	fmul.d	fa4, fa4, fa5
	fmadd.d	fa4, fa4, ft2, ft1
	fmul.d	fa5, fa5, fa1
	fmadd.d	fa5, fa5, ft3, fa4
.LBB5_119:                              #   in Loop: Header=BB5_120 Depth=2
	fadd.d	ft0, ft0, fa5
	addi	a1, a1, -1
	addi	a6, a6, 16
	addi	a5, a5, 8
	beqz	a1, .LBB5_135
.LBB5_120:                              #   Parent Loop BB5_86 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bne	s11, t4, .LBB5_123
# %bb.121:                              #   in Loop: Header=BB5_120 Depth=2
	lbu	a7, -6(a6)
	lhu	a4, -8(a6)
	beqz	a7, .LBB5_125
# %bb.122:                              #   in Loop: Header=BB5_120 Depth=2
	addi	a7, a4, 64
	j	.LBB5_126
.LBB5_123:                              #   in Loop: Header=BB5_120 Depth=2
	lbu	a7, -6(a6)
	lhu	a4, -8(a6)
	beqz	a7, .LBB5_128
# %bb.124:                              #   in Loop: Header=BB5_120 Depth=2
	addi	a7, a4, 64
	j	.LBB5_129
.LBB5_125:                              #   in Loop: Header=BB5_120 Depth=2
	sub	a7, t2, a4
.LBB5_126:                              #   in Loop: Header=BB5_120 Depth=2
	ld	a4, 0(a6)
	fcvt.d.lu	fa5, a4
	fmul.d	fa4, fa5, fa3
	flt.d	a4, fa2, fa4
	fmv.d	fa5, fa0
	bnez	a4, .LBB5_118
# %bb.127:                              #   in Loop: Header=BB5_120 Depth=2
	fneg.d	fa5, fa4
	j	.LBB5_118
.LBB5_128:                              #   in Loop: Header=BB5_120 Depth=2
	sub	a7, t2, a4
.LBB5_129:                              #   in Loop: Header=BB5_120 Depth=2
	lw	a4, -4(a5)
	lw	t0, 0(a5)
	mul	a4, a4, a0
	sraiw	a4, a4, 4
	addw	a4, a4, t0
	sgtz	t0, a4
	neg	t0, t0
	and	t0, t0, a4
	li	t1, 127
	blt	t0, t1, .LBB5_131
# %bb.130:                              #   in Loop: Header=BB5_120 Depth=2
	li	t0, 127
.LBB5_131:                              #   in Loop: Header=BB5_120 Depth=2
	ld	a4, 0(a6)
	fcvt.d.lu	fa5, a4
	fmul.d	fa5, fa5, fa3
	flt.d	a4, fa2, fa5
	bnez	a4, .LBB5_133
# %bb.132:                              #   in Loop: Header=BB5_120 Depth=2
	fneg.d	fa5, fa5
	j	.LBB5_134
.LBB5_133:                              #   in Loop: Header=BB5_120 Depth=2
	fld	fa5, %lo(.LCPI5_2)(t3)
.LBB5_134:                              #   in Loop: Header=BB5_120 Depth=2
	slli	a4, a7, 3
	add	a4, a3, a4
	fld	fa4, 0(a4)
	slli	a4, t0, 3
	add	a4, a2, a4
	fld	fa1, 0(a4)
	fmul.d	fa4, fa5, fa4
	sub	a4, t1, a7
	slli	a4, a4, 3
	add	a4, a3, a4
	fld	ft4, 0(a4)
	xori	a4, t0, 127
	slli	a4, a4, 3
	add	a4, a2, a4
	fld	ft5, 0(a4)
	fmv.d.x	ft6, zero
	fmadd.d	fa4, fa4, fa1, ft6
	fmul.d	fa5, fa5, ft4
	fmadd.d	fa5, fa5, ft5, fa4
	j	.LBB5_119
.LBB5_135:                              #   in Loop: Header=BB5_86 Depth=1
	ld	a1, 608(sp)                     # 8-byte Folded Reload
	sgtz	a0, a1
	neg	a0, a0
	and	a0, a0, a1
	li	a1, 10
	ld	a5, 584(sp)                     # 8-byte Folded Reload
	ld	a6, 32(sp)                      # 8-byte Folded Reload
	j	.LBB5_138
.LBB5_136:                              #   in Loop: Header=BB5_138 Depth=2
	slli	a4, a7, 3
	add	a4, a3, a4
	fld	fa4, 0(a4)
	sub	a4, s0, a7
	slli	a4, a4, 3
	add	a4, a3, a4
	fld	fa1, 0(a4)
	fmul.d	fa4, fa4, fa5
	fmadd.d	fa4, fa4, ft2, ft1
	fmul.d	fa5, fa5, fa1
	fmadd.d	fa5, fa5, ft3, fa4
.LBB5_137:                              #   in Loop: Header=BB5_138 Depth=2
	fadd.d	ft0, ft0, fa5
	addi	a1, a1, -1
	addi	a6, a6, 16
	addi	a5, a5, 8
	beqz	a1, .LBB5_153
.LBB5_138:                              #   Parent Loop BB5_86 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bne	s11, t4, .LBB5_141
# %bb.139:                              #   in Loop: Header=BB5_138 Depth=2
	lbu	a7, -6(a6)
	lhu	a4, -8(a6)
	beqz	a7, .LBB5_143
# %bb.140:                              #   in Loop: Header=BB5_138 Depth=2
	addi	a7, a4, 64
	j	.LBB5_144
.LBB5_141:                              #   in Loop: Header=BB5_138 Depth=2
	lbu	a7, -6(a6)
	lhu	a4, -8(a6)
	beqz	a7, .LBB5_146
# %bb.142:                              #   in Loop: Header=BB5_138 Depth=2
	addi	a7, a4, 64
	j	.LBB5_147
.LBB5_143:                              #   in Loop: Header=BB5_138 Depth=2
	sub	a7, t2, a4
.LBB5_144:                              #   in Loop: Header=BB5_138 Depth=2
	ld	a4, 0(a6)
	fcvt.d.lu	fa5, a4
	fmul.d	fa4, fa5, fa3
	flt.d	a4, fa2, fa4
	fmv.d	fa5, fa0
	bnez	a4, .LBB5_136
# %bb.145:                              #   in Loop: Header=BB5_138 Depth=2
	fneg.d	fa5, fa4
	j	.LBB5_136
.LBB5_146:                              #   in Loop: Header=BB5_138 Depth=2
	sub	a7, t2, a4
.LBB5_147:                              #   in Loop: Header=BB5_138 Depth=2
	lw	a4, -4(a5)
	lw	t0, 0(a5)
	mul	a4, a4, a0
	sraiw	a4, a4, 4
	addw	a4, a4, t0
	sgtz	t0, a4
	neg	t0, t0
	and	t0, t0, a4
	li	t1, 127
	blt	t0, t1, .LBB5_149
# %bb.148:                              #   in Loop: Header=BB5_138 Depth=2
	li	t0, 127
.LBB5_149:                              #   in Loop: Header=BB5_138 Depth=2
	ld	a4, 0(a6)
	fcvt.d.lu	fa5, a4
	fmul.d	fa5, fa5, fa3
	flt.d	a4, fa2, fa5
	bnez	a4, .LBB5_151
# %bb.150:                              #   in Loop: Header=BB5_138 Depth=2
	fneg.d	fa5, fa5
	j	.LBB5_152
.LBB5_151:                              #   in Loop: Header=BB5_138 Depth=2
	fld	fa5, %lo(.LCPI5_2)(t3)
.LBB5_152:                              #   in Loop: Header=BB5_138 Depth=2
	slli	a4, a7, 3
	add	a4, a3, a4
	fld	fa4, 0(a4)
	slli	a4, t0, 3
	add	a4, a2, a4
	fld	fa1, 0(a4)
	fmul.d	fa4, fa5, fa4
	sub	a4, t1, a7
	slli	a4, a4, 3
	add	a4, a3, a4
	fld	ft4, 0(a4)
	xori	a4, t0, 127
	slli	a4, a4, 3
	add	a4, a2, a4
	fld	ft5, 0(a4)
	fmv.d.x	ft6, zero
	fmadd.d	fa4, fa4, fa1, ft6
	fmul.d	fa5, fa5, ft4
	fmadd.d	fa5, fa5, ft5, fa4
	j	.LBB5_137
.LBB5_153:                              # %.preheader1
                                        #   in Loop: Header=BB5_86 Depth=1
	li	a1, 10
	ld	a5, 576(sp)                     # 8-byte Folded Reload
	ld	a6, 24(sp)                      # 8-byte Folded Reload
	j	.LBB5_156
.LBB5_154:                              #   in Loop: Header=BB5_156 Depth=2
	slli	a4, a7, 3
	add	a4, a3, a4
	fld	fa4, 0(a4)
	sub	a4, s0, a7
	slli	a4, a4, 3
	add	a4, a3, a4
	fld	fa1, 0(a4)
	fmul.d	fa4, fa4, fa5
	fmv.d.x	ft4, zero
	fmadd.d	fa4, fa4, ft2, ft4
	fmul.d	fa5, fa5, fa1
	fmadd.d	fa5, fa5, ft3, fa4
.LBB5_155:                              #   in Loop: Header=BB5_156 Depth=2
	fadd.d	ft0, ft0, fa5
	addi	a1, a1, -1
	addi	a6, a6, 16
	addi	a5, a5, 8
	beqz	a1, .LBB5_171
.LBB5_156:                              #   Parent Loop BB5_86 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bne	s11, t4, .LBB5_159
# %bb.157:                              #   in Loop: Header=BB5_156 Depth=2
	lbu	a7, -6(a6)
	lhu	a4, -8(a6)
	beqz	a7, .LBB5_161
# %bb.158:                              #   in Loop: Header=BB5_156 Depth=2
	addi	a7, a4, 64
	j	.LBB5_162
.LBB5_159:                              #   in Loop: Header=BB5_156 Depth=2
	lbu	a7, -6(a6)
	lhu	a4, -8(a6)
	beqz	a7, .LBB5_164
# %bb.160:                              #   in Loop: Header=BB5_156 Depth=2
	addi	a7, a4, 64
	j	.LBB5_165
.LBB5_161:                              #   in Loop: Header=BB5_156 Depth=2
	sub	a7, t2, a4
.LBB5_162:                              #   in Loop: Header=BB5_156 Depth=2
	ld	a4, 0(a6)
	fcvt.d.lu	fa5, a4
	fmul.d	fa4, fa5, fa3
	flt.d	a4, fa2, fa4
	fmv.d	fa5, fa0
	bnez	a4, .LBB5_154
# %bb.163:                              #   in Loop: Header=BB5_156 Depth=2
	fneg.d	fa5, fa4
	j	.LBB5_154
.LBB5_164:                              #   in Loop: Header=BB5_156 Depth=2
	sub	a7, t2, a4
.LBB5_165:                              #   in Loop: Header=BB5_156 Depth=2
	lw	a4, -4(a5)
	lw	t0, 0(a5)
	mul	a4, a4, a0
	sraiw	a4, a4, 4
	addw	a4, a4, t0
	sgtz	t0, a4
	neg	t0, t0
	and	t0, t0, a4
	li	t1, 127
	blt	t0, t1, .LBB5_167
# %bb.166:                              #   in Loop: Header=BB5_156 Depth=2
	li	t0, 127
.LBB5_167:                              #   in Loop: Header=BB5_156 Depth=2
	ld	a4, 0(a6)
	fcvt.d.lu	fa5, a4
	fmul.d	fa5, fa5, fa3
	flt.d	a4, fa2, fa5
	bnez	a4, .LBB5_169
# %bb.168:                              #   in Loop: Header=BB5_156 Depth=2
	fneg.d	fa5, fa5
	j	.LBB5_170
.LBB5_169:                              #   in Loop: Header=BB5_156 Depth=2
	fld	fa5, %lo(.LCPI5_2)(t3)
.LBB5_170:                              #   in Loop: Header=BB5_156 Depth=2
	slli	a4, a7, 3
	add	a4, a3, a4
	fld	fa4, 0(a4)
	slli	a4, t0, 3
	add	a4, a2, a4
	fld	fa1, 0(a4)
	fmul.d	fa4, fa5, fa4
	sub	a4, t1, a7
	slli	a4, a4, 3
	add	a4, a3, a4
	fld	ft4, 0(a4)
	xori	a4, t0, 127
	slli	a4, a4, 3
	add	a4, a2, a4
	fld	ft5, 0(a4)
	fmv.d.x	ft6, zero
	fmadd.d	fa4, fa4, fa1, ft6
	fmul.d	fa5, fa5, ft4
	fmadd.d	fa5, fa5, ft5, fa4
	j	.LBB5_155
.LBB5_171:                              #   in Loop: Header=BB5_86 Depth=1
	ld	a1, 608(sp)                     # 8-byte Folded Reload
	sgtz	a0, a1
	neg	a0, a0
	and	a0, a0, a1
	li	a5, 6
	ld	a1, 568(sp)                     # 8-byte Folded Reload
	ld	a6, 16(sp)                      # 8-byte Folded Reload
	j	.LBB5_175
.LBB5_172:                              #   in Loop: Header=BB5_175 Depth=2
	fneg.d	fa5, fa5
.LBB5_173:                              #   in Loop: Header=BB5_175 Depth=2
	slli	a4, a7, 3
	add	a4, a3, a4
	fld	fa4, 0(a4)
	slli	a4, t0, 3
	add	a4, a2, a4
	fld	fa1, 0(a4)
	fmul.d	fa4, fa5, fa4
	sub	a4, t1, a7
	slli	a4, a4, 3
	add	a4, a3, a4
	fld	ft4, 0(a4)
	xori	a4, t0, 127
	slli	a4, a4, 3
	add	a4, a2, a4
	fld	ft5, 0(a4)
	fmv.d.x	ft6, zero
	fmadd.d	fa4, fa4, fa1, ft6
	fmul.d	fa5, fa5, ft4
	fmadd.d	fa5, fa5, ft5, fa4
.LBB5_174:                              #   in Loop: Header=BB5_175 Depth=2
	fadd.d	ft0, ft0, fa5
	addi	a5, a5, -1
	addi	a6, a6, 16
	addi	a1, a1, 8
	beqz	a5, .LBB5_190
.LBB5_175:                              #   Parent Loop BB5_86 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bne	s11, t4, .LBB5_178
# %bb.176:                              #   in Loop: Header=BB5_175 Depth=2
	lbu	a7, -6(a6)
	lhu	a4, -8(a6)
	beqz	a7, .LBB5_180
# %bb.177:                              #   in Loop: Header=BB5_175 Depth=2
	addi	a7, a4, 64
	j	.LBB5_181
.LBB5_178:                              #   in Loop: Header=BB5_175 Depth=2
	lbu	a7, -6(a6)
	lhu	a4, -8(a6)
	beqz	a7, .LBB5_183
# %bb.179:                              #   in Loop: Header=BB5_175 Depth=2
	addi	a7, a4, 64
	j	.LBB5_184
.LBB5_180:                              #   in Loop: Header=BB5_175 Depth=2
	sub	a7, t2, a4
.LBB5_181:                              #   in Loop: Header=BB5_175 Depth=2
	ld	a4, 0(a6)
	fcvt.d.lu	fa5, a4
	fmul.d	fa5, fa5, fa3
	flt.d	a4, fa2, fa5
	bnez	a4, .LBB5_188
# %bb.182:                              #   in Loop: Header=BB5_175 Depth=2
	fneg.d	fa5, fa5
	j	.LBB5_189
.LBB5_183:                              #   in Loop: Header=BB5_175 Depth=2
	sub	a7, t2, a4
.LBB5_184:                              #   in Loop: Header=BB5_175 Depth=2
	lw	a4, -4(a1)
	lw	t0, 0(a1)
	mul	a4, a4, a0
	sraiw	a4, a4, 4
	addw	a4, a4, t0
	sgtz	t0, a4
	neg	t0, t0
	and	t0, t0, a4
	li	t1, 127
	blt	t0, t1, .LBB5_186
# %bb.185:                              #   in Loop: Header=BB5_175 Depth=2
	li	t0, 127
.LBB5_186:                              #   in Loop: Header=BB5_175 Depth=2
	ld	a4, 0(a6)
	fcvt.d.lu	fa5, a4
	fmul.d	fa5, fa5, fa3
	flt.d	a4, fa2, fa5
	beqz	a4, .LBB5_172
# %bb.187:                              #   in Loop: Header=BB5_175 Depth=2
	fld	fa5, %lo(.LCPI5_2)(t3)
	j	.LBB5_173
.LBB5_188:                              #   in Loop: Header=BB5_175 Depth=2
	fld	fa5, %lo(.LCPI5_2)(t3)
.LBB5_189:                              #   in Loop: Header=BB5_175 Depth=2
	slli	a4, a7, 3
	add	a4, a3, a4
	fld	fa4, 0(a4)
	sub	a4, s0, a7
	slli	a4, a4, 3
	add	a4, a3, a4
	fld	fa1, 0(a4)
	fmul.d	fa4, fa4, fa5
	fmv.d.x	ft4, zero
	fmadd.d	fa4, fa4, ft2, ft4
	fmul.d	fa5, fa5, fa1
	fmadd.d	fa5, fa5, ft3, fa4
	j	.LBB5_174
.LBB5_190:                              # %.preheader
                                        #   in Loop: Header=BB5_86 Depth=1
	li	a5, 6
	ld	a1, 560(sp)                     # 8-byte Folded Reload
	ld	a6, 8(sp)                       # 8-byte Folded Reload
	j	.LBB5_194
.LBB5_191:                              #   in Loop: Header=BB5_194 Depth=2
	fneg.d	fa5, fa5
.LBB5_192:                              #   in Loop: Header=BB5_194 Depth=2
	slli	a4, a7, 3
	add	a4, a3, a4
	fld	fa4, 0(a4)
	sub	a4, s0, a7
	slli	a4, a4, 3
	add	a4, a3, a4
	fld	fa1, 0(a4)
	fmul.d	fa4, fa4, fa5
	fmv.d.x	ft4, zero
	fmadd.d	fa4, fa4, ft2, ft4
	fmul.d	fa5, fa5, fa1
	fmadd.d	fa5, fa5, ft3, fa4
.LBB5_193:                              #   in Loop: Header=BB5_194 Depth=2
	fadd.d	ft0, ft0, fa5
	addi	a5, a5, -1
	addi	a6, a6, 16
	addi	a1, a1, 8
	beqz	a5, .LBB5_209
.LBB5_194:                              #   Parent Loop BB5_86 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bne	s11, t4, .LBB5_197
# %bb.195:                              #   in Loop: Header=BB5_194 Depth=2
	lbu	a7, -6(a6)
	lhu	a4, -8(a6)
	beqz	a7, .LBB5_199
# %bb.196:                              #   in Loop: Header=BB5_194 Depth=2
	addi	a7, a4, 64
	j	.LBB5_200
.LBB5_197:                              #   in Loop: Header=BB5_194 Depth=2
	lbu	a7, -6(a6)
	lhu	a4, -8(a6)
	beqz	a7, .LBB5_202
# %bb.198:                              #   in Loop: Header=BB5_194 Depth=2
	addi	a7, a4, 64
	j	.LBB5_203
.LBB5_199:                              #   in Loop: Header=BB5_194 Depth=2
	sub	a7, t2, a4
.LBB5_200:                              #   in Loop: Header=BB5_194 Depth=2
	ld	a4, 0(a6)
	fcvt.d.lu	fa5, a4
	fmul.d	fa5, fa5, fa3
	flt.d	a4, fa2, fa5
	beqz	a4, .LBB5_191
# %bb.201:                              #   in Loop: Header=BB5_194 Depth=2
	fld	fa5, %lo(.LCPI5_2)(t3)
	j	.LBB5_192
.LBB5_202:                              #   in Loop: Header=BB5_194 Depth=2
	sub	a7, t2, a4
.LBB5_203:                              #   in Loop: Header=BB5_194 Depth=2
	lw	a4, -4(a1)
	lw	t0, 0(a1)
	mul	a4, a4, a0
	sraiw	a4, a4, 4
	addw	a4, a4, t0
	sgtz	t0, a4
	neg	t0, t0
	and	t0, t0, a4
	li	t1, 127
	blt	t0, t1, .LBB5_205
# %bb.204:                              #   in Loop: Header=BB5_194 Depth=2
	li	t0, 127
.LBB5_205:                              #   in Loop: Header=BB5_194 Depth=2
	ld	a4, 0(a6)
	fcvt.d.lu	fa5, a4
	fmul.d	fa5, fa5, fa3
	flt.d	a4, fa2, fa5
	bnez	a4, .LBB5_207
# %bb.206:                              #   in Loop: Header=BB5_194 Depth=2
	fneg.d	fa5, fa5
	j	.LBB5_208
.LBB5_207:                              #   in Loop: Header=BB5_194 Depth=2
	fld	fa5, %lo(.LCPI5_2)(t3)
.LBB5_208:                              #   in Loop: Header=BB5_194 Depth=2
	slli	a4, a7, 3
	add	a4, a3, a4
	fld	fa4, 0(a4)
	slli	a4, t0, 3
	add	a4, a2, a4
	fld	fa1, 0(a4)
	fmul.d	fa4, fa5, fa4
	sub	a4, t1, a7
	slli	a4, a4, 3
	add	a4, a3, a4
	fld	ft4, 0(a4)
	xori	a4, t0, 127
	slli	a4, a4, 3
	add	a4, a2, a4
	fld	ft5, 0(a4)
	fmv.d.x	ft6, zero
	fmadd.d	fa4, fa4, fa1, ft6
	fmul.d	fa5, fa5, ft4
	fmadd.d	fa5, fa5, ft5, fa4
	j	.LBB5_193
.LBB5_209:                              #   in Loop: Header=BB5_86 Depth=1
	slli	a6, t6, 5
	beq	s11, t4, .LBB5_211
# %bb.210:                              #   in Loop: Header=BB5_86 Depth=1
	lui	a1, %hi(INIT_DELTA_QP_P)
	addi	a1, a1, %lo(INIT_DELTA_QP_P)
	j	.LBB5_212
.LBB5_211:                              #   in Loop: Header=BB5_86 Depth=1
	lui	a1, %hi(INIT_DELTA_QP_I)
	addi	a1, a1, %lo(INIT_DELTA_QP_I)
.LBB5_212:                              #   in Loop: Header=BB5_86 Depth=1
	add	a1, a1, a6
	addi	a1, a1, 4
	lw	a0, 0(a1)
	sgtz	a4, a0
	neg	a5, a4
	and	a5, a5, a0
	li	a0, 127
	blt	a5, a0, .LBB5_214
# %bb.213:                              #   in Loop: Header=BB5_86 Depth=1
	li	a5, 127
.LBB5_214:                              #   in Loop: Header=BB5_86 Depth=1
	xori	a4, a5, 127
	slli	a4, a4, 3
	add	a4, a2, a4
	fld	fa5, 0(a4)
	fsd	fa5, 480(sp)                    # 8-byte Folded Spill
	lw	a4, 8(a1)
	slli	a5, a5, 3
	add	a5, a2, a5
	fld	ft8, 0(a5)
	sgtz	a5, a4
	neg	a5, a5
	and	a5, a5, a4
	blt	a5, a0, .LBB5_216
# %bb.215:                              #   in Loop: Header=BB5_86 Depth=1
	li	a5, 127
.LBB5_216:                              #   in Loop: Header=BB5_86 Depth=1
	xori	a4, a5, 127
	slli	a4, a4, 3
	add	a4, a2, a4
	fld	fa5, 0(a4)
	fsd	fa5, 472(sp)                    # 8-byte Folded Spill
	lw	a4, 16(a1)
	slli	a5, a5, 3
	add	a5, a2, a5
	fld	fa5, 0(a5)
	fsd	fa5, 464(sp)                    # 8-byte Folded Spill
	sgtz	a5, a4
	neg	a5, a5
	and	a5, a5, a4
	blt	a5, a0, .LBB5_218
# %bb.217:                              #   in Loop: Header=BB5_86 Depth=1
	li	a5, 127
.LBB5_218:                              #   in Loop: Header=BB5_86 Depth=1
	xori	a4, a5, 127
	slli	a4, a4, 3
	add	a4, a2, a4
	fld	fa5, 0(a4)
	fsd	fa5, 456(sp)                    # 8-byte Folded Spill
	lw	a1, 24(a1)
	slli	a5, a5, 3
	add	a5, a2, a5
	fld	fa5, 0(a5)
	fsd	fa5, 448(sp)                    # 8-byte Folded Spill
	sgtz	a4, a1
	neg	a4, a4
	and	a1, a4, a1
	blt	a1, a0, .LBB5_220
# %bb.219:                              #   in Loop: Header=BB5_86 Depth=1
	li	a1, 127
.LBB5_220:                              #   in Loop: Header=BB5_86 Depth=1
	xori	a4, a1, 127
	slli	a4, a4, 3
	add	a4, a2, a4
	fld	fa5, 0(a4)
	fsd	fa5, 440(sp)                    # 8-byte Folded Spill
	slli	a1, a1, 3
	add	a1, a2, a1
	fld	fa5, 0(a1)
	fsd	fa5, 432(sp)                    # 8-byte Folded Spill
	beq	s11, t4, .LBB5_222
# %bb.221:                              #   in Loop: Header=BB5_86 Depth=1
	lui	a1, %hi(INIT_MB_AFF_P)
	addi	a1, a1, %lo(INIT_MB_AFF_P)
	j	.LBB5_223
.LBB5_222:                              #   in Loop: Header=BB5_86 Depth=1
	lui	a1, %hi(INIT_MB_AFF_I)
	addi	a1, a1, %lo(INIT_MB_AFF_I)
.LBB5_223:                              #   in Loop: Header=BB5_86 Depth=1
	add	a1, a1, a6
	lw	a4, 0(a1)
	ld	t0, 608(sp)                     # 8-byte Folded Reload
	sgtz	a5, t0
	neg	a5, a5
	lw	a7, 4(a1)
	and	a5, a5, t0
	mul	a4, a4, a5
	sraiw	a4, a4, 4
	addw	a4, a4, a7
	sgtz	a7, a4
	neg	a7, a7
	and	a4, a7, a4
	blt	a4, a0, .LBB5_225
# %bb.224:                              #   in Loop: Header=BB5_86 Depth=1
	li	a4, 127
.LBB5_225:                              #   in Loop: Header=BB5_86 Depth=1
	xori	a7, a4, 127
	slli	a7, a7, 3
	add	a7, a2, a7
	fld	fa5, 0(a7)
	fsd	fa5, 424(sp)                    # 8-byte Folded Spill
	slli	a4, a4, 3
	lw	a7, 8(a1)
	add	a4, a2, a4
	lw	t0, 12(a1)
	fld	ft10, 0(a4)
	mul	a4, a7, a5
	sraiw	a4, a4, 4
	addw	a4, a4, t0
	sgtz	a7, a4
	neg	a7, a7
	and	a4, a7, a4
	blt	a4, a0, .LBB5_227
# %bb.226:                              #   in Loop: Header=BB5_86 Depth=1
	li	a4, 127
.LBB5_227:                              #   in Loop: Header=BB5_86 Depth=1
	xori	a7, a4, 127
	slli	a7, a7, 3
	add	a7, a2, a7
	fld	ft11, 0(a7)
	slli	a4, a4, 3
	lw	a7, 16(a1)
	add	a4, a2, a4
	lw	t0, 20(a1)
	fld	fs0, 0(a4)
	mul	a4, a7, a5
	sraiw	a4, a4, 4
	addw	a4, a4, t0
	sgtz	a7, a4
	neg	a7, a7
	and	a4, a7, a4
	blt	a4, a0, .LBB5_229
# %bb.228:                              #   in Loop: Header=BB5_86 Depth=1
	li	a4, 127
.LBB5_229:                              #   in Loop: Header=BB5_86 Depth=1
	xori	a7, a4, 127
	slli	a7, a7, 3
	add	a7, a2, a7
	fld	fs1, 0(a7)
	slli	a4, a4, 3
	lw	a7, 24(a1)
	add	a4, a2, a4
	lw	a1, 28(a1)
	fld	fs2, 0(a4)
	mul	a4, a7, a5
	sraiw	a4, a4, 4
	addw	a1, a4, a1
	sgtz	a4, a1
	neg	a4, a4
	and	a1, a4, a1
	blt	a1, a0, .LBB5_231
# %bb.230:                              #   in Loop: Header=BB5_86 Depth=1
	li	a1, 127
.LBB5_231:                              #   in Loop: Header=BB5_86 Depth=1
	xori	a4, a1, 127
	slli	a4, a4, 3
	add	a4, a2, a4
	fld	fs3, 0(a4)
	slli	a1, a1, 3
	add	a1, a2, a1
	fld	fs4, 0(a1)
	li	a1, 24
	mul	a1, t6, a1
	beq	s11, t4, .LBB5_233
# %bb.232:                              #   in Loop: Header=BB5_86 Depth=1
	lui	a4, %hi(INIT_TRANSFORM_SIZE_P)
	addi	a4, a4, %lo(INIT_TRANSFORM_SIZE_P)
	j	.LBB5_234
.LBB5_233:                              #   in Loop: Header=BB5_86 Depth=1
	lui	a4, %hi(INIT_TRANSFORM_SIZE_I)
	addi	a4, a4, %lo(INIT_TRANSFORM_SIZE_I)
.LBB5_234:                              #   in Loop: Header=BB5_86 Depth=1
	add	a1, a4, a1
	lw	a4, 0(a1)
	lw	a7, 4(a1)
	mul	a4, a4, a5
	sraiw	a4, a4, 4
	addw	a4, a4, a7
	sgtz	a7, a4
	neg	a7, a7
	and	a4, a7, a4
	blt	a4, a0, .LBB5_236
# %bb.235:                              #   in Loop: Header=BB5_86 Depth=1
	li	a4, 127
.LBB5_236:                              #   in Loop: Header=BB5_86 Depth=1
	xori	a7, a4, 127
	slli	a7, a7, 3
	add	a7, a2, a7
	fld	fs5, 0(a7)
	slli	a4, a4, 3
	lw	a7, 8(a1)
	add	a4, a2, a4
	lw	t0, 12(a1)
	fld	fs6, 0(a4)
	mul	a4, a7, a5
	sraiw	a4, a4, 4
	addw	a4, a4, t0
	sgtz	a7, a4
	neg	a7, a7
	and	a4, a7, a4
	blt	a4, a0, .LBB5_238
# %bb.237:                              #   in Loop: Header=BB5_86 Depth=1
	li	a4, 127
.LBB5_238:                              #   in Loop: Header=BB5_86 Depth=1
	xori	a7, a4, 127
	slli	a7, a7, 3
	add	a7, a2, a7
	fld	fs7, 0(a7)
	slli	a4, a4, 3
	lw	a7, 16(a1)
	add	a4, a2, a4
	lw	a1, 20(a1)
	fld	fs8, 0(a4)
	mul	a4, a7, a5
	sraiw	a4, a4, 4
	addw	a1, a4, a1
	sgtz	a4, a1
	neg	a4, a4
	and	a1, a4, a1
	blt	a1, a0, .LBB5_240
# %bb.239:                              #   in Loop: Header=BB5_86 Depth=1
	li	a1, 127
.LBB5_240:                              #   in Loop: Header=BB5_86 Depth=1
	xori	a4, a1, 127
	slli	a4, a4, 3
	add	a4, a2, a4
	fld	fs9, 0(a4)
	slli	a1, a1, 3
	add	a1, a2, a1
	fld	fs10, 0(a1)
	slli	a1, t6, 4
	beq	s11, t4, .LBB5_242
# %bb.241:                              #   in Loop: Header=BB5_86 Depth=1
	lui	a4, %hi(INIT_IPR_P)
	addi	a4, a4, %lo(INIT_IPR_P)
	j	.LBB5_243
.LBB5_242:                              #   in Loop: Header=BB5_86 Depth=1
	lui	a4, %hi(INIT_IPR_I)
	addi	a4, a4, %lo(INIT_IPR_I)
.LBB5_243:                              #   in Loop: Header=BB5_86 Depth=1
	add	a1, a4, a1
	lw	a4, 0(a1)
	lw	a7, 4(a1)
	mul	a4, a4, a5
	sraiw	a4, a4, 4
	addw	a4, a4, a7
	sgtz	a7, a4
	neg	a7, a7
	and	a4, a7, a4
	blt	a4, a0, .LBB5_245
# %bb.244:                              #   in Loop: Header=BB5_86 Depth=1
	li	a4, 127
.LBB5_245:                              #   in Loop: Header=BB5_86 Depth=1
	xori	a7, a4, 127
	slli	a7, a7, 3
	add	a7, a2, a7
	fld	fs11, 0(a7)
	slli	a4, a4, 3
	lw	a7, 8(a1)
	add	a4, a2, a4
	lw	a1, 12(a1)
	fld	fa5, 0(a4)
	mul	a4, a7, a5
	sraiw	a4, a4, 4
	addw	a1, a4, a1
	sgtz	a4, a1
	neg	a4, a4
	and	a1, a4, a1
	blt	a1, a0, .LBB5_247
# %bb.246:                              #   in Loop: Header=BB5_86 Depth=1
	li	a1, 127
.LBB5_247:                              #   in Loop: Header=BB5_86 Depth=1
	xori	a4, a1, 127
	slli	a4, a4, 3
	add	a4, a2, a4
	fld	fa4, 0(a4)
	slli	a1, a1, 3
	add	a1, a2, a1
	fld	fa1, 0(a1)
	beq	s11, t4, .LBB5_249
# %bb.248:                              #   in Loop: Header=BB5_86 Depth=1
	lui	a1, %hi(INIT_CIPR_P)
	addi	a1, a1, %lo(INIT_CIPR_P)
	j	.LBB5_250
.LBB5_249:                              #   in Loop: Header=BB5_86 Depth=1
	lui	a1, %hi(INIT_CIPR_I)
	addi	a1, a1, %lo(INIT_CIPR_I)
.LBB5_250:                              #   in Loop: Header=BB5_86 Depth=1
	add	a6, a1, a6
	lw	a1, 0(a6)
	lw	a4, 4(a6)
	mul	a1, a1, a5
	sraiw	a1, a1, 4
	addw	a1, a1, a4
	sgtz	a4, a1
	neg	a4, a4
	and	a1, a4, a1
	blt	a1, a0, .LBB5_252
# %bb.251:                              #   in Loop: Header=BB5_86 Depth=1
	li	a1, 127
.LBB5_252:                              #   in Loop: Header=BB5_86 Depth=1
	slli	a4, a1, 3
	add	a4, a2, a4
	fld	ft3, 0(a4)
	xori	a1, a1, 127
	slli	a1, a1, 3
	lw	a4, 8(a6)
	add	a1, a2, a1
	lw	a7, 12(a6)
	fld	ft4, 0(a1)
	mul	a1, a4, a5
	sraiw	a1, a1, 4
	addw	a1, a1, a7
	sgtz	a4, a1
	neg	a4, a4
	and	a1, a4, a1
	blt	a1, a0, .LBB5_254
# %bb.253:                              #   in Loop: Header=BB5_86 Depth=1
	li	a1, 127
.LBB5_254:                              #   in Loop: Header=BB5_86 Depth=1
	slli	a4, a1, 3
	add	a4, a2, a4
	fld	ft5, 0(a4)
	xori	a1, a1, 127
	slli	a1, a1, 3
	lw	a4, 16(a6)
	add	a1, a2, a1
	lw	a7, 20(a6)
	fld	ft6, 0(a1)
	mul	a1, a4, a5
	sraiw	a1, a1, 4
	addw	a1, a1, a7
	sgtz	a4, a1
	neg	a4, a4
	and	a1, a4, a1
	blt	a1, a0, .LBB5_256
# %bb.255:                              #   in Loop: Header=BB5_86 Depth=1
	li	a1, 127
.LBB5_256:                              #   in Loop: Header=BB5_86 Depth=1
	slli	a4, a1, 3
	add	a4, a2, a4
	fld	ft7, 0(a4)
	xori	a1, a1, 127
	slli	a1, a1, 3
	lw	a4, 24(a6)
	add	a1, a2, a1
	lw	a6, 28(a6)
	fld	fa6, 0(a1)
	mul	a1, a4, a5
	sraiw	a1, a1, 4
	addw	a1, a1, a6
	sgtz	a4, a1
	neg	a4, a4
	and	a1, a4, a1
	blt	a1, a0, .LBB5_258
# %bb.257:                              #   in Loop: Header=BB5_86 Depth=1
	li	a1, 127
.LBB5_258:                              #   in Loop: Header=BB5_86 Depth=1
	li	a0, 0
	fmv.d.x	ft2, zero
	fld	fa7, 376(sp)                    # 8-byte Folded Reload
	fmadd.d	fa7, fa7, ft8, ft2
	fld	ft8, 384(sp)                    # 8-byte Folded Reload
	fld	ft9, 480(sp)                    # 8-byte Folded Reload
	fmadd.d	fa7, ft8, ft9, fa7
	fadd.d	ft0, ft0, fa7
	fld	fa7, 360(sp)                    # 8-byte Folded Reload
	fld	ft8, 464(sp)                    # 8-byte Folded Reload
	fmadd.d	fa7, fa7, ft8, ft2
	fld	ft8, 368(sp)                    # 8-byte Folded Reload
	fld	ft9, 472(sp)                    # 8-byte Folded Reload
	fmadd.d	fa7, ft8, ft9, fa7
	fadd.d	ft0, ft0, fa7
	fld	fa7, 344(sp)                    # 8-byte Folded Reload
	fld	ft8, 448(sp)                    # 8-byte Folded Reload
	fmadd.d	fa7, fa7, ft8, ft2
	fld	ft8, 352(sp)                    # 8-byte Folded Reload
	fld	ft9, 456(sp)                    # 8-byte Folded Reload
	fmadd.d	fa7, ft8, ft9, fa7
	fadd.d	ft0, ft0, fa7
	fld	fa7, 328(sp)                    # 8-byte Folded Reload
	fld	ft8, 432(sp)                    # 8-byte Folded Reload
	fmadd.d	fa7, fa7, ft8, ft2
	fld	ft8, 336(sp)                    # 8-byte Folded Reload
	fld	ft9, 440(sp)                    # 8-byte Folded Reload
	fmadd.d	fa7, ft8, ft9, fa7
	fadd.d	ft0, ft0, fa7
	fld	fa7, 312(sp)                    # 8-byte Folded Reload
	fmadd.d	fa7, fa7, ft10, ft2
	fld	ft8, 320(sp)                    # 8-byte Folded Reload
	fld	ft9, 424(sp)                    # 8-byte Folded Reload
	fmadd.d	fa7, ft8, ft9, fa7
	fadd.d	ft0, ft0, fa7
	fld	fa7, 296(sp)                    # 8-byte Folded Reload
	fmadd.d	fa7, fa7, fs0, ft2
	fld	ft8, 304(sp)                    # 8-byte Folded Reload
	fmadd.d	fa7, ft8, ft11, fa7
	fadd.d	ft0, ft0, fa7
	fld	fa7, 280(sp)                    # 8-byte Folded Reload
	fmadd.d	fa7, fa7, fs2, ft2
	fld	ft8, 288(sp)                    # 8-byte Folded Reload
	fmadd.d	fa7, ft8, fs1, fa7
	fadd.d	ft0, ft0, fa7
	fld	fa7, 264(sp)                    # 8-byte Folded Reload
	fmadd.d	fa7, fa7, fs4, ft2
	fld	ft8, 272(sp)                    # 8-byte Folded Reload
	fmadd.d	fa7, ft8, fs3, fa7
	fadd.d	ft0, ft0, fa7
	fld	fa7, 248(sp)                    # 8-byte Folded Reload
	fmadd.d	fa7, fa7, fs6, ft2
	fld	ft8, 256(sp)                    # 8-byte Folded Reload
	fmadd.d	fa7, ft8, fs5, fa7
	fadd.d	ft0, ft0, fa7
	fld	fa7, 232(sp)                    # 8-byte Folded Reload
	fmadd.d	fa7, fa7, fs8, ft2
	fld	ft8, 240(sp)                    # 8-byte Folded Reload
	fmadd.d	fa7, ft8, fs7, fa7
	fadd.d	ft0, ft0, fa7
	fld	fa7, 216(sp)                    # 8-byte Folded Reload
	fmadd.d	fa7, fa7, fs10, ft2
	fld	ft8, 224(sp)                    # 8-byte Folded Reload
	fmadd.d	fa7, ft8, fs9, fa7
	fadd.d	ft0, ft0, fa7
	fld	fa7, 200(sp)                    # 8-byte Folded Reload
	fmadd.d	fa5, fa7, fa5, ft2
	fld	fa7, 208(sp)                    # 8-byte Folded Reload
	fmadd.d	fa5, fa7, fs11, fa5
	fadd.d	fa5, ft0, fa5
	fld	ft0, 184(sp)                    # 8-byte Folded Reload
	fmadd.d	fa1, ft0, fa1, ft2
	fld	ft0, 192(sp)                    # 8-byte Folded Reload
	fmadd.d	fa4, ft0, fa4, fa1
	fadd.d	fa5, fa5, fa4
	fld	fa4, 176(sp)                    # 8-byte Folded Reload
	fmadd.d	fa4, fa4, ft3, ft2
	fld	fa1, 168(sp)                    # 8-byte Folded Reload
	fmadd.d	fa4, fa1, ft4, fa4
	fadd.d	fa5, fa5, fa4
	fld	fa4, 160(sp)                    # 8-byte Folded Reload
	fmadd.d	fa4, fa4, ft5, ft2
	fld	fa1, 152(sp)                    # 8-byte Folded Reload
	fmadd.d	fa4, fa1, ft6, fa4
	fadd.d	fa5, fa5, fa4
	fld	fa4, 144(sp)                    # 8-byte Folded Reload
	fmadd.d	fa4, fa4, ft7, ft2
	slli	a4, a1, 3
	add	a4, a2, a4
	fld	fa1, 0(a4)
	xori	a1, a1, 127
	slli	a1, a1, 3
	add	a1, a2, a1
	fld	ft0, 0(a1)
	fld	ft3, 136(sp)                    # 8-byte Folded Reload
	fmadd.d	fa4, ft3, fa6, fa4
	fadd.d	fa5, fa5, fa4
	fld	fa4, 128(sp)                    # 8-byte Folded Reload
	fmadd.d	fa4, fa4, fa1, ft2
	fld	fa1, 120(sp)                    # 8-byte Folded Reload
	fmadd.d	fa4, fa1, ft0, fa4
	fadd.d	ft0, fa5, fa4
	ld	s5, 88(sp)                      # 8-byte Folded Reload
	lui	a6, %hi(INIT_CBP_I)
	addi	a6, a6, %lo(INIT_CBP_I)
	mv	t0, s1
	j	.LBB5_260
.LBB5_259:                              #   in Loop: Header=BB5_260 Depth=2
	addi	a0, a0, 1
	addi	t0, t0, 32
	addi	a6, a6, 32
	addi	s5, s5, 64
	li	a1, 3
	beq	a0, a1, .LBB5_273
.LBB5_260:                              #   Parent Loop BB5_86 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_262 Depth 3
	li	t1, 0
	li	a7, 0
	mv	a1, s5
	j	.LBB5_262
.LBB5_261:                              #   in Loop: Header=BB5_262 Depth=3
	slli	t6, a4, 3
	add	t6, a2, t6
	fld	ft3, 0(t6)
	xori	a4, a4, 127
	slli	a4, a4, 3
	add	a4, a2, a4
	fld	ft4, 0(a4)
	fmul.d	fa5, fa4, fa5
	fmul.d	fa4, fa4, fa1
	fmadd.d	fa5, fa5, ft3, ft2
	fmadd.d	fa5, fa4, ft4, fa5
	fadd.d	ft0, ft0, fa5
	addi	a7, a7, 1
	addi	t1, t1, 8
	addi	a1, a1, 16
	beq	t1, s2, .LBB5_259
.LBB5_262:                              #   Parent Loop BB5_86 Depth=1
                                        #     Parent Loop BB5_260 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	t6, 8(a1)
	lbu	ra, 2(a1)
	lhu	a4, 0(a1)
	beqz	ra, .LBB5_264
# %bb.263:                              #   in Loop: Header=BB5_262 Depth=3
	addi	ra, a4, 64
	j	.LBB5_265
.LBB5_264:                              #   in Loop: Header=BB5_262 Depth=3
	sub	ra, t2, a4
.LBB5_265:                              #   in Loop: Header=BB5_262 Depth=3
	fcvt.d.lu	fa4, t6
	slli	a4, ra, 3
	add	a4, a3, a4
	fld	fa5, 0(a4)
	fmul.d	fa4, fa4, fa3
	flt.d	a4, fa2, fa4
	bnez	a4, .LBB5_267
# %bb.266:                              #   in Loop: Header=BB5_262 Depth=3
	fneg.d	fa4, fa4
	j	.LBB5_268
.LBB5_267:                              #   in Loop: Header=BB5_262 Depth=3
	fld	fa4, %lo(.LCPI5_2)(t3)
.LBB5_268:                              #   in Loop: Header=BB5_262 Depth=3
	sub	a4, s0, ra
	slli	a4, a4, 3
	add	a4, a3, a4
	fld	fa1, 0(a4)
	bne	s11, t4, .LBB5_270
# %bb.269:                              #   in Loop: Header=BB5_262 Depth=3
	add	a4, a6, t1
	lw	t6, 0(a4)
	slli	a4, a0, 5
	lui	ra, %hi(INIT_CBP_I)
	addi	ra, ra, %lo(INIT_CBP_I)
	add	a4, ra, a4
	slli	ra, a7, 3
	add	a4, a4, ra
	j	.LBB5_271
.LBB5_270:                              #   in Loop: Header=BB5_262 Depth=3
	add	a4, t0, t1
	lw	t6, 0(a4)
.LBB5_271:                              #   in Loop: Header=BB5_262 Depth=3
	addi	a4, a4, 4
	mulw	t6, t6, a5
	lw	a4, 0(a4)
	srli	t6, t6, 4
	addw	a4, t6, a4
	sgtz	t6, a4
	neg	t6, t6
	and	a4, t6, a4
	li	t6, 127
	blt	a4, t6, .LBB5_261
# %bb.272:                              #   in Loop: Header=BB5_262 Depth=3
	li	a4, 127
	j	.LBB5_261
.LBB5_273:                              #   in Loop: Header=BB5_86 Depth=1
	li	a0, 0
	ld	a5, 608(sp)                     # 8-byte Folded Reload
	sgtz	a1, a5
	neg	a1, a1
	and	a5, a1, a5
	ld	a1, 80(sp)                      # 8-byte Folded Reload
	mv	a6, s9
	ld	t0, 552(sp)                     # 8-byte Folded Reload
	j	.LBB5_275
.LBB5_274:                              #   in Loop: Header=BB5_275 Depth=2
	addi	a0, a0, 1
	addi	t0, t0, 32
	addi	a6, a6, 32
	addi	a1, a1, 64
	li	a4, 10
	beq	a0, a4, .LBB5_288
.LBB5_275:                              #   Parent Loop BB5_86 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_277 Depth 3
	li	t1, 0
	li	a7, 0
	mv	s5, a1
	j	.LBB5_277
.LBB5_276:                              #   in Loop: Header=BB5_277 Depth=3
	slli	t6, a4, 3
	add	t6, a2, t6
	fld	ft3, 0(t6)
	xori	a4, a4, 127
	slli	a4, a4, 3
	add	a4, a2, a4
	fld	ft4, 0(a4)
	fmul.d	fa5, fa4, fa5
	fmul.d	fa4, fa4, fa1
	fmadd.d	fa5, fa5, ft3, ft2
	fmadd.d	fa5, fa4, ft4, fa5
	fadd.d	ft0, ft0, fa5
	addi	a7, a7, 1
	addi	t1, t1, 8
	addi	s5, s5, 16
	beq	t1, s2, .LBB5_274
.LBB5_277:                              #   Parent Loop BB5_86 Depth=1
                                        #     Parent Loop BB5_275 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	t6, 8(s5)
	lbu	ra, 2(s5)
	lhu	a4, 0(s5)
	beqz	ra, .LBB5_279
# %bb.278:                              #   in Loop: Header=BB5_277 Depth=3
	addi	ra, a4, 64
	j	.LBB5_280
.LBB5_279:                              #   in Loop: Header=BB5_277 Depth=3
	sub	ra, t2, a4
.LBB5_280:                              #   in Loop: Header=BB5_277 Depth=3
	fcvt.d.lu	fa4, t6
	slli	a4, ra, 3
	add	a4, a3, a4
	fld	fa5, 0(a4)
	fmul.d	fa4, fa4, fa3
	flt.d	a4, fa2, fa4
	bnez	a4, .LBB5_282
# %bb.281:                              #   in Loop: Header=BB5_277 Depth=3
	fneg.d	fa4, fa4
	j	.LBB5_283
.LBB5_282:                              #   in Loop: Header=BB5_277 Depth=3
	fld	fa4, %lo(.LCPI5_2)(t3)
.LBB5_283:                              #   in Loop: Header=BB5_277 Depth=3
	sub	a4, s0, ra
	slli	a4, a4, 3
	add	a4, a3, a4
	fld	fa1, 0(a4)
	bne	s11, t4, .LBB5_285
# %bb.284:                              #   in Loop: Header=BB5_277 Depth=3
	add	a4, a6, t1
	lw	t6, 0(a4)
	slli	a4, a0, 5
	add	a4, s9, a4
	slli	ra, a7, 3
	add	a4, a4, ra
	j	.LBB5_286
.LBB5_285:                              #   in Loop: Header=BB5_277 Depth=3
	add	a4, t0, t1
	lw	t6, 0(a4)
.LBB5_286:                              #   in Loop: Header=BB5_277 Depth=3
	addi	a4, a4, 4
	mulw	t6, t6, a5
	lw	a4, 0(a4)
	srli	t6, t6, 4
	addw	a4, t6, a4
	sgtz	t6, a4
	neg	t6, t6
	and	a4, t6, a4
	li	t6, 127
	blt	a4, t6, .LBB5_276
# %bb.287:                              #   in Loop: Header=BB5_277 Depth=3
	li	a4, 127
	j	.LBB5_276
.LBB5_288:                              #   in Loop: Header=BB5_86 Depth=1
	sd	s1, 480(sp)                     # 8-byte Folded Spill
	li	a0, 0
	ld	a5, 608(sp)                     # 8-byte Folded Reload
	sgtz	a1, a5
	neg	a1, a1
	and	a5, a1, a5
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	lui	a1, %hi(INIT_MAP_I)
	addi	a1, a1, %lo(INIT_MAP_I)
	ld	t0, 544(sp)                     # 8-byte Folded Reload
	j	.LBB5_290
.LBB5_289:                              #   in Loop: Header=BB5_290 Depth=2
	addi	a0, a0, 1
	addi	t0, t0, 120
	addi	a1, a1, 120
	addi	ra, ra, 240
	li	a4, 10
	beq	a0, a4, .LBB5_303
.LBB5_290:                              #   Parent Loop BB5_86 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_292 Depth 3
	li	t1, 0
	li	a7, 0
	mul	s5, a0, s3
	lui	a4, %hi(INIT_MAP_I)
	addi	a4, a4, %lo(INIT_MAP_I)
	add	s5, a4, s5
	mv	a6, ra
	j	.LBB5_292
.LBB5_291:                              #   in Loop: Header=BB5_292 Depth=3
	slli	t6, a4, 3
	add	t6, a2, t6
	fld	ft3, 0(t6)
	xori	a4, a4, 127
	slli	a4, a4, 3
	add	a4, a2, a4
	fld	ft4, 0(a4)
	fmul.d	fa5, fa4, fa5
	fmul.d	fa4, fa4, fa1
	fmadd.d	fa5, fa5, ft3, ft2
	fmadd.d	fa5, fa4, ft4, fa5
	fadd.d	ft0, ft0, fa5
	addi	a7, a7, 1
	addi	t1, t1, 8
	addi	a6, a6, 16
	beq	t1, s3, .LBB5_289
.LBB5_292:                              #   Parent Loop BB5_86 Depth=1
                                        #     Parent Loop BB5_290 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a4, 8(a6)
	lbu	s1, 2(a6)
	lhu	t6, 0(a6)
	beqz	s1, .LBB5_294
# %bb.293:                              #   in Loop: Header=BB5_292 Depth=3
	addi	t6, t6, 64
	j	.LBB5_295
.LBB5_294:                              #   in Loop: Header=BB5_292 Depth=3
	sub	t6, t2, t6
.LBB5_295:                              #   in Loop: Header=BB5_292 Depth=3
	fcvt.d.lu	fa4, a4
	slli	a4, t6, 3
	add	a4, a3, a4
	fld	fa5, 0(a4)
	fmul.d	fa4, fa4, fa3
	flt.d	a4, fa2, fa4
	bnez	a4, .LBB5_297
# %bb.296:                              #   in Loop: Header=BB5_292 Depth=3
	fneg.d	fa4, fa4
	j	.LBB5_298
.LBB5_297:                              #   in Loop: Header=BB5_292 Depth=3
	fld	fa4, %lo(.LCPI5_2)(t3)
.LBB5_298:                              #   in Loop: Header=BB5_292 Depth=3
	sub	a4, s0, t6
	slli	a4, a4, 3
	add	a4, a3, a4
	fld	fa1, 0(a4)
	bne	s11, t4, .LBB5_300
# %bb.299:                              #   in Loop: Header=BB5_292 Depth=3
	add	a4, a1, t1
	lw	t6, 0(a4)
	slli	a4, a7, 3
	add	a4, s5, a4
	j	.LBB5_301
.LBB5_300:                              #   in Loop: Header=BB5_292 Depth=3
	add	a4, t0, t1
	lw	t6, 0(a4)
.LBB5_301:                              #   in Loop: Header=BB5_292 Depth=3
	addi	a4, a4, 4
	mulw	t6, t6, a5
	lw	a4, 0(a4)
	srli	t6, t6, 4
	addw	a4, t6, a4
	sgtz	t6, a4
	neg	t6, t6
	and	a4, t6, a4
	li	t6, 127
	blt	a4, t6, .LBB5_291
# %bb.302:                              #   in Loop: Header=BB5_292 Depth=3
	li	a4, 127
	j	.LBB5_291
.LBB5_303:                              #   in Loop: Header=BB5_86 Depth=1
	li	a0, 0
	ld	a5, 608(sp)                     # 8-byte Folded Reload
	sgtz	a1, a5
	neg	a1, a1
	and	a5, a1, a5
	ld	a1, 96(sp)                      # 8-byte Folded Reload
	mv	a6, s4
	ld	t0, 536(sp)                     # 8-byte Folded Reload
	j	.LBB5_305
.LBB5_304:                              #   in Loop: Header=BB5_305 Depth=2
	addi	a0, a0, 1
	addi	t0, t0, 120
	addi	a6, a6, 120
	addi	a1, a1, 240
	li	a4, 10
	beq	a0, a4, .LBB5_318
.LBB5_305:                              #   Parent Loop BB5_86 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_307 Depth 3
	li	t1, 0
	li	a7, 0
	mv	s5, a1
	j	.LBB5_307
.LBB5_306:                              #   in Loop: Header=BB5_307 Depth=3
	slli	t6, a4, 3
	add	t6, a2, t6
	fld	ft3, 0(t6)
	xori	a4, a4, 127
	slli	a4, a4, 3
	add	a4, a2, a4
	fld	ft4, 0(a4)
	fmul.d	fa5, fa4, fa5
	fmul.d	fa4, fa4, fa1
	fmadd.d	fa5, fa5, ft3, ft2
	fmadd.d	fa5, fa4, ft4, fa5
	fadd.d	ft0, ft0, fa5
	addi	a7, a7, 1
	addi	t1, t1, 8
	addi	s5, s5, 16
	beq	t1, s3, .LBB5_304
.LBB5_307:                              #   Parent Loop BB5_86 Depth=1
                                        #     Parent Loop BB5_305 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a4, 8(s5)
	lbu	s1, 2(s5)
	lhu	t6, 0(s5)
	beqz	s1, .LBB5_309
# %bb.308:                              #   in Loop: Header=BB5_307 Depth=3
	addi	t6, t6, 64
	j	.LBB5_310
.LBB5_309:                              #   in Loop: Header=BB5_307 Depth=3
	sub	t6, t2, t6
.LBB5_310:                              #   in Loop: Header=BB5_307 Depth=3
	fcvt.d.lu	fa4, a4
	slli	a4, t6, 3
	add	a4, a3, a4
	fld	fa5, 0(a4)
	fmul.d	fa4, fa4, fa3
	flt.d	a4, fa2, fa4
	bnez	a4, .LBB5_312
# %bb.311:                              #   in Loop: Header=BB5_307 Depth=3
	fneg.d	fa4, fa4
	j	.LBB5_313
.LBB5_312:                              #   in Loop: Header=BB5_307 Depth=3
	fld	fa4, %lo(.LCPI5_2)(t3)
.LBB5_313:                              #   in Loop: Header=BB5_307 Depth=3
	sub	a4, s0, t6
	slli	a4, a4, 3
	add	a4, a3, a4
	fld	fa1, 0(a4)
	bne	s11, t4, .LBB5_315
# %bb.314:                              #   in Loop: Header=BB5_307 Depth=3
	add	a4, a6, t1
	lw	t6, 0(a4)
	mul	a4, a0, s3
	add	a4, s4, a4
	slli	s1, a7, 3
	add	a4, a4, s1
	j	.LBB5_316
.LBB5_315:                              #   in Loop: Header=BB5_307 Depth=3
	add	a4, t0, t1
	lw	t6, 0(a4)
.LBB5_316:                              #   in Loop: Header=BB5_307 Depth=3
	addi	a4, a4, 4
	mulw	t6, t6, a5
	lw	a4, 0(a4)
	srli	t6, t6, 4
	addw	a4, t6, a4
	sgtz	t6, a4
	neg	t6, t6
	and	a4, t6, a4
	li	t6, 127
	blt	a4, t6, .LBB5_306
# %bb.317:                              #   in Loop: Header=BB5_307 Depth=3
	li	a4, 127
	j	.LBB5_306
.LBB5_318:                              #   in Loop: Header=BB5_86 Depth=1
	li	a0, 0
	ld	a5, 608(sp)                     # 8-byte Folded Reload
	sgtz	a1, a5
	neg	a1, a1
	and	a5, a1, a5
	ld	a6, 104(sp)                     # 8-byte Folded Reload
	lui	a1, %hi(INIT_ONE_I)
	addi	a1, a1, %lo(INIT_ONE_I)
	ld	t0, 528(sp)                     # 8-byte Folded Reload
	j	.LBB5_320
.LBB5_319:                              #   in Loop: Header=BB5_320 Depth=2
	addi	a0, a0, 1
	addi	t0, t0, 40
	addi	a1, a1, 40
	addi	a6, a6, 80
	li	a4, 10
	beq	a0, a4, .LBB5_333
.LBB5_320:                              #   Parent Loop BB5_86 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_322 Depth 3
	li	t1, 0
	li	a7, 0
	mul	s5, a0, s6
	lui	a4, %hi(INIT_ONE_I)
	addi	a4, a4, %lo(INIT_ONE_I)
	add	s5, a4, s5
	mv	ra, a6
	j	.LBB5_322
.LBB5_321:                              #   in Loop: Header=BB5_322 Depth=3
	slli	t6, a4, 3
	add	t6, a2, t6
	fld	ft3, 0(t6)
	xori	a4, a4, 127
	slli	a4, a4, 3
	add	a4, a2, a4
	fld	ft4, 0(a4)
	fmul.d	fa5, fa4, fa5
	fmul.d	fa4, fa4, fa1
	fmadd.d	fa5, fa5, ft3, ft2
	fmadd.d	fa5, fa4, ft4, fa5
	fadd.d	ft0, ft0, fa5
	addi	a7, a7, 1
	addi	t1, t1, 8
	addi	ra, ra, 16
	beq	t1, s6, .LBB5_319
.LBB5_322:                              #   Parent Loop BB5_86 Depth=1
                                        #     Parent Loop BB5_320 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a4, 8(ra)
	lbu	s1, 2(ra)
	lhu	t6, 0(ra)
	beqz	s1, .LBB5_324
# %bb.323:                              #   in Loop: Header=BB5_322 Depth=3
	addi	t6, t6, 64
	j	.LBB5_325
.LBB5_324:                              #   in Loop: Header=BB5_322 Depth=3
	sub	t6, t2, t6
.LBB5_325:                              #   in Loop: Header=BB5_322 Depth=3
	fcvt.d.lu	fa4, a4
	slli	a4, t6, 3
	add	a4, a3, a4
	fld	fa5, 0(a4)
	fmul.d	fa4, fa4, fa3
	flt.d	a4, fa2, fa4
	bnez	a4, .LBB5_327
# %bb.326:                              #   in Loop: Header=BB5_322 Depth=3
	fneg.d	fa4, fa4
	j	.LBB5_328
.LBB5_327:                              #   in Loop: Header=BB5_322 Depth=3
	fld	fa4, %lo(.LCPI5_2)(t3)
.LBB5_328:                              #   in Loop: Header=BB5_322 Depth=3
	sub	a4, s0, t6
	slli	a4, a4, 3
	add	a4, a3, a4
	fld	fa1, 0(a4)
	bne	s11, t4, .LBB5_330
# %bb.329:                              #   in Loop: Header=BB5_322 Depth=3
	add	a4, a1, t1
	lw	t6, 0(a4)
	slli	a4, a7, 3
	add	a4, s5, a4
	j	.LBB5_331
.LBB5_330:                              #   in Loop: Header=BB5_322 Depth=3
	add	a4, t0, t1
	lw	t6, 0(a4)
.LBB5_331:                              #   in Loop: Header=BB5_322 Depth=3
	addi	a4, a4, 4
	mulw	t6, t6, a5
	lw	a4, 0(a4)
	srli	t6, t6, 4
	addw	a4, t6, a4
	sgtz	t6, a4
	neg	t6, t6
	and	a4, t6, a4
	li	t6, 127
	blt	a4, t6, .LBB5_321
# %bb.332:                              #   in Loop: Header=BB5_322 Depth=3
	li	a4, 127
	j	.LBB5_321
.LBB5_333:                              #   in Loop: Header=BB5_86 Depth=1
	li	a0, 0
	ld	a5, 608(sp)                     # 8-byte Folded Reload
	sgtz	a1, a5
	neg	a1, a1
	and	a5, a1, a5
	ld	a1, 64(sp)                      # 8-byte Folded Reload
	mv	a6, s7
	ld	t0, 520(sp)                     # 8-byte Folded Reload
	j	.LBB5_335
.LBB5_334:                              #   in Loop: Header=BB5_335 Depth=2
	addi	a0, a0, 1
	addi	t0, t0, 40
	addi	a6, a6, 40
	addi	a1, a1, 80
	li	a4, 10
	beq	a0, a4, .LBB5_348
.LBB5_335:                              #   Parent Loop BB5_86 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_337 Depth 3
	li	t1, 0
	li	a7, 0
	mv	s5, a1
	j	.LBB5_337
.LBB5_336:                              #   in Loop: Header=BB5_337 Depth=3
	slli	t6, a4, 3
	add	t6, a2, t6
	fld	ft3, 0(t6)
	xori	a4, a4, 127
	slli	a4, a4, 3
	add	a4, a2, a4
	fld	ft4, 0(a4)
	fmul.d	fa5, fa4, fa5
	fmul.d	fa4, fa4, fa1
	fmadd.d	fa5, fa5, ft3, ft2
	fmadd.d	fa5, fa4, ft4, fa5
	fadd.d	ft0, ft0, fa5
	addi	a7, a7, 1
	addi	t1, t1, 8
	addi	s5, s5, 16
	beq	t1, s6, .LBB5_334
.LBB5_337:                              #   Parent Loop BB5_86 Depth=1
                                        #     Parent Loop BB5_335 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a4, 8(s5)
	lbu	s1, 2(s5)
	lhu	t6, 0(s5)
	beqz	s1, .LBB5_339
# %bb.338:                              #   in Loop: Header=BB5_337 Depth=3
	addi	t6, t6, 64
	j	.LBB5_340
.LBB5_339:                              #   in Loop: Header=BB5_337 Depth=3
	sub	t6, t2, t6
.LBB5_340:                              #   in Loop: Header=BB5_337 Depth=3
	fcvt.d.lu	fa4, a4
	slli	a4, t6, 3
	add	a4, a3, a4
	fld	fa5, 0(a4)
	fmul.d	fa4, fa4, fa3
	flt.d	a4, fa2, fa4
	bnez	a4, .LBB5_342
# %bb.341:                              #   in Loop: Header=BB5_337 Depth=3
	fneg.d	fa4, fa4
	j	.LBB5_343
.LBB5_342:                              #   in Loop: Header=BB5_337 Depth=3
	fld	fa4, %lo(.LCPI5_2)(t3)
.LBB5_343:                              #   in Loop: Header=BB5_337 Depth=3
	sub	a4, s0, t6
	slli	a4, a4, 3
	add	a4, a3, a4
	fld	fa1, 0(a4)
	bne	s11, t4, .LBB5_345
# %bb.344:                              #   in Loop: Header=BB5_337 Depth=3
	add	a4, a6, t1
	lw	t6, 0(a4)
	mul	a4, a0, s6
	add	a4, s7, a4
	slli	s1, a7, 3
	add	a4, a4, s1
	j	.LBB5_346
.LBB5_345:                              #   in Loop: Header=BB5_337 Depth=3
	add	a4, t0, t1
	lw	t6, 0(a4)
.LBB5_346:                              #   in Loop: Header=BB5_337 Depth=3
	addi	a4, a4, 4
	mulw	t6, t6, a5
	lw	a4, 0(a4)
	srli	t6, t6, 4
	addw	a4, t6, a4
	sgtz	t6, a4
	neg	t6, t6
	and	a4, t6, a4
	li	t6, 127
	blt	a4, t6, .LBB5_336
# %bb.347:                              #   in Loop: Header=BB5_337 Depth=3
	li	a4, 127
	j	.LBB5_336
.LBB5_348:                              #   in Loop: Header=BB5_86 Depth=1
	li	a0, 0
	ld	a5, 608(sp)                     # 8-byte Folded Reload
	sgtz	a1, a5
	neg	a1, a1
	and	a5, a1, a5
	ld	a1, 56(sp)                      # 8-byte Folded Reload
	mv	a6, s8
	ld	t0, 512(sp)                     # 8-byte Folded Reload
	j	.LBB5_350
.LBB5_349:                              #   in Loop: Header=BB5_350 Depth=2
	addi	a0, a0, 1
	addi	t0, t0, 120
	addi	a6, a6, 120
	addi	a1, a1, 240
	li	a4, 10
	beq	a0, a4, .LBB5_363
.LBB5_350:                              #   Parent Loop BB5_86 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_352 Depth 3
	li	t1, 0
	li	a7, 0
	mv	s5, a1
	j	.LBB5_352
.LBB5_351:                              #   in Loop: Header=BB5_352 Depth=3
	slli	t6, a4, 3
	add	t6, a2, t6
	fld	ft3, 0(t6)
	xori	a4, a4, 127
	slli	a4, a4, 3
	add	a4, a2, a4
	fld	ft4, 0(a4)
	fmul.d	fa5, fa4, fa5
	fmul.d	fa4, fa4, fa1
	fmadd.d	fa5, fa5, ft3, ft2
	fmadd.d	fa5, fa4, ft4, fa5
	fadd.d	ft0, ft0, fa5
	addi	a7, a7, 1
	addi	t1, t1, 8
	addi	s5, s5, 16
	beq	t1, s3, .LBB5_349
.LBB5_352:                              #   Parent Loop BB5_86 Depth=1
                                        #     Parent Loop BB5_350 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a4, 8(s5)
	lbu	s1, 2(s5)
	lhu	t6, 0(s5)
	beqz	s1, .LBB5_354
# %bb.353:                              #   in Loop: Header=BB5_352 Depth=3
	addi	t6, t6, 64
	j	.LBB5_355
.LBB5_354:                              #   in Loop: Header=BB5_352 Depth=3
	sub	t6, t2, t6
.LBB5_355:                              #   in Loop: Header=BB5_352 Depth=3
	fcvt.d.lu	fa4, a4
	slli	a4, t6, 3
	add	a4, a3, a4
	fld	fa5, 0(a4)
	fmul.d	fa4, fa4, fa3
	flt.d	a4, fa2, fa4
	bnez	a4, .LBB5_357
# %bb.356:                              #   in Loop: Header=BB5_352 Depth=3
	fneg.d	fa4, fa4
	j	.LBB5_358
.LBB5_357:                              #   in Loop: Header=BB5_352 Depth=3
	fld	fa4, %lo(.LCPI5_2)(t3)
.LBB5_358:                              #   in Loop: Header=BB5_352 Depth=3
	sub	a4, s0, t6
	slli	a4, a4, 3
	add	a4, a3, a4
	fld	fa1, 0(a4)
	bne	s11, t4, .LBB5_360
# %bb.359:                              #   in Loop: Header=BB5_352 Depth=3
	add	a4, a6, t1
	lw	t6, 0(a4)
	mul	a4, a0, s3
	add	a4, s8, a4
	slli	s1, a7, 3
	add	a4, a4, s1
	j	.LBB5_361
.LBB5_360:                              #   in Loop: Header=BB5_352 Depth=3
	add	a4, t0, t1
	lw	t6, 0(a4)
.LBB5_361:                              #   in Loop: Header=BB5_352 Depth=3
	addi	a4, a4, 4
	mulw	t6, t6, a5
	lw	a4, 0(a4)
	srli	t6, t6, 4
	addw	a4, t6, a4
	sgtz	t6, a4
	neg	t6, t6
	and	a4, t6, a4
	li	t6, 127
	blt	a4, t6, .LBB5_351
# %bb.362:                              #   in Loop: Header=BB5_352 Depth=3
	li	a4, 127
	j	.LBB5_351
.LBB5_363:                              #   in Loop: Header=BB5_86 Depth=1
	li	a0, 0
	ld	a5, 608(sp)                     # 8-byte Folded Reload
	sgtz	a1, a5
	neg	a1, a1
	and	a5, a1, a5
	ld	a1, 112(sp)                     # 8-byte Folded Reload
	mv	a6, s10
	ld	t0, 504(sp)                     # 8-byte Folded Reload
	j	.LBB5_365
.LBB5_364:                              #   in Loop: Header=BB5_365 Depth=2
	addi	a0, a0, 1
	addi	t0, t0, 120
	addi	a6, a6, 120
	addi	a1, a1, 240
	li	a4, 10
	beq	a0, a4, .LBB5_378
.LBB5_365:                              #   Parent Loop BB5_86 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_367 Depth 3
	li	t1, 0
	li	a7, 0
	mv	s5, a1
	j	.LBB5_367
.LBB5_366:                              #   in Loop: Header=BB5_367 Depth=3
	slli	t6, a4, 3
	add	t6, a2, t6
	fld	ft3, 0(t6)
	xori	a4, a4, 127
	slli	a4, a4, 3
	add	a4, a2, a4
	fld	ft4, 0(a4)
	fmul.d	fa5, fa4, fa5
	fmul.d	fa4, fa4, fa1
	fmadd.d	fa5, fa5, ft3, ft2
	fmadd.d	fa5, fa4, ft4, fa5
	fadd.d	ft0, ft0, fa5
	addi	a7, a7, 1
	addi	t1, t1, 8
	addi	s5, s5, 16
	beq	t1, s3, .LBB5_364
.LBB5_367:                              #   Parent Loop BB5_86 Depth=1
                                        #     Parent Loop BB5_365 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a4, 8(s5)
	lbu	s1, 2(s5)
	lhu	t6, 0(s5)
	beqz	s1, .LBB5_369
# %bb.368:                              #   in Loop: Header=BB5_367 Depth=3
	addi	t6, t6, 64
	j	.LBB5_370
.LBB5_369:                              #   in Loop: Header=BB5_367 Depth=3
	sub	t6, t2, t6
.LBB5_370:                              #   in Loop: Header=BB5_367 Depth=3
	fcvt.d.lu	fa4, a4
	slli	a4, t6, 3
	add	a4, a3, a4
	fld	fa5, 0(a4)
	fmul.d	fa4, fa4, fa3
	flt.d	a4, fa2, fa4
	bnez	a4, .LBB5_372
# %bb.371:                              #   in Loop: Header=BB5_367 Depth=3
	fneg.d	fa4, fa4
	j	.LBB5_373
.LBB5_372:                              #   in Loop: Header=BB5_367 Depth=3
	fld	fa4, %lo(.LCPI5_2)(t3)
.LBB5_373:                              #   in Loop: Header=BB5_367 Depth=3
	sub	a4, s0, t6
	slli	a4, a4, 3
	add	a4, a3, a4
	fld	fa1, 0(a4)
	bne	s11, t4, .LBB5_375
# %bb.374:                              #   in Loop: Header=BB5_367 Depth=3
	add	a4, a6, t1
	lw	t6, 0(a4)
	mul	a4, a0, s3
	add	a4, s10, a4
	slli	s1, a7, 3
	add	a4, a4, s1
	j	.LBB5_376
.LBB5_375:                              #   in Loop: Header=BB5_367 Depth=3
	add	a4, t0, t1
	lw	t6, 0(a4)
.LBB5_376:                              #   in Loop: Header=BB5_367 Depth=3
	addi	a4, a4, 4
	mulw	t6, t6, a5
	lw	a4, 0(a4)
	srli	t6, t6, 4
	addw	a4, t6, a4
	sgtz	t6, a4
	neg	t6, t6
	and	a4, t6, a4
	li	t6, 127
	blt	a4, t6, .LBB5_366
# %bb.377:                              #   in Loop: Header=BB5_367 Depth=3
	li	a4, 127
	j	.LBB5_366
.LBB5_378:                              #   in Loop: Header=BB5_86 Depth=1
	fld	fa5, 408(sp)                    # 8-byte Folded Reload
	flt.d	a0, ft0, fa5
	ld	a1, 496(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB5_380
# %bb.379:                              #   in Loop: Header=BB5_86 Depth=1
	ld	a0, 0(sp)                       # 8-byte Folded Reload
	sw	a1, 0(a0)
	fsd	ft0, 408(sp)                    # 8-byte Folded Spill
.LBB5_380:                              #   in Loop: Header=BB5_86 Depth=1
	ld	a0, 392(sp)                     # 8-byte Folded Reload
	ld	t0, 488(sp)                     # 8-byte Folded Reload
	ld	s1, 480(sp)                     # 8-byte Folded Reload
	beq	a0, t4, .LBB5_382
# %bb.381:                              #   in Loop: Header=BB5_86 Depth=1
	addi	s11, a1, 1
	addi	t0, t0, 264
	ld	a0, 600(sp)                     # 8-byte Folded Reload
	addi	a0, a0, 144
	sd	a0, 600(sp)                     # 8-byte Folded Spill
	ld	a0, 592(sp)                     # 8-byte Folded Reload
	addi	a0, a0, 144
	sd	a0, 592(sp)                     # 8-byte Folded Spill
	ld	a0, 584(sp)                     # 8-byte Folded Reload
	addi	a0, a0, 160
	sd	a0, 584(sp)                     # 8-byte Folded Spill
	ld	a0, 576(sp)                     # 8-byte Folded Reload
	addi	a0, a0, 160
	sd	a0, 576(sp)                     # 8-byte Folded Spill
	ld	a0, 568(sp)                     # 8-byte Folded Reload
	addi	a0, a0, 96
	sd	a0, 568(sp)                     # 8-byte Folded Spill
	ld	a0, 560(sp)                     # 8-byte Folded Reload
	addi	a0, a0, 96
	sd	a0, 560(sp)                     # 8-byte Folded Spill
	addi	s1, s1, 96
	ld	a0, 552(sp)                     # 8-byte Folded Reload
	addi	a0, a0, 256
	sd	a0, 552(sp)                     # 8-byte Folded Spill
	ld	a0, 544(sp)                     # 8-byte Folded Reload
	addi	a0, a0, 960
	sd	a0, 544(sp)                     # 8-byte Folded Spill
	ld	a0, 536(sp)                     # 8-byte Folded Reload
	addi	a0, a0, 960
	sd	a0, 536(sp)                     # 8-byte Folded Spill
	ld	a0, 528(sp)                     # 8-byte Folded Reload
	addi	a0, a0, 320
	sd	a0, 528(sp)                     # 8-byte Folded Spill
	ld	a0, 520(sp)                     # 8-byte Folded Reload
	addi	a0, a0, 320
	sd	a0, 520(sp)                     # 8-byte Folded Spill
	ld	a0, 512(sp)                     # 8-byte Folded Reload
	addi	a0, a0, 960
	sd	a0, 512(sp)                     # 8-byte Folded Spill
	ld	a0, 504(sp)                     # 8-byte Folded Reload
	addi	a0, a0, 960
	sd	a0, 504(sp)                     # 8-byte Folded Spill
	bgeu	a1, t4, .LBB5_382
	j	.LBB5_86
.LBB5_382:
	ld	ra, 808(sp)                     # 8-byte Folded Reload
	ld	s0, 800(sp)                     # 8-byte Folded Reload
	ld	s1, 792(sp)                     # 8-byte Folded Reload
	ld	s2, 784(sp)                     # 8-byte Folded Reload
	ld	s3, 776(sp)                     # 8-byte Folded Reload
	ld	s4, 768(sp)                     # 8-byte Folded Reload
	ld	s5, 760(sp)                     # 8-byte Folded Reload
	ld	s6, 752(sp)                     # 8-byte Folded Reload
	ld	s7, 744(sp)                     # 8-byte Folded Reload
	ld	s8, 736(sp)                     # 8-byte Folded Reload
	ld	s9, 728(sp)                     # 8-byte Folded Reload
	ld	s10, 720(sp)                    # 8-byte Folded Reload
	ld	s11, 712(sp)                    # 8-byte Folded Reload
	fld	fs0, 704(sp)                    # 8-byte Folded Reload
	fld	fs1, 696(sp)                    # 8-byte Folded Reload
	fld	fs2, 688(sp)                    # 8-byte Folded Reload
	fld	fs3, 680(sp)                    # 8-byte Folded Reload
	fld	fs4, 672(sp)                    # 8-byte Folded Reload
	fld	fs5, 664(sp)                    # 8-byte Folded Reload
	fld	fs6, 656(sp)                    # 8-byte Folded Reload
	fld	fs7, 648(sp)                    # 8-byte Folded Reload
	fld	fs8, 640(sp)                    # 8-byte Folded Reload
	fld	fs9, 632(sp)                    # 8-byte Folded Reload
	fld	fs10, 624(sp)                   # 8-byte Folded Reload
	fld	fs11, 616(sp)                   # 8-byte Folded Reload
	addi	sp, sp, 816
	ret
.Lfunc_end5:
	.size	GetCtxModelNumber, .Lfunc_end5-GetCtxModelNumber
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	store_contexts                  # -- Begin function store_contexts
	.p2align	2
	.type	store_contexts,@function
store_contexts:                         # @store_contexts
# %bb.0:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1837(a0)
	beqz	a0, .LBB6_2
# %bb.1:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 8
	add	a1, a0, a1
	ld	a2, -1200(a1)
	lw	a1, 12(a2)
	lui	a3, %hi(num_mb_per_slice)
	lw	a3, %lo(num_mb_per_slice)(a3)
	lui	a4, 22
	add	a4, a0, a4
	divw	a1, a1, a3
	lw	a3, 152(a4)
	lw	a0, 24(a0)
	lui	a4, %hi(initialized)
	ld	a4, %lo(initialized)(a4)
	slli	a3, a3, 3
	lui	a5, %hi(model_number)
	ld	a5, %lo(model_number)(a5)
	add	a4, a4, a3
	ld	a4, 0(a4)
	slli	a0, a0, 3
	add	a3, a5, a3
	ld	a3, 0(a3)
	add	a4, a4, a0
	ld	a4, 0(a4)
	slli	a5, a1, 2
	add	a0, a3, a0
	ld	a0, 0(a0)
	ld	a1, 32(a2)
	ld	a2, 40(a2)
	add	a4, a4, a5
	li	a3, 1
	add	a0, a0, a5
	sw	a3, 0(a4)
	tail	GetCtxModelNumber
.LBB6_2:
	ret
.Lfunc_end6:
	.size	store_contexts, .Lfunc_end6-store_contexts
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	update_field_frame_contexts     # -- Begin function update_field_frame_contexts
	.p2align	2
	.type	update_field_frame_contexts,@function
update_field_frame_contexts:            # @update_field_frame_contexts
# %bb.0:
	lui	a1, %hi(initialized)
	ld	a2, %lo(initialized)(a1)
	lui	a1, %hi(model_number)
	ld	a1, %lo(model_number)(a1)
	lui	a3, %hi(number_of_slices)
	lw	a3, %lo(number_of_slices)(a3)
	beqz	a0, .LBB7_13
# %bb.1:
	blez	a3, .LBB7_25
# %bb.2:
	li	a3, 0
	ld	a0, 8(a2)
	ld	a5, 0(a2)
	ld	a6, 8(a1)
	ld	a7, 0(a1)
	ld	a4, 0(a0)
	ld	a5, 0(a5)
	ld	a6, 0(a6)
	ld	a7, 0(a7)
	lui	a0, 524288
	addiw	a0, a0, -1
	lui	t0, %hi(number_of_slices)
.LBB7_3:                                # =>This Inner Loop Header: Depth=1
	srli	t1, a3, 1
	and	t1, t1, a0
	slli	t1, t1, 2
	add	t2, a4, t1
	lw	t2, 0(t2)
	sw	t2, 0(a5)
	add	t1, a6, t1
	lw	t1, 0(t1)
	sw	t1, 0(a7)
	lw	t1, %lo(number_of_slices)(t0)
	addi	a3, a3, 1
	addi	a7, a7, 4
	addi	a5, a5, 4
	blt	a3, t1, .LBB7_3
# %bb.4:
	blez	t1, .LBB7_25
# %bb.5:
	ld	a3, 8(a2)
	ld	a4, 0(a2)
	ld	a5, 8(a1)
	ld	a6, 0(a1)
	ld	a3, 8(a3)
	ld	a4, 8(a4)
	ld	a5, 8(a5)
	ld	a6, 8(a6)
	li	a7, 0
	lui	t0, %hi(number_of_slices)
.LBB7_6:                                # =>This Inner Loop Header: Depth=1
	srli	t1, a7, 1
	and	t1, t1, a0
	slli	t1, t1, 2
	add	t2, a3, t1
	lw	t2, 0(t2)
	sw	t2, 0(a4)
	add	t1, a5, t1
	lw	t1, 0(t1)
	sw	t1, 0(a6)
	lw	t1, %lo(number_of_slices)(t0)
	addi	a7, a7, 1
	addi	a6, a6, 4
	addi	a4, a4, 4
	blt	a7, t1, .LBB7_6
# %bb.7:
	blez	t1, .LBB7_25
# %bb.8:
	ld	a3, 8(a2)
	ld	a4, 0(a2)
	ld	a5, 8(a1)
	ld	a6, 0(a1)
	ld	a3, 16(a3)
	ld	a4, 16(a4)
	ld	a5, 16(a5)
	ld	a6, 16(a6)
	li	a7, 0
	lui	t0, %hi(number_of_slices)
.LBB7_9:                                # =>This Inner Loop Header: Depth=1
	srli	t1, a7, 1
	and	t1, t1, a0
	slli	t1, t1, 2
	add	t2, a3, t1
	lw	t2, 0(t2)
	sw	t2, 0(a4)
	add	t1, a5, t1
	lw	t1, 0(t1)
	sw	t1, 0(a6)
	lw	t1, %lo(number_of_slices)(t0)
	addi	a7, a7, 1
	addi	a6, a6, 4
	addi	a4, a4, 4
	blt	a7, t1, .LBB7_9
# %bb.10:
	blez	t1, .LBB7_25
# %bb.11:
	ld	a3, 8(a2)
	ld	a2, 0(a2)
	ld	a4, 8(a1)
	ld	a5, 0(a1)
	ld	a1, 24(a3)
	ld	a2, 24(a2)
	ld	a3, 24(a4)
	ld	a4, 24(a5)
	li	a5, 0
	lui	a6, %hi(number_of_slices)
.LBB7_12:                               # =>This Inner Loop Header: Depth=1
	srli	a7, a5, 1
	and	a7, a7, a0
	slli	a7, a7, 2
	add	t0, a1, a7
	lw	t0, 0(t0)
	sw	t0, 0(a2)
	add	a7, a3, a7
	lw	a7, 0(a7)
	sw	a7, 0(a4)
	lw	a7, %lo(number_of_slices)(a6)
	addi	a5, a5, 1
	addi	a4, a4, 4
	addi	a2, a2, 4
	blt	a5, a7, .LBB7_12
	j	.LBB7_25
.LBB7_13:
	blez	a3, .LBB7_25
# %bb.14:
	ld	a0, 0(a2)
	ld	a3, 8(a2)
	ld	a4, 0(a1)
	ld	a5, 8(a1)
	ld	a0, 0(a0)
	ld	a3, 0(a3)
	ld	a4, 0(a4)
	ld	a5, 0(a5)
	li	a6, 0
	lui	a7, %hi(number_of_slices)
.LBB7_15:                               # =>This Inner Loop Header: Depth=1
	lw	t0, 0(a0)
	sw	t0, 0(a3)
	lw	t0, 0(a4)
	sw	t0, 0(a5)
	lw	t0, %lo(number_of_slices)(a7)
	addi	a6, a6, 1
	addi	t1, t0, 1
	sraiw	t1, t1, 1
	addi	a5, a5, 4
	addi	a3, a3, 4
	addi	a4, a4, 8
	addi	a0, a0, 8
	blt	a6, t1, .LBB7_15
# %bb.16:
	blez	t0, .LBB7_25
# %bb.17:
	ld	a0, 0(a2)
	ld	a3, 8(a2)
	ld	a4, 0(a1)
	ld	a5, 8(a1)
	ld	a0, 8(a0)
	ld	a3, 8(a3)
	ld	a4, 8(a4)
	ld	a5, 8(a5)
	li	a6, 0
	lui	a7, %hi(number_of_slices)
.LBB7_18:                               # =>This Inner Loop Header: Depth=1
	lw	t0, 0(a0)
	sw	t0, 0(a3)
	lw	t0, 0(a4)
	sw	t0, 0(a5)
	lw	t0, %lo(number_of_slices)(a7)
	addi	a6, a6, 1
	addi	t1, t0, 1
	sraiw	t1, t1, 1
	addi	a5, a5, 4
	addi	a3, a3, 4
	addi	a4, a4, 8
	addi	a0, a0, 8
	blt	a6, t1, .LBB7_18
# %bb.19:
	blez	t0, .LBB7_25
# %bb.20:
	ld	a0, 0(a2)
	ld	a3, 8(a2)
	ld	a4, 0(a1)
	ld	a5, 8(a1)
	ld	a0, 16(a0)
	ld	a3, 16(a3)
	ld	a4, 16(a4)
	ld	a5, 16(a5)
	li	a6, 0
	lui	a7, %hi(number_of_slices)
.LBB7_21:                               # =>This Inner Loop Header: Depth=1
	lw	t0, 0(a0)
	sw	t0, 0(a3)
	lw	t0, 0(a4)
	sw	t0, 0(a5)
	lw	t0, %lo(number_of_slices)(a7)
	addi	a6, a6, 1
	addi	t1, t0, 1
	sraiw	t1, t1, 1
	addi	a5, a5, 4
	addi	a3, a3, 4
	addi	a4, a4, 8
	addi	a0, a0, 8
	blt	a6, t1, .LBB7_21
# %bb.22:
	blez	t0, .LBB7_25
# %bb.23:
	ld	a0, 0(a2)
	ld	a2, 8(a2)
	ld	a3, 0(a1)
	ld	a4, 8(a1)
	ld	a0, 24(a0)
	ld	a1, 24(a2)
	ld	a2, 24(a3)
	ld	a3, 24(a4)
	li	a4, 0
	lui	a5, %hi(number_of_slices)
.LBB7_24:                               # =>This Inner Loop Header: Depth=1
	lw	a6, 0(a0)
	sw	a6, 0(a1)
	lw	a6, 0(a2)
	sw	a6, 0(a3)
	lw	a6, %lo(number_of_slices)(a5)
	addi	a4, a4, 1
	addi	a6, a6, 1
	sraiw	a6, a6, 1
	addi	a3, a3, 4
	addi	a1, a1, 4
	addi	a2, a2, 8
	addi	a0, a0, 8
	blt	a4, a6, .LBB7_24
.LBB7_25:
	ret
.Lfunc_end7:
	.size	update_field_frame_contexts, .Lfunc_end7-update_field_frame_contexts
                                        # -- End function
	.option	pop
	.type	probability,@object             # @probability
	.data
	.globl	probability
	.p2align	3, 0x0
probability:
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x3fe0000000000000              # double 0.5
	.quad	0x3fde5ffe6d58c8ef              # double 0.474609
	.quad	0x3fdcd51b4fe79ee0              # double 0.45050699999999999
	.quad	0x3fdb5e4606748e47              # double 0.42762899999999998
	.quad	0x3fd9fa76534373f3              # double 0.405912
	.quad	0x3fd8a8bd230b9dc3              # double 0.385299
	.quad	0x3fd7682730c67169              # double 0.365732
	.quad	0x3fd637da61e0c5a8              # double 0.347159
	.quad	0x3fd51704ff43419e              # double 0.32952999999999999
	.quad	0x3fd404d551d68c69              # double 0.31279499999999999
	.quad	0x3fd30096feb4a665              # double 0.29691099999999998
	.quad	0x3fd2098d477bbf94              # double 0.281833
	.quad	0x3fd11f0c34c1a8ac              # double 0.26751999999999998
	.quad	0x3fd040789613d31c              # double 0.25393500000000002
	.quad	0x3fceda5daf07bfe8              # double 0.241039
	.quad	0x3fcd49491f2dc2b1              # double 0.228799
	.quad	0x3fcbcc8de2ac3223              # double 0.21718000000000001
	.quad	0x3fca6327ed84d339              # double 0.206151
	.quad	0x3fc90c1b97353b4b              # double 0.19568199999999999
	.quad	0x3fc7c6759ab6d00b              # double 0.18574399999999999
	.quad	0x3fc6916440f23897              # double 0.176312
	.quad	0x3fc56bfca85caafc              # double 0.16735800000000001
	.quad	0x3fc4557de0d66f0d              # double 0.158859
	.quad	0x3fc34d26fa3fcc9f              # double 0.15079200000000001
	.quad	0x3fc2523704790b85              # double 0.14313400000000001
	.quad	0x3fc1640e9d51b4fe              # double 0.13586599999999999
	.quad	0x3fc081f53825e13b              # double 0.128966
	.quad	0x3fbf56b873797460              # double 0.122417
	.quad	0x3fbdbf487fcb923a              # double 0.1162
	.quad	0x3fbc3c8e25c810a5              # double 0.11029899999999999
	.quad	0x3fbacd7cf5f4e443              # double 0.104698
	.quad	0x3fb9710880d801b4              # double 0.099380999999999997
	.quad	0x3fb82645e4e69f06              # double 0.094334000000000001
	.quad	0x3fb6ec4a4095f245              # double 0.089542999999999998
	.quad	0x3fb5c24c404a72eb              # double 0.084996000000000002
	.quad	0x3fb4a771c970f7ba              # double 0.080680000000000001
	.quad	0x3fb39af1886df82b              # double 0.076582999999999998
	.quad	0x3fb29c12f09d8c6d              # double 0.072693999999999995
	.quad	0x3fb1aa1d755bccaf              # double 0.069001999999999994
	.quad	0x3fb0c47a17f4128c              # double 0.065498000000000001
	.quad	0x3fafd50225742dcf              # double 0.062171999999999998
	.quad	0x3fae37154003254e              # double 0.059013999999999997
	.quad	0x3facae642bf9830e              # double 0.056017999999999998
	.quad	0x3fab397dd00f776c              # double 0.053172999999999998
	.quad	0x3fa9d798d8a979e1              # double 0.050472999999999997
	.quad	0x3fa88787485e3da3              # double 0.047909
	.quad	0x3fa748a159817b96              # double 0.045476000000000003
	.quad	0x3fa619fc2a8869c6              # double 0.043166999999999997
	.quad	0x3fa4faacd9e83e42              # double 0.040974999999999998
	.quad	0x3fa3e9ea14057082              # double 0.038893999999999998
	.quad	0x3fa2e70c1333b96b              # double 0.036919
	.quad	0x3fa1f14983d79075              # double 0.035043999999999999
	.quad	0x3fa107faa044ae86              # double 0.033264000000000002
	.quad	0x3fa02a9930be0ded              # double 0.031574999999999999
	.quad	0x3f9eb0fadf2ecf20              # double 0.029971999999999999
	.quad	0x3f9d21ff2e48e8a7              # double 0.02845
	.quad	0x3f9ba732df505d10              # double 0.027005000000000001
	.quad	0x3f9a3f8982cb20fb              # double 0.025633
	.quad	0x3f98ea7ce0fc2eba              # double 0.024331999999999999
	.quad	0x3f97a67a52ac753e              # double 0.023095999999999998
	.quad	0x3f9672fba01eeed9              # double 0.021923000000000002
	.quad	0x3f954f3775b81301              # double 0.020809999999999999
	.quad	0x3f943a2163fdd65a              # double 0.019753
	.quad	0x3f93333333333333              # double 0.018749999999999999
	.size	probability, 1024

	.type	num_mb_per_slice,@object        # @num_mb_per_slice
	.section	.sbss,"aw",@nobits
	.globl	num_mb_per_slice
	.p2align	2, 0x0
num_mb_per_slice:
	.word	0                               # 0x0
	.size	num_mb_per_slice, 4

	.type	number_of_slices,@object        # @number_of_slices
	.globl	number_of_slices
	.p2align	2, 0x0
number_of_slices:
	.word	0                               # 0x0
	.size	number_of_slices, 4

	.type	initialized,@object             # @initialized
	.globl	initialized
	.p2align	3, 0x0
initialized:
	.quad	0
	.size	initialized, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"create_context_memory: initialized"
	.size	.L.str, 35

	.type	model_number,@object            # @model_number
	.section	.sbss,"aw",@nobits
	.globl	model_number
	.p2align	3, 0x0
model_number:
	.quad	0
	.size	model_number, 8

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"create_context_memory: model_number"
	.size	.L.str.1, 36

	.type	entropy,@object                 # @entropy
	.bss
	.globl	entropy
	.p2align	3, 0x0
entropy:
	.zero	1024
	.size	entropy, 1024

	.type	INIT_MB_TYPE_I,@object          # @INIT_MB_TYPE_I
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
INIT_MB_TYPE_I:
	.word	20                              # 0x14
	.word	4294967281                      # 0xfffffff1
	.word	2                               # 0x2
	.word	54                              # 0x36
	.word	3                               # 0x3
	.word	74                              # 0x4a
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967268                      # 0xffffffe4
	.word	127                             # 0x7f
	.word	4294967273                      # 0xffffffe9
	.word	104                             # 0x68
	.word	4294967290                      # 0xfffffffa
	.word	53                              # 0x35
	.word	4294967295                      # 0xffffffff
	.word	54                              # 0x36
	.word	7                               # 0x7
	.word	51                              # 0x33
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	20                              # 0x14
	.word	4294967281                      # 0xfffffff1
	.word	2                               # 0x2
	.word	54                              # 0x36
	.word	3                               # 0x3
	.word	74                              # 0x4a
	.word	20                              # 0x14
	.word	4294967281                      # 0xfffffff1
	.word	2                               # 0x2
	.word	54                              # 0x36
	.word	3                               # 0x3
	.word	74                              # 0x4a
	.word	4294967268                      # 0xffffffe4
	.word	127                             # 0x7f
	.word	4294967273                      # 0xffffffe9
	.word	104                             # 0x68
	.word	4294967290                      # 0xfffffffa
	.word	53                              # 0x35
	.word	4294967295                      # 0xffffffff
	.word	54                              # 0x36
	.word	7                               # 0x7
	.word	51                              # 0x33
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.size	INIT_MB_TYPE_I, 264

	.type	INIT_MB_TYPE_P,@object          # @INIT_MB_TYPE_P
	.p2align	2, 0x0
INIT_MB_TYPE_P:
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	23                              # 0x17
	.word	33                              # 0x21
	.word	23                              # 0x17
	.word	2                               # 0x2
	.word	21                              # 0x15
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	1                               # 0x1
	.word	9                               # 0x9
	.word	0                               # 0x0
	.word	49                              # 0x31
	.word	4294967259                      # 0xffffffdb
	.word	118                             # 0x76
	.word	5                               # 0x5
	.word	57                              # 0x39
	.word	4294967283                      # 0xfffffff3
	.word	78                              # 0x4e
	.word	4294967285                      # 0xfffffff5
	.word	65                              # 0x41
	.word	1                               # 0x1
	.word	62                              # 0x3e
	.word	26                              # 0x1a
	.word	67                              # 0x43
	.word	16                              # 0x10
	.word	90                              # 0x5a
	.word	9                               # 0x9
	.word	104                             # 0x68
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967250                      # 0xffffffd2
	.word	127                             # 0x7f
	.word	4294967276                      # 0xffffffec
	.word	104                             # 0x68
	.word	1                               # 0x1
	.word	67                              # 0x43
	.word	18                              # 0x12
	.word	64                              # 0x40
	.word	9                               # 0x9
	.word	43                              # 0x2b
	.word	29                              # 0x1d
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	22                              # 0x16
	.word	25                              # 0x19
	.word	34                              # 0x22
	.word	0                               # 0x0
	.word	16                              # 0x10
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967294                      # 0xfffffffe
	.word	9                               # 0x9
	.word	4                               # 0x4
	.word	41                              # 0x29
	.word	4294967267                      # 0xffffffe3
	.word	118                             # 0x76
	.word	2                               # 0x2
	.word	65                              # 0x41
	.word	4294967290                      # 0xfffffffa
	.word	71                              # 0x47
	.word	4294967283                      # 0xfffffff3
	.word	79                              # 0x4f
	.word	5                               # 0x5
	.word	52                              # 0x34
	.word	57                              # 0x39
	.word	2                               # 0x2
	.word	41                              # 0x29
	.word	36                              # 0x24
	.word	26                              # 0x1a
	.word	69                              # 0x45
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967251                      # 0xffffffd3
	.word	127                             # 0x7f
	.word	4294967281                      # 0xfffffff1
	.word	101                             # 0x65
	.word	4294967292                      # 0xfffffffc
	.word	76                              # 0x4c
	.word	26                              # 0x1a
	.word	34                              # 0x22
	.word	19                              # 0x13
	.word	22                              # 0x16
	.word	40                              # 0x28
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	29                              # 0x1d
	.word	16                              # 0x10
	.word	25                              # 0x19
	.word	0                               # 0x0
	.word	14                              # 0xe
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967286                      # 0xfffffff6
	.word	51                              # 0x33
	.word	4294967293                      # 0xfffffffd
	.word	62                              # 0x3e
	.word	4294967269                      # 0xffffffe5
	.word	99                              # 0x63
	.word	26                              # 0x1a
	.word	16                              # 0x10
	.word	4294967292                      # 0xfffffffc
	.word	85                              # 0x55
	.word	4294967272                      # 0xffffffe8
	.word	102                             # 0x66
	.word	5                               # 0x5
	.word	57                              # 0x39
	.word	54                              # 0x36
	.word	0                               # 0x0
	.word	37                              # 0x25
	.word	42                              # 0x2a
	.word	12                              # 0xc
	.word	97                              # 0x61
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967264                      # 0xffffffe0
	.word	127                             # 0x7f
	.word	4294967274                      # 0xffffffea
	.word	117                             # 0x75
	.word	4294967294                      # 0xfffffffe
	.word	74                              # 0x4a
	.word	20                              # 0x14
	.word	40                              # 0x28
	.word	20                              # 0x14
	.word	10                              # 0xa
	.word	29                              # 0x1d
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	64                              # 0x40
	.size	INIT_MB_TYPE_P, 792

	.type	INIT_B8_TYPE_I,@object          # @INIT_B8_TYPE_I
	.p2align	2, 0x0
INIT_B8_TYPE_I:
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.size	INIT_B8_TYPE_I, 144

	.type	INIT_B8_TYPE_P,@object          # @INIT_B8_TYPE_P
	.p2align	2, 0x0
INIT_B8_TYPE_P:
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	12                              # 0xc
	.word	49                              # 0x31
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967292                      # 0xfffffffc
	.word	73                              # 0x49
	.word	17                              # 0x11
	.word	50                              # 0x32
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967290                      # 0xfffffffa
	.word	86                              # 0x56
	.word	4294967279                      # 0xffffffef
	.word	95                              # 0x5f
	.word	4294967290                      # 0xfffffffa
	.word	61                              # 0x3d
	.word	9                               # 0x9
	.word	45                              # 0x2d
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	9                               # 0x9
	.word	50                              # 0x32
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967293                      # 0xfffffffd
	.word	70                              # 0x46
	.word	10                              # 0xa
	.word	54                              # 0x36
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	6                               # 0x6
	.word	69                              # 0x45
	.word	4294967283                      # 0xfffffff3
	.word	90                              # 0x5a
	.word	0                               # 0x0
	.word	52                              # 0x34
	.word	8                               # 0x8
	.word	43                              # 0x2b
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	6                               # 0x6
	.word	57                              # 0x39
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967279                      # 0xffffffef
	.word	73                              # 0x49
	.word	14                              # 0xe
	.word	57                              # 0x39
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967290                      # 0xfffffffa
	.word	93                              # 0x5d
	.word	4294967282                      # 0xfffffff2
	.word	88                              # 0x58
	.word	4294967290                      # 0xfffffffa
	.word	44                              # 0x2c
	.word	4                               # 0x4
	.word	55                              # 0x37
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.size	INIT_B8_TYPE_P, 432

	.type	INIT_MV_RES_I,@object           # @INIT_MV_RES_I
	.p2align	2, 0x0
INIT_MV_RES_I:
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.size	INIT_MV_RES_I, 160

	.type	INIT_MV_RES_P,@object           # @INIT_MV_RES_P
	.p2align	2, 0x0
INIT_MV_RES_P:
	.word	4294967293                      # 0xfffffffd
	.word	69                              # 0x45
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967290                      # 0xfffffffa
	.word	81                              # 0x51
	.word	4294967285                      # 0xfffffff5
	.word	96                              # 0x60
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	58                              # 0x3a
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967293                      # 0xfffffffd
	.word	76                              # 0x4c
	.word	4294967286                      # 0xfffffff6
	.word	94                              # 0x5e
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	6                               # 0x6
	.word	55                              # 0x37
	.word	7                               # 0x7
	.word	67                              # 0x43
	.word	4294967291                      # 0xfffffffb
	.word	86                              # 0x56
	.word	2                               # 0x2
	.word	88                              # 0x58
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	5                               # 0x5
	.word	54                              # 0x36
	.word	4                               # 0x4
	.word	69                              # 0x45
	.word	4294967293                      # 0xfffffffd
	.word	81                              # 0x51
	.word	0                               # 0x0
	.word	88                              # 0x58
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967294                      # 0xfffffffe
	.word	69                              # 0x45
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967291                      # 0xfffffffb
	.word	82                              # 0x52
	.word	4294967286                      # 0xfffffff6
	.word	96                              # 0x60
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	1                               # 0x1
	.word	56                              # 0x38
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967293                      # 0xfffffffd
	.word	74                              # 0x4a
	.word	4294967290                      # 0xfffffffa
	.word	85                              # 0x55
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	2                               # 0x2
	.word	59                              # 0x3b
	.word	2                               # 0x2
	.word	75                              # 0x4b
	.word	4294967293                      # 0xfffffffd
	.word	87                              # 0x57
	.word	4294967293                      # 0xfffffffd
	.word	100                             # 0x64
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	59                              # 0x3b
	.word	4294967293                      # 0xfffffffd
	.word	81                              # 0x51
	.word	4294967289                      # 0xfffffff9
	.word	86                              # 0x56
	.word	4294967291                      # 0xfffffffb
	.word	95                              # 0x5f
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967285                      # 0xfffffff5
	.word	89                              # 0x59
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967281                      # 0xfffffff1
	.word	103                             # 0x67
	.word	4294967275                      # 0xffffffeb
	.word	116                             # 0x74
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	1                               # 0x1
	.word	63                              # 0x3f
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967291                      # 0xfffffffb
	.word	85                              # 0x55
	.word	4294967283                      # 0xfffffff3
	.word	106                             # 0x6a
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	19                              # 0x13
	.word	57                              # 0x39
	.word	20                              # 0x14
	.word	58                              # 0x3a
	.word	4                               # 0x4
	.word	84                              # 0x54
	.word	6                               # 0x6
	.word	96                              # 0x60
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	5                               # 0x5
	.word	63                              # 0x3f
	.word	6                               # 0x6
	.word	75                              # 0x4b
	.word	4294967293                      # 0xfffffffd
	.word	90                              # 0x5a
	.word	4294967295                      # 0xffffffff
	.word	101                             # 0x65
	.word	0                               # 0x0
	.word	64                              # 0x40
	.size	INIT_MV_RES_P, 480

	.type	INIT_REF_NO_I,@object           # @INIT_REF_NO_I
	.p2align	2, 0x0
INIT_REF_NO_I:
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.size	INIT_REF_NO_I, 96

	.type	INIT_REF_NO_P,@object           # @INIT_REF_NO_P
	.p2align	2, 0x0
INIT_REF_NO_P:
	.word	4294967289                      # 0xfffffff9
	.word	67                              # 0x43
	.word	4294967291                      # 0xfffffffb
	.word	74                              # 0x4a
	.word	4294967292                      # 0xfffffffc
	.word	74                              # 0x4a
	.word	4294967291                      # 0xfffffffb
	.word	80                              # 0x50
	.word	4294967289                      # 0xfffffff9
	.word	72                              # 0x48
	.word	1                               # 0x1
	.word	58                              # 0x3a
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967295                      # 0xffffffff
	.word	66                              # 0x42
	.word	4294967295                      # 0xffffffff
	.word	77                              # 0x4d
	.word	1                               # 0x1
	.word	70                              # 0x46
	.word	4294967294                      # 0xfffffffe
	.word	86                              # 0x56
	.word	4294967291                      # 0xfffffffb
	.word	72                              # 0x48
	.word	0                               # 0x0
	.word	61                              # 0x3d
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	3                               # 0x3
	.word	55                              # 0x37
	.word	4294967292                      # 0xfffffffc
	.word	79                              # 0x4f
	.word	4294967294                      # 0xfffffffe
	.word	75                              # 0x4b
	.word	4294967284                      # 0xfffffff4
	.word	97                              # 0x61
	.word	4294967289                      # 0xfffffff9
	.word	50                              # 0x32
	.word	1                               # 0x1
	.word	60                              # 0x3c
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.size	INIT_REF_NO_P, 288

	.type	INIT_DELTA_QP_I,@object         # @INIT_DELTA_QP_I
	.p2align	2, 0x0
INIT_DELTA_QP_I:
	.word	0                               # 0x0
	.word	41                              # 0x29
	.word	0                               # 0x0
	.word	63                              # 0x3f
	.word	0                               # 0x0
	.word	63                              # 0x3f
	.word	0                               # 0x0
	.word	63                              # 0x3f
	.size	INIT_DELTA_QP_I, 32

	.type	INIT_DELTA_QP_P,@object         # @INIT_DELTA_QP_P
	.p2align	2, 0x0
INIT_DELTA_QP_P:
	.word	0                               # 0x0
	.word	41                              # 0x29
	.word	0                               # 0x0
	.word	63                              # 0x3f
	.word	0                               # 0x0
	.word	63                              # 0x3f
	.word	0                               # 0x0
	.word	63                              # 0x3f
	.word	0                               # 0x0
	.word	41                              # 0x29
	.word	0                               # 0x0
	.word	63                              # 0x3f
	.word	0                               # 0x0
	.word	63                              # 0x3f
	.word	0                               # 0x0
	.word	63                              # 0x3f
	.word	0                               # 0x0
	.word	41                              # 0x29
	.word	0                               # 0x0
	.word	63                              # 0x3f
	.word	0                               # 0x0
	.word	63                              # 0x3f
	.word	0                               # 0x0
	.word	63                              # 0x3f
	.size	INIT_DELTA_QP_P, 96

	.type	INIT_MB_AFF_I,@object           # @INIT_MB_AFF_I
	.p2align	2, 0x0
INIT_MB_AFF_I:
	.word	0                               # 0x0
	.word	11                              # 0xb
	.word	1                               # 0x1
	.word	55                              # 0x37
	.word	0                               # 0x0
	.word	69                              # 0x45
	.word	0                               # 0x0
	.word	64                              # 0x40
	.size	INIT_MB_AFF_I, 32

	.type	INIT_MB_AFF_P,@object           # @INIT_MB_AFF_P
	.p2align	2, 0x0
INIT_MB_AFF_P:
	.word	0                               # 0x0
	.word	45                              # 0x2d
	.word	4294967292                      # 0xfffffffc
	.word	78                              # 0x4e
	.word	4294967293                      # 0xfffffffd
	.word	96                              # 0x60
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	13                              # 0xd
	.word	15                              # 0xf
	.word	7                               # 0x7
	.word	51                              # 0x33
	.word	2                               # 0x2
	.word	80                              # 0x50
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	7                               # 0x7
	.word	34                              # 0x22
	.word	4294967287                      # 0xfffffff7
	.word	88                              # 0x58
	.word	4294967276                      # 0xffffffec
	.word	127                             # 0x7f
	.word	0                               # 0x0
	.word	64                              # 0x40
	.size	INIT_MB_AFF_P, 96

	.type	INIT_TRANSFORM_SIZE_I,@object   # @INIT_TRANSFORM_SIZE_I
	.p2align	2, 0x0
INIT_TRANSFORM_SIZE_I:
	.word	31                              # 0x1f
	.word	21                              # 0x15
	.word	31                              # 0x1f
	.word	31                              # 0x1f
	.word	25                              # 0x19
	.word	50                              # 0x32
	.size	INIT_TRANSFORM_SIZE_I, 24

	.type	INIT_TRANSFORM_SIZE_P,@object   # @INIT_TRANSFORM_SIZE_P
	.p2align	2, 0x0
INIT_TRANSFORM_SIZE_P:
	.word	12                              # 0xc
	.word	40                              # 0x28
	.word	11                              # 0xb
	.word	51                              # 0x33
	.word	14                              # 0xe
	.word	59                              # 0x3b
	.word	25                              # 0x19
	.word	32                              # 0x20
	.word	21                              # 0x15
	.word	49                              # 0x31
	.word	21                              # 0x15
	.word	54                              # 0x36
	.word	21                              # 0x15
	.word	33                              # 0x21
	.word	19                              # 0x13
	.word	50                              # 0x32
	.word	17                              # 0x11
	.word	61                              # 0x3d
	.size	INIT_TRANSFORM_SIZE_P, 72

	.type	INIT_IPR_I,@object              # @INIT_IPR_I
	.p2align	2, 0x0
INIT_IPR_I:
	.word	13                              # 0xd
	.word	41                              # 0x29
	.word	3                               # 0x3
	.word	62                              # 0x3e
	.size	INIT_IPR_I, 16

	.type	INIT_IPR_P,@object              # @INIT_IPR_P
	.p2align	2, 0x0
INIT_IPR_P:
	.word	13                              # 0xd
	.word	41                              # 0x29
	.word	3                               # 0x3
	.word	62                              # 0x3e
	.word	13                              # 0xd
	.word	41                              # 0x29
	.word	3                               # 0x3
	.word	62                              # 0x3e
	.word	13                              # 0xd
	.word	41                              # 0x29
	.word	3                               # 0x3
	.word	62                              # 0x3e
	.size	INIT_IPR_P, 48

	.type	INIT_CIPR_I,@object             # @INIT_CIPR_I
	.p2align	2, 0x0
INIT_CIPR_I:
	.word	4294967287                      # 0xfffffff7
	.word	83                              # 0x53
	.word	4                               # 0x4
	.word	86                              # 0x56
	.word	0                               # 0x0
	.word	97                              # 0x61
	.word	4294967289                      # 0xfffffff9
	.word	72                              # 0x48
	.size	INIT_CIPR_I, 32

	.type	INIT_CIPR_P,@object             # @INIT_CIPR_P
	.p2align	2, 0x0
INIT_CIPR_P:
	.word	4294967287                      # 0xfffffff7
	.word	83                              # 0x53
	.word	4                               # 0x4
	.word	86                              # 0x56
	.word	0                               # 0x0
	.word	97                              # 0x61
	.word	4294967289                      # 0xfffffff9
	.word	72                              # 0x48
	.word	4294967287                      # 0xfffffff7
	.word	83                              # 0x53
	.word	4                               # 0x4
	.word	86                              # 0x56
	.word	0                               # 0x0
	.word	97                              # 0x61
	.word	4294967289                      # 0xfffffff9
	.word	72                              # 0x48
	.word	4294967287                      # 0xfffffff7
	.word	83                              # 0x53
	.word	4                               # 0x4
	.word	86                              # 0x56
	.word	0                               # 0x0
	.word	97                              # 0x61
	.word	4294967289                      # 0xfffffff9
	.word	72                              # 0x48
	.size	INIT_CIPR_P, 96

	.type	INIT_CBP_I,@object              # @INIT_CBP_I
	.p2align	2, 0x0
INIT_CBP_I:
	.word	4294967279                      # 0xffffffef
	.word	127                             # 0x7f
	.word	4294967283                      # 0xfffffff3
	.word	102                             # 0x66
	.word	0                               # 0x0
	.word	82                              # 0x52
	.word	4294967289                      # 0xfffffff9
	.word	74                              # 0x4a
	.word	4294967275                      # 0xffffffeb
	.word	107                             # 0x6b
	.word	4294967269                      # 0xffffffe5
	.word	127                             # 0x7f
	.word	4294967265                      # 0xffffffe1
	.word	127                             # 0x7f
	.word	4294967272                      # 0xffffffe8
	.word	127                             # 0x7f
	.word	4294967278                      # 0xffffffee
	.word	95                              # 0x5f
	.word	4294967269                      # 0xffffffe5
	.word	127                             # 0x7f
	.word	4294967275                      # 0xffffffeb
	.word	114                             # 0x72
	.word	4294967266                      # 0xffffffe2
	.word	127                             # 0x7f
	.size	INIT_CBP_I, 96

	.type	INIT_CBP_P,@object              # @INIT_CBP_P
	.p2align	2, 0x0
INIT_CBP_P:
	.word	4294967269                      # 0xffffffe5
	.word	126                             # 0x7e
	.word	4294967268                      # 0xffffffe4
	.word	98                              # 0x62
	.word	4294967271                      # 0xffffffe7
	.word	101                             # 0x65
	.word	4294967273                      # 0xffffffe9
	.word	67                              # 0x43
	.word	4294967268                      # 0xffffffe4
	.word	82                              # 0x52
	.word	4294967276                      # 0xffffffec
	.word	94                              # 0x5e
	.word	4294967280                      # 0xfffffff0
	.word	83                              # 0x53
	.word	4294967274                      # 0xffffffea
	.word	110                             # 0x6e
	.word	4294967275                      # 0xffffffeb
	.word	91                              # 0x5b
	.word	4294967278                      # 0xffffffee
	.word	102                             # 0x66
	.word	4294967283                      # 0xfffffff3
	.word	93                              # 0x5d
	.word	4294967267                      # 0xffffffe3
	.word	127                             # 0x7f
	.word	4294967257                      # 0xffffffd9
	.word	127                             # 0x7f
	.word	4294967278                      # 0xffffffee
	.word	91                              # 0x5b
	.word	4294967279                      # 0xffffffef
	.word	96                              # 0x60
	.word	4294967270                      # 0xffffffe6
	.word	81                              # 0x51
	.word	4294967261                      # 0xffffffdd
	.word	98                              # 0x62
	.word	4294967272                      # 0xffffffe8
	.word	102                             # 0x66
	.word	4294967273                      # 0xffffffe9
	.word	97                              # 0x61
	.word	4294967269                      # 0xffffffe5
	.word	119                             # 0x77
	.word	4294967272                      # 0xffffffe8
	.word	99                              # 0x63
	.word	4294967275                      # 0xffffffeb
	.word	110                             # 0x6e
	.word	4294967278                      # 0xffffffee
	.word	102                             # 0x66
	.word	4294967260                      # 0xffffffdc
	.word	127                             # 0x7f
	.word	4294967260                      # 0xffffffdc
	.word	127                             # 0x7f
	.word	4294967279                      # 0xffffffef
	.word	91                              # 0x5b
	.word	4294967282                      # 0xfffffff2
	.word	95                              # 0x5f
	.word	4294967271                      # 0xffffffe7
	.word	84                              # 0x54
	.word	4294967271                      # 0xffffffe7
	.word	86                              # 0x56
	.word	4294967284                      # 0xfffffff4
	.word	89                              # 0x59
	.word	4294967279                      # 0xffffffef
	.word	91                              # 0x5b
	.word	4294967265                      # 0xffffffe1
	.word	127                             # 0x7f
	.word	4294967282                      # 0xfffffff2
	.word	76                              # 0x4c
	.word	4294967278                      # 0xffffffee
	.word	103                             # 0x67
	.word	4294967283                      # 0xfffffff3
	.word	90                              # 0x5a
	.word	4294967259                      # 0xffffffdb
	.word	127                             # 0x7f
	.size	INIT_CBP_P, 288

	.type	INIT_BCBP_I,@object             # @INIT_BCBP_I
	.p2align	2, 0x0
INIT_BCBP_I:
	.word	4294967279                      # 0xffffffef
	.word	123                             # 0x7b
	.word	4294967284                      # 0xfffffff4
	.word	115                             # 0x73
	.word	4294967280                      # 0xfffffff0
	.word	122                             # 0x7a
	.word	4294967285                      # 0xfffffff5
	.word	115                             # 0x73
	.word	4294967284                      # 0xfffffff4
	.word	63                              # 0x3f
	.word	4294967294                      # 0xfffffffe
	.word	68                              # 0x44
	.word	4294967281                      # 0xfffffff1
	.word	84                              # 0x54
	.word	4294967283                      # 0xfffffff3
	.word	104                             # 0x68
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967293                      # 0xfffffffd
	.word	70                              # 0x46
	.word	4294967288                      # 0xfffffff8
	.word	93                              # 0x5d
	.word	4294967286                      # 0xfffffff6
	.word	90                              # 0x5a
	.word	4294967266                      # 0xffffffe2
	.word	127                             # 0x7f
	.word	4294967295                      # 0xffffffff
	.word	74                              # 0x4a
	.word	4294967290                      # 0xfffffffa
	.word	97                              # 0x61
	.word	4294967289                      # 0xfffffff9
	.word	91                              # 0x5b
	.word	4294967276                      # 0xffffffec
	.word	127                             # 0x7f
	.word	4294967292                      # 0xfffffffc
	.word	56                              # 0x38
	.word	4294967291                      # 0xfffffffb
	.word	82                              # 0x52
	.word	4294967289                      # 0xfffffff9
	.word	76                              # 0x4c
	.word	4294967274                      # 0xffffffea
	.word	125                             # 0x7d
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.size	INIT_BCBP_I, 256

	.type	INIT_BCBP_P,@object             # @INIT_BCBP_P
	.p2align	2, 0x0
INIT_BCBP_P:
	.word	4294967289                      # 0xfffffff9
	.word	92                              # 0x5c
	.word	4294967291                      # 0xfffffffb
	.word	89                              # 0x59
	.word	4294967289                      # 0xfffffff9
	.word	96                              # 0x60
	.word	4294967283                      # 0xfffffff3
	.word	108                             # 0x6c
	.word	4294967293                      # 0xfffffffd
	.word	46                              # 0x2e
	.word	4294967295                      # 0xffffffff
	.word	65                              # 0x41
	.word	4294967295                      # 0xffffffff
	.word	57                              # 0x39
	.word	4294967287                      # 0xfffffff7
	.word	93                              # 0x5d
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967293                      # 0xfffffffd
	.word	74                              # 0x4a
	.word	4294967287                      # 0xfffffff7
	.word	92                              # 0x5c
	.word	4294967288                      # 0xfffffff8
	.word	87                              # 0x57
	.word	4294967273                      # 0xffffffe9
	.word	126                             # 0x7e
	.word	5                               # 0x5
	.word	54                              # 0x36
	.word	6                               # 0x6
	.word	60                              # 0x3c
	.word	6                               # 0x6
	.word	59                              # 0x3b
	.word	6                               # 0x6
	.word	69                              # 0x45
	.word	4294967295                      # 0xffffffff
	.word	48                              # 0x30
	.word	0                               # 0x0
	.word	68                              # 0x44
	.word	4294967292                      # 0xfffffffc
	.word	69                              # 0x45
	.word	4294967288                      # 0xfffffff8
	.word	88                              # 0x58
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	80                              # 0x50
	.word	4294967291                      # 0xfffffffb
	.word	89                              # 0x59
	.word	4294967289                      # 0xfffffff9
	.word	94                              # 0x5e
	.word	4294967292                      # 0xfffffffc
	.word	92                              # 0x5c
	.word	0                               # 0x0
	.word	39                              # 0x27
	.word	0                               # 0x0
	.word	65                              # 0x41
	.word	4294967281                      # 0xfffffff1
	.word	84                              # 0x54
	.word	4294967261                      # 0xffffffdd
	.word	127                             # 0x7f
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967294                      # 0xfffffffe
	.word	73                              # 0x49
	.word	4294967284                      # 0xfffffff4
	.word	104                             # 0x68
	.word	4294967287                      # 0xfffffff7
	.word	91                              # 0x5b
	.word	4294967265                      # 0xffffffe1
	.word	127                             # 0x7f
	.word	3                               # 0x3
	.word	55                              # 0x37
	.word	7                               # 0x7
	.word	56                              # 0x38
	.word	7                               # 0x7
	.word	55                              # 0x37
	.word	8                               # 0x8
	.word	61                              # 0x3d
	.word	4294967293                      # 0xfffffffd
	.word	53                              # 0x35
	.word	0                               # 0x0
	.word	68                              # 0x44
	.word	4294967289                      # 0xfffffff9
	.word	74                              # 0x4a
	.word	4294967287                      # 0xfffffff7
	.word	88                              # 0x58
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	11                              # 0xb
	.word	80                              # 0x50
	.word	5                               # 0x5
	.word	76                              # 0x4c
	.word	2                               # 0x2
	.word	84                              # 0x54
	.word	5                               # 0x5
	.word	78                              # 0x4e
	.word	4294967290                      # 0xfffffffa
	.word	55                              # 0x37
	.word	4                               # 0x4
	.word	61                              # 0x3d
	.word	4294967282                      # 0xfffffff2
	.word	83                              # 0x53
	.word	4294967259                      # 0xffffffdb
	.word	127                             # 0x7f
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967291                      # 0xfffffffb
	.word	79                              # 0x4f
	.word	4294967285                      # 0xfffffff5
	.word	104                             # 0x68
	.word	4294967285                      # 0xfffffff5
	.word	91                              # 0x5b
	.word	4294967266                      # 0xffffffe2
	.word	127                             # 0x7f
	.word	0                               # 0x0
	.word	65                              # 0x41
	.word	4294967294                      # 0xfffffffe
	.word	79                              # 0x4f
	.word	0                               # 0x0
	.word	72                              # 0x48
	.word	4294967292                      # 0xfffffffc
	.word	92                              # 0x5c
	.word	4294967290                      # 0xfffffffa
	.word	56                              # 0x38
	.word	3                               # 0x3
	.word	68                              # 0x44
	.word	4294967288                      # 0xfffffff8
	.word	71                              # 0x47
	.word	4294967283                      # 0xfffffff3
	.word	98                              # 0x62
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.size	INIT_BCBP_P, 768

	.type	INIT_MAP_I,@object              # @INIT_MAP_I
	.p2align	2, 0x0
INIT_MAP_I:
	.word	4294967289                      # 0xfffffff9
	.word	93                              # 0x5d
	.word	4294967285                      # 0xfffffff5
	.word	87                              # 0x57
	.word	4294967293                      # 0xfffffffd
	.word	77                              # 0x4d
	.word	4294967291                      # 0xfffffffb
	.word	71                              # 0x47
	.word	4294967292                      # 0xfffffffc
	.word	63                              # 0x3f
	.word	4294967292                      # 0xfffffffc
	.word	68                              # 0x44
	.word	4294967284                      # 0xfffffff4
	.word	84                              # 0x54
	.word	4294967289                      # 0xfffffff9
	.word	62                              # 0x3e
	.word	4294967289                      # 0xfffffff9
	.word	65                              # 0x41
	.word	8                               # 0x8
	.word	61                              # 0x3d
	.word	5                               # 0x5
	.word	56                              # 0x38
	.word	4294967294                      # 0xfffffffe
	.word	66                              # 0x42
	.word	1                               # 0x1
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	61                              # 0x3d
	.word	4294967294                      # 0xfffffffe
	.word	78                              # 0x4e
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	1                               # 0x1
	.word	50                              # 0x32
	.word	7                               # 0x7
	.word	52                              # 0x34
	.word	10                              # 0xa
	.word	35                              # 0x23
	.word	0                               # 0x0
	.word	44                              # 0x2c
	.word	11                              # 0xb
	.word	38                              # 0x26
	.word	1                               # 0x1
	.word	45                              # 0x2d
	.word	0                               # 0x0
	.word	46                              # 0x2e
	.word	5                               # 0x5
	.word	44                              # 0x2c
	.word	31                              # 0x1f
	.word	17                              # 0x11
	.word	1                               # 0x1
	.word	51                              # 0x33
	.word	7                               # 0x7
	.word	50                              # 0x32
	.word	28                              # 0x1c
	.word	19                              # 0x13
	.word	16                              # 0x10
	.word	33                              # 0x21
	.word	14                              # 0xe
	.word	62                              # 0x3e
	.word	4294967279                      # 0xffffffef
	.word	120                             # 0x78
	.word	4294967276                      # 0xffffffec
	.word	112                             # 0x70
	.word	4294967278                      # 0xffffffee
	.word	114                             # 0x72
	.word	4294967285                      # 0xfffffff5
	.word	85                              # 0x55
	.word	4294967281                      # 0xfffffff1
	.word	92                              # 0x5c
	.word	4294967282                      # 0xfffffff2
	.word	89                              # 0x59
	.word	4294967270                      # 0xffffffe6
	.word	71                              # 0x47
	.word	4294967281                      # 0xfffffff1
	.word	81                              # 0x51
	.word	4294967282                      # 0xfffffff2
	.word	80                              # 0x50
	.word	0                               # 0x0
	.word	68                              # 0x44
	.word	4294967282                      # 0xfffffff2
	.word	70                              # 0x46
	.word	4294967272                      # 0xffffffe8
	.word	56                              # 0x38
	.word	4294967273                      # 0xffffffe9
	.word	68                              # 0x44
	.word	4294967272                      # 0xffffffe8
	.word	50                              # 0x32
	.word	4294967285                      # 0xfffffff5
	.word	74                              # 0x4a
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967283                      # 0xfffffff3
	.word	108                             # 0x6c
	.word	4294967281                      # 0xfffffff1
	.word	100                             # 0x64
	.word	4294967283                      # 0xfffffff3
	.word	101                             # 0x65
	.word	4294967283                      # 0xfffffff3
	.word	91                              # 0x5b
	.word	4294967284                      # 0xfffffff4
	.word	94                              # 0x5e
	.word	4294967286                      # 0xfffffff6
	.word	88                              # 0x58
	.word	4294967280                      # 0xfffffff0
	.word	84                              # 0x54
	.word	4294967286                      # 0xfffffff6
	.word	86                              # 0x56
	.word	4294967289                      # 0xfffffff9
	.word	83                              # 0x53
	.word	4294967283                      # 0xfffffff3
	.word	87                              # 0x57
	.word	4294967277                      # 0xffffffed
	.word	94                              # 0x5e
	.word	1                               # 0x1
	.word	70                              # 0x46
	.word	0                               # 0x0
	.word	72                              # 0x48
	.word	4294967291                      # 0xfffffffb
	.word	74                              # 0x4a
	.word	18                              # 0x12
	.word	59                              # 0x3b
	.word	4294967288                      # 0xfffffff8
	.word	102                             # 0x66
	.word	4294967281                      # 0xfffffff1
	.word	100                             # 0x64
	.word	0                               # 0x0
	.word	95                              # 0x5f
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967292                      # 0xfffffffc
	.word	75                              # 0x4b
	.word	2                               # 0x2
	.word	72                              # 0x48
	.word	4294967285                      # 0xfffffff5
	.word	75                              # 0x4b
	.word	4294967293                      # 0xfffffffd
	.word	71                              # 0x47
	.word	15                              # 0xf
	.word	46                              # 0x2e
	.word	4294967283                      # 0xfffffff3
	.word	69                              # 0x45
	.word	0                               # 0x0
	.word	62                              # 0x3e
	.word	0                               # 0x0
	.word	65                              # 0x41
	.word	21                              # 0x15
	.word	37                              # 0x25
	.word	4294967281                      # 0xfffffff1
	.word	72                              # 0x48
	.word	9                               # 0x9
	.word	57                              # 0x39
	.word	16                              # 0x10
	.word	54                              # 0x36
	.word	0                               # 0x0
	.word	62                              # 0x3e
	.word	12                              # 0xc
	.word	72                              # 0x48
	.size	INIT_MAP_I, 960

	.type	INIT_MAP_P,@object              # @INIT_MAP_P
	.p2align	2, 0x0
INIT_MAP_P:
	.word	4294967294                      # 0xfffffffe
	.word	85                              # 0x55
	.word	4294967290                      # 0xfffffffa
	.word	78                              # 0x4e
	.word	4294967295                      # 0xffffffff
	.word	75                              # 0x4b
	.word	4294967289                      # 0xfffffff9
	.word	77                              # 0x4d
	.word	2                               # 0x2
	.word	54                              # 0x36
	.word	5                               # 0x5
	.word	50                              # 0x32
	.word	4294967293                      # 0xfffffffd
	.word	68                              # 0x44
	.word	1                               # 0x1
	.word	50                              # 0x32
	.word	6                               # 0x6
	.word	42                              # 0x2a
	.word	4294967292                      # 0xfffffffc
	.word	81                              # 0x51
	.word	1                               # 0x1
	.word	63                              # 0x3f
	.word	4294967292                      # 0xfffffffc
	.word	70                              # 0x46
	.word	0                               # 0x0
	.word	67                              # 0x43
	.word	2                               # 0x2
	.word	57                              # 0x39
	.word	4294967294                      # 0xfffffffe
	.word	76                              # 0x4c
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	11                              # 0xb
	.word	35                              # 0x23
	.word	4                               # 0x4
	.word	64                              # 0x40
	.word	1                               # 0x1
	.word	61                              # 0x3d
	.word	11                              # 0xb
	.word	35                              # 0x23
	.word	18                              # 0x12
	.word	25                              # 0x19
	.word	12                              # 0xc
	.word	24                              # 0x18
	.word	13                              # 0xd
	.word	29                              # 0x1d
	.word	13                              # 0xd
	.word	36                              # 0x24
	.word	4294967286                      # 0xfffffff6
	.word	93                              # 0x5d
	.word	4294967289                      # 0xfffffff9
	.word	73                              # 0x49
	.word	4294967294                      # 0xfffffffe
	.word	73                              # 0x49
	.word	13                              # 0xd
	.word	46                              # 0x2e
	.word	9                               # 0x9
	.word	49                              # 0x31
	.word	4294967289                      # 0xfffffff9
	.word	100                             # 0x64
	.word	4294967292                      # 0xfffffffc
	.word	79                              # 0x4f
	.word	4294967289                      # 0xfffffff9
	.word	71                              # 0x47
	.word	4294967291                      # 0xfffffffb
	.word	69                              # 0x45
	.word	4294967287                      # 0xfffffff7
	.word	70                              # 0x46
	.word	4294967288                      # 0xfffffff8
	.word	66                              # 0x42
	.word	4294967286                      # 0xfffffff6
	.word	68                              # 0x44
	.word	4294967277                      # 0xffffffed
	.word	73                              # 0x49
	.word	4294967284                      # 0xfffffff4
	.word	69                              # 0x45
	.word	4294967280                      # 0xfffffff0
	.word	70                              # 0x46
	.word	4294967281                      # 0xfffffff1
	.word	67                              # 0x43
	.word	4294967276                      # 0xffffffec
	.word	62                              # 0x3e
	.word	4294967277                      # 0xffffffed
	.word	70                              # 0x46
	.word	4294967280                      # 0xfffffff0
	.word	66                              # 0x42
	.word	4294967274                      # 0xffffffea
	.word	65                              # 0x41
	.word	4294967276                      # 0xffffffec
	.word	63                              # 0x3f
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	9                               # 0x9
	.word	53                              # 0x35
	.word	2                               # 0x2
	.word	53                              # 0x35
	.word	5                               # 0x5
	.word	53                              # 0x35
	.word	4294967294                      # 0xfffffffe
	.word	61                              # 0x3d
	.word	0                               # 0x0
	.word	56                              # 0x38
	.word	0                               # 0x0
	.word	56                              # 0x38
	.word	4294967283                      # 0xfffffff3
	.word	63                              # 0x3f
	.word	4294967291                      # 0xfffffffb
	.word	60                              # 0x3c
	.word	4294967295                      # 0xffffffff
	.word	62                              # 0x3e
	.word	4                               # 0x4
	.word	57                              # 0x39
	.word	4294967290                      # 0xfffffffa
	.word	69                              # 0x45
	.word	4                               # 0x4
	.word	57                              # 0x39
	.word	14                              # 0xe
	.word	39                              # 0x27
	.word	4                               # 0x4
	.word	51                              # 0x33
	.word	13                              # 0xd
	.word	68                              # 0x44
	.word	3                               # 0x3
	.word	64                              # 0x40
	.word	1                               # 0x1
	.word	61                              # 0x3d
	.word	9                               # 0x9
	.word	63                              # 0x3f
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	7                               # 0x7
	.word	50                              # 0x32
	.word	16                              # 0x10
	.word	39                              # 0x27
	.word	5                               # 0x5
	.word	44                              # 0x2c
	.word	4                               # 0x4
	.word	52                              # 0x34
	.word	11                              # 0xb
	.word	48                              # 0x30
	.word	4294967291                      # 0xfffffffb
	.word	60                              # 0x3c
	.word	4294967295                      # 0xffffffff
	.word	59                              # 0x3b
	.word	0                               # 0x0
	.word	59                              # 0x3b
	.word	22                              # 0x16
	.word	33                              # 0x21
	.word	5                               # 0x5
	.word	44                              # 0x2c
	.word	14                              # 0xe
	.word	43                              # 0x2b
	.word	4294967295                      # 0xffffffff
	.word	78                              # 0x4e
	.word	0                               # 0x0
	.word	60                              # 0x3c
	.word	9                               # 0x9
	.word	69                              # 0x45
	.word	4294967283                      # 0xfffffff3
	.word	103                             # 0x67
	.word	4294967283                      # 0xfffffff3
	.word	91                              # 0x5b
	.word	4294967287                      # 0xfffffff7
	.word	89                              # 0x59
	.word	4294967282                      # 0xfffffff2
	.word	92                              # 0x5c
	.word	4294967288                      # 0xfffffff8
	.word	76                              # 0x4c
	.word	4294967284                      # 0xfffffff4
	.word	87                              # 0x57
	.word	4294967273                      # 0xffffffe9
	.word	110                             # 0x6e
	.word	4294967272                      # 0xffffffe8
	.word	105                             # 0x69
	.word	4294967286                      # 0xfffffff6
	.word	78                              # 0x4e
	.word	4294967276                      # 0xffffffec
	.word	112                             # 0x70
	.word	4294967279                      # 0xffffffef
	.word	99                              # 0x63
	.word	4294967218                      # 0xffffffb2
	.word	127                             # 0x7f
	.word	4294967226                      # 0xffffffba
	.word	127                             # 0x7f
	.word	4294967246                      # 0xffffffce
	.word	127                             # 0x7f
	.word	4294967250                      # 0xffffffd2
	.word	127                             # 0x7f
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967292                      # 0xfffffffc
	.word	66                              # 0x42
	.word	4294967291                      # 0xfffffffb
	.word	78                              # 0x4e
	.word	4294967292                      # 0xfffffffc
	.word	71                              # 0x47
	.word	4294967288                      # 0xfffffff8
	.word	72                              # 0x48
	.word	2                               # 0x2
	.word	59                              # 0x3b
	.word	4294967295                      # 0xffffffff
	.word	55                              # 0x37
	.word	4294967289                      # 0xfffffff9
	.word	70                              # 0x46
	.word	4294967290                      # 0xfffffffa
	.word	75                              # 0x4b
	.word	4294967288                      # 0xfffffff8
	.word	89                              # 0x59
	.word	4294967262                      # 0xffffffde
	.word	119                             # 0x77
	.word	4294967293                      # 0xfffffffd
	.word	75                              # 0x4b
	.word	32                              # 0x20
	.word	20                              # 0x14
	.word	30                              # 0x1e
	.word	22                              # 0x16
	.word	4294967252                      # 0xffffffd4
	.word	127                             # 0x7f
	.word	4294967291                      # 0xfffffffb
	.word	85                              # 0x55
	.word	4294967290                      # 0xfffffffa
	.word	81                              # 0x51
	.word	4294967286                      # 0xfffffff6
	.word	77                              # 0x4d
	.word	4294967289                      # 0xfffffff9
	.word	81                              # 0x51
	.word	4294967279                      # 0xffffffef
	.word	80                              # 0x50
	.word	4294967278                      # 0xffffffee
	.word	73                              # 0x49
	.word	4294967292                      # 0xfffffffc
	.word	74                              # 0x4a
	.word	4294967286                      # 0xfffffff6
	.word	83                              # 0x53
	.word	4294967287                      # 0xfffffff7
	.word	71                              # 0x47
	.word	4294967287                      # 0xfffffff7
	.word	67                              # 0x43
	.word	4294967295                      # 0xffffffff
	.word	61                              # 0x3d
	.word	4294967288                      # 0xfffffff8
	.word	66                              # 0x42
	.word	4294967282                      # 0xfffffff2
	.word	66                              # 0x42
	.word	0                               # 0x0
	.word	59                              # 0x3b
	.word	2                               # 0x2
	.word	59                              # 0x3b
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	54                              # 0x36
	.word	4294967291                      # 0xfffffffb
	.word	61                              # 0x3d
	.word	0                               # 0x0
	.word	58                              # 0x3a
	.word	4294967295                      # 0xffffffff
	.word	60                              # 0x3c
	.word	4294967293                      # 0xfffffffd
	.word	61                              # 0x3d
	.word	4294967288                      # 0xfffffff8
	.word	67                              # 0x43
	.word	4294967271                      # 0xffffffe7
	.word	84                              # 0x54
	.word	4294967282                      # 0xfffffff2
	.word	74                              # 0x4a
	.word	4294967291                      # 0xfffffffb
	.word	65                              # 0x41
	.word	5                               # 0x5
	.word	52                              # 0x34
	.word	2                               # 0x2
	.word	57                              # 0x39
	.word	0                               # 0x0
	.word	61                              # 0x3d
	.word	4294967287                      # 0xfffffff7
	.word	69                              # 0x45
	.word	4294967285                      # 0xfffffff5
	.word	70                              # 0x46
	.word	18                              # 0x12
	.word	55                              # 0x37
	.word	4294967292                      # 0xfffffffc
	.word	71                              # 0x47
	.word	0                               # 0x0
	.word	58                              # 0x3a
	.word	7                               # 0x7
	.word	61                              # 0x3d
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	9                               # 0x9
	.word	41                              # 0x29
	.word	18                              # 0x12
	.word	25                              # 0x19
	.word	9                               # 0x9
	.word	32                              # 0x20
	.word	5                               # 0x5
	.word	43                              # 0x2b
	.word	9                               # 0x9
	.word	47                              # 0x2f
	.word	0                               # 0x0
	.word	44                              # 0x2c
	.word	0                               # 0x0
	.word	51                              # 0x33
	.word	2                               # 0x2
	.word	46                              # 0x2e
	.word	19                              # 0x13
	.word	38                              # 0x26
	.word	4294967292                      # 0xfffffffc
	.word	66                              # 0x42
	.word	15                              # 0xf
	.word	38                              # 0x26
	.word	12                              # 0xc
	.word	42                              # 0x2a
	.word	9                               # 0x9
	.word	34                              # 0x22
	.word	0                               # 0x0
	.word	89                              # 0x59
	.word	4294967292                      # 0xfffffffc
	.word	86                              # 0x56
	.word	4294967284                      # 0xfffffff4
	.word	88                              # 0x58
	.word	4294967291                      # 0xfffffffb
	.word	82                              # 0x52
	.word	4294967293                      # 0xfffffffd
	.word	72                              # 0x48
	.word	4294967292                      # 0xfffffffc
	.word	67                              # 0x43
	.word	4294967288                      # 0xfffffff8
	.word	72                              # 0x48
	.word	4294967280                      # 0xfffffff0
	.word	89                              # 0x59
	.word	4294967287                      # 0xfffffff7
	.word	69                              # 0x45
	.word	4294967295                      # 0xffffffff
	.word	59                              # 0x3b
	.word	5                               # 0x5
	.word	66                              # 0x42
	.word	4                               # 0x4
	.word	57                              # 0x39
	.word	4294967292                      # 0xfffffffc
	.word	71                              # 0x47
	.word	4294967294                      # 0xfffffffe
	.word	71                              # 0x47
	.word	2                               # 0x2
	.word	58                              # 0x3a
	.word	4294967295                      # 0xffffffff
	.word	74                              # 0x4a
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967292                      # 0xfffffffc
	.word	44                              # 0x2c
	.word	4294967295                      # 0xffffffff
	.word	69                              # 0x45
	.word	0                               # 0x0
	.word	62                              # 0x3e
	.word	4294967289                      # 0xfffffff9
	.word	51                              # 0x33
	.word	4294967292                      # 0xfffffffc
	.word	47                              # 0x2f
	.word	4294967290                      # 0xfffffffa
	.word	42                              # 0x2a
	.word	4294967293                      # 0xfffffffd
	.word	41                              # 0x29
	.word	4294967290                      # 0xfffffffa
	.word	53                              # 0x35
	.word	8                               # 0x8
	.word	76                              # 0x4c
	.word	4294967287                      # 0xfffffff7
	.word	78                              # 0x4e
	.word	4294967285                      # 0xfffffff5
	.word	83                              # 0x53
	.word	9                               # 0x9
	.word	52                              # 0x34
	.word	0                               # 0x0
	.word	67                              # 0x43
	.word	4294967291                      # 0xfffffffb
	.word	90                              # 0x5a
	.word	4294967293                      # 0xfffffffd
	.word	78                              # 0x4e
	.word	4294967288                      # 0xfffffff8
	.word	74                              # 0x4a
	.word	4294967287                      # 0xfffffff7
	.word	72                              # 0x48
	.word	4294967286                      # 0xfffffff6
	.word	72                              # 0x48
	.word	4294967278                      # 0xffffffee
	.word	75                              # 0x4b
	.word	4294967284                      # 0xfffffff4
	.word	71                              # 0x47
	.word	4294967285                      # 0xfffffff5
	.word	63                              # 0x3f
	.word	4294967291                      # 0xfffffffb
	.word	70                              # 0x46
	.word	4294967279                      # 0xffffffef
	.word	75                              # 0x4b
	.word	4294967282                      # 0xfffffff2
	.word	72                              # 0x48
	.word	4294967280                      # 0xfffffff0
	.word	67                              # 0x43
	.word	4294967288                      # 0xfffffff8
	.word	53                              # 0x35
	.word	4294967282                      # 0xfffffff2
	.word	59                              # 0x3b
	.word	4294967287                      # 0xfffffff7
	.word	52                              # 0x34
	.word	4294967285                      # 0xfffffff5
	.word	68                              # 0x44
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	1                               # 0x1
	.word	67                              # 0x43
	.word	4294967281                      # 0xfffffff1
	.word	72                              # 0x48
	.word	4294967291                      # 0xfffffffb
	.word	75                              # 0x4b
	.word	4294967288                      # 0xfffffff8
	.word	80                              # 0x50
	.word	4294967275                      # 0xffffffeb
	.word	83                              # 0x53
	.word	4294967275                      # 0xffffffeb
	.word	64                              # 0x40
	.word	4294967283                      # 0xfffffff3
	.word	31                              # 0x1f
	.word	4294967271                      # 0xffffffe7
	.word	64                              # 0x40
	.word	4294967267                      # 0xffffffe3
	.word	94                              # 0x5e
	.word	9                               # 0x9
	.word	75                              # 0x4b
	.word	17                              # 0x11
	.word	63                              # 0x3f
	.word	4294967288                      # 0xfffffff8
	.word	74                              # 0x4a
	.word	4294967291                      # 0xfffffffb
	.word	35                              # 0x23
	.word	4294967294                      # 0xfffffffe
	.word	27                              # 0x1b
	.word	13                              # 0xd
	.word	91                              # 0x5b
	.word	3                               # 0x3
	.word	65                              # 0x41
	.word	4294967289                      # 0xfffffff9
	.word	69                              # 0x45
	.word	8                               # 0x8
	.word	77                              # 0x4d
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967286                      # 0xfffffff6
	.word	66                              # 0x42
	.word	3                               # 0x3
	.word	62                              # 0x3e
	.word	4294967293                      # 0xfffffffd
	.word	68                              # 0x44
	.word	4294967276                      # 0xffffffec
	.word	81                              # 0x51
	.word	0                               # 0x0
	.word	30                              # 0x1e
	.word	1                               # 0x1
	.word	7                               # 0x7
	.word	4294967293                      # 0xfffffffd
	.word	23                              # 0x17
	.word	4294967275                      # 0xffffffeb
	.word	74                              # 0x4a
	.word	16                              # 0x10
	.word	66                              # 0x42
	.word	4294967273                      # 0xffffffe9
	.word	124                             # 0x7c
	.word	17                              # 0x11
	.word	37                              # 0x25
	.word	44                              # 0x2c
	.word	4294967278                      # 0xffffffee
	.word	50                              # 0x32
	.word	4294967262                      # 0xffffffde
	.word	4294967274                      # 0xffffffea
	.word	127                             # 0x7f
	.size	INIT_MAP_P, 2880

	.type	INIT_LAST_I,@object             # @INIT_LAST_I
	.p2align	2, 0x0
INIT_LAST_I:
	.word	24                              # 0x18
	.word	0                               # 0x0
	.word	15                              # 0xf
	.word	9                               # 0x9
	.word	8                               # 0x8
	.word	25                              # 0x19
	.word	13                              # 0xd
	.word	18                              # 0x12
	.word	15                              # 0xf
	.word	9                               # 0x9
	.word	13                              # 0xd
	.word	19                              # 0x13
	.word	10                              # 0xa
	.word	37                              # 0x25
	.word	12                              # 0xc
	.word	18                              # 0x12
	.word	6                               # 0x6
	.word	29                              # 0x1d
	.word	20                              # 0x14
	.word	33                              # 0x21
	.word	15                              # 0xf
	.word	30                              # 0x1e
	.word	4                               # 0x4
	.word	45                              # 0x2d
	.word	1                               # 0x1
	.word	58                              # 0x3a
	.word	0                               # 0x0
	.word	62                              # 0x3e
	.word	7                               # 0x7
	.word	61                              # 0x3d
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	12                              # 0xc
	.word	38                              # 0x26
	.word	11                              # 0xb
	.word	45                              # 0x2d
	.word	15                              # 0xf
	.word	39                              # 0x27
	.word	11                              # 0xb
	.word	42                              # 0x2a
	.word	13                              # 0xd
	.word	44                              # 0x2c
	.word	16                              # 0x10
	.word	45                              # 0x2d
	.word	12                              # 0xc
	.word	41                              # 0x29
	.word	10                              # 0xa
	.word	49                              # 0x31
	.word	30                              # 0x1e
	.word	34                              # 0x22
	.word	18                              # 0x12
	.word	42                              # 0x2a
	.word	10                              # 0xa
	.word	55                              # 0x37
	.word	17                              # 0x11
	.word	51                              # 0x33
	.word	17                              # 0x11
	.word	46                              # 0x2e
	.word	0                               # 0x0
	.word	89                              # 0x59
	.word	23                              # 0x17
	.word	4294967283                      # 0xfffffff3
	.word	26                              # 0x1a
	.word	4294967283                      # 0xfffffff3
	.word	40                              # 0x28
	.word	4294967281                      # 0xfffffff1
	.word	49                              # 0x31
	.word	4294967282                      # 0xfffffff2
	.word	44                              # 0x2c
	.word	3                               # 0x3
	.word	45                              # 0x2d
	.word	6                               # 0x6
	.word	44                              # 0x2c
	.word	34                              # 0x22
	.word	33                              # 0x21
	.word	54                              # 0x36
	.word	19                              # 0x13
	.word	82                              # 0x52
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	26                              # 0x1a
	.word	4294967277                      # 0xffffffed
	.word	22                              # 0x16
	.word	4294967279                      # 0xffffffef
	.word	26                              # 0x1a
	.word	4294967279                      # 0xffffffef
	.word	30                              # 0x1e
	.word	4294967271                      # 0xffffffe7
	.word	28                              # 0x1c
	.word	4294967276                      # 0xffffffec
	.word	33                              # 0x21
	.word	4294967273                      # 0xffffffe9
	.word	37                              # 0x25
	.word	4294967269                      # 0xffffffe5
	.word	33                              # 0x21
	.word	4294967273                      # 0xffffffe9
	.word	40                              # 0x28
	.word	4294967268                      # 0xffffffe4
	.word	38                              # 0x26
	.word	4294967279                      # 0xffffffef
	.word	33                              # 0x21
	.word	4294967285                      # 0xfffffff5
	.word	40                              # 0x28
	.word	4294967281                      # 0xfffffff1
	.word	41                              # 0x29
	.word	4294967290                      # 0xfffffffa
	.word	38                              # 0x26
	.word	1                               # 0x1
	.word	41                              # 0x29
	.word	17                              # 0x11
	.word	30                              # 0x1e
	.word	4294967290                      # 0xfffffffa
	.word	27                              # 0x1b
	.word	3                               # 0x3
	.word	26                              # 0x1a
	.word	22                              # 0x16
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	37                              # 0x25
	.word	4294967280                      # 0xfffffff0
	.word	35                              # 0x23
	.word	4294967292                      # 0xfffffffc
	.word	38                              # 0x26
	.word	4294967288                      # 0xfffffff8
	.word	38                              # 0x26
	.word	4294967293                      # 0xfffffffd
	.word	37                              # 0x25
	.word	3                               # 0x3
	.word	38                              # 0x26
	.word	5                               # 0x5
	.word	42                              # 0x2a
	.word	0                               # 0x0
	.word	35                              # 0x23
	.word	16                              # 0x10
	.word	39                              # 0x27
	.word	22                              # 0x16
	.word	14                              # 0xe
	.word	48                              # 0x30
	.word	27                              # 0x1b
	.word	37                              # 0x25
	.word	21                              # 0x15
	.word	60                              # 0x3c
	.word	12                              # 0xc
	.word	68                              # 0x44
	.word	2                               # 0x2
	.word	97                              # 0x61
	.size	INIT_LAST_I, 960

	.type	INIT_LAST_P,@object             # @INIT_LAST_P
	.p2align	2, 0x0
INIT_LAST_P:
	.word	11                              # 0xb
	.word	28                              # 0x1c
	.word	2                               # 0x2
	.word	40                              # 0x28
	.word	3                               # 0x3
	.word	44                              # 0x2c
	.word	0                               # 0x0
	.word	49                              # 0x31
	.word	0                               # 0x0
	.word	46                              # 0x2e
	.word	2                               # 0x2
	.word	44                              # 0x2c
	.word	2                               # 0x2
	.word	51                              # 0x33
	.word	0                               # 0x0
	.word	47                              # 0x2f
	.word	4                               # 0x4
	.word	39                              # 0x27
	.word	2                               # 0x2
	.word	62                              # 0x3e
	.word	6                               # 0x6
	.word	46                              # 0x2e
	.word	0                               # 0x0
	.word	54                              # 0x36
	.word	3                               # 0x3
	.word	54                              # 0x36
	.word	2                               # 0x2
	.word	58                              # 0x3a
	.word	4                               # 0x4
	.word	63                              # 0x3f
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	6                               # 0x6
	.word	51                              # 0x33
	.word	6                               # 0x6
	.word	57                              # 0x39
	.word	7                               # 0x7
	.word	53                              # 0x35
	.word	6                               # 0x6
	.word	52                              # 0x34
	.word	6                               # 0x6
	.word	55                              # 0x37
	.word	11                              # 0xb
	.word	45                              # 0x2d
	.word	14                              # 0xe
	.word	36                              # 0x24
	.word	8                               # 0x8
	.word	53                              # 0x35
	.word	4294967295                      # 0xffffffff
	.word	82                              # 0x52
	.word	7                               # 0x7
	.word	55                              # 0x37
	.word	4294967293                      # 0xfffffffd
	.word	78                              # 0x4e
	.word	15                              # 0xf
	.word	46                              # 0x2e
	.word	22                              # 0x16
	.word	31                              # 0x1f
	.word	4294967295                      # 0xffffffff
	.word	84                              # 0x54
	.word	9                               # 0x9
	.word	4294967294                      # 0xfffffffe
	.word	26                              # 0x1a
	.word	4294967287                      # 0xfffffff7
	.word	33                              # 0x21
	.word	4294967287                      # 0xfffffff7
	.word	39                              # 0x27
	.word	4294967289                      # 0xfffffff9
	.word	41                              # 0x29
	.word	4294967294                      # 0xfffffffe
	.word	45                              # 0x2d
	.word	3                               # 0x3
	.word	49                              # 0x31
	.word	9                               # 0x9
	.word	45                              # 0x2d
	.word	27                              # 0x1b
	.word	36                              # 0x24
	.word	59                              # 0x3b
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	25                              # 0x19
	.word	7                               # 0x7
	.word	30                              # 0x1e
	.word	4294967289                      # 0xfffffff9
	.word	28                              # 0x1c
	.word	3                               # 0x3
	.word	28                              # 0x1c
	.word	4                               # 0x4
	.word	32                              # 0x20
	.word	0                               # 0x0
	.word	34                              # 0x22
	.word	4294967295                      # 0xffffffff
	.word	30                              # 0x1e
	.word	6                               # 0x6
	.word	30                              # 0x1e
	.word	6                               # 0x6
	.word	32                              # 0x20
	.word	9                               # 0x9
	.word	31                              # 0x1f
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	27                              # 0x1b
	.word	26                              # 0x1a
	.word	30                              # 0x1e
	.word	37                              # 0x25
	.word	20                              # 0x14
	.word	28                              # 0x1c
	.word	34                              # 0x22
	.word	17                              # 0x11
	.word	70                              # 0x46
	.word	1                               # 0x1
	.word	67                              # 0x43
	.word	5                               # 0x5
	.word	59                              # 0x3b
	.word	9                               # 0x9
	.word	67                              # 0x43
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	16                              # 0x10
	.word	30                              # 0x1e
	.word	18                              # 0x12
	.word	32                              # 0x20
	.word	18                              # 0x12
	.word	35                              # 0x23
	.word	22                              # 0x16
	.word	29                              # 0x1d
	.word	24                              # 0x18
	.word	31                              # 0x1f
	.word	23                              # 0x17
	.word	38                              # 0x26
	.word	18                              # 0x12
	.word	43                              # 0x2b
	.word	20                              # 0x14
	.word	41                              # 0x29
	.word	11                              # 0xb
	.word	63                              # 0x3f
	.word	9                               # 0x9
	.word	59                              # 0x3b
	.word	9                               # 0x9
	.word	64                              # 0x40
	.word	4294967295                      # 0xffffffff
	.word	94                              # 0x5e
	.word	4294967294                      # 0xfffffffe
	.word	89                              # 0x59
	.word	4294967287                      # 0xfffffff7
	.word	108                             # 0x6c
	.word	4                               # 0x4
	.word	45                              # 0x2d
	.word	10                              # 0xa
	.word	28                              # 0x1c
	.word	10                              # 0xa
	.word	31                              # 0x1f
	.word	33                              # 0x21
	.word	4294967285                      # 0xfffffff5
	.word	52                              # 0x34
	.word	4294967253                      # 0xffffffd5
	.word	18                              # 0x12
	.word	15                              # 0xf
	.word	28                              # 0x1c
	.word	0                               # 0x0
	.word	35                              # 0x23
	.word	4294967274                      # 0xffffffea
	.word	38                              # 0x26
	.word	4294967271                      # 0xffffffe7
	.word	34                              # 0x22
	.word	0                               # 0x0
	.word	39                              # 0x27
	.word	4294967278                      # 0xffffffee
	.word	32                              # 0x20
	.word	4294967284                      # 0xfffffff4
	.word	102                             # 0x66
	.word	4294967202                      # 0xffffffa2
	.zero	8
	.word	56                              # 0x38
	.word	4294967281                      # 0xfffffff1
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	33                              # 0x21
	.word	4294967292                      # 0xfffffffc
	.word	29                              # 0x1d
	.word	10                              # 0xa
	.word	37                              # 0x25
	.word	4294967291                      # 0xfffffffb
	.word	51                              # 0x33
	.word	4294967267                      # 0xffffffe3
	.word	39                              # 0x27
	.word	4294967287                      # 0xfffffff7
	.word	52                              # 0x34
	.word	4294967262                      # 0xffffffde
	.word	69                              # 0x45
	.word	4294967238                      # 0xffffffc6
	.word	67                              # 0x43
	.word	4294967233                      # 0xffffffc1
	.word	44                              # 0x2c
	.word	4294967291                      # 0xfffffffb
	.word	32                              # 0x20
	.word	7                               # 0x7
	.word	55                              # 0x37
	.word	4294967267                      # 0xffffffe3
	.word	32                              # 0x20
	.word	1                               # 0x1
	.zero	8
	.word	27                              # 0x1b
	.word	36                              # 0x24
	.word	17                              # 0x11
	.word	4294967286                      # 0xfffffff6
	.word	32                              # 0x20
	.word	4294967283                      # 0xfffffff3
	.word	42                              # 0x2a
	.word	4294967287                      # 0xfffffff7
	.word	49                              # 0x31
	.word	4294967291                      # 0xfffffffb
	.word	53                              # 0x35
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	3                               # 0x3
	.word	68                              # 0x44
	.word	10                              # 0xa
	.word	66                              # 0x42
	.word	27                              # 0x1b
	.word	47                              # 0x2f
	.word	57                              # 0x39
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	33                              # 0x21
	.word	4294967271                      # 0xffffffe7
	.word	34                              # 0x22
	.word	4294967266                      # 0xffffffe2
	.word	36                              # 0x24
	.word	4294967268                      # 0xffffffe4
	.word	38                              # 0x26
	.word	4294967268                      # 0xffffffe4
	.word	38                              # 0x26
	.word	4294967269                      # 0xffffffe5
	.word	34                              # 0x22
	.word	4294967278                      # 0xffffffee
	.word	35                              # 0x23
	.word	4294967280                      # 0xfffffff0
	.word	34                              # 0x22
	.word	4294967282                      # 0xfffffff2
	.word	32                              # 0x20
	.word	4294967288                      # 0xfffffff8
	.word	37                              # 0x25
	.word	4294967290                      # 0xfffffffa
	.word	35                              # 0x23
	.word	0                               # 0x0
	.word	30                              # 0x1e
	.word	10                              # 0xa
	.word	28                              # 0x1c
	.word	18                              # 0x12
	.word	26                              # 0x1a
	.word	25                              # 0x19
	.word	29                              # 0x1d
	.word	41                              # 0x29
	.word	0                               # 0x0
	.word	75                              # 0x4b
	.word	2                               # 0x2
	.word	72                              # 0x48
	.word	8                               # 0x8
	.word	77                              # 0x4d
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	14                              # 0xe
	.word	35                              # 0x23
	.word	18                              # 0x12
	.word	31                              # 0x1f
	.word	17                              # 0x11
	.word	35                              # 0x23
	.word	21                              # 0x15
	.word	30                              # 0x1e
	.word	17                              # 0x11
	.word	45                              # 0x2d
	.word	20                              # 0x14
	.word	42                              # 0x2a
	.word	18                              # 0x12
	.word	45                              # 0x2d
	.word	27                              # 0x1b
	.word	26                              # 0x1a
	.word	16                              # 0x10
	.word	54                              # 0x36
	.word	7                               # 0x7
	.word	66                              # 0x42
	.word	16                              # 0x10
	.word	56                              # 0x38
	.word	11                              # 0xb
	.word	73                              # 0x49
	.word	10                              # 0xa
	.word	67                              # 0x43
	.word	4294967286                      # 0xfffffff6
	.word	116                             # 0x74
	.word	4                               # 0x4
	.word	39                              # 0x27
	.word	0                               # 0x0
	.word	42                              # 0x2a
	.word	7                               # 0x7
	.word	34                              # 0x22
	.word	11                              # 0xb
	.word	29                              # 0x1d
	.word	8                               # 0x8
	.word	31                              # 0x1f
	.word	6                               # 0x6
	.word	37                              # 0x25
	.word	7                               # 0x7
	.word	42                              # 0x2a
	.word	3                               # 0x3
	.word	40                              # 0x28
	.word	8                               # 0x8
	.word	33                              # 0x21
	.word	13                              # 0xd
	.word	43                              # 0x2b
	.word	13                              # 0xd
	.word	36                              # 0x24
	.word	4                               # 0x4
	.word	47                              # 0x2f
	.word	3                               # 0x3
	.word	55                              # 0x37
	.word	2                               # 0x2
	.word	58                              # 0x3a
	.word	6                               # 0x6
	.word	60                              # 0x3c
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	8                               # 0x8
	.word	44                              # 0x2c
	.word	11                              # 0xb
	.word	44                              # 0x2c
	.word	14                              # 0xe
	.word	42                              # 0x2a
	.word	7                               # 0x7
	.word	48                              # 0x30
	.word	4                               # 0x4
	.word	56                              # 0x38
	.word	4                               # 0x4
	.word	52                              # 0x34
	.word	13                              # 0xd
	.word	37                              # 0x25
	.word	9                               # 0x9
	.word	49                              # 0x31
	.word	19                              # 0x13
	.word	58                              # 0x3a
	.word	10                              # 0xa
	.word	48                              # 0x30
	.word	12                              # 0xc
	.word	45                              # 0x2d
	.word	0                               # 0x0
	.word	69                              # 0x45
	.word	20                              # 0x14
	.word	33                              # 0x21
	.word	8                               # 0x8
	.word	63                              # 0x3f
	.word	9                               # 0x9
	.word	4294967294                      # 0xfffffffe
	.word	30                              # 0x1e
	.word	4294967286                      # 0xfffffff6
	.word	31                              # 0x1f
	.word	4294967292                      # 0xfffffffc
	.word	33                              # 0x21
	.word	4294967295                      # 0xffffffff
	.word	33                              # 0x21
	.word	7                               # 0x7
	.word	31                              # 0x1f
	.word	12                              # 0xc
	.word	37                              # 0x25
	.word	23                              # 0x17
	.word	31                              # 0x1f
	.word	38                              # 0x26
	.word	20                              # 0x14
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	35                              # 0x23
	.word	4294967278                      # 0xffffffee
	.word	33                              # 0x21
	.word	4294967271                      # 0xffffffe7
	.word	28                              # 0x1c
	.word	4294967293                      # 0xfffffffd
	.word	24                              # 0x18
	.word	10                              # 0xa
	.word	27                              # 0x1b
	.word	0                               # 0x0
	.word	34                              # 0x22
	.word	4294967282                      # 0xfffffff2
	.word	52                              # 0x34
	.word	4294967252                      # 0xffffffd4
	.word	39                              # 0x27
	.word	4294967272                      # 0xffffffe8
	.word	19                              # 0x13
	.word	17                              # 0x11
	.word	31                              # 0x1f
	.word	25                              # 0x19
	.word	36                              # 0x24
	.word	29                              # 0x1d
	.word	24                              # 0x18
	.word	33                              # 0x21
	.word	34                              # 0x22
	.word	15                              # 0xf
	.word	30                              # 0x1e
	.word	20                              # 0x14
	.word	22                              # 0x16
	.word	73                              # 0x49
	.word	20                              # 0x14
	.word	34                              # 0x22
	.word	19                              # 0x13
	.word	31                              # 0x1f
	.word	27                              # 0x1b
	.word	44                              # 0x2c
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	19                              # 0x13
	.word	16                              # 0x10
	.word	15                              # 0xf
	.word	36                              # 0x24
	.word	15                              # 0xf
	.word	36                              # 0x24
	.word	21                              # 0x15
	.word	28                              # 0x1c
	.word	25                              # 0x19
	.word	21                              # 0x15
	.word	30                              # 0x1e
	.word	20                              # 0x14
	.word	31                              # 0x1f
	.word	12                              # 0xc
	.word	27                              # 0x1b
	.word	16                              # 0x10
	.word	24                              # 0x18
	.word	42                              # 0x2a
	.word	0                               # 0x0
	.word	93                              # 0x5d
	.word	14                              # 0xe
	.word	56                              # 0x38
	.word	15                              # 0xf
	.word	57                              # 0x39
	.word	26                              # 0x1a
	.word	38                              # 0x26
	.word	4294967272                      # 0xffffffe8
	.word	127                             # 0x7f
	.size	INIT_LAST_P, 2880

	.type	INIT_ONE_I,@object              # @INIT_ONE_I
	.p2align	2, 0x0
INIT_ONE_I:
	.word	4294967293                      # 0xfffffffd
	.word	71                              # 0x47
	.word	4294967290                      # 0xfffffffa
	.word	42                              # 0x2a
	.word	4294967291                      # 0xfffffffb
	.word	50                              # 0x32
	.word	4294967293                      # 0xfffffffd
	.word	54                              # 0x36
	.word	4294967294                      # 0xfffffffe
	.word	62                              # 0x3e
	.word	4294967291                      # 0xfffffffb
	.word	67                              # 0x43
	.word	4294967291                      # 0xfffffffb
	.word	27                              # 0x1b
	.word	4294967293                      # 0xfffffffd
	.word	39                              # 0x27
	.word	4294967294                      # 0xfffffffe
	.word	44                              # 0x2c
	.word	0                               # 0x0
	.word	46                              # 0x2e
	.word	4294967293                      # 0xfffffffd
	.word	75                              # 0x4b
	.word	4294967295                      # 0xffffffff
	.word	23                              # 0x17
	.word	1                               # 0x1
	.word	34                              # 0x22
	.word	1                               # 0x1
	.word	43                              # 0x2b
	.word	0                               # 0x0
	.word	54                              # 0x36
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967284                      # 0xfffffff4
	.word	92                              # 0x5c
	.word	4294967281                      # 0xfffffff1
	.word	55                              # 0x37
	.word	4294967286                      # 0xfffffff6
	.word	60                              # 0x3c
	.word	4294967290                      # 0xfffffffa
	.word	62                              # 0x3e
	.word	4294967292                      # 0xfffffffc
	.word	65                              # 0x41
	.word	4294967285                      # 0xfffffff5
	.word	97                              # 0x61
	.word	4294967276                      # 0xffffffec
	.word	84                              # 0x54
	.word	4294967285                      # 0xfffffff5
	.word	79                              # 0x4f
	.word	4294967290                      # 0xfffffffa
	.word	73                              # 0x49
	.word	4294967292                      # 0xfffffffc
	.word	74                              # 0x4a
	.word	4294967288                      # 0xfffffff8
	.word	78                              # 0x4e
	.word	4294967291                      # 0xfffffffb
	.word	33                              # 0x21
	.word	4294967292                      # 0xfffffffc
	.word	48                              # 0x30
	.word	4294967294                      # 0xfffffffe
	.word	53                              # 0x35
	.word	4294967293                      # 0xfffffffd
	.word	62                              # 0x3e
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.size	INIT_ONE_I, 320

	.type	INIT_ONE_P,@object              # @INIT_ONE_P
	.p2align	2, 0x0
INIT_ONE_P:
	.word	4294967290                      # 0xfffffffa
	.word	76                              # 0x4c
	.word	4294967294                      # 0xfffffffe
	.word	44                              # 0x2c
	.word	0                               # 0x0
	.word	45                              # 0x2d
	.word	0                               # 0x0
	.word	52                              # 0x34
	.word	4294967293                      # 0xfffffffd
	.word	64                              # 0x40
	.word	4294967287                      # 0xfffffff7
	.word	77                              # 0x4d
	.word	3                               # 0x3
	.word	24                              # 0x18
	.word	0                               # 0x0
	.word	42                              # 0x2a
	.word	0                               # 0x0
	.word	48                              # 0x30
	.word	0                               # 0x0
	.word	55                              # 0x37
	.word	4294967290                      # 0xfffffffa
	.word	66                              # 0x42
	.word	4294967289                      # 0xfffffff9
	.word	35                              # 0x23
	.word	4294967289                      # 0xfffffff9
	.word	42                              # 0x2a
	.word	4294967288                      # 0xfffffff8
	.word	45                              # 0x2d
	.word	4294967291                      # 0xfffffffb
	.word	48                              # 0x30
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	1                               # 0x1
	.word	58                              # 0x3a
	.word	4294967293                      # 0xfffffffd
	.word	29                              # 0x1d
	.word	4294967295                      # 0xffffffff
	.word	36                              # 0x24
	.word	1                               # 0x1
	.word	38                              # 0x26
	.word	2                               # 0x2
	.word	43                              # 0x2b
	.word	0                               # 0x0
	.word	70                              # 0x46
	.word	4294967292                      # 0xfffffffc
	.word	29                              # 0x1d
	.word	5                               # 0x5
	.word	31                              # 0x1f
	.word	7                               # 0x7
	.word	42                              # 0x2a
	.word	1                               # 0x1
	.word	59                              # 0x3b
	.word	0                               # 0x0
	.word	58                              # 0x3a
	.word	8                               # 0x8
	.word	5                               # 0x5
	.word	10                              # 0xa
	.word	14                              # 0xe
	.word	14                              # 0xe
	.word	18                              # 0x12
	.word	13                              # 0xd
	.word	27                              # 0x1b
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967273                      # 0xffffffe9
	.word	112                             # 0x70
	.word	4294967281                      # 0xfffffff1
	.word	71                              # 0x47
	.word	4294967289                      # 0xfffffff9
	.word	61                              # 0x3d
	.word	0                               # 0x0
	.word	53                              # 0x35
	.word	4294967291                      # 0xfffffffb
	.word	66                              # 0x42
	.word	4294967275                      # 0xffffffeb
	.word	101                             # 0x65
	.word	4294967293                      # 0xfffffffd
	.word	39                              # 0x27
	.word	4294967291                      # 0xfffffffb
	.word	53                              # 0x35
	.word	4294967289                      # 0xfffffff9
	.word	61                              # 0x3d
	.word	4294967285                      # 0xfffffff5
	.word	75                              # 0x4b
	.word	4294967291                      # 0xfffffffb
	.word	71                              # 0x47
	.word	0                               # 0x0
	.word	24                              # 0x18
	.word	4294967295                      # 0xffffffff
	.word	36                              # 0x24
	.word	4294967294                      # 0xfffffffe
	.word	42                              # 0x2a
	.word	4294967294                      # 0xfffffffe
	.word	52                              # 0x34
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967285                      # 0xfffffff5
	.word	76                              # 0x4c
	.word	4294967286                      # 0xfffffff6
	.word	44                              # 0x2c
	.word	4294967286                      # 0xfffffff6
	.word	52                              # 0x34
	.word	4294967286                      # 0xfffffff6
	.word	57                              # 0x39
	.word	4294967287                      # 0xfffffff7
	.word	58                              # 0x3a
	.word	2                               # 0x2
	.word	66                              # 0x42
	.word	4294967287                      # 0xfffffff7
	.word	34                              # 0x22
	.word	1                               # 0x1
	.word	32                              # 0x20
	.word	11                              # 0xb
	.word	31                              # 0x1f
	.word	5                               # 0x5
	.word	52                              # 0x34
	.word	3                               # 0x3
	.word	52                              # 0x34
	.word	7                               # 0x7
	.word	4                               # 0x4
	.word	10                              # 0xa
	.word	8                               # 0x8
	.word	17                              # 0x11
	.word	8                               # 0x8
	.word	16                              # 0x10
	.word	19                              # 0x13
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967272                      # 0xffffffe8
	.word	115                             # 0x73
	.word	4294967274                      # 0xffffffea
	.word	82                              # 0x52
	.word	4294967287                      # 0xfffffff7
	.word	62                              # 0x3e
	.word	0                               # 0x0
	.word	53                              # 0x35
	.word	0                               # 0x0
	.word	59                              # 0x3b
	.word	4294967275                      # 0xffffffeb
	.word	100                             # 0x64
	.word	4294967282                      # 0xfffffff2
	.word	57                              # 0x39
	.word	4294967284                      # 0xfffffff4
	.word	67                              # 0x43
	.word	4294967285                      # 0xfffffff5
	.word	71                              # 0x47
	.word	4294967286                      # 0xfffffff6
	.word	77                              # 0x4d
	.word	4294967287                      # 0xfffffff7
	.word	71                              # 0x47
	.word	4294967289                      # 0xfffffff9
	.word	37                              # 0x25
	.word	4294967288                      # 0xfffffff8
	.word	44                              # 0x2c
	.word	4294967285                      # 0xfffffff5
	.word	49                              # 0x31
	.word	4294967286                      # 0xfffffff6
	.word	56                              # 0x38
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967286                      # 0xfffffff6
	.word	82                              # 0x52
	.word	4294967288                      # 0xfffffff8
	.word	48                              # 0x30
	.word	4294967288                      # 0xfffffff8
	.word	61                              # 0x3d
	.word	4294967288                      # 0xfffffff8
	.word	66                              # 0x42
	.word	4294967289                      # 0xfffffff9
	.word	70                              # 0x46
	.word	4294967292                      # 0xfffffffc
	.word	79                              # 0x4f
	.word	4294967274                      # 0xffffffea
	.word	69                              # 0x45
	.word	4294967280                      # 0xfffffff0
	.word	75                              # 0x4b
	.word	4294967294                      # 0xfffffffe
	.word	58                              # 0x3a
	.word	1                               # 0x1
	.word	58                              # 0x3a
	.word	4294967283                      # 0xfffffff3
	.word	81                              # 0x51
	.word	4294967290                      # 0xfffffffa
	.word	38                              # 0x26
	.word	4294967283                      # 0xfffffff3
	.word	62                              # 0x3e
	.word	4294967290                      # 0xfffffffa
	.word	58                              # 0x3a
	.word	4294967294                      # 0xfffffffe
	.word	59                              # 0x3b
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.size	INIT_ONE_P, 960

	.type	INIT_ABS_I,@object              # @INIT_ABS_I
	.p2align	2, 0x0
INIT_ABS_I:
	.word	0                               # 0x0
	.word	58                              # 0x3a
	.word	1                               # 0x1
	.word	63                              # 0x3f
	.word	4294967294                      # 0xfffffffe
	.word	72                              # 0x48
	.word	4294967295                      # 0xffffffff
	.word	74                              # 0x4a
	.word	4294967287                      # 0xfffffff7
	.word	91                              # 0x5b
	.word	4294967280                      # 0xfffffff0
	.word	64                              # 0x40
	.word	4294967288                      # 0xfffffff8
	.word	68                              # 0x44
	.word	4294967286                      # 0xfffffff6
	.word	78                              # 0x4e
	.word	4294967290                      # 0xfffffffa
	.word	77                              # 0x4d
	.word	4294967286                      # 0xfffffff6
	.word	86                              # 0x56
	.word	4294967294                      # 0xfffffffe
	.word	55                              # 0x37
	.word	0                               # 0x0
	.word	61                              # 0x3d
	.word	1                               # 0x1
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	68                              # 0x44
	.word	4294967287                      # 0xfffffff7
	.word	92                              # 0x5c
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967284                      # 0xfffffff4
	.word	73                              # 0x49
	.word	4294967288                      # 0xfffffff8
	.word	76                              # 0x4c
	.word	4294967289                      # 0xfffffff9
	.word	80                              # 0x50
	.word	4294967287                      # 0xfffffff7
	.word	88                              # 0x58
	.word	4294967279                      # 0xffffffef
	.word	110                             # 0x6e
	.word	4294967283                      # 0xfffffff3
	.word	86                              # 0x56
	.word	4294967283                      # 0xfffffff3
	.word	96                              # 0x60
	.word	4294967285                      # 0xfffffff5
	.word	97                              # 0x61
	.word	4294967277                      # 0xffffffed
	.word	117                             # 0x75
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967283                      # 0xfffffff3
	.word	71                              # 0x47
	.word	4294967286                      # 0xfffffff6
	.word	79                              # 0x4f
	.word	4294967284                      # 0xfffffff4
	.word	86                              # 0x56
	.word	4294967283                      # 0xfffffff3
	.word	90                              # 0x5a
	.word	4294967282                      # 0xfffffff2
	.word	97                              # 0x61
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.size	INIT_ABS_I, 320

	.type	INIT_ABS_P,@object              # @INIT_ABS_P
	.p2align	2, 0x0
INIT_ABS_P:
	.word	4294967294                      # 0xfffffffe
	.word	59                              # 0x3b
	.word	4294967292                      # 0xfffffffc
	.word	70                              # 0x46
	.word	4294967292                      # 0xfffffffc
	.word	75                              # 0x4b
	.word	4294967288                      # 0xfffffff8
	.word	82                              # 0x52
	.word	4294967279                      # 0xffffffef
	.word	102                             # 0x66
	.word	4294967290                      # 0xfffffffa
	.word	59                              # 0x3b
	.word	4294967289                      # 0xfffffff9
	.word	71                              # 0x47
	.word	4294967284                      # 0xfffffff4
	.word	83                              # 0x53
	.word	4294967285                      # 0xfffffff5
	.word	87                              # 0x57
	.word	4294967266                      # 0xffffffe2
	.word	119                             # 0x77
	.word	4294967284                      # 0xfffffff4
	.word	56                              # 0x38
	.word	4294967290                      # 0xfffffffa
	.word	60                              # 0x3c
	.word	4294967291                      # 0xfffffffb
	.word	62                              # 0x3e
	.word	4294967288                      # 0xfffffff8
	.word	66                              # 0x42
	.word	4294967288                      # 0xfffffff8
	.word	76                              # 0x4c
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967290                      # 0xfffffffa
	.word	55                              # 0x37
	.word	0                               # 0x0
	.word	58                              # 0x3a
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967293                      # 0xfffffffd
	.word	74                              # 0x4a
	.word	4294967286                      # 0xfffffff6
	.word	90                              # 0x5a
	.word	4294967294                      # 0xfffffffe
	.word	58                              # 0x3a
	.word	4294967293                      # 0xfffffffd
	.word	72                              # 0x48
	.word	4294967293                      # 0xfffffffd
	.word	81                              # 0x51
	.word	4294967285                      # 0xfffffff5
	.word	97                              # 0x61
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	2                               # 0x2
	.word	40                              # 0x28
	.word	0                               # 0x0
	.word	58                              # 0x3a
	.word	4294967293                      # 0xfffffffd
	.word	70                              # 0x46
	.word	4294967290                      # 0xfffffffa
	.word	79                              # 0x4f
	.word	4294967288                      # 0xfffffff8
	.word	85                              # 0x55
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967285                      # 0xfffffff5
	.word	77                              # 0x4d
	.word	4294967287                      # 0xfffffff7
	.word	80                              # 0x50
	.word	4294967287                      # 0xfffffff7
	.word	84                              # 0x54
	.word	4294967286                      # 0xfffffff6
	.word	87                              # 0x57
	.word	4294967262                      # 0xffffffde
	.word	127                             # 0x7f
	.word	4294967281                      # 0xfffffff1
	.word	77                              # 0x4d
	.word	4294967279                      # 0xffffffef
	.word	91                              # 0x5b
	.word	4294967271                      # 0xffffffe7
	.word	107                             # 0x6b
	.word	4294967271                      # 0xffffffe7
	.word	111                             # 0x6f
	.word	4294967268                      # 0xffffffe4
	.word	122                             # 0x7a
	.word	4294967287                      # 0xfffffff7
	.word	57                              # 0x39
	.word	4294967290                      # 0xfffffffa
	.word	63                              # 0x3f
	.word	4294967292                      # 0xfffffffc
	.word	65                              # 0x41
	.word	4294967292                      # 0xfffffffc
	.word	67                              # 0x43
	.word	4294967289                      # 0xfffffff9
	.word	82                              # 0x52
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967280                      # 0xfffffff0
	.word	72                              # 0x48
	.word	4294967289                      # 0xfffffff9
	.word	69                              # 0x45
	.word	4294967292                      # 0xfffffffc
	.word	69                              # 0x45
	.word	4294967291                      # 0xfffffffb
	.word	74                              # 0x4a
	.word	4294967287                      # 0xfffffff7
	.word	86                              # 0x56
	.word	4294967294                      # 0xfffffffe
	.word	55                              # 0x37
	.word	4294967294                      # 0xfffffffe
	.word	67                              # 0x43
	.word	0                               # 0x0
	.word	73                              # 0x49
	.word	4294967288                      # 0xfffffff8
	.word	89                              # 0x59
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	3                               # 0x3
	.word	37                              # 0x25
	.word	4294967295                      # 0xffffffff
	.word	61                              # 0x3d
	.word	4294967291                      # 0xfffffffb
	.word	73                              # 0x49
	.word	4294967295                      # 0xffffffff
	.word	70                              # 0x46
	.word	4294967292                      # 0xfffffffc
	.word	78                              # 0x4e
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967282                      # 0xfffffff2
	.word	85                              # 0x55
	.word	4294967283                      # 0xfffffff3
	.word	89                              # 0x59
	.word	4294967283                      # 0xfffffff3
	.word	94                              # 0x5e
	.word	4294967285                      # 0xfffffff5
	.word	92                              # 0x5c
	.word	4294967267                      # 0xffffffe3
	.word	127                             # 0x7f
	.word	4294967275                      # 0xffffffeb
	.word	85                              # 0x55
	.word	4294967280                      # 0xfffffff0
	.word	88                              # 0x58
	.word	4294967273                      # 0xffffffe9
	.word	104                             # 0x68
	.word	4294967281                      # 0xfffffff1
	.word	98                              # 0x62
	.word	4294967259                      # 0xffffffdb
	.word	127                             # 0x7f
	.word	4294967284                      # 0xfffffff4
	.word	59                              # 0x3b
	.word	4294967288                      # 0xfffffff8
	.word	63                              # 0x3f
	.word	4294967287                      # 0xfffffff7
	.word	67                              # 0x43
	.word	4294967290                      # 0xfffffffa
	.word	68                              # 0x44
	.word	4294967286                      # 0xfffffff6
	.word	79                              # 0x4f
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967282                      # 0xfffffff2
	.word	75                              # 0x4b
	.word	4294967286                      # 0xfffffff6
	.word	79                              # 0x4f
	.word	4294967287                      # 0xfffffff7
	.word	83                              # 0x53
	.word	4294967284                      # 0xfffffff4
	.word	92                              # 0x5c
	.word	4294967278                      # 0xffffffee
	.word	108                             # 0x6c
	.word	4294967283                      # 0xfffffff3
	.word	78                              # 0x4e
	.word	4294967287                      # 0xfffffff7
	.word	83                              # 0x53
	.word	4294967292                      # 0xfffffffc
	.word	81                              # 0x51
	.word	4294967283                      # 0xfffffff3
	.word	99                              # 0x63
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967280                      # 0xfffffff0
	.word	73                              # 0x49
	.word	4294967286                      # 0xfffffff6
	.word	76                              # 0x4c
	.word	4294967283                      # 0xfffffff3
	.word	86                              # 0x56
	.word	4294967287                      # 0xfffffff7
	.word	83                              # 0x53
	.word	4294967286                      # 0xfffffff6
	.word	87                              # 0x57
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.size	INIT_ABS_P, 960

	.type	INIT_FLD_MAP_I,@object          # @INIT_FLD_MAP_I
	.p2align	2, 0x0
INIT_FLD_MAP_I:
	.word	4294967290                      # 0xfffffffa
	.word	93                              # 0x5d
	.word	4294967290                      # 0xfffffffa
	.word	84                              # 0x54
	.word	4294967288                      # 0xfffffff8
	.word	79                              # 0x4f
	.word	0                               # 0x0
	.word	66                              # 0x42
	.word	4294967295                      # 0xffffffff
	.word	71                              # 0x47
	.word	0                               # 0x0
	.word	62                              # 0x3e
	.word	4294967294                      # 0xfffffffe
	.word	60                              # 0x3c
	.word	4294967294                      # 0xfffffffe
	.word	59                              # 0x3b
	.word	4294967291                      # 0xfffffffb
	.word	75                              # 0x4b
	.word	4294967293                      # 0xfffffffd
	.word	62                              # 0x3e
	.word	4294967292                      # 0xfffffffc
	.word	58                              # 0x3a
	.word	4294967287                      # 0xfffffff7
	.word	66                              # 0x42
	.word	4294967295                      # 0xffffffff
	.word	79                              # 0x4f
	.word	0                               # 0x0
	.word	71                              # 0x47
	.word	3                               # 0x3
	.word	68                              # 0x44
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	10                              # 0xa
	.word	44                              # 0x2c
	.word	4294967289                      # 0xfffffff9
	.word	62                              # 0x3e
	.word	15                              # 0xf
	.word	36                              # 0x24
	.word	14                              # 0xe
	.word	40                              # 0x28
	.word	16                              # 0x10
	.word	27                              # 0x1b
	.word	12                              # 0xc
	.word	29                              # 0x1d
	.word	1                               # 0x1
	.word	44                              # 0x2c
	.word	20                              # 0x14
	.word	36                              # 0x24
	.word	18                              # 0x12
	.word	32                              # 0x20
	.word	5                               # 0x5
	.word	42                              # 0x2a
	.word	1                               # 0x1
	.word	48                              # 0x30
	.word	10                              # 0xa
	.word	62                              # 0x3e
	.word	17                              # 0x11
	.word	46                              # 0x2e
	.word	9                               # 0x9
	.word	64                              # 0x40
	.word	4294967282                      # 0xfffffff2
	.word	106                             # 0x6a
	.word	4294967283                      # 0xfffffff3
	.word	97                              # 0x61
	.word	4294967281                      # 0xfffffff1
	.word	90                              # 0x5a
	.word	4294967284                      # 0xfffffff4
	.word	90                              # 0x5a
	.word	4294967278                      # 0xffffffee
	.word	88                              # 0x58
	.word	4294967286                      # 0xfffffff6
	.word	73                              # 0x49
	.word	4294967287                      # 0xfffffff7
	.word	79                              # 0x4f
	.word	4294967282                      # 0xfffffff2
	.word	86                              # 0x56
	.word	4294967286                      # 0xfffffff6
	.word	73                              # 0x49
	.word	4294967286                      # 0xfffffff6
	.word	70                              # 0x46
	.word	4294967286                      # 0xfffffff6
	.word	69                              # 0x45
	.word	4294967291                      # 0xfffffffb
	.word	66                              # 0x42
	.word	4294967287                      # 0xfffffff7
	.word	64                              # 0x40
	.word	4294967291                      # 0xfffffffb
	.word	58                              # 0x3a
	.word	2                               # 0x2
	.word	59                              # 0x3b
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967284                      # 0xfffffff4
	.word	104                             # 0x68
	.word	4294967285                      # 0xfffffff5
	.word	97                              # 0x61
	.word	4294967280                      # 0xfffffff0
	.word	96                              # 0x60
	.word	4294967289                      # 0xfffffff9
	.word	88                              # 0x58
	.word	4294967288                      # 0xfffffff8
	.word	85                              # 0x55
	.word	4294967289                      # 0xfffffff9
	.word	85                              # 0x55
	.word	4294967287                      # 0xfffffff7
	.word	85                              # 0x55
	.word	4294967283                      # 0xfffffff3
	.word	88                              # 0x58
	.word	4                               # 0x4
	.word	66                              # 0x42
	.word	4294967293                      # 0xfffffffd
	.word	77                              # 0x4d
	.word	4294967293                      # 0xfffffffd
	.word	76                              # 0x4c
	.word	4294967290                      # 0xfffffffa
	.word	76                              # 0x4c
	.word	10                              # 0xa
	.word	58                              # 0x3a
	.word	4294967295                      # 0xffffffff
	.word	76                              # 0x4c
	.word	4294967295                      # 0xffffffff
	.word	83                              # 0x53
	.word	4294967289                      # 0xfffffff9
	.word	99                              # 0x63
	.word	4294967282                      # 0xfffffff2
	.word	95                              # 0x5f
	.word	2                               # 0x2
	.word	95                              # 0x5f
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	76                              # 0x4c
	.word	4294967291                      # 0xfffffffb
	.word	74                              # 0x4a
	.word	0                               # 0x0
	.word	70                              # 0x46
	.word	4294967285                      # 0xfffffff5
	.word	75                              # 0x4b
	.word	1                               # 0x1
	.word	68                              # 0x44
	.word	0                               # 0x0
	.word	65                              # 0x41
	.word	4294967282                      # 0xfffffff2
	.word	73                              # 0x49
	.word	3                               # 0x3
	.word	62                              # 0x3e
	.word	4                               # 0x4
	.word	62                              # 0x3e
	.word	4294967295                      # 0xffffffff
	.word	68                              # 0x44
	.word	4294967283                      # 0xfffffff3
	.word	75                              # 0x4b
	.word	11                              # 0xb
	.word	55                              # 0x37
	.word	5                               # 0x5
	.word	64                              # 0x40
	.word	12                              # 0xc
	.word	70                              # 0x46
	.size	INIT_FLD_MAP_I, 960

	.type	INIT_FLD_MAP_P,@object          # @INIT_FLD_MAP_P
	.p2align	2, 0x0
INIT_FLD_MAP_P:
	.word	4294967283                      # 0xfffffff3
	.word	106                             # 0x6a
	.word	4294967280                      # 0xfffffff0
	.word	106                             # 0x6a
	.word	4294967286                      # 0xfffffff6
	.word	87                              # 0x57
	.word	4294967275                      # 0xffffffeb
	.word	114                             # 0x72
	.word	4294967278                      # 0xffffffee
	.word	110                             # 0x6e
	.word	4294967282                      # 0xfffffff2
	.word	98                              # 0x62
	.word	4294967274                      # 0xffffffea
	.word	110                             # 0x6e
	.word	4294967275                      # 0xffffffeb
	.word	106                             # 0x6a
	.word	4294967278                      # 0xffffffee
	.word	103                             # 0x67
	.word	4294967275                      # 0xffffffeb
	.word	107                             # 0x6b
	.word	4294967273                      # 0xffffffe9
	.word	108                             # 0x6c
	.word	4294967270                      # 0xffffffe6
	.word	112                             # 0x70
	.word	4294967286                      # 0xfffffff6
	.word	96                              # 0x60
	.word	4294967284                      # 0xfffffff4
	.word	95                              # 0x5f
	.word	4294967291                      # 0xfffffffb
	.word	91                              # 0x5b
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967287                      # 0xfffffff7
	.word	93                              # 0x5d
	.word	4294967274                      # 0xffffffea
	.word	94                              # 0x5e
	.word	4294967291                      # 0xfffffffb
	.word	86                              # 0x56
	.word	9                               # 0x9
	.word	67                              # 0x43
	.word	4294967292                      # 0xfffffffc
	.word	80                              # 0x50
	.word	4294967286                      # 0xfffffff6
	.word	85                              # 0x55
	.word	4294967295                      # 0xffffffff
	.word	70                              # 0x46
	.word	7                               # 0x7
	.word	60                              # 0x3c
	.word	9                               # 0x9
	.word	58                              # 0x3a
	.word	5                               # 0x5
	.word	61                              # 0x3d
	.word	12                              # 0xc
	.word	50                              # 0x32
	.word	15                              # 0xf
	.word	50                              # 0x32
	.word	18                              # 0x12
	.word	49                              # 0x31
	.word	17                              # 0x11
	.word	54                              # 0x36
	.word	4294967291                      # 0xfffffffb
	.word	85                              # 0x55
	.word	4294967290                      # 0xfffffffa
	.word	81                              # 0x51
	.word	4294967286                      # 0xfffffff6
	.word	77                              # 0x4d
	.word	4294967289                      # 0xfffffff9
	.word	81                              # 0x51
	.word	4294967279                      # 0xffffffef
	.word	80                              # 0x50
	.word	4294967278                      # 0xffffffee
	.word	73                              # 0x49
	.word	4294967292                      # 0xfffffffc
	.word	74                              # 0x4a
	.word	4294967286                      # 0xfffffff6
	.word	83                              # 0x53
	.word	4294967287                      # 0xfffffff7
	.word	71                              # 0x47
	.word	4294967287                      # 0xfffffff7
	.word	67                              # 0x43
	.word	4294967295                      # 0xffffffff
	.word	61                              # 0x3d
	.word	4294967288                      # 0xfffffff8
	.word	66                              # 0x42
	.word	4294967282                      # 0xfffffff2
	.word	66                              # 0x42
	.word	0                               # 0x0
	.word	59                              # 0x3b
	.word	2                               # 0x2
	.word	59                              # 0x3b
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	10                              # 0xa
	.word	41                              # 0x29
	.word	7                               # 0x7
	.word	46                              # 0x2e
	.word	4294967295                      # 0xffffffff
	.word	51                              # 0x33
	.word	7                               # 0x7
	.word	49                              # 0x31
	.word	8                               # 0x8
	.word	52                              # 0x34
	.word	9                               # 0x9
	.word	41                              # 0x29
	.word	6                               # 0x6
	.word	47                              # 0x2f
	.word	2                               # 0x2
	.word	55                              # 0x37
	.word	13                              # 0xd
	.word	41                              # 0x29
	.word	10                              # 0xa
	.word	44                              # 0x2c
	.word	6                               # 0x6
	.word	50                              # 0x32
	.word	5                               # 0x5
	.word	53                              # 0x35
	.word	13                              # 0xd
	.word	49                              # 0x31
	.word	4                               # 0x4
	.word	63                              # 0x3f
	.word	6                               # 0x6
	.word	64                              # 0x40
	.word	4294967294                      # 0xfffffffe
	.word	69                              # 0x45
	.word	4294967294                      # 0xfffffffe
	.word	59                              # 0x3b
	.word	6                               # 0x6
	.word	70                              # 0x46
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	10                              # 0xa
	.word	44                              # 0x2c
	.word	9                               # 0x9
	.word	31                              # 0x1f
	.word	12                              # 0xc
	.word	43                              # 0x2b
	.word	3                               # 0x3
	.word	53                              # 0x35
	.word	14                              # 0xe
	.word	34                              # 0x22
	.word	10                              # 0xa
	.word	38                              # 0x26
	.word	4294967293                      # 0xfffffffd
	.word	52                              # 0x34
	.word	13                              # 0xd
	.word	40                              # 0x28
	.word	17                              # 0x11
	.word	32                              # 0x20
	.word	7                               # 0x7
	.word	44                              # 0x2c
	.word	7                               # 0x7
	.word	38                              # 0x26
	.word	13                              # 0xd
	.word	50                              # 0x32
	.word	10                              # 0xa
	.word	57                              # 0x39
	.word	26                              # 0x1a
	.word	43                              # 0x2b
	.word	4294967275                      # 0xffffffeb
	.word	126                             # 0x7e
	.word	4294967273                      # 0xffffffe9
	.word	124                             # 0x7c
	.word	4294967276                      # 0xffffffec
	.word	110                             # 0x6e
	.word	4294967270                      # 0xffffffe6
	.word	126                             # 0x7e
	.word	4294967271                      # 0xffffffe7
	.word	124                             # 0x7c
	.word	4294967279                      # 0xffffffef
	.word	105                             # 0x69
	.word	4294967269                      # 0xffffffe5
	.word	121                             # 0x79
	.word	4294967269                      # 0xffffffe5
	.word	117                             # 0x75
	.word	4294967279                      # 0xffffffef
	.word	102                             # 0x66
	.word	4294967270                      # 0xffffffe6
	.word	117                             # 0x75
	.word	4294967269                      # 0xffffffe5
	.word	116                             # 0x74
	.word	4294967263                      # 0xffffffdf
	.word	122                             # 0x7a
	.word	4294967286                      # 0xfffffff6
	.word	95                              # 0x5f
	.word	4294967282                      # 0xfffffff2
	.word	100                             # 0x64
	.word	4294967288                      # 0xfffffff8
	.word	95                              # 0x5f
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967279                      # 0xffffffef
	.word	111                             # 0x6f
	.word	4294967268                      # 0xffffffe4
	.word	114                             # 0x72
	.word	4294967290                      # 0xfffffffa
	.word	89                              # 0x59
	.word	4294967294                      # 0xfffffffe
	.word	80                              # 0x50
	.word	4294967292                      # 0xfffffffc
	.word	82                              # 0x52
	.word	4294967287                      # 0xfffffff7
	.word	85                              # 0x55
	.word	4294967288                      # 0xfffffff8
	.word	81                              # 0x51
	.word	4294967295                      # 0xffffffff
	.word	72                              # 0x48
	.word	5                               # 0x5
	.word	64                              # 0x40
	.word	1                               # 0x1
	.word	67                              # 0x43
	.word	9                               # 0x9
	.word	56                              # 0x38
	.word	0                               # 0x0
	.word	69                              # 0x45
	.word	1                               # 0x1
	.word	69                              # 0x45
	.word	7                               # 0x7
	.word	69                              # 0x45
	.word	4294967293                      # 0xfffffffd
	.word	81                              # 0x51
	.word	4294967293                      # 0xfffffffd
	.word	76                              # 0x4c
	.word	4294967289                      # 0xfffffff9
	.word	72                              # 0x48
	.word	4294967290                      # 0xfffffffa
	.word	78                              # 0x4e
	.word	4294967284                      # 0xfffffff4
	.word	72                              # 0x48
	.word	4294967282                      # 0xfffffff2
	.word	68                              # 0x44
	.word	4294967293                      # 0xfffffffd
	.word	70                              # 0x46
	.word	4294967290                      # 0xfffffffa
	.word	76                              # 0x4c
	.word	4294967291                      # 0xfffffffb
	.word	66                              # 0x42
	.word	4294967291                      # 0xfffffffb
	.word	62                              # 0x3e
	.word	0                               # 0x0
	.word	57                              # 0x39
	.word	4294967292                      # 0xfffffffc
	.word	61                              # 0x3d
	.word	4294967287                      # 0xfffffff7
	.word	60                              # 0x3c
	.word	1                               # 0x1
	.word	54                              # 0x36
	.word	2                               # 0x2
	.word	58                              # 0x3a
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967289                      # 0xfffffff9
	.word	69                              # 0x45
	.word	4294967290                      # 0xfffffffa
	.word	67                              # 0x43
	.word	4294967280                      # 0xfffffff0
	.word	77                              # 0x4d
	.word	4294967294                      # 0xfffffffe
	.word	64                              # 0x40
	.word	2                               # 0x2
	.word	61                              # 0x3d
	.word	4294967290                      # 0xfffffffa
	.word	67                              # 0x43
	.word	4294967293                      # 0xfffffffd
	.word	64                              # 0x40
	.word	2                               # 0x2
	.word	57                              # 0x39
	.word	4294967293                      # 0xfffffffd
	.word	65                              # 0x41
	.word	4294967293                      # 0xfffffffd
	.word	66                              # 0x42
	.word	0                               # 0x0
	.word	62                              # 0x3e
	.word	9                               # 0x9
	.word	51                              # 0x33
	.word	4294967295                      # 0xffffffff
	.word	66                              # 0x42
	.word	4294967294                      # 0xfffffffe
	.word	71                              # 0x47
	.word	4294967294                      # 0xfffffffe
	.word	75                              # 0x4b
	.word	4294967295                      # 0xffffffff
	.word	70                              # 0x46
	.word	4294967287                      # 0xfffffff7
	.word	72                              # 0x48
	.word	14                              # 0xe
	.word	60                              # 0x3c
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	16                              # 0x10
	.word	37                              # 0x25
	.word	0                               # 0x0
	.word	47                              # 0x2f
	.word	18                              # 0x12
	.word	35                              # 0x23
	.word	11                              # 0xb
	.word	37                              # 0x25
	.word	12                              # 0xc
	.word	41                              # 0x29
	.word	10                              # 0xa
	.word	41                              # 0x29
	.word	2                               # 0x2
	.word	48                              # 0x30
	.word	12                              # 0xc
	.word	41                              # 0x29
	.word	13                              # 0xd
	.word	41                              # 0x29
	.word	0                               # 0x0
	.word	59                              # 0x3b
	.word	3                               # 0x3
	.word	50                              # 0x32
	.word	19                              # 0x13
	.word	40                              # 0x28
	.word	3                               # 0x3
	.word	66                              # 0x42
	.word	18                              # 0x12
	.word	50                              # 0x32
	.word	4294967274                      # 0xffffffea
	.word	127                             # 0x7f
	.word	4294967271                      # 0xffffffe7
	.word	127                             # 0x7f
	.word	4294967271                      # 0xffffffe7
	.word	120                             # 0x78
	.word	4294967269                      # 0xffffffe5
	.word	127                             # 0x7f
	.word	4294967277                      # 0xffffffed
	.word	114                             # 0x72
	.word	4294967273                      # 0xffffffe9
	.word	117                             # 0x75
	.word	4294967271                      # 0xffffffe7
	.word	118                             # 0x76
	.word	4294967270                      # 0xffffffe6
	.word	117                             # 0x75
	.word	4294967272                      # 0xffffffe8
	.word	113                             # 0x71
	.word	4294967268                      # 0xffffffe4
	.word	118                             # 0x76
	.word	4294967265                      # 0xffffffe1
	.word	120                             # 0x78
	.word	4294967259                      # 0xffffffdb
	.word	124                             # 0x7c
	.word	4294967286                      # 0xfffffff6
	.word	94                              # 0x5e
	.word	4294967281                      # 0xfffffff1
	.word	102                             # 0x66
	.word	4294967286                      # 0xfffffff6
	.word	99                              # 0x63
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967283                      # 0xfffffff3
	.word	106                             # 0x6a
	.word	4294967246                      # 0xffffffce
	.word	127                             # 0x7f
	.word	4294967291                      # 0xfffffffb
	.word	92                              # 0x5c
	.word	17                              # 0x11
	.word	57                              # 0x39
	.word	4294967291                      # 0xfffffffb
	.word	86                              # 0x56
	.word	4294967283                      # 0xfffffff3
	.word	94                              # 0x5e
	.word	4294967284                      # 0xfffffff4
	.word	91                              # 0x5b
	.word	4294967294                      # 0xfffffffe
	.word	77                              # 0x4d
	.word	0                               # 0x0
	.word	71                              # 0x47
	.word	4294967295                      # 0xffffffff
	.word	73                              # 0x49
	.word	4                               # 0x4
	.word	64                              # 0x40
	.word	4294967289                      # 0xfffffff9
	.word	81                              # 0x51
	.word	5                               # 0x5
	.word	64                              # 0x40
	.word	15                              # 0xf
	.word	57                              # 0x39
	.word	4294967293                      # 0xfffffffd
	.word	78                              # 0x4e
	.word	4294967288                      # 0xfffffff8
	.word	74                              # 0x4a
	.word	4294967287                      # 0xfffffff7
	.word	72                              # 0x48
	.word	4294967286                      # 0xfffffff6
	.word	72                              # 0x48
	.word	4294967278                      # 0xffffffee
	.word	75                              # 0x4b
	.word	4294967284                      # 0xfffffff4
	.word	71                              # 0x47
	.word	4294967285                      # 0xfffffff5
	.word	63                              # 0x3f
	.word	4294967291                      # 0xfffffffb
	.word	70                              # 0x46
	.word	4294967279                      # 0xffffffef
	.word	75                              # 0x4b
	.word	4294967282                      # 0xfffffff2
	.word	72                              # 0x48
	.word	4294967280                      # 0xfffffff0
	.word	67                              # 0x43
	.word	4294967288                      # 0xfffffff8
	.word	53                              # 0x35
	.word	4294967282                      # 0xfffffff2
	.word	59                              # 0x3b
	.word	4294967287                      # 0xfffffff7
	.word	52                              # 0x34
	.word	4294967285                      # 0xfffffff5
	.word	68                              # 0x44
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	1                               # 0x1
	.word	67                              # 0x43
	.word	0                               # 0x0
	.word	68                              # 0x44
	.word	4294967286                      # 0xfffffff6
	.word	67                              # 0x43
	.word	1                               # 0x1
	.word	68                              # 0x44
	.word	0                               # 0x0
	.word	77                              # 0x4d
	.word	2                               # 0x2
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	68                              # 0x44
	.word	4294967291                      # 0xfffffffb
	.word	78                              # 0x4e
	.word	7                               # 0x7
	.word	55                              # 0x37
	.word	5                               # 0x5
	.word	59                              # 0x3b
	.word	2                               # 0x2
	.word	65                              # 0x41
	.word	14                              # 0xe
	.word	54                              # 0x36
	.word	15                              # 0xf
	.word	44                              # 0x2c
	.word	5                               # 0x5
	.word	60                              # 0x3c
	.word	2                               # 0x2
	.word	70                              # 0x46
	.word	4294967294                      # 0xfffffffe
	.word	76                              # 0x4c
	.word	4294967278                      # 0xffffffee
	.word	86                              # 0x56
	.word	12                              # 0xc
	.word	70                              # 0x46
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	5                               # 0x5
	.word	64                              # 0x40
	.word	4294967284                      # 0xfffffff4
	.word	70                              # 0x46
	.word	11                              # 0xb
	.word	55                              # 0x37
	.word	5                               # 0x5
	.word	56                              # 0x38
	.word	0                               # 0x0
	.word	69                              # 0x45
	.word	2                               # 0x2
	.word	65                              # 0x41
	.word	4294967290                      # 0xfffffffa
	.word	74                              # 0x4a
	.word	5                               # 0x5
	.word	54                              # 0x36
	.word	7                               # 0x7
	.word	54                              # 0x36
	.word	4294967290                      # 0xfffffffa
	.word	76                              # 0x4c
	.word	4294967285                      # 0xfffffff5
	.word	82                              # 0x52
	.word	4294967294                      # 0xfffffffe
	.word	77                              # 0x4d
	.word	4294967294                      # 0xfffffffe
	.word	77                              # 0x4d
	.word	25                              # 0x19
	.word	42                              # 0x2a
	.size	INIT_FLD_MAP_P, 2880

	.type	INIT_FLD_LAST_I,@object         # @INIT_FLD_LAST_I
	.p2align	2, 0x0
INIT_FLD_LAST_I:
	.word	15                              # 0xf
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	19                              # 0x13
	.word	7                               # 0x7
	.word	16                              # 0x10
	.word	12                              # 0xc
	.word	14                              # 0xe
	.word	18                              # 0x12
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	11                              # 0xb
	.word	13                              # 0xd
	.word	15                              # 0xf
	.word	15                              # 0xf
	.word	16                              # 0x10
	.word	12                              # 0xc
	.word	23                              # 0x17
	.word	13                              # 0xd
	.word	23                              # 0x17
	.word	15                              # 0xf
	.word	20                              # 0x14
	.word	14                              # 0xe
	.word	26                              # 0x1a
	.word	14                              # 0xe
	.word	44                              # 0x2c
	.word	17                              # 0x11
	.word	40                              # 0x28
	.word	17                              # 0x11
	.word	47                              # 0x2f
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	24                              # 0x18
	.word	17                              # 0x11
	.word	21                              # 0x15
	.word	21                              # 0x15
	.word	25                              # 0x19
	.word	22                              # 0x16
	.word	31                              # 0x1f
	.word	27                              # 0x1b
	.word	22                              # 0x16
	.word	29                              # 0x1d
	.word	19                              # 0x13
	.word	35                              # 0x23
	.word	14                              # 0xe
	.word	50                              # 0x32
	.word	10                              # 0xa
	.word	57                              # 0x39
	.word	7                               # 0x7
	.word	63                              # 0x3f
	.word	4294967294                      # 0xfffffffe
	.word	77                              # 0x4d
	.word	4294967292                      # 0xfffffffc
	.word	82                              # 0x52
	.word	4294967293                      # 0xfffffffd
	.word	94                              # 0x5e
	.word	9                               # 0x9
	.word	69                              # 0x45
	.word	4294967284                      # 0xfffffff4
	.word	109                             # 0x6d
	.word	21                              # 0x15
	.word	4294967286                      # 0xfffffff6
	.word	24                              # 0x18
	.word	4294967285                      # 0xfffffff5
	.word	28                              # 0x1c
	.word	4294967288                      # 0xfffffff8
	.word	28                              # 0x1c
	.word	4294967295                      # 0xffffffff
	.word	29                              # 0x1d
	.word	3                               # 0x3
	.word	29                              # 0x1d
	.word	9                               # 0x9
	.word	35                              # 0x23
	.word	20                              # 0x14
	.word	29                              # 0x1d
	.word	36                              # 0x24
	.word	14                              # 0xe
	.word	67                              # 0x43
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	36                              # 0x24
	.word	4294967261                      # 0xffffffdd
	.word	36                              # 0x24
	.word	4294967262                      # 0xffffffde
	.word	32                              # 0x20
	.word	4294967270                      # 0xffffffe6
	.word	37                              # 0x25
	.word	4294967266                      # 0xffffffe2
	.word	44                              # 0x2c
	.word	4294967264                      # 0xffffffe0
	.word	34                              # 0x22
	.word	4294967278                      # 0xffffffee
	.word	34                              # 0x22
	.word	4294967281                      # 0xfffffff1
	.word	40                              # 0x28
	.word	4294967281                      # 0xfffffff1
	.word	33                              # 0x21
	.word	4294967289                      # 0xfffffff9
	.word	35                              # 0x23
	.word	4294967291                      # 0xfffffffb
	.word	33                              # 0x21
	.word	0                               # 0x0
	.word	38                              # 0x26
	.word	2                               # 0x2
	.word	33                              # 0x21
	.word	13                              # 0xd
	.word	23                              # 0x17
	.word	35                              # 0x23
	.word	13                              # 0xd
	.word	58                              # 0x3a
	.word	29                              # 0x1d
	.word	4294967293                      # 0xfffffffd
	.word	26                              # 0x1a
	.word	0                               # 0x0
	.word	22                              # 0x16
	.word	30                              # 0x1e
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	31                              # 0x1f
	.word	4294967289                      # 0xfffffff9
	.word	35                              # 0x23
	.word	4294967281                      # 0xfffffff1
	.word	34                              # 0x22
	.word	4294967293                      # 0xfffffffd
	.word	34                              # 0x22
	.word	3                               # 0x3
	.word	36                              # 0x24
	.word	4294967295                      # 0xffffffff
	.word	34                              # 0x22
	.word	5                               # 0x5
	.word	32                              # 0x20
	.word	11                              # 0xb
	.word	35                              # 0x23
	.word	5                               # 0x5
	.word	34                              # 0x22
	.word	12                              # 0xc
	.word	39                              # 0x27
	.word	11                              # 0xb
	.word	30                              # 0x1e
	.word	29                              # 0x1d
	.word	34                              # 0x22
	.word	26                              # 0x1a
	.word	29                              # 0x1d
	.word	39                              # 0x27
	.word	19                              # 0x13
	.word	66                              # 0x42
	.size	INIT_FLD_LAST_I, 960

	.type	INIT_FLD_LAST_P,@object         # @INIT_FLD_LAST_P
	.p2align	2, 0x0
INIT_FLD_LAST_P:
	.word	14                              # 0xe
	.word	11                              # 0xb
	.word	11                              # 0xb
	.word	14                              # 0xe
	.word	9                               # 0x9
	.word	11                              # 0xb
	.word	18                              # 0x12
	.word	11                              # 0xb
	.word	21                              # 0x15
	.word	9                               # 0x9
	.word	23                              # 0x17
	.word	4294967294                      # 0xfffffffe
	.word	32                              # 0x20
	.word	4294967281                      # 0xfffffff1
	.word	32                              # 0x20
	.word	4294967281                      # 0xfffffff1
	.word	34                              # 0x22
	.word	4294967275                      # 0xffffffeb
	.word	39                              # 0x27
	.word	4294967273                      # 0xffffffe9
	.word	42                              # 0x2a
	.word	4294967263                      # 0xffffffdf
	.word	41                              # 0x29
	.word	4294967265                      # 0xffffffe1
	.word	46                              # 0x2e
	.word	4294967268                      # 0xffffffe4
	.word	38                              # 0x26
	.word	4294967284                      # 0xfffffff4
	.word	21                              # 0x15
	.word	29                              # 0x1d
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	45                              # 0x2d
	.word	4294967272                      # 0xffffffe8
	.word	53                              # 0x35
	.word	4294967251                      # 0xffffffd3
	.word	48                              # 0x30
	.word	4294967270                      # 0xffffffe6
	.word	65                              # 0x41
	.word	4294967253                      # 0xffffffd5
	.word	43                              # 0x2b
	.word	4294967277                      # 0xffffffed
	.word	39                              # 0x27
	.word	4294967286                      # 0xfffffff6
	.word	30                              # 0x1e
	.word	9                               # 0x9
	.word	18                              # 0x12
	.word	26                              # 0x1a
	.word	20                              # 0x14
	.word	27                              # 0x1b
	.word	0                               # 0x0
	.word	57                              # 0x39
	.word	4294967282                      # 0xfffffff2
	.word	82                              # 0x52
	.word	4294967291                      # 0xfffffffb
	.word	75                              # 0x4b
	.word	4294967277                      # 0xffffffed
	.word	97                              # 0x61
	.word	4294967261                      # 0xffffffdd
	.word	125                             # 0x7d
	.word	21                              # 0x15
	.word	4294967283                      # 0xfffffff3
	.word	33                              # 0x21
	.word	4294967282                      # 0xfffffff2
	.word	39                              # 0x27
	.word	4294967289                      # 0xfffffff9
	.word	46                              # 0x2e
	.word	4294967294                      # 0xfffffffe
	.word	51                              # 0x33
	.word	2                               # 0x2
	.word	60                              # 0x3c
	.word	6                               # 0x6
	.word	61                              # 0x3d
	.word	17                              # 0x11
	.word	55                              # 0x37
	.word	34                              # 0x22
	.word	42                              # 0x2a
	.word	62                              # 0x3e
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	27                              # 0x1b
	.word	0                               # 0x0
	.word	28                              # 0x1c
	.word	0                               # 0x0
	.word	31                              # 0x1f
	.word	4294967292                      # 0xfffffffc
	.word	27                              # 0x1b
	.word	6                               # 0x6
	.word	34                              # 0x22
	.word	8                               # 0x8
	.word	30                              # 0x1e
	.word	10                              # 0xa
	.word	24                              # 0x18
	.word	22                              # 0x16
	.word	33                              # 0x21
	.word	19                              # 0x13
	.word	22                              # 0x16
	.word	32                              # 0x20
	.word	26                              # 0x1a
	.word	31                              # 0x1f
	.word	21                              # 0x15
	.word	41                              # 0x29
	.word	26                              # 0x1a
	.word	44                              # 0x2c
	.word	23                              # 0x17
	.word	47                              # 0x2f
	.word	16                              # 0x10
	.word	65                              # 0x41
	.word	14                              # 0xe
	.word	71                              # 0x47
	.word	8                               # 0x8
	.word	60                              # 0x3c
	.word	6                               # 0x6
	.word	63                              # 0x3f
	.word	17                              # 0x11
	.word	65                              # 0x41
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	21                              # 0x15
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	20                              # 0x14
	.word	26                              # 0x1a
	.word	23                              # 0x17
	.word	27                              # 0x1b
	.word	32                              # 0x20
	.word	28                              # 0x1c
	.word	23                              # 0x17
	.word	28                              # 0x1c
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	40                              # 0x28
	.word	24                              # 0x18
	.word	32                              # 0x20
	.word	28                              # 0x1c
	.word	29                              # 0x1d
	.word	23                              # 0x17
	.word	42                              # 0x2a
	.word	19                              # 0x13
	.word	57                              # 0x39
	.word	22                              # 0x16
	.word	53                              # 0x35
	.word	22                              # 0x16
	.word	61                              # 0x3d
	.word	11                              # 0xb
	.word	86                              # 0x56
	.word	19                              # 0x13
	.word	4294967290                      # 0xfffffffa
	.word	18                              # 0x12
	.word	4294967290                      # 0xfffffffa
	.word	14                              # 0xe
	.word	0                               # 0x0
	.word	26                              # 0x1a
	.word	4294967284                      # 0xfffffff4
	.word	31                              # 0x1f
	.word	4294967280                      # 0xfffffff0
	.word	33                              # 0x21
	.word	4294967271                      # 0xffffffe7
	.word	33                              # 0x21
	.word	4294967274                      # 0xffffffea
	.word	37                              # 0x25
	.word	4294967268                      # 0xffffffe4
	.word	39                              # 0x27
	.word	4294967266                      # 0xffffffe2
	.word	42                              # 0x2a
	.word	4294967266                      # 0xffffffe2
	.word	47                              # 0x2f
	.word	4294967254                      # 0xffffffd6
	.word	45                              # 0x2d
	.word	4294967260                      # 0xffffffdc
	.word	49                              # 0x31
	.word	4294967262                      # 0xffffffde
	.word	41                              # 0x29
	.word	4294967279                      # 0xffffffef
	.word	32                              # 0x20
	.word	9                               # 0x9
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	69                              # 0x45
	.word	4294967225                      # 0xffffffb9
	.word	63                              # 0x3f
	.word	4294967233                      # 0xffffffc1
	.word	66                              # 0x42
	.word	4294967232                      # 0xffffffc0
	.word	77                              # 0x4d
	.word	4294967222                      # 0xffffffb6
	.word	54                              # 0x36
	.word	4294967257                      # 0xffffffd9
	.word	52                              # 0x34
	.word	4294967261                      # 0xffffffdd
	.word	41                              # 0x29
	.word	4294967286                      # 0xfffffff6
	.word	36                              # 0x24
	.word	0                               # 0x0
	.word	40                              # 0x28
	.word	4294967295                      # 0xffffffff
	.word	30                              # 0x1e
	.word	14                              # 0xe
	.word	28                              # 0x1c
	.word	26                              # 0x1a
	.word	23                              # 0x17
	.word	37                              # 0x25
	.word	12                              # 0xc
	.word	55                              # 0x37
	.word	11                              # 0xb
	.word	65                              # 0x41
	.word	17                              # 0x11
	.word	4294967286                      # 0xfffffff6
	.word	32                              # 0x20
	.word	4294967283                      # 0xfffffff3
	.word	42                              # 0x2a
	.word	4294967287                      # 0xfffffff7
	.word	49                              # 0x31
	.word	4294967291                      # 0xfffffffb
	.word	53                              # 0x35
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	3                               # 0x3
	.word	68                              # 0x44
	.word	10                              # 0xa
	.word	66                              # 0x42
	.word	27                              # 0x1b
	.word	47                              # 0x2f
	.word	57                              # 0x39
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	37                              # 0x25
	.word	4294967263                      # 0xffffffdf
	.word	39                              # 0x27
	.word	4294967260                      # 0xffffffdc
	.word	40                              # 0x28
	.word	4294967259                      # 0xffffffdb
	.word	38                              # 0x26
	.word	4294967266                      # 0xffffffe2
	.word	46                              # 0x2e
	.word	4294967263                      # 0xffffffdf
	.word	42                              # 0x2a
	.word	4294967266                      # 0xffffffe2
	.word	40                              # 0x28
	.word	4294967272                      # 0xffffffe8
	.word	49                              # 0x31
	.word	4294967267                      # 0xffffffe3
	.word	38                              # 0x26
	.word	4294967284                      # 0xfffffff4
	.word	40                              # 0x28
	.word	4294967286                      # 0xfffffff6
	.word	38                              # 0x26
	.word	4294967293                      # 0xfffffffd
	.word	46                              # 0x2e
	.word	4294967291                      # 0xfffffffb
	.word	31                              # 0x1f
	.word	20                              # 0x14
	.word	29                              # 0x1d
	.word	30                              # 0x1e
	.word	25                              # 0x19
	.word	44                              # 0x2c
	.word	12                              # 0xc
	.word	48                              # 0x30
	.word	11                              # 0xb
	.word	49                              # 0x31
	.word	26                              # 0x1a
	.word	45                              # 0x2d
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	22                              # 0x16
	.word	22                              # 0x16
	.word	23                              # 0x17
	.word	22                              # 0x16
	.word	27                              # 0x1b
	.word	21                              # 0x15
	.word	33                              # 0x21
	.word	20                              # 0x14
	.word	26                              # 0x1a
	.word	28                              # 0x1c
	.word	30                              # 0x1e
	.word	24                              # 0x18
	.word	27                              # 0x1b
	.word	34                              # 0x22
	.word	18                              # 0x12
	.word	42                              # 0x2a
	.word	25                              # 0x19
	.word	39                              # 0x27
	.word	18                              # 0x12
	.word	50                              # 0x32
	.word	12                              # 0xc
	.word	70                              # 0x46
	.word	21                              # 0x15
	.word	54                              # 0x36
	.word	14                              # 0xe
	.word	71                              # 0x47
	.word	11                              # 0xb
	.word	83                              # 0x53
	.word	17                              # 0x11
	.word	4294967283                      # 0xfffffff3
	.word	16                              # 0x10
	.word	4294967287                      # 0xfffffff7
	.word	17                              # 0x11
	.word	4294967284                      # 0xfffffff4
	.word	27                              # 0x1b
	.word	4294967275                      # 0xffffffeb
	.word	37                              # 0x25
	.word	4294967266                      # 0xffffffe2
	.word	41                              # 0x29
	.word	4294967256                      # 0xffffffd8
	.word	42                              # 0x2a
	.word	4294967255                      # 0xffffffd7
	.word	48                              # 0x30
	.word	4294967249                      # 0xffffffd1
	.word	39                              # 0x27
	.word	4294967264                      # 0xffffffe0
	.word	46                              # 0x2e
	.word	4294967256                      # 0xffffffd8
	.word	52                              # 0x34
	.word	4294967245                      # 0xffffffcd
	.word	46                              # 0x2e
	.word	4294967255                      # 0xffffffd7
	.word	52                              # 0x34
	.word	4294967257                      # 0xffffffd9
	.word	43                              # 0x2b
	.word	4294967277                      # 0xffffffed
	.word	32                              # 0x20
	.word	11                              # 0xb
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	61                              # 0x3d
	.word	4294967241                      # 0xffffffc9
	.word	56                              # 0x38
	.word	4294967250                      # 0xffffffd2
	.word	62                              # 0x3e
	.word	4294967246                      # 0xffffffce
	.word	81                              # 0x51
	.word	4294967229                      # 0xffffffbd
	.word	45                              # 0x2d
	.word	4294967276                      # 0xffffffec
	.word	35                              # 0x23
	.word	4294967294                      # 0xfffffffe
	.word	28                              # 0x1c
	.word	15                              # 0xf
	.word	34                              # 0x22
	.word	1                               # 0x1
	.word	39                              # 0x27
	.word	1                               # 0x1
	.word	30                              # 0x1e
	.word	17                              # 0x11
	.word	20                              # 0x14
	.word	38                              # 0x26
	.word	18                              # 0x12
	.word	45                              # 0x2d
	.word	15                              # 0xf
	.word	54                              # 0x36
	.word	0                               # 0x0
	.word	79                              # 0x4f
	.word	9                               # 0x9
	.word	4294967294                      # 0xfffffffe
	.word	30                              # 0x1e
	.word	4294967286                      # 0xfffffff6
	.word	31                              # 0x1f
	.word	4294967292                      # 0xfffffffc
	.word	33                              # 0x21
	.word	4294967295                      # 0xffffffff
	.word	33                              # 0x21
	.word	7                               # 0x7
	.word	31                              # 0x1f
	.word	12                              # 0xc
	.word	37                              # 0x25
	.word	23                              # 0x17
	.word	31                              # 0x1f
	.word	38                              # 0x26
	.word	20                              # 0x14
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	36                              # 0x24
	.word	4294967280                      # 0xfffffff0
	.word	37                              # 0x25
	.word	4294967282                      # 0xfffffff2
	.word	37                              # 0x25
	.word	4294967279                      # 0xffffffef
	.word	32                              # 0x20
	.word	1                               # 0x1
	.word	34                              # 0x22
	.word	15                              # 0xf
	.word	29                              # 0x1d
	.word	15                              # 0xf
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	34                              # 0x22
	.word	22                              # 0x16
	.word	31                              # 0x1f
	.word	16                              # 0x10
	.word	35                              # 0x23
	.word	18                              # 0x12
	.word	31                              # 0x1f
	.word	28                              # 0x1c
	.word	33                              # 0x21
	.word	41                              # 0x29
	.word	36                              # 0x24
	.word	28                              # 0x1c
	.word	27                              # 0x1b
	.word	47                              # 0x2f
	.word	21                              # 0x15
	.word	62                              # 0x3e
	.word	18                              # 0x12
	.word	31                              # 0x1f
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	36                              # 0x24
	.word	24                              # 0x18
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	27                              # 0x1b
	.word	16                              # 0x10
	.word	24                              # 0x18
	.word	30                              # 0x1e
	.word	31                              # 0x1f
	.word	29                              # 0x1d
	.word	22                              # 0x16
	.word	41                              # 0x29
	.word	22                              # 0x16
	.word	42                              # 0x2a
	.word	16                              # 0x10
	.word	60                              # 0x3c
	.word	15                              # 0xf
	.word	52                              # 0x34
	.word	14                              # 0xe
	.word	60                              # 0x3c
	.word	3                               # 0x3
	.word	78                              # 0x4e
	.word	4294967280                      # 0xfffffff0
	.word	123                             # 0x7b
	.word	21                              # 0x15
	.word	53                              # 0x35
	.word	22                              # 0x16
	.word	56                              # 0x38
	.word	25                              # 0x19
	.word	61                              # 0x3d
	.size	INIT_FLD_LAST_P, 2880

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
