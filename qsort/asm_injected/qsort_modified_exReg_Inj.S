	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"qsort_modified.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	insertion_sort                  # -- Begin function insertion_sort
	.p2align	2
	.type	insertion_sort,@function
insertion_sort:                         # @insertion_sort
.Linsertion_sort$local:
	.type	.Linsertion_sort$local,@function
# %bb.0:
.Lpcrel_hi0:
	auipc	a3, %pcrel_hi(.Lload_count$local)
	ld	a4, %pcrel_lo(.Lpcrel_hi0)(a3)
.Lpcrel_hi1:
	auipc	a5, %pcrel_hi(.Lstore_count$local)
	ld	a6, %pcrel_lo(.Lpcrel_hi1)(a5)
	subw	a7, a2, a1
	add	a4, a4, a7
	sd	a4, %pcrel_lo(.Lpcrel_hi0)(a3)
	add	a6, a6, a7
	sd	a6, %pcrel_lo(.Lpcrel_hi1)(a5)
	bge	a1, a2, .LBB0_8
# %bb.1:
	addi	a3, a0, 4
	addi	a4, a1, -1
	addi	a5, a1, 1
	slli	a6, a1, 2
	add	a6, a6, a0
	addi	a6, a6, 4
	mv	a7, a1
	mv	t0, a1
	j	.LBB0_4
.LBB0_2:                                #   in Loop: Header=BB0_4 Depth=1
	mv	t2, a4
.LBB0_3:                                #   in Loop: Header=BB0_4 Depth=1
	sext.w	t2, t2
	slli	t2, t2, 2
	add	t2, a3, t2
	sw	t1, 0(t2)
	addi	a7, a7, 1
	addi	a5, a5, 1
	addi	a6, a6, 4
	beq	t0, a2, .LBB0_8
.LBB0_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
	mv	t2, t0
	addi	t0, t0, 1
	slli	t1, t0, 2
	add	t1, a0, t1
	lw	t1, 0(t1)
	blt	t2, a1, .LBB0_3
# %bb.5:                                # %.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	mv	t3, a6
	mv	t4, a5
	mv	t2, a7
.LBB0_6:                                #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	t5, -4(t3)
	bge	t1, t5, .LBB0_3
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=2
	sw	t5, 0(t3)
	addi	t2, t2, -1
	addi	t4, t4, -1
	addi	t3, t3, -4
	blt	a1, t4, .LBB0_6
	j	.LBB0_2
.LBB0_8:
	ret
.Lfunc_end0:
	.size	insertion_sort, .Lfunc_end0-insertion_sort
	.size	.Linsertion_sort$local, .Lfunc_end0-insertion_sort
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	partition                       # -- Begin function partition
	.p2align	2
	.type	partition,@function
partition:                              # @partition
.Lpartition$local:
	.type	.Lpartition$local,@function
# %bb.0:
	slli	a3, a2, 2
	add	a3, a0, a3
	lw	a5, 0(a3)
.Lpcrel_hi2:
	auipc	a7, %pcrel_hi(.Lload_count$local)
	ld	t0, %pcrel_lo(.Lpcrel_hi2)(a7)
.Lpcrel_hi3:
	auipc	a4, %pcrel_hi(.Lstore_count$local)
	ld	a6, %pcrel_lo(.Lpcrel_hi3)(a4)
	addi	t0, t0, 1
	sd	t0, %pcrel_lo(.Lpcrel_hi2)(a7)
	bge	a1, a2, .LBB1_6
# %bb.1:
	addi	a2, a1, -1
	slli	a1, a1, 2
	add	a1, a0, a1
	j	.LBB1_3
.LBB1_2:                                #   in Loop: Header=BB1_3 Depth=1
	addi	a1, a1, 4
	addi	t0, t0, 1
	beq	a1, a3, .LBB1_5
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	lw	t1, 0(a1)
	bge	t1, a5, .LBB1_2
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=1
	addiw	a2, a2, 1
	slli	t2, a2, 2
	add	t2, a0, t2
	lw	t3, 0(t2)
	sw	t1, 0(t2)
	sw	t3, 0(a1)
	addi	a6, a6, 2
	j	.LBB1_2
.LBB1_5:
	lw	a5, 0(a3)
	sd	t0, %pcrel_lo(.Lpcrel_hi2)(a7)
	addiw	a1, a2, 1
.LBB1_6:
	slli	a2, a1, 2
	add	a0, a0, a2
	lw	a2, 0(a0)
	sw	a5, 0(a0)
	sw	a2, 0(a3)
	addi	a6, a6, 2
	sd	a6, %pcrel_lo(.Lpcrel_hi3)(a4)
	mv	a0, a1
	ret
.Lfunc_end1:
	.size	partition, .Lfunc_end1-partition
	.size	.Lpartition$local, .Lfunc_end1-partition
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	quicksort                       # -- Begin function quicksort
	.p2align	2
	.type	quicksort,@function
quicksort:                              # @quicksort
.Lquicksort$local:
	.type	.Lquicksort$local,@function
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
	sd	s8, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a2
	mv	s1, a0
	subw	a0, a2, a1
.Lpcrel_hi4:
	auipc	s6, %pcrel_hi(.Lload_count$local)
.Lpcrel_hi5:
	auipc	s5, %pcrel_hi(.Lstore_count$local)
	addi	s4, s1, 4
	bge	a0, a3, .LBB2_9
.LBB2_1:
	ld	a2, %pcrel_lo(.Lpcrel_hi4)(s6)
	ld	a3, %pcrel_lo(.Lpcrel_hi5)(s5)
	add	a2, a2, a0
	sd	a2, %pcrel_lo(.Lpcrel_hi4)(s6)
	add	a0, a3, a0
	sd	a0, %pcrel_lo(.Lpcrel_hi5)(s5)
	bge	a1, s0, .LBB2_16
# %bb.2:
	addi	a0, a1, -1
	addi	a2, a1, 1
	slli	a3, a1, 2
	add	a3, a3, s1
	addi	a3, a3, 4
	mv	a4, a1
	mv	a5, a1
	j	.LBB2_5
.LBB2_3:                                #   in Loop: Header=BB2_5 Depth=1
	mv	a7, a0
.LBB2_4:                                #   in Loop: Header=BB2_5 Depth=1
	sext.w	a7, a7
	slli	a7, a7, 2
	add	a7, s4, a7
	sw	a6, 0(a7)
	addi	a4, a4, 1
	addi	a2, a2, 1
	addi	a3, a3, 4
	beq	a5, s0, .LBB2_16
.LBB2_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_7 Depth 2
	mv	a7, a5
	addi	a5, a5, 1
	slli	a6, a5, 2
	add	a6, s1, a6
	lw	a6, 0(a6)
	blt	a7, a1, .LBB2_4
# %bb.6:                                # %.preheader
                                        #   in Loop: Header=BB2_5 Depth=1
	mv	t0, a3
	mv	t1, a2
	mv	a7, a4
.LBB2_7:                                #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	t2, -4(t0)
	bge	a6, t2, .LBB2_4
# %bb.8:                                #   in Loop: Header=BB2_7 Depth=2
	sw	t2, 0(t0)
	addi	a7, a7, -1
	addi	t1, t1, -1
	addi	t0, t0, -4
	blt	a1, t1, .LBB2_7
	j	.LBB2_3
.LBB2_9:
	mv	s2, a3
	slli	s7, s0, 2
	add	s7, s1, s7
	addi	s8, s0, 1
	j	.LBB2_11
.LBB2_10:                               #   in Loop: Header=BB2_11 Depth=1
	lw	a3, 0(s7)
	slli	a4, s3, 2
	add	a4, s4, a4
	lw	a5, 0(a4)
	sub	a2, a2, a1
	sd	a2, %pcrel_lo(.Lpcrel_hi4)(s6)
	sw	a3, 0(a4)
	sw	a5, 0(s7)
	addi	a0, a0, 2
	sd	a0, %pcrel_lo(.Lpcrel_hi5)(s5)
	mv	a0, s1
	mv	a2, s3
	mv	a3, s2
	call	.Lquicksort$local
	addiw	a1, s3, 2
	subw	a0, s0, a1
	blt	a0, s2, .LBB2_1
.LBB2_11:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_14 Depth 2
	bge	a1, s0, .LBB2_16
# %bb.12:                               #   in Loop: Header=BB2_11 Depth=1
	ld	a2, %pcrel_lo(.Lpcrel_hi4)(s6)
	lw	a3, 0(s7)
	ld	a0, %pcrel_lo(.Lpcrel_hi5)(s5)
	addiw	s3, a1, -1
	add	a2, s8, a2
	slli	a4, a1, 2
	add	a4, s1, a4
	j	.LBB2_14
.LBB2_13:                               #   in Loop: Header=BB2_14 Depth=2
	addi	a4, a4, 4
	beq	a4, s7, .LBB2_10
.LBB2_14:                               #   Parent Loop BB2_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a5, 0(a4)
	bge	a5, a3, .LBB2_13
# %bb.15:                               #   in Loop: Header=BB2_14 Depth=2
	addiw	s3, s3, 1
	slli	a6, s3, 2
	add	a6, s1, a6
	lw	a7, 0(a6)
	sw	a5, 0(a6)
	sw	a7, 0(a4)
	addi	a0, a0, 2
	j	.LBB2_13
.LBB2_16:
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	ld	s1, 56(sp)                      # 8-byte Folded Reload
	ld	s2, 48(sp)                      # 8-byte Folded Reload
	ld	s3, 40(sp)                      # 8-byte Folded Reload
	ld	s4, 32(sp)                      # 8-byte Folded Reload
	ld	s5, 24(sp)                      # 8-byte Folded Reload
	ld	s6, 16(sp)                      # 8-byte Folded Reload
	ld	s7, 8(sp)                       # 8-byte Folded Reload
	ld	s8, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end2:
	.size	quicksort, .Lfunc_end2-quicksort
	.size	.Lquicksort$local, .Lfunc_end2-quicksort
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	generate_random_array           # -- Begin function generate_random_array
	.p2align	2
	.type	generate_random_array,@function
generate_random_array:                  # @generate_random_array
.Lgenerate_random_array$local:
	.type	.Lgenerate_random_array$local,@function
# %bb.0:
	blez	a1, .LBB3_4
# %bb.1:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a2
	mv	s1, a0
	slli	a1, a1, 2
	add	s2, a0, a1
.Lpcrel_hi6:
	auipc	s3, %pcrel_hi(.Lstore_count$local)
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	call	rand
	ld	a1, %pcrel_lo(.Lpcrel_hi6)(s3)
	remw	a0, a0, s0
	sw	a0, 0(s1)
	addi	a1, a1, 1
	addi	s1, s1, 4
	sd	a1, %pcrel_lo(.Lpcrel_hi6)(s3)
	bne	s1, s2, .LBB3_2
# %bb.3:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
.LBB3_4:
	ret
.Lfunc_end3:
	.size	generate_random_array, .Lfunc_end3-generate_random_array
	.size	.Lgenerate_random_array$local, .Lfunc_end3-generate_random_array
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	print_array                     # -- Begin function print_array
	.p2align	2
	.type	print_array,@function
print_array:                            # @print_array
.Lprint_array$local:
	.type	.Lprint_array$local,@function
# %bb.0:
	blez	a1, .LBB4_4
# %bb.1:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	slli	a1, a1, 2
	add	s2, a0, a1
.Lpcrel_hi7:
	auipc	a0, %pcrel_hi(.L.str)
	addi	s1, a0, %pcrel_lo(.Lpcrel_hi7)
.LBB4_2:                                # =>This Inner Loop Header: Depth=1
	lw	a1, 0(s0)
	mv	a0, s1
	call	printf
	addi	s0, s0, 4
	bne	s0, s2, .LBB4_2
# %bb.3:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
.LBB4_4:
	li	a0, 10
	tail	putchar
.Lfunc_end4:
	.size	print_array, .Lfunc_end4-print_array
	.size	.Lprint_array$local, .Lfunc_end4-print_array
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	main                            # -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   # @main
.Lmain$local:
	.type	.Lmain$local,@function
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
	li	a2, 3
	mv	s1, a1
	blt	a2, a0, .LBB5_2
# %bb.1:
	ld	a1, 0(s1)
.Lpcrel_hi8:
	auipc	a0, %pcrel_hi(.L.str.2)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi8)
	call	printf
	li	a0, 1
	j	.LBB5_6
.LBB5_2:
	li	a0, 3
	call	srand
	ld	a0, 8(s1)
	call	atoi
	ld	a1, 16(s1)
	mv	s0, a0
	mv	a0, a1
	call	atoi
	ld	a1, 24(s1)
	mv	s2, a0
	mv	a0, a1
	call	atoi
	mv	s3, a0
	slli	s4, s0, 2
	mv	a0, s4
	call	malloc
	mv	s1, a0
.Lpcrel_hi9:
	auipc	s5, %pcrel_hi(.Lstore_count$local)
	blez	s0, .LBB5_5
# %bb.3:
	add	s4, s1, s4
	mv	s6, s1
.LBB5_4:                                # =>This Inner Loop Header: Depth=1
	call	rand
	ld	a1, %pcrel_lo(.Lpcrel_hi9)(s5)
	remw	a0, a0, s3
	sw	a0, 0(s6)
	addi	a1, a1, 1
	addi	s6, s6, 4
	sd	a1, %pcrel_lo(.Lpcrel_hi9)(s5)
	bne	s6, s4, .LBB5_4
.LBB5_5:
	addiw	a2, s0, -1
	mv	a0, s1
	li	a1, 0
	mv	a3, s2
	call	.Lquicksort$local
.Lpcrel_hi10:
	auipc	a0, %pcrel_hi(.L.str.3)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi10)
	mv	a1, s0
	mv	a2, s2
	call	printf
.Lpcrel_hi11:
	auipc	a0, %pcrel_hi(.Lload_count$local)
	ld	a1, %pcrel_lo(.Lpcrel_hi11)(a0)
	ld	a2, %pcrel_lo(.Lpcrel_hi9)(s5)
.Lpcrel_hi12:
	auipc	a0, %pcrel_hi(.L.str.4)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi12)
	call	printf
	mv	a0, s1
	call	free
	li	a0, 0
.LBB5_6:
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	ld	s6, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end5:
	.size	main, .Lfunc_end5-main
	.size	.Lmain$local, .Lfunc_end5-main
                                        # -- End function
	.option	pop
	.type	load_count,@object              # @load_count
	.section	.sbss,"aw",@nobits
	.globl	load_count
	.p2align	3, 0x0
load_count:
.Lload_count$local:
	.quad	0                               # 0x0
	.size	load_count, 8

	.type	store_count,@object             # @store_count
	.globl	store_count
	.p2align	3, 0x0
store_count:
.Lstore_count$local:
	.quad	0                               # 0x0
	.size	store_count, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d "
	.size	.L.str, 4

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Usage: %s <array_length> <insertion_threshold> <max_value>\n"
	.size	.L.str.2, 60

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Sorted %d elements with Insertion Sort threshold = %d\n"
	.size	.L.str.3, 55

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Total Loads: %lld, Total Stores: %lld\n"
	.size	.L.str.4, 39

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
