; ModuleID = 'src/header.c'
source_filename = "src/header.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

%struct.datapartition = type { ptr, %struct.EncodingEnvironment, ptr }
%struct.EncodingEnvironment = type { i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32 }
%struct.syntaxelement = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }

@assignSE2partition_NoDP = dso_local local_unnamed_addr global [20 x i32] zeroinitializer, align 4
@assignSE2partition_DP = dso_local local_unnamed_addr global [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 2, i32 2, i32 2, i32 2, i32 0, i32 0, i32 0, i32 0], align 4
@assignSE2partition = dso_local local_unnamed_addr global [2 x ptr] zeroinitializer, align 8
@input = external dso_local local_unnamed_addr global ptr, align 8
@img = external dso_local local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [22 x i8] c"SH: first_mb_in_slice\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"SH: slice_type\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"SH: pic_parameter_set_id\00", align 1
@active_pps = external dso_local local_unnamed_addr global ptr, align 8
@log2_max_frame_num_minus4 = external dso_local local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"SH: frame_num\00", align 1
@active_sps = external dso_local local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"field_pic_flag == img->fld_flag\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"src/header.c\00", align 1
@__PRETTY_FUNCTION__.SliceHeader = private unnamed_addr constant [18 x i8] c"int SliceHeader()\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"SH: field_pic_flag\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"SH: bottom_field_flag\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"SH: idr_pic_id\00", align 1
@log2_max_pic_order_cnt_lsb_minus4 = external dso_local local_unnamed_addr global i32, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"SH: pic_order_cnt_lsb\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"SH: delta_pic_order_cnt_bottom\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"SH: delta_pic_order_cnt[0]\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"SH: delta_pic_order_cnt[1]\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"SH: redundant_pic_cnt\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"SH: direct_spatial_mv_pred_flag\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"SH: num_ref_idx_active_override_flag\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"SH: num_ref_idx_l0_active_minus1\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"SH: num_ref_idx_l1_active_minus1\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"SH: cabac_init_idc\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"SH: slice_qp_delta\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"SH: sp_for_switch_flag\00", align 1
@si_frame_indicator = external dso_local local_unnamed_addr global i32, align 4
@sp2_frame_indicator = external dso_local local_unnamed_addr global i32, align 4
@.str.21 = private unnamed_addr constant [19 x i8] c"SH: slice_qs_delta\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"SH: disable_deblocking_filter_idc\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"SH: slice_alpha_c0_offset_div2\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"SH: slice_beta_offset_div2\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"SH: slice_group_change_cycle\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"DPA: slice_id\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"Picture Type not supported!\00", align 1
@.str.28 = private unnamed_addr constant [54 x i8] c"PartNo > 0 && PartNo < img->currentSlice->max_part_nr\00", align 1
@__PRETTY_FUNCTION__.Partition_BC_Header = private unnamed_addr constant [29 x i8] c"int Partition_BC_Header(int)\00", align 1
@.str.29 = private unnamed_addr constant [36 x i8] c"SH: ref_pic_list_reordering_flag_l0\00", align 1
@.str.30 = private unnamed_addr constant [30 x i8] c"SH: reordering_of_pic_num_idc\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"SH: abs_diff_pic_num_minus1_l0\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"SH: long_term_pic_idx_l0\00", align 1
@.str.33 = private unnamed_addr constant [36 x i8] c"SH: ref_pic_list_reordering_flag_l1\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"SH: remapping_of_pic_num_idc\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"SH: abs_diff_pic_num_minus1_l1\00", align 1
@.str.36 = private unnamed_addr constant [25 x i8] c"SH: long_term_pic_idx_l1\00", align 1
@.str.37 = private unnamed_addr constant [33 x i8] c"SH: no_output_of_prior_pics_flag\00", align 1
@.str.38 = private unnamed_addr constant [29 x i8] c"SH: long_term_reference_flag\00", align 1
@.str.39 = private unnamed_addr constant [36 x i8] c"SH: adaptive_ref_pic_buffering_flag\00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"Error encoding MMCO commands\00", align 1
@.str.41 = private unnamed_addr constant [40 x i8] c"SH: memory_management_control_operation\00", align 1
@.str.42 = private unnamed_addr constant [34 x i8] c"SH: difference_of_pic_nums_minus1\00", align 1
@.str.43 = private unnamed_addr constant [22 x i8] c"SH: long_term_pic_num\00", align 1
@.str.44 = private unnamed_addr constant [24 x i8] c"SH: long_term_frame_idx\00", align 1
@.str.45 = private unnamed_addr constant [32 x i8] c"SH: max_long_term_pic_idx_plus1\00", align 1
@.str.46 = private unnamed_addr constant [26 x i8] c"SH: luma_log_weight_denom\00", align 1
@luma_log_weight_denom = external dso_local local_unnamed_addr global i32, align 4
@.str.47 = private unnamed_addr constant [28 x i8] c"SH: chroma_log_weight_denom\00", align 1
@chroma_log_weight_denom = external dso_local local_unnamed_addr global i32, align 4
@wp_weight = external dso_local local_unnamed_addr global ptr, align 8
@wp_offset = external dso_local local_unnamed_addr global ptr, align 8
@.str.48 = private unnamed_addr constant [24 x i8] c"SH: luma_weight_flag_l0\00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"SH: luma_weight_l0\00", align 1
@.str.50 = private unnamed_addr constant [19 x i8] c"SH: luma_offset_l0\00", align 1
@.str.51 = private unnamed_addr constant [22 x i8] c"chroma_weight_flag_l0\00", align 1
@.str.52 = private unnamed_addr constant [17 x i8] c"chroma_weight_l0\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"chroma_offset_l0\00", align 1
@.str.54 = private unnamed_addr constant [24 x i8] c"SH: luma_weight_flag_l1\00", align 1
@.str.55 = private unnamed_addr constant [19 x i8] c"SH: luma_weight_l1\00", align 1
@.str.56 = private unnamed_addr constant [19 x i8] c"SH: luma_offset_l1\00", align 1
@.str.57 = private unnamed_addr constant [22 x i8] c"chroma_weight_flag_l1\00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c"chroma_weight_l1\00", align 1
@.str.59 = private unnamed_addr constant [17 x i8] c"chroma_offset_l1\00", align 1

; Function Attrs: nounwind
define dso_local signext i32 @SliceHeader() local_unnamed_addr #0 {
  %1 = load ptr, ptr @input, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 2992
  %3 = load i32, ptr %2, align 8, !tbaa !10
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [2 x ptr], ptr @assignSE2partition, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = load i32, ptr %6, align 4, !tbaa !14
  %8 = load ptr, ptr @img, align 8, !tbaa !6
  %9 = getelementptr inbounds i8, ptr %8, i64 31568
  %10 = load ptr, ptr %9, align 8, !tbaa !15
  %11 = getelementptr inbounds i8, ptr %10, i64 24
  %12 = load ptr, ptr %11, align 8, !tbaa !19
  %13 = sext i32 %7 to i64
  %14 = getelementptr inbounds %struct.datapartition, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !21
  %16 = getelementptr inbounds i8, ptr %8, i64 90220
  %17 = load i32, ptr %16, align 4, !tbaa !24
  %18 = icmp ne i32 %17, 0
  %19 = getelementptr inbounds i8, ptr %8, i64 12
  %20 = load i32, ptr %19, align 4, !tbaa !25
  %21 = zext i1 %18 to i32
  %22 = ashr i32 %20, %21
  %23 = tail call signext i32 @ue_v(ptr noundef nonnull @.str, i32 noundef signext %22, ptr noundef %15) #6
  %24 = load ptr, ptr @img, align 8, !tbaa !6
  %25 = getelementptr inbounds i8, ptr %24, i64 24
  %26 = load i32, ptr %25, align 8, !tbaa !26
  %27 = icmp ult i32 %26, 4
  br i1 %27, label %29, label %28

28:                                               ; preds = %0
  tail call void @error(ptr noundef nonnull @.str.27, i32 noundef signext 1) #6
  br label %31

29:                                               ; preds = %0
  %30 = add nuw nsw i32 %26, 5
  br label %31

31:                                               ; preds = %29, %28
  %32 = phi i32 [ 0, %28 ], [ %30, %29 ]
  %33 = tail call signext i32 @ue_v(ptr noundef nonnull @.str.1, i32 noundef signext %32, ptr noundef %15) #6
  %34 = add nsw i32 %33, %23
  %35 = load ptr, ptr @active_pps, align 8, !tbaa !6
  %36 = getelementptr inbounds i8, ptr %35, i64 4
  %37 = load i32, ptr %36, align 4, !tbaa !27
  %38 = tail call signext i32 @ue_v(ptr noundef nonnull @.str.2, i32 noundef signext %37, ptr noundef %15) #6
  %39 = add nsw i32 %34, %38
  %40 = load i32, ptr @log2_max_frame_num_minus4, align 4, !tbaa !14
  %41 = add i32 %40, 4
  %42 = load ptr, ptr @img, align 8, !tbaa !6
  %43 = getelementptr inbounds i8, ptr %42, i64 90284
  %44 = load i32, ptr %43, align 4, !tbaa !29
  %45 = tail call signext i32 @u_v(i32 noundef signext %41, ptr noundef nonnull @.str.3, i32 noundef signext %44, ptr noundef %15) #6
  %46 = add nsw i32 %39, %45
  %47 = load ptr, ptr @active_sps, align 8, !tbaa !6
  %48 = getelementptr inbounds i8, ptr %47, i64 1148
  %49 = load i32, ptr %48, align 4, !tbaa !30
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %73

51:                                               ; preds = %31
  %52 = load ptr, ptr @img, align 8, !tbaa !6
  %53 = getelementptr inbounds i8, ptr %52, i64 28
  %54 = load i32, ptr %53, align 4, !tbaa !34
  %55 = add i32 %54, -1
  %56 = icmp ult i32 %55, 2
  %57 = zext i1 %56 to i32
  %58 = getelementptr inbounds i8, ptr %52, i64 89208
  %59 = load i32, ptr %58, align 8, !tbaa !35
  %60 = icmp eq i32 %59, %57
  br i1 %60, label %62, label %61

61:                                               ; preds = %51
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef signext 83, ptr noundef nonnull @__PRETTY_FUNCTION__.SliceHeader) #7
  unreachable

62:                                               ; preds = %51
  %63 = tail call signext i32 @u_1(ptr noundef nonnull @.str.6, i32 noundef signext %57, ptr noundef %15) #6
  %64 = add nsw i32 %63, %46
  br i1 %56, label %65, label %73

65:                                               ; preds = %62
  %66 = load ptr, ptr @img, align 8, !tbaa !6
  %67 = getelementptr inbounds i8, ptr %66, i64 28
  %68 = load i32, ptr %67, align 4, !tbaa !34
  %69 = icmp eq i32 %68, 2
  %70 = zext i1 %69 to i32
  %71 = tail call signext i32 @u_1(ptr noundef nonnull @.str.7, i32 noundef signext %70, ptr noundef %15) #6
  %72 = add nsw i32 %71, %64
  br label %73

73:                                               ; preds = %62, %65, %31
  %74 = phi i1 [ true, %31 ], [ false, %65 ], [ true, %62 ]
  %75 = phi i1 [ false, %31 ], [ true, %65 ], [ false, %62 ]
  %76 = phi i32 [ %46, %31 ], [ %72, %65 ], [ %64, %62 ]
  %77 = load ptr, ptr @img, align 8, !tbaa !6
  %78 = getelementptr inbounds i8, ptr %77, i64 31560
  %79 = load ptr, ptr %78, align 8, !tbaa !36
  %80 = getelementptr inbounds i8, ptr %79, i64 4
  %81 = load i32, ptr %80, align 4, !tbaa !37
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %73
  %84 = load i32, ptr %77, align 8, !tbaa !39
  %85 = srem i32 %84, 2
  %86 = tail call signext i32 @ue_v(ptr noundef nonnull @.str.8, i32 noundef signext %85, ptr noundef %15) #6
  %87 = add nsw i32 %86, %76
  %88 = load ptr, ptr @img, align 8, !tbaa !6
  br label %89

89:                                               ; preds = %83, %73
  %90 = phi ptr [ %88, %83 ], [ %77, %73 ]
  %91 = phi i32 [ %87, %83 ], [ %76, %73 ]
  %92 = getelementptr inbounds i8, ptr %90, i64 90224
  %93 = load i32, ptr %92, align 8, !tbaa !40
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %152

95:                                               ; preds = %89
  %96 = load ptr, ptr @active_sps, align 8, !tbaa !6
  %97 = getelementptr inbounds i8, ptr %96, i64 1148
  %98 = load i32, ptr %97, align 4, !tbaa !30
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %109, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds i8, ptr %90, i64 90268
  %102 = load i32, ptr %101, align 4, !tbaa !41
  %103 = load i32, ptr @log2_max_pic_order_cnt_lsb_minus4, align 4, !tbaa !14
  %104 = add i32 %103, 4
  %105 = shl nsw i32 -1, %104
  %106 = xor i32 %105, -1
  %107 = and i32 %102, %106
  %108 = getelementptr inbounds i8, ptr %90, i64 90248
  store i32 %107, ptr %108, align 8, !tbaa !42
  br label %136

109:                                              ; preds = %95
  br i1 %74, label %118, label %110

110:                                              ; preds = %109
  %111 = getelementptr inbounds i8, ptr %90, i64 28
  %112 = load i32, ptr %111, align 4, !tbaa !34
  switch i32 %112, label %113 [
    i32 1, label %118
    i32 2, label %127
  ]

113:                                              ; preds = %110
  %114 = load i32, ptr @log2_max_pic_order_cnt_lsb_minus4, align 4, !tbaa !14
  %115 = getelementptr inbounds i8, ptr %90, i64 90248
  %116 = load i32, ptr %115, align 8, !tbaa !42
  %117 = add i32 %114, 4
  br label %136

118:                                              ; preds = %110, %109
  %119 = getelementptr inbounds i8, ptr %90, i64 90268
  %120 = load i32, ptr %119, align 4, !tbaa !41
  %121 = load i32, ptr @log2_max_pic_order_cnt_lsb_minus4, align 4, !tbaa !14
  %122 = add i32 %121, 4
  %123 = shl nsw i32 -1, %122
  %124 = xor i32 %123, -1
  %125 = and i32 %120, %124
  %126 = getelementptr inbounds i8, ptr %90, i64 90248
  store i32 %125, ptr %126, align 8, !tbaa !42
  br label %136

127:                                              ; preds = %110
  %128 = getelementptr inbounds i8, ptr %90, i64 90272
  %129 = load i32, ptr %128, align 8, !tbaa !43
  %130 = load i32, ptr @log2_max_pic_order_cnt_lsb_minus4, align 4, !tbaa !14
  %131 = add i32 %130, 4
  %132 = shl nsw i32 -1, %131
  %133 = xor i32 %132, -1
  %134 = and i32 %129, %133
  %135 = getelementptr inbounds i8, ptr %90, i64 90248
  store i32 %134, ptr %135, align 8, !tbaa !42
  br label %136

136:                                              ; preds = %113, %118, %127, %100
  %137 = phi i32 [ %117, %113 ], [ %122, %118 ], [ %131, %127 ], [ %104, %100 ]
  %138 = phi i32 [ %116, %113 ], [ %125, %118 ], [ %134, %127 ], [ %107, %100 ]
  %139 = tail call signext i32 @u_v(i32 noundef signext %137, ptr noundef nonnull @.str.9, i32 noundef signext %138, ptr noundef %15) #6
  %140 = add nsw i32 %139, %91
  %141 = load ptr, ptr @img, align 8, !tbaa !6
  %142 = getelementptr inbounds i8, ptr %141, i64 90312
  %143 = load i32, ptr %142, align 8, !tbaa !44
  %144 = icmp eq i32 %143, 0
  %145 = or i1 %75, %144
  br i1 %145, label %152, label %146

146:                                              ; preds = %136
  %147 = getelementptr inbounds i8, ptr %141, i64 90252
  %148 = load i32, ptr %147, align 4, !tbaa !45
  %149 = tail call signext i32 @se_v(ptr noundef nonnull @.str.10, i32 noundef signext %148, ptr noundef %15) #6
  %150 = add nsw i32 %149, %140
  %151 = load ptr, ptr @img, align 8, !tbaa !6
  br label %152

152:                                              ; preds = %136, %146, %89
  %153 = phi ptr [ %141, %136 ], [ %151, %146 ], [ %90, %89 ]
  %154 = phi i32 [ %140, %136 ], [ %150, %146 ], [ %91, %89 ]
  %155 = getelementptr inbounds i8, ptr %153, i64 90224
  %156 = load i32, ptr %155, align 8, !tbaa !40
  %157 = icmp eq i32 %156, 1
  br i1 %157, label %158, label %178

158:                                              ; preds = %152
  %159 = getelementptr inbounds i8, ptr %153, i64 90228
  %160 = load i32, ptr %159, align 4, !tbaa !46
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %178

162:                                              ; preds = %158
  %163 = getelementptr inbounds i8, ptr %153, i64 90256
  %164 = load i32, ptr %163, align 8, !tbaa !14
  %165 = tail call signext i32 @se_v(ptr noundef nonnull @.str.11, i32 noundef signext %164, ptr noundef %15) #6
  %166 = add nsw i32 %165, %154
  %167 = load ptr, ptr @img, align 8, !tbaa !6
  %168 = getelementptr inbounds i8, ptr %167, i64 90312
  %169 = load i32, ptr %168, align 8, !tbaa !44
  %170 = icmp eq i32 %169, 0
  %171 = or i1 %75, %170
  br i1 %171, label %178, label %172

172:                                              ; preds = %162
  %173 = getelementptr inbounds i8, ptr %167, i64 90260
  %174 = load i32, ptr %173, align 4, !tbaa !14
  %175 = tail call signext i32 @se_v(ptr noundef nonnull @.str.12, i32 noundef signext %174, ptr noundef %15) #6
  %176 = add nsw i32 %175, %166
  %177 = load ptr, ptr @img, align 8, !tbaa !6
  br label %178

178:                                              ; preds = %162, %172, %158, %152
  %179 = phi ptr [ %153, %158 ], [ %167, %162 ], [ %177, %172 ], [ %153, %152 ]
  %180 = phi i32 [ %154, %158 ], [ %166, %162 ], [ %176, %172 ], [ %154, %152 ]
  %181 = load ptr, ptr @input, align 8, !tbaa !6
  %182 = getelementptr inbounds i8, ptr %181, i64 3876
  %183 = load i32, ptr %182, align 4, !tbaa !47
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %191, label %185

185:                                              ; preds = %178
  %186 = getelementptr inbounds i8, ptr %179, i64 90216
  %187 = load i32, ptr %186, align 8, !tbaa !48
  %188 = tail call signext i32 @ue_v(ptr noundef nonnull @.str.13, i32 noundef signext %187, ptr noundef %15) #6
  %189 = add nsw i32 %188, %180
  %190 = load ptr, ptr @img, align 8, !tbaa !6
  br label %191

191:                                              ; preds = %185, %178
  %192 = phi ptr [ %190, %185 ], [ %179, %178 ]
  %193 = phi i32 [ %189, %185 ], [ %180, %178 ]
  %194 = getelementptr inbounds i8, ptr %192, i64 24
  %195 = load i32, ptr %194, align 8, !tbaa !26
  %196 = icmp eq i32 %195, 1
  br i1 %196, label %197, label %205

197:                                              ; preds = %191
  %198 = getelementptr inbounds i8, ptr %192, i64 89404
  %199 = load i32, ptr %198, align 4, !tbaa !49
  %200 = tail call signext i32 @u_1(ptr noundef nonnull @.str.14, i32 noundef signext %199, ptr noundef %15) #6
  %201 = add nsw i32 %200, %193
  %202 = load ptr, ptr @img, align 8, !tbaa !6
  %203 = getelementptr inbounds i8, ptr %202, i64 24
  %204 = load i32, ptr %203, align 8, !tbaa !26
  br label %205

205:                                              ; preds = %197, %191
  %206 = phi i32 [ %204, %197 ], [ %195, %191 ]
  %207 = phi ptr [ %202, %197 ], [ %192, %191 ]
  %208 = phi i32 [ %201, %197 ], [ %193, %191 ]
  switch i32 %206, label %259 [
    i32 0, label %209
    i32 3, label %209
    i32 1, label %220
  ]

209:                                              ; preds = %205, %205
  %210 = getelementptr inbounds i8, ptr %207, i64 89408
  %211 = load i32, ptr %210, align 8, !tbaa !50
  %212 = load ptr, ptr @active_pps, align 8, !tbaa !6
  %213 = getelementptr inbounds i8, ptr %212, i64 184
  %214 = load i32, ptr %213, align 8, !tbaa !51
  %215 = add nsw i32 %214, 1
  %216 = icmp ne i32 %211, %215
  %217 = zext i1 %216 to i32
  %218 = tail call signext i32 @u_1(ptr noundef nonnull @.str.15, i32 noundef signext %217, ptr noundef %15) #6
  %219 = add nsw i32 %218, %208
  br i1 %216, label %241, label %259

220:                                              ; preds = %205
  %221 = getelementptr inbounds i8, ptr %207, i64 89408
  %222 = load i32, ptr %221, align 8, !tbaa !50
  %223 = load ptr, ptr @active_pps, align 8, !tbaa !6
  %224 = getelementptr inbounds i8, ptr %223, i64 184
  %225 = load i32, ptr %224, align 8, !tbaa !51
  %226 = add nsw i32 %225, 1
  %227 = icmp eq i32 %222, %226
  br i1 %227, label %231, label %228

228:                                              ; preds = %220
  %229 = tail call signext i32 @u_1(ptr noundef nonnull @.str.15, i32 noundef signext 1, ptr noundef %15) #6
  %230 = add nsw i32 %229, %208
  br label %241

231:                                              ; preds = %220
  %232 = getelementptr inbounds i8, ptr %207, i64 89412
  %233 = load i32, ptr %232, align 4, !tbaa !52
  %234 = getelementptr inbounds i8, ptr %223, i64 188
  %235 = load i32, ptr %234, align 4, !tbaa !53
  %236 = add nsw i32 %235, 1
  %237 = icmp ne i32 %233, %236
  %238 = zext i1 %237 to i32
  %239 = tail call signext i32 @u_1(ptr noundef nonnull @.str.15, i32 noundef signext %238, ptr noundef %15) #6
  %240 = add nsw i32 %239, %208
  br i1 %237, label %241, label %259

241:                                              ; preds = %209, %228, %231
  %242 = phi i32 [ %230, %228 ], [ %240, %231 ], [ %219, %209 ]
  %243 = load ptr, ptr @img, align 8, !tbaa !6
  %244 = getelementptr inbounds i8, ptr %243, i64 89408
  %245 = load i32, ptr %244, align 8, !tbaa !50
  %246 = add nsw i32 %245, -1
  %247 = tail call signext i32 @ue_v(ptr noundef nonnull @.str.16, i32 noundef signext %246, ptr noundef %15) #6
  %248 = add nsw i32 %247, %242
  %249 = load ptr, ptr @img, align 8, !tbaa !6
  %250 = getelementptr inbounds i8, ptr %249, i64 24
  %251 = load i32, ptr %250, align 8, !tbaa !26
  %252 = icmp eq i32 %251, 1
  br i1 %252, label %253, label %259

253:                                              ; preds = %241
  %254 = getelementptr inbounds i8, ptr %249, i64 89412
  %255 = load i32, ptr %254, align 4, !tbaa !52
  %256 = add nsw i32 %255, -1
  %257 = tail call signext i32 @ue_v(ptr noundef nonnull @.str.17, i32 noundef signext %256, ptr noundef %15) #6
  %258 = add nsw i32 %257, %248
  br label %259

259:                                              ; preds = %209, %205, %231, %253, %241
  %260 = phi i32 [ %208, %205 ], [ %258, %253 ], [ %248, %241 ], [ %240, %231 ], [ %219, %209 ]
  %261 = load ptr, ptr @input, align 8, !tbaa !6
  %262 = getelementptr inbounds i8, ptr %261, i64 2992
  %263 = load i32, ptr %262, align 8, !tbaa !10
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [2 x ptr], ptr @assignSE2partition, i64 0, i64 %264
  %266 = load ptr, ptr %265, align 8, !tbaa !6
  %267 = load i32, ptr %266, align 4, !tbaa !14
  %268 = load ptr, ptr @img, align 8, !tbaa !6
  %269 = getelementptr inbounds i8, ptr %268, i64 31568
  %270 = load ptr, ptr %269, align 8, !tbaa !15
  %271 = getelementptr inbounds i8, ptr %270, i64 24
  %272 = load ptr, ptr %271, align 8, !tbaa !19
  %273 = sext i32 %267 to i64
  %274 = getelementptr inbounds %struct.datapartition, ptr %272, i64 %273
  %275 = load ptr, ptr %274, align 8, !tbaa !21
  %276 = getelementptr inbounds i8, ptr %268, i64 24
  %277 = load i32, ptr %276, align 8, !tbaa !26
  %278 = icmp eq i32 %277, 2
  br i1 %278, label %319, label %279

279:                                              ; preds = %259
  %280 = getelementptr inbounds i8, ptr %270, i64 56
  %281 = load i32, ptr %280, align 8, !tbaa !54
  %282 = tail call signext i32 @u_1(ptr noundef nonnull @.str.29, i32 noundef signext %281, ptr noundef %275) #6
  %283 = load i32, ptr %280, align 8, !tbaa !54
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %319, label %285

285:                                              ; preds = %279
  %286 = getelementptr inbounds i8, ptr %270, i64 64
  %287 = getelementptr inbounds i8, ptr %270, i64 80
  %288 = getelementptr inbounds i8, ptr %270, i64 72
  %289 = load ptr, ptr %286, align 8, !tbaa !55
  br label %290

290:                                              ; preds = %314, %285
  %291 = phi ptr [ %289, %285 ], [ %316, %314 ]
  %292 = phi i64 [ -1, %285 ], [ %294, %314 ]
  %293 = phi i32 [ %282, %285 ], [ %317, %314 ]
  %294 = add nsw i64 %292, 1
  %295 = getelementptr inbounds i32, ptr %291, i64 %294
  %296 = load i32, ptr %295, align 4, !tbaa !14
  %297 = tail call signext i32 @ue_v(ptr noundef nonnull @.str.30, i32 noundef signext %296, ptr noundef %275) #6
  %298 = add nsw i32 %297, %293
  %299 = load ptr, ptr %286, align 8, !tbaa !55
  %300 = getelementptr inbounds i32, ptr %299, i64 %294
  %301 = load i32, ptr %300, align 4, !tbaa !14
  switch i32 %301, label %314 [
    i32 0, label %303
    i32 1, label %303
    i32 2, label %302
  ]

302:                                              ; preds = %290
  br label %303

303:                                              ; preds = %302, %290, %290
  %304 = phi ptr [ %287, %302 ], [ %288, %290 ], [ %288, %290 ]
  %305 = phi ptr [ @.str.32, %302 ], [ @.str.31, %290 ], [ @.str.31, %290 ]
  %306 = load ptr, ptr %304, align 8, !tbaa !6
  %307 = getelementptr inbounds i32, ptr %306, i64 %294
  %308 = load i32, ptr %307, align 4, !tbaa !14
  %309 = tail call signext i32 @ue_v(ptr noundef nonnull %305, i32 noundef signext %308, ptr noundef %275) #6
  %310 = add nsw i32 %309, %298
  %311 = load ptr, ptr %286, align 8, !tbaa !55
  %312 = getelementptr inbounds i32, ptr %311, i64 %294
  %313 = load i32, ptr %312, align 4, !tbaa !14
  br label %314

314:                                              ; preds = %303, %290
  %315 = phi i32 [ %301, %290 ], [ %313, %303 ]
  %316 = phi ptr [ %299, %290 ], [ %311, %303 ]
  %317 = phi i32 [ %298, %290 ], [ %310, %303 ]
  %318 = icmp eq i32 %315, 3
  br i1 %318, label %319, label %290

319:                                              ; preds = %314, %279, %259
  %320 = phi i32 [ %282, %279 ], [ 0, %259 ], [ %317, %314 ]
  %321 = load ptr, ptr @img, align 8, !tbaa !6
  %322 = getelementptr inbounds i8, ptr %321, i64 24
  %323 = load i32, ptr %322, align 8, !tbaa !26
  %324 = icmp eq i32 %323, 1
  br i1 %324, label %325, label %366

325:                                              ; preds = %319
  %326 = getelementptr inbounds i8, ptr %270, i64 88
  %327 = load i32, ptr %326, align 8, !tbaa !56
  %328 = tail call signext i32 @u_1(ptr noundef nonnull @.str.33, i32 noundef signext %327, ptr noundef %275) #6
  %329 = add nsw i32 %328, %320
  %330 = load i32, ptr %326, align 8, !tbaa !56
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %366, label %332

332:                                              ; preds = %325
  %333 = getelementptr inbounds i8, ptr %270, i64 96
  %334 = getelementptr inbounds i8, ptr %270, i64 112
  %335 = getelementptr inbounds i8, ptr %270, i64 104
  %336 = load ptr, ptr %333, align 8, !tbaa !57
  br label %337

337:                                              ; preds = %361, %332
  %338 = phi ptr [ %336, %332 ], [ %363, %361 ]
  %339 = phi i64 [ -1, %332 ], [ %341, %361 ]
  %340 = phi i32 [ %329, %332 ], [ %364, %361 ]
  %341 = add nsw i64 %339, 1
  %342 = getelementptr inbounds i32, ptr %338, i64 %341
  %343 = load i32, ptr %342, align 4, !tbaa !14
  %344 = tail call signext i32 @ue_v(ptr noundef nonnull @.str.34, i32 noundef signext %343, ptr noundef %275) #6
  %345 = add nsw i32 %344, %340
  %346 = load ptr, ptr %333, align 8, !tbaa !57
  %347 = getelementptr inbounds i32, ptr %346, i64 %341
  %348 = load i32, ptr %347, align 4, !tbaa !14
  switch i32 %348, label %361 [
    i32 0, label %350
    i32 1, label %350
    i32 2, label %349
  ]

349:                                              ; preds = %337
  br label %350

350:                                              ; preds = %349, %337, %337
  %351 = phi ptr [ %334, %349 ], [ %335, %337 ], [ %335, %337 ]
  %352 = phi ptr [ @.str.36, %349 ], [ @.str.35, %337 ], [ @.str.35, %337 ]
  %353 = load ptr, ptr %351, align 8, !tbaa !6
  %354 = getelementptr inbounds i32, ptr %353, i64 %341
  %355 = load i32, ptr %354, align 4, !tbaa !14
  %356 = tail call signext i32 @ue_v(ptr noundef nonnull %352, i32 noundef signext %355, ptr noundef %275) #6
  %357 = add nsw i32 %356, %345
  %358 = load ptr, ptr %333, align 8, !tbaa !57
  %359 = getelementptr inbounds i32, ptr %358, i64 %341
  %360 = load i32, ptr %359, align 4, !tbaa !14
  br label %361

361:                                              ; preds = %350, %337
  %362 = phi i32 [ %348, %337 ], [ %360, %350 ]
  %363 = phi ptr [ %346, %337 ], [ %358, %350 ]
  %364 = phi i32 [ %345, %337 ], [ %357, %350 ]
  %365 = icmp eq i32 %362, 3
  br i1 %365, label %366, label %337

366:                                              ; preds = %361, %319, %325
  %367 = phi i32 [ %329, %325 ], [ %320, %319 ], [ %364, %361 ]
  %368 = add nsw i32 %367, %260
  %369 = load ptr, ptr @img, align 8, !tbaa !6
  %370 = getelementptr inbounds i8, ptr %369, i64 24
  %371 = load i32, ptr %370, align 8, !tbaa !26
  switch i32 %371, label %673 [
    i32 0, label %374
    i32 3, label %374
    i32 1, label %372
  ]

372:                                              ; preds = %366
  %373 = load ptr, ptr @active_pps, align 8, !tbaa !6
  br label %381

374:                                              ; preds = %366, %366
  %375 = load ptr, ptr @active_pps, align 8, !tbaa !6
  %376 = getelementptr inbounds i8, ptr %375, i64 192
  %377 = load i32, ptr %376, align 8, !tbaa !58
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %379, label %386

379:                                              ; preds = %374
  %380 = icmp eq i32 %371, 1
  br i1 %380, label %381, label %673

381:                                              ; preds = %372, %379
  %382 = phi ptr [ %373, %372 ], [ %375, %379 ]
  %383 = getelementptr inbounds i8, ptr %382, i64 196
  %384 = load i32, ptr %383, align 4, !tbaa !59
  %385 = icmp eq i32 %384, 1
  br i1 %385, label %386, label %673

386:                                              ; preds = %381, %374
  %387 = load ptr, ptr @input, align 8, !tbaa !6
  %388 = getelementptr inbounds i8, ptr %387, i64 2992
  %389 = load i32, ptr %388, align 8, !tbaa !10
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds [2 x ptr], ptr @assignSE2partition, i64 0, i64 %390
  %392 = load ptr, ptr %391, align 8, !tbaa !6
  %393 = load i32, ptr %392, align 4, !tbaa !14
  %394 = getelementptr inbounds i8, ptr %369, i64 31568
  %395 = load ptr, ptr %394, align 8, !tbaa !15
  %396 = getelementptr inbounds i8, ptr %395, i64 24
  %397 = load ptr, ptr %396, align 8, !tbaa !19
  %398 = sext i32 %393 to i64
  %399 = getelementptr inbounds %struct.datapartition, ptr %397, i64 %398
  %400 = load ptr, ptr %399, align 8, !tbaa !21
  %401 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !14
  %402 = tail call signext i32 @ue_v(ptr noundef nonnull @.str.46, i32 noundef signext %401, ptr noundef %400) #6
  %403 = load ptr, ptr @active_sps, align 8, !tbaa !6
  %404 = getelementptr inbounds i8, ptr %403, i64 32
  %405 = load i32, ptr %404, align 4, !tbaa !60
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %411, label %407

407:                                              ; preds = %386
  %408 = load i32, ptr @chroma_log_weight_denom, align 4, !tbaa !14
  %409 = tail call signext i32 @ue_v(ptr noundef nonnull @.str.47, i32 noundef signext %408, ptr noundef %400) #6
  %410 = add nsw i32 %409, %402
  br label %411

411:                                              ; preds = %407, %386
  %412 = phi i32 [ %410, %407 ], [ %402, %386 ]
  %413 = load ptr, ptr @img, align 8, !tbaa !6
  %414 = getelementptr inbounds i8, ptr %413, i64 89408
  %415 = load i32, ptr %414, align 8, !tbaa !50
  %416 = icmp sgt i32 %415, 0
  br i1 %416, label %417, label %533

417:                                              ; preds = %411, %525
  %418 = phi i64 [ %527, %525 ], [ 0, %411 ]
  %419 = phi i32 [ %526, %525 ], [ %412, %411 ]
  %420 = load ptr, ptr @wp_weight, align 8, !tbaa !6
  %421 = load ptr, ptr %420, align 8, !tbaa !6
  %422 = getelementptr inbounds ptr, ptr %421, i64 %418
  %423 = load ptr, ptr %422, align 8, !tbaa !6
  %424 = load i32, ptr %423, align 4, !tbaa !14
  %425 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !14
  %426 = shl nuw i32 1, %425
  %427 = icmp eq i32 %424, %426
  br i1 %427, label %428, label %435

428:                                              ; preds = %417
  %429 = load ptr, ptr @wp_offset, align 8, !tbaa !6
  %430 = load ptr, ptr %429, align 8, !tbaa !6
  %431 = getelementptr inbounds ptr, ptr %430, i64 %418
  %432 = load ptr, ptr %431, align 8, !tbaa !6
  %433 = load i32, ptr %432, align 4, !tbaa !14
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %452, label %435

435:                                              ; preds = %428, %417
  %436 = tail call signext i32 @u_1(ptr noundef nonnull @.str.48, i32 noundef signext 1, ptr noundef %400) #6
  %437 = add nsw i32 %436, %419
  %438 = load ptr, ptr @wp_weight, align 8, !tbaa !6
  %439 = load ptr, ptr %438, align 8, !tbaa !6
  %440 = getelementptr inbounds ptr, ptr %439, i64 %418
  %441 = load ptr, ptr %440, align 8, !tbaa !6
  %442 = load i32, ptr %441, align 4, !tbaa !14
  %443 = tail call signext i32 @se_v(ptr noundef nonnull @.str.49, i32 noundef signext %442, ptr noundef %400) #6
  %444 = add nsw i32 %437, %443
  %445 = load ptr, ptr @wp_offset, align 8, !tbaa !6
  %446 = load ptr, ptr %445, align 8, !tbaa !6
  %447 = getelementptr inbounds ptr, ptr %446, i64 %418
  %448 = load ptr, ptr %447, align 8, !tbaa !6
  %449 = load i32, ptr %448, align 4, !tbaa !14
  %450 = tail call signext i32 @se_v(ptr noundef nonnull @.str.50, i32 noundef signext %449, ptr noundef %400) #6
  %451 = add nsw i32 %444, %450
  br label %455

452:                                              ; preds = %428
  %453 = tail call signext i32 @u_1(ptr noundef nonnull @.str.48, i32 noundef signext 0, ptr noundef %400) #6
  %454 = add nsw i32 %453, %419
  br label %455

455:                                              ; preds = %452, %435
  %456 = phi i32 [ %451, %435 ], [ %454, %452 ]
  %457 = load ptr, ptr @active_sps, align 8, !tbaa !6
  %458 = getelementptr inbounds i8, ptr %457, i64 32
  %459 = load i32, ptr %458, align 4, !tbaa !60
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %525, label %461

461:                                              ; preds = %455
  %462 = load ptr, ptr @wp_weight, align 8, !tbaa !6
  %463 = load ptr, ptr %462, align 8, !tbaa !6
  %464 = getelementptr inbounds ptr, ptr %463, i64 %418
  %465 = load ptr, ptr %464, align 8, !tbaa !6
  %466 = getelementptr inbounds i8, ptr %465, i64 4
  %467 = load i32, ptr %466, align 4, !tbaa !14
  %468 = load i32, ptr @chroma_log_weight_denom, align 4, !tbaa !14
  %469 = shl nuw i32 1, %468
  %470 = icmp eq i32 %467, %469
  br i1 %470, label %471, label %487

471:                                              ; preds = %461
  %472 = load ptr, ptr @wp_offset, align 8, !tbaa !6
  %473 = load ptr, ptr %472, align 8, !tbaa !6
  %474 = getelementptr inbounds ptr, ptr %473, i64 %418
  %475 = load ptr, ptr %474, align 8, !tbaa !6
  %476 = getelementptr inbounds i8, ptr %475, i64 4
  %477 = load i32, ptr %476, align 4, !tbaa !14
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %479, label %487

479:                                              ; preds = %471
  %480 = getelementptr inbounds i8, ptr %465, i64 8
  %481 = load i32, ptr %480, align 4, !tbaa !14
  %482 = icmp eq i32 %481, %467
  br i1 %482, label %483, label %487

483:                                              ; preds = %479
  %484 = getelementptr inbounds i8, ptr %475, i64 8
  %485 = load i32, ptr %484, align 4, !tbaa !14
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %522, label %487

487:                                              ; preds = %483, %479, %471, %461
  %488 = tail call signext i32 @u_1(ptr noundef nonnull @.str.51, i32 noundef signext 1, ptr noundef %400) #6
  %489 = add nsw i32 %488, %456
  %490 = load ptr, ptr @wp_weight, align 8, !tbaa !6
  %491 = load ptr, ptr %490, align 8, !tbaa !6
  %492 = getelementptr inbounds ptr, ptr %491, i64 %418
  %493 = load ptr, ptr %492, align 8, !tbaa !6
  %494 = getelementptr inbounds i8, ptr %493, i64 4
  %495 = load i32, ptr %494, align 4, !tbaa !14
  %496 = tail call signext i32 @se_v(ptr noundef nonnull @.str.52, i32 noundef signext %495, ptr noundef %400) #6
  %497 = add nsw i32 %489, %496
  %498 = load ptr, ptr @wp_offset, align 8, !tbaa !6
  %499 = load ptr, ptr %498, align 8, !tbaa !6
  %500 = getelementptr inbounds ptr, ptr %499, i64 %418
  %501 = load ptr, ptr %500, align 8, !tbaa !6
  %502 = getelementptr inbounds i8, ptr %501, i64 4
  %503 = load i32, ptr %502, align 4, !tbaa !14
  %504 = tail call signext i32 @se_v(ptr noundef nonnull @.str.53, i32 noundef signext %503, ptr noundef %400) #6
  %505 = add nsw i32 %497, %504
  %506 = load ptr, ptr @wp_weight, align 8, !tbaa !6
  %507 = load ptr, ptr %506, align 8, !tbaa !6
  %508 = getelementptr inbounds ptr, ptr %507, i64 %418
  %509 = load ptr, ptr %508, align 8, !tbaa !6
  %510 = getelementptr inbounds i8, ptr %509, i64 8
  %511 = load i32, ptr %510, align 4, !tbaa !14
  %512 = tail call signext i32 @se_v(ptr noundef nonnull @.str.52, i32 noundef signext %511, ptr noundef %400) #6
  %513 = add nsw i32 %505, %512
  %514 = load ptr, ptr @wp_offset, align 8, !tbaa !6
  %515 = load ptr, ptr %514, align 8, !tbaa !6
  %516 = getelementptr inbounds ptr, ptr %515, i64 %418
  %517 = load ptr, ptr %516, align 8, !tbaa !6
  %518 = getelementptr inbounds i8, ptr %517, i64 8
  %519 = load i32, ptr %518, align 4, !tbaa !14
  %520 = tail call signext i32 @se_v(ptr noundef nonnull @.str.53, i32 noundef signext %519, ptr noundef %400) #6
  %521 = add nsw i32 %513, %520
  br label %525

522:                                              ; preds = %483
  %523 = tail call signext i32 @u_1(ptr noundef nonnull @.str.51, i32 noundef signext 0, ptr noundef %400) #6
  %524 = add nsw i32 %523, %456
  br label %525

525:                                              ; preds = %522, %487, %455
  %526 = phi i32 [ %524, %522 ], [ %456, %455 ], [ %521, %487 ]
  %527 = add nuw nsw i64 %418, 1
  %528 = load ptr, ptr @img, align 8, !tbaa !6
  %529 = getelementptr inbounds i8, ptr %528, i64 89408
  %530 = load i32, ptr %529, align 8, !tbaa !50
  %531 = sext i32 %530 to i64
  %532 = icmp slt i64 %527, %531
  br i1 %532, label %417, label %533

533:                                              ; preds = %525, %411
  %534 = phi i32 [ %412, %411 ], [ %526, %525 ]
  %535 = phi ptr [ %413, %411 ], [ %528, %525 ]
  %536 = getelementptr inbounds i8, ptr %535, i64 24
  %537 = load i32, ptr %536, align 8, !tbaa !26
  %538 = icmp eq i32 %537, 1
  br i1 %538, label %539, label %669

539:                                              ; preds = %533
  %540 = getelementptr inbounds i8, ptr %535, i64 89412
  %541 = load i32, ptr %540, align 4, !tbaa !52
  %542 = icmp sgt i32 %541, 0
  br i1 %542, label %543, label %669

543:                                              ; preds = %539, %661
  %544 = phi i64 [ %663, %661 ], [ 0, %539 ]
  %545 = phi i32 [ %662, %661 ], [ %534, %539 ]
  %546 = load ptr, ptr @wp_weight, align 8, !tbaa !6
  %547 = getelementptr inbounds i8, ptr %546, i64 8
  %548 = load ptr, ptr %547, align 8, !tbaa !6
  %549 = getelementptr inbounds ptr, ptr %548, i64 %544
  %550 = load ptr, ptr %549, align 8, !tbaa !6
  %551 = load i32, ptr %550, align 4, !tbaa !14
  %552 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !14
  %553 = shl nuw i32 1, %552
  %554 = icmp eq i32 %551, %553
  br i1 %554, label %555, label %563

555:                                              ; preds = %543
  %556 = load ptr, ptr @wp_offset, align 8, !tbaa !6
  %557 = getelementptr inbounds i8, ptr %556, i64 8
  %558 = load ptr, ptr %557, align 8, !tbaa !6
  %559 = getelementptr inbounds ptr, ptr %558, i64 %544
  %560 = load ptr, ptr %559, align 8, !tbaa !6
  %561 = load i32, ptr %560, align 4, !tbaa !14
  %562 = icmp eq i32 %561, 0
  br i1 %562, label %582, label %563

563:                                              ; preds = %555, %543
  %564 = tail call signext i32 @u_1(ptr noundef nonnull @.str.54, i32 noundef signext 1, ptr noundef %400) #6
  %565 = add nsw i32 %564, %545
  %566 = load ptr, ptr @wp_weight, align 8, !tbaa !6
  %567 = getelementptr inbounds i8, ptr %566, i64 8
  %568 = load ptr, ptr %567, align 8, !tbaa !6
  %569 = getelementptr inbounds ptr, ptr %568, i64 %544
  %570 = load ptr, ptr %569, align 8, !tbaa !6
  %571 = load i32, ptr %570, align 4, !tbaa !14
  %572 = tail call signext i32 @se_v(ptr noundef nonnull @.str.55, i32 noundef signext %571, ptr noundef %400) #6
  %573 = add nsw i32 %565, %572
  %574 = load ptr, ptr @wp_offset, align 8, !tbaa !6
  %575 = getelementptr inbounds i8, ptr %574, i64 8
  %576 = load ptr, ptr %575, align 8, !tbaa !6
  %577 = getelementptr inbounds ptr, ptr %576, i64 %544
  %578 = load ptr, ptr %577, align 8, !tbaa !6
  %579 = load i32, ptr %578, align 4, !tbaa !14
  %580 = tail call signext i32 @se_v(ptr noundef nonnull @.str.56, i32 noundef signext %579, ptr noundef %400) #6
  %581 = add nsw i32 %573, %580
  br label %585

582:                                              ; preds = %555
  %583 = tail call signext i32 @u_1(ptr noundef nonnull @.str.54, i32 noundef signext 0, ptr noundef %400) #6
  %584 = add nsw i32 %583, %545
  br label %585

585:                                              ; preds = %582, %563
  %586 = phi i32 [ %581, %563 ], [ %584, %582 ]
  %587 = load ptr, ptr @active_sps, align 8, !tbaa !6
  %588 = getelementptr inbounds i8, ptr %587, i64 32
  %589 = load i32, ptr %588, align 4, !tbaa !60
  %590 = icmp eq i32 %589, 0
  br i1 %590, label %661, label %591

591:                                              ; preds = %585
  %592 = load ptr, ptr @wp_weight, align 8, !tbaa !6
  %593 = getelementptr inbounds i8, ptr %592, i64 8
  %594 = load ptr, ptr %593, align 8, !tbaa !6
  %595 = getelementptr inbounds ptr, ptr %594, i64 %544
  %596 = load ptr, ptr %595, align 8, !tbaa !6
  %597 = getelementptr inbounds i8, ptr %596, i64 4
  %598 = load i32, ptr %597, align 4, !tbaa !14
  %599 = load i32, ptr @chroma_log_weight_denom, align 4, !tbaa !14
  %600 = shl nuw i32 1, %599
  %601 = icmp eq i32 %598, %600
  br i1 %601, label %602, label %619

602:                                              ; preds = %591
  %603 = load ptr, ptr @wp_offset, align 8, !tbaa !6
  %604 = getelementptr inbounds i8, ptr %603, i64 8
  %605 = load ptr, ptr %604, align 8, !tbaa !6
  %606 = getelementptr inbounds ptr, ptr %605, i64 %544
  %607 = load ptr, ptr %606, align 8, !tbaa !6
  %608 = getelementptr inbounds i8, ptr %607, i64 4
  %609 = load i32, ptr %608, align 4, !tbaa !14
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %611, label %619

611:                                              ; preds = %602
  %612 = getelementptr inbounds i8, ptr %596, i64 8
  %613 = load i32, ptr %612, align 4, !tbaa !14
  %614 = icmp eq i32 %613, %598
  br i1 %614, label %615, label %619

615:                                              ; preds = %611
  %616 = getelementptr inbounds i8, ptr %607, i64 8
  %617 = load i32, ptr %616, align 4, !tbaa !14
  %618 = icmp eq i32 %617, 0
  br i1 %618, label %658, label %619

619:                                              ; preds = %615, %611, %602, %591
  %620 = tail call signext i32 @u_1(ptr noundef nonnull @.str.57, i32 noundef signext 1, ptr noundef %400) #6
  %621 = add nsw i32 %620, %586
  %622 = load ptr, ptr @wp_weight, align 8, !tbaa !6
  %623 = getelementptr inbounds i8, ptr %622, i64 8
  %624 = load ptr, ptr %623, align 8, !tbaa !6
  %625 = getelementptr inbounds ptr, ptr %624, i64 %544
  %626 = load ptr, ptr %625, align 8, !tbaa !6
  %627 = getelementptr inbounds i8, ptr %626, i64 4
  %628 = load i32, ptr %627, align 4, !tbaa !14
  %629 = tail call signext i32 @se_v(ptr noundef nonnull @.str.58, i32 noundef signext %628, ptr noundef %400) #6
  %630 = add nsw i32 %621, %629
  %631 = load ptr, ptr @wp_offset, align 8, !tbaa !6
  %632 = getelementptr inbounds i8, ptr %631, i64 8
  %633 = load ptr, ptr %632, align 8, !tbaa !6
  %634 = getelementptr inbounds ptr, ptr %633, i64 %544
  %635 = load ptr, ptr %634, align 8, !tbaa !6
  %636 = getelementptr inbounds i8, ptr %635, i64 4
  %637 = load i32, ptr %636, align 4, !tbaa !14
  %638 = tail call signext i32 @se_v(ptr noundef nonnull @.str.59, i32 noundef signext %637, ptr noundef %400) #6
  %639 = add nsw i32 %630, %638
  %640 = load ptr, ptr @wp_weight, align 8, !tbaa !6
  %641 = getelementptr inbounds i8, ptr %640, i64 8
  %642 = load ptr, ptr %641, align 8, !tbaa !6
  %643 = getelementptr inbounds ptr, ptr %642, i64 %544
  %644 = load ptr, ptr %643, align 8, !tbaa !6
  %645 = getelementptr inbounds i8, ptr %644, i64 8
  %646 = load i32, ptr %645, align 4, !tbaa !14
  %647 = tail call signext i32 @se_v(ptr noundef nonnull @.str.58, i32 noundef signext %646, ptr noundef %400) #6
  %648 = add nsw i32 %639, %647
  %649 = load ptr, ptr @wp_offset, align 8, !tbaa !6
  %650 = getelementptr inbounds i8, ptr %649, i64 8
  %651 = load ptr, ptr %650, align 8, !tbaa !6
  %652 = getelementptr inbounds ptr, ptr %651, i64 %544
  %653 = load ptr, ptr %652, align 8, !tbaa !6
  %654 = getelementptr inbounds i8, ptr %653, i64 8
  %655 = load i32, ptr %654, align 4, !tbaa !14
  %656 = tail call signext i32 @se_v(ptr noundef nonnull @.str.59, i32 noundef signext %655, ptr noundef %400) #6
  %657 = add nsw i32 %648, %656
  br label %661

658:                                              ; preds = %615
  %659 = tail call signext i32 @u_1(ptr noundef nonnull @.str.57, i32 noundef signext 0, ptr noundef %400) #6
  %660 = add nsw i32 %659, %586
  br label %661

661:                                              ; preds = %658, %619, %585
  %662 = phi i32 [ %660, %658 ], [ %586, %585 ], [ %657, %619 ]
  %663 = add nuw nsw i64 %544, 1
  %664 = load ptr, ptr @img, align 8, !tbaa !6
  %665 = getelementptr inbounds i8, ptr %664, i64 89412
  %666 = load i32, ptr %665, align 4, !tbaa !52
  %667 = sext i32 %666 to i64
  %668 = icmp slt i64 %663, %667
  br i1 %668, label %543, label %669

669:                                              ; preds = %661, %533, %539
  %670 = phi ptr [ %535, %533 ], [ %535, %539 ], [ %664, %661 ]
  %671 = phi i32 [ %534, %533 ], [ %534, %539 ], [ %662, %661 ]
  %672 = add nsw i32 %671, %368
  br label %673

673:                                              ; preds = %366, %669, %381, %379
  %674 = phi ptr [ %670, %669 ], [ %369, %381 ], [ %369, %379 ], [ %369, %366 ]
  %675 = phi i32 [ %672, %669 ], [ %368, %381 ], [ %368, %379 ], [ %368, %366 ]
  %676 = getelementptr inbounds i8, ptr %674, i64 90316
  %677 = load i32, ptr %676, align 4, !tbaa !61
  %678 = icmp eq i32 %677, 0
  %679 = load ptr, ptr @input, align 8, !tbaa !6
  br i1 %678, label %763, label %680

680:                                              ; preds = %673
  %681 = getelementptr inbounds i8, ptr %679, i64 2992
  %682 = load i32, ptr %681, align 8, !tbaa !10
  %683 = sext i32 %682 to i64
  %684 = getelementptr inbounds [2 x ptr], ptr @assignSE2partition, i64 0, i64 %683
  %685 = load ptr, ptr %684, align 8, !tbaa !6
  %686 = load i32, ptr %685, align 4, !tbaa !14
  %687 = getelementptr inbounds i8, ptr %674, i64 31568
  %688 = load ptr, ptr %687, align 8, !tbaa !15
  %689 = getelementptr inbounds i8, ptr %688, i64 24
  %690 = load ptr, ptr %689, align 8, !tbaa !19
  %691 = sext i32 %686 to i64
  %692 = getelementptr inbounds %struct.datapartition, ptr %690, i64 %691
  %693 = load ptr, ptr %692, align 8, !tbaa !21
  %694 = getelementptr inbounds i8, ptr %674, i64 31560
  %695 = load ptr, ptr %694, align 8, !tbaa !36
  %696 = getelementptr inbounds i8, ptr %695, i64 4
  %697 = load i32, ptr %696, align 4, !tbaa !37
  %698 = icmp eq i32 %697, 0
  br i1 %698, label %708, label %699

699:                                              ; preds = %680
  %700 = getelementptr inbounds i8, ptr %674, i64 90324
  %701 = load i32, ptr %700, align 4, !tbaa !62
  %702 = tail call signext i32 @u_1(ptr noundef nonnull @.str.37, i32 noundef signext %701, ptr noundef %693) #6
  %703 = load ptr, ptr @img, align 8, !tbaa !6
  %704 = getelementptr inbounds i8, ptr %703, i64 90328
  %705 = load i32, ptr %704, align 8, !tbaa !63
  %706 = tail call signext i32 @u_1(ptr noundef nonnull @.str.38, i32 noundef signext %705, ptr noundef %693) #6
  %707 = add nsw i32 %706, %702
  br label %759

708:                                              ; preds = %680
  %709 = getelementptr inbounds i8, ptr %674, i64 90336
  %710 = load ptr, ptr %709, align 8, !tbaa !64
  %711 = icmp ne ptr %710, null
  %712 = zext i1 %711 to i32
  %713 = getelementptr inbounds i8, ptr %674, i64 90320
  store i32 %712, ptr %713, align 8, !tbaa !65
  %714 = tail call signext i32 @u_1(ptr noundef nonnull @.str.39, i32 noundef signext %712, ptr noundef %693) #6
  %715 = load ptr, ptr @img, align 8, !tbaa !6
  %716 = getelementptr inbounds i8, ptr %715, i64 90320
  %717 = load i32, ptr %716, align 8, !tbaa !65
  %718 = icmp eq i32 %717, 0
  br i1 %718, label %759, label %719

719:                                              ; preds = %708
  %720 = getelementptr inbounds i8, ptr %715, i64 90336
  br label %721

721:                                              ; preds = %755, %719
  %722 = phi ptr [ %720, %719 ], [ %757, %755 ]
  %723 = phi i32 [ %714, %719 ], [ %756, %755 ]
  %724 = load ptr, ptr %722, align 8, !tbaa !6
  %725 = icmp eq ptr %724, null
  br i1 %725, label %726, label %727

726:                                              ; preds = %721
  tail call void @error(ptr noundef nonnull @.str.40, i32 noundef signext 500) #6
  br label %727

727:                                              ; preds = %726, %721
  %728 = load i32, ptr %724, align 8, !tbaa !66
  %729 = tail call signext i32 @ue_v(ptr noundef nonnull @.str.41, i32 noundef signext %728, ptr noundef %693) #6
  %730 = add nsw i32 %729, %723
  switch i32 %728, label %737 [
    i32 3, label %731
    i32 1, label %731
  ]

731:                                              ; preds = %727, %727
  %732 = getelementptr inbounds i8, ptr %724, i64 4
  %733 = load i32, ptr %732, align 4, !tbaa !68
  %734 = tail call signext i32 @ue_v(ptr noundef nonnull @.str.42, i32 noundef signext %733, ptr noundef %693) #6
  %735 = add i32 %730, 1
  %736 = add i32 %735, %734
  br label %737

737:                                              ; preds = %731, %727
  %738 = phi i32 [ %736, %731 ], [ %730, %727 ]
  switch i32 %728, label %744 [
    i32 2, label %747
    i32 6, label %739
    i32 3, label %739
  ]

739:                                              ; preds = %737, %737
  %740 = getelementptr inbounds i8, ptr %724, i64 12
  %741 = load i32, ptr %740, align 4, !tbaa !69
  %742 = tail call signext i32 @ue_v(ptr noundef nonnull @.str.44, i32 noundef signext %741, ptr noundef %693) #6
  %743 = add nsw i32 %742, %738
  br label %744

744:                                              ; preds = %739, %737
  %745 = phi i32 [ %743, %739 ], [ %738, %737 ]
  %746 = icmp eq i32 %728, 4
  br i1 %746, label %747, label %755

747:                                              ; preds = %744, %737
  %748 = phi i64 [ 8, %737 ], [ 16, %744 ]
  %749 = phi ptr [ @.str.43, %737 ], [ @.str.45, %744 ]
  %750 = phi i32 [ %738, %737 ], [ %745, %744 ]
  %751 = getelementptr inbounds i8, ptr %724, i64 %748
  %752 = load i32, ptr %751, align 8, !tbaa !14
  %753 = tail call signext i32 @ue_v(ptr noundef nonnull %749, i32 noundef signext %752, ptr noundef %693) #6
  %754 = add nsw i32 %753, %750
  br label %755

755:                                              ; preds = %747, %744
  %756 = phi i32 [ %745, %744 ], [ %754, %747 ]
  %757 = getelementptr inbounds i8, ptr %724, i64 24
  %758 = icmp eq i32 %728, 0
  br i1 %758, label %759, label %721

759:                                              ; preds = %755, %699, %708
  %760 = phi i32 [ %707, %699 ], [ %714, %708 ], [ %756, %755 ]
  %761 = add nsw i32 %760, %675
  %762 = load ptr, ptr @input, align 8, !tbaa !6
  br label %763

763:                                              ; preds = %759, %673
  %764 = phi ptr [ %762, %759 ], [ %679, %673 ]
  %765 = phi i32 [ %761, %759 ], [ %675, %673 ]
  %766 = getelementptr inbounds i8, ptr %764, i64 2984
  %767 = load i32, ptr %766, align 8, !tbaa !70
  %768 = icmp eq i32 %767, 1
  br i1 %768, label %769, label %779

769:                                              ; preds = %763
  %770 = load ptr, ptr @img, align 8, !tbaa !6
  %771 = getelementptr inbounds i8, ptr %770, i64 24
  %772 = load i32, ptr %771, align 8, !tbaa !26
  %773 = icmp eq i32 %772, 2
  br i1 %773, label %779, label %774

774:                                              ; preds = %769
  %775 = getelementptr inbounds i8, ptr %770, i64 90344
  %776 = load i32, ptr %775, align 8, !tbaa !71
  %777 = tail call signext i32 @ue_v(ptr noundef nonnull @.str.18, i32 noundef signext %776, ptr noundef %15) #6
  %778 = add nsw i32 %777, %765
  br label %779

779:                                              ; preds = %774, %769, %763
  %780 = phi i32 [ %778, %774 ], [ %765, %769 ], [ %765, %763 ]
  %781 = getelementptr inbounds i8, ptr %10, i64 4
  %782 = load i32, ptr %781, align 4, !tbaa !72
  %783 = add nsw i32 %782, -26
  %784 = load ptr, ptr @active_pps, align 8, !tbaa !6
  %785 = getelementptr inbounds i8, ptr %784, i64 200
  %786 = load i32, ptr %785, align 8, !tbaa !73
  %787 = sub i32 %783, %786
  %788 = tail call signext i32 @se_v(ptr noundef nonnull @.str.19, i32 noundef signext %787, ptr noundef %15) #6
  %789 = add nsw i32 %788, %780
  %790 = load ptr, ptr @img, align 8, !tbaa !6
  %791 = getelementptr inbounds i8, ptr %790, i64 24
  %792 = load i32, ptr %791, align 8, !tbaa !26
  %793 = icmp eq i32 %792, 3
  br i1 %793, label %794, label %809

794:                                              ; preds = %779
  %795 = load i32, ptr @si_frame_indicator, align 4, !tbaa !14
  %796 = icmp ne i32 %795, 0
  %797 = load i32, ptr @sp2_frame_indicator, align 4
  %798 = icmp ne i32 %797, 0
  %799 = select i1 %796, i1 true, i1 %798
  %800 = zext i1 %799 to i32
  %801 = tail call signext i32 @u_1(ptr noundef nonnull @.str.20, i32 noundef signext %800, ptr noundef %15) #6
  %802 = add nsw i32 %801, %789
  %803 = load ptr, ptr @img, align 8, !tbaa !6
  %804 = getelementptr inbounds i8, ptr %803, i64 44
  %805 = load i32, ptr %804, align 4, !tbaa !74
  %806 = add nsw i32 %805, -26
  %807 = tail call signext i32 @se_v(ptr noundef nonnull @.str.21, i32 noundef signext %806, ptr noundef %15) #6
  %808 = add nsw i32 %802, %807
  br label %809

809:                                              ; preds = %794, %779
  %810 = phi i32 [ %808, %794 ], [ %789, %779 ]
  %811 = load ptr, ptr @active_pps, align 8, !tbaa !6
  %812 = getelementptr inbounds i8, ptr %811, i64 220
  %813 = load i32, ptr %812, align 4, !tbaa !75
  %814 = icmp eq i32 %813, 0
  br i1 %814, label %837, label %815

815:                                              ; preds = %809
  %816 = load ptr, ptr @img, align 8, !tbaa !6
  %817 = getelementptr inbounds i8, ptr %816, i64 89392
  %818 = load i32, ptr %817, align 8, !tbaa !76
  %819 = tail call signext i32 @ue_v(ptr noundef nonnull @.str.22, i32 noundef signext %818, ptr noundef %15) #6
  %820 = add nsw i32 %819, %810
  %821 = load ptr, ptr @img, align 8, !tbaa !6
  %822 = getelementptr inbounds i8, ptr %821, i64 89392
  %823 = load i32, ptr %822, align 8, !tbaa !76
  %824 = icmp eq i32 %823, 1
  br i1 %824, label %837, label %825

825:                                              ; preds = %815
  %826 = getelementptr inbounds i8, ptr %821, i64 89396
  %827 = load i32, ptr %826, align 4, !tbaa !77
  %828 = sdiv i32 %827, 2
  %829 = tail call signext i32 @se_v(ptr noundef nonnull @.str.23, i32 noundef signext %828, ptr noundef %15) #6
  %830 = add nsw i32 %829, %820
  %831 = load ptr, ptr @img, align 8, !tbaa !6
  %832 = getelementptr inbounds i8, ptr %831, i64 89400
  %833 = load i32, ptr %832, align 8, !tbaa !78
  %834 = sdiv i32 %833, 2
  %835 = tail call signext i32 @se_v(ptr noundef nonnull @.str.24, i32 noundef signext %834, ptr noundef %15) #6
  %836 = add nsw i32 %830, %835
  br label %837

837:                                              ; preds = %815, %825, %809
  %838 = phi i32 [ %836, %825 ], [ %820, %815 ], [ %810, %809 ]
  %839 = load ptr, ptr @active_pps, align 8, !tbaa !6
  %840 = getelementptr inbounds i8, ptr %839, i64 60
  %841 = load i32, ptr %840, align 4, !tbaa !79
  %842 = icmp eq i32 %841, 0
  br i1 %842, label %872, label %843

843:                                              ; preds = %837
  %844 = getelementptr inbounds i8, ptr %839, i64 64
  %845 = load i32, ptr %844, align 8, !tbaa !80
  %846 = add i32 %845, -3
  %847 = icmp ult i32 %846, 3
  br i1 %847, label %848, label %872

848:                                              ; preds = %843
  %849 = load ptr, ptr @img, align 8, !tbaa !6
  %850 = getelementptr inbounds i8, ptr %849, i64 90292
  %851 = load i32, ptr %850, align 4, !tbaa !81
  %852 = getelementptr inbounds i8, ptr %849, i64 90288
  %853 = load i32, ptr %852, align 8, !tbaa !82
  %854 = mul i32 %853, %851
  %855 = uitofp i32 %854 to float
  %856 = getelementptr inbounds i8, ptr %839, i64 168
  %857 = load i32, ptr %856, align 8, !tbaa !83
  %858 = add i32 %857, 1
  %859 = uitofp i32 %858 to float
  %860 = fdiv float %855, %859
  %861 = fadd float %860, 1.000000e+00
  %862 = fpext float %861 to double
  %863 = tail call double @log(double noundef %862) #6
  %864 = fdiv double %863, 0x3FE62E42FEFA39EF
  %865 = tail call double @llvm.ceil.f64(double %864)
  %866 = fptosi double %865 to i32
  %867 = load ptr, ptr @img, align 8, !tbaa !6
  %868 = getelementptr inbounds i8, ptr %867, i64 90476
  %869 = load i32, ptr %868, align 4, !tbaa !84
  %870 = tail call signext i32 @u_v(i32 noundef signext %866, ptr noundef nonnull @.str.25, i32 noundef signext %869, ptr noundef %15) #6
  %871 = add nsw i32 %870, %838
  br label %872

872:                                              ; preds = %848, %843, %837
  %873 = phi i32 [ %871, %848 ], [ %838, %843 ], [ %838, %837 ]
  %874 = load ptr, ptr @input, align 8, !tbaa !6
  %875 = getelementptr inbounds i8, ptr %874, i64 2992
  %876 = load i32, ptr %875, align 8, !tbaa !10
  %877 = icmp eq i32 %876, 0
  br i1 %877, label %890, label %878

878:                                              ; preds = %872
  %879 = load ptr, ptr @img, align 8, !tbaa !6
  %880 = getelementptr inbounds i8, ptr %879, i64 31560
  %881 = load ptr, ptr %880, align 8, !tbaa !36
  %882 = getelementptr inbounds i8, ptr %881, i64 4
  %883 = load i32, ptr %882, align 4, !tbaa !37
  %884 = icmp eq i32 %883, 0
  br i1 %884, label %885, label %890

885:                                              ; preds = %878
  %886 = getelementptr inbounds i8, ptr %879, i64 20
  %887 = load i32, ptr %886, align 4, !tbaa !85
  %888 = tail call signext i32 @ue_v(ptr noundef nonnull @.str.26, i32 noundef signext %887, ptr noundef %15) #6
  %889 = add nsw i32 %888, %873
  br label %890

890:                                              ; preds = %885, %878, %872
  %891 = phi i32 [ %873, %878 ], [ %889, %885 ], [ %873, %872 ]
  ret i32 %891
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare dso_local signext i32 @ue_v(ptr noundef, i32 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local signext range(i32 0, 9) i32 @get_picture_type() local_unnamed_addr #0 {
  %1 = load ptr, ptr @img, align 8, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %1, i64 24
  %3 = load i32, ptr %2, align 8, !tbaa !26
  %4 = icmp ult i32 %3, 4
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  tail call void @error(ptr noundef nonnull @.str.27, i32 noundef signext 1) #6
  br label %8

6:                                                ; preds = %0
  %7 = add nuw nsw i32 %3, 5
  br label %8

8:                                                ; preds = %6, %5
  %9 = phi i32 [ 0, %5 ], [ %7, %6 ]
  ret i32 %9
}

declare dso_local signext i32 @u_v(i32 noundef signext, ptr noundef, i32 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(ptr noundef, ptr noundef, i32 noundef signext, ptr noundef) local_unnamed_addr #3

declare dso_local signext i32 @u_1(ptr noundef, i32 noundef signext, ptr noundef) local_unnamed_addr #2

declare dso_local signext i32 @se_v(ptr noundef, i32 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare dso_local double @log(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #5

declare dso_local void @error(ptr noundef, i32 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local signext i32 @Partition_BC_Header(i32 noundef signext %0) local_unnamed_addr #0 {
  %2 = alloca %struct.syntaxelement, align 8
  %3 = load ptr, ptr @img, align 8, !tbaa !6
  %4 = getelementptr inbounds i8, ptr %3, i64 31568
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  %6 = getelementptr inbounds i8, ptr %5, i64 24
  %7 = load ptr, ptr %6, align 8, !tbaa !19
  %8 = sext i32 %0 to i64
  %9 = getelementptr inbounds %struct.datapartition, ptr %7, i64 %8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #6
  %10 = icmp sgt i32 %0, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = getelementptr inbounds i8, ptr %5, i64 16
  %13 = load i32, ptr %12, align 8, !tbaa !86
  %14 = icmp sgt i32 %13, %0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11, %1
  tail call void @__assert_fail(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.5, i32 noundef signext 543, ptr noundef nonnull @__PRETTY_FUNCTION__.Partition_BC_Header) #7
  unreachable

16:                                               ; preds = %11
  store i32 0, ptr %2, align 8, !tbaa !87
  %17 = getelementptr inbounds i8, ptr %2, i64 32
  store ptr @ue_linfo, ptr %17, align 8, !tbaa !89
  %18 = getelementptr inbounds i8, ptr %2, i64 8
  store i32 0, ptr %18, align 8, !tbaa !90
  %19 = getelementptr inbounds i8, ptr %3, i64 20
  %20 = load i32, ptr %19, align 4, !tbaa !85
  %21 = getelementptr inbounds i8, ptr %2, i64 4
  store i32 %20, ptr %21, align 4, !tbaa !91
  %22 = call signext i32 @writeSyntaxElement_UVLC(ptr noundef nonnull %2, ptr noundef nonnull %9) #6
  %23 = load ptr, ptr @active_pps, align 8, !tbaa !6
  %24 = getelementptr inbounds i8, ptr %23, i64 228
  %25 = load i32, ptr %24, align 4, !tbaa !92
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %16
  %28 = load ptr, ptr @img, align 8, !tbaa !6
  %29 = getelementptr inbounds i8, ptr %28, i64 31568
  %30 = load ptr, ptr %29, align 8, !tbaa !15
  %31 = load i32, ptr %30, align 8, !tbaa !93
  store i32 %31, ptr %21, align 4, !tbaa !91
  %32 = call signext i32 @writeSyntaxElement_UVLC(ptr noundef nonnull %2, ptr noundef nonnull %9) #6
  %33 = add nsw i32 %32, %22
  br label %34

34:                                               ; preds = %27, %16
  %35 = phi i32 [ %33, %27 ], [ %22, %16 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #6
  ret i32 %35
}

declare dso_local void @ue_linfo(i32 noundef signext, i32 noundef signext, ptr noundef, ptr noundef) #2

declare dso_local signext i32 @writeSyntaxElement_UVLC(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+d,+f,+m,+relax,+zicsr,+zifencei,-c,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zalasr,-experimental-zfbfmin,-experimental-zicfilp,-experimental-zicfiss,-experimental-ztso,-experimental-zvfbfmin,-experimental-zvfbfwma,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smepmp,-smstateen,-ssaia,-ssccptr,-sscofpmf,-sscounterenw,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-v,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

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
!10 = !{!11, !12, i64 2992}
!11 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !8, i64 84, !8, i64 148, !12, i64 212, !12, i64 216, !12, i64 220, !12, i64 224, !8, i64 228, !8, i64 428, !8, i64 628, !8, i64 828, !8, i64 1028, !12, i64 1228, !12, i64 1232, !12, i64 1236, !12, i64 1240, !12, i64 1244, !12, i64 1248, !12, i64 1252, !12, i64 1256, !12, i64 1260, !12, i64 1264, !12, i64 1268, !12, i64 1272, !12, i64 1276, !12, i64 1280, !12, i64 1284, !12, i64 1288, !12, i64 1292, !12, i64 1296, !12, i64 1300, !8, i64 1304, !8, i64 1504, !8, i64 1704, !12, i64 1904, !12, i64 1908, !12, i64 1912, !12, i64 1916, !12, i64 1920, !12, i64 1924, !12, i64 1928, !12, i64 1932, !12, i64 1936, !12, i64 1940, !12, i64 1944, !12, i64 1948, !8, i64 1952, !12, i64 2976, !12, i64 2980, !12, i64 2984, !12, i64 2988, !12, i64 2992, !12, i64 2996, !12, i64 3000, !12, i64 3004, !12, i64 3008, !12, i64 3012, !12, i64 3016, !12, i64 3020, !12, i64 3024, !12, i64 3028, !12, i64 3032, !12, i64 3036, !12, i64 3040, !12, i64 3044, !12, i64 3048, !12, i64 3052, !13, i64 3056, !12, i64 3064, !12, i64 3068, !12, i64 3072, !12, i64 3076, !12, i64 3080, !12, i64 3084, !12, i64 3088, !12, i64 3092, !12, i64 3096, !12, i64 3100, !12, i64 3104, !12, i64 3108, !12, i64 3112, !12, i64 3116, !12, i64 3120, !12, i64 3124, !12, i64 3128, !12, i64 3132, !12, i64 3136, !12, i64 3140, !12, i64 3144, !12, i64 3148, !8, i64 3152, !8, i64 3352, !12, i64 3552, !12, i64 3556, !12, i64 3560, !12, i64 3564, !12, i64 3568, !12, i64 3572, !12, i64 3576, !12, i64 3580, !12, i64 3584, !12, i64 3588, !12, i64 3592, !12, i64 3596, !12, i64 3600, !12, i64 3604, !12, i64 3608, !12, i64 3612, !12, i64 3616, !12, i64 3620, !8, i64 3624, !12, i64 3824, !12, i64 3828, !7, i64 3832, !7, i64 3840, !7, i64 3848, !7, i64 3856, !12, i64 3864, !12, i64 3868, !12, i64 3872, !12, i64 3876, !12, i64 3880, !12, i64 3884, !12, i64 3888, !12, i64 3892, !12, i64 3896, !12, i64 3900, !12, i64 3904, !12, i64 3908, !12, i64 3912, !12, i64 3916, !12, i64 3920, !12, i64 3924, !12, i64 3928, !8, i64 3932, !12, i64 3964, !12, i64 3968, !12, i64 3972, !12, i64 3976, !12, i64 3980, !12, i64 3984, !12, i64 3988, !12, i64 3992, !12, i64 3996, !12, i64 4000, !12, i64 4004, !8, i64 4008, !8, i64 4056, !12, i64 4256, !12, i64 4260, !12, i64 4264, !12, i64 4268, !8, i64 4272, !12, i64 4312, !12, i64 4316, !12, i64 4320, !12, i64 4324}
!12 = !{!"int", !8, i64 0}
!13 = !{!"double", !8, i64 0}
!14 = !{!12, !12, i64 0}
!15 = !{!16, !7, i64 31568}
!16 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !17, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96, !7, i64 104, !7, i64 112, !12, i64 120, !7, i64 128, !12, i64 136, !12, i64 140, !12, i64 144, !12, i64 148, !12, i64 152, !12, i64 156, !12, i64 160, !12, i64 164, !12, i64 168, !12, i64 172, !12, i64 176, !12, i64 180, !8, i64 184, !8, i64 4792, !8, i64 7352, !8, i64 8504, !8, i64 12600, !8, i64 13112, !7, i64 14136, !7, i64 14144, !8, i64 14152, !8, i64 18248, !8, i64 21320, !8, i64 29512, !7, i64 31560, !7, i64 31568, !7, i64 31576, !8, i64 31584, !7, i64 89184, !7, i64 89192, !12, i64 89200, !12, i64 89204, !12, i64 89208, !12, i64 89212, !8, i64 89216, !12, i64 89280, !12, i64 89284, !12, i64 89288, !12, i64 89292, !12, i64 89296, !13, i64 89304, !12, i64 89312, !12, i64 89316, !12, i64 89320, !12, i64 89324, !7, i64 89328, !7, i64 89336, !7, i64 89344, !7, i64 89352, !8, i64 89360, !12, i64 89392, !12, i64 89396, !12, i64 89400, !12, i64 89404, !12, i64 89408, !12, i64 89412, !12, i64 89416, !12, i64 89420, !8, i64 89424, !12, i64 90192, !12, i64 90196, !12, i64 90200, !12, i64 90204, !12, i64 90208, !12, i64 90212, !12, i64 90216, !12, i64 90220, !12, i64 90224, !12, i64 90228, !12, i64 90232, !12, i64 90236, !12, i64 90240, !8, i64 90244, !12, i64 90248, !12, i64 90252, !8, i64 90256, !12, i64 90264, !12, i64 90268, !12, i64 90272, !12, i64 90276, !12, i64 90280, !12, i64 90284, !12, i64 90288, !12, i64 90292, !12, i64 90296, !12, i64 90300, !12, i64 90304, !12, i64 90308, !12, i64 90312, !12, i64 90316, !12, i64 90320, !12, i64 90324, !12, i64 90328, !7, i64 90336, !12, i64 90344, !12, i64 90348, !12, i64 90352, !12, i64 90356, !12, i64 90360, !13, i64 90368, !12, i64 90376, !12, i64 90380, !12, i64 90384, !12, i64 90388, !12, i64 90392, !12, i64 90396, !12, i64 90400, !7, i64 90408, !12, i64 90416, !12, i64 90420, !12, i64 90424, !12, i64 90428, !12, i64 90432, !12, i64 90436, !12, i64 90440, !12, i64 90444, !12, i64 90448, !12, i64 90452, !12, i64 90456, !12, i64 90460, !12, i64 90464, !12, i64 90468, !12, i64 90472, !12, i64 90476, !12, i64 90480, !12, i64 90484, !12, i64 90488, !12, i64 90492, !12, i64 90496, !12, i64 90500, !7, i64 90504, !7, i64 90512, !7, i64 90520, !12, i64 90528, !12, i64 90532, !12, i64 90536, !12, i64 90540, !12, i64 90544, !12, i64 90548, !12, i64 90552, !12, i64 90556, !12, i64 90560, !8, i64 90564, !12, i64 90572, !12, i64 90576, !12, i64 90580, !18, i64 90584, !12, i64 90588, !12, i64 90592}
!17 = !{!"float", !8, i64 0}
!18 = !{!"short", !8, i64 0}
!19 = !{!20, !7, i64 24}
!20 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !12, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !12, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !8, i64 128}
!21 = !{!22, !7, i64 0}
!22 = !{!"datapartition", !7, i64 0, !23, i64 8, !7, i64 104}
!23 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !7, i64 24, !7, i64 32, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !7, i64 72, !7, i64 80, !12, i64 88, !12, i64 92}
!24 = !{!16, !12, i64 90220}
!25 = !{!16, !12, i64 12}
!26 = !{!16, !12, i64 24}
!27 = !{!28, !12, i64 4}
!28 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !8, i64 24, !12, i64 56, !12, i64 60, !12, i64 64, !8, i64 68, !8, i64 100, !8, i64 132, !12, i64 164, !12, i64 168, !12, i64 172, !7, i64 176, !12, i64 184, !12, i64 188, !12, i64 192, !12, i64 196, !12, i64 200, !12, i64 204, !12, i64 208, !12, i64 212, !12, i64 216, !12, i64 220, !12, i64 224, !12, i64 228, !12, i64 232}
!29 = !{!16, !12, i64 90284}
!30 = !{!31, !12, i64 1148}
!31 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !8, i64 40, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96, !12, i64 100, !12, i64 104, !8, i64 108, !12, i64 1132, !12, i64 1136, !12, i64 1140, !12, i64 1144, !12, i64 1148, !12, i64 1152, !12, i64 1156, !12, i64 1160, !12, i64 1164, !12, i64 1168, !12, i64 1172, !12, i64 1176, !12, i64 1180, !32, i64 1184}
!32 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !33, i64 84, !12, i64 496, !33, i64 500, !12, i64 912, !12, i64 916, !12, i64 920, !12, i64 924, !12, i64 928, !12, i64 932, !12, i64 936, !12, i64 940, !12, i64 944}
!33 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !8, i64 12, !8, i64 140, !8, i64 268, !12, i64 396, !12, i64 400, !12, i64 404, !12, i64 408}
!34 = !{!16, !12, i64 28}
!35 = !{!16, !12, i64 89208}
!36 = !{!16, !7, i64 31560}
!37 = !{!38, !12, i64 4}
!38 = !{!"", !12, i64 0, !12, i64 4, !8, i64 8, !12, i64 808, !17, i64 812, !17, i64 816, !17, i64 820}
!39 = !{!16, !12, i64 0}
!40 = !{!16, !12, i64 90224}
!41 = !{!16, !12, i64 90268}
!42 = !{!16, !12, i64 90248}
!43 = !{!16, !12, i64 90272}
!44 = !{!16, !12, i64 90312}
!45 = !{!16, !12, i64 90252}
!46 = !{!16, !12, i64 90228}
!47 = !{!11, !12, i64 3876}
!48 = !{!16, !12, i64 90216}
!49 = !{!16, !12, i64 89404}
!50 = !{!16, !12, i64 89408}
!51 = !{!28, !12, i64 184}
!52 = !{!16, !12, i64 89412}
!53 = !{!28, !12, i64 188}
!54 = !{!20, !12, i64 56}
!55 = !{!20, !7, i64 64}
!56 = !{!20, !12, i64 88}
!57 = !{!20, !7, i64 96}
!58 = !{!28, !12, i64 192}
!59 = !{!28, !12, i64 196}
!60 = !{!31, !12, i64 32}
!61 = !{!16, !12, i64 90316}
!62 = !{!16, !12, i64 90324}
!63 = !{!16, !12, i64 90328}
!64 = !{!16, !7, i64 90336}
!65 = !{!16, !12, i64 90320}
!66 = !{!67, !12, i64 0}
!67 = !{!"DecRefPicMarking_s", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !7, i64 24}
!68 = !{!67, !12, i64 4}
!69 = !{!67, !12, i64 12}
!70 = !{!11, !12, i64 2984}
!71 = !{!16, !12, i64 90344}
!72 = !{!20, !12, i64 4}
!73 = !{!28, !12, i64 200}
!74 = !{!16, !12, i64 44}
!75 = !{!28, !12, i64 220}
!76 = !{!16, !12, i64 89392}
!77 = !{!16, !12, i64 89396}
!78 = !{!16, !12, i64 89400}
!79 = !{!28, !12, i64 60}
!80 = !{!28, !12, i64 64}
!81 = !{!16, !12, i64 90292}
!82 = !{!16, !12, i64 90288}
!83 = !{!28, !12, i64 168}
!84 = !{!16, !12, i64 90476}
!85 = !{!16, !12, i64 20}
!86 = !{!20, !12, i64 16}
!87 = !{!88, !12, i64 0}
!88 = !{!"syntaxelement", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !7, i64 32, !7, i64 40}
!89 = !{!88, !7, i64 32}
!90 = !{!88, !12, i64 8}
!91 = !{!88, !12, i64 4}
!92 = !{!28, !12, i64 228}
!93 = !{!20, !12, i64 0}
