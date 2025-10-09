	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"jcinit.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jinit_compress_master           # -- Begin function jinit_compress_master
	.p2align	2
	.type	jinit_compress_master,@function
jinit_compress_master:                  # @jinit_compress_master
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	li	a1, 0
	call	jinit_c_master_control
	lw	a0, 256(s0)
	beqz	a0, .LBB0_3
# %bb.1:
	mv	a0, s0
	call	jinit_forward_dct
	lw	a0, 260(s0)
	beqz	a0, .LBB0_4
.LBB0_2:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 1
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
	lw	a0, 240(s0)
	li	a1, 1
	bge	a1, a0, .LBB0_6
	j	.LBB0_7
.LBB0_3:
	mv	a0, s0
	call	jinit_color_converter
	mv	a0, s0
	call	jinit_downsampler
	mv	a0, s0
	li	a1, 0
	call	jinit_c_prep_controller
	mv	a0, s0
	call	jinit_forward_dct
	lw	a0, 260(s0)
	bnez	a0, .LBB0_2
.LBB0_4:
	lw	a0, 308(s0)
	beqz	a0, .LBB0_8
# %bb.5:
	mv	a0, s0
	call	jinit_phuff_encoder
	lw	a0, 240(s0)
	li	a1, 1
	blt	a1, a0, .LBB0_7
.LBB0_6:
	lw	a0, 264(s0)
	snez	a1, a0
.LBB0_7:
	mv	a0, s0
	call	jinit_c_coef_controller
	mv	a0, s0
	li	a1, 0
	call	jinit_c_main_controller
	mv	a0, s0
	call	jinit_marker_writer
	ld	a0, 8(s0)
	ld	a1, 48(a0)
	mv	a0, s0
	jalr	a1
	ld	a0, 464(s0)
	ld	t1, 0(a0)
	mv	a0, s0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	jr	t1
.LBB0_8:
	mv	a0, s0
	call	jinit_huff_encoder
	lw	a0, 240(s0)
	li	a1, 1
	bge	a1, a0, .LBB0_6
	j	.LBB0_7
.Lfunc_end0:
	.size	jinit_compress_master, .Lfunc_end0-jinit_compress_master
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
