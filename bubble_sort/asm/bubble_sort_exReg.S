	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"bubble_sort.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	bubbleSort                      # -- Begin function bubbleSort
	.p2align	2
	.type	bubbleSort,@function
bubbleSort:                             # @bubbleSort
.LbubbleSort$local:
	.type	.LbubbleSort$local,@function
# %bb.0:
	li	t0, 2
	blt	a1, t0, .LBB0_9
# %bb.1:                                # %.preheader
	li	t0, 0
	addiw	t1, a1, -1
	addi	t2, a0, 4
	li	n1, -2
	mv	n2, t1
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
	subw	n3, t0, a1
	blt	n1, n3, .LBB0_9
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	li	n3, 0
	lw	n4, 0(a0)
	slli	n5, n2, 32
	srli	n5, n5, 30
	add	n5, t2, n5
	mv	n6, t2
	j	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=2
	sw	n7, -4(n6)
	sw	n4, 0(n6)
	li	n3, 1
	addi	n6, n6, 4
	beq	n6, n5, .LBB0_7
.LBB0_5:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	n7, 0(n6)
	blt	n7, n4, .LBB0_4
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=2
	mv	n4, n7
	addi	n6, n6, 4
	bne	n6, n5, .LBB0_5
.LBB0_7:                                #   in Loop: Header=BB0_2 Depth=1
	beqz	n3, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_2 Depth=1
	addiw	t0, t0, 1
	addi	n2, n2, -1
	bne	t0, t1, .LBB0_2
.LBB0_9:
	ret
.Lfunc_end0:
	.size	bubbleSort, .Lfunc_end0-bubbleSort
	.size	.LbubbleSort$local, .Lfunc_end0-bubbleSort
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	printArray                      # -- Begin function printArray
	.p2align	2
	.type	printArray,@function
printArray:                             # @printArray
.LprintArray$local:
	.type	.LprintArray$local,@function
# %bb.0:
	addi	sp, sp, -16
	sd	s4, 8(sp)                       # 8-byte Folded Spill
	#APP
	lw	n21, 0(a0)

	#NO_APP
	#APP
	lw	s4, 4(a0)

	#NO_APP
	#APP
	lw	s4, 8(a0)

	#NO_APP
	#APP
	lw	s4, 12(a0)

	#NO_APP
	#APP
	lw	s4, 16(a0)

	#NO_APP
	#APP
	lw	s4, 20(a0)

	#NO_APP
	#APP
	lw	s4, 24(a0)

	#NO_APP
	ld	s4, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end1:
	.size	printArray, .Lfunc_end1-printArray
	.size	.LprintArray$local, .Lfunc_end1-printArray
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
