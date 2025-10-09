	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"subspic.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Substitute_Frame_Buffer         # -- Begin function Substitute_Frame_Buffer
	.p2align	2
	.type	Substitute_Frame_Buffer,@function
Substitute_Frame_Buffer:                # @Substitute_Frame_Buffer
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	lui	s0, %hi(Second_Field)
	lw	a3, %lo(Second_Field)(s0)
	or	a1, a1, a3
	beqz	a1, .LBB0_13
# %bb.1:
	mv	a2, a0
	lui	a0, %hi(picture_structure)
	lw	a1, %lo(picture_structure)(a0)
	lui	a0, %hi(picture_coding_type)
	lw	a0, %lo(picture_coding_type)(a0)
	li	a4, 3
	beq	a1, a4, .LBB0_7
# %bb.2:
	beqz	a3, .LBB0_7
# %bb.3:
	li	a4, 2
	li	a3, 1
	bne	a0, a4, .LBB0_14
# %bb.4:
	lui	a0, %hi(Substitute_Frame_Buffer.previous_picture_coding_type)
	lw	a0, %lo(Substitute_Frame_Buffer.previous_picture_coding_type)(a0)
	li	a1, 1
	beq	a0, a1, .LBB0_6
# %bb.5:
	lui	a0, %hi(temporal_reference)
	lw	a0, %lo(temporal_reference)(a0)
	lui	a1, %hi(Substitute_Frame_Buffer.previous_anchor_temporal_reference)
	lw	a1, %lo(Substitute_Frame_Buffer.previous_anchor_temporal_reference)(a1)
	add	a0, a2, a0
	not	a2, a1
	addw	a2, a2, a0
.LBB0_6:
	lui	a0, %hi(Substitute_Picture_Filename)
	ld	a0, %lo(Substitute_Picture_Filename)(a0)
	lui	a1, %hi(current_frame)
	addi	a1, a1, %lo(current_frame)
	j	.LBB0_12
.LBB0_7:
	li	a1, 2
	bne	a0, a1, .LBB0_9
# %bb.8:
	lui	a0, %hi(Substitute_Picture_Filename)
	ld	a0, %lo(Substitute_Picture_Filename)(a0)
	addiw	a2, a2, -1
	lui	a1, %hi(forward_reference_frame)
	addi	a1, a1, %lo(forward_reference_frame)
	j	.LBB0_12
.LBB0_9:
	li	a1, 3
	bne	a0, a1, .LBB0_13
# %bb.10:
	lui	a0, %hi(Substitute_Frame_Buffer.bgate)
	lbu	a0, %lo(Substitute_Frame_Buffer.bgate)(a0)
	andi	a0, a0, 1
	bnez	a0, .LBB0_13
# %bb.11:
	lui	a0, %hi(Substitute_Frame_Buffer.previous_temporal_reference)
	lw	a1, %lo(Substitute_Frame_Buffer.previous_temporal_reference)(a0)
	lui	a0, %hi(temporal_reference)
	lw	a3, %lo(temporal_reference)(a0)
	lui	a0, %hi(Substitute_Picture_Filename)
	ld	a0, %lo(Substitute_Picture_Filename)(a0)
	add	a1, a2, a1
	not	a2, a3
	addw	a2, a2, a1
	lui	a1, %hi(backward_reference_frame)
	addi	a1, a1, %lo(backward_reference_frame)
.LBB0_12:
	call	Read_Frame
.LBB0_13:
	lui	a0, %hi(picture_coding_type)
	lw	a0, %lo(picture_coding_type)(a0)
	lui	a1, %hi(picture_structure)
	lw	a2, %lo(Second_Field)(s0)
	lw	a1, %lo(picture_structure)(a1)
	snez	a3, a2
.LBB0_14:
	addi	a2, a0, -3
	seqz	a2, a2
	lui	a4, %hi(Substitute_Frame_Buffer.bgate)
	li	a5, 3
	sb	a2, %lo(Substitute_Frame_Buffer.bgate)(a4)
	beq	a1, a5, .LBB0_16
# %bb.15:
	bnez	a3, .LBB0_17
.LBB0_16:
	lui	a2, %hi(temporal_reference)
	lw	a2, %lo(temporal_reference)(a2)
	lui	a4, %hi(Substitute_Frame_Buffer.previous_temporal_reference)
	sw	a2, %lo(Substitute_Frame_Buffer.previous_temporal_reference)(a4)
.LBB0_17:
	li	a2, 3
	beq	a0, a2, .LBB0_20
# %bb.18:
	addi	a1, a1, -3
	seqz	a1, a1
	or	a1, a1, a3
	beqz	a1, .LBB0_20
# %bb.19:
	lui	a1, %hi(temporal_reference)
	lw	a1, %lo(temporal_reference)(a1)
	lui	a2, %hi(Substitute_Frame_Buffer.previous_anchor_temporal_reference)
	sw	a1, %lo(Substitute_Frame_Buffer.previous_anchor_temporal_reference)(a2)
.LBB0_20:
	lui	a1, %hi(Substitute_Frame_Buffer.previous_picture_coding_type)
	sw	a0, %lo(Substitute_Frame_Buffer.previous_picture_coding_type)(a1)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end0:
	.size	Substitute_Frame_Buffer, .Lfunc_end0-Substitute_Frame_Buffer
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function Read_Frame
	.type	Read_Frame,@function
Read_Frame:                             # @Read_Frame
# %bb.0:
	addi	sp, sp, -576
	sd	ra, 568(sp)                     # 8-byte Folded Spill
	sd	s0, 560(sp)                     # 8-byte Folded Spill
	sd	s1, 552(sp)                     # 8-byte Folded Spill
	sd	s2, 544(sp)                     # 8-byte Folded Spill
	sd	s3, 536(sp)                     # 8-byte Folded Spill
	sd	s4, 528(sp)                     # 8-byte Folded Spill
	sd	s5, 520(sp)                     # 8-byte Folded Spill
	sd	s6, 512(sp)                     # 8-byte Folded Spill
	mv	s2, a2
	mv	s0, a1
	mv	s3, a0
	bgez	a2, .LBB1_2
# %bb.1:
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	mv	a1, s2
	call	printf
.LBB1_2:
	lui	a0, %hi(Big_Picture_Flag)
	lw	a0, %lo(Big_Picture_Flag)(a0)
	lui	s4, %hi(substitute_frame)
	addi	s4, s4, %lo(substitute_frame)
	beqz	a0, .LBB1_8
# %bb.3:
	lui	a1, %hi(.L.str.2)
	addi	a1, a1, %lo(.L.str.2)
	mv	a0, s3
	call	fopen
	beqz	a0, .LBB1_15
# %bb.4:
	mv	s1, a0
	lui	a0, %hi(Coded_Picture_Width)
	lw	a0, %lo(Coded_Picture_Width)(a0)
	lui	a1, %hi(Coded_Picture_Height)
	lw	a2, %lo(Coded_Picture_Height)(a1)
	lui	a1, %hi(chroma_format)
	lw	a1, %lo(chroma_format)(a1)
	li	a3, 1
	mulw	s3, a2, a0
	beq	a1, a3, .LBB1_17
# %bb.5:
	li	a0, 2
	beq	a1, a0, .LBB1_16
# %bb.6:
	li	a0, 3
	bne	a1, a0, .LBB1_18
# %bb.7:
	slli	a0, s3, 1
	add	s3, a0, s3
	j	.LBB1_19
.LBB1_8:
	addi	a0, sp, 256
	mv	a1, s3
	mv	a2, s2
	call	sprintf
	lui	a1, %hi(.L.str.5)
	addi	a1, a1, %lo(.L.str.5)
	mv	a0, sp
	addi	a2, sp, 256
	call	sprintf
	lui	a0, %hi(substitute_frame)
	lui	a1, %hi(Coded_Picture_Width)
	lw	a1, %lo(Coded_Picture_Width)(a1)
	lui	a2, %hi(Coded_Picture_Height)
	lw	a2, %lo(Coded_Picture_Height)(a2)
	ld	s3, %lo(substitute_frame)(a0)
	mulw	s1, a2, a1
	mv	a0, sp
	li	a1, 0
	call	open
	mv	s2, a0
	mv	a1, s3
	mv	a2, s1
	call	read
	beq	a0, s1, .LBB1_10
# %bb.9:
	mv	a1, a0
	lui	a0, %hi(.L.str.9)
	addi	a0, a0, %lo(.L.str.9)
	mv	a3, sp
	mv	a2, s1
	call	printf
.LBB1_10:
	mv	a0, s2
	call	close
	lui	a1, %hi(.L.str.6)
	addi	a1, a1, %lo(.L.str.6)
	mv	a0, sp
	addi	a2, sp, 256
	call	sprintf
	lui	s5, %hi(Chroma_Width)
	lw	a0, %lo(Chroma_Width)(s5)
	lui	s6, %hi(Chroma_Height)
	lw	a1, %lo(Chroma_Height)(s6)
	ld	s3, 8(s4)
	mulw	s1, a1, a0
	mv	a0, sp
	li	a1, 0
	call	open
	mv	s2, a0
	mv	a1, s3
	mv	a2, s1
	call	read
	beq	a0, s1, .LBB1_12
# %bb.11:
	mv	a1, a0
	lui	a0, %hi(.L.str.9)
	addi	a0, a0, %lo(.L.str.9)
	mv	a3, sp
	mv	a2, s1
	call	printf
.LBB1_12:
	mv	a0, s2
	call	close
	lui	a1, %hi(.L.str.7)
	addi	a1, a1, %lo(.L.str.7)
	mv	a0, sp
	addi	a2, sp, 256
	call	sprintf
	lw	a0, %lo(Chroma_Width)(s5)
	lw	a1, %lo(Chroma_Height)(s6)
	ld	s3, 16(s4)
	mulw	s1, a1, a0
	mv	a0, sp
	li	a1, 0
	call	open
	mv	s2, a0
	mv	a1, s3
	mv	a2, s1
	call	read
	beq	a0, s1, .LBB1_14
# %bb.13:
	mv	a1, a0
	lui	a0, %hi(.L.str.9)
	addi	a0, a0, %lo(.L.str.9)
	mv	a3, sp
	mv	a2, s1
	call	printf
.LBB1_14:
	mv	a0, s2
	call	close
	j	.LBB1_29
.LBB1_15:
	lui	a0, %hi(Error_Text)
	addi	a0, a0, %lo(Error_Text)
	lui	a1, %hi(.L.str.3)
	addi	a1, a1, %lo(.L.str.3)
	mv	a2, s3
	call	sprintf
	lui	a0, %hi(.Lstr)
	addi	a0, a0, %lo(.Lstr)
	call	puts
	j	.LBB1_29
.LBB1_16:
	slli	s3, s3, 1
	j	.LBB1_19
.LBB1_17:
	srli	a0, s3, 1
	add	s3, a0, s3
	j	.LBB1_19
.LBB1_18:
	lui	a0, %hi(.L.str.4)
	addi	a0, a0, %lo(.L.str.4)
	call	printf
.LBB1_19:
	mulw	a1, s3, s2
	mv	a0, s1
	li	a2, 0
	call	fseek
	lui	s2, %hi(Coded_Picture_Height)
	lw	a0, %lo(Coded_Picture_Height)(s2)
	blez	a0, .LBB1_22
# %bb.20:                               # %.preheader10
	li	s3, 0
	lui	s5, %hi(substitute_frame)
	lui	s6, %hi(Coded_Picture_Width)
.LBB1_21:                               # =>This Inner Loop Header: Depth=1
	lw	a2, %lo(Coded_Picture_Width)(s6)
	ld	a0, %lo(substitute_frame)(s5)
	mulw	a1, a2, s3
	add	a0, a0, a1
	li	a1, 1
	mv	a3, s1
	call	fread
	lw	a0, %lo(Coded_Picture_Height)(s2)
	addiw	s3, s3, 1
	blt	s3, a0, .LBB1_21
.LBB1_22:
	lui	s2, %hi(Chroma_Height)
	lw	a0, %lo(Chroma_Height)(s2)
	blez	a0, .LBB1_28
# %bb.23:                               # %.preheader9
	li	s3, 0
	lui	s5, %hi(Chroma_Width)
.LBB1_24:                               # =>This Inner Loop Header: Depth=1
	lw	a2, %lo(Chroma_Width)(s5)
	ld	a0, 8(s4)
	mulw	a1, a2, s3
	add	a0, a0, a1
	li	a1, 1
	mv	a3, s1
	call	fread
	lw	a0, %lo(Chroma_Height)(s2)
	addiw	s3, s3, 1
	blt	s3, a0, .LBB1_24
# %bb.25:
	blez	a0, .LBB1_28
# %bb.26:                               # %.preheader7
	li	s2, 0
	lui	s3, %hi(Chroma_Width)
	lui	s5, %hi(Chroma_Height)
.LBB1_27:                               # =>This Inner Loop Header: Depth=1
	lw	a2, %lo(Chroma_Width)(s3)
	ld	a0, 16(s4)
	mulw	a1, a2, s2
	add	a0, a0, a1
	li	a1, 1
	mv	a3, s1
	call	fread
	lw	a0, %lo(Chroma_Height)(s5)
	addiw	s2, s2, 1
	blt	s2, a0, .LBB1_27
.LBB1_28:
	mv	a0, s1
	call	fclose
.LBB1_29:
	lui	a0, %hi(Second_Field)
	lw	a0, %lo(Second_Field)(a0)
	li	a1, 0
	li	a2, 1
	beqz	a0, .LBB1_38
# %bb.30:
	lui	a0, %hi(picture_coding_type)
	lw	a3, %lo(picture_coding_type)(a0)
	li	a4, 2
	li	a0, 1
	bne	a3, a4, .LBB1_32
# %bb.31:
	lui	a0, %hi(picture_structure)
	lw	a0, %lo(picture_structure)(a0)
	addi	a1, a0, -1
	snez	a2, a1
	addi	a0, a0, -3
	snez	a1, a0
	addi	a0, a1, 1
.LBB1_32:
	lui	a3, %hi(Coded_Picture_Height)
	lw	a3, %lo(Coded_Picture_Height)(a3)
	and	a2, a2, a1
	blez	a3, .LBB1_41
.LBB1_33:
	lui	a4, %hi(Coded_Picture_Width)
	lw	a4, %lo(Coded_Picture_Width)(a4)
	blez	a4, .LBB1_39
# %bb.34:
	li	a5, 0
	li	a6, 0
	lui	a7, %hi(substitute_frame)
	ld	t1, %lo(substitute_frame)(a7)
	ld	a7, 0(s0)
	sllw	t0, a4, a1
	neg	t2, a2
	and	t2, t2, a4
	add	t1, t1, t2
	mv	t2, a7
.LBB1_35:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_36 Depth 2
	add	t3, a4, a5
	add	t3, a7, t3
	mv	t4, t1
	mv	t5, t2
.LBB1_36:                               #   Parent Loop BB1_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	t6, 0(t4)
	sb	t6, 0(t5)
	addi	t5, t5, 1
	addi	t4, t4, 1
	bne	t5, t3, .LBB1_36
# %bb.37:                               #   in Loop: Header=BB1_35 Depth=1
	add	a5, a5, t0
	addw	a6, a6, a0
	add	t2, t2, t0
	add	t1, t1, t0
	blt	a6, a3, .LBB1_35
	j	.LBB1_41
.LBB1_38:
	li	a0, 1
	lui	a3, %hi(Coded_Picture_Height)
	lw	a3, %lo(Coded_Picture_Height)(a3)
	and	a2, a2, a1
	bgtz	a3, .LBB1_33
	j	.LBB1_41
.LBB1_39:                               # %.preheader5
	li	a4, 0
.LBB1_40:                               # =>This Inner Loop Header: Depth=1
	addw	a4, a4, a0
	blt	a4, a3, .LBB1_40
.LBB1_41:
	lui	a3, %hi(Chroma_Height)
	lw	a3, %lo(Chroma_Height)(a3)
	blez	a3, .LBB1_58
# %bb.42:
	lui	a4, %hi(Chroma_Width)
	lw	a4, %lo(Chroma_Width)(a4)
	blez	a4, .LBB1_48
# %bb.43:
	li	a5, 0
	li	a6, 0
	ld	t1, 8(s4)
	ld	a7, 8(s0)
	sllw	t0, a4, a1
	neg	t2, a2
	and	t2, t2, a4
	add	t1, t1, t2
	mv	t2, a7
.LBB1_44:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_45 Depth 2
	add	t3, a4, a5
	add	t3, a7, t3
	mv	t4, t1
	mv	t5, t2
.LBB1_45:                               #   Parent Loop BB1_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	t6, 0(t4)
	sb	t6, 0(t5)
	addi	t5, t5, 1
	addi	t4, t4, 1
	bne	t5, t3, .LBB1_45
# %bb.46:                               #   in Loop: Header=BB1_44 Depth=1
	add	a5, a5, t0
	addw	a6, a6, a0
	add	t2, t2, t0
	add	t1, t1, t0
	blt	a6, a3, .LBB1_44
# %bb.47:
	lui	a3, %hi(Chroma_Height)
	lw	a3, %lo(Chroma_Height)(a3)
	lui	a4, %hi(Chroma_Width)
	lw	a4, %lo(Chroma_Width)(a4)
	j	.LBB1_50
.LBB1_48:                               # %.preheader2
	li	a5, 0
.LBB1_49:                               # =>This Inner Loop Header: Depth=1
	addw	a5, a5, a0
	blt	a5, a3, .LBB1_49
.LBB1_50:
	blez	a3, .LBB1_58
# %bb.51:
	blez	a4, .LBB1_56
# %bb.52:
	li	a5, 0
	li	a6, 0
	ld	t0, 16(s4)
	ld	a7, 16(s0)
	sllw	a1, a4, a1
	neg	a2, a2
	and	a2, a2, a4
	add	a2, t0, a2
	mv	t0, a7
.LBB1_53:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_54 Depth 2
	add	t1, a4, a5
	add	t1, a7, t1
	mv	t2, a2
	mv	t3, t0
.LBB1_54:                               #   Parent Loop BB1_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	t4, 0(t2)
	sb	t4, 0(t3)
	addi	t3, t3, 1
	addi	t2, t2, 1
	bne	t3, t1, .LBB1_54
# %bb.55:                               #   in Loop: Header=BB1_53 Depth=1
	add	a5, a5, a1
	addw	a6, a6, a0
	add	t0, t0, a1
	add	a2, a2, a1
	blt	a6, a3, .LBB1_53
	j	.LBB1_58
.LBB1_56:                               # %.preheader
	li	a1, 0
.LBB1_57:                               # =>This Inner Loop Header: Depth=1
	addw	a1, a1, a0
	blt	a1, a3, .LBB1_57
.LBB1_58:
	ld	ra, 568(sp)                     # 8-byte Folded Reload
	ld	s0, 560(sp)                     # 8-byte Folded Reload
	ld	s1, 552(sp)                     # 8-byte Folded Reload
	ld	s2, 544(sp)                     # 8-byte Folded Reload
	ld	s3, 536(sp)                     # 8-byte Folded Reload
	ld	s4, 528(sp)                     # 8-byte Folded Reload
	ld	s5, 520(sp)                     # 8-byte Folded Reload
	ld	s6, 512(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 576
	ret
.Lfunc_end1:
	.size	Read_Frame, .Lfunc_end1-Read_Frame
                                        # -- End function
	.option	pop
	.type	Substitute_Frame_Buffer.previous_temporal_reference,@object # @Substitute_Frame_Buffer.previous_temporal_reference
	.section	.sbss,"aw",@nobits
	.p2align	2, 0x0
Substitute_Frame_Buffer.previous_temporal_reference:
	.word	0                               # 0x0
	.size	Substitute_Frame_Buffer.previous_temporal_reference, 4

	.type	Substitute_Frame_Buffer.previous_anchor_temporal_reference,@object # @Substitute_Frame_Buffer.previous_anchor_temporal_reference
	.p2align	2, 0x0
Substitute_Frame_Buffer.previous_anchor_temporal_reference:
	.word	0                               # 0x0
	.size	Substitute_Frame_Buffer.previous_anchor_temporal_reference, 4

	.type	Substitute_Frame_Buffer.previous_picture_coding_type,@object # @Substitute_Frame_Buffer.previous_picture_coding_type
	.p2align	2, 0x0
Substitute_Frame_Buffer.previous_picture_coding_type:
	.word	0                               # 0x0
	.size	Substitute_Frame_Buffer.previous_picture_coding_type, 4

	.type	Substitute_Frame_Buffer.bgate,@object # @Substitute_Frame_Buffer.bgate
	.p2align	2, 0x0
Substitute_Frame_Buffer.bgate:
	.byte	0                               # 0x0
	.size	Substitute_Frame_Buffer.bgate, 1

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ERROR: framenum (%d) is less than zero\n"
	.size	.L.str, 40

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"rb"
	.size	.L.str.2, 3

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Couldn't open %s\n"
	.size	.L.str.3, 18

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"ERROR: chroma_format (%d) not recognized\n"
	.size	.L.str.4, 42

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"%s.Y"
	.size	.L.str.5, 5

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"%s.U"
	.size	.L.str.6, 5

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"%s.V"
	.size	.L.str.7, 5

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"was able to read only %d bytes of %d of file %s\n"
	.size	.L.str.9, 49

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"was unable to substitute frame"
	.size	.Lstr, 31

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
