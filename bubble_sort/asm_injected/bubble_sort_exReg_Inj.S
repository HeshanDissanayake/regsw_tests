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
	regsw_c	x0, 0x0(x18)		# 100100000000000000000
	li	x1, -2
	mv	x2, t1
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
	regsw_c	x25, 0x1b5(x17)		# 100011100100110110101
	subw	x3, t0, a1
	blt	x1, x3, .LBB0_9
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	li	x3, 0
	lw	x4, 0(a0)
	slli	x5, x2, 32
	srli	x5, x5, 30
	add	x5, t2, x5
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x6, t2
	j	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=2
	regsw_c	x25, 0x4c0(x13)		# 011011100110011000000
	sw	x7, -4(x6)
	sw	x4, 0(x6)
	li	x3, 1
	addi	x6, x6, 4
	beq	x6, x5, .LBB0_7
.LBB0_5:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	regsw_c	x29, 0x4c0(x25)		# 110011110110011000000
	lw	x7, 0(x6)
	blt	x7, x4, .LBB0_4
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=2
	mv	x4, x7
	addi	x6, x6, 4
	bne	x6, x5, .LBB0_5
.LBB0_7:                                #   in Loop: Header=BB0_2 Depth=1
	regsw_c	x12, 0x0(x8)		# 010000110000000000000
	beqz	x3, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_2 Depth=1
	addiw	t0, t0, 1
	addi	x2, x2, -1
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
	unimp
.Lfunc_end1:
	.size	printArray, .Lfunc_end1-printArray
	.size	.LprintArray$local, .Lfunc_end1-printArray
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
