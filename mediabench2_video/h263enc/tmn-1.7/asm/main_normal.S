	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"main.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_regsw_hits                  # -- Begin function get_regsw_hits
	.p2align	2
	.type	get_regsw_hits,@function
get_regsw_hits:                         # @get_regsw_hits
# %bb.0:
	li	a0, 0
	ret
.Lfunc_end0:
	.size	get_regsw_hits, .Lfunc_end0-get_regsw_hits
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_regsw_misses                # -- Begin function get_regsw_misses
	.p2align	2
	.type	get_regsw_misses,@function
get_regsw_misses:                       # @get_regsw_misses
# %bb.0:
	li	a0, 0
	ret
.Lfunc_end1:
	.size	get_regsw_misses, .Lfunc_end1-get_regsw_misses
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	clear_regsw_cache               # -- Begin function clear_regsw_cache
	.p2align	2
	.type	clear_regsw_cache,@function
clear_regsw_cache:                      # @clear_regsw_cache
# %bb.0:
	ret
.Lfunc_end2:
	.size	clear_regsw_cache, .Lfunc_end2-clear_regsw_cache
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_cycles                      # -- Begin function get_cycles
	.p2align	2
	.type	get_cycles,@function
get_cycles:                             # @get_cycles
# %bb.0:
	li	a0, 0
	ret
.Lfunc_end3:
	.size	get_cycles, .Lfunc_end3-get_cycles
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	set_debug                       # -- Begin function set_debug
	.p2align	2
	.type	set_debug,@function
set_debug:                              # @set_debug
# %bb.0:
	#APP
	csrw	2056, a0
	#NO_APP
	ret
.Lfunc_end4:
	.size	set_debug, .Lfunc_end4-set_debug
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_li                          # -- Begin function get_li
	.p2align	2
	.type	get_li,@function
get_li:                                 # @get_li
# %bb.0:
	li	a0, 0
	ret
.Lfunc_end5:
	.size	get_li, .Lfunc_end5-get_li
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_ld                          # -- Begin function get_ld
	.p2align	2
	.type	get_ld,@function
get_ld:                                 # @get_ld
# %bb.0:
	li	a0, 0
	ret
.Lfunc_end6:
	.size	get_ld, .Lfunc_end6-get_ld
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_lw                          # -- Begin function get_lw
	.p2align	2
	.type	get_lw,@function
get_lw:                                 # @get_lw
# %bb.0:
	li	a0, 0
	ret
.Lfunc_end7:
	.size	get_lw, .Lfunc_end7-get_lw
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_sd                          # -- Begin function get_sd
	.p2align	2
	.type	get_sd,@function
get_sd:                                 # @get_sd
# %bb.0:
	li	a0, 0
	ret
.Lfunc_end8:
	.size	get_sd, .Lfunc_end8-get_sd
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_sw                          # -- Begin function get_sw
	.p2align	2
	.type	get_sw,@function
get_sw:                                 # @get_sw
# %bb.0:
	li	a0, 0
	ret
.Lfunc_end9:
	.size	get_sw, .Lfunc_end9-get_sw
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	crash_handler                   # -- Begin function crash_handler
	.p2align	2
	.type	crash_handler,@function
crash_handler:                          # @crash_handler
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	li	a0, 0
	#APP
	csrw	2056, a0
	#NO_APP
	lui	a0, %hi(.Lstr)
	addi	a0, a0, %lo(.Lstr)
	call	puts
	li	a0, 1
	call	exit
.Lfunc_end10:
	.size	crash_handler, .Lfunc_end10-crash_handler
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI11_0:
	.quad	0x408f400000000000              # double 1000
	.text
	.globl	main
	.p2align	2
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi	sp, sp, -384
	sd	ra, 376(sp)                     # 8-byte Folded Spill
	sd	s0, 368(sp)                     # 8-byte Folded Spill
	sd	s1, 360(sp)                     # 8-byte Folded Spill
	sd	s2, 352(sp)                     # 8-byte Folded Spill
	sd	s3, 344(sp)                     # 8-byte Folded Spill
	sd	s4, 336(sp)                     # 8-byte Folded Spill
	sd	s5, 328(sp)                     # 8-byte Folded Spill
	sd	s6, 320(sp)                     # 8-byte Folded Spill
	sd	s7, 312(sp)                     # 8-byte Folded Spill
	sd	s8, 304(sp)                     # 8-byte Folded Spill
	sd	s9, 296(sp)                     # 8-byte Folded Spill
	sd	s10, 288(sp)                    # 8-byte Folded Spill
	sd	s11, 280(sp)                    # 8-byte Folded Spill
	fsd	fs0, 272(sp)                    # 8-byte Folded Spill
	fsd	fs1, 264(sp)                    # 8-byte Folded Spill
	fsd	fs2, 256(sp)                    # 8-byte Folded Spill
	fsd	fs3, 248(sp)                    # 8-byte Folded Spill
	mv	s3, a1
	mv	s10, a0
	lui	a1, %hi(crash_handler)
	addi	a1, a1, %lo(crash_handler)
	li	a0, 11
	call	signal
	li	a1, 1
	li	a0, 1
	sd	a0, 184(sp)                     # 8-byte Folded Spill
	#APP
	csrw	2056, a1
	#NO_APP
	li	a0, 80
	call	malloc
	mv	s6, a0
	li	a0, 56
	call	malloc
	sd	a0, 216(sp)                     # 8-byte Folded Spill
	li	a0, 56
	call	malloc
	sd	a0, 96(sp)                      # 8-byte Folded Spill
	li	a0, 56
	call	malloc
	mv	s11, a0
	li	a0, 16
	call	malloc
	sd	a0, 120(sp)                     # 8-byte Folded Spill
	li	a0, 16
	call	malloc
	sd	a0, 88(sp)                      # 8-byte Folded Spill
	li	a0, 16
	call	malloc
	sd	a0, 72(sp)                      # 8-byte Folded Spill
	li	a0, 100
	call	malloc
	mv	s2, a0
	li	a0, 100
	call	malloc
	mv	s4, a0
	li	a0, 100
	call	malloc
	mv	s8, a0
	li	a0, 100
	call	malloc
	lui	s0, %hi(stdout)
	ld	a3, %lo(stdout)(s0)
	mv	s5, a0
	lui	a0, %hi(.L.str.2)
	addi	a0, a0, %lo(.L.str.2)
	li	a1, 70
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stdout)(s0)
	lui	a0, %hi(.L.str.3)
	addi	a0, a0, %lo(.L.str.3)
	li	a1, 173
	li	a2, 1
	call	fwrite
	lui	a0, %hi(headerlength)
	sw	zero, %lo(headerlength)(a0)
	call	init_idctref
	lui	a0, %hi(advanced)
	sw	zero, %lo(advanced)(a0)
	lui	a0, %hi(syntax_arith_coding)
	sw	zero, %lo(syntax_arith_coding)(a0)
	sw	zero, 36(s6)
	lui	a0, %hi(mv_outside_frame)
	sw	zero, %lo(mv_outside_frame)(a0)
	lui	a0, %hi(long_vectors)
	sw	zero, %lo(long_vectors)(a0)
	lui	a0, %hi(pb_frames)
	sw	zero, %lo(pb_frames)(a0)
	li	s0, 2
	sw	s0, 68(s6)
	sw	s0, 24(s6)
	lui	a0, 266752
	sw	a0, 20(s6)
	sd	s2, 112(sp)                     # 8-byte Folded Spill
	sb	zero, 0(s2)
	lui	a1, %hi(.L.str.4)
	addi	a1, a1, %lo(.L.str.4)
	li	a2, 13
	sd	s4, 56(sp)                      # 8-byte Folded Spill
	mv	a0, s4
	call	memcpy
	lui	a1, %hi(.L.str.5)
	addi	a1, a1, %lo(.L.str.5)
	li	a2, 10
	li	s9, 10
	mv	a0, s8
	call	memcpy
	lui	a0, %hi(trace)
	sw	zero, %lo(trace)(a0)
	li	a0, 15
	sw	a0, 56(s6)
	sw	zero, 60(s6)
	sw	zero, 40(s6)
	sw	zero, 8(s6)
	sw	zero, 76(s6)
	lui	a0, 270080
	sd	s6, 240(sp)                     # 8-byte Folded Spill
	sd	s11, 40(sp)                     # 8-byte Folded Spill
	sd	s5, 32(sp)                      # 8-byte Folded Spill
	blt	s10, s0, .LBB11_34
# %bb.1:                                # %.preheader8
	sd	zero, 48(sp)                    # 8-byte Folded Spill
	sd	zero, 136(sp)                   # 8-byte Folded Spill
	sd	zero, 128(sp)                   # 8-byte Folded Spill
	sd	zero, 232(sp)                   # 8-byte Folded Spill
	sd	zero, 64(sp)                    # 8-byte Folded Spill
	li	s11, 3
	li	s9, 10
	li	s2, 1
	fmv.w.x	fs0, a0
	li	s4, 45
	li	s5, 54
	lui	s6, %hi(.LJTI11_0)
	addi	s6, s6, %lo(.LJTI11_0)
	li	s1, 10
	li	a0, 1
	sd	a0, 184(sp)                     # 8-byte Folded Spill
	j	.LBB11_5
.LBB11_2:                               #   in Loop: Header=BB11_5 Depth=1
	lui	a0, %hi(trace)
	li	a1, 1
	sw	a1, %lo(trace)(a0)
.LBB11_3:                               #   in Loop: Header=BB11_5 Depth=1
	sd	s0, 136(sp)                     # 8-byte Folded Spill
.LBB11_4:                               #   in Loop: Header=BB11_5 Depth=1
	addiw	s2, s2, 1
	bge	s2, s10, .LBB11_45
.LBB11_5:                               # =>This Inner Loop Header: Depth=1
	slli	a0, s2, 3
	add	a0, s3, a0
	ld	a1, 0(a0)
	lbu	a2, 0(a1)
	ld	s0, 136(sp)                     # 8-byte Folded Reload
	bne	a2, s4, .LBB11_3
# %bb.6:                                #   in Loop: Header=BB11_5 Depth=1
	addi	a2, a1, 1
	sd	a2, 0(a0)
	lbu	a2, 1(a1)
	addi	a0, a2, -66
	bgeu	s5, a0, .LBB11_7
	j	.LBB11_148
.LBB11_7:                               #   in Loop: Header=BB11_5 Depth=1
	slli	a0, a0, 2
	add	a0, a0, s6
	lw	a0, 0(a0)
	li	a1, 1
	sd	a1, 136(sp)                     # 8-byte Folded Spill
	jr	a0
.LBB11_8:                               #   in Loop: Header=BB11_5 Depth=1
	addiw	s2, s2, 1
	slli	a0, s2, 3
	add	a0, s3, a0
	ld	a1, 0(a0)
	ld	a0, 56(sp)                      # 8-byte Folded Reload
	call	strcpy
	j	.LBB11_3
.LBB11_9:                               #   in Loop: Header=BB11_5 Depth=1
	addiw	s2, s2, 1
	slli	a0, s2, 3
	add	a0, s3, a0
	ld	a0, 0(a0)
	li	a2, 10
	li	a1, 0
	call	strtol
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	sw	a0, 56(a1)
	j	.LBB11_3
.LBB11_10:                              #   in Loop: Header=BB11_5 Depth=1
	li	a0, 1
	sd	a0, 128(sp)                     # 8-byte Folded Spill
	j	.LBB11_3
.LBB11_11:                              #   in Loop: Header=BB11_5 Depth=1
	addiw	s2, s2, 1
	slli	a0, s2, 3
	add	a0, s3, a0
	ld	a0, 0(a0)
	li	a2, 10
	li	a1, 0
	call	strtol
	sd	a0, 232(sp)                     # 8-byte Folded Spill
	j	.LBB11_3
.LBB11_12:                              #   in Loop: Header=BB11_5 Depth=1
	addiw	s2, s2, 1
	slli	a0, s2, 3
	add	a0, s3, a0
	ld	a0, 0(a0)
	li	a2, 10
	li	a1, 0
	call	strtol
	sd	a0, 48(sp)                      # 8-byte Folded Spill
	j	.LBB11_3
.LBB11_13:                              #   in Loop: Header=BB11_5 Depth=1
	addiw	s2, s2, 1
	slli	a0, s2, 3
	add	a0, s3, a0
	ld	a0, 0(a0)
	li	a2, 10
	li	a1, 0
	call	strtol
	fcvt.s.w	fs0, a0
	j	.LBB11_3
.LBB11_14:                              #   in Loop: Header=BB11_5 Depth=1
	addiw	s2, s2, 1
	slli	a0, s2, 3
	add	a0, s3, a0
	ld	a0, 0(a0)
	li	a2, 10
	li	a1, 0
	call	strtol
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	sw	a0, 68(a1)
	j	.LBB11_3
.LBB11_15:                              #   in Loop: Header=BB11_5 Depth=1
	addiw	s2, s2, 1
	slli	a0, s2, 3
	add	a0, s3, a0
	ld	a0, 0(a0)
	li	a2, 10
	li	a1, 0
	call	strtol
	sd	a0, 64(sp)                      # 8-byte Folded Spill
	j	.LBB11_3
.LBB11_16:                              #   in Loop: Header=BB11_5 Depth=1
	li	a0, 1
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	sw	a0, 36(a1)
	lui	a1, %hi(mv_outside_frame)
	sw	a0, %lo(mv_outside_frame)(a1)
	lui	a1, %hi(long_vectors)
	sw	a0, %lo(long_vectors)(a1)
	j	.LBB11_3
.LBB11_17:                              #   in Loop: Header=BB11_5 Depth=1
	addiw	s2, s2, 1
	slli	a0, s2, 3
	add	a0, s3, a0
	ld	a1, 0(a0)
	ld	a0, 112(sp)                     # 8-byte Folded Reload
	call	strcpy
	j	.LBB11_3
.LBB11_18:                              #   in Loop: Header=BB11_5 Depth=1
	addiw	s2, s2, 1
	slli	a0, s2, 3
	add	a0, s3, a0
	ld	a0, 0(a0)
	li	a2, 10
	li	a1, 0
	call	strtol
	lui	a1, %hi(headerlength)
	sw	a0, %lo(headerlength)(a1)
	j	.LBB11_3
.LBB11_19:                              #   in Loop: Header=BB11_5 Depth=1
	lui	a0, %hi(syntax_arith_coding)
	li	a1, 1
	sw	a1, %lo(syntax_arith_coding)(a0)
	j	.LBB11_3
.LBB11_20:                              #   in Loop: Header=BB11_5 Depth=1
	addiw	s2, s2, 1
	slli	a0, s2, 3
	add	a0, s3, a0
	ld	a0, 0(a0)
	li	a2, 10
	li	a1, 0
	call	strtol
	addiw	s11, a0, 1
	j	.LBB11_3
.LBB11_21:                              #   in Loop: Header=BB11_5 Depth=1
	addiw	s2, s2, 1
	slli	a0, s2, 3
	add	a0, s3, a0
	ld	a0, 0(a0)
	li	a2, 10
	li	a1, 0
	call	strtol
	mv	s9, a0
	sext.w	s7, a0
	li	a0, 32
	bltu	s7, a0, .LBB11_3
# %bb.22:                               #   in Loop: Header=BB11_5 Depth=1
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.6)
	addi	a0, a0, %lo(.L.str.6)
	li	a1, 30
	li	a2, 1
	call	fwrite
	sgtz	a0, s7
	neg	a0, a0
	and	s9, a0, s7
	li	a0, 31
	blt	s9, a0, .LBB11_3
# %bb.23:                               #   in Loop: Header=BB11_5 Depth=1
	li	s9, 31
	j	.LBB11_3
.LBB11_24:                              #   in Loop: Header=BB11_5 Depth=1
	addiw	s2, s2, 1
	slli	a0, s2, 3
	add	a0, s3, a0
	ld	a0, 0(a0)
	li	a2, 10
	li	a1, 0
	call	strtol
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	sw	a0, 60(a1)
	j	.LBB11_3
.LBB11_25:                              #   in Loop: Header=BB11_5 Depth=1
	lui	a0, %hi(advanced)
	li	a1, 1
	sw	a1, %lo(advanced)(a0)
	lui	a0, %hi(mv_outside_frame)
	sw	a1, %lo(mv_outside_frame)(a0)
	j	.LBB11_3
.LBB11_26:                              #   in Loop: Header=BB11_5 Depth=1
	addiw	s2, s2, 1
	slli	a0, s2, 3
	add	a0, s3, a0
	ld	a0, 0(a0)
	li	a2, 10
	li	a1, 0
	call	strtol
	mv	s1, a0
	sext.w	s7, a0
	li	a0, 32
	bltu	s7, a0, .LBB11_3
# %bb.27:                               #   in Loop: Header=BB11_5 Depth=1
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.6)
	addi	a0, a0, %lo(.L.str.6)
	li	a1, 30
	li	a2, 1
	call	fwrite
	sgtz	a0, s7
	neg	a0, a0
	and	a1, a0, s7
	li	a0, 31
	mv	s1, a1
	blt	a1, a0, .LBB11_3
# %bb.28:                               #   in Loop: Header=BB11_5 Depth=1
	li	s1, 31
	j	.LBB11_3
.LBB11_29:                              #   in Loop: Header=BB11_5 Depth=1
	lui	a0, %hi(pb_frames)
	li	a1, 1
	sw	a1, %lo(pb_frames)(a0)
	j	.LBB11_3
.LBB11_30:                              #   in Loop: Header=BB11_5 Depth=1
	addiw	s2, s2, 1
	slli	a0, s2, 3
	add	a0, s3, a0
	ld	a0, 0(a0)
	li	a2, 10
	li	a1, 0
	call	strtol
	addi	a0, a0, 1
	sd	a0, 184(sp)                     # 8-byte Folded Spill
	j	.LBB11_3
.LBB11_31:                              #   in Loop: Header=BB11_5 Depth=1
	addiw	s2, s2, 1
	slli	a0, s2, 3
	add	a0, s3, a0
	ld	a0, 0(a0)
	li	a1, 0
	call	strtod
	fcvt.s.d	fa5, fa0
	ld	a0, 240(sp)                     # 8-byte Folded Reload
	fsw	fa5, 20(a0)
	j	.LBB11_3
.LBB11_32:                              #   in Loop: Header=BB11_5 Depth=1
	addiw	s2, s2, 1
	slli	a0, s2, 3
	add	a0, s3, a0
	ld	a1, 0(a0)
	mv	a0, s8
	call	strcpy
	j	.LBB11_3
.LBB11_33:                              #   in Loop: Header=BB11_5 Depth=1
	addiw	s2, s2, 1
	slli	a0, s2, 3
	add	a0, s3, a0
	ld	a0, 0(a0)
	li	a2, 10
	li	a1, 0
	call	strtol
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	sw	a0, 24(a1)
	j	.LBB11_3
.LBB11_34:
	li	s7, 0
	sd	zero, 136(sp)                   # 8-byte Folded Spill
	sd	zero, 128(sp)                   # 8-byte Folded Spill
	sd	zero, 232(sp)                   # 8-byte Folded Spill
	sd	zero, 64(sp)                    # 8-byte Folded Spill
	li	s10, 3
	fmv.w.x	fs0, a0
	li	s1, 10
	ld	s3, 216(sp)                     # 8-byte Folded Reload
.LBB11_35:
	lui	a0, %hi(stdout)
	ld	a3, %lo(stdout)(a0)
	lui	a0, %hi(.L.str.9)
	addi	a0, a0, %lo(.L.str.9)
	li	a1, 32
	li	a2, 1
	call	fwrite
	li	a0, 88
	li	a1, 144
	li	a2, 176
.LBB11_36:
	lui	a3, %hi(pels)
	sw	a2, %lo(pels)(a3)
	ld	a2, 112(sp)                     # 8-byte Folded Reload
	lbu	a2, 0(a2)
	lui	a3, %hi(lines)
	sw	a1, %lo(lines)(a3)
	lui	a1, %hi(cpels)
	sw	a0, %lo(cpels)(a1)
	bnez	a2, .LBB11_37
	j	.LBB11_141
.LBB11_37:
	sw	s7, 12(s6)
	ld	a0, 184(sp)                     # 8-byte Folded Reload
	fcvt.s.w	fs1, a0
	fdiv.s	fs2, fs0, fs1
	fcvt.w.s	s0, fs2, rtz
	sw	s0, 16(s6)
	call	InitializeRateControl
	sd	s1, 224(sp)                     # 8-byte Folded Spill
	sext.w	a0, s1
	sext.w	s1, s9
	beqz	a0, .LBB11_39
# %bb.38:
	bnez	s1, .LBB11_40
.LBB11_39:
	lui	s2, %hi(stderr)
	ld	a3, %lo(stderr)(s2)
	lui	a0, %hi(.L.str.15)
	addi	a0, a0, %lo(.L.str.15)
	li	a1, 8
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s2)
	lui	a0, %hi(.L.str.16)
	addi	a0, a0, %lo(.L.str.16)
	li	a1, 54
	li	a2, 1
	call	fwrite
.LBB11_40:
	lui	a0, 269440
	fmv.w.x	fa5, a0
	feq.s	a0, fs0, fa5
	bnez	a0, .LBB11_43
# %bb.41:
	lui	a0, 270080
	fmv.w.x	fa5, a0
	feq.s	a0, fs0, fa5
	bnez	a0, .LBB11_43
# %bb.42:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.17)
	addi	a0, a0, %lo(.L.str.17)
	li	a1, 53
	li	a2, 1
	call	fwrite
.LBB11_43:
	lw	a0, 12(s6)
	fcvt.d.s	fs3, fs0
	bnez	a0, .LBB11_48
# %bb.44:
	ld	a0, 184(sp)                     # 8-byte Folded Reload
	mul	a0, a0, s10
	fcvt.s.w	fa5, a0
	lui	a0, %hi(stdout)
	ld	a0, %lo(stdout)(a0)
	fdiv.s	fa5, fs0, fa5
	fcvt.d.s	fa5, fa5
	fmv.x.d	a2, fa5
	lui	a1, %hi(.L.str.18)
	addi	a1, a1, %lo(.L.str.18)
	call	fprintf
	j	.LBB11_49
.LBB11_45:
	ld	s6, 240(sp)                     # 8-byte Folded Reload
	lw	a0, 24(s6)
	addi	a0, a0, -1
	li	a1, 4
	bgeu	a1, a0, .LBB11_46
	j	.LBB11_149
.LBB11_46:
	slli	a0, a0, 2
	lui	a1, %hi(.LJTI11_1)
	addi	a1, a1, %lo(.LJTI11_1)
	add	a0, a0, a1
	lw	a0, 0(a0)
	ld	s3, 216(sp)                     # 8-byte Folded Reload
	ld	s5, 32(sp)                      # 8-byte Folded Reload
	ld	s7, 48(sp)                      # 8-byte Folded Reload
	mv	s10, s11
	ld	s11, 40(sp)                     # 8-byte Folded Reload
	jr	a0
.LBB11_47:
	lui	a0, %hi(stdout)
	ld	a3, %lo(stdout)(a0)
	lui	a0, %hi(.L.str.8)
	addi	a0, a0, %lo(.L.str.8)
	li	a1, 32
	li	a2, 1
	call	fwrite
	li	a0, 64
	li	a1, 96
	li	a2, 128
	j	.LBB11_36
.LBB11_48:
	lui	a0, %hi(stdout)
	ld	a3, %lo(stdout)(a0)
	lui	a0, %hi(.L.str.19)
	addi	a0, a0, %lo(.L.str.19)
	li	a1, 32
	li	a2, 1
	call	fwrite
.LBB11_49:
	lui	s2, %hi(stdout)
	ld	a0, %lo(stdout)(s2)
	fmv.x.d	a2, fs3
	lui	a1, %hi(.L.str.20)
	addi	a1, a1, %lo(.L.str.20)
	call	fprintf
	ld	a0, %lo(stdout)(s2)
	fcvt.d.s	fa5, fs2
	fmv.x.d	a2, fa5
	lui	a1, %hi(.L.str.21)
	addi	a1, a1, %lo(.L.str.21)
	call	fprintf
	lui	a1, %hi(.L.str.22)
	addi	a1, a1, %lo(.L.str.22)
	ld	s2, 56(sp)                      # 8-byte Folded Reload
	mv	a0, s2
	call	fopen
	lui	a1, %hi(streamfile)
	sd	a0, %lo(streamfile)(a1)
	bnez	s2, .LBB11_50
	j	.LBB11_142
.LBB11_50:
	call	initbits
	lui	a0, %hi(trace)
	lw	a0, %lo(trace)(a0)
	beqz	a0, .LBB11_52
# %bb.51:
	lui	a1, %hi(.L.str.24)
	addi	a1, a1, %lo(.L.str.24)
	li	a2, 12
	mv	a0, s5
	call	memcpy
	lui	a1, %hi(.L.str.25)
	addi	a1, a1, %lo(.L.str.25)
	mv	a0, s5
	call	fopen
	lui	a1, %hi(tf)
	sd	a0, %lo(tf)(a1)
	bnez	a0, .LBB11_52
	j	.LBB11_144
.LBB11_52:
	lui	a1, %hi(.L.str.22)
	addi	a1, a1, %lo(.L.str.22)
	mv	a0, s8
	call	fopen
	beqz	a0, .LBB11_143
# %bb.53:
	call	fclose
	ld	a0, 128(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB11_56
# %bb.54:
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	lui	a1, %hi(.L.str.22)
	addi	a1, a1, %lo(.L.str.22)
	call	fopen
	bnez	a0, .LBB11_55
	j	.LBB11_145
.LBB11_55:
	call	fclose
.LBB11_56:
	lui	a0, %hi(headerlength)
	lw	a2, %lo(headerlength)(a0)
	lw	a1, 64(sp)                      # 8-byte Folded Reload
	ld	a0, 112(sp)                     # 8-byte Folded Reload
	call	ReadImage
	lui	a1, %hi(stderr)
	ld	a3, %lo(stderr)(a1)
	mv	s2, a0
	lui	a0, %hi(.L.str.29)
	addi	a0, a0, %lo(.L.str.29)
	li	a1, 10
	li	a2, 1
	call	fwrite
	mv	a0, s2
	call	FillImage
	sw	zero, 28(s6)
	sw	s9, 44(s6)
	mv	s4, a0
	mv	a1, s1
	mv	a2, s3
	mv	a3, s6
	call	CodeOneIntra
	lui	s1, %hi(arith_used)
	lw	a1, %lo(arith_used)(s1)
	mv	s2, a0
	beqz	a1, .LBB11_58
# %bb.57:
	call	encoder_flush
	lw	a1, 32(s3)
	add	a0, a1, a0
	sw	a0, 32(s3)
	sw	zero, %lo(arith_used)(s1)
.LBB11_58:
	call	alignbits
	lw	a1, 32(s3)
	lui	s1, %hi(stdout)
	ld	a3, %lo(stdout)(s1)
	add	a0, a1, a0
	sw	a0, 32(s3)
	lui	a0, %hi(.L.str.30)
	addi	a0, a0, %lo(.L.str.30)
	li	a1, 15
	li	a2, 1
	call	fwrite
	mv	a0, s4
	mv	a1, s2
	ld	s9, 120(sp)                     # 8-byte Folded Reload
	mv	a2, s9
	ld	a3, 128(sp)                     # 8-byte Folded Reload
	call	ComputeSNR
	mv	a0, s3
	call	AddBitsPicture
	flw	fa5, 0(s9)
	ld	a0, %lo(stdout)(s1)
	fcvt.d.s	fa5, fa5
	fmv.x.d	a2, fa5
	lui	a1, %hi(.L.str.108)
	addi	a1, a1, %lo(.L.str.108)
	call	fprintf
	flw	fa5, 8(s9)
	ld	a0, %lo(stdout)(s1)
	fcvt.d.s	fa5, fa5
	fmv.x.d	a2, fa5
	lui	a1, %hi(.L.str.109)
	addi	a1, a1, %lo(.L.str.109)
	call	fprintf
	flw	fa5, 4(s9)
	ld	a0, %lo(stdout)(s1)
	fcvt.d.s	fa5, fa5
	fmv.x.d	a2, fa5
	lui	a1, %hi(.L.str.110)
	addi	a1, a1, %lo(.L.str.110)
	call	fprintf
	ld	a3, %lo(stdout)(s1)
	lui	a0, %hi(.L.str.44)
	addi	a0, a0, %lo(.L.str.44)
	li	a1, 15
	li	a2, 1
	call	fwrite
	li	a1, 1
	li	a2, 1
	mv	a0, s3
	call	PrintResult
	li	a2, 56
	mv	a0, s11
	mv	a1, s3
	call	memcpy
	ld	a0, 96(sp)                      # 8-byte Folded Reload
	call	ZeroBits
	ld	a0, 88(sp)                      # 8-byte Folded Reload
	call	ZeroRes
	ld	a0, 72(sp)                      # 8-byte Folded Reload
	call	ZeroRes
	lui	a0, %hi(trace)
	lw	a0, %lo(trace)(a0)
	beqz	a0, .LBB11_61
# %bb.59:
	sb	zero, 5(s5)
	li	a0, 101
	sb	a0, 4(s5)
	li	a0, 99
	sb	a0, 3(s5)
	li	a0, 97
	sb	a0, 2(s5)
	li	a1, 114
	lui	s1, %hi(tf)
	ld	a0, %lo(tf)(s1)
	sb	a1, 1(s5)
	li	a1, 116
	sb	a1, 0(s5)
	call	fclose
	lui	a1, %hi(.L.str.25)
	addi	a1, a1, %lo(.L.str.25)
	mv	a0, s5
	call	fopen
	sd	a0, %lo(tf)(s1)
	bnez	a0, .LBB11_61
# %bb.60:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.32)
	addi	a0, a0, %lo(.L.str.32)
	li	a1, 37
	li	a2, 1
	call	fwrite
	li	a0, -1
	call	exit
.LBB11_61:
	lui	a0, 260096
	fcvt.s.w	fa5, s0
	lw	a1, 12(s6)
	fmv.w.x	fa4, a0
	fdiv.s	fs2, fa4, fa5
	lw	a2, 40(s11)
	fcvt.s.w	fa5, a1
	fmul.s	fa5, fs2, fa5
	fcvt.w.s	a0, fa5, rtz
	subw	s3, a2, a0
	bnez	a1, .LBB11_63
# %bb.62:
	mv	s1, s10
	ld	s0, 224(sp)                     # 8-byte Folded Reload
	j	.LBB11_65
.LBB11_63:
	ld	s0, 224(sp)                     # 8-byte Folded Reload
	li	s1, 1
	blt	s3, a0, .LBB11_67
.LBB11_64:                              # =>This Inner Loop Header: Depth=1
	subw	s3, s3, a0
	addiw	s1, s1, 1
	bge	s3, a0, .LBB11_64
.LBB11_65:
	li	a0, 257
	blt	s1, a0, .LBB11_67
# %bb.66:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.33)
	addi	a0, a0, %lo(.L.str.33)
	li	a1, 25
	li	a2, 1
	call	fwrite
.LBB11_67:
	lui	a0, %hi(pb_frames)
	lw	a0, %lo(pb_frames)(a0)
	li	a1, 1
	sw	a1, 28(s6)
	sw	s0, 44(s6)
	bnez	a0, .LBB11_69
# %bb.68:
	sd	zero, 200(sp)                   # 8-byte Folded Spill
	mv	s0, s10
	ld	a0, 136(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB11_70
	j	.LBB11_71
.LBB11_69:
	sw	zero, 40(s6)
	sd	s10, 200(sp)                    # 8-byte Folded Spill
	mv	s0, s10
	ld	a0, 136(sp)                     # 8-byte Folded Reload
	bnez	a0, .LBB11_71
.LBB11_70:
	li	s0, 1
.LBB11_71:
	blez	s0, .LBB11_73
.LBB11_72:                              # =>This Inner Loop Header: Depth=1
	mv	a0, s2
	mv	a1, s8
	call	WriteImage
	addiw	s0, s0, -1
	bnez	s0, .LBB11_72
.LBB11_73:
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	addw	s5, s1, a0
	lw	a1, 232(sp)                     # 8-byte Folded Reload
	sd	s7, 48(sp)                      # 8-byte Folded Spill
	sext.w	a0, s7
	sd	a0, 80(sp)                      # 8-byte Folded Spill
	sd	a1, 104(sp)                     # 8-byte Folded Spill
	sd	s10, 16(sp)                     # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	bge	a1, s5, .LBB11_86
# %bb.74:
	sd	zero, 160(sp)                   # 8-byte Folded Spill
	li	s9, 0
	sd	zero, 168(sp)                   # 8-byte Folded Spill
	mv	s1, s4
.LBB11_75:
	mv	s11, s1
	lui	a0, %hi(streamfile)
	ld	a0, %lo(streamfile)(a0)
	call	fclose
	lui	a0, %hi(trace)
	lw	a0, %lo(trace)(a0)
	beqz	a0, .LBB11_77
# %bb.76:
	lui	a0, %hi(tf)
	ld	a0, %lo(tf)(a0)
	call	fclose
.LBB11_77:
	lui	s0, %hi(stdout)
	ld	a3, %lo(stdout)(s0)
	lui	a0, %hi(.L.str.41)
	addi	a0, a0, %lo(.L.str.41)
	li	a1, 17
	li	a2, 1
	call	fwrite
	ld	a0, %lo(stdout)(s0)
	lui	a1, %hi(.L.str.42)
	addi	a1, a1, %lo(.L.str.42)
	ld	s4, 168(sp)                     # 8-byte Folded Reload
	mv	a2, s4
	ld	a3, 112(sp)                     # 8-byte Folded Reload
	call	fprintf
	ld	s7, 216(sp)                     # 8-byte Folded Reload
	ld	s10, 40(sp)                     # 8-byte Folded Reload
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	beqz	s4, .LBB11_137
# %bb.78:
	subw	s0, s5, a0
	subw	s1, s0, a1
	ld	a0, 136(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB11_80
# %bb.79:
	lui	a0, %hi(stdout)
	ld	a0, %lo(stdout)(a0)
	lui	a1, %hi(.L.str.43)
	addi	a1, a1, %lo(.L.str.43)
	mv	a2, s1
	ld	a3, 16(sp)                      # 8-byte Folded Reload
	call	fprintf
.LBB11_80:
	lui	s3, %hi(stdout)
	ld	a3, %lo(stdout)(s3)
	lui	a0, %hi(.L.str.44)
	addi	a0, a0, %lo(.L.str.44)
	li	a1, 15
	li	a2, 1
	call	fwrite
	lui	a0, %hi(pb_frames)
	lw	a0, %lo(pb_frames)(a0)
	beqz	a0, .LBB11_83
# %bb.81:
	beqz	s9, .LBB11_83
# %bb.82:
	lui	s4, %hi(stdout)
	ld	a0, %lo(stdout)(s4)
	lui	a1, %hi(.L.str.45)
	addi	a1, a1, %lo(.L.str.45)
	mv	a2, s9
	call	fprintf
	ld	s5, 72(sp)                      # 8-byte Folded Reload
	flw	fa5, 0(s5)
	ld	a0, %lo(stdout)(s4)
	fcvt.s.wu	fs2, s9
	fdiv.s	fa5, fa5, fs2
	fcvt.d.s	fa5, fa5
	fmv.x.d	a2, fa5
	lui	a1, %hi(.L.str.108)
	addi	a1, a1, %lo(.L.str.108)
	call	fprintf
	flw	fa5, 8(s5)
	ld	a0, %lo(stdout)(s4)
	fdiv.s	fa5, fa5, fs2
	fcvt.d.s	fa5, fa5
	fmv.x.d	a2, fa5
	lui	a1, %hi(.L.str.109)
	addi	a1, a1, %lo(.L.str.109)
	call	fprintf
	flw	fa5, 4(s5)
	ld	a0, %lo(stdout)(s4)
	fdiv.s	fa5, fa5, fs2
	fcvt.d.s	fa5, fa5
	fmv.x.d	a2, fa5
	lui	a1, %hi(.L.str.110)
	addi	a1, a1, %lo(.L.str.110)
	call	fprintf
	ld	a3, %lo(stdout)(s4)
	ld	s4, 168(sp)                     # 8-byte Folded Reload
	lui	a0, %hi(.L.str.44)
	addi	a0, a0, %lo(.L.str.44)
	li	a1, 15
	li	a2, 1
	call	fwrite
.LBB11_83:
	ld	a0, %lo(stdout)(s3)
	lui	a1, %hi(.L.str.46)
	addi	a1, a1, %lo(.L.str.46)
	ld	s5, 160(sp)                     # 8-byte Folded Reload
	mv	a2, s5
	call	fprintf
	ld	s9, 88(sp)                      # 8-byte Folded Reload
	flw	fa5, 0(s9)
	ld	a0, %lo(stdout)(s3)
	fcvt.s.wu	fs2, s5
	fdiv.s	fa5, fa5, fs2
	fcvt.d.s	fa5, fa5
	fmv.x.d	a2, fa5
	lui	a1, %hi(.L.str.108)
	addi	a1, a1, %lo(.L.str.108)
	call	fprintf
	flw	fa5, 8(s9)
	ld	a0, %lo(stdout)(s3)
	fdiv.s	fa5, fa5, fs2
	fcvt.d.s	fa5, fa5
	fmv.x.d	a2, fa5
	lui	a1, %hi(.L.str.109)
	addi	a1, a1, %lo(.L.str.109)
	call	fprintf
	flw	fa5, 4(s9)
	ld	a0, %lo(stdout)(s3)
	fdiv.s	fa5, fa5, fs2
	fcvt.d.s	fa5, fa5
	fmv.x.d	a2, fa5
	lui	a1, %hi(.L.str.110)
	addi	a1, a1, %lo(.L.str.110)
	call	fprintf
	ld	a3, %lo(stdout)(s3)
	lui	a0, %hi(.L.str.44)
	addi	a0, a0, %lo(.L.str.44)
	li	a1, 15
	li	a2, 1
	call	fwrite
	ld	a0, 96(sp)                      # 8-byte Folded Reload
	mv	a1, s5
	mv	a2, s4
	call	PrintResult
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	bnez	a0, .LBB11_133
# %bb.84:
	lw	a0, 12(s6)
	bnez	a0, .LBB11_133
# %bb.85:
	fcvt.s.w	fs3, s1
	j	.LBB11_134
.LBB11_86:
	li	s11, 0
	sd	zero, 192(sp)                   # 8-byte Folded Spill
	li	a1, 0
	sd	zero, 168(sp)                   # 8-byte Folded Spill
	li	s9, 0
	sd	zero, 160(sp)                   # 8-byte Folded Spill
	lui	s0, %hi(stdout)
	sd	s4, 224(sp)                     # 8-byte Folded Spill
	sd	s2, 208(sp)                     # 8-byte Folded Spill
	li	a0, 1
	sd	a0, 232(sp)                     # 8-byte Folded Spill
	mv	s7, s1
	sd	s10, 176(sp)                    # 8-byte Folded Spill
	j	.LBB11_88
.LBB11_87:                              #   in Loop: Header=BB11_88 Depth=1
	snez	a0, s6
	ld	a1, 168(sp)                     # 8-byte Folded Reload
	add	a1, a0, a1
	addiw	a1, a1, 1
	sd	a1, 168(sp)                     # 8-byte Folded Spill
	addw	s9, s9, a0
	ld	a0, 160(sp)                     # 8-byte Folded Reload
	addiw	a0, a0, 1
	sd	a0, 160(sp)                     # 8-byte Folded Spill
	mv	a0, s1
	mv	a1, s2
	ld	s6, 120(sp)                     # 8-byte Folded Reload
	mv	a2, s6
	ld	a3, 128(sp)                     # 8-byte Folded Reload
	call	ComputeSNR
	ld	a3, %lo(stdout)(s0)
	li	a1, 21
	li	a2, 1
	lui	a0, %hi(.L.str.40)
	addi	a0, a0, %lo(.L.str.40)
	call	fwrite
	ld	a0, 88(sp)                      # 8-byte Folded Reload
	mv	a1, s6
	mv	a2, s10
	call	AddRes
	flw	fa5, 0(s6)
	ld	a0, %lo(stdout)(s0)
	fcvt.d.s	fa5, fa5
	fmv.x.d	a2, fa5
	lui	a1, %hi(.L.str.108)
	addi	a1, a1, %lo(.L.str.108)
	call	fprintf
	flw	fa5, 8(s6)
	ld	a0, %lo(stdout)(s0)
	fcvt.d.s	fa5, fa5
	fmv.x.d	a2, fa5
	lui	a1, %hi(.L.str.109)
	addi	a1, a1, %lo(.L.str.109)
	call	fprintf
	flw	fa5, 4(s6)
	ld	a0, %lo(stdout)(s0)
	fcvt.d.s	fa5, fa5
	fmv.x.d	a2, fa5
	lui	a1, %hi(.L.str.110)
	addi	a1, a1, %lo(.L.str.110)
	call	fprintf
	ld	a3, %lo(stdout)(s0)
	li	a1, 15
	li	a2, 1
	lui	a0, %hi(.L.str.44)
	addi	a0, a0, %lo(.L.str.44)
	call	fwrite
	li	a1, 1
	li	a2, 1
	ld	a0, 216(sp)                     # 8-byte Folded Reload
	call	PrintResult
	ld	a0, 224(sp)                     # 8-byte Folded Reload
	call	FreeImage
	ld	a0, 208(sp)                     # 8-byte Folded Reload
	call	FreeImage
	ld	a0, %lo(stdout)(s0)
	call	fflush
	addw	s5, s7, s5
	sd	s1, 224(sp)                     # 8-byte Folded Spill
	sd	s2, 208(sp)                     # 8-byte Folded Spill
	mv	s6, s10
	ld	a0, 104(sp)                     # 8-byte Folded Reload
	ld	a1, 144(sp)                     # 8-byte Folded Reload
	blt	a0, s5, .LBB11_75
.LBB11_88:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_115 Depth 2
                                        #     Child Loop BB11_121 Depth 2
                                        #     Child Loop BB11_130 Depth 2
	sd	s9, 152(sp)                     # 8-byte Folded Spill
	lw	s10, 44(s6)
	bnez	a1, .LBB11_99
# %bb.89:                               #   in Loop: Header=BB11_88 Depth=1
	lw	a0, 40(s6)
	mv	a1, s5
	ld	s9, 200(sp)                     # 8-byte Folded Reload
	lui	s2, %hi(pels)
	beqz	a0, .LBB11_95
# %bb.90:                               #   in Loop: Header=BB11_88 Depth=1
	ld	a0, 184(sp)                     # 8-byte Folded Reload
	mulw	a0, s7, a0
	sw	a0, 72(s6)
	li	a1, 9
	blt	a0, a1, .LBB11_92
# %bb.91:                               #   in Loop: Header=BB11_88 Depth=1
	ld	a3, %lo(stdout)(s0)
	li	a1, 31
	li	a2, 1
	lui	a0, %hi(.L.str.34)
	addi	a0, a0, %lo(.L.str.34)
	call	fwrite
.LBB11_92:                              #   in Loop: Header=BB11_88 Depth=1
	lui	a0, %hi(headerlength)
	lw	a2, %lo(headerlength)(a0)
	ld	a0, 112(sp)                     # 8-byte Folded Reload
	mv	a1, s5
	call	ReadImage
	call	FillImage
	addw	a1, s7, s5
	sd	a0, 192(sp)                     # 8-byte Folded Spill
	ld	a0, 104(sp)                     # 8-byte Folded Reload
	bge	a0, a1, .LBB11_94
# %bb.93:                               #   in Loop: Header=BB11_88 Depth=1
	sw	zero, 40(s6)
	mv	a1, s5
.LBB11_94:                              #   in Loop: Header=BB11_88 Depth=1
	sd	s7, 176(sp)                     # 8-byte Folded Spill
	mv	s9, s7
.LBB11_95:                              #   in Loop: Header=BB11_88 Depth=1
	lui	a0, %hi(headerlength)
	lw	a2, %lo(headerlength)(a0)
	ld	a0, 112(sp)                     # 8-byte Folded Reload
	call	ReadImage
	call	FillImage
	lw	a1, 40(s6)
	mv	s1, a0
	beqz	a1, .LBB11_101
# %bb.96:                               #   in Loop: Header=BB11_88 Depth=1
	lw	a0, 72(s6)
	li	a1, 8
	blt	a1, a0, .LBB11_100
# %bb.97:                               #   in Loop: Header=BB11_88 Depth=1
	lw	a5, 56(s6)
	mv	a0, s1
	ld	a1, 192(sp)                     # 8-byte Folded Reload
	ld	a2, 224(sp)                     # 8-byte Folded Reload
	ld	a3, 176(sp)                     # 8-byte Folded Reload
	mv	a4, s9
	call	NextTwoPB
	beqz	a0, .LBB11_100
# %bb.98:                               #   in Loop: Header=BB11_88 Depth=1
	sd	zero, 144(sp)                   # 8-byte Folded Spill
	addw	s5, s9, s5
	j	.LBB11_102
.LBB11_99:                              #   in Loop: Header=BB11_88 Depth=1
	lui	a0, %hi(headerlength)
	lw	a2, %lo(headerlength)(a0)
	ld	a0, 112(sp)                     # 8-byte Folded Reload
	mv	a1, s5
	call	ReadImage
	call	FillImage
	mv	s1, a0
	sd	zero, 144(sp)                   # 8-byte Folded Spill
	sw	zero, 40(s6)
	ld	s9, 200(sp)                     # 8-byte Folded Reload
	lui	s2, %hi(pels)
	j	.LBB11_102
.LBB11_100:                             #   in Loop: Header=BB11_88 Depth=1
	sw	zero, 40(s6)
	mv	a0, s1
	call	FreeImage
	li	a0, 1
	sd	a0, 144(sp)                     # 8-byte Folded Spill
	ld	s7, 176(sp)                     # 8-byte Folded Reload
	ld	s1, 192(sp)                     # 8-byte Folded Reload
	j	.LBB11_102
.LBB11_101:                             #   in Loop: Header=BB11_88 Depth=1
	sd	zero, 144(sp)                   # 8-byte Folded Spill
.LBB11_102:                             #   in Loop: Header=BB11_88 Depth=1
	lui	a5, %hi(lines)
	mv	a4, s6
	lw	s6, 40(s6)
	seqz	a0, s6
	addi	a0, a0, -1
	and	a0, a0, s9
	addw	a0, a0, s7
	ld	a1, 184(sp)                     # 8-byte Folded Reload
	mul	a1, a0, a1
	sraiw	a2, a1, 31
	lw	a3, 8(a4)
	srliw	a2, a2, 24
	add	a2, a1, a2
	andi	a2, a2, -256
	add	a1, a1, a3
	subw	a1, a1, a2
	sw	a1, 8(a4)
	li	a1, 257
	blt	a0, a1, .LBB11_104
# %bb.103:                              #   in Loop: Header=BB11_88 Depth=1
	ld	a3, %lo(stdout)(s0)
	li	a1, 25
	li	a2, 1
	lui	a0, %hi(.L.str.33)
	addi	a0, a0, %lo(.L.str.33)
	call	fwrite
	lui	a5, %hi(lines)
	ld	a0, 240(sp)                     # 8-byte Folded Reload
	lw	s6, 40(a0)
.LBB11_104:                             #   in Loop: Header=BB11_88 Depth=1
	beqz	s6, .LBB11_106
# %bb.105:                              #   in Loop: Header=BB11_88 Depth=1
	lw	a0, %lo(pels)(s2)
	lw	a1, %lo(lines)(a5)
	mulw	a0, a1, a0
	lui	s4, %hi(lines)
	call	InitImage
	ld	a1, %lo(stdout)(s0)
	mv	s11, a0
	subw	a2, s5, s9
	mv	a0, a1
	lui	a1, %hi(.L.str.35)
	addi	a1, a1, %lo(.L.str.35)
	mv	a3, s5
	call	fprintf
	j	.LBB11_107
.LBB11_106:                             #   in Loop: Header=BB11_88 Depth=1
	ld	a0, %lo(stdout)(s0)
	lui	a1, %hi(.L.str.36)
	addi	a1, a1, %lo(.L.str.36)
	mv	a2, s5
	lui	s4, %hi(lines)
	call	fprintf
.LBB11_107:                             #   in Loop: Header=BB11_88 Depth=1
	ld	a0, %lo(stdout)(s0)
	call	fflush
	lw	a0, %lo(pels)(s2)
	lw	a1, %lo(lines)(s4)
	mulw	a0, a1, a0
	call	InitImage
	mv	s2, a0
	sd	s9, 200(sp)                     # 8-byte Folded Spill
	ld	a0, 176(sp)                     # 8-byte Folded Reload
	add	a0, s9, a0
	ld	a1, 184(sp)                     # 8-byte Folded Reload
	mulw	a5, a0, a1
	sd	s2, 8(sp)
	sd	s11, 0(sp)
	mv	a0, s1
	ld	a1, 192(sp)                     # 8-byte Folded Reload
	ld	a2, 224(sp)                     # 8-byte Folded Reload
	ld	a3, 208(sp)                     # 8-byte Folded Reload
	mv	a4, s10
	ld	a6, 216(sp)                     # 8-byte Folded Reload
	ld	a7, 240(sp)                     # 8-byte Folded Reload
	call	CodeOneOrTwo
	ld	a3, %lo(stdout)(s0)
	li	a1, 5
	li	a2, 1
	lui	a0, %hi(.L.str.37)
	addi	a0, a0, %lo(.L.str.37)
	call	fwrite
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	beqz	a0, .LBB11_109
# %bb.108:                              #   in Loop: Header=BB11_88 Depth=1
	ld	a0, %lo(stdout)(s0)
	lui	a1, %hi(.L.str.38)
	addi	a1, a1, %lo(.L.str.38)
	mv	a2, s10
	call	fprintf
.LBB11_109:                             #   in Loop: Header=BB11_88 Depth=1
	ld	a0, %lo(stdout)(s0)
	call	fflush
	lui	s4, %hi(arith_used)
	lw	a0, %lo(arith_used)(s4)
	ld	s10, 216(sp)                    # 8-byte Folded Reload
	ld	s9, 152(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB11_111
# %bb.110:                              #   in Loop: Header=BB11_88 Depth=1
	call	encoder_flush
	lw	a1, 32(s10)
	add	a0, a1, a0
	sw	a0, 32(s10)
	sw	zero, %lo(arith_used)(s4)
.LBB11_111:                             #   in Loop: Header=BB11_88 Depth=1
	call	alignbits
	lw	a1, 32(s10)
	add	a0, a1, a0
	sw	a0, 32(s10)
	mv	a0, s10
	call	AddBitsPicture
	ld	a0, 96(sp)                      # 8-byte Folded Reload
	mv	a1, s10
	call	AddBits
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	lw	a0, 12(a1)
	beqz	a0, .LBB11_116
# %bb.112:                              #   in Loop: Header=BB11_88 Depth=1
	lw	a1, 40(a1)
	beqz	a1, .LBB11_114
# %bb.113:                              #   in Loop: Header=BB11_88 Depth=1
	fcvt.s.w	fa5, a0
	fmul.s	fa5, fs2, fa5
	fcvt.w.s	a0, fa5, rtz
	ld	a1, 200(sp)                     # 8-byte Folded Reload
	mul	a0, a1, a0
	subw	s3, s3, a0
.LBB11_114:                             #   in Loop: Header=BB11_88 Depth=1
	lw	a0, 40(s10)
	call	UpdateRateControl
	lw	a0, 40(s10)
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	lw	a1, 12(a1)
	li	s7, 0
	add	s3, a0, s3
	fcvt.s.w	fa5, a1
	fmul.s	fa5, fs2, fa5
	fcvt.w.s	a0, fa5, rtz
.LBB11_115:                             #   Parent Loop BB11_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	subw	s3, s3, a0
	addiw	s7, s7, 1
	bge	s3, a0, .LBB11_115
.LBB11_116:                             #   in Loop: Header=BB11_88 Depth=1
	ld	a0, 240(sp)                     # 8-byte Folded Reload
	lw	a0, 40(a0)
	beqz	a0, .LBB11_123
# %bb.117:                              #   in Loop: Header=BB11_88 Depth=1
	ld	a0, 136(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB11_119
# %bb.118:                              #   in Loop: Header=BB11_88 Depth=1
	ld	a0, 200(sp)                     # 8-byte Folded Reload
	sd	a0, 232(sp)                     # 8-byte Folded Spill
.LBB11_119:                             #   in Loop: Header=BB11_88 Depth=1
	ld	a0, 232(sp)                     # 8-byte Folded Reload
	blez	a0, .LBB11_122
# %bb.120:                              # %.preheader1
                                        #   in Loop: Header=BB11_88 Depth=1
	ld	s10, 232(sp)                    # 8-byte Folded Reload
.LBB11_121:                             #   Parent Loop BB11_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mv	a0, s11
	mv	a1, s8
	call	WriteImage
	addiw	s10, s10, -1
	bnez	s10, .LBB11_121
.LBB11_122:                             #   in Loop: Header=BB11_88 Depth=1
	ld	s4, 192(sp)                     # 8-byte Folded Reload
	mv	a0, s4
	mv	a1, s11
	ld	s10, 120(sp)                    # 8-byte Folded Reload
	mv	a2, s10
	ld	a3, 128(sp)                     # 8-byte Folded Reload
	call	ComputeSNR
	ld	a3, %lo(stdout)(s0)
	li	a1, 21
	li	a2, 1
	lui	a0, %hi(.L.str.39)
	addi	a0, a0, %lo(.L.str.39)
	call	fwrite
	ld	a0, 72(sp)                      # 8-byte Folded Reload
	mv	a1, s10
	ld	a2, 240(sp)                     # 8-byte Folded Reload
	call	AddRes
	flw	fa5, 0(s10)
	ld	a0, %lo(stdout)(s0)
	fcvt.d.s	fa5, fa5
	fmv.x.d	a2, fa5
	lui	a1, %hi(.L.str.108)
	addi	a1, a1, %lo(.L.str.108)
	call	fprintf
	flw	fa5, 8(s10)
	ld	a0, %lo(stdout)(s0)
	fcvt.d.s	fa5, fa5
	fmv.x.d	a2, fa5
	lui	a1, %hi(.L.str.109)
	addi	a1, a1, %lo(.L.str.109)
	call	fprintf
	flw	fa5, 4(s10)
	ld	a0, %lo(stdout)(s0)
	fcvt.d.s	fa5, fa5
	fmv.x.d	a2, fa5
	lui	a1, %hi(.L.str.110)
	addi	a1, a1, %lo(.L.str.110)
	call	fprintf
	ld	a3, %lo(stdout)(s0)
	li	a1, 15
	li	a2, 1
	lui	a0, %hi(.L.str.44)
	addi	a0, a0, %lo(.L.str.44)
	call	fwrite
	mv	a0, s4
	call	FreeImage
	mv	a0, s11
	call	FreeImage
.LBB11_123:                             #   in Loop: Header=BB11_88 Depth=1
	lui	a0, %hi(pb_frames)
	lw	a0, %lo(pb_frames)(a0)
	mv	a1, s7
	bnez	a0, .LBB11_127
# %bb.124:                              #   in Loop: Header=BB11_88 Depth=1
	ld	a2, 136(sp)                     # 8-byte Folded Reload
	bnez	a2, .LBB11_128
.LBB11_125:                             #   in Loop: Header=BB11_88 Depth=1
	ld	a1, 232(sp)                     # 8-byte Folded Reload
	bgtz	a1, .LBB11_129
.LBB11_126:                             #   in Loop: Header=BB11_88 Depth=1
	ld	s10, 240(sp)                    # 8-byte Folded Reload
	bnez	a0, .LBB11_132
	j	.LBB11_87
.LBB11_127:                             #   in Loop: Header=BB11_88 Depth=1
	ld	a1, 176(sp)                     # 8-byte Folded Reload
	ld	a2, 136(sp)                     # 8-byte Folded Reload
	beqz	a2, .LBB11_125
.LBB11_128:                             #   in Loop: Header=BB11_88 Depth=1
	sd	a1, 232(sp)                     # 8-byte Folded Spill
	ld	a1, 232(sp)                     # 8-byte Folded Reload
	blez	a1, .LBB11_126
.LBB11_129:                             # %.preheader
                                        #   in Loop: Header=BB11_88 Depth=1
	ld	s10, 232(sp)                    # 8-byte Folded Reload
.LBB11_130:                             #   Parent Loop BB11_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mv	a0, s2
	mv	a1, s8
	call	WriteImage
	addiw	s10, s10, -1
	bnez	s10, .LBB11_130
# %bb.131:                              #   in Loop: Header=BB11_88 Depth=1
	lui	a0, %hi(pb_frames)
	lw	a0, %lo(pb_frames)(a0)
	ld	s10, 240(sp)                    # 8-byte Folded Reload
	beqz	a0, .LBB11_87
.LBB11_132:                             #   in Loop: Header=BB11_88 Depth=1
	li	a0, 1
	sw	a0, 40(s10)
	j	.LBB11_87
.LBB11_133:
	lui	a0, %hi(stdout)
	ld	a0, %lo(stdout)(a0)
	fcvt.s.w	fa5, s0
	fdiv.s	fa5, fa5, fs0
	fmul.s	fa5, fa5, fs1
	fcvt.d.s	fa5, fa5
	fcvt.s.w	fs3, s1
	fdiv.s	fa4, fs3, fs0
	fmul.s	fa4, fa4, fs1
	fcvt.d.s	fa4, fa4
	fmv.x.d	a2, fa5
	fmv.x.d	a3, fa4
	lui	a1, %hi(.L.str.47)
	addi	a1, a1, %lo(.L.str.47)
	call	fprintf
.LBB11_134:
	ld	a0, 88(sp)                      # 8-byte Folded Reload
	flw	fa5, 12(a0)
	lui	s1, %hi(stdout)
	ld	a0, %lo(stdout)(s1)
	fdiv.s	fa5, fa5, fs2
	fcvt.d.s	fa5, fa5
	fmv.x.d	a2, fa5
	lui	a1, %hi(.L.str.48)
	addi	a1, a1, %lo(.L.str.48)
	call	fprintf
	ld	a0, %lo(stdout)(s1)
	addiw	a2, s4, 1
	lui	a1, %hi(.L.str.49)
	addi	a1, a1, %lo(.L.str.49)
	mv	a3, s4
	call	fprintf
	fcvt.s.wu	fs2, s4
	fdiv.s	fa5, fs2, fs3
	fmul.s	fa5, fs0, fa5
	ld	a0, %lo(stdout)(s1)
	fdiv.s	fs3, fa5, fs1
	fcvt.d.s	fa5, fs3
	fmv.x.d	a2, fa5
	lui	a1, %hi(.L.str.50)
	addi	a1, a1, %lo(.L.str.50)
	call	fprintf
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	beqz	a0, .LBB11_136
# %bb.135:
	lui	a0, %hi(.LCPI11_0)
	fld	fa5, %lo(.LCPI11_0)(a0)
	ld	a0, %lo(stdout)(s1)
	ld	a1, 48(sp)                      # 8-byte Folded Reload
	fcvt.d.w	fa4, a1
	fdiv.d	fa5, fa4, fa5
	fmv.x.d	a2, fa5
	lui	a1, %hi(.L.str.51)
	addi	a1, a1, %lo(.L.str.51)
	call	fprintf
.LBB11_136:
	ld	a0, 96(sp)                      # 8-byte Folded Reload
	lw	a1, 40(a0)
	lw	a2, 40(s10)
	ld	a0, %lo(stdout)(s1)
	add	a2, a2, a1
	fcvt.s.w	fa5, a2
	fcvt.s.w	fa4, s0
	fdiv.s	fa4, fa4, fs0
	lui	a2, %hi(.LCPI11_0)
	fld	fa3, %lo(.LCPI11_0)(a2)
	fmul.s	fa4, fa4, fs1
	fdiv.s	fa5, fa5, fa4
	fcvt.d.s	fa5, fa5
	fdiv.d	fa5, fa5, fa3
	fcvt.s.w	fa4, a1
	fdiv.s	fa4, fa4, fs2
	fmul.s	fa4, fs3, fa4
	fcvt.d.s	fa4, fa4
	fdiv.d	fa4, fa4, fa3
	fmv.x.d	a2, fa5
	fmv.x.d	a3, fa4
	lui	a1, %hi(.L.str.52)
	addi	a1, a1, %lo(.L.str.52)
	call	fprintf
	ld	a3, %lo(stdout)(s1)
	lui	a0, %hi(.L.str.53)
	addi	a0, a0, %lo(.L.str.53)
	li	a1, 45
	li	a2, 1
	call	fwrite
.LBB11_137:
	lui	a0, %hi(.L.str.54)
	addi	a0, a0, %lo(.L.str.54)
	li	a1, 0
	li	a2, 0
	li	a3, 0
	call	printf
	lui	a0, %hi(.L.str.55)
	addi	a0, a0, %lo(.L.str.55)
	li	a1, 0
	call	printf
	lui	a0, %hi(.L.str.56)
	addi	a0, a0, %lo(.L.str.56)
	li	a1, 0
	li	a2, 0
	li	a3, 0
	li	a4, 0
	li	a5, 0
	call	printf
	mv	a0, s2
	call	FreeImage
	mv	a0, s11
	call	FreeImage
	ld	a0, 56(sp)                      # 8-byte Folded Reload
	call	free
	ld	a0, 112(sp)                     # 8-byte Folded Reload
	call	free
	mv	a0, s8
	call	free
	ld	a0, 32(sp)                      # 8-byte Folded Reload
	call	free
	mv	a0, s7
	call	free
	ld	a0, 96(sp)                      # 8-byte Folded Reload
	call	free
	mv	a0, s10
	call	free
	ld	a0, 120(sp)                     # 8-byte Folded Reload
	call	free
	ld	a0, 88(sp)                      # 8-byte Folded Reload
	call	free
	ld	a0, 72(sp)                      # 8-byte Folded Reload
	call	free
	mv	a0, s6
	call	free
	li	a0, 0
	call	exit
.LBB11_138:
	lui	a0, %hi(stdout)
	ld	a3, %lo(stdout)(a0)
	lui	a0, %hi(.L.str.12)
	addi	a0, a0, %lo(.L.str.12)
	li	a1, 35
	li	a2, 1
	call	fwrite
	li	a0, 704
	li	a1, 1152
	li	a2, 1408
	j	.LBB11_36
.LBB11_139:
	lui	a0, %hi(stdout)
	ld	a3, %lo(stdout)(a0)
	lui	a0, %hi(.L.str.10)
	addi	a0, a0, %lo(.L.str.10)
	li	a1, 31
	li	a2, 1
	call	fwrite
	li	a0, 176
	li	a1, 288
	li	a2, 352
	j	.LBB11_36
.LBB11_140:
	lui	a0, %hi(stdout)
	ld	a3, %lo(stdout)(a0)
	lui	a0, %hi(.L.str.11)
	addi	a0, a0, %lo(.L.str.11)
	li	a1, 32
	li	a2, 1
	call	fwrite
	li	a0, 352
	li	a1, 576
	li	a2, 704
	j	.LBB11_36
.LBB11_141:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.14)
	addi	a0, a0, %lo(.L.str.14)
	li	a1, 49
	li	a2, 1
	call	fwrite
	call	Help
	li	a0, -1
	call	exit
.LBB11_142:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.23)
	addi	a0, a0, %lo(.L.str.23)
	li	a1, 26
	li	a2, 1
	call	fwrite
	li	a0, -1
	call	exit
.LBB11_143:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.27)
	addi	a1, a1, %lo(.L.str.27)
	mv	a2, s8
	call	fprintf
	li	a0, -1
	call	exit
.LBB11_144:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.26)
	addi	a0, a0, %lo(.L.str.26)
	li	a1, 33
	li	a2, 1
	call	fwrite
	li	a0, -1
	call	exit
.LBB11_145:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.28)
	addi	a1, a1, %lo(.L.str.28)
	lui	a2, %hi(.L.str.1)
	addi	a2, a2, %lo(.L.str.1)
	call	fprintf
	li	a0, -1
	call	exit
.LBB11_146:
	call	AdvancedHelp
	li	a0, 0
	call	exit
.LBB11_147:
	call	Help
	li	a0, 0
	call	exit
.LBB11_148:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.7)
	addi	a1, a1, %lo(.L.str.7)
	call	fprintf
	call	Help
	li	a0, -1
	call	exit
.LBB11_149:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.13)
	addi	a0, a0, %lo(.L.str.13)
	li	a1, 22
	li	a2, 1
	call	fwrite
	li	a0, -1
	call	exit
.Lfunc_end11:
	.size	main, .Lfunc_end11-main
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI11_0:
	.word	.LBB11_8
	.word	.LBB11_148
	.word	.LBB11_16
	.word	.LBB11_19
	.word	.LBB11_25
	.word	.LBB11_29
	.word	.LBB11_146
	.word	.LBB11_21
	.word	.LBB11_148
	.word	.LBB11_148
	.word	.LBB11_148
	.word	.LBB11_148
	.word	.LBB11_148
	.word	.LBB11_30
	.word	.LBB11_148
	.word	.LBB11_14
	.word	.LBB11_31
	.word	.LBB11_20
	.word	.LBB11_148
	.word	.LBB11_148
	.word	.LBB11_148
	.word	.LBB11_148
	.word	.LBB11_148
	.word	.LBB11_148
	.word	.LBB11_13
	.word	.LBB11_148
	.word	.LBB11_148
	.word	.LBB11_148
	.word	.LBB11_148
	.word	.LBB11_148
	.word	.LBB11_148
	.word	.LBB11_15
	.word	.LBB11_11
	.word	.LBB11_148
	.word	.LBB11_148
	.word	.LBB11_18
	.word	.LBB11_148
	.word	.LBB11_24
	.word	.LBB11_147
	.word	.LBB11_17
	.word	.LBB11_148
	.word	.LBB11_148
	.word	.LBB11_148
	.word	.LBB11_4
	.word	.LBB11_148
	.word	.LBB11_32
	.word	.LBB11_148
	.word	.LBB11_26
	.word	.LBB11_12
	.word	.LBB11_9
	.word	.LBB11_2
	.word	.LBB11_148
	.word	.LBB11_148
	.word	.LBB11_10
	.word	.LBB11_33
.LJTI11_1:
	.word	.LBB11_47
	.word	.LBB11_35
	.word	.LBB11_139
	.word	.LBB11_140
	.word	.LBB11_138
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.text
	.globl	PrintSNR                        # -- Begin function PrintSNR
	.p2align	2
	.type	PrintSNR,@function
PrintSNR:                               # @PrintSNR
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	fsd	fs0, 0(sp)                      # 8-byte Folded Spill
	mv	s0, a0
	flw	fa5, 0(a0)
	lui	s1, %hi(stdout)
	ld	a0, %lo(stdout)(s1)
	fcvt.s.w	fs0, a1
	fdiv.s	fa5, fa5, fs0
	fcvt.d.s	fa5, fa5
	fmv.x.d	a2, fa5
	lui	a1, %hi(.L.str.108)
	addi	a1, a1, %lo(.L.str.108)
	call	fprintf
	flw	fa5, 8(s0)
	ld	a0, %lo(stdout)(s1)
	fdiv.s	fa5, fa5, fs0
	fcvt.d.s	fa5, fa5
	fmv.x.d	a2, fa5
	lui	a1, %hi(.L.str.109)
	addi	a1, a1, %lo(.L.str.109)
	call	fprintf
	flw	fa5, 4(s0)
	ld	a0, %lo(stdout)(s1)
	fdiv.s	fa5, fa5, fs0
	fcvt.d.s	fa5, fa5
	fmv.x.d	a2, fa5
	lui	a1, %hi(.L.str.110)
	addi	a1, a1, %lo(.L.str.110)
	call	fprintf
	ld	a3, %lo(stdout)(s1)
	lui	a0, %hi(.L.str.44)
	addi	a0, a0, %lo(.L.str.44)
	li	a1, 15
	li	a2, 1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	fld	fs0, 0(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	tail	fwrite
.Lfunc_end12:
	.size	PrintSNR, .Lfunc_end12-PrintSNR
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	PrintResult                     # -- Begin function PrintResult
	.p2align	2
	.type	PrintResult,@function
PrintResult:                            # @PrintResult
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	lui	s3, %hi(stdout)
	lw	a3, 52(a0)
	ld	a0, %lo(stdout)(s3)
	mv	s1, a2
	mv	s2, a1
	divw	a2, a3, a1
	lui	a1, %hi(.L.str.92)
	addi	a1, a1, %lo(.L.str.92)
	call	fprintf
	lw	a1, 44(s0)
	ld	a0, %lo(stdout)(s3)
	divw	a2, a1, s2
	lui	a1, %hi(.L.str.93)
	addi	a1, a1, %lo(.L.str.93)
	call	fprintf
	lw	a1, 48(s0)
	ld	a0, %lo(stdout)(s3)
	divw	a2, a1, s2
	lui	a1, %hi(.L.str.94)
	addi	a1, a1, %lo(.L.str.94)
	call	fprintf
	ld	a3, %lo(stdout)(s3)
	lui	a0, %hi(.L.str.44)
	addi	a0, a0, %lo(.L.str.44)
	li	a1, 15
	li	a2, 1
	call	fwrite
	lw	a1, 0(s0)
	ld	a0, %lo(stdout)(s3)
	divw	a2, a1, s1
	lui	a1, %hi(.L.str.95)
	addi	a1, a1, %lo(.L.str.95)
	call	fprintf
	lw	a1, 4(s0)
	ld	a0, %lo(stdout)(s3)
	divw	a2, a1, s1
	lui	a1, %hi(.L.str.96)
	addi	a1, a1, %lo(.L.str.96)
	call	fprintf
	lw	a1, 8(s0)
	ld	a0, %lo(stdout)(s3)
	divw	a2, a1, s1
	lui	a1, %hi(.L.str.97)
	addi	a1, a1, %lo(.L.str.97)
	call	fprintf
	lw	a1, 12(s0)
	ld	a0, %lo(stdout)(s3)
	divw	a2, a1, s1
	lui	a1, %hi(.L.str.98)
	addi	a1, a1, %lo(.L.str.98)
	call	fprintf
	lw	a1, 16(s0)
	ld	a0, %lo(stdout)(s3)
	divw	a2, a1, s1
	lui	a1, %hi(.L.str.99)
	addi	a1, a1, %lo(.L.str.99)
	call	fprintf
	lw	a1, 20(s0)
	ld	a0, %lo(stdout)(s3)
	divw	a2, a1, s1
	lui	a1, %hi(.L.str.100)
	addi	a1, a1, %lo(.L.str.100)
	call	fprintf
	lw	a1, 24(s0)
	ld	a0, %lo(stdout)(s3)
	divw	a2, a1, s1
	lui	a1, %hi(.L.str.101)
	addi	a1, a1, %lo(.L.str.101)
	call	fprintf
	lw	a1, 28(s0)
	ld	a0, %lo(stdout)(s3)
	divw	a2, a1, s1
	lui	a1, %hi(.L.str.102)
	addi	a1, a1, %lo(.L.str.102)
	call	fprintf
	lw	a1, 36(s0)
	ld	a0, %lo(stdout)(s3)
	divw	a2, a1, s1
	lui	a1, %hi(.L.str.103)
	addi	a1, a1, %lo(.L.str.103)
	call	fprintf
	lw	a1, 32(s0)
	ld	a0, %lo(stdout)(s3)
	divw	a2, a1, s1
	lui	a1, %hi(.L.str.104)
	addi	a1, a1, %lo(.L.str.104)
	call	fprintf
	ld	a3, %lo(stdout)(s3)
	lui	a0, %hi(.L.str.105)
	addi	a0, a0, %lo(.L.str.105)
	li	a1, 15
	li	a2, 1
	call	fwrite
	lw	a1, 40(s0)
	ld	a0, %lo(stdout)(s3)
	divw	a2, a1, s1
	lui	a1, %hi(.L.str.106)
	addi	a1, a1, %lo(.L.str.106)
	call	fprintf
	ld	a1, %lo(stdout)(s3)
	li	a0, 10
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	tail	fputc
.Lfunc_end13:
	.size	PrintResult, .Lfunc_end13-PrintResult
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	NextTwoPB                       # -- Begin function NextTwoPB
	.p2align	2
	.type	NextTwoPB,@function
NextTwoPB:                              # @NextTwoPB
# %bb.0:
	addi	sp, sp, -2032
	sd	ra, 2024(sp)                    # 8-byte Folded Spill
	sd	s0, 2016(sp)                    # 8-byte Folded Spill
	sd	s1, 2008(sp)                    # 8-byte Folded Spill
	sd	s2, 2000(sp)                    # 8-byte Folded Spill
	sd	s3, 1992(sp)                    # 8-byte Folded Spill
	sd	s4, 1984(sp)                    # 8-byte Folded Spill
	sd	s5, 1976(sp)                    # 8-byte Folded Spill
	sd	s6, 1968(sp)                    # 8-byte Folded Spill
	sd	s7, 1960(sp)                    # 8-byte Folded Spill
	sd	s8, 1952(sp)                    # 8-byte Folded Spill
	sd	s9, 1944(sp)                    # 8-byte Folded Spill
	sd	s10, 1936(sp)                   # 8-byte Folded Spill
	sd	s11, 1928(sp)                   # 8-byte Folded Spill
	lui	a6, 77
	addiw	a6, a6, -1808
	sub	sp, sp, a6
	lui	a6, %hi(advanced)
	lw	a7, %lo(advanced)(a6)
	sd	a5, 136(sp)                     # 8-byte Folded Spill
	sd	a3, 104(sp)                     # 8-byte Folded Spill
	sd	a1, 128(sp)                     # 8-byte Folded Spill
	beqz	a7, .LBB14_27
# %bb.1:
	sw	zero, %lo(advanced)(a6)
	li	a6, 1
	lui	a3, %hi(mv_outside_frame)
	lw	a1, %lo(mv_outside_frame)(a3)
	beqz	a1, .LBB14_28
.LBB14_2:
	sw	zero, %lo(mv_outside_frame)(a3)
	li	a3, 1
	lui	a5, %hi(long_vectors)
	lw	a1, %lo(long_vectors)(a5)
	beqz	a1, .LBB14_4
.LBB14_3:
	sw	zero, %lo(long_vectors)(a5)
	li	a1, 1
.LBB14_4:
	lui	a5, %hi(lines)
	lw	s7, %lo(lines)(a5)
	srai	s2, s7, 4
	blez	s2, .LBB14_29
# %bb.5:
	sd	a4, 112(sp)                     # 8-byte Folded Spill
	sd	a0, 120(sp)                     # 8-byte Folded Spill
	sd	a2, 96(sp)                      # 8-byte Folded Spill
	sd	a1, 16(sp)                      # 8-byte Folded Spill
	sd	a3, 24(sp)                      # 8-byte Folded Spill
	sd	a6, 32(sp)                      # 8-byte Folded Spill
	lui	a0, 26
	lui	a1, 13
	addiw	a0, a0, -648
	lui	a2, %hi(pels)
	lw	a2, %lo(pels)(a2)
	addi	a3, sp, 152
	addiw	a1, a1, 40
	add	a0, a3, a0
	sd	a0, 40(sp)                      # 8-byte Folded Spill
	srai	a0, a2, 4
	add	a1, a3, a1
	sd	a1, 48(sp)                      # 8-byte Folded Spill
	blez	a0, .LBB14_10
# %bb.6:
	li	s0, 0
	addi	s6, sp, 880
	addi	a0, a0, 1
	addi	s2, s2, 1
	slli	a0, a0, 32
	srli	a0, a0, 29
	lui	a1, 26
	addiw	s3, a1, -656
	add	s3, a0, s3
	li	s4, 1
	ld	s5, 48(sp)                      # 8-byte Folded Reload
	ld	s8, 40(sp)                      # 8-byte Folded Reload
.LBB14_7:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_8 Depth 2
	li	a0, 720
	mul	a0, s0, a0
	add	a0, s3, a0
	addi	s11, sp, 152
	add	s11, s11, a0
	mv	s1, s6
	mv	s9, s5
	mv	s10, s8
.LBB14_8:                               #   Parent Loop BB14_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	li	a0, 1
	li	a1, 24
	call	calloc
	sd	a0, 0(s1)
	li	a0, 1
	li	a1, 24
	call	calloc
	sd	a0, 0(s9)
	li	a0, 1
	li	a1, 24
	call	calloc
	sd	a0, 0(s10)
	addi	s10, s10, 8
	addi	s9, s9, 8
	addi	s1, s1, 8
	bne	s10, s11, .LBB14_8
# %bb.9:                                #   in Loop: Header=BB14_7 Depth=1
	addi	s4, s4, 1
	addi	s8, s8, 720
	addi	s5, s5, 720
	addi	s6, s6, 720
	addi	s0, s0, 1
	bne	s4, s2, .LBB14_7
.LBB14_10:
	li	a0, 48
	blt	s7, a0, .LBB14_30
# %bb.11:
	li	s11, 0
	li	s5, 0
	li	s9, 0
	ld	s1, 104(sp)                     # 8-byte Folded Reload
	ld	a0, 112(sp)                     # 8-byte Folded Reload
	add	s1, a0, s1
	negw	a0, a0
	sd	a0, 88(sp)                      # 8-byte Folded Spill
	lui	a0, %hi(pels)
	lw	a1, %lo(pels)(a0)
	li	a0, 1
	li	a3, 47
	lui	a2, 26
	addiw	a2, a2, -640
	sd	a2, 80(sp)                      # 8-byte Folded Spill
	lui	a2, 13
	addiw	a2, a2, 48
	sd	a2, 72(sp)                      # 8-byte Folded Spill
	addi	s10, sp, 148
	lui	a2, 524288
	addiw	a2, a2, -1
	sd	a2, 64(sp)                      # 8-byte Folded Spill
	ld	s8, 48(sp)                      # 8-byte Folded Reload
	ld	s6, 96(sp)                      # 8-byte Folded Reload
	ld	s4, 120(sp)                     # 8-byte Folded Reload
	j	.LBB14_14
.LBB14_12:                              #   in Loop: Header=BB14_14 Depth=1
	lui	a0, %hi(lines)
	lw	s7, %lo(lines)(a0)
	ld	s8, 48(sp)                      # 8-byte Folded Reload
	li	a3, 47
	ld	a4, 56(sp)                      # 8-byte Folded Reload
.LBB14_13:                              #   in Loop: Header=BB14_14 Depth=1
	sraiw	a0, s7, 31
	srliw	a0, a0, 28
	add	a0, s7, a0
	sraiw	a0, a0, 4
	addi	a2, a0, -1
	mv	a0, a4
	bge	a4, a2, .LBB14_31
.LBB14_14:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_17 Depth 2
	bge	a3, a1, .LBB14_26
# %bb.15:                               #   in Loop: Header=BB14_14 Depth=1
	slli	s8, a0, 4
	addi	a1, a0, 1
	sd	a1, 56(sp)                      # 8-byte Folded Spill
	li	a1, 720
	mul	s0, a0, a1
	addi	a0, sp, 152
	add	s0, a0, s0
	li	s2, 1
	li	s7, 16
	sd	s8, 112(sp)                     # 8-byte Folded Spill
	sext.w	s8, s8
	li	s3, 16
	j	.LBB14_17
.LBB14_16:                              #   in Loop: Header=BB14_17 Depth=2
	ld	a1, 0(s4)
	lw	a2, 0(a1)
	addi	s2, s2, 1
	ld	a5, 104(sp)                     # 8-byte Folded Reload
	mul	a3, a2, a5
	divw	a4, a3, s1
	ld	a7, 88(sp)                      # 8-byte Folded Reload
	mul	a2, a2, a7
	lw	a1, 4(a1)
	divw	a2, a2, s1
	lw	a0, 16(a0)
	ld	a3, 0(s6)
	mul	a5, a1, a5
	divw	a5, a5, s1
	add	s11, a0, s11
	lw	a0, 16(a3)
	lui	s10, %hi(pels)
	lw	a3, %lo(pels)(s10)
	ld	a6, 128(sp)                     # 8-byte Folded Reload
	ld	a6, 0(a6)
	mul	a1, a1, a7
	add	s9, a0, s9
	ld	a7, 112(sp)                     # 8-byte Folded Reload
	mul	a0, a7, a3
	add	a6, a6, s3
	add	a0, a6, a0
	ld	s4, 120(sp)                     # 8-byte Folded Reload
	ld	a6, 0(s4)
	divw	a1, a1, s1
	add	a1, a1, a7
	mulw	a1, a3, a1
	add	a2, a6, a2
	add	a2, a2, s3
	ld	s6, 96(sp)                      # 8-byte Folded Reload
	ld	a6, 0(s6)
	add	a1, a2, a1
	add	a5, a5, a7
	mulw	a2, a3, a5
	add	a4, a6, a4
	add	a4, a4, s3
	add	a2, a4, a2
	ld	a4, 64(sp)                      # 8-byte Folded Reload
	call	SAD_MB_Bidir
	lw	a1, %lo(pels)(s10)
	addw	s5, a0, s5
	slli	a0, a1, 1
	srli	a0, a0, 60
	add	a0, a1, a0
	sraiw	a0, a0, 4
	addi	a0, a0, -1
	addi	s0, s0, 8
	addi	s3, s3, 16
	addiw	s7, s7, 16
	addi	s10, sp, 148
	bge	s2, a0, .LBB14_12
.LBB14_17:                              #   Parent Loop BB14_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, 0(s4)
	ld	a1, 0(s6)
	addi	a7, sp, 152
	sd	s10, 0(sp)
	mv	a2, s7
	mv	a3, s8
	li	a4, 0
	li	a5, 0
	ld	a6, 136(sp)                     # 8-byte Folded Reload
	call	MotionEstimation
	ld	a0, 736(s0)
	lw	a1, 0(a0)
	bnez	a1, .LBB14_20
# %bb.18:                               #   in Loop: Header=BB14_17 Depth=2
	lw	a1, 4(a0)
	bnez	a1, .LBB14_20
# %bb.19:                               #   in Loop: Header=BB14_17 Depth=2
	lw	a1, 16(a0)
	addi	a1, a1, 100
	sw	a1, 16(a0)
.LBB14_20:                              #   in Loop: Header=BB14_17 Depth=2
	ld	s4, 80(sp)                      # 8-byte Folded Reload
	add	s4, s0, s4
	ld	a1, 0(s4)
	lw	a2, 20(a0)
	sw	a2, 20(a1)
	lw	a2, 16(a0)
	sw	a2, 16(a1)
	lw	a2, 12(a0)
	sw	a2, 12(a1)
	lw	a2, 8(a0)
	sw	a2, 8(a1)
	lw	a2, 4(a0)
	sw	a2, 4(a1)
	lw	a0, 0(a0)
	sw	a0, 0(a1)
	ld	a0, 128(sp)                     # 8-byte Folded Reload
	ld	a0, 0(a0)
	ld	a1, 0(s6)
	addi	a7, sp, 152
	sd	s10, 0(sp)
	mv	a2, s7
	mv	a3, s8
	li	a4, 0
	li	a5, 0
	ld	a6, 136(sp)                     # 8-byte Folded Reload
	call	MotionEstimation
	ld	a0, 736(s0)
	lw	a1, 0(a0)
	bnez	a1, .LBB14_23
# %bb.21:                               #   in Loop: Header=BB14_17 Depth=2
	lw	a1, 4(a0)
	bnez	a1, .LBB14_23
# %bb.22:                               #   in Loop: Header=BB14_17 Depth=2
	lw	a1, 16(a0)
	addi	a1, a1, 100
	sw	a1, 16(a0)
.LBB14_23:                              #   in Loop: Header=BB14_17 Depth=2
	ld	s6, 72(sp)                      # 8-byte Folded Reload
	add	s6, s0, s6
	ld	a1, 0(s6)
	lw	a2, 20(a0)
	sw	a2, 20(a1)
	lw	a2, 16(a0)
	sw	a2, 16(a1)
	lw	a2, 12(a0)
	sw	a2, 12(a1)
	lw	a2, 8(a0)
	sw	a2, 8(a1)
	lw	a2, 4(a0)
	sw	a2, 4(a1)
	lw	a0, 0(a0)
	sw	a0, 0(a1)
	ld	a0, 120(sp)                     # 8-byte Folded Reload
	ld	a0, 0(a0)
	ld	a1, 128(sp)                     # 8-byte Folded Reload
	ld	a1, 0(a1)
	addi	a7, sp, 152
	sd	s10, 0(sp)
	mv	a2, s7
	mv	a3, s8
	li	a4, 0
	li	a5, 0
	ld	a6, 136(sp)                     # 8-byte Folded Reload
	call	MotionEstimation
	ld	a0, 736(s0)
	lw	a1, 0(a0)
	bnez	a1, .LBB14_16
# %bb.24:                               #   in Loop: Header=BB14_17 Depth=2
	lw	a1, 4(a0)
	bnez	a1, .LBB14_16
# %bb.25:                               #   in Loop: Header=BB14_17 Depth=2
	lw	a1, 16(a0)
	addi	a1, a1, 100
	sw	a1, 16(a0)
	j	.LBB14_16
.LBB14_26:                              #   in Loop: Header=BB14_14 Depth=1
	addi	a4, a0, 1
	j	.LBB14_13
.LBB14_27:
	li	a6, 0
	lui	a3, %hi(mv_outside_frame)
	lw	a1, %lo(mv_outside_frame)(a3)
	bnez	a1, .LBB14_2
.LBB14_28:
	li	a3, 0
	lui	a5, %hi(long_vectors)
	lw	a1, %lo(long_vectors)(a5)
	bnez	a1, .LBB14_3
	j	.LBB14_4
.LBB14_29:
	li	s11, 0
	li	s5, 0
	li	s9, 0
	j	.LBB14_33
.LBB14_30:
	li	s9, 0
	li	s5, 0
	li	s11, 0
	ld	s8, 48(sp)                      # 8-byte Folded Reload
.LBB14_31:
	li	a3, 16
	ld	s10, 40(sp)                     # 8-byte Folded Reload
	bge	s7, a3, .LBB14_37
.LBB14_32:
	ld	a6, 32(sp)                      # 8-byte Folded Reload
	ld	a3, 24(sp)                      # 8-byte Folded Reload
	ld	a1, 16(sp)                      # 8-byte Folded Reload
.LBB14_33:
	lui	a0, %hi(advanced)
	sw	a6, %lo(advanced)(a0)
	lui	a0, %hi(mv_outside_frame)
	sw	a3, %lo(mv_outside_frame)(a0)
	lui	a0, %hi(long_vectors)
	sw	a1, %lo(long_vectors)(a0)
	add	s9, s11, s9
	srliw	a1, s9, 31
	lui	a0, %hi(stdout)
	ld	a0, %lo(stdout)(a0)
	add	a1, s9, a1
	sraiw	a3, a1, 1
	slt	s0, s5, a3
	blt	s5, a3, .LBB14_35
# %bb.34:
	lui	a1, %hi(.L.str.58)
	addi	a1, a1, %lo(.L.str.58)
	j	.LBB14_36
.LBB14_35:
	lui	a1, %hi(.L.str.57)
	addi	a1, a1, %lo(.L.str.57)
.LBB14_36:
	mv	a2, s5
	call	fprintf
	mv	a0, s0
	lui	a1, 77
	addiw	a1, a1, -1808
	add	sp, sp, a1
	ld	ra, 2024(sp)                    # 8-byte Folded Reload
	ld	s0, 2016(sp)                    # 8-byte Folded Reload
	ld	s1, 2008(sp)                    # 8-byte Folded Reload
	ld	s2, 2000(sp)                    # 8-byte Folded Reload
	ld	s3, 1992(sp)                    # 8-byte Folded Reload
	ld	s4, 1984(sp)                    # 8-byte Folded Reload
	ld	s5, 1976(sp)                    # 8-byte Folded Reload
	ld	s6, 1968(sp)                    # 8-byte Folded Reload
	ld	s7, 1960(sp)                    # 8-byte Folded Reload
	ld	s8, 1952(sp)                    # 8-byte Folded Reload
	ld	s9, 1944(sp)                    # 8-byte Folded Reload
	ld	s10, 1936(sp)                   # 8-byte Folded Reload
	ld	s11, 1928(sp)                   # 8-byte Folded Reload
	addi	sp, sp, 2032
	ret
.LBB14_37:
	lui	s1, %hi(pels)
	lw	a0, %lo(pels)(s1)
	li	a1, 1
	addi	s2, sp, 880
	j	.LBB14_39
.LBB14_38:                              #   in Loop: Header=BB14_39 Depth=1
	addi	a1, s4, 1
	sraiw	a2, s7, 4
	addi	s10, s10, 720
	addi	s8, s8, 720
	addi	s2, s2, 720
	bge	s4, a2, .LBB14_32
.LBB14_39:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_41 Depth 2
	mv	s4, a1
	blt	a0, a3, .LBB14_38
# %bb.40:                               # %.preheader
                                        #   in Loop: Header=BB14_39 Depth=1
	li	s6, 0
	mv	s7, s2
	mv	s0, s8
	mv	s3, s10
.LBB14_41:                              #   Parent Loop BB14_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, 0(s7)
	call	free
	ld	a0, 0(s8)
	call	free
	ld	a0, 0(s10)
	call	free
	lw	a0, %lo(pels)(s1)
	srai	a1, a0, 4
	addi	s6, s6, 1
	addi	s10, s10, 8
	addi	s8, s8, 8
	addi	s7, s7, 8
	blt	s6, a1, .LBB14_41
# %bb.42:                               #   in Loop: Header=BB14_39 Depth=1
	lui	a1, %hi(lines)
	lw	s7, %lo(lines)(a1)
	mv	s10, s3
	mv	s8, s0
	li	a3, 16
	j	.LBB14_38
.Lfunc_end14:
	.size	NextTwoPB, .Lfunc_end14-NextTwoPB
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Help                            # -- Begin function Help
	.p2align	2
	.type	Help,@function
Help:                                   # @Help
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	lui	s1, %hi(stderr)
	ld	a3, %lo(stderr)(s1)
	lui	a0, %hi(.L.str.59)
	addi	a0, a0, %lo(.L.str.59)
	li	a1, 50
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s1)
	lui	a0, %hi(.L.str.60)
	addi	a0, a0, %lo(.L.str.60)
	li	a1, 9
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s1)
	lui	a0, %hi(.L.str.61)
	addi	a0, a0, %lo(.L.str.61)
	li	a1, 54
	li	a2, 1
	call	fwrite
	ld	a0, %lo(stderr)(s1)
	lui	a1, %hi(.L.str.62)
	addi	a1, a1, %lo(.L.str.62)
	lui	a2, %hi(.L.str.5)
	addi	a2, a2, %lo(.L.str.5)
	call	fprintf
	ld	a0, %lo(stderr)(s1)
	lui	a1, %hi(.L.str.63)
	addi	a1, a1, %lo(.L.str.63)
	lui	a2, %hi(.L.str.4)
	addi	a2, a2, %lo(.L.str.4)
	call	fprintf
	ld	a0, %lo(stderr)(s1)
	lui	a1, %hi(.L.str.64)
	addi	a1, a1, %lo(.L.str.64)
	li	a2, 0
	call	fprintf
	ld	a0, %lo(stderr)(s1)
	lui	a1, %hi(.L.str.65)
	addi	a1, a1, %lo(.L.str.65)
	li	a2, 0
	call	fprintf
	ld	a0, %lo(stderr)(s1)
	lui	a1, %hi(.L.str.66)
	addi	a1, a1, %lo(.L.str.66)
	li	a2, 2
	call	fprintf
	ld	a0, %lo(stderr)(s1)
	lui	a1, %hi(.L.str.67)
	addi	a1, a1, %lo(.L.str.67)
	li	a2, 10
	call	fprintf
	ld	a0, %lo(stderr)(s1)
	lui	a1, %hi(.L.str.68)
	addi	a1, a1, %lo(.L.str.68)
	li	a2, 10
	call	fprintf
	ld	a3, %lo(stderr)(s1)
	lui	a0, %hi(.L.str.69)
	addi	a0, a0, %lo(.L.str.69)
	li	a1, 62
	li	a2, 1
	call	fwrite
	ld	a0, %lo(stderr)(s1)
	lui	a1, %hi(.L.str.70)
	addi	a1, a1, %lo(.L.str.70)
	li	a2, 2
	call	fprintf
	ld	a0, %lo(stderr)(s1)
	lui	a1, %hi(.L.str.71)
	addi	a1, a1, %lo(.L.str.71)
	lui	s0, %hi(.L.str.72)
	addi	s0, s0, %lo(.L.str.72)
	mv	a2, s0
	call	fprintf
	ld	a0, %lo(stderr)(s1)
	lui	a1, %hi(.L.str.73)
	addi	a1, a1, %lo(.L.str.73)
	mv	a2, s0
	call	fprintf
	ld	a0, %lo(stderr)(s1)
	lui	a1, %hi(.L.str.74)
	addi	a1, a1, %lo(.L.str.74)
	mv	a2, s0
	call	fprintf
	ld	a0, %lo(stderr)(s1)
	lui	a1, %hi(.L.str.75)
	addi	a1, a1, %lo(.L.str.75)
	mv	a2, s0
	call	fprintf
	ld	a3, %lo(stderr)(s1)
	lui	a0, %hi(.L.str.76)
	addi	a0, a0, %lo(.L.str.76)
	li	a1, 23
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s1)
	lui	a0, %hi(.L.str.77)
	addi	a0, a0, %lo(.L.str.77)
	li	a1, 25
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s1)
	lui	a0, %hi(.L.str.78)
	addi	a0, a0, %lo(.L.str.78)
	li	a1, 82
	li	a2, 1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	tail	fwrite
.Lfunc_end15:
	.size	Help, .Lfunc_end15-Help
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	AdvancedHelp                    # -- Begin function AdvancedHelp
	.p2align	2
	.type	AdvancedHelp,@function
AdvancedHelp:                           # @AdvancedHelp
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	lui	s1, %hi(stderr)
	ld	a3, %lo(stderr)(s1)
	lui	a0, %hi(.L.str.59)
	addi	a0, a0, %lo(.L.str.59)
	li	a1, 50
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s1)
	lui	a0, %hi(.L.str.60)
	addi	a0, a0, %lo(.L.str.60)
	li	a1, 9
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s1)
	lui	a0, %hi(.L.str.61)
	addi	a0, a0, %lo(.L.str.61)
	li	a1, 54
	li	a2, 1
	call	fwrite
	ld	a0, %lo(stderr)(s1)
	lui	a1, %hi(.L.str.62)
	addi	a1, a1, %lo(.L.str.62)
	lui	a2, %hi(.L.str.5)
	addi	a2, a2, %lo(.L.str.5)
	call	fprintf
	ld	a0, %lo(stderr)(s1)
	lui	a1, %hi(.L.str.63)
	addi	a1, a1, %lo(.L.str.63)
	lui	a2, %hi(.L.str.4)
	addi	a2, a2, %lo(.L.str.4)
	call	fprintf
	ld	a0, %lo(stderr)(s1)
	lui	a1, %hi(.L.str.64)
	addi	a1, a1, %lo(.L.str.64)
	li	a2, 0
	call	fprintf
	ld	a0, %lo(stderr)(s1)
	lui	a1, %hi(.L.str.65)
	addi	a1, a1, %lo(.L.str.65)
	li	a2, 0
	call	fprintf
	ld	a0, %lo(stderr)(s1)
	lui	a1, %hi(.L.str.66)
	addi	a1, a1, %lo(.L.str.66)
	li	a2, 2
	call	fprintf
	ld	a3, %lo(stderr)(s1)
	lui	a0, %hi(.L.str.79)
	addi	a0, a0, %lo(.L.str.79)
	li	a1, 59
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s1)
	lui	a0, %hi(.L.str.80)
	addi	a0, a0, %lo(.L.str.80)
	li	a1, 59
	li	a2, 1
	call	fwrite
	ld	a0, %lo(stderr)(s1)
	lui	a1, %hi(.L.str.81)
	addi	a1, a1, %lo(.L.str.81)
	li	a2, 15
	call	fprintf
	ld	a0, %lo(stderr)(s1)
	lui	a1, %hi(.L.str.67)
	addi	a1, a1, %lo(.L.str.67)
	li	a2, 10
	call	fprintf
	ld	a0, %lo(stderr)(s1)
	lui	a1, %hi(.L.str.68)
	addi	a1, a1, %lo(.L.str.68)
	li	a2, 10
	call	fprintf
	ld	a3, %lo(stderr)(s1)
	lui	a0, %hi(.L.str.69)
	addi	a0, a0, %lo(.L.str.69)
	li	a1, 62
	li	a2, 1
	call	fwrite
	ld	a0, %lo(stderr)(s1)
	lui	a1, %hi(.L.str.82)
	addi	a1, a1, %lo(.L.str.82)
	lui	a2, 4105
	slli	a2, a2, 38
	call	fprintf
	ld	a0, %lo(stderr)(s1)
	lui	a1, %hi(.L.str.70)
	addi	a1, a1, %lo(.L.str.70)
	li	a2, 2
	call	fprintf
	ld	a0, %lo(stderr)(s1)
	lui	a1, %hi(.L.str.83)
	addi	a1, a1, %lo(.L.str.83)
	lui	a2, 8223
	slli	a2, a2, 37
	call	fprintf
	ld	a0, %lo(stderr)(s1)
	lui	a1, %hi(.L.str.84)
	addi	a1, a1, %lo(.L.str.84)
	li	a2, 0
	call	fprintf
	ld	a0, %lo(stderr)(s1)
	lui	a1, %hi(.L.str.85)
	addi	a1, a1, %lo(.L.str.85)
	li	a2, 0
	call	fprintf
	ld	a0, %lo(stderr)(s1)
	lui	a1, %hi(.L.str.86)
	addi	a1, a1, %lo(.L.str.86)
	li	a2, 0
	call	fprintf
	ld	a3, %lo(stderr)(s1)
	lui	a0, %hi(.L.str.87)
	addi	a0, a0, %lo(.L.str.87)
	li	a1, 49
	li	a2, 1
	call	fwrite
	ld	a0, %lo(stderr)(s1)
	lui	a1, %hi(.L.str.88)
	addi	a1, a1, %lo(.L.str.88)
	lui	a2, %hi(.L.str.1)
	addi	a2, a2, %lo(.L.str.1)
	lui	s0, %hi(.L.str.72)
	addi	s0, s0, %lo(.L.str.72)
	mv	a3, s0
	call	fprintf
	ld	a0, %lo(stderr)(s1)
	lui	a1, %hi(.L.str.89)
	addi	a1, a1, %lo(.L.str.89)
	mv	a2, s0
	call	fprintf
	ld	a0, %lo(stderr)(s1)
	lui	a1, %hi(.L.str.90)
	addi	a1, a1, %lo(.L.str.90)
	mv	a2, s0
	call	fprintf
	ld	a0, %lo(stderr)(s1)
	lui	a1, %hi(.L.str.71)
	addi	a1, a1, %lo(.L.str.71)
	mv	a2, s0
	call	fprintf
	ld	a0, %lo(stderr)(s1)
	lui	a1, %hi(.L.str.73)
	addi	a1, a1, %lo(.L.str.73)
	mv	a2, s0
	call	fprintf
	ld	a0, %lo(stderr)(s1)
	lui	a1, %hi(.L.str.74)
	addi	a1, a1, %lo(.L.str.74)
	mv	a2, s0
	call	fprintf
	ld	a0, %lo(stderr)(s1)
	lui	a1, %hi(.L.str.75)
	addi	a1, a1, %lo(.L.str.75)
	mv	a2, s0
	call	fprintf
	ld	a0, %lo(stderr)(s1)
	lui	a1, %hi(.L.str.91)
	addi	a1, a1, %lo(.L.str.91)
	li	a2, 2
	call	fprintf
	ld	a3, %lo(stderr)(s1)
	lui	a0, %hi(.L.str.76)
	addi	a0, a0, %lo(.L.str.76)
	li	a1, 23
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s1)
	lui	a0, %hi(.L.str.77)
	addi	a0, a0, %lo(.L.str.77)
	li	a1, 25
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s1)
	lui	a0, %hi(.L.str.78)
	addi	a0, a0, %lo(.L.str.78)
	li	a1, 82
	li	a2, 1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	tail	fwrite
.Lfunc_end16:
	.size	AdvancedHelp, .Lfunc_end16-AdvancedHelp
                                        # -- End function
	.option	pop
	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"./diff.raw"
	.size	.L.str.1, 11

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"\nTMN (H.263) coder version 1.7, Copyright (C) 1995, 1996 Telenor R&D.\n"
	.size	.L.str.2, 71

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"TMN comes with ABSOLUTELY NO WARRANTY; This is free software, and \nyou are welcome to redistribute it under certain conditions; \nSee accompanying COPYING file for details.\n\n"
	.size	.L.str.3, 174

	.type	headerlength,@object            # @headerlength
	.section	.sbss,"aw",@nobits
	.globl	headerlength
	.p2align	2, 0x0
headerlength:
	.word	0                               # 0x0
	.size	headerlength, 4

	.type	advanced,@object                # @advanced
	.globl	advanced
	.p2align	2, 0x0
advanced:
	.word	0                               # 0x0
	.size	advanced, 4

	.type	syntax_arith_coding,@object     # @syntax_arith_coding
	.globl	syntax_arith_coding
	.p2align	2, 0x0
syntax_arith_coding:
	.word	0                               # 0x0
	.size	syntax_arith_coding, 4

	.type	mv_outside_frame,@object        # @mv_outside_frame
	.globl	mv_outside_frame
	.p2align	2, 0x0
mv_outside_frame:
	.word	0                               # 0x0
	.size	mv_outside_frame, 4

	.type	long_vectors,@object            # @long_vectors
	.globl	long_vectors
	.p2align	2, 0x0
long_vectors:
	.word	0                               # 0x0
	.size	long_vectors, 4

	.type	pb_frames,@object               # @pb_frames
	.globl	pb_frames
	.p2align	2, 0x0
pb_frames:
	.word	0                               # 0x0
	.size	pb_frames, 4

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"./stream.263"
	.size	.L.str.4, 13

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"./out.raw"
	.size	.L.str.5, 10

	.type	trace,@object                   # @trace
	.section	.sbss,"aw",@nobits
	.globl	trace
	.p2align	2, 0x0
trace:
	.word	0                               # 0x0
	.size	trace, 4

	.type	.L.str.6,@object                # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"QP out of range - clipping it\n"
	.size	.L.str.6, 31

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Illegal option: %c\n"
	.size	.L.str.7, 20

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Encoding format: SQCIF (128x96)\n"
	.size	.L.str.8, 33

	.type	pels,@object                    # @pels
	.section	.sbss,"aw",@nobits
	.globl	pels
	.p2align	2, 0x0
pels:
	.word	0                               # 0x0
	.size	pels, 4

	.type	lines,@object                   # @lines
	.globl	lines
	.p2align	2, 0x0
lines:
	.word	0                               # 0x0
	.size	lines, 4

	.type	.L.str.9,@object                # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"Encoding format: QCIF (176x144)\n"
	.size	.L.str.9, 33

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Encoding format: CIF (352x288)\n"
	.size	.L.str.10, 32

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Encoding format: 4CIF (704x576)\n"
	.size	.L.str.11, 33

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"Encoding format: 16CIF (1408x1152)\n"
	.size	.L.str.12, 36

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"Illegal coding format\n"
	.size	.L.str.13, 23

	.type	cpels,@object                   # @cpels
	.section	.sbss,"aw",@nobits
	.globl	cpels
	.p2align	2, 0x0
cpels:
	.word	0                               # 0x0
	.size	cpels, 4

	.type	.L.str.14,@object               # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"Required input parameter '-i <filename>' missing\n"
	.size	.L.str.14, 50

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Warning:"
	.size	.L.str.15, 9

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"QP is zero. Bitstream will not be correctly decodable\n"
	.size	.L.str.16, 55

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"Warning: Reference frame rate should be 25 or 30 fps\n"
	.size	.L.str.17, 54

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"Encoding frame rate  : %.2f\n"
	.size	.L.str.18, 29

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"Encoding frame rate  : variable\n"
	.size	.L.str.19, 33

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"Reference frame rate : %.2f\n"
	.size	.L.str.20, 29

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"Orig. seq. frame rate: %.2f\n\n"
	.size	.L.str.21, 30

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"wb"
	.size	.L.str.22, 3

	.type	streamfile,@object              # @streamfile
	.section	.sbss,"aw",@nobits
	.globl	streamfile
	.p2align	3, 0x0
streamfile:
	.quad	0
	.size	streamfile, 8

	.type	.L.str.23,@object               # @.str.23
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.23:
	.asciz	"Unable to open streamfile\n"
	.size	.L.str.23, 27

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"trace.intra"
	.size	.L.str.24, 12

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"w"
	.size	.L.str.25, 2

	.type	tf,@object                      # @tf
	.section	.sbss,"aw",@nobits
	.globl	tf
	.p2align	3, 0x0
tf:
	.quad	0
	.size	tf, 8

	.type	.L.str.26,@object               # @.str.26
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.26:
	.asciz	"Unable to open tracefile (intra)\n"
	.size	.L.str.26, 34

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"Couldn't open outputfile: %s\n"
	.size	.L.str.27, 30

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"Couldn't open diff-file: %s\n"
	.size	.L.str.28, 29

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"Coding...\n"
	.size	.L.str.29, 11

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"Finished INTRA\n"
	.size	.L.str.30, 16

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"trace"
	.size	.L.str.31, 6

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"Unable to open tracefile (non-intra)\n"
	.size	.L.str.32, 38

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"Warning: frameskip > 256\n"
	.size	.L.str.33, 26

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"distance too large for B-frame\n"
	.size	.L.str.34, 32

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"Coding PB frames %d and %d... "
	.size	.L.str.35, 31

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"Coding P frame %d... "
	.size	.L.str.36, 22

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"done\n"
	.size	.L.str.37, 6

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"Inter QP: %d\n"
	.size	.L.str.38, 14

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"Results for B-frame:\n"
	.size	.L.str.39, 22

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"Results for P-frame:\n"
	.size	.L.str.40, 22

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"\n==== TOTAL ====\n"
	.size	.L.str.41, 18

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"for %d images of %s\n"
	.size	.L.str.42, 21

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"Frames saved : %d predicted + %d intra\n"
	.size	.L.str.43, 40

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"--------------\n"
	.size	.L.str.44, 16

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"SNR for %d B-frames:\n"
	.size	.L.str.45, 22

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"SNR for %d P-frames:\n"
	.size	.L.str.46, 22

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"Original seq time: %.2f (%.2f) sec\n"
	.size	.L.str.47, 36

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"Mean quantizer   : %.2f\n"
	.size	.L.str.48, 25

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"Encoded frames   : %3d (%3d)\n"
	.size	.L.str.49, 30

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"Mean frame rate  : %.2f Hz\n"
	.size	.L.str.50, 28

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"Target bit rate  : %.2f kbit/sec\n"
	.size	.L.str.51, 34

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"Obtained bit rate: %.2f (%.2f) kbit/sec\n"
	.size	.L.str.52, 41

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"============================================\n"
	.size	.L.str.53, 46

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"cycles: %lu | regsw hits:%d regsw misses:%d \n"
	.size	.L.str.54, 46

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"Corrected Cycles: %lu\n"
	.size	.L.str.55, 23

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"lw, %lu\n ld, %lu\n li, %lu\n sw, %lu\n sd, %lu\n "
	.size	.L.str.56, 46

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"Chose PB - bsad %d, psad %d\n"
	.size	.L.str.57, 29

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"Chose PP  - bsad %d, psad %d\n"
	.size	.L.str.58, 30

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"Usage:\ttmn [options] -i <filename> [more options]\n"
	.size	.L.str.59, 51

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"Options:\n"
	.size	.L.str.60, 10

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"\t-i <filename> original sequence [required parameter]\n"
	.size	.L.str.61, 55

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"\t-o <filename> reconstructed frames [%s]\n"
	.size	.L.str.62, 42

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"\t-B <filename> filename for bitstream [%s]\n"
	.size	.L.str.63, 44

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"\t-a <n> image to start at [%d]\n"
	.size	.L.str.64, 32

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"\t-b <n> image to stop at [%d]\n"
	.size	.L.str.65, 31

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"\t-x <n> coding format [%d]\n"
	.size	.L.str.66, 28

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"\t-q <n> (1..31) quantization parameter QP [%d]\n"
	.size	.L.str.67, 48

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"\t-I <n> (1..31) QP for first frame [%d]\n"
	.size	.L.str.68, 41

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"\t-r <n> target bitrate in bits/s, default is variable bitrate\n"
	.size	.L.str.69, 63

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"\t-S <n> frames to skip between each encoded frame [%d]\n"
	.size	.L.str.70, 56

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"\t-D use unrestricted motion vector mode (annex D) [%s]\n"
	.size	.L.str.71, 56

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"OFF"
	.size	.L.str.72, 4

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"\t-E use syntax-based arithmetic coding (annex E) [%s]\n"
	.size	.L.str.73, 55

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"\t-F use advanced prediction mode (annex F) [%s]\n"
	.size	.L.str.74, 49

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"\t-G use PB-frames (annex G) [%s]\n"
	.size	.L.str.75, 34

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"\t-h Prints simple help\n"
	.size	.L.str.76, 24

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"\t-H Prints advanced help\n"
	.size	.L.str.77, 26

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"\n\tDefault filenames and other options in square brackets \n\tare chosen in config.h\n"
	.size	.L.str.78, 83

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"\t       n=1: SQCIF n=2: QCIF n=3: CIF n=4: 4CIF n=5: 16CIF\n"
	.size	.L.str.79, 60

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"\t           128x96   176x144  352x288   704x576  1408x1152\n"
	.size	.L.str.80, 60

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"\t-s <n> (0..15) integer pel search window [%d]\n"
	.size	.L.str.81, 48

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"\t   -R <f> target frame rate [%.2f]\n"
	.size	.L.str.82, 37

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"\t-Z <n> reference frame rate (25 or 30 fps) [%.1f]\n"
	.size	.L.str.83, 52

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"\t-O <n> frames skipped in original compared to reference frame rate [%d]\n"
	.size	.L.str.84, 74

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"\t-e <n> original sequence has n bytes header [%d]\n"
	.size	.L.str.85, 51

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"\t-g <n> insert sync after each n GOB (slice) [%d]\n"
	.size	.L.str.86, 51

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"\t       zero above means no extra syncs inserted\n"
	.size	.L.str.87, 50

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	"\t-w write difference image to file \"%s\" [%s]\n"
	.size	.L.str.88, 46

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	"\t-m write repeated reconstructed frames to disk [%s]\n"
	.size	.L.str.89, 54

	.type	.L.str.90,@object               # @.str.90
.L.str.90:
	.asciz	"\t-t write trace to tracefile trace.intra/trace [%s]\n"
	.size	.L.str.90, 53

	.type	.L.str.91,@object               # @.str.91
.L.str.91:
	.asciz	"\t   -Q <n> (0..3) BQUANT parameter [%d]\n"
	.size	.L.str.91, 41

	.type	.L.str.92,@object               # @.str.92
.L.str.92:
	.asciz	"# intra   : %d\n"
	.size	.L.str.92, 16

	.type	.L.str.93,@object               # @.str.93
.L.str.93:
	.asciz	"# inter   : %d\n"
	.size	.L.str.93, 16

	.type	.L.str.94,@object               # @.str.94
.L.str.94:
	.asciz	"# inter4v : %d\n"
	.size	.L.str.94, 16

	.type	.L.str.95,@object               # @.str.95
.L.str.95:
	.asciz	"Coeff_Y: %d\n"
	.size	.L.str.95, 13

	.type	.L.str.96,@object               # @.str.96
.L.str.96:
	.asciz	"Coeff_C: %d\n"
	.size	.L.str.96, 13

	.type	.L.str.97,@object               # @.str.97
.L.str.97:
	.asciz	"Vectors: %d\n"
	.size	.L.str.97, 13

	.type	.L.str.98,@object               # @.str.98
.L.str.98:
	.asciz	"CBPY   : %d\n"
	.size	.L.str.98, 13

	.type	.L.str.99,@object               # @.str.99
.L.str.99:
	.asciz	"MCBPC  : %d\n"
	.size	.L.str.99, 13

	.type	.L.str.100,@object              # @.str.100
.L.str.100:
	.asciz	"MODB   : %d\n"
	.size	.L.str.100, 13

	.type	.L.str.101,@object              # @.str.101
.L.str.101:
	.asciz	"CBPB   : %d\n"
	.size	.L.str.101, 13

	.type	.L.str.102,@object              # @.str.102
.L.str.102:
	.asciz	"COD    : %d\n"
	.size	.L.str.102, 13

	.type	.L.str.103,@object              # @.str.103
.L.str.103:
	.asciz	"DQUANT : %d\n"
	.size	.L.str.103, 13

	.type	.L.str.104,@object              # @.str.104
.L.str.104:
	.asciz	"header : %d\n"
	.size	.L.str.104, 13

	.type	.L.str.105,@object              # @.str.105
.L.str.105:
	.asciz	"==============\n"
	.size	.L.str.105, 16

	.type	.L.str.106,@object              # @.str.106
.L.str.106:
	.asciz	"Total  : %d\n"
	.size	.L.str.106, 13

	.type	.L.str.108,@object              # @.str.108
.L.str.108:
	.asciz	"SNR_Y  : %.2f\n"
	.size	.L.str.108, 15

	.type	.L.str.109,@object              # @.str.109
.L.str.109:
	.asciz	"SNR_Cb : %.2f\n"
	.size	.L.str.109, 15

	.type	.L.str.110,@object              # @.str.110
.L.str.110:
	.asciz	"SNR_Cr : %.2f\n"
	.size	.L.str.110, 15

	.type	target_framerate,@object        # @target_framerate
	.section	.sbss,"aw",@nobits
	.globl	target_framerate
	.p2align	2, 0x0
target_framerate:
	.word	0x00000000                      # float 0
	.size	target_framerate, 4

	.type	.Lstr,@object                   # @str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	"handled "
	.size	.Lstr, 9

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
