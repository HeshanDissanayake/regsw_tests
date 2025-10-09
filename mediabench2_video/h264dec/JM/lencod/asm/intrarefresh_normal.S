	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"intrarefresh.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	RandomIntraInit                 # -- Begin function RandomIntraInit
	.p2align	2
	.type	RandomIntraInit,@function
RandomIntraInit:                        # @RandomIntraInit
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a2
	mv	s1, a1
	mv	s2, a0
	li	a0, 1
	call	srand
	mulw	a0, s1, s2
	lui	a1, %hi(NumberOfMBs)
	sw	a0, %lo(NumberOfMBs)(a1)
	lui	a1, %hi(NumberIntraPerPicture)
	sw	s0, %lo(NumberIntraPerPicture)(a1)
	beqz	s0, .LBB0_9
# %bb.1:
	slli	a0, a0, 2
	call	malloc
	lui	a1, %hi(RefreshPattern)
	sd	a0, %lo(RefreshPattern)(a1)
	bnez	a0, .LBB0_3
# %bb.2:
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	call	no_mem_exit
.LBB0_3:
	slli	a0, s0, 2
	call	malloc
	lui	a1, %hi(IntraMBs)
	sd	a0, %lo(IntraMBs)(a1)
	bnez	a0, .LBB0_5
# %bb.4:
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	call	no_mem_exit
.LBB0_5:
	lui	s0, %hi(NumberOfMBs)
	lw	a2, %lo(NumberOfMBs)(s0)
	blez	a2, .LBB0_10
# %bb.6:
	lui	s1, %hi(RefreshPattern)
	ld	a0, %lo(RefreshPattern)(s1)
	slli	a2, a2, 2
	li	a1, 255
	call	memset
	li	s2, 0
	li	s3, -1
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	call	rand
	lw	a1, %lo(NumberOfMBs)(s0)
	ld	a2, %lo(RefreshPattern)(s1)
	remw	a0, a0, a1
	slli	a0, a0, 2
	add	a0, a2, a0
	lw	a2, 0(a0)
	bne	a2, s3, .LBB0_7
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	sw	s2, 0(a0)
	addiw	s2, s2, 1
	blt	s2, a1, .LBB0_7
	j	.LBB0_10
.LBB0_9:
	lui	a0, %hi(RefreshPattern)
	sd	zero, %lo(RefreshPattern)(a0)
	lui	a0, %hi(IntraMBs)
	sd	zero, %lo(IntraMBs)(a0)
.LBB0_10:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end0:
	.size	RandomIntraInit, .Lfunc_end0-RandomIntraInit
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	RandomIntra                     # -- Begin function RandomIntra
	.p2align	2
	.type	RandomIntra,@function
RandomIntra:                            # @RandomIntra
# %bb.0:
	lui	a1, %hi(NumberIntraPerPicture)
	lw	a1, %lo(NumberIntraPerPicture)(a1)
	blez	a1, .LBB1_4
# %bb.1:
	lui	a2, %hi(IntraMBs)
	ld	a2, %lo(IntraMBs)(a2)
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	lw	a3, 0(a2)
	beq	a3, a0, .LBB1_5
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	addi	a1, a1, -1
	addi	a2, a2, 4
	bnez	a1, .LBB1_2
.LBB1_4:
	li	a0, 0
	ret
.LBB1_5:
	li	a0, 1
	ret
.Lfunc_end1:
	.size	RandomIntra, .Lfunc_end1-RandomIntra
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	RandomIntraNewPicture           # -- Begin function RandomIntraNewPicture
	.p2align	2
	.type	RandomIntraNewPicture,@function
RandomIntraNewPicture:                  # @RandomIntraNewPicture
# %bb.0:
	lui	a0, %hi(NumberIntraPerPicture)
	lw	a4, %lo(NumberIntraPerPicture)(a0)
	lui	a1, %hi(WalkAround)
	lw	a5, %lo(WalkAround)(a1)
	add	a0, a5, a4
	sw	a0, %lo(WalkAround)(a1)
	blez	a4, .LBB2_3
# %bb.1:
	lui	a1, %hi(RefreshPattern)
	ld	a1, %lo(RefreshPattern)(a1)
	lui	a2, %hi(NumberOfMBs)
	lw	a2, %lo(NumberOfMBs)(a2)
	lui	a3, %hi(IntraMBs)
	ld	a3, %lo(IntraMBs)(a3)
	slli	a4, a4, 1
	addw	a4, a5, a4
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	remw	a5, a0, a2
	slli	a5, a5, 2
	add	a5, a1, a5
	lw	a5, 0(a5)
	sw	a5, 0(a3)
	addiw	a0, a0, 1
	addi	a3, a3, 4
	bne	a0, a4, .LBB2_2
.LBB2_3:
	ret
.Lfunc_end2:
	.size	RandomIntraNewPicture, .Lfunc_end2-RandomIntraNewPicture
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	RandomIntraUninit               # -- Begin function RandomIntraUninit
	.p2align	2
	.type	RandomIntraUninit,@function
RandomIntraUninit:                      # @RandomIntraUninit
# %bb.0:
	lui	a0, %hi(NumberIntraPerPicture)
	lw	a0, %lo(NumberIntraPerPicture)(a0)
	blez	a0, .LBB3_2
# %bb.1:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	lui	a0, %hi(RefreshPattern)
	ld	a0, %lo(RefreshPattern)(a0)
	call	free
	lui	a0, %hi(IntraMBs)
	ld	a0, %lo(IntraMBs)(a0)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	tail	free
.LBB3_2:
	ret
.Lfunc_end3:
	.size	RandomIntraUninit, .Lfunc_end3-RandomIntraUninit
                                        # -- End function
	.option	pop
	.type	NumberOfMBs,@object             # @NumberOfMBs
	.section	.sbss,"aw",@nobits
	.p2align	2, 0x0
NumberOfMBs:
	.word	0                               # 0x0
	.size	NumberOfMBs, 4

	.type	NumberIntraPerPicture,@object   # @NumberIntraPerPicture
	.p2align	2, 0x0
NumberIntraPerPicture:
	.word	0                               # 0x0
	.size	NumberIntraPerPicture, 4

	.type	RefreshPattern,@object          # @RefreshPattern
	.p2align	3, 0x0
RefreshPattern:
	.quad	0
	.size	RefreshPattern, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"RandomIntraInit: RefreshPattern"
	.size	.L.str, 32

	.type	IntraMBs,@object                # @IntraMBs
	.section	.sbss,"aw",@nobits
	.p2align	3, 0x0
IntraMBs:
	.quad	0
	.size	IntraMBs, 8

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"RandomIntraInit: IntraMBs"
	.size	.L.str.1, 26

	.type	WalkAround,@object              # @WalkAround
	.section	.sbss,"aw",@nobits
	.p2align	2, 0x0
WalkAround:
	.word	0                               # 0x0
	.size	WalkAround, 4

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
