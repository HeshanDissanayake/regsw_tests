	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"global.c"
	.type	top_pic,@object                 # @top_pic
	.section	.sbss,"aw",@nobits
	.globl	top_pic
	.p2align	3, 0x0
top_pic:
	.quad	0
	.size	top_pic, 8

	.type	bottom_pic,@object              # @bottom_pic
	.globl	bottom_pic
	.p2align	3, 0x0
bottom_pic:
	.quad	0
	.size	bottom_pic, 8

	.type	frame_pic,@object               # @frame_pic
	.globl	frame_pic
	.p2align	3, 0x0
frame_pic:
	.quad	0
	.size	frame_pic, 8

	.type	frame_pic_1,@object             # @frame_pic_1
	.globl	frame_pic_1
	.p2align	3, 0x0
frame_pic_1:
	.quad	0
	.size	frame_pic_1, 8

	.type	frame_pic_2,@object             # @frame_pic_2
	.globl	frame_pic_2
	.p2align	3, 0x0
frame_pic_2:
	.quad	0
	.size	frame_pic_2, 8

	.type	frame_pic_3,@object             # @frame_pic_3
	.globl	frame_pic_3
	.p2align	3, 0x0
frame_pic_3:
	.quad	0
	.size	frame_pic_3, 8

	.type	imgY_org,@object                # @imgY_org
	.globl	imgY_org
	.p2align	3, 0x0
imgY_org:
	.quad	0
	.size	imgY_org, 8

	.type	imgUV_org,@object               # @imgUV_org
	.globl	imgUV_org
	.p2align	3, 0x0
imgUV_org:
	.quad	0
	.size	imgUV_org, 8

	.type	img4Y_tmp,@object               # @img4Y_tmp
	.globl	img4Y_tmp
	.p2align	3, 0x0
img4Y_tmp:
	.quad	0
	.size	img4Y_tmp, 8

	.type	yPicPos,@object                 # @yPicPos
	.globl	yPicPos
	.p2align	3, 0x0
yPicPos:
	.quad	0
	.size	yPicPos, 8

	.type	xPicPos,@object                 # @xPicPos
	.globl	xPicPos
	.p2align	3, 0x0
xPicPos:
	.quad	0
	.size	xPicPos, 8

	.type	log2_max_frame_num_minus4,@object # @log2_max_frame_num_minus4
	.globl	log2_max_frame_num_minus4
	.p2align	2, 0x0
log2_max_frame_num_minus4:
	.word	0                               # 0x0
	.size	log2_max_frame_num_minus4, 4

	.type	log2_max_pic_order_cnt_lsb_minus4,@object # @log2_max_pic_order_cnt_lsb_minus4
	.globl	log2_max_pic_order_cnt_lsb_minus4
	.p2align	2, 0x0
log2_max_pic_order_cnt_lsb_minus4:
	.word	0                               # 0x0
	.size	log2_max_pic_order_cnt_lsb_minus4, 4

	.type	me_tot_time,@object             # @me_tot_time
	.globl	me_tot_time
	.p2align	2, 0x0
me_tot_time:
	.word	0                               # 0x0
	.size	me_tot_time, 4

	.type	me_time,@object                 # @me_time
	.globl	me_time
	.p2align	2, 0x0
me_time:
	.word	0                               # 0x0
	.size	me_time, 4

	.type	active_pps,@object              # @active_pps
	.globl	active_pps
	.p2align	3, 0x0
active_pps:
	.quad	0
	.size	active_pps, 8

	.type	active_sps,@object              # @active_sps
	.globl	active_sps
	.p2align	3, 0x0
active_sps:
	.quad	0
	.size	active_sps, 8

	.type	mb_adaptive,@object             # @mb_adaptive
	.globl	mb_adaptive
	.p2align	2, 0x0
mb_adaptive:
	.word	0                               # 0x0
	.size	mb_adaptive, 4

	.type	MBPairIsField,@object           # @MBPairIsField
	.globl	MBPairIsField
	.p2align	2, 0x0
MBPairIsField:
	.word	0                               # 0x0
	.size	MBPairIsField, 4

	.type	wp_weight,@object               # @wp_weight
	.globl	wp_weight
	.p2align	3, 0x0
wp_weight:
	.quad	0
	.size	wp_weight, 8

	.type	wp_offset,@object               # @wp_offset
	.globl	wp_offset
	.p2align	3, 0x0
wp_offset:
	.quad	0
	.size	wp_offset, 8

	.type	wbp_weight,@object              # @wbp_weight
	.globl	wbp_weight
	.p2align	3, 0x0
wbp_weight:
	.quad	0
	.size	wbp_weight, 8

	.type	luma_log_weight_denom,@object   # @luma_log_weight_denom
	.globl	luma_log_weight_denom
	.p2align	2, 0x0
luma_log_weight_denom:
	.word	0                               # 0x0
	.size	luma_log_weight_denom, 4

	.type	chroma_log_weight_denom,@object # @chroma_log_weight_denom
	.globl	chroma_log_weight_denom
	.p2align	2, 0x0
chroma_log_weight_denom:
	.word	0                               # 0x0
	.size	chroma_log_weight_denom, 4

	.type	wp_luma_round,@object           # @wp_luma_round
	.globl	wp_luma_round
	.p2align	2, 0x0
wp_luma_round:
	.word	0                               # 0x0
	.size	wp_luma_round, 4

	.type	wp_chroma_round,@object         # @wp_chroma_round
	.globl	wp_chroma_round
	.p2align	2, 0x0
wp_chroma_round:
	.word	0                               # 0x0
	.size	wp_chroma_round, 4

	.type	imgY_org_top,@object            # @imgY_org_top
	.globl	imgY_org_top
	.p2align	3, 0x0
imgY_org_top:
	.quad	0
	.size	imgY_org_top, 8

	.type	imgY_org_bot,@object            # @imgY_org_bot
	.globl	imgY_org_bot
	.p2align	3, 0x0
imgY_org_bot:
	.quad	0
	.size	imgY_org_bot, 8

	.type	imgUV_org_top,@object           # @imgUV_org_top
	.globl	imgUV_org_top
	.p2align	3, 0x0
imgUV_org_top:
	.quad	0
	.size	imgUV_org_top, 8

	.type	imgUV_org_bot,@object           # @imgUV_org_bot
	.globl	imgUV_org_bot
	.p2align	3, 0x0
imgUV_org_bot:
	.quad	0
	.size	imgUV_org_bot, 8

	.type	imgY_org_frm,@object            # @imgY_org_frm
	.globl	imgY_org_frm
	.p2align	3, 0x0
imgY_org_frm:
	.quad	0
	.size	imgY_org_frm, 8

	.type	imgUV_org_frm,@object           # @imgUV_org_frm
	.globl	imgUV_org_frm
	.p2align	3, 0x0
imgUV_org_frm:
	.quad	0
	.size	imgUV_org_frm, 8

	.type	imgY_com,@object                # @imgY_com
	.globl	imgY_com
	.p2align	3, 0x0
imgY_com:
	.quad	0
	.size	imgY_com, 8

	.type	imgUV_com,@object               # @imgUV_com
	.globl	imgUV_com
	.p2align	3, 0x0
imgUV_com:
	.quad	0
	.size	imgUV_com, 8

	.type	direct_ref_idx,@object          # @direct_ref_idx
	.globl	direct_ref_idx
	.p2align	3, 0x0
direct_ref_idx:
	.quad	0
	.size	direct_ref_idx, 8

	.type	direct_pdir,@object             # @direct_pdir
	.globl	direct_pdir
	.p2align	3, 0x0
direct_pdir:
	.quad	0
	.size	direct_pdir, 8

	.type	pixel_map,@object               # @pixel_map
	.globl	pixel_map
	.p2align	3, 0x0
pixel_map:
	.quad	0
	.size	pixel_map, 8

	.type	refresh_map,@object             # @refresh_map
	.globl	refresh_map
	.p2align	3, 0x0
refresh_map:
	.quad	0
	.size	refresh_map, 8

	.type	intras,@object                  # @intras
	.globl	intras
	.p2align	2, 0x0
intras:
	.word	0                               # 0x0
	.size	intras, 4

	.type	frame_ctr,@object               # @frame_ctr
	.bss
	.globl	frame_ctr
	.p2align	2, 0x0
frame_ctr:
	.zero	20
	.size	frame_ctr, 20

	.type	frame_no,@object                # @frame_no
	.section	.sbss,"aw",@nobits
	.globl	frame_no
	.p2align	2, 0x0
frame_no:
	.word	0                               # 0x0
	.size	frame_no, 4

	.type	nextP_tr_fld,@object            # @nextP_tr_fld
	.globl	nextP_tr_fld
	.p2align	2, 0x0
nextP_tr_fld:
	.word	0                               # 0x0
	.size	nextP_tr_fld, 4

	.type	nextP_tr_frm,@object            # @nextP_tr_frm
	.globl	nextP_tr_frm
	.p2align	2, 0x0
nextP_tr_frm:
	.word	0                               # 0x0
	.size	nextP_tr_frm, 4

	.type	tot_time,@object                # @tot_time
	.globl	tot_time
	.p2align	2, 0x0
tot_time:
	.word	0                               # 0x0
	.size	tot_time, 4

	.type	lrec,@object                    # @lrec
	.globl	lrec
	.p2align	3, 0x0
lrec:
	.quad	0
	.size	lrec, 8

	.type	lrec_uv,@object                 # @lrec_uv
	.globl	lrec_uv
	.p2align	3, 0x0
lrec_uv:
	.quad	0
	.size	lrec_uv, 8

	.type	si_frame_indicator,@object      # @si_frame_indicator
	.globl	si_frame_indicator
	.p2align	2, 0x0
si_frame_indicator:
	.word	0                               # 0x0
	.size	si_frame_indicator, 4

	.type	sp2_frame_indicator,@object     # @sp2_frame_indicator
	.globl	sp2_frame_indicator
	.p2align	2, 0x0
sp2_frame_indicator:
	.word	0                               # 0x0
	.size	sp2_frame_indicator, 4

	.type	number_sp2_frames,@object       # @number_sp2_frames
	.globl	number_sp2_frames
	.p2align	2, 0x0
number_sp2_frames:
	.word	0                               # 0x0
	.size	number_sp2_frames, 4

	.type	giRDOpt_B8OnlyFlag,@object      # @giRDOpt_B8OnlyFlag
	.globl	giRDOpt_B8OnlyFlag
	.p2align	2, 0x0
giRDOpt_B8OnlyFlag:
	.word	0                               # 0x0
	.size	giRDOpt_B8OnlyFlag, 4

	.type	gaaiMBAFF_NZCoeff,@object       # @gaaiMBAFF_NZCoeff
	.bss
	.globl	gaaiMBAFF_NZCoeff
	.p2align	2, 0x0
gaaiMBAFF_NZCoeff:
	.zero	192
	.size	gaaiMBAFF_NZCoeff, 192

	.type	Bytes_After_Header,@object      # @Bytes_After_Header
	.section	.sbss,"aw",@nobits
	.globl	Bytes_After_Header
	.p2align	2, 0x0
Bytes_After_Header:
	.word	0                               # 0x0
	.size	Bytes_After_Header, 4

	.type	rpc_bytes_to_go,@object         # @rpc_bytes_to_go
	.globl	rpc_bytes_to_go
	.p2align	2, 0x0
rpc_bytes_to_go:
	.word	0                               # 0x0
	.size	rpc_bytes_to_go, 4

	.type	rpc_bits_to_go,@object          # @rpc_bits_to_go
	.globl	rpc_bits_to_go
	.p2align	2, 0x0
rpc_bits_to_go:
	.word	0                               # 0x0
	.size	rpc_bits_to_go, 4

	.type	p_stat,@object                  # @p_stat
	.globl	p_stat
	.p2align	3, 0x0
p_stat:
	.quad	0
	.size	p_stat, 8

	.type	p_log,@object                   # @p_log
	.globl	p_log
	.p2align	3, 0x0
p_log:
	.quad	0
	.size	p_log, 8

	.type	p_trace,@object                 # @p_trace
	.globl	p_trace
	.p2align	3, 0x0
p_trace:
	.quad	0
	.size	p_trace, 8

	.type	p_in,@object                    # @p_in
	.globl	p_in
	.p2align	2, 0x0
p_in:
	.word	0                               # 0x0
	.size	p_in, 4

	.type	p_dec,@object                   # @p_dec
	.globl	p_dec
	.p2align	2, 0x0
p_dec:
	.word	0                               # 0x0
	.size	p_dec, 4

	.type	errortext,@object               # @errortext
	.bss
	.globl	errortext
errortext:
	.zero	300
	.size	errortext, 300

	.type	resTrans_R,@object              # @resTrans_R
	.globl	resTrans_R
	.p2align	2, 0x0
resTrans_R:
	.zero	1024
	.size	resTrans_R, 1024

	.type	resTrans_G,@object              # @resTrans_G
	.globl	resTrans_G
	.p2align	2, 0x0
resTrans_G:
	.zero	1024
	.size	resTrans_G, 1024

	.type	resTrans_B,@object              # @resTrans_B
	.globl	resTrans_B
	.p2align	2, 0x0
resTrans_B:
	.zero	1024
	.size	resTrans_B, 1024

	.type	rec_resR,@object                # @rec_resR
	.globl	rec_resR
	.p2align	2, 0x0
rec_resR:
	.zero	1024
	.size	rec_resR, 1024

	.type	rec_resG,@object                # @rec_resG
	.globl	rec_resG
	.p2align	2, 0x0
rec_resG:
	.zero	1024
	.size	rec_resG, 1024

	.type	rec_resB,@object                # @rec_resB
	.globl	rec_resB
	.p2align	2, 0x0
rec_resB:
	.zero	1024
	.size	rec_resB, 1024

	.type	mprRGB,@object                  # @mprRGB
	.globl	mprRGB
	.p2align	2, 0x0
mprRGB:
	.zero	3072
	.size	mprRGB, 3072

	.type	dc_level,@object                # @dc_level
	.globl	dc_level
	.p2align	2, 0x0
dc_level:
	.zero	128
	.size	dc_level, 128

	.type	dc_level_temp,@object           # @dc_level_temp
	.globl	dc_level_temp
	.p2align	2, 0x0
dc_level_temp:
	.zero	128
	.size	dc_level_temp, 128

	.type	cbp_chroma_block,@object        # @cbp_chroma_block
	.globl	cbp_chroma_block
	.p2align	2, 0x0
cbp_chroma_block:
	.zero	128
	.size	cbp_chroma_block, 128

	.type	cbp_chroma_block_temp,@object   # @cbp_chroma_block_temp
	.globl	cbp_chroma_block_temp
	.p2align	2, 0x0
cbp_chroma_block_temp:
	.zero	128
	.size	cbp_chroma_block_temp, 128

	.type	b8_ipredmode8x8,@object         # @b8_ipredmode8x8
	.globl	b8_ipredmode8x8
b8_ipredmode8x8:
	.zero	16
	.size	b8_ipredmode8x8, 16

	.type	b8_intra_pred_modes8x8,@object  # @b8_intra_pred_modes8x8
	.globl	b8_intra_pred_modes8x8
b8_intra_pred_modes8x8:
	.zero	16
	.size	b8_intra_pred_modes8x8, 16

	.type	gop_structure,@object           # @gop_structure
	.section	.sbss,"aw",@nobits
	.globl	gop_structure
	.p2align	3, 0x0
gop_structure:
	.quad	0
	.size	gop_structure, 8

	.type	rdopt,@object                   # @rdopt
	.globl	rdopt
	.p2align	3, 0x0
rdopt:
	.quad	0
	.size	rdopt, 8

	.type	rddata_top_frame_mb,@object     # @rddata_top_frame_mb
	.bss
	.globl	rddata_top_frame_mb
	.p2align	3, 0x0
rddata_top_frame_mb:
	.zero	1736
	.size	rddata_top_frame_mb, 1736

	.type	rddata_bot_frame_mb,@object     # @rddata_bot_frame_mb
	.globl	rddata_bot_frame_mb
	.p2align	3, 0x0
rddata_bot_frame_mb:
	.zero	1736
	.size	rddata_bot_frame_mb, 1736

	.type	rddata_top_field_mb,@object     # @rddata_top_field_mb
	.globl	rddata_top_field_mb
	.p2align	3, 0x0
rddata_top_field_mb:
	.zero	1736
	.size	rddata_top_field_mb, 1736

	.type	rddata_bot_field_mb,@object     # @rddata_bot_field_mb
	.globl	rddata_bot_field_mb
	.p2align	3, 0x0
rddata_bot_field_mb:
	.zero	1736
	.size	rddata_bot_field_mb, 1736

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
