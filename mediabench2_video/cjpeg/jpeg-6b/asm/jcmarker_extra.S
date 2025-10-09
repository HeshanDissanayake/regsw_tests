	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"jcmarker.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jinit_marker_writer             # -- Begin function jinit_marker_writer
	.p2align	2
	.type	jinit_marker_writer,@function
jinit_marker_writer:                    # @jinit_marker_writer
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	a0, 8(a0)
	ld	a3, 0(a0)
	li	a1, 1
	li	a2, 64
	mv	a0, s0
	jalr	a3
	sd	a0, 464(s0)
	lui	a1, %hi(write_file_header)
	addi	a1, a1, %lo(write_file_header)
	sd	a1, 0(a0)
	lui	a1, %hi(write_frame_header)
	addi	a1, a1, %lo(write_frame_header)
	sd	a1, 8(a0)
	lui	a1, %hi(write_scan_header)
	addi	a1, a1, %lo(write_scan_header)
	sd	a1, 16(a0)
	lui	a1, %hi(write_file_trailer)
	addi	a1, a1, %lo(write_file_trailer)
	sd	a1, 24(a0)
	lui	a1, %hi(write_tables_only)
	addi	a1, a1, %lo(write_tables_only)
	sd	a1, 32(a0)
	lui	a1, %hi(write_marker_header)
	addi	a1, a1, %lo(write_marker_header)
	sd	a1, 40(a0)
	lui	a1, %hi(write_marker_byte)
	addi	a1, a1, %lo(write_marker_byte)
	sd	a1, 48(a0)
	sw	zero, 56(a0)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end0:
	.size	jinit_marker_writer, .Lfunc_end0-jinit_marker_writer
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function write_file_header
	.type	write_file_header,@function
write_file_header:                      # @write_file_header
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	a0, 40(a0)
	ld	a1, 0(a0)
	ld	s1, 464(s0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	li	a2, -1
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB1_3
# %bb.1:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB1_3
# %bb.2:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_3:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	li	a2, 216
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB1_5
# %bb.4:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB1_60
.LBB1_5:
	lw	a0, 288(s0)
	sw	zero, 56(s1)
	beqz	a0, .LBB1_61
.LBB1_6:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	li	a2, -1
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB1_9
# %bb.7:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB1_9
# %bb.8:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_9:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	li	a2, -32
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB1_12
# %bb.10:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB1_12
# %bb.11:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_12:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	sb	zero, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB1_15
# %bb.13:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB1_15
# %bb.14:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_15:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	li	a2, 16
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB1_18
# %bb.16:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB1_18
# %bb.17:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_18:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	li	a2, 74
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB1_21
# %bb.19:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB1_21
# %bb.20:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_21:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	li	a2, 70
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB1_24
# %bb.22:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB1_24
# %bb.23:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_24:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	li	a2, 73
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB1_27
# %bb.25:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB1_27
# %bb.26:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_27:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	li	a2, 70
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB1_30
# %bb.28:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB1_30
# %bb.29:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_30:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	sb	zero, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB1_33
# %bb.31:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB1_33
# %bb.32:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_33:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	lbu	a2, 292(s0)
	addi	a3, a1, 1
	sd	a3, 0(a0)
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB1_36
# %bb.34:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB1_36
# %bb.35:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_36:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	lbu	a2, 293(s0)
	addi	a3, a1, 1
	sd	a3, 0(a0)
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB1_39
# %bb.37:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB1_39
# %bb.38:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_39:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	lbu	a2, 294(s0)
	addi	a3, a1, 1
	sd	a3, 0(a0)
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB1_42
# %bb.40:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB1_42
# %bb.41:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_42:
	ld	a0, 40(s0)
	lhu	s1, 296(s0)
	ld	a1, 0(a0)
	srli	a2, s1, 8
	addi	a3, a1, 1
	sd	a3, 0(a0)
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB1_45
# %bb.43:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB1_45
# %bb.44:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_45:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	sb	s1, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB1_48
# %bb.46:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB1_48
# %bb.47:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_48:
	ld	a0, 40(s0)
	lhu	s1, 298(s0)
	ld	a1, 0(a0)
	srli	a2, s1, 8
	addi	a3, a1, 1
	sd	a3, 0(a0)
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB1_51
# %bb.49:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB1_51
# %bb.50:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_51:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	sb	s1, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB1_54
# %bb.52:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB1_54
# %bb.53:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_54:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	sb	zero, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB1_57
# %bb.55:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB1_57
# %bb.56:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_57:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	sb	zero, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB1_61
# %bb.58:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB1_61
# %bb.59:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
	lw	a0, 300(s0)
	bnez	a0, .LBB1_62
	j	.LBB1_114
.LBB1_60:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
	lw	a0, 288(s0)
	sw	zero, 56(s1)
	bnez	a0, .LBB1_6
.LBB1_61:
	lw	a0, 300(s0)
	beqz	a0, .LBB1_114
.LBB1_62:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	li	a2, -1
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB1_65
# %bb.63:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB1_65
# %bb.64:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_65:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	li	a2, -18
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB1_68
# %bb.66:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB1_68
# %bb.67:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_68:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	sb	zero, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB1_71
# %bb.69:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB1_71
# %bb.70:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_71:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	li	a2, 14
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB1_74
# %bb.72:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB1_74
# %bb.73:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_74:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	li	a2, 65
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB1_77
# %bb.75:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB1_77
# %bb.76:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_77:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	li	a2, 100
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB1_80
# %bb.78:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB1_80
# %bb.79:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_80:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	li	a2, 111
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB1_83
# %bb.81:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB1_83
# %bb.82:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_83:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	li	a2, 98
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB1_86
# %bb.84:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB1_86
# %bb.85:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_86:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	li	a2, 101
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB1_89
# %bb.87:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB1_89
# %bb.88:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_89:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	sb	zero, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB1_92
# %bb.90:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB1_92
# %bb.91:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_92:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	li	a2, 100
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB1_95
# %bb.93:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB1_95
# %bb.94:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_95:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	sb	zero, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB1_98
# %bb.96:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB1_98
# %bb.97:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_98:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	sb	zero, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB1_101
# %bb.99:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB1_101
# %bb.100:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_101:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	sb	zero, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB1_104
# %bb.102:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB1_104
# %bb.103:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_104:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	sb	zero, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB1_107
# %bb.105:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB1_107
# %bb.106:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_107:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	lw	a2, 80(s0)
	addi	a3, a1, 1
	li	a4, 5
	sd	a3, 0(a0)
	beq	a2, a4, .LBB1_110
# %bb.108:
	li	a3, 3
	bne	a2, a3, .LBB1_112
# %bb.109:
	li	a2, 1
	j	.LBB1_111
.LBB1_110:
	li	a2, 2
.LBB1_111:
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB1_114
	j	.LBB1_113
.LBB1_112:
	sb	zero, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB1_114
.LBB1_113:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB1_115
.LBB1_114:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.LBB1_115:
	ld	a0, 0(s0)
	ld	t1, 0(a0)
	li	a1, 24
	sw	a1, 40(a0)
	mv	a0, s0
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	jr	t1
.Lfunc_end1:
	.size	write_file_header, .Lfunc_end1-write_file_header
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function write_frame_header
	.type	write_frame_header,@function
write_frame_header:                     # @write_frame_header
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	lw	a2, 76(a0)
	blez	a2, .LBB2_4
# %bb.1:
	ld	s3, 88(s0)
	li	s1, 0
	li	s2, 0
	addi	s3, s3, 16
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	lw	a1, 0(s3)
	mv	a0, s0
	call	emit_dqt
	lw	a2, 76(s0)
	addw	s1, a0, s1
	addiw	s2, s2, 1
	addi	s3, s3, 96
	blt	s2, a2, .LBB2_2
# %bb.3:
	snez	a0, s1
	lw	a3, 260(s0)
	li	a1, 201
	bnez	a3, .LBB2_22
	j	.LBB2_5
.LBB2_4:
	li	a0, 0
	lw	a3, 260(s0)
	li	a1, 201
	bnez	a3, .LBB2_22
.LBB2_5:
	lw	a1, 308(s0)
	beqz	a1, .LBB2_7
# %bb.6:
	li	a1, 194
	j	.LBB2_22
.LBB2_7:
	lw	a1, 72(s0)
	li	a3, 8
	bne	a1, a3, .LBB2_14
# %bb.8:
	blez	a2, .LBB2_15
# %bb.9:
	ld	a3, 88(s0)
	addi	a1, a3, 24
	addi	a2, a2, -1
	li	a4, 3
	slli	a4, a4, 37
	slli	a2, a2, 32
	mulhu	a2, a2, a4
	add	a2, a2, a3
	addi	a3, a2, 120
	li	a4, 1
	li	a5, 2
	li	a2, 1
	j	.LBB2_12
.LBB2_10:                               #   in Loop: Header=BB2_12 Depth=1
	li	a2, 0
.LBB2_11:                               #   in Loop: Header=BB2_12 Depth=1
	addi	a1, a1, 96
	beq	a1, a3, .LBB2_16
.LBB2_12:                               # =>This Inner Loop Header: Depth=1
	lw	a6, -4(a1)
	blt	a4, a6, .LBB2_10
# %bb.13:                               #   in Loop: Header=BB2_12 Depth=1
	lw	a6, 0(a1)
	bge	a6, a5, .LBB2_10
	j	.LBB2_11
.LBB2_14:
	li	a2, 0
	j	.LBB2_19
.LBB2_15:
	li	a2, 1
.LBB2_16:
	snez	a1, a2
	and	a0, a0, a1
	beqz	a0, .LBB2_19
# %bb.17:
	ld	a0, 0(s0)
	ld	a2, 8(a0)
	li	a1, 75
	sw	a1, 40(a0)
	mv	a0, s0
	li	a1, 0
	jalr	a2
	li	a1, 201
	lw	a0, 260(s0)
	bnez	a0, .LBB2_22
# %bb.18:
	lw	a0, 308(s0)
	li	a1, 194
	bnez	a0, .LBB2_22
	j	.LBB2_21
.LBB2_19:
	lw	a0, 308(s0)
	li	a1, 194
	bnez	a0, .LBB2_22
# %bb.20:
	li	a1, 192
	bnez	a2, .LBB2_22
.LBB2_21:
	li	a1, 193
.LBB2_22:
	mv	a0, s0
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	tail	emit_sof
.Lfunc_end2:
	.size	write_frame_header, .Lfunc_end2-write_frame_header
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function write_scan_header
	.type	write_scan_header,@function
write_scan_header:                      # @write_scan_header
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	lw	a0, 260(a0)
	ld	s1, 464(s0)
	beqz	a0, .LBB3_59
.LBB3_1:
	lw	a0, 280(s0)
	lw	a1, 56(s1)
	beq	a0, a1, .LBB3_21
# %bb.2:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	li	a2, -1
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB3_5
# %bb.3:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB3_5
# %bb.4:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB3_5:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	li	a2, 221
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB3_8
# %bb.6:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB3_8
# %bb.7:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB3_8:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	sb	zero, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB3_11
# %bb.9:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB3_11
# %bb.10:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB3_11:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	li	a2, 4
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB3_14
# %bb.12:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB3_14
# %bb.13:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB3_14:
	ld	a0, 40(s0)
	lw	s2, 280(s0)
	ld	a1, 0(a0)
	srli	a2, s2, 8
	addi	a3, a1, 1
	sd	a3, 0(a0)
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB3_17
# %bb.15:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB3_17
# %bb.16:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB3_17:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	sb	s2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB3_20
# %bb.18:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB3_20
# %bb.19:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB3_20:
	lw	a0, 280(s0)
	sw	a0, 56(s1)
.LBB3_21:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	li	a2, -1
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB3_24
# %bb.22:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB3_24
# %bb.23:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB3_24:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	li	a2, 218
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB3_27
# %bb.25:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB3_27
# %bb.26:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB3_27:
	ld	a0, 40(s0)
	lw	a1, 324(s0)
	ld	a2, 0(a0)
	slli	a1, a1, 1
	addi	s1, a1, 6
	srli	a1, s1, 8
	addi	a3, a2, 1
	sd	a3, 0(a0)
	sb	a1, 0(a2)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB3_30
# %bb.28:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB3_30
# %bb.29:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB3_30:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	sb	s1, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB3_33
# %bb.31:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB3_33
# %bb.32:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB3_33:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	lbu	a2, 324(s0)
	addi	a3, a1, 1
	sd	a3, 0(a0)
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB3_36
# %bb.34:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB3_36
# %bb.35:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB3_36:
	lw	a0, 324(s0)
	blez	a0, .LBB3_50
# %bb.37:
	li	s1, 0
	addi	s2, s0, 328
	li	s3, 24
	j	.LBB3_39
.LBB3_38:                               #   in Loop: Header=BB3_39 Depth=1
	lw	a0, 324(s0)
	addi	s1, s1, 1
	addi	s2, s2, 8
	bge	s1, a0, .LBB3_50
.LBB3_39:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 40(s0)
	ld	s4, 0(s2)
	ld	a1, 0(a0)
	lbu	a2, 0(s4)
	addi	a3, a1, 1
	sd	a3, 0(a0)
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB3_41
# %bb.40:                               #   in Loop: Header=BB3_39 Depth=1
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB3_46
.LBB3_41:                               #   in Loop: Header=BB3_39 Depth=1
	lw	a0, 20(s4)
	lw	a2, 308(s0)
	lw	a1, 24(s4)
	beqz	a2, .LBB3_47
.LBB3_42:                               #   in Loop: Header=BB3_39 Depth=1
	lw	a2, 412(s0)
	beqz	a2, .LBB3_44
# %bb.43:                               #   in Loop: Header=BB3_39 Depth=1
	li	a0, 0
	j	.LBB3_47
.LBB3_44:                               #   in Loop: Header=BB3_39 Depth=1
	lw	a1, 420(s0)
	beqz	a1, .LBB3_47
# %bb.45:                               #   in Loop: Header=BB3_39 Depth=1
	lw	a2, 260(s0)
	li	a1, 0
	seqz	a2, a2
	addi	a2, a2, -1
	and	a0, a2, a0
	j	.LBB3_47
.LBB3_46:                               #   in Loop: Header=BB3_39 Depth=1
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	sw	s3, 40(a0)
	mv	a0, s0
	jalr	a1
	lw	a0, 20(s4)
	lw	a2, 308(s0)
	lw	a1, 24(s4)
	bnez	a2, .LBB3_42
.LBB3_47:                               #   in Loop: Header=BB3_39 Depth=1
	ld	a2, 40(s0)
	ld	a3, 0(a2)
	slli	a0, a0, 4
	add	a0, a0, a1
	addi	a1, a3, 1
	sd	a1, 0(a2)
	sb	a0, 0(a3)
	ld	a0, 8(a2)
	addi	a0, a0, -1
	sd	a0, 8(a2)
	bnez	a0, .LBB3_38
# %bb.48:                               #   in Loop: Header=BB3_39 Depth=1
	ld	a1, 24(a2)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB3_38
# %bb.49:                               #   in Loop: Header=BB3_39 Depth=1
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	sw	s3, 40(a0)
	mv	a0, s0
	jalr	a1
	j	.LBB3_38
.LBB3_50:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	lbu	a2, 412(s0)
	addi	a3, a1, 1
	sd	a3, 0(a0)
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB3_53
# %bb.51:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB3_53
# %bb.52:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB3_53:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	lbu	a2, 416(s0)
	addi	a3, a1, 1
	sd	a3, 0(a0)
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB3_56
# %bb.54:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB3_56
# %bb.55:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB3_56:
	ld	a0, 40(s0)
	lw	a1, 420(s0)
	lw	a2, 424(s0)
	ld	a3, 0(a0)
	slli	a1, a1, 4
	add	a1, a1, a2
	addi	a2, a3, 1
	sd	a2, 0(a0)
	sb	a1, 0(a3)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB3_58
# %bb.57:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB3_69
.LBB3_58:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.LBB3_59:
	lw	a0, 324(s0)
	blez	a0, .LBB3_1
# %bb.60:
	li	s2, 0
	addi	s3, s0, 328
	j	.LBB3_65
.LBB3_61:                               #   in Loop: Header=BB3_65 Depth=1
	lw	a1, 20(s4)
	mv	a0, s0
	li	a2, 0
	call	emit_dht
.LBB3_62:                               #   in Loop: Header=BB3_65 Depth=1
	lw	a1, 24(s4)
	li	a2, 1
	mv	a0, s0
.LBB3_63:                               #   in Loop: Header=BB3_65 Depth=1
	call	emit_dht
.LBB3_64:                               #   in Loop: Header=BB3_65 Depth=1
	lw	a0, 324(s0)
	addi	s2, s2, 1
	addi	s3, s3, 8
	bge	s2, a0, .LBB3_1
.LBB3_65:                               # =>This Inner Loop Header: Depth=1
	lw	a0, 308(s0)
	ld	s4, 0(s3)
	beqz	a0, .LBB3_61
# %bb.66:                               #   in Loop: Header=BB3_65 Depth=1
	lw	a0, 412(s0)
	bnez	a0, .LBB3_62
# %bb.67:                               #   in Loop: Header=BB3_65 Depth=1
	lw	a0, 420(s0)
	bnez	a0, .LBB3_64
# %bb.68:                               #   in Loop: Header=BB3_65 Depth=1
	lw	a1, 20(s4)
	mv	a0, s0
	li	a2, 0
	j	.LBB3_63
.LBB3_69:
	ld	a0, 0(s0)
	ld	t1, 0(a0)
	li	a1, 24
	sw	a1, 40(a0)
	mv	a0, s0
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	jr	t1
.Lfunc_end3:
	.size	write_scan_header, .Lfunc_end3-write_scan_header
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function write_file_trailer
	.type	write_file_trailer,@function
write_file_trailer:                     # @write_file_trailer
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	a0, 40(a0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	li	a2, -1
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB4_3
# %bb.1:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB4_3
# %bb.2:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB4_3:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	li	a2, 217
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB4_5
# %bb.4:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB4_6
.LBB4_5:
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.LBB4_6:
	ld	a0, 0(s0)
	ld	t1, 0(a0)
	li	a1, 24
	sw	a1, 40(a0)
	mv	a0, s0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	jr	t1
.Lfunc_end4:
	.size	write_file_trailer, .Lfunc_end4-write_file_trailer
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function write_tables_only
	.type	write_tables_only,@function
write_tables_only:                      # @write_tables_only
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	a0, 40(a0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	li	a2, -1
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB5_3
# %bb.1:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB5_3
# %bb.2:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB5_3:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	li	a2, 216
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB5_6
# %bb.4:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB5_6
# %bb.5:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB5_6:
	ld	a0, 96(s0)
	beqz	a0, .LBB5_8
# %bb.7:
	mv	a0, s0
	li	a1, 0
	call	emit_dqt
.LBB5_8:
	ld	a0, 104(s0)
	beqz	a0, .LBB5_10
# %bb.9:
	li	a1, 1
	mv	a0, s0
	call	emit_dqt
.LBB5_10:
	ld	a0, 112(s0)
	beqz	a0, .LBB5_12
# %bb.11:
	li	a1, 2
	mv	a0, s0
	call	emit_dqt
.LBB5_12:
	ld	a0, 120(s0)
	beqz	a0, .LBB5_14
# %bb.13:
	li	a1, 3
	mv	a0, s0
	call	emit_dqt
.LBB5_14:
	lw	a0, 260(s0)
	bnez	a0, .LBB5_31
# %bb.15:
	ld	a0, 128(s0)
	beqz	a0, .LBB5_17
# %bb.16:
	mv	a0, s0
	li	a1, 0
	li	a2, 0
	call	emit_dht
.LBB5_17:
	ld	a0, 160(s0)
	beqz	a0, .LBB5_19
# %bb.18:
	li	a2, 1
	mv	a0, s0
	li	a1, 0
	call	emit_dht
.LBB5_19:
	ld	a0, 136(s0)
	beqz	a0, .LBB5_21
# %bb.20:
	li	a1, 1
	mv	a0, s0
	li	a2, 0
	call	emit_dht
.LBB5_21:
	ld	a0, 168(s0)
	beqz	a0, .LBB5_23
# %bb.22:
	li	a1, 1
	li	a2, 1
	mv	a0, s0
	call	emit_dht
.LBB5_23:
	ld	a0, 144(s0)
	beqz	a0, .LBB5_25
# %bb.24:
	li	a1, 2
	mv	a0, s0
	li	a2, 0
	call	emit_dht
.LBB5_25:
	ld	a0, 176(s0)
	beqz	a0, .LBB5_27
# %bb.26:
	li	a1, 2
	li	a2, 1
	mv	a0, s0
	call	emit_dht
.LBB5_27:
	ld	a0, 152(s0)
	beqz	a0, .LBB5_29
# %bb.28:
	li	a1, 3
	mv	a0, s0
	li	a2, 0
	call	emit_dht
.LBB5_29:
	ld	a0, 184(s0)
	beqz	a0, .LBB5_31
# %bb.30:
	li	a1, 3
	li	a2, 1
	mv	a0, s0
	call	emit_dht
.LBB5_31:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	li	a2, -1
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB5_34
# %bb.32:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB5_34
# %bb.33:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB5_34:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	li	a2, 217
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB5_36
# %bb.35:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB5_37
.LBB5_36:
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.LBB5_37:
	ld	a0, 0(s0)
	ld	t1, 0(a0)
	li	a1, 24
	sw	a1, 40(a0)
	mv	a0, s0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	jr	t1
.Lfunc_end5:
	.size	write_tables_only, .Lfunc_end5-write_tables_only
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function write_marker_header
	.type	write_marker_header,@function
write_marker_header:                    # @write_marker_header
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	lui	a3, 16
	addiw	a3, a3, -2
	mv	s1, a2
	mv	s2, a1
	mv	s0, a0
	bltu	a2, a3, .LBB6_2
# %bb.1:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 11
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB6_2:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	li	a2, -1
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB6_5
# %bb.3:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB6_5
# %bb.4:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB6_5:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	sb	s2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB6_8
# %bb.6:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB6_8
# %bb.7:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB6_8:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	s1, s1, 2
	srli	a2, s1, 8
	addi	a3, a1, 1
	sd	a3, 0(a0)
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB6_11
# %bb.9:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB6_11
# %bb.10:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB6_11:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	sb	s1, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB6_13
# %bb.12:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB6_14
.LBB6_13:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.LBB6_14:
	ld	a0, 0(s0)
	ld	t1, 0(a0)
	li	a1, 24
	sw	a1, 40(a0)
	mv	a0, s0
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	jr	t1
.Lfunc_end6:
	.size	write_marker_header, .Lfunc_end6-write_marker_header
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function write_marker_byte
	.type	write_marker_byte,@function
write_marker_byte:                      # @write_marker_byte
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	ld	a2, 40(a0)
	ld	a3, 0(a2)
	addi	a4, a3, 1
	sd	a4, 0(a2)
	sb	a1, 0(a3)
	ld	a1, 8(a2)
	addi	a1, a1, -1
	sd	a1, 8(a2)
	bnez	a1, .LBB7_2
# %bb.1:
	ld	a1, 24(a2)
	mv	s0, a0
	jalr	a1
	beqz	a0, .LBB7_3
.LBB7_2:
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.LBB7_3:
	ld	a1, 0(s0)
	ld	t1, 0(a1)
	li	a2, 24
	sw	a2, 40(a1)
	mv	a0, s0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	jr	t1
.Lfunc_end7:
	.size	write_marker_byte, .Lfunc_end7-write_marker_byte
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function emit_dqt
	.type	emit_dqt,@function
emit_dqt:                               # @emit_dqt
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
	mv	s2, a1
	mv	s0, a0
	slli	a0, a1, 3
	add	a0, s0, a0
	ld	s3, 96(a0)
	bnez	s3, .LBB8_2
# %bb.1:
	ld	a0, 0(s0)
	sw	s2, 44(a0)
	ld	a1, 0(s0)
	ld	a1, 0(a1)
	li	a2, 52
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB8_2:
	li	s1, 0
	addi	a0, s3, 128
	li	a1, 255
	mv	a2, s3
	j	.LBB8_4
.LBB8_3:                                #   in Loop: Header=BB8_4 Depth=1
	addi	a2, a2, 2
	beq	a2, a0, .LBB8_6
.LBB8_4:                                # =>This Inner Loop Header: Depth=1
	lhu	a3, 0(a2)
	bgeu	a1, a3, .LBB8_3
# %bb.5:                                #   in Loop: Header=BB8_4 Depth=1
	li	s1, 1
	j	.LBB8_3
.LBB8_6:
	lw	a0, 128(s3)
	bnez	a0, .LBB8_37
# %bb.7:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	li	a2, -1
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB8_10
# %bb.8:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB8_10
# %bb.9:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB8_10:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	li	a2, 219
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB8_13
# %bb.11:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB8_13
# %bb.12:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB8_13:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	sb	zero, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB8_16
# %bb.14:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB8_16
# %bb.15:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB8_16:
	ld	a0, 40(s0)
	li	a1, 67
	beqz	s1, .LBB8_18
# %bb.17:
	li	a1, -125
.LBB8_18:
	ld	a2, 0(a0)
	addi	a3, a2, 1
	sd	a3, 0(a0)
	sb	a1, 0(a2)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB8_21
# %bb.19:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB8_21
# %bb.20:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB8_21:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	slli	a2, s1, 4
	add	a2, a2, s2
	addi	a3, a1, 1
	sd	a3, 0(a0)
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB8_24
# %bb.22:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB8_24
# %bb.23:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB8_24:
	lui	s2, %hi(jpeg_natural_order)
	addi	s2, s2, %lo(jpeg_natural_order)
	li	s4, 24
	addi	s5, s2, 256
	bnez	s1, .LBB8_26
	j	.LBB8_33
.LBB8_25:                               #   in Loop: Header=BB8_26 Depth=1
	addi	s2, s2, 4
	beq	s2, s5, .LBB8_36
.LBB8_26:                               # =>This Inner Loop Header: Depth=1
	lw	a1, 0(s2)
	ld	a0, 40(s0)
	slli	a1, a1, 1
	add	a1, s3, a1
	lhu	s6, 0(a1)
	ld	a1, 0(a0)
	srli	a2, s6, 8
	addi	a3, a1, 1
	sd	a3, 0(a0)
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB8_29
# %bb.27:                               #   in Loop: Header=BB8_26 Depth=1
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB8_29
# %bb.28:                               #   in Loop: Header=BB8_26 Depth=1
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	sw	s4, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB8_29:                               #   in Loop: Header=BB8_26 Depth=1
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	sb	s6, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB8_25
# %bb.30:                               #   in Loop: Header=BB8_26 Depth=1
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB8_25
# %bb.31:                               #   in Loop: Header=BB8_26 Depth=1
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	sw	s4, 40(a0)
	mv	a0, s0
	jalr	a1
	j	.LBB8_25
.LBB8_32:                               #   in Loop: Header=BB8_33 Depth=1
	addi	s2, s2, 4
	beq	s2, s5, .LBB8_36
.LBB8_33:                               # =>This Inner Loop Header: Depth=1
	lw	a1, 0(s2)
	ld	a0, 40(s0)
	slli	a1, a1, 1
	ld	a2, 0(a0)
	add	a1, s3, a1
	lbu	a1, 0(a1)
	addi	a3, a2, 1
	sd	a3, 0(a0)
	sb	a1, 0(a2)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB8_32
# %bb.34:                               #   in Loop: Header=BB8_33 Depth=1
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB8_32
# %bb.35:                               #   in Loop: Header=BB8_33 Depth=1
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	sw	s4, 40(a0)
	mv	a0, s0
	jalr	a1
	j	.LBB8_32
.LBB8_36:
	li	a0, 1
	sw	a0, 128(s3)
.LBB8_37:
	mv	a0, s1
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
.Lfunc_end8:
	.size	emit_dqt, .Lfunc_end8-emit_dqt
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function emit_sof
	.type	emit_sof,@function
emit_sof:                               # @emit_sof
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	a0, 40(a0)
	ld	a2, 0(a0)
	addi	a3, a2, 1
	sd	a3, 0(a0)
	li	a3, -1
	sb	a3, 0(a2)
	ld	a2, 8(a0)
	mv	s1, a1
	addi	a2, a2, -1
	sd	a2, 8(a0)
	bnez	a2, .LBB9_3
# %bb.1:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB9_3
# %bb.2:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB9_3:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	sb	s1, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB9_6
# %bb.4:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB9_6
# %bb.5:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB9_6:
	lw	a1, 76(s0)
	ld	a0, 40(s0)
	slli	a2, a1, 1
	ld	a3, 0(a0)
	add	a1, a2, a1
	addi	s1, a1, 8
	srli	a1, s1, 8
	addi	a2, a3, 1
	sd	a2, 0(a0)
	sb	a1, 0(a3)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB9_9
# %bb.7:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB9_9
# %bb.8:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB9_9:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	sb	s1, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB9_11
# %bb.10:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB9_13
.LBB9_11:
	lhu	a0, 54(s0)
	bnez	a0, .LBB9_14
.LBB9_12:
	lhu	a0, 50(s0)
	bnez	a0, .LBB9_14
	j	.LBB9_15
.LBB9_13:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
	lhu	a0, 54(s0)
	beqz	a0, .LBB9_12
.LBB9_14:
	ld	a0, 0(s0)
	lui	a1, 65535
	slli	a1, a1, 20
	addi	a1, a1, 41
	sd	a1, 40(a0)
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	mv	a0, s0
	jalr	a1
.LBB9_15:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	lbu	a2, 72(s0)
	addi	a3, a1, 1
	sd	a3, 0(a0)
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB9_18
# %bb.16:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB9_18
# %bb.17:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB9_18:
	ld	a0, 40(s0)
	lw	s1, 52(s0)
	ld	a1, 0(a0)
	srli	a2, s1, 8
	addi	a3, a1, 1
	sd	a3, 0(a0)
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB9_21
# %bb.19:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB9_21
# %bb.20:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB9_21:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	sb	s1, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB9_24
# %bb.22:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB9_24
# %bb.23:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB9_24:
	ld	a0, 40(s0)
	lw	s1, 48(s0)
	ld	a1, 0(a0)
	srli	a2, s1, 8
	addi	a3, a1, 1
	sd	a3, 0(a0)
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB9_27
# %bb.25:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB9_27
# %bb.26:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB9_27:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	sb	s1, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB9_30
# %bb.28:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB9_30
# %bb.29:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB9_30:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	lbu	a2, 76(s0)
	addi	a3, a1, 1
	sd	a3, 0(a0)
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB9_33
# %bb.31:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB9_33
# %bb.32:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB9_33:
	lw	a0, 76(s0)
	blez	a0, .LBB9_45
# %bb.34:
	ld	s1, 88(s0)
	li	s2, 0
	li	s3, 24
	j	.LBB9_36
.LBB9_35:                               #   in Loop: Header=BB9_36 Depth=1
	lw	a0, 76(s0)
	addiw	s2, s2, 1
	addi	s1, s1, 96
	bge	s2, a0, .LBB9_45
.LBB9_36:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	lbu	a2, 0(s1)
	addi	a3, a1, 1
	sd	a3, 0(a0)
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB9_39
# %bb.37:                               #   in Loop: Header=BB9_36 Depth=1
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB9_39
# %bb.38:                               #   in Loop: Header=BB9_36 Depth=1
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	sw	s3, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB9_39:                               #   in Loop: Header=BB9_36 Depth=1
	ld	a0, 40(s0)
	lw	a1, 8(s1)
	lw	a2, 12(s1)
	ld	a3, 0(a0)
	slli	a1, a1, 4
	add	a1, a1, a2
	addi	a2, a3, 1
	sd	a2, 0(a0)
	sb	a1, 0(a3)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB9_42
# %bb.40:                               #   in Loop: Header=BB9_36 Depth=1
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB9_42
# %bb.41:                               #   in Loop: Header=BB9_36 Depth=1
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	sw	s3, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB9_42:                               #   in Loop: Header=BB9_36 Depth=1
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	lbu	a2, 16(s1)
	addi	a3, a1, 1
	sd	a3, 0(a0)
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB9_35
# %bb.43:                               #   in Loop: Header=BB9_36 Depth=1
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB9_35
# %bb.44:                               #   in Loop: Header=BB9_36 Depth=1
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	sw	s3, 40(a0)
	mv	a0, s0
	jalr	a1
	j	.LBB9_35
.LBB9_45:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end9:
	.size	emit_sof, .Lfunc_end9-emit_sof
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function emit_dht
	.type	emit_dht,@function
emit_dht:                               # @emit_dht
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	sd	s5, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	snez	s2, a2
	slli	a0, a1, 3
	add	a0, s0, a0
	slli	s2, s2, 4
	li	a3, 128
	bnez	a2, .LBB10_3
# %bb.1:
	add	a0, a0, a3
	ld	s1, 0(a0)
	add	s2, a1, s2
	beqz	s1, .LBB10_4
.LBB10_2:
	lw	a0, 276(s1)
	bnez	a0, .LBB10_32
	j	.LBB10_5
.LBB10_3:
	li	a3, 160
	add	a0, a0, a3
	ld	s1, 0(a0)
	add	s2, a1, s2
	bnez	s1, .LBB10_2
.LBB10_4:
	ld	a0, 0(s0)
	sw	s2, 44(a0)
	ld	a1, 0(s0)
	ld	a1, 0(a1)
	li	a2, 50
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
	lw	a0, 276(s1)
	bnez	a0, .LBB10_32
.LBB10_5:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	li	a2, -1
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB10_8
# %bb.6:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB10_8
# %bb.7:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB10_8:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	li	a2, 196
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB10_11
# %bb.9:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB10_11
# %bb.10:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB10_11:
	lbu	a0, 1(s1)
	lbu	a1, 2(s1)
	lbu	a2, 3(s1)
	lbu	a3, 4(s1)
	add	a0, a0, a1
	add	a2, a2, a3
	add	a0, a0, a2
	lbu	a1, 5(s1)
	lbu	a2, 6(s1)
	lbu	a3, 7(s1)
	lbu	a4, 8(s1)
	lbu	a5, 9(s1)
	add	a1, a1, a2
	add	a1, a1, a3
	add	a0, a0, a1
	add	a4, a4, a5
	lbu	a1, 10(s1)
	lbu	a2, 11(s1)
	lbu	a3, 12(s1)
	lbu	a5, 13(s1)
	add	a1, a4, a1
	add	a1, a1, a2
	add	a1, a0, a1
	add	a3, a3, a5
	lbu	a2, 14(s1)
	lbu	a4, 15(s1)
	lbu	a5, 16(s1)
	ld	a0, 40(s0)
	add	a2, a3, a2
	add	a2, a2, a4
	add	a2, a2, a5
	ld	a3, 0(a0)
	addw	s3, a1, a2
	addi	s4, s3, 19
	srli	a1, s4, 8
	addi	a2, a3, 1
	sd	a2, 0(a0)
	sb	a1, 0(a3)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB10_14
# %bb.12:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB10_14
# %bb.13:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB10_14:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	sb	s4, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB10_17
# %bb.15:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB10_17
# %bb.16:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB10_17:
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	addi	a2, a1, 1
	sd	a2, 0(a0)
	sb	s2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB10_20
# %bb.18:
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB10_20
# %bb.19:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB10_20:
	addi	s4, s1, 1
	addi	s2, s1, 17
	li	s5, 24
	j	.LBB10_22
.LBB10_21:                              #   in Loop: Header=BB10_22 Depth=1
	addi	s4, s4, 1
	beq	s4, s2, .LBB10_25
.LBB10_22:                              # =>This Inner Loop Header: Depth=1
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	lbu	a2, 0(s4)
	addi	a3, a1, 1
	sd	a3, 0(a0)
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB10_21
# %bb.23:                               #   in Loop: Header=BB10_22 Depth=1
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB10_21
# %bb.24:                               #   in Loop: Header=BB10_22 Depth=1
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	sw	s5, 40(a0)
	mv	a0, s0
	jalr	a1
	j	.LBB10_21
.LBB10_25:
	beqz	s3, .LBB10_31
# %bb.26:
	li	s4, 0
	li	s5, 24
	j	.LBB10_28
.LBB10_27:                              #   in Loop: Header=BB10_28 Depth=1
	addi	s4, s4, 1
	bgeu	s4, s3, .LBB10_31
.LBB10_28:                              # =>This Inner Loop Header: Depth=1
	ld	a0, 40(s0)
	ld	a1, 0(a0)
	add	a2, s2, s4
	lbu	a2, 0(a2)
	addi	a3, a1, 1
	sd	a3, 0(a0)
	sb	a2, 0(a1)
	ld	a1, 8(a0)
	addi	a1, a1, -1
	sd	a1, 8(a0)
	bnez	a1, .LBB10_27
# %bb.29:                               #   in Loop: Header=BB10_28 Depth=1
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB10_27
# %bb.30:                               #   in Loop: Header=BB10_28 Depth=1
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	sw	s5, 40(a0)
	mv	a0, s0
	jalr	a1
	j	.LBB10_27
.LBB10_31:
	li	a0, 1
	sw	a0, 276(s1)
.LBB10_32:
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end10:
	.size	emit_dht, .Lfunc_end10-emit_dht
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
