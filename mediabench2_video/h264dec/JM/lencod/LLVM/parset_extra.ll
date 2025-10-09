; ModuleID = 'src/parset.c'
source_filename = "src/parset.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

@PicParSet = dso_local local_unnamed_addr global [256 x ptr] zeroinitializer, align 8
@input = external dso_local local_unnamed_addr global ptr, align 8
@active_sps = external dso_local local_unnamed_addr global ptr, align 8
@active_pps = external dso_local local_unnamed_addr global ptr, align 8
@__const.GenerateSequenceParameterSet.SubWidthC = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 2, i32 1], align 4
@__const.GenerateSequenceParameterSet.SubHeightC = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 1, i32 1], align 4
@.str = private unnamed_addr constant [12 x i8] c"sps != NULL\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"src/parset.c\00", align 1
@__PRETTY_FUNCTION__.GenerateSequenceParameterSet = private unnamed_addr constant [67 x i8] c"void GenerateSequenceParameterSet(seq_parameter_set_rbsp_t *, int)\00", align 1
@img = external dso_local local_unnamed_addr global ptr, align 8
@log2_max_frame_num_minus4 = external dso_local local_unnamed_addr global i32, align 4
@log2_max_pic_order_cnt_lsb_minus4 = external dso_local local_unnamed_addr global i32, align 4
@Co_located = external dso_local local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"automatic frame cropping (width) not possible\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"automatic frame cropping (height) not possible\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"GeneratePictureParameterSet: slice_group_id\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"0==1\00", align 1
@__PRETTY_FUNCTION__.GeneratePictureParameterSet = private unnamed_addr constant [114 x i8] c"void GeneratePictureParameterSet(pic_parameter_set_rbsp_t *, seq_parameter_set_rbsp_t *, int, int, int, int, int)\00", align 1
@ZZ_SCAN = internal unnamed_addr constant [16 x i8] c"\00\01\04\08\05\02\03\06\09\0C\0D\0A\07\0B\0E\0F", align 1
@ZZ_SCAN8 = internal unnamed_addr constant [64 x i8] c"\00\01\08\10\09\02\03\0A\11\18 \19\12\0B\04\05\0C\13\1A!(0)\22\1B\14\0D\06\07\0E\15\1C#*1892+$\1D\16\0F\17\1E%,3:;4-&\1F'.5<=6/7>?", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"   : delta_sl   \00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"rbsp != NULL\00", align 1
@__PRETTY_FUNCTION__.GenerateSeq_parameter_set_rbsp = private unnamed_addr constant [80 x i8] c"int GenerateSeq_parameter_set_rbsp(seq_parameter_set_rbsp_t *, unsigned char *)\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"SeqParameterSet:bitstream\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"SPS: profile_idc\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"SPS: constrained_set0_flag\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"SPS: constrained_set1_flag\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"SPS: constrained_set2_flag\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"SPS: constrained_set3_flag\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"SPS: reserved_zero_4bits\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"SPS: level_idc\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"SPS: seq_parameter_set_id\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"SPS: chroma_format_idc\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"SPS: residue_transform_flag\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"SPS: bit_depth_luma_minus8\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"SPS: bit_depth_chroma_minus8\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"SPS: lossless_qpprime_y_zero_flag\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"SPS: seq_scaling_matrix_present_flag\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"SPS: seq_scaling_list_present_flag\00", align 1
@ScalingList4x4input = external dso_local local_unnamed_addr global [6 x [16 x i16]], align 2
@ScalingList4x4 = external dso_local local_unnamed_addr global [6 x [16 x i16]], align 2
@UseDefaultScalingMatrix4x4Flag = external dso_local local_unnamed_addr global [6 x i16], align 2
@ScalingList8x8input = external dso_local local_unnamed_addr global [2 x [64 x i16]], align 2
@ScalingList8x8 = external dso_local local_unnamed_addr global [2 x [64 x i16]], align 2
@UseDefaultScalingMatrix8x8Flag = external dso_local local_unnamed_addr global [2 x i16], align 2
@.str.25 = private unnamed_addr constant [31 x i8] c"SPS: log2_max_frame_num_minus4\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"SPS: pic_order_cnt_type\00", align 1
@.str.27 = private unnamed_addr constant [39 x i8] c"SPS: log2_max_pic_order_cnt_lsb_minus4\00", align 1
@.str.28 = private unnamed_addr constant [38 x i8] c"SPS: delta_pic_order_always_zero_flag\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"SPS: offset_for_non_ref_pic\00", align 1
@.str.30 = private unnamed_addr constant [36 x i8] c"SPS: offset_for_top_to_bottom_field\00", align 1
@.str.31 = private unnamed_addr constant [43 x i8] c"SPS: num_ref_frames_in_pic_order_cnt_cycle\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"SPS: offset_for_ref_frame\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"SPS: num_ref_frames\00", align 1
@.str.34 = private unnamed_addr constant [42 x i8] c"SPS: gaps_in_frame_num_value_allowed_flag\00", align 1
@.str.35 = private unnamed_addr constant [29 x i8] c"SPS: pic_width_in_mbs_minus1\00", align 1
@.str.36 = private unnamed_addr constant [36 x i8] c"SPS: pic_height_in_map_units_minus1\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"SPS: frame_mbs_only_flag\00", align 1
@.str.38 = private unnamed_addr constant [34 x i8] c"SPS: mb_adaptive_frame_field_flag\00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"SPS: direct_8x8_inference_flag\00", align 1
@.str.40 = private unnamed_addr constant [25 x i8] c"SPS: frame_cropping_flag\00", align 1
@.str.41 = private unnamed_addr constant [37 x i8] c"SPS: frame_cropping_rect_left_offset\00", align 1
@.str.42 = private unnamed_addr constant [38 x i8] c"SPS: frame_cropping_rect_right_offset\00", align 1
@.str.43 = private unnamed_addr constant [36 x i8] c"SPS: frame_cropping_rect_top_offset\00", align 1
@.str.44 = private unnamed_addr constant [39 x i8] c"SPS: frame_cropping_rect_bottom_offset\00", align 1
@.str.45 = private unnamed_addr constant [33 x i8] c"SPS: vui_parameters_present_flag\00", align 1
@__PRETTY_FUNCTION__.GeneratePic_parameter_set_rbsp = private unnamed_addr constant [80 x i8] c"int GeneratePic_parameter_set_rbsp(pic_parameter_set_rbsp_t *, unsigned char *)\00", align 1
@.str.46 = private unnamed_addr constant [26 x i8] c"PicParameterSet:bitstream\00", align 1
@.str.47 = private unnamed_addr constant [26 x i8] c"PPS: pic_parameter_set_id\00", align 1
@.str.48 = private unnamed_addr constant [26 x i8] c"PPS: seq_parameter_set_id\00", align 1
@.str.49 = private unnamed_addr constant [30 x i8] c"PPS: entropy_coding_mode_flag\00", align 1
@.str.50 = private unnamed_addr constant [28 x i8] c"PPS: pic_order_present_flag\00", align 1
@.str.51 = private unnamed_addr constant [29 x i8] c"PPS: num_slice_groups_minus1\00", align 1
@.str.52 = private unnamed_addr constant [26 x i8] c"PPS: slice_group_map_type\00", align 1
@.str.53 = private unnamed_addr constant [26 x i8] c"PPS: run_length_minus1[i]\00", align 1
@.str.54 = private unnamed_addr constant [17 x i8] c"PPS: top_left[i]\00", align 1
@.str.55 = private unnamed_addr constant [21 x i8] c"PPS: bottom_right[i]\00", align 1
@.str.56 = private unnamed_addr constant [39 x i8] c"PPS: slice_group_change_direction_flag\00", align 1
@.str.57 = private unnamed_addr constant [36 x i8] c"PPS: slice_group_change_rate_minus1\00", align 1
@.str.58 = private unnamed_addr constant [34 x i8] c"PPS: pic_size_in_map_units_minus1\00", align 1
@.str.59 = private unnamed_addr constant [24 x i8] c"PPS: >slice_group_id[i]\00", align 1
@.str.60 = private unnamed_addr constant [34 x i8] c"PPS: num_ref_idx_l0_active_minus1\00", align 1
@.str.61 = private unnamed_addr constant [34 x i8] c"PPS: num_ref_idx_l1_active_minus1\00", align 1
@.str.62 = private unnamed_addr constant [24 x i8] c"PPS: weighted_pred_flag\00", align 1
@.str.63 = private unnamed_addr constant [25 x i8] c"PPS: weighted_bipred_idc\00", align 1
@.str.64 = private unnamed_addr constant [25 x i8] c"PPS: pic_init_qp_minus26\00", align 1
@.str.65 = private unnamed_addr constant [25 x i8] c"PPS: pic_init_qs_minus26\00", align 1
@.str.66 = private unnamed_addr constant [28 x i8] c"PPS: chroma_qp_index_offset\00", align 1
@.str.67 = private unnamed_addr constant [44 x i8] c"PPS: deblocking_filter_control_present_flag\00", align 1
@.str.68 = private unnamed_addr constant [33 x i8] c"PPS: constrained_intra_pred_flag\00", align 1
@.str.69 = private unnamed_addr constant [36 x i8] c"PPS: redundant_pic_cnt_present_flag\00", align 1
@.str.70 = private unnamed_addr constant [29 x i8] c"PPS: transform_8x8_mode_flag\00", align 1
@.str.71 = private unnamed_addr constant [37 x i8] c"PPS: pic_scaling_matrix_present_flag\00", align 1
@.str.72 = private unnamed_addr constant [35 x i8] c"PPS: pic_scaling_list_present_flag\00", align 1
@.str.73 = private unnamed_addr constant [35 x i8] c"PPS: second_chroma_qp_index_offset\00", align 1
@.str.75 = private unnamed_addr constant [36 x i8] c"VUI: aspect_ratio_info_present_flag\00", align 1
@.str.76 = private unnamed_addr constant [32 x i8] c"VUI: overscan_info_present_flag\00", align 1
@.str.77 = private unnamed_addr constant [36 x i8] c"VUI: video_signal_type_present_flag\00", align 1
@.str.78 = private unnamed_addr constant [18 x i8] c"VUI: video format\00", align 1
@.str.79 = private unnamed_addr constant [27 x i8] c"VUI: video_full_range_flag\00", align 1
@.str.80 = private unnamed_addr constant [36 x i8] c"VUI: color_description_present_flag\00", align 1
@.str.81 = private unnamed_addr constant [22 x i8] c"VUI: colour primaries\00", align 1
@.str.82 = private unnamed_addr constant [30 x i8] c"VUI: transfer characteristics\00", align 1
@.str.83 = private unnamed_addr constant [25 x i8] c"VUI: matrix coefficients\00", align 1
@.str.84 = private unnamed_addr constant [34 x i8] c"VUI: chroma_loc_info_present_flag\00", align 1
@.str.85 = private unnamed_addr constant [30 x i8] c"VUI: timing_info_present_flag\00", align 1
@.str.86 = private unnamed_addr constant [37 x i8] c"VUI: nal_hrd_parameters_present_flag\00", align 1
@.str.87 = private unnamed_addr constant [37 x i8] c"VUI: vcl_hrd_parameters_present_flag\00", align 1
@.str.88 = private unnamed_addr constant [28 x i8] c"VUI: pic_struc_present_flag\00", align 1
@.str.89 = private unnamed_addr constant [32 x i8] c"VUI: bitstream_restriction_flag\00", align 1
@str = private unnamed_addr constant [48 x i8] c"Parset.c: slice_group_map_type invalid, default\00", align 1
@str.91 = private unnamed_addr constant [75 x i8] c"Sequence Parameter VUI not yet implemented, this should never happen, exit\00", align 1
@str.92 = private unnamed_addr constant [58 x i8] c"test: writing Sequence Parameter VUI to signal RGB format\00", align 1

; Function Attrs: nounwind
define dso_local void @GenerateParameterSets() local_unnamed_addr #0 {
  %1 = tail call ptr @AllocSPS() #9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) @PicParSet, i8 0, i64 2048, i1 false), !tbaa !6
  tail call void @GenerateSequenceParameterSet(ptr noundef %1, i32 signext poison)
  %2 = load ptr, ptr @input, align 8, !tbaa !6
  %3 = getelementptr inbounds i8, ptr %2, i64 64
  %4 = load i32, ptr %3, align 8, !tbaa !10
  %5 = icmp eq i32 %4, 0
  %6 = tail call ptr @AllocPPS() #9
  store ptr %6, ptr @PicParSet, align 8, !tbaa !6
  br i1 %5, label %43, label %7

7:                                                ; preds = %0
  %8 = tail call ptr @AllocPPS() #9
  store ptr %8, ptr getelementptr inbounds (i8, ptr @PicParSet, i64 8), align 8, !tbaa !6
  %9 = tail call ptr @AllocPPS() #9
  store ptr %9, ptr getelementptr inbounds (i8, ptr @PicParSet, i64 16), align 8, !tbaa !6
  %10 = getelementptr inbounds i8, ptr %1, i64 4
  %11 = load i32, ptr %10, align 4, !tbaa !14
  %12 = icmp ugt i32 %11, 99
  %13 = load ptr, ptr @PicParSet, align 8, !tbaa !6
  %14 = load ptr, ptr @input, align 8, !tbaa !6
  br i1 %12, label %15, label %32

15:                                               ; preds = %7
  %16 = getelementptr inbounds i8, ptr %14, i64 3988
  %17 = load i32, ptr %16, align 4, !tbaa !18
  %18 = getelementptr inbounds i8, ptr %14, i64 3992
  %19 = load i32, ptr %18, align 8, !tbaa !19
  tail call void @GeneratePictureParameterSet(ptr noundef %13, ptr noundef nonnull %1, i32 noundef signext 0, i32 noundef signext 0, i32 noundef signext 0, i32 noundef signext %17, i32 noundef signext %19)
  %20 = load ptr, ptr getelementptr inbounds (i8, ptr @PicParSet, i64 8), align 8, !tbaa !6
  %21 = load ptr, ptr @input, align 8, !tbaa !6
  %22 = getelementptr inbounds i8, ptr %21, i64 3988
  %23 = load i32, ptr %22, align 4, !tbaa !18
  %24 = getelementptr inbounds i8, ptr %21, i64 3992
  %25 = load i32, ptr %24, align 8, !tbaa !19
  tail call void @GeneratePictureParameterSet(ptr noundef %20, ptr noundef nonnull %1, i32 noundef signext 1, i32 noundef signext 1, i32 noundef signext 1, i32 noundef signext %23, i32 noundef signext %25)
  %26 = load ptr, ptr getelementptr inbounds (i8, ptr @PicParSet, i64 16), align 8, !tbaa !6
  %27 = load ptr, ptr @input, align 8, !tbaa !6
  %28 = getelementptr inbounds i8, ptr %27, i64 3988
  %29 = load i32, ptr %28, align 4, !tbaa !18
  %30 = getelementptr inbounds i8, ptr %27, i64 3992
  %31 = load i32, ptr %30, align 8, !tbaa !19
  tail call void @GeneratePictureParameterSet(ptr noundef %26, ptr noundef nonnull %1, i32 noundef signext 2, i32 noundef signext 1, i32 noundef signext 2, i32 noundef signext %29, i32 noundef signext %31)
  br label %60

32:                                               ; preds = %7
  %33 = getelementptr inbounds i8, ptr %14, i64 3104
  %34 = load i32, ptr %33, align 8, !tbaa !20
  tail call void @GeneratePictureParameterSet(ptr noundef %13, ptr noundef nonnull %1, i32 noundef signext 0, i32 noundef signext 0, i32 noundef signext 0, i32 noundef signext %34, i32 noundef signext 0)
  %35 = load ptr, ptr getelementptr inbounds (i8, ptr @PicParSet, i64 8), align 8, !tbaa !6
  %36 = load ptr, ptr @input, align 8, !tbaa !6
  %37 = getelementptr inbounds i8, ptr %36, i64 3104
  %38 = load i32, ptr %37, align 8, !tbaa !20
  tail call void @GeneratePictureParameterSet(ptr noundef %35, ptr noundef nonnull %1, i32 noundef signext 1, i32 noundef signext 1, i32 noundef signext 1, i32 noundef signext %38, i32 noundef signext 0)
  %39 = load ptr, ptr getelementptr inbounds (i8, ptr @PicParSet, i64 16), align 8, !tbaa !6
  %40 = load ptr, ptr @input, align 8, !tbaa !6
  %41 = getelementptr inbounds i8, ptr %40, i64 3104
  %42 = load i32, ptr %41, align 8, !tbaa !20
  tail call void @GeneratePictureParameterSet(ptr noundef %39, ptr noundef nonnull %1, i32 noundef signext 2, i32 noundef signext 1, i32 noundef signext 2, i32 noundef signext %42, i32 noundef signext 0)
  br label %60

43:                                               ; preds = %0
  %44 = getelementptr inbounds i8, ptr %1, i64 4
  %45 = load i32, ptr %44, align 4, !tbaa !14
  %46 = icmp ugt i32 %45, 99
  %47 = load ptr, ptr @input, align 8, !tbaa !6
  %48 = getelementptr inbounds i8, ptr %47, i64 1904
  %49 = load i32, ptr %48, align 8, !tbaa !21
  %50 = getelementptr inbounds i8, ptr %47, i64 1908
  %51 = load i32, ptr %50, align 4, !tbaa !22
  br i1 %46, label %52, label %57

52:                                               ; preds = %43
  %53 = getelementptr inbounds i8, ptr %47, i64 3988
  %54 = load i32, ptr %53, align 4, !tbaa !18
  %55 = getelementptr inbounds i8, ptr %47, i64 3992
  %56 = load i32, ptr %55, align 8, !tbaa !19
  tail call void @GeneratePictureParameterSet(ptr noundef %6, ptr noundef nonnull %1, i32 noundef signext 0, i32 noundef signext %49, i32 noundef signext %51, i32 noundef signext %54, i32 noundef signext %56)
  br label %60

57:                                               ; preds = %43
  %58 = getelementptr inbounds i8, ptr %47, i64 3104
  %59 = load i32, ptr %58, align 8, !tbaa !20
  tail call void @GeneratePictureParameterSet(ptr noundef %6, ptr noundef nonnull %1, i32 noundef signext 0, i32 noundef signext %49, i32 noundef signext %51, i32 noundef signext %59, i32 noundef signext 0)
  br label %60

60:                                               ; preds = %52, %57, %15, %32
  store ptr %1, ptr @active_sps, align 8, !tbaa !6
  %61 = load ptr, ptr @PicParSet, align 8, !tbaa !6
  store ptr %61, ptr @active_pps, align 8, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare dso_local ptr @AllocSPS() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local void @GenerateSequenceParameterSet(ptr noundef %0, i32 signext %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @input, align 8, !tbaa !6
  %4 = load i32, ptr %3, align 8, !tbaa !23
  %5 = add i32 %4, -100
  %6 = icmp ult i32 %5, 45
  %7 = zext nneg i32 %5 to i45
  %8 = lshr i45 -17592181849087, %7
  %9 = trunc i45 %8 to i1
  %10 = select i1 %6, i1 %9, i1 false
  %11 = icmp eq ptr %0, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef signext 224, ptr noundef nonnull @__PRETTY_FUNCTION__.GenerateSequenceParameterSet) #10
  unreachable

13:                                               ; preds = %2
  %14 = getelementptr inbounds i8, ptr %0, i64 4
  store i32 %4, ptr %14, align 4, !tbaa !14
  %15 = getelementptr inbounds i8, ptr %3, i64 4
  %16 = load i32, ptr %15, align 4, !tbaa !24
  %17 = getelementptr inbounds i8, ptr %0, i64 24
  store i32 %16, ptr %17, align 4, !tbaa !25
  %18 = getelementptr inbounds i8, ptr %0, i64 8
  %19 = getelementptr inbounds i8, ptr %0, i64 28
  store i32 0, ptr %19, align 4, !tbaa !26
  %20 = getelementptr inbounds i8, ptr %3, i64 3968
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  %21 = load i32, ptr %20, align 8, !tbaa !27
  %22 = add nsw i32 %21, -8
  %23 = getelementptr inbounds i8, ptr %0, i64 72
  store i32 %22, ptr %23, align 4, !tbaa !28
  %24 = getelementptr inbounds i8, ptr %3, i64 3972
  %25 = load i32, ptr %24, align 4, !tbaa !29
  %26 = add nsw i32 %25, -8
  %27 = getelementptr inbounds i8, ptr %0, i64 76
  store i32 %26, ptr %27, align 4, !tbaa !30
  %28 = getelementptr inbounds i8, ptr %3, i64 3996
  %29 = load i32, ptr %28, align 4, !tbaa !31
  %30 = icmp eq i32 %4, 144
  %31 = and i32 %29, 1
  %32 = select i1 %30, i32 %31, i32 0
  %33 = load ptr, ptr @img, align 8, !tbaa !6
  %34 = getelementptr inbounds i8, ptr %33, i64 90552
  store i32 %32, ptr %34, align 8, !tbaa !32
  %35 = getelementptr inbounds i8, ptr %3, i64 4000
  %36 = load i32, ptr %35, align 8, !tbaa !36
  %37 = getelementptr inbounds i8, ptr %33, i64 90572
  store i32 %36, ptr %37, align 4, !tbaa !37
  %38 = load i32, ptr @log2_max_frame_num_minus4, align 4, !tbaa !38
  %39 = getelementptr inbounds i8, ptr %0, i64 80
  store i32 %38, ptr %39, align 4, !tbaa !39
  %40 = load i32, ptr @log2_max_pic_order_cnt_lsb_minus4, align 4, !tbaa !38
  %41 = getelementptr inbounds i8, ptr %0, i64 88
  store i32 %40, ptr %41, align 4, !tbaa !40
  %42 = getelementptr inbounds i8, ptr %3, i64 3880
  %43 = load i32, ptr %42, align 8, !tbaa !41
  %44 = getelementptr inbounds i8, ptr %0, i64 84
  store i32 %43, ptr %44, align 4, !tbaa !42
  %45 = getelementptr inbounds i8, ptr %33, i64 90240
  %46 = load i32, ptr %45, align 8, !tbaa !43
  %47 = getelementptr inbounds i8, ptr %0, i64 104
  store i32 %46, ptr %47, align 4, !tbaa !44
  %48 = getelementptr inbounds i8, ptr %33, i64 90228
  %49 = load i32, ptr %48, align 4, !tbaa !45
  %50 = getelementptr inbounds i8, ptr %0, i64 92
  store i32 %49, ptr %50, align 4, !tbaa !46
  %51 = getelementptr inbounds i8, ptr %33, i64 90232
  %52 = load i32, ptr %51, align 8, !tbaa !47
  %53 = getelementptr inbounds i8, ptr %0, i64 96
  store i32 %52, ptr %53, align 4, !tbaa !48
  %54 = getelementptr inbounds i8, ptr %33, i64 90236
  %55 = load i32, ptr %54, align 4, !tbaa !49
  %56 = getelementptr inbounds i8, ptr %0, i64 100
  store i32 %55, ptr %56, align 4, !tbaa !50
  %57 = icmp eq i32 %46, 0
  br i1 %57, label %70, label %58

58:                                               ; preds = %13
  %59 = getelementptr inbounds i8, ptr %33, i64 90244
  %60 = getelementptr inbounds i8, ptr %0, i64 108
  br label %61

61:                                               ; preds = %58, %61
  %62 = phi i64 [ 0, %58 ], [ %66, %61 ]
  %63 = getelementptr inbounds [1 x i32], ptr %59, i64 0, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !38
  %65 = getelementptr inbounds [256 x i32], ptr %60, i64 0, i64 %62
  store i32 %64, ptr %65, align 4, !tbaa !38
  %66 = add nuw nsw i64 %62, 1
  %67 = load i32, ptr %45, align 8, !tbaa !43
  %68 = zext i32 %67 to i64
  %69 = icmp ult i64 %66, %68
  br i1 %69, label %61, label %70

70:                                               ; preds = %61, %13
  %71 = getelementptr inbounds i8, ptr %3, i64 36
  %72 = load i32, ptr %71, align 4, !tbaa !51
  %73 = getelementptr inbounds i8, ptr %0, i64 1132
  store i32 %72, ptr %73, align 4, !tbaa !52
  %74 = getelementptr inbounds i8, ptr %0, i64 1136
  store i32 0, ptr %74, align 4, !tbaa !53
  %75 = getelementptr inbounds i8, ptr %3, i64 3552
  %76 = load i32, ptr %75, align 8, !tbaa !54
  %77 = icmp eq i32 %76, 0
  %78 = getelementptr inbounds i8, ptr %3, i64 3556
  %79 = load i32, ptr %78, align 4, !tbaa !55
  %80 = icmp eq i32 %79, 0
  %81 = select i1 %77, i1 %80, i1 false
  %82 = zext i1 %81 to i32
  %83 = getelementptr inbounds i8, ptr %0, i64 1148
  store i32 %82, ptr %83, align 4, !tbaa !56
  %84 = getelementptr inbounds i8, ptr %3, i64 68
  %85 = load i32, ptr %84, align 4, !tbaa !57
  %86 = getelementptr inbounds i8, ptr %33, i64 90576
  %87 = load i32, ptr %86, align 8, !tbaa !58
  %88 = add nsw i32 %87, %85
  %89 = sdiv i32 %88, 16
  %90 = add nsw i32 %89, -1
  %91 = getelementptr inbounds i8, ptr %0, i64 1140
  store i32 %90, ptr %91, align 4, !tbaa !59
  %92 = getelementptr inbounds i8, ptr %3, i64 72
  %93 = load i32, ptr %92, align 8, !tbaa !60
  %94 = getelementptr inbounds i8, ptr %33, i64 90580
  %95 = load i32, ptr %94, align 4, !tbaa !61
  %96 = add nsw i32 %95, %93
  %97 = sdiv i32 %96, 16
  %98 = xor i1 %81, true
  %99 = zext i1 %98 to i32
  %100 = lshr i32 %97, %99
  %101 = add i32 %100, -1
  %102 = getelementptr inbounds i8, ptr %0, i64 1144
  store i32 %101, ptr %102, align 4, !tbaa !62
  %103 = icmp ne i32 %79, 0
  %104 = zext i1 %103 to i32
  %105 = getelementptr inbounds i8, ptr %0, i64 1152
  store i32 %104, ptr %105, align 4, !tbaa !63
  %106 = getelementptr inbounds i8, ptr %3, i64 1260
  %107 = load i32, ptr %106, align 4, !tbaa !64
  %108 = getelementptr inbounds i8, ptr %0, i64 1156
  store i32 %107, ptr %108, align 4, !tbaa !65
  %109 = getelementptr inbounds i8, ptr %3, i64 3984
  %110 = load i32, ptr %109, align 8, !tbaa !66
  %111 = icmp ne i32 %110, 0
  %112 = getelementptr inbounds i8, ptr %3, i64 76
  %113 = load i32, ptr %112, align 4, !tbaa !67
  %114 = icmp eq i32 %113, 3
  %115 = select i1 %111, i1 %114, i1 false
  %116 = zext i1 %115 to i32
  %117 = getelementptr inbounds i8, ptr %0, i64 1180
  store i32 %116, ptr %117, align 4, !tbaa !68
  %118 = getelementptr inbounds i8, ptr %0, i64 32
  store i32 %113, ptr %118, align 4, !tbaa !69
  %119 = shl i32 %90, 4
  %120 = add i32 %119, 16
  %121 = select i1 %81, i32 4, i32 5
  %122 = shl i32 %100, %121
  %123 = tail call ptr @alloc_colocated(i32 noundef signext %120, i32 noundef signext %122, i32 noundef signext %104) #9
  store ptr %123, ptr @Co_located, align 8, !tbaa !6
  br i1 %10, label %124, label %173

124:                                              ; preds = %70
  %125 = load ptr, ptr @input, align 8, !tbaa !6
  %126 = getelementptr inbounds i8, ptr %125, i64 3928
  %127 = load i32, ptr %126, align 8, !tbaa !70
  %128 = and i32 %127, 1
  %129 = getelementptr inbounds i8, ptr %0, i64 36
  store i32 %128, ptr %129, align 4, !tbaa !71
  %130 = getelementptr inbounds i8, ptr %125, i64 3892
  %131 = getelementptr inbounds i8, ptr %0, i64 40
  %132 = getelementptr inbounds i8, ptr %125, i64 3932
  %133 = load i32, ptr %132, align 4, !tbaa !38
  %134 = and i32 %133, 1
  store i32 %134, ptr %131, align 4, !tbaa !38
  %135 = getelementptr inbounds i8, ptr %125, i64 3936
  %136 = load i32, ptr %135, align 4, !tbaa !38
  %137 = and i32 %136, 1
  %138 = getelementptr inbounds i8, ptr %0, i64 44
  store i32 %137, ptr %138, align 4, !tbaa !38
  %139 = getelementptr inbounds i8, ptr %125, i64 3940
  %140 = load i32, ptr %139, align 4, !tbaa !38
  %141 = and i32 %140, 1
  %142 = getelementptr inbounds i8, ptr %0, i64 48
  store i32 %141, ptr %142, align 4, !tbaa !38
  %143 = getelementptr inbounds i8, ptr %125, i64 3944
  %144 = load i32, ptr %143, align 4, !tbaa !38
  %145 = and i32 %144, 1
  %146 = getelementptr inbounds i8, ptr %0, i64 52
  store i32 %145, ptr %146, align 4, !tbaa !38
  %147 = getelementptr inbounds i8, ptr %125, i64 3948
  %148 = load i32, ptr %147, align 4, !tbaa !38
  %149 = and i32 %148, 1
  %150 = getelementptr inbounds i8, ptr %0, i64 56
  store i32 %149, ptr %150, align 4, !tbaa !38
  %151 = getelementptr inbounds i8, ptr %125, i64 3952
  %152 = load i32, ptr %151, align 4, !tbaa !38
  %153 = and i32 %152, 1
  %154 = getelementptr inbounds i8, ptr %0, i64 60
  store i32 %153, ptr %154, align 4, !tbaa !38
  %155 = load i32, ptr %130, align 4, !tbaa !72
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %161, label %157

157:                                              ; preds = %124
  %158 = getelementptr inbounds i8, ptr %125, i64 3956
  %159 = load i32, ptr %158, align 4, !tbaa !38
  %160 = and i32 %159, 1
  br label %161

161:                                              ; preds = %124, %157
  %162 = phi i32 [ %160, %157 ], [ 0, %124 ]
  %163 = getelementptr inbounds i8, ptr %0, i64 64
  store i32 %162, ptr %163, align 4, !tbaa !38
  %164 = load i32, ptr %130, align 4, !tbaa !72
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %161
  %167 = getelementptr inbounds i8, ptr %125, i64 3960
  %168 = load i32, ptr %167, align 4, !tbaa !38
  %169 = and i32 %168, 1
  %170 = getelementptr inbounds i8, ptr %0, i64 68
  store i32 %169, ptr %170, align 4, !tbaa !38
  br label %175

171:                                              ; preds = %161
  %172 = getelementptr inbounds i8, ptr %0, i64 68
  store i32 0, ptr %172, align 4, !tbaa !38
  br label %175

173:                                              ; preds = %70
  %174 = getelementptr inbounds i8, ptr %0, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %174, i8 0, i64 36, i1 false)
  br label %175

175:                                              ; preds = %166, %171, %173
  %176 = load ptr, ptr @img, align 8, !tbaa !6
  %177 = getelementptr inbounds i8, ptr %176, i64 90576
  %178 = load i32, ptr %177, align 8, !tbaa !58
  %179 = icmp eq i32 %178, 0
  %180 = getelementptr inbounds i8, ptr %176, i64 90580
  %181 = load i32, ptr %180, align 4, !tbaa !61
  %182 = icmp eq i32 %181, 0
  %183 = select i1 %179, i1 %182, i1 false
  %184 = getelementptr inbounds i8, ptr %0, i64 1160
  br i1 %183, label %223, label %185

185:                                              ; preds = %175
  store i32 1, ptr %184, align 4, !tbaa !73
  %186 = getelementptr inbounds i8, ptr %0, i64 1164
  store i32 0, ptr %186, align 4, !tbaa !74
  %187 = getelementptr inbounds i8, ptr %0, i64 1172
  store i32 0, ptr %187, align 4, !tbaa !75
  %188 = load i32, ptr %118, align 4, !tbaa !69
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds [4 x i32], ptr @__const.GenerateSequenceParameterSet.SubWidthC, i64 0, i64 %189
  %191 = load i32, ptr %190, align 4, !tbaa !38
  %192 = freeze i32 %178
  %193 = freeze i32 %191
  %194 = sdiv i32 %192, %193
  %195 = getelementptr inbounds i8, ptr %0, i64 1168
  store i32 %194, ptr %195, align 4, !tbaa !76
  %196 = getelementptr inbounds [4 x i32], ptr @__const.GenerateSequenceParameterSet.SubHeightC, i64 0, i64 %189
  %197 = load i32, ptr %196, align 4, !tbaa !38
  %198 = load i32, ptr %83, align 4, !tbaa !56
  %199 = sub i32 2, %198
  %200 = mul i32 %199, %197
  %201 = udiv i32 %181, %200
  %202 = getelementptr inbounds i8, ptr %0, i64 1176
  store i32 %201, ptr %202, align 4, !tbaa !77
  %203 = mul i32 %194, %193
  %204 = sub i32 %192, %203
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %217, label %206

206:                                              ; preds = %185
  tail call void @error(ptr noundef nonnull @.str.2, i32 noundef signext 500) #9
  %207 = load ptr, ptr @img, align 8, !tbaa !6
  %208 = getelementptr inbounds i8, ptr %207, i64 90580
  %209 = load i32, ptr %208, align 4, !tbaa !61
  %210 = load i32, ptr %118, align 4, !tbaa !69
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds [4 x i32], ptr @__const.GenerateSequenceParameterSet.SubHeightC, i64 0, i64 %211
  %213 = load i32, ptr %212, align 4, !tbaa !38
  %214 = load i32, ptr %83, align 4, !tbaa !56
  %215 = sub i32 2, %214
  %216 = mul i32 %215, %213
  br label %217

217:                                              ; preds = %206, %185
  %218 = phi i32 [ %216, %206 ], [ %200, %185 ]
  %219 = phi i32 [ %209, %206 ], [ %181, %185 ]
  %220 = urem i32 %219, %218
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %224, label %222

222:                                              ; preds = %217
  tail call void @error(ptr noundef nonnull @.str.3, i32 noundef signext 500) #9
  br label %224

223:                                              ; preds = %175
  store i32 0, ptr %184, align 4, !tbaa !73
  br label %224

224:                                              ; preds = %217, %222, %223
  ret void
}

declare dso_local ptr @AllocPPS() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local void @GeneratePictureParameterSet(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, i32 noundef signext %6) local_unnamed_addr #0 {
  %8 = load ptr, ptr @input, align 8, !tbaa !6
  %9 = load i32, ptr %8, align 8, !tbaa !23
  %10 = add i32 %9, -100
  %11 = icmp ult i32 %10, 45
  %12 = zext nneg i32 %10 to i45
  %13 = lshr i45 -17592181849087, %12
  %14 = trunc i45 %13 to i1
  %15 = select i1 %11, i1 %14, i1 false
  %16 = getelementptr inbounds i8, ptr %1, i64 28
  %17 = load i32, ptr %16, align 4, !tbaa !26
  %18 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %17, ptr %18, align 8, !tbaa !78
  %19 = getelementptr inbounds i8, ptr %0, i64 4
  store i32 %2, ptr %19, align 4, !tbaa !80
  %20 = getelementptr inbounds i8, ptr %8, i64 2984
  %21 = load i32, ptr %20, align 8, !tbaa !81
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = getelementptr inbounds i8, ptr %0, i64 12
  store i32 %23, ptr %24, align 4, !tbaa !82
  %25 = getelementptr inbounds i8, ptr %0, i64 16
  br i1 %15, label %26, label %80

26:                                               ; preds = %7
  %27 = getelementptr inbounds i8, ptr %8, i64 3892
  %28 = load i32, ptr %27, align 4, !tbaa !72
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i32
  store i32 %30, ptr %25, align 8, !tbaa !83
  %31 = getelementptr inbounds i8, ptr %8, i64 3928
  %32 = load i32, ptr %31, align 8, !tbaa !70
  %33 = lshr i32 %32, 1
  %34 = and i32 %33, 1
  %35 = getelementptr inbounds i8, ptr %0, i64 20
  store i32 %34, ptr %35, align 4, !tbaa !84
  %36 = getelementptr inbounds i8, ptr %0, i64 24
  %37 = getelementptr inbounds i8, ptr %8, i64 3932
  %38 = load i32, ptr %37, align 4, !tbaa !38
  %39 = lshr i32 %38, 1
  %40 = and i32 %39, 1
  store i32 %40, ptr %36, align 4, !tbaa !38
  %41 = getelementptr inbounds i8, ptr %8, i64 3936
  %42 = load i32, ptr %41, align 4, !tbaa !38
  %43 = lshr i32 %42, 1
  %44 = and i32 %43, 1
  %45 = getelementptr inbounds i8, ptr %0, i64 28
  store i32 %44, ptr %45, align 4, !tbaa !38
  %46 = getelementptr inbounds i8, ptr %8, i64 3940
  %47 = load i32, ptr %46, align 4, !tbaa !38
  %48 = lshr i32 %47, 1
  %49 = and i32 %48, 1
  %50 = getelementptr inbounds i8, ptr %0, i64 32
  store i32 %49, ptr %50, align 4, !tbaa !38
  %51 = getelementptr inbounds i8, ptr %8, i64 3944
  %52 = load i32, ptr %51, align 4, !tbaa !38
  %53 = lshr i32 %52, 1
  %54 = and i32 %53, 1
  %55 = getelementptr inbounds i8, ptr %0, i64 36
  store i32 %54, ptr %55, align 4, !tbaa !38
  %56 = getelementptr inbounds i8, ptr %8, i64 3948
  %57 = load i32, ptr %56, align 4, !tbaa !38
  %58 = lshr i32 %57, 1
  %59 = and i32 %58, 1
  %60 = getelementptr inbounds i8, ptr %0, i64 40
  store i32 %59, ptr %60, align 4, !tbaa !38
  %61 = getelementptr inbounds i8, ptr %8, i64 3952
  %62 = load i32, ptr %61, align 4, !tbaa !38
  %63 = lshr i32 %62, 1
  %64 = and i32 %63, 1
  %65 = getelementptr inbounds i8, ptr %0, i64 44
  store i32 %64, ptr %65, align 4, !tbaa !38
  br i1 %29, label %69, label %66

66:                                               ; preds = %26
  %67 = getelementptr inbounds i8, ptr %0, i64 48
  store i32 0, ptr %67, align 4, !tbaa !38
  %68 = getelementptr inbounds i8, ptr %0, i64 52
  store i32 0, ptr %68, align 4, !tbaa !38
  br label %83

69:                                               ; preds = %26
  %70 = getelementptr inbounds i8, ptr %8, i64 3956
  %71 = load i32, ptr %70, align 4, !tbaa !38
  %72 = lshr i32 %71, 1
  %73 = and i32 %72, 1
  %74 = getelementptr inbounds i8, ptr %0, i64 48
  store i32 %73, ptr %74, align 4, !tbaa !38
  %75 = getelementptr inbounds i8, ptr %8, i64 3960
  %76 = load i32, ptr %75, align 4, !tbaa !38
  %77 = lshr i32 %76, 1
  %78 = and i32 %77, 1
  %79 = getelementptr inbounds i8, ptr %0, i64 52
  store i32 %78, ptr %79, align 4, !tbaa !38
  br label %83

80:                                               ; preds = %7
  %81 = getelementptr inbounds i8, ptr %0, i64 20
  %82 = getelementptr inbounds i8, ptr %8, i64 3892
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %81, i8 0, i64 36, i1 false)
  store i32 0, ptr %82, align 4, !tbaa !72
  store i32 0, ptr %25, align 8, !tbaa !83
  br label %83

83:                                               ; preds = %66, %69, %80
  %84 = load ptr, ptr @img, align 8, !tbaa !6
  %85 = getelementptr inbounds i8, ptr %84, i64 90312
  %86 = load i32, ptr %85, align 8, !tbaa !85
  %87 = getelementptr inbounds i8, ptr %0, i64 56
  store i32 %86, ptr %87, align 8, !tbaa !86
  %88 = getelementptr inbounds i8, ptr %8, i64 3824
  %89 = load i32, ptr %88, align 8, !tbaa !87
  %90 = getelementptr inbounds i8, ptr %0, i64 60
  store i32 %89, ptr %90, align 4, !tbaa !88
  %91 = icmp eq i32 %89, 0
  br i1 %91, label %194, label %92

92:                                               ; preds = %83
  %93 = getelementptr inbounds i8, ptr %1, i64 1144
  %94 = load i32, ptr %93, align 4, !tbaa !62
  %95 = add i32 %94, 1
  %96 = getelementptr inbounds i8, ptr %1, i64 1140
  %97 = load i32, ptr %96, align 4, !tbaa !59
  %98 = add i32 %97, 1
  %99 = mul i32 %98, %95
  %100 = zext i32 %99 to i64
  %101 = tail call noalias ptr @calloc(i64 noundef %100, i64 noundef 1) #11
  %102 = getelementptr inbounds i8, ptr %0, i64 176
  store ptr %101, ptr %102, align 8, !tbaa !89
  %103 = icmp eq ptr %101, null
  br i1 %103, label %104, label %106

104:                                              ; preds = %92
  tail call void @no_mem_exit(ptr noundef nonnull @.str.4) #9
  %105 = load ptr, ptr @input, align 8, !tbaa !6
  br label %106

106:                                              ; preds = %104, %92
  %107 = phi ptr [ %105, %104 ], [ %8, %92 ]
  %108 = getelementptr inbounds i8, ptr %107, i64 3828
  %109 = load i32, ptr %108, align 4, !tbaa !90
  switch i32 %109, label %188 [
    i32 0, label %110
    i32 1, label %190
    i32 2, label %124
    i32 3, label %146
    i32 4, label %146
    i32 5, label %146
    i32 6, label %153
  ]

110:                                              ; preds = %106
  %111 = getelementptr inbounds i8, ptr %0, i64 64
  store i32 0, ptr %111, align 8, !tbaa !91
  %112 = load i32, ptr %90, align 4, !tbaa !88
  %113 = getelementptr inbounds i8, ptr %107, i64 3856
  %114 = load ptr, ptr %113, align 8, !tbaa !92
  %115 = getelementptr inbounds i8, ptr %0, i64 68
  br label %116

116:                                              ; preds = %110, %116
  %117 = phi i32 [ 0, %110 ], [ %122, %116 ]
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i32, ptr %114, i64 %118
  %120 = load i32, ptr %119, align 4, !tbaa !38
  %121 = getelementptr inbounds [8 x i32], ptr %115, i64 0, i64 %118
  store i32 %120, ptr %121, align 4, !tbaa !38
  %122 = add i32 %117, 1
  %123 = icmp ugt i32 %122, %112
  br i1 %123, label %194, label %116

124:                                              ; preds = %106
  %125 = getelementptr inbounds i8, ptr %0, i64 64
  store i32 2, ptr %125, align 8, !tbaa !91
  %126 = load i32, ptr %90, align 4, !tbaa !88
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %194, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds i8, ptr %107, i64 3832
  %130 = load ptr, ptr %129, align 8, !tbaa !93
  %131 = getelementptr inbounds i8, ptr %0, i64 100
  %132 = getelementptr inbounds i8, ptr %107, i64 3840
  %133 = load ptr, ptr %132, align 8, !tbaa !94
  %134 = getelementptr inbounds i8, ptr %0, i64 132
  %135 = zext i32 %126 to i64
  br label %136

136:                                              ; preds = %128, %136
  %137 = phi i64 [ 0, %128 ], [ %144, %136 ]
  %138 = getelementptr inbounds i32, ptr %130, i64 %137
  %139 = load i32, ptr %138, align 4, !tbaa !38
  %140 = getelementptr inbounds [8 x i32], ptr %131, i64 0, i64 %137
  store i32 %139, ptr %140, align 4, !tbaa !38
  %141 = getelementptr inbounds i32, ptr %133, i64 %137
  %142 = load i32, ptr %141, align 4, !tbaa !38
  %143 = getelementptr inbounds [8 x i32], ptr %134, i64 0, i64 %137
  store i32 %142, ptr %143, align 4, !tbaa !38
  %144 = add nuw nsw i64 %137, 1
  %145 = icmp eq i64 %144, %135
  br i1 %145, label %194, label %136

146:                                              ; preds = %106, %106, %106
  %147 = getelementptr inbounds i8, ptr %0, i64 64
  store i32 %109, ptr %147, align 8, !tbaa !91
  %148 = getelementptr inbounds i8, ptr %107, i64 3864
  %149 = load i32, ptr %148, align 8, !tbaa !95
  %150 = getelementptr inbounds i8, ptr %0, i64 164
  store i32 %149, ptr %150, align 4, !tbaa !96
  %151 = getelementptr inbounds i8, ptr %107, i64 3868
  %152 = load i32, ptr %151, align 4, !tbaa !97
  br label %190

153:                                              ; preds = %106
  %154 = getelementptr inbounds i8, ptr %0, i64 64
  store i32 6, ptr %154, align 8, !tbaa !91
  %155 = getelementptr inbounds i8, ptr %107, i64 72
  %156 = load i32, ptr %155, align 8, !tbaa !60
  %157 = load ptr, ptr @img, align 8, !tbaa !6
  %158 = getelementptr inbounds i8, ptr %157, i64 90580
  %159 = load i32, ptr %158, align 4, !tbaa !61
  %160 = add nsw i32 %159, %156
  %161 = sdiv i32 %160, 16
  %162 = getelementptr inbounds i8, ptr %1, i64 1148
  %163 = load i32, ptr %162, align 4, !tbaa !56
  %164 = sub i32 2, %163
  %165 = udiv i32 %161, %164
  %166 = getelementptr inbounds i8, ptr %107, i64 68
  %167 = load i32, ptr %166, align 4, !tbaa !57
  %168 = getelementptr inbounds i8, ptr %157, i64 90576
  %169 = load i32, ptr %168, align 8, !tbaa !58
  %170 = add nsw i32 %169, %167
  %171 = sdiv i32 %170, 16
  %172 = mul i32 %171, %165
  %173 = add i32 %172, -1
  %174 = getelementptr inbounds i8, ptr %0, i64 172
  store i32 %173, ptr %174, align 4, !tbaa !98
  br label %175

175:                                              ; preds = %153, %175
  %176 = phi i32 [ 0, %153 ], [ %185, %175 ]
  %177 = load ptr, ptr @input, align 8, !tbaa !6
  %178 = getelementptr inbounds i8, ptr %177, i64 3848
  %179 = load ptr, ptr %178, align 8, !tbaa !99
  %180 = zext i32 %176 to i64
  %181 = getelementptr inbounds i8, ptr %179, i64 %180
  %182 = load i8, ptr %181, align 1, !tbaa !100
  %183 = load ptr, ptr %102, align 8, !tbaa !89
  %184 = getelementptr inbounds i8, ptr %183, i64 %180
  store i8 %182, ptr %184, align 1, !tbaa !100
  %185 = add i32 %176, 1
  %186 = load i32, ptr %174, align 4, !tbaa !98
  %187 = icmp ugt i32 %185, %186
  br i1 %187, label %194, label %175

188:                                              ; preds = %106
  %189 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef signext 473, ptr noundef nonnull @__PRETTY_FUNCTION__.GeneratePictureParameterSet) #10
  unreachable

190:                                              ; preds = %106, %146
  %191 = phi i64 [ 168, %146 ], [ 64, %106 ]
  %192 = phi i32 [ %152, %146 ], [ %109, %106 ]
  %193 = getelementptr inbounds i8, ptr %0, i64 %191
  store i32 %192, ptr %193, align 8, !tbaa !38
  br label %194

194:                                              ; preds = %175, %136, %116, %190, %124, %83
  %195 = getelementptr inbounds i8, ptr %1, i64 1148
  %196 = load i32, ptr %195, align 4, !tbaa !56
  %197 = icmp eq i32 %196, 0
  %198 = getelementptr inbounds i8, ptr %1, i64 1132
  %199 = load i32, ptr %198, align 4, !tbaa !52
  %200 = zext i1 %197 to i32
  %201 = shl i32 %199, %200
  %202 = add i32 %201, -1
  %203 = getelementptr inbounds i8, ptr %0, i64 184
  store i32 %202, ptr %203, align 8
  %204 = getelementptr inbounds i8, ptr %0, i64 188
  store i32 %202, ptr %204, align 4, !tbaa !101
  %205 = getelementptr inbounds i8, ptr %0, i64 192
  store i32 %3, ptr %205, align 8, !tbaa !102
  %206 = getelementptr inbounds i8, ptr %0, i64 196
  store i32 %4, ptr %206, align 4, !tbaa !103
  %207 = getelementptr inbounds i8, ptr %0, i64 200
  store i32 0, ptr %207, align 8, !tbaa !104
  %208 = getelementptr inbounds i8, ptr %0, i64 204
  store i32 0, ptr %208, align 4, !tbaa !105
  %209 = getelementptr inbounds i8, ptr %0, i64 208
  store i32 %5, ptr %209, align 8, !tbaa !106
  %210 = select i1 %15, i32 %6, i32 %5
  %211 = getelementptr inbounds i8, ptr %0, i64 212
  store i32 %5, ptr %211, align 4
  %212 = getelementptr inbounds i8, ptr %0, i64 216
  store i32 %210, ptr %212, align 8
  %213 = load ptr, ptr @input, align 8, !tbaa !6
  %214 = getelementptr inbounds i8, ptr %213, i64 3596
  %215 = load i32, ptr %214, align 4, !tbaa !107
  %216 = getelementptr inbounds i8, ptr %0, i64 220
  store i32 %215, ptr %216, align 4, !tbaa !108
  %217 = getelementptr inbounds i8, ptr %213, i64 220
  %218 = load i32, ptr %217, align 4, !tbaa !109
  %219 = getelementptr inbounds i8, ptr %0, i64 224
  store i32 %218, ptr %219, align 8, !tbaa !110
  %220 = getelementptr inbounds i8, ptr %0, i64 228
  store i32 0, ptr %220, align 4, !tbaa !111
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
define dso_local void @FreeParameterSets() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %7
  %2 = phi i64 [ 0, %0 ], [ %8, %7 ]
  %3 = getelementptr inbounds [256 x ptr], ptr @PicParSet, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @FreePPS(ptr noundef nonnull %4) #9
  store ptr null, ptr %3, align 8, !tbaa !6
  br label %7

7:                                                ; preds = %1, %6
  %8 = add nuw nsw i64 %2, 1
  %9 = icmp eq i64 %8, 256
  br i1 %9, label %10, label %1

10:                                               ; preds = %7
  %11 = load ptr, ptr @active_sps, align 8, !tbaa !6
  tail call void @FreeSPS(ptr noundef %11) #9
  ret void
}

declare dso_local void @FreePPS(ptr noundef) local_unnamed_addr #2

declare dso_local void @FreeSPS(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local ptr @GenerateSeq_parameter_set_NALU() local_unnamed_addr #0 {
  %1 = alloca [64000 x i8], align 1
  %2 = tail call ptr @AllocNALU(i32 noundef signext 64000) #9
  call void @llvm.lifetime.start.p0(i64 64000, ptr nonnull %1) #9
  %3 = load ptr, ptr @active_sps, align 8, !tbaa !6
  %4 = call signext i32 @GenerateSeq_parameter_set_rbsp(ptr noundef %3, ptr noundef nonnull %1)
  %5 = call signext i32 @RBSPtoNALU(ptr noundef nonnull %1, ptr noundef %2, i32 noundef signext %4, i32 noundef signext 7, i32 noundef signext 3, i32 noundef signext 0, i32 noundef signext 1) #9
  store i32 4, ptr %2, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(i64 64000, ptr nonnull %1) #9
  ret ptr %2
}

declare dso_local ptr @AllocNALU(i32 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local signext i32 @GenerateSeq_parameter_set_rbsp(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef signext 581, ptr noundef nonnull @__PRETTY_FUNCTION__.GenerateSeq_parameter_set_rbsp) #10
  unreachable

5:                                                ; preds = %2
  %6 = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void @no_mem_exit(ptr noundef nonnull @.str.9) #9
  br label %9

9:                                                ; preds = %8, %5
  %10 = getelementptr inbounds i8, ptr %6, i64 32
  store ptr %1, ptr %10, align 8, !tbaa !114
  %11 = getelementptr inbounds i8, ptr %6, i64 4
  store i32 8, ptr %11, align 4, !tbaa !116
  %12 = getelementptr inbounds i8, ptr %0, i64 4
  %13 = load i32, ptr %12, align 4, !tbaa !14
  %14 = tail call signext i32 @u_v(i32 noundef signext 8, ptr noundef nonnull @.str.10, i32 noundef signext %13, ptr noundef %6) #9
  %15 = getelementptr inbounds i8, ptr %0, i64 8
  %16 = load i32, ptr %15, align 4, !tbaa !117
  %17 = tail call signext i32 @u_1(ptr noundef nonnull @.str.11, i32 noundef signext %16, ptr noundef %6) #9
  %18 = getelementptr inbounds i8, ptr %0, i64 12
  %19 = load i32, ptr %18, align 4, !tbaa !118
  %20 = tail call signext i32 @u_1(ptr noundef nonnull @.str.12, i32 noundef signext %19, ptr noundef %6) #9
  %21 = getelementptr inbounds i8, ptr %0, i64 16
  %22 = load i32, ptr %21, align 4, !tbaa !119
  %23 = tail call signext i32 @u_1(ptr noundef nonnull @.str.13, i32 noundef signext %22, ptr noundef %6) #9
  %24 = getelementptr inbounds i8, ptr %0, i64 20
  %25 = load i32, ptr %24, align 4, !tbaa !120
  %26 = tail call signext i32 @u_1(ptr noundef nonnull @.str.14, i32 noundef signext %25, ptr noundef %6) #9
  %27 = tail call signext i32 @u_v(i32 noundef signext 4, ptr noundef nonnull @.str.15, i32 noundef signext 0, ptr noundef %6) #9
  %28 = getelementptr inbounds i8, ptr %0, i64 24
  %29 = load i32, ptr %28, align 4, !tbaa !25
  %30 = tail call signext i32 @u_v(i32 noundef signext 8, ptr noundef nonnull @.str.16, i32 noundef signext %29, ptr noundef %6) #9
  %31 = getelementptr inbounds i8, ptr %0, i64 28
  %32 = load i32, ptr %31, align 4, !tbaa !26
  %33 = tail call signext i32 @ue_v(ptr noundef nonnull @.str.17, i32 noundef signext %32, ptr noundef %6) #9
  %34 = load i32, ptr %12, align 4, !tbaa !14
  switch i32 %34, label %160 [
    i32 100, label %35
    i32 110, label %35
    i32 122, label %35
    i32 144, label %35
  ]

35:                                               ; preds = %9, %9, %9, %9
  %36 = getelementptr inbounds i8, ptr %0, i64 32
  %37 = load i32, ptr %36, align 4, !tbaa !69
  %38 = tail call signext i32 @ue_v(ptr noundef nonnull @.str.18, i32 noundef signext %37, ptr noundef nonnull %6) #9
  %39 = load ptr, ptr @img, align 8, !tbaa !6
  %40 = getelementptr inbounds i8, ptr %39, i64 90548
  %41 = load i32, ptr %40, align 4, !tbaa !121
  %42 = icmp eq i32 %41, 3
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = getelementptr inbounds i8, ptr %39, i64 90572
  %45 = load i32, ptr %44, align 4, !tbaa !37
  %46 = tail call signext i32 @u_1(ptr noundef nonnull @.str.19, i32 noundef signext %45, ptr noundef nonnull %6) #9
  br label %47

47:                                               ; preds = %43, %35
  %48 = getelementptr inbounds i8, ptr %0, i64 72
  %49 = load i32, ptr %48, align 4, !tbaa !28
  %50 = tail call signext i32 @ue_v(ptr noundef nonnull @.str.20, i32 noundef signext %49, ptr noundef nonnull %6) #9
  %51 = getelementptr inbounds i8, ptr %0, i64 76
  %52 = load i32, ptr %51, align 4, !tbaa !30
  %53 = tail call signext i32 @ue_v(ptr noundef nonnull @.str.21, i32 noundef signext %52, ptr noundef nonnull %6) #9
  %54 = load ptr, ptr @img, align 8, !tbaa !6
  %55 = getelementptr inbounds i8, ptr %54, i64 90552
  %56 = load i32, ptr %55, align 8, !tbaa !32
  %57 = tail call signext i32 @u_1(ptr noundef nonnull @.str.22, i32 noundef signext %56, ptr noundef nonnull %6) #9
  %58 = getelementptr inbounds i8, ptr %0, i64 36
  %59 = load i32, ptr %58, align 4, !tbaa !71
  %60 = tail call signext i32 @u_1(ptr noundef nonnull @.str.23, i32 noundef signext %59, ptr noundef nonnull %6) #9
  %61 = load i32, ptr %58, align 4, !tbaa !71
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %160, label %63

63:                                               ; preds = %47
  %64 = getelementptr inbounds i8, ptr %0, i64 40
  br label %65

65:                                               ; preds = %63, %157
  %66 = phi i64 [ 0, %63 ], [ %158, %157 ]
  %67 = getelementptr inbounds [8 x i32], ptr %64, i64 0, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !38
  %69 = tail call signext i32 @u_1(ptr noundef nonnull @.str.24, i32 noundef signext %68, ptr noundef %6) #9
  %70 = load i32, ptr %67, align 4, !tbaa !38
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %157, label %72

72:                                               ; preds = %65
  %73 = icmp ult i64 %66, 6
  br i1 %73, label %74, label %115

74:                                               ; preds = %72
  %75 = getelementptr inbounds [6 x [16 x i16]], ptr @ScalingList4x4input, i64 0, i64 %66
  %76 = getelementptr inbounds [6 x [16 x i16]], ptr @ScalingList4x4, i64 0, i64 %66
  %77 = getelementptr inbounds [6 x i16], ptr @UseDefaultScalingMatrix4x4Flag, i64 0, i64 %66
  br label %78

78:                                               ; preds = %108, %74
  %79 = phi i64 [ 0, %74 ], [ %113, %108 ]
  %80 = phi i32 [ 8, %74 ], [ %109, %108 ]
  %81 = phi i32 [ 8, %74 ], [ %110, %108 ]
  %82 = getelementptr inbounds [16 x i8], ptr @ZZ_SCAN, i64 0, i64 %79
  %83 = load i8, ptr %82, align 1, !tbaa !100
  %84 = icmp eq i32 %80, 0
  %85 = zext i8 %83 to i64
  br i1 %84, label %108, label %86

86:                                               ; preds = %78
  %87 = getelementptr inbounds i16, ptr %75, i64 %85
  %88 = load i16, ptr %87, align 2, !tbaa !122
  %89 = sext i16 %88 to i32
  %90 = sub nsw i32 %89, %81
  %91 = icmp sgt i32 %90, 127
  %92 = add nsw i32 %90, -256
  %93 = icmp slt i32 %90, -128
  %94 = add nsw i32 %90, 256
  %95 = select i1 %93, i32 %94, i32 %90
  %96 = select i1 %91, i32 %92, i32 %95
  %97 = tail call signext i32 @se_v(ptr noundef nonnull @.str.7, i32 noundef signext %96, ptr noundef %6) #9
  %98 = load i16, ptr %87, align 2, !tbaa !122
  %99 = freeze i16 %98
  %100 = sext i16 %99 to i32
  %101 = icmp eq i64 %79, 0
  %102 = icmp eq i16 %99, 0
  %103 = and i1 %101, %102
  %104 = zext i1 %103 to i16
  %105 = load i16, ptr %77, align 2, !tbaa !122
  %106 = or i16 %105, %104
  store i16 %106, ptr %77, align 2, !tbaa !122
  %107 = select i1 %102, i32 %81, i32 %100
  br label %108

108:                                              ; preds = %86, %78
  %109 = phi i32 [ %100, %86 ], [ 0, %78 ]
  %110 = phi i32 [ %107, %86 ], [ %81, %78 ]
  %111 = trunc nsw i32 %110 to i16
  %112 = getelementptr inbounds i16, ptr %76, i64 %85
  store i16 %111, ptr %112, align 2, !tbaa !122
  %113 = add nuw nsw i64 %79, 1
  %114 = icmp eq i64 %113, 16
  br i1 %114, label %157, label %78

115:                                              ; preds = %72
  %116 = add nsw i64 %66, -6
  %117 = getelementptr inbounds [2 x [64 x i16]], ptr @ScalingList8x8input, i64 0, i64 %116
  %118 = getelementptr inbounds [2 x [64 x i16]], ptr @ScalingList8x8, i64 0, i64 %116
  %119 = getelementptr inbounds [2 x i16], ptr @UseDefaultScalingMatrix8x8Flag, i64 0, i64 %116
  br label %120

120:                                              ; preds = %150, %115
  %121 = phi i64 [ 0, %115 ], [ %155, %150 ]
  %122 = phi i32 [ 8, %115 ], [ %151, %150 ]
  %123 = phi i32 [ 8, %115 ], [ %152, %150 ]
  %124 = getelementptr inbounds [64 x i8], ptr @ZZ_SCAN8, i64 0, i64 %121
  %125 = load i8, ptr %124, align 1, !tbaa !100
  %126 = icmp eq i32 %122, 0
  %127 = zext i8 %125 to i64
  br i1 %126, label %150, label %128

128:                                              ; preds = %120
  %129 = getelementptr inbounds i16, ptr %117, i64 %127
  %130 = load i16, ptr %129, align 2, !tbaa !122
  %131 = sext i16 %130 to i32
  %132 = sub nsw i32 %131, %123
  %133 = icmp sgt i32 %132, 127
  %134 = add nsw i32 %132, -256
  %135 = icmp slt i32 %132, -128
  %136 = add nsw i32 %132, 256
  %137 = select i1 %135, i32 %136, i32 %132
  %138 = select i1 %133, i32 %134, i32 %137
  %139 = tail call signext i32 @se_v(ptr noundef nonnull @.str.7, i32 noundef signext %138, ptr noundef %6) #9
  %140 = load i16, ptr %129, align 2, !tbaa !122
  %141 = freeze i16 %140
  %142 = sext i16 %141 to i32
  %143 = icmp eq i64 %121, 0
  %144 = icmp eq i16 %141, 0
  %145 = and i1 %143, %144
  %146 = zext i1 %145 to i16
  %147 = load i16, ptr %119, align 2, !tbaa !122
  %148 = or i16 %147, %146
  store i16 %148, ptr %119, align 2, !tbaa !122
  %149 = select i1 %144, i32 %123, i32 %142
  br label %150

150:                                              ; preds = %128, %120
  %151 = phi i32 [ %142, %128 ], [ 0, %120 ]
  %152 = phi i32 [ %149, %128 ], [ %123, %120 ]
  %153 = trunc nsw i32 %152 to i16
  %154 = getelementptr inbounds i16, ptr %118, i64 %127
  store i16 %153, ptr %154, align 2, !tbaa !122
  %155 = add nuw nsw i64 %121, 1
  %156 = icmp eq i64 %155, 64
  br i1 %156, label %157, label %120

157:                                              ; preds = %150, %108, %65
  %158 = add nuw nsw i64 %66, 1
  %159 = icmp eq i64 %158, 8
  br i1 %159, label %160, label %65

160:                                              ; preds = %157, %9, %47
  %161 = getelementptr inbounds i8, ptr %0, i64 80
  %162 = load i32, ptr %161, align 4, !tbaa !39
  %163 = tail call signext i32 @ue_v(ptr noundef nonnull @.str.25, i32 noundef signext %162, ptr noundef %6) #9
  %164 = getelementptr inbounds i8, ptr %0, i64 84
  %165 = load i32, ptr %164, align 4, !tbaa !42
  %166 = tail call signext i32 @ue_v(ptr noundef nonnull @.str.26, i32 noundef signext %165, ptr noundef %6) #9
  %167 = load i32, ptr %164, align 4, !tbaa !42
  switch i32 %167, label %198 [
    i32 0, label %168
    i32 1, label %172
  ]

168:                                              ; preds = %160
  %169 = getelementptr inbounds i8, ptr %0, i64 88
  %170 = load i32, ptr %169, align 4, !tbaa !40
  %171 = tail call signext i32 @ue_v(ptr noundef nonnull @.str.27, i32 noundef signext %170, ptr noundef %6) #9
  br label %198

172:                                              ; preds = %160
  %173 = getelementptr inbounds i8, ptr %0, i64 92
  %174 = load i32, ptr %173, align 4, !tbaa !46
  %175 = tail call signext i32 @u_1(ptr noundef nonnull @.str.28, i32 noundef signext %174, ptr noundef %6) #9
  %176 = getelementptr inbounds i8, ptr %0, i64 96
  %177 = load i32, ptr %176, align 4, !tbaa !48
  %178 = tail call signext i32 @se_v(ptr noundef nonnull @.str.29, i32 noundef signext %177, ptr noundef %6) #9
  %179 = getelementptr inbounds i8, ptr %0, i64 100
  %180 = load i32, ptr %179, align 4, !tbaa !50
  %181 = tail call signext i32 @se_v(ptr noundef nonnull @.str.30, i32 noundef signext %180, ptr noundef %6) #9
  %182 = getelementptr inbounds i8, ptr %0, i64 104
  %183 = load i32, ptr %182, align 4, !tbaa !44
  %184 = tail call signext i32 @ue_v(ptr noundef nonnull @.str.31, i32 noundef signext %183, ptr noundef %6) #9
  %185 = load i32, ptr %182, align 4, !tbaa !44
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %198, label %187

187:                                              ; preds = %172
  %188 = getelementptr inbounds i8, ptr %0, i64 108
  br label %189

189:                                              ; preds = %187, %189
  %190 = phi i64 [ 0, %187 ], [ %194, %189 ]
  %191 = getelementptr inbounds [256 x i32], ptr %188, i64 0, i64 %190
  %192 = load i32, ptr %191, align 4, !tbaa !38
  %193 = tail call signext i32 @se_v(ptr noundef nonnull @.str.32, i32 noundef signext %192, ptr noundef %6) #9
  %194 = add nuw nsw i64 %190, 1
  %195 = load i32, ptr %182, align 4, !tbaa !44
  %196 = zext i32 %195 to i64
  %197 = icmp ult i64 %194, %196
  br i1 %197, label %189, label %198

198:                                              ; preds = %189, %172, %160, %168
  %199 = getelementptr inbounds i8, ptr %0, i64 1132
  %200 = load i32, ptr %199, align 4, !tbaa !52
  %201 = tail call signext i32 @ue_v(ptr noundef nonnull @.str.33, i32 noundef signext %200, ptr noundef %6) #9
  %202 = getelementptr inbounds i8, ptr %0, i64 1136
  %203 = load i32, ptr %202, align 4, !tbaa !53
  %204 = tail call signext i32 @u_1(ptr noundef nonnull @.str.34, i32 noundef signext %203, ptr noundef %6) #9
  %205 = getelementptr inbounds i8, ptr %0, i64 1140
  %206 = load i32, ptr %205, align 4, !tbaa !59
  %207 = tail call signext i32 @ue_v(ptr noundef nonnull @.str.35, i32 noundef signext %206, ptr noundef %6) #9
  %208 = getelementptr inbounds i8, ptr %0, i64 1144
  %209 = load i32, ptr %208, align 4, !tbaa !62
  %210 = tail call signext i32 @ue_v(ptr noundef nonnull @.str.36, i32 noundef signext %209, ptr noundef %6) #9
  %211 = getelementptr inbounds i8, ptr %0, i64 1148
  %212 = load i32, ptr %211, align 4, !tbaa !56
  %213 = tail call signext i32 @u_1(ptr noundef nonnull @.str.37, i32 noundef signext %212, ptr noundef %6) #9
  %214 = load i32, ptr %211, align 4, !tbaa !56
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %198
  %217 = getelementptr inbounds i8, ptr %0, i64 1152
  %218 = load i32, ptr %217, align 4, !tbaa !63
  %219 = tail call signext i32 @u_1(ptr noundef nonnull @.str.38, i32 noundef signext %218, ptr noundef %6) #9
  br label %220

220:                                              ; preds = %216, %198
  %221 = getelementptr inbounds i8, ptr %0, i64 1156
  %222 = load i32, ptr %221, align 4, !tbaa !65
  %223 = tail call signext i32 @u_1(ptr noundef nonnull @.str.39, i32 noundef signext %222, ptr noundef %6) #9
  %224 = getelementptr inbounds i8, ptr %0, i64 1160
  %225 = load i32, ptr %224, align 4, !tbaa !73
  %226 = tail call signext i32 @u_1(ptr noundef nonnull @.str.40, i32 noundef signext %225, ptr noundef %6) #9
  %227 = load i32, ptr %224, align 4, !tbaa !73
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %242, label %229

229:                                              ; preds = %220
  %230 = getelementptr inbounds i8, ptr %0, i64 1164
  %231 = load i32, ptr %230, align 4, !tbaa !74
  %232 = tail call signext i32 @ue_v(ptr noundef nonnull @.str.41, i32 noundef signext %231, ptr noundef %6) #9
  %233 = getelementptr inbounds i8, ptr %0, i64 1168
  %234 = load i32, ptr %233, align 4, !tbaa !76
  %235 = tail call signext i32 @ue_v(ptr noundef nonnull @.str.42, i32 noundef signext %234, ptr noundef %6) #9
  %236 = getelementptr inbounds i8, ptr %0, i64 1172
  %237 = load i32, ptr %236, align 4, !tbaa !75
  %238 = tail call signext i32 @ue_v(ptr noundef nonnull @.str.43, i32 noundef signext %237, ptr noundef %6) #9
  %239 = getelementptr inbounds i8, ptr %0, i64 1176
  %240 = load i32, ptr %239, align 4, !tbaa !77
  %241 = tail call signext i32 @ue_v(ptr noundef nonnull @.str.44, i32 noundef signext %240, ptr noundef %6) #9
  br label %242

242:                                              ; preds = %229, %220
  %243 = getelementptr inbounds i8, ptr %0, i64 1180
  %244 = load i32, ptr %243, align 4, !tbaa !68
  %245 = tail call signext i32 @u_1(ptr noundef nonnull @.str.45, i32 noundef signext %244, ptr noundef %6) #9
  %246 = load i32, ptr %243, align 4, !tbaa !68
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %276, label %248

248:                                              ; preds = %242
  %249 = load ptr, ptr @input, align 8, !tbaa !6
  %250 = getelementptr inbounds i8, ptr %249, i64 3984
  %251 = load i32, ptr %250, align 8, !tbaa !66
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %257, label %253

253:                                              ; preds = %248
  %254 = getelementptr inbounds i8, ptr %249, i64 76
  %255 = load i32, ptr %254, align 4, !tbaa !67
  %256 = icmp eq i32 %255, 3
  br i1 %256, label %259, label %257

257:                                              ; preds = %253, %248
  %258 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.91)
  tail call void @exit(i32 noundef signext -1) #10
  unreachable

259:                                              ; preds = %253
  %260 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.92)
  %261 = tail call signext i32 @u_1(ptr noundef nonnull @.str.75, i32 noundef signext 0, ptr noundef %6) #9
  %262 = tail call signext i32 @u_1(ptr noundef nonnull @.str.76, i32 noundef signext 0, ptr noundef %6) #9
  %263 = tail call signext i32 @u_1(ptr noundef nonnull @.str.77, i32 noundef signext 1, ptr noundef %6) #9
  %264 = tail call signext i32 @u_v(i32 noundef signext 3, ptr noundef nonnull @.str.78, i32 noundef signext 2, ptr noundef %6) #9
  %265 = tail call signext i32 @u_1(ptr noundef nonnull @.str.79, i32 noundef signext 1, ptr noundef %6) #9
  %266 = tail call signext i32 @u_1(ptr noundef nonnull @.str.80, i32 noundef signext 1, ptr noundef %6) #9
  %267 = tail call signext i32 @u_v(i32 noundef signext 8, ptr noundef nonnull @.str.81, i32 noundef signext 2, ptr noundef %6) #9
  %268 = tail call signext i32 @u_v(i32 noundef signext 8, ptr noundef nonnull @.str.82, i32 noundef signext 2, ptr noundef %6) #9
  %269 = tail call signext i32 @u_v(i32 noundef signext 8, ptr noundef nonnull @.str.83, i32 noundef signext 0, ptr noundef %6) #9
  %270 = tail call signext i32 @u_1(ptr noundef nonnull @.str.84, i32 noundef signext 0, ptr noundef %6) #9
  %271 = tail call signext i32 @u_1(ptr noundef nonnull @.str.85, i32 noundef signext 0, ptr noundef %6) #9
  %272 = tail call signext i32 @u_1(ptr noundef nonnull @.str.86, i32 noundef signext 0, ptr noundef %6) #9
  %273 = tail call signext i32 @u_1(ptr noundef nonnull @.str.87, i32 noundef signext 0, ptr noundef %6) #9
  %274 = tail call signext i32 @u_1(ptr noundef nonnull @.str.88, i32 noundef signext 0, ptr noundef %6) #9
  %275 = tail call signext i32 @u_1(ptr noundef nonnull @.str.89, i32 noundef signext 0, ptr noundef %6) #9
  br label %276

276:                                              ; preds = %259, %242
  tail call void @SODBtoRBSP(ptr noundef %6) #9
  %277 = load i32, ptr %6, align 8, !tbaa !123
  tail call void @free(ptr noundef %6) #9
  ret i32 %277
}

declare dso_local signext i32 @RBSPtoNALU(ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local ptr @GeneratePic_parameter_set_NALU(i32 noundef signext %0) local_unnamed_addr #0 {
  %2 = alloca [64000 x i8], align 1
  %3 = tail call ptr @AllocNALU(i32 noundef signext 64000) #9
  call void @llvm.lifetime.start.p0(i64 64000, ptr nonnull %2) #9
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [256 x ptr], ptr @PicParSet, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = call signext i32 @GeneratePic_parameter_set_rbsp(ptr noundef %6, ptr noundef nonnull %2)
  %8 = call signext i32 @RBSPtoNALU(ptr noundef nonnull %2, ptr noundef %3, i32 noundef signext %7, i32 noundef signext 8, i32 noundef signext 3, i32 noundef signext 0, i32 noundef signext 1) #9
  store i32 4, ptr %3, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(i64 64000, ptr nonnull %2) #9
  ret ptr %3
}

; Function Attrs: nounwind
define dso_local signext i32 @GeneratePic_parameter_set_rbsp(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef signext 709, ptr noundef nonnull @__PRETTY_FUNCTION__.GeneratePic_parameter_set_rbsp) #10
  unreachable

5:                                                ; preds = %2
  %6 = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void @no_mem_exit(ptr noundef nonnull @.str.46) #9
  br label %9

9:                                                ; preds = %8, %5
  %10 = getelementptr inbounds i8, ptr %6, i64 32
  store ptr %1, ptr %10, align 8, !tbaa !114
  %11 = getelementptr inbounds i8, ptr %6, i64 4
  store i32 8, ptr %11, align 4, !tbaa !116
  %12 = load ptr, ptr @img, align 8, !tbaa !6
  %13 = getelementptr inbounds i8, ptr %12, i64 90312
  %14 = load i32, ptr %13, align 8, !tbaa !85
  %15 = getelementptr inbounds i8, ptr %0, i64 56
  store i32 %14, ptr %15, align 8, !tbaa !86
  %16 = getelementptr inbounds i8, ptr %0, i64 4
  %17 = load i32, ptr %16, align 4, !tbaa !80
  %18 = tail call signext i32 @ue_v(ptr noundef nonnull @.str.47, i32 noundef signext %17, ptr noundef %6) #9
  %19 = getelementptr inbounds i8, ptr %0, i64 8
  %20 = load i32, ptr %19, align 8, !tbaa !78
  %21 = tail call signext i32 @ue_v(ptr noundef nonnull @.str.48, i32 noundef signext %20, ptr noundef %6) #9
  %22 = getelementptr inbounds i8, ptr %0, i64 12
  %23 = load i32, ptr %22, align 4, !tbaa !82
  %24 = tail call signext i32 @u_1(ptr noundef nonnull @.str.49, i32 noundef signext %23, ptr noundef %6) #9
  %25 = load i32, ptr %15, align 8, !tbaa !86
  %26 = tail call signext i32 @u_1(ptr noundef nonnull @.str.50, i32 noundef signext %25, ptr noundef %6) #9
  %27 = getelementptr inbounds i8, ptr %0, i64 60
  %28 = load i32, ptr %27, align 4, !tbaa !88
  %29 = tail call signext i32 @ue_v(ptr noundef nonnull @.str.51, i32 noundef signext %28, ptr noundef %6) #9
  %30 = load i32, ptr %27, align 4, !tbaa !88
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %93, label %32

32:                                               ; preds = %9
  %33 = getelementptr inbounds i8, ptr %0, i64 64
  %34 = load i32, ptr %33, align 8, !tbaa !91
  %35 = tail call signext i32 @ue_v(ptr noundef nonnull @.str.52, i32 noundef signext %34, ptr noundef nonnull %6) #9
  %36 = load i32, ptr %33, align 8, !tbaa !91
  switch i32 %36, label %93 [
    i32 0, label %43
    i32 2, label %37
    i32 3, label %66
    i32 4, label %66
    i32 5, label %66
    i32 6, label %73
  ]

37:                                               ; preds = %32
  %38 = load i32, ptr %27, align 4, !tbaa !88
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %93, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds i8, ptr %0, i64 100
  %42 = getelementptr inbounds i8, ptr %0, i64 132
  br label %54

43:                                               ; preds = %32
  %44 = getelementptr inbounds i8, ptr %0, i64 68
  br label %45

45:                                               ; preds = %43, %45
  %46 = phi i32 [ 0, %43 ], [ %51, %45 ]
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds [8 x i32], ptr %44, i64 0, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !38
  %50 = tail call signext i32 @ue_v(ptr noundef nonnull @.str.53, i32 noundef signext %49, ptr noundef %6) #9
  %51 = add i32 %46, 1
  %52 = load i32, ptr %27, align 4, !tbaa !88
  %53 = icmp ugt i32 %51, %52
  br i1 %53, label %93, label %45

54:                                               ; preds = %40, %54
  %55 = phi i64 [ 0, %40 ], [ %62, %54 ]
  %56 = getelementptr inbounds [8 x i32], ptr %41, i64 0, i64 %55
  %57 = load i32, ptr %56, align 4, !tbaa !38
  %58 = tail call signext i32 @ue_v(ptr noundef nonnull @.str.54, i32 noundef signext %57, ptr noundef %6) #9
  %59 = getelementptr inbounds [8 x i32], ptr %42, i64 0, i64 %55
  %60 = load i32, ptr %59, align 4, !tbaa !38
  %61 = tail call signext i32 @ue_v(ptr noundef nonnull @.str.55, i32 noundef signext %60, ptr noundef %6) #9
  %62 = add nuw nsw i64 %55, 1
  %63 = load i32, ptr %27, align 4, !tbaa !88
  %64 = zext i32 %63 to i64
  %65 = icmp ult i64 %62, %64
  br i1 %65, label %54, label %93

66:                                               ; preds = %32, %32, %32
  %67 = getelementptr inbounds i8, ptr %0, i64 164
  %68 = load i32, ptr %67, align 4, !tbaa !96
  %69 = tail call signext i32 @u_1(ptr noundef nonnull @.str.56, i32 noundef signext %68, ptr noundef nonnull %6) #9
  %70 = getelementptr inbounds i8, ptr %0, i64 168
  %71 = load i32, ptr %70, align 8, !tbaa !124
  %72 = tail call signext i32 @ue_v(ptr noundef nonnull @.str.57, i32 noundef signext %71, ptr noundef nonnull %6) #9
  br label %93

73:                                               ; preds = %32
  %74 = load i32, ptr %27, align 4, !tbaa !88
  %75 = icmp ugt i32 %74, 3
  %76 = tail call i32 @llvm.umin.i32(i32 %74, i32 2)
  %77 = select i1 %75, i32 3, i32 %76
  %78 = getelementptr inbounds i8, ptr %0, i64 172
  %79 = load i32, ptr %78, align 4, !tbaa !98
  %80 = tail call signext i32 @ue_v(ptr noundef nonnull @.str.58, i32 noundef signext %79, ptr noundef nonnull %6) #9
  %81 = getelementptr inbounds i8, ptr %0, i64 176
  br label %82

82:                                               ; preds = %73, %82
  %83 = phi i32 [ 0, %73 ], [ %90, %82 ]
  %84 = load ptr, ptr %81, align 8, !tbaa !89
  %85 = zext i32 %83 to i64
  %86 = getelementptr inbounds i8, ptr %84, i64 %85
  %87 = load i8, ptr %86, align 1, !tbaa !100
  %88 = zext i8 %87 to i32
  %89 = tail call signext i32 @u_v(i32 noundef signext %77, ptr noundef nonnull @.str.59, i32 noundef signext %88, ptr noundef %6) #9
  %90 = add i32 %83, 1
  %91 = load i32, ptr %78, align 4, !tbaa !98
  %92 = icmp ugt i32 %90, %91
  br i1 %92, label %93, label %82

93:                                               ; preds = %82, %54, %45, %37, %32, %66, %9
  %94 = getelementptr inbounds i8, ptr %0, i64 184
  %95 = load i32, ptr %94, align 8, !tbaa !125
  %96 = tail call signext i32 @ue_v(ptr noundef nonnull @.str.60, i32 noundef signext %95, ptr noundef %6) #9
  %97 = getelementptr inbounds i8, ptr %0, i64 188
  %98 = load i32, ptr %97, align 4, !tbaa !101
  %99 = tail call signext i32 @ue_v(ptr noundef nonnull @.str.61, i32 noundef signext %98, ptr noundef %6) #9
  %100 = getelementptr inbounds i8, ptr %0, i64 192
  %101 = load i32, ptr %100, align 8, !tbaa !102
  %102 = tail call signext i32 @u_1(ptr noundef nonnull @.str.62, i32 noundef signext %101, ptr noundef %6) #9
  %103 = getelementptr inbounds i8, ptr %0, i64 196
  %104 = load i32, ptr %103, align 4, !tbaa !103
  %105 = tail call signext i32 @u_v(i32 noundef signext 2, ptr noundef nonnull @.str.63, i32 noundef signext %104, ptr noundef %6) #9
  %106 = getelementptr inbounds i8, ptr %0, i64 200
  %107 = load i32, ptr %106, align 8, !tbaa !104
  %108 = tail call signext i32 @se_v(ptr noundef nonnull @.str.64, i32 noundef signext %107, ptr noundef %6) #9
  %109 = getelementptr inbounds i8, ptr %0, i64 204
  %110 = load i32, ptr %109, align 4, !tbaa !105
  %111 = tail call signext i32 @se_v(ptr noundef nonnull @.str.65, i32 noundef signext %110, ptr noundef %6) #9
  %112 = load ptr, ptr @input, align 8, !tbaa !6
  %113 = load i32, ptr %112, align 8, !tbaa !23
  switch i32 %113, label %114 [
    i32 144, label %115
    i32 122, label %115
    i32 110, label %115
    i32 100, label %115
  ]

114:                                              ; preds = %93
  br label %115

115:                                              ; preds = %93, %93, %93, %93, %114
  %116 = phi i64 [ 208, %114 ], [ 212, %93 ], [ 212, %93 ], [ 212, %93 ], [ 212, %93 ]
  %117 = getelementptr inbounds i8, ptr %0, i64 %116
  %118 = load i32, ptr %117, align 4, !tbaa !38
  %119 = tail call signext i32 @se_v(ptr noundef nonnull @.str.66, i32 noundef signext %118, ptr noundef %6) #9
  %120 = getelementptr inbounds i8, ptr %0, i64 220
  %121 = load i32, ptr %120, align 4, !tbaa !108
  %122 = tail call signext i32 @u_1(ptr noundef nonnull @.str.67, i32 noundef signext %121, ptr noundef %6) #9
  %123 = getelementptr inbounds i8, ptr %0, i64 224
  %124 = load i32, ptr %123, align 8, !tbaa !110
  %125 = tail call signext i32 @u_1(ptr noundef nonnull @.str.68, i32 noundef signext %124, ptr noundef %6) #9
  %126 = getelementptr inbounds i8, ptr %0, i64 228
  %127 = load i32, ptr %126, align 4, !tbaa !111
  %128 = tail call signext i32 @u_1(ptr noundef nonnull @.str.69, i32 noundef signext %127, ptr noundef %6) #9
  switch i32 %113, label %247 [
    i32 144, label %129
    i32 122, label %129
    i32 110, label %129
    i32 100, label %129
  ]

129:                                              ; preds = %115, %115, %115, %115
  %130 = getelementptr inbounds i8, ptr %0, i64 16
  %131 = load i32, ptr %130, align 8, !tbaa !83
  %132 = tail call signext i32 @u_1(ptr noundef nonnull @.str.70, i32 noundef signext %131, ptr noundef %6) #9
  %133 = getelementptr inbounds i8, ptr %0, i64 20
  %134 = load i32, ptr %133, align 4, !tbaa !84
  %135 = tail call signext i32 @u_1(ptr noundef nonnull @.str.71, i32 noundef signext %134, ptr noundef %6) #9
  %136 = load i32, ptr %133, align 4, !tbaa !84
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %243, label %138

138:                                              ; preds = %129
  %139 = load i32, ptr %130, align 8, !tbaa !83
  %140 = and i32 %139, 2147483647
  %141 = icmp eq i32 %140, 2147483645
  br i1 %141, label %243, label %142

142:                                              ; preds = %138
  %143 = getelementptr inbounds i8, ptr %0, i64 24
  br label %144

144:                                              ; preds = %142, %236
  %145 = phi i64 [ 0, %142 ], [ %237, %236 ]
  %146 = getelementptr inbounds [8 x i32], ptr %143, i64 0, i64 %145
  %147 = load i32, ptr %146, align 4, !tbaa !38
  %148 = tail call signext i32 @u_1(ptr noundef nonnull @.str.72, i32 noundef signext %147, ptr noundef %6) #9
  %149 = load i32, ptr %146, align 4, !tbaa !38
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %236, label %151

151:                                              ; preds = %144
  %152 = icmp ult i64 %145, 6
  br i1 %152, label %153, label %194

153:                                              ; preds = %151
  %154 = getelementptr inbounds [6 x [16 x i16]], ptr @ScalingList4x4input, i64 0, i64 %145
  %155 = getelementptr inbounds [6 x [16 x i16]], ptr @ScalingList4x4, i64 0, i64 %145
  %156 = getelementptr inbounds [6 x i16], ptr @UseDefaultScalingMatrix4x4Flag, i64 0, i64 %145
  br label %157

157:                                              ; preds = %187, %153
  %158 = phi i64 [ 0, %153 ], [ %192, %187 ]
  %159 = phi i32 [ 8, %153 ], [ %188, %187 ]
  %160 = phi i32 [ 8, %153 ], [ %189, %187 ]
  %161 = getelementptr inbounds [16 x i8], ptr @ZZ_SCAN, i64 0, i64 %158
  %162 = load i8, ptr %161, align 1, !tbaa !100
  %163 = icmp eq i32 %159, 0
  %164 = zext i8 %162 to i64
  br i1 %163, label %187, label %165

165:                                              ; preds = %157
  %166 = getelementptr inbounds i16, ptr %154, i64 %164
  %167 = load i16, ptr %166, align 2, !tbaa !122
  %168 = sext i16 %167 to i32
  %169 = sub nsw i32 %168, %160
  %170 = icmp sgt i32 %169, 127
  %171 = add nsw i32 %169, -256
  %172 = icmp slt i32 %169, -128
  %173 = add nsw i32 %169, 256
  %174 = select i1 %172, i32 %173, i32 %169
  %175 = select i1 %170, i32 %171, i32 %174
  %176 = tail call signext i32 @se_v(ptr noundef nonnull @.str.7, i32 noundef signext %175, ptr noundef %6) #9
  %177 = load i16, ptr %166, align 2, !tbaa !122
  %178 = freeze i16 %177
  %179 = sext i16 %178 to i32
  %180 = icmp eq i64 %158, 0
  %181 = icmp eq i16 %178, 0
  %182 = and i1 %180, %181
  %183 = zext i1 %182 to i16
  %184 = load i16, ptr %156, align 2, !tbaa !122
  %185 = or i16 %184, %183
  store i16 %185, ptr %156, align 2, !tbaa !122
  %186 = select i1 %181, i32 %160, i32 %179
  br label %187

187:                                              ; preds = %165, %157
  %188 = phi i32 [ %179, %165 ], [ 0, %157 ]
  %189 = phi i32 [ %186, %165 ], [ %160, %157 ]
  %190 = trunc nsw i32 %189 to i16
  %191 = getelementptr inbounds i16, ptr %155, i64 %164
  store i16 %190, ptr %191, align 2, !tbaa !122
  %192 = add nuw nsw i64 %158, 1
  %193 = icmp eq i64 %192, 16
  br i1 %193, label %236, label %157

194:                                              ; preds = %151
  %195 = add nsw i64 %145, -6
  %196 = getelementptr inbounds [2 x [64 x i16]], ptr @ScalingList8x8input, i64 0, i64 %195
  %197 = getelementptr inbounds [2 x [64 x i16]], ptr @ScalingList8x8, i64 0, i64 %195
  %198 = getelementptr inbounds [2 x i16], ptr @UseDefaultScalingMatrix8x8Flag, i64 0, i64 %195
  br label %199

199:                                              ; preds = %229, %194
  %200 = phi i64 [ 0, %194 ], [ %234, %229 ]
  %201 = phi i32 [ 8, %194 ], [ %230, %229 ]
  %202 = phi i32 [ 8, %194 ], [ %231, %229 ]
  %203 = getelementptr inbounds [64 x i8], ptr @ZZ_SCAN8, i64 0, i64 %200
  %204 = load i8, ptr %203, align 1, !tbaa !100
  %205 = icmp eq i32 %201, 0
  %206 = zext i8 %204 to i64
  br i1 %205, label %229, label %207

207:                                              ; preds = %199
  %208 = getelementptr inbounds i16, ptr %196, i64 %206
  %209 = load i16, ptr %208, align 2, !tbaa !122
  %210 = sext i16 %209 to i32
  %211 = sub nsw i32 %210, %202
  %212 = icmp sgt i32 %211, 127
  %213 = add nsw i32 %211, -256
  %214 = icmp slt i32 %211, -128
  %215 = add nsw i32 %211, 256
  %216 = select i1 %214, i32 %215, i32 %211
  %217 = select i1 %212, i32 %213, i32 %216
  %218 = tail call signext i32 @se_v(ptr noundef nonnull @.str.7, i32 noundef signext %217, ptr noundef %6) #9
  %219 = load i16, ptr %208, align 2, !tbaa !122
  %220 = freeze i16 %219
  %221 = sext i16 %220 to i32
  %222 = icmp eq i64 %200, 0
  %223 = icmp eq i16 %220, 0
  %224 = and i1 %222, %223
  %225 = zext i1 %224 to i16
  %226 = load i16, ptr %198, align 2, !tbaa !122
  %227 = or i16 %226, %225
  store i16 %227, ptr %198, align 2, !tbaa !122
  %228 = select i1 %223, i32 %202, i32 %221
  br label %229

229:                                              ; preds = %207, %199
  %230 = phi i32 [ %221, %207 ], [ 0, %199 ]
  %231 = phi i32 [ %228, %207 ], [ %202, %199 ]
  %232 = trunc nsw i32 %231 to i16
  %233 = getelementptr inbounds i16, ptr %197, i64 %206
  store i16 %232, ptr %233, align 2, !tbaa !122
  %234 = add nuw nsw i64 %200, 1
  %235 = icmp eq i64 %234, 64
  br i1 %235, label %236, label %199

236:                                              ; preds = %229, %187, %144
  %237 = add nuw nsw i64 %145, 1
  %238 = load i32, ptr %130, align 8, !tbaa !83
  %239 = shl i32 %238, 1
  %240 = add i32 %239, 6
  %241 = zext i32 %240 to i64
  %242 = icmp ult i64 %237, %241
  br i1 %242, label %144, label %243

243:                                              ; preds = %236, %138, %129
  %244 = getelementptr inbounds i8, ptr %0, i64 216
  %245 = load i32, ptr %244, align 8, !tbaa !126
  %246 = tail call signext i32 @se_v(ptr noundef nonnull @.str.73, i32 noundef signext %245, ptr noundef %6) #9
  br label %247

247:                                              ; preds = %115, %243
  tail call void @SODBtoRBSP(ptr noundef %6) #9
  %248 = load i32, ptr %6, align 8, !tbaa !123
  tail call void @free(ptr noundef %6) #9
  ret i32 %248
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(ptr noundef, ptr noundef, i32 noundef signext, ptr noundef) local_unnamed_addr #3

declare dso_local ptr @alloc_colocated(i32 noundef signext, i32 noundef signext, i32 noundef signext) local_unnamed_addr #2

declare dso_local void @error(ptr noundef, i32 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare dso_local noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

declare dso_local void @no_mem_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local signext i32 @Scaling_List(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef signext %2, ptr nocapture noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = icmp sgt i32 %2, 0
  br i1 %6, label %7, label %52

7:                                                ; preds = %5
  %8 = icmp eq i32 %2, 16
  %9 = zext nneg i32 %2 to i64
  br label %10

10:                                               ; preds = %7, %44
  %11 = phi i64 [ 0, %7 ], [ %50, %44 ]
  %12 = phi i32 [ 8, %7 ], [ %45, %44 ]
  %13 = phi i32 [ 8, %7 ], [ %47, %44 ]
  %14 = phi i32 [ 0, %7 ], [ %46, %44 ]
  %15 = getelementptr inbounds [16 x i8], ptr @ZZ_SCAN, i64 0, i64 %11
  %16 = getelementptr inbounds [64 x i8], ptr @ZZ_SCAN8, i64 0, i64 %11
  %17 = select i1 %8, ptr %15, ptr %16
  %18 = load i8, ptr %17, align 1, !tbaa !100
  %19 = icmp eq i32 %12, 0
  %20 = zext i8 %18 to i64
  br i1 %19, label %44, label %21

21:                                               ; preds = %10
  %22 = getelementptr inbounds i16, ptr %0, i64 %20
  %23 = load i16, ptr %22, align 2, !tbaa !122
  %24 = sext i16 %23 to i32
  %25 = sub nsw i32 %24, %13
  %26 = icmp sgt i32 %25, 127
  %27 = add nsw i32 %25, -256
  %28 = icmp slt i32 %25, -128
  %29 = add nsw i32 %25, 256
  %30 = select i1 %28, i32 %29, i32 %25
  %31 = select i1 %26, i32 %27, i32 %30
  %32 = tail call signext i32 @se_v(ptr noundef nonnull @.str.7, i32 noundef signext %31, ptr noundef %4) #9
  %33 = add nsw i32 %32, %14
  %34 = load i16, ptr %22, align 2, !tbaa !122
  %35 = freeze i16 %34
  %36 = sext i16 %35 to i32
  %37 = icmp eq i8 %18, 0
  %38 = icmp eq i16 %35, 0
  %39 = and i1 %37, %38
  %40 = zext i1 %39 to i16
  %41 = load i16, ptr %3, align 2, !tbaa !122
  %42 = or i16 %41, %40
  store i16 %42, ptr %3, align 2, !tbaa !122
  %43 = select i1 %38, i32 %13, i32 %36
  br label %44

44:                                               ; preds = %10, %21
  %45 = phi i32 [ %36, %21 ], [ 0, %10 ]
  %46 = phi i32 [ %33, %21 ], [ %14, %10 ]
  %47 = phi i32 [ %43, %21 ], [ %13, %10 ]
  %48 = trunc nsw i32 %47 to i16
  %49 = getelementptr inbounds i16, ptr %1, i64 %20
  store i16 %48, ptr %49, align 2, !tbaa !122
  %50 = add nuw nsw i64 %11, 1
  %51 = icmp eq i64 %50, %9
  br i1 %51, label %52, label %10

52:                                               ; preds = %44, %5
  %53 = phi i32 [ 0, %5 ], [ %46, %44 ]
  ret i32 %53
}

declare dso_local signext i32 @se_v(ptr noundef, i32 noundef signext, ptr noundef) local_unnamed_addr #2

declare dso_local signext i32 @u_v(i32 noundef signext, ptr noundef, i32 noundef signext, ptr noundef) local_unnamed_addr #2

declare dso_local signext i32 @u_1(ptr noundef, i32 noundef signext, ptr noundef) local_unnamed_addr #2

declare dso_local signext i32 @ue_v(ptr noundef, i32 noundef signext, ptr noundef) local_unnamed_addr #2

declare dso_local void @SODBtoRBSP(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare dso_local void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef signext) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"}
!4 = !{i32 8, !"SmallDataLimit", i32 8}
!5 = !{!"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !12, i64 64}
!11 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !8, i64 84, !8, i64 148, !12, i64 212, !12, i64 216, !12, i64 220, !12, i64 224, !8, i64 228, !8, i64 428, !8, i64 628, !8, i64 828, !8, i64 1028, !12, i64 1228, !12, i64 1232, !12, i64 1236, !12, i64 1240, !12, i64 1244, !12, i64 1248, !12, i64 1252, !12, i64 1256, !12, i64 1260, !12, i64 1264, !12, i64 1268, !12, i64 1272, !12, i64 1276, !12, i64 1280, !12, i64 1284, !12, i64 1288, !12, i64 1292, !12, i64 1296, !12, i64 1300, !8, i64 1304, !8, i64 1504, !8, i64 1704, !12, i64 1904, !12, i64 1908, !12, i64 1912, !12, i64 1916, !12, i64 1920, !12, i64 1924, !12, i64 1928, !12, i64 1932, !12, i64 1936, !12, i64 1940, !12, i64 1944, !12, i64 1948, !8, i64 1952, !12, i64 2976, !12, i64 2980, !12, i64 2984, !12, i64 2988, !12, i64 2992, !12, i64 2996, !12, i64 3000, !12, i64 3004, !12, i64 3008, !12, i64 3012, !12, i64 3016, !12, i64 3020, !12, i64 3024, !12, i64 3028, !12, i64 3032, !12, i64 3036, !12, i64 3040, !12, i64 3044, !12, i64 3048, !12, i64 3052, !13, i64 3056, !12, i64 3064, !12, i64 3068, !12, i64 3072, !12, i64 3076, !12, i64 3080, !12, i64 3084, !12, i64 3088, !12, i64 3092, !12, i64 3096, !12, i64 3100, !12, i64 3104, !12, i64 3108, !12, i64 3112, !12, i64 3116, !12, i64 3120, !12, i64 3124, !12, i64 3128, !12, i64 3132, !12, i64 3136, !12, i64 3140, !12, i64 3144, !12, i64 3148, !8, i64 3152, !8, i64 3352, !12, i64 3552, !12, i64 3556, !12, i64 3560, !12, i64 3564, !12, i64 3568, !12, i64 3572, !12, i64 3576, !12, i64 3580, !12, i64 3584, !12, i64 3588, !12, i64 3592, !12, i64 3596, !12, i64 3600, !12, i64 3604, !12, i64 3608, !12, i64 3612, !12, i64 3616, !12, i64 3620, !8, i64 3624, !12, i64 3824, !12, i64 3828, !7, i64 3832, !7, i64 3840, !7, i64 3848, !7, i64 3856, !12, i64 3864, !12, i64 3868, !12, i64 3872, !12, i64 3876, !12, i64 3880, !12, i64 3884, !12, i64 3888, !12, i64 3892, !12, i64 3896, !12, i64 3900, !12, i64 3904, !12, i64 3908, !12, i64 3912, !12, i64 3916, !12, i64 3920, !12, i64 3924, !12, i64 3928, !8, i64 3932, !12, i64 3964, !12, i64 3968, !12, i64 3972, !12, i64 3976, !12, i64 3980, !12, i64 3984, !12, i64 3988, !12, i64 3992, !12, i64 3996, !12, i64 4000, !12, i64 4004, !8, i64 4008, !8, i64 4056, !12, i64 4256, !12, i64 4260, !12, i64 4264, !12, i64 4268, !8, i64 4272, !12, i64 4312, !12, i64 4316, !12, i64 4320, !12, i64 4324}
!12 = !{!"int", !8, i64 0}
!13 = !{!"double", !8, i64 0}
!14 = !{!15, !12, i64 4}
!15 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !8, i64 40, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96, !12, i64 100, !12, i64 104, !8, i64 108, !12, i64 1132, !12, i64 1136, !12, i64 1140, !12, i64 1144, !12, i64 1148, !12, i64 1152, !12, i64 1156, !12, i64 1160, !12, i64 1164, !12, i64 1168, !12, i64 1172, !12, i64 1176, !12, i64 1180, !16, i64 1184}
!16 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !17, i64 84, !12, i64 496, !17, i64 500, !12, i64 912, !12, i64 916, !12, i64 920, !12, i64 924, !12, i64 928, !12, i64 932, !12, i64 936, !12, i64 940, !12, i64 944}
!17 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !8, i64 12, !8, i64 140, !8, i64 268, !12, i64 396, !12, i64 400, !12, i64 404, !12, i64 408}
!18 = !{!11, !12, i64 3988}
!19 = !{!11, !12, i64 3992}
!20 = !{!11, !12, i64 3104}
!21 = !{!11, !12, i64 1904}
!22 = !{!11, !12, i64 1908}
!23 = !{!11, !12, i64 0}
!24 = !{!11, !12, i64 4}
!25 = !{!15, !12, i64 24}
!26 = !{!15, !12, i64 28}
!27 = !{!11, !12, i64 3968}
!28 = !{!15, !12, i64 72}
!29 = !{!11, !12, i64 3972}
!30 = !{!15, !12, i64 76}
!31 = !{!11, !12, i64 3996}
!32 = !{!33, !12, i64 90552}
!33 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !34, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96, !7, i64 104, !7, i64 112, !12, i64 120, !7, i64 128, !12, i64 136, !12, i64 140, !12, i64 144, !12, i64 148, !12, i64 152, !12, i64 156, !12, i64 160, !12, i64 164, !12, i64 168, !12, i64 172, !12, i64 176, !12, i64 180, !8, i64 184, !8, i64 4792, !8, i64 7352, !8, i64 8504, !8, i64 12600, !8, i64 13112, !7, i64 14136, !7, i64 14144, !8, i64 14152, !8, i64 18248, !8, i64 21320, !8, i64 29512, !7, i64 31560, !7, i64 31568, !7, i64 31576, !8, i64 31584, !7, i64 89184, !7, i64 89192, !12, i64 89200, !12, i64 89204, !12, i64 89208, !12, i64 89212, !8, i64 89216, !12, i64 89280, !12, i64 89284, !12, i64 89288, !12, i64 89292, !12, i64 89296, !13, i64 89304, !12, i64 89312, !12, i64 89316, !12, i64 89320, !12, i64 89324, !7, i64 89328, !7, i64 89336, !7, i64 89344, !7, i64 89352, !8, i64 89360, !12, i64 89392, !12, i64 89396, !12, i64 89400, !12, i64 89404, !12, i64 89408, !12, i64 89412, !12, i64 89416, !12, i64 89420, !8, i64 89424, !12, i64 90192, !12, i64 90196, !12, i64 90200, !12, i64 90204, !12, i64 90208, !12, i64 90212, !12, i64 90216, !12, i64 90220, !12, i64 90224, !12, i64 90228, !12, i64 90232, !12, i64 90236, !12, i64 90240, !8, i64 90244, !12, i64 90248, !12, i64 90252, !8, i64 90256, !12, i64 90264, !12, i64 90268, !12, i64 90272, !12, i64 90276, !12, i64 90280, !12, i64 90284, !12, i64 90288, !12, i64 90292, !12, i64 90296, !12, i64 90300, !12, i64 90304, !12, i64 90308, !12, i64 90312, !12, i64 90316, !12, i64 90320, !12, i64 90324, !12, i64 90328, !7, i64 90336, !12, i64 90344, !12, i64 90348, !12, i64 90352, !12, i64 90356, !12, i64 90360, !13, i64 90368, !12, i64 90376, !12, i64 90380, !12, i64 90384, !12, i64 90388, !12, i64 90392, !12, i64 90396, !12, i64 90400, !7, i64 90408, !12, i64 90416, !12, i64 90420, !12, i64 90424, !12, i64 90428, !12, i64 90432, !12, i64 90436, !12, i64 90440, !12, i64 90444, !12, i64 90448, !12, i64 90452, !12, i64 90456, !12, i64 90460, !12, i64 90464, !12, i64 90468, !12, i64 90472, !12, i64 90476, !12, i64 90480, !12, i64 90484, !12, i64 90488, !12, i64 90492, !12, i64 90496, !12, i64 90500, !7, i64 90504, !7, i64 90512, !7, i64 90520, !12, i64 90528, !12, i64 90532, !12, i64 90536, !12, i64 90540, !12, i64 90544, !12, i64 90548, !12, i64 90552, !12, i64 90556, !12, i64 90560, !8, i64 90564, !12, i64 90572, !12, i64 90576, !12, i64 90580, !35, i64 90584, !12, i64 90588, !12, i64 90592}
!34 = !{!"float", !8, i64 0}
!35 = !{!"short", !8, i64 0}
!36 = !{!11, !12, i64 4000}
!37 = !{!33, !12, i64 90572}
!38 = !{!12, !12, i64 0}
!39 = !{!15, !12, i64 80}
!40 = !{!15, !12, i64 88}
!41 = !{!11, !12, i64 3880}
!42 = !{!15, !12, i64 84}
!43 = !{!33, !12, i64 90240}
!44 = !{!15, !12, i64 104}
!45 = !{!33, !12, i64 90228}
!46 = !{!15, !12, i64 92}
!47 = !{!33, !12, i64 90232}
!48 = !{!15, !12, i64 96}
!49 = !{!33, !12, i64 90236}
!50 = !{!15, !12, i64 100}
!51 = !{!11, !12, i64 36}
!52 = !{!15, !12, i64 1132}
!53 = !{!15, !12, i64 1136}
!54 = !{!11, !12, i64 3552}
!55 = !{!11, !12, i64 3556}
!56 = !{!15, !12, i64 1148}
!57 = !{!11, !12, i64 68}
!58 = !{!33, !12, i64 90576}
!59 = !{!15, !12, i64 1140}
!60 = !{!11, !12, i64 72}
!61 = !{!33, !12, i64 90580}
!62 = !{!15, !12, i64 1144}
!63 = !{!15, !12, i64 1152}
!64 = !{!11, !12, i64 1260}
!65 = !{!15, !12, i64 1156}
!66 = !{!11, !12, i64 3984}
!67 = !{!11, !12, i64 76}
!68 = !{!15, !12, i64 1180}
!69 = !{!15, !12, i64 32}
!70 = !{!11, !12, i64 3928}
!71 = !{!15, !12, i64 36}
!72 = !{!11, !12, i64 3892}
!73 = !{!15, !12, i64 1160}
!74 = !{!15, !12, i64 1164}
!75 = !{!15, !12, i64 1172}
!76 = !{!15, !12, i64 1168}
!77 = !{!15, !12, i64 1176}
!78 = !{!79, !12, i64 8}
!79 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !8, i64 24, !12, i64 56, !12, i64 60, !12, i64 64, !8, i64 68, !8, i64 100, !8, i64 132, !12, i64 164, !12, i64 168, !12, i64 172, !7, i64 176, !12, i64 184, !12, i64 188, !12, i64 192, !12, i64 196, !12, i64 200, !12, i64 204, !12, i64 208, !12, i64 212, !12, i64 216, !12, i64 220, !12, i64 224, !12, i64 228, !12, i64 232}
!80 = !{!79, !12, i64 4}
!81 = !{!11, !12, i64 2984}
!82 = !{!79, !12, i64 12}
!83 = !{!79, !12, i64 16}
!84 = !{!79, !12, i64 20}
!85 = !{!33, !12, i64 90312}
!86 = !{!79, !12, i64 56}
!87 = !{!11, !12, i64 3824}
!88 = !{!79, !12, i64 60}
!89 = !{!79, !7, i64 176}
!90 = !{!11, !12, i64 3828}
!91 = !{!79, !12, i64 64}
!92 = !{!11, !7, i64 3856}
!93 = !{!11, !7, i64 3832}
!94 = !{!11, !7, i64 3840}
!95 = !{!11, !12, i64 3864}
!96 = !{!79, !12, i64 164}
!97 = !{!11, !12, i64 3868}
!98 = !{!79, !12, i64 172}
!99 = !{!11, !7, i64 3848}
!100 = !{!8, !8, i64 0}
!101 = !{!79, !12, i64 188}
!102 = !{!79, !12, i64 192}
!103 = !{!79, !12, i64 196}
!104 = !{!79, !12, i64 200}
!105 = !{!79, !12, i64 204}
!106 = !{!79, !12, i64 208}
!107 = !{!11, !12, i64 3596}
!108 = !{!79, !12, i64 220}
!109 = !{!11, !12, i64 220}
!110 = !{!79, !12, i64 224}
!111 = !{!79, !12, i64 228}
!112 = !{!113, !12, i64 0}
!113 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !7, i64 24}
!114 = !{!115, !7, i64 32}
!115 = !{!"", !12, i64 0, !12, i64 4, !8, i64 8, !12, i64 12, !12, i64 16, !8, i64 20, !8, i64 21, !12, i64 24, !12, i64 28, !7, i64 32, !12, i64 40}
!116 = !{!115, !12, i64 4}
!117 = !{!15, !12, i64 8}
!118 = !{!15, !12, i64 12}
!119 = !{!15, !12, i64 16}
!120 = !{!15, !12, i64 20}
!121 = !{!33, !12, i64 90548}
!122 = !{!35, !35, i64 0}
!123 = !{!115, !12, i64 0}
!124 = !{!79, !12, i64 168}
!125 = !{!79, !12, i64 184}
!126 = !{!79, !12, i64 216}
