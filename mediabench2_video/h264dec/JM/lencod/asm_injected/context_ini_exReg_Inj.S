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
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	slli	x1, a7, 3
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
	regsw_c	x8, 0x0(x20)		# 101000100000000000000
	add	x1, a3, x1
	ld	a4, %lo(img)(a4)
	ld	x3, 88(a2)
	lbu	t2, 82(a2)
	lhu	t1, 80(a2)
	sub	a7, a5, a7
	slli	a7, a7, 3
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	add	x4, a3, a7
	beqz	t2, .LBB5_17
# %bb.16:
	addi	a7, t1, 64
	j	.LBB5_18
.LBB5_17:
	sub	a7, a0, t1
