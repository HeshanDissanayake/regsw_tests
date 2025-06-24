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
	regsw_c	x9, 0x120(x18)		# 100100100100100100000
	mv	x9, a5
	mv	x10, a4
	mv	x12, a3
	mv	x14, a2
	mv	x11, a1
	mv	x13, a0
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
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	addi	x15, sp, 40
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	mv	a0, sp
	addi	a1, sp, 8
	call	.Lcore_state_transition$local
	slli	a0, a0, 32
	ld	a1, 0(sp)
	srli	a0, a0, 30
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	add	a0, x15, a0
	lw	a2, 0(a0)
	lbu	a1, 0(a1)
	addi	a2, a2, 1
	sw	a2, 0(a0)
	bnez	a1, .LBB1_2
.LBB1_3:
	regsw_c	x12, 0x400(x8)		# 010000110010000000000
	slli	a0, x13, 32
	srli	a0, a0, 32
	add	x15, x11, a0
	beqz	x13, .LBB1_8
# %bb.4:
	regsw_c	x4, 0x0(x8)		# 010000010000000000000
	andi	a0, x14, 255
	li	a1, 44
	mv	a2, x11
	j	.LBB1_6
.LBB1_5:                                #   in Loop: Header=BB1_6 Depth=1
	regsw_c	x16, 0x0(x4)		# 001001000000000000000
	add	a2, a2, x10
	bgeu	a2, x15, .LBB1_8
.LBB1_6:                                # =>This Inner Loop Header: Depth=1
	lbu	a3, 0(a2)
	beq	a3, a1, .LBB1_5
# %bb.7:                                #   in Loop: Header=BB1_6 Depth=1
	xor	a3, a3, a0
	sb	a3, 0(a2)
	j	.LBB1_5
.LBB1_8:
	regsw_c	x16, 0x0(x8)		# 010001000000000000000
	lbu	a0, 0(x11)
	sd	x11, 0(sp)
	beqz	a0, .LBB1_11
# %bb.9:
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	addi	x14, sp, 40
.LBB1_10:                               # =>This Inner Loop Header: Depth=1
	mv	a0, sp
	addi	a1, sp, 8
	call	.Lcore_state_transition$local
	slli	a0, a0, 32
	ld	a1, 0(sp)
	srli	a0, a0, 30
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	add	a0, x14, a0
	lw	a2, 0(a0)
	lbu	a1, 0(a1)
	addi	a2, a2, 1
	sw	a2, 0(a0)
	bnez	a1, .LBB1_10
.LBB1_11:
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	beqz	x13, .LBB1_16
# %bb.12:
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	andi	a0, x12, 255
	li	a1, 44
	j	.LBB1_14
.LBB1_13:                               #   in Loop: Header=BB1_14 Depth=1
	regsw_c	x16, 0x0(x29)		# 111011000000000000000
	add	x11, x11, x10
	bgeu	x11, x15, .LBB1_16
.LBB1_14:                               # =>This Inner Loop Header: Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	lbu	a2, 0(x11)
	beq	a2, a1, .LBB1_13
# %bb.15:                               #   in Loop: Header=BB1_14 Depth=1
	xor	a2, a2, a0
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	sb	a2, 0(x11)
	j	.LBB1_13
.LBB1_16:
	lw	a0, 40(sp)
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	mv	a1, x9
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
	regsw_c	x0, 0x0(x17)		# 100010000000000000000
	lbu	x6, 0(a3)
	beqz	x6, .LBB0_27
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
	regsw_c	x9, 0x100(x18)		# 100100100100100000000
	li	x1, 43
	li	x2, 45
	li	x3, 46
	li	x4, -10
	li	x5, 69
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	beq	x6, t2, .LBB0_26
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	bltu	t3, a2, .LBB0_23
