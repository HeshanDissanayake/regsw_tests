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
	lui	a1, %hi(number_of_slices)
	lw	a0, %lo(number_of_slices)(a1)
	blez	a0, .LBB0_64
# %bb.29:
	lui	a0, %hi(initialized)
	ld	a0, %lo(initialized)(a0)
	ld	a2, 0(a0)
	ld	a2, 0(a2)
	li	a3, 0
.LBB0_30:                               # =>This Inner Loop Header: Depth=1
	sw	zero, 0(a2)
	lw	a4, %lo(number_of_slices)(a1)
	addi	a3, a3, 1
	addi	a2, a2, 4
	blt	a3, a4, .LBB0_30
# %bb.31:
	blez	a4, .LBB0_64
# %bb.32:
	ld	a1, 0(a0)
	ld	a1, 8(a1)
	li	a2, 0
	lui	a3, %hi(number_of_slices)
.LBB0_33:                               # =>This Inner Loop Header: Depth=1
	sw	zero, 0(a1)
	lw	a4, %lo(number_of_slices)(a3)
	addi	a2, a2, 1
	addi	a1, a1, 4
	blt	a2, a4, .LBB0_33
# %bb.34:
	blez	a4, .LBB0_64
# %bb.35:
	ld	a1, 0(a0)
	ld	a1, 16(a1)
	li	a2, 0
	lui	a3, %hi(number_of_slices)
.LBB0_36:                               # =>This Inner Loop Header: Depth=1
	sw	zero, 0(a1)
	lw	a4, %lo(number_of_slices)(a3)
	addi	a2, a2, 1
	addi	a1, a1, 4
	blt	a2, a4, .LBB0_36
# %bb.37:
	blez	a4, .LBB0_64
# %bb.38:
	ld	a0, 0(a0)
	ld	a0, 24(a0)
	li	a1, 0
	lui	a2, %hi(number_of_slices)
.LBB0_39:                               # =>This Inner Loop Header: Depth=1
	sw	zero, 0(a0)
	lw	a3, %lo(number_of_slices)(a2)
	addi	a1, a1, 1
	addi	a0, a0, 4
	blt	a1, a3, .LBB0_39
# %bb.40:
	blez	a3, .LBB0_64
# %bb.41:
	lui	a0, %hi(initialized)
	ld	a0, %lo(initialized)(a0)
	ld	a1, 8(a0)
	ld	a1, 0(a1)
	li	a2, 0
	lui	a3, %hi(number_of_slices)
.LBB0_42:                               # =>This Inner Loop Header: Depth=1
	sw	zero, 0(a1)
	lw	a4, %lo(number_of_slices)(a3)
	addi	a2, a2, 1
	addi	a1, a1, 4
	blt	a2, a4, .LBB0_42
# %bb.43:
	blez	a4, .LBB0_64
# %bb.44:
	ld	a1, 8(a0)
	ld	a1, 8(a1)
	li	a2, 0
	lui	a3, %hi(number_of_slices)
.LBB0_45:                               # =>This Inner Loop Header: Depth=1
	sw	zero, 0(a1)
	lw	a4, %lo(number_of_slices)(a3)
	addi	a2, a2, 1
	addi	a1, a1, 4
	blt	a2, a4, .LBB0_45
# %bb.46:
	blez	a4, .LBB0_64
# %bb.47:
	ld	a1, 8(a0)
	ld	a1, 16(a1)
	li	a2, 0
	lui	a3, %hi(number_of_slices)
.LBB0_48:                               # =>This Inner Loop Header: Depth=1
	sw	zero, 0(a1)
	lw	a4, %lo(number_of_slices)(a3)
	addi	a2, a2, 1
	addi	a1, a1, 4
	blt	a2, a4, .LBB0_48
# %bb.49:
	blez	a4, .LBB0_64
# %bb.50:
	ld	a0, 8(a0)
	ld	a0, 24(a0)
	li	a1, 0
	lui	a2, %hi(number_of_slices)
.LBB0_51:                               # =>This Inner Loop Header: Depth=1
	sw	zero, 0(a0)
	lw	a3, %lo(number_of_slices)(a2)
	addi	a1, a1, 1
	addi	a0, a0, 4
	blt	a1, a3, .LBB0_51
# %bb.52:
	blez	a3, .LBB0_64
# %bb.53:
	lui	a0, %hi(initialized)
	ld	a0, %lo(initialized)(a0)
	ld	a1, 16(a0)
	ld	a1, 0(a1)
	li	a2, 0
	lui	a3, %hi(number_of_slices)
.LBB0_54:                               # =>This Inner Loop Header: Depth=1
	sw	zero, 0(a1)
	lw	a4, %lo(number_of_slices)(a3)
	addi	a2, a2, 1
	addi	a1, a1, 4
	blt	a2, a4, .LBB0_54
# %bb.55:
	blez	a4, .LBB0_64
# %bb.56:
	ld	a1, 16(a0)
	ld	a1, 8(a1)
	li	a2, 0
	lui	a3, %hi(number_of_slices)
.LBB0_57:                               # =>This Inner Loop Header: Depth=1
	sw	zero, 0(a1)
	lw	a4, %lo(number_of_slices)(a3)
	addi	a2, a2, 1
	addi	a1, a1, 4
	blt	a2, a4, .LBB0_57
# %bb.58:
	blez	a4, .LBB0_64
# %bb.59:
	ld	a1, 16(a0)
	ld	a1, 16(a1)
	li	a2, 0
	lui	a3, %hi(number_of_slices)
.LBB0_60:                               # =>This Inner Loop Header: Depth=1
	sw	zero, 0(a1)
	lw	a4, %lo(number_of_slices)(a3)
	addi	a2, a2, 1
	addi	a1, a1, 4
	blt	a2, a4, .LBB0_60
# %bb.61:
	blez	a4, .LBB0_64
# %bb.62:
	ld	a0, 16(a0)
	ld	a0, 24(a0)
	li	a1, 0
	lui	a2, %hi(number_of_slices)
.LBB0_63:                               # =>This Inner Loop Header: Depth=1
	sw	zero, 0(a0)
	lw	a3, %lo(number_of_slices)(a2)
	addi	a1, a1, 1
	addi	a0, a0, 4
	blt	a1, a3, .LBB0_63
.LBB0_64:
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
.LBB0_65:                               # =>This Inner Loop Header: Depth=1
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
	bne	s0, s4, .LBB0_65
# %bb.66:
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
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	lui	s0, %hi(initialized)
	ld	a0, %lo(initialized)(s0)
	ld	a0, 0(a0)
	ld	a0, 0(a0)
	call	free
	lui	s1, %hi(model_number)
	ld	a0, %lo(model_number)(s1)
	ld	a0, 0(a0)
	ld	a0, 0(a0)
	call	free
	ld	a0, %lo(initialized)(s0)
	ld	a0, 0(a0)
	ld	a0, 8(a0)
	call	free
	ld	a0, %lo(model_number)(s1)
	ld	a0, 0(a0)
	ld	a0, 8(a0)
	call	free
	ld	a0, %lo(initialized)(s0)
	ld	a0, 0(a0)
	ld	a0, 16(a0)
	call	free
	ld	a0, %lo(model_number)(s1)
	ld	a0, 0(a0)
	ld	a0, 16(a0)
	call	free
	ld	a0, %lo(initialized)(s0)
	ld	a0, 0(a0)
	ld	a0, 24(a0)
	call	free
	ld	a0, %lo(model_number)(s1)
	ld	a0, 0(a0)
	ld	a0, 24(a0)
	call	free
	ld	a0, %lo(initialized)(s0)
	ld	a0, 0(a0)
	call	free
	ld	a0, %lo(model_number)(s1)
	ld	a0, 0(a0)
	call	free
	ld	a0, %lo(initialized)(s0)
	ld	a0, 8(a0)
	ld	a0, 0(a0)
	call	free
	ld	a0, %lo(model_number)(s1)
	ld	a0, 8(a0)
	ld	a0, 0(a0)
	call	free
	ld	a0, %lo(initialized)(s0)
	ld	a0, 8(a0)
	ld	a0, 8(a0)
	call	free
	ld	a0, %lo(model_number)(s1)
	ld	a0, 8(a0)
	ld	a0, 8(a0)
	call	free
	ld	a0, %lo(initialized)(s0)
	ld	a0, 8(a0)
	ld	a0, 16(a0)
	call	free
	ld	a0, %lo(model_number)(s1)
	ld	a0, 8(a0)
	ld	a0, 16(a0)
	call	free
	ld	a0, %lo(initialized)(s0)
	ld	a0, 8(a0)
	ld	a0, 24(a0)
	call	free
	ld	a0, %lo(model_number)(s1)
	ld	a0, 8(a0)
	ld	a0, 24(a0)
	call	free
	ld	a0, %lo(initialized)(s0)
	ld	a0, 8(a0)
	call	free
	ld	a0, %lo(model_number)(s1)
	ld	a0, 8(a0)
	call	free
	ld	a0, %lo(initialized)(s0)
	ld	a0, 16(a0)
	ld	a0, 0(a0)
	call	free
	ld	a0, %lo(model_number)(s1)
	ld	a0, 16(a0)
	ld	a0, 0(a0)
	call	free
	ld	a0, %lo(initialized)(s0)
	ld	a0, 16(a0)
	ld	a0, 8(a0)
	call	free
	ld	a0, %lo(model_number)(s1)
	ld	a0, 16(a0)
	ld	a0, 8(a0)
	call	free
	ld	a0, %lo(initialized)(s0)
	ld	a0, 16(a0)
	ld	a0, 16(a0)
	call	free
	ld	a0, %lo(model_number)(s1)
	ld	a0, 16(a0)
	ld	a0, 16(a0)
	call	free
	ld	a0, %lo(initialized)(s0)
	ld	a0, 16(a0)
	ld	a0, 24(a0)
	call	free
	ld	a0, %lo(model_number)(s1)
	ld	a0, 16(a0)
	ld	a0, 24(a0)
	call	free
	ld	a0, %lo(initialized)(s0)
	ld	a0, 16(a0)
	call	free
	ld	a0, %lo(model_number)(s1)
	ld	a0, 16(a0)
	call	free
	ld	a0, %lo(initialized)(s0)
	call	free
	ld	a0, %lo(model_number)(s1)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
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
	sd	s9, 8(sp)                       # 8-byte Folded Spill
	lui	s2, %hi(img)
	ld	a0, %lo(img)(s2)
	lui	a1, 8
	add	a0, a0, a1
	ld	a0, -1200(a0)
	ld	s4, 32(a0)
	li	s3, 0
	ld	s0, 40(a0)
	addi	s1, s4, 160
	lui	s5, 22
	li	s6, 264
	lui	s7, %hi(INIT_MB_TYPE_I)
	addi	s7, s7, %lo(INIT_MB_TYPE_I)
	lui	s8, %hi(INIT_MB_TYPE_P)
	addi	s8, s8, %lo(INIT_MB_TYPE_P)
	li	s9, 2
	j	.LBB3_2
.LBB3_1:                                #   in Loop: Header=BB3_2 Depth=1
	mul	a0, a0, s6
	add	a1, a1, s3
	add	a0, a1, a0
	addi	a1, a0, 80
	mv	a0, s1
	call	biari_init_context
	addi	s3, s3, 88
	addi	s1, s1, 176
	beq	s3, s6, .LBB3_24
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	ld	a0, %lo(img)(s2)
	lw	a2, 24(a0)
	mv	a1, s7
	beq	a2, s9, .LBB3_4
# %bb.3:                                #   in Loop: Header=BB3_2 Depth=1
	mv	a1, s8
.LBB3_4:                                #   in Loop: Header=BB3_2 Depth=1
	add	a0, a0, s5
	lw	a2, 232(a0)
	addi	a0, s1, -160
	mul	a2, a2, s6
	add	a1, a1, s3
	add	a1, a1, a2
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a2, 24(a0)
	mv	a1, s7
	beq	a2, s9, .LBB3_6
# %bb.5:                                #   in Loop: Header=BB3_2 Depth=1
	mv	a1, s8
.LBB3_6:                                #   in Loop: Header=BB3_2 Depth=1
	add	a0, a0, s5
	lw	a2, 232(a0)
	addi	a0, s1, -144
	mul	a2, a2, s6
	add	a1, a1, s3
	add	a1, a1, a2
	addi	a1, a1, 8
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s5
	lw	a1, 232(a0)
	mv	a2, s7
	beq	a3, s9, .LBB3_8
# %bb.7:                                #   in Loop: Header=BB3_2 Depth=1
	mv	a2, s8
.LBB3_8:                                #   in Loop: Header=BB3_2 Depth=1
	addi	a0, s1, -128
	mul	a1, a1, s6
	add	a2, a2, s3
	add	a1, a2, a1
	addi	a1, a1, 16
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s5
	lw	a1, 232(a0)
	mv	a2, s7
	beq	a3, s9, .LBB3_10
# %bb.9:                                #   in Loop: Header=BB3_2 Depth=1
	mv	a2, s8
.LBB3_10:                               #   in Loop: Header=BB3_2 Depth=1
	addi	a0, s1, -112
	mul	a1, a1, s6
	add	a2, a2, s3
	add	a1, a2, a1
	addi	a1, a1, 24
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s5
	lw	a1, 232(a0)
	mv	a2, s7
	beq	a3, s9, .LBB3_12
# %bb.11:                               #   in Loop: Header=BB3_2 Depth=1
	mv	a2, s8
.LBB3_12:                               #   in Loop: Header=BB3_2 Depth=1
	addi	a0, s1, -96
	mul	a1, a1, s6
	add	a2, a2, s3
	add	a1, a2, a1
	addi	a1, a1, 32
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s5
	lw	a1, 232(a0)
	mv	a2, s7
	beq	a3, s9, .LBB3_14
# %bb.13:                               #   in Loop: Header=BB3_2 Depth=1
	mv	a2, s8
.LBB3_14:                               #   in Loop: Header=BB3_2 Depth=1
	addi	a0, s1, -80
	mul	a1, a1, s6
	add	a2, a2, s3
	add	a1, a2, a1
	addi	a1, a1, 40
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s5
	lw	a1, 232(a0)
	mv	a2, s7
	beq	a3, s9, .LBB3_16
# %bb.15:                               #   in Loop: Header=BB3_2 Depth=1
	mv	a2, s8
.LBB3_16:                               #   in Loop: Header=BB3_2 Depth=1
	addi	a0, s1, -64
	mul	a1, a1, s6
	add	a2, a2, s3
	add	a1, a2, a1
	addi	a1, a1, 48
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s5
	lw	a1, 232(a0)
	mv	a2, s7
	beq	a3, s9, .LBB3_18
# %bb.17:                               #   in Loop: Header=BB3_2 Depth=1
	mv	a2, s8
.LBB3_18:                               #   in Loop: Header=BB3_2 Depth=1
	addi	a0, s1, -48
	mul	a1, a1, s6
	add	a2, a2, s3
	add	a1, a2, a1
	addi	a1, a1, 56
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s5
	lw	a1, 232(a0)
	mv	a2, s7
	beq	a3, s9, .LBB3_20
# %bb.19:                               #   in Loop: Header=BB3_2 Depth=1
	mv	a2, s8
.LBB3_20:                               #   in Loop: Header=BB3_2 Depth=1
	addi	a0, s1, -32
	mul	a1, a1, s6
	add	a2, a2, s3
	add	a1, a2, a1
	addi	a1, a1, 64
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s5
	lw	a1, 232(a0)
	mv	a2, s7
	beq	a3, s9, .LBB3_22
# %bb.21:                               #   in Loop: Header=BB3_2 Depth=1
	mv	a2, s8
.LBB3_22:                               #   in Loop: Header=BB3_2 Depth=1
	addi	a0, s1, -16
	mul	a1, a1, s6
	add	a2, a2, s3
	add	a1, a2, a1
	addi	a1, a1, 72
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a2, 24(a0)
	add	a0, a0, s5
	lw	a0, 232(a0)
	mv	a1, s7
	beq	a2, s9, .LBB3_1
# %bb.23:                               #   in Loop: Header=BB3_2 Depth=1
	mv	a1, s8
	j	.LBB3_1
.LBB3_24:
	lui	s1, %hi(img)
	ld	a1, %lo(img)(s1)
	lui	s2, 22
	add	a0, a1, s2
	lw	a2, 232(a0)
	addi	a0, s4, 528
	lw	a3, 24(a1)
	li	s6, 144
	mul	a1, a2, s6
	lui	s5, %hi(INIT_B8_TYPE_I)
	addi	s5, s5, %lo(INIT_B8_TYPE_I)
	li	s3, 2
	lui	s7, %hi(INIT_B8_TYPE_P)
	addi	s7, s7, %lo(INIT_B8_TYPE_P)
	mv	a2, s5
	beq	a3, s3, .LBB3_26
# %bb.25:
	mv	a2, s7
.LBB3_26:
	add	a1, a2, a1
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 544
	mul	a1, a1, s6
	mv	a2, s5
	beq	a3, s3, .LBB3_28
# %bb.27:
	mv	a2, s7
.LBB3_28:
	add	a1, a2, a1
	addi	a1, a1, 8
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 560
	mul	a1, a1, s6
	mv	a2, s5
	beq	a3, s3, .LBB3_30
# %bb.29:
	mv	a2, s7
.LBB3_30:
	add	a1, a2, a1
	addi	a1, a1, 16
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 576
	mul	a1, a1, s6
	mv	a2, s5
	beq	a3, s3, .LBB3_32
# %bb.31:
	mv	a2, s7
.LBB3_32:
	add	a1, a2, a1
	addi	a1, a1, 24
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 592
	mul	a1, a1, s6
	mv	a2, s5
	beq	a3, s3, .LBB3_34
# %bb.33:
	mv	a2, s7
.LBB3_34:
	add	a1, a2, a1
	addi	a1, a1, 32
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 608
	mul	a1, a1, s6
	mv	a2, s5
	beq	a3, s3, .LBB3_36
# %bb.35:
	mv	a2, s7
.LBB3_36:
	add	a1, a2, a1
	addi	a1, a1, 40
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 624
	mul	a1, a1, s6
	mv	a2, s5
	beq	a3, s3, .LBB3_38
# %bb.37:
	mv	a2, s7
.LBB3_38:
	add	a1, a2, a1
	addi	a1, a1, 48
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 640
	mul	a1, a1, s6
	mv	a2, s5
	beq	a3, s3, .LBB3_40
# %bb.39:
	mv	a2, s7
.LBB3_40:
	add	a1, a2, a1
	addi	a1, a1, 56
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 656
	mul	a1, a1, s6
	mv	a2, s5
	beq	a3, s3, .LBB3_42
# %bb.41:
	mv	a2, s7
.LBB3_42:
	add	a1, a2, a1
	addi	a1, a1, 64
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 672
	mul	a1, a1, s6
	mv	a2, s5
	beq	a3, s3, .LBB3_44
# %bb.43:
	mv	a2, s7
.LBB3_44:
	add	a1, a2, a1
	addi	a1, a1, 72
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 688
	mul	a1, a1, s6
	mv	a2, s5
	beq	a3, s3, .LBB3_46
# %bb.45:
	mv	a2, s7
.LBB3_46:
	add	a1, a2, a1
	addi	a1, a1, 80
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 704
	mul	a1, a1, s6
	mv	a2, s5
	beq	a3, s3, .LBB3_48
# %bb.47:
	mv	a2, s7
.LBB3_48:
	add	a1, a2, a1
	addi	a1, a1, 88
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 720
	mul	a1, a1, s6
	mv	a2, s5
	beq	a3, s3, .LBB3_50
# %bb.49:
	mv	a2, s7
.LBB3_50:
	add	a1, a2, a1
	addi	a1, a1, 96
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 736
	mul	a1, a1, s6
	mv	a2, s5
	beq	a3, s3, .LBB3_52
# %bb.51:
	mv	a2, s7
.LBB3_52:
	add	a1, a2, a1
	addi	a1, a1, 104
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 752
	mul	a1, a1, s6
	mv	a2, s5
	beq	a3, s3, .LBB3_54
# %bb.53:
	mv	a2, s7
.LBB3_54:
	add	a1, a2, a1
	addi	a1, a1, 112
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 768
	mul	a1, a1, s6
	mv	a2, s5
	beq	a3, s3, .LBB3_56
# %bb.55:
	mv	a2, s7
.LBB3_56:
	add	a1, a2, a1
	addi	a1, a1, 120
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 784
	mul	a1, a1, s6
	mv	a2, s5
	beq	a3, s3, .LBB3_58
# %bb.57:
	mv	a2, s7
.LBB3_58:
	add	a1, a2, a1
	addi	a1, a1, 128
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a2, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 800
	mul	a1, a1, s6
	beq	a2, s3, .LBB3_60
# %bb.59:
	mv	s5, s7
.LBB3_60:
	add	a1, s5, a1
	addi	a1, a1, 136
	call	biari_init_context
	ld	a1, %lo(img)(s1)
	add	a0, a1, s2
	lw	a2, 232(a0)
	addi	a0, s4, 816
	lw	a3, 24(a1)
	li	s7, 160
	mul	a1, a2, s7
	lui	s5, %hi(INIT_MV_RES_I)
	addi	s5, s5, %lo(INIT_MV_RES_I)
	lui	s6, %hi(INIT_MV_RES_P)
	addi	s6, s6, %lo(INIT_MV_RES_P)
	mv	a2, s5
	beq	a3, s3, .LBB3_62
# %bb.61:
	mv	a2, s6
.LBB3_62:
	add	a1, a2, a1
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 832
	mul	a1, a1, s7
	mv	a2, s5
	beq	a3, s3, .LBB3_64
# %bb.63:
	mv	a2, s6
.LBB3_64:
	add	a1, a2, a1
	addi	a1, a1, 8
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 848
	mul	a1, a1, s7
	mv	a2, s5
	beq	a3, s3, .LBB3_66
# %bb.65:
	mv	a2, s6
.LBB3_66:
	add	a1, a2, a1
	addi	a1, a1, 16
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 864
	mul	a1, a1, s7
	mv	a2, s5
	beq	a3, s3, .LBB3_68
# %bb.67:
	mv	a2, s6
.LBB3_68:
	add	a1, a2, a1
	addi	a1, a1, 24
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 880
	mul	a1, a1, s7
	mv	a2, s5
	beq	a3, s3, .LBB3_70
# %bb.69:
	mv	a2, s6
.LBB3_70:
	add	a1, a2, a1
	addi	a1, a1, 32
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 896
	mul	a1, a1, s7
	mv	a2, s5
	beq	a3, s3, .LBB3_72
# %bb.71:
	mv	a2, s6
.LBB3_72:
	add	a1, a2, a1
	addi	a1, a1, 40
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 912
	mul	a1, a1, s7
	mv	a2, s5
	beq	a3, s3, .LBB3_74
# %bb.73:
	mv	a2, s6
.LBB3_74:
	add	a1, a2, a1
	addi	a1, a1, 48
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 928
	mul	a1, a1, s7
	mv	a2, s5
	beq	a3, s3, .LBB3_76
# %bb.75:
	mv	a2, s6
.LBB3_76:
	add	a1, a2, a1
	addi	a1, a1, 56
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 944
	mul	a1, a1, s7
	mv	a2, s5
	beq	a3, s3, .LBB3_78
# %bb.77:
	mv	a2, s6
.LBB3_78:
	add	a1, a2, a1
	addi	a1, a1, 64
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 960
	mul	a1, a1, s7
	mv	a2, s5
	beq	a3, s3, .LBB3_80
# %bb.79:
	mv	a2, s6
.LBB3_80:
	add	a1, a2, a1
	addi	a1, a1, 72
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 976
	mul	a1, a1, s7
	mv	a2, s5
	beq	a3, s3, .LBB3_82
# %bb.81:
	mv	a2, s6
.LBB3_82:
	add	a1, a2, a1
	addi	a1, a1, 80
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 992
	mul	a1, a1, s7
	mv	a2, s5
	beq	a3, s3, .LBB3_84
# %bb.83:
	mv	a2, s6
.LBB3_84:
	add	a1, a2, a1
	addi	a1, a1, 88
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 1008
	mul	a1, a1, s7
	mv	a2, s5
	beq	a3, s3, .LBB3_86
# %bb.85:
	mv	a2, s6
.LBB3_86:
	add	a1, a2, a1
	addi	a1, a1, 96
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 1024
	mul	a1, a1, s7
	mv	a2, s5
	beq	a3, s3, .LBB3_88
# %bb.87:
	mv	a2, s6
.LBB3_88:
	add	a1, a2, a1
	addi	a1, a1, 104
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 1040
	mul	a1, a1, s7
	mv	a2, s5
	beq	a3, s3, .LBB3_90
# %bb.89:
	mv	a2, s6
.LBB3_90:
	add	a1, a2, a1
	addi	a1, a1, 112
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 1056
	mul	a1, a1, s7
	mv	a2, s5
	beq	a3, s3, .LBB3_92
# %bb.91:
	mv	a2, s6
.LBB3_92:
	add	a1, a2, a1
	addi	a1, a1, 120
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 1072
	mul	a1, a1, s7
	mv	a2, s5
	beq	a3, s3, .LBB3_94
# %bb.93:
	mv	a2, s6
.LBB3_94:
	add	a1, a2, a1
	addi	a1, a1, 128
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 1088
	mul	a1, a1, s7
	mv	a2, s5
	beq	a3, s3, .LBB3_96
# %bb.95:
	mv	a2, s6
.LBB3_96:
	add	a1, a2, a1
	addi	a1, a1, 136
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 1104
	mul	a1, a1, s7
	mv	a2, s5
	beq	a3, s3, .LBB3_98
# %bb.97:
	mv	a2, s6
.LBB3_98:
	add	a1, a2, a1
	addi	a1, a1, 144
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a2, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 1120
	mul	a1, a1, s7
	beq	a2, s3, .LBB3_100
# %bb.99:
	mv	s5, s6
.LBB3_100:
	add	a1, s5, a1
	addi	a1, a1, 152
	call	biari_init_context
	ld	a1, %lo(img)(s1)
	add	a0, a1, s2
	lw	a2, 232(a0)
	addi	a0, s4, 1136
	lw	a3, 24(a1)
	li	s5, 96
	mul	a1, a2, s5
	lui	s6, %hi(INIT_REF_NO_I)
	addi	s6, s6, %lo(INIT_REF_NO_I)
	lui	s7, %hi(INIT_REF_NO_P)
	addi	s7, s7, %lo(INIT_REF_NO_P)
	mv	a2, s6
	beq	a3, s3, .LBB3_102
# %bb.101:
	mv	a2, s7
.LBB3_102:
	add	a1, a2, a1
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 1152
	mul	a1, a1, s5
	mv	a2, s6
	beq	a3, s3, .LBB3_104
# %bb.103:
	mv	a2, s7
.LBB3_104:
	add	a1, a2, a1
	addi	a1, a1, 8
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 1168
	mul	a1, a1, s5
	mv	a2, s6
	beq	a3, s3, .LBB3_106
# %bb.105:
	mv	a2, s7
.LBB3_106:
	add	a1, a2, a1
	addi	a1, a1, 16
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 1184
	mul	a1, a1, s5
	mv	a2, s6
	beq	a3, s3, .LBB3_108
# %bb.107:
	mv	a2, s7
.LBB3_108:
	add	a1, a2, a1
	addi	a1, a1, 24
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 1200
	mul	a1, a1, s5
	mv	a2, s6
	beq	a3, s3, .LBB3_110
# %bb.109:
	mv	a2, s7
.LBB3_110:
	add	a1, a2, a1
	addi	a1, a1, 32
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 1216
	mul	a1, a1, s5
	mv	a2, s6
	beq	a3, s3, .LBB3_112
# %bb.111:
	mv	a2, s7
.LBB3_112:
	add	a1, a2, a1
	addi	a1, a1, 40
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 1232
	mul	a1, a1, s5
	mv	a2, s6
	beq	a3, s3, .LBB3_114
# %bb.113:
	mv	a2, s7
.LBB3_114:
	add	a1, a2, a1
	addi	a1, a1, 48
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 1248
	mul	a1, a1, s5
	mv	a2, s6
	beq	a3, s3, .LBB3_116
# %bb.115:
	mv	a2, s7
.LBB3_116:
	add	a1, a2, a1
	addi	a1, a1, 56
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 1264
	mul	a1, a1, s5
	mv	a2, s6
	beq	a3, s3, .LBB3_118
# %bb.117:
	mv	a2, s7
.LBB3_118:
	add	a1, a2, a1
	addi	a1, a1, 64
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 1280
	mul	a1, a1, s5
	mv	a2, s6
	beq	a3, s3, .LBB3_120
# %bb.119:
	mv	a2, s7
.LBB3_120:
	add	a1, a2, a1
	addi	a1, a1, 72
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 1296
	mul	a1, a1, s5
	mv	a2, s6
	beq	a3, s3, .LBB3_122
# %bb.121:
	mv	a2, s7
.LBB3_122:
	add	a1, a2, a1
	addi	a1, a1, 80
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a2, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 1312
	mul	a1, a1, s5
	beq	a2, s3, .LBB3_124
# %bb.123:
	mv	s6, s7
.LBB3_124:
	add	a1, s6, a1
	addi	a1, a1, 88
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	add	a1, a0, s2
	lw	a1, 232(a1)
	lw	a3, 24(a0)
	addi	a0, s4, 1328
	slli	a1, a1, 5
	lui	s6, %hi(INIT_DELTA_QP_I)
	addi	s6, s6, %lo(INIT_DELTA_QP_I)
	lui	s7, %hi(INIT_DELTA_QP_P)
	addi	s7, s7, %lo(INIT_DELTA_QP_P)
	mv	a2, s6
	beq	a3, s3, .LBB3_126
# %bb.125:
	mv	a2, s7
.LBB3_126:
	add	a1, a2, a1
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 1344
	slli	a1, a1, 5
	mv	a2, s6
	beq	a3, s3, .LBB3_128
# %bb.127:
	mv	a2, s7
.LBB3_128:
	add	a1, a2, a1
	addi	a1, a1, 8
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 1360
	slli	a1, a1, 5
	mv	a2, s6
	beq	a3, s3, .LBB3_130
# %bb.129:
	mv	a2, s7
.LBB3_130:
	add	a1, a2, a1
	addi	a1, a1, 16
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a2, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 1376
	slli	a1, a1, 5
	beq	a2, s3, .LBB3_132
# %bb.131:
	mv	s6, s7
.LBB3_132:
	add	a1, s6, a1
	addi	a1, a1, 24
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	add	a1, a0, s2
	lw	a1, 232(a1)
	lw	a3, 24(a0)
	addi	a0, s4, 1392
	slli	a1, a1, 5
	lui	s6, %hi(INIT_MB_AFF_I)
	addi	s6, s6, %lo(INIT_MB_AFF_I)
	lui	s7, %hi(INIT_MB_AFF_P)
	addi	s7, s7, %lo(INIT_MB_AFF_P)
	mv	a2, s6
	beq	a3, s3, .LBB3_134
# %bb.133:
	mv	a2, s7
.LBB3_134:
	add	a1, a2, a1
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 1408
	slli	a1, a1, 5
	mv	a2, s6
	beq	a3, s3, .LBB3_136
# %bb.135:
	mv	a2, s7
.LBB3_136:
	add	a1, a2, a1
	addi	a1, a1, 8
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 1424
	slli	a1, a1, 5
	mv	a2, s6
	beq	a3, s3, .LBB3_138
# %bb.137:
	mv	a2, s7
.LBB3_138:
	add	a1, a2, a1
	addi	a1, a1, 16
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a2, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 1440
	slli	a1, a1, 5
	beq	a2, s3, .LBB3_140
# %bb.139:
	mv	s6, s7
.LBB3_140:
	add	a1, s6, a1
	addi	a1, a1, 24
	call	biari_init_context
	ld	a1, %lo(img)(s1)
	add	a0, a1, s2
	lw	a2, 232(a0)
	addi	a0, s4, 1456
	lw	a3, 24(a1)
	li	s8, 24
	mul	a1, a2, s8
	lui	s6, %hi(INIT_TRANSFORM_SIZE_I)
	addi	s6, s6, %lo(INIT_TRANSFORM_SIZE_I)
	lui	s7, %hi(INIT_TRANSFORM_SIZE_P)
	addi	s7, s7, %lo(INIT_TRANSFORM_SIZE_P)
	mv	a2, s6
	beq	a3, s3, .LBB3_142
# %bb.141:
	mv	a2, s7
.LBB3_142:
	add	a1, a2, a1
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 1472
	mul	a1, a1, s8
	mv	a2, s6
	beq	a3, s3, .LBB3_144
# %bb.143:
	mv	a2, s7
.LBB3_144:
	add	a1, a2, a1
	addi	a1, a1, 8
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a2, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s4, 1488
	mul	a1, a1, s8
	beq	a2, s3, .LBB3_146
# %bb.145:
	mv	s6, s7
.LBB3_146:
	add	a1, s6, a1
	addi	a1, a1, 16
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	add	a1, a0, s2
	lw	a1, 232(a1)
	lw	a2, 24(a0)
	slli	a1, a1, 4
	lui	s4, %hi(INIT_IPR_I)
	addi	s4, s4, %lo(INIT_IPR_I)
	lui	s6, %hi(INIT_IPR_P)
	addi	s6, s6, %lo(INIT_IPR_P)
	mv	a0, s4
	beq	a2, s3, .LBB3_148
# %bb.147:
	mv	a0, s6
.LBB3_148:
	add	a1, a0, a1
	mv	a0, s0
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a2, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s0, 16
	slli	a1, a1, 4
	beq	a2, s3, .LBB3_150
# %bb.149:
	mv	s4, s6
.LBB3_150:
	add	a1, s4, a1
	addi	a1, a1, 8
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	add	a1, a0, s2
	lw	a1, 232(a1)
	lw	a3, 24(a0)
	addi	a0, s0, 32
	slli	a1, a1, 5
	lui	s4, %hi(INIT_CIPR_I)
	addi	s4, s4, %lo(INIT_CIPR_I)
	lui	s6, %hi(INIT_CIPR_P)
	addi	s6, s6, %lo(INIT_CIPR_P)
	mv	a2, s4
	beq	a3, s3, .LBB3_152
# %bb.151:
	mv	a2, s6
.LBB3_152:
	add	a1, a2, a1
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s0, 48
	slli	a1, a1, 5
	mv	a2, s4
	beq	a3, s3, .LBB3_154
# %bb.153:
	mv	a2, s6
.LBB3_154:
	add	a1, a2, a1
	addi	a1, a1, 8
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s0, 64
	slli	a1, a1, 5
	mv	a2, s4
	beq	a3, s3, .LBB3_156
# %bb.155:
	mv	a2, s6
.LBB3_156:
	add	a1, a2, a1
	addi	a1, a1, 16
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a2, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s0, 80
	slli	a1, a1, 5
	beq	a2, s3, .LBB3_158
# %bb.157:
	mv	s4, s6
.LBB3_158:
	add	a1, s4, a1
	addi	a1, a1, 24
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	add	a1, a0, s2
	lw	a1, 232(a1)
	lw	a3, 24(a0)
	addi	a0, s0, 96
	mul	a1, a1, s5
	lui	s4, %hi(INIT_CBP_I)
	addi	s4, s4, %lo(INIT_CBP_I)
	lui	s6, %hi(INIT_CBP_P)
	addi	s6, s6, %lo(INIT_CBP_P)
	mv	a2, s4
	beq	a3, s3, .LBB3_160
# %bb.159:
	mv	a2, s6
.LBB3_160:
	add	a1, a2, a1
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s0, 112
	mul	a1, a1, s5
	mv	a2, s4
	beq	a3, s3, .LBB3_162
# %bb.161:
	mv	a2, s6
.LBB3_162:
	add	a1, a2, a1
	addi	a1, a1, 8
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s0, 128
	mul	a1, a1, s5
	mv	a2, s4
	beq	a3, s3, .LBB3_164
# %bb.163:
	mv	a2, s6
.LBB3_164:
	add	a1, a2, a1
	addi	a1, a1, 16
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s0, 144
	mul	a1, a1, s5
	mv	a2, s4
	beq	a3, s3, .LBB3_166
# %bb.165:
	mv	a2, s6
.LBB3_166:
	add	a1, a2, a1
	addi	a1, a1, 24
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s0, 160
	mul	a1, a1, s5
	mv	a2, s4
	beq	a3, s3, .LBB3_168
# %bb.167:
	mv	a2, s6
.LBB3_168:
	add	a1, a2, a1
	addi	a1, a1, 32
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s0, 176
	mul	a1, a1, s5
	mv	a2, s4
	beq	a3, s3, .LBB3_170
# %bb.169:
	mv	a2, s6
.LBB3_170:
	add	a1, a2, a1
	addi	a1, a1, 40
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s0, 192
	mul	a1, a1, s5
	mv	a2, s4
	beq	a3, s3, .LBB3_172
# %bb.171:
	mv	a2, s6
.LBB3_172:
	add	a1, a2, a1
	addi	a1, a1, 48
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s0, 208
	mul	a1, a1, s5
	mv	a2, s4
	beq	a3, s3, .LBB3_174
# %bb.173:
	mv	a2, s6
.LBB3_174:
	add	a1, a2, a1
	addi	a1, a1, 56
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s0, 224
	mul	a1, a1, s5
	mv	a2, s4
	beq	a3, s3, .LBB3_176
# %bb.175:
	mv	a2, s6
.LBB3_176:
	add	a1, a2, a1
	addi	a1, a1, 64
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s0, 240
	mul	a1, a1, s5
	mv	a2, s4
	beq	a3, s3, .LBB3_178
# %bb.177:
	mv	a2, s6
.LBB3_178:
	add	a1, a2, a1
	addi	a1, a1, 72
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s0, 256
	mul	a1, a1, s5
	mv	a2, s4
	beq	a3, s3, .LBB3_180
# %bb.179:
	mv	a2, s6
.LBB3_180:
	add	a1, a2, a1
	addi	a1, a1, 80
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a2, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addi	a0, s0, 272
	mul	a1, a1, s5
	beq	a2, s3, .LBB3_182
# %bb.181:
	mv	s4, s6
.LBB3_182:
	add	a1, s4, a1
	addi	a1, a1, 88
	call	biari_init_context
	li	s2, 0
	addi	s1, s0, 336
	lui	s3, %hi(img)
	lui	s4, 22
	lui	s5, %hi(INIT_BCBP_I)
	addi	s5, s5, %lo(INIT_BCBP_I)
	lui	s6, %hi(INIT_BCBP_P)
	addi	s6, s6, %lo(INIT_BCBP_P)
	li	s7, 2
	li	s8, 320
	j	.LBB3_184
.LBB3_183:                              #   in Loop: Header=BB3_184 Depth=1
	slli	a0, a0, 8
	add	a1, a1, s2
	add	a0, a1, a0
	addi	a1, a0, 24
	mv	a0, s1
	call	biari_init_context
	addi	s2, s2, 32
	addi	s1, s1, 64
	beq	s2, s8, .LBB3_192
.LBB3_184:                              # =>This Inner Loop Header: Depth=1
	ld	a0, %lo(img)(s3)
	lw	a2, 24(a0)
	mv	a1, s5
	beq	a2, s7, .LBB3_186
# %bb.185:                              #   in Loop: Header=BB3_184 Depth=1
	mv	a1, s6
.LBB3_186:                              #   in Loop: Header=BB3_184 Depth=1
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
	beq	a2, s7, .LBB3_188
# %bb.187:                              #   in Loop: Header=BB3_184 Depth=1
	mv	a1, s6
.LBB3_188:                              #   in Loop: Header=BB3_184 Depth=1
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
	beq	a3, s7, .LBB3_190
# %bb.189:                              #   in Loop: Header=BB3_184 Depth=1
	mv	a2, s6
.LBB3_190:                              #   in Loop: Header=BB3_184 Depth=1
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
	beq	a2, s7, .LBB3_183
# %bb.191:                              #   in Loop: Header=BB3_184 Depth=1
	mv	a1, s6
	j	.LBB3_183
.LBB3_192:
	lui	s2, %hi(img)
	ld	a1, %lo(img)(s2)
	lui	s1, 22
	add	a0, a1, s1
	lw	a2, 232(a0)
	addi	a0, s0, 928
	lw	a3, 24(a1)
	li	s3, 960
	mul	a1, a2, s3
	lui	s5, %hi(INIT_MAP_I)
	addi	s5, s5, %lo(INIT_MAP_I)
	li	s4, 2
	lui	s6, %hi(INIT_MAP_P)
	addi	s6, s6, %lo(INIT_MAP_P)
	mv	a2, s5
	beq	a3, s4, .LBB3_194
# %bb.193:
	mv	a2, s6
.LBB3_194:
	add	a1, a2, a1
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 944
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_196
# %bb.195:
	mv	a2, s6
.LBB3_196:
	add	a1, a2, a1
	addi	a1, a1, 8
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 960
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_198
# %bb.197:
	mv	a2, s6
.LBB3_198:
	add	a1, a2, a1
	addi	a1, a1, 16
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 976
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_200
# %bb.199:
	mv	a2, s6
.LBB3_200:
	add	a1, a2, a1
	addi	a1, a1, 24
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 992
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_202
# %bb.201:
	mv	a2, s6
.LBB3_202:
	add	a1, a2, a1
	addi	a1, a1, 32
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1008
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_204
# %bb.203:
	mv	a2, s6
.LBB3_204:
	add	a1, a2, a1
	addi	a1, a1, 40
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1024
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_206
# %bb.205:
	mv	a2, s6
.LBB3_206:
	add	a1, a2, a1
	addi	a1, a1, 48
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1040
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_208
# %bb.207:
	mv	a2, s6
.LBB3_208:
	add	a1, a2, a1
	addi	a1, a1, 56
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1056
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_210
# %bb.209:
	mv	a2, s6
.LBB3_210:
	add	a1, a2, a1
	addi	a1, a1, 64
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1072
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_212
# %bb.211:
	mv	a2, s6
.LBB3_212:
	add	a1, a2, a1
	addi	a1, a1, 72
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1088
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_214
# %bb.213:
	mv	a2, s6
.LBB3_214:
	add	a1, a2, a1
	addi	a1, a1, 80
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1104
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_216
# %bb.215:
	mv	a2, s6
.LBB3_216:
	add	a1, a2, a1
	addi	a1, a1, 88
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1120
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_218
# %bb.217:
	mv	a2, s6
.LBB3_218:
	add	a1, a2, a1
	addi	a1, a1, 96
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1136
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_220
# %bb.219:
	mv	a2, s6
.LBB3_220:
	add	a1, a2, a1
	addi	a1, a1, 104
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1152
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_222
# %bb.221:
	mv	a2, s6
.LBB3_222:
	add	a1, a2, a1
	addi	a1, a1, 112
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1168
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_224
# %bb.223:
	mv	a2, s6
.LBB3_224:
	add	a1, a2, a1
	addi	a1, a1, 120
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1184
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_226
# %bb.225:
	mv	a2, s6
.LBB3_226:
	add	a1, a2, a1
	addi	a1, a1, 128
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1200
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_228
# %bb.227:
	mv	a2, s6
.LBB3_228:
	add	a1, a2, a1
	addi	a1, a1, 136
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1216
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_230
# %bb.229:
	mv	a2, s6
.LBB3_230:
	add	a1, a2, a1
	addi	a1, a1, 144
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1232
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_232
# %bb.231:
	mv	a2, s6
.LBB3_232:
	add	a1, a2, a1
	addi	a1, a1, 152
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1248
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_234
# %bb.233:
	mv	a2, s6
.LBB3_234:
	add	a1, a2, a1
	addi	a1, a1, 160
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1264
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_236
# %bb.235:
	mv	a2, s6
.LBB3_236:
	add	a1, a2, a1
	addi	a1, a1, 168
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1280
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_238
# %bb.237:
	mv	a2, s6
.LBB3_238:
	add	a1, a2, a1
	addi	a1, a1, 176
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1296
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_240
# %bb.239:
	mv	a2, s6
.LBB3_240:
	add	a1, a2, a1
	addi	a1, a1, 184
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1312
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_242
# %bb.241:
	mv	a2, s6
.LBB3_242:
	add	a1, a2, a1
	addi	a1, a1, 192
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1328
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_244
# %bb.243:
	mv	a2, s6
.LBB3_244:
	add	a1, a2, a1
	addi	a1, a1, 200
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1344
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_246
# %bb.245:
	mv	a2, s6
.LBB3_246:
	add	a1, a2, a1
	addi	a1, a1, 208
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1360
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_248
# %bb.247:
	mv	a2, s6
.LBB3_248:
	add	a1, a2, a1
	addi	a1, a1, 216
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1376
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_250
# %bb.249:
	mv	a2, s6
.LBB3_250:
	add	a1, a2, a1
	addi	a1, a1, 224
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1392
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_252
# %bb.251:
	mv	a2, s6
.LBB3_252:
	add	a1, a2, a1
	addi	a1, a1, 232
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1408
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_254
# %bb.253:
	mv	a2, s6
.LBB3_254:
	add	a1, a2, a1
	addi	a1, a1, 240
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1424
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_256
# %bb.255:
	mv	a2, s6
.LBB3_256:
	add	a1, a2, a1
	addi	a1, a1, 248
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1440
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_258
# %bb.257:
	mv	a2, s6
.LBB3_258:
	add	a1, a2, a1
	addi	a1, a1, 256
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1456
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_260
# %bb.259:
	mv	a2, s6
.LBB3_260:
	add	a1, a2, a1
	addi	a1, a1, 264
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1472
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_262
# %bb.261:
	mv	a2, s6
.LBB3_262:
	add	a1, a2, a1
	addi	a1, a1, 272
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1488
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_264
# %bb.263:
	mv	a2, s6
.LBB3_264:
	add	a1, a2, a1
	addi	a1, a1, 280
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1504
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_266
# %bb.265:
	mv	a2, s6
.LBB3_266:
	add	a1, a2, a1
	addi	a1, a1, 288
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1520
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_268
# %bb.267:
	mv	a2, s6
.LBB3_268:
	add	a1, a2, a1
	addi	a1, a1, 296
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1536
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_270
# %bb.269:
	mv	a2, s6
.LBB3_270:
	add	a1, a2, a1
	addi	a1, a1, 304
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1552
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_272
# %bb.271:
	mv	a2, s6
.LBB3_272:
	add	a1, a2, a1
	addi	a1, a1, 312
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1568
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_274
# %bb.273:
	mv	a2, s6
.LBB3_274:
	add	a1, a2, a1
	addi	a1, a1, 320
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1584
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_276
# %bb.275:
	mv	a2, s6
.LBB3_276:
	add	a1, a2, a1
	addi	a1, a1, 328
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1600
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_278
# %bb.277:
	mv	a2, s6
.LBB3_278:
	add	a1, a2, a1
	addi	a1, a1, 336
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1616
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_280
# %bb.279:
	mv	a2, s6
.LBB3_280:
	add	a1, a2, a1
	addi	a1, a1, 344
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1632
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_282
# %bb.281:
	mv	a2, s6
.LBB3_282:
	add	a1, a2, a1
	addi	a1, a1, 352
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1648
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_284
# %bb.283:
	mv	a2, s6
.LBB3_284:
	add	a1, a2, a1
	addi	a1, a1, 360
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1664
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_286
# %bb.285:
	mv	a2, s6
.LBB3_286:
	add	a1, a2, a1
	addi	a1, a1, 368
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1680
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_288
# %bb.287:
	mv	a2, s6
.LBB3_288:
	add	a1, a2, a1
	addi	a1, a1, 376
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1696
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_290
# %bb.289:
	mv	a2, s6
.LBB3_290:
	add	a1, a2, a1
	addi	a1, a1, 384
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1712
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_292
# %bb.291:
	mv	a2, s6
.LBB3_292:
	add	a1, a2, a1
	addi	a1, a1, 392
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1728
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_294
# %bb.293:
	mv	a2, s6
.LBB3_294:
	add	a1, a2, a1
	addi	a1, a1, 400
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1744
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_296
# %bb.295:
	mv	a2, s6
.LBB3_296:
	add	a1, a2, a1
	addi	a1, a1, 408
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1760
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_298
# %bb.297:
	mv	a2, s6
.LBB3_298:
	add	a1, a2, a1
	addi	a1, a1, 416
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1776
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_300
# %bb.299:
	mv	a2, s6
.LBB3_300:
	add	a1, a2, a1
	addi	a1, a1, 424
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1792
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_302
# %bb.301:
	mv	a2, s6
.LBB3_302:
	add	a1, a2, a1
	addi	a1, a1, 432
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1808
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_304
# %bb.303:
	mv	a2, s6
.LBB3_304:
	add	a1, a2, a1
	addi	a1, a1, 440
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1824
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_306
# %bb.305:
	mv	a2, s6
.LBB3_306:
	add	a1, a2, a1
	addi	a1, a1, 448
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1840
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_308
# %bb.307:
	mv	a2, s6
.LBB3_308:
	add	a1, a2, a1
	addi	a1, a1, 456
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1856
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_310
# %bb.309:
	mv	a2, s6
.LBB3_310:
	add	a1, a2, a1
	addi	a1, a1, 464
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1872
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_312
# %bb.311:
	mv	a2, s6
.LBB3_312:
	add	a1, a2, a1
	addi	a1, a1, 472
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1888
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_314
# %bb.313:
	mv	a2, s6
.LBB3_314:
	add	a1, a2, a1
	addi	a1, a1, 480
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1904
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_316
# %bb.315:
	mv	a2, s6
.LBB3_316:
	add	a1, a2, a1
	addi	a1, a1, 488
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1920
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_318
# %bb.317:
	mv	a2, s6
.LBB3_318:
	add	a1, a2, a1
	addi	a1, a1, 496
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1936
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_320
# %bb.319:
	mv	a2, s6
.LBB3_320:
	add	a1, a2, a1
	addi	a1, a1, 504
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1952
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_322
# %bb.321:
	mv	a2, s6
.LBB3_322:
	add	a1, a2, a1
	addi	a1, a1, 512
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1968
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_324
# %bb.323:
	mv	a2, s6
.LBB3_324:
	add	a1, a2, a1
	addi	a1, a1, 520
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 1984
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_326
# %bb.325:
	mv	a2, s6
.LBB3_326:
	add	a1, a2, a1
	addi	a1, a1, 528
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 2000
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_328
# %bb.327:
	mv	a2, s6
.LBB3_328:
	add	a1, a2, a1
	addi	a1, a1, 536
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 2016
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_330
# %bb.329:
	mv	a2, s6
.LBB3_330:
	add	a1, a2, a1
	addi	a1, a1, 544
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s0, 2032
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_332
# %bb.331:
	mv	a2, s6
.LBB3_332:
	add	a1, a2, a1
	addi	a1, a1, 552
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	s7, s0, 2047
	addi	a0, s7, 1
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_334
# %bb.333:
	mv	a2, s6
.LBB3_334:
	add	a1, a2, a1
	addi	a1, a1, 560
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 17
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_336
# %bb.335:
	mv	a2, s6
.LBB3_336:
	add	a1, a2, a1
	addi	a1, a1, 568
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 33
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_338
# %bb.337:
	mv	a2, s6
.LBB3_338:
	add	a1, a2, a1
	addi	a1, a1, 576
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 49
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_340
# %bb.339:
	mv	a2, s6
.LBB3_340:
	add	a1, a2, a1
	addi	a1, a1, 584
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 65
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_342
# %bb.341:
	mv	a2, s6
.LBB3_342:
	add	a1, a2, a1
	addi	a1, a1, 592
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 81
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_344
# %bb.343:
	mv	a2, s6
.LBB3_344:
	add	a1, a2, a1
	addi	a1, a1, 600
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 97
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_346
# %bb.345:
	mv	a2, s6
.LBB3_346:
	add	a1, a2, a1
	addi	a1, a1, 608
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 113
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_348
# %bb.347:
	mv	a2, s6
.LBB3_348:
	add	a1, a2, a1
	addi	a1, a1, 616
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 129
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_350
# %bb.349:
	mv	a2, s6
.LBB3_350:
	add	a1, a2, a1
	addi	a1, a1, 624
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 145
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_352
# %bb.351:
	mv	a2, s6
.LBB3_352:
	add	a1, a2, a1
	addi	a1, a1, 632
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 161
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_354
# %bb.353:
	mv	a2, s6
.LBB3_354:
	add	a1, a2, a1
	addi	a1, a1, 640
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 177
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_356
# %bb.355:
	mv	a2, s6
.LBB3_356:
	add	a1, a2, a1
	addi	a1, a1, 648
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 193
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_358
# %bb.357:
	mv	a2, s6
.LBB3_358:
	add	a1, a2, a1
	addi	a1, a1, 656
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 209
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_360
# %bb.359:
	mv	a2, s6
.LBB3_360:
	add	a1, a2, a1
	addi	a1, a1, 664
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 225
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_362
# %bb.361:
	mv	a2, s6
.LBB3_362:
	add	a1, a2, a1
	addi	a1, a1, 672
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 241
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_364
# %bb.363:
	mv	a2, s6
.LBB3_364:
	add	a1, a2, a1
	addi	a1, a1, 680
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 257
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_366
# %bb.365:
	mv	a2, s6
.LBB3_366:
	add	a1, a2, a1
	addi	a1, a1, 688
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 273
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_368
# %bb.367:
	mv	a2, s6
.LBB3_368:
	add	a1, a2, a1
	addi	a1, a1, 696
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 289
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_370
# %bb.369:
	mv	a2, s6
.LBB3_370:
	add	a1, a2, a1
	addi	a1, a1, 704
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 305
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_372
# %bb.371:
	mv	a2, s6
.LBB3_372:
	add	a1, a2, a1
	addi	a1, a1, 712
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 321
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_374
# %bb.373:
	mv	a2, s6
.LBB3_374:
	add	a1, a2, a1
	addi	a1, a1, 720
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 337
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_376
# %bb.375:
	mv	a2, s6
.LBB3_376:
	add	a1, a2, a1
	addi	a1, a1, 728
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 353
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_378
# %bb.377:
	mv	a2, s6
.LBB3_378:
	add	a1, a2, a1
	addi	a1, a1, 736
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 369
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_380
# %bb.379:
	mv	a2, s6
.LBB3_380:
	add	a1, a2, a1
	addi	a1, a1, 744
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 385
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_382
# %bb.381:
	mv	a2, s6
.LBB3_382:
	add	a1, a2, a1
	addi	a1, a1, 752
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 401
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_384
# %bb.383:
	mv	a2, s6
.LBB3_384:
	add	a1, a2, a1
	addi	a1, a1, 760
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 417
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_386
# %bb.385:
	mv	a2, s6
.LBB3_386:
	add	a1, a2, a1
	addi	a1, a1, 768
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 433
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_388
# %bb.387:
	mv	a2, s6
.LBB3_388:
	add	a1, a2, a1
	addi	a1, a1, 776
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 449
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_390
# %bb.389:
	mv	a2, s6
.LBB3_390:
	add	a1, a2, a1
	addi	a1, a1, 784
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 465
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_392
# %bb.391:
	mv	a2, s6
.LBB3_392:
	add	a1, a2, a1
	addi	a1, a1, 792
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 481
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_394
# %bb.393:
	mv	a2, s6
.LBB3_394:
	add	a1, a2, a1
	addi	a1, a1, 800
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 497
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_396
# %bb.395:
	mv	a2, s6
.LBB3_396:
	add	a1, a2, a1
	addi	a1, a1, 808
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 513
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_398
# %bb.397:
	mv	a2, s6
.LBB3_398:
	add	a1, a2, a1
	addi	a1, a1, 816
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 529
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_400
# %bb.399:
	mv	a2, s6
.LBB3_400:
	add	a1, a2, a1
	addi	a1, a1, 824
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 545
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_402
# %bb.401:
	mv	a2, s6
.LBB3_402:
	add	a1, a2, a1
	addi	a1, a1, 832
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 561
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_404
# %bb.403:
	mv	a2, s6
.LBB3_404:
	add	a1, a2, a1
	addi	a1, a1, 840
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 577
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_406
# %bb.405:
	mv	a2, s6
.LBB3_406:
	add	a1, a2, a1
	addi	a1, a1, 848
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 593
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_408
# %bb.407:
	mv	a2, s6
.LBB3_408:
	add	a1, a2, a1
	addi	a1, a1, 856
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 609
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_410
# %bb.409:
	mv	a2, s6
.LBB3_410:
	add	a1, a2, a1
	addi	a1, a1, 864
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 625
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_412
# %bb.411:
	mv	a2, s6
.LBB3_412:
	add	a1, a2, a1
	addi	a1, a1, 872
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 641
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_414
# %bb.413:
	mv	a2, s6
.LBB3_414:
	add	a1, a2, a1
	addi	a1, a1, 880
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 657
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_416
# %bb.415:
	mv	a2, s6
.LBB3_416:
	add	a1, a2, a1
	addi	a1, a1, 888
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 673
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_418
# %bb.417:
	mv	a2, s6
.LBB3_418:
	add	a1, a2, a1
	addi	a1, a1, 896
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 689
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_420
# %bb.419:
	mv	a2, s6
.LBB3_420:
	add	a1, a2, a1
	addi	a1, a1, 904
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 705
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_422
# %bb.421:
	mv	a2, s6
.LBB3_422:
	add	a1, a2, a1
	addi	a1, a1, 912
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 721
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_424
# %bb.423:
	mv	a2, s6
.LBB3_424:
	add	a1, a2, a1
	addi	a1, a1, 920
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 737
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_426
# %bb.425:
	mv	a2, s6
.LBB3_426:
	add	a1, a2, a1
	addi	a1, a1, 928
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 753
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_428
# %bb.427:
	mv	a2, s6
.LBB3_428:
	add	a1, a2, a1
	addi	a1, a1, 936
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 769
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_430
# %bb.429:
	mv	a2, s6
.LBB3_430:
	add	a1, a2, a1
	addi	a1, a1, 944
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 785
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_432
# %bb.431:
	mv	a2, s6
.LBB3_432:
	add	a1, a2, a1
	addi	a1, a1, 952
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 801
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_434
# %bb.433:
	mv	a2, s6
.LBB3_434:
	add	a1, a2, a1
	addi	a1, a1, 960
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 817
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_436
# %bb.435:
	mv	a2, s6
.LBB3_436:
	add	a1, a2, a1
	addi	a1, a1, 968
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 833
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_438
# %bb.437:
	mv	a2, s6
.LBB3_438:
	add	a1, a2, a1
	addi	a1, a1, 976
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 849
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_440
# %bb.439:
	mv	a2, s6
.LBB3_440:
	add	a1, a2, a1
	addi	a1, a1, 984
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 865
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_442
# %bb.441:
	mv	a2, s6
.LBB3_442:
	add	a1, a2, a1
	addi	a1, a1, 992
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 881
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_444
# %bb.443:
	mv	a2, s6
.LBB3_444:
	add	a1, a2, a1
	addi	a1, a1, 1000
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 897
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_446
# %bb.445:
	mv	a2, s6
.LBB3_446:
	add	a1, a2, a1
	addi	a1, a1, 1008
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 913
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_448
# %bb.447:
	mv	a2, s6
.LBB3_448:
	add	a1, a2, a1
	addi	a1, a1, 1016
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 929
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_450
# %bb.449:
	mv	a2, s6
.LBB3_450:
	add	a1, a2, a1
	addi	a1, a1, 1024
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 945
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_452
# %bb.451:
	mv	a2, s6
.LBB3_452:
	add	a1, a2, a1
	addi	a1, a1, 1032
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 961
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_454
# %bb.453:
	mv	a2, s6
.LBB3_454:
	add	a1, a2, a1
	addi	a1, a1, 1040
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 977
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_456
# %bb.455:
	mv	a2, s6
.LBB3_456:
	add	a1, a2, a1
	addi	a1, a1, 1048
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 993
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_458
# %bb.457:
	mv	a2, s6
.LBB3_458:
	add	a1, a2, a1
	addi	a1, a1, 1056
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1009
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_460
# %bb.459:
	mv	a2, s6
.LBB3_460:
	add	a1, a2, a1
	addi	a1, a1, 1064
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1025
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_462
# %bb.461:
	mv	a2, s6
.LBB3_462:
	add	a1, a2, a1
	addi	a1, a1, 1072
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1041
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_464
# %bb.463:
	mv	a2, s6
.LBB3_464:
	add	a1, a2, a1
	addi	a1, a1, 1080
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1057
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_466
# %bb.465:
	mv	a2, s6
.LBB3_466:
	add	a1, a2, a1
	addi	a1, a1, 1088
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1073
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_468
# %bb.467:
	mv	a2, s6
.LBB3_468:
	add	a1, a2, a1
	addi	a1, a1, 1096
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1089
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_470
# %bb.469:
	mv	a2, s6
.LBB3_470:
	add	a1, a2, a1
	addi	a1, a1, 1104
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1105
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_472
# %bb.471:
	mv	a2, s6
.LBB3_472:
	add	a1, a2, a1
	addi	a1, a1, 1112
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1121
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_474
# %bb.473:
	mv	a2, s6
.LBB3_474:
	add	a1, a2, a1
	addi	a1, a1, 1120
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1137
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_476
# %bb.475:
	mv	a2, s6
.LBB3_476:
	add	a1, a2, a1
	addi	a1, a1, 1128
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1153
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_478
# %bb.477:
	mv	a2, s6
.LBB3_478:
	add	a1, a2, a1
	addi	a1, a1, 1136
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1169
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_480
# %bb.479:
	mv	a2, s6
.LBB3_480:
	add	a1, a2, a1
	addi	a1, a1, 1144
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1185
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_482
# %bb.481:
	mv	a2, s6
.LBB3_482:
	add	a1, a2, a1
	addi	a1, a1, 1152
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1201
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_484
# %bb.483:
	mv	a2, s6
.LBB3_484:
	add	a1, a2, a1
	addi	a1, a1, 1160
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1217
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_486
# %bb.485:
	mv	a2, s6
.LBB3_486:
	add	a1, a2, a1
	addi	a1, a1, 1168
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1233
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_488
# %bb.487:
	mv	a2, s6
.LBB3_488:
	add	a1, a2, a1
	addi	a1, a1, 1176
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1249
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_490
# %bb.489:
	mv	a2, s6
.LBB3_490:
	add	a1, a2, a1
	addi	a1, a1, 1184
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a2, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1265
	mul	a1, a1, s3
	beq	a2, s4, .LBB3_492
# %bb.491:
	mv	s5, s6
.LBB3_492:
	add	a1, s5, a1
	addi	a1, a1, 1192
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	add	a1, a0, s1
	lw	a1, 232(a1)
	lw	a3, 24(a0)
	addi	a0, s7, 1281
	mul	a1, a1, s3
	lui	s5, %hi(INIT_LAST_I)
	addi	s5, s5, %lo(INIT_LAST_I)
	lui	s6, %hi(INIT_LAST_P)
	addi	s6, s6, %lo(INIT_LAST_P)
	mv	a2, s5
	beq	a3, s4, .LBB3_494
# %bb.493:
	mv	a2, s6
.LBB3_494:
	add	a1, a2, a1
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1297
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_496
# %bb.495:
	mv	a2, s6
.LBB3_496:
	add	a1, a2, a1
	addi	a1, a1, 8
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1313
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_498
# %bb.497:
	mv	a2, s6
.LBB3_498:
	add	a1, a2, a1
	addi	a1, a1, 16
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1329
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_500
# %bb.499:
	mv	a2, s6
.LBB3_500:
	add	a1, a2, a1
	addi	a1, a1, 24
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1345
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_502
# %bb.501:
	mv	a2, s6
.LBB3_502:
	add	a1, a2, a1
	addi	a1, a1, 32
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1361
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_504
# %bb.503:
	mv	a2, s6
.LBB3_504:
	add	a1, a2, a1
	addi	a1, a1, 40
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1377
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_506
# %bb.505:
	mv	a2, s6
.LBB3_506:
	add	a1, a2, a1
	addi	a1, a1, 48
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1393
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_508
# %bb.507:
	mv	a2, s6
.LBB3_508:
	add	a1, a2, a1
	addi	a1, a1, 56
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1409
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_510
# %bb.509:
	mv	a2, s6
.LBB3_510:
	add	a1, a2, a1
	addi	a1, a1, 64
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1425
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_512
# %bb.511:
	mv	a2, s6
.LBB3_512:
	add	a1, a2, a1
	addi	a1, a1, 72
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1441
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_514
# %bb.513:
	mv	a2, s6
.LBB3_514:
	add	a1, a2, a1
	addi	a1, a1, 80
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1457
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_516
# %bb.515:
	mv	a2, s6
.LBB3_516:
	add	a1, a2, a1
	addi	a1, a1, 88
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1473
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_518
# %bb.517:
	mv	a2, s6
.LBB3_518:
	add	a1, a2, a1
	addi	a1, a1, 96
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1489
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_520
# %bb.519:
	mv	a2, s6
.LBB3_520:
	add	a1, a2, a1
	addi	a1, a1, 104
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1505
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_522
# %bb.521:
	mv	a2, s6
.LBB3_522:
	add	a1, a2, a1
	addi	a1, a1, 112
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1521
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_524
# %bb.523:
	mv	a2, s6
.LBB3_524:
	add	a1, a2, a1
	addi	a1, a1, 120
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1537
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_526
# %bb.525:
	mv	a2, s6
.LBB3_526:
	add	a1, a2, a1
	addi	a1, a1, 128
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1553
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_528
# %bb.527:
	mv	a2, s6
.LBB3_528:
	add	a1, a2, a1
	addi	a1, a1, 136
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1569
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_530
# %bb.529:
	mv	a2, s6
.LBB3_530:
	add	a1, a2, a1
	addi	a1, a1, 144
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1585
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_532
# %bb.531:
	mv	a2, s6
.LBB3_532:
	add	a1, a2, a1
	addi	a1, a1, 152
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1601
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_534
# %bb.533:
	mv	a2, s6
.LBB3_534:
	add	a1, a2, a1
	addi	a1, a1, 160
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1617
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_536
# %bb.535:
	mv	a2, s6
.LBB3_536:
	add	a1, a2, a1
	addi	a1, a1, 168
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1633
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_538
# %bb.537:
	mv	a2, s6
.LBB3_538:
	add	a1, a2, a1
	addi	a1, a1, 176
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1649
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_540
# %bb.539:
	mv	a2, s6
.LBB3_540:
	add	a1, a2, a1
	addi	a1, a1, 184
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1665
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_542
# %bb.541:
	mv	a2, s6
.LBB3_542:
	add	a1, a2, a1
	addi	a1, a1, 192
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1681
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_544
# %bb.543:
	mv	a2, s6
.LBB3_544:
	add	a1, a2, a1
	addi	a1, a1, 200
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1697
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_546
# %bb.545:
	mv	a2, s6
.LBB3_546:
	add	a1, a2, a1
	addi	a1, a1, 208
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1713
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_548
# %bb.547:
	mv	a2, s6
.LBB3_548:
	add	a1, a2, a1
	addi	a1, a1, 216
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1729
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_550
# %bb.549:
	mv	a2, s6
.LBB3_550:
	add	a1, a2, a1
	addi	a1, a1, 224
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1745
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_552
# %bb.551:
	mv	a2, s6
.LBB3_552:
	add	a1, a2, a1
	addi	a1, a1, 232
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1761
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_554
# %bb.553:
	mv	a2, s6
.LBB3_554:
	add	a1, a2, a1
	addi	a1, a1, 240
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1777
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_556
# %bb.555:
	mv	a2, s6
.LBB3_556:
	add	a1, a2, a1
	addi	a1, a1, 248
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1793
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_558
# %bb.557:
	mv	a2, s6
.LBB3_558:
	add	a1, a2, a1
	addi	a1, a1, 256
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1809
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_560
# %bb.559:
	mv	a2, s6
.LBB3_560:
	add	a1, a2, a1
	addi	a1, a1, 264
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1825
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_562
# %bb.561:
	mv	a2, s6
.LBB3_562:
	add	a1, a2, a1
	addi	a1, a1, 272
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1841
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_564
# %bb.563:
	mv	a2, s6
.LBB3_564:
	add	a1, a2, a1
	addi	a1, a1, 280
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1857
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_566
# %bb.565:
	mv	a2, s6
.LBB3_566:
	add	a1, a2, a1
	addi	a1, a1, 288
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1873
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_568
# %bb.567:
	mv	a2, s6
.LBB3_568:
	add	a1, a2, a1
	addi	a1, a1, 296
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1889
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_570
# %bb.569:
	mv	a2, s6
.LBB3_570:
	add	a1, a2, a1
	addi	a1, a1, 304
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1905
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_572
# %bb.571:
	mv	a2, s6
.LBB3_572:
	add	a1, a2, a1
	addi	a1, a1, 312
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1921
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_574
# %bb.573:
	mv	a2, s6
.LBB3_574:
	add	a1, a2, a1
	addi	a1, a1, 320
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1937
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_576
# %bb.575:
	mv	a2, s6
.LBB3_576:
	add	a1, a2, a1
	addi	a1, a1, 328
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1953
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_578
# %bb.577:
	mv	a2, s6
.LBB3_578:
	add	a1, a2, a1
	addi	a1, a1, 336
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1969
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_580
# %bb.579:
	mv	a2, s6
.LBB3_580:
	add	a1, a2, a1
	addi	a1, a1, 344
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 1985
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_582
# %bb.581:
	mv	a2, s6
.LBB3_582:
	add	a1, a2, a1
	addi	a1, a1, 352
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 2001
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_584
# %bb.583:
	mv	a2, s6
.LBB3_584:
	add	a1, a2, a1
	addi	a1, a1, 360
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 2017
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_586
# %bb.585:
	mv	a2, s6
.LBB3_586:
	add	a1, a2, a1
	addi	a1, a1, 368
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addi	a0, s7, 2033
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_588
# %bb.587:
	mv	a2, s6
.LBB3_588:
	add	a1, a2, a1
	addi	a1, a1, 376
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	lui	s7, 1
	add	a0, s0, s7
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_590
# %bb.589:
	mv	a2, s6
.LBB3_590:
	add	a1, a2, a1
	addi	a1, a1, 384
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 16
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_592
# %bb.591:
	mv	a2, s6
.LBB3_592:
	add	a1, a2, a1
	addi	a1, a1, 392
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 32
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_594
# %bb.593:
	mv	a2, s6
.LBB3_594:
	add	a1, a2, a1
	addi	a1, a1, 400
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 48
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_596
# %bb.595:
	mv	a2, s6
.LBB3_596:
	add	a1, a2, a1
	addi	a1, a1, 408
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 64
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_598
# %bb.597:
	mv	a2, s6
.LBB3_598:
	add	a1, a2, a1
	addi	a1, a1, 416
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 80
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_600
# %bb.599:
	mv	a2, s6
.LBB3_600:
	add	a1, a2, a1
	addi	a1, a1, 424
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 96
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_602
# %bb.601:
	mv	a2, s6
.LBB3_602:
	add	a1, a2, a1
	addi	a1, a1, 432
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 112
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_604
# %bb.603:
	mv	a2, s6
.LBB3_604:
	add	a1, a2, a1
	addi	a1, a1, 440
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 128
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_606
# %bb.605:
	mv	a2, s6
.LBB3_606:
	add	a1, a2, a1
	addi	a1, a1, 448
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 144
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_608
# %bb.607:
	mv	a2, s6
.LBB3_608:
	add	a1, a2, a1
	addi	a1, a1, 456
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 160
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_610
# %bb.609:
	mv	a2, s6
.LBB3_610:
	add	a1, a2, a1
	addi	a1, a1, 464
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 176
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_612
# %bb.611:
	mv	a2, s6
.LBB3_612:
	add	a1, a2, a1
	addi	a1, a1, 472
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 192
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_614
# %bb.613:
	mv	a2, s6
.LBB3_614:
	add	a1, a2, a1
	addi	a1, a1, 480
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 208
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_616
# %bb.615:
	mv	a2, s6
.LBB3_616:
	add	a1, a2, a1
	addi	a1, a1, 488
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 224
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_618
# %bb.617:
	mv	a2, s6
.LBB3_618:
	add	a1, a2, a1
	addi	a1, a1, 496
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 240
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_620
# %bb.619:
	mv	a2, s6
.LBB3_620:
	add	a1, a2, a1
	addi	a1, a1, 504
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	li	a0, 17
	slli	a0, a0, 8
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_622
# %bb.621:
	mv	a2, s6
.LBB3_622:
	add	a1, a2, a1
	addi	a1, a1, 512
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 272
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_624
# %bb.623:
	mv	a2, s6
.LBB3_624:
	add	a1, a2, a1
	addi	a1, a1, 520
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 288
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_626
# %bb.625:
	mv	a2, s6
.LBB3_626:
	add	a1, a2, a1
	addi	a1, a1, 528
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 304
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_628
# %bb.627:
	mv	a2, s6
.LBB3_628:
	add	a1, a2, a1
	addi	a1, a1, 536
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 320
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_630
# %bb.629:
	mv	a2, s6
.LBB3_630:
	add	a1, a2, a1
	addi	a1, a1, 544
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 336
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_632
# %bb.631:
	mv	a2, s6
.LBB3_632:
	add	a1, a2, a1
	addi	a1, a1, 552
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 352
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_634
# %bb.633:
	mv	a2, s6
.LBB3_634:
	add	a1, a2, a1
	addi	a1, a1, 560
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 368
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_636
# %bb.635:
	mv	a2, s6
.LBB3_636:
	add	a1, a2, a1
	addi	a1, a1, 568
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 384
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_638
# %bb.637:
	mv	a2, s6
.LBB3_638:
	add	a1, a2, a1
	addi	a1, a1, 576
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 400
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_640
# %bb.639:
	mv	a2, s6
.LBB3_640:
	add	a1, a2, a1
	addi	a1, a1, 584
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 416
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_642
# %bb.641:
	mv	a2, s6
.LBB3_642:
	add	a1, a2, a1
	addi	a1, a1, 592
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 432
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_644
# %bb.643:
	mv	a2, s6
.LBB3_644:
	add	a1, a2, a1
	addi	a1, a1, 600
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 448
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_646
# %bb.645:
	mv	a2, s6
.LBB3_646:
	add	a1, a2, a1
	addi	a1, a1, 608
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 464
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_648
# %bb.647:
	mv	a2, s6
.LBB3_648:
	add	a1, a2, a1
	addi	a1, a1, 616
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 480
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_650
# %bb.649:
	mv	a2, s6
.LBB3_650:
	add	a1, a2, a1
	addi	a1, a1, 624
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 496
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_652
# %bb.651:
	mv	a2, s6
.LBB3_652:
	add	a1, a2, a1
	addi	a1, a1, 632
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	li	a0, 9
	slli	a0, a0, 9
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_654
# %bb.653:
	mv	a2, s6
.LBB3_654:
	add	a1, a2, a1
	addi	a1, a1, 640
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 528
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_656
# %bb.655:
	mv	a2, s6
.LBB3_656:
	add	a1, a2, a1
	addi	a1, a1, 648
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 544
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_658
# %bb.657:
	mv	a2, s6
.LBB3_658:
	add	a1, a2, a1
	addi	a1, a1, 656
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 560
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_660
# %bb.659:
	mv	a2, s6
.LBB3_660:
	add	a1, a2, a1
	addi	a1, a1, 664
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 576
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_662
# %bb.661:
	mv	a2, s6
.LBB3_662:
	add	a1, a2, a1
	addi	a1, a1, 672
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 592
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_664
# %bb.663:
	mv	a2, s6
.LBB3_664:
	add	a1, a2, a1
	addi	a1, a1, 680
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 608
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_666
# %bb.665:
	mv	a2, s6
.LBB3_666:
	add	a1, a2, a1
	addi	a1, a1, 688
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 624
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_668
# %bb.667:
	mv	a2, s6
.LBB3_668:
	add	a1, a2, a1
	addi	a1, a1, 696
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 640
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_670
# %bb.669:
	mv	a2, s6
.LBB3_670:
	add	a1, a2, a1
	addi	a1, a1, 704
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 656
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_672
# %bb.671:
	mv	a2, s6
.LBB3_672:
	add	a1, a2, a1
	addi	a1, a1, 712
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 672
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_674
# %bb.673:
	mv	a2, s6
.LBB3_674:
	add	a1, a2, a1
	addi	a1, a1, 720
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 688
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_676
# %bb.675:
	mv	a2, s6
.LBB3_676:
	add	a1, a2, a1
	addi	a1, a1, 728
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 704
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_678
# %bb.677:
	mv	a2, s6
.LBB3_678:
	add	a1, a2, a1
	addi	a1, a1, 736
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 720
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_680
# %bb.679:
	mv	a2, s6
.LBB3_680:
	add	a1, a2, a1
	addi	a1, a1, 744
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 736
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_682
# %bb.681:
	mv	a2, s6
.LBB3_682:
	add	a1, a2, a1
	addi	a1, a1, 752
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 752
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_684
# %bb.683:
	mv	a2, s6
.LBB3_684:
	add	a1, a2, a1
	addi	a1, a1, 760
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	li	a0, 19
	slli	a0, a0, 8
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_686
# %bb.685:
	mv	a2, s6
.LBB3_686:
	add	a1, a2, a1
	addi	a1, a1, 768
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 784
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_688
# %bb.687:
	mv	a2, s6
.LBB3_688:
	add	a1, a2, a1
	addi	a1, a1, 776
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 800
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_690
# %bb.689:
	mv	a2, s6
.LBB3_690:
	add	a1, a2, a1
	addi	a1, a1, 784
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 816
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_692
# %bb.691:
	mv	a2, s6
.LBB3_692:
	add	a1, a2, a1
	addi	a1, a1, 792
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 832
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_694
# %bb.693:
	mv	a2, s6
.LBB3_694:
	add	a1, a2, a1
	addi	a1, a1, 800
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 848
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_696
# %bb.695:
	mv	a2, s6
.LBB3_696:
	add	a1, a2, a1
	addi	a1, a1, 808
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 864
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_698
# %bb.697:
	mv	a2, s6
.LBB3_698:
	add	a1, a2, a1
	addi	a1, a1, 816
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 880
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_700
# %bb.699:
	mv	a2, s6
.LBB3_700:
	add	a1, a2, a1
	addi	a1, a1, 824
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 896
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_702
# %bb.701:
	mv	a2, s6
.LBB3_702:
	add	a1, a2, a1
	addi	a1, a1, 832
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 912
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_704
# %bb.703:
	mv	a2, s6
.LBB3_704:
	add	a1, a2, a1
	addi	a1, a1, 840
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 928
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_706
# %bb.705:
	mv	a2, s6
.LBB3_706:
	add	a1, a2, a1
	addi	a1, a1, 848
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 944
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_708
# %bb.707:
	mv	a2, s6
.LBB3_708:
	add	a1, a2, a1
	addi	a1, a1, 856
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 960
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_710
# %bb.709:
	mv	a2, s6
.LBB3_710:
	add	a1, a2, a1
	addi	a1, a1, 864
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 976
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_712
# %bb.711:
	mv	a2, s6
.LBB3_712:
	add	a1, a2, a1
	addi	a1, a1, 872
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 992
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_714
# %bb.713:
	mv	a2, s6
.LBB3_714:
	add	a1, a2, a1
	addi	a1, a1, 880
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 1008
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_716
# %bb.715:
	mv	a2, s6
.LBB3_716:
	add	a1, a2, a1
	addi	a1, a1, 888
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	li	a0, 5
	slli	a0, a0, 10
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_718
# %bb.717:
	mv	a2, s6
.LBB3_718:
	add	a1, a2, a1
	addi	a1, a1, 896
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 1040
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_720
# %bb.719:
	mv	a2, s6
.LBB3_720:
	add	a1, a2, a1
	addi	a1, a1, 904
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 1056
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_722
# %bb.721:
	mv	a2, s6
.LBB3_722:
	add	a1, a2, a1
	addi	a1, a1, 912
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 1072
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_724
# %bb.723:
	mv	a2, s6
.LBB3_724:
	add	a1, a2, a1
	addi	a1, a1, 920
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 1088
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_726
# %bb.725:
	mv	a2, s6
.LBB3_726:
	add	a1, a2, a1
	addi	a1, a1, 928
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 1104
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_728
# %bb.727:
	mv	a2, s6
.LBB3_728:
	add	a1, a2, a1
	addi	a1, a1, 936
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 1120
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_730
# %bb.729:
	mv	a2, s6
.LBB3_730:
	add	a1, a2, a1
	addi	a1, a1, 944
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 1136
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_732
# %bb.731:
	mv	a2, s6
.LBB3_732:
	add	a1, a2, a1
	addi	a1, a1, 952
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 1152
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_734
# %bb.733:
	mv	a2, s6
.LBB3_734:
	add	a1, a2, a1
	addi	a1, a1, 960
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 1168
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_736
# %bb.735:
	mv	a2, s6
.LBB3_736:
	add	a1, a2, a1
	addi	a1, a1, 968
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 1184
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_738
# %bb.737:
	mv	a2, s6
.LBB3_738:
	add	a1, a2, a1
	addi	a1, a1, 976
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 1200
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_740
# %bb.739:
	mv	a2, s6
.LBB3_740:
	add	a1, a2, a1
	addi	a1, a1, 984
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 1216
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_742
# %bb.741:
	mv	a2, s6
.LBB3_742:
	add	a1, a2, a1
	addi	a1, a1, 992
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 1232
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_744
# %bb.743:
	mv	a2, s6
.LBB3_744:
	add	a1, a2, a1
	addi	a1, a1, 1000
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 1248
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_746
# %bb.745:
	mv	a2, s6
.LBB3_746:
	add	a1, a2, a1
	addi	a1, a1, 1008
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 1264
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_748
# %bb.747:
	mv	a2, s6
.LBB3_748:
	add	a1, a2, a1
	addi	a1, a1, 1016
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	li	a0, 21
	slli	a0, a0, 8
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_750
# %bb.749:
	mv	a2, s6
.LBB3_750:
	add	a1, a2, a1
	addi	a1, a1, 1024
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 1296
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_752
# %bb.751:
	mv	a2, s6
.LBB3_752:
	add	a1, a2, a1
	addi	a1, a1, 1032
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 1312
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_754
# %bb.753:
	mv	a2, s6
.LBB3_754:
	add	a1, a2, a1
	addi	a1, a1, 1040
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 1328
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_756
# %bb.755:
	mv	a2, s6
.LBB3_756:
	add	a1, a2, a1
	addi	a1, a1, 1048
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 1344
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_758
# %bb.757:
	mv	a2, s6
.LBB3_758:
	add	a1, a2, a1
	addi	a1, a1, 1056
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 1360
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_760
# %bb.759:
	mv	a2, s6
.LBB3_760:
	add	a1, a2, a1
	addi	a1, a1, 1064
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 1376
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_762
# %bb.761:
	mv	a2, s6
.LBB3_762:
	add	a1, a2, a1
	addi	a1, a1, 1072
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 1392
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_764
# %bb.763:
	mv	a2, s6
.LBB3_764:
	add	a1, a2, a1
	addi	a1, a1, 1080
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 1408
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_766
# %bb.765:
	mv	a2, s6
.LBB3_766:
	add	a1, a2, a1
	addi	a1, a1, 1088
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 1424
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_768
# %bb.767:
	mv	a2, s6
.LBB3_768:
	add	a1, a2, a1
	addi	a1, a1, 1096
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 1440
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_770
# %bb.769:
	mv	a2, s6
.LBB3_770:
	add	a1, a2, a1
	addi	a1, a1, 1104
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 1456
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_772
# %bb.771:
	mv	a2, s6
.LBB3_772:
	add	a1, a2, a1
	addi	a1, a1, 1112
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 1472
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_774
# %bb.773:
	mv	a2, s6
.LBB3_774:
	add	a1, a2, a1
	addi	a1, a1, 1120
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 1488
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_776
# %bb.775:
	mv	a2, s6
.LBB3_776:
	add	a1, a2, a1
	addi	a1, a1, 1128
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 1504
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_778
# %bb.777:
	mv	a2, s6
.LBB3_778:
	add	a1, a2, a1
	addi	a1, a1, 1136
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 1520
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_780
# %bb.779:
	mv	a2, s6
.LBB3_780:
	add	a1, a2, a1
	addi	a1, a1, 1144
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	li	a0, 11
	slli	a0, a0, 9
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_782
# %bb.781:
	mv	a2, s6
.LBB3_782:
	add	a1, a2, a1
	addi	a1, a1, 1152
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 1552
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_784
# %bb.783:
	mv	a2, s6
.LBB3_784:
	add	a1, a2, a1
	addi	a1, a1, 1160
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 1568
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_786
# %bb.785:
	mv	a2, s6
.LBB3_786:
	add	a1, a2, a1
	addi	a1, a1, 1168
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 1584
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_788
# %bb.787:
	mv	a2, s6
.LBB3_788:
	add	a1, a2, a1
	addi	a1, a1, 1176
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a3, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 1600
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s5
	beq	a3, s4, .LBB3_790
# %bb.789:
	mv	a2, s6
.LBB3_790:
	add	a1, a2, a1
	addi	a1, a1, 1184
	call	biari_init_context
	ld	a0, %lo(img)(s2)
	lw	a2, 24(a0)
	add	a0, a0, s1
	lw	a1, 232(a0)
	addiw	a0, s7, 1616
	add	a0, s0, a0
	mul	a1, a1, s3
	beq	a2, s4, .LBB3_792
# %bb.791:
	mv	s5, s6
.LBB3_792:
	add	a1, s5, a1
	addi	a1, a1, 1192
	call	biari_init_context
	li	s2, 0
	addiw	s1, s7, 1696
	add	s1, s0, s1
	lui	s3, %hi(img)
	lui	s4, 22
	li	s5, 320
	lui	s6, %hi(INIT_ONE_I)
	addi	s6, s6, %lo(INIT_ONE_I)
	lui	s7, %hi(INIT_ONE_P)
	addi	s7, s7, %lo(INIT_ONE_P)
	li	s8, 2
	li	s9, 400
	j	.LBB3_794
.LBB3_793:                              #   in Loop: Header=BB3_794 Depth=1
	mul	a0, a0, s5
	add	a1, a1, s2
	add	a0, a1, a0
	addi	a1, a0, 32
	mv	a0, s1
	call	biari_init_context
	addi	s2, s2, 40
	addi	s1, s1, 80
	beq	s2, s9, .LBB3_804
.LBB3_794:                              # =>This Inner Loop Header: Depth=1
	ld	a0, %lo(img)(s3)
	lw	a2, 24(a0)
	mv	a1, s6
	beq	a2, s8, .LBB3_796
# %bb.795:                              #   in Loop: Header=BB3_794 Depth=1
	mv	a1, s7
.LBB3_796:                              #   in Loop: Header=BB3_794 Depth=1
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
	beq	a2, s8, .LBB3_798
# %bb.797:                              #   in Loop: Header=BB3_794 Depth=1
	mv	a1, s7
.LBB3_798:                              #   in Loop: Header=BB3_794 Depth=1
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
	beq	a3, s8, .LBB3_800
# %bb.799:                              #   in Loop: Header=BB3_794 Depth=1
	mv	a2, s7
.LBB3_800:                              #   in Loop: Header=BB3_794 Depth=1
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
	beq	a3, s8, .LBB3_802
# %bb.801:                              #   in Loop: Header=BB3_794 Depth=1
	mv	a2, s7
.LBB3_802:                              #   in Loop: Header=BB3_794 Depth=1
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
	beq	a2, s8, .LBB3_793
# %bb.803:                              #   in Loop: Header=BB3_794 Depth=1
	mv	a1, s7
	j	.LBB3_793
.LBB3_804:
	li	s2, 0
	lui	a0, 2
	addiw	s1, a0, -1600
	add	s1, s0, s1
	lui	s3, %hi(img)
	lui	s4, 22
	li	s5, 320
	lui	s6, %hi(INIT_ABS_I)
	addi	s6, s6, %lo(INIT_ABS_I)
	lui	s7, %hi(INIT_ABS_P)
	addi	s7, s7, %lo(INIT_ABS_P)
	li	s8, 2
	li	s9, 400
	j	.LBB3_806
.LBB3_805:                              #   in Loop: Header=BB3_806 Depth=1
	mul	a0, a0, s5
	add	a1, a1, s2
	add	a0, a1, a0
	addi	a1, a0, 32
	mv	a0, s1
	call	biari_init_context
	addi	s2, s2, 40
	addi	s1, s1, 80
	beq	s2, s9, .LBB3_816
.LBB3_806:                              # =>This Inner Loop Header: Depth=1
	ld	a0, %lo(img)(s3)
	lw	a2, 24(a0)
	mv	a1, s6
	beq	a2, s8, .LBB3_808
# %bb.807:                              #   in Loop: Header=BB3_806 Depth=1
	mv	a1, s7
.LBB3_808:                              #   in Loop: Header=BB3_806 Depth=1
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
	beq	a2, s8, .LBB3_810
# %bb.809:                              #   in Loop: Header=BB3_806 Depth=1
	mv	a1, s7
.LBB3_810:                              #   in Loop: Header=BB3_806 Depth=1
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
	beq	a3, s8, .LBB3_812
# %bb.811:                              #   in Loop: Header=BB3_806 Depth=1
	mv	a2, s7
.LBB3_812:                              #   in Loop: Header=BB3_806 Depth=1
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
	beq	a3, s8, .LBB3_814
# %bb.813:                              #   in Loop: Header=BB3_806 Depth=1
	mv	a2, s7
.LBB3_814:                              #   in Loop: Header=BB3_806 Depth=1
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
	beq	a2, s8, .LBB3_805
# %bb.815:                              #   in Loop: Header=BB3_806 Depth=1
	mv	a1, s7
	j	.LBB3_805
.LBB3_816:
	lui	s1, %hi(img)
	ld	a1, %lo(img)(s1)
	lui	s5, 2
	addiw	a0, s5, -864
	lui	s2, 22
	add	a2, a1, s2
	lw	a2, 232(a2)
	add	a0, s0, a0
	lw	a3, 24(a1)
	li	s3, 960
	mul	a1, a2, s3
	lui	s6, %hi(INIT_FLD_MAP_I)
	addi	s6, s6, %lo(INIT_FLD_MAP_I)
	li	s4, 2
	lui	s7, %hi(INIT_FLD_MAP_P)
	addi	s7, s7, %lo(INIT_FLD_MAP_P)
	mv	a2, s6
	beq	a3, s4, .LBB3_818
# %bb.817:
	mv	a2, s7
.LBB3_818:
	add	a1, a2, a1
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -848
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_820
# %bb.819:
	mv	a2, s7
.LBB3_820:
	add	a1, a2, a1
	addi	a1, a1, 8
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -832
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_822
# %bb.821:
	mv	a2, s7
.LBB3_822:
	add	a1, a2, a1
	addi	a1, a1, 16
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -816
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_824
# %bb.823:
	mv	a2, s7
.LBB3_824:
	add	a1, a2, a1
	addi	a1, a1, 24
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -800
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_826
# %bb.825:
	mv	a2, s7
.LBB3_826:
	add	a1, a2, a1
	addi	a1, a1, 32
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -784
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_828
# %bb.827:
	mv	a2, s7
.LBB3_828:
	add	a1, a2, a1
	addi	a1, a1, 40
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	li	a0, 29
	slli	a0, a0, 8
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_830
# %bb.829:
	mv	a2, s7
.LBB3_830:
	add	a1, a2, a1
	addi	a1, a1, 48
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -752
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_832
# %bb.831:
	mv	a2, s7
.LBB3_832:
	add	a1, a2, a1
	addi	a1, a1, 56
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -736
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_834
# %bb.833:
	mv	a2, s7
.LBB3_834:
	add	a1, a2, a1
	addi	a1, a1, 64
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -720
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_836
# %bb.835:
	mv	a2, s7
.LBB3_836:
	add	a1, a2, a1
	addi	a1, a1, 72
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -704
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_838
# %bb.837:
	mv	a2, s7
.LBB3_838:
	add	a1, a2, a1
	addi	a1, a1, 80
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -688
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_840
# %bb.839:
	mv	a2, s7
.LBB3_840:
	add	a1, a2, a1
	addi	a1, a1, 88
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -672
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_842
# %bb.841:
	mv	a2, s7
.LBB3_842:
	add	a1, a2, a1
	addi	a1, a1, 96
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -656
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_844
# %bb.843:
	mv	a2, s7
.LBB3_844:
	add	a1, a2, a1
	addi	a1, a1, 104
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -640
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_846
# %bb.845:
	mv	a2, s7
.LBB3_846:
	add	a1, a2, a1
	addi	a1, a1, 112
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -624
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_848
# %bb.847:
	mv	a2, s7
.LBB3_848:
	add	a1, a2, a1
	addi	a1, a1, 120
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -608
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_850
# %bb.849:
	mv	a2, s7
.LBB3_850:
	add	a1, a2, a1
	addi	a1, a1, 128
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -592
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_852
# %bb.851:
	mv	a2, s7
.LBB3_852:
	add	a1, a2, a1
	addi	a1, a1, 136
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -576
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_854
# %bb.853:
	mv	a2, s7
.LBB3_854:
	add	a1, a2, a1
	addi	a1, a1, 144
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -560
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_856
# %bb.855:
	mv	a2, s7
.LBB3_856:
	add	a1, a2, a1
	addi	a1, a1, 152
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -544
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_858
# %bb.857:
	mv	a2, s7
.LBB3_858:
	add	a1, a2, a1
	addi	a1, a1, 160
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -528
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_860
# %bb.859:
	mv	a2, s7
.LBB3_860:
	add	a1, a2, a1
	addi	a1, a1, 168
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	li	a0, 15
	slli	a0, a0, 9
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_862
# %bb.861:
	mv	a2, s7
.LBB3_862:
	add	a1, a2, a1
	addi	a1, a1, 176
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -496
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_864
# %bb.863:
	mv	a2, s7
.LBB3_864:
	add	a1, a2, a1
	addi	a1, a1, 184
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -480
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_866
# %bb.865:
	mv	a2, s7
.LBB3_866:
	add	a1, a2, a1
	addi	a1, a1, 192
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -464
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_868
# %bb.867:
	mv	a2, s7
.LBB3_868:
	add	a1, a2, a1
	addi	a1, a1, 200
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -448
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_870
# %bb.869:
	mv	a2, s7
.LBB3_870:
	add	a1, a2, a1
	addi	a1, a1, 208
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -432
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_872
# %bb.871:
	mv	a2, s7
.LBB3_872:
	add	a1, a2, a1
	addi	a1, a1, 216
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -416
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_874
# %bb.873:
	mv	a2, s7
.LBB3_874:
	add	a1, a2, a1
	addi	a1, a1, 224
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -400
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_876
# %bb.875:
	mv	a2, s7
.LBB3_876:
	add	a1, a2, a1
	addi	a1, a1, 232
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -384
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_878
# %bb.877:
	mv	a2, s7
.LBB3_878:
	add	a1, a2, a1
	addi	a1, a1, 240
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -368
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_880
# %bb.879:
	mv	a2, s7
.LBB3_880:
	add	a1, a2, a1
	addi	a1, a1, 248
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -352
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_882
# %bb.881:
	mv	a2, s7
.LBB3_882:
	add	a1, a2, a1
	addi	a1, a1, 256
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -336
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_884
# %bb.883:
	mv	a2, s7
.LBB3_884:
	add	a1, a2, a1
	addi	a1, a1, 264
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -320
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_886
# %bb.885:
	mv	a2, s7
.LBB3_886:
	add	a1, a2, a1
	addi	a1, a1, 272
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -304
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_888
# %bb.887:
	mv	a2, s7
.LBB3_888:
	add	a1, a2, a1
	addi	a1, a1, 280
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -288
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_890
# %bb.889:
	mv	a2, s7
.LBB3_890:
	add	a1, a2, a1
	addi	a1, a1, 288
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -272
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_892
# %bb.891:
	mv	a2, s7
.LBB3_892:
	add	a1, a2, a1
	addi	a1, a1, 296
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	li	a0, 31
	slli	a0, a0, 8
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_894
# %bb.893:
	mv	a2, s7
.LBB3_894:
	add	a1, a2, a1
	addi	a1, a1, 304
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -240
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_896
# %bb.895:
	mv	a2, s7
.LBB3_896:
	add	a1, a2, a1
	addi	a1, a1, 312
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -224
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_898
# %bb.897:
	mv	a2, s7
.LBB3_898:
	add	a1, a2, a1
	addi	a1, a1, 320
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -208
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_900
# %bb.899:
	mv	a2, s7
.LBB3_900:
	add	a1, a2, a1
	addi	a1, a1, 328
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -192
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_902
# %bb.901:
	mv	a2, s7
.LBB3_902:
	add	a1, a2, a1
	addi	a1, a1, 336
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -176
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_904
# %bb.903:
	mv	a2, s7
.LBB3_904:
	add	a1, a2, a1
	addi	a1, a1, 344
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -160
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_906
# %bb.905:
	mv	a2, s7
.LBB3_906:
	add	a1, a2, a1
	addi	a1, a1, 352
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -144
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_908
# %bb.907:
	mv	a2, s7
.LBB3_908:
	add	a1, a2, a1
	addi	a1, a1, 360
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -128
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_910
# %bb.909:
	mv	a2, s7
.LBB3_910:
	add	a1, a2, a1
	addi	a1, a1, 368
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -112
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_912
# %bb.911:
	mv	a2, s7
.LBB3_912:
	add	a1, a2, a1
	addi	a1, a1, 376
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -96
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_914
# %bb.913:
	mv	a2, s7
.LBB3_914:
	add	a1, a2, a1
	addi	a1, a1, 384
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -80
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_916
# %bb.915:
	mv	a2, s7
.LBB3_916:
	add	a1, a2, a1
	addi	a1, a1, 392
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -64
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_918
# %bb.917:
	mv	a2, s7
.LBB3_918:
	add	a1, a2, a1
	addi	a1, a1, 400
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -48
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_920
# %bb.919:
	mv	a2, s7
.LBB3_920:
	add	a1, a2, a1
	addi	a1, a1, 408
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -32
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_922
# %bb.921:
	mv	a2, s7
.LBB3_922:
	add	a1, a2, a1
	addi	a1, a1, 416
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -16
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_924
# %bb.923:
	mv	a2, s7
.LBB3_924:
	add	a1, a2, a1
	addi	a1, a1, 424
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	add	a0, s0, s5
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_926
# %bb.925:
	mv	a2, s7
.LBB3_926:
	add	a1, a2, a1
	addi	a1, a1, 432
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 16
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_928
# %bb.927:
	mv	a2, s7
.LBB3_928:
	add	a1, a2, a1
	addi	a1, a1, 440
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 32
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_930
# %bb.929:
	mv	a2, s7
.LBB3_930:
	add	a1, a2, a1
	addi	a1, a1, 448
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 48
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_932
# %bb.931:
	mv	a2, s7
.LBB3_932:
	add	a1, a2, a1
	addi	a1, a1, 456
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 64
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_934
# %bb.933:
	mv	a2, s7
.LBB3_934:
	add	a1, a2, a1
	addi	a1, a1, 464
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 80
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_936
# %bb.935:
	mv	a2, s7
.LBB3_936:
	add	a1, a2, a1
	addi	a1, a1, 472
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 96
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_938
# %bb.937:
	mv	a2, s7
.LBB3_938:
	add	a1, a2, a1
	addi	a1, a1, 480
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 112
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_940
# %bb.939:
	mv	a2, s7
.LBB3_940:
	add	a1, a2, a1
	addi	a1, a1, 488
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 128
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_942
# %bb.941:
	mv	a2, s7
.LBB3_942:
	add	a1, a2, a1
	addi	a1, a1, 496
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 144
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_944
# %bb.943:
	mv	a2, s7
.LBB3_944:
	add	a1, a2, a1
	addi	a1, a1, 504
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 160
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_946
# %bb.945:
	mv	a2, s7
.LBB3_946:
	add	a1, a2, a1
	addi	a1, a1, 512
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 176
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_948
# %bb.947:
	mv	a2, s7
.LBB3_948:
	add	a1, a2, a1
	addi	a1, a1, 520
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 192
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_950
# %bb.949:
	mv	a2, s7
.LBB3_950:
	add	a1, a2, a1
	addi	a1, a1, 528
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 208
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_952
# %bb.951:
	mv	a2, s7
.LBB3_952:
	add	a1, a2, a1
	addi	a1, a1, 536
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 224
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_954
# %bb.953:
	mv	a2, s7
.LBB3_954:
	add	a1, a2, a1
	addi	a1, a1, 544
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 240
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_956
# %bb.955:
	mv	a2, s7
.LBB3_956:
	add	a1, a2, a1
	addi	a1, a1, 552
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 256
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_958
# %bb.957:
	mv	a2, s7
.LBB3_958:
	add	a1, a2, a1
	addi	a1, a1, 560
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 272
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_960
# %bb.959:
	mv	a2, s7
.LBB3_960:
	add	a1, a2, a1
	addi	a1, a1, 568
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 288
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_962
# %bb.961:
	mv	a2, s7
.LBB3_962:
	add	a1, a2, a1
	addi	a1, a1, 576
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 304
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_964
# %bb.963:
	mv	a2, s7
.LBB3_964:
	add	a1, a2, a1
	addi	a1, a1, 584
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 320
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_966
# %bb.965:
	mv	a2, s7
.LBB3_966:
	add	a1, a2, a1
	addi	a1, a1, 592
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 336
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_968
# %bb.967:
	mv	a2, s7
.LBB3_968:
	add	a1, a2, a1
	addi	a1, a1, 600
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 352
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_970
# %bb.969:
	mv	a2, s7
.LBB3_970:
	add	a1, a2, a1
	addi	a1, a1, 608
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 368
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_972
# %bb.971:
	mv	a2, s7
.LBB3_972:
	add	a1, a2, a1
	addi	a1, a1, 616
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 384
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_974
# %bb.973:
	mv	a2, s7
.LBB3_974:
	add	a1, a2, a1
	addi	a1, a1, 624
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 400
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_976
# %bb.975:
	mv	a2, s7
.LBB3_976:
	add	a1, a2, a1
	addi	a1, a1, 632
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 416
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_978
# %bb.977:
	mv	a2, s7
.LBB3_978:
	add	a1, a2, a1
	addi	a1, a1, 640
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 432
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_980
# %bb.979:
	mv	a2, s7
.LBB3_980:
	add	a1, a2, a1
	addi	a1, a1, 648
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 448
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_982
# %bb.981:
	mv	a2, s7
.LBB3_982:
	add	a1, a2, a1
	addi	a1, a1, 656
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 464
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_984
# %bb.983:
	mv	a2, s7
.LBB3_984:
	add	a1, a2, a1
	addi	a1, a1, 664
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 480
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_986
# %bb.985:
	mv	a2, s7
.LBB3_986:
	add	a1, a2, a1
	addi	a1, a1, 672
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 496
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_988
# %bb.987:
	mv	a2, s7
.LBB3_988:
	add	a1, a2, a1
	addi	a1, a1, 680
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	li	a0, 17
	slli	a0, a0, 9
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_990
# %bb.989:
	mv	a2, s7
.LBB3_990:
	add	a1, a2, a1
	addi	a1, a1, 688
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 528
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_992
# %bb.991:
	mv	a2, s7
.LBB3_992:
	add	a1, a2, a1
	addi	a1, a1, 696
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 544
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_994
# %bb.993:
	mv	a2, s7
.LBB3_994:
	add	a1, a2, a1
	addi	a1, a1, 704
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 560
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_996
# %bb.995:
	mv	a2, s7
.LBB3_996:
	add	a1, a2, a1
	addi	a1, a1, 712
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 576
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_998
# %bb.997:
	mv	a2, s7
.LBB3_998:
	add	a1, a2, a1
	addi	a1, a1, 720
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 592
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1000
# %bb.999:
	mv	a2, s7
.LBB3_1000:
	add	a1, a2, a1
	addi	a1, a1, 728
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 608
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1002
# %bb.1001:
	mv	a2, s7
.LBB3_1002:
	add	a1, a2, a1
	addi	a1, a1, 736
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 624
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1004
# %bb.1003:
	mv	a2, s7
.LBB3_1004:
	add	a1, a2, a1
	addi	a1, a1, 744
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 640
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1006
# %bb.1005:
	mv	a2, s7
.LBB3_1006:
	add	a1, a2, a1
	addi	a1, a1, 752
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 656
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1008
# %bb.1007:
	mv	a2, s7
.LBB3_1008:
	add	a1, a2, a1
	addi	a1, a1, 760
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 672
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1010
# %bb.1009:
	mv	a2, s7
.LBB3_1010:
	add	a1, a2, a1
	addi	a1, a1, 768
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 688
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1012
# %bb.1011:
	mv	a2, s7
.LBB3_1012:
	add	a1, a2, a1
	addi	a1, a1, 776
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 704
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1014
# %bb.1013:
	mv	a2, s7
.LBB3_1014:
	add	a1, a2, a1
	addi	a1, a1, 784
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 720
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1016
# %bb.1015:
	mv	a2, s7
.LBB3_1016:
	add	a1, a2, a1
	addi	a1, a1, 792
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 736
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1018
# %bb.1017:
	mv	a2, s7
.LBB3_1018:
	add	a1, a2, a1
	addi	a1, a1, 800
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 752
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1020
# %bb.1019:
	mv	a2, s7
.LBB3_1020:
	add	a1, a2, a1
	addi	a1, a1, 808
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 768
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1022
# %bb.1021:
	mv	a2, s7
.LBB3_1022:
	add	a1, a2, a1
	addi	a1, a1, 816
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 784
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1024
# %bb.1023:
	mv	a2, s7
.LBB3_1024:
	add	a1, a2, a1
	addi	a1, a1, 824
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 800
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1026
# %bb.1025:
	mv	a2, s7
.LBB3_1026:
	add	a1, a2, a1
	addi	a1, a1, 832
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 816
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1028
# %bb.1027:
	mv	a2, s7
.LBB3_1028:
	add	a1, a2, a1
	addi	a1, a1, 840
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 832
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1030
# %bb.1029:
	mv	a2, s7
.LBB3_1030:
	add	a1, a2, a1
	addi	a1, a1, 848
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 848
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1032
# %bb.1031:
	mv	a2, s7
.LBB3_1032:
	add	a1, a2, a1
	addi	a1, a1, 856
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 864
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1034
# %bb.1033:
	mv	a2, s7
.LBB3_1034:
	add	a1, a2, a1
	addi	a1, a1, 864
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 880
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1036
# %bb.1035:
	mv	a2, s7
.LBB3_1036:
	add	a1, a2, a1
	addi	a1, a1, 872
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 896
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1038
# %bb.1037:
	mv	a2, s7
.LBB3_1038:
	add	a1, a2, a1
	addi	a1, a1, 880
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 912
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1040
# %bb.1039:
	mv	a2, s7
.LBB3_1040:
	add	a1, a2, a1
	addi	a1, a1, 888
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 928
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1042
# %bb.1041:
	mv	a2, s7
.LBB3_1042:
	add	a1, a2, a1
	addi	a1, a1, 896
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 944
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1044
# %bb.1043:
	mv	a2, s7
.LBB3_1044:
	add	a1, a2, a1
	addi	a1, a1, 904
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 960
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1046
# %bb.1045:
	mv	a2, s7
.LBB3_1046:
	add	a1, a2, a1
	addi	a1, a1, 912
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 976
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1048
# %bb.1047:
	mv	a2, s7
.LBB3_1048:
	add	a1, a2, a1
	addi	a1, a1, 920
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 992
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1050
# %bb.1049:
	mv	a2, s7
.LBB3_1050:
	add	a1, a2, a1
	addi	a1, a1, 928
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1008
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1052
# %bb.1051:
	mv	a2, s7
.LBB3_1052:
	add	a1, a2, a1
	addi	a1, a1, 936
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	li	a0, 9
	slli	a0, a0, 10
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1054
# %bb.1053:
	mv	a2, s7
.LBB3_1054:
	add	a1, a2, a1
	addi	a1, a1, 944
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1040
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1056
# %bb.1055:
	mv	a2, s7
.LBB3_1056:
	add	a1, a2, a1
	addi	a1, a1, 952
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1056
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1058
# %bb.1057:
	mv	a2, s7
.LBB3_1058:
	add	a1, a2, a1
	addi	a1, a1, 960
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1072
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1060
# %bb.1059:
	mv	a2, s7
.LBB3_1060:
	add	a1, a2, a1
	addi	a1, a1, 968
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1088
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1062
# %bb.1061:
	mv	a2, s7
.LBB3_1062:
	add	a1, a2, a1
	addi	a1, a1, 976
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1104
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1064
# %bb.1063:
	mv	a2, s7
.LBB3_1064:
	add	a1, a2, a1
	addi	a1, a1, 984
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1120
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1066
# %bb.1065:
	mv	a2, s7
.LBB3_1066:
	add	a1, a2, a1
	addi	a1, a1, 992
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1136
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1068
# %bb.1067:
	mv	a2, s7
.LBB3_1068:
	add	a1, a2, a1
	addi	a1, a1, 1000
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1152
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1070
# %bb.1069:
	mv	a2, s7
.LBB3_1070:
	add	a1, a2, a1
	addi	a1, a1, 1008
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1168
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1072
# %bb.1071:
	mv	a2, s7
.LBB3_1072:
	add	a1, a2, a1
	addi	a1, a1, 1016
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1184
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1074
# %bb.1073:
	mv	a2, s7
.LBB3_1074:
	add	a1, a2, a1
	addi	a1, a1, 1024
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1200
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1076
# %bb.1075:
	mv	a2, s7
.LBB3_1076:
	add	a1, a2, a1
	addi	a1, a1, 1032
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1216
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1078
# %bb.1077:
	mv	a2, s7
.LBB3_1078:
	add	a1, a2, a1
	addi	a1, a1, 1040
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1232
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1080
# %bb.1079:
	mv	a2, s7
.LBB3_1080:
	add	a1, a2, a1
	addi	a1, a1, 1048
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1248
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1082
# %bb.1081:
	mv	a2, s7
.LBB3_1082:
	add	a1, a2, a1
	addi	a1, a1, 1056
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1264
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1084
# %bb.1083:
	mv	a2, s7
.LBB3_1084:
	add	a1, a2, a1
	addi	a1, a1, 1064
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1280
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1086
# %bb.1085:
	mv	a2, s7
.LBB3_1086:
	add	a1, a2, a1
	addi	a1, a1, 1072
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1296
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1088
# %bb.1087:
	mv	a2, s7
.LBB3_1088:
	add	a1, a2, a1
	addi	a1, a1, 1080
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1312
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1090
# %bb.1089:
	mv	a2, s7
.LBB3_1090:
	add	a1, a2, a1
	addi	a1, a1, 1088
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1328
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1092
# %bb.1091:
	mv	a2, s7
.LBB3_1092:
	add	a1, a2, a1
	addi	a1, a1, 1096
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1344
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1094
# %bb.1093:
	mv	a2, s7
.LBB3_1094:
	add	a1, a2, a1
	addi	a1, a1, 1104
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1360
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1096
# %bb.1095:
	mv	a2, s7
.LBB3_1096:
	add	a1, a2, a1
	addi	a1, a1, 1112
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1376
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1098
# %bb.1097:
	mv	a2, s7
.LBB3_1098:
	add	a1, a2, a1
	addi	a1, a1, 1120
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1392
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1100
# %bb.1099:
	mv	a2, s7
.LBB3_1100:
	add	a1, a2, a1
	addi	a1, a1, 1128
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1408
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1102
# %bb.1101:
	mv	a2, s7
.LBB3_1102:
	add	a1, a2, a1
	addi	a1, a1, 1136
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1424
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1104
# %bb.1103:
	mv	a2, s7
.LBB3_1104:
	add	a1, a2, a1
	addi	a1, a1, 1144
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1440
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1106
# %bb.1105:
	mv	a2, s7
.LBB3_1106:
	add	a1, a2, a1
	addi	a1, a1, 1152
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1456
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1108
# %bb.1107:
	mv	a2, s7
.LBB3_1108:
	add	a1, a2, a1
	addi	a1, a1, 1160
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1472
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1110
# %bb.1109:
	mv	a2, s7
.LBB3_1110:
	add	a1, a2, a1
	addi	a1, a1, 1168
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1488
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1112
# %bb.1111:
	mv	a2, s7
.LBB3_1112:
	add	a1, a2, a1
	addi	a1, a1, 1176
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1504
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1114
# %bb.1113:
	mv	a2, s7
.LBB3_1114:
	add	a1, a2, a1
	addi	a1, a1, 1184
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a2, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1520
	add	a0, s0, a0
	mul	a1, a1, s3
	beq	a2, s4, .LBB3_1116
# %bb.1115:
	mv	s6, s7
.LBB3_1116:
	add	a1, s6, a1
	addi	a1, a1, 1192
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	li	a1, 19
	add	a2, a0, s2
	lw	a2, 232(a2)
	slli	a1, a1, 9
	lw	a3, 24(a0)
	add	a0, s0, a1
	mul	a1, a2, s3
	lui	s6, %hi(INIT_FLD_LAST_I)
	addi	s6, s6, %lo(INIT_FLD_LAST_I)
	lui	s7, %hi(INIT_FLD_LAST_P)
	addi	s7, s7, %lo(INIT_FLD_LAST_P)
	mv	a2, s6
	beq	a3, s4, .LBB3_1118
# %bb.1117:
	mv	a2, s7
.LBB3_1118:
	add	a1, a2, a1
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1552
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1120
# %bb.1119:
	mv	a2, s7
.LBB3_1120:
	add	a1, a2, a1
	addi	a1, a1, 8
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1568
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1122
# %bb.1121:
	mv	a2, s7
.LBB3_1122:
	add	a1, a2, a1
	addi	a1, a1, 16
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1584
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1124
# %bb.1123:
	mv	a2, s7
.LBB3_1124:
	add	a1, a2, a1
	addi	a1, a1, 24
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1600
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1126
# %bb.1125:
	mv	a2, s7
.LBB3_1126:
	add	a1, a2, a1
	addi	a1, a1, 32
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1616
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1128
# %bb.1127:
	mv	a2, s7
.LBB3_1128:
	add	a1, a2, a1
	addi	a1, a1, 40
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1632
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1130
# %bb.1129:
	mv	a2, s7
.LBB3_1130:
	add	a1, a2, a1
	addi	a1, a1, 48
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1648
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1132
# %bb.1131:
	mv	a2, s7
.LBB3_1132:
	add	a1, a2, a1
	addi	a1, a1, 56
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1664
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1134
# %bb.1133:
	mv	a2, s7
.LBB3_1134:
	add	a1, a2, a1
	addi	a1, a1, 64
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1680
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1136
# %bb.1135:
	mv	a2, s7
.LBB3_1136:
	add	a1, a2, a1
	addi	a1, a1, 72
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1696
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1138
# %bb.1137:
	mv	a2, s7
.LBB3_1138:
	add	a1, a2, a1
	addi	a1, a1, 80
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1712
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1140
# %bb.1139:
	mv	a2, s7
.LBB3_1140:
	add	a1, a2, a1
	addi	a1, a1, 88
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1728
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1142
# %bb.1141:
	mv	a2, s7
.LBB3_1142:
	add	a1, a2, a1
	addi	a1, a1, 96
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1744
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1144
# %bb.1143:
	mv	a2, s7
.LBB3_1144:
	add	a1, a2, a1
	addi	a1, a1, 104
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1760
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1146
# %bb.1145:
	mv	a2, s7
.LBB3_1146:
	add	a1, a2, a1
	addi	a1, a1, 112
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1776
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1148
# %bb.1147:
	mv	a2, s7
.LBB3_1148:
	add	a1, a2, a1
	addi	a1, a1, 120
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1792
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1150
# %bb.1149:
	mv	a2, s7
.LBB3_1150:
	add	a1, a2, a1
	addi	a1, a1, 128
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1808
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1152
# %bb.1151:
	mv	a2, s7
.LBB3_1152:
	add	a1, a2, a1
	addi	a1, a1, 136
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1824
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1154
# %bb.1153:
	mv	a2, s7
.LBB3_1154:
	add	a1, a2, a1
	addi	a1, a1, 144
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1840
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1156
# %bb.1155:
	mv	a2, s7
.LBB3_1156:
	add	a1, a2, a1
	addi	a1, a1, 152
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1856
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1158
# %bb.1157:
	mv	a2, s7
.LBB3_1158:
	add	a1, a2, a1
	addi	a1, a1, 160
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1872
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1160
# %bb.1159:
	mv	a2, s7
.LBB3_1160:
	add	a1, a2, a1
	addi	a1, a1, 168
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1888
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1162
# %bb.1161:
	mv	a2, s7
.LBB3_1162:
	add	a1, a2, a1
	addi	a1, a1, 176
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1904
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1164
# %bb.1163:
	mv	a2, s7
.LBB3_1164:
	add	a1, a2, a1
	addi	a1, a1, 184
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1920
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1166
# %bb.1165:
	mv	a2, s7
.LBB3_1166:
	add	a1, a2, a1
	addi	a1, a1, 192
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1936
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1168
# %bb.1167:
	mv	a2, s7
.LBB3_1168:
	add	a1, a2, a1
	addi	a1, a1, 200
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1952
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1170
# %bb.1169:
	mv	a2, s7
.LBB3_1170:
	add	a1, a2, a1
	addi	a1, a1, 208
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1968
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1172
# %bb.1171:
	mv	a2, s7
.LBB3_1172:
	add	a1, a2, a1
	addi	a1, a1, 216
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 1984
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1174
# %bb.1173:
	mv	a2, s7
.LBB3_1174:
	add	a1, a2, a1
	addi	a1, a1, 224
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 2000
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1176
# %bb.1175:
	mv	a2, s7
.LBB3_1176:
	add	a1, a2, a1
	addi	a1, a1, 232
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 2016
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1178
# %bb.1177:
	mv	a2, s7
.LBB3_1178:
	add	a1, a2, a1
	addi	a1, a1, 240
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, 2032
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1180
# %bb.1179:
	mv	a2, s7
.LBB3_1180:
	add	a1, a2, a1
	addi	a1, a1, 248
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	li	a0, 5
	slli	a0, a0, 11
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1182
# %bb.1181:
	mv	a2, s7
.LBB3_1182:
	add	a1, a2, a1
	addi	a1, a1, 256
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	lui	s5, 3
	addiw	a0, s5, -2032
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1184
# %bb.1183:
	mv	a2, s7
.LBB3_1184:
	add	a1, a2, a1
	addi	a1, a1, 264
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -2016
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1186
# %bb.1185:
	mv	a2, s7
.LBB3_1186:
	add	a1, a2, a1
	addi	a1, a1, 272
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -2000
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1188
# %bb.1187:
	mv	a2, s7
.LBB3_1188:
	add	a1, a2, a1
	addi	a1, a1, 280
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1984
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1190
# %bb.1189:
	mv	a2, s7
.LBB3_1190:
	add	a1, a2, a1
	addi	a1, a1, 288
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1968
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1192
# %bb.1191:
	mv	a2, s7
.LBB3_1192:
	add	a1, a2, a1
	addi	a1, a1, 296
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1952
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1194
# %bb.1193:
	mv	a2, s7
.LBB3_1194:
	add	a1, a2, a1
	addi	a1, a1, 304
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1936
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1196
# %bb.1195:
	mv	a2, s7
.LBB3_1196:
	add	a1, a2, a1
	addi	a1, a1, 312
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1920
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1198
# %bb.1197:
	mv	a2, s7
.LBB3_1198:
	add	a1, a2, a1
	addi	a1, a1, 320
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1904
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1200
# %bb.1199:
	mv	a2, s7
.LBB3_1200:
	add	a1, a2, a1
	addi	a1, a1, 328
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1888
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1202
# %bb.1201:
	mv	a2, s7
.LBB3_1202:
	add	a1, a2, a1
	addi	a1, a1, 336
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1872
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1204
# %bb.1203:
	mv	a2, s7
.LBB3_1204:
	add	a1, a2, a1
	addi	a1, a1, 344
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1856
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1206
# %bb.1205:
	mv	a2, s7
.LBB3_1206:
	add	a1, a2, a1
	addi	a1, a1, 352
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1840
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1208
# %bb.1207:
	mv	a2, s7
.LBB3_1208:
	add	a1, a2, a1
	addi	a1, a1, 360
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1824
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1210
# %bb.1209:
	mv	a2, s7
.LBB3_1210:
	add	a1, a2, a1
	addi	a1, a1, 368
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1808
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1212
# %bb.1211:
	mv	a2, s7
.LBB3_1212:
	add	a1, a2, a1
	addi	a1, a1, 376
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1792
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1214
# %bb.1213:
	mv	a2, s7
.LBB3_1214:
	add	a1, a2, a1
	addi	a1, a1, 384
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1776
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1216
# %bb.1215:
	mv	a2, s7
.LBB3_1216:
	add	a1, a2, a1
	addi	a1, a1, 392
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1760
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1218
# %bb.1217:
	mv	a2, s7
.LBB3_1218:
	add	a1, a2, a1
	addi	a1, a1, 400
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1744
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1220
# %bb.1219:
	mv	a2, s7
.LBB3_1220:
	add	a1, a2, a1
	addi	a1, a1, 408
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1728
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1222
# %bb.1221:
	mv	a2, s7
.LBB3_1222:
	add	a1, a2, a1
	addi	a1, a1, 416
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1712
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1224
# %bb.1223:
	mv	a2, s7
.LBB3_1224:
	add	a1, a2, a1
	addi	a1, a1, 424
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1696
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1226
# %bb.1225:
	mv	a2, s7
.LBB3_1226:
	add	a1, a2, a1
	addi	a1, a1, 432
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1680
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1228
# %bb.1227:
	mv	a2, s7
.LBB3_1228:
	add	a1, a2, a1
	addi	a1, a1, 440
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1664
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1230
# %bb.1229:
	mv	a2, s7
.LBB3_1230:
	add	a1, a2, a1
	addi	a1, a1, 448
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1648
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1232
# %bb.1231:
	mv	a2, s7
.LBB3_1232:
	add	a1, a2, a1
	addi	a1, a1, 456
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1632
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1234
# %bb.1233:
	mv	a2, s7
.LBB3_1234:
	add	a1, a2, a1
	addi	a1, a1, 464
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1616
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1236
# %bb.1235:
	mv	a2, s7
.LBB3_1236:
	add	a1, a2, a1
	addi	a1, a1, 472
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1600
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1238
# %bb.1237:
	mv	a2, s7
.LBB3_1238:
	add	a1, a2, a1
	addi	a1, a1, 480
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1584
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1240
# %bb.1239:
	mv	a2, s7
.LBB3_1240:
	add	a1, a2, a1
	addi	a1, a1, 488
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1568
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1242
# %bb.1241:
	mv	a2, s7
.LBB3_1242:
	add	a1, a2, a1
	addi	a1, a1, 496
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1552
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1244
# %bb.1243:
	mv	a2, s7
.LBB3_1244:
	add	a1, a2, a1
	addi	a1, a1, 504
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	li	a0, 21
	slli	a0, a0, 9
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1246
# %bb.1245:
	mv	a2, s7
.LBB3_1246:
	add	a1, a2, a1
	addi	a1, a1, 512
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1520
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1248
# %bb.1247:
	mv	a2, s7
.LBB3_1248:
	add	a1, a2, a1
	addi	a1, a1, 520
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1504
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1250
# %bb.1249:
	mv	a2, s7
.LBB3_1250:
	add	a1, a2, a1
	addi	a1, a1, 528
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1488
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1252
# %bb.1251:
	mv	a2, s7
.LBB3_1252:
	add	a1, a2, a1
	addi	a1, a1, 536
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1472
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1254
# %bb.1253:
	mv	a2, s7
.LBB3_1254:
	add	a1, a2, a1
	addi	a1, a1, 544
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1456
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1256
# %bb.1255:
	mv	a2, s7
.LBB3_1256:
	add	a1, a2, a1
	addi	a1, a1, 552
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1440
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1258
# %bb.1257:
	mv	a2, s7
.LBB3_1258:
	add	a1, a2, a1
	addi	a1, a1, 560
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1424
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1260
# %bb.1259:
	mv	a2, s7
.LBB3_1260:
	add	a1, a2, a1
	addi	a1, a1, 568
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1408
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1262
# %bb.1261:
	mv	a2, s7
.LBB3_1262:
	add	a1, a2, a1
	addi	a1, a1, 576
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1392
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1264
# %bb.1263:
	mv	a2, s7
.LBB3_1264:
	add	a1, a2, a1
	addi	a1, a1, 584
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1376
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1266
# %bb.1265:
	mv	a2, s7
.LBB3_1266:
	add	a1, a2, a1
	addi	a1, a1, 592
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1360
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1268
# %bb.1267:
	mv	a2, s7
.LBB3_1268:
	add	a1, a2, a1
	addi	a1, a1, 600
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1344
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1270
# %bb.1269:
	mv	a2, s7
.LBB3_1270:
	add	a1, a2, a1
	addi	a1, a1, 608
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1328
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1272
# %bb.1271:
	mv	a2, s7
.LBB3_1272:
	add	a1, a2, a1
	addi	a1, a1, 616
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1312
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1274
# %bb.1273:
	mv	a2, s7
.LBB3_1274:
	add	a1, a2, a1
	addi	a1, a1, 624
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1296
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1276
# %bb.1275:
	mv	a2, s7
.LBB3_1276:
	add	a1, a2, a1
	addi	a1, a1, 632
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1280
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1278
# %bb.1277:
	mv	a2, s7
.LBB3_1278:
	add	a1, a2, a1
	addi	a1, a1, 640
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1264
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1280
# %bb.1279:
	mv	a2, s7
.LBB3_1280:
	add	a1, a2, a1
	addi	a1, a1, 648
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1248
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1282
# %bb.1281:
	mv	a2, s7
.LBB3_1282:
	add	a1, a2, a1
	addi	a1, a1, 656
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1232
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1284
# %bb.1283:
	mv	a2, s7
.LBB3_1284:
	add	a1, a2, a1
	addi	a1, a1, 664
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1216
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1286
# %bb.1285:
	mv	a2, s7
.LBB3_1286:
	add	a1, a2, a1
	addi	a1, a1, 672
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1200
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1288
# %bb.1287:
	mv	a2, s7
.LBB3_1288:
	add	a1, a2, a1
	addi	a1, a1, 680
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1184
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1290
# %bb.1289:
	mv	a2, s7
.LBB3_1290:
	add	a1, a2, a1
	addi	a1, a1, 688
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1168
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1292
# %bb.1291:
	mv	a2, s7
.LBB3_1292:
	add	a1, a2, a1
	addi	a1, a1, 696
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1152
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1294
# %bb.1293:
	mv	a2, s7
.LBB3_1294:
	add	a1, a2, a1
	addi	a1, a1, 704
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1136
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1296
# %bb.1295:
	mv	a2, s7
.LBB3_1296:
	add	a1, a2, a1
	addi	a1, a1, 712
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1120
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1298
# %bb.1297:
	mv	a2, s7
.LBB3_1298:
	add	a1, a2, a1
	addi	a1, a1, 720
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1104
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1300
# %bb.1299:
	mv	a2, s7
.LBB3_1300:
	add	a1, a2, a1
	addi	a1, a1, 728
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1088
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1302
# %bb.1301:
	mv	a2, s7
.LBB3_1302:
	add	a1, a2, a1
	addi	a1, a1, 736
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1072
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1304
# %bb.1303:
	mv	a2, s7
.LBB3_1304:
	add	a1, a2, a1
	addi	a1, a1, 744
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1056
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1306
# %bb.1305:
	mv	a2, s7
.LBB3_1306:
	add	a1, a2, a1
	addi	a1, a1, 752
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1040
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1308
# %bb.1307:
	mv	a2, s7
.LBB3_1308:
	add	a1, a2, a1
	addi	a1, a1, 760
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	li	a0, 11
	slli	a0, a0, 10
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1310
# %bb.1309:
	mv	a2, s7
.LBB3_1310:
	add	a1, a2, a1
	addi	a1, a1, 768
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -1008
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1312
# %bb.1311:
	mv	a2, s7
.LBB3_1312:
	add	a1, a2, a1
	addi	a1, a1, 776
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -992
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1314
# %bb.1313:
	mv	a2, s7
.LBB3_1314:
	add	a1, a2, a1
	addi	a1, a1, 784
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -976
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1316
# %bb.1315:
	mv	a2, s7
.LBB3_1316:
	add	a1, a2, a1
	addi	a1, a1, 792
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -960
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1318
# %bb.1317:
	mv	a2, s7
.LBB3_1318:
	add	a1, a2, a1
	addi	a1, a1, 800
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -944
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1320
# %bb.1319:
	mv	a2, s7
.LBB3_1320:
	add	a1, a2, a1
	addi	a1, a1, 808
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -928
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1322
# %bb.1321:
	mv	a2, s7
.LBB3_1322:
	add	a1, a2, a1
	addi	a1, a1, 816
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -912
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1324
# %bb.1323:
	mv	a2, s7
.LBB3_1324:
	add	a1, a2, a1
	addi	a1, a1, 824
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -896
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1326
# %bb.1325:
	mv	a2, s7
.LBB3_1326:
	add	a1, a2, a1
	addi	a1, a1, 832
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -880
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1328
# %bb.1327:
	mv	a2, s7
.LBB3_1328:
	add	a1, a2, a1
	addi	a1, a1, 840
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -864
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1330
# %bb.1329:
	mv	a2, s7
.LBB3_1330:
	add	a1, a2, a1
	addi	a1, a1, 848
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -848
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1332
# %bb.1331:
	mv	a2, s7
.LBB3_1332:
	add	a1, a2, a1
	addi	a1, a1, 856
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -832
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1334
# %bb.1333:
	mv	a2, s7
.LBB3_1334:
	add	a1, a2, a1
	addi	a1, a1, 864
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -816
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1336
# %bb.1335:
	mv	a2, s7
.LBB3_1336:
	add	a1, a2, a1
	addi	a1, a1, 872
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -800
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1338
# %bb.1337:
	mv	a2, s7
.LBB3_1338:
	add	a1, a2, a1
	addi	a1, a1, 880
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -784
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1340
# %bb.1339:
	mv	a2, s7
.LBB3_1340:
	add	a1, a2, a1
	addi	a1, a1, 888
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -768
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1342
# %bb.1341:
	mv	a2, s7
.LBB3_1342:
	add	a1, a2, a1
	addi	a1, a1, 896
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -752
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1344
# %bb.1343:
	mv	a2, s7
.LBB3_1344:
	add	a1, a2, a1
	addi	a1, a1, 904
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -736
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1346
# %bb.1345:
	mv	a2, s7
.LBB3_1346:
	add	a1, a2, a1
	addi	a1, a1, 912
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -720
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1348
# %bb.1347:
	mv	a2, s7
.LBB3_1348:
	add	a1, a2, a1
	addi	a1, a1, 920
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -704
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1350
# %bb.1349:
	mv	a2, s7
.LBB3_1350:
	add	a1, a2, a1
	addi	a1, a1, 928
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -688
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1352
# %bb.1351:
	mv	a2, s7
.LBB3_1352:
	add	a1, a2, a1
	addi	a1, a1, 936
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -672
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1354
# %bb.1353:
	mv	a2, s7
.LBB3_1354:
	add	a1, a2, a1
	addi	a1, a1, 944
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -656
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1356
# %bb.1355:
	mv	a2, s7
.LBB3_1356:
	add	a1, a2, a1
	addi	a1, a1, 952
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -640
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1358
# %bb.1357:
	mv	a2, s7
.LBB3_1358:
	add	a1, a2, a1
	addi	a1, a1, 960
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -624
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1360
# %bb.1359:
	mv	a2, s7
.LBB3_1360:
	add	a1, a2, a1
	addi	a1, a1, 968
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -608
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1362
# %bb.1361:
	mv	a2, s7
.LBB3_1362:
	add	a1, a2, a1
	addi	a1, a1, 976
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -592
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1364
# %bb.1363:
	mv	a2, s7
.LBB3_1364:
	add	a1, a2, a1
	addi	a1, a1, 984
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -576
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1366
# %bb.1365:
	mv	a2, s7
.LBB3_1366:
	add	a1, a2, a1
	addi	a1, a1, 992
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -560
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1368
# %bb.1367:
	mv	a2, s7
.LBB3_1368:
	add	a1, a2, a1
	addi	a1, a1, 1000
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -544
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1370
# %bb.1369:
	mv	a2, s7
.LBB3_1370:
	add	a1, a2, a1
	addi	a1, a1, 1008
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -528
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1372
# %bb.1371:
	mv	a2, s7
.LBB3_1372:
	add	a1, a2, a1
	addi	a1, a1, 1016
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	li	a0, 23
	slli	a0, a0, 9
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1374
# %bb.1373:
	mv	a2, s7
.LBB3_1374:
	add	a1, a2, a1
	addi	a1, a1, 1024
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -496
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1376
# %bb.1375:
	mv	a2, s7
.LBB3_1376:
	add	a1, a2, a1
	addi	a1, a1, 1032
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -480
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1378
# %bb.1377:
	mv	a2, s7
.LBB3_1378:
	add	a1, a2, a1
	addi	a1, a1, 1040
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -464
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1380
# %bb.1379:
	mv	a2, s7
.LBB3_1380:
	add	a1, a2, a1
	addi	a1, a1, 1048
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -448
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1382
# %bb.1381:
	mv	a2, s7
.LBB3_1382:
	add	a1, a2, a1
	addi	a1, a1, 1056
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -432
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1384
# %bb.1383:
	mv	a2, s7
.LBB3_1384:
	add	a1, a2, a1
	addi	a1, a1, 1064
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -416
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1386
# %bb.1385:
	mv	a2, s7
.LBB3_1386:
	add	a1, a2, a1
	addi	a1, a1, 1072
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -400
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1388
# %bb.1387:
	mv	a2, s7
.LBB3_1388:
	add	a1, a2, a1
	addi	a1, a1, 1080
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -384
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1390
# %bb.1389:
	mv	a2, s7
.LBB3_1390:
	add	a1, a2, a1
	addi	a1, a1, 1088
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -368
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1392
# %bb.1391:
	mv	a2, s7
.LBB3_1392:
	add	a1, a2, a1
	addi	a1, a1, 1096
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -352
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1394
# %bb.1393:
	mv	a2, s7
.LBB3_1394:
	add	a1, a2, a1
	addi	a1, a1, 1104
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -336
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1396
# %bb.1395:
	mv	a2, s7
.LBB3_1396:
	add	a1, a2, a1
	addi	a1, a1, 1112
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -320
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1398
# %bb.1397:
	mv	a2, s7
.LBB3_1398:
	add	a1, a2, a1
	addi	a1, a1, 1120
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -304
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1400
# %bb.1399:
	mv	a2, s7
.LBB3_1400:
	add	a1, a2, a1
	addi	a1, a1, 1128
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -288
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1402
# %bb.1401:
	mv	a2, s7
.LBB3_1402:
	add	a1, a2, a1
	addi	a1, a1, 1136
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -272
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1404
# %bb.1403:
	mv	a2, s7
.LBB3_1404:
	add	a1, a2, a1
	addi	a1, a1, 1144
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -256
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1406
# %bb.1405:
	mv	a2, s7
.LBB3_1406:
	add	a1, a2, a1
	addi	a1, a1, 1152
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -240
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1408
# %bb.1407:
	mv	a2, s7
.LBB3_1408:
	add	a1, a2, a1
	addi	a1, a1, 1160
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -224
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1410
# %bb.1409:
	mv	a2, s7
.LBB3_1410:
	add	a1, a2, a1
	addi	a1, a1, 1168
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -208
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1412
# %bb.1411:
	mv	a2, s7
.LBB3_1412:
	add	a1, a2, a1
	addi	a1, a1, 1176
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a3, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -192
	add	a0, s0, a0
	mul	a1, a1, s3
	mv	a2, s6
	beq	a3, s4, .LBB3_1414
# %bb.1413:
	mv	a2, s7
.LBB3_1414:
	add	a1, a2, a1
	addi	a1, a1, 1184
	call	biari_init_context
	ld	a0, %lo(img)(s1)
	lw	a2, 24(a0)
	add	a0, a0, s2
	lw	a1, 232(a0)
	addiw	a0, s5, -176
	add	a0, s0, a0
	mul	a1, a1, s3
	beq	a2, s4, .LBB3_1416
# %bb.1415:
	mv	s6, s7
.LBB3_1416:
	add	a1, s6, a1
	addi	a1, a1, 1192
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
	ld	s9, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 96
	tail	biari_init_context
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
	addi	sp, sp, -432
	sd	ra, 424(sp)                     # 8-byte Folded Spill
	sd	s0, 416(sp)                     # 8-byte Folded Spill
	sd	s1, 408(sp)                     # 8-byte Folded Spill
	sd	s2, 400(sp)                     # 8-byte Folded Spill
	sd	s3, 392(sp)                     # 8-byte Folded Spill
	sd	s4, 384(sp)                     # 8-byte Folded Spill
	sd	s5, 376(sp)                     # 8-byte Folded Spill
	sd	s6, 368(sp)                     # 8-byte Folded Spill
	sd	s7, 360(sp)                     # 8-byte Folded Spill
	sd	s8, 352(sp)                     # 8-byte Folded Spill
	sd	s9, 344(sp)                     # 8-byte Folded Spill
	sd	s10, 336(sp)                    # 8-byte Folded Spill
	sd	s11, 328(sp)                    # 8-byte Folded Spill
	fsd	fs0, 320(sp)                    # 8-byte Folded Spill
	fsd	fs1, 312(sp)                    # 8-byte Folded Spill
	fsd	fs2, 304(sp)                    # 8-byte Folded Spill
	fsd	fs3, 296(sp)                    # 8-byte Folded Spill
	fsd	fs4, 288(sp)                    # 8-byte Folded Spill
	fsd	fs5, 280(sp)                    # 8-byte Folded Spill
	fsd	fs6, 272(sp)                    # 8-byte Folded Spill
	fsd	fs7, 264(sp)                    # 8-byte Folded Spill
	fsd	fs8, 256(sp)                    # 8-byte Folded Spill
	fsd	fs9, 248(sp)                    # 8-byte Folded Spill
	fsd	fs10, 240(sp)                   # 8-byte Folded Spill
	fsd	fs11, 232(sp)                   # 8-byte Folded Spill
	ld	a4, 40(a2)
	lbu	a5, 34(a2)
	lhu	a3, 32(a2)
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	li	a0, 63
	beqz	a5, .LBB5_2
# %bb.1:
	addi	a3, a3, 64
	j	.LBB5_3
.LBB5_2:
	sub	a3, a0, a3
.LBB5_3:
	lui	a5, %hi(.LCPI5_0)
	fld	ft5, %lo(.LCPI5_0)(a5)
	lui	a5, %hi(.LCPI5_1)
	fld	ft6, %lo(.LCPI5_1)(a5)
	lui	a5, %hi(.LCPI5_2)
	fld	ft1, %lo(.LCPI5_2)(a5)
	fcvt.d.lu	fa5, a4
	fmul.d	fa5, fa5, ft5
	flt.d	a4, ft6, fa5
	fmv.d	fa4, ft1
	bnez	a4, .LBB5_5
# %bb.4:
	fneg.d	fa4, fa5
.LBB5_5:
	ld	a5, 56(a2)
	lbu	a6, 50(a2)
	lhu	a4, 48(a2)
	beqz	a6, .LBB5_7
# %bb.6:
	addi	a4, a4, 64
	j	.LBB5_8
.LBB5_7:
	sub	a4, a0, a4
.LBB5_8:
	fcvt.d.lu	fa5, a5
	fmul.d	fa5, fa5, ft5
	flt.d	a6, ft6, fa5
	li	a5, 127
	fmv.d	fa2, ft1
	bnez	a6, .LBB5_10
# %bb.9:
	fneg.d	fa2, fa5
.LBB5_10:
	ld	a6, 72(a2)
	lbu	t0, 66(a2)
	lhu	a7, 64(a2)
	sub	t4, a5, a3
	sub	t6, a5, a4
	beqz	t0, .LBB5_12
# %bb.11:
	addi	a7, a7, 64
	j	.LBB5_13
.LBB5_12:
	sub	a7, a0, a7
.LBB5_13:
	slli	t0, a3, 3
	lui	a3, %hi(probability)
	addi	a3, a3, %lo(probability)
	slli	t4, t4, 3
	slli	t5, a4, 3
	slli	t6, t6, 3
	lui	a4, %hi(img)
	fcvt.d.lu	fa5, a6
	fmul.d	fa5, fa5, ft5
	flt.d	a6, ft6, fa5
	slli	n1, a7, 3
	fmv.d	fa0, ft1
	bnez	a6, .LBB5_15
# %bb.14:
	fneg.d	fa0, fa5
.LBB5_15:
	lui	a6, 2
	add	t0, a3, t0
	add	t4, a3, t4
	add	t5, a3, t5
	add	t6, a3, t6
	add	n1, a3, n1
	ld	a4, %lo(img)(a4)
	ld	n3, 88(a2)
	lbu	t2, 82(a2)
	lhu	t1, 80(a2)
	sub	a7, a5, a7
	slli	a7, a7, 3
	add	n4, a3, a7
	beqz	t2, .LBB5_17
# %bb.16:
	addi	a7, t1, 64
	j	.LBB5_18
.LBB5_17:
	sub	a7, a0, t1
.LBB5_18:
	addiw	t1, a6, 1544
	addiw	t2, a6, -856
	addi	t3, a2, 2047
	lhu	n2, 1328(a1)
	fld	fa1, 0(t0)
	fld	ft0, 0(t4)
	fld	ft2, 0(t5)
	fld	ft3, 0(t6)
	fld	fa5, 0(n1)
	fld	fa3, 0(n4)
	lw	t0, 24(a4)
	sd	t0, 136(sp)                     # 8-byte Folded Spill
	fcvt.d.lu	ft7, n3
	slli	t0, a7, 3
	add	t0, a3, t0
	fld	ft4, 0(t0)
	fmul.d	ft5, ft7, ft5
	flt.d	t0, ft6, ft5
	lui	n1, 1
	bnez	t0, .LBB5_20
# %bb.19:
	fneg.d	ft1, ft5
.LBB5_20:
	li	t0, 0
	add	t1, a2, t1
	sd	t1, 128(sp)                     # 8-byte Folded Spill
	add	t2, a2, t2
	sd	t2, 120(sp)                     # 8-byte Folded Spill
	addi	t1, t3, 1289
	sd	t1, 112(sp)                     # 8-byte Folded Spill
	addiw	t1, a6, 1784
	addiw	t2, a6, -616
	addiw	t3, n1, -520
	addi	t4, a1, 528
	addi	t5, a1, 816
	addi	t6, a1, 1136
	addi	n3, n2, 64
	sd	n3, 8(sp)                       # 8-byte Folded Spill
	sub	a0, a0, n2
	sd	a0, 104(sp)                     # 8-byte Folded Spill
	fmul.d	fa1, fa4, fa1
	fsd	fa1, 96(sp)                     # 8-byte Folded Spill
	fmul.d	fa4, fa4, ft0
	fsd	fa4, 88(sp)                     # 8-byte Folded Spill
	fmul.d	fa4, fa2, ft2
	fsd	fa4, 80(sp)                     # 8-byte Folded Spill
	fmul.d	fa4, fa2, ft3
	fsd	fa4, 72(sp)                     # 8-byte Folded Spill
	sub	a0, a5, a7
	slli	a0, a0, 3
	add	a0, a3, a0
	fld	fa4, 0(a0)
	fmul.d	fa5, fa0, fa5
	fsd	fa5, 64(sp)                     # 8-byte Folded Spill
	fmul.d	fa5, fa0, fa3
	fsd	fa5, 56(sp)                     # 8-byte Folded Spill
	fmul.d	fa5, ft1, ft4
	fsd	fa5, 48(sp)                     # 8-byte Folded Spill
	fmul.d	fa5, ft1, fa4
	fsd	fa5, 40(sp)                     # 8-byte Folded Spill
	addi	n3, a1, 536
	addi	n4, a1, 680
	addi	n5, a1, 824
	addi	n6, a1, 984
	addi	a0, a1, 1400
	sd	a0, 32(sp)                      # 8-byte Folded Spill
	addi	a0, a2, 936
	sd	a0, 24(sp)                      # 8-byte Folded Spill
	addiw	n9, n1, 1672
	add	n9, a2, n9
	addiw	n10, a6, -1624
	add	n10, a2, n10
	lui	n18, %hi(INIT_MB_TYPE_P+4)
	addi	n18, n18, %lo(INIT_MB_TYPE_P+4)
	lui	a0, %hi(INIT_MB_AFF_P+4)
	addi	a0, a0, %lo(INIT_MB_AFF_P+4)
	sd	a0, 184(sp)                     # 8-byte Folded Spill
	lui	a0, %hi(INIT_MB_AFF_I+4)
	addi	a0, a0, %lo(INIT_MB_AFF_I+4)
	sd	a0, 176(sp)                     # 8-byte Folded Spill
	lui	a0, %hi(INIT_CBP_P+16)
	addi	a0, a0, %lo(INIT_CBP_P+16)
	sd	a0, 168(sp)                     # 8-byte Folded Spill
	lui	a0, %hi(INIT_BCBP_P+16)
	addi	a0, a0, %lo(INIT_BCBP_P+16)
	sd	a0, 160(sp)                     # 8-byte Folded Spill
	lui	n16, %hi(INIT_MAP_P+4)
	addi	n16, n16, %lo(INIT_MAP_P+4)
	lui	n17, %hi(INIT_LAST_P+4)
	addi	n17, n17, %lo(INIT_LAST_P+4)
	lui	a5, %hi(INIT_ONE_P+20)
	addi	a5, a5, %lo(INIT_ONE_P+20)
	lui	n19, %hi(INIT_ABS_P+20)
	addi	n19, n19, %lo(INIT_ABS_P+20)
	lui	n20, %hi(INIT_FLD_MAP_P+4)
	addi	n20, n20, %lo(INIT_FLD_MAP_P+4)
	lui	n21, %hi(INIT_FLD_LAST_P+4)
	addi	n21, n21, %lo(INIT_FLD_LAST_P+4)
	lui	n22, %hi(INIT_B8_TYPE_P)
	addi	n22, n22, %lo(INIT_B8_TYPE_P)
	lui	n23, %hi(INIT_MV_RES_P)
	addi	n23, n23, %lo(INIT_MV_RES_P)
	lui	a0, %hi(.LCPI5_3)
	fld	fa5, %lo(.LCPI5_3)(a0)
	fsd	fa5, 144(sp)                    # 8-byte Folded Spill
	fmv.d.x	ft0, zero
	li	n25, 176
	li	n26, 2
	li	n27, 63
	lui	a0, %hi(.LCPI5_0)
	fld	ft4, %lo(.LCPI5_0)(a0)
	lui	a0, %hi(.LCPI5_1)
	fld	ft5, %lo(.LCPI5_1)(a0)
	lui	n28, %hi(entropy)
	addi	n28, n28, %lo(entropy)
	lui	n29, %hi(.LCPI5_2)
	fld	fs9, %lo(.LCPI5_2)(n29)
	li	n30, 3
	li	n31, 144
	li	s0, 127
	li	s1, 160
	li	s2, 96
	li	s11, 192
	li	s3, 640
	li	s6, 240
	li	s7, 10
	li	a0, 800
	li	ra, 48
	lui	s5, %hi(INIT_REF_NO_P)
	addi	s5, s5, %lo(INIT_REF_NO_P)
	li	s9, 80
	li	s4, 72
	fsd	fs9, 224(sp)                    # 8-byte Folded Spill
	fsd	ft0, 192(sp)                    # 8-byte Folded Spill
.LBB5_21:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_23 Depth 2
                                        #       Child Loop BB5_36 Depth 3
                                        #       Child Loop BB5_26 Depth 3
                                        #     Child Loop BB5_46 Depth 2
                                        #       Child Loop BB5_52 Depth 3
                                        #     Child Loop BB5_105 Depth 2
                                        #       Child Loop BB5_111 Depth 3
                                        #     Child Loop BB5_168 Depth 2
                                        #     Child Loop BB5_294 Depth 2
                                        #     Child Loop BB5_390 Depth 2
                                        #     Child Loop BB5_443 Depth 2
                                        #     Child Loop BB5_496 Depth 2
                                        #       Child Loop BB5_510 Depth 3
                                        #       Child Loop BB5_500 Depth 3
                                        #     Child Loop BB5_519 Depth 2
                                        #       Child Loop BB5_533 Depth 3
                                        #       Child Loop BB5_523 Depth 3
                                        #     Child Loop BB5_542 Depth 2
                                        #     Child Loop BB5_605 Depth 2
                                        #     Child Loop BB5_668 Depth 2
                                        #       Child Loop BB5_682 Depth 3
                                        #       Child Loop BB5_672 Depth 3
                                        #     Child Loop BB5_691 Depth 2
                                        #       Child Loop BB5_705 Depth 3
                                        #       Child Loop BB5_695 Depth 3
	lw	a7, 40(a4)
	li	a6, 0
	mv	n24, t0
	lw	n1, 24(a4)
	sgtz	t0, a7
	neg	t0, t0
	and	a7, t0, a7
	lui	t0, %hi(INIT_MB_TYPE_I+4)
	addi	t0, t0, %lo(INIT_MB_TYPE_I+4)
	sd	n18, 152(sp)                    # 8-byte Folded Spill
	mv	s8, a1
	fmv.d	ft7, ft0
	j	.LBB5_23
.LBB5_22:                               #   in Loop: Header=BB5_23 Depth=2
	addi	a6, a6, 1
	addi	s8, s8, 176
	addi	n18, n18, 88
	addi	t0, t0, 88
	beq	a6, n30, .LBB5_43
.LBB5_23:                               #   Parent Loop BB5_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_36 Depth 3
                                        #       Child Loop BB5_26 Depth 3
	mul	n2, a6, n25
	add	n2, n2, a1
	addi	n2, n2, 176
	bne	n1, n26, .LBB5_33
# %bb.24:                               # %.preheader17
                                        #   in Loop: Header=BB5_23 Depth=2
	mv	n7, t0
	mv	n8, s8
	j	.LBB5_26
.LBB5_25:                               #   in Loop: Header=BB5_26 Depth=3
	slli	n14, n11, 3
	add	n14, a3, n14
	fld	fa4, 0(n14)
	slli	n14, n12, 3
	add	n14, n28, n14
	fld	fa3, 0(n14)
	sub	n11, n13, n11
	slli	n11, n11, 3
	add	n11, a3, n11
	fld	fa2, 0(n11)
	xori	n11, n12, 127
	slli	n11, n11, 3
	add	n11, n28, n11
	fld	fa1, 0(n11)
	fmul.d	fa4, fa5, fa4
	fmadd.d	fa4, fa4, fa3, ft0
	fmul.d	fa5, fa5, fa2
	fmadd.d	fa5, fa5, fa1, fa4
	fadd.d	ft7, ft7, fa5
	addi	n8, n8, 16
	addi	n7, n7, 8
	beq	n8, n2, .LBB5_22
.LBB5_26:                               #   Parent Loop BB5_21 Depth=1
                                        #     Parent Loop BB5_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lbu	n12, 2(n8)
	lhu	n11, 0(n8)
	beqz	n12, .LBB5_28
# %bb.27:                               #   in Loop: Header=BB5_26 Depth=3
	addi	n11, n11, 64
	j	.LBB5_29
.LBB5_28:                               #   in Loop: Header=BB5_26 Depth=3
	sub	n11, n27, n11
.LBB5_29:                               #   in Loop: Header=BB5_26 Depth=3
	lw	n12, -4(n7)
	lw	n13, 0(n7)
	mul	n12, n12, a7
	sraiw	n12, n12, 4
	addw	n12, n12, n13
	sgtz	n13, n12
	neg	n13, n13
	and	n12, n13, n12
	li	n13, 127
	blt	n12, n13, .LBB5_31
# %bb.30:                               #   in Loop: Header=BB5_26 Depth=3
	li	n12, 127
.LBB5_31:                               #   in Loop: Header=BB5_26 Depth=3
	ld	n14, 8(n8)
	fcvt.d.lu	fa5, n14
	fmul.d	fa4, fa5, ft4
	flt.d	n14, ft5, fa4
	fmv.d	fa5, fs9
	bnez	n14, .LBB5_25
# %bb.32:                               #   in Loop: Header=BB5_26 Depth=3
	fneg.d	fa5, fa4
	j	.LBB5_25
.LBB5_33:                               #   in Loop: Header=BB5_23 Depth=2
	mv	n7, n18
	mv	n8, s8
	j	.LBB5_36
.LBB5_34:                               #   in Loop: Header=BB5_36 Depth=3
	fneg.d	fa5, fa5
.LBB5_35:                               #   in Loop: Header=BB5_36 Depth=3
	slli	n14, n11, 3
	add	n14, a3, n14
	fld	fa4, 0(n14)
	slli	n14, n12, 3
	add	n14, n28, n14
	fld	fa3, 0(n14)
	fmul.d	fa4, fa5, fa4
	sub	n11, n13, n11
	slli	n11, n11, 3
	add	n11, a3, n11
	fld	fa2, 0(n11)
	xori	n11, n12, 127
	slli	n11, n11, 3
	add	n11, n28, n11
	fld	fa1, 0(n11)
	fmv.d.x	fa0, zero
	fmadd.d	fa4, fa4, fa3, fa0
	fmul.d	fa5, fa5, fa2
	fmadd.d	fa5, fa5, fa1, fa4
	fadd.d	ft7, ft7, fa5
	addi	n8, n8, 16
	addi	n7, n7, 8
	beq	n8, n2, .LBB5_22
.LBB5_36:                               #   Parent Loop BB5_21 Depth=1
                                        #     Parent Loop BB5_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lbu	n12, 2(n8)
	lhu	n11, 0(n8)
	beqz	n12, .LBB5_38
# %bb.37:                               #   in Loop: Header=BB5_36 Depth=3
	addi	n11, n11, 64
	j	.LBB5_39
.LBB5_38:                               #   in Loop: Header=BB5_36 Depth=3
	sub	n11, n27, n11
.LBB5_39:                               #   in Loop: Header=BB5_36 Depth=3
	lw	n12, -4(n7)
	lw	n13, 0(n7)
	mul	n12, n12, a7
	sraiw	n12, n12, 4
	addw	n12, n12, n13
	sgtz	n13, n12
	neg	n13, n13
	and	n12, n13, n12
	li	n13, 127
	blt	n12, n13, .LBB5_41
# %bb.40:                               #   in Loop: Header=BB5_36 Depth=3
	li	n12, 127
.LBB5_41:                               #   in Loop: Header=BB5_36 Depth=3
	ld	n14, 8(n8)
	fcvt.d.lu	fa5, n14
	fmul.d	fa5, fa5, ft4
	flt.d	n14, ft5, fa5
	beqz	n14, .LBB5_34
# %bb.42:                               #   in Loop: Header=BB5_36 Depth=3
	fld	fa5, %lo(.LCPI5_2)(n29)
	j	.LBB5_35
.LBB5_43:                               #   in Loop: Header=BB5_21 Depth=1
	fld	fa6, 512(n28)
	fld	fa7, 504(n28)
	li	n2, 0
	li	a6, 1
	j	.LBB5_46
.LBB5_44:                               #   in Loop: Header=BB5_46 Depth=2
	fmul.d	fa5, fa5, ft8
	fld	fs11, 192(sp)                   # 8-byte Folded Reload
	fmadd.d	fa5, fa5, fa6, fs11
	fmul.d	fa4, ft8, fa4
	fmadd.d	fa5, fa4, fa7, fa5
	fadd.d	fa5, ft7, fa5
	fmul.d	fa4, fa3, ft9
	fmadd.d	fa4, fa4, fa6, fs11
	fmul.d	fa3, ft9, fs1
	fmadd.d	fa4, fa3, fa7, fa4
	fadd.d	fa5, fa5, fa4
	fmul.d	fa4, fs2, ft10
	fmadd.d	fa4, fa4, fa6, fs11
	fmul.d	fa3, ft10, fs3
	fmadd.d	fa4, fa3, fa7, fa4
	fadd.d	fa5, fa5, fa4
	fmul.d	fa4, fs4, ft11
	fmadd.d	fa4, fa4, fa6, fs11
	fmul.d	fa3, ft11, fs5
	fmadd.d	fa4, fa3, fa7, fa4
	fadd.d	fa5, fa5, fa4
	fmul.d	fa4, fs6, fs0
	fmadd.d	fa4, fa4, fa6, fs11
	fmul.d	fa3, fs0, fs7
	fmadd.d	fa4, fa3, fa7, fa4
	fadd.d	fa5, fa5, fa4
	fmul.d	fa4, fa2, fa1
	fmadd.d	fa4, fa4, fa6, fs11
	fmul.d	fa3, fa1, fa0
	fmadd.d	fa4, fa3, fa7, fa4
	fadd.d	fa5, fa5, fa4
	fmul.d	fa4, ft0, ft1
	fmadd.d	fa4, fa4, fa6, fs11
	fmul.d	fa3, ft1, ft3
	fmadd.d	fa4, fa3, fa7, fa4
	fadd.d	fa5, fa5, fa4
	fmul.d	fa4, ft2, ft6
	fmadd.d	fa4, fa4, fa6, fs11
	fmul.d	fa3, ft6, fs8
	fmadd.d	fa4, fa3, fa7, fa4
	sub	a7, s0, a7
	slli	a7, a7, 3
	add	a7, a3, a7
	fld	fa3, 0(a7)
	fadd.d	fa5, fa5, fa4
	fmul.d	fa4, fs9, fs10
	fmadd.d	fa4, fa4, fa6, fs11
	fmul.d	fa3, fs10, fa3
	fmadd.d	fa4, fa3, fa7, fa4
	fadd.d	ft7, fa5, fa4
	fld	fs9, 224(sp)                    # 8-byte Folded Reload
.LBB5_45:                               #   in Loop: Header=BB5_46 Depth=2
	andi	a7, a6, 1
	li	n2, 1
	li	a6, 0
	beqz	a7, .LBB5_102
.LBB5_46:                               #   Parent Loop BB5_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_52 Depth 3
	mul	n7, n2, n31
	bne	n1, n26, .LBB5_49
# %bb.47:                               #   in Loop: Header=BB5_46 Depth=2
	add	a7, t4, n7
	lbu	n2, 2(a7)
	lhu	t0, 0(a7)
	beqz	n2, .LBB5_59
# %bb.48:                               #   in Loop: Header=BB5_46 Depth=2
	addi	t0, t0, 64
	j	.LBB5_60
.LBB5_49:                               #   in Loop: Header=BB5_46 Depth=2
	lw	a7, 40(a4)
	sgtz	t0, a7
	neg	t0, t0
	and	a7, t0, a7
	add	t0, n3, n7
	mul	n2, n2, s4
	add	n2, n22, n2
	add	n7, n4, n7
	j	.LBB5_52
.LBB5_50:                               #   in Loop: Header=BB5_52 Depth=3
	fneg.d	fa5, fa5
.LBB5_51:                               #   in Loop: Header=BB5_52 Depth=3
	slli	n13, n8, 3
	add	n13, a3, n13
	fld	fa4, 0(n13)
	slli	n13, n11, 3
	add	n13, n28, n13
	fld	fa3, 0(n13)
	fmul.d	fa4, fa5, fa4
	sub	n8, n12, n8
	slli	n8, n8, 3
	add	n8, a3, n8
	fld	fa2, 0(n8)
	xori	n8, n11, 127
	slli	n8, n8, 3
	add	n8, n28, n8
	fld	fa1, 0(n8)
	fmv.d.x	fa0, zero
	fmadd.d	fa4, fa4, fa3, fa0
	fmul.d	fa5, fa5, fa2
	fmadd.d	fa5, fa5, fa1, fa4
	fadd.d	ft7, ft7, fa5
	addi	t0, t0, 16
	addi	n2, n2, 8
	beq	t0, n7, .LBB5_45
.LBB5_52:                               #   Parent Loop BB5_21 Depth=1
                                        #     Parent Loop BB5_46 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lbu	n11, -6(t0)
	lhu	n8, -8(t0)
	beqz	n11, .LBB5_54
# %bb.53:                               #   in Loop: Header=BB5_52 Depth=3
	addi	n8, n8, 64
	j	.LBB5_55
.LBB5_54:                               #   in Loop: Header=BB5_52 Depth=3
	sub	n8, n27, n8
.LBB5_55:                               #   in Loop: Header=BB5_52 Depth=3
	lw	n11, 0(n2)
	lw	n12, 4(n2)
	mul	n11, n11, a7
	sraiw	n11, n11, 4
	addw	n11, n11, n12
	sgtz	n12, n11
	neg	n12, n12
	and	n11, n12, n11
	li	n12, 127
	blt	n11, n12, .LBB5_57
# %bb.56:                               #   in Loop: Header=BB5_52 Depth=3
	li	n11, 127
.LBB5_57:                               #   in Loop: Header=BB5_52 Depth=3
	ld	n13, 0(t0)
	fcvt.d.lu	fa5, n13
	fmul.d	fa5, fa5, ft4
	flt.d	n13, ft5, fa5
	beqz	n13, .LBB5_50
# %bb.58:                               #   in Loop: Header=BB5_52 Depth=3
	fld	fa5, %lo(.LCPI5_2)(n29)
	j	.LBB5_51
.LBB5_59:                               #   in Loop: Header=BB5_46 Depth=2
	sub	t0, n27, t0
.LBB5_60:                               #   in Loop: Header=BB5_46 Depth=2
	ld	n2, 8(a7)
	fcvt.d.lu	fa5, n2
	fmul.d	fa5, fa5, ft4
	flt.d	n2, ft5, fa5
	fmv.d	ft8, fs9
	bnez	n2, .LBB5_62
# %bb.61:                               #   in Loop: Header=BB5_46 Depth=2
	fneg.d	ft8, fa5
.LBB5_62:                               #   in Loop: Header=BB5_46 Depth=2
	lbu	n7, 18(a7)
	lhu	n2, 16(a7)
	beqz	n7, .LBB5_64
# %bb.63:                               #   in Loop: Header=BB5_46 Depth=2
	addi	n2, n2, 64
	j	.LBB5_65
.LBB5_64:                               #   in Loop: Header=BB5_46 Depth=2
	sub	n2, n27, n2
.LBB5_65:                               #   in Loop: Header=BB5_46 Depth=2
	ld	n7, 24(a7)
	fcvt.d.lu	fa5, n7
	fmul.d	fa5, fa5, ft4
	flt.d	n7, ft5, fa5
	fmv.d	ft9, fs9
	bnez	n7, .LBB5_67
# %bb.66:                               #   in Loop: Header=BB5_46 Depth=2
	fneg.d	ft9, fa5
.LBB5_67:                               #   in Loop: Header=BB5_46 Depth=2
	lbu	n8, 34(a7)
	lhu	n7, 32(a7)
	beqz	n8, .LBB5_69
# %bb.68:                               #   in Loop: Header=BB5_46 Depth=2
	addi	n7, n7, 64
	j	.LBB5_70
.LBB5_69:                               #   in Loop: Header=BB5_46 Depth=2
	sub	n7, n27, n7
.LBB5_70:                               #   in Loop: Header=BB5_46 Depth=2
	ld	n8, 40(a7)
	fcvt.d.lu	fa5, n8
	fmul.d	fa5, fa5, ft4
	flt.d	n8, ft5, fa5
	fmv.d	ft10, fs9
	bnez	n8, .LBB5_72
# %bb.71:                               #   in Loop: Header=BB5_46 Depth=2
	fneg.d	ft10, fa5
.LBB5_72:                               #   in Loop: Header=BB5_46 Depth=2
	lbu	n11, 50(a7)
	lhu	n8, 48(a7)
	beqz	n11, .LBB5_74
# %bb.73:                               #   in Loop: Header=BB5_46 Depth=2
	addi	n8, n8, 64
	j	.LBB5_75
.LBB5_74:                               #   in Loop: Header=BB5_46 Depth=2
	sub	n8, n27, n8
.LBB5_75:                               #   in Loop: Header=BB5_46 Depth=2
	ld	n11, 56(a7)
	fcvt.d.lu	fa5, n11
	fmul.d	fa5, fa5, ft4
	flt.d	n11, ft5, fa5
	fmv.d	ft11, fs9
	bnez	n11, .LBB5_77
# %bb.76:                               #   in Loop: Header=BB5_46 Depth=2
	fneg.d	ft11, fa5
.LBB5_77:                               #   in Loop: Header=BB5_46 Depth=2
	lbu	n12, 66(a7)
	lhu	n11, 64(a7)
	beqz	n12, .LBB5_79
# %bb.78:                               #   in Loop: Header=BB5_46 Depth=2
	addi	n11, n11, 64
	j	.LBB5_80
.LBB5_79:                               #   in Loop: Header=BB5_46 Depth=2
	sub	n11, n27, n11
.LBB5_80:                               #   in Loop: Header=BB5_46 Depth=2
	ld	n12, 72(a7)
	fcvt.d.lu	fa5, n12
	fmul.d	fa5, fa5, ft4
	flt.d	n12, ft5, fa5
	fmv.d	fs0, fs9
	bnez	n12, .LBB5_82
# %bb.81:                               #   in Loop: Header=BB5_46 Depth=2
	fneg.d	fs0, fa5
.LBB5_82:                               #   in Loop: Header=BB5_46 Depth=2
	slli	n12, t0, 3
	add	n12, a3, n12
	fld	fa5, 0(n12)
	sub	t0, s0, t0
	slli	t0, t0, 3
	add	t0, a3, t0
	fld	fa4, 0(t0)
	slli	t0, n2, 3
	add	t0, a3, t0
	fld	fa3, 0(t0)
	sub	t0, s0, n2
	slli	t0, t0, 3
	add	t0, a3, t0
	fld	fs1, 0(t0)
	slli	t0, n7, 3
	add	t0, a3, t0
	fld	fs2, 0(t0)
	sub	t0, s0, n7
	slli	t0, t0, 3
	add	t0, a3, t0
	fld	fs3, 0(t0)
	slli	t0, n8, 3
	add	t0, a3, t0
	fld	fs4, 0(t0)
	sub	t0, s0, n8
	slli	t0, t0, 3
	add	t0, a3, t0
	fld	fs5, 0(t0)
	slli	t0, n11, 3
	add	t0, a3, t0
	fld	fs6, 0(t0)
	sub	t0, s0, n11
	slli	t0, t0, 3
	add	t0, a3, t0
	fld	fs7, 0(t0)
	ld	n2, 88(a7)
	lbu	n7, 82(a7)
	lhu	t0, 80(a7)
	beqz	n7, .LBB5_84
# %bb.83:                               #   in Loop: Header=BB5_46 Depth=2
	addi	t0, t0, 64
	j	.LBB5_85
.LBB5_84:                               #   in Loop: Header=BB5_46 Depth=2
	sub	t0, n27, t0
.LBB5_85:                               #   in Loop: Header=BB5_46 Depth=2
	fcvt.d.lu	fa1, n2
	slli	n2, t0, 3
	add	n2, a3, n2
	fld	fa2, 0(n2)
	fmul.d	fa0, fa1, ft4
	flt.d	n2, ft5, fa0
	fmv.d	fa1, fs9
	bnez	n2, .LBB5_87
# %bb.86:                               #   in Loop: Header=BB5_46 Depth=2
	fneg.d	fa1, fa0
.LBB5_87:                               #   in Loop: Header=BB5_46 Depth=2
	sub	t0, s0, t0
	slli	t0, t0, 3
	add	t0, a3, t0
	fld	fa0, 0(t0)
	ld	n2, 104(a7)
	lbu	n7, 98(a7)
	lhu	t0, 96(a7)
	beqz	n7, .LBB5_89
# %bb.88:                               #   in Loop: Header=BB5_46 Depth=2
	addi	t0, t0, 64
	j	.LBB5_90
.LBB5_89:                               #   in Loop: Header=BB5_46 Depth=2
	sub	t0, n27, t0
.LBB5_90:                               #   in Loop: Header=BB5_46 Depth=2
	fcvt.d.lu	ft1, n2
	slli	n2, t0, 3
	add	n2, a3, n2
	fld	ft0, 0(n2)
	fmul.d	ft2, ft1, ft4
	flt.d	n2, ft5, ft2
	fmv.d	ft1, fs9
	bnez	n2, .LBB5_92
# %bb.91:                               #   in Loop: Header=BB5_46 Depth=2
	fneg.d	ft1, ft2
.LBB5_92:                               #   in Loop: Header=BB5_46 Depth=2
	sub	t0, s0, t0
	slli	t0, t0, 3
	add	t0, a3, t0
	fld	ft3, 0(t0)
	ld	n2, 120(a7)
	lbu	n7, 114(a7)
	lhu	t0, 112(a7)
	beqz	n7, .LBB5_94
# %bb.93:                               #   in Loop: Header=BB5_46 Depth=2
	addi	t0, t0, 64
	j	.LBB5_95
.LBB5_94:                               #   in Loop: Header=BB5_46 Depth=2
	sub	t0, n27, t0
.LBB5_95:                               #   in Loop: Header=BB5_46 Depth=2
	fcvt.d.lu	ft6, n2
	slli	n2, t0, 3
	add	n2, a3, n2
	fld	ft2, 0(n2)
	fmul.d	fs8, ft6, ft4
	flt.d	n2, ft5, fs8
	fmv.d	ft6, fs9
	bnez	n2, .LBB5_97
# %bb.96:                               #   in Loop: Header=BB5_46 Depth=2
	fneg.d	ft6, fs8
.LBB5_97:                               #   in Loop: Header=BB5_46 Depth=2
	sub	t0, s0, t0
	slli	t0, t0, 3
	add	t0, a3, t0
	fld	fs8, 0(t0)
	ld	t0, 136(a7)
	lbu	n2, 130(a7)
	lhu	a7, 128(a7)
	beqz	n2, .LBB5_99
# %bb.98:                               #   in Loop: Header=BB5_46 Depth=2
	addi	a7, a7, 64
	j	.LBB5_100
.LBB5_99:                               #   in Loop: Header=BB5_46 Depth=2
	sub	a7, n27, a7
.LBB5_100:                              #   in Loop: Header=BB5_46 Depth=2
	fcvt.d.lu	fs10, t0
	slli	t0, a7, 3
	add	t0, a3, t0
	fld	fs9, 0(t0)
	fmul.d	fs11, fs10, ft4
	flt.d	t0, ft5, fs11
	fld	fs10, 224(sp)                   # 8-byte Folded Reload
	bnez	t0, .LBB5_44
# %bb.101:                              #   in Loop: Header=BB5_46 Depth=2
	fneg.d	fs10, fs11
	j	.LBB5_44
.LBB5_102:                              #   in Loop: Header=BB5_21 Depth=1
	lw	a6, 24(a4)
	fld	fa6, 512(n28)
	fld	fa7, 504(n28)
	li	n2, 0
	li	n1, 1
	j	.LBB5_105
.LBB5_103:                              #   in Loop: Header=BB5_105 Depth=2
	fld	fs4, 208(sp)                    # 8-byte Folded Reload
	fmul.d	fs4, fs4, ft9
	fmul.d	ft9, ft9, fs5
	fmv.d.x	fs5, zero
	fmadd.d	fs4, fs4, fa6, fs5
	fmadd.d	ft9, ft9, fa7, fs4
	fadd.d	ft7, ft7, ft9
	fld	ft9, 216(sp)                    # 8-byte Folded Reload
	fmul.d	ft9, ft9, ft10
	fmul.d	ft10, ft10, fs6
	fmadd.d	ft9, ft9, fa6, fs5
	fmadd.d	ft9, ft10, fa7, ft9
	fadd.d	ft7, ft7, ft9
	fld	ft9, 200(sp)                    # 8-byte Folded Reload
	fmul.d	ft9, ft9, ft11
	fmul.d	ft10, ft11, fs8
	fmadd.d	ft9, ft9, fa6, fs5
	fmadd.d	ft9, ft10, fa7, ft9
	fadd.d	ft7, ft7, ft9
	fmul.d	ft9, fs7, fs0
	fmul.d	ft10, fs0, fs10
	fmadd.d	ft9, ft9, fa6, fs5
	fmadd.d	ft9, ft10, fa7, ft9
	fadd.d	ft7, ft7, ft9
	fmul.d	ft9, fs9, fs1
	fmul.d	ft10, fs1, fs11
	fmadd.d	ft9, ft9, fa6, fs5
	fmadd.d	ft9, ft10, fa7, ft9
	fadd.d	ft7, ft7, ft9
	fmul.d	fa5, fa5, fa4
	fmul.d	fa4, fa4, fa3
	fmadd.d	fa5, fa5, fa6, fs5
	fmadd.d	fa5, fa4, fa7, fa5
	fadd.d	fa5, ft7, fa5
	fmul.d	fa4, fa2, fa1
	fmul.d	fa3, fa1, fa0
	fmadd.d	fa4, fa4, fa6, fs5
	fmadd.d	fa4, fa3, fa7, fa4
	fadd.d	fa5, fa5, fa4
	fmul.d	fa4, ft0, ft1
	fmul.d	fa3, ft1, ft3
	fmadd.d	fa4, fa4, fa6, fs5
	fmadd.d	fa4, fa3, fa7, fa4
	fadd.d	fa5, fa5, fa4
	fmul.d	fa4, ft2, ft6
	fmul.d	fa3, ft6, fs2
	fmadd.d	fa4, fa4, fa6, fs5
	fmadd.d	fa4, fa3, fa7, fa4
	sub	a7, s0, a7
	slli	a7, a7, 3
	add	a7, a3, a7
	fld	fa3, 0(a7)
	fadd.d	fa5, fa5, fa4
	fmul.d	fa4, fs3, ft8
	fmadd.d	fa4, fa4, fa6, fs5
	fmul.d	fa3, ft8, fa3
	fmadd.d	fa4, fa3, fa7, fa4
	fadd.d	ft7, fa5, fa4
	fld	fs9, 224(sp)                    # 8-byte Folded Reload
.LBB5_104:                              #   in Loop: Header=BB5_105 Depth=2
	andi	a7, n1, 1
	li	n2, 1
	li	n1, 0
	beqz	a7, .LBB5_166
.LBB5_105:                              #   Parent Loop BB5_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_111 Depth 3
	mul	n7, n2, s1
	bne	a6, n26, .LBB5_108
# %bb.106:                              #   in Loop: Header=BB5_105 Depth=2
	add	a7, t5, n7
	lbu	n2, 2(a7)
	lhu	t0, 0(a7)
	beqz	n2, .LBB5_118
# %bb.107:                              #   in Loop: Header=BB5_105 Depth=2
	addi	t0, t0, 64
	j	.LBB5_119
.LBB5_108:                              #   in Loop: Header=BB5_105 Depth=2
	lw	a7, 40(a4)
	sgtz	t0, a7
	neg	t0, t0
	and	a7, t0, a7
	add	t0, n5, n7
	mul	n2, n2, s9
	add	n2, n23, n2
	add	n7, n6, n7
	j	.LBB5_111
.LBB5_109:                              #   in Loop: Header=BB5_111 Depth=3
	fneg.d	fa5, fa5
.LBB5_110:                              #   in Loop: Header=BB5_111 Depth=3
	slli	n13, n8, 3
	add	n13, a3, n13
	fld	fa4, 0(n13)
	slli	n13, n11, 3
	add	n13, n28, n13
	fld	fa3, 0(n13)
	fmul.d	fa4, fa5, fa4
	sub	n8, n12, n8
	slli	n8, n8, 3
	add	n8, a3, n8
	fld	fa2, 0(n8)
	xori	n8, n11, 127
	slli	n8, n8, 3
	add	n8, n28, n8
	fld	fa1, 0(n8)
	fmv.d.x	fa0, zero
	fmadd.d	fa4, fa4, fa3, fa0
	fmul.d	fa5, fa5, fa2
	fmadd.d	fa5, fa5, fa1, fa4
	fadd.d	ft7, ft7, fa5
	addi	t0, t0, 16
	addi	n2, n2, 8
	beq	t0, n7, .LBB5_104
.LBB5_111:                              #   Parent Loop BB5_21 Depth=1
                                        #     Parent Loop BB5_105 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lbu	n11, -6(t0)
	lhu	n8, -8(t0)
	beqz	n11, .LBB5_113
# %bb.112:                              #   in Loop: Header=BB5_111 Depth=3
	addi	n8, n8, 64
	j	.LBB5_114
.LBB5_113:                              #   in Loop: Header=BB5_111 Depth=3
	sub	n8, n27, n8
.LBB5_114:                              #   in Loop: Header=BB5_111 Depth=3
	lw	n11, 0(n2)
	lw	n12, 4(n2)
	mul	n11, n11, a7
	sraiw	n11, n11, 4
	addw	n11, n11, n12
	sgtz	n12, n11
	neg	n12, n12
	and	n11, n12, n11
	li	n12, 127
	blt	n11, n12, .LBB5_116
# %bb.115:                              #   in Loop: Header=BB5_111 Depth=3
	li	n11, 127
.LBB5_116:                              #   in Loop: Header=BB5_111 Depth=3
	ld	n13, 0(t0)
	fcvt.d.lu	fa5, n13
	fmul.d	fa5, fa5, ft4
	flt.d	n13, ft5, fa5
	beqz	n13, .LBB5_109
# %bb.117:                              #   in Loop: Header=BB5_111 Depth=3
	fld	fa5, %lo(.LCPI5_2)(n29)
	j	.LBB5_110
.LBB5_118:                              #   in Loop: Header=BB5_105 Depth=2
	sub	t0, n27, t0
.LBB5_119:                              #   in Loop: Header=BB5_105 Depth=2
	ld	n2, 8(a7)
	fld	ft8, %lo(.LCPI5_2)(n29)
	fcvt.d.lu	fa5, n2
	fmul.d	fa5, fa5, ft4
	flt.d	n2, ft5, fa5
	fmv.d	ft9, ft8
	bnez	n2, .LBB5_121
# %bb.120:                              #   in Loop: Header=BB5_105 Depth=2
	fneg.d	ft9, fa5
.LBB5_121:                              #   in Loop: Header=BB5_105 Depth=2
	lbu	n7, 18(a7)
	lhu	n2, 16(a7)
	beqz	n7, .LBB5_123
# %bb.122:                              #   in Loop: Header=BB5_105 Depth=2
	addi	n2, n2, 64
	j	.LBB5_124
.LBB5_123:                              #   in Loop: Header=BB5_105 Depth=2
	sub	n2, n27, n2
.LBB5_124:                              #   in Loop: Header=BB5_105 Depth=2
	ld	n7, 24(a7)
	fcvt.d.lu	fa5, n7
	fmul.d	fa5, fa5, ft4
	flt.d	n7, ft5, fa5
	fmv.d	ft10, ft8
	bnez	n7, .LBB5_126
# %bb.125:                              #   in Loop: Header=BB5_105 Depth=2
	fneg.d	ft10, fa5
.LBB5_126:                              #   in Loop: Header=BB5_105 Depth=2
	lbu	n8, 34(a7)
	lhu	n7, 32(a7)
	beqz	n8, .LBB5_128
# %bb.127:                              #   in Loop: Header=BB5_105 Depth=2
	addi	n7, n7, 64
	j	.LBB5_129
.LBB5_128:                              #   in Loop: Header=BB5_105 Depth=2
	sub	n7, n27, n7
.LBB5_129:                              #   in Loop: Header=BB5_105 Depth=2
	ld	n8, 40(a7)
	fcvt.d.lu	fa5, n8
	fmul.d	fa5, fa5, ft4
	flt.d	n8, ft5, fa5
	fmv.d	ft11, ft8
	bnez	n8, .LBB5_131
# %bb.130:                              #   in Loop: Header=BB5_105 Depth=2
	fneg.d	ft11, fa5
.LBB5_131:                              #   in Loop: Header=BB5_105 Depth=2
	lbu	n11, 50(a7)
	lhu	n8, 48(a7)
	beqz	n11, .LBB5_133
# %bb.132:                              #   in Loop: Header=BB5_105 Depth=2
	addi	n8, n8, 64
	j	.LBB5_134
.LBB5_133:                              #   in Loop: Header=BB5_105 Depth=2
	sub	n8, n27, n8
.LBB5_134:                              #   in Loop: Header=BB5_105 Depth=2
	ld	n11, 56(a7)
	fcvt.d.lu	fa5, n11
	fmul.d	fa5, fa5, ft4
	flt.d	n11, ft5, fa5
	fmv.d	fs0, ft8
	bnez	n11, .LBB5_136
# %bb.135:                              #   in Loop: Header=BB5_105 Depth=2
	fneg.d	fs0, fa5
.LBB5_136:                              #   in Loop: Header=BB5_105 Depth=2
	lbu	n12, 66(a7)
	lhu	n11, 64(a7)
	beqz	n12, .LBB5_138
# %bb.137:                              #   in Loop: Header=BB5_105 Depth=2
	addi	n11, n11, 64
	j	.LBB5_139
.LBB5_138:                              #   in Loop: Header=BB5_105 Depth=2
	sub	n11, n27, n11
.LBB5_139:                              #   in Loop: Header=BB5_105 Depth=2
	ld	n12, 72(a7)
	fcvt.d.lu	fa5, n12
	fmul.d	fa5, fa5, ft4
	flt.d	n12, ft5, fa5
	fmv.d	fs1, ft8
	bnez	n12, .LBB5_141
# %bb.140:                              #   in Loop: Header=BB5_105 Depth=2
	fneg.d	fs1, fa5
.LBB5_141:                              #   in Loop: Header=BB5_105 Depth=2
	slli	n12, t0, 3
	add	n12, a3, n12
	fld	fa5, 0(n12)
	fsd	fa5, 208(sp)                    # 8-byte Folded Spill
	sub	t0, s0, t0
	slli	t0, t0, 3
	add	t0, a3, t0
	fld	fs5, 0(t0)
	slli	t0, n2, 3
	add	t0, a3, t0
	fld	fa5, 0(t0)
	fsd	fa5, 216(sp)                    # 8-byte Folded Spill
	sub	t0, s0, n2
	slli	t0, t0, 3
	add	t0, a3, t0
	fld	fs6, 0(t0)
	slli	t0, n7, 3
	add	t0, a3, t0
	fld	fa5, 0(t0)
	fsd	fa5, 200(sp)                    # 8-byte Folded Spill
	sub	t0, s0, n7
	slli	t0, t0, 3
	add	t0, a3, t0
	fld	fs8, 0(t0)
	slli	t0, n8, 3
	add	t0, a3, t0
	fld	fs7, 0(t0)
	sub	t0, s0, n8
	slli	t0, t0, 3
	add	t0, a3, t0
	fld	fs10, 0(t0)
	slli	t0, n11, 3
	add	t0, a3, t0
	fld	fs9, 0(t0)
	sub	t0, s0, n11
	slli	t0, t0, 3
	add	t0, a3, t0
	fld	fs11, 0(t0)
	ld	n2, 88(a7)
	lbu	n7, 82(a7)
	lhu	t0, 80(a7)
	beqz	n7, .LBB5_143
# %bb.142:                              #   in Loop: Header=BB5_105 Depth=2
	addi	t0, t0, 64
	j	.LBB5_144
.LBB5_143:                              #   in Loop: Header=BB5_105 Depth=2
	sub	t0, n27, t0
.LBB5_144:                              #   in Loop: Header=BB5_105 Depth=2
	fcvt.d.lu	fa4, n2
	slli	n2, t0, 3
	add	n2, a3, n2
	fld	fa5, 0(n2)
	fmul.d	fa3, fa4, ft4
	flt.d	n2, ft5, fa3
	fmv.d	fa4, ft8
	bnez	n2, .LBB5_146
# %bb.145:                              #   in Loop: Header=BB5_105 Depth=2
	fneg.d	fa4, fa3
.LBB5_146:                              #   in Loop: Header=BB5_105 Depth=2
	sub	t0, s0, t0
	slli	t0, t0, 3
	add	t0, a3, t0
	fld	fa3, 0(t0)
	ld	n2, 104(a7)
	lbu	n7, 98(a7)
	lhu	t0, 96(a7)
	beqz	n7, .LBB5_148
# %bb.147:                              #   in Loop: Header=BB5_105 Depth=2
	addi	t0, t0, 64
	j	.LBB5_149
.LBB5_148:                              #   in Loop: Header=BB5_105 Depth=2
	sub	t0, n27, t0
.LBB5_149:                              #   in Loop: Header=BB5_105 Depth=2
	fcvt.d.lu	fa1, n2
	slli	n2, t0, 3
	add	n2, a3, n2
	fld	fa2, 0(n2)
	fmul.d	fa0, fa1, ft4
	flt.d	n2, ft5, fa0
	fmv.d	fa1, ft8
	bnez	n2, .LBB5_151
# %bb.150:                              #   in Loop: Header=BB5_105 Depth=2
	fneg.d	fa1, fa0
.LBB5_151:                              #   in Loop: Header=BB5_105 Depth=2
	sub	t0, s0, t0
	slli	t0, t0, 3
	add	t0, a3, t0
	fld	fa0, 0(t0)
	ld	n2, 120(a7)
	lbu	n7, 114(a7)
	lhu	t0, 112(a7)
	beqz	n7, .LBB5_153
# %bb.152:                              #   in Loop: Header=BB5_105 Depth=2
	addi	t0, t0, 64
	j	.LBB5_154
.LBB5_153:                              #   in Loop: Header=BB5_105 Depth=2
	sub	t0, n27, t0
.LBB5_154:                              #   in Loop: Header=BB5_105 Depth=2
	fcvt.d.lu	ft1, n2
	slli	n2, t0, 3
	add	n2, a3, n2
	fld	ft0, 0(n2)
	fmul.d	ft2, ft1, ft4
	flt.d	n2, ft5, ft2
	fmv.d	ft1, ft8
	bnez	n2, .LBB5_156
# %bb.155:                              #   in Loop: Header=BB5_105 Depth=2
	fneg.d	ft1, ft2
.LBB5_156:                              #   in Loop: Header=BB5_105 Depth=2
	sub	t0, s0, t0
	slli	t0, t0, 3
	add	t0, a3, t0
	fld	ft3, 0(t0)
	ld	n2, 136(a7)
	lbu	n7, 130(a7)
	lhu	t0, 128(a7)
	beqz	n7, .LBB5_158
# %bb.157:                              #   in Loop: Header=BB5_105 Depth=2
	addi	t0, t0, 64
	j	.LBB5_159
.LBB5_158:                              #   in Loop: Header=BB5_105 Depth=2
	sub	t0, n27, t0
.LBB5_159:                              #   in Loop: Header=BB5_105 Depth=2
	fcvt.d.lu	ft6, n2
	slli	n2, t0, 3
	add	n2, a3, n2
	fld	ft2, 0(n2)
	fmul.d	fs2, ft6, ft4
	flt.d	n2, ft5, fs2
	fmv.d	ft6, ft8
	bnez	n2, .LBB5_161
# %bb.160:                              #   in Loop: Header=BB5_105 Depth=2
	fneg.d	ft6, fs2
.LBB5_161:                              #   in Loop: Header=BB5_105 Depth=2
	sub	t0, s0, t0
	slli	t0, t0, 3
	add	t0, a3, t0
	fld	fs2, 0(t0)
	ld	t0, 152(a7)
	lbu	n2, 146(a7)
	lhu	a7, 144(a7)
	beqz	n2, .LBB5_163
# %bb.162:                              #   in Loop: Header=BB5_105 Depth=2
	addi	a7, a7, 64
	j	.LBB5_164
.LBB5_163:                              #   in Loop: Header=BB5_105 Depth=2
	sub	a7, n27, a7
.LBB5_164:                              #   in Loop: Header=BB5_105 Depth=2
	fcvt.d.lu	fs4, t0
	slli	t0, a7, 3
	add	t0, a3, t0
	fld	fs3, 0(t0)
	fmul.d	fs4, fs4, ft4
	flt.d	t0, ft5, fs4
	bnez	t0, .LBB5_103
# %bb.165:                              #   in Loop: Header=BB5_105 Depth=2
	fneg.d	ft8, fs4
	j	.LBB5_103
.LBB5_166:                              #   in Loop: Header=BB5_21 Depth=1
	lw	n1, 24(a4)
	fld	fa5, 512(n28)
	fsd	fa5, 216(sp)                    # 8-byte Folded Spill
	fld	fa5, 504(n28)
	fsd	fa5, 208(sp)                    # 8-byte Folded Spill
	li	a6, 0
	li	s8, 1
	j	.LBB5_168
.LBB5_167:                              #   in Loop: Header=BB5_168 Depth=2
	fmul.d	fa7, ft9, fs0
	fmv.d.x	fs0, zero
	fmadd.d	fa7, fa7, fs1, fs0
	fmul.d	ft9, ft9, fs2
	fmadd.d	fa7, ft9, fs3, fa7
	fadd.d	ft7, ft7, fa7
	fmul.d	fa7, ft10, fs4
	fmadd.d	fa7, fa7, fs5, fs0
	fmul.d	fa5, ft10, fa5
	fmadd.d	fa5, fa5, fa4, fa7
	fadd.d	fa5, ft7, fa5
	fmul.d	fa4, ft11, fs6
	fmadd.d	fa4, fa4, fs7, fs0
	fmul.d	fa3, ft11, fa3
	fmadd.d	fa4, fa3, fs8, fa4
	fadd.d	fa5, fa5, fa4
	fmul.d	fa4, fa0, fa2
	fmadd.d	fa4, fa4, fa1, fs0
	fmul.d	fa3, fa0, fs9
	fmadd.d	fa4, fa3, ft0, fa4
	fadd.d	fa5, fa5, fa4
	fmul.d	fa4, ft3, ft1
	fmadd.d	fa4, fa4, ft2, fs0
	fmul.d	fa3, ft3, ft6
	fmadd.d	fa4, fa3, fs10, fa4
	fadd.d	fa5, fa5, fa4
	sub	a6, a6, a7
	slli	a6, a6, 3
	add	a6, a3, a6
	fld	fa4, 0(a6)
	xori	a6, t0, 127
	slli	a6, a6, 3
	add	a6, n28, a6
	fld	fa3, 0(a6)
	fmul.d	fa2, ft8, fs11
	fmadd.d	fa2, fa2, fa6, fs0
	fmul.d	fa4, ft8, fa4
	fmadd.d	fa4, fa4, fa3, fa2
	fadd.d	ft7, fa5, fa4
	fld	fs9, 224(sp)                    # 8-byte Folded Reload
	andi	a7, s8, 1
	li	a6, 1
	li	s8, 0
	beqz	a7, .LBB5_242
.LBB5_168:                              #   Parent Loop BB5_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mul	a7, a6, s2
	bne	n1, n26, .LBB5_171
# %bb.169:                              #   in Loop: Header=BB5_168 Depth=2
	add	a6, t6, a7
	lbu	t0, 2(a6)
	lhu	a7, 0(a6)
	beqz	t0, .LBB5_173
# %bb.170:                              #   in Loop: Header=BB5_168 Depth=2
	addi	a7, a7, 64
	j	.LBB5_174
.LBB5_171:                              #   in Loop: Header=BB5_168 Depth=2
	add	a7, t6, a7
	lbu	n2, 2(a7)
	lhu	t0, 0(a7)
	beqz	n2, .LBB5_178
# %bb.172:                              #   in Loop: Header=BB5_168 Depth=2
	addi	t0, t0, 64
	j	.LBB5_179
.LBB5_173:                              #   in Loop: Header=BB5_168 Depth=2
	sub	a7, n27, a7
.LBB5_174:                              #   in Loop: Header=BB5_168 Depth=2
	ld	t0, 8(a6)
	fld	ft8, %lo(.LCPI5_2)(n29)
	fcvt.d.lu	fa5, t0
	fmul.d	fa4, fa5, ft4
	flt.d	t0, ft5, fa4
	fmv.d	fa5, ft8
	bnez	t0, .LBB5_176
# %bb.175:                              #   in Loop: Header=BB5_168 Depth=2
	fneg.d	fa5, fa4
.LBB5_176:                              #   in Loop: Header=BB5_168 Depth=2
	lbu	n2, 18(a6)
	lhu	t0, 16(a6)
	beqz	n2, .LBB5_185
# %bb.177:                              #   in Loop: Header=BB5_168 Depth=2
	addi	t0, t0, 64
	j	.LBB5_186
.LBB5_178:                              #   in Loop: Header=BB5_168 Depth=2
	sub	t0, n27, t0
.LBB5_179:                              #   in Loop: Header=BB5_168 Depth=2
	lw	n2, 40(a4)
	sgtz	n7, n2
	mul	s10, a6, ra
	mul	a6, n24, s2
	add	a6, s5, a6
	add	s10, a6, s10
	lw	a6, 0(s10)
	negw	n7, n7
	lw	n8, 4(s10)
	and	n18, n7, n2
	mul	a6, a6, n18
	sraiw	a6, a6, 4
	addw	a6, a6, n8
	sgtz	n2, a6
	neg	n2, n2
	and	n2, n2, a6
	li	a6, 127
	blt	n2, a6, .LBB5_181
# %bb.180:                              #   in Loop: Header=BB5_168 Depth=2
	li	n2, 127
.LBB5_181:                              #   in Loop: Header=BB5_168 Depth=2
	ld	n7, 8(a7)
	fld	ft8, %lo(.LCPI5_2)(n29)
	fcvt.d.lu	fa5, n7
	fmul.d	fa5, fa5, ft4
	flt.d	n7, ft5, fa5
	fmv.d	ft9, ft8
	bnez	n7, .LBB5_183
# %bb.182:                              #   in Loop: Header=BB5_168 Depth=2
	fneg.d	ft9, fa5
.LBB5_183:                              #   in Loop: Header=BB5_168 Depth=2
	lbu	n8, 18(a7)
	lhu	n7, 16(a7)
	beqz	n8, .LBB5_190
# %bb.184:                              #   in Loop: Header=BB5_168 Depth=2
	addi	n7, n7, 64
	j	.LBB5_191
.LBB5_185:                              #   in Loop: Header=BB5_168 Depth=2
	sub	t0, n27, t0
.LBB5_186:                              #   in Loop: Header=BB5_168 Depth=2
	ld	n2, 24(a6)
	fcvt.d.lu	fa4, n2
	fmul.d	fa3, fa4, ft4
	flt.d	n2, ft5, fa3
	fmv.d	fa4, ft8
	bnez	n2, .LBB5_188
# %bb.187:                              #   in Loop: Header=BB5_168 Depth=2
	fneg.d	fa4, fa3
.LBB5_188:                              #   in Loop: Header=BB5_168 Depth=2
	lbu	n7, 34(a6)
	lhu	n2, 32(a6)
	beqz	n7, .LBB5_197
# %bb.189:                              #   in Loop: Header=BB5_168 Depth=2
	addi	n2, n2, 64
	j	.LBB5_198
.LBB5_190:                              #   in Loop: Header=BB5_168 Depth=2
	sub	n7, n27, n7
.LBB5_191:                              #   in Loop: Header=BB5_168 Depth=2
	lw	n8, 8(s10)
	lw	n11, 12(s10)
	mul	n8, n8, n18
	sraiw	n8, n8, 4
	addw	n8, n8, n11
	sgtz	n11, n8
	neg	n11, n11
	and	n8, n11, n8
	blt	n8, a6, .LBB5_193
# %bb.192:                              #   in Loop: Header=BB5_168 Depth=2
	li	n8, 127
.LBB5_193:                              #   in Loop: Header=BB5_168 Depth=2
	ld	n11, 24(a7)
	fcvt.d.lu	fa5, n11
	fmul.d	fa5, fa5, ft4
	flt.d	n11, ft5, fa5
	fmv.d	ft10, ft8
	bnez	n11, .LBB5_195
# %bb.194:                              #   in Loop: Header=BB5_168 Depth=2
	fneg.d	ft10, fa5
.LBB5_195:                              #   in Loop: Header=BB5_168 Depth=2
	lbu	n12, 34(a7)
	lhu	n11, 32(a7)
	beqz	n12, .LBB5_202
# %bb.196:                              #   in Loop: Header=BB5_168 Depth=2
	addi	n12, n11, 64
	j	.LBB5_203
.LBB5_197:                              #   in Loop: Header=BB5_168 Depth=2
	sub	n2, n27, n2
.LBB5_198:                              #   in Loop: Header=BB5_168 Depth=2
	ld	n7, 40(a6)
	fcvt.d.lu	fa3, n7
	fmul.d	fa2, fa3, ft4
	flt.d	n7, ft5, fa2
	fmv.d	fa3, ft8
	bnez	n7, .LBB5_200
# %bb.199:                              #   in Loop: Header=BB5_168 Depth=2
	fneg.d	fa3, fa2
.LBB5_200:                              #   in Loop: Header=BB5_168 Depth=2
	lbu	n8, 50(a6)
	lhu	n7, 48(a6)
	beqz	n8, .LBB5_209
# %bb.201:                              #   in Loop: Header=BB5_168 Depth=2
	addi	n7, n7, 64
	j	.LBB5_210
.LBB5_202:                              #   in Loop: Header=BB5_168 Depth=2
	sub	n12, n27, n11
.LBB5_203:                              #   in Loop: Header=BB5_168 Depth=2
	lw	n11, 16(s10)
	lw	n13, 20(s10)
	mul	n11, n11, n18
	sraiw	n11, n11, 4
	addw	n11, n11, n13
	sgtz	n13, n11
	neg	n13, n13
	and	n13, n13, n11
	blt	n13, a6, .LBB5_205
# %bb.204:                              #   in Loop: Header=BB5_168 Depth=2
	li	n13, 127
.LBB5_205:                              #   in Loop: Header=BB5_168 Depth=2
	ld	n11, 40(a7)
	fcvt.d.lu	fa5, n11
	fmul.d	fa5, fa5, ft4
	flt.d	n11, ft5, fa5
	fmv.d	ft11, ft8
	bnez	n11, .LBB5_207
# %bb.206:                              #   in Loop: Header=BB5_168 Depth=2
	fneg.d	ft11, fa5
.LBB5_207:                              #   in Loop: Header=BB5_168 Depth=2
	lbu	n14, 50(a7)
	lhu	n11, 48(a7)
	beqz	n14, .LBB5_214
# %bb.208:                              #   in Loop: Header=BB5_168 Depth=2
	addi	n11, n11, 64
	j	.LBB5_215
.LBB5_209:                              #   in Loop: Header=BB5_168 Depth=2
	sub	n7, n27, n7
.LBB5_210:                              #   in Loop: Header=BB5_168 Depth=2
	ld	n8, 56(a6)
	fcvt.d.lu	fa2, n8
	fmul.d	fa1, fa2, ft4
	flt.d	n8, ft5, fa1
	fmv.d	fa2, ft8
	bnez	n8, .LBB5_212
# %bb.211:                              #   in Loop: Header=BB5_168 Depth=2
	fneg.d	fa2, fa1
.LBB5_212:                              #   in Loop: Header=BB5_168 Depth=2
	lbu	n11, 66(a6)
	lhu	n8, 64(a6)
	beqz	n11, .LBB5_221
# %bb.213:                              #   in Loop: Header=BB5_168 Depth=2
	addi	n8, n8, 64
	j	.LBB5_222
.LBB5_214:                              #   in Loop: Header=BB5_168 Depth=2
	sub	n11, n27, n11
.LBB5_215:                              #   in Loop: Header=BB5_168 Depth=2
	slli	n14, t0, 3
	add	n14, a3, n14
	fld	fs0, 0(n14)
	slli	n14, n2, 3
	add	n14, n28, n14
	fld	fs1, 0(n14)
	sub	t0, a6, t0
	slli	t0, t0, 3
	add	t0, a3, t0
	fld	fs2, 0(t0)
	xori	t0, n2, 127
	slli	t0, t0, 3
	add	t0, n28, t0
	fld	fs3, 0(t0)
	slli	t0, n7, 3
	add	t0, a3, t0
	fld	fs4, 0(t0)
	slli	t0, n8, 3
	add	t0, n28, t0
	fld	fs5, 0(t0)
	sub	t0, a6, n7
	slli	t0, t0, 3
	add	t0, a3, t0
	fld	fa5, 0(t0)
	xori	t0, n8, 127
	slli	t0, t0, 3
	add	t0, n28, t0
	fld	fa4, 0(t0)
	slli	t0, n12, 3
	add	t0, a3, t0
	fld	fs6, 0(t0)
	slli	t0, n13, 3
	add	t0, n28, t0
	fld	fs7, 0(t0)
	sub	t0, a6, n12
	slli	t0, t0, 3
	add	t0, a3, t0
	fld	fa3, 0(t0)
	xori	t0, n13, 127
	slli	t0, t0, 3
	add	t0, n28, t0
	lw	n7, 24(s10)
	fld	fs8, 0(t0)
	lw	t0, 28(s10)
	ld	n2, 56(a7)
	mul	n7, n7, n18
	sraiw	n7, n7, 4
	addw	t0, n7, t0
	sgtz	n7, t0
	neg	n7, n7
	and	t0, n7, t0
	blt	t0, a6, .LBB5_217
# %bb.216:                              #   in Loop: Header=BB5_168 Depth=2
	li	t0, 127
.LBB5_217:                              #   in Loop: Header=BB5_168 Depth=2
	fcvt.d.lu	fa0, n2
	slli	n2, n11, 3
	add	n2, a3, n2
	fld	fa2, 0(n2)
	slli	n2, t0, 3
	add	n2, n28, n2
	fld	fa1, 0(n2)
	fmul.d	ft0, fa0, ft4
	flt.d	n2, ft5, ft0
	fmv.d	fa0, ft8
	bnez	n2, .LBB5_219
# %bb.218:                              #   in Loop: Header=BB5_168 Depth=2
	fneg.d	fa0, ft0
.LBB5_219:                              #   in Loop: Header=BB5_168 Depth=2
	sub	n2, a6, n11
	slli	n2, n2, 3
	add	n2, a3, n2
	fld	fs9, 0(n2)
	xori	t0, t0, 127
	slli	t0, t0, 3
	add	t0, n28, t0
	fld	ft0, 0(t0)
	ld	n7, 72(a7)
	lw	n8, 32(s10)
	lw	n2, 36(s10)
	lbu	n11, 66(a7)
	lhu	t0, 64(a7)
	beqz	n11, .LBB5_226
# %bb.220:                              #   in Loop: Header=BB5_168 Depth=2
	addi	t0, t0, 64
	j	.LBB5_227
.LBB5_221:                              #   in Loop: Header=BB5_168 Depth=2
	sub	n8, n27, n8
.LBB5_222:                              #   in Loop: Header=BB5_168 Depth=2
	ld	n11, 72(a6)
	fcvt.d.lu	fa1, n11
	fmul.d	fa0, fa1, ft4
	flt.d	n11, ft5, fa0
	fmv.d	fa1, ft8
	bnez	n11, .LBB5_224
# %bb.223:                              #   in Loop: Header=BB5_168 Depth=2
	fneg.d	fa1, fa0
.LBB5_224:                              #   in Loop: Header=BB5_168 Depth=2
	slli	n11, a7, 3
	add	n11, a3, n11
	fld	fa0, 0(n11)
	sub	a7, s0, a7
	slli	a7, a7, 3
	add	a7, a3, a7
	fld	ft0, 0(a7)
	slli	a7, t0, 3
	add	a7, a3, a7
	fld	ft1, 0(a7)
	sub	a7, s0, t0
	slli	a7, a7, 3
	add	a7, a3, a7
	fld	ft2, 0(a7)
	slli	a7, n2, 3
	add	a7, a3, a7
	fld	ft3, 0(a7)
	sub	a7, s0, n2
	slli	a7, a7, 3
	add	a7, a3, a7
	fld	ft6, 0(a7)
	slli	a7, n7, 3
	add	a7, a3, a7
	fld	ft9, 0(a7)
	sub	a7, s0, n7
	slli	a7, a7, 3
	add	a7, a3, a7
	fld	ft10, 0(a7)
	slli	a7, n8, 3
	add	a7, a3, a7
	fld	ft11, 0(a7)
	sub	a7, s0, n8
	slli	a7, a7, 3
	add	a7, a3, a7
	fld	fs0, 0(a7)
	ld	a7, 88(a6)
	lbu	t0, 82(a6)
	lhu	a6, 80(a6)
	beqz	t0, .LBB5_233
# %bb.225:                              #   in Loop: Header=BB5_168 Depth=2
	addi	a6, a6, 64
	j	.LBB5_234
.LBB5_226:                              #   in Loop: Header=BB5_168 Depth=2
	sub	t0, n27, t0
.LBB5_227:                              #   in Loop: Header=BB5_168 Depth=2
	mul	n8, n8, n18
	sraiw	n8, n8, 4
	addw	n2, n8, n2
	sgtz	n8, n2
	neg	n8, n8
	and	n2, n8, n2
	blt	n2, a6, .LBB5_229
# %bb.228:                              #   in Loop: Header=BB5_168 Depth=2
	li	n2, 127
.LBB5_229:                              #   in Loop: Header=BB5_168 Depth=2
	fcvt.d.lu	ft3, n7
	slli	n7, t0, 3
	add	n7, a3, n7
	fld	ft1, 0(n7)
	slli	n7, n2, 3
	add	n7, n28, n7
	fld	ft2, 0(n7)
	fmul.d	ft6, ft3, ft4
	flt.d	n7, ft5, ft6
	fmv.d	ft3, ft8
	bnez	n7, .LBB5_231
# %bb.230:                              #   in Loop: Header=BB5_168 Depth=2
	fneg.d	ft3, ft6
.LBB5_231:                              #   in Loop: Header=BB5_168 Depth=2
	sub	t0, a6, t0
	slli	t0, t0, 3
	add	t0, a3, t0
	fld	ft6, 0(t0)
	xori	t0, n2, 127
	slli	t0, t0, 3
	add	t0, n28, t0
	fld	fs10, 0(t0)
	ld	n2, 88(a7)
	lw	n7, 40(s10)
	lw	t0, 44(s10)
	lbu	n8, 82(a7)
	lhu	a7, 80(a7)
	beqz	n8, .LBB5_237
# %bb.232:                              #   in Loop: Header=BB5_168 Depth=2
	addi	a7, a7, 64
	j	.LBB5_238
.LBB5_233:                              #   in Loop: Header=BB5_168 Depth=2
	sub	a6, n27, a6
.LBB5_234:                              #   in Loop: Header=BB5_168 Depth=2
	fcvt.d.lu	fa7, a7
	slli	a7, a6, 3
	add	a7, a3, a7
	fld	fa6, 0(a7)
	fmul.d	fa7, fa7, ft4
	flt.d	a7, ft5, fa7
	bnez	a7, .LBB5_236
# %bb.235:                              #   in Loop: Header=BB5_168 Depth=2
	fneg.d	ft8, fa7
.LBB5_236:                              #   in Loop: Header=BB5_168 Depth=2
	fmul.d	fa0, fa0, fa5
	fmv.d.x	fa7, zero
	fld	fs1, 216(sp)                    # 8-byte Folded Reload
	fmadd.d	fa0, fa0, fs1, fa7
	fmul.d	fa5, fa5, ft0
	fld	ft0, 208(sp)                    # 8-byte Folded Reload
	fmadd.d	fa5, fa5, ft0, fa0
	fadd.d	fa5, ft7, fa5
	fmul.d	fa0, ft1, fa4
	fmadd.d	fa0, fa0, fs1, fa7
	fmul.d	fa4, fa4, ft2
	fmadd.d	fa4, fa4, ft0, fa0
	fadd.d	fa5, fa5, fa4
	fmul.d	fa4, ft3, fa3
	fmadd.d	fa4, fa4, fs1, fa7
	fmul.d	fa3, fa3, ft6
	fmadd.d	fa4, fa3, ft0, fa4
	fadd.d	fa5, fa5, fa4
	fmul.d	fa4, ft9, fa2
	fmadd.d	fa4, fa4, fs1, fa7
	fmul.d	fa3, fa2, ft10
	fmadd.d	fa4, fa3, ft0, fa4
	fadd.d	fa5, fa5, fa4
	fmul.d	fa4, ft11, fa1
	fmadd.d	fa4, fa4, fs1, fa7
	fmul.d	fa3, fa1, fs0
	fmadd.d	fa4, fa3, ft0, fa4
	sub	a6, s0, a6
	slli	a6, a6, 3
	add	a6, a3, a6
	fld	fa3, 0(a6)
	fadd.d	fa5, fa5, fa4
	fmul.d	fa4, fa6, ft8
	fmadd.d	fa4, fa4, fs1, fa7
	fmul.d	fa3, ft8, fa3
	fmadd.d	fa4, fa3, ft0, fa4
	fadd.d	ft7, fa5, fa4
	andi	a7, s8, 1
	li	a6, 1
	li	s8, 0
	bnez	a7, .LBB5_168
	j	.LBB5_242
.LBB5_237:                              #   in Loop: Header=BB5_168 Depth=2
	sub	a7, n27, a7
.LBB5_238:                              #   in Loop: Header=BB5_168 Depth=2
	mul	n7, n7, n18
	sraiw	n7, n7, 4
	addw	t0, n7, t0
	sgtz	n7, t0
	neg	n7, n7
	and	t0, n7, t0
	blt	t0, a6, .LBB5_240
# %bb.239:                              #   in Loop: Header=BB5_168 Depth=2
	li	t0, 127
.LBB5_240:                              #   in Loop: Header=BB5_168 Depth=2
	fcvt.d.lu	fa7, n2
	slli	n2, a7, 3
	add	n2, a3, n2
	fld	fs11, 0(n2)
	slli	n2, t0, 3
	add	n2, n28, n2
	fld	fa6, 0(n2)
	fmul.d	fa7, fa7, ft4
	flt.d	n2, ft5, fa7
	bnez	n2, .LBB5_167
# %bb.241:                              #   in Loop: Header=BB5_168 Depth=2
	fneg.d	ft8, fa7
	j	.LBB5_167
.LBB5_242:                              #   in Loop: Header=BB5_21 Depth=1
	lw	s8, 24(a4)
	slli	s10, n24, 5
	bne	s8, n26, .LBB5_251
# %bb.243:                              #   in Loop: Header=BB5_21 Depth=1
	lbu	a6, 1330(a1)
	ld	n1, 104(sp)                     # 8-byte Folded Reload
	beqz	a6, .LBB5_245
# %bb.244:                              #   in Loop: Header=BB5_21 Depth=1
	ld	n1, 8(sp)                       # 8-byte Folded Reload
.LBB5_245:                              #   in Loop: Header=BB5_21 Depth=1
	lui	t0, %hi(INIT_DELTA_QP_I)
	addi	t0, t0, %lo(INIT_DELTA_QP_I)
	add	t0, t0, s10
	lw	a6, 4(t0)
	sgtz	a7, a6
	neg	a7, a7
	and	n2, a7, a6
	li	a7, 127
	blt	n2, a7, .LBB5_247
# %bb.246:                              #   in Loop: Header=BB5_21 Depth=1
	li	n2, 127
.LBB5_247:                              #   in Loop: Header=BB5_21 Depth=1
	ld	a6, 1336(a1)
	fld	fa6, %lo(.LCPI5_2)(n29)
	fcvt.d.lu	fa5, a6
	fmul.d	fa4, fa5, ft4
	flt.d	a6, ft5, fa4
	fmv.d	fa5, fa6
	bnez	a6, .LBB5_249
# %bb.248:                              #   in Loop: Header=BB5_21 Depth=1
	fneg.d	fa5, fa4
.LBB5_249:                              #   in Loop: Header=BB5_21 Depth=1
	lbu	n7, 1346(a1)
	lhu	a6, 1344(a1)
	beqz	n7, .LBB5_259
# %bb.250:                              #   in Loop: Header=BB5_21 Depth=1
	addi	n7, a6, 64
	j	.LBB5_260
.LBB5_251:                              #   in Loop: Header=BB5_21 Depth=1
	lbu	a6, 1330(a1)
	ld	n1, 104(sp)                     # 8-byte Folded Reload
	beqz	a6, .LBB5_253
# %bb.252:                              #   in Loop: Header=BB5_21 Depth=1
	ld	n1, 8(sp)                       # 8-byte Folded Reload
.LBB5_253:                              #   in Loop: Header=BB5_21 Depth=1
	lui	t0, %hi(INIT_DELTA_QP_P)
	addi	t0, t0, %lo(INIT_DELTA_QP_P)
	add	t0, t0, s10
	lw	a6, 4(t0)
	sgtz	a7, a6
	neg	a7, a7
	and	n2, a7, a6
	li	a7, 127
	blt	n2, a7, .LBB5_255
# %bb.254:                              #   in Loop: Header=BB5_21 Depth=1
	li	n2, 127
.LBB5_255:                              #   in Loop: Header=BB5_21 Depth=1
	ld	a6, 1336(a1)
	fld	fa6, %lo(.LCPI5_2)(n29)
	fcvt.d.lu	fa5, a6
	fmul.d	fa4, fa5, ft4
	flt.d	a6, ft5, fa4
	fmv.d	fa5, fa6
	bnez	a6, .LBB5_257
# %bb.256:                              #   in Loop: Header=BB5_21 Depth=1
	fneg.d	fa5, fa4
.LBB5_257:                              #   in Loop: Header=BB5_21 Depth=1
	lbu	n7, 1346(a1)
	lhu	a6, 1344(a1)
	beqz	n7, .LBB5_266
# %bb.258:                              #   in Loop: Header=BB5_21 Depth=1
	addi	n7, a6, 64
	j	.LBB5_267
.LBB5_259:                              #   in Loop: Header=BB5_21 Depth=1
	sub	n7, n27, a6
.LBB5_260:                              #   in Loop: Header=BB5_21 Depth=1
	lw	a6, 12(t0)
	sgtz	n8, a6
	neg	n8, n8
	and	n8, n8, a6
	blt	n8, a7, .LBB5_262
# %bb.261:                              #   in Loop: Header=BB5_21 Depth=1
	li	n8, 127
.LBB5_262:                              #   in Loop: Header=BB5_21 Depth=1
	ld	a6, 1352(a1)
	fcvt.d.lu	fa4, a6
	fmul.d	fa3, fa4, ft4
	flt.d	a6, ft5, fa3
	fmv.d	fa4, fa6
	bnez	a6, .LBB5_264
# %bb.263:                              #   in Loop: Header=BB5_21 Depth=1
	fneg.d	fa4, fa3
.LBB5_264:                              #   in Loop: Header=BB5_21 Depth=1
	lbu	n11, 1362(a1)
	lhu	a6, 1360(a1)
	beqz	n11, .LBB5_273
# %bb.265:                              #   in Loop: Header=BB5_21 Depth=1
	addi	n11, a6, 64
	j	.LBB5_274
.LBB5_266:                              #   in Loop: Header=BB5_21 Depth=1
	sub	n7, n27, a6
.LBB5_267:                              #   in Loop: Header=BB5_21 Depth=1
	lw	a6, 12(t0)
	sgtz	n8, a6
	neg	n8, n8
	and	n8, n8, a6
	blt	n8, a7, .LBB5_269
# %bb.268:                              #   in Loop: Header=BB5_21 Depth=1
	li	n8, 127
.LBB5_269:                              #   in Loop: Header=BB5_21 Depth=1
	ld	a6, 1352(a1)
	fcvt.d.lu	fa4, a6
	fmul.d	fa3, fa4, ft4
	flt.d	a6, ft5, fa3
	fmv.d	fa4, fa6
	bnez	a6, .LBB5_271
# %bb.270:                              #   in Loop: Header=BB5_21 Depth=1
	fneg.d	fa4, fa3
.LBB5_271:                              #   in Loop: Header=BB5_21 Depth=1
	lbu	n11, 1362(a1)
	lhu	a6, 1360(a1)
	beqz	n11, .LBB5_280
# %bb.272:                              #   in Loop: Header=BB5_21 Depth=1
	addi	n11, a6, 64
	j	.LBB5_281
.LBB5_273:                              #   in Loop: Header=BB5_21 Depth=1
	sub	n11, n27, a6
.LBB5_274:                              #   in Loop: Header=BB5_21 Depth=1
	lw	a6, 20(t0)
	sgtz	n12, a6
	neg	n12, n12
	and	n12, n12, a6
	blt	n12, a7, .LBB5_276
# %bb.275:                              #   in Loop: Header=BB5_21 Depth=1
	li	n12, 127
.LBB5_276:                              #   in Loop: Header=BB5_21 Depth=1
	ld	a6, 1368(a1)
	fcvt.d.lu	fa3, a6
	fmul.d	fa2, fa3, ft4
	flt.d	a6, ft5, fa2
	fmv.d	fa3, fa6
	bnez	a6, .LBB5_278
# %bb.277:                              #   in Loop: Header=BB5_21 Depth=1
	fneg.d	fa3, fa2
.LBB5_278:                              #   in Loop: Header=BB5_21 Depth=1
	lbu	n13, 1378(a1)
	lhu	a6, 1376(a1)
	beqz	n13, .LBB5_286
.LBB5_279:                              #   in Loop: Header=BB5_21 Depth=1
	addi	a6, a6, 64
	j	.LBB5_287
.LBB5_280:                              #   in Loop: Header=BB5_21 Depth=1
	sub	n11, n27, a6
.LBB5_281:                              #   in Loop: Header=BB5_21 Depth=1
	lw	a6, 20(t0)
	sgtz	n12, a6
	neg	n12, n12
	and	n12, n12, a6
	blt	n12, a7, .LBB5_283
# %bb.282:                              #   in Loop: Header=BB5_21 Depth=1
	li	n12, 127
.LBB5_283:                              #   in Loop: Header=BB5_21 Depth=1
	ld	a6, 1368(a1)
	fcvt.d.lu	fa3, a6
	fmul.d	fa2, fa3, ft4
	flt.d	a6, ft5, fa2
	fmv.d	fa3, fa6
	bnez	a6, .LBB5_285
# %bb.284:                              #   in Loop: Header=BB5_21 Depth=1
	fneg.d	fa3, fa2
.LBB5_285:                              #   in Loop: Header=BB5_21 Depth=1
	lbu	n13, 1378(a1)
	lhu	a6, 1376(a1)
	bnez	n13, .LBB5_279
.LBB5_286:                              #   in Loop: Header=BB5_21 Depth=1
	sub	a6, n27, a6
.LBB5_287:                              #   in Loop: Header=BB5_21 Depth=1
	slli	n13, n1, 3
	add	n13, a3, n13
	fld	fa2, 0(n13)
	slli	n13, n2, 3
	add	n13, n28, n13
	fld	fa1, 0(n13)
	sub	n1, a7, n1
	slli	n1, n1, 3
	add	n1, a3, n1
	fld	fa0, 0(n1)
	xori	n1, n2, 127
	slli	n1, n1, 3
	add	n1, n28, n1
	fld	ft0, 0(n1)
	slli	n1, n7, 3
	add	n1, a3, n1
	fld	ft1, 0(n1)
	slli	n1, n8, 3
	add	n1, n28, n1
	fld	ft2, 0(n1)
	sub	n1, a7, n7
	slli	n1, n1, 3
	add	n1, a3, n1
	fld	ft3, 0(n1)
	xori	n1, n8, 127
	slli	n1, n1, 3
	add	n1, n28, n1
	fld	ft6, 0(n1)
	slli	n1, n11, 3
	add	n1, a3, n1
	fld	fa7, 0(n1)
	slli	n1, n12, 3
	add	n1, n28, n1
	fld	ft8, 0(n1)
	sub	n1, a7, n11
	slli	n1, n1, 3
	add	n1, a3, n1
	fld	ft9, 0(n1)
	xori	n1, n12, 127
	slli	n1, n1, 3
	lw	t0, 28(t0)
	add	n1, n28, n1
	fld	ft10, 0(n1)
	ld	n1, 1384(a1)
	sgtz	n2, t0
	neg	n2, n2
	and	t0, n2, t0
	blt	t0, a7, .LBB5_289
# %bb.288:                              #   in Loop: Header=BB5_21 Depth=1
	li	t0, 127
.LBB5_289:                              #   in Loop: Header=BB5_21 Depth=1
	fcvt.d.lu	fs1, n1
	slli	a7, a6, 3
	add	a7, a3, a7
	fld	ft11, 0(a7)
	slli	a7, t0, 3
	add	a7, n28, a7
	fld	fs0, 0(a7)
	fmul.d	fs1, fs1, ft4
	flt.d	a7, ft5, fs1
	bnez	a7, .LBB5_291
# %bb.290:                              #   in Loop: Header=BB5_21 Depth=1
	fneg.d	fa6, fs1
.LBB5_291:                              #   in Loop: Header=BB5_21 Depth=1
	fmul.d	fa2, fa5, fa2
	fmv.d.x	fs1, zero
	fmadd.d	fa2, fa2, fa1, fs1
	fmul.d	fa5, fa5, fa0
	fmadd.d	fa5, fa5, ft0, fa2
	fadd.d	fa5, ft7, fa5
	fmul.d	fa2, fa4, ft1
	fmadd.d	fa2, fa2, ft2, fs1
	fmul.d	fa4, fa4, ft3
	fmadd.d	fa4, fa4, ft6, fa2
	fadd.d	fa5, fa5, fa4
	fmul.d	fa4, fa3, fa7
	fmadd.d	fa4, fa4, ft8, fs1
	fmul.d	fa3, fa3, ft9
	fmadd.d	fa4, fa3, ft10, fa4
	fadd.d	fa5, fa5, fa4
	fmul.d	fa4, fa6, ft11
	fmadd.d	fa4, fa4, fs0, fs1
	sub	a6, s0, a6
	slli	a6, a6, 3
	add	a6, a3, a6
	fld	fa3, 0(a6)
	xori	a6, t0, 127
	sext.w	a6, a6
	slli	a6, a6, 3
	add	a6, n28, a6
	fld	fa2, 0(a6)
	lw	n1, 40(a4)
	fmul.d	fa3, fa6, fa3
	fmadd.d	fa4, fa3, fa2, fa4
	fadd.d	ft7, fa5, fa4
	sgtz	a6, n1
	neg	a6, a6
	and	a6, a6, n1
	li	a7, 3
	ld	t0, 176(sp)                     # 8-byte Folded Reload
	ld	n2, 184(sp)                     # 8-byte Folded Reload
	ld	n7, 32(sp)                      # 8-byte Folded Reload
	j	.LBB5_294
.LBB5_292:                              #   in Loop: Header=BB5_294 Depth=2
	slli	n11, n8, 3
	add	n11, n28, n11
	fld	fa3, 0(n11)
	xori	n8, n8, 127
	slli	n8, n8, 3
	add	n8, n28, n8
	fld	fa2, 0(n8)
	fmv.d.x	fa7, zero
	fmadd.d	fa4, fa4, fa3, fa7
	fmadd.d	fa5, fa5, fa2, fa4
	fadd.d	ft7, ft7, fa5
	beqz	a7, .LBB5_308
.LBB5_293:                              #   in Loop: Header=BB5_294 Depth=2
	addi	n7, n7, 16
	addi	n2, n2, 8
	addi	t0, t0, 8
	addi	a7, a7, -1
.LBB5_294:                              #   Parent Loop BB5_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	n11, 0(n7)
	lbu	n12, -6(n7)
	lhu	n8, -8(n7)
	beqz	n12, .LBB5_296
# %bb.295:                              #   in Loop: Header=BB5_294 Depth=2
	addi	n8, n8, 64
	j	.LBB5_297
.LBB5_296:                              #   in Loop: Header=BB5_294 Depth=2
	sub	n8, n27, n8
.LBB5_297:                              #   in Loop: Header=BB5_294 Depth=2
	fcvt.d.lu	fa4, n11
	slli	n11, n8, 3
	add	n11, a3, n11
	fld	fa5, 0(n11)
	fmul.d	fa4, fa4, ft4
	flt.d	n11, ft5, fa4
	bnez	n11, .LBB5_299
# %bb.298:                              #   in Loop: Header=BB5_294 Depth=2
	fneg.d	fa3, fa4
	j	.LBB5_300
.LBB5_299:                              #   in Loop: Header=BB5_294 Depth=2
	fld	fa3, %lo(.LCPI5_2)(n29)
.LBB5_300:                              #   in Loop: Header=BB5_294 Depth=2
	sub	n8, s0, n8
	slli	n8, n8, 3
	add	n8, a3, n8
	fld	fa2, 0(n8)
	fmul.d	fa4, fa3, fa5
	fmul.d	fa5, fa3, fa2
	bne	s8, n26, .LBB5_303
# %bb.301:                              #   in Loop: Header=BB5_294 Depth=2
	lw	n8, -4(t0)
	lw	n11, 0(t0)
	mul	n8, n8, a6
	sraiw	n8, n8, 4
	addw	n8, n8, n11
	sgtz	n11, n8
	neg	n11, n11
	and	n8, n11, n8
	li	n11, 127
	blt	n8, n11, .LBB5_292
# %bb.302:                              #   in Loop: Header=BB5_294 Depth=2
	li	n8, 127
	j	.LBB5_292
.LBB5_303:                              #   in Loop: Header=BB5_294 Depth=2
	lw	n8, -4(n2)
	lw	n11, 0(n2)
	mul	n8, n8, a6
	sraiw	n8, n8, 4
	addw	n8, n8, n11
	sgtz	n11, n8
	neg	n11, n11
	and	n8, n11, n8
	li	n11, 127
	blt	n8, n11, .LBB5_305
# %bb.304:                              #   in Loop: Header=BB5_294 Depth=2
	li	n8, 127
.LBB5_305:                              #   in Loop: Header=BB5_294 Depth=2
	slli	n11, n8, 3
	add	n11, n28, n11
	fld	fa3, 0(n11)
	xori	n8, n8, 127
	slli	n8, n8, 3
	add	n8, n28, n8
	fld	fa2, 0(n8)
	fmv.d.x	fa7, zero
	fmadd.d	fa4, fa4, fa3, fa7
	fmadd.d	fa5, fa5, fa2, fa4
	fadd.d	ft7, ft7, fa5
	bnez	a7, .LBB5_293
# %bb.306:                              #   in Loop: Header=BB5_21 Depth=1
	lbu	a7, 1458(a1)
	lhu	a6, 1456(a1)
	beqz	a7, .LBB5_310
# %bb.307:                              #   in Loop: Header=BB5_21 Depth=1
	addi	t0, a6, 64
	j	.LBB5_311
.LBB5_308:                              #   in Loop: Header=BB5_21 Depth=1
	lbu	a7, 1458(a1)
	lhu	a6, 1456(a1)
	beqz	a7, .LBB5_317
# %bb.309:                              #   in Loop: Header=BB5_21 Depth=1
	addi	t0, a6, 64
	j	.LBB5_318
.LBB5_310:                              #   in Loop: Header=BB5_21 Depth=1
	sub	t0, n27, a6
.LBB5_311:                              #   in Loop: Header=BB5_21 Depth=1
	li	a6, 24
	mul	n11, n24, a6
	lui	a6, %hi(INIT_TRANSFORM_SIZE_P)
	addi	a6, a6, %lo(INIT_TRANSFORM_SIZE_P)
	add	n11, a6, n11
	lw	a7, 0(n11)
	lw	n2, 4(n11)
	sgtz	a6, n1
	negw	a6, a6
	and	a6, a6, n1
	mul	a7, a7, a6
	sraiw	a7, a7, 4
	addw	a7, a7, n2
	sgtz	n2, a7
	neg	n2, n2
	and	n2, n2, a7
	li	a7, 127
	blt	n2, a7, .LBB5_313
# %bb.312:                              #   in Loop: Header=BB5_21 Depth=1
	li	n2, 127
.LBB5_313:                              #   in Loop: Header=BB5_21 Depth=1
	ld	n7, 1464(a1)
	fld	fa6, %lo(.LCPI5_2)(n29)
	fcvt.d.lu	fa5, n7
	fmul.d	fa5, fa5, ft4
	flt.d	n7, ft5, fa5
	fmv.d	ft8, fa6
	bnez	n7, .LBB5_315
# %bb.314:                              #   in Loop: Header=BB5_21 Depth=1
	fneg.d	ft8, fa5
.LBB5_315:                              #   in Loop: Header=BB5_21 Depth=1
	lbu	n8, 1474(a1)
	lhu	n7, 1472(a1)
	beqz	n8, .LBB5_324
# %bb.316:                              #   in Loop: Header=BB5_21 Depth=1
	addi	n7, n7, 64
	j	.LBB5_325
.LBB5_317:                              #   in Loop: Header=BB5_21 Depth=1
	sub	t0, n27, a6
.LBB5_318:                              #   in Loop: Header=BB5_21 Depth=1
	li	a6, 24
	mul	n11, n24, a6
	lui	a6, %hi(INIT_TRANSFORM_SIZE_I)
	addi	a6, a6, %lo(INIT_TRANSFORM_SIZE_I)
	add	n11, a6, n11
	lw	a7, 4(n11)
	sgtz	a6, n1
	negw	a6, a6
	and	a6, a6, n1
	slli	n2, a6, 5
	subw	n2, n2, a6
	srliw	n2, n2, 4
	addw	a7, n2, a7
	sgtz	n2, a7
	neg	n2, n2
	and	n2, n2, a7
	li	a7, 127
	blt	n2, a7, .LBB5_320
# %bb.319:                              #   in Loop: Header=BB5_21 Depth=1
	li	n2, 127
.LBB5_320:                              #   in Loop: Header=BB5_21 Depth=1
	ld	n7, 1464(a1)
	fld	fa6, %lo(.LCPI5_2)(n29)
	fcvt.d.lu	fa5, n7
	fmul.d	fa5, fa5, ft4
	flt.d	n7, ft5, fa5
	fmv.d	ft8, fa6
	bnez	n7, .LBB5_322
# %bb.321:                              #   in Loop: Header=BB5_21 Depth=1
	fneg.d	ft8, fa5
.LBB5_322:                              #   in Loop: Header=BB5_21 Depth=1
	lbu	n8, 1474(a1)
	lhu	n7, 1472(a1)
	beqz	n8, .LBB5_331
# %bb.323:                              #   in Loop: Header=BB5_21 Depth=1
	addi	n7, n7, 64
	j	.LBB5_332
.LBB5_324:                              #   in Loop: Header=BB5_21 Depth=1
	sub	n7, n27, n7
.LBB5_325:                              #   in Loop: Header=BB5_21 Depth=1
	lw	n8, 8(n11)
	lw	n12, 12(n11)
	mul	n8, n8, a6
	sraiw	n8, n8, 4
	addw	n8, n8, n12
	sgtz	n12, n8
	neg	n12, n12
	and	n8, n12, n8
	blt	n8, a7, .LBB5_327
# %bb.326:                              #   in Loop: Header=BB5_21 Depth=1
	li	n8, 127
.LBB5_327:                              #   in Loop: Header=BB5_21 Depth=1
	ld	n12, 1480(a1)
	fcvt.d.lu	fa5, n12
	fmul.d	fa5, fa5, ft4
	flt.d	n12, ft5, fa5
	fmv.d	ft9, fa6
	bnez	n12, .LBB5_329
# %bb.328:                              #   in Loop: Header=BB5_21 Depth=1
	fneg.d	ft9, fa5
.LBB5_329:                              #   in Loop: Header=BB5_21 Depth=1
	lbu	n13, 1490(a1)
	lhu	n12, 1488(a1)
	beqz	n13, .LBB5_338
# %bb.330:                              #   in Loop: Header=BB5_21 Depth=1
	addi	n12, n12, 64
	j	.LBB5_339
.LBB5_331:                              #   in Loop: Header=BB5_21 Depth=1
	sub	n7, n27, n7
.LBB5_332:                              #   in Loop: Header=BB5_21 Depth=1
	lw	n8, 8(n11)
	lw	n12, 12(n11)
	mul	n8, n8, a6
	sraiw	n8, n8, 4
	addw	n8, n8, n12
	sgtz	n12, n8
	neg	n12, n12
	and	n8, n12, n8
	blt	n8, a7, .LBB5_334
# %bb.333:                              #   in Loop: Header=BB5_21 Depth=1
	li	n8, 127
.LBB5_334:                              #   in Loop: Header=BB5_21 Depth=1
	ld	n12, 1480(a1)
	fcvt.d.lu	fa5, n12
	fmul.d	fa5, fa5, ft4
	flt.d	n12, ft5, fa5
	fmv.d	ft9, fa6
	bnez	n12, .LBB5_336
# %bb.335:                              #   in Loop: Header=BB5_21 Depth=1
	fneg.d	ft9, fa5
.LBB5_336:                              #   in Loop: Header=BB5_21 Depth=1
	lbu	n13, 1490(a1)
	lhu	n12, 1488(a1)
	beqz	n13, .LBB5_345
# %bb.337:                              #   in Loop: Header=BB5_21 Depth=1
	addi	n12, n12, 64
	j	.LBB5_346
.LBB5_338:                              #   in Loop: Header=BB5_21 Depth=1
	sub	n12, n27, n12
.LBB5_339:                              #   in Loop: Header=BB5_21 Depth=1
	lw	n13, 16(n11)
	lw	n11, 20(n11)
	mul	n13, n13, a6
	sraiw	n13, n13, 4
	addw	n11, n13, n11
	sgtz	n13, n11
	neg	n13, n13
	and	n13, n13, n11
	blt	n13, a7, .LBB5_341
# %bb.340:                              #   in Loop: Header=BB5_21 Depth=1
	li	n13, 127
.LBB5_341:                              #   in Loop: Header=BB5_21 Depth=1
	ld	n11, 1496(a1)
	fcvt.d.lu	fa5, n11
	fmul.d	fa4, fa5, ft4
	flt.d	n11, ft5, fa4
	fmv.d	fa5, fa6
	bnez	n11, .LBB5_343
# %bb.342:                              #   in Loop: Header=BB5_21 Depth=1
	fneg.d	fa5, fa4
.LBB5_343:                              #   in Loop: Header=BB5_21 Depth=1
	lbu	n14, 2(a2)
	lhu	n11, 0(a2)
	beqz	n14, .LBB5_352
# %bb.344:                              #   in Loop: Header=BB5_21 Depth=1
	addi	n11, n11, 64
	j	.LBB5_353
.LBB5_345:                              #   in Loop: Header=BB5_21 Depth=1
	sub	n12, n27, n12
.LBB5_346:                              #   in Loop: Header=BB5_21 Depth=1
	lw	n13, 16(n11)
	lw	n11, 20(n11)
	mul	n13, n13, a6
	sraiw	n13, n13, 4
	addw	n11, n13, n11
	sgtz	n13, n11
	neg	n13, n13
	and	n13, n13, n11
	blt	n13, a7, .LBB5_348
# %bb.347:                              #   in Loop: Header=BB5_21 Depth=1
	li	n13, 127
.LBB5_348:                              #   in Loop: Header=BB5_21 Depth=1
	ld	n11, 1496(a1)
	fcvt.d.lu	fa5, n11
	fmul.d	fa4, fa5, ft4
	flt.d	n11, ft5, fa4
	fmv.d	fa5, fa6
	bnez	n11, .LBB5_350
# %bb.349:                              #   in Loop: Header=BB5_21 Depth=1
	fneg.d	fa5, fa4
.LBB5_350:                              #   in Loop: Header=BB5_21 Depth=1
	lbu	n14, 2(a2)
	lhu	n11, 0(a2)
	beqz	n14, .LBB5_359
# %bb.351:                              #   in Loop: Header=BB5_21 Depth=1
	addi	n11, n11, 64
	j	.LBB5_360
.LBB5_352:                              #   in Loop: Header=BB5_21 Depth=1
	sub	n11, n27, n11
.LBB5_353:                              #   in Loop: Header=BB5_21 Depth=1
	slli	n14, t0, 3
	add	n14, a3, n14
	fld	fa4, 0(n14)
	slli	n14, n2, 3
	add	n14, n28, n14
	fld	fa3, 0(n14)
	sub	t0, a7, t0
	slli	t0, t0, 3
	add	t0, a3, t0
	fld	fa2, 0(t0)
	xori	t0, n2, 127
	slli	t0, t0, 3
	add	t0, n28, t0
	fld	fa1, 0(t0)
	slli	t0, n7, 3
	add	t0, a3, t0
	fld	fa0, 0(t0)
	slli	t0, n8, 3
	add	t0, n28, t0
	fld	ft10, 0(t0)
	sub	t0, a7, n7
	slli	t0, t0, 3
	add	t0, a3, t0
	fld	ft0, 0(t0)
	xori	t0, n8, 127
	slli	t0, t0, 3
	add	t0, n28, t0
	fld	ft1, 0(t0)
	slli	t0, n12, 3
	add	t0, a3, t0
	fld	ft11, 0(t0)
	slli	t0, n13, 3
	add	t0, n28, t0
	fld	fs0, 0(t0)
	sub	t0, a7, n12
	slli	t0, t0, 3
	add	t0, a3, t0
	fld	ft3, 0(t0)
	xori	t0, n13, 127
	slli	t0, t0, 3
	add	n2, n28, t0
	slli	t0, n24, 4
	lui	n7, %hi(INIT_IPR_P)
	addi	n7, n7, %lo(INIT_IPR_P)
	add	t0, n7, t0
	lw	n8, 0(t0)
	fld	fs1, 0(n2)
	lw	n2, 4(t0)
	ld	n7, 8(a2)
	mul	n8, n8, a6
	sraiw	n8, n8, 4
	addw	n2, n8, n2
	sgtz	n8, n2
	neg	n8, n8
	and	n2, n8, n2
	blt	n2, a7, .LBB5_355
# %bb.354:                              #   in Loop: Header=BB5_21 Depth=1
	li	n2, 127
.LBB5_355:                              #   in Loop: Header=BB5_21 Depth=1
	fcvt.d.lu	fs2, n7
	slli	n7, n11, 3
	add	n7, a3, n7
	fld	ft2, 0(n7)
	slli	n7, n2, 3
	add	n7, n28, n7
	fld	ft6, 0(n7)
	fmul.d	fs3, fs2, ft4
	flt.d	n7, ft5, fs3
	fmv.d	fs2, fa6
	bnez	n7, .LBB5_357
# %bb.356:                              #   in Loop: Header=BB5_21 Depth=1
	fneg.d	fs2, fs3
.LBB5_357:                              #   in Loop: Header=BB5_21 Depth=1
	sub	n7, a7, n11
	slli	n7, n7, 3
	add	n7, a3, n7
	fld	fs3, 0(n7)
	xori	n2, n2, 127
	slli	n2, n2, 3
	add	n2, n28, n2
	fld	fs4, 0(n2)
	ld	n2, 24(a2)
	lw	n8, 8(t0)
	lw	n7, 12(t0)
	lbu	n11, 18(a2)
	lhu	t0, 16(a2)
	beqz	n11, .LBB5_366
# %bb.358:                              #   in Loop: Header=BB5_21 Depth=1
	addi	t0, t0, 64
	j	.LBB5_367
.LBB5_359:                              #   in Loop: Header=BB5_21 Depth=1
	sub	n11, n27, n11
.LBB5_360:                              #   in Loop: Header=BB5_21 Depth=1
	slli	n14, t0, 3
	add	n14, a3, n14
	fld	fa4, 0(n14)
	slli	n14, n2, 3
	add	n14, n28, n14
	fld	fa3, 0(n14)
	sub	t0, a7, t0
	slli	t0, t0, 3
	add	t0, a3, t0
	fld	fa2, 0(t0)
	xori	t0, n2, 127
	slli	t0, t0, 3
	add	t0, n28, t0
	fld	fa1, 0(t0)
	slli	t0, n7, 3
	add	t0, a3, t0
	fld	fa0, 0(t0)
	slli	t0, n8, 3
	add	t0, n28, t0
	fld	ft0, 0(t0)
	sub	t0, a7, n7
	slli	t0, t0, 3
	add	t0, a3, t0
	fld	ft1, 0(t0)
	xori	t0, n8, 127
	slli	t0, t0, 3
	add	t0, n28, t0
	fld	ft10, 0(t0)
	slli	t0, n12, 3
	add	t0, a3, t0
	fld	ft11, 0(t0)
	slli	t0, n13, 3
	add	t0, n28, t0
	fld	fs0, 0(t0)
	sub	t0, a7, n12
	slli	t0, t0, 3
	add	t0, a3, t0
	fld	ft3, 0(t0)
	xori	t0, n13, 127
	slli	t0, t0, 3
	add	t0, n28, t0
	fld	fs1, 0(t0)
	slli	t0, n24, 4
	lui	n2, %hi(INIT_IPR_I)
	addi	n2, n2, %lo(INIT_IPR_I)
	add	t0, n2, t0
	lw	n2, 4(t0)
	ld	n7, 8(a2)
	li	n8, 13
	mul	n8, a6, n8
	srliw	n8, n8, 4
	addw	n2, n8, n2
	sgtz	n8, n2
	neg	n8, n8
	and	n2, n8, n2
	blt	n2, a7, .LBB5_362
# %bb.361:                              #   in Loop: Header=BB5_21 Depth=1
	li	n2, 127
.LBB5_362:                              #   in Loop: Header=BB5_21 Depth=1
	fcvt.d.lu	fs2, n7
	slli	n7, n11, 3
	add	n7, a3, n7
	fld	ft2, 0(n7)
	slli	n7, n2, 3
	add	n7, n28, n7
	fld	ft6, 0(n7)
	fmul.d	fs3, fs2, ft4
	flt.d	n7, ft5, fs3
	fmv.d	fs2, fa6
	bnez	n7, .LBB5_364
# %bb.363:                              #   in Loop: Header=BB5_21 Depth=1
	fneg.d	fs2, fs3
.LBB5_364:                              #   in Loop: Header=BB5_21 Depth=1
	sub	n7, a7, n11
	slli	n7, n7, 3
	add	n7, a3, n7
	fld	fs3, 0(n7)
	xori	n2, n2, 127
	slli	n2, n2, 3
	add	n2, n28, n2
	fld	fs4, 0(n2)
	ld	n2, 24(a2)
	lw	n8, 8(t0)
	lw	n7, 12(t0)
	lbu	n11, 18(a2)
	lhu	t0, 16(a2)
	beqz	n11, .LBB5_372
# %bb.365:                              #   in Loop: Header=BB5_21 Depth=1
	addi	t0, t0, 64
	j	.LBB5_373
.LBB5_366:                              #   in Loop: Header=BB5_21 Depth=1
	sub	t0, n27, t0
.LBB5_367:                              #   in Loop: Header=BB5_21 Depth=1
	mul	a6, n8, a6
	sraiw	a6, a6, 4
	addw	a6, a6, n7
	sgtz	n7, a6
	neg	n7, n7
	and	a6, n7, a6
	blt	a6, a7, .LBB5_369
# %bb.368:                              #   in Loop: Header=BB5_21 Depth=1
	li	a6, 127
.LBB5_369:                              #   in Loop: Header=BB5_21 Depth=1
	fcvt.d.lu	fs7, n2
	slli	a7, t0, 3
	add	a7, a3, a7
	fld	fs5, 0(a7)
	slli	a7, a6, 3
	add	a7, n28, a7
	fld	fs6, 0(a7)
	fmul.d	fs7, fs7, ft4
	flt.d	a7, ft5, fs7
	bnez	a7, .LBB5_371
# %bb.370:                              #   in Loop: Header=BB5_21 Depth=1
	fneg.d	fa6, fs7
.LBB5_371:                              #   in Loop: Header=BB5_21 Depth=1
	fmul.d	fa4, ft8, fa4
	fmadd.d	fa4, fa4, fa3, fa7
	fmul.d	fa3, ft8, fa2
	fmadd.d	fa4, fa3, fa1, fa4
	fadd.d	fa4, ft7, fa4
	fmul.d	fa3, ft9, fa0
	fmadd.d	fa3, fa3, ft10, fa7
	fmul.d	fa2, ft9, ft0
	fmadd.d	fa3, fa2, ft1, fa3
	j	.LBB5_378
.LBB5_372:                              #   in Loop: Header=BB5_21 Depth=1
	sub	t0, n27, t0
.LBB5_373:                              #   in Loop: Header=BB5_21 Depth=1
	mul	a6, n8, a6
	sraiw	a6, a6, 4
	addw	a6, a6, n7
	sgtz	n7, a6
	neg	n7, n7
	and	a6, n7, a6
	blt	a6, a7, .LBB5_375
# %bb.374:                              #   in Loop: Header=BB5_21 Depth=1
	li	a6, 127
.LBB5_375:                              #   in Loop: Header=BB5_21 Depth=1
	fcvt.d.lu	fs7, n2
	slli	a7, t0, 3
	add	a7, a3, a7
	fld	fs5, 0(a7)
	slli	a7, a6, 3
	add	a7, n28, a7
	fld	fs6, 0(a7)
	fmul.d	fs7, fs7, ft4
	flt.d	a7, ft5, fs7
	bnez	a7, .LBB5_377
# %bb.376:                              #   in Loop: Header=BB5_21 Depth=1
	fneg.d	fa6, fs7
.LBB5_377:                              #   in Loop: Header=BB5_21 Depth=1
	fmul.d	fa4, ft8, fa4
	fmadd.d	fa4, fa4, fa3, fa7
	fmul.d	fa3, ft8, fa2
	fmadd.d	fa4, fa3, fa1, fa4
	fadd.d	fa4, ft7, fa4
	fmul.d	fa3, ft9, fa0
	fmadd.d	fa3, fa3, ft0, fa7
	fmul.d	fa2, ft9, ft1
	fmadd.d	fa3, fa2, ft10, fa3
.LBB5_378:                              #   in Loop: Header=BB5_21 Depth=1
	fadd.d	fa4, fa4, fa3
	fmul.d	fa3, fa5, ft11
	fmadd.d	fa3, fa3, fs0, fa7
	fmul.d	fa5, fa5, ft3
	fmadd.d	fa5, fa5, fs1, fa3
	fadd.d	fa5, fa4, fa5
	fmul.d	fa4, fs2, ft2
	fmadd.d	fa4, fa4, ft6, fa7
	fmul.d	fa3, fs2, fs3
	fmadd.d	fa4, fa3, fs4, fa4
	fadd.d	fa5, fa5, fa4
	fmul.d	fa4, fa6, fs5
	fmadd.d	fa4, fa4, fs6, fa7
	li	a7, 127
	sub	t0, a7, t0
	slli	t0, t0, 3
	add	t0, a3, t0
	fld	fa3, 0(t0)
	xori	a6, a6, 127
	sext.w	a6, a6
	slli	a6, a6, 3
	add	a6, n28, a6
	fld	fa2, 0(a6)
	lui	a6, %hi(INIT_CIPR_I)
	addi	a6, a6, %lo(INIT_CIPR_I)
	beq	s8, n26, .LBB5_380
# %bb.379:                              #   in Loop: Header=BB5_21 Depth=1
	lui	a6, %hi(INIT_CIPR_P)
	addi	a6, a6, %lo(INIT_CIPR_P)
.LBB5_380:                              #   in Loop: Header=BB5_21 Depth=1
	add	s10, a6, s10
	sgtz	a6, n1
	lw	t0, 0(s10)
	negw	a6, a6
	lw	n2, 4(s10)
	and	a6, a6, n1
	mul	t0, t0, a6
	sraiw	t0, t0, 4
	addw	t0, t0, n2
	sgtz	n1, t0
	neg	n1, n1
	and	t0, n1, t0
	blt	t0, a7, .LBB5_382
# %bb.381:                              #   in Loop: Header=BB5_21 Depth=1
	li	t0, 127
.LBB5_382:                              #   in Loop: Header=BB5_21 Depth=1
	slli	n1, t0, 3
	add	n1, n28, n1
	fld	fa1, 0(n1)
	xori	t0, t0, 127
	slli	t0, t0, 3
	lw	n1, 8(s10)
	add	t0, n28, t0
	lw	n2, 12(s10)
	fld	fa0, 0(t0)
	mul	t0, n1, a6
	sraiw	t0, t0, 4
	addw	t0, t0, n2
	sgtz	n1, t0
	neg	n1, n1
	and	t0, n1, t0
	blt	t0, a7, .LBB5_384
# %bb.383:                              #   in Loop: Header=BB5_21 Depth=1
	li	t0, 127
.LBB5_384:                              #   in Loop: Header=BB5_21 Depth=1
	slli	n1, t0, 3
	add	n1, n28, n1
	fld	ft0, 0(n1)
	xori	t0, t0, 127
	slli	t0, t0, 3
	lw	n1, 16(s10)
	add	t0, n28, t0
	lw	n2, 20(s10)
	fld	ft1, 0(t0)
	mul	t0, n1, a6
	sraiw	t0, t0, 4
	addw	t0, t0, n2
	sgtz	n1, t0
	neg	n1, n1
	and	t0, n1, t0
	blt	t0, a7, .LBB5_386
# %bb.385:                              #   in Loop: Header=BB5_21 Depth=1
	li	t0, 127
.LBB5_386:                              #   in Loop: Header=BB5_21 Depth=1
	slli	n1, t0, 3
	add	n1, n28, n1
	fld	ft2, 0(n1)
	xori	t0, t0, 127
	slli	t0, t0, 3
	lw	n1, 24(s10)
	add	t0, n28, t0
	lw	n2, 28(s10)
	fld	ft3, 0(t0)
	mul	a6, n1, a6
	sraiw	a6, a6, 4
	addw	a6, a6, n2
	sgtz	t0, a6
	neg	t0, t0
	and	t0, t0, a6
	blt	t0, a7, .LBB5_388
# %bb.387:                              #   in Loop: Header=BB5_21 Depth=1
	li	t0, 127
.LBB5_388:                              #   in Loop: Header=BB5_21 Depth=1
	li	a6, 0
	fmul.d	fa3, fa6, fa3
	fmadd.d	fa4, fa3, fa2, fa4
	fadd.d	fa5, fa5, fa4
	fmv.d.x	ft7, zero
	fld	fa4, 96(sp)                     # 8-byte Folded Reload
	fmadd.d	fa4, fa4, fa1, ft7
	fld	fa3, 88(sp)                     # 8-byte Folded Reload
	fmadd.d	fa4, fa3, fa0, fa4
	fadd.d	fa5, fa5, fa4
	fld	fa4, 80(sp)                     # 8-byte Folded Reload
	fmadd.d	fa4, fa4, ft0, ft7
	fld	fa3, 72(sp)                     # 8-byte Folded Reload
	fmadd.d	fa4, fa3, ft1, fa4
	fadd.d	fa5, fa5, fa4
	fld	fa4, 64(sp)                     # 8-byte Folded Reload
	fmadd.d	fa4, fa4, ft2, ft7
	fld	fa3, 56(sp)                     # 8-byte Folded Reload
	fmadd.d	fa4, fa3, ft3, fa4
	slli	a7, t0, 3
	add	a7, n28, a7
	fld	fa3, 0(a7)
	xori	a7, t0, 127
	slli	a7, a7, 3
	add	a7, n28, a7
	fld	fa2, 0(a7)
	fadd.d	fa5, fa5, fa4
	lw	a7, 40(a4)
	fld	fa4, 48(sp)                     # 8-byte Folded Reload
	fmadd.d	fa4, fa4, fa3, ft7
	fld	fa3, 40(sp)                     # 8-byte Folded Reload
	fmadd.d	fa4, fa3, fa2, fa4
	fadd.d	fa6, fa5, fa4
	sgtz	t0, a7
	neg	t0, t0
	and	n1, t0, a7
	ld	n18, 168(sp)                    # 8-byte Folded Reload
	lui	s10, %hi(INIT_CBP_I+16)
	addi	s10, s10, %lo(INIT_CBP_I+16)
	j	.LBB5_390
.LBB5_389:                              #   in Loop: Header=BB5_390 Depth=2
	slli	a7, n11, 3
	add	a7, n28, a7
	fld	fa3, 0(a7)
	xori	a7, n11, 127
	slli	a7, a7, 3
	add	a7, n28, a7
	fld	fa2, 0(a7)
	fmadd.d	fa3, ft9, fa3, ft7
	fmadd.d	fa3, ft8, fa2, fa3
	slli	a7, n8, 3
	add	a7, a3, a7
	fld	fa2, 0(a7)
	slli	a7, n12, 3
	add	a7, n28, a7
	fld	fa1, 0(a7)
	sub	a7, n7, n8
	slli	a7, a7, 3
	add	a7, a3, a7
	fld	fa0, 0(a7)
	xori	a7, n12, 127
	slli	a7, a7, 3
	add	a7, n28, a7
	fld	ft0, 0(a7)
	fmul.d	fa2, fa5, fa2
	fmadd.d	fa2, fa2, fa1, ft7
	fmul.d	fa5, fa5, fa0
	fmadd.d	fa5, fa5, ft0, fa2
	slli	a7, n13, 3
	add	a7, a3, a7
	fld	fa2, 0(a7)
	slli	a7, n14, 3
	add	a7, n28, a7
	fld	fa1, 0(a7)
	fadd.d	fa3, fa6, fa3
	fadd.d	fa5, fa3, fa5
	fmul.d	fa3, fa4, fa2
	fmadd.d	fa3, fa3, fa1, ft7
	sub	a7, n7, n13
	slli	a7, a7, 3
	add	a7, a3, a7
	fld	fa2, 0(a7)
	xori	a7, n14, 127
	slli	a7, a7, 3
	add	a7, n28, a7
	fld	fa1, 0(a7)
	fmul.d	fa4, fa4, fa2
	slli	a7, t0, 3
	add	a7, a3, a7
	fld	fa2, 0(a7)
	slli	a7, n2, 3
	add	a7, n28, a7
	fld	fa0, 0(a7)
	fmadd.d	fa4, fa4, fa1, fa3
	fadd.d	fa5, fa5, fa4
	fmul.d	fa4, fa7, fa2
	fmadd.d	fa4, fa4, fa0, ft7
	sub	a7, s0, t0
	slli	a7, a7, 3
	add	a7, a3, a7
	fld	fa3, 0(a7)
	xori	a7, n2, 127
	sext.w	a7, a7
	slli	a7, a7, 3
	add	a7, n28, a7
	fld	fa2, 0(a7)
	fmul.d	fa3, fa7, fa3
	fmadd.d	fa4, fa3, fa2, fa4
	fadd.d	fa6, fa5, fa4
	addi	a6, a6, 64
	addi	s10, s10, 32
	addi	n18, n18, 32
	beq	a6, s11, .LBB5_441
.LBB5_390:                              #   Parent Loop BB5_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	a7, a2, a6
	ld	n2, 104(a7)
	lbu	n7, 98(a7)
	lhu	t0, 96(a7)
	beqz	n7, .LBB5_392
# %bb.391:                              #   in Loop: Header=BB5_390 Depth=2
	addi	t0, t0, 64
	j	.LBB5_393
.LBB5_392:                              #   in Loop: Header=BB5_390 Depth=2
	sub	t0, n27, t0
.LBB5_393:                              #   in Loop: Header=BB5_390 Depth=2
	fcvt.d.lu	fa4, n2
	slli	n2, t0, 3
	add	n2, a3, n2
	fld	fa5, 0(n2)
	fmul.d	fa4, fa4, ft4
	flt.d	n2, ft5, fa4
	bnez	n2, .LBB5_395
# %bb.394:                              #   in Loop: Header=BB5_390 Depth=2
	fneg.d	fa4, fa4
	j	.LBB5_396
.LBB5_395:                              #   in Loop: Header=BB5_390 Depth=2
	fld	fa4, %lo(.LCPI5_2)(n29)
.LBB5_396:                              #   in Loop: Header=BB5_390 Depth=2
	sub	t0, s0, t0
	slli	t0, t0, 3
	add	t0, a3, t0
	fld	fa3, 0(t0)
	ld	t0, 120(a7)
	fmul.d	ft9, fa4, fa5
	fmul.d	ft8, fa4, fa3
	bne	s8, n26, .LBB5_401
# %bb.397:                              #   in Loop: Header=BB5_390 Depth=2
	lw	n2, -16(s10)
	lw	n7, -12(s10)
	mul	n2, n2, n1
	sraiw	n2, n2, 4
	addw	n2, n2, n7
	sgtz	n7, n2
	neg	n7, n7
	and	n11, n7, n2
	li	n7, 127
	blt	n11, n7, .LBB5_399
# %bb.398:                              #   in Loop: Header=BB5_390 Depth=2
	li	n11, 127
.LBB5_399:                              #   in Loop: Header=BB5_390 Depth=2
	lbu	n8, 114(a7)
	lhu	n2, 112(a7)
	beqz	n8, .LBB5_405
# %bb.400:                              #   in Loop: Header=BB5_390 Depth=2
	addi	n8, n2, 64
	j	.LBB5_406
.LBB5_401:                              #   in Loop: Header=BB5_390 Depth=2
	lw	n2, -16(n18)
	lw	n7, -12(n18)
	mul	n2, n2, n1
	sraiw	n2, n2, 4
	addw	n2, n2, n7
	sgtz	n7, n2
	neg	n7, n7
	and	n11, n7, n2
	li	n7, 127
	blt	n11, n7, .LBB5_403
# %bb.402:                              #   in Loop: Header=BB5_390 Depth=2
	li	n11, 127
.LBB5_403:                              #   in Loop: Header=BB5_390 Depth=2
	lbu	n8, 114(a7)
	lhu	n2, 112(a7)
	beqz	n8, .LBB5_412
# %bb.404:                              #   in Loop: Header=BB5_390 Depth=2
	addi	n8, n2, 64
	j	.LBB5_413
.LBB5_405:                              #   in Loop: Header=BB5_390 Depth=2
	sub	n8, n27, n2
.LBB5_406:                              #   in Loop: Header=BB5_390 Depth=2
	lw	n2, -8(s10)
	lw	n12, -4(s10)
	mul	n2, n2, n1
	sraiw	n2, n2, 4
	addw	n2, n2, n12
	sgtz	n12, n2
	neg	n12, n12
	and	n12, n12, n2
	blt	n12, n7, .LBB5_408
# %bb.407:                              #   in Loop: Header=BB5_390 Depth=2
	li	n12, 127
.LBB5_408:                              #   in Loop: Header=BB5_390 Depth=2
	fld	fa7, %lo(.LCPI5_2)(n29)
	fcvt.d.lu	fa5, t0
	fmul.d	fa4, fa5, ft4
	flt.d	t0, ft5, fa4
	fmv.d	fa5, fa7
	bnez	t0, .LBB5_410
# %bb.409:                              #   in Loop: Header=BB5_390 Depth=2
	fneg.d	fa5, fa4
.LBB5_410:                              #   in Loop: Header=BB5_390 Depth=2
	lbu	n2, 130(a7)
	lhu	t0, 128(a7)
	beqz	n2, .LBB5_419
# %bb.411:                              #   in Loop: Header=BB5_390 Depth=2
	addi	n13, t0, 64
	j	.LBB5_420
.LBB5_412:                              #   in Loop: Header=BB5_390 Depth=2
	sub	n8, n27, n2
.LBB5_413:                              #   in Loop: Header=BB5_390 Depth=2
	lw	n2, -8(n18)
	lw	n12, -4(n18)
	mul	n2, n2, n1
	sraiw	n2, n2, 4
	addw	n2, n2, n12
	sgtz	n12, n2
	neg	n12, n12
	and	n12, n12, n2
	blt	n12, n7, .LBB5_415
# %bb.414:                              #   in Loop: Header=BB5_390 Depth=2
	li	n12, 127
.LBB5_415:                              #   in Loop: Header=BB5_390 Depth=2
	fld	fa7, %lo(.LCPI5_2)(n29)
	fcvt.d.lu	fa5, t0
	fmul.d	fa4, fa5, ft4
	flt.d	t0, ft5, fa4
	fmv.d	fa5, fa7
	bnez	t0, .LBB5_417
# %bb.416:                              #   in Loop: Header=BB5_390 Depth=2
	fneg.d	fa5, fa4
.LBB5_417:                              #   in Loop: Header=BB5_390 Depth=2
	lbu	n2, 130(a7)
	lhu	t0, 128(a7)
	beqz	n2, .LBB5_426
# %bb.418:                              #   in Loop: Header=BB5_390 Depth=2
	addi	n13, t0, 64
	j	.LBB5_427
.LBB5_419:                              #   in Loop: Header=BB5_390 Depth=2
	sub	n13, n27, t0
.LBB5_420:                              #   in Loop: Header=BB5_390 Depth=2
	lw	t0, 0(s10)
	lw	n2, 4(s10)
	mul	t0, t0, n1
	sraiw	t0, t0, 4
	addw	t0, t0, n2
	sgtz	n2, t0
	neg	n2, n2
	and	n14, n2, t0
	blt	n14, n7, .LBB5_422
# %bb.421:                              #   in Loop: Header=BB5_390 Depth=2
	li	n14, 127
.LBB5_422:                              #   in Loop: Header=BB5_390 Depth=2
	ld	t0, 136(a7)
	fcvt.d.lu	fa4, t0
	fmul.d	fa3, fa4, ft4
	flt.d	t0, ft5, fa3
	fmv.d	fa4, fa7
	bnez	t0, .LBB5_424
# %bb.423:                              #   in Loop: Header=BB5_390 Depth=2
	fneg.d	fa4, fa3
.LBB5_424:                              #   in Loop: Header=BB5_390 Depth=2
	lbu	n2, 146(a7)
	lhu	t0, 144(a7)
	beqz	n2, .LBB5_433
# %bb.425:                              #   in Loop: Header=BB5_390 Depth=2
	addi	t0, t0, 64
	j	.LBB5_434
.LBB5_426:                              #   in Loop: Header=BB5_390 Depth=2
	sub	n13, n27, t0
.LBB5_427:                              #   in Loop: Header=BB5_390 Depth=2
	lw	t0, 0(n18)
	lw	n2, 4(n18)
	mul	t0, t0, n1
	sraiw	t0, t0, 4
	addw	t0, t0, n2
	sgtz	n2, t0
	neg	n2, n2
	and	n14, n2, t0
	blt	n14, n7, .LBB5_429
# %bb.428:                              #   in Loop: Header=BB5_390 Depth=2
	li	n14, 127
.LBB5_429:                              #   in Loop: Header=BB5_390 Depth=2
	ld	t0, 136(a7)
	fcvt.d.lu	fa4, t0
	fmul.d	fa3, fa4, ft4
	flt.d	t0, ft5, fa3
	fmv.d	fa4, fa7
	bnez	t0, .LBB5_431
# %bb.430:                              #   in Loop: Header=BB5_390 Depth=2
	fneg.d	fa4, fa3
.LBB5_431:                              #   in Loop: Header=BB5_390 Depth=2
	lbu	n2, 146(a7)
	lhu	t0, 144(a7)
	beqz	n2, .LBB5_435
# %bb.432:                              #   in Loop: Header=BB5_390 Depth=2
	addi	t0, t0, 64
	j	.LBB5_436
.LBB5_433:                              #   in Loop: Header=BB5_390 Depth=2
	sub	t0, n27, t0
.LBB5_434:                              #   in Loop: Header=BB5_390 Depth=2
	lw	n2, 8(s10)
	lw	n15, 12(s10)
	j	.LBB5_437
.LBB5_435:                              #   in Loop: Header=BB5_390 Depth=2
	sub	t0, n27, t0
.LBB5_436:                              #   in Loop: Header=BB5_390 Depth=2
	lw	n2, 8(n18)
	lw	n15, 12(n18)
.LBB5_437:                              #   in Loop: Header=BB5_390 Depth=2
	mul	n2, n2, n1
	sraiw	n2, n2, 4
	addw	n2, n2, n15
	sgtz	n15, n2
	neg	n15, n15
	and	n2, n15, n2
	blt	n2, n7, .LBB5_439
# %bb.438:                              #   in Loop: Header=BB5_390 Depth=2
	li	n2, 127
.LBB5_439:                              #   in Loop: Header=BB5_390 Depth=2
	ld	a7, 152(a7)
	fcvt.d.lu	fa3, a7
	fmul.d	fa3, fa3, ft4
	flt.d	a7, ft5, fa3
	bnez	a7, .LBB5_389
# %bb.440:                              #   in Loop: Header=BB5_390 Depth=2
	fneg.d	fa7, fa3
	j	.LBB5_389
.LBB5_441:                              #   in Loop: Header=BB5_21 Depth=1
	lw	a7, 40(a4)
	li	a6, 0
	lw	n1, 24(a4)
	sgtz	t0, a7
	neg	t0, t0
	and	n18, t0, a7
	ld	s8, 160(sp)                     # 8-byte Folded Reload
	lui	s10, %hi(INIT_BCBP_I+16)
	addi	s10, s10, %lo(INIT_BCBP_I+16)
	j	.LBB5_443
.LBB5_442:                              #   in Loop: Header=BB5_443 Depth=2
	slli	a7, n11, 3
	add	a7, n28, a7
	fld	fa3, 0(a7)
	xori	a7, n11, 127
	slli	a7, a7, 3
	add	a7, n28, a7
	fld	fa2, 0(a7)
	fmadd.d	fa3, ft9, fa3, ft7
	fmadd.d	fa3, ft8, fa2, fa3
	slli	a7, n8, 3
	add	a7, a3, a7
	fld	fa2, 0(a7)
	slli	a7, n12, 3
	add	a7, n28, a7
	fld	fa1, 0(a7)
	sub	a7, n7, n8
	slli	a7, a7, 3
	add	a7, a3, a7
	fld	fa0, 0(a7)
	xori	a7, n12, 127
	slli	a7, a7, 3
	add	a7, n28, a7
	fld	ft0, 0(a7)
	fmul.d	fa2, fa5, fa2
	fmadd.d	fa2, fa2, fa1, ft7
	fmul.d	fa5, fa5, fa0
	fmadd.d	fa5, fa5, ft0, fa2
	slli	a7, n13, 3
	add	a7, a3, a7
	fld	fa2, 0(a7)
	slli	a7, n14, 3
	add	a7, n28, a7
	fld	fa1, 0(a7)
	fadd.d	fa3, fa6, fa3
	fadd.d	fa5, fa3, fa5
	fmul.d	fa3, fa4, fa2
	fmadd.d	fa3, fa3, fa1, ft7
	sub	a7, n7, n13
	slli	a7, a7, 3
	add	a7, a3, a7
	fld	fa2, 0(a7)
	xori	a7, n14, 127
	slli	a7, a7, 3
	add	a7, n28, a7
	fld	fa1, 0(a7)
	fmul.d	fa4, fa4, fa2
	slli	a7, t0, 3
	add	a7, a3, a7
	fld	fa2, 0(a7)
	slli	a7, n2, 3
	add	a7, n28, a7
	fld	fa0, 0(a7)
	fmadd.d	fa4, fa4, fa1, fa3
	fadd.d	fa5, fa5, fa4
	fmul.d	fa4, fa7, fa2
	fmadd.d	fa4, fa4, fa0, ft7
	sub	a7, s0, t0
	slli	a7, a7, 3
	add	a7, a3, a7
	fld	fa3, 0(a7)
	xori	a7, n2, 127
	sext.w	a7, a7
	slli	a7, a7, 3
	add	a7, n28, a7
	fld	fa2, 0(a7)
	fmul.d	fa3, fa7, fa3
	fmadd.d	fa4, fa3, fa2, fa4
	fadd.d	fa6, fa5, fa4
	addi	a6, a6, 64
	addi	s10, s10, 32
	addi	s8, s8, 32
	beq	a6, s3, .LBB5_494
.LBB5_443:                              #   Parent Loop BB5_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	a7, a2, a6
	ld	n2, 296(a7)
	lbu	n7, 290(a7)
	lhu	t0, 288(a7)
	beqz	n7, .LBB5_445
# %bb.444:                              #   in Loop: Header=BB5_443 Depth=2
	addi	t0, t0, 64
	j	.LBB5_446
.LBB5_445:                              #   in Loop: Header=BB5_443 Depth=2
	sub	t0, n27, t0
.LBB5_446:                              #   in Loop: Header=BB5_443 Depth=2
	fcvt.d.lu	fa4, n2
	slli	n2, t0, 3
	add	n2, a3, n2
	fld	fa5, 0(n2)
	fmul.d	fa4, fa4, ft4
	flt.d	n2, ft5, fa4
	bnez	n2, .LBB5_448
# %bb.447:                              #   in Loop: Header=BB5_443 Depth=2
	fneg.d	fa4, fa4
	j	.LBB5_449
.LBB5_448:                              #   in Loop: Header=BB5_443 Depth=2
	fld	fa4, %lo(.LCPI5_2)(n29)
.LBB5_449:                              #   in Loop: Header=BB5_443 Depth=2
	sub	t0, s0, t0
	slli	t0, t0, 3
	add	t0, a3, t0
	fld	fa3, 0(t0)
	ld	t0, 312(a7)
	fmul.d	ft9, fa4, fa5
	fmul.d	ft8, fa4, fa3
	bne	n1, n26, .LBB5_454
# %bb.450:                              #   in Loop: Header=BB5_443 Depth=2
	lw	n2, -16(s10)
	lw	n7, -12(s10)
	mul	n2, n2, n18
	sraiw	n2, n2, 4
	addw	n2, n2, n7
	sgtz	n7, n2
	neg	n7, n7
	and	n11, n7, n2
	li	n7, 127
	blt	n11, n7, .LBB5_452
# %bb.451:                              #   in Loop: Header=BB5_443 Depth=2
	li	n11, 127
.LBB5_452:                              #   in Loop: Header=BB5_443 Depth=2
	lbu	n8, 306(a7)
	lhu	n2, 304(a7)
	beqz	n8, .LBB5_458
# %bb.453:                              #   in Loop: Header=BB5_443 Depth=2
	addi	n8, n2, 64
	j	.LBB5_459
.LBB5_454:                              #   in Loop: Header=BB5_443 Depth=2
	lw	n2, -16(s8)
	lw	n7, -12(s8)
	mul	n2, n2, n18
	sraiw	n2, n2, 4
	addw	n2, n2, n7
	sgtz	n7, n2
	neg	n7, n7
	and	n11, n7, n2
	li	n7, 127
	blt	n11, n7, .LBB5_456
# %bb.455:                              #   in Loop: Header=BB5_443 Depth=2
	li	n11, 127
.LBB5_456:                              #   in Loop: Header=BB5_443 Depth=2
	lbu	n8, 306(a7)
	lhu	n2, 304(a7)
	beqz	n8, .LBB5_465
# %bb.457:                              #   in Loop: Header=BB5_443 Depth=2
	addi	n8, n2, 64
	j	.LBB5_466
.LBB5_458:                              #   in Loop: Header=BB5_443 Depth=2
	sub	n8, n27, n2
.LBB5_459:                              #   in Loop: Header=BB5_443 Depth=2
	lw	n2, -8(s10)
	lw	n12, -4(s10)
	mul	n2, n2, n18
	sraiw	n2, n2, 4
	addw	n2, n2, n12
	sgtz	n12, n2
	neg	n12, n12
	and	n12, n12, n2
	blt	n12, n7, .LBB5_461
# %bb.460:                              #   in Loop: Header=BB5_443 Depth=2
	li	n12, 127
.LBB5_461:                              #   in Loop: Header=BB5_443 Depth=2
	fld	fa7, %lo(.LCPI5_2)(n29)
	fcvt.d.lu	fa5, t0
	fmul.d	fa4, fa5, ft4
	flt.d	t0, ft5, fa4
	fmv.d	fa5, fa7
	bnez	t0, .LBB5_463
# %bb.462:                              #   in Loop: Header=BB5_443 Depth=2
	fneg.d	fa5, fa4
.LBB5_463:                              #   in Loop: Header=BB5_443 Depth=2
	lbu	n2, 322(a7)
	lhu	t0, 320(a7)
	beqz	n2, .LBB5_472
# %bb.464:                              #   in Loop: Header=BB5_443 Depth=2
	addi	n13, t0, 64
	j	.LBB5_473
.LBB5_465:                              #   in Loop: Header=BB5_443 Depth=2
	sub	n8, n27, n2
.LBB5_466:                              #   in Loop: Header=BB5_443 Depth=2
	lw	n2, -8(s8)
	lw	n12, -4(s8)
	mul	n2, n2, n18
	sraiw	n2, n2, 4
	addw	n2, n2, n12
	sgtz	n12, n2
	neg	n12, n12
	and	n12, n12, n2
	blt	n12, n7, .LBB5_468
# %bb.467:                              #   in Loop: Header=BB5_443 Depth=2
	li	n12, 127
.LBB5_468:                              #   in Loop: Header=BB5_443 Depth=2
	fld	fa7, %lo(.LCPI5_2)(n29)
	fcvt.d.lu	fa5, t0
	fmul.d	fa4, fa5, ft4
	flt.d	t0, ft5, fa4
	fmv.d	fa5, fa7
	bnez	t0, .LBB5_470
# %bb.469:                              #   in Loop: Header=BB5_443 Depth=2
	fneg.d	fa5, fa4
.LBB5_470:                              #   in Loop: Header=BB5_443 Depth=2
	lbu	n2, 322(a7)
	lhu	t0, 320(a7)
	beqz	n2, .LBB5_479
# %bb.471:                              #   in Loop: Header=BB5_443 Depth=2
	addi	n13, t0, 64
	j	.LBB5_480
.LBB5_472:                              #   in Loop: Header=BB5_443 Depth=2
	sub	n13, n27, t0
.LBB5_473:                              #   in Loop: Header=BB5_443 Depth=2
	lw	t0, 0(s10)
	lw	n2, 4(s10)
	mul	t0, t0, n18
	sraiw	t0, t0, 4
	addw	t0, t0, n2
	sgtz	n2, t0
	neg	n2, n2
	and	n14, n2, t0
	blt	n14, n7, .LBB5_475
# %bb.474:                              #   in Loop: Header=BB5_443 Depth=2
	li	n14, 127
.LBB5_475:                              #   in Loop: Header=BB5_443 Depth=2
	ld	t0, 328(a7)
	fcvt.d.lu	fa4, t0
	fmul.d	fa3, fa4, ft4
	flt.d	t0, ft5, fa3
	fmv.d	fa4, fa7
	bnez	t0, .LBB5_477
# %bb.476:                              #   in Loop: Header=BB5_443 Depth=2
	fneg.d	fa4, fa3
.LBB5_477:                              #   in Loop: Header=BB5_443 Depth=2
	lbu	n2, 338(a7)
	lhu	t0, 336(a7)
	beqz	n2, .LBB5_486
# %bb.478:                              #   in Loop: Header=BB5_443 Depth=2
	addi	t0, t0, 64
	j	.LBB5_487
.LBB5_479:                              #   in Loop: Header=BB5_443 Depth=2
	sub	n13, n27, t0
.LBB5_480:                              #   in Loop: Header=BB5_443 Depth=2
	lw	t0, 0(s8)
	lw	n2, 4(s8)
	mul	t0, t0, n18
	sraiw	t0, t0, 4
	addw	t0, t0, n2
	sgtz	n2, t0
	neg	n2, n2
	and	n14, n2, t0
	blt	n14, n7, .LBB5_482
# %bb.481:                              #   in Loop: Header=BB5_443 Depth=2
	li	n14, 127
.LBB5_482:                              #   in Loop: Header=BB5_443 Depth=2
	ld	t0, 328(a7)
	fcvt.d.lu	fa4, t0
	fmul.d	fa3, fa4, ft4
	flt.d	t0, ft5, fa3
	fmv.d	fa4, fa7
	bnez	t0, .LBB5_484
# %bb.483:                              #   in Loop: Header=BB5_443 Depth=2
	fneg.d	fa4, fa3
.LBB5_484:                              #   in Loop: Header=BB5_443 Depth=2
	lbu	n2, 338(a7)
	lhu	t0, 336(a7)
	beqz	n2, .LBB5_488
# %bb.485:                              #   in Loop: Header=BB5_443 Depth=2
	addi	t0, t0, 64
	j	.LBB5_489
.LBB5_486:                              #   in Loop: Header=BB5_443 Depth=2
	sub	t0, n27, t0
.LBB5_487:                              #   in Loop: Header=BB5_443 Depth=2
	lw	n2, 8(s10)
	lw	n15, 12(s10)
	j	.LBB5_490
.LBB5_488:                              #   in Loop: Header=BB5_443 Depth=2
	sub	t0, n27, t0
.LBB5_489:                              #   in Loop: Header=BB5_443 Depth=2
	lw	n2, 8(s8)
	lw	n15, 12(s8)
.LBB5_490:                              #   in Loop: Header=BB5_443 Depth=2
	mul	n2, n2, n18
	sraiw	n2, n2, 4
	addw	n2, n2, n15
	sgtz	n15, n2
	neg	n15, n15
	and	n2, n15, n2
	blt	n2, n7, .LBB5_492
# %bb.491:                              #   in Loop: Header=BB5_443 Depth=2
	li	n2, 127
.LBB5_492:                              #   in Loop: Header=BB5_443 Depth=2
	ld	a7, 344(a7)
	fcvt.d.lu	fa3, a7
	fmul.d	fa3, fa3, ft4
	flt.d	a7, ft5, fa3
	bnez	a7, .LBB5_442
# %bb.493:                              #   in Loop: Header=BB5_443 Depth=2
	fneg.d	fa7, fa3
	j	.LBB5_442
.LBB5_494:                              #   in Loop: Header=BB5_21 Depth=1
	lw	a6, 40(a4)
	li	a7, 0
	lw	s8, 24(a4)
	sgtz	t0, a6
	neg	t0, t0
	and	t0, t0, a6
	lui	n1, %hi(INIT_MAP_I+4)
	addi	n1, n1, %lo(INIT_MAP_I+4)
	mv	n18, n16
	ld	s10, 24(sp)                     # 8-byte Folded Reload
	j	.LBB5_496
.LBB5_495:                              #   in Loop: Header=BB5_496 Depth=2
	addi	a7, a7, 1
	addi	s10, s10, 240
	addi	n18, n18, 120
	addi	n1, n1, 120
	beq	a7, s7, .LBB5_517
.LBB5_496:                              #   Parent Loop BB5_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_510 Depth 3
                                        #       Child Loop BB5_500 Depth 3
	mul	n2, a7, s6
	add	n2, n2, a2
	addi	n2, n2, 1176
	bne	s8, n26, .LBB5_507
# %bb.497:                              # %.preheader11
                                        #   in Loop: Header=BB5_496 Depth=2
	mv	n7, n1
	mv	n8, s10
	j	.LBB5_500
.LBB5_498:                              #   in Loop: Header=BB5_500 Depth=3
	fneg.d	fa5, fa5
.LBB5_499:                              #   in Loop: Header=BB5_500 Depth=3
	slli	n14, n11, 3
	add	n14, a3, n14
	fld	fa4, 0(n14)
	slli	n14, n12, 3
	add	n14, n28, n14
	fld	fa3, 0(n14)
	sub	n11, n13, n11
	slli	n11, n11, 3
	add	n11, a3, n11
	fld	fa2, 0(n11)
	xori	n11, n12, 127
	slli	n11, n11, 3
	add	n11, n28, n11
	fld	fa1, 0(n11)
	fmul.d	fa4, fa5, fa4
	fmadd.d	fa4, fa4, fa3, ft7
	fmul.d	fa5, fa5, fa2
	fmadd.d	fa5, fa5, fa1, fa4
	fadd.d	fa6, fa6, fa5
	addi	n8, n8, 16
	addi	n7, n7, 8
	beq	n8, n2, .LBB5_495
.LBB5_500:                              #   Parent Loop BB5_21 Depth=1
                                        #     Parent Loop BB5_496 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lbu	n12, -6(n8)
	lhu	n11, -8(n8)
	beqz	n12, .LBB5_502
# %bb.501:                              #   in Loop: Header=BB5_500 Depth=3
	addi	n11, n11, 64
	j	.LBB5_503
.LBB5_502:                              #   in Loop: Header=BB5_500 Depth=3
	sub	n11, n27, n11
.LBB5_503:                              #   in Loop: Header=BB5_500 Depth=3
	lw	n12, -4(n7)
	lw	n13, 0(n7)
	mul	n12, n12, t0
	sraiw	n12, n12, 4
	addw	n12, n12, n13
	sgtz	n13, n12
	neg	n13, n13
	and	n12, n13, n12
	li	n13, 127
	blt	n12, n13, .LBB5_505
# %bb.504:                              #   in Loop: Header=BB5_500 Depth=3
	li	n12, 127
.LBB5_505:                              #   in Loop: Header=BB5_500 Depth=3
	ld	n14, 0(n8)
	fcvt.d.lu	fa5, n14
	fmul.d	fa5, fa5, ft4
	flt.d	n14, ft5, fa5
	beqz	n14, .LBB5_498
# %bb.506:                              #   in Loop: Header=BB5_500 Depth=3
	fld	fa5, %lo(.LCPI5_2)(n29)
	j	.LBB5_499
.LBB5_507:                              #   in Loop: Header=BB5_496 Depth=2
	mv	n7, n18
	mv	n8, s10
	j	.LBB5_510
.LBB5_508:                              #   in Loop: Header=BB5_510 Depth=3
	fneg.d	fa5, fa5
.LBB5_509:                              #   in Loop: Header=BB5_510 Depth=3
	slli	n14, n11, 3
	add	n14, a3, n14
	fld	fa4, 0(n14)
	slli	n14, n12, 3
	add	n14, n28, n14
	fld	fa3, 0(n14)
	sub	n11, n13, n11
	slli	n11, n11, 3
	add	n11, a3, n11
	fld	fa2, 0(n11)
	xori	n11, n12, 127
	slli	n11, n11, 3
	add	n11, n28, n11
	fld	fa1, 0(n11)
	fmul.d	fa4, fa5, fa4
	fmadd.d	fa4, fa4, fa3, ft7
	fmul.d	fa5, fa5, fa2
	fmadd.d	fa5, fa5, fa1, fa4
	fadd.d	fa6, fa6, fa5
	addi	n8, n8, 16
	addi	n7, n7, 8
	beq	n8, n2, .LBB5_495
.LBB5_510:                              #   Parent Loop BB5_21 Depth=1
                                        #     Parent Loop BB5_496 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lbu	n12, -6(n8)
	lhu	n11, -8(n8)
	beqz	n12, .LBB5_512
# %bb.511:                              #   in Loop: Header=BB5_510 Depth=3
	addi	n11, n11, 64
	j	.LBB5_513
.LBB5_512:                              #   in Loop: Header=BB5_510 Depth=3
	sub	n11, n27, n11
.LBB5_513:                              #   in Loop: Header=BB5_510 Depth=3
	lw	n12, -4(n7)
	lw	n13, 0(n7)
	mul	n12, n12, t0
	sraiw	n12, n12, 4
	addw	n12, n12, n13
	sgtz	n13, n12
	neg	n13, n13
	and	n12, n13, n12
	li	n13, 127
	blt	n12, n13, .LBB5_515
# %bb.514:                              #   in Loop: Header=BB5_510 Depth=3
	li	n12, 127
.LBB5_515:                              #   in Loop: Header=BB5_510 Depth=3
	ld	n14, 0(n8)
	fcvt.d.lu	fa5, n14
	fmul.d	fa5, fa5, ft4
	flt.d	n14, ft5, fa5
	beqz	n14, .LBB5_508
# %bb.516:                              #   in Loop: Header=BB5_510 Depth=3
	fld	fa5, %lo(.LCPI5_2)(n29)
	j	.LBB5_509
.LBB5_517:                              #   in Loop: Header=BB5_21 Depth=1
	li	a7, 0
	sgtz	t0, a6
	neg	t0, t0
	and	a6, t0, a6
	lui	t0, %hi(INIT_LAST_I+4)
	addi	t0, t0, %lo(INIT_LAST_I+4)
	mv	n1, n17
	ld	n18, 112(sp)                    # 8-byte Folded Reload
	j	.LBB5_519
.LBB5_518:                              #   in Loop: Header=BB5_519 Depth=2
	addi	a7, a7, 1
	addi	n18, n18, 240
	addi	n1, n1, 120
	addi	t0, t0, 120
	beq	a7, s7, .LBB5_540
.LBB5_519:                              #   Parent Loop BB5_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_533 Depth 3
                                        #       Child Loop BB5_523 Depth 3
	mul	n2, a7, s6
	add	n2, n2, t3
	add	n2, a2, n2
	bne	s8, n26, .LBB5_530
# %bb.520:                              # %.preheader7
                                        #   in Loop: Header=BB5_519 Depth=2
	mv	n7, t0
	mv	n8, n18
	j	.LBB5_523
.LBB5_521:                              #   in Loop: Header=BB5_523 Depth=3
	fneg.d	fa5, fa5
.LBB5_522:                              #   in Loop: Header=BB5_523 Depth=3
	slli	n14, n11, 3
	add	n14, a3, n14
	fld	fa4, 0(n14)
	slli	n14, n12, 3
	add	n14, n28, n14
	fld	fa3, 0(n14)
	sub	n11, n13, n11
	slli	n11, n11, 3
	add	n11, a3, n11
	fld	fa2, 0(n11)
	xori	n11, n12, 127
	slli	n11, n11, 3
	add	n11, n28, n11
	fld	fa1, 0(n11)
	fmul.d	fa4, fa5, fa4
	fmadd.d	fa4, fa4, fa3, ft7
	fmul.d	fa5, fa5, fa2
	fmadd.d	fa5, fa5, fa1, fa4
	fadd.d	fa6, fa6, fa5
	addi	n8, n8, 16
	addi	n7, n7, 8
	beq	n8, n2, .LBB5_518
.LBB5_523:                              #   Parent Loop BB5_21 Depth=1
                                        #     Parent Loop BB5_519 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lbu	n12, -6(n8)
	lhu	n11, -8(n8)
	beqz	n12, .LBB5_525
# %bb.524:                              #   in Loop: Header=BB5_523 Depth=3
	addi	n11, n11, 64
	j	.LBB5_526
.LBB5_525:                              #   in Loop: Header=BB5_523 Depth=3
	sub	n11, n27, n11
.LBB5_526:                              #   in Loop: Header=BB5_523 Depth=3
	lw	n12, -4(n7)
	lw	n13, 0(n7)
	mul	n12, n12, a6
	sraiw	n12, n12, 4
	addw	n12, n12, n13
	sgtz	n13, n12
	neg	n13, n13
	and	n12, n13, n12
	li	n13, 127
	blt	n12, n13, .LBB5_528
# %bb.527:                              #   in Loop: Header=BB5_523 Depth=3
	li	n12, 127
.LBB5_528:                              #   in Loop: Header=BB5_523 Depth=3
	ld	n14, 0(n8)
	fcvt.d.lu	fa5, n14
	fmul.d	fa5, fa5, ft4
	flt.d	n14, ft5, fa5
	beqz	n14, .LBB5_521
# %bb.529:                              #   in Loop: Header=BB5_523 Depth=3
	fld	fa5, %lo(.LCPI5_2)(n29)
	j	.LBB5_522
.LBB5_530:                              #   in Loop: Header=BB5_519 Depth=2
	mv	n7, n1
	mv	n8, n18
	j	.LBB5_533
.LBB5_531:                              #   in Loop: Header=BB5_533 Depth=3
	fneg.d	fa5, fa5
.LBB5_532:                              #   in Loop: Header=BB5_533 Depth=3
	slli	n14, n11, 3
	add	n14, a3, n14
	fld	fa4, 0(n14)
	slli	n14, n12, 3
	add	n14, n28, n14
	fld	fa3, 0(n14)
	sub	n11, n13, n11
	slli	n11, n11, 3
	add	n11, a3, n11
	fld	fa2, 0(n11)
	xori	n11, n12, 127
	slli	n11, n11, 3
	add	n11, n28, n11
	fld	fa1, 0(n11)
	fmul.d	fa4, fa5, fa4
	fmadd.d	fa4, fa4, fa3, ft7
	fmul.d	fa5, fa5, fa2
	fmadd.d	fa5, fa5, fa1, fa4
	fadd.d	fa6, fa6, fa5
	addi	n8, n8, 16
	addi	n7, n7, 8
	beq	n8, n2, .LBB5_518
.LBB5_533:                              #   Parent Loop BB5_21 Depth=1
                                        #     Parent Loop BB5_519 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lbu	n12, -6(n8)
	lhu	n11, -8(n8)
	beqz	n12, .LBB5_535
# %bb.534:                              #   in Loop: Header=BB5_533 Depth=3
	addi	n11, n11, 64
	j	.LBB5_536
.LBB5_535:                              #   in Loop: Header=BB5_533 Depth=3
	sub	n11, n27, n11
.LBB5_536:                              #   in Loop: Header=BB5_533 Depth=3
	lw	n12, -4(n7)
	lw	n13, 0(n7)
	mul	n12, n12, a6
	sraiw	n12, n12, 4
	addw	n12, n12, n13
	sgtz	n13, n12
	neg	n13, n13
	and	n12, n13, n12
	li	n13, 127
	blt	n12, n13, .LBB5_538
# %bb.537:                              #   in Loop: Header=BB5_533 Depth=3
	li	n12, 127
.LBB5_538:                              #   in Loop: Header=BB5_533 Depth=3
	ld	n14, 0(n8)
	fcvt.d.lu	fa5, n14
	fmul.d	fa5, fa5, ft4
	flt.d	n14, ft5, fa5
	beqz	n14, .LBB5_531
# %bb.539:                              #   in Loop: Header=BB5_533 Depth=3
	fld	fa5, %lo(.LCPI5_2)(n29)
	j	.LBB5_532
.LBB5_540:                              #   in Loop: Header=BB5_21 Depth=1
	lw	a6, 40(a4)
	li	a7, 0
	sgtz	t0, a6
	neg	t0, t0
	and	s10, t0, a6
	mv	n18, a5
	lui	a6, %hi(INIT_ONE_I+20)
	addi	a6, a6, %lo(INIT_ONE_I+20)
	j	.LBB5_542
.LBB5_541:                              #   in Loop: Header=BB5_542 Depth=2
	fmadd.d	fa3, ft8, fa3, ft7
	fmadd.d	fa3, fa7, fa2, fa3
	fadd.d	fa3, fa6, fa3
	fmul.d	fa2, ft10, fa1
	fmadd.d	fa2, fa2, fa0, ft7
	fmul.d	fa1, ft10, ft0
	fmadd.d	fa2, fa1, ft1, fa2
	fadd.d	fa3, fa3, fa2
	fmul.d	fa2, fa5, ft2
	fmadd.d	fa2, fa2, ft3, ft7
	fmul.d	fa5, fa5, ft6
	fmadd.d	fa5, fa5, ft11, fa2
	fadd.d	fa5, fa3, fa5
	fmul.d	fa3, fa4, fs0
	fmadd.d	fa3, fa3, fs1, ft7
	fmul.d	fa4, fa4, fs2
	fmadd.d	fa4, fa4, fs3, fa3
	fadd.d	fa5, fa5, fa4
	fmul.d	fa4, ft9, fs4
	fmadd.d	fa4, fa4, fs5, ft7
	sub	t0, s0, n1
	slli	t0, t0, 3
	add	t0, a3, t0
	fld	fa3, 0(t0)
	xori	t0, n2, 127
	sext.w	t0, t0
	slli	t0, t0, 3
	add	t0, n28, t0
	fld	fa2, 0(t0)
	fmul.d	fa3, ft9, fa3
	fmadd.d	fa4, fa3, fa2, fa4
	fadd.d	fa6, fa5, fa4
	addi	a7, a7, 80
	addi	a6, a6, 40
	addi	n18, n18, 40
	beq	a7, a0, .LBB5_603
.LBB5_542:                              #   Parent Loop BB5_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	n1, n9, a7
	ld	n2, -32(n1)
	lbu	n7, -38(n1)
	lhu	t0, -40(n1)
	beqz	n7, .LBB5_544
# %bb.543:                              #   in Loop: Header=BB5_542 Depth=2
	addi	t0, t0, 64
	j	.LBB5_545
.LBB5_544:                              #   in Loop: Header=BB5_542 Depth=2
	sub	t0, n27, t0
.LBB5_545:                              #   in Loop: Header=BB5_542 Depth=2
	fcvt.d.lu	fa4, n2
	slli	n2, t0, 3
	add	n2, a3, n2
	fld	fa5, 0(n2)
	fmul.d	fa4, fa4, ft4
	flt.d	n2, ft5, fa4
	bnez	n2, .LBB5_547
# %bb.546:                              #   in Loop: Header=BB5_542 Depth=2
	fneg.d	fa4, fa4
	j	.LBB5_548
.LBB5_547:                              #   in Loop: Header=BB5_542 Depth=2
	fld	fa4, %lo(.LCPI5_2)(n29)
.LBB5_548:                              #   in Loop: Header=BB5_542 Depth=2
	sub	t0, s0, t0
	slli	t0, t0, 3
	add	t0, a3, t0
	fld	fa3, 0(t0)
	ld	n11, -16(n1)
	fmul.d	ft8, fa4, fa5
	fmul.d	fa7, fa4, fa3
	bne	s8, n26, .LBB5_553
# %bb.549:                              #   in Loop: Header=BB5_542 Depth=2
	lw	t0, -20(a6)
	lw	n2, -16(a6)
	mul	t0, t0, s10
	sraiw	t0, t0, 4
	addw	t0, t0, n2
	sgtz	n2, t0
	neg	n2, n2
	and	n2, n2, t0
	li	t0, 127
	blt	n2, t0, .LBB5_551
# %bb.550:                              #   in Loop: Header=BB5_542 Depth=2
	li	n2, 127
.LBB5_551:                              #   in Loop: Header=BB5_542 Depth=2
	lbu	n8, -22(n1)
	lhu	n7, -24(n1)
	beqz	n8, .LBB5_557
# %bb.552:                              #   in Loop: Header=BB5_542 Depth=2
	addi	n7, n7, 64
	j	.LBB5_558
.LBB5_553:                              #   in Loop: Header=BB5_542 Depth=2
	lw	t0, -20(n18)
	lw	n2, -16(n18)
	mul	t0, t0, s10
	sraiw	t0, t0, 4
	addw	t0, t0, n2
	sgtz	n2, t0
	neg	n2, n2
	and	n2, n2, t0
	li	t0, 127
	blt	n2, t0, .LBB5_555
# %bb.554:                              #   in Loop: Header=BB5_542 Depth=2
	li	n2, 127
.LBB5_555:                              #   in Loop: Header=BB5_542 Depth=2
	lbu	n8, -22(n1)
	lhu	n7, -24(n1)
	beqz	n8, .LBB5_564
# %bb.556:                              #   in Loop: Header=BB5_542 Depth=2
	addi	n7, n7, 64
	j	.LBB5_565
.LBB5_557:                              #   in Loop: Header=BB5_542 Depth=2
	sub	n7, n27, n7
.LBB5_558:                              #   in Loop: Header=BB5_542 Depth=2
	lw	n8, -12(a6)
	lw	n12, -8(a6)
	mul	n8, n8, s10
	sraiw	n8, n8, 4
	addw	n8, n8, n12
	sgtz	n12, n8
	neg	n12, n12
	and	n8, n12, n8
	blt	n8, t0, .LBB5_560
# %bb.559:                              #   in Loop: Header=BB5_542 Depth=2
	li	n8, 127
.LBB5_560:                              #   in Loop: Header=BB5_542 Depth=2
	fld	ft9, %lo(.LCPI5_2)(n29)
	fcvt.d.lu	fa5, n11
	fmul.d	fa5, fa5, ft4
	flt.d	n11, ft5, fa5
	fmv.d	ft10, ft9
	bnez	n11, .LBB5_562
# %bb.561:                              #   in Loop: Header=BB5_542 Depth=2
	fneg.d	ft10, fa5
.LBB5_562:                              #   in Loop: Header=BB5_542 Depth=2
	lbu	n12, -6(n1)
	lhu	n11, -8(n1)
	beqz	n12, .LBB5_571
# %bb.563:                              #   in Loop: Header=BB5_542 Depth=2
	addi	n11, n11, 64
	j	.LBB5_572
.LBB5_564:                              #   in Loop: Header=BB5_542 Depth=2
	sub	n7, n27, n7
.LBB5_565:                              #   in Loop: Header=BB5_542 Depth=2
	lw	n8, -12(n18)
	lw	n12, -8(n18)
	mul	n8, n8, s10
	sraiw	n8, n8, 4
	addw	n8, n8, n12
	sgtz	n12, n8
	neg	n12, n12
	and	n8, n12, n8
	blt	n8, t0, .LBB5_567
# %bb.566:                              #   in Loop: Header=BB5_542 Depth=2
	li	n8, 127
.LBB5_567:                              #   in Loop: Header=BB5_542 Depth=2
	fld	ft9, %lo(.LCPI5_2)(n29)
	fcvt.d.lu	fa5, n11
	fmul.d	fa5, fa5, ft4
	flt.d	n11, ft5, fa5
	fmv.d	ft10, ft9
	bnez	n11, .LBB5_569
# %bb.568:                              #   in Loop: Header=BB5_542 Depth=2
	fneg.d	ft10, fa5
.LBB5_569:                              #   in Loop: Header=BB5_542 Depth=2
	lbu	n12, -6(n1)
	lhu	n11, -8(n1)
	beqz	n12, .LBB5_578
# %bb.570:                              #   in Loop: Header=BB5_542 Depth=2
	addi	n11, n11, 64
	j	.LBB5_579
.LBB5_571:                              #   in Loop: Header=BB5_542 Depth=2
	sub	n11, n27, n11
.LBB5_572:                              #   in Loop: Header=BB5_542 Depth=2
	lw	n12, -4(a6)
	lw	n13, 0(a6)
	mul	n12, n12, s10
	sraiw	n12, n12, 4
	addw	n12, n12, n13
	sgtz	n13, n12
	neg	n13, n13
	and	n12, n13, n12
	blt	n12, t0, .LBB5_574
# %bb.573:                              #   in Loop: Header=BB5_542 Depth=2
	li	n12, 127
.LBB5_574:                              #   in Loop: Header=BB5_542 Depth=2
	ld	n13, 0(n1)
	fcvt.d.lu	fa5, n13
	fmul.d	fa4, fa5, ft4
	flt.d	n13, ft5, fa4
	fmv.d	fa5, ft9
	bnez	n13, .LBB5_576
# %bb.575:                              #   in Loop: Header=BB5_542 Depth=2
	fneg.d	fa5, fa4
.LBB5_576:                              #   in Loop: Header=BB5_542 Depth=2
	lbu	n14, 10(n1)
	lhu	n13, 8(n1)
	beqz	n14, .LBB5_585
# %bb.577:                              #   in Loop: Header=BB5_542 Depth=2
	addi	n13, n13, 64
	j	.LBB5_586
.LBB5_578:                              #   in Loop: Header=BB5_542 Depth=2
	sub	n11, n27, n11
.LBB5_579:                              #   in Loop: Header=BB5_542 Depth=2
	lw	n12, -4(n18)
	lw	n13, 0(n18)
	mul	n12, n12, s10
	sraiw	n12, n12, 4
	addw	n12, n12, n13
	sgtz	n13, n12
	neg	n13, n13
	and	n12, n13, n12
	blt	n12, t0, .LBB5_581
# %bb.580:                              #   in Loop: Header=BB5_542 Depth=2
	li	n12, 127
.LBB5_581:                              #   in Loop: Header=BB5_542 Depth=2
	ld	n13, 0(n1)
	fcvt.d.lu	fa5, n13
	fmul.d	fa4, fa5, ft4
	flt.d	n13, ft5, fa4
	fmv.d	fa5, ft9
	bnez	n13, .LBB5_583
# %bb.582:                              #   in Loop: Header=BB5_542 Depth=2
	fneg.d	fa5, fa4
.LBB5_583:                              #   in Loop: Header=BB5_542 Depth=2
	lbu	n14, 10(n1)
	lhu	n13, 8(n1)
	beqz	n14, .LBB5_592
# %bb.584:                              #   in Loop: Header=BB5_542 Depth=2
	addi	n13, n13, 64
	j	.LBB5_593
.LBB5_585:                              #   in Loop: Header=BB5_542 Depth=2
	sub	n13, n27, n13
.LBB5_586:                              #   in Loop: Header=BB5_542 Depth=2
	lw	n14, 4(a6)
	lw	n15, 8(a6)
	mul	n14, n14, s10
	sraiw	n14, n14, 4
	addw	n14, n14, n15
	sgtz	n15, n14
	neg	n15, n15
	and	n14, n15, n14
	blt	n14, t0, .LBB5_588
# %bb.587:                              #   in Loop: Header=BB5_542 Depth=2
	li	n14, 127
.LBB5_588:                              #   in Loop: Header=BB5_542 Depth=2
	ld	n15, 16(n1)
	fcvt.d.lu	fa4, n15
	fmul.d	fa3, fa4, ft4
	flt.d	n15, ft5, fa3
	fmv.d	fa4, ft9
	bnez	n15, .LBB5_590
# %bb.589:                              #   in Loop: Header=BB5_542 Depth=2
	fneg.d	fa4, fa3
.LBB5_590:                              #   in Loop: Header=BB5_542 Depth=2
	slli	n15, n2, 3
	add	n15, n28, n15
	fld	fa3, 0(n15)
	xori	n2, n2, 127
	slli	n2, n2, 3
	add	n2, n28, n2
	fld	fa2, 0(n2)
	slli	n2, n7, 3
	add	n2, a3, n2
	fld	fa1, 0(n2)
	slli	n2, n8, 3
	add	n2, n28, n2
	fld	fa0, 0(n2)
	sub	n2, t0, n7
	slli	n2, n2, 3
	add	n2, a3, n2
	fld	ft0, 0(n2)
	xori	n2, n8, 127
	slli	n2, n2, 3
	add	n2, n28, n2
	fld	ft1, 0(n2)
	slli	n2, n11, 3
	add	n2, a3, n2
	fld	ft2, 0(n2)
	slli	n2, n12, 3
	add	n2, n28, n2
	fld	ft3, 0(n2)
	sub	n2, t0, n11
	slli	n2, n2, 3
	add	n2, a3, n2
	fld	ft6, 0(n2)
	xori	n2, n12, 127
	slli	n2, n2, 3
	add	n2, n28, n2
	fld	ft11, 0(n2)
	slli	n2, n13, 3
	add	n2, a3, n2
	fld	fs0, 0(n2)
	slli	n2, n14, 3
	add	n2, n28, n2
	fld	fs1, 0(n2)
	sub	n2, t0, n13
	slli	n2, n2, 3
	add	n2, a3, n2
	fld	fs2, 0(n2)
	xori	n2, n14, 127
	slli	n2, n2, 3
	add	n2, n28, n2
	fld	fs3, 0(n2)
	ld	n7, 32(n1)
	lw	n8, 12(a6)
	lw	n2, 16(a6)
	lbu	n11, 26(n1)
	lhu	n1, 24(n1)
	bnez	n11, .LBB5_598
.LBB5_591:                              #   in Loop: Header=BB5_542 Depth=2
	sub	n1, n27, n1
	j	.LBB5_599
.LBB5_592:                              #   in Loop: Header=BB5_542 Depth=2
	sub	n13, n27, n13
.LBB5_593:                              #   in Loop: Header=BB5_542 Depth=2
	lw	n14, 4(n18)
	lw	n15, 8(n18)
	mul	n14, n14, s10
	sraiw	n14, n14, 4
	addw	n14, n14, n15
	sgtz	n15, n14
	neg	n15, n15
	and	n14, n15, n14
	blt	n14, t0, .LBB5_595
# %bb.594:                              #   in Loop: Header=BB5_542 Depth=2
	li	n14, 127
.LBB5_595:                              #   in Loop: Header=BB5_542 Depth=2
	ld	n15, 16(n1)
	fcvt.d.lu	fa4, n15
	fmul.d	fa3, fa4, ft4
	flt.d	n15, ft5, fa3
	fmv.d	fa4, ft9
	bnez	n15, .LBB5_597
# %bb.596:                              #   in Loop: Header=BB5_542 Depth=2
	fneg.d	fa4, fa3
.LBB5_597:                              #   in Loop: Header=BB5_542 Depth=2
	slli	n15, n2, 3
	add	n15, n28, n15
	fld	fa3, 0(n15)
	xori	n2, n2, 127
	slli	n2, n2, 3
	add	n2, n28, n2
	fld	fa2, 0(n2)
	slli	n2, n7, 3
	add	n2, a3, n2
	fld	fa1, 0(n2)
	slli	n2, n8, 3
	add	n2, n28, n2
	fld	fa0, 0(n2)
	sub	n2, t0, n7
	slli	n2, n2, 3
	add	n2, a3, n2
	fld	ft0, 0(n2)
	xori	n2, n8, 127
	slli	n2, n2, 3
	add	n2, n28, n2
	fld	ft1, 0(n2)
	slli	n2, n11, 3
	add	n2, a3, n2
	fld	ft2, 0(n2)
	slli	n2, n12, 3
	add	n2, n28, n2
	fld	ft3, 0(n2)
	sub	n2, t0, n11
	slli	n2, n2, 3
	add	n2, a3, n2
	fld	ft6, 0(n2)
	xori	n2, n12, 127
	slli	n2, n2, 3
	add	n2, n28, n2
	fld	ft11, 0(n2)
	slli	n2, n13, 3
	add	n2, a3, n2
	fld	fs0, 0(n2)
	slli	n2, n14, 3
	add	n2, n28, n2
	fld	fs1, 0(n2)
	sub	n2, t0, n13
	slli	n2, n2, 3
	add	n2, a3, n2
	fld	fs2, 0(n2)
	xori	n2, n14, 127
	slli	n2, n2, 3
	add	n2, n28, n2
	fld	fs3, 0(n2)
	ld	n7, 32(n1)
	lw	n8, 12(n18)
	lw	n2, 16(n18)
	lbu	n11, 26(n1)
	lhu	n1, 24(n1)
	beqz	n11, .LBB5_591
.LBB5_598:                              #   in Loop: Header=BB5_542 Depth=2
	addi	n1, n1, 64
.LBB5_599:                              #   in Loop: Header=BB5_542 Depth=2
	mul	n8, n8, s10
	sraiw	n8, n8, 4
	addw	n2, n8, n2
	sgtz	n8, n2
	neg	n8, n8
	and	n2, n8, n2
	blt	n2, t0, .LBB5_601
# %bb.600:                              #   in Loop: Header=BB5_542 Depth=2
	li	n2, 127
.LBB5_601:                              #   in Loop: Header=BB5_542 Depth=2
	fcvt.d.lu	fs6, n7
	slli	t0, n1, 3
	add	t0, a3, t0
	fld	fs4, 0(t0)
	slli	t0, n2, 3
	add	t0, n28, t0
	fld	fs5, 0(t0)
	fmul.d	fs6, fs6, ft4
	flt.d	t0, ft5, fs6
	bnez	t0, .LBB5_541
# %bb.602:                              #   in Loop: Header=BB5_542 Depth=2
	fneg.d	ft9, fs6
	j	.LBB5_541
.LBB5_603:                              #   in Loop: Header=BB5_21 Depth=1
	lw	a6, 40(a4)
	li	n1, 0
	lw	s8, 24(a4)
	sgtz	a7, a6
	neg	a7, a7
	and	s10, a7, a6
	mv	n18, n19
	lui	a6, %hi(INIT_ABS_I+20)
	addi	a6, a6, %lo(INIT_ABS_I+20)
	j	.LBB5_605
.LBB5_604:                              #   in Loop: Header=BB5_605 Depth=2
	fmadd.d	fa3, ft8, fa3, ft7
	fmadd.d	fa3, fa7, fa2, fa3
	fadd.d	fa3, fa6, fa3
	fmul.d	fa2, ft10, fa1
	fmadd.d	fa2, fa2, fa0, ft7
	fmul.d	fa1, ft10, ft0
	fmadd.d	fa2, fa1, ft1, fa2
	fadd.d	fa3, fa3, fa2
	fmul.d	fa2, fa5, ft2
	fmadd.d	fa2, fa2, ft3, ft7
	fmul.d	fa5, fa5, ft6
	fmadd.d	fa5, fa5, ft11, fa2
	fadd.d	fa5, fa3, fa5
	fmul.d	fa3, fa4, fs0
	fmadd.d	fa3, fa3, fs1, ft7
	fmul.d	fa4, fa4, fs2
	fmadd.d	fa4, fa4, fs3, fa3
	fadd.d	fa5, fa5, fa4
	fmul.d	fa4, ft9, fs4
	fmadd.d	fa4, fa4, fs5, ft7
	sub	a7, s0, a7
	slli	a7, a7, 3
	add	a7, a3, a7
	fld	fa3, 0(a7)
	xori	a7, n2, 127
	sext.w	a7, a7
	slli	a7, a7, 3
	add	a7, n28, a7
	fld	fa2, 0(a7)
	fmul.d	fa3, ft9, fa3
	fmadd.d	fa4, fa3, fa2, fa4
	fadd.d	fa6, fa5, fa4
	addi	n1, n1, 80
	addi	a6, a6, 40
	addi	n18, n18, 40
	beq	n1, a0, .LBB5_666
.LBB5_605:                              #   Parent Loop BB5_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	a7, n10, n1
	ld	n2, -32(a7)
	lbu	n7, -38(a7)
	lhu	t0, -40(a7)
	beqz	n7, .LBB5_607
# %bb.606:                              #   in Loop: Header=BB5_605 Depth=2
	addi	t0, t0, 64
	j	.LBB5_608
.LBB5_607:                              #   in Loop: Header=BB5_605 Depth=2
	sub	t0, n27, t0
.LBB5_608:                              #   in Loop: Header=BB5_605 Depth=2
	fcvt.d.lu	fa4, n2
	slli	n2, t0, 3
	add	n2, a3, n2
	fld	fa5, 0(n2)
	fmul.d	fa4, fa4, ft4
	flt.d	n2, ft5, fa4
	bnez	n2, .LBB5_610
# %bb.609:                              #   in Loop: Header=BB5_605 Depth=2
	fneg.d	fa4, fa4
	j	.LBB5_611
.LBB5_610:                              #   in Loop: Header=BB5_605 Depth=2
	fld	fa4, %lo(.LCPI5_2)(n29)
.LBB5_611:                              #   in Loop: Header=BB5_605 Depth=2
	sub	t0, s0, t0
	slli	t0, t0, 3
	add	t0, a3, t0
	fld	fa3, 0(t0)
	ld	n11, -16(a7)
	fmul.d	ft8, fa4, fa5
	fmul.d	fa7, fa4, fa3
	bne	s8, n26, .LBB5_616
# %bb.612:                              #   in Loop: Header=BB5_605 Depth=2
	lw	t0, -20(a6)
	lw	n2, -16(a6)
	mul	t0, t0, s10
	sraiw	t0, t0, 4
	addw	t0, t0, n2
	sgtz	n2, t0
	neg	n2, n2
	and	n2, n2, t0
	li	t0, 127
	blt	n2, t0, .LBB5_614
# %bb.613:                              #   in Loop: Header=BB5_605 Depth=2
	li	n2, 127
.LBB5_614:                              #   in Loop: Header=BB5_605 Depth=2
	lbu	n8, -22(a7)
	lhu	n7, -24(a7)
	beqz	n8, .LBB5_620
# %bb.615:                              #   in Loop: Header=BB5_605 Depth=2
	addi	n7, n7, 64
	j	.LBB5_621
.LBB5_616:                              #   in Loop: Header=BB5_605 Depth=2
	lw	t0, -20(n18)
	lw	n2, -16(n18)
	mul	t0, t0, s10
	sraiw	t0, t0, 4
	addw	t0, t0, n2
	sgtz	n2, t0
	neg	n2, n2
	and	n2, n2, t0
	li	t0, 127
	blt	n2, t0, .LBB5_618
# %bb.617:                              #   in Loop: Header=BB5_605 Depth=2
	li	n2, 127
.LBB5_618:                              #   in Loop: Header=BB5_605 Depth=2
	lbu	n8, -22(a7)
	lhu	n7, -24(a7)
	beqz	n8, .LBB5_627
# %bb.619:                              #   in Loop: Header=BB5_605 Depth=2
	addi	n7, n7, 64
	j	.LBB5_628
.LBB5_620:                              #   in Loop: Header=BB5_605 Depth=2
	sub	n7, n27, n7
.LBB5_621:                              #   in Loop: Header=BB5_605 Depth=2
	lw	n8, -12(a6)
	lw	n12, -8(a6)
	mul	n8, n8, s10
	sraiw	n8, n8, 4
	addw	n8, n8, n12
	sgtz	n12, n8
	neg	n12, n12
	and	n8, n12, n8
	blt	n8, t0, .LBB5_623
# %bb.622:                              #   in Loop: Header=BB5_605 Depth=2
	li	n8, 127
.LBB5_623:                              #   in Loop: Header=BB5_605 Depth=2
	fld	ft9, %lo(.LCPI5_2)(n29)
	fcvt.d.lu	fa5, n11
	fmul.d	fa5, fa5, ft4
	flt.d	n11, ft5, fa5
	fmv.d	ft10, ft9
	bnez	n11, .LBB5_625
# %bb.624:                              #   in Loop: Header=BB5_605 Depth=2
	fneg.d	ft10, fa5
.LBB5_625:                              #   in Loop: Header=BB5_605 Depth=2
	lbu	n12, -6(a7)
	lhu	n11, -8(a7)
	beqz	n12, .LBB5_634
# %bb.626:                              #   in Loop: Header=BB5_605 Depth=2
	addi	n11, n11, 64
	j	.LBB5_635
.LBB5_627:                              #   in Loop: Header=BB5_605 Depth=2
	sub	n7, n27, n7
.LBB5_628:                              #   in Loop: Header=BB5_605 Depth=2
	lw	n8, -12(n18)
	lw	n12, -8(n18)
	mul	n8, n8, s10
	sraiw	n8, n8, 4
	addw	n8, n8, n12
	sgtz	n12, n8
	neg	n12, n12
	and	n8, n12, n8
	blt	n8, t0, .LBB5_630
# %bb.629:                              #   in Loop: Header=BB5_605 Depth=2
	li	n8, 127
.LBB5_630:                              #   in Loop: Header=BB5_605 Depth=2
	fld	ft9, %lo(.LCPI5_2)(n29)
	fcvt.d.lu	fa5, n11
	fmul.d	fa5, fa5, ft4
	flt.d	n11, ft5, fa5
	fmv.d	ft10, ft9
	bnez	n11, .LBB5_632
# %bb.631:                              #   in Loop: Header=BB5_605 Depth=2
	fneg.d	ft10, fa5
.LBB5_632:                              #   in Loop: Header=BB5_605 Depth=2
	lbu	n12, -6(a7)
	lhu	n11, -8(a7)
	beqz	n12, .LBB5_641
# %bb.633:                              #   in Loop: Header=BB5_605 Depth=2
	addi	n11, n11, 64
	j	.LBB5_642
.LBB5_634:                              #   in Loop: Header=BB5_605 Depth=2
	sub	n11, n27, n11
.LBB5_635:                              #   in Loop: Header=BB5_605 Depth=2
	lw	n12, -4(a6)
	lw	n13, 0(a6)
	mul	n12, n12, s10
	sraiw	n12, n12, 4
	addw	n12, n12, n13
	sgtz	n13, n12
	neg	n13, n13
	and	n12, n13, n12
	blt	n12, t0, .LBB5_637
# %bb.636:                              #   in Loop: Header=BB5_605 Depth=2
	li	n12, 127
.LBB5_637:                              #   in Loop: Header=BB5_605 Depth=2
	ld	n13, 0(a7)
	fcvt.d.lu	fa5, n13
	fmul.d	fa4, fa5, ft4
	flt.d	n13, ft5, fa4
	fmv.d	fa5, ft9
	bnez	n13, .LBB5_639
# %bb.638:                              #   in Loop: Header=BB5_605 Depth=2
	fneg.d	fa5, fa4
.LBB5_639:                              #   in Loop: Header=BB5_605 Depth=2
	lbu	n14, 10(a7)
	lhu	n13, 8(a7)
	beqz	n14, .LBB5_648
# %bb.640:                              #   in Loop: Header=BB5_605 Depth=2
	addi	n13, n13, 64
	j	.LBB5_649
.LBB5_641:                              #   in Loop: Header=BB5_605 Depth=2
	sub	n11, n27, n11
.LBB5_642:                              #   in Loop: Header=BB5_605 Depth=2
	lw	n12, -4(n18)
	lw	n13, 0(n18)
	mul	n12, n12, s10
	sraiw	n12, n12, 4
	addw	n12, n12, n13
	sgtz	n13, n12
	neg	n13, n13
	and	n12, n13, n12
	blt	n12, t0, .LBB5_644
# %bb.643:                              #   in Loop: Header=BB5_605 Depth=2
	li	n12, 127
.LBB5_644:                              #   in Loop: Header=BB5_605 Depth=2
	ld	n13, 0(a7)
	fcvt.d.lu	fa5, n13
	fmul.d	fa4, fa5, ft4
	flt.d	n13, ft5, fa4
	fmv.d	fa5, ft9
	bnez	n13, .LBB5_646
# %bb.645:                              #   in Loop: Header=BB5_605 Depth=2
	fneg.d	fa5, fa4
.LBB5_646:                              #   in Loop: Header=BB5_605 Depth=2
	lbu	n14, 10(a7)
	lhu	n13, 8(a7)
	beqz	n14, .LBB5_655
# %bb.647:                              #   in Loop: Header=BB5_605 Depth=2
	addi	n13, n13, 64
	j	.LBB5_656
.LBB5_648:                              #   in Loop: Header=BB5_605 Depth=2
	sub	n13, n27, n13
.LBB5_649:                              #   in Loop: Header=BB5_605 Depth=2
	lw	n14, 4(a6)
	lw	n15, 8(a6)
	mul	n14, n14, s10
	sraiw	n14, n14, 4
	addw	n14, n14, n15
	sgtz	n15, n14
	neg	n15, n15
	and	n14, n15, n14
	blt	n14, t0, .LBB5_651
# %bb.650:                              #   in Loop: Header=BB5_605 Depth=2
	li	n14, 127
.LBB5_651:                              #   in Loop: Header=BB5_605 Depth=2
	ld	n15, 16(a7)
	fcvt.d.lu	fa4, n15
	fmul.d	fa3, fa4, ft4
	flt.d	n15, ft5, fa3
	fmv.d	fa4, ft9
	bnez	n15, .LBB5_653
# %bb.652:                              #   in Loop: Header=BB5_605 Depth=2
	fneg.d	fa4, fa3
.LBB5_653:                              #   in Loop: Header=BB5_605 Depth=2
	slli	n15, n2, 3
	add	n15, n28, n15
	fld	fa3, 0(n15)
	xori	n2, n2, 127
	slli	n2, n2, 3
	add	n2, n28, n2
	fld	fa2, 0(n2)
	slli	n2, n7, 3
	add	n2, a3, n2
	fld	fa1, 0(n2)
	slli	n2, n8, 3
	add	n2, n28, n2
	fld	fa0, 0(n2)
	sub	n2, t0, n7
	slli	n2, n2, 3
	add	n2, a3, n2
	fld	ft0, 0(n2)
	xori	n2, n8, 127
	slli	n2, n2, 3
	add	n2, n28, n2
	fld	ft1, 0(n2)
	slli	n2, n11, 3
	add	n2, a3, n2
	fld	ft2, 0(n2)
	slli	n2, n12, 3
	add	n2, n28, n2
	fld	ft3, 0(n2)
	sub	n2, t0, n11
	slli	n2, n2, 3
	add	n2, a3, n2
	fld	ft6, 0(n2)
	xori	n2, n12, 127
	slli	n2, n2, 3
	add	n2, n28, n2
	fld	ft11, 0(n2)
	slli	n2, n13, 3
	add	n2, a3, n2
	fld	fs0, 0(n2)
	slli	n2, n14, 3
	add	n2, n28, n2
	fld	fs1, 0(n2)
	sub	n2, t0, n13
	slli	n2, n2, 3
	add	n2, a3, n2
	fld	fs2, 0(n2)
	xori	n2, n14, 127
	slli	n2, n2, 3
	add	n2, n28, n2
	fld	fs3, 0(n2)
	ld	n7, 32(a7)
	lw	n8, 12(a6)
	lw	n2, 16(a6)
	lbu	n11, 26(a7)
	lhu	a7, 24(a7)
	bnez	n11, .LBB5_661
.LBB5_654:                              #   in Loop: Header=BB5_605 Depth=2
	sub	a7, n27, a7
	j	.LBB5_662
.LBB5_655:                              #   in Loop: Header=BB5_605 Depth=2
	sub	n13, n27, n13
.LBB5_656:                              #   in Loop: Header=BB5_605 Depth=2
	lw	n14, 4(n18)
	lw	n15, 8(n18)
	mul	n14, n14, s10
	sraiw	n14, n14, 4
	addw	n14, n14, n15
	sgtz	n15, n14
	neg	n15, n15
	and	n14, n15, n14
	blt	n14, t0, .LBB5_658
# %bb.657:                              #   in Loop: Header=BB5_605 Depth=2
	li	n14, 127
.LBB5_658:                              #   in Loop: Header=BB5_605 Depth=2
	ld	n15, 16(a7)
	fcvt.d.lu	fa4, n15
	fmul.d	fa3, fa4, ft4
	flt.d	n15, ft5, fa3
	fmv.d	fa4, ft9
	bnez	n15, .LBB5_660
# %bb.659:                              #   in Loop: Header=BB5_605 Depth=2
	fneg.d	fa4, fa3
.LBB5_660:                              #   in Loop: Header=BB5_605 Depth=2
	slli	n15, n2, 3
	add	n15, n28, n15
	fld	fa3, 0(n15)
	xori	n2, n2, 127
	slli	n2, n2, 3
	add	n2, n28, n2
	fld	fa2, 0(n2)
	slli	n2, n7, 3
	add	n2, a3, n2
	fld	fa1, 0(n2)
	slli	n2, n8, 3
	add	n2, n28, n2
	fld	fa0, 0(n2)
	sub	n2, t0, n7
	slli	n2, n2, 3
	add	n2, a3, n2
	fld	ft0, 0(n2)
	xori	n2, n8, 127
	slli	n2, n2, 3
	add	n2, n28, n2
	fld	ft1, 0(n2)
	slli	n2, n11, 3
	add	n2, a3, n2
	fld	ft2, 0(n2)
	slli	n2, n12, 3
	add	n2, n28, n2
	fld	ft3, 0(n2)
	sub	n2, t0, n11
	slli	n2, n2, 3
	add	n2, a3, n2
	fld	ft6, 0(n2)
	xori	n2, n12, 127
	slli	n2, n2, 3
	add	n2, n28, n2
	fld	ft11, 0(n2)
	slli	n2, n13, 3
	add	n2, a3, n2
	fld	fs0, 0(n2)
	slli	n2, n14, 3
	add	n2, n28, n2
	fld	fs1, 0(n2)
	sub	n2, t0, n13
	slli	n2, n2, 3
	add	n2, a3, n2
	fld	fs2, 0(n2)
	xori	n2, n14, 127
	slli	n2, n2, 3
	add	n2, n28, n2
	fld	fs3, 0(n2)
	ld	n7, 32(a7)
	lw	n8, 12(n18)
	lw	n2, 16(n18)
	lbu	n11, 26(a7)
	lhu	a7, 24(a7)
	beqz	n11, .LBB5_654
.LBB5_661:                              #   in Loop: Header=BB5_605 Depth=2
	addi	a7, a7, 64
.LBB5_662:                              #   in Loop: Header=BB5_605 Depth=2
	mul	n8, n8, s10
	sraiw	n8, n8, 4
	addw	n2, n8, n2
	sgtz	n8, n2
	neg	n8, n8
	and	n2, n8, n2
	blt	n2, t0, .LBB5_664
# %bb.663:                              #   in Loop: Header=BB5_605 Depth=2
	li	n2, 127
.LBB5_664:                              #   in Loop: Header=BB5_605 Depth=2
	fcvt.d.lu	fs6, n7
	slli	t0, a7, 3
	add	t0, a3, t0
	fld	fs4, 0(t0)
	slli	t0, n2, 3
	add	t0, n28, t0
	fld	fs5, 0(t0)
	fmul.d	fs6, fs6, ft4
	flt.d	t0, ft5, fs6
	bnez	t0, .LBB5_604
# %bb.665:                              #   in Loop: Header=BB5_605 Depth=2
	fneg.d	ft9, fs6
	j	.LBB5_604
.LBB5_666:                              #   in Loop: Header=BB5_21 Depth=1
	lw	a7, 40(a4)
	li	t0, 0
	lw	a6, 24(a4)
	sgtz	n1, a7
	neg	n1, n1
	and	n1, n1, a7
	lui	n18, %hi(INIT_FLD_MAP_I+4)
	addi	n18, n18, %lo(INIT_FLD_MAP_I+4)
	mv	s8, n20
	ld	s10, 120(sp)                    # 8-byte Folded Reload
	j	.LBB5_668
.LBB5_667:                              #   in Loop: Header=BB5_668 Depth=2
	addi	t0, t0, 1
	addi	s10, s10, 240
	addi	s8, s8, 120
	addi	n18, n18, 120
	beq	t0, s7, .LBB5_689
.LBB5_668:                              #   Parent Loop BB5_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_682 Depth 3
                                        #       Child Loop BB5_672 Depth 3
	mul	n2, t0, s6
	add	n2, n2, t2
	add	n2, a2, n2
	bne	a6, n26, .LBB5_679
# %bb.669:                              # %.preheader3
                                        #   in Loop: Header=BB5_668 Depth=2
	mv	n7, n18
	mv	n8, s10
	j	.LBB5_672
.LBB5_670:                              #   in Loop: Header=BB5_672 Depth=3
	fneg.d	fa5, fa5
.LBB5_671:                              #   in Loop: Header=BB5_672 Depth=3
	slli	n14, n11, 3
	add	n14, a3, n14
	fld	fa4, 0(n14)
	slli	n14, n12, 3
	add	n14, n28, n14
	fld	fa3, 0(n14)
	sub	n11, n13, n11
	slli	n11, n11, 3
	add	n11, a3, n11
	fld	fa2, 0(n11)
	xori	n11, n12, 127
	slli	n11, n11, 3
	add	n11, n28, n11
	fld	fa1, 0(n11)
	fmul.d	fa4, fa5, fa4
	fmadd.d	fa4, fa4, fa3, ft7
	fmul.d	fa5, fa5, fa2
	fmadd.d	fa5, fa5, fa1, fa4
	fadd.d	fa6, fa6, fa5
	addi	n8, n8, 16
	addi	n7, n7, 8
	beq	n8, n2, .LBB5_667
.LBB5_672:                              #   Parent Loop BB5_21 Depth=1
                                        #     Parent Loop BB5_668 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lbu	n12, -6(n8)
	lhu	n11, -8(n8)
	beqz	n12, .LBB5_674
# %bb.673:                              #   in Loop: Header=BB5_672 Depth=3
	addi	n11, n11, 64
	j	.LBB5_675
.LBB5_674:                              #   in Loop: Header=BB5_672 Depth=3
	sub	n11, n27, n11
.LBB5_675:                              #   in Loop: Header=BB5_672 Depth=3
	lw	n12, -4(n7)
	lw	n13, 0(n7)
	mul	n12, n12, n1
	sraiw	n12, n12, 4
	addw	n12, n12, n13
	sgtz	n13, n12
	neg	n13, n13
	and	n12, n13, n12
	li	n13, 127
	blt	n12, n13, .LBB5_677
# %bb.676:                              #   in Loop: Header=BB5_672 Depth=3
	li	n12, 127
.LBB5_677:                              #   in Loop: Header=BB5_672 Depth=3
	ld	n14, 0(n8)
	fcvt.d.lu	fa5, n14
	fmul.d	fa5, fa5, ft4
	flt.d	n14, ft5, fa5
	beqz	n14, .LBB5_670
# %bb.678:                              #   in Loop: Header=BB5_672 Depth=3
	fld	fa5, %lo(.LCPI5_2)(n29)
	j	.LBB5_671
.LBB5_679:                              #   in Loop: Header=BB5_668 Depth=2
	mv	n7, s8
	mv	n8, s10
	j	.LBB5_682
.LBB5_680:                              #   in Loop: Header=BB5_682 Depth=3
	fneg.d	fa5, fa5
.LBB5_681:                              #   in Loop: Header=BB5_682 Depth=3
	slli	n14, n11, 3
	add	n14, a3, n14
	fld	fa4, 0(n14)
	slli	n14, n12, 3
	add	n14, n28, n14
	fld	fa3, 0(n14)
	sub	n11, n13, n11
	slli	n11, n11, 3
	add	n11, a3, n11
	fld	fa2, 0(n11)
	xori	n11, n12, 127
	slli	n11, n11, 3
	add	n11, n28, n11
	fld	fa1, 0(n11)
	fmul.d	fa4, fa5, fa4
	fmadd.d	fa4, fa4, fa3, ft7
	fmul.d	fa5, fa5, fa2
	fmadd.d	fa5, fa5, fa1, fa4
	fadd.d	fa6, fa6, fa5
	addi	n8, n8, 16
	addi	n7, n7, 8
	beq	n8, n2, .LBB5_667
.LBB5_682:                              #   Parent Loop BB5_21 Depth=1
                                        #     Parent Loop BB5_668 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lbu	n12, -6(n8)
	lhu	n11, -8(n8)
	beqz	n12, .LBB5_684
# %bb.683:                              #   in Loop: Header=BB5_682 Depth=3
	addi	n11, n11, 64
	j	.LBB5_685
.LBB5_684:                              #   in Loop: Header=BB5_682 Depth=3
	sub	n11, n27, n11
.LBB5_685:                              #   in Loop: Header=BB5_682 Depth=3
	lw	n12, -4(n7)
	lw	n13, 0(n7)
	mul	n12, n12, n1
	sraiw	n12, n12, 4
	addw	n12, n12, n13
	sgtz	n13, n12
	neg	n13, n13
	and	n12, n13, n12
	li	n13, 127
	blt	n12, n13, .LBB5_687
# %bb.686:                              #   in Loop: Header=BB5_682 Depth=3
	li	n12, 127
.LBB5_687:                              #   in Loop: Header=BB5_682 Depth=3
	ld	n14, 0(n8)
	fcvt.d.lu	fa5, n14
	fmul.d	fa5, fa5, ft4
	flt.d	n14, ft5, fa5
	beqz	n14, .LBB5_680
# %bb.688:                              #   in Loop: Header=BB5_682 Depth=3
	fld	fa5, %lo(.LCPI5_2)(n29)
	j	.LBB5_681
.LBB5_689:                              #   in Loop: Header=BB5_21 Depth=1
	li	t0, 0
	sgtz	n1, a7
	neg	n1, n1
	and	a7, n1, a7
	lui	n1, %hi(INIT_FLD_LAST_I+4)
	addi	n1, n1, %lo(INIT_FLD_LAST_I+4)
	mv	n18, n21
	ld	s8, 128(sp)                     # 8-byte Folded Reload
	j	.LBB5_691
.LBB5_690:                              #   in Loop: Header=BB5_691 Depth=2
	addi	t0, t0, 1
	addi	s8, s8, 240
	addi	n18, n18, 120
	addi	n1, n1, 120
	beq	t0, s7, .LBB5_712
.LBB5_691:                              #   Parent Loop BB5_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_705 Depth 3
                                        #       Child Loop BB5_695 Depth 3
	mul	n2, t0, s6
	add	n2, n2, t1
	add	n2, a2, n2
	bne	a6, n26, .LBB5_702
# %bb.692:                              # %.preheader
                                        #   in Loop: Header=BB5_691 Depth=2
	mv	n7, n1
	mv	n8, s8
	j	.LBB5_695
.LBB5_693:                              #   in Loop: Header=BB5_695 Depth=3
	fneg.d	fa5, fa5
.LBB5_694:                              #   in Loop: Header=BB5_695 Depth=3
	slli	n14, n11, 3
	add	n14, a3, n14
	fld	fa4, 0(n14)
	slli	n14, n12, 3
	add	n14, n28, n14
	fld	fa3, 0(n14)
	sub	n11, n13, n11
	slli	n11, n11, 3
	add	n11, a3, n11
	fld	fa2, 0(n11)
	xori	n11, n12, 127
	slli	n11, n11, 3
	add	n11, n28, n11
	fld	fa1, 0(n11)
	fmul.d	fa4, fa5, fa4
	fmadd.d	fa4, fa4, fa3, ft7
	fmul.d	fa5, fa5, fa2
	fmadd.d	fa5, fa5, fa1, fa4
	fadd.d	fa6, fa6, fa5
	addi	n8, n8, 16
	addi	n7, n7, 8
	beq	n8, n2, .LBB5_690
.LBB5_695:                              #   Parent Loop BB5_21 Depth=1
                                        #     Parent Loop BB5_691 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lbu	n12, -6(n8)
	lhu	n11, -8(n8)
	beqz	n12, .LBB5_697
# %bb.696:                              #   in Loop: Header=BB5_695 Depth=3
	addi	n11, n11, 64
	j	.LBB5_698
.LBB5_697:                              #   in Loop: Header=BB5_695 Depth=3
	sub	n11, n27, n11
.LBB5_698:                              #   in Loop: Header=BB5_695 Depth=3
	lw	n12, -4(n7)
	lw	n13, 0(n7)
	mul	n12, n12, a7
	sraiw	n12, n12, 4
	addw	n12, n12, n13
	sgtz	n13, n12
	neg	n13, n13
	and	n12, n13, n12
	li	n13, 127
	blt	n12, n13, .LBB5_700
# %bb.699:                              #   in Loop: Header=BB5_695 Depth=3
	li	n12, 127
.LBB5_700:                              #   in Loop: Header=BB5_695 Depth=3
	ld	n14, 0(n8)
	fcvt.d.lu	fa5, n14
	fmul.d	fa5, fa5, ft4
	flt.d	n14, ft5, fa5
	beqz	n14, .LBB5_693
# %bb.701:                              #   in Loop: Header=BB5_695 Depth=3
	fld	fa5, %lo(.LCPI5_2)(n29)
	j	.LBB5_694
.LBB5_702:                              #   in Loop: Header=BB5_691 Depth=2
	mv	n7, n18
	mv	n8, s8
	j	.LBB5_705
.LBB5_703:                              #   in Loop: Header=BB5_705 Depth=3
	fneg.d	fa5, fa5
.LBB5_704:                              #   in Loop: Header=BB5_705 Depth=3
	slli	n14, n11, 3
	add	n14, a3, n14
	fld	fa4, 0(n14)
	slli	n14, n12, 3
	add	n14, n28, n14
	fld	fa3, 0(n14)
	sub	n11, n13, n11
	slli	n11, n11, 3
	add	n11, a3, n11
	fld	fa2, 0(n11)
	xori	n11, n12, 127
	slli	n11, n11, 3
	add	n11, n28, n11
	fld	fa1, 0(n11)
	fmul.d	fa4, fa5, fa4
	fmadd.d	fa4, fa4, fa3, ft7
	fmul.d	fa5, fa5, fa2
	fmadd.d	fa5, fa5, fa1, fa4
	fadd.d	fa6, fa6, fa5
	addi	n8, n8, 16
	addi	n7, n7, 8
	beq	n8, n2, .LBB5_690
.LBB5_705:                              #   Parent Loop BB5_21 Depth=1
                                        #     Parent Loop BB5_691 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lbu	n12, -6(n8)
	lhu	n11, -8(n8)
	beqz	n12, .LBB5_707
# %bb.706:                              #   in Loop: Header=BB5_705 Depth=3
	addi	n11, n11, 64
	j	.LBB5_708
.LBB5_707:                              #   in Loop: Header=BB5_705 Depth=3
	sub	n11, n27, n11
.LBB5_708:                              #   in Loop: Header=BB5_705 Depth=3
	lw	n12, -4(n7)
	lw	n13, 0(n7)
	mul	n12, n12, a7
	sraiw	n12, n12, 4
	addw	n12, n12, n13
	sgtz	n13, n12
	neg	n13, n13
	and	n12, n13, n12
	li	n13, 127
	blt	n12, n13, .LBB5_710
# %bb.709:                              #   in Loop: Header=BB5_705 Depth=3
	li	n12, 127
.LBB5_710:                              #   in Loop: Header=BB5_705 Depth=3
	ld	n14, 0(n8)
	fcvt.d.lu	fa5, n14
	fmul.d	fa5, fa5, ft4
	flt.d	n14, ft5, fa5
	beqz	n14, .LBB5_703
# %bb.711:                              #   in Loop: Header=BB5_705 Depth=3
	fld	fa5, %lo(.LCPI5_2)(n29)
	j	.LBB5_704
.LBB5_712:                              #   in Loop: Header=BB5_21 Depth=1
	fld	fa5, 144(sp)                    # 8-byte Folded Reload
	flt.d	a6, fa6, fa5
	beqz	a6, .LBB5_714
# %bb.713:                              #   in Loop: Header=BB5_21 Depth=1
	ld	a6, 16(sp)                      # 8-byte Folded Reload
	sw	n24, 0(a6)
	fsd	fa6, 144(sp)                    # 8-byte Folded Spill
.LBB5_714:                              #   in Loop: Header=BB5_21 Depth=1
	ld	a6, 136(sp)                     # 8-byte Folded Reload
	ld	n18, 152(sp)                    # 8-byte Folded Reload
	fld	ft0, 192(sp)                    # 8-byte Folded Reload
	beq	a6, n26, .LBB5_716
# %bb.715:                              #   in Loop: Header=BB5_21 Depth=1
	addi	t0, n24, 1
	addi	n18, n18, 264
	addi	n22, n22, 144
	addi	n23, n23, 160
	ld	a6, 184(sp)                     # 8-byte Folded Reload
	addi	a6, a6, 32
	sd	a6, 184(sp)                     # 8-byte Folded Spill
	ld	a6, 176(sp)                     # 8-byte Folded Reload
	addi	a6, a6, 32
	sd	a6, 176(sp)                     # 8-byte Folded Spill
	ld	a6, 168(sp)                     # 8-byte Folded Reload
	addi	a6, a6, 96
	sd	a6, 168(sp)                     # 8-byte Folded Spill
	ld	a6, 160(sp)                     # 8-byte Folded Reload
	addi	a6, a6, 256
	sd	a6, 160(sp)                     # 8-byte Folded Spill
	addi	n16, n16, 960
	addi	n17, n17, 960
	addi	a5, a5, 320
	addi	n19, n19, 320
	addi	n20, n20, 960
	addi	n21, n21, 960
	bgeu	n24, n26, .LBB5_716
	j	.LBB5_21
.LBB5_716:
	ld	ra, 424(sp)                     # 8-byte Folded Reload
	ld	s0, 416(sp)                     # 8-byte Folded Reload
	ld	s1, 408(sp)                     # 8-byte Folded Reload
	ld	s2, 400(sp)                     # 8-byte Folded Reload
	ld	s3, 392(sp)                     # 8-byte Folded Reload
	ld	s4, 384(sp)                     # 8-byte Folded Reload
	ld	s5, 376(sp)                     # 8-byte Folded Reload
	ld	s6, 368(sp)                     # 8-byte Folded Reload
	ld	s7, 360(sp)                     # 8-byte Folded Reload
	ld	s8, 352(sp)                     # 8-byte Folded Reload
	ld	s9, 344(sp)                     # 8-byte Folded Reload
	ld	s10, 336(sp)                    # 8-byte Folded Reload
	ld	s11, 328(sp)                    # 8-byte Folded Reload
	fld	fs0, 320(sp)                    # 8-byte Folded Reload
	fld	fs1, 312(sp)                    # 8-byte Folded Reload
	fld	fs2, 304(sp)                    # 8-byte Folded Reload
	fld	fs3, 296(sp)                    # 8-byte Folded Reload
	fld	fs4, 288(sp)                    # 8-byte Folded Reload
	fld	fs5, 280(sp)                    # 8-byte Folded Reload
	fld	fs6, 272(sp)                    # 8-byte Folded Reload
	fld	fs7, 264(sp)                    # 8-byte Folded Reload
	fld	fs8, 256(sp)                    # 8-byte Folded Reload
	fld	fs9, 248(sp)                    # 8-byte Folded Reload
	fld	fs10, 240(sp)                   # 8-byte Folded Reload
	fld	fs11, 232(sp)                   # 8-byte Folded Reload
	addi	sp, sp, 432
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
