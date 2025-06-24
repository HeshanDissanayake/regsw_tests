	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"coremark.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	core_bench_state                # -- Begin function core_bench_state
	.p2align	2
	.type	core_bench_state,@function
core_bench_state:                       # @core_bench_state
.Lcore_bench_state$local:
	.type	.Lcore_bench_state$local,@function
# %bb.0:
	addi	sp, sp, -80
	sd	ra, 72(sp)                      # 8-byte Folded Spill
	mv	n9, a5
	mv	n10, a4
	mv	n12, a3
	mv	n14, a2
	mv	n11, a1
	mv	n13, a0
	sd	a1, 0(sp)
	sd	zero, 8(sp)
	sd	zero, 16(sp)
	sd	zero, 24(sp)
	sd	zero, 32(sp)
	lbu	a0, 0(a1)
	sd	zero, 40(sp)
	sd	zero, 48(sp)
	sd	zero, 56(sp)
	sd	zero, 64(sp)
	beqz	a0, .LBB1_3
# %bb.1:
	addi	n15, sp, 40
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	mv	a0, sp
	addi	a1, sp, 8
	call	.Lcore_state_transition$local
	slli	a0, a0, 32
	ld	a1, 0(sp)
	srli	a0, a0, 30
	add	a0, n15, a0
	lw	a2, 0(a0)
	lbu	a1, 0(a1)
	addi	a2, a2, 1
	sw	a2, 0(a0)
	bnez	a1, .LBB1_2
.LBB1_3:
	slli	a0, n13, 32
	srli	a0, a0, 32
	add	n15, n11, a0
	beqz	n13, .LBB1_8
# %bb.4:
	andi	a0, n14, 255
	li	a1, 44
	mv	a2, n11
	j	.LBB1_6
.LBB1_5:                                #   in Loop: Header=BB1_6 Depth=1
	add	a2, a2, n10
	bgeu	a2, n15, .LBB1_8
.LBB1_6:                                # =>This Inner Loop Header: Depth=1
	lbu	a3, 0(a2)
	beq	a3, a1, .LBB1_5
# %bb.7:                                #   in Loop: Header=BB1_6 Depth=1
	xor	a3, a3, a0
	sb	a3, 0(a2)
	j	.LBB1_5
.LBB1_8:
	lbu	a0, 0(n11)
	sd	n11, 0(sp)
	beqz	a0, .LBB1_11
# %bb.9:
	addi	n14, sp, 40
.LBB1_10:                               # =>This Inner Loop Header: Depth=1
	mv	a0, sp
	addi	a1, sp, 8
	call	.Lcore_state_transition$local
	slli	a0, a0, 32
	ld	a1, 0(sp)
	srli	a0, a0, 30
	add	a0, n14, a0
	lw	a2, 0(a0)
	lbu	a1, 0(a1)
	addi	a2, a2, 1
	sw	a2, 0(a0)
	bnez	a1, .LBB1_10
.LBB1_11:
	beqz	n13, .LBB1_16
# %bb.12:
	andi	a0, n12, 255
	li	a1, 44
	j	.LBB1_14
.LBB1_13:                               #   in Loop: Header=BB1_14 Depth=1
	add	n11, n11, n10
	bgeu	n11, n15, .LBB1_16
.LBB1_14:                               # =>This Inner Loop Header: Depth=1
	lbu	a2, 0(n11)
	beq	a2, a1, .LBB1_13
# %bb.15:                               #   in Loop: Header=BB1_14 Depth=1
	xor	a2, a2, a0
	sb	a2, 0(n11)
	j	.LBB1_13
.LBB1_16:
	lw	a0, 40(sp)
	mv	a1, n9
	call	crcu32
	lw	a1, 8(sp)
	mv	a2, a0
	mv	a0, a1
	mv	a1, a2
	call	crcu32
	lw	a1, 44(sp)
	mv	a2, a0
	mv	a0, a1
	mv	a1, a2
	call	crcu32
	lw	a1, 12(sp)
	mv	a2, a0
	mv	a0, a1
	mv	a1, a2
	call	crcu32
	lw	a1, 48(sp)
	mv	a2, a0
	mv	a0, a1
	mv	a1, a2
	call	crcu32
	lw	a1, 16(sp)
	mv	a2, a0
	mv	a0, a1
	mv	a1, a2
	call	crcu32
	lw	a1, 52(sp)
	mv	a2, a0
	mv	a0, a1
	mv	a1, a2
	call	crcu32
	lw	a1, 20(sp)
	mv	a2, a0
	mv	a0, a1
	mv	a1, a2
	call	crcu32
	lw	a1, 56(sp)
	mv	a2, a0
	mv	a0, a1
	mv	a1, a2
	call	crcu32
	lw	a1, 24(sp)
	mv	a2, a0
	mv	a0, a1
	mv	a1, a2
	call	crcu32
	lw	a1, 60(sp)
	mv	a2, a0
	mv	a0, a1
	mv	a1, a2
	call	crcu32
	lw	a1, 28(sp)
	mv	a2, a0
	mv	a0, a1
	mv	a1, a2
	call	crcu32
	lw	a1, 64(sp)
	mv	a2, a0
	mv	a0, a1
	mv	a1, a2
	call	crcu32
	lw	a1, 32(sp)
	mv	a2, a0
	mv	a0, a1
	mv	a1, a2
	call	crcu32
	lw	a1, 68(sp)
	mv	a2, a0
	mv	a0, a1
	mv	a1, a2
	call	crcu32
	lw	a1, 36(sp)
	mv	a2, a0
	mv	a0, a1
	mv	a1, a2
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 80
	tail	crcu32
.Lfunc_end0:
	.size	core_bench_state, .Lfunc_end0-core_bench_state
	.size	.Lcore_bench_state$local, .Lfunc_end0-core_bench_state
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	core_state_transition           # -- Begin function core_state_transition
	.p2align	2
	.type	core_state_transition,@function
core_state_transition:                  # @core_state_transition
.Lcore_state_transition$local:
	.type	.Lcore_state_transition$local,@function
# %bb.0:
	ld	a3, 0(a0)
	lbu	n6, 0(a3)
	beqz	n6, .LBB0_27
# %bb.1:
	li	a2, 0
	addi	a4, a1, 4
	addi	a5, a1, 24
	addi	a6, a1, 12
	addi	a7, a1, 20
	addi	t0, a1, 16
	addi	t1, a1, 8
	addi	a3, a3, 1
	li	t2, 44
	li	t3, 7
	li	t4, 1
.Lpcrel_hi0:
	auipc	t5, %pcrel_hi(.LJTI0_0)
	addi	t5, t5, %pcrel_lo(.Lpcrel_hi0)
	li	t6, -11
	li	n1, 43
	li	n2, 45
	li	n3, 46
	li	n4, -10
	li	n5, 69
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	beq	n6, t2, .LBB0_26
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	bltu	t3, a2, .LBB0_23
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	slli	n7, a2, 2
	add	n7, n7, t5
	lw	n7, 0(n7)
	add	n7, n7, t5
	jr	n7
.LBB0_5:                                #   in Loop: Header=BB0_2 Depth=1
	addi	n8, n6, -58
	li	a2, 4
	mv	n7, a1
	bltu	t6, n8, .LBB0_22
# %bb.6:                                #   in Loop: Header=BB0_2 Depth=1
	li	a2, 2
	mv	n7, a1
	beq	n6, n1, .LBB0_22
# %bb.7:                                #   in Loop: Header=BB0_2 Depth=1
	beq	n6, n2, .LBB0_22
# %bb.8:                                #   in Loop: Header=BB0_2 Depth=1
	bne	n6, n3, .LBB0_20
# %bb.9:                                #   in Loop: Header=BB0_2 Depth=1
	li	a2, 5
	j	.LBB0_21
.LBB0_10:                               #   in Loop: Header=BB0_2 Depth=1
	addi	n6, n6, -58
	li	a2, 7
	mv	n7, a5
	bgeu	n6, n4, .LBB0_22
	j	.LBB0_28
.LBB0_11:                               #   in Loop: Header=BB0_2 Depth=1
	addi	n8, n6, -58
	li	a2, 4
	mv	n7, t1
	bltu	t6, n8, .LBB0_22
# %bb.12:                               #   in Loop: Header=BB0_2 Depth=1
	li	a2, 5
	mv	n7, t1
	beq	n6, n3, .LBB0_22
	j	.LBB0_30
.LBB0_13:                               #   in Loop: Header=BB0_2 Depth=1
	addi	n6, n6, -58
	li	a2, 7
	bltu	t6, n6, .LBB0_23
	j	.LBB0_33
.LBB0_14:                               #   in Loop: Header=BB0_2 Depth=1
	li	a2, 6
	mv	n7, a6
	beq	n6, n1, .LBB0_22
# %bb.15:                               #   in Loop: Header=BB0_2 Depth=1
	beq	n6, n2, .LBB0_22
	j	.LBB0_29
.LBB0_16:                               #   in Loop: Header=BB0_2 Depth=1
	li	a2, 5
	mv	n7, t0
	beq	n6, n3, .LBB0_22
# %bb.17:                               #   in Loop: Header=BB0_2 Depth=1
	addi	n6, n6, -58
	li	a2, 4
	bgeu	n6, n4, .LBB0_23
	j	.LBB0_32
.LBB0_18:                               #   in Loop: Header=BB0_2 Depth=1
	andi	n8, n6, 223
	li	a2, 3
	mv	n7, a7
	beq	n8, n5, .LBB0_22
# %bb.19:                               #   in Loop: Header=BB0_2 Depth=1
	addi	n6, n6, -58
	li	a2, 5
	bgeu	n6, n4, .LBB0_23
	j	.LBB0_31
.LBB0_20:                               #   in Loop: Header=BB0_2 Depth=1
	lw	a2, 0(a4)
	addi	a2, a2, 1
	sw	a2, 0(a4)
	li	a2, 1
.LBB0_21:                               #   in Loop: Header=BB0_2 Depth=1
	mv	n7, a1
.LBB0_22:                               #   in Loop: Header=BB0_2 Depth=1
	lw	n6, 0(n7)
	addi	n6, n6, 1
	sw	n6, 0(n7)
.LBB0_23:                               #   in Loop: Header=BB0_2 Depth=1
	lbu	n6, 0(a3)
	addi	a3, a3, 1
	beqz	n6, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_2 Depth=1
	bne	a2, t4, .LBB0_2
.LBB0_25:                               # %.loopexit
	addi	a3, a3, -1
.LBB0_26:
	sd	a3, 0(a0)
	mv	a0, a2
	ret
.LBB0_27:
	li	a2, 0
	sd	a3, 0(a0)
	mv	a0, a2
	ret
.LBB0_28:
	mv	a4, a5
	j	.LBB0_33
.LBB0_29:
	mv	a4, a6
	j	.LBB0_33
.LBB0_30:
	mv	a4, t1
	j	.LBB0_33
.LBB0_31:
	mv	a4, a7
	j	.LBB0_33
.LBB0_32:
	mv	a4, t0
.LBB0_33:
	lw	a1, 0(a4)
	addi	a1, a1, 1
	sw	a1, 0(a4)
	li	a2, 1
	sd	a3, 0(a0)
	mv	a0, a2
	ret
.Lfunc_end1:
	.size	core_state_transition, .Lfunc_end1-core_state_transition
	.size	.Lcore_state_transition$local, .Lfunc_end1-core_state_transition
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_5-.LJTI0_0
	.word	.LBB0_23-.LJTI0_0
	.word	.LBB0_11-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_16-.LJTI0_0
	.word	.LBB0_18-.LJTI0_0
	.word	.LBB0_10-.LJTI0_0
	.word	.LBB0_13-.LJTI0_0
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.text
	.globl	core_init_state                 # -- Begin function core_init_state
	.p2align	2
	.type	core_init_state,@function
core_init_state:                        # @core_init_state
.Lcore_init_state$local:
	.type	.Lcore_init_state$local,@function
# %bb.0:
	addiw	a3, a0, -1
	li	a4, 2
	bltu	a3, a4, .LBB2_7
# %bb.1:                                # %.preheader
	li	t1, 0
	li	t0, 0
	li	a4, 0
.Lpcrel_hi1:
	auipc	a5, %pcrel_hi(.Lswitch.table.core_init_state)
	addi	a5, a5, %pcrel_lo(.Lpcrel_hi1)
.Lpcrel_hi2:
	auipc	a6, %pcrel_hi(.Lswitch.table.core_init_state.16)
	addi	a6, a6, %pcrel_lo(.Lpcrel_hi2)
	li	a7, 44
	j	.LBB2_3
.LBB2_2:                                #   in Loop: Header=BB2_3 Depth=1
	addi	a1, a1, 1
	andi	t0, a1, 7
	slli	t1, t0, 3
	add	t1, a5, t1
	ld	t1, 0(t1)
	slli	t0, t0, 2
	add	t0, a6, t0
	lw	t0, 0(t0)
	andi	t2, a1, 24
	add	t1, t1, t2
	ld	t1, 0(t1)
	add	t2, a4, t0
	addiw	t2, t2, 1
	bgeu	t2, a3, .LBB2_8
.LBB2_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_5 Depth 2
	beqz	t0, .LBB2_2
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=1
	slli	t2, a4, 32
	srli	t4, t2, 32
	add	t2, a2, t4
	slli	t3, t0, 32
	srli	t3, t3, 32
	add	t4, t3, t4
	add	t4, a2, t4
	mv	t5, t2
.LBB2_5:                                #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	t6, 0(t1)
	sb	t6, 0(t5)
	addi	t5, t5, 1
	addi	t1, t1, 1
	bne	t5, t4, .LBB2_5
# %bb.6:                                #   in Loop: Header=BB2_3 Depth=1
	add	t2, t2, t3
	sb	a7, 0(t2)
	add	a4, a4, t0
	addiw	a4, a4, 1
	j	.LBB2_2
.LBB2_7:
	li	a4, 0
.LBB2_8:
	bgeu	a4, a0, .LBB2_10
# %bb.9:
	slli	a0, a4, 32
	srli	a0, a0, 32
	add	a0, a2, a0
	subw	a3, a3, a4
	slli	a3, a3, 32
	srli	a2, a3, 32
	addi	a2, a2, 1
	li	a1, 0
	tail	memset
.LBB2_10:
	ret
.Lfunc_end2:
	.size	core_init_state, .Lfunc_end2-core_init_state
	.size	.Lcore_init_state$local, .Lfunc_end2-core_init_state
                                        # -- End function
	.option	pop
	.type	intpat,@object                  # @intpat
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
intpat:
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	.L.str.3
	.size	intpat, 32

	.type	floatpat,@object                # @floatpat
	.p2align	3, 0x0
floatpat:
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	.L.str.6
	.quad	.L.str.7
	.size	floatpat, 32

	.type	scipat,@object                  # @scipat
	.p2align	3, 0x0
scipat:
	.quad	.L.str.8
	.quad	.L.str.9
	.quad	.L.str.10
	.quad	.L.str.11
	.size	scipat, 32

	.type	errpat,@object                  # @errpat
	.p2align	3, 0x0
errpat:
	.quad	.L.str.12
	.quad	.L.str.13
	.quad	.L.str.14
	.quad	.L.str.15
	.size	errpat, 32

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"5012"
	.size	.L.str, 5

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"1234"
	.size	.L.str.1, 5

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"-874"
	.size	.L.str.2, 5

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"+122"
	.size	.L.str.3, 5

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"35.54400"
	.size	.L.str.4, 9

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	".1234500"
	.size	.L.str.5, 9

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"-110.700"
	.size	.L.str.6, 9

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"+0.64400"
	.size	.L.str.7, 9

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"5.500e+3"
	.size	.L.str.8, 9

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"-.123e-2"
	.size	.L.str.9, 9

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"-87e+832"
	.size	.L.str.10, 9

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"+0.6e-12"
	.size	.L.str.11, 9

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"T0.3e-1F"
	.size	.L.str.12, 9

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"-T.T++Tq"
	.size	.L.str.13, 9

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"1T3.4e4z"
	.size	.L.str.14, 9

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"34.0e-T^"
	.size	.L.str.15, 9

	.type	.Lswitch.table.core_init_state,@object # @switch.table.core_init_state
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.Lswitch.table.core_init_state:
	.quad	intpat
	.quad	intpat
	.quad	intpat
	.quad	floatpat
	.quad	floatpat
	.quad	scipat
	.quad	scipat
	.quad	errpat
	.size	.Lswitch.table.core_init_state, 64

	.type	.Lswitch.table.core_init_state.16,@object # @switch.table.core_init_state.16
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	2, 0x0
.Lswitch.table.core_init_state.16:
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	8                               # 0x8
	.word	8                               # 0x8
	.word	8                               # 0x8
	.word	8                               # 0x8
	.word	8                               # 0x8
	.size	.Lswitch.table.core_init_state.16, 32

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
