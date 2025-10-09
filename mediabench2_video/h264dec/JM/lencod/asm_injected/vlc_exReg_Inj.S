	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"vlc.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	ue_v                            # -- Begin function ue_v
	.p2align	2
	.type	ue_v,@function
ue_v:                                   # @ue_v
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	ld	a0, 32(a2)
	beqz	a0, .LBB0_10
# %bb.1:
	mv	s0, a2
	addiw	a0, a1, -1
	li	a2, -4
	addi	s2, a1, 1
	li	s3, 0
	bltu	a2, a0, .LBB0_5
# %bb.2:                                # %.preheader
	li	a0, 14
	li	a1, -3
	mv	a2, s2
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	mv	a3, s3
	addiw	s3, s3, 1
	bltu	a0, a3, .LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	srliw	a3, a2, 31
	add	a2, a2, a3
	sraiw	a2, a2, 1
	addi	a3, a2, -2
	bltu	a3, a1, .LBB0_3
.LBB0_5:
	slliw	s1, s3, 1
	fcvt.d.wu	fa0, s3
	call	exp2
	fcvt.w.d	a0, fa0, rtz
	subw	a0, s2, a0
	li	a1, 1
	sllw	a2, a1, s3
	lui	a3, 524288
	addi	a3, a3, -1
	addw	a3, a2, a3
	and	a0, a3, a0
	or	a0, a0, a2
	lbu	a4, 8(s0)
	sllw	a1, a1, s1
	addi	a2, s1, 1
	li	a3, 8
	j	.LBB0_7
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	addiw	a2, a2, -1
	srliw	a1, a1, 1
	beqz	a2, .LBB0_9
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	slli	a4, a4, 1
	and	a5, a1, a0
	lw	a6, 4(s0)
	snez	a5, a5
	or	a4, a4, a5
	sb	a4, 8(s0)
	addiw	a6, a6, -1
	sw	a6, 4(s0)
	bnez	a6, .LBB0_6
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	lw	a5, 0(s0)
	ld	a6, 32(s0)
	sw	a3, 4(s0)
	addi	a7, a5, 1
	sw	a7, 0(s0)
	add	a5, a6, a5
	sb	a4, 0(a5)
	sb	zero, 8(s0)
	li	a4, 0
	j	.LBB0_6
.LBB0_9:
	ori	a0, s1, 1
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.LBB0_10:
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.ue_v)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.ue_v)
	li	a2, 64
	call	__assert_fail
.Lfunc_end0:
	.size	ue_v, .Lfunc_end0-ue_v
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	ue_linfo                        # -- Begin function ue_linfo
	.p2align	2
	.type	ue_linfo,@function
ue_linfo:                               # @ue_linfo
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a3
	addiw	a1, a0, -1
	li	a3, -4
	addi	s1, a0, 1
	li	a0, 0
	bltu	a3, a1, .LBB1_4
# %bb.1:                                # %.preheader
	li	a1, 14
	li	a3, -3
	mv	a4, s1
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	mv	a5, a0
	addiw	a0, a0, 1
	bltu	a1, a5, .LBB1_4
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	srliw	a5, a4, 31
	add	a4, a4, a5
	sraiw	a4, a4, 1
	addi	a5, a4, -2
	bltu	a5, a3, .LBB1_2
.LBB1_4:
	slli	a1, a0, 1
	addi	a1, a1, 1
	sw	a1, 0(a2)
	fcvt.d.wu	fa0, a0
	call	exp2
	fcvt.w.d	a0, fa0, rtz
	subw	s1, s1, a0
	sw	s1, 0(s0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end1:
	.size	ue_linfo, .Lfunc_end1-ue_linfo
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	symbol2uvlc                     # -- Begin function symbol2uvlc
	.p2align	2
	.type	symbol2uvlc,@function
symbol2uvlc:                            # @symbol2uvlc
# %bb.0:
	lw	a1, 12(a0)
	srliw	a2, a1, 31
	add	a1, a1, a2
	srli	a1, a1, 1
	lw	a2, 16(a0)
	li	a3, 1
	sllw	a1, a3, a1
	addi	a3, a1, -1
	and	a2, a3, a2
	or	a1, a2, a1
	sw	a1, 20(a0)
	li	a0, 0
	ret
.Lfunc_end2:
	.size	symbol2uvlc, .Lfunc_end2-symbol2uvlc
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	writeUVLC2buffer                # -- Begin function writeUVLC2buffer
	.p2align	2
	.type	writeUVLC2buffer,@function
writeUVLC2buffer:                       # @writeUVLC2buffer
# %bb.0:
	lw	a2, 12(a0)
	blez	a2, .LBB3_7
# %bb.1:
	li	a3, 0
	addi	a4, a2, -1
	lbu	a6, 8(a1)
	li	a5, 1
	sllw	a4, a5, a4
	li	a5, 8
	j	.LBB3_3
.LBB3_2:                                #   in Loop: Header=BB3_3 Depth=1
	addiw	a3, a3, 1
	srliw	a4, a4, 1
	bge	a3, a2, .LBB3_7
.LBB3_3:                                # =>This Inner Loop Header: Depth=1
	lw	a7, 20(a0)
	slli	a6, a6, 1
	and	a7, a7, a4
	sb	a6, 8(a1)
	beqz	a7, .LBB3_5
# %bb.4:                                #   in Loop: Header=BB3_3 Depth=1
	ori	a6, a6, 1
	sb	a6, 8(a1)
.LBB3_5:                                #   in Loop: Header=BB3_3 Depth=1
	lw	a7, 4(a1)
	addiw	a7, a7, -1
	sw	a7, 4(a1)
	bnez	a7, .LBB3_2
# %bb.6:                                #   in Loop: Header=BB3_3 Depth=1
	lw	a2, 0(a1)
	ld	a7, 32(a1)
	sw	a5, 4(a1)
	addi	t0, a2, 1
	sw	t0, 0(a1)
	add	a2, a7, a2
	sb	a6, 0(a2)
	lw	a2, 12(a0)
	sb	zero, 8(a1)
	li	a6, 0
	j	.LBB3_2
.LBB3_7:
	ret
.Lfunc_end3:
	.size	writeUVLC2buffer, .Lfunc_end3-writeUVLC2buffer
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	se_v                            # -- Begin function se_v
	.p2align	2
	.type	se_v,@function
se_v:                                   # @se_v
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	ld	a0, 32(a2)
	beqz	a0, .LBB4_10
# %bb.1:
	mv	s0, a2
	sraiw	a0, a1, 31
	xor	a2, a1, a0
	subw	a2, a2, a0
	slliw	s2, a2, 1
	li	s3, 0
	beqz	a1, .LBB4_5
# %bb.2:
	srai	a3, s2, 1
	li	a0, 14
	li	a2, -3
.LBB4_3:                                # =>This Inner Loop Header: Depth=1
	mv	a4, s3
	addiw	s3, s3, 1
	bltu	a0, a4, .LBB4_5
# %bb.4:                                #   in Loop: Header=BB4_3 Depth=1
	srliw	a4, a3, 31
	add	a4, a3, a4
	addiw	a5, a3, -2
	sraiw	a3, a4, 1
	bltu	a5, a2, .LBB4_3
.LBB4_5:
	slti	s4, a1, 1
	slliw	s1, s3, 1
	fcvt.d.wu	fa0, s3
	call	exp2
	fcvt.w.d	a0, fa0, rtz
	or	a1, s2, s4
	subw	a1, a1, a0
	li	a2, 1
	sllw	a0, a2, s3
	lui	a3, 524288
	addi	a3, a3, -1
	addw	a3, a0, a3
	and	a1, a3, a1
	or	a0, a1, a0
	lbu	a4, 8(s0)
	sllw	a1, a2, s1
	addi	a2, s1, 1
	li	a3, 8
	j	.LBB4_7
.LBB4_6:                                #   in Loop: Header=BB4_7 Depth=1
	addiw	a2, a2, -1
	srliw	a1, a1, 1
	beqz	a2, .LBB4_9
.LBB4_7:                                # =>This Inner Loop Header: Depth=1
	slli	a4, a4, 1
	and	a5, a1, a0
	lw	a6, 4(s0)
	snez	a5, a5
	or	a4, a4, a5
	sb	a4, 8(s0)
	addiw	a6, a6, -1
	sw	a6, 4(s0)
	bnez	a6, .LBB4_6
# %bb.8:                                #   in Loop: Header=BB4_7 Depth=1
	lw	a5, 0(s0)
	ld	a6, 32(s0)
	sw	a3, 4(s0)
	addi	a7, a5, 1
	sw	a7, 0(s0)
	add	a5, a6, a5
	sb	a4, 0(a5)
	sb	zero, 8(s0)
	li	a4, 0
	j	.LBB4_6
.LBB4_9:
	ori	a0, s1, 1
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.LBB4_10:
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.se_v)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.se_v)
	li	a2, 109
	call	__assert_fail
.Lfunc_end4:
	.size	se_v, .Lfunc_end4-se_v
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	se_linfo                        # -- Begin function se_linfo
	.p2align	2
	.type	se_linfo,@function
se_linfo:                               # @se_linfo
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a3
	sraiw	a1, a0, 31
	xor	a3, a0, a1
	subw	a3, a3, a1
	slliw	s1, a3, 1
	li	a1, 0
	beqz	a0, .LBB5_4
# %bb.1:
	srai	a5, s1, 1
	li	a3, 14
	li	a4, -3
.LBB5_2:                                # =>This Inner Loop Header: Depth=1
	mv	a6, a1
	addiw	a1, a1, 1
	bltu	a3, a6, .LBB5_4
# %bb.3:                                #   in Loop: Header=BB5_2 Depth=1
	srliw	a6, a5, 31
	add	a6, a5, a6
	addiw	a7, a5, -2
	sraiw	a5, a6, 1
	bltu	a7, a4, .LBB5_2
.LBB5_4:
	slti	s2, a0, 1
	slli	a0, a1, 1
	addi	a0, a0, 1
	sw	a0, 0(a2)
	fcvt.d.wu	fa0, a1
	call	exp2
	fcvt.w.d	a0, fa0, rtz
	or	a1, s1, s2
	subw	a1, a1, a0
	sw	a1, 0(s0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end5:
	.size	se_linfo, .Lfunc_end5-se_linfo
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	u_1                             # -- Begin function u_1
	.p2align	2
	.type	u_1,@function
u_1:                                    # @u_1
# %bb.0:
	ld	a0, 32(a2)
	beqz	a0, .LBB6_4
# %bb.1:
	lbu	a3, 8(a2)
	slli	a3, a3, 1
	lw	a4, 4(a2)
	andi	a1, a1, 1
	or	a1, a3, a1
	sb	a1, 8(a2)
	addiw	a4, a4, -1
	sw	a4, 4(a2)
	beqz	a4, .LBB6_3
# %bb.2:
	li	a0, 1
	ret
.LBB6_3:
	lw	a3, 0(a2)
	li	a4, 8
	sw	a4, 4(a2)
	addi	a4, a3, 1
	sw	a4, 0(a2)
	add	a0, a0, a3
	sb	a1, 0(a0)
	sb	zero, 8(a2)
	li	a0, 1
	ret
.LBB6_4:
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.u_1)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.u_1)
	li	a2, 157
	call	__assert_fail
.Lfunc_end6:
	.size	u_1, .Lfunc_end6-u_1
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	u_v                             # -- Begin function u_v
	.p2align	2
	.type	u_v,@function
u_v:                                    # @u_v
# %bb.0:
	ld	a1, 32(a3)
	beqz	a1, .LBB7_7
# %bb.1:
	blez	a0, .LBB7_6
# %bb.2:
	addi	a1, a0, -1
	lbu	a6, 8(a3)
	li	a4, 1
	sllw	a1, a4, a1
	li	a4, 8
	mv	a5, a0
	j	.LBB7_4
.LBB7_3:                                #   in Loop: Header=BB7_4 Depth=1
	addiw	a5, a5, -1
	srliw	a1, a1, 1
	beqz	a5, .LBB7_6
.LBB7_4:                                # =>This Inner Loop Header: Depth=1
	slli	a6, a6, 1
	and	a7, a1, a2
	lw	t0, 4(a3)
	snez	a7, a7
	or	a6, a6, a7
	sb	a6, 8(a3)
	addiw	t0, t0, -1
	sw	t0, 4(a3)
	bnez	t0, .LBB7_3
# %bb.5:                                #   in Loop: Header=BB7_4 Depth=1
	lw	a7, 0(a3)
	ld	t0, 32(a3)
	sw	a4, 4(a3)
	addi	t1, a7, 1
	sw	t1, 0(a3)
	add	a7, t0, a7
	sb	a6, 0(a7)
	sb	zero, 8(a3)
	li	a6, 0
	j	.LBB7_3
.LBB7_6:
	ret
.LBB7_7:
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.u_v)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.u_v)
	li	a2, 204
	call	__assert_fail
.Lfunc_end7:
	.size	u_v, .Lfunc_end7-u_v
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	cbp_linfo_intra                 # -- Begin function cbp_linfo_intra
	.p2align	2
	.type	cbp_linfo_intra,@function
cbp_linfo_intra:                        # @cbp_linfo_intra
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a4, 22
	add	a1, a1, a4
	lw	a1, 436(a1)
	snez	a1, a1
	li	a4, 96
	mul	a1, a1, a4
	lui	a4, %hi(NCBP)
	addi	a4, a4, %lo(NCBP)
	slli	a0, a0, 1
	add	a0, a4, a0
	add	a0, a0, a1
	lbu	s1, 0(a0)
	mv	s0, a3
	addi	a0, s1, -1
	li	a1, -4
	addi	s1, s1, 1
	bltu	a1, a0, .LBB8_4
# %bb.1:                                # %.preheader
	li	a0, 0
	li	a1, 14
	li	a3, -3
	mv	a4, s1
.LBB8_2:                                # =>This Inner Loop Header: Depth=1
	mv	a5, a0
	addiw	a0, a0, 1
	bltu	a1, a5, .LBB8_5
# %bb.3:                                #   in Loop: Header=BB8_2 Depth=1
	srliw	a4, a4, 1
	addiw	a5, a4, -2
	bltu	a5, a3, .LBB8_2
	j	.LBB8_5
.LBB8_4:
	li	a0, 0
.LBB8_5:
	slli	a1, a0, 1
	addi	a1, a1, 1
	sw	a1, 0(a2)
	fcvt.d.wu	fa0, a0
	call	exp2
	fcvt.w.d	a0, fa0, rtz
	subw	s1, s1, a0
	sw	s1, 0(s0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end8:
	.size	cbp_linfo_intra, .Lfunc_end8-cbp_linfo_intra
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	cbp_linfo_inter                 # -- Begin function cbp_linfo_inter
	.p2align	2
	.type	cbp_linfo_inter,@function
cbp_linfo_inter:                        # @cbp_linfo_inter
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a4, 22
	add	a1, a1, a4
	lw	a1, 436(a1)
	snez	a1, a1
	li	a4, 96
	mul	a1, a1, a4
	lui	a4, %hi(NCBP)
	addi	a4, a4, %lo(NCBP)
	slli	a0, a0, 1
	add	a0, a4, a0
	add	a0, a0, a1
	lbu	s1, 1(a0)
	mv	s0, a3
	addi	a0, s1, -1
	li	a1, -4
	addi	s1, s1, 1
	bltu	a1, a0, .LBB9_4
# %bb.1:                                # %.preheader
	li	a0, 0
	li	a1, 14
	li	a3, -3
	mv	a4, s1
.LBB9_2:                                # =>This Inner Loop Header: Depth=1
	mv	a5, a0
	addiw	a0, a0, 1
	bltu	a1, a5, .LBB9_5
# %bb.3:                                #   in Loop: Header=BB9_2 Depth=1
	srliw	a4, a4, 1
	addiw	a5, a4, -2
	bltu	a5, a3, .LBB9_2
	j	.LBB9_5
.LBB9_4:
	li	a0, 0
.LBB9_5:
	slli	a1, a0, 1
	addi	a1, a1, 1
	sw	a1, 0(a2)
	fcvt.d.wu	fa0, a0
	call	exp2
	fcvt.w.d	a0, fa0, rtz
	subw	s1, s1, a0
	sw	s1, 0(s0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end9:
	.size	cbp_linfo_inter, .Lfunc_end9-cbp_linfo_inter
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	levrun_linfo_c2x2               # -- Begin function levrun_linfo_c2x2
	.p2align	2
	.type	levrun_linfo_c2x2,@function
levrun_linfo_c2x2:                      # @levrun_linfo_c2x2
# %bb.0:
	beqz	a0, .LBB10_3
# %bb.1:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a3
	slli	a3, a1, 2
	lui	a4, %hi(.L__const.levrun_linfo_c2x2.LEVRUN)
	addi	a4, a4, %lo(.L__const.levrun_linfo_c2x2.LEVRUN)
	add	a3, a4, a3
	lw	a3, 0(a3)
	sraiw	a4, a0, 31
	xor	a5, a0, a4
	subw	a4, a5, a4
	bge	a3, a4, .LBB10_4
# %bb.2:
	subw	a4, a4, a3
	slli	a4, a4, 3
	slli	a1, a1, 1
	add	s1, a4, a1
	j	.LBB10_5
.LBB10_3:
	li	a0, 1
	sw	a0, 0(a2)
	ret
.LBB10_4:
	slli	a4, a4, 3
	lui	a3, %hi(.L__const.levrun_linfo_c2x2.NTAB)
	addi	a3, a3, %lo(.L__const.levrun_linfo_c2x2.NTAB)
	slli	a1, a1, 2
	add	a1, a3, a1
	add	a1, a4, a1
	lw	s1, -8(a1)
	addi	s1, s1, 1
.LBB10_5:
	addiw	a1, s1, -2
	li	a3, -4
	slti	s2, a0, 1
	li	a0, 0
	bltu	a3, a1, .LBB10_9
# %bb.6:                                # %.preheader
	li	a1, 14
	li	a3, -3
	mv	a4, s1
.LBB10_7:                               # =>This Inner Loop Header: Depth=1
	mv	a5, a0
	addiw	a0, a0, 1
	bltu	a1, a5, .LBB10_9
# %bb.8:                                #   in Loop: Header=BB10_7 Depth=1
	srliw	a5, a4, 31
	add	a4, a4, a5
	sraiw	a4, a4, 1
	addi	a5, a4, -2
	bltu	a5, a3, .LBB10_7
.LBB10_9:
	slli	a1, a0, 1
	addi	a1, a1, 1
	sw	a1, 0(a2)
	fcvt.d.wu	fa0, a0
	call	exp2
	fcvt.w.d	a0, fa0, rtz
	add	s1, s1, s2
	subw	s1, s1, a0
	sw	s1, 0(s0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end10:
	.size	levrun_linfo_c2x2, .Lfunc_end10-levrun_linfo_c2x2
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	levrun_linfo_inter              # -- Begin function levrun_linfo_inter
	.p2align	2
	.type	levrun_linfo_inter,@function
levrun_linfo_inter:                     # @levrun_linfo_inter
# %bb.0:
	beqz	a0, .LBB11_3
# %bb.1:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a3
	lui	a3, %hi(.L__const.levrun_linfo_inter.LEVRUN)
	addi	a3, a3, %lo(.L__const.levrun_linfo_inter.LEVRUN)
	add	a3, a3, a1
	lbu	a3, 0(a3)
	sraiw	a4, a0, 31
	xor	a5, a0, a4
	subw	a4, a5, a4
	bgeu	a3, a4, .LBB11_4
# %bb.2:
	subw	a4, a4, a3
	slli	a4, a4, 5
	slli	a1, a1, 1
	add	s1, a4, a1
	j	.LBB11_5
.LBB11_3:
	li	a0, 1
	sw	a0, 0(a2)
	ret
.LBB11_4:
	addiw	a4, a4, -1
	li	a3, 10
	mul	a3, a4, a3
	lui	a4, %hi(.L__const.levrun_linfo_inter.NTAB)
	addi	a4, a4, %lo(.L__const.levrun_linfo_inter.NTAB)
	add	a1, a4, a1
	add	a1, a1, a3
	lbu	s1, 0(a1)
	addi	s1, s1, 1
.LBB11_5:
	addiw	a1, s1, -2
	li	a3, -4
	slti	s2, a0, 1
	li	a0, 0
	bltu	a3, a1, .LBB11_9
# %bb.6:                                # %.preheader
	li	a1, 14
	li	a3, -3
	mv	a4, s1
.LBB11_7:                               # =>This Inner Loop Header: Depth=1
	mv	a5, a0
	addiw	a0, a0, 1
	bltu	a1, a5, .LBB11_9
# %bb.8:                                #   in Loop: Header=BB11_7 Depth=1
	srliw	a5, a4, 31
	add	a4, a4, a5
	sraiw	a4, a4, 1
	addi	a5, a4, -2
	bltu	a5, a3, .LBB11_7
.LBB11_9:
	slli	a1, a0, 1
	addi	a1, a1, 1
	sw	a1, 0(a2)
	fcvt.d.wu	fa0, a0
	call	exp2
	fcvt.w.d	a0, fa0, rtz
	add	s1, s1, s2
	subw	s1, s1, a0
	sw	s1, 0(s0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end11:
	.size	levrun_linfo_inter, .Lfunc_end11-levrun_linfo_inter
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	levrun_linfo_intra              # -- Begin function levrun_linfo_intra
	.p2align	2
	.type	levrun_linfo_intra,@function
levrun_linfo_intra:                     # @levrun_linfo_intra
# %bb.0:
	beqz	a0, .LBB12_3
# %bb.1:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a3
	lui	a3, %hi(.L__const.levrun_linfo_intra.LEVRUN)
	addi	a3, a3, %lo(.L__const.levrun_linfo_intra.LEVRUN)
	add	a3, a3, a1
	lbu	a3, 0(a3)
	sraiw	a4, a0, 31
	xor	a5, a0, a4
	subw	a4, a5, a4
	bgeu	a3, a4, .LBB12_4
# %bb.2:
	subw	a4, a4, a3
	slli	a4, a4, 4
	slli	a1, a1, 1
	add	a1, a1, a4
	addi	s1, a1, 16
	j	.LBB12_5
.LBB12_3:
	li	a0, 1
	sw	a0, 0(a2)
	ret
.LBB12_4:
	addiw	a4, a4, -1
	slli	a3, a4, 2
	lui	a5, %hi(.L__const.levrun_linfo_intra.NTAB)
	addi	a5, a5, %lo(.L__const.levrun_linfo_intra.NTAB)
	add	a4, a5, a4
	add	a3, a4, a3
	add	a1, a3, a1
	lbu	s1, 0(a1)
	addi	s1, s1, 1
.LBB12_5:
	addiw	a1, s1, -2
	li	a3, -4
	slti	s2, a0, 1
	li	a0, 0
	bltu	a3, a1, .LBB12_9
# %bb.6:                                # %.preheader
	li	a1, 14
	li	a3, -3
	mv	a4, s1
.LBB12_7:                               # =>This Inner Loop Header: Depth=1
	mv	a5, a0
	addiw	a0, a0, 1
	bltu	a1, a5, .LBB12_9
# %bb.8:                                #   in Loop: Header=BB12_7 Depth=1
	srliw	a5, a4, 31
	add	a4, a4, a5
	sraiw	a4, a4, 1
	addi	a5, a4, -2
	bltu	a5, a3, .LBB12_7
.LBB12_9:
	slli	a1, a0, 1
	addi	a1, a1, 1
	sw	a1, 0(a2)
	fcvt.d.wu	fa0, a0
	call	exp2
	fcvt.w.d	a0, fa0, rtz
	add	s1, s1, s2
	subw	s1, s1, a0
	sw	s1, 0(s0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end12:
	.size	levrun_linfo_intra, .Lfunc_end12-levrun_linfo_intra
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	writeSyntaxElement_UVLC         # -- Begin function writeSyntaxElement_UVLC
	.p2align	2
	.type	writeSyntaxElement_UVLC,@function
writeSyntaxElement_UVLC:                # @writeSyntaxElement_UVLC
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	a4, 32(a0)
	lw	a0, 4(a0)
	lw	a2, 8(s0)
	mv	s1, a1
	addi	s2, s0, 12
	addi	a3, s0, 16
	mv	a1, a2
	mv	a2, s2
	jalr	a4
	lw	a0, 12(s0)
	srliw	a1, a0, 31
	add	a1, a0, a1
	srli	a1, a1, 1
	lw	a2, 16(s0)
	li	a3, 1
	sllw	a1, a3, a1
	addi	a4, a1, -1
	and	a2, a4, a2
	or	a1, a2, a1
	sw	a1, 20(s0)
	blez	a0, .LBB13_7
# %bb.1:
	ld	a1, 0(s1)
	li	a2, 0
	lbu	a5, 8(a1)
	addi	a4, a0, -1
	sllw	a3, a3, a4
	li	a4, 8
	j	.LBB13_3
.LBB13_2:                               #   in Loop: Header=BB13_3 Depth=1
	addiw	a2, a2, 1
	srliw	a3, a3, 1
	bge	a2, a0, .LBB13_7
.LBB13_3:                               # =>This Inner Loop Header: Depth=1
	lw	a6, 20(s0)
	slli	a5, a5, 1
	and	a6, a6, a3
	sb	a5, 8(a1)
	beqz	a6, .LBB13_5
# %bb.4:                                #   in Loop: Header=BB13_3 Depth=1
	ori	a5, a5, 1
	sb	a5, 8(a1)
.LBB13_5:                               #   in Loop: Header=BB13_3 Depth=1
	lw	a6, 4(a1)
	addiw	a6, a6, -1
	sw	a6, 4(a1)
	bnez	a6, .LBB13_2
# %bb.6:                                #   in Loop: Header=BB13_3 Depth=1
	lw	a0, 0(a1)
	ld	a6, 32(a1)
	sw	a4, 4(a1)
	addi	a7, a0, 1
	sw	a7, 0(a1)
	add	a0, a6, a0
	sb	a5, 0(a0)
	lw	a0, 0(s2)
	sb	zero, 8(a1)
	li	a5, 0
	j	.LBB13_2
.LBB13_7:
	lw	a1, 0(s0)
	beqz	a1, .LBB13_9
# %bb.8:
	ld	a1, 0(s1)
	li	a2, 1
	sw	a2, 40(a1)
.LBB13_9:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end13:
	.size	writeSyntaxElement_UVLC, .Lfunc_end13-writeSyntaxElement_UVLC
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	writeSyntaxElement_Intra4x4PredictionMode # -- Begin function writeSyntaxElement_Intra4x4PredictionMode
	.p2align	2
	.type	writeSyntaxElement_Intra4x4PredictionMode,@function
writeSyntaxElement_Intra4x4PredictionMode: # @writeSyntaxElement_Intra4x4PredictionMode
# %bb.0:
	lw	a6, 4(a0)
	li	a5, 1
	li	a3, -1
	li	a2, 1
	beq	a6, a3, .LBB14_2
# %bb.1:
	li	a2, 4
.LBB14_2:
	bne	a6, a3, .LBB14_4
# %bb.3:
	li	a6, 1
.LBB14_4:
	sw	a2, 12(a0)
	sw	a6, 16(a0)
	ld	a3, 0(a1)
	li	a4, 0
	sw	a6, 20(a0)
	lbu	a7, 8(a3)
	addi	a6, a2, -1
	sllw	a5, a5, a6
	li	a6, 8
	j	.LBB14_6
.LBB14_5:                               #   in Loop: Header=BB14_6 Depth=1
	addiw	a4, a4, 1
	srliw	a5, a5, 1
	bge	a4, a2, .LBB14_10
.LBB14_6:                               # =>This Inner Loop Header: Depth=1
	lw	t0, 20(a0)
	slli	a7, a7, 1
	and	t0, t0, a5
	sb	a7, 8(a3)
	beqz	t0, .LBB14_8
# %bb.7:                                #   in Loop: Header=BB14_6 Depth=1
	ori	a7, a7, 1
	sb	a7, 8(a3)
.LBB14_8:                               #   in Loop: Header=BB14_6 Depth=1
	lw	t0, 4(a3)
	addiw	t0, t0, -1
	sw	t0, 4(a3)
	bnez	t0, .LBB14_5
# %bb.9:                                #   in Loop: Header=BB14_6 Depth=1
	lw	a2, 0(a3)
	ld	t0, 32(a3)
	sw	a6, 4(a3)
	addi	t1, a2, 1
	sw	t1, 0(a3)
	add	a2, t0, a2
	sb	a7, 0(a2)
	lw	a2, 12(a0)
	sb	zero, 8(a3)
	li	a7, 0
	j	.LBB14_5
.LBB14_10:
	lw	a0, 0(a0)
	beqz	a0, .LBB14_12
# %bb.11:
	ld	a0, 0(a1)
	li	a1, 1
	sw	a1, 40(a0)
.LBB14_12:
	mv	a0, a2
	ret
.Lfunc_end14:
	.size	writeSyntaxElement_Intra4x4PredictionMode, .Lfunc_end14-writeSyntaxElement_Intra4x4PredictionMode
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	writeSyntaxElement2Buf_UVLC     # -- Begin function writeSyntaxElement2Buf_UVLC
	.p2align	2
	.type	writeSyntaxElement2Buf_UVLC,@function
writeSyntaxElement2Buf_UVLC:            # @writeSyntaxElement2Buf_UVLC
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	a4, 32(a0)
	lw	a0, 4(a0)
	lw	a2, 8(s0)
	mv	s1, a1
	addi	s2, s0, 12
	addi	a3, s0, 16
	mv	a1, a2
	mv	a2, s2
	jalr	a4
	lw	a0, 12(s0)
	srliw	a1, a0, 31
	add	a1, a0, a1
	srli	a1, a1, 1
	lw	a3, 16(s0)
	li	a2, 1
	sllw	a1, a2, a1
	addi	a4, a1, -1
	and	a3, a4, a3
	or	a1, a3, a1
	sw	a1, 20(s0)
	blez	a0, .LBB15_7
# %bb.1:
	li	a1, 0
	lbu	a4, 8(s1)
	addi	a3, a0, -1
	sllw	a2, a2, a3
	li	a3, 8
	j	.LBB15_3
.LBB15_2:                               #   in Loop: Header=BB15_3 Depth=1
	addiw	a1, a1, 1
	srliw	a2, a2, 1
	bge	a1, a0, .LBB15_7
.LBB15_3:                               # =>This Inner Loop Header: Depth=1
	lw	a5, 20(s0)
	slli	a4, a4, 1
	and	a5, a5, a2
	sb	a4, 8(s1)
	beqz	a5, .LBB15_5
# %bb.4:                                #   in Loop: Header=BB15_3 Depth=1
	ori	a4, a4, 1
	sb	a4, 8(s1)
.LBB15_5:                               #   in Loop: Header=BB15_3 Depth=1
	lw	a5, 4(s1)
	addiw	a5, a5, -1
	sw	a5, 4(s1)
	bnez	a5, .LBB15_2
# %bb.6:                                #   in Loop: Header=BB15_3 Depth=1
	lw	a0, 0(s1)
	ld	a5, 32(s1)
	sw	a3, 4(s1)
	addi	a6, a0, 1
	sw	a6, 0(s1)
	add	a0, a5, a0
	sb	a4, 0(a0)
	lw	a0, 0(s2)
	sb	zero, 8(s1)
	li	a4, 0
	j	.LBB15_2
.LBB15_7:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end15:
	.size	writeSyntaxElement2Buf_UVLC, .Lfunc_end15-writeSyntaxElement2Buf_UVLC
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	writeSyntaxElement2Buf_Fixed    # -- Begin function writeSyntaxElement2Buf_Fixed
	.p2align	2
	.type	writeSyntaxElement2Buf_Fixed,@function
writeSyntaxElement2Buf_Fixed:           # @writeSyntaxElement2Buf_Fixed
# %bb.0:
	lw	a2, 12(a0)
	blez	a2, .LBB16_7
# %bb.1:
	li	a3, 0
	addi	a4, a2, -1
	lbu	a6, 8(a1)
	li	a5, 1
	sllw	a4, a5, a4
	li	a5, 8
	j	.LBB16_3
.LBB16_2:                               #   in Loop: Header=BB16_3 Depth=1
	addiw	a3, a3, 1
	srliw	a4, a4, 1
	bge	a3, a2, .LBB16_7
.LBB16_3:                               # =>This Inner Loop Header: Depth=1
	lw	a7, 20(a0)
	slli	a6, a6, 1
	and	a7, a7, a4
	sb	a6, 8(a1)
	beqz	a7, .LBB16_5
# %bb.4:                                #   in Loop: Header=BB16_3 Depth=1
	ori	a6, a6, 1
	sb	a6, 8(a1)
.LBB16_5:                               #   in Loop: Header=BB16_3 Depth=1
	lw	a7, 4(a1)
	addiw	a7, a7, -1
	sw	a7, 4(a1)
	bnez	a7, .LBB16_2
# %bb.6:                                #   in Loop: Header=BB16_3 Depth=1
	lw	a2, 0(a1)
	ld	a7, 32(a1)
	sw	a5, 4(a1)
	addi	t0, a2, 1
	sw	t0, 0(a1)
	add	a2, a7, a2
	sb	a6, 0(a2)
	lw	a2, 12(a0)
	sb	zero, 8(a1)
	li	a6, 0
	j	.LBB16_2
.LBB16_7:
	mv	a0, a2
	ret
.Lfunc_end16:
	.size	writeSyntaxElement2Buf_Fixed, .Lfunc_end16-writeSyntaxElement2Buf_Fixed
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	symbol2vlc                      # -- Begin function symbol2vlc
	.p2align	2
	.type	symbol2vlc,@function
symbol2vlc:                             # @symbol2vlc
# %bb.0:
	lw	a2, 12(a0)
	blez	a2, .LBB17_4
# %bb.1:
	lw	a1, 16(a0)
	li	a3, 0
	addi	a2, a2, 1
	li	a4, 1
.LBB17_2:                               # =>This Inner Loop Header: Depth=1
	addi	a5, a2, -2
	slli	a3, a3, 1
	srlw	a5, a1, a5
	andi	a5, a5, 1
	addiw	a2, a2, -1
	or	a3, a5, a3
	bltu	a4, a2, .LBB17_2
# %bb.3:
	sw	a3, 20(a0)
	li	a0, 0
	ret
.LBB17_4:
	sw	zero, 20(a0)
	li	a0, 0
	ret
.Lfunc_end17:
	.size	symbol2vlc, .Lfunc_end17-symbol2vlc
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	writeSyntaxElement_VLC          # -- Begin function writeSyntaxElement_VLC
	.p2align	2
	.type	writeSyntaxElement_VLC,@function
writeSyntaxElement_VLC:                 # @writeSyntaxElement_VLC
# %bb.0:
	lw	a3, 4(a0)
	lw	a2, 8(a0)
	sw	a3, 16(a0)
	sw	a2, 12(a0)
	blez	a2, .LBB18_9
# %bb.1:                                # %.preheader
	li	a4, 0
	addi	a5, a2, 1
	li	a6, 1
.LBB18_2:                               # =>This Inner Loop Header: Depth=1
	addi	a7, a5, -2
	slli	a4, a4, 1
	srlw	a7, a3, a7
	andi	a7, a7, 1
	addiw	a5, a5, -1
	or	a4, a7, a4
	bltu	a6, a5, .LBB18_2
# %bb.3:
	ld	a1, 0(a1)
	li	a3, 0
	sw	a4, 20(a0)
	addi	a4, a2, -1
	lbu	a6, 8(a1)
	li	a5, 1
	sllw	a4, a5, a4
	li	a5, 8
	j	.LBB18_5
.LBB18_4:                               #   in Loop: Header=BB18_5 Depth=1
	addiw	a3, a3, 1
	srliw	a4, a4, 1
	bge	a3, a2, .LBB18_10
.LBB18_5:                               # =>This Inner Loop Header: Depth=1
	lw	a7, 20(a0)
	slli	a6, a6, 1
	and	a7, a7, a4
	sb	a6, 8(a1)
	beqz	a7, .LBB18_7
# %bb.6:                                #   in Loop: Header=BB18_5 Depth=1
	ori	a6, a6, 1
	sb	a6, 8(a1)
.LBB18_7:                               #   in Loop: Header=BB18_5 Depth=1
	lw	a7, 4(a1)
	addiw	a7, a7, -1
	sw	a7, 4(a1)
	bnez	a7, .LBB18_4
# %bb.8:                                #   in Loop: Header=BB18_5 Depth=1
	lw	a2, 0(a1)
	ld	a7, 32(a1)
	sw	a5, 4(a1)
	addi	t0, a2, 1
	sw	t0, 0(a1)
	add	a2, a7, a2
	sb	a6, 0(a2)
	lw	a2, 12(a0)
	sb	zero, 8(a1)
	li	a6, 0
	j	.LBB18_4
.LBB18_9:
	sw	zero, 20(a0)
.LBB18_10:
	mv	a0, a2
	ret
.Lfunc_end18:
	.size	writeSyntaxElement_VLC, .Lfunc_end18-writeSyntaxElement_VLC
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	writeSyntaxElement_NumCoeffTrailingOnes # -- Begin function writeSyntaxElement_NumCoeffTrailingOnes
	.p2align	2
	.type	writeSyntaxElement_NumCoeffTrailingOnes,@function
writeSyntaxElement_NumCoeffTrailingOnes: # @writeSyntaxElement_NumCoeffTrailingOnes
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	lw	a5, 12(a0)
	li	a3, 3
	bne	a5, a3, .LBB19_4
# %bb.1:
	lw	a2, 4(a0)
	li	a4, 6
	sw	a4, 12(a0)
	blez	a2, .LBB19_3
# %bb.2:
	lw	a3, 8(a0)
	slli	a2, a2, 2
	addi	a2, a2, -4
	or	a3, a3, a2
.LBB19_3:
	sw	a3, 16(a0)
	j	.LBB19_6
.LBB19_4:
	lw	a3, 8(a0)
	lw	a2, 4(a0)
	li	a4, 68
	mul	a3, a3, a4
	li	a4, 272
	mul	a6, a5, a4
	lui	a4, %hi(writeSyntaxElement_NumCoeffTrailingOnes.lentab)
	addi	a4, a4, %lo(writeSyntaxElement_NumCoeffTrailingOnes.lentab)
	add	a4, a4, a6
	slli	a7, a2, 2
	add	t0, a3, a7
	add	a4, a4, t0
	lw	a4, 0(a4)
	sw	a4, 12(a0)
	lui	t0, %hi(writeSyntaxElement_NumCoeffTrailingOnes.codtab)
	addi	t0, t0, %lo(writeSyntaxElement_NumCoeffTrailingOnes.codtab)
	add	a6, t0, a6
	add	a3, a3, a7
	add	a3, a6, a3
	lw	a3, 0(a3)
	sw	a3, 16(a0)
	beqz	a4, .LBB19_16
# %bb.5:
	blez	a4, .LBB19_14
.LBB19_6:
	li	a5, 0
	addi	a2, a4, 1
	li	a6, 1
.LBB19_7:                               # =>This Inner Loop Header: Depth=1
	addi	a7, a2, -2
	slli	a5, a5, 1
	srlw	a7, a3, a7
	andi	a7, a7, 1
	addiw	a2, a2, -1
	or	a5, a7, a5
	bltu	a6, a2, .LBB19_7
# %bb.8:
	ld	a1, 0(a1)
	li	a2, 0
	sw	a5, 20(a0)
	addi	a3, a4, -1
	lbu	a6, 8(a1)
	li	a5, 1
	sllw	a3, a5, a3
	li	a5, 8
	j	.LBB19_10
.LBB19_9:                               #   in Loop: Header=BB19_10 Depth=1
	addiw	a2, a2, 1
	srliw	a3, a3, 1
	bge	a2, a4, .LBB19_15
.LBB19_10:                              # =>This Inner Loop Header: Depth=1
	lw	a7, 20(a0)
	slli	a6, a6, 1
	and	a7, a7, a3
	sb	a6, 8(a1)
	beqz	a7, .LBB19_12
# %bb.11:                               #   in Loop: Header=BB19_10 Depth=1
	ori	a6, a6, 1
	sb	a6, 8(a1)
.LBB19_12:                              #   in Loop: Header=BB19_10 Depth=1
	lw	a7, 4(a1)
	addiw	a7, a7, -1
	sw	a7, 4(a1)
	bnez	a7, .LBB19_9
# %bb.13:                               #   in Loop: Header=BB19_10 Depth=1
	lw	a4, 0(a1)
	ld	a7, 32(a1)
	sw	a5, 4(a1)
	addi	t0, a4, 1
	sw	t0, 0(a1)
	add	a4, a7, a4
	sb	a6, 0(a4)
	lw	a4, 12(a0)
	sb	zero, 8(a1)
	li	a6, 0
	j	.LBB19_9
.LBB19_14:
	sw	zero, 20(a0)
.LBB19_15:
	mv	a0, a4
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.LBB19_16:
	lw	a3, 8(a0)
	lui	a0, %hi(.L.str.2)
	addi	a0, a0, %lo(.L.str.2)
	mv	a1, a5
	call	printf
	li	a0, -1
	call	exit
.Lfunc_end19:
	.size	writeSyntaxElement_NumCoeffTrailingOnes, .Lfunc_end19-writeSyntaxElement_NumCoeffTrailingOnes
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	writeSyntaxElement_NumCoeffTrailingOnesChromaDC # -- Begin function writeSyntaxElement_NumCoeffTrailingOnesChromaDC
	.p2align	2
	.type	writeSyntaxElement_NumCoeffTrailingOnesChromaDC,@function
writeSyntaxElement_NumCoeffTrailingOnesChromaDC: # @writeSyntaxElement_NumCoeffTrailingOnesChromaDC
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	lui	a3, 22
	add	a2, a2, a3
	lw	a3, 436(a2)
	lw	a2, 8(a0)
	addiw	a3, a3, -1
	lw	a4, 4(a0)
	li	a5, 68
	mul	a5, a2, a5
	li	a6, 272
	mul	a6, a3, a6
	lui	a3, %hi(writeSyntaxElement_NumCoeffTrailingOnesChromaDC.lentab)
	addi	a3, a3, %lo(writeSyntaxElement_NumCoeffTrailingOnesChromaDC.lentab)
	add	a3, a3, a5
	slli	a7, a4, 2
	add	a3, a3, a7
	add	a3, a3, a6
	lw	a3, 0(a3)
	sw	a3, 12(a0)
	lui	t0, %hi(writeSyntaxElement_NumCoeffTrailingOnesChromaDC.codtab)
	addi	t0, t0, %lo(writeSyntaxElement_NumCoeffTrailingOnesChromaDC.codtab)
	add	a5, t0, a5
	add	a5, a5, a7
	add	a5, a5, a6
	lw	a5, 0(a5)
	sw	a5, 16(a0)
	beqz	a3, .LBB20_12
# %bb.1:
	blez	a3, .LBB20_10
# %bb.2:                                # %.preheader
	li	a4, 0
	addi	a2, a3, 1
	li	a6, 1
.LBB20_3:                               # =>This Inner Loop Header: Depth=1
	addi	a7, a2, -2
	slli	a4, a4, 1
	srlw	a7, a5, a7
	andi	a7, a7, 1
	addiw	a2, a2, -1
	or	a4, a7, a4
	bltu	a6, a2, .LBB20_3
# %bb.4:
	ld	a1, 0(a1)
	li	a2, 0
	sw	a4, 20(a0)
	addi	a4, a3, -1
	lbu	a6, 8(a1)
	li	a5, 1
	sllw	a4, a5, a4
	li	a5, 8
	j	.LBB20_6
.LBB20_5:                               #   in Loop: Header=BB20_6 Depth=1
	addiw	a2, a2, 1
	srliw	a4, a4, 1
	bge	a2, a3, .LBB20_11
.LBB20_6:                               # =>This Inner Loop Header: Depth=1
	lw	a7, 20(a0)
	slli	a6, a6, 1
	and	a7, a7, a4
	sb	a6, 8(a1)
	beqz	a7, .LBB20_8
# %bb.7:                                #   in Loop: Header=BB20_6 Depth=1
	ori	a6, a6, 1
	sb	a6, 8(a1)
.LBB20_8:                               #   in Loop: Header=BB20_6 Depth=1
	lw	a7, 4(a1)
	addiw	a7, a7, -1
	sw	a7, 4(a1)
	bnez	a7, .LBB20_5
# %bb.9:                                #   in Loop: Header=BB20_6 Depth=1
	lw	a3, 0(a1)
	ld	a7, 32(a1)
	sw	a5, 4(a1)
	addi	t0, a3, 1
	sw	t0, 0(a1)
	add	a3, a7, a3
	sb	a6, 0(a3)
	lw	a3, 12(a0)
	sb	zero, 8(a1)
	li	a6, 0
	j	.LBB20_5
.LBB20_10:
	sw	zero, 20(a0)
.LBB20_11:
	mv	a0, a3
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.LBB20_12:
	lui	a0, %hi(.L.str.3)
	addi	a0, a0, %lo(.L.str.3)
	mv	a1, a4
	call	printf
	li	a0, -1
	call	exit
.Lfunc_end20:
	.size	writeSyntaxElement_NumCoeffTrailingOnesChromaDC, .Lfunc_end20-writeSyntaxElement_NumCoeffTrailingOnesChromaDC
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	writeSyntaxElement_TotalZeros   # -- Begin function writeSyntaxElement_TotalZeros
	.p2align	2
	.type	writeSyntaxElement_TotalZeros,@function
writeSyntaxElement_TotalZeros:          # @writeSyntaxElement_TotalZeros
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	lw	a2, 12(a0)
	lw	a3, 4(a0)
	slli	a4, a2, 6
	lui	a2, %hi(writeSyntaxElement_TotalZeros.lentab)
	addi	a2, a2, %lo(writeSyntaxElement_TotalZeros.lentab)
	add	a2, a2, a4
	slli	a5, a3, 2
	add	a2, a2, a5
	lw	a2, 0(a2)
	sw	a2, 12(a0)
	lui	a6, %hi(writeSyntaxElement_TotalZeros.codtab)
	addi	a6, a6, %lo(writeSyntaxElement_TotalZeros.codtab)
	add	a4, a6, a4
	add	a4, a4, a5
	lw	a4, 0(a4)
	sw	a4, 16(a0)
	beqz	a2, .LBB21_12
# %bb.1:
	blez	a2, .LBB21_10
# %bb.2:                                # %.preheader
	li	a5, 0
	addi	a3, a2, 1
	li	a6, 1
.LBB21_3:                               # =>This Inner Loop Header: Depth=1
	addi	a7, a3, -2
	slli	a5, a5, 1
	srlw	a7, a4, a7
	andi	a7, a7, 1
	addiw	a3, a3, -1
	or	a5, a7, a5
	bltu	a6, a3, .LBB21_3
# %bb.4:
	ld	a1, 0(a1)
	li	a3, 0
	sw	a5, 20(a0)
	addi	a4, a2, -1
	lbu	a6, 8(a1)
	li	a5, 1
	sllw	a4, a5, a4
	li	a5, 8
	j	.LBB21_6
.LBB21_5:                               #   in Loop: Header=BB21_6 Depth=1
	addiw	a3, a3, 1
	srliw	a4, a4, 1
	bge	a3, a2, .LBB21_11
.LBB21_6:                               # =>This Inner Loop Header: Depth=1
	lw	a7, 20(a0)
	slli	a6, a6, 1
	and	a7, a7, a4
	sb	a6, 8(a1)
	beqz	a7, .LBB21_8
# %bb.7:                                #   in Loop: Header=BB21_6 Depth=1
	ori	a6, a6, 1
	sb	a6, 8(a1)
.LBB21_8:                               #   in Loop: Header=BB21_6 Depth=1
	lw	a7, 4(a1)
	addiw	a7, a7, -1
	sw	a7, 4(a1)
	bnez	a7, .LBB21_5
# %bb.9:                                #   in Loop: Header=BB21_6 Depth=1
	lw	a2, 0(a1)
	ld	a7, 32(a1)
	sw	a5, 4(a1)
	addi	t0, a2, 1
	sw	t0, 0(a1)
	add	a2, a7, a2
	sb	a6, 0(a2)
	lw	a2, 12(a0)
	sb	zero, 8(a1)
	li	a6, 0
	j	.LBB21_5
.LBB21_10:
	sw	zero, 20(a0)
.LBB21_11:
	mv	a0, a2
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.LBB21_12:
	lui	a0, %hi(.L.str.4)
	addi	a0, a0, %lo(.L.str.4)
	mv	a1, a3
	call	printf
	li	a0, -1
	call	exit
.Lfunc_end21:
	.size	writeSyntaxElement_TotalZeros, .Lfunc_end21-writeSyntaxElement_TotalZeros
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	writeSyntaxElement_TotalZerosChromaDC # -- Begin function writeSyntaxElement_TotalZerosChromaDC
	.p2align	2
	.type	writeSyntaxElement_TotalZerosChromaDC,@function
writeSyntaxElement_TotalZerosChromaDC:  # @writeSyntaxElement_TotalZerosChromaDC
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	lui	a3, 22
	add	a2, a2, a3
	lw	a2, 436(a2)
	addiw	a2, a2, -1
	lw	a4, 12(a0)
	lw	a3, 4(a0)
	li	a5, 960
	mul	a5, a2, a5
	lui	a2, %hi(writeSyntaxElement_TotalZerosChromaDC.lentab)
	addi	a2, a2, %lo(writeSyntaxElement_TotalZerosChromaDC.lentab)
	slli	a4, a4, 6
	add	a2, a2, a4
	slli	a6, a3, 2
	add	a2, a2, a6
	add	a2, a2, a5
	lw	a2, 0(a2)
	sw	a2, 12(a0)
	lui	a7, %hi(writeSyntaxElement_TotalZerosChromaDC.codtab)
	addi	a7, a7, %lo(writeSyntaxElement_TotalZerosChromaDC.codtab)
	add	a4, a7, a4
	add	a4, a4, a6
	add	a4, a4, a5
	lw	a4, 0(a4)
	sw	a4, 16(a0)
	beqz	a2, .LBB22_12
# %bb.1:
	blez	a2, .LBB22_10
# %bb.2:                                # %.preheader
	li	a5, 0
	addi	a3, a2, 1
	li	a6, 1
.LBB22_3:                               # =>This Inner Loop Header: Depth=1
	addi	a7, a3, -2
	slli	a5, a5, 1
	srlw	a7, a4, a7
	andi	a7, a7, 1
	addiw	a3, a3, -1
	or	a5, a7, a5
	bltu	a6, a3, .LBB22_3
# %bb.4:
	ld	a1, 0(a1)
	li	a3, 0
	sw	a5, 20(a0)
	addi	a4, a2, -1
	lbu	a6, 8(a1)
	li	a5, 1
	sllw	a4, a5, a4
	li	a5, 8
	j	.LBB22_6
.LBB22_5:                               #   in Loop: Header=BB22_6 Depth=1
	addiw	a3, a3, 1
	srliw	a4, a4, 1
	bge	a3, a2, .LBB22_11
.LBB22_6:                               # =>This Inner Loop Header: Depth=1
	lw	a7, 20(a0)
	slli	a6, a6, 1
	and	a7, a7, a4
	sb	a6, 8(a1)
	beqz	a7, .LBB22_8
# %bb.7:                                #   in Loop: Header=BB22_6 Depth=1
	ori	a6, a6, 1
	sb	a6, 8(a1)
.LBB22_8:                               #   in Loop: Header=BB22_6 Depth=1
	lw	a7, 4(a1)
	addiw	a7, a7, -1
	sw	a7, 4(a1)
	bnez	a7, .LBB22_5
# %bb.9:                                #   in Loop: Header=BB22_6 Depth=1
	lw	a2, 0(a1)
	ld	a7, 32(a1)
	sw	a5, 4(a1)
	addi	t0, a2, 1
	sw	t0, 0(a1)
	add	a2, a7, a2
	sb	a6, 0(a2)
	lw	a2, 12(a0)
	sb	zero, 8(a1)
	li	a6, 0
	j	.LBB22_5
.LBB22_10:
	sw	zero, 20(a0)
.LBB22_11:
	mv	a0, a2
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.LBB22_12:
	lui	a0, %hi(.L.str.4)
	addi	a0, a0, %lo(.L.str.4)
	mv	a1, a3
	call	printf
	li	a0, -1
	call	exit
.Lfunc_end22:
	.size	writeSyntaxElement_TotalZerosChromaDC, .Lfunc_end22-writeSyntaxElement_TotalZerosChromaDC
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	writeSyntaxElement_Run          # -- Begin function writeSyntaxElement_Run
	.p2align	2
	.type	writeSyntaxElement_Run,@function
writeSyntaxElement_Run:                 # @writeSyntaxElement_Run
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	lw	a2, 12(a0)
	lw	a3, 4(a0)
	slli	a4, a2, 6
	lui	a2, %hi(writeSyntaxElement_Run.lentab)
	addi	a2, a2, %lo(writeSyntaxElement_Run.lentab)
	add	a2, a2, a4
	slli	a5, a3, 2
	add	a2, a2, a5
	lw	a2, 0(a2)
	sw	a2, 12(a0)
	lui	a6, %hi(writeSyntaxElement_Run.codtab)
	addi	a6, a6, %lo(writeSyntaxElement_Run.codtab)
	add	a4, a6, a4
	add	a4, a4, a5
	lw	a4, 0(a4)
	sw	a4, 16(a0)
	beqz	a2, .LBB23_12
# %bb.1:
	blez	a2, .LBB23_10
# %bb.2:                                # %.preheader
	li	a5, 0
	addi	a3, a2, 1
	li	a6, 1
.LBB23_3:                               # =>This Inner Loop Header: Depth=1
	addi	a7, a3, -2
	slli	a5, a5, 1
	srlw	a7, a4, a7
	andi	a7, a7, 1
	addiw	a3, a3, -1
	or	a5, a7, a5
	bltu	a6, a3, .LBB23_3
# %bb.4:
	ld	a1, 0(a1)
	li	a3, 0
	sw	a5, 20(a0)
	addi	a4, a2, -1
	lbu	a6, 8(a1)
	li	a5, 1
	sllw	a4, a5, a4
	li	a5, 8
	j	.LBB23_6
.LBB23_5:                               #   in Loop: Header=BB23_6 Depth=1
	addiw	a3, a3, 1
	srliw	a4, a4, 1
	bge	a3, a2, .LBB23_11
.LBB23_6:                               # =>This Inner Loop Header: Depth=1
	lw	a7, 20(a0)
	slli	a6, a6, 1
	and	a7, a7, a4
	sb	a6, 8(a1)
	beqz	a7, .LBB23_8
# %bb.7:                                #   in Loop: Header=BB23_6 Depth=1
	ori	a6, a6, 1
	sb	a6, 8(a1)
.LBB23_8:                               #   in Loop: Header=BB23_6 Depth=1
	lw	a7, 4(a1)
	addiw	a7, a7, -1
	sw	a7, 4(a1)
	bnez	a7, .LBB23_5
# %bb.9:                                #   in Loop: Header=BB23_6 Depth=1
	lw	a2, 0(a1)
	ld	a7, 32(a1)
	sw	a5, 4(a1)
	addi	t0, a2, 1
	sw	t0, 0(a1)
	add	a2, a7, a2
	sb	a6, 0(a2)
	lw	a2, 12(a0)
	sb	zero, 8(a1)
	li	a6, 0
	j	.LBB23_5
.LBB23_10:
	sw	zero, 20(a0)
.LBB23_11:
	mv	a0, a2
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.LBB23_12:
	lui	a0, %hi(.L.str.5)
	addi	a0, a0, %lo(.L.str.5)
	mv	a1, a3
	call	printf
	li	a0, -1
	call	exit
.Lfunc_end23:
	.size	writeSyntaxElement_Run, .Lfunc_end23-writeSyntaxElement_Run
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	writeSyntaxElement_Level_VLC1   # -- Begin function writeSyntaxElement_Level_VLC1
	.p2align	2
	.type	writeSyntaxElement_Level_VLC1,@function
writeSyntaxElement_Level_VLC1:          # @writeSyntaxElement_Level_VLC1
# %bb.0:
	lw	a3, 4(a0)
	sraiw	a2, a3, 31
	xor	a4, a3, a2
	subw	a2, a4, a2
	li	a4, 8
	srliw	a3, a3, 31
	bgeu	a2, a4, .LBB24_4
# %bb.1:
	slli	a2, a2, 1
	or	a2, a3, a2
	addiw	a2, a2, -1
	sw	a2, 12(a0)
	li	a3, 1
	sw	a3, 16(a0)
	bgtz	a2, .LBB24_8
# %bb.2:
	sw	zero, 20(a0)
.LBB24_3:
	mv	a0, a2
	ret
.LBB24_4:
	li	a5, 16
	slli	a4, a2, 1
	bltu	a2, a5, .LBB24_6
# %bb.5:
	li	a2, 28
	li	a6, -32
	lui	a5, 1
	j	.LBB24_7
.LBB24_6:
	li	a2, 19
	li	a6, -16
.LBB24_7:
	sw	a2, 12(a0)
	add	a4, a4, a6
	or	a3, a5, a3
	or	a3, a4, a3
	sw	a3, 16(a0)
.LBB24_8:
	li	a4, 0
	addi	a5, a2, 1
	li	a6, 1
.LBB24_9:                               # =>This Inner Loop Header: Depth=1
	addi	a7, a5, -2
	slli	a4, a4, 1
	srlw	a7, a3, a7
	andi	a7, a7, 1
	addiw	a5, a5, -1
	or	a4, a7, a4
	bltu	a6, a5, .LBB24_9
# %bb.10:
	ld	a1, 0(a1)
	li	a3, 0
	sw	a4, 20(a0)
	addi	a4, a2, -1
	lbu	a6, 8(a1)
	li	a5, 1
	sllw	a4, a5, a4
	li	a5, 8
	j	.LBB24_12
.LBB24_11:                              #   in Loop: Header=BB24_12 Depth=1
	addiw	a3, a3, 1
	srliw	a4, a4, 1
	bge	a3, a2, .LBB24_3
.LBB24_12:                              # =>This Inner Loop Header: Depth=1
	lw	a7, 20(a0)
	slli	a6, a6, 1
	and	a7, a7, a4
	sb	a6, 8(a1)
	beqz	a7, .LBB24_14
# %bb.13:                               #   in Loop: Header=BB24_12 Depth=1
	ori	a6, a6, 1
	sb	a6, 8(a1)
.LBB24_14:                              #   in Loop: Header=BB24_12 Depth=1
	lw	a7, 4(a1)
	addiw	a7, a7, -1
	sw	a7, 4(a1)
	bnez	a7, .LBB24_11
# %bb.15:                               #   in Loop: Header=BB24_12 Depth=1
	lw	a2, 0(a1)
	ld	a7, 32(a1)
	sw	a5, 4(a1)
	addi	t0, a2, 1
	sw	t0, 0(a1)
	add	a2, a7, a2
	sb	a6, 0(a2)
	lw	a2, 12(a0)
	sb	zero, 8(a1)
	li	a6, 0
	j	.LBB24_11
.Lfunc_end24:
	.size	writeSyntaxElement_Level_VLC1, .Lfunc_end24-writeSyntaxElement_Level_VLC1
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	writeSyntaxElement_Level_VLCN   # -- Begin function writeSyntaxElement_Level_VLCN
	.p2align	2
	.type	writeSyntaxElement_Level_VLCN,@function
writeSyntaxElement_Level_VLCN:          # @writeSyntaxElement_Level_VLCN
# %bb.0:
	lw	a4, 4(a0)
	sraiw	a3, a4, 31
	xor	a5, a4, a3
	subw	a5, a5, a3
	addi	a3, a1, -1
	li	a6, 15
	sllw	a6, a6, a3
	srliw	a4, a4, 31
	bge	a6, a5, .LBB25_2
# %bb.1:
	not	a1, a6
	add	a1, a5, a1
	slli	a1, a1, 1
	lui	a3, 1
	or	a3, a4, a3
	or	a4, a1, a3
	addi	a1, a0, 12
	li	a3, 28
	sw	a3, 12(a0)
	sw	a4, 16(a0)
	j	.LBB25_4
.LBB25_2:
	addi	a5, a5, -1
	li	a6, -1
	sllw	a6, a6, a3
	not	a6, a6
	and	a6, a5, a6
	sraw	a3, a5, a3
	addw	a5, a3, a1
	addiw	a3, a5, 1
	li	a7, 1
	sllw	a1, a7, a1
	slli	a6, a6, 1
	or	a1, a1, a4
	or	a4, a1, a6
	sw	a3, 12(a0)
	sw	a4, 16(a0)
	bltz	a5, .LBB25_12
# %bb.3:
	addi	a1, a0, 12
.LBB25_4:
	li	a5, 0
	addi	a6, a3, 1
	li	a7, 1
.LBB25_5:                               # =>This Inner Loop Header: Depth=1
	addi	t0, a6, -2
	slli	a5, a5, 1
	srlw	t0, a4, t0
	andi	t0, t0, 1
	addiw	a6, a6, -1
	or	a5, t0, a5
	bltu	a7, a6, .LBB25_5
# %bb.6:
	ld	a2, 0(a2)
	li	a4, 0
	sw	a5, 20(a0)
	addi	a5, a3, -1
	lbu	a7, 8(a2)
	li	a6, 1
	sllw	a5, a6, a5
	li	a6, 8
	j	.LBB25_8
.LBB25_7:                               #   in Loop: Header=BB25_8 Depth=1
	addiw	a4, a4, 1
	srliw	a5, a5, 1
	bge	a4, a3, .LBB25_13
.LBB25_8:                               # =>This Inner Loop Header: Depth=1
	lw	t0, 20(a0)
	slli	a7, a7, 1
	and	t0, t0, a5
	sb	a7, 8(a2)
	beqz	t0, .LBB25_10
# %bb.9:                                #   in Loop: Header=BB25_8 Depth=1
	ori	a7, a7, 1
	sb	a7, 8(a2)
.LBB25_10:                              #   in Loop: Header=BB25_8 Depth=1
	lw	t0, 4(a2)
	addiw	t0, t0, -1
	sw	t0, 4(a2)
	bnez	t0, .LBB25_7
# %bb.11:                               #   in Loop: Header=BB25_8 Depth=1
	lw	a3, 0(a2)
	ld	t0, 32(a2)
	sw	a6, 4(a2)
	addi	t1, a3, 1
	sw	t1, 0(a2)
	add	a3, t0, a3
	sb	a7, 0(a3)
	lw	a3, 0(a1)
	sb	zero, 8(a2)
	li	a7, 0
	j	.LBB25_7
.LBB25_12:
	sw	zero, 20(a0)
.LBB25_13:
	mv	a0, a3
	ret
.Lfunc_end25:
	.size	writeSyntaxElement_Level_VLCN, .Lfunc_end25-writeSyntaxElement_Level_VLCN
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	writeVlcByteAlign               # -- Begin function writeVlcByteAlign
	.p2align	2
	.type	writeVlcByteAlign,@function
writeVlcByteAlign:                      # @writeVlcByteAlign
# %bb.0:
	lw	a1, 4(a0)
	li	a2, 7
	blt	a2, a1, .LBB26_2
# %bb.1:
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	lbu	a3, 8(a0)
	lui	a4, %hi(stats)
	lw	a2, 24(a2)
	ld	a4, %lo(stats)(a4)
	sllw	a3, a3, a1
	li	a5, 8
	slli	a2, a2, 2
	add	a2, a4, a2
	lw	a4, 1336(a2)
	subw	a6, a5, a1
	li	a7, 255
	srlw	a6, a7, a6
	add	a1, a4, a1
	sw	a1, 1336(a2)
	lw	a1, 0(a0)
	or	a2, a3, a6
	ld	a3, 32(a0)
	sb	a2, 8(a0)
	addi	a4, a1, 1
	sw	a4, 0(a0)
	add	a1, a3, a1
	sb	a2, 0(a1)
	sw	a5, 4(a0)
.LBB26_2:
	ret
.Lfunc_end26:
	.size	writeVlcByteAlign, .Lfunc_end26-writeVlcByteAlign
                                        # -- End function
	.option	pop
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"bitstream->streamBuffer != NULL"
	.size	.L.str, 32

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"src/vlc.c"
	.size	.L.str.1, 10

	.type	.L__PRETTY_FUNCTION__.ue_v,@object # @__PRETTY_FUNCTION__.ue_v
.L__PRETTY_FUNCTION__.ue_v:
	.asciz	"int ue_v(char *, int, Bitstream *)"
	.size	.L__PRETTY_FUNCTION__.ue_v, 35

	.type	.L__PRETTY_FUNCTION__.se_v,@object # @__PRETTY_FUNCTION__.se_v
.L__PRETTY_FUNCTION__.se_v:
	.asciz	"int se_v(char *, int, Bitstream *)"
	.size	.L__PRETTY_FUNCTION__.se_v, 35

	.type	.L__PRETTY_FUNCTION__.u_1,@object # @__PRETTY_FUNCTION__.u_1
.L__PRETTY_FUNCTION__.u_1:
	.asciz	"int u_1(char *, int, Bitstream *)"
	.size	.L__PRETTY_FUNCTION__.u_1, 34

	.type	.L__PRETTY_FUNCTION__.u_v,@object # @__PRETTY_FUNCTION__.u_v
.L__PRETTY_FUNCTION__.u_v:
	.asciz	"int u_v(int, char *, int, Bitstream *)"
	.size	.L__PRETTY_FUNCTION__.u_v, 39

	.type	.L__const.levrun_linfo_c2x2.NTAB,@object # @__const.levrun_linfo_c2x2.NTAB
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	2, 0x0
.L__const.levrun_linfo_c2x2.NTAB:
	.word	1                               # 0x1
	.word	5                               # 0x5
	.word	3                               # 0x3
	.word	0                               # 0x0
	.size	.L__const.levrun_linfo_c2x2.NTAB, 16

	.type	.L__const.levrun_linfo_c2x2.LEVRUN,@object # @__const.levrun_linfo_c2x2.LEVRUN
	.p2align	2, 0x0
.L__const.levrun_linfo_c2x2.LEVRUN:
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.size	.L__const.levrun_linfo_c2x2.LEVRUN, 16

	.type	.L__const.levrun_linfo_inter.LEVRUN,@object # @__const.levrun_linfo_inter.LEVRUN
.L__const.levrun_linfo_inter.LEVRUN:
	.asciz	"\004\002\002\001\001\001\001\001\001\001\000\000\000\000\000"
	.size	.L__const.levrun_linfo_inter.LEVRUN, 16

	.type	.L__const.levrun_linfo_inter.NTAB,@object # @__const.levrun_linfo_inter.NTAB
	.section	.rodata,"a",@progbits
.L__const.levrun_linfo_inter.NTAB:
	.ascii	"\001\003\005\t\013\r\025\027\031\033"
	.asciz	"\007\021\023\000\000\000\000\000\000"
	.byte	15                              # 0xf
	.zero	9
	.byte	29                              # 0x1d
	.zero	9
	.size	.L__const.levrun_linfo_inter.NTAB, 40

	.type	.L__const.levrun_linfo_intra.LEVRUN,@object # @__const.levrun_linfo_intra.LEVRUN
	.section	.rodata.cst8,"aM",@progbits,8
.L__const.levrun_linfo_intra.LEVRUN:
	.asciz	"\t\003\001\001\001\000\000"
	.size	.L__const.levrun_linfo_intra.LEVRUN, 8

	.type	.L__const.levrun_linfo_intra.NTAB,@object # @__const.levrun_linfo_intra.NTAB
	.section	.rodata,"a",@progbits
.L__const.levrun_linfo_intra.NTAB:
	.ascii	"\001\003\007\017\021"
	.asciz	"\005\023\000\000"
	.asciz	"\t\025\000\000"
	.asciz	"\013\000\000\000"
	.asciz	"\r\000\000\000"
	.asciz	"\027\000\000\000"
	.asciz	"\031\000\000\000"
	.asciz	"\033\000\000\000"
	.asciz	"\035\000\000\000"
	.size	.L__const.levrun_linfo_intra.NTAB, 45

	.type	writeSyntaxElement_NumCoeffTrailingOnes.lentab,@object # @writeSyntaxElement_NumCoeffTrailingOnes.lentab
	.p2align	2, 0x0
writeSyntaxElement_NumCoeffTrailingOnes.lentab:
	.word	1                               # 0x1
	.word	6                               # 0x6
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	14                              # 0xe
	.word	14                              # 0xe
	.word	15                              # 0xf
	.word	15                              # 0xf
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	6                               # 0x6
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	14                              # 0xe
	.word	14                              # 0xe
	.word	15                              # 0xf
	.word	15                              # 0xf
	.word	15                              # 0xf
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	3                               # 0x3
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	14                              # 0xe
	.word	14                              # 0xe
	.word	15                              # 0xf
	.word	15                              # 0xf
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	13                              # 0xd
	.word	14                              # 0xe
	.word	14                              # 0xe
	.word	15                              # 0xf
	.word	15                              # 0xf
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	2                               # 0x2
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	11                              # 0xb
	.word	11                              # 0xb
	.word	12                              # 0xc
	.word	12                              # 0xc
	.word	12                              # 0xc
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	14                              # 0xe
	.word	14                              # 0xe
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	11                              # 0xb
	.word	11                              # 0xb
	.word	12                              # 0xc
	.word	12                              # 0xc
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	14                              # 0xe
	.word	14                              # 0xe
	.word	14                              # 0xe
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	3                               # 0x3
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	11                              # 0xb
	.word	11                              # 0xb
	.word	12                              # 0xc
	.word	12                              # 0xc
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	14                              # 0xe
	.word	14                              # 0xe
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	9                               # 0x9
	.word	11                              # 0xb
	.word	11                              # 0xb
	.word	12                              # 0xc
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	14                              # 0xe
	.word	4                               # 0x4
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	10                              # 0xa
	.word	10                              # 0xa
	.word	10                              # 0xa
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	10                              # 0xa
	.word	10                              # 0xa
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	10                              # 0xa
	.word	10                              # 0xa
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	10                              # 0xa
	.word	10                              # 0xa
	.size	writeSyntaxElement_NumCoeffTrailingOnes.lentab, 816

	.type	writeSyntaxElement_NumCoeffTrailingOnes.codtab,@object # @writeSyntaxElement_NumCoeffTrailingOnes.codtab
	.p2align	2, 0x0
writeSyntaxElement_NumCoeffTrailingOnes.codtab:
	.word	1                               # 0x1
	.word	5                               # 0x5
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	15                              # 0xf
	.word	11                              # 0xb
	.word	8                               # 0x8
	.word	15                              # 0xf
	.word	11                              # 0xb
	.word	15                              # 0xf
	.word	11                              # 0xb
	.word	15                              # 0xf
	.word	11                              # 0xb
	.word	7                               # 0x7
	.word	4                               # 0x4
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	4                               # 0x4
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	14                              # 0xe
	.word	10                              # 0xa
	.word	14                              # 0xe
	.word	10                              # 0xa
	.word	14                              # 0xe
	.word	10                              # 0xa
	.word	1                               # 0x1
	.word	14                              # 0xe
	.word	10                              # 0xa
	.word	6                               # 0x6
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	13                              # 0xd
	.word	9                               # 0x9
	.word	13                              # 0xd
	.word	9                               # 0x9
	.word	13                              # 0xd
	.word	9                               # 0x9
	.word	13                              # 0xd
	.word	9                               # 0x9
	.word	5                               # 0x5
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	12                              # 0xc
	.word	12                              # 0xc
	.word	8                               # 0x8
	.word	12                              # 0xc
	.word	8                               # 0x8
	.word	12                              # 0xc
	.word	8                               # 0x8
	.word	3                               # 0x3
	.word	11                              # 0xb
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	4                               # 0x4
	.word	7                               # 0x7
	.word	15                              # 0xf
	.word	11                              # 0xb
	.word	15                              # 0xf
	.word	11                              # 0xb
	.word	8                               # 0x8
	.word	15                              # 0xf
	.word	11                              # 0xb
	.word	7                               # 0x7
	.word	9                               # 0x9
	.word	7                               # 0x7
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	7                               # 0x7
	.word	10                              # 0xa
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	14                              # 0xe
	.word	10                              # 0xa
	.word	14                              # 0xe
	.word	10                              # 0xa
	.word	14                              # 0xe
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	8                               # 0x8
	.word	6                               # 0x6
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	3                               # 0x3
	.word	9                               # 0x9
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	13                              # 0xd
	.word	9                               # 0x9
	.word	13                              # 0xd
	.word	9                               # 0x9
	.word	13                              # 0xd
	.word	9                               # 0x9
	.word	6                               # 0x6
	.word	10                              # 0xa
	.word	5                               # 0x5
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	5                               # 0x5
	.word	4                               # 0x4
	.word	6                               # 0x6
	.word	8                               # 0x8
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	12                              # 0xc
	.word	8                               # 0x8
	.word	12                              # 0xc
	.word	12                              # 0xc
	.word	8                               # 0x8
	.word	1                               # 0x1
	.word	4                               # 0x4
	.word	15                              # 0xf
	.word	15                              # 0xf
	.word	11                              # 0xb
	.word	8                               # 0x8
	.word	15                              # 0xf
	.word	11                              # 0xb
	.word	9                               # 0x9
	.word	8                               # 0x8
	.word	15                              # 0xf
	.word	11                              # 0xb
	.word	15                              # 0xf
	.word	11                              # 0xb
	.word	8                               # 0x8
	.word	13                              # 0xd
	.word	9                               # 0x9
	.word	5                               # 0x5
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	14                              # 0xe
	.word	15                              # 0xf
	.word	12                              # 0xc
	.word	10                              # 0xa
	.word	8                               # 0x8
	.word	14                              # 0xe
	.word	10                              # 0xa
	.word	14                              # 0xe
	.word	14                              # 0xe
	.word	10                              # 0xa
	.word	14                              # 0xe
	.word	10                              # 0xa
	.word	7                               # 0x7
	.word	12                              # 0xc
	.word	8                               # 0x8
	.word	4                               # 0x4
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	13                              # 0xd
	.word	14                              # 0xe
	.word	11                              # 0xb
	.word	9                               # 0x9
	.word	13                              # 0xd
	.word	9                               # 0x9
	.word	13                              # 0xd
	.word	10                              # 0xa
	.word	13                              # 0xd
	.word	9                               # 0x9
	.word	13                              # 0xd
	.word	9                               # 0x9
	.word	11                              # 0xb
	.word	7                               # 0x7
	.word	3                               # 0x3
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	12                              # 0xc
	.word	11                              # 0xb
	.word	10                              # 0xa
	.word	9                               # 0x9
	.word	8                               # 0x8
	.word	13                              # 0xd
	.word	12                              # 0xc
	.word	12                              # 0xc
	.word	12                              # 0xc
	.word	8                               # 0x8
	.word	12                              # 0xc
	.word	10                              # 0xa
	.word	6                               # 0x6
	.word	2                               # 0x2
	.size	writeSyntaxElement_NumCoeffTrailingOnes.codtab, 816

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"ERROR: (numcoeff,trailingones) not valid: vlc=%d (%d, %d)\n"
	.size	.L.str.2, 59

	.type	writeSyntaxElement_NumCoeffTrailingOnesChromaDC.lentab,@object # @writeSyntaxElement_NumCoeffTrailingOnesChromaDC.lentab
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
writeSyntaxElement_NumCoeffTrailingOnesChromaDC.lentab:
	.word	2                               # 0x2
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	6                               # 0x6
	.zero	48
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
	.zero	48
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	3                               # 0x3
	.word	7                               # 0x7
	.word	8                               # 0x8
	.zero	48
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	6                               # 0x6
	.word	7                               # 0x7
	.zero	48
	.word	1                               # 0x1
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	12                              # 0xc
	.word	13                              # 0xd
	.zero	32
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	12                              # 0xc
	.word	12                              # 0xc
	.zero	32
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	3                               # 0x3
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	12                              # 0xc
	.zero	32
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	10                              # 0xa
	.word	11                              # 0xb
	.zero	32
	.word	1                               # 0x1
	.word	6                               # 0x6
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	14                              # 0xe
	.word	14                              # 0xe
	.word	15                              # 0xf
	.word	15                              # 0xf
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	6                               # 0x6
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	14                              # 0xe
	.word	14                              # 0xe
	.word	15                              # 0xf
	.word	15                              # 0xf
	.word	15                              # 0xf
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	3                               # 0x3
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	14                              # 0xe
	.word	14                              # 0xe
	.word	15                              # 0xf
	.word	15                              # 0xf
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	13                              # 0xd
	.word	14                              # 0xe
	.word	14                              # 0xe
	.word	15                              # 0xf
	.word	15                              # 0xf
	.word	16                              # 0x10
	.word	16                              # 0x10
	.size	writeSyntaxElement_NumCoeffTrailingOnesChromaDC.lentab, 816

	.type	writeSyntaxElement_NumCoeffTrailingOnesChromaDC.codtab,@object # @writeSyntaxElement_NumCoeffTrailingOnesChromaDC.codtab
	.p2align	2, 0x0
writeSyntaxElement_NumCoeffTrailingOnesChromaDC.codtab:
	.word	1                               # 0x1
	.word	7                               # 0x7
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	2                               # 0x2
	.zero	48
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	6                               # 0x6
	.word	3                               # 0x3
	.word	3                               # 0x3
	.zero	48
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.zero	48
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	5                               # 0x5
	.zero	52
	.word	1                               # 0x1
	.word	15                              # 0xf
	.word	14                              # 0xe
	.word	7                               # 0x7
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	7                               # 0x7
	.zero	32
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	13                              # 0xd
	.word	12                              # 0xc
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	5                               # 0x5
	.zero	32
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	11                              # 0xb
	.word	10                              # 0xa
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	4                               # 0x4
	.zero	32
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	9                               # 0x9
	.word	8                               # 0x8
	.word	4                               # 0x4
	.word	4                               # 0x4
	.zero	32
	.word	1                               # 0x1
	.word	5                               # 0x5
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	15                              # 0xf
	.word	11                              # 0xb
	.word	8                               # 0x8
	.word	15                              # 0xf
	.word	11                              # 0xb
	.word	15                              # 0xf
	.word	11                              # 0xb
	.word	15                              # 0xf
	.word	11                              # 0xb
	.word	7                               # 0x7
	.word	4                               # 0x4
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	4                               # 0x4
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	14                              # 0xe
	.word	10                              # 0xa
	.word	14                              # 0xe
	.word	10                              # 0xa
	.word	14                              # 0xe
	.word	10                              # 0xa
	.word	1                               # 0x1
	.word	14                              # 0xe
	.word	10                              # 0xa
	.word	6                               # 0x6
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	13                              # 0xd
	.word	9                               # 0x9
	.word	13                              # 0xd
	.word	9                               # 0x9
	.word	13                              # 0xd
	.word	9                               # 0x9
	.word	13                              # 0xd
	.word	9                               # 0x9
	.word	5                               # 0x5
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	12                              # 0xc
	.word	12                              # 0xc
	.word	8                               # 0x8
	.word	12                              # 0xc
	.word	8                               # 0x8
	.word	12                              # 0xc
	.word	8                               # 0x8
	.size	writeSyntaxElement_NumCoeffTrailingOnesChromaDC.codtab, 816

	.type	.L.str.3,@object                # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"ERROR: (numcoeff,trailingones) not valid: (%d, %d)\n"
	.size	.L.str.3, 52

	.type	writeSyntaxElement_TotalZeros.lentab,@object # @writeSyntaxElement_TotalZeros.lentab
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
writeSyntaxElement_TotalZeros.lentab:
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	5                               # 0x5
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	6                               # 0x6
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	6                               # 0x6
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	6                               # 0x6
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	6                               # 0x6
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	4                               # 0x4
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	5                               # 0x5
	.zero	32
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	4                               # 0x4
	.zero	36
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.zero	40
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	3                               # 0x3
	.zero	44
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	2                               # 0x2
	.zero	48
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	1                               # 0x1
	.zero	52
	.word	1                               # 0x1
	.word	1                               # 0x1
	.zero	56
	.size	writeSyntaxElement_TotalZeros.lentab, 960

	.type	writeSyntaxElement_TotalZeros.codtab,@object # @writeSyntaxElement_TotalZeros.codtab
	.p2align	2, 0x0
writeSyntaxElement_TotalZeros.codtab:
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	7                               # 0x7
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	5                               # 0x5
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	5                               # 0x5
	.word	7                               # 0x7
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	3                               # 0x3
	.word	7                               # 0x7
	.word	5                               # 0x5
	.word	4                               # 0x4
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	5                               # 0x5
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	7                               # 0x7
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	7                               # 0x7
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	5                               # 0x5
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	1                               # 0x1
	.zero	32
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.zero	32
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.zero	36
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	3                               # 0x3
	.zero	40
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.zero	44
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.zero	48
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.zero	52
	.word	0                               # 0x0
	.word	1                               # 0x1
	.zero	56
	.size	writeSyntaxElement_TotalZeros.codtab, 960

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"ERROR: (TotalZeros) not valid: (%d)\n"
	.size	.L.str.4, 37

	.type	writeSyntaxElement_TotalZerosChromaDC.lentab,@object # @writeSyntaxElement_TotalZerosChromaDC.lentab
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
writeSyntaxElement_TotalZerosChromaDC.lentab:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	3                               # 0x3
	.zero	48
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.zero	52
	.word	1                               # 0x1
	.word	1                               # 0x1
	.zero	56
	.zero	768
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	5                               # 0x5
	.zero	32
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.zero	36
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	3                               # 0x3
	.zero	40
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	3                               # 0x3
	.zero	44
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.zero	48
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	1                               # 0x1
	.zero	52
	.word	1                               # 0x1
	.word	1                               # 0x1
	.zero	56
	.zero	512
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	5                               # 0x5
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	6                               # 0x6
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	6                               # 0x6
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	6                               # 0x6
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	6                               # 0x6
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	4                               # 0x4
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	5                               # 0x5
	.zero	32
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	4                               # 0x4
	.zero	36
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	3                               # 0x3
	.zero	40
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	3                               # 0x3
	.zero	44
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	2                               # 0x2
	.zero	48
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	1                               # 0x1
	.zero	52
	.word	1                               # 0x1
	.word	1                               # 0x1
	.zero	56
	.size	writeSyntaxElement_TotalZerosChromaDC.lentab, 2880

	.type	writeSyntaxElement_TotalZerosChromaDC.codtab,@object # @writeSyntaxElement_TotalZerosChromaDC.codtab
	.p2align	2, 0x0
writeSyntaxElement_TotalZerosChromaDC.codtab:
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.zero	52
	.word	1                               # 0x1
	.word	1                               # 0x1
	.zero	56
	.word	1                               # 0x1
	.zero	60
	.zero	768
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	1                               # 0x1
	.zero	36
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.zero	36
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	6                               # 0x6
	.word	7                               # 0x7
	.zero	40
	.word	6                               # 0x6
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	7                               # 0x7
	.zero	44
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.zero	48
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.zero	52
	.word	0                               # 0x0
	.word	1                               # 0x1
	.zero	56
	.zero	512
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	7                               # 0x7
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	5                               # 0x5
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	5                               # 0x5
	.word	7                               # 0x7
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	3                               # 0x3
	.word	7                               # 0x7
	.word	5                               # 0x5
	.word	4                               # 0x4
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	5                               # 0x5
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	7                               # 0x7
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	7                               # 0x7
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	5                               # 0x5
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	1                               # 0x1
	.zero	32
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.zero	32
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.zero	36
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	3                               # 0x3
	.zero	40
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.zero	44
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.zero	48
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.zero	52
	.word	0                               # 0x0
	.word	1                               # 0x1
	.zero	56
	.size	writeSyntaxElement_TotalZerosChromaDC.codtab, 2880

	.type	writeSyntaxElement_Run.lentab,@object # @writeSyntaxElement_Run.lentab
	.p2align	2, 0x0
writeSyntaxElement_Run.lentab:
	.word	1                               # 0x1
	.word	1                               # 0x1
	.zero	56
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.zero	52
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.zero	48
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	3                               # 0x3
	.zero	44
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.zero	40
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.zero	36
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	0                               # 0x0
	.zero	512
	.size	writeSyntaxElement_Run.lentab, 960

	.type	writeSyntaxElement_Run.codtab,@object # @writeSyntaxElement_Run.codtab
	.p2align	2, 0x0
writeSyntaxElement_Run.codtab:
	.word	1                               # 0x1
	.zero	60
	.word	1                               # 0x1
	.word	1                               # 0x1
	.zero	56
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	1                               # 0x1
	.zero	52
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.zero	48
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	1                               # 0x1
	.zero	44
	.word	3                               # 0x3
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	5                               # 0x5
	.word	4                               # 0x4
	.zero	36
	.word	7                               # 0x7
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.zero	512
	.size	writeSyntaxElement_Run.codtab, 960

	.type	.L.str.5,@object                # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"ERROR: (run) not valid: (%d)\n"
	.size	.L.str.5, 30

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
